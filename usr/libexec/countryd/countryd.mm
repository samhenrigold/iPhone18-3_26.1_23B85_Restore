uint64_t sub_1000016F8()
{
  v0 = +[NSXPCConnection currentConnection];
  v1 = [v0 valueForEntitlement:@"com.apple.countryd.contribute"];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v1 BOOLValue] & 1) != 0)
  {
    v2 = 1;
  }

  else
  {
    if (qword_100019008 != -1)
    {
      dispatch_once(&qword_100019008, &stru_100014A98);
    }

    v3 = qword_100019010;
    if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_FAULT))
    {
      v4 = v3;
      v9 = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "com.apple.countryd.contribute";
      v15 = 1026;
      v16 = [v0 processIdentifier];
      _os_log_impl(&dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:peer process is missing entitlement to contribute data, entitlement:%{public, location:escape_only}s, process:%{public}d}", &v9, 0x22u);

      if (qword_100019008 != -1)
      {
        dispatch_once(&qword_100019008, &stru_100014A98);
      }
    }

    v5 = qword_100019010;
    if (os_signpost_enabled(qword_100019010))
    {
      v6 = v5;
      v7 = [v0 processIdentifier];
      v9 = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "com.apple.countryd.contribute";
      v15 = 1026;
      v16 = v7;
      _os_signpost_emit_with_name_impl(&dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "peer process is missing entitlement to contribute data", "{msg%{public}.0s:peer process is missing entitlement to contribute data, entitlement:%{public, location:escape_only}s, process:%{public}d}", &v9, 0x22u);
    }

    v2 = 0;
  }

  return v2;
}

id sub_100001930()
{
  v0 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.RegulatoryDomain"];
  v1 = [v0 BOOLForKey:@"UpdatesLocked"];

  return v1;
}

uint64_t sub_100001994()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000019E0()
{
  if (&metaclass for LSKLocalStatusClient)
  {
    v0 = &nominal type descriptor for LSKLocalStatusClient == 0;
  }

  else
  {
    v0 = 1;
  }

  v3 = v0 || &type metadata for LSKLocalStatusClient == 0 || &type metadata accessor for LSKLocalStatusClient == 0 || &class metadata base offset for LSKLocalStatusClient == 0;
  v4 = !v3;
  if (v3)
  {
    v5 = sub_10000E514();
    sub_100009A98(0, &qword_100018E68, OS_os_log_ptr);
    v6 = sub_10000E534();
    sub_10000E424(v5, &dword_100000000, v6, "This platform does not have LocalStatusKit", 42, 2, &_swiftEmptyArrayStorage);
  }

  return v4;
}

id sub_100001B70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDSharerAvailability();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100001C20(unint64_t a1)
{
  v2 = sub_10000E364();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v68 - v7;
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

    return &_swiftEmptyDictionarySingleton;
  }

  v9 = sub_10000E594();
  if (!v9)
  {
    return &_swiftEmptyDictionarySingleton;
  }

LABEL_3:
  v72 = v6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = sub_10000E574();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_39;
    }

    v10 = *(a1 + 32);
  }

  v11 = v10;
  v69 = v8;
  v70 = v3;
  v71 = v2;
  v12 = [v10 countryCode];
  v13 = &_swiftEmptyDictionarySingleton;
  if (v12)
  {
    v14 = v12;
    v15 = sub_10000E434();
    v17 = v16;

    v18 = sub_100002258(v15, v17);
    v20 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __src = &_swiftEmptyDictionarySingleton;
    sub_100008500(v18, v20, 0xD000000000000032, 0x800000010000FCF0, isUniquelyReferenced_nonNull_native);
    v13 = __src;
  }

  if (v9 < 1)
  {
    __break(1u);
LABEL_39:
    __break(1u);
  }

  v73 = v13;
  v74 = v11;
  v22 = 0;
  v23 = &_swiftEmptyArrayStorage;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v24 = sub_10000E574();
    }

    else
    {
      v24 = *(a1 + 8 * v22 + 32);
    }

    v25 = v24;
    v26 = [v24 countryCode];
    if (v26)
    {
      v27 = v26;
      v28 = sub_10000E434();
      v30 = v29;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_100007618(0, *(v23 + 2) + 1, 1, v23);
      }

      v32 = *(v23 + 2);
      v31 = *(v23 + 3);
      if (v32 >= v31 >> 1)
      {
        v23 = sub_100007618((v31 > 1), v32 + 1, 1, v23);
      }

      *(v23 + 2) = v32 + 1;
      v33 = &v23[16 * v32];
      *(v33 + 4) = v28;
      *(v33 + 5) = v30;
    }

    else
    {
    }

    ++v22;
  }

  while (v9 != v22);
  v34 = objc_opt_self();
  isa = sub_10000E4B4().super.isa;

  __src = 0;
  v36 = [v34 dataWithJSONObject:isa options:0 error:&__src];

  v37 = __src;
  if (v36)
  {
    v38 = sub_10000E304();
    v40 = v39;

    sub_100008D08(v38, v40);
    v41 = v73;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    __src = v41;
    sub_100008500(v38, v40, 0xD000000000000033, 0x800000010000FCB0, v42);
    sub_100008D5C(v38, v40);
    v43 = __src;
  }

  else
  {
    v45 = v37;
    sub_10000E2B4();

    swift_willThrow();

    v43 = v73;
  }

  v44 = v74;
  v46 = [v74 timestamp];
  if (v46)
  {
    v47 = v72;
    v48 = v46;
    sub_10000E334();

    v50 = v69;
    v49 = v70;
    v51 = v71;
    (*(v70 + 32))(v69, v47, v71);
    sub_10000E314();
    __src = v52;
    v53 = sub_100008AB0(&__src, &v78);
    v55 = v54;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v75 = v43;
    sub_100008500(v53, v55 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000030, 0x800000010000FC70, v56);
    (*(v49 + 8))(v50, v51);
    v43 = v75;
  }

  LODWORD(v75) = 0;
  v57 = kRDPrioritySingleLocation;
  if ([v44 priorityIsAtLeast:kRDPrioritySingleLocation] || (v57 = kRDPriorityNearbyCellsMCC, objc_msgSend(v44, "priorityIsAtLeast:", kRDPriorityNearbyCellsMCC)) || (v57 = kRDPriorityServingCellMCC, objc_msgSend(v44, "priorityIsAtLeast:", kRDPriorityServingCellMCC)) || (v57 = kRDPriorityWiFiAP, objc_msgSend(v44, "priorityIsAtLeast:", kRDPriorityWiFiAP)))
  {
    LODWORD(v75) = v57;
  }

  v58 = sub_100008AB0(&v75, &v75 + 4);
  v60 = v59;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  __src = v43;
  sub_100008500(v58, v60 & 0xFFFFFFFFFFFFFFLL, 0xD00000000000002FLL, 0x800000010000FC00, v61);
  v62 = __src;
  if ([v44 isInDisputedArea])
  {
    v76[0] = [v44 isInDisputedArea];
    v63 = sub_100008AB0(v76, &v76[1]);
    v65 = v64;
    v66 = swift_isUniquelyReferenced_nonNull_native();
    __src = v62;
    sub_100008500(v63, v65 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000031, 0x800000010000FC30, v66);

    return __src;
  }

  else
  {
  }

  return v62;
}

