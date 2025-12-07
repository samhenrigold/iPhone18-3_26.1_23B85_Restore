_TtC18TrustedPeersHelper6Client *sub_10014D604(uint64_t (*a1)(_TtC18TrustedPeersHelper6Client **), uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_100216384();
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v62 - v15;
  __chkstk_darwin(v14, v17);
  v63 = &v62 - v18;
  v19 = sub_10001148C(&qword_10029D778, &qword_1002265C8);
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v62 - v21;
  if (a1(&v64))
  {
    v23 = [*(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) escrowFetchDate];
    if (!v23)
    {
      (*(v8 + 56))(v22, 1, 1, v7);
      sub_1000114D4(v22, &qword_10029D778, &qword_1002265C8);
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v38 = sub_100216774();
      sub_100002648(v38, qword_10029D160);
      v39 = sub_100216754();
      v40 = sub_100216C54();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "no cached records were found, no saved escrowFetchDate either, returning no cache error", v41, 2u);
      }

      sub_1000561D0();
      v49 = swift_allocError();
      v50 = xmmword_100226090;
      goto LABEL_29;
    }

    v24 = v23;
    sub_100216344();

    (*(v8 + 56))(v22, 0, 1, v7);
    sub_1000114D4(v22, &qword_10029D778, &qword_1002265C8);
  }

  if ((a4 & 1) == 0)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v33 = sub_100216774();
    sub_100002648(v33, qword_10029D160);
    v34 = sub_100216754();
    v35 = sub_100216C54();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "skipping timeout check and directly returning cached records", v36, 2u);
    }

    return v64;
  }

  v25 = [*(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) escrowFetchDate];
  if (v25)
  {
    v26 = v63;
    v27 = v25;
    sub_100216344();

    sub_100216374();
    sub_1002162E4();
    LOBYTE(v27) = sub_100216304();
    v28 = *(v8 + 8);
    v28(v12, v7);
    v28(v16, v7);
    if (v27)
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v29 = sub_100216774();
      sub_100002648(v29, qword_10029D160);
      v30 = sub_100216754();
      v31 = sub_100216C54();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "escrow cache still valid", v32, 2u);
      }

      v28(v26, v7);
      return v64;
    }

    v28(v26, v7);
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v51 = sub_100216774();
  sub_100002648(v51, qword_10029D160);
  v52 = sub_100216754();
  v53 = sub_100216C54();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "escrow cache no longer valid", v54, 2u);
  }

  sub_1000561D0();
  v49 = swift_allocError();
  v50 = xmmword_100226070;
LABEL_29:
  *v42 = v50;
  *(v42 + 16) = 13;
  v64, v42, v43, v44, v45, v46, v47, v48, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71;
  v65, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71;
  return v49;
}

_TtC18TrustedPeersHelper6Client *sub_10014DC3C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_100216384();
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v10, v13);
  v16 = v55 - v15;
  __chkstk_darwin(v14, v17);
  v55[0] = v55 - v18;
  v19 = sub_10001148C(&qword_10029D778, &qword_1002265C8);
  __chkstk_darwin(v19 - 8, v20);
  v22 = v55 - v21;
  if (a1(v56))
  {
    v23 = [*(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) escrowFetchDate];
    if (!v23)
    {
      (*(v8 + 56))(v22, 1, 1, v7);
      sub_1000114D4(v22, &qword_10029D778, &qword_1002265C8);
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v38 = sub_100216774();
      sub_100002648(v38, qword_10029D160);
      v39 = sub_100216754();
      v40 = sub_100216C54();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "no cached records were found, no saved escrowFetchDate either, returning no cache error", v41, 2u);
      }

      sub_1000561D0();
      v49 = swift_allocError();
      v50 = xmmword_100226090;
      goto LABEL_29;
    }

    v24 = v23;
    sub_100216344();

    (*(v8 + 56))(v22, 0, 1, v7);
    sub_1000114D4(v22, &qword_10029D778, &qword_1002265C8);
  }

  if ((a4 & 1) == 0)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v33 = sub_100216774();
    sub_100002648(v33, qword_10029D160);
    v34 = sub_100216754();
    v35 = sub_100216C54();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "skipping timeout check and directly returning cached records", v36, 2u);
    }

    return v56[0];
  }

  v25 = [*(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) escrowFetchDate];
  if (v25)
  {
    v26 = v55[0];
    v27 = v25;
    sub_100216344();

    sub_100216374();
    sub_1002162E4();
    LOBYTE(v27) = sub_100216304();
    v28 = *(v8 + 8);
    v28(v12, v7);
    v28(v16, v7);
    if (v27)
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v29 = sub_100216774();
      sub_100002648(v29, qword_10029D160);
      v30 = sub_100216754();
      v31 = sub_100216C54();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "escrow cache still valid", v32, 2u);
      }

      v28(v26, v7);
      return v56[0];
    }

    v28(v26, v7);
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v51 = sub_100216774();
  sub_100002648(v51, qword_10029D160);
  v52 = sub_100216754();
  v53 = sub_100216C54();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "escrow cache no longer valid", v54, 2u);
  }

  sub_1000561D0();
  v49 = swift_allocError();
  v50 = xmmword_100226070;
LABEL_29:
  *v42 = v50;
  *(v42 + 16) = 13;
  v56[0], v42, v43, v44, v45, v46, v47, v48, v55[0], v55[1], v55[2], v56[0], v56[1], v57, v58, v59, v60, v61;
  return v49;
}

uint64_t sub_10014E26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v39 = a5;
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  __chkstk_darwin(ViableBottlesRequest, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v17 = sub_100216774();
  sub_100002648(v17, qword_10029D160);
  v18 = sub_100216754();
  v19 = sub_100216C54();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = v7;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "starting fetchViableBottlesWithSemaphoreFromCuttlefish", v20, 2u);
    v7 = v38;
  }

  __chkstk_darwin(v21, v22);
  *(&v37 - 4) = a3;
  *(&v37 - 3) = a4;
  *(&v37 - 2) = a1;
  *(&v37 - 1) = a2;
  sub_1001A13C4(&unk_10029DA60, type metadata accessor for FetchViableBottlesRequest, &protocol conformance descriptor for FetchViableBottlesRequest);
  sub_100216654();
  v23 = *&v7[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
  v24 = *&v7[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
  sub_100006484(&v7[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v23);
  v25 = swift_allocObject();
  *(v25 + 16) = v39;
  *(v25 + 24) = a6;
  *(v25 + 32) = v7;
  v26 = *(v24 + 16);
  v27 = *(v26 + 64);

  v28 = v7;
  v27(v16, sub_1001ABB74, v25, v23, v26);
  v25, v29, v30, v31, v32, v33, v34, v35;
  return sub_1001AC1E4(v16, type metadata accessor for FetchViableBottlesRequest);
}

uint64_t sub_10014E53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v24 = a2;
  v8 = type metadata accessor for Metrics(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (OctagonPlatformSupportsSOS() && (v13 = SOSCompatibilityModeEnabled(), !v13))
  {
    v19 = 0;
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v15 = sub_100216774();
    sub_100002648(v15, qword_10029D160);
    v16 = sub_100216754();
    v17 = sub_100216C54();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v23 = a4;
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Requesting Cuttlefish to filter records by Octagon Only", v18, 2u);
      a4 = v23;
    }

    v19 = 1;
  }

  *a1 = v19;
  *(a1 + 8) = 1;
  __chkstk_darwin(v13, v14);
  v20 = v25;
  *(&v23 - 4) = v24;
  *(&v23 - 3) = v20;
  *(&v23 - 2) = a4;
  *(&v23 - 1) = a5;
  sub_1001A13C4(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
  sub_100216654();
  v21 = *(type metadata accessor for FetchViableBottlesRequest(0) + 24);
  sub_1000114D4(a1 + v21, &qword_100297FE0, &unk_10021E7F0);
  sub_1001AC038(v12, a1 + v21, type metadata accessor for Metrics);
  return (*(v9 + 56))(a1 + v21, 0, 1, v8);
}

void sub_10014E80C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = a1[3];

  v10, v11, v12, v13, v14, v15, v16, v17, v27, v29, v31, v33, v35, v37, v39, v41, vars0, vars8;
  a1[2] = v8;
  a1[3] = v9;
  if (a5)
  {
    v18 = a5;
  }

  else
  {
    a4 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = a1[1];

  v19, v20, v21, v22, v23, v24, v25, v26, v28, v30, v32, v34, v36, v38, v40, v42, vars0a, vars8a;
  *a1 = a4;
  a1[1] = v18;
}

uint64_t sub_10014E8A0(uint64_t a1, void (*a2)(uint64_t, unint64_t, uint64_t), uint64_t a3, void *a4)
{
  ViableBottlesResponse = type metadata accessor for FetchViableBottlesResponse(0);
  __chkstk_darwin(ViableBottlesResponse - 8, v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001148C(&qword_1002984B0, &unk_10021DF20);
  __chkstk_darwin(v11, v12);
  v14 = (&v51 - v13);
  sub_100019C6C(a1, &v51 - v13, &qword_1002984B0, &unk_10021DF20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v16 = sub_100216774();
    sub_100002648(v16, qword_10029D160);
    swift_errorRetain();
    v17 = sub_100216754();
    v18 = sub_100216C74();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v55 = v15;
      v56 = v20;
      *v19 = 136446210;
      v52 = 0x203A726F727265;
      v53 = 0xE700000000000000;
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v61._countAndFlagsBits = sub_100216994();
      object = v61._object;
      sub_100216A14(v61);
      object, v22, v23, v24, v25, v26, v27, v28, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60;

      v29 = v53;
      v30 = sub_100005FB0(v52, v53, &v56);
      v29, v31, v32, v33, v34, v35, v36, v37, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60;
      *(v19 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v17, v18, "fetchViableBottles failed with %{public}s", v19, 0xCu);
      sub_100006128(v20, v38, v39, v40, v41, v42, v43, v44);
    }

    swift_errorRetain();
    a2(v15, 0, 1);
  }

  else
  {
    v46 = sub_1001AC038(v14, v10, type metadata accessor for FetchViableBottlesResponse);
    __chkstk_darwin(v46, v47);
    *(&v51 - 2) = a4;
    *(&v51 - 1) = v10;
    sub_10001148C(&qword_10029DA70, &qword_100226788);
    sub_100216D34();
    v48 = v52;
    v49 = v53;
    v50 = v54;
    a2(v52, v53, v54);
    sub_1001A9B3C(v48, v49, v50);
    return sub_1001AC1E4(v10, type metadata accessor for FetchViableBottlesResponse);
  }
}

void sub_10014EC50(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v187 = a3;
  v188 = a2;
  v4 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v6 = __chkstk_darwin(v4 - 8, v5);
  v8 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v191 = &v181 - v10;
  v11 = type metadata accessor for Bottle(0);
  v186 = *(v11 - 8);
  v13 = __chkstk_darwin(v11, v12);
  v192 = (&v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13, v15);
  v17 = &v181 - v16;
  v195 = type metadata accessor for EscrowPair(0);
  v185 = *(v195 - 8);
  v19 = __chkstk_darwin(v195, v18);
  v194 = &v181 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v21);
  v196 = (&v181 - v22);
  v23 = sub_100216384();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23, v25);
  v27 = &v181 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10001148C(&qword_10029DA78, &qword_100226790);
  __chkstk_darwin(v28 - 8, v29);
  v31 = &v181 - v30;
  sub_10014C364();
  sub_1001AC0A0(v188, v31, type metadata accessor for FetchViableBottlesResponse);
  ViableBottlesResponse = type metadata accessor for FetchViableBottlesResponse(0);
  (*(*(ViableBottlesResponse - 8) + 56))(v31, 0, 1, ViableBottlesResponse);
  sub_1001497CC(v31);
  sub_1000114D4(v31, &qword_10029DA78, &qword_100226790);
  v33 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
  sub_100216374();
  isa = sub_1002162F4().super.isa;
  (*(v24 + 8))(v27, v23);
  [v33 setEscrowFetchDate:isa];

  v35 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
  v198 = 0;
  v36 = [v35 save:&v198];
  if (v36)
  {
    v37 = qword_100297520;
    v38 = v198;
    if (v37 != -1)
    {
      swift_once();
    }

    v39 = sub_100216774();
    v182 = sub_100002648(v39, qword_10029D160);
    v40 = sub_100216754();
    v41 = sub_100216C54();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "fetchViableBottles saved bottles and records", v42, 2u);
    }

    v48 = *v188;
    v49 = *(*v188 + 16);
    v50 = _swiftEmptyArrayStorage;
    v193 = v11;
    HIDWORD(v183) = v36;
    if (v49)
    {
      v181 = v8;
      v197 = _swiftEmptyArrayStorage;
      sub_1001877A4(0, v49, 0, v43, v44, v45, v46, v47);
      v50 = v197;
      v51 = v48 + ((*(v185 + 80) + 32) & ~*(v185 + 80));
      *&v190 = v185[9];
      v52 = (v186 + 48);
      v189 = xmmword_10021D470;
      do
      {
        v53 = v50;
        v54 = v196;
        sub_1001AC0A0(v51, v196, type metadata accessor for EscrowPair);
        v55 = *(v54 + *(v195 + 20));
        v56 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
        swift_beginAccess();
        v57 = v55 + v56;
        v58 = v191;
        sub_100019C6C(v57, v191, &unk_10029D880, &qword_10021E830);
        v59 = *v52;
        if ((*v52)(v58, 1, v11) == 1)
        {
          v60 = v189;
          *v17 = v189;
          *(v17 + 1) = v60;
          *(v17 + 2) = v60;
          *(v17 + 3) = v60;
          *(v17 + 8) = 0;
          *(v17 + 9) = 0xE000000000000000;
          *(v17 + 10) = 0;
          *(v17 + 11) = 0xE000000000000000;
          _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
          if (v59(v58, 1, v11) != 1)
          {
            sub_1000114D4(v58, &unk_10029D880, &qword_10021E830);
          }
        }

        else
        {
          sub_1001AC038(v58, v17, type metadata accessor for Bottle);
        }

        sub_1001AC1E4(v196, type metadata accessor for EscrowPair);
        v62 = *(v17 + 10);
        v61 = *(v17 + 11);

        sub_1001AC1E4(v17, type metadata accessor for Bottle);
        v50 = v53;
        v197 = v53;
        v63 = v53[2];
        v64 = v50[3];
        if (v63 >= v64 >> 1)
        {
          sub_1001877A4((v64 > 1), v63 + 1, 1, v43, v44, v45, v46, v47);
          v50 = v197;
        }

        v50[2] = (v63 + 1);
        v65 = &v50[2 * v63];
        v65[4] = v62;
        v65[5] = v61;
        v51 += v190;
        --v49;
        v11 = v193;
      }

      while (v49);
      LOBYTE(v36) = BYTE4(v183);
      v8 = v181;
    }

    v99 = v188[1];
    v100 = *(v99 + 16);
    *&v189 = v50;
    if (v100)
    {
      v200 = _swiftEmptyArrayStorage;
      sub_1001877A4(0, v100, 0, v43, v44, v45, v46, v47);
      v196 = v200;
      v101 = v99 + ((*(v185 + 80) + 32) & ~*(v185 + 80));
      v191 = v185[9];
      v102 = (v186 + 48);
      v190 = xmmword_10021D470;
      do
      {
        v103 = v194;
        sub_1001AC0A0(v101, v194, type metadata accessor for EscrowPair);
        v104 = *(v103 + *(v195 + 20));
        v105 = OBJC_IVAR____TtCV18TrustedPeersHelper10EscrowPairP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
        swift_beginAccess();
        sub_100019C6C(v104 + v105, v8, &unk_10029D880, &qword_10021E830);
        v106 = *v102;
        if ((*v102)(v8, 1, v11) == 1)
        {
          v107 = v192;
          v108 = v190;
          *v192 = v190;
          v107[1] = v108;
          v107[2] = v108;
          v107[3] = v108;
          *(v107 + 8) = 0;
          *(v107 + 9) = 0xE000000000000000;
          *(v107 + 10) = 0;
          *(v107 + 11) = 0xE000000000000000;
          _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
          if (v106(v8, 1, v11) != 1)
          {
            sub_1000114D4(v8, &unk_10029D880, &qword_10021E830);
          }
        }

        else
        {
          v107 = v192;
          sub_1001AC038(v8, v192, type metadata accessor for Bottle);
        }

        v109 = v8;
        sub_1001AC1E4(v194, type metadata accessor for EscrowPair);
        v111 = *(v107 + 10);
        v110 = *(v107 + 11);

        sub_1001AC1E4(v107, type metadata accessor for Bottle);
        v117 = v196;
        v200 = v196;
        v119 = v196[2];
        v118 = v196[3];
        if (v119 >= v118 >> 1)
        {
          sub_1001877A4((v118 > 1), v119 + 1, 1, v112, v113, v114, v115, v116);
          v117 = v200;
        }

        v117[2] = (v119 + 1);
        v196 = v117;
        v120 = &v117[2 * v119];
        v120[4] = v111;
        v120[5] = v110;
        v101 += v191;
        --v100;
        v8 = v109;
        v11 = v193;
      }

      while (v100);
      LOBYTE(v36) = BYTE4(v183);
    }

    else
    {
      v196 = _swiftEmptyArrayStorage;
    }

    v122 = sub_100216754();
    v123 = sub_100216C54();
    v121, v124, v125, v126, v127, v128, v129, v130, v181, v182, v183, v184, v185, v186, v187, v188, v189, *(&v189 + 1);
    if (os_log_type_enabled(v122, v123))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v200 = v132;
      *v131 = 136446210;
      v133 = sub_100216B34();
      v135 = v134;
      v136 = sub_100005FB0(v133, v134, &v200);
      v135, v137, v138, v139, v140, v141, v142, v143, v181, v182, v183, v184, v185, v186, v187, v188, v189, *(&v189 + 1);
      *(v131 + 4) = v136;
      _os_log_impl(&_mh_execute_header, v122, v123, "fetchViableBottles returned viable bottles: %{public}s", v131, 0xCu);
      sub_100006128(v132, v144, v145, v146, v147, v148, v149, v150);
    }

    v151 = v196;

    v152 = sub_100216754();
    v153 = sub_100216C54();
    v151, v154, v155, v156, v157, v158, v159, v160, v181, v182, v183, v184, v185, v186, v187, v188, v189, *(&v189 + 1);
    if (os_log_type_enabled(v152, v153))
    {
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v200 = v162;
      *v161 = 136446210;
      v163 = sub_100216B34();
      v165 = v164;
      v166 = sub_100005FB0(v163, v164, &v200);
      v165, v167, v168, v169, v170, v171, v172, v173, v181, v182, v183, v184, v185, v186, v187, v188, v189, *(&v189 + 1);
      *(v161 + 4) = v166;
      _os_log_impl(&_mh_execute_header, v152, v153, "fetchViableBottles returned partial bottles: %{public}s", v161, 0xCu);
      sub_100006128(v162, v174, v175, v176, v177, v178, v179, v180);
    }

    v98 = v187;
    v67 = v189;
    v97 = v196;
  }

  else
  {
    v66 = v198;
    v67 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v68 = sub_100216774();
    sub_100002648(v68, qword_10029D160);
    swift_errorRetain();
    v69 = sub_100216754();
    v70 = sub_100216C74();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v197 = v72;
      *v71 = 136446210;
      v198 = 0x203A726F727265;
      v199 = 0xE700000000000000;
      v200 = v67;
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v201._countAndFlagsBits = sub_100216994();
      object = v201._object;
      sub_100216A14(v201);
      object, v74, v75, v76, v77, v78, v79, v80, v181, v182, v183, v184, v185, v186, v187, v188, v189, *(&v189 + 1);

      v81 = v199;
      v82 = sub_100005FB0(v198, v199, &v197);
      v81, v83, v84, v85, v86, v87, v88, v89, v181, v182, v183, v184, v185, v186, v187, v188, v189, *(&v189 + 1);
      *(v71 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v69, v70, "fetchViableBottles unable to save bottles and records with %{public}s", v71, 0xCu);
      sub_100006128(v72, v90, v91, v92, v93, v94, v95, v96);
    }

    v97 = 0;
    v98 = v187;
  }

  *v98 = v67;
  v98[1] = v97;
  *(v98 + 16) = v36 ^ 1;
}

void sub_10014F93C(void *a1, void *a2, char a3, void (*a4)(uint64_t, void), uint64_t a5, uint64_t a6)
{
  LOBYTE(v17) = a3 & 1;
  v18 = a6;
  sub_10001148C(&qword_10029DA80, &qword_100226798);
  sub_100216D34();
  a4(v21, v22);
  sub_1001ABC14(v21, v22, v7, v8, v9, v10, v11, v12, v13, v14, a1, a2, v17, v18, v19, v20, v21, v22);
}

void sub_10014F9F8(void *a1@<X0>, int a2@<W2>, _BYTE *a3@<X8>)
{
  v4 = a2;
  if ((a2 & 1) == 0)
  {
    HIDWORD(v32) = a2;
    sub_1001FBE54();
    v15 = v7;
    v16 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
LABEL_23:
      v17 = sub_1002170F4();
      v30 = a3;
      if (v17)
      {
LABEL_5:
        v18 = 0;
        a3 = (v15 & 0xC000000000000001);
        v35 = _swiftEmptyArrayStorage;
        do
        {
          v19 = v18;
          while (1)
          {
            if (a3)
            {
              v20 = sub_100217014();
            }

            else
            {
              if (v19 >= *(v16 + 16))
              {
                goto LABEL_22;
              }

              v20 = *&v15[1]._TtCs12_SwiftObject_opaque[8 * v19];
            }

            v21 = v20;
            v18 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            v22 = [v20 data];
            if (v22)
            {
              break;
            }

            ++v19;
            if (v18 == v17)
            {
              goto LABEL_25;
            }
          }

          v23 = v22;
          v24 = sub_100216224();
          v29 = v25;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_100182FA0(0, *(v35 + 2) + 1, 1, v35);
          }

          v27 = *(v35 + 2);
          v26 = *(v35 + 3);
          if (v27 >= v26 >> 1)
          {
            v35 = sub_100182FA0((v26 > 1), v27 + 1, 1, v35);
          }

          *(v35 + 2) = v27 + 1;
          v28 = &v35[16 * v27];
          *(v28 + 4) = v24;
          *(v28 + 5) = v29;
        }

        while (v18 != v17);
        goto LABEL_25;
      }
    }

    else
    {
      v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v30 = a3;
      if (v17)
      {
        goto LABEL_5;
      }
    }

    v35 = _swiftEmptyArrayStorage;
LABEL_25:
    v15, v8, v9, v10, v11, v12, v13, v14, v29, v30, v32, v3, v34, v35, v37, v38, v39, v40;
    v4 = v33;
    a3 = v31;
    a1 = v36;
    goto LABEL_26;
  }

  swift_errorRetain();
LABEL_26:
  *a3 = a1;
  a3[8] = v4 & 1;
}

uint64_t sub_10014FBF0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void, void, void), void *a6)
{
  if (a3)
  {
    v11 = sub_100216C74();
  }

  else
  {
    v11 = sub_100216C54();
  }

  v12 = v11;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v13 = sub_100216774();
  sub_100002648(v13, qword_10029D160);
  swift_errorRetain();
  v14 = sub_100216754();

  if (os_log_type_enabled(v14, v12))
  {
    v49 = a6;
    v50 = a5;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v55 = v16;
    *v15 = 136446210;
    v17 = 0xE700000000000000;
    if (a3)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v60._countAndFlagsBits = sub_100216994();
      object = v60._object;
      sub_100216A14(v60);
      object, v19, v20, v21, v22, v23, v24, v25, v49, v50, a3, 0x203A726F727265, 0xE700000000000000, v55, v56, v57, v58, v59;

      v26 = v53;
      v17 = v54;
    }

    else
    {
      v26 = 0x73736563637573;
    }

    v33 = sub_100005FB0(v26, v17, &v55);
    v17, v34, v35, v36, v37, v38, v39, v40, v49, v50, v52, v53, v54, v55, v56, v57, v58, v59;
    *(v15 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v14, v12, "fetchCurrentPolicy complete: %{public}s", v15, 0xCu);
    sub_100006128(v16, v41, v42, v43, v44, v45, v46, v47);

    a5 = v51;
  }

  else
  {
  }

  sub_10010EEEC(0xD00000000000003DLL, 0x800000010023C460, v27, v28, v29, v30, v31, v32);
  return a5(a1, a2, a3);
}

