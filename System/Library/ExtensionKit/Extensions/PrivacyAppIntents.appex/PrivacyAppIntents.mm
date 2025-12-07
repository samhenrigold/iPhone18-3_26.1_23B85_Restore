uint64_t sub_1000016B8(uint64_t a1)
{
  v2 = sub_100001868();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000017C0();
  sub_100008A84();
  return 0;
}

unint64_t sub_1000017C0()
{
  result = qword_100014058;
  if (!qword_100014058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014058);
  }

  return result;
}

unint64_t sub_100001868()
{
  result = qword_100014060;
  if (!qword_100014060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014060);
  }

  return result;
}

uint64_t sub_100001964(char a1)
{
  v1 = 1;
  switch(a1)
  {
    case 25:
      v33 = &type metadata for TelephonyUtilities;
      v23 = sub_1000084EC();
      goto LABEL_23;
    case 26:
      v14 = MobileGestalt_get_current_device();
      if (v14)
      {
        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_44;
    case 28:
    case 31:
      goto LABEL_41;
    case 29:
      v12 = [objc_opt_self() currentDevice];
      deviceProximityCapability = [v12 sf_inRetailKioskMode];
      goto LABEL_29;
    case 30:
      v14 = MobileGestalt_get_current_device();
      if (v14)
      {
LABEL_20:
        v24 = v14;
        iPadCapability = MobileGestalt_get_iPadCapability();
LABEL_42:
        v31 = iPadCapability;

        v1 = v31 ^ 1;
        return v1 & 1;
      }

      __break(1u);
LABEL_12:
      v15 = [objc_opt_self() currentDevice];
      v16 = [v15 sf_inRetailKioskMode];

      if (v16)
      {
        goto LABEL_40;
      }

      v17 = MobileGestalt_get_current_device();
      if (!v17)
      {
        goto LABEL_46;
      }

      v18 = v17;
      v19 = MobileGestalt_get_iPadCapability();

      if (v19)
      {
LABEL_40:
        v1 = 0;
        return v1 & 1;
      }

      v20 = MobileGestalt_get_current_device();
      if (!v20)
      {
LABEL_49:
        __break(1u);
        JUMPOUT(0x100001D7CLL);
      }

      v21 = v20;
      isSimulator = MobileGestalt_get_isSimulator();

      if (isSimulator)
      {
        goto LABEL_40;
      }

      v11 = [objc_opt_self() isContactlessTCCServiceEligible];
LABEL_31:
      v1 = v11;
      return v1 & 1;
    case 33:
      v11 = AMFIShouldShowDeveloperModeSettings();
      goto LABEL_31;
    case 34:
      v26 = [objc_opt_self() sharedManager];
      if (!v26)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v24 = v26;
      iPadCapability = [v26 isSharedIPad];
      goto LABEL_42;
    case 35:
      v27 = [objc_opt_self() currentDevice];
      v28 = [v27 sf_inRetailKioskMode];

      if (v28)
      {
        goto LABEL_40;
      }

      v29 = MobileGestalt_get_current_device();
      if (!v29)
      {
        goto LABEL_47;
      }

      v12 = v29;
      deviceProximityCapability = MobileGestalt_get_deviceProximityCapability();
LABEL_29:
      v1 = deviceProximityCapability;

      return v1 & 1;
    case 36:
      v11 = [objc_opt_self() shouldShowDataAndSensors];
      goto LABEL_31;
    case 37:
      goto LABEL_12;
    case 38:
      v3 = [objc_opt_self() currentDevice];
      v4 = [v3 sf_inRetailKioskMode];

      if (v4)
      {
        goto LABEL_40;
      }

      v5 = MobileGestalt_get_current_device();
      if (!v5)
      {
        goto LABEL_45;
      }

      v6 = v5;
      v7 = MobileGestalt_get_iPadCapability();

      if (v7)
      {
        goto LABEL_40;
      }

      v8 = MobileGestalt_get_current_device();
      if (!v8)
      {
        goto LABEL_48;
      }

      v9 = v8;
      v10 = MobileGestalt_get_isSimulator();

      if (v10)
      {
        goto LABEL_40;
      }

      v11 = [objc_opt_self() isSecureElementTCCServiceEligible];
      goto LABEL_31;
    case 39:
      sub_100008AB4();
      sub_100008A94();
      v1 = sub_100008AA4();

      return v1 & 1;
    case 40:
      v32[0] = 0;
      if (os_eligibility_get_domain_answer())
      {
        v30 = 0;
      }

      else
      {
        v30 = v32[0] == 4;
      }

      v1 = v30;
      return v1 & 1;
    case 42:
      if (PSIsInEDUMode())
      {
        goto LABEL_40;
      }

LABEL_41:
      v24 = [objc_opt_self() currentDevice];
      iPadCapability = [v24 sf_inRetailKioskMode];
      goto LABEL_42;
    case 43:
      v33 = &type metadata for PasscodeAndBiometricsSettingsFeatureFlags;
      v23 = sub_100008498();
LABEL_23:
      v34 = v23;
      v1 = sub_100008A74();
      sub_1000077A0(v32);
      return v1 & 1;
    default:
      return v1 & 1;
  }
}

unint64_t sub_100001E2C(char a1)
{
  result = 0x746F6F7223;
  switch(a1)
  {
    case 1:
      result = 0x4152545F52455355;
      break;
    case 2:
      result = 0x53544341544E4F43;
      break;
    case 3:
      result = 0x5241444E454C4143;
      break;
    case 4:
      result = 0x5245444E494D4552;
      break;
    case 5:
      result = 0x445F444552494150;
      break;
    case 6:
      result = 0x534F544F4850;
      break;
    case 7:
      result = 0x524F535345434341;
      break;
    case 8:
      result = 0x50495245505F5442;
      break;
    case 9:
      result = 0x4F48504F5243494DLL;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x4152454D4143;
      break;
    case 12:
      result = 0x574F4C4C4957;
      break;
    case 13:
      result = 0x42494C414944454DLL;
      break;
    case 14:
      result = 0x45434341454C4946;
      break;
    case 15:
    case 41:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x5349545245564441;
      break;
    case 17:
      result = 0x5F59434156495250;
      break;
    case 18:
      result = 0x4E4F495441434F4CLL;
      break;
    case 19:
    case 20:
    case 43:
      result = 0xD000000000000018;
      break;
    case 21:
    case 40:
      result = 0xD000000000000019;
      break;
    case 22:
      result = 0x454E5F4C41434F4CLL;
      break;
    case 23:
      result = 0x54454C4C4157;
      break;
    case 24:
      result = 0x5355434F46;
      break;
    case 25:
      result = 0x53494C4B434F4C42;
      break;
    case 26:
      result = 0x435F595445464153;
      break;
    case 27:
      result = 0xD000000000000010;
      break;
    case 28:
      result = 0x48544C414548;
      break;
    case 29:
      result = 0x445F48544C414548;
      break;
    case 30:
      result = 0x43414E414D4C41;
      break;
    case 31:
      result = 0x5359454B53534150;
      break;
    case 32:
      result = 0xD000000000000016;
      break;
    case 33:
      result = 0xD000000000000017;
      break;
    case 34:
      result = 0x4E574F444B434F4CLL;
      break;
    case 35:
      result = 0xD000000000000013;
      break;
    case 36:
      result = 0xD000000000000010;
      break;
    case 37:
      result = 0x4C544341544E4F43;
      break;
    case 38:
      result = 0x455F455255434553;
      break;
    case 39:
      result = 0xD000000000000010;
      break;
    case 42:
      result = 0x4E4F49544F4DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000023A4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100001E2C(*a1);
  v5 = v4;
  if (v3 == sub_100001E2C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100008AE4();
  }

  return v8 & 1;
}

unint64_t sub_100002430()
{
  result = qword_100014078;
  if (!qword_100014078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014078);
  }

  return result;
}

Swift::Int sub_100002484()
{
  v1 = *v0;
  sub_100008B04();
  sub_100001E2C(v1);
  sub_100008AC4();

  return sub_100008B24();
}

uint64_t sub_1000024E8(uint64_t a1)
{
  sub_100001E2C(*v1);
  sub_100008AC4();
}

Swift::Int sub_10000253C(uint64_t a1)
{
  v2 = *v1;
  sub_100008B04();
  sub_100001E2C(v2);
  sub_100008AC4();

  return sub_100008B24();
}

unint64_t sub_10000259C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100007B04(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000025CC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100001E2C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10000263C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000269C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_100007B04(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1000026E8()
{
  result = qword_100014090;
  if (!qword_100014090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014090);
  }

  return result;
}

unint64_t sub_100002740()
{
  result = qword_100014098;
  if (!qword_100014098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014098);
  }

  return result;
}

Swift::Int sub_100002794()
{
  sub_100008B04();
  sub_100008B14(0);
  return sub_100008B24();
}

Swift::Int sub_1000027D8(uint64_t a1)
{
  sub_100008B04();
  sub_100008B14(0);
  return sub_100008B24();
}

uint64_t sub_100002840()
{
  v0 = sub_100008A64();
  sub_100007824(v0, qword_100015570);
  sub_1000077EC(v0, qword_100015570);
  return sub_100008A54();
}

void *sub_1000028A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000088F4();
  *a1 = v3;
  return result;
}

