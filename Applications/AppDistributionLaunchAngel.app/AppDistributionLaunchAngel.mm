id sub_1000025E8(uint64_t a1)
{
  if (qword_10008AA18 != -1)
  {
    sub_1000619A8();
  }

  v2 = qword_10008AA10[a1];

  return v2;
}

void sub_10000263C(id a1)
{
  qword_10008AA10[0] = os_log_create("com.apple.AppDistributionLaunchAngel", "LaunchAngel");

  _objc_release_x1();
}

id sub_100002B0C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10008AA38;
  v7 = qword_10008AA38;
  if (!qword_10008AA38)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100003304;
    v3[3] = &unk_10007E248;
    v3[4] = &v4;
    sub_100003304(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100002BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100002BEC()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_10008AA40;
  v9 = qword_10008AA40;
  if (!qword_10008AA40)
  {
    v1 = sub_100003138();
    v7[3] = dlsym(v1, "ASCLockupKindApp");
    qword_10008AA40 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    sub_1000619BC();
    v5 = v4;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = *v0;

  return v2;
}

Class sub_1000030E0(uint64_t a1)
{
  sub_100003138();
  result = objc_getClass("ASCMiniProductPageView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100061B64();
  }

  qword_10008AA20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100003138()
{
  v3[0] = 0;
  if (!qword_10008AA28)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100003238;
    v3[4] = &unk_10007E280;
    v3[5] = v3;
    v4 = off_10007E268;
    v5 = 0;
    qword_10008AA28 = _sl_dlopen();
  }

  v0 = qword_10008AA28;
  v1 = v3[0];
  if (!qword_10008AA28)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100003238(uint64_t a1)
{
  result = _sl_dlopen();
  qword_10008AA28 = result;
  return result;
}

Class sub_1000032AC(uint64_t a1)
{
  sub_100003138();
  result = objc_getClass("ASCAdamID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100061B8C();
  }

  qword_10008AA30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100003304(uint64_t a1)
{
  sub_100003138();
  result = objc_getClass("ASCLockupRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100061BB4();
  }

  qword_10008AA38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10000335C(uint64_t a1)
{
  v2 = sub_100003138();
  result = dlsym(v2, "ASCLockupKindApp");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10008AA40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000033AC(uint64_t a1)
{
  v2 = sub_100003138();
  result = dlsym(v2, "ASCLockupContextAppStoreInstall");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10008AA48 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000033FC(uint64_t a1)
{
  v2 = sub_100003138();
  result = dlsym(v2, "ASCLockupContextAppDistributionInstall");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10008AA50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__n128 sub_10000344C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000345C(uint64_t a1, int a2)
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

uint64_t sub_10000347C(uint64_t result, int a2, int a3)
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

__n128 sub_1000034B8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000034C4(uint64_t a1, int a2)
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

uint64_t sub_1000034E4(uint64_t result, int a2, int a3)
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

uint64_t sub_100003524()
{
  v1 = *v0;
  switch(*(v0 + 32))
  {
    case 1:
      return 0x100000000000002BLL;
    case 2:
      return 0x1000000000000086;
    case 3:
      return 0x1000000000000039;
    case 4:
      return 0x10000000000000BALL;
    case 5:
      return 0x100000000000002DLL;
    case 6:
      return 0x100000000000009DLL;
    case 7:
      return 0x1000000000000016;
    case 8:
      return 0x1000000000000033;
    case 9:
      return 0x1000000000000027;
    case 0xA:
      return 0x100000000000002DLL;
    case 0xB:
      return 0x100000000000003CLL;
    case 0xC:
      v3 = v0[1];
      v4 = v0[2] | v0[3];
      if (!(v4 | v1 | v3))
      {
        return 0x776F6C6C41;
      }

      v5 = v4 | v3;
      if (v1 == 1 && v5 == 0)
      {
        return 0x6C65636E6143;
      }

      if (v1 == 2 && !v5)
      {
        return 0x65756E69746E6F43;
      }

      if (v1 == 3 && !v5)
      {
        return 1701736260;
      }

      if (v1 == 4 && !v5)
      {
        return 0x6DA0C26E7261654CLL;
      }

      if (v1 == 5 && !v5)
      {
        return 0x69737365636F7250;
      }

      if (v1 == 6 && !v5)
      {
        return 0x100000000000002CLL;
      }

      result = 0x206C6C6174736E49;
      if (v1 == 7 && !v5)
      {
        return result;
      }

      if (v1 == 8 && !v5)
      {
        return 0xD000000000000017;
      }

      if (v1 == 9 && !v5)
      {
        return 0x1000000000000028;
      }

      if (v1 == 10 && !v5)
      {
        return 0xD000000000000024;
      }

      if (v1 == 11 && !v5)
      {
        return 0xD0000000000000AELL;
      }

      if (v1 == 12 && !v5)
      {
        return 0x6150207265746E45;
      }

      if (v1 == 13 && !v5)
      {
        return 0xD00000000000002ELL;
      }

      if (v1 == 14 && !v5)
      {
        return 0xD000000000000036;
      }

      if (v1 == 15 && !v5)
      {
        return 0x4449206863756F54;
      }

      if (v1 == 16 && !v5)
      {
        return 0xD000000000000021;
      }

      if (v1 == 17 && !v5)
      {
        return 0xD000000000000029;
      }

      if (v1 != 18 || v5)
      {
        if (v1 == 19 && !v5)
        {
          return 0xD000000000000017;
        }

        else if (v1 != 20 || v5)
        {
          if (v1 != 21 || v5)
          {
            if (v1 != 22 || v5)
            {
              return 0xD000000000000090;
            }

            else
            {
              return 0xD000000000000014;
            }
          }

          else
          {
            return 0xD00000000000005ALL;
          }
        }

        else
        {
          return 0x7461442072756F59;
        }
      }

      return result;
    default:
      return 0xD00000000000003BLL;
  }
}

unint64_t sub_100003A90()
{
  result = 0xD000000000000031;
  v2 = *v0;
  switch(*(v0 + 32))
  {
    case 1:
    case 8:
      return 0xD000000000000035;
    case 2:
      return 0xD000000000000034;
    case 3:
      return 0xD000000000000039;
    case 4:
      return 0xD000000000000038;
    case 6:
      return 0xD000000000000030;
    case 7:
      return 0xD000000000000028;
    case 9:
      return 0xD000000000000029;
    case 0xA:
      return 0xD000000000000032;
    case 0xB:
      return 0xD00000000000003BLL;
    case 0xC:
      v3 = v0[1];
      v4 = v0[2] | v0[3];
      if (!(v4 | v2 | v3))
      {
        return 0xD000000000000023;
      }

      v5 = v4 | v3;
      if (v2 == 1 && !v5)
      {
        return 0xD000000000000024;
      }

      if (v2 == 2 && !v5)
      {
        return 0xD000000000000026;
      }

      if (v2 == 3 && !v5)
      {
        return 0xD000000000000022;
      }

      if (v2 == 4 && !v5)
      {
        return 0xD000000000000038;
      }

      if (v2 == 5 && !v5)
      {
        return 0xD000000000000028;
      }

      if (v2 == 6 && !v5)
      {
        return 0xD000000000000032;
      }

      if (v2 == 7 && !v5)
      {
        return 0xD00000000000002ELL;
      }

      if (v2 == 8 && !v5)
      {
        return 0xD000000000000036;
      }

      if (v2 == 9 && !v5)
      {
        return 0xD00000000000002CLL;
      }

      if (v2 != 10 || v5)
      {
        if (v2 != 11 || v5)
        {
          if (v2 != 12 || v5)
          {
            if (v2 != 13 || v5)
            {
              if (v2 == 14 && !v5)
              {
                return 0xD000000000000032;
              }

              if (v2 == 15 && !v5)
              {
                return 0xD000000000000024;
              }

              if (v2 == 16 && !v5)
              {
                return 0xD000000000000029;
              }

              else if (v2 != 17 || v5)
              {
                if (v2 != 18 || v5)
                {
                  if (v2 == 19 && !v5)
                  {
                    return 0xD000000000000035;
                  }

                  else if (v2 != 20 || v5)
                  {
                    if (v2 != 21 || v5)
                    {
                      if (v2 == 22 && v5 == 0)
                      {
                        return 0xD000000000000048;
                      }

                      else
                      {
                        return 0xD000000000000047;
                      }
                    }

                    else
                    {
                      return 0xD000000000000046;
                    }
                  }

                  else
                  {
                    return 0xD000000000000047;
                  }
                }

                else
                {
                  return 0xD00000000000002DLL;
                }
              }
            }

            else
            {
              return 0xD00000000000002ALL;
            }
          }

          else
          {
            return 0xD000000000000025;
          }
        }

        else
        {
          return 0xD000000000000033;
        }
      }

      return result;
    default:
      return result;
  }
}

unint64_t sub_100003EFC()
{
  v1 = 0;
  v3 = *v0;
  v2 = *(v0 + 8);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  if (v6 > 5)
  {
    if (*(v0 + 32) > 8u)
    {
      if (v6 - 9 >= 2)
      {
        if (v6 != 11)
        {
          return v1;
        }

        sub_1000047BC(&qword_100089030, &qword_1000656D0);
        inited = swift_initStackObject();
        v12 = inited;
        *(inited + 16) = xmmword_100065650;
        *(inited + 32) = 0x65706F6C65766564;
        v13 = inited + 32;
        v14 = 0xED0000656D614E72;
        goto LABEL_24;
      }
    }

    else
    {
      if (v6 == 6)
      {
        goto LABEL_18;
      }

      if (v6 != 7)
      {
        if (v6 == 8)
        {
          sub_1000047BC(&qword_100089030, &qword_1000656D0);
          v7 = swift_initStackObject();
          v8 = v7;
          *(v7 + 16) = xmmword_100065660;
          *(v7 + 32) = 0x656D614E707061;
          *(v7 + 40) = 0xE700000000000000;
          *(v7 + 48) = v3;
          *(v7 + 56) = v2;
          *(v7 + 64) = 0x6C7074656B72616DLL;
          v9 = 0xEF656D614E656361;
          goto LABEL_11;
        }

        return v1;
      }
    }

    sub_1000047BC(&qword_100089030, &qword_1000656D0);
    inited = swift_initStackObject();
    v12 = inited;
    *(inited + 16) = xmmword_100065650;
    *(inited + 32) = 0x656D614E707061;
    v13 = inited + 32;
    v14 = 0xE700000000000000;
    goto LABEL_24;
  }

  if (*(v0 + 32) <= 2u)
  {
    if (*(v0 + 32))
    {
      if (v6 != 1)
      {
        sub_1000047BC(&qword_100089030, &qword_1000656D0);
        v7 = swift_initStackObject();
        v8 = v7;
        *(v7 + 16) = xmmword_100065660;
        *(v7 + 32) = 1701667182;
        *(v7 + 40) = 0xE400000000000000;
        *(v7 + 48) = v3;
        *(v7 + 56) = v2;
        *(v7 + 64) = 0x726F4D6E7261656CLL;
        v9 = 0xED00006B6E694C65;
LABEL_11:
        *(v7 + 72) = v9;
        *(v7 + 80) = v5;
        *(v7 + 88) = v4;

        v10 = v8;
LABEL_19:
        v1 = sub_100059874(v10);
        swift_setDeallocating();
        sub_1000047BC(&qword_1000884D0, &qword_1000656D8);
        swift_arrayDestroy();
        return v1;
      }

      sub_1000047BC(&qword_100089030, &qword_1000656D0);
      inited = swift_initStackObject();
      v12 = inited;
      *(inited + 16) = xmmword_100065650;
      *(inited + 32) = 1701667182;
      v13 = inited + 32;
      v14 = 0xE400000000000000;
    }

    else
    {
      sub_1000047BC(&qword_100089030, &qword_1000656D0);
      inited = swift_initStackObject();
      v12 = inited;
      *(inited + 16) = xmmword_100065650;
      *(inited + 32) = 0x726F4D6E7261656CLL;
      v13 = inited + 32;
      v14 = 0xED00006B6E694C65;
    }

LABEL_24:
    *(inited + 40) = v14;
    *(inited + 48) = v3;
    *(inited + 56) = v2;
    sub_100004804(v0, v16);
    v1 = sub_100059874(v12);
    swift_setDeallocating();
    sub_10000483C(v13);
    return v1;
  }

  switch(v6)
  {
    case 3u:
LABEL_15:
      sub_1000047BC(&qword_100089030, &qword_1000656D0);
      inited = swift_initStackObject();
      v12 = inited;
      *(inited + 16) = xmmword_100065650;
      *(inited + 32) = 0x6E69616D6F64;
      v13 = inited + 32;
      v14 = 0xE600000000000000;
      goto LABEL_24;
    case 4u:
LABEL_18:

      sub_1000047BC(&qword_100089030, &qword_1000656D0);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_100065660;
      strcpy((v10 + 32), "developerName");
      *(v10 + 46) = -4864;
      *(v10 + 48) = v3;
      *(v10 + 56) = v2;
      strcpy((v10 + 64), "learnMoreLink");
      *(v10 + 78) = -4864;
      *(v10 + 80) = v5;
      *(v10 + 88) = v4;
      goto LABEL_19;
    case 5u:
      goto LABEL_15;
  }

  return v1;
}

uint64_t sub_100004364(uint64_t a1)
{
  v2 = sub_100004A60(&qword_100088558, type metadata accessor for LAError, &unk_100065988);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000043D0(uint64_t a1)
{
  v2 = sub_100004A60(&qword_100088558, type metadata accessor for LAError, &unk_100065988);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000443C(void *a1, uint64_t a2)
{
  v4 = sub_100004A60(&qword_100088558, type metadata accessor for LAError, &unk_100065988);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000044F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004A60(&qword_100088558, type metadata accessor for LAError, &unk_100065988);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10000456C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_1000045CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000045F0(uint64_t a1)
{
  v2 = sub_100004A60(&qword_100088560, type metadata accessor for LAError, &unk_100065ADC);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000465C(uint64_t a1)
{
  v2 = sub_100004A60(&qword_100088560, type metadata accessor for LAError, &unk_100065ADC);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000046CC(uint64_t a1)
{
  v2 = sub_100004A60(&qword_100088558, type metadata accessor for LAError, &unk_100065988);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100004738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004A60(&qword_100088558, type metadata accessor for LAError, &unk_100065988);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000047BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000483C(uint64_t a1)
{
  v2 = sub_1000047BC(&qword_1000884D0, &qword_1000656D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000048A4(uint64_t a1)
{
  if ((*(a1 + 32) & 0xFu) <= 0xB)
  {
    return *(a1 + 32) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

__n128 sub_1000048C0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000048D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 33))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 32);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000491C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 244;
    *(result + 8) = 0;
    if (a3 >= 0xF4)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_100004968(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    LOBYTE(a2) = 12;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_100004A60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100004ABC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_100004C74()
{
  result = qword_100088588;
  if (!qword_100088588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088588);
  }

  return result;
}

uint64_t sub_100004D68(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v43 = a1;
  v44 = a4;
  v42 = a3;
  v41 = a2;
  v40 = type metadata accessor for OSSignpostID();
  v6 = *(v40 - 8);
  v7 = __chkstk_darwin(v40);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OSSignposter();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  v22 = v44;
  v23 = v41;
  *(v5 + 16) = v43;
  *(v5 + 24) = v23;
  *(v5 + 32) = v42;
  v24 = *(v12 + 16);
  v41 = v11;
  v24(v14, v22, v11);
  OSSignposter.init(logger:)();
  v25 = OBJC_IVAR____TtC26AppDistributionLaunchAngel16SignpostInterval_signposter;
  (*(v16 + 32))(v5 + OBJC_IVAR____TtC26AppDistributionLaunchAngel16SignpostInterval_signposter, v21, v15);
  (*(v16 + 16))(v19, v5 + v25, v15);
  static OSSignpostID.exclusive.getter();
  v26 = OSSignposter.logHandle.getter();
  v27 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v36 = v19;
  v37 = v5;
  v35 = v16;
  v38 = v12;
  if ((v42 & 1) == 0)
  {
    v29 = v43;
    if (v43)
    {
LABEL_9:
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v27, v31, v29, "", v30, 2u);

      v5 = v37;
      v12 = v38;
      v16 = v35;
      v19 = v36;
LABEL_10:

      v32 = v40;
      (*(v6 + 16))(v39, v10, v40);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v33 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v12 + 8))(v44, v41);
      (*(v6 + 8))(v10, v32);
      (*(v16 + 8))(v19, v15);
      *(v5 + OBJC_IVAR____TtC26AppDistributionLaunchAngel16SignpostInterval_interval) = v33;
      return v5;
    }

    __break(1u);
  }

  if (v43 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v43 & 0xFFFFF800) != 0xD800)
  {
    if (v43 >> 16 <= 0x10)
    {
      v29 = &v45;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10000517C()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostError();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v33 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignposter();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC26AppDistributionLaunchAngel16SignpostInterval_signposter;
  (*(v8 + 16))(v10, v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel16SignpostInterval_signposter, v7);
  v32 = *(v0 + 16);
  v31 = *(v0 + 32);
  v12 = OBJC_IVAR____TtC26AppDistributionLaunchAngel16SignpostInterval_interval;
  v13 = *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel16SignpostInterval_interval);

  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v29 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  v16 = v37;
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v36 + 8))(v6, v16);
    v25 = *(v8 + 8);
    v25(v10, v7);
    v25((v1 + v11), v7);

    return v1;
  }

  v30 = v13;
  v26[0] = v1;
  v26[1] = v12;
  v27 = v10;
  v28 = v11;
  v17 = v37;
  if ((v31 & 1) == 0)
  {
    v19 = v34;
    v18 = v35;
    v21 = v32;
    v20 = v33;
    if (v32)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      if ((*(v19 + 88))(v20, v18) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v22 = "[Error] Interval already ended";
      }

      else
      {
        (*(v19 + 8))(v20, v18);
        v22 = "";
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v29, v24, v21, v22, v23, 2u);

      v16 = v17;
      v10 = v27;
      v11 = v28;
      v1 = v26[0];
      goto LABEL_13;
    }

    __break(1u);
  }

  v20 = v33;
  v19 = v34;
  v18 = v35;
  if (v32 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v32 & 0xFFFFF800) != 0xD800)
  {
    if (v32 >> 16 <= 0x10)
    {
      v21 = &v38;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10000554C()
{
  sub_10000517C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignpostInterval(uint64_t a1)
{
  result = qword_100088698;
  if (!qword_100088698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000055F8(uint64_t a1)
{
  result = type metadata accessor for OSSignposter();
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

double sub_1000056A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100005740(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_1000057C0()
{
  v0 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    type metadata accessor for MainActor();
    swift_unknownObjectRetain();
    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v4;
    sub_100007654(0, 0, v2, &unk_100065FE0, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100005934()
{
  sub_100010B54(v0 + 24);
  v1 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallSheetConfirmationViewModel__buttonFrame;
  v2 = sub_1000047BC(&qword_100088B98, &qword_100065FB8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallSheetConfirmationViewModel__buttonsContentIsOverlapping;
  v4 = sub_1000047BC(&qword_100088B90, &qword_100065FB0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallSheetConfirmationViewModel__isLandscape, v4);

  return swift_deallocClassInstance();
}

void sub_100005A90(uint64_t a1)
{
  sub_100005E90(319, &qword_100088780, type metadata accessor for CGRect, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_100005B9C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100005B9C()
{
  if (!qword_100088788)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100088788);
    }
  }
}

uint64_t sub_100005C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000047BC(&qword_100088900, &unk_1000667B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for LocalizedInstallSheetContent(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 16);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100005D2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000047BC(&qword_100088900, &unk_1000667B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for LocalizedInstallSheetContent(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 16) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100005E90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100005EF4(uint64_t a1)
{
  if (!qword_100088978)
  {
    type metadata accessor for InstallSheetConfirmationViewModel(255);
    sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel, &unk_100065CC0);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100088978);
    }
  }
}

uint64_t sub_100005FA4()
{
  v1 = sub_1000047BC(&qword_100088B90, &qword_100065FB0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - v3;
  v5 = sub_1000047BC(&qword_100088B98, &qword_100065FB8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - v7;
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallSheetConfirmationViewModel__buttonFrame;
  type metadata accessor for CGRect(0);
  memset(v14, 0, sizeof(v14));
  Published.init(initialValue:)();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallSheetConfirmationViewModel__buttonsContentIsOverlapping;
  LOBYTE(v14[0]) = 1;
  Published.init(initialValue:)();
  v11 = *(v2 + 32);
  v11(v0 + v10, v4, v1);
  v12 = OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallSheetConfirmationViewModel__isLandscape;
  LOBYTE(v14[0]) = 0;
  Published.init(initialValue:)();
  v11(v0 + v12, v4, v1);
  return v0;
}

uint64_t sub_1000061B4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for InstallSheetConfirmationViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1000061F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v3 = type metadata accessor for InstallSheetConfirmationView(0);
  v67 = *(v3 - 8);
  __chkstk_darwin(v3);
  v68 = v4;
  v70 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1000047BC(&qword_100088B28, &qword_100065EF8);
  __chkstk_darwin(v71);
  v72 = &v64 - v5;
  v6 = sub_1000047BC(&qword_100088B30, &unk_100065F00);
  v7 = *(v6 - 8);
  v78 = v6;
  v79 = v7;
  v8 = __chkstk_darwin(v6);
  v74 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v73 = &v64 - v10;
  v76 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v11 = *(v76 - 8);
  __chkstk_darwin(v76);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v14 = *(v75 - 8);
  __chkstk_darwin(v75);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  __chkstk_darwin(v17 - 8);
  v18 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  __chkstk_darwin(v18 - 8);
  v20 = &v64 - v19;
  v21 = sub_1000047BC(&qword_100088B38, &qword_100065F10);
  __chkstk_darwin(v21 - 8);
  v23 = &v64 - v22;
  v77 = type metadata accessor for AttributedString();
  v24 = *(v77 - 8);
  v25 = __chkstk_darwin(v77);
  v65 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v66 = &v64 - v27;
  v69 = v2;
  v28 = type metadata accessor for URL();
  (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
  (*(v14 + 104))(v16, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v75);
  (*(v11 + 104))(v13, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v76);

  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  AttributedString.init(markdown:options:baseURL:)();
  v29 = v24;
  v30 = *(v24 + 56);
  v31 = v77;
  v30(v23, 0, 1, v77);
  v32 = v66;
  (*(v29 + 32))(v66, v23, v31);
  (*(v29 + 16))(v65, v32, v31);
  v33 = Text.init(_:)();
  v35 = v34;
  LOBYTE(v23) = v36;
  static Font.body.getter();
  v75 = Text.font(_:)();
  v65 = v37;
  v39 = v38;
  v76 = v40;

  sub_10000F77C(v33, v35, v23 & 1);

  KeyPath = swift_getKeyPath();
  v42 = v70;
  sub_10000F540(v69, v70, type metadata accessor for InstallSheetConfirmationView);
  v43 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v44 = swift_allocObject();
  sub_10000F6C0(v42, v44 + v43, type metadata accessor for InstallSheetConfirmationView);
  v45 = sub_1000047BC(&qword_100088B40, &qword_100065F48);
  v46 = v72;
  v47 = &v72[*(v45 + 36)];
  sub_1000047BC(&qword_100088B48, &qword_100065F50);
  OpenURLAction.init(handler:)();
  *v47 = KeyPath;
  v48 = v65;
  *v46 = v75;
  *(v46 + 8) = v48;
  *(v46 + 16) = v39 & 1;
  *(v46 + 24) = v76;
  LOBYTE(v33) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v49 = v46 + *(v71 + 36);
  *v49 = v33;
  *(v49 + 8) = v50;
  *(v49 + 16) = v51;
  *(v49 + 24) = v52;
  *(v49 + 32) = v53;
  *(v49 + 40) = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v29 + 8))(v32, v31);
  v54 = v74;
  sub_1000110B8(v46, v74, &qword_100088B28, &qword_100065EF8);
  v55 = v78;
  v56 = (v54 + *(v78 + 36));
  v57 = v86;
  v56[4] = v85;
  v56[5] = v57;
  v56[6] = v87;
  v58 = v82;
  *v56 = v81;
  v56[1] = v58;
  v59 = v84;
  v56[2] = v83;
  v56[3] = v59;
  v60 = v54;
  v61 = v73;
  sub_1000110B8(v60, v73, &qword_100088B30, &unk_100065F00);
  v62 = v80;
  sub_1000110B8(v61, v80, &qword_100088B30, &unk_100065F00);
  return (*(v79 + 56))(v62, 0, 1, v55);
}

uint64_t sub_100006AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v34 = a3;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = v6;
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for MainActor();
  v33 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v29 = v13 + 56;
  v30 = v14;
  v14(v10, 1, 1, v12);
  v27 = *(v5 + 16);
  v27(v7, a1, v4);
  v15 = static MainActor.shared.getter();
  v16 = *(v5 + 80);
  v26 = v11;
  v17 = swift_allocObject();
  v25 = a1;
  v18 = v17;
  *(v17 + 16) = v15;
  *(v17 + 24) = &protocol witness table for MainActor;
  v28 = *(v5 + 32);
  v28(v17 + ((v16 + 32) & ~v16), v7, v4);
  v31 = v10;
  sub_100007654(0, 0, v10, &unk_100065F60, v18);

  type metadata accessor for InstallSheetConfirmationView(0);
  type metadata accessor for InstallSheetConfirmationViewModel(0);
  sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel, &unk_100065CC0);
  StateObject.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v20 = v31;
    v30(v31, 1, 1, v12);
    v27(v7, v25, v4);
    swift_unknownObjectRetain();
    v21 = static MainActor.shared.getter();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = &protocol witness table for MainActor;
    v22[4] = Strong;
    v28(v22 + ((v16 + 40) & ~v16), v7, v4);
    sub_100007654(0, 0, v20, &unk_100065F68, v22);

    swift_unknownObjectRelease();
  }

  static OpenURLAction.Result.handled.getter();
}

uint64_t sub_100006EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v5 = sub_1000047BC(&qword_100088B50, &qword_100065F70);
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[27] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[28] = v7;
  v4[29] = v6;

  return _swift_task_switch(sub_100006FE0, v7, v6);
}

uint64_t sub_100006FE0()
{
  v1 = [objc_opt_self() defaultWorkspace];
  *(v0 + 240) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 200);
    v4 = *(v0 + 208);
    v5 = *(v0 + 192);
    URL._bridgeToObjectiveC()((v0 + 80));
    v9 = v6;
    *(v0 + 248) = v6;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_1000071E4;
    swift_continuation_init();
    *(v0 + 136) = v5;
    v7 = sub_1000104C4((v0 + 112));
    sub_1000047BC(&qword_100088B58, &qword_100065F78);
    sub_1000047BC(&qword_100088B60, &qword_100065F80);
    CheckedContinuation.init(continuation:function:)();
    (*(v3 + 32))(v7, v4, v5);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100007580;
    *(v0 + 104) = &unk_10007E938;
    [v2 openURL:v9 configuration:0 completionHandler:?];
    (*(v3 + 8))(v7, v5);
    v1 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_1000071E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  if (v2)
  {
    v5 = sub_10000739C;
  }

  else
  {
    v5 = sub_100007314;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100007314()
{
  v2 = v0[30];
  v1 = v0[31];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000739C()
{
  v14 = v0;
  v1 = v0[31];
  v2 = v0[30];

  swift_willThrow();

  if (qword_100088440 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000105E8(v3, qword_10008C4D8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_10000F78C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to open learn more url: %{public}s", v6, 0xCu);
    sub_10001059C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

void sub_100007580(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100010624((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_1000047BC(&qword_100088B50, &qword_100065F70);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (a2)
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_1000047BC(&qword_100088B50, &qword_100065F70);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100007654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100010668(a3, v25 - v10, &unk_100088F10, &qword_100065D60);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100011C14(v11, &unk_100088F10, &qword_100065D60);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
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

      sub_100011C14(a3, &unk_100088F10, &qword_100065D60);

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

  sub_100011C14(a3, &unk_100088F10, &qword_100065D60);
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

uint64_t sub_100007954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100010668(a3, v25 - v10, &unk_100088F10, &qword_100065D60);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100011C14(v11, &unk_100088F10, &qword_100065D60);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1000047BC(&qword_100088BA0, &qword_100065FD0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100011C14(a3, &unk_100088F10, &qword_100065D60);

      return v22;
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

  sub_100011C14(a3, &unk_100088F10, &qword_100065D60);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1000047BC(&qword_100088BA0, &qword_100065FD0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100007C68@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = type metadata accessor for InstallSheetConfirmationView(0);
  v33 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v34 = v3;
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000047BC(&qword_1000889B8, &qword_100065CF8);
  __chkstk_darwin(v30);
  v5 = &v28 - v4;
  v6 = sub_1000047BC(&qword_1000889C0, &qword_100065D00);
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v29 = sub_1000047BC(&qword_1000889C8, &qword_100065D08);
  __chkstk_darwin(v29);
  v10 = &v28 - v9;
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 0;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_1000047BC(&qword_1000889D0, &qword_100065D10);
  v12 = &v5[*(v11 + 44)];
  __chkstk_darwin(v11);
  static Axis.Set.vertical.getter();
  sub_1000047BC(&qword_1000889D8, &qword_100065D18);
  sub_10000B798();
  ScrollView.init(_:showsIndicators:content:)();
  v13 = static HorizontalAlignment.center.getter();
  v14 = &v12[*(sub_1000047BC(&qword_100088A28, &qword_100065D40) + 36)];
  sub_10000AE30(v1, v14);
  VerticalEdge.rawValue.getter();
  v15 = Edge.init(rawValue:)();
  v16 = static SafeAreaRegions.container.getter();

  v17 = v14 + *(sub_1000047BC(&qword_100088A30, &qword_100065D48) + 36);
  *v17 = v16;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  *(v17 + 17) = v15;
  *(v17 + 24) = v13;
  sub_100012174(&qword_100088A38, &qword_1000889B8, &qword_100065CF8, &protocol conformance descriptor for VStack<A>);
  View.interactiveDismissDisabled(_:)();
  sub_100011C14(v5, &qword_1000889B8, &qword_100065CF8);
  static Alignment.bottom.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v31 + 32))(v10, v8, v32);
  v18 = &v10[*(v29 + 36)];
  v19 = v42;
  *(v18 + 4) = v41;
  *(v18 + 5) = v19;
  *(v18 + 6) = v43;
  v20 = v38;
  *v18 = v37;
  *(v18 + 1) = v20;
  v21 = v40;
  *(v18 + 2) = v39;
  *(v18 + 3) = v21;
  v22 = v35;
  sub_10000F540(v1, v35, type metadata accessor for InstallSheetConfirmationView);
  v23 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v24 = swift_allocObject();
  sub_10000F6C0(v22, v24 + v23, type metadata accessor for InstallSheetConfirmationView);
  v25 = v36;
  sub_1000110B8(v10, v36, &qword_1000889C8, &qword_100065D08);
  result = sub_1000047BC(&qword_100088A40, &qword_100065D58);
  v27 = (v25 + *(result + 36));
  *v27 = sub_10000B9E8;
  v27[1] = v24;
  v27[2] = 0;
  v27[3] = 0;
  return result;
}

uint64_t sub_10000819C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v161 = a2;
  v160 = sub_1000047BC(&qword_100088A20, &qword_100065D38);
  __chkstk_darwin(v160);
  v154 = v134 - v3;
  v151 = type metadata accessor for InstallMarketplaceButtons(0);
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v140 = (v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1000047BC(&qword_100088A68, &qword_100065DC8);
  v6 = __chkstk_darwin(v5 - 8);
  v152 = v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v153 = v134 - v8;
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v134 - v14;
  v16 = sub_1000047BC(&qword_100088A70, &qword_100065DD0);
  __chkstk_darwin(v16 - 8);
  v18 = v134 - v17;
  v142 = sub_1000047BC(&qword_100088A78, &qword_100065DD8);
  __chkstk_darwin(v142);
  v144 = v134 - v19;
  v143 = sub_1000047BC(&qword_100088A80, &qword_100065DE0);
  __chkstk_darwin(v143);
  v146 = v134 - v20;
  v145 = sub_1000047BC(&qword_100088A88, &qword_100065DE8);
  __chkstk_darwin(v145);
  v162 = v134 - v21;
  v148 = sub_1000047BC(&qword_100088A90, &qword_100065DF0);
  v22 = __chkstk_darwin(v148);
  v149 = v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v147 = v134 - v25;
  __chkstk_darwin(v24);
  v163 = v134 - v26;
  v155 = sub_1000047BC(&qword_100088A98, &qword_100065DF8);
  __chkstk_darwin(v155);
  v158 = v134 - v27;
  v156 = sub_1000047BC(&qword_1000889F0, &qword_100065D20);
  __chkstk_darwin(v156);
  v29 = v134 - v28;
  v30 = sub_1000047BC(&qword_1000889D8, &qword_100065D18);
  __chkstk_darwin(v30 - 8);
  v159 = v134 - v31;
  type metadata accessor for MainActor();
  v157 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v135 = type metadata accessor for InstallSheetConfirmationView(0);
  v32 = *(v135 + 24);
  v166 = a1;
  v33 = (a1 + v32);
  v34 = *v33;
  v35 = v33[1];
  v36 = *(v33 + 16);
  v37 = type metadata accessor for InstallSheetConfirmationViewModel(0);
  v38 = sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel, &unk_100065CC0);
  v139 = v34;
  v138 = v35;
  v137 = v36;
  v136 = v37;
  v134[1] = v38;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v167 == 1 && (v39 = [objc_opt_self() currentDevice], v40 = objc_msgSend(v39, "userInterfaceIdiom"), v39, v40 != 1))
  {
    *v29 = static HorizontalAlignment.center.getter();
    *(v29 + 1) = 0;
    v29[16] = 1;
    v116 = sub_1000047BC(&qword_100088AB0, &qword_100065E58);
    sub_100009228(v166, &v29[*(v116 + 44)]);
    v117 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v119 = v118;
    v121 = v120;
    v123 = v122;
    v125 = v124;
    v126 = &v29[*(sub_1000047BC(&qword_100088A00, &qword_100065D28) + 36)];
    *v126 = v117;
    *(v126 + 1) = v119;
    *(v126 + 2) = v121;
    *(v126 + 3) = v123;
    *(v126 + 4) = v125;
    v126[40] = 0;
    v127 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v128 = &v29[*(v156 + 36)];
    *v128 = v127;
    *(v128 + 1) = v129;
    *(v128 + 2) = v130;
    *(v128 + 3) = v131;
    *(v128 + 4) = v132;
    v128[40] = 0;
    sub_100010668(v29, v158, &qword_1000889F0, &qword_100065D20);
    swift_storeEnumTagMultiPayload();
    sub_10000B898();
    sub_100012174(&qword_100088A18, &qword_100088A20, &qword_100065D38, &protocol conformance descriptor for TupleView<A>);
    v107 = v159;
    _ConditionalContent<>.init(storage:)();
    v113 = v29;
    v114 = &qword_1000889F0;
    v115 = &qword_100065D20;
  }

  else
  {
    v41 = v166;
    sub_10000B580(v15);
    v42 = enum case for DynamicTypeSize.large(_:);
    v165 = *(v10 + 104);
    v165(v13, enum case for DynamicTypeSize.large(_:), v9);
    v164 = sub_10000F4F8(&qword_100088A58, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    v43 = dispatch thunk of static Comparable.> infix(_:_:)();
    v46 = *(v10 + 8);
    v44 = v10 + 8;
    v45 = v46;
    v46(v13, v9);
    v46(v15, v9);
    if (v43)
    {
      v47 = static HorizontalAlignment.leading.getter();
    }

    else
    {
      v47 = static HorizontalAlignment.center.getter();
    }

    *v18 = v47;
    *(v18 + 1) = 0;
    v18[16] = 1;
    v48 = sub_1000047BC(&qword_100088AA0, &qword_100065E48);
    sub_10000A24C(v41, &v18[*(v48 + 44)]);
    sub_10000B580(v15);
    v165(v13, v42, v9);
    dispatch thunk of static Comparable.> infix(_:_:)();
    v45(v13, v9);
    v45(v15, v9);
    v49 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v141 = v44;
    v58 = v42;
    v59 = v144;
    sub_1000110B8(v18, v144, &qword_100088A70, &qword_100065DD0);
    v60 = v59 + v142[9];
    *v60 = v49;
    *(v60 + 8) = v51;
    *(v60 + 16) = v53;
    *(v60 + 24) = v55;
    *(v60 + 32) = v57;
    *(v60 + 40) = 0;
    v61 = static Edge.Set.horizontal.getter();
    v142 = objc_opt_self();
    v62 = [v142 currentDevice];
    [v62 userInterfaceIdiom];

    EdgeInsets.init(_all:)();
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v71 = v146;
    sub_1000110B8(v59, v146, &qword_100088A78, &qword_100065DD8);
    v72 = v71 + *(v143 + 36);
    *v72 = v61;
    *(v72 + 8) = v64;
    *(v72 + 16) = v66;
    *(v72 + 24) = v68;
    *(v72 + 32) = v70;
    *(v72 + 40) = 0;
    v73 = static Edge.Set.top.getter();
    sub_10000B580(v15);
    LODWORD(v144) = v58;
    v165(v13, v58, v9);
    v74 = dispatch thunk of static Comparable.> infix(_:_:)();
    v45(v13, v9);
    v45(v15, v9);
    if ((v74 & 1) == 0)
    {
      v75 = [v142 currentDevice];
      [v75 userInterfaceIdiom];
    }

    EdgeInsets.init(_all:)();
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v84 = v162;
    sub_1000110B8(v71, v162, &qword_100088A80, &qword_100065DE0);
    v85 = v84 + *(v145 + 36);
    *v85 = v73;
    *(v85 + 8) = v77;
    *(v85 + 16) = v79;
    *(v85 + 24) = v81;
    *(v85 + 32) = v83;
    *(v85 + 40) = 0;
    v86 = static Edge.Set.top.getter();
    sub_10000B580(v15);
    v87 = v144;
    v165(v13, v144, v9);
    LOBYTE(v84) = dispatch thunk of static Comparable.> infix(_:_:)();
    v45(v13, v9);
    v45(v15, v9);
    if ((v84 & 1) == 0)
    {
      v88 = [v142 currentDevice];
      [v88 userInterfaceIdiom];
    }

    EdgeInsets.init(_all:)();
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v97 = v147;
    sub_1000110B8(v162, v147, &qword_100088A88, &qword_100065DE8);
    v98 = v97 + *(v148 + 36);
    *v98 = v86;
    *(v98 + 8) = v90;
    *(v98 + 16) = v92;
    *(v98 + 24) = v94;
    *(v98 + 32) = v96;
    *(v98 + 40) = 0;
    sub_1000110B8(v97, v163, &qword_100088A90, &qword_100065DF0);
    v99 = v166;
    sub_10000B580(v15);
    v165(v13, v87, v9);
    LOBYTE(v97) = dispatch thunk of static Comparable.> infix(_:_:)();
    v45(v13, v9);
    v45(v15, v9);
    if (v97)
    {
      v100 = v151;
      v101 = v99 + *(v135 + 20);
      v102 = v140;
      sub_10000F540(v101, v140 + *(v151 + 24), type metadata accessor for LocalizedInstallSheetContent);
      v103 = StateObject.wrappedValue.getter();
      *v102 = swift_getKeyPath();
      sub_1000047BC(&qword_100089E40, &qword_100065D50);
      swift_storeEnumTagMultiPayload();
      v104 = v102 + *(v100 + 20);
      *v104 = sub_1000121CC;
      *(v104 + 1) = v103;
      v104[16] = 0;
      v105 = v153;
      sub_10000F6C0(v102, v153, type metadata accessor for InstallMarketplaceButtons);
      v106 = 0;
    }

    else
    {
      v106 = 1;
      v105 = v153;
      v100 = v151;
    }

    v107 = v159;
    (*(v150 + 56))(v105, v106, 1, v100);
    v108 = v163;
    v109 = v149;
    sub_100010668(v163, v149, &qword_100088A90, &qword_100065DF0);
    v110 = v152;
    sub_100010668(v105, v152, &qword_100088A68, &qword_100065DC8);
    v111 = v154;
    sub_100010668(v109, v154, &qword_100088A90, &qword_100065DF0);
    v112 = sub_1000047BC(&qword_100088AA8, &qword_100065E50);
    sub_100010668(v110, v111 + *(v112 + 48), &qword_100088A68, &qword_100065DC8);
    sub_100011C14(v110, &qword_100088A68, &qword_100065DC8);
    sub_100011C14(v109, &qword_100088A90, &qword_100065DF0);
    sub_100010668(v111, v158, &qword_100088A20, &qword_100065D38);
    swift_storeEnumTagMultiPayload();
    sub_10000B898();
    sub_100012174(&qword_100088A18, &qword_100088A20, &qword_100065D38, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_100011C14(v111, &qword_100088A20, &qword_100065D38);
    sub_100011C14(v105, &qword_100088A68, &qword_100065DC8);
    v113 = v108;
    v114 = &qword_100088A90;
    v115 = &qword_100065DF0;
  }

  sub_100011C14(v113, v114, v115);
  sub_1000110B8(v107, v161, &qword_1000889D8, &qword_100065D18);
}

uint64_t sub_100009228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_1000047BC(&qword_100088AB8, &qword_100065E60);
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v5 = (&v51 - v4);
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v51 - v11;
  v13 = sub_1000047BC(&qword_100088AC0, &qword_100065E68);
  v14 = __chkstk_darwin(v13 - 8);
  v53 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v51 - v16;
  v18 = sub_1000047BC(&qword_100088AC8, &qword_100065E70);
  v19 = __chkstk_darwin(v18 - 8);
  v52 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v51 - v21;
  type metadata accessor for MainActor();
  v51 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v22 = static VerticalAlignment.center.getter();
  *(v22 + 1) = 0x4040000000000000;
  v22[16] = 0;
  v23 = sub_1000047BC(&qword_100088AD0, &qword_100065E78);
  sub_100009868(a1, &v22[*(v23 + 44)]);
  sub_10000B580(v12);
  (*(v7 + 104))(v10, enum case for DynamicTypeSize.large(_:), v6);
  sub_10000F4F8(&qword_100088A58, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v24 = dispatch thunk of static Comparable.> infix(_:_:)();
  v25 = *(v7 + 8);
  v25(v10, v6);
  v25(v12, v6);
  if (v24)
  {
    v26 = *(type metadata accessor for InstallSheetConfirmationView(0) + 20);
    v27 = type metadata accessor for InstallMarketplaceButtons(0);
    sub_10000F540(a1 + v26, v5 + *(v27 + 24), type metadata accessor for LocalizedInstallSheetContent);
    type metadata accessor for InstallSheetConfirmationViewModel(0);
    sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel, &unk_100065CC0);
    v28 = StateObject.wrappedValue.getter();
    *v5 = swift_getKeyPath();
    sub_1000047BC(&qword_100089E40, &qword_100065D50);
    swift_storeEnumTagMultiPayload();
    v29 = v5 + *(v27 + 20);
    *v29 = sub_1000121CC;
    *(v29 + 1) = v28;
    v29[16] = 0;
    LOBYTE(v27) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = v5 + *(sub_1000047BC(&qword_100088AE0, &qword_100065E88) + 36);
    *v38 = v27;
    *(v38 + 1) = v31;
    *(v38 + 2) = v33;
    *(v38 + 3) = v35;
    *(v38 + 4) = v37;
    v38[40] = 0;
    LOBYTE(v27) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v39 = v55;
    v40 = v5 + *(v55 + 36);
    *v40 = v27;
    *(v40 + 1) = v41;
    *(v40 + 2) = v42;
    *(v40 + 3) = v43;
    *(v40 + 4) = v44;
    v40[40] = 0;
    sub_1000110B8(v5, v17, &qword_100088AB8, &qword_100065E60);
    v45 = 0;
  }

  else
  {
    v45 = 1;
    v39 = v55;
  }

  (*(v54 + 56))(v17, v45, 1, v39);
  v46 = v52;
  sub_100010668(v22, v52, &qword_100088AC8, &qword_100065E70);
  v47 = v53;
  sub_100010668(v17, v53, &qword_100088AC0, &qword_100065E68);
  v48 = v56;
  sub_100010668(v46, v56, &qword_100088AC8, &qword_100065E70);
  v49 = sub_1000047BC(&qword_100088AD8, &qword_100065E80);
  sub_100010668(v47, v48 + *(v49 + 48), &qword_100088AC0, &qword_100065E68);
  sub_100011C14(v17, &qword_100088AC0, &qword_100065E68);
  sub_100011C14(v22, &qword_100088AC8, &qword_100065E70);
  sub_100011C14(v47, &qword_100088AC0, &qword_100065E68);
  sub_100011C14(v46, &qword_100088AC8, &qword_100065E70);
}

uint64_t sub_100009868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v30 = type metadata accessor for MiniProductPageViewWrapper(0);
  __chkstk_darwin(v30);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000047BC(&qword_100088AE8, &qword_100065E90);
  v5 = __chkstk_darwin(v31);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v30 - v8;
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  v12 = sub_1000047BC(&qword_100088AF0, &qword_100065E98);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  type metadata accessor for MainActor();
  v32 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v17 = static HorizontalAlignment.center.getter();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = sub_1000047BC(&qword_100088AF8, &qword_100065EA0);
  sub_100009CFC(a1, &v17[*(v18 + 44)]);
  v19 = a1 + *(type metadata accessor for InstallSheetConfirmationView(0) + 20);
  v20 = *(type metadata accessor for LocalizedInstallSheetContent(0) + 72);
  v21 = type metadata accessor for InstallSheetContext();
  (*(*(v21 - 8) + 16))(v4, v19 + v20, v21);
  type metadata accessor for InstallSheetConfirmationViewModel(0);
  sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel, &unk_100065CC0);
  *&v4[*(v30 + 20)] = StateObject.wrappedValue.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000F6C0(v4, v9, type metadata accessor for MiniProductPageViewWrapper);
  v22 = &v9[*(v31 + 36)];
  v23 = v40;
  *(v22 + 4) = v39;
  *(v22 + 5) = v23;
  *(v22 + 6) = v41;
  v24 = v36;
  *v22 = v35;
  *(v22 + 1) = v24;
  v25 = v38;
  *(v22 + 2) = v37;
  *(v22 + 3) = v25;
  sub_1000110B8(v9, v11, &qword_100088AE8, &qword_100065E90);
  sub_100010668(v17, v15, &qword_100088AF0, &qword_100065E98);
  v26 = v33;
  sub_100010668(v11, v33, &qword_100088AE8, &qword_100065E90);
  v27 = v34;
  sub_100010668(v15, v34, &qword_100088AF0, &qword_100065E98);
  v28 = sub_1000047BC(&qword_100088B00, &qword_100065EA8);
  sub_100010668(v26, v27 + *(v28 + 48), &qword_100088AE8, &qword_100065E90);
  sub_100011C14(v11, &qword_100088AE8, &qword_100065E90);
  sub_100011C14(v17, &qword_100088AF0, &qword_100065E98);
  sub_100011C14(v26, &qword_100088AE8, &qword_100065E90);
  sub_100011C14(v15, &qword_100088AF0, &qword_100065E98);
}

uint64_t sub_100009CFC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v61 = a2;
  v58 = sub_1000047BC(&qword_100088B08, &qword_100065EB0);
  v3 = __chkstk_darwin(v58);
  v60 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v59 = &v52 - v5;
  type metadata accessor for MainActor();
  v62 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = (a1 + *(type metadata accessor for InstallSheetConfirmationView(0) + 20));
  v7 = v6[1];
  v70 = *v6;
  v71 = v7;
  sub_10000F728();

  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  static Font.largeTitle.getter();
  v13 = Text.font(_:)();
  v15 = v14;
  v17 = v16;
  v52 = a1;

  sub_10000F77C(v8, v10, v12 & 1);

  v18 = Text.bold()();
  v55 = v18;
  v56 = v19;
  v63 = v20;
  LOBYTE(v8) = v21;
  v22 = v19;
  sub_10000F77C(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  v53 = KeyPath;
  v24 = static Edge.Set.bottom.getter();
  v25 = v24;
  v54 = v24;
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v96 = v8 & 1;
  v57 = v8 & 1;
  v92 = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v97[3] + 7) = *(&v97[10] + 8);
  *(&v97[4] + 7) = *(&v97[11] + 8);
  *(&v97[5] + 7) = *(&v97[12] + 8);
  *(&v97[6] + 7) = *(&v97[13] + 8);
  *(v97 + 7) = *(&v97[7] + 8);
  *(&v97[1] + 7) = *(&v97[8] + 8);
  *(&v97[2] + 7) = *(&v97[9] + 8);
  v34 = v59;
  sub_1000061F8(v59);
  v35 = swift_getKeyPath();
  v36 = v34 + *(v58 + 36);
  *v36 = v35;
  *(v36 + 8) = 0;
  v37 = v60;
  sub_100010668(v34, v60, &qword_100088B08, &qword_100065EB0);
  *&v64 = v18;
  *(&v64 + 1) = v63;
  LOBYTE(v65) = v8 & 1;
  *(&v65 + 1) = *v95;
  DWORD1(v65) = *&v95[3];
  *(&v65 + 1) = v22;
  *&v66 = KeyPath;
  BYTE8(v66) = 0;
  *(&v66 + 9) = *v94;
  HIDWORD(v66) = *&v94[3];
  LOBYTE(v67) = v25;
  *(&v67 + 1) = *v93;
  DWORD1(v67) = *&v93[3];
  *(&v67 + 1) = v27;
  *&v68 = v29;
  *(&v68 + 1) = v31;
  *&v69[0] = v33;
  BYTE8(v69[0]) = 0;
  *(v69 + 9) = v97[0];
  *(&v69[1] + 9) = v97[1];
  *(&v69[4] + 9) = v97[4];
  *(&v69[5] + 9) = v97[5];
  *(&v69[6] + 9) = v97[6];
  *(&v69[7] + 1) = *(&v97[6] + 15);
  *(&v69[2] + 9) = v97[2];
  *(&v69[3] + 9) = v97[3];
  v38 = v64;
  v39 = v65;
  v40 = v67;
  v41 = v61;
  v61[2] = v66;
  v41[3] = v40;
  *v41 = v38;
  v41[1] = v39;
  v42 = v68;
  v43 = v69[0];
  v44 = v69[2];
  v41[6] = v69[1];
  v41[7] = v44;
  v41[4] = v42;
  v41[5] = v43;
  v45 = v69[3];
  v46 = v69[4];
  v47 = v69[7];
  v41[11] = v69[6];
  v41[12] = v47;
  v48 = v69[5];
  v41[9] = v46;
  v41[10] = v48;
  v41[8] = v45;
  v49 = sub_1000047BC(&qword_100088B18, &qword_100065EE8);
  sub_100010668(v37, v41 + *(v49 + 48), &qword_100088B08, &qword_100065EB0);
  v50 = v41 + *(v49 + 64);
  *v50 = 0;
  v50[8] = 1;
  sub_100010668(&v64, &v70, &qword_100088B20, &qword_100065EF0);
  sub_100011C14(v34, &qword_100088B08, &qword_100065EB0);
  sub_100011C14(v37, &qword_100088B08, &qword_100065EB0);
  v70 = v55;
  v71 = v63;
  v72 = v57;
  *v73 = *v95;
  *&v73[3] = *&v95[3];
  v74 = v56;
  v75 = v53;
  v76 = 0;
  *v77 = *v94;
  *&v77[3] = *&v94[3];
  v78 = v54;
  *v79 = *v93;
  *&v79[3] = *&v93[3];
  v80 = v27;
  v81 = v29;
  v82 = v31;
  v83 = v33;
  v84 = 0;
  v89 = v97[4];
  v90 = v97[5];
  v91[0] = v97[6];
  *(v91 + 15) = *(&v97[6] + 15);
  v85 = v97[0];
  v86 = v97[1];
  v87 = v97[2];
  v88 = v97[3];
  sub_100011C14(&v70, &qword_100088B20, &qword_100065EF0);
}

uint64_t sub_10000A24C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v104 = a2;
  v93 = type metadata accessor for MiniProductPageViewWrapper(0);
  __chkstk_darwin(v93);
  v96 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1000047BC(&qword_100088AE8, &qword_100065E90);
  __chkstk_darwin(v95);
  v98 = &v81 - v4;
  v97 = sub_1000047BC(&qword_100088B70, &qword_100065F90);
  v5 = __chkstk_darwin(v97);
  v103 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v99 = &v81 - v8;
  __chkstk_darwin(v7);
  v102 = &v81 - v9;
  v10 = sub_1000047BC(&qword_100088B78, &qword_100065F98);
  __chkstk_darwin(v10 - 8);
  v92 = &v81 - v11;
  v91 = sub_1000047BC(&qword_100088B08, &qword_100065EB0);
  v12 = __chkstk_darwin(v91);
  v101 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v89 = &v81 - v15;
  __chkstk_darwin(v14);
  v110 = &v81 - v16;
  v88 = type metadata accessor for DynamicTypeSize();
  v107 = *(v88 - 8);
  v17 = __chkstk_darwin(v88);
  v87 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v86 = &v81 - v19;
  type metadata accessor for MainActor();
  v100 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = type metadata accessor for InstallSheetConfirmationView(0);
  v84 = (a1 + *(v20 + 20));
  v85 = v20;
  v21 = *(v84 + 1);
  *&v143 = *v84;
  *(&v143 + 1) = v21;
  sub_10000F728();

  v22 = Text.init<A>(_:)();
  v24 = v23;
  v111 = a1;
  v26 = v25;
  static Font.largeTitle.getter();
  v27 = Text.font(_:)();
  v29 = v28;
  v31 = v30;

  sub_10000F77C(v22, v24, v26 & 1);

  v32 = Text.bold()();
  v108 = v33;
  v109 = v32;
  v105 = v34;
  v94 = v35;
  sub_10000F77C(v27, v29, v31 & 1);

  v36 = v86;
  sub_10000B580(v86);
  v83 = enum case for DynamicTypeSize.large(_:);
  v37 = v107;
  v82 = *(v107 + 104);
  v39 = v87;
  v38 = v88;
  v82(v87);
  sub_10000F4F8(&qword_100088A58, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v90 = dispatch thunk of static Comparable.> infix(_:_:)();
  v40 = *(v37 + 8);
  v40(v39, v38);
  v40(v36, v38);
  KeyPath = swift_getKeyPath();
  LODWORD(v107) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v105 &= 1u;
  v135 = v105;
  v131 = 0;
  v49 = v92;
  sub_1000061F8(v92);
  sub_10000B580(v36);
  (v82)(v39, v83, v38);
  LOBYTE(v22) = dispatch thunk of static Comparable.> infix(_:_:)();
  v40(v39, v38);
  v40(v36, v38);
  LOBYTE(v24) = (v22 & 1) == 0;
  v50 = swift_getKeyPath();
  v51 = v89;
  sub_1000110B8(v49, v89, &qword_100088B78, &qword_100065F98);
  v52 = v51 + *(v91 + 36);
  *v52 = v50;
  *(v52 + 8) = v24;
  v53 = v110;
  sub_1000110B8(v51, v110, &qword_100088B08, &qword_100065EB0);
  v54 = *(type metadata accessor for LocalizedInstallSheetContent(0) + 72);
  v55 = type metadata accessor for InstallSheetContext();
  v56 = v96;
  (*(*(v55 - 8) + 16))(v96, &v84[v54], v55);
  type metadata accessor for InstallSheetConfirmationViewModel(0);
  sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel, &unk_100065CC0);
  *(v56 + *(v93 + 20)) = StateObject.wrappedValue.getter();
  v57 = objc_opt_self();
  v58 = [v57 currentDevice];
  [v58 userInterfaceIdiom];

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v59 = v98;
  sub_10000F6C0(v56, v98, type metadata accessor for MiniProductPageViewWrapper);
  v60 = (v59 + *(v95 + 36));
  v61 = v141;
  v60[4] = v140;
  v60[5] = v61;
  v60[6] = v142;
  v62 = v137;
  *v60 = v136;
  v60[1] = v62;
  v63 = v139;
  v60[2] = v138;
  v60[3] = v63;
  v64 = [v57 currentDevice];
  [v64 userInterfaceIdiom];

  static Alignment.center.getter();
  LOBYTE(v64) = (v90 & 1) == 0;
  LODWORD(v111) = v64;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v65 = v99;
  sub_1000110B8(v59, v99, &qword_100088AE8, &qword_100065E90);
  v66 = (v65 + *(v97 + 36));
  v67 = v148;
  v66[4] = v147;
  v66[5] = v67;
  v66[6] = v149;
  v68 = v144;
  *v66 = v143;
  v66[1] = v68;
  v69 = v146;
  v66[2] = v145;
  v66[3] = v69;
  v70 = v102;
  sub_1000110B8(v65, v102, &qword_100088B70, &qword_100065F90);
  v71 = v101;
  sub_100010668(v53, v101, &qword_100088B08, &qword_100065EB0);
  v72 = v103;
  sub_100010668(v70, v103, &qword_100088B70, &qword_100065F90);
  *&v112 = v109;
  *(&v112 + 1) = v108;
  LOBYTE(v113) = v105;
  *(&v113 + 1) = *v134;
  DWORD1(v113) = *&v134[3];
  v73 = v94;
  *(&v113 + 1) = v94;
  *&v114 = KeyPath;
  BYTE8(v114) = v64;
  HIDWORD(v114) = *&v133[3];
  *(&v114 + 9) = *v133;
  LOBYTE(v115) = v107;
  DWORD1(v115) = *&v132[3];
  *(&v115 + 1) = *v132;
  *(&v115 + 1) = v42;
  *&v116[0] = v44;
  *(&v116[0] + 1) = v46;
  *&v116[1] = v48;
  BYTE8(v116[1]) = 0;
  v74 = v113;
  v75 = v104;
  *v104 = v112;
  v75[1] = v74;
  v76 = v114;
  v77 = v115;
  v78 = v116[0];
  *(v75 + 73) = *(v116 + 9);
  v75[3] = v77;
  v75[4] = v78;
  v75[2] = v76;
  v79 = sub_1000047BC(&qword_100088B80, &qword_100065FA0);
  sub_100010668(v71, v75 + *(v79 + 48), &qword_100088B08, &qword_100065EB0);
  sub_100010668(v72, v75 + *(v79 + 64), &qword_100088B70, &qword_100065F90);
  sub_100010668(&v112, v117, &qword_100088B88, &qword_100065FA8);
  sub_100011C14(v70, &qword_100088B70, &qword_100065F90);
  sub_100011C14(v110, &qword_100088B08, &qword_100065EB0);
  sub_100011C14(v72, &qword_100088B70, &qword_100065F90);
  sub_100011C14(v71, &qword_100088B08, &qword_100065EB0);
  v117[0] = v109;
  v117[1] = v108;
  v118 = v105;
  *v119 = *v134;
  *&v119[3] = *&v134[3];
  v120 = v73;
  v121 = KeyPath;
  v122 = v111;
  *v123 = *v133;
  *&v123[3] = *&v133[3];
  v124 = v107;
  *v125 = *v132;
  *&v125[3] = *&v132[3];
  v126 = v42;
  v127 = v44;
  v128 = v46;
  v129 = v48;
  v130 = 0;
  sub_100011C14(v117, &qword_100088B88, &qword_100065FA8);
}

uint64_t sub_10000AE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = type metadata accessor for InstallMarketplaceButtons(0);
  __chkstk_darwin(v26);
  v4 = (&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_1000047BC(&qword_100088A48, &qword_100065D88);
  __chkstk_darwin(v25);
  v6 = &v24 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = sub_1000047BC(&qword_100088A50, &qword_100065D90);
  __chkstk_darwin(v14 - 8);
  v16 = &v24 - v15;
  type metadata accessor for MainActor();
  v24 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10000B580(v13);
  (*(v8 + 104))(v11, enum case for DynamicTypeSize.large(_:), v7);
  sub_10000F4F8(&qword_100088A58, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v17 = dispatch thunk of static Comparable.> infix(_:_:)();
  v18 = *(v8 + 8);
  v18(v11, v7);
  v18(v13, v7);
  if (v17)
  {
    swift_storeEnumTagMultiPayload();
    sub_10000F4F8(&qword_100088A60, type metadata accessor for InstallMarketplaceButtons, &unk_10006609C);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v19 = type metadata accessor for InstallSheetConfirmationView(0);
    v20 = v26;
    sub_10000F540(a1 + *(v19 + 20), v4 + *(v26 + 24), type metadata accessor for LocalizedInstallSheetContent);
    type metadata accessor for InstallSheetConfirmationViewModel(0);
    sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel, &unk_100065CC0);
    v21 = StateObject.wrappedValue.getter();
    *v4 = swift_getKeyPath();
    sub_1000047BC(&qword_100089E40, &qword_100065D50);
    swift_storeEnumTagMultiPayload();
    v22 = v4 + *(v20 + 20);
    *v22 = sub_10000F60C;
    *(v22 + 1) = v21;
    v22[16] = 0;
    sub_10000F540(v4, v6, type metadata accessor for InstallMarketplaceButtons);
    swift_storeEnumTagMultiPayload();
    sub_10000F4F8(&qword_100088A60, type metadata accessor for InstallMarketplaceButtons, &unk_10006609C);
    _ConditionalContent<>.init(storage:)();
    sub_10000F614(v4);
  }

  sub_1000110B8(v16, v27, &qword_100088A50, &qword_100065D90);
}

uint64_t sub_10000B328(uint64_t a1)
{
  v1 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for InstallSheetConfirmationView(0);
  type metadata accessor for InstallSheetConfirmationViewModel(0);
  sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel, &unk_100065CC0);
  StateObject.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = Strong;
    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v6;
    sub_100007654(0, 0, v3, &unk_100065D68, v8);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_10000B580@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000047BC(&qword_100089E40, &qword_100065D50);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100010668(v2, &v14 - v9, &qword_100089E40, &qword_100065D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

unint64_t sub_10000B798()
{
  result = qword_1000889E0;
  if (!qword_1000889E0)
  {
    sub_10000B850(&qword_1000889D8, &qword_100065D18);
    sub_10000B898();
    sub_100012174(&qword_100088A18, &qword_100088A20, &qword_100065D38, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000889E0);
  }

  return result;
}

uint64_t sub_10000B850(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000B898()
{
  result = qword_1000889E8;
  if (!qword_1000889E8)
  {
    sub_10000B850(&qword_1000889F0, &qword_100065D20);
    sub_10000B924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000889E8);
  }

  return result;
}

unint64_t sub_10000B924()
{
  result = qword_1000889F8;
  if (!qword_1000889F8)
  {
    sub_10000B850(&qword_100088A00, &qword_100065D28);
    sub_100012174(&qword_100088A08, &qword_100088A10, &qword_100065D30, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000889F8);
  }

  return result;
}

uint64_t sub_10000B9E8()
{
  v1 = *(type metadata accessor for InstallSheetConfirmationView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10000B328(v2);
}

uint64_t sub_10000BA48@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = type metadata accessor for InstallMarketplaceButtons(0);
  v58 = *(v2 - 8);
  v57 = *(v58 + 64);
  __chkstk_darwin(v2);
  v56 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Material();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v51 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1000047BC(&qword_100088C50, &qword_1000660F0) - 8;
  __chkstk_darwin(v53);
  v52 = &v51 - v6;
  v7 = sub_1000047BC(&qword_100088C58, &qword_1000660F8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v51 - v9;
  v11 = sub_1000047BC(&qword_100088C60, &qword_100066100);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v51 - v13;
  v15 = sub_1000047BC(&qword_100088C68, &qword_100066108);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v51 - v17;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v19 = sub_1000047BC(&qword_100088C70, &qword_100066110);
  sub_10000C008(v1, &v10[*(v19 + 44)]);
  v20 = static Edge.Set.horizontal.getter();
  v21 = v1;
  sub_10000E74C();
  EdgeInsets.init(_all:)();
  v22 = &v10[*(v8 + 44)];
  *v22 = v20;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  LOBYTE(v8) = static Edge.Set.bottom.getter();
  v27 = [objc_opt_self() currentDevice];
  [v27 userInterfaceIdiom];

  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_1000110B8(v10, v14, &qword_100088C58, &qword_1000660F8);
  v36 = &v14[*(v12 + 44)];
  *v36 = v8;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = v51;
  static Material.thin.getter();
  type metadata accessor for InstallSheetConfirmationViewModel(0);
  sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel, &unk_100065CC0);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v60)
  {
    v38 = 1.0;
  }

  else
  {
    v38 = 0.0;
  }

  v39 = v52;
  (*(v54 + 32))(v52, v37, v55);
  *(v39 + *(v53 + 44)) = v38;
  v40 = static Edge.Set.all.getter();
  v41 = &v18[*(v16 + 44)];
  sub_1000110B8(v39, v41, &qword_100088C50, &qword_1000660F0);
  *(v41 + *(sub_1000047BC(&qword_100088C78, &qword_100066118) + 36)) = v40;
  sub_1000110B8(v14, v18, &qword_100088C60, &qword_100066100);
  v42 = v56;
  sub_10000F540(v21, v56, type metadata accessor for InstallMarketplaceButtons);
  v43 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v44 = swift_allocObject();
  sub_10000F6C0(v42, v44 + v43, type metadata accessor for InstallMarketplaceButtons);
  v45 = static Alignment.center.getter();
  v47 = v46;
  v48 = v59;
  sub_1000110B8(v18, v59, &qword_100088C68, &qword_100066108);
  result = sub_1000047BC(&qword_100088C80, &qword_100066120);
  v50 = (v48 + *(result + 36));
  *v50 = sub_100011124;
  v50[1] = v44;
  v50[2] = v45;
  v50[3] = v47;
  return result;
}

uint64_t sub_10000C008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_1000047BC(&qword_100088C88, &qword_100066128);
  __chkstk_darwin(v3 - 8);
  v5 = &v61 - v4;
  v64 = sub_1000047BC(&qword_100088C90, &qword_100066130);
  __chkstk_darwin(v64);
  v66 = &v61 - v6;
  v73 = sub_1000047BC(&qword_100088C98, &qword_100066138);
  v7 = __chkstk_darwin(v73);
  v65 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v67 = &v61 - v9;
  v71 = sub_1000047BC(&qword_100088CA0, &qword_100066140);
  __chkstk_darwin(v71);
  v72 = &v61 - v10;
  v11 = sub_1000047BC(&qword_100088CA8, &qword_100066148);
  __chkstk_darwin(v11 - 8);
  v13 = &v61 - v12;
  v62 = sub_1000047BC(&qword_100088CB0, &qword_100066150);
  __chkstk_darwin(v62);
  v15 = &v61 - v14;
  v70 = sub_1000047BC(&qword_100088CB8, &qword_100066158);
  v16 = __chkstk_darwin(v70);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v63 = &v61 - v19;
  v20 = sub_1000047BC(&qword_100088CC0, &qword_100066160);
  __chkstk_darwin(v20 - 8);
  v69 = &v61 - v21;
  type metadata accessor for MainActor();
  v68 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for InstallMarketplaceButtons(0);
  v22 = a1;
  type metadata accessor for InstallSheetConfirmationViewModel(0);
  sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel, &unk_100065CC0);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v75 == 1 && (v23 = [objc_opt_self() currentDevice], v24 = objc_msgSend(v23, "userInterfaceIdiom"), v23, v24 != 1))
  {
    *v13 = static VerticalAlignment.center.getter();
    *(v13 + 1) = 0x4040000000000000;
    v13[16] = 0;
    v44 = sub_1000047BC(&qword_100088D08, &qword_100066178);
    sub_10000C988(v22, &v13[*(v44 + 44)]);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_1000110B8(v13, v15, &qword_100088CA8, &qword_100066148);
    v45 = &v15[*(v62 + 36)];
    v46 = v80;
    *(v45 + 4) = v79;
    *(v45 + 5) = v46;
    *(v45 + 6) = v81;
    v47 = v76;
    *v45 = v75;
    *(v45 + 1) = v47;
    v48 = v78;
    *(v45 + 2) = v77;
    *(v45 + 3) = v48;
    v49 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    sub_1000110B8(v15, v18, &qword_100088CB0, &qword_100066150);
    v58 = &v18[*(v70 + 36)];
    *v58 = v49;
    *(v58 + 1) = v51;
    *(v58 + 2) = v53;
    *(v58 + 3) = v55;
    *(v58 + 4) = v57;
    v58[40] = 0;
    v41 = &qword_100088CB8;
    v42 = &qword_100066158;
    v59 = v18;
    v43 = v63;
    sub_1000110B8(v59, v63, &qword_100088CB8, &qword_100066158);
    sub_100010668(v43, v72, &qword_100088CB8, &qword_100066158);
    swift_storeEnumTagMultiPayload();
    sub_1000114E0();
    sub_100011624();
    v38 = v69;
  }

  else
  {
    v25 = [objc_opt_self() currentDevice];
    v26 = [v25 userInterfaceIdiom];

    if (v26 == 1)
    {
      v27 = 0x4028000000000000;
    }

    else
    {
      v27 = 0x4024000000000000;
    }

    *v5 = static HorizontalAlignment.center.getter();
    *(v5 + 1) = v27;
    v5[16] = 0;
    v28 = sub_1000047BC(&qword_100088CC8, &qword_100066168);
    sub_10000D350(v22, &v5[*(v28 + 44)]);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v29 = v66;
    sub_1000110B8(v5, v66, &qword_100088C88, &qword_100066128);
    v30 = (v29 + *(v64 + 36));
    v31 = v80;
    v30[4] = v79;
    v30[5] = v31;
    v30[6] = v81;
    v32 = v76;
    *v30 = v75;
    v30[1] = v32;
    v33 = v78;
    v30[2] = v77;
    v30[3] = v33;
    sub_1000047BC(&qword_100088CD0, &qword_100066170);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100065660;
    v35 = static Edge.Set.leading.getter();
    *(inited + 32) = v35;
    v36 = static Edge.Set.trailing.getter();
    *(inited + 33) = v36;
    v37 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v35)
    {
      v37 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v36)
    {
      v37 = Edge.Set.init(rawValue:)();
    }

    v38 = v69;
    v39 = v65;
    sub_1000110B8(v29, v65, &qword_100088C90, &qword_100066130);
    v40 = v39 + *(v73 + 36);
    *v40 = v37;
    *(v40 + 8) = 0u;
    *(v40 + 24) = 0u;
    *(v40 + 40) = 1;
    v41 = &qword_100088C98;
    v42 = &qword_100066138;
    v43 = v67;
    sub_1000110B8(v39, v67, &qword_100088C98, &qword_100066138);
    sub_100010668(v43, v72, &qword_100088C98, &qword_100066138);
    swift_storeEnumTagMultiPayload();
    sub_1000114E0();
    sub_100011624();
  }

  _ConditionalContent<>.init(storage:)();
  sub_100011C14(v43, v41, v42);
  sub_1000110B8(v38, v74, &qword_100088CC0, &qword_100066160);
}

uint64_t sub_10000C988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v89 = sub_1000047BC(&qword_100088D10, &qword_100066180);
  v3 = __chkstk_darwin(v89);
  v92 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v90 = v67 - v6;
  __chkstk_darwin(v5);
  v91 = v67 - v7;
  v84 = type metadata accessor for BorderedProminentButtonStyle();
  v94 = *(v84 - 8);
  __chkstk_darwin(v84);
  v74 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InstallMarketplaceButtons(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = v11;
  v13 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000047BC(&qword_100088D18, &qword_100066188);
  __chkstk_darwin(v14);
  v16 = v67 - v15;
  v85 = sub_1000047BC(&qword_100088D20, &qword_100066190);
  v17 = __chkstk_darwin(v85);
  v88 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v86 = v67 - v20;
  __chkstk_darwin(v19);
  v22 = v67 - v21;
  type metadata accessor for MainActor();
  v87 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v83 = type metadata accessor for InstallMarketplaceButtons;
  sub_10000F540(a1, v13, type metadata accessor for InstallMarketplaceButtons);
  v23 = v13;
  v77 = v13;
  v81 = *(v10 + 80);
  v24 = (v81 + 16) & ~v81;
  v82 = v12;
  v25 = swift_allocObject();
  v80 = type metadata accessor for InstallMarketplaceButtons;
  v26 = sub_10000F6C0(v23, v25 + v24, type metadata accessor for InstallMarketplaceButtons);
  __chkstk_darwin(v26);
  v79 = sub_1000047BC(&qword_100088D28, &qword_100066198);
  v78 = sub_100011A20();
  Button.init(action:label:)();
  v27 = &v16[*(v14 + 36)];
  v75 = type metadata accessor for RoundedRectangle();
  v28 = *(v75 + 20);
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  v72 = enum case for RoundedCornerStyle.continuous(_:);
  v71 = type metadata accessor for RoundedCornerStyle();
  v30 = *(v71 - 8);
  v70 = *(v30 + 104);
  v73 = v30 + 104;
  v70(&v27[v28], v29, v71);
  __asm { FMOV            V0.2D, #8.0 }

  v69 = _Q0;
  *v27 = _Q0;
  v68 = sub_1000047BC(&qword_100088D48, &qword_1000661A8);
  *&v27[*(v68 + 36)] = 256;
  v36 = v74;
  BorderedProminentButtonStyle.init()();
  v67[2] = sub_100011B30();
  v67[1] = sub_10000F4F8(&qword_100088D70, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v37 = v84;
  View.buttonStyle<A>(_:)();
  v38 = v22;
  v39 = *(v94 + 8);
  v94 += 8;
  v67[0] = v39;
  v39(v36, v37);
  sub_100011C14(v16, &qword_100088D18, &qword_100066188);
  static Color.gray.getter();
  v40 = Color.opacity(_:)();

  KeyPath = swift_getKeyPath();
  v42 = sub_1000047BC(&qword_100088D78, &qword_1000661E8);
  v43 = *(v42 + 36);
  v76 = v38;
  v44 = (v38 + v43);
  *v44 = KeyPath;
  v44[1] = v40;
  v45 = static Color.blue.getter();
  v46 = v85;
  *(v38 + *(v85 + 36)) = v45;
  v47 = v77;
  sub_10000F540(a1, v77, v83);
  v48 = swift_allocObject();
  v49 = sub_10000F6C0(v47, v48 + v24, v80);
  __chkstk_darwin(v49);
  Button.init(action:label:)();
  v50 = &v16[*(v14 + 36)];
  v70(&v50[*(v75 + 20)], v72, v71);
  *v50 = v69;
  *&v50[*(v68 + 36)] = 256;
  BorderedProminentButtonStyle.init()();
  v51 = v86;
  View.buttonStyle<A>(_:)();
  (v67[0])(v36, v37);
  sub_100011C14(v16, &qword_100088D18, &qword_100066188);
  v52 = static Color.blue.getter();
  v53 = swift_getKeyPath();
  v54 = (v51 + *(v42 + 36));
  *v54 = v53;
  v54[1] = v52;
  *(v51 + *(v46 + 36)) = static Color.white.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v55 = v90;
  sub_1000110B8(v51, v90, &qword_100088D20, &qword_100066190);
  v56 = (v55 + *(v89 + 36));
  v57 = v100;
  v56[4] = v99;
  v56[5] = v57;
  v56[6] = v101;
  v58 = v96;
  *v56 = v95;
  v56[1] = v58;
  v59 = v98;
  v56[2] = v97;
  v56[3] = v59;
  v60 = v91;
  sub_1000110B8(v55, v91, &qword_100088D10, &qword_100066180);
  v61 = v76;
  v62 = v88;
  sub_100010668(v76, v88, &qword_100088D20, &qword_100066190);
  v63 = v92;
  sub_100010668(v60, v92, &qword_100088D10, &qword_100066180);
  v64 = v93;
  sub_100010668(v62, v93, &qword_100088D20, &qword_100066190);
  v65 = sub_1000047BC(&qword_100088D80, &qword_1000661F0);
  sub_100010668(v63, v64 + *(v65 + 48), &qword_100088D10, &qword_100066180);
  sub_100011C14(v60, &qword_100088D10, &qword_100066180);
  sub_100011C14(v61, &qword_100088D20, &qword_100066190);
  sub_100011C14(v63, &qword_100088D10, &qword_100066180);
  sub_100011C14(v62, &qword_100088D20, &qword_100066190);
}

uint64_t sub_10000D350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v116 = type metadata accessor for PlainButtonStyle();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1000047BC(&qword_100088D88, &qword_100066208);
  __chkstk_darwin(v114);
  v119 = &v86 - v4;
  v117 = sub_1000047BC(&qword_100088D90, &qword_100066210);
  v5 = __chkstk_darwin(v117);
  v121 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v118 = &v86 - v8;
  __chkstk_darwin(v7);
  v120 = &v86 - v9;
  v106 = type metadata accessor for BorderedProminentButtonStyle();
  v102 = *(v106 - 8);
  __chkstk_darwin(v106);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InstallMarketplaceButtons(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v15 = v14;
  v16 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1000047BC(&qword_100088D18, &qword_100066188);
  __chkstk_darwin(v109);
  v18 = &v86 - v17;
  v94 = sub_1000047BC(&qword_100088D20, &qword_100066190);
  __chkstk_darwin(v94);
  v20 = &v86 - v19;
  v105 = sub_1000047BC(&qword_100088D98, &qword_100066218);
  __chkstk_darwin(v105);
  v108 = &v86 - v21;
  v107 = sub_1000047BC(&qword_100088DA0, &qword_100066220);
  v22 = __chkstk_darwin(v107);
  v112 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v96 = &v86 - v25;
  __chkstk_darwin(v24);
  v110 = &v86 - v26;
  type metadata accessor for MainActor();
  v111 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v104 = type metadata accessor for InstallMarketplaceButtons;
  v27 = a1;
  sub_10000F540(a1, v16, type metadata accessor for InstallMarketplaceButtons);
  v28 = *(v13 + 80);
  v98 = v16;
  v103 = v15;
  v95 = (v28 + 16) & ~v28;
  v29 = swift_allocObject();
  v101 = type metadata accessor for InstallMarketplaceButtons;
  v30 = sub_10000F6C0(v16, v29 + ((v28 + 16) & ~v28), type metadata accessor for InstallMarketplaceButtons);
  v93 = v27;
  __chkstk_darwin(v30);
  v100 = sub_1000047BC(&qword_100088D28, &qword_100066198);
  v99 = sub_100011A20();
  Button.init(action:label:)();
  v31 = v109;
  v32 = &v18[*(v109 + 36)];
  v97 = type metadata accessor for RoundedRectangle();
  v33 = *(v97 + 20);
  v34 = enum case for RoundedCornerStyle.continuous(_:);
  v91 = enum case for RoundedCornerStyle.continuous(_:);
  v90 = type metadata accessor for RoundedCornerStyle();
  v35 = *(v90 - 8);
  v89 = *(v35 + 104);
  v92 = v35 + 104;
  v89(&v32[v33], v34, v90);
  __asm { FMOV            V0.2D, #8.0 }

  v88 = _Q0;
  *v32 = _Q0;
  v87 = sub_1000047BC(&qword_100088D48, &qword_1000661A8);
  *&v32[*(v87 + 36)] = 256;
  BorderedProminentButtonStyle.init()();
  v86 = sub_100011B30();
  sub_10000F4F8(&qword_100088D70, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v41 = v106;
  View.buttonStyle<A>(_:)();
  (*(v102 + 8))(v11, v41);
  sub_100011C14(v18, &qword_100088D18, &qword_100066188);
  v42 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  v44 = &v20[*(sub_1000047BC(&qword_100088D78, &qword_1000661E8) + 36)];
  *v44 = KeyPath;
  v44[1] = v42;
  *&v20[*(v94 + 36)] = static Color.white.getter();
  LOBYTE(KeyPath) = static Edge.Set.top.getter();
  v45 = objc_opt_self();
  v46 = [v45 currentDevice];
  [v46 userInterfaceIdiom];

  EdgeInsets.init(_all:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v20;
  v56 = v108;
  sub_1000110B8(v55, v108, &qword_100088D20, &qword_100066190);
  v57 = v56 + *(v105 + 36);
  *v57 = KeyPath;
  *(v57 + 8) = v48;
  *(v57 + 16) = v50;
  *(v57 + 24) = v52;
  *(v57 + 32) = v54;
  *(v57 + 40) = 0;
  v58 = [v45 currentDevice];
  [v58 userInterfaceIdiom];

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v59 = v96;
  sub_1000110B8(v56, v96, &qword_100088D98, &qword_100066218);
  v60 = (v59 + *(v107 + 36));
  v61 = v128;
  v60[4] = v127;
  v60[5] = v61;
  v60[6] = v129;
  v62 = v124;
  *v60 = v123;
  v60[1] = v62;
  v63 = v126;
  v60[2] = v125;
  v60[3] = v63;
  v64 = v110;
  sub_1000110B8(v59, v110, &qword_100088DA0, &qword_100066220);
  v65 = v98;
  sub_10000F540(v93, v98, v104);
  v66 = v95;
  v67 = swift_allocObject();
  v68 = sub_10000F6C0(v65, v67 + v66, v101);
  __chkstk_darwin(v68);
  Button.init(action:label:)();
  v69 = &v18[*(v31 + 36)];
  v89(&v69[*(v97 + 20)], v91, v90);
  *v69 = v88;
  *&v69[*(v87 + 36)] = 256;
  v70 = v113;
  PlainButtonStyle.init()();
  sub_10000F4F8(&qword_100088DA8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v71 = v119;
  v72 = v116;
  View.buttonStyle<A>(_:)();
  (*(v115 + 8))(v70, v72);
  sub_100011C14(v18, &qword_100088D18, &qword_100066188);
  *&v71[*(v114 + 36)] = static Color.blue.getter();
  v73 = [v45 currentDevice];
  [v73 userInterfaceIdiom];

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v74 = v71;
  v75 = v118;
  sub_1000110B8(v74, v118, &qword_100088D88, &qword_100066208);
  v76 = (v75 + *(v117 + 36));
  v77 = v135;
  v76[4] = v134;
  v76[5] = v77;
  v76[6] = v136;
  v78 = v131;
  *v76 = v130;
  v76[1] = v78;
  v79 = v133;
  v76[2] = v132;
  v76[3] = v79;
  v80 = v120;
  sub_1000110B8(v75, v120, &qword_100088D90, &qword_100066210);
  v81 = v112;
  sub_100010668(v64, v112, &qword_100088DA0, &qword_100066220);
  v82 = v121;
  sub_100010668(v80, v121, &qword_100088D90, &qword_100066210);
  v83 = v122;
  sub_100010668(v81, v122, &qword_100088DA0, &qword_100066220);
  v84 = sub_1000047BC(&qword_100088DB0, &qword_100066228);
  sub_100010668(v82, v83 + *(v84 + 48), &qword_100088D90, &qword_100066210);
  sub_100011C14(v80, &qword_100088D90, &qword_100066210);
  sub_100011C14(v64, &qword_100088DA0, &qword_100066220);
  sub_100011C14(v82, &qword_100088D90, &qword_100066210);
  sub_100011C14(v81, &qword_100088DA0, &qword_100066220);
}

__n128 sub_10000E114@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = *(a1 + *(type metadata accessor for InstallMarketplaceButtons(0) + 24) + 32);
  sub_10000F728();

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  v10 = Text.bold()();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_10000F77C(v5, v7, v9 & 1);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();

  *(a3 + 32) = v25;
  *(a3 + 48) = v26;
  result = v27;
  *(a3 + 128) = v21;
  *(a3 + 144) = v22;
  *(a3 + 160) = v23;
  *(a3 + 176) = v24;
  *(a3 + 64) = v27;
  *(a3 + 80) = v18;
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v14 & 1;
  *(a3 + 24) = v16;
  *(a3 + 96) = v19;
  *(a3 + 112) = v20;
  return result;
}

uint64_t sub_10000E2FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v16 = a5;
  v6 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for InstallMarketplaceButtons(0);
  type metadata accessor for InstallSheetConfirmationViewModel(0);
  sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel, &unk_100065CC0);
  StateObject.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = Strong;
    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = &protocol witness table for MainActor;
    *(v13 + 32) = v11;
    *(v13 + 40) = a4;
    sub_100007654(0, 0, v8, v16, v13);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

__n128 sub_10000E564@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = *(a1 + *(type metadata accessor for InstallMarketplaceButtons(0) + 24) + 48);
  sub_10000F728();

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  v10 = Text.bold()();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_10000F77C(v5, v7, v9 & 1);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();

  *(a3 + 32) = v25;
  *(a3 + 48) = v26;
  result = v27;
  *(a3 + 128) = v21;
  *(a3 + 144) = v22;
  *(a3 + 160) = v23;
  *(a3 + 176) = v24;
  *(a3 + 64) = v27;
  *(a3 + 80) = v18;
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v14 & 1;
  *(a3 + 24) = v16;
  *(a3 + 96) = v19;
  *(a3 + 112) = v20;
  return result;
}

double sub_10000E74C()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  sub_10000B580(&v12 - v5);
  (*(v1 + 104))(v4, enum case for DynamicTypeSize.large(_:), v0);
  sub_10000F4F8(&qword_100088A58, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v7 = dispatch thunk of static Comparable.> infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  result = 0.0;
  if ((v7 & 1) == 0)
  {
    v10 = [objc_opt_self() currentDevice];
    v11 = [v10 userInterfaceIdiom];

    result = 88.0;
    if (v11 != 1)
    {
      return 20.0;
    }
  }

  return result;
}

uint64_t sub_10000E914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a2;
  v19 = a1;
  v4 = type metadata accessor for GeometryProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InstallMarketplaceButtons(0);
  v17 = *(v8 - 8);
  v9 = *(v17 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = static Color.clear.getter();
  sub_10000F540(v18, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InstallMarketplaceButtons);
  (*(v5 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v4);
  v12 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v13 = (v9 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_10000F6C0(v10, v14 + v12, type metadata accessor for InstallMarketplaceButtons);
  (*(v5 + 32))(v14 + v13, v7, v4);

  *a3 = v11;
  a3[1] = sub_100011414;
  a3[2] = v14;
  a3[3] = 0;
  a3[4] = 0;
  return result;
}

uint64_t sub_10000EB84(uint64_t a1)
{
  v1 = type metadata accessor for GlobalCoordinateSpace();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for InstallMarketplaceButtons(0);
  type metadata accessor for InstallSheetConfirmationViewModel(0);
  sub_10000F4F8(&unk_100088980, type metadata accessor for InstallSheetConfirmationViewModel, &unk_100065CC0);
  StateObject.wrappedValue.getter();
  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  (*(v2 + 8))(v4, v1);
  swift_getKeyPath();
  swift_getKeyPath();
  v14[0] = v6;
  v14[1] = v8;
  v14[2] = v10;
  v14[3] = v12;
  static Published.subscript.setter();
}

uint64_t sub_10000EDE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000121F4;

  return sub_10005CCA8(a1, v4, v5, v6);
}

double sub_10000EE94@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_10000EF14(_OWORD *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10000EFA0@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v6;
  return result;
}

uint64_t sub_10000F030(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10000F0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_10000F1C0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000F2B8;

  return v6(a1);
}

uint64_t sub_10000F2B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000F3B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F3E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000121F4;

  return sub_10000F1C0(a1, v4);
}

uint64_t sub_10000F4C0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F4F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000F540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000F614(uint64_t a1)
{
  v2 = type metadata accessor for InstallMarketplaceButtons(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F6C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10000F728()
{
  result = qword_100088B10;
  if (!qword_100088B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088B10);
  }

  return result;
}

uint64_t sub_10000F77C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000F78C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000F858(v11, 0, 0, 1, a1, a2);
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
    sub_100010538(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10001059C(v11);
  return v7;
}

unint64_t sub_10000F858(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000F964(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_10000F964(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000F9B0(a1, a2);
  sub_10000FAE0(&off_10007E3B0);
  return v3;
}

char *sub_10000F9B0(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000FBCC(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000FBCC(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_10000FAE0(uint64_t result)
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

  result = sub_10000FC40(result, v11, 1, v3);
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

void *sub_10000FBCC(uint64_t a1, uint64_t a2)
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

  sub_1000047BC(&qword_100088B68, &qword_100065F88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000FC40(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000047BC(&qword_100088B68, &qword_100065F88);
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

uint64_t sub_10000FD34@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000FDEC()
{
  v1 = type metadata accessor for InstallSheetConfirmationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_1000047BC(&qword_100089E40, &qword_100065D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + *(v1 + 20);

  v8 = *(type metadata accessor for LocalizedInstallSheetContent(0) + 72);
  v9 = type metadata accessor for InstallSheetContext();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  sub_10000B9E0(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000FFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InstallSheetConfirmationView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100006AE0(a1, v6, a2);
}

uint64_t sub_100010058()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001011C(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001020C;

  return sub_100006EE0(a1, v6, v7, v1 + v5);
}

uint64_t sub_10001020C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100010300()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000103CC(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000121F4;

  return sub_10005C298(a1, v6, v7, v8, v1 + v5);
}

uint64_t *sub_1000104C4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100010538(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001059C(void *a1)
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

uint64_t sub_1000105E8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_100010624(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100010668(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000047BC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000106D0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1000107C4;

  return v5(v2 + 32);
}

uint64_t sub_1000107C4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000108D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000121F4;

  return sub_1000106D0(a1, v4);
}

uint64_t sub_100010990(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001020C;

  return sub_1000106D0(a1, v4);
}

uint64_t sub_100010A48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000121F4;

  return sub_10005C83C(a1, v4, v5, v6);
}

uint64_t sub_100010B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000047BC(&qword_100088900, &unk_1000667B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for LocalizedInstallSheetContent(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100010CD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000047BC(&qword_100088900, &unk_1000667B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  else
  {
    v11 = type metadata accessor for LocalizedInstallSheetContent(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100010E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  sub_100005E90(319, &qword_100088970, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
  if (v7 <= 0x3F)
  {
    a4(319);
    if (v8 <= 0x3F)
    {
      a5(319);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100010F14()
{
  result = qword_100088C40;
  if (!qword_100088C40)
  {
    sub_10000B850(&qword_100088A40, &qword_100065D58);
    sub_100010FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088C40);
  }

  return result;
}

unint64_t sub_100010FA0()
{
  result = qword_100088C48;
  if (!qword_100088C48)
  {
    sub_10000B850(&qword_1000889C8, &qword_100065D08);
    sub_10000B850(&qword_1000889B8, &qword_100065CF8);
    sub_100012174(&qword_100088A38, &qword_1000889B8, &qword_100065CF8, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088C48);
  }

  return result;
}

uint64_t sub_1000110B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000047BC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100011124@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for InstallMarketplaceButtons(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000E914(a1, v6, a2);
}

uint64_t sub_1000111A4()
{
  v1 = type metadata accessor for InstallMarketplaceButtons(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v0 + v3;
  sub_1000047BC(&qword_100089E40, &qword_100065D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DynamicTypeSize();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
  }

  else
  {
  }

  v11 = (v3 + v4 + v7) & ~v7;
  sub_10000B9E0(*(v9 + *(v1 + 20)), *(v9 + *(v1 + 20) + 8));
  v12 = v9 + *(v1 + 24);

  v13 = *(type metadata accessor for LocalizedInstallSheetContent(0) + 72);
  v14 = type metadata accessor for InstallSheetContext();
  (*(*(v14 - 8) + 8))(v12 + v13, v14);
  (*(v6 + 8))(v0 + v11, v5);

  return _swift_deallocObject(v0, v11 + v8, v2 | v7 | 7);
}

uint64_t sub_100011414()
{
  v1 = *(type metadata accessor for InstallMarketplaceButtons(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for GeometryProxy();

  return sub_10000EB84(v0 + v2);
}

unint64_t sub_1000114E0()
{
  result = qword_100088CD8;
  if (!qword_100088CD8)
  {
    sub_10000B850(&qword_100088CB8, &qword_100066158);
    sub_10001156C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088CD8);
  }

  return result;
}

unint64_t sub_10001156C()
{
  result = qword_100088CE0;
  if (!qword_100088CE0)
  {
    sub_10000B850(&qword_100088CB0, &qword_100066150);
    sub_100012174(&qword_100088CE8, &qword_100088CA8, &qword_100066148, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088CE0);
  }

  return result;
}

unint64_t sub_100011624()
{
  result = qword_100088CF0;
  if (!qword_100088CF0)
  {
    sub_10000B850(&qword_100088C98, &qword_100066138);
    sub_1000116B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088CF0);
  }

  return result;
}

unint64_t sub_1000116B0()
{
  result = qword_100088CF8;
  if (!qword_100088CF8)
  {
    sub_10000B850(&qword_100088C90, &qword_100066130);
    sub_100012174(&qword_100088D00, &qword_100088C88, &qword_100066128, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088CF8);
  }

  return result;
}

uint64_t sub_100011768()
{
  v1 = type metadata accessor for InstallMarketplaceButtons(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_1000047BC(&qword_100089E40, &qword_100065D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_10000B9E0(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));
  v7 = v5 + *(v1 + 24);

  v8 = *(type metadata accessor for LocalizedInstallSheetContent(0) + 72);
  v9 = type metadata accessor for InstallSheetContext();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_100011A20()
{
  result = qword_100088D30;
  if (!qword_100088D30)
  {
    sub_10000B850(&qword_100088D28, &qword_100066198);
    sub_100011AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088D30);
  }

  return result;
}

unint64_t sub_100011AAC()
{
  result = qword_100088D38;
  if (!qword_100088D38)
  {
    sub_10000B850(&qword_100088D40, &qword_1000661A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088D38);
  }

  return result;
}

unint64_t sub_100011B30()
{
  result = qword_100088D50;
  if (!qword_100088D50)
  {
    sub_10000B850(&qword_100088D18, &qword_100066188);
    sub_100012174(&qword_100088D58, &qword_100088D60, &qword_1000661B0, &protocol conformance descriptor for Button<A>);
    sub_100012174(&qword_100088D68, &qword_100088D48, &qword_1000661A8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088D50);
  }

  return result;
}

uint64_t sub_100011C14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000047BC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100011C74@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100011D1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000121F4;

  return sub_10005B180(a1, v4, v5, v6, v7);
}

uint64_t sub_100011E70(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

unint64_t sub_100011EC0()
{
  result = qword_100088DB8;
  if (!qword_100088DB8)
  {
    sub_10000B850(&qword_100088C80, &qword_100066120);
    sub_100011F78();
    sub_100012174(&qword_100088DF0, &qword_100088DF8, &qword_100066248, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088DB8);
  }

  return result;
}

unint64_t sub_100011F78()
{
  result = qword_100088DC0;
  if (!qword_100088DC0)
  {
    sub_10000B850(&qword_100088C68, &qword_100066108);
    sub_100012030();
    sub_100012174(&qword_100088DE8, &qword_100088C78, &qword_100066118, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088DC0);
  }

  return result;
}

unint64_t sub_100012030()
{
  result = qword_100088DC8;
  if (!qword_100088DC8)
  {
    sub_10000B850(&qword_100088C60, &qword_100066100);
    sub_1000120BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088DC8);
  }

  return result;
}

unint64_t sub_1000120BC()
{
  result = qword_100088DD0;
  if (!qword_100088DD0)
  {
    sub_10000B850(&qword_100088C58, &qword_1000660F8);
    sub_100012174(&qword_100088DD8, &qword_100088DE0, &qword_100066240, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088DD0);
  }

  return result;
}

uint64_t sub_100012174(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000B850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000123B8(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for LicenseResolutionViewController(0);
  objc_msgSendSuper2(&v11, "viewWillAppear:", a1 & 1);
  v3 = [objc_opt_self() blackColor];
  v4 = [v3 colorWithAlphaComponent:0.8];

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v4;
  v10[4] = sub_100013750;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10005F9E8;
  v10[3] = &unk_10007ECA8;
  v7 = _Block_copy(v10);
  v8 = v1;
  v9 = v4;

  [v5 animateWithDuration:v7 animations:0.3];
  _Block_release(v7);
}

void sub_100012544(char a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LicenseResolutionViewController(0);
  v43.receiver = v1;
  v43.super_class = v7;
  objc_msgSendSuper2(&v43, "viewDidAppear:", a1 & 1);
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000105E8(v8, qword_10008C4C0);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v12 = 136446467;
    v13 = LicenseResolutionContext.logKey.getter();
    v15 = sub_10000F78C(v13, v14, aBlock);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2085;
    LicenseResolutionContext.url.getter();
    sub_1000136EC();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v4 + 8))(v6, v3);
    v19 = sub_10000F78C(v16, v18, aBlock);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] Activating license resolution sheet: %{sensitive}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  LicenseResolutionContext.url.getter();
  v20 = objc_allocWithZone(SFSafariViewController);
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  v24 = [v20 initWithURL:v22];

  (*(v4 + 8))(v6, v3);
  v25 = v24;
  [v25 setModalPresentationStyle:2];
  [v25 setDelegate:v9];
  v26 = [v25 presentationController];

  if (v26)
  {
    [v26 setDelegate:v9];
  }

  v27 = [v9 view];
  if (!v27)
  {
    __break(1u);
    goto LABEL_15;
  }

  v28 = v27;
  v29 = [v27 window];

  if (v29)
  {
    v30 = [v29 _rootSheetPresentationController];

    if (v30)
    {
      [v30 _setShouldScaleDownBehindDescendantSheets:0];

      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
    return;
  }

LABEL_11:
  v31 = [objc_opt_self() blackColor];
  v32 = v31;
  v33 = 0.8;
  if (*(v9 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_isIPad))
  {
    v33 = 0.4;
  }

  v34 = [v31 colorWithAlphaComponent:v33];

  v35 = objc_opt_self();
  v36 = swift_allocObject();
  *(v36 + 16) = v9;
  *(v36 + 24) = v34;
  aBlock[4] = sub_100013750;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10005F9E8;
  aBlock[3] = &unk_10007EC58;
  v37 = _Block_copy(aBlock);
  v38 = v9;
  v39 = v34;

  [v35 animateWithDuration:v37 animations:0.3];
  _Block_release(v37);

  [v38 presentViewController:v25 animated:1 completion:0];
}

void sub_100012A8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a3);
}

void sub_100012B6C(void *a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    [v4 setBackgroundColor:a2];
  }

  else
  {
    __break(1u);
  }
}

void sub_100012C50()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4C0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136446210;
    v7 = LicenseResolutionContext.logKey.getter();
    v9 = sub_10000F78C(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] Completing license resolution request", v5, 0xCu);
    sub_10001059C(v6);
  }

  v10 = [objc_opt_self() clearColor];
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v10;
  v23 = sub_10001363C;
  v24 = v12;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10005F9E8;
  v22 = &unk_10007EBB8;
  v13 = _Block_copy(&v19);
  v14 = v2;
  v15 = v10;

  [v11 animateWithDuration:v13 animations:0.3];
  _Block_release(v13);

  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v23 = sub_100013694;
  v24 = v16;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10005F9E8;
  v22 = &unk_10007EC08;
  v17 = _Block_copy(&v19);
  v18 = v14;

  [v18 dismissViewControllerAnimated:1 completion:v17];
  _Block_release(v17);
}

uint64_t sub_100012F50(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_dismissAction);
  v3 = *(a1 + OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_dismissAction);
  if (v3)
  {
    v4 = v2[1];

    v3(v5);
    sub_10001369C(v3, v4);
    v6 = *v2;
  }

  else
  {
    v6 = 0;
  }

  v7 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  sub_10001369C(v6, v7);
}

id sub_1000130C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LicenseResolutionViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LicenseResolutionViewController(uint64_t a1)
{
  result = qword_100088E40;
  if (!qword_100088E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000131CC(uint64_t a1)
{
  result = type metadata accessor for LicenseResolutionContext();
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

uint64_t sub_100013290()
{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100013324, v2, v1);
}

uint64_t sub_100013324()
{

  sub_100012C50();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100013548()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013588(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001020C;

  return sub_100013270(a1, v4, v5, v6);
}

uint64_t sub_100013644(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001365C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001369C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000136AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000136EC()
{
  result = qword_100089F70;
  if (!qword_100089F70)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089F70);
  }

  return result;
}

uint64_t sub_100013788()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  sub_1000105E8(v2, qword_10008C4C0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = *(v6 + OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_logKey);
    *(v7 + 4) = v9;
    *v8 = v9;
    v10 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Running OAuth web authentication task", v7, 0xCu);
    sub_100011C14(v8, &qword_100088FD0, &qword_1000673F0);
  }

  v11 = [objc_opt_self() identityOfCurrentProcess];
  *(v0 + 32) = v11;
  if (v11)
  {
    v12 = v11;
    v13 = *(v0 + 24);
    v14 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v15 = v12;
    v16 = String._bridgeToObjectiveC()();
    v17 = [v14 initWithSceneProvidingProcess:v15 configurationIdentifier:v16];
    *(v0 + 40) = v17;

    v18 = swift_task_alloc();
    *(v0 + 48) = v18;
    *(v18 + 16) = v13;
    *(v18 + 24) = v17;
    v19 = swift_task_alloc();
    *(v0 + 56) = v19;
    v20 = sub_1000047BC(&qword_100088FD8, &qword_100066380);
    *v19 = v0;
    v19[1] = sub_100013B58;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x29286E7572, 0xE500000000000000, sub_1000157C4, v18, v20);
  }

  else
  {
    v21 = *(v0 + 24);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 24);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = *(v24 + OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_logKey);
      *(v25 + 4) = v27;
      *v26 = v27;
      v28 = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%@] No identity", v25, 0xCu);
      sub_100011C14(v26, &qword_100088FD0, &qword_1000673F0);
    }

    v29 = sub_100059874(&_swiftEmptyArrayStorage);
    v30 = *(v0 + 8);

    return v30(v29);
  }
}

uint64_t sub_100013B58()
{

  return _swift_task_switch(sub_100013C70, 0, 0);
}

uint64_t sub_100013C70()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

void sub_100013CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000047BC(&unk_100088FE0, &qword_100066388);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30[-v8];
  v10 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v7 + 32))(v13 + v12, v9, v6);
  v35 = sub_1000158D4;
  v36 = v13;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100043F50;
  v34 = &unk_10007ED20;
  v14 = _Block_copy(&aBlock);
  v15 = objc_opt_self();

  v16 = [v15 responderWithHandler:v14];
  _Block_release(v14);

  v17 = [objc_allocWithZone(BSAction) initWithInfo:0 responder:v16];
  sub_1000047BC(&qword_10008A4A0, &unk_100066390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100066310;
  *(inited + 32) = v17;
  v19 = v17;
  sub_10004DA58(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_10001596C();
  sub_1000159B8(&qword_100089370, sub_10001596C, &protocol conformance descriptor for NSObject);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v10 setActions:isa];

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for OAuthAuthorizationContext();
  sub_1000159B8(&unk_100089000, &type metadata accessor for OAuthAuthorizationContext, &protocol conformance descriptor for OAuthAuthorizationContext);
  v21 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v23 = v22;

  sub_1000047BC(&unk_10008A4B0, &unk_1000676F0);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_100065650;
  aBlock = 0x44747865746E6F63;
  v32 = 0xEB00000000617461;
  AnyHashable.init<A>(_:)();
  *(v24 + 96) = &type metadata for Data;
  *(v24 + 72) = v21;
  *(v24 + 80) = v23;
  sub_100015A00(v21, v23);
  sub_100059988(v24);
  swift_setDeallocating();
  sub_100011C14(v24 + 32, &qword_100089010, &qword_1000663A0);
  v25 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v10 setUserInfo:v25];

  v26 = [objc_opt_self() newHandleWithDefinition:a3 configurationContext:v10];
  v27 = *(a2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_remoteHandle);
  *(a2 + OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_remoteHandle) = v26;
  v28 = v26;

  [v28 registerObserver:a2];
  v29 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [v28 activateWithContext:v29];

  sub_100015A54(v21, v23);
}

void sub_10001438C(void *a1, uint64_t a2, uint64_t a3)
{
  v65 = type metadata accessor for URLQueryItem();
  v5 = *(v65 - 8);
  __chkstk_darwin(v65);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000047BC(&qword_100089018, &qword_1000663A8);
  __chkstk_darwin(v8 - 8);
  v10 = &v55 - v9;
  v11 = type metadata accessor for URLComponents();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  v17 = [a1 info];
  if (!v17)
  {
    v68 = 0u;
    v69 = 0u;
LABEL_11:
    v22 = &qword_100089020;
    v23 = &qword_1000663B0;
    v24 = &v68;
    goto LABEL_12;
  }

  v18 = v5;
  v60 = v14;
  v19 = v17;
  v20 = [v17 objectForSetting:2];

  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
  }

  v68 = v66;
  v69 = v67;
  if (!*(&v67 + 1))
  {
    goto LABEL_11;
  }

  v21 = v18;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000105E8(v25, qword_10008C4C0);
    v26 = v16;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = *&v26[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_logKey];
      *(v29 + 4) = v31;
      *v30 = v31;
      v32 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "[%@] No response provided, defaulting to cancel.", v29, 0xCu);
      sub_100011C14(v30, &qword_100088FD0, &qword_1000673F0);
    }

    *&v68 = sub_100059874(&_swiftEmptyArrayStorage);
    sub_1000047BC(&unk_100088FE0, &qword_100066388);
    CheckedContinuation.resume(returning:)();

    return;
  }

  URLComponents.init(string:)();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v22 = &qword_100089018;
    v23 = &qword_1000663A8;
    v24 = v10;
LABEL_12:
    sub_100011C14(v24, v22, v23);
    goto LABEL_13;
  }

  v33 = v60;
  (*(v12 + 32))(v60, v10, v11);
  v34 = URLComponents.queryItems.getter();
  if (!v34)
  {
    (*(v12 + 8))(v33, v11);
    goto LABEL_13;
  }

  v56 = v12;
  v57 = v11;
  v58 = v16;
  v59 = a3;
  v35 = *(v34 + 16);
  v55 = v34;
  if (v35)
  {
    v37 = *(v21 + 16);
    v36 = v21 + 16;
    v38 = v34 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v63 = *(v36 + 56);
    v64 = v37;
    v62 = (v36 - 8);
    v39 = &_swiftEmptyArrayStorage;
    v40 = v65;
    v61 = v36;
    v37(v7, v38, v65);
    while (1)
    {
      v41 = URLQueryItem.value.getter();
      if (v42)
      {
        v43 = v41;
        v44 = v42;
        v45 = URLQueryItem.name.getter();
        v47 = v46;
        (*v62)(v7, v40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_100014DB4(0, v39[2] + 1, 1, v39);
        }

        v49 = v39[2];
        v48 = v39[3];
        if (v49 >= v48 >> 1)
        {
          v39 = sub_100014DB4((v48 > 1), v49 + 1, 1, v39);
        }

        v39[2] = v49 + 1;
        v50 = &v39[4 * v49];
        v50[4] = v45;
        v50[5] = v47;
        v50[6] = v43;
        v50[7] = v44;
        v40 = v65;
      }

      else
      {
        (*v62)(v7, v40);
      }

      v38 += v63;
      if (!--v35)
      {
        break;
      }

      v64(v7, v38, v40);
    }
  }

  else
  {
    v39 = &_swiftEmptyArrayStorage;
  }

  if (v39[2])
  {
    sub_1000047BC(&qword_100089028, &qword_1000663B8);
    v51 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v51 = &_swiftEmptyDictionarySingleton;
  }

  v52 = v58;
  v53 = v57;
  v54 = v56;
  *&v68 = v51;
  sub_100014EE8(v39, 1, &v68);

  sub_1000047BC(&unk_100088FE0, &qword_100066388);
  CheckedContinuation.resume(returning:)();

  (*(v54 + 8))(v60, v53);
}

id sub_100014A60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OAuthAuthorizationTask(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for OAuthAuthorizationTask(uint64_t a1)
{
  result = qword_100088F60;
  if (!qword_100088F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100014B78(uint64_t a1)
{
  result = type metadata accessor for OAuthAuthorizationContext();
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

void sub_100014C80()
{
  v1 = OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_remoteHandle;
  v2 = *(v0 + OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_remoteHandle);
  if (v2)
  {
    [v2 unregisterObserver:v0];
    v2 = *(v0 + v1);
  }

  [v2 invalidate];
  v3 = *(v0 + v1);
  *(v0 + v1) = 0;
}

void *sub_100014DB4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000047BC(&qword_100089030, &qword_1000656D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000047BC(&qword_1000884D0, &qword_1000656D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100014EE8(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = a3;
    LOBYTE(v5) = a2;
    v6 = result;
    v8 = *(result + 32);
    v7 = *(result + 40);
    v9 = *(result + 56);
    v45 = *(result + 48);
    v10 = *a3;

    result = sub_100057E50(v8, v7);
    v12 = *(v10 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    LOBYTE(v16) = v11;
    v46 = v4;
    if (*(v10 + 24) < v15)
    {
      sub_10005877C(v15, v5 & 1);
      result = sub_100057E50(v8, v7);
      if ((v16 & 1) == (v17 & 1))
      {
        goto LABEL_7;
      }

LABEL_5:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if ((v5 & 1) == 0)
    {
      v24 = result;
      sub_1000582BC();
      result = v24;
      v18 = *v46;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

LABEL_7:
    v18 = *v4;
    if (v16)
    {
LABEL_8:
      v19 = 16 * result;
      v20 = (v18[7] + 16 * result);
      v22 = *v20;
      v21 = v20[1];

      v23 = (v18[7] + v19);
      *v23 = v22;
      v23[1] = v21;

LABEL_12:
      v16 = v3 - 1;
      v4 = v46;
      if (v3 == 1)
      {
        return result;
      }

      v5 = (v6 + 88);
      while (1)
      {
        v7 = *(v5 - 3);
        v9 = *(v5 - 2);
        v3 = *(v5 - 1);
        v6 = *v5;
        v34 = *v4;

        result = sub_100057E50(v7, v9);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v14 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v14)
        {
          goto LABEL_23;
        }

        v8 = v35;
        if (*(v34 + 24) < v38)
        {
          sub_10005877C(v38, 1);
          result = sub_100057E50(v7, v9);
          if ((v8 & 1) != (v39 & 1))
          {
            goto LABEL_5;
          }
        }

        v40 = *v4;
        if (v8)
        {
          v29 = 16 * result;
          v30 = (v40[7] + 16 * result);
          v32 = *v30;
          v31 = v30[1];

          v33 = (v40[7] + v29);
          *v33 = v32;
          v33[1] = v31;
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v7;
          v41[1] = v9;
          v42 = (v40[7] + 16 * result);
          *v42 = v3;
          v42[1] = v6;
          v43 = v40[2];
          v14 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v14)
          {
            goto LABEL_24;
          }

          v40[2] = v44;
        }

        v5 += 4;
        --v16;
        v4 = v46;
        if (!v16)
        {
          return result;
        }
      }
    }

LABEL_10:
    v18[(result >> 6) + 8] |= 1 << result;
    v25 = (v18[6] + 16 * result);
    *v25 = v8;
    v25[1] = v7;
    v26 = (v18[7] + 16 * result);
    *v26 = v45;
    v26[1] = v9;
    v27 = v18[2];
    v14 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v28;
    goto LABEL_12;
  }

  return result;
}

void sub_1000151C0()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4C0);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_logKey];
    *(v4 + 4) = v6;
    *v5 = v6;
    v7 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "[%@] Remote alert did activate", v4, 0xCu);
    sub_100011C14(v5, &qword_100088FD0, &qword_1000673F0);
  }
}

void sub_100015318()
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000105E8(v1, qword_10008C4C0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *&v2[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_logKey];
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Remote alert did deactivate", v5, 0xCu);
    sub_100011C14(v6, &qword_100088FD0, &qword_1000673F0);
  }

  sub_100014C80();
}

void sub_100015468(uint64_t a1)
{
  sub_100014C80();
  if (a1)
  {
    swift_errorRetain();
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000105E8(v3, qword_10008C4C0);
    swift_errorRetain();
    v4 = v1;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v6 = 138412546;
      v9 = *&v4[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_logKey];
      *(v6 + 4) = v9;
      *v7 = v9;
      *(v6 + 12) = 2082;
      swift_getErrorValue();
      v10 = v9;
      v11 = Error.localizedDescription.getter();
      v13 = sub_10000F78C(v11, v12, &v22);

      *(v6 + 14) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v5, "[%@] Remote alert did invalidate with error: %{public}s", v6, 0x16u);
      sub_100011C14(v7, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v8);

      return;
    }
  }

  else
  {
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000105E8(v14, qword_10008C4C0);
    v15 = v1;
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = *&v15[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OAuthAuthorizationTask_logKey];
      *(v17 + 4) = v19;
      *v18 = v19;
      v20 = v19;
      _os_log_impl(&_mh_execute_header, oslog, v16, "[%@] Remote alert did invalidate", v17, 0xCu);
      sub_100011C14(v18, &qword_100088FD0, &qword_1000673F0);
    }
  }
}

uint64_t sub_1000157CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015804()
{
  v1 = sub_1000047BC(&unk_100088FE0, &qword_100066388);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000158D4(void *a1)
{
  v3 = *(sub_1000047BC(&unk_100088FE0, &qword_100066388) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_10001438C(a1, v4, v5);
}

uint64_t sub_100015954(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10001596C()
{
  result = qword_100088FF0;
  if (!qword_100088FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100088FF0);
  }

  return result;
}

uint64_t sub_1000159B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100015A00(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100015A54(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100015AA8()
{
  v1 = [objc_allocWithZone(type metadata accessor for LaunchAngelService()) init];
  v2 = type metadata accessor for LaunchAngelServiceDelegate();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel26LaunchAngelServiceDelegate_service] = v1;
  v12.receiver = v3;
  v12.super_class = v2;
  v4 = objc_msgSendSuper2(&v12, "init");
  v10[2] = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100015DBC;
  *(v5 + 24) = v10;
  aBlock[4] = sub_100015DD4;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015D04;
  aBlock[3] = &unk_10007ED70;
  v6 = _Block_copy(aBlock);
  v7 = objc_opt_self();

  v8 = [v7 listenerWithConfigurator:v6];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v8;
    *(v0 + 24) = v4;
    return v0;
  }

  return result;
}

id sub_100015C44(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 setDomain:v4];

  v5 = String._bridgeToObjectiveC()();
  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

uint64_t sub_100015D04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_100015D58()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100015DFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100015E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InstallSheetContext();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100015F58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for InstallSheetContext();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for LocalizedCombinedApprovalAndInstallContent(uint64_t a1)
{
  result = qword_100089198;
  if (!qword_100089198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000160BC(uint64_t a1)
{
  type metadata accessor for InstallSheetContext();
  if (v1 <= 0x3F)
  {
    sub_100016184(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100016184(uint64_t a1)
{
  if (!qword_1000891A8)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000891A8);
    }
  }
}

__n128 sub_1000161E8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000161FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100016244(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000162A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[116] = a4;
  v4[115] = a3;
  v4[114] = a2;
  v4[113] = a1;
  v5 = type metadata accessor for InstallSheetContext.InstallType();
  v4[117] = v5;
  v4[118] = *(v5 - 8);
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();
  v4[121] = swift_task_alloc();

  return _swift_task_switch(sub_100016388, 0, 0);
}

uint64_t sub_100016388()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 904);
  v3 = type metadata accessor for InstallSheetContext();
  *(v0 + 976) = v3;
  v4 = *(v3 - 8);
  *(v0 + 984) = v4;
  (*(v4 + 16))(v2, v1, v3);
  v5 = type metadata accessor for LocalizedCombinedApprovalAndInstallContent(0);
  *(v0 + 992) = v5;
  InstallSheetContext.Source.WebInstallContext.iconURL.getter();
  v6 = InstallSheetContext.Source.WebInstallContext.appName.getter();
  v7 = (v2 + *(v5 + 24));
  *v7 = v6;
  v7[1] = v8;
  *(v0 + 16) = 9;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = 12;
  v9 = swift_task_alloc();
  *(v0 + 1000) = v9;
  *v9 = v0;
  v9[1] = sub_1000164CC;

  return sub_100049C9C(v0 + 16);
}

uint64_t sub_1000164CC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1008) = a1;
  *(v3 + 1016) = a2;

  return _swift_task_switch(sub_1000165D0, 0, 0);
}

uint64_t sub_1000165D0()
{
  v1 = *(v0 + 992);
  v2 = *(v0 + 968);
  v3 = *(v0 + 944);
  v4 = *(v0 + 936);
  v5 = *(v0 + 904);
  String.append(_:)(*(v0 + 1008));
  v6._countAndFlagsBits = 10333;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = InstallSheetContext.learnMoreURL.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  *(v0 + 1024) = 91;
  *(v0 + 1032) = 0xE100000000000000;
  v9 = (v5 + *(v1 + 52));
  *v9 = 91;
  v9[1] = 0xE100000000000000;
  InstallSheetContext.type.getter();
  v10 = (*(v3 + 88))(v2, v4);
  if (v10 == enum case for InstallSheetContext.InstallType.app(_:))
  {

    v11 = InstallSheetContext.Source.WebInstallContext.domain.getter();
    *(v0 + 1040) = v12;
    *(v0 + 336) = v11;
    *(v0 + 344) = v12;
    *(v0 + 352) = 0;
    *(v0 + 360) = 0;
    *(v0 + 368) = 5;
    v13 = swift_task_alloc();
    *(v0 + 1048) = v13;
    *v13 = v0;
    v13[1] = sub_100016864;
    v14 = v0 + 336;
  }

  else
  {
    if (v10 != enum case for InstallSheetContext.InstallType.marketplace(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v15 = InstallSheetContext.Source.WebInstallContext.developerName.getter();
    *(v0 + 1136) = v16;
    *(v0 + 56) = v15;
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    *(v0 + 64) = v16;
    *(v0 + 88) = 11;
    v17 = swift_task_alloc();
    *(v0 + 1144) = v17;
    *v17 = v0;
    v17[1] = sub_100017028;
    v14 = v0 + 56;
  }

  return sub_100049C9C(v14);
}

uint64_t sub_100016864(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1056) = a1;
  *(v3 + 1064) = a2;

  return _swift_task_switch(sub_100016988, 0, 0);
}

uint64_t sub_100016988(uint64_t a1)
{
  v2 = *(v1 + 1064);
  v3 = *(v1 + 1032);
  v4 = *(v1 + 1024);
  v5 = (*(v1 + 904) + *(*(v1 + 992) + 28));
  *v5 = *(v1 + 1056);
  v5[1] = v2;
  v6 = InstallSheetContext.Source.WebInstallContext.developerName.getter();
  *(v1 + 1072) = v7;
  *(v1 + 376) = v6;
  *(v1 + 384) = v7;
  *(v1 + 392) = v4;
  *(v1 + 400) = v3;
  *(v1 + 408) = 6;

  v8 = swift_task_alloc();
  *(v1 + 1080) = v8;
  *v8 = v1;
  v8[1] = sub_100016A74;

  return sub_100049C9C(v1 + 376);
}

uint64_t sub_100016A74(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1088) = a1;
  *(v3 + 1096) = a2;

  return _swift_task_switch(sub_100016BB4, 0, 0);
}

uint64_t sub_100016BB4()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 904) + *(*(v0 + 992) + 32);
  *v2 = *(v0 + 1088);
  *(v2 + 8) = v1;
  *(v2 + 16) = 0;
  *(v0 + 416) = 7;
  *(v0 + 424) = 0;
  *(v0 + 432) = 0;
  *(v0 + 440) = 0;
  *(v0 + 448) = 12;
  v3 = swift_task_alloc();
  *(v0 + 1104) = v3;
  *v3 = v0;
  v3[1] = sub_100016C80;

  return sub_100049C9C(v0 + 416);
}

uint64_t sub_100016C80(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1112) = a1;
  *(v3 + 1120) = a2;

  return _swift_task_switch(sub_100016D84, 0, 0);
}

uint64_t sub_100016D84()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 992);
  v3 = *(v0 + 904);
  v4 = (v3 + *(v2 + 36));
  *v4 = *(v0 + 1112);
  v4[1] = v1;
  *(v3 + *(v2 + 68)) = 0;
  *(v0 + 456) = 18;
  *(v0 + 464) = 0;
  *(v0 + 472) = 0;
  *(v0 + 480) = 0;
  *(v0 + 488) = 12;
  v5 = swift_task_alloc();
  *(v0 + 1128) = v5;
  *v5 = v0;
  v5[1] = sub_100016E54;

  return sub_100049C9C(v0 + 456);
}

uint64_t sub_100016E54(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[107] = v2;
  v3[108] = a1;
  v3[109] = a2;

  return _swift_task_switch(sub_100016F5C, 0, 0);
}

uint64_t sub_100016F5C()
{
  v1 = *(v0 + 872);
  v2 = (*(v0 + 904) + *(*(v0 + 992) + 56));
  *v2 = *(v0 + 864);
  v2[1] = v1;
  *(v0 + 496) = 1;
  *(v0 + 504) = 0;
  *(v0 + 520) = 0;
  *(v0 + 512) = 0;
  *(v0 + 528) = 12;
  v3 = swift_task_alloc();
  *(v0 + 1296) = v3;
  *v3 = v0;
  v3[1] = sub_100017D00;

  return sub_100049C9C(v0 + 496);
}

uint64_t sub_100017028(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1152) = a1;
  *(v3 + 1160) = a2;

  return _swift_task_switch(sub_10001714C, 0, 0);
}

uint64_t sub_10001714C()
{
  v1 = *(v0 + 1160);
  v2 = (*(v0 + 904) + *(*(v0 + 992) + 28));
  *v2 = *(v0 + 1152);
  v2[1] = v1;
  *(v0 + 96) = 20;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = 0;
  *(v0 + 128) = 12;
  v3 = swift_task_alloc();
  *(v0 + 1168) = v3;
  *v3 = v0;
  v3[1] = sub_100017218;

  return sub_100049C9C(v0 + 96);
}

uint64_t sub_100017218(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v7 = *v2;
  v3[147] = a1;
  v3[148] = a2;

  v3[17] = 21;
  v4 = (v3 + 17);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  *(v4 + 32) = 12;
  v5 = swift_task_alloc();
  *(v4 + 1056) = v5;
  *v5 = v7;
  v5[1] = sub_100017368;

  return sub_100049C9C(v4);
}

uint64_t sub_100017368(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v7 = *v2;
  v3[150] = a1;
  v3[151] = a2;

  v3[22] = 22;
  v4 = (v3 + 22);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  *(v4 + 32) = 12;
  v5 = swift_task_alloc();
  *(v4 + 1040) = v5;
  *v5 = v7;
  v5[1] = sub_1000174B8;

  return sub_100049C9C(v4);
}

uint64_t sub_1000174B8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v7 = *v2;
  v3[153] = a1;
  v3[154] = a2;

  v3[27] = 23;
  v4 = (v3 + 27);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  *(v4 + 32) = 12;
  v5 = swift_task_alloc();
  *(v4 + 1024) = v5;
  *v5 = v7;
  v5[1] = sub_100017608;

  return sub_100049C9C(v4);
}

uint64_t sub_100017608(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1248) = a1;
  *(v3 + 1256) = a2;

  return _swift_task_switch(sub_10001770C, 0, 0);
}

uint64_t sub_10001770C()
{
  v24 = *(v0 + 1248);
  v25 = *(v0 + 1256);
  v19 = *(v0 + 1208);
  v20 = *(v0 + 1224);
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1184);
  v3 = *(v0 + 1176);
  v22 = *(v0 + 992);
  v23 = *(v0 + 1232);
  v21 = *(v0 + 904);
  sub_1000047BC(&qword_100089218, &qword_1000664B8);
  v4 = (type metadata accessor for BulletPoint(0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100065660;
  v8 = v7 + v6;
  UUID.init()();
  v9 = (v8 + v4[7]);
  *v9 = 0xD000000000000020;
  v9[1] = 0x8000000100069480;
  v10 = (v8 + v4[8]);
  *v10 = v3;
  v10[1] = v2;
  v11 = (v8 + v4[9]);
  *v11 = v1;
  v11[1] = v19;
  v12 = v8 + v5;
  UUID.init()();
  v13 = (v12 + v4[7]);
  *v13 = 0xD000000000000011;
  v13[1] = 0x80000001000694B0;
  v14 = (v12 + v4[8]);
  *v14 = v20;
  v14[1] = v23;
  v15 = (v12 + v4[9]);
  *v15 = v24;
  v15[1] = v25;
  v16 = v21 + *(v22 + 32);
  *v16 = v7;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 12;
  v17 = swift_task_alloc();
  *(v0 + 1264) = v17;
  *v17 = v0;
  v17[1] = sub_100017954;

  return sub_100049C9C(v0 + 256);
}

uint64_t sub_100017954(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1272) = a1;
  *(v3 + 1280) = a2;

  return _swift_task_switch(sub_100017A58, 0, 0);
}

uint64_t sub_100017A58()
{
  v1 = *(v0 + 1280);
  v2 = *(v0 + 992);
  v3 = *(v0 + 904);
  v4 = (v3 + *(v2 + 36));
  *v4 = *(v0 + 1272);
  v4[1] = v1;
  *(v3 + *(v2 + 68)) = 1;
  *(v0 + 296) = 19;
  *(v0 + 304) = 0;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  *(v0 + 328) = 12;
  v5 = swift_task_alloc();
  *(v0 + 1288) = v5;
  *v5 = v0;
  v5[1] = sub_100017B2C;

  return sub_100049C9C(v0 + 296);
}

uint64_t sub_100017B2C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[110] = v2;
  v3[111] = a1;
  v3[112] = a2;

  return _swift_task_switch(sub_100017C34, 0, 0);
}