void sub_10014FE38(char *a1, _TtC18TrustedPeersHelper6Client *a2, _TtC18TrustedPeersHelper6Client *a3, void (*a4)(void *, id, id), _TtC18TrustedPeersHelper6Client *a5, char a6)
{
  v539 = a4;
  v540 = a5;
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  __chkstk_darwin(PolicyDocumentsRequest, v11);
  v13 = &v521 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v15 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v15)
  {
    v16 = v15;
    sub_100216974();
    v18 = v17;

    v19 = [*&a1[v14] egoPeerPermanentInfo];
    if (v19)
    {
      v27 = v19;
      v537 = sub_100216224();
      v538 = v28;

      v29 = [*&a1[v14] egoPeerPermanentInfoSig];
      if (v29)
      {
        v36 = v29;
        v535 = sub_100216224();
        v536 = v37;

        v38 = [*&a1[v14] egoPeerStableInfo];
        if (v38)
        {
          v528 = PolicyDocumentsRequest;
          v45 = a6;
          v533 = a2;
          v46 = v38;
          v47 = sub_100216224();
          v49 = v48;

          v50 = [*&a1[v14] egoPeerStableInfoSig];
          if (v50)
          {
            v527 = a3;
            v526 = v13;
            v531 = v47;
            v532 = v49;
            v57 = v50;
            v534 = sub_100216224();
            v530 = v58;

            v59 = [objc_allocWithZone(TPECPublicKeyFactory) init];
            v60 = v537;
            v61 = v538;
            sub_100012558(v537, v538);
            v63 = v535;
            v62 = v536;
            sub_100012558(v535, v536);
            v64 = sub_100216964();
            v18, v65, v66, v67, v68, v69, v70, v71, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530;
            isa = sub_100216204().super.isa;
            v73 = sub_100216204().super.isa;
            v74 = [objc_opt_self() permanentInfoWithPeerID:v64 data:isa sig:v73 keyFactory:v59];

            v529 = v59;
            sub_100002BF0(v63, v62, v75, v76, v77, v78, v79, v80);

            v81 = v60;
            v82 = v74;
            sub_100002BF0(v81, v61, v83, v84, v85, v86, v87, v88);

            if (!v74)
            {
              v278 = v534;
              v280 = v530;
              v279 = v531;
              v90 = v532;
              if (qword_100297520 != -1)
              {
                swift_once();
              }

              v281 = sub_100216774();
              sub_100002648(v281, qword_10029D160);
              v282 = sub_100216754();
              v283 = sub_100216C74();
              if (os_log_type_enabled(v282, v283))
              {
                v284 = swift_slowAlloc();
                *v284 = 0;
                _os_log_impl(&_mh_execute_header, v282, v283, "fetchCurrentPolicy failed to create TPPeerPermanentInfo", v284, 2u);
              }

              sub_1000561D0();
              v285 = swift_allocError();
              *v286 = xmmword_10021DA80;
              *(v286 + 16) = 13;
              v539(0, 0, v285);

              sub_100002BF0(v278, v280, v287, v288, v289, v290, v291, v292);
              v299 = v279;
              goto LABEL_58;
            }

            v89 = objc_allocWithZone(TPPeerStableInfo);
            v91 = v531;
            v90 = v532;
            sub_100012558(v531, v532);
            v92 = v534;
            v93 = v530;
            sub_100012558(v534, v530);
            v94 = sub_100216204().super.isa;
            v95 = sub_100216204().super.isa;
            v96 = [v89 initWithData:v94 sig:v95];

            sub_100002BF0(v92, v93, v97, v98, v99, v100, v101, v102);
            sub_100002BF0(v91, v90, v103, v104, v105, v106, v107, v108);
            if (v96)
            {
              v109 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
              aBlock[0] = 0;
              v110 = [v109 allPolicyVersionsWithError:aBlock];
              v111 = aBlock[0];
              if (!v110)
              {
                v361 = v93;
                v362 = aBlock[0];
                v363 = sub_100216154();

                swift_willThrow();
                if (qword_100297520 != -1)
                {
                  swift_once();
                }

                v364 = sub_100216774();
                sub_100002648(v364, qword_10029D160);
                swift_errorRetain();
                v365 = sub_100216754();
                v366 = sub_100216C74();

                if (os_log_type_enabled(v365, v366))
                {
                  v367 = swift_slowAlloc();
                  v368 = swift_slowAlloc();
                  *v367 = 138543362;
                  swift_errorRetain();
                  v369 = _swift_stdlib_bridgeErrorToNSError();
                  *(v367 + 4) = v369;
                  *v368 = v369;
                  _os_log_impl(&_mh_execute_header, v365, v366, "Error fetching all policy versions: %{public}@", v367, 0xCu);
                  sub_1000114D4(v368, &qword_10029D580, &unk_10021CCC0);
                }

                swift_errorRetain();
                v539(0, 0, v363);

                sub_100002BF0(v534, v361, v370, v371, v372, v373, v374, v375);
                v382 = v91;
                v383 = v90;
                goto LABEL_71;
              }

              v112 = v110;
              sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
              sub_1001A9AB8(&qword_100297E88, &qword_100297D68, TPPolicyVersion_ptr);
              v113 = v96;
              v114 = sub_100216BB4();
              v115 = v111;

              v91 = swift_allocObject();
              v116 = v533;
              *(v91 + 16) = a1;
              *(v91 + 24) = v116;
              *(v91 + 32) = v527;
              *(v91 + 40) = v82;
              v117 = v539;
              v118 = v540;
              *(v91 + 48) = v113;
              *(v91 + 56) = v117;
              *(v91 + 64) = v118;
              v119 = swift_allocObject();
              v525 = v119;
              *v119->endpoint = v114;
              endpoint = v119->endpoint;
              v121 = v82;
              v122 = swift_allocObject();
              swift_bridgeObjectRetain_n();
              v123 = v121;
              v124 = v113;
              v125 = endpoint;
              v126 = v124;
              swift_retain_n();
              v127 = a1;
              v90 = v123;
              v524 = v126;
              v522 = v114;

              v128 = v127;
              v129 = sub_100019440(_swiftEmptyArrayStorage);
              v523 = v122;
              *v122->endpoint = v129;
              v130 = *&v128[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
              v131 = swift_allocObject();
              *(v131 + 16) = v125;
              *(v131 + 24) = v128;
              *(v131 + 32) = v122->endpoint;
              v132 = swift_allocObject();
              *v132->endpoint = sub_1001ACE80;
              *v132->containerMap = v131;
              aBlock[4] = sub_1001ACCC0;
              v543 = v132;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100109050;
              aBlock[3] = &unk_100282E00;
              v133 = _Block_copy(aBlock);
              v134 = v543;
              v135 = v128;

              v134, v136, v137, v138, v139, v140, v141, v142;
              [v130 performBlockAndWait:v133];
              _Block_release(v133);
              LOBYTE(v133) = swift_isEscapingClosureAtFileLocation();
              v132, v143, v144, v145, v146, v147, v148, v149;
              if ((v133 & 1) == 0)
              {
                v152 = *v125;
                v153 = v526;
                if ((*v125 & 0xC000000000000001) != 0)
                {

                  v154 = sub_100216ED4();
                  v152, v155, v156, v157, v158, v159, v160, v161, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530;
                }

                else
                {
                  v154 = *v152->endpoint;
                }

                if (v154)
                {
                  v539 = v90;
                  __chkstk_darwin(v150, v151);
                  *(&v521 - 2) = v125;
                  sub_1001A13C4(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest, &protocol conformance descriptor for FetchPolicyDocumentsRequest);
                  sub_100216654();
                  v384 = *&v135[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
                  v385 = *&v135[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
                  sub_100006484(&v135[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v384);
                  v386 = swift_allocObject();
                  *(v386 + 16) = v135;
                  *(v386 + 24) = sub_1001A9B24;
                  v533 = v131;
                  v387 = v523;
                  v388 = v525;
                  *(v386 + 32) = v91;
                  *(v386 + 40) = v388;
                  *(v386 + 48) = v387;
                  v389 = *(v385 + 16);
                  v528 = *(v389 + 80);
                  v390 = v135;

                  v391 = v389;
                  v90 = v539;
                  (v528)(v153, sub_1001ACE2C, v386, v384, v391);
                  v392 = v530;
                  v386, v393, v394, v395, v396, v397, v398, v399;
                  sub_1001AC1E4(v153, type metadata accessor for FetchPolicyDocumentsRequest);

                  v527, v400, v401, v402, v403, v404, v405, v406, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530;
                  v407 = v524;

                  v540, v408, v409, v410, v411, v412, v413, v414;
                  v91, v415, v416, v417, v418, v419, v420, v421;
                  v533, v422, v423, v424, v425, v426, v427, v428;
                  v388, v429, v430, v431, v432, v433, v434, v435;
                  v387, v436, v437, v438, v439, v440, v441, v442;
                }

                else
                {
                  v443 = v523;
                  v444 = *v523->endpoint;

                  v445 = v527;
                  v407 = v524;
                  v446 = v540;
                  sub_1001A64F4(0, v135, v533, v527, v90, v524, v539, v540);

                  v445, v447, v448, v449, v450, v451, v452, v453, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530;
                  v446, v454, v455, v456, v457, v458, v459, v460;
                  v91, v461, v462, v463, v464, v465, v466, v467;
                  v131, v468, v469, v470, v471, v472, v473, v474;
                  v525, v475, v476, v477, v478, v479, v480, v481;
                  v443, v482, v483, v484, v485, v486, v487, v488;
                  v444, v489, v490, v491, v492, v493, v494, v495, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530;
                  v392 = v530;
                }

                v522, v496, v497, v498, v499, v500, v501, v502, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530;
                sub_100002BF0(v534, v392, v503, v504, v505, v506, v507, v508);
                v382 = v531;
                v383 = v532;
LABEL_71:
                sub_100002BF0(v382, v383, v376, v377, v378, v379, v380, v381);
                sub_100002BF0(v535, v536, v509, v510, v511, v512, v513, v514);
                sub_100002BF0(v537, v538, v515, v516, v517, v518, v519, v520);
                return;
              }

              __break(1u);
            }

            else
            {
              v132 = v82;
              v128 = v93;
              if (qword_100297520 == -1)
              {
LABEL_55:
                v333 = sub_100216774();
                sub_100002648(v333, qword_10029D160);
                v334 = sub_100216754();
                v335 = sub_100216C74();
                v336 = os_log_type_enabled(v334, v335);
                v337 = v534;
                if (v336)
                {
                  v338 = swift_slowAlloc();
                  *v338 = 0;
                  _os_log_impl(&_mh_execute_header, v334, v335, "fetchCurrentPolicy failed to create TPPeerStableInfo", v338, 2u);
                }

                sub_1000561D0();
                v339 = swift_allocError();
                *v340 = xmmword_10021DC20;
                *(v340 + 16) = 13;
                v539(0, 0, v339);

                sub_100002BF0(v337, v128, v341, v342, v343, v344, v345, v346);
                v299 = v91;
LABEL_58:
                sub_100002BF0(v299, v90, v293, v294, v295, v296, v297, v298);
                sub_100002BF0(v535, v536, v347, v348, v349, v350, v351, v352);
                v359 = v537;
                v360 = v538;

                sub_100002BF0(v359, v360, v353, v354, v355, v356, v357, v358);
                return;
              }
            }

            swift_once();
            goto LABEL_55;
          }

          sub_100002BF0(v47, v49, v51, v52, v53, v54, v55, v56);
          a6 = v45;
        }

        sub_100002BF0(v535, v536, v39, v40, v41, v42, v43, v44);
      }

      sub_100002BF0(v537, v538, v30, v31, v32, v33, v34, v35);
    }

    v18, v20, v21, v22, v23, v24, v25, v26, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530;
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v162 = sub_100216774();
  sub_100002648(v162, qword_10029D160);
  v163 = sub_100216754();
  v164 = sub_100216C74();
  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    *v165 = 0;
    _os_log_impl(&_mh_execute_header, v163, v164, "fetchCurrentPolicy failed to find ego peer information", v165, 2u);
  }

  if (!a3)
  {
    v203 = sub_100216754();
    v204 = sub_100216C54();
    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      *v205 = 0;
      _os_log_impl(&_mh_execute_header, v203, v204, "no model ID override; returning error", v205, 2u);
    }

    sub_1000561D0();
    v206 = swift_allocError();
    *v207 = xmmword_10021DA90;
    *(v207 + 16) = 13;
    v539(0, 0, v206);

    goto LABEL_33;
  }

  v166 = objc_opt_self();
  v167 = sub_100216964();
  v168 = [v166 mungeModelID:v167];

  v169 = v168;
  if (!v168)
  {
    sub_100216974();
    v171 = v170;
    v169 = sub_100216964();
    v171, v172, v173, v174, v175, v176, v177, v178, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530;
  }

  v179 = sub_100216974();
  v181 = v180;
  v182 = qword_100297228;
  v183 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  if (v182 != -1)
  {
    swift_once();
  }

  v184 = [qword_1002B0318 versionNumber];
  aBlock[0] = 0;
  v185 = [v183 policyWithVersion:v184 error:aBlock];

  v186 = aBlock[0];
  if (!aBlock[0])
  {
    if (v185)
    {
      v208 = v185;
      v209 = sub_10001913C(_swiftEmptyArrayStorage);
      v210 = sub_1002168C4().super.isa;
      v209, v211, v212, v213, v214, v215, v216, v217, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530;
      v218 = [objc_allocWithZone(type metadata accessor for PolicyRedactionCrypter()) init];
      aBlock[0] = 0;
      v219 = [v208 policyWithSecrets:v210 decrypter:v218 error:aBlock];

      v220 = aBlock[0];
      if (v219)
      {
        aBlock[0] = 0;
        v221 = v220;
        v222 = [v219 syncingPolicyForModel:v169 syncUserControllableViews:0 isInheritedAccount:a6 & 1 error:aBlock];

        if (v222)
        {
          v223 = aBlock[0];

          v224 = sub_100216754();
          v225 = sub_100216C54();
          v181, v226, v227, v228, v229, v230, v231, v232, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530;
          if (os_log_type_enabled(v224, v225))
          {
            v240 = swift_slowAlloc();
            v241 = swift_slowAlloc();
            aBlock[0] = v241;
            *v240 = 136446210;
            v242 = sub_100005FB0(v179, v181, aBlock);
            v181, v243, v244, v245, v246, v247, v248, v249, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530;
            *(v240 + 4) = v242;
            _os_log_impl(&_mh_execute_header, v224, v225, "returning a policy for model ID %{public}s", v240, 0xCu);
            sub_100006128(v241, v250, v251, v252, v253, v254, v255, v256);
          }

          else
          {
            v181, v233, v234, v235, v236, v237, v238, v239, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530;
          }

          v332 = v222;
          v539(v222, 0, 0);

          return;
        }

        v300 = aBlock[0];
        v181, v301, v302, v303, v304, v305, v306, v307, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530;
        v277 = sub_100216154();

        swift_willThrow();
      }

      else
      {
        v269 = aBlock[0];

        v181, v270, v271, v272, v273, v274, v275, v276, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530;
        v277 = sub_100216154();

        swift_willThrow();
      }

      swift_errorRetain();
      v308 = sub_100216754();
      v309 = sub_100216C74();

      if (os_log_type_enabled(v308, v309))
      {
        v310 = swift_slowAlloc();
        v311 = swift_slowAlloc();
        aBlock[0] = v311;
        *v310 = 136446210;
        v541 = v277;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v312 = sub_100216994();
        v314 = v313;
        v315 = sub_100005FB0(v312, v313, aBlock);
        v314, v316, v317, v318, v319, v320, v321, v322, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530;
        *(v310 + 4) = v315;
        _os_log_impl(&_mh_execute_header, v308, v309, "fetchCurrentPolicy failed to prevailing policy: %{public}s", v310, 0xCu);
        sub_100006128(v311, v323, v324, v325, v326, v327, v328, v329);
      }

      sub_1000561D0();
      v330 = swift_allocError();
      *v331 = xmmword_10021DA90;
      *(v331 + 16) = 13;
      v539(0, 0, v330);
    }

    else
    {

      v181, v257, v258, v259, v260, v261, v262, v263, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530;
      v264 = sub_100216754();
      v265 = sub_100216C54();
      if (os_log_type_enabled(v264, v265))
      {
        v266 = swift_slowAlloc();
        *v266 = 0;
        _os_log_impl(&_mh_execute_header, v264, v265, "prevailing policy is missing?", v266, 2u);
      }

      sub_1000561D0();
      v267 = swift_allocError();
      *v268 = xmmword_10021DA90;
      *(v268 + 16) = 13;
      v539(0, 0, v267);
    }

LABEL_33:

    return;
  }

  v187 = aBlock[0];

  v181, v188, v189, v190, v191, v192, v193, v194, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530;
  swift_willThrow();
  v195 = v187;
  v196 = sub_100216754();
  v197 = sub_100216C74();

  if (os_log_type_enabled(v196, v197))
  {
    v198 = swift_slowAlloc();
    v199 = swift_slowAlloc();
    *v198 = 138543362;
    v200 = v195;
    v201 = _swift_stdlib_bridgeErrorToNSError();
    *(v198 + 4) = v201;
    *v199 = v201;
    _os_log_impl(&_mh_execute_header, v196, v197, "error finding prevailing policy: %{public}@", v198, 0xCu);
    sub_1000114D4(v199, &qword_10029D580, &unk_10021CCC0);
  }

  v202 = v195;
  v539(0, 0, v186);
}

id sub_100151404(uint64_t a1, void *a2, id a3)
{
  v4 = a3;
  v5 = [a3 bestPolicyVersion];
  v6 = [v5 versionNumber];
  if (qword_100297230 != -1)
  {
    swift_once();
  }

  if (v6 >= [qword_1002B0320 versionNumber])
  {
    v13 = v5;
    v8 = v13;
  }

  else
  {
    if (qword_100297228 != -1)
    {
      swift_once();
    }

    v7 = qword_100297520;
    v8 = qword_1002B0318;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_100216774();
    sub_100002648(v9, qword_10029D160);
    v10 = sub_100216754();
    v11 = sub_100216C54();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Ignoring policy version from pre-CKKS4All peer", v12, 2u);
    }
  }

  __chkstk_darwin(v13, v14);
  sub_10001148C(&qword_10029DA58, &unk_100226778);
  sub_100216D34();
  if (!v3)
  {

    v15 = v45[0];
    if (v45[0])
    {
      v16 = [v4 policySecrets];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1002168D4();
      }

      else
      {
        v18 = sub_10001913C(_swiftEmptyArrayStorage);
      }

      isa = sub_1002168C4().super.isa;
      v18, v28, v29, v30, v31, v32, v33, v34, v43, a2, v45[0], v45[1], v45[2], v46, v47, v48, v49, v50;
      v35 = [objc_allocWithZone(type metadata accessor for PolicyRedactionCrypter()) init];
      v45[0] = 0;
      v36 = [v15 policyWithSecrets:isa decrypter:v35 error:v45];

      if (v36)
      {
        v37 = v45[0];
        v38 = sub_100216964();
        v39 = [v4 syncUserControllableViews];
        v40 = [v4 isInheritedAccount];
        v45[0] = 0;
        v4 = [v36 syncingPolicyForModel:v38 syncUserControllableViews:v39 isInheritedAccount:v40 error:v45];

        if (v4)
        {
          v41 = v45[0];

          return v4;
        }

        v4 = v45[0];
        sub_100216154();

        swift_willThrow();
      }

      else
      {
        v4 = v45[0];
        sub_100216154();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v19 = sub_100216774();
      sub_100002648(v19, qword_10029D160);
      v20 = v8;
      v21 = sub_100216754();
      v22 = sub_100216C54();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138543362;
        *(v23 + 4) = v20;
        *v24 = v20;
        v25 = v20;
        _os_log_impl(&_mh_execute_header, v21, v22, "best policy(%{public}@) is missing?", v23, 0xCu);
        sub_1000114D4(v24, &qword_10029D580, &unk_10021CCC0);
      }

      v4 = [v20 versionNumber];
      sub_1000561D0();
      swift_allocError();
      *v26 = v4;
      *(v26 + 8) = 0;
      *(v26 + 16) = 1;
      swift_willThrow();
    }

    return v4;
  }

  return v4;
}

void sub_1001519C8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v7 = 0;
  v6 = [v5 policyWithVersion:objc_msgSend(a2 error:{"versionNumber"), &v7}];

  if (v7)
  {
    v7;

    swift_willThrow();
  }

  else
  {
    *a3 = v6;
  }
}

uint64_t sub_100151AA4(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a2)
  {
    v7 = sub_100216C74();
  }

  else
  {
    v7 = sub_100216C54();
  }

  v8 = v7;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  swift_errorRetain();
  v10 = sub_100216754();

  if (os_log_type_enabled(v10, v8))
  {
    v46 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v51 = v12;
    *v11 = 136446210;
    v13 = 0xE700000000000000;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v56._countAndFlagsBits = sub_100216994();
      object = v56._object;
      sub_100216A14(v56);
      object, v15, v16, v17, v18, v19, v20, v21, v45, v46, a2, 0x203A726F727265, 0xE700000000000000, v51, v52, v53, v54, v55;

      v22 = v49;
      v13 = v50;
    }

    else
    {
      v22 = 0x73736563637573;
    }

    v29 = sub_100005FB0(v22, v13, &v51);
    v13, v30, v31, v32, v33, v34, v35, v36, v45, v46, v48, v49, v50, v51, v52, v53, v54, v55;
    *(v11 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v10, v8, "fetchPolicyDocuments complete: %{public}s", v11, 0xCu);
    sub_100006128(v12, v37, v38, v39, v40, v41, v42, v43);

    a4 = v47;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000025, 0x800000010023C430, v23, v24, v25, v26, v27, v28);
  return a4(a1, a2);
}

