uint64_t sub_100001600()
{
  v0 = sub_100007544();
  sub_100006E2C(v0, qword_100010850);
  sub_100006764(v0, qword_100010850);
  return sub_100007534();
}

unint64_t LighthouseAVShadowEvalExtensionError.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000017;
  v2 = 0xD000000000000020;
  if (a1 != 5)
  {
    v2 = 0xD000000000000013;
  }

  v3 = 0xD000000000000011;
  if (a1 != 3)
  {
    v3 = 0xD000000000000017;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  if (a1 != 1)
  {
    v1 = 0xD000000000000028;
  }

  if (!a1)
  {
    v1 = 0xD000000000000019;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100001750(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000017;
  v3 = &unk_100008010;
  if (a1 == 5)
  {
    v4 = 0xD000000000000020;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  if (a1 == 5)
  {
    v5 = "taskFolderMissingAssets";
  }

  else
  {
    v5 = "eValueFromOutput";
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0xD000000000000017;
  }

  if (a1 == 3)
  {
    v7 = "lePathFromMobileAssetURL";
  }

  else
  {
    v7 = "taskFolderMissing";
  }

  if (a1 > 4u)
  {
    v6 = v4;
    v7 = v5;
  }

  v8 = 0xD000000000000028;
  if (a1 == 1)
  {
    v8 = 0xD000000000000017;
    v9 = "mobileAssetsParamsMissing";
  }

  else
  {
    v9 = "failedToGetMobileAssets";
  }

  if (!a1)
  {
    v8 = 0xD000000000000019;
    v9 = &unk_100008010;
  }

  v10 = a1 <= 2u;
  if (a1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = "mobileAssetsParamsMissing";
      }

      else
      {
        v2 = 0xD000000000000028;
        v3 = "failedToGetMobileAssets";
      }
    }

    else
    {
      v2 = 0xD000000000000019;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD000000000000020;
      v3 = "taskFolderMissingAssets";
    }

    else
    {
      v2 = 0xD000000000000013;
      v3 = "eValueFromOutput";
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xD000000000000011;
    v3 = "lePathFromMobileAssetURL";
  }

  else
  {
    v3 = "taskFolderMissing";
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_100007714();
  }

  return v13 & 1;
}

uint64_t sub_1000018F8(uint64_t a1)
{
  sub_1000075E4();
}

Swift::Int sub_1000019F4(uint64_t a1, unsigned __int8 a2)
{
  sub_100007764();
  sub_1000075E4();

  return sub_100007784();
}

unint64_t sub_100001AFC@<X0>(Swift::String *a1@<X0>, LighthouseAVShadowEval::LighthouseAVShadowEvalExtensionError_optional *a2@<X8>)
{
  result = _s22LighthouseAVShadowEval0abC14ExtensionErrorO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_100001B2C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = *v1;
  v4 = &unk_100008010;
  v5 = "taskFolderMissingAssets";
  v6 = 0xD000000000000020;
  if (v3 != 5)
  {
    v6 = 0xD000000000000013;
    v5 = "eValueFromOutput";
  }

  v7 = "lePathFromMobileAssetURL";
  v8 = 0xD000000000000011;
  if (v3 != 3)
  {
    v8 = 0xD000000000000017;
    v7 = "taskFolderMissing";
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "mobileAssetsParamsMissing";
  if (v3 != 1)
  {
    v2 = 0xD000000000000028;
    v9 = "failedToGetMobileAssets";
  }

  if (*v1)
  {
    v4 = v9;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v2 = v6;
    v10 = v5;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

Swift::Int sub_100001C18()
{
  v1 = *v0;
  sub_100007764();
  sub_100007774(v1);
  return sub_100007784();
}

Swift::Int sub_100001C8C()
{
  v1 = *v0;
  sub_100007764();
  sub_100007774(v1);
  return sub_100007784();
}

unint64_t sub_100001CD0()
{
  v1 = 0x6D614E6C65646F6DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C69626F4D657375;
  }
}

uint64_t sub_100001D40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000067F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100001D80(uint64_t a1)
{
  v2 = sub_100006F80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001DBC(uint64_t a1)
{
  v2 = sub_100006F80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001DF8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v11[0] = a3;
  v6 = sub_100006674(&qword_100010100, &qword_100007F10);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v11 - v8;
  sub_100006F3C(a1, a1[3]);
  sub_100006F80();
  sub_1000077A4();
  v14 = 0;
  sub_1000076E4();
  if (!v4)
  {
    v11[1] = v11[0];
    v13 = 1;
    sub_100006674(&qword_1000100F0, &qword_100007F08);
    sub_100007068(&qword_100010108, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1000076F4();
    v12 = 2;
    sub_1000076E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100001FE4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100006920(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_100002044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[47] = a2;
  v3[48] = a3;
  v3[46] = a1;
  v7 = sub_100007544();
  v3[49] = v7;
  v3[50] = *(v7 - 8);
  v3[51] = swift_task_alloc();
  sub_100006674(&qword_100010060, &qword_100007E10);
  v3[52] = swift_task_alloc();
  v8 = sub_1000073B4();
  v3[53] = v8;
  v3[54] = *(v8 - 8);
  v3[55] = swift_task_alloc();
  v9 = sub_100007374();
  v3[56] = v9;
  v3[57] = *(v9 - 8);
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  sub_100006674(&qword_100010068, &qword_100007E18);
  v3[61] = swift_task_alloc();
  v10 = sub_100007504();
  v3[62] = v10;
  v3[63] = *(v10 - 8);
  v3[64] = swift_task_alloc();
  v11 = sub_1000074C4();
  v3[65] = v11;
  v3[66] = *(v11 - 8);
  v3[67] = swift_task_alloc();
  v12 = sub_100007584();
  v3[68] = v12;
  v3[69] = *(v12 - 8);
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  sub_100006674(&qword_100010070, &qword_100007E20);
  v13 = swift_task_alloc();
  v3[73] = v13;
  v14 = sub_100006674(&qword_100010078, &qword_100007E28);
  v3[74] = v14;
  v3[75] = *(v14 - 8);
  v3[76] = swift_task_alloc();
  v3[42] = a2;
  v3[43] = a3;
  v15 = swift_task_alloc();
  v3[77] = v15;
  v16 = sub_100006620();
  v17 = sub_1000066BC();
  v3[78] = v17;
  v18 = sub_100006710();
  v3[79] = v18;
  *v15 = v3;
  v15[1] = sub_1000024E4;

  return MLHostExtension.loadConfig<A>(context:)(v13, a1, &type metadata for LighthouseAVShadowEvalExtension, &type metadata for LighthouseAVShadowEvalConfig, v16, v17, v18);
}

uint64_t sub_1000024E4()
{

  return _swift_task_switch(sub_10000260C, 0, 0);
}

uint64_t sub_10000260C()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    *(v0 + 264) = 0;
    *(v0 + 272) = &_swiftEmptyArrayStorage;
    *(v0 + 280) = 0;
    sub_100007474();
    if (v4(v3, 1, v2) != 1)
    {
      sub_100006DCC(*(v0 + 584), &qword_100010070, &qword_100007E20);
    }
  }

  else
  {
    (*(v1 + 32))(*(v0 + 608), v3, v2);
  }

  *(v0 + 640) = sub_1000074E4();
  *(v0 + 648) = v5;
  *(v0 + 281) = os_variant_has_internal_diagnostics();
  sub_100007484();
  v6 = *(v0 + 288);

  if (v6 == 1)
  {
    v7 = *(v0 + 528);
    v8 = *(v0 + 520);
    v10 = *(v0 + 504);
    v9 = *(v0 + 512);
    v12 = *(v0 + 488);
    v11 = *(v0 + 496);
    sub_100007494();
    sub_1000074F4();
    (*(v10 + 8))(v9, v11);
    if ((*(v7 + 48))(v12, 1, v8) == 1)
    {
      v13 = *(v0 + 488);

      sub_100006DCC(v13, &qword_100010068, &qword_100007E18);
      if (qword_100010110 != -1)
      {
        swift_once();
      }

      sub_100006764(*(v0 + 392), qword_100010850);
      v14 = sub_100007524();
      v15 = sub_100007644();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "useMobileAssets set to true but MobileAsset info missing from SystemParameters. Exiting early.", v16, 2u);
      }

LABEL_26:
      v42 = *(v0 + 608);
      v43 = *(v0 + 600);
      v44 = *(v0 + 592);

      sub_10000679C();
      v45 = objc_allocWithZone(sub_100007444());
      v67 = sub_100007424();
      (*(v43 + 8))(v42, v44);
LABEL_33:

      v65 = *(v0 + 8);

      return v65(v67);
    }

    (*(*(v0 + 528) + 32))(*(v0 + 536), *(v0 + 488), *(v0 + 520));
    sub_100007414();
    v32 = sub_1000074B4();
    v34 = v33;
    *(v0 + 656) = v33;
    v35 = sub_1000074A4();
    v37 = v36;
    *(v0 + 664) = v36;
    v38 = swift_task_alloc();
    *(v0 + 672) = v38;
    *v38 = v0;
    v38[1] = sub_100002FEC;
    v39 = *(v0 + 368);

    return static MLHostAsset.getRemoteAsset(context:assetType:assetSpecifier:)(v39, v32, v34, v35, v37);
  }

  else
  {
    sub_1000074D4();
    if (!v17)
    {

      if (qword_100010110 != -1)
      {
        swift_once();
      }

      sub_100006764(*(v0 + 392), qword_100010850);
      v14 = sub_100007524();
      v40 = sub_100007644();
      if (os_log_type_enabled(v14, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v14, v40, "Task folder missing. Exiting early.", v41, 2u);
      }

      goto LABEL_26;
    }

    sub_100007594();
    sub_100007554();
    v18 = [objc_opt_self() defaultManager];
    sub_100007564();
    v19 = sub_1000075C4();

    v20 = [v18 fileExistsAtPath:v19];

    if ((v20 & 1) == 0)
    {

      if (qword_100010110 != -1)
      {
        swift_once();
      }

      sub_100006764(*(v0 + 392), qword_100010850);
      v46 = sub_100007524();
      v47 = sub_100007644();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "Task folder doesn't contain assets. Exiting early.", v48, 2u);
      }

      v49 = *(v0 + 608);
      v50 = *(v0 + 600);
      v51 = *(v0 + 592);
      v52 = *(v0 + 576);
      v53 = *(v0 + 552);
      v54 = *(v0 + 544);

      sub_10000679C();
      v55 = objc_allocWithZone(sub_100007444());
      v67 = sub_100007424();
      (*(v53 + 8))(v52, v54);
      (*(v50 + 8))(v49, v51);
      goto LABEL_33;
    }

    sub_100005050(*(v0 + 440));
    sub_100007484();
    v21 = *(v0 + 320);
    *(v0 + 688) = v21;
    v22 = v21[2];
    *(v0 + 696) = v22;
    if (!v22)
    {

      v68 = *(v0 + 608);
      v56 = *(v0 + 600);
      v57 = *(v0 + 592);
      v58 = *(v0 + 576);
      v59 = *(v0 + 552);
      v60 = *(v0 + 544);
      v61 = *(v0 + 432);
      v62 = *(v0 + 440);
      v63 = *(v0 + 424);

      v64 = objc_allocWithZone(sub_100007444());
      v67 = sub_100007434();
      (*(v61 + 8))(v62, v63);
      (*(v59 + 8))(v58, v60);
      (*(v56 + 8))(v68, v57);
      goto LABEL_33;
    }

    v23 = *(v0 + 552);
    *(v0 + 704) = sub_100006CA4(0, &qword_100010098, MLModel_ptr);
    *(v0 + 712) = 0;
    if (!v21[2])
    {
      __break(1u);
    }

    v24 = *(v0 + 576);
    v25 = *(v0 + 568);
    v26 = *(v0 + 560);
    v27 = *(v0 + 544);
    *(v0 + 720) = v21[4];
    *(v0 + 728) = v21[5];
    (*(v23 + 16))(v26, v24, v27);
    swift_bridgeObjectRetain_n();
    sub_100007574();
    *(v0 + 736) = sub_100007564();
    *(v0 + 744) = v28;
    (*(v23 + 8))(v25, v27);
    sub_100007354();
    v29 = swift_task_alloc();
    *(v0 + 752) = v29;
    *v29 = v0;
    v29[1] = sub_1000037B8;
    v30 = *(v0 + 464);
    v31 = *(v0 + 416);

    return static MLModel.compileModel(at:)(v31, v30);
  }
}

uint64_t sub_100002FEC(uint64_t a1)
{
  *(*v1 + 680) = a1;

  return _swift_task_switch(sub_10000315C, 0, 0);
}

uint64_t sub_10000315C()
{
  v50 = v0;
  if (qword_100010110 != -1)
  {
    swift_once();
  }

  sub_100006764(v0[49], qword_100010850);

  v1 = sub_100007524();
  v2 = sub_100007634();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[85];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v49[0] = v5;
    *v4 = 136315138;
    v0[45] = v3;
    sub_100006674(&qword_1000100C0, &qword_100007E48);
    v6 = sub_100007664();
    v8 = sub_100005ADC(v6, v7, v49);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Got ML host asset: %s", v4, 0xCu);
    sub_100006FD4(v5);
  }

  if (v0[85])
  {
    v47 = v0[67];
    v9 = v0[66];
    v10 = v0[65];
    v11 = v0[60];
    v13 = v0[56];
    v12 = v0[57];
    sub_100007404();
    sub_100007344();
    (*(v12 + 8))(v11, v13);
    sub_100007594();

    (*(v9 + 8))(v47, v10);
    sub_100005050(v0[55]);
    sub_100007484();
    v14 = v0[40];
    v0[86] = v14;
    v15 = v14[2];
    v0[87] = v15;
    if (v15)
    {
      v16 = v0[69];
      v0[88] = sub_100006CA4(0, &qword_100010098, MLModel_ptr);
      v0[89] = 0;
      if (!v14[2])
      {
        __break(1u);
      }

      v17 = v0[72];
      v18 = v0[71];
      v19 = v0[70];
      v20 = v0[68];
      v0[90] = v14[4];
      v0[91] = v14[5];
      (*(v16 + 16))(v19, v17, v20);
      swift_bridgeObjectRetain_n();
      sub_100007574();
      v0[92] = sub_100007564();
      v0[93] = v21;
      (*(v16 + 8))(v18, v20);
      sub_100007354();
      v22 = swift_task_alloc();
      v0[94] = v22;
      *v22 = v0;
      v22[1] = sub_1000037B8;
      v23 = v0[58];
      v24 = v0[52];

      return static MLModel.compileModel(at:)(v24, v23);
    }

    v48 = v0[76];
    v35 = v0[75];
    v36 = v0[74];
    v37 = v0[72];
    v38 = v0[69];
    v39 = v0[68];
    v40 = v0[54];
    v41 = v0[55];
    v42 = v0[53];

    v43 = objc_allocWithZone(sub_100007444());
    v46 = sub_100007434();
    (*(v40 + 8))(v41, v42);
    (*(v38 + 8))(v37, v39);
    (*(v35 + 8))(v48, v36);
  }

  else
  {

    v25 = sub_100007524();
    v26 = sub_100007644();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to get mlhostAsset", v27, 2u);
    }

    v28 = v0[76];
    v29 = v0[75];
    v30 = v0[74];
    v31 = v0[67];
    v32 = v0[66];
    v33 = v0[65];

    v49[3] = &type metadata for LighthouseAVShadowEvalExtensionError;
    v49[4] = sub_10000679C();
    LOBYTE(v49[0]) = 1;
    v34 = objc_allocWithZone(sub_100007444());
    v46 = sub_100007424();

    (*(v32 + 8))(v31, v33);
    (*(v29 + 8))(v28, v30);
  }

  v44 = v0[1];

  return v44(v46);
}

