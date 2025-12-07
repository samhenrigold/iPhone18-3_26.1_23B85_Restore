id sub_100001924()
{
  type metadata accessor for GeneralSettingsIntentsBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10001CB30 = result;
  return result;
}

uint64_t sub_100001980()
{
  v0 = sub_100001AE8();

  return static WidgetBundleBuilder.buildBlock<A>(_:)(v0, &type metadata for TwentyFourHourTimeToggleControl, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001A58();
  sub_10000F948();
  return 0;
}

unint64_t sub_100001A58()
{
  result = qword_10001C710;
  if (!qword_10001C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C710);
  }

  return result;
}

unint64_t sub_100001AE8()
{
  result = qword_10001C718;
  if (!qword_10001C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C718);
  }

  return result;
}

id sub_100001B88(unsigned __int8 a1)
{
  v1 = 1;
  if (a1 > 0x17u)
  {
    if (a1 <= 0x1Au)
    {
      if (a1 == 24)
      {
        v13 = swift_allocObject();
        *(v13 + 16) = 0;
        v14 = [objc_allocWithZone(MTSSystemCommissionerPairingManager) init];
        v25[4] = sub_100008DBC;
        v25[5] = v13;
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 1107296256;
        v25[2] = sub_100008038;
        v25[3] = &unk_100019340;
        v15 = _Block_copy(v25);

        [v14 fetchPairingsWithCompletionHandler:v15];
        _Block_release(v15);

        swift_beginAccess();
        v1 = *(v13 + 16);

        return (v1 & 1);
      }

      if (a1 != 25)
      {
        if (a1 == 26)
        {
          if (qword_10001C578 != -1)
          {
            swift_once();
          }

          v5 = qword_10001CB68;
          v6 = OBJC_IVAR____TtC22GeneralSettingsIntents35GeneralSettingsPointerDeviceManager_pointerDevices;
          swift_beginAccess();
          v7 = *(v5 + v6);
          if ((v7 & 0xC000000000000001) != 0)
          {

            v8 = sub_10000FAE8();
          }

          else
          {
            v8 = *(v7 + 16);
          }

          v1 = v8 != 0;
        }

        return (v1 & 1);
      }

      result = MobileGestalt_get_current_device();
      if (result)
      {
        v3 = result;
        supportsSSHBButtonType = MobileGestalt_get_supportsSSHBButtonType();
        goto LABEL_30;
      }
    }

    else
    {
      if (a1 - 28 >= 4)
      {
        if (a1 == 27)
        {
          v3 = [objc_allocWithZone(CRCarPlayPreferences) init];
          supportsSSHBButtonType = [v3 isCarPlayAllowed];
          goto LABEL_30;
        }

        if (a1 != 32)
        {
          return (v1 & 1);
        }

        result = MobileGestalt_get_current_device();
        if (result)
        {
          v9 = result;
          continuityCapability = MobileGestalt_get_continuityCapability();

          if (continuityCapability)
          {
            v11 = [objc_opt_self() currentDevice];
            v12 = [v11 userInterfaceIdiom];

            v1 = v12 == 0;
            return (v1 & 1);
          }

          goto LABEL_39;
        }

LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      result = MobileGestalt_get_current_device();
      if (result)
      {
        v3 = result;
        supportsSSHBButtonType = MobileGestalt_get_continuityCapability();
LABEL_30:
        v1 = supportsSSHBButtonType;

        return (v1 & 1);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_42;
  }

  if (a1 - 12 < 0xA)
  {
    v1 = !sub_1000082F4();
    return (v1 & 1);
  }

  if (a1 != 23)
  {
    return (v1 & 1);
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_43;
  }

  v16 = result;
  v17 = MobileGestalt_copy_regionCode_obj();

  if (!v17)
  {
    goto LABEL_39;
  }

  v18 = sub_10000F9F8();
  v20 = v19;

  if (v18 == 18499 && v20 == 0xE200000000000000)
  {

    goto LABEL_35;
  }

  v21 = sub_10000FB98();

  if ((v21 & 1) == 0)
  {
LABEL_39:
    v1 = 0;
    return (v1 & 1);
  }

LABEL_35:
  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v22 = result;
  isSimulator = MobileGestalt_get_isSimulator();

  if (isSimulator)
  {
    goto LABEL_39;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v24 = result;
    MobileGestalt_get_nfcRadio();

    goto LABEL_39;
  }

LABEL_45:
  __break(1u);
  return result;
}

unint64_t sub_100001F7C(char a1)
{
  result = 0x746F6F7223;
  switch(a1)
  {
    case 1:
      result = 0x74756F6241;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
    case 28:
      result = 0xD00000000000001ALL;
      break;
    case 6:
    case 14:
    case 20:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x444E415F45544144;
      break;
    case 9:
      v3 = 13;
      goto LABEL_20;
    case 10:
      result = 0x49564F52505F5654;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0x7465736552;
      break;
    case 13:
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD00000000000001CLL;
      break;
    case 17:
    case 29:
      result = 0xD000000000000025;
      break;
    case 18:
      v3 = 5;
LABEL_20:
      result = v3 | 0xD000000000000012;
      break;
    case 19:
      result = 0xD000000000000030;
      break;
    case 21:
      result = 0x7566237465736552;
      break;
    case 22:
      result = 0x574F445455485323;
      break;
    case 23:
      result = 0x4B4E494C5F43464ELL;
      break;
    case 24:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0x5455425F454D4F48;
      break;
    case 26:
      result = 0x535245544E494F50;
      break;
    case 27:
      result = 0x59414C50524143;
      break;
    case 30:
      result = 0xD00000000000001DLL;
      break;
    case 31:
      result = 0xD000000000000023;
      break;
    case 32:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100002390(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100001F7C(*a1);
  v5 = v4;
  if (v3 == sub_100001F7C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000FB98();
  }

  return v8 & 1;
}

unint64_t sub_10000241C()
{
  result = qword_10001C730;
  if (!qword_10001C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C730);
  }

  return result;
}

Swift::Int sub_100002470()
{
  v1 = *v0;
  sub_10000FBC8();
  sub_100001F7C(v1);
  sub_10000FA08();

  return sub_10000FBD8();
}

uint64_t sub_1000024D4(uint64_t a1)
{
  sub_100001F7C(*v1);
  sub_10000FA08();
}

Swift::Int sub_100002528(uint64_t a1)
{
  v2 = *v1;
  sub_10000FBC8();
  sub_100001F7C(v2);
  sub_10000FA08();

  return sub_10000FBD8();
}

unint64_t sub_100002588@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000083C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000025B8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100001F7C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100002628(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_1000083C4(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1000026D4()
{
  result = qword_10001C748;
  if (!qword_10001C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C748);
  }

  return result;
}

unint64_t sub_10000272C()
{
  result = qword_10001C750;
  if (!qword_10001C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C750);
  }

  return result;
}

uint64_t sub_100002780()
{
  v0 = sub_10000F8F8();
  sub_10000874C(v0, qword_10001CB38);
  sub_100008714(v0, qword_10001CB38);
  return sub_10000F8E8();
}

void *sub_1000027E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000F688();
  *a1 = v3;
  return result;
}

uint64_t (*sub_100002858(uint64_t *a1))()
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
  *(v2 + 32) = sub_10000F678();
  return sub_1000028CC;
}

void sub_1000028CC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100002918()
{
  result = qword_10001C758;
  if (!qword_10001C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C758);
  }

  return result;
}

uint64_t sub_10000296C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008E2C();
  v5 = sub_1000087B0();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_1000029DC()
{
  result = qword_10001C760;
  if (!qword_10001C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C760);
  }

  return result;
}

