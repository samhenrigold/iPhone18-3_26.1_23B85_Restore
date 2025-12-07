uint64_t sub_1000014F0()
{
  v0 = sub_10000A2D0();
  sub_10000997C(v0, qword_100014950);
  sub_100006AA0(v0, qword_100014950);
  return sub_10000A2C0();
}

id static ACAccount.activeAccount.getter()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];

  return v1;
}

unint64_t sub_1000015D0(char a1)
{
  result = 0x4164696C61766E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD00000000000001FLL;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000021;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x656C6C65636E6163;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
    case 18:
      result = 0xD000000000000025;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0x6165726C41736168;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
    case 20:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0x656D726F666C616DLL;
      break;
    case 15:
      result = 0xD000000000000022;
      break;
    case 16:
      result = 0xD00000000000002DLL;
      break;
    case 17:
      result = 0xD00000000000002ELL;
      break;
    case 19:
      result = 0x6552617461446F6ELL;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_1000018C0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000015D0(*a1);
  v5 = v4;
  if (v3 == sub_1000015D0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000A590();
  }

  return v8 & 1;
}

Swift::Int sub_100001948()
{
  v1 = *v0;
  sub_10000A600();
  sub_1000015D0(v1);
  sub_10000A3A0();

  return sub_10000A620();
}

uint64_t sub_1000019AC(uint64_t a1)
{
  sub_1000015D0(*v1);
  sub_10000A3A0();
}

Swift::Int sub_100001A00(uint64_t a1)
{
  v2 = *v1;
  sub_10000A600();
  sub_1000015D0(v2);
  sub_10000A3A0();

  return sub_10000A620();
}

