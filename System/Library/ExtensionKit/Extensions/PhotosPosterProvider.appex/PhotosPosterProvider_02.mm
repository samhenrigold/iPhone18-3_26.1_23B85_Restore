void *sub_100029C68(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100029E04()
{
  result = qword_10004A640;
  if (!qword_10004A640)
  {
    sub_10002F1B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004A640);
  }

  return result;
}

uint64_t sub_100029E94(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000042B4(255, a2, a3);
    sub_10002AED8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100029ED4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100029F1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100029F3C()
{
  result = qword_10004A980;
  if (!qword_10004A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004A980);
  }

  return result;
}

unint64_t sub_100029F90()
{
  result = qword_10004A990;
  if (!qword_10004A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004A990);
  }

  return result;
}

uint64_t sub_100029FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004120(&qword_10004A5D8, qword_100035580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A0B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010054(a2, a3);
    sub_10002AED8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002A174()
{
  result = qword_10004A9E0;
  if (!qword_10004A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004A9E0);
  }

  return result;
}

uint64_t sub_10002A1C8()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002A220()
{
  sub_100010EDC();
  v0 = swift_task_alloc();
  v1 = sub_10002ADB8(v0);
  *v1 = v2;
  v1[1] = sub_10002A9F0;
  v3 = sub_10002AC80();

  return v4(v3);
}

uint64_t sub_10002A2E0()
{
  sub_100010EDC();
  v0 = swift_task_alloc();
  v1 = sub_10002ADB8(v0);
  *v1 = v2;
  v3 = sub_10002AAE4(v1);

  return v4(v3);
}

uint64_t sub_10002A37C()
{
  swift_unknownObjectRelease();

  sub_10002AC74();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10002A3B8()
{
  sub_100010EDC();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_10002ADB8(v6);
  *v7 = v8;
  v7[1] = sub_10002A9F0;

  return sub_1000221B4(v2, v3, v4, v5);
}

uint64_t sub_10002A47C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100004120(a3, a4);
  sub_100010B10();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10002A4DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A514()
{
  sub_100010C44();
  v0 = swift_task_alloc();
  v1 = sub_10002ADB8(v0);
  *v1 = v2;
  v3 = sub_10002AD98(v1);

  return v4(v3);
}

uint64_t sub_10002A5AC()
{
  sub_100010C44();
  v0 = swift_task_alloc();
  v1 = sub_10002ADB8(v0);
  *v1 = v2;
  v3 = sub_10002AD98(v1);

  return v4(v3);
}

uint64_t sub_10002A648()
{
  sub_100010EDC();
  v0 = swift_task_alloc();
  v1 = sub_10002ADB8(v0);
  *v1 = v2;
  v3 = sub_10002AAE4(v1);

  return v4(v3);
}

uint64_t sub_10002A6E4()
{
  _Block_release(*(v0 + 32));

  sub_10002AC74();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10002A730()
{
  sub_100010EDC();
  v0 = swift_task_alloc();
  v1 = sub_10002ADB8(v0);
  *v1 = v2;
  v3 = sub_10002AAE4(v1);

  return v4(v3);
}

uint64_t getEnumTagSinglePayload for PosterUpdaterError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PosterUpdaterError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x10002A930);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10002A980()
{
  result = qword_10004AA00;
  if (!qword_10004AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004AA00);
  }

  return result;
}

uint64_t sub_10002AB14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(v3 - 432);
  v6 = *(v3 - 424);

  return sub_100022BB4(v5, v6, a3);
}

uint64_t sub_10002AB44(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_10002AB9C(float a1)
{
  *v1 = a1;

  return sub_100022BB4(v2, v3, (v4 - 104));
}

uint64_t sub_10002AC8C(uint64_t a1)
{

  return swift_once();
}

id sub_10002ACE8(void *a1, float a2)
{
  *v2 = a2;
  *(v2 + 4) = v3;
  *a1 = v3;

  return v3;
}

uint64_t sub_10002ADDC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 56) = a2;
  *(result + 64) = v2;
  *(result + 32) = 602;
  *(result + 96) = a2;
  *(result + 104) = v2;
  *(result + 72) = 605;
  *(result + 136) = a2;
  *(result + 144) = v2;
  return result;
}