uint64_t sub_100017C34()
{
  v1 = *(v0 + 896);
  v2 = (*(v0 + 904) + *(*(v0 + 992) + 56));
  *v2 = *(v0 + 888);
  v2[1] = v1;
  *(v0 + 496) = 1;
  *(v0 + 504) = 0;
  *(v0 + 520) = 0;
  *(v0 + 512) = 0;
  *(v0 + 528) = 12;
  v3 = swift_task_alloc();
  *(v0 + 1296) = v3;
  *v3 = v0;
  v3[1] = sub_100017D00;

  return sub_100049C9C(v0 + 496);
}

uint64_t sub_100017D00(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1304) = a1;
  *(v3 + 1312) = a2;

  return _swift_task_switch(sub_100017E04, 0, 0);
}

uint64_t sub_100017E04()
{
  v1 = *(v0 + 1312);
  v2 = (*(v0 + 904) + *(*(v0 + 992) + 40));
  *v2 = *(v0 + 1304);
  v2[1] = v1;
  *(v0 + 536) = 3;
  *(v0 + 544) = 0;
  *(v0 + 560) = 0;
  *(v0 + 552) = 0;
  *(v0 + 568) = 12;
  v3 = swift_task_alloc();
  *(v0 + 1320) = v3;
  *v3 = v0;
  v3[1] = sub_100017ED4;

  return sub_100049C9C(v0 + 536);
}