uint64_t sub_1000037B8()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[57];
    v3 = v2[58];
    v5 = v2[56];

    (*(v4 + 8))(v3, v5);
    v6 = sub_100004B90;
  }

  else
  {
    v8 = v2[57];
    v7 = v2[58];
    v9 = v2[56];
    v10 = *(v8 + 8);
    v2[95] = v10;
    v2[96] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v9);
    v6 = sub_100003960;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100003960()
{
  v61 = v0;
  v1 = v0[59];
  v2 = v0[56];
  v3 = v0[57];
  v4 = v0[52];
  (*(v3 + 56))(v4, 0, 1, v2);
  (*(v3 + 32))(v1, v4, v2);
  sub_100007364(v5);
  v7 = v6;
  v8 = objc_opt_self();
  v0[44] = 0;
  v9 = [v8 modelWithContentsOfURL:v7 error:v0 + 44];
  v0[97] = v9;

  v10 = v0[44];
  if (v9)
  {
    v11 = v10;

    if (qword_100010110 != -1)
    {
      swift_once();
    }

    v0[98] = sub_100006764(v0[49], qword_100010850);
    v12 = v9;
    v13 = sub_100007524();
    v14 = sub_100007634();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v9;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "Created model: %@", v15, 0xCu);
      sub_100006DCC(v16, &qword_1000100B8, &qword_100007E40);
    }

    sub_1000073D4();
    swift_allocObject();
    v0[99] = sub_1000073C4();
    v18 = async function pointer to dispatch thunk of AVLogReader.runModelWithBiomeInputs(model:startDate:batchSize:);
    v19 = swift_task_alloc();
    v0[100] = v19;
    *v19 = v0;
    v19[1] = sub_1000040C8;
    v20 = v0[55];

    return ((&async function pointer to dispatch thunk of AVLogReader.runModelWithBiomeInputs(model:startDate:batchSize:) + v18))(v12, v20, 64);
  }

  else
  {
    v22 = v10;

    sub_100007334();

    swift_willThrow();

    if (qword_100010110 != -1)
    {
      swift_once();
    }

    sub_100006764(v0[49], qword_100010850);

    v23 = sub_100007524();
    v24 = sub_100007644();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[95];
    v27 = v0[93];
    if (v25)
    {
      v28 = v0[92];
      v29 = v0[59];
      v30 = v0[56];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v60 = v32;
      *v31 = 136315138;
      v33 = sub_100005ADC(v28, v27, &v60);

      *(v31 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to initialize model from compiled URL %s", v31, 0xCu);
      sub_100006FD4(v32);

      v26(v29, v30);
    }

    else
    {
      v34 = v0[59];
      v35 = v0[56];

      v26(v34, v35);
    }

    v36 = v0[89] + 1;
    if (v36 == v0[87])
    {

      v59 = v0[76];
      v37 = v0[75];
      v38 = v0[74];
      v39 = v0[72];
      v40 = v0[69];
      v41 = v0[68];
      v42 = v0[54];
      v43 = v0[55];
      v44 = v0[53];

      v45 = objc_allocWithZone(sub_100007444());
      v58 = sub_100007434();
      (*(v42 + 8))(v43, v44);
      (*(v40 + 8))(v39, v41);
      (*(v37 + 8))(v59, v38);

      v46 = v0[1];

      return v46(v58);
    }

    else
    {
      v0[89] = v36;
      v47 = v0[86];
      if (v36 >= *(v47 + 16))
      {
        __break(1u);
      }

      v48 = v0[72];
      v49 = v0[71];
      v50 = v0[70];
      v51 = v0[69];
      v52 = v0[68];
      v53 = v47 + 16 * v36;
      v0[90] = *(v53 + 32);
      v0[91] = *(v53 + 40);
      (*(v51 + 16))(v50, v48, v52);
      swift_bridgeObjectRetain_n();
      sub_100007574();
      v0[92] = sub_100007564();
      v0[93] = v54;
      (*(v51 + 8))(v49, v52);
      sub_100007354();
      v55 = swift_task_alloc();
      v0[94] = v55;
      *v55 = v0;
      v55[1] = sub_1000037B8;
      v56 = v0[58];
      v57 = v0[52];

      return static MLModel.compileModel(at:)(v57, v56);
    }
  }
}

