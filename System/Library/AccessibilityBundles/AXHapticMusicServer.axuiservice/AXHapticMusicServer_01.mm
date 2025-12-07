void sub_1B868(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2CC4(&qword_39648, &qword_2D100);
    v1 = sub_2BD90();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = __clz(__rbit64(v4)) | (v7 << 6);
    sub_2A5D4(*(a1 + 48) + 40 * v10, v30);
    sub_25098(*(a1 + 56) + 32 * v10, v31 + 8);
    v28[0] = v31[0];
    v28[1] = v31[1];
    v29 = v32;
    v27[0] = v30[0];
    v27[1] = v30[1];
    sub_2A5D4(v27, v24);
    type metadata accessor for Key(0);
    if (!swift_dynamicCast())
    {
      sub_2AF20(v27, &qword_39650, &qword_2D108);

      return;
    }

    v11 = v23;
    sub_25098(v28 + 8, &v25[8]);
    sub_2AF20(v27, &qword_39650, &qword_2D108);
    sub_2A5C4(&v25[8], v22);
    v12 = v11;
    sub_2A5C4(v22, v26);
    sub_2A5C4(v26, v25);
    sub_2B9F0();
    sub_2BE40();
    sub_2BA20();
    v13 = sub_2BE60();

    v14 = -1 << v1[32];
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*&v6[8 * (v15 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *&v6[8 * v16];
        if (v20 != -1)
        {
          v8 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_28;
    }

    v8 = __clz(__rbit64((-1 << v15) & ~*&v6[8 * (v15 >> 6)])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v8) = v12;
    sub_2A5C4(v25, (*(v1 + 7) + 32 * v8));
    ++*(v1 + 2);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_1BB94(uint64_t a1, uint64_t a2)
{
  v3 = sub_2B8B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v7 = sub_25AC(v3, HMLog);
    swift_beginAccess();
    (*(v4 + 16))(v6, v7, v3);
    swift_errorRetain();
    v8 = sub_2B890();
    v9 = sub_2BB60();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_0, v8, v9, "Could not run player completion handler %@", v10, 0xCu);
      sub_2AF20(v11, &qword_391A8, &qword_2CDE8);
    }

    else
    {
    }

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      Strong[OBJC_IVAR___AXHapticMusicServer_currentHapticPlayerStarted] = 0;
    }
  }
}

void sub_1BE0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1BE78()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2B8B0();
  v25[1] = *(v2 - 8);
  v25[2] = v2;
  __chkstk_darwin(v2);
  v27 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2B800();
  v4 = *(v26 - 8);
  v5 = __chkstk_darwin(v26);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v25 - v8;
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 hapticMusicAlgorithmSelections];

  if (!v11 || (v28[0] = 0, sub_2BA90(), v11, (v12 = v28[0]) == 0))
  {

    v12 = &_swiftEmptyArrayStorage;
  }

  v28[0] = sub_2B9F0();
  v28[1] = v13;
  __chkstk_darwin(v28[0]);
  v25[-2] = v28;
  v14 = sub_24168(sub_2A49C, &v25[-4], v12);

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  if (v14)
  {
    v17 = sub_2B9C0();
    v18 = sub_2B9C0();
    v19 = [v16 URLForResource:v17 withExtension:v18];

    if (v19)
    {

      sub_2B7F0();

      sub_18EC8();
      (*(v4 + 8))(v9, v26);
      goto LABEL_9;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v20 = sub_2B9C0();
  v21 = sub_2B9C0();
  v22 = [v16 URLForResource:v20 withExtension:v21];

  if (!v22)
  {
    goto LABEL_16;
  }

  sub_2B7F0();

  sub_18EC8();
  (*(v4 + 8))(v7, v26);
LABEL_9:
  v23 = OBJC_IVAR___AXHapticMusicServer_players;
  swift_beginAccess();
  v24 = *(v1 + v23);
  if (!(v24 >> 62))
  {
    if (*(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)) < 1)
    {
      return;
    }

    goto LABEL_11;
  }

  if (sub_2BD60() >= 1)
  {
LABEL_11:
    sub_15820(0x7420656C706D6173, 0xEC0000006B636172);
  }
}

uint64_t sub_1C474(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), void *a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v78 = a8;
  v75 = a7;
  v74 = a6;
  v79 = a3;
  v76 = a1;
  v12 = sub_2B8F0();
  v77 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2B920();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2B8B0();
  v80 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v23 = &v67 - v22;
  v81 = a4;
  if (a2)
  {
    swift_errorRetain();
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v24 = v19;
    v25 = sub_25AC(v19, HMLog);
    swift_beginAccess();
    v26 = v80;
    (*(v80 + 16))(v23, v25, v24);
    swift_errorRetain();
    v27 = v79;
    v28 = sub_2B890();
    v29 = sub_2BB60();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412546;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v32;
      *(v30 + 12) = 2112;
      *(v30 + 14) = v27;
      *v31 = v32;
      v31[1] = v27;
      v33 = v27;
      _os_log_impl(&dword_0, v28, v29, "Error fetching track %@ %@", v30, 0x16u);
      sub_2CC4(&qword_391A8, &qword_2CDE8);
      swift_arrayDestroy();
    }

    (*(v26 + 8))(v23, v24);
    v81(0);
  }

  else
  {
    v35 = v21;
    v36 = v74;
    v69 = v18;
    v70 = v16;
    v71 = v14;
    v72 = v15;
    v73 = v12;
    v79 = a5;
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v37 = v19;
    v38 = sub_25AC(v19, HMLog);
    swift_beginAccess();
    v39 = v80;
    v40 = v35;
    (*(v80 + 16))(v35, v38, v37);
    v41 = v36;
    sub_29BF0(v36, v83);
    v42 = v78;

    v43 = sub_2B890();
    v44 = sub_2BB40();
    sub_29C28(v36);

    v45 = os_log_type_enabled(v43, v44);
    v46 = v81;
    if (v45)
    {
      v47 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v83[0] = v68;
      *v47 = 136315394;
      v48 = sub_25E4();
      v50 = sub_20958(v48, v49, v83);

      *(v47 + 4) = v50;
      v42 = v78;
      *(v47 + 12) = 2080;
      v51 = v75;
      *(v47 + 14) = sub_20958(v75, v42, v83);
      _os_log_impl(&dword_0, v43, v44, "fetched haptics %s %s", v47, 0x16u);
      swift_arrayDestroy();

      v46 = v81;

      (*(v39 + 8))(v40, v37);
      v52 = v51;
      v53 = v76;
    }

    else
    {

      (*(v39 + 8))(v35, v37);
      v53 = v76;
      v52 = v75;
    }

    sub_29BF0(v41, v83);

    Current = CFAbsoluteTimeGetCurrent();
    v55 = v41;
    v56 = OBJC_IVAR___AXHapticMusicServer_hapticCache;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = *&a9[v56];
    *&a9[v56] = 0x8000000000000000;
    sub_2341C(v53, v55, isUniquelyReferenced_nonNull_native, Current);
    sub_29C28(v55);
    *&a9[v56] = aBlock[0];
    swift_endAccess();
    v58 = *&a9[OBJC_IVAR___AXHapticMusicServer_queue];
    v59 = swift_allocObject();
    *(v59 + 16) = v53;
    *(v59 + 24) = v52;
    *(v59 + 32) = v42;
    *(v59 + 40) = v46;
    *(v59 + 48) = v79;
    *(v59 + 56) = a9;
    v60 = *(v55 + 16);
    *(v59 + 64) = *v55;
    *(v59 + 80) = v60;
    *(v59 + 96) = *(v55 + 32);
    *(v59 + 112) = *(v55 + 48);
    aBlock[4] = sub_2B64C;
    aBlock[5] = v59;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2B614;
    aBlock[3] = &unk_361C0;
    v61 = _Block_copy(aBlock);
    sub_29BF0(v55, v83);

    v62 = v58;

    v63 = a9;
    v64 = v69;
    sub_2B900();
    v83[0] = &_swiftEmptyArrayStorage;
    sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_2CC4(&qword_39168, &qword_2CDD0);
    sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
    v65 = v71;
    v66 = v73;
    sub_2BC80();
    sub_2BBE0();
    _Block_release(v61);

    (*(v77 + 8))(v65, v66);
    (*(v70 + 8))(v64, v72);
  }
}

void sub_1CD34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_2ACCC(0, &qword_395D0, SHHaptic_ptr);
  v5 = sub_2BAA0();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1CDE4(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), unint64_t a5, _BYTE *a6, _BYTE *a7)
{
  v73 = a6;
  v75 = a5;
  v76 = a4;
  v74 = a2;
  isEscapingClosureAtFileLocation = sub_2B8B0();
  v11 = *(isEscapingClosureAtFileLocation - 8);
  v12 = __chkstk_darwin(isEscapingClosureAtFileLocation);
  v14 = &v66[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v66[-v15];
  if (qword_39890 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v17 = sub_25AC(isEscapingClosureAtFileLocation, HMLog);
    swift_beginAccess();
    v18 = *(v11 + 16);
    v72 = v17;
    v71 = v11 + 16;
    v70 = v18;
    v18(v16, v17, isEscapingClosureAtFileLocation);

    v19 = sub_2B890();
    v20 = sub_2BB40();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v69 = a7;
      v22 = v21;
      v68 = swift_slowAlloc();
      v79[0] = v68;
      *v22 = 136315394;
      sub_2ACCC(0, &qword_395D0, SHHaptic_ptr);
      v23 = sub_2BAB0();
      v25 = sub_20958(v23, v24, v79);
      v67 = v20;
      v26 = a3;
      v27 = v25;

      *(v22 + 4) = v27;
      a3 = v26;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_20958(v74, v26, v79);
      _os_log_impl(&dword_0, v19, v67, "Fetched items: %s %s", v22, 0x16u);
      swift_arrayDestroy();

      a7 = v69;
    }

    v28 = *(v11 + 8);
    v28(v16, isEscapingClosureAtFileLocation);
    if (a1 >> 62)
    {
      break;
    }

    if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      return v76(0);
    }

LABEL_6:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v29 = sub_2BD00();
    }

    else
    {
      if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_30;
      }

      v29 = *(a1 + 32);
    }

    a1 = v29;
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v79[0] = 0;
    v30 = [a1 tracksWithError:v79];
    v31 = v79[0];
    if (v30)
    {
      v32 = v30;
      sub_2ACCC(0, &qword_395C8, SHHapticTrack_ptr);
      v33 = sub_2BAA0();
      v34 = v31;

      v35 = [a1 associatedSpatialTrackInformation];
      v36 = a3;
      v37 = v35;
      v16 = v73;
      sub_19390(v74, v36, v33, v35, v76, v75);

      if (!(v33 >> 62))
      {
        v38 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
LABEL_12:

        *(v19 + 16) = v38 > 0;
        goto LABEL_17;
      }

LABEL_30:
      v38 = sub_2BD60();
      goto LABEL_12;
    }

    v39 = isEscapingClosureAtFileLocation;
    v40 = v79[0];
    sub_2B7D0();

    v41 = v39;
    swift_willThrow();
    v70(v14, v72, v39);
    sub_29BF0(a7, v79);
    v74 = a1;
    v42 = a1;
    swift_errorRetain();
    v43 = sub_2B890();
    v44 = sub_2BB70();
    sub_29C28(a7);

    LODWORD(v72) = v44;
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v71 = v11;
      v46 = v45;
      v47 = swift_slowAlloc();
      v68 = v43;
      v48 = a7;
      v49 = v47;
      v50 = swift_slowAlloc();
      v79[0] = v50;
      *v46 = 136315650;
      v51 = sub_25E4();
      v70 = v41;
      v53 = sub_20958(v51, v52, v79);
      v69 = v14;
      v54 = v53;

      *(v46 + 4) = v54;
      *(v46 + 12) = 2112;
      *(v46 + 14) = v42;
      *v49 = v42;
      *(v46 + 22) = 2112;
      v55 = v42;
      swift_errorRetain();
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 24) = v56;
      v49[1] = v56;
      v57 = v68;
      _os_log_impl(&dword_0, v68, v72, "Couldn't load tracks: %s %@ %@", v46, 0x20u);
      sub_2CC4(&qword_391A8, &qword_2CDE8);
      swift_arrayDestroy();
      a7 = v48;

      sub_2566C(v50);

      v58 = v69;
      v59 = v70;
    }

    else
    {

      v58 = v14;
      v59 = v41;
    }

    v28(v58, v59);
    v76(0);

    v16 = v73;
    a1 = v74;