void sub_10002AE4C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_10002AF04(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

void sub_10002AFA4()
{
  v2 = *(v0 - 472);
}

BOOL sub_10002B070(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10002B088()
{
  v3 = *(v1 - 152);

  return sub_100022BB4(v0, v3, (v1 - 104));
}

void sub_10002B0A4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_10002B0BC(uint64_t a1, uint64_t a2)
{

  return sub_10002F2E4();
}

uint64_t sub_10002B0E0(uint64_t a1, uint64_t a2)
{

  return sub_10002F2E4();
}

BOOL sub_10002B104()
{

  return os_log_type_enabled(v1, v0);
}

void sub_10002B11C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_10002B134(uint64_t a1)
{

  return sub_10002F854();
}

void sub_10002B158()
{
}

uint64_t sub_10002B174()
{

  return sub_10002F854();
}

uint64_t sub_10002B198()
{
}

__n128 sub_10002B1E8(uint64_t a1)
{
  *(v2 - 104) = a1;
  result = *(v2 - 400);
  *v1 = result.n128_u32[0];
  return result;
}

uint64_t sub_10002B40C()
{

  return swift_task_alloc();
}

void sub_10002B42C()
{

  objc_autoreleasePoolPop(v0);
}

void sub_10002B44C()
{
  v2 = *(v0 + 256);
}

uint64_t sub_10002B484(float a1)
{
  *v1 = a1;
  *(v1 + 4) = *(v2 + 16);
}

BOOL sub_10002B4D4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_10002B4EC(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_10002B504()
{
}

void *sub_10002B550(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  sub_10002F234();
  sub_100004368();
  __chkstk_darwin(v7);
  v53 = _swiftEmptyArrayStorage;
  if (qword_100049698 != -1)
  {
    swift_once();
  }

  v8 = qword_10004B5A8;
  sub_10002F294();
  swift_allocObject();
  v9 = v8;
  sub_10002F284();
  v10 = a3;
  sub_10002F214();
  v11 = sub_10002F224();
  if (qword_1000496A0 != -1)
  {
    swift_once();
  }

  v12 = sub_10002F324();
  sub_10002BCB4(v12, qword_10004B5B0);

  v13 = sub_10002F314();
  v14 = sub_10002F5E4();
  if (sub_10002D908(v14))
  {
    v15 = sub_10002D930();
    *v15 = 134217984;
    *(v15 + 4) = sub_10002A9E4(v11);

    _os_log_impl(&_mh_execute_header, v13, v14, "Found %ld suggestions", v15, 0xCu);
    sub_10002D8D0();
  }

  else
  {
  }

  v16 = objc_opt_self();
  sub_1000042B4(0, &qword_10004A920, PHSuggestion_ptr);
  isa = sub_10002F4A4().super.isa;
  v18 = [v16 filterMessagesBackdropSuggestions:isa fallback:0];

  v19 = sub_10002F4C4();
  v20 = sub_10002F4A4().super.isa;
  v21 = [v16 filterMessagesBackdropSuggestions:v20 fallback:1];

  v22 = sub_10002F4C4();
  v23 = &unk_100035000;
  if (sub_10002A9E4(v19) < 1)
  {

    v28 = _swiftEmptyArrayStorage;
    v24 = a4;
  }

  else
  {
    v24 = a4;
    sub_10002BCEC(v19, a4);
    if (v4)
    {
      v26 = sub_10002D958();
      v27(v26);

      v28 = _swiftEmptyArrayStorage;
LABEL_18:

      return v28;
    }

    v28 = v25;
    v53 = v25;

    v29 = sub_10002F314();
    v30 = sub_10002F5E4();
    if (sub_10002D908(v30))
    {
      v31 = sub_10002D968();
      *v31 = 134218240;
      *(v31 + 4) = sub_10002A9E4(v28);
      *(v31 + 12) = 2048;
      v32 = sub_10002A9E4(v19);

      *(v31 + 14) = v32;
      v24 = a4;

      v33 = v30;
      v23 = &unk_100035000;
      _os_log_impl(&_mh_execute_header, v29, v33, "Found %ld descriptors for %ld syndication suggestions", v31, 0x16u);
      v34 = v31;
      v5 = 0;
      sub_100004398(v34);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v23 = &unk_100035000;
    }
  }

  if (sub_10002A9E4(v22) < 1)
  {
  }

  else
  {
    sub_10002BCEC(v22, v24);
    if (v5)
    {
      v36 = sub_10002D958();
      v37(v36);
      goto LABEL_18;
    }

    v38 = v35;

    v39 = sub_10002F314();
    v40 = sub_10002F5E4();
    if (sub_10002D908(v40))
    {
      v52 = v38;
      v41 = sub_10002D968();
      *v41 = v23[197];
      *(v41 + 4) = sub_10002A9E4(v22);
      *(v41 + 12) = 2048;
      v42 = sub_10002A9E4(v22);

      *(v41 + 14) = v42;

      _os_log_impl(&_mh_execute_header, v39, v40, "Found %ld descriptors for %ld fallback suggestions", v41, 0x16u);
      v43 = v41;
      v38 = v52;
      sub_100004398(v43);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    swift_beginAccess();
    sub_1000133C0(v38);
    swift_endAccess();
  }

  sub_10002F274();
  v28 = v53;

  v44 = sub_10002F314();
  v45 = sub_10002F5E4();
  if (sub_10002D908(v45))
  {
    v46 = sub_10002D968();
    *v46 = v23[197];
    *(v46 + 4) = sub_10002A9E4(v53);

    *(v46 + 12) = 2048;
    v47 = sub_10002A9E4(v11);

    *(v46 + 14) = v47;

    _os_log_impl(&_mh_execute_header, v44, v45, "Found %ld descriptors for %ld suggestions", v46, 0x16u);
    sub_100004398(v46);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v48 = sub_10002D958();
  v49(v48);
  return v28;
}

uint64_t sub_10002BBD8()
{
  sub_1000042B4(0, &qword_100049CC8, OS_os_log_ptr);
  if (qword_100049668 != -1)
  {
    swift_once();
  }

  result = sub_10002F654();
  qword_10004B5A8 = result;
  return result;
}

uint64_t sub_10002BCB4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_10002BCEC(uint64_t a1, uint64_t a2)
{
  v248 = a2;
  v254 = sub_10002F1B4();
  sub_100004368();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v8 = &v225[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v247 = &v225[-v10];
  v11 = __chkstk_darwin(v9);
  v13 = &v225[-v12];
  v14 = __chkstk_darwin(v11);
  v253 = &v225[-v15];
  __chkstk_darwin(v14);
  v257 = &v225[-v16];
  if (qword_1000496A8 != -1)
  {
LABEL_95:
    swift_once();
  }

  v17 = qword_10004B5C8;
  sub_10002F294();
  v18 = swift_allocObject();
  v19 = v17;
  sub_10002F284();
  v20 = sub_10002AD80();
  v263 = sub_10002A9E4(v20);
  if (!v263)
  {
    goto LABEL_11;
  }

  sub_10002AA00(0, (a1 & 0xC000000000000001) == 0, a1);
  v262 = a1 & 0xC000000000000001;
  v243 = v18;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v21 = sub_10002F734();
  }

  else
  {
    v21 = *(a1 + 32);
  }

  v22 = v21;
  v23 = [v21 photoLibrary];
  if (!v23)
  {

LABEL_11:

    return;
  }

  v24 = v23;
  v236 = v22;
  if (qword_1000496B0 != -1)
  {
    swift_once();
  }

  v25 = sub_10002F324();
  sub_10002BCB4(v25, qword_10004B5D0);
  sub_10002AD80();

  v266 = v22;
  v26 = sub_10002F314();
  v27 = sub_10002F5E4();
  v28 = sub_10002D908(v27);
  v237 = v13;
  v238 = v8;
  if (v28)
  {
    v29 = sub_10002D930();
    *v29 = 134217984;
    *(v29 + 4) = sub_10002A9E4(a1);

    _os_log_impl(&_mh_execute_header, v26, v27, "Fetching key assets for %ld suggestions", v29, 0xCu);
    sub_10002D8D0();
  }

  else
  {
  }

  sub_10001AE50(a1, v30, v31, v32, v33, v34, v35, v36, *v225, *&v225[8], v226, v227, *(&v227 + 1), v228, *(&v228 + 1), v229, v230, v231, v232, v233, *(&v233 + 1), v234, v235, v236, v237);
  sub_10002F404();
  v37 = objc_allocWithZone(PHManualFetchResult);
  v38 = v24;
  sub_100021EC0();
  v40 = v39;
  v13 = [v38 librarySpecificFetchOptions];
  [v13 setIncludeGuestAssets:1];
  v41 = [objc_opt_self() fetchKeyAssetBySuggestionUUIDForSuggestions:v40 options:v13];
  if (!v41)
  {
    sub_10002D65C();
    swift_allocError();
    *v53 = 1;
    swift_willThrow();

    return;
  }

  v42 = v41;
  v231 = v40;

  sub_1000042B4(0, &qword_10004A930, PHAsset_ptr);
  v43 = sub_10002F3A4();

  v44 = sub_10002F314();
  v45 = sub_10002F5E4();
  v46 = sub_10002D8EC(v45);
  v245 = v38;
  v260 = v43;
  if (v46)
  {
    v47 = sub_10002D968();
    *v47 = 134218240;
    *(v47 + 4) = *(v43 + 16);

    *(v47 + 12) = 2048;
    *(v47 + 14) = sub_10002A9E4(a1);

    sub_10002D920();
    _os_log_impl(v48, v49, v50, v51, v52, 0x16u);
    sub_10000437C();
  }

  else
  {
  }

  v8 = &unk_100035000;
  v267[0] = _swiftEmptyArrayStorage;

  v54 = sub_10002F314();
  v55 = sub_10002F5E4();
  if (sub_10002D8EC(v55))
  {
    v56 = sub_10002D930();
    *v56 = 134217984;
    *(v56 + 4) = sub_10002A9E4(a1);

    sub_10002D920();
    _os_log_impl(v57, v58, v59, v60, v61, 0xCu);
    sub_10000437C();
  }

  else
  {
  }

  v63 = 0;
  v251 = a1 & 0xFFFFFFFFFFFFFF8;
  v246 = (v4 + 8);
  v244 = v4 + 16;
  v235 = PRPosterRoleBackdrop;
  v230 = 0x80000001000349E0;
  v239 = _swiftEmptyArrayStorage;
  v229 = 0x8000000100034A00;
  *&v62 = 136315138;
  v258 = v62;
  v64 = &off_100047000;
  *&v62 = 136315394;
  v233 = v62;
  *&v62 = 134218242;
  *v225 = v62;
  v228 = xmmword_100035290;
  v227 = xmmword_100035600;
  v226 = 0xE90000000000006FLL;
  v261 = a1;
  v259 = v13;
  do
  {
    if (v262)
    {
      v65 = sub_10002F734();
    }

    else
    {
      if (v63 >= *(v251 + 16))
      {
        goto LABEL_94;
      }

      v65 = *(a1 + 8 * v63 + 32);
    }

    v8 = (v63 + 1);
    if (__OFADD__(v63, 1))
    {
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v66 = v65;
    v67 = sub_10002F314();
    v68 = sub_10002F5E4();

    v69 = sub_10002D9F4();
    v264 = v63 + 1;
    v265 = v63;
    if (v69)
    {
      sub_10002D930();
      v70 = sub_10002D8B4();
      v71 = [v66 v64[323]];
      a1 = sub_10002F404();
      v64 = v72;

      v73 = sub_10002D9BC();
      sub_10002D9D8();
      *(v63 + 4) = v73;
      sub_10002D980(&_mh_execute_header, v67, v68, "Trying to fetch suggestion: %s", *v225);
      sub_100004168(v70);
      sub_10002D8D0();
      sub_10000437C();
    }

    v13 = v66;
    v74 = [v13 v64[323]];
    v75 = sub_10002F404();
    v77 = v76;

    v78 = v260;
    if (!*(v260 + 16))
    {

LABEL_40:

      v81 = v13;
      v96 = sub_10002F314();
      v97 = sub_10002F5E4();

      if (sub_10002D9F4())
      {
        sub_10002D930();
        v98 = sub_10002D8B4();
        v99 = [v81 v64[323]];
        a1 = sub_10002F404();
        v64 = v100;

        v13 = sub_10002D9BC();
        sub_10002D9D8();
        *(v74 + 4) = v13;
        sub_10002D980(&_mh_execute_header, v96, v97, "Cannot find asset for suggestion %s", *v225);
        sub_100004168(v98);
        sub_10002D8D0();
        sub_10000437C();
        goto LABEL_42;
      }

LABEL_44:
      v4 = v259;
      v8 = &unk_100035000;
      v101 = v265;
      goto LABEL_45;
    }

    v79 = sub_100023198(v75, v77);
    v74 = v80;

    if ((v74 & 1) == 0)
    {
      goto LABEL_40;
    }

    v81 = *(*(v78 + 56) + 8 * v79);
    v256 = sub_100029030(v81);
    if (!v82)
    {
      v96 = sub_10002F314();
      v102 = sub_10002F5E4();

      if (sub_10002D9F4())
      {
        sub_10002D930();
        v103 = sub_10002D8B4();
        v255 = v81;
        v104 = [v13 v64[323]];
        a1 = sub_10002F404();
        v64 = v105;

        v106 = sub_10002D9BC();
        sub_10002D9D8();
        *(v74 + 4) = v106;
        sub_10002D980(&_mh_execute_header, v96, v102, "Cannot find assetUUID for suggestion %s", *v225);
        sub_10002D880();
        sub_10000437C();

        goto LABEL_44;
      }

LABEL_42:
      goto LABEL_44;
    }

    v83 = v82;
    v255 = v81;
    v268 = 0;
    v84 = v245;
    v85 = [v245 urlForApplicationDataFolderIdentifier:16 error:&v268];
    v86 = v268;
    if (!v85)
    {
      v224 = v268;

      sub_10002F0F4();
      swift_willThrow();

      return;
    }

    v87 = v85;
    sub_10002F164();
    v88 = v86;

    v249 = v83;
    v89 = sub_10002F244();
    v90 = [v89 identifier];
    v91 = sub_10002F404();
    v93 = v92;

    if (qword_1000496B8 != -1)
    {
      swift_once();
    }

    v250 = v89;
    if (byte_10004B5E8 == 1)
    {
      v94 = sub_10002F314();
      v95 = sub_10002F5B4();
      if (sub_10002D8EC(v95))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&_mh_execute_header, v94, v87, "PhotosPosterUpdaterBypassExtensionCache is TRUE, ignore caching from extension", v84, 2u);
        sub_10000437C();
      }
    }

    else if (*(v248 + 16))
    {
      v107 = sub_100023198(v91, v93);
      if (v108)
      {
        v256 = *(*(v248 + 56) + 8 * v107);

        v109 = sub_10002F314();
        v110 = sub_10002F5B4();

        if (sub_10002D9F4())
        {
          sub_10002D930();
          v111 = sub_10002D8B4();
          sub_10002D870(v111);
          v112 = sub_100022BB4(v91, v93, &v268);

          *(v84 + 2) = v112;
          sub_10002D980(&_mh_execute_header, v109, v110, "Descriptor %s already cached in extension.", *v225);
          sub_10002D880();
          sub_10000437C();
        }

        else
        {
        }

        v8 = &unk_100035000;
        v101 = v265;
        v206 = v255;
        sub_10002F494();
        sub_10002DA20();
        if (v207)
        {
          sub_10002D998();
        }

        sub_10002F504();
        v239 = v267[0];

        (*v246)(v257, v254);
        v4 = v259;
        goto LABEL_79;
      }
    }

    v113 = v253;
    sub_10002F154();
    if ((sub_10002F254() & 1) == 0)
    {

      v131 = v238;
      v132 = sub_10002DA0C();
      v133(v132);
      v134 = sub_10002F314();
      v135 = sub_10002F5B4();
      if (!sub_10002D908(v135))
      {

        v157 = *v246;
        (*v246)(v131, v91);
        v157(v113, v91);
        v157(v257, v91);
LABEL_78:
        v4 = v259;
        v8 = &unk_100035000;
        v101 = v265;
LABEL_79:
        v64 = &off_100047000;
        goto LABEL_45;
      }

      sub_10002D930();
      v136 = sub_10002D8B4();
      v249 = v134;
      v137 = v131;
      v256 = v136;
      sub_10002D870(v136);
      v242 = sub_10002F184();
      v139 = v138;
      v140 = *v246;
      (*v246)(v137, v91);
      sub_100022BB4(v242, v139, &v268);
      sub_10002AD80();

      *(v84 + 2) = v137;
      v141 = v249;
      sub_10002D980(&_mh_execute_header, v249, v135, "Cannot find %s. Skip!", *v225);
      sub_10002D880();
      sub_10000437C();

      v142 = v254;
      v140(v113, v254);
      v140(v257, v142);
LABEL_77:
      a1 = v261;
      goto LABEL_78;
    }

    v241 = v91;
    v114 = v93;
    v115 = v237;
    v116 = sub_10002DA0C();
    v117(v116);

    v118 = sub_10002F314();
    v119 = sub_10002F5B4();

    if (sub_10002D9F4())
    {
      v120 = sub_10002D968();
      v242 = swift_slowAlloc();
      v268 = v242;
      *v120 = v233;
      v121 = v241;
      *(v120 + 4) = sub_100022BB4(v241, v114, &v268);
      *(v120 + 12) = 2080;
      v232 = v118;
      v122 = sub_10002F184();
      v123 = v91;
      v125 = v124;
      v240 = *v246;
      v240(v115, v123);
      v126 = sub_100022BB4(v122, v125, &v268);

      *(v120 + 14) = v126;
      v127 = v119;
      v128 = v121;
      v129 = v232;
      _os_log_impl(&_mh_execute_header, v232, v127, "Cached descriptor %s exists at %s.", v120, 0x16u);
      v130 = v242;
      swift_arrayDestroy();
      sub_100004398(v130);
      sub_10000437C();
    }

    else
    {

      v240 = *v246;
      v240(v115, v91);
      v128 = v241;
    }

    sub_1000042B4(0, &qword_10004A830, PRMutablePosterDescriptor_ptr);
    sub_10002AD80();

    v143 = sub_1000189FC(v128, v114, v235);
    v144 = [v143 assetDirectory];
    v145 = v247;
    sub_10002F164();

    v146 = [objc_allocWithZone(type metadata accessor for PosterUpdater()) init];
    v147 = v252;
    v148 = v253;
    sub_100018ABC(v253, v145, v149, v150, v151, v152, v153, v154, *v225, *&v225[8], *&v225[16], v226, v227, *(&v227 + 1), v228, *(&v228 + 1), v229, v230, SHIDWORD(v230), v231, v232);
    v156 = v114;
    v242 = v143;
    if (v147)
    {

      v252 = 0;
      goto LABEL_73;
    }

    v158 = v155;
    v252 = 0;

    v159 = sub_10002F314();
    v160 = sub_10002F5E4();

    v161 = os_log_type_enabled(v159, v160);
    v64 = &off_100047000;
    *&v225[16] = v114;
    if (v161)
    {
      v162 = sub_10002D968();
      v163 = swift_slowAlloc();
      v268 = v163;
      *v162 = *v225;
      *(v162 + 4) = v158;
      *(v162 + 12) = 2080;
      *(v162 + 14) = sub_100022BB4(v241, v156, &v268);
      _os_log_impl(&_mh_execute_header, v159, v160, "Successfully copied %ld resources for descriptor %s", v162, 0x16u);
      sub_100004168(v163);
      sub_100004398(v163);
      sub_100004398(v162);
    }

    a1 = v261;
    sub_100004120(&qword_10004AA18, &qword_100035908);
    inited = swift_initStackObject();
    *(inited + 16) = v228;
    *(inited + 32) = 0x4955557465737361;
    *(inited + 40) = 0xE900000000000044;
    v165 = v249;
    *(inited + 48) = v256;
    *(inited + 56) = v165;
    strcpy((inited + 64), "suggestionUUID");
    *(inited + 79) = -18;
    v166 = [v13 uuid];

    v167 = sub_10002F404();
    v169 = v168;

    *(inited + 80) = v167;
    *(inited + 88) = v169;
    v170 = sub_10002F3B4();
    sub_100004120(&qword_10004AA20, &qword_100035910);
    v171 = swift_initStackObject();
    *(v171 + 16) = v227;
    *(v171 + 32) = 0x6564724F74726F73;
    *(v171 + 40) = 0xE900000000000072;
    *(v171 + 48) = sub_10002A9E4(v239);
    *(v171 + 72) = &type metadata for Int;
    *(v171 + 80) = 0xD000000000000010;
    *(v171 + 88) = v230;
    v172 = [v245 isSystemPhotoLibrary];
    v173 = 0xD000000000000012;
    if (v172)
    {
      v173 = 0x694C6D6574737953;
    }

    v174 = v229;
    if (v172)
    {
      v174 = 0xED00007972617262;
    }

    *(v171 + 96) = v173;
    *(v171 + 104) = v174;
    *(v171 + 120) = &type metadata for String;
    *(v171 + 128) = 0x666E496775626564;
    *(v171 + 136) = v226;
    *(v171 + 168) = sub_100004120(&qword_10004AA28, &qword_100035918);
    *(v171 + 144) = v170;
    v175 = sub_10002F3B4();
    sub_1000112EC(v175);
    v177 = v176;

    v268 = 0;
    v178 = v242;
    v179 = sub_10002903C(v177, &v268, v242);
    v180 = v268;
    if ((v179 & 1) == 0)
    {
      v187 = v268;

      sub_10002F0F4();
      swift_willThrow();
      v252 = 0;
      v148 = v253;
LABEL_73:
      v188 = v255;
      swift_errorRetain();
      v189 = sub_10002F314();
      v190 = sub_10002F5D4();
      v256 = v189;
      if (os_log_type_enabled(v189, v190))
      {
        LODWORD(v255) = v190;
        v191 = sub_10002D968();
        v192 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        v268 = v193;
        *v191 = v233;
        v194 = v188;
        v195 = sub_100029030(v188);
        if (!v196)
        {

          __break(1u);
          return;
        }

        v197 = v195;
        v198 = v196;

        v199 = sub_100022BB4(v197, v198, &v268);

        *(v191 + 4) = v199;
        *(v191 + 12) = 2112;
        swift_errorRetain();
        v200 = _swift_stdlib_bridgeErrorToNSError();
        *(v191 + 14) = v200;
        *v192 = v200;
        v201 = v256;
        _os_log_impl(&_mh_execute_header, v256, v255, "Fail to load descriptor for asset %s: %@", v191, 0x16u);
        sub_1000041B4(v192);
        sub_10002D8D0();
        sub_100004168(v193);
        sub_10000437C();
        sub_100004398(v191);

        v202 = sub_10002D948();
        v203 = v240;
        (v240)(v202);
        v203(v253, v201);
        v203(v257, v201);
      }

      else
      {

        v204 = sub_10002D948();
        v205 = v240;
        (v240)(v204);
        v205(v148, v189);
        v205(v257, v189);
      }

      goto LABEL_77;
    }

    v181 = *&v225[16];

    v182 = v180;
    v183 = sub_10002F314();
    v184 = sub_10002F5E4();

    if (sub_10002D9F4())
    {
      sub_10002D930();
      v185 = sub_10002D8B4();
      sub_10002D870(v185);
      v186 = sub_100022BB4(v241, v181, &v268);

      *(v178 + 4) = v186;
      sub_10002D980(&_mh_execute_header, v183, v184, "Successfully stored userInfo for descriptor %s", *v225);
      sub_10002D880();
      sub_10000437C();
    }

    else
    {
    }

    v8 = &unk_100035000;
    v101 = v265;
    v208 = v255;
    sub_10002F494();
    sub_10002DA20();
    if (v207)
    {
      sub_10002D998();
    }

    v209 = v242;
    sub_10002F504();
    v239 = v267[0];

    v210 = sub_10002D948();
    v211 = v240;
    (v240)(v210);
    v211(v253, v267);
    v211(v257, v267);
    v4 = v259;
LABEL_45:
    v63 = v101 + 1;
  }

  while (v264 != v263);

  v212 = v239;

  v213 = sub_10002F314();
  v214 = sub_10002F5E4();
  if (sub_10002D8EC(v214))
  {
    v216 = sub_10002D968();
    *v216 = *(v8 + 197);
    *(v216 + 4) = sub_10002A9E4(v212);
    *(v216 + 12) = 2048;
    *(v216 + 14) = sub_10002A9E4(a1);

    sub_10002D920();
    _os_log_impl(v217, v218, v219, v220, v221, 0x16u);
    sub_10000437C();
  }

  else
  {
  }

  v222 = v245;
  v223 = v231;
  sub_10002F274();
}

uint64_t sub_10002D464()
{
  sub_1000042B4(0, &qword_100049CC8, OS_os_log_ptr);
  if (qword_100049668 != -1)
  {
    swift_once();
  }

  result = sub_10002F654();
  qword_10004B5C8 = result;
  return result;
}

uint64_t sub_10002D540(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_10002F324();
  sub_10002D6B0(v8, a2);
  sub_10002BCB4(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_10002F334();
}

void sub_10002D5CC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_10002F3D4();
  v2 = [v0 BOOLForKey:v1];

  byte_10004B5E8 = v2;
}

unint64_t sub_10002D65C()
{
  result = qword_10004AA10;
  if (!qword_10004AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004AA10);
  }

  return result;
}

uint64_t *sub_10002D6B0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

_BYTE *storeEnumTagSinglePayload for PosterDescriptorCacheLoader.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x10002D7E0);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10002D81C()
{
  result = qword_10004AA30;
  if (!qword_10004AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004AA30);
  }

  return result;
}

__n128 sub_10002D870(uint64_t a1)
{
  *(v3 - 104) = a1;
  result = v1[19];
  *v2 = result.n128_u32[0];
  return result;
}

uint64_t sub_10002D880()
{
  sub_100004168(v0);
}

uint64_t sub_10002D8B4()
{

  return swift_slowAlloc();
}

uint64_t sub_10002D8D0()
{
}

BOOL sub_10002D8EC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL sub_10002D908(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10002D930()
{

  return swift_slowAlloc();
}

uint64_t sub_10002D968()
{

  return swift_slowAlloc();
}

void sub_10002D980(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_10002D998()
{

  return sub_10002F4E4();
}

uint64_t sub_10002D9BC()
{

  return sub_100022BB4(v0, v1, (v2 - 104));
}

double sub_10002D9D8()
{

  return result;
}

BOOL sub_10002D9F4()
{

  return os_log_type_enabled(v0, v1);
}

double PPPosterEditingChromeDodgingInsetsForEditor(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 editingChromeDodgingInsets];
    top = v2;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
  }

  return top;
}

id PPCreatePosterDescriptorGalleryOptions(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 posterType];
  if (v5 == 1)
  {
    v8 = [v3 descriptorType];
    v9 = 2;
    if (v8 != 5)
    {
      v9 = 0;
    }

    v6 = 0;
    if (v8 == 3)
    {
      v7 = 1;
    }

    else
    {
      v7 = v9;
    }
  }

  else if (v5 == 2)
  {
    v7 = 3;
    v6 = 1;
  }

  else
  {
    if (!v5)
    {
      v14 = +[NSAssertionHandler currentHandler];
      v15 = [NSString stringWithUTF8String:"PRPosterDescriptorGalleryOptions * _Nonnull PPCreatePosterDescriptorGalleryOptions(PFPosterDescriptor *__strong _Nonnull, id  _Nullable __strong)"];
      [v14 handleFailureInFunction:v15 file:@"PhotosPosterRuntimeAdditions.m" lineNumber:99 description:@"Undefined poster type"];

      abort();
    }

    v6 = 0;
    v7 = 0;
  }

  v10 = objc_opt_respondsToSelector();
  v11 = +[PRPosterDescriptorGalleryAssetLookupInfo defaultLookupInfo];
  if (v10)
  {
    [PRPosterDescriptorGalleryOptions galleryOptionsWithAssetLookupInfo:v11 galleryPresentationStyle:v6 galleryDisplayStyle:v7 preferredTitleStyle:v4];
  }

  else
  {
    [PRPosterDescriptorGalleryOptions galleryOptionsWithAssetLookupInfo:v11 galleryPresentationStyle:v6 galleryDisplayStyle:v7];
  }
  v12 = ;

  return v12;
}

