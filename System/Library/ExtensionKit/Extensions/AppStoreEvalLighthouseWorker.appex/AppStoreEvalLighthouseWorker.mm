uint64_t sub_100001358()
{
  v0 = sub_100012388();
  sub_100011B5C(v0, qword_10001CA80);
  sub_100011144(v0, qword_10001CA80);
  return sub_100012378();
}

unint64_t sub_1000013D8(char a1)
{
  result = 0x6165726C41736168;
  switch(a1)
  {
    case 1:
      return 0xD000000000000027;
    case 2:
      v3 = 10;
      goto LABEL_17;
    case 3:
      return 0xD00000000000001BLL;
    case 4:
      return result;
    case 5:
      return 0xD000000000000017;
    case 6:
      v3 = 11;
      goto LABEL_17;
    case 7:
      return 0xD00000000000002BLL;
    case 8:
      return 0xD000000000000014;
    case 9:
      return 0xD000000000000025;
    case 10:
    case 19:
      return 0xD000000000000024;
    case 11:
      return 0xD00000000000001CLL;
    case 12:
      return 0xD000000000000020;
    case 13:
    case 22:
      return 0xD000000000000016;
    case 14:
      return 0xD000000000000018;
    case 15:
      return 0xD000000000000014;
    case 16:
      return 0xD000000000000022;
    case 17:
    case 18:
      return 0xD000000000000019;
    case 20:
    case 24:
      return 0xD000000000000015;
    case 21:
      v3 = 9;
LABEL_17:
      result = v3 | 0xD000000000000014;
      break;
    case 23:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD00000000000002ALL;
      break;
  }

  return result;
}

uint64_t sub_100001718(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000013D8(*a1);
  v5 = v4;
  if (v3 == sub_1000013D8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100012698();
  }

  return v8 & 1;
}

Swift::Int sub_1000017A0()
{
  v1 = *v0;
  sub_100012728();
  sub_1000013D8(v1);
  sub_100012448();

  return sub_100012748();
}

uint64_t sub_100001804(uint64_t a1)
{
  sub_1000013D8(*v1);
  sub_100012448();
}

Swift::Int sub_100001858(uint64_t a1)
{
  v2 = *v1;
  sub_100012728();
  sub_1000013D8(v2);
  sub_100012448();

  return sub_100012748();
}

unint64_t sub_1000018B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100010B40(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000018E8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000013D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_100001938()
{
  v1 = *v0;
  sub_100012728();
  sub_100012738(v1);
  return sub_100012748();
}

Swift::Int sub_1000019AC(uint64_t a1)
{
  v2 = *v1;
  sub_100012728();
  sub_100012738(v2);
  return sub_100012748();
}

uint64_t sub_1000019F0()
{
  v1 = *v0;
  v2 = 0x7341657069636572;
  v3 = 0x736E6F69676572;
  v4 = 0x45736E6F69676572;
  if (v1 != 3)
  {
    v4 = 0x676E696C706D6173;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65636E4F6E7572;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100001AA4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100010B94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100001AE4(uint64_t a1)
{
  v2 = sub_100011084();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001B20(uint64_t a1)
{
  v2 = sub_100011084();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001B5C(void *a1)
{
  v3 = v1;
  v5 = sub_10000E8BC(&qword_10001C198, &qword_100012F00);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10 - v7;
  sub_100011040(a1, a1[3]);
  sub_100011084();
  sub_100012798();
  LOBYTE(v11) = 0;
  sub_100012658();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_100012668();
    v11 = *(v3 + 24);
    HIBYTE(v10) = 2;
    sub_10000E8BC(&qword_10001C168, &qword_100012EE0);
    sub_1000110D8(&qword_10001C1A0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_100012648();
    v11 = *(v3 + 32);
    HIBYTE(v10) = 3;
    sub_100012648();
    LOBYTE(v11) = 4;
    sub_100012638();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_100001DCC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100010D54(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_100001E34(uint64_t a1, unint64_t a2)
{
  v4 = sub_100012418();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012408();
  v8 = sub_1000123F8();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  result = 0;
  if (v10 >> 60 != 15)
  {
    v12 = objc_opt_self();
    isa = sub_1000121C8().super.isa;
    v23[0] = 0;
    v14 = [v12 JSONObjectWithData:isa options:1 error:v23];

    if (v14)
    {
      v15 = v23[0];
      sub_100012528();
      sub_100011B48(v8, v10);
      swift_unknownObjectRelease();
      sub_10000E8BC(&qword_10001C260, &qword_100012FA8);
      if (swift_dynamicCast())
      {
        return v22[1];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v16 = v23[0];
      sub_100012108();

      swift_willThrow();
      if (qword_10001C2A0 != -1)
      {
        swift_once();
      }

      v17 = sub_100012388();
      sub_100011144(v17, qword_10001CA80);

      v18 = sub_100012368();
      v19 = sub_1000124F8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v23[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_10000EEB8(a1, a2, v23);
        _os_log_impl(&_mh_execute_header, v18, v19, "Failed to parse dictionary from string %s", v20, 0xCu);
        sub_1000111D0(v21);
      }

      sub_100011B48(v8, v10);

      return 0;
    }
  }

  return result;
}

uint64_t sub_100002174(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = sub_100012218();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  sub_10000E8BC(&qword_10001C270, &qword_100012FC0);
  v2[39] = swift_task_alloc();
  sub_10000E8BC(&qword_10001C1B8, &qword_100012F20);
  v2[40] = swift_task_alloc();
  v4 = sub_10000E8BC(&qword_10001C0B8, &unk_100012D40);
  v2[41] = v4;
  v2[42] = *(v4 - 8);
  v2[43] = swift_task_alloc();

  return _swift_task_switch(sub_10000230C, 0, 0);
}

uint64_t sub_10000230C()
{
  v21 = v0;
  v1 = objc_allocWithZone(NSUserDefaults);
  v2 = sub_1000123D8();
  v3 = [v1 initWithSuiteName:v2];
  v0[44] = v3;

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[45] = v4;
    v5 = type metadata accessor for AppStoreEvalLighthouseWorker(0);
    v6 = sub_10000EC78(&qword_10001C158, &unk_100012DE0);
    v7 = sub_10000EA68();
    v8 = sub_10000EABC();
    *v4 = v0;
    v4[1] = sub_1000025FC;
    v9 = v0[40];
    v10 = v0[34];

    return MLHostExtension.loadConfig<A>(context:)(v9, v10, v5, &type metadata for AppStoreEvalLighthouseWorkerConfig, v6, v7, v8);
  }

  else
  {
    if (qword_10001C2A0 != -1)
    {
      swift_once();
    }

    v11 = sub_100012388();
    sub_100011144(v11, qword_10001CA80);
    v12 = sub_100012368();
    v13 = sub_1000124F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_10000EEB8(0xD00000000000002DLL, 0x80000001000135D0, v20);
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to instantiate userDefaults with suiteName %s. Exiting early.", v14, 0xCu);
      sub_1000111D0(v15);
    }

    v20[3] = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v20[4] = sub_10001117C();
    LOBYTE(v20[0]) = 0;
    v16 = objc_allocWithZone(sub_100012288());
    v17 = sub_100012268();

    v18 = v0[1];

    return v18(v17);
  }
}

uint64_t sub_1000025FC()
{

  return _swift_task_switch(sub_1000026F8, 0, 0);
}

uint64_t sub_1000026F8()
{
  v157 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(*(v0 + 344), v3, v1);
    if (qword_10001C2A0 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 272);
    v12 = sub_100012388();
    v13 = sub_100011144(v12, qword_10001CA80);
    v14 = v11;
    v15 = sub_100012368();
    v16 = sub_1000124F8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v154[0] = v18;
      *v17 = 136315138;
      v19 = sub_100012338();
      v21 = sub_10000EEB8(v19, v20, v154);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "context.taskName %s", v17, 0xCu);
      sub_1000111D0(v18);
    }

    sub_1000122C8();

    if (*(v0 + 64))
    {
LABEL_12:
      v22 = *(v0 + 304);
      v23 = *(v0 + 312);
      v24 = *(v0 + 288);
      v25 = *(v0 + 296);
      sub_100012208();
      sub_1000121F8();
      (*(v25 + 8))(v22, v24);
      v26 = sub_1000121E8();
      v27 = *(v26 - 8);
      v28 = (*(v27 + 48))(v23, 1, v26);
      v29 = *(v0 + 312);
      if (v28 == 1)
      {
        sub_100011BC0(*(v0 + 312), &qword_10001C270, &qword_100012FC0);
        v30 = 0xE300000000000000;
        v31 = 3223600;
      }

      else
      {
        v31 = sub_1000121D8();
        v30 = v44;
        (*(v27 + 8))(v29, v26);
      }

      v45 = sub_100012368();
      v46 = sub_1000124F8();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v154[0] = v48;
        *v47 = 136315138;
        *(v47 + 4) = sub_10000EEB8(v31, v30, v154);
        _os_log_impl(&_mh_execute_header, v45, v46, "Device region is %s", v47, 0xCu);
        sub_1000111D0(v48);
      }

      sub_1000122C8();

      v49 = *(v0 + 96);

      if (v49)
      {

        v50 = sub_100012368();
        v51 = sub_1000124F8();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v154[0] = v53;
          *v52 = 136315138;
          v54 = sub_1000124A8();
          v56 = sub_10000EEB8(v54, v55, v154);

          *(v52 + 4) = v56;
          _os_log_impl(&_mh_execute_header, v50, v51, "Expected regions are %s", v52, 0xCu);
          sub_1000111D0(v53);
        }

        v57 = *(v49 + 16);
        v58 = &_swiftEmptyArrayStorage;
        if (v57)
        {
          v154[0] = &_swiftEmptyArrayStorage;
          sub_10000FDB0(0, v57, 0);
          v58 = v154[0];
          v59 = v49 + 40;
          do
          {
            v60 = sub_100012428();
            v154[0] = v58;
            v63 = v58[2];
            v62 = v58[3];
            if (v63 >= v62 >> 1)
            {
              v149 = v60;
              v151 = v30;
              v65 = v13;
              v66 = v31;
              v67 = v61;
              sub_10000FDB0((v62 > 1), v63 + 1, 1);
              v61 = v67;
              v31 = v66;
              v13 = v65;
              v60 = v149;
              v30 = v151;
              v58 = v154[0];
            }

            v58[2] = v63 + 1;
            v64 = &v58[2 * v63];
            *(v64 + 4) = v60;
            *(v64 + 5) = v61;
            v59 += 16;
            --v57;
          }

          while (v57);
        }

        v68 = sub_1000112E4(v58);

        v69 = sub_100003B34(v31, v30, v68);

        if ((v69 & 1) == 0)
        {

          v110 = sub_100012368();
          v111 = sub_1000124F8();

          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            v154[0] = swift_slowAlloc();
            *v112 = 136315394;
            v113 = sub_10000EEB8(v31, v30, v154);

            *(v112 + 4) = v113;
            *(v112 + 12) = 2080;
            v114 = sub_1000124A8();
            v116 = v115;

            v117 = sub_10000EEB8(v114, v116, v154);

            *(v112 + 14) = v117;
            _os_log_impl(&_mh_execute_header, v110, v111, "Device region is %s, but expected %s. Exiting early.", v112, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v39 = *(v0 + 344);
          v40 = *(v0 + 352);
          v41 = *(v0 + 328);
          v42 = *(v0 + 336);
          v155 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
          v156 = sub_10001117C();
          v43 = 21;
          goto LABEL_67;
        }
      }

      sub_1000122C8();
      v70 = *(v0 + 160);

      if (v70)
      {

        v71 = sub_100012368();
        v72 = sub_1000124F8();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v154[0] = v152;
          *v73 = 136315138;
          v74 = sub_1000124A8();
          v76 = v70;
          v77 = v30;
          v78 = v13;
          v79 = v31;
          v80 = sub_10000EEB8(v74, v75, v154);

          *(v73 + 4) = v80;
          v31 = v79;
          v13 = v78;
          v30 = v77;
          v70 = v76;
          _os_log_impl(&_mh_execute_header, v71, v72, "Excluded regions are %s", v73, 0xCu);
          sub_1000111D0(v152);
        }

        v81 = *(v70 + 16);
        v82 = &_swiftEmptyArrayStorage;
        if (v81)
        {
          v154[0] = &_swiftEmptyArrayStorage;
          sub_10000FDB0(0, v81, 0);
          v82 = v154[0];
          v83 = v70 + 40;
          do
          {
            v84 = sub_100012428();
            v154[0] = v82;
            v87 = v82[2];
            v86 = v82[3];
            if (v87 >= v86 >> 1)
            {
              v150 = v70;
              v153 = v84;
              v89 = v30;
              v90 = v13;
              v91 = v31;
              v92 = v85;
              sub_10000FDB0((v86 > 1), v87 + 1, 1);
              v85 = v92;
              v31 = v91;
              v13 = v90;
              v30 = v89;
              v70 = v150;
              v84 = v153;
              v82 = v154[0];
            }

            v82[2] = v87 + 1;
            v88 = &v82[2 * v87];
            *(v88 + 4) = v84;
            *(v88 + 5) = v85;
            v83 += 16;
            --v81;
          }

          while (v81);
        }

        v93 = sub_1000112E4(v82);

        v94 = sub_100003B34(v31, v30, v93);

        if (v94)
        {

          v95 = sub_100012368();
          v96 = sub_1000124F8();

          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            v154[0] = swift_slowAlloc();
            *v97 = 136315394;
            v98 = sub_10000EEB8(v31, v30, v154);

            *(v97 + 4) = v98;
            *(v97 + 12) = 2080;
            v99 = sub_1000124A8();
            v101 = v100;

            v102 = sub_10000EEB8(v99, v101, v154);

            *(v97 + 14) = v102;
            _os_log_impl(&_mh_execute_header, v95, v96, "Device region is %s, which is excluded by %s. Exiting early.", v97, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v39 = *(v0 + 344);
          v40 = *(v0 + 352);
          v41 = *(v0 + 328);
          v42 = *(v0 + 336);
          v155 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
          v156 = sub_10001117C();
          v43 = 22;
          goto LABEL_67;
        }
      }

      sub_1000122C8();

      v118 = *(v0 + 200);

      if (v118 != 1 || (v119 = *(v0 + 352), sub_100012338(), v120 = sub_1000123D8(), , v121 = [v119 BOOLForKey:v120], v120, !v121))
      {
        v39 = *(v0 + 344);
        v40 = *(v0 + 352);
        v41 = *(v0 + 328);
        v42 = *(v0 + 336);
        v130 = objc_allocWithZone(sub_100012288());
        v131 = sub_100012278();
LABEL_68:
        v10 = v131;

        (*(v42 + 8))(v39, v41);
        goto LABEL_69;
      }

      v122 = *(v0 + 272);
      v123 = sub_100012368();
      v124 = sub_1000124F8();

      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v154[0] = v126;
        *v125 = 136315138;
        v127 = sub_100012338();
        v129 = sub_10000EEB8(v127, v128, v154);

        *(v125 + 4) = v129;
        _os_log_impl(&_mh_execute_header, v123, v124, "%s has already run and runOnce is true. Exiting early.", v125, 0xCu);
        sub_1000111D0(v126);
      }

      v39 = *(v0 + 344);
      v40 = *(v0 + 352);
      v41 = *(v0 + 328);
      v42 = *(v0 + 336);
      v155 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
      v156 = sub_10001117C();
      v43 = 4;
LABEL_67:
      LOBYTE(v154[0]) = v43;
      v146 = objc_allocWithZone(sub_100012288());
      v131 = sub_100012268();
      goto LABEL_68;
    }

    v32 = *(v0 + 56);
    v33 = sub_100012368();
    v34 = sub_1000124F8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      *(v35 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v33, v34, "Sampling is %ld", v35, 0xCu);
    }

    if ((v32 - 1001) <= 0xFFFFFFFFFFFFFC17)
    {
      v36 = sub_100012368();
      v37 = sub_1000124F8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134217984;
        *(v38 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v36, v37, "Sampling is %ld, but expected [1, 1000]. Exiting early.", v38, 0xCu);
      }

      v39 = *(v0 + 344);
      v40 = *(v0 + 352);
      v41 = *(v0 + 328);
      v42 = *(v0 + 336);

      v155 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
      v156 = sub_10001117C();
      v43 = 23;
      goto LABEL_67;
    }

    v103 = *(v0 + 352);
    v154[0] = sub_100012338();
    v154[1] = v104;

    v159._countAndFlagsBits = 0x6E696C706D61732ELL;
    v159._object = 0xE900000000000067;
    sub_100012458(v159);

    v105 = sub_1000123D8();
    v106 = [v103 objectForKey:v105];

    if (v106)
    {
      v107 = *(v0 + 352);
      sub_100012528();
      swift_unknownObjectRelease();
      sub_100011BC0(v0 + 240, &qword_10001C1C8, &qword_100012F28);
      v108 = sub_1000123D8();

      v109 = [v107 BOOLForKey:v108];

      if (v109)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *(v0 + 240) = 0u;
      *(v0 + 256) = 0u;
      sub_100011BC0(v0 + 240, &qword_10001C1C8, &qword_100012F28);
      v132 = sub_10000FD24(0x3E8uLL) + 1;
      v133 = sub_100012368();
      v134 = sub_1000124F8();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        *v135 = 134217984;
        *(v135 + 4) = v132;
        _os_log_impl(&_mh_execute_header, v133, v134, "Sampled probability as %ld. If less than sampling rate, then selected", v135, 0xCu);
      }

      v136 = *(v0 + 352);

      v137 = sub_1000123D8();

      [v136 setBool:v32 >= v132 forKey:v137];

      if (v32 >= v132)
      {
        goto LABEL_12;
      }
    }

    v138 = *(v0 + 272);
    v139 = sub_100012368();
    v140 = sub_1000124F8();

    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v154[0] = v142;
      *v141 = 136315138;
      v143 = sub_100012338();
      v145 = sub_10000EEB8(v143, v144, v154);

      *(v141 + 4) = v145;
      _os_log_impl(&_mh_execute_header, v139, v140, "%s is not selected due to sampling. Exit early.", v141, 0xCu);
      sub_1000111D0(v142);
    }

    v39 = *(v0 + 344);
    v40 = *(v0 + 352);
    v41 = *(v0 + 328);
    v42 = *(v0 + 336);
    v155 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v156 = sub_10001117C();
    v43 = 24;
    goto LABEL_67;
  }

  sub_100011BC0(v3, &qword_10001C1B8, &qword_100012F20);
  if (qword_10001C2A0 != -1)
  {
    swift_once();
  }

  v4 = sub_100012388();
  sub_100011144(v4, qword_10001CA80);
  v5 = sub_100012368();
  v6 = sub_1000124F8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unable to parse config. Exiting early.", v7, 2u);
  }

  v8 = *(v0 + 352);

  v155 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
  v156 = sub_10001117C();
  LOBYTE(v154[0]) = 2;
  v9 = objc_allocWithZone(sub_100012288());
  v10 = sub_100012268();