unint64_t sub_100002A34()
{
  result = qword_10001C768;
  if (!qword_10001C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C768);
  }

  return result;
}

unint64_t sub_100002A8C()
{
  result = qword_10001C770;
  if (!qword_10001C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C770);
  }

  return result;
}

uint64_t sub_100002B80(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100008E2C();
  v6 = sub_100008E80();
  v7 = sub_1000087B0();
  *v4 = v2;
  v4[1] = sub_100002C4C;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100002C4C()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100002D54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100008418();
  *a1 = result;
  return result;
}

uint64_t sub_100002D7C(uint64_t a1)
{
  v2 = sub_100002918();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100002DBC()
{
  result = qword_10001C778;
  if (!qword_10001C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C778);
  }

  return result;
}

unint64_t sub_100002E14()
{
  result = qword_10001C780;
  if (!qword_10001C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C780);
  }

  return result;
}

unint64_t sub_100002E68()
{
  result = qword_10001C788;
  if (!qword_10001C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C788);
  }

  return result;
}

uint64_t sub_100002EBC()
{
  v0 = sub_100007FF0(&qword_10001C818, "6;");
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10000F8F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10000F898();
  sub_10000874C(v5, qword_10001CB50);
  sub_100008714(v5, qword_10001CB50);
  sub_10000F8E8();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10000F888();
}

