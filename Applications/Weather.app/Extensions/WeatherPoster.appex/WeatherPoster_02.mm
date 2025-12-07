unint64_t sub_100031700()
{
  result = qword_100064A48;
  if (!qword_100064A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064A48);
  }

  return result;
}

uint64_t sub_100031754()
{
  *(v0 + 16) = &_swiftEmptyDictionarySingleton;
  v1 = OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_springBoardUnlimitedAssertionTakenAt;
  v2 = sub_100049B7C();
  sub_100004544(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_unlockSessionTimer) = 0;
  return v0;
}

uint64_t sub_1000317B0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10002365C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v7 = *(*v1 + 24);
  sub_100002D54(&qword_100064A50, &unk_10004DFB8);
  sub_10004AE1C(isUniquelyReferenced_nonNull_native, v7);
  v8 = *(*(v10 + 56) + 16 * v5);
  sub_100031884();
  sub_10004AE2C();
  *v2 = v10;
  return v8;
}

unint64_t sub_100031884()
{
  result = qword_100064A58;
  if (!qword_100064A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064A58);
  }

  return result;
}

uint64_t sub_1000318D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&unk_100063DE0, "4E");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031948(uint64_t a1)
{
  v2 = sub_100002D54(&unk_100063DE0, "4E");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000319B0(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10002365C(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100002D54(&qword_100064A50, &unk_10004DFB8);
  if (!sub_10004AE1C(a3 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_10002365C(a2);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    sub_10004AF8C();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = v20[7] + 16 * v16;
    v22 = *v21;
    *v21 = a1;
    *(v21 + 8) = a4;
  }

  else
  {

    sub_100031B48(v16, a2, a1, v20, a4);
  }
}

unint64_t sub_100031AF0()
{
  result = qword_100063C88;
  if (!qword_100063C88)
  {
    sub_100049B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063C88);
  }

  return result;
}

unint64_t sub_100031B48(unint64_t result, char a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v5 = a4[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_100031B94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&unk_100063DE0, "4E");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031C04()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100031C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100031C5C(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_100031C7C()
{

  return sub_1000230EC(v1, v0, (v2 - 144));
}

uint64_t sub_100031C98()
{

  return swift_slowAlloc();
}

uint64_t sub_100031CB8(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_100031CD8(uint64_t a1)
{
  v1 = 0xE800000000000000;
  v3._countAndFlagsBits = 0x7469617274726F70;
  switch(a1)
  {
    case 1:
      break;
    case 2:
      v1 = 0x800000010004EEB0;
      v3._countAndFlagsBits = 0xD000000000000012;
      break;
    case 3:
      v1 = 0xEE00746867695265;
      goto LABEL_6;
    case 4:
      v1 = 0xED00007466654C65;
LABEL_6:
      v3._countAndFlagsBits = 0x70616373646E616CLL;
      break;
    default:
      v1 = 0xE700000000000000;
      v3._countAndFlagsBits = 0x6E776F6E6B6E75;
      break;
  }

  v3._object = v1;
  sub_10004A9DC(v3);

  return 0x2D7972656C6C6167;
}

uint64_t sub_100031DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_100049A6C();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_100004544(a2, v7, 1, v6);
}

Swift::Int sub_100031EC0(Swift::UInt a1)
{
  sub_10004AFEC();
  sub_10004AFFC(0);
  sub_10004AFFC(a1);
  return sub_10004B00C();
}

Swift::Int sub_100031F30(uint64_t a1)
{
  v2 = *v1;
  sub_10004AFEC();
  sub_10004AFFC(0);
  sub_10004AFFC(v2);
  return sub_10004B00C();
}

uint64_t sub_100031F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = [*(v2 + 16) URLsForDirectory:9 inDomains:1];
  v9 = sub_100049A6C();
  v10 = sub_10004AA5C();

  sub_100031DE4(v10, v7);

  if (sub_100004288(v7, 1, v9) == 1)
  {
    sub_100023F18(v7, &unk_100063E80, &qword_10004D0F8);
    v11 = 1;
  }

  else
  {
    sub_10003433C(a1);
    sub_100049A2C();

    (*(*(v9 - 8) + 8))(v7, v9);
    v11 = 0;
  }

  return sub_100004544(a2, v11, 1, v9);
}

void sub_10003212C(UIImage *a1, uint64_t a2)
{
  v4 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_100049A6C();
  sub_1000059BC();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031F80(a2, v6);
  if (sub_100004288(v6, 1, v7) == 1)
  {
    sub_100023F18(v6, &unk_100063E80, &qword_10004D0F8);
LABEL_6:
    if (qword_1000634A8 != -1)
    {
      sub_1000347A8(&qword_1000634A8);
    }

    v18 = sub_100049FCC();
    sub_100008F90(v18, qword_1000683A8);
    v19 = sub_100049FAC();
    v20 = sub_10004AB7C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = sub_100014030();
      v22 = sub_10001A07C();
      v40 = v22;
      *v21 = 136446210;
      v23 = sub_100031CD8(a2);
      v25 = sub_100034808(v23, v24);

      *(v21 + 4) = v25;
      sub_1000347E8(&_mh_execute_header, v26, v27, "Failed to create PNG data when saving snapshot to disk for kind=%{public}s");
      sub_100008FC8(v22);
      sub_100013F58(v22);
      sub_100013F58(v21);
    }

    return;
  }

  (*(v9 + 32))(v12, v6, v7);
  v13 = UIImagePNGRepresentation(a1);
  if (!v13)
  {
    (*(v9 + 8))(v12, v7);
    goto LABEL_6;
  }

  v14 = v13;
  v15 = sub_100049A8C();
  v17 = v16;

  sub_100049A9C();
  if (qword_1000634A8 != -1)
  {
    sub_1000347A8(&qword_1000634A8);
  }

  v28 = sub_100049FCC();
  sub_100008F90(v28, qword_1000683A8);
  v29 = sub_100049FAC();
  v30 = sub_10004AB9C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = sub_100014030();
    v32 = sub_10001A07C();
    v40 = v32;
    *v31 = 136446210;
    v33 = sub_100031CD8(a2);
    v35 = sub_100034808(v33, v34);
    v39 = v15;
    v36 = v35;

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v29, v30, "Saved snapshot view for kind=%{public}s to disk", v31, 0xCu);
    sub_100008FC8(v32);
    sub_100013F58(v32);
    sub_100013F58(v31);
    v37 = v39;
  }

  else
  {
    v37 = v15;
  }

  sub_10001B984(v37, v17);

  (*(v9 + 8))(v12, v7);
}

void *sub_100032634(uint64_t a1)
{
  v2 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  __chkstk_darwin(v2 - 8);
  v4 = &v50 - v3;
  v5 = sub_100049A6C();
  sub_1000059BC();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031F80(a1, v4);
  if (sub_100004288(v4, 1, v5) == 1)
  {
    sub_100023F18(v4, &unk_100063E80, &qword_10004D0F8);
LABEL_12:
    if (qword_1000634A8 != -1)
    {
      sub_1000347A8(&qword_1000634A8);
    }

    v29 = sub_100049FCC();
    sub_100008F90(v29, qword_1000683A8);
    v30 = sub_100049FAC();
    v31 = sub_10004AB9C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = sub_100014030();
      v33 = sub_10001A07C();
      v51 = v33;
      *v32 = 136446210;
      v34 = sub_100031CD8(a1);
      v36 = sub_1000230EC(v34, v35, &v51);

      *(v32 + 4) = v36;
      sub_1000347E8(&_mh_execute_header, v37, v38, "No snapshot found on disk for kind=%{public}s");
      sub_100008FC8(v33);
      sub_100013F58(v33);
      sub_100013F58(v32);
    }

    return 0;
  }

  (*(v7 + 32))(v10, v4, v5);
  sub_100034764();
  v11 = sub_100049A4C();
  v13 = sub_100032AB0(v11, v12);
  if (!v13)
  {
    v27 = sub_1000347C8();
    v28(v27);
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [v13 CGImage];
  if (!v15)
  {
LABEL_18:
    if (qword_1000634A8 != -1)
    {
      sub_1000347A8(&qword_1000634A8);
    }

    v39 = sub_100049FCC();
    sub_100008F90(v39, qword_1000683A8);
    v40 = sub_100049FAC();
    v41 = sub_10004AB7C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = sub_100014030();
      v43 = sub_10001A07C();
      v51 = v43;
      *v42 = 136446210;
      v44 = sub_100031CD8(a1);
      v46 = sub_1000230EC(v44, v45, &v51);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "Failed to find valid snapshot on disk for kind=%{public}s", v42, 0xCu);
      sub_100008FC8(v43);
      sub_100013F58(v43);
      sub_100013F58(v42);
    }

    v47 = sub_1000347C8();
    v48(v47);
    return 0;
  }

  v16 = v15;
  if ((sub_100041F18() & 1) == 0)
  {

    goto LABEL_18;
  }

  if (qword_1000634A8 != -1)
  {
    sub_1000347A8(&qword_1000634A8);
  }

  v17 = sub_100049FCC();
  sub_100008F90(v17, qword_1000683A8);
  v18 = sub_100049FAC();
  v19 = sub_10004AB9C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = sub_100014030();
    v50 = sub_10001A07C();
    v51 = v50;
    *v20 = 136446210;
    v21 = sub_100031CD8(a1);
    v23 = sub_1000230EC(v21, v22, &v51);

    *(v20 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v18, v19, "Found valid cached snapshot on disk for kind=%{public}s", v20, 0xCu);
    v24 = v50;
    sub_100008FC8(v50);
    sub_100013F58(v24);
    sub_100013F58(v20);
  }

  v25 = sub_1000347C8();
  v26(v25);
  return v14;
}

id sub_100032AB0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_10004A95C();

  v4 = [v2 initWithContentsOfFile:v3];

  return v4;
}

uint64_t sub_100032B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  sub_100032B88(a1, a2, a3, &v8);
  objc_autoreleasePoolPop(v6);
  return v8;
}

void sub_100032B88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v125 = a3;
  v122 = a2;
  v135 = a4;
  v131 = sub_10004A71C();
  v124 = *(v131 - 8);
  __chkstk_darwin(v131);
  v123 = v5;
  v130 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  v7 = __chkstk_darwin(v6 - 8);
  v120 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v111 - v9;
  v11 = sub_10004A5AC();
  v127 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_100049A6C();
  v132 = *(v134 - 8);
  v14 = *(v132 + 64);
  v15 = __chkstk_darwin(v134);
  v129 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v119 = &v111 - v17;
  __chkstk_darwin(v16);
  v133 = &v111 - v18;
  v19 = sub_100002D54(&qword_100064B10, &unk_10004E3B0);
  __chkstk_darwin(v19 - 8);
  v21 = &v111 - v20;
  v22 = sub_10004A39C();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v128 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v25;
  __chkstk_darwin(v24);
  v27 = &v111 - v26;
  sub_10003434C(a1, v21);
  if (sub_100004288(v21, 1, v22) == 1)
  {
    sub_100023F18(v21, &qword_100064B10, &unk_10004E3B0);
    if (qword_1000634A8 != -1)
    {
      swift_once();
    }

    v28 = sub_100049FCC();
    sub_100008F90(v28, qword_1000683A8);
    v29 = sub_100049FAC();
    v30 = sub_10004AB7C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to create snapshot because no configuration was provided", v31, 2u);
    }

    goto LABEL_21;
  }

  v126 = v23;
  v118 = *(v23 + 32);
  v118(v27, v21, v22);
  v32 = MTLCreateSystemDefaultDevice();
  v33 = v22;
  if (!v32)
  {
    goto LABEL_15;
  }

  v34 = v32;
  v35 = [v32 newCommandQueue];
  if (!v35)
  {
    swift_unknownObjectRelease();
LABEL_15:
    if (qword_1000634A8 != -1)
    {
      swift_once();
    }

    v44 = sub_100049FCC();
    sub_100008F90(v44, qword_1000683A8);
    v39 = sub_100049FAC();
    v45 = sub_10004AB7C();
    v46 = os_log_type_enabled(v39, v45);
    v42 = v126;
    if (v46)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v39, v45, "Failed to create snapshot because command queue was not able to be setup", v47, 2u);
    }

    goto LABEL_19;
  }

  v117 = v35;
  v116 = v34;
  v36 = v127;
  (*(v127 + 104))(v13, enum case for VFXEffectType.background(_:), v11);
  sub_10004A59C();
  (*(v36 + 8))(v13, v11);
  v37 = v134;
  if (sub_100004288(v10, 1, v134) == 1)
  {
    sub_100023F18(v10, &unk_100063E80, &qword_10004D0F8);
    if (qword_1000634A8 != -1)
    {
      swift_once();
    }

    v38 = sub_100049FCC();
    sub_100008F90(v38, qword_1000683A8);
    v39 = sub_100049FAC();
    v40 = sub_10004AB7C();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v126;
    if (!v41)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_20;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Failed to create snapshot because URL for effect could not be created", v43, 2u);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_19:

LABEL_20:
    (*(v42 + 8))(v27, v33);
LABEL_21:
    v48 = 0;
    goto LABEL_22;
  }

  v49 = v132;
  v50 = *(v132 + 32);
  v114 = v132 + 32;
  v113 = v50;
  v50(v133, v10, v37);
  if (qword_1000634A8 != -1)
  {
    swift_once();
  }

  v51 = sub_100049FCC();
  v115 = sub_100008F90(v51, qword_1000683A8);
  v52 = sub_100049FAC();
  v53 = sub_10004AB9C();
  v54 = os_log_type_enabled(v52, v53);
  v127 = v33;
  if (v54)
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "Starting to create new snapshot", v55, 2u);
  }

  v56 = [objc_allocWithZone(sub_10004A03C()) init];
  sub_10004A01C();
  sub_10004A02C();
  sub_100049FDC();
  sub_10004A00C();
  sub_100049FFC();
  if (qword_100063460 != -1)
  {
    swift_once();
  }

  v57 = sub_1000343BC(0x746C7561666564, 0xE700000000000000, 0x62696C6C6174656DLL, 0xE800000000000000, qword_1000682D0);
  if (v57)
  {
    v58 = v57;
    v59 = v119;
    sub_100049A3C();

    v60 = v120;
    (*(v49 + 16))(v120, v59, v37);
    sub_100004544(v60, 0, 1, v37);
    sub_100049FEC();
    (*(v49 + 8))(v59, v37);
  }

  v61 = objc_allocWithZone(sub_10004A0CC());
  v119 = v56;
  v112 = sub_10004A06C();
  v62 = dispatch_group_create();
  v111 = v62;
  dispatch_group_enter(v62);
  v63 = v49 + 16;
  (*(v49 + 16))(v129, v133, v37);
  v64 = v127;
  v66 = v126 + 16;
  v65 = *(v126 + 16);
  v120 = v27;
  v65(v128, v27, v127);
  v67 = v124;
  (*(v124 + 16))(v130, v122, v131);
  v68 = (*(v63 + 64) + 32) & ~*(v63 + 64);
  v69 = (v14 + *(v66 + 64) + v68) & ~*(v66 + 64);
  v70 = (v121 + *(v67 + 80) + v69) & ~*(v67 + 80);
  v71 = (v123 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v73 = v37;
  v74 = v72;
  *(v72 + 16) = v62;
  v75 = v112;
  *(v72 + 24) = v112;
  v113(v72 + v68, v129, v73);
  v118((v74 + v69), v128, v64);
  (*(v67 + 32))(v74 + v70, v130, v131);
  *(v74 + v71) = v125;
  v76 = v111;
  v77 = v75;
  sub_10004A04C();

  sub_10004ABBC();
  v78 = sub_10004A05C();
  v79 = sub_100034318(v78);

  if (!v79)
  {
    v96 = sub_100049FAC();
    v97 = sub_10004AB7C();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "Failed to create snapshot because effect was not added to scene", v98, 2u);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v132 + 8))(v133, v134);
    v99 = *(v126 + 8);
    v100 = v120;
    goto LABEL_45;
  }

  v80 = objc_allocWithZone(VFXRenderer);
  v81 = [v80 initWithCommandQueue:v117];
  v82 = [objc_opt_self() blackColor];
  [v81 setBackgroundColor:v82];

  [v81 setScene:v77];
  v83 = [objc_opt_self() mainScreen];
  [v83 nativeBounds];
  v85 = v84;
  v87 = v86;

  v88 = [v81 snapshotImageWithSize:{v85, v87}];
  if (!v88)
  {
    v101 = sub_100049FAC();
    v102 = sub_10004AB7C();
    v103 = os_log_type_enabled(v101, v102);
    v104 = v120;
    v105 = v132;
    if (v103)
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&_mh_execute_header, v101, v102, "Failed to create snapshot because VFX renderer did not provide an image", v106, 2u);
      v64 = v127;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v105 + 8))(v133, v134);
    v99 = *(v126 + 8);
    v100 = v104;
LABEL_45:
    v107 = v64;
LABEL_50:
    v99(v100, v107);
    goto LABEL_21;
  }

  v48 = v88;
  v89 = [v88 CGImage];
  v90 = v120;
  v91 = v132;
  if (!v89)
  {
LABEL_47:
    v108 = sub_100049FAC();
    v109 = sub_10004AB7C();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 0;
      _os_log_impl(&_mh_execute_header, v108, v109, "Failed to create valid snapshot", v110, 2u);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v91 + 8))(v133, v134);
    v107 = v127;
    v99 = *(v126 + 8);
    v100 = v90;
    goto LABEL_50;
  }

  v92 = v89;
  if ((sub_100041F18() & 1) == 0)
  {

    goto LABEL_47;
  }

  v93 = sub_100049FAC();
  v94 = sub_10004AB9C();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&_mh_execute_header, v93, v94, "Successfully created new snapshot", v95, 2u);
    v90 = v120;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v91 + 8))(v133, v134);
  (*(v126 + 8))(v90, v127);
LABEL_22:
  *v135 = v48;
}

void sub_100033AD0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a6;
  v44 = a4;
  v41 = a5;
  v45 = a1;
  v7 = sub_100002D54(&qword_100063C78, &qword_10004E0A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_10004A38C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004A5AC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100002D54(&qword_100064B10, &unk_10004E3B0);
  __chkstk_darwin(v18 - 8);
  v20 = &v39 - v19;
  v42 = a2;
  v21 = sub_10004A09C();
  sub_10004A51C();
  swift_allocObject();
  v40 = v21;
  sub_10004A50C();
  v22 = sub_10004A39C();
  sub_100004544(v20, 1, 1, v22);
  (*(v15 + 104))(v17, enum case for VFXEffectType.background(_:), v14);
  (*(v11 + 104))(v13, enum case for WeatherConditionBackgroundConfig.CameraPositionType.default(_:), v10);
  v23 = sub_10004A71C();
  (*(*(v23 - 8) + 16))(v9, v41, v23);
  sub_100004544(v9, 0, 1, v23);
  sub_10004A4EC();
  sub_100023F18(v9, &qword_100063C78, &qword_10004E0A0);
  (*(v11 + 8))(v13, v10);
  (*(v15 + 8))(v17, v14);
  sub_100023F18(v20, &qword_100064B10, &unk_10004E3B0);
  v24 = [objc_opt_self() currentDevice];
  v25 = [v24 userInterfaceIdiom];

  v26 = v43;
  if (v25 == 1 && sub_100034754(v43))
  {
    if (qword_1000634A8 != -1)
    {
      swift_once();
    }

    v27 = sub_100049FCC();
    sub_100008F90(v27, qword_1000683A8);
    v28 = sub_100049FAC();
    v29 = sub_10004AB9C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46 = v31;
      *v30 = 136446210;
      v32 = sub_100031CD8(v26);
      v34 = sub_1000230EC(v32, v33, &v46);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Applying overrides for landscape snapshot; kind=%{public}s", v30, 0xCu);
      sub_100008FC8(v31);
    }

    sub_100002D54(&qword_100064B18, &qword_10004E0A8);
    v35 = sub_10004A65C();
    v36 = *(v35 - 8);
    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_10004CBE0;
    sub_10004A73C();
    (*(v36 + 104))(v38 + v37, enum case for VFXOverrideModel.deviceRotation(_:), v35);
    sub_10004A4FC();
  }

  sub_10004A07C();

  dispatch_group_leave(v45);
}

uint64_t sub_1000341F4()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for SnapshotKind(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SnapshotKind(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1000342C0()
{
  result = qword_100064B08;
  if (!qword_100064B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064B08);
  }

  return result;
}

uint64_t sub_100034318(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_10004AE5C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_10003434C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&qword_100064B10, &unk_10004E3B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1000343BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_10004A95C();

  v7 = sub_10004A95C();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_100034450()
{
  v24 = sub_100049A6C();
  sub_1000059BC();
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  v23 = sub_10004A39C();
  sub_1000059BC();
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = (v4 + v6 + v9) & ~v9;
  v12 = *(v11 + 64);
  v13 = sub_10004A71C();
  sub_1000059BC();
  v15 = v14;
  v17 = v16;
  v18 = *(v15 + 80);
  v19 = (v10 + v12 + v18) & ~v18;
  v20 = v3 | v9 | v18;
  v21 = (*(v17 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v24);
  (*(v8 + 8))(v0 + v10, v23);
  (*(v15 + 8))(v0 + v19, v13);

  return _swift_deallocObject(v0, v21 + 8, v20 | 7);
}

void sub_100034614()
{
  v1 = sub_100049A6C();
  sub_1000347D8(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_10004A39C();
  sub_1000347D8(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = sub_10004A71C();
  sub_1000347D8(v11);
  v13 = v12;
  v15 = v14;
  v16 = (v8 + v10 + *(v13 + 80)) & ~*(v13 + 80);
  v17 = *(v0 + 16);
  v18 = *(v0 + 24);
  v19 = *(v0 + ((*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100033AD0(v17, v18, v0 + v3, v0 + v8, v0 + v16, v19);
}

unint64_t sub_100034764()
{
  result = qword_100064B20;
  if (!qword_100064B20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100064B20);
  }

  return result;
}

uint64_t sub_1000347A8(uint64_t a1)
{

  return swift_once();
}

void sub_1000347E8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

unint64_t sub_100034808(uint64_t a1, unint64_t a2)
{

  return sub_1000230EC(a1, a2, (v2 - 88));
}

uint64_t *WeatherLocation.currentLocationID.unsafeMutableAddressor()
{
  if (qword_100063468 != -1)
  {
    sub_100034908(&qword_100063468);
  }

  return &static WeatherLocation.currentLocationID;
}

uint64_t sub_100034860()
{
  result = sub_100049ECC();
  static WeatherLocation.currentLocationID = result;
  *algn_1000682E8 = v1;
  return result;
}

uint64_t static WeatherLocation.currentLocationID.getter()
{
  if (qword_100063468 != -1)
  {
    sub_100034908(&qword_100063468);
  }

  v0 = static WeatherLocation.currentLocationID;

  return v0;
}

uint64_t sub_100034908(uint64_t a1)
{

  return swift_once();
}

void sub_100034928()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    [v1 removeFromSuperview];
    v1 = *(v0 + 24);
  }

  *(v0 + 24) = 0;
}

uint64_t sub_100034968()
{
  if (*(v0 + 33) == 1)
  {
    v1 = *(v0 + 32) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_10003498C(double a1)
{
  if (!UIAccessibilityIsReduceMotionEnabled() && *(v1 + 33) == 1 && (*(v1 + 32) & 1) == 0)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      sub_100035294();
      v3 = v2;
      sub_10004A92C();
      sub_1000027DC((1.0 - v4) * 0.2 + 1.0, 0.5, 0.25);
    }
  }
}

void sub_100034A54(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*(v3 + 33) == 1 && (*(v3 + 32) & 1) == 0)
  {
    if (a1)
    {
      v6 = a1;
      if (sub_100030FA4(1))
      {
        if (qword_100063498 != -1)
        {
          sub_100019F98(&qword_100063498);
        }

        v7 = sub_100049FCC();
        sub_100008F90(v7, qword_100068378);
        v8 = sub_100049FAC();
        v9 = sub_10004AB9C();
        if (!sub_1000352E8(v9))
        {
          goto LABEL_30;
        }

        v10 = sub_10001A048();
        *v10 = 0;
        v11 = "Skipping unload of background because rendering is in progress";
        goto LABEL_29;
      }

      if (*(v3 + 24))
      {
        v16 = [v6 backgroundView];
        v17 = [v16 subviews];

        sub_1000047A4();
        v18 = sub_10004AA5C();

        v19 = sub_100034FC8(v18);

        sub_100002D54(&qword_100064BE0, &qword_10004E118);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10004CBE0;
        v21 = *(v4 + 24);
        *(inited + 32) = v21;
        v22 = v21;
        sub_10002B404(v19, inited);
        v24 = v23;

        swift_setDeallocating();
        sub_100035234();
        if (v24)
        {
          if (qword_100063498 != -1)
          {
            sub_100019F98(&qword_100063498);
          }

          v25 = sub_100049FCC();
          sub_100008F90(v25, qword_100068378);
          v8 = sub_100049FAC();
          v26 = sub_10004AB9C();
          if (!sub_1000352E8(v26))
          {
            goto LABEL_30;
          }

          v10 = sub_10001A048();
          *v10 = 0;
          v11 = "Skipping unload of background because a snapshot already exists";
          goto LABEL_29;
        }
      }

      if (qword_100063498 != -1)
      {
        sub_100019F98(&qword_100063498);
      }

      v27 = sub_100049FCC();
      sub_100008F90(v27, qword_100068378);
      v28 = sub_100049FAC();
      v29 = sub_10004AB9C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = sub_10001A048();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Starting to unload background while on home screen", v30, 2u);
      }

      v31 = [v6 backgroundView];
      v32 = sub_100002008();

      if (!v32)
      {
        v8 = sub_100049FAC();
        v35 = sub_10004AB7C();
        if (!sub_1000352E8(v35))
        {
LABEL_30:

          goto LABEL_14;
        }

        v10 = sub_10001A048();
        *v10 = 0;
        v11 = "Failed to snapshot the background view when unloading on home screen";
LABEL_29:
        _os_log_impl(&_mh_execute_header, v8, v4, v11, v10, 2u);

        goto LABEL_30;
      }

      v33 = sub_100035110(v4, v6);
      [v33 setImage:v32];
      ObjectType = swift_getObjectType();
      (*(a3 + 80))(2, ObjectType, a3);
      sub_100030FFC();
    }

    else
    {
      if (qword_100063498 != -1)
      {
        sub_100019F98(&qword_100063498);
      }

      v12 = sub_100049FCC();
      sub_100008F90(v12, qword_100068378);
      v13 = sub_100049FAC();
      v14 = sub_10004AB7C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = sub_10001A048();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Failed to unload background on home screen because renderer is not set", v15, 2u);
      }
    }
  }

LABEL_14:
  sub_100030A2C(2);
}

void sub_100034EC0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 33) == 1 && (*(v3 + 32) & 1) == 0)
  {
    v7 = [a1 environment];
    swift_getObjectType();
    sub_100035304();
    v9 = v8;
    swift_unknownObjectRelease();
    if (v9 == 1)
    {

      sub_100034A54(a1, a2, a3);
    }

    else
    {
      v10 = *(v3 + 24);
      if (v10)
      {
        [v10 removeFromSuperview];
        v10 = *(v3 + 24);
      }

      *(v3 + 24) = 0;
    }
  }
}