uint64_t (*sub_100002918(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000088E4();
  return sub_10000298C;
}

void sub_10000298C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000029D8()
{
  result = qword_1000140A0;
  if (!qword_1000140A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140A0);
  }

  return result;
}

unint64_t sub_100002A2C()
{
  result = qword_1000140A8;
  if (!qword_1000140A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140A8);
  }

  return result;
}

uint64_t sub_100002A80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008540();
  v5 = sub_100007888();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100002AF0()
{
  result = qword_1000140B0;
  if (!qword_1000140B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140B0);
  }

  return result;
}

unint64_t sub_100002B48()
{
  result = qword_1000140B8;
  if (!qword_1000140B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140B8);
  }

  return result;
}

uint64_t sub_100002C38(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100008540();
  v7 = sub_100008594();
  v8 = sub_100007888();
  *v5 = v2;
  v5[1] = sub_100002D0C;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_100002D0C()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100002E14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007B58();
  *a1 = result;
  return result;
}

uint64_t sub_100002E3C(uint64_t a1)
{
  v2 = sub_1000029D8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100002E7C()
{
  result = qword_1000140C0;
  if (!qword_1000140C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140C0);
  }

  return result;
}

unint64_t sub_100002ED4()
{
  result = qword_1000140C8;
  if (!qword_1000140C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140C8);
  }

  return result;
}