uint64_t sub_100003028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v174 = a2;
  v175 = a1;
  v2 = sub_100007FF0(&qword_10001C810, "6;");
  v3 = __chkstk_darwin(v2 - 8);
  v168 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v169 = &v147 - v6;
  v7 = __chkstk_darwin(v5);
  v166 = &v147 - v8;
  v9 = __chkstk_darwin(v7);
  v167 = &v147 - v10;
  v11 = __chkstk_darwin(v9);
  v165 = &v147 - v12;
  v13 = __chkstk_darwin(v11);
  v164 = &v147 - v14;
  v15 = __chkstk_darwin(v13);
  v163 = &v147 - v16;
  v17 = __chkstk_darwin(v15);
  v162 = &v147 - v18;
  v19 = __chkstk_darwin(v17);
  v160 = &v147 - v20;
  v21 = __chkstk_darwin(v19);
  v159 = &v147 - v22;
  v23 = __chkstk_darwin(v21);
  v161 = &v147 - v24;
  __chkstk_darwin(v23);
  v171 = &v147 - v25;
  v26 = sub_100007FF0(&qword_10001C818, "6;");
  v27 = __chkstk_darwin(v26 - 8);
  v157 = &v147 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v158 = &v147 - v30;
  v31 = __chkstk_darwin(v29);
  v155 = &v147 - v32;
  v33 = __chkstk_darwin(v31);
  v156 = &v147 - v34;
  v35 = __chkstk_darwin(v33);
  v154 = &v147 - v36;
  v37 = __chkstk_darwin(v35);
  v153 = &v147 - v38;
  v39 = __chkstk_darwin(v37);
  v152 = &v147 - v40;
  v41 = __chkstk_darwin(v39);
  v151 = &v147 - v42;
  v43 = __chkstk_darwin(v41);
  v149 = &v147 - v44;
  v45 = __chkstk_darwin(v43);
  v148 = &v147 - v46;
  v47 = __chkstk_darwin(v45);
  v150 = &v147 - v48;
  __chkstk_darwin(v47);
  v170 = &v147 - v49;
  v50 = sub_10000F8F8();
  v51 = *(v50 - 8);
  v172 = v50;
  v173 = v51;
  v52 = __chkstk_darwin(v50);
  v53 = __chkstk_darwin(v52);
  v54 = __chkstk_darwin(v53);
  v55 = __chkstk_darwin(v54);
  v56 = __chkstk_darwin(v55);
  v57 = __chkstk_darwin(v56);
  v58 = __chkstk_darwin(v57);
  v59 = __chkstk_darwin(v58);
  v60 = __chkstk_darwin(v59);
  v61 = __chkstk_darwin(v60);
  v62 = __chkstk_darwin(v61);
  v63 = __chkstk_darwin(v62);
  v64 = __chkstk_darwin(v63);
  __chkstk_darwin(v64);
  switch(v175)
  {
    case 1:
    case 11:
    case 27:
      sub_10000F8E8();
      v67 = v170;
      sub_10000F8E8();
      (*(v173 + 56))(v67, 0, 1, v172);
      v68 = v171;
      sub_10000F738();
      v69 = sub_10000F748();
      (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010360;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      goto LABEL_23;
    case 2:
    case 3:
    case 4:
    case 7:
    case 24:
    case 31:
      sub_10000F8E8();
      v89 = v170;
      sub_10000F8E8();
      (*(v173 + 56))(v89, 0, 1, v172);
      v90 = v171;
      sub_10000F738();
      v91 = sub_10000F748();
      (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
      goto LABEL_25;
    case 5:
      sub_10000F8E8();
      v100 = v170;
      sub_10000F8E8();
      (*(v173 + 56))(v100, 0, 1, v172);
      v101 = v171;
      sub_10000F738();
      v102 = sub_10000F748();
      (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010370;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 6:
      sub_10000F8E8();
      v111 = v170;
      sub_10000F8E8();
      (*(v173 + 56))(v111, 0, 1, v172);
      v112 = v171;
      sub_10000F738();
      v113 = sub_10000F748();
      (*(*(v113 - 8) + 56))(v112, 0, 1, v113);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010350;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      goto LABEL_23;
    case 8:
      sub_10000F8E8();
      v118 = v170;
      sub_10000F8E8();
      (*(v173 + 56))(v118, 0, 1, v172);
      v119 = v171;
      sub_10000F738();
      v120 = sub_10000F748();
      (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010330;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      goto LABEL_23;
    case 9:
    case 22:
      sub_10000F8E8();
      v127 = v170;
      sub_10000F8E8();
      (*(v173 + 56))(v127, 0, 1, v172);
      v128 = v171;
      sub_10000F738();
      v129 = sub_10000F748();
      (*(*(v129 - 8) + 56))(v128, 0, 1, v129);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010370;
      sub_10000F8E8();
      sub_10000F8E8();
LABEL_25:
      sub_10000F8E8();
      return sub_10000F758();
    case 10:
    case 28:
      sub_10000F8E8();
      v137 = v170;
      sub_10000F8E8();
      (*(v173 + 56))(v137, 0, 1, v172);
      v138 = v171;
      sub_10000F738();
      v139 = sub_10000F748();
      (*(*(v139 - 8) + 56))(v138, 0, 1, v139);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 12:
      sub_10000F8E8();
      v78 = v150;
      sub_10000F8E8();
      (*(v173 + 56))(v78, 0, 1, v172);
      v79 = [objc_opt_self() currentDevice];
      [v79 userInterfaceIdiom];

      v80 = v161;
      sub_10000F738();
      v81 = sub_10000F748();
      (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010360;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 13:
      sub_10000F8E8();
      v107 = v148;
      sub_10000F8E8();
      (*(v173 + 56))(v107, 0, 1, v172);
      v108 = [objc_opt_self() currentDevice];
      [v108 userInterfaceIdiom];

      v109 = v159;
      sub_10000F738();
      v110 = sub_10000F748();
      (*(*(v110 - 8) + 56))(v109, 0, 1, v110);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 14:
      sub_10000F8E8();
      v74 = v149;
      sub_10000F8E8();
      (*(v173 + 56))(v74, 0, 1, v172);
      v75 = [objc_opt_self() currentDevice];
      [v75 userInterfaceIdiom];

      v76 = v160;
      sub_10000F738();
      v77 = sub_10000F748();
      (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 15:
      sub_10000F8E8();
      v85 = v151;
      sub_10000F8E8();
      (*(v173 + 56))(v85, 0, 1, v172);
      v86 = [objc_opt_self() currentDevice];
      [v86 userInterfaceIdiom];

      v87 = v162;
      sub_10000F738();
      v88 = sub_10000F748();
      (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 16:
      sub_10000F8E8();
      v70 = v152;
      sub_10000F8E8();
      (*(v173 + 56))(v70, 0, 1, v172);
      v71 = [objc_opt_self() currentDevice];
      [v71 userInterfaceIdiom];

      v72 = v163;
      sub_10000F738();
      v73 = sub_10000F748();
      (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 17:
      sub_10000F8E8();
      v92 = v153;
      sub_10000F8E8();
      (*(v173 + 56))(v92, 0, 1, v172);
      v93 = [objc_opt_self() currentDevice];
      [v93 userInterfaceIdiom];

      v94 = v164;
      sub_10000F738();
      v95 = sub_10000F748();
      (*(*(v95 - 8) + 56))(v94, 0, 1, v95);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 18:
      sub_10000F8E8();
      v114 = v154;
      sub_10000F8E8();
      (*(v173 + 56))(v114, 0, 1, v172);
      v115 = [objc_opt_self() currentDevice];
      [v115 userInterfaceIdiom];

      v116 = v165;
      sub_10000F738();
      v117 = sub_10000F748();
      (*(*(v117 - 8) + 56))(v116, 0, 1, v117);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010370;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 19:
      sub_10000F8E8();
      v130 = v156;
      sub_10000F8E8();
      (*(v173 + 56))(v130, 0, 1, v172);
      v131 = [objc_opt_self() currentDevice];
      [v131 userInterfaceIdiom];

      v132 = v167;
      sub_10000F738();
      v133 = sub_10000F748();
      (*(*(v133 - 8) + 56))(v132, 0, 1, v133);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010370;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 20:
      sub_10000F8E8();
      v96 = v155;
      sub_10000F8E8();
      (*(v173 + 56))(v96, 0, 1, v172);
      v97 = [objc_opt_self() currentDevice];
      [v97 userInterfaceIdiom];

      v98 = v166;
      sub_10000F738();
      v99 = sub_10000F748();
      (*(*(v99 - 8) + 56))(v98, 0, 1, v99);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 21:
      sub_10000F8E8();
      v103 = v158;
      sub_10000F8E8();
      (*(v173 + 56))(v103, 0, 1, v172);
      v104 = [objc_opt_self() currentDevice];
      [v104 userInterfaceIdiom];

      v105 = v169;
      sub_10000F738();
      v106 = sub_10000F748();
      (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010360;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 23:
      sub_10000F8E8();
      v134 = v170;
      sub_10000F8E8();
      (*(v173 + 56))(v134, 0, 1, v172);
      v135 = v171;
      sub_10000F738();
      v136 = sub_10000F748();
      (*(*(v136 - 8) + 56))(v135, 0, 1, v136);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010370;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 25:
      sub_10000F8E8();
      v82 = v170;
      sub_10000F8E8();
      (*(v173 + 56))(v82, 0, 1, v172);
      v83 = v171;
      sub_10000F738();
      v84 = sub_10000F748();
      (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010360;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      goto LABEL_23;
    case 26:
      sub_10000AC50();
      sub_10000F8E8();
      v143 = v157;
      sub_10000F8E8();
      (*(v173 + 56))(v143, 0, 1, v172);
      v144 = v168;
      sub_10000F738();
      v145 = sub_10000F748();
      (*(*(v145 - 8) + 56))(v144, 0, 1, v145);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010360;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000AC50();
      sub_10000F8E8();
      return sub_10000F758();
    case 29:
      sub_10000F8E8();
      v140 = v170;
      sub_10000F8E8();
      (*(v173 + 56))(v140, 0, 1, v172);
      v141 = v171;
      sub_10000F738();
      v142 = sub_10000F748();
      (*(*(v142 - 8) + 56))(v141, 0, 1, v142);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
      sub_10000F8E8();
      return sub_10000F758();
    case 30:
      sub_10000F8E8();
      v121 = v170;
      sub_10000F8E8();
      (*(v173 + 56))(v121, 0, 1, v172);
      v122 = v171;
      sub_10000F738();
      v123 = sub_10000F748();
      (*(*(v123 - 8) + 56))(v122, 0, 1, v123);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010350;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      goto LABEL_23;
    case 32:
      sub_10000F8E8();
      v124 = v170;
      sub_10000F8E8();
      (*(v173 + 56))(v124, 0, 1, v172);
      v125 = v171;
      sub_10000F738();
      v126 = sub_10000F748();
      (*(*(v126 - 8) + 56))(v125, 0, 1, v126);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010330;
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
      sub_10000F8E8();
LABEL_23:
      sub_10000F8E8();
      break;
    default:
      sub_10000F8E8();
      (*(v173 + 56))(v170, 1, 1, v172);
      v65 = v171;
      sub_10000F738();
      v66 = sub_10000F748();
      (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
      sub_100007FF0(&qword_10001C820, "6;");
      *(swift_allocObject() + 16) = xmmword_100010340;
      sub_10000F8E8();
      sub_10000F8E8();
      break;
  }

  return sub_10000F758();
}

uint64_t sub_100006C30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008EFC;

  return sub_100008804(a1);
}

uint64_t sub_100006CD8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100008ED8;

  return sub_1000089F0();
}

uint64_t sub_100006D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100006E3C;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100006E3C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100006F3C()
{
  result = qword_10001C790;
  if (!qword_10001C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C790);
  }

  return result;
}

uint64_t sub_100006F90(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100007034;

  return sub_100008BD4();
}

uint64_t sub_100007034(uint64_t a1)
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

unint64_t sub_10000714C()
{
  result = qword_10001C798;
  if (!qword_10001C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C798);
  }

  return result;
}

unint64_t sub_1000071A0()
{
  result = qword_10001C7A0;
  if (!qword_10001C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7A0);
  }

  return result;
}

unint64_t sub_1000071F8()
{
  result = qword_10001C7A8;
  if (!qword_10001C7A8)
  {
    sub_100002628(&qword_10001C7B0, qword_1000106D8);
    sub_1000071A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7A8);
  }

  return result;
}

uint64_t sub_10000727C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100006F3C();
  *v5 = v2;
  v5[1] = sub_100007330;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100007330()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100007424(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000074C8;

  return sub_100008CF4();
}

uint64_t sub_1000074C8(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_1000075E4()
{
  result = qword_10001C7B8;
  if (!qword_10001C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7B8);
  }

  return result;
}

uint64_t sub_100007638(uint64_t a1)
{
  v1 = sub_100007FF0(&qword_10001C830, &qword_100010B20);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_100007FF0(&qword_10001C838, &qword_100010B28);
  __chkstk_darwin(v5);
  sub_100002E68();
  sub_10000F7E8();
  v8._object = 0x8000000100013C60;
  v8._countAndFlagsBits = 0xD000000000000031;
  sub_10000F7D8(v8);
  (*(v2 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_10000F7C8();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_10000F7D8(v9);
  return sub_10000F7F8();
}

uint64_t sub_1000077FC()
{
  v0 = qword_10001C720;

  return v0;
}

unint64_t sub_100007838()
{
  result = qword_10001C7C0;
  if (!qword_10001C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7C0);
  }

  return result;
}

unint64_t sub_100007890()
{
  result = qword_10001C7C8;
  if (!qword_10001C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7C8);
  }

  return result;
}

unint64_t sub_1000078EC()
{
  result = qword_10001C7D0;
  if (!qword_10001C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7D0);
  }

  return result;
}

uint64_t sub_100007940(uint64_t a1)
{
  sub_1000087B0();
  v2 = sub_10000F798();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_1000079B0()
{
  result = qword_10001C7D8;
  if (!qword_10001C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7D8);
  }

  return result;
}

unint64_t sub_100007A08()
{
  result = qword_10001C7E0;
  if (!qword_10001C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7E0);
  }

  return result;
}

unint64_t sub_100007A64()
{
  result = qword_10001C7E8;
  if (!qword_10001C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7E8);
  }

  return result;
}

unint64_t sub_100007ABC()
{
  result = qword_10001C7F0;
  if (!qword_10001C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C7F0);
  }

  return result;
}