uint64_t sub_100002258(uint64_t a1, unint64_t a2)
{
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  sub_100008DB0(&qword_100018FE0, &qword_10000FB60);
  if (swift_dynamicCast())
  {
    sub_100009D58(__src, &v43);
    sub_100009D70(&v43, v44);
    sub_10000E294();
    __src[0] = v42;
    sub_100009DB4(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_100009C7C(__src, &qword_100018FE8, &qword_10000FB68);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_10000E584();
  }

  sub_100007CCC(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_100008B68(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v34[2] = v39;
  v10 = sub_100007D94(sub_100009CDC, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_10000E2E4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1000089E4(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_10000E464();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_10000E494();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_10000E584();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1000089E4(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_10000E474();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_10000E2F4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_10000E2F4();
    sub_100009D44(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_100009D44(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_100008D08(*&__src[0], *(&__src[0] + 1));

  sub_100008D5C(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_1000027C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8countryd14RDStatusSharer_statusClient;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100002880@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000E3F4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1000029B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1000098C0(v4 + v8, a4, a2, a3);
}

uint64_t sub_100002A3C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_100008DF8(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_100002B24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_100008DB0(a1, a2);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

id sub_100002C28()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_100002C5C()
{
  *&v0[OBJC_IVAR____TtC8countryd14RDStatusSharer_statusClient] = 0;
  v1 = OBJC_IVAR____TtC8countryd14RDStatusSharer_options;
  v2 = sub_10000E3F4();
  v47 = *(*(v2 - 8) + 56);
  v47(&v0[v1], 1, 1, v2);
  v3 = OBJC_IVAR____TtC8countryd14RDStatusSharer_statusKey;
  v4 = sub_100008DB0(&qword_100018E80, &qword_10000F9F8);
  v5 = *(v4 - 8);
  v49 = *(v5 + 56);
  v50 = v4;
  v48 = v5 + 56;
  v49(&v0[v3], 1, 1);
  v6 = OBJC_IVAR____TtC8countryd14RDStatusSharer_statusesKey;
  v7 = sub_100008DB0(&qword_100018E90, &qword_10000FA08);
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v10 = v8 + 56;
  v9(&v0[v6], 1, 1, v7);
  v51.receiver = v0;
  v51.super_class = type metadata accessor for RDStatusSharer(0);
  v11 = objc_msgSendSuper2(&v51, "init");
  if (&class metadata base offset for LSKLocalStatusClient && &type metadata accessor for LSKLocalStatusClient && &type metadata for LSKLocalStatusClient && &metaclass for LSKLocalStatusClient && &nominal type descriptor for LSKLocalStatusClient)
  {
    sub_10000E3B4();
    swift_allocObject();
    v46 = v11;
    v12 = v11;
    v13 = sub_10000E3A4();
    v14 = OBJC_IVAR____TtC8countryd14RDStatusSharer_statusClient;
    swift_beginAccess();
    *&v12[v14] = v13;

    v15 = sub_100008DB0(&qword_100018E78, &qword_10000F9F0);
    v42 = &v40;
    __chkstk_darwin(v15 - 8);
    v45 = v9;
    v17 = &v40 - v16;
    v18 = sub_10000E3D4();
    v44 = v7;
    __chkstk_darwin(v18);
    v43 = v10;
    (*(v20 + 104))(&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for LSKStatusOptions.Scope.sameAccount(_:));
    sub_100008DB0(&qword_100018EA0, &qword_10000FA18);
    v21 = sub_10000E3C4();
    v22 = *(v21 - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10000F9A0;
    (*(v22 + 104))(v24 + v23, enum case for LSKStatusOptions.DeviceType.n301(_:), v21);
    sub_10000E3E4();
    v47(v17, 0, 1, v2);
    v25 = OBJC_IVAR____TtC8countryd14RDStatusSharer_options;
    swift_beginAccess();
    sub_100008DF8(v17, &v12[v25], &qword_100018E78, &qword_10000F9F0);
    swift_endAccess();
    v26 = sub_100008DB0(&qword_100018E88, &qword_10000FA00);
    v47 = &v40;
    __chkstk_darwin(v26 - 8);
    v28 = &v40 - v27;
    v29 = sub_10000E414();
    v40 = &v40;
    v30 = *(v29 - 8);
    v31 = *(v30 + 64);
    __chkstk_darwin(v29);
    v42 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = enum case for LSKDomain.regulatory(_:);
    v41 = *(v30 + 104);
    v41(&v40 - v42, enum case for LSKDomain.regulatory(_:), v29);
    sub_100008DB0(&qword_100018EA8, &qword_10000FA20);
    sub_100008F48(&qword_100018EB0, sub_100008EF4, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    sub_100008F48(&qword_100018EC0, sub_100008FCC, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    sub_10000E404();
    (v49)(v28, 0, 1, v50);
    v33 = OBJC_IVAR____TtC8countryd14RDStatusSharer_statusKey;
    swift_beginAccess();
    sub_100008DF8(v28, &v12[v33], &qword_100018E88, &qword_10000FA00);
    swift_endAccess();
    v34 = sub_100008DB0(&qword_100018E98, &qword_10000FA10);
    v35 = __chkstk_darwin(v34 - 8);
    v37 = &v40 - v36;
    __chkstk_darwin(v35);
    v41(&v40 - v42, v32, v29);
    sub_100008DB0(&qword_100018ED0, &qword_10000FA28);
    sub_100009020();
    sub_1000090DC();
    sub_10000E404();
    v45(v37, 0, 1, v44);
    v38 = OBJC_IVAR____TtC8countryd14RDStatusSharer_statusesKey;
    swift_beginAccess();
    sub_100008DF8(v37, &v12[v38], &qword_100018E98, &qword_10000FA10);
    swift_endAccess();

    return v46;
  }

  return v11;
}

uint64_t sub_100003448(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return _swift_task_switch(sub_100003468, 0, 0);
}

uint64_t sub_100003468(uint64_t a1, uint64_t a2)
{
  if (&class metadata base offset for LSKLocalStatusClient)
  {
    v3 = &type metadata accessor for LSKLocalStatusClient == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3 || &type metadata for LSKLocalStatusClient == 0 || &metaclass for LSKLocalStatusClient == 0 || &nominal type descriptor for LSKLocalStatusClient == 0)
  {
    v13 = sub_10000E514();
    sub_100009A98(0, &qword_100018E68, OS_os_log_ptr);
    v14 = sub_10000E534();
    sub_10000E424(v13, &dword_100000000, v14, "No LSK available on this platform, exiting", 42, 2, &_swiftEmptyArrayStorage);

    goto LABEL_18;
  }

  v7 = (*((swift_isaMask & **(v2 + 96)) + 0x70))(a1, a2);
  *(v2 + 104) = v7;
  if (!v7)
  {
LABEL_18:
    v15 = *(v2 + 8);

    return v15();
  }

  v8 = *(v2 + 96);
  v9 = sub_100008DB0(&qword_100018E80, &qword_10000F9F8);
  *(v2 + 112) = v9;
  v10 = *(v9 - 8);
  *(v2 + 120) = v10;
  v11 = swift_task_alloc();
  *(v2 + 128) = v11;
  sub_100008DB0(&qword_100018E88, &qword_10000FA00);
  v12 = swift_task_alloc();
  (*((swift_isaMask & *v8) + 0xA0))();
  if ((*(v10 + 48))(v12, 1, v9) == 1)
  {

    sub_100009C7C(v12, &qword_100018E88, &qword_10000FA00);

    goto LABEL_18;
  }

  v17 = *(v2 + 96);
  (*(v10 + 32))(v11, v12, v9);

  v35 = v11;
  v18 = sub_10000E3F4();
  *(v2 + 136) = v18;
  v19 = *(v18 - 8);
  *(v2 + 144) = v19;
  v33 = swift_task_alloc();
  *(v2 + 152) = v33;
  sub_100008DB0(&qword_100018E78, &qword_10000F9F0);
  v20 = swift_task_alloc();
  (*((swift_isaMask & *v17) + 0x88))();
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    (*(v10 + 8))(v35, v9);

    sub_100009C7C(v20, &qword_100018E78, &qword_10000F9F0);

    goto LABEL_18;
  }

  v21 = *(v2 + 88);
  (*(v19 + 32))(v33, v20, v18);

  v22 = sub_100008DB0(&qword_100018EE8, &qword_10000FA38);
  *(v2 + 160) = v22;
  *(v2 + 168) = *(*(v22 - 8) + 64);
  v23 = swift_task_alloc();
  *(v2 + 176) = v23;
  if (v21)
  {
    v24 = *(v2 + 88);
    sub_100008DB0(&qword_100018F50, &qword_10000FA78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10000F9B0;
    *(inited + 32) = v24;
    v26 = v24;
    v27 = sub_100001C20(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    v27 = sub_100009198(&_swiftEmptyArrayStorage);
  }

  *(v2 + 184) = v27;
  v28 = *(v22 + 48);
  *(v2 + 72) = v27;
  v29 = swift_task_alloc();
  *(v2 + 192) = v29;
  v30 = sub_100008DB0(&qword_100018EA8, &qword_10000FA20);
  v31 = sub_100008F48(&qword_100018EB0, sub_100008EF4, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  v32 = sub_100008F48(&qword_100018EC0, sub_100008FCC, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  sub_1000092B0();
  *v29 = v2;
  v29[1] = sub_100003ADC;

  return LSKLocalStatusClient.publish<A>(_:for:options:)(v23, v23 + v28, v2 + 72, v35, v33, v30, v31, v32);
}

uint64_t sub_100003ADC()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_100004C48;
  }

  else
  {
    v2 = sub_100003C0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003C0C()
{
  v49 = v0;
  v1 = v0[22];
  v2 = v0[20];
  v3 = sub_100008DB0(&qword_100018F00, &qword_10000FA40);
  v0[26] = v3;
  v4 = *(v3 - 8);
  v0[27] = v4;
  v5 = swift_task_alloc();
  v0[28] = v5;
  v6 = swift_task_alloc();
  sub_1000098C0(v1, v6, &qword_100018EE8, &qword_10000FA38);
  v7 = *(v2 + 48);
  if ((*(v4 + 48))(v6 + v7, 1, v3) == 1)
  {
    v8 = v0[22];
    sub_100009C7C(v6 + v7, &qword_100018F08, &qword_10000FA48);
    v9 = sub_100008DB0(&qword_100018F10, &qword_10000FA50);
    v10 = *(*(v9 - 8) + 8);
    v10(v6, v9);

    v11 = sub_10000E524();
    v12 = swift_task_alloc();
    sub_1000098C0(v8, v12, &qword_100018EE8, &qword_10000FA38);
    sub_100009A98(0, &qword_100018E68, OS_os_log_ptr);
    v13 = sub_10000E534();
    v14 = os_log_type_enabled(v13, v11);
    v47 = v0[22];
    if (v14)
    {
      v40 = v11;
      v15 = v0[20];
      v42 = v0[17];
      v43 = v0[19];
      v44 = v0[15];
      v45 = v0[14];
      v46 = v0[16];
      v41 = v0[18];
      v16 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v48 = v39;
      *v16 = 136315138;
      v17 = swift_task_alloc();
      sub_1000098C0(v12, v17, &qword_100018EE8, &qword_10000FA38);
      v18 = *(v15 + 48);
      v38 = sub_10000E374();
      v20 = v19;
      sub_100009C7C(v12, &qword_100018EE8, &qword_10000FA38);
      v10(v17, v9);
      sub_100009C7C(v17 + v18, &qword_100018F08, &qword_10000FA48);

      v21 = sub_100007724(v38, v20, &v48);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_100000000, v13, v40, "Not scanning for deliveries? %s", v16, 0xCu);
      sub_100009DB4(v39);

      sub_100009C7C(v47, &qword_100018EE8, &qword_10000FA38);
      (*(v41 + 8))(v43, v42);
      (*(v44 + 8))(v46, v45);
    }

    else
    {
      v31 = v0[18];
      v30 = v0[19];
      v33 = v0[16];
      v32 = v0[17];
      v34 = v0[14];
      v35 = v0[15];

      sub_100009C7C(v12, &qword_100018EE8, &qword_10000FA38);
      sub_100009C7C(v47, &qword_100018EE8, &qword_10000FA38);
      (*(v31 + 8))(v30, v32);
      (*(v35 + 8))(v33, v34);
    }

    v36 = v0[1];

    return v36();
  }

  else
  {
    (*(v4 + 32))(v5, v6 + v7, v3);
    v22 = sub_100008DB0(&qword_100018F10, &qword_10000FA50);
    v0[29] = v22;
    v23 = *(v22 - 8);
    v0[30] = v23;
    v24 = *(v23 + 8);
    v0[31] = v24;
    v0[32] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v6, v22);

    v25 = sub_100008DB0(&qword_100018F18, &qword_10000FA58);
    v0[33] = v25;
    v0[34] = *(v25 - 8);
    v0[35] = swift_task_alloc();
    sub_10000E384();
    sub_100008DB0(&qword_100018F20, &qword_10000FA60);
    v0[36] = swift_task_alloc();
    v26 = sub_100009388();
    v27 = swift_task_alloc();
    v0[37] = v27;
    *v27 = v0;
    v27[1] = sub_100004264;
    v28 = v0[36];
    v29 = v0[33];

    return dispatch thunk of AsyncIteratorProtocol.next()(v28, v29, v26);
  }
}

uint64_t sub_100004264()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_100004A5C;
  }

  else
  {
    v2 = sub_100004378;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100004378()
{
  v55 = v0;
  v1 = v0[36];
  v2 = v0[29];
  v3 = v0[30];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[34] + 8))(v0[35], v0[33]);

    v4 = sub_10000E514();
    sub_100009A98(0, &qword_100018E68, OS_os_log_ptr);
    v5 = sub_10000E534();
    v47 = v4;
    v6 = os_log_type_enabled(v5, v4);
    v7 = v0[27];
    v51 = v0[26];
    v53 = v0[28];
    v8 = v0[18];
    v9 = v0[19];
    v10 = v0[16];
    v11 = v0[17];
    v13 = v0[14];
    v12 = v0[15];
    v48 = v0[22];
    if (v6)
    {
      bufa = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v54 = v41;
      *bufa = 136315138;
      v45 = v9;
      v46 = v13;
      v14 = sub_10000E364();
      v15 = *(v14 - 8);
      v44 = v12;
      v16 = swift_task_alloc();
      sub_10000E344();
      v42 = v11;
      v43 = v10;
      v17 = sub_10000E324();
      v18 = *(v17 - 8);
      v19 = swift_task_alloc();
      sub_10000E214();
      sub_1000093E0();
      sub_10000E354();
      (*(v18 + 8))(v19, v17);
      (*(v15 + 8))(v16, v14);

      v20 = sub_100007724(v0[7], v0[8], &v54);

      *(bufa + 4) = v20;
      _os_log_impl(&dword_100000000, v5, v47, "Deliveries completed at %s", bufa, 0xCu);
      sub_100009DB4(v41);

      (*(v7 + 8))(v53, v51);
      sub_100009C7C(v48, &qword_100018EE8, &qword_10000FA38);
      (*(v8 + 8))(v45, v42);
      (*(v44 + 8))(v43, v46);
    }

    else
    {

      (*(v7 + 8))(v53, v51);
      sub_100009C7C(v48, &qword_100018EE8, &qword_10000FA38);
      (*(v8 + 8))(v9, v11);
      (*(v12 + 8))(v10, v13);
    }

    v36 = v0[1];

    return v36();
  }

  else
  {
    v52 = v0[31];
    v49 = swift_task_alloc();
    (*(v3 + 32))(v49, v1, v2);
    v50 = sub_10000E514();
    sub_100008DB0(&qword_100018F40, &qword_10000FA70);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10000F9C0;
    v22 = sub_10000E364();
    v23 = *(v22 - 8);
    v24 = swift_task_alloc();
    sub_10000E344();
    v25 = sub_10000E324();
    v26 = *(v25 - 8);
    v27 = swift_task_alloc();
    sub_10000E214();
    *(v21 + 56) = &type metadata for String;
    v28 = sub_100009438();
    *(v21 + 64) = v28;
    sub_1000093E0();
    sub_10000E354();
    (*(v26 + 8))(v27, v25);
    (*(v23 + 8))(v24, v22);

    v29 = sub_10000E374();
    *(v21 + 96) = &type metadata for String;
    *(v21 + 104) = v28;
    *(v21 + 72) = v29;
    *(v21 + 80) = v30;
    sub_100009A98(0, &qword_100018E68, OS_os_log_ptr);
    v31 = sub_10000E534();
    sub_10000E424(v50, &dword_100000000, v31, "Delivered at %s with status %s", buf, v40);

    v52(v49, v2);

    v32 = sub_100009388();
    v33 = swift_task_alloc();
    v0[37] = v33;
    *v33 = v0;
    v33[1] = sub_100004264;
    v34 = v0[36];
    v35 = v0[33];

    return dispatch thunk of AsyncIteratorProtocol.next()(v34, v35, v32);
  }
}

uint64_t sub_100004A5C()
{
  *(v0 + 80) = *(v0 + 304);
  sub_100008DB0(&qword_100018F30, &qword_10000FA68);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_100004AF0, 0, 0);
}

uint64_t sub_100004AF0()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[34];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];
  v7 = v0[22];
  v8 = v0[18];
  v12 = v0[17];
  v13 = v0[19];
  v15 = v0[16];
  v9 = v0[15];
  v14 = v0[14];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);
  sub_100009C7C(v7, &qword_100018EE8, &qword_10000FA38);
  (*(v8 + 8))(v13, v12);
  (*(v9 + 8))(v15, v14);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100004C48()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];

  (*(v2 + 8))(v1, v3);
  (*(v6 + 8))(v4, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100004EA0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100004F60;

  return sub_100003448(a1);
}

uint64_t sub_100004F60()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_10000E2A4();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1000050FC(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return _swift_task_switch(sub_10000511C, 0, 0);
}

uint64_t sub_10000511C(uint64_t a1, uint64_t a2)
{
  if (&class metadata base offset for LSKLocalStatusClient)
  {
    v3 = &type metadata accessor for LSKLocalStatusClient == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3 || &type metadata for LSKLocalStatusClient == 0 || &metaclass for LSKLocalStatusClient == 0 || &nominal type descriptor for LSKLocalStatusClient == 0)
  {
    v13 = sub_10000E514();
    sub_100009A98(0, &qword_100018E68, OS_os_log_ptr);
    v14 = sub_10000E534();
    sub_10000E424(v13, &dword_100000000, v14, "No LSK available on this platform, exiting", 42, 2, &_swiftEmptyArrayStorage);

    goto LABEL_18;
  }

  v7 = (*((swift_isaMask & **(v2 + 56)) + 0x70))(a1, a2);
  *(v2 + 64) = v7;
  if (!v7)
  {
LABEL_18:
    v15 = *(v2 + 8);

    return v15();
  }

  v8 = *(v2 + 56);
  v9 = sub_100008DB0(&qword_100018E80, &qword_10000F9F8);
  *(v2 + 72) = v9;
  v10 = *(v9 - 8);
  *(v2 + 80) = v10;
  v11 = swift_task_alloc();
  *(v2 + 88) = v11;
  sub_100008DB0(&qword_100018E88, &qword_10000FA00);
  v12 = swift_task_alloc();
  (*((swift_isaMask & *v8) + 0xA0))();
  if ((*(v10 + 48))(v12, 1, v9) == 1)
  {

    sub_100009C7C(v12, &qword_100018E88, &qword_10000FA00);

    goto LABEL_18;
  }

  v17 = *(v2 + 56);
  (*(v10 + 32))(v11, v12, v9);

  v32 = v11;
  v18 = sub_10000E3F4();
  *(v2 + 96) = v18;
  v19 = *(v18 - 8);
  *(v2 + 104) = v19;
  v30 = swift_task_alloc();
  *(v2 + 112) = v30;
  sub_100008DB0(&qword_100018E78, &qword_10000F9F0);
  v20 = swift_task_alloc();
  (*((swift_isaMask & *v17) + 0x88))();
  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    (*(v10 + 8))(v32, v9);

    sub_100009C7C(v20, &qword_100018E78, &qword_10000F9F0);

    goto LABEL_18;
  }

  v21 = *(v2 + 48);
  (*(v19 + 32))(v30, v20, v18);

  v22 = sub_100008DB0(&qword_100018EE8, &qword_10000FA38);
  *(v2 + 120) = v22;
  *(v2 + 128) = *(*(v22 - 8) + 64);
  v23 = swift_task_alloc();
  *(v2 + 136) = v23;
  if (v21)
  {
    v24 = sub_100001C20(*(v2 + 48));
  }

  else
  {
    v24 = sub_100009198(&_swiftEmptyArrayStorage);
  }

  *(v2 + 144) = v24;
  v25 = *(v22 + 48);
  *(v2 + 32) = v24;
  v26 = swift_task_alloc();
  *(v2 + 152) = v26;
  v27 = sub_100008DB0(&qword_100018EA8, &qword_10000FA20);
  v28 = sub_100008F48(&qword_100018EB0, sub_100008EF4, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  v29 = sub_100008F48(&qword_100018EC0, sub_100008FCC, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  sub_1000092B0();
  *v26 = v2;
  v26[1] = sub_10000572C;

  return LSKLocalStatusClient.publish<A>(_:for:options:)(v23, v23 + v25, v2 + 32, v32, v30, v27, v28, v29);
}

uint64_t sub_10000572C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100006898;
  }

  else
  {
    v2 = sub_10000585C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000585C()
{
  v49 = v0;
  v1 = v0[17];
  v2 = v0[15];
  v3 = sub_100008DB0(&qword_100018F00, &qword_10000FA40);
  v0[21] = v3;
  v4 = *(v3 - 8);
  v0[22] = v4;
  v5 = swift_task_alloc();
  v0[23] = v5;
  v6 = swift_task_alloc();
  sub_1000098C0(v1, v6, &qword_100018EE8, &qword_10000FA38);
  v7 = *(v2 + 48);
  if ((*(v4 + 48))(v6 + v7, 1, v3) == 1)
  {
    v8 = v0[17];
    sub_100009C7C(v6 + v7, &qword_100018F08, &qword_10000FA48);
    v9 = sub_100008DB0(&qword_100018F10, &qword_10000FA50);
    v10 = *(*(v9 - 8) + 8);
    v10(v6, v9);

    v11 = sub_10000E524();
    v12 = swift_task_alloc();
    sub_1000098C0(v8, v12, &qword_100018EE8, &qword_10000FA38);
    sub_100009A98(0, &qword_100018E68, OS_os_log_ptr);
    v13 = sub_10000E534();
    v14 = os_log_type_enabled(v13, v11);
    v47 = v0[17];
    if (v14)
    {
      v40 = v11;
      v15 = v0[15];
      v42 = v0[12];
      v43 = v0[14];
      v44 = v0[10];
      v45 = v0[9];
      v46 = v0[11];
      v41 = v0[13];
      v16 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v48 = v39;
      *v16 = 136315138;
      v17 = swift_task_alloc();
      sub_1000098C0(v12, v17, &qword_100018EE8, &qword_10000FA38);
      v18 = *(v15 + 48);
      v38 = sub_10000E374();
      v20 = v19;
      sub_100009C7C(v12, &qword_100018EE8, &qword_10000FA38);
      v10(v17, v9);
      sub_100009C7C(v17 + v18, &qword_100018F08, &qword_10000FA48);

      v21 = sub_100007724(v38, v20, &v48);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_100000000, v13, v40, "Not scanning for deliveries? %s", v16, 0xCu);
      sub_100009DB4(v39);

      sub_100009C7C(v47, &qword_100018EE8, &qword_10000FA38);
      (*(v41 + 8))(v43, v42);
      (*(v44 + 8))(v46, v45);
    }

    else
    {
      v31 = v0[13];
      v30 = v0[14];
      v33 = v0[11];
      v32 = v0[12];
      v34 = v0[9];
      v35 = v0[10];

      sub_100009C7C(v12, &qword_100018EE8, &qword_10000FA38);
      sub_100009C7C(v47, &qword_100018EE8, &qword_10000FA38);
      (*(v31 + 8))(v30, v32);
      (*(v35 + 8))(v33, v34);
    }

    v36 = v0[1];

    return v36();
  }

  else
  {
    (*(v4 + 32))(v5, v6 + v7, v3);
    v22 = sub_100008DB0(&qword_100018F10, &qword_10000FA50);
    v0[24] = v22;
    v23 = *(v22 - 8);
    v0[25] = v23;
    v24 = *(v23 + 8);
    v0[26] = v24;
    v0[27] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v6, v22);

    v25 = sub_100008DB0(&qword_100018F18, &qword_10000FA58);
    v0[28] = v25;
    v0[29] = *(v25 - 8);
    v0[30] = swift_task_alloc();
    sub_10000E384();
    sub_100008DB0(&qword_100018F20, &qword_10000FA60);
    v0[31] = swift_task_alloc();
    v26 = sub_100009388();
    v27 = swift_task_alloc();
    v0[32] = v27;
    *v27 = v0;
    v27[1] = sub_100005EB4;
    v28 = v0[31];
    v29 = v0[28];

    return dispatch thunk of AsyncIteratorProtocol.next()(v28, v29, v26);
  }
}

uint64_t sub_100005EB4()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1000066AC;
  }

  else
  {
    v2 = sub_100005FC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100005FC8()
{
  v55 = v0;
  v1 = v0[31];
  v2 = v0[24];
  v3 = v0[25];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[29] + 8))(v0[30], v0[28]);

    v4 = sub_10000E514();
    sub_100009A98(0, &qword_100018E68, OS_os_log_ptr);
    v5 = sub_10000E534();
    v47 = v4;
    v6 = os_log_type_enabled(v5, v4);
    v7 = v0[22];
    v51 = v0[21];
    v53 = v0[23];
    v8 = v0[13];
    v9 = v0[14];
    v10 = v0[11];
    v11 = v0[12];
    v13 = v0[9];
    v12 = v0[10];
    v48 = v0[17];
    if (v6)
    {
      bufa = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v54 = v41;
      *bufa = 136315138;
      v45 = v9;
      v46 = v13;
      v14 = sub_10000E364();
      v15 = *(v14 - 8);
      v44 = v12;
      v16 = swift_task_alloc();
      sub_10000E344();
      v42 = v11;
      v43 = v10;
      v17 = sub_10000E324();
      v18 = *(v17 - 8);
      v19 = swift_task_alloc();
      sub_10000E214();
      sub_1000093E0();
      sub_10000E354();
      (*(v18 + 8))(v19, v17);
      (*(v15 + 8))(v16, v14);

      v20 = sub_100007724(v0[2], v0[3], &v54);

      *(bufa + 4) = v20;
      _os_log_impl(&dword_100000000, v5, v47, "Deliveries completed at %s", bufa, 0xCu);
      sub_100009DB4(v41);

      (*(v7 + 8))(v53, v51);
      sub_100009C7C(v48, &qword_100018EE8, &qword_10000FA38);
      (*(v8 + 8))(v45, v42);
      (*(v44 + 8))(v43, v46);
    }

    else
    {

      (*(v7 + 8))(v53, v51);
      sub_100009C7C(v48, &qword_100018EE8, &qword_10000FA38);
      (*(v8 + 8))(v9, v11);
      (*(v12 + 8))(v10, v13);
    }

    v36 = v0[1];

    return v36();
  }

  else
  {
    v52 = v0[26];
    v49 = swift_task_alloc();
    (*(v3 + 32))(v49, v1, v2);
    v50 = sub_10000E514();
    sub_100008DB0(&qword_100018F40, &qword_10000FA70);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10000F9C0;
    v22 = sub_10000E364();
    v23 = *(v22 - 8);
    v24 = swift_task_alloc();
    sub_10000E344();
    v25 = sub_10000E324();
    v26 = *(v25 - 8);
    v27 = swift_task_alloc();
    sub_10000E214();
    *(v21 + 56) = &type metadata for String;
    v28 = sub_100009438();
    *(v21 + 64) = v28;
    sub_1000093E0();
    sub_10000E354();
    (*(v26 + 8))(v27, v25);
    (*(v23 + 8))(v24, v22);

    v29 = sub_10000E374();
    *(v21 + 96) = &type metadata for String;
    *(v21 + 104) = v28;
    *(v21 + 72) = v29;
    *(v21 + 80) = v30;
    sub_100009A98(0, &qword_100018E68, OS_os_log_ptr);
    v31 = sub_10000E534();
    sub_10000E424(v50, &dword_100000000, v31, "Delivered at %s with status %s", buf, v40);

    v52(v49, v2);

    v32 = sub_100009388();
    v33 = swift_task_alloc();
    v0[32] = v33;
    *v33 = v0;
    v33[1] = sub_100005EB4;
    v34 = v0[31];
    v35 = v0[28];

    return dispatch thunk of AsyncIteratorProtocol.next()(v34, v35, v32);
  }
}

uint64_t sub_1000066AC()
{
  *(v0 + 40) = *(v0 + 264);
  sub_100008DB0(&qword_100018F30, &qword_10000FA68);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_100006740, 0, 0);
}

uint64_t sub_100006740()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[29];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v7 = v0[17];
  v8 = v0[13];
  v12 = v0[12];
  v13 = v0[14];
  v15 = v0[11];
  v9 = v0[10];
  v14 = v0[9];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);
  sub_100009C7C(v7, &qword_100018EE8, &qword_10000FA38);
  (*(v8 + 8))(v13, v12);
  (*(v9 + 8))(v15, v14);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100006898()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];

  (*(v2 + 8))(v1, v3);
  (*(v6 + 8))(v4, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100006AF0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    sub_100009A98(0, &qword_100018FC8, RDEstimate_ptr);
    v6 = sub_10000E4C4();
  }

  else
  {
    v6 = 0;
  }

  v3[4] = v6;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100006BE4;

  return sub_1000050FC(v6);
}