LABEL_17:
    v60 = *&v16[OBJC_IVAR___AXHapticMusicServer_ahapAvailableCacheQueue];
    v14 = swift_allocObject();
    *(v14 + 2) = v16;
    v61 = *(a7 + 1);
    *(v14 + 24) = *a7;
    *(v14 + 40) = v61;
    *(v14 + 56) = *(a7 + 2);
    *(v14 + 9) = *(a7 + 6);
    *(v14 + 10) = v19;
    a3 = swift_allocObject();
    *(a3 + 16) = sub_2A548;
    *(a3 + 24) = v14;
    aBlock[4] = sub_2B658;
    v78 = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1449C;
    aBlock[3] = &unk_35F40;
    v62 = _Block_copy(aBlock);
    v11 = v78;
    v63 = v60;
    v64 = v16;
    sub_29BF0(a7, v79);

    dispatch_sync(v63, v62);

    _Block_release(v62);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    v16 = a1;
  }

  else
  {
    v16 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  if (sub_2BD60())
  {
    result = sub_2BD60();
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  return v76(0);
}

void sub_1D668(char *a1, uint64_t a2, uint64_t a3)
{
  v49 = sub_2B8F0();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2B920();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2B8B0();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___AXHapticMusicServer_ahapAvailableCache;
  swift_beginAccess();
  v12 = *&a1[v11];
  v13 = *(v12 + 16);
  v43 = v8;
  if (v13 && (v14 = sub_20F00(a2), (v15 & 1) != 0))
  {
    v16 = *(*(v12 + 56) + 8 * v14);
    v17 = v16;
  }

  else
  {
    v16 = 0;
  }

  swift_endAccess();
  swift_beginAccess();
  v18 = [objc_allocWithZone(NSNumber) initWithBool:*(a3 + 16)];
  v19 = v18;
  if (v16)
  {
    if (v18)
    {
      sub_2ACCC(0, &qword_39148, NSNumber_ptr);
      v20 = sub_2BC60();

      if (v20)
      {
        return;
      }

      goto LABEL_13;
    }

    v19 = v16;
  }

  else if (!v18)
  {
    return;
  }

LABEL_13:
  swift_beginAccess();
  v21 = *(a3 + 16);
  v22 = objc_allocWithZone(NSNumber);
  sub_29BF0(a2, v51);
  v23 = [v22 initWithBool:v21];
  swift_beginAccess();
  sub_339C(v23, a2);
  swift_endAccess();
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v24 = v43;
  v25 = sub_25AC(v43, HMLog);
  swift_beginAccess();
  v26 = v42;
  (*(v42 + 16))(v10, v25, v24);
  sub_29BF0(a2, v51);

  v27 = sub_2B890();
  v28 = sub_2BB40();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 67109376;
    swift_beginAccess();
    *(v29 + 4) = *(a3 + 16);

    *(v29 + 8) = 2048;
    *(v29 + 10) = *a2;
    sub_29C28(a2);
    _os_log_impl(&dword_0, v27, v28, "Storing cache value %{BOOL}d, for %lld  ", v29, 0x12u);
  }

  else
  {
    sub_29C28(a2);
  }

  (*(v26 + 8))(v10, v24);
  v30 = *&a1[OBJC_IVAR___AXHapticMusicServer_ahapAvailableQueue];
  v31 = swift_allocObject();
  v32 = *(a2 + 16);
  *(v31 + 24) = *a2;
  *(v31 + 16) = a1;
  *(v31 + 40) = v32;
  *(v31 + 56) = *(a2 + 32);
  *(v31 + 72) = *(a2 + 48);
  aBlock[4] = sub_2A684;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2B614;
  aBlock[3] = &unk_35FB8;
  v33 = _Block_copy(aBlock);
  sub_29BF0(a2, v51);
  v34 = v30;
  v35 = a1;
  v36 = v44;
  sub_2B900();
  v51[0] = &_swiftEmptyArrayStorage;
  sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_2CC4(&qword_39168, &qword_2CDD0);
  sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
  v37 = v46;
  v38 = v49;
  sub_2BC80();
  sub_2BBE0();
  _Block_release(v33);

  (*(v48 + 8))(v37, v38);
  (*(v45 + 8))(v36, v47);

  swift_beginAccess();
  LODWORD(v36) = *(a3 + 16);
  v39 = objc_opt_self();
  v40 = [v39 sharedInstance];
  LODWORD(v38) = [v40 hapticMusicTrackAvailable];

  if (v36 != v38)
  {
    v41 = [v39 sharedInstance];
    swift_beginAccess();
    [v41 setHapticMusicTrackAvailable:*(a3 + 16)];

    sub_2B980();
    sub_2B970();
    sub_2B960();
  }
}

uint64_t sub_1DDE8(void *a1, uint64_t a2)
{
  v4 = sub_2CC4(&qword_39140, &qword_2CD98);
  __chkstk_darwin(v4 - 8);
  v6 = &v13[-v5 - 8];
  v7 = sub_2BB10();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = a1;
  v9 = *(a2 + 16);
  *(v8 + 40) = *a2;
  *(v8 + 56) = v9;
  *(v8 + 72) = *(a2 + 32);
  *(v8 + 88) = *(a2 + 48);
  v10 = a1;
  sub_29BF0(a2, v13);
  sub_C560(0, 0, v6, &unk_2D120, v8);
}

uint64_t sub_1DF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v6 = sub_2B8F0();
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();
  v7 = sub_2B920();
  v5[35] = v7;
  v5[36] = *(v7 - 8);
  v5[37] = swift_task_alloc();
  v8 = sub_2B8B0();
  v5[38] = v8;
  v5[39] = *(v8 - 8);
  v5[40] = swift_task_alloc();

  return (_swift_task_switch)(sub_1E098, 0, 0);
}

uint64_t sub_1E0C4()
{
  v1 = *(v0 + 328);
  swift_beginAccess();
  *(v0 + 336) = *(v1 + 112);

  return (_swift_task_switch)(sub_1E14C, 0, 0);
}