uint64_t sub_1000040C8(uint64_t a1, uint64_t a2)
{
  *(*v2 + 808) = a1;

  return _swift_task_switch(sub_100004228, 0, 0);
}

uint64_t sub_100004228()
{
  v70 = v0;

  v1 = sub_100007524();
  v2 = sub_100007634();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v69[0] = v4;
    *v3 = 136315138;
    v5 = sub_1000075B4();
    v7 = sub_100005ADC(v5, v6, v69);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Metrics: %s", v3, 0xCu);
    sub_100006FD4(v4);
  }

  v8 = *(v0 + 808);
  v11 = *(v8 + 64);
  v10 = v8 + 64;
  v9 = v11;
  v12 = -1;
  v13 = -1 << *(*(v0 + 808) + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & v9;
  v15 = (63 - v13) >> 6;

  v16 = 0;
  v62 = v15;
  v63 = v10;
LABEL_8:
  if (v14)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v20 >= v15)
    {
      break;
    }

    v14 = *(v10 + 8 * v20);
    ++v16;
    if (v14)
    {
      v16 = v20;
LABEL_13:
      if (*(v0 + 281))
      {
        v21 = 1001;
      }

      else
      {
        v21 = 5001;
      }

      v66 = v21;
      sub_100006674(&qword_1000100A0, &qword_100007E30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100007BB0;
      *(inited + 32) = 0x614E63697274656DLL;
      *(inited + 40) = 0xEA0000000000656DLL;

      v23 = sub_1000075C4();

      *(inited + 48) = v23;
      *(inited + 56) = 0x615663697274656DLL;
      *(inited + 64) = 0xEB0000000065756CLL;
      *(inited + 72) = sub_100007614();
      *(inited + 80) = 0xD000000000000012;
      *(inited + 88) = 0x8000000100008170;
      *(inited + 96) = sub_1000075C4();
      *(inited + 104) = 0x5573656C706D6173;
      *(inited + 112) = 0xEB00000000646573;
      *(inited + 120) = sub_100007624();
      *(inited + 128) = 0xD000000000000011;
      *(inited + 136) = 0x8000000100008190;
      *(inited + 144) = sub_1000075C4();
      *(inited + 152) = 0xD000000000000010;
      *(inited + 160) = 0x80000001000081B0;
      *(inited + 168) = sub_1000075C4();
      *(inited + 176) = 0xD000000000000011;
      *(inited + 184) = 0x80000001000081D0;
      *(v0 + 284) = v66;
      sub_100007704();
      v24 = sub_1000075C4();

      *(inited + 192) = v24;
      v25 = sub_100006B48(inited);
      swift_setDeallocating();
      sub_100006674(&qword_1000100A8, &qword_100007E38);
      swift_arrayDestroy();
      sub_100007514();

      v26 = sub_100007524();
      v27 = sub_100007634();

      v28 = os_log_type_enabled(v26, v27);
      v30 = *(v0 + 400);
      v29 = *(v0 + 408);
      v31 = *(v0 + 392);
      if (v28)
      {
        v65 = v27;
        v32 = swift_slowAlloc();
        v67 = v29;
        v69[0] = swift_slowAlloc();
        v33 = v69[0];
        *v32 = 136315138;
        sub_100006CA4(0, &qword_1000100B0, NSObject_ptr);
        v34 = sub_1000075B4();
        v36 = v25;
        v37 = sub_100005ADC(v34, v35, v69);

        *(v32 + 4) = v37;
        v25 = v36;
        _os_log_impl(&_mh_execute_header, v26, v65, "Submitting %s.", v32, 0xCu);
        sub_100006FD4(v33);

        (*(v30 + 8))(v67, v31);
      }

      else
      {

        (*(v30 + 8))(v29, v31);
      }

      v15 = v62;
      v10 = v63;
      v14 &= v14 - 1;
      v17 = sub_1000075C4();
      v18 = swift_allocObject();
      *(v18 + 16) = v25;
      *(v0 + 248) = sub_100006C84;
      *(v0 + 256) = v18;
      *(v0 + 216) = _NSConcreteStackBlock;
      *(v0 + 224) = 1107296256;
      *(v0 + 232) = sub_10000556C;
      *(v0 + 240) = &unk_10000C970;
      v19 = _Block_copy((v0 + 216));

      AnalyticsSendEventLazy();
      _Block_release(v19);

      goto LABEL_8;
    }
  }

  v38 = *(v0 + 776);
  (*(v0 + 760))(*(v0 + 472), *(v0 + 448));

  v39 = *(v0 + 712) + 1;
  if (v39 == *(v0 + 696))
  {

    v68 = *(v0 + 608);
    v40 = *(v0 + 600);
    v41 = *(v0 + 592);
    v42 = *(v0 + 576);
    v43 = *(v0 + 552);
    v44 = *(v0 + 544);
    v45 = *(v0 + 432);
    v46 = *(v0 + 440);
    v47 = *(v0 + 424);

    v48 = objc_allocWithZone(sub_100007444());
    aBlock = sub_100007434();
    (*(v45 + 8))(v46, v47);
    (*(v43 + 8))(v42, v44);
    (*(v40 + 8))(v68, v41);

    v49 = *(v0 + 8);

    return v49(aBlock);
  }

  *(v0 + 712) = v39;
  v51 = *(v0 + 688);
  if (v39 >= *(v51 + 16))
  {
LABEL_27:
    __break(1u);
  }

  v52 = *(v0 + 576);
  v53 = *(v0 + 568);
  v54 = *(v0 + 560);
  v55 = *(v0 + 552);
  v56 = *(v0 + 544);
  v57 = v51 + 16 * v39;
  *(v0 + 720) = *(v57 + 32);
  *(v0 + 728) = *(v57 + 40);
  (*(v55 + 16))(v54, v52, v56);
  swift_bridgeObjectRetain_n();
  sub_100007574();
  *(v0 + 736) = sub_100007564();
  *(v0 + 744) = v58;
  (*(v55 + 8))(v53, v56);
  sub_100007354();
  v59 = swift_task_alloc();
  *(v0 + 752) = v59;
  *v59 = v0;
  v59[1] = sub_1000037B8;
  v60 = *(v0 + 464);
  v61 = *(v0 + 416);

  return static MLModel.compileModel(at:)(v61, v60);
}