uint64_t sub_100017ED4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1328) = a1;
  *(v3 + 1336) = a2;

  return _swift_task_switch(sub_100017FD8, 0, 0);
}

uint64_t sub_100017FD8(uint64_t a1)
{
  v2 = *(v1 + 1336);
  v3 = (*(v1 + 904) + *(*(v1 + 992) + 44));
  *v3 = *(v1 + 1328);
  v3[1] = v2;
  v4 = InstallSheetContext.Source.WebInstallContext.appName.getter();
  *(v1 + 1344) = v5;
  *(v1 + 576) = v4;
  *(v1 + 584) = v5;
  *(v1 + 592) = 0u;
  *(v1 + 608) = 7;
  v6 = swift_task_alloc();
  *(v1 + 1352) = v6;
  *v6 = v1;
  v6[1] = sub_1000180B0;

  return sub_100049C9C(v1 + 576);
}

uint64_t sub_1000180B0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1360) = a1;
  *(v3 + 1368) = a2;

  return _swift_task_switch(sub_1000181D4, 0, 0);
}

uint64_t sub_1000181D4(uint64_t a1)
{
  v2 = *(v1 + 1368);
  v3 = (*(v1 + 904) + *(*(v1 + 992) + 48));
  *v3 = *(v1 + 1360);
  v3[1] = v2;
  v4 = InstallSheetContext.Source.WebInstallContext.appName.getter();
  *(v1 + 1376) = v5;
  *(v1 + 616) = v4;
  *(v1 + 624) = v5;
  *(v1 + 632) = 0u;
  *(v1 + 648) = 9;
  v6 = swift_task_alloc();
  *(v1 + 1384) = v6;
  *v6 = v1;
  v6[1] = sub_1000182B0;

  return sub_100049C9C(v1 + 616);
}