unint64_t sub_100001A60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100007958(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100001A90@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000015D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_100001AE0()
{
  v1 = *v0;
  sub_10000A600();
  sub_10000A610(v1);
  return sub_10000A620();
}

Swift::Int sub_100001B54(uint64_t a1)
{
  v2 = *v1;
  sub_10000A600();
  sub_10000A610(v2);
  return sub_10000A620();
}

uint64_t sub_100001B98()
{
  v1 = *v0;
  v2 = 0x6E656B6F74;
  v3 = 0x65636E4F6E7572;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x726F745370696B73;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7972657571;
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

uint64_t sub_100001C3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000079AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100001C7C(uint64_t a1)
{
  v2 = sub_100009DD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001CB8(uint64_t a1)
{
  v2 = sub_100009DD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001CF4(void *a1)
{
  v3 = v1;
  v5 = sub_100006900(&qword_100014170, &qword_10000AEA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100009D90(a1, a1[3]);
  sub_100009DD4();
  sub_10000A670();
  LOBYTE(v11) = 0;
  sub_10000A570();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_10000A570();
    LOBYTE(v11) = 2;
    sub_10000A550();
    v11 = *(v3 + 40);
    HIBYTE(v10) = 3;
    sub_100006900(&qword_100014068, &qword_10000AC08);
    sub_100009E74(&qword_100014178, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_10000A560();
    v11 = *(v3 + 48);
    HIBYTE(v10) = 4;
    sub_10000A560();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_100001F60@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100007B64(a2, v6);
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

uint64_t sub_100001FC8(uint64_t a1)
{
  v1[27] = a1;
  sub_100006900(&qword_100014090, &qword_10000AC30);
  v1[28] = swift_task_alloc();
  v2 = sub_100006900(&qword_100014098, &qword_10000AC38);
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_1000020CC, 0, 0);
}

uint64_t sub_1000020CC()
{
  if (qword_100014180 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = sub_10000A2D0();
  v0[32] = sub_100006AA0(v2, qword_100014950);
  v3 = v1;
  v4 = sub_10000A2B0();
  v5 = sub_10000A410();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context in shouldRun: %@", v7, 0xCu);
    sub_100008F94(v8, &qword_1000140C0, &qword_10000AC48);
  }

  v10 = swift_task_alloc();
  v0[33] = v10;
  v11 = sub_100006824();
  v12 = sub_100006AD8();
  v13 = sub_100006B2C();
  *v10 = v0;
  v10[1] = sub_1000022BC;
  v15 = v0[27];
  v14 = v0[28];

  return MLHostExtension.loadConfig<A>(context:)(v14, v15, &type metadata for LighthouseServicesAnalyticsExtension, &type metadata for AnalyticsExtensionConfig, v11, v12, v13);
}

uint64_t sub_1000022BC()
{

  return _swift_task_switch(sub_1000023B8, 0, 0);
}

uint64_t sub_1000023B8()
{
  v95 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100008F94(v3, &qword_100014090, &qword_10000AC30);
    v4 = sub_10000A2B0();
    v5 = sub_10000A420();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to load config, exiting early.", v6, 2u);
    }

    v93 = &type metadata for AnalyticsExtensionError;
    v94 = sub_100006B80();
    LOBYTE(v92[0]) = 1;
    v7 = objc_allocWithZone(sub_10000A1D0());
    v8 = sub_10000A1B0();
    goto LABEL_26;
  }

  (*(v2 + 32))(*(v0 + 248), v3, v1);
  sub_10000A200();
  v9 = *(v0 + 56);

  sub_10000A200();
  v10 = *(v0 + 120);

  if (v9)
  {
    if (v10)
    {

      v11 = sub_10000A2B0();
      v12 = sub_10000A420();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Attempting to use both allowStorefronts and skipStorefronts, exiting early.", v13, 2u);
      }

      v15 = *(v0 + 240);
      v14 = *(v0 + 248);
      v16 = *(v0 + 232);

      v93 = &type metadata for AnalyticsExtensionError;
      v94 = sub_100006B80();
      v17 = 8;
      goto LABEL_24;
    }

    v34 = [objc_opt_self() ams_sharedAccountStore];
    v35 = [v34 ams_activeiTunesAccount];

    if (v35)
    {
      v36 = [v35 ams_storefront];

      if (v36)
      {
        v37 = sub_10000A380();
        v39 = v38;

        sub_100007ECC(6, v37, v39, v40);

        v41 = sub_10000A390();
        v43 = v42;

        *(v0 + 200) = v41;
        *(v0 + 208) = v43;
        v44 = swift_task_alloc();
        *(v44 + 16) = v0 + 200;
        v45 = sub_10000717C(sub_10000A144, v44, v9);

        v29 = sub_10000A2B0();
        if (v45)
        {
          v46 = sub_10000A410();

          if (os_log_type_enabled(v29, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v92[0] = v48;
            *v47 = 136315138;
            v49 = sub_100006BD4(v41, v43, v92);

            *(v47 + 4) = v49;
            _os_log_impl(&_mh_execute_header, v29, v46, "Device's storefront %s is in the allow list.", v47, 0xCu);
            sub_100009E28(v48);

LABEL_31:

            goto LABEL_37;
          }

          goto LABEL_36;
        }

        v61 = sub_10000A420();

        if (os_log_type_enabled(v29, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v92[0] = v63;
          *v62 = 136315138;
          v64 = sub_100006BD4(v41, v43, v92);

          *(v62 + 4) = v64;
          _os_log_impl(&_mh_execute_header, v29, v61, "Storefront %s is not in the allow list, exiting early.", v62, 0xCu);
          sub_100009E28(v63);
        }

        else
        {
        }

        v15 = *(v0 + 240);
        v14 = *(v0 + 248);
        v16 = *(v0 + 232);
        v93 = &type metadata for AnalyticsExtensionError;
        v94 = sub_100006B80();
        v17 = 9;
        goto LABEL_24;
      }
    }

    goto LABEL_21;
  }

  if (v10)
  {
    v18 = [objc_opt_self() ams_sharedAccountStore];
    v19 = [v18 ams_activeiTunesAccount];

    if (v19)
    {
      v20 = [v19 ams_storefront];

      if (v20)
      {
        v21 = sub_10000A380();
        v23 = v22;

        sub_100007ECC(6, v21, v23, v24);

        v25 = sub_10000A390();
        v27 = v26;

        *(v0 + 184) = v25;
        *(v0 + 192) = v27;
        v28 = swift_task_alloc();
        *(v28 + 16) = v0 + 184;
        LOBYTE(v21) = sub_10000717C(sub_1000099E0, v28, v10);

        v29 = sub_10000A2B0();
        if ((v21 & 1) == 0)
        {
          v57 = sub_10000A410();

          if (os_log_type_enabled(v29, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v92[0] = v59;
            *v58 = 136315138;
            v60 = sub_100006BD4(v25, v27, v92);

            *(v58 + 4) = v60;
            _os_log_impl(&_mh_execute_header, v29, v57, "Device's storefront %s is not in the skip list.", v58, 0xCu);
            sub_100009E28(v59);

            goto LABEL_31;
          }

LABEL_36:

          goto LABEL_37;
        }

        v30 = sub_10000A420();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v92[0] = v32;
          *v31 = 136315138;
          v33 = sub_100006BD4(v25, v27, v92);

          *(v31 + 4) = v33;
          _os_log_impl(&_mh_execute_header, v29, v30, "Storefront %s is in the skip list, exiting early.", v31, 0xCu);
          sub_100009E28(v32);
        }

        else
        {
        }

        v15 = *(v0 + 240);
        v14 = *(v0 + 248);
        v16 = *(v0 + 232);
        v93 = &type metadata for AnalyticsExtensionError;
        v94 = sub_100006B80();
        v17 = 10;
LABEL_24:
        LOBYTE(v92[0]) = v17;
        v53 = objc_allocWithZone(sub_10000A1D0());
        v54 = sub_10000A1B0();
LABEL_25:
        v8 = v54;
        (*(v15 + 8))(v14, v16);
        goto LABEL_26;
      }
    }

LABEL_21:

    v50 = sub_10000A2B0();
    v51 = sub_10000A420();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Unable to determine storefront, exiting early.", v52, 2u);
    }

    v15 = *(v0 + 240);
    v14 = *(v0 + 248);
    v16 = *(v0 + 232);

    v93 = &type metadata for AnalyticsExtensionError;
    v94 = sub_100006B80();
    v17 = 7;
    goto LABEL_24;
  }

LABEL_37:
  sub_10000A200();
  v65 = *(v0 + 160);

  if (v65 != 2 && (v65 & 1) == 0)
  {
    goto LABEL_48;
  }

  v66 = objc_allocWithZone(NSUserDefaults);
  v67 = sub_10000A370();
  v68 = [v66 initWithSuiteName:v67];

  if (!v68)
  {
    v83 = *(v0 + 216);
    v84 = sub_10000A2B0();
    v85 = sub_10000A420();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v92[0] = v87;
      *v86 = 136315138;
      v88 = sub_10000A270();
      v90 = sub_100006BD4(v88, v89, v92);

      *(v86 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v84, v85, "Failed to instantiate userDefaults with suiteName: %s, exiting early.", v86, 0xCu);
      sub_100009E28(v87);
    }

    v15 = *(v0 + 240);
    v14 = *(v0 + 248);
    v16 = *(v0 + 232);
    v93 = &type metadata for AnalyticsExtensionError;
    v94 = sub_100006B80();
    v17 = 2;
    goto LABEL_24;
  }

  sub_10000A270();
  v69 = sub_10000A370();

  v70 = [v68 BOOLForKey:v69];

  if (!v70)
  {

LABEL_48:
    v15 = *(v0 + 240);
    v14 = *(v0 + 248);
    v16 = *(v0 + 232);
    v91 = objc_allocWithZone(sub_10000A1D0());
    v54 = sub_10000A1C0();
    goto LABEL_25;
  }

  v71 = *(v0 + 216);
  v72 = sub_10000A2B0();
  v73 = sub_10000A410();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v92[0] = v75;
    *v74 = 136315138;
    v76 = sub_10000A270();
    v78 = sub_100006BD4(v76, v77, v92);

    *(v74 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v72, v73, "%s has already run, exiting early.", v74, 0xCu);
    sub_100009E28(v75);
  }

  v80 = *(v0 + 240);
  v79 = *(v0 + 248);
  v81 = *(v0 + 232);
  v93 = &type metadata for AnalyticsExtensionError;
  v94 = sub_100006B80();
  LOBYTE(v92[0]) = 11;
  v82 = objc_allocWithZone(sub_10000A1D0());
  v8 = sub_10000A1B0();

  (*(v80 + 8))(v79, v81);
LABEL_26:

  v55 = *(v0 + 8);

  return v55(v8);
}

uint64_t sub_100003058(uint64_t a1)
{
  v1[32] = a1;
  v2 = sub_10000A2E0();
  v1[33] = v2;
  v1[34] = *(v2 - 8);
  v1[35] = swift_task_alloc();
  v3 = sub_10000A400();
  v1[36] = v3;
  v1[37] = *(v3 - 8);
  v1[38] = swift_task_alloc();
  v4 = sub_10000A180();
  v1[39] = v4;
  v1[40] = *(v4 - 8);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v5 = sub_10000A190();
  v1[43] = v5;
  v1[44] = *(v5 - 8);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v6 = sub_10000A490();
  v1[48] = v6;
  v1[49] = *(v6 - 8);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v7 = sub_10000A4B0();
  v1[52] = v7;
  v1[53] = *(v7 - 8);
  v1[54] = swift_task_alloc();
  sub_100006900(&qword_100014088, &qword_10000AC28);
  v1[55] = swift_task_alloc();
  v8 = sub_10000A290();
  v1[56] = v8;
  v1[57] = *(v8 - 8);
  v1[58] = swift_task_alloc();
  v9 = sub_10000A240();
  v1[59] = v9;
  v1[60] = *(v9 - 8);
  v1[61] = swift_task_alloc();
  v10 = sub_10000A310();
  v1[62] = v10;
  v1[63] = *(v10 - 8);
  v1[64] = swift_task_alloc();
  sub_100006900(&qword_100014090, &qword_10000AC30);
  v1[65] = swift_task_alloc();
  v11 = sub_100006900(&qword_100014098, &qword_10000AC38);
  v1[66] = v11;
  v1[67] = *(v11 - 8);
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();

  return _swift_task_switch(sub_10000350C, 0, 0);
}

uint64_t sub_10000350C()
{
  if (qword_100014180 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = sub_10000A2D0();
  v0[70] = sub_100006AA0(v2, qword_100014950);
  v3 = v1;
  v4 = sub_10000A2B0();
  v5 = sub_10000A410();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[32];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context in doWork: %@", v7, 0xCu);
    sub_100008F94(v8, &qword_1000140C0, &qword_10000AC48);
  }

  v10 = swift_task_alloc();
  v0[71] = v10;
  v11 = sub_100006824();
  v12 = sub_100006AD8();
  v13 = sub_100006B2C();
  *v10 = v0;
  v10[1] = sub_100003700;
  v14 = v0[65];
  v15 = v0[32];

  return MLHostExtension.loadConfig<A>(context:)(v14, v15, &type metadata for LighthouseServicesAnalyticsExtension, &type metadata for AnalyticsExtensionConfig, v11, v12, v13);
}

uint64_t sub_100003700()
{

  return _swift_task_switch(sub_1000037FC, 0, 0);
}

uint64_t sub_1000037FC()
{
  v70 = v0;
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_100008F94(v3, &qword_100014090, &qword_10000AC30);
    v4 = sub_10000A2B0();
    v5 = sub_10000A420();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to load config, exiting early.", v6, 2u);
    }

    v68 = &type metadata for AnalyticsExtensionError;
    v69 = sub_100006B80();
    LOBYTE(v67[0]) = 1;
    v7 = objc_allocWithZone(sub_10000A1D0());
    v64 = sub_10000A1B0();
LABEL_17:

    v52 = v0[1];

    return v52(v64);
  }

  v8 = v0[69];
  v9 = v0[68];
  (*(v1 + 32))(v8, v3, v2);
  (*(v1 + 16))(v9, v8, v2);
  v10 = sub_10000A2B0();
  v11 = sub_10000A410();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[68];
  v14 = v0[67];
  v15 = v0[66];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v67[0] = v65;
    *v16 = 136315138;
    sub_100009698(&qword_1000140D8, &qword_100014098, &qword_10000AC38, &protocol conformance descriptor for MLHostParameters<A>);
    v17 = sub_10000A580();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v13, v15);
    v21 = sub_100006BD4(v17, v19, v67);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "Configuration: %s", v16, 0xCu);
    sub_100009E28(v65);
  }

  else
  {

    v20 = *(v14 + 8);
    v20(v13, v15);
  }

  v0[72] = v20;
  sub_10000A300();
  v22 = [objc_opt_self() ams_sharedAccountStore];
  v23 = [v22 ams_activeiTunesAccount];

  if (!v23 || (v24 = [v23 ams_DSID], v23, !v24))
  {
    v43 = sub_10000A2B0();
    v44 = sub_10000A420();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Invalid AMS DSID, exiting early.", v45, 2u);
    }

    v46 = v0[69];
    v47 = v0[66];
    v49 = v0[63];
    v48 = v0[64];
    v50 = v0[62];

    v68 = &type metadata for AnalyticsExtensionError;
    v69 = sub_100006B80();
    LOBYTE(v67[0]) = 3;
    v51 = objc_allocWithZone(sub_10000A1D0());
    v64 = sub_10000A1B0();
    (*(v49 + 8))(v48, v50);
    v20(v46, v47);
    goto LABEL_17;
  }

  v25 = v0[60];
  v62 = v20;
  v63 = v0[59];
  v26 = v0[57];
  v27 = v0[58];
  v29 = v0[55];
  v28 = v0[56];
  v30 = [v24 stringValue];

  v61 = sub_10000A380();
  v32 = v31;

  v66 = v32;
  v0[73] = v32;
  sub_10000A210();
  sub_10000A280();
  (*(v26 + 8))(v27, v28);
  if ((*(v25 + 48))(v29, 1, v63) == 1)
  {
    v33 = v0[55];

    sub_100008F94(v33, &qword_100014088, &qword_10000AC28);
    v34 = sub_10000A2B0();
    v35 = sub_10000A420();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Couldn't find dediscoParameters, exiting early.", v36, 2u);
    }

    v37 = v0[69];
    v38 = v0[66];
    v40 = v0[63];
    v39 = v0[64];
    v41 = v0[62];

    v68 = &type metadata for AnalyticsExtensionError;
    v69 = sub_100006B80();
    LOBYTE(v67[0]) = 0;
    v42 = objc_allocWithZone(sub_10000A1D0());
    v64 = sub_10000A1B0();
    (*(v40 + 8))(v39, v41);
    v62(v37, v38);
    goto LABEL_17;
  }

  (*(v0[60] + 32))(v0[61], v0[55], v0[59]);
  v54 = sub_10000A220();
  v55 = sub_100008144(v54);
  v0[74] = v55;

  sub_10000A4A0();
  sub_10000A470();
  sub_10000A200();
  v56 = v0[2];
  v57 = v0[3];
  v0[75] = v57;

  sub_10000A200();
  v58 = v0[11];
  v59 = v0[12];
  v0[76] = v59;

  v60 = swift_task_alloc();
  v0[77] = v60;
  *v60 = v0;
  v60[1] = sub_100004048;

  return AnalyticsWorker.runQuery(token:userId:query:keysToFieldTypes:)(v56, v57, v61, v66, v58, v59, v55);
}