uint64_t sub_100004B90()
{
  v36 = v0;
  v1 = v0[52];
  (*(v0[57] + 56))(v1, 1, 1, v0[56]);
  sub_100006DCC(v1, &qword_100010060, &qword_100007E10);
  if (qword_100010110 != -1)
  {
    swift_once();
  }

  sub_100006764(v0[49], qword_100010850);

  v2 = sub_100007524();
  v3 = sub_100007644();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[93];
  if (v4)
  {
    v6 = v0[92];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v7 = 136315138;
    v9 = sub_100005ADC(v6, v5, &v35);

    *(v7 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to compile model at %s", v7, 0xCu);
    sub_100006FD4(v8);
  }

  else
  {
  }

  v10 = v0[89] + 1;
  if (v10 == v0[87])
  {

    v34 = v0[76];
    v11 = v0[75];
    v12 = v0[74];
    v13 = v0[72];
    v14 = v0[69];
    v15 = v0[68];
    v16 = v0[54];
    v17 = v0[55];
    v18 = v0[53];

    v19 = objc_allocWithZone(sub_100007444());
    v33 = sub_100007434();
    (*(v16 + 8))(v17, v18);
    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v34, v12);

    v20 = v0[1];

    return v20(v33);
  }

  else
  {
    v0[89] = v10;
    v22 = v0[86];
    if (v10 >= *(v22 + 16))
    {
      __break(1u);
    }

    v23 = v0[72];
    v24 = v0[71];
    v25 = v0[70];
    v26 = v0[69];
    v27 = v0[68];
    v28 = v22 + 16 * v10;
    v0[90] = *(v28 + 32);
    v0[91] = *(v28 + 40);
    (*(v26 + 16))(v25, v23, v27);
    swift_bridgeObjectRetain_n();
    sub_100007574();
    v0[92] = sub_100007564();
    v0[93] = v29;
    (*(v26 + 8))(v24, v27);
    sub_100007354();
    v30 = swift_task_alloc();
    v0[94] = v30;
    *v30 = v0;
    v30[1] = sub_1000037B8;
    v31 = v0[58];
    v32 = v0[52];

    return static MLModel.compileModel(at:)(v32, v31);
  }
}