uint64_t sub_100034FB4(char a1, uint64_t a2)
{
  *(v2 + 33) = a1;
  *(v2 + 32) = 0;
  *(v2 + 16) = a2;
  *(v2 + 24) = 0;
  return v2;
}

void *sub_100034FC8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_10004AE5C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = &_swiftEmptyArrayStorage;
  if (v2)
  {
    result = sub_10004ADDC();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          sub_10004AD7C();
        }

        else
        {
          v5 = *(a1 + 8 * v4 + 32);
        }

        ++v4;
        sub_1000047A4();
        sub_100002D54(&qword_100064BE8, &qword_10004E120);
        swift_dynamicCast();
        sub_10004ADBC();
        sub_10004ADEC();
        sub_10004ADFC();
        sub_10004ADCC();
      }

      while (v2 != v4);
      return &_swiftEmptyArrayStorage;
    }
  }

  return result;
}

id sub_100035110(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v6 = [objc_allocWithZone(UIImageView) init];
    v7 = [a2 backgroundView];
    sub_100002560(v6, 2);

    v8 = *(a1 + 24);
    *(a1 + 24) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1000351B4()
{

  return v0;
}

uint64_t sub_1000351DC()
{
  sub_1000351B4();

  return _swift_deallocClassInstance(v0, 34, 7);
}

uint64_t sub_100035234()
{
  sub_100002D54(&qword_100064BE8, &qword_10004E120);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

unint64_t sub_100035294()
{
  result = qword_100064BF0;
  if (!qword_100064BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064BF0);
  }

  return result;
}

BOOL sub_1000352E8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

double sub_100035304()
{
  [v0 unlockProgress];
  v1 = sub_100049F3C();
  [v0 unlockProgress];
  v3 = v2;
  if ((v1 & 1) == 0)
  {
    sub_100049F3C();
    [v0 unlockProgress];
    return v4;
  }

  return v3;
}

double sub_100035390()
{
  [v0 linearBacklightProgress];
  v1 = sub_100049F3C();
  [v0 linearBacklightProgress];
  v3 = v2;
  if ((v1 & 1) == 0)
  {
    sub_100049F3C();
    [v0 linearBacklightProgress];
    return v4;
  }

  return v3;
}

uint64_t sub_10003541C(uint64_t a1)
{
  v2 = sub_100049BAC();
  sub_1000059BC();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004A7EC();
  sub_1000059BC();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v2);
  type metadata accessor for DynamicRotationState(0);
  sub_10004A7DC();
  sub_10004A7FC();
  return (*(v10 + 8))(v13, v8);
}

uint64_t sub_100035598@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = sub_10004A72C();
  v5 = *(*(v4 - 8) + 104);
  v6 = &enum case for TargetWindowSizeClass.maglev(_:);
  if (v3 != 1)
  {
    v6 = &enum case for TargetWindowSizeClass.poster(_:);
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

void sub_100035658(uint64_t a1@<X8>)
{
  v2 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  swift_beginAccess();
  sub_1000139C8();
  v5 = type metadata accessor for PosterData(0);
  if (sub_100004288(v4, 1, v5) == 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0uLL;
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_100063460 != -1)
    {
      swift_once();
    }

    v10 = qword_1000682D0;
    v13._countAndFlagsBits = 0x800000010004F820;
    v18._object = 0x800000010004F7F0;
    v18._countAndFlagsBits = 0xD000000000000021;
    v19.value._countAndFlagsBits = 0;
    v19.value._object = 0;
    v11.super.isa = v10;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v6 = sub_10004990C(v18, v19, v11, v20, 0xD000000000000051, v13);
    v7 = v12;

    sub_100038C6C(v4, type metadata accessor for PosterData);
    v9 = xmmword_10004E140;
    v8 = 1;
  }

  else
  {
    sub_10002CF38(*v4, 1, v15);
    v6 = v15[0];
    v7 = v15[1];
    v9 = v16;
    v8 = v17;
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 32) = v8;
}

id sub_100035854(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100049FCC();
  sub_1000059BC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100005A34();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  *&v1[OBJC_IVAR____TtC13WeatherPoster12PosterEditor_editor] = 0;
  v15 = type metadata accessor for PosterData(0);
  sub_100013E80(v15);
  v16 = type metadata accessor for PosterAnimationViewModel(0);
  sub_100013E80(v16);
  v1[OBJC_IVAR____TtC13WeatherPoster12PosterEditor_hasPosterDataUpdated] = 0;
  if (qword_100063490 != -1)
  {
    sub_100038CDC(&qword_100063490);
  }

  v17 = sub_100008F90(v5, qword_100068360);
  v18 = *(v7 + 16);
  v18(v14, v17, v5);
  v18(v11, v14, v5);
  if (a1)
  {
    v19 = type metadata accessor for VFXAnimation(0);
    sub_10001A0AC(v19);
    v20 = sub_10000AFA4(v11);
    v21 = &off_10005E690;
  }

  else
  {
    v22 = type metadata accessor for MicaAnimation(0);
    sub_10001A0AC(v22);
    v20 = sub_10003D3EC(v11);
    v21 = &off_10005F490;
  }

  v23 = &v1[OBJC_IVAR____TtC13WeatherPoster12PosterEditor_animation];
  *v23 = v20;
  v23[1] = v21;
  v24 = objc_allocWithZone(type metadata accessor for PosterDataManager());
  *&v1[OBJC_IVAR____TtC13WeatherPoster12PosterEditor_dataManager] = sub_100042BFC(1);
  v18(v11, v14, v5);
  v25 = type metadata accessor for PosterLabelManager(0);
  sub_10001A0AC(v25);
  *&v1[OBJC_IVAR____TtC13WeatherPoster12PosterEditor_labelManager] = sub_1000393F8(v11);
  v1[OBJC_IVAR____TtC13WeatherPoster12PosterEditor_deviceSupportsVFX] = a1 & 1;
  v26 = type metadata accessor for DynamicRotationManager(0);
  sub_10001A0AC(v26);
  v27 = sub_10002F6A0();
  (*(v7 + 8))(v14, v5);
  *&v2[OBJC_IVAR____TtC13WeatherPoster12PosterEditor_rotationManager] = v27;
  v29.receiver = v2;
  v29.super_class = ObjectType;
  return objc_msgSendSuper2(&v29, "init");
}

uint64_t sub_100035AEC(void *a1, void *a2)
{
  v67 = a2;
  sub_100049E9C();
  sub_1000059BC();
  v64 = v5;
  v65 = v4;
  __chkstk_darwin(v4);
  sub_1000059D0();
  v63 = v7 - v6;
  v8 = sub_100002D54(&qword_100063DC0, &qword_10004E5C0);
  sub_100005A50(v8);
  sub_100013ED4();
  __chkstk_darwin(v9);
  v66 = &v60 - v10;
  v11 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  sub_100005A50(v11);
  sub_100013ED4();
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  type metadata accessor for PosterData(0);
  sub_100005A24();
  __chkstk_darwin(v15);
  sub_100005A34();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v68 = &v60 - v20;
  sub_100013EFC();
  __chkstk_darwin(v21);
  v23 = &v60 - v22;
  v24 = *(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_editor);
  *(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_editor) = a1;

  *(*(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_rotationManager) + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_delegate + 8) = &off_10005F3E8;
  swift_unknownObjectWeakAssign();
  sub_100002D54(&unk_100063E10, &qword_10004D0C0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10004CFA0;
  v26 = *(*(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_animation + 8) + 8);
  *(v25 + 32) = *(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_animation);
  *(v25 + 40) = v26;
  *(v25 + 48) = *(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_labelManager);
  *(v25 + 56) = &off_10005F460;
  v27 = a1;
  v28 = v67;
  swift_unknownObjectRetain();

  sub_10002D7A8(v25);
  v29 = v23;

  sub_10002D844([v28 deviceOrientation]);
  v30 = *(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_dataManager);
  sub_1000425C8(v29);
  sub_100038CFC();
  sub_100038C14();
  sub_100038D5C(v14);
  sub_100013F40(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_posterData, v69);
  sub_100013120();
  swift_endAccess();
  if (qword_100063490 != -1)
  {
    sub_100038CDC(&qword_100063490);
  }

  v31 = sub_100049FCC();
  sub_100008F90(v31, qword_100068360);
  sub_100038D44();
  v32 = v68;
  sub_100038C14();
  sub_100038C14();
  swift_unknownObjectRetain();
  v33 = sub_100049FAC();
  v34 = sub_10004AB9C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v33, v34))
  {
    v61 = v34;
    v62 = v29;
    v35 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v69[0] = v60;
    *v35 = 136447235;
    [v28 deviceOrientation];
    v36 = sub_10001A1C4();
    v38 = sub_1000230EC(v36, v37, v69);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2160;
    v67 = v18;
    *(v35 + 14) = 1752392040;
    *(v35 + 22) = 2081;
    v39 = sub_100026D60();
    v41 = v40;
    sub_100038CC4();
    sub_100038C6C(v32, v42);
    v43 = sub_1000230EC(v39, v41, v69);

    *(v35 + 24) = v43;
    *(v35 + 32) = 2160;
    *(v35 + 34) = 1752392040;
    v45 = v66;
    v44 = v67;
    *(v35 + 42) = 2081;
    sub_100026C88(v45);
    v46 = type metadata accessor for PosterDataModel(0);
    if (sub_100004288(v45, 1, v46) == 1)
    {
      sub_10000591C(v45, &qword_100063DC0, &qword_10004E5C0);
      v47 = 0xE300000000000000;
      v48 = 7104878;
    }

    else
    {
      v51 = v63;
      v50 = v64;
      v52 = v65;
      (*(v64 + 16))(v63, v45 + *(v46 + 20), v65);
      sub_100038D2C();
      sub_100038C6C(v45, v53);
      v48 = sub_100049E4C();
      v47 = v54;
      (*(v50 + 8))(v51, v52);
      v44 = v67;
    }

    sub_100038CC4();
    sub_100038C6C(v44, v55);
    v56 = sub_1000230EC(v48, v47, v69);

    *(v35 + 44) = v56;
    _os_log_impl(&_mh_execute_header, v33, v61, "Did initialize; orientation=%{public}s, data=%{private,mask.hash}s, location=%{private,mask.hash}s", v35, 0x34u);
    v57 = v60;
    swift_arrayDestroy();
    sub_100013F58(v57);
    sub_100013F58(v35);

    v29 = v62;
  }

  else
  {

    sub_100038D14();
    sub_100038C6C(v18, v49);
    sub_100038C6C(v32, v34);
  }

  *(v30 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_posterDataDelegate + 8) = &off_10005F430;
  swift_unknownObjectWeakAssign();
  *(v30 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_sessionExtenderDelegate + 8) = &off_10005F418;
  swift_unknownObjectWeakAssign();
  sub_100042830();
  sub_100038CC4();
  return sub_100038C6C(v29, v58);
}

void sub_10003619C(int a1, id a2, void *a3)
{
  [a2 deviceOrientation];
  if (qword_100063490 != -1)
  {
    sub_100038CDC(&qword_100063490);
  }

  v5 = sub_100049FCC();
  sub_100008F90(v5, qword_100068360);
  v6 = sub_100049FAC();
  v7 = sub_10004AB9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    v10 = sub_10001A1C4();
    v12 = sub_1000230EC(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Did update; orientation=%{public}s", v8, 0xCu);
    sub_100008FC8(v9);
    sub_100013F58(v9);
    sub_100013F58(v8);
  }

  v13 = [objc_opt_self() currentDevice];
  v14 = [v13 userInterfaceIdiom];

  if (v14 == 1)
  {
    v15 = [a2 deviceOrientation];
    v16 = [a3 animationSettings];
    sub_10002DD38(v15, v16);
  }
}

double sub_100036438()
{
  if (qword_100063460 != -1)
  {
    swift_once();
  }

  v0 = qword_1000682D0;
  v11._countAndFlagsBits = 0x800000010004F8A0;
  v13._countAndFlagsBits = 0x72656874616557;
  v13._object = 0xE700000000000000;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v1.super.isa = v0;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v2 = sub_10004990C(v13, v14, v1, v15, 0xD000000000000026, v11);
  v4 = v3;

  v5 = [objc_allocWithZone(PRTimeFontConfiguration) initWithTimeFontIdentifier:PRTimeFontIdentifierSoft];
  v6 = [objc_opt_self() vibrantMaterialColor];
  v12[3] = sub_100013820(0, &qword_100064260, PRPosterColor_ptr);
  v12[0] = v6;
  v7 = objc_allocWithZone(PREditingLook);
  v8 = sub_100038974(0xD000000000000013, 0x800000010004F880, v2, v4, v5, v12);
  sub_100002D54(&qword_1000634E0, &qword_10004C3C0);
  v9 = swift_allocObject();
  *&result = 1;
  *(v9 + 16) = xmmword_10004D2F0;
  *(v9 + 32) = v8;
  return result;
}

id sub_100036674()
{
  v0 = [objc_allocWithZone(PREditorContentStylePickerConfiguration) init];
  [v0 setColorWellDisplayMode:1];
  sub_100002D54(&qword_1000634E0, &qword_10004C3C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10004E150;
  *(v1 + 32) = [objc_allocWithZone(PRPosterContentVibrantMaterialStyle) init];
  *(v1 + 40) = [objc_allocWithZone(PRPosterContentVibrantMonochromeStyle) init];
  v2 = objc_allocWithZone(PREditorContentStylePalette);
  v3 = sub_100038B0C(v1, 0, 0xE000000000000000);
  [v0 setStylePalette:v3];

  return v0;
}

uint64_t sub_1000367C4(uint64_t a1, void *a2)
{
  v4 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  sub_100005A50(v4);
  sub_100013ED4();
  __chkstk_darwin(v5);
  v7 = &v20[-v6 - 8];
  v8 = type metadata accessor for PosterAnimationViewModel(0);
  sub_100005A24();
  __chkstk_darwin(v9);
  sub_1000059D0();
  v12 = v11 - v10;
  sub_100035658(&v21);
  v13 = [a2 backgroundView];
  if (v22)
  {
    v25[0] = v21;
    v25[1] = v22;
    v26 = v23;
    v27 = v24;
    sub_10003948C(v25, v13);
  }

  else
  {
    sub_100039370();
  }

  sub_100036A2C(v2, &v21, a2, v12);
  sub_10000591C(&v21, &unk_100064CD0, &unk_10004E210);
  sub_100038C14();
  sub_100004544(v7, 0, 1, v8);
  sub_100013F40(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_lastRenderedAnimationViewModel, v20);
  sub_100013120();
  swift_endAccess();
  v14 = *(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_animation + 8);
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 24);
  v17 = swift_unknownObjectRetain();
  v16(v17, &off_10005F400, ObjectType, v14);
  (*(v14 + 40))(v12, 0, ObjectType, v14);
  (*(v14 + 56))(ObjectType, v14);
  return sub_100038C6C(v12, type metadata accessor for PosterAnimationViewModel);
}

void sub_100036A2C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v110 = a3;
  v111 = a4;
  v109 = *(a2 + 8);
  v5 = sub_100002D54(&qword_1000637A8, "4E");
  __chkstk_darwin(v5 - 8);
  v92 = &v81 - v6;
  v94 = sub_10004A8AC();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v100 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10004A69C();
  v101 = *(v107 - 8);
  __chkstk_darwin(v107);
  v102 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_100049D9C();
  v99 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_100049B7C();
  v98 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002D54(&unk_100063DE0, "4E");
  v12 = __chkstk_darwin(v11 - 8);
  v97 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v84 = &v81 - v14;
  v90 = sub_100049E9C();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_100049C2C();
  v85 = *(v86 - 1);
  __chkstk_darwin(v86);
  v87 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100049F2C();
  v91 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PosterDataModel.DataPoint(0);
  v108 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PosterData(0);
  __chkstk_darwin(v21);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100002D54(&qword_100063DC0, &qword_10004E5C0);
  __chkstk_darwin(v24 - 8);
  v26 = &v81 - v25;
  v27 = type metadata accessor for PosterDataModel(0);
  v28 = __chkstk_darwin(v27);
  v30 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v81 - v31;
  v33 = OBJC_IVAR____TtC13WeatherPoster12PosterEditor_posterData;
  swift_beginAccess();
  if (sub_100004288(a1 + v33, 1, v21))
  {
    sub_100004544(v26, 1, 1, v27);
LABEL_4:
    sub_10000591C(v26, &qword_100063DC0, &qword_10004E5C0);
LABEL_5:
    v34 = v109;
    if (qword_100063498 != -1)
    {
      swift_once();
    }

    v35 = sub_100049FCC();
    sub_100008F90(v35, qword_100068378);
    v36 = sub_100049FAC();
    v37 = sub_10004AB9C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 67109120;
      *(v38 + 4) = v34 != 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Rendering default view model because the editor has no valid weather data; shouldShowAnimation=%{BOOL}d", v38, 8u);
    }

    v39 = v110;
    v40 = [v110 backgroundView];
    v41 = [v39 foregroundView];
    sub_1000050D8(v40, v41, v34 != 0, v111);

    return;
  }

  v81 = v18;
  v83 = v32;
  v82 = v20;
  sub_100038C14();
  sub_100026C88(v26);
  sub_100038C6C(v23, type metadata accessor for PosterData);
  if (sub_100004288(v26, 1, v27) == 1)
  {
    goto LABEL_4;
  }

  v42 = v83;
  sub_100038BBC();
  if (!*(*(v42 + *(v27 + 40)) + 16))
  {
    sub_100038C6C(v42, type metadata accessor for PosterDataModel);
    goto LABEL_5;
  }

  v43 = v27;
  sub_100038C14();
  if (qword_100063490 != -1)
  {
    swift_once();
  }

  v44 = sub_100049FCC();
  sub_100008F90(v44, qword_100068360);
  v45 = v30;
  sub_100038C14();
  v46 = sub_100049FAC();
  v47 = sub_10004AB9C();
  v48 = os_log_type_enabled(v46, v47);
  v49 = v90;
  if (v48)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v112 = v51;
    *v50 = 136446210;
    v52 = sub_10002A190();
    v54 = v53;
    sub_100038C6C(v45, type metadata accessor for PosterDataModel);
    v55 = sub_1000230EC(v52, v54, &v112);

    *(v50 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v46, v47, "Rendering poster; data=%{public}s", v50, 0xCu);
    sub_100008FC8(v51);
  }

  else
  {

    sub_100038C6C(v30, type metadata accessor for PosterDataModel);
  }

  v56 = v101;
  v58 = v105;
  v57 = v106;
  v59 = v99;
  v60 = v95;
  v61 = v83;
  (*(v85 + 16))(v87, &v83[*(v43 + 24)], v86);
  (*(v89 + 16))(v88, v61 + *(v43 + 20), v49);
  sub_10004AC9C();
  v62 = v84;
  sub_100004544(v84, 1, 1, v58);
  sub_100049EFC();
  v63 = v58;
  v64 = *(v98 + 16);
  v90 = v98 + 16;
  v109 = v64;
  v65 = v60;
  v66 = v82;
  v64(v103, v82, v63);
  v67 = v81;
  v68 = v81[5];
  v108 = *(v59 + 16);
  v108(v104, v66 + v68, v57);
  v69 = *(v66 + v67[6]);
  v70 = *(v66 + v67[7]);
  v71 = v67[8];
  v89 = *(v56 + 16);
  (v89)(v102, v66 + v71, v107);
  sub_1000139C8();
  sub_1000139C8();
  v72 = v67[9];
  v87 = *(v93 + 16);
  (v87)(v100, v66 + v72, v94);
  LODWORD(v88) = *(v66 + v67[10]);
  v73 = v92;
  sub_1000139C8();
  v74 = v110;
  v86 = [v110 backgroundView];
  v110 = [v74 foregroundView];
  v75 = v91;
  v76 = v111;
  (*(v91 + 16))(v111, v65, v96);
  v77 = type metadata accessor for PosterAnimationViewModel(0);
  v109(v76 + v77[5], v103, v105);
  v108((v76 + v77[6]), v104, v106);
  *(v76 + v77[7]) = v69;
  *(v76 + v77[8]) = v70;
  (v89)(v76 + v77[9], v102, v107);
  sub_1000139C8();
  v78 = v97;
  sub_1000139C8();
  v79 = v100;
  v80 = v94;
  (v87)(v76 + v77[12], v100, v94);
  *(v76 + v77[13]) = v88;
  sub_1000139C8();
  *(v76 + v77[15]) = 1;
  *(v76 + v77[17]) = v86;
  *(v76 + v77[18]) = v110;
  sub_100035598(v76 + v77[16]);
  sub_10000591C(v73, &qword_1000637A8, "4E");
  (*(v93 + 8))(v79, v80);
  sub_10000591C(v78, &unk_100063DE0, "4E");
  sub_10000591C(v62, &unk_100063DE0, "4E");
  (*(v101 + 8))(v102, v107);
  (*(v99 + 8))(v104, v106);
  (*(v98 + 8))(v103, v105);
  (*(v75 + 8))(v95, v96);
  sub_100038C6C(v82, type metadata accessor for PosterDataModel.DataPoint);
  sub_100038C6C(v83, type metadata accessor for PosterDataModel);
}