uint64_t sub_100004048(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 624) = a1;
  *(v3 + 632) = v1;

  if (v1)
  {

    v4 = sub_1000051B8;
  }

  else
  {
    v4 = sub_1000041C8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000041C8(uint64_t a1)
{
  v141 = v1;
  v2 = v1[50];
  v3 = v1[48];
  v4 = v1[49];
  sub_10000A470();
  sub_10000A480();
  v132 = *(v4 + 8);
  v132(v2, v3);
  v5 = sub_10000A2B0();
  v6 = sub_10000A410();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v137 = v8;
    *v7 = 136315138;
    v9 = sub_10000A690();
    v11 = sub_100006BD4(v9, v10, &v137);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Duration: %s", v7, 0xCu);
    sub_100009E28(v8);
  }

  result = sub_10000A680();
  v13 = 1000 * result;
  if ((result * 1000) >> 64 != (1000 * result) >> 63)
  {
    goto LABEL_49;
  }

  result = sub_10000A680();
  v15 = v14 * 1.0e-15;
  if (COERCE__INT64(fabs(v15)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v16 = v13 + v15;
  if (__OFADD__(v13, v15))
  {
LABEL_53:
    __break(1u);
    return result;
  }

  v17 = v1[53];
  v122 = v1[54];
  v126 = v1[78];
  v19 = v1[51];
  v18 = v1[52];
  v20 = v1[48];
  v21 = v1[32];
  v22 = sub_10000A370();
  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  *(v23 + 24) = v21;
  v1[27] = sub_100009080;
  v1[28] = v23;
  v1[23] = _NSConcreteStackBlock;
  v1[24] = 1107296256;
  v1[25] = sub_1000059A0;
  v1[26] = &unk_100010B18;
  v24 = _Block_copy(v1 + 23);
  v25 = v21;

  AnalyticsSendEventLazy();
  _Block_release(v24);

  v132(v19, v20);
  (*(v17 + 8))(v122, v18);
  v26 = *(v126 + 16);
  if (!v26)
  {

    v57 = sub_10000A2B0();
    v58 = sub_10000A420();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "No data was returned from the query, exiting early", v59, 2u);
    }

    v128 = v1[69];
    v134 = v1[72];
    v60 = v1[66];
    v62 = v1[63];
    v61 = v1[64];
    v64 = v1[61];
    v63 = v1[62];
    v66 = v1[59];
    v65 = v1[60];

    v139 = &type metadata for AnalyticsExtensionError;
    v140 = sub_100006B80();
    v67 = 19;
    goto LABEL_33;
  }

  sub_10000A200();
  v27 = *(v1 + 160);

  if (v27 == 2 || (v27 & 1) != 0)
  {
    v28 = objc_allocWithZone(NSUserDefaults);
    v29 = sub_10000A370();
    v30 = [v28 initWithSuiteName:v29];

    if (v30)
    {
      v31 = v1[32];
      isa = sub_10000A3F0().super.super.isa;
      sub_10000A270();
      v33 = sub_10000A370();

      [v30 setValue:isa forKey:v33];

      v34 = v31;
      v35 = sub_10000A2B0();
      v36 = sub_10000A410();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v137 = v38;
        *v37 = 136315138;
        v39 = sub_10000A270();
        v41 = sub_100006BD4(v39, v40, &v137);

        *(v37 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v35, v36, "Execution state saved for task: %s", v37, 0xCu);
        sub_100009E28(v38);
      }

      goto LABEL_15;
    }

    v80 = v1[32];

    v81 = v80;
    v82 = sub_10000A2B0();
    v83 = sub_10000A420();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v137 = v85;
      *v84 = 136315138;
      v86 = sub_10000A270();
      v88 = sub_100006BD4(v86, v87, &v137);

      *(v84 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v82, v83, "Failed to instantiate userDefaults with suiteName: %s, exiting early.", v84, 0xCu);
      sub_100009E28(v85);
    }

    v128 = v1[69];
    v134 = v1[72];
    v60 = v1[66];
    v62 = v1[63];
    v61 = v1[64];
    v64 = v1[61];
    v63 = v1[62];
    v66 = v1[59];
    v65 = v1[60];
    v139 = &type metadata for AnalyticsExtensionError;
    v140 = sub_100006B80();
    v67 = 2;