unint64_t sub_100002F2C()
{
  result = qword_1000140D0;
  if (!qword_1000140D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140D0);
  }

  return result;
}

uint64_t sub_100002F80()
{
  v0 = sub_100007704(&qword_100014160, "0)");
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100008A64();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100008A24();
  sub_100007824(v5, qword_100015588);
  sub_1000077EC(v5, qword_100015588);
  sub_100008A54();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100008A14();
}

uint64_t sub_1000030F0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_100008954();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007704(&qword_100014158, "0)");
  __chkstk_darwin(v7 - 8);
  v9 = v31 - v8;
  v10 = sub_100007704(&qword_100014160, "0)");
  __chkstk_darwin(v10 - 8);
  v12 = v31 - v11;
  v13 = sub_100008A64();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  __chkstk_darwin(v15);
  switch(a1)
  {
    case 1:
    case 8:
    case 13:
      sub_100008A54();
      sub_100008A54();
      (*(v14 + 56))(v12, 0, 1, v13);
      sub_100008924();
      v23 = sub_100008934();
      (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
      sub_100007704(&qword_100014168, "0)");
      *(swift_allocObject() + 16) = xmmword_100008F00;
      sub_100008A54();
      sub_100008A54();
      goto LABEL_14;
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
    case 9:
    case 10:
    case 11:
    case 12:
    case 18:
    case 19:
    case 20:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
      sub_100008A54();
      sub_100008A54();
      (*(v14 + 56))(v12, 0, 1, v13);
      sub_100008924();
      v28 = sub_100008934();
      (*(*(v28 - 8) + 56))(v9, 0, 1, v28);
      sub_100007704(&qword_100014168, "0)");
      *(swift_allocObject() + 16) = xmmword_100008EA0;
      sub_100008A54();
      goto LABEL_14;
    case 6:
      sub_100008A54();
      sub_100008A54();
      (*(v14 + 56))(v12, 0, 1, v13);
      sub_100008924();
      v26 = sub_100008934();
      (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
      sub_100007704(&qword_100014168, "0)");
      *(swift_allocObject() + 16) = xmmword_100008EA0;
      sub_100008A54();
      goto LABEL_14;
    case 14:
    case 27:
      sub_100008A54();
      sub_100008A54();
      (*(v14 + 56))(v12, 0, 1, v13);
      sub_100008924();
      v18 = sub_100008934();
      (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
      sub_100007704(&qword_100014168, "0)");
      *(swift_allocObject() + 16) = xmmword_100008E90;
      sub_100008A54();
      sub_100008A54();
      sub_100008A54();
      goto LABEL_14;
    case 15:
      v37[3] = &type metadata for AppleAccountFeatureFlags;
      v37[4] = sub_10000774C();
      LODWORD(v35) = sub_100008A74();
      sub_1000077A0(v37);
      sub_100008A54();
      sub_100008A54();
      (*(v14 + 56))(v12, 0, 1, v13);
      sub_100008924();
      v19 = sub_100008934();
      (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
      sub_100007704(&qword_100014168, "0)");
      v20 = *(v14 + 72);
      v31[0] = "Analytics & Improvements";
      v31[1] = "share analytics & improvements";
      v32 = 3 * v20;
      v33 = 4 * v20;
      v34 = 5 * v20;
      if (v35)
      {
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_100008EF0;
        v35 = v21;
        sub_100008A54();
        sub_100008A54();
        sub_100008A54();
        sub_100008A54();
        sub_100008A54();
        sub_100008A54();
        sub_100008A54();
        sub_100008A54();
        sub_100008A54();
        v34 = 12;
        v33 = 11;
        v22 = 10;
      }

      else
      {
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_100008EE0;
        v35 = v30;
        sub_100008A54();
        sub_100008A54();
        sub_100008A54();
        sub_100008A54();
        sub_100008A54();
        sub_100008A54();
        sub_100008A54();
        sub_100008A54();
        v34 = 11;
        v33 = 10;
        v22 = 9;
      }

      v32 = v22;
      sub_100008A54();
      sub_100008A54();
      sub_100008A54();
      sub_100008A54();
      sub_100008A54();
      sub_100008944();
      return (*(v4 + 32))(v36, v6, v3);
    case 16:
      sub_100008A54();
      sub_100008A54();
      (*(v14 + 56))(v12, 0, 1, v13);
      sub_100008924();
      v17 = sub_100008934();
      (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
      sub_100007704(&qword_100014168, "0)");
      *(swift_allocObject() + 16) = xmmword_100008ED0;
      sub_100008A54();
      sub_100008A54();
      sub_100008A54();
      sub_100008A54();
      goto LABEL_14;
    case 17:
      sub_100008A54();
      sub_100008A54();
      (*(v14 + 56))(v12, 0, 1, v13);
      sub_100008924();
      v24 = sub_100008934();
      (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
      sub_100007704(&qword_100014168, "0)");
      *(swift_allocObject() + 16) = xmmword_100008EC0;
      sub_100008A54();
      sub_100008A54();
      sub_100008A54();
      sub_100008A54();
      sub_100008A54();
      goto LABEL_14;
    case 21:
      sub_100008A54();
      sub_100008A54();
      (*(v14 + 56))(v12, 0, 1, v13);
      sub_100008924();
      v25 = sub_100008934();
      (*(*(v25 - 8) + 56))(v9, 0, 1, v25);
      sub_100007704(&qword_100014168, "0)");
      *(swift_allocObject() + 16) = xmmword_100008EB0;
      sub_100008A54();
      sub_100008A54();
      sub_100008A54();
      sub_100008A54();
      sub_100008A54();
      sub_100008A54();
      sub_100008A54();
      goto LABEL_14;
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
      sub_100008A54();
      sub_100008A54();
      (*(v14 + 56))(v12, 0, 1, v13);
      sub_100008924();
      v27 = sub_100008934();
      (*(*(v27 - 8) + 56))(v9, 0, 1, v27);
      goto LABEL_14;
    default:
      sub_100008A54();
      (*(v14 + 56))(v12, 1, 1, v13);
      sub_100008924();
      v16 = sub_100008934();
      (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
      sub_100007704(&qword_100014168, "0)");
      *(swift_allocObject() + 16) = xmmword_100008F00;
      sub_100008A54();
      sub_100008A54();
LABEL_14:
      sub_100008A54();
      return sub_100008944();
  }
}

uint64_t sub_100006348(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008840;

  return sub_100007F74(a1);
}

uint64_t sub_1000063F0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100008810;

  return sub_100008160();
}

uint64_t sub_100006494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100006554;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100006554(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100006658()
{
  result = qword_1000140D8;
  if (!qword_1000140D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140D8);
  }

  return result;
}

uint64_t sub_1000066AC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100006750;

  return sub_100007E54();
}

uint64_t sub_100006750(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_100006868()
{
  result = qword_1000140E0;
  if (!qword_1000140E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140E0);
  }

  return result;
}

unint64_t sub_1000068C0()
{
  result = qword_1000140E8;
  if (!qword_1000140E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140E8);
  }

  return result;
}

unint64_t sub_100006918()
{
  result = qword_1000140F0;
  if (!qword_1000140F0)
  {
    sub_10000263C(&qword_1000140F8, qword_100009278);
    sub_1000068C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140F0);
  }

  return result;
}

uint64_t sub_10000699C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100006658();
  *v5 = v2;
  v5[1] = sub_100006A50;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100006A50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100006B44(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100006BE8;

  return sub_100008344();
}

uint64_t sub_100006BE8(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_100006D04()
{
  result = qword_100014100;
  if (!qword_100014100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014100);
  }

  return result;
}

uint64_t sub_100006D58(uint64_t a1)
{
  v1 = sub_100007704(&qword_100014180, &qword_1000096E0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_100007704(&qword_100014188, &qword_1000096E8);
  __chkstk_darwin(v5);
  sub_100002F2C();
  sub_1000089F4();
  v8._object = 0x800000010000BC00;
  v8._countAndFlagsBits = 0xD00000000000003CLL;
  sub_1000089E4(v8);
  (*(v2 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_1000089D4();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1000089E4(v9);
  return sub_100008A04();
}

uint64_t sub_100006F1C()
{
  v0 = qword_100014068;

  return v0;
}

unint64_t sub_100006F58()
{
  result = qword_100014108;
  if (!qword_100014108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014108);
  }

  return result;
}

unint64_t sub_100006FB0()
{
  result = qword_100014110;
  if (!qword_100014110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014110);
  }

  return result;
}

unint64_t sub_100007008()
{
  result = qword_100014118;
  if (!qword_100014118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014118);
  }

  return result;
}

uint64_t sub_10000705C(uint64_t a1)
{
  sub_100007888();
  v2 = sub_100008994();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_1000070CC()
{
  result = qword_100014120;
  if (!qword_100014120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014120);
  }

  return result;
}

unint64_t sub_100007124()
{
  result = qword_100014128;
  if (!qword_100014128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014128);
  }

  return result;
}

unint64_t sub_10000717C()
{
  result = qword_100014130;
  if (!qword_100014130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014130);
  }

  return result;
}

