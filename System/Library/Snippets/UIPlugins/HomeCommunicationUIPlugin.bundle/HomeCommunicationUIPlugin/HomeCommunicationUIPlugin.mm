Swift::Int sub_1300()
{
  sub_2FD8();
  sub_2FE8(0);
  return sub_2FF8();
}

Swift::Int sub_136C(uint64_t a1)
{
  sub_2FD8();
  sub_2FE8(0);
  return sub_2FF8();
}

uint64_t sub_140C@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

unint64_t sub_1440(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_150C(v11, 0, 0, 1, a1, a2);
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
    sub_2908(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2874(v11);
  return v7;
}

unint64_t sub_150C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1618(a5, a6);
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
    result = sub_2F78();
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

char *sub_1618(uint64_t a1, unint64_t a2)
{
  v3 = sub_1664(a1, a2);
  sub_1794(&off_4400);
  return v3;
}

char *sub_1664(uint64_t a1, unint64_t a2)
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

  v6 = sub_1880(v5, 0);
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

  result = sub_2F78();
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
        v10 = sub_2F38();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1880(v10, 0);
        result = sub_2F68();
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

uint64_t sub_1794(uint64_t result)
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

  result = sub_18F4(result, v11, 1, v3);
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

void *sub_1880(uint64_t a1, uint64_t a2)
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

  sub_2964(&qword_8170, &unk_3240);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_18F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2964(&qword_8170, &unk_3240);
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

NSObject *sub_19E8(uint64_t a1)
{
  v75 = sub_2EA8();
  v2 = *(v75 - 8);
  __chkstk_darwin(v75);
  v82 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2EE8();
  v81 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v79 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v80 = &v71 - v7;
  v8 = sub_2E68();
  v88 = *(v8 - 8);
  v89 = v8;
  __chkstk_darwin(v8);
  v86 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_2E78();
  v85 = *(v87 - 8);
  v10 = __chkstk_darwin(v87);
  v83 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v84 = &v71 - v12;
  v13 = sub_2EC8();
  v95 = *(v13 - 8);
  v96 = v13;
  __chkstk_darwin(v13);
  v93 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_2ED8();
  v92 = *(v94 - 8);
  v15 = __chkstk_darwin(v94);
  v90 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v91 = &v71 - v17;
  v18 = sub_2E38();
  v102 = *(v18 - 8);
  v103 = v18;
  __chkstk_darwin(v18);
  v100 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_2E48();
  v99 = *(v101 - 8);
  v20 = __chkstk_darwin(v101);
  v97 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v98 = &v71 - v22;
  v23 = sub_2E88();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v78 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v106 = &v71 - v28;
  __chkstk_darwin(v27);
  v30 = &v71 - v29;
  if (qword_8098 != -1)
  {
    swift_once();
  }

  v31 = sub_2F18();
  v32 = sub_27E8(v31, static Logger.siriHomeCommunicationUIPlugin);
  v104 = *(v24 + 16);
  v105 = a1;
  v104(v30, a1, v23);
  v76 = v32;
  v33 = sub_2EF8();
  v34 = sub_2F48();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v74 = v2;
    v36 = v35;
    v72 = swift_slowAlloc();
    v108 = v72;
    *v36 = 136315138;
    sub_28C0(&qword_8148, &type metadata accessor for HomeCommunicationSnippetModel, &protocol conformance descriptor for HomeCommunicationSnippetModel);
    v37 = sub_2F88();
    v73 = v4;
    v39 = v38;
    v77 = *(v24 + 8);
    v77(v30, v23);
    v40 = sub_1440(v37, v39, &v108);
    v4 = v73;

    *(v36 + 4) = v40;
    _os_log_impl(&dword_0, v33, v34, "#HomeCommunicationUIPlugin getting snippet for %s", v36, 0xCu);
    sub_2874(v72);

    v2 = v74;
  }

  else
  {

    v77 = *(v24 + 8);
    v77(v30, v23);
  }

  v41 = v105;
  v42 = v106;
  v43 = v23;
  v44 = v23;
  v45 = v104;
  v104(v106, v105, v44);
  v46 = (*(v24 + 88))(v42, v43);
  if (v46 == enum case for HomeCommunicationSnippetModel.appLaunch(_:))
  {
    (*(v24 + 96))(v42, v43);
    v48 = v98;
    v47 = v99;
    v49 = v101;
    (*(v99 + 32))(v98, v42, v101);
    (*(v47 + 16))(v97, v48, v49);
    v50 = v100;
    sub_2E28();
    sub_28C0(&qword_8168, &type metadata accessor for HomeAppLaunchView, &protocol conformance descriptor for HomeAppLaunchView);
    v51 = v103;
    v52 = sub_2F28();
    v53 = v102;
LABEL_12:
    (*(v53 + 8))(v50, v51);
    (*(v47 + 8))(v48, v49);
    return v52;
  }

  if (v46 == enum case for HomeCommunicationSnippetModel.carPlayIntercomControl(_:))
  {
    (*(v24 + 96))(v42, v43);
    v48 = v91;
    v47 = v92;
    v49 = v94;
    (*(v92 + 32))(v91, v42, v94);
    (*(v47 + 16))(v90, v48, v49);
    v50 = v93;
    sub_2EB8();
    sub_28C0(&qword_8160, &type metadata accessor for CarPlayIntercomControlView, &protocol conformance descriptor for CarPlayIntercomControlView);
    v51 = v96;
    v52 = sub_2F28();
    v53 = v95;
    goto LABEL_12;
  }

  if (v46 == enum case for HomeCommunicationSnippetModel.homeDisambiguation(_:))
  {
    (*(v24 + 96))(v42, v43);
    v47 = v85;
    v48 = v84;
    v49 = v87;
    (*(v85 + 32))(v84, v42, v87);
    (*(v47 + 16))(v83, v48, v49);
    v50 = v86;
    sub_2E58();
    sub_28C0(&qword_8158, &type metadata accessor for HomeDisambiguationView, &protocol conformance descriptor for HomeDisambiguationView);
    v51 = v89;
    v52 = sub_2F28();
    v53 = v88;
    goto LABEL_12;
  }

  if (v46 == enum case for HomeCommunicationSnippetModel.sendAnnouncementNeedsValue(_:))
  {
    (*(v24 + 96))(v42, v43);
    v55 = v81;
    v56 = v80;
    (*(v81 + 32))(v80, v42, v4);
    (*(v55 + 16))(v79, v56, v4);
    v57 = v82;
    sub_2E98();
    sub_28C0(&qword_8150, &type metadata accessor for SendAnnouncementView, &protocol conformance descriptor for SendAnnouncementView);
    v58 = v75;
    v52 = sub_2F28();
    (*(v2 + 8))(v57, v58);
    (*(v55 + 8))(v56, v4);
  }

  else
  {
    v59 = v78;
    v45(v78, v41, v43);
    v52 = sub_2EF8();
    v60 = sub_2F58();
    if (os_log_type_enabled(v52, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v108 = v62;
      *v61 = 136315138;
      sub_28C0(&qword_8148, &type metadata accessor for HomeCommunicationSnippetModel, &protocol conformance descriptor for HomeCommunicationSnippetModel);
      v63 = sub_2F88();
      v64 = v43;
      v66 = v65;
      v67 = v59;
      v68 = v77;
      v77(v67, v64);
      v69 = sub_1440(v63, v66, &v108);
      v43 = v64;

      *(v61 + 4) = v69;
      _os_log_impl(&dword_0, v52, v60, "#HomeCommunicationUIPlugin unknown snippet model %s. Throwing.", v61, 0xCu);
      sub_2874(v62);
    }

    else
    {

      v70 = v59;
      v68 = v77;
      v77(v70, v43);
    }

    sub_2820();
    v107 = swift_allocError();
    swift_willThrow();
    v68(v106, v43);
  }

  return v52;
}

uint64_t sub_27E8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2820()
{
  result = qword_8140;
  if (!qword_8140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8140);
  }

  return result;
}

uint64_t sub_2874(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_28C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2908(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2964(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeCommunicationUIPlugin.HomeCommunicationUIPluginError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HomeCommunicationUIPlugin.HomeCommunicationUIPluginError(_WORD *result, int a2, int a3)
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

unint64_t sub_2AA8()
{
  result = qword_8178;
  if (!qword_8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8178);
  }

  return result;
}

uint64_t sub_2B20()
{
  v0 = sub_2F18();
  sub_2D84(v0, static Logger.siriHomeCommunicationUIFramework);
  sub_27E8(v0, static Logger.siriHomeCommunicationUIFramework);
  return sub_2F08();
}

uint64_t sub_2BC0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_2F18();

  return sub_27E8(v4, a2);
}

uint64_t sub_2C38()
{
  v0 = sub_2F18();
  sub_2D84(v0, static Logger.siriHomeCommunicationUIPlugin);
  sub_27E8(v0, static Logger.siriHomeCommunicationUIPlugin);
  return sub_2F08();
}

uint64_t sub_2CDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2F18();
  v7 = sub_27E8(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t *sub_2D84(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}