id PPGalleryOptionsForDescriptorType(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(ATXPosterDescriptorGalleryOptions);
  [v4 setAllowsSystemSuggestedComplications:0];
  [v4 setFeaturedConfidenceLevel:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 suggestionSubtype];
    if ((v5 - 602) <= 3u)
    {
      [v4 setPhotoSubtype:(v5 - 601)];
    }
  }

  if (a1 > 101)
  {
    if (a1 > 200)
    {
      switch(a1)
      {
        case 201:
          v7 = @"PHOTOS_WALLPAPER_DESCRIPTOR_UPGRADE_SUGGESTION_TITLE_GYROPOSTER_ADAPTIVETIME";
          break;
        case 202:
          v7 = @"PHOTOS_WALLPAPER_DESCRIPTOR_UPGRADE_SUGGESTION_TITLE_GYROPOSTER";
          break;
        case 203:
          v7 = @"PHOTOS_WALLPAPER_DESCRIPTOR_UPGRADE_SUGGESTION_TITLE_ADAPTIVETIME";
          break;
        default:
          goto LABEL_31;
      }
    }

    else
    {
      switch(a1)
      {
        case 'f':
          [v4 setHero:1];
          v6 = @"PHOTOS_WALLPAPER_DESCRIPTOR_CREATE_A_FACE_TITLE_SHUFFLE";
LABEL_26:
          [v4 setDisplayNameLocalizationKey:v6];
          [v4 setShouldShowAsShuffleStack:1];
          goto LABEL_31;
        case 'g':
          [v4 setHero:1];
          v7 = @"PHOTOS_WALLPAPER_DESCRIPTOR_CREATE_A_FACE_TITLE_PEOPLE";
          break;
        case 'h':
          [v4 setHero:1];
          v7 = @"PHOTOS_WALLPAPER_DESCRIPTOR_CREATE_A_FACE_TITLE_LIVE_PHOTO";
          break;
        default:
          goto LABEL_31;
      }
    }

    goto LABEL_30;
  }

  if (a1 <= 2)
  {
    if (!a1)
    {
      v8 = +[NSAssertionHandler currentHandler];
      v9 = [NSString stringWithUTF8String:"ATXPosterDescriptorGalleryOptions * _Nonnull PPGalleryOptionsForDescriptorType(PFPosterDescriptorType, PFPosterMedia *__strong _Nonnull)"];
      [v8 handleFailureInFunction:v9 file:@"PhotosPosterRuntimeAdditions.m" lineNumber:139 description:@"Unknown descriptor type"];

      goto LABEL_31;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        goto LABEL_31;
      }

      [v4 setFeaturedConfidenceLevel:2];
      [v4 setAllowsSystemSuggestedComplications:sub_10002E19C(v3)];
      v6 = @"PHOTOS_WALLPAPER_DESCRIPTOR_TITLE_SMART_ALBUM";
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if ((a1 - 4) < 2)
  {
LABEL_23:
    [v4 setFeaturedConfidenceLevel:1];
    [v4 setAllowsSystemSuggestedComplications:sub_10002E19C(v3)];
    v7 = @"PHOTOS_WALLPAPER_DESCRIPTOR_TITLE_FEATURED_PHOTO";
LABEL_30:
    [v4 setDisplayNameLocalizationKey:v7];
    goto LABEL_31;
  }

  if (a1 != 3)
  {
    if (a1 != 101)
    {
      goto LABEL_31;
    }

    [v4 setHero:1];
    v7 = @"PHOTOS_WALLPAPER_DESCRIPTOR_CREATE_A_FACE_TITLE_PHOTOS";
    goto LABEL_30;
  }

  [v4 setFeaturedConfidenceLevel:1];
  [v4 setAllowsSystemSuggestedComplications:sub_10002E19C(v3)];
LABEL_31:

  return v4;
}