LABEL_69:

  v147 = *(v0 + 8);

  return v147(v10);
}

unint64_t *sub_1000038E4(uint64_t a1)
{
  sub_10000E8BC(&qword_10001C1A8, &qword_100012F10);
  __chkstk_darwin();
  v4 = &v18 - v3;
  v5 = sub_1000121A8();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v18 = v1;
  v22 = &_swiftEmptyArrayStorage;
  sub_10000FE10(0, v9, 0);
  v10 = v22;
  v20 = v6;
  v21 = (v6 + 48);
  v11 = (v6 + 32);
  v12 = a1 + 40;
  v19 = v4;
  while (1)
  {

    sub_100012178();
    result = (*v21)(v4, 1, v5);
    if (result == 1)
    {
      break;
    }

    v14 = *v11;
    (*v11)(v8, v4, v5);

    v22 = v10;
    v15 = v8;
    v17 = v10[2];
    v16 = v10[3];
    if (v17 >= v16 >> 1)
    {
      sub_10000FE10((v16 > 1), v17 + 1, 1);
      v10 = v22;
    }

    v10[2] = v17 + 1;
    v14(v10 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v15, v5);
    v12 += 16;
    --v9;
    v8 = v15;
    v4 = v19;
    if (!v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100003B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_100012728();
  sub_100012448();
  v6 = sub_100012748();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_100012698() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100003C2C(uint64_t a1)
{
  v2[146] = v1;
  v2[145] = a1;
  v3 = sub_100012118();
  v2[147] = v3;
  v2[148] = *(v3 - 8);
  v2[149] = swift_task_alloc();
  v4 = sub_1000121A8();
  v2[150] = v4;
  v2[151] = *(v4 - 8);
  v2[152] = swift_task_alloc();
  v2[153] = swift_task_alloc();
  v2[154] = swift_task_alloc();
  v2[155] = swift_task_alloc();
  v2[156] = swift_task_alloc();
  v2[157] = swift_task_alloc();
  v2[158] = swift_task_alloc();
  v2[159] = swift_task_alloc();
  v2[160] = swift_task_alloc();
  sub_10000E8BC(&qword_10001C1A8, &qword_100012F10);
  v2[161] = swift_task_alloc();
  v2[162] = swift_task_alloc();
  v2[163] = swift_task_alloc();
  v2[164] = swift_task_alloc();
  sub_10000E8BC(&qword_10001C1B0, &qword_100012F18);
  v2[165] = swift_task_alloc();
  v5 = sub_100012358();
  v2[166] = v5;
  v2[167] = *(v5 - 8);
  v2[168] = swift_task_alloc();
  v6 = sub_100012318();
  v2[169] = v6;
  v2[170] = *(v6 - 8);
  v2[171] = swift_task_alloc();
  sub_10000E8BC(&qword_10001C1B8, &qword_100012F20);
  v2[172] = swift_task_alloc();
  v7 = sub_10000E8BC(&qword_10001C0B8, &unk_100012D40);
  v2[173] = v7;
  v2[174] = *(v7 - 8);
  v2[175] = swift_task_alloc();
  v2[176] = swift_task_alloc();
  v2[177] = swift_task_alloc();
  v2[178] = swift_task_alloc();

  return _swift_task_switch(sub_100003FE8, 0, 0);
}

uint64_t sub_100003FE8()
{
  v29 = v0;
  if (qword_10001C2A0 != -1)
  {
    swift_once();
  }

  v1 = v0[145];
  v2 = sub_100012388();
  v0[179] = sub_100011144(v2, qword_10001CA80);
  v3 = v1;
  v4 = sub_100012368();
  v5 = sub_1000124F8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[145];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v7, 0xCu);
    sub_100011BC0(v8, &qword_10001C208, &qword_100012F60);
  }

  v10 = objc_allocWithZone(NSUserDefaults);
  v11 = sub_1000123D8();
  v12 = [v10 initWithSuiteName:v11];
  v0[180] = v12;

  if (v12)
  {
    v13 = swift_task_alloc();
    v0[181] = v13;
    v14 = type metadata accessor for AppStoreEvalLighthouseWorker(0);
    v15 = sub_10000EC78(&qword_10001C158, &unk_100012DE0);
    v16 = sub_10000EA68();
    v17 = sub_10000EABC();
    *v13 = v0;
    v13[1] = sub_100004500;
    v18 = v0[172];
    v19 = v0[145];

    return MLHostExtension.loadConfig<A>(context:)(v18, v19, v14, &type metadata for AppStoreEvalLighthouseWorkerConfig, v15, v16, v17);
  }

  else
  {
    v20 = sub_100012368();
    v21 = sub_1000124F8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_10000EEB8(0xD00000000000002DLL, 0x80000001000135D0, v28);
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to instantiate userDefaults with suiteName %s. Exiting early.", v22, 0xCu);
      sub_1000111D0(v23);
    }

    v28[3] = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v28[4] = sub_10001117C();
    LOBYTE(v28[0]) = 1;
    v24 = objc_allocWithZone(sub_100012288());
    v27 = sub_100012268();

    v25 = v0[1];

    return v25(v27);
  }
}

uint64_t sub_100004500()
{

  return _swift_task_switch(sub_100004628, 0, 0);
}

uint64_t sub_100004628()
{
  v467 = v0;
  v1 = v0;
  v2 = *(v0 + 1392);
  v3 = *(v0 + 1384);
  v4 = *(v1 + 1376);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    sub_100011BC0(v4, &qword_10001C1B8, &qword_100012F20);
    v5 = sub_100012368();
    v6 = sub_1000124F8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to parse config. Exiting early.", v7, 2u);
    }

    v8 = *(v1 + 1440);

    v465 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v466 = sub_10001117C();
    LOBYTE(v464[0]) = 3;
    v9 = objc_allocWithZone(sub_100012288());
    v443 = sub_100012268();

    goto LABEL_122;
  }

  v10 = *(v1 + 1424);
  v11 = *(v1 + 1416);
  (*(v2 + 32))(v10, v4, v3);
  v12 = *(v2 + 16);
  *(v1 + 1456) = v12;
  *(v1 + 1464) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v11, v10, v3);
  v13 = sub_100012368();
  v14 = sub_1000124F8();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v1 + 1416);
  v17 = *(v1 + 1392);
  v463 = v1;
  v18 = *(v1 + 1384);
  if (v15)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v464[0] = v20;
    *v19 = 136315138;
    sub_100011728(&qword_10001C220, &qword_10001C0B8, &unk_100012D40, &protocol conformance descriptor for MLHostParameters<A>);
    v21 = sub_100012678();
    v23 = v22;
    v24 = *(v17 + 8);
    v24(v16, v18);
    v25 = sub_10000EEB8(v21, v23, v464);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "Configuration: %s", v19, 0xCu);
    sub_1000111D0(v20);
  }

  else
  {

    v24 = *(v17 + 8);
    v24(v16, v18);
  }

  *(v463 + 1472) = v24;
  v1 = v463;
  v26 = *(v463 + 1360);
  v27 = *(v463 + 1352);
  v28 = *(v463 + 1344);
  v29 = *(v463 + 1336);
  v30 = *(v463 + 1328);
  v31 = *(v463 + 1320);
  sub_1000122D8();
  sub_100012348();
  (*(v29 + 8))(v28, v30);
  if ((*(v26 + 48))(v31, 1, v27) != 1)
  {
    (*(*(v463 + 1360) + 32))(*(v463 + 1368), *(v463 + 1320), *(v463 + 1352));
    sub_100012258();
    v48 = sub_100012308();
    v50 = v49;
    *(v463 + 1480) = v49;
    v51 = sub_1000122F8();
    v53 = v52;
    *(v463 + 1488) = v52;
    v54 = swift_task_alloc();
    *(v463 + 1496) = v54;
    *v54 = v463;
    v54[1] = sub_100008260;
    v55 = *(v463 + 1160);
    v56 = v48;
    v57 = v50;
    v58 = v51;
    v59 = v53;

    return static MLHostAsset.getRemoteAsset(context:assetType:assetSpecifier:)(v55, v56, v57, v58, v59);
  }

  sub_100011BC0(*(v463 + 1320), &qword_10001C1B0, &qword_100012F18);
  *(v463 + 1512) = 0;
  v32 = *(v463 + 1456);
  v33 = *(v463 + 1424);
  v34 = *(v463 + 1408);
  v35 = *(v463 + 1384);
  v36 = [objc_allocWithZone(AMDLighthouseODMLWorker) init];
  *(v463 + 1520) = v36;
  v32(v34, v33, v35);
  v37 = sub_100012368();
  v38 = sub_1000124F8();
  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v463 + 1472);
  v41 = *(v463 + 1408);
  v42 = *(v463 + 1384);
  if (v39)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v464[0] = v44;
    *v43 = 136315138;
    sub_1000122C8();
    v40(v41, v42);
    v45 = *(v463 + 184);
    v46 = *(v463 + 192);

    v47 = sub_10000EEB8(v45, v46, v464);

    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v37, v38, "Recipe: %s", v43, 0xCu);
    sub_1000111D0(v44);
  }

  else
  {

    v40(v41, v42);
  }

  sub_1000122C8();
  v61 = *(v463 + 240);
  v60 = *(v463 + 248);

  if (!v61 && v60 == 0xE000000000000000)
  {

    goto LABEL_19;
  }

  v62 = sub_100012698();

  if (v62)
  {
LABEL_19:
    v63 = *(*(v463 + 1208) + 56);
    v63(*(v463 + 1312), 1, 1, *(v463 + 1200));
    sub_100012328();
    if (v64)
    {
      v65 = *(v463 + 1272);
      v452 = *(v463 + 1208);
      v456 = *(v463 + 1200);
      v460 = v36;
      v66 = *(v463 + 1192);
      v67 = *(v463 + 1184);
      v68 = *(v463 + 1176);
      v449 = v63;
      (v63)(*(v463 + 1304), 1, 1);
      v69 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v70 = *(v67 + 104);
      v70(v66, enum case for URL.DirectoryHint.inferFromPath(_:), v68);
      sub_100012188();
      *(v463 + 1000) = 0xD000000000000012;
      *(v463 + 1008) = 0x80000001000136F0;
      v71 = v69;
      v1 = v463;
      v70(v66, v71, v68);
      sub_100011680();
      sub_100012198();
      (*(v67 + 8))(v66, v68);
      v72 = *(v452 + 8);
      v72(v65, v456);
      v73 = [objc_opt_self() defaultManager];
      sub_100012168();
      v74 = sub_1000123D8();

      LODWORD(v65) = [v73 fileExistsAtPath:v74];

      if (v65)
      {
        v75 = *(v463 + 1312);
        v76 = *(v463 + 1280);
        v77 = *(v463 + 1208);
        v78 = *(v463 + 1200);
        sub_100011BC0(v75, &qword_10001C1A8, &qword_100012F10);
        (*(v77 + 32))(v75, v76, v78);
        v449(v75, 0, 1, v78);
      }

      else
      {
        v72(*(v463 + 1280), *(v463 + 1200));
      }

      v36 = v460;
    }

    v119 = *(v1 + 1296);
    v120 = *(v1 + 1208);
    v121 = *(v1 + 1200);
    sub_100011AE0(*(v1 + 1312), v119, &qword_10001C1A8, &qword_100012F10);
    v122 = *(v120 + 48);
    LODWORD(v121) = v122(v119, 1, v121);
    sub_100011BC0(v119, &qword_10001C1A8, &qword_100012F10);
    if (v121 == 1)
    {
      v123 = sub_100012368();
      v124 = sub_1000124F8();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        *v125 = 0;
        _os_log_impl(&_mh_execute_header, v123, v124, "Didn't find a recipe in taskParameters. Checking mobileAssets.", v125, 2u);
      }

      v126 = sub_100012368();
      v127 = sub_100012508();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        *v128 = 0;
        _os_log_impl(&_mh_execute_header, v126, v127, "No MobileAsset found.", v128, 2u);
      }

      v129 = *(v1 + 1472);
      v130 = *(v1 + 1440);
      v131 = *(v1 + 1424);
      v132 = *(v1 + 1384);
      v133 = *(v1 + 1312);

      v465 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
      v466 = sub_10001117C();
      v134 = 7;
LABEL_45:
      LOBYTE(v464[0]) = v134;
      v140 = objc_allocWithZone(sub_100012288());
      v443 = sub_100012268();

      sub_100011BC0(v133, &qword_10001C1A8, &qword_100012F10);
      v129(v131, v132);