uint64_t sub_1000182B0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1392) = a1;
  *(v3 + 1400) = a2;

  return _swift_task_switch(sub_1000183D4, 0, 0);
}

uint64_t sub_1000183D4()
{
  v1 = *(v0 + 1400);
  v2 = (*(v0 + 904) + *(*(v0 + 992) + 60));
  *v2 = *(v0 + 1392);
  v2[1] = v1;
  *(v0 + 656) = 5;
  *(v0 + 664) = 0;
  *(v0 + 680) = 0;
  *(v0 + 672) = 0;
  *(v0 + 688) = 12;
  v3 = swift_task_alloc();
  *(v0 + 1408) = v3;
  *v3 = v0;
  v3[1] = sub_1000184A4;

  return sub_100049C9C(v0 + 656);
}

uint64_t sub_1000184A4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1416) = a1;
  *(v3 + 1424) = a2;

  return _swift_task_switch(sub_1000185A8, 0, 0);
}

uint64_t sub_1000185A8()
{
  v1 = *(v0 + 1424);
  v2 = (*(v0 + 904) + *(*(v0 + 992) + 64));
  *v2 = *(v0 + 1416);
  v2[1] = v1;
  *(v0 + 696) = 12;
  *(v0 + 704) = 0;
  *(v0 + 720) = 0;
  *(v0 + 712) = 0;
  *(v0 + 728) = 12;
  v3 = swift_task_alloc();
  *(v0 + 1432) = v3;
  *v3 = v0;
  v3[1] = sub_100018674;

  return sub_100049C9C(v0 + 696);
}