void sub_100037A34(void *a1, uint64_t a2, void (**a3)(void))
{
  if (qword_100063490 != -1)
  {
    swift_once();
  }

  v6 = sub_100049FCC();
  sub_100008F90(v6, qword_100068360);
  v7 = sub_100049FAC();
  v8 = sub_10004AB9C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Editor did finalize", v9, 2u);
  }

  *(*(a2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_dataManager) + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_posterDataDelegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v10 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  isa = sub_10004AA9C().super.super.isa;
  v12 = sub_10004A95C();
  [v10 setObject:isa forUserInfoKey:v12];

  [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  swift_getObjectType();
  LOBYTE(isa) = sub_100019B58();
  swift_unknownObjectRelease();
  if ((isa & 1) == 0)
  {
    sub_100038F8C(1);
  }

  a3[2](a3);

  _Block_release(a3);
}

void sub_100037CDC()
{
  v1 = v0;
  v2 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  sub_100005A50(v2);
  sub_100013ED4();
  __chkstk_darwin(v3);
  v5 = &v15[-v4 - 8];
  if (qword_100063490 != -1)
  {
    sub_100038CDC(&qword_100063490);
  }

  v6 = sub_100049FCC();
  sub_100008F90(v6, qword_100068360);
  v7 = sub_100049FAC();
  v8 = sub_10004AB9C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Invalidated", v9, 2u);
    sub_100013F58(v9);
  }

  sub_10002DBA0();
  v10 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_animation + 8);
  ObjectType = swift_getObjectType();
  (*(v10 + 80))(1, ObjectType, v10);
  sub_1000391F0();
  v12 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_editor);
  *(v1 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_editor) = 0;

  v13 = type metadata accessor for PosterData(0);
  sub_100004544(v5, 1, 1, v13);
  sub_100013F40(v1 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_posterData, v15);
  sub_100013120();
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_hasPosterDataUpdated) = 0;
  *(*(v1 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_dataManager) + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_posterDataDelegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_10004287C();
}

void sub_100037F4C(uint64_t a1)
{
  v2 = v1;
  sub_100049E9C();
  sub_1000059BC();
  v74 = v5;
  v75 = v4;
  __chkstk_darwin(v4);
  sub_1000059D0();
  v73 = v7 - v6;
  v8 = sub_100002D54(&qword_100063DC0, &qword_10004E5C0);
  sub_100005A50(v8);
  sub_100013ED4();
  __chkstk_darwin(v9);
  v77 = &v72 - v10;
  type metadata accessor for PosterData(0);
  sub_100005A24();
  __chkstk_darwin(v11);
  sub_100005A34();
  v81 = v12 - v13;
  sub_100013EFC();
  __chkstk_darwin(v14);
  v78 = &v72 - v15;
  sub_100013EFC();
  __chkstk_darwin(v16);
  v18 = (&v72 - v17);
  v19 = sub_100002D54(&qword_100063DC8, &qword_10004D0B0) - 8;
  sub_100013ED4();
  __chkstk_darwin(v20);
  v22 = (&v72 - v21);
  v23 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  v24 = sub_100005A50(v23);
  __chkstk_darwin(v24);
  sub_100005A34();
  v79 = v25 - v26;
  sub_100013EFC();
  v28 = __chkstk_darwin(v27);
  v30 = &v72 - v29;
  __chkstk_darwin(v28);
  v32 = &v72 - v31;
  *(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_hasPosterDataUpdated) = 1;
  sub_100038CFC();
  v80 = a1;
  sub_100038C14();
  sub_100038D5C(v32);
  v33 = OBJC_IVAR____TtC13WeatherPoster12PosterEditor_posterData;
  swift_beginAccess();
  v34 = *(v19 + 56);
  sub_1000139C8();
  sub_1000139C8();
  sub_100013F08(v22);
  if (v35)
  {
    sub_10000591C(v32, &unk_100063DD0, &unk_10004D100);
    sub_100013F08(v22 + v34);
    if (v35)
    {
      sub_10000591C(v22, &unk_100063DD0, &unk_10004D100);
LABEL_17:
      if (qword_100063490 != -1)
      {
        sub_100038CDC(&qword_100063490);
      }

      v56 = sub_100049FCC();
      sub_100008F90(v56, qword_100068360);
      v57 = sub_100049FAC();
      v58 = sub_10004AB9C();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v57, v58, "Poster data updated, but did not change", v59, 2u);
        sub_100013F58(v59);
      }

      return;
    }

    goto LABEL_9;
  }

  sub_1000139C8();
  sub_100013F08(v22 + v34);
  if (v35)
  {
    sub_10000591C(v32, &unk_100063DD0, &unk_10004D100);
    sub_100038CC4();
    sub_100038C6C(v30, v36);
LABEL_9:
    sub_10000591C(v22, &qword_100063DC8, &qword_10004D0B0);
    goto LABEL_10;
  }

  sub_100038BBC();
  v55 = sub_10002A500(v30, v18);
  sub_100038C6C(v18, type metadata accessor for PosterData);
  sub_10000591C(v32, &unk_100063DD0, &unk_10004D100);
  sub_100038C6C(v30, type metadata accessor for PosterData);
  sub_10000591C(v22, &unk_100063DD0, &unk_10004D100);
  if (v55)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (qword_100063490 != -1)
  {
    sub_100038CDC(&qword_100063490);
  }

  v37 = sub_100049FCC();
  sub_100008F90(v37, qword_100068360);
  sub_100038D44();
  v38 = v78;
  sub_100038C14();
  v39 = v81;
  sub_100038C14();
  v40 = sub_100049FAC();
  LODWORD(v41) = sub_10004AB9C();
  v42 = os_log_type_enabled(v40, v41);
  v76 = v33;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v82[0] = v72;
    *v43 = 136446723;
    v44 = sub_100026D60();
    v46 = v45;
    sub_100038CC4();
    sub_100038C6C(v47, v48);
    v49 = sub_1000230EC(v44, v46, v82);

    *(v43 + 4) = v49;
    *(v43 + 12) = 2160;
    *(v43 + 14) = 1752392040;
    *(v43 + 22) = 2081;
    v50 = v77;
    sub_100026C88(v77);
    v51 = type metadata accessor for PosterDataModel(0);
    if (sub_100004288(v50, 1, v51) == 1)
    {
      sub_10000591C(v50, &qword_100063DC0, &qword_10004E5C0);
      v52 = 0xE300000000000000;
      v53 = 7104878;
    }

    else
    {
      v61 = v74;
      v60 = v75;
      v62 = *(v74 + 16);
      v63 = v50 + *(v51 + 20);
      LODWORD(v78) = v41;
      v41 = v73;
      v62(v73, v63, v75);
      sub_100038D2C();
      sub_100038C6C(v50, v64);
      v53 = sub_100049E4C();
      v52 = v65;
      v66 = v41;
      LOBYTE(v41) = v78;
      (*(v61 + 8))(v66, v60);
      v39 = v81;
    }

    sub_100038CC4();
    sub_100038C6C(v39, v67);
    v68 = sub_1000230EC(v53, v52, v82);

    *(v43 + 24) = v68;
    _os_log_impl(&_mh_execute_header, v40, v41, "Updating looks to reflect latest data; data=%{public}s, location=%{private,mask.hash}s", v43, 0x20u);
    v69 = v72;
    swift_arrayDestroy();
    sub_100013F58(v69);
    sub_100013F58(v43);
  }

  else
  {

    sub_100038D14();
    sub_100038C6C(v39, v54);
    sub_100038C6C(v38, v22);
  }

  sub_100038CFC();
  v70 = v79;
  sub_100038C14();
  sub_100038D5C(v70);
  sub_100013F40(v2 + v76, v82);
  sub_100013120();
  swift_endAccess();
  v71 = *(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_editor);
  if (v71)
  {
    [v71 updateLooks];
  }
}

uint64_t type metadata accessor for PosterEditor(uint64_t a1)
{
  result = qword_100064CC0;
  if (!qword_100064CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100038828(uint64_t a1)
{
  sub_100016CAC(319, &qword_100063DB0, type metadata accessor for PosterData);
  if (v1 <= 0x3F)
  {
    sub_100016CAC(319, &qword_100063AD8, type metadata accessor for PosterAnimationViewModel);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_100038974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = sub_10004A95C();

  v10 = sub_10004A95C();

  v11 = a6[3];
  if (v11)
  {
    v12 = sub_10002B4C4(a6, a6[3]);
    v13 = *(v11 - 8);
    __chkstk_darwin(v12);
    v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = sub_10004AF2C();
    (*(v13 + 8))(v15, v11);
    sub_100008FC8(a6);
  }

  else
  {
    v16 = 0;
  }

  v17 = [v6 initWithIdentifier:v9 displayName:v10 initialTimeFontConfiguration:a5 initialTitleColor:v16];

  swift_unknownObjectRelease();
  return v17;
}

id sub_100038B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002D54(&qword_100064CE0, &qword_10004E220);
  v5.super.isa = sub_10004AA4C().super.isa;

  if (a3)
  {
    v6 = sub_10004A95C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithContentStyles:v5.super.isa localizedName:v6];

  return v7;
}

uint64_t sub_100038BBC()
{
  sub_100013FF4();
  v1(0);
  sub_100005A24();
  v2 = sub_100013F94();
  v3(v2);
  return v0;
}

uint64_t sub_100038C14()
{
  sub_100013FF4();
  v1(0);
  sub_100005A24();
  v2 = sub_100013F94();
  v3(v2);
  return v0;
}

uint64_t sub_100038C6C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100005A24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100038CDC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100038D5C(uint64_t a1)
{

  return sub_100004544(a1, 0, 1, v1);
}

double sub_100038D88()
{
  sub_100039068();
  if (v0 <= 0.0)
  {
    if (sub_1000390F0())
    {
      if (qword_100063480 != -1)
      {
        sub_100039168(&qword_100063480);
      }

      v12 = sub_100049FCC();
      sub_100008F90(v12, qword_100068330);
      v13 = sub_100049FAC();
      v14 = sub_10004AB9C();
      if (sub_1000391B4(v14))
      {
        *swift_slowAlloc() = 0;
        sub_100039188();
        _os_log_impl(v15, v16, v17, v18, v19, 2u);
        sub_100039198();
      }

      sub_100038F8C(0);
      return 2.6;
    }

    else
    {
      if (qword_100063480 != -1)
      {
        sub_100039168(&qword_100063480);
      }

      v20 = sub_100049FCC();
      sub_100008F90(v20, qword_100068330);
      v21 = sub_100049FAC();
      v22 = sub_10004AB9C();
      if (sub_1000391B4(v22))
      {
        *swift_slowAlloc() = 0;
        sub_100039188();
        _os_log_impl(v23, v24, v25, v26, v27, 2u);
        sub_100039198();
      }

      return 1.1;
    }
  }

  else
  {
    if (qword_100063480 != -1)
    {
      sub_100039168(&qword_100063480);
    }

    v1 = sub_100049FCC();
    sub_100008F90(v1, qword_100068330);
    v2 = sub_100049FAC();
    v3 = sub_10004AB9C();
    if (sub_1000391B4(v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134349056;
      sub_100039068();
      *(v4 + 4) = v5;
      sub_100039188();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
      sub_100039198();
    }

    sub_100039068();
  }

  return result;
}

void sub_100038F8C(char a1)
{
  sub_10001C9A4();
  v2 = sub_10004ABAC();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1000391D0();
    [v3 setBool:a1 & 1 forKey:v4];
  }
}

id sub_10003901C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_100068300 = result;
  return result;
}

void sub_100039068()
{
  sub_10001C9A4();
  v0 = sub_10004ABAC();
  if (v0)
  {
    v1 = v0;
    v2 = sub_10004A95C();
    [v1 doubleForKey:v2];
  }
}

id sub_1000390F0()
{
  sub_10001C9A4();
  v0 = sub_10004ABAC();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_1000391D0();
  v3 = [v1 BOOLForKey:v2];

  return v3;
}

uint64_t sub_100039168(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100039198()
{
}

BOOL sub_1000391B4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

NSString sub_1000391D0()
{

  return sub_10004A95C();
}

uint64_t sub_1000391F0()
{
  v1 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  sub_100039370();
  v4 = type metadata accessor for DynamicRotationState(0);
  sub_100004544(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC13WeatherPoster18PosterLabelManager_rotationState;
  swift_beginAccess();
  sub_100024F7C(v3, v0 + v5);
  result = swift_endAccess();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  return result;
}

void sub_1000392BC(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7[0] = *a1;
    v7[1] = v4;
    v8 = *(a1 + 16);
    v9 = *(a1 + 32);
    sub_10003948C(v7, a2);
    if (a3 != 3)
    {

      sub_1000393C4(*&a4);
    }
  }

  else
  {

    sub_100039370();
  }
}

void sub_100039370()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    [v1 removeFromSuperview];
    v2 = *(v0 + 24);
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 24) = 0;

  v3 = *(v0 + 16);
  *(v0 + 16) = 0;
}

id sub_1000393C4(double a1)
{
  result = *(v1 + 16);
  if (result)
  {
    v3 = a1 * 6.66666667;
    if (v3 > 1.0)
    {
      v3 = 1.0;
    }

    return [result setAlpha:1.0 - v3];
  }

  return result;
}

uint64_t sub_1000393F8(uint64_t a1)
{
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v3 = OBJC_IVAR____TtC13WeatherPoster18PosterLabelManager_rotationState;
  v4 = type metadata accessor for DynamicRotationState(0);
  sub_100004544(v1 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC13WeatherPoster18PosterLabelManager_logger;
  sub_100049FCC();
  sub_100005A24();
  (*(v6 + 32))(v1 + v5, a1);
  return v1;
}

void sub_10003948C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = a2;
    v56 = sub_10002D164();
    v5 = [objc_opt_self() tertiaryLabelColor];
    v6 = sub_10003A130(v2, v4);
    v7 = sub_10003A29C(v2, v6, a1, v5);
    [v7 setFont:v56];
    [v7 setTextColor:v5];

    sub_10003A69C();
    if (*(a1 + 32))
    {
      v8 = v7;
      v9 = [v8 widthAnchor];
      v10 = [v6 widthAnchor];
      v11 = [v9 constraintLessThanOrEqualToAnchor:v10 multiplier:0.35];

      v12 = *&v8[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_smallTypeWidthConstraint];
      *&v8[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_smallTypeWidthConstraint] = v11;

      v13 = [v8 widthAnchor];
      v14 = [v6 widthAnchor];
      v15 = [v13 constraintLessThanOrEqualToAnchor:v14 constant:-32.0];

      v16 = *&v8[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_largeTypeWidthConstraint];
      *&v8[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_largeTypeWidthConstraint] = v15;

      v17 = objc_opt_self();
      sub_100002D54(&qword_1000634E0, &qword_10004C3C0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_10004E150;
      v19 = [v8 centerXAnchor];
      v20 = [v6 centerXAnchor];
      v21 = sub_10003B1AC();
      v23 = [v21 v22];

      *(v18 + 32) = v23;
      v24 = [v8 bottomAnchor];

      v25 = [v6 safeAreaLayoutGuide];
      v26 = [v25 bottomAnchor];

      v27 = [v24 constraintLessThanOrEqualToAnchor:v26 constant:-50.0];
      *(v18 + 40) = v27;
      sub_100013820(0, &qword_1000634E8, NSLayoutConstraint_ptr);
      isa = sub_10004AA4C().super.isa;

      [v17 activateConstraints:isa];

      sub_10003A924();
    }

    else
    {
      v35 = *&v7[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_smallTypeWidthConstraint];
      *&v7[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_smallTypeWidthConstraint] = 0;

      v36 = *&v7[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_largeTypeWidthConstraint];
      *&v7[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_largeTypeWidthConstraint] = 0;

      v37 = objc_opt_self();
      sub_100002D54(&qword_1000634E0, &qword_10004C3C0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_10004C280;
      v39 = v7;
      v40 = [v39 centerXAnchor];
      v41 = [v6 centerXAnchor];
      v42 = sub_10003B1AC();
      v44 = [v42 v43];

      *(v38 + 32) = v44;
      v45 = [v39 centerYAnchor];
      v46 = [v6 centerYAnchor];
      v47 = sub_10003B1AC();
      v49 = [v47 v48];

      *(v38 + 40) = v49;
      v50 = [v39 widthAnchor];

      v51 = [v6 widthAnchor];
      v52 = sub_10003B1AC();
      v54 = [v52 v53];

      *(v38 + 48) = v54;
      sub_100013820(0, &qword_1000634E8, NSLayoutConstraint_ptr);
      v55 = sub_10004AA4C().super.isa;

      [v37 activateConstraints:v55];
    }
  }

  else
  {
    v29 = *a1;
    v30 = *(a1 + 8);
    v58 = *(a1 + 16);

    sub_10003B0A4(&v58, v57);
    v31 = sub_100049FAC();
    v32 = sub_10004AB7C();

    sub_10003B100(&v58);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v57[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1000230EC(v29, v30, v57);
      _os_log_impl(&_mh_execute_header, v31, v32, "No parent view exists to add label; skipping showing message=%s", v33, 0xCu);
      sub_100008FC8(v34);
    }
  }
}

void sub_100039AEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  __chkstk_darwin(v4 - 8);
  v51 = &v46[-v5];
  v6 = sub_100049BAC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v48 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100002D54(&qword_100064E28, &qword_10004E308);
  sub_100005A24();
  __chkstk_darwin(v10);
  v12 = &v46[-v11];
  v13 = type metadata accessor for DynamicRotationState(0);
  sub_100005A24();
  __chkstk_darwin(v14);
  v16 = &v46[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_100002D54(&qword_100064E30, &unk_10004E310);
  v18 = __chkstk_darwin(v17 - 8);
  v49 = &v46[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v22 = &v46[-v21];
  __chkstk_darwin(v20);
  v24 = &v46[-v23];
  v50 = v7;
  v25 = *(v7 + 16);
  *&v53 = a1;
  v25(&v46[-v23], a1, v6);
  v26 = 1;
  sub_100004544(v24, 0, 1, v6);
  v27 = OBJC_IVAR____TtC13WeatherPoster18PosterLabelManager_rotationState;
  swift_beginAccess();
  *&v52 = v13;
  if (!sub_100004288(v2 + v27, 1, v13))
  {
    sub_100024F18(v2 + v27, v16);
    (*(v50 + 32))(v22, v16, v6);
    v26 = 0;
  }

  sub_100004544(v22, v26, 1, v6);
  v28 = *(v9 + 48);
  sub_1000058BC(v24, v12, &qword_100064E30, &unk_10004E310);
  sub_1000058BC(v22, &v12[v28], &qword_100064E30, &unk_10004E310);
  sub_1000059E0(v12);
  if (v31)
  {
    sub_10003B1B8(v22);
    sub_10003B1B8(v24);
    sub_1000059E0(&v12[v28]);
    if (v31)
    {
      sub_10000591C(v12, &qword_100064E30, &unk_10004E310);
      v29 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v30 = v49;
    sub_1000058BC(v12, v49, &qword_100064E30, &unk_10004E310);
    sub_1000059E0(&v12[v28]);
    if (!v31)
    {
      v32 = v50;
      v33 = v48;
      (*(v50 + 32))(v48, &v12[v28], v6);
      sub_10003B154();
      v47 = sub_10004A94C();
      v34 = *(v32 + 8);
      v34(v33, v6);
      sub_10000591C(v22, &qword_100064E30, &unk_10004E310);
      sub_10000591C(v24, &qword_100064E30, &unk_10004E310);
      v34(v49, v6);
      v29 = v47;
      sub_10000591C(v12, &qword_100064E30, &unk_10004E310);
      goto LABEL_12;
    }

    sub_10003B1B8(v22);
    sub_10003B1B8(v24);
    (*(v50 + 8))(v30, v6);
  }

  sub_10000591C(v12, &qword_100064E28, &qword_10004E308);
  v29 = 0;
LABEL_12:
  v35 = v53;
  v36 = v51;
  sub_100024F18(v53, v51);
  v37 = v52;
  sub_100004544(v36, 0, 1, v52);
  swift_beginAccess();
  sub_100024F7C(v36, v2 + v27);
  swift_endAccess();
  v38 = *(v2 + 3);
  if (v38)
  {
    v39 = v38;
    v40 = [v39 superview];
    if (v40)
    {
      v41 = v40;
      [v40 frame];

      if ((v29 & 1) == 0 || v2[4] == 0.0 && v2[5] == 0.0)
      {
        [v39 bounds];
        *(v2 + 4) = v42;
        *(v2 + 5) = v43;
      }

      sub_10003433C(*(v35 + *(v37 + 32)));
      CGAffineTransformMakeRotation(&v54, ((*(v35 + *(v37 + 20)) * 3.1416) / 180.0));
      tx = v54.tx;
      ty = v54.ty;
      v52 = *&v54.c;
      v53 = *&v54.a;
      [v39 bounds];
      [v39 setBounds:?];
      *&v54.a = v53;
      *&v54.c = v52;
      v54.tx = tx;
      v54.ty = ty;
      [v39 setTransform:&v54];
    }
  }
}

id sub_10003A130(uint64_t a1, void *a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 superview];
    if (v6)
    {
      v7 = v6;
      sub_100013820(0, &qword_100063830, UIView_ptr);
      v8 = a2;
      v9 = sub_10004ACBC();

      if (v9)
      {
        return v5;
      }
    }
  }

  v11 = [objc_allocWithZone(UIView) init];
  [a2 bounds];
  [v11 setFrame:?];
  v12 = [v11 layer];
  [v12 setZPosition:4.0];

  v13 = [v11 layer];
  [v13 setAllowsGroupBlending:0];

  [a2 addSubview:v11];
  v14 = *(a1 + 24);
  *(a1 + 24) = v11;
  v15 = v11;

  return v15;
}

char *sub_10003A29C(uint64_t a1, void *a2, __int128 *a3, void *a4)
{
  v8 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for DynamicRotationState(0);
  __chkstk_darwin(v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (v14)
  {
    v41 = v11;
    v15 = v13;
    v16 = a2;
    v17 = v14;
    v18 = [v17 superview];
    if (v18)
    {
      v19 = v18;
      sub_100013820(0, &qword_100063830, UIView_ptr);
      v20 = v16;
      v21 = sub_10004ACBC();

      if (v21)
      {
        v23 = a3[1];
        v42[0] = *a3;
        v22 = v42[0];
        v44 = v23;
        v24 = &v17[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_model];
        v24[32] = *(a3 + 32);
        *v24 = v22;
        *(v24 + 1) = v23;
        sub_10003B0A4(v42, &v43);
        sub_10003B0A4(&v44, &v43);

        v25 = *&v17[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_color];
        *&v17[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_color] = a4;
        v26 = a4;

        return v17;
      }
    }

    a2 = v16;
    v13 = v15;
    v11 = v41;
  }

  v27 = *a3;
  v43 = a3[1];
  v44 = v27;
  v28 = objc_allocWithZone(type metadata accessor for PosterLabel());
  v29 = a4;
  sub_10003B0A4(&v44, v42);
  sub_10003B0A4(&v43, v42);
  v30 = sub_10003AC28(a3, v29);
  [v30 setTextAlignment:1];
  [v30 setNumberOfLines:0];
  v31 = v30;
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = [v31 layer];
  v33 = sub_10004A95C();
  [v32 setCompositingFilter:v33];

  [v31 setOverrideUserInterfaceStyle:2];
  [v31 setAdjustsFontForContentSizeCategory:1];

  LODWORD(v34) = 1148846080;
  [v31 setContentCompressionResistancePriority:1 forAxis:v34];
  [a2 addSubview:v31];
  v35 = *(a1 + 16);
  *(a1 + 16) = v31;
  v17 = v31;

  v36 = OBJC_IVAR____TtC13WeatherPoster18PosterLabelManager_rotationState;
  swift_beginAccess();
  sub_1000058BC(a1 + v36, v10, &qword_100063C18, &qword_10004E300);
  if (sub_100004288(v10, 1, v11) == 1)
  {
    sub_10000591C(v10, &qword_100063C18, &qword_10004E300);
  }

  else
  {
    sub_100025184(v10, v13);
    v37 = [objc_opt_self() currentDevice];
    v38 = [v37 userInterfaceIdiom];

    if (v38 == 1)
    {
      sub_100039AEC(v13);
    }

    sub_1000251E8(v13);
  }

  return v17;
}

void sub_10003A69C()
{
  v1 = v0;
  v2 = [v0 font];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() configurationWithFont:v2];

    sub_100013820(0, &qword_100064B20, UIImage_ptr);
    v5 = &v1[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_model];
    v6 = *&v1[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_model + 16];
    v7 = *&v1[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_model + 24];

    v8 = v4;
    v9 = sub_10003AD74(v6, v7, v4);
    v10 = [objc_allocWithZone(NSTextAttachment) init];
    if (v9)
    {
      v11 = [v9 imageWithTintColor:*&v1[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_color]];
    }

    else
    {
      v11 = 0;
    }

    [v10 setImage:v11];

    sub_100013820(0, &qword_100064E18, NSMutableAttributedString_ptr);
    v17 = sub_10003ADE4(0, 0xE000000000000000);
    v12 = [objc_opt_self() attributedStringWithAttachment:v10];
    [v17 appendAttributedString:v12];

    if (v5[32])
    {
      v13 = 10;
    }

    else
    {
      v13 = 32;
    }

    sub_100013820(0, &qword_100064E20, NSAttributedString_ptr);
    v19._countAndFlagsBits = v13;
    v19._object = 0xE100000000000000;
    sub_10004A9DC(v19);

    v14 = *v5;
    v15 = *(v5 + 1);

    v20._countAndFlagsBits = v14;
    v20._object = v15;
    sub_10004A9DC(v20);

    v16 = sub_10003ADE4(0, 0xE000000000000000);
    [v17 appendAttributedString:v16];

    [v1 setAttributedText:v17];
  }

  else
  {
    __break(1u);
  }
}