LABEL_122:

      v317 = *(v1 + 8);

      return v317(v443);
    }

    v135 = *(v1 + 1288);
    v136 = *(v1 + 1200);
    sub_100011AE0(*(v1 + 1312), v135, &qword_10001C1A8, &qword_100012F10);
    if (v122(v135, 1, v136) == 1)
    {
      sub_100011BC0(*(v1 + 1288), &qword_10001C1A8, &qword_100012F10);
      v137 = sub_100012368();
      v138 = sub_100012508();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        *v139 = 0;
        _os_log_impl(&_mh_execute_header, v137, v138, "Unable to get recipe from task folder or mobileAssets", v139, 2u);
      }

      v129 = *(v1 + 1472);
      v130 = *(v1 + 1440);
      v131 = *(v1 + 1424);
      v132 = *(v1 + 1384);
      v133 = *(v1 + 1312);

      v465 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
      v466 = sub_10001117C();
      v134 = 8;
      goto LABEL_45;
    }

    (*(*(v1 + 1208) + 32))(*(v1 + 1248), *(v1 + 1288), *(v1 + 1200));
    v169 = sub_1000121B8();
    v171 = v170;
    v172 = objc_opt_self();
    isa = sub_1000121C8().super.isa;
    *(v1 + 1112) = 0;
    v174 = [v172 JSONObjectWithData:isa options:0 error:v1 + 1112];

    v175 = *(v1 + 1112);
    if (v174)
    {
      sub_100012528();
      swift_unknownObjectRelease();
      sub_100011614(v1 + 520, v1 + 456);
      sub_10000E8BC(&qword_10001C1D0, &qword_100012F30);
      if (swift_dynamicCast())
      {
        v458 = *(v1 + 1312);
        v176 = *(v1 + 1248);
        v177 = v36;
        v178 = *(v1 + 1208);
        v179 = *(v1 + 1200);
        v180 = sub_100012398().super.isa;

        [v177 setRecipe:v180];
        sub_1000116D4(v169, v171);

        sub_1000111D0((v1 + 520));
        (*(v178 + 8))(v176, v179);
        v36 = v177;
        sub_100011BC0(v458, &qword_10001C1A8, &qword_100012F10);
        goto LABEL_24;
      }

      v462 = v36;
      v260 = sub_100012368();
      v261 = sub_100012508();
      if (os_log_type_enabled(v260, v261))
      {
        v262 = swift_slowAlloc();
        *v262 = 0;
        _os_log_impl(&_mh_execute_header, v260, v261, "Unable to parse recipe into dictionary.", v262, 2u);
      }

      v263 = *(v1 + 1440);
      v455 = *(v1 + 1424);
      v457 = *(v1 + 1472);
      v264 = *(v463 + 1384);
      v265 = *(v463 + 1312);
      v266 = *(v463 + 1248);
      v267 = *(v463 + 1208);
      v268 = *(v463 + 1200);

      v465 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
      v466 = sub_10001117C();
      LOBYTE(v464[0]) = 9;
      v269 = objc_allocWithZone(sub_100012288());
      v443 = sub_100012268();
      sub_1000116D4(v169, v171);

      sub_1000111D0((v463 + 520));
      (*(v267 + 8))(v266, v268);
      sub_100011BC0(v265, &qword_10001C1A8, &qword_100012F10);
      v1 = v463;
      v156 = v455;
      v157 = v264;
    }

    else
    {
      v245 = v175;
      sub_100012108();

      swift_willThrow();
      sub_1000116D4(v169, v171);
      swift_errorRetain();
      v141 = sub_100012368();
      v142 = sub_100012508();

      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v464[0] = v144;
        *v143 = 136315138;
        swift_getErrorValue();
        v145 = sub_1000126D8();
        v147 = sub_10000EEB8(v145, v146, v464);

        *(v143 + 4) = v147;
        _os_log_impl(&_mh_execute_header, v141, v142, "Got error when reading recipe file: %s", v143, 0xCu);
        sub_1000111D0(v144);
      }

      v457 = *(v1 + 1472);
      v148 = *(v463 + 1440);
      v149 = *(v463 + 1424);
      v150 = *(v463 + 1384);
      v151 = *(v463 + 1312);
      v152 = *(v463 + 1248);
      v153 = *(v463 + 1208);
      v154 = *(v463 + 1200);
      v465 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
      v466 = sub_10001117C();
      LOBYTE(v464[0]) = 10;
      v155 = objc_allocWithZone(sub_100012288());
      v443 = sub_100012268();

      v1 = v463;

      (*(v153 + 8))(v152, v154);
      sub_100011BC0(v151, &qword_10001C1A8, &qword_100012F10);
      v156 = v149;
      v157 = v150;
    }

    v457(v156, v157);
    goto LABEL_122;
  }

  sub_1000122C8();
  v79 = *(v463 + 72);
  v80 = *(v463 + 80);

  v81 = sub_100001E34(v79, v80);

  if (!v81)
  {
    (*(v463 + 1456))(*(v463 + 1400), *(v463 + 1424), *(v463 + 1384));
    v158 = sub_100012368();
    v159 = sub_100012508();
    v160 = os_log_type_enabled(v158, v159);
    v161 = *(v463 + 1472);
    v162 = *(v463 + 1400);
    v163 = *(v463 + 1384);
    if (v160)
    {
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v464[0] = v165;
      *v164 = 136315138;
      sub_1000122C8();
      v161(v162, v163);
      v166 = *(v463 + 128);
      v167 = *(v463 + 136);

      v168 = sub_10000EEB8(v166, v167, v464);

      *(v164 + 4) = v168;
      _os_log_impl(&_mh_execute_header, v158, v159, "Failed to parse recipeAsString into dictionary: %s", v164, 0xCu);
      sub_1000111D0(v165);
    }

    else
    {

      v161(v162, v163);
    }

    v199 = *(v463 + 1472);
    v200 = *(v463 + 1440);
    v201 = *(v463 + 1424);
    v202 = *(v463 + 1384);
    v465 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v466 = sub_10001117C();
    LOBYTE(v464[0]) = 6;
    v203 = objc_allocWithZone(sub_100012288());
    v443 = sub_100012268();

    v199(v201, v202);
    goto LABEL_122;
  }

  sub_10000D444(v81);

  v82 = sub_100012398().super.isa;

  [v36 setRecipe:v82];

LABEL_24:
  v83 = v36;
  v84 = sub_100012368();
  v85 = sub_1000124F8();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v464[0] = v87;
    *v86 = 136315138;
    v88 = [v83 recipe];
    sub_1000123A8();

    v1 = v463;
    v89 = sub_1000123B8();
    v91 = v90;

    v92 = sub_10000EEB8(v89, v91, v464);

    *(v86 + 4) = v92;
    _os_log_impl(&_mh_execute_header, v84, v85, "worker.recipe: %s", v86, 0xCu);
    sub_1000111D0(v87);
  }

  if (os_variant_has_internal_diagnostics())
  {
    v93 = 1001;
  }

  else
  {
    v93 = 5001;
  }

  sub_100012338();
  v94 = objc_allocWithZone(TRIExperimentIdentifiers);
  v95 = sub_1000123D8();
  v96 = sub_1000123D8();

  v97 = [v94 initWithExperimentId:v95 deploymentId:v93 treatmentId:v96];

  [v83 setTriExperimentIdentifiers:v97];
  v98 = swift_allocObject();
  *(v1 + 1528) = v98;
  *(v98 + 16) = 0;
  v99 = (v98 + 16);
  v100 = [v83 recipe];
  v101 = sub_1000123A8();

  sub_10000D698(v101);

  v102 = sub_100012398().super.isa;

  *(v1 + 1144) = *(v98 + 16);
  v103 = [v83 checkIfModelShouldBeDownloaded:v102 outError:v1 + 1144];
  *(v1 + 1536) = v103;

  v104 = *(v1 + 1144);
  v105 = *(v98 + 16);
  *(v98 + 16) = v104;
  v106 = v104;

  if (*(v98 + 16))
  {

    v107 = sub_100012368();
    v108 = sub_1000124F8();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = v103;
      v111 = swift_slowAlloc();
      *v109 = 138412290;
      swift_beginAccess();
      v112 = *v99;
      *(v109 + 4) = *v99;
      *v111 = v112;
      v113 = v112;
      _os_log_impl(&_mh_execute_header, v107, v108, "Got error getting data processor: %@", v109, 0xCu);
      sub_100011BC0(v111, &qword_10001C208, &qword_100012F60);
      v103 = v110;
    }

    v114 = *(v1 + 1472);
    v115 = *(v1 + 1440);
    v116 = *(v1 + 1424);
    v117 = *(v1 + 1384);

    v465 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v466 = sub_10001117C();
    LOBYTE(v464[0]) = 11;
    v118 = objc_allocWithZone(sub_100012288());
    v443 = sub_100012268();

    v114(v116, v117);
    goto LABEL_121;
  }

  v461 = v103;
  v181 = v83;
  v182 = sub_100012368();
  v183 = sub_1000124F8();

  if (os_log_type_enabled(v182, v183))
  {
    v184 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    *v184 = 138412290;
    v186 = [v181 triExperimentIdentifiers];
    *(v184 + 4) = v186;
    *v185 = v186;
    _os_log_impl(&_mh_execute_header, v182, v183, "Trial experiment identifiers: %@", v184, 0xCu);
    sub_100011BC0(v185, &qword_10001C208, &qword_100012F60);
  }

  v187 = swift_allocObject();
  *(v1 + 1544) = v187;
  *(v187 + 16) = &_swiftEmptyArrayStorage;
  v188 = sub_100012368();
  v189 = sub_1000124F8();
  if (os_log_type_enabled(v188, v189))
  {
    v190 = swift_slowAlloc();
    *v190 = 0;
    _os_log_impl(&_mh_execute_header, v188, v189, "No task folder found", v190, 2u);
  }

  swift_retain_n();
  v191 = sub_100012368();
  v192 = sub_1000124F8();

  if (os_log_type_enabled(v191, v192))
  {
    v193 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v464[0] = v194;
    *v193 = 136315138;
    swift_beginAccess();

    v195 = sub_1000124A8();
    v197 = v196;

    v198 = sub_10000EEB8(v195, v197, v464);

    *(v193 + 4) = v198;
    _os_log_impl(&_mh_execute_header, v191, v192, "All URLS: %s", v193, 0xCu);
    sub_1000111D0(v194);

    v1 = v463;
  }

  else
  {
  }

  swift_beginAccess();
  v204 = objc_allocWithZone(MLRTaskAttachments);

  v205 = sub_100012488().super.isa;

  v206 = [v204 initWithURLs:v205];
  *(v1 + 1552) = v206;

  v207 = v206;
  v208 = sub_100012368();
  v209 = sub_1000124F8();

  if (os_log_type_enabled(v208, v209))
  {
    v210 = swift_slowAlloc();
    v211 = swift_slowAlloc();
    *v210 = 138412290;
    *(v210 + 4) = v207;
    *v211 = v207;
    v212 = v207;
    _os_log_impl(&_mh_execute_header, v208, v209, "taskAttachments: %@", v210, 0xCu);
    sub_100011BC0(v211, &qword_10001C208, &qword_100012F60);
  }

  v55 = [v461 getCoreDictionary];
  if (!v55)
  {
    __break(1u);
    goto LABEL_220;
  }

  v213 = v55;
  sub_1000123A8();

  v214 = sub_100012398().super.isa;

  v215 = [v181 recipe];
  v216 = sub_1000123A8();

  sub_10000D698(v216);

  v1 = v463;
  v217 = sub_100012398().super.isa;

  *(v463 + 1136) = *v99;
  v218 = [v181 gatherMetricsToReturn:v214 withRecipe:v217 withAttachments:v207 outError:v463 + 1136];

  v219 = *(v463 + 1136);
  v220 = *v99;
  *v99 = v219;
  v221 = v219;

  v222 = sub_100012498();
  v223 = sub_10000D960(v222);
  *(v463 + 1560) = v223;

  v224 = sub_100012368();
  v225 = sub_1000124F8();
  if (os_log_type_enabled(v224, v225))
  {
    v226 = swift_slowAlloc();
    *v226 = 0;
    _os_log_impl(&_mh_execute_header, v224, v225, "Gathered metrics!", v226, 2u);
  }

  v227 = sub_100012368();
  v228 = sub_1000124F8();

  v453 = v207;
  if (os_log_type_enabled(v227, v228))
  {
    v229 = swift_slowAlloc();
    v230 = swift_slowAlloc();
    v464[0] = v230;
    *v229 = 136315138;
    sub_10000E8BC(&qword_10001C1D0, &qword_100012F30);
    v231 = sub_1000124A8();
    v233 = sub_10000EEB8(v231, v232, v464);

    *(v229 + 4) = v233;
    _os_log_impl(&_mh_execute_header, v227, v228, "Results: %s", v229, 0xCu);
    sub_1000111D0(v230);
  }

  if (*v99)
  {

    v234 = sub_100012368();
    v235 = sub_1000124F8();

    if (os_log_type_enabled(v234, v235))
    {
      v236 = swift_slowAlloc();
      v237 = swift_slowAlloc();
      *v236 = 138412290;
      swift_beginAccess();
      v238 = *v99;
      *(v236 + 4) = *v99;
      *v237 = v238;
      v239 = v238;
      _os_log_impl(&_mh_execute_header, v234, v235, "Got error getting metrics: %@", v236, 0xCu);
      sub_100011BC0(v237, &qword_10001C208, &qword_100012F60);
    }

    v240 = *(v463 + 1472);
    v241 = *(v463 + 1440);
    v242 = *(v463 + 1424);
    v243 = *(v463 + 1384);

    v465 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v466 = sub_10001117C();
    LOBYTE(v464[0]) = 13;
    v244 = objc_allocWithZone(sub_100012288());
    v443 = sub_100012268();

    goto LABEL_120;
  }

  v450 = v223;
  v246 = v181;
  v247 = sub_100012368();
  v248 = sub_1000124F8();

  v451 = v246;
  if (os_log_type_enabled(v247, v248))
  {
    v249 = swift_slowAlloc();
    v250 = swift_slowAlloc();
    v464[0] = v250;
    *v249 = 136315138;
    v251 = sub_1000123E8();
    v253 = v252;
    v254 = [v246 recipe];
    v255 = sub_1000123A8();

    v1 = v463;
    sub_10000DB8C(v251, v253, v255, (v463 + 360));

    sub_10000E8BC(&qword_10001C1C8, &qword_100012F28);
    v256 = sub_100012518();
    v258 = v257;
    v246 = v451;
    sub_100011BC0(v463 + 360, &qword_10001C1C8, &qword_100012F28);
    v259 = sub_10000EEB8(v256, v258, v464);

    *(v249 + 4) = v259;
    _os_log_impl(&_mh_execute_header, v247, v248, "Logging strategies: %s", v249, 0xCu);
    sub_1000111D0(v250);
  }

  else
  {

    v1 = v463;
  }

  v270 = sub_1000123E8();
  v272 = v271;
  v273 = [v246 recipe];
  v274 = sub_1000123A8();

  sub_10000DB8C(v270, v272, v274, (v1 + 424));

  if (!*(v1 + 448))
  {

    sub_100011BC0(v1 + 424, &qword_10001C1C8, &qword_100012F28);
LABEL_116:
    v311 = sub_100012368();
    v312 = sub_100012508();
    if (os_log_type_enabled(v311, v312))
    {
      v313 = swift_slowAlloc();
      *v313 = 0;
      _os_log_impl(&_mh_execute_header, v311, v312, "Logging strategies missing", v313, 2u);
    }

    v240 = *(v1 + 1472);
    v314 = *(v1 + 1440);
    v242 = *(v1 + 1424);
    v243 = *(v1 + 1384);

    v465 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v466 = sub_10001117C();
    v315 = 14;
    goto LABEL_119;
  }

  sub_10000E8BC(&qword_10001C168, &qword_100012EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_116;
  }

  v275 = v1 + 984;
  v276 = v1;
  v277 = *(v1 + 1120);
  *(v276 + 1568) = v277;
  *(v276 + 984) = 0x6E61697373756147;
  *(v276 + 992) = 0xEF6F637369446544;
  v278 = swift_task_alloc();
  *(v278 + 16) = v275;
  LOBYTE(v275) = sub_1000103D0(sub_10001128C, v278, v277);

  if ((v275 & 1) == 0)
  {
LABEL_191:
    v382 = *(v276 + 1568);
    v383 = v382[2];
    v384 = v276;
    if (v383 <= 1 && (v383 != 1 || v382[4] == 0x6E61697373756147 && v382[5] == 0xEF6F637369446544 || (sub_100012698() & 1) != 0))
    {
    }

    else
    {
      v385 = *(v276 + 1528);
      v386 = *(v384 + 1520);
      sub_10000DA78(*(v384 + 1560));

      v387 = sub_100012488().super.isa;

      v388 = sub_100012488().super.isa;

      *(v384 + 1096) = *(v385 + 16);
      v389 = [v386 logAllResultsToCoreAnalyticsOrDeDisco:v387 withLoggingStrategies:v388 outError:v384 + 1096];

      v390 = *(v384 + 1096);
      v391 = *(v385 + 16);
      *(v385 + 16) = v390;
      v392 = v390;
    }

    sub_1000122C8();

    v393 = *(v384 + 32);

    if (v393 == 1)
    {
      v394 = *(v384 + 1440);
      v395 = *(v384 + 1160);
      v396 = sub_1000124B8().super.super.isa;
      sub_100012338();
      v397 = sub_1000123D8();

      [v394 setValue:v396 forKey:v397];

      v398 = v395;
      v399 = sub_100012368();
      v400 = sub_1000124F8();

      if (os_log_type_enabled(v399, v400))
      {
        v401 = swift_slowAlloc();
        v402 = swift_slowAlloc();
        v464[0] = v402;
        *v401 = 136315138;
        v403 = sub_100012338();
        v405 = sub_10000EEB8(v403, v404, v464);

        *(v401 + 4) = v405;
        _os_log_impl(&_mh_execute_header, v399, v400, "Execution state saved for taskName %s.", v401, 0xCu);
        sub_1000111D0(v402);
      }
    }

    v406 = *(v384 + 1552);
    v407 = *(v384 + 1536);
    v408 = *(v384 + 1520);
    v409 = *(v463 + 1472);
    v410 = *(v463 + 1440);
    v411 = *(v463 + 1424);
    v412 = *(v463 + 1384);
    v413 = objc_allocWithZone(sub_100012288());
    v443 = sub_100012278();

    v409(v411, v412);
    v1 = v463;
LABEL_203:

    goto LABEL_121;
  }

  v279 = [v451 recipe];
  v280 = sub_1000123A8();

  sub_10000DB8C(0x436F637369646564, 0xED00006769666E6FLL, v280, (v276 + 584));

  if (!*(v276 + 608))
  {

    sub_100011BC0(v276 + 584, &qword_10001C1C8, &qword_100012F28);
LABEL_127:
    v1 = v276;
    v319 = sub_100012368();
    v320 = sub_100012508();
    if (os_log_type_enabled(v319, v320))
    {
      v321 = swift_slowAlloc();
      *v321 = 0;
      _os_log_impl(&_mh_execute_header, v319, v320, "Recipe lacked dediscoConfig but specified GaussianDeDisco", v321, 2u);
    }

    v240 = *(v276 + 1472);
    v314 = *(v276 + 1440);
    v242 = *(v1 + 1424);
    v243 = *(v1 + 1384);

    v465 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v466 = sub_10001117C();
    v315 = 15;
    goto LABEL_119;
  }

  v281 = sub_10000E8BC(&qword_10001C1D0, &qword_100012F30);
  *(v276 + 1576) = v281;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_127;
  }

  v282 = *(v276 + 1080);
  sub_10000DB8C(0x676E69646F636E65, 0xEE00616D65686353, v282, (v276 + 648));
  if (!*(v276 + 672))
  {

    sub_100011BC0(v276 + 648, &qword_10001C1C8, &qword_100012F28);
    v1 = v276;
LABEL_132:
    v322 = sub_100012368();
    v323 = sub_100012508();
    if (os_log_type_enabled(v322, v323))
    {
      v324 = swift_slowAlloc();
      *v324 = 0;
      _os_log_impl(&_mh_execute_header, v322, v323, "dediscoConfig lacked encodingSchema but specified GaussianDeDisco", v324, 2u);
    }

    v240 = *(v1 + 1472);
    v314 = *(v1 + 1440);
    v242 = *(v1 + 1424);
    v243 = *(v1 + 1384);

    v465 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v466 = sub_10001117C();
    v315 = 16;
LABEL_119:
    LOBYTE(v464[0]) = v315;
    v316 = objc_allocWithZone(sub_100012288());
    v443 = sub_100012268();

LABEL_120:
    v240(v242, v243);

LABEL_121:

    goto LABEL_122;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    v1 = v463;
    goto LABEL_132;
  }

  v283 = v463;
  v284 = *(v463 + 1072);
  v285 = sub_10001137C(&_swiftEmptyArrayStorage);
  sub_10000DB8C(0xD000000000000010, 0x8000000100013670, v284, (v463 + 712));
  if (!*(v463 + 736))
  {

    sub_100011BC0(v463 + 712, &qword_10001C1C8, &qword_100012F28);
LABEL_137:

    v1 = v463;
    v325 = sub_100012368();
    v326 = sub_100012508();
    if (os_log_type_enabled(v325, v326))
    {
      v327 = swift_slowAlloc();
      *v327 = 0;
      _os_log_impl(&_mh_execute_header, v325, v326, "Got malformed dataContentTypes", v327, 2u);
    }

    v328 = *(v463 + 1472);
    v329 = *(v463 + 1440);
    v330 = *(v463 + 1424);
    v331 = *(v463 + 1384);

    v465 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v466 = sub_10001117C();
    v332 = 17;
    goto LABEL_189;
  }

  v445 = v284;
  v446 = v282;
  v447 = v285;
  v442 = sub_10000E8BC(&qword_10001C1D8, &qword_100012F38);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_137;
  }

  v286 = 0;
  v440 = (v463 + 744);
  v441 = (v463 + 1024);
  v438 = (v463 + 1032);
  v439 = (v463 + 1040);
  v287 = *(v463 + 1064);
  v288 = *(v287 + 64);
  v444 = v287 + 64;
  v448 = v287;
  v289 = -1;
  v290 = -1 << *(v287 + 32);
  if (-v290 < 64)
  {
    v289 = ~(-1 << -v290);
  }

  v291 = v289 & v288;
  v292 = (63 - v290) >> 6;