uint64_t sub_100018674(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1440) = a1;
  *(v3 + 1448) = a2;

  return _swift_task_switch(sub_100018778, 0, 0);
}

uint64_t sub_100018778()
{
  v1 = *(v0 + 1448);
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);
  v4 = *(v0 + 944);
  v5 = *(v0 + 936);
  v6 = (*(v0 + 904) + *(*(v0 + 992) + 72));
  *v6 = *(v0 + 1440);
  v6[1] = v1;
  InstallSheetContext.type.getter();
  *(v0 + 52) = enum case for InstallSheetContext.InstallType.marketplace(_:);
  v7 = *(v4 + 104);
  *(v0 + 1456) = v7;
  *(v0 + 1464) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v3);
  v8 = static InstallSheetContext.InstallType.== infix(_:_:)();
  *(v0 + 49) = v8 & 1;
  v9 = *(v4 + 8);
  *(v0 + 1472) = v9;
  *(v0 + 1480) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v8)
  {
    v10 = 14;
  }

  else
  {
    v10 = 13;
  }

  v9(v3, v5);
  v9(v2, v5);
  *(v0 + 736) = v10;
  *(v0 + 744) = 0;
  *(v0 + 760) = 0;
  *(v0 + 752) = 0;
  *(v0 + 768) = 12;
  v11 = swift_task_alloc();
  *(v0 + 1488) = v11;
  *v11 = v0;
  v11[1] = sub_100018904;

  return sub_100049C9C(v0 + 736);
}

