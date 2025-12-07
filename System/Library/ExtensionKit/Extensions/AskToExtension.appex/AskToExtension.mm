uint64_t getEnumTagSinglePayload for AskToFeatures(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AskToFeatures(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100001654()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

Swift::Int sub_1000016B0()
{
  sub_100004064();
  sub_100004074(0);
  return sub_100004084();
}

Swift::Int sub_10000171C(uint64_t a1)
{
  sub_100004064();
  sub_100004074(0);
  return sub_100004084();
}

uint64_t sub_100001784()
{
  v0 = sub_100003EA4();
  sub_100001814(v0, qword_10000C4D0);
  sub_100001878(v0, qword_10000C4D0);
  return sub_100003E94();
}

uint64_t *sub_100001814(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100001878(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

Swift::Int sub_1000018C8()
{
  v1 = *v0;
  sub_100004064();
  sub_100004074(v1);
  return sub_100004084();
}

Swift::Int sub_10000193C(uint64_t a1)
{
  v2 = *v1;
  sub_100004064();
  sub_100004074(v2);
  return sub_100004084();
}

uint64_t sub_1000019C0(uint64_t a1)
{
  v2 = sub_100001B24();

  return AskToExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001A68();
  sub_100003E74();
  return 0;
}

unint64_t sub_100001A68()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

unint64_t sub_100001B24()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_100001B78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100001C44(v11, 0, 0, 1, a1, a2);
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
    sub_100002DBC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002D70(v11);
  return v7;
}

unint64_t sub_100001C44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100001D50(a5, a6);
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
    result = sub_100004004();
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

char *sub_100001D50(uint64_t a1, unint64_t a2)
{
  v3 = sub_100001D9C(a1, a2);
  sub_100001ECC(&off_1000084B8);
  return v3;
}

char *sub_100001D9C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100001FB8(v5, 0);
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

  result = sub_100004004();
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
        v10 = sub_100003FB4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100001FB8(v10, 0);
        result = sub_100003FF4();
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

uint64_t sub_100001ECC(uint64_t result)
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

  result = sub_10000202C(result, v11, 1, v3);
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

void *sub_100001FB8(uint64_t a1, uint64_t a2)
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

  sub_100002C14(&qword_10000C0B0, &qword_1000044A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000202C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002C14(&qword_10000C0B0, &qword_1000044A8);
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

void sub_100002120(void *a1, uint64_t a2)
{
  v104 = a2;
  v3 = sub_100002C14(&qword_10000C098, &qword_1000044A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v89[-v4];
  v6 = sub_100003E54();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v96 = &v89[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v12 = &v89[-v11];
  __chkstk_darwin(v10);
  v98 = &v89[-v13];
  v14 = sub_100003F74();
  v102 = *(v14 - 8);
  v103 = v14;
  __chkstk_darwin(v14);
  v108 = &v89[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_100003F54();
  v100 = *(v16 - 8);
  v101 = v16;
  __chkstk_darwin(v16);
  v106 = &v89[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_10000C078 != -1)
  {
    swift_once();
  }

  v97 = v12;
  v18 = sub_100003EA4();
  v19 = sub_100001878(v18, qword_10000C4D0);
  v20 = sub_100003E84();
  v21 = sub_100003FE4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Creating Messages payload", v22, 2u);
  }

  v23 = sub_100003F94();
  v24 = sub_100003ED4();
  v26 = v25;

  v105 = v19;
  if (v26)
  {
    v27 = v24;
  }

  else
  {
    v28 = sub_100003F94();
    v27 = sub_100003EC4();
    v30 = v29;

    if (!v30)
    {
      v31 = sub_100003F94();
      v27 = sub_100003EE4();
    }
  }

  v32 = [objc_allocWithZone(MSMessageTemplateLayout) init];
  sub_100003F44();
  sub_100003F24();
  v33 = sub_100003F64();
  v34 = [objc_allocWithZone(UIImage) initWithCGImage:v33];

  [v32 setImage:v34];
  v35 = sub_100003FA4();
  [v32 setCaption:v35];

  v36 = objc_allocWithZone(MSMessageLiveLayout);
  v99 = v32;
  v37 = [v36 initWithAlternateLayout:v32];
  v38 = sub_100003F94();
  sub_100003EB4();

  if ((*(v7 + 6))(v5, 1, v6) == 1)
  {
    sub_100003B78(v5, &qword_10000C098, &qword_1000044A0);
    v39 = sub_100003E84();
    v40 = sub_100003FD4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "AskTo question ID was not a valid UUID. Will not breadcrumb.", v41, 2u);
    }

    v42 = [objc_allocWithZone(MSSession) init];
  }

  else
  {
    v95 = v27;
    v43 = v98;
    (*(v7 + 4))(v98, v5, v6);
    v107[3] = &type metadata for AskToFeatures;
    v107[4] = sub_100002CC4();
    v44 = sub_100003E64();
    sub_100002D70(v107);
    if (v44)
    {
      (*(v7 + 2))(v97, v43, v6);
      v45 = a1;
      v46 = sub_100003E84();
      v47 = sub_100003FE4();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v94 = v48;
        v92 = swift_slowAlloc();
        v107[0] = v92;
        *v48 = 136315394;
        v91 = v46;
        v49 = sub_100003F94();
        v93 = v37;
        v50 = v96;
        sub_100003F04();

        sub_100002D18();
        v51 = sub_100004014();
        v53 = v52;
        v90 = v47;
        v54 = *(v7 + 1);
        v55 = v50;
        v37 = v93;
        v54(v55, v6);
        v56 = sub_100001B78(v51, v53, v107);
        v43 = v98;

        v57 = v94;
        *(v94 + 1) = v56;
        *(v57 + 6) = 2080;
        v58 = v97;
        v59 = sub_100004014();
        v96 = v7;
        v61 = v60;
        v54(v58, v6);
        v62 = sub_100001B78(v59, v61, v107);
        v7 = v96;

        v63 = v94;
        *(v94 + 14) = v62;
        v64 = v91;
        _os_log_impl(&_mh_execute_header, v91, v90, "Breadcrumbing question with system ID %s using content hash %s", v63, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v7 + 1))(v97, v6);
      }

      v69 = objc_allocWithZone(MSSession);
      isa = sub_100003E44().super.isa;
      v68 = [v69 initWithIdentifier:isa];

      if (!v68)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v65 = sub_100003E84();
      v66 = sub_100003FE4();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v65, v66, "AskTo breadcrumbing is not enabled", v67, 2u);
      }

      v68 = [objc_allocWithZone(MSSession) init];
      v43 = v98;
    }

    v71 = *(v7 + 1);
    v42 = v68;
    v71(v43, v6);
  }

  v72 = [objc_allocWithZone(MSMessage) initWithSession:v42];

  sub_100003E04(v73);
  v75 = v74;
  [v72 setURL:v74];

  [v72 setLayout:v37];
  v76 = sub_100003FA4();
  [v72 setSummaryText:v76];

  if ([v37 respondsToSelector:"setRequiredCapabilities:"])
  {
    v77.super.isa = sub_100003FC4().super.isa;
    [v37 setRequiredCapabilities:v77.super.isa];
  }

  else
  {
    v77.super.isa = sub_100003E84();
    v78 = sub_100003FD4();
    if (os_log_type_enabled(v77.super.isa, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77.super.isa, v78, "MSMessage does not respond to #selector(setter: MSMessage.requiredCapabilities)!", v79, 2u);
    }
  }

  v80 = sub_100003F34();
  if (v81 >> 60 == 15)
  {
    v82 = 0;
  }

  else
  {
    v83 = v80;
    v84 = v81;
    v82 = sub_100003E24().super.isa;
    sub_100002C5C(v83, v84);
  }

  v85 = sub_100003FA4();
  v86 = [v72 _pluginPayloadWithAppIconData:v82 appName:v85 allowDataPayloads:0];

  v87 = [v86 data];
  if (v87)
  {
    v88 = v87;

    sub_100003E34();

    (*(v102 + 8))(v108, v103);
    (*(v100 + 8))(v106, v101);
    return;
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_100002C14(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_100002C5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_100002C70(a1, a2);
  }
}

void sub_100002C70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t sub_100002CC4()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

unint64_t sub_100002D18()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    sub_100003E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

uint64_t sub_100002D70(void *a1)
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

uint64_t sub_100002DBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_100002E1C(void *a1)
{
  v2 = sub_100002C14(&qword_10000C0B8, &unk_1000044B0);
  __chkstk_darwin(v2 - 8);
  v115 = &v103 - v3;
  v4 = sub_100003E14();
  v116 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v112 = &v103 - v8;
  v9 = sub_100002C14(&qword_10000C098, &qword_1000044A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v103 - v10;
  v12 = sub_100003E54();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v109 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v111 = &v103 - v17;
  __chkstk_darwin(v16);
  v118 = (&v103 - v18);
  if (qword_10000C078 != -1)
  {
    swift_once();
  }

  v110 = v7;
  v19 = v4;
  v20 = sub_100003EA4();
  v120 = sub_100001878(v20, qword_10000C4D0);
  v21 = sub_100003E84();
  v22 = sub_100003FE4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Creating Messages payload", v23, 2u);
  }

  v24 = [objc_allocWithZone(MSMessageTemplateLayout) init];
  v25 = sub_100003F94();
  sub_100003EE4();

  v26 = sub_100003FA4();

  [v24 setCaption:v26];

  v27 = sub_100003F94();
  sub_100003EF4();

  v28 = sub_100003FA4();

  [v24 setSubcaption:v28];

  v29 = objc_allocWithZone(MSMessageLiveLayout);
  v114 = v24;
  v30 = [v29 initWithAlternateLayout:v24];
  if ([v30 respondsToSelector:"setRequiredCapabilities:"])
  {
    v31.super.isa = sub_100003FC4().super.isa;
    [v30 setRequiredCapabilities:v31.super.isa];
  }

  else
  {
    v31.super.isa = sub_100003E84();
    v32 = sub_100003FD4();
    if (os_log_type_enabled(v31.super.isa, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31.super.isa, v32, "MSMessage does not respond to #selector(setter: MSMessage.requiredCapabilities)!", v33, 2u);
    }
  }

  v34 = v19;

  v35 = sub_100003F94();
  sub_100003EB4();

  v36 = (*(v13 + 48))(v11, 1, v12);
  v37 = v118;
  v117 = a1;
  if (v36 == 1)
  {
    sub_100003B78(v11, &qword_10000C098, &qword_1000044A0);
    v38 = sub_100003E84();
    v39 = sub_100003FD4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "AskTo question ID was not a valid UUID. Will not breadcrumb.", v40, 2u);
    }

    v41 = [objc_allocWithZone(MSSession) init];
    v42 = v115;
    v43 = v116;
  }

  else
  {
    v108 = v34;
    (*(v13 + 32))(v118, v11, v12);
    v119[3] = &type metadata for AskToFeatures;
    v119[4] = sub_100002CC4();
    v44 = sub_100003E64();
    sub_100002D70(v119);
    if (v44)
    {
      v45 = v111;
      (*(v13 + 16))(v111, v37, v12);
      v46 = a1;
      v47 = sub_100003E84();
      v48 = sub_100003FE4();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v107 = v30;
        v50 = v49;
        v103 = v49;
        v106 = swift_slowAlloc();
        v119[0] = v106;
        *v50 = 136315394;
        v105 = v47;
        v51 = sub_100003F94();
        v52 = v109;
        sub_100003F04();

        sub_100002D18();
        v53 = sub_100004014();
        v104 = v48;
        v55 = v54;
        v56 = *(v13 + 8);
        v56(v52, v12);
        v57 = sub_100001B78(v53, v55, v119);

        v58 = v103;
        *(v103 + 4) = v57;
        *(v58 + 12) = 2080;
        v59 = sub_100004014();
        v61 = v60;
        v56(v45, v12);
        v62 = sub_100001B78(v59, v61, v119);

        *(v58 + 14) = v62;
        v63 = v105;
        _os_log_impl(&_mh_execute_header, v105, v104, "Breadcrumbing question with system ID %s using content hash %s", v58, 0x16u);
        swift_arrayDestroy();

        v30 = v107;
        v37 = v118;
      }

      else
      {

        (*(v13 + 8))(v45, v12);
      }

      v42 = v115;
      v69 = objc_allocWithZone(MSSession);
      isa = sub_100003E44().super.isa;
      v71 = [v69 initWithIdentifier:isa];

      result = v71;
      v34 = v108;
      if (!result)
      {
        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
      v64 = sub_100003E84();
      v65 = sub_100003FE4();
      v66 = os_log_type_enabled(v64, v65);
      v42 = v115;
      if (v66)
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v64, v65, "AskTo breadcrumbing is not enabled", v67, 2u);
        v37 = v118;
      }

      result = [objc_allocWithZone(MSSession) init];
      v34 = v108;
    }

    v39 = *(v13 + 8);
    v41 = result;
    (v39)(v37, v12);
    v43 = v116;
  }

  v72 = [objc_allocWithZone(MSMessage) initWithSession:v41];

  [v72 setLayout:v30];
  v73 = v113;
  sub_100003F84();
  if (v73)
  {
LABEL_25:

    return v39;
  }

  v39 = 1;
  if ((*(v43 + 48))(v42, 1, v34) == 1)
  {
    sub_100003B78(v42, &qword_10000C0B8, &unk_1000044B0);
    sub_100003BD8();
    swift_allocError();
    *v74 = 1;
    swift_willThrow();
    goto LABEL_25;
  }

  v75 = v112;
  (*(v43 + 32))(v112, v42, v34);
  v76 = v110;
  (*(v43 + 16))(v110, v75, v34);
  v77 = sub_100003E84();
  v78 = sub_100003FE4();
  v79 = os_log_type_enabled(v77, v78);
  v107 = v30;
  if (v79)
  {
    v80 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v119[0] = v118;
    *v80 = 136315138;
    LODWORD(v115) = v78;
    v113 = sub_100003DF4();
    v82 = v81;
    v83 = v76;
    v84 = v34;
    v120 = *(v43 + 8);
    v120(v83, v34);
    v85 = sub_100001B78(v113, v82, v119);

    *(v80 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v77, v115, "Generated AskTo URL: %s", v80, 0xCu);
    sub_100002D70(v118);
  }

  else
  {

    v87 = v76;
    v84 = v34;
    v120 = *(v43 + 8);
    v120(v87, v34);
  }

  sub_100003E04(v86);
  v89 = v88;
  [v72 setURL:v88];

  v90 = sub_100003F94();
  sub_100003ED4();
  v39 = v91;

  if (!v39)
  {
    v92 = sub_100003F94();
    sub_100003EC4();
    v39 = v93;

    if (!v39)
    {
      v94 = v84;
      v95 = sub_100003F94();
      sub_100003EE4();
      v39 = v96;

      v84 = v94;
    }
  }

  v97 = sub_100003FA4();

  [v72 setSummaryText:v97];

  if (![v72 respondsToSelector:"_pluginPayloadWithAppIconData:appName:allowDataPayloads:"])
  {
    sub_100003BD8();
    swift_allocError();
    *v102 = 0;
    swift_willThrow();

    v120(v112, v84);
    return v39;
  }

  v98 = v84;
  v99 = sub_100003FA4();
  v100 = [v72 _pluginPayloadWithAppIconData:0 appName:v99 allowDataPayloads:0];

  result = [v100 data];
  if (result)
  {
    v101 = result;
    v39 = sub_100003E34();

    v120(v112, v98);
    return v39;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100003B78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002C14(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100003BD8()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AskToExtensionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AskToExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100003DA0()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}