LABEL_95:
  *(v463 + 1584) = v447;
  v293 = v286;
  if (!v291)
  {
    goto LABEL_97;
  }

  do
  {
    v286 = v293;
LABEL_100:
    v294 = __clz(__rbit64(v291));
    v291 &= v291 - 1;
    v295 = v294 | (v286 << 6);
    v296 = *(v448 + 48) + 16 * v295;
    v283 = *v296;
    v297 = *(v296 + 8);
    v298 = *(*(v448 + 56) + 8 * v295);

    v469._countAndFlagsBits = 0x6E61697373756167;
    v469._object = 0xE90000000000003ALL;
    if (sub_100012478(v469))
    {
      *(v463 + 920) = v283;
      *(v463 + 928) = v297;
      *(v463 + 936) = 0x6E61697373756167;
      *(v463 + 944) = 0xE90000000000003ALL;
      sub_1000114AC();
      sub_1000124E8();
      v436 = sub_100012438();
      v437 = v299;

      *(v463 + 640) = v281;
      *(v463 + 616) = v298;
      sub_100011500((v463 + 616), (v463 + 552));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v464[0] = v447;
      v301 = sub_100010358(v436, v437);
      v302 = v447[2].isa;
      v303 = (v56 & 1) == 0;
      v55 = (v302 + v303);
      if (__OFADD__(v302, v303))
      {
        goto LABEL_221;
      }

      v304 = v56;
      if (v447[3].isa >= v55)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v56)
          {
            goto LABEL_111;
          }
        }

        else
        {
          sub_10001099C();
          v447 = v464[0];
          if (v304)
          {
            goto LABEL_111;
          }
        }
      }

      else
      {
        sub_10001047C(v55, isUniquelyReferenced_nonNull_native);
        v447 = v464[0];
        v305 = sub_100010358(v436, v437);
        if ((v304 & 1) != (v306 & 1))
        {
LABEL_216:

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
        }

        v301 = v305;
        if (v304)
        {
LABEL_111:
          v283 = (v447[7].isa + 32 * v301);
          sub_1000111D0(v283);
          sub_100011500((v463 + 552), v283);

          goto LABEL_95;
        }
      }

      v283 = v447;
      v447[(v301 >> 6) + 8].isa = (v447[(v301 >> 6) + 8].isa | (1 << v301));
      v307 = (v447[6].isa + 16 * v301);
      *v307 = v436;
      v307[1] = v437;
      v55 = sub_100011500((v463 + 552), v447[7].isa + 2 * v301);
      v308 = v447[2].isa;
      v309 = __OFADD__(v308, 1);
      v310 = (v308 + 1);
      if (v309)
      {
        goto LABEL_222;
      }

      v447[2].isa = v310;
      goto LABEL_95;
    }

    v293 = v286;
  }

  while (v291);
  while (1)
  {
LABEL_97:
    v286 = v293 + 1;
    if (__OFADD__(v293, 1))
    {
      __break(1u);
LABEL_212:

LABEL_213:
      v432 = *(v463 + 1608);
      v433 = swift_task_alloc();
      *(v463 + 1632) = v433;
      v434 = *v461;
      *(v433 + 16) = v432;
      *(v433 + 24) = 0xD000000000000031;
      *(v433 + 32) = 0x8000000100013630;
      *(v433 + 40) = v441;
      *(v433 + 48) = v434;
      v435 = swift_task_alloc();
      *(v463 + 1640) = v435;
      *v435 = v463;
      v435[1] = sub_10000C578;

      return withCheckedContinuation<A>(isolation:function:_:)(v463 + 65, 0, 0, 0xD000000000000010, 0x80000001000136D0, sub_100011670, v433, &type metadata for Bool);
    }

    if (v286 >= v292)
    {
      break;
    }

    v291 = *(v444 + 8 * v286);
    ++v293;
    if (v291)
    {
      goto LABEL_100;
    }
  }

  sub_10000DB8C(1701869940, 0xE400000000000000, v445, (v463 + 296));

  if (!*(v463 + 320))
  {

    sub_100011BC0(v463 + 296, &qword_10001C1C8, &qword_100012F28);
LABEL_181:

    v375 = sub_100012368();
    v376 = sub_100012508();
    if (os_log_type_enabled(v375, v376))
    {
      v377 = swift_slowAlloc();
      *v377 = 0;
      _os_log_impl(&_mh_execute_header, v375, v376, "encodingSchema lacked type", v377, 2u);
    }

    v1 = v463;
    v328 = *(v463 + 1472);
    v329 = *(v463 + 1440);
    v330 = *(v463 + 1424);
    v331 = *(v463 + 1384);

    v465 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v466 = sub_10001117C();
    v332 = 18;
    goto LABEL_189;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_181;
  }

  v333 = *(v463 + 968);
  v334 = *(v463 + 976);
  sub_10000E8BC(&qword_10001C1E8, &qword_100012F40);
  v335 = swift_allocObject();
  *(v335 + 16) = xmmword_100012D20;
  *(v335 + 32) = 1701869940;
  *(v335 + 40) = 0xE400000000000000;
  *(v335 + 48) = v333;
  *(v335 + 56) = v334;
  *(v335 + 72) = &type metadata for String;
  *(v335 + 80) = 0xD000000000000012;
  *(v335 + 88) = 0x8000000100013690;
  sub_10000E8BC(&qword_10001C1F0, &qword_100012F48);
  v336 = swift_allocObject();
  *(v336 + 16) = xmmword_100012D30;
  *(v336 + 32) = 0xD000000000000010;
  *(v336 + 40) = 0x8000000100013670;
  *(v336 + 48) = v447;

  v337 = sub_100011510(v336);
  swift_setDeallocating();
  sub_100011BC0(v336 + 32, &qword_10001C1F8, &qword_100012F50);
  swift_deallocClassInstance();
  *(v335 + 120) = v442;
  *(v335 + 96) = v337;
  *(v463 + 1592) = sub_10001137C(v335);
  swift_setDeallocating();
  sub_10000E8BC(&qword_10001C200, &qword_100012F58);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10000DB8C(0xD00000000000001DLL, 0x80000001000136B0, v446, (v463 + 488));

  if (!*(v463 + 512))
  {

    sub_100011BC0(v463 + 488, &qword_10001C1C8, &qword_100012F28);
LABEL_186:

    v378 = sub_100012368();
    v379 = sub_100012508();
    if (os_log_type_enabled(v378, v379))
    {
      v380 = swift_slowAlloc();
      *v380 = 0;
      _os_log_impl(&_mh_execute_header, v378, v379, "dediscoConfig lacked DifferentialPrivacyParameters but specified GaussianDeDisco", v380, 2u);
    }

    v1 = v463;
    v328 = *(v463 + 1472);
    v329 = *(v463 + 1440);
    v330 = *(v463 + 1424);
    v331 = *(v463 + 1384);

    v465 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v466 = sub_10001117C();
    v332 = 19;
LABEL_189:
    LOBYTE(v464[0]) = v332;
    v381 = objc_allocWithZone(sub_100012288());
    v443 = sub_100012268();

    v328(v330, v331);

    goto LABEL_121;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_186;
  }

  *(v463 + 1600) = *(v463 + 1016);
  v55 = [objc_opt_self() defaultManager];
  *(v463 + 1608) = v55;
  v338 = v450[2];
  *(v463 + 1616) = v338;
  if (!v338)
  {
    v276 = v463;

    goto LABEL_191;
  }

  *(v463 + 1624) = 0;
  v339 = *(v463 + 1560);
  if (!*(v339 + 16))
  {
    goto LABEL_223;
  }

  v340 = *(v339 + 32);

  sub_10000DB8C(0x74654D6C65646F4DLL, 0xEC00000073636972, v340, (v463 + 392));

  if (!*(v463 + 416))
  {

    sub_100011BC0(v463 + 392, &qword_10001C1C8, &qword_100012F28);
LABEL_206:

    v414 = sub_100012368();
    v415 = sub_100012508();
    if (os_log_type_enabled(v414, v415))
    {
      v416 = swift_slowAlloc();
      *v416 = 0;
      _os_log_impl(&_mh_execute_header, v414, v415, "Measurements were malformed", v416, 2u);
    }

    v1 = v463;
    v417 = *(v463 + 1608);
    v418 = *(v463 + 1552);
    v419 = *(v463 + 1536);
    v420 = *(v463 + 1520);
    v454 = *(v463 + 1472);
    v421 = *(v463 + 1440);
    v422 = *(v463 + 1424);
    v423 = *(v463 + 1384);

    v465 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v466 = sub_10001117C();
    LOBYTE(v464[0]) = 20;
    v424 = objc_allocWithZone(sub_100012288());
    v443 = sub_100012268();

    v454(v422, v423);
    goto LABEL_203;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_206;
  }

  v461 = (v463 + 1592);
  v341 = *(v463 + 1048);
  *v441 = sub_10001137C(&_swiftEmptyArrayStorage);
  v342 = v341 + 64;
  v343 = -1;
  v344 = -1 << *(v341 + 32);
  if (-v344 < 64)
  {
    v343 = ~(-1 << -v344);
  }

  v345 = v343 & *(v341 + 64);
  v346 = (63 - v344) >> 6;
  v347 = v341;

  v348 = 0;
  while (v345)
  {
    v349 = v345;
LABEL_157:
    v345 = (v349 - 1) & v349;
    if (*(*(v463 + 1584) + 16))
    {
      v351 = (v347[6] + ((v348 << 10) | (16 * __clz(__rbit64(v349)))));
      v353 = *v351;
      v352 = v351[1];

      sub_100010358(v353, v352);
      v355 = v354;

      if (v355)
      {
        if (v347[2] && (v356 = sub_100010358(v353, v352), (v357 & 1) != 0))
        {
          sub_100011614(v347[7] + 32 * v356, v463 + 328);
          v358 = swift_isUniquelyReferenced_nonNull_native();
          v359 = *v441;
          *v439 = *v441;
          v360 = sub_100010358(v353, v352);
          v361 = *(v359 + 16);
          v459 = v56;
          v362 = (v56 & 1) == 0;
          v55 = (v361 + v362);
          if (__OFADD__(v361, v362))
          {
            goto LABEL_224;
          }

          if (*(v359 + 24) >= v55)
          {
            if ((v358 & 1) == 0)
            {
              sub_10001099C();
            }
          }

          else
          {
            sub_10001047C(v55, v358);
            v363 = sub_100010358(v353, v352);
            if ((v459 & 1) != (v364 & 1))
            {
              goto LABEL_216;
            }

            v360 = v363;
          }

          v370 = *v439;
          if (v459)
          {
            v371 = (v370[7] + 32 * v360);
            sub_1000111D0(v371);
            sub_100011500((v463 + 328), v371);
          }

          else
          {
            v370[(v360 >> 6) + 8] |= 1 << v360;
            v372 = (v370[6] + 16 * v360);
            *v372 = v353;
            v372[1] = v352;
            v55 = sub_100011500((v463 + 328), (v370[7] + 32 * v360));
            v373 = v370[2];
            v309 = __OFADD__(v373, 1);
            v374 = v373 + 1;
            if (v309)
            {
              goto LABEL_225;
            }

            v370[2] = v374;
          }

          *v441 = v370;
        }

        else
        {
          v365 = sub_100010358(v353, v352);
          v367 = v366;

          if (v367)
          {
            v368 = swift_isUniquelyReferenced_nonNull_native();
            v369 = *v441;
            *v438 = *v441;
            if (!v368)
            {
              sub_10001099C();
              v369 = *v438;
            }

            sub_100011500((*(v369 + 56) + 32 * v365), v440);
            sub_100010734(v365, v369);
            *v441 = v369;
          }

          else
          {
            *v440 = 0u;
            *(v463 + 760) = 0u;
          }

          v55 = sub_100011BC0(v440, &qword_10001C1C8, &qword_100012F28);
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v350 = v348 + 1;
    if (__OFADD__(v348, 1))
    {
      break;
    }

    if (v350 >= v346)
    {

      v283 = sub_100012368();
      v425 = sub_1000124F8();

      if (!os_log_type_enabled(v283, v425))
      {
        goto LABEL_212;
      }

      v426 = swift_slowAlloc();
      v427 = swift_slowAlloc();
      v464[0] = v427;
      *v426 = 136315138;
      v428 = sub_1000123B8();
      v430 = v429;

      v431 = sub_10000EEB8(v428, v430, v464);

      *(v426 + 4) = v431;
      _os_log_impl(&_mh_execute_header, v283, v425, "Measurements: %s", v426, 0xCu);
      sub_1000111D0(v427);

      goto LABEL_213;
    }

    v349 = *(v342 + 8 * v350);
    ++v348;
    if (v349)
    {
      v348 = v350;
      goto LABEL_157;
    }
  }

LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
  return static MLHostAsset.getRemoteAsset(context:assetType:assetSpecifier:)(v55, v56, v57, v58, v59);
}

uint64_t sub_100008260(uint64_t a1)
{
  *(*v1 + 1504) = a1;

  return _swift_task_switch(sub_1000083D0, 0, 0);
}

uint64_t sub_1000083D0(uint64_t a1)
{
  v520 = v1;
  v2 = v1;
  v3 = sub_100012368();
  v4 = sub_1000124F8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v1 + 1504);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v517[0] = v7;
    *v6 = 136315138;
    *(v2 + 1152) = v5;
    sub_10000E8BC(&qword_10001C218, &qword_100012F68);
    v8 = sub_100012518();
    v10 = sub_10000EEB8(v8, v9, v517);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Got ML host asset: %s", v6, 0xCu);
    sub_1000111D0(v7);
  }

  v516 = v2;
  if (!*(v2 + 1504))
  {
    v27 = sub_100012368();
    v28 = sub_1000124F8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to get mlhostAsset", v29, 2u);
    }

    v30 = *(v2 + 1472);
    v31 = *(v2 + 1440);
    v32 = *(v2 + 1424);
    v33 = *(v2 + 1384);
    v34 = *(v2 + 1368);
    v35 = *(v2 + 1360);
    v36 = *(v2 + 1352);

    v518 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v519 = sub_10001117C();
    LOBYTE(v517[0]) = 5;
    v37 = objc_allocWithZone(sub_100012288());
    v484 = sub_100012268();

    (*(v35 + 8))(v34, v36);
    v30(v32, v33);
    goto LABEL_86;
  }

  (*(*(v2 + 1360) + 8))(*(v2 + 1368), *(v2 + 1352));
  v11 = *(v2 + 1504);
  *(v2 + 1512) = v11;
  v12 = *(v2 + 1456);
  v13 = *(v2 + 1424);
  v14 = *(v2 + 1408);
  v15 = *(v2 + 1384);
  v506 = [objc_allocWithZone(AMDLighthouseODMLWorker) init];
  *(v2 + 1520) = v506;
  v12(v14, v13, v15);
  v16 = sub_100012368();
  v17 = sub_1000124F8();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v2 + 1472);
  v20 = *(v2 + 1408);
  v21 = *(v2 + 1384);
  if (v18)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v517[0] = v23;
    *v22 = 136315138;
    sub_1000122C8();
    v19(v20, v21);
    v24 = *(v2 + 184);
    v25 = *(v2 + 192);

    v26 = sub_10000EEB8(v24, v25, v517);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "Recipe: %s", v22, 0xCu);
    sub_1000111D0(v23);
  }

  else
  {

    v19(v20, v21);
  }

  sub_1000122C8();
  v39 = *(v2 + 240);
  v38 = *(v2 + 248);

  if (!v39 && v38 == 0xE000000000000000)
  {

    goto LABEL_14;
  }

  v40 = sub_100012698();

  if (v40)
  {
LABEL_14:
    v41 = *(*(v2 + 1208) + 56);
    v41(*(v2 + 1312), 1, 1, *(v2 + 1200));
    sub_100012328();
    v514 = v11;
    v499 = v41;
    if (v42)
    {
      v43 = *(v2 + 1272);
      v492 = *(v2 + 1208);
      v495 = *(v2 + 1200);
      v44 = *(v2 + 1192);
      v45 = *(v2 + 1184);
      v46 = *(v2 + 1176);
      (v41)(*(v2 + 1304), 1, 1);
      v47 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v48 = *(v45 + 104);
      v48(v44, enum case for URL.DirectoryHint.inferFromPath(_:), v46);
      sub_100012188();
      *(v2 + 1000) = 0xD000000000000012;
      *(v2 + 1008) = 0x80000001000136F0;
      v48(v44, v47, v46);
      sub_100011680();
      sub_100012198();
      (*(v45 + 8))(v44, v46);
      v49 = *(v492 + 8);
      v49(v43, v495);
      v50 = [objc_opt_self() defaultManager];
      sub_100012168();
      v51 = sub_1000123D8();

      LODWORD(v43) = [v50 fileExistsAtPath:v51];

      if (v43)
      {
        v52 = *(v2 + 1312);
        v53 = *(v2 + 1280);
        v54 = *(v2 + 1208);
        v55 = *(v2 + 1200);
        sub_100011BC0(v52, &qword_10001C1A8, &qword_100012F10);
        (*(v54 + 32))(v52, v53, v55);
        v499(v52, 0, 1, v55);
      }

      else
      {
        v49(*(v2 + 1280), *(v2 + 1200));
      }
    }

    v106 = *(v2 + 1296);
    v107 = *(v2 + 1208);
    v108 = *(v2 + 1200);
    sub_100011AE0(*(v2 + 1312), v106, &qword_10001C1A8, &qword_100012F10);
    v109 = *(v107 + 48);
    LODWORD(v108) = v109(v106, 1, v108);
    sub_100011BC0(v106, &qword_10001C1A8, &qword_100012F10);
    if (v108 == 1)
    {
      v110 = sub_100012368();
      v111 = sub_1000124F8();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        _os_log_impl(&_mh_execute_header, v110, v111, "Didn't find a recipe in taskParameters. Checking mobileAssets.", v112, 2u);
      }

      if (!v11)
      {
        v127 = sub_100012368();
        v128 = sub_100012508();
        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          *v129 = 0;
          _os_log_impl(&_mh_execute_header, v127, v128, "No MobileAsset found.", v129, 2u);
        }

        v130 = *(v2 + 1472);
        v131 = *(v2 + 1440);
        v132 = *(v2 + 1424);
        v133 = *(v2 + 1384);
        v134 = *(v2 + 1312);

        v518 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
        v519 = sub_10001117C();
        LOBYTE(v517[0]) = 7;
        v135 = objc_allocWithZone(sub_100012288());
        v484 = sub_100012268();

        sub_100011BC0(v134, &qword_10001C1A8, &qword_100012F10);
        v130(v132, v133);
        goto LABEL_86;
      }

      v113 = *(v2 + 1272);
      v496 = v109;
      v114 = *(v2 + 1256);
      v115 = *(v2 + 1208);
      v490 = *(v2 + 1200);
      v493 = *(v2 + 1304);
      v116 = *(v2 + 1192);
      v117 = *(v2 + 1184);
      v118 = *(v2 + 1176);

      sub_100012248();
      *(v2 + 952) = 0x6A2E657069636572;
      *(v2 + 960) = 0xEB000000006E6F73;
      v488 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v486 = *(v117 + 104);
      v486(v116);
      sub_100011680();
      sub_100012198();
      (*(v117 + 8))(v116, v118);
      v119 = *(v115 + 8);
      v119(v114, v490);
      sub_100012128();
      v482 = v119;
      v119(v113, v490);
      v499(v493, 1, 1, v490);
      (v486)(v116, v488, v118);
      sub_100012188();
      v120 = [objc_opt_self() defaultManager];
      sub_100012168();
      v121 = sub_1000123D8();

      v122 = [v120 fileExistsAtPath:v121];
      v11 = v514;

      if (v122)
      {
        v123 = *(v2 + 1312);
        v124 = *(v2 + 1264);
        v125 = *(v2 + 1208);
        v126 = *(v2 + 1200);
        sub_100011BC0(v123, &qword_10001C1A8, &qword_100012F10);
        (*(v125 + 32))(v123, v124, v126);
        v499(v123, 0, 1, v126);
      }

      else
      {
        v482(*(v2 + 1264), *(v2 + 1200));
      }

      v109 = v496;
    }

    v136 = *(v2 + 1288);
    v137 = *(v2 + 1200);
    sub_100011AE0(*(v2 + 1312), v136, &qword_10001C1A8, &qword_100012F10);
    if (v109(v136, 1, v137) == 1)
    {
      sub_100011BC0(*(v2 + 1288), &qword_10001C1A8, &qword_100012F10);
      v138 = sub_100012368();
      v139 = sub_100012508();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        _os_log_impl(&_mh_execute_header, v138, v139, "Unable to get recipe from task folder or mobileAssets", v140, 2u);
      }

      v141 = *(v2 + 1472);
      v142 = *(v2 + 1440);
      v143 = *(v2 + 1424);
      v144 = *(v2 + 1384);
      v145 = *(v2 + 1312);

      v518 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
      v519 = sub_10001117C();
      LOBYTE(v517[0]) = 8;
      v146 = objc_allocWithZone(sub_100012288());
      v484 = sub_100012268();

      sub_100011BC0(v145, &qword_10001C1A8, &qword_100012F10);
      v141(v143, v144);
      goto LABEL_85;
    }

    (*(*(v2 + 1208) + 32))(*(v2 + 1248), *(v2 + 1288), *(v2 + 1200));
    v164 = sub_1000121B8();
    v166 = v165;
    v167 = objc_opt_self();
    isa = sub_1000121C8().super.isa;
    *(v2 + 1112) = 0;
    v169 = [v167 JSONObjectWithData:isa options:0 error:v2 + 1112];

    v170 = *(v2 + 1112);
    if (v169)
    {
      sub_100012528();
      swift_unknownObjectRelease();
      sub_100011614(v2 + 520, v2 + 456);
      sub_10000E8BC(&qword_10001C1D0, &qword_100012F30);
      if (swift_dynamicCast())
      {
        v503 = *(v2 + 1312);
        v171 = *(v2 + 1248);
        v172 = v11;
        v173 = *(v2 + 1208);
        v174 = *(v2 + 1200);
        v175 = sub_100012398().super.isa;

        v60 = v506;
        [v506 setRecipe:v175];
        sub_1000116D4(v164, v166);

        sub_1000111D0((v2 + 520));
        (*(v173 + 8))(v171, v174);
        v11 = v172;
        sub_100011BC0(v503, &qword_10001C1A8, &qword_100012F10);
        goto LABEL_19;
      }

      v214 = sub_100012368();
      v215 = sub_100012508();
      if (os_log_type_enabled(v214, v215))
      {
        v216 = swift_slowAlloc();
        *v216 = 0;
        _os_log_impl(&_mh_execute_header, v214, v215, "Unable to parse recipe into dictionary.", v216, 2u);
      }

      v217 = *(v2 + 1440);
      v500 = *(v2 + 1424);
      v502 = *(v2 + 1472);
      v218 = *(v2 + 1384);
      v219 = *(v2 + 1312);
      v220 = *(v2 + 1248);
      v221 = *(v2 + 1208);
      v222 = *(v2 + 1200);

      v518 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
      v519 = sub_10001117C();
      LOBYTE(v517[0]) = 9;
      v223 = objc_allocWithZone(sub_100012288());
      v484 = sub_100012268();
      sub_1000116D4(v164, v166);

      sub_1000111D0((v2 + 520));
      (*(v221 + 8))(v220, v222);
      sub_100011BC0(v219, &qword_10001C1A8, &qword_100012F10);
      v162 = v500;
      v163 = v218;
    }

    else
    {
      v213 = v170;
      sub_100012108();

      swift_willThrow();
      sub_1000116D4(v164, v166);
      swift_errorRetain();
      v147 = sub_100012368();
      v148 = sub_100012508();

      if (os_log_type_enabled(v147, v148))
      {
        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v517[0] = v150;
        *v149 = 136315138;
        swift_getErrorValue();
        v151 = sub_1000126D8();
        v153 = sub_10000EEB8(v151, v152, v517);

        *(v149 + 4) = v153;
        _os_log_impl(&_mh_execute_header, v147, v148, "Got error when reading recipe file: %s", v149, 0xCu);
        sub_1000111D0(v150);
      }

      v502 = *(v2 + 1472);
      v154 = *(v2 + 1440);
      v155 = *(v516 + 1424);
      v156 = *(v516 + 1384);
      v157 = *(v516 + 1312);
      v158 = *(v516 + 1248);
      v159 = *(v516 + 1208);
      v160 = *(v516 + 1200);
      v518 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
      v519 = sub_10001117C();
      LOBYTE(v517[0]) = 10;
      v161 = objc_allocWithZone(sub_100012288());
      v484 = sub_100012268();

      (*(v159 + 8))(v158, v160);
      sub_100011BC0(v157, &qword_10001C1A8, &qword_100012F10);
      v162 = v155;
      v163 = v156;
    }

    v502(v162, v163);