uint64_t sub_100018904(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(*v2 + 49))
  {
    v4 = 14;
  }

  else
  {
    v4 = 13;
  }

  *(v3 + 1496) = a1;
  *(v3 + 1504) = a2;

  sub_100018FBC(v4, 0, 0, 0, 0xCu);

  return _swift_task_switch(sub_100018A34, 0, 0);
}

uint64_t sub_100018A34()
{
  v1 = *(v0 + 1504);
  v2 = (*(v0 + 904) + *(*(v0 + 992) + 76));
  *v2 = *(v0 + 1496);
  v2[1] = v1;
  *(v0 + 776) = 15;
  *(v0 + 784) = 0;
  *(v0 + 800) = 0;
  *(v0 + 792) = 0;
  *(v0 + 808) = 12;
  v3 = swift_task_alloc();
  *(v0 + 1512) = v3;
  *v3 = v0;
  v3[1] = sub_100018B04;

  return sub_100049C9C(v0 + 776);
}

uint64_t sub_100018B04(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1520) = a1;
  *(v3 + 1528) = a2;

  return _swift_task_switch(sub_100018C08, 0, 0);
}

uint64_t sub_100018C08()
{
  v1 = *(v0 + 1528);
  v2 = *(v0 + 1472);
  v3 = *(v0 + 1456);
  v4 = *(v0 + 52);
  v5 = *(v0 + 960);
  v6 = *(v0 + 952);
  v7 = *(v0 + 936);
  v8 = (*(v0 + 904) + *(*(v0 + 992) + 80));
  *v8 = *(v0 + 1520);
  v8[1] = v1;
  InstallSheetContext.type.getter();
  v3(v6, v4, v7);
  v9 = static InstallSheetContext.InstallType.== infix(_:_:)();
  *(v0 + 50) = v9 & 1;
  if (v9)
  {
    v10 = 17;
  }

  else
  {
    v10 = 16;
  }

  v2(v6, v7);
  v2(v5, v7);
  *(v0 + 816) = v10;
  *(v0 + 824) = 0;
  *(v0 + 840) = 0;
  *(v0 + 832) = 0;
  *(v0 + 848) = 12;
  v11 = swift_task_alloc();
  *(v0 + 1536) = v11;
  *v11 = v0;
  v11[1] = sub_100018D64;

  return sub_100049C9C(v0 + 816);
}

uint64_t sub_100018D64(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(*v2 + 50))
  {
    v4 = 17;
  }

  else
  {
    v4 = 16;
  }

  *(v3 + 1544) = a1;
  *(v3 + 1552) = a2;

  sub_100018FBC(v4, 0, 0, 0, 0xCu);

  return _swift_task_switch(sub_100018E94, 0, 0);
}

uint64_t sub_100018E94()
{
  v1 = v0[193];
  v2 = v0[124];
  v3 = v0[123];
  v4 = v0[122];
  v12 = v0[194];
  v5 = v0[115];
  v6 = v0[114];
  v7 = v0[113];

  v8 = type metadata accessor for InstallSheetContext.Source.WebInstallContext();
  (*(*(v8 - 8) + 8))(v5, v8);
  (*(v3 + 8))(v6, v4);
  v9 = (v7 + *(v2 + 84));
  *v9 = v1;
  v9[1] = v12;

  v10 = v0[1];

  return v10();
}

void sub_100018FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xBu)
  {
    if (((1 << a5) & 0xEAB) != 0)
    {
    }

    else
    {
    }
  }
}

id sub_100019264(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100019450()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  *&v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window] = 0;
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() bagForProfile:v5 profileVersion:v6];

  *&v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_bag] = v7;
  v8 = v7;
  URL.init(string:)();
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v4, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for LocalizationJetPack(0);
    v12 = swift_allocObject();
    swift_defaultActor_initialize();

    *(v12 + 112) = 0;
    v13 = OBJC_IVAR____TtC26AppDistributionLaunchAngel19LocalizationJetPack_lastFailedLoadAttempt;
    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
    (*(v10 + 32))(v12 + OBJC_IVAR____TtC26AppDistributionLaunchAngel19LocalizationJetPack_url, v4, v9);
    *(v12 + 120) = v8;
    *&v0[OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_localizer] = v12;
    v15.receiver = v0;
    v15.super_class = ObjectType;
    return objc_msgSendSuper2(&v15, "init");
  }

  return result;
}

void sub_100019740(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  __chkstk_darwin(v6 - 8);
  v8 = &v85 - v7;
  v9 = sub_1000047BC(&unk_100089360, &qword_100066520);
  __chkstk_darwin(v9 - 8);
  v11 = &v85 - v10;
  v12 = type metadata accessor for InstallSheetContext();
  v89 = *(v12 - 8);
  v13 = *(v89 + 64);
  v14 = __chkstk_darwin(v12);
  v15 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v85 - v16;
  v18 = [a1 configurationContext];
  if (v18)
  {
    v87 = v8;
    v88 = v11;
    v91 = v18;
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    v20 = sub_1000105E8(v19, qword_10008C4C0);
    v21 = a2;
    v90 = v20;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v92 = v21;

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v86 = v13;
      v26 = v12;
      v27 = a1;
      v28 = v25;
      *v24 = 138412290;
      v29 = v92;
      *(v24 + 4) = v92;
      *v25 = v29;
      v30 = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%@] Handling install confirmation sheet request", v24, 0xCu);
      sub_100011C14(v28, &qword_100088FD0, &qword_1000673F0);
      a1 = v27;
      v12 = v26;
      v13 = v86;
    }

    v31 = [objc_allocWithZone(UIWindow) initWithWindowScene:a1];
    v32 = OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window;
    swift_beginAccess();
    v33 = *&v3[v32];
    *&v3[v32] = v31;

    v34 = v91;
    v35 = [v91 userInfo];
    if (v35)
    {
      v36 = v35;
      v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v93 = 0x44747865746E6F63;
      v94 = 0xEB00000000617461;
      AnyHashable.init<A>(_:)();
      if (*(v37 + 16) && (v38 = sub_100057EC8(v95), (v39 & 1) != 0))
      {
        sub_100010538(*(v37 + 56) + 32 * v38, v96);
        sub_10001E2FC(v95);

        if (swift_dynamicCast())
        {
          v40 = v94;
          v86 = v93;
          type metadata accessor for PropertyListDecoder();
          swift_allocObject();
          PropertyListDecoder.init()();
          sub_10001E350(&qword_100089380, &type metadata accessor for InstallSheetContext, &protocol conformance descriptor for InstallSheetContext);
          v41 = v88;
          v85 = v40;
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

          v72 = v89;
          (*(v89 + 56))(v41, 0, 1, v12);
          v92 = *(v72 + 32);
          (v92)(v17, v41, v12);
          v73 = type metadata accessor for TaskPriority();
          (*(*(v73 - 8) + 56))(v87, 1, 1, v73);
          (*(v72 + 16))(v15, v17, v12);
          type metadata accessor for MainActor();
          v90 = v3;
          v74 = v91;
          v88 = a1;
          v75 = static MainActor.shared.getter();
          v76 = *(v72 + 80);
          v91 = v17;
          v77 = (v76 + 32) & ~v76;
          v78 = (v13 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
          v79 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
          v80 = swift_allocObject();
          v81 = v15;
          v82 = v12;
          v83 = v80;
          *(v80 + 16) = v75;
          *(v80 + 24) = &protocol witness table for MainActor;
          (v92)(v80 + v77, v81, v82);
          *(v83 + v78) = v90;
          *(v83 + v79) = v74;
          v84 = v87;
          *(v83 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v88;
          sub_100007654(0, 0, v84, &unk_100066530, v83);
          sub_100015A54(v86, v85);

          (*(v72 + 8))(v91, v82);
          return;
        }
      }

      else
      {

        sub_10001E2FC(v95);
      }
    }

    v49 = a1;
    v50 = v92;
    v51 = v34;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v95[0] = v56;
      *v54 = 138412546;
      *(v54 + 4) = v50;
      *v55 = v50;
      *(v54 + 12) = 2082;
      v57 = v50;
      v58 = [v51 userInfo];
      if (v58)
      {
        v59 = v58;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        sub_100059988(&_swiftEmptyArrayStorage);
      }

      v60 = Dictionary.description.getter();
      v62 = v61;

      v63 = sub_10000F78C(v60, v62, v95);

      *(v54 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v52, v53, "[%@] Invalid context: %{public}s", v54, 0x16u);
      sub_100011C14(v55, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v56);
    }

    v64 = [v49 activationContext];
    if (v64)
    {
      v65 = v64;
      v66 = [v64 actions];

      sub_10001E778(0, &qword_100088FF0, BSAction_ptr);
      sub_10001E294();
      v67 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v68 = sub_10005FA2C(v67);

      if (v68)
      {
        if ([v68 canSendResponse])
        {
          v69 = [objc_allocWithZone(BSMutableSettings) init];
          sub_10001E778(0, &qword_100089378, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
          [v69 setObject:isa forSetting:1];

          v71 = [objc_opt_self() responseWithInfo:v69];
          [v68 sendResponse:v71];
        }

        else
        {
        }
      }
    }
  }

  else
  {
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000105E8(v42, qword_10008C4C0);
    v43 = a2;
    v92 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v92, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v43;
      *v46 = v43;
      v47 = v43;
      _os_log_impl(&_mh_execute_header, v92, v44, "[%@] No configuration context provided.", v45, 0xCu);
      sub_100011C14(v46, &qword_100088FD0, &qword_1000673F0);
    }

    v48 = v92;
  }
}