id sub_10003A924()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_10004AC4C();
  v4 = *&v0[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_smallTypeWidthConstraint];
  if (v3)
  {
    if (v4)
    {
      [v4 setActive:1];
    }
  }

  else if (v4)
  {
    [v4 setActive:0];
  }

  result = *&v0[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_largeTypeWidthConstraint];
  if (result)
  {

    return [result setActive:(v3 & 1) == 0];
  }

  return result;
}

uint64_t sub_10003AA0C()
{
  sub_10000591C(v0 + OBJC_IVAR____TtC13WeatherPoster18PosterLabelManager_rotationState, &qword_100063C18, &qword_10004E300);
  v1 = OBJC_IVAR____TtC13WeatherPoster18PosterLabelManager_logger;
  sub_100049FCC();
  sub_100005A24();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_10003AA94()
{
  sub_10003AA0C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for PosterLabelManager(uint64_t a1)
{
  result = qword_100064D28;
  if (!qword_100064D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003AB40(uint64_t a1)
{
  sub_100024EBC(319);
  if (v1 <= 0x3F)
  {
    sub_100049FCC();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_10003AC28(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_smallTypeWidthConstraint] = 0;
  *&v2[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_largeTypeWidthConstraint] = 0;
  v6 = &v2[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_model];
  v7 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 1) = v7;
  v6[32] = *(a1 + 32);
  *&v2[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_color] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
}

void sub_10003ACC8()
{
  *(v0 + OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_smallTypeWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_largeTypeWidthConstraint) = 0;
  sub_10004AE3C();
  __break(1u);
}

id sub_10003AD74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10004A95C();

  v5 = [swift_getObjCClassFromMetadata() systemImageNamed:v4 withConfiguration:a3];

  return v5;
}

id sub_10003ADE4(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_10004A95C();

  v4 = [v2 initWithString:v3];

  return v4;
}

id sub_10003AE58()
{
  ObjectType = swift_getObjectType();
  sub_10003A924();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "updateConstraints");
}

id sub_10003AEE8(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "traitCollectionDidChange:", a1);
  sub_10003A69C();
  return [v1 setNeedsUpdateConstraints];
}

unint64_t sub_10003B154()
{
  result = qword_100064E38;
  if (!qword_100064E38)
  {
    sub_100049BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064E38);
  }

  return result;
}

uint64_t sub_10003B1B8(uint64_t a1)
{

  return sub_10000591C(a1, v1, v2);
}

uint64_t sub_10003B1E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100049BAC();

  return sub_100004288(a1, a2, v4);
}