uint64_t sub_100005050@<X0>(uint64_t a1@<X8>)
{
  sub_100006674(&qword_1000100D8, &qword_100007E60);
  __chkstk_darwin();
  v3 = &v24[-v2 - 8];
  v4 = sub_1000073B4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100006674(&qword_100010078, &qword_100007E28);
  sub_100007484();

  if (v31 == 1)
  {
    return sub_100007384();
  }

  v9 = [objc_opt_self() standardUserDefaults];
  v32._countAndFlagsBits = sub_1000074E4();
  *&v30 = 0xD000000000000018;
  *(&v30 + 1) = 0x8000000100008210;
  sub_1000075F4(v32);

  v10 = sub_1000075C4();
  v11 = [v9 valueForKey:v10];

  if (v11)
  {
    sub_100007674();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  sub_1000073A4();
  isa = sub_100007394().super.isa;
  (*(v5 + 8))(v7, v4);
  v13 = sub_1000075C4();

  [v9 setObject:isa forKey:v13];

  sub_100006D4C(&v30, &v26);
  if (v27)
  {
    sub_100006DBC(&v26, &v28);
    sub_100006CEC(&v28, &v26);
    if (swift_dynamicCast())
    {

      sub_100006FD4(&v28);
      sub_100006DCC(&v30, &qword_1000100E0, &qword_100007E68);
      (*(v5 + 56))(v3, 0, 1, v4);
      return (*(v5 + 32))(a1, v3, v4);
    }

    (*(v5 + 56))(v3, 1, 1, v4);
    sub_100006DCC(v3, &qword_1000100D8, &qword_100007E60);
    if (qword_100010110 != -1)
    {
      swift_once();
    }

    v14 = sub_100007544();
    sub_100006764(v14, qword_100010850);
    sub_100006CEC(&v28, &v26);
    v15 = sub_100007524();
    v16 = sub_100007644();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      sub_100006CEC(&v26, v24);
      v19 = sub_1000075D4();
      v21 = v20;
      sub_100006FD4(&v26);
      v22 = sub_100005ADC(v19, v21, &v25);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "Got non-date type object for last run date: %s", v17, 0xCu);
      sub_100006FD4(v18);
    }

    else
    {

      sub_100006FD4(&v26);
    }

    sub_100007384();

    sub_100006FD4(&v28);
  }

  else
  {
    sub_100006DCC(&v26, &qword_1000100E0, &qword_100007E68);
    sub_100007384();
  }

  return sub_100006DCC(&v30, &qword_1000100E0, &qword_100007E68);
}