LABEL_33:
    LOBYTE(v137) = v67;
    v89 = objc_allocWithZone(sub_10000A1D0());
    v119 = sub_10000A1B0();
    (*(v65 + 8))(v64, v66);
    (*(v62 + 8))(v61, v63);
    v134(v128, v60);
    goto LABEL_34;
  }

LABEL_15:
  v42 = v1[78];
  if (os_variant_has_internal_diagnostics())
  {
    v43 = 1001;
  }

  else
  {
    v43 = 5001;
  }

  v137 = 0;
  v138 = 0xE000000000000000;
  sub_10000A450(70);
  v143._countAndFlagsBits = 0xD000000000000041;
  v143._object = 0x800000010000B330;
  sub_10000A3C0(v143);
  *(v1 + 160) = v43;
  v144._countAndFlagsBits = sub_10000A580();
  sub_10000A3C0(v144);

  v145._countAndFlagsBits = 58;
  v145._object = 0xE100000000000000;
  sub_10000A3C0(v145);
  v146._countAndFlagsBits = sub_10000A270();
  sub_10000A3C0(v146);

  if (!*(v126 + 16))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v44 = v137;
  v45 = v138;
  v46 = v1[79];
  v47 = v1[61];

  sub_1000091F0(v48, v47, v44, v45);
  if (v46)
  {

    v1[31] = v46;
    swift_errorRetain();
    sub_100006900(&qword_1000140B8, &qword_10000AC40);
    if (swift_dynamicCast())
    {
      v49 = *(v1 + 644);
      if (v49 == 5)
      {
        v127 = v1[69];
        v133 = v1[72];
        v123 = v1[66];
        v50 = v1[63];
        v51 = v1[64];
        v53 = v1[61];
        v52 = v1[62];
        v55 = v1[59];
        v54 = v1[60];

        v139 = &type metadata for AnalyticsExtensionError;
        v140 = sub_100006B80();
        v56 = 5;
        goto LABEL_43;
      }

      if (v49 == 4)
      {
        v127 = v1[69];
        v133 = v1[72];
        v123 = v1[66];
        v50 = v1[63];
        v51 = v1[64];
        v53 = v1[61];
        v52 = v1[62];
        v55 = v1[59];
        v54 = v1[60];

        v139 = &type metadata for AnalyticsExtensionError;
        v140 = sub_100006B80();
        v56 = 4;
LABEL_43:
        LOBYTE(v137) = v56;
        v95 = objc_allocWithZone(sub_10000A1D0());
        v119 = sub_10000A1B0();
        (*(v54 + 8))(v53, v55);
        (*(v50 + 8))(v51, v52);
        v133(v127, v123);

        goto LABEL_34;
      }
    }

    swift_errorRetain();
    v68 = sub_10000A2B0();
    v69 = sub_10000A420();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138412290;
      swift_errorRetain();
      v72 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 4) = v72;
      *v71 = v72;
      _os_log_impl(&_mh_execute_header, v68, v69, "Encountered error without specific handling logic: %@", v70, 0xCu);
      sub_100008F94(v71, &qword_1000140C0, &qword_10000AC48);
    }

    v129 = v1[69];
    v135 = v1[72];
    v124 = v1[66];
    v73 = v1[63];
    v74 = v1[64];
    v76 = v1[61];
    v75 = v1[62];
    v78 = v1[59];
    v77 = v1[60];

    v79 = objc_allocWithZone(sub_10000A1D0());
    v119 = sub_10000A1C0();

    (*(v77 + 8))(v76, v78);
    (*(v73 + 8))(v74, v75);
    v135(v129, v124);
    goto LABEL_34;
  }

  if (v26 != 1)
  {
    v91 = v42 + 40;
    v92 = 1;
    while (v92 < *(v126 + 16))
    {
      v93 = v1[61];

      sub_1000091F0(v94, v93, v44, v45);

      ++v92;
      v91 += 8;
      if (v26 == v92)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_48;
  }

LABEL_41:

  sub_10000A170();
  v96 = v1[47];
  v98 = v1[44];
  v97 = v1[45];
  v99 = v1[43];
  (*(v98 + 32))(v96, v1[46], v99);
  (*(v98 + 16))(v97, v96, v99);
  v100 = sub_10000A2B0();
  v101 = sub_10000A410();
  v102 = os_log_type_enabled(v100, v101);
  v103 = v1[44];
  v104 = v1[45];
  v105 = v1[43];
  if (v102)
  {
    v106 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v137 = v130;
    *v106 = 136315138;
    sub_100009640();
    v107 = sub_10000A580();
    v109 = v108;
    v136 = *(v103 + 8);
    v136(v104, v105);
    v110 = sub_100006BD4(v107, v109, &v137);

    *(v106 + 4) = v110;
    _os_log_impl(&_mh_execute_header, v100, v101, "\n %s", v106, 0xCu);
    sub_100009E28(v130);
  }

  else
  {

    v136 = *(v103 + 8);
    v136(v104, v105);
  }

  v125 = v1[69];
  v131 = v1[72];
  v121 = v1[66];
  v111 = v1[63];
  v120 = v1[64];
  v113 = v1[61];
  v112 = v1[62];
  v115 = v1[59];
  v114 = v1[60];
  v116 = v1[47];
  v117 = v1[43];
  v118 = objc_allocWithZone(sub_10000A1D0());
  v119 = sub_10000A1C0();
  v136(v116, v117);
  (*(v114 + 8))(v113, v115);
  (*(v111 + 8))(v120, v112);
  v131(v125, v121);
LABEL_34:

  v90 = v1[1];

  return v90(v119);
}