uint64_t sub_100007B58@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_100008714(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100007C44(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002628(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007C8C(uint64_t a1)
{
  v2 = sub_100002E68();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100007CDC()
{
  result = qword_10001C808;
  if (!qword_10001C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C808);
  }

  return result;
}

uint64_t sub_100007D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100007330;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100007DFC(uint64_t a1)
{
  v2 = sub_100007A64();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100007E8C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100007F20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100007FF0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100008038(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100008DDC();
    v4 = sub_10000FA18();
  }

  v6 = a3;
  v5(v4, a3);
}

char *sub_1000080CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000810C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000080EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100008200(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000810C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007FF0(&qword_10001C848, &qword_100010B40);
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

char *sub_100008200(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007FF0(&qword_10001C850, &qword_100010B50);
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

BOOL sub_1000082F4()
{
  keyExistsAndHasValidFormat = 0;
  v0 = sub_10000F9E8();
  v1 = sub_10000F9E8();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

unint64_t sub_1000083C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000FBA8();

  if (v2 >= 0x21)
  {
    return 33;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100008418()
{
  v17 = sub_10000F808();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100007FF0(&qword_10001C858, &qword_100010B60);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100007FF0(&qword_10001C818, "6;");
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_10000F8F8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100007FF0(&qword_10001C860, &qword_100010B68);
  sub_10000F8E8();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 33;
  v14 = sub_10000F648();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_100002E68();
  return sub_10000F6A8();
}

uint64_t sub_100008714(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000874C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1000087B0()
{
  result = qword_10001C828;
  if (!qword_10001C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C828);
  }

  return result;
}

uint64_t sub_100008824()
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
      if (sub_100001B88(v7))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000080EC(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v5 = _swiftEmptyArrayStorage[2];
        v4 = _swiftEmptyArrayStorage[3];
        if (v5 >= v4 >> 1)
        {
          sub_1000080EC((v4 > 1), v5 + 1, 1);
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
    sub_1000080CC(0, v8, 0);
    v9 = _swiftEmptyArrayStorage[2];
    v10 = 32;
    do
    {
      v11 = *(_swiftEmptyArrayStorage + v10);
      v12 = _swiftEmptyArrayStorage[3];
      if (v9 >= v12 >> 1)
      {
        sub_1000080CC((v12 > 1), v9 + 1, 1);
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

uint64_t sub_100008A0C()
{
  for (i = 0; i != 33; ++i)
  {
    v4 = *(&off_100019138 + i + 32);
    if (sub_100001B88(v4))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000080EC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v3 = _swiftEmptyArrayStorage[2];
      v2 = _swiftEmptyArrayStorage[3];
      if (v3 >= v2 >> 1)
      {
        sub_1000080EC((v2 > 1), v3 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v3 + 1;
      *(&_swiftEmptyArrayStorage[4] + v3) = v4;
    }
  }

  v5 = _swiftEmptyArrayStorage[2];
  if (v5)
  {
    sub_1000080CC(0, v5, 0);
    v6 = _swiftEmptyArrayStorage[2];
    v7 = 32;
    do
    {
      v8 = *(_swiftEmptyArrayStorage + v7);
      v9 = _swiftEmptyArrayStorage[3];
      if (v6 >= v9 >> 1)
      {
        sub_1000080CC((v9 > 1), v6 + 1, 1);
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

uint64_t sub_100008BF0()
{
  sub_1000080CC(0, 33, 0);
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  do
  {
    v4 = *(&off_100019138 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_1000080CC((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 33);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100008D10()
{
  v1 = 0;
  while (v1 != 33)
  {
    v2 = v1 + 1;
    v3 = &off_100019138 + v1;
    v4 = v3[32];
    v5 = sub_100001B88(v3[32]);
    v1 = v2;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  v4 = 33;
LABEL_6:
  v6 = *(v0 + 8);

  return v6(v4);
}

uint64_t sub_100008DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100008DDC()
{
  result = qword_10001C840;
  if (!qword_10001C840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C840);
  }

  return result;
}

unint64_t sub_100008E2C()
{
  result = qword_10001C868;
  if (!qword_10001C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C868);
  }

  return result;
}

unint64_t sub_100008E80()
{
  result = qword_10001C870;
  if (!qword_10001C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C870);
  }

  return result;
}

unint64_t sub_100008F00(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (result)
    {
      if (result >> 62)
      {
        v5 = a3;
        result = sub_10000FB88();
        a3 = v5;
      }

      else
      {
        result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    v3 = result != 0;
    v4 = a3;
    result = swift_beginAccess();
    *(v4 + 16) = v3;
  }

  return result;
}

id sub_100008FC0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_10000901C()
{
  result = [objc_allocWithZone(type metadata accessor for GeneralSettingsPointerDeviceManager()) init];
  qword_10001CB68 = result;
  return result;
}

char *sub_10000904C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC22GeneralSettingsIntents35GeneralSettingsPointerDeviceManager_token] = 0;
  if (_swiftEmptyArrayStorage >> 62)
  {
    v11 = ObjectType;
    if (sub_10000FB88())
    {
      sub_10000AEFC(_swiftEmptyArrayStorage);
      v4 = v12;
    }

    else
    {
      v4 = &_swiftEmptySetSingleton;
    }

    ObjectType = v11;
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
  }

  *&v2[OBJC_IVAR____TtC22GeneralSettingsIntents35GeneralSettingsPointerDeviceManager_pointerDevices] = v4;
  v13.receiver = v2;
  v13.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v13, "init");
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 sharedInstance];
  v9 = [v8 addPointerDeviceObserver:v7];

  *&v7[OBJC_IVAR____TtC22GeneralSettingsIntents35GeneralSettingsPointerDeviceManager_token] = v9;
  swift_unknownObjectRelease();
  return v7;
}

void sub_100009204(uint64_t a1)
{
  sub_10000ABB4(0, &qword_10001C950, NSPredicate_ptr);
  sub_100007FF0(&qword_10001C958, &qword_100010BE8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100010340;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_10000ABFC();
  strcpy((v1 + 32), "UC Automouse");
  *(v1 + 45) = 0;
  *(v1 + 46) = -5120;
  v2 = sub_10000FA88();

  v4 = sub_10000B590(v3, v2);

  swift_beginAccess();
  sub_10000933C(v4);
  swift_endAccess();
}

void sub_10000933C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_10000FAD8();
    sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
    sub_100009650();
    sub_10000FA78();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
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

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_10000A70C(v1);
      return;
    }

    while (1)
    {
      sub_1000096B8(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_10000FB08())
      {
        sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t sub_100009650()
{
  result = qword_10001C940;
  if (!qword_10001C940)
  {
    sub_10000ABB4(255, &qword_10001C938, BKSMousePointerDevice_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C940);
  }

  return result;
}

uint64_t sub_1000096B8(uint64_t *a1, void *a2)
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

    v9 = sub_10000FAF8();

    if (v9)
    {

      sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_10000FAE8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1000098F0(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_100009AE0(v20 + 1);
    }

    v18 = v8;
    sub_100009D08(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
  v11 = sub_10000FA98(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100009D8C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_10000FAA8();

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

Swift::Int sub_1000098F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100007FF0(&qword_10001C948, &qword_100010BE0);
    v2 = sub_10000FB48();
    v15 = v2;
    sub_10000FAD8();
    if (sub_10000FB08())
    {
      sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100009AE0(v9 + 1);
        }

        v2 = v15;
        result = sub_10000FA98(*(v15 + 40));
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

      while (sub_10000FB08());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100009AE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007FF0(&qword_10001C948, &qword_100010BE0);
  result = sub_10000FB38();
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
      result = sub_10000FA98(*(v5 + 40));
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

unint64_t sub_100009D08(uint64_t a1, void *a2)
{
  sub_10000FA98(a2[5]);
  result = sub_10000FAC8();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_100009D8C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100009AE0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100009EFC();
      goto LABEL_12;
    }

    sub_10000A04C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_10000FA98(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_10000FAA8();

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
  sub_10000FBB8();
  __break(1u);
}

id sub_100009EFC()
{
  v1 = v0;
  sub_100007FF0(&qword_10001C948, &qword_100010BE0);
  v2 = *v0;
  v3 = sub_10000FB28();
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

uint64_t sub_10000A04C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007FF0(&qword_10001C948, &qword_100010BE0);
  result = sub_10000FB38();
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
      result = sub_10000FA98(v16);
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

unint64_t *sub_10000A260(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_10000B1EC(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

uint64_t sub_10000A2F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100007FF0(&qword_10001C948, &qword_100010BE0);
  result = sub_10000FB58();
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
    result = sub_10000FA98(v16);
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

void sub_10000A4EC(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_10000FAE8())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_10000FAD8();
    sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
    sub_100009650();
    sub_10000FA78();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
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

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
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

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_10000A70C(a1);
      return;
    }

    while (1)
    {
      v16 = sub_10000A714(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_10000FB08())
      {
        sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_10000A714(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_10000FB18();

    if (v6)
    {
      v7 = sub_10000A8AC(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
  v10 = sub_10000FA98(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_10000FAA8();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100009EFC();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_10000AA14(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_10000A8AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_10000FAE8();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1000098F0(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = sub_10000FA98(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_10000FAA8();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  sub_10000AA14(v10);
  result = sub_10000FAA8();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10000AA14(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_10000FAB8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_10000FA98(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10000ABB4(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_10000ABFC()
{
  result = qword_10001C960;
  if (!qword_10001C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C960);
  }

  return result;
}

uint64_t sub_10000AC50()
{
  if (qword_10001C578 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v0 = qword_10001CB68;
    v1 = OBJC_IVAR____TtC22GeneralSettingsIntents35GeneralSettingsPointerDeviceManager_pointerDevices;
    swift_beginAccess();
    v2 = *(v0 + v1);
    if ((v2 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_10000FAD8();
      sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
      sub_100009650();
      sub_10000FA78();
      v4 = v23;
      v3 = v24;
      v6 = v25;
      v5 = v26;
      v7 = v27;
    }

    else
    {
      v8 = -1 << *(v2 + 32);
      v3 = v2 + 56;
      v6 = ~v8;
      v9 = -v8;
      v10 = v9 < 64 ? ~(-1 << v9) : -1;
      v7 = v10 & *(v2 + 56);
      v4 = v2;
      swift_bridgeObjectRetain_n();
      v5 = 0;
    }

    v21 = v6;
    v11 = (v6 + 64) >> 6;
    if (v4 < 0)
    {
      break;
    }

LABEL_9:
    v12 = v5;
    v13 = v7;
    v14 = v5;
    if (v7)
    {
LABEL_13:
      v15 = (v13 - 1) & v13;
      v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
      if (v16)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_20;
      }

      v13 = *(v3 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  while (sub_10000FB08())
  {
    sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
    swift_dynamicCast();
    v16 = v22;
    v14 = v5;
    v15 = v7;
    if (!v22)
    {
      break;
    }

LABEL_17:
    v17 = [v16 senderDescriptor];
    v18 = [v17 hardwareType];

    if (v18 == 8)
    {
      sub_10000A70C(v4);

      v19 = 1;
      goto LABEL_21;
    }

    v5 = v14;
    v7 = v15;
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_20:
  sub_10000A70C(v4);
  v19 = 0;
LABEL_21:

  return v19;
}

void sub_10000AEFC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_10000FB88())
    {
LABEL_3:
      sub_100007FF0(&qword_10001C948, &qword_100010BE0);
      v3 = sub_10000FB58();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_10000FB88();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_10000FB68();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_10000FA98(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_10000FAA8();

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
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
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
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_10000FA98(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_10000FAA8();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t *sub_10000B1EC(unint64_t *result, uint64_t a2, uint64_t a3, id a4)
{
  v18 = a2;
  v19 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    result = [a4 evaluateWithObject:{*(*(a3 + 48) + 8 * v16), v18}];
    if (result)
    {
      *(v19 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_10000A2F8(v19, v18, v6, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_15;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000B32C(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v10 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v25 = v7;
    v26 = v3;
    v24[1] = v24;
    __chkstk_darwin(v9);
    v11 = v24 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v8);
    v27 = 0;
    v12 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v3 = v14 & *(a1 + 56);
    v15 = (v13 + 63) >> 6;
    v7 = &GeneralSettingsIntentsBundleClass;
    while (v3)
    {
      v16 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
LABEL_12:
      v8 = v16 | (v12 << 6);
      if ([v10 evaluateWithObject:*(*(a1 + 48) + 8 * v8)])
      {
        *&v11[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_16:
          v20 = sub_10000A2F8(v11, v25, v27, a1);

          return v20;
        }
      }
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v15)
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 56 + 8 * v12);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v3 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = v10;
  v20 = sub_10000A260(v22, v7, a1, v23);

  return v20;
}

Swift::Int sub_10000B590(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_10000B32C(a1, a2);
  }

  v2 = a2;
  sub_10000FAD8();
  if (sub_10000FB08())
  {
    sub_10000ABB4(0, &qword_10001C938, BKSMousePointerDevice_ptr);
    do
    {
      swift_dynamicCast();
      if ([v2 evaluateWithObject:v14])
      {
        v3 = *(&_swiftEmptySetSingleton + 2);
        if (*(&_swiftEmptySetSingleton + 3) <= v3)
        {
          sub_100009AE0(v3 + 1);
        }

        result = sub_10000FA98(*(&_swiftEmptySetSingleton + 5));
        v5 = &_swiftEmptySetSingleton + 56;
        v6 = -1 << *(&_swiftEmptySetSingleton + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(&_swiftEmptySetSingleton + (v7 >> 6) + 7)) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(&_swiftEmptySetSingleton + (v7 >> 6) + 7))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v8 == v11;
            if (v8 == v11)
            {
              v8 = 0;
            }

            v10 |= v12;
            v13 = *&v5[8 * v8];
          }

          while (v13 == -1);
          v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        }

        *&v5[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
        *(*(&_swiftEmptySetSingleton + 6) + 8 * v9) = v14;
        ++*(&_swiftEmptySetSingleton + 2);
      }

      else
      {
      }
    }

    while (sub_10000FB08());
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10000B7A0()
{
  result = qword_10001C970;
  if (!qword_10001C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C970);
  }

  return result;
}

unint64_t sub_10000B7F4()
{
  result = qword_10001C978;
  if (!qword_10001C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C978);
  }

  return result;
}

uint64_t sub_10000B848()
{
  v0 = sub_10000F8F8();
  sub_10000874C(v0, qword_10001CB70);
  sub_100008714(v0, qword_10001CB70);
  return sub_10000F8E8();
}

void *sub_10000B8AC@<X0>(void *a1@<X8>)
{
  result = sub_10000F688();
  *a1 = v3;
  return result;
}

uint64_t sub_10000B8E8(uint64_t *a1)
{

  sub_10000F698();
}

void (*sub_10000B930(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_10000F678();
  return sub_10000F548;
}

unint64_t sub_10000B9A4()
{
  result = qword_10001C980;
  if (!qword_10001C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C980);
  }

  return result;
}

uint64_t sub_10000B9F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F2CC();
  v5 = sub_10000E3AC();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10000BA68()
{
  result = qword_10001C988;
  if (!qword_10001C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C988);
  }

  return result;
}

unint64_t sub_10000BAC0()
{
  result = qword_10001C990;
  if (!qword_10001C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C990);
  }

  return result;
}

uint64_t sub_10000BB64(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000F2CC();
  v7 = sub_10000F320();
  v8 = sub_10000E3AC();
  *v5 = v2;
  v5[1] = sub_100002C4C;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_10000BC38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000EAF4();
  *a1 = result;
  return result;
}

uint64_t sub_10000BC60(uint64_t a1)
{
  v2 = sub_10000B9A4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000BCA0()
{
  result = qword_10001C998;
  if (!qword_10001C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C998);
  }

  return result;
}

uint64_t sub_10000BD38()
{
  v0 = sub_10000F898();
  sub_10000874C(v0, qword_10001CB88);
  sub_100008714(v0, qword_10001CB88);
  return sub_10000F878();
}

uint64_t sub_10000BD9C()
{
  v0 = sub_100007FF0(&qword_10001C810, "6;");
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_100007FF0(&qword_10001C818, "6;");
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_10000F8F8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  sub_10000F8E8();
  sub_10000F8E8();
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_10000F738();
  v9 = sub_10000F748();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  sub_100007FF0(&qword_10001C820, "6;");
  *(swift_allocObject() + 16) = xmmword_100010340;
  sub_10000F8E8();
  sub_10000F8E8();
  return sub_10000F758();
}

uint64_t sub_10000C074()
{
  v0 = sub_10000F8F8();
  sub_10000874C(v0, qword_10001CBA0);
  sub_100008714(v0, qword_10001CBA0);
  return sub_10000F8E8();
}

uint64_t sub_10000C0D8()
{
  v0 = sub_100007FF0(&qword_10001CAD8, &unk_1000114F0);
  sub_10000874C(v0, qword_10001CBB8);
  v1 = sub_100008714(v0, qword_10001CBB8);
  sub_10000F6C8();
  v2 = sub_10000F6D8();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10000C198()
{
  result = swift_getKeyPath();
  qword_10001CBD0 = result;
  return result;
}

uint64_t sub_10000C1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_100007FF0(&qword_10001CAA8, &qword_1000114A0);
  v3[10] = swift_task_alloc();
  sub_100007FF0(&qword_10001CAB0, &qword_1000114A8);
  v3[11] = swift_task_alloc();
  sub_100007FF0(&qword_10001CAB8, &qword_1000114B0);
  v3[12] = swift_task_alloc();
  v4 = sub_10000F648();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_100007FF0(&qword_10001CAC0, &qword_1000114B8);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10000C3A4, 0, 0);
}

uint64_t sub_10000C3A4()
{
  sub_10000F688();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  v2 = sub_10000D848();
  *v1 = v0;
  v1[1] = sub_10000C474;
  v3 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v0 + 16, sub_10000F544, 0, &type metadata for TwentyFourHourTimeEntity, v2);
}

uint64_t sub_10000C474()
{

  return _swift_task_switch(sub_10000C570, 0, 0);
}

uint64_t sub_10000C570()
{
  sub_10000F688();
  v1 = *(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 168) = v1;
  sub_10000F688();
  *(v0 + 201) = *(v0 + 200);
  if (qword_10001C5A0 != -1)
  {
    swift_once();
  }

  v2 = qword_10001CBD0;
  *(v0 + 176) = qword_10001CBD0;

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = sub_100007C44(&qword_10001CA80, &qword_10001CA88, &qword_100011470, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_10000C6D0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v2, &type metadata for Bool, v4);
}

uint64_t sub_10000C6D0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_10000CA8C;
  }

  else
  {
    v2 = sub_10000C824;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000C824()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_10000F688();
  v0[6] = v0[5];
  v6 = sub_10000F868();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_10000F8A8();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_10000BCA0();
  sub_10000DA58();
  sub_10000F618();
  (*(v2 + 16))(v10, v1, v3);
  sub_10000F638();
  sub_10000F658();
  (*(v12 + 8))(v11, v13);

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10000CA8C()
{
  (*(v0[17] + 8))(v0[19], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10000CB54()
{
  v0 = sub_100007FF0(&qword_10001CAC8, &qword_1000114C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_10001C5A0 != -1)
  {
    swift_once();
  }

  sub_10000F728();

  sub_10000DA58();
  sub_100007C44(&qword_10001CAD0, &qword_10001CAC8, &qword_1000114C0, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_10000F718();
  return (*(v1 + 8))(v3, v0);
}

void (*sub_10000CCC8(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_10000F678();
  return sub_10000CD3C;
}

void *sub_10000CD40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000F688();
  *a1 = v3;
  return result;
}

void (*sub_10000CDB4(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_10000F678();
  return sub_10000F548;
}

uint64_t sub_10000CE28()
{
  if (qword_10001C5A0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000CE88()
{
  result = qword_10001C9B0;
  if (!qword_10001C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9B0);
  }

  return result;
}

unint64_t sub_10000CEE0()
{
  result = qword_10001C9B8;
  if (!qword_10001C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9B8);
  }

  return result;
}

uint64_t sub_10000D014@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001C598 != -1)
  {
    swift_once();
  }

  v2 = sub_100007FF0(&qword_10001CAD8, &unk_1000114F0);
  v3 = sub_100008714(v2, qword_10001CBB8);

  return sub_10000F25C(v3, a1);
}

uint64_t sub_10000D098(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000F534;

  return sub_10000C1C4(a1, v5, v4);
}

uint64_t sub_10000D144@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000EDEC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10000D18C()
{
  result = qword_10001C9C0;
  if (!qword_10001C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9C0);
  }

  return result;
}

unint64_t sub_10000D1E4()
{
  result = qword_10001C9C8;
  if (!qword_10001C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9C8);
  }

  return result;
}

uint64_t sub_10000D258()
{
  sub_10000FA58();
  *(v0 + 24) = sub_10000FA48();
  v2 = sub_10000FA38();

  return _swift_task_switch(sub_10000D2EC, v2, v1);
}

uint64_t sub_10000D2EC()
{
  v1 = *(v0 + 16);

  sub_10000F938();
  swift_allocObject();
  sub_10000F928();
  v2 = sub_10000F908();

  *v1 = v2 & 1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000D3B4()
{
  sub_10000FA58();
  *(v0 + 16) = sub_10000FA48();
  v2 = sub_10000FA38();

  return _swift_task_switch(sub_10000D448, v2, v1);
}

uint64_t sub_10000D448()
{

  sub_10000F938();
  swift_allocObject();
  sub_10000F928();
  sub_10000F918();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000D4E0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10000F8F8();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10000D570, 0, 0);
}

uint64_t sub_10000D570()
{
  v1 = *(v0 + 16);
  sub_100007FF0(&qword_10001C9A8, qword_100010D90);
  sub_10000F8E8();
  sub_100007C44(&qword_10001CA80, &qword_10001CA88, &qword_100011470, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v1 = sub_10000F8D8();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10000D694()
{
  result = qword_10001C9D0;
  if (!qword_10001C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9D0);
  }

  return result;
}

uint64_t sub_10000D6E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10000DD68();
  *v4 = v2;
  v4[1] = sub_100007034;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_10000D79C()
{
  result = qword_10001C9D8;
  if (!qword_10001C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9D8);
  }

  return result;
}

unint64_t sub_10000D7F4()
{
  result = qword_10001C9E0;
  if (!qword_10001C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9E0);
  }

  return result;
}

unint64_t sub_10000D848()
{
  result = qword_10001C9E8;
  if (!qword_10001C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9E8);
  }

  return result;
}

uint64_t sub_10000D89C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000DD68();
  *v5 = v2;
  v5[1] = sub_100008EFC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_10000D950(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_10000DD68();
  *v4 = v2;
  v4[1] = sub_100008ED8;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_10000DA04()
{
  result = qword_10001C9F0;
  if (!qword_10001C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9F0);
  }

  return result;
}

unint64_t sub_10000DA58()
{
  result = qword_10001C9F8;
  if (!qword_10001C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9F8);
  }

  return result;
}

unint64_t sub_10000DAB0()
{
  result = qword_10001CA00;
  if (!qword_10001CA00)
  {
    sub_100002628(&qword_10001CA08, qword_100010FF0);
    sub_10000DA58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA00);
  }

  return result;
}

uint64_t sub_10000DB34(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000D694();
  *v5 = v2;
  v5[1] = sub_100007330;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10000DBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000F534;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_10000DCA4()
{
  result = qword_10001CA10;
  if (!qword_10001CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA10);
  }

  return result;
}

unint64_t sub_10000DCFC()
{
  result = qword_10001CA18;
  if (!qword_10001CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA18);
  }

  return result;
}

unint64_t sub_10000DD68()
{
  result = qword_10001CA20;
  if (!qword_10001CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA20);
  }

  return result;
}

unint64_t sub_10000DDC0()
{
  result = qword_10001CA28;
  if (!qword_10001CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA28);
  }

  return result;
}

uint64_t sub_10000DE14(uint64_t a1)
{
  v2 = sub_10000D848();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD00000000000004BLL, 0x8000000100013F10, a1, v2);
}

unint64_t sub_10000DE7C()
{
  result = qword_10001CA30;
  if (!qword_10001CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA30);
  }

  return result;
}

unint64_t sub_10000DED4()
{
  result = qword_10001CA38;
  if (!qword_10001CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA38);
  }

  return result;
}

unint64_t sub_10000DF30()
{
  result = qword_10001CA40;
  if (!qword_10001CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA40);
  }

  return result;
}

uint64_t sub_10000DF90@<X0>(uint64_t *a2@<X8>)
{
  sub_10000D1E4();
  result = sub_10000F668();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000DFD0(uint64_t a1)
{
  sub_10000E3AC();
  v2 = sub_10000F818();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10000E074@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
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
  v9 = sub_100008714(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_10000E160(uint64_t a1)
{
  v2 = sub_10000D848();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000E1B0()
{
  result = qword_10001CA58;
  if (!qword_10001CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA58);
  }

  return result;
}

uint64_t sub_10000E208(uint64_t a1)
{
  v2 = sub_10000DF30();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_10000E264(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000E270(uint64_t *a1, int a2)
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

uint64_t sub_10000E2B8(uint64_t result, int a2, int a3)
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

unint64_t sub_10000E3AC()
{
  result = qword_10001CA78;
  if (!qword_10001CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CA78);
  }

  return result;
}

uint64_t sub_10000E400@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_100007FF0(&qword_10001CAF0, &qword_100011560);
  v18 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v17 - v2;
  v4 = sub_100007FF0(&qword_10001CAF8, &qword_100011568);
  v5 = *(v4 - 8);
  v19 = v4;
  v20 = v5;
  __chkstk_darwin(v4);
  v7 = v17 - v6;
  v8 = sub_100007FF0(&qword_10001CB00, &qword_100011570);
  v9 = *(v8 - 8);
  v21 = v8;
  v22 = v9;
  __chkstk_darwin(v8);
  v11 = v17 - v10;
  v17[1] = "Open 24-Hour Time Settings";
  swift_getKeyPath();
  sub_100007FF0(&qword_10001CB08, &qword_100011578);
  sub_100007FF0(&qword_10001CB10, &unk_100011580);
  sub_10000D1E4();
  sub_100007C44(&qword_10001CB18, &qword_10001CB08, &qword_100011578, &protocol conformance descriptor for Label<A, B>);
  sub_10000F3A0();
  sub_10000F9D8();
  sub_10000F958();
  v12 = sub_100007C44(&qword_10001CB28, &qword_10001CAF0, &qword_100011560, &protocol conformance descriptor for ControlToggle<A>);
  sub_10000F988();

  (*(v18 + 8))(v3, v1);
  v24 = v1;
  v25 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = v19;
  sub_10000F998();
  (*(v20 + 8))(v7, v14);
  v24 = v14;
  v25 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v15 = v21;
  sub_10000F978();
  return (*(v22 + 8))(v11, v15);
}

uint64_t sub_10000E83C()
{
  v0 = sub_10000F958();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10000E8A4@<X0>(uint64_t a1@<X8>)
{
  sub_10000F958();
  result = sub_10000F9B8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_10000E920@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_10000F958();
    if (qword_10001C560 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_10000F958();
  if (qword_10001C560 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v3 = qword_10001CB30;
  sub_10000F9B8();
  sub_10000F9A8();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_10000EAF4()
{
  v17[0] = sub_10000F808();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100007FF0(&qword_10001C858, &qword_100010B60);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  v9 = sub_100007FF0(&qword_10001C818, "6;");
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = sub_10000F8F8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100007FF0(&qword_10001CA98, &qword_100011488);
  sub_10000F8E8();
  (*(v13 + 56))(v11, 1, 1, v12);
  v17[1] = 0;
  v14 = sub_10000F648();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_10000D848();
  return sub_10000F6A8();
}

uint64_t sub_10000EDEC()
{
  v0 = sub_100007FF0(&qword_10001CA90, &unk_100011478);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_10000F808();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007FF0(&qword_10001C858, &qword_100010B60);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100007FF0(&qword_10001C818, "6;");
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_10000F8F8();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100007FF0(&qword_10001CA98, &qword_100011488);
  sub_10000F8E8();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_10000F648();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_10000D848();
  v23 = sub_10000F6A8();
  sub_100007FF0(&qword_10001CAA0, &qword_100011490);
  sub_10000F8E8();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_10000FA28();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_10000F6B8();
  return v23;
}

uint64_t sub_10000F25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007FF0(&qword_10001CAD8, &unk_1000114F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000F2CC()
{
  result = qword_10001CAE0;
  if (!qword_10001CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CAE0);
  }

  return result;
}

unint64_t sub_10000F320()
{
  result = qword_10001CAE8;
  if (!qword_10001CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CAE8);
  }

  return result;
}

unint64_t sub_10000F3A0()
{
  result = qword_10001CB20;
  if (!qword_10001CB20)
  {
    sub_100002628(&qword_10001CB10, &unk_100011580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001CB20);
  }

  return result;
}

uint64_t sub_10000F41C()
{
  sub_100002628(&qword_10001CB00, &qword_100011570);
  sub_100002628(&qword_10001CAF8, &qword_100011568);
  sub_100002628(&qword_10001CAF0, &qword_100011560);
  sub_100007C44(&qword_10001CB28, &qword_10001CAF0, &qword_100011560, &protocol conformance descriptor for ControlToggle<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}