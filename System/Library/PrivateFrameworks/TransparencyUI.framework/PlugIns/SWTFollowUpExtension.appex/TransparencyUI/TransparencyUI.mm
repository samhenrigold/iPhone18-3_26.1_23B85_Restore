uint64_t sub_100001230@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20SWTFollowUpExtension22FollowUpViewController_log;
  swift_beginAccess();
  v4 = sub_100003914();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1000012B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20SWTFollowUpExtension22FollowUpViewController_log;
  swift_beginAccess();
  v4 = sub_100003914();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id sub_1000013AC()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1000013E0()
{
  v1 = sub_100003914();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003904();
  (*(v2 + 32))(v0 + OBJC_IVAR____TtC20SWTFollowUpExtension22FollowUpViewController_log, v4, v1);
  v5 = type metadata accessor for FollowUpViewController(0);
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

uint64_t type metadata accessor for FollowUpViewController(uint64_t a1)
{
  result = qword_10000C220;
  if (!qword_10000C220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100001670(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id sub_1000017BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003914();
  v65 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v57 - v7;
  v9 = sub_100001E58(&qword_10000C1B8, &qword_100003E28);
  __chkstk_darwin(v9 - 8);
  v11 = v57 - v10;
  v12 = sub_1000038E4();
  v13 = __chkstk_darwin(v12);
  v64 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = v57 - v16;
  __chkstk_darwin(v15);
  v19 = v57 - v18;
  v21 = v20;
  sub_1000038D4();
  if ((*(v21 + 48))(v11, 1, v12) == 1)
  {
    return sub_100003610(v11, &qword_10000C1B8, &qword_100003E28);
  }

  v60 = v6;
  v23 = (*(v21 + 32))(v19, v11, v12);
  v24 = *((swift_isaMask & *v2) + 0x58);
  v25 = (swift_isaMask & *v2) + 88;
  v61 = v2;
  v57[2] = v25;
  v58 = v24;
  (v24)(v23);
  v26 = *(v21 + 16);
  v63 = v19;
  v57[0] = v26;
  v57[1] = v21 + 16;
  v26(v17, v19, v12);
  v27 = sub_1000038F4();
  v28 = sub_1000039A4();
  v29 = os_log_type_enabled(v27, v28);
  v62 = v21;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v66 = v31;
    *v30 = 136315138;
    v32 = sub_1000038B4();
    v59 = v3;
    v34 = v33;
    v35 = *(v21 + 8);
    v35(v17, v12);
    v36 = sub_100002C24(v32, v34, &v66);
    v3 = v59;

    *(v30 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v27, v28, "Opening URL for followup %s", v30, 0xCu);
    sub_100003570(v31);

    v37 = v35;
  }

  else
  {

    v37 = *(v21 + 8);
    v37(v17, v12);
  }

  v38 = *(v65 + 8);
  v38(v8, v3);
  result = [objc_opt_self() defaultWorkspace];
  v40 = v63;
  if (result)
  {
    v41 = result;
    sub_1000038C4(v39);
    v43 = v42;
    sub_100003408(&_swiftEmptyArrayStorage);
    isa = sub_100003924().super.isa;

    v45 = [v41 openSensitiveURL:v43 withOptions:isa];

    if (v45)
    {
      return (v37)(v40, v12);
    }

    else
    {
      v46 = v60;
      v58();
      v47 = v64;
      (v57[0])(v64, v40, v12);
      v48 = v40;
      v49 = sub_1000038F4();
      v50 = sub_100003994();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v66 = v58;
        *v51 = 136315138;
        sub_100003518();
        v52 = sub_100003A24();
        v61 = v38;
        v53 = v52;
        v59 = v3;
        v55 = v54;
        v37(v47, v12);
        v56 = sub_100002C24(v53, v55, &v66);

        *(v51 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v49, v50, "Could not open url %s", v51, 0xCu);
        sub_100003570(v58);

        v61(v46, v59);
        return (v37)(v63, v12);
      }

      else
      {

        v37(v47, v12);
        v38(v46, v3);
        return (v37)(v48, v12);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100001E58(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void FollowUpViewController.processFollowUpItem(_:selectedAction:completion:)(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v89 = a3;
  v85 = a1;
  v8 = sub_100003914();
  v9 = *(v8 - 8);
  v87 = v8;
  v88 = v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v84 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v84 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v84 - v20;
  __chkstk_darwin(v19);
  v23 = &v84 - v22;
  if (!a2)
  {
    __break(1u);
LABEL_44:
    __break(1u);
  }

  v86 = a4;
  v90 = 0x6E6F69746361;
  v91 = 0xE600000000000000;
  sub_1000039D4();
  v24 = [a2 userInfo];
  if (!v24)
  {
    goto LABEL_44;
  }

  v25 = v24;
  v26 = sub_100003934();

  if (!*(v26 + 16) || (v27 = v5, v28 = sub_100003244(v92), (v29 & 1) == 0))
  {

    v30 = sub_1000035BC(v92);
    goto LABEL_17;
  }

  sub_100003670(*(v26 + 56) + 32 * v28, v93);
  sub_1000035BC(v92);

  v30 = swift_dynamicCast();
  if ((v30 & 1) == 0)
  {
LABEL_17:
    (*((swift_isaMask & *v5) + 0x58))(v30);
    v45 = a2;
    v46 = sub_1000038F4();
    v47 = sub_100003994();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      *(v48 + 4) = v45;
      *v49 = a2;
      v50 = v45;
      _os_log_impl(&_mh_execute_header, v46, v47, "no action string for %@", v48, 0xCu);
      sub_100003610(v49, &qword_10000C1C8, &qword_100003E30);
    }

    (*(v88 + 8))(v12, v87);
    v51 = v89;
    if (v89)
    {
      goto LABEL_20;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v32 = v90;
  v31 = v91;
  v84 = v91;
  if (v90 == 0x41736C6961746564 && v91 == 0xED00006E6F697463 || (sub_100003A34() & 1) != 0)
  {
    v90 = 7107189;
    v91 = 0xE300000000000000;
    sub_1000039D4();
    v33 = [a2 userInfo];
    if (!v33)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v34 = v33;
    v35 = sub_100003934();

    if (*(v35 + 16) && (v36 = sub_100003244(v92), (v37 & 1) != 0))
    {
      sub_100003670(*(v35 + 56) + 32 * v36, v93);
      sub_1000035BC(v92);

      v38 = swift_dynamicCast();
      if (v38)
      {
        v40 = v90;
        v39 = v91;
        (*((swift_isaMask & *v5) + 0x58))();

        v41 = sub_1000038F4();
        v42 = sub_1000039A4();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v92[0] = v44;
          *v43 = 136315138;
          *(v43 + 4) = sub_100002C24(v40, v39, v92);
          _os_log_impl(&_mh_execute_header, v41, v42, "action, detailsActions, open URL %s", v43, 0xCu);
          sub_100003570(v44);
        }

        (*(v88 + 8))(v23, v87);
        (*((swift_isaMask & *v27) + 0x70))(v40, v39);

        goto LABEL_40;
      }
    }

    else
    {

      v38 = sub_1000035BC(v92);
    }

    (*((swift_isaMask & *v5) + 0x58))(v38);
    v52 = sub_1000038F4();
    v53 = sub_100003994();
    v54 = os_log_type_enabled(v52, v53);
    v51 = v89;
    if (v54)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "action, detailsActions, URL missing", v55, 2u);
    }

    (*(v88 + 8))(v21, v87);
LABEL_41:
    if (v51)
    {

LABEL_20:
      v51(1);
      return;
    }

    goto LABEL_46;
  }

  v56 = 0x7463417261656C63;
  if (v32 == 0x7463417261656C63 && v31 == 0xEB000000006E6F69 || (v56 = sub_100003A34(), (v56 & 1) != 0))
  {
    (*((swift_isaMask & *v5) + 0x58))(v56);
    v57 = v85;
    v58 = v85;
    v59 = sub_1000038F4();
    v60 = sub_1000039A4();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412290;
      *(v61 + 4) = v58;
      *v62 = v57;
      v63 = v58;
      _os_log_impl(&_mh_execute_header, v59, v60, "action, clearing item %@", v61, 0xCu);
      sub_100003610(v62, &qword_10000C1C8, &qword_100003E30);
    }

    (*(v88 + 8))(v18, v87);
    if (!v57)
    {
      goto LABEL_48;
    }

    v64 = [v58 uniqueIdentifier];
    v51 = v89;
    if (v64)
    {
      v65 = v64;
      v66 = sub_100003954();
      v68 = v67;

      v69 = [objc_allocWithZone(FLFollowUpController) init];
      sub_100001E58(&qword_10000C1D0, &qword_100003E38);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_100003E00;
      *(v70 + 56) = &type metadata for String;
      *(v70 + 32) = v66;
      *(v70 + 40) = v68;
      isa = sub_100003984().super.isa;

      v92[0] = 0;
      LODWORD(v68) = [v69 clearPendingFollowUpItemsWithUniqueIdentifiers:isa error:v92];

      if (v68)
      {
        v72 = v92[0];
      }

      else
      {
        v83 = v92[0];
        sub_1000038A4();

        swift_willThrow();
      }
    }

    goto LABEL_41;
  }

  (*((swift_isaMask & *v5) + 0x58))(v56);
  v73 = a2;
  v74 = sub_1000038F4();
  v75 = sub_100003994();
  if (!os_log_type_enabled(v74, v75))
  {

    goto LABEL_39;
  }

  v76 = swift_slowAlloc();
  v77 = swift_slowAlloc();
  v92[0] = v77;
  *v76 = 136315138;
  v78 = [v73 identifier];

  if (v78)
  {
    v79 = sub_100003954();
    v81 = v80;

    v82 = sub_100002C24(v79, v81, v92);

    *(v76 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v74, v75, "missing action: %s", v76, 0xCu);
    sub_100003570(v77);

LABEL_39:
    (*(v88 + 8))(v15, v87);
LABEL_40:
    v51 = v89;
    goto LABEL_41;
  }

LABEL_49:
  __break(1u);
}

id FollowUpViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_100003944();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_100002B78(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for FollowUpViewController(0);
  return objc_msgSendSuper2(&v4, *a1);
}

unint64_t sub_100002C24(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002CF0(v11, 0, 0, 1, a1, a2);
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
    sub_100003670(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003570(v11);
  return v7;
}

unint64_t sub_100002CF0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002DFC(a5, a6);
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
    result = sub_1000039F4();
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

char *sub_100002DFC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100002E48(a1, a2);
  sub_100002F78(&off_100008318);
  return v3;
}

char *sub_100002E48(uint64_t a1, unint64_t a2)
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

  v6 = sub_100003064(v5, 0);
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

  result = sub_1000039F4();
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
        v10 = sub_100003974();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003064(v10, 0);
        result = sub_1000039E4();
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

uint64_t sub_100002F78(uint64_t result)
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

  result = sub_1000030D8(result, v11, 1, v3);
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

void *sub_100003064(uint64_t a1, uint64_t a2)
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

  sub_100001E58(&qword_10000C200, &qword_100003E58);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000030D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001E58(&qword_10000C200, &qword_100003E58);
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

unint64_t sub_1000031CC(uint64_t a1, uint64_t a2)
{
  sub_100003A44();
  sub_100003964();
  v4 = sub_100003A54();

  return sub_100003288(a1, a2, v4);
}

unint64_t sub_100003244(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000039B4(*(v2 + 40));

  return sub_100003340(a1, v4);
}

unint64_t sub_100003288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100003A34())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100003340(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000037C4(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000039C4();
      sub_1000035BC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100003408(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001E58(&qword_10000C208, &qword_100003E60);
    v3 = sub_100003A14();
    v4 = a1 + 32;

    while (1)
    {
      sub_100003824(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1000031CC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100003894(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100003518()
{
  result = qword_10000C1C0;
  if (!qword_10000C1C0)
  {
    sub_1000038E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1C0);
  }

  return result;
}

uint64_t sub_100003570(void *a1)
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

uint64_t sub_100003610(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001E58(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003670(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000036D4(uint64_t a1)
{
  result = sub_100003914();
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

uint64_t sub_100003764(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100003774()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003824(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001E58(&qword_10000C210, &qword_100003E68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100003894(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}