Class sub_10000556C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100006CA4(0, &qword_1000100B0, NSObject_ptr);
    v4.super.isa = sub_1000075A4().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_100005624()
{
  objc_allocWithZone(sub_100007444());
  v1 = sub_100007434();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100005698(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005740;

  return sub_100002044(a1, v5, v4);
}

uint64_t sub_100005740(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10000583C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100005920;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100005920()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100005A14(uint64_t a1)
{
  v2 = sub_100006620();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100006200();
  sub_1000073E4();
  return 0;
}

unint64_t sub_100005ADC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005BA8(v11, 0, 0, 1, a1, a2);
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
    sub_100006CEC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006FD4(v11);
  return v7;
}

unint64_t sub_100005BA8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100005CB4(a5, a6);
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
    result = sub_100007694();
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

char *sub_100005CB4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100005D00(a1, a2);
  sub_100005E30(&off_10000C810);
  return v3;
}

char *sub_100005D00(uint64_t a1, unint64_t a2)
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

  v6 = sub_100005F1C(v5, 0);
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

  result = sub_100007694();
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
        v10 = sub_100007604();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005F1C(v10, 0);
        result = sub_100007684();
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

uint64_t sub_100005E30(uint64_t result)
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

  result = sub_100005F90(result, v11, 1, v3);
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