uint64_t sub_1000051B8()
{
  v1 = v0[79];
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[52];
  (*(v0[49] + 8))(v0[51], v0[48]);
  (*(v3 + 8))(v2, v4);
  v0[29] = v1;
  swift_errorRetain();
  sub_100006900(&qword_1000140B8, &qword_10000AC40);
  v5 = swift_dynamicCast();
  v6 = v0[79];
  if (v5)
  {
    v64 = v0[69];
    v68 = v0[72];
    v61 = v0[66];
    v7 = v0[63];
    v8 = v0[64];
    v10 = v0[61];
    v9 = v0[62];
    v11 = v0[59];
    v12 = v0[60];
    v13 = v0[37];
    v60 = v0[38];
    v59 = v0[36];

    sub_100006B80();
    v14 = objc_allocWithZone(sub_10000A1D0());
    v72 = sub_10000A1B0();
    (*(v12 + 8))(v10, v11);
    (*(v7 + 8))(v8, v9);
    v68(v64, v61);
    (*(v13 + 8))(v60, v59);
LABEL_29:

    goto LABEL_30;
  }

  v0[30] = v6;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v15 = (*(v0[34] + 88))(v0[35], v0[33]);
    if (v15 == enum case for AnalyticsWorkerError.encounteredErrorDuringQuery(_:))
    {
      v17 = v0[34];
      v16 = v0[35];
      v18 = v0[33];

      (*(v17 + 96))(v16, v18);
      v19 = *v16;
      if (*v16 <= 500)
      {
        if (v19 == 491)
        {
          v20 = 17;
          goto LABEL_25;
        }

        if (v19 == 492)
        {
          v20 = 16;
          goto LABEL_25;
        }
      }

      else
      {
        switch(v19)
        {
          case 501:
            v20 = 14;
            goto LABEL_25;
          case 514:
            v20 = 18;
            goto LABEL_25;
          case 599:
            v20 = 15;
LABEL_25:
            v44 = sub_10000A2B0();
            v45 = sub_10000A420();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v47 = swift_slowAlloc();
              *v46 = 138412290;
              sub_100008FF4();
              swift_allocError();
              *v48 = v20;
              v49 = _swift_stdlib_bridgeErrorToNSError();
              *(v46 + 4) = v49;
              *v47 = v49;
              _os_log_impl(&_mh_execute_header, v44, v45, "Encountered error when querying connection: %@. Exiting early.", v46, 0xCu);
              sub_100008F94(v47, &qword_1000140C0, &qword_10000AC48);
            }

            v67 = v0[69];
            v71 = v0[72];
            v63 = v0[66];
            v51 = v0[63];
            v50 = v0[64];
            v53 = v0[61];
            v52 = v0[62];
            v55 = v0[59];
            v54 = v0[60];

            sub_100006B80();
            v56 = objc_allocWithZone(sub_10000A1D0());
            v72 = sub_10000A1B0();
            (*(v54 + 8))(v53, v55);
            (*(v51 + 8))(v50, v52);
            v71(v67, v63);
            goto LABEL_29;
        }
      }

      v20 = 13;
      goto LABEL_25;
    }

    if (v15 == enum case for AnalyticsWorkerError.failedToOpenConnection(_:))
    {

      v21 = sub_10000A2B0();
      v22 = sub_10000A420();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Encountered error when opening connection. Exiting early.", v23, 2u);
      }

      v65 = v0[69];
      v69 = v0[72];
      v24 = v0[66];
      v26 = v0[63];
      v25 = v0[64];
      v28 = v0[61];
      v27 = v0[62];
      v30 = v0[59];
      v29 = v0[60];

      sub_100006B80();
      v31 = objc_allocWithZone(sub_10000A1D0());
      v72 = sub_10000A1B0();
      (*(v29 + 8))(v28, v30);
      (*(v26 + 8))(v25, v27);
      v69(v65, v24);
      goto LABEL_29;
    }

    (*(v0[34] + 8))(v0[35], v0[33]);
  }

  swift_errorRetain();
  v32 = sub_10000A2B0();
  v33 = sub_10000A420();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    swift_errorRetain();
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v36;
    *v35 = v36;
    _os_log_impl(&_mh_execute_header, v32, v33, "Encountered error without specific handling logic: %@", v34, 0xCu);
    sub_100008F94(v35, &qword_1000140C0, &qword_10000AC48);
  }

  v66 = v0[69];
  v70 = v0[72];
  v62 = v0[66];
  v37 = v0[63];
  v38 = v0[64];
  v40 = v0[61];
  v39 = v0[62];
  v42 = v0[59];
  v41 = v0[60];

  v43 = objc_allocWithZone(sub_10000A1D0());
  v72 = sub_10000A1C0();

  (*(v41 + 8))(v40, v42);
  (*(v37 + 8))(v38, v39);
  v70(v66, v62);
LABEL_30:

  v57 = v0[1];

  return v57(v72);
}

Class sub_1000059A0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10000974C();
    v4.super.isa = sub_10000A330().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_100005A2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100006900(&qword_1000140F8, &qword_10000AC68);
    v2 = sub_10000A500();
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
    sub_1000096E0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000973C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000973C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000973C(v31, v32);
    result = sub_10000A430(v2[5]);
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
    result = sub_10000973C(v32, (v2[7] + 32 * v10));
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

unint64_t sub_100005CF4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100006900(&qword_1000140E8, &qword_10000AC58);
    v2 = sub_10000A500();
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
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        sub_100006900(&qword_1000140F0, &qword_10000AC60);
        sub_100006900(&qword_1000140E0, &qword_10000AC50);
        swift_dynamicCast();
        result = sub_100007228(v15, v14);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v15;
          v9[1] = v14;
          v10 = result;

          *(v2[7] + 8 * v10) = v21;

          v8 = v11;
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
          v17 = (v2[6] + 16 * result);
          *v17 = v15;
          v17[1] = v14;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
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

uint64_t sub_100005F28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000A138;

  return sub_100001FC8(a1);
}

uint64_t sub_100005FBC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100006050;

  return sub_100003058(a1);
}

uint64_t sub_100006050(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10000614C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100006230;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100006230()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100006324(uint64_t a1)
{
  v2 = sub_100006824();

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_100006374()
{
  v1 = sub_10000A650();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v23 + 1) = &type metadata for AnalyticsExtensionConfig;
  v5 = swift_allocObject();
  *&v22 = v5;
  v6 = *(v0 + 16);
  *(v5 + 16) = *v0;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v0 + 32);
  *(v5 + 64) = *(v0 + 48);
  sub_1000068C8(v0, v25);
  sub_10000A630();
  v7 = sub_10000A640();
  (*(v2 + 8))(v4, v1);
  v19[1] = v7;
  sub_10000A4C0();
  sub_10000A510();
  if (*(&v26 + 1))
  {
    v8 = &_swiftEmptyArrayStorage;
    do
    {
      v22 = v25[0];
      v23 = v25[1];
      v24 = v26;
      v9._object = *(&v25[0] + 1);
      if (*(&v25[0] + 1))
      {
        v9._countAndFlagsBits = v22;
        v20 = 0;
        v21 = 0xE000000000000000;
        sub_10000A3C0(v9);
        v27._countAndFlagsBits = 8250;
        v27._object = 0xE200000000000000;
        sub_10000A3C0(v27);
        sub_10000A4D0();
        v10 = v20;
        v11 = v21;
        sub_100008F94(&v22, &qword_100014078, &qword_10000AC10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100006990(0, *(v8 + 2) + 1, 1, v8);
        }

        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        if (v13 >= v12 >> 1)
        {
          v8 = sub_100006990((v12 > 1), v13 + 1, 1, v8);
        }

        *(v8 + 2) = v13 + 1;
        v14 = &v8[16 * v13];
        *(v14 + 4) = v10;
        *(v14 + 5) = v11;
      }

      else
      {
        sub_100008F94(&v22, &qword_100014078, &qword_10000AC10);
      }

      sub_10000A510();
    }

    while (*(&v26 + 1));
  }

  else
  {
    v8 = &_swiftEmptyArrayStorage;
  }

  *&v25[0] = 0xD000000000000019;
  *(&v25[0] + 1) = 0x800000010000B240;
  *&v22 = v8;
  sub_100006900(&qword_100014068, &qword_10000AC08);
  sub_100009698(&qword_100014070, &qword_100014068, &qword_10000AC08, &protocol conformance descriptor for [A]);
  v15 = sub_10000A360();
  v17 = v16;

  v28._countAndFlagsBits = v15;
  v28._object = v17;
  sub_10000A3C0(v28);

  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  sub_10000A3C0(v29);
  return *&v25[0];
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100006768();
  sub_10000A1A0();
  return 0;
}