LABEL_85:

LABEL_86:

    v285 = *(v516 + 8);

    return v285(v484);
  }

  sub_1000122C8();
  v56 = *(v2 + 72);
  v57 = *(v2 + 80);

  v58 = sub_100001E34(v56, v57);

  if (!v58)
  {
    (*(v2 + 1456))(*(v2 + 1400), *(v2 + 1424), *(v2 + 1384));
    v176 = sub_100012368();
    v177 = sub_100012508();
    v178 = os_log_type_enabled(v176, v177);
    v179 = *(v2 + 1472);
    v180 = *(v2 + 1400);
    v181 = *(v2 + 1384);
    if (v178)
    {
      v182 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      v517[0] = v183;
      *v182 = 136315138;
      sub_1000122C8();
      v179(v180, v181);
      v184 = *(v2 + 128);
      v185 = *(v2 + 136);

      v186 = sub_10000EEB8(v184, v185, v517);

      *(v182 + 4) = v186;
      _os_log_impl(&_mh_execute_header, v176, v177, "Failed to parse recipeAsString into dictionary: %s", v182, 0xCu);
      sub_1000111D0(v183);
    }

    else
    {

      v179(v180, v181);
    }

    v208 = *(v2 + 1472);
    v209 = *(v2 + 1440);
    v210 = *(v2 + 1424);
    v211 = *(v2 + 1384);
    v518 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v519 = sub_10001117C();
    LOBYTE(v517[0]) = 6;
    v212 = objc_allocWithZone(sub_100012288());
    v484 = sub_100012268();

    v208(v210, v211);
    goto LABEL_85;
  }

  sub_10000D444(v58);

  v59 = sub_100012398().super.isa;

  v60 = v506;
  [v506 setRecipe:v59];