void sub_100151CE4(uint64_t a1, uint64_t a2, void (*a3)(_TtC18TrustedPeersHelper6Client *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, int a14, void *a15, void *a16, void *a17, void *a18)
{
  v18 = a3;
  if (!a1)
  {
    v22 = 0;
LABEL_20:
    v18(v22, a2);

    v22, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;
    return;
  }

  v19 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v20 = a2;
    v21 = sub_10018CFD4(a1);
    a2 = v20;
    v22 = v21;
    goto LABEL_20;
  }

  v53 = a2;
  sub_10001148C(&unk_10029D800, &unk_100226620);
  v23 = sub_100217114();
  v22 = v23;
  v24 = 0;
  v25 = v19 + 64;
  v26 = 1 << *(v19 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v19 + 64);
  v29 = (v26 + 63) >> 6;
  v55 = v23 + 64;
  if (v28)
  {
    while (1)
    {
      v30 = __clz(__rbit64(v28));
      v56 = (v28 - 1) & v28;
LABEL_16:
      v33 = v30 | (v24 << 6);
      v34 = v19;
      v35 = *(*(v19 + 48) + 8 * v33);
      v36 = *(*(v19 + 56) + 8 * v33);
      v57 = v35;
      v37 = v36;
      v38 = [v37 protobuf];
      v39 = sub_100216224();
      v41 = v40;

      *(v55 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      *(*v22[1].endpoint + 8 * v33) = v57;
      v42 = (*v22[1].containerMap + 16 * v33);
      *v42 = v39;
      v42[1] = v41;
      v43 = *v22->endpoint;
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        break;
      }

      *v22->endpoint = v45;
      v19 = v34;
      v28 = v56;
      if (!v56)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v31 = v24;
    while (1)
    {
      v24 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v24 >= v29)
      {
        v18 = a3;
        a2 = v53;
        goto LABEL_20;
      }

      v32 = *(v25 + 8 * v24);
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v56 = (v32 - 1) & v32;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100151EFC(_TtC18TrustedPeersHelper6Client *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  if (a2)
  {
    (a3)(0, a2, a3, a4, a5);
  }

  else if (a1 && (v8 = sub_100108220(a5, a1)) != 0)
  {
    v45 = v8;
    (a3)(v8, 0);
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v9 = sub_100216774();
    sub_100002648(v9, qword_10029D160);

    v10 = sub_100216754();
    v11 = sub_100216C54();
    a1, v12, v13, v14, v15, v16, v17, v18, v42, v44, v47, v49, v50, v51, v52, v53, v54, v55;
    if (os_log_type_enabled(v10, v11))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v48 = a1;
      v49 = v20;
      *v19 = 136446210;

      sub_10001148C(&qword_10029D958, &qword_100226700);
      v21 = sub_100216994();
      v23 = v22;
      v24 = sub_100005FB0(v21, v22, &v49);
      v23, v25, v26, v27, v28, v29, v30, v31, v43, v46, v48, v49, v50, v51, v52, v53, v54, v55;
      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v10, v11, "fetchPolicyDocument: didn't return policy of version: %{public}s", v19, 0xCu);
      sub_100006128(v20, v32, v33, v34, v35, v36, v37, v38);
    }

    v39 = [a5 versionNumber];
    sub_1000561D0();
    v40 = swift_allocError();
    *v41 = v39;
    *(v41 + 8) = 0;
    *(v41 + 16) = 1;
    (a3)(0, v40);
  }
}

void sub_10015215C(uint64_t *a1, void *a2, uint64_t *a3)
{
  v96 = a1;
  v4 = *a1;
  v102 = a2;
  if ((*a1 & 0xC000000000000001) != 0)
  {

    sub_100216E84();
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    sub_1001A9AB8(&qword_100297E88, &qword_100297D68, TPPolicyVersion_ptr);
    v5 = v102;
    sub_100216C04();
    v4 = v123[1];
    v9 = v123[2];
    v10 = v123[3];
    v11 = v123[4];
    v12 = v123[5];
  }

  else
  {
    v5 = a2;
    v13 = -1 << *(v4 + 32);
    v9 = (v4 + 56);
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = (v15 & *(v4 + 56));

    v11 = 0;
  }

  v108 = 0;
  v111 = v4;
  v99 = v10;
  v16 = (v10 + 64) >> 6;
  v105 = a3;
  while (1)
  {
    v18 = v11;
    if (v4 < 0)
    {
      break;
    }

    v19 = v11;
    v20 = v12;
    if (!v12)
    {
      while (1)
      {
        v11 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v11 >= v16)
        {
          v12 = 0;
          goto LABEL_51;
        }

        v20 = *&v9[8 * v11];
        ++v19;
        if (v20)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
    }

LABEL_15:
    v114 = ((v20 - 1) & v20);
    v21 = *(*(v4 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v21)
    {
      goto LABEL_51;
    }

LABEL_19:
    v23 = [v21 versionNumber];
    v24 = *(v5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
    v123[0] = 0;
    v25 = [v24 policyWithVersion:v23 error:v123];
    v26 = v25;
    if (v123[0])
    {
      v17 = v123[0];

      swift_willThrow();
      v108 = 0;
      goto LABEL_9;
    }

    if (v25)
    {
      if (qword_100297228 != -1)
      {
        swift_once();
      }

      [qword_1002B0318 versionNumber];
      v27 = [v26 version];
      v28 = [v27 policyHash];

      v29 = sub_100216974();
      v31 = v30;

      v32 = [v21 policyHash];
      v33 = sub_100216974();
      v35 = v34;

      if (v29 == v33 && v31 == v35)
      {
        v31, v36, v37, v38, v39, v40, v41, v42, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123[0];
        v35, v60, v61, v62, v63, v64, v65, v66, v98, v101, v104, v107, v110, v113, v116, v119, v122, v123[0];
        v59 = v105;
      }

      else
      {
        v44 = sub_1002171A4();
        v31, v45, v46, v47, v48, v49, v50, v51, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123[0];
        v35, v52, v53, v54, v55, v56, v57, v58, v97, v100, v103, v106, v109, v112, v115, v118, v121, v123[0];
        v59 = v105;
        if ((v44 & 1) == 0)
        {

LABEL_49:
          v5 = v102;
          v4 = v111;
          goto LABEL_9;
        }
      }

      v67 = [v26 version];
      v68 = *v59;
      if ((*v59 & 0xC000000000000001) != 0)
      {
        if (v68 < 0)
        {
          v69 = *v59;
        }

        else
        {
          v69 = v68 & 0xFFFFFFFFFFFFFF8;
        }

        v70 = v26;
        v71 = sub_1002170B4();
        if (__OFADD__(v71, 1))
        {
          goto LABEL_55;
        }

        *v59 = sub_1001831B8(v69, v71 + 1);
      }

      else
      {
        v72 = v26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v123[0] = *v59;
      v74 = v123[0];
      *v59 = 0x8000000000000000;
      v82 = sub_100015AE4(v67);
      v83 = v74[2];
      v84 = (v75 & 1) == 0;
      v85 = v83 + v84;
      if (__OFADD__(v83, v84))
      {
        goto LABEL_54;
      }

      v86 = v75;
      if (v74[3] >= v85)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v88 = v123[0];
          if ((v75 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
          sub_1001870B8();
          v88 = v123[0];
          if ((v86 & 1) == 0)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        sub_100184588(v85, isUniquelyReferenced_nonNull_native);
        v87 = sub_100015AE4(v67);
        if ((v86 & 1) != (v75 & 1))
        {
          sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
          sub_1002171C4();
          __break(1u);
          return;
        }

        v82 = v87;
        v88 = v123[0];
        if ((v86 & 1) == 0)
        {
LABEL_46:
          v88[(v82 >> 6) + 8] |= 1 << v82;
          *(v88[6] + 8 * v82) = v67;
          *(v88[7] + 8 * v82) = v26;
          v91 = v88[2];
          v92 = __OFADD__(v91, 1);
          v93 = v91 + 1;
          if (v92)
          {
            goto LABEL_56;
          }

          v88[2] = v93;
          goto LABEL_48;
        }
      }

      v89 = v88[7];
      v90 = *(v89 + 8 * v82);
      *(v89 + 8 * v82) = v26;

LABEL_48:
      v94 = *v105;
      *v105 = v88;
      v94, v75, v76, v77, v78, v79, v80, v81, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123[0];
      v95 = sub_10018DFAC(v21);

      v21 = v95;
      goto LABEL_49;
    }

LABEL_9:

    v12 = v114;
  }

  v22 = sub_100216F14();
  if (v22)
  {
    v117 = v22;
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    swift_dynamicCast();
    v21 = v123[0];
    v114 = v12;
    v4 = v111;
    if (!v123[0])
    {
      goto LABEL_51;
    }

    goto LABEL_19;
  }

  v4 = v111;
LABEL_51:
  sub_10000D778(v4, v9, v99, v18, v12, v6, v7, v8);
}

void sub_1001527C0(uint64_t a1, char *a2, void (*a3)(void, uint64_t), void *a4, uint64_t a5, uint64_t a6)
{
  v87 = a3;
  v88 = a4;
  v86 = a2;
  PolicyDocumentsResponse = type metadata accessor for FetchPolicyDocumentsResponse(0);
  v85 = *(PolicyDocumentsResponse - 8);
  v10 = v85[8];
  v12 = __chkstk_darwin(PolicyDocumentsResponse - 8, v11);
  v13 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v16 = &v82 - v15;
  v17 = sub_10001148C(&qword_1002984A0, &qword_10021DF10);
  __chkstk_darwin(v17, v18);
  v20 = (&v82 - v19);
  sub_100019C6C(a1, &v82 - v19, &qword_1002984A0, &qword_10021DF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v87;
    v22 = *v20;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v23 = sub_100216774();
    sub_100002648(v23, qword_10029D160);
    swift_errorRetain();
    v24 = sub_100216754();
    v25 = sub_100216C74();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock = v27;
      *v26 = 136446210;
      v95 = v22;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v28 = sub_100216994();
      v30 = v29;
      v31 = sub_100005FB0(v28, v29, &aBlock);
      v30, v32, v33, v34, v35, v36, v37, v38, v82, v83, v84, v85, v86, v87, v88, aBlock, v90, v91;
      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "FetchPolicyDocuments failed: %{public}s", v26, 0xCu);
      sub_100006128(v27, v39, v40, v41, v42, v43, v44, v45);
    }

    swift_errorRetain();
    v21(0, v22);
  }

  else
  {
    v82 = (a5 + 16);
    v83 = (a6 + 16);
    sub_1001AC038(v20, v16, type metadata accessor for FetchPolicyDocumentsResponse);
    v46 = v86;
    v84 = *&v86[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    sub_1001AC0A0(v16, v13, type metadata accessor for FetchPolicyDocumentsResponse);
    v47 = (*(v85 + 80) + 16) & ~*(v85 + 80);
    v48 = (v10 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
    v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
    v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    sub_1001AC038(v13, &v52->_TtCs12_SwiftObject_opaque[v47], type metadata accessor for FetchPolicyDocumentsResponse);
    v53 = &v52->_TtCs12_SwiftObject_opaque[v48];
    v54 = v88;
    *v53 = v87;
    *(v53 + 1) = v54;
    v55 = v83;
    *&v52->_TtCs12_SwiftObject_opaque[v49] = v82;
    *&v52->_TtCs12_SwiftObject_opaque[v50] = v55;
    v56 = v46;
    *&v52->_TtCs12_SwiftObject_opaque[v51] = v46;
    v57 = swift_allocObject();
    *v57->endpoint = sub_1001A9A04;
    *v57->containerMap = v52;
    v93 = sub_1001ACCC0;
    v94 = v57;
    aBlock = _NSConcreteStackBlock;
    v90 = 1107296256;
    v91 = sub_100109050;
    v92 = &unk_100282D60;
    v58 = _Block_copy(&aBlock);
    v59 = v94;

    v60 = v56;

    v59, v61, v62, v63, v64, v65, v66, v67;
    [v84 performBlockAndWait:v58];
    _Block_release(v58);
    sub_1001AC1E4(v16, type metadata accessor for FetchPolicyDocumentsResponse);
    LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();
    v52, v68, v69, v70, v71, v72, v73, v74;
    v57, v75, v76, v77, v78, v79, v80, v81;
    if (v58)
    {
      __break(1u);
    }
  }
}

void sub_100152CA8(uint64_t *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, _TtC18TrustedPeersHelper6Client **a4, uint64_t *a5, id a6)
{
  v271 = a5;
  v285 = a4;
  v10 = sub_10001148C(&unk_10029D820, &unk_10021E840);
  v12 = __chkstk_darwin(v10 - 8, v11);
  v14 = &v261 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v282 = &v261 - v16;
  v281 = type metadata accessor for PolicyDocumentKey(0);
  v17 = *(v281 - 8);
  v19 = __chkstk_darwin(v281, v18);
  v268 = (&v261 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v21);
  v279 = (&v261 - v22);
  v280 = type metadata accessor for PolicyDocumentMapEntry(0);
  v23 = *(v280 - 8);
  v25 = __chkstk_darwin(v280, v24);
  v27 = &v261 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v25, v28);
  v269 = &v261 - v30;
  __chkstk_darwin(v29, v31);
  v33 = (&v261 - v32);
  v34 = *a1;
  v35 = &off_10029D000;
  v270 = *(*a1 + 16);
  if (!v270)
  {
LABEL_42:
    v149 = *(v35[55] + a6);
    v289 = 0;
    v150 = [v149 save:&v289];
    v151 = v289;
    if (v150)
    {
      v152 = v285;
      swift_beginAccess();
      v153 = *v152;

      v154 = v151;
      v155 = sub_100108F0C(v153);
      v153, v156, v157, v158, v159, v160, v161, v162, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270;
      if (v155)
      {
        v163 = [v155 versionNumber];
        sub_1000561D0();
        v164 = swift_allocError();
        *v165 = v163;
        *(v165 + 8) = 0;
        *(v165 + 16) = 1;
        a2(0, v164);
      }

      else
      {
        v187 = v271;
        swift_beginAccess();
        v188 = *v187;

        a2(v189, 0);
        v188, v190, v191, v192, v193, v194, v195, v196, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270;
      }
    }

    else
    {
      v185 = v289;
      v186 = sub_100216154();

      swift_willThrow();
      swift_errorRetain();
      a2(0, v186);
    }

    return;
  }

  v283 = v34;
  v275 = objc_opt_self();
  v263 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc;
  v262 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v274 = v283 + ((v23[80] + 32) & ~v23[80]);
  swift_beginAccess();
  v36 = v283;
  v37 = 0;
  v38 = (v17 + 48);
  v39 = &selRef_signingKey;
  v273 = a3;
  v276 = a2;
  v272 = v33;
  v267 = v27;
  v261 = v14;
  v265 = a6;
  v266 = (v17 + 48);
  v264 = v23;
  while (1)
  {
    if (v37 >= *(v36 + 16))
    {
      __break(1u);
      goto LABEL_71;
    }

    v40 = a2;
    v41 = *(v23 + 9);
    v284 = v37;
    sub_1001AC0A0(v274 + v41 * v37, v33, type metadata accessor for PolicyDocumentMapEntry);
    v42 = v282;
    sub_100019C6C(v33 + *(v280 + 24), v282, &unk_10029D820, &unk_10021E840);
    v43 = *v38;
    v44 = v281;
    if ((*v38)(v42, 1, v281) == 1)
    {
      v45 = v279;
      *v279 = 0;
      v45[1] = 0;
      v45[2] = 0xE000000000000000;
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      if (v43(v42, 1, v44) != 1)
      {
        sub_1000114D4(v282, &unk_10029D820, &unk_10021E840);
      }
    }

    else
    {
      v45 = v279;
      sub_1001AC038(v42, v279, type metadata accessor for PolicyDocumentKey);
    }

    v46 = v45[2];

    sub_1001AC1E4(v45, type metadata accessor for PolicyDocumentKey);
    v47 = sub_100216964();
    v46, v48, v49, v50, v51, v52, v53, v54, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270;
    isa = sub_100216204().super.isa;
    v56 = [v275 policyDocWithHash:v47 data:isa];

    v286 = v56;
    if (!v56)
    {
      break;
    }

    v57 = *v285;
    v278 = v57;
    if ((v57 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      v47 = sub_100216E84();
      sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
      sub_1001A9AB8(&qword_100297E88, &qword_100297D68, TPPolicyVersion_ptr);
      sub_100216C04();
      v62 = v290;
      v61 = v291;
      v63 = v292;
      v64 = v293;
      v65 = v294;
    }

    else
    {
      v66 = -1 << *(v57 + 32);
      v61 = (v57 + 56);
      v63 = ~v66;
      v67 = -v66;
      if (v67 < 64)
      {
        v68 = ~(-1 << v67);
      }

      else
      {
        v68 = -1;
      }

      v65 = (v68 & *(v57 + 56));
      v62 = v57;
      swift_bridgeObjectRetain_n();
      v64 = 0;
    }

    ++v284;
    v277 = v63;
    v69 = (v63 + 64) >> 6;
    if (v62 < 0)
    {
LABEL_16:
      v70 = sub_100216F14();
      if (v70)
      {
        v288 = v70;
        sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
        swift_dynamicCast();
        v71 = v289;
        v72 = v64;
        v56 = v65;
        if (v289)
        {
          goto LABEL_24;
        }
      }

LABEL_46:
      sub_10000D778(v62, v61, v277, v64, v65, v58, v59, v60);
      v278, v166, v167, v168, v169, v170, v171, v172, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270;
      if (qword_100297520 == -1)
      {
LABEL_47:
        v173 = sub_100216774();
        sub_100002648(v173, qword_10029D160);
        v174 = v286;
        v175 = sub_100216754();
        v176 = sub_100216C54();
        v177 = os_log_type_enabled(v175, v176);
        v178 = v276;
        if (v177)
        {
          v179 = swift_slowAlloc();
          *v179 = 134217984;
          v180 = [v174 v39[36]];
          v181 = [v180 versionNumber];

          *(v179 + 4) = v181;
          _os_log_impl(&_mh_execute_header, v175, v176, "Received a policy version we didn't request: %llu", v179, 0xCu);
        }

        else
        {

          v175 = v174;
        }

        sub_1000561D0();
        v182 = swift_allocError();
        *v183 = xmmword_1002260A0;
        *(v183 + 16) = 13;
        v178(0, v182);

LABEL_51:

        v184 = v272;
        goto LABEL_52;
      }

LABEL_71:
      swift_once();
      goto LABEL_47;
    }

    while (1)
    {
      v73 = v64;
      v74 = v65;
      v72 = v64;
      if (!v65)
      {
        while (1)
        {
          v72 = (v73 + 1);
          if (__OFADD__(v73, 1))
          {
            break;
          }

          if (v72 >= v69)
          {
            v65 = 0;
            goto LABEL_46;
          }

          v74 = *&v61[8 * v72];
          ++v73;
          if (v74)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_62;
      }

LABEL_23:
      v56 = ((v74 - 1) & v74);
      v71 = *(*(v62 + 48) + ((v72 << 9) | (8 * __clz(__rbit64(v74)))));
      if (!v71)
      {
        goto LABEL_46;
      }

LABEL_24:
      v75 = v65;
      v76 = v71;
      v287 = [v71 versionNumber];
      v77 = [v286 v39[36]];
      v47 = [v77 versionNumber];

      if (v287 == v47)
      {
        break;
      }

      v64 = v72;
      v65 = v56;
      v39 = &selRef_signingKey;
      if (v62 < 0)
      {
        goto LABEL_16;
      }
    }

    sub_10000D778(v62, v61, v277, v64, v75, v78, v79, v80);
    v278, v81, v82, v83, v84, v85, v86, v87, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270;
    v287 = v76;
    v88 = [v76 policyHash];
    v89 = sub_100216974();
    v91 = v90;

    v39 = &selRef_signingKey;
    v92 = [v286 version];
    v43 = [v92 policyHash];

    v93 = sub_100216974();
    v95 = v94;

    if (v89 == v93 && v91 == v95)
    {
      v91, v96, v97, v98, v99, v100, v101, v102, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270;
      v95, v103, v104, v105, v106, v107, v108, v109, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270;
      v27 = v267;
      v33 = v271;
      a6 = v265;
      v23 = v264;
      goto LABEL_31;
    }

    v110 = sub_1002171A4();
    v91, v111, v112, v113, v114, v115, v116, v117, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270;
    v95, v118, v119, v120, v121, v122, v123, v124, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270;
    v125 = v276;
    v27 = v267;
    v33 = v271;
    a6 = v265;
    v23 = v264;
    if ((v110 & 1) == 0)
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v228 = sub_100216774();
      sub_100002648(v228, qword_10029D160);
      v229 = v286;
      v230 = v287;
      v231 = sub_100216754();
      v232 = sub_100216C54();

      if (os_log_type_enabled(v231, v232))
      {
        v233 = swift_slowAlloc();
        v287 = swift_slowAlloc();
        v289 = v287;
        *v233 = 136446466;
        v234 = [v230 policyHash];
        v235 = sub_100216974();
        v237 = v236;

        v238 = sub_100005FB0(v235, v237, &v289);
        v237, v239, v240, v241, v242, v243, v244, v245, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270;
        *(v233 + 4) = v238;
        *(v233 + 12) = 2082;
        v246 = [v229 version];
        v247 = [v246 policyHash];

        v248 = sub_100216974();
        v250 = v249;

        v251 = sub_100005FB0(v248, v250, &v289);
        v250, v252, v253, v254, v255, v256, v257, v258, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270;
        *(v233 + 14) = v251;
        _os_log_impl(&_mh_execute_header, v231, v232, "Requested hash %{public}s does not match fetched hash %{public}s", v233, 0x16u);
        swift_arrayDestroy();
      }

      sub_1000561D0();
      v259 = swift_allocError();
      *v260 = xmmword_1002260A0;
      *(v260 + 16) = 13;
      v125(0, v259);

      goto LABEL_51;
    }

LABEL_31:
    swift_beginAccess();
    v126 = sub_10018DFAC(v287);
    swift_endAccess();

    v62 = v286;
    v127 = [v286 version];
    swift_beginAccess();
    v128 = *v33;
    if ((*v33 & 0xC000000000000001) != 0)
    {
      if (v128 < 0)
      {
        v129 = *v33;
      }

      else
      {
        v129 = v128 & 0xFFFFFFFFFFFFFF8;
      }

      v130 = v62;
      v131 = sub_1002170B4();
      if (!__OFADD__(v131, 1))
      {
        *v33 = sub_1001831B8(v129, v131 + 1);
        goto LABEL_38;
      }

LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v132 = v62;
LABEL_38:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v288 = *v33;
    sub_100186118(v62, v127, isUniquelyReferenced_nonNull_native);
    *v33 = v288;

    swift_endAccess();
    type metadata accessor for PolicyMO();
    v134 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*&v263[a6]];
    v33 = [v62 version];
    v135 = [v33 versionNumber];

    if ((v135 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_73;
    }

    [v134 setVersion:v135];
    v136 = [v62 version];
    v137 = [v136 policyHash];

    if (!v137)
    {
      sub_100216974();
      v139 = v138;
      v137 = sub_100216964();
      v139, v140, v141, v142, v143, v144, v145, v146, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270;
    }

    [v134 setPolicyHash:v137];

    v33 = v272;
    v147 = sub_100216204().super.isa;
    [v134 setPolicyData:v147];

    v148 = *&v262[a6];
    [v148 addPoliciesObject:v134];

    sub_1001AC1E4(v33, type metadata accessor for PolicyDocumentMapEntry);
    v37 = v284;
    v38 = v266;
    v36 = v283;
    v35 = &off_10029D000;
    a2 = v276;
    if (v284 == v270)
    {
      goto LABEL_42;
    }
  }

  v62 = v40;
  if (qword_100297520 != -1)
  {
LABEL_74:
    swift_once();
  }

  v197 = sub_100216774();
  sub_100002648(v197, qword_10029D160);
  v56 = v269;
  sub_1001AC0A0(v33, v269, type metadata accessor for PolicyDocumentMapEntry);
  sub_1001AC0A0(v33, v27, type metadata accessor for PolicyDocumentMapEntry);
  v47 = sub_100216754();
  v198 = sub_100216C54();
  if (os_log_type_enabled(v47, v198))
  {
    LODWORD(v287) = v198;
    v69 = swift_slowAlloc();
    v289 = swift_slowAlloc();
    *v69 = 136446466;
    v39 = v261;
    sub_100019C6C(v56 + *(v280 + 24), v261, &unk_10029D820, &unk_10021E840);
    v199 = v281;
    if (v43(v39, 1, v281) == 1)
    {
      v200 = v56;
      v201 = v268;
      *v268 = 0;
      v201[1] = 0;
      v201[2] = 0xE000000000000000;
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      sub_1001AC1E4(v200, type metadata accessor for PolicyDocumentMapEntry);
      v202 = v43(v39, 1, v199);
      v203 = v201;
      if (v202 != 1)
      {
        sub_1000114D4(v39, &unk_10029D820, &unk_10021E840);
      }
    }

    else
    {
LABEL_62:
      sub_1001AC1E4(v56, type metadata accessor for PolicyDocumentMapEntry);
      v203 = v268;
      sub_1001AC038(v39, v268, type metadata accessor for PolicyDocumentKey);
    }

    v205 = *(v203 + 8);
    v204 = *(v203 + 16);

    sub_1001AC1E4(v203, type metadata accessor for PolicyDocumentKey);
    v206 = sub_100005FB0(v205, v204, &v289);
    v204, v207, v208, v209, v210, v211, v212, v213, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270;
    *(v69 + 4) = v206;
    *(v69 + 12) = 2082;
    v214 = v267;
    v215 = sub_100216214(0);
    v217 = v216;
    sub_1001AC1E4(v214, type metadata accessor for PolicyDocumentMapEntry);
    v218 = sub_100005FB0(v215, v217, &v289);
    v217, v219, v220, v221, v222, v223, v224, v225, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270;
    *(v69 + 14) = v218;
    _os_log_impl(&_mh_execute_header, v47, v287, "Can't make policy document with hash %{public}s and data %{public}s", v69, 0x16u);
    swift_arrayDestroy();

    v33 = v272;
  }

  else
  {

    sub_1001AC1E4(v56, type metadata accessor for PolicyDocumentMapEntry);
    sub_1001AC1E4(v27, type metadata accessor for PolicyDocumentMapEntry);
  }

  sub_1000561D0();
  v226 = swift_allocError();
  *v227 = xmmword_1002260A0;
  *(v227 + 16) = 13;
  (v62)(0, v226);

  v184 = v33;
LABEL_52:
  sub_1001AC1E4(v184, type metadata accessor for PolicyDocumentMapEntry);
}

uint64_t sub_1001540D0(uint64_t a1, void *a2, void (*a3)(void, char *), void *a4)
{
  v89 = a2;
  v90 = a4;
  RecoverableTLKShares = type metadata accessor for FetchRecoverableTLKSharesResponse.View(0);
  v7 = *(RecoverableTLKShares - 8);
  __chkstk_darwin(RecoverableTLKShares - 8, v8);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecoverableTLKSharesResponse = type metadata accessor for FetchRecoverableTLKSharesResponse(0);
  v13 = __chkstk_darwin(RecoverableTLKSharesResponse - 8, v12);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v18 = &v86 - v17;
  v19 = sub_10001148C(&qword_100298440, &qword_10021DEB0);
  __chkstk_darwin(v19, v20);
  v22 = (&v86 - v21);
  sub_100019C6C(a1, &v86 - v21, &qword_100298440, &qword_10021DEB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v22;
    if (qword_100297520 == -1)
    {
LABEL_3:
      v23 = sub_100216774();
      sub_100002648(v23, qword_10029D160);
      swift_errorRetain();
      v24 = sub_100216754();
      v25 = sub_100216C74();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v93 = v27;
        *v26 = 136446210;
        v91 = v15;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v28 = sub_100216994();
        v30 = v29;
        v31 = sub_100005FB0(v28, v29, &v93);
        v30, v32, v33, v34, v35, v36, v37, v38, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95;
        *(v26 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v24, v25, "fetchRecoverableTlkshares failed: %{public}s", v26, 0xCu);
        sub_100006128(v27, v39, v40, v41, v42, v43, v44, v45);
      }

      v46 = v89;
      v47 = sub_100216144();
      [v46 sendMetricWithResult:0 error:v47];

      swift_errorRetain();
      a3(0, v15);
    }

LABEL_26:
    swift_once();
    goto LABEL_3;
  }

  sub_1001AC038(v22, v18, type metadata accessor for FetchRecoverableTLKSharesResponse);
  v56 = *v18;
  v57 = *(*v18 + 16);
  if (v57)
  {
    v88 = a3;
    v93 = _swiftEmptyArrayStorage;
    sub_1001877E4(0, v57, 0, v51, v52, v53, v54, v55);
    v58 = v93;
    v59 = *(v7 + 80);
    v87 = v56;
    v60 = v56 + ((v59 + 32) & ~v59);
    v61 = *(v7 + 72);
    do
    {
      sub_1001AC0A0(v60, v10, type metadata accessor for FetchRecoverableTLKSharesResponse.View);
      a3 = *(*(v10 + 2) + 16);
      sub_1001AC1E4(v10, type metadata accessor for FetchRecoverableTLKSharesResponse.View);
      v93 = v58;
      v63 = *v58->endpoint;
      v62 = *v58->containerMap;
      v64 = v63 + 1;
      if (v63 >= v62 >> 1)
      {
        sub_1001877E4((v62 > 1), v63 + 1, 1, v51, v52, v53, v54, v55);
        v58 = v93;
      }

      *v58->endpoint = v64;
      *&v58[1]._TtCs12_SwiftObject_opaque[8 * v63] = a3;
      v60 += v61;
      --v57;
    }

    while (v57);
LABEL_14:
    v65 = 0;
    v66 = 32;
    while (1)
    {
      v67 = *&v58->_TtCs12_SwiftObject_opaque[v66];
      v68 = __OFADD__(v65, v67);
      v65 += v67;
      if (v68)
      {
        break;
      }

      v66 += 8;
      if (!--v64)
      {
        v56 = v87;
        a3 = v88;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v58 = _swiftEmptyArrayStorage;
  v64 = _swiftEmptyArrayStorage[2];
  if (v64)
  {
    v87 = *v18;
    v88 = a3;
    goto LABEL_14;
  }

  v65 = 0;
LABEL_18:
  v58, v49, v50, v51, v52, v53, v54, v55, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v69 = sub_100216774();
  sub_100002648(v69, qword_10029D160);
  sub_1001AC0A0(v18, v15, type metadata accessor for FetchRecoverableTLKSharesResponse);
  v70 = sub_100216754();
  v71 = sub_100216C54();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 134218240;
    v73 = v56;
    v74 = a3;
    v75 = *(*v15 + 16);
    sub_1001AC1E4(v15, type metadata accessor for FetchRecoverableTLKSharesResponse);
    *(v72 + 4) = v75;
    a3 = v74;
    v56 = v73;
    *(v72 + 12) = 2048;
    *(v72 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v70, v71, "fetchRecoverableTlkshares succeeded: found %ld views and %ld total TLKShares", v72, 0x16u);
  }

  else
  {
    sub_1001AC1E4(v15, type metadata accessor for FetchRecoverableTLKSharesResponse);
  }

  v76 = v89;

  sub_1001266F4(v56);
  v78 = v77;
  [v76 sendMetricWithResult:1 error:0];
  a3(v78, 0);
  v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95;
  return sub_1001AC1E4(v18, type metadata accessor for FetchRecoverableTLKSharesResponse);
}

void sub_100154700(void *a1, unint64_t a2, int a3)
{
  HIDWORD(v147) = a3;
  v6 = [a1 permanentInfo];
  v7 = [v6 peerID];

  v8 = v7;
  if (!v7)
  {
    sub_100216974();
    v10 = v9;
    v8 = sub_100216964();
    v10, v11, v12, v13, v14, v15, v16, v17, v144, v147, v148, v149, v151, v154, v156, v157, v158, v159;
  }

  v150 = sub_100216974();
  v155 = v18;
  type metadata accessor for PeerMO();
  v145 = v3;
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc)];
  [v19 setPeerID:v8];

  v20 = [a1 permanentInfo];
  v21 = [v20 data];

  v22 = sub_100216224();
  v24 = v23;

  isa = sub_100216204().super.isa;
  sub_100002BF0(v22, v24, v26, v27, v28, v29, v30, v31);
  [v19 setPermanentInfo:isa];

  v32 = [a1 permanentInfo];
  v33 = [v32 sig];

  v34 = sub_100216224();
  v36 = v35;

  v37 = sub_100216204().super.isa;
  sub_100002BF0(v34, v36, v38, v39, v40, v41, v42, v43);
  [v19 setPermanentInfoSig:v37];

  v44 = a1;
  v45 = [a1 stableInfo];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 data];

    v48 = sub_100216224();
    v50 = v49;

    v44 = a1;
    v51.super.isa = sub_100216204().super.isa;
    sub_100002BF0(v48, v50, v52, v53, v54, v55, v56, v57);
  }

  else
  {
    v51.super.isa = 0;
  }

  [v19 setStableInfo:{v51.super.isa, v145}];

  v58 = [v44 stableInfo];
  if (v58)
  {
    v59 = v58;
    v60 = [v58 sig];

    v61 = sub_100216224();
    v63 = v62;

    v64.super.isa = sub_100216204().super.isa;
    v65 = v63;
    v44 = a1;
    sub_100002BF0(v61, v65, v66, v67, v68, v69, v70, v71);
  }

  else
  {
    v64.super.isa = 0;
  }

  [v19 setStableInfoSig:v64.super.isa];

  v72 = [v44 dynamicInfo];
  if (v72)
  {
    v73 = v72;
    v74 = [v72 data];

    v75 = sub_100216224();
    v77 = v76;

    v78.super.isa = sub_100216204().super.isa;
    v79 = v77;
    v44 = a1;
    sub_100002BF0(v75, v79, v80, v81, v82, v83, v84, v85);
  }

  else
  {
    v78.super.isa = 0;
  }

  v86 = v146;
  [v19 setDynamicInfo:v78.super.isa];

  v87 = [v44 dynamicInfo];
  if (v87)
  {
    v88 = v87;
    v89 = [v87 sig];

    v90 = sub_100216224();
    v92 = v91;

    v93.super.isa = sub_100216204().super.isa;
    v94 = v92;
    v44 = a1;
    sub_100002BF0(v90, v94, v95, v96, v97, v98, v99, v100);
  }

  else
  {
    v93.super.isa = 0;
  }

  [v19 setDynamicInfoSig:v93.super.isa];

  [v19 setIsEgoPeer:BYTE4(v147) & 1];
  v101 = *&v146[OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter];

  v102 = sub_10010F154();
  v104 = v103;
  v101, v103, v105, v106, v107, v108, v109, v110;
  if (v104 >> 60 == 15)
  {
    [v19 setHmacSig:0];
  }

  else
  {
    v111 = sub_100216204().super.isa;
    v112 = [v44 calculateHmacWithHmacKey:v111];

    v113 = sub_100216224();
    v115 = v114;

    v116 = sub_100216204().super.isa;
    sub_100002BF0(v113, v115, v117, v118, v119, v120, v121, v122);
    [v19 setHmacSig:v116];

    sub_10004CD18(v102, v104, v123, v124, v125, v126, v127, v128);
  }

  [*&v146[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] addPeersObject:v19];
  v152 = v19;
  if (a2)
  {
    v136 = (a2 & 0xFFFFFFFFFFFFFF8);
    if (a2 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1002170F4())
    {
      v138 = v86;
      v139 = 0;
      v140 = a2 & 0xC000000000000001;
      v141 = v136;
      while (1)
      {
        if (v140)
        {
          v86 = a2;
          v142 = sub_100217014();
        }

        else
        {
          if (v139 >= v136[2])
          {
            goto LABEL_32;
          }

          v86 = a2;
          v142 = *(a2 + 8 * v139 + 32);
        }

        v136 = v142;
        a2 = v139 + 1;
        if (__OFADD__(v139, 1))
        {
          break;
        }

        v157 = v142;
        sub_100154D30(&v157, v152, v138, v150, v155);

        ++v139;
        v143 = a2 == i;
        a2 = v86;
        v136 = v141;
        if (v143)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }
  }

LABEL_30:
  v155, v129, v130, v131, v132, v133, v134, v135, v146, v147, v148, v150, v152, v155, v156, v157, v158, v159;
}

void sub_100154D30(void **a1, id a2, uint64_t a3, void *a4, void *a5)
{
  v5 = a3;
  v6 = *a1;
  v7 = [a2 vouchers];
  if (v7)
  {
    v15 = v7;
    v169 = 0;
    type metadata accessor for VoucherMO();
    sub_1001A13C4(&qword_10029DA08, type metadata accessor for VoucherMO, &protocol conformance descriptor for NSObject);
    sub_100216BA4();
  }

  0, v8, v9, v10, v11, v12, v13, v14, a4, a5, a2, v141, v145, v149, v154, v159, v164, v169;
  v16 = &_swiftEmptySetSingleton;
  v150 = v5;
  v155 = v6;
  if ((&_swiftEmptySetSingleton & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_100216E84();
    type metadata accessor for VoucherMO();
    sub_1001A13C4(&qword_10029DA08, type metadata accessor for VoucherMO, &protocol conformance descriptor for NSObject);
    sub_100216C04();
    v16 = v170;
    v20 = v174;
    v21 = v175;
    v22 = v176;
    v23 = v177;
  }

  else
  {
    v24 = -1 << *(&_swiftEmptySetSingleton + 32);
    v20 = &_swiftEmptySetSingleton + 56;
    v21 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v23 = (v26 & *(&_swiftEmptySetSingleton + 7));

    v22 = 0;
  }

  if (v16 < 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v27 = v22;
  v28 = v23;
  v29 = v22;
  if (v23)
  {
LABEL_14:
    v30 = (v28 - 1) & v28;
    v31 = *(*(v16 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
    if (v31)
    {
      while (1)
      {
        v178 = v31;
        v33 = sub_100179798(&v178, v155);

        if (v33)
        {
          break;
        }

        v22 = v29;
        v23 = v30;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_10;
        }

LABEL_16:
        v32 = sub_100216F14();
        if (v32)
        {
          v165 = v32;
          type metadata accessor for VoucherMO();
          swift_dynamicCast();
          v31 = v178;
          v29 = v22;
          v30 = v23;
          if (v178)
          {
            continue;
          }
        }

        goto LABEL_22;
      }

      sub_10000D778(v16, v20, v21, v22, v23, v17, v18, v19);
      &_swiftEmptySetSingleton, v117, v118, v119, v120, v121, v122, v123, v125, v131, v137, v21, &_swiftEmptySetSingleton, v150, v155, v160, v165, v170;
      v41 = v151;
      v43 = v156;
    }

    else
    {
LABEL_22:
      sub_10000D778(v16, v20, v21, v22, v23, v17, v18, v19);
      &_swiftEmptySetSingleton, v34, v35, v36, v37, v38, v39, v40, v125, v131, v137, v21, &_swiftEmptySetSingleton, v150, v155, v160, v165, v170;
      type metadata accessor for VoucherMO();
      v41 = v151;
      v42 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v151 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc)];
      v43 = v156;
      v44 = [v156 data];
      v45 = sub_100216224();
      v47 = v46;

      isa = sub_100216204().super.isa;
      sub_100002BF0(v45, v47, v49, v50, v51, v52, v53, v54);
      [v42 setVoucherInfo:isa];

      v55 = [v156 sig];
      v56 = sub_100216224();
      v58 = v57;

      v59 = sub_100216204().super.isa;
      sub_100002BF0(v56, v58, v60, v61, v62, v63, v64, v65);
      [v42 setVoucherInfoSig:v59];

      [v138 addVouchersObject:v42];
    }

    v66 = [v43 sponsorID];
    v67 = sub_100216974();
    v69 = v68;

    v70 = [*(v41 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
    if (!v70)
    {
      v69, v71, v72, v73, v74, v75, v76, v77, v126, v132, v138, v142, v146, v151, v156, v161, v166, v171;
      return;
    }

    v78 = v70;
    v79 = sub_100216974();
    v81 = v80;

    if (v67 == v79 && v69 == v81)
    {
      v69, v82, v83, v84, v85, v86, v87, v88, v126, v132, v138, v142, v146, v151, v156, v161, v166, v171;
      v81, v89, v90, v91, v92, v93, v94, v95, v127, v133, v139, v143, v147, v152, v157, v162, v167, v172;
    }

    else
    {
      v102 = sub_1002171A4();
      v69, v103, v104, v105, v106, v107, v108, v109, v126, v132, v138, v142, v146, v151, v156, v161, v166, v171;
      v81, v110, v111, v112, v113, v114, v115, v116, v129, v135, v140, v144, v148, v153, v158, v163, v168, v173;
      if ((v102 & 1) == 0)
      {
        return;
      }
    }

    sub_1001820D4(v128, v134, v96, v97, v98, v99, v100, v101, v128, v134);
  }

  else
  {
    while (1)
    {
      v29 = (v27 + 1);
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= ((v21 + 64) >> 6))
      {
        v23 = 0;
        goto LABEL_22;
      }

      v28 = *&v20[8 * v29];
      ++v27;
      if (v28)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

void sub_1001551F8(unint64_t a1, unint64_t a2, _TtC18TrustedPeersHelper6Client *a3, void *a4, void *a5)
{
  v95 = a4;
  v99 = a3;
  v100 = a5;
  v94 = a2;
  v7 = type metadata accessor for TLKShare(0);
  v97 = *(v7 - 1);
  v98 = v7;
  v9 = __chkstk_darwin(v7, v8);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v91 - v13;
  v15 = type metadata accessor for ViewKeys(0);
  v102 = *(v15 - 8);
  v103 = v15;
  __chkstk_darwin(v15, v16);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = _swiftEmptyArrayStorage;
  v92 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_78;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1002170F4())
  {
    v93 = v11;
    v91 = v14;
    v104 = a1;
    if (i)
    {
      v11 = 0;
      v20 = a1 & 0xC000000000000001;
      v14 = a1 & 0xFFFFFFFFFFFFFF8;
      v101 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v20)
        {
          v21 = sub_100217014();
        }

        else
        {
          if (v11 >= *(v14 + 16))
          {
            goto LABEL_75;
          }

          v21 = *(a1 + 8 * v11 + 32);
        }

        v5 = v21;
        v22 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if ([v21 newUpload])
        {
          sub_100217044();
          sub_100217074();
          v14 = v101;
          sub_100217084();
          sub_100217054();
          a1 = v104;
        }

        else
        {
        }

        ++v11;
        if (v22 == i)
        {
          v23 = v107;
          v11 = v93;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v23 = _swiftEmptyArrayStorage;
LABEL_16:
    v24 = (v23 >> 62) & 1;
    if (v23 < 0)
    {
      LODWORD(v24) = 1;
    }

    LODWORD(v101) = v24;
    if (v24 == 1)
    {
      v25 = sub_1002170F4();
    }

    else
    {
      v25 = *(v23 + 16);
    }

    v26 = _swiftEmptyArrayStorage;
    if (v25)
    {
      v107 = _swiftEmptyArrayStorage;
      sub_100187848(0, v25 & ~(v25 >> 63), 0);
      if (v25 < 0)
      {
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v27 = 0;
      v26 = v107;
      do
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v28 = sub_100217014();
        }

        else
        {
          v28 = *(v23 + 8 * v27 + 32);
        }

        v30 = v28;
        *(&v91 - 2) = __chkstk_darwin(v28, v29);
        sub_1001A13C4(&unk_10029D910, type metadata accessor for ViewKeys, &protocol conformance descriptor for ViewKeys);
        v31 = v105;
        sub_100216654();
        v105 = v31;

        v107 = v26;
        v33 = *v26->endpoint;
        v32 = *v26->containerMap;
        v5 = (v33 + 1);
        if (v33 >= v32 >> 1)
        {
          sub_100187848((v32 > 1), v33 + 1, 1);
          v26 = v107;
        }

        ++v27;
        *v26->endpoint = v5;
        sub_1001AC038(v18, &v26->_TtCs12_SwiftObject_opaque[((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v33], type metadata accessor for ViewKeys);
      }

      while (v25 != v27);
      v11 = v93;
      a1 = v104;
    }

    v34 = v92 ? sub_1002170F4() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = _swiftEmptyArrayStorage;
    if (v34)
    {
      v107 = _swiftEmptyArrayStorage;
      sub_100217064();
      if (v34 < 0)
      {
        goto LABEL_81;
      }

      v36 = v23;
      v37 = 0;
      v38 = v104;
      v39 = v104 & 0xC000000000000001;
      do
      {
        if (v39)
        {
          v40 = sub_100217014();
        }

        else
        {
          v40 = *(v38 + 8 * v37 + 32);
        }

        v41 = v40;
        ++v37;
        v42 = [v40 tlk];

        sub_100217044();
        v25 = *v107->endpoint;
        sub_100217074();
        sub_100217084();
        sub_100217054();
        v38 = v104;
      }

      while (v34 != v37);
      v35 = v107;
      v43 = v99;
      v44 = v100;
      v23 = v36;
      v11 = v93;
    }

    else
    {
      v43 = v99;
      v44 = v100;
    }

    v45 = v105;
    v46 = sub_10010C3CC(v35, v43, v43, v44);
    v5 = v45;
    if (v45)
    {
      v23, v47, v48, v49, v50, v51, v52, v53;
      v26, v54, v55, v56, v57, v58, v59, v60, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100;
      v35, v61, v62, v63, v64, v65, v66, v67, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100;
      return;
    }

    v104 = v46;
    v35, v47, v48, v49, v50, v51, v52, v53, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100;
    if (!(v94 >> 62))
    {
      v14 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_46;
    }

LABEL_82:
    v14 = sub_1002170F4();
LABEL_46:
    if (v14)
    {
      v107 = _swiftEmptyArrayStorage;
      sub_100187804(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        __break(1u);
LABEL_84:
        objc_autoreleasePoolPop(v25);
        __break(1u);
        return;
      }

      v103 = v23;
      v75 = v107;
      if ((v94 & 0xC000000000000001) != 0)
      {
        v76 = 0;
        v77 = v91;
        do
        {
          v78 = sub_100217014();
          *(&v91 - 2) = __chkstk_darwin(v78, v79);
          sub_1001A13C4(&qword_1002987A8, type metadata accessor for TLKShare, &protocol conformance descriptor for TLKShare);
          sub_100216654();
          swift_unknownObjectRelease();
          v107 = v75;
          v11 = *v75->endpoint;
          v80 = *v75->containerMap;
          if (v11 >= v80 >> 1)
          {
            sub_100187804((v80 > 1), v11 + 1, 1);
            v75 = v107;
          }

          ++v76;
          *v75->endpoint = v11 + 1;
          sub_1001AC038(v77, &v75->_TtCs12_SwiftObject_opaque[((v97[80] + 32) & ~v97[80]) + *(v97 + 9) * v11], type metadata accessor for TLKShare);
          v68 = v94;
        }

        while (v14 != v76);
      }

      else
      {
        v81 = (v94 + 32);
        v82 = sub_1001A13C4(&qword_1002987A8, type metadata accessor for TLKShare, &protocol conformance descriptor for TLKShare);
        v105 = v82;
        do
        {
          v83 = v11;
          __chkstk_darwin(v82, v68);
          *(&v91 - 2) = v84;
          v85 = v84;
          sub_100216654();

          v107 = v75;
          v87 = *v75->endpoint;
          v86 = *v75->containerMap;
          if (v87 >= v86 >> 1)
          {
            sub_100187804((v86 > 1), v87 + 1, 1);
            v75 = v107;
          }

          *v75->endpoint = v87 + 1;
          v82 = sub_1001AC038(v83, &v75->_TtCs12_SwiftObject_opaque[((v97[80] + 32) & ~v97[80]) + *(v97 + 9) * v87], type metadata accessor for TLKShare);
          v81 += 8;
          --v14;
          v11 = v83;
        }

        while (v14);
      }

      v23 = v103;
    }

    else
    {
      v75 = _swiftEmptyArrayStorage;
    }

    v107 = _swiftEmptyArrayStorage;
    if (v101)
    {
      v18 = sub_1002170F4();
      if (!v18)
      {
        break;
      }

      goto LABEL_62;
    }

    v18 = *(v23 + 16);
    if (!v18)
    {
      break;
    }

LABEL_62:
    a1 = 0;
    v105 = v23 & 0xC000000000000001;
    while (1)
    {
      if (v105)
      {
        v14 = v23;
        v88 = sub_100217014();
      }

      else
      {
        if (a1 >= *(v23 + 16))
        {
          goto LABEL_77;
        }

        v14 = v23;
        v88 = *(v23 + 8 * a1 + 32);
      }

      v89 = v88;
      v11 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v25 = objc_autoreleasePoolPush();
      sub_100155B4C(v96, v95, v89, v99, v100, &v107);
      if (v5)
      {
        goto LABEL_84;
      }

      v5 = 0;
      objc_autoreleasePoolPop(v25);

      ++a1;
      v23 = v14;
      if (v11 == v18)
      {
        v90 = v107;
        goto LABEL_73;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    ;
  }

  v90 = _swiftEmptyArrayStorage;
LABEL_73:
  v23, v68, v69, v70, v71, v72, v73, v74;
  v106 = v104;
  sub_10011028C(v90);
  sub_10011028C(v75);
}

void sub_100155B4C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v204 = a6;
  v213 = a4;
  v214 = a5;
  v10 = type metadata accessor for TLKShare(0);
  v211 = *(v10 - 8);
  v212 = v10;
  __chkstk_darwin(v10, v11);
  containerMap = &v202 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v208 = a1;
  v14 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v15 = [a3 tlk];
  v16 = [v15 zoneID];

  v17 = [v16 zoneName];
  if (!v17)
  {
    sub_100216974();
    v19 = v18;
    v17 = sub_100216964();
    v19, v20, v21, v22, v23, v24, v25, v26, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211;
  }

  v218 = 0;
  v27 = [v14 getPeerIDsTrustedByPeerWithDynamicInfo:a2 toAccessView:v17 error:&v218];

  v28 = v218;
  if (v27)
  {
    v216 = v6;
    v29 = sub_100216BB4();
    v30 = v28;

    if (qword_100297520 != -1)
    {
LABEL_46:
      swift_once();
    }

    v31 = sub_100216774();
    sub_100002648(v31, qword_10029D160);
    v32 = a3;

    v33 = sub_100216754();
    v34 = sub_100216C54();
    v29, v35, v36, v37, v38, v39, v40, v41, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211;

    v42 = os_log_type_enabled(v33, v34);
    v209 = containerMap;
    v210 = v32;
    v203 = a3;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v218 = swift_slowAlloc();
      *v43 = 136446466;
      v44 = [(Client *)v32 tlk];
      v45 = [v44 description];
      v46 = sub_100216974();
      v48 = v47;

      v49 = sub_100005FB0(v46, v48, &v218);
      v48, v50, v51, v52, v53, v54, v55, v56, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211;
      *(v43 + 4) = v49;
      *(v43 + 12) = 2082;
      v57 = sub_100216BC4();
      a3 = v58;
      v59 = sub_100005FB0(v57, v58, &v218);
      a3, v60, v61, v62, v63, v64, v65, v66, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211;
      *(v43 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v33, v34, "Planning to share %{public}s with peers %{public}s", v43, 0x16u);
      swift_arrayDestroy();
    }

    v218 = _swiftEmptyArrayStorage;
    containerMap = v29[1].containerMap;
    v67 = 1 << v29[1]._TtCs12_SwiftObject_opaque[0];
    v68 = -1;
    if (v67 < 64)
    {
      v68 = ~(-1 << v67);
    }

    v69 = v68 & *v29[1].containerMap;
    v70 = (v67 + 63) >> 6;

    v78 = 0;
    v215 = _swiftEmptyArrayStorage;
    while (v69)
    {
LABEL_15:
      v80 = *(*v29[1].endpoint + ((v78 << 10) | (16 * __clz(__rbit64(v69)))) + 8);
      v81 = *&v207[v208];

      v82 = v81;
      v83 = sub_100216964();
      v217 = 0;
      a3 = [v82 peerWithID:v83 error:&v217];

      if (v217)
      {
        v131 = v217;

        v29, v147, v148, v149, v150, v151, v152, v153;
        swift_willThrow();
        v29, v154, v155, v156, v157, v158, v159, v160, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211;
        v215, v161, v162, v163, v164, v165, v166, v167, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211;
        v80, v168, v169, v170, v171, v172, v173, v174, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211;
LABEL_37:
        a3 = v203;
        goto LABEL_38;
      }

      v69 &= v69 - 1;
      v80, v84, v85, v86, v87, v88, v89, v90, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211;
      if (a3)
      {
        sub_100216B04();
        if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v218 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100216B44();
        }

        sub_100216B64();
        v215 = v218;
      }
    }

    while (1)
    {
      v79 = v78 + 1;
      if (__OFADD__(v78, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (v79 >= v70)
      {
        break;
      }

      v69 = *&containerMap[8 * v79];
      ++v78;
      if (v69)
      {
        v78 = v79;
        goto LABEL_15;
      }
    }

    v29, v71, v72, v73, v74, v75, v76, v77;
    v29, v91, v92, v93, v94, v95, v96, v97, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211;
    v105 = v215;
    if (v215 >> 62)
    {
      v201 = v215;
      a3 = sub_1002170F4();
      v105 = v201;
      if (a3)
      {
        goto LABEL_22;
      }
    }

    else
    {
      a3 = *((v215 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a3)
      {
LABEL_22:
        v106 = v105;
        v218 = _swiftEmptyArrayStorage;
        sub_100187804(0, a3 & ~(a3 >> 63), 0);
        if (a3 < 0)
        {
          __break(1u);
        }

        v29 = v218;
        v107 = objc_opt_self();
        v108 = 0;
        v109 = v106;
        v207 = v107;
        v208 = v106 & 0xC000000000000001;
        v205 = (v106 & 0xFFFFFFFFFFFFFF8);
        v206 = a3;
        while (1)
        {
          v110 = (v108 + 1);
          if (__OFADD__(v108, 1))
          {
            goto LABEL_44;
          }

          if (v208)
          {
            v111 = sub_100217014();
          }

          else
          {
            if (v108 >= *(v205 + 2))
            {
              goto LABEL_45;
            }

            v111 = *&v109[1]._TtCs12_SwiftObject_opaque[8 * v108];
          }

          v112 = v111;
          v113 = [(Client *)v210 tlk];
          v114 = [v112 permanentInfo];
          v217 = 0;
          v115 = [v207 share:v113 as:v213 to:v114 epoch:v214 poisoned:0 error:&v217];
          if (!v115)
          {
            v132 = v217;
            v215, v133, v134, v135, v136, v137, v138, v139, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211;
            v131 = sub_100216154();

            swift_willThrow();
            v29, v140, v141, v142, v143, v144, v145, v146;

            goto LABEL_37;
          }

          v116 = v115;
          v117 = v217;

          __chkstk_darwin(v118, v119);
          *(&v202 - 2) = v116;
          sub_1001A13C4(&qword_1002987A8, type metadata accessor for TLKShare, &protocol conformance descriptor for TLKShare);
          v120 = v209;
          v121 = v216;
          sub_100216654();
          v216 = v121;

          v218 = v29;
          v123 = *v29->endpoint;
          v122 = *v29->containerMap;
          containerMap = (v123 + 1);
          if (v123 >= v122 >> 1)
          {
            sub_100187804((v122 > 1), v123 + 1, 1);
            v29 = v218;
          }

          *v29->endpoint = containerMap;
          sub_1001AC038(v120, &v29->_TtCs12_SwiftObject_opaque[((v211[80] + 32) & ~v211[80]) + *(v211 + 9) * v123], type metadata accessor for TLKShare);
          ++v108;
          a3 = v206;
          v109 = v215;
          if (v110 == v206)
          {
            v215, v215, v124, v125, v126, v127, v128, v129, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211;
            goto LABEL_49;
          }
        }
      }
    }

    v105, v98, v99, v100, v101, v102, v103, v104, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211;
    v29 = _swiftEmptyArrayStorage;
LABEL_49:
    sub_10011028C(v29);
  }

  else
  {
    v130 = v218;
    v131 = sub_100216154();

    swift_willThrow();
LABEL_38:
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v175 = sub_100216774();
    sub_100002648(v175, qword_10029D160);
    v176 = a3;
    swift_errorRetain();
    v177 = sub_100216754();
    v178 = sub_100216C74();

    if (os_log_type_enabled(v177, v178))
    {
      v179 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v217 = v131;
      v218 = v181;
      *v179 = 138543618;
      *(v179 + 4) = v176;
      *v180 = v176;
      *(v179 + 12) = 2082;
      v182 = v176;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v183 = sub_100216994();
      v185 = v184;
      v186 = sub_100005FB0(v183, v184, &v218);
      v185, v187, v188, v189, v190, v191, v192, v193, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211;
      *(v179 + 14) = v186;
      _os_log_impl(&_mh_execute_header, v177, v178, "Unable to create TLKShares for keyset %{public}@: %{public}s", v179, 0x16u);
      sub_1000114D4(v180, &qword_10029D580, &unk_10021CCC0);

      sub_100006128(v181, v194, v195, v196, v197, v198, v199, v200);
    }

    else
    {
    }
  }
}

__CFString *sub_100156564(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v117 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v17 = *(v10 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v121 = a2;
  v125 = a3;
  v18 = sub_100216964();
  if (a7)
  {
    v19 = sub_100216964();
  }

  else
  {
    v19 = 0;
  }

  v149 = a4;
  if (a8)
  {
    v20.super.isa = sub_100216B14().super.isa;
  }

  else
  {
    v20.super.isa = 0;
  }

  v133 = OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey;
  v21 = *&v145[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO];
  v22 = *(a10 + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey);
  v23 = [v21 machines];
  v141 = a5;
  if (v23)
  {
    v24 = v23;
    *&v154 = 0;
    type metadata accessor for MachineMO();
    sub_1001A13C4(&qword_10029D588, type metadata accessor for MachineMO, &protocol conformance descriptor for NSObject);
    sub_100216BA4();
  }

  sub_100108644(&_swiftEmptySetSingleton);
  v26 = v25;
  &_swiftEmptySetSingleton, v27, v28, v29, v30, v31, v32, v33, v117, v121, v125, a1, v133, a10, v138, v141, v145, v149;
  v34 = objc_allocWithZone(TPMachineIDList);
  sub_10000200C(0, &unk_10029D740, TPMachineID_ptr);
  isa = sub_100216B14().super.isa;
  v26, v36, v37, v38, v39, v40, v41, v42, v118, v122, v126, v130, v134, v136, v139, v142, v146, v150;
  v43 = [v34 initWithEntries:isa];

  *&v154 = 0;
  v44 = v143;
  v45 = [v17 dynamicInfoForJoiningPeerID:v18 peerPermanentInfo:v151 peerStableInfo:v143 sponsorID:v19 preapprovedKeys:v20.super.isa signingKeyPair:v22 currentMachineIDs:v43 error:&v154];

  if (!v45)
  {
    v49 = v154;
    sub_100216154();

    swift_willThrow();
    return v45;
  }

  v46 = v154;
  v47 = [v143 syncUserControllableViews];
  if (v47 == 2 || v47 == 1)
  {
    v154 = xmmword_1002260B0;
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0;
    v48 = v151;
    goto LABEL_43;
  }

  v50 = [v151 modelID];
  sub_100216974();
  v52 = v51;

  v163._countAndFlagsBits = 0x5654656C707041;
  v163._object = 0xE700000000000000;
  if (sub_100216A94(v163) || (v164._countAndFlagsBits = 0x6363416F69647541, v164._object = 0xEE0079726F737365, sub_100216A94(v164)))
  {
    v52, v53, v54, v55, v56, v57, v58, v59, v119, v123, v127, v131, v135, v137, v140, v143, v147, v151;
LABEL_17:
    v60 = 3;
    goto LABEL_18;
  }

  v165._countAndFlagsBits = 0x6863746157;
  v165._object = 0xE500000000000000;
  v67 = sub_100216A94(v165);
  v52, v68, v69, v70, v71, v72, v73, v74, v119, v123, v127, v131, v135, v137, v140, v143, v147, v151;
  if (v67)
  {
    goto LABEL_17;
  }

  v75 = *&v120[v148];
  v153 = 0;
  v76 = [v75 userViewSyncabilityConsensusAmongTrustedPeers:v45 error:&v153];
  v77 = v153;
  if (v153)
  {
    swift_willThrow();
    v78 = qword_100297520;
    v79 = v77;
    if (v78 != -1)
    {
      swift_once();
    }

    v80 = sub_100216774();
    sub_100002648(v80, qword_10029D160);
    v81 = v79;
    v82 = sub_100216754();
    v83 = sub_100216C74();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v84 = 138543362;
      v86 = v81;
      v87 = _swift_stdlib_bridgeErrorToNSError();
      *(v84 + 4) = v87;
      *v85 = v87;
      _os_log_impl(&_mh_execute_header, v82, v83, "error getting user view sync consensus: %{public}@", v84, 0xCu);
      sub_1000114D4(v85, &qword_10029D580, &unk_10021CCC0);
    }

    swift_willThrow();
LABEL_44:

    return v45;
  }

  v60 = v76;
  if (v76 == 2)
  {
    if ([*(v148 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_managedConfigurationAdapter) isCloudKeychainSyncAllowed])
    {
      v60 = 2;
    }

    else
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v113 = sub_100216774();
      sub_100002648(v113, qword_10029D160);
      v114 = sub_100216754();
      v115 = sub_100216C54();
      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        _os_log_impl(&_mh_execute_header, v114, v115, "user-controllable views disabled by profile", v116, 2u);
      }

      v60 = 1;
    }
  }

LABEL_18:
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v61 = sub_100216774();
  sub_100002648(v61, qword_10029D160);
  v62 = sub_100216754();
  v63 = sub_100216C54();
  if (!os_log_type_enabled(v62, v63))
  {

LABEL_42:
    LOBYTE(v153) = 1;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    *&v157 = 0;
    BYTE8(v157) = 1;
    *&v158 = 0;
    DWORD2(v158) = v60;
    BYTE12(v158) = 0;
    v160 = 0;
    v159 = 0uLL;
    v44 = v144;
    v48 = v152;
LABEL_43:
    v161[3] = v157;
    v161[4] = v158;
    v161[5] = v159;
    v161[0] = v154;
    v162 = v160;
    v161[1] = v155;
    v161[2] = v156;
    v109 = *&v135[v137];
    v110 = sub_100179B48(v161, v48, v44, v45, v109, a9);

    sub_1000114D4(&v154, &unk_10029D860, &qword_100226648);
    if (!v140)
    {
      v111 = type metadata accessor for Peer(0);
      __chkstk_darwin(v111, v112);
      sub_1001A13C4(&qword_100298BE8, type metadata accessor for Peer, &protocol conformance descriptor for Peer);
      sub_100216654();

      return v45;
    }

    goto LABEL_44;
  }

  v64 = swift_slowAlloc();
  v65 = swift_slowAlloc();
  v153 = v65;
  *v64 = 136446210;
  if (v60 > 1)
  {
    if (v60 == 2)
    {
      v66 = @"ENABLED";
      goto LABEL_39;
    }

    if (v60 == 3)
    {
      v66 = @"FOLLOWING";
      goto LABEL_39;
    }

LABEL_36:
    v66 = [NSString stringWithFormat:@"(unknown: %i)", v60];
    goto LABEL_40;
  }

  if (!v60)
  {
    v66 = @"UNKNOWN";
    goto LABEL_39;
  }

  if (v60 != 1)
  {
    goto LABEL_36;
  }

  v66 = @"DISABLED";
LABEL_39:
  v88 = v66;
LABEL_40:
  result = v66;
  if (result)
  {
    v90 = result;
    v91 = sub_100216974();
    v93 = v92;

    v94 = sub_100005FB0(v91, v93, &v153);
    v93, v95, v96, v97, v98, v99, v100, v101, v120, v124, v128, v132, v135, v137, v140, v144, v148, v152;
    *(v64 + 4) = v94;
    _os_log_impl(&_mh_execute_header, v62, v63, "join: setting 'user view sync' control as: %{public}s", v64, 0xCu);
    sub_100006128(v65, v102, v103, v104, v105, v106, v107, v108);

    goto LABEL_42;
  }

  __break(1u);
  return result;
}

void sub_100156FCC(char *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v123 = a8;
  v120 = a7;
  v115 = a6;
  v117 = a5;
  v12 = type metadata accessor for SignedPeerDynamicInfo(0);
  v121 = *(v12 - 1);
  v122 = v12;
  __chkstk_darwin(v12, v13);
  v15 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SignedPeerStableInfo(0);
  v118 = *(v16 - 8);
  v119 = v16;
  __chkstk_darwin(v16, v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for SignedPeerPermanentInfo(0);
  v20 = *(v116 - 1);
  __chkstk_darwin(v116, v21);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 1);

  v24, v25, v26, v27, v28, v29, v30, v31, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123;
  *a1 = a2;
  *(a1 + 1) = a3;
  *v23 = xmmword_10021D470;
  *(v23 + 1) = xmmword_10021D470;
  v124 = xmmword_10021D470;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v32 = a4;
  v33 = [a4 data];
  v34 = sub_100216224();
  v36 = v35;

  sub_100002BF0(*v23, *(v23 + 1), v37, v38, v39, v40, v41, v42);
  *v23 = v34;
  *(v23 + 1) = v36;
  v43 = [v32 sig];
  v44 = sub_100216224();
  v46 = v45;

  sub_100002BF0(*(v23 + 2), *(v23 + 3), v47, v48, v49, v50, v51, v52);
  *(v23 + 2) = v44;
  *(v23 + 3) = v46;
  v53 = v117;
  v54 = type metadata accessor for Peer(0);
  v55 = v54[7];
  sub_1000114D4(&a1[v55], &qword_10029DA00, &unk_10021E800);
  sub_1001AC038(v23, &a1[v55], type metadata accessor for SignedPeerPermanentInfo);
  (*(v20 + 56))(&a1[v55], 0, 1, v116);
  v56 = v53;
  if (!v53)
  {
    v56 = v115;
  }

  v57 = v124;
  *v19 = v124;
  *(v19 + 1) = v57;
  v58 = v119;
  v59 = v53;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v60 = [v56 data];
  v61 = sub_100216224();
  v63 = v62;

  sub_100002BF0(*v19, *(v19 + 1), v64, v65, v66, v67, v68, v69);
  *v19 = v61;
  *(v19 + 1) = v63;
  v70 = [v56 sig];
  v71 = sub_100216224();
  v73 = v72;

  sub_100002BF0(*(v19 + 2), *(v19 + 3), v74, v75, v76, v77, v78, v79);
  *(v19 + 2) = v71;
  *(v19 + 3) = v73;
  v80 = v54[8];
  sub_1000114D4(&a1[v80], &qword_1002985A8, &unk_100226650);
  sub_1001AC038(v19, &a1[v80], type metadata accessor for SignedPeerStableInfo);
  (*(v118 + 7))(&a1[v80], 0, 1, v58);
  v81 = v124;
  *v15 = v124;
  *(v15 + 1) = v81;
  v82 = v122;
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v83 = v120;
  v84 = [v120 data];
  v85 = sub_100216224();
  v87 = v86;

  sub_100002BF0(*v15, *(v15 + 1), v88, v89, v90, v91, v92, v93);
  *v15 = v85;
  *(v15 + 1) = v87;
  v94 = [v83 sig];
  v95 = sub_100216224();
  v97 = v96;

  sub_100002BF0(*(v15 + 2), *(v15 + 3), v98, v99, v100, v101, v102, v103);
  *(v15 + 2) = v95;
  *(v15 + 3) = v97;
  v104 = v54[9];
  sub_1000114D4(&a1[v104], &unk_10029D760, &qword_10021E810);
  sub_1001AC038(v15, &a1[v104], type metadata accessor for SignedPeerDynamicInfo);
  (*(v121 + 7))(&a1[v104], 0, 1, v82);
  v105 = *(a1 + 2);
  v106 = v123;

  v105, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123;
  *(a1 + 2) = v106;
}

uint64_t sub_1001574BC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t (*a7)(void, void, void, void, void), void *a8)
{
  v57 = a3;
  if (a5)
  {
    v14 = sub_100216C74();
  }

  else
  {
    v14 = sub_100216C54();
  }

  v15 = v14;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v16 = sub_100216774();
  sub_100002648(v16, qword_10029D160);
  swift_errorRetain();
  v17 = sub_100216754();

  if (os_log_type_enabled(v17, v15))
  {
    v52 = a4;
    v54 = a8;
    v55 = a7;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v61 = v19;
    *v18 = 136446210;
    v20 = 0xE700000000000000;
    if (a5)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v64._countAndFlagsBits = sub_100216994();
      object = v64._object;
      sub_100216A14(v64);
      object, v22, v23, v24, v25, v26, v27, v28, v52, v54, v55, v57, a5, 1869771365, 0xE700000000000000, v61, v62, v63;

      v29 = v59;
      v20 = v60;
    }

    else
    {
      v29 = 0x73736563637573;
    }

    v36 = sub_100005FB0(v29, v20, &v61);
    v20, v37, v38, v39, v40, v41, v42, v43, v52, v54, v55, v57, v58, v59, v60, v61, v62, v63;
    *(v18 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v17, v15, "join complete: %{public}s", v18, 0xCu);
    sub_100006128(v19, v44, v45, v46, v47, v48, v49, v50);

    a7 = v56;
    a4 = v53;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000074, 0x800000010023C6E0, v30, v31, v32, v33, v34, v35);
  return a7(a1, a2, v57, a4, a5);
}

void sub_10015771C(uint64_t a1, void *a2, void *a3, _TtC18TrustedPeersHelper6Client *a4, uint64_t a5, uint64_t a6, _TtC18TrustedPeersHelper6Client *a7, char *a8, _TtC18TrustedPeersHelper6Client *a9, uint64_t a10, _TtC18TrustedPeersHelper6Client *a11, char a12, _TtC18TrustedPeersHelper6Client *a13, _TtC18TrustedPeersHelper6Client *a14, const char *a15, _TtC18TrustedPeersHelper6Client *a16, const char *a17, _TtC18TrustedPeersHelper6Client *a18, _TtC18TrustedPeersHelper6Client *a19, _TtC18TrustedPeersHelper6Client *a20)
{
  v337 = a3;
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  v29 = __chkstk_darwin(PolicyDocumentsRequest, v28);
  v31 = &v310 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v32 = sub_100216144();
    [a2 sendMetricWithResult:0 error:v32];

    v33 = sub_100216144();
    [v337 sendMetricWithResult:0 error:v33];

    (a4)(0, 0, _swiftEmptyArrayStorage, 0, a1);
    return;
  }

  v316 = v29;
  v331 = a8;
  [a2 sendMetricWithResult:1 error:0];
  v34 = kSecurityRTCEventNameFetchPolicyDocument;
  sub_1001A9F94();
  v36 = v35;
  v330 = a7;
  v322 = a6;
  if (a7)
  {
    v37 = sub_100216964();
  }

  else
  {
    v37 = 0;
  }

  v332 = a13;
  v38 = a11;
  v335 = a5;
  v336 = a11;
  v334 = a4;
  if (a9)
  {
    v39 = sub_100216964();
    v38 = v336;
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  v325 = a9;
  v321 = a10;
  if (v38)
  {
    v42 = sub_100216964();
  }

  else
  {
    v42 = 0;
  }

  LOBYTE(v308) = a12 & 1;
  v324 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v37 flowID:v40 deviceSessionID:v42 eventName:v34 testsAreEnabled:v36 canSendMetrics:v308 category:v41];

  v43 = v332;
  v44 = *&v332->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  __chkstk_darwin(v45, v46);
  v47 = v337;
  *(&v310 - 4) = v43;
  *(&v310 - 3) = v47;
  v48 = v335;
  v308 = v334;
  v309 = v335;
  sub_10001148C(&qword_100297E70, &unk_10021DAB0);
  sub_100216D34();
  v49 = aBlock;
  if (!aBlock)
  {

    return;
  }

  v311 = 0;
  v314 = v31;
  v333 = a20;
  v326 = a19;
  v327 = a18;
  v320 = v44;
  HIDWORD(v319) = a12 & 1;
  v329 = a17;
  v50 = swift_allocObject();
  v51 = v43;
  v52 = v324;
  *(v50 + 16) = v324;
  *(v50 + 24) = v51;
  *(v50 + 32) = a14;
  *(v50 + 40) = a15;
  v323 = a15;
  *(v50 + 48) = a16;
  *(v50 + 56) = a17;
  v328 = a16;
  v53 = v334;
  *(v50 + 64) = v337;
  *(v50 + 72) = v53;
  *(v50 + 80) = v48;
  *(v50 + 88) = a18;
  *(v50 + 96) = a19;
  *(v50 + 104) = a20;
  v54 = v330;
  v55 = v325;
  *(v50 + 112) = v331;
  *(v50 + 120) = v55;
  v56 = v336;
  *(v50 + 128) = v321;
  *(v50 + 136) = v56;
  *(v50 + 144) = v322;
  *(v50 + 152) = v54;
  v312 = v50;
  *(v50 + 160) = BYTE4(v319);
  v57 = swift_allocObject();
  v313 = v57;
  *v57->endpoint = v49;
  endpoint = v57->endpoint;
  v318 = swift_allocObject();
  v59 = v52;
  v324 = v49;
  v60 = v59;
  v61 = v332;
  sub_100012558(a14, a15);
  v62 = v329;
  sub_100012558(a16, v329);

  v317 = v60;
  v315 = v61;
  v63 = v337;

  v332 = a14;
  sub_100012558(a14, v323);
  sub_100012558(v328, v62);
  v337 = v63;

  v64 = v55;

  v65 = sub_100019440(_swiftEmptyArrayStorage);
  v66 = v318;
  *v318->endpoint = v65;
  v67 = swift_allocObject();
  v68 = v315;
  *(v67 + 16) = endpoint;
  *(v67 + 24) = v68;
  *(v67 + 32) = v66->endpoint;
  v69 = swift_allocObject();
  *v69->endpoint = sub_1001ACE80;
  *v69->containerMap = v67;
  v342 = sub_1001ACCC0;
  v343 = v69;
  aBlock = _NSConcreteStackBlock;
  v339 = 1107296256;
  v340 = sub_100109050;
  v341 = &unk_1002833C8;
  v70 = _Block_copy(&aBlock);
  v71 = v343;
  v72 = v68;

  v71, v73, v74, v75, v76, v77, v78, v79;
  [v320 performBlockAndWait:v70];
  _Block_release(v70);
  LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();
  v69, v80, v81, v82, v83, v84, v85, v86;
  if (v70)
  {
    __break(1u);
  }

  else
  {
    v89 = *endpoint;
    v90 = v314;
    if ((*endpoint & 0xC000000000000001) != 0)
    {

      v91 = sub_100216ED4();
      v89, v92, v93, v94, v95, v96, v97, v98, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319;
    }

    else
    {
      v91 = *v89->endpoint;
    }

    v315 = v67;
    if (v91)
    {
      __chkstk_darwin(v87, v88);
      v308 = endpoint;
      sub_1001A13C4(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest, &protocol conformance descriptor for FetchPolicyDocumentsRequest);
      sub_100216654();
      v99 = *&v72[1]._TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish];
      v334 = *&v72->containerMap[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish];
      sub_100006484(&v72->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v334);
      v100 = swift_allocObject();
      *(v100 + 16) = v72;
      *(v100 + 24) = sub_1001AA0E4;
      v101 = v312;
      v102 = v313;
      *(v100 + 32) = v312;
      *(v100 + 40) = v102;
      *(v100 + 48) = v66;
      v103 = *(v99 + 16);
      v104 = *(v103 + 80);
      v105 = v72;

      v104(v90, sub_1001ACE2C, v100, v334, v103);
      v100, v106, v107, v108, v109, v110, v111, v112;
      sub_1001AC1E4(v90, type metadata accessor for FetchPolicyDocumentsRequest);
      v325, v113, v114, v115, v116, v117, v118, v119, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319;
      v336, v120, v121, v122, v123, v124, v125, v126, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319;
      v330, v127, v128, v129, v130, v131, v132, v133, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319;
      v101, v134, v135, v136, v137, v138, v139, v140;
      v315, v141, v142, v143, v144, v145, v146, v147;
      v102, v148, v149, v150, v151, v152, v153, v154;
      v66, v155, v156, v157, v158, v159, v160, v161;
      v162 = v335;
      v163 = v323;
LABEL_22:

      v162, v260, v261, v262, v263, v264, v265, v266;
      v327, v267, v268, v269, v270, v271, v272, v273, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319;
      v326, v274, v275, v276, v277, v278, v279, v280, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319;
      v333, v281, v282, v283, v284, v285, v286, v287, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319;
      sub_100002BF0(v328, v329, v288, v289, v290, v291, v292, v293);
      sub_100002BF0(v332, v163, v294, v295, v296, v297, v298, v299);
      v324, v300, v301, v302, v303, v304, v305, v306, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319;
      v307 = v317;

      return;
    }

    v316 = *v66->endpoint;

    [(Client *)v317 sendMetricWithResult:1 error:0];
    v164 = v72;
    v165 = swift_allocObject();
    v166 = v332;
    v167 = v333;
    v168 = v323;
    *(v165 + 16) = v332;
    *(v165 + 24) = v168;
    v169 = v329;
    *(v165 + 32) = v328;
    *(v165 + 40) = v169;
    v170 = v334;
    v162 = v335;
    *(v165 + 48) = v337;
    *(v165 + 56) = v170;
    *(v165 + 64) = v162;
    *(v165 + 72) = v164;
    v171 = v326;
    *(v165 + 80) = v327;
    *(v165 + 88) = v171;
    v172 = v331;
    *(v165 + 96) = v167;
    *(v165 + 104) = v172;
    v173 = v321;
    *(v165 + 112) = v64;
    *(v165 + 120) = v173;
    v174 = v322;
    *(v165 + 128) = v336;
    *(v165 + 136) = v174;
    *(v165 + 144) = v330;
    *(v165 + 152) = BYTE4(v319);
    v175 = swift_allocObject();
    *v175->endpoint = sub_1001AA148;
    *v175->containerMap = v165;
    v342 = sub_1001ACCC0;
    v343 = v175;
    aBlock = _NSConcreteStackBlock;
    v339 = 1107296256;
    v340 = sub_100109050;
    v341 = &unk_100283468;
    v176 = _Block_copy(&aBlock);
    v334 = v343;
    v331 = v164;
    v177 = v164;
    v163 = v168;
    v178 = v166;
    v179 = v64;
    sub_100012558(v178, v168);
    sub_100012558(v328, v329);
    v180 = v337;

    v181 = v336;

    v182 = v330;

    v334, v183, v184, v185, v186, v187, v188, v189;
    [v320 performBlockAndWait:v176];
    _Block_release(v176);
    LOBYTE(v168) = swift_isEscapingClosureAtFileLocation();
    v181, v190, v191, v192, v193, v194, v195, v196, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319;
    v182, v197, v198, v199, v200, v201, v202, v203, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319;
    v312, v204, v205, v206, v207, v208, v209, v210;
    v315, v211, v212, v213, v214, v215, v216, v217;
    v313, v218, v219, v220, v221, v222, v223, v224;
    v318, v225, v226, v227, v228, v229, v230, v231;
    v316, v232, v233, v234, v235, v236, v237, v238, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319;
    v165, v239, v240, v241, v242, v243, v244, v245;
    v175, v246, v247, v248, v249, v250, v251, v252;
    if ((v168 & 1) == 0)
    {
      v179, v253, v254, v255, v256, v257, v258, v259, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319;
      v72 = v331;
      goto LABEL_22;
    }
  }

  __break(1u);
}

void sub_100158260(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(void, void, void *, void, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v22 = 0;
  v8 = [v7 allPolicyVersionsWithError:&v22];
  v9 = v22;
  if (v8)
  {
    v10 = v8;
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    sub_1001A9AB8(&qword_100297E88, &qword_100297D68, TPPolicyVersion_ptr);
    v11 = sub_100216BB4();
    v12 = v9;
  }

  else
  {
    v13 = v22;
    v14 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v15 = sub_100216774();
    sub_100002648(v15, qword_10029D160);
    swift_errorRetain();
    v16 = sub_100216754();
    v17 = sub_100216C74();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error fetching all policy versions: %{public}@", v18, 0xCu);
      sub_1000114D4(v19, &qword_10029D580, &unk_10021CCC0);
    }

    v21 = sub_100216144();
    [a2 sendMetricWithResult:0 error:v21];

    swift_errorRetain();
    a3(0, 0, _swiftEmptyArrayStorage, 0, v14);

    v11 = 0;
  }

  *a4 = v11;
}

void sub_100158520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void, void, void *, void, uint64_t), uint64_t a7, char *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  isa = sub_100216204().super.isa;
  v23 = sub_100216204().super.isa;
  v24 = [objc_opt_self() voucherInfoWithData:isa sig:v23];

  if (v24)
  {
    v461 = a6;
    v463 = a5;
    v464 = a7;
    v25 = *&a8[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
    v26 = [v24 sponsorID];
    if (!v26)
    {
      sub_100216974();
      v28 = v27;
      v26 = sub_100216964();
      v28, v29, v30, v31, v32, v33, v34, v35, v398, v402, v406, v410, v415, v422, v428, v435, v442, v449;
    }

    v465[0] = 0;
    v36 = [v25 peerWithID:v26 error:v465];

    v37 = v465[0];
    if (v465[0])
    {
      v38 = v465[0];

      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v39 = sub_100216774();
      sub_100002648(v39, qword_10029D160);
      v40 = v24;
      v41 = v38;
      v42 = sub_100216754();
      v43 = sub_100216C74();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v465[0] = v46;
        *v44 = 136315394;
        v47 = [v40 sponsorID];
        v48 = sub_100216974();
        v460 = v40;
        v50 = v49;

        v51 = sub_100005FB0(v48, v50, v465);
        v50, v52, v53, v54, v55, v56, v57, v58, v398, v402, v406, v410, v415, v422, v428, v435, v442, v449;
        *(v44 + 4) = v51;
        *(v44 + 12) = 2114;
        v59 = v41;
        v60 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 14) = v60;
        *v45 = v60;
        _os_log_impl(&_mh_execute_header, v42, v43, "Error getting sponsor (%s): %{public}@", v44, 0x16u);
        sub_1000114D4(v45, &qword_10029D580, &unk_10021CCC0);

        sub_100006128(v46, v61, v62, v63, v64, v65, v66, v67);

        v68 = v460;

        v70 = v461;
        v69 = v463;
      }

      else
      {

        v70 = v461;
        v69 = a5;
        v68 = v40;
      }

      v256 = sub_100216144();
      [v69 sendMetricWithResult:0 error:v256];

      v257 = v41;
      v70(0, 0, _swiftEmptyArrayStorage, 0, v37);

      return;
    }

    if (!v36)
    {
      v258 = [v24 sponsorID];
      v259 = sub_100216974();
      v261 = v260;

      sub_1000561D0();
      swift_allocError();
      *v262 = v259;
      *(v262 + 8) = v261;
      *(v262 + 16) = 0;
      v263 = sub_100216144();
      v264 = sub_100216144();

      [a5 sendMetricWithResult:0 error:v264];

      v265 = [v24 sponsorID];
      v266 = sub_100216974();
      v268 = v267;

      v269 = swift_allocError();
      *v270 = v266;
      *(v270 + 8) = v268;
      *(v270 + 16) = 0;
      a6(0, 0, _swiftEmptyArrayStorage, 0, v269);

      return;
    }

    v75 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
    v76 = *&a8[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO];
    v77 = v36;
    v78 = [v76 egoPeerID];
    if (v78)
    {
      v79 = v78;
      v80 = sub_100216974();
      object = v81;

      v83 = [*&a8[v75] egoPeerPermanentInfo];
      if (v83)
      {
        v458._countAndFlagsBits = v80;
        v91 = v83;
        v92 = sub_100216224();
        v94 = v93;

        v95 = [*&a8[v75] egoPeerPermanentInfoSig];
        if (v95)
        {
          v458._object = object;
          v102 = v95;
          v103 = sub_100216224();
          v459 = v104;

          v105 = [*&a8[v75] egoPeerStableInfo];
          if (v105)
          {
            v456 = v77;
            v457 = v94;
            v112 = v105;
            v113 = sub_100216224();
            v115 = v114;

            v116 = [*&a8[v75] egoPeerStableInfoSig];
            if (v116)
            {
              v416 = v113;
              v123 = v116;
              v429 = sub_100216224();
              v436 = v124;

              v455 = [objc_allocWithZone(TPECPublicKeyFactory) init];

              sub_100012558(v92, v457);
              sub_100012558(v103, v459);
              v125 = sub_100216964();
              v458._object, v126, v127, v128, v129, v130, v131, v132, v398, v402, v406, v410, v416, v115, v429, v436, v442, v449;
              v133 = sub_100216204().super.isa;
              v450 = v92;
              v134 = sub_100216204().super.isa;
              v135 = [objc_opt_self() permanentInfoWithPeerID:v125 data:v133 sig:v134 keyFactory:v455];

              v136 = v450;
              v443 = v103;
              sub_100002BF0(v103, v459, v137, v138, v139, v140, v141, v142);

              sub_100002BF0(v450, v457, v143, v144, v145, v146, v147, v148);
              v411 = v135;
              if (!v135)
              {
                v458._object, v149, v150, v151, v152, v153, v154, v155, v399, v403, v407, 0, v417, v423, v430, v437, v103, v450;
                sub_1000561D0();
                swift_allocError();
                *v275 = xmmword_10021DA80;
                *(v275 + 16) = 13;
                v276 = sub_100216144();

                [v463 sendMetricWithResult:0 error:v276];

                v277 = swift_allocError();
                *v278 = xmmword_10021DA80;
                *(v278 + 16) = 13;
                v461(0, 0, _swiftEmptyArrayStorage, 0, v277);

                sub_100002BF0(v136, v457, v279, v280, v281, v282, v283, v284);
                sub_100002BF0(v446, v459, v285, v286, v287, v288, v289, v290);
                sub_100002BF0(v420, v426, v291, v292, v293, v294, v295, v296);

                sub_100002BF0(v433, v440, v297, v298, v299, v300, v301, v302);

                return;
              }

              v156 = objc_allocWithZone(TPPeerStableInfo);
              v157 = v417;
              v158 = v423;
              sub_100012558(v417, v423);
              v159 = v430;
              v160 = v437;
              sub_100012558(v430, v437);
              v161 = sub_100216204().super.isa;
              v162 = sub_100216204().super.isa;
              v163 = [v156 initWithData:v161 sig:v162];

              sub_100002BF0(v430, v437, v164, v165, v166, v167, v168, v169);
              v170 = v163;
              sub_100002BF0(v417, v423, v171, v172, v173, v174, v175, v176);
              if (!v163)
              {
                v458._object, v177, v178, v179, v180, v181, v182, v183, v399, v403, v407, v411, v417, v423, v430, v437, v443, v450;
                sub_1000561D0();
                swift_allocError();
                *v303 = xmmword_10021DC20;
                *(v303 + 16) = 13;
                v304 = sub_100216144();

                [v463 sendMetricWithResult:0 error:v304];

                v305 = swift_allocError();
                *v306 = xmmword_10021DC20;
                *(v306 + 16) = 13;
                v461(0, 0, _swiftEmptyArrayStorage, 0, v305);

                sub_100002BF0(v453, v457, v307, v308, v309, v310, v311, v312);
                sub_100002BF0(v447, v459, v313, v314, v315, v316, v317, v318);
                sub_100002BF0(v157, v158, v319, v320, v321, v322, v323, v324);

                sub_100002BF0(v159, v160, v325, v326, v327, v328, v329, v330);

                return;
              }

              v184 = v411;
              v185 = [v411 machineID];
              v186 = sub_100216974();
              v188 = v187;

              LOBYTE(v185) = sub_1001E537C(v186, v188);
              v188, v189, v190, v191, v192, v193, v194, v195, v399, v403, v407, v411, v417, v423, v430, v437, v443, v450;
              v408 = v170;
              if (v185)
              {
                v203 = swift_allocObject();
                *(v203 + 16) = v463;
                *(v203 + 24) = v461;
                *(v203 + 32) = v464;
                *(v203 + 40) = a8;
                *(v203 + 48) = v458;
                *(v203 + 64) = v184;
                *(v203 + 72) = v170;
                *(v203 + 80) = v456;
                *(v203 + 88) = a9;
                *(v203 + 96) = v24;
                *(v203 + 104) = a10;
                *(v203 + 112) = a11;
                *(v203 + 120) = v451;
                *(v203 + 128) = v457;
                *(v203 + 136) = v444;
                *(v203 + 144) = v459;
                *(v203 + 152) = a12;
                *(v203 + 160) = a13;
                *(v203 + 168) = a14;
                *(v203 + 176) = a15;
                *(v203 + 184) = a16;
                *(v203 + 192) = a17;
                *(v203 + 200) = a18 & 1;
                strcpy(v465, "signing-key ");
                BYTE5(v465[1]) = 0;
                HIWORD(v465[1]) = -5120;
                v462 = v456;

                sub_100012558(v451, v457);
                sub_100012558(v444, v459);

                v204 = v463;

                v205 = a8;
                v206 = v412;
                v207 = v170;

                v208 = v24;

                sub_100216A14(v458);
                v209 = v465[0];
                v210 = v465[1];

                sub_100198E8C(v209, v210, sub_1001AA14C, v203, v458._countAndFlagsBits, v458._object);

                v210, v211, v212, v213, v214, v215, v216, v217, v400, a9, v408, v412, v418, v424, v431, v438, v444, v451;
                v203, v218, v219, v220, v221, v222, v223, v224;
                swift_bridgeObjectRelease_n();
                sub_100002BF0(v452, v457, v225, v226, v227, v228, v229, v230);
                sub_100002BF0(v445, v459, v231, v232, v233, v234, v235, v236);
                sub_100002BF0(v419, v425, v237, v238, v239, v240, v241, v242);

                sub_100002BF0(v432, v439, v243, v244, v245, v246, v247, v248);
                v203, v249, v250, v251, v252, v253, v254, v255;

                return;
              }

              v458._object, v196, v197, v198, v199, v200, v201, v202, v400, v404, v170, v412, v418, v424, v431, v438, v444, v451;
              if (qword_100297520 != -1)
              {
                swift_once();
              }

              v331 = sub_100216774();
              sub_100002648(v331, qword_10029D160);
              v332 = v184;
              v333 = sub_100216754();
              v334 = sub_100216C54();

              if (os_log_type_enabled(v333, v334))
              {
                v335 = swift_slowAlloc();
                v336 = swift_slowAlloc();
                v465[0] = v336;
                *v335 = 136446210;
                v337 = [v332 machineID];
                v338 = sub_100216974();
                v340 = v339;

                v341 = sub_100005FB0(v338, v340, v465);
                v340, v342, v343, v344, v345, v346, v347, v348, v401, v405, v409, v414, v421, v427, v434, v441, v448, v454;
                *(v335 + 4) = v341;
                _os_log_impl(&_mh_execute_header, v333, v334, "join: self machineID %{public}s not on list", v335, 0xCu);
                sub_100006128(v336, v349, v350, v351, v352, v353, v354, v355);
              }

              v356 = objc_allocWithZone(SecTapToRadar);
              v357 = sub_100216964();
              v358 = sub_100216964();
              v359 = sub_100216964();
              v360 = [v356 initTapToRadar:v357 description:v358 radar:v359];

              [v360 trigger];
              v361 = [v332 machineID];
              v362 = sub_100216974();
              v364 = v363;

              sub_1000561D0();
              swift_allocError();
              *v365 = v362;
              *(v365 + 8) = v364;
              *(v365 + 16) = 2;
              v366 = sub_100216144();
              v367 = sub_100216144();

              [v463 sendMetricWithResult:0 error:v367];

              v368 = [v332 machineID];
              v369 = sub_100216974();
              v371 = v370;

              v372 = swift_allocError();
              *v373 = v369;
              *(v373 + 8) = v371;
              *(v373 + 16) = 2;
              v461(0, 0, _swiftEmptyArrayStorage, 0, v372);

              sub_100002BF0(v454, v457, v374, v375, v376, v377, v378, v379);
              sub_100002BF0(v448, v459, v380, v381, v382, v383, v384, v385);
              sub_100002BF0(v421, v427, v386, v387, v388, v389, v390, v391);

              sub_100002BF0(v434, v441, v392, v393, v394, v395, v396, v397);
LABEL_30:

              return;
            }

            sub_100002BF0(v113, v115, v117, v118, v119, v120, v121, v122);
            v77 = v456;
            v94 = v457;
          }

          sub_100002BF0(v103, v459, v106, v107, v108, v109, v110, v111);
          object = v458._object;
        }

        sub_100002BF0(v92, v94, v96, v97, v98, v99, v100, v101);
      }

      object, v84, v85, v86, v87, v88, v89, v90, v398, v402, v406, v410, v415, v422, v428, v435, v442, v449;
    }

    sub_1000561D0();
    swift_allocError();
    *v271 = xmmword_10021DA90;
    *(v271 + 16) = 13;
    v272 = sub_100216144();

    [v463 sendMetricWithResult:0 error:v272];

    v273 = swift_allocError();
    *v274 = xmmword_10021DA90;
    *(v274 + 16) = 13;
    v461(0, 0, _swiftEmptyArrayStorage, 0, v273);

    goto LABEL_30;
  }

  sub_1000561D0();
  swift_allocError();
  *v71 = xmmword_1002260C0;
  *(v71 + 16) = 13;
  v72 = sub_100216144();

  [a5 sendMetricWithResult:0 error:v72];

  v73 = swift_allocError();
  *v74 = xmmword_1002260C0;
  *(v74 + 16) = 13;
  a6(0, 0, _swiftEmptyArrayStorage, 0, v73);
}

void sub_10015967C(void *a1, uint64_t a2, void *a3, void *a4, void *a5, char *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, unint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *a24, uint64_t a25, unsigned __int8 a26)
{
  v26 = a4;
  if (a1)
  {
    v91 = a4;
    HIDWORD(v95) = a26;
    v90 = a5;
    v94 = a24;
    v93 = a22;
    v92 = a20;
    v89 = a15;
    v88 = a14;
    v87 = a13;
    v96 = a12;
    v98 = *&a6[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v26 = a1;
    v30 = swift_allocObject();
    *(v30 + 16) = a6;
    *(v30 + 24) = a7;
    *(v30 + 32) = a8;
    *(v30 + 40) = a9;
    *(v30 + 48) = a10;
    *(v30 + 56) = a11;
    *(v30 + 64) = a12;
    *(v30 + 72) = a13;
    *(v30 + 80) = v26;
    *(v30 + 88) = a3;
    *(v30 + 96) = v91;
    *(v30 + 104) = v90;
    *(v30 + 112) = a14;
    *(v30 + 120) = a15;
    *(v30 + 128) = a16;
    *(v30 + 136) = a17;
    *(v30 + 144) = a18;
    *(v30 + 152) = a19;
    *(v30 + 160) = a20;
    *(v30 + 168) = a21;
    *(v30 + 176) = a22;
    *(v30 + 184) = a23;
    *(v30 + 192) = a24;
    *(v30 + 200) = a25;
    *(v30 + 208) = a26 & 1;
    v31 = swift_allocObject();
    *v31->endpoint = sub_1001AA1A8;
    *v31->containerMap = v30;
    aBlock[4] = sub_1001ACCC0;
    v101 = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100283508;
    v32 = _Block_copy(aBlock);
    v33 = v101;

    v34 = a13;
    v35 = a3;

    v36 = v26;
    v37 = a6;

    v38 = a9;
    v39 = a10;
    v40 = a11;
    sub_100012558(a16, a17);
    sub_100012558(a18, a19);

    v33, v41, v42, v43, v44, v45, v46, v47;
    [v98 performBlockAndWait:v32];

    _Block_release(v32);
    LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();
    v30, v48, v49, v50, v51, v52, v53, v54;
    v31, v55, v56, v57, v58, v59, v60, v61;
    if ((v36 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v62 = a2;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v63 = sub_100216774();
  sub_100002648(v63, qword_10029D160);
  swift_errorRetain();
  v64 = sub_100216754();
  v65 = sub_100216C74();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v66 = 136446210;
    v102 = v62;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v68 = sub_100216994();
    v70 = v69;
    v71 = sub_100005FB0(v68, v69, aBlock);
    v70, v72, v73, v74, v75, v76, v77, v78, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96;
    *(v66 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v64, v65, "Don't have my own peer keys; can't join: %{public}s", v66, 0xCu);
    sub_100006128(v67, v79, v80, v81, v82, v83, v84, v85);
  }

  if (v62)
  {
    v86 = sub_100216144();
  }

  else
  {
    v86 = 0;
  }

  [a3 sendMetricWithResult:0 error:{v86, v87, v88, v89, v90, v91, v92}];

  (v26)(0, 0, _swiftEmptyArrayStorage, 0, v62);
}

uint64_t sub_100159B34(uint64_t a1, _TtC18TrustedPeersHelper6Client *a2, _TtC18TrustedPeersHelper6Client *a3, void *a4, char *a5, _TtC18TrustedPeersHelper6Client *a6, __CFString *a7, _TtC18TrustedPeersHelper6Client **a8, _TtC18TrustedPeersHelper6Client *a9, void *a10, void (*a11)(void, void, void *, void, uint64_t), uint64_t a12, unint64_t a13, unint64_t a14, _TtC18TrustedPeersHelper6Client *a15, const char *a16, _TtC18TrustedPeersHelper6Client *a17, const char *a18, _TtC18TrustedPeersHelper6Client **a19, char *a20, uint64_t a21, objc_class *a22, uint64_t a23, _TtC18TrustedPeersHelper6Client *a24, unsigned __int8 a25)
{
  v848 = a8;
  v849 = a5;
  v850 = a7;
  v855 = a4;
  *&v856 = a1;
  v852 = a2;
  v853 = a3;
  v845 = a12;
  v844 = a11;
  v851 = a10;
  v854 = a9;
  v825 = type metadata accessor for JoinWithVoucherRequest(0);
  __chkstk_darwin(v825, v26);
  v829 = &v808 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v824 = type metadata accessor for Metrics(0);
  __chkstk_darwin(v824, v28);
  v828 = (&v808 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v847 = type metadata accessor for SignedVoucher(0);
  v30 = *(v847 - 1);
  __chkstk_darwin(v847, v31);
  v839 = (&v808 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v35 = __chkstk_darwin(v33 - 8, v34);
  v815 = &v808 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35, v37);
  v814 = &v808 - v38;
  v823 = type metadata accessor for SignedPeerDynamicInfo(0);
  v822 = *(v823 - 8);
  v40 = __chkstk_darwin(v823, v39);
  v819 = (&v808 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v40, v42);
  v818 = (&v808 - v43);
  v44 = type metadata accessor for Bottle(0);
  v46 = __chkstk_darwin(v44 - 8, v45);
  v832 = &v808 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46, v48);
  v833 = &v808 - v49;
  v50 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v52 = __chkstk_darwin(v50 - 8, v51);
  v813 = &v808 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v52, v54);
  v812 = &v808 - v56;
  v58 = __chkstk_darwin(v55, v57);
  v837 = (&v808 - v59);
  __chkstk_darwin(v58, v60);
  v838 = (&v808 - v61);
  v840 = type metadata accessor for SignedPeerStableInfo(0);
  v842 = *(v840 - 1);
  v63 = __chkstk_darwin(v840, v62);
  v817 = (&v808 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = __chkstk_darwin(v63, v65);
  v816 = (&v808 - v67);
  v69 = __chkstk_darwin(v66, v68);
  v835 = (&v808 - v70);
  __chkstk_darwin(v69, v71);
  v73 = (&v808 - v72);
  v841 = type metadata accessor for Peer(0);
  v820 = *(v841 - 8);
  v74 = *(v820 + 64);
  v76 = __chkstk_darwin(v841, v75);
  v821 = (&v808 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = __chkstk_darwin(v76, v77);
  v826 = &v808 - v79;
  v81 = __chkstk_darwin(v78, v80);
  v834 = &v808 - v82;
  v84 = __chkstk_darwin(v81, v83);
  v831 = &v808 - v85;
  v87 = __chkstk_darwin(v84, v86);
  v827 = &v808 - v88;
  v90 = __chkstk_darwin(v87, v89);
  v830 = &v808 - v91;
  v93 = __chkstk_darwin(v90, v92);
  v95 = (&v808 - v94);
  v97 = __chkstk_darwin(v93, v96);
  __chkstk_darwin(v97, v98);
  v843 = &v808 - v99;
  v836 = a6;
  v100 = a6;
  v102 = v101;
  v103 = [(Client *)v100 peerID];
  v846 = sub_100216974();
  v105 = v104;

  sub_10001148C(&qword_10029D898, &qword_100226668);
  v106 = *(v30 + 72);
  v107 = ((*(v30 + 80) + 32) & ~*(v30 + 80));
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_10021D600;
  v858 = v848;
  sub_1001A13C4(&qword_10029D8A0, type metadata accessor for SignedVoucher, &protocol conformance descriptor for SignedVoucher);
  sub_100216654();
  v109 = sub_100156564(v102, v852, v853, v855, v849, v846, v105, v850, v108, v854);
  v847 = v95;
  v849 = v106;
  v850 = v109;
  v846 = v74;
  v105, v110, v111, v112, v113, v114, v115, v116, v808, v809, v810, v107, v812, v813, v814, v815, v816, v817;
  v108, v117, v118, v119, v120, v121, v122, v123, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
  v124 = v102;
  v125 = v843;
  sub_1001AC038(v124, v843, type metadata accessor for Peer);
  v126 = *(v841 + 32);
  v127 = v838;
  sub_100019C6C(v125 + v126, v838, &qword_1002985A8, &unk_100226650);
  v128 = v842 + 48;
  v129 = *(v842 + 48);
  v130 = v840;
  v131 = (v129)(v127, 1, v840);
  v842 = v128;
  v848 = v129;
  if (v131 == 1)
  {
    *v73 = xmmword_10021D470;
    v73[1] = xmmword_10021D470;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if ((v129)(v127, 1, v130) != 1)
    {
      sub_1000114D4(v127, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    sub_1001AC038(v127, v73, type metadata accessor for SignedPeerStableInfo);
  }

  v132 = objc_allocWithZone(TPPeerStableInfo);
  isa = sub_100216204().super.isa;
  v134 = sub_100216204().super.isa;
  v135 = [v132 initWithData:isa sig:v134];

  sub_1001AC1E4(v73, type metadata accessor for SignedPeerStableInfo);
  if (v135)
  {
    v136 = [v855 epoch];
    if ((v136 & 0x8000000000000000) != 0)
    {
      __break(1u);
      swift_once();
      v139 = sub_100216774();
      sub_100002648(v139, qword_10029D160);
      swift_errorRetain();
      v140 = sub_100216754();
      v141 = sub_100216C74();

      v142 = os_log_type_enabled(v140, v141);
      v180 = v843;
      if (v142)
      {
        v143 = swift_slowAlloc();
        v144 = v135;
        v145 = swift_slowAlloc();
        v859 = v145;
        *v143 = 136446210;
        v857 = 0;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v146 = sub_100216994();
        v148 = v147;
        v149 = sub_100005FB0(v146, v147, &v859);
        v148, v150, v151, v152, v153, v154, v155, v156, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
        *(v143 + 4) = v149;
        _os_log_impl(&_mh_execute_header, v140, v141, "Unable to process keys before joining: %{public}s", v143, 0xCu);
        sub_100006128(v145, v157, v158, v159, v160, v161, v162, v163);
        v135 = v144;
      }

      v164 = sub_100216144();
      [v851 sendMetricWithResult:0 error:v164];

      swift_errorRetain();
      v844(0, 0, _swiftEmptyArrayStorage, 0, 0);
    }

    else
    {
      v137 = v856;
      sub_1001551F8(a13, a14, v854, v850, v136);
      v138 = v837;
      v854 = v176;
      v838 = v177;
      v809 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
      v178 = *(v137 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
      v179 = v843 + v126;
      v180 = v843;
      sub_100019C6C(v179, v837, &qword_1002985A8, &unk_100226650);
      v181 = v848;
      v182 = (v848)(v138, 1, v130);
      v810 = v135;
      if (v182 == 1)
      {
        v183 = v835;
        *v835 = xmmword_10021D470;
        *(v183 + 1) = xmmword_10021D470;
        v184 = v178;
        _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
        if ((v181)(v138, 1, v130) != 1)
        {
          sub_1000114D4(v138, &qword_1002985A8, &unk_100226650);
        }
      }

      else
      {
        v183 = v835;
        sub_1001AC038(v138, v835, type metadata accessor for SignedPeerStableInfo);
        v185 = v178;
      }

      v186 = v183;
      v187 = objc_allocWithZone(TPPeerStableInfo);
      v188 = sub_100216204().super.isa;
      v189 = sub_100216204().super.isa;
      v190 = [v187 initWithData:v188 sig:v189];

      sub_1001AC1E4(v186, type metadata accessor for SignedPeerStableInfo);
      v191 = [(Client *)v836 peerID];
      if (!v191)
      {
        sub_100216974();
        v193 = v192;
        v191 = sub_100216964();
        v193, v194, v195, v196, v197, v198, v199, v200, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
      }

      v859 = 0;
      v201 = [v178 checkIntroductionForCandidate:v855 stableInfo:v190 withSponsorID:v191 error:&v859];

      if (v201)
      {
        v202 = v859;
        v203 = v832;
        sub_10017B39C(v852, v853, v832);
        sub_1001AC038(v203, v833, type metadata accessor for Bottle);
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v246 = sub_100216774();
        v247 = sub_100002648(v246, qword_10029D160);
        v248 = v853;

        v249 = sub_100216754();
        v250 = sub_100216C54();
        v248, v251, v252, v253, v254, v255, v256, v257, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
        v258 = os_log_type_enabled(v249, v250);
        v836 = 0;
        if (v258)
        {
          v259 = swift_slowAlloc();
          v260 = swift_slowAlloc();
          v859 = v260;
          *v259 = 136446210;
          *(v259 + 4) = sub_100005FB0(v852, v248, &v859);
          _os_log_impl(&_mh_execute_header, v249, v250, "Beginning join for peer %{public}s", v259, 0xCu);
          sub_100006128(v260, v261, v262, v263, v264, v265, v266, v267);
        }

        v268 = v827;
        sub_100012558(a15, a16);
        v269 = sub_100216754();
        v270 = sub_100216C54();
        sub_100002BF0(a15, a16, v271, v272, v273, v274, v275, v276);
        if (os_log_type_enabled(v269, v270))
        {
          v277 = swift_slowAlloc();
          v278 = swift_slowAlloc();
          v859 = v278;
          *v277 = 136446210;
          v279 = sub_100216214(0);
          v281 = v280;
          v282 = sub_100005FB0(v279, v280, &v859);
          v281, v283, v284, v285, v286, v287, v288, v289, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
          *(v277 + 4) = v282;
          _os_log_impl(&_mh_execute_header, v269, v270, "Join permanentInfo: %{public}s", v277, 0xCu);
          sub_100006128(v278, v290, v291, v292, v293, v294, v295, v296);
        }

        v297 = v843;
        v298 = v830;
        sub_100012558(a17, a18);
        v299 = sub_100216754();
        v300 = sub_100216C54();
        sub_100002BF0(a17, a18, v301, v302, v303, v304, v305, v306);
        if (os_log_type_enabled(v299, v300))
        {
          v307 = swift_slowAlloc();
          v308 = swift_slowAlloc();
          v859 = v308;
          *v307 = 136446210;
          v309 = sub_100216214(0);
          v311 = v310;
          v312 = sub_100005FB0(v309, v310, &v859);
          v311, v313, v314, v315, v316, v317, v318, v319, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
          *(v307 + 4) = v312;
          _os_log_impl(&_mh_execute_header, v299, v300, "Join permanentInfoSig: %{public}s", v307, 0xCu);
          sub_100006128(v308, v320, v321, v322, v323, v324, v325, v326);
        }

        v327 = v839;
        v328 = v834;
        v329 = v847;
        sub_1001AC0A0(v297, v847, type metadata accessor for Peer);
        v330 = sub_100216754();
        v331 = sub_100216C54();
        v332 = os_log_type_enabled(v330, v331);
        v837 = v247;
        if (v332)
        {
          v333 = v268;
          v334 = v329;
          v335 = swift_slowAlloc();
          v336 = swift_slowAlloc();
          v859 = v336;
          *v335 = 136446210;
          v337 = v812;
          sub_100019C6C(v334 + *(v841 + 32), v812, &qword_1002985A8, &unk_100226650);
          v338 = v840;
          v339 = v848;
          if ((v848)(v337, 1, v840) == 1)
          {
            v340 = v816;
            *v816 = xmmword_10021D470;
            *(v340 + 16) = xmmword_10021D470;
            _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
            v341 = (v339)(v337, 1, v338);
            v268 = v333;
            if (v341 != 1)
            {
              sub_1000114D4(v337, &qword_1002985A8, &unk_100226650);
            }
          }

          else
          {
            v340 = v816;
            sub_1001AC038(v337, v816, type metadata accessor for SignedPeerStableInfo);
            v268 = v333;
          }

          v342 = *v340;
          v343 = *(v340 + 8);
          sub_100012558(*v340, v343);
          sub_1001AC1E4(v340, type metadata accessor for SignedPeerStableInfo);
          v344 = sub_100216214(0);
          v346 = v345;
          sub_100002BF0(v342, v343, v347, v348, v349, v350, v351, v352);
          sub_1001AC1E4(v847, type metadata accessor for Peer);
          v353 = sub_100005FB0(v344, v346, &v859);
          v346, v354, v355, v356, v357, v358, v359, v360, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
          *(v335 + 4) = v353;
          _os_log_impl(&_mh_execute_header, v330, v331, "Join stableInfo: %{public}s", v335, 0xCu);
          sub_100006128(v336, v361, v362, v363, v364, v365, v366, v367);

          v297 = v843;
          v327 = v839;
          v328 = v834;
          v298 = v830;
        }

        else
        {

          sub_1001AC1E4(v329, type metadata accessor for Peer);
        }

        sub_1001AC0A0(v297, v298, type metadata accessor for Peer);
        v368 = sub_100216754();
        v369 = sub_100216C54();
        if (os_log_type_enabled(v368, v369))
        {
          v370 = v268;
          v371 = swift_slowAlloc();
          v372 = swift_slowAlloc();
          v859 = v372;
          *v371 = 136446210;
          v373 = v813;
          sub_100019C6C(v298 + *(v841 + 32), v813, &qword_1002985A8, &unk_100226650);
          v374 = v840;
          v375 = v848;
          if ((v848)(v373, 1, v840) == 1)
          {
            v376 = v817;
            *v817 = xmmword_10021D470;
            *(v376 + 16) = xmmword_10021D470;
            _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
            v377 = (v375)(v373, 1, v374);
            v268 = v370;
            if (v377 != 1)
            {
              sub_1000114D4(v373, &qword_1002985A8, &unk_100226650);
            }
          }

          else
          {
            v376 = v817;
            sub_1001AC038(v373, v817, type metadata accessor for SignedPeerStableInfo);
            v268 = v370;
          }

          v378 = *(v376 + 16);
          v379 = *(v376 + 24);
          sub_100012558(v378, v379);
          sub_1001AC1E4(v376, type metadata accessor for SignedPeerStableInfo);
          v380 = sub_100216214(0);
          v382 = v381;
          sub_100002BF0(v378, v379, v383, v384, v385, v386, v387, v388);
          sub_1001AC1E4(v830, type metadata accessor for Peer);
          v389 = sub_100005FB0(v380, v382, &v859);
          v382, v390, v391, v392, v393, v394, v395, v396, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
          *(v371 + 4) = v389;
          _os_log_impl(&_mh_execute_header, v368, v369, "Join stableInfoSig: %{public}s", v371, 0xCu);
          sub_100006128(v372, v397, v398, v399, v400, v401, v402, v403);

          v297 = v843;
          v327 = v839;
          v328 = v834;
        }

        else
        {

          sub_1001AC1E4(v298, type metadata accessor for Peer);
        }

        sub_1001AC0A0(v297, v268, type metadata accessor for Peer);
        v404 = sub_100216754();
        v405 = sub_100216C54();
        v406 = os_log_type_enabled(v404, v405);
        v407 = v831;
        if (v406)
        {
          v408 = swift_slowAlloc();
          v409 = swift_slowAlloc();
          v859 = v409;
          *v408 = 136446210;
          v410 = v814;
          sub_100019C6C(v268 + *(v841 + 36), v814, &unk_10029D760, &qword_10021E810);
          v411 = *(v822 + 48);
          v412 = v823;
          if (v411(v410, 1, v823) == 1)
          {
            v413 = v818;
            *v818 = xmmword_10021D470;
            v413[1] = xmmword_10021D470;
            _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
            if (v411(v410, 1, v412) != 1)
            {
              sub_1000114D4(v410, &unk_10029D760, &qword_10021E810);
            }
          }

          else
          {
            v413 = v818;
            sub_1001AC038(v410, v818, type metadata accessor for SignedPeerDynamicInfo);
          }

          v414 = *v413;
          v415 = *(v413 + 1);
          sub_100012558(*v413, v415);
          sub_1001AC1E4(v413, type metadata accessor for SignedPeerDynamicInfo);
          v416 = sub_100216214(0);
          v418 = v417;
          sub_100002BF0(v414, v415, v419, v420, v421, v422, v423, v424);
          sub_1001AC1E4(v827, type metadata accessor for Peer);
          v425 = sub_100005FB0(v416, v418, &v859);
          v418, v426, v427, v428, v429, v430, v431, v432, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
          *(v408 + 4) = v425;
          _os_log_impl(&_mh_execute_header, v404, v405, "Join dynamicInfo: %{public}s", v408, 0xCu);
          sub_100006128(v409, v433, v434, v435, v436, v437, v438, v439);

          v297 = v843;
          v327 = v839;
          v328 = v834;
          v407 = v831;
        }

        else
        {

          sub_1001AC1E4(v268, type metadata accessor for Peer);
        }

        sub_1001AC0A0(v297, v407, type metadata accessor for Peer);
        v440 = sub_100216754();
        v441 = sub_100216C54();
        if (os_log_type_enabled(v440, v441))
        {
          v442 = swift_slowAlloc();
          v443 = swift_slowAlloc();
          v859 = v443;
          *v442 = 136446210;
          v444 = v815;
          sub_100019C6C(v407 + *(v841 + 36), v815, &unk_10029D760, &qword_10021E810);
          v445 = *(v822 + 48);
          v446 = v823;
          if (v445(v444, 1, v823) == 1)
          {
            v447 = v819;
            *v819 = xmmword_10021D470;
            v447[1] = xmmword_10021D470;
            _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
            if (v445(v444, 1, v446) != 1)
            {
              sub_1000114D4(v444, &unk_10029D760, &qword_10021E810);
            }
          }

          else
          {
            v447 = v819;
            sub_1001AC038(v444, v819, type metadata accessor for SignedPeerDynamicInfo);
          }

          v448 = *(v447 + 2);
          v449 = *(v447 + 3);
          sub_100012558(v448, v449);
          sub_1001AC1E4(v447, type metadata accessor for SignedPeerDynamicInfo);
          v450 = sub_100216214(0);
          v452 = v451;
          sub_100002BF0(v448, v449, v453, v454, v455, v456, v457, v458);
          sub_1001AC1E4(v831, type metadata accessor for Peer);
          v459 = sub_100005FB0(v450, v452, &v859);
          v452, v460, v461, v462, v463, v464, v465, v466, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
          *(v442 + 4) = v459;
          _os_log_impl(&_mh_execute_header, v440, v441, "Join dynamicInfoSig: %{public}s", v442, 0xCu);
          sub_100006128(v443, v467, v468, v469, v470, v471, v472, v473);

          v297 = v843;
          v327 = v839;
          v328 = v834;
        }

        else
        {

          sub_1001AC1E4(v407, type metadata accessor for Peer);
        }

        sub_1001AC0A0(v297, v328, type metadata accessor for Peer);
        v474 = sub_100216754();
        v475 = sub_100216C54();
        if (os_log_type_enabled(v474, v475))
        {
          v476 = swift_slowAlloc();
          v477 = swift_slowAlloc();
          v483 = v477;
          v859 = v477;
          *v476 = 136446210;
          v484 = *(v328 + 16);
          v485 = *(v484 + 16);
          v486 = _swiftEmptyArrayStorage;
          if (v485)
          {
            v848 = v477;
            v857 = _swiftEmptyArrayStorage;
            sub_1001877A4(0, v485, 0, v478, v479, v480, v481, v482);
            v486 = v857;
            v487 = &v811[v484];
            do
            {
              sub_1001AC0A0(v487, v327, type metadata accessor for SignedVoucher);
              v488 = sub_100216214(0);
              v490 = v489;
              sub_1001AC1E4(v327, type metadata accessor for SignedVoucher);
              v857 = v486;
              v497 = *v486->endpoint;
              v496 = *v486->containerMap;
              if (v497 >= v496 >> 1)
              {
                sub_1001877A4((v496 > 1), v497 + 1, 1, v491, v492, v493, v494, v495);
                v486 = v857;
              }

              *v486->endpoint = v497 + 1;
              v498 = v486 + 16 * v497;
              *(v498 + 4) = v488;
              *(v498 + 5) = v490;
              v487 = &v849[v487];
              --v485;
              v327 = v839;
            }

            while (v485);
            v297 = v843;
            v483 = v848;
          }

          v499 = sub_100216B34();
          v501 = v500;
          v486, v500, v502, v503, v504, v505, v506, v507, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
          sub_1001AC1E4(v834, type metadata accessor for Peer);
          v508 = sub_100005FB0(v499, v501, &v859);
          v501, v509, v510, v511, v512, v513, v514, v515, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
          *(v476 + 4) = v508;
          _os_log_impl(&_mh_execute_header, v474, v475, "Join vouchers: %{public}s", v476, 0xCu);
          sub_100006128(v483, v516, v517, v518, v519, v520, v521, v522);
        }

        else
        {

          sub_1001AC1E4(v328, type metadata accessor for Peer);
        }

        v523 = v297;
        v524 = v826;
        sub_1001AC0A0(v523, v826, type metadata accessor for Peer);
        v525 = sub_100216754();
        v526 = sub_100216C54();
        if (os_log_type_enabled(v525, v526))
        {
          v527 = swift_slowAlloc();
          v528 = swift_slowAlloc();
          v534 = v528;
          v859 = v528;
          *v527 = 136446210;
          v535 = *(v524 + 16);
          v536 = *(v535 + 16);
          v537 = _swiftEmptyArrayStorage;
          if (v536)
          {
            v848 = v528;
            v857 = _swiftEmptyArrayStorage;
            sub_1001877A4(0, v536, 0, v529, v530, v531, v532, v533);
            v537 = v857;
            v538 = &v811[v535];
            do
            {
              sub_1001AC0A0(v538, v327, type metadata accessor for SignedVoucher);
              v539 = sub_100216214(0);
              v541 = v540;
              sub_1001AC1E4(v327, type metadata accessor for SignedVoucher);
              v857 = v537;
              v548 = *v537->endpoint;
              v547 = *v537->containerMap;
              if (v548 >= v547 >> 1)
              {
                sub_1001877A4((v547 > 1), v548 + 1, 1, v542, v543, v544, v545, v546);
                v537 = v857;
              }

              *v537->endpoint = v548 + 1;
              v549 = v537 + 16 * v548;
              *(v549 + 4) = v539;
              *(v549 + 5) = v541;
              v538 = &v849[v538];
              --v536;
              v327 = v839;
            }

            while (v536);
            v524 = v826;
            v534 = v848;
          }

          v550 = sub_100216B34();
          v552 = v551;
          v537, v551, v553, v554, v555, v556, v557, v558, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
          sub_1001AC1E4(v524, type metadata accessor for Peer);
          v559 = sub_100005FB0(v550, v552, &v859);
          v552, v560, v561, v562, v563, v564, v565, v566, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
          *(v527 + 4) = v559;
          _os_log_impl(&_mh_execute_header, v525, v526, "Join voucher signatures: %{public}s", v527, 0xCu);
          sub_100006128(v534, v567, v568, v569, v570, v571, v572, v573);
        }

        else
        {

          sub_1001AC1E4(v524, type metadata accessor for Peer);
        }

        v574 = v854;

        v575 = sub_100216754();
        v576 = sub_100216C54();
        if (os_log_type_enabled(v575, v576))
        {
          v577 = swift_slowAlloc();
          *v577 = 134217984;
          *(v577 + 4) = *v574->endpoint;
          v574, v578, v579, v580, v581, v582, v583, v584, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
          _os_log_impl(&_mh_execute_header, v575, v576, "Uploading %ld tlk shares", v577, 0xCu);
        }

        else
        {

          v574, v585, v586, v587, v588, v589, v590, v591, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
        }

        v592 = v836;
        v848 = a19;
        v849 = a20;
        sub_1001A13C4(&qword_100298BE8, type metadata accessor for Peer, &protocol conformance descriptor for Peer);
        v593 = sub_100216624();
        if (v592)
        {
          swift_errorRetain();
          v595 = sub_100216754();
          v596 = sub_100216C54();

          if (os_log_type_enabled(v595, v596))
          {
            v597 = swift_slowAlloc();
            v598 = swift_slowAlloc();
            v859 = v598;
            *v597 = 136446210;
            v857 = v592;
            swift_errorRetain();
            sub_10001148C(&unk_10029D560, qword_10021D450);
            v599 = sub_100216994();
            v601 = v600;
            v602 = sub_100005FB0(v599, v600, &v859);
            v601, v603, v604, v605, v606, v607, v608, v609, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
            *(v597 + 4) = v602;
            _os_log_impl(&_mh_execute_header, v595, v596, "Join unable to encode peer: %{public}s", v597, 0xCu);
            sub_100006128(v598, v610, v611, v612, v613, v614, v615, v616);
          }

          else
          {
          }
        }

        else
        {
          v619 = v593;
          v620 = v594;
          v621 = sub_100216214(0);
          v623 = v622;
          sub_100002BF0(v619, v620, v624, v625, v626, v627, v628, v629);

          v630 = sub_100216754();
          v631 = sub_100216C54();
          v623, v632, v633, v634, v635, v636, v637, v638, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
          if (os_log_type_enabled(v630, v631))
          {
            v646 = swift_slowAlloc();
            v647 = swift_slowAlloc();
            v859 = v647;
            *v646 = 136446210;
            v648 = sub_100005FB0(v621, v623, &v859);
            v623, v649, v650, v651, v652, v653, v654, v655, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
            *(v646 + 4) = v648;
            _os_log_impl(&_mh_execute_header, v630, v631, "Join peer: %{public}s", v646, 0xCu);
            sub_100006128(v647, v656, v657, v658, v659, v660, v661, v662);
          }

          else
          {
            v623, v639, v640, v641, v642, v643, v644, v645, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
          }
        }

        v663 = v856;
        __chkstk_darwin(v617, v618);
        v664 = v849;
        *(&v808 - 4) = v848;
        *(&v808 - 3) = v664;
        v806 = a21;
        v807 = a22;
        sub_1001A13C4(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
        v665 = v828;
        sub_100216654();
        v666 = [*(v663 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) changeToken];
        if (v666)
        {
          v668 = v666;
          v669 = sub_100216974();
          v671 = v670;
        }

        else
        {
          v669 = 0;
          v671 = 0xE000000000000000;
        }

        v672 = v825;
        v847 = &v808;
        __chkstk_darwin(v666, v667);
        *(&v808 - 8) = v669;
        *(&v808 - 7) = v671;
        v673 = v833;
        *(&v808 - 6) = v674;
        *(&v808 - 5) = v673;
        v675 = v854;
        v676 = v838;
        *(&v808 - 4) = v854;
        *(&v808 - 3) = v676;
        v677 = v856;
        v806 = v856;
        v807 = v665;
        sub_1001A13C4(&unk_10029D870, type metadata accessor for JoinWithVoucherRequest, &protocol conformance descriptor for JoinWithVoucherRequest);
        sub_100216654();
        v676, v678, v679, v680, v681, v682, v683, v684, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
        v675, v685, v686, v687, v688, v689, v690, v691, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
        v671, v692, v693, v694, v695, v696, v697, v698, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
        v699 = v850;
        v700 = [(__CFString *)v850 includedPeerIDs];
        v701 = &protocol witness table for String;
        v702 = sub_100216BB4();

        v703 = *v702->endpoint;
        v702, v704, v705, v706, v707, v708, v709, v710, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
        v711 = [(__CFString *)v699 excludedPeerIDs];
        v712 = sub_100216BB4();

        v713 = *v712->endpoint;
        v712, v714, v715, v716, v717, v718, v719, v720, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
        if (__OFADD__(v703, v713))
        {
          __break(1u);
        }

        else
        {
          v665 = sub_100216C14().super.super.isa;
          v672 = v809;
          v839 = [*&v809[v677] countTotalNumberOfRecoveryKeys];
          v840 = [*&v672[v677] countOfDistrustedRecoveryKeys];
          v721 = *&v672[v677];
          v859 = 0;
          v722 = [v721 isRecoveryKeyEnrolledWithError:&v859];
          v723 = v859;
          v702 = v677;
          if (v859)
          {
            swift_willThrow();
            v724 = v723;
            v725 = sub_100216754();
            v726 = sub_100216C74();

            if (os_log_type_enabled(v725, v726))
            {
              v727 = swift_slowAlloc();
              v728 = swift_slowAlloc();
              *v727 = 138543362;
              v729 = v724;
              v730 = _swift_stdlib_bridgeErrorToNSError();
              *(v727 + 4) = v730;
              *v728 = v730;
              _os_log_impl(&_mh_execute_header, v725, v726, "Error determining whether Recovery Key is enrolled: %{public}@", v727, 0xCu);
              sub_1000114D4(v728, &qword_10029D580, &unk_10021CCC0);

              v702 = v856;
            }

            v731 = [objc_allocWithZone(NSNumber) initWithInteger:0];
          }

          else
          {
            v731 = [objc_allocWithZone(NSNumber) initWithInteger:v722];
          }

          LODWORD(v842) = a25;
          v854 = a24;
          v841 = a23;
          v732 = *&v672[v702];
          v847 = v731;
          v733 = [v732 allCustodianRecoveryKeys];
          sub_10000200C(0, &qword_10029D590, TPCustodianRecoveryKey_ptr);
          v701 = sub_100216B24();

          v712 = v821;
          if (!(v701 >> 62))
          {
            goto LABEL_106;
          }
        }

        sub_1002170F4();
LABEL_106:
        v701, v734, v735, v736, v737, v738, v739, v740, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
        v741 = sub_100216C14().super.super.isa;
        [*&v672[v702] countTotalTrustedCustodians];
        v742 = sub_100216E14().super.super.isa;
        v743 = [(__CFString *)v850 preapprovals];
        v744 = sub_100216BB4();

        v744, v745, v746, v747, v748, v749, v750, v751, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
        v752 = sub_100216C14().super.super.isa;
        sub_10001148C(&qword_1002983D8, &unk_10021DE60);
        v753 = swift_allocObject();
        *(v753 + 16) = xmmword_10021D5F0;
        v859 = sub_100216974();
        v860 = v754;
        sub_100216F74();
        v755 = sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
        *(v753 + 96) = v755;
        *(v753 + 72) = v665;
        v859 = sub_100216974();
        v860 = v756;
        v838 = v665;
        sub_100216F74();
        v757.super.super.isa = sub_100216C14().super.super.isa;
        *(v753 + 168) = v755;
        *(v753 + 144) = v757;
        v859 = sub_100216974();
        v860 = v758;
        sub_100216F74();
        *(v753 + 240) = &type metadata for UInt;
        *(v753 + 216) = v839;
        v859 = sub_100216974();
        v860 = v759;
        sub_100216F74();
        *(v753 + 312) = &type metadata for UInt;
        *(v753 + 288) = v840;
        v859 = sub_100216974();
        v860 = v760;
        sub_100216F74();
        *(v753 + 384) = v755;
        *(v753 + 360) = v741;
        v859 = sub_100216974();
        v860 = v761;
        v840 = v741;
        sub_100216F74();
        *(v753 + 456) = v755;
        *(v753 + 432) = v847;
        v859 = sub_100216974();
        v860 = v762;
        sub_100216F74();
        *(v753 + 528) = v755;
        *(v753 + 504) = v742;
        v859 = sub_100216974();
        v860 = v763;
        v839 = v742;
        sub_100216F74();
        *(v753 + 600) = v755;
        *(v753 + 576) = v752;
        v837 = v752;
        v764 = sub_100019254(v753);
        swift_setDeallocating();
        sub_10001148C(&unk_1002983E0, &qword_10021D708);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v765 = sub_1002168C4().super.isa;
        v764, v766, v767, v768, v769, v770, v771, v772, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
        [v851 addMetrics:v765];

        v773 = v856;
        v836 = *(v856 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24);
        v834 = *(v856 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32);
        v835 = sub_100006484((v856 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish), v836);
        sub_1001AC0A0(v843, v712, type metadata accessor for Peer);
        v774 = (*(v820 + 80) + 65) & ~*(v820 + 80);
        v775 = (v846 + v774 + 7) & 0xFFFFFFFFFFFFFFF8;
        v776 = v712;
        v777 = (v775 + 15) & 0xFFFFFFFFFFFFFFF8;
        v778 = (v777 + 15) & 0xFFFFFFFFFFFFFFF8;
        v779 = (v778 + 15) & 0xFFFFFFFFFFFFFFF8;
        v780 = swift_allocObject();
        v782 = v849;
        v781 = v850;
        *(v780 + 16) = v773;
        *(v780 + 24) = v781;
        v783 = v854;
        *(v780 + 32) = v841;
        *(v780 + 40) = v783;
        *(v780 + 48) = v848;
        *(v780 + 56) = v782;
        *(v780 + 64) = v842 & 1;
        sub_1001AC038(v776, v780 + v774, type metadata accessor for Peer);
        v784 = v855;
        *(v780 + v775) = v855;
        v785 = v810;
        *(v780 + v777) = v810;
        v786 = v851;
        *(v780 + v778) = v851;
        v787 = (v780 + v779);
        v788 = v845;
        *v787 = v844;
        v787[1] = v788;
        v789 = (v780 + ((v779 + 23) & 0xFFFFFFFFFFFFFFF8));
        v790 = v853;
        *v789 = v852;
        v789[1] = v790;
        v791 = *(v834 + 16);
        v792 = *(v791 + 24);

        v793 = v784;
        v794 = v785;
        v795 = v786;

        v796 = v850;

        v797 = v856;

        v798 = v829;
        v792(v829, sub_1001AA258, v780, v836, v791);

        v780, v799, v800, v801, v802, v803, v804, v805;
        sub_1001AC1E4(v798, type metadata accessor for JoinWithVoucherRequest);
        sub_1001AC1E4(v828, type metadata accessor for Metrics);
        sub_1001AC1E4(v833, type metadata accessor for Bottle);
        v175 = v843;
        return sub_1001AC1E4(v175, type metadata accessor for Peer);
      }

      v204 = v859;
      v854, v205, v206, v207, v208, v209, v210, v211, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
      v838, v212, v213, v214, v215, v216, v217, v218, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
      v219 = sub_100216154();

      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v220 = sub_100216774();
      sub_100002648(v220, qword_10029D160);
      swift_errorRetain();
      v221 = sub_100216754();
      v222 = sub_100216C74();

      if (os_log_type_enabled(v221, v222))
      {
        v223 = swift_slowAlloc();
        v224 = swift_slowAlloc();
        v859 = v224;
        *v223 = 136446210;
        v857 = v219;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v225 = sub_100216994();
        v227 = v226;
        v228 = sub_100005FB0(v225, v226, &v859);
        v227, v229, v230, v231, v232, v233, v234, v235, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817;
        *(v223 + 4) = v228;
        _os_log_impl(&_mh_execute_header, v221, v222, "Error checking introduction: %{public}s", v223, 0xCu);
        sub_100006128(v224, v236, v237, v238, v239, v240, v241, v242);
      }

      v243 = v810;
      v244 = sub_100216144();
      [v851 sendMetricWithResult:0 error:v244];

      swift_errorRetain();
      v844(0, 0, _swiftEmptyArrayStorage, 0, v219);
    }

    v175 = v180;
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v165 = sub_100216774();
    sub_100002648(v165, qword_10029D160);
    v166 = sub_100216754();
    v167 = sub_100216C54();
    v168 = os_log_type_enabled(v166, v167);
    v169 = v843;
    if (v168)
    {
      v170 = swift_slowAlloc();
      *v170 = 0;
      _os_log_impl(&_mh_execute_header, v166, v167, "Unable to create new peer stable info for joining", v170, 2u);
    }

    sub_1000561D0();
    swift_allocError();
    v856 = xmmword_10021DC20;
    *v171 = xmmword_10021DC20;
    *(v171 + 16) = 13;
    v172 = sub_100216144();

    [v851 sendMetricWithResult:0 error:v172];

    v173 = swift_allocError();
    *v174 = v856;
    *(v174 + 16) = 13;
    v844(0, 0, _swiftEmptyArrayStorage, 0, v173);

    v175 = v169;
  }

  return sub_1001AC1E4(v175, type metadata accessor for Peer);
}

void sub_10015CED8(uint64_t a1, id a2)
{
  v4 = [a2 data];
  v5 = sub_100216224();
  v7 = v6;

  sub_100002BF0(*a1, *(a1 + 8), v8, v9, v10, v11, v12, v13);
  *a1 = v5;
  *(a1 + 8) = v7;
  v14 = [a2 sig];
  v15 = sub_100216224();
  v17 = v16;

  sub_100002BF0(*(a1 + 16), *(a1 + 24), v18, v19, v20, v21, v22, v23);
  *(a1 + 16) = v15;
  *(a1 + 24) = v17;
}

uint64_t sub_10015CF84(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  v102 = a8;
  v100 = a7;
  v99 = a6;
  v98 = a5;
  v95 = a4;
  v94 = a3;
  v93 = a2;
  v10 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  __chkstk_darwin(v10 - 8, v11);
  v109 = &v93 - v12;
  v13 = type metadata accessor for Metrics(0);
  v107 = *(v13 - 8);
  v108 = v13;
  __chkstk_darwin(v13, v14);
  v106 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  __chkstk_darwin(v16 - 8, v17);
  v105 = &v93 - v18;
  v19 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v103 = *(v19 - 8);
  v104 = v19;
  __chkstk_darwin(v19, v20);
  v101 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  __chkstk_darwin(v22 - 8, v23);
  v25 = &v93 - v24;
  v97 = type metadata accessor for Bottle(0);
  v96 = *(v97 - 1);
  __chkstk_darwin(v97, v26);
  v28 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  __chkstk_darwin(v29 - 8, v30);
  v32 = &v93 - v31;
  v33 = type metadata accessor for Peer(0);
  v34 = *(v33 - 8);
  __chkstk_darwin(v33, v35);
  v37 = &v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(a1 + v38);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v40 = sub_1000C12E8(v40);
    *(a1 + v38) = v40;
  }

  swift_beginAccess();
  v41 = *v40->containerMap;
  v42 = v94;
  *v40->endpoint = v93;
  *v40->containerMap = v42;

  v41, v43, v44, v45, v46, v47, v48, v49, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102;
  sub_1001AC0A0(v95, v37, type metadata accessor for Peer);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *(a1 + v38);
  if ((v50 & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v51 = sub_1000C12E8(v51);
    *(a1 + v38) = v51;
  }

  sub_1001AC038(v37, v32, type metadata accessor for Peer);
  (*(v34 + 56))(v32, 0, 1, v33);
  v52 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_1000F9E80(v32, &v51->_TtCs12_SwiftObject_opaque[v52], &unk_10029D7A0, &qword_10021E858);
  swift_endAccess();
  sub_1001AC0A0(v98, v28, type metadata accessor for Bottle);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *(a1 + v38);
  if ((v53 & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v54 = sub_1000C12E8(v54);
    *(a1 + v38) = v54;
  }

  v55 = v104;
  v56 = v101;
  sub_1001AC038(v28, v25, type metadata accessor for Bottle);
  (*(v96 + 7))(v25, 0, 1, v97);
  v57 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_1000F9E80(v25, &v54->_TtCs12_SwiftObject_opaque[v57], &unk_10029D880, &qword_10021E830);
  swift_endAccess();
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *(a1 + v38);
  if ((v58 & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v59 = sub_1000C12E8(v59);
    *(a1 + v38) = v59;
  }

  v60 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v61 = *&v59->_TtCs12_SwiftObject_opaque[v60];
  *&v59->_TtCs12_SwiftObject_opaque[v60] = v99;

  v61, v62, v63, v64, v65, v66, v67, v68, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102;
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *(a1 + v38);
  if ((v69 & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v70 = sub_1000C12E8(v70);
    *(a1 + v38) = v70;
  }

  v71 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v72 = *&v70->_TtCs12_SwiftObject_opaque[v71];
  *&v70->_TtCs12_SwiftObject_opaque[v71] = v100;

  v72, v73, v74, v75, v76, v77, v78, v79, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102;
  __chkstk_darwin(v80, v81);
  *(&v93 - 2) = v102;
  sub_1001A13C4(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion, &protocol conformance descriptor for IdmsTrustedDevicesVersion);
  sub_100216654();
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *(a1 + v38);
  if ((v82 & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v83 = sub_1000C12E8(v83);
    *(a1 + v38) = v83;
  }

  v84 = v56;
  v85 = v105;
  sub_1001AC038(v84, v105, type metadata accessor for IdmsTrustedDevicesVersion);
  (*(v103 + 56))(v85, 0, 1, v55);
  v86 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  swift_beginAccess();
  sub_1000F9E80(v85, &v83->_TtCs12_SwiftObject_opaque[v86], &qword_10029D770, &qword_10021E860);
  swift_endAccess();
  v87 = v106;
  sub_1001AC0A0(a9, v106, type metadata accessor for Metrics);
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *(a1 + v38);
  if ((v88 & 1) == 0)
  {
    type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    swift_allocObject();
    v89 = sub_1000C12E8(v89);
    *(a1 + v38) = v89;
  }

  v90 = v109;
  sub_1001AC038(v87, v109, type metadata accessor for Metrics);
  (*(v107 + 56))(v90, 0, 1, v108);
  v91 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_1000F9E80(v90, &v89->_TtCs12_SwiftObject_opaque[v91], &qword_100297FE0, &unk_10021E7F0);
  return swift_endAccess();
}

void sub_10015D8A0(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void (*a13)(void, void, void *, void, uint64_t), uint64_t a14, void *a15, void *a16)
{
  v118 = a8;
  v116 = a4;
  v117 = a6;
  v124 = a3;
  v125 = a5;
  v121 = a14;
  v122 = a7;
  v119 = a13;
  v120 = a2;
  v123 = a12;
  v17 = type metadata accessor for Peer(0);
  v113 = *(v17 - 8);
  v18 = v113[8];
  __chkstk_darwin(v17 - 8, v19);
  v20 = type metadata accessor for JoinWithVoucherResponse(0);
  v112 = *(v20 - 8);
  v21 = v112[8];
  v23 = __chkstk_darwin(v20 - 8, v22);
  v24 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v25);
  v27 = &v106 - v26;
  v28 = sub_10001148C(&qword_1002984F0, &unk_10021DF60);
  __chkstk_darwin(v28, v29);
  v31 = (&v106 - v30);
  sub_100019C6C(a1, &v106 - v30, &qword_1002984F0, &unk_10021DF60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v119;
    v33 = v123;
    v34 = *v31;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v35 = sub_100216774();
    sub_100002648(v35, qword_10029D160);
    swift_errorRetain();
    v36 = sub_100216754();
    v37 = sub_100216C74();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136446210;
      v128 = v34;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v40 = sub_100216994();
      v42 = v41;
      v43 = sub_100005FB0(v40, v41, aBlock);
      v42, v44, v45, v46, v47, v48, v49, v50, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115;
      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "joinWithVoucher failed: %{public}s", v38, 0xCu);
      sub_100006128(v39, v51, v52, v53, v54, v55, v56, v57);
    }

    v58 = sub_100216144();
    [v33 sendMetricWithResult:0 error:v58];

    swift_errorRetain();
    v32(0, 0, _swiftEmptyArrayStorage, 0, v34);
  }

  else
  {
    v109 = a16;
    v108 = a15;
    v114 = a10;
    v115 = a11;
    v107 = type metadata accessor for JoinWithVoucherResponse;
    v110 = v27;
    sub_1001AC038(v31, v27, type metadata accessor for JoinWithVoucherResponse);
    v59 = *&v120[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v106 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v60 = v120;
    v111 = v59;
    sub_1001AC0A0(a9, v106, type metadata accessor for Peer);
    sub_1001AC0A0(v27, v24, type metadata accessor for JoinWithVoucherResponse);
    v61 = (*(v113 + 80) + 72) & ~*(v113 + 80);
    v62 = (v18 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
    v64 = (*(v112 + 80) + v63 + 8) & ~*(v112 + 80);
    v65 = (v21 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
    v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
    v67 = (v66 + 23) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    v69 = v116;
    *(v68 + 16) = v124;
    *(v68 + 24) = v69;
    v70 = v117;
    *(v68 + 32) = v125;
    *(v68 + 40) = v70;
    *(v68 + 48) = v122;
    *(v68 + 56) = v118 & 1;
    *(v68 + 64) = v60;
    sub_1001AC038(v106, v68 + v61, type metadata accessor for Peer);
    v71 = v115;
    *(v68 + v62) = v114;
    *(v68 + v63) = v71;
    sub_1001AC038(v24, v68 + v64, v107);
    v72 = v123;
    *(v68 + v65) = v123;
    v73 = (v68 + v66);
    v74 = v121;
    *v73 = v119;
    v73[1] = v74;
    v75 = (v68 + v67);
    v76 = v109;
    *v75 = v108;
    v75[1] = v76;
    v77 = swift_allocObject();
    *v77->endpoint = sub_1001AA348;
    *v77->containerMap = v68;
    aBlock[4] = sub_1001ACCC0;
    v127 = v77;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_1002835A8;
    v78 = _Block_copy(aBlock);
    v79 = v127;

    v80 = v120;
    v81 = v114;
    v82 = v115;
    v83 = v72;

    v84 = v124;

    v79, v85, v86, v87, v88, v89, v90, v91;
    [v111 performBlockAndWait:v78];
    _Block_release(v78);
    sub_1001AC1E4(v110, type metadata accessor for JoinWithVoucherResponse);
    LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();
    v68, v92, v93, v94, v95, v96, v97, v98;
    v77, v99, v100, v101, v102, v103, v104, v105;
    if (v78)
    {
      __break(1u);
    }
  }
}

void sub_10015DF74(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, _TtC18TrustedPeersHelper6Client *a8, void *a9, void *a10, uint64_t *a11, void *a12, void (*a13)(id, uint64_t, _TtC18TrustedPeersHelper6Client *, void *, void), uint64_t a14, void *a15, char *a16)
{
  v156 = a8;
  v157 = a7;
  LODWORD(v154) = a6;
  v153 = a5;
  v152 = a4;
  v151 = a2;
  v160 = sub_100216424();
  v143 = *(v160 - 8);
  v19 = __chkstk_darwin(v160, v18);
  v159 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v21);
  v158 = &v143 - v22;
  v23 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  __chkstk_darwin(v23 - 8, v24);
  v146 = &v143 - v25;
  v145 = type metadata accessor for Changes(0);
  v144 = *(v145 - 1);
  __chkstk_darwin(v145, v26);
  v147 = (&v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v30 = __chkstk_darwin(v28 - 8, v29);
  v150 = &v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v32);
  v34 = &v143 - v33;
  v155 = type metadata accessor for SignedPeerStableInfo(0);
  v35 = *(v155 - 1);
  v37 = __chkstk_darwin(v155, v36);
  v39 = &v143 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37, v40);
  v42 = &v143 - v41;
  sub_10001148C(&qword_1002983D8, &unk_10021DE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D600;
  v161 = sub_100216974();
  v162 = v44;
  sub_100216F74();
  v45 = [a1 includedPeerIDs];
  v46 = sub_100216BB4();

  v46, v47, v48, v49, v50, v51, v52, v53, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152;
  isa = sub_100216C14().super.super.isa;
  *(inited + 96) = sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
  *(inited + 72) = isa;
  v55 = sub_100019254(inited);
  swift_setDeallocating();
  sub_1000114D4(inited + 32, &unk_1002983E0, &qword_10021D708);
  v56 = kSecurityRTCEventNameNumberOfTrustedOctagonPeers;
  sub_1001A9F94();
  v58 = v57;
  v59.super.isa = sub_1002168C4().super.isa;
  v55, v60, v61, v62, v63, v64, v65, v66, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152;
  if (a3)
  {
    v67 = sub_100216964();
  }

  else
  {
    v67 = 0;
  }

  v68 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v153)
  {
    v69 = sub_100216964();
  }

  else
  {
    v69 = 0;
  }

  v149 = a10;
  v148 = a9;
  v70 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  LOBYTE(v142) = v154 & 1;
  v71 = [v70 initWithKeychainCircleMetrics:v59.super.isa altDSID:v67 flowID:v69 deviceSessionID:0 eventName:v56 testsAreEnabled:v58 canSendMetrics:v142 category:v68];

  v151 = v71;
  [v71 sendMetricWithResult:1 error:0];
  v72 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v73 = *(v157 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
  v74 = *(type metadata accessor for Peer(0) + 32);
  sub_100019C6C(&v156->_TtCs12_SwiftObject_opaque[v74], v34, &qword_1002985A8, &unk_100226650);
  v75 = *(v35 + 48);
  v76 = v155;
  if (v75(v34, 1, v155) == 1)
  {
    *v42 = xmmword_10021D470;
    *(v42 + 1) = xmmword_10021D470;
    v77 = v73;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v75(v34, 1, v76) != 1)
    {
      sub_1000114D4(v34, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    sub_1001AC038(v34, v42, type metadata accessor for SignedPeerStableInfo);
    v78 = v73;
  }

  v153 = a14;
  v154 = a13;
  v152 = a12;
  v79 = *v42;
  v80 = *(v42 + 1);
  sub_100012558(*v42, v80);
  sub_1001AC1E4(v42, type metadata accessor for SignedPeerStableInfo);
  v81 = sub_100216204().super.isa;
  sub_100002BF0(v79, v80, v82, v83, v84, v85, v86, v87);
  [v73 setEgoPeerStableInfo:v81];

  v88 = *(v157 + v72);
  v89 = v150;
  sub_100019C6C(&v156->_TtCs12_SwiftObject_opaque[v74], v150, &qword_1002985A8, &unk_100226650);
  v90 = v155;
  if (v75(v89, 1, v155) == 1)
  {
    *v39 = xmmword_10021D470;
    *(v39 + 1) = xmmword_10021D470;
    v91 = v88;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v75(v89, 1, v90) != 1)
    {
      sub_1000114D4(v89, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    sub_1001AC038(v89, v39, type metadata accessor for SignedPeerStableInfo);
    v92 = v88;
  }

  v93 = *(v39 + 2);
  v94 = *(v39 + 3);
  sub_100012558(v93, v94);
  sub_1001AC1E4(v39, type metadata accessor for SignedPeerStableInfo);
  v95 = sub_100216204().super.isa;
  sub_100002BF0(v93, v94, v96, v97, v98, v99, v100, v101);
  [v88 setEgoPeerStableInfoSig:v95];

  v102 = [v148 modelID];
  v103 = sub_100216974();
  v105 = v104;

  v106 = sub_100151404(v103, v105, v149);
  v105, v107, v108, v109, v110, v111, v112, v113, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152;
  v114 = type metadata accessor for JoinWithVoucherResponse(0);
  v115 = v146;
  sub_100019C6C(a11 + *(v114 + 24), v146, &unk_10029D750, &qword_10021E850);
  v116 = *(v144 + 6);
  v117 = v145;
  if (v116(v115, 1, v145) == 1)
  {
    v118 = v147;
    *v147 = 0;
    *(v118 + 1) = 0xE000000000000000;
    *(v118 + 2) = _swiftEmptyArrayStorage;
    *(v118 + 24) = xmmword_10021D470;
    *(v118 + 40) = xmmword_10021D470;
    v118[56] = 0;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v116(v115, 1, v117) != 1)
    {
      sub_1000114D4(v115, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    v118 = v147;
    sub_1001AC038(v115, v147, type metadata accessor for Changes);
  }

  sub_100174C2C(v118, 0);
  sub_1001AC1E4(v118, type metadata accessor for Changes);
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v155 = v106;
  v150 = a16;
  v149 = a15;
  v119 = sub_100216774();
  sub_100002648(v119, qword_10029D160);
  v120 = sub_100216754();
  v121 = sub_100216C54();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    *v122 = 0;
    _os_log_impl(&_mh_execute_header, v120, v121, "JoinWithVoucher succeeded", v122, 2u);
  }

  v123 = *a11;
  v161 = _swiftEmptyArrayStorage;
  v124 = *(v123 + 16);
  if (v124)
  {
    v157 = sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    v125 = *(v143 + 2);
    v126 = v123 + ((v143[80] + 32) & ~v143[80]);
    v127 = *(v143 + 9);
    v128 = (v143 + 8);
    v156 = _swiftEmptyArrayStorage;
    do
    {
      v129 = v158;
      v130 = v160;
      v125(v158, v126, v160);
      v125(v159, v129, v130);
      v131 = sub_100216D94();
      (*v128)(v129, v130);
      if (v131)
      {
        sub_100216B04();
        if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100216B44();
        }

        sub_100216B64();
        v156 = v161;
      }

      v126 += v127;
      --v124;
    }

    while (v124);
  }

  else
  {
    v156 = _swiftEmptyArrayStorage;
  }

  [v152 sendMetricWithResult:1 error:0];
  v132 = v155;
  v133 = v155;
  v134 = v156;
  v154(v149, v150, v156, v132, 0);

  v134, v135, v136, v137, v138, v139, v140, v141, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152;
}

uint64_t sub_10015ED74(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a2)
  {
    v7 = sub_100216C74();
  }

  else
  {
    v7 = sub_100216C54();
  }

  v8 = v7;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  swift_errorRetain();
  v10 = sub_100216754();

  if (os_log_type_enabled(v10, v8))
  {
    v46 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v51 = v12;
    *v11 = 136446210;
    v13 = 0xE700000000000000;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v56._countAndFlagsBits = sub_100216994();
      object = v56._object;
      sub_100216A14(v56);
      object, v15, v16, v17, v18, v19, v20, v21, v45, v46, a2, 0x203A726F727265, 0xE700000000000000, v51, v52, v53, v54, v55;

      v22 = v49;
      v13 = v50;
    }

    else
    {
      v22 = 0x73736563637573;
    }

    v29 = sub_100005FB0(v22, v13, &v51);
    v13, v30, v31, v32, v33, v34, v35, v36, v45, v46, v48, v49, v50, v51, v52, v53, v54, v55;
    *(v11 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v10, v8, "escrow check complete: %{public}s", v11, 0xCu);
    sub_100006128(v12, v37, v38, v39, v40, v41, v42, v43);

    a4 = v47;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000074, 0x800000010023C300, v23, v24, v25, v26, v27, v28);
  return a4(a1, a2);
}

uint64_t sub_10015EFB4(uint64_t a1, void *a2, void (*a3)(void, void), void *a4, void *a5, void *a6, void *a7, uint64_t a8, void *a9, unsigned __int8 a10, void *a11, unsigned __int8 a12)
{
  v70 = a7;
  v71 = a8;
  HIDWORD(v75) = a12;
  v74 = a11;
  HIDWORD(v73) = a10;
  v72 = a9;
  v18 = type metadata accessor for GetEscrowCheckRequest(0);
  __chkstk_darwin(v18, v19);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Metrics(0);
  __chkstk_darwin(v22, v23);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a1;
  v26 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (v26)
  {
    v27 = v26;
    v28 = sub_100216974();
    v68 = a2;
    v69 = a4;
    v29 = v28;
    v31 = v30;

    v67 = a3;
    __chkstk_darwin(v32, v33);
    *(&v66 - 4) = a5;
    *(&v66 - 3) = a6;
    v34 = v71;
    *(&v66 - 2) = v70;
    *(&v66 - 1) = v34;
    sub_1001A13C4(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
    v35 = sub_100216654();
    __chkstk_darwin(v35, v36);
    *(&v66 - 8) = v29;
    *(&v66 - 7) = v31;
    *(&v66 - 6) = v72;
    *(&v66 - 40) = BYTE4(v73) & 1;
    *(&v66 - 4) = v74;
    *(&v66 - 3) = v25;
    *(&v66 - 16) = BYTE4(v75) & 1;
    sub_1001A13C4(&qword_100298F00, type metadata accessor for GetEscrowCheckRequest, &protocol conformance descriptor for GetEscrowCheckRequest);
    sub_100216654();
    v31, v37, v38, v39, v40, v41, v42, v43, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75;
    v44 = *(v76 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24);
    v45 = *(v76 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32);
    sub_100006484((v76 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish), v44);
    v46 = swift_allocObject();
    v48 = v67;
    v47 = v68;
    *(v46 + 16) = v68;
    *(v46 + 24) = v48;
    *(v46 + 32) = v69;
    v49 = *(v45 + 16);
    v50 = *(v49 + 96);
    v51 = v47;

    v50(v21, sub_1001A942C, v46, v44, v49);
    v46, v52, v53, v54, v55, v56, v57, v58;
    sub_1001AC1E4(v21, type metadata accessor for GetEscrowCheckRequest);
    return sub_1001AC1E4(v25, type metadata accessor for Metrics);
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v60 = sub_100216774();
    sub_100002648(v60, qword_10029D160);
    v61 = sub_100216754();
    v62 = sub_100216C54();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "escrow check: No identity.", v63, 2u);
    }

    [a2 setNeedsReenroll:0];
    [a2 setOctagonTrusted:0];
    sub_1000561D0();
    v64 = swift_allocError();
    *v65 = xmmword_10021DA90;
    *(v65 + 16) = 13;
    a3(a2, v64);
  }
}

void sub_10015F488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7, int a8)
{
  HIDWORD(v54) = a8;
  v53 = a7;
  v14 = type metadata accessor for Metrics(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 8);

  v19, v20, v21, v22, v23, v24, v25, v26, v52, v53, v54, v55[0], v55[1], v55[2], v56, v57, v58, v59;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 24) = a4;
  *(a1 + 16) = a5;
  v27 = *(a1 + 32);

  v27, v28, v29, v30, v31, v32, v33, v34, v52, v53, v54, v55[0], v55[1], v55[2], v56, v57, v58, v59;
  *(a1 + 32) = a6;
  sub_1001AC0A0(v53, v18, type metadata accessor for Metrics);
  v35 = *(type metadata accessor for GetEscrowCheckRequest(0) + 48);
  sub_1000114D4(a1 + v35, &qword_100297FE0, &unk_10021E7F0);
  sub_1001AC038(v18, a1 + v35, type metadata accessor for Metrics);
  (*(v15 + 56))(a1 + v35, 0, 1, v14);
  v56 = &type metadata for SecurityFeatures;
  v36 = sub_1001A9438();
  v57 = v36;
  LOBYTE(v55[0]) = 2;
  LOBYTE(v35) = sub_100216434();
  sub_100006128(v55, v37, v38, v39, v40, v41, v42, v43);
  if (v35)
  {
    *(a1 + 40) = 1;
  }

  v56 = &type metadata for SecurityFeatures;
  v57 = v36;
  LOBYTE(v55[0]) = 3;
  v44 = sub_100216434();
  sub_100006128(v55, v45, v46, v47, v48, v49, v50, v51);
  if (v44)
  {
    *(a1 + 41) = 1;
  }

  *(a1 + 42) = BYTE4(v54) & 1;
}

uint64_t sub_10015F6A0(uint64_t a1, void *a2, void (*a3)(id, uint64_t))
{
  v108 = a3;
  v5 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  v6 = *(v5 - 1);
  v106 = v5;
  v107 = v6;
  v8 = __chkstk_darwin(v5, v7);
  v105 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8, v10);
  v103 = (&v99 - v12);
  __chkstk_darwin(v11, v13);
  v101 = &v99 - v14;
  v15 = sub_10001148C(&unk_10029D720, &qword_10021E868);
  v17 = __chkstk_darwin(v15 - 8, v16);
  v104 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17, v19);
  v102 = &v99 - v21;
  v23 = __chkstk_darwin(v20, v22);
  v100 = &v99 - v24;
  __chkstk_darwin(v23, v25);
  v27 = &v99 - v26;
  v28 = type metadata accessor for GetEscrowCheckResponse(0);
  __chkstk_darwin(v28, v29);
  v31 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10001148C(&qword_100298480, &qword_10021DEF0);
  __chkstk_darwin(v32, v33);
  v35 = (&v99 - v34);
  sub_100019C6C(a1, &v99 - v34, &qword_100298480, &qword_10021DEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v35;
    swift_errorRetain();
    v108(0, v36);
  }

  else
  {
    v38 = v108;
    sub_1001AC038(v35, v31, type metadata accessor for GetEscrowCheckResponse);
    [a2 setRepairReason:*(v31 + 2)];
    [a2 setRepairDisabled:v31[41]];
    if (v31[8] == 1)
    {
      v39 = *v31 & 0xFLL;
      v40 = 4u >> v39;
      v41 = 6u >> v39;
    }

    else
    {
      LOBYTE(v40) = 0;
      LOBYTE(v41) = 0;
    }

    [a2 setNeedsReenroll:v40 & 1];
    v99 = a2;
    [a2 setOctagonTrusted:v41 & 1];
    v42 = *(v28 + 40);
    v43 = v31;
    sub_100019C6C(&v31[v42], v27, &unk_10029D720, &qword_10021E868);
    v44 = v107 + 48;
    v45 = *(v107 + 6);
    v46 = v45(v27, 1, v106);
    sub_1000114D4(v27, &unk_10029D720, &qword_10021E868);
    if (v46 == 1)
    {
      v47 = 0;
      v48 = v43;
      v49 = v99;
    }

    else
    {
      v47 = [objc_allocWithZone(OTEscrowMoveRequestContext) init];
      v48 = v43;
      if (v47)
      {
        v50 = v100;
        sub_100019C6C(&v43[v42], v100, &unk_10029D720, &qword_10021E868);
        v51 = v106;
        v52 = v45(v50, 1, v106);
        v107 = v44;
        if (v52 == 1)
        {
          v53 = v101;
          *v101 = 0;
          *(v53 + 1) = 0xE000000000000000;
          *(v53 + 2) = 0;
          *(v53 + 3) = 0xE000000000000000;
          *(v53 + 4) = 0;
          *(v53 + 5) = 0xE000000000000000;
          v54 = v47;
          _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
          v55 = v51[8];
          v56 = type metadata accessor for Metrics(0);
          (*(*(v56 - 8) + 56))(&v53[v55], 1, 1, v56);
          if (v45(v50, 1, v51) != 1)
          {
            sub_1000114D4(v50, &unk_10029D720, &qword_10021E868);
          }
        }

        else
        {
          v53 = v101;
          sub_1001AC038(v50, v101, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
          v57 = v47;
        }

        v58 = *(v53 + 1);

        sub_1001AC1E4(v53, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
        v59 = sub_100216964();
        v58, v60, v61, v62, v63, v64, v65, v66, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108;
        [v47 setEscrowRecordLabel:v59];

        v67 = v102;
        sub_100019C6C(v48 + v42, v102, &unk_10029D720, &qword_10021E868);
        if (v45(v67, 1, v51) == 1)
        {
          v68 = v103;
          *v103 = 0;
          v68[1] = 0xE000000000000000;
          v68[2] = 0;
          v68[3] = 0xE000000000000000;
          v68[4] = 0;
          v68[5] = 0xE000000000000000;
          _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
          v69 = v51[8];
          v70 = type metadata accessor for Metrics(0);
          v71 = v68 + v69;
          v72 = v68;
          (*(*(v70 - 8) + 56))(v71, 1, 1, v70);
          v73 = v45(v67, 1, v51) == 1;
          v74 = v67;
          v75 = v105;
          if (!v73)
          {
            sub_1000114D4(v74, &unk_10029D720, &qword_10021E868);
          }
        }

        else
        {
          v72 = v103;
          sub_1001AC038(v67, v103, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
          v75 = v105;
        }

        v76 = *(v72 + 24);

        sub_1001AC1E4(v72, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
        v77 = sub_100216964();
        v76, v78, v79, v80, v81, v82, v83, v84, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108;
        [v47 setCurrentFederation:v77];

        v85 = v48 + v42;
        v86 = v104;
        sub_100019C6C(v85, v104, &unk_10029D720, &qword_10021E868);
        if (v45(v86, 1, v51) == 1)
        {
          *v75 = 0;
          *(v75 + 1) = 0xE000000000000000;
          *(v75 + 2) = 0;
          *(v75 + 3) = 0xE000000000000000;
          *(v75 + 4) = 0;
          *(v75 + 5) = 0xE000000000000000;
          _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
          v87 = v51[8];
          v88 = type metadata accessor for Metrics(0);
          (*(*(v88 - 8) + 56))(&v75[v87], 1, 1, v88);
          v89 = v45(v86, 1, v51);
          v38 = v108;
          if (v89 != 1)
          {
            sub_1000114D4(v86, &unk_10029D720, &qword_10021E868);
          }
        }

        else
        {
          sub_1001AC038(v86, v75, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
          v38 = v108;
        }

        v90 = *(v75 + 5);

        sub_1001AC1E4(v75, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
        v91 = sub_100216964();
        v90, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108;
        [v47 setIntendedFederation:v91];
      }

      v49 = v99;
      [v99 setMoveRequest:v47];
    }

    v38(v49, 0);

    return sub_1001AC1E4(v48, type metadata accessor for GetEscrowCheckResponse);
  }
}

uint64_t sub_10015FF44(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a2)
  {
    v7 = sub_100216C74();
  }

  else
  {
    v7 = sub_100216C54();
  }

  v8 = v7;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  swift_errorRetain();
  v10 = sub_100216754();

  if (os_log_type_enabled(v10, v8))
  {
    v46 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v51 = v12;
    *v11 = 136446210;
    v13 = 0xE700000000000000;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v56._countAndFlagsBits = sub_100216994();
      object = v56._object;
      sub_100216A14(v56);
      object, v15, v16, v17, v18, v19, v20, v21, v45, v46, a2, 0x203A726F727265, 0xE700000000000000, v51, v52, v53, v54, v55;

      v22 = v49;
      v13 = v50;
    }

    else
    {
      v22 = 0x73736563637573;
    }

    v29 = sub_100005FB0(v22, v13, &v51);
    v13, v30, v31, v32, v33, v34, v35, v36, v45, v46, v48, v49, v50, v51, v52, v53, v54, v55;
    *(v11 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v10, v8, "health check complete: %{public}s", v11, 0xCu);
    sub_100006128(v12, v37, v38, v39, v40, v41, v42, v43);

    a4 = v47;
  }

  else
  {
  }

  sub_10010EEEC(0xD00000000000008ELL, 0x800000010023C270, v23, v24, v25, v26, v27, v28);
  return a4(a1, a2);
}

uint64_t sub_100160184(char *a1, void (*a2)(void, void), void *a3, char *a4, char *a5, char *a6, char *a7, int a8, char *a9, unsigned __int8 a10, unsigned __int8 a11, unsigned __int8 a12, unsigned __int8 a13)
{
  v66 = a6;
  v67 = a7;
  LODWORD(v71) = a8;
  HIDWORD(v71) = a13;
  LODWORD(v70) = a11;
  HIDWORD(v70) = a12;
  HIDWORD(v69) = a10;
  v68 = a9;
  RepairActionRequest = type metadata accessor for GetRepairActionRequest(0);
  __chkstk_darwin(RepairActionRequest, v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Metrics(0);
  __chkstk_darwin(v22, v23);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v26)
  {
    v27 = v26;
    v28 = sub_100216974();
    v65 = a2;
    v29 = v28;
    v63 = a1;
    v31 = v30;

    v64 = a3;
    __chkstk_darwin(v32, v33);
    *(&v63 - 4) = a4;
    *(&v63 - 3) = a5;
    v34 = v67;
    *(&v63 - 2) = v66;
    *(&v63 - 1) = v34;
    sub_1001A13C4(&qword_100298CC8, type metadata accessor for Metrics, &protocol conformance descriptor for Metrics);
    v35 = sub_100216654();
    __chkstk_darwin(v35, v36);
    *(&v63 - 6) = v29;
    *(&v63 - 5) = v31;
    *(&v63 - 32) = v71 & 1;
    *(&v63 - 3) = v68;
    *(&v63 - 16) = BYTE4(v69) & 1;
    *(&v63 - 15) = v70 & 1;
    *(&v63 - 14) = BYTE4(v70) & 1;
    *(&v63 - 13) = BYTE4(v71) & 1;
    *(&v63 - 1) = v25;
    sub_1001A13C4(&unk_10029D710, type metadata accessor for GetRepairActionRequest, &protocol conformance descriptor for GetRepairActionRequest);
    sub_100216654();
    v31, v37, v38, v39, v40, v41, v42, v43, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72;
    v44 = *&v63[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
    v45 = *&v63[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
    sub_100006484(&v63[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v44);
    v46 = swift_allocObject();
    *v46->endpoint = v65;
    *v46->containerMap = v64;
    v47 = *(v45 + 16);
    v48 = *(v47 + 88);

    v48(v21, sub_1001A93D8, v46, v44, v47);
    v46, v49, v50, v51, v52, v53, v54, v55;
    sub_1001AC1E4(v21, type metadata accessor for GetRepairActionRequest);
    return sub_1001AC1E4(v25, type metadata accessor for Metrics);
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v57 = sub_100216774();
    sub_100002648(v57, qword_10029D160);
    v58 = sub_100216754();
    v59 = sub_100216C54();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "requestHealthCheck: No identity.", v60, 2u);
    }

    sub_1000561D0();
    v61 = swift_allocError();
    *v62 = xmmword_10021DA90;
    *(v62 + 16) = 13;
    a2(0, v61);
  }
}

void sub_100160648(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = a1[1];

  v10, v11, v12, v13, v14, v15, v16, v17, v27, v29, v31, v33, v35, v37, v39, v41, vars0, vars8;
  *a1 = v8;
  a1[1] = v9;
  if (a5)
  {
    v18 = a5;
  }

  else
  {
    a4 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = a1[3];

  v19, v20, v21, v22, v23, v24, v25, v26, v28, v30, v32, v34, v36, v38, v40, v42, vars0a, vars8a;
  a1[2] = a4;
  a1[3] = v18;
}

uint64_t sub_1001606DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6, unsigned int a7, unsigned int a8, char a9, void *a10)
{
  v42 = __PAIR64__(a8, a7);
  HIDWORD(v40) = a6;
  v41 = a10;
  v15 = type metadata accessor for Metrics(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 8);

  v20, v21, v22, v23, v24, v25, v26, v27, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v28 = *(a1 + 24);

  v28, v29, v30, v31, v32, v33, v34, v35, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48;
  *(a1 + 24) = a5;
  *(a1 + 32) = BYTE4(v40);
  v36 = BYTE4(v42);
  *(a1 + 33) = v42;
  *(a1 + 35) = v36;
  *(a1 + 34) = a9;
  sub_1001AC0A0(v41, v19, type metadata accessor for Metrics);
  v37 = *(type metadata accessor for GetRepairActionRequest(0) + 48);
  sub_1000114D4(a1 + v37, &qword_100297FE0, &unk_10021E7F0);
  sub_1001AC038(v19, a1 + v37, type metadata accessor for Metrics);
  return (*(v16 + 56))(a1 + v37, 0, 1, v15);
}

uint64_t sub_100160898(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  RepairActionResponse = type metadata accessor for GetRepairActionResponse(0);
  __chkstk_darwin(RepairActionResponse, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001148C(&qword_100298490, &unk_10021DF00);
  __chkstk_darwin(v10, v11);
  v13 = (&v32 - v12);
  sub_100019C6C(a1, &v32 - v12, &qword_100298490, &unk_10021DF00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    swift_errorRetain();
    a2(0, v14);
  }

  else
  {
    sub_1001AC038(v13, v9, type metadata accessor for GetRepairActionResponse);
    v16 = *&v9[*(RepairActionResponse + 20)];
    swift_beginAccess();
    v17 = *(v16 + 24);
    v41 = a3;
    v42 = a2;
    if (v17 == 1)
    {
      v18 = *(v16 + 16);
      LODWORD(v40) = 0x10u >> v18;
      HIDWORD(v40) = 0x20u >> v18;
      LODWORD(v39) = 4u >> v18;
      HIDWORD(v39) = 8u >> v18;
      v38 = 2u >> v18;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      v38 = 0;
    }

    swift_beginAccess();
    v37 = *(v16 + 32);
    swift_beginAccess();
    v36 = *(v16 + 40);
    swift_beginAccess();
    v35 = *(v16 + 48);
    swift_beginAccess();
    v34 = *(v16 + 56);
    swift_beginAccess();
    v33 = *(v16 + 64);
    swift_beginAccess();
    v19 = *(v16 + 72);
    swift_beginAccess();
    v20 = *(v16 + 80);
    swift_beginAccess();
    v21 = *(v16 + 88);
    swift_beginAccess();
    v22 = *(v16 + 96);
    swift_beginAccess();
    v23 = *(v16 + 104);
    swift_beginAccess();
    v24 = *(v16 + 112);
    swift_beginAccess();
    v25 = *(v16 + 120);
    swift_beginAccess();
    v26 = *(v16 + 128);
    v27 = objc_allocWithZone(TrustedPeersHelperHealthCheckResult);
    LOBYTE(v31) = v26;
    LOBYTE(v30) = v21;
    LOBYTE(v29) = v34;
    v28 = [v27 initWithPostRepairCFU:v38 & 1 postEscrowCFU:v39 & 1 resetOctagon:BYTE4(v39) & 1 leaveTrust:v40 & 1 reroll:BYTE4(v40) & 1 totalEscrowRecords:v37 collectableEscrowRecords:v36 collectedEscrowRecords:v35 escrowRecordGarbageCollectionEnabled:v29 totalTlkShares:v33 collectableTlkShares:v19 collectedTlkShares:v20 tlkShareGarbageCollectionEnabled:v30 totalPeers:v22 trustedPeers:v23 superfluousPeers:v24 peersCleanedup:v25 superfluousPeersCleanupEnabled:v31];
    v42(v28, 0);

    return sub_1001AC1E4(v9, type metadata accessor for GetRepairActionResponse);
  }
}

uint64_t sub_100160C78(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void, void, void), void *a6)
{
  if (a3)
  {
    v11 = sub_100216C74();
  }

  else
  {
    v11 = sub_100216C54();
  }

  v12 = v11;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v13 = sub_100216774();
  sub_100002648(v13, qword_10029D160);
  swift_errorRetain();
  v14 = sub_100216754();

  if (os_log_type_enabled(v14, v12))
  {
    v49 = a6;
    v50 = a5;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v55 = v16;
    *v15 = 136446210;
    v17 = 0xE700000000000000;
    if (a3)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v60._countAndFlagsBits = sub_100216994();
      object = v60._object;
      sub_100216A14(v60);
      object, v19, v20, v21, v22, v23, v24, v25, v49, v50, a3, 0x203A726F727265, 0xE700000000000000, v55, v56, v57, v58, v59;

      v26 = v53;
      v17 = v54;
    }

    else
    {
      v26 = 0x73736563637573;
    }

    v33 = sub_100005FB0(v26, v17, &v55);
    v17, v34, v35, v36, v37, v38, v39, v40, v49, v50, v52, v53, v54, v55, v56, v57, v58, v59;
    *(v15 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v14, v12, "getSupportAppInfo complete: %{public}s", v15, 0xCu);
    sub_100006128(v16, v41, v42, v43, v44, v45, v46, v47);

    a5 = v51;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000019, 0x800000010023C250, v27, v28, v29, v30, v31, v32);
  return a5(a1, a2, a3);
}

uint64_t sub_100160EC0(uint64_t a1, void (*a2)(void))
{
  SupportAppInfoResponse = type metadata accessor for GetSupportAppInfoResponse(0);
  __chkstk_darwin(SupportAppInfoResponse, v5);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001148C(&qword_100298470, &unk_10021DEE0);
  __chkstk_darwin(v8, v9);
  v11 = (v46 - v10);
  sub_100019C6C(a1, v46 - v10, &qword_100298470, &unk_10021DEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v13 = sub_100216774();
    sub_100002648(v13, qword_10029D160);
    swift_errorRetain();
    v14 = sub_100216754();
    v15 = sub_100216C74();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v47 = v12;
      v48[0] = v17;
      *v16 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v18 = sub_100216994();
      v20 = v19;
      v21 = sub_100005FB0(v18, v19, v48);
      v20, v22, v23, v24, v25, v26, v27, v28, v46[0], v46[1], v47, v48[0], v48[1], v49, v50, v51, v52, v53;
      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "getSupportAppInfo failed: %{public}s", v16, 0xCu);
      sub_100006128(v17, v29, v30, v31, v32, v33, v34, v35);
    }

    swift_errorRetain();
    (a2)(0, 0xF000000000000000, v12);
  }

  else
  {
    sub_1001AC038(v11, v7, type metadata accessor for GetSupportAppInfoResponse);
    sub_1001A13C4(&unk_10029D700, type metadata accessor for GetSupportAppInfoResponse, &protocol conformance descriptor for GetSupportAppInfoResponse);
    v37 = sub_100216624();
    v39 = v38;
    a2();
    sub_100002BF0(v37, v39, v40, v41, v42, v43, v44, v45);
    return sub_1001AC1E4(v7, type metadata accessor for GetSupportAppInfoResponse);
  }
}

void sub_100161264(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *v6->endpoint = a1;
  *v6->containerMap = a2;
  v7 = qword_100297520;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "beginning a fetchTrustedPeersCount", v11, 2u);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1001ABAB8;
  *(v12 + 24) = v6;
  *(v12 + 32) = v3;
  v13 = *&v3[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = sub_1001ABADC;
  *(v14 + 32) = v12;
  v15 = swift_allocObject();
  *v15->endpoint = sub_1001ACE84;
  *v15->containerMap = v14;
  v55[4] = sub_1001ACCC0;
  v56 = v15;
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 1107296256;
  v55[2] = sub_100109050;
  v55[3] = &unk_100285240;
  v16 = _Block_copy(v55);
  v17 = v56;
  v18 = v3;

  v17, v19, v20, v21, v22, v23, v24, v25;
  [v13 performBlockAndWait:v16];
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v6, v27, v28, v29, v30, v31, v32, v33;
  v12, v34, v35, v36, v37, v38, v39, v40;
  v14, v41, v42, v43, v44, v45, v46, v47;
  v15, v48, v49, v50, v51, v52, v53, v54;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_100161514(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, char *a4)
{
  if (a1)
  {
    (a2)(0, a1, a3, a4);
  }

  else
  {
    v6 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    *(v8 + 32) = a4;
    v9 = swift_allocObject();
    *v9->endpoint = sub_1001ABAE8;
    *v9->containerMap = v8;
    v34[4] = sub_1001ACCC0;
    v35 = v9;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 1107296256;
    v34[2] = sub_100109050;
    v34[3] = &unk_1002852B8;
    v10 = _Block_copy(v34);
    v11 = v35;

    v12 = a4;

    v11, v13, v14, v15, v16, v17, v18, v19;
    [v6 performBlockAndWait:v10];
    _Block_release(v10);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();
    v8, v20, v21, v22, v23, v24, v25, v26;
    v9, v27, v28, v29, v30, v31, v32, v33;
    if (v6)
    {
      __break(1u);
    }
  }
}

void sub_1001616AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *v6->endpoint = a1;
  *v6->containerMap = a2;
  v7 = qword_100297520;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "beginning a fetchTrustedFullPeersCount", v11, 2u);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1001ABA60;
  *(v12 + 24) = v6;
  *(v12 + 32) = v3;
  v13 = *&v3[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = sub_1001ABA84;
  *(v14 + 32) = v12;
  v15 = swift_allocObject();
  *v15->endpoint = sub_1001ACE84;
  *v15->containerMap = v14;
  v55[4] = sub_1001ACCC0;
  v56 = v15;
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 1107296256;
  v55[2] = sub_100109050;
  v55[3] = &unk_100285100;
  v16 = _Block_copy(v55);
  v17 = v56;
  v18 = v3;

  v17, v19, v20, v21, v22, v23, v24, v25;
  [v13 performBlockAndWait:v16];
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v6, v27, v28, v29, v30, v31, v32, v33;
  v12, v34, v35, v36, v37, v38, v39, v40;
  v14, v41, v42, v43, v44, v45, v46, v47;
  v15, v48, v49, v50, v51, v52, v53, v54;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_10016195C(void *a1, void *a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, char *a5)
{
  if (a2)
  {
    v9 = sub_100216C74();
  }

  else
  {
    v9 = sub_100216C54();
  }

  v10 = v9;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v11 = sub_100216774();
  sub_100002648(v11, qword_10029D160);
  v12 = a1;
  swift_errorRetain();
  v13 = sub_100216754();

  if (os_log_type_enabled(v13, v10))
  {
    formata = a5;
    v14 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = v12;
    sub_10001148C(&qword_10029DA50, &qword_100226770);
    v16 = sub_1002169A4();
    v18 = v17;
    v19 = sub_100005FB0(v16, v17, &v56);
    v18, v20, v21, v22, v23, v24, v25, v26, v46, formata, v51, a1, v54, v56, v57, v58, v59, v60;
    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    v27 = 0xE700000000000000;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v61._countAndFlagsBits = sub_100216994();
      object = v61._object;
      sub_100216A14(v61);
      object, v29, v30, v31, v32, v33, v34, v35, v47, format, a2, 0x203A726F727265, 0xE700000000000000, v56, v57, v58, v59, v60;

      v36 = v53;
      v27 = v55;
    }

    else
    {
      v36 = 0x73736563637573;
    }

    v37 = sub_100005FB0(v36, v27, &v56);
    v27, v38, v39, v40, v41, v42, v43, v44, v47, format, v52, v53, v55, v56, v57, v58, v59, v60;
    *(v14 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v13, v10, formatb, v14, 0x16u);
    swift_arrayDestroy();
  }

  return a3(a1, a2);
}

void sub_100161BD4(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, char *a4)
{
  if (a1)
  {
    (a2)(0, a1, a3, a4);
  }

  else
  {
    v6 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    *(v8 + 32) = a4;
    v9 = swift_allocObject();
    *v9->endpoint = sub_1001ABA90;
    *v9->containerMap = v8;
    v34[4] = sub_1001ACCC0;
    v35 = v9;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 1107296256;
    v34[2] = sub_100109050;
    v34[3] = &unk_100285178;
    v10 = _Block_copy(v34);
    v11 = v35;

    v12 = a4;

    v11, v13, v14, v15, v16, v17, v18, v19;
    [v6 performBlockAndWait:v10];
    _Block_release(v10);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();
    v8, v20, v21, v22, v23, v24, v25, v26;
    v9, v27, v28, v29, v30, v31, v32, v33;
    if (v6)
    {
      __break(1u);
    }
  }
}

void sub_100161D6C(void (*a1)(id, void *), uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v9 = 0;
  v6 = [v5 *a4];
  v7 = v9;
  if (v9)
  {
    swift_willThrow();
    v8 = v7;
    a1(0, v7);
  }

  else
  {
    v8 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:v6];
    a1(v8, 0);
  }
}

void sub_100161E50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *v6->endpoint = a1;
  *v6->containerMap = a2;
  v7 = qword_100297520;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "beginning a octagonContainsDistrustedRecoveryKeys", v11, 2u);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1001ABA00;
  *(v12 + 24) = v6;
  *(v12 + 32) = v3;
  v13 = *&v3[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = sub_1001ABA08;
  *(v14 + 32) = v12;
  v15 = swift_allocObject();
  *v15->endpoint = sub_1001ABA14;
  *v15->containerMap = v14;
  v55[4] = sub_1001ACCC0;
  v56 = v15;
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 1107296256;
  v55[2] = sub_100109050;
  v55[3] = &unk_100284FC0;
  v16 = _Block_copy(v55);
  v17 = v56;
  v18 = v3;

  v17, v19, v20, v21, v22, v23, v24, v25;
  [v13 performBlockAndWait:v16];
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v6, v27, v28, v29, v30, v31, v32, v33;
  v12, v34, v35, v36, v37, v38, v39, v40;
  v14, v41, v42, v43, v44, v45, v46, v47;
  v15, v48, v49, v50, v51, v52, v53, v54;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_100162100(uint64_t a1, void *a2, uint64_t (*a3)(void, uint64_t))
{
  v5 = a1;
  if (a2)
  {
    v6 = sub_100216C74();
  }

  else
  {
    v6 = sub_100216C54();
  }

  v7 = v6;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  swift_errorRetain();
  v9 = sub_100216754();

  if (os_log_type_enabled(v9, v7))
  {
    v10 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v10 = 136446466;
    LOBYTE(v43) = v5 & 1;
    v11 = sub_1002169A4();
    v13 = v12;
    v14 = sub_100005FB0(v11, v12, &v47);
    v13, v15, v16, v17, v18, v19, v20, v21, v41, v43, v45, v47, v48, v49, v50, v51, v52, v53;
    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v22 = 0xE700000000000000;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v54._countAndFlagsBits = sub_100216994();
      object = v54._object;
      sub_100216A14(v54);
      object, v24, v25, v26, v27, v28, v29, v30, a2, 0x203A726F727265, 0xE700000000000000, v47, v48, v49, v50, v51, v52, v53;

      v31 = v44;
      v22 = v46;
    }

    else
    {
      v31 = 0x73736563637573;
    }

    v32 = sub_100005FB0(v31, v22, &v47);
    v22, v33, v34, v35, v36, v37, v38, v39, v42, v44, v46, v47, v48, v49, v50, v51, v52, v53;
    *(v10 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v9, v7, "octagon contains distrusted recovery keys complete: %{public}s %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  return a3(v5 & 1, a2);
}

void sub_100162358(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, char *a4)
{
  if (a1)
  {
    (a2)(0, a1, a3, a4);
  }

  else
  {
    v6 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v8 = swift_allocObject();
    *(v8 + 16) = a4;
    *(v8 + 24) = a2;
    *(v8 + 32) = a3;
    v9 = swift_allocObject();
    *v9->endpoint = sub_1001ABA20;
    *v9->containerMap = v8;
    v34[4] = sub_1001ACCC0;
    v35 = v9;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 1107296256;
    v34[2] = sub_100109050;
    v34[3] = &unk_100285038;
    v10 = _Block_copy(v34);
    v11 = v35;
    v12 = a4;

    v11, v13, v14, v15, v16, v17, v18, v19;
    [v6 performBlockAndWait:v10];
    _Block_release(v10);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();
    v8, v20, v21, v22, v23, v24, v25, v26;
    v9, v27, v28, v29, v30, v31, v32, v33;
    if (v6)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1001624F0(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    v5 = sub_100216C74();
  }

  else
  {
    v5 = sub_100216C54();
  }

  v6 = v5;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029D160);
  swift_errorRetain();
  v8 = sub_100216754();

  if (os_log_type_enabled(v8, v6))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46 = v10;
    *v9 = 136446210;
    v11 = 0xE700000000000000;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v53._countAndFlagsBits = sub_100216994();
      object = v53._object;
      sub_100216A14(v53);
      object, v13, v14, v15, v16, v17, v18, v19, a1, 0x203A726F727265, 0xE700000000000000, v46, v47, v48, v49, v50, v51, v52;

      v20 = v44;
      v11 = v45;
    }

    else
    {
      v20 = 0x73736563637573;
    }

    v21 = sub_100005FB0(v20, v11, &v46);
    v11, v22, v23, v24, v25, v26, v27, v28, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52;
    *(v9 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v8, v6, "resetCDPAccountData complete: %{public}s", v9, 0xCu);
    sub_100006128(v10, v29, v30, v31, v32, v33, v34, v35);
  }

  sub_10010EEEC(0xD00000000000006BLL, 0x800000010023C1E0, v36, v37, v38, v39, v40, v41);
  return a3(a1);
}

uint64_t sub_100162718(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5, int a6, unsigned int a7, unsigned int a8)
{
  v42 = __PAIR64__(a8, a7);
  HIDWORD(v41) = a6;
  v40 = a4;
  v12 = type metadata accessor for AccountInfo(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 6;
  *(a1 + 8) = 1;
  if (a3)
  {
    v17 = a3;
  }

  else
  {
    a2 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = *(a1 + 24);

  v18, v19, v20, v21, v22, v23, v24, v25, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48;
  *(a1 + 16) = a2;
  *(a1 + 24) = v17;
  if (a5)
  {
    v26 = v40;
  }

  else
  {
    v26 = 0;
  }

  if (a5)
  {
    v27 = a5;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  v28 = *(a1 + 40);

  v28, v29, v30, v31, v32, v33, v34, v35, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48;
  *(a1 + 32) = v26;
  *(a1 + 40) = v27;
  v36 = v42;
  *(a1 + 48) = BYTE4(v41);
  LOBYTE(v45) = v36;
  BYTE1(v45) = BYTE4(v42);
  sub_1001A13C4(&qword_100298CB0, type metadata accessor for AccountInfo, &protocol conformance descriptor for AccountInfo);
  sub_100216654();
  v37 = *(type metadata accessor for ResetAccountCDPContentsRequest(0) + 40);
  sub_1000114D4(a1 + v37, &unk_10029D6F0, &qword_100226B40);
  sub_1001AC038(v16, a1 + v37, type metadata accessor for AccountInfo);
  return (*(v13 + 56))(a1 + v37, 0, 1, v12);
}

void sub_10016293C(uint64_t a1, char *a2, void (*a3)(uint64_t))
{
  v6 = sub_10001148C(&qword_100298460, &qword_10021DED0);
  __chkstk_darwin(v6, v7);
  v9 = (&v62 - v8);
  sub_100019C6C(a1, &v62 - v8, &qword_100298460, &qword_10021DED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v11 = sub_100216774();
    sub_100002648(v11, qword_10029D160);
    swift_errorRetain();
    v12 = sub_100216754();
    v13 = sub_100216C74();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock = v15;
      *v14 = 136446210;
      v69 = v10;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v16 = sub_100216994();
      v18 = v17;
      v19 = sub_100005FB0(v16, v17, &aBlock);
      v18, v20, v21, v22, v23, v24, v25, v26, v62, aBlock, v64, v65, v66, v67, v68, v69, v70, v71;
      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "resetCDPAccountData failed: %{public}s", v14, 0xCu);
      sub_100006128(v15, v27, v28, v29, v30, v31, v32, v33);
    }

    swift_errorRetain();
    a3(v10);
  }

  else
  {
    v34 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v35 = swift_allocObject();
    *v35->endpoint = a2;
    v36 = swift_allocObject();
    *v36->endpoint = sub_1001A9304;
    *v36->containerMap = v35;
    v67 = sub_1001ACCC0;
    v68 = v36;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_100109050;
    v66 = &unk_100282720;
    v37 = _Block_copy(&aBlock);
    v38 = v68;
    v39 = a2;

    v38, v40, v41, v42, v43, v44, v45, v46;
    [v34 performBlockAndWait:v37];
    _Block_release(v37);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v36, v48, v49, v50, v51, v52, v53, v54;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      a3(0);
      sub_1000114D4(v9, &qword_100298460, &qword_10021DED0);
      v35, v55, v56, v57, v58, v59, v60, v61;
    }
  }
}

uint64_t sub_100162CD4(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a2)
  {
    v7 = sub_100216C74();
  }

  else
  {
    v7 = sub_100216C54();
  }

  v8 = v7;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  swift_errorRetain();
  v10 = sub_100216754();

  if (os_log_type_enabled(v10, v8))
  {
    v46 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v51 = v12;
    *v11 = 136446210;
    v13 = 0xE700000000000000;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v56._countAndFlagsBits = sub_100216994();
      object = v56._object;
      sub_100216A14(v56);
      object, v15, v16, v17, v18, v19, v20, v21, v45, v46, a2, 0x203A726F727265, 0xE700000000000000, v51, v52, v53, v54, v55;

      v22 = v49;
      v13 = v50;
    }

    else
    {
      v22 = 0x73736563637573;
    }

    v29 = sub_100005FB0(v22, v13, &v51);
    v13, v30, v31, v32, v33, v34, v35, v36, v45, v46, v48, v49, v50, v51, v52, v53, v54, v55;
    *(v11 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v10, v8, "fetchAccountSettings complete: %{public}s", v11, 0xCu);
    sub_100006128(v12, v37, v38, v39, v40, v41, v42, v43);

    a4 = v47;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000055, 0x800000010023C180, v23, v24, v25, v26, v27, v28);
  return a4(a1, a2);
}

void sub_100162F14(uint64_t a1, _TtC18TrustedPeersHelper6Client **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, int a14, void *a15, void *a16, void *a17, void *a18)
{
  v19 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) accountSettings];
  if (v19)
  {
    v20 = v19;
    v21 = sub_100216224();
    v23 = v22;

    sub_1001A1654(v21, v23);
    v25 = v24;
    sub_100002BF0(v21, v23, v26, v27, v28, v29, v30, v31);
    if (v25)
    {
      v39 = *a2;
      *a2 = v25;

      v39, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18;
    }
  }
}

void sub_100163230(void *a1, void *a2, uint64_t (*a3)(void, uint64_t), uint64_t a4, char *a5)
{
  if (a1)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v9 = sub_100216774();
    sub_100002648(v9, qword_10029D160);
    swift_errorRetain();
    v10 = sub_100216754();
    v11 = sub_100216C74();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock = v13;
      *v12 = 136446210;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v14 = sub_100216994();
      v16 = v15;
      v17 = sub_100005FB0(v14, v15, &aBlock);
      v16, v18, v19, v20, v21, v22, v23, v24, v63, a1, aBlock, v65, v66, v67, v68, v69, v70, v71;
      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "fetchAccountSettings unable to fetch changes: %{public}s", v12, 0xCu);
      sub_100006128(v13, v25, v26, v27, v28, v29, v30, v31);
    }

    v32 = sub_100216144();
    [a2 sendMetricWithResult:0 error:v32];

    a3(0, a1);
  }

  else
  {
    v33 = *&a5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v35 = swift_allocObject();
    *(v35 + 16) = a5;
    *(v35 + 24) = a2;
    *(v35 + 32) = a3;
    *(v35 + 40) = a4;
    v36 = swift_allocObject();
    *v36->endpoint = sub_1001A92F8;
    *v36->containerMap = v35;
    v68 = sub_1001ACCC0;
    v69 = v36;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_100109050;
    v67 = &unk_1002826A8;
    v37 = _Block_copy(&aBlock);
    v38 = v69;
    v39 = a5;
    v40 = a2;

    v38, v41, v42, v43, v44, v45, v46, v47;
    [v33 performBlockAndWait:v37];
    _Block_release(v37);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
    v35, v49, v50, v51, v52, v53, v54, v55;
    v36, v56, v57, v58, v59, v60, v61, v62;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_100163540(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v99 = a4;
  v7 = sub_100216384();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v13 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v102[0] = 0;
  v14 = [v13 bestWalrusAcrossTrustedPeersWithError:v102];
  v15 = v102[0];
  if (v102[0])
  {
    v16 = v102[0];

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v17 = sub_100216774();
    sub_100002648(v17, qword_10029D160);
    v18 = v16;
    v19 = sub_100216754();
    v20 = sub_100216C74();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = a3;
      v23 = swift_slowAlloc();
      *v21 = 138543362;
      v24 = v18;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "fetchAccountSettings unable to find best walrus: %{public}@", v21, 0xCu);
      sub_1000114D4(v23, &qword_10029D580, &unk_10021CCC0);
      a3 = v22;
    }

    v26 = sub_100216144();
    [a2 sendMetricWithResult:0 error:v26];

    v27 = v18;
    a3(0, v15);

LABEL_7:
    return;
  }

  v98 = a3;
  v28 = *(a1 + v12);
  v102[0] = 0;
  v29 = [v28 bestWebAccessAcrossTrustedPeersWithError:v102];
  v30 = v29;
  v31 = v102[0];
  if (!v102[0])
  {
    v43 = v29;
    v102[0] = sub_100019988(_swiftEmptyArrayStorage);
    if (v14)
    {
      v44 = v14;
      sub_100108108(v14, 0x7375726C6177, 0xE600000000000000);
    }

    v94 = v14;
    v95 = a2;
    v97 = v43;
    if (v43)
    {
      sub_100108108(v30, 0x7365636341626577, 0xE900000000000073);
    }

    v45 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
    v46 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
    v47 = objc_opt_self();
    v48 = v102[0];
    sub_10000200C(0, &unk_10029D6C0, TPPBPeerStableInfoSetting_ptr);
    v49 = v46;
    v96 = v48;
    isa = sub_1002168C4().super.isa;
    v101 = 0;
    v51 = [v47 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v101];

    v52 = v101;
    if (v51)
    {
      v53 = sub_100216224();
      v55 = v54;

      v56 = sub_100216204().super.isa;
      sub_100002BF0(v53, v55, v57, v58, v59, v60, v61, v62);
      [v49 setAccountSettings:v56];

      v63 = *(a1 + v45);
      sub_100216374();
      v64 = sub_1002162F4().super.isa;
      (*(v8 + 8))(v11, v7);
      [v63 setAccountSettingsDate:v64];

      v27 = v97;
      v65 = v98;
      v67 = v94;
      v66 = v95;
    }

    else
    {
      v68 = v52;

      sub_100216154();
      swift_willThrow();
      v66 = v95;
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v69 = sub_100216774();
      sub_100002648(v69, qword_10029D160);
      swift_errorRetain();
      v70 = sub_100216754();
      v71 = sub_100216C74();

      v72 = os_log_type_enabled(v70, v71);
      v73 = v45;
      v67 = v94;
      if (v72)
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v74 = 138412290;
        swift_errorRetain();
        v76 = _swift_stdlib_bridgeErrorToNSError();
        *(v74 + 4) = v76;
        *v75 = v76;
        _os_log_impl(&_mh_execute_header, v70, v71, "Failed to set cached account settings, ignoring: %@", v74, 0xCu);
        sub_1000114D4(v75, &qword_10029D580, &unk_10021CCC0);
      }

      [*(a1 + v73) setAccountSettings:0];
      [*(a1 + v73) setAccountSettingsDate:0];
      v77 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
      v101 = 0;
      v78 = [v77 save:&v101];
      v65 = v98;
      if (v78)
      {
        v79 = v101;
      }

      else
      {
        v80 = v101;
        sub_100216154();

        swift_willThrow();
        swift_errorRetain();
        v81 = sub_100216754();
        v82 = sub_100216C74();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          *v83 = 138412290;
          swift_errorRetain();
          v85 = _swift_stdlib_bridgeErrorToNSError();
          *(v83 + 4) = v85;
          *v84 = v85;
          _os_log_impl(&_mh_execute_header, v81, v82, "failed to save: %@", v83, 0xCu);
          sub_1000114D4(v84, &qword_10029D580, &unk_10021CCC0);
        }
      }

      v27 = v97;
    }

    [v66 sendMetricWithResult:1 error:{0, v94}];
    v86 = v96;
    v65(v96, 0);
    v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102[0], v102[1];

    goto LABEL_7;
  }

  v32 = v102[0];

  swift_willThrow();
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v33 = sub_100216774();
  sub_100002648(v33, qword_10029D160);
  v34 = v32;
  v35 = sub_100216754();
  v36 = sub_100216C74();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138543362;
    v39 = v34;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v40;
    *v38 = v40;
    _os_log_impl(&_mh_execute_header, v35, v36, "fetchAccountSettings unable to find best web access: %{public}@", v37, 0xCu);
    sub_1000114D4(v38, &qword_10029D580, &unk_10021CCC0);
  }

  v41 = sub_100216144();
  [a2 sendMetricWithResult:0 error:v41];

  v42 = v34;
  v98(0, v31);
}