uint64_t sub_10002E19C(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 suggestionSubtype];
    if (v2 - 604 <= 0x33)
    {
      v3 = 0xC000000000003uLL >> (v2 - 92);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

id PPCreateTimeFontConfiguration(void *a1, void *a2)
{
  v3 = a1;
  LODWORD(a2) = [a2 isEqualToString:PRPosterRoleIncomingCall];
  v4 = [v3 isEqualToString:PUPosterFontIdentifierRounded];
  if (!a2)
  {
    if (v4)
    {
      v5 = &PRTimeFontIdentifierRounded;
      goto LABEL_36;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierSoft])
    {
      v5 = &PRTimeFontIdentifierSoft;
      goto LABEL_36;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierSlab])
    {
      v5 = &PRTimeFontIdentifierSlab;
      goto LABEL_36;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierStencil])
    {
      v5 = &PRTimeFontIdentifierStencil;
      goto LABEL_36;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierRail])
    {
      v5 = &PRTimeFontIdentifierRail;
      goto LABEL_36;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierNewYork])
    {
      v5 = &PRTimeFontIdentifierNewYork;
      goto LABEL_36;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierNewYorkHeavy])
    {
      v6 = &PRTimeFontIdentifierNewYork;
      goto LABEL_28;
    }

    v9 = PLWallpaperGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unexpected font identifier: %@", &v12, 0xCu);
    }

    v5 = &PRTimeFontIdentifierRounded;