void sub_10001A268(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000047BC(&qword_100089390, &qword_100066540);
  __chkstk_darwin(v6 - 8);
  v8 = &v90 - v7;
  v9 = type metadata accessor for LicenseResolutionContext();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v90 - v14;
  v16 = [a1 configurationContext];
  if (v16)
  {
    v17 = v16;
    v94 = v13;
    v95 = v15;
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    v19 = sub_1000105E8(v18, qword_10008C4C0);
    v20 = a2;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v97 = v20;

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v96 = v19;
      v25 = v17;
      v26 = v3;
      v27 = v8;
      v28 = v10;
      v29 = v9;
      v30 = a1;
      v31 = v24;
      *v23 = 138412290;
      v32 = v97;
      *(v23 + 4) = v97;
      *v24 = v32;
      v33 = v32;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%@] Handling license resolution sheet request", v23, 0xCu);
      sub_100011C14(v31, &qword_100088FD0, &qword_1000673F0);
      a1 = v30;
      v9 = v29;
      v10 = v28;
      v8 = v27;
      v3 = v26;
      v17 = v25;
    }

    v34 = objc_allocWithZone(UIWindow);
    v96 = a1;
    v35 = [v34 initWithWindowScene:a1];
    v36 = OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window;
    swift_beginAccess();
    v37 = *(v3 + v36);
    *(v3 + v36) = v35;

    v38 = [v17 userInfo];
    if (v38)
    {
      v39 = v38;
      v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v99 = 0x44747865746E6F63;
      v100 = 0xEB00000000617461;
      AnyHashable.init<A>(_:)();
      if (*(v40 + 16) && (v41 = sub_100057EC8(v101), (v42 & 1) != 0))
      {
        sub_100010538(*(v40 + 56) + 32 * v41, v102);
        sub_10001E2FC(v101);

        if (swift_dynamicCast())
        {
          v43 = v100;
          v93 = v99;
          type metadata accessor for JSONDecoder();
          swift_allocObject();
          JSONDecoder.init()();
          sub_10001E350(&qword_100089398, &type metadata accessor for LicenseResolutionContext, &protocol conformance descriptor for LicenseResolutionContext);
          v92 = v43;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();

          (*(v10 + 56))(v8, 0, 1, v9);
          v73 = v95;
          (*(v10 + 32))(v95, v8, v9);
          v74 = v10;
          v97 = *(v10 + 16);
          (v97)(v94, v73, v9);
          v75 = type metadata accessor for LicenseResolutionViewController(0);
          v76 = objc_allocWithZone(v75);
          v77 = &v76[OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_dismissAction];
          *v77 = 0;
          v77[1] = 0;
          v91 = OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_isIPad;
          v78 = [objc_opt_self() currentDevice];
          v79 = [v78 userInterfaceIdiom];

          v76[v91] = v79 == 1;
          v80 = v94;
          (v97)(&v76[OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_sheetContext], v94, v9);
          v98.receiver = v76;
          v98.super_class = v75;
          v81 = objc_msgSendSuper2(&v98, "initWithNibName:bundle:", 0, 0);
          v82 = *(v10 + 8);
          v97 = v74 + 1;
          v82(v80, v9);
          v83 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v84 = &v81[OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_dismissAction];
          v85 = *&v81[OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_dismissAction];
          v86 = *&v81[OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_dismissAction + 8];
          *v84 = sub_10001E7C0;
          v84[1] = v83;

          sub_10001369C(v85, v86);

          v87 = *(v3 + v36);
          if (v87)
          {
            [v87 setRootViewController:v81];
            v88 = *(v3 + v36);
            if (v88)
            {
              [v88 makeKeyAndVisible];
            }
          }

          v89 = v96;
          [v96 setDesiredHardwareButtonEvents:16];
          [v89 setAllowsMenuButtonDismissal:0];
          [v89 setAllowsAlertStacking:1];
          [v89 setDismissalAnimationStyle:2];
          [v89 setReachabilityDisabled:1];
          sub_100015A54(v93, v92);

          v82(v95, v9);
          return;
        }
      }

      else
      {

        sub_10001E2FC(v101);
      }
    }

    v51 = v97;
    v52 = v17;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v101[0] = v57;
      *v55 = 138412546;
      *(v55 + 4) = v51;
      *v56 = v51;
      *(v55 + 12) = 2082;
      v58 = v51;
      v59 = [v52 userInfo];
      if (v59)
      {
        v60 = v59;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        sub_100059988(&_swiftEmptyArrayStorage);
      }

      v61 = Dictionary.description.getter();
      v63 = v62;

      v64 = sub_10000F78C(v61, v63, v101);

      *(v55 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v53, v54, "[%@] Invalid context: %{public}s", v55, 0x16u);
      sub_100011C14(v56, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v57);
    }

    v65 = [v96 activationContext];
    if (v65)
    {
      v66 = v65;
      v67 = [v65 actions];

      sub_10001E778(0, &qword_100088FF0, BSAction_ptr);
      sub_10001E294();
      v68 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v69 = sub_10005FA2C(v68);

      if (v69)
      {
        if ([v69 canSendResponse])
        {
          v70 = [objc_allocWithZone(BSMutableSettings) init];
          sub_10001E778(0, &qword_100089378, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
          [v70 setObject:isa forSetting:1];

          v72 = [objc_opt_self() responseWithInfo:v70];
          [v69 sendResponse:v72];
        }

        else
        {
        }
      }
    }
  }

  else
  {
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000105E8(v44, qword_10008C4C0);
    v45 = a2;
    v97 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v97, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v45;
      *v48 = v45;
      v49 = v45;
      _os_log_impl(&_mh_execute_header, v97, v46, "[%@] No configuration context provided.", v47, 0xCu);
      sub_100011C14(v48, &qword_100088FD0, &qword_1000673F0);
    }

    v50 = v97;
  }
}

void sub_10001AE10(char *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000047BC(&qword_1000893A0, &qword_100066548);
  __chkstk_darwin(v6 - 8);
  v8 = &v84 - v7;
  v9 = type metadata accessor for OAuthAuthorizationContext();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v84 - v14;
  v16 = [a1 configurationContext];
  if (v16)
  {
    v17 = v16;
    v86 = v13;
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    v19 = sub_1000105E8(v18, qword_10008C4C0);
    v20 = a2;
    v87 = v19;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v89 = v20;

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v88 = v8;
      v25 = v17;
      v26 = v3;
      v27 = v15;
      v28 = v10;
      v29 = v9;
      v30 = a1;
      v31 = v24;
      *v23 = 138412290;
      v32 = v89;
      *(v23 + 4) = v89;
      *v24 = v32;
      v33 = v32;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%@] Handling OAuth authentication sheet request", v23, 0xCu);
      sub_100011C14(v31, &qword_100088FD0, &qword_1000673F0);
      a1 = v30;
      v9 = v29;
      v10 = v28;
      v15 = v27;
      v3 = v26;
      v17 = v25;
      v8 = v88;
    }

    v34 = objc_allocWithZone(UIWindow);
    v88 = a1;
    v35 = [v34 initWithWindowScene:a1];
    v36 = OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window;
    swift_beginAccess();
    v37 = *(v3 + v36);
    *(v3 + v36) = v35;

    v38 = [v17 userInfo];
    if (v38)
    {
      v39 = v38;
      v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v90 = 0x44747865746E6F63;
      v91 = 0xEB00000000617461;
      AnyHashable.init<A>(_:)();
      if (*(v40 + 16) && (v41 = sub_100057EC8(v92), (v42 & 1) != 0))
      {
        sub_100010538(*(v40 + 56) + 32 * v41, v93);
        sub_10001E2FC(v92);

        if (swift_dynamicCast())
        {
          v43 = v91;
          v85 = v90;
          type metadata accessor for JSONDecoder();
          swift_allocObject();
          JSONDecoder.init()();
          sub_10001E350(&qword_1000893A8, &type metadata accessor for OAuthAuthorizationContext, &protocol conformance descriptor for OAuthAuthorizationContext);
          v84 = v43;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();

          (*(v10 + 56))(v8, 0, 1, v9);
          (*(v10 + 32))(v15, v8, v9);
          v73 = v86;
          (*(v10 + 16))(v86, v15, v9);
          v74 = objc_allocWithZone(type metadata accessor for OAuthAuthorizationViewController(0));
          v75 = v17;
          v76 = sub_100043834(v75, v73);

          v77 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v78 = &v76[OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_dismissAction];
          v80 = *&v76[OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_dismissAction];
          v79 = *&v76[OBJC_IVAR____TtC26AppDistributionLaunchAngel32OAuthAuthorizationViewController_dismissAction + 8];
          *v78 = sub_10001E7C0;
          v78[1] = v77;

          sub_10001369C(v80, v79);

          v81 = *(v3 + v36);
          if (v81)
          {
            [v81 setRootViewController:v76];
            v82 = *(v3 + v36);
            if (v82)
            {
              [v82 makeKeyAndVisible];
            }
          }

          v83 = v88;
          [v88 setDesiredHardwareButtonEvents:16];
          [v83 setAllowsMenuButtonDismissal:0];
          [v83 setAllowsAlertStacking:1];
          [v83 setDismissalAnimationStyle:2];
          [v83 setReachabilityDisabled:1];
          sub_100015A54(v85, v84);

          (*(v10 + 8))(v15, v9);
          return;
        }
      }

      else
      {

        sub_10001E2FC(v92);
      }
    }

    v51 = v89;
    v52 = v17;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v92[0] = v57;
      *v55 = 138412546;
      *(v55 + 4) = v51;
      *v56 = v51;
      *(v55 + 12) = 2082;
      v58 = v51;
      v59 = [v52 userInfo];
      if (v59)
      {
        v60 = v59;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        sub_100059988(&_swiftEmptyArrayStorage);
      }

      v61 = Dictionary.description.getter();
      v63 = v62;

      v64 = sub_10000F78C(v61, v63, v92);

      *(v55 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v53, v54, "[%@] Invalid context: %{public}s", v55, 0x16u);
      sub_100011C14(v56, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v57);
    }

    v65 = [v88 activationContext];
    if (v65)
    {
      v66 = v65;
      v67 = [v65 actions];

      sub_10001E778(0, &qword_100088FF0, BSAction_ptr);
      sub_10001E294();
      v68 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v69 = sub_10005FA2C(v68);

      if (v69)
      {
        if ([v69 canSendResponse])
        {
          v70 = [objc_allocWithZone(BSMutableSettings) init];
          sub_10001E778(0, &qword_100089378, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
          [v70 setObject:isa forSetting:1];

          v72 = [objc_opt_self() responseWithInfo:v70];
          [v69 sendResponse:v72];
        }

        else
        {
        }
      }
    }
  }

  else
  {
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000105E8(v44, qword_10008C4C0);
    v45 = a2;
    v89 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v89, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v45;
      *v48 = v45;
      v49 = v45;
      _os_log_impl(&_mh_execute_header, v89, v46, "[%@] No configuration context provided.", v47, 0xCu);
      sub_100011C14(v48, &qword_100088FD0, &qword_1000673F0);
    }

    v50 = v89;
  }
}

void sub_10001B8D4(char *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000047BC(&qword_1000893B0, &qword_100066550);
  __chkstk_darwin(v6 - 8);
  v8 = &v84 - v7;
  v9 = type metadata accessor for ConfirmationSheetContext();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v84 - v14;
  v16 = [a1 configurationContext];
  if (v16)
  {
    v17 = v16;
    v86 = v13;
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    v19 = sub_1000105E8(v18, qword_10008C4C0);
    v20 = a2;
    v87 = v19;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v89 = v20;

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v88 = v8;
      v25 = v17;
      v26 = v3;
      v27 = v15;
      v28 = v10;
      v29 = v9;
      v30 = a1;
      v31 = v24;
      *v23 = 138412290;
      v32 = v89;
      *(v23 + 4) = v89;
      *v24 = v32;
      v33 = v32;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%@] Handling confirmation sheet request", v23, 0xCu);
      sub_100011C14(v31, &qword_100088FD0, &qword_1000673F0);
      a1 = v30;
      v9 = v29;
      v10 = v28;
      v15 = v27;
      v3 = v26;
      v17 = v25;
      v8 = v88;
    }

    v34 = objc_allocWithZone(UIWindow);
    v88 = a1;
    v35 = [v34 initWithWindowScene:a1];
    v36 = OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window;
    swift_beginAccess();
    v37 = *(v3 + v36);
    *(v3 + v36) = v35;

    v38 = [v17 userInfo];
    if (v38)
    {
      v39 = v38;
      v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v90 = 0x44747865746E6F63;
      v91 = 0xEB00000000617461;
      AnyHashable.init<A>(_:)();
      if (*(v40 + 16) && (v41 = sub_100057EC8(v92), (v42 & 1) != 0))
      {
        sub_100010538(*(v40 + 56) + 32 * v41, v93);
        sub_10001E2FC(v92);

        if (swift_dynamicCast())
        {
          v43 = v91;
          v85 = v90;
          type metadata accessor for PropertyListDecoder();
          swift_allocObject();
          PropertyListDecoder.init()();
          sub_10001E350(&qword_1000893B8, &type metadata accessor for ConfirmationSheetContext, &protocol conformance descriptor for ConfirmationSheetContext);
          v84 = v43;
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

          (*(v10 + 56))(v8, 0, 1, v9);
          (*(v10 + 32))(v15, v8, v9);
          v73 = v86;
          (*(v10 + 16))(v86, v15, v9);
          v74 = objc_allocWithZone(type metadata accessor for ConfirmationSheetContainerViewController(0));
          v75 = v17;
          v76 = sub_10005FB48(v75, v73);
          v77 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v78 = &v76[OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_dismissAction];
          v80 = *&v76[OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_dismissAction];
          v79 = *&v76[OBJC_IVAR____TtC26AppDistributionLaunchAngel40ConfirmationSheetContainerViewController_dismissAction + 8];
          *v78 = sub_10001E770;
          v78[1] = v77;

          sub_10001369C(v80, v79);

          v81 = *(v3 + v36);
          if (v81)
          {
            [v81 setRootViewController:v76];
            v82 = *(v3 + v36);
            if (v82)
            {
              [v82 makeKeyAndVisible];
            }
          }

          v83 = v88;
          [v88 setDesiredHardwareButtonEvents:16];
          [v83 setAllowsMenuButtonDismissal:0];
          [v83 setAllowsAlertStacking:1];
          [v83 setDismissalAnimationStyle:2];
          [v83 setReachabilityDisabled:1];
          sub_100015A54(v85, v84);

          (*(v10 + 8))(v15, v9);
          return;
        }
      }

      else
      {

        sub_10001E2FC(v92);
      }
    }

    v51 = v89;
    v52 = v17;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v92[0] = v57;
      *v55 = 138412546;
      *(v55 + 4) = v51;
      *v56 = v51;
      *(v55 + 12) = 2082;
      v58 = v51;
      v59 = [v52 userInfo];
      if (v59)
      {
        v60 = v59;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        sub_100059988(&_swiftEmptyArrayStorage);
      }

      v61 = Dictionary.description.getter();
      v63 = v62;

      v64 = sub_10000F78C(v61, v63, v92);

      *(v55 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v53, v54, "[%@] Invalid context: %{public}s", v55, 0x16u);
      sub_100011C14(v56, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v57);
    }

    v65 = [v88 activationContext];
    if (v65)
    {
      v66 = v65;
      v67 = [v65 actions];

      sub_10001E778(0, &qword_100088FF0, BSAction_ptr);
      sub_10001E294();
      v68 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v69 = sub_10005FA2C(v68);

      if (v69)
      {
        if ([v69 canSendResponse])
        {
          v70 = [objc_allocWithZone(BSMutableSettings) init];
          sub_10001E778(0, &qword_100089378, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
          [v70 setObject:isa forSetting:1];

          v72 = [objc_opt_self() responseWithInfo:v70];
          [v69 sendResponse:v72];
        }

        else
        {
        }
      }
    }
  }

  else
  {
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000105E8(v44, qword_10008C4C0);
    v45 = a2;
    v89 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v89, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v45;
      *v48 = v45;
      v49 = v45;
      _os_log_impl(&_mh_execute_header, v89, v46, "[%@] No configuration context provided.", v47, 0xCu);
      sub_100011C14(v48, &qword_100088FD0, &qword_1000673F0);
    }

    v50 = v89;
  }
}

uint64_t sub_10001C4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10001E098(a5);
}

uint64_t sub_10001C64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  type metadata accessor for LocalizedInstallSheetContent(0);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v8 = type metadata accessor for InstallSheetContext();
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  type metadata accessor for LocalizedCombinedApprovalAndInstallContent(0);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v9 = type metadata accessor for InstallSheetContext.Source.WebInstallContext();
  v7[22] = v9;
  v7[23] = *(v9 - 8);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v10 = type metadata accessor for FeatureFlag();
  v7[26] = v10;
  v7[27] = *(v10 - 8);
  v7[28] = swift_task_alloc();
  type metadata accessor for Bag();
  v7[29] = swift_task_alloc();
  v11 = type metadata accessor for InstallSheetContext.Source();
  v7[30] = v11;
  v7[31] = *(v11 - 8);
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v12 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
  v7[34] = v12;
  v7[35] = *(v12 - 8);
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  sub_1000047BC(&qword_100089388, &qword_100067A70);
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[40] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[41] = v14;
  v7[42] = v13;

  return _swift_task_switch(sub_10001C9B8, v14, v13);
}

uint64_t sub_10001C9B8()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  InstallSheetContext.source.getter();
  v4 = *(v3 + 88);
  if (v4(v1, v2) == enum case for InstallSheetContext.Source.appStoreWithContext(_:))
  {
    v45 = v0[39];
    v6 = v0[36];
    v5 = v0[37];
    v7 = v0[34];
    v8 = v0[35];
    v9 = v0[33];
    v10 = v0[29];
    v11 = v0[12];
    (*(v0[31] + 96))(v9, v0[30]);
    (*(v8 + 32))(v5, v9, v7);
    v12 = *(v11 + OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_bag);
    Bag.init(from:)();
    (*(v8 + 16))(v6, v5, v7);
    sub_10005618C(v10, v6, v45);
    (*(v8 + 8))(v5, v7);
    v13 = 0;
  }

  else
  {
    (*(v0[31] + 8))(v0[33], v0[30]);
    v13 = 1;
  }

  v14 = v0[39];
  v16 = v0[27];
  v15 = v0[28];
  v17 = v0[26];
  v18 = type metadata accessor for InstallConfirmationAppStoreMetrics(0);
  (*(*(v18 - 8) + 56))(v14, v13, 1, v18);
  (*(v16 + 104))(v15, enum case for FeatureFlag.newInstallSheetFlow(_:), v17);
  v19 = isFeatureEnabled(_:)();
  (*(v16 + 8))(v15, v17);
  if (v19)
  {
    v20 = v0[32];
    v21 = v0[30];
    InstallSheetContext.source.getter();
    v22 = v4(v20, v21);
    v23 = v0[31];
    v24 = v0[32];
    v25 = v0[30];
    if (v22 == enum case for InstallSheetContext.Source.webWithContext(_:))
    {
      v27 = v0[24];
      v26 = v0[25];
      v28 = v0[22];
      v29 = v0[23];
      v31 = v0[18];
      v30 = v0[19];
      v32 = v0[17];
      v33 = v0[11];
      v46 = v0[12];
      (*(v23 + 96))(v24, v25);
      (*(v29 + 32))(v26, v24, v28);
      (*(v31 + 16))(v30, v33, v32);
      (*(v29 + 16))(v27, v26, v28);
      v34 = *(v46 + OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_localizer);

      v35 = swift_task_alloc();
      v0[43] = v35;
      *v35 = v0;
      v35[1] = sub_10001CDDC;
      v36 = v0[24];
      v37 = v0[21];
      v38 = v0[19];

      return sub_1000162A4(v37, v38, v36, v34);
    }

    (*(v23 + 8))(v0[32], v25);
  }

  v40 = v0[12];
  (*(v0[18] + 16))(v0[19], v0[11], v0[17]);
  v41 = *(v40 + OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_localizer);

  v42 = swift_task_alloc();
  v0[44] = v42;
  *v42 = v0;
  v42[1] = sub_10001D264;
  v43 = v0[19];
  v44 = v0[16];

  return sub_10004EB64(v44, v43, v41);
}

uint64_t sub_10001CDDC()
{
  v1 = *v0;

  v2 = *(v1 + 336);
  v3 = *(v1 + 328);

  return _swift_task_switch(sub_10001CEFC, v3, v2);
}

uint64_t sub_10001CEFC()
{
  v1 = v0[39];
  v2 = v0[38];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[13];
  v6 = v0[12];

  sub_10001E6A8(v3, v4, type metadata accessor for LocalizedCombinedApprovalAndInstallContent);
  sub_10001E5E4(v1, v2);
  v7 = objc_allocWithZone(type metadata accessor for CombinedApprovalAndInstallViewController(0));
  v8 = sub_10001E7C8(v5, v4, v2);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = &v8[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_dismissAction];
  v11 = *&v8[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_dismissAction];
  v12 = *&v8[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_dismissAction + 8];
  *v10 = sub_10001E7C0;
  v10[1] = v9;

  sub_10001369C(v11, v12);

  v13 = OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v14 = *(v6 + v13);
  v15 = v0[25];
  v16 = v0[22];
  v17 = v0[23];
  v18 = v0[21];
  if (v14)
  {
    swift_endAccess();
    [v14 setRootViewController:v8];

    sub_10001E710(v18, type metadata accessor for LocalizedCombinedApprovalAndInstallContent);
    (*(v17 + 8))(v15, v16);
  }

  else
  {
    sub_10001E710(v0[21], type metadata accessor for LocalizedCombinedApprovalAndInstallContent);
    (*(v17 + 8))(v15, v16);
    swift_endAccess();
  }

  v19 = v0[12];
  v20 = OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v21 = *(v19 + v20);
  if (v21)
  {
    [v21 makeKeyAndVisible];
  }

  v22 = v0[39];
  v23 = v0[14];
  [v23 setDesiredHardwareButtonEvents:{16, v0[25]}];
  [v23 setAllowsMenuButtonDismissal:0];
  [v23 setAllowsAlertStacking:1];
  [v23 setDismissalAnimationStyle:2];
  [v23 setReachabilityDisabled:1];
  sub_100011C14(v22, &qword_100089388, &qword_100067A70);

  v24 = v0[1];

  return v24();
}

uint64_t sub_10001D264()
{
  v1 = *v0;

  v2 = *(v1 + 336);
  v3 = *(v1 + 328);

  return _swift_task_switch(sub_10001D384, v3, v2);
}