unint64_t sub_1000071D4()
{
  result = qword_100014138;
  if (!qword_100014138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014138);
  }

  return result;
}

uint64_t sub_10000726C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_1000077EC(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100007358(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000263C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000073A0(uint64_t a1)
{
  v2 = sub_100002F2C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000073F0()
{
  result = qword_100014150;
  if (!qword_100014150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014150);
  }

  return result;
}

uint64_t sub_10000744C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100006A50;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100007510(uint64_t a1)
{
  v2 = sub_10000717C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000075A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD5)
  {
    goto LABEL_17;
  }

  if (a2 + 43 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 43) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 43;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 43;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 43;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2C;
  v8 = v6 - 44;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100007634(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 43 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 43) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD5)
  {
    v4 = 0;
  }

  if (a2 > 0xD4)
  {
    v5 = ((a2 - 213) >> 8) + 1;
    *result = a2 + 43;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 43;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100007704(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000774C()
{
  result = qword_100014170;
  if (!qword_100014170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014170);
  }

  return result;
}

uint64_t sub_1000077A0(void *a1)
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

uint64_t sub_1000077EC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100007824(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100007888()
{
  result = qword_100014178;
  if (!qword_100014178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014178);
  }

  return result;
}

char *sub_1000078DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000791C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000078FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100007A10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000791C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007704(&qword_1000141A8, &qword_100009708);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100007A10(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007704(&qword_100014190, &qword_1000096F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_100007B04(uint64_t a1, uint64_t a2)
{
  v2 = sub_100008AF4();

  if (v2 >= 0x2C)
  {
    return 44;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100007B58()
{
  v17 = sub_100008984();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100007704(&qword_1000141B0, &qword_100009720);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100007704(&qword_100014160, "0)");
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_100008A64();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100007704(&qword_1000141B8, &qword_100009728);
  sub_100008A54();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 44;
  v14 = sub_1000088D4();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_100002F2C();
  return sub_100008914();
}

uint64_t sub_100007E70()
{
  sub_1000078DC(0, 44, 0);
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  do
  {
    v4 = *(&off_100010C80 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_1000078DC((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 44);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100007F94()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v7 = *v3++;
      v6 = v7;
      if (sub_100001964(v7))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000078FC(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v5 = _swiftEmptyArrayStorage[2];
        v4 = _swiftEmptyArrayStorage[3];
        if (v5 >= v4 >> 1)
        {
          sub_1000078FC((v4 > 1), v5 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v5 + 1;
        *(&_swiftEmptyArrayStorage[4] + v5) = v6;
      }

      --v2;
    }

    while (v2);
  }

  v8 = _swiftEmptyArrayStorage[2];
  if (v8)
  {
    sub_1000078DC(0, v8, 0);
    v9 = _swiftEmptyArrayStorage[2];
    v10 = 32;
    do
    {
      v11 = *(_swiftEmptyArrayStorage + v10);
      v12 = _swiftEmptyArrayStorage[3];
      if (v9 >= v12 >> 1)
      {
        sub_1000078DC((v12 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      *(&_swiftEmptyArrayStorage[4] + v9) = v11;
      ++v10;
      ++v9;
      --v8;
    }

    while (v8);
  }

  v13 = *(v0 + 8);

  return v13(_swiftEmptyArrayStorage);
}

uint64_t sub_10000817C()
{
  for (i = 0; i != 44; ++i)
  {
    v4 = *(&off_100010C80 + i + 32);
    if (sub_100001964(v4))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000078FC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v3 = _swiftEmptyArrayStorage[2];
      v2 = _swiftEmptyArrayStorage[3];
      if (v3 >= v2 >> 1)
      {
        sub_1000078FC((v2 > 1), v3 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v3 + 1;
      *(&_swiftEmptyArrayStorage[4] + v3) = v4;
    }
  }

  v5 = _swiftEmptyArrayStorage[2];
  if (v5)
  {
    sub_1000078DC(0, v5, 0);
    v6 = _swiftEmptyArrayStorage[2];
    v7 = 32;
    do
    {
      v8 = *(_swiftEmptyArrayStorage + v7);
      v9 = _swiftEmptyArrayStorage[3];
      if (v6 >= v9 >> 1)
      {
        sub_1000078DC((v9 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *(&_swiftEmptyArrayStorage[4] + v6) = v8;
      ++v7;
      ++v6;
      --v5;
    }

    while (v5);
  }

  v10 = *(v0 + 8);

  return v10(_swiftEmptyArrayStorage);
}

uint64_t sub_100008360()
{
  for (i = 0; i != 44; ++i)
  {
    v4 = *(&off_100010C80 + i + 32);
    if (sub_100001964(v4))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000078FC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v3 = _swiftEmptyArrayStorage[2];
      v2 = _swiftEmptyArrayStorage[3];
      if (v3 >= v2 >> 1)
      {
        sub_1000078FC((v2 > 1), v3 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v3 + 1;
      *(&_swiftEmptyArrayStorage[4] + v3) = v4;
    }
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v5 = LOBYTE(_swiftEmptyArrayStorage[4]);
  }

  else
  {
    v5 = 44;
  }

  v6 = *(v0 + 8);

  return v6(v5);
}

unint64_t sub_100008498()
{
  result = qword_100014198;
  if (!qword_100014198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014198);
  }

  return result;
}

unint64_t sub_1000084EC()
{
  result = qword_1000141A0;
  if (!qword_1000141A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141A0);
  }

  return result;
}

unint64_t sub_100008540()
{
  result = qword_1000141C0;
  if (!qword_1000141C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141C0);
  }

  return result;
}

unint64_t sub_100008594()
{
  result = qword_1000141C8;
  if (!qword_1000141C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141C8);
  }

  return result;
}

uint64_t sub_10000861C(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_10000866C(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000086FC()
{
  result = qword_1000141D0;
  if (!qword_1000141D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141D0);
  }

  return result;
}

unint64_t sub_100008754()
{
  result = qword_1000141D8;
  if (!qword_1000141D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141D8);
  }

  return result;
}

unint64_t sub_1000087AC()
{
  result = qword_1000141E0;
  if (!qword_1000141E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141E0);
  }

  return result;
}