LABEL_35:

    goto LABEL_36;
  }

  if ((v4 & 1) == 0)
  {
    if ([v3 isEqualToString:PUPosterFontIdentifierSoft])
    {
LABEL_7:
      v5 = &PRTimeFontIdentifierSFPro;
      goto LABEL_36;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierSlab])
    {
      goto LABEL_11;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierStencil])
    {
      goto LABEL_7;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierRail])
    {
LABEL_11:
      v5 = &PRTimeFontIdentifierSFCondensed;
      goto LABEL_36;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierNewYork])
    {
      v5 = &PRTimeFontIdentifierNewYorkAlpha;
      goto LABEL_36;
    }

    if ([v3 isEqualToString:PUPosterFontIdentifierNewYorkHeavy])
    {
      v6 = &PRTimeFontIdentifierNewYorkAlpha;
LABEL_28:
      v7 = *v6;
      v8 = [[PRTimeFontConfiguration alloc] initWithTimeFontIdentifier:v7 weight:810.0];
      goto LABEL_37;
    }

    v9 = PLWallpaperGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unexpected font identifier: %@", &v12, 0xCu);
    }

    v5 = &PRTimeFontIdentifierSFRounded;
    goto LABEL_35;
  }

  v5 = &PRTimeFontIdentifierSFRounded;