uint64_t sub_100006BE4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_10000E2A4();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

id sub_100006DA0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100006E68(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100009E20;

  return v6();
}

uint64_t sub_100006F50(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100007038;

  return v7();
}

uint64_t sub_100007038()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100008DB0(&qword_100018FC0, &qword_10000FAE0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000098C0(a3, v23 - v10, &qword_100018FC0, &qword_10000FAE0);
  v12 = sub_10000E504();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100009C7C(v11, &qword_100018FC0, &qword_10000FAE0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10000E4F4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_10000E4D4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_10000E444() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100009C7C(a3, &qword_100018FC0, &qword_10000FAE0);

    return v21;
  }

LABEL_8:
  sub_100009C7C(a3, &qword_100018FC0, &qword_10000FAE0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100007428(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100007520;

  return v6(a1);
}

uint64_t sub_100007520()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_100007618(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008DB0(&qword_100018FF0, qword_10000FB70);
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
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100007724(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000077F0(v11, 0, 0, 1, a1, a2);
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
    sub_100009C1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009DB4(v11);
  return v7;
}

unint64_t sub_1000077F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000078FC(a5, a6);
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
    result = sub_10000E584();
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

char *sub_1000078FC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100007948(a1, a2);
  sub_100007A78(&off_100014788);
  return v3;
}

char *sub_100007948(uint64_t a1, unint64_t a2)
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

  v6 = sub_100007B64(v5, 0);
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

  result = sub_10000E584();
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
        v10 = sub_10000E464();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100007B64(v10, 0);
        result = sub_10000E554();
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

uint64_t sub_100007A78(uint64_t result)
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

  result = sub_100007BD8(result, v11, 1, v3);
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

void *sub_100007B64(uint64_t a1, uint64_t a2)
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

  sub_100008DB0(&qword_100018FD0, &qword_10000FB50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100007BD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008DB0(&qword_100018FD0, &qword_10000FB50);
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

uint64_t *sub_100007CCC@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_100008AB0(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_10000E284();
      swift_allocObject();
      v8 = sub_10000E234();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_10000E2D4();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_100007D94(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_100008D5C(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100008D5C(v7, v6);
    *v4 = xmmword_10000F9D0;
    sub_100008D5C(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_10000E244() && __OFSUB__(v7, sub_10000E274()))
      {
LABEL_26:
        __break(1u);
      }

      sub_10000E284();
      swift_allocObject();
      v14 = sub_10000E224();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_100008930(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_100008D5C(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_10000F9D0;
    sub_100008D5C(0, 0xC000000000000000);
    sub_10000E2C4();
    result = sub_100008930(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_100008138@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100008AB0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100008C08(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100008C84(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_1000081CC(uint64_t a1, uint64_t a2)
{
  sub_10000E5F4();
  sub_10000E454();
  v4 = sub_10000E604();

  return sub_100008688(a1, a2, v4);
}

uint64_t sub_100008244(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100008DB0(&qword_100018FD8, &qword_10000FB58);
  v33 = v4;
  result = sub_10000E5B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_100008D08(v34, *(&v34 + 1));
      }

      sub_10000E5F4();
      sub_10000E454();
      result = sub_10000E604();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100008500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000081CC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100008244(v18, a5 & 1);
      v13 = sub_1000081CC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_10000E5E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100008740();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return sub_100008D5C(v25, v26);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v23[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v23[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v23[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v31;
}

unint64_t sub_100008688(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000E5D4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_100008740()
{
  v1 = v0;
  sub_100008DB0(&qword_100018FD8, &qword_10000FB58);
  v2 = *v0;
  v3 = sub_10000E5A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_100008D08(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000088C4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_100008930(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_10000E244();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_10000E274();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_10000E264();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_1000089E4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_10000E4A4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_10000E484();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100008A60@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_10000E564();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100008AB0(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100008B68(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_10000E284();
      swift_allocObject();
      sub_10000E254();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_10000E2D4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_100008C08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_10000E284();
  swift_allocObject();
  result = sub_10000E234();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10000E2D4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_100008C84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_10000E284();
  swift_allocObject();
  result = sub_10000E234();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100008D08(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100008D5C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100008DB0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100008DF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100008DB0(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for RDStatusSharer(uint64_t a1)
{
  result = qword_100019258;
  if (!qword_100019258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008EAC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100008EF4()
{
  result = qword_100018EB8;
  if (!qword_100018EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018EB8);
  }

  return result;
}

uint64_t sub_100008F48(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100008EAC(&qword_100018EA8, &qword_10000FA20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100008FCC()
{
  result = qword_100018EC8;
  if (!qword_100018EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018EC8);
  }

  return result;
}

unint64_t sub_100009020()
{
  result = qword_100018ED8;
  if (!qword_100018ED8)
  {
    sub_100008EAC(&qword_100018ED0, &qword_10000FA28);
    sub_100008F48(&qword_100018EB0, sub_100008EF4, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018ED8);
  }

  return result;
}

unint64_t sub_1000090DC()
{
  result = qword_100018EE0;
  if (!qword_100018EE0)
  {
    sub_100008EAC(&qword_100018ED0, &qword_10000FA28);
    sub_100008F48(&qword_100018EC0, sub_100008FCC, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018EE0);
  }

  return result;
}

unint64_t sub_100009198(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100008DB0(&qword_100018FD8, &qword_10000FB58);
    v3 = sub_10000E5C4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_100008D08(v7, v8);
      result = sub_1000081CC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1000092B0()
{
  result = qword_100018EF0;
  if (!qword_100018EF0)
  {
    sub_100008EAC(&qword_100018EA8, &qword_10000FA20);
    sub_100009334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018EF0);
  }

  return result;
}

unint64_t sub_100009334()
{
  result = qword_100018EF8;
  if (!qword_100018EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018EF8);
  }

  return result;
}

unint64_t sub_100009388()
{
  result = qword_100018F28;
  if (!qword_100018F28)
  {
    sub_100008EAC(&qword_100018F18, &qword_10000FA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018F28);
  }

  return result;
}

unint64_t sub_1000093E0()
{
  result = qword_100018F38;
  if (!qword_100018F38)
  {
    sub_10000E324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018F38);
  }

  return result;
}

unint64_t sub_100009438()
{
  result = qword_100018F48;
  if (!qword_100018F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018F48);
  }

  return result;
}

void sub_100009494(uint64_t a1)
{
  sub_1000095D4(319);
  if (v1 <= 0x3F)
  {
    sub_10000962C(319, &qword_100018FB0, &qword_100018E80, &qword_10000F9F8);
    if (v2 <= 0x3F)
    {
      sub_10000962C(319, &qword_100018FB8, &qword_100018E90, &qword_10000FA08);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000095D4(uint64_t a1)
{
  if (!qword_100018FA8)
  {
    sub_10000E3F4();
    v1 = sub_10000E544();
    if (!v2)
    {
      atomic_store(v1, &qword_100018FA8);
    }
  }
}

void sub_10000962C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100008EAC(a3, a4);
    v5 = sub_10000E544();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100009680()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009E20;

  return sub_100006AF0(v2, v3, v4);
}

uint64_t sub_100009734()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009E20;

  return sub_100006E68(v2, v3, v4);
}

uint64_t sub_1000097F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009E20;

  return sub_100006F50(a1, v4, v5, v6);
}

uint64_t sub_1000098C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100008DB0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100009928(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009E20;

  return sub_100007428(a1, v4);
}

uint64_t sub_1000099E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007038;

  return sub_100007428(a1, v4);
}

uint64_t sub_100009A98(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100009AE0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100009B28()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007038;

  return sub_100004EA0(v2, v3, v4);
}

uint64_t sub_100009BDC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100009C1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100009C7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100008DB0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_100009CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1000088C4(sub_100009E00, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_100009D44(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100008D5C(result, a2);
  }

  return result;
}

uint64_t sub_100009D58(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100009D70(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100009DB4(void *a1)
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

void start()
{
  if (qword_100018FF8 != -1)
  {
    dispatch_once(&qword_100018FF8, &stru_1000149F0);
  }

  v0 = qword_100019000;
  if (os_log_type_enabled(qword_100019000, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&dword_100000000, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Starting countryd}", v4, 0x12u);
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_1000149B0);
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(RDCommServer);
  v3 = qword_100019268;
  qword_100019268 = v2;

  objc_autoreleasePoolPop(v1);
  dispatch_main();
}

void sub_100009F28(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
  if (string)
  {
    if (qword_100018FF8 != -1)
    {
      dispatch_once(&qword_100018FF8, &stru_1000149F0);
    }

    v4 = qword_100019000;
    if (os_log_type_enabled(qword_100019000, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = string;
      _os_log_impl(&dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Got Darwin notification, notification:%{public, location:escape_only}s}", &v7, 0x1Cu);
    }

    if (!strcmp("com.apple.os-eligibility-domain.input-needed", string))
    {
      if (qword_100018FF8 != -1)
      {
        dispatch_once(&qword_100018FF8, &stru_1000149F0);
      }

      v5 = qword_100019000;
      if (os_log_type_enabled(qword_100019000, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 68289026;
        v8 = 0;
        v9 = 2082;
        v10 = "";
        _os_log_impl(&dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:eligibility engine wants input}", &v7, 0x12u);
      }

      v6 = +[RDCachedData loadCache];
      [v6 postResultsToEligibilityEngine];
    }
  }
}

void sub_10000A114(id a1)
{
  qword_100019000 = os_log_create("com.apple.countryd", "Daemon");

  _objc_release_x1();
}

void sub_10000BD7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) dataCache];
  v4 = [v3 getEstimateForPeerDeviceWithID:*(a1 + 48)];
  v5 = v4;
  if (v2)
  {
    v6 = *(a1 + 32);

    if (v5 != v6)
    {
      if (qword_100019008 != -1)
      {
        dispatch_once(&qword_100019008, &stru_100014A98);
      }

      v7 = qword_100019010;
      if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 48);
        v9 = v8;
        v10 = v7;
        v11 = [v8 UTF8String];
        v12 = *(a1 + 32);
        v25 = 68289538;
        v26 = 0;
        v27 = 2082;
        v28 = "";
        v29 = 2082;
        v30 = v11;
        v31 = 2114;
        v32 = v12;
        _os_log_impl(&dword_100000000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:updating estimate for peer, peer:%{public, location:escape_only}s, estimate:%{public, location:escape_only}@}", &v25, 0x26u);
      }

      v13 = [*(a1 + 40) dataCache];
      [v13 setEstimate:*(a1 + 32) forPeerDeviceWithID:*(a1 + 48)];
      goto LABEL_23;
    }

    if (qword_100019008 != -1)
    {
      dispatch_once(&qword_100019008, &stru_100014A98);
    }

    v18 = qword_100019010;
    if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 48);
      v20 = v19;
      v13 = v18;
      v25 = 68289282;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = [v19 UTF8String];
      v21 = "{msg%{public}.0s:estimate for peer unchanged, ignoring, peer:%{public, location:escape_only}s}";
LABEL_22:
      _os_log_impl(&dword_100000000, v13, OS_LOG_TYPE_INFO, v21, &v25, 0x1Cu);
LABEL_23:
    }
  }

  else
  {

    if (v5)
    {
      if (qword_100019008 != -1)
      {
        dispatch_once(&qword_100019008, &stru_100014A98);
      }

      v14 = qword_100019010;
      if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 48);
        v16 = v15;
        v17 = v14;
        v25 = 68289282;
        v26 = 0;
        v27 = 2082;
        v28 = "";
        v29 = 2082;
        v30 = [v15 UTF8String];
        _os_log_impl(&dword_100000000, v17, OS_LOG_TYPE_INFO, "{msg%{public}.0s:peer went away, peer:%{public, location:escape_only}s}", &v25, 0x1Cu);
      }

      v13 = [*(a1 + 40) dataCache];
      [v13 removeEstimateForPeerDeviceWithID:*(a1 + 48)];
      goto LABEL_23;
    }

    if (qword_100019008 != -1)
    {
      dispatch_once(&qword_100019008, &stru_100014A98);
    }

    v22 = qword_100019010;
    if (os_log_type_enabled(qword_100019010, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 48);
      v24 = v23;
      v13 = v22;
      v25 = 68289282;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = [v23 UTF8String];
      v21 = "{msg%{public}.0s:peer already not used, nothing to do, peer:%{public, location:escape_only}s}";
      goto LABEL_22;
    }
  }
}

void sub_10000C1C4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    if (qword_100018FF8 != -1)
    {
      dispatch_once(&qword_100018FF8, &stru_100014AD8);
    }

    v3 = qword_100019000;
    if (os_log_type_enabled(qword_100019000, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [(NSError *)v2 description];
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_100000000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:failed to share status with peers, error:%{public, location:escape_only}@}", &v9, 0x1Cu);

      if (qword_100018FF8 != -1)
      {
        dispatch_once(&qword_100018FF8, &stru_100014AD8);
      }
    }

    v6 = qword_100019000;
    if (os_signpost_enabled(qword_100019000))
    {
      v7 = v6;
      v8 = [(NSError *)v2 description];
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = v8;
      _os_signpost_emit_with_name_impl(&dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "failed to share status with peers", "{msg%{public}.0s:failed to share status with peers, error:%{public, location:escape_only}@}", &v9, 0x1Cu);
    }
  }
}

void sub_10000C3EC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    if (qword_100018FF8 != -1)
    {
      dispatch_once(&qword_100018FF8, &stru_100014AD8);
    }

    v3 = qword_100019000;
    if (os_log_type_enabled(qword_100019000, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [(NSError *)v2 description];
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_100000000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:failed to clear status to peers, error:%{public, location:escape_only}@}", &v9, 0x1Cu);

      if (qword_100018FF8 != -1)
      {
        dispatch_once(&qword_100018FF8, &stru_100014AD8);
      }
    }

    v6 = qword_100019000;
    if (os_signpost_enabled(qword_100019000))
    {
      v7 = v6;
      v8 = [(NSError *)v2 description];
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = v8;
      _os_signpost_emit_with_name_impl(&dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "failed to clear status to peers", "{msg%{public}.0s:failed to clear status to peers, error:%{public, location:escape_only}@}", &v9, 0x1Cu);
    }
  }
}

void sub_10000D0C8(id a1)
{
  qword_100019010 = os_log_create("com.apple.countryd", "Shared");

  _objc_release_x1();
}

void sub_10000D10C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.countryd.serialqueue", v3);
  v2 = qword_100019270;
  qword_100019270 = v1;
}

void sub_10000D170(id a1)
{
  qword_100019000 = os_log_create("com.apple.countryd", "Daemon");

  _objc_release_x1();
}

void sub_10000E1D0(id a1)
{
  qword_100019000 = os_log_create("com.apple.countryd", "Daemon");

  _objc_release_x1();
}