LABEL_19:
  v61 = v60;
  v62 = sub_100012368();
  v63 = sub_1000124F8();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v517[0] = v65;
    *v64 = 136315138;
    v66 = [v61 recipe];
    sub_1000123A8();

    v67 = sub_1000123B8();
    v69 = v68;

    v70 = sub_10000EEB8(v67, v69, v517);

    *(v64 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v62, v63, "worker.recipe: %s", v64, 0xCu);
    sub_1000111D0(v65);
  }

  if (os_variant_has_internal_diagnostics())
  {
    v71 = 1001;
  }

  else
  {
    v71 = 5001;
  }

  sub_100012338();
  v72 = objc_allocWithZone(TRIExperimentIdentifiers);
  v73 = sub_1000123D8();
  v74 = sub_1000123D8();

  v75 = [v72 initWithExperimentId:v73 deploymentId:v71 treatmentId:v74];

  [v61 setTriExperimentIdentifiers:v75];
  if (v11)
  {
    v76 = *(v2 + 1272);
    v77 = *(v2 + 1240);
    v78 = *(v2 + 1232);
    v79 = *(v2 + 1208);
    v80 = *(v2 + 1200);

    sub_100012248();

    (*(v79 + 32))(v77, v78, v80);
    sub_100012128();
    sub_100012148();

    sub_100012158(v81);
    v83 = v82;
    v84 = *(v79 + 8);
    v84(v76, v80);
    [v61 setModelsURL:v83];

    v84(v77, v80);
  }

  v85 = swift_allocObject();
  *(v2 + 1528) = v85;
  *(v85 + 16) = 0;
  v86 = (v85 + 16);
  v87 = [v61 recipe];
  v88 = sub_1000123A8();

  sub_10000D698(v88);

  v89 = sub_100012398().super.isa;

  *(v2 + 1144) = *(v85 + 16);
  v90 = v61;
  v91 = [v61 checkIfModelShouldBeDownloaded:v89 outError:v2 + 1144];
  *(v2 + 1536) = v91;

  v92 = *(v2 + 1144);
  v93 = *(v85 + 16);
  *(v85 + 16) = v92;
  v94 = v92;

  if (*(v85 + 16))
  {
    v507 = v90;

    v95 = sub_100012368();
    v96 = sub_1000124F8();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v97 = 138412290;
      swift_beginAccess();
      v99 = *v86;
      *(v97 + 4) = *v86;
      *v98 = v99;
      v100 = v99;
      _os_log_impl(&_mh_execute_header, v95, v96, "Got error getting data processor: %@", v97, 0xCu);
      sub_100011BC0(v98, &qword_10001C208, &qword_100012F60);
    }

    v101 = *(v2 + 1472);
    v102 = *(v2 + 1440);
    v103 = *(v2 + 1424);
    v104 = *(v2 + 1384);

    v518 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v519 = sub_10001117C();
    LOBYTE(v517[0]) = 11;
    v105 = objc_allocWithZone(sub_100012288());
    v484 = sub_100012268();

    v101(v103, v104);
    goto LABEL_84;
  }

  v187 = v90;
  v188 = sub_100012368();
  v189 = sub_1000124F8();
  v508 = v187;

  v504 = v91;
  if (os_log_type_enabled(v188, v189))
  {
    v190 = swift_slowAlloc();
    v191 = swift_slowAlloc();
    *v190 = 138412290;
    v192 = [v508 triExperimentIdentifiers];
    *(v190 + 4) = v192;
    *v191 = v192;
    _os_log_impl(&_mh_execute_header, v188, v189, "Trial experiment identifiers: %@", v190, 0xCu);
    sub_100011BC0(v191, &qword_10001C208, &qword_100012F60);
    v91 = v504;
  }

  v193 = swift_allocObject();
  *(v2 + 1544) = v193;
  *(v193 + 16) = &_swiftEmptyArrayStorage;
  v515 = v11;
  if (v11)
  {
    v497 = (v193 + 16);
    v194 = *(v2 + 1224);
    v195 = *(v2 + 1216);
    v196 = *(v2 + 1208);
    v197 = *(v2 + 1200);

    sub_100012248();

    (*(v196 + 32))(v194, v195, v197);
    v198 = [objc_opt_self() defaultManager];
    sub_100012138();
    v199 = sub_1000123D8();

    *(v2 + 1056) = 0;
    v200 = [v198 contentsOfDirectoryAtPath:v199 error:v2 + 1056];

    v201 = *(v2 + 1056);
    if (!v200)
    {
      v301 = v201;
      sub_100012108();

      swift_willThrow();
      swift_errorRetain();
      v302 = sub_100012368();
      v303 = sub_100012508();

      if (os_log_type_enabled(v302, v303))
      {
        v304 = swift_slowAlloc();
        v305 = swift_slowAlloc();
        v517[0] = v305;
        *v304 = 136315138;
        swift_getErrorValue();
        v306 = sub_1000126D8();
        v308 = sub_10000EEB8(v306, v307, v517);

        *(v304 + 4) = v308;
        _os_log_impl(&_mh_execute_header, v302, v303, "Found a task folder, but got error while trying to access contents: %s", v304, 0xCu);
        sub_1000111D0(v305);
      }

      v309 = *(v2 + 1472);
      v310 = *(v2 + 1440);
      v311 = *(v516 + 1424);
      v312 = *(v516 + 1384);
      v313 = *(v516 + 1224);
      v314 = *(v516 + 1208);
      v315 = *(v516 + 1200);
      v518 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
      v519 = sub_10001117C();
      LOBYTE(v517[0]) = 12;
      v316 = objc_allocWithZone(sub_100012288());
      v484 = sub_100012268();

      (*(v314 + 8))(v313, v315);
      v309(v311, v312);
      goto LABEL_94;
    }

    v202 = *(v2 + 1224);
    v203 = *(v2 + 1208);
    v204 = *(v2 + 1200);
    v205 = sub_100012498();
    v206 = v201;

    v207 = sub_1000038E4(v205);
    (*(v203 + 8))(v202, v204);

    *v497 = v207;
    v91 = v504;
  }

  else
  {
    v224 = sub_100012368();
    v225 = sub_1000124F8();
    if (os_log_type_enabled(v224, v225))
    {
      v226 = swift_slowAlloc();
      *v226 = 0;
      _os_log_impl(&_mh_execute_header, v224, v225, "No task folder found", v226, 2u);
    }
  }

  swift_retain_n();
  v227 = sub_100012368();
  v228 = sub_1000124F8();

  if (os_log_type_enabled(v227, v228))
  {
    v229 = swift_slowAlloc();
    v230 = swift_slowAlloc();
    v517[0] = v230;
    *v229 = 136315138;
    swift_beginAccess();

    v231 = sub_1000124A8();
    v233 = v232;

    v234 = sub_10000EEB8(v231, v233, v517);

    *(v229 + 4) = v234;
    _os_log_impl(&_mh_execute_header, v227, v228, "All URLS: %s", v229, 0xCu);
    sub_1000111D0(v230);
    v91 = v504;
  }

  else
  {
  }

  swift_beginAccess();
  v235 = objc_allocWithZone(MLRTaskAttachments);

  v236 = sub_100012488().super.isa;

  v237 = [v235 initWithURLs:v236];
  *(v2 + 1552) = v237;

  v238 = v237;
  v239 = sub_100012368();
  v240 = sub_1000124F8();
  v498 = v238;

  if (os_log_type_enabled(v239, v240))
  {
    v241 = swift_slowAlloc();
    v242 = swift_slowAlloc();
    *v241 = 138412290;
    *(v241 + 4) = v498;
    *v242 = v498;
    v243 = v498;
    _os_log_impl(&_mh_execute_header, v239, v240, "taskAttachments: %@", v241, 0xCu);
    sub_100011BC0(v242, &qword_10001C208, &qword_100012F60);
  }

  v244 = [v91 getCoreDictionary];
  if (!v244)
  {
    __break(1u);
    goto LABEL_226;
  }

  v252 = v244;
  v253 = v2;
  sub_1000123A8();

  v254 = sub_100012398().super.isa;

  v255 = [v508 recipe];
  v256 = sub_1000123A8();

  sub_10000D698(v256);

  v257 = sub_100012398().super.isa;

  *(v2 + 1136) = *v86;
  v258 = [v508 gatherMetricsToReturn:v254 withRecipe:v257 withAttachments:v498 outError:v2 + 1136];

  v259 = *(v2 + 1136);
  v260 = *v86;
  *v86 = v259;
  v261 = v259;

  v262 = sub_100012498();
  v263 = sub_10000D960(v262);
  *(v253 + 1560) = v263;

  v264 = sub_100012368();
  v265 = sub_1000124F8();
  if (os_log_type_enabled(v264, v265))
  {
    v266 = swift_slowAlloc();
    *v266 = 0;
    _os_log_impl(&_mh_execute_header, v264, v265, "Gathered metrics!", v266, 2u);
  }

  v267 = sub_100012368();
  v268 = sub_1000124F8();

  if (os_log_type_enabled(v267, v268))
  {
    v269 = swift_slowAlloc();
    v270 = swift_slowAlloc();
    v517[0] = v270;
    *v269 = 136315138;
    sub_10000E8BC(&qword_10001C1D0, &qword_100012F30);
    v271 = sub_1000124A8();
    v273 = sub_10000EEB8(v271, v272, v517);

    *(v269 + 4) = v273;
    _os_log_impl(&_mh_execute_header, v267, v268, "Results: %s", v269, 0xCu);
    sub_1000111D0(v270);
  }

  if (*v86)
  {

    v274 = sub_100012368();
    v275 = sub_1000124F8();

    if (os_log_type_enabled(v274, v275))
    {
      v276 = swift_slowAlloc();
      v277 = swift_slowAlloc();
      *v276 = 138412290;
      swift_beginAccess();
      v278 = *v86;
      *(v276 + 4) = *v86;
      *v277 = v278;
      v279 = v278;
      _os_log_impl(&_mh_execute_header, v274, v275, "Got error getting metrics: %@", v276, 0xCu);
      sub_100011BC0(v277, &qword_10001C208, &qword_100012F60);
    }

    v280 = *(v516 + 1472);
    v281 = *(v516 + 1440);
    v282 = *(v516 + 1424);
    v283 = *(v516 + 1384);

    v518 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v519 = sub_10001117C();
    LOBYTE(v517[0]) = 13;
    v284 = objc_allocWithZone(sub_100012288());
    v484 = sub_100012268();

    v280(v282, v283);

    goto LABEL_84;
  }

  v494 = v263;
  v287 = v508;
  v288 = sub_100012368();
  v289 = sub_1000124F8();

  if (os_log_type_enabled(v288, v289))
  {
    v290 = swift_slowAlloc();
    v509 = swift_slowAlloc();
    v517[0] = v509;
    *v290 = 136315138;
    v291 = sub_1000123E8();
    v489 = v289;
    v293 = v292;
    v294 = [v287 recipe];
    v295 = sub_1000123A8();

    v296 = v516;
    sub_10000DB8C(v291, v293, v295, (v516 + 360));

    sub_10000E8BC(&qword_10001C1C8, &qword_100012F28);
    v297 = sub_100012518();
    v299 = v298;
    sub_100011BC0(v516 + 360, &qword_10001C1C8, &qword_100012F28);
    v300 = sub_10000EEB8(v297, v299, v517);

    *(v290 + 4) = v300;
    _os_log_impl(&_mh_execute_header, v288, v489, "Logging strategies: %s", v290, 0xCu);
    sub_1000111D0(v509);
  }

  else
  {

    v296 = v516;
  }

  v317 = sub_1000123E8();
  v319 = v318;
  v320 = [v287 recipe];
  v321 = sub_1000123A8();

  sub_10000DB8C(v317, v319, v321, (v296 + 424));

  if (!*(v296 + 448))
  {

    sub_100011BC0(v296 + 424, &qword_10001C1C8, &qword_100012F28);
LABEL_129:
    v356 = sub_100012368();
    v357 = sub_100012508();
    if (os_log_type_enabled(v356, v357))
    {
      v358 = swift_slowAlloc();
      *v358 = 0;
      _os_log_impl(&_mh_execute_header, v356, v357, "Logging strategies missing", v358, 2u);
    }

    v359 = *(v296 + 1472);
    v360 = *(v296 + 1440);
    v361 = *(v296 + 1424);
    v362 = *(v296 + 1384);

    v518 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v519 = sub_10001117C();
    v363 = 14;
    goto LABEL_132;
  }

  sub_10000E8BC(&qword_10001C168, &qword_100012EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_129;
  }

  v322 = *(v296 + 1120);
  *(v296 + 1568) = v322;
  *(v296 + 984) = 0x6E61697373756147;
  *(v296 + 992) = 0xEF6F637369446544;
  v323 = swift_task_alloc();
  *(v323 + 16) = v296 + 984;
  v324 = sub_1000103D0(sub_10001128C, v323, v322);

  if ((v324 & 1) == 0)
  {
    goto LABEL_198;
  }

  v325 = [v287 recipe];
  v326 = sub_1000123A8();

  sub_10000DB8C(0x436F637369646564, 0xED00006769666E6FLL, v326, (v296 + 584));

  if (!*(v296 + 608))
  {

    sub_100011BC0(v296 + 584, &qword_10001C1C8, &qword_100012F28);
LABEL_135:
    v365 = sub_100012368();
    v366 = sub_100012508();
    if (os_log_type_enabled(v365, v366))
    {
      v367 = swift_slowAlloc();
      *v367 = 0;
      _os_log_impl(&_mh_execute_header, v365, v366, "Recipe lacked dediscoConfig but specified GaussianDeDisco", v367, 2u);
    }

    v359 = *(v296 + 1472);
    v360 = *(v296 + 1440);
    v361 = *(v296 + 1424);
    v362 = *(v296 + 1384);

    v518 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v519 = sub_10001117C();
    v363 = 15;
    goto LABEL_132;
  }

  v327 = sub_10000E8BC(&qword_10001C1D0, &qword_100012F30);
  *(v296 + 1576) = v327;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_135;
  }

  v328 = *(v296 + 1080);
  sub_10000DB8C(0x676E69646F636E65, 0xEE00616D65686353, v328, (v296 + 648));
  if (!*(v296 + 672))
  {

    sub_100011BC0(v296 + 648, &qword_10001C1C8, &qword_100012F28);
LABEL_140:
    v368 = sub_100012368();
    v369 = sub_100012508();
    if (os_log_type_enabled(v368, v369))
    {
      v370 = swift_slowAlloc();
      *v370 = 0;
      _os_log_impl(&_mh_execute_header, v368, v369, "dediscoConfig lacked encodingSchema but specified GaussianDeDisco", v370, 2u);
    }

    v359 = *(v296 + 1472);
    v360 = *(v296 + 1440);
    v361 = *(v296 + 1424);
    v362 = *(v296 + 1384);

    v518 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v519 = sub_10001117C();
    v363 = 16;
    goto LABEL_132;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_140;
  }

  v329 = *(v296 + 1072);
  v510 = sub_10001137C(&_swiftEmptyArrayStorage);
  v491 = v329;
  sub_10000DB8C(0xD000000000000010, 0x8000000100013670, v329, (v296 + 712));
  if (!*(v296 + 736))
  {

    sub_100011BC0(v296 + 712, &qword_10001C1C8, &qword_100012F28);

LABEL_145:
    v371 = sub_100012368();
    v372 = sub_100012508();
    if (os_log_type_enabled(v371, v372))
    {
      v373 = swift_slowAlloc();
      *v373 = 0;
      _os_log_impl(&_mh_execute_header, v371, v372, "Got malformed dataContentTypes", v373, 2u);
    }

    v359 = *(v296 + 1472);
    v360 = *(v296 + 1440);
    v361 = *(v296 + 1424);
    v362 = *(v296 + 1384);

    v518 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v519 = sub_10001117C();
    v363 = 17;
LABEL_132:
    LOBYTE(v517[0]) = v363;
    v364 = objc_allocWithZone(sub_100012288());
    v484 = sub_100012268();

    v359(v361, v362);

    goto LABEL_85;
  }

  v487 = sub_10000E8BC(&qword_10001C1D8, &qword_100012F38);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v296 = v516;
    goto LABEL_145;
  }

  v483 = v287;
  v485 = v328;
  v330 = 0;
  v331 = v516;
  v480 = (v516 + 744);
  v481 = (v516 + 1024);
  v478 = (v516 + 1032);
  v479 = (v516 + 1040);
  v332 = *(v516 + 1064);
  v333 = -1;
  v334 = -1 << *(v332 + 32);
  if (-v334 < 64)
  {
    v333 = ~(-1 << -v334);
  }

  v335 = v333 & *(v332 + 64);
  v336 = (63 - v334) >> 6;