unint64_t sub_100006768()
{
  result = qword_100014058;
  if (!qword_100014058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014058);
  }

  return result;
}

unint64_t sub_100006824()
{
  result = qword_100014060;
  if (!qword_100014060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014060);
  }

  return result;
}

uint64_t sub_100006878()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100006900(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100006948(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *sub_100006990(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006900(&qword_100014080, &qword_10000AC18);
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

uint64_t sub_100006AA0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100006AD8()
{
  result = qword_1000140A0;
  if (!qword_1000140A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140A0);
  }

  return result;
}

unint64_t sub_100006B2C()
{
  result = qword_1000140A8;
  if (!qword_1000140A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140A8);
  }

  return result;
}

unint64_t sub_100006B80()
{
  result = qword_1000140B0;
  if (!qword_1000140B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140B0);
  }

  return result;
}

unint64_t sub_100006BD4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006CA0(v11, 0, 0, 1, a1, a2);
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
    sub_1000096E0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009E28(v11);
  return v7;
}

unint64_t sub_100006CA0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100006DAC(a5, a6);
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
    result = sub_10000A460();
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

char *sub_100006DAC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100006DF8(a1, a2);
  sub_100006F28(&off_100010A80);
  return v3;
}

char *sub_100006DF8(uint64_t a1, unint64_t a2)
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

  v6 = sub_100007014(v5, 0);
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

  result = sub_10000A460();
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
        v10 = sub_10000A3D0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100007014(v10, 0);
        result = sub_10000A440();
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

uint64_t sub_100006F28(uint64_t result)
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

  result = sub_100007088(result, v11, 1, v3);
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