uint64_t sub_10003B240(uint64_t a1, uint64_t a2)
{
  v4 = sub_100049BAC();

  return sub_100004544(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DynamicRotationState(uint64_t a1)
{
  result = qword_100064E98;
  if (!qword_100064E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003B2D8(uint64_t a1)
{
  sub_100049BAC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIInterfaceOrientation(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003B36C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100049BAC();
  v200 = *(v5 - 8);
  __chkstk_darwin(v5);
  sub_10003D33C();
  v7 = sub_10003D350(v6);
  v198 = type metadata accessor for DynamicRotationState(v7);
  sub_100005A24();
  __chkstk_darwin(v8);
  sub_10003D33C();
  sub_10003D360(v9);
  v10 = sub_100002D54(&qword_100063C90, &unk_10004E3A0);
  sub_100005A50(v10);
  sub_100013ED4();
  __chkstk_darwin(v11);
  sub_100013F88();
  sub_10003D350(v12);
  v13 = sub_10004A45C();
  v14 = sub_10003D324(v13, &v248);
  v225 = v15;
  __chkstk_darwin(v14);
  sub_10003D33C();
  sub_10003D350(v16);
  v17 = sub_10004A72C();
  v18 = sub_10003D324(v17, &v247);
  v222 = v19;
  __chkstk_darwin(v18);
  sub_10003D33C();
  sub_10003D350(v20);
  v21 = sub_10004A1BC();
  v22 = sub_10003D324(v21, &v246);
  v219 = v23;
  __chkstk_darwin(v22);
  sub_10003D33C();
  sub_10003D350(v24);
  v25 = sub_10004A38C();
  v26 = sub_10003D324(v25, &v244);
  v217 = v27;
  __chkstk_darwin(v26);
  sub_10003D33C();
  sub_10003D360(v28);
  v29 = sub_100002D54(&qword_1000637A8, "4E");
  sub_100005A50(v29);
  sub_100013ED4();
  __chkstk_darwin(v30);
  sub_100013F88();
  sub_10003D350(v31);
  v32 = sub_100049C2C();
  v33 = sub_100005A50(v32);
  __chkstk_darwin(v33);
  sub_10003D33C();
  sub_10003D360(v34);
  v35 = sub_100002D54(&unk_100063DE0, "4E");
  v36 = sub_100005A50(v35);
  v37 = __chkstk_darwin(v36);
  v216 = v191 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  sub_10003D350(v191 - v39);
  v40 = sub_100049B7C();
  v41 = sub_10003D324(v40, &v238);
  v210 = v42;
  __chkstk_darwin(v41);
  sub_10003D33C();
  v237 = v43;
  v44 = sub_100002D54(&qword_100063970, &unk_10004CC60);
  sub_100005A50(v44);
  sub_100013ED4();
  __chkstk_darwin(v45);
  sub_100013F88();
  v236 = v46;
  sub_100005A44();
  v47 = sub_10004A48C();
  v48 = sub_10003D324(v47, &v241);
  v213 = v49;
  __chkstk_darwin(v48);
  sub_10003D33C();
  sub_10003D360(v50);
  v51 = sub_100002D54(&qword_100064B10, &unk_10004E3B0);
  sub_100005A50(v51);
  sub_100013ED4();
  __chkstk_darwin(v52);
  sub_100013F88();
  sub_10003D350(v53);
  v54 = sub_10004A69C();
  v55 = sub_10003D324(v54, &v252);
  v209 = v56;
  __chkstk_darwin(v55);
  sub_10003D33C();
  v235 = v57;
  sub_100005A44();
  v58 = sub_10004A2EC();
  v59 = sub_10003D324(v58, &v234);
  v206 = v60;
  __chkstk_darwin(v59);
  sub_10003D33C();
  sub_10003D350(v61);
  v62 = sub_10004A8AC();
  v63 = sub_10003D324(v62, &v251);
  v239 = v64;
  __chkstk_darwin(v63);
  sub_10003D33C();
  v240 = v65;
  sub_100005A44();
  v66 = sub_100049D9C();
  v67 = sub_10003D324(v66, &v250);
  v205 = v68;
  __chkstk_darwin(v67);
  sub_10003D33C();
  v234 = v69;
  sub_100005A44();
  v70 = sub_10004A2FC();
  v71 = sub_10003D324(v70, &v231);
  v203 = v72;
  __chkstk_darwin(v71);
  sub_10003D33C();
  sub_10003D350(v73);
  v74 = sub_10004A71C();
  v75 = sub_10003D324(v74, &v249);
  v228 = v76;
  __chkstk_darwin(v75);
  sub_10003D33C();
  v238 = v77;
  v78 = sub_100005A44();
  v79 = type metadata accessor for PosterAnimationViewModel(v78);
  sub_100005A24();
  __chkstk_darwin(v80);
  sub_10003D33C();
  sub_10003D360(v81);
  v82 = sub_100002D54(&qword_100063C80, &qword_10004CF50);
  sub_100005A24();
  sub_100013ED4();
  __chkstk_darwin(v83);
  v85 = v191 - v84;
  v86 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v87 = sub_100005A50(v86);
  v88 = __chkstk_darwin(v87);
  v90 = v191 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __chkstk_darwin(v88);
  v93 = v191 - v92;
  __chkstk_darwin(v91);
  v95 = v191 - v94;
  v96 = v79[17];
  v242 = a1;
  v97 = *(a1 + v96);
  if (!v97)
  {
    v243 = sub_100049FAC();
    v103 = sub_10004AB9C();
    if (os_log_type_enabled(v243, v103))
    {
      v104 = sub_100014030();
      v105 = swift_slowAlloc();
      v246 = v105;
      *v104 = 136446210;
      v106 = sub_100031CD8(a2);
      v108 = sub_1000230EC(v106, v107, &v246);

      *(v104 + 4) = v108;
      _os_log_impl(&_mh_execute_header, v243, v103, "Skipping creating snapshot for model because parent view does not exist for kind=%{public}s", v104, 0xCu);
      sub_100008FC8(v105);
      sub_100013F58(v105);
      sub_100013F58(v104);
    }

    else
    {
      v109 = v243;
    }

    return;
  }

  v194 = v5;
  v243 = v2;
  v241 = a2;
  v98 = objc_opt_self();
  v99 = v97;
  v195 = v98;
  v100 = [v98 currentDevice];
  v101 = [v100 userInterfaceIdiom];

  v230 = v99;
  if (v101 == 1)
  {
    v102 = (*(&v243[1].isa + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotKind) & 1) != 0 || *(&v243->isa + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotKind) != v241;
    LODWORD(v196) = v102;
  }

  else
  {
    LODWORD(v196) = 0;
  }

  sub_10003D204(v242, v95);
  sub_100004544(v95, 0, 1, v79);
  v110 = OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotModel;
  v111 = v243;
  swift_beginAccess();
  v112 = *(v82 + 48);
  sub_1000058BC(v95, v85, &unk_100063DF0, &qword_10004CF28);
  sub_1000058BC(v111 + v110, &v85[v112], &unk_100063DF0, &qword_10004CF28);
  sub_10003D3CC(v85);
  if (v115)
  {
    sub_10000591C(v95, &unk_100063DF0, &qword_10004CF28);
    sub_10003D3CC(&v85[v112]);
    if (v115)
    {
      sub_10000591C(v85, &unk_100063DF0, &qword_10004CF28);
      v113 = v241;
      v114 = v243;
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  sub_1000058BC(v85, v93, &unk_100063DF0, &qword_10004CF28);
  sub_10003D3CC(&v85[v112]);
  if (v115)
  {
    sub_10000591C(v95, &unk_100063DF0, &qword_10004CF28);
    sub_10003D268(v93, type metadata accessor for PosterAnimationViewModel);
LABEL_21:
    sub_10000591C(v85, &qword_100063C80, &qword_10004CF50);
    v113 = v241;
    v114 = v243;
    goto LABEL_24;
  }

  v116 = v201;
  sub_10003D2C0(&v85[v112], v201);
  v117 = sub_1000047E8(v93, v116);
  sub_10003D268(v116, type metadata accessor for PosterAnimationViewModel);
  sub_10000591C(v95, &unk_100063DF0, &qword_10004CF28);
  sub_10003D268(v93, type metadata accessor for PosterAnimationViewModel);
  sub_10000591C(v85, &unk_100063DF0, &qword_10004CF28);
  v113 = v241;
  v114 = v243;
  if (v117)
  {
LABEL_23:
    if (!((*(&v114->isa + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotView) == 0) | v196 & 1))
    {
      v158 = v114 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_logger;
      v159 = sub_100049FAC();
      v160 = sub_10004AB9C();
      if (os_log_type_enabled(v159, v160))
      {
        sub_100014030();
        v161 = sub_10003D3A4();
        v245 = v161;
        *v158 = 136446210;
        v162 = sub_100031CD8(v113);
        v164 = sub_1000230EC(v162, v163, &v245);

        *(v158 + 4) = v164;
        sub_10003D388(&_mh_execute_header, v165, v160, "Skipping creating snapshot for model because we already have a snapshot for kind=%{public}s");
        sub_100008FC8(v161);
        sub_100013F58(v161);
        sub_100013F58(v158);
      }

      return;
    }
  }

LABEL_24:
  sub_10003D204(v242, v90);
  sub_100004544(v90, 0, 1, v79);
  swift_beginAccess();
  sub_10003D194(v90, v114 + v110);
  swift_endAccess();
  v118 = v114 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotKind;
  *v118 = v113;
  v118[8] = 0;
  if (qword_100063478 != -1)
  {
    swift_once();
  }

  sub_10002B4C4(qword_100064EE0, qword_100064EF8);
  v119 = sub_100032634(v113);
  if (!v119)
  {
    isa = v114[2].isa;
    v196 = v79[6];
    v193 = *(v205 + 2);
    v130 = v242;
    v131 = v234;
    v193(v234, v242 + v196, v231);
    v201 = v79[12];
    v132 = *(v239 + 16);
    v239 += 16;
    v205 = v132;
    v132(v240, v130 + v201, v232);
    v191[1] = *(v130 + v79[13]);
    v133 = enum case for WeatherConditionGradientModel.AnimationContext.vfx(_:);
    sub_10004A2DC();
    sub_100005A24();
    v135 = v208;
    (*(v134 + 104))(v208, v133);
    sub_10003D3C0();
    v136(v135);
    v207 = v79[9];
    v206 = *(v209 + 2);
    v137 = v235;
    v206(v235, v130 + v207, v233);
    v138 = v202;
    sub_10004A2CC();
    sub_10004A35C();
    (*(v203 + 8))(v138, v204);
    v209 = v114[3].isa;
    v193(v131, v130 + v196, v231);
    v139 = [objc_opt_self() milesPerHour];
    sub_100013820(0, &qword_100063C98, NSUnitSpeed_ptr);
    sub_1000498DC();
    v206(v137, v130 + v207, v233);
    v205(v240, v130 + v201, v232);
    (*(v210 + 16))(v237, v130 + v79[5], v211);
    sub_1000058BC(v130 + v79[10], v215, &unk_100063DE0, "4E");
    sub_1000058BC(v130 + v79[11], v216, &unk_100063DE0, "4E");
    sub_100049F0C();
    sub_1000058BC(v130 + v79[14], v218, &qword_1000637A8, "4E");
    sub_10003D3C0();
    v140(v220);
    sub_10003D3C0();
    v141(v221);
    (*(v222 + 16))(v224, v130 + v79[16], v223);
    sub_10003D3C0();
    v142(v226);
    v143 = sub_10004A6EC();
    sub_100004544(v227, 1, 1, v143);
    v144 = v212;
    v145 = v241;
    v146 = v238;
    sub_10004A47C();
    v147 = v229;
    sub_10004A49C();
    (*(v213 + 8))(v144, v214);
    sub_10002B4C4(qword_100064EE0, qword_100064EF8);
    v148 = sub_100032B24(v147, v146, v145);
    if (v148)
    {
      v149 = v148;
      v150 = sub_100049FAC();
      v151 = sub_10004AB9C();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = sub_100014030();
        v153 = swift_slowAlloc();
        v245 = v153;
        *v152 = 136446210;
        v154 = sub_100031CD8(v145);
        v156 = sub_1000230EC(v154, v155, &v245);

        *(v152 + 4) = v156;
        _os_log_impl(&_mh_execute_header, v150, v151, "Adding snapshot to view for kind=%{public}s", v152, 0xCu);
        sub_100008FC8(v153);
        sub_100013F58(v153);
        sub_100013F58(v152);
      }

      v157 = v230;
      sub_10003CCF4(v149, v145, v230);
      sub_10002B4C4(qword_100064EE0, qword_100064EF8);
      sub_10003212C(v149, v145);
    }

    else
    {
      v166 = v243;
      v167 = v243 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_logger;
      v168 = sub_100049FAC();
      v169 = sub_10004AB7C();
      if (os_log_type_enabled(v168, v169))
      {
        sub_100014030();
        v170 = sub_10003D3A4();
        v245 = v170;
        *v167 = 136446210;
        v171 = sub_100031CD8(v145);
        v173 = sub_1000230EC(v171, v172, &v245);
        v146 = v238;

        *(v167 + 4) = v173;
        sub_10003D388(&_mh_execute_header, v174, v169, "Adding gradient to view because no snapshot image exists for kind=%{public}s");
        sub_100008FC8(v170);
        sub_100013F58(v170);
        sub_100013F58(v167);
      }

      v175 = v230;
      v176 = sub_100002474(v146);
      v177 = OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotGradientView;
      swift_beginAccess();
      v178 = *(&v166->isa + v177);
      *(&v166->isa + v177) = v176;

      v179 = [v195 currentDevice];
      v180 = [v179 userInterfaceIdiom];

      if (v180 == 1)
      {
        swift_beginAccess();
        v181 = *(&v166->isa + v177);
        if (!v181)
        {
          sub_10000591C(v147, &qword_100064B10, &unk_10004E3B0);
          v189 = sub_10003D36C();
          v190(v189);
          swift_endAccess();

          return;
        }

        swift_endAccess();
        v182 = v181;
        v183 = v197;
        sub_100049B9C();
        v184 = 0;
        if ((v145 - 2) <= 2)
        {
          v184 = dword_10004E3C4[v145 - 2];
        }

        v185 = v199;
        (*(v200 + 32))(v199, v183, v194);
        v186 = v198;
        *(v185 + *(v198 + 20)) = v184;
        *(v185 + v186[6]) = 1065353216;
        *(v185 + v186[7]) = v145;
        *(v185 + v186[8]) = v145;
        sub_10002424C(v185);

        sub_10003D268(v185, type metadata accessor for DynamicRotationState);
      }

      else
      {
      }
    }

    sub_10000591C(v147, &qword_100064B10, &unk_10004E3B0);
    v187 = sub_10003D36C();
    v188(v187);
    return;
  }

  v120 = v119;
  v121 = v114 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_logger;
  v122 = sub_100049FAC();
  v123 = sub_10004AB9C();
  if (os_log_type_enabled(v122, v123))
  {
    sub_100014030();
    v124 = sub_10003D3A4();
    v245 = v124;
    *v121 = 136446210;
    v125 = sub_100031CD8(v113);
    v127 = sub_1000230EC(v125, v126, &v245);

    *(v121 + 4) = v127;
    sub_10003D388(&_mh_execute_header, v128, v123, "Adding cached snapshot to view for kind=%{public}s");
    sub_100008FC8(v124);
    sub_100013F58(v124);
    sub_100013F58(v121);
  }

  v129 = v230;
  sub_10003CCF4(v120, v113, v230);
}

uint64_t sub_10003CA44()
{
  v1 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  sub_100005A50(v1);
  sub_100013ED4();
  __chkstk_darwin(v2);
  v4 = &v15[-v3];
  v5 = OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotView;
  v6 = *(v0 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotView);
  if (v6)
  {
    [v6 removeFromSuperview];
  }

  v7 = OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotGradientView;
  swift_beginAccess();
  v8 = *(v0 + v7);
  if (v8)
  {
    [v8 removeFromSuperview];
  }

  v9 = *(v0 + v5);
  *(v0 + v5) = 0;

  v10 = *(v0 + v7);
  *(v0 + v7) = 0;

  v11 = type metadata accessor for PosterAnimationViewModel(0);
  sub_100004544(v4, 1, 1, v11);
  v12 = OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotModel;
  swift_beginAccess();
  sub_10003D194(v4, v0 + v12);
  result = swift_endAccess();
  v14 = v0 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotKind;
  *v14 = 0;
  *(v14 + 8) = 1;
  return result;
}

id sub_10003CB80()
{
  v0 = type metadata accessor for VFXSnapshotManager();
  v1 = swift_allocObject();
  result = [objc_opt_self() defaultManager];
  *(v1 + 16) = result;
  qword_100064EF8 = v0;
  unk_100064F00 = &off_10005F380;
  qword_100064EE0[0] = v1;
  return result;
}

uint64_t sub_10003CBF4(uint64_t a1)
{
  v2 = v1;
  sub_10004A37C();
  swift_allocObject();
  *(v1 + 16) = sub_10004A36C();
  sub_10004A4BC();
  swift_allocObject();
  *(v1 + 24) = sub_10004A4AC();
  v4 = OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotModel;
  v5 = type metadata accessor for PosterAnimationViewModel(0);
  sub_100004544(v2 + v4, 1, 1, v5);
  *(v2 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotView) = 0;
  *(v2 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotGradientView) = 0;
  v6 = v2 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotKind;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_logger;
  sub_100049FCC();
  sub_100005A24();
  (*(v8 + 32))(v2 + v7, a1);
  return v2;
}

void sub_10003CCF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotView;
  v9 = *(v3 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotView);
  if (v9)
  {
    v10 = v9;
    v11 = [v10 superview];
    if (v11)
    {
      v12 = v11;
      sub_100013820(0, &qword_100063830, UIView_ptr);
      v13 = a3;
      v14 = sub_10004ACBC();

      if (v14)
      {
        [v10 setImage:a1];
        goto LABEL_7;
      }
    }
  }

  v10 = [objc_allocWithZone(UIImageView) initWithImage:a1];
  sub_100002560(v10, 3);
LABEL_7:
  v15 = *(v4 + v8);
  *(v4 + v8) = v10;
  v20 = v10;

  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if (v17 == 1)
  {
    if (a2 == 4 || a2 == 2)
    {
      CGAffineTransformMakeRotation(&v21, 3.1415925);
    }

    else
    {
      v19 = *&CGAffineTransformIdentity.c;
      *&v21.a = *&CGAffineTransformIdentity.a;
      *&v21.c = v19;
      *&v21.tx = *&CGAffineTransformIdentity.tx;
    }

    [v20 setTransform:&v21];
  }

  else
  {
  }
}

uint64_t sub_10003CEF8()
{

  sub_10000591C(v0 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotModel, &unk_100063DF0, &qword_10004CF28);

  v1 = OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_logger;
  sub_100049FCC();
  sub_100005A24();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_10003CFA0()
{
  sub_10003CEF8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for VFXSnapshotRenderer(uint64_t a1)
{
  result = qword_100064F58;
  if (!qword_100064F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003D04C(uint64_t a1)
{
  sub_10003D13C(319);
  if (v1 <= 0x3F)
  {
    sub_100049FCC();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10003D13C(uint64_t a1)
{
  if (!qword_100063AD8)
  {
    type metadata accessor for PosterAnimationViewModel(255);
    v1 = sub_10004ACDC();
    if (!v2)
    {
      atomic_store(v1, &qword_100063AD8);
    }
  }
}

uint64_t sub_10003D194(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003D204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PosterAnimationViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003D268(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100005A24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10003D2C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PosterAnimationViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10003D388(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_10003D3A4()
{

  return swift_slowAlloc();
}

char *sub_10003D3EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004A80C();
  sub_1000059BC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000059D0();
  v10 = v9 - v8;
  v11 = [objc_opt_self() mainScreen];
  [v11 bounds];

  (*(v6 + 104))(v10, enum case for MicaBackgroundAnimation.Mode.poster(_:), v4);
  v12 = objc_allocWithZone(sub_10004A84C());
  *(v2 + 2) = sub_10004A7BC();
  sub_10004A37C();
  swift_allocObject();
  *(v2 + 3) = sub_10004A36C();
  *(v2 + 4) = 0;
  *(v2 + 5) = 0;
  *(v2 + 6) = 0;
  v13 = type metadata accessor for PosterAnimationViewModel(0);
  sub_100013E80(v13);
  v14 = type metadata accessor for DynamicRotationState(0);
  sub_100013E80(v14);
  *&v2[OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_freezeTimer] = 0;
  *&v2[OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_rendererDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_logger;
  sub_100049FCC();
  sub_100005A24();
  (*(v16 + 32))(&v2[v15], a1);
  return v2;
}

void sub_10003D5E0(uint64_t a1, int a2)
{
  v3 = v2;
  v169 = a2;
  v163 = sub_10004A1DC();
  sub_1000059BC();
  v162 = v5;
  __chkstk_darwin(v6);
  sub_1000059D0();
  sub_10003D350(v8 - v7);
  v161 = sub_10004A1FC();
  sub_1000059BC();
  v159 = v9;
  __chkstk_darwin(v10);
  sub_1000059D0();
  sub_10003D350(v12 - v11);
  v172 = sub_10004A21C();
  sub_1000059BC();
  v157 = v13;
  __chkstk_darwin(v14);
  sub_100041EB0();
  sub_100041EC4();
  __chkstk_darwin(v15);
  sub_100041ED4();
  sub_10003D350(v16);
  v171 = sub_100049FCC();
  sub_1000059BC();
  v174 = v17;
  __chkstk_darwin(v18);
  sub_100041EEC();
  v156 = v19;
  v155 = v20;
  __chkstk_darwin(v21);
  sub_100041ED4();
  sub_10003D350(v22);
  v165 = sub_10004A71C();
  sub_1000059BC();
  v168 = v23;
  __chkstk_darwin(v24);
  sub_1000059D0();
  v151 = v26 - v25;
  v27 = sub_100002D54(&qword_100063C78, &qword_10004E0A0);
  v28 = sub_100005A50(v27);
  __chkstk_darwin(v28);
  sub_100041EB0();
  sub_100041EC4();
  __chkstk_darwin(v29);
  sub_100041ED4();
  v31 = sub_10003D350(v30);
  v32 = type metadata accessor for PosterAnimationViewModel(v31);
  sub_1000059BC();
  v152 = v33;
  __chkstk_darwin(v34);
  sub_100041EEC();
  v177 = v35;
  __chkstk_darwin(v36);
  sub_100041ED4();
  v179 = v37;
  __chkstk_darwin(v38);
  sub_100041ED4();
  v166 = v39;
  v153 = v40;
  __chkstk_darwin(v41);
  sub_100041ED4();
  v176 = v42;
  v43 = sub_100002D54(&qword_100063C80, &qword_10004CF50) - 8;
  sub_100013ED4();
  __chkstk_darwin(v44);
  v46 = &v149 - v45;
  v47 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v48 = sub_100005A50(v47);
  __chkstk_darwin(v48);
  sub_100041EB0();
  sub_100041EC4();
  __chkstk_darwin(v49);
  sub_100041EC4();
  v51 = __chkstk_darwin(v50);
  v178 = &v149 - v52;
  v53 = __chkstk_darwin(v51);
  v55 = &v149 - v54;
  __chkstk_darwin(v53);
  v57 = &v149 - v56;
  sub_100041E68();
  v58 = a1;
  sub_100041E00();
  sub_100013FE8();
  sub_100004544(v59, v60, v61, v32);
  v62 = OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_posterViewModel;
  swift_beginAccess();
  v63 = *(v43 + 56);
  sub_1000139C8();
  sub_1000139C8();
  if (sub_100041F00(v46) == 1)
  {
    sub_1000090CC(v57, &unk_100063DF0, &qword_10004CF28);
    v64 = v58;
    if (sub_100041F00(&v46[v63]) == 1)
    {
      sub_1000090CC(v46, &unk_100063DF0, &qword_10004CF28);
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  sub_1000139C8();
  if (sub_100041F00(&v46[v63]) == 1)
  {
    sub_1000090CC(v57, &unk_100063DF0, &qword_10004CF28);
    sub_100041E80();
    sub_10004162C(v55, v65);
    v64 = v58;
LABEL_6:
    sub_1000090CC(v46, &qword_100063C80, &qword_10004CF50);
    goto LABEL_7;
  }

  v150 = v32;
  v89 = v176;
  sub_1000415D4();
  v90 = sub_1000047E8(v55, v89);
  sub_10004162C(v89, type metadata accessor for PosterAnimationViewModel);
  sub_1000090CC(v57, &unk_100063DF0, &qword_10004CF28);
  v32 = v150;
  sub_10004162C(v55, type metadata accessor for PosterAnimationViewModel);
  sub_1000090CC(v46, &unk_100063DF0, &qword_10004CF28);
  v64 = v58;
  if (v90)
  {
LABEL_14:
    sub_100041E68();
    v76 = v177;
    sub_100041E00();
    v77 = sub_100049FAC();
    v91 = sub_10004AB9C();
    if (os_log_type_enabled(v77, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      aBlock[0] = v93;
      *v92 = 136446210;
      sub_100049B7C();
      sub_100041E98();
      sub_100041A80(v94, v95, &protocol conformance descriptor for Date);
      v96 = sub_10004AF1C();
      v98 = v97;
      sub_100041E80();
      sub_10004162C(v76, v99);
      v100 = sub_1000230EC(v96, v98, aBlock);

      *(v92 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v77, v91, "Animation already reflects the view model with weather data at date=%{public}s", v92, 0xCu);
      sub_100008FC8(v93);
      sub_100013F58(v93);
      v88 = v92;
      goto LABEL_16;
    }

LABEL_17:

    sub_100041E80();
    sub_10004162C(v76, v101);
    return;
  }

LABEL_7:
  v66 = &v3[OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_rendererDelegate];
  if (!swift_unknownObjectWeakLoadStrong() || (v67 = *(v66 + 1), ObjectType = swift_getObjectType(), LOBYTE(v67) = (*(v67 + 8))(ObjectType, v67), swift_unknownObjectRelease(), (v67 & 1) == 0))
  {
    sub_100041E68();
    v76 = v179;
    sub_100041E00();
    v77 = sub_100049FAC();
    v78 = sub_10004AB9C();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      aBlock[0] = v80;
      *v79 = 136446210;
      sub_100049B7C();
      sub_100041E98();
      sub_100041A80(v81, v82, &protocol conformance descriptor for Date);
      v83 = sub_10004AF1C();
      v85 = v84;
      sub_100041E80();
      sub_10004162C(v76, v86);
      v87 = sub_1000230EC(v83, v85, aBlock);

      *(v79 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v77, v78, "Animation was not granted a render session; Skipping render of weather data at date=%{public}s", v79, 0xCu);
      sub_100008FC8(v80);
      sub_100013F58(v80);
      v88 = v79;
LABEL_16:
      sub_100013F58(v88);

      return;
    }

    goto LABEL_17;
  }

  sub_100041EE0();
  sub_1000139C8();
  sub_100041E68();
  sub_100041E00();
  sub_100013FE8();
  sub_100004544(v69, v70, v71, v32);
  sub_100013F40(&v3[v62], aBlock);
  sub_100013120();
  swift_endAccess();
  v72 = v175;
  sub_100041EE0();
  sub_1000139C8();
  if (sub_100041F00(v72) != 1)
  {
    sub_100041E68();
    v102 = v166;
    sub_1000415D4();
    v103 = *(v32 + 68);
    v104 = *(v102 + v103);
    v105 = *(v64 + v103);
    if (v104)
    {
      v106 = v168;
      v107 = v167;
      if (v105)
      {
        sub_100013820(0, &qword_100063830, UIView_ptr);
        v108 = v105;
        v109 = v104;
        v110 = sub_10004ACBC();

        if (v110)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v106 = v168;
      v107 = v167;
      if (!v105)
      {
        goto LABEL_34;
      }
    }

    v111 = sub_100049FAC();
    v112 = sub_10004AB9C();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v111, v112, "Resetting views due to change in background view", v113, 2u);
      sub_100013F58(v113);
    }

    v114 = 1;
    swift_beginAccess();
    v115 = *(v3 + 5);
    if (v115)
    {
      v116 = OBJC_IVAR____TtC13WeatherPoster12GradientView_skyBackgroundGradient;
      swift_beginAccess();
      v117 = v165;
      (*(v106 + 16))(v107, &v115[v116], v165);
      v114 = 0;
    }

    else
    {
      v117 = v165;
    }

    sub_100004544(v107, v114, 1, v117);
    *(v3 + 5) = 0;

    v118 = *(v3 + 4);
    *(v3 + 4) = 0;

    v119 = *(v3 + 6);
    *(v3 + 6) = 0;

    v120 = v164;
    sub_1000139C8();
    if (sub_100004288(v120, 1, v117) == 1)
    {
      sub_100041EE0();
      sub_1000090CC(v121, v122, v123);
      sub_100041E80();
      sub_10004162C(v102, v124);
      sub_100041EE0();
      goto LABEL_30;
    }

    v125 = v151;
    v126 = sub_100013F94();
    v127(v126);
    if ((*(v102 + *(v32 + 60)) & 1) == 0)
    {
      sub_10003E6F0(v125);
    }

    (*(v106 + 8))(v125, v117);
    sub_1000090CC(v107, &qword_100063C78, &qword_10004E0A0);
LABEL_34:
    sub_100041E80();
    sub_10004162C(v102, v128);
    goto LABEL_35;
  }

  v73 = &unk_100063DF0;
  v74 = &qword_10004CF28;
  v75 = v72;
LABEL_30:
  sub_1000090CC(v75, v73, v74);
LABEL_35:
  if (*(v64 + *(v32 + 60)) == 1)
  {
    if (v169)
    {
      sub_10004A84C();
      sub_10004A4DC(0);
    }

    v129 = sub_10004A82C();
    [v129 speed];
    v131 = v130;

    if (v131 == 0.0)
    {
      v132 = 0.0;
    }

    else
    {
      v132 = 0.25;
    }

    v133 = v174;
    v134 = *(v174 + 16);
    v135 = v173;
    v136 = v171;
    v134(v173, &v3[OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_logger], v171);
    sub_10003F0B0(v64, 1, v132);
    if (v132 <= 0.0)
    {
      sub_10003FBA8();
      (*(v133 + 8))(v135, v136);
    }

    else
    {
      sub_100013820(0, &qword_100065260, OS_dispatch_queue_ptr);
      v177 = sub_10004ABFC();
      v137 = v154;
      sub_10004A20C();
      sub_10004A23C();
      v179 = *(v157 + 8);
      v179(v137, v172);
      v138 = swift_allocObject();
      swift_weakInit();
      sub_100041E00();
      v139 = v156;
      v134(v156, v135, v136);
      v140 = v174;
      v141 = (v153 + *(v174 + 80) + ((*(v152 + 80) + 24) & ~*(v152 + 80))) & ~*(v174 + 80);
      v142 = swift_allocObject();
      *(v142 + 16) = v138;
      sub_1000415D4();
      (*(v140 + 32))(v142 + v141, v139, v136);
      aBlock[4] = sub_1000419B4;
      aBlock[5] = v142;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100012500;
      aBlock[3] = &unk_10005F588;
      v143 = _Block_copy(aBlock);

      v144 = v158;
      sub_10004A1EC();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100041A80(&qword_100063C50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100002D54(&qword_100063C58, &unk_10004DE10);
      sub_10002FB14();
      v145 = v160;
      v146 = v163;
      sub_10004ACFC();
      v147 = v170;
      v148 = v177;
      sub_10004ABDC();
      _Block_release(v143);

      (*(v162 + 8))(v145, v146);
      (*(v159 + 8))(v144, v161);
      v179(v147, v172);
      (*(v140 + 8))(v173, v136);
    }
  }

  else
  {
    sub_10003EA8C();
  }

  sub_1000090CC(v178, &unk_100063DF0, &qword_10004CF28);
}

void sub_10003E6F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  __chkstk_darwin(v4 - 8);
  v6 = &v27[-v5];
  v7 = type metadata accessor for DynamicRotationState(0);
  __chkstk_darwin(v7);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10004A71C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v2 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_posterViewModel;
  swift_beginAccess();
  v15 = type metadata accessor for PosterAnimationViewModel(0);
  if (!sub_100004288(v14, 1, v15))
  {
    v16 = *(v14 + *(v15 + 68));
    if (v16)
    {
      swift_beginAccess();
      v17 = *(v2 + 40);
      if (v17)
      {
        (*(v11 + 16))(v13, a1, v10);
        v18 = v16;
        v19 = v17;
        sub_1000243AC(v13);

        return;
      }

      v20 = v16;
      v21 = sub_100002474(a1);
      v22 = *(v2 + 40);
      *(v2 + 40) = v21;

      swift_beginAccess();
      sub_1000139C8();
      if (sub_100004288(v6, 1, v7) == 1)
      {

        sub_1000090CC(v6, &qword_100063C18, &qword_10004E300);
        return;
      }

      sub_1000415D4();
      v23 = [objc_opt_self() currentDevice];
      v24 = [v23 userInterfaceIdiom];

      if (v24 == 1)
      {
        swift_beginAccess();
        v25 = *(v2 + 40);
        if (v25)
        {
          swift_endAccess();
          v26 = v25;
          sub_10002424C(v9);

          sub_10004162C(v9, type metadata accessor for DynamicRotationState);
          return;
        }

        sub_10004162C(v9, type metadata accessor for DynamicRotationState);
        swift_endAccess();
      }

      else
      {
        sub_10004162C(v9, type metadata accessor for DynamicRotationState);
      }
    }
  }
}

uint64_t sub_10003EA8C()
{
  v1 = v0;
  v37 = sub_10004A1DC();
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v43 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10004A1FC();
  v42 = *(v3 - 8);
  __chkstk_darwin(v3);
  v41 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10004A21C();
  v40 = *(v44 - 8);
  v5 = __chkstk_darwin(v44);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v33 - v8;
  v9 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v12 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  v15 = sub_100049FAC();
  v16 = sub_10004AB9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Skipping showing mica because the poster should not show animation", v17, 2u);
  }

  v18 = *(v1 + 32);
  if (v18)
  {
    [v18 removeFromSuperview];
    v19 = *(v1 + 32);
  }

  else
  {
    v19 = 0;
  }

  *(v1 + 32) = 0;

  if (qword_100063458 != -1)
  {
    swift_once();
  }

  v20 = sub_10004A71C();
  v21 = sub_100008F90(v20, qword_1000682B8);
  sub_10003E6F0(v21);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    swift_beginAccess();
    v33 = v14;
    sub_1000139C8();
    sub_100013820(0, &qword_100065260, OS_dispatch_queue_ptr);
    v34 = sub_10004ABFC();
    sub_10004A20C();
    v23 = v38;
    sub_10004A23C();
    v24 = v37;
    v35 = v3;
    v25 = v39;
    v40 = *(v40 + 8);
    (v40)(v7, v44);
    v26 = swift_allocObject();
    swift_weakInit();
    sub_1000139C8();
    v27 = (*(v36 + 80) + 24) & ~*(v36 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    sub_1000138F4(v12, v28 + v27);
    aBlock[4] = sub_100041D94;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012500;
    aBlock[3] = &unk_10005F5D8;
    v29 = _Block_copy(aBlock);

    v30 = v41;
    sub_10004A1EC();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100041A80(&qword_100063C50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100002D54(&qword_100063C58, &unk_10004DE10);
    sub_10002FB14();
    v31 = v43;
    sub_10004ACFC();
    v32 = v34;
    sub_10004ABDC();
    _Block_release(v29);

    (*(v25 + 8))(v31, v24);
    (*(v42 + 8))(v30, v35);
    (v40)(v23, v44);
    return sub_1000090CC(v33, &unk_100063DF0, &qword_10004CF28);
  }

  return result;
}

uint64_t sub_10003F0B0(uint64_t a1, char a2, double a3)
{
  v7 = sub_10004A69C();
  v59 = *(v7 - 8);
  v60 = v7;
  __chkstk_darwin(v7);
  v58 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004A2EC();
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin(v9);
  v57 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10004A8AC();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v51 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004A2FC();
  v53 = *(v12 - 8);
  v54 = v12;
  __chkstk_darwin(v12);
  v49 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10004A71C();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v48 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004A6CC();
  v46 = *(v15 - 8);
  v47 = v15;
  __chkstk_darwin(v15);
  v41 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100049D9C();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v37 - v22;
  v43 = v18;
  v42 = v3;
  if (a2)
  {
    sub_10000AB68();
    v24 = *(v18 + 16);
  }

  else
  {
    v25 = type metadata accessor for PosterAnimationViewModel(0);
    v24 = *(v18 + 16);
    v24(v23, a1 + *(v25 + 24), v17);
  }

  v24(v21, v23, v17);
  v26 = type metadata accessor for PosterAnimationViewModel(0);
  v37[3] = *(a1 + v26[13]);
  v27 = objc_opt_self();
  v40 = v17;
  v28 = [v27 mainScreen];
  [v28 bounds];

  v29 = [v27 mainScreen];
  [v29 scale];

  v30 = v41;
  sub_10004A6BC();
  v39 = v23;
  v38 = *(v42 + 24);
  v24(v21, v23, v17);
  (*(v44 + 16))(v51, a1 + v26[12], v45);
  v31 = enum case for WeatherConditionGradientModel.AnimationContext.mica(_:);
  v32 = sub_10004A2DC();
  v33 = v57;
  (*(*(v32 - 8) + 104))(v57, v31, v32);
  (*(v55 + 104))(v33, enum case for WeatherConditionGradientModel.PresentationContext.fullScreen(_:), v56);
  (*(v59 + 16))(v58, a1 + v26[9], v60);
  v34 = v49;
  sub_10004A2CC();
  v35 = v48;
  sub_10004A35C();
  (*(v53 + 8))(v34, v54);
  sub_10003E6F0(v35);
  sub_100040E10(v30, a1, a3);
  (*(v50 + 8))(v35, v52);
  (*(v46 + 8))(v30, v47);
  return (*(v43 + 8))(v39, v40);
}

void sub_10003F794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for PosterAnimationViewModel(0);
  __chkstk_darwin(v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002D54(&qword_100063C80, &qword_10004CF50);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v21 - v14;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v21[1] = a3;
    swift_beginAccess();
    sub_100041E00();
    sub_100004544(v15, 0, 1, v4);
    v16 = *(v7 + 48);
    sub_1000139C8();
    sub_1000139C8();
    if (sub_100004288(v9, 1, v4) == 1)
    {
      sub_1000090CC(v15, &unk_100063DF0, &qword_10004CF28);
      if (sub_100004288(&v9[v16], 1, v4) == 1)
      {
        sub_1000090CC(v9, &unk_100063DF0, &qword_10004CF28);
LABEL_13:
        sub_10003FBA8();

        return;
      }

      goto LABEL_8;
    }

    sub_1000139C8();
    if (sub_100004288(&v9[v16], 1, v4) == 1)
    {

      sub_1000090CC(v15, &unk_100063DF0, &qword_10004CF28);
      sub_10004162C(v13, type metadata accessor for PosterAnimationViewModel);
LABEL_8:
      sub_1000090CC(v9, &qword_100063C80, &qword_10004CF50);
      goto LABEL_9;
    }

    sub_1000415D4();
    v20 = sub_1000047E8(v13, v6);
    sub_10004162C(v6, type metadata accessor for PosterAnimationViewModel);
    sub_1000090CC(v15, &unk_100063DF0, &qword_10004CF28);
    sub_10004162C(v13, type metadata accessor for PosterAnimationViewModel);
    sub_1000090CC(v9, &unk_100063DF0, &qword_10004CF28);
    if (v20)
    {
      goto LABEL_13;
    }
  }

LABEL_9:
  v17 = sub_100049FAC();
  v18 = sub_10004AB9C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Skipping notifying of completion because a newer request is inflight that will notify instead", v19, 2u);
  }
}

uint64_t sub_10003FBA8()
{
  v1 = v0;
  v2 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  __chkstk_darwin(v2 - 8);
  v24 = &v23 - v3;
  v4 = sub_100049B7C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_100049FAC();
  v9 = sub_10004AB9C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    *v10 = 136446210;
    v12 = v0 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_posterViewModel;
    swift_beginAccess();
    v13 = type metadata accessor for PosterAnimationViewModel(0);
    if (sub_100004288(v12, 1, v13))
    {
      v14 = 0;
      v15 = 0xE000000000000000;
    }

    else
    {
      (*(v5 + 16))(v7, v12 + *(v13 + 20), v4);
      v14 = sub_100049ADC();
      v15 = v16;
      (*(v5 + 8))(v7, v4);
    }

    v17 = sub_1000230EC(v14, v15, v25);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Completed rendering of weather data at date=%{public}s", v10, 0xCu);
    sub_100008FC8(v11);
  }

  else
  {
  }

  v18 = v1 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_rendererDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v22 = v24;
    sub_1000139C8();
    (*(v20 + 16))(v22, ObjectType, v20);
    swift_unknownObjectRelease();
    return sub_1000090CC(v22, &unk_100063DF0, &qword_10004CF28);
  }

  return result;
}

uint64_t sub_10003FED8(uint64_t a1)
{
  v3 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  sub_100005A50(v3);
  sub_100013ED4();
  __chkstk_darwin(v4);
  sub_100041E68();
  sub_100041E00();
  type metadata accessor for PosterAnimationViewModel(0);
  sub_100013FE8();
  sub_100004544(v5, v6, v7, v8);
  sub_100013F40(v1 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_posterViewModel, v10);
  sub_100013120();
  swift_endAccess();
  return sub_10003F0B0(a1, 0, 0.0);
}

void sub_10003FFC4()
{
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    sub_10004A81C(0);
  }
}

void sub_10003FFF4(char a1, void (*a2)(void), uint64_t a3, double a4)
{
  if ((a1 & 1) != 0 && !UIAccessibilityIsReduceMotionEnabled())
  {
    v11 = OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_freezeTimer;
    v12 = *(v4 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_freezeTimer);
    if (v12)
    {
      [v12 invalidate];
    }

    v13 = objc_opt_self();
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a2;
    v15[4] = a3;
    v19[4] = sub_1000415B0;
    v19[5] = v15;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_100011A98;
    v19[3] = &unk_10005F538;
    v16 = _Block_copy(v19);

    v17 = [v13 scheduledTimerWithTimeInterval:0 repeats:v16 block:a4];
    _Block_release(v16);
    v18 = *(v4 + v11);
    *(v4 + v11) = v17;
  }

  else
  {
    v8 = OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_freezeTimer;
    v9 = *(v4 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_freezeTimer);
    if (v9)
    {
      [v9 invalidate];
      v10 = *(v4 + v8);
    }

    else
    {
      v10 = 0;
    }

    *(v4 + v8) = 0;

    sub_10004A84C();
    sub_10004A4DC(0);
    a2();
  }
}

void sub_1000401C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_freezeTimer;
    v7 = *(Strong + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_freezeTimer);
    if (v7)
    {
      [v7 invalidate];
      v8 = *(v5 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(v5 + v6) = 0;

    v9 = *(v5 + 16);
    sub_10004A83C();
  }
}

void sub_100040280(double a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t))
{
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  if ((IsReduceMotionEnabled & 1) == 0)
  {
    sub_100035294();
    IsReduceMotionEnabled = sub_10004A92C();
    v8 = *(v3 + 32);
    if (v8)
    {
      v9 = v8;
      sub_10004A5EC();
    }
  }

  if (a3)
  {
    a3(IsReduceMotionEnabled, v6, v7);
  }
}

uint64_t sub_100040344(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  sub_100005A50(v4);
  sub_100013ED4();
  __chkstk_darwin(v5);
  sub_10003541C(a1);
  swift_beginAccess();
  v6 = *(v1 + 40);
  if (v6)
  {
    v7 = v6;
    sub_10002424C(a1);
  }

  sub_100041E00();
  type metadata accessor for DynamicRotationState(0);
  sub_100013FE8();
  sub_100004544(v8, v9, v10, v11);
  sub_100013F40(v2 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_rotationState, v13);
  sub_100013120();
  return swift_endAccess();
}

uint64_t sub_100040468(char a1)
{
  v2 = v1;
  v4 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  sub_100005A50(v4);
  sub_100013ED4();
  __chkstk_darwin(v5);
  v7 = &v28[-v6];
  v8 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  sub_100005A50(v8);
  sub_100013ED4();
  __chkstk_darwin(v9);
  v11 = &v28[-v10];
  v12 = sub_100049FAC();
  v13 = sub_10004AB9C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29[0] = v15;
    *v14 = 136446210;
    if (a1)
    {
      if (a1 == 1)
      {
        v16 = 0xD000000000000011;
      }

      else
      {
        v16 = 0x646564616F6C6E75;
      }

      if (a1 == 1)
      {
        v17 = 0x800000010004E960;
      }

      else
      {
        v17 = 0xE800000000000000;
      }
    }

    else
    {
      v17 = 0x800000010004E980;
      v16 = 0xD000000000000013;
    }

    v18 = sub_1000230EC(v16, v17, v29);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Invalidating animation for reason=%{public}s", v14, 0xCu);
    sub_100008FC8(v15);
    sub_100013F58(v15);
    sub_100013F58(v14);
  }

  v19 = type metadata accessor for PosterAnimationViewModel(0);
  sub_100004544(v11, 1, 1, v19);
  sub_100013F40(v2 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_posterViewModel, v29);
  sub_100013120();
  swift_endAccess();
  v20 = v2[4];
  v2[4] = 0;

  swift_beginAccess();
  v21 = v2[5];
  v2[5] = 0;

  v22 = v2[6];
  v2[6] = 0;

  v23 = OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_freezeTimer;
  v24 = *(v2 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_freezeTimer);
  if (v24)
  {
    [v24 invalidate];
    v25 = *(v2 + v23);
  }

  else
  {
    v25 = 0;
  }

  *(v2 + v23) = 0;

  v26 = type metadata accessor for DynamicRotationState(0);
  sub_100004544(v7, 1, 1, v26);
  sub_100013F40(v2 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_rotationState, v28);
  sub_100013120();
  return swift_endAccess();
}

id *sub_100040764()
{

  sub_1000090CC(v0 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_posterViewModel, &unk_100063DF0, &qword_10004CF28);
  sub_1000090CC(v0 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_rotationState, &qword_100063C18, &qword_10004E300);

  v1 = OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_logger;
  sub_100049FCC();
  sub_100009714();
  (*(v2 + 8))(v0 + v1);
  sub_100013DE4(v0 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_rendererDelegate);
  return v0;
}

uint64_t sub_100040840()
{
  sub_100040764();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MicaAnimation(uint64_t a1)
{
  result = qword_100065038;
  if (!qword_100065038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000408EC(uint64_t a1)
{
  sub_100040A5C(319, &qword_100063AD8, type metadata accessor for PosterAnimationViewModel);
  if (v1 <= 0x3F)
  {
    sub_100040A5C(319, &qword_100063AE8, type metadata accessor for DynamicRotationState);
    if (v2 <= 0x3F)
    {
      sub_100049FCC();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100040A5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10004ACDC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100040AB0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_rendererDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100040B18(uint64_t a1)
{
  v1 = type metadata accessor for PosterAnimationViewModel(0);
  __chkstk_darwin(v1);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  __chkstk_darwin(v4 - 8);
  v6 = &v13[-v5];
  v7 = sub_100002D54(&qword_100063C80, &qword_10004CF50);
  __chkstk_darwin(v7);
  v9 = &v13[-v8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    v11 = *(v7 + 48);
    sub_1000139C8();
    sub_1000139C8();
    if (sub_100004288(v9, 1, v1) == 1)
    {
      if (sub_100004288(&v9[v11], 1, v1) == 1)
      {
        sub_1000090CC(v9, &unk_100063DF0, &qword_10004CF28);
        goto LABEL_10;
      }
    }

    else
    {
      sub_1000139C8();
      if (sub_100004288(&v9[v11], 1, v1) != 1)
      {
        sub_1000415D4();
        v12 = sub_1000047E8(v6, v3);
        sub_10004162C(v3, type metadata accessor for PosterAnimationViewModel);
        sub_10004162C(v6, type metadata accessor for PosterAnimationViewModel);
        sub_1000090CC(v9, &unk_100063DF0, &qword_10004CF28);
        if ((v12 & 1) == 0)
        {
        }

LABEL_10:
        sub_10003FBA8();
      }

      sub_10004162C(v6, type metadata accessor for PosterAnimationViewModel);
    }

    return sub_1000090CC(v9, &qword_100063C80, &qword_10004CF50);
  }

  return result;
}

uint64_t sub_100040E10(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v37 = a2;
  v39 = a1;
  v5 = sub_10004A8DC();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_100049A6C();
  v38 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v16 = type metadata accessor for PosterAnimationViewModel(0);
  __chkstk_darwin(v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1000139C8();
  if (sub_100004288(v15, 1, v16) == 1)
  {
    v19 = &unk_100063DF0;
    v20 = &qword_10004CF28;
    v21 = v15;
    return sub_1000090CC(v21, v19, v20);
  }

  sub_1000415D4();
  v22 = *&v18[*(v16 + 68)];
  if (v22)
  {
    sub_10004A56C();
    swift_allocObject();
    v23 = v22;
    sub_10004A55C();
    sub_10004A53C();
    if (sub_100004288(v9, 1, v10) == 1)
    {
      sub_10004162C(v18, type metadata accessor for PosterAnimationViewModel);

      v19 = &unk_100063E80;
      v20 = &qword_10004D0F8;
      v21 = v9;
      return sub_1000090CC(v21, v19, v20);
    }

    (*(v38 + 32))(v12, v9, v10);
    if (!*(v4 + 32))
    {
      v25 = *(v4 + 16);
      v26 = objc_allocWithZone(sub_10004A60C());
      v27 = v25;
      v28 = sub_10004A5FC();
      sub_100002560(v28, 0);
      v29 = *(v4 + 32);
      *(v4 + 32) = v28;
    }

    v30 = sub_10004A54C();
    v31 = v23;
    v32 = v34;
    sub_10004A8CC();
    sub_10004A7CC();
    (*(v35 + 8))(v32, v36);
    sub_100041274();

    (*(v38 + 8))(v12, v10);
  }

  return sub_10004162C(v18, type metadata accessor for PosterAnimationViewModel);
}

void sub_100041274()
{
  v1 = v0;
  v2 = sub_100049D9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_posterViewModel;
  swift_beginAccess();
  v7 = type metadata accessor for PosterAnimationViewModel(0);
  if (!sub_100004288(v6, 1, v7))
  {
    v8 = *(v6 + *(v7 + 72));
    if (v8)
    {
      v9 = v8;
      if (sub_10000AF08())
      {
        v18 = 0;
        v19 = 0xE000000000000000;
        sub_10004AD6C(39);
        v20._countAndFlagsBits = 0x6F697469646E6F43;
        v20._object = 0xEB00000000203A6ELL;
        sub_10004A9DC(v20);
        sub_10004A6AC();
        sub_100041A80(&qword_100065108, &type metadata accessor for WeatherCondition, &protocol conformance descriptor for WeatherCondition);
        v21._countAndFlagsBits = sub_10004AF1C();
        sub_10004A9DC(v21);

        (*(v3 + 8))(v5, v2);
        v22._countAndFlagsBits = 0x6F697461636F4C0ALL;
        v22._object = 0xEB00000000203A6ELL;
        sub_10004A9DC(v22);
        sub_100049EDC();
        v17[1] = v10;
        v17[2] = v11;
        type metadata accessor for CLLocationCoordinate2D(0);
        sub_10004AE0C();
        v23._object = 0xEB00000000203A65;
        v23._countAndFlagsBits = 0x6D616E656C69460ALL;
        sub_10004A9DC(v23);
        v24._countAndFlagsBits = sub_100049A1C();
        sub_10004A9DC(v24);

        v12 = v18;
        v13 = v19;
        v14 = *(v1 + 48);
        if (v14)
        {
          v15 = v14;
          sub_1000137BC(v12, v13, v15);
        }

        else
        {
          v16 = sub_1000020E8(v18, v19);

          v9 = *(v1 + 48);
          *(v1 + 48) = v16;
        }
      }
    }
  }
}

uint64_t sub_100041538()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041570()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_1000415BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000415D4()
{
  sub_100013FF4();
  v1(0);
  sub_100005A24();
  v2 = sub_100013F94();
  v3(v2);
  return v0;
}

uint64_t sub_10004162C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100009714();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100041680()
{
  v1 = type metadata accessor for PosterAnimationViewModel(0);
  v2 = *(*(v1 - 1) + 80);
  v28 = *(*(v1 - 1) + 64);
  v30 = sub_100049FCC();
  sub_1000059BC();
  v4 = v3;
  v5 = *(v3 + 80);
  v29 = *(v6 + 64);

  v7 = v0 + ((v2 + 24) & ~v2);
  sub_100049F2C();
  sub_100009714();
  (*(v8 + 8))(v7);
  v9 = v1[5];
  v10 = sub_100049B7C();
  sub_100005A24();
  v12 = *(v11 + 8);
  v12(v7 + v9, v10);
  v13 = v1[6];
  sub_100049D9C();
  sub_100009714();
  (*(v14 + 8))(v7 + v13);
  v15 = v1[9];
  sub_10004A69C();
  sub_100009714();
  (*(v16 + 8))(v7 + v15);
  v17 = v1[10];
  if (!sub_100004288(v7 + v17, 1, v10))
  {
    v12(v7 + v17, v10);
  }

  v18 = v1[11];
  if (!sub_100004288(v7 + v18, 1, v10))
  {
    v12(v7 + v18, v10);
  }

  v19 = v1[12];
  sub_10004A8AC();
  sub_100009714();
  (*(v20 + 8))(v7 + v19);
  v21 = v1[14];
  v22 = sub_10004A6DC();
  if (!sub_100004288(v7 + v21, 1, v22))
  {
    (*(*(v22 - 8) + 8))(v7 + v21, v22);
  }

  v23 = v2 | v5;
  v24 = (((v2 + 24) & ~v2) + v28 + v5) & ~v5;
  v25 = v1[16];
  sub_10004A72C();
  sub_100009714();
  (*(v26 + 8))(v7 + v25);

  (*(v4 + 8))(v0 + v24, v30);

  return _swift_deallocObject(v0, v24 + v29, v23 | 7);
}

void sub_1000419B4()
{
  v1 = *(type metadata accessor for PosterAnimationViewModel(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_100049FCC();
  sub_100005A50(v4);
  v6 = *(v0 + 16);
  v7 = v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80));

  sub_10003F794(v6, v0 + v2, v7);
}

uint64_t sub_100041A80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100041AC8()
{
  v1 = *(sub_100002D54(&unk_100063DF0, &qword_10004CF28) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  v6 = type metadata accessor for PosterAnimationViewModel(0);
  if (!sub_100004288(v0 + v3, 1, v6))
  {
    sub_100049F2C();
    sub_100009714();
    (*(v7 + 8))(v0 + v3);
    v8 = v6[5];
    v9 = sub_100049B7C();
    sub_100005A24();
    v11 = *(v10 + 8);
    v11(v5 + v8, v9);
    v12 = v6[6];
    sub_100049D9C();
    sub_100009714();
    (*(v13 + 8))(v5 + v12);
    v14 = v6[9];
    sub_10004A69C();
    sub_100009714();
    (*(v15 + 8))(v5 + v14);
    v16 = v6[10];
    if (!sub_100004288(v5 + v16, 1, v9))
    {
      v11(v5 + v16, v9);
    }

    v17 = v6[11];
    if (!sub_100004288(v5 + v17, 1, v9))
    {
      v11(v5 + v17, v9);
    }

    v18 = v6[12];
    sub_10004A8AC();
    sub_100009714();
    (*(v19 + 8))(v5 + v18);
    v20 = v6[14];
    v21 = sub_10004A6DC();
    if (!sub_100004288(v5 + v20, 1, v21))
    {
      (*(*(v21 - 8) + 8))(v5 + v20, v21);
    }

    v22 = v6[16];
    sub_10004A72C();
    sub_100009714();
    (*(v23 + 8))(v5 + v22);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100041D94()
{
  v1 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  sub_100005A50(v1);
  v2 = *(v0 + 16);

  return sub_100040B18(v2);
}

uint64_t sub_100041E00()
{
  sub_100013FF4();
  v1(0);
  sub_100005A24();
  v2 = sub_100013F94();
  v3(v2);
  return v0;
}

uint64_t sub_100041F00(uint64_t a1)
{

  return sub_100004288(a1, 1, v1);
}

uint64_t sub_100041F18()
{
  sub_100042220(0, 0, v26);
  if (v27)
  {
    if (qword_1000634A8 != -1)
    {
      sub_1000347A8(&qword_1000634A8);
    }

    v0 = sub_100049FCC();
    sub_100008F90(v0, qword_1000683A8);
    v1 = sub_100049FAC();
    v2 = sub_10004AB7C();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_17;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Snapshot image is not valid because color components do not exist", v3, 2u);
    v4 = v3;
LABEL_16:
    sub_100013F58(v4);
LABEL_17:

    return 0;
  }

  if (*&v26[3] != 1.0)
  {
    if (qword_1000634A8 != -1)
    {
      sub_1000347A8(&qword_1000634A8);
    }

    v16 = sub_100049FCC();
    sub_100008F90(v16, qword_1000683A8);
    v1 = sub_100049FAC();
    v17 = sub_10004AB7C();
    if (!os_log_type_enabled(v1, v17))
    {
      goto LABEL_17;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136446210;
    sub_100002D54(&unk_100065110, &qword_10004E460);
    v20 = sub_10004A9AC();
    v22 = sub_1000230EC(v20, v21, &v25);

    *(v18 + 4) = v22;
    sub_1000347E8(&_mh_execute_header, v23, v24, "Snapshot image is not valid because image has transparency; colorComponents=%{public}s");
    sub_100008FC8(v19);
    sub_100013F58(v19);
    v4 = v18;
    goto LABEL_16;
  }

  if (qword_1000634A8 != -1)
  {
    sub_1000347A8(&qword_1000634A8);
  }

  v5 = sub_100049FCC();
  sub_100008F90(v5, qword_1000683A8);
  v6 = sub_100049FAC();
  v7 = sub_10004AB9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136446210;
    v25 = v9;
    sub_100002D54(&unk_100065110, &qword_10004E460);
    v10 = sub_10004A9AC();
    v12 = sub_1000230EC(v10, v11, &v25);

    *(v8 + 4) = v12;
    sub_1000347E8(&_mh_execute_header, v13, v14, "Snapshot image is valid; colorComponents=%{public}s");
    sub_100008FC8(v9);
    sub_100013F58(v9);
    sub_100013F58(v8);
  }

  return 1;
}

void sub_100042220(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  Width = CGImageGetWidth(v3);
  if ((Width & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v10 = 0uLL;
  if (Width <= a1)
  {
    v26 = 1;
    v27 = 0uLL;
LABEL_18:
    *a3 = v10;
    *(a3 + 16) = v27;
    *(a3 + 32) = v26;
    return;
  }

  Height = CGImageGetHeight(v3);
  if ((Height & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (Height <= a2)
  {
    goto LABEL_17;
  }

  v12 = CGImageGetDataProvider(v3);
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = v12;
  v14 = CGDataProviderCopyData(v12);

  if (!v14)
  {
    goto LABEL_17;
  }

  BytePtr = CFDataGetBytePtr(v14);
  if (!BytePtr)
  {

LABEL_17:
    v26 = 1;
    v27 = 0uLL;
    v10 = 0uLL;
    goto LABEL_18;
  }

  v16 = BytePtr;
  BytesPerRow = CGImageGetBytesPerRow(v5);
  v18 = a2 * BytesPerRow;
  if ((a2 * BytesPerRow) >> 64 != (a2 * BytesPerRow) >> 63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  BitsPerPixel = CGImageGetBitsPerPixel(v5);
  if ((a1 * BitsPerPixel) >> 64 != (a1 * BitsPerPixel) >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = a1 * BitsPerPixel / 8;
  v21 = v18 + v20;
  if (__OFADD__(v18, v20))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (CGImageGetBitsPerComponent(v5) == 16 && (CGImageGetBitmapInfo(v5) & 0x100) != 0)
  {
    v22.i32[0] = *&v16[v21];
    v4.i32[0] = *&v16[v21 + 4];
    v33 = vcvtq_f64_f32(*&vcvtq_f32_f16(v22));

    v10 = v33;
    v26 = 0;
    v27 = vcvtq_f64_f32(*&vcvtq_f32_f16(v4));
    goto LABEL_18;
  }

  if (CGImageGetBitsPerComponent(v5) == 16)
  {
    v23.i64[0] = *&v16[v21];
    v23.i64[1] = *&v16[v21 + 2];
    v31 = vdupq_n_s64(0x40EFFFE000000000uLL);
    v32 = vdivq_f64(vcvtq_f64_u64(v23), v31);
    LODWORD(v24) = *&v16[v21 + 4];
    v25 = *&v16[v21 + 6];
LABEL_21:
    HIDWORD(v24) = v25;
    v30 = v24;

    v10 = v32;
    v26 = 0;
    v29.i64[0] = v30;
    v29.i64[1] = HIDWORD(v30);
    v27 = vdivq_f64(vcvtq_f64_u64(v29), v31);
    goto LABEL_18;
  }

  if (v21 <= 0x7FFFFFFFFFFFFFFCLL)
  {
    v28.i64[0] = v16[v21];
    v28.i64[1] = v16[v21 + 1];
    v31 = vdupq_n_s64(0x406FE00000000000uLL);
    v32 = vdivq_f64(vcvtq_f64_u64(v28), v31);
    LODWORD(v24) = v16[v21 + 2];
    v25 = v16[v21 + 3];
    goto LABEL_21;
  }

LABEL_28:
  __break(1u);
}

Swift::Int sub_100042468(char a1)
{
  sub_10004AFEC();
  sub_100020E2C(v3, a1);
  return sub_10004B00C();
}

Swift::Int sub_100042504(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_10004AFEC();
  a2(a1);
  sub_10004A9CC();

  return sub_10004B00C();
}

Swift::Int sub_100042580(Swift::UInt a1)
{
  sub_10004AFEC();
  sub_10004AFFC(a1);
  return sub_10004B00C();
}

void sub_1000425C8(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100002D54(&qword_100063DC0, &qword_10004E5C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_100049E9C();
  sub_1000059BC();
  v9 = v8;
  v11 = __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  sub_10001A674(a1);
  sub_100026C88(v6);
  v16 = type metadata accessor for PosterDataModel(0);
  if (sub_100004288(v6, 1, v16) == 1)
  {
    sub_10000591C(v6, &qword_100063DC0, &qword_10004E5C0);
  }

  else
  {
    (*(v9 + 16))(v13, &v6[*(v16 + 20)], v7);
    sub_10004767C(v6, type metadata accessor for PosterDataModel);
    (*(v9 + 32))(v15, v13, v7);
    v17 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_location;
    if (*(v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_location))
    {
      (*(v9 + 8))(v15, v7);
    }

    else
    {
      sub_100049E7C();
      v19 = v18;
      sub_100049E8C();
      v21 = [objc_allocWithZone(CLLocation) initWithLatitude:v19 longitude:v20];
      (*(v9 + 8))(v15, v7);
      v22 = *(v2 + v17);
      *(v2 + v17) = v21;
    }
  }
}

void sub_100042830()
{
  if ((*(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_isMonitoringEvents) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_isMonitoringEvents) = 1;
    sub_100042E00();
    sub_100042E48();

    sub_100042F4C();
  }
}

void sub_10004287C()
{
  v1 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_isMonitoringEvents;
  if (*(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_isMonitoringEvents) == 1)
  {
    v2 = v0;
    if (qword_100063488 != -1)
    {
      sub_100009728(&qword_100063488);
    }

    v3 = sub_100049FCC();
    sub_10001A018(v3, qword_100068348);
    v4 = sub_100049FAC();
    v5 = sub_10004AB9C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = sub_10001A048();
      *v6 = 0;
      sub_1000479A0(&_mh_execute_header, v7, v8, "Stopping monitoring of significant events for data manager");
      sub_100013F58(v6);
    }

    *(v2 + v1) = 0;
    v9 = v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_sessionExtenderDelegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10001BD48(Strong, *(v9 + 8));
    swift_unknownObjectRelease();
    v11 = swift_unknownObjectWeakLoadStrong();
    sub_10001BD48(v11, *(v9 + 8));
    swift_unknownObjectRelease();
    sub_100043210();
    sub_100043270();
    sub_1000432AC();
    sub_10000823C();
    v12 = *(v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_activeRequestLocation);
    *(v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_activeRequestLocation) = 0;
  }
}

unint64_t sub_1000429F4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10005E128;
  v6._object = a2;
  v4 = sub_10004AE7C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100042A40(char a1)
{
  if (!a1)
  {
    return 0x64657472617473;
  }

  if (a1 == 1)
  {
    return 0x646570706F7473;
  }

  return 0x646573756170;
}

unint64_t sub_100042AAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000429F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100042ADC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100042A40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_100042B14()
{
  v1 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager____lazy_storage___locationManager;
  v2 = *(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager____lazy_storage___locationManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager____lazy_storage___locationManager);
  }

  else
  {
    v4 = sub_100042B78(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100042B78(uint64_t a1)
{
  v2 = [objc_allocWithZone(CLLocationManager) init];
  [v2 setDelegate:a1];
  [v2 setDistanceFilter:500.0];
  [v2 setDesiredAccuracy:kCLLocationAccuracyKilometer];
  return v2;
}

id sub_100042BFC(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_cacheManager;
  if (qword_100063450 != -1)
  {
    swift_once();
  }

  *&v1[v4] = qword_1000682A8;
  v5 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_dataUpdater;
  type metadata accessor for PosterDataUpdater();
  swift_allocObject();

  *&v1[v5] = sub_1000084B4();
  *&v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager____lazy_storage___locationManager] = 0;
  v6 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkMonitor;
  type metadata accessor for NetworkMonitor();
  swift_allocObject();
  *&v1[v6] = sub_100025D20();
  *&v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_periodicTimer] = 0;
  v7 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationSessionExtender;
  type metadata accessor for RenderSessionExtender();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = 5;
  *&v1[v7] = v8;
  v9 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkSessionExtender;
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 6;
  *&v1[v9] = v10;
  v11 = &v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_authorizationStatus];
  *v11 = 0;
  v11[4] = 1;
  *&v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_location] = 0;
  v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkStatus] = 2;
  v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationUpdateStatus] = 1;
  *&v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_activeRequestLocation] = 0;
  v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_isMonitoringEvents] = 0;
  *&v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_sessionExtenderDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_posterDataDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_canRequestLocationAuthorization] = a1 & 1;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "init");
}

void sub_100042E00()
{
  v1 = sub_100042B14();
  [v1 setDelegate:v0];
}

void sub_100042E48()
{
  v1 = v0;
  if (qword_100063488 != -1)
  {
    swift_once();
  }

  v2 = sub_100049FCC();
  sub_100008F90(v2, qword_100068348);
  v3 = sub_100049FAC();
  v4 = sub_10004AB9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting monitoring for changes in network status", v5, 2u);
  }

  *(*(v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkMonitor) + 40) = &off_10005F690;
  swift_unknownObjectWeakAssign();
  sub_10002538C();
}

void sub_100042F4C()
{
  v1 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_periodicTimer;
  if (!*(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_periodicTimer))
  {
    v2 = v0;
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v3 = sub_100049FCC();
    sub_100008F90(v3, qword_100068348);
    v4 = sub_100049FAC();
    v5 = sub_10004AB9C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      aBlock = 0;
      *v6 = 136446210;
      v16 = 0xE000000000000000;
      sub_10004AB4C();
      v21._countAndFlagsBits = 1852402976;
      v21._object = 0xE400000000000000;
      sub_10004A9DC(v21);
      v8 = sub_1000230EC(aBlock, 0xE000000000000000, &v14);

      *(v6 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Scheduling timer for periodic updates every %{public}s", v6, 0xCu);
      sub_100008FC8(v7);
    }

    sub_100013820(0, &qword_100065258, BSContinuousMachTimer_ptr);
    v9 = sub_100045BA8(0xD00000000000001BLL, 0x800000010004FD90);
    sub_100013820(0, &qword_100065260, OS_dispatch_queue_ptr);
    v10 = sub_10004ABFC();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = sub_100047928;
    v20 = v11;
    aBlock = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_100011A98;
    v18 = &unk_10005F6C8;
    v12 = _Block_copy(&aBlock);

    [v9 scheduleRepeatingWithFireInterval:v10 repeatInterval:v12 leewayInterval:900.0 queue:900.0 handler:60.0];
    _Block_release(v12);

    v13 = *(v2 + v1);
    *(v2 + v1) = v9;
  }
}

void sub_100043210()
{
  sub_1000437D0("Stopping location updates", &selRef_stopUpdatingLocation, 1);
  v0 = sub_100042B14();
  [v0 setDelegate:0];
}

uint64_t sub_100043270()
{
  *(*(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkMonitor) + 40) = 0;
  swift_unknownObjectWeakAssign();
  return sub_100025880();
}

void sub_1000432AC()
{
  v1 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_periodicTimer;
  v2 = *(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_periodicTimer);
  if (v2)
  {
    [v2 invalidate];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

void sub_10004343C(char a1)
{
  v3 = v1;
  v5 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkStatus;
  v6 = *(v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkStatus);
  if (v6 != 2 && (sub_10000A1F4(a1 & 1, v6 & 1) & 1) != 0)
  {
    sub_10004794C();
    return;
  }

  if (qword_100063488 != -1)
  {
    sub_100009728(&qword_100063488);
  }

  v7 = sub_100049FCC();
  sub_10001A018(v7, qword_100068348);
  v8 = sub_100049FAC();
  v9 = sub_10004AB9C();
  if (sub_100047984(v9))
  {
    v10 = swift_slowAlloc();
    v11 = sub_10001A07C();
    v20 = v11;
    *v10 = 136446210;
    if (a1)
    {
      v12 = 0x656E696C66666FLL;
    }

    else
    {
      v12 = 0x6C62616863616572;
    }

    if (a1)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = 0xE900000000000065;
    }

    v14 = sub_1000230EC(v12, v13, &v20);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v2, "Network status changed to %{public}s", v10, 0xCu);
    sub_100008FC8(v11);
    sub_100013F58(v11);
    sub_100047968();
  }

  *(v3 + v5) = a1 & 1;
  if (a1)
  {
    v15 = sub_10004AF3C();

    if ((v15 & 1) == 0)
    {
      sub_10004794C();

      sub_100044818();
      return;
    }
  }

  else
  {
  }

  sub_10004794C();

  sub_1000438B4(v17, v18);
}

void sub_10004365C(char a1)
{
  if (a1)
  {
    v2 = v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_sessionExtenderDelegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = sub_10001BBB4(Strong, *(v2 + 8));
    swift_unknownObjectRelease();
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v5 = sub_100049FCC();
    sub_100008F90(v5, qword_100068348);
    v6 = sub_100049FAC();
    v7 = sub_10004AB9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v4 & 1;
      _os_log_impl(&_mh_execute_header, v6, v7, "Requested session extension for location update; extendedSessionGranted=%{BOOL}d", v8, 8u);
    }
  }

  sub_1000437D0("Starting location updates", &selRef_startUpdatingLocation, 0);

  sub_1000438B4(0xD00000000000001DLL, 0x800000010004FD40);
}

void sub_1000437D0(const char *a1, SEL *a2, char a3)
{
  v8 = v3;
  if (qword_100063488 != -1)
  {
    sub_100009728(&qword_100063488);
  }

  v9 = sub_100049FCC();
  sub_10001A018(v9, qword_100068348);
  v10 = sub_100049FAC();
  v11 = sub_10004AB9C();
  if (sub_100047984(v11))
  {
    v12 = sub_10001A048();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v4, a1, v12, 2u);
    sub_100047968();
  }

  v13 = sub_100042B14();
  [v13 *a2];

  *(v8 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationUpdateStatus) = a3;
}

void sub_1000438B4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v90 = a1;
  v5 = sub_100049B7C();
  v89 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D54(&unk_100065230, &qword_10004D7F8);
  __chkstk_darwin(v8 - 8);
  v10 = &v86 - v9;
  v11 = type metadata accessor for PosterDataModel(0);
  __chkstk_darwin(v11);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PosterData(0);
  __chkstk_darwin(v14);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v3[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_authorizationStatus];
  if ((v3[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_authorizationStatus + 4] & 1) != 0 || (sub_10004AC2C() & 1) == 0)
  {
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v26 = sub_100049FCC();
    sub_100008F90(v26, qword_100068348);

    v27 = v3;
    v28 = sub_100049FAC();
    v29 = sub_10004AB9C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *v30 = 136446466;
      *(v30 + 4) = sub_1000230EC(v90, a2, &v91);
      *(v30 + 12) = 2082;
      if (v17[4])
      {
        v31 = 0xE700000000000000;
        v32 = 0x6E776F6E6B6E75;
      }

      else
      {
        v32 = sub_10004AC3C();
        v31 = v33;
      }

      v34 = sub_1000230EC(v32, v31, &v91);

      *(v30 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Update for %{public}s will be skipped because location is unauthorized; status=%{public}s", v30, 0x16u);
      swift_arrayDestroy();
    }

    sub_100044818();
    return;
  }

  v88 = v13;
  v18 = v3[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkStatus];
  if (v18 != 2)
  {
    if (v18)
    {
    }

    else
    {
      v35 = sub_10004AF3C();

      if ((v35 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v36 = sub_100049FCC();
    sub_100008F90(v36, qword_100068348);

    v37 = sub_100049FAC();
    v38 = sub_10004AB9C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v91 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_1000230EC(v90, a2, &v91);
      _os_log_impl(&_mh_execute_header, v37, v38, "Update for %{public}s will be skipped because network is offline", v39, 0xCu);
      sub_100008FC8(v40);
    }

    sub_100044818();
    return;
  }

LABEL_4:
  v19 = *&v3[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_location];
  if (v19)
  {
    v87 = v19;
    sub_10001A674(v16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v88;
      sub_100047734(v16, v88, type metadata accessor for PosterDataModel);
      v21 = *(v20 + *(v11 + 40));
      v22 = *(v21 + 16);
      v23 = type metadata accessor for PosterDataModel.DataPoint(0);
      v24 = v23;
      if (v22)
      {
        sub_1000476D4(v21 + ((*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80)), v10, type metadata accessor for PosterDataModel.DataPoint);
        v25 = 0;
      }

      else
      {
        v25 = 1;
      }

      sub_100004544(v10, v25, 1, v24);
      v54 = sub_100027520(600.0);
      sub_10000591C(v10, &unk_100065230, &qword_10004D7F8);
      v56 = v87;
      if ((v54 & 1) != 0 || (v55.super.isa = v87, sub_100049E5C(v55, 0.001)))
      {
        if (qword_100063488 != -1)
        {
          swift_once();
        }

        v57 = sub_100049FCC();
        sub_100008F90(v57, qword_100068348);
        v58 = v56;

        v59 = v3;
        v60 = sub_100049FAC();
        v61 = sub_10004AB9C();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v91 = v87;
          *v62 = 136446722;
          *(v62 + 4) = sub_1000230EC(v90, a2, &v91);
          *(v62 + 12) = 2082;
          v63 = [(objc_class *)v58 timestamp];
          sub_100049B3C();

          v64 = sub_100049ADC();
          v66 = v65;
          (v89[1].isa)(v7, v5);
          v67 = sub_1000230EC(v64, v66, &v91);

          *(v62 + 14) = v67;
          *(v62 + 22) = 2082;
          if (v59[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationUpdateStatus])
          {
            if (v59[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationUpdateStatus] == 1)
            {
              v68 = 0xE700000000000000;
              v69 = 0x646570706F7473;
            }

            else
            {
              v68 = 0xE600000000000000;
              v69 = 0x646573756170;
            }
          }

          else
          {
            v69 = 0x64657472617473;
            v68 = 0xE700000000000000;
          }

          v84 = sub_1000230EC(v69, v68, &v91);

          *(v62 + 24) = v84;
          _os_log_impl(&_mh_execute_header, v60, v61, "Update for %{public}s will fetch new data because the current data's weather or location is stale; locationTimestamp=%{public}s, locationUpdateStatus=%{public}s", v62, 0x20u);
          swift_arrayDestroy();
        }

        sub_100045FCC(v58);
      }

      else
      {
        if (qword_100063488 != -1)
        {
          swift_once();
        }

        v70 = sub_100049FCC();
        sub_100008F90(v70, qword_100068348);
        v58 = v56;

        v71 = v3;
        v72 = sub_100049FAC();
        v73 = sub_10004AB9C();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v91 = v87;
          *v74 = 136446722;
          *(v74 + 4) = sub_1000230EC(v90, a2, &v91);
          *(v74 + 12) = 2082;
          v75 = [(objc_class *)v58 timestamp];
          sub_100049B3C();

          v76 = sub_100049ADC();
          v78 = v77;
          (v89[1].isa)(v7, v5);
          v79 = sub_1000230EC(v76, v78, &v91);

          *(v74 + 14) = v79;
          *(v74 + 22) = 2082;
          if (v71[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationUpdateStatus])
          {
            if (v71[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationUpdateStatus] == 1)
            {
              v80 = 0xE700000000000000;
              v81 = 0x646570706F7473;
            }

            else
            {
              v80 = 0xE600000000000000;
              v81 = 0x646573756170;
            }
          }

          else
          {
            v81 = 0x64657472617473;
            v80 = 0xE700000000000000;
          }

          v85 = sub_1000230EC(v81, v80, &v91);

          *(v74 + 24) = v85;
          _os_log_impl(&_mh_execute_header, v72, v73, "Update for %{public}s will be skipped because the current data's weather and location is recent; locationTimestamp=%{public}s, locationUpdateStatus=%{public}s", v74, 0x20u);
          swift_arrayDestroy();

          goto LABEL_64;
        }
      }

LABEL_64:
      sub_10004767C(v88, type metadata accessor for PosterDataModel);
      return;
    }

    v45 = *v16;
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v46 = sub_100049FCC();
    sub_100008F90(v46, qword_100068348);

    v47 = sub_100049FAC();
    v48 = sub_10004AB9C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *v49 = 136446466;
      *(v49 + 4) = sub_1000230EC(v90, a2, &v91);
      *(v49 + 12) = 2082;
      v50 = 0xEE00656E696C6666;
      v51 = 0x4F6B726F7774656ELL;
      switch(v45)
      {
        case 1:
          break;
        case 2:
          v50 = 0xE600000000000000;
          v51 = 0x617461446F6ELL;
          break;
        case 3:
          v51 = 0xD000000000000014;
          v52 = "weatherRequestFailed";
          goto LABEL_56;
        default:
          v51 = 0xD000000000000014;
          v52 = "locationUnauthorized";
LABEL_56:
          v50 = (v52 - 32) | 0x8000000000000000;
          break;
      }

      v82 = sub_1000230EC(v51, v50, &v91);

      *(v49 + 14) = v82;
      _os_log_impl(&_mh_execute_header, v47, v48, "Update for %{public}s will fetch new data because the current data has error; error=%{public}s", v49, 0x16u);
      swift_arrayDestroy();
    }

    v83 = v87;
    sub_100045FCC(v87);
  }

  else
  {
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v41 = sub_100049FCC();
    sub_100008F90(v41, qword_100068348);

    v89 = sub_100049FAC();
    v42 = sub_10004AB9C();

    if (os_log_type_enabled(v89, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v91 = v44;
      *v43 = 136446210;
      *(v43 + 4) = sub_1000230EC(v90, a2, &v91);
      _os_log_impl(&_mh_execute_header, v89, v42, "Update for %{public}s will be skipped because current location is unknown", v43, 0xCu);
      sub_100008FC8(v44);
    }

    else
    {
      v53 = v89;
    }
  }
}

void sub_1000446BC(char a1)
{
  sub_1000437D0("Stopping location updates", &selRef_stopUpdatingLocation, 1);
  sub_100044818();
  if ((a1 & 1) != 0 && *(v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_canRequestLocationAuthorization) == 1)
  {
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v3 = sub_100049FCC();
    sub_100008F90(v3, qword_100068348);
    v4 = sub_100049FAC();
    v5 = sub_10004AB9C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Requesting when in use authorization", v6, 2u);
    }

    v7 = sub_100042B14();
    [v7 requestWhenInUseAuthorization];
  }
}

uint64_t sub_100044818()
{
  v1 = type metadata accessor for PosterData(0);
  result = __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_authorizationStatus + 4) & 1) != 0 || (result = sub_10004AC2C(), (result))
  {
    v5 = *(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkStatus);
    if (v5 == 2)
    {
      return result;
    }

    if (v5)
    {
    }

    else
    {
      v7 = sub_10004AF3C();

      if ((v7 & 1) == 0)
      {
        return result;
      }
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *v4 = v6;
  swift_storeEnumTagMultiPayload();
  sub_1000464C0(v4);
  return sub_10004767C(v4, type metadata accessor for PosterData);
}

void sub_10004495C()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationUpdateStatus) && *(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationUpdateStatus) != 1)
  {
  }

  else
  {
    v2 = sub_10004AF3C();

    if ((v2 & 1) == 0)
    {
      return;
    }
  }

  if (*(v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_authorizationStatus + 4) & 1) == 0 && (sub_10004AC2C())
  {
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v3 = sub_100049FCC();
    sub_100008F90(v3, qword_100068348);
    v4 = sub_100049FAC();
    v5 = sub_10004AB9C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Will resume location updates after being paused", v6, 2u);
    }

    sub_1000437D0("Starting location updates", &selRef_startUpdatingLocation, 0);
  }
}

void sub_100044AE4(void *a1, SEL *a2)
{
  sub_100049E9C();
  sub_1000059BC();
  v59 = v6;
  v60 = v5;
  __chkstk_darwin(v5);
  v57 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D54(&qword_100065250, &qword_10004E5B8);
  v9 = __chkstk_darwin(v8 - 8);
  v56 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = (v55 - v11);
  v12 = v2;
  v13 = v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_sessionExtenderDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10001BD48(Strong, *(v13 + 8));
  swift_unknownObjectRelease();
  v15 = [a1 _limitsPrecision];
  v62 = a2;
  v16 = sub_100034314();
  v17 = v16;
  v61 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_location;
  v18 = a2 & 0xC000000000000001;
  v19 = (a2 & 0xFFFFFFFFFFFFFF8);
  v55[1] = a2;
  v20 = (a2 + 4);
  do
  {
    v21 = v17;
    if (!v17)
    {
      break;
    }

    --v17;
    if (__OFSUB__(v21, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      sub_100009728(&qword_100063488);
LABEL_22:
      v33 = sub_100049FCC();
      sub_10001A018(v33, qword_100068348);
      v34 = v21;
      v35 = v19;
      v36 = sub_100049FAC();
      v37 = sub_10004AB9C();

      if (os_log_type_enabled(v36, v37))
      {
        LODWORD(v59) = v37;
        v60 = v34;
        v38 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v62 = v58;
        *v38 = 141558787;
        *(v38 + 4) = 1752392040;
        *(v38 + 12) = 2081;
        if (*&v21[v61])
        {
          [*&v21[v61] a2[22]];
        }

        v43 = v56;
        sub_100049EAC();
        if (sub_100004288(v43, 1, v20) == 1)
        {
          sub_10000591C(v43, &qword_100065250, &qword_10004E5B8);
          v44 = 0xE300000000000000;
          v45 = 7104878;
        }

        else
        {
          v45 = sub_100049E4C();
          v44 = v46;
          v12[1](v43, v20);
        }

        v47 = sub_1000230EC(v45, v44, &v62);

        *(v38 + 14) = v47;
        *(v38 + 22) = 2160;
        *(v38 + 24) = 1752392040;
        *(v38 + 32) = 2081;
        [v35 coordinate];
        v48 = v57;
        sub_100049EBC();
        v49 = sub_100049E4C();
        v51 = v50;
        v12[1](v48, v20);
        v52 = sub_1000230EC(v49, v51, &v62);

        *(v38 + 34) = v52;
        _os_log_impl(&_mh_execute_header, v36, v59, "Location significantly changed from %{private,mask.hash}s to %{private,mask.hash}s", v38, 0x2Au);
        v53 = v58;
        swift_arrayDestroy();
        sub_100013F58(v53);
        sub_100047968();
      }

      else
      {
      }

      v54 = *&v21[v61];
      *&v21[v61] = v19;
      v19 = v35;

      sub_1000438B4(0x6E6F697461636F6CLL, 0xEF65676E61686320);
      goto LABEL_36;
    }

    if (v18)
    {
      v22 = sub_10004AD7C();
    }

    else
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

      if (v17 >= v19[2].isa)
      {
        goto LABEL_39;
      }

      v22 = *(v20 + 8 * v17);
    }

    v23 = v22;
    v24 = *(v12 + v61);
    a2 = v24;
    LOBYTE(v24) = sub_10004AB6C(v15, v24);
  }

  while ((v24 & 1) == 0);
  __chkstk_darwin(v16);
  v55[-2] = &v62;
  v26 = sub_100047874(sub_100047908, &v55[-4], v17, v25);
  if (v26)
  {
    v19 = v26;
    v21 = v12;
    a2 = &selRef_topAnchor;
    if (*(v12 + v61))
    {
      [*(v12 + v61) coordinate];
    }

    v12 = v59;
    v20 = v60;
    v30 = v58;
    sub_100049EAC();
    if (sub_100004288(v30, 1, v20) == 1)
    {
      sub_10000591C(v30, &qword_100065250, &qword_10004E5B8);
      goto LABEL_21;
    }

    v31.super.isa = v19;
    v32 = sub_100049E5C(v31, 0.001);
    v12[1](v30, v20);
    if (v32)
    {
LABEL_21:
      if (qword_100063488 != -1)
      {
        goto LABEL_40;
      }

      goto LABEL_22;
    }

    if (qword_100063488 != -1)
    {
      sub_100009728(&qword_100063488);
    }

    v39 = sub_100049FCC();
    sub_10001A018(v39, qword_100068348);
    v40 = sub_100049FAC();
    v41 = sub_10004AB9C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = sub_10001A048();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Location updated but no significant difference from known location; Update will be skipped.", v42, 2u);
      sub_100013F58(v42);
    }
  }

  else
  {
    if (qword_100063488 != -1)
    {
      sub_100009728(&qword_100063488);
    }

    v27 = sub_100049FCC();
    sub_10001A018(v27, qword_100068348);
    v19 = sub_100049FAC();
    v28 = sub_10004AB9C();
    if (os_log_type_enabled(v19, v28))
    {
      v29 = sub_10001A048();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v19, v28, "Location updated but did not meet accuracy requirements; Update will be skipped.", v29, 2u);
      sub_100013F58(v29);
    }
  }

LABEL_36:
}

uint64_t sub_100045280(uint64_t a1, uint64_t a2)
{
  if (qword_100063488 != -1)
  {
    sub_100009728(&qword_100063488);
  }

  v3 = sub_100049FCC();
  sub_10001A018(v3, qword_100068348);
  swift_errorRetain();
  v4 = sub_100049FAC();
  v5 = sub_10004AB9C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = sub_10001A07C();
    v14 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_10004AFBC();
    v10 = sub_1000230EC(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Location request had error=%{public}s", v6, 0xCu);
    sub_100008FC8(v7);
    sub_100047968();
    sub_100013F58(v6);
  }

  type metadata accessor for Code(0);
  v14 = 0;
  sub_100047794();
  result = sub_10004991C();
  if ((result & 1) == 0)
  {
    v12 = v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_sessionExtenderDelegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10001BD48(Strong, *(v12 + 8));
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100045494(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_authorizationStatus;
  v4 = *(v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_authorizationStatus + 4);
  v5 = [a1 authorizationStatus];
  *v3 = v5;
  *(v3 + 4) = 0;
  if ((v4 & 1) == 0 && (v6 = sub_10004AC2C() & 1, (sub_10004AC2C() & 1) == v6))
  {
    if (qword_100063488 != -1)
    {
      sub_100009728(&qword_100063488);
    }

    v18 = sub_100049FCC();
    sub_10001A018(v18, qword_100068348);
    oslog = sub_100049FAC();
    v19 = sub_10004AB9C();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = sub_10001A07C();
      v30 = v21;
      *v20 = 136446466;
      v22 = sub_10004AC3C();
      v24 = sub_1000230EC(v22, v23, &v30);

      *(v20 + 4) = v24;
      *(v20 + 12) = 1024;
      *(v20 + 14) = sub_10004AC2C() & 1;
      _os_log_impl(&_mh_execute_header, oslog, v19, "Location authorization status changed, but no change to whether the poster is authorized to use location; authorizationStatus=%{public}s, isAuthorized=%{BOOL}d", v20, 0x12u);
      sub_100008FC8(v21);
      sub_100013F58(v21);
      sub_100013F58(v20);
    }

    sub_10004794C();
  }

  else
  {
    if (qword_100063488 != -1)
    {
      sub_100009728(&qword_100063488);
    }

    v7 = sub_100049FCC();
    sub_10001A018(v7, qword_100068348);
    v8 = sub_100049FAC();
    v9 = sub_10004AB9C();
    if (sub_100047984(v9))
    {
      v10 = swift_slowAlloc();
      v11 = sub_10001A07C();
      v30 = v11;
      *v10 = 136446466;
      v12 = sub_10004AC3C();
      v14 = sub_1000230EC(v12, v13, &v30);

      *(v10 + 4) = v14;
      *(v10 + 12) = 1024;
      *(v10 + 14) = sub_10004AC2C() & 1;
      _os_log_impl(&_mh_execute_header, v8, v2, "Location authorization status changed; authorizationStatus=%{public}s, isAuthorized=%{BOOL}d", v10, 0x12u);
      sub_100008FC8(v11);
      sub_100047968();
      sub_100013F58(v10);
    }

    if (v5 - 1 < 2)
    {
      sub_1000437D0("Stopping location updates", &selRef_stopUpdatingLocation, 1);
      sub_10004794C();

      sub_100044818();
    }

    else if (v5 - 3 >= 2)
    {
      sub_10004794C();

      sub_1000446BC(v27);
    }

    else
    {
      sub_10004794C();

      sub_10004365C(v15);
    }
  }
}

void sub_10004581C()
{
  v1 = v0;
  if (qword_100063488 != -1)
  {
    sub_100009728(&qword_100063488);
  }

  v2 = sub_100049FCC();
  sub_10001A018(v2, qword_100068348);
  v3 = sub_100049FAC();
  v4 = sub_10004AB9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_10001A048();
    *v5 = 0;
    sub_1000479A0(&_mh_execute_header, v6, v7, "Location manager did pause location updates");
    sub_100013F58(v5);
  }

  *(v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationUpdateStatus) = 2;
}

void sub_100045934()
{
  if (qword_100063488 != -1)
  {
    sub_100009728(&qword_100063488);
  }

  v0 = sub_100049FCC();
  sub_10001A018(v0, qword_100068348);
  oslog = sub_100049FAC();
  v1 = sub_10004AB9C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = sub_10001A048();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Location manager did resume location updates", v2, 2u);
    sub_100013F58(v2);
  }
}

_BYTE *storeEnumTagSinglePayload for PosterDataManager.LocationUpdateStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x100045B18);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100045B54()
{
  result = qword_100065228;
  if (!qword_100065228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065228);
  }

  return result;
}

id sub_100045BA8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_10004A95C();

  v4 = [v2 initWithIdentifier:v3];

  return v4;
}

void sub_100045C1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100063488 != -1)
      {
        swift_once();
      }

      v7 = sub_100049FCC();
      sub_100008F90(v7, qword_100068348);
      v8 = sub_100049FAC();
      v9 = sub_10004AB7C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Found unset network delegate during periodic update", v10, 2u);
      }
    }

    v11 = sub_100042B14();
    v12 = [v11 delegate];

    if (v12)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100063488 != -1)
      {
        swift_once();
      }

      v13 = sub_100049FCC();
      sub_100008F90(v13, qword_100068348);
      v14 = sub_100049FAC();
      v15 = sub_10004AB7C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Found unset location manager delegate during periodic update", v16, 2u);
      }
    }

    sub_10004495C();
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v17 = sub_100049FCC();
    sub_100008F90(v17, qword_100068348);
    v18 = sub_100049FAC();
    v19 = sub_10004AB9C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Periodic timer fired - will check if update is needed", v20, 2u);
    }

    sub_1000438B4(0x6369646F69726570, 0xEE0072656D697420);
  }

  else
  {
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v4 = sub_100049FCC();
    sub_100008F90(v4, qword_100068348);
    v3 = sub_100049FAC();
    v5 = sub_10004AB7C();
    if (os_log_type_enabled(v3, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, v5, "Periodic timer fired - self does not exist so the update will be skipped", v6, 2u);
    }
  }
}