LABEL_36:
  v7 = *v5;
  v8 = [[PRTimeFontConfiguration alloc] initWithTimeFontIdentifier:v7];
LABEL_37:
  v10 = v8;

  return v10;
}

uint64_t PPPosterEnvironmentIsCallServices(void *a1)
{
  v1 = [a1 role];
  v2 = [v1 isEqualToString:PRPosterRoleIncomingCall];

  if (v2)
  {
    return 1;
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"PI_PARALLAX_EMULATE_CALLSERVICES"];

  return v5;
}

uint64_t PPPosterEnvironmentIsBackdrop(void *a1)
{
  v1 = [a1 role];
  v2 = [v1 isEqualToString:PRPosterRoleBackdrop];

  if (v2)
  {
    return 1;
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"PI_PARALLAX_EMULATE_BACKDROP"];

  return v5;
}

uint64_t PPPosterBoundingShapeFromEnvironment(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 boundingShape];
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

PPPosterOverrideConfiguration *PPPosterOverrideConfigurationFromConfiguration(void *a1)
{
  v1 = [a1 loadUserInfoWithError:0];
  if (v1)
  {
    v2 = objc_alloc(NSClassFromString(@"WFWallpaperConfiguration"));
    v3 = [v2 performSelector:NSSelectorFromString(@"initWithUserInfo:") withObject:v1];

    if (v3)
    {
      v4 = [[PPPosterOverrideConfiguration alloc] initWithWFWallpaperConfiguration:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

PPPosterOverrideConfiguration *PPPosterOverrideConfigurationFromSessionInfo(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 shortcutsWallpaperConfiguration];
    if (v2)
    {
      v3 = [[PPPosterOverrideConfiguration alloc] initWithWFWallpaperConfiguration:v2];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double PPPosterSalientContentRectangleFromEnvironment(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 salientContentRectangle];
    x = v2;
  }

  else
  {
    x = CGRectZero.origin.x;
  }

  return x;
}

double PPPosterPreferredSalientContentRectangleUsingPreferences(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 preferredSalientContentRectangle];
    x = v2;
  }

  else
  {
    x = CGRectZero.origin.x;
  }

  return x;
}

double PPPosterPreferredSalientContentRectangleUsingMutablePreferences(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 preferredSalientContentRectangle];
    x = v2;
  }

  else
  {
    x = CGRectZero.origin.x;
  }

  return x;
}