uint64_t sub_100163E44(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v6 = a1;
  if (a2)
  {
    v7 = sub_100216C74();
  }

  else
  {
    v7 = sub_100216C54();
  }

  v8 = v7;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  swift_errorRetain();
  v10 = sub_100216754();

  if (os_log_type_enabled(v10, v8))
  {
    v46 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v51 = v12;
    *v11 = 136446210;
    v13 = 0xE700000000000000;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v56._countAndFlagsBits = sub_100216994();
      object = v56._object;
      sub_100216A14(v56);
      object, v15, v16, v17, v18, v19, v20, v21, v45, v46, a2, 0x203A726F727265, 0xE700000000000000, v51, v52, v53, v54, v55;

      v22 = v49;
      v13 = v50;
    }

    else
    {
      v22 = 0x73736563637573;
    }

    v29 = sub_100005FB0(v22, v13, &v51);
    v13, v30, v31, v32, v33, v34, v35, v36, v45, v46, v48, v49, v50, v51, v52, v53, v54, v55;
    *(v11 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v10, v8, "preflightPreapprovedJoin complete: %{public}s", v11, 0xCu);
    sub_100006128(v12, v37, v38, v39, v40, v41, v42, v43);

    a4 = v47;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000030, 0x800000010023C6A0, v23, v24, v25, v26, v27, v28);
  return a4(v6 & 1, a2);
}