uint64_t sub_1E14C()
{
  v68 = v0;
  if (qword_39890 != -1)
  {
LABEL_28:
    swift_once();
  }

  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = v0[31];
  v5 = sub_25AC(v3, HMLog);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);

  sub_29BF0(v4, (v0 + 2));
  v6 = sub_2B890();
  v7 = sub_2BB40();
  sub_29C28(v4);

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[39];
    v65 = v0[40];
    v9 = v0[38];
    v10 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    *v10 = 136315394;
    v11 = sub_25E4();
    v13 = sub_20958(v11, v12, v67);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = sub_2B9B0();
    v16 = sub_20958(v14, v15, v67);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_0, v6, v7, "Notifying clients of haptic availability change: %s %s", v10, 0x16u);
    swift_arrayDestroy();

    (*(v8 + 8))(v65, v9);
  }

  else
  {
    v18 = v0[39];
    v17 = v0[40];
    v19 = v0[38];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[31];
  if (*v20)
  {
    v0[28] = *v20;
    v57 = sub_2BDB0();
    v58 = v21;
    goto LABEL_14;
  }

  v22 = v20[2];
  v57 = v20[1];
  if (!v57 && v22 == 0xE000000000000000)
  {
    v57 = 0;
LABEL_12:
    v58 = 0xE000000000000000;
    goto LABEL_14;
  }

  if (sub_2BDC0())
  {
    v57 = 0;
    goto LABEL_12;
  }

  v58 = v22;

LABEL_14:
  v23 = 0;
  v24 = v0[42];
  v25 = *(v24 + 64);
  v51 = v24 + 64;
  v26 = -1;
  v56 = v0[42];
  v27 = -1 << *(v56 + 32);
  if (-v27 < 64)
  {
    v26 = ~(-1 << -v27);
  }

  v28 = v26 & v25;
  v54 = OBJC_IVAR___AXHapticMusicServer_ahapAvailableQueue;
  v55 = v0[30];
  v50 = (63 - v27) >> 6;
  v53 = (v0[33] + 8);
  v52 = (v0[36] + 8);
  if ((v26 & v25) != 0)
  {
    while (1)
    {
      v29 = v23;
LABEL_22:
      v62 = v0[37];
      v63 = v0[34];
      v30 = v0[31];
      v64 = v0[32];
      v66 = v0[35];
      v31 = v0[30];
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v33 = v32 | (v29 << 6);
      v34 = (*(v56 + 48) + 16 * v33);
      v35 = *v34;
      v36 = v34[1];
      v37 = (*(v56 + 56) + 24 * v33);
      v38 = *v37;
      v39 = v37[1];
      v40 = v37[2];
      v59 = *(v55 + v54);
      v41 = swift_allocObject();
      *(v41 + 16) = v31;
      *(v41 + 24) = v57;
      *(v41 + 32) = v58;
      v43 = *(v30 + 16);
      v42 = *(v30 + 32);
      v44 = *(v30 + 48);
      *(v41 + 40) = *v30;
      *(v41 + 72) = v42;
      *(v41 + 56) = v43;
      *(v41 + 88) = v44;
      *(v41 + 96) = v35;
      *(v41 + 104) = v36;
      *(v41 + 112) = v38;
      *(v41 + 120) = v39;
      *(v41 + 128) = v40;
      v0[20] = sub_2A7F0;
      v0[21] = v41;
      v0[16] = _NSConcreteStackBlock;
      v0[17] = 1107296256;
      v0[18] = sub_2B614;
      v0[19] = &unk_36030;
      v61 = _Block_copy(v0 + 16);
      v45 = v40;

      sub_29BF0(v30, (v0 + 9));

      v60 = v45;
      v46 = v59;
      v47 = v31;

      sub_2B900();
      v0[29] = &_swiftEmptyArrayStorage;
      sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_2CC4(&qword_39168, &qword_2CDD0);
      sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
      sub_2BC80();
      sub_2BBE0();
      _Block_release(v61);

      (*v53)(v63, v64);
      (*v52)(v62, v66);

      if (!v28)
      {
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
LABEL_18:
    v29 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v29 >= v50)
    {
      break;
    }

    v28 = *(v51 + 8 * v29);
    ++v23;
    if (v28)
    {
      v23 = v29;
      goto LABEL_22;
    }
  }

  v48 = v0[1];

  return v48();
}

Swift::Void __swiftcall AXHapticMusicServer.updateSiriStatus()()
{
  v1 = v0;
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___AXHapticMusicServer_siriActivationSource;
  v7 = *&v1[OBJC_IVAR___AXHapticMusicServer_siriActivationSource];
  if (!v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = [v7 isEnabled];
  if (v8)
  {
    v9 = *&v1[v6];
    if (v9)
    {
      LOBYTE(v8) = [v9 isActive];
      goto LABEL_5;
    }

LABEL_12:
    __break(1u);
    return;
  }

LABEL_5:
  v10 = OBJC_IVAR___AXHapticMusicServer_siriActive;
  v1[OBJC_IVAR___AXHapticMusicServer_siriActive] = v8;
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v11 = sub_25AC(v2, HMLog);
  swift_beginAccess();
  (*(v3 + 16))(v5, v11, v2);
  v12 = v1;
  v13 = sub_2B890();
  v14 = sub_2BB40();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v1[v10];

    _os_log_impl(&dword_0, v13, v14, "Update siri status to: %{BOOL}d", v15, 8u);
  }

  else
  {

    v13 = v12;
  }

  (*(v3 + 8))(v5, v2);
  sub_4760(0x7320657461647075, 0xEB00000000697269);
}

Swift::Void __swiftcall AXHapticMusicServer.canActivateChanged(to:)(Swift::Bool to)
{
  v3 = sub_2B8F0();
  v16 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2B920();
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR___AXHapticMusicServer_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = to;
  *(v10 + 24) = v1;
  aBlock[4] = sub_256F0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2B614;
  aBlock[3] = &unk_34FA0;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v13 = v1;
  sub_2B900();
  v17 = &_swiftEmptyArrayStorage;
  sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_2CC4(&qword_39168, &qword_2CDD0);
  sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
  sub_2BC80();
  sub_2BBE0();
  _Block_release(v11);

  (*(v16 + 8))(v5, v3);
  (*(v6 + 8))(v8, v15);
}

void sub_1ED1C(char a1)
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v6 = sub_25AC(v2, HMLog);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2B890();
  v8 = sub_2BB40();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v7, v8, "Siri can activate change to: %{BOOL}d", v9, 8u);
  }

  (*(v3 + 8))(v5, v2);
  AXHapticMusicServer.updateSiriStatus()();
}

id AXHapticMusicServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t AXHapticMusicError.description.getter(uint64_t a1, void *a2)
{
  sub_2BCF0(22);

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  sub_2BA40(v5);
  return 0xD000000000000014;
}

unint64_t sub_1F1F0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2BCF0(22);

  v4._countAndFlagsBits = v1;
  v4._object = v2;
  sub_2BA40(v4);
  return 0xD000000000000014;
}

id HapticMusicSiriActionSource.init(delegate:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC19AXHapticMusicServer27HapticMusicSiriActionSource_hmDelegate] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HapticMusicSiriActionSource();
  return objc_msgSendSuper2(&v4, "initWithDelegate:", a1);
}

Swift::Void __swiftcall HapticMusicSiriActionSource.activeChangedTo(value:)(NSNumber value)
{
  v2 = v1;
  v4 = sub_2B8B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v8 = sub_25AC(v4, HMLog);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = value.super.super.isa;
  v10 = sub_2B890();
  v11 = sub_2BB70();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_0, v10, v11, "Siri active changed to: %@", v12, 0xCu);
    sub_2AF20(v13, &qword_391A8, &qword_2CDE8);
  }

  (*(v5 + 8))(v7, v4);
  if (*(v2 + OBJC_IVAR____TtC19AXHapticMusicServer27HapticMusicSiriActionSource_hmDelegate))
  {
    type metadata accessor for AXHapticMusicServer();
    if (swift_dynamicCastClass())
    {
      swift_unknownObjectRetain();
      AXHapticMusicServer.updateSiriStatus()();
      swift_unknownObjectRelease();
    }
  }
}

id HapticMusicSiriActionSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HapticMusicSiriActionSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HapticMusicSiriActionSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1F6AC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_2B9C0();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_2B7D0();

    swift_willThrow();
  }

  return v6;
}

id sub_1F788(uint64_t a1)
{
  type metadata accessor for Key(0);
  sub_254AC(&qword_395C0, type metadata accessor for Key, &unk_2D74C);
  isa = sub_2B990().super.isa;

  v7 = 0;
  v3 = [v1 initWithDictionary:isa error:&v7];

  if (v3)
  {
    v4 = v7;
  }

  else
  {
    v5 = v7;
    sub_2B7D0();

    swift_willThrow();
  }

  return v3;
}

void *sub_1F8AC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1F8E8(uint64_t a1, id *a2)
{
  result = sub_2B9D0();
  *a2 = 0;
  return result;
}