void sub_100045FCC(void *a1)
{
  v2 = v1;
  v4 = sub_100049E9C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_activeRequestLocation;
  if (!*(v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_activeRequestLocation))
  {
    goto LABEL_4;
  }

  [a1 coordinate];
  sub_100049EBC();
  v12 = *(v2 + v11);
  if (!v12)
  {
    __break(1u);
    return;
  }

  v37.super.isa = v12;
  isa = v37.super.isa;
  v14 = sub_100049E5C(v37, 0.001);

  v15 = *(v5 + 8);
  v15(v10, v4);
  if (!v14)
  {
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v25 = sub_100049FCC();
    sub_100008F90(v25, qword_100068348);
    v26 = a1;
    v27 = sub_100049FAC();
    v28 = sub_10004AB9C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36 = v30;
      *v29 = 141558275;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2081;
      [v26 coordinate];
      sub_100049EBC();
      v31 = sub_100049E4C();
      v33 = v32;
      v15(v8, v4);
      v34 = sub_1000230EC(v31, v33, &v36);

      *(v29 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Update will be skipped because there is already a running request for the location=%{private,mask.hash}s", v29, 0x16u);
      sub_100008FC8(v30);
    }
  }

  else
  {
LABEL_4:
    v16 = v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_sessionExtenderDelegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    LOBYTE(v16) = sub_10001BBB4(Strong, *(v16 + 8));
    swift_unknownObjectRelease();
    if (v16)
    {
      v18 = *(v2 + v11);
      *(v2 + v11) = a1;

      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = a1;

      sub_100005A7C(v20, sub_100047674, v19);
    }

    else
    {
      if (qword_100063488 != -1)
      {
        swift_once();
      }

      v21 = sub_100049FCC();
      sub_100008F90(v21, qword_100068348);
      v22 = sub_100049FAC();
      v23 = sub_10004AB9C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Update will be skipped because an extended session was not granted", v24, 2u);
      }
    }
  }
}