void sub_100164084(void *a1, uint64_t (*a2)(void, uint64_t), _TtC18TrustedPeersHelper6Client *a3, uint64_t a4, _TtC18TrustedPeersHelper6Client *a5)
{
  if (a1)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v8 = sub_100216774();
    sub_100002648(v8, qword_10029D160);
    swift_errorRetain();
    v9 = sub_100216754();
    v10 = sub_100216C74();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v62 = v12;
      *v11 = 136446210;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v13 = sub_100216994();
      v15 = v14;
      v16 = sub_100005FB0(v13, v14, &v62);
      v15, v17, v18, v19, v20, v21, v22, v23, v56, a1, v60, v62, v63, v64, v65, v66, v67, v68;
      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "preflightPreapprovedJoin unable to fetch changes: %{public}s", v11, 0xCu);
      sub_100006128(v12, v24, v25, v26, v27, v28, v29, v30);
    }

    a2(0, a1);
  }

  else
  {
    __chkstk_darwin(0, a2);
    v33 = v32;
    sub_10001148C(&qword_100297E70, &unk_10021DAB0);
    sub_100216D34();
    if (v62)
    {

      v34 = v33;

      sub_1001A74C0(v62, v34, v34, a2, a3, a5);
      v62, v35, v36, v37, v38, v39, v40, v41, v56, v58, v60, v62, v63, v64, v65, v66, v67, v68;

      a3, v42, v43, v44, v45, v46, v47, v48;
      a5, v49, v50, v51, v52, v53, v54, v55, v57, v59, v61, v62, v63, v64, v65, v66, v67, v68;
    }
  }
}