void *sub_100005F1C(uint64_t a1, uint64_t a2)
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

  sub_100006674(&qword_1000100D0, &qword_100007E58);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005F90(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006674(&qword_1000100D0, &qword_100007E58);
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

unint64_t sub_100006084(uint64_t a1, uint64_t a2)
{
  sub_100007764();
  sub_1000075E4();
  v4 = sub_100007784();

  return sub_1000060FC(a1, a2, v4);
}

unint64_t sub_1000060FC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100007714())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t _s22LighthouseAVShadowEval0abC14ExtensionErrorO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10000C748;
  v6._object = a2;
  v4 = sub_1000076B4(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100006200()
{
  result = qword_100010030;
  if (!qword_100010030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010030);
  }

  return result;
}

unint64_t sub_100006258()
{
  result = qword_100010038;
  if (!qword_100010038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010038);
  }

  return result;
}

unint64_t sub_1000062B0()
{
  result = qword_100010040;
  if (!qword_100010040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010040);
  }

  return result;
}

unint64_t sub_100006308()
{
  result = qword_100010048;
  if (!qword_100010048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010048);
  }

  return result;
}

unint64_t sub_100006360()
{
  result = qword_100010050;
  if (!qword_100010050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010050);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LighthouseAVShadowEvalExtensionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LighthouseAVShadowEvalExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100006528(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100006534(uint64_t a1, int a2)
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

uint64_t sub_10000657C(uint64_t result, int a2, int a3)
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

unint64_t sub_100006620()
{
  result = qword_100010058;
  if (!qword_100010058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010058);
  }

  return result;
}

uint64_t sub_100006674(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000066BC()
{
  result = qword_100010080;
  if (!qword_100010080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010080);
  }

  return result;
}

unint64_t sub_100006710()
{
  result = qword_100010088;
  if (!qword_100010088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010088);
  }

  return result;
}

