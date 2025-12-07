__n128 sub_100001DDC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001DE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001E08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

id sub_100001E48(uint64_t a1, unint64_t a2)
{
  v4 = sub_100034874();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v31 - v9;
  v32[0] = a1;
  v32[1] = a2;
  v31[2] = 44;
  v31[3] = 0xE100000000000000;
  sub_1000023D0();
  v11 = sub_100034D34();
  if (v11[2] != 2)
  {

    sub_100034804();

    v21 = sub_100034854();
    v22 = sub_100034C54();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32[0] = v24;
      *v23 = 136315138;
      v25 = sub_10001AF94(a1, a2, v32);

      *(v23 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to load location from string. %s ", v23, 0xCu);
      sub_1000026BC(v24);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  v12 = v11[4];
  v13 = v11[5];
  v14 = v11;
  v32[0] = 0;

  v15 = sub_100002708(v12, v13, v32);

  if (!v15)
  {

LABEL_9:
    sub_100034804();

    v26 = sub_100034854();
    v27 = sub_100034C54();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32[0] = v29;
      *v28 = 136315138;
      v30 = sub_10001AF94(a1, a2, v32);

      *(v28 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to load location from string. %s ", v28, 0xCu);
      sub_1000026BC(v29);
    }

    else
    {
    }

    (*(v5 + 8))(v10, v4);
    return 0;
  }

  if (v14[2] >= 2uLL)
  {
    v17 = v14;
    v18 = *v32;
    v19 = v14[6];
    v20 = v17[7];

    v32[0] = 0;
    LOBYTE(v19) = sub_100002708(v19, v20, v32);

    if (v19)
    {

      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLatitude:v18 longitude:*v32];
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void *sub_100002240@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002278(uint64_t a1, id *a2)
{
  result = sub_100034994();
  *a2 = 0;
  return result;
}

uint64_t sub_1000022F0(uint64_t a1, id *a2)
{
  v3 = sub_1000349A4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002370@<X0>(uint64_t *a1@<X8>)
{
  sub_1000349B4();
  v2 = sub_100034984();

  *a1 = v2;
  return result;
}

_DWORD *sub_1000023B4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

unint64_t sub_1000023D0()
{
  result = qword_100046AF0;
  if (!qword_100046AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046AF0);
  }

  return result;
}

uint64_t sub_100002424@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100034984();

  *a2 = v3;
  return result;
}

uint64_t sub_10000246C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000349B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002498(uint64_t a1)
{
  v2 = sub_1000029EC(&qword_100046B38, &unk_10003657C);
  v3 = sub_1000029EC(&qword_100046B40, &unk_10003651C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002530()
{
  sub_1000349B4();
  v0 = sub_100034A74();

  return v0;
}

uint64_t sub_10000256C(uint64_t a1)
{
  sub_1000349B4();
  sub_100034A04();
}

Swift::Int sub_1000025C0(uint64_t a1)
{
  sub_1000349B4();
  sub_100034EF4();
  sub_100034A04();
  v1 = sub_100034F14();

  return v1;
}

uint64_t sub_100002634(void *a1, uint64_t *a2)
{
  v2 = sub_1000349B4();
  v4 = v3;
  if (v2 == sub_1000349B4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100034EC4();
  }

  return v7 & 1;
}

uint64_t sub_1000026BC(void *a1)
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

BOOL sub_100002708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_100034DA4();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

_BYTE *sub_100002800@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

__n128 sub_1000028BC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000028C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000028E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_100002938(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1000029EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PRTimeFontIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002A80()
{
  sub_100034484();
  sub_1000035B0(&qword_1000483A0, qword_100037210);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100036610;
  if (qword_1000469A8 != -1)
  {
    swift_once();
  }

  v1 = static PreferencePane.aegirGeneralPreferencePane;
  *(v0 + 32) = static PreferencePane.aegirGeneralPreferencePane;
  v2 = v1;
  *(v0 + 40) = sub_1000343F4();
  *(v0 + 48) = sub_100034404();
  result = sub_100034464();
  static PreferencePane.aegirPreferencePane = result;
  return result;
}

uint64_t *PreferencePane.aegirGeneralPreferencePane.unsafeMutableAddressor()
{
  if (qword_1000469A8 != -1)
  {
    swift_once();
  }

  return &static PreferencePane.aegirGeneralPreferencePane;
}

uint64_t *PreferencePane.aegirPreferencePane.unsafeMutableAddressor()
{
  if (qword_1000469A0 != -1)
  {
    swift_once();
  }

  return &static PreferencePane.aegirPreferencePane;
}

uint64_t sub_100002C40()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_10001B778(&off_1000411C8);
  sub_1000035B0(&qword_100046B48, &qword_100036628);
  swift_arrayDestroy();
  sub_10001B874(&off_100041400);
  sub_1000035B0(&qword_100046B50, &qword_100036630);
  swift_arrayDestroy();
  sub_10001B978(&off_100041380);
  sub_1000035B0(&qword_100046B58, &qword_100036638);
  swift_arrayDestroy();
  v1 = objc_allocWithZone(sub_100034484());
  result = sub_100034454();
  static PreferencePane.aegirGeneralPreferencePane = result;
  return result;
}

id sub_100002DA8(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

id sub_100002E2C(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

BOOL sub_100002E90(id a1, SEL a2)
{
  v2 = a1;
  v3 = sub_100034424();

  return v3 & 1;
}

unint64_t sub_100002F20(id a1, SEL a2)
{
  v2 = a1;
  v3 = PreferencePane.vista.getter();

  return v3;
}

uint64_t PreferencePane.vista.getter()
{
  v0 = sub_100034414();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v4 = v2 == 0x6874726145 && v3 == 0xE500000000000000;
  if (v4 || (sub_100034EC4() & 1) != 0)
  {

    return 0;
  }

  else if (v2 == 1852796749 && v3 == 0xE400000000000000 || (sub_100034EC4() & 1) != 0)
  {

    return 1;
  }

  else if (v2 == 0x79532072616C6F53 && v3 == 0xEC0000006D657473 || (sub_100034EC4() & 1) != 0)
  {

    return 2;
  }

  else if (v2 == 0x7972756372654DLL && v3 == 0xE700000000000000 || (sub_100034EC4() & 1) != 0)
  {

    return 4;
  }

  else if (v2 == 0x73756E6556 && v3 == 0xE500000000000000 || (sub_100034EC4() & 1) != 0)
  {

    return 5;
  }

  else if (v2 == 1936875853 && v3 == 0xE400000000000000 || (sub_100034EC4() & 1) != 0)
  {

    return 6;
  }

  else if (v2 == 0x7265746970754ALL && v3 == 0xE700000000000000 || (sub_100034EC4() & 1) != 0)
  {

    return 7;
  }

  else if (v2 == 0x6E7275746153 && v3 == 0xE600000000000000 || (sub_100034EC4() & 1) != 0)
  {

    return 3;
  }

  else if (v2 == 0x73756E617255 && v3 == 0xE600000000000000 || (sub_100034EC4() & 1) != 0)
  {

    return 8;
  }

  else if (v2 == 0x656E757470654ELL && v3 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_100034EC4();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t PreferencePane.crop.getter()
{
  v0 = sub_100034414();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v4 = v2 == 1819047238 && v3 == 0xE400000000000000;
  if (v4 || (sub_100034EC4() & 1) != 0)
  {

    v5 = 0;
  }

  else if (v2 == 0x6C6961746544 && v3 == 0xE600000000000000)
  {

    v5 = 1;
  }

  else
  {
    v5 = sub_100034EC4();
  }

  return v5 & 1;
}

uint64_t PreferencePane.isCalliopeRenderingStyle.getter()
{
  v0 = sub_100034414();
  if (v1)
  {
    if (v0 == 0x65706F696C6C6143 && v1 == 0xE800000000000000)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_100034EC4();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t PreferencePane.isAegirRenderingStyle.getter()
{
  v0 = sub_100034414();
  if (v1)
  {
    if (v0 == 0x7269676541 && v1 == 0xE500000000000000)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_100034EC4();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t PreferencePane.isClassicRenderingStyle.getter()
{
  v0 = sub_100034414();
  if (v1)
  {
    if (v0 == 0x63697373616C43 && v1 == 0xE700000000000000)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_100034EC4();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1000035B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

double sub_1000035F8()
{
  sub_1000035B0(&qword_100046B60, &qword_100036658);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100036640;
  sub_100003820();
  v1 = sub_10001DE84(10589063);
  *(v0 + 32) = 4;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = v1;
  *(v0 + 64) = 0u;
  v2 = sub_10001DE84(11435597);
  *(v0 + 80) = 5;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = v2;
  *(v0 + 112) = 0u;
  v3 = sub_10001DE84(7442351);
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = v3;
  *(v0 + 160) = 0u;
  v4 = sub_10001DE84(7442351);
  *(v0 + 176) = 0;
  *(v0 + 184) = 1;
  *(v0 + 192) = 0;
  *(v0 + 200) = v4;
  *(v0 + 208) = 0u;
  v5 = sub_10001DE84(9211020);
  *(v0 + 224) = 1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 248) = v5;
  *(v0 + 256) = 0u;
  v6 = sub_10001DE84(9211020);
  *(v0 + 272) = 1;
  *(v0 + 280) = 1;
  *(v0 + 288) = 0;
  *(v0 + 296) = v6;
  *(v0 + 304) = 0u;
  v7 = sub_10001DE84(14452348);
  *(v0 + 320) = 6;
  *(v0 + 328) = 0;
  *(v0 + 336) = 0;
  *(v0 + 344) = v7;
  *(v0 + 352) = 0u;
  v8 = sub_10001DE84(12544846);
  *(v0 + 368) = 7;
  *(v0 + 376) = 0;
  *(v0 + 384) = 0;
  *(v0 + 392) = v8;
  *(v0 + 400) = 0u;
  v9 = sub_10001DE84(12426329);
  *(v0 + 416) = 3;
  *(v0 + 424) = 0;
  *(v0 + 432) = 0;
  *(v0 + 440) = v9;
  *(v0 + 448) = 0u;
  v10 = sub_10001DE84(8308450);
  *(v0 + 464) = 8;
  *(v0 + 472) = 0;
  *(v0 + 480) = 0;
  *(v0 + 488) = v10;
  *(v0 + 496) = 0u;
  v11 = sub_10001DE84(6920424);
  *(v0 + 512) = 9;
  *(v0 + 520) = 0;
  *(v0 + 528) = 0;
  *(v0 + 536) = v11;
  *(v0 + 544) = 0u;
  v12 = [objc_opt_self() vibrantMaterialColor];
  *(v0 + 560) = 2;
  *(v0 + 568) = 0;
  *(v0 + 576) = 0;
  *(v0 + 584) = v12;
  result = 0.0;
  *(v0 + 592) = 0u;
  qword_1000493C0 = v0;
  return result;
}

unint64_t sub_100003820()
{
  result = qword_100046B68;
  if (!qword_100046B68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100046B68);
  }

  return result;
}

unint64_t sub_10000386C(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_100034DD4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100003B6C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unsigned __int8 *sub_100003B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_100034A84();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000040F8(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_100034DD4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000040F8(uint64_t a1, unint64_t a2)
{
  v2 = sub_100034A94();
  v6 = sub_100004178(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100004178(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_100034D24();
    if (!v9 || (v10 = v9, v11 = sub_10001B3D4(v9, 0), v12 = sub_1000042D0(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1000349F4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1000349F4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_100034DD4();
LABEL_4:

  return sub_1000349F4();
}

unint64_t sub_1000042D0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000044F0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_100034A54();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_100034DD4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000044F0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_100034A34();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1000044F0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100034A64();
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
    v5 = sub_100034A44();
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

void *sub_10000456C()
{
  if (qword_1000469B0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v0 = qword_1000493C0;
    v1 = *(qword_1000493C0 + 16);
    result = &_swiftEmptyArrayStorage;
    if (!v1)
    {
      return result;
    }

    v38 = &_swiftEmptyArrayStorage;

    sub_100034E04();
    v31 = *(v0 + 16);
    v28 = objc_opt_self();
    v29 = v1;
    v3 = 0;
    v4 = (v0 + 72);
    v30 = v0;
    while (v31 != v3)
    {
      if (v3 >= *(v0 + 16))
      {
        goto LABEL_22;
      }

      v6 = *(v4 - 5);
      v7 = *(v4 - 32);
      v8 = *(v4 - 3);
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      v11 = *v4;
      v36._countAndFlagsBits = v3;
      v12 = v9;
      v33 = v8;
      v34 = v11;
      v35 = v10;
      sub_1000053EC(v10, v11);
      v32 = sub_100034EA4();
      v36._countAndFlagsBits = sub_10001D27C(v6);
      v36._object = v13;
      v39._countAndFlagsBits = 32;
      v39._object = 0xE100000000000000;
      sub_100034A14(v39);
      if (v7)
      {
        v14._countAndFlagsBits = 0x6C6961746544;
      }

      else
      {
        v14._countAndFlagsBits = 1819047238;
      }

      if (v7)
      {
        v15 = 0xE600000000000000;
      }

      else
      {
        v15 = 0xE400000000000000;
      }

      v14._object = v15;
      sub_100034A14(v14);

      v16 = v36;
      v17 = [v28 mainBundle];
      v27._countAndFlagsBits = 0xE000000000000000;
      v40.value._countAndFlagsBits = 0;
      v40.value._object = 0;
      v18.super.isa = v17;
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      sub_100034284(v16, v40, v18, v41, 0, v27);

      if (v9)
      {
        *(&v37 + 1) = sub_100003820();
        v36._countAndFlagsBits = v12;
      }

      else
      {
        v36 = 0;
        v37 = 0u;
      }

      v19 = v12;
      v20 = sub_100034984();

      v21 = sub_100034984();

      v22 = *(&v37 + 1);
      if (*(&v37 + 1))
      {
        v23 = sub_1000054E4(&v36, *(&v37 + 1));
        v24 = *(v22 - 8);
        __chkstk_darwin(v23);
        v26 = &v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v24 + 16))(v26);
        v5 = sub_100034EB4();
        (*(v24 + 8))(v26, v22);
        sub_1000026BC(&v36);
      }

      else
      {
        v5 = 0;
      }

      ++v3;
      [objc_allocWithZone(PREditingLook) initWithIdentifier:v20 displayName:v21 initialTimeFontConfiguration:0 initialTitleColor:v5];

      swift_unknownObjectRelease();
      sub_1000054D4(v35, v34);
      sub_100034DE4();
      sub_100034E14();
      sub_100034E24();
      sub_100034DF4();
      v4 += 6;
      v0 = v30;
      if (v29 == v3)
      {

        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }
}

uint64_t sub_100004930(void *a1)
{
  v2 = sub_100034874();
  v53 = *(v2 - 1);
  v3 = __chkstk_darwin(v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v50 - v6;
  if (qword_1000469B0 != -1)
  {
LABEL_35:
    swift_once();
  }

  v8 = *(qword_1000493C0 + 16);
  if (!v8)
  {
LABEL_26:
    sub_100034814();
    v23 = a1[2];
    v59 = a1[3];
    v24 = a1[4];
    v25 = a1[5];
    v26 = v23;
    sub_1000053FC(&v59, &v58);
    sub_1000053EC(v24, v25);
    v27 = sub_100034854();
    v28 = sub_100034C54();

    sub_10000546C(&v59);
    sub_1000054D4(v24, v25);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v58 = v30;
      *v29 = 136315138;
      v31 = sub_1000076E0(*a1, *(a1 + 8), v23);
      v33 = sub_10001AF94(v31, v32, &v58);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Could not figure out look identifier for configuration: %s", v29, 0xCu);
      sub_1000026BC(v30);
    }

    (*(v53 + 8))(v5, v2);
    v58 = 0;
    return sub_100034EA4();
  }

  v50 = v5;
  v51 = v7;
  v52 = v2;
  v9 = *a1;

  v11 = 0;
  v2 = (v10 + 72);
  v55 = v10;
  v56 = v9;
  while (1)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (*(v2 - 5) != v9)
    {
      goto LABEL_4;
    }

    v12 = *(v2 - 3);
    v13 = *(v2 - 2);
    v5 = *(v2 - 1);
    v14 = *v2;
    v15 = *(v2 - 32) ? 0x6C6961746544 : 1819047238;
    v7 = (*(v2 - 32) ? 0xE600000000000000 : 0xE400000000000000);
    v16 = a1;
    v17 = *(a1 + 8);
    v54 = v17;
    v18 = v17 ? 0x6C6961746544 : 1819047238;
    v19 = v17 ? 0xE600000000000000 : 0xE400000000000000;
    if (v15 == v18 && v7 == v19)
    {
      break;
    }

    v57 = sub_100034EC4();
    v21 = v13;
    v22 = v12;
    sub_1000053EC(v5, v14);

    sub_1000054D4(v5, v14);
    a1 = v16;
    v10 = v55;
    v9 = v56;
    if (v57)
    {
      goto LABEL_30;
    }

LABEL_4:
    ++v11;
    v2 += 6;
    if (v8 == v11)
    {

      v2 = v52;
      v5 = v50;
      goto LABEL_26;
    }
  }

  v34 = v13;
  v35 = v12;
  sub_1000053EC(v5, v14);

  sub_1000054D4(v5, v14);
  a1 = v16;
  v9 = v56;
LABEL_30:

  v36 = a1;
  v37 = v51;
  sub_100034814();
  v38 = v36[2];
  v59 = v36[3];
  v39 = v36[4];
  v40 = v36[5];
  v41 = v38;
  sub_1000053FC(&v59, &v58);
  sub_1000053EC(v39, v40);
  v42 = sub_100034854();
  v43 = sub_100034C34();

  sub_10000546C(&v59);
  sub_1000054D4(v39, v40);
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v58 = v45;
    *v44 = 134218242;
    *(v44 + 4) = v11;
    *(v44 + 12) = 2080;
    v46 = sub_1000076E0(v9, v54, v38);
    v48 = sub_10001AF94(v46, v47, &v58);

    *(v44 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v42, v43, "Look identifier %ld for configuration: %s", v44, 0x16u);
    sub_1000026BC(v45);
  }

  (*(v53 + 8))(v37, v52);
  v58 = v11;
  return sub_100034EA4();
}

void sub_100004E58(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100034874();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v58[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 identifier];
  v9 = sub_1000349B4();
  v11 = v10;

  v12 = HIBYTE(v11) & 0xF;
  v13 = v9 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v14 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    if ((v11 & 0x1000000000000000) != 0)
    {
      v59 = 0;
      v17 = sub_100003B6C(v9, v11, 10);
      v35 = v56;
      goto LABEL_63;
    }

    if ((v11 & 0x2000000000000000) == 0)
    {
      if ((v9 & 0x1000000000000000) == 0)
      {
        goto LABEL_77;
      }

      for (i = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_100034DD4())
      {
        v16 = *i;
        if (v16 == 43)
        {
          if (v13 < 1)
          {
            goto LABEL_81;
          }

          v12 = v13 - 1;
          if (v13 == 1)
          {
            goto LABEL_61;
          }

          v17 = 0;
          if (i)
          {
            v24 = i + 1;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                goto LABEL_61;
              }

              v26 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                goto LABEL_61;
              }

              v17 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                goto LABEL_61;
              }

              ++v24;
              if (!--v12)
              {
                goto LABEL_62;
              }
            }
          }
        }

        else if (v16 == 45)
        {
          if (v13 < 1)
          {
            goto LABEL_79;
          }

          v12 = v13 - 1;
          if (v13 == 1)
          {
            goto LABEL_61;
          }

          v17 = 0;
          if (i)
          {
            v18 = i + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                break;
              }

              v20 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                break;
              }

              v17 = v20 - v19;
              if (__OFSUB__(v20, v19))
              {
                break;
              }

              ++v18;
              if (!--v12)
              {
                goto LABEL_62;
              }
            }

LABEL_61:
            v17 = 0;
            LOBYTE(v12) = 1;
            goto LABEL_62;
          }
        }

        else
        {
          if (!v13)
          {
            goto LABEL_61;
          }

          v17 = 0;
          if (i)
          {
            do
            {
              v30 = *i - 48;
              if (v30 > 9)
              {
                goto LABEL_61;
              }

              v31 = 10 * v17;
              if ((v17 * 10) >> 64 != (10 * v17) >> 63)
              {
                goto LABEL_61;
              }

              v17 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                goto LABEL_61;
              }

              ++i;
            }

            while (--v13);
          }
        }

        LOBYTE(v12) = 0;
LABEL_62:
        v59 = v12;
        v35 = v12;
LABEL_63:

        if (v35)
        {
          goto LABEL_64;
        }

        if (qword_1000469B0 == -1)
        {
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_68;
          }
        }

        else
        {
          swift_once();
          if ((v17 & 0x8000000000000000) == 0)
          {
LABEL_68:
            if (v17 < *(qword_1000493C0 + 16))
            {
              v47 = qword_1000493C0 + 48 * v17;
              v48 = *(v47 + 32);
              v49 = *(v47 + 40);
              v51 = *(v47 + 48);
              v50 = *(v47 + 56);
              v52 = *(v47 + 64);
              v53 = *(v47 + 72);
              v54 = v50;
              v55 = v51;
              sub_1000053EC(v52, v53);
              goto LABEL_72;
            }

            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
            goto LABEL_82;
          }
        }

        __break(1u);
LABEL_77:
        ;
      }
    }

    v58[0] = v9;
    v58[1] = v11 & 0xFFFFFFFFFFFFFFLL;
    if (v9 != 43)
    {
      if (v9 != 45)
      {
        if (v12)
        {
          v17 = 0;
          v32 = v58;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            v34 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              break;
            }

            v32 = (v32 + 1);
            if (!--v12)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v12)
      {
        if (--v12)
        {
          v17 = 0;
          v21 = v58 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v12)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_80;
    }

    if (v12)
    {
      if (--v12)
      {
        v17 = 0;
        v27 = v58 + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v12)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

LABEL_82:
    __break(1u);
  }

  else
  {

LABEL_64:
    sub_100034814();
    v36 = a1;
    v37 = sub_100034854();
    v38 = sub_100034C54();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v58[0] = v40;
      *v39 = 136315138;
      v41 = [v36 identifier];
      v42 = sub_1000349B4();
      v57 = v4;
      v43 = v5;
      v45 = v44;

      v46 = sub_10001AF94(v42, v45, v58);

      *(v39 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "Could not convert look identifier to Int: %s", v39, 0xCu);
      sub_1000026BC(v40);

      (*(v43 + 8))(v7, v57);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v48 = 0;
    v49 = 0;
    v50 = 0;
    v52 = 0;
    v53 = 0;
    v51 = 1;
LABEL_72:
    *a2 = v48;
    a2[1] = v49;
    a2[2] = v51;
    a2[3] = v50;
    a2[4] = v52;
    a2[5] = v53;
  }
}

uint64_t sub_1000053EC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000053FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035B0(&unk_1000481C0, &qword_100036F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000546C(uint64_t a1)
{
  v2 = sub_1000035B0(&unk_1000481C0, &qword_100036F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000054D4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_1000054E4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_100005528(void *a1, void *a2)
{
  v5 = [objc_opt_self() blackColor];
  [a1 setBackgroundColor:v5];

  v6 = [v2 vistaView];
  [a1 addSubview:v6];

  v7 = [v2 vistaView];
  v8 = [v7 quadViews];

  sub_1000057F4();
  v9 = sub_100034AC4();

  if (v9 >> 62)
  {
    if (sub_100034E44())
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = sub_100034DC4();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v10 = *(v9 + 32);
  }

  v11 = v10;

  [a2 addSubview:v11];
}

unint64_t sub_1000056D8()
{
  v1 = [v0 vistaView];
  v2 = [v1 quadViews];

  sub_1000057F4();
  v3 = sub_100034AC4();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:

    return 0;
  }

  v4 = sub_100034E44();
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  v5 = __OFSUB__(v4, 1);
  result = v4 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v7 = sub_100034DC4();
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v7 = *(v3 + 8 * result + 32);
LABEL_8:
  v8 = v7;

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return result;
  }

  return 0;
}

unint64_t sub_1000057F4()
{
  result = qword_1000481B0;
  if (!qword_1000481B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000481B0);
  }

  return result;
}

uint64_t sub_100005840(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100005858(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000586C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1000058C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_100005938()
{
  v0 = sub_100034354();
  sub_100007D20(v0, qword_1000493C8);
  v1 = sub_100007CE8(v0, qword_1000493C8);
  return sub_100005984(v1);
}

uint64_t sub_100005984@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_1000035B0(&unk_100048480, &qword_100036730);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  v4 = sub_1000035B0(&qword_100046B70, &qword_100036738);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1000035B0(&qword_100046B78, &unk_100036740);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_100034274();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100034394();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = sub_1000343C4();
  v16 = *(*(v15 - 8) + 56);
  v16(v6, 1, 1, v15);
  sub_100034254();
  sub_100034224();
  sub_100034234();
  sub_1000341F4();
  sub_100034214();
  sub_100034244();
  sub_1000343B4();
  v16(v6, 0, 1, v15);
  sub_100034264();
  sub_100034204();
  v17 = sub_100034354();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v3, 1, v17) == 1)
  {
    sub_100034334();
    (*(v11 + 8))(v13, v10);
    result = v19(v3, 1, v17);
    if (result != 1)
    {
      return sub_100007DDC(v3, &unk_100048480, &qword_100036730);
    }
  }

  else
  {
    (*(v11 + 8))(v13, v10);
    return (*(v18 + 32))(v22, v3, v17);
  }

  return result;
}

uint64_t sub_100005D94@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000035B0(&unk_100048480, &qword_100036730);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v17 - v8;
  v10 = sub_100034984();
  v11 = CFPreferencesCopyAppValue(v10, kCFPreferencesAnyApplication);

  if (v11)
  {
    v17[1] = v11;
    v12 = sub_100034354();
    swift_dynamicCast();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v12 = sub_100034354();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  sub_100007C78(v9, v7);
  sub_100034354();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v7, 1, v12) == 1)
  {
    if (a1)
    {
      if (qword_1000469B8 != -1)
      {
        swift_once();
      }

      v15 = sub_100007CE8(v12, qword_1000493C8);
      (*(v13 + 16))(a2, v15, v12);
    }

    else
    {
      sub_100034334();
    }

    if (v14(v7, 1, v12) != 1)
    {
      sub_100007DDC(v7, &unk_100048480, &qword_100036730);
    }
  }

  else
  {
    (*(v13 + 32))(a2, v7, v12);
  }

  return sub_100007DDC(v9, &unk_100048480, &qword_100036730);
}

uint64_t sub_100006064(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 8) == 0;
    if (*(a1 + 8))
    {
      v3 = 0x6C6961746544;
    }

    else
    {
      v3 = 1819047238;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }

    if (*(a2 + 8))
    {
      v5 = 0x6C6961746544;
    }

    else
    {
      v5 = 1819047238;
    }

    if (*(a2 + 8))
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    if (v3 == v5 && v4 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_100034EC4();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_100006128(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_100034374();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100034394();
  v47 = *(v7 - 8);
  v48 = v7;
  __chkstk_darwin(v7);
  v46 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000035B0(&unk_100048480, &qword_100036730);
  __chkstk_darwin(v9 - 8);
  v11 = &v35[-v10];
  v49 = sub_100034354();
  v12 = *(v49 - 8);
  __chkstk_darwin(v49);
  v45 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *v2;
  v15 = v2[2];
  v16 = v2[4];
  v38 = v2[5];
  sub_10001D27C(v14);
  v40 = sub_1000349D4();
  v42 = v17;

  v41 = sub_1000349D4();
  v43 = v18;

  if (v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  v20 = v15;
  [v19 coordinate];

  v21 = sub_100034B94(2);
  v22 = sub_100034B94(2);
  v23 = v21 * 100.0;
  v24 = v49;
  if (v23 <= -2147483650.0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v23 >= 2147483650.0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25 = v22 * 100.0;
  v26 = COERCE__INT64(fabs(v22 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v26)
  {
    goto LABEL_17;
  }

  if (v25 <= -2147483650.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v25 >= 2147483650.0)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v27 = v12;
  v39 = v12;
  if (v16)
  {
    v16();
    (*(v12 + 56))(v11, 0, 1, v24);
    v28 = v45;
    (*(v27 + 32))(v45, v11, v24);
  }

  else
  {
    (*(v12 + 56))(v11, 1, 1, v49);
    v28 = v45;
    sub_100034334();
    if ((*(v27 + 48))(v11, 1, v24) != 1)
    {
      sub_100007DDC(v11, &unk_100048480, &qword_100036730);
    }
  }

  v36 = (36691 * v25) ^ (33469 * v23);
  v29 = v46;
  sub_100034364();
  v30 = *(v4 + 104);
  v30(v6, enum case for Calendar.Component.month(_:), v3);
  v37 = sub_100034384();
  v31 = *(v4 + 8);
  v31(v6, v3);
  v30(v6, enum case for Calendar.Component.day(_:), v3);
  v38 = sub_100034384();
  v31(v6, v3);
  v30(v6, enum case for Calendar.Component.timeZone(_:), v3);
  v45 = sub_100034384();
  v31(v6, v3);
  sub_100034BB4(3);
  sub_100034BB4(3);
  v32 = sub_100034CD4();
  v34 = v33;
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_100034DB4(48);
  v53._countAndFlagsBits = 40;
  v53._object = 0xE100000000000000;
  sub_100034A14(v53);
  sub_1000345B4();
  sub_100007D84();
  v54._countAndFlagsBits = sub_100034EA4();
  sub_100034A14(v54);

  v55._countAndFlagsBits = 2633001;
  v55._object = 0xE300000000000000;
  sub_100034A14(v55);
  v56._countAndFlagsBits = v40;
  v56._object = v42;
  sub_100034A14(v56);

  v57._countAndFlagsBits = 2633001;
  v57._object = 0xE300000000000000;
  sub_100034A14(v57);
  v58._countAndFlagsBits = v41;
  v58._object = v43;
  sub_100034A14(v58);

  v59._countAndFlagsBits = 2633001;
  v59._object = 0xE300000000000000;
  sub_100034A14(v59);
  LODWORD(v50) = v36;
  v60._countAndFlagsBits = sub_100034EA4();
  sub_100034A14(v60);

  v61._countAndFlagsBits = 2633001;
  v61._object = 0xE300000000000000;
  sub_100034A14(v61);
  v62._countAndFlagsBits = v32;
  v62._object = v34;
  sub_100034A14(v62);

  v63._countAndFlagsBits = 2633001;
  v63._object = 0xE300000000000000;
  sub_100034A14(v63);
  sub_100034BC4();
  v64._countAndFlagsBits = 10285;
  v64._object = 0xE200000000000000;
  sub_100034A14(v64);
  sub_100034BC4();
  v65._countAndFlagsBits = 2633001;
  v65._object = 0xE300000000000000;
  sub_100034A14(v65);
  v50 = v37;
  v66._countAndFlagsBits = sub_100034EA4();
  sub_100034A14(v66);

  v67._countAndFlagsBits = 2633001;
  v67._object = 0xE300000000000000;
  sub_100034A14(v67);
  v50 = v38;
  v68._countAndFlagsBits = sub_100034EA4();
  sub_100034A14(v68);

  v69._countAndFlagsBits = 2633001;
  v69._object = 0xE300000000000000;
  sub_100034A14(v69);
  v50 = v45;
  v70._countAndFlagsBits = sub_100034EA4();
  sub_100034A14(v70);

  v71._countAndFlagsBits = 41;
  v71._object = 0xE100000000000000;
  sub_100034A14(v71);
  sub_100034984();

  (*(v47 + 8))(v29, v48);
  (*(v39 + 8))(v28, v49);
}

uint64_t sub_10000695C(uint64_t a1)
{
  sub_100006128(a1);
  v2 = v1;
  v3 = [objc_opt_self() mainScreen];
  [v3 scale];

  v9._countAndFlagsBits = sub_100034B84();
  sub_100034A14(v9);

  v10._countAndFlagsBits = 120;
  v10._object = 0xE100000000000000;
  sub_100034A14(v10);
  sub_100034DB4(16);

  sub_1000345B4();
  sub_100007D84();
  v11._countAndFlagsBits = sub_100034EA4();
  sub_100034A14(v11);

  v4 = [v2 description];
  v5 = sub_1000349B4();
  v7 = v6;

  v12._countAndFlagsBits = v5;
  v12._object = v7;
  sub_100034A14(v12);

  v13._countAndFlagsBits = 64;
  v13._object = 0xE100000000000000;
  sub_100034A14(v13);

  v14._countAndFlagsBits = 1735290926;
  v14._object = 0xE400000000000000;
  sub_100034A14(v14);

  return 0x2D7269676561;
}

uint64_t sub_100006AFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000035B0(&qword_100046B88, &qword_100036750);
  v37 = v4;
  result = sub_100034E64();
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_100034EF4();
      sub_100034A04();
      result = sub_100034F14();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

uint64_t sub_100006DBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000035B0(&qword_100046B90, &qword_100036758);
  result = sub_100034E64();
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
        sub_100007E98((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_100007E3C(v23, &v36);
        sub_100007EA8(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_100034D64(*(v7 + 40));
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
      result = sub_100007E98(v35, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_100007074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10001B53C(a3, a4);
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
      sub_100006AFC(v18, a5 & 1);
      v13 = sub_10001B53C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_100034ED4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1000073C4();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

_OWORD *sub_1000071FC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10001B5B4(a2);
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
      sub_10000753C();
      goto LABEL_7;
    }

    sub_100006DBC(v13, a3 & 1);
    v19 = sub_10001B5B4(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100007E3C(a2, v21);
      return sub_100007348(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_100034ED4();
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
  sub_1000026BC(v17);

  return sub_100007E98(a1, v17);
}

_OWORD *sub_100007348(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100007E98(a3, (a4[7] + 32 * a1));
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

void *sub_1000073C4()
{
  v1 = v0;
  sub_1000035B0(&qword_100046B88, &qword_100036750);
  v2 = *v0;
  v3 = sub_100034E54();
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
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_10000753C()
{
  v1 = v0;
  sub_1000035B0(&qword_100046B90, &qword_100036758);
  v2 = *v0;
  v3 = sub_100034E54();
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
        sub_100007E3C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100007EA8(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100007E98(v22, (*(v4 + 56) + v17));
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

uint64_t sub_1000076E0(uint64_t a1, char a2, void *a3)
{
  v10 = sub_10001D27C(a1);

  v11._countAndFlagsBits = 44;
  v11._object = 0xE100000000000000;
  sub_100034A14(v11);

  v5 = (a2 & 1) == 0;
  if (a2)
  {
    v6 = 0x6C6961746544;
  }

  else
  {
    v6 = 1819047238;
  }

  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v12._countAndFlagsBits = v6;
  v12._object = v7;
  sub_100034A14(v12);

  result = v10;
  if (a3)
  {
    v9 = a3;
    [v9 coordinate];
    sub_100034BA4();
    v13._countAndFlagsBits = 44;
    v13._object = 0xE100000000000000;
    sub_100034A14(v13);
    [v9 coordinate];
    sub_100034BA4();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    sub_100034A14(v14);

    v15._countAndFlagsBits = 44;
    v15._object = 0xE100000000000000;
    sub_100034A14(v15);

    return v10;
  }

  return result;
}

void sub_100007864(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 currentLook];
  sub_100004E58(v4, &v18);

  v5 = v20;
  if (v20 == 1)
  {
    [objc_msgSend(a1 "environment")];
    swift_unknownObjectRelease();
    swift_getObjectType();
    v6 = sub_10001D800();
    v8 = v7;
    v10 = v9;

    swift_unknownObjectRelease();
    v11 = v8 & 1;
    if (v10 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6;
    }

    if (v10 == 1)
    {
      v11 = 0;
      v5 = 1;
    }

    else
    {
      v5 = v10;
    }
  }

  else
  {
    v14 = v22;
    v13 = v23;
    v15 = v21;
    v16 = v19;
    v12 = v18;

    v24 = v15;
    v17 = v5;
    sub_100007DDC(&v24, &unk_1000481C0, &qword_100036F70);
    sub_1000054D4(v14, v13);

    v11 = v16 & 1;
  }

  *a2 = v12;
  a2[1] = v11;
  a2[2] = v5;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
}

void *sub_1000079B0(uint64_t a1, char a2, void *a3)
{
  v5 = sub_10001D27C(a1);
  v7 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100007074(v5, v7, 0x6174736956, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v9 = (a2 & 1) == 0;
  if (a2)
  {
    v10 = 0x6C6961746544;
  }

  else
  {
    v10 = 1819047238;
  }

  if (v9)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_100007074(v10, v11, 0x656C797453, 0xE500000000000000, v12);
  if (a3)
  {
    v13 = a3;
    [v13 coordinate];
    sub_100034BA4();
    v16._countAndFlagsBits = 44;
    v16._object = 0xE100000000000000;
    sub_100034A14(v16);
    [v13 coordinate];
    sub_100034BA4();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_100007074(0, 0xE000000000000000, 0x6E6F697461636F4CLL, 0xE800000000000000, v14);
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_100007B44(uint64_t a1, char a2, void *a3)
{
  v5._countAndFlagsBits = sub_10001D27C(a1);
  sub_100034A14(v5);

  v6._countAndFlagsBits = 8236;
  v6._object = 0xE200000000000000;
  sub_100034A14(v6);
  sub_100034E34();
  v7._countAndFlagsBits = 8236;
  v7._object = 0xE200000000000000;
  sub_100034A14(v7);
  if (a3)
  {
    [a3 coordinate];
    sub_100034BA4();
    v8._countAndFlagsBits = 44;
    v8._object = 0xE100000000000000;
    sub_100034A14(v8);
    [a3 coordinate];
    sub_100034BA4();
  }

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100034A14(v9);

  return 0;
}

uint64_t sub_100007C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035B0(&unk_100048480, &qword_100036730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007CE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100007D20(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100007D84()
{
  result = qword_100046B80;
  if (!qword_100046B80)
  {
    sub_1000345B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046B80);
  }

  return result;
}

uint64_t sub_100007DDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000035B0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_100007E98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100007EA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_100007F04(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100007F28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100007F84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

id sub_100007FF8()
{
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v1 = result;
    v2 = [objc_allocWithZone(NUNIAstronomyVistaConfiguration) initWithDevice:result];

    [v2 setRendererStyle:3];
    v3 = [objc_opt_self() currentDevice];
    [v3 userInterfaceIdiom];

    v4 = sub_100034984();

    [v2 setTextureSuffix:v4];

    [v2 setColorSpace:2];
    v5 = [objc_opt_self() mainScreen];
    [v5 scale];
    v7 = v6;

    [v2 setScreenScale:v7];
    [v2 setQuadViewOptions:370];
    [v2 setIsGPUEnabled:1];
    [v2 setIsRTLLayout:0];
    v8 = sub_100034984();
    LODWORD(v4) = MGGetBoolAnswer();

    LODWORD(v9) = 1028443341;
    if (!v4)
    {
      *&v9 = 1.0;
    }

    [v2 setMaxAPL:v9];
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100008250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v7 = result;
    v8 = [objc_allocWithZone(NUNIAstronomyVistaConfiguration) initWithDevice:result];

    [v8 setRendererStyle:a1];
    v9 = sub_100034984();
    [v8 setTextureSuffix:v9];

    [v8 setColorSpace:a1];
    v10 = [objc_opt_self() mainScreen];
    [v10 scale];
    v12 = v11;

    [v8 setScreenScale:v12];
    [v8 setQuadViewOptions:a4];
    [v8 setIsGPUEnabled:1];
    [v8 setIsRTLLayout:0];
    v13 = sub_100034984();
    LODWORD(v10) = MGGetBoolAnswer();

    LODWORD(v14) = 1028443341;
    if (!v10)
    {
      *&v14 = 1.0;
    }

    [v8 setMaxAPL:v14];
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

const mach_header_64 *sub_100008414(uint64_t a1)
{
  if (a1 != 2)
  {
    return &_mh_execute_header;
  }

  sub_1000084E0();
  sub_100034964();
  v2 = v3;
  return (LODWORD(v2) ^ 0x80000000);
}

unint64_t sub_1000084E0()
{
  result = qword_1000479E0;
  if (!qword_1000479E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000479E0);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for AegirPosterEnvironment(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AegirPosterEnvironment(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AegirPosterEnvironment(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1000085A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_100034314() & 1) == 0)
  {
    return 0;
  }

  sub_10000A83C(0, &qword_100048390, NSObject_ptr);
  return sub_100034CF4() & 1;
}

uint64_t sub_100008654(uint64_t a1, float a2, float a3)
{
  sub_100034DB4(65);
  v4._object = 0x80000001000373B0;
  v4._countAndFlagsBits = 0xD000000000000013;
  sub_100034A14(v4);
  sub_100034BC4();
  v5._countAndFlagsBits = 0xD00000000000001ALL;
  v5._object = 0x80000001000373D0;
  sub_100034A14(v5);
  sub_100034BC4();
  v6._countAndFlagsBits = 0x746E6569726F202CLL;
  v6._object = 0xEE003D6E6F697461;
  sub_100034A14(v6);
  v7._countAndFlagsBits = sub_100034CD4();
  sub_100034A14(v7);

  return 0;
}

double sub_1000087A0()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0.05;
  if (!v1)
  {
    v2 = -0.15;
  }

  LODWORD(v3) = 0;
  *(&v3 + 1) = v2;
  dword_100046BB8 = 1091792046;
  result = -0.125;
  qword_100046BC0 = v3;
  unk_100046BC8 = 0xBFC0000000000000;
  dword_100046BD0 = 1065353216;
  return result;
}

void sub_100008844()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0.1;
  if (!v1)
  {
    v2 = -0.1;
  }

  LODWORD(v3) = 0;
  *(&v3 + 1) = v2;
  dword_100046BD8 = 1085818841;
  qword_100046BE0 = v3;
  qword_100046BE8 = 0;
  dword_100046BF0 = 1065353216;
}

void sub_1000088FC(uint64_t a1, _DWORD *a2, void *a3, void *a4, _DWORD *a5)
{
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  v11 = 0.15;
  if (!v10)
  {
    v11 = -0.05;
  }

  LODWORD(v12) = 0;
  *(&v12 + 1) = v11;
  *a2 = 1085818841;
  *a3 = v12;
  *a4 = 0;
  *a5 = 1065353216;
}

double sub_1000089B4()
{
  dword_100046C18 = 1089441946;
  *&result = 3187671040;
  qword_100046C20 = 3187671040;
  qword_100046C28 = 0;
  dword_100046C30 = 1065353216;
  return result;
}

double sub_1000089E4()
{
  dword_100046C38 = 1092395897;
  *&result = 3156465418;
  qword_100046C40 = 3156465418;
  unk_100046C48 = 0xBF80000000000000;
  dword_100046C50 = 1065353216;
  return result;
}

double sub_100008A18()
{
  dword_100046C58 = 1089441946;
  *&result = 3186328863;
  qword_100046C60 = 3186328863;
  qword_100046C68 = 0;
  dword_100046C70 = 1065353216;
  return result;
}

double sub_100008A48()
{
  dword_100046C78 = 1089441946;
  *&result = 3187671040;
  qword_100046C80 = 3187671040;
  qword_100046C88 = 0;
  dword_100046C90 = 1065353216;
  return result;
}

float sub_100008A78()
{
  if (qword_1000469C0 != -1)
  {
    swift_once();
  }

  v0 = dword_100046B98;
  v1 = qword_100046BA0;
  v2 = qword_100046BA8;
  v3 = dword_100046BB0;
  if (qword_1000469E0 != -1)
  {
    swift_once();
  }

  result = *&dword_100046C18;
  dword_100046C98 = v0;
  qword_100046CA0 = v1;
  unk_100046CA8 = v2;
  dword_100046CB0 = v3;
  dword_100046CB8 = dword_100046C18;
  qword_100046CC0 = qword_100046C20;
  unk_100046CC8 = qword_100046C28;
  dword_100046CD0 = dword_100046C30;
  return result;
}

float sub_100008B44()
{
  if (qword_1000469C8 != -1)
  {
    swift_once();
  }

  v0 = dword_100046BB8;
  v1 = qword_100046BC0;
  v2 = unk_100046BC8;
  v3 = dword_100046BD0;
  if (qword_1000469E8 != -1)
  {
    swift_once();
  }

  result = *&dword_100046C38;
  dword_100046CD8 = v0;
  qword_100046CE0 = v1;
  unk_100046CE8 = v2;
  dword_100046CF0 = v3;
  dword_100046CF8 = dword_100046C38;
  qword_100046D00 = qword_100046C40;
  unk_100046D08 = unk_100046C48;
  dword_100046D10 = dword_100046C50;
  return result;
}

float sub_100008C10()
{
  if (qword_1000469D0 != -1)
  {
    swift_once();
  }

  v0 = dword_100046BD8;
  v1 = qword_100046BE0;
  v2 = qword_100046BE8;
  v3 = dword_100046BF0;
  if (qword_1000469F0 != -1)
  {
    swift_once();
  }

  result = *&dword_100046C58;
  dword_100046D18 = v0;
  qword_100046D20 = v1;
  unk_100046D28 = v2;
  dword_100046D30 = v3;
  dword_100046D38 = dword_100046C58;
  qword_100046D40 = qword_100046C60;
  unk_100046D48 = qword_100046C68;
  dword_100046D50 = dword_100046C70;
  return result;
}

float sub_100008CDC()
{
  if (qword_1000469D8 != -1)
  {
    swift_once();
  }

  v0 = dword_100046BF8;
  v1 = qword_100046C00;
  v2 = qword_100046C08;
  v3 = dword_100046C10;
  if (qword_1000469F8 != -1)
  {
    swift_once();
  }

  result = *&dword_100046C78;
  dword_100046D58 = v0;
  qword_100046D60 = v1;
  unk_100046D68 = v2;
  dword_100046D70 = v3;
  dword_100046D78 = dword_100046C78;
  qword_100046D80 = qword_100046C80;
  unk_100046D88 = qword_100046C88;
  dword_100046D90 = dword_100046C90;
  return result;
}

double sub_100008DA8()
{
  dword_100046D98 = 1079845637;
  result = 0.5;
  qword_100046DA0 = 0x3FE0000000000000;
  unk_100046DA8 = 0x3FE0000000000000;
  dword_100046DB0 = 1065353216;
  return result;
}

double sub_100008DD4()
{
  dword_100046DB8 = 1087026543;
  result = 0.00273437425;
  qword_100046DC0 = 0x3F66666600000000;
  qword_100046DC8 = 0;
  dword_100046DD0 = 1065353216;
  return result;
}

double sub_100008E04()
{
  dword_100046DD8 = 1079845637;
  *&result = 3217450598;
  qword_100046DE0 = 3217450598;
  unk_100046DE8 = 0x4010000000000000;
  dword_100046DF0 = 1065353216;
  return result;
}

double sub_100008E38()
{
  dword_100046DF8 = 1087026543;
  *&result = 3208642560;
  qword_100046E00 = 3208642560;
  qword_100046E08 = 0;
  dword_100046E10 = 1065353216;
  return result;
}

float sub_100008E68()
{
  if (qword_100046A20 != -1)
  {
    swift_once();
  }

  v0 = dword_100046D98;
  v1 = qword_100046DA0;
  v2 = unk_100046DA8;
  v3 = dword_100046DB0;
  if (qword_100046A30 != -1)
  {
    swift_once();
  }

  result = *&dword_100046DD8;
  dword_100046E18 = v0;
  qword_100046E20 = v1;
  qword_100046E28 = v2;
  dword_100046E30 = v3;
  dword_100046E38 = dword_100046DD8;
  qword_100046E40 = qword_100046DE0;
  qword_100046E48 = unk_100046DE8;
  dword_100046E50 = dword_100046DF0;
  return result;
}

float sub_100008F34()
{
  if (qword_100046A28 != -1)
  {
    swift_once();
  }

  v0 = dword_100046DB8;
  v1 = qword_100046DC0;
  v2 = qword_100046DC8;
  v3 = dword_100046DD0;
  if (qword_100046A38 != -1)
  {
    swift_once();
  }

  result = *&dword_100046DF8;
  dword_100046E58 = v0;
  qword_100046E60 = v1;
  qword_100046E68 = v2;
  dword_100046E70 = v3;
  dword_100046E78 = dword_100046DF8;
  qword_100046E80 = qword_100046E00;
  qword_100046E88 = qword_100046E08;
  dword_100046E90 = dword_100046E10;
  return result;
}

double sub_100009000()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0.9;
  if (v1)
  {
    v2 = 1.25;
  }

  __asm { FMOV            V1.2S, #-1.0 }

  *(&_D1 + 1) = v2;
  dword_100046E98 = 1075860221;
  result = 0.00781250558;
  qword_100046EA0 = _D1;
  unk_100046EA8 = 0x3F800000BFB9999ALL;
  dword_100046EB0 = 1065353216;
  return result;
}

double sub_10000909C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v3 = 0.7;
  if (!v1)
  {
    v3 = 0.35;
  }

  v2.i32[0] = -1085485875;
  LODWORD(v4) = vdup_lane_s32(v2, 0).u32[0];
  *(&v4 + 1) = v3;
  dword_100046EB8 = 1079362555;
  result = 0.0000256347812;
  qword_100046EC0 = v4;
  unk_100046EC8 = 0x3EFAE148BF4CCCCDLL;
  dword_100046ED0 = 1065353216;
  return result;
}

double sub_10000914C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v3 = 0.7;
  if (!v1)
  {
    v3 = 0.35;
  }

  v2.i32[0] = 1061997773;
  LODWORD(v4) = vdup_lane_s32(v2, 0).u32[0];
  *(&v4 + 1) = v3;
  dword_100046ED8 = 1079362555;
  result = 0.0000256347739;
  qword_100046EE0 = v4;
  unk_100046EE8 = 0x3EFAE1483F4CCCCDLL;
  dword_100046EF0 = 1065353216;
  return result;
}

double sub_1000091FC()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 0.925;
  if (!v1)
  {
    v2 = 0.575;
  }

  LODWORD(v3) = 0;
  *(&v3 + 1) = v2;
  dword_100046EF8 = 1078637935;
  result = 0.000170898391;
  qword_100046F00 = v3;
  unk_100046F08 = 0x3F26666600000000;
  dword_100046F10 = 1065353216;
  return result;
}

double sub_1000092A0()
{
  dword_100046F18 = 1083161897;
  *&result = 3206662849;
  qword_100046F20 = 3206662849;
  unk_100046F28 = 0x3F86666600000000;
  dword_100046F30 = 1065353216;
  return result;
}

double sub_1000092D4()
{
  dword_100046F38 = 1083161897;
  *&result = 3206662849;
  qword_100046F40 = 3206662849;
  unk_100046F48 = 0x3F26666600000000;
  dword_100046F50 = 1065353216;
  return result;
}

float sub_100009308()
{
  if (qword_100046A50 != -1)
  {
    swift_once();
  }

  v0 = dword_100046E98;
  v1 = qword_100046EA0;
  v2 = unk_100046EA8;
  v3 = dword_100046EB0;
  if (qword_100046A70 != -1)
  {
    swift_once();
  }

  result = *&dword_100046F18;
  dword_100046F58 = v0;
  qword_100046F60 = v1;
  unk_100046F68 = v2;
  dword_100046F70 = v3;
  dword_100046F78 = dword_100046F18;
  qword_100046F80 = qword_100046F20;
  unk_100046F88 = unk_100046F28;
  dword_100046F90 = dword_100046F30;
  return result;
}

float sub_1000093D4()
{
  if (qword_100046A60 != -1)
  {
    swift_once();
  }

  v0 = dword_100046ED8;
  v1 = qword_100046EE0;
  v2 = unk_100046EE8;
  v3 = dword_100046EF0;
  if (qword_100046A78 != -1)
  {
    swift_once();
  }

  result = *&dword_100046F38;
  dword_100046F98 = v0;
  qword_100046FA0 = v1;
  unk_100046FA8 = v2;
  dword_100046FB0 = v3;
  dword_100046FB8 = dword_100046F38;
  qword_100046FC0 = qword_100046F40;
  unk_100046FC8 = unk_100046F48;
  dword_100046FD0 = dword_100046F50;
  return result;
}

float sub_1000094A0()
{
  if (qword_100046A58 != -1)
  {
    swift_once();
  }

  v0 = dword_100046EB8;
  v1 = qword_100046EC0;
  v2 = unk_100046EC8;
  v3 = dword_100046ED0;
  if (qword_100046A78 != -1)
  {
    swift_once();
  }

  result = *&dword_100046F38;
  dword_100046FD8 = v0;
  qword_100046FE0 = v1;
  unk_100046FE8 = v2;
  dword_100046FF0 = v3;
  dword_100046FF8 = dword_100046F38;
  qword_100047000 = qword_100046F40;
  unk_100047008 = unk_100046F48;
  dword_100047010 = dword_100046F50;
  return result;
}

float sub_10000956C()
{
  if (qword_100046A68 != -1)
  {
    swift_once();
  }

  v0 = dword_100046EF8;
  v1 = qword_100046F00;
  v2 = unk_100046F08;
  v3 = dword_100046F10;
  if (qword_100046A78 != -1)
  {
    swift_once();
  }

  result = *&dword_100046F38;
  dword_100047018 = v0;
  qword_100047020 = v1;
  unk_100047028 = v2;
  dword_100047030 = v3;
  dword_100047038 = dword_100046F38;
  qword_100047040 = qword_100046F40;
  unk_100047048 = unk_100046F48;
  dword_100047050 = dword_100046F50;
  return result;
}

uint64_t sub_100009650(void *a1, uint64_t a2, SEL *a3)
{
  v5 = [a1 *a3];
  [v5 bounds];

  [objc_msgSend(a1 "environment")];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();
  v23.origin.x = v7;
  v23.origin.y = v9;
  v23.size.width = v11;
  v23.size.height = v13;
  CGRectGetMinY(v23);
  [objc_msgSend(a1 "environment")];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  swift_unknownObjectRelease();
  v24.origin.x = v15;
  v24.origin.y = v17;
  v24.size.width = v19;
  v24.size.height = v21;
  CGRectGetMinY(v24);
  return a2;
}

BOOL sub_1000097C8(char a1, uint64_t a2)
{
  if (qword_100046AD0 != -1)
  {
    v9 = a2;
    swift_once();
    a2 = v9;
  }

  if (static DeviceUtilities.forceDisableForeground)
  {
    return 0;
  }

  v4 = a2;
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6)
  {
    if ((a1 & 1) == 0)
    {
      v7 = sub_100034EC4();

      if ((v7 & 1) == 0)
      {
        return (v4 - 3) < 2;
      }

      return 1;
    }

LABEL_10:

    return 1;
  }

  if (a1)
  {
    goto LABEL_10;
  }

  v8 = sub_100034EC4();

  return v8 & 1;
}

void sub_100009914(char a1, uint64_t a2)
{
  if ((a2 - 3) > 1)
  {
    if (a1)
    {
      v2 = sub_100034EC4();

      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v3 = [objc_opt_self() currentDevice];
    [v3 userInterfaceIdiom];

LABEL_10:
    v4 = [objc_opt_self() currentDevice];
    [v4 userInterfaceIdiom];

    return;
  }

  if (a1)
  {
    sub_100034EC4();

    sub_100034EC4();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }
}

float sub_100009BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000343C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_1000342F4().super.isa;
  sub_1000343B4();
  v9 = sub_1000343A4().super.isa;
  (*(v5 + 8))(v7, v4);
  [*(a1 + *(type metadata accessor for Geotime(0) + 20)) coordinate];
  v10 = NUNIMoonPhaseFor();

  if (v10 > 8 || ((1 << v10) & 0x23) != 0)
  {
    if (qword_100046A98 != -1)
    {
      swift_once();
    }

    v11 = &dword_100047038;
    v12 = (a2 - 3) >= 2;
    v13 = &dword_100047018;
  }

  else if (((1 << v10) & 0x4C) != 0)
  {
    if (qword_100046A88 != -1)
    {
      swift_once();
    }

    v11 = &dword_100046FB8;
    v12 = (a2 - 3) >= 2;
    v13 = &dword_100046F98;
  }

  else
  {
    if (qword_100046A90 != -1)
    {
      swift_once();
    }

    v11 = &dword_100046FF8;
    v12 = (a2 - 3) >= 2;
    v13 = &dword_100046FD8;
  }

  if (!v12)
  {
    v13 = v11;
  }

  return *v13;
}

uint64_t type metadata accessor for Geotime(uint64_t a1)
{
  result = qword_1000470B0;
  if (!qword_1000470B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100009EC0(uint64_t a1, char a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v28 = a1;
  v29 = a6;
  v9 = sub_1000035B0(&unk_100048480, &qword_100036730);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_100034354();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Geotime(0);
  v17 = __chkstk_darwin(v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    a4(v17);
    (*(v13 + 56))(v11, 0, 1, v12);
    (*(v13 + 32))(v15, v11, v12);
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    sub_100034334();
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_10000A548(v11);
    }
  }

  if (a3)
  {
    v20 = a3;
  }

  else
  {
    v20 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  (*(v13 + 32))(v19, v15, v12);
  *&v19[*(v16 + 20)] = v20;
  if ((a2 & 1) == 0)
  {
    v24 = a3;

    if (v28 != 2)
    {
      if (v28 != 3)
      {
LABEL_12:
        v23 = v29;
        if (qword_100046A40 == -1)
        {
          goto LABEL_17;
        }

        goto LABEL_40;
      }

      goto LABEL_16;
    }

    goto LABEL_26;
  }

  v21 = sub_100034EC4();
  v22 = a3;

  if ((v21 & 1) == 0 || v28 == 2)
  {
    if (v28 > 2)
    {
      if ((v28 - 4) < 6)
      {
        if (qword_100046A18 != -1)
        {
          swift_once();
        }

        v23 = v29;
        goto LABEL_17;
      }

      if (v28 == 3)
      {
        if (qword_100046A08 != -1)
        {
          swift_once();
        }

        v23 = v29;
        goto LABEL_17;
      }

      goto LABEL_37;
    }

    if (!v28)
    {
      if (qword_100046A80 != -1)
      {
        swift_once();
      }

      v23 = v29;
      goto LABEL_17;
    }

    if (v28 == 1)
    {
      v26 = v29;
      sub_100009BF0(v19, v29);
      v23 = v26;
      goto LABEL_17;
    }

    if (v28 != 2)
    {
LABEL_37:
      if (qword_100046A00 != -1)
      {
        swift_once();
      }

      v23 = v29;
      goto LABEL_17;
    }

LABEL_26:
    if (qword_100046A10 != -1)
    {
      swift_once();
    }

    v23 = v29;
    goto LABEL_17;
  }

  if (v28 != 3)
  {
    goto LABEL_12;
  }

LABEL_16:
  v23 = v29;
  if (qword_100046A48 != -1)
  {
LABEL_40:
    v27 = v29;
    swift_once();
    v23 = v27;
  }

LABEL_17:
  sub_100009914(a2 & 1, v23);
  return sub_10000A5B0(v19);
}

uint64_t sub_10000A548(uint64_t a1)
{
  v2 = sub_1000035B0(&unk_100048480, &qword_100036730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A5B0(uint64_t a1)
{
  v2 = type metadata accessor for Geotime(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000A620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100034354();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000A6F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100034354();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000A7A8(uint64_t a1)
{
  result = sub_100034354();
  if (v2 <= 0x3F)
  {
    result = sub_10000A83C(319, &qword_1000470C0, CLLocation_ptr);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000A83C(uint64_t a1, unint64_t *a2, void *a3)
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

float sub_10000A8E8()
{
  v1 = v0;
  v2 = sub_1000035B0(&unk_100048480, &qword_100036730);
  __chkstk_darwin(v2 - 8);
  v4 = &v73 - v3;
  v5 = sub_100034354();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Geotime(0);
  __chkstk_darwin(v9);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();

  v13 = sub_100034714();

  v14 = *(v0 + 16);
  v83 = sub_100009638(v14, v13);

  v15 = (v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
  if (IsReduceMotionEnabled)
  {
    v77 = v9;
    v78 = v8;
    v75 = v6;
    v79 = v5;
    v81 = v11;
    swift_beginAccess();
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    v20 = v15[4];
    v21 = v15[5];
    if (v18 == 1)
    {
      v22 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
      v73 = v4;
      v74 = v22;
      LODWORD(v82) = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
      v23 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
      v24 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
      v26 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
      v25 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
      v27 = v17;
      v28 = v21;
      v29 = v19;
      v30 = v20;
      v31 = v16;
      v32 = v24;
      v76 = v23;
      v33 = v23;
      v34 = v24;
      v80 = v25;
      sub_1000053EC(v26, v25);
      v16 = v31;
      v20 = v30;
      v19 = v29;
      v21 = v28;
      v17 = v27;
      v4 = v73;
      if (v26)
      {
LABEL_4:
        sub_10001BC90(v16, v17, v18, v19, v20, v21);
        v35 = v80;
        v26();
        v36 = v75;
        v37 = v79;
        (*(v75 + 56))(v4, 0, 1, v79);
        v38 = v78;
        (*(v36 + 32))(v78, v4, v37);
        goto LABEL_10;
      }
    }

    else
    {
      v74 = *v15;
      LODWORD(v82) = v17;
      v76 = v18;
      v34 = v19;
      v26 = v20;
      v80 = v21;
      if (v20)
      {
        goto LABEL_4;
      }
    }

    v36 = v75;
    v50 = *(v75 + 56);
    v51 = v16;
    v73 = v34;
    v52 = v79;
    v50(v4, 1, 1, v79);
    v53 = v19;
    v37 = v52;
    v34 = v73;
    sub_10001BC90(v51, v17, v18, v53, v20, v21);
    v38 = v78;
    sub_100034334();
    v54 = (*(v36 + 48))(v4, 1, v37);
    v35 = v80;
    if (v54 != 1)
    {
      sub_100007DDC(v4, &unk_100048480, &qword_100036730);
    }

LABEL_10:
    v55 = v34;
    v56 = v81;
    v57 = v76;
    if (v76)
    {
      v58 = v76;
    }

    else
    {
      v58 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
    }

    (*(v36 + 32))(v56, v38, v37);
    *&v56[*(v77 + 20)] = v58;
    if (v74 <= 2)
    {
      if (v74)
      {
        if (v74 == 1)
        {
          if (v82)
          {
            v64 = v57;
            v69 = v83;
            sub_100009BF0(v56, v83);
            v65 = v69;
LABEL_39:
            sub_100009914(v82 & 1, v65);
            v60 = v71;
            sub_10000A5B0(v56);

            v61 = v26;
            v62 = v35;
            goto LABEL_40;
          }
        }

        else if (v74 == 2)
        {
          v66 = qword_100046A10;
          v64 = v57;
          if (v66 != -1)
          {
            swift_once();
          }

          v65 = v83;
          goto LABEL_39;
        }
      }

      else if (v82)
      {
        v68 = qword_100046A80;
        v64 = v57;
        if (v68 != -1)
        {
          swift_once();
        }

        v65 = v83;
        goto LABEL_39;
      }
    }

    else
    {
      if ((v74 - 4) < 6)
      {
        v63 = qword_100046A18;
        v64 = v57;
        if (v63 != -1)
        {
          swift_once();
        }

        v65 = v83;
        goto LABEL_39;
      }

      if (v74 == 3)
      {
        v67 = qword_100046A08;
        v64 = v57;
        if (v67 != -1)
        {
          swift_once();
        }

        v65 = v83;
        goto LABEL_39;
      }
    }

    v70 = qword_100046A00;
    v64 = v57;
    if (v70 != -1)
    {
      swift_once();
    }

    v65 = v83;
    goto LABEL_39;
  }

  swift_beginAccess();
  v39 = *v15;
  v40 = v15[1];
  v41 = v15[2];
  v42 = v15[3];
  v43 = v15[4];
  v44 = v15[5];
  if (v41 == 1)
  {
    v45 = v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration;
    v80 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
    v46 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
    v47 = *(v45 + 16);
    v48 = *(v45 + 32);
    v49 = *(v45 + 40);
    v82 = *(v45 + 24);
    v81 = v47;
    sub_1000053EC(v48, v49);
  }

  else
  {
    v81 = v15[2];
    v82 = v42;
    v80 = v39;
    v46 = v40;
    v47 = v41;
    v48 = v43;
    v49 = v44;
  }

  sub_10001BC90(v39, v40, v41, v42, v43, v44);
  sub_100009EC0(v80, v46 & 1, v47, v48, v49, v83);
  v60 = v59;

  v61 = v48;
  v62 = v49;
LABEL_40:
  sub_1000054D4(v61, v62);
  return v60;
}

float sub_10000B0AC()
{
  v1 = v0;
  v2 = sub_1000035B0(&unk_100048480, &qword_100036730);
  __chkstk_darwin(v2 - 8);
  v4 = &v57 - v3;
  v5 = sub_100034354();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v65 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Geotime(0);
  __chkstk_darwin(v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000345A4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v57 - v15;
  v17 = *(v0 + 16);
  sub_100034BE4();

  LOBYTE(v17) = sub_100034584();
  v18 = *(v11 + 8);
  v18(v16, v10);
  if ((v17 & 1) != 0 || (v19 = *(v1 + 16), sub_100034BE4(), v19, sub_100034594(), v21 = v20, v18(v14, v10), v21 < 0.01))
  {
    v59 = v4;
    v60 = v7;
    v61 = v9;

    v22 = sub_100034714();

    v23 = *(v1 + 16);
    v63 = sub_100009638(v23, v22);

    v24 = (v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
    swift_beginAccess();
    v25 = *v24;
    v26 = v24[1];
    v28 = v24[2];
    v27 = v24[3];
    v29 = v24[4];
    v30 = v24[5];
    if (v28 == 1)
    {
      v57 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
      v64 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
      v31 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
      v32 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
      v33 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
      v62 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
      v34 = v62;
      v58 = v31;
      v35 = v31;
      v36 = v33;
      sub_1000053EC(v32, v33);
      v37 = v67;
      if (v32)
      {
LABEL_5:
        sub_10001BC90(v25, v26, v28, v27, v29, v30);
        v38 = v59;
        v32();
        v39 = v66;
        (*(v66 + 56))(v38, 0, 1, v37);
        v40 = v65;
        (*(v39 + 32))(v65, v38, v37);
        goto LABEL_9;
      }
    }

    else
    {
      v57 = v25;
      v58 = v28;
      v64 = v26;
      v62 = v27;
      v32 = v29;
      v36 = v30;
      v37 = v67;
      if (v29)
      {
        goto LABEL_5;
      }
    }

    v67 = v30;
    v39 = v66;
    v41 = v59;
    (*(v66 + 56))(v59, 1, 1, v37);
    sub_10001BC90(v25, v26, v28, v27, v29, v67);
    v40 = v65;
    sub_100034334();
    if ((*(v39 + 48))(v41, 1, v37) != 1)
    {
      sub_100007DDC(v41, &unk_100048480, &qword_100036730);
    }

LABEL_9:
    v42 = v61;
    v43 = v58;
    if (v58)
    {
      v44 = v58;
    }

    else
    {
      v44 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
    }

    (*(v39 + 32))(v42, v40, v37);
    *(v42 + *(v60 + 20)) = v44;
    if (v57 <= 2)
    {
      if (v57)
      {
        if (v57 == 1)
        {
          if (v64)
          {
            v46 = v43;
            v53 = v63;
            sub_100009BF0(v42, v63);
            v47 = v53;
            v48 = v62;
LABEL_37:
            sub_100009914(v64 & 1, v47);
            v50 = v55;
            sub_10000A5B0(v42);

            sub_1000054D4(v32, v36);
            return v50;
          }
        }

        else if (v57 == 2)
        {
          v49 = qword_100046A10;
          v46 = v43;
          if (v49 != -1)
          {
            swift_once();
          }

          v48 = v62;
          v47 = v63;
          goto LABEL_37;
        }
      }

      else if (v64)
      {
        v52 = qword_100046A80;
        v46 = v43;
        if (v52 != -1)
        {
          swift_once();
        }

        v48 = v62;
        v47 = v63;
        goto LABEL_37;
      }
    }

    else
    {
      if ((v57 - 4) < 6)
      {
        v45 = qword_100046A18;
        v46 = v43;
        if (v45 != -1)
        {
          swift_once();
        }

        v48 = v62;
        v47 = v63;
        goto LABEL_37;
      }

      if (v57 == 3)
      {
        v51 = qword_100046A08;
        v46 = v43;
        if (v51 != -1)
        {
          swift_once();
        }

        v48 = v62;
        v47 = v63;
        goto LABEL_37;
      }
    }

    v54 = qword_100046A00;
    v46 = v43;
    if (v54 != -1)
    {
      swift_once();
    }

    v48 = v62;
    v47 = v63;
    goto LABEL_37;
  }

  return sub_10000A8E8();
}

uint64_t sub_10000B870()
{
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v1 = (v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
    swift_beginAccess();
    v3 = *v1;
    v2 = v1[1];
    v5 = v1[2];
    v4 = v1[3];
    v6 = *v1;
    v7 = v5;
    v9 = v1[4];
    v8 = v1[5];
    v10 = v4;
    v19 = v9;
    v11 = v8;
    if (v5 == 1)
    {
      v12 = v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration;
      v6 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
      v7 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
      v10 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
      v13 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
      v11 = *(v12 + 40);
      v18 = v2;
      v14 = v10;
      v15 = v7;
      v19 = v13;
      sub_1000053EC(v13, v11);
      v2 = v18;
    }

    if (v6 == 2)
    {
      sub_10001BC90(v3, v2, v5, v4, v9, v8);
      sub_1000084E0();
      sub_100034964();

      sub_1000054D4(v19, v11);
      *&v16 = v20;
      return v16;
    }

    sub_10001BC90(v3, v2, v5, v4, v9, v8);

    sub_1000054D4(v19, v11);
  }

  return 0;
}

BOOL sub_10000B9F0()
{
  v1 = sub_100034874();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 32);
  if (v5)
  {
    v6 = (*(v5 + OBJC_IVAR____TtC11AegirPoster20AegirLocationManager_cachedAuthorizationStatus) - 3) < 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
  sub_100034824();
  v8 = sub_100034854();
  v9 = sub_100034C44();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    *(v10 + 4) = v6;
    *(v10 + 8) = 1024;
    *(v10 + 10) = v7 != 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "canShowLocation — isAuthorized: %{BOOL}d; haveLocation: %{BOOL}d", v10, 0xEu);
  }

  (*(v2 + 8))(v4, v1);
  return v7 && v6;
}

void sub_10000BB98()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = sub_100034C14();

  if ((v7 & 1) == 0)
  {
    sub_100034834();
    v8 = sub_100034854();
    v9 = sub_100034C64();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Setup location manager", v10, 2u);
    }

    (*(v3 + 8))(v5, v2);
    v11 = objc_opt_self();
    v12 = [v11 defaultCenter];
    if (qword_100046AB8 != -1)
    {
      swift_once();
    }

    v13 = qword_100049418;
    v14 = swift_allocObject();
    swift_weakInit();
    v29 = sub_10001CD5C;
    v30 = v14;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_10001804C;
    v28 = &unk_100041B98;
    v15 = _Block_copy(&aBlock);

    v16 = [v12 addObserverForName:v13 object:0 queue:0 usingBlock:v15];
    _Block_release(v15);
    swift_unknownObjectRelease();

    v17 = [v11 defaultCenter];
    if (qword_100046AC0 != -1)
    {
      swift_once();
    }

    v18 = qword_100049420;
    v19 = swift_allocObject();
    swift_weakInit();
    v29 = sub_10001CD64;
    v30 = v19;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_10001804C;
    v28 = &unk_100041BC0;
    v20 = _Block_copy(&aBlock);

    v21 = [v17 addObserverForName:v18 object:0 queue:0 usingBlock:v20];
    _Block_release(v20);
    swift_unknownObjectRelease();

    v22 = objc_allocWithZone(type metadata accessor for AegirLocationManager());
    sub_1000215EC(0);
    v23 = *(v1 + 32);
    *(v1 + 32) = v24;
  }
}

id *sub_10000BF6C()
{
  v1 = v0;

  sub_1000344E4();

  sub_10000C25C();
  v2 = [v0[3] vistaView];
  [v2 stopAnimation];

  sub_1000345F4();

  sub_1000346D4();

  v3 = [objc_opt_self() defaultCenter];
  v4 = sub_100034984();
  [v3 postNotificationName:v4 object:0];

  v5 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_unlockState;
  v6 = sub_1000345A4();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  v7 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_wakeState;
  v8 = sub_1000347F4();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);

  sub_10001CAF4(*(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration), *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration + 8), *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration + 16), *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration + 24), *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration + 32), *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration + 40));

  v9 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_lastPulseDate;
  v10 = sub_100034354();
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  v11 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
  v12 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
  v13 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);

  sub_1000054D4(v12, v13);

  return v1;
}

void sub_10000C25C()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 32);
  if (v6)
  {
    v7 = v6;
    sub_100034834();
    v8 = sub_100034854();
    v9 = sub_100034C44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "teardown location manager", v10, 2u);
    }

    (*(v3 + 8))(v5, v2);
    v11 = [objc_opt_self() defaultCenter];
    [v11 removeObserver:v1];

    v12 = qword_100047100;
    v13 = off_100047108;

    v15._countAndFlagsBits = v12;
    v15._object = v13;
    sub_100034684(v15);

    sub_100022740();
  }
}

uint64_t sub_10000C434()
{
  sub_10000BF6C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for AegirRenderingCoordinator(uint64_t a1)
{
  result = qword_100047260;
  if (!qword_100047260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000C4E0(uint64_t a1)
{
  result = sub_1000345A4();
  if (v2 <= 0x3F)
  {
    result = sub_1000347F4();
    if (v3 <= 0x3F)
    {
      result = sub_100034354();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_10000C688(void *a1)
{
  v2 = v1;
  v4 = sub_100034874();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v57 = &v53 - v10;
  __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = *(v2 + 16);
  *(v2 + 16) = a1;
  v14 = a1;

  v56 = v14;
  [objc_msgSend(v14 "environment")];
  swift_unknownObjectRelease();
  swift_getObjectType();
  v15 = sub_10001D800();
  v17 = v16;
  v19 = v18;
  swift_unknownObjectRelease();
  if (v19 == 1)
  {
    sub_100034834();
    v20 = sub_100034854();
    v21 = sub_100034C64();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unable to create configuration from renderer", v22, 2u);
    }

    (*(v5 + 8))(v8, v4);
    return;
  }

  v59 = v15;
  v60 = v17 & 1;
  v61 = v19;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  sub_100034834();
  v23 = v19;
  v24 = sub_100034854();
  v25 = sub_100034C64();
  v54 = v17;
  sub_10001D240(v15, v17, v19);
  v26 = os_log_type_enabled(v24, v25);
  v55 = v15;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v53 = v5;
    v29 = v4;
    v30 = v28;
    v58 = v28;
    *v27 = 136315138;
    v31 = sub_10001D27C(v15);
    v33 = sub_10001AF94(v31, v32, &v58);
    v15 = v55;

    *(v27 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "apply vista: %s", v27, 0xCu);
    sub_1000026BC(v30);

    v34 = *(v53 + 8);
    v35 = v12;
    v36 = v29;
    v34(v35, v29);
  }

  else
  {

    v34 = *(v5 + 8);
    v37 = v12;
    v36 = v4;
    v34(v37, v4);
  }

  v38 = v57;
  if (v15 != *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration))
  {
    goto LABEL_25;
  }

  if (v54)
  {
    v39 = 0x6C6961746544;
  }

  else
  {
    v39 = 1819047238;
  }

  if (v54)
  {
    v40 = 0xE600000000000000;
  }

  else
  {
    v40 = 0xE400000000000000;
  }

  if (*(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8))
  {
    v41 = 0x6C6961746544;
  }

  else
  {
    v41 = 1819047238;
  }

  if (*(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8))
  {
    v42 = 0xE600000000000000;
  }

  else
  {
    v42 = 0xE400000000000000;
  }

  if (v39 != v41 || v40 != v42)
  {
    v43 = sub_100034EC4();

    if (v43)
    {
      goto LABEL_28;
    }

LABEL_25:
    sub_100034834();
    v44 = sub_100034854();
    v45 = sub_100034C64();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Applying new configuration", v46, 2u);
    }

    v34(v38, v36);
    [*(v2 + 24) disableCloudDataFetch:sub_100034C14() & 1];
    sub_10000CBDC(&v59);
    goto LABEL_28;
  }

LABEL_28:
  v47 = *(v2 + 24);
  v48 = *(v2 + 16);
  v49 = sub_100034C14();

  [v47 disableCloudDataFetch:v49 & 1];
  v50 = *(v2 + 16);
  v51 = sub_100034BD4();

  if (v51)
  {
    sub_10000E8E4();
  }

  else
  {
    sub_10000F9CC();
  }

  v52 = [v47 vistaView];
  [v52 purgeUnused];

  sub_10001D240(v55, v54, v19);
}

id sub_10000CBDC(uint64_t a1)
{
  v2 = sub_1000035B0(&unk_100047860, &unk_100036AD0);
  __chkstk_darwin(v2 - 8);
  v60 = &v54 - v3;
  v4 = sub_100034874();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034834();
  v7 = *(a1 + 16);
  v63 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v7;
  sub_10001CCAC(&v63, &v62, &unk_1000481C0, &qword_100036F70);
  sub_1000053EC(v8, v9);
  v11 = sub_100034854();
  v12 = sub_100034C64();
  v57 = v10;

  sub_100007DDC(&v63, &unk_1000481C0, &qword_100036F70);
  v58 = v9;
  v59 = v8;
  sub_1000054D4(v8, v9);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v62 = v14;
    *v13 = 136315138;
    v15 = *a1;
    v16 = sub_100007B44(*a1, *(a1 + 8), v7);
    v18 = sub_10001AF94(v16, v17, &v62);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Applying configuration: %s", v13, 0xCu);
    sub_1000026BC(v14);

    (*(v55 + 8))(v6, v56);
  }

  else
  {

    (*(v55 + 8))(v6, v56);
    v15 = *a1;
  }

  v19 = v61;
  *(v61 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isCurrentConfigurationChange) = 1;
  v20 = v19 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration;
  if (*(v19 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration) != v15)
  {
    [*(v19 + 24) setVista:v15];
  }

  v21 = [*(v19 + 24) vistaView];
  [v21 updateLightingPreference:v15 == 2];

  v22 = *(v20 + 16);
  v23 = *(v20 + 24);
  v24 = *(v20 + 32);
  v25 = *(v20 + 40);
  v26 = *(a1 + 16);
  *v20 = *a1;
  *(v20 + 16) = v26;
  *(v20 + 32) = *(a1 + 32);
  v27 = v57;
  sub_10001CCAC(&v63, &v62, &unk_1000481C0, &qword_100036F70);
  sub_1000053EC(v59, v58);

  sub_1000054D4(v24, v25);
  if (*v20 >= 3uLL)
  {
    v34 = qword_100047120;
    v35 = off_100047128;

    v64._countAndFlagsBits = v34;
    v64._object = v35;
    sub_100034684(v64);

    v36 = *(v19 + 32);
    if (v36)
    {
      v33 = v36;
      sub_100022740();
      goto LABEL_13;
    }
  }

  else
  {
    v28 = *(v19 + 16);
    v29 = sub_100034BD4();

    if ((v29 & 1) == 0)
    {
      v30 = *(v19 + 16);

      v31 = v30;

      sub_1000346C4();
    }

    v32 = *(v19 + 32);
    if (v32)
    {
      v33 = v32;
      sub_1000224F0();
LABEL_13:
    }
  }

  v37 = *(v19 + 16);

  v38 = sub_100034714();

  v39 = sub_100009638(v37, v38);
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v39;

  v47 = v19 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_rotationStartEnvironment;
  *v47 = v41 | (v43 << 32);
  *(v47 + 8) = v45;
  *(v47 + 16) = v46;
  *(v47 + 24) = 0;
  v48 = sub_100034B44();
  v49 = v60;
  (*(*(v48 - 8) + 56))(v60, 1, 1, v48);
  v50 = swift_allocObject();
  swift_weakInit();
  sub_100034B24();

  v51 = sub_100034B14();
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  *(v52 + 24) = &protocol witness table for MainActor;
  *(v52 + 32) = v50;
  *(v52 + 40) = 1;

  sub_10000E0F4(0, 0, v49, &unk_100036BC8, v52);

  return sub_1000136A4();
}

uint64_t sub_10000D1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 160) = a5;
  *(v5 + 64) = a4;
  v6 = sub_100034874();
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  sub_100034B24();
  *(v5 + 104) = sub_100034B14();
  v8 = sub_100034B04();
  *(v5 + 112) = v8;
  *(v5 + 120) = v7;

  return _swift_task_switch(sub_10000D2A8, v8, v7);
}

uint64_t sub_10000D2A8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (!Strong)
  {
LABEL_41:

    v60 = *(v0 + 8);

    return v60();
  }

  *(v0 + 136) = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tokenManager;
  v2 = *(Strong + 16);

  v3 = v2;

  sub_1000346C4();

  v4 = sub_100034714();
  *(v0 + 144) = v4;

  if (v4 == 1)
  {
    v5 = 1;
    if ((*(v0 + 160) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = v4 == 2;
    if (!*(v0 + 160))
    {
LABEL_4:

      sub_100034834();

      v6 = sub_100034854();
      v7 = sub_100034C64();
      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 128);
      v65 = v5;
      if (v8)
      {
        v10 = swift_slowAlloc();
        *v10 = 67109376;
        *(v10 + 4) = *(v9 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_hasPortraitWidgets);

        *(v10 + 8) = 1024;
        *(v10 + 10) = v5;
        _os_log_impl(&_mh_execute_header, v6, v7, "Renderer hasPortraitWidgets? %{BOOL}d isPortrait? %{BOOL}d", v10, 0xEu);
      }

      else
      {
      }

      v13 = *(v0 + 128);
      v64 = *(*(v0 + 80) + 8);
      v64(*(v0 + 96), *(v0 + 72));
      v14 = (v13 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
      swift_beginAccess();
      v15 = *v14;
      v16 = v14[1];
      v18 = v14[2];
      v17 = v14[3];
      v19 = v14[4];
      v20 = v14[5];
      if (v18 == 1)
      {
        v21 = *(v0 + 128) + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration;
        v62 = *(v21 + 8);
        v22 = *(v21 + 16);
        v23 = *(v21 + 32);
        v24 = *(v21 + 40);
        v61 = v15;
        v25 = v16;
        v26 = v17;
        v63 = *(v21 + 24);
        v27 = v22;
        sub_1000053EC(v23, v24);
        v17 = v26;
        v16 = v25;
        v15 = v61;
      }

      else
      {
        v63 = v14[3];
        v27 = v14[2];
        v62 = v14[1];
        v23 = v14[4];
        v24 = v14[5];
      }

      v28 = *(v0 + 144);
      v29 = *(v0 + 128);
      sub_10001BC90(v15, v16, v18, v17, v19, v20);
      v30 = sub_1000097C8(v62 & 1, v28);

      sub_1000054D4(v23, v24);
      v31 = *(v29 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_hasPortraitWidgets) & v65 | !v30;
      sub_100034834();
      v32 = sub_100034854();
      v33 = sub_100034C64();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 67109120;
        *(v34 + 4) = v31 & 1;
        _os_log_impl(&_mh_execute_header, v32, v33, "foreground should be hidden: %{BOOL}d", v34, 8u);
      }

      v35 = *(v0 + 128);
      v36 = *(v0 + 88);
      v37 = *(v0 + 72);

      v64(v36, v37);
      v38 = [*(v35 + 24) vistaView];
      v39 = [v38 quadViews];

      sub_1000057F4();
      v40 = sub_100034AC4();

      if (v40 >> 62)
      {
        result = sub_100034E44();
        if (result)
        {
LABEL_19:
          if ((v40 & 0xC000000000000001) != 0)
          {
            v41 = sub_100034DC4();
          }

          else
          {
            if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v41 = *(v40 + 32);
          }

          v42 = v41;

          [v42 setHidden:v31 & 1];

          if (v31)
          {
            goto LABEL_40;
          }

          goto LABEL_26;
        }
      }

      else
      {
        result = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_19;
        }
      }

      if (v31)
      {
LABEL_40:
        v58 = qword_100047110;
        v59 = off_100047118;

        v67._countAndFlagsBits = v58;
        v67._object = v59;
        sub_100034684(v67);

        sub_100012108(0);
        goto LABEL_41;
      }

LABEL_26:
      v43 = [*(v35 + 24) vistaView];
      [v43 frame];
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;

      v52 = v51 / 3.0;
      v53 = [objc_opt_self() currentDevice];
      v54 = [v53 userInterfaceIdiom];

      if (!v54)
      {
        v45 = 0.0;
        v47 = 0.0;
        goto LABEL_39;
      }

      v55 = *(v0 + 144);
      v56 = v49 / 3.0;
      if (v55 <= 2)
      {
        if (v55 == 1)
        {
          v45 = v56 + -50.0;
          v47 = 100.0;
          v49 = v56 + 100.0;
          goto LABEL_39;
        }

        if (v55 == 2)
        {
          v45 = v56 + -50.0;
          v47 = v52 + v52 + -100.0;
          v49 = v56 + 100.0;
LABEL_39:
          v57 = [*(v35 + 24) vistaView];
          [v57 updatePortalLayerBounds:{v45, v47, v49, v52}];

          goto LABEL_40;
        }

LABEL_35:
        v52 = v51;
        goto LABEL_39;
      }

      if (v55 == 3)
      {
        v45 = v56 + v56 + -120.0;
      }

      else
      {
        if (v55 != 4)
        {
          goto LABEL_35;
        }

        v45 = 120.0;
      }

      v47 = v51 / 3.0;
      v49 = v49 / 3.0;
      goto LABEL_39;
    }
  }

  *(v0 + 161) = v5;
  v11 = swift_task_alloc();
  *(v0 + 152) = v11;
  *v11 = v0;
  v11[1] = sub_10000D9E0;

  return sub_10001C4EC();
}

uint64_t sub_10000D9E0(char a1)
{
  v2 = *v1;
  *(*v1 + 162) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return _swift_task_switch(sub_10000DB08, v4, v3);
}

uint64_t sub_10000DB08()
{
  v1 = *(v0 + 162);
  v2 = *(v0 + 128);

  *(v2 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_hasPortraitWidgets) = v1;
  v3 = *(v0 + 161);
  sub_100034834();

  v4 = sub_100034854();
  v5 = sub_100034C64();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 128);
  v62 = v3;
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 67109376;
    *(v8 + 4) = *(v7 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_hasPortraitWidgets);

    *(v8 + 8) = 1024;
    *(v8 + 10) = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Renderer hasPortraitWidgets? %{BOOL}d isPortrait? %{BOOL}d", v8, 0xEu);
  }

  else
  {
  }

  v9 = *(v0 + 128);
  v61 = *(*(v0 + 80) + 8);
  v61(*(v0 + 96), *(v0 + 72));
  v10 = (v9 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  v14 = v10[2];
  v13 = v10[3];
  v15 = v10[4];
  v16 = v10[5];
  if (v14 == 1)
  {
    v17 = *(v0 + 128) + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration;
    v59 = *(v17 + 8);
    v18 = *(v17 + 16);
    v19 = *(v17 + 32);
    v20 = *(v17 + 40);
    v58 = v11;
    v21 = v12;
    v22 = v13;
    v60 = *(v17 + 24);
    v23 = v18;
    sub_1000053EC(v19, v20);
    v13 = v22;
    v12 = v21;
    v11 = v58;
  }

  else
  {
    v60 = v10[3];
    v23 = v10[2];
    v59 = v10[1];
    v19 = v10[4];
    v20 = v10[5];
  }

  v24 = *(v0 + 144);
  v25 = *(v0 + 128);
  sub_10001BC90(v11, v12, v14, v13, v15, v16);
  v26 = sub_1000097C8(v59 & 1, v24);

  sub_1000054D4(v19, v20);
  v27 = *(v25 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_hasPortraitWidgets) & v62 | !v26;
  sub_100034834();
  v28 = sub_100034854();
  v29 = sub_100034C64();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 67109120;
    *(v30 + 4) = v27 & 1;
    _os_log_impl(&_mh_execute_header, v28, v29, "foreground should be hidden: %{BOOL}d", v30, 8u);
  }

  v31 = *(v0 + 128);
  v32 = *(v0 + 88);
  v33 = *(v0 + 72);

  v61(v32, v33);
  v34 = [*(v31 + 24) vistaView];
  v35 = [v34 quadViews];

  sub_1000057F4();
  v36 = sub_100034AC4();

  if (!(v36 >> 62))
  {
    result = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_11;
    }

LABEL_17:

    if (v27)
    {
      goto LABEL_32;
    }

LABEL_18:
    v40 = [*(v31 + 24) vistaView];
    [v40 frame];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v49 = v48 / 3.0;
    v50 = [objc_opt_self() currentDevice];
    v51 = [v50 userInterfaceIdiom];

    if (!v51)
    {
      v42 = 0.0;
      v44 = 0.0;
      goto LABEL_31;
    }

    v52 = *(v0 + 144);
    v53 = v46 / 3.0;
    if (v52 <= 2)
    {
      if (v52 == 1)
      {
        v42 = v53 + -50.0;
        v44 = 100.0;
        v46 = v53 + 100.0;
        goto LABEL_31;
      }

      if (v52 == 2)
      {
        v42 = v53 + -50.0;
        v44 = v49 + v49 + -100.0;
        v46 = v53 + 100.0;
LABEL_31:
        v54 = [*(v31 + 24) vistaView];
        [v54 updatePortalLayerBounds:{v42, v44, v46, v49}];

        goto LABEL_32;
      }

LABEL_27:
      v49 = v48;
      goto LABEL_31;
    }

    if (v52 == 3)
    {
      v42 = v53 + v53 + -120.0;
    }

    else
    {
      if (v52 != 4)
      {
        goto LABEL_27;
      }

      v42 = 120.0;
    }

    v44 = v48 / 3.0;
    v46 = v46 / 3.0;
    goto LABEL_31;
  }

  result = sub_100034E44();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ((v36 & 0xC000000000000001) != 0)
  {
    v38 = sub_100034DC4();
  }

  else
  {
    if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v38 = *(v36 + 32);
  }

  v39 = v38;

  [v39 setHidden:v27 & 1];

  if ((v27 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_32:
  v55 = qword_100047110;
  v56 = off_100047118;

  v64._countAndFlagsBits = v55;
  v64._object = v56;
  sub_100034684(v64);

  sub_100012108(0);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_10000E0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000035B0(&unk_100047860, &unk_100036AD0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001CCAC(a3, v25 - v10, &unk_100047860, &unk_100036AD0);
  v12 = sub_100034B44();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007DDC(v11, &unk_100047860, &unk_100036AD0);
  }

  else
  {
    sub_100034B34();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100034B04();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000349E4() + 32;
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

      sub_100007DDC(a3, &unk_100047860, &unk_100036AD0);

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

  sub_100007DDC(a3, &unk_100047860, &unk_100036AD0);
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

uint64_t sub_10000E3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v3[22] = a1;
  return _swift_task_switch(sub_10000E418, 0, 0);
}

uint64_t sub_10000E418()
{
  v2 = v0[23];
  v1 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10000E540;
  v3 = swift_continuation_init();
  v0[17] = sub_1000035B0(&qword_100047880, &qword_100036B38);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000E620;
  v0[13] = &unk_100041AF8;
  v0[14] = v3;
  [v2 fetchLockScreenContentCutoutBoundsForOrientation:v1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000E540()
{

  return _swift_task_switch(sub_10001D264, 0, 0);
}

uint64_t sub_10000E620(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *(*(*sub_1000054E4((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;

  return _swift_continuation_resume();
}

uint64_t sub_10000E694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v3[22] = a1;
  return _swift_task_switch(sub_10000E6B8, 0, 0);
}

uint64_t sub_10000E6B8()
{
  v2 = v0[23];
  v1 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10000E7E0;
  v3 = swift_continuation_init();
  v0[17] = sub_1000035B0(&qword_100047880, &qword_100036B38);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000E620;
  v0[13] = &unk_100041AD0;
  v0[14] = v3;
  [v2 fetchMaximalLockScreenContentCutoutBoundsForOrientation:v1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000E7E0()
{

  return _swift_task_switch(sub_10000E8C0, 0, 0);
}

uint64_t sub_10000E8C0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  *v1 = *(v0 + 144);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_10000E8E4()
{
  v1 = v0;
  v2 = sub_1000345A4();
  v165 = *(v2 - 8);
  v166 = v2;
  __chkstk_darwin(v2);
  v164 = &v154 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_100034874();
  v4 = *(v175 - 8);
  v5 = __chkstk_darwin(v175);
  v7 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v168 = &v154 - v9;
  v10 = __chkstk_darwin(v8);
  v160 = &v154 - v11;
  v12 = __chkstk_darwin(v10);
  v163 = &v154 - v13;
  __chkstk_darwin(v12);
  v173 = &v154 - v14;
  v15 = sub_1000035B0(&qword_1000478A8, &qword_100036B50);
  __chkstk_darwin(v15 - 8);
  v17 = &v154 - v16;
  v18 = sub_1000345B4();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v154 - v23;
  v25 = *(v0 + 16);
  sub_100034BF4();

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_100007DDC(v17, &qword_1000478A8, &qword_100036B50);
  }

  v169 = v4;
  v156 = v7;
  v172 = v19;
  v27 = *(v19 + 32);
  v174 = v24;
  v27(v24, v17, v18);
  v28 = v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration;
  v161 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
  LODWORD(v159) = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
  v29 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
  v31 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
  v30 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
  v32 = *(v1 + 16);
  v157 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
  v170 = v157;
  v162 = v29;
  *&v171 = v31;
  *(&v171 + 1) = v30;
  sub_1000053EC(v31, v30);
  v33 = v32;
  LOBYTE(v30) = sub_100034C14();

  v167 = v18;
  if ((v30 & 1) == 0)
  {
    if (*(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isTransientAnimationActive) == 1)
    {
      *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isTransientAnimationActive) = 0;
      v34 = qword_100047130;
      v35 = off_100047138;

      v191._countAndFlagsBits = v34;
      v191._object = v35;
      sub_100034684(v191);

      sub_100034514();
    }

    v36 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientToVista;
    if (*(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientToVista) != 2 || *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista) != 2)
    {
      v37 = (v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
      swift_beginAccess();
      v38 = *v37;
      v39 = v37[1];
      v40 = v37[2];
      v41 = v37[3];
      v42 = v37[4];
      v43 = v37[5];
      *v37 = 0;
      v37[1] = 0;
      v37[2] = 1;
      v37[3] = 0;
      v37[4] = 0;
      v37[5] = 0;
      sub_10001CAF4(v38, v39, v40, v41, v42, v43);
      *(v1 + v36) = 2;
      *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista) = 2;
      v44 = *(v1 + 24);
      [v44 setVista:2];
      LODWORD(v186) = sub_10000B0AC();
      *(&v186 + 1) = v45;
      *&v187 = v46;
      DWORD2(v187) = v47;
      [v44 applyStyleDefinition:&v186];
      sub_100012024();
      if ([v44 mode] != 1)
      {
        [v44 applyMode:1];
      }

      v48 = [v44 vistaView];
      [v48 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];

      v18 = v167;
    }
  }

  v49 = *(v1 + 24);
  if ([v49 mode] != 1)
  {
    [v49 applyMode:1];
  }

  v50 = [objc_msgSend(*(v1 + 16) "environment")];
  swift_unknownObjectRelease();
  v51 = *(v1 + 16);
  v158 = v50;
  v52 = sub_100009638(v51, v50);
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v52;

  *&v181 = v161;
  BYTE8(v181) = v159;
  *&v182 = v29;
  *(&v182 + 1) = v157;
  v60 = v171;
  v183 = v171;
  *&v184 = __PAIR64__(v56, v54);
  DWORD2(v184) = v58;
  v185 = v59;
  v190 = v59;
  v188 = v171;
  v189 = v184;
  v186 = v181;
  v187 = v182;
  v162 = v162;
  v161 = v170;
  sub_1000053EC(v60, *(&v60 + 1));
  v61 = v174;
  sub_100006128(v174);
  v63 = v62;
  v64 = v173;
  sub_100034824();
  v65 = v172;
  (*(v172 + 16))(v22, v61, v18);

  v66 = v63;
  v67 = sub_100034854();
  v68 = sub_100034C44();
  v170 = v66;

  if (os_log_type_enabled(v67, v68))
  {
    LODWORD(v157) = v68;
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    *&v177 = v155;
    *v69 = 138413058;
    v71 = *(v1 + 16);
    *(v69 + 4) = v71;
    v154 = v70;
    *v70 = v71;
    *(v69 + 12) = 2080;
    sub_10001CD14(&qword_100046B80, &type metadata accessor for SnapshotType, &protocol conformance descriptor for SnapshotType);
    v72 = v71;
    v73 = sub_100034EA4();
    v75 = v74;
    v159 = *(v65 + 8);
    v159(v22, v18);
    v76 = sub_10001AF94(v73, v75, &v177);

    *(v69 + 14) = v76;
    *(v69 + 22) = 2080;
    v77 = *(v1 + 16);
    v78 = [v77 environment];
    v176 = &OBJC_PROTOCOL___PRPosterRenderingEnvironment_Private;
    v79 = swift_dynamicCastObjCProtocolConditional();
    if (v79)
    {
      v80 = [v79 isFloatingViewSnapshot];
      swift_unknownObjectRelease();

      if (v80)
      {
        v81 = 0xE800000000000000;
        v82 = 0x676E6974616F6C66;
LABEL_20:
        v83 = sub_10001AF94(v82, v81, &v177);

        *(v69 + 24) = v83;
        *(v69 + 32) = 2112;
        v84 = v170;
        *(v69 + 34) = v170;
        v154[1] = v84;
        v85 = v84;
        _os_log_impl(&_mh_execute_header, v67, v157, "_doSnapshot(with: %@ for %s (%s) with snapshotKey: %@", v69, 0x2Au);
        sub_1000035B0(&unk_1000478C0, &unk_100036B60);
        swift_arrayDestroy();

        swift_arrayDestroy();

        v86 = v173;
        v173 = *(v169 + 8);
        (v173)(v86, v175);
        v18 = v167;
        goto LABEL_21;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v81 = 0xEA0000000000646ELL;
    v82 = 0x756F72676B636162;
    goto LABEL_20;
  }

  v159 = *(v65 + 8);
  v159(v22, v18);
  v173 = *(v169 + 8);
  (v173)(v64, v175);
LABEL_21:
  if (!sub_1000097C8(*(v28 + 8), v158) || (v87 = *(v1 + 16), v88 = v164, sub_100034BE4(), v87, LOBYTE(v87) = sub_100034584(), (*(v165 + 8))(v88, v166), (v87 & 1) == 0))
  {
    v180[3] = &type metadata for AegirSnapshotIdentifierProvider;
    v112 = sub_10001CB50();
    v180[4] = v112;
    v113 = swift_allocObject();
    v180[0] = v113;
    v114 = v189;
    *(v113 + 48) = v188;
    *(v113 + 64) = v114;
    *(v113 + 80) = v190;
    v115 = v187;
    *(v113 + 16) = v186;
    *(v113 + 32) = v115;
    sub_10001CBAC(&v181, &v177);
    v89 = v174;
    v91 = sub_1000345E4();
    sub_1000026BC(v180);
    if (v91)
    {
      v116 = v163;
      sub_100034824();
      v117 = v170;
      v118 = sub_100034854();
      v119 = sub_100034C44();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        *v120 = 138412290;
        *(v120 + 4) = v117;
        *v121 = v117;
        v122 = v117;
        _os_log_impl(&_mh_execute_header, v118, v119, "Have cached snapshot for key: %@", v120, 0xCu);
        sub_100007DDC(v121, &unk_1000478C0, &unk_100036B60);
      }

      (v173)(v116, v175);
      v123 = 0;
      v124 = v91;
      v98 = v168;
      goto LABEL_40;
    }

    v125 = sub_100015728();
    if (v125)
    {
      v91 = v125;
      *(&v178 + 1) = &type metadata for AegirSnapshotIdentifierProvider;
      v179 = v112;
      v126 = swift_allocObject();
      *&v177 = v126;
      v127 = v189;
      *(v126 + 48) = v188;
      *(v126 + 64) = v127;
      *(v126 + 80) = v190;
      v128 = v187;
      *(v126 + 16) = v186;
      *(v126 + 32) = v128;
      v129 = v162;
      v130 = v161;
      sub_1000053EC(v171, *(&v171 + 1));
      v124 = v91;
      sub_1000345D4();

      sub_1000026BC(&v177);
      v123 = 0;
      goto LABEL_37;
    }

LABEL_35:
    sub_10001635C();
    v91 = 0;
    goto LABEL_48;
  }

  v89 = v174;
  v90 = sub_100015728();
  if (!v90)
  {
    goto LABEL_35;
  }

  v91 = v90;
  v92 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotVistaController);
  if (v92)
  {
    v93 = v92;
    v94 = v160;
    sub_100034824();
    v95 = sub_100034854();
    v96 = sub_100034C44();
    v97 = os_log_type_enabled(v95, v96);
    v98 = v168;
    if (v97)
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&_mh_execute_header, v95, v96, "Expecting floating view, creating mask", v99, 2u);
    }

    (v173)(v94, v175);
    v100 = *(v1 + 16);
    sub_100034C04();
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;

    v109 = [v93 vistaView];
    v110 = [v109 contentMaskLayer];

    v111 = [v110 contents];
    if (v111)
    {
      sub_100034D44();
      swift_unknownObjectRelease();
    }

    else
    {
      v177 = 0u;
      v178 = 0u;
    }

    sub_100016074(&v177, v102, v104, v106, v108);

    sub_100007DDC(&v177, &qword_100047C40, &qword_100036B58);
    v123 = 1;
    v124 = v91;
    goto LABEL_40;
  }

  v123 = 1;
  v124 = v90;
LABEL_37:
  v98 = v168;
LABEL_40:
  v131 = v124;
  sub_100034824();
  v132 = sub_100034854();
  v133 = sub_100034C44();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    *v134 = 0;
    _os_log_impl(&_mh_execute_header, v132, v133, "Have background image, adding backgroundImageView", v134, 2u);
  }

  (v173)(v98, v175);
  v135 = sub_100016500(v131, &OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotBackgroundImageView);
  v136 = [*(v1 + 16) backgroundView];
  [v136 addSubview:v135];

  if (v123)
  {
    v137 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotMaskLayer);
    if (v137)
    {
      v138 = v137;
      sub_100034824();
      v139 = sub_100034854();
      v140 = sub_100034C44();
      v141 = os_log_type_enabled(v139, v140);
      v18 = v167;
      if (v141)
      {
        v142 = swift_slowAlloc();
        *v142 = 0;
        _os_log_impl(&_mh_execute_header, v139, v140, "Expects floating view; have background image and maskLayer, adding floatingImageView", v142, 2u);
      }

      (v173)(v156, v175);
      v143 = sub_100016500(v91, &OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotFloatingImageView);
      v144 = [*(v1 + 16) floatingView];
      v145 = v143;
      [v144 addSubview:v145];

      v146 = [v145 layer];
      [v146 addSublayer:v138];
      v147 = v161;

      v148 = v162;
      v149 = v171;
      sub_1000054D4(v171, *(&v171 + 1));

      sub_1000054D4(v149, *(&v149 + 1));
      v150 = v174;
      return (v159)(v150, v18);
    }
  }

  v18 = v167;
  v89 = v174;
LABEL_48:
  sub_10001659C();
  v151 = v161;

  v152 = v162;
  v153 = v171;
  sub_1000054D4(v171, *(&v171 + 1));

  sub_1000054D4(v153, *(&v153 + 1));
  v150 = v89;
  return (v159)(v150, v18);
}

uint64_t sub_10000F9CC()
{
  v1 = v0;
  v161 = sub_100034674();
  v160 = *(v161 - 8);
  v2 = __chkstk_darwin(v161);
  v159 = &v158 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v158 = &v158 - v4;
  v173 = sub_1000035B0(&qword_1000479C8, &qword_100036BA0);
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v171 = &v158 - v5;
  v175 = sub_1000035B0(&qword_1000479C0, &qword_100036B98);
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v183 = &v158 - v6;
  v7 = sub_1000035B0(&unk_100047860, &unk_100036AD0);
  __chkstk_darwin(v7 - 8);
  v162 = &v158 - v8;
  v166 = sub_100034874();
  v165 = *(v166 - 8);
  __chkstk_darwin(v166);
  v164 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_1000345A4();
  v191 = *(v194 - 8);
  v10 = __chkstk_darwin(v194);
  v170 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v182 = &v158 - v13;
  v14 = __chkstk_darwin(v12);
  v187 = &v158 - v15;
  v16 = __chkstk_darwin(v14);
  v193 = &v158 - v17;
  __chkstk_darwin(v16);
  v19 = &v158 - v18;
  v20 = sub_1000347F4();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v163 = &v158 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v167 = &v158 - v25;
  v26 = __chkstk_darwin(v24);
  v169 = &v158 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v158 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v158 - v32;
  __chkstk_darwin(v31);
  v35 = &v158 - v34;
  v36 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_wakeState;
  swift_beginAccess();
  v37 = *(v21 + 16);
  v186 = v35;
  v37(v35, v1 + v36, v20);
  v38 = v1[2];
  v190 = v33;
  sub_100034C24();

  v39 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_unlockState;
  swift_beginAccess();
  v40 = *(v191 + 16);
  v189 = v19;
  v185 = v191 + 16;
  v184 = v40;
  v40(v19, v1 + v39, v194);
  v41 = v1[2];
  sub_100034BE4();

  v42 = v21 + 16;
  v37(v30, v1 + v36, v20);
  LOBYTE(v41) = sub_1000347E4();
  v43 = *(v21 + 8);
  v180 = v30;
  v44 = v30;
  v45 = v1;
  v192 = v20;
  v181 = v21 + 8;
  v188 = v43;
  v43(v44, v20);
  if (v41)
  {
    *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isFirstDraw) = 0;
  }

  swift_beginAccess();
  v46 = v191;
  (*(v191 + 24))(&v45[v39], v193, v194);
  swift_endAccess();
  swift_beginAccess();
  (*(v21 + 24))(&v45[v36], v190, v192);
  swift_endAccess();
  v176 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isCurrentConfigurationChange;
  if (v45[OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isCurrentConfigurationChange] & 1) == 0 && (sub_1000347B4() & 1) != 0 && (sub_100034564())
  {
    v47 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isRotationChange;
    if (v45[OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isRotationChange] == 1)
    {
      v48 = v193;
      sub_100010D4C();
      v49 = *(v45 + 3);
      v50 = [v49 mode];
      v51 = v189;
      v52 = v188;
      if (v50)
      {
        [v49 applyMode:0];
      }

      v53 = *(v46 + 8);
      v54 = v48;
      v55 = v194;
      v53(v54, v194);
      v53(v51, v55);
      v56 = v192;
      v52(v190, v192);
      result = (v52)(v186, v56);
      v45[v47] = 0;
    }

    else
    {
      v112 = *(v46 + 8);
      v113 = v194;
      v112(v193, v194);
      v112(v189, v113);
      v114 = v192;
      v115 = v188;
      v188(v190, v192);
      return v115(v186, v114);
    }

    return result;
  }

  v177 = v37;
  v58 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isRotationChange;
  if (v45[OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isRotationChange] == 1)
  {
    v59 = *(v45 + 3);
    if ([v59 mode])
    {
      [v59 applyMode:0];
    }

    v45[v58] = 0;
  }

  sub_100010D4C();
  v60 = *(v45 + 3);
  if ([v60 mode] == 1 && objc_msgSend(v60, "mode"))
  {
    [v60 applyMode:0];
  }

  v178 = v60;
  [v60 setActiveModeFrameInterval:0];
  v61 = v187;
  v62 = v194;
  v184(v187, &v45[v39], v194);
  v63 = sub_100034554();
  v179 = *(v46 + 8);
  v179(v61, v62);
  v191 = v46 + 8;
  v64 = v188;
  v65 = v42;
  if ((v63 & 1) == 0)
  {
    v66 = &v45[v39];
    v67 = v182;
    v68 = v194;
    v184(v182, v66, v194);
    v69 = sub_100034544();
    v179(v67, v68);
    if ((v69 & 1) != 0 || (v70 = &v45[v36], v71 = v36, v72 = v45, v73 = v180, v74 = v192, v177(v180, v70, v192), v75 = sub_100034794(), v76 = v73, v45 = v72, v36 = v71, v64(v76, v74), (v75 & 1) == 0))
    {
      v77 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_queuedLocationUpdate;
      v78 = *&v45[OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_queuedLocationUpdate];
      if (v78)
      {
        v79 = &v45[OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration];
        v80 = v42;
        v81 = *&v45[OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16];
        *&v45[OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16] = v78;
        v82 = v78;

        v83 = v79[8];
        v84 = *(v79 + 3);
        v85 = *(v79 + 4);
        v86 = *(v79 + 5);
        v199 = *v79;
        v200 = v83;
        v201 = v78;
        v202 = v84;
        v203 = v85;
        v204 = v86;
        v87 = v84;
        sub_1000053EC(v85, v86);
        sub_10000CBDC(&v199);

        v88 = v86;
        v65 = v80;
        sub_1000054D4(v85, v88);
        v89 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
        [v178 updateLocation:v82 fallbackLocation:v89 animated:0];

        [*(v45 + 2) noteContentSignificantlyChanged];
        v90 = *&v45[v77];
        *&v45[v77] = 0;
      }
    }
  }

  sub_100034594();
  v168 = v36;
  if (v91 >= 0.5 || (sub_100034594(), v92 < 0.5))
  {
    v93 = v65;
    sub_100034594();
    v94 = v186;
    if (v95 > 0.5)
    {
      sub_100034594();
      if (v96 <= 0.5)
      {
        v97 = sub_100034B44();
        v98 = v162;
        (*(*(v97 - 8) + 56))(v162, 1, 1, v97);
        v99 = swift_allocObject();
        swift_weakInit();
        sub_100034B24();

        v100 = sub_100034B14();
        v101 = swift_allocObject();
        *(v101 + 16) = v100;
        *(v101 + 24) = &protocol witness table for MainActor;
        *(v101 + 32) = v99;
        *(v101 + 40) = 0;

        sub_10000E0F4(0, 0, v98, &unk_100036BC0, v101);
      }
    }

    goto LABEL_38;
  }

  v102 = v164;
  sub_100034834();
  v103 = sub_100034854();
  v104 = sub_100034C64();
  v105 = os_log_type_enabled(v103, v104);
  v94 = v186;
  if (v105)
  {
    v106 = swift_slowAlloc();
    *v106 = 0;
    _os_log_impl(&_mh_execute_header, v103, v104, "Unlocking device and hiding foreground view", v106, 2u);
  }

  (*(v165 + 8))(v102, v166);
  v107 = [v178 vistaView];
  v108 = [v107 quadViews];

  sub_1000057F4();
  v109 = sub_100034AC4();

  if (v109 >> 62)
  {
    result = sub_100034E44();
    if (result)
    {
      goto LABEL_31;
    }
  }

  else
  {
    result = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_31:
      if ((v109 & 0xC000000000000001) != 0)
      {
        v93 = v65;
        v110 = sub_100034DC4();
      }

      else
      {
        if (!*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v93 = v65;
        v110 = *(v109 + 32);
      }

      v111 = v110;

      [v111 setHidden:1];

      goto LABEL_38;
    }
  }

  v93 = v65;

LABEL_38:
  v187 = v45;
  v116 = v180;
  v117 = v192;
  v118 = v177;
  v177(v180, v94, v192);
  v118(v169, v190, v117);
  v119 = v183;
  sub_100034634();
  v120 = v194;
  v121 = v184;
  v184(v182, v189, v194);
  v121(v170, v193, v120);
  v122 = v171;
  sub_100034634();
  sub_100012BD0(v119, v122);
  (*(v172 + 8))(v122, v173);
  v123 = v168;
  v185 = v93;
  v118(v116, &v187[v168], v117);
  v124 = v118;
  sub_1000347A4();
  v126 = v125;
  v127 = v116;
  v128 = v187;
  v188(v127, v117);
  v198 = v126;
  sub_10001D010();
  sub_100034954();
  v196 = v197;
  v129 = v188;
  sub_100034944();
  v130 = v195;
  v131 = v178;
  v132 = [v178 vistaView];
  [v132 setAPLFilterAmount:v130];

  sub_100010F24();
  if (v128[OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isFirstDraw] & 1) == 0 && ((v135 = v167, v136 = v192, v124(v167, &v128[v123], v192), v137 = sub_1000347D4(), v129(v135, v136), (v137) || (v143 = v163, v144 = v192, v124(v163, &v128[v123], v192), v145 = sub_100034794(), v129(v143, v144), (v145) && (v146 = &v128[v123], v147 = v180, v148 = v192, v124(v180, v146, v192), sub_1000347A4(), v150 = v149, v129(v147, v148), v150 < 0.05) && (v151 = v158, sub_100034654(), v152 = v160, v153 = v159, v154 = v161, (*(v160 + 104))(v159, enum case for TransitionDirection.backwards(_:), v161), v155 = sub_100034664(), v156 = *(v152 + 8), v156(v153, v154), v157 = v151, v129 = v188, v156(v157, v154), (v155)))
  {
    v138 = [v131 mode];
    v133 = v176;
    v139 = v186;
    if (v138 != 1)
    {
      [v131 applyMode:1];
    }
  }

  else
  {
    v133 = v176;
    if (v128[v176] == 1)
    {
      v134 = [v131 vistaView];
      [v134 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];

      sub_100012658(300000000);
    }

    else
    {
      sub_100012108(0);
    }

    v139 = v186;
  }

  (*(v174 + 8))(v183, v175);
  v140 = v194;
  v141 = v179;
  v179(v193, v194);
  v141(v189, v140);
  v142 = v192;
  v129(v190, v192);
  result = (v129)(v139, v142);
  v128[v133] = 0;
  return result;
}

void sub_100010D4C()
{
  v1 = v0;
  v2 = sub_100034874();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034824();
  v6 = sub_100034854();
  v7 = sub_100034C44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "_cleanupAfterSnapshotsIfNeeded", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotVistaController;
  v10 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_snapshotVistaController);
  if (v10)
  {
    v11 = [v10 vistaView];
    [v11 discardContents];
  }

  sub_1000345F4();
  v12 = *(v1 + v9);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 vistaView];
    [v14 purgeUnused];

    v15 = *(v1 + v9);
    *(v1 + v9) = 0;
  }

  sub_10001635C();
  sub_10001659C();
}

uint64_t sub_100010F24()
{
  v1 = v0;
  v73 = sub_100034874();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v3 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000345A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000347F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 24);
  v13 = [v12 vistaView];
  v71 = [v13 scene];

  v14 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_wakeState;
  swift_beginAccess();
  (*(v9 + 16))(v11, v1 + v14, v8);
  sub_1000347A4();
  v16 = v15;
  (*(v9 + 8))(v11, v8);
  v76 = v16;
  sub_10001D010();
  sub_100034954();
  v75 = *&v80[1];
  sub_100034944();
  v17 = v74;
  v18 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_unlockState;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v18, v4);
  sub_100034594();
  v20 = v19;
  (*(v5 + 8))(v7, v4);
  v76 = v20;
  sub_100034944();
  v21 = v75;
  v22 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isTransientAnimationActive;
  v23 = 0.0;
  if (*(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isTransientAnimationActive) == 1)
  {
    if (v21 > v17)
    {
      v24 = v75;
    }

    else
    {
      v24 = v17;
    }

    v25 = CACurrentMediaTime() - *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationStartTime);
    v26 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationTimeOffset;
    v27 = (*(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationTimeOffset) + v25) / 1.5;
    if (v27 > 1.0)
    {
      v27 = 1.0;
    }

    v28 = v27 + (v24 * (1.0 - v27));
    v29 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationReversed;
    v30 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationReversed);
    if (*(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationReversed))
    {
      v23 = 1.0 - v28;
    }

    else
    {
      v23 = v28;
    }

    if (v23 > 0.0)
    {
      v30 = 0;
    }

    if (v23 >= 1.0 || v30 != 0)
    {
      v32 = qword_100047130;
      v33 = off_100047138;

      v81._countAndFlagsBits = v32;
      v81._object = v33;
      sub_100034684(v81);

      *(v1 + v26) = 0;
      *(v1 + v22) = 0;

      sub_100034514();

      v34 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientToVista;
      if (*(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientToVista) == 2 && (*(v1 + v29) & 1) == 0)
      {
        *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista) = 2;
        v35 = (v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
        swift_beginAccess();
        v36 = *v35;
        v37 = v35[1];
        v38 = v35[2];
        v39 = v35[3];
        v40 = v35[4];
        v41 = v35[5];
        *v35 = 0;
        v35[1] = 0;
        v35[2] = 1;
        v35[3] = 0;
        v35[4] = 0;
        v35[5] = 0;
        sub_10001CAF4(v36, v37, v38, v39, v40, v41);
        [v12 setVista:2];
        LODWORD(v76) = sub_10000B0AC();
        v77 = v42;
        v78 = v43;
        v79 = v44;
        [v12 applyStyleDefinition:&v76];
      }

      v45 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista;
      if (*(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista) == 2 && *(v1 + v29) == 1)
      {
        *(v1 + v34) = 2;
        v46 = (v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
        swift_beginAccess();
        v47 = *v46;
        v48 = v46[1];
        v49 = v46[2];
        v50 = v46[3];
        v51 = v46[4];
        v52 = v46[5];
        *v46 = 0;
        v46[1] = 0;
        v46[2] = 1;
        v46[3] = 0;
        v46[4] = 0;
        v46[5] = 0;
        sub_10001CAF4(v47, v48, v49, v50, v51, v52);
        [v12 setVista:2];
        LODWORD(v76) = sub_10000B0AC();
        v77 = v53;
        v78 = v54;
        v79 = v55;
        [v12 applyStyleDefinition:&v76];
      }

      if (*(v1 + v34) != 2 && (*(v1 + v29) & 1) == 0)
      {
        [v12 setVista:?];
        LODWORD(v76) = sub_10000B0AC();
        v77 = v56;
        v78 = v57;
        v79 = v58;
        [v12 applyStyleDefinition:&v76];
        if (!*(v1 + v34))
        {
          sub_100013320(1);
        }
      }

      if (*(v1 + v45) != 2 && *(v1 + v29) == 1)
      {
        [v12 setVista:?];
        LODWORD(v76) = sub_10000B0AC();
        v77 = v59;
        v78 = v60;
        v79 = v61;
        [v12 applyStyleDefinition:&v76];
        if (!*(v1 + v45))
        {
          sub_100013320(1);
        }
      }

      sub_100012024();
      sub_100012108(0);
      [*(v1 + 16) noteContentSignificantlyChanged];
    }
  }

  sub_100034834();
  v62 = sub_100034854();
  v63 = sub_100034C34();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v80[0] = v65;
    *v64 = 136315138;
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_100034DB4(38);
    v82._countAndFlagsBits = 0x203A6B636F6C6E75;
    v82._object = 0xE800000000000000;
    sub_100034A14(v82);
    sub_100034BC4();
    v83._countAndFlagsBits = 0x203A656B6177203BLL;
    v83._object = 0xE800000000000000;
    sub_100034A14(v83);
    sub_100034BC4();
    v84._object = 0x80000001000378B0;
    v84._countAndFlagsBits = 0xD000000000000010;
    sub_100034A14(v84);
    sub_100034BC4();
    v66 = sub_10001AF94(v76, v77, v80);

    *(v64 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v62, v63, "render: driver: %s", v64, 0xCu);
    sub_1000026BC(v65);
  }

  (*(v72 + 8))(v3, v73);
  v67 = v71;
  v68 = sub_10001177C();
  (v68)(v67, v21, v17, v23);
  if ((*(v1 + v22) & 1) == 0)
  {
    [v67 updateCamera];
  }
}

void (*sub_10001177C())(void *a1, __n128 a2, float a3, float a4)
{
  v1 = v0;
  v2 = sub_1000035B0(&unk_100048480, &qword_100036730);
  __chkstk_darwin(v2 - 8);
  v85 = &v80 - v3;
  v88 = sub_100034354();
  v4 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Geotime(0);
  __chkstk_darwin(v86);
  v91 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v7 = sub_100034714();

  v8 = *(v0 + 16);
  v90 = sub_100009638(v8, v7);

  v9 = (v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
  swift_beginAccess();
  v11 = *v9;
  v10 = v9[1];
  v13 = v9[2];
  v12 = v9[3];
  v81 = v9;
  v15 = v9[4];
  v14 = v9[5];
  v92 = v1;
  if (v13 == 1)
  {
    v83 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
    LODWORD(v89) = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
    v17 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
    v16 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
    v19 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
    v18 = *(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
    v82 = v16;
    v20 = v16;
    v21 = v17;
    v84 = v18;
    sub_1000053EC(v19, v18);
  }

  else
  {
    v83 = v11;
    LODWORD(v89) = v10;
    v17 = v13;
    v82 = v12;
    v19 = v15;
    v84 = v14;
  }

  v93 = v17;
  v22 = v88;
  if (v19)
  {
    sub_10001BC90(v11, v10, v13, v12, v15, v14);
    v24 = v84;
    v23 = v85;
    v19();
    (*(v4 + 56))(v23, 0, 1, v22);
    v25 = v87;
    (*(v4 + 32))(v87, v23, v22);
  }

  else
  {
    v26 = v85;
    (*(v4 + 56))(v85, 1, 1, v88);
    sub_10001BC90(v11, v10, v13, v12, v15, v14);
    v25 = v87;
    sub_100034334();
    v27 = (*(v4 + 48))(v26, 1, v22);
    v24 = v84;
    if (v27 != 1)
    {
      sub_100007DDC(v26, &unk_100048480, &qword_100036730);
    }
  }

  v29 = v91;
  v28 = v92;
  v30 = v90;
  v31 = v89;
  v32 = v93;
  if (!v93)
  {
    v32 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  (*(v4 + 32))(v29, v25, v22);
  *(v29 + *(v86 + 20)) = v32;
  if (v83 > 2)
  {
    if ((v83 - 4) < 6)
    {
      v33 = v82;
      v34 = qword_100046A18;
      v35 = v93;
      if (v34 == -1)
      {
        goto LABEL_28;
      }

LABEL_35:
      swift_once();
      goto LABEL_28;
    }

    v33 = v82;
    if (v83 == 3)
    {
      v37 = qword_100046A08;
      v35 = v93;
      if (v37 != -1)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }

LABEL_27:
    v39 = qword_100046A00;
    v35 = v93;
    if (v39 == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  if (!v83)
  {
    v33 = v82;
    if (v31)
    {
      v38 = qword_100046A80;
      v35 = v93;
      if (v38 != -1)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v83 == 1)
  {
    v33 = v82;
    if (v31)
    {
      v35 = v93;
      sub_100009BF0(v29, v30);
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v33 = v82;
  if (v83 != 2)
  {
    goto LABEL_27;
  }

  v36 = qword_100046A10;
  v35 = v93;
  if (v36 != -1)
  {
    goto LABEL_35;
  }

LABEL_28:
  v40 = swift_allocObject();
  sub_100009914(v31 & 1, v30);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_10000A5B0(v29);

  sub_1000054D4(v19, v24);
  *(v40 + 16) = v42;
  *(v40 + 24) = v44;
  *(v40 + 32) = v46;
  *(v40 + 40) = v48;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_10000A8E8();
  *(v49 + 24) = v50;
  *(v49 + 32) = v51;
  *(v49 + 40) = v52;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v93 = 0;
    v53 = 0;
    v54 = 0;
    LOBYTE(v55) = 1;
  }

  else
  {
    v56 = *v81;
    v57 = v81[1];
    v58 = v81[2];
    v59 = v81[3];
    v61 = v81[4];
    v60 = v81[5];
    if (v58 == 1)
    {
      v62 = v28 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration;
      v88 = *(v28 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
      v89 = v56;
      LODWORD(v93) = *(v28 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
      v63 = *(v28 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
      v65 = *(v62 + 32);
      v64 = *(v62 + 40);
      v90 = *(v62 + 24);
      v66 = v63;
      v91 = v65;
      v67 = v65;
      v68 = v88;
      sub_1000053EC(v67, v64);
      v56 = v89;
    }

    else
    {
      v90 = v81[3];
      v91 = v61;
      v66 = v58;
      v68 = v56;
      LODWORD(v93) = v57;
      v64 = v60;
    }

    sub_10001BC90(v56, v57, v58, v59, v61, v60);
    v93 = sub_100008414(v68);
    v53 = v69;
    v54 = v70;

    v55 = (v54 >> 40) & 1;
    sub_1000054D4(v91, v64);
  }

  v71 = sub_10000B870();
  v73 = v72;
  v75 = v74;
  v76 = swift_allocObject();
  swift_weakInit();
  v77 = swift_allocObject();
  *(v77 + 16) = v76;
  *(v77 + 24) = v40;
  v78 = v93;
  *(v77 + 32) = v49;
  *(v77 + 40) = v78;
  *(v77 + 48) = v53;
  *(v77 + 60) = BYTE4(v54);
  *(v77 + 56) = v54;
  *(v77 + 61) = v55;
  *(v77 + 64) = v71;
  *(v77 + 72) = v73;
  *(v77 + 84) = BYTE4(v75);
  *(v77 + 80) = v75;
  *(v77 + 85) = BYTE5(v75) & 1;
  return sub_10001D0BC;
}

void sub_100012024()
{
  v1 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_changeToDeactiveModeTask;
  if (*(v0 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_changeToDeactiveModeTask))
  {

    sub_1000035B0(&qword_1000479D0, &unk_100036DD0);
    sub_100034B54();
    *(v0 + v1) = 0;

    v2 = qword_100047140;
    v3 = off_100047148;

    v5._countAndFlagsBits = v2;
    v5._object = v3;
    sub_100034684(v5);
  }
}

void sub_100012108(int a1)
{
  v45 = a1;
  v2 = sub_100034874();
  v43 = *(v2 - 8);
  v44 = v2;
  __chkstk_darwin(v2);
  v42 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000347F4();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000345A4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v42 - v11;
  v13 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_unlockState;
  swift_beginAccess();
  v14 = *(v7 + 16);
  v49 = v1;
  v14(v12, v1 + v13, v6);
  v15 = sub_100034554();
  v16 = *(v7 + 8);
  v16(v12, v6);
  if ((v15 & 1) == 0)
  {
    v14(v10, v49 + v13, v6);
    v17 = sub_100034544();
    v16(v10, v6);
    if ((v17 & 1) != 0 || (v18 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_wakeState, v19 = v49, swift_beginAccess(), v21 = v46, v20 = v47, v22 = v19 + v18, v23 = v48, (*(v47 + 16))(v46, v22, v48), LOBYTE(v19) = sub_100034794(), (*(v20 + 8))(v21, v23), (v19 & 1) == 0))
    {
      v24 = qword_1000470F0;
      v25 = off_1000470F8;

      v50._countAndFlagsBits = v24;
      v50._object = v25;
      LOBYTE(v24) = sub_100034694(v50);

      if ((v24 & 1) == 0)
      {
        v26 = qword_100047110;
        v27 = off_100047118;

        v51._countAndFlagsBits = v26;
        v51._object = v27;
        LOBYTE(v26) = sub_100034694(v51);

        if ((v26 & 1) == 0)
        {
          v28 = qword_100047130;
          v29 = off_100047138;

          v52._countAndFlagsBits = v28;
          v52._object = v29;
          LOBYTE(v28) = sub_100034694(v52);

          if ((v28 & 1) == 0)
          {
            v30 = qword_100047140;
            v31 = off_100047148;

            v53._countAndFlagsBits = v30;
            v53._object = v31;
            LOBYTE(v30) = sub_100034694(v53);

            if ((v30 & 1) == 0)
            {

              v32 = sub_100034704();

              if ((v32 & 1) == 0)
              {
                v33 = v49;
                v34 = v42;
                sub_100034834();
                v35 = sub_100034854();
                v36 = sub_100034C64();
                v37 = os_log_type_enabled(v35, v36);
                v38 = v45;
                if (v37)
                {
                  v39 = swift_slowAlloc();
                  *v39 = 67109120;
                  *(v39 + 4) = v38 & 1;
                  _os_log_impl(&_mh_execute_header, v35, v36, "Applying deactive mode.  Render synchronously: %{BOOL}d", v39, 8u);
                }

                (*(v43 + 8))(v34, v44);
                v40 = *(v33 + 24);
                if ([v40 mode] != 1)
                {
                  [v40 applyMode:1];
                }

                if (v38)
                {
                  v41 = [v40 vistaView];
                  [v41 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
                }
              }
            }
          }
        }
      }
    }
  }
}

id sub_100012658(uint64_t a1)
{
  v3 = sub_1000035B0(&unk_100047860, &unk_100036AD0);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_changeToDeactiveModeTask;
  if (!*(v1 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_changeToDeactiveModeTask))
  {
    result = [*(v1 + 24) mode];
    if (result != 1)
    {
      v8 = *(v1 + 16);

      v9 = v8;

      v10 = v1;
      sub_1000346C4();

      v11 = sub_100034B44();
      (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
      v12 = swift_allocObject();
      swift_weakInit();
      sub_100034B24();

      v13 = sub_100034B14();
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = &protocol witness table for MainActor;
      v14[4] = a1;
      v14[5] = v12;

      *(v10 + v7) = sub_1000237C8(0, 0, v6, &unk_100036BB0, v14);
    }
  }

  return result;
}

uint64_t sub_100012850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a5;
  v5[6] = sub_100034B24();
  v5[7] = sub_100034B14();
  v7 = swift_task_alloc();
  v5[8] = v7;
  *v7 = v5;
  v7[1] = sub_100012904;

  return static Task<>.sleep(nanoseconds:)(a4);
}

uint64_t sub_100012904()
{
  *(*v1 + 72) = v0;

  v3 = sub_100034B04();
  if (v0)
  {
    v4 = sub_100012B6C;
  }

  else
  {
    v4 = sub_100012A60;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100012A60()
{

  if ((sub_100034B64() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v2 = qword_100047140;
      v3 = off_100047148;
      v4 = Strong;

      v8._countAndFlagsBits = v2;
      v8._object = v3;
      sub_100034684(v8);

      sub_100012108(0);
      *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_changeToDeactiveModeTask) = 0;
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100012B6C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100012BD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v65 = a2;
  v62 = sub_1000345A4();
  v64 = *(v62 - 8);
  v5 = __chkstk_darwin(v62);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v58 - v8;
  v10 = sub_1000347F4();
  v11 = *(v10 - 8);
  v67 = v10;
  v68 = v11;
  __chkstk_darwin(v10);
  v66 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100034674();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v58 - v18;
  v63 = *(v2 + 24);
  if ([v63 forceDisableLocationDot])
  {
    return;
  }

  sub_1000136A4();
  v20 = *(v2 + 16);
  v21 = sub_100034C14();

  if (v21)
  {
    return;
  }

  v22 = (v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
  if (!*(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16))
  {
    return;
  }

  v61 = a1;
  v23 = (v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
  swift_beginAccess();
  v24 = v23[2];
  if (v24 == 1)
  {
    if (!*v22)
    {
      goto LABEL_8;
    }

LABEL_24:
    v56 = qword_1000470F0;
    v57 = off_1000470F8;

    v71._countAndFlagsBits = v56;
    v71._object = v57;
    sub_100034684(v71);

    [v63 stopLocationDotPulse];
    sub_100012108(0);
    return;
  }

  v25 = v23[4];
  v26 = v23[3];
  v27 = *v23;
  v59 = v23[5];
  v60 = v27;
  v58 = v26;
  v28 = v24;
  v29 = v59;
  sub_1000053EC(v25, v59);

  sub_1000054D4(v25, v29);
  if (v60)
  {
    goto LABEL_24;
  }

LABEL_8:
  sub_100034654();
  (*(v14 + 104))(v17, enum case for TransitionDirection.forward(_:), v13);
  LODWORD(v61) = sub_100034664();
  v30 = *(v14 + 8);
  v30(v17, v13);
  v30(v19, v13);
  v31 = sub_1000035B0(&qword_1000479C0, &qword_100036B98);
  v32 = v66;
  sub_100034644();
  LOBYTE(v30) = sub_100034794();
  v33 = *(v68 + 8);
  v68 += 8;
  v33(v32, v67);
  if (v30 & 1) != 0 && (v61)
  {
    sub_1000035B0(&qword_1000479C8, &qword_100036BA0);
    sub_100034624();
    v34 = sub_100034584();
    (*(v64 + 8))(v9, v62);
    if (v34)
    {
      sub_100013320(0);
    }
  }

  v35 = v66;
  v61 = v31;
  sub_100034624();
  v36 = sub_1000347C4();
  v33(v35, v67);
  if (v36)
  {
    sub_1000035B0(&qword_1000479C8, &qword_100036BA0);
    sub_100034644();
    v37 = sub_100034584();
    v38 = *(v64 + 8);
    v38(v9, v62);
    if ((v37 & 1) == 0)
    {
      sub_100034624();
      v39 = sub_100034584();
      v38(v9, v62);
      if (v39)
      {
        sub_100013320(0);
      }
    }
  }

  sub_1000035B0(&qword_1000479C8, &qword_100036BA0);
  sub_100034644();
  v40 = sub_100034584();
  v41 = v64 + 8;
  v42 = *(v64 + 8);
  v43 = v7;
  v44 = v62;
  v42(v43, v62);
  if (v40)
  {
    sub_100034624();
    v45 = sub_100034584();
    v42(v9, v44);
    if ((v45 & 1) == 0)
    {
      v64 = v41;
      v46 = qword_1000470F0;
      v47 = off_1000470F8;

      v69._countAndFlagsBits = v46;
      v69._object = v47;
      sub_100034684(v69);

      [v63 hideLocationDotPulse];
    }
  }

  sub_100034644();
  v48 = sub_100034544();
  v42(v9, v44);
  if ((v48 & 1) == 0)
  {
    sub_100034624();
    v49 = sub_100034544();
    v42(v9, v44);
    if (v49)
    {
      v50 = qword_1000470F0;
      v51 = off_1000470F8;

      v70._countAndFlagsBits = v50;
      v70._object = v51;
      sub_100034684(v70);

      [v63 stopLocationDotPulse];
      sub_100012108(0);
    }
  }

  v52 = v66;
  sub_100034644();
  v53 = sub_1000347D4();
  v33(v52, v67);
  if ((v53 & 1) == 0)
  {
    v54 = v66;
    sub_100034624();
    v55 = sub_1000347D4();
    v33(v54, v67);
    if (v55)
    {
      goto LABEL_24;
    }
  }
}

uint64_t sub_100013320(char a1)
{
  v2 = v1;
  v4 = sub_100034874();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100034354();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  sub_100034334();
  v14 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_lastPulseDate;
  swift_beginAccess();
  v15 = *(v8 + 16);
  v30 = v14;
  v15(v11, v2 + v14, v7);
  sub_1000342E4();
  v17 = v16;
  v31 = v8;
  v32 = *(v8 + 8);
  v32(v11, v7);
  v18 = qword_1000470F0;
  v19 = off_1000470F8;

  v33._countAndFlagsBits = v18;
  v33._object = v19;
  LOBYTE(v18) = sub_100034694(v33);

  if ((v18 & 1) == 0 && (v17 > 480.0) | a1 & 1)
  {
    sub_100034834();
    v20 = sub_100034854();
    v21 = sub_100034C64();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Starting location dot pulse.", v22, 2u);
    }

    (*(v28 + 8))(v6, v29);
    v23 = *(v2 + 16);

    v24 = v23;

    sub_1000346C4();

    [*(v2 + 24) pulseLocationDot];
    v25 = v30;
    swift_beginAccess();
    (*(v31 + 24))(v2 + v25, v13, v7);
    swift_endAccess();
  }

  return (v32)(v13, v7);
}

id sub_1000136A4()
{
  v1 = v0;
  v2 = sub_1000347F4();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v28 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1000345A4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v26[-v9];
  v11 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_unlockState;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v1 + v11, v4);
  v13 = sub_100034554();
  v14 = *(v5 + 8);
  result = v14(v10, v4);
  if ((v13 & 1) == 0)
  {
    v12(v8, v1 + v11, v4);
    v16 = sub_100034544();
    v14(v8, v4);
    if ((v16 & 1) != 0 || (v17 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_wakeState, swift_beginAccess(), v18 = v29, v19 = v1 + v17, v20 = v28, (*(v29 + 16))(v28, v19, v30), v27 = sub_100034794(), result = (*(v18 + 8))(v20, v30), (v27 & 1) == 0))
    {
      v21 = *(v1 + 24);
      v12(v8, v1 + v11, v4);
      v22 = sub_100034584();
      v14(v8, v4);
      v23 = 0.0;
      if ((v22 & 1) != 0 && ([v21 forceDisableLocationDot] & 1) == 0)
      {
        v24 = *(v1 + 16);
        v25 = sub_100034C14();

        if ((v25 & 1) == 0)
        {
          if (sub_10000B9F0())
          {
            v23 = 1.0;
          }

          else
          {
            v23 = 0.0;
          }
        }
      }

      return [v21 setLocationDotAlpha:v23];
    }
  }

  return result;
}

uint64_t sub_1000139A8(float a1, __n128 a2, float a3)
{
  v4 = v3;
  v171 = a3;
  v168 = a2;
  v6 = sub_1000035B0(&unk_100048480, &qword_100036730);
  v7 = __chkstk_darwin(v6 - 8);
  v174 = (&v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = &v157 - v9;
  v11 = sub_100034354();
  *&v182 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v177 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v157 - v14;
  v16 = type metadata accessor for Geotime(0);
  v17 = __chkstk_darwin(v16);
  v167 = &v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v164 = &v157 - v19;

  v20 = sub_100034714();

  v21 = *(v3 + 16);
  v22 = sub_100009638(v21, v20);

  v172 = *(v4 + 24);
  v170 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista;
  v23 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista) == 2;
  v173 = v16;
  if (v23)
  {
    v179 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
    LOBYTE(v24) = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
    v25 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
    v26 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
    v27 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
    v169 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
    v28 = v169;
    v180 = v25;
    v29 = v25;
    v181 = v27;
    v30 = sub_1000053EC(v26, v27);
    if (v26)
    {
LABEL_7:
      v26(v30);
      v40 = v182;
      v160 = *(v182 + 56);
      v160(v10, 0, 1, v11);
      (*(v40 + 32))(v15, v10, v11);
      goto LABEL_11;
    }
  }

  else
  {
    v31 = v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration;
    swift_beginAccess();
    v32 = *(v31 + 16);
    if (v32 == 1)
    {
      v179 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
      LOBYTE(v24) = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
      v34 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
      v33 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
      v35 = v4;
      v26 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
      v36 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
      v169 = v33;
      v37 = v33;
      v180 = v34;
      v38 = v34;
      v181 = v36;
      v39 = v36;
      v4 = v35;
      v30 = sub_1000053EC(v26, v39);
      if (v26)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v41 = v22;
      v42 = v4;
      v44 = *(v31 + 32);
      v43 = *(v31 + 40);
      v45 = *(v31 + 24);
      v24 = *(v31 + 8);
      v179 = *v31;
      v169 = v45;
      v46 = v45;
      v180 = v32;
      v47 = v32;
      v26 = v44;
      v181 = v43;
      v48 = v43;
      v4 = v42;
      v22 = v41;
      v16 = v173;
      v30 = sub_1000053EC(v44, v48);
      if (v44)
      {
        goto LABEL_7;
      }
    }
  }

  v49 = v182;
  v160 = *(v182 + 56);
  v160(v10, 1, 1, v11);
  sub_100034334();
  if ((*(v49 + 48))(v10, 1, v11) != 1)
  {
    sub_100007DDC(v10, &unk_100048480, &qword_100036730);
  }

LABEL_11:
  v50 = v180;
  v178 = v26;
  if (v180)
  {
    v51 = v180;
  }

  else
  {
    v51 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  v52 = v164;
  v176 = *(v182 + 32);
  v176();
  *(v52 + *(v16 + 20)) = v51;
  v53 = v179;
  if (v179 > 2)
  {
    if ((v179 - 4) < 6)
    {
      v54 = qword_100046A18;
      v55 = v50;
      if (v54 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_99;
    }

    if (v179 == 3)
    {
      v58 = qword_100046A08;
      v59 = v50;
      if (v58 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_99;
    }

    goto LABEL_31;
  }

  if (!v179)
  {
    if (v24)
    {
      v60 = qword_100046A80;
      v61 = v50;
      if (v60 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_99;
    }

    goto LABEL_31;
  }

  if (v179 != 1)
  {
    if (v179 == 2)
    {
      v56 = qword_100046A10;
      v57 = v50;
      if (v56 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_99;
    }

    goto LABEL_31;
  }

  if ((v24 & 1) == 0)
  {
LABEL_31:
    v63 = qword_100046A00;
    v64 = v50;
    if (v63 == -1)
    {
LABEL_32:
      v53 = v179;
      goto LABEL_33;
    }

LABEL_99:
    swift_once();
    goto LABEL_32;
  }

  v62 = v50;
  sub_100009BF0(v52, v22);
LABEL_33:
  sub_100009914(v24 & 1, v22);
  v166 = v65;
  v161 = v66;
  v175 = v67;
  v69 = v68;
  sub_10000A5B0(v52);
  v179 = v22;
  sub_100009EC0(v53, v24 & 1, v50, v178, v181, v22);
  v71 = v70;
  v158 = v72;
  v74 = v73;
  v164 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientToVista;
  if (*(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientToVista) == 2 || (v75 = v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration, swift_beginAccess(), v76 = *(v75 + 16), v76 == 1))
  {
    v77 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
    LOBYTE(v78) = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 8);
    v76 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
    v80 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
    v79 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
    v163 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
    v81 = v163;
  }

  else
  {
    v80 = *(v75 + 32);
    v79 = *(v75 + 40);
    v78 = *(v75 + 8);
    v77 = *v75;
    v163 = *(v75 + 24);
    v82 = v163;
  }

  v83 = v76;
  v84 = sub_1000053EC(v80, v79);
  v85 = v174;
  if (v80)
  {
    v86 = v79;
    v80(v84);
    v160(v85, 0, 1, v11);
    (v176)(v177, v85, v11);
  }

  else
  {
    v86 = v79;
    v87 = v182;
    v160(v174, 1, 1, v11);
    sub_100034334();
    if ((*(v87 + 48))(v85, 1, v11) != 1)
    {
      sub_100007DDC(v85, &unk_100048480, &qword_100036730);
    }
  }

  v174 = v80;
  if (v76)
  {
    v88 = v76;
  }

  else
  {
    v88 = [objc_allocWithZone(CLLocation) initWithLatitude:37.33182 longitude:-122.03118];
  }

  v89 = v86;
  v90 = v167;
  (v176)(v167, v177, v11);
  *(v90 + *(v173 + 20)) = v88;
  v165 = v69;
  v162 = a1;
  v159 = v71;
  if (v77 > 2)
  {
    v91 = v180;
    v92 = v174;
    if ((v77 - 4) < 6)
    {
      v93 = qword_100046A18;
      v94 = v76;
      if (v93 != -1)
      {
        swift_once();
      }

      v95 = v74;
      goto LABEL_68;
    }

    if (v77 == 3)
    {
      v98 = qword_100046A08;
      v99 = v76;
      if (v98 != -1)
      {
        swift_once();
      }

      v95 = v74;
      goto LABEL_68;
    }

    goto LABEL_65;
  }

  v91 = v180;
  v92 = v174;
  if (v77)
  {
    if (v77 == 1)
    {
      if (v78)
      {
        v95 = v74;
        v102 = v76;
        sub_100009BF0(v90, v179);
        goto LABEL_68;
      }
    }

    else if (v77 == 2)
    {
      v96 = qword_100046A10;
      v97 = v76;
      if (v96 != -1)
      {
        swift_once();
      }

      v95 = v74;
      goto LABEL_68;
    }

LABEL_65:
    v103 = qword_100046A00;
    v104 = v76;
    if (v103 != -1)
    {
      swift_once();
    }

    v95 = v74;
    goto LABEL_68;
  }

  if ((v78 & 1) == 0)
  {
    goto LABEL_65;
  }

  v100 = qword_100046A80;
  v101 = v76;
  if (v100 != -1)
  {
    swift_once();
  }

  v95 = v74;
LABEL_68:
  v105 = v179;
  sub_100009914(v78 & 1, v179);
  v107 = v106;
  v109 = v108;
  v182 = v110;
  v112 = v111;
  sub_10000A5B0(v90);
  sub_100009EC0(v77, v78 & 1, v76, v92, v89, v105);
  if (*(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationReversed))
  {
    v116 = v171;
    v117 = v161;
    v118 = v166;
    v119 = v175;
    if (v168.n128_f32[0] > 0.0)
    {
      v117 = vmla_n_f32(v161, vsub_f32(v158, v161), v168.n128_f32[0]);
      v118 = v166 + (v168.n128_f32[0] * (v159 - v166));
      *&v119 = vmla_n_f32(*&v175, vsub_f32(v95, *&v175), v168.n128_f32[0]);
    }

    if (v171 <= 0.0)
    {
      goto LABEL_97;
    }

    v175 = v119;
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      v120 = (v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
      swift_beginAccess();
      v121 = *v120;
      v122 = v120[1];
      v124 = v120[2];
      v123 = v120[3];
      v125 = v120[4];
      v126 = v120[5];
      if (v124 == 1)
      {
        v168.n128_u64[0] = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
        v127 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
        v177 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
        v129 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
        v128 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
        v176 = v121;
        v173 = v122;
        v130 = v123;
        v179 = v127;
        v177 = v177;
        sub_1000053EC(v129, v128);
        v123 = v130;
        v131 = v168.n128_u64[0];
        v122 = v173;
        v121 = v176;
      }

      else
      {
        v179 = v120[3];
        v177 = v124;
        v131 = v121;
        v129 = v125;
        v128 = v126;
      }

      sub_10001BC90(v121, v122, v124, v123, v125, v126);
      sub_100008414(v131);
      v147 = v146;
      v149 = v148;

      sub_1000054D4(v129, v128);
      if ((v149 & 0x10000000000) == 0)
      {
        if ((v149 & &_mh_execute_header) == 0)
        {
          v118 = v118 + (v116 * ((v118 * *&v149) - v118));
        }

        *&v119 = v175;
        v92 = v174;
        *&v133 = v182;
        if ((v147 & 0x100000000) == 0)
        {
          *&v119 = *&v175 + ((v116 * (*&v147 / -15.0)) + 0.0);
        }

LABEL_95:
        v91 = v180;
        goto LABEL_98;
      }

LABEL_96:
      v91 = v180;
      *&v119 = v175;
      v92 = v174;
      goto LABEL_97;
    }

    goto LABEL_79;
  }

  v132 = v171;
  v117 = v161;
  v133 = v182;
  if (v168.n128_f32[0] > 0.0)
  {
    v109 = vmla_n_f32(v109, vsub_f32(v114, v109), v168.n128_f32[0]);
    v107 = v107 + (v168.n128_f32[0] * (v113 - v107));
    *&v133 = vmla_n_f32(*&v182, vsub_f32(v115, *&v182), v168.n128_f32[0]);
  }

  v118 = v166;
  if (v171 > 0.0)
  {
    v182 = v133;
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      v134 = (v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
      swift_beginAccess();
      v135 = *v134;
      v136 = v134[1];
      v138 = v134[2];
      v137 = v134[3];
      v139 = v134[4];
      v140 = v134[5];
      if (v138 == 1)
      {
        v168.n128_u64[0] = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
        v141 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 24);
        v177 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 16);
        v143 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 32);
        v142 = *(v4 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration + 40);
        v176 = v135;
        v173 = v136;
        v144 = v137;
        v179 = v141;
        v177 = v177;
        sub_1000053EC(v143, v142);
        v137 = v144;
        v145 = v168.n128_u64[0];
        v136 = v173;
        v135 = v176;
      }

      else
      {
        v179 = v134[3];
        v177 = v138;
        v145 = v135;
        v143 = v139;
        v142 = v140;
      }

      sub_10001BC90(v135, v136, v138, v137, v139, v140);
      sub_100008414(v145);
      v151 = v150;
      v153 = v152;

      sub_1000054D4(v143, v142);
      if ((v153 & 0x10000000000) == 0)
      {
        if ((v153 & &_mh_execute_header) == 0)
        {
          v107 = v107 + (v132 * ((v107 * *&v153) - v107));
        }

        *&v119 = v175;
        v92 = v174;
        *&v133 = v182;
        if ((v151 & 0x100000000) == 0)
        {
          *&v133 = *&v182 + ((v132 * (*&v151 / -15.0)) + 0.0);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

LABEL_79:
    *&v119 = v175;
LABEL_97:
    *&v133 = v182;
    goto LABEL_98;
  }

  *&v119 = v175;
LABEL_98:
  v154 = *(v4 + v170);
  v155 = *&v164[v4];
  v187 = v118;
  v188 = v117;
  v189 = v119;
  v190 = v165;
  v183 = v107;
  v184 = v109;
  v185 = v133;
  v186 = v112;
  [v172 applyTransitionFraction:v154 fromVista:&v187 fromStyleDefinition:v155 toVista:&v183 toStyleDefinition:v162];

  sub_1000054D4(v92, v89);
  return sub_1000054D4(v178, v181);
}

void sub_100014B60(double a1, double a2)
{
  v3 = v2;
  v6 = sub_1000347F4();
  v114 = *(v6 - 8);
  __chkstk_darwin(v6);
  v113 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000345A4();
  v116 = *(v8 - 8);
  v117 = v8;
  v9 = __chkstk_darwin(v8);
  v115 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v101 - v11;
  v13 = sub_100034874();
  v14 = *(v13 - 1);
  v15 = __chkstk_darwin(v13);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v101 - v18;
  sub_100034834();
  v20 = sub_100034854();
  v21 = sub_100034C64();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134218240;
    *(v22 + 4) = a1;
    *(v22 + 12) = 2048;
    *(v22 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v20, v21, "didReceiveTapAt: %f, %f", v22, 0x16u);
  }

  v25 = *(v14 + 8);
  v24 = v14 + 8;
  v23 = v25;
  v25(v19, v13);
  v26 = (v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
  if (*(v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration) == 2)
  {
    v105 = v23;
    v103 = v6;
    v106 = v17;
    v107 = v24;
    v108 = v13;
    v28 = v26[4];
    v27 = v26[5];
    v30 = v26[2];
    v29 = v26[3];
    v102 = (v3 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_currentConfiguration);
    v31 = v3;
    v32 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_unlockState;
    swift_beginAccess();
    v33 = v116;
    v34 = v12;
    v35 = v12;
    v36 = v117;
    v104 = v116[2];
    v104(v35, v31 + v32, v117);
    v109 = v29;
    v110 = v30;
    v111 = v28;
    v112 = v27;
    sub_1000053EC(v28, v27);
    LOBYTE(v29) = sub_100034554();
    v37 = v33[1];
    v37(v34, v36);
    if ((v29 & 1) == 0)
    {
      v42 = v115;
      v104(v115, v31 + v32, v36);
      v43 = sub_100034544();
      v37(v42, v36);
      if ((v43 & 1) != 0 || (v44 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_wakeState, swift_beginAccess(), v45 = v114, v46 = v113, v47 = v103, (*(v114 + 16))(v113, v31 + v44, v103), LOBYTE(v44) = sub_100034794(), (*(v45 + 8))(v46, v47), (v44 & 1) == 0))
      {
        sub_100010D4C();
        v48 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isTransientAnimationActive;
        v49 = v31;
        if (*(v31 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_isTransientAnimationActive) == 1)
        {
          v50 = CACurrentMediaTime();
          v51 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationStartTime;
          *&v50 = v50 - *(v31 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationStartTime);
          v52 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationTimeOffset;
          v53 = *(v31 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationTimeOffset) + *&v50;
          if (v53 <= 1.5)
          {
            v54 = v53;
          }

          else
          {
            v54 = 1.5;
          }

          sub_100012024();
          v55 = (v54 + 0.1) * 1000000000.0;
          if (COERCE_INT(fabs(v55)) > 2139095039)
          {
            __break(1u);
          }

          else if (v55 > -1.0)
          {
            if (v55 < 1.8447e19)
            {
              sub_100012658(v55);
              v56 = qword_100047130;
              v57 = off_100047138;

              v122._countAndFlagsBits = v56;
              v122._object = v57;
              sub_100034684(v122);

              v58 = *(v31 + 16);

              v59 = v58;

              sub_1000346C4();

              *(v31 + v51) = CACurrentMediaTime();
              *(v31 + v52) = 1.5 - v54;

              sub_100034514();

              sub_1000054D4(v111, v112);

              *(v31 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationReversed) = (*(v31 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationReversed) & 1) == 0;
              return;
            }

            goto LABEL_44;
          }

          __break(1u);
LABEL_44:
          __break(1u);
          return;
        }

        v60 = *(v31 + 24);
        v61 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientToVista;
        v62 = *(v49 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientToVista);
        v63 = &qword_100047000;
        if (v62 == 2 && (v64 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista, *(v49 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista) == 2))
        {
          v65 = [*(v49 + 24) vistaView];
          v66 = [v65 spheroidAtPoint:{a1, a2}];

          if (!v66)
          {
LABEL_40:

            sub_1000054D4(v111, v112);
            return;
          }

          *(v49 + v64) = 2;
          v116 = v66;
          [v66 type];
          *(v49 + v61) = NUNIAstronomyVistaView_SpheroidTypeToVista();
          v115 = *v102;
          v114 = *(v102 + 8);
          v67 = v102[2];
          v68 = v102[3];
          v69 = v102[4];
          v70 = v102[5];
          v71 = (v49 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration);
          swift_beginAccess();
          v72 = v71[1];
          v113 = *v71;
          v108 = v71[2];
          v117 = v49;
          v73 = v71[3];
          v107 = v71[4];
          v106 = v71[5];
          v74 = v114;
          *v71 = v115;
          v71[1] = v74;
          v71[2] = v67;
          v71[3] = v68;
          v71[4] = v69;
          v71[5] = v70;
          v75 = v68;
          v76 = v67;
          sub_1000053EC(v69, v70);
          v77 = v73;
          v49 = v117;
          sub_10001CAF4(v113, v72, v108, v77, v107, v106);
          v79 = sub_10000A884(&v118);
          if (v78[2] != 1)
          {
            *v78 = *(v49 + v61);
          }

          (v79)(&v118, 0);
          v81 = sub_10000A884(&v118);
          v63 = &qword_100047000;
          v82 = v116;
          if (*(v80 + 16) != 1)
          {
            *(v80 + 8) = 0;
          }

          (v81)(&v118, 0);
        }

        else if ((*(v49 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationReversed) & 1) == 0)
        {
          v83 = OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista;
          *(v49 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientToVista) = *(v49 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista);
          *(v49 + v83) = v62;
        }

        if (UIAccessibilityIsReduceMotionEnabled())
        {
          if ([v60 mode])
          {
            [v60 applyMode:0];
          }

          v84.n128_u64[0] = 0;
          sub_1000139A8(1.0, v84, 0.0);
          if (*(v49 + v61) == 2 && (*(v49 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientFromVista) = 2, v85 = (v49 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_transientConfiguration), swift_beginAccess(), v86 = *v85, v87 = v85[1], v88 = v85[2], v89 = v85[3], v90 = v85[4], v91 = v85[5], *v85 = 0, v85[1] = 0, v85[2] = 1, v85[3] = 0, v85[4] = 0, v85[5] = 0, sub_10001CAF4(v86, v87, v88, v89, v90, v91), [v60 setVista:2], v118 = sub_10000B0AC(), v119 = v92, v120 = v93, v121 = v94, objc_msgSend(v60, "applyStyleDefinition:", &v118), *(v49 + v61) == 2) || (objc_msgSend(v60, "setVista:"), v118 = sub_10000B0AC(), v119 = v95, v120 = v96, v121 = v97, objc_msgSend(v60, "applyStyleDefinition:", &v118), *(v49 + v61)))
          {
            sub_100012658(200000000);
          }

          else
          {
            sub_1000136A4();
            sub_100013320(1);
          }
        }

        else
        {
          *(v49 + v48) = 1;
          v98 = *(v49 + 16);

          v99 = v98;

          sub_1000346C4();

          if ([v60 mode])
          {
            [v60 applyMode:0];
          }

          sub_100012024();
          sub_100012658(1600000000);
          *(v49 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationStartTime) = CACurrentMediaTime();
          *(v49 + OBJC_IVAR____TtC11AegirPoster25AegirRenderingCoordinator_tapAnimationTimeOffset) = 0;
          *(v49 + v63[53]) = 0;

          sub_100034514();

          v100.n128_u64[0] = 0;
          sub_1000139A8(0.0, v100, 0.0);
        }

        goto LABEL_40;
      }
    }

    v38 = v106;
    sub_100034834();
    v39 = sub_100034854();
    v40 = sub_100034C64();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Tap received while transitioning.  Not performing tap animation", v41, 2u);

      sub_1000054D4(v111, v112);
    }

    else
    {

      sub_1000054D4(v111, v112);
    }

    v105(v38, v108);
  }
}