void sub_100164308(uint64_t a1@<X0>, void (*a2)(void, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v19 = 0;
  v6 = [v5 allPolicyVersionsWithError:&v19];
  v7 = v19;
  if (v6)
  {
    v8 = v6;
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    sub_1001A9AB8(&qword_100297E88, &qword_100297D68, TPPolicyVersion_ptr);
    v9 = sub_100216BB4();
    v10 = v7;
  }

  else
  {
    v11 = v19;
    v12 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v13 = sub_100216774();
    sub_100002648(v13, qword_10029D160);
    swift_errorRetain();
    v14 = sub_100216754();
    v15 = sub_100216C74();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error fetching all policy versions: %{public}@", v16, 0xCu);
      sub_1000114D4(v17, &qword_10029D580, &unk_10021CCC0);
    }

    swift_errorRetain();
    a2(0, v12);

    v9 = 0;
  }

  *a3 = v9;
}

void sub_100164584(uint64_t a1, void (*a2)(uint64_t, void *), void *a3, _TtC18TrustedPeersHelper6Client **a4)
{
  v8 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v9 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v260 = 0;
  v10 = [v9 hasAnyPeersWithError:&v260];
  v11 = v260;
  if (v260)
  {
    swift_willThrow();
    v12 = qword_100297520;
    v13 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_100216774();
    sub_100002648(v14, qword_10029D160);
    v15 = v13;
    v16 = sub_100216754();
    v17 = sub_100216C74();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      v20 = v15;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "error calling hasAnyPeers: %{public}@", v18, 0xCu);
      sub_1000114D4(v19, &qword_10029D580, &unk_10021CCC0);
    }

    v22 = v15;
    a2(0, v11);

    return;
  }

  if (!v10)
  {
    a2(1, 0);
    return;
  }

  v23 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v24 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (!v24)
  {
    goto LABEL_20;
  }

  v25 = v24;
  sub_100216974();
  v27 = v26;

  v28 = [*(a1 + v23) egoPeerPermanentInfo];
  if (!v28)
  {
LABEL_19:
    v27, v29, v30, v31, v32, v33, v34, v35, v237, v238, v240, v242, v244, v246, v248, v250, v252, v254;
LABEL_20:
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v118 = sub_100216774();
    sub_100002648(v118, qword_10029D160);
    v119 = sub_100216754();
    v120 = sub_100216C54();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&_mh_execute_header, v119, v120, "preflightPreapprovedJoin: no prepared identity", v121, 2u);
    }

    sub_1000561D0();
    v122 = swift_allocError();
    *v123 = xmmword_10021DA90;
    *(v123 + 16) = 13;
    a2(0, v122);

    return;
  }

  v36 = v28;
  v37 = sub_100216224();
  v39 = v38;

  v40 = [*(a1 + v23) egoPeerPermanentInfoSig];
  if (!v40)
  {
    sub_100002BF0(v37, v39, v41, v42, v43, v44, v45, v46);
    goto LABEL_19;
  }

  v47 = v40;
  v253 = a3;
  v258 = v39;
  v48 = sub_100216224();
  v50 = v49;

  v51 = [objc_allocWithZone(TPECPublicKeyFactory) init];
  sub_100012558(v37, v258);
  sub_100012558(v48, v50);
  v256 = sub_100216964();
  v27, v52, v53, v54, v55, v56, v57, v58, v237, v238, v240, v242, v244, v246, v248, v250, v253, a2;
  isa = sub_100216204().super.isa;
  v60 = sub_100216204().super.isa;
  v61 = [objc_opt_self() permanentInfoWithPeerID:v256 data:isa sig:v60 keyFactory:v51];

  v245 = v51;
  v247 = v48;
  v249 = v50;
  sub_100002BF0(v48, v50, v62, v63, v64, v65, v66, v67);

  v251 = v37;
  sub_100002BF0(v37, v258, v68, v69, v70, v71, v72, v73);

  if (v61)
  {
    v74 = *(a1 + v8);
    v243 = v61;
    v75 = [objc_msgSend(v61 "signingPubKey")];
    swift_unknownObjectRelease();
    v76 = sub_100216224();
    v78 = v77;

    v79 = sub_100216204().super.isa;
    sub_100002BF0(v76, v78, v80, v81, v82, v83, v84, v85);
    v260 = 0;
    v86 = [v74 hasPotentiallyTrustedPeerPreapprovingKey:v79 error:&v260];

    v94 = v260;
    v95 = v255;
    if (v260)
    {
      swift_willThrow();
      v96 = qword_100297520;
      a4 = v94;
      if (v96 != -1)
      {
LABEL_68:
        swift_once();
      }

      v97 = sub_100216774();
      sub_100002648(v97, qword_10029D160);
      v98 = a4;
      v99 = sub_100216754();
      v100 = sub_100216C54();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *v101 = 138543362;
        v103 = v98;
        v104 = _swift_stdlib_bridgeErrorToNSError();
        *(v101 + 4) = v104;
        *v102 = v104;
        _os_log_impl(&_mh_execute_header, v99, v100, "preflightPreapprovedJoin: error calling hasPotentiallyTrustedPeerPreapprovingKey %{public}@", v101, 0xCu);
        sub_1000114D4(v102, &qword_10029D580, &unk_10021CCC0);
      }

      v105 = v98;
      (v95)(0, v94);

      sub_100002BF0(v247, v249, v106, v107, v108, v109, v110, v111);
      sub_100002BF0(v251, v258, v112, v113, v114, v115, v116, v117);
    }

    else if (v86)
    {
      v142 = v258;
      if (!a4)
      {
        goto LABEL_60;
      }

      v95 = a4[2];
      if (v95)
      {
        v143 = 0;
        v241 = (a4 + 4);
        v144 = _swiftEmptyArrayStorage;
        while (2)
        {
          v239 = v144;
          while (1)
          {
            if (v143 >= v95)
            {
              __break(1u);
LABEL_67:
              __break(1u);
              goto LABEL_68;
            }

            v145 = (v143 + 1);
            if (__OFADD__(v143, 1))
            {
              goto LABEL_67;
            }

            *v257 = *&v241[2 * v143];
            v146 = *(a1 + v8);
            a4 = v257[0];
            sub_100012558(v257[0], v257[1]);
            v147 = sub_100216204().super.isa;
            v259 = 0;
            v148 = [v146 hasPotentiallyTrustedPeerWithSigningKey:v147 error:&v259];

            v94 = v259;
            if (v259)
            {
              swift_willThrow();
              v176 = v94;
              sub_100002BF0(v257[0], v257[1], v177, v178, v179, v180, v181, v182);
              v239, v183, v184, v185, v186, v187, v188, v189;
              if (qword_100297520 != -1)
              {
                swift_once();
              }

              v190 = sub_100216774();
              sub_100002648(v190, qword_10029D160);
              v191 = v176;
              v192 = sub_100216754();
              v193 = sub_100216C74();

              if (os_log_type_enabled(v192, v193))
              {
                v194 = swift_slowAlloc();
                v195 = swift_slowAlloc();
                *v194 = 138543362;
                v196 = v191;
                v197 = _swift_stdlib_bridgeErrorToNSError();
                *(v194 + 4) = v197;
                *v195 = v197;
                _os_log_impl(&_mh_execute_header, v192, v193, "preflightPreapprovedJoin: error calling hasPotentiallyTrustedPeerWithSigningKey %{public}@", v194, 0xCu);
                sub_1000114D4(v195, &qword_10029D580, &unk_10021CCC0);
              }

              v198 = v191;
              (v255)(0, v94);

              sub_100002BF0(v247, v249, v199, v200, v201, v202, v203, v204);
              sub_100002BF0(v251, v258, v205, v206, v207, v208, v209, v210);
              return;
            }

            if (v148)
            {
              break;
            }

            sub_100002BF0(v257[0], v257[1], v149, v150, v151, v152, v153, v154);
            ++v143;
            if (v145 == v95)
            {
              v142 = v258;
              v144 = v239;
              goto LABEL_58;
            }
          }

          v144 = v239;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v260 = v239;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            a4 = &v260;
            sub_1001878D0(0, *v239->endpoint + 1, 1, v89, v90, v91, v92, v93);
            v144 = v260;
          }

          v157 = *v144->endpoint;
          v156 = *v144->containerMap;
          if (v157 >= v156 >> 1)
          {
            a4 = &v260;
            sub_1001878D0((v156 > 1), v157 + 1, 1, v89, v90, v91, v92, v93);
            v144 = v260;
          }

          *v144->endpoint = v157 + 1;
          *&v144[1]._TtCs12_SwiftObject_opaque[16 * v157] = *v257;
          v143 = v145;
          v142 = v258;
          if (v145 != v95)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v144 = _swiftEmptyArrayStorage;
      }

LABEL_58:
      v211 = *v144->endpoint;
      v144, v87, v88, v89, v90, v91, v92, v93;
      v95 = v255;
      if (v211)
      {
        (v255)(1, 0);

        sub_100002BF0(v247, v249, v212, v213, v214, v215, v216, v217);
        v224 = v251;
      }

      else
      {
LABEL_60:
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v225 = sub_100216774();
        sub_100002648(v225, qword_10029D160);
        v226 = sub_100216754();
        v227 = sub_100216C54();
        if (os_log_type_enabled(v226, v227))
        {
          v228 = swift_slowAlloc();
          *v228 = 0;
          _os_log_impl(&_mh_execute_header, v226, v227, "preflightPreapprovedJoin: no reciprocal trust for existing peers", v228, 2u);
        }

        sub_1000561D0();
        v229 = swift_allocError();
        *v230 = xmmword_1002260E0;
        *(v230 + 16) = 13;
        (v95)(0, v229);

        sub_100002BF0(v247, v249, v231, v232, v233, v234, v235, v236);
        v224 = v251;
      }

      sub_100002BF0(v224, v142, v218, v219, v220, v221, v222, v223);
    }

    else
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v158 = sub_100216774();
      sub_100002648(v158, qword_10029D160);
      v159 = sub_100216754();
      v160 = sub_100216C54();
      if (os_log_type_enabled(v159, v160))
      {
        v161 = swift_slowAlloc();
        *v161 = 0;
        _os_log_impl(&_mh_execute_header, v159, v160, "preflightPreapprovedJoin: no peers preapprove our key", v161, 2u);
      }

      sub_1000561D0();
      v162 = swift_allocError();
      *v163 = xmmword_1002260D0;
      *(v163 + 16) = 13;
      (v255)(0, v162);

      sub_100002BF0(v247, v249, v164, v165, v166, v167, v168, v169);
      sub_100002BF0(v37, v258, v170, v171, v172, v173, v174, v175);
    }
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v124 = sub_100216774();
    sub_100002648(v124, qword_10029D160);
    v125 = sub_100216754();
    v126 = sub_100216C54();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      *v127 = 0;
      _os_log_impl(&_mh_execute_header, v125, v126, "preflightPreapprovedJoin: invalid permanent info", v127, 2u);
    }

    sub_1000561D0();
    v128 = swift_allocError();
    *v129 = xmmword_10021DA80;
    *(v129 + 16) = 13;
    (v255)(0, v128);

    sub_100002BF0(v48, v50, v130, v131, v132, v133, v134, v135);
    sub_100002BF0(v37, v258, v136, v137, v138, v139, v140, v141);
  }
}