uint64_t sub_1F960(uint64_t a1, id *a2)
{
  v3 = sub_2B9E0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1F9E0@<X0>(uint64_t *a2@<X8>)
{
  sub_2B9F0();
  v3 = sub_2B9C0();

  *a2 = v3;
  return result;
}

uint64_t sub_1FA2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2B9F0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1FA58(uint64_t a1)
{
  v2 = sub_254AC(&qword_397A0, type metadata accessor for Name, &unk_2D420);
  v3 = sub_254AC(&qword_397A8, type metadata accessor for Name, &unk_2D3C0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1FB14(uint64_t a1)
{
  v2 = sub_254AC(&qword_396A8, type metadata accessor for SHMediaItemProperty, &unk_2D708);
  v3 = sub_254AC(&qword_39798, type metadata accessor for SHMediaItemProperty, &unk_2D55C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1FBD0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2B9C0();

  *a2 = v3;
  return result;
}

uint64_t sub_1FC18(uint64_t a1)
{
  v2 = sub_254AC(&qword_395C0, type metadata accessor for Key, &unk_2D74C);
  v3 = sub_254AC(&qword_39790, type metadata accessor for Key, &unk_2D668);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1FCD4()
{
  sub_2B9F0();
  v0 = sub_2BA60();

  return v0;
}

uint64_t sub_1FD10(uint64_t a1)
{
  sub_2B9F0();
  sub_2BA20();
}

Swift::Int sub_1FD64(uint64_t a1)
{
  sub_2B9F0();
  sub_2BE40();
  sub_2BA20();
  v1 = sub_2BE60();

  return v1;
}

uint64_t sub_1FDD8(void *a1, uint64_t *a2)
{
  v2 = sub_2B9F0();
  v4 = v3;
  if (v2 == sub_2B9F0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2BDC0();
  }

  return v7 & 1;
}

uint64_t sub_1FE60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2BDC0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1FEF0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1FFE8;

  return v6(a1);
}

uint64_t sub_1FFE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_200E0()
{
  v1 = v0;
  sub_2CC4(&qword_396B8, &qword_2D170);
  v2 = *v0;
  v3 = sub_2BD70();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_25098(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_2A5C4(v19, (*(v4 + 56) + 32 * v17));
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

uint64_t sub_20260(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2CC4(&qword_396B8, &qword_2D170);
  v35 = v4;
  result = sub_2BD80();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_2A5C4(v22, v36);
      }

      else
      {
        sub_25098(v22, v36);
        v23 = v21;
      }

      sub_2B9F0();
      sub_2BE40();
      sub_2BA20();
      v24 = sub_2BE60();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_2A5C4(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void sub_20530(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2BC90() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_2B9F0();
      sub_2BE40();
      v11 = v10;
      sub_2BA20();
      v12 = sub_2BE60();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_206F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_2B9F0();
      v8 = v7;
      if (v6 == sub_2B9F0() && v8 == v9)
      {
        break;
      }

      v11 = sub_2BDC0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_207FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2081C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2081C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2CC4(&qword_39568, &qword_2D0A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3)) | 1;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2ACCC(0, &qword_396B0, SHRange_ptr);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_20958(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20A24(v11, 0, 0, 1, a1, a2);
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
    sub_25098(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2566C(v11);
  return v7;
}

unint64_t sub_20A24(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_20B30(a5, a6);
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
    result = sub_2BD10();
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

char *sub_20B30(uint64_t a1, unint64_t a2)
{
  v3 = sub_20B7C(a1, a2);
  sub_20CAC(&off_34D80);
  return v3;
}

char *sub_20B7C(uint64_t a1, unint64_t a2)
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

  v6 = sub_20D98(v5, 0);
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

  result = sub_2BD10();
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
        v10 = sub_2BA50();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_20D98(v10, 0);
        result = sub_2BCE0();
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

uint64_t sub_20CAC(uint64_t result)
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

  result = sub_20E0C(result, v11, 1, v3);
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

void *sub_20D98(uint64_t a1, uint64_t a2)
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

  sub_2CC4(&qword_396F0, &qword_2D1E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20E0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2CC4(&qword_396F0, &qword_2D1E0);
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

unint64_t sub_20F00(Swift::UInt64 *a1)
{
  v2 = *a1;
  sub_2BE40();
  sub_2BE50(v2);
  sub_2BA20();
  sub_2BA20();
  sub_2BA20();
  v3 = sub_2BE60();

  return sub_21120(a1, v3);
}

unint64_t sub_20FC4(uint64_t a1, uint64_t a2)
{
  sub_2BE40();
  sub_2BA20();
  v4 = sub_2BE60();

  return sub_21270(a1, a2, v4);
}

unint64_t sub_2103C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2BCA0(*(v2 + 40));

  return sub_21328(a1, v4);
}

uint64_t sub_21080(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_2B9F0();
  sub_2BE40();
  sub_2BA20();
  v3 = sub_2BE60();

  return a2(a1, v3);
}

unint64_t sub_21120(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *a1;
    v8 = a1[2];
    v22 = a1[3];
    v23 = a1[1];
    v20 = a1[5];
    v21 = a1[4];
    v19 = a1[6];
    v9 = *(v2 + 48);
    do
    {
      v10 = (v9 + 56 * v5);
      if (*v10 == v7)
      {
        v11 = v10[3];
        v12 = v10[4];
        v13 = v10[5];
        v14 = v10[6];
        v15 = v10[1] == v23 && v10[2] == v8;
        if (v15 || (sub_2BDC0() & 1) != 0)
        {
          v16 = v11 == v22 && v12 == v21;
          if (v16 || (sub_2BDC0() & 1) != 0)
          {
            v17 = v13 == v20 && v14 == v19;
            if (v17 || (sub_2BDC0() & 1) != 0)
            {
              break;
            }
          }
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21270(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2BDC0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21328(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_2A5D4(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_2BCB0();
      sub_25044(v8);
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

double sub_213F0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_2103C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23948();
      v9 = v11;
    }

    sub_25044(*(v9 + 48) + 40 * v7);
    sub_2A5C4((*(v9 + 56) + 32 * v7), a2);
    sub_227B8(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21494(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2CC4(&qword_396E8, &qword_2D1C0);
  v37 = v4;
  result = sub_2BD80();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = v24[1];
      v38 = *v24;
      v39 = *v22;
      v26 = v24[2];
      if ((v37 & 1) == 0)
      {
        v27 = v26;
      }

      sub_2BE40();
      sub_2BA20();
      result = sub_2BE60();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v39;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v38;
      v17[1] = v25;
      v17[2] = v26;
      ++*(v7 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21764(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2CC4(&qword_39640, &qword_2D0F8);
  result = sub_2BD80();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_2A5C4((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_2A5D4(v23, &v36);
        sub_25098(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_2BCA0(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_2A5C4(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21A1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2CC4(&qword_396E0, &qword_2D1B0);
  v38 = v4;
  result = sub_2BD80();
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v38)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v41 = *(v27 + 32);
        v39 = v28;
        v40 = v29;
      }

      else
      {
        sub_2A5D4(v27, &v39);
      }

      sub_2BE40();
      sub_2BA20();
      result = sub_2BE60();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v39;
      v19 = v40;
      *(v17 + 32) = v41;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_21CEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2CC4(&qword_39580, &qword_2D0B8);
  v35 = v4;
  result = sub_2BD80();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_2BE40();
      sub_2BA20();
      result = sub_2BE60();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21F90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2CC4(&qword_39598, &qword_2D0D0);
  v39 = v4;
  result = sub_2BD80();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v5;
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
      v40 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 56 * v21);
      v44 = *v23;
      v24 = v23[2];
      v43 = v23[1];
      v25 = v23[4];
      v42 = v23[3];
      v26 = v23[6];
      v41 = v23[5];
      v27 = (v22 + 16 * v21);
      v28 = *v27;
      v29 = v27[1];
      if ((v39 & 1) == 0)
      {
      }

      sub_2BE40();
      sub_2BE50(v44);
      sub_2BA20();
      sub_2BA20();
      sub_2BA20();
      result = sub_2BE60();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 56 * v15);
      *v16 = v44;
      v16[1] = v43;
      v16[2] = v24;
      v16[3] = v42;
      v16[4] = v25;
      v16[5] = v41;
      v16[6] = v26;
      v17 = (*(v7 + 56) + 16 * v15);
      *v17 = v28;
      v17[1] = v29;
      ++*(v7 + 16);
      v5 = v38;
      v12 = v40;
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
        v40 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_222D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2CC4(&qword_39678, &qword_2D140);
  v37 = v4;
  result = sub_2BD80();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v17 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 56 * v20);
      v42 = *v22;
      v23 = v22[2];
      v41 = v22[1];
      v24 = v22[4];
      v40 = v22[3];
      v25 = v22[6];
      v39 = v22[5];
      v26 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_2BE40();
      sub_2BE50(v42);
      sub_2BA20();
      sub_2BA20();
      sub_2BA20();
      result = sub_2BE60();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 56 * v15);
      *v16 = v42;
      v16[1] = v41;
      v16[2] = v23;
      v16[3] = v40;
      v16[4] = v24;
      v16[5] = v39;
      v16[6] = v25;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v36;
      v12 = v38;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_225FC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2BC90() + 1) & ~v5;
    do
    {
      sub_2BE40();

      sub_2BA20();
      v10 = sub_2BE60();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_227B8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2BC90() + 1) & ~v5;
    do
    {
      sub_2A5D4(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_2BCA0(*(a2 + 40));
      result = sub_25044(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2295C(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v24 = a2 + 64;
    v23 = (sub_2BC90() + 1) & ~v5;
    do
    {
      v8 = *(*(v2 + 48) + 56 * v6);
      sub_2BE40();
      sub_2BE50(v8);

      sub_2BA20();
      sub_2BA20();
      sub_2BA20();
      v9 = sub_2BE60();

      v10 = v9 & v7;
      if (v3 >= v23)
      {
        if (v10 < v23)
        {
          v4 = v24;
          v2 = a2;
        }

        else
        {
          v4 = v24;
          v2 = a2;
          if (v3 >= v10)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v24;
        v2 = a2;
        if (v10 >= v23 || v3 >= v10)
        {
LABEL_11:
          v11 = *(v2 + 48);
          v12 = v11 + 56 * v3;
          v13 = (v11 + 56 * v6);
          if (v3 != v6 || v12 >= v13 + 56)
          {
            v14 = *v13;
            v15 = v13[1];
            v16 = v13[2];
            *(v12 + 48) = *(v13 + 6);
            *(v12 + 16) = v15;
            *(v12 + 32) = v16;
            *v12 = v14;
          }

          v17 = *(v2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(v2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v22;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_22BB4(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v24 = a2 + 64;
    v23 = (sub_2BC90() + 1) & ~v5;
    do
    {
      v8 = *(*(v2 + 48) + 56 * v6);
      sub_2BE40();
      sub_2BE50(v8);

      sub_2BA20();
      sub_2BA20();
      sub_2BA20();
      v9 = sub_2BE60();

      v10 = v9 & v7;
      if (v3 >= v23)
      {
        if (v10 < v23)
        {
          v4 = v24;
          v2 = a2;
        }

        else
        {
          v4 = v24;
          v2 = a2;
          if (v3 >= v10)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v24;
        v2 = a2;
        if (v10 >= v23 || v3 >= v10)
        {
LABEL_11:
          v11 = *(v2 + 48);
          v12 = v11 + 56 * v3;
          v13 = (v11 + 56 * v6);
          if (v3 != v6 || v12 >= v13 + 56)
          {
            v14 = *v13;
            v15 = v13[1];
            v16 = v13[2];
            *(v12 + 48) = *(v13 + 6);
            *(v12 + 16) = v15;
            *(v12 + 32) = v16;
            *v12 = v14;
          }

          v17 = *(v2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(v2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v22;
    ++*(v2 + 36);
  }

  return result;
}

void sub_22E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_20FC4(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_21494(v20, a6 & 1);
      v15 = sub_20FC4(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_2BDE0();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_237B0();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    v31 = v26[2];
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a4;
  v27[1] = a5;
  v28 = (v25[7] + 24 * v15);
  *v28 = a1;
  v28[1] = a2;
  v28[2] = a3;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v30;
}

_OWORD *sub_22FC8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2103C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_23948();
      goto LABEL_7;
    }

    sub_21764(v13, a3 & 1);
    v19 = sub_2103C(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2A5D4(a2, v21);
      return sub_23734(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_2BDE0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_2566C(v17);

  return sub_2A5C4(a1, v17);
}

void sub_23114(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20FC4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21A1C(v16, a4 & 1);
      v11 = sub_20FC4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_2BDE0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_23AEC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    sub_2A888(a1, v22);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = v21[7] + 40 * v11;
  v25 = *a1;
  v26 = a1[1];
  *(v24 + 32) = *(a1 + 4);
  *v24 = v25;
  *(v24 + 16) = v26;
  v27 = v21[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v28;
}

void sub_232A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20FC4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21CEC(v16, a4 & 1);
      v11 = sub_20FC4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_2BDE0();
        __break(1u);
_objc_release_x1:
        _objc_release_x1();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_23CA0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_2341C(uint64_t a1, Swift::UInt64 *a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20F00(a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_21F90(v16, a3 & 1);
      v11 = sub_20F00(a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_2BDE0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_23E0C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v24 = v21[6] + 56 * v11;
    v25 = *a2;
    v26 = *(a2 + 1);
    v27 = *(a2 + 2);
    *(v24 + 48) = a2[6];
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    *v24 = v25;
    v28 = v21[7] + 16 * v11;
    *v28 = a1;
    *(v28 + 8) = a4;
    v29 = v21[2];
    v15 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v15)
    {
      v21[2] = v30;
      return sub_29BF0(a2, v31);
    }

    goto LABEL_15;
  }

  v22 = v21[7] + 16 * v11;
  *v22 = a1;
  *(v22 + 8) = a4;
}

uint64_t sub_235B8(uint64_t a1, Swift::UInt64 *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_20F00(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * v9) = a1;

      return _objc_release_x1();
    }

    v19[(v9 >> 6) + 8] |= 1 << v9;
    v20 = v19[6] + 56 * v9;
    v21 = *a2;
    v22 = *(a2 + 1);
    v23 = *(a2 + 2);
    *(v20 + 48) = a2[6];
    *(v20 + 16) = v22;
    *(v20 + 32) = v23;
    *v20 = v21;
    *(v19[7] + 8 * v9) = a1;
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      return sub_29BF0(a2, v27);
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = v9;
    sub_23FC4();
    v9 = v17;
    goto LABEL_8;
  }

  sub_222D4(v14, a3 & 1);
  v9 = sub_20F00(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_2BDE0();
  __break(1u);
  return _objc_release_x1();
}

_OWORD *sub_23734(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_2A5C4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void sub_237B0()
{
  v1 = v0;
  sub_2CC4(&qword_396E8, &qword_2D1C0);
  v2 = *v0;
  v3 = sub_2BD70();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v20;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;
        v28 = v25;
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
}

void *sub_23948()
{
  v1 = v0;
  sub_2CC4(&qword_39640, &qword_2D0F8);
  v2 = *v0;
  v3 = sub_2BD70();
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_2A5D4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_25098(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_2A5C4(v22, (*(v4 + 56) + v17));
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

void sub_23AEC()
{
  v1 = v0;
  sub_2CC4(&qword_396E0, &qword_2D1B0);
  v2 = *v0;
  v3 = sub_2BD70();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_2A5D4(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

id sub_23CA0()
{
  v1 = v0;
  sub_2CC4(&qword_39580, &qword_2D0B8);
  v2 = *v0;
  v3 = sub_2BD70();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void sub_23E0C()
{
  v1 = v0;
  sub_2CC4(&qword_39598, &qword_2D0D0);
  v2 = *v0;
  v3 = sub_2BD70();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = 56 * v17;
        v19 = *(v2 + 48) + 56 * v17;
        v20 = *(v19 + 16);
        v21 = *(v19 + 24);
        v23 = *(v19 + 32);
        v22 = *(v19 + 40);
        v24 = *(v19 + 48);
        v17 *= 16;
        v25 = (*(v2 + 56) + v17);
        v26 = *v25;
        v27 = v25[1];
        v28 = *(v4 + 48) + v18;
        *v28 = *v19;
        *(v28 + 16) = v20;
        *(v28 + 24) = v21;
        *(v28 + 32) = v23;
        *(v28 + 40) = v22;
        *(v28 + 48) = v24;
        v29 = (*(v4 + 56) + v17);
        *v29 = v26;
        v29[1] = v27;
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
}

id sub_23FC4()
{
  v1 = v0;
  sub_2CC4(&qword_39678, &qword_2D140);
  v2 = *v0;
  v3 = sub_2BD70();
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
        v17 = v14 | (v8 << 6);
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = *(v2 + 48) + v19;
        v21 = *(v20 + 16);
        v22 = *(v20 + 24);
        v24 = *(v20 + 32);
        v23 = *(v20 + 40);
        v25 = *(v20 + 48);
        v26 = *(*(v2 + 56) + v17);
        v27 = *(v4 + 48) + v19;
        *v27 = *v20;
        *(v27 + 16) = v21;
        *(v27 + 24) = v22;
        *(v27 + 32) = v24;
        *(v27 + 40) = v23;
        *(v27 + 48) = v25;
        *(*(v4 + 56) + v17) = v26;

        result = v26;
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

uint64_t sub_24168(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_24214(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24234(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24234(void *result, int64_t a2, char a3, void *a4)
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

  sub_2CC4(&qword_39658, &qword_2D110);
  v10 = *(sub_2B800() - 8);
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
  v15 = *(sub_2B800() - 8);
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

unint64_t sub_2440C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2CC4(&qword_39678, &qword_2D140);
    v3 = sub_2BD90();

    for (i = (a1 + 88); ; i += 8)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      v19 = *(i - 7);
      *&v20 = v5;
      *(&v20 + 1) = v6;
      *&v21 = v8;
      *(&v21 + 1) = v7;
      v22 = v9;

      v11 = v10;
      result = sub_20F00(&v19);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 56 * result;
      v15 = v20;
      *v14 = v19;
      *(v14 + 16) = v15;
      *(v14 + 32) = v21;
      *(v14 + 48) = v22;
      *(v3[7] + 8 * result) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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

unint64_t sub_2457C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2CC4(&qword_396E8, &qword_2D1C0);
    v3 = sub_2BD90();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;
      v10 = *i;

      result = sub_20FC4(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 24 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_2469C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2CC4(&qword_39598, &qword_2D0D0);
    v3 = sub_2BD90();

    for (i = (a1 + 96); ; i += 9)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v8 = *(i - 4);
      v7 = *(i - 3);
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11 = *i;
      v20 = *(i - 4);
      *&v21 = v5;
      *(&v21 + 1) = v6;
      *&v22 = v8;
      *(&v22 + 1) = v7;
      v23 = v10;

      result = sub_20F00(&v20);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 56 * result;
      v15 = v21;
      *v14 = v20;
      *(v14 + 16) = v15;
      *(v14 + 32) = v22;
      *(v14 + 48) = v23;
      v16 = (v3[7] + 16 * result);
      *v16 = v9;
      v16[1] = v11;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
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

unint64_t sub_247FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2CC4(&qword_39640, &qword_2D0F8);
    v3 = sub_2BD90();
    v4 = a1 + 32;

    while (1)
    {
      sub_2B0F0(v4, v13, &qword_396F8, &qword_2D1E8);
      result = sub_2103C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2A5C4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_24938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2CC4(&qword_39670, &qword_2D138);
    v3 = sub_2BD90();
    v4 = a1 + 32;

    while (1)
    {
      sub_2B0F0(v4, &v13, &qword_39668, &qword_2D130);
      v5 = v13;
      v6 = v14;
      result = sub_20FC4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2A5C4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_24A68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2CC4(&qword_396B8, &qword_2D170);
    v3 = sub_2BD90();
    v4 = a1 + 32;

    while (1)
    {
      sub_2B0F0(v4, &v11, &qword_395B0, &qword_2D0E0);
      v5 = v11;
      result = sub_21080(v11, sub_206F8);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2A5C4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_24BA4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2CC4(a2, a3);
    v5 = sub_2BD90();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_20FC4(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

Swift::Int sub_24CA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2CC4(&qword_39708, &qword_2D1F8);
    v3 = sub_2BCD0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_2A5D4(v6 + 40 * v4, v19);
      result = sub_2BCA0(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_2A5D4(*(v3 + 48) + 40 * i, v18);
        v11 = sub_2BCB0();
        result = sub_25044(v18);
        if (v11)
        {
          sub_25044(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int _s19AXHapticMusicServerAAC48possibleRequiredEntitlementsForProcessingMessage14withIdentifierShys11AnyHashableVGSgSi_tFZ_0(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 4)
  {
    if (a1 != 1)
    {
      if (a1 == 4)
      {
        goto LABEL_8;
      }

      return v1;
    }

LABEL_7:
    sub_2CC4(&qword_39700, &qword_2D1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2CD50;
    sub_2BCC0();
    v1 = sub_24CA0(inited);
    swift_setDeallocating();
    sub_25044(inited + 32);
    return v1;
  }

  if (a1 == 5)
  {
LABEL_8:
    sub_2CC4(&qword_39700, &qword_2D1F0);
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_2CD60;
    sub_2BCC0();
    sub_2BCC0();
    v1 = sub_24CA0(v3);
    swift_setDeallocating();
    swift_arrayDestroy();
    return v1;
  }

  if (a1 == 6)
  {
    goto LABEL_7;
  }

  return v1;
}

uint64_t sub_25098(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_250F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_2513C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2B650;

  return sub_DE8C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_251E8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2B650;

  return sub_DCC0(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_252AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_25304()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2B650;

  return sub_D2F8(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_253C8()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_25494(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_254AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25518()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_25570()
{
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_C46C;

  return sub_C3A0(v6, v7, v8, v9, v2, v3, v4, v5);
}

uint64_t sub_2566C(void *a1)
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

uint64_t sub_256B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_25744(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25750(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25798(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_257E4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_257F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25854(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_258B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25900(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_2594C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25968(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_259B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25A10()
{
  result = qword_394F8;
  if (!qword_394F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_394F8);
  }

  return result;
}

void sub_25A64()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(type metadata accessor for HapticMusicSiriActionSource()) initWithDelegate:v1];
  v3 = *(v1 + OBJC_IVAR___AXHapticMusicServer_siriActivationSource);
  *(v1 + OBJC_IVAR___AXHapticMusicServer_siriActivationSource) = v2;

  sub_7140();
  sub_4760(0x696C616974696E69, 0xEE006E6F6974617ALL);
}

unint64_t sub_25AD8()
{
  result = qword_39518;
  if (!qword_39518)
  {
    sub_2ACCC(255, &qword_39120, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39518);
  }

  return result;
}

uint64_t sub_25B40(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2D0C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25B9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_25D2C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_25DE8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___AXHapticMusicServer_mediaDomain);
  if (v1)
  {
    v1 = [v1 data];
  }

  v2 = v1;
  sub_432C(v1);
}

uint64_t sub_25E90()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_25F00()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR___AXHapticMusicServer_ahapAvailableCache;
  swift_beginAccess();
  *(v1 + v2) = &_swiftEmptyDictionarySingleton;
}

uint64_t sub_25F60(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CC4(&qword_39540, &qword_2D088);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25FE0()
{
  v1 = *(v0 + 16);
  sub_2CC4(&qword_39550, &qword_2D090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2CD50;
  *(inited + 32) = 0x6567617355;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:v1];
  v3 = sub_24BA4(inited, &qword_39560, &qword_2D0A0);
  swift_setDeallocating();
  sub_2AF20(inited + 32, &qword_39558, &qword_2D098);
  return v3;
}

uint64_t sub_260E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2614C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[52] = a5;
  v6[53] = a6;
  v6[50] = a3;
  v6[51] = a4;
  v6[48] = a1;
  v6[49] = a2;
  v7 = sub_2B8B0();
  v6[54] = v7;
  v6[55] = *(v7 - 8);
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();

  return (_swift_task_switch)(sub_26220, 0, 0);
}

uint64_t sub_26220()
{
  v39 = v0;
  v1 = v0[50];
  v2 = v0[51];
  v3 = objc_allocWithZone(LSApplicationRecord);

  v4 = sub_1F6AC(v1, v2, 0);
  v0[58] = v4;
  v5 = v0[50];
  v6 = v0[51];
  v8 = v0[48];
  v7 = v0[49];
  v9 = AXApplicationSupportsHapticMusic();
  sub_2CC4(&qword_39660, &qword_2D128);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2CD40;
  *(inited + 32) = 0x6574726F70707573;
  *(inited + 40) = 0xE900000000000064;
  *(inited + 48) = v9;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 1684632949;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v8;
  *(inited + 104) = v7;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 168) = &type metadata for String;
  *(inited + 136) = 0x800000000002D950;
  *(inited + 144) = v5;
  *(inited + 152) = v6;

  v11 = sub_24938(inited);
  swift_setDeallocating();
  sub_2CC4(&qword_39668, &qword_2D130);
  swift_arrayDestroy();
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v12 = v0[57];
  v14 = v0[54];
  v13 = v0[55];
  v15 = sub_25AC(v14, HMLog);
  v0[59] = v15;
  swift_beginAccess();
  v16 = *(v13 + 16);
  v0[60] = v16;
  v0[61] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v12, v15, v14);

  v17 = sub_2B890();
  v18 = sub_2BB40();

  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[57];
  v22 = v0[54];
  v21 = v0[55];
  if (v19)
  {
    v37 = v0[57];
    v23 = v0[52];
    v24 = v0[53];
    v25 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v25 = 136315394;
    *(v25 + 4) = sub_20958(v23, v24, v38);
    *(v25 + 12) = 2080;
    v26 = sub_2B9B0();
    v28 = sub_20958(v26, v27, v38);

    *(v25 + 14) = v28;
    _os_log_impl(&dword_0, v17, v18, "App supported: %s %s", v25, 0x16u);
    swift_arrayDestroy();

    v29 = *(v21 + 8);
    v29(v37, v22);
  }

  else
  {

    v29 = *(v21 + 8);
    v29(v20, v22);
  }

  v0[62] = v29;
  v30 = sub_2B9C0();
  v31 = [objc_opt_self() clientMessengerWithIdentifier:v30];
  v0[63] = v31;

  if (v31)
  {
    sub_E0D0(v11);

    isa = sub_2B990().super.isa;
    v0[64] = isa;

    v33 = [objc_opt_self() mainAccessQueue];
    v0[65] = v33;
    v0[2] = v0;
    v0[7] = v0 + 46;
    v0[3] = sub_267B0;
    v34 = swift_continuation_init();
    v0[39] = sub_2CC4(&qword_396D0, &qword_2D1A0);
    v0[32] = _NSConcreteStackBlock;
    v0[33] = 1107296256;
    v0[34] = sub_E684;
    v0[35] = &unk_362D8;
    v0[36] = v34;
    [v31 sendAsynchronousMessage:isa withIdentifier:5 targetAccessQueue:v33 completionRequiresWritingBlock:0 completion:v0 + 32];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_267B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 528) = v1;
  if (v1)
  {
    v2 = sub_26954;
  }

  else
  {
    v2 = sub_268C0;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_268C0()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  v3 = *(v0 + 464);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26954()
{
  v25 = v0;
  v1 = *(v0 + 520);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v4 = *(v0 + 480);
  v5 = *(v0 + 472);
  v6 = *(v0 + 448);
  v7 = *(v0 + 432);
  swift_willThrow();

  v4(v6, v5, v7);
  swift_errorRetain();
  v8 = sub_2B890();
  v9 = sub_2BB60();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 464);
    v22 = *(v0 + 448);
    v23 = *(v0 + 496);
    v21 = *(v0 + 432);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_2BDF0();
    v15 = sub_20958(v13, v14, &v24);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v8, v9, "Error sending message: %s", v11, 0xCu);
    sub_2566C(v12);

    v23(v22, v21);
  }

  else
  {
    v16 = *(v0 + 496);
    v17 = *(v0 + 448);
    v18 = *(v0 + 432);

    v16(v17, v18);
  }

  v19 = *(v0 + 8);

  return v19();
}

unint64_t sub_26B90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2CC4(&qword_396C0, &qword_2D178);
    v3 = sub_2BD90();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_21080(v6, sub_206F8);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_26C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 361) = a5;
  *(v5 + 288) = a3;
  *(v5 + 296) = a4;
  *(v5 + 272) = a1;
  *(v5 + 280) = a2;
  v6 = sub_2B8B0();
  *(v5 + 304) = v6;
  *(v5 + 312) = *(v6 - 8);
  *(v5 + 320) = swift_task_alloc();

  return (_swift_task_switch)(sub_26D64, 0, 0);
}

uint64_t sub_26D64()
{
  v20 = v0;
  v1 = *(v0 + 296);
  sub_2A5D4(*(v0 + 288), v0 + 144);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v18[0] = &_swiftEmptyDictionarySingleton;
  sub_23114((v0 + 144), 1684632949, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  if (*v1 < 1)
  {
    v3 = *(*(v0 + 296) + 8);
  }

  else
  {
    *(v0 + 264) = *v1;
    v3 = sub_2BDB0();
    v5 = v4;
  }

  v6 = *(v0 + 361);
  *(v0 + 232) = v3;
  *(v0 + 240) = v5;
  sub_2BCC0();
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v19 = &_swiftEmptyDictionarySingleton;
  sub_23114(v18, 1701080931, 0xE400000000000000, v7);
  v8 = v19;
  *(v0 + 360) = v6;
  sub_2BCC0();
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v19 = v8;
  sub_23114(v18, 0x657669746361, 0xE600000000000000, v9);
  v10 = v19;
  v11 = sub_2B9C0();
  v12 = [objc_opt_self() clientMessengerWithIdentifier:v11];
  *(v0 + 328) = v12;

  if (v12)
  {
    sub_E398(v10);

    isa = sub_2B990().super.isa;
    *(v0 + 336) = isa;

    v14 = [objc_opt_self() mainAccessQueue];
    *(v0 + 344) = v14;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 248;
    *(v0 + 24) = sub_270BC;
    v15 = swift_continuation_init();
    *(v0 + 136) = sub_2CC4(&qword_396D0, &qword_2D1A0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_E684;
    *(v0 + 104) = &unk_36210;
    *(v0 + 112) = v15;
    [v12 sendAsynchronousMessage:isa withIdentifier:3 targetAccessQueue:v14 completionRequiresWritingBlock:0 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_270BC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 352) = v1;
  if (v1)
  {
    v2 = sub_27248;
  }

  else
  {
    v2 = sub_271CC;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_271CC()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_27248()
{
  v22 = v0;
  v1 = v0[43];
  v3 = v0[41];
  v2 = v0[42];
  swift_willThrow();

  if (qword_39890 != -1)
  {
    swift_once();
  }

  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[38];
  v7 = sub_25AC(v6, HMLog);
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);
  swift_errorRetain();
  v8 = sub_2B890();
  v9 = sub_2BB60();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[39];
  v11 = v0[40];
  v13 = v0[38];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v16 = sub_2BDF0();
    v18 = sub_20958(v16, v17, &v21);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v8, v9, "Error sending message: %s", v14, 0xCu);
    sub_2566C(v15);

    (*(v12 + 8))(v11, v13);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v19 = v0[1];

  return v19();
}

void sub_2748C(char *a1, void *a2)
{
  if (a1)
  {
    v3 = *&a1[OBJC_IVAR___AXHapticMusicServer_notificationTimer];
    v4 = a1;
    if (v3)
    {
      v10 = v4;
      v5 = swift_allocObject();
      *(v5 + 16) = a2;
      *(v5 + 24) = v10;
      aBlock[4] = sub_27920;
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2B614;
      aBlock[3] = &unk_35900;
      v6 = _Block_copy(aBlock);
      v7 = a2;
      v8 = v10;
      v9 = v3;

      [v9 afterDelay:v6 processBlock:1.0];

      _Block_release(v6);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_275CC(char *a1)
{
  v2 = sub_2B8F0();
  v17 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2B920();
  v15 = *(v5 - 8);
  v16 = v5;
  result = __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = *&a1[OBJC_IVAR___AXHapticMusicServer_queue];
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    v11 = a1;
    aBlock[4] = sub_278C4;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2B614;
    aBlock[3] = &unk_35888;
    v12 = _Block_copy(aBlock);
    v13 = v9;
    v14 = v11;
    sub_2B900();
    v18 = &_swiftEmptyArrayStorage;
    sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_2CC4(&qword_39168, &qword_2CDD0);
    sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
    sub_2BC80();
    sub_2BBE0();
    _Block_release(v12);

    (*(v17 + 8))(v4, v2);
    (*(v15 + 8))(v8, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_278E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_27928()
{
  v1 = *(v0 + 24);
  sub_2BCF0(19);
  v4._countAndFlagsBits = 0x6163696669746F6ELL;
  v4._object = 0xEE00203A6E6F6974;
  sub_2BA40(v4);
  v2 = v1;
  sub_2CC4(&qword_39570, &qword_2D0B0);
  v5._countAndFlagsBits = sub_2BA00();
  sub_2BA40(v5);

  v6._countAndFlagsBits = 32;
  v6._object = 0xE100000000000000;
  sub_2BA40(v6);
  CFAbsoluteTimeGetCurrent();
  sub_2BB20();
  sub_4760(0, 0xE000000000000000);
}

uint64_t sub_27A48()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_27AB4()
{

  return _swift_deallocObject(v0, 72, 7);
}

void sub_27AFC(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v67 = a3;
  v68 = a2;
  v8 = sub_2B8B0();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v72 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v77 = &v64 - v13;
  v14 = __chkstk_darwin(v12);
  v69 = &v64 - v15;
  __chkstk_darwin(v14);
  v17 = &v64 - v16;
  if (qword_39890 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v18 = sub_25AC(v8, HMLog);
    swift_beginAccess();
    v19 = *(v9 + 16);
    v84 = v18;
    v83 = v9 + 16;
    v82 = v19;
    v19(v17, v18, v8);
    v20 = a1;
    v21 = sub_2B890();
    v22 = sub_2BB40();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = a4;
      v24 = a5;
      v25 = v9;
      v26 = swift_slowAlloc();
      *v26 = 67109120;
      *(v26 + 4) = *(&v20->isa + OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying);

      _os_log_impl(&dword_0, v21, v22, "Handling pause state. Haptic track is playing: %{BOOL}d", v26, 8u);
      v9 = v25;
      a5 = v24;
      a4 = v23;
    }

    else
    {

      v21 = v20;
    }

    v27 = *(v9 + 8);
    v9 += 8;
    v81 = v27;
    v27(v17, v8);
    v28 = OBJC_IVAR___AXHapticMusicServer_players;
    swift_beginAccess();
    v74 = v20;
    a1 = *(&v20->isa + v28);
    v29 = v77;
    v17 = a1 >> 62 ? sub_2BD60() : *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    v30 = v72;
    if (!v17)
    {
      break;
    }

    v65 = a4;
    v66 = a5;
    v76 = OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying;
    v80 = a1 & 0xC000000000000001;
    v73 = a1 & 0xFFFFFFFFFFFFFF8;

    a4 = 0;
    *&v31 = 136315138;
    v70 = v31;
    v32 = v74;
    v71 = v8;
    v79 = a1;
    v78 = v17;
    while (v80)
    {
      a5 = sub_2BD00();
      v33 = (a4 + 1);
      if (__OFADD__(a4, 1))
      {
        goto LABEL_34;
      }

LABEL_18:
      aBlock[0] = 0;
      v34 = [a5 pauseAtTime:aBlock error:0.0];
      v35 = aBlock[0];
      if (v34)
      {
        *(&v32->isa + v76) = 0;
        v82(v29, v84, v8);
        v36 = v35;
        v37 = sub_2B890();
        v38 = sub_2BB40();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_0, v37, v38, "Haptics Paused", v39, 2u);
          v29 = v77;

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v81(v29, v8);
      }

      else
      {
        v40 = aBlock[0];
        sub_2B7D0();

        swift_willThrow();
        v82(v30, v84, v8);
        swift_errorRetain();
        v41 = v30;
        v42 = sub_2B890();
        v43 = sub_2BB60();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          aBlock[0] = v75;
          *v44 = v70;
          swift_getErrorValue();
          v45 = sub_2BDF0();
          v47 = v42;
          v48 = v9;
          v49 = sub_20958(v45, v46, aBlock);

          *(v44 + 4) = v49;
          v9 = v48;
          v50 = v47;
          _os_log_impl(&dword_0, v47, v43, "Failed to pause haptics. %s", v44, 0xCu);
          sub_2566C(v75);
          v32 = v74;

          v8 = v71;

          swift_unknownObjectRelease();

          v30 = v72;
          v81(v72, v8);
        }

        else
        {
          swift_unknownObjectRelease();

          v81(v41, v8);
          v30 = v41;
        }

        v29 = v77;
      }

      v17 = v78;
      ++a4;
      a1 = v79;
      if (v33 == v78)
      {

        a5 = v66;
        a4 = v65;
        goto LABEL_26;
      }
    }

    if (a4 >= *(v73 + 16))
    {
      goto LABEL_35;
    }

    a5 = *(a1 + 8 * a4 + 32);
    swift_unknownObjectRetain();
    v33 = (a4 + 1);
    if (!__OFADD__(a4, 1))
    {
      goto LABEL_18;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

LABEL_26:
  v51 = v68;
  sub_97B0();
  *(v51 + OBJC_IVAR___AXHapticMusicServer_pauseShouldCancelEngineStartup) = 0;

  v52 = sub_2BA30();

  if (v52)
  {
    v53 = 20.0;
  }

  else
  {
    v53 = 1.0;
  }

  v54 = v69;
  v82(v69, v84, v8);
  v55 = sub_2B890();
  v56 = sub_2BB40();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 134217984;
    *(v57 + 4) = v53;
    _os_log_impl(&dword_0, v55, v56, "Engine shutdown in %f", v57, 0xCu);
  }

  v81(v54, v8);
  v58 = v74;
  v59 = *(&v74->isa + OBJC_IVAR___AXHapticMusicServer_shutdownTimer);
  if (v59)
  {
    v60 = swift_allocObject();
    v60[2] = v58;
    aBlock[4] = a4;
    aBlock[5] = v60;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2B614;
    aBlock[3] = a5;
    v61 = _Block_copy(aBlock);
    v62 = v58;
    v63 = v59;

    [v63 afterDelay:v61 processBlock:v53];
    _Block_release(v61);
  }
}

void sub_28404(void *a1, uint64_t a2)
{
  v55[1] = a2;
  v3 = sub_2B8B0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v55 - v9;
  v11 = __chkstk_darwin(v8);
  v56 = v55 - v12;
  __chkstk_darwin(v11);
  v14 = v55 - v13;
  if (qword_39890 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v15 = sub_25AC(v3, HMLog);
    swift_beginAccess();
    v16 = *(v4 + 16);
    v71 = v15;
    v70 = v4 + 16;
    v69 = v16;
    v16(v14, v15, v3);
    v17 = a1;
    v18 = sub_2B890();
    v19 = sub_2BB40();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = *(&v17->isa + OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying);

      _os_log_impl(&dword_0, v18, v19, "Handling pause state. Haptic track is playing: %{BOOL}d", v20, 8u);
    }

    else
    {

      v18 = v17;
    }

    v21 = *(v4 + 8);
    v4 += 8;
    v68 = v21;
    v21(v14, v3);
    v22 = OBJC_IVAR___AXHapticMusicServer_players;
    swift_beginAccess();
    v14 = *(&v17->isa + v22);
    if (!(v14 >> 62))
    {
      a1 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
      if (!a1)
      {
        break;
      }

      goto LABEL_7;
    }

    a1 = sub_2BD60();
    if (!a1)
    {
      break;
    }

LABEL_7:
    v62 = OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying;
    v67 = v14 & 0xC000000000000001;
    v60 = v14 & 0xFFFFFFFFFFFFFF8;

    v23 = 0;
    *&v24 = 136315138;
    v58 = v24;
    v64 = v17;
    v59 = v3;
    v63 = v10;
    v66 = v14;
    v65 = a1;
    v57 = v7;
    while (v67)
    {
      v25 = sub_2BD00();
      v26 = (v23 + 1);
      if (__OFADD__(v23, 1))
      {
        goto LABEL_33;
      }

LABEL_17:
      aBlock[0] = 0;
      v27 = [v25 pauseAtTime:aBlock error:0.0];
      v28 = aBlock[0];
      if (v27)
      {
        *(&v17->isa + v62) = 0;
        v69(v10, v71, v3);
        v29 = v28;
        v30 = sub_2B890();
        v31 = sub_2BB40();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_0, v30, v31, "Haptics Paused", v32, 2u);
          v17 = v64;

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v68(v10, v3);
      }

      else
      {
        v33 = aBlock[0];
        sub_2B7D0();

        swift_willThrow();
        v69(v7, v71, v3);
        swift_errorRetain();
        v34 = v7;
        v35 = sub_2B890();
        v36 = sub_2BB60();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          aBlock[0] = v61;
          *v37 = v58;
          swift_getErrorValue();
          v38 = sub_2BDF0();
          v40 = v35;
          v41 = v4;
          v42 = sub_20958(v38, v39, aBlock);

          *(v37 + 4) = v42;
          v4 = v41;
          v43 = v40;
          _os_log_impl(&dword_0, v40, v36, "Failed to pause haptics. %s", v37, 0xCu);
          sub_2566C(v61);
          v3 = v59;

          v17 = v64;

          swift_unknownObjectRelease();

          v7 = v57;
          v68(v57, v3);
        }

        else
        {
          swift_unknownObjectRelease();

          v68(v34, v3);
          v7 = v34;
        }

        v10 = v63;
      }

      v14 = v66;
      a1 = v65;
      ++v23;
      if (v26 == v65)
      {

        goto LABEL_25;
      }
    }

    if (v23 >= *(v60 + 16))
    {
      goto LABEL_34;
    }

    v25 = *(v14 + 8 * v23 + 32);
    swift_unknownObjectRetain();
    v26 = (v23 + 1);
    if (!__OFADD__(v23, 1))
    {
      goto LABEL_17;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_25:
  sub_97B0();

  v44 = sub_2BA30();

  if (v44)
  {
    v45 = 20.0;
  }

  else
  {
    v45 = 1.0;
  }

  v46 = v56;
  v69(v56, v71, v3);
  v47 = sub_2B890();
  v48 = sub_2BB40();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 134217984;
    *(v49 + 4) = v45;
    _os_log_impl(&dword_0, v47, v48, "Engine shutdown in %f", v49, 0xCu);
  }

  v68(v46, v3);
  v50 = *(&v17->isa + OBJC_IVAR___AXHapticMusicServer_shutdownTimer);
  if (v50)
  {
    v51 = swift_allocObject();
    v51[2] = v17;
    aBlock[4] = sub_2B6F0;
    aBlock[5] = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2B614;
    aBlock[3] = &unk_36260;
    v52 = _Block_copy(aBlock);
    v53 = v17;
    v54 = v50;

    [v54 afterDelay:v52 processBlock:v45];
    _Block_release(v52);
  }
}

void sub_28CAC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6, double a7)
{
  v131 = a4;
  v13 = sub_2B8F0();
  v118 = *(v13 - 8);
  v119 = v13;
  __chkstk_darwin(v13);
  v116 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_2B920();
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v114 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2B8B0();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v124 = (&v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v18);
  v120 = &v113 - v21;
  v22 = __chkstk_darwin(v20);
  v122 = &v113 - v23;
  __chkstk_darwin(v22);
  v25 = &v113 - v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a5;
  *(v26 + 24) = a6;
  v130 = v26;
  v27 = qword_39890;
  v125 = a5;

  v126 = a6;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = sub_25AC(v16, HMLog);
  swift_beginAccess();
  v29 = *(v17 + 16);
  v128 = v17 + 16;
  v129 = v28;
  v127 = v29;
  v29(v25, v28, v16);
  sub_29BF0(a3, v139);
  v30 = v25;
  v31 = sub_2B890();
  v32 = sub_2BB40();
  sub_29C28(a3);
  v33 = os_log_type_enabled(v31, v32);
  v123 = a2;
  v121 = a1;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v139[0] = v35;
    *v34 = 136315394;
    v113 = v30;
    v36 = sub_25E4();
    v38 = v17;
    v39 = v16;
    v40 = a3;
    v41 = sub_20958(v36, v37, v139);

    *(v34 + 4) = v41;
    a3 = v40;
    v16 = v39;
    v17 = v38;
    *(v34 + 12) = 2048;
    *(v34 + 14) = a7;
    _os_log_impl(&dword_0, v31, v32, "Fetching haptic track for: %s, duration: %f", v34, 0x16u);
    sub_2566C(v35);

    v42 = *(v38 + 8);
    v42(v113, v16);
  }

  else
  {

    v42 = *(v17 + 8);
    v42(v30, v16);
  }

  v43 = *a3;
  if (*a3 != 99999999)
  {
    v140[0] = *(a3 + 8);
    v138 = 0;
    v48 = v131;
    v49 = *&v131[OBJC_IVAR___AXHapticMusicServer_ahapAvailableCacheQueue];
    v50 = swift_allocObject();
    *(v50 + 16) = &v138;
    *(v50 + 24) = v48;
    v51 = *(a3 + 16);
    *(v50 + 32) = *a3;
    *(v50 + 48) = v51;
    *(v50 + 64) = *(a3 + 32);
    *(v50 + 80) = *(a3 + 48);
    v52 = swift_allocObject();
    *(v52 + 16) = sub_2A18C;
    *(v52 + 24) = v50;
    v113 = v50;
    v136 = sub_2A31C;
    v137 = v52;
    v132 = _NSConcreteStackBlock;
    v133 = 1107296256;
    v134 = sub_1449C;
    v135 = &unk_35E00;
    v53 = _Block_copy(&v132);
    v124 = a3;
    sub_29BF0(a3, v139);
    sub_2A344(v140, v139);
    v54 = v49;
    v55 = v48;

    dispatch_sync(v54, v53);

    _Block_release(v53);
    LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

    if (v53)
    {
      __break(1u);
      return;
    }

    v56 = v124;
    if (v138)
    {
      v57 = v55;
      v58 = v138;
      if (![v58 BOOLValue])
      {
        sub_2A3A0(v140);
        v127(v122, v129, v16);
        sub_29BF0(v56, v139);
        v97 = sub_2B890();
        v98 = sub_2BB40();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = v56;
          v101 = v99;
          *v99 = 134217984;
          *(v99 + 4) = v43;
          sub_29C28(v100);
          _os_log_impl(&dword_0, v97, v98, "Not requesting %lld again, it's already cached as not available", v101, 0xCu);
        }

        else
        {
          sub_29C28(v56);
        }

        v42(v122, v16);
        sub_15B38(0, v125, v126);

        goto LABEL_29;
      }

      v55 = v57;
    }

    v59 = OBJC_IVAR___AXHapticMusicServer_hapticCache;
    swift_beginAccess();
    v60 = *&v55[v59];
    if (*(v60 + 16))
    {
      v61 = sub_20F00(v56);
      if (v62)
      {
        v126 = v55;
        v131 = v17;
        v63 = *(*(v60 + 56) + 16 * v61);
        swift_endAccess();
        sub_2A3A0(v140);
        v64 = v120;
        v127(v120, v129, v16);
        sub_29BF0(v56, v139);
        v65 = v123;

        v66 = sub_2B890();
        v67 = sub_2BB40();
        sub_29C28(v56);

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v129 = v63;
          v69 = v68;
          v70 = swift_slowAlloc();
          v128 = v16;
          v139[0] = v70;
          *v69 = 136315394;
          v71 = sub_25E4();
          v73 = sub_20958(v71, v72, v139);

          *(v69 + 4) = v73;
          v74 = v123;
          v56 = v124;
          *(v69 + 12) = 2080;
          v75 = v121;
          *(v69 + 14) = sub_20958(v121, v74, v139);
          _os_log_impl(&dword_0, v66, v67, "Processing track from cache %s %s", v69, 0x16u);
          swift_arrayDestroy();
          v65 = v123;

          v63 = v129;

          v42(v120, v128);
        }

        else
        {

          v42(v64, v16);
          v75 = v121;
        }

        v102 = v126;
        v103 = *(v126 + OBJC_IVAR___AXHapticMusicServer_queue);
        v104 = swift_allocObject();
        *(v104 + 16) = v63;
        *(v104 + 24) = v75;
        *(v104 + 32) = v65;
        *(v104 + 40) = sub_2A180;
        *(v104 + 48) = v130;
        *(v104 + 56) = v102;
        v105 = *(v56 + 16);
        *(v104 + 64) = *v56;
        *(v104 + 80) = v105;
        *(v104 + 96) = *(v56 + 32);
        *(v104 + 112) = *(v56 + 48);
        v136 = sub_2A498;
        v137 = v104;
        v132 = _NSConcreteStackBlock;
        v133 = 1107296256;
        v134 = sub_2B614;
        v135 = &unk_35EA0;
        v106 = _Block_copy(&v132);
        sub_29BF0(v56, v139);
        v107 = v102;

        v108 = v103;
        v109 = v114;
        sub_2B900();
        v139[0] = &_swiftEmptyArrayStorage;
        sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_2CC4(&qword_39168, &qword_2CDD0);
        sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0, &protocol conformance descriptor for [A]);
        v110 = v116;
        v111 = v119;
        sub_2BC80();
        sub_2BBE0();
        _Block_release(v106);

        (*(v118 + 8))(v110, v111);
        (*(v115 + 8))(v109, v117);

        v96 = v138;
        goto LABEL_32;
      }
    }

    swift_endAccess();
    if (v43)
    {
      v76 = v55;
      sub_2A3A0(v140);
      sub_2ACCC(0, &qword_395A0, SHMediaItem_ptr);
      sub_2CC4(&qword_395A8, &qword_2D0D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2CD60;
      *(inited + 32) = SHMediaItemAppleMusicID;
      v139[0] = v43;
      v78 = SHMediaItemAppleMusicID;
      *(inited + 40) = sub_2BDB0();
      *(inited + 48) = v79;
      v80 = SHMediaItemDuration;
      *(inited + 64) = &type metadata for String;
      *(inited + 72) = v80;
      *(inited + 104) = &type metadata for Double;
      *(inited + 80) = a7;
LABEL_20:
      v81 = v80;
      v82 = sub_24A68(inited);
      swift_setDeallocating();
      sub_2CC4(&qword_395B0, &qword_2D0E0);
      swift_arrayDestroy();
      v83 = sub_144C4(v82);
      v84 = objc_opt_self();
      sub_2CC4(&qword_39568, &qword_2D0A8);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_2CD80;
      *(v85 + 32) = v83;
      sub_2ACCC(0, &qword_395A0, SHMediaItem_ptr);
      v86 = v83;
      isa = sub_2BA80().super.isa;

      v88 = swift_allocObject();
      v90 = v123;
      v89 = v124;
      v91 = v124[1];
      *(v88 + 40) = *v124;
      *(v88 + 16) = v86;
      *(v88 + 24) = sub_2A180;
      *(v88 + 32) = v130;
      *(v88 + 56) = v91;
      *(v88 + 72) = *(v89 + 32);
      v92 = v121;
      *(v88 + 88) = *(v89 + 48);
      *(v88 + 96) = v92;
      *(v88 + 104) = v90;
      *(v88 + 112) = v76;
      v136 = sub_2A45C;
      v137 = v88;
      v132 = _NSConcreteStackBlock;
      v133 = 1107296256;
      v134 = sub_1CD34;
      v135 = &unk_35E50;
      v93 = _Block_copy(&v132);
      sub_29BF0(v89, v139);
      v94 = v76;
      v95 = v86;

      [v84 fetchHapticsWithMediaItems:isa completionHandler:v93];

      _Block_release(v93);
      v96 = v138;
LABEL_32:

      return;
    }

    if ((*&v140[0] || *(&v140[0] + 1) != 0xE000000000000000) && (sub_2BDC0() & 1) == 0)
    {
      v76 = v55;
      sub_2ACCC(0, &qword_395A0, SHMediaItem_ptr);
      sub_2CC4(&qword_395A8, &qword_2D0D8);
      inited = swift_initStackObject();
      *(inited + 32) = SHMediaItemISRC;
      *(inited + 16) = xmmword_2CD60;
      *(inited + 40) = v140[0];
      v80 = SHMediaItemDuration;
      *(inited + 64) = &type metadata for String;
      *(inited + 72) = v80;
      *(inited + 104) = &type metadata for Double;
      *(inited + 80) = a7;
      v112 = SHMediaItemISRC;
      goto LABEL_20;
    }

    sub_2A3A0(v140);
    sub_15B38(0, v125, v126);
LABEL_29:
    v96 = v138;
    goto LABEL_32;
  }

  v131[OBJC_IVAR___AXHapticMusicServer_fetchingHapticTracks] = 0;
  sub_1BE78();
  v44 = v124;
  v127(v124, v129, v16);
  v45 = sub_2B890();
  v46 = sub_2BB40();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_0, v45, v46, "Sample track always matches", v47, 2u);
  }

  v42(v44, v16);
  sub_15B38(1, v125, v126);
}

uint64_t sub_29C58()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_29C98()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_15820(v1, v2);
  }
}

uint64_t sub_29D10(void (*a1)(void))
{
  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_29D7C()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_29DD0(void *a1)
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  [a1 calculatedPlaybackPosition];
  v10 = v9;
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v11 = sub_25AC(v2, HMLog);
  swift_beginAccess();
  v12 = *(v3 + 16);
  v12(v8, v11, v2);
  v13 = sub_2B890();
  v14 = sub_2BB50();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = v6;
    *v15 = 134218240;
    *(v15 + 4) = v10;
    *(v15 + 12) = 2048;
    *(v15 + 14) = 0;
    _os_log_impl(&dword_0, v13, v14, "Calculated position %f, device latency: %f", v15, 0x16u);
    v6 = v24;
  }

  v16 = *(v3 + 8);
  v16(v8, v2);
  v12(v6, v11, v2);
  v17 = a1;
  v18 = sub_2B890();
  v19 = sub_2BB40();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134218240;
    [v17 elapsedTimeTimestamp];
    *(v20 + 4) = v21;
    *(v20 + 12) = 2048;
    [v17 inferredTimestamp];
    *(v20 + 14) = v22;
    _os_log_impl(&dword_0, v18, v19, "playback pos: elapse %f infer %f", v20, 0x16u);
  }

  v16(v6, v2);
  return v10 + 0.0;
}

uint64_t sub_2A0F8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_2A140()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_2A18C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = OBJC_IVAR___AXHapticMusicServer_ahapAvailableCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_20F00(v0 + 4), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = *v2;
    *v2 = v7;
    v9 = v7;

    sub_2BAE0();
  }

  else
  {
    swift_endAccess();
    v10 = *v2;
    *v2 = 0;
  }
}

uint64_t sub_2A3F4()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_2A4B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2A4CC(a1, a2);
  }

  return a1;
}

uint64_t sub_2A4CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t *sub_2A560(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_2A5C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2A634()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_2A690()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_2A6E8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2B650;

  return sub_1DF20(v3, v4, v5, v2, v0 + 40);
}

uint64_t sub_2A780()
{

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_2A7F0()
{
  v1 = v0[3];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[15];
  if (v4)
  {
    v5 = v0[14];
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v0[15];
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7 = v0[4];
  v8 = v0[5] != 0;

  sub_CB50(v1, v7, v8, v5, v6, v2, v3);
}

uint64_t sub_2A8E4()
{

  return _swift_deallocObject(v0, 88, 7);
}

void sub_2A934()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = OBJC_IVAR___AXHapticMusicServer_ahapAvailableCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_20F00(v0 + 4), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = v7;
  }

  else
  {
    v7 = 0;
  }

  swift_endAccess();
  v9 = *v2;
  *v2 = v7;
}

uint64_t sub_2A9C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2A9FC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2AA50()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_2AAA8()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = objc_allocWithZone(NSNumber);
  sub_29BF0(v0 + 24, v9);
  v4 = [v3 initWithBool:v2];
  swift_beginAccess();
  sub_339C(v4, (v0 + 24));
  swift_endAccess();
  v5 = objc_opt_self();
  v6 = [v5 sharedInstance];
  LODWORD(v3) = [v6 hapticMusicTrackAvailable];

  result = swift_beginAccess();
  if (v3 != *(v1 + 16))
  {
    v8 = [v5 sharedInstance];
    swift_beginAccess();
    [v8 setHapticMusicTrackAvailable:*(v1 + 16)];

    sub_2B980();
    sub_2B970();
    sub_2B960();
  }

  return result;
}

uint64_t sub_2AC3C()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_2ACCC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2AD14()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_2AD54()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2B650;

  return sub_15F1C(v4, v5, v6, v2, v3);
}

unint64_t sub_2ADF0()
{
  result = qword_396C8;
  if (!qword_396C8)
  {
    sub_2D0C(&qword_39588, &qword_2D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_396C8);
  }

  return result;
}

void *sub_2AE84(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2AEC8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2BDC0() & 1;
  }
}

uint64_t sub_2AF20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2CC4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2AF80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2B650;

  return sub_1FEF0(a1, v4);
}

uint64_t sub_2B038(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_C46C;

  return sub_1FEF0(a1, v4);
}

uint64_t sub_2B0F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2CC4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *sub_2B158(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_2B1E4(uint64_t a1, unint64_t *a2, uint64_t a3)
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