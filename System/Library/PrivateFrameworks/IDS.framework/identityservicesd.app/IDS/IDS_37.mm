uint64_t sub_1008A50FC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for IDSRegistrationEventStruct(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1008A51F4(int a1)
{
  v43 = a1;
  v42 = sub_1009360D8();
  v1 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for IDSRegistrationEventStruct(0);
  v4 = *(v3 - 1);
  __chkstk_darwin(v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = [result persistenceManager];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_1008CD34C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1008A51E0(v10);
  }

  v12 = v10[2];
  v13 = v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v48 = v13;
  v49 = v12;
  sub_1008A411C(&v48);
  v48 = 0;
  v49 = 0xE000000000000000;
  v14 = v10[2];
  if (!v14)
  {

    return 0;
  }

  v35[1] = v10;
  v39 = *(v4 + 72);
  v40 = "v40@0:8@16q24Q32";
  v37 = "yyyy-MM-dd HH:mm:ss.SSSSxx";
  v38 = (v1 + 8);
  v44 = v3;
  do
  {
    sub_1008A58C8(v13, v6);
    if (*&v6[v3[8]])
    {
      v46 = *&v6[v3[8]];
      v47._countAndFlagsBits = 0x6F72726520746968;
      v47._object = 0xEA00000000002072;
      v50._countAndFlagsBits = sub_100937548();
      sub_100936C08(v50);

      countAndFlagsBits = v47._countAndFlagsBits;
      object = v47._object;
    }

    else
    {
      object = 0xE900000000000064;
      countAndFlagsBits = 0x6564656563637573;
    }

    v45 = countAndFlagsBits;
    v17 = &v6[v3[10]];
    v18 = v17[1];
    if (v18)
    {
      v19 = *v17;
      v47._countAndFlagsBits = 0x756C7053203E3D20;
      v47._object = 0xEB00000000206B6ELL;

      v51._countAndFlagsBits = v19;
      v51._object = v18;
      sub_100936C08(v51);

      v18 = v47._countAndFlagsBits;
      v20 = v47._object;
    }

    else
    {
      v20 = 0xE000000000000000;
    }

    v21 = [objc_allocWithZone(NSDateFormatter) init];
    v22 = v41;
    sub_1009360C8();
    isa = sub_1009360B8().super.isa;
    (*v38)(v22, v42);
    [v21 setLocale:isa];

    v24 = sub_100936B28();
    [v21 setDateFormat:v24];

    v25 = sub_100935F58().super.isa;
    v26 = [v21 stringFromDate:v25];

    v27 = sub_100936B38();
    v29 = v28;

    v47._countAndFlagsBits = v27;
    v47._object = v29;
    v3 = v44;
    v52._countAndFlagsBits = 8250;
    v52._object = 0xE200000000000000;
    sub_100936C08(v52);
    v30 = *(v6 + 1);
    v31 = *(v6 + 2);
    v53._countAndFlagsBits = v30;
    v53._object = v31;
    sub_100936C08(v53);
    v54._countAndFlagsBits = 32;
    v54._object = 0xE100000000000000;
    sub_100936C08(v54);
    v55._countAndFlagsBits = v45;
    v55._object = object;
    sub_100936C08(v55);

    v56._countAndFlagsBits = v18;
    v56._object = v20;
    sub_100936C08(v56);

    v57._countAndFlagsBits = 10;
    v57._object = 0xE100000000000000;
    sub_100936C08(v57);
    sub_100936C08(v47);

    if (v43)
    {
      v32 = &v6[v3[11]];
      v33 = v32[1];
      if (v33)
      {
        v34 = *v32;
        v47._countAndFlagsBits = 0;
        v47._object = 0xE000000000000000;
        sub_100937248(27);

        v47._countAndFlagsBits = v30;
        v47._object = v31;
        v58._object = (v37 | 0x8000000000000000);
        v58._countAndFlagsBits = 0xD000000000000016;
        sub_100936C08(v58);
        v59._countAndFlagsBits = v34;
        v3 = v44;
        v59._object = v33;
        sub_100936C08(v59);
        v60._countAndFlagsBits = 10;
        v60._object = 0xE100000000000000;
        sub_100936C08(v60);
        sub_100936C08(v47);
      }
    }

    sub_1008A592C(v6);
    v13 += v39;
    --v14;
  }

  while (v14);

  return v48;
}

uint64_t type metadata accessor for IDSRegistrationEventStruct(uint64_t a1)
{
  result = qword_100CD16F8;
  if (!qword_100CD16F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008A57B4(uint64_t a1)
{
  sub_100818944(319);
  if (v1 <= 0x3F)
  {
    sub_100936038();
    if (v2 <= 0x3F)
    {
      sub_1008A5878();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1008A5878()
{
  if (!qword_100CBA280)
  {
    v0 = sub_100937058();
    if (!v1)
    {
      atomic_store(v0, &qword_100CBA280);
    }
  }
}

uint64_t sub_1008A58C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSRegistrationEventStruct(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008A592C(uint64_t a1)
{
  v2 = type metadata accessor for IDSRegistrationEventStruct(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1008A5988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSRegistrationEventStruct(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1008A5B84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v50 = a1;
  v51 = a3;
  v49 = a2;
  v5 = sub_1009364D8();
  v6 = *(v5 - 8);
  v52 = v5;
  v53 = v6;
  __chkstk_darwin(v5);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = &v45 - v9;
  v10 = sub_100936F38();
  __chkstk_darwin(v10);
  v11 = sub_100936F78();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100936528();
  __chkstk_darwin(v15 - 8);
  sub_1007C9A6C(7);
  v48 = OBJC_IVAR___IDSQuerySDPersistenceManager_queue;
  v47 = sub_100014170(0, &qword_100CB3510, OS_dispatch_queue_ptr);
  sub_100936518();
  (*(v12 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  v55 = &_swiftEmptyArrayStorage;
  sub_100014C40(&qword_100CB2AB8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100706B30(&unk_100CB3520, &qword_1009AD040);
  v16 = v49;
  sub_100014C88(&qword_100CB2AC0, &unk_100CB3520, &qword_1009AD040, &protocol conformance descriptor for [A]);
  v17 = v50;
  sub_1009370B8();
  *&v3[v48] = sub_100936F98();
  *&v3[OBJC_IVAR___IDSQuerySDPersistenceManager_container] = 0;
  v18 = &v3[OBJC_IVAR___IDSQuerySDPersistenceManager_filePath];
  *v18 = 0;
  v18[1] = 0;
  *&v3[OBJC_IVAR___IDSQuerySDPersistenceManager_cleanupTimer] = 0;
  swift_beginAccess();
  *v18 = v17;
  v18[1] = v16;
  v19 = v51;
  *&v4[OBJC_IVAR___IDSQuerySDPersistenceManager_serviceController] = v51;
  v20 = type metadata accessor for SDPersistenceManager(0);
  v54.receiver = v4;
  v54.super_class = v20;

  v21 = v19;
  v22 = objc_msgSendSuper2(&v54, "init");
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 standardUserDefaults];
  v26 = sub_100936B28();
  v27 = [v25 integerForKey:v26];

  if (v27 == 3)
  {

    v28 = v52;
    v29 = v53;
    v30 = v45;
    (*(v53 + 16))(v45, v24 + OBJC_IVAR___IDSQuerySDPersistenceManager_logger, v52);
    v31 = sub_1009364B8();
    v32 = sub_100936F18();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134218240;
      *(v33 + 4) = 3;
      *(v33 + 12) = 2048;
      *(v33 + 14) = 3;
      _os_log_impl(&_mh_execute_header, v31, v32, "Version matches loading forceDeleteVersion: %ld persistedVersion: %ld", v33, 0x16u);
    }

    (*(v29 + 8))(v30, v28);
  }

  else
  {
    v51 = v21;
    v34 = sub_1008EAE54(v17, v16);

    v35 = v52;
    v36 = v53;
    v37 = v46;
    (*(v53 + 16))(v46, v24 + OBJC_IVAR___IDSQuerySDPersistenceManager_logger, v52);
    v38 = sub_1009364B8();
    v39 = sub_100936F18();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 67109632;
      *(v40 + 4) = v34 & 1;
      *(v40 + 8) = 2048;
      *(v40 + 10) = 3;
      *(v40 + 18) = 2048;
      *(v40 + 20) = v27;
      _os_log_impl(&_mh_execute_header, v38, v39, "Did purge existing ids-query.db files: %{BOOL}d forceDeleteVersion: %ld persistedVersion: %ld", v40, 0x1Cu);
      v36 = v53;
    }

    (*(v36 + 8))(v37, v35);
    v41 = [v23 standardUserDefaults];
    isa = sub_100936E78().super.super.isa;
    v43 = sub_100936B28();
    [v41 setValue:isa forKey:v43];

    v21 = v51;
  }

  sub_100011C54();

  return v24;
}

uint64_t sub_1008A6294(char a1, uint64_t a2, void *a3)
{
  v5 = sub_1009368E8();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100936908();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100936918();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1009368F8();
  sub_1009368D8();
  sub_100936928();
  sub_1009367B8();
  sub_1008F4B88();
  sub_100706B30(&unk_100CBB240, &qword_1009BF3F8);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1009AC700;
  (*(v8 + 16))(v12 + v11, v10, v7);

  sub_1009367A8();
  v13 = *((swift_isaMask & *a3) + 0x88);

  v13(v14);
  v15 = sub_1009364B8();
  v16 = sub_100936F18();
  if (os_log_type_enabled(v15, v16))
  {
    if (a1)
    {
      v17 = "Successfully initialized fallback in-memory ModelContainer";
    }

    else
    {
      v17 = "Successfully initialized in-memory ModelContainer";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, v17, v18, 2u);
  }

  v19 = [objc_allocWithZone(type metadata accessor for ContainerLoadMetric()) init];
  v19[OBJC_IVAR____TtC17identityservicesdP33_534A9A00092BF767A56A700BAD85BE0F19ContainerLoadMetric_containerType] = 1;
  v20 = [objc_opt_self() defaultLogger];
  if (v20)
  {
    v21 = v20;
    [v20 logMetric:v19];
  }

  else
  {
    v21 = sub_1009364B8();
    v22 = sub_100936EF8();
    if (!os_log_type_enabled(v21, v22))
    {

      return (*(v8 + 8))(v10, v7);
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Error initializing core analytics logger.", v23, 2u);
  }

  return (*(v8 + 8))(v10, v7);
}

void sub_1008A67B0(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100936B28();
    v5 = [v3 registeredLocalURIsOnService:v4];

    if (v5)
    {
      sub_100014170(0, &qword_100CBA2E0, IDSURI_ptr);
      sub_100936CE8();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1008A6878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    v6 = sub_100936B28();
    v7 = [v5 registeredDevicesOnService:v6 withLinkedURI:a3];

    if (v7)
    {
      sub_100014170(0, &qword_100CBA2E8, IDSRegisteredDevice_ptr);
      v8 = sub_100936CE8();

      if (!(v8 >> 62))
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = &_swiftEmptyArrayStorage;
      if (!(&_swiftEmptyArrayStorage >> 62))
      {
LABEL_4:
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_19;
      }
    }

    v9 = sub_1009373F8();
    if (v9)
    {
LABEL_5:
      v10 = 0;
      v11 = &_swiftEmptyArrayStorage;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = sub_100937268();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v12 = *(v8 + 8 * v10 + 32);
        }

        v13 = v12;
        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v15 = [v12 pushToken];
        v16 = sub_100935EA8();
        v18 = v17;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100787FB8(0, *(v11 + 2) + 1, 1, v11);
        }

        v20 = *(v11 + 2);
        v19 = *(v11 + 3);
        if (v20 >= v19 >> 1)
        {
          v11 = sub_100787FB8((v19 > 1), v20 + 1, 1, v11);
        }

        *(v11 + 2) = v20 + 1;
        v21 = &v11[16 * v20];
        *(v21 + 4) = v16;
        *(v21 + 5) = v18;
        ++v10;
        if (v14 == v9)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_19:

    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_1008A6AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*((swift_isaMask & *v3) + 0x100))(a3);
  sub_100014170(0, &qword_100CB4A70, NSObject_ptr);
  if (sub_100937038())
  {
    v5 = sub_100936B38();
    v22 = (*((swift_isaMask & *v3) + 0xF0))(v5);

    v7 = *(v4 + 16);
    if (v7)
    {
      v8 = 0;
      v20 = v7 - 1;
      v21 = &_swiftEmptyArrayStorage;
      do
      {
        v9 = v8;
        while (1)
        {
          if (v9 >= *(v4 + 16))
          {
            __break(1u);
            return result;
          }

          v8 = v9 + 1;
          v23 = *(v4 + 32 + 16 * v9);
          *&v10 = __chkstk_darwin(result);
          v19[2] = &v23;
          v11 = v10;
          v13 = v12;
          sub_100715738(v10, v12);
          if (sub_1008E4C18(sub_1008EB364, v19, v22))
          {
            break;
          }

          result = sub_1007156D8(v11, v13);
          ++v9;
          if (v7 == v8)
          {
            goto LABEL_16;
          }
        }

        v14 = v21;
        result = swift_isUniquelyReferenced_nonNull_native();
        v24 = v14;
        if ((result & 1) == 0)
        {
          result = sub_1008E447C(0, v14[2] + 1, 1);
          v14 = v24;
        }

        v16 = v14[2];
        v15 = v14[3];
        v17 = (v16 + 1);
        if (v16 >= v15 >> 1)
        {
          v21 = (v16 + 1);
          result = sub_1008E447C((v15 > 1), v16 + 1, 1);
          v17 = v21;
          v14 = v24;
        }

        v14[2] = v17;
        v21 = v14;
        v18 = &v14[2 * v16];
        v18[4] = v11;
        v18[5] = v13;
      }

      while (v20 != v9);
    }

    else
    {
      v21 = &_swiftEmptyArrayStorage;
    }

LABEL_16:

    return v21;
  }

  return v4;
}

unint64_t sub_1008A6D40(unint64_t result)
{
  v1 = result;
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return &_swiftEmptyArrayStorage;
  }

  result = sub_1009373F8();
  v2 = result;
  if (!result)
  {
    return &_swiftEmptyArrayStorage;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = IDSRegistrationPropertySupportsStewie;
    v5 = v1 & 0xC000000000000001;
    v6 = &_swiftEmptyArrayStorage;
    v18 = v1;
    do
    {
      if (v5)
      {
        v7 = sub_100937268();
      }

      else
      {
        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      v9 = [v7 capabilities];
      v10 = [v9 valueForCapability:v4];

      if (v10 < 1)
      {
      }

      else
      {
        v11 = [v8 pushToken];
        v12 = sub_100935EA8();
        v14 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_100787FB8(0, *(v6 + 2) + 1, 1, v6);
        }

        v16 = *(v6 + 2);
        v15 = *(v6 + 3);
        if (v16 >= v15 >> 1)
        {
          v6 = sub_100787FB8((v15 > 1), v16 + 1, 1, v6);
        }

        *(v6 + 2) = v16 + 1;
        v17 = &v6[16 * v16];
        *(v17 + 4) = v12;
        *(v17 + 5) = v14;
        v1 = v18;
      }

      ++v3;
    }

    while (v2 != v3);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1008A6EFC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v205 = a3;
  v200 = sub_100936038();
  v203 = *(v200 - 8);
  __chkstk_darwin(v200);
  v199 = v183 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v201 = v183 - v8;
  v9 = type metadata accessor for SenderKeyAndState(0);
  v10 = *(v9 - 8);
  v211 = v9;
  v212 = v10;
  __chkstk_darwin(v9);
  v190 = v183 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v195 = v183 - v13;
  __chkstk_darwin(v14);
  v186 = v183 - v15;
  __chkstk_darwin(v16);
  v187 = v183 - v17;
  __chkstk_darwin(v18);
  v189 = v183 - v19;
  __chkstk_darwin(v20);
  v194 = v183 - v21;
  __chkstk_darwin(v22);
  v192 = v183 - v23;
  __chkstk_darwin(v24);
  v193 = v183 - v25;
  v202 = sub_100706B30(&unk_100CB4FC0, &qword_1009B0C58);
  __chkstk_darwin(v202);
  v188 = v183 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v191 = v183 - v28;
  __chkstk_darwin(v29);
  v197 = v183 - v30;
  __chkstk_darwin(v31);
  v204 = v183 - v32;
  v33 = sub_100706B30(&unk_100CB4A50, &unk_1009AFFE0);
  __chkstk_darwin(v33 - 8);
  v198 = v183 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v35);
  v210 = v183 - v37;
  v38 = *((swift_isaMask & *v3) + 0xE8);
  v208 = v3;
  v39 = v38(v36);
  sub_100706B30(&qword_100CB4A30, &qword_1009AFF98);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1009AD920;
  *(v40 + 32) = a2;
  sub_100014170(0, &qword_100CBA2E0, IDSURI_ptr);
  v41 = a2;
  isa = sub_100936CD8().super.isa;

  v43 = IDSServiceNameiMessage;
  sub_100706B30(&unk_100CBA2F0, &unk_1009BE6F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1009AC700;
  *(inited + 32) = sub_100936B38();
  *(inited + 40) = v45;
  v46 = objc_allocWithZone(NSNumber);
  v47 = v43;
  *(inited + 48) = [v46 initWithInteger:1];
  sub_1007917EC(inited);
  swift_setDeallocating();
  sub_100013814(inited + 32, &unk_100CB4A60, &qword_1009AFFF0);
  sub_100014170(0, &unk_100CBA300, NSNumber_ptr);
  v48 = sub_100936A58().super.isa;

  v49 = [v39 endpointsForURIs:isa service:v47 fromURI:a1 withCapabilities:v48];

  swift_unknownObjectRelease();
  if (v49)
  {
    sub_100706B30(&qword_100CB4A38, &unk_1009AFFD0);
    sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0, IDSURI_ptr);
    v50 = sub_100936A78();

    v51 = v212;
    if (*(v50 + 16))
    {
      v52 = sub_1007417B0(v41);
      v53 = v208;
      if (v54)
      {
        v55 = *(*(v50 + 56) + 8 * v52);
      }

      else
      {
        v55 = &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v55 = &_swiftEmptyArrayStorage;
      v53 = v208;
    }
  }

  else
  {
    v55 = &_swiftEmptyArrayStorage;
    v51 = v212;
    v53 = v208;
  }

  v56 = (*((swift_isaMask & *v53) + 0xF8))(a1, v41, v55);
  v57 = OBJC_IVAR___IDSQuerySDPersistenceManager_logger;
  swift_bridgeObjectRetain_n();
  v58 = v41;
  v59 = a1;

  v60 = v59;
  v61 = sub_1009364B8();
  v62 = a1;
  v63 = sub_100936F18();

  LODWORD(v196) = v63;
  v64 = os_log_type_enabled(v61, v63);
  v206 = v57;
  v207 = v56;
  v209 = v60;
  if (v64)
  {
    v185 = v61;
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v214 = v184;
    *v65 = 138413314;
    *(v65 + 4) = v60;
    *(v65 + 12) = 2112;
    *(v65 + 14) = v58;
    *v66 = v62;
    v66[1] = v58;
    v183[1] = v66;
    *(v65 + 22) = 2048;
    if (v55 >> 62)
    {
      v67 = sub_1009373F8();
    }

    else
    {
      v67 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v68 = v207;
    v69 = v58;
    v70 = v209;

    *(v65 + 24) = v67;

    *(v65 + 32) = 2048;
    v71 = *(v68 + 16);

    *(v65 + 34) = v71;

    *(v65 + 42) = 2080;
    v72 = *(v68 + 16);
    if (v72)
    {
      v183[0] = v58;
      v213 = &_swiftEmptyArrayStorage;
      sub_1008E449C(0, v72, 0);
      v73 = v213;
      v74 = (v68 + 40);
      do
      {
        v76 = *(v74 - 1);
        v75 = *v74;
        sub_100715738(v76, *v74);
        v77 = sub_100935E78().super.isa;
        v78 = [(objc_class *)v77 __imHexString];

        if (v78)
        {
          v79 = sub_100936B38();
          v81 = v80;
          sub_1007156D8(v76, v75);
        }

        else
        {
          sub_1007156D8(v76, v75);
          v79 = 0;
          v81 = 0;
        }

        v213 = v73;
        v83 = v73[2];
        v82 = v73[3];
        if (v83 >= v82 >> 1)
        {
          sub_1008E449C((v82 > 1), v83 + 1, 1);
          v73 = v213;
        }

        v74 += 2;
        v73[2] = v83 + 1;
        v84 = &v73[2 * v83];
        v84[4] = v79;
        v84[5] = v81;
        --v72;
      }

      while (v72);
      v51 = v212;
      v53 = v208;
      v58 = v183[0];
    }

    sub_100706B30(&unk_100CBA310, &qword_1009AD9F0);
    v86 = sub_100936CF8();
    v88 = v87;

    v89 = sub_10001273C(v86, v88, &v214);

    *(v65 + 44) = v89;
    v90 = v185;
    _os_log_impl(&_mh_execute_header, v185, v196, "Determining usable sender key for senderURI: %@ receiverURI: %@ with %ld endpoints and %ld stewieCapableTokens: %s", v65, 0x34u);
    sub_100706B30(&qword_100CB36B0, &unk_1009AD140);
    swift_arrayDestroy();

    sub_100012970(v184);

    v60 = v209;
    v85 = v210;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v85 = v210;
  }

  if (([v53 hasAnyDecryptingKeyIDWithSenderURI:v58 receiverURI:v60] & 1) == 0)
  {

    v118 = v58;
    v119 = sub_1009364B8();
    v120 = sub_100936F18();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *v121 = 138412290;
      *(v121 + 4) = v118;
      *v122 = v118;
      v123 = v118;
      _os_log_impl(&_mh_execute_header, v119, v120, "We've never received a key from %@ - returning nil", v121, 0xCu);
      sub_100013814(v122, &qword_100CB36B0, &unk_1009AD140);
    }

    return (*(v51 + 56))(v205, 1, 1, v211);
  }

  v91 = v204;
  v92 = *(v51 + 56);
  v93 = v53;
  v94 = v58;
  v95 = v211;
  (v92)(v85, 1, 1, v211);
  v96 = v202;
  v97 = v91 + *(v202 + 48);
  v98 = v91 + *(v202 + 64);
  (v92)(v91, 1, 1, v95);
  (v92)(v97, 1, 1, v95);
  v196 = v51 + 56;
  v185 = v92;
  v99 = (v92)(v98, 1, 1, v95);
  v100.n128_f64[0] = __chkstk_darwin(v99);
  v101 = v209;
  v183[-8] = v93;
  v183[-7] = v101;
  v183[-6] = v94;
  v183[-5] = v207;
  v183[-4] = v98;
  v183[-3] = v91;
  v183[-2] = v97;
  (*((swift_isaMask & *v93) + 0x118))(0, sub_1008EB3A0, v100);

  v102 = v197;
  sub_100012D50(v91, v197, &unk_100CB4FC0, &qword_1009B0C58);
  v103 = *(v96 + 48);
  v104 = *(v96 + 64);
  v105 = *(v51 + 48);
  v212 = v51 + 48;
  v106 = v105;
  if (v105(v102, 1, v95) != 1)
  {
    v209 = v105;
    v125 = v193;
    sub_1008F24C4(v102, v193, type metadata accessor for SenderKeyAndState);
    sub_100013814(v102 + v104, &unk_100CB4A50, &unk_1009AFFE0);
    sub_100013814(v102 + v103, &unk_100CB4A50, &unk_1009AFFE0);
    v126 = v192;
    sub_1008ED848(v125, v192, type metadata accessor for SenderKeyAndState);
    v127 = sub_1009364B8();
    v128 = sub_100936F18();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = v126;
      v131 = swift_slowAlloc();
      v214 = v131;
      *v129 = 136315138;
      v132 = sub_100935E88(0);
      v134 = v133;
      sub_1008ED8B0(v130, type metadata accessor for SenderKeyAndState);
      v135 = sub_10001273C(v132, v134, &v214);

      *(v129 + 4) = v135;
      v91 = v204;
      _os_log_impl(&_mh_execute_header, v127, v128, "We found a usable key: %s is acked by all Stewie capable devices", v129, 0xCu);
      sub_100012970(v131);

      v136 = v210;
      sub_100013814(v210, &unk_100CB4A50, &unk_1009AFFE0);
    }

    else
    {

      v136 = v210;
      sub_100013814(v210, &unk_100CB4A50, &unk_1009AFFE0);
      sub_1008ED8B0(v126, type metadata accessor for SenderKeyAndState);
    }

    v148 = v200;
    v149 = v203;
    v150 = v201;
    sub_1008F24C4(v125, v136, type metadata accessor for SenderKeyAndState);
    (v185)(v136, 0, 1, v211);
    v106 = v209;
    goto LABEL_45;
  }

  v107 = v102;
  sub_100013814(v102 + v104, &unk_100CB4A50, &unk_1009AFFE0);
  sub_100013814(v102 + v103, &unk_100CB4A50, &unk_1009AFFE0);
  v108 = v202;
  sub_100013814(v107, &unk_100CB4A50, &unk_1009AFFE0);
  v109 = v191;
  sub_100012D50(v91, v191, &unk_100CB4FC0, &qword_1009B0C58);
  v110 = *(v108 + 48);
  v111 = *(v108 + 64);
  if (v105(v109 + v111, 1, v211) != 1)
  {
    v137 = v109 + v111;
    v138 = v194;
    sub_1008F24C4(v137, v194, type metadata accessor for SenderKeyAndState);
    sub_100013814(v109 + v110, &unk_100CB4A50, &unk_1009AFFE0);
    sub_100013814(v109, &unk_100CB4A50, &unk_1009AFFE0);
    v139 = v189;
    sub_1008ED848(v138, v189, type metadata accessor for SenderKeyAndState);
    v140 = sub_1009364B8();
    v141 = sub_100936F18();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v214 = v143;
      *v142 = 136315138;
      v144 = sub_100935E88(0);
      v146 = v145;
      sub_1008ED8B0(v139, type metadata accessor for SenderKeyAndState);
      v147 = sub_10001273C(v144, v146, &v214);

      *(v142 + 4) = v147;
      v91 = v204;
      _os_log_impl(&_mh_execute_header, v140, v141, "We found a usable key: %s is acked by recently active device", v142, 0xCu);
      sub_100012970(v143);

      v136 = v210;
      sub_100013814(v210, &unk_100CB4A50, &unk_1009AFFE0);
    }

    else
    {

      v136 = v210;
      sub_100013814(v210, &unk_100CB4A50, &unk_1009AFFE0);
      sub_1008ED8B0(v139, type metadata accessor for SenderKeyAndState);
    }

    v148 = v200;
    v149 = v203;
    v150 = v201;
    sub_1008F24C4(v194, v136, type metadata accessor for SenderKeyAndState);
    (v185)(v136, 0, 1, v211);
    goto LABEL_45;
  }

  sub_100013814(v109 + v111, &unk_100CB4A50, &unk_1009AFFE0);
  sub_100013814(v109 + v110, &unk_100CB4A50, &unk_1009AFFE0);
  sub_100013814(v109, &unk_100CB4A50, &unk_1009AFFE0);
  v112 = v188;
  sub_100012D50(v91, v188, &unk_100CB4FC0, &qword_1009B0C58);
  v113 = *(v108 + 48);
  v114 = *(v108 + 64);
  v106 = v105;
  if (v105(v112 + v113, 1, v211) == 1)
  {
    sub_100013814(v112 + v114, &unk_100CB4A50, &unk_1009AFFE0);
    sub_100013814(v112 + v113, &unk_100CB4A50, &unk_1009AFFE0);
    sub_100013814(v112, &unk_100CB4A50, &unk_1009AFFE0);
    v115 = sub_1009364B8();
    v116 = sub_100936F18();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&_mh_execute_header, v115, v116, "We did not find any key", v117, 2u);
    }

    goto LABEL_44;
  }

  v151 = v187;
  sub_1008F24C4(v112 + v113, v187, type metadata accessor for SenderKeyAndState);
  sub_100013814(v112 + v114, &unk_100CB4A50, &unk_1009AFFE0);
  sub_100013814(v112, &unk_100CB4A50, &unk_1009AFFE0);
  v152 = v186;
  sub_1008ED848(v151, v186, type metadata accessor for SenderKeyAndState);
  v153 = sub_1009364B8();
  v154 = sub_100936F18();
  if (!os_log_type_enabled(v153, v154))
  {

    sub_1008ED8B0(v151, type metadata accessor for SenderKeyAndState);
    sub_1008ED8B0(v152, type metadata accessor for SenderKeyAndState);
LABEL_44:
    v148 = v200;
    v149 = v203;
    v150 = v201;
    v136 = v210;
    v91 = v204;
    goto LABEL_45;
  }

  v155 = swift_slowAlloc();
  v156 = swift_slowAlloc();
  v214 = v156;
  *v155 = 136315138;
  v157 = sub_100935E88(0);
  v159 = v158;
  sub_1008ED8B0(v152, type metadata accessor for SenderKeyAndState);
  v160 = sub_10001273C(v157, v159, &v214);

  *(v155 + 4) = v160;
  v91 = v204;
  _os_log_impl(&_mh_execute_header, v153, v154, "We did not find a usable key: %s is not acked by all Stewie capable devices", v155, 0xCu);
  sub_100012970(v156);

  sub_1008ED8B0(v151, type metadata accessor for SenderKeyAndState);
  v148 = v200;
  v149 = v203;
  v150 = v201;
  v136 = v210;
LABEL_45:
  v161 = type metadata accessor for SenderKeyDistributionManager(0);
  (*(v161 + 816))();
  v162 = v199;
  sub_100936028();
  sub_100935F48();
  v165 = *(v149 + 8);
  v163 = v149 + 8;
  v164 = v165;
  v165(v162, v148);
  v166 = v198;
  sub_100012D50(v136, v198, &unk_100CB4A50, &unk_1009AFFE0);
  v167 = v136;
  if (v106(v166, 1, v211) == 1)
  {
    v164(v150, v148);
    sub_100013814(v91, &unk_100CB4FC0, &qword_1009B0C58);
    v168 = &unk_100CB4A50;
    v169 = &unk_1009AFFE0;
    v170 = v166;
LABEL_51:
    sub_100013814(v170, v168, v169);
    return sub_100021E3C(v167, v205, &unk_100CB4A50, &unk_1009AFFE0);
  }

  v171 = v195;
  sub_1008F24C4(v166, v195, type metadata accessor for SenderKeyAndState);
  type metadata accessor for SenderKeyInfo(0);
  if ((sub_100935F78() & 1) == 0)
  {
    sub_1008ED8B0(v171, type metadata accessor for SenderKeyAndState);
    v164(v150, v148);
    v168 = &unk_100CB4FC0;
    v169 = &qword_1009B0C58;
    v170 = v91;
    goto LABEL_51;
  }

  v203 = v163;
  v172 = v190;
  sub_1008ED848(v171, v190, type metadata accessor for SenderKeyAndState);
  v173 = sub_1009364B8();
  v174 = sub_100936F18();
  if (os_log_type_enabled(v173, v174))
  {
    v175 = swift_slowAlloc();
    v176 = v148;
    v177 = swift_slowAlloc();
    v214 = v177;
    *v175 = 136315138;
    v178 = sub_100935E88(0);
    v180 = v179;
    sub_1008ED8B0(v172, type metadata accessor for SenderKeyAndState);
    v181 = sub_10001273C(v178, v180, &v214);

    *(v175 + 4) = v181;
    _os_log_impl(&_mh_execute_header, v173, v174, "Found key %s is expired - returning nil", v175, 0xCu);
    sub_100012970(v177);

    sub_1008ED8B0(v195, type metadata accessor for SenderKeyAndState);
    v164(v201, v176);
    sub_100013814(v210, &unk_100CB4A50, &unk_1009AFFE0);
    v182 = v204;
  }

  else
  {

    sub_1008ED8B0(v171, type metadata accessor for SenderKeyAndState);
    v164(v201, v148);
    sub_100013814(v210, &unk_100CB4A50, &unk_1009AFFE0);
    sub_1008ED8B0(v172, type metadata accessor for SenderKeyAndState);
    v182 = v91;
  }

  sub_100013814(v182, &unk_100CB4FC0, &qword_1009B0C58);
  return (v185)(v205, 1, 1, v211);
}

uint64_t sub_1008A8848(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a1;
  v12 = sub_100706B30(&unk_100CB4A50, &unk_1009AFFE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v18 - v13;
  v15 = type metadata accessor for SenderKeyAndState(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  v16(a2, 1, 1, v15);
  v16(a3, 1, 1, v15);
  v21 = v6;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a3;
  v26 = v14;
  v27 = a2;
  (*((swift_isaMask & *v6) + 0x118))(0, sub_1008F4E88, v20);
  sub_100012D50(v14, v19, &unk_100CB4A50, &unk_1009AFFE0);
  return sub_100013814(v14, &unk_100CB4A50, &unk_1009AFFE0);
}

uint64_t sub_1008A8B6C@<X0>(uint64_t *a1@<X0>, void (*a2)(char *, void, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v62 = a3;
  v63 = a4;
  v58 = a2;
  v65 = sub_100935D38();
  v5 = *(v65 - 8);
  __chkstk_darwin(v65);
  v56 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100706B30(&qword_100CBA628, &qword_1009BEAB0);
  v67 = *(v59 - 8);
  __chkstk_darwin(v59);
  v8 = v42 - v7;
  v9 = sub_100706B30(&qword_100CBAE58, &qword_1009BF108);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v42 - v11;
  v64 = sub_100706B30(&qword_100CBAE48, &qword_1009BF0F8);
  v66 = *(v64 - 8);
  __chkstk_darwin(v64);
  v14 = v42 - v13;
  v15 = sub_100706B30(&qword_100CBAE50, &qword_1009BF100);
  v16 = *(v15 - 8);
  v60 = v15;
  v61 = v16;
  __chkstk_darwin(v15);
  v57 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v54 = *a1;
  v55 = v42 - v19;
  v50 = sub_100014C88(&qword_100CBAE70, &qword_100CBAE58, &qword_1009BF108, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  v47 = v12;
  v48 = v9;
  sub_100935C78();

  v20 = *(v10 + 8);
  v52 = v10 + 8;
  v53 = v20;
  v20(v12, v9);
  v51 = sub_100936038();
  sub_100935D48();
  v21 = *(v5 + 104);
  v49 = v5 + 104;
  v58 = v21;
  v22 = v56;
  v23 = v65;
  v21(v56, enum case for PredicateExpressions.ComparisonOperator.lessThanOrEqual(_:), v65);
  v46 = sub_100014C88(&qword_100CBAE80, &qword_100CBAE48, &qword_1009BF0F8, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v45 = sub_100014C88(&qword_100CBA688, &qword_100CBA628, &qword_1009BEAB0, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v44 = sub_100014C40(&qword_100CB4FD0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v24 = v8;
  v25 = v22;
  v26 = v64;
  v27 = v59;
  sub_100935CD8();
  v28 = *(v5 + 8);
  v42[1] = v5 + 8;
  v43 = v28;
  v28(v25, v23);
  v29 = *(v67 + 8);
  v67 += 8;
  v29(v24, v27);
  v30 = *(v66 + 8);
  v66 += 8;
  v30(v14, v26);
  v31 = v47;
  v32 = v48;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v53(v31, v32);
  sub_100935D48();
  v33 = v65;
  v58(v25, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v65);
  v34 = v57;
  v35 = v64;
  sub_100935CD8();
  v43(v25, v33);
  v29(v24, v27);
  v30(v14, v35);
  v36 = sub_100706B30(&qword_100CBB1D8, &qword_1009BF3B0);
  v37 = v63;
  v63[3] = v36;
  v37[4] = sub_1008F4B04();
  sub_100014250(v37);
  sub_100014C88(&qword_100CBAEC8, &qword_100CBAE50, &qword_1009BF100, &protocol conformance descriptor for PredicateExpressions.Comparison<A, B>);
  v38 = v55;
  v39 = v60;
  sub_100935D08();
  v40 = *(v61 + 8);
  v40(v34, v39);
  return (v40)(v38, v39);
}

uint64_t sub_1008A9298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100706B30(&qword_100CBA418, &qword_1009BE900);
  __chkstk_darwin(v6 - 8);
  v8 = &v30[-v7];
  v9 = sub_100706B30(&qword_100CBA9B0, &qword_1009BED78);
  __chkstk_darwin(v9 - 8);
  v11 = &v30[-v10];
  v12 = sub_100706B30(&qword_100CBABB0, &qword_1009BEF50);
  __chkstk_darwin(v12 - 8);
  v14 = &v30[-v13];
  v15 = sub_100706B30(&qword_100CBA9A8, &qword_1009BED70);
  __chkstk_darwin(v15 - 8);
  v17 = &v30[-v16];
  v18 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  v31 = a2;
  v32 = a3;
  v36 = v18;
  sub_100936128();
  v19 = sub_100706B30(&unk_100CBA340, &unk_1009BE700);
  (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  sub_100014C40(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable, &unk_1009AE8A8);
  sub_100936748();
  if (v3)
  {
    return sub_100013814(v17, &qword_100CBA9A8, &qword_1009BED70);
  }

  sub_100013814(v17, &qword_100CBA9A8, &qword_1009BED70);
  v21 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice(0);
  __chkstk_darwin(v21);
  *&v30[-16] = a2;
  *&v30[-8] = a3;
  v35 = v22;
  sub_100936128();
  v23 = sub_100706B30(&qword_100CBA358, &qword_1009BE718);
  (*(*(v23 - 8) + 56))(v14, 0, 1, v23);
  sub_100014C40(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice, &unk_1009AE9D4);
  sub_100936748();
  sub_100013814(v14, &qword_100CBABB0, &qword_1009BEF50);
  v24 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
  __chkstk_darwin(v24);
  *&v30[-16] = a2;
  *&v30[-8] = a3;
  v34 = v25;
  sub_100936128();
  v26 = sub_100706B30(&qword_100CBA350, &qword_1009BE710);
  (*(*(v26 - 8) + 56))(v11, 0, 1, v26);
  sub_100014C40(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession, &unk_1009AEC2C);
  sub_100936748();
  sub_100013814(v11, &qword_100CBA9B0, &qword_1009BED78);
  v27 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus(0);
  __chkstk_darwin(v27);
  *&v30[-16] = a2;
  *&v30[-8] = a3;
  v33 = v28;
  sub_100936128();
  v29 = sub_100706B30(&unk_100CBA420, &qword_1009BE908);
  (*(*(v29 - 8) + 56))(v8, 0, 1, v29);
  sub_100014C40(&qword_100CB3D30, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDStatus, &unk_1009AEB00);
  sub_100936748();
  return sub_100013814(v8, &qword_100CBA418, &qword_1009BE900);
}

uint64_t sub_1008A9878@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = sub_100706B30(&qword_100CBA4C0, &qword_1009BE998);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_100706B30(&qword_100CBA9D0, &qword_1009BEDD8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_100706B30(&qword_100CBA9D8, &qword_1009BEDE0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_100014C88(&qword_100CBA9E8, &qword_100CBA9D0, &qword_1009BEDD8, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v10 + 8))(v12, v9);
  v23 = v19;
  v24 = v20;
  sub_100935D48();
  a4[3] = sub_100706B30(&qword_100CBA9E0, &qword_1009BEDE8);
  a4[4] = sub_1008F1288();
  sub_100014250(a4);
  sub_100014C88(&qword_100CBA9F0, &qword_100CBA9D8, &qword_1009BEDE0, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0, &qword_1009BE998, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v17 = v21;
  sub_100935C68();
  (*(v22 + 8))(v8, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1008A9BE4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = sub_100706B30(&qword_100CBA4C0, &qword_1009BE998);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_100706B30(&qword_100CBB010, &qword_1009BF288);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_100706B30(&qword_100CBB050, &qword_1009BF2C8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_100014C88(&qword_100CBB020, &qword_100CBB010, &qword_1009BF288, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v10 + 8))(v12, v9);
  v23 = v19;
  v24 = v20;
  sub_100935D48();
  a4[3] = sub_100706B30(&qword_100CBB058, &qword_1009BF2D0);
  a4[4] = sub_1008F3DC0();
  sub_100014250(a4);
  sub_100014C88(&qword_100CBB060, &qword_100CBB050, &qword_1009BF2C8, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0, &qword_1009BE998, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v17 = v21;
  sub_100935C68();
  (*(v22 + 8))(v8, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1008A9F50@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = sub_100706B30(&qword_100CBA4C0, &qword_1009BE998);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_100706B30(&qword_100CBAA28, &qword_1009BEE48);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_100706B30(&qword_100CBAF28, &qword_1009BF1E8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_100014C88(&qword_100CBAA38, &qword_100CBAA28, &qword_1009BEE48, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v10 + 8))(v12, v9);
  v23 = v19;
  v24 = v20;
  sub_100935D48();
  a4[3] = sub_100706B30(&qword_100CBAF30, &qword_1009BF1F0);
  a4[4] = sub_1008F3750();
  sub_100014250(a4);
  sub_100014C88(&qword_100CBAF40, &qword_100CBAF28, &qword_1009BF1E8, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0, &qword_1009BE998, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v17 = v21;
  sub_100935C68();
  (*(v22 + 8))(v8, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1008AA2BC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = sub_100706B30(&qword_100CBA4C0, &qword_1009BE998);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_100706B30(&qword_100CBA440, &qword_1009BE918);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_100706B30(&qword_100CBA448, &qword_1009BE920);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_100014C88(&qword_100CBA468, &qword_100CBA440, &qword_1009BE918, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v10 + 8))(v12, v9);
  v23 = v19;
  v24 = v20;
  sub_100935D48();
  a4[3] = sub_100706B30(&qword_100CBA4C8, &qword_1009BE9A0);
  a4[4] = sub_1008EF688();
  sub_100014250(a4);
  sub_100014C88(&qword_100CBA478, &qword_100CBA448, &qword_1009BE920, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0, &qword_1009BE998, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v17 = v21;
  sub_100935C68();
  (*(v22 + 8))(v8, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1008AA79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a6;
  v26 = a7;
  v12 = sub_100706B30(&qword_100CBA9B0, &qword_1009BED78);
  __chkstk_darwin(v12 - 8);
  v14 = &v25 - v13;
  v15 = sub_100706B30(&qword_100CBA9A8, &qword_1009BED70);
  __chkstk_darwin(v15 - 8);
  v17 = &v25 - v16;
  v18 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v32 = v18;
  sub_100936128();
  v19 = sub_100706B30(&unk_100CBA340, &unk_1009BE700);
  (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  sub_100014C40(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable, &unk_1009AE8A8);
  sub_100936748();
  result = sub_100013814(v17, &qword_100CBA9A8, &qword_1009BED70);
  if (!v7)
  {
    v21 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
    __chkstk_darwin(v21);
    *(&v25 - 6) = a2;
    *(&v25 - 5) = a3;
    v22 = v26;
    *(&v25 - 4) = v25;
    *(&v25 - 3) = v22;
    *(&v25 - 2) = a4;
    *(&v25 - 1) = a5;
    v31 = v23;
    sub_100936128();
    v24 = sub_100706B30(&qword_100CBA350, &qword_1009BE710);
    (*(*(v24 - 8) + 56))(v14, 0, 1, v24);
    sub_100014C40(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession, &unk_1009AEC2C);
    sub_100936748();
    return sub_100013814(v14, &qword_100CBA9B0, &qword_1009BED78);
  }

  return result;
}

uint64_t sub_1008AAAB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v42 = a4;
  v43 = a5;
  v38 = a2;
  v39 = a3;
  v44 = a6;
  v45 = sub_100706B30(&qword_100CBA4C0, &qword_1009BE998);
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = v33 - v7;
  v9 = sub_100706B30(&qword_100CBA9D0, &qword_1009BEDD8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v33 - v11;
  v13 = sub_100706B30(&qword_100CBA9D8, &qword_1009BEDE0);
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v33 - v14;
  v16 = sub_100706B30(&qword_100CBA9E0, &qword_1009BEDE8);
  v17 = *(v16 - 8);
  v40 = v16;
  v41 = v17;
  __chkstk_darwin(v16);
  v37 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v35 = *a1;
  v36 = v33 - v20;
  sub_100014C88(&qword_100CBA9E8, &qword_100CBA9D0, &qword_1009BEDD8, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v21 = *(v10 + 8);
  v33[1] = v10 + 8;
  v34 = v21;
  v21(v12, v9);
  v48 = v38;
  v49 = v39;
  sub_100935D48();
  v39 = sub_100014C88(&qword_100CBA9F0, &qword_100CBA9D8, &qword_1009BEDE0, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0, &qword_1009BE998, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v22 = v45;
  sub_100935C68();
  v23 = *(v47 + 8);
  v47 += 8;
  v23(v8, v22);
  v24 = *(v46 + 8);
  v46 += 8;
  v24(v15, v13);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v34(v12, v9);
  v48 = v42;
  v49 = v43;
  sub_100935D48();
  v25 = v37;
  v26 = v45;
  sub_100935C68();
  v23(v8, v26);
  v24(v15, v13);
  v27 = sub_100706B30(&qword_100CBA9F8, &qword_1009BEE40);
  v28 = v44;
  v44[3] = v27;
  v28[4] = sub_1008F1204();
  sub_100014250(v28);
  sub_100014C88(&qword_100CBAA20, &qword_100CBA9E0, &qword_1009BEDE8, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v29 = v36;
  v30 = v40;
  sub_100935CF8();
  v31 = *(v41 + 8);
  v31(v25, v30);
  return (v31)(v29, v30);
}

uint64_t sub_1008AB258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v10 = sub_100706B30(&qword_100CBA9B0, &qword_1009BED78);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_100706B30(&qword_100CBA9A8, &qword_1009BED70);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  v16 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v30 = v16;
  sub_100936128();
  v17 = sub_100706B30(&unk_100CBA340, &unk_1009BE700);
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  sub_100014C40(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable, &unk_1009AE8A8);
  sub_100936748();
  result = sub_100013814(v15, &qword_100CBA9A8, &qword_1009BED70);
  if (!v6)
  {
    v19 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
    __chkstk_darwin(v19);
    v21 = v24;
    v20 = v25;
    *(&v24 - 6) = a2;
    *(&v24 - 5) = v21;
    *(&v24 - 4) = v20;
    *(&v24 - 3) = a3;
    *(&v24 - 2) = a4;
    v29 = v22;
    sub_100936128();
    v23 = sub_100706B30(&qword_100CBA350, &qword_1009BE710);
    (*(*(v23 - 8) + 56))(v12, 0, 1, v23);
    sub_100014C40(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession, &unk_1009AEC2C);
    sub_100936748();
    return sub_100013814(v12, &qword_100CBA9B0, &qword_1009BED78);
  }

  return result;
}

uint64_t sub_1008AB570@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v51 = a3;
  v52 = a4;
  v55 = a5;
  v7 = sub_100706B30(&qword_100CBA4C0, &qword_1009BE998);
  v8 = *(v7 - 8);
  v53 = v7;
  v54 = v8;
  __chkstk_darwin(v7);
  v50 = v39 - v9;
  v10 = sub_100706B30(&qword_100CBA9E0, &qword_1009BEDE8);
  v11 = *(v10 - 8);
  v56 = v10;
  v57 = v11;
  __chkstk_darwin(v10);
  v49 = v39 - v12;
  v13 = sub_100706B30(&qword_100CBA9D0, &qword_1009BEDD8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v39 - v15;
  v46 = sub_100706B30(&qword_100CBA9D8, &qword_1009BEDE0);
  v58 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = v39 - v17;
  v19 = sub_100706B30(&qword_100CBA450, &qword_1009BE928);
  v20 = *(v19 - 8);
  v44 = v19;
  v45 = v20;
  __chkstk_darwin(v19);
  v22 = v39 - v21;
  v23 = sub_100706B30(&qword_100CBB178, &qword_1009BF388);
  v24 = *(v23 - 8);
  v47 = v23;
  v48 = v24;
  __chkstk_darwin(v23);
  v43 = v39 - v25;
  v41 = *a1;
  v59 = a2;
  sub_100706B30(&qword_100CBA460, &unk_1009ACB90);
  sub_100935D48();
  sub_100014C88(&qword_100CBA9E8, &qword_100CBA9D0, &qword_1009BEDD8, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v26 = *(v14 + 8);
  v39[1] = v14 + 8;
  v40 = v26;
  v26(v16, v13);
  v42 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100014C88(&qword_100CBA470, &qword_100CBA450, &qword_1009BE928, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_100014C88(&qword_100CBA9F0, &qword_100CBA9D8, &qword_1009BEDE0, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBA480, &qword_100CBA460, &unk_1009ACB90, &protocol conformance descriptor for [A]);
  v27 = v44;
  v28 = v46;
  sub_100935CA8();
  v29 = *(v58 + 8);
  v58 += 8;
  v29(v18, v28);
  (*(v45 + 8))(v22, v27);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v40(v16, v13);
  v59 = v51;
  v60 = v52;
  v30 = v50;
  sub_100935D48();
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0, &qword_1009BE998, v42);
  v31 = v49;
  v32 = v53;
  sub_100935C68();
  (*(v54 + 8))(v30, v32);
  v29(v18, v28);
  v33 = sub_100706B30(&qword_100CBB1C8, &qword_1009BF3A8);
  v34 = v55;
  v55[3] = v33;
  v34[4] = sub_1008F49FC();
  sub_100014250(v34);
  sub_100014C88(&qword_100CBB198, &qword_100CBB178, &qword_1009BF388, &protocol conformance descriptor for PredicateExpressions.SequenceContains<A, B>);
  sub_100014C88(&qword_100CBAA20, &qword_100CBA9E0, &qword_1009BEDE8, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v35 = v43;
  v36 = v47;
  v37 = v56;
  sub_100935CF8();
  (*(v57 + 8))(v31, v37);
  return (*(v48 + 8))(v35, v36);
}

uint64_t sub_1008ABC98@<X0>(uint64_t *a1@<X0>, void (*a2)(void, void)@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v59 = a5;
  v60 = a6;
  v55 = a4;
  v54 = a3;
  v61 = a7;
  v70 = sub_100706B30(&qword_100CBA4C0, &qword_1009BE998);
  v72 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v47 - v9;
  v58 = sub_100706B30(&qword_100CBAF30, &qword_1009BF1F0);
  v73 = *(v58 - 8);
  __chkstk_darwin(v58);
  v53 = &v47 - v10;
  v11 = sub_100706B30(&qword_100CBAA28, &qword_1009BEE48);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47 - v13;
  v67 = sub_100706B30(&qword_100CBAF28, &qword_1009BF1E8);
  v71 = *(v67 - 8);
  __chkstk_darwin(v67);
  v16 = &v47 - v15;
  v49 = sub_100706B30(&qword_100CBA450, &qword_1009BE928);
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v18 = &v47 - v17;
  v51 = sub_100706B30(&qword_100CBB150, &qword_1009BF378);
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v47 - v19;
  v20 = sub_100706B30(&qword_100CBB1A0, &qword_1009BF398);
  v21 = *(v20 - 8);
  v56 = v20;
  v57 = v21;
  __chkstk_darwin(v20);
  v69 = &v47 - v22;
  v66 = *a1;
  v74 = a2;
  sub_100706B30(&qword_100CBA460, &unk_1009ACB90);
  sub_100935D48();
  v62 = sub_100014C88(&qword_100CBAA38, &qword_100CBAA28, &qword_1009BEE48, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v23 = *(v12 + 8);
  v64 = v12 + 8;
  v65 = v23;
  v23(v14, v11);
  sub_100014C88(&qword_100CBA470, &qword_100CBA450, &qword_1009BE928, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v24 = sub_100014C88(&qword_100CBAF40, &qword_100CBAF28, &qword_1009BF1E8, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBA480, &qword_100CBA460, &unk_1009ACB90, &protocol conformance descriptor for [A]);
  v25 = v16;
  v26 = v49;
  v27 = v67;
  v47 = v24;
  sub_100935CA8();
  v28 = v71 + 8;
  v63 = *(v71 + 8);
  v63(v25, v27);
  v71 = v28;
  (*(v50 + 8))(v18, v26);
  v29 = v14;
  v30 = v11;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v65(v14, v11);
  v74 = v54;
  v75 = v55;
  v31 = v68;
  sub_100935D48();
  v55 = sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0, &qword_1009BE998, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v32 = v53;
  v33 = v70;
  sub_100935C68();
  v34 = *(v72 + 8);
  v72 += 8;
  v54 = v34;
  v34(v31, v33);
  v63(v25, v27);
  sub_100014C88(&qword_100CBB170, &qword_100CBB150, &qword_1009BF378, &protocol conformance descriptor for PredicateExpressions.SequenceContains<A, B>);
  sub_100014C88(&qword_100CBAF48, &qword_100CBAF30, &qword_1009BF1F0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v35 = v48;
  v36 = v51;
  v37 = v58;
  sub_100935CF8();
  v38 = *(v73 + 8);
  v73 += 8;
  v38(v32, v37);
  (*(v52 + 8))(v35, v36);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v65(v29, v30);
  v74 = v59;
  v75 = v60;
  v39 = v68;
  sub_100935D48();
  v40 = v67;
  v41 = v70;
  sub_100935C68();
  v54(v39, v41);
  v63(v25, v40);
  v42 = sub_100706B30(&qword_100CBB1A8, &qword_1009BF3A0);
  v43 = v61;
  v61[3] = v42;
  v43[4] = sub_1008F48E4();
  sub_100014250(v43);
  sub_100014C88(&qword_100CBB1C0, &qword_100CBB1A0, &qword_1009BF398, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  v44 = v69;
  v45 = v56;
  sub_100935CF8();
  v38(v32, v37);
  return (*(v57 + 8))(v44, v45);
}

uint64_t sub_1008AC850@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v44 = a3;
  v47 = a4;
  v6 = sub_100706B30(&qword_100CBA9D0, &qword_1009BEDD8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v35 - v8;
  v43 = sub_100706B30(&qword_100CBA9D8, &qword_1009BEDE0);
  v49 = *(v43 - 8);
  __chkstk_darwin(v43);
  v11 = v35 - v10;
  v12 = sub_100706B30(&qword_100CBA450, &qword_1009BE928);
  v48 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v35 - v13;
  v15 = sub_100706B30(&qword_100CBB178, &qword_1009BF388);
  v16 = *(v15 - 8);
  v45 = v15;
  v46 = v16;
  __chkstk_darwin(v15);
  v42 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v41 = v35 - v19;
  v39 = *a1;
  v50 = a2;
  v40 = sub_100706B30(&qword_100CBA460, &unk_1009ACB90);
  sub_100935D48();
  sub_100014C88(&qword_100CBA9E8, &qword_100CBA9D0, &qword_1009BEDD8, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  v36 = v6;
  sub_100935C78();

  v20 = *(v7 + 8);
  v37 = v7 + 8;
  v38 = v20;
  v20(v9, v6);
  v35[2] = sub_100014C88(&qword_100CBA470, &qword_100CBA450, &qword_1009BE928, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v35[1] = sub_100014C88(&qword_100CBA9F0, &qword_100CBA9D8, &qword_1009BEDE0, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBA480, &qword_100CBA460, &unk_1009ACB90, &protocol conformance descriptor for [A]);
  v21 = v12;
  v35[0] = v12;
  v22 = v43;
  sub_100935CA8();
  v23 = *(v49 + 8);
  v49 += 8;
  v24 = v22;
  v23(v11, v22);
  v25 = *(v48 + 8);
  v48 += 8;
  v25(v14, v21);
  v50 = v44;
  sub_100935D48();
  v26 = v36;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v38(v9, v26);
  v27 = v42;
  v28 = v35[0];
  sub_100935CA8();
  v23(v11, v24);
  v25(v14, v28);
  v29 = sub_100706B30(&qword_100CBB180, &qword_1009BF390);
  v30 = v47;
  v47[3] = v29;
  v30[4] = sub_1008F4798();
  sub_100014250(v30);
  sub_100014C88(&qword_100CBB198, &qword_100CBB178, &qword_1009BF388, &protocol conformance descriptor for PredicateExpressions.SequenceContains<A, B>);
  v31 = v41;
  v32 = v45;
  sub_100935CF8();
  v33 = *(v46 + 8);
  v33(v27, v32);
  return (v33)(v31, v32);
}

uint64_t sub_1008ACE48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v44 = a3;
  v47 = a4;
  v6 = sub_100706B30(&qword_100CBAA28, &qword_1009BEE48);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v35 - v8;
  v43 = sub_100706B30(&qword_100CBAF28, &qword_1009BF1E8);
  v49 = *(v43 - 8);
  __chkstk_darwin(v43);
  v11 = v35 - v10;
  v12 = sub_100706B30(&qword_100CBA450, &qword_1009BE928);
  v48 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v35 - v13;
  v15 = sub_100706B30(&qword_100CBB150, &qword_1009BF378);
  v16 = *(v15 - 8);
  v45 = v15;
  v46 = v16;
  __chkstk_darwin(v15);
  v42 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v41 = v35 - v19;
  v39 = *a1;
  v50 = a2;
  v40 = sub_100706B30(&qword_100CBA460, &unk_1009ACB90);
  sub_100935D48();
  sub_100014C88(&qword_100CBAA38, &qword_100CBAA28, &qword_1009BEE48, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  v36 = v6;
  sub_100935C78();

  v20 = *(v7 + 8);
  v37 = v7 + 8;
  v38 = v20;
  v20(v9, v6);
  v35[2] = sub_100014C88(&qword_100CBA470, &qword_100CBA450, &qword_1009BE928, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v35[1] = sub_100014C88(&qword_100CBAF40, &qword_100CBAF28, &qword_1009BF1E8, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBA480, &qword_100CBA460, &unk_1009ACB90, &protocol conformance descriptor for [A]);
  v21 = v12;
  v35[0] = v12;
  v22 = v43;
  sub_100935CA8();
  v23 = *(v49 + 8);
  v49 += 8;
  v24 = v22;
  v23(v11, v22);
  v25 = *(v48 + 8);
  v48 += 8;
  v25(v14, v21);
  v50 = v44;
  sub_100935D48();
  v26 = v36;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v38(v9, v26);
  v27 = v42;
  v28 = v35[0];
  sub_100935CA8();
  v23(v11, v24);
  v25(v14, v28);
  v29 = sub_100706B30(&qword_100CBB158, &qword_1009BF380);
  v30 = v47;
  v47[3] = v29;
  v30[4] = sub_1008F4688();
  sub_100014250(v30);
  sub_100014C88(&qword_100CBB170, &qword_100CBB150, &qword_1009BF378, &protocol conformance descriptor for PredicateExpressions.SequenceContains<A, B>);
  v31 = v41;
  v32 = v45;
  sub_100935CF8();
  v33 = *(v46 + 8);
  v33(v27, v32);
  return (v33)(v31, v32);
}

uint64_t sub_1008AD440()
{
  v1 = sub_100706B30(&qword_100CBAE30, &qword_1009BF0E8);
  __chkstk_darwin(v1 - 8);
  v3 = v18 - v2;
  v4 = sub_100706B30(&qword_100CBA9B0, &qword_1009BED78);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = sub_100706B30(&qword_100CBABB0, &qword_1009BEF50);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  v10 = sub_100706B30(&qword_100CBA9A8, &qword_1009BED70);
  __chkstk_darwin(v10 - 8);
  v12 = v18 - v11;
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  v13 = sub_100706B30(&unk_100CBA340, &unk_1009BE700);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_100014C40(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable, &unk_1009AE8A8);
  sub_100936748();
  result = sub_100013814(v12, &qword_100CBA9A8, &qword_1009BED70);
  if (!v0)
  {
    type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice(0);
    v15 = sub_100706B30(&qword_100CBA358, &qword_1009BE718);
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    sub_100014C40(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice, &unk_1009AE9D4);
    sub_100936748();
    sub_100013814(v9, &qword_100CBABB0, &qword_1009BEF50);
    type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
    v16 = sub_100706B30(&qword_100CBA350, &qword_1009BE710);
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    sub_100014C40(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession, &unk_1009AEC2C);
    sub_100936748();
    sub_100013814(v6, &qword_100CBA9B0, &qword_1009BED78);
    type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity(0);
    v17 = sub_100706B30(&qword_100CBA360, &qword_1009BE720);
    (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
    sub_100014C40(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity, &unk_1009AED58);
    sub_100936748();
    return sub_100013814(v3, &qword_100CBAE30, &qword_1009BF0E8);
  }

  return result;
}

uint64_t sub_1008ADA14(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, unint64_t a8)
{
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity(0);

  sub_100715738(a4, a5);
  v15 = [a6 prefixedURI];
  v16 = sub_100936B38();
  v18 = v17;

  sub_100715738(a7, a8);
  sub_100758958(a2, a3, a4, a5, v16, v18, a7, a8);
  sub_100014C40(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity, &unk_1009AED58);
  sub_100936768();
}

void sub_1008ADD7C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v160 = a7;
  v163 = a5;
  v194 = a4;
  v193 = a3;
  v195 = a1;
  v159 = sub_100936038();
  v9 = *(v159 - 8);
  __chkstk_darwin(v159);
  v158 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v157 = &v148 - v12;
  __chkstk_darwin(v13);
  v156 = &v148 - v14;
  __chkstk_darwin(v15);
  v155 = &v148 - v16;
  if (a2 >> 62)
  {
    v17 = sub_1009373F8();
  }

  else
  {
    v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v162 = v17;
  v202 = v9;
  if (v17)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v18 = sub_100937268();
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v18 = *(a2 + 32);
    }

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v163 prefixedURI];
  v21 = sub_100936B38();
  v23 = v22;

  v161 = a2;
  v148 = v19;
  if (v19)
  {
    v24 = [v19 senderCorrelationIdentifier];
    if (v24)
    {
      v25 = v24;
      v26 = sub_100936B38();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v30 = [v19 shortHandle];
    if (v30)
    {
      v31 = v30;
      v29 = sub_100936B38();
      v19 = v32;
    }

    else
    {
      v29 = 0;
      v19 = 0;
    }
  }

  else
  {
    v29 = 0;
    v26 = 0;
    v28 = 0;
  }

  v33 = type metadata accessor for ArchiveHelper();
  sub_100014170(0, &qword_100CBA560, IDSQueryKeyTransparencyContext_ptr);
  v34 = sub_100715DCC();
  v154 = v33;
  v35 = sub_100715DD4(a6, v34 & 1);
  v37 = v36;
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  v38 = v194;

  *&v147 = v35;
  *(&v147 + 1) = v37;
  v39 = sub_10074F59C(v193, v38, v21, v23, v26, v28, v29, v19, v147);
  sub_100014C40(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable, &unk_1009AE8A8);
  v192 = v39;
  sub_100936768();
  v40 = v161;
  v41 = v162;
  if (v162)
  {
    v153 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice(0);
    v152 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
    if (v41 >= 1)
    {
      v42 = 0;
      v43 = v40;
      v151 = v40 & 0xC000000000000001;
      v150 = (v202 + 16);
      v149 = (v202 + 8);
      do
      {
        v202 = v42;
        if (v151)
        {
          v71 = sub_100937268();
        }

        else
        {
          v71 = *(v43 + 8 * v42 + 32);
        }

        v72 = v71;
        v73 = [v71 pushTokenObject];
        v74 = [v73 rawToken];

        v191 = sub_100935EA8();
        v190 = v75;

        v76 = [v72 capabilities];
        v189 = [v72 ngmVersion];
        v188 = [v72 legacyVersion];
        v77 = [v72 KTLoggableData];
        if (v77)
        {
          v78 = v77;
          v79 = sub_100935EA8();
          v200 = v80;
          v201 = v79;
        }

        else
        {
          v200 = 0xF000000000000000;
          v201 = 0;
        }

        v81 = [v72 KTDeviceSignature];
        if (v81)
        {
          v82 = v81;
          v199 = sub_100935EA8();
          v197 = v83;
        }

        else
        {
          v199 = 0;
          v197 = 0xF000000000000000;
        }

        v84 = [v72 transparency];
        v85 = [v72 serializedLegacyPublicIdentity];
        if (v85)
        {
          v86 = v85;
          v198 = sub_100935EA8();
          v196 = v87;
        }

        else
        {
          v198 = 0;
          v196 = 0xF000000000000000;
        }

        v88 = [v72 serializedNGMDeviceIdentity];
        if (v88)
        {
          v89 = v88;
          v187 = sub_100935EA8();
          v186 = v90;
        }

        else
        {
          v187 = 0;
          v186 = 0xF000000000000000;
        }

        v91 = [v72 serializedNGMDevicePrekey];
        if (v91)
        {
          v92 = v91;
          v184 = sub_100935EA8();
          v183 = v93;
        }

        else
        {
          v184 = 0;
          v183 = 0xF000000000000000;
        }

        v94 = [v72 serializedApplicationPublicKey];
        if (v94)
        {
          v95 = v94;
          v182 = sub_100935EA8();
          v181 = v96;
        }

        else
        {
          v182 = 0;
          v181 = 0xF000000000000000;
        }

        v180 = [v72 mismatchedAccountFlag];
        v179 = [v72 ktCapableFlag];
        v97 = [v72 anonymizedSenderID];
        if (v97)
        {
          v98 = v97;
          v178 = sub_100936B38();
          v177 = v99;
        }

        else
        {
          v178 = 0;
          v177 = 0;
        }

        v176 = [v72 verifiedBusiness];
        v100 = [v72 gameCenterData];
        v171 = v100;
        v185 = v72;
        v101 = [v72 familyEndpointData];
        v168 = v101;
        sub_100014170(0, &qword_100CBA320, IDSEndpointCapabilities_ptr);
        v102 = sub_100715DCC();
        v103 = sub_100715DD4(v76, v102 & 1);
        if (v104 >> 60 == 15)
        {
          v105 = 0;
        }

        else
        {
          v105 = v103;
        }

        v174 = v105;
        v106 = 0xC000000000000000;
        if (v104 >> 60 != 15)
        {
          v106 = v104;
        }

        v173 = v106;
        sub_100014170(0, &qword_100CBA328, IDSEndpointTransparency_ptr);
        v107 = sub_100715DCC();
        v172 = sub_100715DD4(v84, v107 & 1);
        v170 = v108;
        sub_100014170(0, &qword_100CBA330, IDSGameCenterData_ptr);
        v109 = sub_100715DCC();
        v110 = sub_100715DD4(v100, v109 & 1);
        v175 = v76;
        v167 = v110;
        v166 = v111;
        sub_100014170(0, &qword_100CBA338, IDSFamilyEndpointData_ptr);
        v112 = sub_100715DCC();
        v165 = sub_100715DD4(v101, v112 & 1);
        v164 = v113;
        v114 = v201;
        v169 = v84;
        v115 = v200;
        sub_1007483B0(v201, v200);
        v116 = v199;
        sub_1007483B0(v199, v197);
        v117 = v198;
        sub_1007483B0(v198, v196);
        v118 = v187;
        v119 = v186;
        sub_1007483B0(v187, v186);
        v120 = v184;
        v121 = v183;
        sub_1007483B0(v184, v183);
        v122 = v182;
        v123 = v181;
        sub_1007483B0(v182, v181);
        v145.n128_u64[0] = v120;
        v145.n128_u64[1] = v121;
        *&v142 = v118;
        *(&v142 + 1) = v119;
        v124 = v116;
        v125 = v197;
        v126 = v117;
        v127 = v196;
        sub_100755030(v114, v115, v124, v197, v189, v188, v126, v196, v204, v142, v145, v122, v123);
        v128 = v194;

        *(&v146 + 1) = v164;
        *&v146 = v165;
        *(&v143 + 1) = v166;
        *&v143 = v167;
        *(&v141 + 1) = v177;
        *&v141 = v178;
        *(&v140 + 1) = v170;
        *&v140 = v172;
        v129 = sub_100753BE4(v193, v128, v191, v190, v174, v173, v180, v179, v140, v141, v176, v143, v146, v204);

        sub_10001C370(v122, v123);
        sub_10001C370(v120, v121);
        sub_10001C370(v118, v119);
        sub_10001C370(v198, v127);

        sub_10001C370(v199, v125);
        sub_10001C370(v201, v200);

        sub_100014C40(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice, &unk_1009AE9D4);
        sub_100936768();
        v44 = sub_10074F118();
        v203 = v44;
        v191 = v129;
        if (v44)
        {

          sub_100936CC8();
          if (*((v203 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v203 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100936D18();
          }

          sub_100936D38();
          v44 = v203;
        }

        ++v202;
        sub_10074F41C(v44);
        v45 = [v160 prefixedURI];
        v46 = sub_100936B38();
        v200 = v47;
        v201 = v46;

        v48 = [v163 prefixedURI];
        v49 = sub_100936B38();
        v198 = v50;
        v199 = v49;

        v51 = v185;
        v52 = [v185 pushTokenObject];
        v53 = [v52 rawToken];

        v197 = sub_100935EA8();
        v196 = v54;

        v55 = [v51 sessionToken];
        v56 = sub_100935EA8();
        v58 = v57;

        v59 = [v51 expireDate];
        v60 = v155;
        sub_100935FE8();

        v61 = [v51 refreshDate];
        v62 = v156;
        sub_100935FE8();

        [v51 queryTimeInterval];
        v64 = v63;
        v65 = *v150;
        v66 = v157;
        v67 = v159;
        (*v150)(v157, v60, v159);
        v68 = v158;
        v65(v158, v62, v67);
        v69 = v194;

        v144._countAndFlagsBits = v56;
        v144._object = v58;
        sub_100756E3C(v193, v69, v201, v200, v199, v198, v197, v196, v64, v144, v66, v68);
        v70 = *v149;
        (*v149)(v62, v67);
        v70(v60, v67);
        sub_100014C40(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession, &unk_1009AEC2C);
        sub_100936768();

        v42 = v202;
        v43 = v161;
      }

      while (v162 != v202);
      goto LABEL_54;
    }

    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

LABEL_54:
  v130 = v148;
  if (v148)
  {
    v131 = [v148 shortHandle];
    if (v131)
    {
      v132 = v131;
      v133 = sub_100936B38();
      v135 = v134;

      type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle(0);
      v136 = [v163 prefixedURI];
      v137 = sub_100936B38();
      v139 = v138;

      sub_100759B48(v137, v139, v133, v135);
      sub_100014C40(&qword_100CB3DD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle, &unk_1009AEE84);
      sub_100936768();

      return;
    }
  }
}

void sub_1008AEFB8(uint64_t a1, int a2, void *a3, NSObject *a4, id a5, void *a6)
{
  v7 = a5;
  v11 = [a5 prefixedURI];
  v12 = sub_100936B38();
  v14 = v13;

  v15 = sub_1008AF68C(a3, a4, v12, v14, a1);

  if (!v15)
  {
    sub_1008F460C();
    swift_allocError();
    *v54 = 7;
    swift_willThrow();
    return;
  }

  v16 = type metadata accessor for ArchiveHelper();
  sub_100014170(0, &qword_100CBA560, IDSQueryKeyTransparencyContext_ptr);
  v17 = sub_100715DCC();
  v18 = sub_100715DD4(a6, v17 & 1);
  sub_10074EF68(v18, v19);
  v20 = sub_10074F118();
  if (v20)
  {
    v21 = v20;
    v22 = v20 & 0xFFFFFFFFFFFFFF8;
    if (v20 >> 62)
    {
LABEL_25:
      v23 = sub_1009373F8();
      if (v23)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
LABEL_5:
        a6 = sub_1008EBBAC(a6);
        v69 = v24;
        v25 = 0;
        v70 = v21 & 0xC000000000000001;
        v67 = v23;
        v68 = v22;
        v66 = a6;
        v62 = v21;
        v63 = v16;
        while (1)
        {
          if (v70)
          {
            v22 = sub_100937268();
            v26 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v25 >= *(v22 + 16))
            {
              goto LABEL_24;
            }

            v22 = *(v21 + 8 * v25 + 32);

            v26 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
LABEL_23:
              __break(1u);
LABEL_24:
              __break(1u);
              goto LABEL_25;
            }
          }

          v27 = sub_100751C10();
          v29 = v27;
          v30 = v28;
          v72 = v26;
          v73 = v25;
          if (a6[2] && (v31 = sub_1008E4CC8(v27, v28, &Data.hash(into:), sub_1007BCDC0), (v32 & 1) != 0))
          {
            v33 = *(a6[7] + 8 * v31);
            sub_1007156D8(v29, v30);

            v34 = [v33 result];
            v71 = v33;
            v35 = [v33 failure];
            v36 = v34;
            v37 = 0;
          }

          else
          {

            sub_1007156D8(v29, v30);
            v35 = 0;
            v36 = 0;
            v71 = 0;
            v37 = 1;
          }

          v38 = sub_1008EBAAC(v36, v37, v35, v69);

          sub_100014170(0, &qword_100CBA328, IDSEndpointTransparency_ptr);
          a3 = v38;
          v39 = sub_100715DCC();
          v40 = sub_100715DD4(v38, v39 & 1);
          v7 = v41;

          sub_100752B0C(v40, v7);
          v42 = a3;

          a4 = sub_1009364B8();
          v43 = sub_100936ED8();
          if (os_log_type_enabled(a4, v43))
          {
            v64 = v43;
            log = a4;
            v44 = swift_slowAlloc();
            a3 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v74 = v45;
            *v44 = 136315394;
            v46 = sub_100751C10();
            v48 = v47;
            isa = sub_100935E78().super.isa;
            sub_1007156D8(v46, v48);
            v50 = [(objc_class *)isa __imHexString];

            if (!v50)
            {
              __break(1u);
              return;
            }

            v51 = sub_100936B38();
            v7 = v52;

            v53 = sub_10001273C(v51, v7, &v74);

            *(v44 + 4) = v53;
            *(v44 + 12) = 2112;
            *(v44 + 14) = v42;
            *a3 = v38;
            a4 = v42;
            _os_log_impl(&_mh_execute_header, log, v64, "Setting ktstatus for pushtoken: %s to %@", v44, 0x16u);
            sub_100013814(a3, &qword_100CB36B0, &unk_1009AD140);

            sub_100012970(v45);

            v21 = v62;
            v16 = v63;
          }

          else
          {
          }

          v25 = v73 + 1;
          v22 = v68;
          a6 = v66;
          if (v72 == v67)
          {

            return;
          }
        }
      }
    }
  }

  v55 = v7;
  v56 = sub_1009364B8();
  v57 = sub_100936EF8();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v74 = v60;
    *v58 = 136315394;
    *(v58 + 4) = sub_10001273C(a3, a4, &v74);
    *(v58 + 12) = 2112;
    *(v58 + 14) = v55;
    *v59 = v55;
    v61 = v55;
    _os_log_impl(&_mh_execute_header, v56, v57, "no devices for address %s/%@", v58, 0x16u);
    sub_100013814(v59, &qword_100CB36B0, &unk_1009AD140);

    sub_100012970(v60);
  }
}

uint64_t sub_1008AF68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100706B30(&unk_100CBA340, &unk_1009BE700);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19[-v13];
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  sub_100936128();
  v26[0] = &_swiftEmptyArrayStorage;
  v20 = v14;
  v21 = v26;
  (*((swift_isaMask & *v5) + 0x118))(a5, sub_1008EC198, v19);
  result = v26[0];
  if (!(v26[0] >> 62))
  {
    if (*((v26[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v16 = 0;
    goto LABEL_9;
  }

  v17 = v26[0];
  v18 = sub_1009373F8();
  result = v17;
  if (!v18)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v16 = sub_100937268();
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(result + 32);

LABEL_6:

LABEL_9:
    (*(v12 + 8))(v14, v11);
    return v16;
  }

  __break(1u);
  return result;
}

id sub_1008AF9CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v27 = a6;
  v13 = sub_1009364F8();
  v30 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100936528();
  v28 = *(v16 - 8);
  v29 = v16;
  __chkstk_darwin(v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = im_primary_queue();
  if (result)
  {
    v20 = result;
    v21 = swift_allocObject();
    v21[2] = a1;
    v21[3] = a2;
    v21[4] = a3;
    v21[5] = a4;
    v22 = v27;
    v21[6] = a5;
    v21[7] = v22;
    v21[8] = a7;
    aBlock[4] = sub_1008F42A8;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000154AC;
    aBlock[3] = &unk_100BEBDB8;
    v23 = _Block_copy(aBlock);
    swift_errorRetain();
    v24 = a2;

    v25 = a5;

    sub_100936508();
    v31 = &_swiftEmptyArrayStorage;
    sub_100014C40(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100706B30(&unk_100CB3550, &qword_1009AC360);
    sub_100014C88(&qword_100CB4AB0, &unk_100CB3550, &qword_1009AC360, &protocol conformance descriptor for [A]);
    sub_1009370B8();
    sub_100936F88();
    _Block_release(v23);

    (*(v30 + 8))(v15, v13);
    (*(v28 + 8))(v18, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1008AFED4@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = a2;
  v27 = a3;
  v26 = sub_100935D38();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100706B30(&qword_100CBB0D8, &qword_1009BF320);
  v6 = *(v5 - 8);
  v28 = v5;
  v29 = v6;
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  v9 = sub_100706B30(&qword_100CBA630, &qword_1009BEAB8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = sub_100706B30(&qword_100CBB0E0, &qword_1009BF328);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - v15;
  sub_100014C88(&qword_100CBA640, &qword_100CBA630, &qword_1009BEAB8, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v10 + 8))(v12, v9);
  v30 = v25;
  sub_100935D48();
  v17 = v24;
  v18 = v26;
  (*(v24 + 104))(v4, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v26);
  v19 = sub_100706B30(&qword_100CBB0E8, &qword_1009BF358);
  v20 = v27;
  v27[3] = v19;
  v20[4] = sub_1008F40E8();
  sub_100014250(v20);
  sub_100014C88(&qword_100CBB108, &qword_100CBB0E0, &qword_1009BF328, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBB110, &qword_100CBB0D8, &qword_1009BF320, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v21 = v28;
  sub_100935CD8();
  (*(v17 + 8))(v4, v18);
  (*(v29 + 8))(v8, v21);
  return (*(v14 + 8))(v16, v13);
}

void sub_1008B030C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = sub_100936038();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v16 = &v33 - v14;
  if (a1)
  {
    v35 = a3;
    (*(v10 + 16))(&v33 - v14, a5, v9, v15);
    swift_errorRetain();

    v17 = sub_1009364B8();
    v18 = sub_100936F18();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v19 = 136315650;
      *(v19 + 4) = sub_10001273C(v35, a4, &v36);
      *(v19 + 12) = 2080;
      sub_100014C40(&qword_100CB3A88, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v21 = sub_100937548();
      v23 = v22;
      (*(v10 + 8))(v16, v9);
      v24 = sub_10001273C(v21, v23, &v36);

      *(v19 + 14) = v24;
      *(v19 + 22) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v25;
      *v20 = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to save registration event for bagKey: %s completionTime: %s error: %@", v19, 0x20u);
      sub_100013814(v20, &qword_100CB36B0, &unk_1009AD140);

      swift_arrayDestroy();
    }

    else
    {

      (*(v10 + 8))(v16, v9);
    }
  }

  else
  {
    (*(v10 + 16))(v12, a5, v9, v15);

    v26 = sub_1009364B8();
    v27 = sub_100936F18();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v28 = 136315394;
      *(v28 + 4) = sub_10001273C(a3, a4, &v36);
      *(v28 + 12) = 2080;
      sub_100014C40(&qword_100CB3A88, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v29 = sub_100937548();
      v31 = v30;
      (*(v10 + 8))(v12, v9);
      v32 = sub_10001273C(v29, v31, &v36);

      *(v28 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "Successfully saved registration event for bagKey: %s completionTime: %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }
  }
}

uint64_t sub_1008B07C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v17 = a3;
  v5 = sub_100706B30(&qword_100CBA9A8, &qword_1009BED70);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_100706B30(&qword_100CBB118, &unk_1009BF360);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = sub_100706B30(&unk_100CBA340, &unk_1009BE700);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a2, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable(0);
  sub_100014C40(&qword_100CB3CD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDAddressable, &unk_1009AE8A8);
  sub_100936828();
  sub_1009367D8();
  v14 = sub_100936728();
  result = (*(v9 + 8))(v11, v8);
  if (!v3)
  {
    *v17 = v14;
  }

  return result;
}

uint64_t sub_1008B0A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100706B30(&qword_100CBA358, &qword_1009BE718);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19[-v13];
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice(0);
  sub_100936128();
  v26[0] = &_swiftEmptyArrayStorage;
  v20 = v14;
  v21 = v26;
  (*((swift_isaMask & *v5) + 0x118))(a5, sub_1008EC9EC, v19);
  result = v26[0];
  if (!(v26[0] >> 62))
  {
    if (*((v26[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v16 = 0;
    goto LABEL_9;
  }

  v17 = v26[0];
  v18 = sub_1009373F8();
  result = v17;
  if (!v18)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v16 = sub_100937268();
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(result + 32);

LABEL_6:

LABEL_9:
    (*(v12 + 8))(v14, v11);
    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1008B0D64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v58 = a4;
  v59 = a5;
  v45 = a3;
  v51 = a2;
  v65 = a6;
  v7 = sub_100706B30(&qword_100CBAD28, &qword_1009BF028);
  v8 = *(v7 - 8);
  v61 = v7;
  v62 = v8;
  __chkstk_darwin(v7);
  v56 = v42 - v9;
  v57 = sub_100706B30(&qword_100CBB018, &qword_1009BF290);
  v60 = *(v57 - 8);
  __chkstk_darwin(v57);
  v52 = v42 - v10;
  v11 = sub_100706B30(&qword_100CBB028, &qword_1009BF2C0);
  v12 = *(v11 - 8);
  v63 = v11;
  v64 = v12;
  __chkstk_darwin(v11);
  v55 = v42 - v13;
  v14 = sub_100706B30(&qword_100CBA4C0, &qword_1009BE998);
  v15 = *(v14 - 8);
  v49 = v14;
  v50 = v15;
  __chkstk_darwin(v14);
  v17 = v42 - v16;
  v18 = sub_100706B30(&qword_100CBB010, &qword_1009BF288);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v42 - v20;
  v46 = sub_100706B30(&qword_100CBB050, &qword_1009BF2C8);
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v23 = v42 - v22;
  v24 = sub_100706B30(&qword_100CBB058, &qword_1009BF2D0);
  v25 = *(v24 - 8);
  v53 = v24;
  v54 = v25;
  __chkstk_darwin(v24);
  v48 = v42 - v26;
  v44 = *a1;
  sub_100014C88(&qword_100CBB020, &qword_100CBB010, &qword_1009BF288, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v27 = *(v19 + 8);
  v42[1] = v19 + 8;
  v43 = v27;
  v27(v21, v18);
  v66 = v51;
  v67 = v45;
  sub_100935D48();
  sub_100014C88(&qword_100CBB060, &qword_100CBB050, &qword_1009BF2C8, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0, &qword_1009BE998, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v28 = v46;
  v29 = v49;
  sub_100935C68();
  (*(v50 + 8))(v17, v29);
  (*(v47 + 8))(v23, v28);
  sub_100935D58();
  swift_getKeyPath();
  v30 = v52;
  sub_100935C78();

  v43(v21, v18);
  v66 = v58;
  v67 = v59;
  v31 = v56;
  sub_100935D48();
  sub_100014C88(&qword_100CBB048, &qword_100CBB018, &qword_1009BF290, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBAD38, &qword_100CBAD28, &qword_1009BF028, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_1008EFEF8();
  v32 = v55;
  v33 = v57;
  v34 = v61;
  sub_100935C68();
  (*(v62 + 8))(v31, v34);
  (*(v60 + 8))(v30, v33);
  v35 = sub_100706B30(&qword_100CBB068, &qword_1009BF300);
  v36 = v65;
  v65[3] = v35;
  v36[4] = sub_1008F3D34();
  sub_100014250(v36);
  sub_100014C88(&qword_100CBB088, &qword_100CBB058, &qword_1009BF2D0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  sub_100014C88(&qword_100CBB090, &qword_100CBB028, &qword_1009BF2C0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v37 = v48;
  v38 = v32;
  v39 = v53;
  v40 = v63;
  sub_100935CF8();
  (*(v64 + 8))(v38, v40);
  return (*(v54 + 8))(v37, v39);
}

uint64_t sub_1008B1520(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v17 = a3;
  v5 = sub_100706B30(&qword_100CBABB0, &qword_1009BEF50);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_100706B30(&qword_100CBABB8, &unk_1009BEF58);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = sub_100706B30(&qword_100CBA358, &qword_1009BE718);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a2, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice(0);
  sub_100014C40(&unk_100CBABC0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice, &unk_1009AE9D4);
  sub_100936828();
  sub_1009367D8();
  v14 = sub_100936728();
  result = (*(v9 + 8))(v11, v8);
  if (!v3)
  {
    *v17 = v14;
  }

  return result;
}

uint64_t sub_1008B1780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100706B30(&qword_100CBA358, &qword_1009BE718);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-v9];
  v18 = a1;
  v19 = a2;
  v20[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDDevice(0);
  sub_100936128();
  v20[0] = &_swiftEmptyArrayStorage;
  v16 = v10;
  v17 = v20;
  (*((swift_isaMask & *v3) + 0x118))(a3, sub_1008F508C, v15);
  result = v20[0];
  if (!(v20[0] >> 62))
  {
    if (*((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v12 = 0;
    goto LABEL_9;
  }

  v13 = v20[0];
  v14 = sub_1009373F8();
  result = v13;
  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = sub_100937268();
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(result + 32);

LABEL_6:

LABEL_9:
    (*(v8 + 8))(v10, v7);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1008B1AAC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v5 = sub_100706B30(&qword_100CBAD28, &qword_1009BF028);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_100706B30(&qword_100CBB010, &qword_1009BF288);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_100706B30(&qword_100CBB018, &qword_1009BF290);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_100014C88(&qword_100CBB020, &qword_100CBB010, &qword_1009BF288, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v10 + 8))(v12, v9);
  v23 = v19;
  v24 = v20;
  sub_100935D48();
  a4[3] = sub_100706B30(&qword_100CBB028, &qword_1009BF2C0);
  a4[4] = sub_1008F3BF8();
  sub_100014250(a4);
  sub_100014C88(&qword_100CBB048, &qword_100CBB018, &qword_1009BF290, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBAD38, &qword_100CBAD28, &qword_1009BF028, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_1008EFEF8();
  v17 = v21;
  sub_100935C68();
  (*(v22 + 8))(v8, v17);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1008B1E1C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>, unsigned __int8 a10, uint64_t a11)
{
  v117 = a8;
  v114 = a7;
  v113 = a6;
  v101 = a5;
  v100 = a4;
  v150 = a3;
  v142 = a2;
  v137 = a9;
  v128 = a11;
  v122 = a10;
  v129 = sub_100935D38();
  v126 = *(v129 - 8);
  __chkstk_darwin(v129);
  v123 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_100706B30(&qword_100CBA628, &qword_1009BEAB0);
  v134 = *(v131 - 8);
  __chkstk_darwin(v131);
  v121 = &v90 - v13;
  v124 = sub_100706B30(&qword_100CBAA30, &qword_1009BEE50);
  v130 = *(v124 - 8);
  __chkstk_darwin(v124);
  v118 = &v90 - v14;
  v132 = sub_100706B30(&qword_100CBAA40, &qword_1009BEE80);
  v133 = *(v132 - 8);
  __chkstk_darwin(v132);
  v119 = &v90 - v15;
  v125 = sub_100706B30(&qword_100CBA430, &qword_1009BE910);
  v127 = *(v125 - 8);
  __chkstk_darwin(v125);
  v145 = &v90 - v16;
  v135 = sub_100706B30(&qword_100CBAF98, &qword_1009BF238);
  v136 = *(v135 - 8);
  __chkstk_darwin(v135);
  v120 = &v90 - v17;
  v111 = sub_100706B30(&qword_100CBAFA0, &qword_1009BF240);
  v112 = *(v111 - 8);
  __chkstk_darwin(v111);
  v106 = &v90 - v18;
  v107 = sub_100706B30(&qword_100CBA6C0, &qword_1009BEB20);
  v108 = *(v107 - 8);
  __chkstk_darwin(v107);
  v104 = &v90 - v19;
  v109 = sub_100706B30(&qword_100CBB098, &qword_1009BF308);
  v110 = *(v109 - 8);
  __chkstk_darwin(v109);
  v105 = &v90 - v20;
  v148 = sub_100706B30(&qword_100CBA4C0, &qword_1009BE998);
  v154 = *(v148 - 8);
  __chkstk_darwin(v148);
  v95 = &v90 - v21;
  v22 = sub_100706B30(&qword_100CBAA28, &qword_1009BEE48);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v90 - v24;
  v26 = sub_100706B30(&qword_100CBAF28, &qword_1009BF1E8);
  v149 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v90 - v27;
  v97 = sub_100706B30(&qword_100CBAF30, &qword_1009BF1F0);
  v151 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v94 = &v90 - v31;
  v98 = sub_100706B30(&qword_100CBAF38, &qword_1009BF1F8);
  v99 = *(v98 - 8);
  __chkstk_darwin(v98);
  v141 = &v90 - v32;
  v102 = sub_100706B30(&qword_100CBAF88, &qword_1009BF230);
  v103 = *(v102 - 8);
  __chkstk_darwin(v102);
  v143 = &v90 - v33;
  v115 = sub_100706B30(&qword_100CBB0A0, &qword_1009BF310);
  v116 = *(v115 - 8);
  __chkstk_darwin(v115);
  v144 = &v90 - v34;
  v153 = *a1;
  v35 = v25;
  v146 = sub_100014C88(&qword_100CBAA38, &qword_100CBAA28, &qword_1009BEE48, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  v152 = v22;
  sub_100935C78();

  v36 = *(v23 + 8);
  v138 = v23 + 8;
  v147 = v36;
  v36(v25, v22);
  v155 = v142;
  v156 = v150;
  v37 = v95;
  sub_100935D48();
  v142 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v139 = sub_100014C88(&qword_100CBAF40, &qword_100CBAF28, &qword_1009BF1E8, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v150 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  v38 = sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0, &qword_1009BE998, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v39 = v148;
  v93 = v38;
  sub_100935C68();
  v40 = v154[1];
  ++v154;
  v140 = v40;
  v40(v37, v39);
  v42 = v149 + 8;
  v41 = *(v149 + 8);
  v41(v28, v26);
  v92 = v41;
  v149 = v42;
  v43 = v35;
  v44 = v152;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v147(v43, v44);
  v155 = v100;
  v156 = v101;
  sub_100935D48();
  v45 = v96;
  v90 = v26;
  v46 = v148;
  sub_100935C68();
  v47 = v37;
  v140(v37, v46);
  v48 = v28;
  v41(v28, v26);
  sub_100014C88(&qword_100CBAF48, &qword_100CBAF30, &qword_1009BF1F0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v49 = v94;
  v50 = v97;
  sub_100935CF8();
  v51 = *(v151 + 8);
  v151 += 8;
  v51(v45, v50);
  v51(v49, v50);
  v52 = v43;
  v53 = v152;
  sub_100935D58();
  swift_getKeyPath();
  v91 = v52;
  sub_100935C78();

  v54 = v147;
  v147(v52, v53);
  v155 = v113;
  v156 = v114;
  sub_100935D48();
  v55 = v90;
  v56 = v148;
  sub_100935C68();
  v140(v47, v56);
  v92(v48, v55);
  v154 = &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>;
  sub_100014C88(&qword_100CBAF78, &qword_100CBAF38, &qword_1009BF1F8, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  v57 = v141;
  v58 = v98;
  sub_100935CF8();
  v51(v49, v50);
  (*(v99 + 8))(v57, v58);
  v155 = v117;
  sub_100706B30(&qword_100CBA6D8, &qword_1009BEB38);
  v59 = v104;
  sub_100935D48();
  v60 = v91;
  v61 = v152;
  sub_100935D58();
  swift_getKeyPath();
  v62 = v106;
  sub_100935C78();

  v54(v60, v61);
  sub_100014C88(&qword_100CBA6E8, &qword_100CBA6C0, &qword_1009BEB20, v150);
  sub_100014C88(&qword_100CBAFB8, &qword_100CBAFA0, &qword_1009BF240, v142);
  sub_100014C88(&qword_100CBA6F8, &qword_100CBA6D8, &qword_1009BEB38, &protocol conformance descriptor for [A]);
  sub_1008EFEF8();
  v63 = v105;
  v64 = v59;
  v65 = v107;
  v66 = v111;
  sub_100935CA8();
  (*(v112 + 8))(v62, v66);
  (*(v108 + 8))(v64, v65);
  sub_100014C88(&qword_100CBAFC0, &qword_100CBAF88, &qword_1009BF230, v154);
  sub_100014C88(&qword_100CBB0A8, &qword_100CBB098, &qword_1009BF308, &protocol conformance descriptor for PredicateExpressions.SequenceContains<A, B>);
  v67 = v143;
  v68 = v102;
  v69 = v109;
  sub_100935CF8();
  (*(v110 + 8))(v63, v69);
  (*(v103 + 8))(v67, v68);
  LOBYTE(v155) = v122;
  sub_100935D48();
  v70 = v152;
  sub_100935D58();
  swift_getKeyPath();
  v71 = v118;
  sub_100935C78();

  v147(v60, v70);
  sub_100936038();
  v72 = v121;
  sub_100935D48();
  v73 = v126;
  v74 = v123;
  v75 = v129;
  (*(v126 + 104))(v123, enum case for PredicateExpressions.ComparisonOperator.greaterThan(_:), v129);
  sub_100014C88(&qword_100CBAA60, &qword_100CBAA30, &qword_1009BEE50, v142);
  sub_100014C88(&qword_100CBA688, &qword_100CBA628, &qword_1009BEAB0, v150);
  sub_100014C40(&qword_100CB4FD0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v76 = v119;
  v77 = v72;
  v78 = v124;
  v79 = v131;
  sub_100935CD8();
  (*(v73 + 8))(v74, v75);
  (*(v134 + 8))(v77, v79);
  (*(v130 + 8))(v71, v78);
  sub_100014C88(&qword_100CBA710, &qword_100CBA430, &qword_1009BE910, v150);
  sub_100014C88(&qword_100CBAF80, &qword_100CBAA40, &qword_1009BEE80, &protocol conformance descriptor for PredicateExpressions.Comparison<A, B>);
  v80 = v120;
  v81 = v145;
  v82 = v125;
  v83 = v132;
  sub_100935D08();
  (*(v133 + 8))(v76, v83);
  (*(v127 + 8))(v81, v82);
  v84 = sub_100706B30(&qword_100CBB0B0, &qword_1009BF318);
  v85 = v137;
  v137[3] = v84;
  v85[4] = sub_1008F3EFC();
  sub_100014250(v85);
  sub_100014C88(&qword_100CBB0D0, &qword_100CBB0A0, &qword_1009BF310, v154);
  sub_100014C88(&qword_100CBB008, &qword_100CBAF98, &qword_1009BF238, &protocol conformance descriptor for PredicateExpressions.Disjunction<A, B>);
  v86 = v144;
  v87 = v115;
  v88 = v135;
  sub_100935CF8();
  (*(v136 + 8))(v80, v88);
  return (*(v116 + 8))(v86, v87);
}

uint64_t sub_1008B32E0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, void *a10, unsigned __int8 a11, uint64_t a12)
{
  v113 = a8;
  v110 = a7;
  v109 = a6;
  v96 = a5;
  v95 = a4;
  v141 = a3;
  v149 = a2;
  v133 = a9;
  v124 = a12;
  v118 = a11;
  v112 = a10;
  v125 = sub_100935D38();
  v122 = *(v125 - 8);
  __chkstk_darwin(v125);
  v119 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_100706B30(&qword_100CBA628, &qword_1009BEAB0);
  v130 = *(v127 - 8);
  __chkstk_darwin(v127);
  v117 = &v88 - v14;
  v120 = sub_100706B30(&qword_100CBAA30, &qword_1009BEE50);
  v126 = *(v120 - 8);
  __chkstk_darwin(v120);
  v114 = &v88 - v15;
  v128 = sub_100706B30(&qword_100CBAA40, &qword_1009BEE80);
  v129 = *(v128 - 8);
  __chkstk_darwin(v128);
  v115 = &v88 - v16;
  v121 = sub_100706B30(&qword_100CBA430, &qword_1009BE910);
  v123 = *(v121 - 8);
  __chkstk_darwin(v121);
  v144 = &v88 - v17;
  v131 = sub_100706B30(&qword_100CBAF98, &qword_1009BF238);
  v132 = *(v131 - 8);
  __chkstk_darwin(v131);
  v116 = &v88 - v18;
  v106 = sub_100706B30(&qword_100CBAD28, &qword_1009BF028);
  v107 = *(v106 - 8);
  __chkstk_darwin(v106);
  v101 = &v88 - v19;
  v102 = sub_100706B30(&qword_100CBAFA0, &qword_1009BF240);
  v103 = *(v102 - 8);
  __chkstk_darwin(v102);
  v99 = &v88 - v20;
  v104 = sub_100706B30(&qword_100CBAFA8, &qword_1009BF248);
  v105 = *(v104 - 8);
  __chkstk_darwin(v104);
  v100 = &v88 - v21;
  v147 = sub_100706B30(&qword_100CBA4C0, &qword_1009BE998);
  v152 = *(v147 - 8);
  __chkstk_darwin(v147);
  v23 = &v88 - v22;
  v24 = sub_100706B30(&qword_100CBAA28, &qword_1009BEE48);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v88 - v26;
  v139 = sub_100706B30(&qword_100CBAF28, &qword_1009BF1E8);
  v151 = *(v139 - 8);
  __chkstk_darwin(v139);
  v29 = &v88 - v28;
  v92 = sub_100706B30(&qword_100CBAF30, &qword_1009BF1F0);
  v148 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v90 = &v88 - v32;
  v93 = sub_100706B30(&qword_100CBAF38, &qword_1009BF1F8);
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v140 = &v88 - v33;
  v97 = sub_100706B30(&qword_100CBAF88, &qword_1009BF230);
  v98 = *(v97 - 8);
  __chkstk_darwin(v97);
  v142 = &v88 - v34;
  v108 = sub_100706B30(&qword_100CBAFB0, &qword_1009BF250);
  v111 = *(v108 - 8);
  __chkstk_darwin(v108);
  v143 = &v88 - v35;
  v145 = *a1;
  v36 = sub_100014C88(&qword_100CBAA38, &qword_100CBAA28, &qword_1009BEE48, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v37 = *(v25 + 8);
  v150 = v25 + 8;
  v146 = v37;
  v37(v27, v24);
  v153 = v149;
  v154 = v141;
  v38 = v23;
  sub_100935D48();
  v141 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v136 = sub_100014C88(&qword_100CBAF40, &qword_100CBAF28, &qword_1009BF1E8, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v149 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  v138 = sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0, &qword_1009BE998, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v39 = v139;
  v40 = v147;
  sub_100935C68();
  v41 = v152[1];
  ++v152;
  v137 = v41;
  v41(v23, v40);
  v42 = *(v151 + 8);
  v151 += 8;
  v42(v29, v39);
  v89 = v42;
  v134 = v24;
  v135 = v36;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v146(v27, v24);
  v153 = v95;
  v154 = v96;
  sub_100935D48();
  v43 = v91;
  v44 = v147;
  sub_100935C68();
  v137(v23, v44);
  v45 = v29;
  v42(v29, v39);
  v96 = &protocol conformance descriptor for PredicateExpressions.Equal<A, B>;
  v95 = sub_100014C88(&qword_100CBAF48, &qword_100CBAF30, &qword_1009BF1F0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v46 = v90;
  v47 = v92;
  sub_100935CF8();
  v48 = *(v148 + 8);
  v148 += 8;
  v48(v43, v47);
  v48(v46, v47);
  v49 = v27;
  v50 = v134;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v51 = v146;
  v146(v27, v50);
  v153 = v109;
  v154 = v110;
  sub_100935D48();
  v52 = v139;
  v53 = v147;
  sub_100935C68();
  v137(v38, v53);
  v89(v45, v52);
  v152 = &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>;
  sub_100014C88(&qword_100CBAF78, &qword_100CBAF38, &qword_1009BF1F8, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  v54 = v140;
  v55 = v93;
  sub_100935CF8();
  v48(v46, v47);
  (*(v94 + 8))(v54, v55);
  v56 = v49;
  v57 = v134;
  sub_100935D58();
  swift_getKeyPath();
  v58 = v99;
  sub_100935C78();

  v51(v56, v57);
  v153 = v113;
  v154 = v112;
  v59 = v101;
  sub_100935D48();
  sub_100014C88(&qword_100CBAFB8, &qword_100CBAFA0, &qword_1009BF240, v141);
  sub_100014C88(&qword_100CBAD38, &qword_100CBAD28, &qword_1009BF028, v149);
  sub_1008EFEF8();
  v60 = v100;
  v61 = v58;
  v62 = v59;
  v63 = v102;
  v64 = v106;
  sub_100935C68();
  (*(v107 + 8))(v62, v64);
  (*(v103 + 8))(v61, v63);
  sub_100014C88(&qword_100CBAFC0, &qword_100CBAF88, &qword_1009BF230, v152);
  sub_100014C88(&qword_100CBAFC8, &qword_100CBAFA8, &qword_1009BF248, v96);
  v65 = v142;
  v66 = v97;
  v67 = v104;
  sub_100935CF8();
  (*(v105 + 8))(v60, v67);
  (*(v98 + 8))(v65, v66);
  LOBYTE(v153) = v118;
  sub_100935D48();
  sub_100935D58();
  swift_getKeyPath();
  v68 = v114;
  sub_100935C78();

  v146(v56, v57);
  sub_100936038();
  v69 = v117;
  sub_100935D48();
  v70 = v122;
  v71 = v119;
  v72 = v125;
  (*(v122 + 104))(v119, enum case for PredicateExpressions.ComparisonOperator.greaterThan(_:), v125);
  sub_100014C88(&qword_100CBAA60, &qword_100CBAA30, &qword_1009BEE50, v141);
  sub_100014C88(&qword_100CBA688, &qword_100CBA628, &qword_1009BEAB0, v149);
  sub_100014C40(&qword_100CB4FD0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v73 = v115;
  v74 = v68;
  v75 = v69;
  v76 = v120;
  v77 = v127;
  sub_100935CD8();
  (*(v70 + 8))(v71, v72);
  (*(v130 + 8))(v75, v77);
  (*(v126 + 8))(v74, v76);
  sub_100014C88(&qword_100CBA710, &qword_100CBA430, &qword_1009BE910, v149);
  sub_100014C88(&qword_100CBAF80, &qword_100CBAA40, &qword_1009BEE80, &protocol conformance descriptor for PredicateExpressions.Comparison<A, B>);
  v78 = v116;
  v79 = v144;
  v80 = v121;
  v81 = v128;
  sub_100935D08();
  (*(v129 + 8))(v73, v81);
  (*(v123 + 8))(v79, v80);
  v82 = sub_100706B30(&qword_100CBAFD0, &qword_1009BF280);
  v83 = v133;
  v133[3] = v82;
  v83[4] = sub_1008F3918();
  sub_100014250(v83);
  sub_100014C88(&qword_100CBB000, &qword_100CBAFB0, &qword_1009BF250, v152);
  sub_100014C88(&qword_100CBB008, &qword_100CBAF98, &qword_1009BF238, &protocol conformance descriptor for PredicateExpressions.Disjunction<A, B>);
  v84 = v143;
  v85 = v108;
  v86 = v131;
  sub_100935CF8();
  (*(v132 + 8))(v78, v86);
  return (*(v111 + 8))(v84, v85);
}

uint64_t sub_1008B475C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v17 = a3;
  v5 = sub_100706B30(&qword_100CBA9B0, &qword_1009BED78);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_100706B30(&qword_100CBA9B8, &qword_1009BED80);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = sub_100706B30(&qword_100CBA350, &qword_1009BE710);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a2, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
  sub_100014C40(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession, &unk_1009AEC2C);
  sub_100936828();
  sub_1009367D8();
  v14 = sub_100936728();
  result = (*(v9 + 8))(v11, v8);
  if (!v3)
  {
    *v17 = v14;
  }

  return result;
}

uint64_t sub_1008B49BC@<X0>(uint64_t *a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v58 = a6;
  v59 = a7;
  v55 = a5;
  v54 = a4;
  v65 = a2;
  v66 = a3;
  v60 = a8;
  v9 = sub_100706B30(&qword_100CBA4C0, &qword_1009BE998);
  v10 = *(v9 - 8);
  v72 = v9;
  v73 = v10;
  __chkstk_darwin(v9);
  v12 = &v48 - v11;
  v13 = sub_100706B30(&qword_100CBAA28, &qword_1009BEE48);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v48 - v15;
  v61 = &v48 - v15;
  v17 = sub_100706B30(&qword_100CBAF28, &qword_1009BF1E8);
  v51 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v48 - v18;
  v53 = sub_100706B30(&qword_100CBAF30, &qword_1009BF1F0);
  v74 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v69 = &v48 - v22;
  v23 = sub_100706B30(&qword_100CBAF38, &qword_1009BF1F8);
  v24 = *(v23 - 8);
  v56 = v23;
  v57 = v24;
  __chkstk_darwin(v23);
  v71 = &v48 - v25;
  v68 = *a1;
  v63 = sub_100014C88(&qword_100CBAA38, &qword_100CBAA28, &qword_1009BEE48, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  v62 = v13;
  sub_100935C78();

  v67 = *(v14 + 8);
  v70 = v14 + 8;
  v67(v16, v13);
  v75 = v65;
  v76 = v66;
  sub_100935D48();
  v26 = sub_100014C88(&qword_100CBAF40, &qword_100CBAF28, &qword_1009BF1E8, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v66 = sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0, &qword_1009BE998, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v64 = v17;
  v27 = v72;
  v50 = v26;
  sub_100935C68();
  v28 = v73 + 8;
  v29 = *(v73 + 8);
  v29(v12, v27);
  v49 = v29;
  v73 = v28;
  v65 = *(v51 + 8);
  v65(v19, v17);
  v30 = v61;
  v31 = v62;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v67(v30, v31);
  v75 = v54;
  v76 = v55;
  v32 = v12;
  sub_100935D48();
  v33 = v52;
  v34 = v64;
  v35 = v72;
  sub_100935C68();
  v29(v32, v35);
  v65(v19, v34);
  v55 = sub_100014C88(&qword_100CBAF48, &qword_100CBAF30, &qword_1009BF1F0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v36 = v69;
  v37 = v53;
  sub_100935CF8();
  v38 = *(v74 + 8);
  v54 = v38;
  v74 += 8;
  v38(v33, v37);
  v38(v36, v37);
  v39 = v61;
  v40 = v62;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v67(v39, v40);
  v75 = v58;
  v76 = v59;
  sub_100935D48();
  v41 = v64;
  v42 = v72;
  sub_100935C68();
  v49(v32, v42);
  v65(v19, v41);
  v43 = sub_100706B30(&qword_100CBAF88, &qword_1009BF230);
  v44 = v60;
  v60[3] = v43;
  v44[4] = sub_1008F388C();
  sub_100014250(v44);
  sub_100014C88(&qword_100CBAF78, &qword_100CBAF38, &qword_1009BF1F8, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  v45 = v71;
  v46 = v56;
  sub_100935CF8();
  v54(v36, v37);
  return (*(v57 + 8))(v45, v46);
}

void *sub_1008B51EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100706B30(&qword_100CBA350, &qword_1009BE710);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17[-v13];
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
  sub_100936128();
  v24[0] = &_swiftEmptyArrayStorage;
  v18 = v24;
  v19 = v14;
  (*((swift_isaMask & *v5) + 0x118))(a5, sub_1008F4D58, v17);
  v15 = v24[0];
  (*(v12 + 8))(v14, v11);
  return v15;
}

uint64_t sub_1008B5498@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v42 = a4;
  v43 = a5;
  v38 = a2;
  v39 = a3;
  v44 = a6;
  v45 = sub_100706B30(&qword_100CBA4C0, &qword_1009BE998);
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v8 = v33 - v7;
  v9 = sub_100706B30(&qword_100CBAA28, &qword_1009BEE48);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v33 - v11;
  v13 = sub_100706B30(&qword_100CBAF28, &qword_1009BF1E8);
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v33 - v14;
  v16 = sub_100706B30(&qword_100CBAF30, &qword_1009BF1F0);
  v17 = *(v16 - 8);
  v40 = v16;
  v41 = v17;
  __chkstk_darwin(v16);
  v37 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v35 = *a1;
  v36 = v33 - v20;
  sub_100014C88(&qword_100CBAA38, &qword_100CBAA28, &qword_1009BEE48, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v21 = *(v10 + 8);
  v33[1] = v10 + 8;
  v34 = v21;
  v21(v12, v9);
  v48 = v38;
  v49 = v39;
  sub_100935D48();
  v39 = sub_100014C88(&qword_100CBAF40, &qword_100CBAF28, &qword_1009BF1E8, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0, &qword_1009BE998, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v22 = v45;
  sub_100935C68();
  v23 = *(v47 + 8);
  v47 += 8;
  v23(v8, v22);
  v24 = *(v46 + 8);
  v46 += 8;
  v24(v15, v13);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v34(v12, v9);
  v48 = v42;
  v49 = v43;
  sub_100935D48();
  v25 = v37;
  v26 = v45;
  sub_100935C68();
  v23(v8, v26);
  v24(v15, v13);
  v27 = sub_100706B30(&qword_100CBAF38, &qword_1009BF1F8);
  v28 = v44;
  v44[3] = v27;
  v28[4] = sub_1008F36CC();
  sub_100014250(v28);
  sub_100014C88(&qword_100CBAF48, &qword_100CBAF30, &qword_1009BF1F0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v29 = v36;
  v30 = v40;
  sub_100935CF8();
  v31 = *(v41 + 8);
  v31(v25, v30);
  return (v31)(v29, v30);
}

void *sub_1008B5A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100706B30(&qword_100CBA350, &qword_1009BE710);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-v9];
  v16 = a1;
  v17 = a2;
  v18[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
  sub_100936128();
  v18[0] = &_swiftEmptyArrayStorage;
  v14 = v18;
  v15 = v10;
  (*((swift_isaMask & *v3) + 0x118))(a3, sub_1008ECA54, v13);
  v11 = v18[0];
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t sub_1008B5CC8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v17 = a2;
  v5 = sub_100706B30(&qword_100CBA9B0, &qword_1009BED78);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_100706B30(&qword_100CBA9B8, &qword_1009BED80);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = sub_100706B30(&qword_100CBA350, &qword_1009BE710);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a3, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
  sub_100014C40(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession, &unk_1009AEC2C);
  sub_100936828();
  v14 = sub_100936728();
  result = (*(v9 + 8))(v11, v8);
  if (!v3)
  {
    *v17 = v14;
  }

  return result;
}

void *sub_1008B5F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = sub_100706B30(&qword_100CBA350, &qword_1009BE710);
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v19 - v12;
  v19 = sub_100936038();
  v14 = *(v19 - 8);
  __chkstk_darwin(v19);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100936028();
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = v16;
  v29[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
  sub_100936128();
  v29[0] = &_swiftEmptyArrayStorage;
  v22 = v29;
  v23 = v13;
  (*((swift_isaMask & *v5) + 0x118))(a5, sub_1008F4D58, v21);
  v17 = v29[0];
  (*(v11 + 8))(v13, v20);
  (*(v14 + 8))(v16, v19);
  return v17;
}

uint64_t sub_1008B625C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v76 = a6;
  v68 = a5;
  v67 = a4;
  v61 = a3;
  v64 = a2;
  v82 = a7;
  v8 = sub_100935D38();
  v74 = *(v8 - 8);
  v75 = v8;
  __chkstk_darwin(v8);
  v72 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100706B30(&qword_100CBA628, &qword_1009BEAB0);
  v11 = *(v10 - 8);
  v78 = v10;
  v79 = v11;
  __chkstk_darwin(v10);
  v71 = v58 - v12;
  v73 = sub_100706B30(&qword_100CBAA30, &qword_1009BEE50);
  v77 = *(v73 - 8);
  __chkstk_darwin(v73);
  v65 = v58 - v13;
  v14 = sub_100706B30(&qword_100CBAA40, &qword_1009BEE80);
  v15 = *(v14 - 8);
  v80 = v14;
  v81 = v15;
  __chkstk_darwin(v14);
  v70 = v58 - v16;
  v86 = sub_100706B30(&qword_100CBA4C0, &qword_1009BE998);
  v89 = *(v86 - 8);
  __chkstk_darwin(v86);
  v18 = v58 - v17;
  v19 = sub_100706B30(&qword_100CBAA28, &qword_1009BEE48);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v58 - v21;
  v23 = sub_100706B30(&qword_100CBAF28, &qword_1009BF1E8);
  v88 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = v58 - v24;
  v62 = sub_100706B30(&qword_100CBAF30, &qword_1009BF1F0);
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v59 = v58 - v28;
  v66 = sub_100706B30(&qword_100CBAF38, &qword_1009BF1F8);
  v69 = *(v66 - 8);
  __chkstk_darwin(v66);
  v87 = v58 - v29;
  v30 = *a1;
  v31 = sub_100014C88(&qword_100CBAA38, &qword_100CBAA28, &qword_1009BEE48, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  v58[1] = v30;
  v83 = v31;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v32 = *(v20 + 8);
  v84 = v20 + 8;
  v85 = v32;
  v32(v22, v19);
  v90 = v64;
  v91 = v61;
  sub_100935D48();
  v64 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v58[0] = sub_100014C88(&qword_100CBAF40, &qword_100CBAF28, &qword_1009BF1E8, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v61 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0, &qword_1009BE998, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v33 = v23;
  v34 = v86;
  sub_100935C68();
  v35 = *(v89 + 8);
  v89 += 8;
  v35(v18, v34);
  v36 = *(v88 + 8);
  v88 += 8;
  v36(v25, v33);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v85(v22, v19);
  v90 = v67;
  v91 = v68;
  v37 = v18;
  sub_100935D48();
  v38 = v60;
  v39 = v86;
  sub_100935C68();
  v35(v37, v39);
  v36(v25, v33);
  sub_100014C88(&qword_100CBAF48, &qword_100CBAF30, &qword_1009BF1F0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v40 = v59;
  v41 = v62;
  sub_100935CF8();
  v42 = *(v63 + 8);
  v42(v38, v41);
  v42(v40, v41);
  sub_100935D58();
  swift_getKeyPath();
  v43 = v65;
  sub_100935C78();

  v85(v22, v19);
  sub_100936038();
  v44 = v71;
  sub_100935D48();
  v46 = v74;
  v45 = v75;
  v47 = v72;
  (*(v74 + 104))(v72, enum case for PredicateExpressions.ComparisonOperator.greaterThan(_:), v75);
  sub_100014C88(&qword_100CBAA60, &qword_100CBAA30, &qword_1009BEE50, v64);
  sub_100014C88(&qword_100CBA688, &qword_100CBA628, &qword_1009BEAB0, v61);
  sub_100014C40(&qword_100CB4FD0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v48 = v70;
  v49 = v44;
  v50 = v73;
  v51 = v78;
  sub_100935CD8();
  (*(v46 + 8))(v47, v45);
  (*(v79 + 8))(v49, v51);
  (*(v77 + 8))(v43, v50);
  v52 = sub_100706B30(&qword_100CBAF50, &qword_1009BF228);
  v53 = v82;
  v82[3] = v52;
  v53[4] = sub_1008F3640();
  sub_100014250(v53);
  sub_100014C88(&qword_100CBAF78, &qword_100CBAF38, &qword_1009BF1F8, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  sub_100014C88(&qword_100CBAF80, &qword_100CBAA40, &qword_1009BEE80, &protocol conformance descriptor for PredicateExpressions.Comparison<A, B>);
  v54 = v87;
  v55 = v66;
  v56 = v80;
  sub_100935CF8();
  (*(v81 + 8))(v48, v56);
  return (*(v69 + 8))(v54, v55);
}

uint64_t sub_1008B6DB0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CBA9B0, &qword_1009BED78);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100706B30(&qword_100CBA9B8, &qword_1009BED80);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - v9;
  v11 = sub_100706B30(&qword_100CBA350, &qword_1009BE710);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession(0);
  sub_100014C40(&unk_100CBA9C0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSession, &unk_1009AEC2C);
  sub_100936828();
  v12 = sub_100936728();
  result = (*(v8 + 8))(v10, v7);
  if (!v2)
  {
    *a2 = v12;
  }

  return result;
}

void *sub_1008B6FBC(uint64_t a1, uint64_t a2)
{
  v5 = &_swiftEmptyArrayStorage;
  v4[2] = &v5;
  (*((swift_isaMask & *v2) + 0x118))(a1, a2, v4);
  return v5;
}

uint64_t sub_1008B7144(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&qword_100CBA508, &qword_1009BE9B8);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100706B30(&unk_100CBA510, &qword_1009BE9C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - v9;
  v11 = sub_100706B30(&qword_100CBA380, qword_1009BE740);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle(0);
  sub_100014C40(&qword_100CB3DD0, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDShortHandle, &unk_1009AEE84);
  sub_100936828();
  v12 = sub_100936728();
  result = (*(v8 + 8))(v10, v7);
  if (!v2)
  {
    *a2 = v12;
  }

  return result;
}

uint64_t sub_1008B7350(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v23 = sub_100706B30(&qword_100CBA360, &qword_1009BE720);
  v11 = *(v23 - 8);
  v12 = __chkstk_darwin(v23);
  v14 = &v22 - v13;
  v15 = [a3 prefixedURI];
  v16 = sub_100936B38();
  v18 = v17;

  v27 = a4;
  v28 = a5;
  v29 = v16;
  v30 = v18;
  v31 = a1;
  v32 = a2;
  v34 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity(0);
  sub_100936128();

  v25 = v14;
  v26 = &v33;
  v19 = swift_isaMask & *v5;
  v33 = xmmword_1009AD8D0;
  (*(v19 + 280))(0, sub_1008ECAE8, v24);
  v20 = v33;
  sub_1007483B0(v33, *(&v33 + 1));
  sub_10001C370(v20, *(&v20 + 1));
  (*(v11 + 8))(v14, v23);
  return v20;
}

uint64_t sub_1008B7650@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v68 = a6;
  v69 = a7;
  v62 = a5;
  v61 = a4;
  v59 = a3;
  v58 = a2;
  v75 = a8;
  v9 = sub_100706B30(&qword_100CBAD28, &qword_1009BF028);
  v10 = *(v9 - 8);
  v71 = v9;
  v72 = v10;
  __chkstk_darwin(v9);
  v66 = v52 - v11;
  v67 = sub_100706B30(&qword_100CBAED0, &qword_1009BF178);
  v70 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = v52 - v12;
  v13 = sub_100706B30(&qword_100CBAED8, &qword_1009BF180);
  v14 = *(v13 - 8);
  v73 = v13;
  v74 = v14;
  __chkstk_darwin(v13);
  v65 = v52 - v15;
  v16 = sub_100706B30(&qword_100CBA4C0, &qword_1009BE998);
  v81 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v52 - v17;
  v19 = sub_100706B30(&qword_100CBAE58, &qword_1009BF108);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v52 - v21;
  v23 = sub_100706B30(&qword_100CBAE60, &qword_1009BF110);
  v80 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = v52 - v24;
  v56 = sub_100706B30(&qword_100CBAE68, &qword_1009BF118);
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v53 = v52 - v28;
  v60 = sub_100706B30(&qword_100CBAEE0, &qword_1009BF188);
  v63 = *(v60 - 8);
  __chkstk_darwin(v60);
  v55 = v52 - v29;
  v79 = *a1;
  v76 = sub_100014C88(&qword_100CBAE70, &qword_100CBAE58, &qword_1009BF108, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v30 = *(v20 + 8);
  v77 = v20 + 8;
  v78 = v30;
  v30(v22, v19);
  v82 = v58;
  v83 = v59;
  v31 = v18;
  sub_100935D48();
  v59 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v52[1] = sub_100014C88(&qword_100CBAE78, &qword_100CBAE60, &qword_1009BF110, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v58 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  v52[0] = sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0, &qword_1009BE998, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v32 = v23;
  sub_100935C68();
  v33 = *(v81 + 8);
  v81 += 8;
  v33(v18, v16);
  v34 = *(v80 + 8);
  v80 += 8;
  v35 = v32;
  v34(v25, v32);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v78(v22, v19);
  v82 = v61;
  v83 = v62;
  sub_100935D48();
  v36 = v54;
  sub_100935C68();
  v33(v31, v16);
  v34(v25, v35);
  sub_100014C88(&qword_100CBAEC0, &qword_100CBAE68, &qword_1009BF118, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v37 = v55;
  v38 = v53;
  v39 = v56;
  sub_100935CF8();
  v40 = *(v57 + 8);
  v40(v36, v39);
  v40(v38, v39);
  sub_100935D58();
  swift_getKeyPath();
  v41 = v64;
  sub_100935C78();

  v78(v22, v19);
  v82 = v68;
  v83 = v69;
  v42 = v66;
  sub_100935D48();
  sub_100014C88(&qword_100CBAEE8, &qword_100CBAED0, &qword_1009BF178, v59);
  sub_100014C88(&qword_100CBAD38, &qword_100CBAD28, &qword_1009BF028, v58);
  sub_1008EFEF8();
  v43 = v65;
  v44 = v42;
  v45 = v67;
  v46 = v71;
  sub_100935C68();
  (*(v72 + 8))(v44, v46);
  (*(v70 + 8))(v41, v45);
  v47 = sub_100706B30(&qword_100CBAEF0, &qword_1009BF1E0);
  v48 = v75;
  v75[3] = v47;
  v48[4] = sub_1008F33F4();
  sub_100014250(v48);
  sub_100014C88(&qword_100CBAF18, &qword_100CBAEE0, &qword_1009BF188, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  sub_100014C88(&qword_100CBAF20, &qword_100CBAED8, &qword_1009BF180, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v49 = v60;
  v50 = v73;
  sub_100935CF8();
  (*(v74 + 8))(v43, v50);
  return (*(v63 + 8))(v37, v49);
}

unint64_t sub_1008B808C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v24 = a3;
  v5 = sub_100706B30(&qword_100CBAE30, &qword_1009BF0E8);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_100706B30(&qword_100CBAE38, &qword_1009BF0F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = sub_100706B30(&qword_100CBA360, &qword_1009BE720);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a2, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity(0);
  sub_100014C40(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity, &unk_1009AED58);
  sub_100936828();
  sub_1009367D8();
  result = sub_100936728();
  if (v3)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v15 = v24;
  if (result >> 62)
  {
    v19 = result;
    v20 = sub_1009373F8();
    result = v19;
    if (v20)
    {
      goto LABEL_5;
    }

LABEL_10:

    v16 = 0;
    v18 = 0xF000000000000000;
    goto LABEL_11;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_100937268();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v16 = sub_100758270();
  v18 = v17;

LABEL_11:
  (*(v9 + 8))(v11, v8);
  v21 = *v15;
  v22 = v15[1];
  *v15 = v16;
  v15[1] = v18;
  return sub_10001C370(v21, v22);
}

void *sub_1008B84C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100706B30(&qword_100CBA360, &qword_1009BE720);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-v9];
  v22 = &_swiftEmptyArrayStorage;
  v18 = a2;
  v19 = a3;
  v20 = a1;
  v21[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity(0);
  sub_100936128();
  v21[0] = &_swiftEmptyArrayStorage;
  v17 = &v22;
  v11 = swift_isaMask & *v3;
  v15 = v21;
  v16 = v10;
  (*(v11 + 280))(0, sub_1008ECB10, v14);
  v12 = v22;

  (*(v8 + 8))(v10, v7);

  return v12;
}

uint64_t sub_1008B8790@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v59 = a4;
  v49 = a2;
  v50 = a3;
  v65 = a5;
  v6 = sub_100935D38();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v55 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100706B30(&qword_100CBA628, &qword_1009BEAB0);
  v9 = *(v8 - 8);
  v61 = v8;
  v62 = v9;
  __chkstk_darwin(v8);
  v54 = v42 - v10;
  v56 = sub_100706B30(&qword_100CBAE48, &qword_1009BF0F8);
  v60 = *(v56 - 8);
  __chkstk_darwin(v56);
  v48 = v42 - v11;
  v12 = sub_100706B30(&qword_100CBAE50, &qword_1009BF100);
  v13 = *(v12 - 8);
  v63 = v12;
  v64 = v13;
  __chkstk_darwin(v12);
  v52 = v42 - v14;
  v45 = sub_100706B30(&qword_100CBA4C0, &qword_1009BE998);
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v16 = v42 - v15;
  v17 = sub_100706B30(&qword_100CBAE58, &qword_1009BF108);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v42 - v19;
  v43 = sub_100706B30(&qword_100CBAE60, &qword_1009BF110);
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v22 = v42 - v21;
  v51 = sub_100706B30(&qword_100CBAE68, &qword_1009BF118);
  v53 = *(v51 - 8);
  __chkstk_darwin(v51);
  v47 = v42 - v23;
  v42[1] = *a1;
  sub_100014C88(&qword_100CBAE70, &qword_100CBAE58, &qword_1009BF108, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v24 = v18 + 8;
  v25 = *(v18 + 8);
  v42[0] = v24;
  v25(v20, v17);
  v66 = v49;
  v67 = v50;
  sub_100935D48();
  v50 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100014C88(&qword_100CBAE78, &qword_100CBAE60, &qword_1009BF110, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0, &qword_1009BE998, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v26 = v43;
  v27 = v45;
  sub_100935C68();
  (*(v46 + 8))(v16, v27);
  (*(v44 + 8))(v22, v26);
  sub_100935D58();
  swift_getKeyPath();
  v28 = v48;
  sub_100935C78();

  v25(v20, v17);
  sub_100936038();
  v29 = v54;
  sub_100935D48();
  v31 = v57;
  v30 = v58;
  v32 = v55;
  (*(v57 + 104))(v55, enum case for PredicateExpressions.ComparisonOperator.greaterThan(_:), v58);
  sub_100014C88(&qword_100CBAE80, &qword_100CBAE48, &qword_1009BF0F8, v50);
  sub_100014C88(&qword_100CBA688, &qword_100CBA628, &qword_1009BEAB0, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_100014C40(&qword_100CB4FD0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v33 = v52;
  v34 = v56;
  v35 = v61;
  sub_100935CD8();
  (*(v31 + 8))(v32, v30);
  (*(v62 + 8))(v29, v35);
  (*(v60 + 8))(v28, v34);
  v36 = sub_100706B30(&qword_100CBAE88, &qword_1009BF170);
  v37 = v65;
  v65[3] = v36;
  v37[4] = sub_1008F30F0();
  sub_100014250(v37);
  sub_100014C88(&qword_100CBAEC0, &qword_100CBAE68, &qword_1009BF118, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  sub_100014C88(&qword_100CBAEC8, &qword_100CBAE50, &qword_1009BF100, &protocol conformance descriptor for PredicateExpressions.Comparison<A, B>);
  v38 = v47;
  v39 = v51;
  v40 = v63;
  sub_100935CF8();
  (*(v64 + 8))(v33, v40);
  return (*(v53 + 8))(v38, v39);
}

uint64_t sub_1008B904C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v29 = a2;
  v30 = a4;
  v6 = sub_100706B30(&qword_100CBAE30, &qword_1009BF0E8);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_100706B30(&qword_100CBAE38, &qword_1009BF0F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v13 = sub_100706B30(&qword_100CBA360, &qword_1009BE720);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8, a3, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity(0);
  sub_100014C40(&qword_100CBAE40, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDPublicIdentity, &unk_1009AED58);
  sub_100936828();
  v15 = sub_100936728();
  result = (*(v10 + 8))(v12, v9);
  if (!v4)
  {
    v17 = v29;
    *v29 = v15;

    v18 = *v17;
    v31 = &_swiftEmptyArrayStorage;
    v27 = 0;
    if (v18 >> 62)
    {
LABEL_20:
      v29 = (v18 & 0xFFFFFFFFFFFFFF8);
      v19 = sub_1009373F8();
    }

    else
    {
      v29 = (v18 & 0xFFFFFFFFFFFFFF8);
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v30;

    v21 = 0;
    v28 = &_swiftEmptyArrayStorage;
    while (v19 != v21)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        sub_100937268();
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v21 >= v29[2])
        {
          goto LABEL_19;
        }

        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      sub_100757F88();
      v23 = objc_allocWithZone(IDSURI);
      v24 = sub_100936B28();

      v25 = v23;
      v20 = v30;
      v26 = [v25 initWithPrefixedURI:v24];

      ++v21;
      if (v26)
      {
        sub_100936CC8();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100936D18();
        }

        sub_100936D38();
        v28 = v31;
        v21 = v22;
      }
    }

    *v20 = v28;
  }

  return result;
}

void *sub_1008B9584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100706B30(&qword_100CBA368, &qword_1009BE728);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15[-v11];
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();
  v21[0] = &_swiftEmptyArrayStorage;
  v16 = v21;
  v17 = v12;
  (*((swift_isaMask & *v4) + 0x118))(a4, sub_1008ECB3C, v15);
  v13 = v21[0];
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t sub_1008B9824@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v51 = a3;
  v52 = a4;
  v55 = a5;
  v7 = sub_100706B30(&qword_100CBAD28, &qword_1009BF028);
  v8 = *(v7 - 8);
  v53 = v7;
  v54 = v8;
  __chkstk_darwin(v7);
  v50 = v39 - v9;
  v10 = sub_100706B30(&qword_100CBAD30, &qword_1009BF030);
  v11 = *(v10 - 8);
  v56 = v10;
  v57 = v11;
  __chkstk_darwin(v10);
  v49 = v39 - v12;
  v13 = sub_100706B30(&qword_100CBA6B0, &qword_1009BEB10);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v39 - v15;
  v46 = sub_100706B30(&qword_100CBA6B8, &qword_1009BEB18);
  v58 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = v39 - v17;
  v19 = sub_100706B30(&qword_100CBA6C0, &qword_1009BEB20);
  v20 = *(v19 - 8);
  v44 = v19;
  v45 = v20;
  __chkstk_darwin(v19);
  v22 = v39 - v21;
  v23 = sub_100706B30(&qword_100CBA6C8, &qword_1009BEB28);
  v24 = *(v23 - 8);
  v47 = v23;
  v48 = v24;
  __chkstk_darwin(v23);
  v43 = v39 - v25;
  v41 = *a1;
  v59 = a2;
  sub_100706B30(&qword_100CBA6D8, &qword_1009BEB38);
  sub_100935D48();
  sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0, &qword_1009BEB10, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v26 = *(v14 + 8);
  v39[1] = v14 + 8;
  v40 = v26;
  v26(v16, v13);
  v42 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100014C88(&qword_100CBA6E8, &qword_100CBA6C0, &qword_1009BEB20, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v39[0] = sub_100014C88(&qword_100CBA6F0, &qword_100CBA6B8, &qword_1009BEB18, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBA6F8, &qword_100CBA6D8, &qword_1009BEB38, &protocol conformance descriptor for [A]);
  sub_1008EFEF8();
  v27 = v44;
  v28 = v46;
  sub_100935CA8();
  v29 = *(v58 + 8);
  v58 += 8;
  v29(v18, v28);
  (*(v45 + 8))(v22, v27);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v40(v16, v13);
  v59 = v51;
  v60 = v52;
  v30 = v50;
  sub_100935D48();
  sub_100014C88(&qword_100CBAD38, &qword_100CBAD28, &qword_1009BF028, v42);
  v31 = v49;
  v32 = v53;
  sub_100935C68();
  (*(v54 + 8))(v30, v32);
  v29(v18, v28);
  v33 = sub_100706B30(&qword_100CBAE20, &qword_1009BF0E0);
  v34 = v55;
  v55[3] = v33;
  v34[4] = sub_1008F3064();
  sub_100014250(v34);
  sub_100014C88(&qword_100CBA718, &qword_100CBA6C8, &qword_1009BEB28, &protocol conformance descriptor for PredicateExpressions.SequenceContains<A, B>);
  sub_100014C88(&qword_100CBAD60, &qword_100CBAD30, &qword_1009BF030, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v35 = v43;
  v36 = v47;
  v37 = v56;
  sub_100935CF8();
  (*(v57 + 8))(v31, v37);
  return (*(v48 + 8))(v35, v36);
}

uint64_t sub_1008B9F5C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v17 = a2;
  v5 = sub_100706B30(&unk_100CBA690, &qword_1009BEAF8);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_100706B30(&qword_100CBA8D8, &qword_1009BECF8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = sub_100706B30(&qword_100CBA368, &qword_1009BE728);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a3, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution, &unk_1009AEFB0);
  sub_100936828();
  v14 = sub_100936728();
  result = (*(v9 + 8))(v11, v8);
  if (!v3)
  {
    *v17 = v14;
  }

  return result;
}

void *sub_1008BA1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100706B30(&qword_100CBA368, &qword_1009BE728);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17[-v13];
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();
  v24[0] = &_swiftEmptyArrayStorage;
  v18 = v24;
  v19 = v14;
  (*((swift_isaMask & *v5) + 0x118))(a5, sub_1008F4D70, v17);
  v15 = v24[0];
  (*(v12 + 8))(v14, v11);
  return v15;
}

uint64_t sub_1008BA450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100706B30(&qword_100CBA368, &qword_1009BE728);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-v9];
  v18 = a1;
  v19 = a2;
  v20[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();
  v20[0] = &_swiftEmptyArrayStorage;
  v16 = v10;
  v17 = v20;
  (*((swift_isaMask & *v3) + 0x118))(a3, sub_1008ECB80, v15);
  result = v20[0];
  if (!(v20[0] >> 62))
  {
    if (*((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v12 = 0;
    goto LABEL_9;
  }

  v13 = v20[0];
  v14 = sub_1009373F8();
  result = v13;
  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = sub_100937268();
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(result + 32);

LABEL_6:

LABEL_9:
    (*(v8 + 8))(v10, v7);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1008BA77C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v17 = a3;
  v5 = sub_100706B30(&unk_100CBA690, &qword_1009BEAF8);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_100706B30(&qword_100CBA8D8, &qword_1009BECF8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = sub_100706B30(&qword_100CBA368, &qword_1009BE728);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a2, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution, &unk_1009AEFB0);
  sub_100936828();
  sub_1009367D8();
  v14 = sub_100936728();
  result = (*(v9 + 8))(v11, v8);
  if (!v3)
  {
    *v17 = v14;
  }

  return result;
}

uint64_t sub_1008BA9DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v85 = a6;
  v84 = a5;
  v81 = a4;
  v80 = a3;
  v95 = a7;
  v9 = sub_100706B30(&qword_100CBA430, &qword_1009BE910);
  v10 = *(v9 - 8);
  v91 = v9;
  v92 = v10;
  __chkstk_darwin(v9);
  v88 = &v65 - v11;
  v12 = sub_100706B30(&qword_100CBA6A0, &qword_1009BEB00);
  v13 = *(v12 - 8);
  v89 = v12;
  v90 = v13;
  __chkstk_darwin(v12);
  v86 = &v65 - v14;
  v15 = sub_100706B30(&qword_100CBA6A8, &qword_1009BEB08);
  v16 = *(v15 - 8);
  v93 = v15;
  v94 = v16;
  __chkstk_darwin(v15);
  v87 = &v65 - v17;
  v101 = sub_100706B30(&qword_100CBA4C0, &qword_1009BE998);
  v107 = *(v101 - 8);
  __chkstk_darwin(v101);
  v100 = &v65 - v18;
  v78 = sub_100706B30(&qword_100CBA828, &qword_1009BEC18);
  v105 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v65 - v19;
  v79 = sub_100706B30(&qword_100CBAC28, &qword_1009BEFA0);
  v106 = *(v79 - 8);
  __chkstk_darwin(v79);
  v75 = &v65 - v20;
  v21 = sub_100706B30(&qword_100CBA6B0, &qword_1009BEB10);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v65 - v23;
  v69 = sub_100706B30(&qword_100CBA6B8, &qword_1009BEB18);
  v71 = *(v69 - 1);
  __chkstk_darwin(v69);
  v26 = &v65 - v25;
  v67 = sub_100706B30(&qword_100CBA6C0, &qword_1009BEB20);
  v68 = *(v67 - 8);
  __chkstk_darwin(v67);
  v28 = &v65 - v27;
  v72 = sub_100706B30(&qword_100CBA6C8, &qword_1009BEB28);
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v98 = &v65 - v29;
  v76 = sub_100706B30(&qword_100CBADE0, &qword_1009BF0C8);
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v97 = &v65 - v30;
  v82 = sub_100706B30(&qword_100CBADE8, &qword_1009BF0D0);
  v83 = *(v82 - 8);
  __chkstk_darwin(v82);
  v102 = &v65 - v31;
  v96 = *a1;
  v108 = a2;
  sub_100706B30(&qword_100CBA6D8, &qword_1009BEB38);
  sub_100935D48();
  v65 = sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0, &qword_1009BEB10, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v32 = *(v22 + 8);
  v103 = v22 + 8;
  v104 = v32;
  v32(v24, v21);
  v99 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100014C88(&qword_100CBA6E8, &qword_100CBA6C0, &qword_1009BEB20, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v70 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100014C88(&qword_100CBA6F0, &qword_100CBA6B8, &qword_1009BEB18, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBA6F8, &qword_100CBA6D8, &qword_1009BEB38, &protocol conformance descriptor for [A]);
  sub_1008EFEF8();
  v33 = v28;
  v34 = v26;
  v35 = v67;
  v36 = v69;
  sub_100935CA8();
  (*(v71 + 8))(v34, v36);
  v68[1](v33, v35);
  sub_100935D58();
  swift_getKeyPath();
  v37 = v74;
  sub_100935C78();

  v104(v24, v21);
  v108 = v80;
  v109 = v81;
  v38 = v100;
  sub_100935D48();
  v80 = sub_100014C88(&qword_100CBA848, &qword_100CBA828, &qword_1009BEC18, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v71 = sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0, &qword_1009BE998, v99);
  v39 = v75;
  v40 = v78;
  v41 = v101;
  sub_100935C68();
  v42 = *(v107 + 8);
  v107 += 8;
  v69 = v42;
  (v42)(v38, v41);
  v43 = *(v105 + 8);
  v105 += 8;
  v68 = v43;
  v44 = v37;
  (v43)(v37, v40);
  sub_100014C88(&qword_100CBA718, &qword_100CBA6C8, &qword_1009BEB28, &protocol conformance descriptor for PredicateExpressions.SequenceContains<A, B>);
  v81 = &protocol conformance descriptor for PredicateExpressions.Equal<A, B>;
  v67 = sub_100014C88(&qword_100CBAC38, &qword_100CBAC28, &qword_1009BEFA0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v45 = v98;
  v46 = v72;
  v47 = v79;
  sub_100935CF8();
  v48 = *(v106 + 8);
  v106 += 8;
  v66 = v48;
  v48(v39, v47);
  (*(v73 + 8))(v45, v46);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v104(v24, v21);
  v108 = v84;
  v109 = v85;
  v49 = v100;
  sub_100935D48();
  v50 = v101;
  sub_100935C68();
  (v69)(v49, v50);
  (v68)(v44, v40);
  sub_100014C88(&qword_100CBADF0, &qword_100CBADE0, &qword_1009BF0C8, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  v51 = v97;
  v52 = v76;
  sub_100935CF8();
  v66(v39, v47);
  (*(v77 + 8))(v51, v52);
  sub_100935D58();
  swift_getKeyPath();
  v53 = v86;
  sub_100935C78();

  v104(v24, v21);
  LOBYTE(v108) = 1;
  v54 = v88;
  sub_100935D48();
  sub_100014C88(&qword_100CBA708, &qword_100CBA6A0, &qword_1009BEB00, v70);
  sub_100014C88(&qword_100CBA710, &qword_100CBA430, &qword_1009BE910, v99);
  v55 = v87;
  v56 = v54;
  v57 = v89;
  v58 = v91;
  sub_100935C68();
  (*(v92 + 8))(v56, v58);
  (*(v90 + 8))(v53, v57);
  v59 = sub_100706B30(&qword_100CBADF8, &qword_1009BF0D8);
  v60 = v95;
  v95[3] = v59;
  v60[4] = sub_1008F2EC0();
  sub_100014250(v60);
  sub_100014C88(&qword_100CBAE18, &qword_100CBADE8, &qword_1009BF0D0, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  sub_100014C88(&qword_100CBA720, &qword_100CBA6A8, &qword_1009BEB08, v81);
  v61 = v102;
  v62 = v82;
  v63 = v93;
  sub_100935CF8();
  (*(v94 + 8))(v55, v63);
  return (*(v83 + 8))(v61, v62);
}

void *sub_1008BB8DC(void *a1, void *a2)
{
  v4 = [a1 prefixedURI];
  v5 = sub_100936B38();
  v7 = v6;

  v8 = [a2 prefixedURI];
  v9 = sub_100936B38();
  v11 = v10;

  v14 = &_swiftEmptySetSingleton;
  v13[2] = v5;
  v13[3] = v7;
  v13[4] = v9;
  v13[5] = v11;
  v13[6] = &v14;
  (*((swift_isaMask & *v2) + 0x118))(0, sub_1008ECBB4, v13);

  return v14;
}

uint64_t sub_1008BB9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a1;
  v26 = a5;
  v27 = a6;
  v9 = sub_100706B30(&unk_100CBA690, &qword_1009BEAF8);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - v10;
  v28 = sub_100706B30(&qword_100CBA8D8, &qword_1009BECF8);
  v12 = *(v28 - 8);
  __chkstk_darwin(v28);
  v14 = &v25 - v13;
  v15 = sub_100706B30(&qword_100CBA368, &qword_1009BE728);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v25 - v17;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = v26;
  v19 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  v37 = v19;
  sub_100936128();
  (*(v16 + 16))(v11, v18, v15);
  (*(v16 + 56))(v11, 0, 1, v15);
  v20 = sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution, &unk_1009AEFB0);
  sub_100936828();
  v32 = v27;
  v21 = sub_100716928();
  v22 = sub_100716930();
  v23 = v30;
  sub_100716938(v14, v21, v22, sub_1008F2E5C, v31, v19, v20);
  if (v23)
  {
  }

  (*(v12 + 8))(v14, v28);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_1008BBD1C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v65 = a6;
  v59 = a4;
  v60 = a5;
  v56 = a3;
  v55 = a2;
  v71 = a7;
  v8 = sub_100706B30(&qword_100CBA430, &qword_1009BE910);
  v9 = *(v8 - 8);
  v67 = v8;
  v68 = v9;
  __chkstk_darwin(v8);
  v63 = v49 - v10;
  v64 = sub_100706B30(&qword_100CBA6A0, &qword_1009BEB00);
  v66 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = v49 - v11;
  v12 = sub_100706B30(&qword_100CBA6A8, &qword_1009BEB08);
  v13 = *(v12 - 8);
  v69 = v12;
  v70 = v13;
  __chkstk_darwin(v12);
  v62 = v49 - v14;
  v15 = sub_100706B30(&qword_100CBA4C0, &qword_1009BE998);
  v77 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v49 - v16;
  v18 = sub_100706B30(&qword_100CBA6B0, &qword_1009BEB10);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v49 - v20;
  v22 = sub_100706B30(&qword_100CBA828, &qword_1009BEC18);
  v76 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = v49 - v23;
  v53 = sub_100706B30(&qword_100CBAC28, &qword_1009BEFA0);
  v54 = *(v53 - 8);
  __chkstk_darwin(v53);
  v51 = v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v50 = v49 - v27;
  v57 = sub_100706B30(&qword_100CBACE8, &qword_1009BF018);
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v52 = v49 - v28;
  v75 = *a1;
  v72 = sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0, &qword_1009BEB10, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v29 = *(v19 + 8);
  v73 = v19 + 8;
  v74 = v29;
  v29(v21, v18);
  v78 = v55;
  v79 = v56;
  sub_100935D48();
  v56 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v49[2] = sub_100014C88(&qword_100CBA848, &qword_100CBA828, &qword_1009BEC18, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v55 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  v49[1] = sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0, &qword_1009BE998, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v30 = v22;
  sub_100935C68();
  v31 = *(v77 + 8);
  v77 += 8;
  v31(v17, v15);
  v32 = *(v76 + 8);
  v76 += 8;
  v32(v24, v30);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v74(v21, v18);
  v78 = v59;
  v79 = v60;
  sub_100935D48();
  v33 = v51;
  sub_100935C68();
  v31(v17, v15);
  v32(v24, v30);
  sub_100014C88(&qword_100CBAC38, &qword_100CBAC28, &qword_1009BEFA0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v34 = v52;
  v35 = v50;
  v36 = v53;
  sub_100935CF8();
  v37 = *(v54 + 8);
  v37(v33, v36);
  v37(v35, v36);
  sub_100935D58();
  swift_getKeyPath();
  v38 = v61;
  sub_100935C78();

  v74(v21, v18);
  LOBYTE(v78) = v65;
  v39 = v63;
  sub_100935D48();
  sub_100014C88(&qword_100CBA708, &qword_100CBA6A0, &qword_1009BEB00, v56);
  sub_100014C88(&qword_100CBA710, &qword_100CBA430, &qword_1009BE910, v55);
  v40 = v62;
  v41 = v39;
  v42 = v64;
  v43 = v67;
  sub_100935C68();
  (*(v68 + 8))(v41, v43);
  (*(v66 + 8))(v38, v42);
  v44 = sub_100706B30(&qword_100CBACF0, &qword_1009BF020);
  v45 = v71;
  v71[3] = v44;
  v45[4] = sub_1008F23B4();
  sub_100014250(v45);
  sub_100014C88(&qword_100CBAD08, &qword_100CBACE8, &qword_1009BF018, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  sub_100014C88(&qword_100CBA720, &qword_100CBA6A8, &qword_1009BEB08, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v46 = v57;
  v47 = v69;
  sub_100935CF8();
  (*(v70 + 8))(v40, v47);
  return (*(v58 + 8))(v34, v46);
}

uint64_t sub_1008BC744(void *a1, void *a2)
{
  v5 = sub_100706B30(&qword_100CBA368, &qword_1009BE728);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = [a1 prefixedURI];
  v11 = sub_100936B38();
  v13 = v12;

  v14 = [a2 prefixedURI];
  v15 = sub_100936B38();
  v17 = v16;

  v23 = v15;
  v24 = v17;
  v25 = v11;
  v26 = v13;
  v28 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();

  v27 = 0;
  v21 = v9;
  v22 = &v27;
  (*((swift_isaMask & *v2) + 0x118))(0, sub_1008ECBE0, v20);
  v18 = v27;
  (*(v6 + 8))(v9, v5);
  return v18;
}

void *sub_1008BCA40(void *a1, void *a2)
{
  v5 = sub_100706B30(&qword_100CBA368, &qword_1009BE728);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = [a1 prefixedURI];
  v11 = sub_100936B38();
  v13 = v12;

  v14 = [a2 prefixedURI];
  v15 = sub_100936B38();
  v17 = v16;

  v23 = v11;
  v24 = v13;
  v25 = v15;
  v26 = v17;
  v27[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();

  v27[0] = &_swiftEmptyArrayStorage;
  v21 = v9;
  v22 = v27;
  (*((swift_isaMask & *v2) + 0x118))(0, sub_1008ECC08, v20);
  v18 = v27[0];
  (*(v6 + 8))(v9, v5);
  return v18;
}

uint64_t sub_1008BCD44@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t *a6@<X8>)
{
  v71 = a5;
  v70 = a4;
  v66 = a3;
  v67 = a2;
  v78 = a6;
  v77 = sub_100706B30(&qword_100CBA430, &qword_1009BE910);
  v91 = *(v77 - 8);
  __chkstk_darwin(v77);
  v83 = v58 - v7;
  v76 = sub_100706B30(&qword_100CBA6A0, &qword_1009BEB00);
  v89 = *(v76 - 8);
  __chkstk_darwin(v76);
  v72 = v58 - v8;
  v84 = sub_100706B30(&qword_100CBA6A8, &qword_1009BEB08);
  v90 = *(v84 - 8);
  __chkstk_darwin(v84);
  v73 = v58 - v9;
  v63 = sub_100706B30(&qword_100CBA4C0, &qword_1009BE998);
  v88 = *(v63 - 8);
  __chkstk_darwin(v63);
  v11 = v58 - v10;
  v12 = sub_100706B30(&qword_100CBA6B0, &qword_1009BEB10);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v58 - v14;
  v16 = sub_100706B30(&qword_100CBA828, &qword_1009BEC18);
  v86 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v58 - v17;
  v64 = sub_100706B30(&qword_100CBAC28, &qword_1009BEFA0);
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v60 = v58 - v21;
  v68 = sub_100706B30(&qword_100CBACE8, &qword_1009BF018);
  v69 = *(v68 - 8);
  __chkstk_darwin(v68);
  v81 = v58 - v22;
  v23 = sub_100706B30(&qword_100CBACF0, &qword_1009BF020);
  v24 = *(v23 - 8);
  v74 = v23;
  v75 = v24;
  __chkstk_darwin(v23);
  v82 = v58 - v25;
  v87 = *a1;
  v26 = v15;
  v85 = sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0, &qword_1009BEB10, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v79 = *(v13 + 8);
  v80 = v13 + 8;
  v79(v15, v12);
  v92 = v67;
  v93 = v66;
  sub_100935D48();
  v67 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v58[1] = sub_100014C88(&qword_100CBA848, &qword_100CBA828, &qword_1009BEC18, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v66 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  v58[0] = sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0, &qword_1009BE998, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v27 = v18;
  v28 = v16;
  v29 = v63;
  sub_100935C68();
  v30 = v88[1];
  ++v88;
  v30(v11, v29);
  v31 = v86[1];
  ++v86;
  v31(v27, v28);
  v32 = v26;
  v59 = v26;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v33 = v79;
  v79(v32, v12);
  v92 = v70;
  v93 = v71;
  sub_100935D48();
  v34 = v62;
  sub_100935C68();
  v30(v11, v29);
  v31(v27, v28);
  v88 = &protocol conformance descriptor for PredicateExpressions.Equal<A, B>;
  sub_100014C88(&qword_100CBAC38, &qword_100CBAC28, &qword_1009BEFA0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v35 = v60;
  v36 = v64;
  sub_100935CF8();
  v37 = *(v65 + 1);
  v37(v34, v36);
  v37(v35, v36);
  v38 = v59;
  v61 = v12;
  sub_100935D58();
  swift_getKeyPath();
  v39 = v72;
  sub_100935C78();

  v33(v38, v12);
  LOBYTE(v92) = 0;
  v40 = v83;
  sub_100935D48();
  v70 = sub_100014C88(&qword_100CBA708, &qword_100CBA6A0, &qword_1009BEB00, v67);
  v67 = sub_100014C88(&qword_100CBA710, &qword_100CBA430, &qword_1009BE910, v66);
  v41 = v73;
  v42 = v76;
  v43 = v77;
  sub_100935C68();
  v44 = *(v91 + 8);
  v91 += 8;
  v66 = v44;
  (v44)(v40, v43);
  v45 = *(v89 + 8);
  v89 += 8;
  v65 = v45;
  v45(v39, v42);
  v86 = &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>;
  sub_100014C88(&qword_100CBAD08, &qword_100CBACE8, &qword_1009BF018, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  v88 = sub_100014C88(&qword_100CBA720, &qword_100CBA6A8, &qword_1009BEB08, v88);
  v46 = v81;
  v47 = v68;
  v48 = v84;
  sub_100935CF8();
  v49 = *(v90 + 8);
  v90 += 8;
  v71 = v49;
  v49(v41, v48);
  (*(v69 + 8))(v46, v47);
  v50 = v61;
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v79(v38, v50);
  LOBYTE(v92) = 1;
  v51 = v83;
  sub_100935D48();
  sub_100935C68();
  (v66)(v51, v43);
  v65(v39, v42);
  v52 = sub_100706B30(&qword_100CBADD0, &qword_1009BF0C0);
  v53 = v78;
  v78[3] = v52;
  v53[4] = sub_1008F2DAC();
  sub_100014250(v53);
  sub_100014C88(&qword_100CBAD80, &qword_100CBACF0, &qword_1009BF020, v86);
  v54 = v82;
  v55 = v74;
  v56 = v84;
  sub_100935CF8();
  v71(v41, v56);
  return (*(v75 + 8))(v54, v55);
}

uint64_t sub_1008BD9E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100936038();
  __chkstk_darwin(v5 - 8);
  v49 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SenderKeyInfo(0);
  v47 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v50 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100706B30(&unk_100CBA690, &qword_1009BEAF8);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - v10;
  v12 = sub_100706B30(&qword_100CBA8D8, &qword_1009BECF8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - v14;
  v16 = sub_100706B30(&qword_100CBA368, &qword_1009BE728);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v11, a2, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution, &unk_1009AEFB0);
  sub_100936828();
  v18 = v48;
  v19 = sub_100936728();
  v20 = v18;
  result = (*(v13 + 8))(v15, v12);
  if (!v18)
  {
    if (v19 >> 62)
    {
      goto LABEL_18;
    }

    v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = 0; v22; i = v20)
    {
      v23 = 0;
      v45 = v19 & 0xFFFFFFFFFFFFFF8;
      v46 = v19 & 0xC000000000000001;
      v20 = &_swiftEmptyArrayStorage;
      v43 = v19;
      v44 = a3;
      v42 = v22;
      while (v46)
      {
        sub_100937268();
        v24 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          goto LABEL_16;
        }

LABEL_8:
        v48 = v24;
        v25 = sub_10075A72C();
        v27 = v26;
        v28 = sub_10075A43C();
        v30 = v29;
        sub_10075B2DC();
        sub_10075AA1C();
        sub_10075AD04();
        nullsub_23();
        sub_10078694C(v25, v27, v28, v30, v49, v31, v32, v33, v50, v34);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1008E40E0(0, v20[2] + 1, 1, v20, &qword_100CB4F98, &qword_1009B0C38, type metadata accessor for SenderKeyInfo);
        }

        v19 = v43;
        a3 = v44;
        v36 = v20[2];
        v35 = v20[3];
        v37 = v47;
        v38 = v50;
        if (v36 >= v35 >> 1)
        {
          v39 = sub_1008E40E0((v35 > 1), v36 + 1, 1, v20, &qword_100CB4F98, &qword_1009B0C38, type metadata accessor for SenderKeyInfo);
          v37 = v47;
          v20 = v39;
          v38 = v50;
        }

        v20[2] = v36 + 1;
        sub_1008F24C4(v38, v20 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v36, type metadata accessor for SenderKeyInfo);
        ++v23;
        if (v48 == v42)
        {
          goto LABEL_20;
        }
      }

      if (v23 >= *(v45 + 16))
      {
        goto LABEL_17;
      }

      v24 = (v23 + 1);
      if (!__OFADD__(v23, 1))
      {
        goto LABEL_8;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v22 = sub_1009373F8();
    }

    v20 = &_swiftEmptyArrayStorage;
LABEL_20:

    *a3 = v20;
  }

  return result;
}

void sub_1008BDF28(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, unint64_t a7, void (**a8)(char *, uint64_t))
{
  v373 = a8;
  v371 = a7;
  v381 = a5;
  v13 = type metadata accessor for SenderKeyInfo(0);
  __chkstk_darwin(v13 - 8);
  v361 = &v336 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100706B30(&unk_100CB4A50, &unk_1009AFFE0);
  __chkstk_darwin(v15 - 8);
  v370 = &v336 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v363 = &v336 - v18;
  __chkstk_darwin(v19);
  v369 = &v336 - v20;
  __chkstk_darwin(v21);
  v368 = &v336 - v22;
  __chkstk_darwin(v23);
  v359 = &v336 - v24;
  __chkstk_darwin(v25);
  v360 = &v336 - v26;
  v27 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  __chkstk_darwin(v27 - 8);
  v346 = &v336 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v358 = &v336 - v30;
  __chkstk_darwin(v31);
  v351 = &v336 - v32;
  __chkstk_darwin(v33);
  v376 = &v336 - v34;
  v35 = sub_100936038();
  v353 = *(v35 - 8);
  __chkstk_darwin(v35);
  v343 = &v336 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v344 = &v336 - v38;
  __chkstk_darwin(v39);
  v347 = &v336 - v40;
  __chkstk_darwin(v41);
  v357 = &v336 - v42;
  __chkstk_darwin(v43);
  v345 = &v336 - v44;
  __chkstk_darwin(v45);
  v348 = &v336 - v46;
  __chkstk_darwin(v47);
  v364 = &v336 - v48;
  __chkstk_darwin(v49);
  v352 = &v336 - v50;
  __chkstk_darwin(v51);
  v366 = &v336 - v52;
  v372 = sub_100706B30(&unk_100CBB1F8, &unk_1009BF3C8);
  v367 = *(v372 - 8);
  __chkstk_darwin(v372);
  v356 = (&v336 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v54);
  v362 = &v336 - v55;
  __chkstk_darwin(v56);
  v350 = &v336 - v57;
  __chkstk_darwin(v58);
  v349 = &v336 - v59;
  __chkstk_darwin(v60);
  v365 = &v336 - v61;
  v63 = __chkstk_darwin(v62);
  v384 = &v336 - v64;
  v380 = a3;
  v65 = [a3 prefixedURI];
  v66 = sub_100936B38();
  v68 = v67;

  *&v382 = a4;
  v69 = [a4 prefixedURI];
  v70 = sub_100936B38();
  v72 = v71;

  v73 = a1;
  v74 = a2;
  v75 = sub_1008BA1A4(v66, v68, v70, v72, v73);

  v76 = v75;
  v378 = v75;
  if (v75 >> 62)
  {
    goto LABEL_347;
  }

  v77 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v77)
  {
LABEL_348:

    v317 = v380;
    v318 = v382;
    v319 = sub_1009364B8();
    v320 = sub_100936F18();

    if (os_log_type_enabled(v319, v320))
    {
      v321 = swift_slowAlloc();
      v322 = swift_slowAlloc();
      *v321 = 138412546;
      *(v321 + 4) = v317;
      *(v321 + 12) = 2112;
      *(v321 + 14) = v318;
      *v322 = v317;
      v322[1] = v318;
      v323 = v317;
      v324 = v318;
      _os_log_impl(&_mh_execute_header, v319, v320, "Found no generated keys for senderURI: %@ receiverURI: %@", v321, 0x16u);
      sub_100706B30(&qword_100CB36B0, &unk_1009AD140);
      swift_arrayDestroy();
    }

    goto LABEL_373;
  }

  while (2)
  {
    v338 = a6;
    v354 = a2;
    v375 = v35;
    v78 = 0;
    __s2[0] = &_swiftEmptyArrayStorage;
    v79 = v76 & 0xC000000000000001;
    a6 = v76 & 0xFFFFFFFFFFFFFF8;
    while (v79)
    {
      v80 = sub_100937268();
      a2 = v78 + 1;
      if (__OFADD__(v78, 1))
      {
        goto LABEL_14;
      }

LABEL_9:
      v74 = v80;
      if (sub_10075BE24() & 1) == 0 || (v74 = v80, (sub_10075E434()))
      {
      }

      else
      {
        v74 = __s2;
        sub_100937298();
        sub_1009372C8();
        sub_1009372D8();
        sub_1009372A8();
      }

      ++v78;
      v76 = v378;
      if (a2 == v77)
      {
        goto LABEL_15;
      }
    }

    if (v78 >= *(a6 + 16))
    {
      __break(1u);
      goto LABEL_324;
    }

    v80 = *(v76 + 8 * v78 + 32);

    a2 = v78 + 1;
    if (!__OFADD__(v78, 1))
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __s2[0] = sub_1008EA860(__s2[0]);
    v81 = v383;
    v82 = sub_1008E62B4(__s2);
    if (v81)
    {
      goto LABEL_390;
    }

    v379 = 0;
    v77 = __s2[0];
    v83 = v375;
    if ((__s2[0] & 0x8000000000000000) == 0 && (__s2[0] & 0x4000000000000000) == 0)
    {
      v383 = *(__s2[0] + 16);
      if (v383)
      {
        goto LABEL_19;
      }

LABEL_355:

      v325 = v380;
      v326 = v382;
      v319 = sub_1009364B8();
      v327 = sub_100936F18();

      if (!os_log_type_enabled(v319, v327))
      {
        goto LABEL_373;
      }

      v328 = swift_slowAlloc();
      v329 = swift_slowAlloc();
      *v328 = 138412546;
      *(v328 + 4) = v325;
      *(v328 + 12) = 2112;
      *(v328 + 14) = v326;
      *v329 = v325;
      v329[1] = v326;
      v330 = v325;
      v331 = v326;
      _os_log_impl(&_mh_execute_header, v319, v327, "Found no acked keys for senderURI: %@ receiverURI: %@", v328, 0x16u);
      sub_100706B30(&qword_100CB36B0, &unk_1009AD140);
      swift_arrayDestroy();

LABEL_372:

      goto LABEL_373;
    }

    while (2)
    {
      v82 = sub_1009373F8();
      v383 = v82;
      if (!v82)
      {
        goto LABEL_355;
      }

LABEL_19:
      v380 = v77;
      v84 = (*((swift_isaMask & *v354) + 0xC8))(v82);
      if (v85 >> 60 == 15)
      {
        v74 = v381;

        goto LABEL_97;
      }

      v35 = v84;
      v74 = v85;
      v86 = v381[2];
      if (!v86)
      {
        v381 = &_swiftEmptyArrayStorage;
        goto LABEL_96;
      }

      v87 = 0;
      v83 = (v381 + 4);
      if (v84)
      {
        v88 = 0;
      }

      else
      {
        v88 = v85 == 0xC000000000000000;
      }

      v89 = !v88;
      LODWORD(v377) = v89;
      v90 = v85 >> 62;
      v91 = __OFSUB__(HIDWORD(v84), v84);
      v341 = v91;
      v340 = HIDWORD(v84) - v84;
      v374 = BYTE6(v85);
      v381 = &_swiftEmptyArrayStorage;
      v342 = v85;
      v355 = v84;
      v339 = v83;
LABEL_32:
      a6 = v87;
LABEL_35:
      if (a6 >= v86)
      {
        goto LABEL_331;
      }

      v87 = a6 + 1;
      if (__OFADD__(a6, 1))
      {
LABEL_332:
        __break(1u);
        goto LABEL_333;
      }

      v92 = *(v83 + 16 * a6);
      a2 = *(v83 + 16 * a6 + 8);
      v93 = a2 >> 62;
      if (a2 >> 62 != 3)
      {
        if (v93 > 1)
        {
          if (v93 != 2)
          {
            goto LABEL_59;
          }

          v98 = *(v92 + 16);
          v99 = *(v92 + 24);
          v100 = __OFSUB__(v99, v98);
          v97 = v99 - v98;
          if (v100)
          {
            goto LABEL_358;
          }

          if (v90 <= 1)
          {
            goto LABEL_56;
          }
        }

        else if (v93)
        {
          LODWORD(v97) = DWORD1(v92) - v92;
          if (__OFSUB__(DWORD1(v92), v92))
          {
            __break(1u);
LABEL_358:
            __break(1u);
LABEL_359:
            __break(1u);
LABEL_360:
            __break(1u);
LABEL_361:
            __break(1u);
LABEL_362:
            __break(1u);
            goto LABEL_363;
          }

          v97 = v97;
          if (v90 <= 1)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v97 = BYTE6(a2);
          if (v90 <= 1)
          {
            goto LABEL_56;
          }
        }

LABEL_60:
        if (v90 == 2)
        {
          v103 = *(v35 + 16);
          v102 = *(v35 + 24);
          v100 = __OFSUB__(v102, v103);
          v101 = v102 - v103;
          if (v100)
          {
            __break(1u);
LABEL_352:
            __break(1u);
LABEL_353:
            __break(1u);
            continue;
          }

          goto LABEL_62;
        }

        if (v97)
        {
          goto LABEL_88;
        }

        goto LABEL_34;
      }

      break;
    }

    if (v92)
    {
      v94 = 0;
    }

    else
    {
      v94 = a2 == 0xC000000000000000;
    }

    v96 = !v94 || v90 < 3;
    if (((v96 | v377) & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_59:
    v97 = 0;
    if (v90 > 1)
    {
      goto LABEL_60;
    }

LABEL_56:
    v101 = v374;
    if (v90)
    {
      v101 = v340;
      if (v341)
      {
        goto LABEL_352;
      }
    }

LABEL_62:
    if (v97 == v101)
    {
      if (v97 < 1)
      {
        goto LABEL_34;
      }

      v382 = *(v83 + 16 * a6);
      if (v93 > 1)
      {
        if (v93 != 2)
        {
          memset(__s2, 0, 14);
          sub_1007483B0(v35, v74);
          goto LABEL_85;
        }

        v83 = *(v92 + 16);
        v337 = *(v92 + 24);
        sub_100715738(v92, a2);
        sub_1007483B0(v35, v74);
        v74 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v77 = sub_100935BE8();
        if (v77)
        {
          v74 = a2 & 0x3FFFFFFFFFFFFFFFLL;
          v104 = sub_100935C18();
          if (__OFSUB__(v83, v104))
          {
            goto LABEL_361;
          }

          v77 += v83 - v104;
        }

        if (__OFSUB__(v337, v83))
        {
          goto LABEL_360;
        }

        sub_100935C08();
        v105 = v77;
        v35 = v355;
      }

      else
      {
        if (!v93)
        {
          __s2[0] = v92;
          LOWORD(__s2[1]) = a2;
          BYTE2(__s2[1]) = BYTE2(a2);
          BYTE3(__s2[1]) = BYTE3(a2);
          BYTE4(__s2[1]) = BYTE4(a2);
          BYTE5(__s2[1]) = BYTE5(a2);
          v77 = __s2 + BYTE6(a2);
          sub_1007483B0(v35, v74);
LABEL_85:
          v109 = v379;
          sub_10071C670(__s2, v35, v74, &v385);
          v379 = v109;
          if (v109)
          {
            goto LABEL_389;
          }

          sub_10001C370(v35, v74);
          if (!v385)
          {
            goto LABEL_89;
          }

LABEL_87:
          sub_1007156D8(v382, a2);
LABEL_34:
          ++a6;
          if (v87 == v86)
          {
            goto LABEL_96;
          }

          goto LABEL_35;
        }

        v106 = v92;
        v83 = (v92 >> 32) - v92;
        if (v92 >> 32 < v92)
        {
          goto LABEL_359;
        }

        sub_100715738(v92, a2);
        sub_1007483B0(v355, v74);
        v77 = sub_100935BE8();
        if (v77)
        {
          v74 = a2 & 0x3FFFFFFFFFFFFFFFLL;
          v107 = sub_100935C18();
          if (__OFSUB__(v106, v107))
          {
            goto LABEL_362;
          }

          v77 += v106 - v107;
        }

        v35 = v355;
        sub_100935C08();
        v105 = v77;
      }

      v74 = v342;
      v108 = v379;
      sub_10071C670(v105, v35, v342, __s2);
      v379 = v108;
      if (v108)
      {
        goto LABEL_389;
      }

      sub_10001C370(v35, v74);
      v83 = v339;
      if ((__s2[0] & 1) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_87;
    }

LABEL_88:
    v382 = *(v83 + 16 * a6);
    sub_100715738(v92, a2);
LABEL_89:
    v110 = v381;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v386 = v110;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1008E447C(0, v110[2] + 1, 1);
      v110 = v386;
    }

    v113 = v110[2];
    v112 = v110[3];
    v77 = (v113 + 1);
    v114 = v382;
    if (v113 >= v112 >> 1)
    {
      sub_1008E447C((v112 > 1), v113 + 1, 1);
      v114 = v382;
      v110 = v386;
    }

    v110[2] = v77;
    v381 = v110;
    *&v110[2 * v113 + 4] = v114;
    v74 = v342;
    v35 = v355;
    if (v87 != v86)
    {
      goto LABEL_32;
    }

LABEL_96:
    sub_10001C370(v35, v74);
    v83 = v375;
    v74 = v381;
LABEL_97:
    v115 = sub_100791A24(v74);

    v374 = v115;
    if (!*(v115 + 16))
    {
      v370 = OBJC_IVAR___IDSQuerySDPersistenceManager_logger;
      v217 = sub_1009364B8();
      v74 = sub_100936F18();
      if (os_log_type_enabled(v217, v74))
      {
        v218 = swift_slowAlloc();
        *v218 = 0;
        _os_log_impl(&_mh_execute_header, v217, v74, "Empty stewie capable tokens - checking for acked key by last iMessaged device", v218, 2u);
      }

      v219 = 0;
      v35 = v380 & 0xC000000000000001;
      *&v382 = v353 + 48;
      v220 = &_swiftEmptyArrayStorage;
      v373 = (v353 + 32);
      a6 = &unk_100CBB1F8;
      a2 = &unk_1009BF3C8;
      v221 = v376;
      v371 = v380 & 0xC000000000000001;
      while (1)
      {
        if (v35)
        {
          v74 = sub_100937268();
          v222 = v219 + 1;
          if (__OFADD__(v219, 1))
          {
LABEL_329:
            __break(1u);
LABEL_330:
            __break(1u);
LABEL_331:
            __break(1u);
            goto LABEL_332;
          }
        }

        else
        {
          if (v219 >= *(v380 + 16))
          {
            goto LABEL_330;
          }

          v74 = *(v380 + 8 * v219 + 32);

          v222 = v219 + 1;
          if (__OFADD__(v219, 1))
          {
            goto LABEL_329;
          }
        }

        sub_10075DF9C();
        v381 = *v382;
        if ((v381)(v221, 1, v83) == 1)
        {

          sub_100013814(v221, &qword_100CB4AC0, &qword_1009AC370);
        }

        else
        {
          v223 = v221;
          v377 = v220;
          v224 = *v373;
          v225 = v366;
          (*v373)(v366, v223, v83);
          v226 = *(v372 + 48);
          v227 = v83;
          v228 = v365;
          *v365 = v74;
          v229 = v225;
          v230 = v227;
          v224(&v228[v226], v229);
          v220 = v377;
          sub_100021E3C(v228, v384, &unk_100CBB1F8, &unk_1009BF3C8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v220 = sub_1008E3EF0(0, v220[2] + 1, 1, v220);
          }

          v232 = v220[2];
          v231 = v220[3];
          v74 = v232 + 1;
          v83 = v230;
          if (v232 >= v231 >> 1)
          {
            v220 = sub_1008E3EF0((v231 > 1), v232 + 1, 1, v220);
          }

          v35 = v371;
          v220[2] = v74;
          sub_100021E3C(v384, v220 + ((*(v367 + 80) + 32) & ~*(v367 + 80)) + *(v367 + 72) * v232, &unk_100CBB1F8, &unk_1009BF3C8);
          v221 = v376;
        }

        ++v219;
        if (v222 == v383)
        {

          __s2[0] = v220;

          v233 = v379;
          sub_1008E6200(__s2);
          v379 = v233;
          if (v233)
          {
            goto LABEL_390;
          }

          v234 = __s2[0];
          v235 = *(__s2[0] + 16);
          if (v235)
          {
            __s2[0] = &_swiftEmptyArrayStorage;
            sub_1009372B8();
            v236 = v234 + ((*(v367 + 80) + 32) & ~*(v367 + 80));
            v237 = *(v367 + 72);
            v383 = v234;
            v384 = v237;
            a6 = v353 + 8;
            v238 = v350;
            v239 = v349;
            do
            {
              sub_100012D50(v236, v239, &unk_100CBB1F8, &unk_1009BF3C8);
              sub_100021E3C(v239, v238, &unk_100CBB1F8, &unk_1009BF3C8);
              (*a6)(v238 + *(v372 + 48), v375);
              sub_100937298();
              sub_1009372C8();
              sub_1009372D8();
              sub_1009372A8();
              v236 += v384;
              --v235;
            }

            while (v235);

            v74 = __s2[0];
            v83 = v375;
          }

          else
          {

            v74 = &_swiftEmptyArrayStorage;
          }

          v77 = v352;
          v90 = v351;
          if (!(v74 >> 62))
          {
            if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_295;
            }

LABEL_364:

            v319 = sub_1009364B8();
            v332 = sub_100936F18();
            if (os_log_type_enabled(v319, v332))
            {
              v333 = swift_slowAlloc();
              *v333 = 0;
              v334 = "Found no last iMessaged device";
              goto LABEL_371;
            }

LABEL_373:

            return;
          }

LABEL_363:
          if (!sub_1009373F8())
          {
            goto LABEL_364;
          }

LABEL_295:
          if ((v74 & 0xC000000000000001) == 0)
          {
            if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {

              goto LABEL_298;
            }

            __break(1u);
LABEL_368:
            if (!sub_1009373F8())
            {
LABEL_369:

              v319 = sub_1009364B8();
              v332 = sub_100936F18();
              if (!os_log_type_enabled(v319, v332))
              {
                goto LABEL_373;
              }

              v333 = swift_slowAlloc();
              *v333 = 0;
              v334 = "Found no last active offgrid device";
LABEL_371:
              _os_log_impl(&_mh_execute_header, v319, v332, v334, v333, 2u);
              goto LABEL_372;
            }

LABEL_309:
            if ((v74 & 0xC000000000000001) != 0)
            {
              sub_100937268();
            }

            else
            {
              if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_376:
                __break(1u);
LABEL_377:
                __break(1u);
LABEL_378:
                __break(1u);
LABEL_379:
                __break(1u);
LABEL_380:
                __break(1u);
LABEL_381:
                __break(1u);
LABEL_382:
                __break(1u);
LABEL_383:
                __break(1u);
LABEL_384:
                __break(1u);
LABEL_385:
                __break(1u);
              }
            }

            v288 = type metadata accessor for SenderKeyDistributionManager(0);
            (*(v288 + 888))();
            v289 = v364;
            sub_100936028();
            sub_100935F48();
            v35 = v353 + 8;
            v78 = *(v353 + 8);
            (v78)(v289, a6);
            sub_10075DB04();
            if ((v382)(v90, 1, a6) == 1)
            {
              v251 = v77;
              v252 = a6;
              goto LABEL_314;
            }

            v74 = v344;
            (*v373)(v344, v90, a6);
            if (sub_100935F68())
            {
              v383 = sub_10075A72C();
              *&v382 = v290;
              v291 = sub_10075A43C();
              v380 = v292;
              v381 = v291;
              v293 = v364;
              sub_10075B2DC();
              sub_10075AA1C();
              sub_10075AD04();
              a6 = v74;
              a2 = v375;
              nullsub_23();
              v294 = v361;
              sub_10078694C(v383, v382, v381, v380, v293, v295, v296, v297, v361, v298);
              v299 = sub_10075B6D4();
              v300 = v360;
              sub_100780BD0(v294, v299, v301, v360);
              (*(v83 + 56))(v300, 0, 1, v370);
              sub_10073545C(v300, v338, &unk_100CB4A50, &unk_1009AFFE0);
              v83 = v343;
              (*(v353 + 16))(v343, a6, a2);

              v119 = sub_1009364B8();
              v302 = sub_100936F18();
              if (!os_log_type_enabled(v119, v302))
              {
                goto LABEL_327;
              }

              v303 = swift_slowAlloc();
              v384 = swift_slowAlloc();
              __s2[0] = v384;
              *v303 = 136315394;
              sub_100014C40(&qword_100CB3A88, &type metadata accessor for Date, &protocol conformance descriptor for Date);
              v304 = sub_100937548();
              v305 = v83;
              v307 = v306;
              (v78)(v305, a2);
              v308 = sub_10001273C(v304, v307, __s2);

              *(v303 + 4) = v308;
              *(v303 + 12) = 2080;
              v309 = sub_10075AFEC();
              v311 = v310;
              isa = sub_100935E78().super.isa;
              sub_1007156D8(v309, v311);
              v74 = [(objc_class *)isa __imHexString];

              if (v74)
              {
                v313 = sub_100936B38();
                v315 = v314;

                v316 = sub_10001273C(v313, v315, __s2);

                *(v303 + 14) = v316;
                _os_log_impl(&_mh_execute_header, v119, v302, "Last active offgrid device was seen at: %s token: %s", v303, 0x16u);
                swift_arrayDestroy();

                v285 = v375;
                (v78)(v344, v375);
                v286 = &v379;
                goto LABEL_319;
              }

              goto LABEL_388;
            }

LABEL_324:

            (v78)(v74, a6);
            (v78)(v77, a6);
            return;
          }

          sub_100937268();
LABEL_298:

          v249 = type metadata accessor for SenderKeyDistributionManager(0);
          (*(v249 + 912))();
          v250 = v364;
          sub_100936028();
          sub_100935F48();
          v35 = v353 + 8;
          v78 = *(v353 + 8);
          (v78)(v250, v83);
          sub_10075DF9C();
          if ((v381)(v90, 1, v83) == 1)
          {
            v251 = v77;
            v252 = v83;
LABEL_314:
            (v78)(v251, v252);

            sub_100013814(v90, &qword_100CB4AC0, &qword_1009AC370);
            return;
          }

          v253 = v348;
          (*v373)(v348, v90, v83);
          if (sub_100935F68())
          {
            v254 = sub_10075A72C();
            v383 = v255;
            v384 = v254;
            v256 = sub_10075A43C();
            v258 = v257;
            v259 = v364;
            sub_10075B2DC();
            sub_10075AA1C();
            sub_10075AD04();
            nullsub_23();
            v335 = v260;
            v261 = v361;
            v83 = v375;
            v262 = v258;
            v121 = v348;
            sub_10078694C(v384, v383, v256, v262, v259, v263, v264, v265, v361, v335);
            v266 = sub_10075B6D4();
            v267 = v360;
            sub_100780BD0(v261, v266, v268, v360);
            v269 = type metadata accessor for SenderKeyAndState(0);
            (*(*(v269 - 8) + 56))(v267, 0, 1, v269);
            sub_10073545C(v267, v338, &unk_100CB4A50, &unk_1009AFFE0);
            a2 = v345;
            (*(v353 + 16))(v345, v121, v83);

            v119 = sub_1009364B8();
            v270 = sub_100936F18();
            if (os_log_type_enabled(v119, v270))
            {
              LODWORD(v384) = v270;
              v271 = v83;
              v272 = swift_slowAlloc();
              v383 = swift_slowAlloc();
              __s2[0] = v383;
              *v272 = 136315394;
              sub_100014C40(&qword_100CB3A88, &type metadata accessor for Date, &protocol conformance descriptor for Date);
              v273 = sub_100937548();
              v275 = v274;
              (v78)(a2, v271);
              v276 = sub_10001273C(v273, v275, __s2);

              *(v272 + 4) = v276;
              *(v272 + 12) = 2080;
              v277 = sub_10075AFEC();
              v279 = v278;
              v280 = sub_100935E78().super.isa;
              sub_1007156D8(v277, v279);
              v74 = [(objc_class *)v280 __imHexString];

              if (v74)
              {
                v281 = sub_100936B38();
                v283 = v282;

                v284 = sub_10001273C(v281, v283, __s2);

                *(v272 + 14) = v284;
                _os_log_impl(&_mh_execute_header, v119, v384, "Last iMessaged device was seen at: %s token: %s", v272, 0x16u);
                swift_arrayDestroy();

                v285 = v375;
                (v78)(v348, v375);
                v286 = &v383;
LABEL_319:
                (v78)(*(v286 - 32), v285);
                return;
              }

              __break(1u);
LABEL_387:

              __break(1u);
LABEL_388:
              __break(1u);
LABEL_389:
              sub_10001C370(v35, v74);
              __break(1u);
LABEL_390:

              __break(1u);
              return;
            }

LABEL_321:

            (v78)(a2, v83);
            (v78)(v121, v83);
            v287 = v352;
          }

          else
          {

            (v78)(v253, v83);
            v287 = v77;
          }

          (v78)(v287, v83);
          return;
        }
      }
    }

    v376 = 0;
    v35 = v380;
    v381 = (v380 & 0xC000000000000001);
    v355 = v380 + 32;
LABEL_100:
    if (!v381)
    {
      v118 = v376;
      if (v376 >= *(v35 + 16))
      {
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        v77 = sub_1009373F8();
        v76 = v378;
        if (!v77)
        {
          goto LABEL_348;
        }

        continue;
      }

      *&v382 = *(v355 + 8 * v376);

      v100 = __OFADD__(v118, 1);
      v117 = v118 + 1;
      if (!v100)
      {
        goto LABEL_106;
      }

LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
LABEL_341:
      __break(1u);
      goto LABEL_342;
    }

    break;
  }

  v116 = v376;
  *&v382 = sub_100937268();
  v100 = __OFADD__(v116, 1);
  v117 = v116 + 1;
  if (v100)
  {
    goto LABEL_333;
  }

LABEL_106:
  v376 = v117;
  v119 = 0;
  v386 = &_swiftEmptyArrayStorage;
  while (2)
  {
    if (!v381)
    {
      if (v119 >= *(v35 + 16))
      {
        __break(1u);
        goto LABEL_306;
      }

      v121 = &v119->isa + 1;
      if (!__OFADD__(v119, 1))
      {
        goto LABEL_116;
      }

LABEL_285:
      __break(1u);
LABEL_286:

      sub_100013814(v74, &unk_100CB4A50, &unk_1009AFFE0);
      return;
    }

    v120 = sub_100937268();
    v121 = &v119->isa + 1;
    if (__OFADD__(v119, 1))
    {
      goto LABEL_285;
    }

LABEL_116:
    v384 = v120;
    v122 = sub_10075A43C();
    a2 = v123;
    v74 = v382;
    v124 = sub_10075A43C();
    v83 = v124;
    v78 = v125;
    v126 = a2 >> 62;
    a6 = v125 >> 62;
    if (a2 >> 62 == 3)
    {
      v127 = 0;
      if (!v122 && a2 == 0xC000000000000000 && v125 >> 62 == 3)
      {
        v127 = 0;
        if (!v124 && v125 == 0xC000000000000000)
        {
          sub_1007156D8(0, 0xC000000000000000);
          v128 = 0;
          v129 = 0xC000000000000000;
          goto LABEL_144;
        }
      }

LABEL_132:
      if (a6 <= 1)
      {
LABEL_133:
        if (!a6)
        {
          v132 = BYTE6(v125);
          goto LABEL_135;
        }

        if (__OFSUB__(HIDWORD(v124), v124))
        {
          goto LABEL_320;
        }

        if (v127 == HIDWORD(v124) - v124)
        {
LABEL_139:
          if (v127 >= 1)
          {
            if (v126 > 1)
            {
              if (v126 != 2)
              {
                memset(__s2, 0, 14);
LABEL_160:
                v139 = v379;
                sub_10071C670(__s2, v124, v125, &v385);
                v379 = v139;
                if (v139)
                {
                  goto LABEL_387;
                }

                sub_1007156D8(v122, a2);
                sub_1007156D8(v83, v78);
                if (v385)
                {
                  goto LABEL_145;
                }

                goto LABEL_218;
              }

              v377 = *(v122 + 16);
              v135 = sub_100935BE8();
              if (v135)
              {
                v35 = v135;
                v74 = a2 & 0x3FFFFFFFFFFFFFFFLL;
                v136 = sub_100935C18();
                if (__OFSUB__(v377, v136))
                {
                  goto LABEL_334;
                }

                v377 = (v377 + v35 - v136);
              }

              else
              {
                v377 = 0;
              }

              v74 = a2 & 0x3FFFFFFFFFFFFFFFLL;
              sub_100935C08();
              v35 = v380;
              if (a6 != 2)
              {
                if (a6 == 1)
                {
                  v35 = v83;
                  a6 = (v83 >> 32) - v83;
                  if (v83 >> 32 < v83)
                  {
                    goto LABEL_337;
                  }

                  v140 = sub_100935BE8();
                  if (v140)
                  {
                    v366 = v140;
                    v74 = v78 & 0x3FFFFFFFFFFFFFFFLL;
                    v141 = sub_100935C18();
                    if (__OFSUB__(v83, v141))
                    {
                      goto LABEL_344;
                    }

                    v35 = v83 - v141 + v366;
                  }

                  else
                  {
                    v35 = 0;
                  }

                  v151 = sub_100935C08();
                  if (v151 >= a6)
                  {
                    v146 = (v83 >> 32) - v83;
                  }

                  else
                  {
                    v146 = v151;
                  }

                  v147 = v377;
                  if (!v377)
                  {
                    goto LABEL_381;
                  }

                  if (!v35)
                  {
                    goto LABEL_380;
                  }

                  goto LABEL_215;
                }

                v148 = v377;
                __s2[0] = v83;
                LOWORD(__s2[1]) = v78;
                BYTE2(__s2[1]) = BYTE2(v78);
                BYTE3(__s2[1]) = BYTE3(v78);
                BYTE4(__s2[1]) = BYTE4(v78);
                BYTE5(__s2[1]) = BYTE5(v78);
                if (!v377)
                {
                  goto LABEL_379;
                }

                goto LABEL_200;
              }

              a6 = *(v83 + 16);
              v366 = *(v83 + 24);
              v74 = v78 & 0x3FFFFFFFFFFFFFFFLL;
              v35 = sub_100935BE8();
              if (v35)
              {
                v74 = v78 & 0x3FFFFFFFFFFFFFFFLL;
                v144 = sub_100935C18();
                if (__OFSUB__(a6, v144))
                {
                  goto LABEL_343;
                }

                v35 += a6 - v144;
              }

              v100 = __OFSUB__(v366, a6);
              a6 = v366 - a6;
              if (v100)
              {
                goto LABEL_338;
              }

              v145 = sub_100935C08();
              if (v145 >= a6)
              {
                v146 = a6;
              }

              else
              {
                v146 = v145;
              }

              v147 = v377;
              if (!v377)
              {
                goto LABEL_378;
              }

              if (!v35)
              {
                goto LABEL_377;
              }
            }

            else
            {
              if (!v126)
              {
                __s2[0] = v122;
                LOWORD(__s2[1]) = a2;
                BYTE2(__s2[1]) = BYTE2(a2);
                BYTE3(__s2[1]) = BYTE3(a2);
                BYTE4(__s2[1]) = BYTE4(a2);
                BYTE5(__s2[1]) = BYTE5(a2);
                goto LABEL_160;
              }

              v35 = v122;
              if (v122 > v122 >> 32)
              {
                __break(1u);
                goto LABEL_329;
              }

              v137 = sub_100935BE8();
              if (v137)
              {
                v377 = v137;
                v74 = a2 & 0x3FFFFFFFFFFFFFFFLL;
                v138 = sub_100935C18();
                if (__OFSUB__(v122, v138))
                {
                  goto LABEL_335;
                }

                v377 = (v377 + v122 - v138);
              }

              else
              {
                v377 = 0;
              }

              v74 = a2 & 0x3FFFFFFFFFFFFFFFLL;
              sub_100935C08();
              v35 = v380;
              if (a6 != 2)
              {
                if (a6 == 1)
                {
                  v35 = v83;
                  a6 = (v83 >> 32) - v83;
                  if (v83 >> 32 < v83)
                  {
                    goto LABEL_339;
                  }

                  v142 = sub_100935BE8();
                  if (v142)
                  {
                    v366 = v142;
                    v74 = v78 & 0x3FFFFFFFFFFFFFFFLL;
                    v143 = sub_100935C18();
                    if (__OFSUB__(v83, v143))
                    {
                      goto LABEL_346;
                    }

                    v35 = v83 - v143 + v366;
                  }

                  else
                  {
                    v35 = 0;
                  }

                  v152 = sub_100935C08();
                  if (v152 >= a6)
                  {
                    v146 = (v83 >> 32) - v83;
                  }

                  else
                  {
                    v146 = v152;
                  }

                  v147 = v377;
                  if (!v377)
                  {
                    goto LABEL_383;
                  }

                  if (!v35)
                  {
                    goto LABEL_382;
                  }

                  goto LABEL_215;
                }

                v148 = v377;
                __s2[0] = v83;
                LOWORD(__s2[1]) = v78;
                BYTE2(__s2[1]) = BYTE2(v78);
                BYTE3(__s2[1]) = BYTE3(v78);
                BYTE4(__s2[1]) = BYTE4(v78);
                BYTE5(__s2[1]) = BYTE5(v78);
                if (!v377)
                {
                  goto LABEL_376;
                }

LABEL_200:
                v74 = memcmp(v148, __s2, BYTE6(v78));
                sub_1007156D8(v83, v78);
                sub_1007156D8(v122, a2);
                if (!v74)
                {
                  goto LABEL_145;
                }

LABEL_218:

LABEL_109:
                v119 = (v119 + 1);
                if (v121 != v383)
                {
                  continue;
                }

                v153 = v386;
                if ((v386 & 0x8000000000000000) != 0 || (v386 & 0x4000000000000000) != 0)
                {
                  v163 = v386;
                  a6 = sub_1009373F8();
                  v153 = v163;
                  if (!a6)
                  {
                    goto LABEL_232;
                  }

LABEL_222:
                  v154 = v153;
                  __s2[0] = &_swiftEmptyArrayStorage;
                  v74 = __s2;
                  sub_1008E447C(0, a6 & ~(a6 >> 63), 0);
                  if (a6 < 0)
                  {
                    goto LABEL_336;
                  }

                  v155 = 0;
                  v156 = __s2[0];
                  v384 = v154 & 0xC000000000000001;
                  do
                  {
                    if (v384)
                    {
                      sub_100937268();
                    }

                    else
                    {
                    }

                    v157 = sub_10075AFEC();
                    v159 = v158;

                    __s2[0] = v156;
                    v161 = v156[2];
                    v160 = v156[3];
                    if (v161 >= v160 >> 1)
                    {
                      sub_1008E447C((v160 > 1), v161 + 1, 1);
                      v156 = __s2[0];
                    }

                    ++v155;
                    v156[2] = v161 + 1;
                    v162 = &v156[2 * v161];
                    v162[4] = v157;
                    v162[5] = v159;
                  }

                  while (a6 != v155);
                }

                else
                {
                  a6 = *(v386 + 16);
                  if (a6)
                  {
                    goto LABEL_222;
                  }

LABEL_232:

                  v156 = &_swiftEmptyArrayStorage;
                }

                v164 = sub_100791A24(v156);

                if (*(v374 + 16))
                {
                  if (sub_1008E6330(v164, v374))
                  {
                    v165 = v359;
                    sub_100012D50(v371, v359, &unk_100CB4A50, &unk_1009AFFE0);
                    v166 = type metadata accessor for SenderKeyAndState(0);
                    v167 = *(v166 - 8);
                    v168 = (*(v167 + 48))(v165, 1, v166);
                    sub_100013814(v165, &unk_100CB4A50, &unk_1009AFFE0);
                    if (v168 == 1)
                    {
                      v384 = sub_10075A72C();
                      v377 = v169;
                      v170 = sub_10075A43C();
                      v172 = v171;
                      v173 = v364;
                      sub_10075B2DC();
                      sub_10075AA1C();
                      sub_10075AD04();
                      nullsub_23();
                      v174 = v361;
                      sub_10078694C(v384, v377, v170, v172, v173, v175, v176, v177, v361, v178);
                      v179 = sub_10075B6D4();
                      v180 = v360;
                      sub_100780BD0(v174, v179, v181, v360);
                      (*(v167 + 56))(v180, 0, 1, v166);
                      sub_10073545C(v180, v371, &unk_100CB4A50, &unk_1009AFFE0);
                    }
                  }
                }

                v182 = v368;
                sub_100012D50(v373, v368, &unk_100CB4A50, &unk_1009AFFE0);
                a2 = type metadata accessor for SenderKeyAndState(0);
                v83 = *(a2 - 8);
                a6 = v83 + 48;
                v183 = *(v83 + 48);
                if (v183(v182, 1, a2) == 1)
                {
                  sub_100013814(v182, &unk_100CB4A50, &unk_1009AFFE0);
                  v184 = *(sub_1008E6DCC(v374, v164) + 16);

                  if (v184)
                  {
                    v377 = sub_10075A72C();
                    v366 = v185;
                    v365 = sub_10075A43C();
                    v187 = v186;
                    v188 = v364;
                    sub_10075B2DC();
                    sub_10075AA1C();
                    v384 = v83;
                    sub_10075AD04();
                    nullsub_23();
                    v189 = v361;
                    sub_10078694C(v377, v366, v365, v187, v188, v190, v191, v192, v361, v193);
                    v194 = sub_10075B6D4();
                    v195 = v360;
                    v196 = v189;
                    v83 = v384;
                    sub_100780BD0(v196, v194, v197, v360);

                    (*(v83 + 56))(v195, 0, 1, a2);
                    sub_10073545C(v195, v373, &unk_100CB4A50, &unk_1009AFFE0);
                  }

                  else
                  {
                  }
                }

                else
                {

                  sub_100013814(v182, &unk_100CB4A50, &unk_1009AFFE0);
                }

                v198 = v369;
                sub_100012D50(v371, v369, &unk_100CB4A50, &unk_1009AFFE0);
                v199 = v183(v198, 1, a2);
                sub_100013814(v198, &unk_100CB4A50, &unk_1009AFFE0);
                v35 = v380;
                if (v199 == 1 || (v200 = v363, sub_100012D50(v373, v363, &unk_100CB4A50, &unk_1009AFFE0), v201 = v183(v200, 1, a2), sub_100013814(v200, &unk_100CB4A50, &unk_1009AFFE0), v201 == 1))
                {
                  v74 = v370;
                  if (v376 != v383)
                  {
                    goto LABEL_100;
                  }
                }

                else
                {
                  v74 = v370;
                }

                sub_100012D50(v371, v74, &unk_100CB4A50, &unk_1009AFFE0);
                if (v183(v74, 1, a2) == 1)
                {
                  v370 = a2;
                  sub_100013814(v74, &unk_100CB4A50, &unk_1009AFFE0);
                  v371 = OBJC_IVAR___IDSQuerySDPersistenceManager_logger;
                  v202 = sub_1009364B8();
                  v203 = sub_100936F18();
                  if (os_log_type_enabled(v202, v203))
                  {
                    v204 = swift_slowAlloc();
                    *v204 = 0;
                    _os_log_impl(&_mh_execute_header, v202, v203, "No key acked by all Stewie capable devices - checking for acked key by recently offgrid device", v204, 2u);
                  }

                  v35 = 0;
                  a2 = v353 + 48;
                  v205 = &_swiftEmptyArrayStorage;
                  v373 = (v353 + 32);
                  v206 = &unk_100CBB1F8;
                  v77 = v358;
                  v384 = v83;
                  v376 = v353 + 48;
                  do
                  {
                    if (v381)
                    {
                      v74 = sub_100937268();
                      a6 = v35 + 1;
                      if (__OFADD__(v35, 1))
                      {
                        goto LABEL_341;
                      }
                    }

                    else
                    {
                      if (v35 >= *(v380 + 16))
                      {
                        goto LABEL_353;
                      }

                      v74 = *(v380 + 8 * v35 + 32);

                      a6 = v35 + 1;
                      if (__OFADD__(v35, 1))
                      {
                        goto LABEL_341;
                      }
                    }

                    sub_10075DB04();
                    v207 = v375;
                    *&v382 = *a2;
                    if ((v382)(v77, 1, v375) == 1)
                    {

                      sub_100013814(v77, &qword_100CB4AC0, &qword_1009AC370);
                    }

                    else
                    {
                      v377 = a6;
                      v208 = v77;
                      v209 = *v373;
                      v210 = v206;
                      v211 = v357;
                      (*v373)(v357, v208, v207);
                      v212 = *(v372 + 48);
                      v213 = v356;
                      *v356 = v74;
                      v214 = v211;
                      v206 = v210;
                      (v209)(v213 + v212, v214, v207);
                      sub_100021E3C(v213, v362, v210, &unk_1009BF3C8);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v205 = sub_1008E3EF0(0, v205[2] + 1, 1, v205);
                      }

                      v216 = v205[2];
                      v215 = v205[3];
                      v83 = v384;
                      a6 = v377;
                      if (v216 >= v215 >> 1)
                      {
                        v205 = sub_1008E3EF0((v215 > 1), v216 + 1, 1, v205);
                      }

                      a2 = v376;
                      v205[2] = v216 + 1;
                      sub_100021E3C(v362, v205 + ((*(v367 + 80) + 32) & ~*(v367 + 80)) + *(v367 + 72) * v216, v206, &unk_1009BF3C8);
                      v77 = v358;
                    }

                    ++v35;
                    v88 = a6 == v383;
                    a6 = v375;
                  }

                  while (!v88);

                  __s2[0] = v205;

                  v240 = v379;
                  sub_1008E6200(__s2);
                  v379 = v240;
                  if (v240)
                  {
                    goto LABEL_390;
                  }

                  v241 = __s2[0];
                  v242 = *(__s2[0] + 16);
                  if (v242)
                  {
                    __s2[0] = &_swiftEmptyArrayStorage;
                    sub_1009372B8();
                    v243 = *(v367 + 80);
                    v381 = v241;
                    v244 = v241 + ((v243 + 32) & ~v243);
                    v383 = *(v367 + 72);
                    v245 = (v353 + 8);
                    v246 = v372;
                    v247 = v350;
                    v248 = v349;
                    do
                    {
                      sub_100012D50(v244, v248, &unk_100CBB1F8, &unk_1009BF3C8);
                      sub_100021E3C(v248, v247, &unk_100CBB1F8, &unk_1009BF3C8);
                      (*v245)(v247 + *(v246 + 48), a6);
                      sub_100937298();
                      sub_1009372C8();
                      a6 = v375;
                      sub_1009372D8();
                      sub_1009372A8();
                      v244 += v383;
                      --v242;
                    }

                    while (v242);

                    v74 = __s2[0];
                    v83 = v384;
LABEL_307:
                    v77 = v347;
                    v90 = v346;
                    if (v74 >> 62)
                    {
                      goto LABEL_368;
                    }

                    if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_369;
                    }

                    goto LABEL_309;
                  }

LABEL_306:

                  v74 = &_swiftEmptyArrayStorage;
                  goto LABEL_307;
                }

                goto LABEL_286;
              }

              a6 = *(v83 + 16);
              v366 = *(v83 + 24);
              v74 = v78 & 0x3FFFFFFFFFFFFFFFLL;
              v35 = sub_100935BE8();
              if (v35)
              {
                v74 = v78 & 0x3FFFFFFFFFFFFFFFLL;
                v149 = sub_100935C18();
                if (__OFSUB__(a6, v149))
                {
                  goto LABEL_345;
                }

                v35 += a6 - v149;
              }

              v100 = __OFSUB__(v366, a6);
              a6 = v366 - a6;
              if (v100)
              {
                goto LABEL_340;
              }

              v150 = sub_100935C08();
              if (v150 >= a6)
              {
                v146 = a6;
              }

              else
              {
                v146 = v150;
              }

              v147 = v377;
              if (!v377)
              {
                goto LABEL_385;
              }

              if (!v35)
              {
                goto LABEL_384;
              }
            }

LABEL_215:
            if (v147 == v35)
            {
              sub_1007156D8(v83, v78);
              sub_1007156D8(v122, a2);
              v35 = v380;
              goto LABEL_145;
            }

            v74 = memcmp(v147, v35, v146);
            sub_1007156D8(v83, v78);
            sub_1007156D8(v122, a2);
            v35 = v380;
            if (v74)
            {
              goto LABEL_218;
            }

LABEL_145:
            v74 = &v386;
            sub_100937298();
            sub_1009372C8();
            sub_1009372D8();
            sub_1009372A8();
            goto LABEL_109;
          }

LABEL_143:
          sub_1007156D8(v124, v125);
          v128 = v122;
          v129 = a2;
LABEL_144:
          sub_1007156D8(v128, v129);
          goto LABEL_145;
        }

LABEL_108:

        sub_1007156D8(v83, v78);
        sub_1007156D8(v122, a2);
        goto LABEL_109;
      }

LABEL_126:
      if (a6 == 2)
      {
        v131 = *(v124 + 16);
        v130 = *(v124 + 24);
        v100 = __OFSUB__(v130, v131);
        v132 = v130 - v131;
        if (v100)
        {
          __break(1u);
LABEL_320:
          __break(1u);
          goto LABEL_321;
        }

LABEL_135:
        if (v127 == v132)
        {
          goto LABEL_139;
        }
      }

      else if (!v127)
      {
        goto LABEL_143;
      }

      goto LABEL_108;
    }

    break;
  }

  if (v126 <= 1)
  {
    if (v126)
    {
      LODWORD(v127) = HIDWORD(v122) - v122;
      if (__OFSUB__(HIDWORD(v122), v122))
      {
        goto LABEL_326;
      }

      v127 = v127;
      if (a6 <= 1)
      {
        goto LABEL_133;
      }
    }

    else
    {
      v127 = BYTE6(a2);
      if (a6 <= 1)
      {
        goto LABEL_133;
      }
    }

    goto LABEL_126;
  }

  if (v126 != 2)
  {
    v127 = 0;
    if (a6 <= 1)
    {
      goto LABEL_133;
    }

    goto LABEL_126;
  }

  v134 = *(v122 + 16);
  v133 = *(v122 + 24);
  v100 = __OFSUB__(v133, v134);
  v127 = v133 - v134;
  if (!v100)
  {
    goto LABEL_132;
  }

  __break(1u);
LABEL_326:
  __break(1u);
LABEL_327:

  (v78)(v83, a2);
  (v78)(a6, a2);
  (v78)(v347, a2);
}

void *sub_1008C1000(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = sub_100706B30(&qword_100CBA368, &qword_1009BE728);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15[-v11];
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();
  v21[0] = &_swiftEmptyArrayStorage;
  v16 = v21;
  v17 = v12;
  (*((swift_isaMask & *v4) + 0x118))(a4, sub_1008F4D70, v15);
  v13 = v21[0];
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t sub_1008C12A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v56 = a4;
  v43 = a3;
  v48 = a1;
  v62 = a5;
  v6 = sub_100706B30(&qword_100CBA430, &qword_1009BE910);
  v7 = *(v6 - 8);
  v58 = v6;
  v59 = v7;
  __chkstk_darwin(v6);
  v54 = v41 - v8;
  v55 = sub_100706B30(&qword_100CBA6A0, &qword_1009BEB00);
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = v41 - v9;
  v10 = sub_100706B30(&qword_100CBA6A8, &qword_1009BEB08);
  v11 = *(v10 - 8);
  v60 = v10;
  v61 = v11;
  __chkstk_darwin(v10);
  v53 = v41 - v12;
  v47 = sub_100706B30(&qword_100CBAD28, &qword_1009BF028);
  v49 = *(v47 - 8);
  __chkstk_darwin(v47);
  v14 = v41 - v13;
  v15 = sub_100706B30(&qword_100CBA6B0, &qword_1009BEB10);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v41 - v17;
  v19 = sub_100706B30(&qword_100CBA6B8, &qword_1009BEB18);
  v20 = *(v19 - 8);
  v44 = v19;
  v45 = v20;
  __chkstk_darwin(v19);
  v22 = v41 - v21;
  v50 = sub_100706B30(&qword_100CBAD30, &qword_1009BF030);
  v52 = *(v50 - 8);
  __chkstk_darwin(v50);
  v46 = v41 - v23;
  v48 = *v48;
  sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0, &qword_1009BEB10, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v24 = *(v16 + 8);
  v41[1] = v16 + 8;
  v42 = v24;
  v24(v18, v15);
  v63 = a2;
  v64 = v43;
  v25 = v14;
  sub_100935D48();
  v43 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100014C88(&qword_100CBA6F0, &qword_100CBA6B8, &qword_1009BEB18, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBAD38, &qword_100CBAD28, &qword_1009BF028, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  sub_1008EFEF8();
  v26 = v44;
  v27 = v47;
  sub_100935C68();
  (*(v49 + 8))(v25, v27);
  (*(v45 + 8))(v22, v26);
  sub_100935D58();
  swift_getKeyPath();
  v28 = v51;
  sub_100935C78();

  v42(v18, v15);
  LOBYTE(v63) = v56;
  v29 = v54;
  sub_100935D48();
  sub_100014C88(&qword_100CBA708, &qword_100CBA6A0, &qword_1009BEB00, v43);
  sub_100014C88(&qword_100CBA710, &qword_100CBA430, &qword_1009BE910, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v30 = v53;
  v31 = v29;
  v32 = v55;
  v33 = v58;
  sub_100935C68();
  (*(v59 + 8))(v31, v33);
  (*(v57 + 8))(v28, v32);
  v34 = sub_100706B30(&qword_100CBAD40, &qword_1009BF038);
  v35 = v62;
  v62[3] = v34;
  v35[4] = sub_1008F2534();
  sub_100014250(v35);
  sub_100014C88(&qword_100CBAD60, &qword_100CBAD30, &qword_1009BF030, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  sub_100014C88(&qword_100CBA720, &qword_100CBA6A8, &qword_1009BEB08, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v36 = v46;
  v37 = v30;
  v38 = v50;
  v39 = v60;
  sub_100935CF8();
  (*(v61 + 8))(v37, v39);
  return (*(v52 + 8))(v36, v38);
}

void *sub_1008C1A64(uint64_t a1, char a2, uint64_t a3)
{
  v7 = sub_100706B30(&qword_100CBA368, &qword_1009BE728);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-v9];
  v16 = a1;
  v17 = a2;
  v18[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();
  v18[0] = &_swiftEmptyArrayStorage;
  v14 = v18;
  v15 = v10;
  (*((swift_isaMask & *v3) + 0x118))(a3, sub_1008F4D70, v13);
  v11 = v18[0];
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t sub_1008C1D00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v56 = a3;
  v62 = a4;
  v6 = sub_100706B30(&qword_100CBA430, &qword_1009BE910);
  v7 = *(v6 - 8);
  v58 = v6;
  v59 = v7;
  __chkstk_darwin(v6);
  v54 = v42 - v8;
  v55 = sub_100706B30(&qword_100CBA6A0, &qword_1009BEB00);
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v50 = v42 - v9;
  v10 = sub_100706B30(&qword_100CBA6A8, &qword_1009BEB08);
  v11 = *(v10 - 8);
  v60 = v10;
  v61 = v11;
  __chkstk_darwin(v10);
  v53 = v42 - v12;
  v13 = sub_100706B30(&qword_100CBA6B0, &qword_1009BEB10);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v42 - v15;
  v17 = sub_100706B30(&qword_100CBA6B8, &qword_1009BEB18);
  v18 = *(v17 - 8);
  v48 = v17;
  v49 = v18;
  __chkstk_darwin(v17);
  v20 = v42 - v19;
  v21 = sub_100706B30(&qword_100CBA6C0, &qword_1009BEB20);
  v22 = *(v21 - 8);
  v46 = v21;
  v47 = v22;
  __chkstk_darwin(v21);
  v24 = v42 - v23;
  v25 = sub_100706B30(&qword_100CBA6C8, &qword_1009BEB28);
  v26 = *(v25 - 8);
  v51 = v25;
  v52 = v26;
  __chkstk_darwin(v25);
  v63 = v42 - v27;
  v44 = *a1;
  v65 = a2;
  sub_100706B30(&qword_100CBA6D8, &qword_1009BEB38);
  sub_100935D48();
  sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0, &qword_1009BEB10, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v28 = *(v14 + 8);
  v42[1] = v14 + 8;
  v43 = v28;
  v28(v16, v13);
  v45 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_100014C88(&qword_100CBA6E8, &qword_100CBA6C0, &qword_1009BEB20, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v42[0] = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100014C88(&qword_100CBA6F0, &qword_100CBA6B8, &qword_1009BEB18, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBA6F8, &qword_100CBA6D8, &qword_1009BEB38, &protocol conformance descriptor for [A]);
  sub_1008EFEF8();
  v29 = v46;
  v30 = v48;
  sub_100935CA8();
  (*(v49 + 8))(v20, v30);
  (*(v47 + 8))(v24, v29);
  sub_100935D58();
  swift_getKeyPath();
  v31 = v50;
  sub_100935C78();

  v43(v16, v13);
  v64 = v56;
  v32 = v54;
  sub_100935D48();
  sub_100014C88(&qword_100CBA708, &qword_100CBA6A0, &qword_1009BEB00, v42[0]);
  sub_100014C88(&qword_100CBA710, &qword_100CBA430, &qword_1009BE910, v45);
  v33 = v53;
  v34 = v55;
  v35 = v58;
  sub_100935C68();
  (*(v59 + 8))(v32, v35);
  (*(v57 + 8))(v31, v34);
  v36 = sub_100706B30(&qword_100CBA6D0, &qword_1009BEB30);
  v37 = v62;
  v62[3] = v36;
  v37[4] = sub_1008EFFD8();
  sub_100014250(v37);
  sub_100014C88(&qword_100CBA718, &qword_100CBA6C8, &qword_1009BEB28, &protocol conformance descriptor for PredicateExpressions.SequenceContains<A, B>);
  sub_100014C88(&qword_100CBA720, &qword_100CBA6A8, &qword_1009BEB08, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v38 = v63;
  v39 = v51;
  v40 = v60;
  sub_100935CF8();
  (*(v61 + 8))(v33, v40);
  return (*(v52 + 8))(v38, v39);
}

void *sub_1008C24F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100706B30(&qword_100CBA368, &qword_1009BE728);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v57 - v13;
  v72 = a3;
  v73 = a4;
  v75[1] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();
  v75[0] = &_swiftEmptyArrayStorage;
  v70 = v75;
  v71 = v14;
  (*((swift_isaMask & *v5) + 0x118))(a5, sub_1008F4D70, v69);
  v15 = v75[0];
  v63 = a1;
  v74 = &_swiftEmptyArrayStorage;
  if (v75[0] >> 62)
  {
    goto LABEL_109;
  }

  v16 = *((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  v17 = v63;
  if (v16)
  {
    while (1)
    {
      v57 = v14;
      v58 = v12;
      v59 = v11;
      v14 = 0;
      v67 = v15 & 0xFFFFFFFFFFFFFF8;
      v68 = v15 & 0xC000000000000001;
      v18 = !v17 && a2 == 0xC000000000000000;
      v19 = !v18;
      v64 = v19;
      v66 = a2 >> 62;
      v20 = v17;
      v21 = HIDWORD(v17);
      v22 = __OFSUB__(v21, v20);
      v23 = v21 - v20;
      v24 = v22;
      v61 = v24;
      v60 = v23;
      v62 = BYTE6(a2);
      v65 = v15;
      while (v68)
      {
        sub_100937268();
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_96:
          __break(1u);
LABEL_97:
          v54 = v74;
          v11 = v59;
          v12 = v58;
          v14 = v57;
          goto LABEL_111;
        }

LABEL_20:
        v15 = sub_10075A43C();
        v28 = v15;
        v29 = v27;
        v30 = v27 >> 62;
        if ((v27 >> 62) > 1)
        {
          if (v30 != 2)
          {
            v33 = 0;
            v31 = 0;
            v34 = 0;
            v32 = 0;
            goto LABEL_31;
          }

          v31 = *(v15 + 16);
          v33 = *(v15 + 24);
        }

        else
        {
          if (!v30)
          {
            v31 = 0;
            v32 = 0;
            v33 = BYTE6(v27);
            v34 = BYTE6(v27);
            goto LABEL_31;
          }

          v31 = v15;
          v33 = v15 >> 32;
        }

        if (v33 < v31)
        {
          goto LABEL_99;
        }

        if (v30 == 2)
        {
          v32 = *(v15 + 16);
          v34 = *(v15 + 24);
        }

        else
        {
          v32 = v15;
          v34 = v15 >> 32;
        }

LABEL_31:
        if (v34 < v33 || v33 < v32)
        {
          goto LABEL_100;
        }

        if (__OFSUB__(v33, v31))
        {
          goto LABEL_101;
        }

        if (v33 == v31)
        {
          if (v30 <= 1)
          {
            if (!v30)
            {
              goto LABEL_58;
            }

            v35 = v15 >> 32;
LABEL_54:
            v15 = v28;
            goto LABEL_57;
          }

          if (v30 != 2)
          {
            goto LABEL_58;
          }

          v35 = *(v15 + 24);
LABEL_56:
          v15 = *(v28 + 16);
          goto LABEL_57;
        }

        v35 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_103;
        }

        if (v30 > 1)
        {
          if (v30 == 2)
          {
            v36 = *(v15 + 16);
            v37 = *(v15 + 24);
          }

          else
          {
            v37 = 0;
            v36 = 0;
          }
        }

        else if (v30)
        {
          v36 = v15;
          v37 = v15 >> 32;
        }

        else
        {
          v36 = 0;
          v37 = BYTE6(v29);
        }

        if (v37 < v35 || v35 < v36)
        {
          goto LABEL_104;
        }

        v15 = 0;
        if (v30 <= 1)
        {
          if (!v30)
          {
            goto LABEL_57;
          }

          goto LABEL_54;
        }

        if (v30 != 3)
        {
          goto LABEL_56;
        }

LABEL_57:
        if (v35 < v15)
        {
          goto LABEL_102;
        }

LABEL_58:
        v11 = v16;
        v38 = a2;
        v39 = sub_100935E68();
        a2 = v40;
        v15 = sub_1007156D8(v28, v29);
        v41 = a2 >> 62;
        if (a2 >> 62 == 3)
        {
          if (v39)
          {
            v42 = 0;
          }

          else
          {
            v42 = a2 == 0xC000000000000000;
          }

          v43 = v66;
          v45 = !v42 || v66 < 3;
          if (((v45 | v64) & 1) == 0)
          {
            v25 = 0;
            v26 = 0xC000000000000000;
            goto LABEL_14;
          }

          v46 = 0;
          if (v66 <= 1)
          {
LABEL_83:
            v49 = v62;
            if (v43)
            {
              v49 = v60;
              if (v61)
              {
                goto LABEL_106;
              }
            }

            goto LABEL_85;
          }
        }

        else
        {
          v43 = v66;
          if (v41 == 2)
          {
            v51 = *(v39 + 16);
            v50 = *(v39 + 24);
            v22 = __OFSUB__(v50, v51);
            v46 = v50 - v51;
            if (v22)
            {
              goto LABEL_108;
            }

            if (v66 <= 1)
            {
              goto LABEL_83;
            }
          }

          else if (v41 == 1)
          {
            LODWORD(v46) = HIDWORD(v39) - v39;
            if (__OFSUB__(HIDWORD(v39), v39))
            {
              goto LABEL_107;
            }

            v46 = v46;
            if (v66 <= 1)
            {
              goto LABEL_83;
            }
          }

          else
          {
            v46 = BYTE6(a2);
            if (v66 <= 1)
            {
              goto LABEL_83;
            }
          }
        }

        if (v43 != 2)
        {
          if (v46)
          {
            goto LABEL_89;
          }

LABEL_91:
          v25 = v39;
          v26 = a2;
LABEL_14:
          sub_1007156D8(v25, v26);
          goto LABEL_15;
        }

        v48 = *(v63 + 16);
        v47 = *(v63 + 24);
        v22 = __OFSUB__(v47, v48);
        v49 = v47 - v48;
        if (v22)
        {
          goto LABEL_105;
        }

LABEL_85:
        if (v46 != v49)
        {
LABEL_89:

          sub_1007156D8(v39, a2);
          goto LABEL_90;
        }

        if (v46 < 1)
        {
          goto LABEL_91;
        }

        v52 = v63;
        sub_100715738(v63, v38);
        v53 = sub_10071C8A0(v39, a2, v52, v38);
        sub_1007156D8(v39, a2);
        if ((v53 & 1) == 0)
        {

LABEL_90:
          a2 = v38;
          v16 = v11;
          goto LABEL_16;
        }

LABEL_15:
        a2 = v38;
        v16 = v11;
        sub_100937298();
        sub_1009372C8();
        sub_1009372D8();
        sub_1009372A8();
LABEL_16:
        ++v14;
        v15 = v65;
        if (v12 == v16)
        {
          goto LABEL_97;
        }
      }

      if (v14 < *(v67 + 16))
      {
        break;
      }

      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
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
      __break(1u);
LABEL_109:
      v55 = v15;
      v16 = sub_1009373F8();
      v15 = v55;
      v17 = v63;
      if (!v16)
      {
        goto LABEL_110;
      }
    }

    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_96;
    }

    goto LABEL_20;
  }

LABEL_110:
  v54 = &_swiftEmptyArrayStorage;
LABEL_111:

  (*(v12 + 1))(v14, v11);
  return v54;
}

uint64_t sub_1008C2C10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v56 = a5;
  v49 = a3;
  v42 = a2;
  v48 = a1;
  v62 = a6;
  v6 = sub_100706B30(&qword_100CBA430, &qword_1009BE910);
  v7 = *(v6 - 8);
  v58 = v6;
  v59 = v7;
  __chkstk_darwin(v6);
  v54 = &v40 - v8;
  v55 = sub_100706B30(&qword_100CBA6A0, &qword_1009BEB00);
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = &v40 - v9;
  v10 = sub_100706B30(&qword_100CBA6A8, &qword_1009BEB08);
  v11 = *(v10 - 8);
  v60 = v10;
  v61 = v11;
  __chkstk_darwin(v10);
  v53 = &v40 - v12;
  v13 = sub_100706B30(&qword_100CBA4C0, &qword_1009BE998);
  v14 = *(v13 - 8);
  v46 = v13;
  v47 = v14;
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  v17 = sub_100706B30(&qword_100CBA6B0, &qword_1009BEB10);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v40 - v19;
  v43 = sub_100706B30(&qword_100CBA828, &qword_1009BEC18);
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v22 = &v40 - v21;
  v50 = sub_100706B30(&qword_100CBAC28, &qword_1009BEFA0);
  v52 = *(v50 - 8);
  __chkstk_darwin(v50);
  v45 = &v40 - v23;
  v48 = *v48;
  sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0, &qword_1009BEB10, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  v24 = *(v18 + 8);
  v40 = v18 + 8;
  v41 = v24;
  v24(v20, v17);
  v63 = v42;
  v64 = v49;
  sub_100935D48();
  sub_100014C88(&qword_100CBA848, &qword_100CBA828, &qword_1009BEC18, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0, &qword_1009BE998, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v25 = v43;
  v26 = v46;
  sub_100935C68();
  (*(v47 + 8))(v16, v26);
  (*(v44 + 8))(v22, v25);
  sub_100935D58();
  swift_getKeyPath();
  v27 = v51;
  sub_100935C78();

  v41(v20, v17);
  LOBYTE(v63) = v56;
  v28 = v54;
  sub_100935D48();
  sub_100014C88(&qword_100CBA708, &qword_100CBA6A0, &qword_1009BEB00, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBA710, &qword_100CBA430, &qword_1009BE910, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v29 = v53;
  v30 = v28;
  v31 = v55;
  v32 = v58;
  sub_100935C68();
  (*(v59 + 8))(v30, v32);
  (*(v57 + 8))(v27, v31);
  v33 = sub_100706B30(&qword_100CBAC30, &qword_1009BEFA8);
  v34 = v62;
  v62[3] = v33;
  v34[4] = sub_1008F1E04();
  sub_100014250(v34);
  sub_100014C88(&qword_100CBAC38, &qword_100CBAC28, &qword_1009BEFA0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  sub_100014C88(&qword_100CBA720, &qword_100CBA6A8, &qword_1009BEB08, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v35 = v45;
  v36 = v29;
  v37 = v50;
  v38 = v60;
  sub_100935CF8();
  (*(v61 + 8))(v36, v38);
  return (*(v52 + 8))(v35, v37);
}

unint64_t sub_1008C33CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100706B30(&qword_100CBA370, &qword_1009BE730);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  v16 = a1;
  v19[1] = type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex(0);
  sub_100936128();
  v19[0] = &_swiftEmptyArrayStorage;
  v18 = 1;
  v13 = v8;
  v14 = v19;
  v15 = &v17;
  v9 = swift_isaMask & *v2;
  v17 = 0;
  (*(v9 + 280))(a2, sub_1008ECF34, v12);
  v10 = v17;
  LOBYTE(a2) = v18;

  (*(v6 + 8))(v8, v5);
  return v10 | (a2 << 32);
}

uint64_t sub_1008C369C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a2;
  v4 = sub_100706B30(&qword_100CBAD90, &qword_1009BF080);
  v5 = *(v4 - 8);
  v19 = v4;
  v20 = v5;
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_100706B30(&qword_100CBA968, &qword_1009BED30);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = sub_100706B30(&qword_100CBAD98, &qword_1009BF088);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - v14;
  sub_100014C88(&qword_100CBA978, &qword_100CBA968, &qword_1009BED30, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  sub_100935C78();

  (*(v9 + 8))(v11, v8);
  v21 = v18;
  sub_100935D48();
  a3[3] = sub_100706B30(&qword_100CBADA0, &qword_1009BF0B8);
  a3[4] = sub_1008F2BEC();
  sub_100014250(a3);
  sub_100014C88(&qword_100CBADC0, &qword_100CBAD98, &qword_1009BF088, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_100014C88(&qword_100CBADC8, &qword_100CBAD90, &qword_1009BF080, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v16 = v19;
  sub_100935C68();
  (*(v20 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1008C3A08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v23 = a4;
  v24 = a3;
  v6 = sub_100706B30(&qword_100CBA958, &qword_1009BED28);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_100706B30(&qword_100CBAD88, &qword_1009BF078);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = sub_100706B30(&qword_100CBA370, &qword_1009BE730);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8, a2, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex(0);
  sub_100014C40(&qword_100CBA960, type metadata accessor for SDPersistenceSchemaV6.IDSGroupEncryptionKeyRollIndex, &unk_1009AF0DC);
  sub_100936828();
  sub_1009367D8();
  v15 = sub_100936728();
  if (v4)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v17 = v23;
  v18 = v24;
  *v24 = v15;

  v19 = *v18;
  if (v19 >> 62)
  {
    result = sub_1009373F8();
    v20 = result;
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:
    v21 = 0;
    goto LABEL_11;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v19 & 0xC000000000000001) != 0)
  {

    sub_100937268();
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v21 = sub_10075F6B4();

LABEL_11:
  result = (*(v10 + 8))(v12, v9);
  *v17 = v21;
  *(v17 + 4) = v20 == 0;
  return result;
}

uint64_t sub_1008C3D34(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100706B30(&unk_100CBA690, &qword_1009BEAF8);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100706B30(&qword_100CBA8D8, &qword_1009BECF8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - v9;
  v11 = sub_100706B30(&qword_100CBA368, &qword_1009BE728);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution, &unk_1009AEFB0);
  sub_100936828();
  v12 = sub_100936728();
  result = (*(v8 + 8))(v10, v7);
  if (!v2)
  {
    *a2 = v12;
  }

  return result;
}

uint64_t sub_1008C3F40(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  v4[3] = a1;
  (*((swift_isaMask & *v2) + 0x118))(0, sub_1008ECF70, v4);
  return 1;
}

uint64_t sub_1008C40DC(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v79 = a4;
  v80 = a1;
  v88 = a3;
  v78 = sub_100936038();
  v5 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v59[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = a2;
  v8 = type metadata accessor for SenderKeyAndState(0);
  __chkstk_darwin(v8);
  v10 = &v59[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v7 >> 62)
  {
    v11 = sub_1009373F8();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  v12 = type metadata accessor for SenderKeyInfo(0);
  result = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  v76 = result;
  if (v11 < 1)
  {
    __break(1u);
    return result;
  }

  v15 = 0;
  v16 = (v88 + *(v8 + 20));
  v17 = *(v12 + 28);
  v72 = *(v12 + 24);
  v18 = (v88 + v17);
  v19 = *v18;
  v20 = v18[1];
  v22 = v18[2];
  v21 = v18[3];
  v82 = v22;
  v89 = v21;
  v70 = v88[2];
  v71 = IDSRegistrationPropertySupportsStewie;
  v69 = v88[3];
  v23 = v7;
  v68 = v7 & 0xC000000000000001;
  v67 = (v5 + 16);
  v66 = *v88;
  v65 = v88[1];
  v25 = *v16;
  v24 = v16[1];
  v64 = v25;
  v63 = v24;
  v62 = OBJC_IVAR___IDSQuerySDPersistenceManager_logger;
  *&v14 = 136315906;
  v60 = v14;
  v74 = v10;
  v75 = v7;
  v73 = v11;
  v81 = v20;
  v61 = v19;
  do
  {
    if (v68)
    {
      v40 = sub_100937268();
    }

    else
    {
      v40 = *(v23 + 8 * v15 + 32);
    }

    v41 = v40;
    v42 = [v40 capabilities];
    v43 = [v42 valueForCapability:v71];

    sub_1008ED848(v88, v10, type metadata accessor for SenderKeyAndState);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v44 = v41;
    v45 = sub_1009364B8();
    v46 = sub_100936F18();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v87 = v43;
      v49 = v48;
      v85 = swift_slowAlloc();
      v90 = v85;
      *v47 = v60;
      v50 = sub_100935E08();
      v51 = v10;
      v52 = v50;
      v53 = v19;
      v55 = v54;
      sub_1008ED8B0(v51, type metadata accessor for SenderKeyAndState);
      v56 = sub_10001273C(v52, v55, &v90);

      *(v47 + 4) = v56;
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_10001273C(v53, v81, &v90);
      *(v47 + 22) = 2080;
      *(v47 + 24) = sub_10001273C(v82, v89, &v90);
      *(v47 + 32) = 2112;
      v57 = [v44 pushTokenObject];
      *(v47 + 34) = v57;
      *v49 = v57;
      _os_log_impl(&_mh_execute_header, v45, v46, "Saving generated sender key and state with keyID: %s senderURI: %s receiverURI: %s receiverPushToken: %@", v47, 0x2Au);
      sub_100013814(v49, &qword_100CB36B0, &unk_1009AD140);
      v43 = v87;

      swift_arrayDestroy();
    }

    else
    {

      sub_1008ED8B0(v10, type metadata accessor for SenderKeyAndState);
    }

    v26 = v44;
    v86 = v44;
    v87 = v15 + 1;
    LODWORD(v85) = v43 > 0;
    v27 = v69;
    v28 = v70;
    sub_100715738(v70, v69);
    v29 = v66;
    v30 = v65;
    sub_100715738(v66, v65);
    v31 = [v26 pushToken];
    v32 = sub_100935EA8();
    v83 = v33;
    v84 = v32;

    v34 = v77;
    (*v67)(v77, v88 + v72, v78);
    v35 = v64;
    v36 = v63;
    sub_100715738(v64, v63);
    LOBYTE(v31) = sub_10001E2FC();
    v37 = sub_10001E2FC();
    v38 = sub_10001E2FC();
    v58 = v36;
    v39 = v27;
    v15 = v87;
    v19 = v61;
    sub_10075E86C(v28, v39, v29, v30, v61, v81, v82, v89, v84, v83, v34, v35, v58, 1u, v31 & 1, v85, v37 & 1, v38 & 1);
    sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution, &unk_1009AEFB0);
    sub_100936768();

    v10 = v74;
    v23 = v75;
  }

  while (v73 != v15);
LABEL_13:
  result = sub_1009366F8();
  if (result)
  {
    return sub_100936708();
  }

  return result;
}

uint64_t sub_1008C477C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a2;
  v9[4] = a1;
  v10 = swift_allocObject();
  v11 = swift_isaMask & *v4;
  v10[2] = v4;
  v10[3] = a2;
  v10[4] = a1;
  v10[5] = a3;
  v10[6] = a4;
  v12 = *(v11 + 272);
  v13 = v4;
  swift_bridgeObjectRetain_n();
  v14 = a1;
  v15 = v13;
  v16 = v14;
  sub_1000254AC(a3, a4);
  v12(sub_1008ECF90, v9, sub_1008ECFC0, v10);
}

uint64_t sub_1008C48D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v14 = [a4 rawToken];
  v15 = sub_100935EA8();
  v17 = v16;

  v18 = sub_1008B9584(a3, v15, v17, a1);
  result = sub_1007156D8(v15, v17);
  if (!(v18 >> 62))
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_14:
  }

  result = sub_1009373F8();
  v20 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v20 >= 1)
  {
    for (i = 0; i != v20; ++i)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        sub_100937268();
      }

      else
      {
      }

      sub_10075C104(1);
      sub_10075C1D0();
      v22 = sub_100936038();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v13, 1, v22) == 1)
      {
        sub_100013814(v13, &qword_100CB4AC0, &qword_1009AC370);
        sub_100935FF8();
        (*(v23 + 56))(v9, 0, 1, v22);
        sub_10075C598(v9);
      }

      else
      {

        sub_100013814(v13, &qword_100CB4AC0, &qword_1009AC370);
      }
    }
  }

  __break(1u);
  return result;
}

id sub_1008C4B78(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v25 = sub_1009364F8();
  v28 = *(v25 - 8);
  __chkstk_darwin(v25);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100936528();
  v26 = *(v14 - 8);
  v27 = v14;
  __chkstk_darwin(v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = im_primary_queue();
  if (result)
  {
    v18 = result;
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = a3;
    v19[5] = a4;
    v19[6] = a5;
    v19[7] = a6;
    aBlock[4] = sub_1008F29C4;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000154AC;
    aBlock[3] = &unk_100BEBD68;
    v20 = _Block_copy(aBlock);
    swift_errorRetain();
    v21 = a2;

    v22 = a4;
    sub_1000254AC(a5, a6);
    sub_100936508();
    v29 = &_swiftEmptyArrayStorage;
    sub_100014C40(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100706B30(&unk_100CB3550, &qword_1009AC360);
    sub_100014C88(&qword_100CB4AB0, &unk_100CB3550, &qword_1009AC360, &protocol conformance descriptor for [A]);
    v23 = v25;
    sub_1009370B8();
    sub_100936F88();
    _Block_release(v20);

    (*(v28 + 8))(v13, v23);
    (*(v26 + 8))(v16, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1008C4E98(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_allocObject();
  v15[2] = v7;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;
  v15[7] = a5;
  v16 = swift_allocObject();
  v17 = swift_isaMask & *v7;
  v16[2] = v7;
  v16[3] = a3;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a6;
  v16[7] = a7;
  v18 = *(v17 + 272);
  v19 = v7;
  v20 = a1;
  v21 = a2;
  swift_bridgeObjectRetain_n();
  v22 = v19;
  v23 = v20;
  v24 = v21;

  sub_1000254AC(a6, a7);
  v18(sub_1008ECFD0, v15, sub_1008ED028, v16);
}

uint64_t sub_1008C5024(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = a5;
  v38 = a2;
  v39 = a1;
  v11 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - v12;
  v14 = sub_100706B30(&qword_100CBA368, &qword_1009BE728);
  v42 = *(v14 - 8);
  v43 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v38 - v16;
  v18 = [a3 prefixedURI];
  v19 = sub_100936B38();
  v21 = v20;

  v22 = [a4 prefixedURI];
  v23 = sub_100936B38();
  v25 = v24;

  v47 = v41;
  v48 = v19;
  v49 = v21;
  v50 = v23;
  v41 = v25;
  v51 = v25;
  v52[2] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();
  v52[0] = &_swiftEmptyArrayStorage;
  v45 = v52;
  v46 = v17;
  v26 = v40;
  (*((swift_isaMask & *v38) + 0x118))(v39, sub_1008F4D70, v44);
  if (v26)
  {

    swift_errorRetain();
    v27 = sub_1009364B8();
    v28 = sub_100936EF8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v39 = v21;
      v40 = v17;
      v30 = v29;
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error fetching IDSQuerySDSenderKeyDistribution instance: %@", v30, 0xCu);
      sub_100013814(v31, &qword_100CB36B0, &unk_1009AD140);

      v17 = v40;
    }

    v33 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v33 = v52[0];
  }

  (*(v42 + 8))(v17, v43);

  if (!(v33 >> 62))
  {
    v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_8;
    }
  }

  result = sub_1009373F8();
  v35 = result;
  if (!result)
  {
  }

LABEL_8:
  if (v35 >= 1)
  {
    v36 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        sub_100937268();
      }

      else
      {
      }

      ++v36;
      sub_10075CCF0(1);
      sub_100935FF8();
      v37 = sub_100936038();
      (*(*(v37 - 8) + 56))(v13, 0, 1, v37);
      sub_10075DA34(v13);

      sub_10075D58C(a6, a7);
    }

    while (v35 != v36);
  }

  __break(1u);
  return result;
}

id sub_1008C5498(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v28 = sub_1009364F8();
  v31 = *(v28 - 8);
  __chkstk_darwin(v28);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100936528();
  v29 = *(v16 - 8);
  v30 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = im_primary_queue();
  v27 = result;
  if (result)
  {
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = a2;
    v20[4] = a3;
    v20[5] = a4;
    v20[6] = a5;
    v20[7] = a6;
    v20[8] = a7;
    aBlock[4] = sub_1008F277C;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000154AC;
    aBlock[3] = &unk_100BEBD18;
    v21 = _Block_copy(aBlock);
    swift_errorRetain();
    v22 = a2;

    v23 = a4;
    v24 = a5;
    sub_1000254AC(a6, a7);
    sub_100936508();
    v32 = &_swiftEmptyArrayStorage;
    sub_100014C40(&unk_100CB4AA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100706B30(&unk_100CB3550, &qword_1009AC360);
    sub_100014C88(&qword_100CB4AB0, &unk_100CB3550, &qword_1009AC360, &protocol conformance descriptor for [A]);
    v25 = v28;
    sub_1009370B8();
    v26 = v27;
    sub_100936F88();
    _Block_release(v21);

    (*(v31 + 8))(v15, v25);
    (*(v29 + 8))(v18, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1008C5840(void *a1, id a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = [a2 prefixedURI];
  v30 = sub_100936B38();
  v13 = v12;

  v14 = [a3 prefixedURI];
  v15 = sub_100936B38();
  v17 = v16;

  v18 = [a1 rawToken];
  v19 = sub_100935EA8();
  v21 = v20;

  v22 = swift_allocObject();
  v22[2] = v30;
  v22[3] = v13;
  v22[4] = v15;
  v22[5] = v17;
  v22[6] = v19;
  v22[7] = v21;
  v23 = swift_allocObject();
  v23[2] = v7;
  v23[3] = a1;
  v23[4] = a3;
  v23[5] = a2;
  v24 = *((swift_isaMask & *v7) + 0x110);
  sub_100715738(v19, v21);
  v25 = v7;
  v26 = a1;
  v27 = a3;
  v28 = a2;
  v24(a6, v22, a7, v23);

  return sub_1007156D8(v19, v21);
}

uint64_t sub_1008C59F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *))
{
  v39 = a8;
  v41 = a1;
  v36 = a6;
  v37 = a7;
  v35 = a5;
  v12 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = sub_100706B30(&unk_100CBA690, &qword_1009BEAF8);
  __chkstk_darwin(v15 - 8);
  v17 = &v35 - v16;
  v40 = sub_100706B30(&qword_100CBA8D8, &qword_1009BECF8);
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v19 = &v35 - v18;
  v20 = sub_100706B30(&qword_100CBA368, &qword_1009BE728);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v35 - v22;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = v35;
  v47 = v36;
  v48 = v37;
  v49 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  sub_100936128();
  (*(v21 + 16))(v17, v23, v20);
  (*(v21 + 56))(v17, 0, 1, v20);
  sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution, &unk_1009AEFB0);
  sub_100936828();
  v24 = v42;
  v25 = sub_100936728();
  result = (*(v38 + 8))(v19, v40);
  if (v24)
  {
    return (*(v21 + 8))(v23, v20);
  }

  v42 = v21;
  v27 = v20;
  if (v25 >> 62)
  {
    result = sub_1009373F8();
    v28 = result;
  }

  else
  {
    v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = v23;
  v30 = v42;
  if (!v28)
  {

    return (*(v30 + 8))(v29, v27);
  }

  if (v28 >= 1)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v31 = 0;
      do
      {
        sub_100937268();
        ++v31;
        sub_100935FF8();
        v32 = sub_100936038();
        (*(*(v32 - 8) + 56))(v14, 0, 1, v32);
        a9(v14);
        swift_unknownObjectRelease();
      }

      while (v28 != v31);
    }

    else
    {
      v33 = 32;
      do
      {

        sub_100935FF8();
        v34 = sub_100936038();
        (*(*(v34 - 8) + 56))(v14, 0, 1, v34);
        a9(v14);

        v33 += 8;
        --v28;
      }

      while (v28);
    }

    v29 = v23;
    v30 = v42;
    return (*(v30 + 8))(v29, v27);
  }

  __break(1u);
  return result;
}

uint64_t sub_1008C5E90@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v99 = a6;
  v100 = a7;
  v86 = a5;
  v85 = a4;
  v109 = a3;
  v76 = a2;
  v106 = a8;
  v9 = sub_100706B30(&qword_100CBAD28, &qword_1009BF028);
  v10 = *(v9 - 8);
  v102 = v9;
  v103 = v10;
  __chkstk_darwin(v9);
  v97 = v72 - v11;
  v98 = sub_100706B30(&qword_100CBA6B8, &qword_1009BEB18);
  v101 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = v72 - v12;
  v13 = sub_100706B30(&qword_100CBAD30, &qword_1009BF030);
  v14 = *(v13 - 8);
  v104 = v13;
  v105 = v14;
  __chkstk_darwin(v13);
  v96 = v72 - v15;
  v93 = sub_100706B30(&qword_100CBA430, &qword_1009BE910);
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v84 = v72 - v16;
  v87 = sub_100706B30(&qword_100CBA6A0, &qword_1009BEB00);
  v89 = *(v87 - 8);
  __chkstk_darwin(v87);
  v82 = v72 - v17;
  v91 = sub_100706B30(&qword_100CBA6A8, &qword_1009BEB08);
  v92 = *(v91 - 8);
  __chkstk_darwin(v91);
  v83 = v72 - v18;
  v19 = sub_100706B30(&qword_100CBA4C0, &qword_1009BE998);
  v115 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = v72 - v20;
  v22 = sub_100706B30(&qword_100CBA6B0, &qword_1009BEB10);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v72 - v24;
  v26 = sub_100706B30(&qword_100CBA828, &qword_1009BEC18);
  v113 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = v72 - v27;
  v77 = sub_100706B30(&qword_100CBAC28, &qword_1009BEFA0);
  v78 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v74 = v72 - v31;
  v80 = sub_100706B30(&qword_100CBACE8, &qword_1009BF018);
  v81 = *(v80 - 8);
  __chkstk_darwin(v80);
  v110 = v72 - v32;
  v88 = sub_100706B30(&qword_100CBACF0, &qword_1009BF020);
  v90 = *(v88 - 8);
  __chkstk_darwin(v88);
  v79 = v72 - v33;
  v114 = *a1;
  v112 = sub_100014C88(&qword_100CBA6E0, &qword_100CBA6B0, &qword_1009BEB10, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  sub_100935D58();
  swift_getKeyPath();
  v111 = v22;
  sub_100935C78();

  v107 = *(v23 + 8);
  v108 = v23 + 8;
  v107(v25, v22);
  v116 = v76;
  v117 = v109;
  sub_100935D48();
  v76 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v72[1] = sub_100014C88(&qword_100CBA848, &qword_100CBA828, &qword_1009BEC18, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  v109 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  v72[0] = sub_100014C88(&qword_100CBA4E0, &qword_100CBA4C0, &qword_1009BE998, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v34 = v26;
  v35 = v19;
  sub_100935C68();
  v36 = v115[1];
  ++v115;
  v36(v21, v19);
  v37 = *(v113 + 8);
  v113 += 8;
  v37(v28, v34);
  v38 = v111;
  sub_100935D58();
  swift_getKeyPath();
  v73 = v25;
  sub_100935C78();

  v39 = v38;
  v40 = v107;
  v107(v25, v39);
  v116 = v85;
  v117 = v86;
  v41 = v21;
  sub_100935D48();
  v42 = v75;
  sub_100935C68();
  v36(v41, v35);
  v37(v28, v34);
  v115 = &protocol conformance descriptor for PredicateExpressions.Equal<A, B>;
  sub_100014C88(&qword_100CBAC38, &qword_100CBAC28, &qword_1009BEFA0, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v43 = v74;
  v44 = v77;
  sub_100935CF8();
  v45 = *(v78 + 8);
  v45(v42, v44);
  v45(v43, v44);
  v46 = v73;
  v47 = v111;
  sub_100935D58();
  swift_getKeyPath();
  v48 = v82;
  sub_100935C78();

  v40(v46, v47);
  LOBYTE(v116) = 1;
  v49 = v84;
  sub_100935D48();
  v50 = v76;
  sub_100014C88(&qword_100CBA708, &qword_100CBA6A0, &qword_1009BEB00, v76);
  sub_100014C88(&qword_100CBA710, &qword_100CBA430, &qword_1009BE910, v109);
  v51 = v83;
  v52 = v49;
  v53 = v87;
  v54 = v93;
  sub_100935C68();
  (*(v94 + 8))(v52, v54);
  (*(v89 + 8))(v48, v53);
  sub_100014C88(&qword_100CBAD08, &qword_100CBACE8, &qword_1009BF018, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  sub_100014C88(&qword_100CBA720, &qword_100CBA6A8, &qword_1009BEB08, &protocol conformance descriptor for PredicateExpressions.Equal<A, B>);
  v55 = v79;
  v56 = v110;
  v57 = v51;
  v58 = v80;
  v59 = v91;
  sub_100935CF8();
  (*(v92 + 8))(v57, v59);
  (*(v81 + 8))(v56, v58);
  v60 = v111;
  sub_100935D58();
  swift_getKeyPath();
  v61 = v95;
  sub_100935C78();

  v107(v46, v60);
  v116 = v99;
  v117 = v100;
  v62 = v97;
  sub_100935D48();
  sub_100014C88(&qword_100CBA6F0, &qword_100CBA6B8, &qword_1009BEB18, v50);
  sub_100014C88(&qword_100CBAD38, &qword_100CBAD28, &qword_1009BF028, v109);
  sub_1008EFEF8();
  v63 = v96;
  v64 = v62;
  v65 = v98;
  v66 = v102;
  sub_100935C68();
  (*(v103 + 8))(v64, v66);
  (*(v101 + 8))(v61, v65);
  v67 = sub_100706B30(&qword_100CBAD70, &qword_1009BF070);
  v68 = v106;
  v106[3] = v67;
  v68[4] = sub_1008F26F0();
  sub_100014250(v68);
  sub_100014C88(&qword_100CBAD80, &qword_100CBACF0, &qword_1009BF020, &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>);
  sub_100014C88(&qword_100CBAD60, &qword_100CBAD30, &qword_1009BF030, v115);
  v69 = v88;
  v70 = v104;
  sub_100935CF8();
  (*(v105 + 8))(v63, v70);
  return (*(v90 + 8))(v55, v69);
}

uint64_t sub_1008C6D40(void *a1, void *a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v3;
  v7[4] = a1;
  v7[5] = a2;
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a3;
  v8[4] = a1;
  v8[5] = a2;
  v9 = *((swift_isaMask & *v3) + 0x110);
  swift_bridgeObjectRetain_n();
  v10 = v3;
  v11 = a1;
  v12 = a2;
  v13 = v10;
  v14 = v11;
  v15 = v12;
  v9(sub_1008ED394, v7, sub_1008ED3B4, v8);
}

uint64_t sub_1008C6E88(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v56 = a1;
  v57 = a3;
  v9 = sub_100706B30(&qword_100CB4AC0, &qword_1009AC370);
  __chkstk_darwin(v9 - 8);
  v11 = v53 - v10;
  v12 = sub_100706B30(&qword_100CBA368, &qword_1009BE728);
  v15 = __chkstk_darwin(v12);
  v17 = v53 - v16;
  if (!a2)
  {
    v37 = [a4 prefixedURI];
    v38 = sub_100936B38();
    v40 = v39;

    v41 = [a5 prefixedURI];
    v42 = sub_100936B38();
    v44 = v43;

    v45 = sub_1008BA1A4(v38, v40, v42, v44, v56);

    if (v45 >> 62)
    {
      goto LABEL_27;
    }

    v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47)
    {
      goto LABEL_7;
    }
  }

  v54 = v14;
  v55 = v13;
  v18 = [a4 prefixedURI];
  v19 = sub_100936B38();
  v21 = v20;

  v22 = [a5 prefixedURI];
  v23 = sub_100936B38();
  v25 = v24;

  v53[0] = v53;
  __chkstk_darwin(v26);
  v53[-6] = a2;
  v53[-5] = v19;
  v53[1] = v25;
  v53[2] = v21;
  v53[-4] = v21;
  v53[-3] = v23;
  v27 = v17;
  v53[-2] = v25;
  v58[2] = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  v28 = sub_100936128();
  v58[0] = &_swiftEmptyArrayStorage;
  v29.n128_f64[0] = __chkstk_darwin(v28);
  v30 = v56;
  v31 = v57;
  v53[-2] = v58;
  v53[-1] = v27;
  (*((swift_isaMask & *v31) + 0x118))(v30, sub_1008F4D70, v29);
  if (v5)
  {

    swift_errorRetain();
    v32 = sub_1009364B8();
    v33 = sub_100936EF8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v36;
      *v35 = v36;
      _os_log_impl(&_mh_execute_header, v32, v33, "Error fetching IDSQuerySDSenderKeyDistribution instance: %@", v34, 0xCu);
      sub_100013814(v35, &qword_100CB36B0, &unk_1009AD140);
    }

    v50 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v50 = v58[0];
  }

  (*(v54 + 8))(v27, v55);

  if (v50 >> 62)
  {
    v45 = sub_1009373F8();
    if (v45)
    {
      goto LABEL_18;
    }
  }

  v45 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v45)
  {
  }

LABEL_18:
  if (v45 >= 1)
  {
    v51 = 0;
    do
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        sub_100937268();
      }

      else
      {
      }

      ++v51;
      sub_10075CCF0(0);
      sub_10075C104(0);
      v52 = sub_100936038();
      (*(*(v52 - 8) + 56))(v11, 1, 1, v52);
      sub_10075C598(v11);
    }

    while (v45 != v51);
  }

  __break(1u);
LABEL_27:
  result = sub_1009373F8();
  v47 = result;
  if (!result)
  {
  }

LABEL_7:
  if (v47 >= 1)
  {
    v48 = 0;
    do
    {
      if ((v45 & 0xC000000000000001) != 0)
      {
        sub_100937268();
      }

      else
      {
      }

      ++v48;
      sub_10075CCF0(0);
      sub_10075C104(0);
      v49 = sub_100936038();
      (*(*(v49 - 8) + 56))(v11, 1, 1, v49);
      sub_10075C598(v11);
    }

    while (v47 != v48);
  }

  __break(1u);
  return result;
}

uint64_t sub_1008C74C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[2] = a1;
  v5[4] = a2;
  v5[5] = a3;
  (*((swift_isaMask & *v3) + 0x118))(0, sub_1008ED6C8, v5);
  return 1;
}

uint64_t sub_1008C7664(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v54 = a1;
  v52 = a5;
  v53 = a4;
  v50 = sub_100936038();
  v6 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for SenderKeyAndState(0);
  __chkstk_darwin(v49);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SenderKeyInfo(0);
  v10 = &a2[*(v48 + 28)];
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[3];
  v56 = v10[2];
  sub_1008ED848(a2, v9, type metadata accessor for SenderKeyAndState);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v14 = sub_1009364B8();
  v15 = sub_100936F18();
  v55 = v13;

  v16 = os_log_type_enabled(v14, v15);
  v46 = v12;
  v47 = v11;
  if (v16)
  {
    v17 = swift_slowAlloc();
    LODWORD(v44) = v15;
    v18 = v17;
    v45 = swift_slowAlloc();
    v57 = v45;
    *v18 = 136315650;
    v19 = v6;
    v20 = sub_100935E08();
    v22 = v21;
    sub_1008ED8B0(v9, type metadata accessor for SenderKeyAndState);
    v23 = v20;
    v6 = v19;
    v24 = sub_10001273C(v23, v22, &v57);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10001273C(v11, v12, &v57);
    *(v18 + 22) = 2080;
    *(v18 + 24) = sub_10001273C(v56, v55, &v57);
    _os_log_impl(&_mh_execute_header, v14, v44, "Saving received sender key and state with keyID: %s senderURI: %s receiverURI: %s", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1008ED8B0(v9, type metadata accessor for SenderKeyAndState);
  }

  v25 = type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution(0);
  v27 = *(a2 + 3);
  v44 = *(a2 + 2);
  v26 = v44;
  v45 = v25;
  v29 = *(a2 + 1);
  v42 = *a2;
  v28 = v42;
  v43 = v27;
  v41 = v29;
  v30 = v51;
  (*(v6 + 16))(v51, &a2[*(v48 + 24)], v50);
  v31 = &a2[*(v49 + 20)];
  v32 = *v31;
  v33 = v31[1];
  sub_100715738(v26, v27);
  sub_100715738(v28, v29);
  v35 = v52;
  v34 = v53;
  sub_100715738(v53, v52);
  sub_100715738(v32, v33);
  v36 = sub_10001E2FC();
  v37 = sub_10001E2FC();
  LOBYTE(v26) = sub_10001E2FC();
  LOBYTE(v27) = sub_10001E2FC();
  v38 = sub_10001E2FC();
  sub_10075E86C(v44, v43, v42, v41, v47, v46, v56, v55, v34, v35, v30, v32, v33, v36 & 1, v37 & 1, v26 & 1, v27 & 1, v38 & 1);
  sub_100014C40(&qword_100CB3DF8, type metadata accessor for SDPersistenceSchemaV6.IDSQuerySDSenderKeyDistribution, &unk_1009AEFB0);
  sub_100936768();
  if (sub_1009366F8())
  {
    sub_100936708();
  }
}