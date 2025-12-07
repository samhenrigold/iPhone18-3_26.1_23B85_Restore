void sub_1000012F0()
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

void sub_1000014C8(void *a1)
{
  v2 = v1;
  v3 = [a1 request];
  v4 = [v3 content];

  v5 = [v4 categoryIdentifier];
  if (!v5)
  {
    sub_100002AB8();
    v5 = sub_100002A88();
  }

  v6 = sub_100002AB8();
  v8 = v7;
  if (v6 == sub_100002AB8() && v8 == v9)
  {
    goto LABEL_15;
  }

  v11 = sub_100002BC8();

  if (v11)
  {
LABEL_16:
    v22 = sub_100002B68();
    sub_100002368(0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100002F80;
    ObjectType = swift_getObjectType();
    sub_100002424();
    v24 = sub_100002AC8();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    v27 = sub_100002468();
    *(v23 + 64) = v27;
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    ObjectType = v5;
    type metadata accessor for HKMCNotificationCategory();
    v28 = v5;
    v29 = sub_100002AC8();
    *(v23 + 96) = &type metadata for String;
    *(v23 + 104) = v27;
    *(v23 + 72) = v29;
    *(v23 + 80) = v30;
    sub_10000250C(0, &qword_100008498, OS_os_log_ptr);
    v31 = sub_100002B78();
    sub_100002A78(v22, &_mh_execute_header, v31, "[%{public}@] Skipping adding actions for category: %@", 53, 2, v23);

    goto LABEL_17;
  }

  v12 = sub_100002AB8();
  v14 = v13;
  if (v12 == sub_100002AB8() && v14 == v15)
  {
LABEL_15:

    goto LABEL_16;
  }

  v17 = sub_100002BC8();

  if (v17)
  {
    goto LABEL_16;
  }

  v18 = sub_100002AB8();
  v20 = v19;
  if (v18 == sub_100002AB8() && v20 == v21)
  {
    goto LABEL_15;
  }

  v32 = sub_100002BC8();

  if (v32)
  {
    goto LABEL_16;
  }

  v33 = sub_100002AB8();
  v35 = v34;
  if (v33 == sub_100002AB8() && v35 == v36)
  {
    goto LABEL_15;
  }

  v37 = sub_100002BC8();

  if (v37)
  {
    goto LABEL_16;
  }

  v38 = sub_100002AB8();
  v40 = v39;
  if (v38 == sub_100002AB8() && v40 == v41)
  {
    goto LABEL_15;
  }

  v42 = sub_100002BC8();

  if (v42)
  {
    goto LABEL_16;
  }

  v43 = sub_100002AB8();
  v45 = v44;
  if (v43 == sub_100002AB8() && v45 == v46)
  {
    goto LABEL_15;
  }

  v47 = sub_100002BC8();

  if (v47)
  {
    goto LABEL_16;
  }

  v48 = sub_100002AB8();
  v50 = v49;
  if (v48 == sub_100002AB8() && v50 == v51)
  {
    goto LABEL_15;
  }

  v52 = sub_100002BC8();

  if (v52)
  {
    goto LABEL_16;
  }

  v53 = sub_100002AB8();
  v55 = v54;
  if (v53 == sub_100002AB8() && v55 == v56)
  {
    goto LABEL_15;
  }

  v57 = sub_100002BC8();

  if (v57)
  {
    goto LABEL_16;
  }

  v58 = sub_100002AB8();
  v60 = v59;
  if (v58 == sub_100002AB8() && v60 == v61)
  {
    goto LABEL_15;
  }

  v62 = sub_100002BC8();

  if (v62)
  {
    goto LABEL_16;
  }

  v63 = sub_100002AB8();
  v65 = v64;
  if (v63 == sub_100002AB8() && v65 == v66)
  {
    goto LABEL_15;
  }

  v67 = sub_100002BC8();

  if (v67)
  {
    goto LABEL_16;
  }

  v68 = sub_100002AB8();
  v70 = v69;
  if (v68 == sub_100002AB8() && v70 == v71)
  {
    goto LABEL_15;
  }

  v72 = sub_100002BC8();

  if (v72)
  {
    goto LABEL_16;
  }

  v73 = sub_100002AB8();
  v75 = v74;
  if (v73 == sub_100002AB8() && v75 == v76)
  {
    goto LABEL_15;
  }

  v77 = sub_100002BC8();

  if (v77)
  {
    goto LABEL_16;
  }

  v78 = sub_100002AB8();
  v80 = v79;
  if (v78 == sub_100002AB8() && v80 == v81)
  {

    goto LABEL_51;
  }

  v82 = sub_100002BC8();

  if (v82)
  {
LABEL_51:
    v83 = objc_opt_self();
    v119[4] = [v83 hkmc_actionWithIdentifier:HKMCNotificationActionIdentifierPeriodNotStarted];
    v84 = 0;
    v119[5] = [v83 hkmc_actionWithIdentifier:HKMCNotificationActionIdentifierOpenAddPeriodCalendar];
    v85 = &_swiftEmptyArrayStorage;
    ObjectType = &_swiftEmptyArrayStorage;
    while (v84 != 2)
    {
      v86 = v119[v84++ + 4];
      if (v86)
      {
        v87 = v86;
        sub_100002AF8();
        if (*((ObjectType & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((ObjectType & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100002B18();
        }

        sub_100002B28();
        v85 = ObjectType;
      }
    }

    goto LABEL_67;
  }

  v88 = sub_100002AB8();
  v90 = v89;
  if (v88 == sub_100002AB8() && v90 == v91)
  {

    goto LABEL_61;
  }

  v92 = sub_100002BC8();

  if ((v92 & 1) == 0)
  {
    v110 = sub_100002AB8();
    v112 = v111;
    if (v110 != sub_100002AB8() || v112 != v113)
    {
      v114 = sub_100002BC8();

      if (v114)
      {
        goto LABEL_16;
      }

      v115 = sub_100002AB8();
      v117 = v116;
      if (v115 != sub_100002AB8() || v117 != v118)
      {
        sub_100002BC8();
      }
    }

    goto LABEL_15;
  }

LABEL_61:
  v93 = objc_opt_self();
  v121[4] = [v93 hkmc_actionWithIdentifier:HKMCNotificationActionIdentifierPeriodNotEnded];
  v94 = 0;
  v121[5] = [v93 hkmc_actionWithIdentifier:HKMCNotificationActionIdentifierOpenAddPeriodCalendar];
  v85 = &_swiftEmptyArrayStorage;
  ObjectType = &_swiftEmptyArrayStorage;
  while (v94 != 2)
  {
    v95 = v121[v94++ + 4];
    if (v95)
    {
      v96 = v95;
      sub_100002AF8();
      if (*((ObjectType & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((ObjectType & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100002B18();
      }

      sub_100002B28();
      v85 = ObjectType;
    }
  }

LABEL_67:
  sub_100002794(0);
  swift_arrayDestroy();
  if (!v85)
  {
    goto LABEL_16;
  }

  v97 = sub_100002B68();
  sub_100002368(0);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_100002F70;
  ObjectType = swift_getObjectType();
  sub_100002424();
  v99 = sub_100002AC8();
  v101 = v100;
  *(v98 + 56) = &type metadata for String;
  v102 = sub_100002468();
  *(v98 + 64) = v102;
  *(v98 + 32) = v99;
  *(v98 + 40) = v101;
  if (v85 >> 62)
  {
    v103 = sub_100002B98();
  }

  else
  {
    v103 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v98 + 96) = &type metadata for Int;
  *(v98 + 104) = &protocol witness table for Int;
  *(v98 + 72) = v103;
  ObjectType = v5;
  type metadata accessor for HKMCNotificationCategory();
  v31 = v5;
  v104 = sub_100002AC8();
  *(v98 + 136) = &type metadata for String;
  *(v98 + 144) = v102;
  *(v98 + 112) = v104;
  *(v98 + 120) = v105;
  sub_10000250C(0, &qword_100008498, OS_os_log_ptr);
  v106 = sub_100002B78();
  sub_100002A78(v97, &_mh_execute_header, v106, "[%{public}@] Adding %d actions for category: %@", 47, 2, v98);

  v107 = [v2 extensionContext];
  if (v107)
  {
    v108 = v107;
    sub_10000250C(0, &qword_1000084A0, UNNotificationAction_ptr);
    isa = sub_100002B08().super.isa;

    [v108 setNotificationActions:isa];

    goto LABEL_18;
  }

LABEL_17:

LABEL_18:
}

id sub_100002310(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NotificationViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100002368(uint64_t a1)
{
  if (!qword_100008478)
  {
    sub_1000023C0();
    v1 = sub_100002BB8();
    if (!v2)
    {
      atomic_store(v1, &qword_100008478);
    }
  }
}

unint64_t sub_1000023C0()
{
  result = qword_100008480;
  if (!qword_100008480)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100008480);
  }

  return result;
}

unint64_t sub_100002424()
{
  result = qword_100008488;
  if (!qword_100008488)
  {
    type metadata accessor for NotificationViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_100008488);
  }

  return result;
}

unint64_t sub_100002468()
{
  result = qword_100008490;
  if (!qword_100008490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008490);
  }

  return result;
}

void type metadata accessor for HKMCNotificationCategory()
{
  if (!qword_1000084B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000084B0);
    }
  }
}

uint64_t sub_10000250C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000255C(uint64_t a1, id *a2)
{
  result = sub_100002A98();
  *a2 = 0;
  return result;
}

uint64_t sub_1000025D4(uint64_t a1, id *a2)
{
  v3 = sub_100002AA8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002654@<X0>(uint64_t *a2@<X8>)
{
  sub_100002AB8();
  v3 = sub_100002A88();

  *a2 = v3;
  return result;
}

uint64_t sub_100002698(void *a1, uint64_t *a2)
{
  v2 = sub_100002AB8();
  v4 = v3;
  if (v2 == sub_100002AB8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100002BC8();
  }

  return v7 & 1;
}

uint64_t sub_100002720@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100002A88();

  *a2 = v3;
  return result;
}

uint64_t sub_100002768@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002AB8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_100002794(uint64_t a1)
{
  if (!qword_1000084A8)
  {
    sub_10000250C(255, &qword_1000084A0, UNNotificationAction_ptr);
    v1 = sub_100002B88();
    if (!v2)
    {
      atomic_store(v1, &qword_1000084A8);
    }
  }
}

uint64_t sub_1000027FC(uint64_t a1)
{
  v2 = sub_100002A34(&qword_1000084D0, &unk_1000030F8);
  v3 = sub_100002A34(&qword_1000084D8, &unk_1000030A0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002930()
{
  sub_100002AB8();
  v0 = sub_100002AE8();

  return v0;
}

uint64_t sub_10000296C(uint64_t a1)
{
  sub_100002AB8();
  sub_100002AD8();
}

Swift::Int sub_1000029C0(uint64_t a1)
{
  sub_100002AB8();
  sub_100002BD8();
  sub_100002AD8();
  v1 = sub_100002BE8();

  return v1;
}

uint64_t sub_100002A34(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKMCNotificationCategory();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}