LABEL_108:
  *(v331 + 1584) = v510;
  v337 = v330;
  if (!v335)
  {
    goto LABEL_110;
  }

  do
  {
    v330 = v337;
LABEL_113:
    v338 = __clz(__rbit64(v335));
    v335 &= v335 - 1;
    v339 = v338 | (v330 << 6);
    v340 = *(v332 + 48) + 16 * v339;
    v329 = *v340;
    v341 = *(v340 + 8);
    v342 = *(*(v332 + 56) + 8 * v339);

    v522._countAndFlagsBits = 0x6E61697373756167;
    v522._object = 0xE90000000000003ALL;
    if (sub_100012478(v522))
    {
      *(v516 + 920) = v329;
      *(v516 + 928) = v341;
      *(v516 + 936) = 0x6E61697373756167;
      *(v516 + 944) = 0xE90000000000003ALL;
      sub_1000114AC();
      sub_1000124E8();
      v343 = sub_100012438();
      v476 = v344;
      v477 = v343;

      *(v516 + 640) = v327;
      *(v516 + 616) = v342;
      sub_100011500((v516 + 616), (v516 + 552));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v517[0] = v510;
      v346 = sub_100010358(v477, v476);
      v347 = v510[2].isa;
      v348 = (v245 & 1) == 0;
      v244 = (v347 + v348);
      if (__OFADD__(v347, v348))
      {
        goto LABEL_227;
      }

      v349 = v245;
      if (v510[3].isa >= v244)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v245)
          {
            goto LABEL_124;
          }
        }

        else
        {
          sub_10001099C();
          v510 = v517[0];
          if (v349)
          {
            goto LABEL_124;
          }
        }
      }

      else
      {
        sub_10001047C(v244, isUniquelyReferenced_nonNull_native);
        v510 = v517[0];
        v350 = sub_100010358(v477, v476);
        if ((v349 & 1) != (v351 & 1))
        {
LABEL_222:

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
        }

        v346 = v350;
        if (v349)
        {
LABEL_124:
          v329 = (v510[7].isa + 32 * v346);
          sub_1000111D0(v329);
          v331 = v516;
          sub_100011500((v516 + 552), v329);

          goto LABEL_108;
        }
      }

      v329 = v510;
      v510[(v346 >> 6) + 8].isa = (v510[(v346 >> 6) + 8].isa | (1 << v346));
      v352 = (v510[6].isa + 16 * v346);
      *v352 = v477;
      v352[1] = v476;
      v244 = sub_100011500((v516 + 552), v510[7].isa + 2 * v346);
      v353 = v510[2].isa;
      v354 = __OFADD__(v353, 1);
      v355 = (v353 + 1);
      if (v354)
      {
        goto LABEL_228;
      }

      v510[2].isa = v355;
      v331 = v516;
      goto LABEL_108;
    }

    v337 = v330;
  }

  while (v335);
  while (1)
  {
LABEL_110:
    v330 = v337 + 1;
    if (__OFADD__(v337, 1))
    {
      __break(1u);
LABEL_218:

LABEL_219:
      v472 = *(v516 + 1608);
      v473 = swift_task_alloc();
      *(v516 + 1632) = v473;
      v474 = *v515;
      *(v473 + 16) = v472;
      *(v473 + 24) = v330 + 33;
      *(v473 + 32) = 0x8000000100013630;
      *(v473 + 40) = v481;
      *(v473 + 48) = v474;
      v475 = swift_task_alloc();
      *(v516 + 1640) = v475;
      *v475 = v516;
      v475[1] = sub_10000C578;
      v251 = &type metadata for Bool;
      v249 = sub_100011670;
      v244 = (v516 + 65);
      v248 = 0x80000001000136D0;
      v245 = 0;
      v246 = 0;
      v247 = 0xD000000000000010;
      v250 = v473;

      return withCheckedContinuation<A>(isolation:function:_:)(v244, v245, v246, v247, v248, v249, v250, v251);
    }

    if (v330 >= v336)
    {
      break;
    }

    v335 = *(v332 + 64 + 8 * v330);
    ++v337;
    if (v335)
    {
      goto LABEL_113;
    }
  }

  sub_10000DB8C(1701869940, 0xE400000000000000, v491, (v516 + 296));

  if (!*(v516 + 320))
  {

    sub_100011BC0(v516 + 296, &qword_10001C1C8, &qword_100012F28);
LABEL_188:

    v411 = sub_100012368();
    v412 = sub_100012508();
    if (os_log_type_enabled(v411, v412))
    {
      v413 = swift_slowAlloc();
      *v413 = 0;
      _os_log_impl(&_mh_execute_header, v411, v412, "encodingSchema lacked type", v413, 2u);
    }

    v414 = *(v516 + 1472);
    v415 = *(v516 + 1440);
    v416 = *(v516 + 1424);
    v417 = *(v516 + 1384);

    v518 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v519 = sub_10001117C();
    v418 = 18;
    goto LABEL_196;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_188;
  }

  v374 = *(v516 + 968);
  v375 = *(v516 + 976);
  sub_10000E8BC(&qword_10001C1E8, &qword_100012F40);
  v376 = swift_allocObject();
  *(v376 + 16) = xmmword_100012D20;
  *(v376 + 32) = 1701869940;
  *(v376 + 40) = 0xE400000000000000;
  *(v376 + 48) = v374;
  *(v376 + 56) = v375;
  *(v376 + 72) = &type metadata for String;
  *(v376 + 80) = 0xD000000000000012;
  *(v376 + 88) = 0x8000000100013690;
  sub_10000E8BC(&qword_10001C1F0, &qword_100012F48);
  v377 = swift_allocObject();
  *(v377 + 16) = xmmword_100012D30;
  *(v377 + 32) = 0xD000000000000010;
  *(v377 + 40) = 0x8000000100013670;
  *(v377 + 48) = v510;

  v378 = sub_100011510(v377);
  swift_setDeallocating();
  sub_100011BC0(v377 + 32, &qword_10001C1F8, &qword_100012F50);
  swift_deallocClassInstance();
  *(v376 + 120) = v487;
  *(v376 + 96) = v378;
  *(v516 + 1592) = sub_10001137C(v376);
  swift_setDeallocating();
  sub_10000E8BC(&qword_10001C200, &qword_100012F58);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v330 = 0xD000000000000010;
  sub_10000DB8C(0xD00000000000001DLL, 0x80000001000136B0, v485, (v516 + 488));

  if (!*(v516 + 512))
  {

    sub_100011BC0(v516 + 488, &qword_10001C1C8, &qword_100012F28);
LABEL_193:

    v419 = sub_100012368();
    v420 = sub_100012508();
    if (os_log_type_enabled(v419, v420))
    {
      v421 = swift_slowAlloc();
      *v421 = 0;
      _os_log_impl(&_mh_execute_header, v419, v420, "dediscoConfig lacked DifferentialPrivacyParameters but specified GaussianDeDisco", v421, 2u);
    }

    v414 = *(v516 + 1472);
    v415 = *(v516 + 1440);
    v416 = *(v516 + 1424);
    v417 = *(v516 + 1384);

    v518 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v519 = sub_10001117C();
    v418 = 19;
LABEL_196:
    LOBYTE(v517[0]) = v418;
    v422 = objc_allocWithZone(sub_100012288());
    v484 = sub_100012268();

    v414(v416, v417);
    goto LABEL_94;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_193;
  }

  *(v516 + 1600) = *(v516 + 1016);
  v244 = [objc_opt_self() defaultManager];
  *(v516 + 1608) = v244;
  v379 = v494[2];
  *(v516 + 1616) = v379;
  if (!v379)
  {
    v296 = v516;

LABEL_198:
    v423 = *(v296 + 1568);
    v424 = v423[2];
    if (v424 <= 1 && (v424 != 1 || v423[4] == 0x6E61697373756147 && v423[5] == 0xEF6F637369446544 || (sub_100012698() & 1) != 0))
    {
    }

    else
    {
      v425 = *(v296 + 1528);
      v426 = *(v296 + 1520);
      sub_10000DA78(*(v296 + 1560));

      v427 = sub_100012488().super.isa;

      v428 = sub_100012488().super.isa;

      *(v296 + 1096) = *(v425 + 16);
      v429 = [v426 logAllResultsToCoreAnalyticsOrDeDisco:v427 withLoggingStrategies:v428 outError:v296 + 1096];

      v430 = *(v296 + 1096);
      v431 = *(v425 + 16);
      *(v425 + 16) = v430;
      v432 = v430;
    }

    sub_1000122C8();

    v433 = *(v296 + 32);

    if (v433 == 1)
    {
      v434 = *(v296 + 1440);
      v435 = *(v296 + 1160);
      v436 = sub_1000124B8().super.super.isa;
      sub_100012338();
      v437 = sub_1000123D8();

      [v434 setValue:v436 forKey:v437];

      v438 = v435;
      v439 = sub_100012368();
      v440 = sub_1000124F8();

      if (os_log_type_enabled(v439, v440))
      {
        v441 = swift_slowAlloc();
        v442 = swift_slowAlloc();
        v517[0] = v442;
        *v441 = 136315138;
        v443 = sub_100012338();
        v445 = sub_10000EEB8(v443, v444, v517);

        *(v441 + 4) = v445;
        _os_log_impl(&_mh_execute_header, v439, v440, "Execution state saved for taskName %s.", v441, 0xCu);
        sub_1000111D0(v442);
      }
    }

    v446 = *(v296 + 1552);
    v447 = *(v296 + 1536);
    v448 = *(v296 + 1520);
    v449 = *(v516 + 1472);
    v450 = *(v516 + 1440);
    v451 = *(v516 + 1424);
    v452 = *(v516 + 1384);
    v453 = objc_allocWithZone(sub_100012288());
    v484 = sub_100012278();

    v449(v451, v452);
    goto LABEL_94;
  }

  *(v516 + 1624) = 0;
  v380 = *(v516 + 1560);
  if (!*(v380 + 16))
  {
    goto LABEL_229;
  }

  v381 = *(v380 + 32);

  sub_10000DB8C(0x74654D6C65646F4DLL, 0xEC00000073636972, v381, (v516 + 392));

  if (!*(v516 + 416))
  {

    sub_100011BC0(v516 + 392, &qword_10001C1C8, &qword_100012F28);
LABEL_212:

    v454 = sub_100012368();
    v455 = sub_100012508();
    if (os_log_type_enabled(v454, v455))
    {
      v456 = swift_slowAlloc();
      *v456 = 0;
      _os_log_impl(&_mh_execute_header, v454, v455, "Measurements were malformed", v456, 2u);
    }

    v457 = *(v516 + 1608);
    v458 = *(v516 + 1552);
    v459 = *(v516 + 1536);
    v460 = *(v516 + 1520);
    v501 = *(v516 + 1472);
    v461 = *(v516 + 1440);
    v462 = *(v516 + 1424);
    v463 = *(v516 + 1384);

    v518 = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v519 = sub_10001117C();
    LOBYTE(v517[0]) = 20;
    v464 = objc_allocWithZone(sub_100012288());
    v484 = sub_100012268();

    v501(v462, v463);
LABEL_94:

LABEL_84:

    goto LABEL_85;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_212;
  }

  v515 = (v516 + 1592);
  v382 = *(v516 + 1048);
  *v481 = sub_10001137C(&_swiftEmptyArrayStorage);
  v383 = -1;
  v384 = -1 << *(v382 + 32);
  if (-v384 < 64)
  {
    v383 = ~(-1 << -v384);
  }

  v385 = v383 & *(v382 + 64);
  v386 = (63 - v384) >> 6;

  v387 = 0;
  while (v385)
  {
    v388 = v385;
LABEL_165:
    v385 = (v388 - 1) & v388;
    if (*(*(v516 + 1584) + 16))
    {
      v390 = (*(v382 + 48) + ((v387 << 10) | (16 * __clz(__rbit64(v388)))));
      v392 = *v390;
      v391 = v390[1];

      sub_100010358(v392, v391);
      v394 = v393;

      if (v394)
      {
        if (*(v382 + 16) && (v395 = sub_100010358(v392, v391), (v396 & 1) != 0))
        {
          sub_100011614(*(v382 + 56) + 32 * v395, v516 + 328);
          v511 = swift_isUniquelyReferenced_nonNull_native();
          v397 = *v481;
          *v479 = *v481;
          v398 = sub_100010358(v392, v391);
          v399 = v397[2];
          v505 = v245;
          v400 = (v245 & 1) == 0;
          v244 = (v399 + v400);
          if (__OFADD__(v399, v400))
          {
            goto LABEL_230;
          }

          if (v397[3] >= v244)
          {
            if ((v511 & 1) == 0)
            {
              sub_10001099C();
            }
          }

          else
          {
            sub_10001047C(v244, v511);
            v401 = sub_100010358(v392, v391);
            if ((v505 & 1) != (v402 & 1))
            {
              goto LABEL_222;
            }

            v398 = v401;
          }

          v513 = *v479;
          if (v505)
          {
            v407 = (v513[7] + 32 * v398);
            sub_1000111D0(v407);
            sub_100011500((v516 + 328), v407);

            *v481 = v513;
          }

          else
          {
            v513[(v398 >> 6) + 8] |= 1 << v398;
            v408 = (v513[6] + 16 * v398);
            *v408 = v392;
            v408[1] = v391;
            v244 = sub_100011500((v516 + 328), (v513[7] + 32 * v398));
            v409 = v513[2];
            v354 = __OFADD__(v409, 1);
            v410 = v409 + 1;
            if (v354)
            {
              goto LABEL_231;
            }

            v513[2] = v410;
            *v481 = v513;
          }
        }

        else
        {
          v403 = sub_100010358(v392, v391);
          v405 = v404;

          if (v405)
          {
            v406 = swift_isUniquelyReferenced_nonNull_native();
            v512 = *v481;
            *v478 = *v481;
            if (!v406)
            {
              sub_10001099C();
              v512 = *v478;
            }

            sub_100011500((v512[7] + 32 * v403), v480);
            sub_100010734(v403, v512);
            *v481 = v512;
          }

          else
          {
            *v480 = 0u;
            *(v516 + 760) = 0u;
          }

          v244 = sub_100011BC0(v480, &qword_10001C1C8, &qword_100012F28);
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v389 = v387 + 1;
    if (__OFADD__(v387, 1))
    {
      break;
    }

    if (v389 >= v386)
    {

      v329 = sub_100012368();
      v465 = sub_1000124F8();

      if (!os_log_type_enabled(v329, v465))
      {
        goto LABEL_218;
      }

      v466 = swift_slowAlloc();
      v467 = swift_slowAlloc();
      v517[0] = v467;
      *v466 = 136315138;
      v468 = sub_1000123B8();
      v470 = v469;

      v471 = sub_10000EEB8(v468, v470, v517);

      *(v466 + 4) = v471;
      _os_log_impl(&_mh_execute_header, v329, v465, "Measurements: %s", v466, 0xCu);
      sub_1000111D0(v467);

      goto LABEL_219;
    }

    v388 = *(v382 + 64 + 8 * v389);
    ++v387;
    if (v388)
    {
      v387 = v389;
      goto LABEL_165;
    }
  }

LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
  return withCheckedContinuation<A>(isolation:function:_:)(v244, v245, v246, v247, v248, v249, v250, v251);
}

uint64_t sub_10000C578()
{

  return _swift_task_switch(sub_10000C6BC, 0, 0);
}

uint64_t sub_10000C6BC(uint64_t a1)
{
  v115 = v1;
  v2 = *(v1 + 65);
  v3 = sub_100012368();
  v4 = sub_1000124F8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "Succeded: %{BOOL}d", v5, 8u);
  }

  v6 = *(v1 + 1624);
  v7 = *(v1 + 1616);

  if (v6 + 1 == v7)
  {

    v8 = *(v1 + 1568);
    v9 = v8[2];
    if (v9 <= 1 && (v9 != 1 || v8[4] == 0x6E61697373756147 && v8[5] == 0xEF6F637369446544 || (sub_100012698() & 1) != 0))
    {
    }

    else
    {
      v10 = *(v1 + 1528);
      v11 = *(v1 + 1520);
      sub_10000DA78(*(v1 + 1560));

      isa = sub_100012488().super.isa;

      v13 = sub_100012488().super.isa;

      *(v1 + 1096) = *(v10 + 16);
      v14 = [v11 logAllResultsToCoreAnalyticsOrDeDisco:isa withLoggingStrategies:v13 outError:v1 + 1096];

      v15 = *(v1 + 1096);
      v16 = *(v10 + 16);
      *(v10 + 16) = v15;
      v17 = v15;
    }

    sub_1000122C8();

    v59 = *(v1 + 32);

    if (v59 == 1)
    {
      v60 = *(v1 + 1440);
      v61 = *(v1 + 1160);
      v62 = sub_1000124B8().super.super.isa;
      sub_100012338();
      v63 = sub_1000123D8();

      [v60 setValue:v62 forKey:v63];

      v64 = v61;
      v65 = sub_100012368();
      v66 = sub_1000124F8();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v114[0] = v68;
        *v67 = 136315138;
        v69 = sub_100012338();
        v71 = sub_10000EEB8(v69, v70, v114);

        *(v67 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v65, v66, "Execution state saved for taskName %s.", v67, 0xCu);
        sub_1000111D0(v68);
      }
    }

    v72 = *(v1 + 1552);
    v73 = *(v1 + 1536);
    v74 = *(v1 + 1520);
    v75 = *(v1 + 1472);
    v76 = *(v1 + 1440);
    v77 = *(v1 + 1424);
    v78 = *(v1 + 1384);
    v79 = objc_allocWithZone(sub_100012288());
    v105 = sub_100012278();

    v75(v77, v78);
LABEL_54:

    v91 = *(v1 + 8);

    return v91(v105);
  }

  v18 = *(v1 + 1624) + 1;
  *(v1 + 1624) = v18;
  v19 = *(v1 + 1560);
  if (v18 >= *(v19 + 16))
  {
LABEL_64:
    __break(1u);
LABEL_65:

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
  }

  v20 = *(v19 + 8 * v18 + 32);

  sub_10000DB8C(0x74654D6C65646F4DLL, 0xEC00000073636972, v20, (v1 + 392));

  if (!*(v1 + 416))
  {

    sub_100011BC0(v1 + 392, &qword_10001C1C8, &qword_100012F28);
LABEL_51:

    v80 = sub_100012368();
    v81 = sub_100012508();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "Measurements were malformed", v82, 2u);
    }

    v83 = *(v1 + 1608);
    v84 = *(v1 + 1552);
    v85 = *(v1 + 1536);
    v86 = *(v1 + 1520);
    v110 = *(v1 + 1472);
    v87 = *(v1 + 1440);
    v88 = *(v1 + 1424);
    v89 = *(v1 + 1384);

    v114[3] = &type metadata for AppStoreEvalLighthouseWorkerErrorCode;
    v114[4] = sub_10001117C();
    LOBYTE(v114[0]) = 20;
    v90 = objc_allocWithZone(sub_100012288());
    v105 = sub_100012268();

    v110(v88, v89);
    goto LABEL_54;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_51;
  }

  v113 = (v1 + 1024);
  v108 = (v1 + 1032);
  v109 = (v1 + 744);
  v111 = (v1 + 1040);
  v21 = *(v1 + 1048);
  *(v1 + 1024) = sub_10001137C(&_swiftEmptyArrayStorage);
  v22 = -1;
  v23 = -1 << *(v21 + 32);
  if (-v23 < 64)
  {
    v22 = ~(-1 << -v23);
  }

  v24 = v22 & *(v21 + 64);
  v25 = (63 - v23) >> 6;

  v26 = 0;
LABEL_12:
  if (v24)
  {
    v27 = v24;
    goto LABEL_18;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    if (v28 >= v25)
    {
      break;
    }

    v27 = *(v21 + 64 + 8 * v28);
    ++v26;
    if (v27)
    {
      v26 = v28;
LABEL_18:
      v24 = (v27 - 1) & v27;
      if (!*(*(v1 + 1584) + 16))
      {
        goto LABEL_12;
      }

      v29 = (*(v21 + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v27)))));
      v30 = *v29;
      v31 = v29[1];

      sub_100010358(v30, v31);
      v33 = v32;

      if (v33)
      {
        if (*(v21 + 16) && (v34 = sub_100010358(v30, v31), (v35 & 1) != 0))
        {
          sub_100011614(*(v21 + 56) + 32 * v34, v1 + 328);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36 = *v113;
          *v111 = *v113;
          v38 = sub_100010358(v30, v31);
          v39 = *(v36 + 16);
          v40 = (v37 & 1) == 0;
          v41 = v39 + v40;
          if (__OFADD__(v39, v40))
          {
            __break(1u);
LABEL_69:
            __break(1u);
          }

          if (*(v36 + 24) >= v41)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v107 = v37;
              sub_10001099C();
              v37 = v107;
            }
          }

          else
          {
            v106 = v37;
            sub_10001047C(v41, isUniquelyReferenced_nonNull_native);
            v42 = sub_100010358(v30, v31);
            v44 = v43 & 1;
            v37 = v106;
            if ((v106 & 1) != v44)
            {
              goto LABEL_65;
            }

            v38 = v42;
          }

          v52 = *v111;
          if (v37)
          {
            v53 = *v111;
            v54 = (v52[7] + 32 * v38);
            sub_1000111D0(v54);
            sub_100011500((v1 + 328), v54);

            *v113 = v53;
          }

          else
          {
            v52[(v38 >> 6) + 8] |= 1 << v38;
            v55 = (v52[6] + 16 * v38);
            *v55 = v30;
            v55[1] = v31;
            sub_100011500((v1 + 328), (v52[7] + 32 * v38));
            v56 = v52[2];
            v57 = __OFADD__(v56, 1);
            v58 = v56 + 1;
            if (v57)
            {
              goto LABEL_69;
            }

            v52[2] = v58;
            *v113 = v52;
          }
        }

        else
        {
          v45 = sub_100010358(v30, v31);
          v47 = v46;

          if (v47)
          {
            v48 = (v1 + 1024);
            v49 = swift_isUniquelyReferenced_nonNull_native();
            v50 = *v113;
            *v108 = *v113;
            if (!v49)
            {
              sub_10001099C();
              v48 = (v1 + 1024);
              v50 = *v108;
            }

            sub_100011500((*(v50 + 56) + 32 * v45), v109);
            sub_100010734(v45, v50);
            v51 = v1 + 744;
            *v48 = v50;
          }

          else
          {
            v51 = v1 + 744;
            *v109 = 0u;
            *(v1 + 760) = 0u;
          }

          sub_100011BC0(v51, &qword_10001C1C8, &qword_100012F28);
        }
      }

      else
      {
      }

      goto LABEL_12;
    }
  }

  v93 = sub_100012368();
  v94 = sub_1000124F8();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v114[0] = v96;
    *v95 = 136315138;
    v97 = sub_1000123B8();
    v99 = v98;

    v100 = sub_10000EEB8(v97, v99, v114);

    *(v95 + 4) = v100;
    _os_log_impl(&_mh_execute_header, v93, v94, "Measurements: %s", v95, 0xCu);
    sub_1000111D0(v96);
  }

  else
  {
  }

  v101 = *(v1 + 1608);
  v102 = swift_task_alloc();
  *(v1 + 1632) = v102;
  v103 = *(v1 + 1592);
  *(v102 + 16) = v101;
  *(v102 + 24) = 0xD000000000000031;
  *(v102 + 32) = 0x8000000100013630;
  *(v102 + 40) = v113;
  *(v102 + 48) = v103;
  v104 = swift_task_alloc();
  *(v1 + 1640) = v104;
  *v104 = v1;
  v104[1] = sub_10000C578;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 65, 0, 0, 0xD000000000000010, 0x80000001000136D0, sub_100011670, v102, &type metadata for Bool);
}