void *sub_100007014(uint64_t a1, uint64_t a2)
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

  sub_100006900(&qword_100014100, &qword_10000AC70);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100007088(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006900(&qword_100014100, &qword_10000AC70);
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

uint64_t sub_10000717C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

unint64_t sub_100007228(uint64_t a1, uint64_t a2)
{
  sub_10000A600();
  sub_10000A3A0();
  v4 = sub_10000A620();

  return sub_100007620(a1, a2, v4);
}

uint64_t sub_1000072A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_10000A320();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_100006900(&qword_100014138, &qword_10000ACA0);
  v42 = v4;
  result = sub_10000A4F0();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_10000A600();
      sub_10000A3A0();
      result = sub_10000A620();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_100007620(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000A590())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_1000076D8()
{
  v1 = v0;
  v35 = sub_10000A320();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006900(&qword_100014138, &qword_10000ACA0);
  v3 = *v0;
  v4 = sub_10000A4E0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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

  return result;
}

unint64_t sub_100007958(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000A5A0();

  if (v2 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000079AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_10000A590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000 || (sub_10000A590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E4F6E7572 && a2 == 0xE700000000000000 || (sub_10000A590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010000B3A0 == a2 || (sub_10000A590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F745370696B73 && a2 == 0xEF73746E6F726665)
  {

    return 4;
  }

  else
  {
    v6 = sub_10000A590();

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

uint64_t sub_100007B64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100006900(&qword_100014160, &qword_10000AE98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_100009D90(a1, a1[3]);
  sub_100009DD4();
  sub_10000A660();
  if (v2)
  {
    sub_100009E28(a1);
  }

  else
  {
    LOBYTE(v29) = 0;
    v9 = sub_10000A540();
    v11 = v10;
    v27 = v9;
    LOBYTE(v29) = 1;
    v12 = sub_10000A540();
    v14 = v13;
    v26 = v12;
    LOBYTE(v29) = 2;
    v23 = sub_10000A520();
    v15 = sub_100006900(&qword_100014068, &qword_10000AC08);
    v28 = 3;
    v24 = sub_100009E74(&qword_100014168, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    v25 = v15;
    sub_10000A530();
    v22 = a2;
    v16 = v29;
    v28 = 4;
    sub_10000A530();
    (*(v6 + 8))(v8, v5);
    v17 = v29;

    sub_100009E28(a1);

    v19 = v26;
    v20 = v22;
    *v22 = v27;
    v20[1] = v11;
    v20[2] = v19;
    v20[3] = v14;
    *(v20 + 32) = v23;
    v20[5] = v16;
    v20[6] = v17;
  }

  return result;
}

uint64_t sub_100007ECC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_10000A3B0();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

unint64_t sub_100007F68(uint64_t a1)
{
  v2 = sub_100006900(&qword_100014140, &qword_10000ACA8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100006900(&qword_100014138, &qword_10000ACA0);
    v7 = sub_10000A500();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000990C(v9, v5);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100007228(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_10000A320();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_100008144(uint64_t a1)
{
  v140 = sub_10000A320();
  v2 = *(v140 - 8);
  v3 = __chkstk_darwin(v140);
  v132 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v125 = &v122 - v6;
  v7 = __chkstk_darwin(v5);
  v133 = &v122 - v8;
  v9 = __chkstk_darwin(v7);
  v127 = &v122 - v10;
  v11 = __chkstk_darwin(v9);
  v135 = &v122 - v12;
  v13 = __chkstk_darwin(v11);
  v129 = &v122 - v14;
  v15 = __chkstk_darwin(v13);
  v136 = &v122 - v16;
  __chkstk_darwin(v15);
  v131 = &v122 - v17;
  v18 = sub_10000A2A0();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v145 = &v122 - v23;
  v24 = sub_100006900(&qword_100014128, &qword_10000AC90);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = (&v122 - v28);
  v30 = sub_100007F68(&_swiftEmptyArrayStorage);
  v31 = *(a1 + 64);
  v141 = v30;
  v142 = a1 + 64;
  v32 = 1 << *(a1 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v35 = (v32 + 63) >> 6;
  v143 = v19 + 16;
  v158 = (v19 + 32);
  v157 = (v19 + 88);
  v156 = enum case for DeDiscoFieldEncodingValue.BOOLeanType(_:);
  v154 = enum case for DeDiscoFieldEncodingValue.boundedIntegerType(_:);
  v152 = enum case for DeDiscoFieldEncodingValue.bucketedBoundariesType(_:);
  v150 = enum case for DeDiscoFieldEncodingValue.categoricalType(_:);
  v151 = enum case for DeDiscoFieldEncodingValue.bucketedType(_:);
  v148 = v19;
  v155 = (v19 + 8);
  v124 = enum case for SQLQueryResultFieldType.string(_:);
  v138 = (v2 + 104);
  v139 = (v2 + 32);
  v137 = v2;
  v134 = v2 + 40;
  v36 = v27;
  v126 = enum case for SQLQueryResultFieldType.double(_:);
  v128 = enum case for SQLQueryResultFieldType.int(_:);
  v130 = enum case for SQLQueryResultFieldType.BOOL(_:);
  v149 = a1;

  v37 = 0;
  v146 = v22;
  v147 = v18;
  v153 = v27;
  v144 = v29;
  if (!v34)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v39 = v37;
LABEL_16:
      v41 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v42 = v41 | (v39 << 6);
      v43 = v148;
      v44 = (*(v149 + 48) + 16 * v42);
      v46 = *v44;
      v45 = v44[1];
      v47 = v145;
      v48 = v147;
      (*(v148 + 16))(v145, *(v149 + 56) + *(v148 + 72) * v42, v147);
      v49 = sub_100006900(&qword_100014130, &qword_10000AC98);
      v50 = *(v49 + 48);
      v51 = v153;
      *v153 = v46;
      v51[1] = v45;
      v36 = v51;
      v52 = *(v43 + 32);
      v18 = v48;
      v52(v36 + v50, v47, v48);
      (*(*(v49 - 8) + 56))(v36, 0, 1, v49);

      v159 = v39;
      v22 = v146;
      v29 = v144;
LABEL_17:
      sub_10000989C(v36, v29);
      v53 = sub_100006900(&qword_100014130, &qword_10000AC98);
      if ((*(*(v53 - 8) + 48))(v29, 1, v53) == 1)
      {

        return v141;
      }

      v54 = *v29;
      v55 = v29[1];
      (*v158)(v22, v29 + *(v53 + 48), v18);
      v56 = (*v157)(v22, v18);
      if (v56 != v156)
      {
        break;
      }

      (*v155)(v22, v18);
      v57 = v131;
      v58 = v140;
      (*v138)(v131, v130, v140);
      v59 = *v139;
      (*v139)(v136, v57, v58);
      v60 = v141;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v160 = v60;
      v62 = sub_100007228(v54, v55);
      v63 = v60[2];
      v64 = (v61 & 1) == 0;
      v65 = v63 + v64;
      if (__OFADD__(v63, v64))
      {
        goto LABEL_73;
      }

      if (v60[3] >= v65)
      {
        v36 = v153;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_46;
        }

        LODWORD(v141) = v61;
        sub_1000076D8();
        LOBYTE(v61) = v141;
      }

      else
      {
        LODWORD(v141) = v61;
        sub_1000072A0(v65, isUniquelyReferenced_nonNull_native);
        v66 = sub_100007228(v54, v55);
        v67 = v61 & 1;
        LOBYTE(v61) = v141;
        if ((v141 & 1) != v67)
        {
          goto LABEL_81;
        }

        v62 = v66;
      }

      v36 = v153;
LABEL_46:
      if ((v61 & 1) == 0)
      {
        v102 = v59;
        v103 = v160;
        v160[(v62 >> 6) + 8] |= 1 << v62;
        v104 = (v103[6] + 16 * v62);
        *v104 = v54;
        v104[1] = v55;
        v102(v103[7] + *(v137 + 72) * v62, v136, v140);
        v105 = v103[2];
        v77 = __OFADD__(v105, 1);
        v106 = v105 + 1;
        if (v77)
        {
          goto LABEL_77;
        }

        v107 = v103;
        goto LABEL_70;
      }

      v141 = v160;
      (*(v137 + 40))(v160[7] + *(v137 + 72) * v62, v136, v140);
LABEL_6:
      v37 = v159;
      if (!v34)
      {
        goto LABEL_7;
      }
    }

    if (v56 == v154)
    {
      (*v155)(v22, v18);
      v68 = v129;
      v69 = v140;
      (*v138)(v129, v128, v140);
      v70 = *v139;
      (*v139)(v135, v68, v69);
      v71 = v141;
      v72 = swift_isUniquelyReferenced_nonNull_native();
      v160 = v71;
      v73 = sub_100007228(v54, v55);
      v75 = v71[2];
      v76 = (v74 & 1) == 0;
      v77 = __OFADD__(v75, v76);
      v78 = v75 + v76;
      if (v77)
      {
        goto LABEL_74;
      }

      if (v71[3] >= v78)
      {
        v36 = v153;
        if (v72)
        {
          if ((v74 & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v141 = v73;
          v111 = v74;
          sub_1000076D8();
          v36 = v153;
          v73 = v141;
          if ((v111 & 1) == 0)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
        LODWORD(v141) = v74;
        sub_1000072A0(v78, v72);
        v73 = sub_100007228(v54, v55);
        if ((v141 & 1) != (v79 & 1))
        {
          goto LABEL_81;
        }

        v36 = v153;
        if ((v141 & 1) == 0)
        {
LABEL_60:
          v112 = v160;
          v160[(v73 >> 6) + 8] |= 1 << v73;
          v113 = (v112[6] + 16 * v73);
          *v113 = v54;
          v113[1] = v55;
          v70((v112[7] + *(v137 + 72) * v73), v135, v140);
          v114 = v112[2];
          v77 = __OFADD__(v114, 1);
          v106 = v114 + 1;
          if (v77)
          {
            goto LABEL_78;
          }

LABEL_69:
          v107 = v112;
LABEL_70:
          v141 = v107;
          v107[2] = v106;
          goto LABEL_6;
        }
      }

      v108 = v73;

      v141 = v160;
      (*(v137 + 40))(v160[7] + *(v137 + 72) * v108, v135, v140);
      goto LABEL_6;
    }

    if (v56 == v152 || v56 == v151)
    {
      (*v155)(v22, v18);
      v80 = v127;
      v81 = v140;
      (*v138)(v127, v126, v140);
      v82 = *v139;
      (*v139)(v133, v80, v81);
      v83 = v141;
      v84 = swift_isUniquelyReferenced_nonNull_native();
      v160 = v83;
      v85 = sub_100007228(v54, v55);
      v87 = v83[2];
      v88 = (v86 & 1) == 0;
      v77 = __OFADD__(v87, v88);
      v89 = v87 + v88;
      if (v77)
      {
        goto LABEL_75;
      }

      if (v83[3] >= v89)
      {
        v36 = v153;
        if (v84)
        {
          if ((v86 & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v141 = v85;
          v115 = v86;
          sub_1000076D8();
          v36 = v153;
          v85 = v141;
          if ((v115 & 1) == 0)
          {
            goto LABEL_64;
          }
        }
      }

      else
      {
        LODWORD(v141) = v86;
        sub_1000072A0(v89, v84);
        v85 = sub_100007228(v54, v55);
        if ((v141 & 1) != (v90 & 1))
        {
          goto LABEL_81;
        }

        v36 = v153;
        if ((v141 & 1) == 0)
        {
LABEL_64:
          v112 = v160;
          v160[(v85 >> 6) + 8] |= 1 << v85;
          v116 = (v112[6] + 16 * v85);
          *v116 = v54;
          v116[1] = v55;
          v82((v112[7] + *(v137 + 72) * v85), v133, v140);
          v117 = v112[2];
          v77 = __OFADD__(v117, 1);
          v106 = v117 + 1;
          if (v77)
          {
            goto LABEL_79;
          }

          goto LABEL_69;
        }
      }

      v109 = v85;

      v141 = v160;
      (*(v137 + 40))(v160[7] + *(v137 + 72) * v109, v133, v140);
      goto LABEL_6;
    }

    if (v56 == v150)
    {
      (*v155)(v22, v18);
      v91 = v125;
      v92 = v140;
      (*v138)(v125, v124, v140);
      v93 = *v139;
      (*v139)(v132, v91, v92);
      v94 = v141;
      v95 = swift_isUniquelyReferenced_nonNull_native();
      v160 = v94;
      v96 = sub_100007228(v54, v55);
      v98 = v94[2];
      v99 = (v97 & 1) == 0;
      v77 = __OFADD__(v98, v99);
      v100 = v98 + v99;
      if (v77)
      {
        goto LABEL_76;
      }

      if (v94[3] >= v100)
      {
        v36 = v153;
        if (v95)
        {
          if ((v97 & 1) == 0)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v141 = v96;
          v118 = v97;
          sub_1000076D8();
          v36 = v153;
          v96 = v141;
          if ((v118 & 1) == 0)
          {
            goto LABEL_68;
          }
        }
      }

      else
      {
        LODWORD(v141) = v97;
        sub_1000072A0(v100, v95);
        v96 = sub_100007228(v54, v55);
        if ((v141 & 1) != (v101 & 1))
        {
          goto LABEL_81;
        }

        v36 = v153;
        if ((v141 & 1) == 0)
        {
LABEL_68:
          v112 = v160;
          v160[(v96 >> 6) + 8] |= 1 << v96;
          v119 = (v112[6] + 16 * v96);
          *v119 = v54;
          v119[1] = v55;
          v93((v112[7] + *(v137 + 72) * v96), v132, v140);
          v120 = v112[2];
          v77 = __OFADD__(v120, 1);
          v106 = v120 + 1;
          if (v77)
          {
            goto LABEL_80;
          }

          goto LABEL_69;
        }
      }

      v110 = v96;

      v141 = v160;
      (*(v137 + 40))(v160[7] + *(v137 + 72) * v110, v132, v140);
      goto LABEL_6;
    }

    (*v155)(v22, v18);
    v37 = v159;
  }

  while (v34);
LABEL_7:
  if (v35 <= v37 + 1)
  {
    v38 = v37 + 1;
  }

  else
  {
    v38 = v35;
  }

  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v39 >= v35)
    {
      v159 = v38 - 1;
      v40 = sub_100006900(&qword_100014130, &qword_10000AC98);
      (*(*(v40 - 8) + 56))(v36, 1, 1, v40);
      v34 = 0;
      goto LABEL_17;
    }

    v34 = *(v142 + 8 * v39);
    ++v37;
    if (v34)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  result = sub_10000A5B0();
  __break(1u);
  return result;
}

uint64_t sub_100008F94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100006900(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100008FF4()
{
  result = qword_1000140C8;
  if (!qword_1000140C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140C8);
  }

  return result;
}

uint64_t sub_100009048()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100009080()
{
  v1 = *(v0 + 16);
  sub_100006900(&qword_100014110, &qword_10000AC78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000AB00;
  strcpy((inited + 32), "queryDuration");
  *(inited + 46) = -4864;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithLongLong:v1];
  *(inited + 56) = 0x656D614E6B736174;
  *(inited + 64) = 0xE800000000000000;
  sub_10000A270();
  v3 = objc_allocWithZone(NSString);
  v4 = sub_10000A370();

  v5 = [v3 initWithString:v4];

  *(inited + 72) = v5;
  v6 = sub_100009798(inited);
  swift_setDeallocating();
  sub_100006900(&qword_100014118, &qword_10000AC80);
  swift_arrayDestroy();
  return v6;
}

uint64_t sub_1000091D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000091F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000A260();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A220();
  v12 = sub_10000A350();

  if (!v4)
  {
    v42 = v9;
    v39 = a3;
    v40 = a4;
    sub_10000A230();
    v14 = sub_10000A250();
    v41 = 0;
    v15 = v14;
    v38 = v8;
    if (qword_100014180 != -1)
    {
      swift_once();
    }

    v16 = sub_10000A2D0();
    sub_100006AA0(v16, qword_100014950);

    v17 = sub_10000A2B0();
    v18 = sub_10000A410();

    v19 = v12;
    if (os_log_type_enabled(v17, v18))
    {
      v20 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v37 = v11;
      v21 = v43;
      *v20 = 136315138;
      v22 = sub_10000A340();
      v24 = v17;
      v25 = sub_100006BD4(v22, v23, &v43);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v24, v18, "DeDisco taskConfig: %s", v20, 0xCu);
      sub_100009E28(v21);
      v11 = v37;
    }

    else
    {
    }

    v26 = a1;
    v27 = objc_opt_self();
    sub_100005A2C(v26);
    isa = sub_10000A330().super.isa;

    sub_100005CF4(v19);

    sub_100006900(&qword_1000140E0, &qword_10000AC50);
    v29 = sub_10000A330().super.isa;

    sub_100005A2C(v15);

    v30 = sub_10000A330().super.isa;

    v31 = sub_10000A370();
    v43 = 0;
    v32 = [v27 encodeDataAndRecord:isa dataTypeContent:v29 metadata:v30 baseKey:v31 errorOut:&v43];

    v33 = v42;
    if (v32)
    {
      v34 = *(v42 + 8);
      v35 = v43;
      return v34(v11, v38);
    }

    else
    {
      v36 = v43;
      sub_10000A160();

      swift_willThrow();
      return (*(v33 + 8))(v11, v38);
    }
  }

  return result;
}

unint64_t sub_100009640()
{
  result = qword_1000140D0;
  if (!qword_1000140D0)
  {
    sub_10000A190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140D0);
  }

  return result;
}

uint64_t sub_100009698(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100006948(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000096E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000973C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10000974C()
{
  result = qword_100014108;
  if (!qword_100014108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014108);
  }

  return result;
}

unint64_t sub_100009798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006900(&qword_100014120, &qword_10000AC88);
    v3 = sub_10000A500();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100007228(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_10000989C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006900(&qword_100014128, &qword_10000AC90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000990C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006900(&qword_100014140, &qword_10000ACA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_10000997C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000099FC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10000A590() & 1;
  }
}

uint64_t getEnumTagSinglePayload for AnalyticsExtensionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnalyticsExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100009BC4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100009BE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100009C28(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100009C88()
{
  result = qword_100014148;
  if (!qword_100014148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014148);
  }

  return result;
}

unint64_t sub_100009CE4()
{
  result = qword_100014150;
  if (!qword_100014150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014150);
  }

  return result;
}

unint64_t sub_100009D3C()
{
  result = qword_100014158;
  if (!qword_100014158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014158);
  }

  return result;
}

void *sub_100009D90(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100009DD4()
{
  result = qword_1000146A0[0];
  if (!qword_1000146A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000146A0);
  }

  return result;
}

uint64_t sub_100009E28(void *a1)
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

uint64_t sub_100009E74(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006948(&qword_100014068, &qword_10000AC08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalyticsExtensionConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AnalyticsExtensionConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000A034()
{
  result = qword_1000147B0[0];
  if (!qword_1000147B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000147B0);
  }

  return result;
}

unint64_t sub_10000A08C()
{
  result = qword_1000148C0;
  if (!qword_1000148C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000148C0);
  }

  return result;
}

unint64_t sub_10000A0E4()
{
  result = qword_1000148C8[0];
  if (!qword_1000148C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000148C8);
  }

  return result;
}