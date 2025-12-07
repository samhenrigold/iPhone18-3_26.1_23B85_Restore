uint64_t sub_100001208@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = qword_100008118;
  swift_beginAccess();
  sub_1000012E8(v1 + v4, &v8);
  if (v9)
  {
    return sub_100001474(&v8, a1);
  }

  sub_1000022E0(&v8, &qword_100008120, &qword_100003430);
  v6 = sub_100003084();
  v7 = sub_100003074();
  a1[3] = v6;
  a1[4] = &off_100004278;
  *a1 = v7;
  sub_1000013A0(a1, &v8);
  swift_beginAccess();
  sub_100001404(&v8, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_1000012E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001358(&qword_100008120, &qword_100003430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100001358(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000013A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100001404(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001358(&qword_100008120, &qword_100003430);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100001474(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000148C(__int128 *a1)
{
  sub_100001474(a1, v4);
  v2 = qword_100008118;
  swift_beginAccess();
  sub_100001404(v4, v1 + v2);
  return swift_endAccess();
}

void (*sub_1000014E8(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v3[13] = v1;
  sub_100001208(v3);
  return sub_100001560;
}

void sub_100001560(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    sub_1000013A0(*a1, (v2 + 5));
    v4 = qword_100008118;
    swift_beginAccess();
    sub_100001404((v2 + 5), v3 + v4);
    swift_endAccess();
    sub_100002EE0(v2);
  }

  else
  {
    sub_100001474(*a1, (v2 + 5));
    v5 = qword_100008118;
    swift_beginAccess();
    sub_100001404((v2 + 5), v3 + v5);
    swift_endAccess();
  }

  free(v2);
}

double sub_100001628@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_100001638(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v94 = a6;
  v97 = a3;
  v98 = a2;
  v99 = a1;
  v9 = sub_100003044();
  v87 = *(v9 - 8);
  v88 = v9;
  __chkstk_darwin(v9);
  v86 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000030D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v91 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003104();
  v89 = *(v14 - 8);
  v90 = v14;
  v15 = __chkstk_darwin(v14);
  v83 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v80 - v17;
  v19 = sub_100001358(&qword_100008128, &qword_100003438);
  v20 = __chkstk_darwin(v19 - 8);
  v84 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v96 = &v80 - v22;
  v23 = sub_1000030C4();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v30 = &v80 - v29;
  __chkstk_darwin(v28);
  v85 = &v80 - v31;
  v32 = os_variant_allows_internal_security_policies();
  v93 = v6;
  if (!v32)
  {
    v95 = a4;
    (*((swift_isaMask & *v6) + qword_100008180 + 8))(v100);
    v46 = v101;
    v47 = v102;
    sub_10000229C(v100, v101);
    result = (*(v47 + 8))(v46, v47);
    v48 = result;
    v49 = *(result + 16);
    if (!v49)
    {
      v56 = a5;

      v57 = 1;
LABEL_24:
      v42 = v93;
      v55 = v95;
      v58 = v84;
LABEL_34:
      (*(v24 + 56))(v58, v57, 1, v23);
      sub_100002EE0(v100);
      if ((*(v24 + 48))(v58, 1, v23) == 1)
      {
        sub_1000022E0(v58, &qword_100008128, &qword_100003438);
        v67 = v83;
        sub_1000030E4();
        v68 = v98;

        v69 = sub_1000030F4();
        v70 = sub_100003124();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v100[0] = swift_slowAlloc();
          *v71 = 136446467;
          *(v71 + 4) = sub_1000028E8(v99, v68, v100);
          *(v71 + 12) = 2081;
          *(v71 + 14) = sub_1000028E8(v97, v55, v100);
          _os_log_impl(&_mh_execute_header, v69, v70, "Couldn't locate existing authorization record for app with bundle identifier “%{public}s” and team identifier “%{private}s”.", v71, 0x16u);
          swift_arrayDestroy();

          (*(v89 + 8))(v83, v90);
        }

        else
        {

          (*(v89 + 8))(v67, v90);
        }

        v79 = v91;
        (*(v12 + 104))(v91, enum case for OverrideSettingsResponse.approved(_:), v11);
        v56(v79);
        return (*(v12 + 8))(v79, v11);
      }

      v43 = v56;
LABEL_38:
      v72 = v85;
      v73 = (*(v24 + 32))(v85, v58, v23);
      (*((swift_isaMask & *v42) + qword_100008180 + 8))(v100, v73);
      v74 = v101;
      v75 = v102;
      v97 = sub_10000229C(v100, v101);
      v76 = v86;
      sub_1000030B4();
      v77 = swift_allocObject();
      v77[2] = v99;
      v77[3] = v98;
      v77[4] = v43;
      v77[5] = v94;
      v78 = *(v75 + 16);

      v78(v76, sub_100002ED0, v77, v74, v75);

      (*(v87 + 8))(v76, v88);
      (*(v24 + 8))(v72, v23);
      return sub_100002EE0(v100);
    }

    v81 = v12;
    v82 = v11;
    v92 = a5;
    v50 = 0;
    v96 = (result + ((*(v24 + 80) + 32) & ~*(v24 + 80)));
    while (1)
    {
      if (v50 >= *(v48 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      (*(v24 + 16))(v27, &v96[*(v24 + 72) * v50], v23);
      if (sub_1000030A4() == v99 && v52 == v98)
      {
      }

      else
      {
        v53 = sub_100003164();

        if ((v53 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      if (sub_100003094() == v97 && v54 == v95)
      {
        v55 = v95;

LABEL_33:
        v58 = v84;
        (*(v24 + 32))(v84, v27, v23);
        v57 = 0;
        v56 = v92;
        v42 = v93;
        v11 = v82;
        v12 = v81;
        goto LABEL_34;
      }

      v51 = sub_100003164();

      if (v51)
      {

        v55 = v95;
        goto LABEL_33;
      }

LABEL_13:
      ++v50;
      result = (*(v24 + 8))(v27, v23);
      if (v49 == v50)
      {

        v57 = 1;
        v56 = v92;
        v11 = v82;
        v12 = v81;
        goto LABEL_24;
      }
    }
  }

  v97 = v18;
  v81 = v12;
  v82 = v11;
  v92 = a5;
  (*((swift_isaMask & *v6) + qword_100008180 + 8))(v100);
  v33 = v101;
  v34 = v102;
  sub_10000229C(v100, v101);
  result = (*(v34 + 8))(v33, v34);
  v36 = result;
  v37 = *(result + 16);
  if (!v37)
  {
LABEL_9:

    v41 = 1;
    v43 = v92;
    v42 = v93;
    v44 = v96;
    v45 = v97;
LABEL_27:
    (*(v24 + 56))(v44, v41, 1, v23);
    sub_100002EE0(v100);
    if ((*(v24 + 48))(v44, 1, v23) == 1)
    {
      sub_1000022E0(v44, &qword_100008128, &qword_100003438);
      sub_1000030E4();
      v59 = v98;

      v60 = sub_1000030F4();
      v61 = sub_100003124();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v100[0] = v63;
        *v62 = 136446210;
        *(v62 + 4) = sub_1000028E8(v99, v59, v100);
        _os_log_impl(&_mh_execute_header, v60, v61, "Couldn't locate existing authorization record for app with bundle identifier “%{public}s”.", v62, 0xCu);
        sub_100002EE0(v63);
      }

      (*(v89 + 8))(v45, v90);
      v64 = v82;
      v65 = v81;
      v66 = v91;
      (*(v81 + 104))(v91, enum case for OverrideSettingsResponse.approved(_:), v82);
      v43(v66);
      return (*(v65 + 8))(v66, v64);
    }

    v58 = v44;
    goto LABEL_38;
  }

  v38 = 0;
  while (v38 < *(v36 + 16))
  {
    (*(v24 + 16))(v30, v36 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v38, v23);
    if (sub_1000030A4() == v99 && v39 == v98)
    {

LABEL_26:

      v44 = v96;
      (*(v24 + 32))(v96, v30, v23);
      v41 = 0;
      v43 = v92;
      v42 = v93;
      v45 = v97;
      goto LABEL_27;
    }

    v40 = sub_100003164();

    if (v40)
    {
      goto LABEL_26;
    }

    ++v38;
    result = (*(v24 + 8))(v30, v23);
    if (v37 == v38)
    {
      goto LABEL_9;
    }
  }

LABEL_43:
  __break(1u);
  return result;
}

void *sub_10000229C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000022E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001358(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100002340(uint64_t a1, char a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6)
{
  v38 = a3;
  v41 = sub_1000030D4();
  v11 = *(v41 - 8);
  __chkstk_darwin(v41);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003104();
  v39 = *(v14 - 8);
  v40 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v36 - v18;
  if (a2)
  {
    sub_1000030E4();

    sub_100002FCC(a1, 1);
    v20 = sub_1000030F4();
    v21 = sub_100003124();

    sub_100002FD8(a1, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36[1] = a6;
      v23 = v22;
      v24 = swift_slowAlloc();
      v37 = a5;
      v42 = v24;
      *v23 = 136446466;
      *(v23 + 4) = sub_1000028E8(v38, a4, &v42);
      *(v23 + 12) = 2082;
      swift_getErrorValue();
      v25 = sub_100003174();
      v27 = sub_1000028E8(v25, v26, &v42);

      *(v23 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unable to revoke authorization for app with bundle identifier “%{public}s”. Error: %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      a5 = v37;
    }

    (*(v39 + 8))(v17, v40);
    v28 = &enum case for OverrideSettingsResponse.denied(_:);
  }

  else
  {
    sub_1000030E4();

    v29 = sub_1000030F4();
    v30 = sub_100003134();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = a5;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42 = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_1000028E8(v38, a4, &v42);
      _os_log_impl(&_mh_execute_header, v29, v30, "Successfully revoked authorization for app with bundle identifier “%{public}s”.", v32, 0xCu);
      sub_100002EE0(v33);

      a5 = v31;
    }

    (*(v39 + 8))(v19, v40);
    v28 = &enum case for OverrideSettingsResponse.approved(_:);
  }

  v34 = v41;
  (*(v11 + 104))(v13, *v28, v41);
  a5(v13);
  return (*(v11 + 8))(v13, v34);
}

id sub_100002760()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_100002794()
{
  v1 = &v0[qword_100008118];
  v2 = type metadata accessor for FamilyControlsOverrideSettingsHandler(0);
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "init");
}

id sub_1000027EC(char *a1)
{
  v2 = &a1[qword_100008118];
  v3 = type metadata accessor for FamilyControlsOverrideSettingsHandler(0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v5.receiver = a1;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, "init");
}

id sub_10000287C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyControlsOverrideSettingsHandler(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000028E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000029B4(v11, 0, 0, 1, a1, a2);
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
    sub_100002FE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002EE0(v11);
  return v7;
}

unint64_t sub_1000029B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002AC0(a5, a6);
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
    result = sub_100003154();
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

char *sub_100002AC0(uint64_t a1, unint64_t a2)
{
  v3 = sub_100002B0C(a1, a2);
  sub_100002C3C(&off_100004228);
  return v3;
}

char *sub_100002B0C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002D28(v5, 0);
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

  result = sub_100003154();
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
        v10 = sub_100003114();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002D28(v10, 0);
        result = sub_100003144();
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

uint64_t sub_100002C3C(uint64_t result)
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

  result = sub_100002D9C(result, v11, 1, v3);
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

void *sub_100002D28(uint64_t a1, uint64_t a2)
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

  sub_100001358(&qword_100008170, &qword_1000034E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002D9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001358(&qword_100008170, &qword_1000034E0);
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

uint64_t sub_100002E90()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002EE0(void *a1)
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

uint64_t type metadata accessor for FamilyControlsOverrideSettingsHandler(uint64_t a1)
{
  result = qword_100008190;
  if (!qword_100008190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002FCC(uint64_t a1, char a2)
{
  if (a2)
  {
    return _swift_errorRetain(a1);
  }

  return a1;
}

uint64_t sub_100002FD8(uint64_t a1, char a2)
{
  if (a2)
  {
    return _swift_errorRelease(a1);
  }

  return a1;
}

uint64_t sub_100002FE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}