void sub_1000463F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_activeRequestLocation);
    *(Strong + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_activeRequestLocation) = 0;

    v6 = &v4[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_sessionExtenderDelegate];
    v7 = swift_unknownObjectWeakLoadStrong();
    v8 = *(v6 + 1);

    sub_10001BD48(v7, v8);

    swift_unknownObjectRelease();
    sub_1000464C0(a1);
  }
}

uint64_t sub_1000464C0(uint64_t a1)
{
  v124 = sub_100049E9C();
  v120 = *(v124 - 8);
  __chkstk_darwin(v124);
  v117 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100049B7C();
  v118 = *(v4 - 8);
  v119 = v4;
  __chkstk_darwin(v4);
  v116 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D54(&unk_100065230, &qword_10004D7F8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v114 - v10;
  v125 = type metadata accessor for PosterDataModel(0);
  v12 = __chkstk_darwin(v125);
  v123 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v122 = (&v114 - v15);
  v16 = __chkstk_darwin(v14);
  v121 = &v114 - v17;
  __chkstk_darwin(v16);
  v126 = (&v114 - v18);
  v19 = type metadata accessor for PosterData(0);
  v20 = __chkstk_darwin(v19);
  v115 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v114 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v114 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v114 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v114 - v32;
  __chkstk_darwin(v31);
  v35 = &v114 - v34;
  sub_1000476D4(a1, &v114 - v34, type metadata accessor for PosterData);
  v36 = v1;
  v37 = *(v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkStatus);
  if (v37 == 2)
  {
    goto LABEL_16;
  }

  if (v37)
  {
  }

  else
  {
    v38 = sub_10004AF3C();

    if ((v38 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  sub_10001A674(v33);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_6:
    sub_10004767C(v33, type metadata accessor for PosterData);
    goto LABEL_16;
  }

  if (*v33 != 1)
  {
    goto LABEL_16;
  }

  sub_1000476D4(v35, v30, type metadata accessor for PosterData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v30;
    goto LABEL_6;
  }

  if (*v30 == 3)
  {
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v39 = sub_100049FCC();
    sub_100008F90(v39, qword_100068348);
    v40 = sub_100049FAC();
    v41 = sub_10004AB9C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Skipping update to weatherRequestFailed error as network is already known to be offline", v42, 2u);
    }

    return sub_10004767C(v35, type metadata accessor for PosterData);
  }

LABEL_16:
  sub_1000476D4(v35, v27, type metadata accessor for PosterData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = type metadata accessor for PosterData;
    v44 = v27;
LABEL_18:
    sub_10004767C(v44, v43);
    goto LABEL_26;
  }

  v45 = "allery";
  switch(*v27)
  {
    case 1:
    case 2:
      v114 = *v27;
      goto LABEL_25;
    case 3:
      v45 = "ized";
      break;
    default:
      break;
  }

  if (0x800000010004E770 == (v45 | 0x8000000000000000))
  {

LABEL_26:
    sub_10001AD40(v35);
    v47 = v36 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_posterDataDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v48 = *(v47 + 8);
      ObjectType = swift_getObjectType();
      (*(v48 + 8))(v35, ObjectType, v48);
      swift_unknownObjectRelease();
    }

    return sub_10004767C(v35, type metadata accessor for PosterData);
  }

  v114 = *v27;
LABEL_25:
  v46 = sub_10004AF3C();

  if (v46)
  {
    goto LABEL_26;
  }

  sub_10001A674(v24);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v43 = type metadata accessor for PosterData;
    v44 = v24;
    goto LABEL_18;
  }

  v51 = v126;
  sub_100047734(v24, v126, type metadata accessor for PosterDataModel);
  v52 = *(v51 + v125[10]);
  v53 = *(v52 + 16);
  if (v53)
  {
    v54 = v53 - 1;
    v55 = type metadata accessor for PosterDataModel.DataPoint(0);
    sub_1000476D4(v52 + ((*(*(v55 - 8) + 80) + 32) & ~*(*(v55 - 8) + 80)) + *(*(v55 - 8) + 72) * v54, v11, type metadata accessor for PosterDataModel.DataPoint);
    v56 = v11;
    v57 = 0;
    v58 = v55;
  }

  else
  {
    v58 = type metadata accessor for PosterDataModel.DataPoint(0);
    v56 = v11;
    v57 = 1;
  }

  sub_100004544(v56, v57, 1, v58);
  v59 = sub_100027520(900.0);
  sub_10000591C(v11, &unk_100065230, &qword_10004D7F8);
  if (v59)
  {
    v60 = *(v52 + 16);
    v61 = type metadata accessor for PosterDataModel.DataPoint(0);
    v62 = v61;
    if (v60)
    {
      sub_1000476D4(v52 + ((*(*(v61 - 8) + 80) + 32) & ~*(*(v61 - 8) + 80)), v9, type metadata accessor for PosterDataModel.DataPoint);
      v63 = 0;
    }

    else
    {
      v63 = 1;
    }

    sub_100004544(v9, v63, 1, v62);
    v72 = sub_100027520(86400.0);
    sub_10000591C(v9, &unk_100065230, &qword_10004D7F8);
    if ((v72 & 1) == 0)
    {
      if (qword_100063488 != -1)
      {
        swift_once();
      }

      v81 = sub_100049FCC();
      sub_100008F90(v81, qword_100068348);
      v82 = v122;
      sub_1000476D4(v126, v122, type metadata accessor for PosterDataModel);
      v83 = sub_100049FAC();
      v84 = sub_10004AB9C();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = 0x800000010004E770;
        v86 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        *v86 = 136446466;
        v87 = 0xD000000000000014;
        switch(v114)
        {
          case 1:
            v87 = 0x4F6B726F7774656ELL;
            v85 = 0xEE00656E696C6666;
            break;
          case 2:
            v85 = 0xE600000000000000;
            v87 = 0x617461446F6ELL;
            break;
          case 3:
            v85 = 0x800000010004E7A0;
            break;
          default:
            break;
        }

        v100 = sub_1000230EC(v87, v85, &v127);

        *(v86 + 4) = v100;
        *(v86 + 12) = 2082;
        v101 = v122;
        v102 = sub_10002A190();
        v104 = v103;
        sub_10004767C(v101, type metadata accessor for PosterDataModel);
        v105 = sub_1000230EC(v102, v104, &v127);

        *(v86 + 14) = v105;
        _os_log_impl(&_mh_execute_header, v83, v84, "Poster data changed to a transient error, but cached data is updatable - will update to show new time of day; error=%{public}s, currentData=%{public}s", v86, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10004767C(v82, type metadata accessor for PosterDataModel);
      }

      v106 = v116;
      sub_100049B6C();
      v107 = v126;
      v123 = sub_100027150(v126, v106);
      sub_10004A64C();
      swift_allocObject();
      sub_10004A63C();
      v108 = v125;
      v109 = v125[6];
      v114 = v125[5];
      v120 = *(v120 + 16);
      (v120)(v117, v107 + v114, v124);
      sub_10004AC9C();
      v110 = v115;
      sub_10004A62C();

      (*(v118 + 8))(v106, v119);
      v122 = type metadata accessor for PosterData;
      sub_10004767C(v35, type metadata accessor for PosterData);
      v111 = v107[1];
      v121 = *v107;
      (v120)(&v110[v108[5]], v107 + v114, v124);
      v112 = v108[6];
      v113 = sub_100049C2C();
      (*(*(v113 - 8) + 16))(&v110[v112], v107 + v109, v113);
      sub_1000318D8(v107 + v108[7], &v110[v108[7]]);
      sub_1000318D8(v107 + v108[8], &v110[v108[8]]);

      sub_10004767C(v107, type metadata accessor for PosterDataModel);
      *v110 = v121;
      *(v110 + 1) = v111;
      *&v110[v108[10]] = v123;
      swift_storeEnumTagMultiPayload();
      sub_100047734(v110, v35, v122);
      goto LABEL_26;
    }

    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v73 = sub_100049FCC();
    sub_100008F90(v73, qword_100068348);
    v74 = v126;
    v75 = v121;
    sub_1000476D4(v126, v121, type metadata accessor for PosterDataModel);
    v76 = sub_100049FAC();
    v77 = sub_10004AB9C();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = 0x800000010004E770;
      v79 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *v79 = 136446466;
      v80 = 0xD000000000000014;
      switch(v114)
      {
        case 1:
          v80 = 0x4F6B726F7774656ELL;
          v78 = 0xEE00656E696C6666;
          break;
        case 2:
          v78 = 0xE600000000000000;
          v80 = 0x617461446F6ELL;
          break;
        case 3:
          v78 = 0x800000010004E7A0;
          break;
        default:
          break;
      }

      v94 = sub_1000230EC(v80, v78, &v127);

      *(v79 + 4) = v94;
      *(v79 + 12) = 2082;
      v95 = v121;
      v96 = sub_10002A190();
      v98 = v97;
      sub_10004767C(v95, type metadata accessor for PosterDataModel);
      v99 = sub_1000230EC(v96, v98, &v127);

      *(v79 + 14) = v99;
      _os_log_impl(&_mh_execute_header, v76, v77, "Poster data changed to a transient error, and cached data is no longer usable - will update to show error; error=%{public}s, currentData=%{public}s", v79, 0x16u);
      swift_arrayDestroy();

      v44 = v126;
      v43 = type metadata accessor for PosterDataModel;
    }

    else
    {

      sub_10004767C(v75, type metadata accessor for PosterDataModel);
      v44 = v74;
      v43 = type metadata accessor for PosterDataModel;
    }

    goto LABEL_18;
  }

  v64 = 0x800000010004E770;
  if (qword_100063488 != -1)
  {
    swift_once();
  }

  v65 = sub_100049FCC();
  sub_100008F90(v65, qword_100068348);
  v66 = v126;
  v67 = v123;
  sub_1000476D4(v126, v123, type metadata accessor for PosterDataModel);
  v68 = sub_100049FAC();
  v69 = sub_10004AB9C();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    *v70 = 136446466;
    v71 = 0xD000000000000014;
    switch(v114)
    {
      case 1:
        v71 = 0x4F6B726F7774656ELL;
        v64 = 0xEE00656E696C6666;
        break;
      case 2:
        v64 = 0xE600000000000000;
        v71 = 0x617461446F6ELL;
        break;
      case 3:
        v64 = 0x800000010004E7A0;
        break;
      default:
        break;
    }

    v88 = sub_1000230EC(v71, v64, &v127);

    *(v70 + 4) = v88;
    *(v70 + 12) = 2082;
    v89 = sub_10002A190();
    v90 = v67;
    v92 = v91;
    sub_10004767C(v90, type metadata accessor for PosterDataModel);
    v93 = sub_1000230EC(v89, v92, &v127);

    *(v70 + 14) = v93;
    _os_log_impl(&_mh_execute_header, v68, v69, "Poster data changed to a transient error, but cached data is recent - will continue to show existing data; error=%{public}s, currentData=%{public}s", v70, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10004767C(v67, type metadata accessor for PosterDataModel);
  }

  sub_10004767C(v66, type metadata accessor for PosterDataModel);
  return sub_10004767C(v35, type metadata accessor for PosterData);
}