unint64_t sub_10000D444(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000E8BC(&qword_10001C238, &qword_100012F80);
    v2 = sub_1000125D8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_unknownObjectRetain();
        swift_dynamicCast();
        sub_100011500(&v22, v24);
        sub_100011500(v24, v25);
        sub_100011500(v25, &v23);
        result = sub_100010358(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_1000111D0(v11);
          result = sub_100011500(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_100011500(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10000D698(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000E8BC(&qword_10001C258, &qword_100012FA0);
    v2 = sub_1000125D8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100011614(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100011500(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100011500(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100011500(v31, v32);
    result = sub_100012548(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100011500(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t *sub_10000D960(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = &_swiftEmptyArrayStorage;
    sub_10000FDF0(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_100011614(v4, v9);
      sub_10000E8BC(&qword_10001C1D0, &qword_100012F30);
      swift_dynamicCast();
      v5 = v9[4];
      v10 = v2;
      v7 = v2[2];
      v6 = v2[3];
      if (v7 >= v6 >> 1)
      {
        sub_10000FDF0((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      v2[2] = v7 + 1;
      v2[v7 + 4] = v5;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t *sub_10000DA78(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_10000FDD0(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {

      sub_10000E8BC(&qword_10001C1D0, &qword_100012F30);
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10000FDD0((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100011500(&v8, &v2[4 * v6 + 4]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

double sub_10000DB8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100010358(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_100011614(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void sub_10000DBF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v21 = a7;
  v22 = a1;
  v25 = a2;
  v8 = sub_10000E8BC(&qword_10001C228, &qword_100012F70);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v20 - v10;
  v24 = sub_1000123D8();

  sub_10000D698(v12);

  isa = sub_100012398().super.isa;

  sub_10000D698(a6);
  v13 = sub_100012398().super.isa;

  sub_10000D698(v21);
  v14 = sub_100012398().super.isa;

  (*(v9 + 16))(v11, v22, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v11, v8);
  aBlock[4] = sub_100011804;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000DE90;
  aBlock[3] = &unk_100018D00;
  v17 = _Block_copy(aBlock);

  v18 = v24;
  v19 = isa;
  [v25 encodeAndUploadToDediscoWithIdentifier:v24 measurements:isa withEncodingSchemas:v13 metadata:v14 completion:v17];
  _Block_release(v17);
}

void sub_10000DE90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10000DEFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000120FC;

  return sub_100002174(a1);
}

uint64_t sub_10000DF90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000E024;

  return sub_100003C2C(a1);
}

uint64_t sub_10000E024(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10000E120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_10000E204;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_10000E204()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000E2F8(uint64_t a1)
{
  v2 = sub_10000EC78(&qword_10001C158, &unk_100012DE0);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_10000E360()
{
  sub_10000EA68();
  sub_10000EABC();
  return sub_1000122B8();
}

uint64_t sub_10000E3CC()
{
  v1 = sub_100012778();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v0;
  v5 = *(v0 + 3);
  v27 = *(v0 + 4);
  v28 = v5;
  *(&v25 + 1) = &type metadata for AppStoreEvalLighthouseWorkerConfig;
  v6 = swift_allocObject();
  *&v24 = v6;
  v7 = v0[1];
  *(v6 + 16) = *v0;
  *(v6 + 32) = v7;
  *(v6 + 48) = v0[2];
  *(v6 + 64) = *(v0 + 48);
  sub_10000ED04(&v29, v23);
  sub_100011AE0(&v28, v23, &qword_10001C160, &qword_100012ED8);
  sub_100011AE0(&v27, v23, &qword_10001C160, &qword_100012ED8);
  sub_100012758();
  v8 = sub_100012768();
  (*(v2 + 8))(v4, v1);
  v20[1] = v8;
  sub_100012598();
  sub_1000125E8();
  if (*(&v26 + 1))
  {
    v9 = &_swiftEmptyArrayStorage;
    do
    {
      v23[0] = v24;
      v23[1] = v25;
      v23[2] = v26;
      v10._object = *(&v24 + 1);
      if (*(&v24 + 1))
      {
        v10._countAndFlagsBits = *&v23[0];
        v21 = 0;
        v22 = 0xE000000000000000;
        sub_100012458(v10);
        v30._countAndFlagsBits = 8250;
        v30._object = 0xE200000000000000;
        sub_100012458(v30);
        sub_1000125A8();
        v11 = v21;
        v12 = v22;
        sub_100011BC0(v23, &qword_10001C178, &qword_100012EE8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10000EDA8(0, *(v9 + 2) + 1, 1, v9);
        }

        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        if (v14 >= v13 >> 1)
        {
          v9 = sub_10000EDA8((v13 > 1), v14 + 1, 1, v9);
        }

        *(v9 + 2) = v14 + 1;
        v15 = &v9[16 * v14];
        *(v15 + 4) = v11;
        *(v15 + 5) = v12;
      }

      else
      {
        sub_100011BC0(v23, &qword_10001C178, &qword_100012EE8);
      }

      sub_1000125E8();
    }

    while (*(&v26 + 1));
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  *&v24 = 0xD000000000000023;
  *(&v24 + 1) = 0x80000001000135A0;
  *&v23[0] = v9;
  sub_10000E8BC(&qword_10001C168, &qword_100012EE0);
  sub_100011728(&qword_10001C170, &qword_10001C168, &qword_100012EE0, &protocol conformance descriptor for [A]);
  v16 = sub_1000123C8();
  v18 = v17;

  v31._countAndFlagsBits = v16;
  v31._object = v18;
  sub_100012458(v31);

  v32._countAndFlagsBits = 41;
  v32._object = 0xE100000000000000;
  sub_100012458(v32);
  return v24;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppStoreEvalLighthouseWorker(0);
  sub_10000EC78(&qword_10001C0B0, &unk_100012E98);
  sub_100012228();
  return 0;
}

uint64_t type metadata accessor for AppStoreEvalLighthouseWorker(uint64_t a1)
{
  result = qword_10001C2B8;
  if (!qword_10001C2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E844(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E8BC(&qword_10001C0B8, &unk_100012D40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000E8BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000E918(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E8BC(&qword_10001C0B8, &unk_100012D40);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10000E994(uint64_t a1)
{
  sub_10000EA00(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10000EA00(uint64_t a1)
{
  if (!qword_10001C118)
  {
    sub_10000EA68();
    sub_10000EABC();
    v1 = sub_1000122E8();
    if (!v2)
    {
      atomic_store(v1, &qword_10001C118);
    }
  }
}

unint64_t sub_10000EA68()
{
  result = qword_10001C120;
  if (!qword_10001C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C120);
  }

  return result;
}

unint64_t sub_10000EABC()
{
  result = qword_10001C128;
  if (!qword_10001C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C128);
  }

  return result;
}

__n128 sub_10000EB10(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000EB2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_10000EB74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000EC78(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppStoreEvalLighthouseWorker(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000ECBC()
{

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_10000ED60(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *sub_10000EDA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000E8BC(&qword_10001C180, &qword_100012EF0);
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

unint64_t sub_10000EEB8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000EF84(v11, 0, 0, 1, a1, a2);
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
    sub_100011614(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000111D0(v11);
  return v7;
}

unint64_t sub_10000EF84(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000F090(a5, a6);
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
    result = sub_100012588();
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

char *sub_10000F090(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000F0DC(a1, a2);
  sub_10000F20C(&off_100018BA8);
  return v3;
}

char *sub_10000F0DC(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000F2F8(v5, 0);
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

  result = sub_100012588();
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
        v10 = sub_100012468();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000F2F8(v10, 0);
        result = sub_100012578();
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

uint64_t sub_10000F20C(uint64_t result)
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

  result = sub_10000F36C(result, v11, 1, v3);
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

void *sub_10000F2F8(uint64_t a1, uint64_t a2)
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

  sub_10000E8BC(&qword_10001C268, &qword_100012FB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000F36C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000E8BC(&qword_10001C268, &qword_100012FB0);
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

uint64_t sub_10000F460(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_100012728();
  sub_100012448();
  v8 = sub_100012748();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_100012698() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10000F810(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10000F5B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000E8BC(&qword_10001C278, &qword_100012FC8);
  result = sub_100012568();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_100012728();
      sub_100012448();
      result = sub_100012748();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10000F810(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10000F5B0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000F990();
      goto LABEL_16;
    }

    sub_10000FAEC(v8 + 1);
  }

  v10 = *v4;
  sub_100012728();
  sub_100012448();
  result = sub_100012748();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_100012698();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1000126B8();
  __break(1u);
  return result;
}

void *sub_10000F990()
{
  v1 = v0;
  sub_10000E8BC(&qword_10001C278, &qword_100012FC8);
  v2 = *v0;
  v3 = sub_100012558();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_10000FAEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000E8BC(&qword_10001C278, &qword_100012FC8);
  result = sub_100012568();
  v5 = result;
  if (*(v3 + 16))
  {
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_100012728();

      sub_100012448();
      result = sub_100012748();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

unint64_t sub_10000FD24(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_10000FDB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000FE30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000FDD0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000FF3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000FDF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001004C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000FE10(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100010180(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000FE30(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000E8BC(&qword_10001C180, &qword_100012EF0);
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

char *sub_10000FF3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000E8BC(&qword_10001C240, &qword_100012F88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10001004C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000E8BC(&qword_10001C248, &qword_100012F90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
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
    sub_10000E8BC(&qword_10001C1D0, &qword_100012F30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100010180(void *result, int64_t a2, char a3, void *a4)
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

  sub_10000E8BC(&qword_10001C250, &qword_100012F98);
  v10 = *(sub_1000121A8() - 8);
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
  v15 = *(sub_1000121A8() - 8);
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

unint64_t sub_100010358(uint64_t a1, uint64_t a2)
{
  sub_100012728();
  sub_100012448();
  v4 = sub_100012748();

  return sub_1000108E4(a1, a2, v4);
}

uint64_t sub_1000103D0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

      v9 = a1(v12);

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

uint64_t sub_10001047C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000E8BC(&qword_10001C238, &qword_100012F80);
  v33 = v4;
  result = sub_1000125C8();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100011500(v24, v34);
      }

      else
      {
        sub_100011614(v24, v34);
      }

      sub_100012728();
      sub_100012448();
      result = sub_100012748();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100011500(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100010734(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100012538() + 1) & ~v5;
    do
    {
      sub_100012728();

      sub_100012448();
      v10 = sub_100012748();

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
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
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

unint64_t sub_1000108E4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100012698())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_10001099C()
{
  v1 = v0;
  sub_10000E8BC(&qword_10001C238, &qword_100012F80);
  v2 = *v0;
  v3 = sub_1000125B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100011614(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100011500(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
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

  return result;
}

unint64_t sub_100010B40(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000126A8();

  if (v2 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100010B94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7341657069636572 && a2 == 0xEE00676E69727453;
  if (v4 || (sub_100012698() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E4F6E7572 && a2 == 0xE700000000000000 || (sub_100012698() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F69676572 && a2 == 0xE700000000000000 || (sub_100012698() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x45736E6F69676572 && a2 == 0xEE006564756C6378 || (sub_100012698() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E696C706D6173 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_100012698();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100010D54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000E8BC(&qword_10001C188, &qword_100012EF8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v18 - v7;
  sub_100011040(a1, a1[3]);
  sub_100011084();
  sub_100012788();
  if (v2)
  {
    return sub_1000111D0(a1);
  }

  LOBYTE(v23) = 0;
  v9 = sub_100012618();
  v11 = v10;
  v21 = v9;
  LOBYTE(v23) = 1;
  v19 = sub_100012628();
  sub_10000E8BC(&qword_10001C168, &qword_100012EE0);
  v22 = 2;
  v20 = sub_1000110D8(&qword_10001C190, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_100012608();
  v12 = v23;
  v22 = 3;
  sub_100012608();
  v20 = v23;
  LOBYTE(v23) = 4;
  v13 = sub_1000125F8();
  v18 = v14;
  v15 = v13;
  (*(v6 + 8))(v8, v5);
  result = sub_1000111D0(a1);
  *a2 = v21;
  *(a2 + 8) = v11;
  *(a2 + 16) = v19 & 1;
  v17 = v20;
  *(a2 + 24) = v12;
  *(a2 + 32) = v17;
  *(a2 + 40) = v15;
  *(a2 + 48) = v18 & 1;
  return result;
}

void *sub_100011040(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100011084()
{
  result = qword_10001C550[0];
  if (!qword_10001C550[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10001C550);
  }

  return result;
}

uint64_t sub_1000110D8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000ED60(&qword_10001C168, &qword_100012EE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011144(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10001117C()
{
  result = qword_10001C1C0;
  if (!qword_10001C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1C0);
  }

  return result;
}

uint64_t sub_1000111D0(void *a1)
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

uint64_t sub_10001121C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011254()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001128C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100012698() & 1;
  }
}

uint64_t sub_1000112E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000124D8();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10000F460(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_10001137C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000E8BC(&qword_10001C238, &qword_100012F80);
    v3 = sub_1000125D8();
    v4 = a1 + 32;

    while (1)
    {
      sub_100011AE0(v4, &v13, &qword_10001C200, &qword_100012F58);
      v5 = v13;
      v6 = v14;
      result = sub_100010358(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100011500(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1000114AC()
{
  result = qword_10001C1E0;
  if (!qword_10001C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1E0);
  }

  return result;
}

_OWORD *sub_100011500(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100011510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000E8BC(&qword_10001C230, &qword_100012F78);
    v3 = sub_1000125D8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100010358(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_100011614(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100011680()
{
  result = qword_10001C210;
  if (!qword_10001C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C210);
  }

  return result;
}

uint64_t sub_1000116D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100011728(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000ED60(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011770()
{
  v1 = sub_10000E8BC(&qword_10001C228, &qword_100012F70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100011804(uint64_t a1)
{
  sub_10000E8BC(&qword_10001C228, &qword_100012F70);
  if (a1)
  {
    swift_errorRetain();
    if (qword_10001C2A0 != -1)
    {
      swift_once();
    }

    v2 = sub_100012388();
    sub_100011144(v2, qword_10001CA80);
    swift_errorRetain();
    v3 = sub_100012368();
    v4 = sub_1000124F8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Found error: %@", v5, 0xCu);
      sub_100011BC0(v6, &qword_10001C208, &qword_100012F60);
    }

    sub_10000E8BC(&qword_10001C228, &qword_100012F70);
    sub_1000124C8();
  }

  else
  {
    if (qword_10001C2A0 != -1)
    {
      swift_once();
    }

    v9 = sub_100012388();
    sub_100011144(v9, qword_10001CA80);
    v10 = sub_100012368();
    v11 = sub_1000124F8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "error was nil", v12, 2u);
    }

    sub_10000E8BC(&qword_10001C228, &qword_100012F70);
    return sub_1000124C8();
  }
}

uint64_t sub_100011AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011AE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000E8BC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100011B48(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000116D4(result, a2);
  }

  return result;
}

uint64_t *sub_100011B5C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100011BC0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000E8BC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for AppStoreEvalLighthouseWorkerErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppStoreEvalLighthouseWorkerErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppStoreEvalLighthouseWorkerConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppStoreEvalLighthouseWorkerConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100011EEC()
{
  result = qword_10001C660[0];
  if (!qword_10001C660[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10001C660);
  }

  return result;
}

unint64_t sub_100011F44()
{
  result = qword_10001C280;
  if (!qword_10001C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C280);
  }

  return result;
}

unint64_t sub_100011F9C()
{
  result = qword_10001C288;
  if (!qword_10001C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C288);
  }

  return result;
}

unint64_t sub_100011FF4()
{
  result = qword_10001C290;
  if (!qword_10001C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C290);
  }

  return result;
}

unint64_t sub_100012050()
{
  result = qword_10001C9F0;
  if (!qword_10001C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C9F0);
  }

  return result;
}

unint64_t sub_1000120A8()
{
  result = qword_10001C9F8[0];
  if (!qword_10001C9F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10001C9F8);
  }

  return result;
}