void PPPosterSetPreferredSalientContentRectangleUsingMutablePreferences(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v9 setSalientContentRectangleUpdatesRequested:1];
    [v9 setPreferredSalientContentRectangle:{a2, a3, a4, a5}];
  }
}

id PPPosterContentOcclusionRectangleUpdatesRequestedUsingPreferences(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 contentOcclusionRectangleUpdatesRequested];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PPPosterContentOcclusionRectangleUpdatesRequestedUsingMutablePreferences(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 contentOcclusionRectangleUpdatesRequested];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void PPPosterSetContentOcclusionRectangleUpdatesRequestedUsingMutablePreferences(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setContentOcclusionRectangleUpdatesRequested:1];
    [v3 setContentOcclusionRectangleUpdatesRequested:a1];
  }
}

double PPPosterBackdropPrimaryContentOcclusionRectangleUsingEnvironment(void *a1)
{
  v1 = a1;
  x = CGRectZero.origin.x;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 contentOcclusionRectangles];
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 rectWithName:@"primary"];
      [v4 CGRectValue];
      x = v5;
    }
  }

  return x;
}

double PPPosterBackdropInspectorContentOcclusionRectangleUsingEnvironment(void *a1)
{
  v1 = a1;
  x = CGRectZero.origin.x;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 contentOcclusionRectangles];
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 rectWithName:@"inspector"];
      [v4 CGRectValue];
      x = v5;
    }
  }

  return x;
}