uint64_t sub_10004763C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004767C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100005A24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000476D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100005A24();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100047734(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100005A24();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_100047794()
{
  result = qword_100065240;
  if (!qword_100065240)
  {
    type metadata accessor for Code(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065240);
  }

  return result;
}

unint64_t sub_1000477EC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

id sub_100047810(unint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  sub_1000477EC(a1, (a2 & 0xC000000000000001) == 0, a2);
  if (v4)
  {
    return sub_10004AD7C();
  }

  else
  {
    return *(a2 + 8 * a1 + 32);
  }
}

void *sub_100047874(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

id sub_1000478CC@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_100047810(*a1, *a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

double sub_100047930(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100047968()
{
}

BOOL sub_100047984(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_1000479A0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_1000479C0(uint64_t a1, double a2)
{
  *(v2 + 24) = 0;
  v4 = *(v2 + 16);
  if (v4)
  {
    [v4 invalidate];
  }

  v5 = objc_opt_self();
  sub_100013FBC();
  v6 = swift_allocObject();
  swift_weakInit();
  sub_100013FBC();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v12[4] = sub_100048110;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100011A98;
  v12[3] = &unk_10005F768;
  v9 = _Block_copy(v12);

  v10 = [v5 scheduledTimerWithTimeInterval:0 repeats:v9 block:a2];
  _Block_release(v9);
  v11 = *(v2 + 16);
  *(v2 + 16) = v10;
}

void sub_100047B2C()
{
  *(v0 + 24) = 0;
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 invalidate];
    v1 = *(v0 + 16);
  }

  *(v0 + 16) = 0;
}

double sub_100047B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + 16);
    if (v6)
    {
      [v6 invalidate];
      v7 = *(v5 + 16);
    }

    else
    {
      v7 = 0;
    }

    *(v5 + 16) = 0;

    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = sub_10004A0EC();
      if (v10)
      {
        v11 = v10;
        v12 = swift_allocObject();
        swift_weakInit();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = v9;

        v14 = v9;
        sub_10004A04C();
      }

      else
      {
      }
    }
  }

  return result;
}

void *sub_100047CC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100049B7C();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004A67C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004A58C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    result = sub_10004A0EC();
    if (result)
    {
      v18[1] = a2;

      (*(v11 + 104))(v13, enum case for BoundEntity.lightning(_:), v10);
      v18[0] = sub_10004A57C();
      (*(v11 + 8))(v13, v10);
      (*(v7 + 104))(v9, enum case for BoundPropertyName.lightningRespawnSeed(_:), v6);
      sub_10004A66C();
      (*(v7 + 8))(v9, v6);
      sub_100049B6C();
      sub_100049AAC();
      v16 = v15;
      v17 = v15;
      result = (*(v19 + 8))(v5, v3);
      if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v16 > -9.22337204e18)
      {
        if (v16 < 9.22337204e18)
        {
          v20[3] = &type metadata for Int;
          v20[0] = v16;
          sub_10004A0DC();

          return sub_100008FC8(v20);
        }

LABEL_10:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_10004800C()
{

  return _swift_deallocClassInstance(v0, 25, 7);
}

uint64_t sub_100048068()
{
  swift_weakDestroy();
  sub_100013FBC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10004809C()
{
  swift_unknownObjectWeakDestroy();
  sub_100013FBC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000480D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100048118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100048130()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100048294(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100049FCC();
  sub_10002D6B8(v5, a2);
  sub_100008F90(v5, a2);
  return sub_100049FBC();
}

uint64_t sub_10004830C()
{
  v0 = sub_100049FCC();
  sub_10002D6B8(v0, qword_1000683D8);
  sub_100008F90(v0, qword_1000683D8);
  return sub_100049FBC();
}

id WeatherIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WeatherIntent();
  return objc_msgSendSuper2(&v3, "init");
}

id WeatherIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for WeatherIntent();
  v9 = sub_100048F58(v13, "initWithCoder:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WeatherIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_10004A95C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id WeatherIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_10004A95C();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for WeatherIntent();
  v12 = sub_100048F58(v16, "initWithIdentifier:backingStore:", v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id WeatherIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_100048F64(a1, a2);

  v5 = sub_10004A95C();

  if (v3)
  {
    v6.super.isa = sub_10004A8EC().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6.super.isa];

  return v7;
}

id WeatherIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_100048F64(a1, a2);

  v5 = sub_10004A95C();

  if (v3)
  {
    v6.super.isa = sub_10004A8EC().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for WeatherIntent();
  v7 = objc_msgSendSuper2(&v9, "initWithDomain:verb:parametersByName:", v4, v5, v6.super.isa);

  return v7;
}

unint64_t WeatherIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100048848@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = WeatherIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t WeatherIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___WeatherIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100048918(uint64_t a1)
{
  v3 = OBJC_IVAR___WeatherIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *WeatherIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___WeatherIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id WeatherIntentResponse.init()()
{
  *&v0[OBJC_IVAR___WeatherIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id WeatherLocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id WeatherIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___WeatherIntentResponse_code) = 0;
  v13 = type metadata accessor for WeatherIntentResponse();
  v9 = sub_100048F58(v13, "initWithCoder:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WeatherIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id WeatherIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___WeatherIntentResponse_code) = 0;
  v13 = type metadata accessor for WeatherIntentResponse();
  v9 = sub_100048F58(v13, "initWithBackingStore:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WeatherIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_10004A8EC().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName:v2.super.isa];

  return v3;
}

id WeatherIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___WeatherIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_10004A8EC().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for WeatherIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_100048E5C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100048E98()
{
  result = qword_100065318;
  if (!qword_100065318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065318);
  }

  return result;
}

uint64_t sub_100048EEC@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherIntentResponse.code.getter();
  *a1 = result;
  return result;
}

NSString sub_100048F64(uint64_t a1, uint64_t a2)
{

  return sub_10004A95C();
}

id WeatherLocation.__allocating_init(identifier:display:pronunciationHint:)()
{
  sub_1000498C8();
  if (v2)
  {
    v3 = sub_10004A95C();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_10004A95C();

  if (v1)
  {
    v5 = sub_10004A95C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id WeatherLocation.init(identifier:display:pronunciationHint:)()
{
  sub_1000498C8();
  if (v2)
  {
    v3 = sub_10004A95C();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_10004A95C();

  if (v1)
  {
    v5 = sub_10004A95C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for WeatherLocation();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:displayString:pronunciationHint:", v3, v4, v5);

  return v6;
}

id WeatherLocation.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WeatherLocation();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id static WeatherLocationResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___WeatherLocationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "successWithResolvedObject:", a1);

  return v2;
}

id static WeatherLocationResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_10004943C();

    sub_10004AE4C();
  }

  else
  {

    sub_10004AF5C();
    sub_10004943C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_10004943C();
  isa = sub_10004AA4C().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___WeatherLocationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", isa);

  return v3;
}

unint64_t sub_10004943C()
{
  result = qword_100065398;
  if (!qword_100065398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100065398);
  }

  return result;
}

id static WeatherLocationResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___WeatherLocationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "confirmationRequiredWithObjectToConfirm:", a1);

  return v2;
}

id WeatherLocationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_10004A8EC().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id WeatherLocationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_10004A8EC().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for WeatherLocationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_100049868(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000498A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_10004AE3C();
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  v4 = _CGPointApplyAffineTransform(point, t);
  y = v4.y;
  x = v4.x;
  result.y = y;
  result.x = x;
  return result;
}