uint64_t sub_100006764(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10000679C()
{
  result = qword_100010090;
  if (!qword_100010090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010090);
  }

  return result;
}

uint64_t sub_1000067F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C69626F4D657375 && a2 == 0xEF73746573734165;
  if (v4 || (sub_100007714() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xEA00000000007365 || (sub_100007714() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100008260 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_100007714();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100006920(void *a1)
{
  v3 = sub_100006674(&qword_1000100E8, &qword_100007F00);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_100006F3C(a1, v7);
  sub_100006F80();
  sub_100007794();
  if (!v1)
  {
    v10 = 0;
    LOBYTE(v7) = sub_1000076C4();
    sub_100006674(&qword_1000100F0, &qword_100007F08);
    v9[15] = 1;
    sub_100007068(&qword_1000100F8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1000076D4();
    v9[14] = 2;
    sub_1000076C4();
    (*(v4 + 8))(v6, v3);
  }

  sub_100006FD4(a1);
  return v7 & 1;
}

unint64_t sub_100006B48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006674(&qword_1000100C8, &qword_100007E50);
    v3 = sub_1000076A4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100006084(v5, v6);
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

uint64_t sub_100006C4C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006C8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006CA4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100006CEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006674(&qword_1000100E0, &qword_100007E68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100006DBC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100006DCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100006674(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_100006E2C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 sub_100006E90(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100006EA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100006EEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_100006F3C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100006F80()
{
  result = qword_1000105A0[0];
  if (!qword_1000105A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000105A0);
  }

  return result;
}

uint64_t sub_100006FD4(void *a1)
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

uint64_t sub_100007020(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100007068(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100007020(&qword_1000100F0, &qword_100007F08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LighthouseAVShadowEvalConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LighthouseAVShadowEvalConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100007228()
{
  result = qword_1000106B0[0];
  if (!qword_1000106B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000106B0);
  }

  return result;
}

unint64_t sub_100007280()
{
  result = qword_1000107C0;
  if (!qword_1000107C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000107C0);
  }

  return result;
}

unint64_t sub_1000072D8()
{
  result = qword_1000107C8[0];
  if (!qword_1000107C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000107C8);
  }

  return result;
}