uint64_t sub_10001D384()
{
  v1 = v0[39];
  v2 = v0[38];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[12];

  sub_10001E6A8(v3, v4, type metadata accessor for LocalizedInstallSheetContent);
  sub_10001E5E4(v1, v2);
  v7 = objc_allocWithZone(type metadata accessor for InstallConfirmationViewController(0));
  v8 = v5;
  v9 = sub_10005F648(v8, v4, v2);

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = &v9[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_dismissAction];
  v12 = *&v9[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_dismissAction];
  v13 = *&v9[OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_dismissAction + 8];
  *v11 = sub_10001E68C;
  v11[1] = v10;

  sub_10001369C(v12, v13);

  v14 = OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v15 = *(v6 + v14);
  v16 = v0[16];
  if (v15)
  {
    swift_endAccess();
    [v15 setRootViewController:v9];

    sub_10001E710(v16, type metadata accessor for LocalizedInstallSheetContent);
  }

  else
  {
    sub_10001E710(v0[16], type metadata accessor for LocalizedInstallSheetContent);
    swift_endAccess();
  }

  v17 = v0[12];
  v18 = OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v19 = *(v17 + v18);
  if (v19)
  {
    [v19 makeKeyAndVisible];
  }

  v20 = v0[39];
  v21 = v0[14];
  [v21 setDesiredHardwareButtonEvents:{16, v0[25]}];
  [v21 setAllowsMenuButtonDismissal:0];
  [v21 setAllowsAlertStacking:1];
  [v21 setDismissalAnimationStyle:2];
  [v21 setReachabilityDisabled:1];
  sub_100011C14(v20, &qword_100089388, &qword_100067A70);

  v22 = v0[1];

  return v22();
}

void sub_10001D6BC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong invalidate];
  }
}

void sub_10001D718(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong invalidate];
  }
}

id sub_10001D774()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10001D82C(void *a1, void *a2, void *a3)
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000105E8(v6, qword_10008C4C0);
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412802;
    *(v12 + 4) = v7;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v8;
    *v13 = v7;
    v13[1] = v8;
    *(v12 + 22) = 2112;
    *(v12 + 24) = v9;
    v13[2] = v9;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Application: %@, configuration for connecting scene session: %@, options: %@", v12, 0x20u);
    sub_1000047BC(&qword_100088FD0, &qword_1000673F0);
    swift_arrayDestroy();
  }

  v17 = [v8 role];
  v18 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v17];

  sub_10001E778(0, &qword_1000893C8, SBSUIRemoteAlertScene_ptr);
  [v18 setSceneClass:swift_getObjCClassFromMetadata()];
  type metadata accessor for AppDistributionRemoteAlertSceneDelegate();
  [v18 setDelegateClass:swift_getObjCClassFromMetadata()];
  return v18;
}

void sub_10001DA54(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for LogKey());
  v3 = sub_100055C40();
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v5 configurationIdentifier];
    if (!v7)
    {
LABEL_5:
      if (qword_100088438 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_1000105E8(v13, qword_10008C4C0);
      v48 = v6;
      v14 = v3;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v50 = v19;
        *v17 = 138412546;
        *(v17 + 4) = v14;
        *v18 = v14;
        *(v17 + 12) = 2082;
        v20 = v14;
        v21 = [v5 configurationIdentifier];
        if (v21)
        {
          v22 = v21;
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0;
        }

        v49[0] = v23;
        v49[1] = v25;
        sub_1000047BC(&unk_100089350, &unk_100066510);
        v43 = String.init<A>(describing:)();
        v45 = sub_10000F78C(v43, v44, &v50);

        *(v17 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v15, v16, "[%@] Invalid configuration identifier %{public}s", v17, 0x16u);
        sub_100011C14(v18, &qword_100088FD0, &qword_1000673F0);

        sub_10001059C(v19);

        return;
      }

      goto LABEL_31;
    }

    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v52._countAndFlagsBits = v9;
    v52._object = v11;
    v12 = sub_10002979C(v52);
    if (v12 == 4)
    {

      goto LABEL_5;
    }

    v33 = v12;
    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000105E8(v34, qword_10008C4C0);

    v48 = v3;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v47 = v6;
      v39 = swift_slowAlloc();
      v49[0] = v39;
      *v37 = 138412546;
      *(v37 + 4) = v48;
      *v38 = v48;
      *(v37 + 12) = 2082;
      v40 = v48;
      v41 = sub_10000F78C(v9, v11, v49);

      *(v37 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "[%@] Scene requested with identifier %{public}s", v37, 0x16u);
      sub_100011C14(v38, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v39);
      v6 = v47;
    }

    else
    {
    }

    if (v33 > 1u)
    {
      if (v33 == 2)
      {
        sub_10001AE10(v5, v48);
      }

      else
      {
        sub_10001B8D4(v5, v48);
      }
    }

    else if (v33)
    {
      sub_10001A268(v5, v48);
    }

    else
    {
      sub_100019740(v5, v48);
    }

LABEL_31:
    v42 = v48;
    goto LABEL_32;
  }

  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000105E8(v26, qword_10008C4C0);
  v27 = a1;
  v46 = v3;
  v48 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v48, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412546;
    *(v29 + 4) = v46;
    *(v29 + 12) = 2112;
    *(v29 + 14) = v27;
    *v30 = v46;
    v30[1] = v27;
    v31 = v27;
    v32 = v46;
    _os_log_impl(&_mh_execute_header, v48, v28, "[%@] Expected scene to be SBSUIRemoteAlertScene but got %@", v29, 0x16u);
    sub_1000047BC(&qword_100088FD0, &qword_1000673F0);
    swift_arrayDestroy();

    goto LABEL_31;
  }

  v42 = v46;
LABEL_32:
}

void sub_10001E098(const char *a1)
{
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000105E8(v2, qword_10008C4C0);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

void sub_10001E188()
{
  v1 = v0;
  if (qword_100088438 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000105E8(v2, qword_10008C4C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Remote alert scene sceneDidDisconnect", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC26AppDistributionLaunchAngel39AppDistributionRemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v7 = *(v1 + v6);
  *(v1 + v6) = 0;
}

unint64_t sub_10001E294()
{
  result = qword_100089370;
  if (!qword_100089370)
  {
    sub_10001E778(255, &qword_100088FF0, BSAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089370);
  }

  return result;
}

uint64_t sub_10001E350(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001E398()
{
  v1 = type metadata accessor for InstallSheetContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_10001E498(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for InstallSheetContext() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10001020C;

  return sub_10001C64C(a1, v9, v10, v1 + v6, v11, v12, v13);
}

uint64_t sub_10001E5E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000047BC(&qword_100089388, &qword_100067A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001E654()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E6A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001E710(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001E778(uint64_t a1, unint64_t *a2, void *a3)
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

char *sub_10001E7C8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for LocalizedCombinedApprovalAndInstallContent(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_dismissAction];
  *v10 = 0;
  v10[1] = 0;
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_childViewController] = 0;
  v11 = OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_responseAction;
  *&v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_responseAction] = 0;
  v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_response] = 0;
  v12 = OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_isIPad;
  v13 = [objc_opt_self() currentDevice];
  v14 = [v13 userInterfaceIdiom];

  v3[v12] = v14 == 1;
  sub_100010668(a3, &v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_appStoreMetrics], &qword_100089388, &qword_100067A70);
  v15 = [a1 actions];
  if (v15)
  {
    sub_10001596C();
    sub_100022474(&qword_100089370, sub_10001596C, &protocol conformance descriptor for NSObject);
    v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = sub_10005FA2C(v16);
  }

  v17 = *&v3[v11];
  *&v3[v11] = v15;

  sub_100022410(a2, &v3[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_localizedContent]);
  v18 = type metadata accessor for CombinedApprovalAndInstallViewController(0);
  v24.receiver = v3;
  v24.super_class = v18;
  v19 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", 0, 0);
  sub_100022410(a2, v9);
  objc_allocWithZone(type metadata accessor for CombinedApprovalAndInstallSheetViewController(0));
  v20 = v19;
  v21 = sub_10004050C(v9, v19, &off_10007EE78);

  sub_100011C14(a3, &qword_100089388, &qword_100067A70);
  sub_1000223B0(a2, type metadata accessor for LocalizedCombinedApprovalAndInstallContent);
  v22 = *&v20[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_childViewController];
  *&v20[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_childViewController] = v21;

  return v20;
}

void sub_10001EB10(char a1)
{
  v19.receiver = v1;
  v19.super_class = type metadata accessor for CombinedApprovalAndInstallViewController(0);
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_childViewController];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  [v4 setModalPresentationStyle:2];
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [v5 window];

  if (v7)
  {
    v8 = [v7 _rootSheetPresentationController];

    if (v8)
    {
      [v8 _setShouldScaleDownBehindDescendantSheets:0];

      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    return;
  }

LABEL_6:
  v9 = [objc_opt_self() blackColor];
  v10 = v9;
  v11 = 0.8;
  if (v1[OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_isIPad])
  {
    v11 = 0.4;
  }

  v12 = [v9 colorWithAlphaComponent:v11];

  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v12;
  v18[4] = sub_10002253C;
  v18[5] = v14;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10005F9E8;
  v18[3] = &unk_10007EF98;
  v15 = _Block_copy(v18);
  v16 = v1;
  v17 = v12;

  [v13 animateWithDuration:v15 animations:0.3];
  _Block_release(v15);

  [v16 presentViewController:v4 animated:1 completion:0];
}

uint64_t sub_10001EED4(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 264) = a1;
  sub_1000047BC(&qword_1000893C0, &unk_1000663F0);
  *(v2 + 56) = swift_task_alloc();
  v3 = type metadata accessor for InstallSheetContext.Source.AppStoreSheetContext();
  *(v2 + 64) = v3;
  *(v2 + 72) = *(v3 - 8);
  *(v2 + 80) = swift_task_alloc();
  v4 = type metadata accessor for InstallSheetContext.Source();
  *(v2 + 88) = v4;
  *(v2 + 96) = *(v4 - 8);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  sub_1000047BC(&qword_100089388, &qword_100067A70);
  *(v2 + 120) = swift_task_alloc();
  v5 = type metadata accessor for InstallConfirmationAppStoreMetrics(0);
  *(v2 + 128) = v5;
  *(v2 + 136) = *(v5 - 8);
  *(v2 + 144) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 152) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 160) = v6;
  *(v2 + 168) = v7;

  return _swift_task_switch(sub_10001F134, v6, v7);
}

uint64_t sub_10001F134()
{
  v80 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  sub_100010668(*(v0 + 48) + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_appStoreMetrics, v3, &qword_100089388, &qword_100067A70);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100011C14(*(v0 + 120), &qword_100089388, &qword_100067A70);
    v4 = *(v0 + 112);
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = *(v0 + 48) + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_localizedContent;
    InstallSheetContext.source.getter();
    v8 = InstallSheetContext.Source.isAppStore.getter();
    v9 = *(v6 + 8);
    v9(v4, v5);
    if (v8)
    {
      v11 = *(v0 + 96);
      v10 = *(v0 + 104);
      v12 = *(v0 + 88);
      InstallSheetContext.source.getter();
      v13 = (*(v11 + 88))(v10, v12);
      if (v13 == enum case for InstallSheetContext.Source.appStoreWithContext(_:))
      {
        v14 = *(v0 + 104);
        v15 = *(v0 + 80);
        v16 = *(v0 + 64);
        v17 = *(v0 + 72);
        (*(*(v0 + 96) + 96))(v14, *(v0 + 88));
        (*(v17 + 32))(v15, v14, v16);
        LOBYTE(v14) = InstallSheetContext.Source.AppStoreSheetContext.showBiometrics.getter();
        (*(v17 + 8))(v15, v16);
        if (v14)
        {
          goto LABEL_15;
        }

LABEL_13:
        v39 = *(v0 + 264);

        v40 = v39;
        goto LABEL_21;
      }

      if (v13 == enum case for InstallSheetContext.Source.appStore(_:))
      {
        goto LABEL_13;
      }

      v9(*(v0 + 104), *(v0 + 88));
    }

LABEL_15:
    if (*(v0 + 264) == 1)
    {
      v41 = [objc_allocWithZone(LAContext) init];
      *(v0 + 232) = v41;
      *(v0 + 32) = 0;
      v42 = [v41 canEvaluatePolicy:1005 error:v0 + 32];
      v43 = *(v0 + 32);
      *(v0 + 240) = v43;
      if (v42)
      {
        v44 = *(v0 + 56);
        v45 = type metadata accessor for LocalizedCombinedApprovalAndInstallContent(0);
        v46 = (v7 + v45[14]);
        v47 = *v46;
        v48 = v46[1];
        v49 = (v7 + v45[15]);
        v50 = v49[1];
        v76 = *v49;
        v77 = v47;
        v51 = (v7 + v45[16]);
        v53 = *v51;
        v52 = v51[1];
        sub_100010668(v7 + v45[5], v44, &qword_1000893C0, &unk_1000663F0);
        v54 = type metadata accessor for OsloAuthenticationTask(0);
        v55 = objc_allocWithZone(v54);
        v56 = OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalizedContinuation;
        v57 = sub_1000047BC(&unk_1000899D0, &unk_100066640);
        (*(*(v57 - 8) + 56))(&v55[v56], 1, 1, v57);
        v55[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalResult] = 0;
        v58 = &v55[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_localizedContent];
        v59 = type metadata accessor for OsloAuthenticationTask.LocalizedContent(0);
        sub_100010668(v44, v58 + *(v59 + 28), &qword_1000893C0, &unk_1000663F0);
        *v58 = v77;
        v58[1] = v48;
        v58[2] = v76;
        v58[3] = v50;
        v58[4] = v53;
        v58[5] = v52;
        *(v0 + 16) = v55;
        *(v0 + 24) = v54;
        v60 = v43;

        *(v0 + 248) = objc_msgSendSuper2((v0 + 16), "init");
        sub_100011C14(v44, &qword_1000893C0, &unk_1000663F0);
        v61 = swift_task_alloc();
        *(v0 + 256) = v61;
        *v61 = v0;
        v61[1] = sub_10002044C;

        return sub_10002EACC();
      }

      v63 = v43;

      if (v63)
      {
        type metadata accessor for Code(0);
        *(v0 + 40) = -5;
        sub_100022474(&qword_100088578, type metadata accessor for Code, &unk_10006594C);
        v64 = v63;
        if (static _ErrorCodeProtocol.~= infix(_:_:)())
        {
          sub_100021898(1);

          goto LABEL_22;
        }
      }

      if (qword_100088438 != -1)
      {
        swift_once();
      }

      v65 = *(v0 + 48);
      v66 = type metadata accessor for Logger();
      sub_1000105E8(v66, qword_10008C4C0);
      v67 = v65;
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v79 = v78;
        *v70 = 136446466;
        v72 = InstallSheetContext.logKey.getter();
        v74 = sub_10000F78C(v72, v73, &v79);

        *(v70 + 4) = v74;
        *(v70 + 12) = 2114;
        *(v70 + 14) = v63;
        *v71 = v43;
        v75 = v63;
        _os_log_impl(&_mh_execute_header, v68, v69, "[%{public}s] Error evaluating policy: %{public}@", v70, 0x16u);
        sub_100011C14(v71, &qword_100088FD0, &qword_1000673F0);

        sub_10001059C(v78);
      }

      sub_100021898(0);
      goto LABEL_22;
    }

    v40 = 0;
LABEL_21:
    sub_100021898(v40);
LABEL_22:

    v62 = *(v0 + 8);

    return v62();
  }

  v18 = *(v0 + 264);
  sub_100022268(*(v0 + 120), *(v0 + 144));
  v19 = InstallSheetContext.itemID.getter();
  v21 = v20;
  *(v0 + 176) = v20;
  if (v18 == 1)
  {
    v22 = InstallSheetContext.itemID.getter();
    v24 = v23;
    *(v0 + 184) = v23;
    v25 = InstallSheetContext.Source.AppStoreSheetContext.installType.getter();
    v27 = v26;
    *(v0 + 192) = v26;
    v28 = sub_100059AC4(&_swiftEmptyArrayStorage);
    *(v0 + 200) = v28;
    v29 = swift_task_alloc();
    *(v0 + 208) = v29;
    *v29 = v0;
    v29[1] = sub_10001FA2C;
    v82 = v28;
    v30 = v19;
    v31 = v21;
    v32 = v22;
    v33 = v24;
    v34 = v25;
    v35 = v27;
  }

  else
  {
    v36 = sub_100059AC4(&_swiftEmptyArrayStorage);
    *(v0 + 216) = v36;
    v37 = swift_task_alloc();
    *(v0 + 224) = v37;
    *v37 = v0;
    v37[1] = sub_1000202B8;
    v82 = v36;
    v34 = 0x7373696D736964;
    v30 = 0x6C65636E6143;
    v31 = 0xE600000000000000;
    v32 = v19;
    v33 = v21;
    v35 = 0xE700000000000000;
  }

  return sub_100056B2C(v30, v31, v32, v33, v34, v35, 0x6E6F74747562, 0xE600000000000000);
}

uint64_t sub_10001FA2C()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_10001FC00, v3, v2);
}

uint64_t sub_10001FC00()
{
  v57 = v0;
  sub_1000223B0(*(v0 + 144), type metadata accessor for InstallConfirmationAppStoreMetrics);
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 48) + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_localizedContent;
  InstallSheetContext.source.getter();
  v5 = InstallSheetContext.Source.isAppStore.getter();
  v6 = *(v3 + 8);
  v6(v1, v2);
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 88);
  InstallSheetContext.source.getter();
  v10 = (*(v8 + 88))(v7, v9);
  if (v10 == enum case for InstallSheetContext.Source.appStoreWithContext(_:))
  {
    v11 = *(v0 + 104);
    v12 = *(v0 + 80);
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    (*(*(v0 + 96) + 96))(v11, *(v0 + 88));
    (*(v14 + 32))(v12, v11, v13);
    LOBYTE(v11) = InstallSheetContext.Source.AppStoreSheetContext.showBiometrics.getter();
    (*(v14 + 8))(v12, v13);
    if (v11)
    {
      goto LABEL_8;
    }

LABEL_6:
    v15 = *(v0 + 264);

    v16 = v15;
    goto LABEL_14;
  }

  if (v10 == enum case for InstallSheetContext.Source.appStore(_:))
  {
    goto LABEL_6;
  }

  v6(*(v0 + 104), *(v0 + 88));
LABEL_8:
  if (*(v0 + 264) == 1)
  {
    v17 = [objc_allocWithZone(LAContext) init];
    *(v0 + 232) = v17;
    *(v0 + 32) = 0;
    v18 = [v17 canEvaluatePolicy:1005 error:v0 + 32];
    v19 = *(v0 + 32);
    *(v0 + 240) = v19;
    if (v18)
    {
      v20 = *(v0 + 56);
      v21 = type metadata accessor for LocalizedCombinedApprovalAndInstallContent(0);
      v22 = (v4 + v21[14]);
      v23 = *v22;
      v24 = v22[1];
      v25 = (v4 + v21[15]);
      v26 = v25[1];
      v53 = *v25;
      v54 = v23;
      v27 = (v4 + v21[16]);
      v29 = *v27;
      v28 = v27[1];
      sub_100010668(v4 + v21[5], v20, &qword_1000893C0, &unk_1000663F0);
      v30 = type metadata accessor for OsloAuthenticationTask(0);
      v31 = objc_allocWithZone(v30);
      v32 = OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalizedContinuation;
      v33 = sub_1000047BC(&unk_1000899D0, &unk_100066640);
      (*(*(v33 - 8) + 56))(&v31[v32], 1, 1, v33);
      v31[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_finalResult] = 0;
      v34 = &v31[OBJC_IVAR____TtC26AppDistributionLaunchAngel22OsloAuthenticationTask_localizedContent];
      v35 = type metadata accessor for OsloAuthenticationTask.LocalizedContent(0);
      sub_100010668(v20, v34 + *(v35 + 28), &qword_1000893C0, &unk_1000663F0);
      *v34 = v54;
      v34[1] = v24;
      v34[2] = v53;
      v34[3] = v26;
      v34[4] = v29;
      v34[5] = v28;
      *(v0 + 16) = v31;
      *(v0 + 24) = v30;
      v36 = v19;

      *(v0 + 248) = objc_msgSendSuper2((v0 + 16), "init");
      sub_100011C14(v20, &qword_1000893C0, &unk_1000663F0);
      v37 = swift_task_alloc();
      *(v0 + 256) = v37;
      *v37 = v0;
      v37[1] = sub_10002044C;

      return sub_10002EACC();
    }

    v40 = v19;

    if (v40)
    {
      type metadata accessor for Code(0);
      *(v0 + 40) = -5;
      sub_100022474(&qword_100088578, type metadata accessor for Code, &unk_10006594C);
      v41 = v40;
      if (static _ErrorCodeProtocol.~= infix(_:_:)())
      {
        sub_100021898(1);

        goto LABEL_15;
      }
    }

    if (qword_100088438 != -1)
    {
      swift_once();
    }

    v42 = *(v0 + 48);
    v43 = type metadata accessor for Logger();
    sub_1000105E8(v43, qword_10008C4C0);
    v44 = v42;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = v55;
      *v47 = 136446466;
      v49 = InstallSheetContext.logKey.getter();
      v51 = sub_10000F78C(v49, v50, &v56);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2114;
      *(v47 + 14) = v40;
      *v48 = v19;
      v52 = v40;
      _os_log_impl(&_mh_execute_header, v45, v46, "[%{public}s] Error evaluating policy: %{public}@", v47, 0x16u);
      sub_100011C14(v48, &qword_100088FD0, &qword_1000673F0);

      sub_10001059C(v55);
    }

    sub_100021898(0);
    goto LABEL_15;
  }

  v16 = 0;
LABEL_14:
  sub_100021898(v16);
LABEL_15:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1000202B8()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_1000224C4, v3, v2);
}

uint64_t sub_10002044C(char a1)
{
  v2 = *v1;
  *(*v1 + 265) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return _swift_task_switch(sub_1000205A8, v4, v3);
}

uint64_t sub_1000205A8()
{
  v1 = *(v0 + 265);

  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_100021898(v1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000206A8(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  sub_1000047BC(&qword_100089388, &qword_100067A70);
  v2[14] = swift_task_alloc();
  v3 = type metadata accessor for InstallConfirmationAppStoreMetrics(0);
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[18] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[19] = v5;
  v2[20] = v4;

  return _swift_task_switch(sub_1000207D4, v5, v4);
}

uint64_t sub_1000207D4()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  sub_100010668(v0[13] + OBJC_IVAR____TtC26AppDistributionLaunchAngel40CombinedApprovalAndInstallViewController_appStoreMetrics, v3, &qword_100089388, &qword_100067A70);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[14];

    sub_100011C14(v4, &qword_100089388, &qword_100067A70);

    v5 = v0[1];

    return v5();
  }

  else
  {
    sub_100022268(v0[14], v0[17]);
    v7 = InstallSheetContext.itemID.getter();
    v9 = v8;
    v0[21] = v8;
    sub_1000047BC(&qword_100089500, &qword_100066630);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100065650;
    *(inited + 32) = 0x72556E6F69746361;
    *(inited + 40) = 0xE90000000000006CLL;
    v11 = URL.absoluteString.getter();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v11;
    *(inited + 56) = v12;
    v0[22] = sub_100059AC4(inited);
    swift_setDeallocating();
    sub_100011C14(inited + 32, &qword_100089508, &qword_100066638);
    v13 = swift_task_alloc();
    v0[23] = v13;
    *v13 = v0;
    v13[1] = sub_100020A48;

    return sub_100056B2C(0x726F4D6E7261654CLL, 0xE900000000000065, v7, v9, 0x657461676976616ELL, 0xE800000000000000, 1802398060, 0xE400000000000000);
  }
}