double PPPosterCallServicesContentOcclusionRectangleUsingEnvironment(void *a1)
{
  v1 = a1;
  x = CGRectZero.origin.x;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 contentOcclusionRectangles];
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 rectWithName:@"controlsArea"];
      [v4 CGRectValue];
      x = v5;
    }
  }

  return x;
}

id PPPosterAdaptiveTimeModeUsingPreferences(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 adaptiveTimeMode];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PPPosterAdaptiveTimeModeUsingMutablePreferences(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 adaptiveTimeMode];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void PPPosterSetAdaptiveTimeModeUsingMutablePreferences(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setAdaptiveTimeMode:a1];
  }
}

id PPPosterPowerLogIdentifierUsingMutablePreferences(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 powerlogIdentifier];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void PPPosterSetPowerLogIdentifierUsingMutablePreferences(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setPowerlogIdentifier:a1];
  }
}

void PPPosterSetPreferredRenderingConfigurationForDescriptor(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  if (objc_opt_respondsToSelector())
  {
    v5 = [[PRPosterRenderingConfiguration alloc] initWithDepthEffectDisabled:a2 motionEffectsDisabled:a3];
    [v6 setPreferredRenderingConfiguration:v5];
  }
}

objc_class *PPPosterPreferredTitleStyleForLayoutProperties(double a1, double a2)
{
  v4 = NSClassFromString(@"PRPosterDescriptorGalleryTitleStyle");
  if (v4)
  {
    v4 = [[v4 alloc] initWithPreferredTimeMaxYPortrait:a1 preferredTimeMaxYLandscape:a2];
  }

  return v4;
}

id PPPosterIsDepthEffectDisabledFromEnvironment(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 isDepthEffectDisabled];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PPPosterLegacyConfigurationTypeFromSessionInfo(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 userInfo];
    v3 = [v2 objectForKeyedSubscript:@"SBLegacyWallpaperMigrationType"];
    v4 = [v3 isEqualToString:@"home"];

    if (v4)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}