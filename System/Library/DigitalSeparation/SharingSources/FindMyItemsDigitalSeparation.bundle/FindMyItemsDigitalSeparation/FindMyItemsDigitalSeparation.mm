uint64_t sub_1508()
{
  v1 = [v0 destination];
  if (!v1)
  {
    sub_115E4();
    v1 = sub_115B4();
  }

  v2 = [objc_opt_self() isStringEmailAddress:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = [v0 destination];
  v4 = sub_115E4();

  return v4;
}

id sub_15E0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_115B4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1660()
{
  v1 = [v0 destination];
  if (!v1)
  {
    sub_115E4();
    v1 = sub_115B4();
  }

  v2 = [objc_opt_self() isStringEmailAddress:v1];

  if (v2)
  {
    return 0;
  }

  v4 = [v0 destination];
  v5 = sub_115E4();

  return v5;
}

id sub_17B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DSHandle();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1830(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1884(uint64_t a1, id *a2)
{
  result = sub_115C4();
  *a2 = 0;
  return result;
}

uint64_t sub_18FC(uint64_t a1, id *a2)
{
  v3 = sub_115D4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_197C@<X0>(uint64_t *a1@<X8>)
{
  sub_115E4();
  v2 = sub_115B4();

  *a1 = v2;
  return result;
}

uint64_t sub_19C0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_115B4();

  *a2 = v3;
  return result;
}

uint64_t sub_1A08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_115E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A34(uint64_t a1)
{
  v2 = sub_1B34(&qword_1ED98, &unk_13E4C);
  v3 = sub_1B34(&unk_1EDA0, &unk_13DF4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1B34(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DSSourceName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B78()
{
  sub_115E4();
  v0 = sub_11624();

  return v0;
}

uint64_t sub_1BB4(uint64_t a1)
{
  sub_115E4();
  sub_11604();
}

Swift::Int sub_1C08(uint64_t a1)
{
  sub_115E4();
  sub_11884();
  sub_11604();
  v1 = sub_11894();

  return v1;
}

uint64_t sub_1C7C(void *a1, uint64_t *a2)
{
  v2 = sub_115E4();
  v4 = v3;
  if (v2 == sub_115E4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_11854();
  }

  return v7 & 1;
}

uint64_t sub_1D4C()
{
  v0 = sub_11584();
  sub_F824(v0, qword_1EE10);
  v1 = sub_F488(v0, qword_1EE10);
  if (qword_1EBB8 != -1)
  {
    swift_once();
  }

  v2 = sub_F488(v0, qword_1F380);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1E24()
{
  v1 = DSSourceNameItemSharing;
  *&v0[OBJC_IVAR____TtC28FindMyItemsDigitalSeparation34FindMyItemsDigitalSeparationSource_name] = DSSourceNameItemSharing;
  v2 = OBJC_IVAR____TtC28FindMyItemsDigitalSeparation34FindMyItemsDigitalSeparationSource_beaconSharingSession;
  v3 = objc_allocWithZone(SPOwnerInterface);
  v4 = v1;
  v5 = [v3 init];
  v6 = [v5 beaconSharingSession];

  *&v0[v2] = v6;
  v7 = OBJC_IVAR____TtC28FindMyItemsDigitalSeparation34FindMyItemsDigitalSeparationSource_ownerSession;
  v8 = [objc_allocWithZone(SPOwnerInterface) init];
  v9 = [v8 ownerSession];

  *&v0[v7] = v9;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for FindMyItemsDigitalSeparationSource();
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_1F34(uint64_t (*a1)(void *, void), uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_F3B8(&qword_1EF38, &qword_14018);
  __chkstk_darwin(v7 - 8);
  v9 = &v17[-1] - v8;
  v10 = sub_11514();
  v17[3] = v10;
  v17[4] = sub_F8CC(&qword_1EF40, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v11 = sub_F914(v17);
  (*(*(v10 - 8) + 104))(v11, enum case for Feature.FindMy.itemSharing(_:), v10);
  LOBYTE(v10) = sub_11504();
  sub_F978(v17);
  if ((v10 & 1) == 0)
  {
    return a1(&_swiftEmptyArrayStorage, 0);
  }

  v12 = sub_11694();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v3;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = ObjectType;
  v14 = v3;

  sub_4950(0, 0, v9, &unk_14030, v13);
}

uint64_t sub_2120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[46] = a5;
  v6[47] = a6;
  v6[45] = a4;
  v7 = sub_11554();
  v6[48] = v7;
  v6[49] = *(v7 - 8);
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  sub_F3B8(&qword_1EF48, &qword_14050);
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();

  return _swift_task_switch(sub_22B4, 0, 0);
}

uint64_t sub_22B4()
{
  v13 = v0;
  v0[37] = &_swiftEmptyArrayStorage;
  if (qword_1EBB0 != -1)
  {
    swift_once();
  }

  v1 = sub_11584();
  v0[61] = sub_F488(v1, qword_1EE10);
  v2 = sub_11564();
  v3 = sub_116F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_B480(0xD000000000000021, 0x8000000000012A60, &v12);
    _os_log_impl(&dword_0, v2, v3, "%s Attempting to fetch shared resources", v4, 0xCu);
    sub_F978(v5);
  }

  v6 = v0[45];
  v7 = swift_allocObject();
  v0[62] = v7;
  *(v7 + 16) = v6;
  v8 = v6;
  v9 = swift_task_alloc();
  v0[63] = v9;
  v10 = sub_F3B8(&qword_1EF50, &qword_14068);
  *v9 = v0;
  v9[1] = sub_2510;

  return withTimeout<A>(_:block:)(v0 + 38, 0x40AAD21B3B700000, 3, &unk_14060, v7, v10);
}

uint64_t sub_2510()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_4220;
  }

  else
  {

    v2 = sub_2660;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_2660()
{
  v261 = v0;
  v252 = (v0 + 216);
  v1 = *(v0 + 304);
  v259 = &_swiftEmptyDictionarySingleton;
  v235 = v1;
  if ((v1 & 0xC000000000000001) != 0)
  {

    sub_11744();
    sub_C794();
    sub_F8CC(&qword_1EED0, sub_C794, &protocol conformance descriptor for NSObject);
    sub_116D4();
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v3 = (v1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 56);

    v5 = 0;
  }

  v10 = *(v0 + 392);
  v251 = v4;
  v11 = (v4 + 64) >> 6;
  v12 = (v10 + 8);
  v246 = v10;
  v257 = (v10 + 16);
  v238 = xmmword_13F20;
  v253 = (v10 + 8);
  v255 = v3;
  v256 = v2;
  while ((v2 & 0x8000000000000000) == 0)
  {
    v13 = v5;
    v14 = v6;
    v15 = v5;
    if (!v6)
    {
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v15 >= v11)
        {
          goto LABEL_36;
        }

        v14 = *(v3 + v15);
        ++v13;
        if (v14)
        {
          goto LABEL_16;
        }
      }

LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:

      swift_bridgeObjectRelease_n();
    }

LABEL_16:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v2 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_36;
    }

LABEL_20:
    v258 = v16;
    v19 = [v17 beaconIdentifier];
    sub_11544();

    v20 = v259;
    if (!v259[2])
    {
      v21 = *v12;
LABEL_26:
      v31 = *(v0 + 448);
      v21(*(v0 + 464), *(v0 + 384));
      v32 = [v17 beaconIdentifier];
      sub_11544();

      sub_F3B8(&qword_1EF60, &qword_14078);
      inited = swift_initStackObject();
      *(inited + 16) = v238;
      *(inited + 32) = v17;
      v34 = v17;
      sub_EBF0(inited);
      v36 = v35;
      swift_setDeallocating();
      swift_arrayDestroy();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v260[0] = v20;
      v38 = sub_BA28(v31);
      v40 = v20[2];
      v41 = (v39 & 1) == 0;
      v42 = __OFADD__(v40, v41);
      v43 = v40 + v41;
      if (v42)
      {
        goto LABEL_153;
      }

      v44 = v39;
      if (v20[3] >= v43)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v52 = v38;
          sub_D54C();
          v38 = v52;
          v20 = v260[0];
          v12 = v253;
          if ((v44 & 1) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_8;
        }
      }

      else
      {
        v45 = *(v0 + 448);
        sub_CBD8(v43, isUniquelyReferenced_nonNull_native);
        v20 = v260[0];
        v38 = sub_BA28(v45);
        if ((v44 & 1) != (v46 & 1))
        {
          goto LABEL_148;
        }
      }

      v12 = v253;
      if ((v44 & 1) == 0)
      {
LABEL_32:
        v47 = *(v0 + 448);
        v48 = *(v0 + 384);
        v20[(v38 >> 6) + 8] |= 1 << v38;
        v49 = v38;
        (*(v246 + 16))(v20[6] + *(v246 + 72) * v38, v47, v48);
        *(v20[7] + 8 * v49) = v36;
        v50 = v20[2];
        v42 = __OFADD__(v50, 1);
        v51 = v50 + 1;
        if (v42)
        {
          goto LABEL_154;
        }

        v20[2] = v51;
        goto LABEL_9;
      }

LABEL_8:
      *(v20[7] + 8 * v38) = v36;

LABEL_9:
      v21(*(v0 + 448), *(v0 + 384));

      v259 = v20;
      v5 = v15;
      v6 = v258;
      goto LABEL_10;
    }

    sub_BA28(*(v0 + 464));
    v21 = *v12;
    if ((v22 & 1) == 0)
    {
      goto LABEL_26;
    }

    v23 = v12;
    v24 = *(v0 + 464);
    v25 = *(v0 + 384);

    v21(v24, v25);

    v26 = [v17 beaconIdentifier];
    sub_11544();

    v27 = sub_47A4(v252);
    v29 = *v28;
    v30 = *(v0 + 456);
    v254 = *(v0 + 384);
    if (v29)
    {
      v17 = v17;
      sub_BC94(v260, v17);
    }

    (v27)(v252, 0);

    v21(v30, v254);
    v5 = v15;
    v6 = v258;
    v12 = v23;
LABEL_10:
    v3 = v255;
    v2 = v256;
  }

  v18 = sub_11774();
  if (v18)
  {
    *(v0 + 352) = v18;
    sub_C794();
    swift_dynamicCast();
    v17 = *(v0 + 344);
    v15 = v5;
    v16 = v6;
    if (v17)
    {
      goto LABEL_20;
    }
  }

LABEL_36:
  v53 = *(v0 + 392);
  sub_C7E0(v256);
  v54 = v259[8];
  v248 = (v259 + 8);
  v55 = -1 << *(v259 + 32);
  if (-v55 < 64)
  {
    v56 = ~(-1 << -v55);
  }

  else
  {
    v56 = -1;
  }

  v252 = (v56 & v54);
  v239 = (63 - v55) >> 6;
  v250 = (v53 + 32);
  v241 = "stopSharing(withParticipant:)";
  v247 = enum case for Feature.FindMy.cowardlyCarrot(_:);
  v234 = *(v0 + 512);
  v245 = v259;

  v57 = 0;
  v244 = &_swiftEmptyArrayStorage;
  *&v58 = 136315650;
  v240 = v58;
  *&v58 = 141558275;
  v236 = v58;
  *&v58 = 134218499;
  v237 = v58;
  while (2)
  {
    v60 = v252;
    if (v252)
    {
      v251 = v57;
      v61 = v57;
      goto LABEL_52;
    }

    if (v239 <= v57 + 1)
    {
      v62 = v57 + 1;
    }

    else
    {
      v62 = v239;
    }

    v63 = v62 - 1;
    do
    {
      v61 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        __break(1u);
        goto LABEL_152;
      }

      if (v61 >= v239)
      {
        v141 = *(v0 + 472);
        v142 = sub_F3B8(&qword_1EF58, &qword_14070);
        (*(*(v142 - 8) + 56))(v141, 1, 1, v142);
        v251 = v63;
        v252 = 0;
        goto LABEL_53;
      }

      v60 = *&v248[8 * v61];
      ++v57;
    }

    while (!v60);
    v251 = v61;
LABEL_52:
    v64 = *(v0 + 472);
    v65 = *(v0 + 440);
    v66 = *(v0 + 384);
    v252 = ((v60 - 1) & v60);
    v67 = __clz(__rbit64(v60)) | (v61 << 6);
    v68 = v245;
    (*(v246 + 16))(v65, v245[6] + *(v246 + 72) * v67, v66);
    v69 = *(v68[7] + 8 * v67);
    v70 = sub_F3B8(&qword_1EF58, &qword_14070);
    v71 = *(v70 + 48);
    (*v250)(v64, v65, v66);
    *(v64 + v71) = v69;
    (*(*(v70 - 8) + 56))(v64, 0, 1, v70);

LABEL_53:
    v72 = *(v0 + 480);
    sub_FD78(*(v0 + 472), v72);
    v73 = sub_F3B8(&qword_1EF58, &qword_14070);
    if ((*(*(v73 - 8) + 48))(v72, 1, v73) == 1)
    {
      v230 = *(v0 + 368);

      v230(v244, 0);

      v258 = *(v0 + 400);

      v231 = *(v0 + 8);

      return v231();
    }

    v75 = *(v0 + 424);
    v74 = *(v0 + 432);
    v76 = *(v0 + 384);
    v77 = *(*(v0 + 480) + *(v73 + 48));
    (*v250)(v74);
    v78 = v75;
    v79 = v77;
    v254 = *v257;
    v254(v78, v74, v76);

    v80 = sub_11564();
    v81 = sub_116F4();

    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v0 + 424);
    v84 = *(v0 + 384);
    v258 = v77;
    if (v82)
    {
      v85 = swift_slowAlloc();
      v260[0] = swift_slowAlloc();
      *v85 = v240;
      *(v85 + 4) = sub_B480(0xD000000000000021, v241 | 0x8000000000000000, v260);
      *(v85 + 12) = 2080;
      sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v86 = sub_11844();
      v87 = v12;
      v89 = v88;
      v255 = *v87;
      v255(v83, v84);
      v90 = sub_B480(v86, v89, v260);

      *(v85 + 14) = v90;
      *(v85 + 22) = 2080;
      sub_C794();
      sub_F8CC(&qword_1EED0, sub_C794, &protocol conformance descriptor for NSObject);
      v91 = sub_116B4();
      v93 = sub_B480(v91, v92, v260);

      *(v85 + 24) = v93;
      _os_log_impl(&dword_0, v80, v81, "%s beacon identifier: %s with shares: %s", v85, 0x20u);
      swift_arrayDestroy();

      v79 = v258;
    }

    else
    {

      v255 = *v12;
      v255(v83, v84);
    }

    v256 = v79 & 0xC000000000000001;
    v94 = &_swiftEmptySetSingleton;
    if ((v79 & 0xC000000000000001) == 0)
    {
      v119 = *(v79 + 32);
      v120 = v119 & 0x3F;
      v121 = ((1 << v119) + 63) >> 6;
      v122 = 8 * v121;

      if (v120 > 0xD)
      {

        if (!swift_stdlib_isStackAllocationSafe())
        {
          v227 = swift_slowAlloc();

          v228 = v234;
          v229 = sub_C954(v227, v121, v79, sub_103B0);
          if (v228)
          {
            goto LABEL_157;
          }

          v94 = v229;
          v233[1] = 0;
          swift_bridgeObjectRelease_n();

          v234 = 0;
          v112 = v94 & 0xC000000000000001;
          if ((v94 & 0xC000000000000001) == 0)
          {
            goto LABEL_98;
          }

          goto LABEL_77;
        }
      }

      v242 = v233;
      v243 = v121;
      __chkstk_darwin(v123);
      v124 = v233 - ((v122 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v124, v122);
      v249 = 0;
      v125 = 0;
      v126 = v79 + 56;
      v127 = 1 << *(v79 + 32);
      if (v127 < 64)
      {
        v128 = ~(-1 << v127);
      }

      else
      {
        v128 = -1;
      }

      v129 = v128 & *(v79 + 56);
      v130 = (v127 + 63) >> 6;
      while (v129)
      {
        v131 = __clz(__rbit64(v129));
        v129 &= v129 - 1;
        v132 = v131 | (v125 << 6);
        v79 = v258;
LABEL_93:
        v135 = *(*(v79 + 48) + 8 * v132);
        v136 = [v135 sharee];
        v137 = [v136 type];

        if (v137 != &dword_0 + 2)
        {
          *&v124[(v132 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v132;
          v42 = __OFADD__(v249++, 1);
          if (v42)
          {
            goto LABEL_156;
          }
        }
      }

      v133 = v125;
      v79 = v258;
      while (1)
      {
        v125 = v133 + 1;
        if (__OFADD__(v133, 1))
        {
          goto LABEL_146;
        }

        if (v125 >= v130)
        {
          break;
        }

        v134 = *(v126 + 8 * v125);
        ++v133;
        if (v134)
        {
          v129 = (v134 - 1) & v134;
          v132 = __clz(__rbit64(v134)) | (v125 << 6);
          goto LABEL_93;
        }
      }

      v94 = sub_C9E4(v124, v243, v249, v258);
      v112 = v94 & 0xC000000000000001;
      if ((v94 & 0xC000000000000001) == 0)
      {
        goto LABEL_98;
      }

LABEL_77:
      if (sub_11754())
      {
LABEL_78:
        v254(*(v0 + 416), *(v0 + 432), *(v0 + 384));

        v113 = sub_11564();
        v114 = sub_116F4();
        v115 = os_log_type_enabled(v113, v114);
        v249 = v253 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v115)
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v260[0] = v117;
          *v116 = v237;
          if (v112)
          {
            v118 = sub_11754();
          }

          else
          {
            v118 = *(v94 + 16);
          }

          v143 = *(v0 + 416);
          v144 = *(v0 + 384);
          *(v116 + 4) = v118;

          *(v116 + 12) = 2160;
          *(v116 + 14) = 1752392040;
          *(v116 + 22) = 2081;
          sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v145 = sub_11844();
          v147 = v146;
          v148 = v144;
          v138 = v255;
          v255(v143, v148);
          v149 = sub_B480(v145, v147, v260);

          *(v116 + 24) = v149;
          _os_log_impl(&dword_0, v113, v114, "Adding privates shares[%ld] for beacon %{private,mask.hash}s", v116, 0x20u);
          sub_F978(v117);
        }

        else
        {
          v139 = *(v0 + 416);
          v140 = *(v0 + 384);

          v138 = v255;
          v255(v139, v140);
        }

        v150 = *(v0 + 440);
        v151 = *(v0 + 384);
        v152 = v254;
        v254(v150, *(v0 + 432), v151);
        v153 = type metadata accessor for DSBeacon(0);
        v154 = objc_allocWithZone(v153);
        v152(&v154[OBJC_IVAR____TtC28FindMyItemsDigitalSeparation8DSBeacon_dsBeaconIdentifier], v150, v151);
        *&v154[OBJC_IVAR____TtC28FindMyItemsDigitalSeparation8DSBeacon_beaconShares] = v94;
        *(v0 + 248) = v154;
        *(v0 + 256) = v153;
        objc_msgSendSuper2((v0 + 248), "init");
        v138(v150, v151);
        sub_11634();
        if (*(&dword_10 + (*(v0 + 296) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 296) & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_11654();
        }

        sub_11664();
        v244 = *(v0 + 296);
        v79 = v258;
        goto LABEL_107;
      }

LABEL_99:

      v138 = v255;
LABEL_107:
      v155 = sub_11514();
      *(v0 + 120) = v155;
      *(v0 + 128) = sub_F8CC(&qword_1EF40, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
      v156 = sub_F914((v0 + 96));
      (*(*(v155 - 8) + 104))(v156, v247, v155);
      LOBYTE(v155) = sub_11504();
      sub_F978((v0 + 96));
      if ((v155 & 1) == 0)
      {
        v59 = v253;
        v138(*(v0 + 432), *(v0 + 384));
        v12 = v59;

        goto LABEL_41;
      }

      if (v256)
      {
        swift_unknownObjectRetain();
        sub_11744();
        sub_C794();
        sub_F8CC(&qword_1EED0, sub_C794, &protocol conformance descriptor for NSObject);
        sub_116D4();
        v157 = *(v0 + 16);
        v158 = *(v0 + 24);
        v159 = *(v0 + 32);
        v160 = *(v0 + 40);
        v161 = *(v0 + 48);
      }

      else
      {
        v162 = -1 << *(v79 + 32);
        v158 = v79 + 56;
        v159 = ~v162;
        v163 = -v162;
        if (v163 < 64)
        {
          v164 = ~(-1 << v163);
        }

        else
        {
          v164 = -1;
        }

        v161 = v164 & *(v79 + 56);

        v160 = 0;
      }

      v249 = v159;
      v165 = (v159 + 64) >> 6;
      v256 = v157;
      if (v157 < 0)
      {
LABEL_115:
        v166 = sub_11774();
        if (v166)
        {
          *(v0 + 320) = v166;
          sub_C794();
          swift_dynamicCast();
          v167 = *(v0 + 312);
          i = v160;
          v169 = v161;
          if (v167)
          {
            goto LABEL_123;
          }
        }

LABEL_127:
        v157 = v256;
LABEL_128:
        v175 = *(v0 + 432);
        v176 = *(v0 + 400);
        v177 = *(v0 + 384);
        sub_C7E0(v157);

        v254(v176, v175, v177);
        v178 = sub_11564();
        v179 = sub_116F4();
        v180 = os_log_type_enabled(v178, v179);
        v181 = *(v0 + 432);
        v182 = *(v0 + 400);
        v183 = *(v0 + 384);
        if (v180)
        {
          v184 = swift_slowAlloc();
          v185 = swift_slowAlloc();
          v260[0] = v185;
          *v184 = v236;
          *(v184 + 4) = 1752392040;
          *(v184 + 12) = 2081;
          sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v186 = sub_11844();
          v258 = v181;
          v187 = v186;
          v189 = v188;
          v190 = v253;
          v255(v182, v183);
          v191 = sub_B480(v187, v189, v260);

          *(v184 + 14) = v191;
          _os_log_impl(&dword_0, v178, v179, "No delegated share for beacon %{private,mask.hash}s", v184, 0x16u);
          sub_F978(v185);

          v12 = v190;

          v255(v258, v183);
        }

        else
        {

          v192 = v182;
          v12 = v253;
          v193 = v255;
          v255(v192, v183);
          v193(v181, v183);
        }

LABEL_41:
        v57 = v251;
        continue;
      }

      while (1)
      {
        v170 = v160;
        v171 = v161;
        for (i = v160; !v171; ++v170)
        {
          i = v170 + 1;
          if (__OFADD__(v170, 1))
          {
            goto LABEL_147;
          }

          if (i >= v165)
          {
            goto LABEL_128;
          }

          v171 = *(v158 + 8 * i);
        }

        v169 = (v171 - 1) & v171;
        v167 = *(*(v157 + 48) + ((i << 9) | (8 * __clz(__rbit64(v171)))));
        if (!v167)
        {
          goto LABEL_127;
        }

LABEL_123:
        v172 = v167;
        v173 = [v172 sharee];
        v174 = [v173 type];

        if (v174 == &dword_0 + 2)
        {
          break;
        }

        v160 = i;
        v161 = v169;
        v157 = v256;
        if (v256 < 0)
        {
          goto LABEL_115;
        }
      }

      v194 = *(v0 + 432);
      v195 = *(v0 + 408);
      v196 = *(v0 + 384);
      sub_C7E0(v256);

      v254(v195, v194, v196);
      v197 = sub_11564();
      v198 = sub_116F4();
      v199 = os_log_type_enabled(v197, v198);
      v200 = *(v0 + 408);
      v201 = *(v0 + 384);
      if (v199)
      {
        v202 = swift_slowAlloc();
        v256 = swift_slowAlloc();
        v260[0] = v256;
        *v202 = v236;
        *(v202 + 4) = 1752392040;
        *(v202 + 12) = 2081;
        sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v203 = sub_11844();
        v205 = v204;
        v206 = v253;
        v258 = v253 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v255(v200, v201);
        v207 = sub_B480(v203, v205, v260);

        *(v202 + 14) = v207;
        _os_log_impl(&dword_0, v197, v198, "Adding delegated share for beacon %{private,mask.hash}s", v202, 0x16u);
        sub_F978(v256);
        v208 = v206;
      }

      else
      {

        v258 = v253 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v208 = v253;
        v255(v200, v201);
      }

      v209 = *(v0 + 440);
      v210 = *(v0 + 384);
      v211 = v254;
      v254(v209, *(v0 + 432), v210);
      sub_F3B8(&qword_1EF60, &qword_14078);
      v212 = swift_initStackObject();
      *(v212 + 16) = v238;
      *(v212 + 32) = v172;
      v213 = v172;
      sub_EBF0(v212);
      v215 = v214;
      swift_setDeallocating();
      swift_arrayDestroy();
      v216 = type metadata accessor for DSBeacon(0);
      v217 = objc_allocWithZone(v216);
      v211(&v217[OBJC_IVAR____TtC28FindMyItemsDigitalSeparation8DSBeacon_dsBeaconIdentifier], v209, v210);
      *&v217[OBJC_IVAR____TtC28FindMyItemsDigitalSeparation8DSBeacon_beaconShares] = v215;
      *(v0 + 264) = v217;
      *(v0 + 272) = v216;
      v218 = objc_msgSendSuper2((v0 + 264), "init");
      v255(v209, v210);
      v219 = type metadata accessor for DSDelegatedBeaconShare();
      v220 = objc_allocWithZone(v219);
      v221 = v213;
      v222 = v218;
      v223 = [v221 sharee];
      v224 = [v223 type];

      if (v224 != &dword_0 + 2)
      {
        goto LABEL_155;
      }

      *&v220[OBJC_IVAR____TtC28FindMyItemsDigitalSeparation22DSDelegatedBeaconShare_beaconShare] = v221;
      *&v220[OBJC_IVAR____TtC28FindMyItemsDigitalSeparation22DSDelegatedBeaconShare_beacon] = v222;
      *(v0 + 280) = v220;
      *(v0 + 288) = v219;
      objc_msgSendSuper2((v0 + 280), "init");
      sub_11634();
      if (*(&dword_10 + (*(v0 + 296) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 296) & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_11654();
      }

      v225 = *(v0 + 432);
      v226 = *(v0 + 384);
      sub_11664();

      v255(v225, v226);
      v244 = *(v0 + 296);
      v57 = v251;
      v12 = v208;
      continue;
    }

    break;
  }

  v260[0] = &_swiftEmptySetSingleton;

  sub_11744();
  v95 = sub_11774();
  if (!v95)
  {
LABEL_76:

    v79 = v258;
    v112 = v94 & 0xC000000000000001;
    if ((v94 & 0xC000000000000001) != 0)
    {
      goto LABEL_77;
    }

LABEL_98:
    if (*(v94 + 16))
    {
      goto LABEL_78;
    }

    goto LABEL_99;
  }

  v96 = v95;
  sub_C794();
  v97 = v96;
LABEL_62:
  *(v0 + 336) = v97;
  swift_dynamicCast();
  v98 = [*(v0 + 328) sharee];
  v99 = [v98 type];

  v100 = *(v0 + 328);
  if (v99 == &dword_0 + 2)
  {

    goto LABEL_61;
  }

  v101 = *(v94 + 16);
  if (*(v94 + 24) <= v101)
  {
    sub_C18C(v101 + 1);
  }

  v94 = v260[0];
  v102 = sub_11704(*(v260[0] + 5));
  v103 = v94 + 56;
  v104 = -1 << *(v94 + 32);
  v105 = v102 & ~v104;
  v106 = v105 >> 6;
  if (((-1 << v105) & ~*(v94 + 56 + 8 * (v105 >> 6))) != 0)
  {
    v107 = __clz(__rbit64((-1 << v105) & ~*(v94 + 56 + 8 * (v105 >> 6)))) | v105 & 0x7FFFFFFFFFFFFFC0;
    goto LABEL_75;
  }

  v108 = 0;
  v109 = (63 - v104) >> 6;
  while (++v106 != v109 || (v108 & 1) == 0)
  {
    v110 = v106 == v109;
    if (v106 == v109)
    {
      v106 = 0;
    }

    v108 |= v110;
    v111 = *(v103 + 8 * v106);
    if (v111 != -1)
    {
      v107 = __clz(__rbit64(~v111)) + (v106 << 6);
LABEL_75:
      *(v103 + ((v107 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v107;
      *(*(v94 + 48) + 8 * v107) = v100;
      ++*(v94 + 16);
LABEL_61:
      v97 = sub_11774();
      if (!v97)
      {
        goto LABEL_76;
      }

      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:

  return sub_11874();
}

uint64_t sub_4220()
{
  v12 = v0;

  swift_errorRetain();
  v1 = sub_11564();
  v2 = sub_116E4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v3 = 136315394;
    *(v3 + 4) = sub_B480(0xD000000000000021, 0x8000000000012A60, &v11);
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&dword_0, v1, v2, "%s error %{public}@", v3, 0x16u);
    sub_FB50(v4, &qword_1EEE8, &qword_13FD8);

    sub_F978(v5);
  }

  v7 = v0[64];
  v8 = v0[46];
  swift_errorRetain();
  v8(&_swiftEmptyArrayStorage, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_44A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_44C4, 0, 0);
}

uint64_t sub_44C4()
{
  v1 = *(v0[20] + OBJC_IVAR____TtC28FindMyItemsDigitalSeparation34FindMyItemsDigitalSeparationSource_beaconSharingSession);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_45EC;
  v2 = swift_continuation_init();
  v0[17] = sub_F3B8(&qword_1EF30, &qword_14010);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_46EC;
  v0[13] = &unk_188D0;
  v0[14] = v2;
  [v1 allSharesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_45EC()
{

  return _swift_task_switch(sub_46CC, 0, 0);
}

uint64_t sub_46EC(uint64_t a1, uint64_t a2)
{
  v2 = *sub_F888((a1 + 32), *(a1 + 56));
  sub_C794();
  sub_F8CC(&qword_1EED0, sub_C794, &protocol conformance descriptor for NSObject);
  **(*(v2 + 64) + 40) = sub_116A4();

  return _swift_continuation_resume(v2);
}

uint64_t (*sub_47A4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_11554();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_BAC0(v3, v8);
  return sub_48BC;
}

void sub_48BC(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_4950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_F3B8(&qword_1EF38, &qword_14018);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_FAE0(a3, v25 - v10);
  v12 = sub_11694();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_FB50(v11, &qword_1EF38, &qword_14018);
  }

  else
  {
    sub_11684();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_11674();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_115F4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_FB50(a3, &qword_1EF38, &qword_14018);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_FB50(a3, &qword_1EF38, &qword_14018);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_4CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_F3B8(&unk_1EF70, qword_14118);
  v5.super.isa = sub_11644().super.isa;
  if (a2)
  {
    v6 = sub_11524();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t sub_4D70(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_4D90, 0, 0);
}

uint64_t sub_4D90()
{
  v15 = v0;
  type metadata accessor for DSBeacon(0);
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRetain();
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_5048;

    return sub_6CF0(v2);
  }

  else
  {
    type metadata accessor for DSDelegatedBeaconShare();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      swift_unknownObjectRetain();
      v7 = swift_task_alloc();
      v0[6] = v7;
      *v7 = v0;
      v7[1] = sub_51C0;

      return sub_8B24(v6);
    }

    else
    {
      if (qword_1EBB0 != -1)
      {
        swift_once();
      }

      v8 = sub_11584();
      sub_F488(v8, qword_1EE10);
      v9 = sub_11564();
      v10 = sub_116E4();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v14 = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_B480(0x72616853706F7473, 0xEF293A5F28676E69, &v14);
        _os_log_impl(&dword_0, v9, v10, "%s Shared resource isn't the right type", v11, 0xCu);
        sub_F978(v12);
      }

      v13 = v0[1];

      return v13();
    }
  }
}

uint64_t sub_5048()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_52D4;
  }

  else
  {
    v2 = sub_515C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_515C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_51C0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_5338;
  }

  else
  {
    v2 = sub_103CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_52D4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5338()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5528(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10380;

  return sub_4D70(a1);
}

uint64_t sub_55EC(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_560C, 0, 0);
}

uint64_t sub_560C()
{
  v21 = v0;
  type metadata accessor for DSHandle();
  v1 = swift_dynamicCastClass();
  v0[20] = v1;
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRetain();
    v3 = [v2 destination];
    if (!v3)
    {
      sub_115E4();
      v3 = sub_115B4();
    }

    v4 = [objc_opt_self() handleWithString:v3];
    v0[21] = v4;

    if (v4)
    {
      if (qword_1EBB0 != -1)
      {
        swift_once();
      }

      v5 = sub_11584();
      v0[22] = sub_F488(v5, qword_1EE10);
      swift_unknownObjectRetain();
      v6 = sub_11564();
      v7 = sub_116F4();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v20 = v10;
        *v8 = 136315394;
        *(v8 + 4) = sub_B480(0xD00000000000001DLL, 0x8000000000012A40, &v20);
        *(v8 + 12) = 2112;
        *(v8 + 14) = v2;
        *v9 = v2;
        swift_unknownObjectRetain();
        _os_log_impl(&dword_0, v6, v7, "%s Trying to stop sharing with participant: %@", v8, 0x16u);
        sub_FB50(v9, &qword_1EEE8, &qword_13FD8);

        sub_F978(v10);
      }

      v11 = *(v0[19] + OBJC_IVAR____TtC28FindMyItemsDigitalSeparation34FindMyItemsDigitalSeparationSource_beaconSharingSession);
      v0[2] = v0;
      v0[7] = v0 + 24;
      v0[3] = sub_5AB4;
      v12 = swift_continuation_init();
      v0[17] = sub_F3B8(&qword_1EED8, &qword_13FD0);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_5E34;
      v0[13] = &unk_18808;
      v0[14] = v12;
      [v11 forceBreakAllSharesWithUser:v4 completion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EBB0 != -1)
  {
    swift_once();
  }

  v13 = sub_11584();
  sub_F488(v13, qword_1EE10);
  v14 = sub_11564();
  v15 = sub_116E4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_B480(0xD00000000000001DLL, 0x8000000000012A40, &v20);
    _os_log_impl(&dword_0, v14, v15, "%s Shared resource isn't the right type", v16, 0xCu);
    sub_F978(v17);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_5AB4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_5DB4;
  }

  else
  {
    v2 = sub_5BC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5BC4()
{
  v12 = v0;
  if (*(v0 + 192))
  {
    v1 = *(v0 + 168);
    swift_unknownObjectRelease();
LABEL_5:

    goto LABEL_7;
  }

  swift_unknownObjectRetain();
  v1 = sub_11564();
  v2 = sub_116E4();
  swift_unknownObjectRelease();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 168);
  if (v3)
  {
    v5 = *(v0 + 160);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_B480(0xD00000000000001DLL, 0x8000000000012A40, &v11);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v5;
    *v7 = v5;
    swift_unknownObjectRetain();
    _os_log_impl(&dword_0, v1, v2, "%s Failed to stop sharing with participant %@", v6, 0x16u);
    sub_FB50(v7, &qword_1EEE8, &qword_13FD8);

    sub_F978(v8);

    swift_unknownObjectRelease();

    goto LABEL_5;
  }

  swift_unknownObjectRelease();
LABEL_7:
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_5DB4()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_5E34(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_F888((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_F3B8(&qword_1EF00, &qword_13FF0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_608C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_6150;

  return sub_55EC(a1);
}

uint64_t sub_6150()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *v1;

  swift_unknownObjectRelease();

  v7 = *(v3 + 32);
  if (v2)
  {
    v8 = sub_11524();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_6310()
{
  v10 = v0;
  if (qword_1EBB0 != -1)
  {
    swift_once();
  }

  v1 = sub_11584();
  sub_F488(v1, qword_1EE10);
  v2 = sub_11564();
  v3 = sub_116F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_B480(0xD000000000000010, 0x8000000000012A20, &v9);
    _os_log_impl(&dword_0, v2, v3, "%s", v4, 0xCu);
    sub_F978(v5);
  }

  v6 = *(v0[19] + OBJC_IVAR____TtC28FindMyItemsDigitalSeparation34FindMyItemsDigitalSeparationSource_beaconSharingSession);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_6548;
  v7 = swift_continuation_init();
  v0[17] = sub_F3B8(&qword_1EF30, &qword_14010);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_46EC;
  v0[13] = &unk_187E0;
  v0[14] = v7;
  [v6 allSharesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_6548()
{

  return _swift_task_switch(sub_6628, 0, 0);
}

uint64_t sub_6628()
{
  v1 = v0[18];
  v0[20] = v1;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_66C4;

  return sub_751C(v1);
}

uint64_t sub_66C4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 176) = v6;
    *v6 = v3;
    v6[1] = sub_6840;
    v7 = *(v2 + 160);

    return sub_96A4(v7);
  }
}

uint64_t sub_6840()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_6AC4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_6B6C;

  return sub_62F0();
}

uint64_t sub_6B6C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_11524();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_6CF0(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_11554();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_6DB0, 0, 0);
}

uint64_t sub_6DB0()
{
  v27 = v0;
  if (qword_1EBB0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_11584();
  *(v0 + 184) = sub_F488(v2, qword_1EE10);
  v3 = v1;
  v4 = sub_11564();
  v5 = sub_116F4();

  v6 = &off_1E000;
  if (os_log_type_enabled(v4, v5))
  {
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    v9 = *(v0 + 160);
    v10 = *(v0 + 144);
    v11 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v11 = 136315651;
    *(v11 + 4) = sub_B480(0xD000000000000014, 0x80000000000129F0, &v26);
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v12 = [v10 identifier];
    sub_11544();

    sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = sub_11844();
    v15 = v14;
    (*(v8 + 8))(v7, v9);
    v16 = sub_B480(v13, v15, &v26);

    *(v11 + 24) = v16;
    v6 = &off_1E000;
    _os_log_impl(&dword_0, v4, v5, "%s Trying to stop sharing resource: %{private,mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();
  }

  v18 = *(v0 + 168);
  v17 = *(v0 + 176);
  v19 = *(v0 + 160);
  v20 = *(*(v0 + 152) + OBJC_IVAR____TtC28FindMyItemsDigitalSeparation34FindMyItemsDigitalSeparationSource_beaconSharingSession);
  v21 = [*(v0 + 144) v6[117]];
  sub_11544();

  isa = sub_11534().super.isa;
  *(v0 + 192) = isa;
  v23 = *(v18 + 8);
  *(v0 + 200) = v23;
  *(v0 + 208) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v17, v19);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 224;
  *(v0 + 24) = sub_7154;
  v24 = swift_continuation_init();
  *(v0 + 136) = sub_F3B8(&qword_1EED8, &qword_13FD0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_5E34;
  *(v0 + 104) = &unk_187B8;
  *(v0 + 112) = v24;
  [v20 stopSharing:isa completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_7154()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_749C;
  }

  else
  {
    v2 = sub_7264;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_7264()
{
  v18 = v0;
  v1 = *(v0 + 224);

  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 144);
    v3 = sub_11564();
    v4 = sub_116E4();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 200);
      v6 = *(v0 + 176);
      v7 = *(v0 + 160);
      v8 = *(v0 + 144);
      v9 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v9 = 136315394;
      *(v9 + 4) = sub_B480(0xD000000000000014, 0x80000000000129F0, &v17);
      *(v9 + 12) = 2080;
      v10 = [v8 identifier];
      sub_11544();

      sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v11 = sub_11844();
      v13 = v12;
      v5(v6, v7);
      v14 = sub_B480(v11, v13, &v17);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_0, v3, v4, "%s Failed to stop sharing %s", v9, 0x16u);
      swift_arrayDestroy();
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_749C()
{
  v1 = *(v0 + 192);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_751C(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  v3 = sub_11554();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_7614, 0, 0);
}

uint64_t sub_7614()
{
  v82 = v0;
  v1 = *(v0 + 216);
  v79 = v1 & 0xC000000000000001;
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_11744();
    sub_C794();
    sub_F8CC(&qword_1EED0, sub_C794, &protocol conformance descriptor for NSObject);
    sub_116D4();
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    v6 = *(v0 + 176);
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v2 = v1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 56);

    v5 = 0;
    v3 = v1;
  }

  v80 = 0;
  v78 = v4;
  v10 = (v4 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v81[0] = v15;
      sub_EEBC(v81);

      v5 = v13;
      v6 = v14;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v16 = sub_11774();
      if (v16)
      {
        *(v0 + 208) = v16;
        sub_C794();
        swift_dynamicCast();
        v15 = *(v0 + 200);
        v13 = v5;
        v14 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (v13 >= v10)
    {
      break;
    }

    v12 = *(v2 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_C7E0(v3);
  v3 = *(v0 + 216);
  if (!v79)
  {
    v34 = *(v3 + 32);
    v35 = v34 & 0x3F;
    v36 = ((1 << v34) + 63) >> 6;
    v37 = 8 * v36;

    v1 = v3;
    if (v35 <= 0xD)
    {
      goto LABEL_39;
    }

    goto LABEL_73;
  }

  v17 = &_swiftEmptySetSingleton;
  v81[0] = &_swiftEmptySetSingleton;

  v1 = sub_11744();
  v18 = sub_11774();
  if (v18)
  {
    v19 = v18;
    sub_C794();
    v20 = v19;
    do
    {
      *(v0 + 192) = v20;
      swift_dynamicCast();
      v21 = [*(v0 + 184) sharee];
      v22 = [v21 type];

      v3 = *(v0 + 184);
      if (v22 == &dword_0 + 2)
      {

        goto LABEL_22;
      }

      v23 = v17[2];
      if (v17[3] <= v23)
      {
        sub_C18C(v23 + 1);
        v17 = v81[0];
      }

      v24 = sub_11704(v17[5]);
      v25 = (v17 + 7);
      v26 = -1 << *(v17 + 32);
      v27 = v24 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~v17[(v27 >> 6) + 7]) != 0)
      {
        v29 = __clz(__rbit64((-1 << v27) & ~v17[(v27 >> 6) + 7])) | v27 & 0x7FFFFFFFFFFFFFC0;
        goto LABEL_36;
      }

      v30 = 0;
      v31 = (63 - v26) >> 6;
      do
      {
        if (++v28 == v31 && (v30 & 1) != 0)
        {
          __break(1u);
          goto LABEL_69;
        }

        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *&v25[8 * v28];
      }

      while (v33 == -1);
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
LABEL_36:
      *&v25[(v29 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v29;
      *(v17[6] + 8 * v29) = v3;
      ++v17[2];
LABEL_22:
      v20 = sub_11774();
    }

    while (v20);
  }

LABEL_54:
  sub_86C0(v17);
  v1 = v51;

  if (qword_1EBB0 != -1)
  {
    goto LABEL_71;
  }

  while (1)
  {
    v52 = sub_11584();
    *(v0 + 264) = sub_F488(v52, qword_1EE10);
    v53 = sub_11564();
    v54 = sub_116F4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v81[0] = v56;
      *v55 = 136315138;
      *(v55 + 4) = sub_B480(0xD00000000000001ELL, 0x80000000000129D0, v81);
      _os_log_impl(&dword_0, v53, v54, "%s Trying to stop all private sharing", v55, 0xCu);
      sub_F978(v56);
    }

    v36 = sub_F21C(v1);

    v57 = *(v36 + 16);
    if (v57)
    {
      v58 = *(v0 + 240);
      v59 = sub_B384(*(v36 + 16), 0);
      v36 = sub_E94C(v81, &v59[(*(v58 + 80) + 32) & ~*(v58 + 80)], v57, v36);
      sub_C7E0(v81[0]);
      if (v36 == v57)
      {
        goto LABEL_61;
      }

      __break(1u);
    }

    v59 = &_swiftEmptyArrayStorage;
LABEL_61:
    *(v0 + 272) = v59;
    v37 = *(v0 + 224);
    v60 = *(v59 + 2);
    v61 = OBJC_IVAR____TtC28FindMyItemsDigitalSeparation34FindMyItemsDigitalSeparationSource_beaconSharingSession;
    *(v0 + 280) = v60;
    *(v0 + 288) = v61;
    if (!v60)
    {
      break;
    }

    v62 = *(v0 + 240);
    *(v0 + 296) = 0;
    if (*(v59 + 2))
    {
      v63 = *(v0 + 256);
      v64 = *(v0 + 232);
      v66 = *(v62 + 16);
      v65 = v62 + 16;
      v67 = (*(v65 + 64) + 32) & ~*(v65 + 64);
      *(v0 + 304) = v66;
      *(v0 + 312) = v65 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v66(v63, &v59[v67], v64);
      v68 = *(v37 + v61);
      isa = sub_11534().super.isa;
      *(v0 + 320) = isa;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 336;
      *(v0 + 24) = sub_7FDC;
      v70 = swift_continuation_init();
      *(v0 + 136) = sub_F3B8(&qword_1EED8, &qword_13FD0);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_5E34;
      *(v0 + 104) = &unk_18790;
      *(v0 + 112) = v70;
      [v68 stopSharing:isa completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }

    __break(1u);
LABEL_73:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    v1 = *(v0 + 216);
    if ((isStackAllocationSafe & 1) == 0)
    {
      v72 = swift_slowAlloc();
      v73 = v36;
      v74 = v80;
      v17 = sub_C954(v72, v73, v1, sub_103B0);

      if (v74)
      {
        return result;
      }

      v80 = 0;
      goto LABEL_54;
    }

LABEL_39:
    v76[1] = v76;
    v77 = v36;
    __chkstk_darwin(isStackAllocationSafe);
    v78 = v76 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v78, v37);
    v79 = 0;
    v39 = 0;
    v40 = 1 << *(v3 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(v1 + 56);
    v43 = (v40 + 63) >> 6;
    while (v42)
    {
      v44 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
LABEL_49:
      v47 = v44 | (v39 << 6);
      v3 = *(*(v1 + 48) + 8 * v47);
      v48 = [v3 sharee];
      v49 = [v48 type];

      if (v49 != &dword_0 + 2)
      {
        *&v78[(v47 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v47;
        if (__OFADD__(v79++, 1))
        {
          __break(1u);
LABEL_53:
          v17 = sub_C9E4(v78, v77, v79, *(v0 + 216));
          goto LABEL_54;
        }
      }
    }

    v45 = v39;
    while (1)
    {
      v39 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v39 >= v43)
      {
        goto LABEL_53;
      }

      v46 = *(v1 + 56 + 8 * v39);
      ++v45;
      if (v46)
      {
        v44 = __clz(__rbit64(v46));
        v42 = (v46 - 1) & v46;
        goto LABEL_49;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    swift_once();
  }

  v71 = *(v0 + 8);

  return v71();
}

uint64_t sub_7FDC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {

    v2 = sub_8580;
  }

  else
  {
    v2 = sub_8120;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_8120()
{
  v32 = v0;
  v1 = *(v0 + 336);

  if (v1)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
  }

  else
  {
    (*(v0 + 304))(*(v0 + 248), *(v0 + 256), *(v0 + 232));
    v2 = sub_11564();
    v3 = sub_116E4();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 248);
    v6 = *(v0 + 256);
    v8 = *(v0 + 232);
    v7 = *(v0 + 240);
    if (v4)
    {
      v30 = *(v0 + 256);
      v9 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v9 = 136315651;
      *(v9 + 4) = sub_B480(0xD00000000000001ELL, 0x80000000000129D0, &v31);
      *(v9 + 12) = 2160;
      *(v9 + 14) = 1752392040;
      *(v9 + 22) = 2081;
      sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v10 = sub_11844();
      v12 = v11;
      v13 = *(v7 + 8);
      v13(v5, v8);
      v14 = sub_B480(v10, v12, &v31);

      *(v9 + 24) = v14;
      _os_log_impl(&dword_0, v2, v3, "%s Failed to stop sharing %{private,mask.hash}s", v9, 0x20u);
      swift_arrayDestroy();

      v13(v30, v8);
    }

    else
    {

      v15 = *(v7 + 8);
      v15(v5, v8);
      v15(v6, v8);
    }
  }

  v16 = *(v0 + 296) + 1;
  if (v16 == *(v0 + 280))
  {

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    *(v0 + 296) = v16;
    v19 = *(v0 + 272);
    if (v16 >= *(v19 + 16))
    {
      __break(1u);
    }

    v20 = *(v0 + 288);
    v21 = *(v0 + 256);
    v22 = *(v0 + 232);
    v23 = *(v0 + 240);
    v24 = *(v0 + 224);
    v25 = *(v23 + 16);
    v23 += 16;
    v26 = v19 + ((*(v23 + 64) + 32) & ~*(v23 + 64)) + *(v23 + 56) * v16;
    *(v0 + 304) = v25;
    *(v0 + 312) = v23 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v25(v21, v26, v22);
    v27 = *(v24 + v20);
    isa = sub_11534().super.isa;
    *(v0 + 320) = isa;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 336;
    *(v0 + 24) = sub_7FDC;
    v29 = swift_continuation_init();
    *(v0 + 136) = sub_F3B8(&qword_1EED8, &qword_13FD0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_5E34;
    *(v0 + 104) = &unk_18790;
    *(v0 + 112) = v29;
    [v27 stopSharing:isa completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_8580()
{
  v1 = v0[40];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  swift_willThrow();
  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

BOOL sub_865C(id *a1)
{
  v1 = [*a1 sharee];
  v2 = [v1 type];

  return v2 != &dword_0 + 2;
}

void sub_86C0(uint64_t a1)
{
  v3 = sub_F3B8(&qword_1EF28, &qword_14008);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v38 = sub_11554();
  v6 = *(v38 - 8);
  v7 = __chkstk_darwin(v38);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v31 = &v29 - v9;
  v34 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_11744();
    sub_C794();
    sub_F8CC(&qword_1EED0, sub_C794, &protocol conformance descriptor for NSObject);
    sub_116D4();
    a1 = v40;
    v10 = v41;
    v11 = v42;
    v12 = v43;
    v13 = v44;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a1 + 56);

    v12 = 0;
  }

  v33 = v11;
  v36 = (v6 + 48);
  v37 = (v6 + 56);
  v29 = v6;
  v30 = (v6 + 32);
  v35 = &_swiftEmptyArrayStorage;
  while (a1 < 0)
  {
    v20 = sub_11774();
    if (!v20 || (v39 = v20, sub_C794(), swift_dynamicCast(), (v19 = v45) == 0))
    {
LABEL_24:
      sub_C7E0(a1);
      return;
    }

LABEL_17:
    v21 = [v19 beaconIdentifier];
    sub_11544();

    v22 = v38;
    (*v37)(v5, 0, 1, v38);

    if ((*v36)(v5, 1, v22) == 1)
    {
      sub_FB50(v5, &qword_1EF28, &qword_14008);
    }

    else
    {
      v23 = *v30;
      v24 = v38;
      (*v30)(v31, v5, v38);
      v23(v32, v31, v24);
      v25 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_B1AC(0, *(v35 + 2) + 1, 1, v35);
      }

      v27 = *(v35 + 2);
      v26 = *(v35 + 3);
      if (v27 >= v26 >> 1)
      {
        v35 = sub_B1AC((v26 > 1), v27 + 1, 1, v35);
      }

      v28 = v35;
      *(v35 + 2) = v27 + 1;
      v25(&v28[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v27], v32, v38);
    }
  }

  v17 = v12;
  v18 = v13;
  if (v13)
  {
LABEL_13:
    v13 = (v18 - 1) & v18;
    v19 = *(*(a1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v19)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v12 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v12 >= ((v11 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v18 = *(v10 + 8 * v12);
    ++v17;
    if (v18)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_8B24(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_11554();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_8C08, 0, 0);
}

uint64_t sub_8C08()
{
  v28 = v0;
  v1 = [*(v0[18] + OBJC_IVAR____TtC28FindMyItemsDigitalSeparation22DSDelegatedBeaconShare_beaconShare) beaconIdentifier];
  sub_11544();

  if (qword_1EBB0 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[20];
  v5 = v0[21];
  v6 = sub_11584();
  v0[26] = sub_F488(v6, qword_1EE10);
  v7 = *(v5 + 16);
  v0[27] = v7;
  v0[28] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v3, v4);
  v8 = sub_11564();
  v9 = sub_116F4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[24];
  v12 = v0[20];
  v13 = v0[21];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136315651;
    *(v14 + 4) = sub_B480(0xD00000000000001CLL, 0x80000000000129B0, &v27);
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = sub_11844();
    v17 = v16;
    v18 = *(v13 + 8);
    v18(v11, v12);
    v19 = sub_B480(v15, v17, &v27);

    *(v14 + 24) = v19;
    _os_log_impl(&dword_0, v8, v9, "%s for beacon %{private,mask.hash}s", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v18 = *(v13 + 8);
    v18(v11, v12);
  }

  v0[29] = v18;
  v20 = v0[19];
  v21 = objc_allocWithZone(SPBeaconLocationShareContext);
  isa = sub_11534().super.isa;
  v23 = [v21 initWithBeaconIdentifier:isa];
  v0[30] = v23;

  v24 = *(v20 + OBJC_IVAR____TtC28FindMyItemsDigitalSeparation34FindMyItemsDigitalSeparationSource_beaconSharingSession);
  v0[2] = v0;
  v0[7] = v0 + 32;
  v0[3] = sub_8FD8;
  v25 = swift_continuation_init();
  v0[17] = sub_F3B8(&qword_1EED8, &qword_13FD0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_5E34;
  v0[13] = &unk_18768;
  v0[14] = v25;
  [v24 stopTemporaryItemLocationShare:v23 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_8FD8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_9384;
  }

  else
  {
    v2 = sub_90E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_90E8()
{
  v18 = v0;
  (*(v0 + 216))(*(v0 + 184), *(v0 + 200), *(v0 + 160));
  v1 = sub_11564();
  v2 = sub_116F4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 232);
  v5 = *(v0 + 200);
  v6 = *(v0 + 184);
  v7 = *(v0 + 160);
  if (v3)
  {
    v15 = *(v0 + 240);
    v16 = *(v0 + 232);
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315651;
    *(v8 + 4) = sub_B480(0xD00000000000001CLL, 0x80000000000129B0, &v17);
    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;
    sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = sub_11844();
    v11 = v10;
    v16(v6, v7);
    v12 = sub_B480(v9, v11, &v17);

    *(v8 + 24) = v12;
    _os_log_impl(&dword_0, v1, v2, "%s Successfully stopped delegated sharing for beacon %{private,mask.hash}s", v8, 0x20u);
    swift_arrayDestroy();

    v16(v5, v7);
  }

  else
  {

    v4(v6, v7);
    v4(v5, v7);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_9384()
{
  v27 = v0;
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[20];
  swift_willThrow();
  v1(v3, v2, v4);
  swift_errorRetain();
  v5 = sub_11564();
  v6 = sub_116E4();

  if (os_log_type_enabled(v5, v6))
  {
    v25 = v0[29];
    v7 = v0[22];
    v8 = v0[20];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v9 = 136315907;
    *(v9 + 4) = sub_B480(0xD00000000000001CLL, 0x80000000000129B0, v26);
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = sub_11844();
    v13 = v12;
    v25(v7, v8);
    v14 = sub_B480(v11, v13, v26);

    *(v9 + 24) = v14;
    *(v9 + 32) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 34) = v15;
    *v10 = v15;
    _os_log_impl(&dword_0, v5, v6, "%s Failed to stop delegated share with beacon identifier %{private,mask.hash}s\nError %{public}@", v9, 0x2Au);
    sub_FB50(v10, &qword_1EEE8, &qword_13FD8);

    swift_arrayDestroy();
  }

  else
  {
    v16 = v0[29];
    v17 = v0[22];
    v18 = v0[20];

    v16(v17, v18);
  }

  v19 = v0[30];
  v20 = v0[29];
  v21 = v0[25];
  v22 = v0[20];
  swift_willThrow();

  v20(v21, v22);

  v23 = v0[1];

  return v23();
}

uint64_t sub_96A4(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  v3 = sub_11554();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_979C, 0, 0);
}

uint64_t sub_979C()
{
  v77 = v0;
  v1 = *(v0 + 216);
  v74 = v1 & 0xC000000000000001;
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_11744();
    sub_C794();
    sub_F8CC(&qword_1EED0, sub_C794, &protocol conformance descriptor for NSObject);
    sub_116D4();
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    v6 = *(v0 + 176);
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v2 = v1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 56);

    v5 = 0;
    v3 = v1;
  }

  v75 = 0;
  v73 = v4;
  v10 = (v4 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v76[0] = v15;
      sub_F4C0(v76);

      v5 = v13;
      v6 = v14;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v16 = sub_11774();
      if (v16)
      {
        *(v0 + 208) = v16;
        sub_C794();
        swift_dynamicCast();
        v15 = *(v0 + 200);
        v13 = v5;
        v14 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v13 >= v10)
    {
      break;
    }

    v12 = *(v2 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  v6 = 0;
LABEL_19:
  sub_C7E0(v3);
  v3 = *(v0 + 216);
  if (!v74)
  {
    v34 = *(v3 + 32);
    v35 = v34 & 0x3F;
    v5 = ((1 << v34) + 63) >> 6;
    v6 = 8 * v5;

    v37 = v3;
    if (v35 <= 0xD)
    {
      goto LABEL_40;
    }

    goto LABEL_70;
  }

  v17 = &_swiftEmptySetSingleton;
  v76[0] = &_swiftEmptySetSingleton;

  sub_11744();
  v18 = sub_11774();
  if (v18)
  {
    v19 = v18;
    v6 = sub_C794();
    v20 = v19;
    v5 = &off_1E000;
    do
    {
      *(v0 + 192) = v20;
      swift_dynamicCast();
      v21 = [*(v0 + 184) sharee];
      v22 = [v21 type];

      v3 = *(v0 + 184);
      if (v22 != &dword_0 + 2)
      {

        goto LABEL_23;
      }

      v23 = v17[2];
      if (v17[3] <= v23)
      {
        sub_C18C(v23 + 1);
        v17 = v76[0];
      }

      v24 = sub_11704(v17[5]);
      v25 = (v17 + 7);
      v26 = -1 << *(v17 + 32);
      v27 = v24 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~v17[(v27 >> 6) + 7]) != 0)
      {
        v29 = __clz(__rbit64((-1 << v27) & ~v17[(v27 >> 6) + 7])) | v27 & 0x7FFFFFFFFFFFFFC0;
        goto LABEL_37;
      }

      v30 = 0;
      v31 = (63 - v26) >> 6;
      do
      {
        if (++v28 == v31 && (v30 & 1) != 0)
        {
          __break(1u);
          goto LABEL_67;
        }

        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *&v25[8 * v28];
      }

      while (v33 == -1);
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
LABEL_37:
      *&v25[(v29 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v29;
      *(v17[6] + 8 * v29) = v3;
      ++v17[2];
LABEL_23:
      v20 = sub_11774();
    }

    while (v20);
  }

  while (1)
  {
LABEL_55:
    sub_86C0(v17);
    v49 = v48;

    v5 = sub_F21C(v49);

    v50 = *(v5 + 16);
    if (v50)
    {
      v51 = *(v0 + 240);
      v52 = sub_B384(*(v5 + 16), 0);
      v5 = sub_E94C(v76, &v52[(*(v51 + 80) + 32) & ~*(v51 + 80)], v50, v5);
      sub_C7E0(v76[0]);
      if (v5 == v50)
      {
        goto LABEL_59;
      }

      __break(1u);
    }

    v52 = &_swiftEmptyArrayStorage;
LABEL_59:
    *(v0 + 264) = v52;
    v53 = *(v0 + 224);
    v54 = *(v52 + 2);
    v55 = OBJC_IVAR____TtC28FindMyItemsDigitalSeparation34FindMyItemsDigitalSeparationSource_beaconSharingSession;
    *(v0 + 272) = v54;
    *(v0 + 280) = v55;
    if (!v54)
    {
      break;
    }

    v56 = *(v0 + 240);
    *(v0 + 288) = 0;
    if (*(v52 + 2))
    {
      v75 = v0 + 96;
      v57 = *(v0 + 256);
      v58 = *(v0 + 232);
      v60 = *(v56 + 16);
      v59 = v56 + 16;
      v61 = (*(v59 + 64) + 32) & ~*(v59 + 64);
      *(v0 + 296) = v60;
      *(v0 + 304) = v59 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v60(v57, &v52[v61], v58);
      v62 = objc_allocWithZone(SPBeaconLocationShareContext);
      isa = sub_11534().super.isa;
      v64 = [v62 initWithBeaconIdentifier:isa];
      *(v0 + 312) = v64;

      v65 = *(v53 + v55);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 328;
      *(v0 + 24) = sub_A088;
      v66 = swift_continuation_init();
      *(v0 + 136) = sub_F3B8(&qword_1EED8, &qword_13FD0);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_5E34;
      *(v0 + 104) = &unk_18740;
      *(v0 + 112) = v66;
      [v65 stopTemporaryItemLocationShare:v64 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }

    while (1)
    {
      __break(1u);
LABEL_70:
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      v37 = *(v0 + 216);
      if ((isStackAllocationSafe & 1) == 0)
      {
        break;
      }

LABEL_40:
      v71[1] = v71;
      v72 = v5;
      __chkstk_darwin(isStackAllocationSafe);
      v73 = v71 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v73, v6);
      v74 = 0;
      v5 = 0;
      v38 = 1 << *(v3 + 32);
      v39 = -1;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      v6 = v39 & *(v37 + 56);
      v40 = (v38 + 63) >> 6;
      while (v6)
      {
        v41 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
LABEL_50:
        v44 = v41 | (v5 << 6);
        v3 = *(*(v37 + 48) + 8 * v44);
        v45 = [v3 sharee];
        v46 = [v45 type];

        if (v46 == &dword_0 + 2)
        {
          *&v73[(v44 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v44;
          if (__OFADD__(v74++, 1))
          {
            __break(1u);
LABEL_54:
            v17 = sub_C9E4(v73, v72, v74, *(v0 + 216));
            goto LABEL_55;
          }
        }
      }

      v42 = v5;
      while (1)
      {
        v5 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v5 >= v40)
        {
          goto LABEL_54;
        }

        v43 = *(v37 + 56 + 8 * v5);
        ++v42;
        if (v43)
        {
          v41 = __clz(__rbit64(v43));
          v6 = (v43 - 1) & v43;
          goto LABEL_50;
        }
      }

LABEL_68:
      __break(1u);
    }

    v6 = swift_slowAlloc();
    v68 = v5;
    v69 = v75;
    v17 = sub_C954(v6, v68, v37, sub_A7FC);

    if (v69)
    {
      return result;
    }

    v75 = 0;
  }

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_A088()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {

    v2 = sub_A488;
  }

  else
  {
    v2 = sub_A1CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_A1CC()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);

  (*(v5 + 8))(v3, v4);
  if (v1 + 1 == v2)
  {

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 288) + 1;
    *(v0 + 288) = v8;
    v9 = *(v0 + 264);
    if (v8 >= *(v9 + 16))
    {
      __break(1u);
    }

    v10 = *(v0 + 280);
    v11 = *(v0 + 256);
    v12 = *(v0 + 232);
    v13 = *(v0 + 240);
    v14 = *(v0 + 224);
    v15 = *(v13 + 16);
    v13 += 16;
    v16 = v9 + ((*(v13 + 64) + 32) & ~*(v13 + 64)) + *(v13 + 56) * v8;
    *(v0 + 296) = v15;
    *(v0 + 304) = v13 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v11, v16, v12);
    v17 = objc_allocWithZone(SPBeaconLocationShareContext);
    isa = sub_11534().super.isa;
    v19 = [v17 initWithBeaconIdentifier:isa];
    *(v0 + 312) = v19;

    v20 = *(v14 + v10);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 328;
    *(v0 + 24) = sub_A088;
    v21 = swift_continuation_init();
    *(v0 + 136) = sub_F3B8(&qword_1EED8, &qword_13FD0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_5E34;
    *(v0 + 104) = &unk_18740;
    *(v0 + 112) = v21;
    [v20 stopTemporaryItemLocationShare:v19 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_A488(uint64_t a1)
{
  v29 = v1;
  swift_willThrow();
  if (qword_1EBB0 != -1)
  {
    swift_once();
  }

  v2 = v1[37];
  v3 = v1[31];
  v4 = v1[32];
  v5 = v1[29];
  v6 = sub_11584();
  sub_F488(v6, qword_1EE10);
  v2(v3, v4, v5);
  swift_errorRetain();
  v7 = sub_11564();
  v8 = sub_116E4();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = v1[30];
    v9 = v1[31];
    v11 = v1[29];
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v12 = 136315907;
    *(v12 + 4) = sub_B480(0xD00000000000001DLL, 0x8000000000012990, &v28);
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = sub_11844();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_B480(v13, v15, &v28);

    *(v12 + 24) = v17;
    *(v12 + 32) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 34) = v18;
    *v27 = v18;
    _os_log_impl(&dword_0, v7, v8, "%s: Failed to stop sharing %{private,mask.hash}s error %{public}@", v12, 0x2Au);
    sub_FB50(v27, &qword_1EEE8, &qword_13FD8);

    swift_arrayDestroy();
  }

  else
  {
    v20 = v1[30];
    v19 = v1[31];
    v21 = v1[29];

    v16 = *(v20 + 8);
    v16(v19, v21);
  }

  v22 = v1[39];
  v23 = v1[32];
  v24 = v1[29];
  swift_willThrow();

  v16(v23, v24);

  v25 = v1[1];

  return v25();
}

BOOL sub_A7FC(id *a1)
{
  v1 = [*a1 sharee];
  v2 = [v1 type];

  return v2 == &dword_0 + 2;
}

id sub_A860()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindMyItemsDigitalSeparationSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A914(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_AA0C;

  return v6(a1);
}

uint64_t sub_AA0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_AB04(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_103A8;

  return v6();
}

uint64_t sub_ABEC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_ACD4;

  return v7();
}

uint64_t sub_ACD4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_ADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_F3B8(&qword_1EF38, &qword_14018);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_FAE0(a3, v23 - v10);
  v12 = sub_11694();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_FB50(v11, &qword_1EF38, &qword_14018);
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

  sub_11684();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_11674();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_115F4() + 32;
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

    sub_FB50(a3, &qword_1EF38, &qword_14018);

    return v21;
  }

LABEL_8:
  sub_FB50(a3, &qword_1EF38, &qword_14018);
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

uint64_t sub_B0B4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_103AC;

  return v6(a1);
}

void *sub_B1AC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_F3B8(&qword_1EF08, &qword_13FF8);
  v10 = *(sub_11554() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_11554() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_B384(uint64_t a1, uint64_t a2)
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

  sub_F3B8(&qword_1EF08, &qword_13FF8);
  v4 = *(sub_11554() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_B480(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_B54C(v11, 0, 0, 1, a1, a2);
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
    sub_F410(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_F978(v11);
  return v7;
}

unint64_t sub_B54C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_B658(a5, a6);
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
    result = sub_117E4();
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

char *sub_B658(uint64_t a1, unint64_t a2)
{
  v3 = sub_B6A4(a1, a2);
  sub_B7D4(&off_186D0);
  return v3;
}

char *sub_B6A4(uint64_t a1, unint64_t a2)
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

  v6 = sub_B8C0(v5, 0);
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

  result = sub_117E4();
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
        v10 = sub_11614();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_B8C0(v10, 0);
        result = sub_117C4();
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

uint64_t sub_B7D4(uint64_t result)
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

  result = sub_B934(result, v11, 1, v3);
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

void *sub_B8C0(uint64_t a1, uint64_t a2)
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

  sub_F3B8(&qword_1EEF8, &qword_13FE8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_B934(char *result, int64_t a2, char a3, char *a4)
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
    sub_F3B8(&qword_1EEF8, &qword_13FE8);
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

unint64_t sub_BA28(uint64_t a1)
{
  sub_11554();
  sub_F8CC(&qword_1EF10, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = sub_11594();

  return sub_D38C(a1, v2);
}

void (*sub_BAC0(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_11554();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[10] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a2, v6);
  v5[11] = sub_E918(v5);
  v5[12] = sub_E668(v5 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_BBFC;
}

void sub_BBFC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

uint64_t sub_BC94(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_11764();

    if (v9)
    {

      sub_C794();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_11754();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_D7CC(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_C18C(v20 + 1);
    }

    v18 = v8;
    sub_C710(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_C794();
  v11 = sub_11704(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_D9AC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_11714();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_BEAC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_11554();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_F8CC(&qword_1EF10, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = sub_11594();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_F8CC(&qword_1EF18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_115A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_DB0C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_C18C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_F3B8(&qword_1EEF0, &qword_13FE0);
  result = sub_11794();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_11704(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_C3B4(uint64_t a1)
{
  v2 = v1;
  v36 = sub_11554();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_F3B8(&qword_1EF20, &qword_14000);
  result = sub_11794();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_F8CC(&qword_1EF10, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_11594();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

unint64_t sub_C710(uint64_t a1, void *a2)
{
  sub_11704(a2[5]);
  result = sub_11734();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t sub_C794()
{
  result = qword_1F020;
  if (!qword_1F020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1F020);
  }

  return result;
}

void sub_C7E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_C9E4(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_C954(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_C7E8(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_C9E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_F3B8(&qword_1EEF0, &qword_13FE0);
  result = sub_117B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_11704(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_CBD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_11554();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_F3B8(&qword_1EF68, &qword_14080);
  v39 = v4;
  result = sub_11824();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_F8CC(&qword_1EF10, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_11594();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_CFB4(int64_t a1, uint64_t a2)
{
  v40 = sub_11554();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_11724();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_F8CC(&qword_1EF10, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = sub_11594();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_D2D4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_11554();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_D38C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_11554();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_F8CC(&qword_1EF18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = sub_115A4();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void sub_D54C()
{
  v1 = v0;
  v33 = sub_11554();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F3B8(&qword_1EF68, &qword_14080);
  v3 = *v0;
  v4 = sub_11814();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

Swift::Int sub_D7CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_F3B8(&qword_1EEF0, &qword_13FE0);
    v2 = sub_117A4();
    v15 = v2;
    sub_11744();
    if (sub_11774())
    {
      sub_C794();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_C18C(v9 + 1);
        }

        v2 = v15;
        result = sub_11704(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_11774());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void sub_D9AC(unint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_C18C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_DDB0();
      goto LABEL_12;
    }

    sub_E138(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_11704(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_C794();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_11714();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_11864();
  __break(1u);
}

uint64_t sub_DB0C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_11554();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_C3B4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_DF00();
      goto LABEL_12;
    }

    sub_E34C(v10 + 1);
  }

  v12 = *v3;
  sub_F8CC(&qword_1EF10, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = sub_11594();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_F8CC(&qword_1EF18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_115A4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_11864();
  __break(1u);
  return result;
}

id sub_DDB0()
{
  v1 = v0;
  sub_F3B8(&qword_1EEF0, &qword_13FE0);
  v2 = *v0;
  v3 = sub_11784();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_DF00()
{
  v1 = v0;
  v2 = sub_11554();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F3B8(&qword_1EF20, &qword_14000);
  v6 = *v0;
  v7 = sub_11784();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_E138(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_F3B8(&qword_1EEF0, &qword_13FE0);
  result = sub_11794();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_11704(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_E34C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_11554();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_F3B8(&qword_1EF20, &qword_14000);
  v7 = sub_11794();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_F8CC(&qword_1EF10, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = sub_11594();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

void (*sub_E668(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = sub_11554();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_BA28(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_D54C();
      v14 = v22;
      goto LABEL_14;
    }

    sub_CBD8(v19, a3 & 1);
    v14 = sub_BA28(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_11874();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v24 = 0;
  }

  *v9 = v24;
  return sub_E818;
}

void sub_E818(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[5];
      (*(v1[4] + 16))(v7, v1[1], v1[3]);
      sub_D2D4(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[7])
  {
    v5 = v1[6];
    v6 = *v1[2];
    (*(v1[4] + 8))(*(v6 + 48) + *(v1[4] + 72) * v5, v1[3]);
    sub_CFB4(v5, v6);
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

uint64_t (*sub_E918(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_E940;
}

void *sub_E94C(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_11554();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v31;
    a1[4] = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = (&dword_0 + 1);
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1, 1);
      a1 = (a1 + 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_EBF0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_11804())
    {
LABEL_3:
      sub_F3B8(&qword_1EEF0, &qword_13FE0);
      v3 = sub_117B4();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_11804();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_117D4();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_11704(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_C794();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_11714();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_11704(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_C794();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_11714();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_EEBC(void **a1)
{
  v2 = sub_11554();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (qword_1EBB0 != -1)
  {
    swift_once();
  }

  v7 = sub_11584();
  sub_F488(v7, qword_1EE10);
  v8 = v6;
  v9 = sub_11564();
  v10 = sub_116F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v11 = 136315907;
    *(v11 + 4) = sub_B480(0xD00000000000001ELL, 0x80000000000129D0, &v28);
    *(v11 + 12) = 2082;
    v12 = [v8 identifier];
    v26 = v9;
    v13 = v12;
    sub_11544();

    sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    HIDWORD(v25) = v10;
    v14 = sub_11844();
    v16 = v15;
    v17 = *(v3 + 8);
    v17(v5, v2);
    v18 = sub_B480(v14, v16, &v28);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2081;
    v19 = [v8 beaconIdentifier];
    sub_11544();

    v20 = sub_11844();
    v22 = v21;
    v17(v5, v2);
    v23 = sub_B480(v20, v22, &v28);

    *(v11 + 34) = v23;
    v24 = v26;
    _os_log_impl(&dword_0, v26, BYTE4(v25), "%s identifier: %{public}s beacon: %{private,mask.hash}s", v11, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_F21C(uint64_t a1)
{
  v2 = sub_11554();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_F8CC(&qword_1EF10, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  result = sub_116C4();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_BEAC(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_F3B8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_F410(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_F488(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_F4C0(void **a1)
{
  v2 = sub_11554();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (qword_1EBB0 != -1)
  {
    swift_once();
  }

  v7 = sub_11584();
  sub_F488(v7, qword_1EE10);
  v8 = v6;
  v9 = sub_11564();
  v10 = sub_116F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v11 = 136315907;
    *(v11 + 4) = sub_B480(0xD00000000000001DLL, 0x8000000000012990, &v28);
    *(v11 + 12) = 2082;
    v12 = [v8 identifier];
    v26 = v9;
    v13 = v12;
    sub_11544();

    sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    HIDWORD(v25) = v10;
    v14 = sub_11844();
    v16 = v15;
    v17 = *(v3 + 8);
    v17(v5, v2);
    v18 = sub_B480(v14, v16, &v28);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2081;
    v19 = [v8 beaconIdentifier];
    sub_11544();

    v20 = sub_11844();
    v22 = v21;
    v17(v5, v2);
    v23 = sub_B480(v20, v22, &v28);

    *(v11 + 34) = v23;
    v24 = v26;
    _os_log_impl(&dword_0, v26, BYTE4(v25), "%s identifier: %{public}s beacon: %{private,mask.hash}s", v11, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t *sub_F824(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void *sub_F888(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_F8CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_F914(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_F978(void *a1)
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

uint64_t sub_F9C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_FA0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_103A8;

  return sub_2120(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_FAE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_F3B8(&qword_1EF38, &qword_14018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_FB50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_F3B8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_FBB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_FBE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_103A8;

  return sub_A914(a1, v4);
}

uint64_t sub_FCA0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_FCD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_ACD4;

  return sub_44A4(a1, v4);
}

uint64_t sub_FD78(uint64_t a1, uint64_t a2)
{
  v4 = sub_F3B8(&qword_1EF48, &qword_14050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_FDE8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_FE28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_103A8;

  return sub_6AC4(v2, v3);
}

uint64_t sub_FED8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_103A8;

  return sub_AB04(v2, v3, v4);
}

uint64_t sub_FF98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_103A8;

  return sub_ABEC(a1, v4, v5, v6);
}

uint64_t sub_10064(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_103A8;

  return sub_B0B4(a1, v4);
}

uint64_t sub_10120()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_ACD4;

  return sub_608C(v2, v3, v4);
}

uint64_t sub_101D4()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1021C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_103A8;

  return sub_5528(v2, v3, v4);
}

uint64_t sub_102D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10310()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_103D0()
{
  v0 = sub_11584();
  sub_F824(v0, qword_1F380);
  sub_F488(v0, qword_1F380);
  return sub_11574();
}

void sub_1051C()
{
  v41 = &_swiftEmptyArrayStorage;
  v1 = *(v0 + OBJC_IVAR____TtC28FindMyItemsDigitalSeparation8DSBeacon_beaconShares);
  if ((v1 & 0xC000000000000001) != 0)
  {

    sub_11744();
    sub_C794();
    sub_10C98();
    sub_116D4();
    v1 = v42;
    v2 = v43;
    v3 = v44;
    v4 = v45;
    v5 = v46;
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    v2 = v1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(v1 + 56);

    v4 = 0;
  }

  v9 = (v3 + 64) >> 6;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_11774() || (sub_C794(), swift_dynamicCast(), (v12 = v38) == 0))
      {
LABEL_40:
        sub_C7E0(v1);
        return;
      }

      goto LABEL_18;
    }

    v10 = v4;
    v11 = v5;
    if (!v5)
    {
      break;
    }

LABEL_14:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_40;
    }

LABEL_18:
    if ((SPBeaconShare.shouldBeListed.getter() & 1) == 0 || (v13 = [v12 sharee], v14 = objc_msgSend(v13, "type"), v13, v14 == &dword_0 + 2))
    {
LABEL_8:
    }

    else
    {
      v15 = [v12 owner];
      v16 = [v15 destination];

      v17 = sub_115E4();
      v19 = v18;

      if (v17 == 0x6F6C4072656E776FLL && v19 == 0xEF74736F686C6163)
      {
      }

      else
      {
        v21 = sub_11854();

        if ((v21 & 1) == 0)
        {
          v22 = [v12 owner];
          v23 = type metadata accessor for DSHandle();
          v24 = objc_allocWithZone(v23);
          *&v24[OBJC_IVAR____TtC28FindMyItemsDigitalSeparation8DSHandle_role] = 1;
          v36 = [v22 type];
          v25 = [v22 destination];
          if (!v25)
          {
            sub_115E4();
            v25 = sub_115B4();
          }

          v40.receiver = v24;
          v40.super_class = v23;
          objc_msgSendSuper2(&v40, "initWithType:destination:", v36, v25);

          sub_11634();
          if (*(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v41 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_11654();
          }

          sub_11664();
        }
      }

      v26 = [v12 sharee];
      v27 = [v26 destination];

      v28 = sub_115E4();
      v30 = v29;

      if (v28 == 0x6F6C4072656E776FLL && v30 == 0xEF74736F686C6163)
      {
      }

      else
      {
        v31 = sub_11854();

        if (v31)
        {
          goto LABEL_8;
        }

        v32 = [v12 sharee];
        v33 = type metadata accessor for DSHandle();
        v34 = objc_allocWithZone(v33);
        *&v34[OBJC_IVAR____TtC28FindMyItemsDigitalSeparation8DSHandle_role] = 2;
        v37 = [v32 type];
        v35 = [v32 destination];
        if (!v35)
        {
          sub_115E4();
          v35 = sub_115B4();
        }

        v39.receiver = v34;
        v39.super_class = v33;
        objc_msgSendSuper2(&v39, "initWithType:destination:", v37, v35);

        sub_11634();
        if (*(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v41 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_11654();
        }

        sub_11664();
      }
    }
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_40;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id sub_10AF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DSBeacon(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DSBeacon(uint64_t a1)
{
  result = qword_1F010;
  if (!qword_1F010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10BF8(uint64_t a1)
{
  result = sub_11554();
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

unint64_t sub_10C98()
{
  result = qword_1EED0;
  if (!qword_1EED0)
  {
    sub_C794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EED0);
  }

  return result;
}

id sub_10D28()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL SPBeaconShare.isDelegated.getter()
{
  v1 = [v0 sharee];
  v2 = [v1 type];

  return v2 == &dword_0 + 2;
}

uint64_t SPBeaconShare.shouldBeListed.getter()
{
  v1 = [v0 state];
  if (v1 > 6)
  {
    return 0;
  }

  if (((1 << v1) & 0x1E) == 0)
  {
    v20 = [v0 owner];
    v21 = [v20 destination];

    v22 = sub_115E4();
    v24 = v23;

    v25 = [v0 sharee];
    v26 = [v25 destination];

    v27 = sub_115E4();
    v29 = v28;

    if (v22 == v27 && v24 == v29)
    {
    }

    else
    {
      v31 = sub_11854();

      if ((v31 & 1) == 0)
      {
        v32 = [v0 owner];
        v33 = [v32 destination];

        v34 = sub_115E4();
        v36 = v35;

        if (v34 != 0x6F6C4072656E776FLL || v36 != 0xEF74736F686C6163)
        {
          v41 = sub_11854();

          if (v41)
          {
LABEL_34:
            if (qword_1EBB8 != -1)
            {
              swift_once();
            }

            v42 = sub_11584();
            sub_F488(v42, qword_1F380);
            v15 = sub_11564();
            v16 = sub_116F4();
            if (os_log_type_enabled(v15, v16))
            {
              v17 = swift_slowAlloc();
              *v17 = 0;
              v18 = "FindMyItemsDigitalSeparation: Owner is part of the share record- showing.";
              goto LABEL_15;
            }

LABEL_45:
            v19 = 1;
            goto LABEL_46;
          }

          v43 = [v0 sharee];
          v44 = [v43 destination];

          v45 = sub_115E4();
          v47 = v46;

          if (v45 != 0x6F6C4072656E776FLL || v47 != 0xEF74736F686C6163)
          {
            v48 = sub_11854();

            if ((v48 & 1) == 0)
            {
              if (qword_1EBB8 != -1)
              {
                swift_once();
              }

              v49 = sub_11584();
              sub_F488(v49, qword_1F380);
              v15 = sub_11564();
              v16 = sub_116F4();
              if (os_log_type_enabled(v15, v16))
              {
                v17 = swift_slowAlloc();
                *v17 = 0;
                v18 = "FindMyItemsDigitalSeparation: Owner is not part of the share record- this is a one to many share. Showing.";
                goto LABEL_15;
              }

              goto LABEL_45;
            }

            goto LABEL_34;
          }
        }

        goto LABEL_34;
      }
    }

    if (qword_1EBB8 != -1)
    {
      swift_once();
    }

    v37 = sub_11584();
    sub_F488(v37, qword_1F380);
    v15 = sub_11564();
    v38 = sub_116F4();
    if (!os_log_type_enabled(v15, v38))
    {
      v19 = 0;
      goto LABEL_46;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_0, v15, v38, "FindMyItemsDigitalSeparation: Owner and sharee destinations match- not showing", v39, 2u);
    v19 = 0;
LABEL_29:

LABEL_46:

    return v19;
  }

  v2 = [v0 owner];
  v3 = [v2 destination];

  v4 = sub_115E4();
  v6 = v5;

  if (v4 == 0x6F6C4072656E776FLL && v6 == 0xEF74736F686C6163)
  {
    goto LABEL_10;
  }

  v8 = sub_11854();

  if (v8)
  {
    goto LABEL_11;
  }

  v9 = [v0 sharee];
  v10 = [v9 destination];

  v11 = sub_115E4();
  v13 = v12;

  if (v11 == 0x6F6C4072656E776FLL && v13 == 0xEF74736F686C6163)
  {
LABEL_10:

    goto LABEL_11;
  }

  v40 = sub_11854();

  if (v40)
  {
LABEL_11:
    if (qword_1EBB8 != -1)
    {
      swift_once();
    }

    v14 = sub_11584();
    sub_F488(v14, qword_1F380);
    v15 = sub_11564();
    v16 = sub_116F4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "FindMyItemsDigitalSeparation: Owner is invited or has invited someone. Showing.";
LABEL_15:
      _os_log_impl(&dword_0, v15, v16, v18, v17, 2u);
      v19 = 1;
      goto LABEL_29;
    }

    goto LABEL_45;
  }

  return 0;
}

uint64_t sub_114A8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}