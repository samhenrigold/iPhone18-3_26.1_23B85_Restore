uint64_t sub_212CC(uint64_t a1)
{
  v2 = sub_20410(&unk_34FC00, &unk_2D0150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21458(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t CatService.__allocating_init(appNameResolver:options:morphunProvider:aceServiceInvoker:featureFlagProvider:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v11 = a1[3];
  v12 = a1[4];
  v13 = sub_F9A0(a1, v11);
  v14 = sub_23F8C(v13, v9, a3, a4, a5, v5, v11, v12);
  sub_306C(a1);
  return v14;
}

uint64_t CatService.init(appNameResolver:options:morphunProvider:aceServiceInvoker:featureFlagProvider:)(void *a1, int a2, void *a3, void *a4, void *a5)
{
  v30 = a4;
  v29 = a2;
  v8 = a1[3];
  v28 = a1[4];
  v9 = sub_F9A0(a1, v8);
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = a3[3];
  v27 = a3[4];
  v14 = sub_F9A0(a3, v13);
  __chkstk_darwin(v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = a5[3];
  v19 = a5[4];
  v20 = sub_F9A0(a5, v18);
  __chkstk_darwin(v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v24 = sub_23C40(v11, v29, v16, v30, v22, v31, v8, v13, v18, v28, v27, v19);
  sub_306C(a5);
  sub_306C(a3);
  sub_306C(a1);
  return v24;
}

uint64_t sub_21894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46 = a6;
  v47 = a8;
  v48 = a5;
  v49 = a7;
  v50 = a2;
  v51 = a3;
  v54 = a1;
  v11 = sub_2CB260();
  v43 = *(v11 - 8);
  v44 = v11;
  __chkstk_darwin(v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v45 = a9;
  v18 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  v19 = sub_2CDFE0();
  v20 = sub_2CE660();
  if (os_log_type_enabled(v19, v20))
  {
    v42 = v9;
    v21 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v21 = 138412290;
    sub_2CB180();
    v22 = sub_2CB150();
    if (v22)
    {
      sub_2CB130();
      v40 = a4;

      sub_2CD3C0();

      v23 = sub_2CB200();
      v25 = v24;
      (*(v43 + 8))(v13, v44);
      sub_10C40();
      swift_allocError();
      *v26 = v23;
      v26[1] = v25;
      a4 = v40;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      v27 = v22;
    }

    else
    {
      v27 = 0;
    }

    *(v21 + 4) = v22;
    v28 = v41;
    *v41 = v27;
    _os_log_impl(&dword_0, v19, v20, "CatService#execute is creating dialog with responseMode = %@", v21, 0xCu);
    sub_30B8(v28, &unk_34FC00, &unk_2D0150);
  }

  (*(v15 + 8))(v17, v14);
  sub_F3F4(a4, v52, &qword_34C6C0, &qword_2D0710);
  v29 = a4;
  v30 = swift_allocObject();
  v31 = v48;
  v32 = v49;
  v33 = v54;
  *(v30 + 16) = v48;
  *(v30 + 24) = v33;
  v34 = v52[1];
  *(v30 + 32) = v52[0];
  *(v30 + 48) = v34;
  v36 = v46;
  v35 = v47;
  *(v30 + 64) = v53;
  *(v30 + 72) = v36;
  *(v30 + 80) = v32;
  *(v30 + 88) = v35;
  *(v30 + 96) = v45;
  v37 = v31;

  DialogService.buildParams(with:app:intentDialogContext:completion:)(v50, v51, v29, sub_242F0, v30);
}

void sub_21C84(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v16 = a2;
  }

  else
  {
    if (qword_34C008 != -1)
    {
      swift_once();
    }

    v16 = qword_35F848;
  }

  v17 = a2;
  v19 = sub_3128(a4);
  sub_35E0(a3 + 32, a3[35]);
  if (sub_2CC4B0())
  {
    CatService.executeDialog(for:parameters:bundle:globals:completion:)(a5, a6, a1, v16, v19, a7, a8);
    v18 = v16;
  }

  else
  {
    CatService.executeTemplateResult(for:parameters:bundle:globals:completion:)(a5, a6, a1, v16, v19, a7, a8);
    v18 = v19;
    v19 = v16;
  }
}

uint64_t sub_21DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_20410(&qword_34C6C8, &qword_2D0718);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  DialogService.buildParams(with:app:intentDialogContext:completion:)(a3, a4, a5, sub_24230, v14);
}

uint64_t sub_21F40(uint64_t a1)
{

  sub_20410(&qword_34C6C8, &qword_2D0718);
  return sub_2CE4A0();
}

uint64_t CatService.executeTemplateResult(for:parameters:bundle:globals:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v67 = a7;
  v66 = a6;
  v72 = a4;
  v73 = a2;
  v71 = a1;
  v9 = sub_2CCF30();
  v76 = *(v9 - 8);
  v77 = v9;
  __chkstk_darwin(v9);
  v70 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2CDFD0();
  v81 = *(v75 - 8);
  v11 = *(v81 + 64);
  v12 = __chkstk_darwin(v75);
  v65 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v80 = &v60 - v13;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v68 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v60 - v18;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v21 = *(v15 + 16);
  v64 = v20;
  v63 = v15 + 16;
  v62 = v21;
  v21(v19, v20, v14);

  v22 = a5;
  v78 = v22;
  v23 = sub_2CDFE0();
  v24 = sub_2CE660();

  v25 = os_log_type_enabled(v23, v24);
  v79 = v15;
  v74 = a3;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v60 = v11;
    v27 = v26;
    v28 = swift_slowAlloc();
    *&v82[0] = swift_slowAlloc();
    *v27 = 136446722;
    v29 = sub_2CCCB0();
    v31 = sub_3F08(v29, v30, v82);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    v32 = sub_2CE210();
    v34 = sub_3F08(v32, v33, v82);

    *(v27 + 14) = v34;
    v35 = v78;
    *(v27 + 22) = 2112;
    *(v27 + 24) = v35;
    *v28 = v35;
    v36 = v35;
    _os_log_impl(&dword_0, v23, v24, "CatService#executeTemplateResult %{public}s using params: %{public}s globals: %@", v27, 0x20u);
    sub_30B8(v28, &unk_34FC00, &unk_2D0150);

    swift_arrayDestroy();

    v11 = v60;

    v61 = *(v79 + 8);
  }

  else
  {

    v61 = *(v15 + 8);
  }

  v61(v19, v14);
  v37 = v75;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v38 = qword_35F760;
  v39 = v80;
  sub_2CDFB0();
  v40 = v81;
  v41 = v65;
  (*(v81 + 16))(v65, v39, v37);
  v42 = (*(v40 + 80) + 33) & ~*(v40 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = "catServiceInnerExecute";
  *(v43 + 24) = 22;
  *(v43 + 32) = 2;
  v44 = *(v40 + 32);
  v45 = v37;
  v44(v43 + v42, v41);
  v46 = (v43 + ((v11 + v42 + 7) & 0xFFFFFFFFFFFFFFF8));
  v47 = v67;
  *v46 = v66;
  v46[1] = v47;

  v48 = sub_2CE9E0();
  sub_2CDF90(v48, &dword_0, v38, "catServiceInnerExecute", 22, 2, v39, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);
  v49 = swift_allocObject();
  *(v49 + 16) = sub_2433C;
  *(v49 + 24) = v43;
  v50 = v68;
  v62(v68, v64, v14);

  v51 = sub_2CDFE0();
  v52 = sub_2CE660();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_0, v51, v52, "CatService#executeTemplateResult CAT.execute ...", v53, 2u);
  }

  v61(v50, v14);
  sub_2CCD80();
  v83 = 0;
  memset(v82, 0, sizeof(v82));
  v54 = v69;
  v55 = v70;
  sub_2CCF20();
  v56 = swift_allocObject();
  v56[2] = sub_24350;
  v56[3] = v49;
  v57 = v71;
  v56[4] = v54;
  v56[5] = v57;
  v58 = v74;
  v56[6] = v73;
  v56[7] = v58;

  sub_2CCD70();

  (*(v76 + 8))(v55, v77);
  sub_30B8(v82, &qword_34C6F8, &qword_2D0758);
  return (*(v81 + 8))(v80, v45);
}

uint64_t sub_2278C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, char *, uint64_t))
{
  v77 = a7;
  v78 = a6;
  v81 = a5;
  v85 = a3;
  v86 = a2;
  v8 = sub_2CA130();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v80 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v79 = &v71 - v13;
  __chkstk_darwin(v12);
  v15 = &v71 - v14;
  v83 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v83);
  v84 = &v71 - v16;
  v17 = sub_2CE000();
  v87 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v82 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v71 - v20;
  v22 = sub_20410(&qword_34C700, &unk_2D0760);
  __chkstk_darwin(v22);
  v24 = (&v71 - v23);
  sub_F3F4(a1, &v71 - v23, &qword_34C700, &unk_2D0760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v26 = sub_3ED0(v17, static Logger.default);
    swift_beginAccess();
    v27 = v87;
    (*(v87 + 16))(v21, v26, v17);
    swift_errorRetain();
    v28 = sub_2CDFE0();
    v29 = sub_2CE680();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v30 = 136446466;
      v31 = sub_2CCCB0();
      v33 = sub_3F08(v31, v32, &v88);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2082;
      swift_getErrorValue();
      v34 = sub_2CEEF0();
      v36 = sub_3F08(v34, v35, &v88);

      *(v30 + 14) = v36;
      _os_log_impl(&dword_0, v28, v29, "CatService#executeTemplateResult %{public}s Error evaluating CAT: %{public}s", v30, 0x16u);
      swift_arrayDestroy();
    }

    (*(v27 + 8))(v21, v17);
    v37 = v84;
    *v84 = v25;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v86(v37);

    return sub_30B8(v37, &unk_3519A0, &qword_2D0980);
  }

  else
  {
    (*(v9 + 32))(v15, v24, v8);
    v39 = sub_2CA0F0();
    v40 = v78;
    sub_12F0C(v81, v78, v39, v77);

    v41 = v8;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v42 = sub_3ED0(v17, static Logger.default);
    swift_beginAccess();
    v43 = *(v87 + 16);
    v44 = v82;
    v76 = v17;
    v43(v82, v42, v17);
    v45 = *(v9 + 16);
    v46 = v79;
    v45(v79, v15, v41);
    v47 = v80;
    v77 = v45;
    v45(v80, v15, v41);

    v48 = sub_2CDFE0();
    v49 = sub_2CE690();

    v75 = v49;
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v74 = v15;
      v51 = v50;
      v72 = swift_slowAlloc();
      v88 = v72;
      *v51 = 136446978;
      v52 = sub_2CCCB0();
      v73 = v48;
      v54 = v47;
      v55 = sub_3F08(v52, v53, &v88);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2082;
      *(v51 + 14) = sub_3F08(v81, v40, &v88);
      *(v51 + 22) = 2082;
      sub_2CA110();
      v56 = v41;
      v57 = sub_2CE420();
      v58 = v46;
      v60 = v59;

      v61 = *(v9 + 8);
      v81 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61(v58, v56);
      v62 = v57;
      v41 = v56;
      v63 = sub_3F08(v62, v60, &v88);

      *(v51 + 24) = v63;
      *(v51 + 32) = 2082;
      sub_2CA100();
      v64 = sub_2CE420();
      v66 = v65;

      v61(v54, v41);
      v67 = sub_3F08(v64, v66, &v88);

      *(v51 + 34) = v67;
      v68 = v73;
      _os_log_impl(&dword_0, v73, v75, "CatService#executeTemplateResult %{public}s Successfully evaluated CAT: catId:%{public}s, result.speak:%{public}s, result.print:%{public}s", v51, 0x2Au);
      swift_arrayDestroy();

      v15 = v74;

      (*(v87 + 8))(v82, v76);
    }

    else
    {

      v61 = *(v9 + 8);
      v81 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61(v47, v41);
      v61(v46, v41);
      (*(v87 + 8))(v44, v76);
    }

    v69 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
    v70 = v84;
    v77(v84, v15, v41);
    *(v70 + v69) = [objc_allocWithZone(DialogExecutionResult) init];
    swift_storeEnumTagMultiPayload();
    v86(v70);
    sub_30B8(v70, &unk_3519A0, &qword_2D0980);
    return (v61)(v15, v41);
  }
}

uint64_t CatService.executeDialog(for:parameters:bundle:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[29] = a5;
  v6[30] = v5;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  v7 = sub_2CE000();
  v6[31] = v7;
  v6[32] = *(v7 - 8);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();

  return _swift_task_switch(sub_23120, 0, 0);
}

uint64_t sub_23120()
{
  v1 = v0[30];
  v2 = v0[27];
  v10 = v0[28];
  v9 = objc_opt_self();
  v3 = sub_2CE260();
  v0[35] = v3;
  sub_E014(v2);
  isa = sub_2CE1F0().super.isa;
  v0[36] = isa;

  sub_2CCCF0();
  v5 = sub_2CE1F0().super.isa;
  v0[37] = v5;

  v6 = *(v1 + 296);
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_23308;
  v7 = swift_continuation_init();
  v0[17] = sub_20410(&qword_34C6D0, &unk_2D0720);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_23AD4;
  v0[13] = &unk_331168;
  v0[14] = v7;
  [v9 execute:v10 catId:v3 parameters:isa globals:v5 callback:0 options:v6 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_23308()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_238BC;
  }

  else
  {
    v2 = sub_23418;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_23418()
{
  v48 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 280);
  v3 = *(v0 + 192);

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 272);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);
  v7 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  (*(v6 + 16))(v4, v7, v5);
  v8 = v3;
  v9 = sub_2CDFE0();
  v10 = sub_2CE670();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v47 = v13;
    *v11 = 136446722;
    v14 = sub_2CCCB0();
    v16 = sub_3F08(v14, v15, &v47);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2114;
    v17 = [v8 dialog];
    sub_13AE0();
    v18 = sub_2CE410();

    if (v18 >> 62)
    {
      result = sub_2CEDA0();
      v46 = v13;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
      v46 = v13;
      if (result)
      {
LABEL_6:
        if ((v18 & 0xC000000000000001) != 0)
        {
          v20 = sub_2CECD0();
        }

        else
        {
          if (!*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_28;
          }

          v20 = *(v18 + 32);
        }

        v21 = v20;

        v22 = [v21 fullPrint];

        v23 = sub_2CE270();
        v25 = v24;

        sub_10C40();
        swift_allocError();
        *v26 = v23;
        v26[1] = v25;
        v27 = _swift_stdlib_bridgeErrorToNSError();
LABEL_13:
        *(v11 + 14) = v27;
        *v12 = v27;
        *(v11 + 22) = 2114;
        v31 = [v8 dialog];
        v32 = sub_2CE410();

        if (v32 >> 62)
        {
          result = sub_2CEDA0();
          if (result)
          {
            goto LABEL_15;
          }
        }

        else
        {
          result = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
          if (result)
          {
LABEL_15:
            if ((v32 & 0xC000000000000001) != 0)
            {
              v33 = sub_2CECD0();
              goto LABEL_18;
            }

            if (*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
            {
              v33 = *(v32 + 32);
LABEL_18:
              v34 = v33;

              v35 = [v34 fullSpeak];

              v36 = sub_2CE270();
              v38 = v37;

              sub_10C40();
              swift_allocError();
              *v39 = v36;
              v39[1] = v38;
              v40 = _swift_stdlib_bridgeErrorToNSError();
LABEL_21:
              v41 = *(v0 + 272);
              v43 = *(v0 + 248);
              v42 = *(v0 + 256);
              *(v11 + 24) = v40;
              v12[1] = v40;
              _os_log_impl(&dword_0, v9, v10, "CatService#executeDialog %{public}s Successfully evaluated dialog to Print: %{public}@ speak:%{public}@", v11, 0x20u);
              sub_20410(&unk_34FC00, &unk_2D0150);
              swift_arrayDestroy();

              sub_306C(v46);

              (*(v42 + 8))(v41, v43);
              goto LABEL_22;
            }

LABEL_28:
            __break(1u);
            return result;
          }
        }

        v40 = 0;
        goto LABEL_21;
      }
    }

    v27 = 0;
    goto LABEL_13;
  }

  v28 = *(v0 + 272);
  v29 = *(v0 + 248);
  v30 = *(v0 + 256);

  (*(v30 + 8))(v28, v29);
LABEL_22:
  v44 = *(v0 + 304) != 0;

  v45 = *(v0 + 8);

  return v45(v8, v44);
}

uint64_t sub_238BC()
{
  v1 = v0[37];
  v3 = v0[35];
  v2 = v0[36];
  swift_willThrow();

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[31];
  v7 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);
  swift_errorRetain();
  v8 = sub_2CDFE0();
  v9 = sub_2CE680();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_0, v8, v9, "CatService#executeDialog has returned an error: %@", v10, 0xCu);
    sub_30B8(v11, &unk_34FC00, &unk_2D0150);
  }

  v14 = v0[32];
  v13 = v0[33];
  v15 = v0[31];

  (*(v14 + 8))(v13, v15);
  v16 = v0[38];

  v17 = v0[1];

  return v17(v16, v16 != 0);
}

uint64_t sub_23AD4(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_35E0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_20410(&qword_34C6E0, &unk_2D0730);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

void *CatService.deinit()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);
  sub_306C(v0 + 12);
  sub_306C(v0 + 17);
  sub_306C(v0 + 22);
  sub_306C(v0 + 27);
  sub_306C(v0 + 32);
  return v0;
}

uint64_t sub_23C40(uint64_t a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40[3] = a7;
  v40[4] = a10;
  v19 = sub_F390(v40);
  (*(*(a7 - 8) + 32))(v19, a1, a7);
  v39[3] = a8;
  v39[4] = a11;
  v20 = sub_F390(v39);
  (*(*(a8 - 8) + 32))(v20, a3, a8);
  v38[3] = a9;
  v38[4] = a12;
  v21 = sub_F390(v38);
  (*(*(a9 - 8) + 32))(v21, a5, a9);
  *(a6 + 296) = a2;
  sub_EEAC(v38, a6 + 256);
  sub_EEAC(v40, v37);
  sub_EEAC(v39, v36);
  sub_EEAC(a4, v35);
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v32[3] = sub_2CCA30();
  v32[4] = &protocol witness table for MultiUserConnectionProvider;
  v32[0] = sub_2CCA20();
  v31[3] = sub_2CB9E0();
  v31[4] = &protocol witness table for DeviceProvider;
  sub_F390(v31);
  sub_2CB9C0();
  sub_EEAC(v37, a6 + 16);
  sub_EEAC(v36, a6 + 216);
  sub_EEAC(v35, a6 + 56);
  sub_EEAC(v32, a6 + 96);
  sub_EEAC(v31, a6 + 176);
  sub_F3F4(v33, &v26, qword_34C708, &qword_2D1620);
  if (v27)
  {
    sub_306C(a4);
    sub_30B8(v33, qword_34C708, &qword_2D1620);
    sub_306C(v35);
    sub_306C(v36);
    sub_306C(v37);
    sub_306C(v38);
    sub_306C(v39);
    sub_306C(v40);
    sub_306C(v31);
    sub_306C(v32);
    sub_F338(&v26, &v28);
  }

  else
  {
    sub_EEAC(v35, &v28);
    v22 = sub_2C9E60();
    swift_allocObject();
    v23 = sub_2C9E50();
    v29 = v22;
    v30 = &protocol witness table for ContactsManager;
    *&v28 = v23;
    sub_306C(a4);
    sub_30B8(v33, qword_34C708, &qword_2D1620);
    sub_306C(v35);
    sub_306C(v36);
    sub_306C(v37);
    sub_306C(v38);
    sub_306C(v39);
    sub_306C(v40);
    sub_306C(v31);
    sub_306C(v32);
    if (v27)
    {
      sub_30B8(&v26, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v28, a6 + 136);
  return a6;
}

uint64_t sub_23F8C(uint64_t a1, int a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v33 = a4;
  v31 = a2;
  v30 = a1;
  v11 = *(a7 - 8);
  __chkstk_darwin(a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CatService();
  v14 = swift_allocObject();
  v15 = a3[3];
  v28 = a3[4];
  v29 = v14;
  v16 = sub_F9A0(a3, v15);
  __chkstk_darwin(v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = a5[3];
  v21 = a5[4];
  v22 = sub_F9A0(a5, v20);
  __chkstk_darwin(v22);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  (*(v11 + 16))(v13, v30, a7);
  v26 = sub_23C40(v13, v31, v18, v33, v24, v29, a7, v15, v20, v32, v28, v21);
  sub_306C(a5);
  sub_306C(a3);
  return v26;
}

uint64_t sub_24230(uint64_t a1)
{
  sub_20410(&qword_34C6C8, &qword_2D0718);

  return sub_21F40(a1);
}

uint64_t sub_243B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = v2;

  sub_285E94(sub_24BD4, v5);
}

uint64_t sub_24450(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v23 = a3;
  v6 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  v15 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v15);
  v17 = (&v22 - v16);
  sub_F3F4(a1, &v22 - v16, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24[0] = *v17;
    v25 = 1;
    swift_errorRetain();
    v22(v24);

    return sub_30B8(v24, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    sub_24BE0(v17, v14);
    sub_35E0((a4 + 24), *(a4 + 48));
    sub_F3F4(v14, v12, &qword_34C6E8, &unk_2D0FF0);
    v19 = *&v12[*(v9 + 48)];
    v20 = sub_2CA000();
    (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
    sub_1C077C(v12, v19, v8, _swiftEmptyArrayStorage, v22, v23);

    sub_30B8(v8, &unk_353020, &unk_2D0970);
    sub_30B8(v14, &qword_34C6E8, &unk_2D0FF0);
    v21 = sub_2CA130();
    return (*(*(v21 - 8) + 8))(v12, v21);
  }
}

void *sub_24740()
{

  sub_306C((v0 + 24));

  return v0;
}

uint64_t sub_24778()
{
  sub_24740();

  return swift_deallocClassInstance();
}

uint64_t sub_247E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ContinueInAppPunchOutStrategy(0, *(a6 + 80), *(a6 + 88), a4);

  return ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:completion:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_24864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v15 = type metadata accessor for ContinueInAppPunchOutStrategy(0, *(a5 + 80), *(a5 + 88), v14);
  *v13 = v6;
  v13[1] = sub_24C84;

  return ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v15, a6);
}

uint64_t sub_24954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_E664;

  return UnlockDeviceFlowStrategy.makePromptForDeviceUnlock()(a1, a2, a3);
}

uint64_t sub_24A78(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  sub_24B88();
  v4 = sub_2CEA90();
  sub_20410(&unk_351900, &unk_2D0960);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2D0770;
  *(v5 + 32) = v4;
  v8[3] = sub_2CA910();
  v8[4] = &protocol witness table for AceOutput;
  sub_F390(v8);
  v6 = v4;
  sub_2CA900();
  v9 = 0;
  a3(v8);

  return sub_30B8(v8, qword_34C798, &qword_2D0DA0);
}

unint64_t sub_24B88()
{
  result = qword_34C790;
  if (!qword_34C790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_34C790);
  }

  return result;
}

uint64_t sub_24BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v8 = v7;
  v40 = a4;
  v41 = a6;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  v39 = v14;
  v19 = v17;
  v20 = sub_2CDFE0();
  v21 = sub_2CE670();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v38 = v8;
    v23 = v22;
    v24 = swift_slowAlloc();
    v37 = a7;
    v25 = v24;
    v42 = v24;
    *v23 = 136446210;
    v26 = sub_2CCCA0();
    v36 = a3;
    v28 = sub_3F08(v26, v27, &v42);
    v35 = v19;
    v29 = a1;
    v30 = a2;
    v31 = a5;
    v32 = v28;
    a3 = v36;

    *(v23 + 4) = v32;
    a5 = v31;
    a2 = v30;
    a1 = v29;
    _os_log_impl(&dword_0, v20, v21, "CommonMediaConfirmationSnippetProvider#confirmationSnippetProvider... %{public}s", v23, 0xCu);
    sub_306C(v25);
    a7 = v37;

    (*(v15 + 8))(v35, v39);
  }

  else
  {

    (*(v15 + 8))(v19, v39);
  }

  return sub_24F68(a1, a2, a3, v40, a5, v41, a7);
}

uint64_t sub_24F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v74 = a7;
  v73 = a6;
  v62 = a5;
  v61 = a4;
  v60 = a3;
  v59 = a2;
  v58 = a1;
  v7 = sub_20410(&unk_3530C0, &unk_2D0A40);
  __chkstk_darwin(v7 - 8);
  v68 = &v57 - v8;
  v71 = sub_2C8EC0();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v75 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v57 - v15;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  v18 = *(v12 + 16);
  v66 = v17;
  v64 = v12 + 16;
  v63 = v18;
  v18(v16, v17, v11);
  v19 = sub_2CDFE0();
  v20 = sub_2CE670();
  v21 = os_log_type_enabled(v19, v20);
  v72 = v11;
  v67 = v12;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v83 = v23;
    *v22 = 136446210;
    v24 = sub_2CCCA0();
    v26 = sub_3F08(v24, v25, v83);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_0, v19, v20, "CommonMediaConfirmationSnippetProvider#confirmationSnippet... %{public}s", v22, 0xCu);
    sub_306C(v23);
  }

  v65 = *(v12 + 8);
  v65(v16, v11);
  v27 = v76;
  sub_35E0((v76 + 16), *(v76 + 40));
  type metadata accessor for PlayMediaAlternativesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = objc_opt_self();
  v30 = [v29 bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v57 = sub_2CC620();
  v69 = v31;

  v32 = *(v70 + 8);
  v33 = v71;
  v32(v10, v71);
  sub_35E0((v27 + 16), *(v27 + 40));
  v34 = [v29 bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v35 = sub_2CC620();
  v37 = v36;

  v32(v10, v33);
  v83[0] = 0;
  *&v83[1] = v78;
  v84 = v79;
  *v85 = *v80;
  *&v85[15] = *&v80[15];
  v86 = 2;
  v38 = sub_234C04();
  v39 = v72;
  if (v38)
  {
    v40 = v38;
    v81 = 1;
    v82 = 2;
    v41 = sub_234C04();
    if (v41)
    {
      v42 = v41;
      v43 = swift_allocObject();
      v43[2] = v73;
      v44 = v57;
      v43[3] = v74;
      v43[4] = v44;
      v43[5] = v69;
      v43[6] = v35;
      v43[7] = v37;
      v43[8] = v40;
      v43[9] = v42;

      v45 = v40;
      v46 = v42;
      sub_26084(v58, v59, v60, v61, v62, sub_26804, v43);
    }
  }

  v63(v75, v66, v39);
  v48 = sub_2CDFE0();
  v49 = sub_2CE690();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v77 = v51;
    *v50 = 136446210;
    v52 = sub_2CCCA0();
    v54 = sub_3F08(v52, v53, &v77);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_0, v48, v49, "ConfirmationViewProvider#confirmationSnippet could not create commands for the confirmation snippet. returning empty snippet. %{public}s", v50, 0xCu);
    sub_306C(v51);
  }

  v65(v75, v39);
  v55 = sub_2CD230();
  v56 = v68;
  (*(*(v55 - 8) + 56))(v68, 1, 1, v55);
  v73(v56);
  return sub_30B8(v56, &unk_3530C0, &unk_2D0A40);
}

uint64_t sub_25754(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, char *a6, void (*a7)(char *, char *, uint64_t), void *a8, void *a9)
{
  v76 = a8;
  v77 = a4;
  v79 = a6;
  v80 = a7;
  v78 = a5;
  v85 = a3;
  v86 = a2;
  v10 = sub_20410(&unk_3530C0, &unk_2D0A40);
  __chkstk_darwin(v10 - 8);
  v84 = &v74 - v11;
  v87 = sub_2CE000();
  v12 = *(v87 - 8);
  v13 = __chkstk_darwin(v87);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v74 - v16;
  v83 = sub_2CD300();
  v81 = *(v83 - 8);
  v18 = __chkstk_darwin(v83);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v74 - v22;
  __chkstk_darwin(v21);
  v82 = &v74 - v24;
  v25 = sub_20410(&qword_34C820, &unk_2D0A30);
  __chkstk_darwin(v25 - 8);
  v27 = &v74 - v26;
  sub_F3F4(a1, &v74 - v26, &qword_34C820, &unk_2D0A30);
  v28 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
  {
    sub_30B8(v27, &qword_34C820, &unk_2D0A30);
LABEL_16:
    v63 = v86;
    v62 = v87;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v64 = sub_3ED0(v62, static Logger.default);
    swift_beginAccess();
    (*(v12 + 16))(v15, v64, v62);
    v65 = sub_2CDFE0();
    v66 = sub_2CE680();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v88 = v68;
      *v67 = 136446210;
      v69 = sub_2CCCA0();
      v71 = sub_3F08(v69, v70, &v88);

      *(v67 + 4) = v71;
      _os_log_impl(&dword_0, v65, v66, "CommonMediaConfirmationSnippetProvider#confirmationSnippet error generating dialog. returning empty snippet %{public}s", v67, 0xCu);
      sub_306C(v68);
    }

    (*(v12 + 8))(v15, v62);
    v72 = v84;
    v73 = sub_2CD230();
    (*(*(v73 - 8) + 56))(v72, 1, 1, v73);
    v63(v72);
    return sub_30B8(v72, &unk_3530C0, &unk_2D0A40);
  }

  v29 = *&v27[*(v28 + 48)];
  v30 = sub_2CA130();
  (*(*(v30 - 8) + 8))(v27, v30);
  v31 = [v29 dialog];
  sub_13AE0();
  v32 = sub_2CE410();

  if (v32 >> 62)
  {
    result = sub_2CEDA0();
    if (result)
    {
      goto LABEL_5;
    }

LABEL_15:

    goto LABEL_16;
  }

  result = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_5:
  if ((v32 & 0xC000000000000001) != 0)
  {
    v35 = sub_2CECD0();
    v34 = v17;
  }

  else
  {
    if (!*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v34 = v17;
    v35 = *(v32 + 32);
  }

  v75 = v29;

  v36 = a9;
  v37 = v76;
  v38 = v82;
  sub_2CD2F0();
  v39 = v81;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v40 = v87;
  v41 = sub_3ED0(v87, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v34, v41, v40);
  v42 = v83;
  v80 = *(v39 + 16);
  v80(v23, v38, v83);
  v43 = v34;
  v44 = sub_2CDFE0();
  v45 = sub_2CE690();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v88 = v78;
    *v46 = 136315394;
    v80(v20, v23, v83);
    v47 = sub_2CE2A0();
    v79 = v43;
    v49 = v48;
    v50 = *(v39 + 8);
    v50(v23, v83);
    v51 = sub_3F08(v47, v49, &v88);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2082;
    v52 = sub_2CCCA0();
    v54 = sub_3F08(v52, v53, &v88);

    *(v46 + 14) = v54;
    v55 = v45;
    v56 = v50;
    _os_log_impl(&dword_0, v44, v55, "CommonMediaConfirmationSnippetProvider#confirmationSnippet created RF 2.0 Snippet: %s. %{public}s", v46, 0x16u);
    swift_arrayDestroy();

    v42 = v83;

    (*(v12 + 8))(v79, v87);
  }

  else
  {

    v56 = *(v39 + 8);
    v56(v23, v42);
    (*(v12 + 8))(v43, v40);
  }

  v57 = v84;
  v58 = v82;
  v80(v84, v82, v42);
  v59 = enum case for SiriAudioSnippets.confirmation(_:);
  v60 = sub_2CD230();
  v61 = *(v60 - 8);
  (*(v61 + 104))(v57, v59, v60);
  (*(v61 + 56))(v57, 0, 1, v60);
  v86(v57);

  sub_30B8(v57, &unk_3530C0, &unk_2D0A40);
  return (v56)(v58, v42);
}

uint64_t sub_26084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 56);
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  *(v16 + 24) = a7;
  v17 = *(*v15 + 208);

  v17(a1, a4, a5, a3, a2, sub_267FC, v16);
}

uint64_t sub_26168(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v4 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v6 = &v43 - v5;
  v7 = sub_20410(&qword_34C820, &unk_2D0A30);
  __chkstk_darwin(v7 - 8);
  v44 = &v43 - v8;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v16);
  v18 = &v43 - v17;
  sub_F3F4(a1, &v43 - v17, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v19 = sub_3ED0(v9, static Logger.default);
    swift_beginAccess();
    (*(v10 + 16))(v15, v19, v9);
    swift_errorRetain();
    v20 = sub_2CDFE0();
    v21 = sub_2CE680();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v22 = 136315394;
      swift_getErrorValue();
      v23 = sub_2CEEF0();
      v25 = sub_3F08(v23, v24, &v49);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2082;
      v26 = sub_2CCCA0();
      v28 = sub_3F08(v26, v27, &v49);

      *(v22 + 14) = v28;
      _os_log_impl(&dword_0, v20, v21, "CommonMediaConfirmationSnippetProvider#promptForConfirmationDialog Error creating the confirmation prompt dialog: %s. %{public}s", v22, 0x16u);
      swift_arrayDestroy();
    }

    (*(v10 + 8))(v15, v9);
    v29 = v44;
    (*(v45 + 56))(v44, 1, 1, v46);
    v48(v29);

    v30 = &qword_34C820;
    v31 = &unk_2D0A30;
    v32 = v29;
  }

  else
  {
    sub_24BE0(v18, v6);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v33 = sub_3ED0(v9, static Logger.default);
    swift_beginAccess();
    (*(v10 + 16))(v13, v33, v9);
    v34 = sub_2CDFE0();
    v35 = sub_2CE680();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49 = v37;
      *v36 = 136446210;
      v38 = sub_2CCCA0();
      v40 = sub_3F08(v38, v39, &v49);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_0, v34, v35, "CommonMediaConfirmationSnippetProvider#promptForConfirmationDialog confirmation dialog created. %{public}s", v36, 0xCu);
      sub_306C(v37);
    }

    (*(v10 + 8))(v13, v9);
    v41 = v44;
    sub_F3F4(v6, v44, &qword_34C6E8, &unk_2D0FF0);
    (*(v45 + 56))(v41, 0, 1, v46);
    v48(v41);
    sub_30B8(v41, &qword_34C820, &unk_2D0A30);
    v32 = v6;
    v30 = &qword_34C6E8;
    v31 = &unk_2D0FF0;
  }

  return sub_30B8(v32, v30, v31);
}

uint64_t sub_2677C()
{
  sub_306C((v0 + 16));

  return v0;
}

uint64_t sub_267A4()
{
  sub_306C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_26838()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  sub_EEAC(v0 + 40, v11);
  v9 = sub_2CC2B0();
  v10 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v8);

  sub_2CC2A0();
  v6 = sub_2CC360();
  v7 = &protocol witness table for StringsFileResolver;
  sub_F390(&v5);
  sub_2CC350();
  sub_20410(&qword_34C8F8, &unk_2D0AA0);
  v3 = swift_allocObject();
  *(v3 + 112) = &off_32F1F0;
  strcpy((v3 + 160), "MediaItemType");
  *(v3 + 174) = -4864;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_F338(v11, v3 + 32);
  sub_F338(&v8, v3 + 72);
  sub_F338(&v5, v3 + 120);
  return v3;
}

uint64_t sub_26950()
{

  sub_306C((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_269C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_112C0(_swiftEmptyArrayStorage);
  v12[3] = sub_27B44();
  v12[4] = &off_3344D0;
  v12[0] = a2;
  v10 = a2;
  sub_1E6614(v9, a1, v12, a4, a5);

  return sub_30B8(v12, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_26A74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x6574656D61726170;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE900000000000072;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  v13 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v16[3] = sub_27B44();
  v16[4] = &off_3344D0;
  v16[0] = a4;
  v14 = a4;
  sub_1E731C(v13, a1, v16, a5, a6);

  return sub_30B8(v16, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_26BBC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, char *a8, char *a9)
{
  v105 = a8;
  v101 = a3;
  v100 = a2;
  v12 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v12 - 8);
  v99 = &v86 - v13;
  v14 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v14 - 8);
  v98 = &v86 - v15;
  v16 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v16 - 8);
  v96 = &v86 - v17;
  v95 = sub_2CCB30();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_2CCAC0();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2CE000();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [a4 unsupportedReason];
  v107 = v24;
  v108 = 0;
  sub_20410(&qword_34CB90, &unk_2D0B40);
  v89 = sub_2CE2A0();
  v26 = v25;
  v102 = a5;
  INUpdateMediaAffinityIntent.firstMediaItemType()();
  v27 = INMediaItemTypeGetName();
  if (v27)
  {
    v28 = v27;
    v87 = sub_2CE270();
    v30 = v29;
  }

  else
  {
    v87 = 0;
    v30 = 0xE000000000000000;
  }

  v103 = a1;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v88 = v24;
  v104 = a9;
  v31 = sub_3ED0(v20, static Logger.default);
  swift_beginAccess();
  (*(v21 + 16))(v23, v31, v20);

  v32 = sub_2CDFE0();
  v33 = sub_2CE690();

  v34 = os_log_type_enabled(v32, v33);
  v97 = v30;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v86 = a4;
    v107 = v36;
    *v35 = 136315394;
    v37 = sub_3F08(v89, v26, &v107);

    *(v35 + 4) = v37;
    *(v35 + 12) = 2080;

    v38 = sub_3F08(v87, v30, &v107);

    *(v35 + 14) = v38;
    _os_log_impl(&dword_0, v32, v33, "SearchForMediaDialogProvider#makeUnsupportedDialog, reason: %s, mediaType: %s", v35, 0x16u);
    swift_arrayDestroy();
    a4 = v86;
  }

  else
  {
  }

  (*(v21 + 8))(v23, v20);
  v39 = v91;
  v40 = v90;
  v41 = v93;
  (*(v91 + 104))(v90, enum case for AdditionalMetricsDescription.ModuleName.sfmdp(_:), v93);
  v42 = v94;
  v43 = v92;
  v44 = v95;
  (*(v94 + 104))(v92, enum case for AdditionalMetricsDescription.SourceFunction.unsupportedDialog(_:), v95);
  v107 = [a4 unsupportedReason];
  sub_2CEE70();
  [a4 resolutionResultCode];
  v89 = sub_2CCAE0();

  (*(v42 + 8))(v43, v44);
  (*(v39 + 8))(v40, v41);
  sub_35E0((v106 + 168), *(v106 + 192));
  v45 = enum case for ActivityType.failed(_:);
  v46 = sub_2C9C20();
  v47 = *(v46 - 8);
  v48 = v96;
  (*(v47 + 104))(v96, v45, v46);
  (*(v47 + 56))(v48, 0, 1, v46);
  v49 = sub_2CA130();
  v50 = v98;
  (*(*(v49 - 8) + 56))(v98, 1, 1, v49);
  v51 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
  v52 = sub_2C98F0();
  v53 = *(v52 - 8);
  v54 = v99;
  (*(v53 + 104))(v99, v51, v52);
  (*(v53 + 56))(v54, 0, 1, v52);
  v55 = v103;
  v56 = v102;
  sub_2CB4E0();

  sub_30B8(v54, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v50, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v48, &qword_34CB88, &unk_2D0D90);
  sub_112C0(_swiftEmptyArrayStorage);

  if ((v100 != 0x657449616964656DLL || v101 != 0xEA0000000000736DLL) && (sub_2CEEA0() & 1) == 0)
  {

    v62 = sub_112C0(_swiftEmptyArrayStorage);
    v109 = sub_27B44();
    v110 = &off_3344D0;
    v107 = v56;
    v63 = v56;
    sub_1E8D2C(v62, v55, &v107, v105, v104);
    goto LABEL_30;
  }

  v57 = v88;
  if (v88 > 4)
  {
    if (v88 <= 6)
    {
      if (v88 == 5)
      {

        v70 = sub_112C0(_swiftEmptyArrayStorage);
        v109 = sub_27B44();
        v110 = &off_3344D0;
        v107 = v56;
        v71 = v56;
        sub_33504(v70, v55, &v107, v105, v104);
      }

      else
      {

        v60 = sub_112C0(_swiftEmptyArrayStorage);
        v109 = sub_27B44();
        v110 = &off_3344D0;
        v107 = v56;
        v61 = v56;
        sub_1E8024(v60, v55, &v107, v105, v104);
      }

      goto LABEL_30;
    }

    if (v88 == 7)
    {

      v77 = sub_112C0(_swiftEmptyArrayStorage);
      v109 = sub_27B44();
      v110 = &off_3344D0;
      v107 = v56;
      v78 = v56;
      sub_39CA0(v77, v55, &v107, v105, v104);
      goto LABEL_30;
    }

    if (v88 == 8)
    {

      v66 = sub_112C0(_swiftEmptyArrayStorage);
      v109 = sub_27B44();
      v110 = &off_3344D0;
      v107 = v56;
      v67 = v56;
      sub_3C470(v66, v55, &v107, v105, v104);
      goto LABEL_30;
    }
  }

  else
  {
    if (v88 > 2)
    {
      if (v88 == 3)
      {
        v72 = v97;
        sub_20410(&unk_353120, &unk_2D0B50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2D0090;
        *(inited + 32) = 0x707954616964656DLL;
        v74 = inited + 32;
        *(inited + 72) = &type metadata for String;
        *(inited + 40) = 0xE900000000000065;
        *(inited + 48) = v87;
        *(inited + 56) = v72;
        v75 = sub_112C0(inited);
        swift_setDeallocating();
        sub_30B8(v74, &qword_34CBA0, &unk_2D0FE0);
        v109 = sub_27B44();
        v110 = &off_3344D0;
        v107 = v56;
        v76 = v56;
        sub_1E86A8(v75, v55, &v107, v105, v104);
      }

      else
      {

        v64 = sub_112C0(_swiftEmptyArrayStorage);
        v109 = sub_27B44();
        v110 = &off_3344D0;
        v107 = v56;
        v65 = v56;
        sub_38950(v64, v55, &v107, v105, v104);
      }

      goto LABEL_30;
    }

    if (v88 == 1)
    {

      v68 = sub_112C0(_swiftEmptyArrayStorage);
      v109 = sub_27B44();
      v110 = &off_3344D0;
      v107 = v56;
      v69 = v56;
      sub_38FC0(v68, v55, &v107, v105, v104);
      goto LABEL_30;
    }

    if (v88 == 2)
    {

      v58 = sub_112C0(_swiftEmptyArrayStorage);
      v109 = sub_27B44();
      v110 = &off_3344D0;
      v107 = v56;
      v59 = v56;
      sub_39630(v58, v55, &v107, v105, v104);
LABEL_30:

      return sub_30B8(&v107, &qword_34C6C0, &qword_2D0710);
    }
  }

  if (_INSearchForMediaMediaItemUnsupportedReasonAppNotAvailable == v57)
  {
    v80 = sub_112C0(_swiftEmptyArrayStorage);
    sub_3A980(v80, v55, v105, v104);
  }

  else if (_INSearchForMediaMediaItemUnsupportedReasonAppNotConfigured == v57)
  {
    v81 = sub_112C0(_swiftEmptyArrayStorage);
    sub_3B03C(v81, v55, v105, v104);
  }

  else
  {
    if (_INSearchForMediaMediaItemUnsupportedReasonAppAccountFailure != v57)
    {
      v83 = _INSearchForMediaMediaItemUnsupportedReasonAppDoesntSupportIntent;
      v84 = sub_112C0(_swiftEmptyArrayStorage);
      v109 = sub_27B44();
      v110 = &off_3344D0;
      v107 = v56;
      v85 = v56;
      if (v83 == v57)
      {
        sub_3A310(v84, v55, &v107, v105, v104);
      }

      else
      {
        sub_382E0(v84, v55, &v107, v105, v104);
      }

      goto LABEL_30;
    }

    v82 = sub_112C0(_swiftEmptyArrayStorage);
    sub_3B6F8(v82, v55, v105, v104);
  }
}

uint64_t sub_279E8()
{

  sub_306C((v0 + 128));

  return sub_306C((v0 + 168));
}

uint64_t sub_27A20()
{

  sub_306C(v0 + 3);
  sub_306C(v0 + 8);

  sub_306C(v0 + 16);
  sub_306C(v0 + 21);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchForMediaDialogProvider(uint64_t a1)
{
  result = qword_34C928;
  if (!qword_34C928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_27B44()
{
  result = qword_34CB98;
  if (!qword_34CB98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_34CB98);
  }

  return result;
}

uint64_t sub_27B90()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2A0();
  sub_2CC290();
  (*(v1 + 8))(v3, v0);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  sub_285EC(&static StringsBackedAppNameResolver.shared, v11);
  sub_2CB4A0();
  v4 = sub_2CB490();

  sub_2C9A00();
  type metadata accessor for AddMediaFlowStrategy(0);
  v5 = swift_allocObject();
  sub_EEAC(v10, v9);
  sub_285EC(v11, v8);
  v6 = sub_280C4(v8, v4, v9, v5);

  sub_306C(v10);
  result = sub_28648(v11);
  qword_35F500 = v6;
  return result;
}

uint64_t sub_27D28()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2A0();
  sub_2CC290();
  (*(v1 + 8))(v3, v0);
  result = sub_21740C();
  qword_35F508 = result;
  return result;
}

uint64_t sub_27DF8()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2A0();
  sub_2CC290();
  (*(v1 + 8))(v3, v0);
  sub_2CD070();
  result = sub_2CD060();
  static AddMedia.intentHandler = result;
  return result;
}

uint64_t *AddMedia.intentHandler.unsafeMutableAddressor()
{
  if (qword_34BF30 != -1)
  {
    swift_once();
  }

  return &static AddMedia.intentHandler;
}

id static AddMedia.intentHandler.getter()
{
  if (qword_34BF30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static AddMedia.intentHandler;

  return v0;
}

void static AddMedia.intentHandler.setter(uint64_t a1)
{
  if (qword_34BF30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static AddMedia.intentHandler;
  static AddMedia.intentHandler = a1;
}

uint64_t (*static AddMedia.intentHandler.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_34BF30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void *sub_280C4(_OWORD *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_2CC2B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CB4A0();
  v52[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v30 = v12;
  v31 = a3;
  v52[3] = v12;
  v52[0] = a2;
  a4[2] = _swiftEmptyArrayStorage;
  a4[3] = 1307;
  a4[4] = 0;
  a4[5] = 0;
  sub_EEAC(a3, &v49);
  LODWORD(a3) = CATDefaultMode;
  v13 = sub_2CBC00();
  v14 = sub_2CBBF0();

  sub_2CC2A0();
  type metadata accessor for CatService();
  v15 = swift_allocObject();
  v47 = &type metadata for StringsBackedAppNameResolver;
  v48 = sub_2869C();
  v16 = swift_allocObject();
  *&v46 = v16;
  v17 = a1[3];
  v16[3] = a1[2];
  v16[4] = v17;
  v16[5] = a1[4];
  v18 = a1[1];
  v16[1] = *a1;
  v16[2] = v18;
  v45[3] = v13;
  v45[4] = &protocol witness table for MorphunProvider;
  v45[0] = v14;
  v44[3] = v8;
  v44[4] = &protocol witness table for FeatureFlagProvider;
  v19 = sub_F390(v44);
  (*(v9 + 16))(v19, v11, v8);
  *(v15 + 296) = a3;
  sub_EEAC(v44, v15 + 256);
  sub_EEAC(&v46, v43);
  sub_EEAC(v45, v42);
  sub_EEAC(&v49, v41);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v20 = sub_2CCA30();
  v21 = sub_2CCA20();
  v38[3] = v20;
  v38[4] = &protocol witness table for MultiUserConnectionProvider;
  v38[0] = v21;
  v37[3] = sub_2CB9E0();
  v37[4] = &protocol witness table for DeviceProvider;
  sub_F390(v37);
  sub_2CB9C0();
  sub_EEAC(v43, v15 + 16);
  sub_EEAC(v42, v15 + 216);
  sub_EEAC(v41, v15 + 56);
  sub_EEAC(v38, v15 + 96);
  sub_EEAC(v37, v15 + 176);
  sub_286F0(v39, &v32);
  if (v33)
  {

    sub_28760(v39);
    sub_306C(v41);
    sub_306C(v42);
    sub_306C(v43);
    (*(v9 + 8))(v11, v8);
    sub_306C(&v49);
    sub_306C(v44);
    sub_306C(v45);
    sub_306C(&v46);
    sub_306C(v37);
    sub_306C(v38);
    sub_F338(&v32, &v34);
  }

  else
  {
    sub_EEAC(v41, &v34);
    v22 = sub_2C9E60();
    swift_allocObject();
    v23 = sub_2C9E50();
    v35 = v22;
    v36 = &protocol witness table for ContactsManager;

    *&v34 = v23;
    sub_28760(v39);
    sub_306C(v41);
    sub_306C(v42);
    sub_306C(v43);
    (*(v9 + 8))(v11, v8);
    sub_306C(&v49);
    sub_306C(v44);
    sub_306C(v45);
    sub_306C(&v46);
    sub_306C(v37);
    sub_306C(v38);
    if (v33)
    {
      sub_28760(&v32);
    }
  }

  sub_F338(&v34, v15 + 136);
  a4[6] = v15;
  v50 = sub_2CC360();
  v51 = &protocol witness table for StringsFileResolver;
  sub_F390(&v49);

  sub_2CC350();
  v24 = v30;
  v25 = sub_2CB490();
  v47 = v24;
  v48 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v46 = v25;
  sub_20410(qword_34CBD8, &unk_2D0BB0);
  v26 = swift_allocObject();
  v26[13] = 0xD000000000000011;
  v26[14] = 0x80000000002DA8D0;
  v26[2] = v15;
  sub_F338(&v49, (v26 + 3));
  sub_F338(&v46, (v26 + 8));
  a4[7] = v26;
  sub_EEAC(v52, (a4 + 8));
  v50 = v8;
  v51 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v49);
  sub_2CC2A0();
  v27 = type metadata accessor for SiriAudioOutputProvider();
  v28 = swift_allocObject();
  sub_F338(&v49, v28 + 16);
  v50 = v27;
  v51 = &off_337EB0;
  *&v49 = v28;
  sub_306C(v31);
  sub_306C(v52);
  sub_F338(&v49, (a4 + 13));
  return a4;
}

unint64_t sub_2869C()
{
  result = qword_34CBD0;
  if (!qword_34CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CBD0);
  }

  return result;
}

uint64_t sub_286F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(qword_34C708, &qword_2D1620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_28760(uint64_t a1)
{
  v2 = sub_20410(qword_34C708, &qword_2D1620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_28838@<X0>(void *a1@<X6>, uint64_t a2@<X8>)
{
  v125 = a2;
  v108 = sub_2CA810();
  v107 = *(v108 - 8);
  v3 = __chkstk_darwin(v108);
  v101 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v99 - v6;
  __chkstk_darwin(v5);
  v110 = &v99 - v8;
  v9 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  __chkstk_darwin(v9 - 8);
  v122 = (&v99 - v10);
  v11 = sub_2CD490();
  v112 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v102 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v109 = &v99 - v15;
  __chkstk_darwin(v14);
  v111 = &v99 - v16;
  v120 = sub_2CA870();
  v119 = *(v120 - 8);
  v17 = __chkstk_darwin(v120);
  v113 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v124 = &v99 - v19;
  v20 = sub_2CA7B0();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CE000();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v103 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v123 = &v99 - v29;
  v30 = __chkstk_darwin(v28);
  v106 = &v99 - v31;
  v32 = __chkstk_darwin(v30);
  v105 = &v99 - v33;
  __chkstk_darwin(v32);
  v35 = &v99 - v34;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v104 = v7;
  v36 = sub_3ED0(v24, static Logger.default);
  swift_beginAccess();
  v37 = *(v25 + 16);
  v116 = v36;
  v115 = v25 + 16;
  v114 = v37;
  v37(v35, v36, v24);
  v38 = *(v21 + 16);
  v121 = a1;
  v38(v23, a1, v20);
  v39 = v23;
  v40 = sub_2CDFE0();
  v41 = sub_2CE690();
  v42 = os_log_type_enabled(v40, v41);
  v118 = v11;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v130[0] = v100;
    *v43 = 136315138;
    sub_33458(&qword_34CD00, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v44 = sub_2CEE70();
    v45 = v25;
    v46 = v44;
    v117 = v45;
    v48 = v47;
    (*(v21 + 8))(v39, v20);
    v49 = sub_3F08(v46, v48, v130);
    v25 = v117;

    *(v43 + 4) = v49;
    _os_log_impl(&dword_0, v40, v41, "MediaDestinationDisambiguationStrategy#actionForInput input:%s", v43, 0xCu);
    sub_306C(v100);
  }

  else
  {

    (*(v21 + 8))(v39, v20);
  }

  v50 = *(v25 + 8);
  v50(v35, v24);
  v51 = v123;
  v52 = v124;
  sub_2CA790();
  v53 = v119;
  v54 = v120;
  v55 = (*(v119 + 88))(v52, v120);
  v56 = v122;
  if (v55 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v53 + 96))(v52, v54);
    sub_20410(&qword_353070, &unk_2D0FB0);

    v57 = sub_2CAFE0();
    (*(*(v57 - 8) + 8))(v52, v57);
  }

  else
  {
    if (v55 == enum case for Parse.directInvocation(_:))
    {
      (*(v53 + 96))(v52, v54);
      v62 = v107;
      v63 = v52;
      v64 = v110;
      v65 = v108;
      (*(v107 + 32))(v110, v63, v108);
      sub_238E4C(v64, v130);
      if (v131 == 3)
      {
        sub_30B8(v130, &qword_34CCB0, &qword_2D5710);
        (*(v62 + 8))(v64, v65);
        return sub_2C9CE0();
      }

      v117 = v25;
      if (v131 != 255)
      {
        sub_30B8(v130, &qword_34CCB0, &qword_2D5710);
      }

      v122 = v50;
      v114(v51, v116, v24);
      v66 = *(v62 + 16);
      v67 = v104;
      v66(v104, v64, v65);
      v68 = sub_2CDFE0();
      v69 = sub_2CE680();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v124 = v24;
        v121 = v71;
        *&v128 = v71;
        *v70 = 136315138;
        v66(v101, v67, v65);
        v72 = sub_2CE2A0();
        v74 = v73;
        v75 = *(v62 + 8);
        v75(v67, v65);
        v76 = sub_3F08(v72, v74, &v128);

        *(v70 + 4) = v76;
        _os_log_impl(&dword_0, v68, v69, "MediaDestinationDisambiguationStrategy#actionForInput received unsupported directInvocation: %s", v70, 0xCu);
        sub_306C(v121);

        v77 = v123;
        v78 = v124;
      }

      else
      {

        v75 = *(v62 + 8);
        v75(v67, v65);
        v77 = v51;
        v78 = v24;
      }

      v122(v77, v78);
      sub_2C9CF0();
      return (v75)(v110, v65);
    }

    if (v55 != enum case for Parse.pommesResponse(_:))
    {
      v86 = v103;
      v114(v103, v116, v24);
      v87 = sub_2CDFE0();
      v88 = sub_2CE680();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_0, v87, v88, "MediaDestinationDisambiguationStrategy#actionForInput Ignorning unsupported parse", v89, 2u);
      }

      v50(v86, v24);
      sub_2C9CF0();
      return (*(v53 + 8))(v124, v54);
    }

    (*(v53 + 8))(v52, v54);
  }

  v58 = v113;
  sub_2CA790();
  v59 = sub_D1D64(v58, &v128);
  (*(v53 + 8))(v58, v54, v59);
  if (v129)
  {
    sub_F338(&v128, v130);
    sub_35E0(v130, v130[3]);
    sub_2CD480();
    v60 = v112;
    v61 = v118;
    if ((*(v112 + 48))(v56, 1, v118) == 1)
    {
      sub_30B8(v56, &qword_34CCE8, &unk_2D0E20);
LABEL_11:
      sub_306C(v130);
      return sub_2C9CE0();
    }

    v117 = v25;
    v124 = v24;
    (*(v60 + 32))(v111, v56, v61);
    v84 = *(v60 + 104);
    v84(v109, enum case for CommonAudio.Confirmation.cancel(_:), v61);
    sub_33458(&qword_34CCF8, &type metadata accessor for CommonAudio.Confirmation, &protocol conformance descriptor for CommonAudio.Confirmation);
    sub_2CE3E0();
    sub_2CE3E0();
    if (v128 == v126 && *(&v128 + 1) == v127)
    {
      v85 = 1;
    }

    else
    {
      v85 = sub_2CEEA0();
    }

    v90 = *(v112 + 8);
    v91 = v118;
    v90(v109, v118);

    if ((v85 & 1) == 0)
    {
      v92 = v102;
      v84(v102, enum case for CommonAudio.Confirmation.no(_:), v91);
      sub_2CE3E0();
      sub_2CE3E0();
      if (v128 == v126 && *(&v128 + 1) == v127)
      {
        v90(v92, v91);
      }

      else
      {
        v93 = sub_2CEEA0();
        v90(v92, v91);

        if ((v93 & 1) == 0)
        {
          v90(v111, v91);
          goto LABEL_11;
        }
      }
    }

    v94 = v105;
    v95 = v124;
    v114(v105, v116, v124);
    v96 = sub_2CDFE0();
    v97 = sub_2CE690();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_0, v96, v97, "MediaDestinationDisambiguationStrategy#actionForInput cancelled", v98, 2u);
    }

    v50(v94, v95);
    sub_2C9CD0();
    v90(v111, v118);
    return sub_306C(v130);
  }

  else
  {
    sub_30B8(&v128, &qword_34CCF0, &unk_2D1270);
    v79 = v106;
    v114(v106, v116, v24);
    v80 = sub_2CDFE0();
    v81 = sub_2CE690();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_0, v80, v81, "MediaDestinationDisambiguationStrategy#actionForInput received invalid intent", v82, 2u);
    }

    v50(v79, v24);
    return sub_2C9CF0();
  }
}

void *sub_298B0(uint64_t a1)
{
  v2 = sub_20410(&qword_34CC98, &unk_2D3120);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_2CE0A0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v23 = &v21 - v10;
  v11 = *(a1 + 16);
  v25 = _swiftEmptyArrayStorage;
  sub_2DB98(0, v11, 0);
  v12 = v25;
  if (v11)
  {
    v13 = a1 + 32;
    v21 = v4;
    v22 = (v6 + 56);
    v14 = (v6 + 32);
    while (1)
    {
      sub_E2FC(v13, v24);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v22)(v4, 0, 1, v5);
      v15 = *v14;
      v16 = v23;
      (*v14)(v23, v4, v5);
      v15(v9, v16, v5);
      v25 = v12;
      v17 = v9;
      v19 = v12[2];
      v18 = v12[3];
      if (v19 >= v18 >> 1)
      {
        sub_2DB98((v18 > 1), v19 + 1, 1);
        v12 = v25;
      }

      v12[2] = v19 + 1;
      v15(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, v17, v5);
      v13 += 32;
      --v11;
      v9 = v17;
      v4 = v21;
      if (!v11)
      {
        return v12;
      }
    }

    (*v22)(v4, 1, 1, v5);
    sub_30B8(v4, &qword_34CC98, &unk_2D3120);
    return 0;
  }

  return v12;
}

void *sub_29B74(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_2CED20();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_E2FC(i, v5);
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_2CED00();
    sub_2CED30();
    sub_2CED40();
    sub_2CED10();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_29C80(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = sub_20410(&qword_34CC98, &unk_2D3120);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = sub_20410(&qword_34CCA0, &unk_2D0DD0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  sub_F3F4(a1, &v30 - v11, &qword_34CCA0, &unk_2D0DD0);
  v13 = *(v10 + 56);
  v14 = sub_2CE060();
  v31 = v15;
  v16 = sub_2CE0A0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 8);
  v18(&v12[v13], v16);
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v14;
    v21 = [v19 mediaDestination];
    if (v21)
    {
      v22 = v21;
      sub_2CE090();

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    (*(v17 + 56))(v6, v23, 1, v16);
    sub_14A58(v6, v8, &qword_34CC98, &unk_2D3120);
    if ((*(v17 + 48))(v8, 1, v16) != 1)
    {
      v25 = sub_2CE060();
      v27 = v26;
      v18(v8, v16);
      if (v31)
      {
        if (v27)
        {
          if (v20 == v25 && v31 == v27)
          {

            v24 = 1;
          }

          else
          {
            v24 = sub_2CEEA0();
          }

          goto LABEL_9;
        }

        goto LABEL_8;
      }

      if (v27)
      {
        v24 = 0;
        goto LABEL_9;
      }

LABEL_19:
      v24 = 1;
      return v24 & 1;
    }
  }

  else
  {
    (*(v17 + 56))(v8, 1, 1, v16);
  }

  sub_30B8(v8, &qword_34CC98, &unk_2D3120);
  if (!v31)
  {
    goto LABEL_19;
  }

LABEL_8:
  v24 = 0;
LABEL_9:

  return v24 & 1;
}

uint64_t sub_29FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void (*a8)(void *), uint64_t a9)
{
  v97 = a7;
  v98 = a6;
  v92 = a3;
  v93 = a4;
  v91 = a2;
  v88 = a1;
  v95 = a8;
  v96 = a9;
  v94 = a5;
  v75 = *a5;
  v82 = sub_2C8EC0();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v77 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&unk_353020, &unk_2D0970);
  v85 = *(v10 - 8);
  v11 = __chkstk_darwin(v10 - 8);
  v87 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v12;
  __chkstk_darwin(v11);
  v90 = &v74 - v13;
  v14 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v78 = *(v14 - 8);
  v15 = __chkstk_darwin(v14 - 8);
  v84 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v16;
  __chkstk_darwin(v15);
  v89 = (&v74 - v17);
  v18 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v18 - 8);
  v83 = (&v74 - v19);
  v20 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v20 - 8);
  v79 = &v74 - v21;
  v22 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v22 - 8);
  v76 = &v74 - v23;
  v24 = sub_2CCB30();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2CCAC0();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v32);
  v34 = (&v74 - v33);
  sub_F3F4(v88, &v74 - v33, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = *v34;
    (*(v29 + 104))(v31, enum case for AdditionalMetricsDescription.ModuleName.mdds(_:), v28);
    (*(v25 + 104))(v27, enum case for AdditionalMetricsDescription.SourceFunction.pfDis(_:), v24);
    swift_getErrorValue();
    sub_2CEEF0();
    v93 = sub_2CCAF0();

    (*(v25 + 8))(v27, v24);
    (*(v29 + 8))(v31, v28);
    v94 = sub_35E0(v94 + 4, v94[7]);
    v36 = enum case for ActivityType.failed(_:);
    v37 = sub_2C9C20();
    v38 = *(v37 - 8);
    v39 = v76;
    (*(v38 + 104))(v76, v36, v37);
    (*(v38 + 56))(v39, 0, 1, v37);
    v40 = sub_2CA130();
    v41 = v79;
    (*(*(v40 - 8) + 56))(v79, 1, 1, v40);
    v42 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v43 = sub_2C98F0();
    v44 = *(v43 - 8);
    v45 = v83;
    (*(v44 + 104))(v83, v42, v43);
    (*(v44 + 56))(v45, 0, 1, v43);
    sub_2CB4E0();

    sub_30B8(v45, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v41, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v39, &qword_34CB88, &unk_2D0D90);
    v99[0] = v35;
    v100 = 1;
    swift_errorRetain();
    v95(v99);

    v46 = qword_34C798;
    v47 = &qword_2D0DA0;
    v48 = v99;
  }

  else
  {
    v49 = v89;
    sub_14A58(v34, v89, &qword_34C6E8, &unk_2D0FF0);
    sub_20410(&qword_34CC70, &qword_2D0D78);
    v50 = sub_2CA440();
    v52 = *(v75 + 80);
    v51 = *(v75 + 88);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v88 = AssociatedTypeWitness;
    v83 = swift_getAssociatedTypeWitness();
    v54 = v90;
    v55 = v98;
    sub_B2D88(v97, v50, v98, AssociatedTypeWitness, v83, v90);

    v56 = sub_2CA460();
    v57 = v77;
    sub_2CB570();
    sub_98D6C(v57, v56, 1);
    (*(v81 + 8))(v57, v82);
    sub_2AAB4(v56);

    sub_2C9960();
    swift_allocObject();
    v82 = sub_2C9950();
    v58 = v84;
    sub_F3F4(v49, v84, &qword_34C6E8, &unk_2D0FF0);
    v59 = v54;
    v60 = v87;
    sub_F3F4(v59, v87, &unk_353020, &unk_2D0970);
    v61 = (*(v78 + 80) + 96) & ~*(v78 + 80);
    v62 = (v80 + *(v85 + 80) + v61) & ~*(v85 + 80);
    v63 = swift_allocObject();
    v63[2] = v52;
    v63[3] = v51;
    v64 = v92;
    v63[4] = v91;
    v63[5] = v64;
    v65 = v93;
    v66 = v94;
    v63[6] = v93;
    v63[7] = v66;
    v63[8] = v55;
    v67 = v96;
    v68 = v97;
    v69 = v95;
    v63[9] = v97;
    v63[10] = v69;
    v63[11] = v67;
    sub_14A58(v58, v63 + v61, &qword_34C6E8, &unk_2D0FF0);
    sub_14A58(v60, v63 + v62, &unk_353020, &unk_2D0970);

    v70 = v65;

    v71 = v98;

    v72 = v68;

    sub_10CE1C(v71, v82, sub_332AC, v63);

    sub_30B8(v90, &unk_353020, &unk_2D0970);
    v48 = v89;
    v46 = &qword_34C6E8;
    v47 = &unk_2D0FF0;
  }

  return sub_30B8(v48, v46, v47);
}

unint64_t *sub_2AAB4(uint64_t a1)
{
  v2 = sub_2CE0A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_2DBDC(0, v6, 0);
    v7 = v18;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      swift_dynamicCast();
      v18 = v7;
      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        sub_2DBDC((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      v7[2] = v14 + 1;
      sub_E2DC(&v17, &v7[4 * v14 + 4]);
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_2AC4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2DBFC(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];

      if (v6 >= v7 >> 1)
      {
        sub_2DBFC((v7 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v6];
      v8[4] = v5;
      v8[5] = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_2AD30(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_2DBDC(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      v5 = *(v4 + 16);
      v6 = *(v4 + 48);
      v14 = *(v4 + 32);
      v15 = v6;
      v7 = *(v4 + 16);
      v13[0] = *v4;
      v13[1] = v7;
      v8 = *(v4 + 48);
      *&v12[13] = v14;
      *&v12[15] = v8;
      v16 = *(v4 + 64);
      v12[17] = *(v4 + 64);
      *&v12[9] = v13[0];
      *&v12[11] = v5;
      sub_333FC(v13, v12);
      swift_dynamicCast();
      v17 = v2;
      v10 = v2[2];
      v9 = v2[3];
      if (v10 >= v9 >> 1)
      {
        sub_2DBDC((v9 > 1), v10 + 1, 1);
        v2 = v17;
      }

      v2[2] = v10 + 1;
      sub_E2DC(v12, &v2[4 * v10 + 4]);
      v4 += 72;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_2AE84(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_2CEDA0();
  }

  else
  {
    v6 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_2DBDC(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        sub_2CECD0();
        sub_334A0(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = v7[2];
        v10 = v7[3];
        if (v11 >= v10 >> 1)
        {
          sub_2DBDC((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        v7[2] = v11 + 1;
        sub_E2DC(v16, &v7[4 * v11 + 4]);
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_334A0(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = v7[2];
        v14 = v7[3];
        if (v15 >= v14 >> 1)
        {
          sub_2DBDC((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        v7[2] = v15 + 1;
        sub_E2DC(v16, &v7[4 * v15 + 4]);
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_2B070(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void (*a9)(__int128 *), uint64_t a10, uint64_t a11, uint64_t a12)
{
  v76 = a7;
  v77 = a8;
  v72 = a5;
  v73 = a6;
  v71 = a4;
  v70 = a3;
  v78 = a10;
  v79 = a9;
  v80 = a1;
  v65 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  __chkstk_darwin(v65);
  v66 = &v61 - v13;
  v64 = sub_2CCB20();
  v14 = *(v64 - 8);
  __chkstk_darwin(v64);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2CA910();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v74 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v18 - 8);
  v69 = &v61 - v19;
  v20 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v20 - 8);
  v75 = &v61 - v21;
  v22 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v22 - 8);
  v24 = &v61 - v23;
  v25 = sub_2CCB30();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2CCAC0();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v30 + 104))(v32, enum case for AdditionalMetricsDescription.ModuleName.mdds(_:), v29);
    (*(v26 + 104))(v28, enum case for AdditionalMetricsDescription.SourceFunction.pfDis(_:), v25);
    swift_getErrorValue();
    sub_2CEEF0();
    v74 = sub_2CCAF0();

    (*(v26 + 8))(v28, v25);
    (*(v30 + 8))(v32, v29);
    sub_35E0(v73 + 4, v73[7]);
    v33 = enum case for ActivityType.failed(_:);
    v34 = sub_2C9C20();
    v35 = *(v34 - 8);
    (*(v35 + 104))(v24, v33, v34);
    (*(v35 + 56))(v24, 0, 1, v34);
    v36 = sub_2CA130();
    v37 = v75;
    (*(*(v36 - 8) + 56))(v75, 1, 1, v36);
    v38 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v39 = sub_2C98F0();
    v40 = *(v39 - 8);
    v41 = v69;
    (*(v40 + 104))(v69, v38, v39);
    (*(v40 + 56))(v41, 0, 1, v39);
    sub_2CB4E0();

    sub_30B8(v41, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v37, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v24, &qword_34CB88, &unk_2D0D90);
    *&v81 = v80;
    v84 = 1;
    swift_errorRetain();
    v79(&v81);
  }

  else
  {
    v63 = v24;
    v62 = a11;
    sub_2CB5B0();
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    sub_2C9DF0();
    sub_30B8(&v81, &qword_34CC80, &qword_2D1520);
    (*(v30 + 104))(v32, enum case for AdditionalMetricsDescription.ModuleName.mdds(_:), v29);
    (*(v26 + 104))(v28, enum case for AdditionalMetricsDescription.SourceFunction.pfDis(_:), v25);
    v42 = v64;
    (*(v14 + 104))(v16, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v64);
    v80 = sub_2CCB00();
    v72 = v43;
    (*(v14 + 8))(v16, v42);
    (*(v26 + 8))(v28, v25);
    (*(v30 + 8))(v32, v29);
    sub_35E0(v73 + 4, v73[7]);
    v44 = enum case for ActivityType.disambiguation(_:);
    v45 = sub_2C9C20();
    v46 = *(v45 - 8);
    v47 = v63;
    (*(v46 + 104))(v63, v44, v45);
    (*(v46 + 56))(v47, 0, 1, v45);
    v48 = v66;
    sub_F3F4(v62, v66, &qword_34C6E8, &unk_2D0FF0);

    v49 = sub_2CA130();
    v50 = *(v49 - 8);
    v51 = v75;
    (*(v50 + 32))(v75, v48, v49);
    (*(v50 + 56))(v51, 0, 1, v49);
    v52 = enum case for SiriKitReliabilityCodes.success(_:);
    v53 = sub_2C98F0();
    v54 = *(v53 - 8);
    v55 = v69;
    (*(v54 + 104))(v69, v52, v53);
    (*(v54 + 56))(v55, 0, 1, v53);
    sub_2CB4E0();

    sub_30B8(v55, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v51, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v47, &qword_34CB88, &unk_2D0D90);
    v56 = v68;
    *(&v82 + 1) = v68;
    v83 = &protocol witness table for AceOutput;
    v57 = sub_F390(&v81);
    v58 = v67;
    v59 = v74;
    (*(v67 + 16))(v57, v74, v56);
    v84 = 0;
    v79(&v81);
    (*(v58 + 8))(v59, v56);
  }

  return sub_30B8(&v81, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_2BB5C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7)
{
  v70 = a7;
  v73 = a5;
  v74 = a6;
  v75 = a4;
  v76 = a3;
  v68 = *a2;
  v9 = sub_2CD230();
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v65 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v11 - 8);
  v72 = v63 - v12;
  v71 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v13 = __chkstk_darwin(v71);
  v64 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v69 = v63 - v16;
  __chkstk_darwin(v15);
  v18 = v63 - v17;
  v19 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v19 - 8);
  v21 = v63 - v20;
  v22 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v22 - 8);
  v24 = v63 - v23;
  v25 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v25 - 8);
  v27 = v63 - v26;
  v28 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v28);
  v30 = (v63 - v29);
  sub_F3F4(a1, v63 - v29, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v30;
    sub_35E0(a2 + 4, a2[7]);
    v32 = enum case for ActivityType.failed(_:);
    v33 = sub_2C9C20();
    v34 = *(v33 - 8);
    (*(v34 + 104))(v27, v32, v33);
    (*(v34 + 56))(v27, 0, 1, v33);
    v35 = sub_2CA130();
    (*(*(v35 - 8) + 56))(v24, 1, 1, v35);
    v36 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v37 = sub_2C98F0();
    v38 = *(v37 - 8);
    (*(v38 + 104))(v21, v36, v37);
    (*(v38 + 56))(v21, 0, 1, v37);
    swift_getErrorValue();
    sub_2CEEF0();
    sub_2CB4E0();

    sub_30B8(v21, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v24, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v27, &qword_34CB88, &unk_2D0D90);
    v77[0] = v31;
    v78 = 1;
    swift_errorRetain();
    v73(v77);

    return sub_30B8(v77, qword_34C798, &qword_2D0DA0);
  }

  sub_14A58(v30, v18, &qword_34C6E8, &unk_2D0FF0);
  v63[0] = sub_20410(&qword_34CC70, &qword_2D0D78);
  v40 = sub_2CA440();
  v42 = *(v68 + 80);
  v41 = *(v68 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = swift_getAssociatedTypeWitness();
  sub_B2D88(v75, v40, v76, AssociatedTypeWitness, v44, v72);

  v45 = v69;
  sub_F3F4(v18, v69, &qword_34C6E8, &unk_2D0FF0);
  v46 = *(v45 + *(v71 + 48));
  v47 = [v46 dialog];

  sub_334A0(0, &qword_34C6D8, DialogElement_ptr);
  v48 = sub_2CE410();

  if (v48 >> 62)
  {
    result = sub_2CEDA0();
  }

  else
  {
    result = *(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8));
  }

  v63[1] = v41;
  v68 = v42;
  if (result)
  {
    if ((v48 & 0xC000000000000001) != 0)
    {
      v49 = v18;
      v50 = sub_2CECD0();
    }

    else
    {
      if (!*(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return result;
      }

      v49 = v18;
      v50 = *(v48 + 32);
    }

    v51 = v50;

    v52 = [v51 fullPrint];

    v53 = sub_2CE270();
    v55 = v54;
  }

  else
  {
    v49 = v18;

    v53 = 0;
    v55 = 0xE000000000000000;
  }

  v56 = sub_2CA130();
  v57 = *(*(v56 - 8) + 8);
  v57(v45, v56);
  v58 = sub_2CA460();
  v59 = v65;
  sub_2C428(v53, v55, v58, v65);

  v60 = v64;
  sub_F3F4(v49, v64, &qword_34C6E8, &unk_2D0FF0);
  v61 = v72;
  v62 = *(v60 + *(v71 + 48));
  sub_328A0(v59, v60, v62, v72, v73, v74);

  (*(v66 + 8))(v59, v67);
  sub_30B8(v61, &unk_353020, &unk_2D0970);
  sub_30B8(v49, &qword_34C6E8, &unk_2D0FF0);
  return (v57)(v60, v56);
}

uint64_t sub_2C428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a3;
  v64 = a1;
  v66 = a4;
  v5 = sub_20410(&unk_3519B0, &qword_2D1230);
  __chkstk_darwin(v5 - 8);
  v76 = &v56 - v6;
  v80 = sub_2CD220();
  v77 = *(v80 - 8);
  v7 = __chkstk_darwin(v80);
  v79 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v78 = &v56 - v9;
  v10 = sub_2CE0A0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v61 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v56 - v18;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v21 = *(v15 + 16);
  v59 = v20;
  v58 = v15 + 16;
  v57 = v21;
  v21(v19, v20, v14);
  v22 = v19;
  v23 = sub_2CDFE0();
  v24 = sub_2CE670();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "MediaItemDisambiguationStrategy#disambiguationSnippet...", v25, 2u);
  }

  v65 = a2;

  v26 = *(v15 + 8);
  v63 = v14;
  v62 = v15 + 8;
  v60 = v26;
  v26(v22, v14);
  v27 = *(v73 + 16);
  if (v27)
  {
    v30 = *(v11 + 16);
    v29 = v11 + 16;
    v28 = v30;
    v31 = v73 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
    v32 = *(v29 + 56);
    v33 = (v29 + 72);
    v34 = enum case for INMediaDestination.playlist(_:);
    v70 = (v29 + 80);
    v71 = (v29 - 8);
    v68 = v77 + 8;
    v69 = (v77 + 16);
    v67 = v77 + 32;
    v35 = _swiftEmptyArrayStorage;
    v74 = v30;
    v75 = v29;
    v73 = v32;
    v72 = enum case for INMediaDestination.playlist(_:);
    v30(v13, v31, v10);
    while (1)
    {
      if ((*v33)(v13, v10) == v34)
      {
        (*v70)(v13, v10);
        v36 = sub_2C8D90();
        (*(*(v36 - 8) + 56))(v76, 1, 1, v36);

        v37 = v78;
        sub_2CD210();
        (*v69)(v79, v37, v80);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_B91F8(0, v35[2] + 1, 1, v35);
        }

        v39 = v35[2];
        v38 = v35[3];
        if (v39 >= v38 >> 1)
        {
          v35 = sub_B91F8((v38 > 1), v39 + 1, 1, v35);
        }

        v40 = v77;
        v41 = v80;
        (*(v77 + 8))(v78, v80);
        v35[2] = v39 + 1;
        (*(v40 + 32))(v35 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v39, v79, v41);
        v28 = v74;
        v32 = v73;
        v34 = v72;
      }

      else
      {
        (*v71)(v13, v10);
      }

      v31 += v32;
      if (!--v27)
      {
        break;
      }

      v28(v13, v31, v10);
    }
  }

  v42 = v61;
  v43 = v63;
  v57(v61, v59, v63);
  v44 = sub_2CDFE0();
  v45 = sub_2CE670();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v81 = v47;
    *v46 = 136315138;

    v48 = sub_2CE420();
    v50 = v49;

    v51 = sub_3F08(v48, v50, &v81);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_0, v44, v45, "MediaItemDisambiguationStrategy#disambiguationSnippet returning items to disambiguate: %s", v46, 0xCu);
    sub_306C(v47);
  }

  v60(v42, v43);
  v52 = v66;

  sub_2CD310();
  v53 = enum case for SiriAudioSnippets.disambiguation(_:);
  v54 = sub_2CD230();
  (*(*(v54 - 8) + 104))(v52, v53, v54);
}

uint64_t sub_2CBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[1] = a3;
  v20 = a4;
  v21 = sub_2C9C40();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v19 - v10;
  v12 = sub_2CB260();
  __chkstk_darwin(v12 - 8);
  v13 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v13 - 8);
  sub_F3F4(a2, v19 - v14, &unk_353020, &unk_2D0970);
  sub_2CA5B0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(v20, v11, &qword_34C6E8, &unk_2D0FF0);
  v15 = *&v11[*(v9 + 56)];
  v16 = [v15 catId];

  sub_2CE270();
  sub_2CA590();
  v17 = sub_2CA130();
  (*(*(v17 - 8) + 8))(v11, v17);
  sub_2CA5F0();
  sub_2CA5A0();
  (*(v5 + 104))(v7, enum case for ResponseType.disambiguation(_:), v21);
  return sub_2CA580();
}

uint64_t sub_2CEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_2CF58, 0, 0);
}

uint64_t sub_2CF58()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  sub_2CA080();
  swift_allocObject();
  v0[13] = sub_2CA070();
  v5 = sub_2CD230();
  v0[5] = v5;
  v0[6] = sub_33458(&qword_34CC78, &type metadata accessor for SiriAudioSnippets, &protocol conformance descriptor for SiriAudioSnippets);
  v6 = sub_F390(v0 + 2);
  (*(*(v5 - 8) + 16))(v6, v4, v5);
  sub_20410(&unk_351900, &unk_2D0960);
  v7 = swift_allocObject();
  v0[14] = v7;
  *(v7 + 16) = xmmword_2D0770;
  sub_F3F4(v3, v1, &qword_34C6E8, &unk_2D0FF0);
  *(v7 + 32) = *(v1 + *(v2 + 48));
  v8 = sub_2CA130();
  (*(*(v8 - 8) + 8))(v1, v8);
  v13 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_2D160;
  v10 = v0[10];
  v11 = v0[7];

  return v13(v11, v0 + 2, v7, v10);
}

uint64_t sub_2D160()
{
  v1 = *v0;
  v4 = *v0;

  sub_306C((v1 + 16));

  v2 = *(v4 + 8);

  return v2();
}

void *sub_2D2BC()
{

  sub_306C((v0 + 32));
  sub_306C((v0 + 72));

  return v0;
}

uint64_t sub_2D2FC()
{
  sub_2D2BC();

  return swift_deallocClassInstance();
}

uint64_t sub_2D350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for MediaDestinationDisambiguationStrategy(0, *(a6 + 80), *(a6 + 88), a4);

  return NeedsDisambiguationFlowStrategy.paginationStyle(app:intent:parameterName:intentResolutionResult:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_2D3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a7;
  *(v13 + 24) = a8;

  sub_2E3F0(a3, a4, a6, sub_333BC);
}

uint64_t sub_2D598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22 = type metadata accessor for MediaDestinationDisambiguationStrategy(0, *(a10 + 80), *(a10 + 88), a4);

  return a12(a1, a2, a3, a4, a5, a6, a7, a8, a9, v22, a11);
}

uint64_t sub_2D6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v21 = type metadata accessor for MediaDestinationDisambiguationStrategy(0, *(a9 + 80), *(a9 + 88), a4);

  return a11(a1, a2, a3, a4, a5, a6, a7, a8, v21, a10);
}

uint64_t sub_2D78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for MediaDestinationDisambiguationStrategy(0, *(a7 + 80), *(a7 + 88), a4);

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:_:)(a1, a2, a3, a4, a5, a6, v15, a8);
}

uint64_t sub_2D818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = type metadata accessor for MediaDestinationDisambiguationStrategy(0, *(a8 + 80), *(a8 + 88), a4);

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_2D8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v17 = type metadata accessor for MediaDestinationDisambiguationStrategy(0, *(a6 + 80), *(a6 + 88), v16);
  *v15 = v7;
  v15[1] = sub_E664;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, v17, a7);
}

uint64_t sub_2D9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v8;
  v17 = swift_task_alloc();
  *(v15 + 16) = v17;
  v19 = type metadata accessor for MediaDestinationDisambiguationStrategy(0, *(a7 + 80), *(a7 + 88), v18);
  *v17 = v15;
  v17[1] = sub_24C84;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, v19, a8);
}

unint64_t sub_2DACC()
{
  result = qword_34CC60;
  if (!qword_34CC60)
  {
    sub_2DB30(&qword_34CC68, &qword_2D0CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CC60);
  }

  return result;
}

uint64_t sub_2DB30(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *sub_2DB78(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2DC80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2DB98(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2E214(a1, a2, a3, *v3, &qword_34CCC8, &unk_2D0DF0, &type metadata accessor for INMediaDestination);
  *v3 = result;
  return result;
}

char *sub_2DBDC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2DD9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2DBFC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2DEAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2DC1C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2DFB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2DC3C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2E214(a1, a2, a3, *v3, &qword_34CD18, &qword_2D0E38, &type metadata accessor for InstalledApp);
  *v3 = result;
  return result;
}

char *sub_2DC80(char *result, int64_t a2, char a3, char *a4)
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
    sub_20410(&qword_34CD08, &qword_2D0E30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2DD9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_20410(&qword_34CC88, &unk_2D0DC0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_2DEAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_20410(&unk_356F40, &unk_2D0740);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_2DFB8(void *result, int64_t a2, char a3, void *a4)
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
    sub_20410(&qword_34CCD0, &unk_2D0E00);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_20410(&qword_34CCD8, &unk_2D10D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2E0EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_20410(&qword_34CCE0, &unk_2D0E10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2E214(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_20410(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_2E3F0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v4 + 112);
  v33[0] = a1;
  v33[1] = a2;
  v32 = v33;
  if (sub_13964(sub_334E8, v31, v13))
  {
    v14 = [a3 disambiguationItems];
    v15 = sub_2CE410();

    v16 = *(v15 + 16);

    if (v16)
    {
      v17 = [a3 disambiguationItems];
      v18 = sub_2CE410();

      v19 = sub_298B0(v18);

      if (v19)
      {
        sub_20410(&qword_34CC68, &qword_2D0CD0);
        swift_allocObject();
        sub_2CA730();
        a4();
      }
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v26 = sub_3ED0(v9, static Logger.default);
    swift_beginAccess();
    (*(v10 + 16))(v12, v26, v9);
    v27 = sub_2CDFE0();
    v28 = sub_2CE680();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "MediaDestinationDisambiguationStrategy#makeDisambiguationItemContainer resolutionResult.disambiguationItems not of type [INMediaItem] or empty", v29, 2u);
    }

    (*(v10 + 8))(v12, v9);
    v21 = sub_2CB850();
    sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v22 = swift_allocError();
    v24 = v30;
    v25 = &enum case for PlaybackCode.ceGE42(_:);
  }

  else
  {
    v21 = sub_2CB850();
    sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v22 = swift_allocError();
    v24 = v23;
    v25 = &enum case for PlaybackCode.ceGE41(_:);
  }

  (*(*(v21 - 8) + 104))(v24, *v25, v21);
  (a4)(v22, 1);
}

uint64_t sub_2E7DC(void *a1, void *a2, unint64_t *a3, void (*a4)(char *, unint64_t, uint64_t), uint64_t a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v465 = a7;
  v466 = a6;
  v454 = a5;
  v459 = a4;
  v463 = a3;
  v441 = a1;
  v9 = *v7;
  v451 = sub_2CA810();
  v450 = *(v451 - 1);
  v10 = __chkstk_darwin(v451);
  v429 = &v410 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v444 = &v410 - v13;
  __chkstk_darwin(v12);
  v456 = &v410 - v14;
  v15 = sub_20410(&qword_34CC90, qword_2D40E0);
  __chkstk_darwin(v15 - 8);
  v427 = &v410 - v16;
  v448 = sub_2CAA00();
  v436 = *(v448 - 8);
  v17 = __chkstk_darwin(v448);
  v426 = &v410 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v443 = &v410 - v19;
  v20 = *(v9 + 80);
  v468 = *(v9 + 88);
  v467 = v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = sub_2CA230();
  v439 = *(v21 - 8);
  __chkstk_darwin(v21);
  v438 = &v410 - v22;
  v440 = v23;
  sub_2CA380();
  sub_2DB30(&qword_34C6E0, &unk_2D0730);
  v24 = sub_2CEFA0();
  v464 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = (&v410 - v25);
  v27 = sub_20410(&qword_34CC98, &unk_2D3120);
  v28 = __chkstk_darwin(v27 - 8);
  v424 = &v410 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v434 = &v410 - v31;
  __chkstk_darwin(v30);
  v437 = &v410 - v32;
  v462 = sub_2CE000();
  v460 = *(v462 - 8);
  v33 = __chkstk_darwin(v462);
  v435 = &v410 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v447 = &v410 - v36;
  v37 = __chkstk_darwin(v35);
  v428 = &v410 - v38;
  v39 = __chkstk_darwin(v37);
  v422 = &v410 - v40;
  v41 = __chkstk_darwin(v39);
  v420 = &v410 - v42;
  v43 = __chkstk_darwin(v41);
  v423 = &v410 - v44;
  v45 = __chkstk_darwin(v43);
  v416 = &v410 - v46;
  v47 = __chkstk_darwin(v45);
  v425 = &v410 - v48;
  v49 = __chkstk_darwin(v47);
  v445 = &v410 - v50;
  v51 = __chkstk_darwin(v49);
  v449 = &v410 - v52;
  __chkstk_darwin(v51);
  v442 = &v410 - v53;
  v469 = sub_20410(&qword_34CCA0, &unk_2D0DD0);
  v54 = __chkstk_darwin(v469);
  v457 = &v410 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v54);
  v461 = (&v410 - v57);
  v58 = __chkstk_darwin(v56);
  v60 = (&v410 - v59);
  v61 = __chkstk_darwin(v58);
  v418 = &v410 - v62;
  v63 = __chkstk_darwin(v61);
  v453 = (&v410 - v64);
  v65 = __chkstk_darwin(v63);
  v458 = &v410 - v66;
  v67 = __chkstk_darwin(v65);
  v452 = (&v410 - v68);
  v69 = __chkstk_darwin(v67);
  v415 = &v410 - v70;
  v71 = __chkstk_darwin(v69);
  v73 = &v410 - v72;
  v74 = __chkstk_darwin(v71);
  v76 = (&v410 - v75);
  __chkstk_darwin(v74);
  v432 = &v410 - v77;
  v470 = sub_2CE0A0();
  v471 = *(v470 - 8);
  v78 = __chkstk_darwin(v470);
  v417 = &v410 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __chkstk_darwin(v78);
  v419 = &v410 - v81;
  v82 = __chkstk_darwin(v80);
  v413 = &v410 - v83;
  v84 = __chkstk_darwin(v82);
  v414 = &v410 - v85;
  v86 = __chkstk_darwin(v84);
  v421 = &v410 - v87;
  v88 = __chkstk_darwin(v86);
  v433 = &v410 - v89;
  v90 = __chkstk_darwin(v88);
  v431 = &v410 - v91;
  __chkstk_darwin(v90);
  v446 = &v410 - v92;
  v93 = sub_2CA870();
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v96 = (&v410 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = v7[14];
  v476 = a2;
  v477 = v463;
  v473 = &v476;
  if ((sub_13964(sub_13A68, v472, v97) & 1) == 0)
  {
    v127 = sub_2CB850();
    sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v128 = swift_allocError();
    (*(*(v127 - 8) + 104))(v129, enum case for PlaybackCode.ceGE43(_:), v127);
    *v26 = v128;
    swift_storeEnumTagMultiPayload();
    v466(v26);
    return (*(v464 + 8))(v26, v24);
  }

  v430 = v26;
  v412 = v24;
  sub_2CA790();
  v98 = (*(v94 + 88))(v96, v93);
  if (v98 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v94 + 96))(v96, v93);
    v99 = *(v96 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));
    v100 = sub_2CA830();
    v101 = swift_dynamicCastUnknownClass();
    if (!v101)
    {

      v172 = v460;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v173 = v462;
      v174 = sub_3ED0(v462, static Logger.default);
      swift_beginAccess();
      v175 = v445;
      (*(v172 + 16))(v445, v174, v173);
      v176 = sub_2CDFE0();
      v177 = sub_2CE680();
      v178 = os_log_type_enabled(v176, v177);
      v179 = v464;
      v180 = v430;
      if (v178)
      {
        v181 = swift_slowAlloc();
        *v181 = 0;
        _os_log_impl(&dword_0, v176, v177, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult Ignorning non-server-conversion parse", v181, 2u);
      }

      (*(v172 + 8))(v175, v173);
      v182 = sub_2CB850();
      sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v183 = swift_allocError();
      (*(*(v182 - 8) + 104))(v184, enum case for PlaybackCode.ceGE44(_:), v182);
      *v180 = v183;
      v185 = v412;
      swift_storeEnumTagMultiPayload();
      v466(v180);

      (*(v179 + 8))(v180, v185);
      v186 = sub_2CAFE0();
      return (*(*(v186 - 8) + 8))(v96, v186);
    }

    v102 = v101;
    v458 = v100;
    v459 = v99;
    v461 = v96;
    sub_20410(&qword_34CC70, &qword_2D0D78);
    v103 = sub_2CA460();
    v104 = *(v103 + 16);
    if (v104)
    {
      v105 = 0;
      v463 = (v471 + 16);
      while (1)
      {
        if (v105 >= *(v103 + 16))
        {
          __break(1u);
          goto LABEL_124;
        }

        v106 = v471;
        v107 = v103 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v471 + 72) * v105;
        v108 = *(v469 + 48);
        *v76 = v105;
        v109 = *(v106 + 16);
        v109(v76 + v108, v107, v470);
        sub_14A58(v76, v73, &qword_34CCA0, &unk_2D0DD0);
        if (sub_29C80(v73, v102))
        {
          break;
        }

        ++v105;
        sub_30B8(v73, &qword_34CCA0, &unk_2D0DD0);
        if (v104 == v105)
        {
          goto LABEL_9;
        }
      }

      v199 = v432;
      sub_14A58(v73, v432, &qword_34CCA0, &unk_2D0DD0);
      v200 = v471;
      v201 = *(v471 + 32);
      v202 = v431;
      v203 = v470;
      v201(v431, v199 + *(v469 + 48), v470);
      v204 = v446;
      v201(v446, v202, v203);
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v205 = v462;
      v206 = sub_3ED0(v462, static Logger.default);
      swift_beginAccess();
      v207 = v460;
      v208 = v442;
      (*(v460 + 16))(v442, v206, v205);
      v209 = v433;
      v109(v433, v204, v203);
      v210 = sub_2CDFE0();
      v211 = sub_2CE680();
      if (os_log_type_enabled(v210, v211))
      {
        v212 = v200;
        v213 = swift_slowAlloc();
        v214 = v209;
        v215 = swift_slowAlloc();
        v476 = v215;
        *v213 = 136315138;
        sub_33458(&qword_34CCB8, &type metadata accessor for INMediaDestination, &protocol conformance descriptor for INMediaDestination);
        v216 = sub_2CEE70();
        v218 = v217;
        v219 = *(v212 + 8);
        v468 = (v212 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v469 = v219;
        v219(v214, v470);
        v220 = sub_3F08(v216, v218, &v476);
        v203 = v470;

        *(v213 + 4) = v220;
        _os_log_impl(&dword_0, v210, v211, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult Updating media items with match: %s", v213, 0xCu);
        sub_306C(v215);

        (*(v207 + 8))(v442, v462);
      }

      else
      {

        v258 = *(v200 + 8);
        v468 = (v200 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v469 = v258;
        v258(v209, v203);
        (*(v207 + 8))(v208, v205);
        v212 = v200;
      }

      v259 = v430;
      v260 = v441;
      v261 = v440;
      v262 = v439;
      v263 = v437;
      v264 = v446;
      v109(v437, v446, v203);
      (*(v212 + 56))(v263, 0, 1, v203);
      sub_72E4C(v263);
      sub_30B8(v263, &qword_34CC98, &unk_2D3120);
      v478 = v203;
      v265 = sub_F390(&v476);
      v109(v265, v264, v203);
      v266 = v260;
      v267 = v438;
      sub_2CA220();
      sub_2CA370();
      (*(v262 + 8))(v267, v261);
      v268 = v412;
      swift_storeEnumTagMultiPayload();
      v466(v259);

      (*(v464 + 8))(v259, v268);
      (v469)(v264, v203);
      v269 = sub_2CAFE0();
      return (*(*(v269 - 8) + 8))(v461, v269);
    }

LABEL_9:

    if (qword_34BF58 == -1)
    {
LABEL_10:
      v110 = v462;
      v111 = sub_3ED0(v462, static Logger.default);
      swift_beginAccess();
      v112 = v460;
      v113 = v449;
      (*(v460 + 16))(v449, v111, v110);
      v114 = v458;
      v115 = sub_2CDFE0();
      v116 = sub_2CE670();

      v117 = os_log_type_enabled(v115, v116);
      v118 = v466;
      v119 = v461;
      if (!v117)
      {

        (*(v112 + 8))(v113, v110);
LABEL_88:
        v319 = sub_2CB850();
        sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
        v320 = swift_allocError();
        (*(*(v319 - 8) + 104))(v321, enum case for PlaybackCode.ceGE45(_:), v319);
        v322 = v430;
        *v430 = v320;
        v323 = v412;
        swift_storeEnumTagMultiPayload();
        v118(v322);

        (*(v464 + 8))(v322, v323);
        v324 = sub_2CAFE0();
        return (*(*(v324 - 8) + 8))(v119, v324);
      }

      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v475 = v121;
      *v120 = 136315138;
      objc_opt_self();
      v122 = swift_dynamicCastObjCClass();
      if (v122)
      {
        v469 = v114;
        v123 = [v122 mediaDestination];
        if (v123)
        {
          v124 = v424;
          v125 = v123;
          sub_2CE090();

          v126 = 0;
        }

        else
        {
          v126 = 1;
          v124 = v424;
        }

        v308 = v471;
        v309 = v470;
        (*(v471 + 56))(v124, v126, 1, v470);
        v281 = v434;
        sub_14A58(v124, v434, &qword_34CC98, &unk_2D3120);
        v310 = (*(v308 + 48))(v281, 1, v309);
        v114 = v469;
        if (v310 != 1)
        {
          v313 = v281;
          v311 = sub_2CE060();
          v312 = v314;
          v315 = v313;
          v114 = v469;
          (*(v308 + 8))(v315, v309);
          goto LABEL_87;
        }
      }

      else
      {
        v281 = v434;
        (*(v471 + 56))(v434, 1, 1, v470);
      }

      sub_30B8(v281, &qword_34CC98, &unk_2D3120);
      v311 = 0;
      v312 = 0;
LABEL_87:
      v119 = v461;
      v118 = v466;
      v474[0] = v311;
      v474[1] = v312;
      sub_20410(&qword_34CCC0, &unk_2D0DE0);
      v316 = sub_2CE2A0();
      v318 = sub_3F08(v316, v317, &v475);

      *(v120 + 4) = v318;
      _os_log_impl(&dword_0, v115, v116, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult could not find selected content for intent playlistName: %s", v120, 0xCu);
      sub_306C(v121);

      (*(v460 + 8))(v449, v110);
      goto LABEL_88;
    }

LABEL_126:
    swift_once();
    goto LABEL_10;
  }

  if (v98 != enum case for Parse.directInvocation(_:))
  {
    if (v98 != enum case for Parse.pommesResponse(_:))
    {
      v187 = v430;
      v188 = v462;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v189 = sub_3ED0(v188, static Logger.default);
      swift_beginAccess();
      v190 = v460;
      v191 = v435;
      (*(v460 + 16))(v435, v189, v188);
      v192 = sub_2CDFE0();
      v193 = sub_2CE680();
      if (os_log_type_enabled(v192, v193))
      {
        v194 = swift_slowAlloc();
        *v194 = 0;
        _os_log_impl(&dword_0, v192, v193, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult Ignorning non-server-conversion parse", v194, 2u);
      }

      (*(v190 + 8))(v191, v188);
      v195 = sub_2CB850();
      sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v196 = swift_allocError();
      (*(*(v195 - 8) + 104))(v197, enum case for PlaybackCode.ceGE51(_:), v195);
      *v187 = v196;
      v198 = v412;
      swift_storeEnumTagMultiPayload();
      v466(v187);
      (*(v464 + 8))(v187, v198);
      return (*(v94 + 8))(v96, v93);
    }

    (*(v94 + 96))(v96, v93);
    v457 = *v96;
    v150 = sub_1B7F14();
    v151 = v430;
    v152 = v462;
    if (!v150)
    {
      v270 = v464;
      v271 = v466;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v272 = sub_3ED0(v152, static Logger.default);
      swift_beginAccess();
      v273 = v422;
      (*(v460 + 16))(v422, v272, v152);
      v274 = sub_2CDFE0();
      v275 = sub_2CE680();
      if (os_log_type_enabled(v274, v275))
      {
        v276 = swift_slowAlloc();
        *v276 = 0;
        _os_log_impl(&dword_0, v274, v275, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult pommesResponse contains no AudioExperience", v276, 2u);
      }

      (*(v460 + 8))(v273, v152);
      v277 = sub_2CB850();
      sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v278 = swift_allocError();
      (*(*(v277 - 8) + 104))(v279, enum case for PlaybackCode.ceGE46(_:), v277);
      *v151 = v278;
      v280 = v412;
      swift_storeEnumTagMultiPayload();
      v271(v151);

      return (*(v270 + 8))(v151, v280);
    }

    v153 = v150;
    v154 = v443;
    v456 = v153;
    sub_2CDA40();
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v155 = sub_3ED0(v152, static Logger.default);
    swift_beginAccess();
    v156 = *(v460 + 16);
    v157 = v425;
    v449 = v155;
    v447 = (v460 + 16);
    v446 = v156;
    (v156)(v425, v155, v152);
    v158 = v436;
    v159 = *(v436 + 16);
    v160 = v426;
    v161 = v448;
    v159(v426, v154, v448);
    v162 = sub_2CDFE0();
    v163 = sub_2CE690();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v475 = v165;
      *v164 = 136315138;
      sub_2CAA60();
      v478 = v448;
      v479 = sub_33458(&unk_353090, &type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);
      v166 = sub_F390(&v476);
      v159(v166, v160, v448);
      v167 = sub_2CAA50();
      v168 = v160;
      v170 = v169;
      v451 = *(v158 + 8);
      v451(v168, v448);
      sub_306C(&v476);
      v171 = sub_3F08(v167, v170, &v475);

      *(v164 + 4) = v171;
      _os_log_impl(&dword_0, v162, v163, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult pommesResponse userDialogAct: %s", v164, 0xCu);
      sub_306C(v165);
      v161 = v448;

      v151 = v430;
    }

    else
    {

      v451 = *(v158 + 8);
      v451(v160, v161);
    }

    v282 = v157;
    v283 = v462;
    v450 = *(v460 + 8);
    (v450)(v282, v462);
    v284 = v464;
    v285 = v466;
    sub_20410(&qword_34CC70, &qword_2D0D78);
    v286 = sub_2CA460();
    sub_2CD700();
    v287 = v427;
    v288 = v456;
    sub_2CDA40();

    (*(v158 + 56))(v287, 0, 1, v161);
    v289 = sub_2CD600();
    if (v289)
    {
      v290 = v289;
      v468 = v286;
      v291 = sub_2CD660();
      if (v291 >> 62)
      {
        v409 = v291;
        v292 = sub_2CEDA0();
        v291 = v409;
      }

      else
      {
        v292 = *(&dword_10 + (v291 & 0xFFFFFFFFFFFFFF8));
      }

      v293 = v423;
      if (v292)
      {
        if ((v291 & 0xC000000000000001) != 0)
        {
          v294 = sub_2CECD0();
        }

        else
        {
          if (!*(&dword_10 + (v291 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);

            result = sub_30B8(v161, &qword_34CCA0, &unk_2D0DD0);
            __break(1u);
            return result;
          }

          v294 = *(v291 + 32);
        }
      }

      else
      {

        v294 = 0;
      }

      v325 = v468;
      v461 = *(v468 + 16);
      v454 = v290;
      if (v461)
      {
        v326 = 0;
        v467 = v471 + 16;
        v327 = (v471 + 8);
        v328 = &qword_34CCA0;
        v463 = v294;
        while (1)
        {
          if (v326 >= *(v325 + 16))
          {
            goto LABEL_125;
          }

          v329 = v327;
          v330 = v471;
          v331 = v325 + ((*(v330 + 80) + 32) & ~*(v330 + 80)) + *(v330 + 72) * v326;
          v332 = v469;
          v333 = *(v469 + 48);
          v334 = v452;
          *v452 = v326;
          v335 = v470;
          v459 = *(v330 + 16);
          v459(v334 + v333, v331, v470);
          v336 = v458;
          sub_14A58(v334, v458, v328, &unk_2D0DD0);
          v337 = v453;
          v338 = v328;
          sub_F3F4(v336, v453, v328, &unk_2D0DD0);
          v339 = *(v332 + 48);
          v340 = sub_2CE060();
          v342 = v341;
          v343 = v335;
          v344 = *(v330 + 8);
          v327 = v329;
          (v344)(v337 + v339, v343);
          v294 = v463;
          if (!v463)
          {
            break;
          }

          v345 = sub_2CADC0();
          v283 = v462;
          if (!v342)
          {
            if (!v346)
            {
LABEL_104:
              v461 = v344;
              v348 = v413;
LABEL_118:

              v381 = v415;
              sub_14A58(v458, v415, &qword_34CCA0, &unk_2D0DD0);
              v382 = *(v471 + 32);
              v383 = v381 + *(v469 + 48);
              v384 = v414;
              v385 = v470;
              v382(v414, v383, v470);
              v386 = v421;
              v382(v421, v384, v385);
              v387 = v416;
              (v446)(v416, v449, v283);
              v459(v348, v386, v385);
              v388 = sub_2CDFE0();
              v389 = sub_2CE690();
              v390 = os_log_type_enabled(v388, v389);
              v445 = v329;
              if (v390)
              {
                v391 = swift_slowAlloc();
                v392 = swift_slowAlloc();
                v476 = v392;
                *v391 = 136315138;
                sub_33458(&qword_34CCB8, &type metadata accessor for INMediaDestination, &protocol conformance descriptor for INMediaDestination);
                v393 = sub_2CEE70();
                v394 = v348;
                v396 = v395;
                (v461)(v394, v385);
                v397 = sub_3F08(v393, v396, &v476);

                *(v391 + 4) = v397;
                _os_log_impl(&dword_0, v388, v389, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult Updating media items with match: %s", v391, 0xCu);
                sub_306C(v392);
              }

              else
              {

                (v461)(v348, v385);
              }

              (v450)(v387, v283);
              v398 = v441;
              v399 = v440;
              v400 = v439;
              v401 = v438;
              v402 = v437;
              v403 = v421;
              v404 = v459;
              v459(v437, v421, v385);
              (*(v471 + 56))(v402, 0, 1, v385);
              sub_72E4C(v402);
              sub_30B8(v402, &qword_34CC98, &unk_2D3120);
              v478 = v385;
              v405 = sub_F390(&v476);
              v404(v405, v403, v385);
              v406 = v398;
              sub_2CA220();
              v407 = v430;
              sub_2CA370();
              (*(v400 + 8))(v401, v399);
              v408 = v412;
              swift_storeEnumTagMultiPayload();
              v466(v407);

              (*(v464 + 8))(v407, v408);
              (v461)(v403, v385);
              v379 = v443;
              v380 = v448;
              return (v451)(v379, v380);
            }

            goto LABEL_93;
          }

          if (!v346)
          {
            goto LABEL_93;
          }

          if (v340 == v345 && v342 == v346)
          {
            v461 = v344;

            v348 = v413;
            goto LABEL_118;
          }

          v347 = sub_2CEEA0();

          if (v347)
          {
            goto LABEL_104;
          }

LABEL_94:
          ++v326;
          v328 = v338;
          sub_30B8(v458, v338, &unk_2D0DD0);
          v325 = v468;
          if (v461 == v326)
          {
            v285 = v466;
            v151 = v430;
            v161 = v448;
            v293 = v423;
            goto LABEL_109;
          }
        }

        v283 = v462;
        if (!v342)
        {
          goto LABEL_104;
        }

LABEL_93:

        goto LABEL_94;
      }

LABEL_109:

      (v446)(v293, v449, v283);

      v365 = v294;
      v366 = sub_2CDFE0();
      v367 = sub_2CE680();

      if (os_log_type_enabled(v366, v367))
      {
        v368 = swift_slowAlloc();
        v369 = swift_slowAlloc();
        v475 = v369;
        *v368 = 136315138;
        if (v365)
        {
          v370 = sub_2CADC0();
        }

        else
        {
          v370 = 0;
          v371 = 0;
        }

        v476 = v370;
        v477 = v371;
        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        v372 = sub_2CE2A0();
        v374 = sub_3F08(v372, v373, &v475);

        *(v368 + 4) = v374;
        _os_log_impl(&dword_0, v366, v367, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult could not find selected content for uso graph playlistName: %s", v368, 0xCu);
        sub_306C(v369);

        (v450)(v293, v283);
        v151 = v430;
        v161 = v448;
      }

      else
      {

        (v450)(v293, v283);
      }

      v375 = sub_2CB850();
      sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v376 = swift_allocError();
      (*(*(v375 - 8) + 104))(v377, enum case for PlaybackCode.ceGE48(_:), v375);
      *v151 = v376;
      v378 = v412;
      swift_storeEnumTagMultiPayload();
      v285(v151);

      (*(v464 + 8))(v151, v378);
    }

    else
    {

      v295 = v420;
      (v446)(v420, v449, v283);
      v296 = sub_2CDFE0();
      v297 = sub_2CE680();
      if (os_log_type_enabled(v296, v297))
      {
        v298 = swift_slowAlloc();
        *v298 = 0;
        _os_log_impl(&dword_0, v296, v297, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult AudioUsoIntent failed to be constructed", v298, 2u);
      }

      (v450)(v295, v283);
      v299 = sub_2CB850();
      sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v300 = swift_allocError();
      (*(*(v299 - 8) + 104))(v301, enum case for PlaybackCode.ceGE47(_:), v299);
      *v151 = v300;
      v302 = v412;
      swift_storeEnumTagMultiPayload();
      v285(v151);

      (*(v284 + 8))(v151, v302);
    }

    v379 = v443;
    v380 = v161;
    return (v451)(v379, v380);
  }

  (*(v94 + 96))(v96, v93);
  v131 = v450;
  v132 = v456;
  v133 = v451;
  (*(v450 + 32))(v456, v96, v451);
  sub_238E4C(v132, &v476);
  if (v480 != 3)
  {
    v134 = v462;
    v135 = v460;
    if (v480 != 255)
    {
      sub_30B8(&v476, &qword_34CCB0, &qword_2D5710);
    }

    v136 = v444;
    v137 = v447;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v138 = sub_3ED0(v134, static Logger.default);
    swift_beginAccess();
    (*(v135 + 16))(v137, v138, v134);
    v139 = *(v131 + 16);
    v139(v136, v456, v133);
    v140 = sub_2CDFE0();
    v141 = sub_2CE680();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v475 = v143;
      *v142 = 136315138;
      v139(v429, v136, v133);
      v144 = sub_2CE2A0();
      v146 = v145;
      v147 = *(v131 + 8);
      v147(v136, v133);
      v148 = sub_3F08(v144, v146, &v475);

      *(v142 + 4) = v148;
      v149 = v147;
      _os_log_impl(&dword_0, v140, v141, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult received unsupported directInvocation: %s", v142, 0xCu);
      sub_306C(v143);

      (*(v460 + 8))(v447, v462);
    }

    else
    {

      v149 = *(v131 + 8);
      v149(v136, v133);
      (*(v135 + 8))(v137, v134);
    }

    v242 = v464;
    v243 = v412;
    v244 = sub_2CB850();
    sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v245 = swift_allocError();
    (*(*(v244 - 8) + 104))(v246, enum case for PlaybackCode.ceGE49(_:), v244);
    v247 = v430;
    *v430 = v245;
    swift_storeEnumTagMultiPayload();
    v466(v247);
    (*(v242 + 8))(v247, v243);
    return (v149)(v456, v133);
  }

  v453 = v476;
  v452 = v477;
  sub_20410(&qword_34CC70, &qword_2D0D78);
  v221 = sub_2CA460();
  v222 = v428;
  v463 = *(v221 + 16);
  if (v463)
  {
    v223 = 0;
    v467 = v471 + 16;
    v468 = v471 + 8;
    v224 = &qword_34CCA0;
    v459 = v221;
    v411 = v60;
    while (v223 < *(v221 + 16))
    {
      v225 = v471;
      v226 = v221 + ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v223;
      v227 = v469;
      v228 = *(v469 + 48);
      *v60 = v223;
      v229 = v470;
      v458 = *(v225 + 16);
      (v458)(v60 + v228, v226, v470);
      v230 = v461;
      sub_14A58(v60, v461, v224, &unk_2D0DD0);
      v231 = v222;
      v232 = v457;
      v233 = v224;
      sub_F3F4(v230, v457, v224, &unk_2D0DD0);
      v234 = *(v227 + 48);
      v235 = sub_2CE060();
      v237 = v236;
      v238 = *(v225 + 8);
      v239 = &v232[v234];
      v222 = v231;
      v238(v239, v229);
      if (v237)
      {
        if (v235 == v453 && v237 == v452)
        {

LABEL_106:
          sub_30B8(&v476, &qword_34CCB0, &qword_2D5710);

          v349 = v418;
          sub_14A58(v461, v418, &qword_34CCA0, &unk_2D0DD0);
          v350 = v471;
          v351 = *(v471 + 32);
          v352 = v417;
          v353 = v238;
          v354 = v470;
          v351(v417, v349 + *(v469 + 48), v470);
          v355 = v419;
          v351(v419, v352, v354);
          v356 = v437;
          v357 = v458;
          (v458)(v437, v355, v354);
          (*(v350 + 56))(v356, 0, 1, v354);
          v358 = v441;
          sub_72E4C(v356);
          sub_30B8(v356, &qword_34CC98, &unk_2D3120);
          v474[3] = v354;
          v359 = sub_F390(v474);
          v357(v359, v355, v354);
          v360 = v358;
          v361 = v438;
          sub_2CA220();
          v362 = v430;
          v363 = v440;
          sub_2CA370();
          (*(v439 + 8))(v361, v363);
          v364 = v412;
          swift_storeEnumTagMultiPayload();
          v466(v362);
          (*(v464 + 8))(v362, v364);
          v353(v355, v354);
          return (*(v450 + 8))(v456, v451);
        }

        v241 = sub_2CEEA0();

        if (v241)
        {
          goto LABEL_106;
        }
      }

      v223 = (v223 + 1);
      v224 = v233;
      sub_30B8(v461, v233, &unk_2D0DD0);
      v221 = v459;
      v60 = v411;
      if (v463 == v223)
      {
        goto LABEL_57;
      }
    }

LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

LABEL_57:

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v248 = v462;
  v249 = sub_3ED0(v462, static Logger.default);
  swift_beginAccess();
  v250 = v460;
  (*(v460 + 16))(v222, v249, v248);
  sub_F3F4(&v476, v474, &qword_34CCB0, &qword_2D5710);
  v251 = sub_2CDFE0();
  v252 = sub_2CE680();
  sub_30B8(&v476, &qword_34CCB0, &qword_2D5710);
  v253 = os_log_type_enabled(v251, v252);
  v254 = v466;
  if (v253)
  {
    v255 = swift_slowAlloc();
    v256 = swift_slowAlloc();
    v474[0] = v256;
    *v255 = 136315138;
    v257 = sub_3F08(v453, v452, v474);
    sub_30B8(&v476, &qword_34CCB0, &qword_2D5710);
    *(v255 + 4) = v257;
    _os_log_impl(&dword_0, v251, v252, "MediaDestinationDisambiguationStrategy#parseDisambiguationResult could not find selected content for uso graph playlistName: %s", v255, 0xCu);
    sub_306C(v256);
  }

  else
  {
    sub_30B8(&v476, &qword_34CCB0, &qword_2D5710);
  }

  (*(v250 + 8))(v222, v248);
  v303 = v430;
  v304 = sub_2CB850();
  sub_33458(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
  v305 = swift_allocError();
  (*(*(v304 - 8) + 104))(v306, enum case for PlaybackCode.ceGE50(_:), v304);
  *v303 = v305;
  v307 = v412;
  swift_storeEnumTagMultiPayload();
  v254(v303);
  (*(v464 + 8))(v303, v307);
  return (*(v450 + 8))(v456, v451);
}

uint64_t sub_32020(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v24 = a6;
  v25 = a7;
  v26 = a3;
  v27 = a4;
  v12 = *v7;
  v13 = sub_20410(&qword_34CC70, &qword_2D0D78);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  v17 = v7[3];
  (*(v14 + 16))(&v24 - v15, a5, v13);
  v18 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = *(v12 + 80);
  *(v19 + 3) = *(v12 + 88);
  *(v19 + 4) = v8;
  *(v19 + 5) = a1;
  *(v19 + 6) = a2;
  v20 = v25;
  *(v19 + 7) = v24;
  *(v19 + 8) = v20;
  (*(v14 + 32))(&v19[v18], v16, v13);
  v21 = *(*v17 + 232);

  v22 = a2;

  v21(a1, v26, v27, v22, sub_32818, v19);
}

uint64_t sub_32214(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v46 = a8;
  v47 = a4;
  v43 = a7;
  v44 = a2;
  v48 = a3;
  v45 = a1;
  v11 = *v8;
  v40 = a5;
  v41 = v11;
  v12 = sub_20410(&qword_34CC70, &qword_2D0D78);
  v42 = *(v12 - 8);
  __chkstk_darwin(v12);
  v39 = &v38 - v13;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  v19 = sub_2CDFE0();
  v20 = sub_2CE690();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "MediaDestinationDisambiguationStrategy#promptForDisambiguationLegacy...", v21, 2u);
  }

  (*(v15 + 8))(v17, v14);
  v38 = v9[3];
  v22 = v42;
  v23 = v39;
  (*(v42 + 16))(v39, a6, v12);
  v24 = (*(v22 + 80) + 96) & ~*(v22 + 80);
  v25 = swift_allocObject();
  v27 = v40;
  v26 = v41;
  *(v25 + 2) = *(v41 + 80);
  v29 = v47;
  v28 = v48;
  *(v25 + 3) = *(v26 + 88);
  *(v25 + 4) = v28;
  *(v25 + 5) = v29;
  *(v25 + 6) = v27;
  v31 = v45;
  v30 = v46;
  *(v25 + 7) = v9;
  *(v25 + 8) = v31;
  v32 = v43;
  v33 = v44;
  *(v25 + 9) = v44;
  *(v25 + 10) = v32;
  *(v25 + 11) = v30;
  (*(v22 + 32))(&v25[v24], v23, v12);
  v34 = *(*v38 + 232);
  v43 = *v38 + 232;

  v35 = v27;

  v36 = v33;

  v34(v31, v48, v29, v36, sub_33220, v25);
}

uint64_t sub_325BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v24 = a5;
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  v19 = sub_2CDFE0();
  v20 = sub_2CE690();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v23 = a4;
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "MediaDestinationDisambiguationStrategy#makePromptForDisambiguation...", v21, 2u);
    a4 = v23;
  }

  (*(v15 + 8))(v17, v14);
  sub_35E0((v9 + 72), *(v9 + 96));
  if (sub_2CC4B0())
  {
    return sub_32020(v25, v26, v27, a4, a6, a7, a8);
  }

  else
  {
    return sub_32214(v25, v26, v27, a4, v24, a6, a7, a8);
  }
}

uint64_t sub_32818(uint64_t a1)
{
  v3 = *(sub_20410(&qword_34CC70, &qword_2D0D78) - 8);
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1 + ((*(v3 + 80) + 72) & ~*(v3 + 80));

  return sub_2BB5C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_328A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v80 = a5;
  v81 = a6;
  v10 = sub_2CD230();
  v78 = *(v10 - 8);
  v79 = v10;
  __chkstk_darwin(v10);
  v76 = v11;
  v77 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2C9B80();
  __chkstk_darwin(v12 - 8);
  v72 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2CA630();
  v73 = *(v84 - 8);
  v14 = __chkstk_darwin(v84);
  v74 = v15;
  v75 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v83 = &v62 - v16;
  v67 = sub_2CB260();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v23 = v22 - 8;
  v69 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v70 = v25;
  v71 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v62 - v26;
  v28 = sub_2CA130();
  (*(*(v28 - 8) + 16))(v27, a2, v28);
  v29 = *(v23 + 56);
  v82 = v27;
  *&v27[v29] = a3;
  v30 = a3;
  v31 = sub_2CB460();
  if (!v31)
  {
    sub_2CB180();
    v31 = sub_2CB170();
  }

  v32 = v31;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v33 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  (*(v19 + 16))(v21, v33, v18);

  v34 = sub_2CDFE0();
  v35 = v21;
  v36 = sub_2CE660();

  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v64 = a1;
    v39 = v38;
    v85 = v38;
    *v37 = 136315138;
    sub_2CB130();
    v63 = v35;
    v40 = v65;
    sub_2CD3C0();

    v41 = sub_2CB200();
    v62 = v18;
    v42 = v32;
    v43 = a4;
    v45 = v44;
    (*(v66 + 8))(v40, v67);
    v46 = sub_3F08(v41, v45, &v85);
    a4 = v43;
    v32 = v42;

    *(v37 + 4) = v46;
    _os_log_impl(&dword_0, v34, v36, "MediaItemDisambiguationStrategy#disambiguationSnippet with responseMode = %s", v37, 0xCu);
    sub_306C(v39);
    a1 = v64;

    (*(v19 + 8))(v63, v62);
  }

  else
  {

    (*(v19 + 8))(v35, v18);
  }

  v68 = v32;
  v47 = sub_2C9B40();
  __chkstk_darwin(v47);
  *(&v62 - 4) = a4;
  *(&v62 - 3) = v32;
  v48 = v82;
  v49 = v83;
  *(&v62 - 2) = v82;
  sub_2CA560();
  v51 = v77;
  v50 = v78;
  v52 = v79;
  (*(v78 + 16))(v77, a1, v79);
  v53 = v71;
  sub_F3F4(v48, v71, &qword_34C6E8, &unk_2D0FF0);
  v54 = v73;
  v55 = v75;
  (*(v73 + 16))(v75, v49, v84);
  v56 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v57 = (v76 + *(v69 + 80) + v56) & ~*(v69 + 80);
  v58 = (v70 + *(v54 + 80) + v57) & ~*(v54 + 80);
  v59 = swift_allocObject();
  (*(v50 + 32))(v59 + v56, v51, v52);
  sub_14A58(v53, v59 + v57, &qword_34C6E8, &unk_2D0FF0);
  v60 = v84;
  (*(v54 + 32))(v59 + v58, v55, v84);
  sub_20410(&unk_353030, &unk_2D1450);
  sub_2CE4F0();

  (*(v54 + 8))(v83, v60);
  return sub_30B8(v82, &qword_34C6E8, &unk_2D0FF0);
}

uint64_t sub_33074(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2CD230() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2CA630() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_E664;

  return sub_2CEB4(a1, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_332AC(uint64_t a1, char a2)
{
  v5 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20410(&unk_353020, &unk_2D0970) - 8);
  return sub_2B070(a1, a2 & 1, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));
}

uint64_t sub_333BC(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_33458(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_334A0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_33504(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v102 = a4;
  v105 = a2;
  v106 = a3;
  v104 = a1;
  v7 = sub_2CE000();
  v109 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v95 - v12;
  __chkstk_darwin(v11);
  v101 = &v95 - v14;
  v15 = sub_2CDFD0();
  v110 = *(v15 - 8);
  v111 = v15;
  v16 = *(v110 + 64);
  v17 = __chkstk_darwin(v15);
  v18 = __chkstk_darwin(v17);
  v20 = &v95 - v19;
  __chkstk_darwin(v18);
  v22 = &v95 - v21;
  v23 = sub_2CB650();
  v24 = v5[3];
  v103 = v5[4];
  v25 = v5[2];
  v107 = v7;
  v108 = v25;
  if (v23)
  {
    v100 = v13;
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    v26 = qword_35F760;
    sub_2CDFB0();
    v27 = v110;
    v28 = v111;
    (*(v110 + 16))(v20, v22, v111);
    v29 = (*(v27 + 80) + 33) & ~*(v27 + 80);
    v30 = (v16 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = v22;
    v32 = swift_allocObject();
    *(v32 + 16) = "catServiceExecute";
    *(v32 + 24) = 17;
    *(v32 + 32) = 2;
    (*(v27 + 32))(v32 + v29, v20, v28);
    v33 = (v32 + v30);
    *v33 = v102;
    v33[1] = a5;

    v34 = sub_2CE9E0();
    sub_20410(&qword_34CEA8, &unk_2D0EB0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_2D0E40;
    *(v35 + 56) = &type metadata for String;
    v36 = sub_1087C();
    *(v35 + 32) = v108;
    *(v35 + 40) = v24;
    *(v35 + 96) = &type metadata for String;
    *(v35 + 104) = v36;
    *(v35 + 64) = v36;
    strcpy((v35 + 72), "GenericError");
    *(v35 + 85) = 0;
    *(v35 + 86) = -5120;

    LOBYTE(v93) = 2;
    v102 = v31;
    sub_2CDF90(v34, &dword_0, v26, "catServiceExecute", 17, 2, v31, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v93, v35);

    v37 = swift_allocObject();
    *(v37 + 16) = sub_13D80;
    *(v37 + 24) = v32;
    v97 = v37;
    v38 = qword_34BF58;

    if (v38 != -1)
    {
      swift_once();
    }

    v39 = v107;
    v40 = sub_3ED0(v107, static Logger.default);
    swift_beginAccess();
    v41 = v109;
    v42 = v101;
    v98 = *(v109 + 16);
    v99 = v109 + 16;
    v98(v101, v40, v39);

    v43 = sub_2CDFE0();
    v44 = sub_2CE660();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *v45 = 136315394;
      v46 = v108;
      *(v45 + 4) = sub_3F08(v108, v24, &v112);
      *(v45 + 12) = 2080;
      v96 = v40;
      *(v45 + 14) = sub_3F08(0x45636972656E6547, 0xEC000000726F7272, &v112);
      _os_log_impl(&dword_0, v43, v44, "Evaluating CAT family:%s id:%s...", v45, 0x16u);
      swift_arrayDestroy();

      v47 = v101;
      v48 = v39;
      v40 = v96;
      v101 = *(v109 + 8);
      (v101)(v47, v39);
    }

    else
    {

      v48 = v39;
      v101 = *(v41 + 8);
      (v101)(v42, v39);
      v46 = v108;
    }

    v112 = v46;
    v113 = v24;

    v116._countAndFlagsBits = 35;
    v116._object = 0xE100000000000000;
    sub_2CE350(v116);
    v117._countAndFlagsBits = 0x45636972656E6547;
    v117._object = 0xEC000000726F7272;
    sub_2CE350(v117);
    v80 = v112;
    v79 = v113;
    v81 = sub_2CB460();
    if (!v81)
    {
      sub_2CB180();
      v81 = sub_2CB170();
    }

    v82 = v81;
    v83 = swift_allocObject();
    v83[2] = v82;
    v83[3] = sub_13DB4;
    v83[4] = v97;
    v84 = sub_2CB180();
    __chkstk_darwin(v84);
    v85 = v104;
    *(&v95 - 10) = v103;
    *(&v95 - 9) = v85;
    v86 = v106;
    *(&v95 - 8) = v105;
    *(&v95 - 7) = v86;
    *(&v95 - 6) = 0;
    *(&v95 - 5) = v80;
    v92 = v79;
    v93 = sub_3E06C;
    v94 = v83;

    sub_2CB0F0();

    (*(v110 + 8))(v102, v111);
    v87 = v100;
    v98(v100, v40, v48);
    v88 = sub_2CDFE0();
    v89 = sub_2CE680();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v112 = v91;
      *v90 = 136315138;
      *(v90 + 4) = sub_3F08(0x45636972656E6547, 0xEC000000726F7272, &v112);
      _os_log_impl(&dword_0, v88, v89, "UnsupportedMediaItemsCellularDataSettings invoked on HomePod, defaulting to %s", v90, 0xCu);
      sub_306C(v91);
    }

    return (v101)(v87, v48);
  }

  else
  {
    v99 = 0x80000000002DAD60;
    v100 = v10;
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    v49 = qword_35F760;
    sub_2CDFB0();
    v50 = v110;
    v51 = v111;
    (*(v110 + 16))(v20, &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v111);
    v52 = (*(v50 + 80) + 33) & ~*(v50 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = "catServiceExecute";
    *(v53 + 24) = 17;
    *(v53 + 32) = 2;
    (*(v50 + 32))(v53 + v52, v20, v51);
    v54 = (v53 + ((v16 + v52 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v54 = v102;
    v54[1] = a5;

    v55 = sub_2CE9E0();
    sub_20410(&qword_34CEA8, &unk_2D0EB0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_2D0E40;
    *(v56 + 56) = &type metadata for String;
    v57 = sub_1087C();
    v58 = v108;
    *(v56 + 32) = v108;
    *(v56 + 40) = v24;
    *(v56 + 96) = &type metadata for String;
    *(v56 + 104) = v57;
    *(v56 + 64) = v57;
    *(v56 + 72) = 0xD000000000000029;
    v59 = v99;
    *(v56 + 80) = v99;

    LOBYTE(v93) = 2;
    v102 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2CDF90(v55, &dword_0, v49, "catServiceExecute", 17, 2, v102, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v93, v56);

    v60 = swift_allocObject();
    *(v60 + 16) = sub_13D80;
    *(v60 + 24) = v53;
    v61 = qword_34BF58;
    v101 = v53;

    if (v61 != -1)
    {
      swift_once();
    }

    v62 = v107;
    v63 = sub_3ED0(v107, static Logger.default);
    swift_beginAccess();
    v64 = v109;
    v65 = v100;
    (*(v109 + 16))(v100, v63, v62);

    v66 = sub_2CDFE0();
    v67 = sub_2CE660();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v98 = v60;
      v112 = v69;
      *v68 = 136315394;
      *(v68 + 4) = sub_3F08(v58, v24, &v112);
      *(v68 + 12) = 2080;
      *(v68 + 14) = sub_3F08(0xD000000000000029, v59, &v112);
      _os_log_impl(&dword_0, v66, v67, "Evaluating CAT family:%s id:%s...", v68, 0x16u);
      swift_arrayDestroy();
      v60 = v98;
    }

    (*(v64 + 8))(v65, v62);
    v112 = v58;
    v113 = v24;

    v114._countAndFlagsBits = 35;
    v114._object = 0xE100000000000000;
    sub_2CE350(v114);
    v115._countAndFlagsBits = 0xD000000000000029;
    v115._object = v59;
    sub_2CE350(v115);
    v71 = v112;
    v70 = v113;
    v72 = sub_2CB460();
    if (!v72)
    {
      sub_2CB180();
      v72 = sub_2CB170();
    }

    v73 = v72;
    v74 = swift_allocObject();
    v74[2] = v73;
    v74[3] = sub_13DB4;
    v74[4] = v60;
    v75 = sub_2CB180();
    __chkstk_darwin(v75);
    v76 = v104;
    *(&v95 - 10) = v103;
    *(&v95 - 9) = v76;
    v77 = v106;
    *(&v95 - 8) = v105;
    *(&v95 - 7) = v77;
    *(&v95 - 6) = 0;
    *(&v95 - 5) = v71;
    v92 = v70;
    v93 = sub_3E06C;
    v94 = v74;

    sub_2CB0F0();

    return (*(v110 + 8))(v102, v111);
  }
}

uint64_t sub_34234(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = v5[3];
  v57 = v5[4];
  v17 = v5[2];
  v51 = v16;
  v64 = 0x80000000002DAD40;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v58 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v19, v13);
  v22 = (v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v59;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v17;
  *(v24 + 32) = v17;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000019;
  v27 = v64;
  *(v24 + 80) = v64;

  LOBYTE(v48) = 2;
  v59 = v15;
  sub_2CDF90(v23, &dword_0, v18, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v48, v24);

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v20;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD000000000000019, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000019;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_348A4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v53 = a4;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v7 = sub_2CE000();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v62 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = v5[3];
  v56 = v5[4];
  v17 = v5[2];
  v50 = v16;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v57 = v10;
  v22 = *(v10 + 32);
  v61 = v9;
  v22(v21 + v19, v13);
  v23 = (v21 + v20);
  *v23 = v53;
  v23[1] = a5;

  v24 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2D0E40;
  *(v25 + 56) = &type metadata for String;
  v26 = sub_1087C();
  v52 = v17;
  *(v25 + 32) = v17;
  v27 = v50;
  *(v25 + 40) = v50;
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v26;
  *(v25 + 64) = v26;
  *(v25 + 72) = 0x726F7774654E6F4ELL;
  *(v25 + 80) = 0xE90000000000006BLL;

  LOBYTE(v48) = 2;
  v53 = v15;
  sub_2CDF90(v24, &dword_0, v18, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v48, v25);

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v21;
  v51 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v55;
  v31 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v32 = v54;
  v33 = v62;
  (*(v54 + 16))(v62, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v52;
    *(v36 + 4) = sub_3F08(v52, v27, &v63);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0x726F7774654E6F4ELL, 0xE90000000000006BLL, &v63);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v32 + 8))(v62, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v52;
  }

  v63 = v37;
  v64 = v27;

  v65._countAndFlagsBits = 35;
  v65._object = 0xE100000000000000;
  sub_2CE350(v65);
  v66._countAndFlagsBits = 0x726F7774654E6F4ELL;
  v66._object = 0xE90000000000006BLL;
  sub_2CE350(v66);
  v39 = v63;
  v38 = v64;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v51;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v58;
  v44 = v59;
  *(&v50 - 10) = v56;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v60;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v57 + 8))(v53, v61);
}

uint64_t sub_34F18(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v54 = a4;
  v60 = a2;
  v61 = a3;
  v59 = a1;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v63 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[3];
  v57 = v5[4];
  v17 = v5[2];
  v51 = v16;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v58 = v10;
  v22 = *(v10 + 32);
  v62 = v9;
  v22(v21 + v19, v13);
  v23 = (v21 + v20);
  *v23 = v54;
  v23[1] = a5;

  v24 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2D0E40;
  *(v25 + 56) = &type metadata for String;
  v26 = sub_1087C();
  v53 = v17;
  *(v25 + 32) = v17;
  v27 = v51;
  *(v25 + 40) = v51;
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v26;
  *(v25 + 64) = v26;
  *(v25 + 72) = 0x726F727245706D41;
  *(v25 + 80) = 0xE800000000000000;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v24, &dword_0, v18, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v25);

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v21;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v32 = v55;
  v33 = v63;
  (*(v55 + 16))(v63, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v27, &v64);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0x726F727245706D41, 0xE800000000000000, &v64);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v32 + 8))(v63, v30);
    v38 = v58;
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v38 = v58;
    v37 = v53;
  }

  v64 = v37;
  v65 = v27;

  v66._countAndFlagsBits = 35;
  v66._object = 0xE100000000000000;
  sub_2CE350(v66);
  v67._countAndFlagsBits = 0x726F727245706D41;
  v67._object = 0xE800000000000000;
  sub_2CE350(v67);
  v40 = v64;
  v39 = v65;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v52;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v59;
  v45 = v60;
  *(&v51 - 10) = v57;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v61;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v38 + 8))(v54, v62);
}

uint64_t sub_35588(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v53 = a4;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v7 = sub_2CE000();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v62 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v56 = v5[4];
  v16 = v5[3];
  v63 = v5[2];
  v50 = v16;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v57 = v10;
  v20 = *(v10 + 32);
  v61 = v9;
  v20(v19 + v18, v13);
  v21 = (v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = v53;
  v21[1] = a5;

  v22 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v25 = v50;
  *(v23 + 32) = v63;
  *(v23 + 40) = v25;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  strcpy((v23 + 72), "PrivacyAckReqd");
  *(v23 + 87) = -18;

  LOBYTE(v47) = 2;
  v53 = v15;
  sub_2CDF90(v22, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v47, v23);

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v19;
  v51 = v26;
  v52 = v19;
  v27 = qword_34BF58;

  v28 = v25;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v62;
  (*(v54 + 16))(v62, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v63;
    *(v35 + 4) = sub_3F08(v63, v28, &v64);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_3F08(0x4179636176697250, 0xEE00647165526B63, &v64);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v62, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v36 = v63;
  }

  v64 = v36;
  v65 = v28;

  v66._countAndFlagsBits = 35;
  v66._object = 0xE100000000000000;
  sub_2CE350(v66);
  v67._countAndFlagsBits = 0x4179636176697250;
  v67._object = 0xEE00647165526B63;
  sub_2CE350(v67);
  v38 = v64;
  v37 = v65;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v51;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  v44 = v58;
  v43 = v59;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v43;
  *(&v49 - 7) = v60;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v38;
  v46 = v37;
  v47 = sub_3E06C;
  v48 = v41;

  sub_2CB0F0();

  return (*(v57 + 8))(v53, v61);
}

uint64_t sub_35C1C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v53 = a4;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v7 = sub_2CE000();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v62 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v56 = v5[4];
  v16 = v5[3];
  v63 = v5[2];
  v50 = v16;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v57 = v10;
  v20 = *(v10 + 32);
  v61 = v9;
  v20(v19 + v18, v13);
  v21 = (v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = v53;
  v21[1] = a5;

  v22 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v25 = v50;
  *(v23 + 32) = v63;
  *(v23 + 40) = v25;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  *(v23 + 72) = 0x6E49746F4E707041;
  *(v23 + 80) = 0xEF64656C6C617473;

  LOBYTE(v47) = 2;
  v53 = v15;
  sub_2CDF90(v22, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v47, v23);

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v19;
  v51 = v26;
  v52 = v19;
  v27 = qword_34BF58;

  v28 = v25;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v62;
  (*(v54 + 16))(v62, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v63;
    *(v35 + 4) = sub_3F08(v63, v28, &v64);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_3F08(0x6E49746F4E707041, 0xEF64656C6C617473, &v64);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v62, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v36 = v63;
  }

  v64 = v36;
  v65 = v28;

  v66._countAndFlagsBits = 35;
  v66._object = 0xE100000000000000;
  sub_2CE350(v66);
  v67._countAndFlagsBits = 0x6E49746F4E707041;
  v67._object = 0xEF64656C6C617473;
  sub_2CE350(v67);
  v38 = v64;
  v37 = v65;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v51;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  v44 = v58;
  v43 = v59;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v43;
  *(&v49 - 7) = v60;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v38;
  v46 = v37;
  v47 = sub_3E06C;
  v48 = v41;

  sub_2CB0F0();

  return (*(v57 + 8))(v53, v61);
}

uint64_t sub_362B0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = v5[3];
  v57 = v5[4];
  v17 = v5[2];
  v51 = v16;
  v64 = 0x80000000002DAD20;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v58 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v19, v13);
  v22 = (v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v59;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v17;
  *(v24 + 32) = v17;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000017;
  v27 = v64;
  *(v24 + 80) = v64;

  LOBYTE(v48) = 2;
  v59 = v15;
  sub_2CDF90(v23, &dword_0, v18, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v48, v24);

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v20;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD000000000000017, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000017;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_36920(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = v5[3];
  v57 = v5[4];
  v17 = v5[2];
  v51 = v16;
  v64 = 0x80000000002DAD00;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v58 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v19, v13);
  v22 = (v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v59;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v17;
  *(v24 + 32) = v17;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001ALL;
  v27 = v64;
  *(v24 + 80) = v64;

  LOBYTE(v48) = 2;
  v59 = v15;
  sub_2CDF90(v23, &dword_0, v18, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v48, v24);

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v20;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD00000000000001ALL, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD00000000000001ALL;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_36F90(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = v5[3];
  v57 = v5[4];
  v17 = v5[2];
  v51 = v16;
  v64 = 0x80000000002DACD0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v58 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v19, v13);
  v22 = (v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v59;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v17;
  *(v24 + 32) = v17;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000021;
  v27 = v64;
  *(v24 + 80) = v64;

  LOBYTE(v48) = 2;
  v59 = v15;
  sub_2CDF90(v23, &dword_0, v18, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v48, v24);

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v20;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD000000000000021, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000021;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_37600(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = v5[3];
  v57 = v5[4];
  v17 = v5[2];
  v51 = v16;
  v64 = 0x80000000002DACA0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v58 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v19, v13);
  v22 = (v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v59;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v17;
  *(v24 + 32) = v17;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000025;
  v27 = v64;
  *(v24 + 80) = v64;

  LOBYTE(v48) = 2;
  v59 = v15;
  sub_2CDF90(v23, &dword_0, v18, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v48, v24);

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v20;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD000000000000025, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000025;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_37C70(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = v5[3];
  v57 = v5[4];
  v17 = v5[2];
  v51 = v16;
  v64 = 0x80000000002DAC80;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v58 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v19, v13);
  v22 = (v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v59;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v17;
  *(v24 + 32) = v17;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000018;
  v27 = v64;
  *(v24 + 80) = v64;

  LOBYTE(v48) = 2;
  v59 = v15;
  sub_2CDF90(v23, &dword_0, v18, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v48, v24);

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v20;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD000000000000018, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000018;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_382E0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = v5[3];
  v57 = v5[4];
  v17 = v5[2];
  v51 = v16;
  v64 = 0x80000000002DAC60;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v58 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v19, v13);
  v22 = (v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v59;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v17;
  *(v24 + 32) = v17;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001CLL;
  v27 = v64;
  *(v24 + 80) = v64;

  LOBYTE(v48) = 2;
  v59 = v15;
  sub_2CDF90(v23, &dword_0, v18, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v48, v24);

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v20;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD00000000000001CLL, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD00000000000001CLL;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_38950(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = v5[3];
  v57 = v5[4];
  v17 = v5[2];
  v51 = v16;
  v64 = 0x80000000002DAC30;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v58 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v19, v13);
  v22 = (v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v59;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v17;
  *(v24 + 32) = v17;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000002CLL;
  v27 = v64;
  *(v24 + 80) = v64;

  LOBYTE(v48) = 2;
  v59 = v15;
  sub_2CDF90(v23, &dword_0, v18, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v48, v24);

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v20;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD00000000000002CLL, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD00000000000002CLL;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_38FC0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = v5[3];
  v57 = v5[4];
  v17 = v5[2];
  v51 = v16;
  v64 = 0x80000000002DAC00;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v58 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v19, v13);
  v22 = (v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v59;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v17;
  *(v24 + 32) = v17;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000022;
  v27 = v64;
  *(v24 + 80) = v64;

  LOBYTE(v48) = 2;
  v59 = v15;
  sub_2CDF90(v23, &dword_0, v18, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v48, v24);

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v20;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD000000000000022, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000022;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_39630(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = v5[3];
  v57 = v5[4];
  v17 = v5[2];
  v51 = v16;
  v64 = 0x80000000002DABD0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v58 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v19, v13);
  v22 = (v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v59;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v17;
  *(v24 + 32) = v17;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000029;
  v27 = v64;
  *(v24 + 80) = v64;

  LOBYTE(v48) = 2;
  v59 = v15;
  sub_2CDF90(v23, &dword_0, v18, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v48, v24);

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v20;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD000000000000029, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000029;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_39CA0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = v5[3];
  v57 = v5[4];
  v17 = v5[2];
  v51 = v16;
  v64 = 0x80000000002DABA0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v58 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v19, v13);
  v22 = (v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v59;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v17;
  *(v24 + 32) = v17;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000027;
  v27 = v64;
  *(v24 + 80) = v64;

  LOBYTE(v48) = 2;
  v59 = v15;
  sub_2CDF90(v23, &dword_0, v18, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v48, v24);

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v20;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD000000000000027, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000027;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_3A310(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = v5[3];
  v57 = v5[4];
  v17 = v5[2];
  v51 = v16;
  v64 = 0x80000000002DAB70;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v58 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v19, v13);
  v22 = (v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v59;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v17;
  *(v24 + 32) = v17;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000002BLL;
  v27 = v64;
  *(v24 + 80) = v64;

  LOBYTE(v48) = 2;
  v59 = v15;
  sub_2CDF90(v23, &dword_0, v18, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v48, v24);

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v20;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD00000000000002BLL, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD00000000000002BLL;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_3A980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v58 = a1;
  v59 = a2;
  v6 = sub_2CE000();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v61 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  v15 = v4[3];
  v56 = v4[4];
  v16 = v4[2];
  v50 = v15;
  v62 = 0x80000000002DAB40;
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v18 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v57 = v9;
  v21 = *(v9 + 32);
  v60 = v8;
  v21(v20 + v18, v12);
  v22 = (v20 + v19);
  *v22 = v53;
  v22[1] = a4;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v16;
  *(v24 + 32) = v16;
  v26 = v50;
  *(v24 + 40) = v50;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000024;
  *(v24 + 80) = v62;

  LOBYTE(v47) = 2;
  v52 = v14;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v14, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v47, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v51 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v61;
  (*(v54 + 16))(v61, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v53;
    *(v35 + 4) = sub_3F08(v53, v26, &v63);
    *(v35 + 12) = 2080;
    v37 = v62;
    *(v35 + 14) = sub_3F08(0xD000000000000024, v62, &v63);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v61, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v37 = v62;
    v36 = v53;
  }

  v63 = v36;
  v64 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000024;
  v68._object = v37;
  sub_2CE350(v68);
  v39 = v63;
  v38 = v64;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v51;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v44 = v58;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v59;
  *(&v49 - 7) = v65;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v39;
  v46 = v38;
  v47 = sub_3E06C;
  v48 = v42;

  sub_2CB0F0();

  (*(v57 + 8))(v52, v60);
  return sub_30B8(v65, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_3B03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v58 = a1;
  v59 = a2;
  v6 = sub_2CE000();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v61 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  v15 = v4[3];
  v56 = v4[4];
  v16 = v4[2];
  v50 = v15;
  v62 = 0x80000000002DAB10;
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v18 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v57 = v9;
  v21 = *(v9 + 32);
  v60 = v8;
  v21(v20 + v18, v12);
  v22 = (v20 + v19);
  *v22 = v53;
  v22[1] = a4;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v16;
  *(v24 + 32) = v16;
  v26 = v50;
  *(v24 + 40) = v50;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000025;
  *(v24 + 80) = v62;

  LOBYTE(v47) = 2;
  v52 = v14;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v14, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v47, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v51 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v61;
  (*(v54 + 16))(v61, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v53;
    *(v35 + 4) = sub_3F08(v53, v26, &v63);
    *(v35 + 12) = 2080;
    v37 = v62;
    *(v35 + 14) = sub_3F08(0xD000000000000025, v62, &v63);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v61, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v37 = v62;
    v36 = v53;
  }

  v63 = v36;
  v64 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000025;
  v68._object = v37;
  sub_2CE350(v68);
  v39 = v63;
  v38 = v64;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v51;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v44 = v58;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v59;
  *(&v49 - 7) = v65;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v39;
  v46 = v38;
  v47 = sub_3E06C;
  v48 = v42;

  sub_2CB0F0();

  (*(v57 + 8))(v52, v60);
  return sub_30B8(v65, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_3B6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v58 = a1;
  v59 = a2;
  v6 = sub_2CE000();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v61 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  v15 = v4[3];
  v56 = v4[4];
  v16 = v4[2];
  v50 = v15;
  v62 = 0x80000000002DAAE0;
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v18 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v57 = v9;
  v21 = *(v9 + 32);
  v60 = v8;
  v21(v20 + v18, v12);
  v22 = (v20 + v19);
  *v22 = v53;
  v22[1] = a4;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v16;
  *(v24 + 32) = v16;
  v26 = v50;
  *(v24 + 40) = v50;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000026;
  *(v24 + 80) = v62;

  LOBYTE(v47) = 2;
  v52 = v14;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v14, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v47, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v51 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v61;
  (*(v54 + 16))(v61, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v53;
    *(v35 + 4) = sub_3F08(v53, v26, &v63);
    *(v35 + 12) = 2080;
    v37 = v62;
    *(v35 + 14) = sub_3F08(0xD000000000000026, v62, &v63);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v61, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v37 = v62;
    v36 = v53;
  }

  v63 = v36;
  v64 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000026;
  v68._object = v37;
  sub_2CE350(v68);
  v39 = v63;
  v38 = v64;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v51;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v44 = v58;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v59;
  *(&v49 - 7) = v65;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v39;
  v46 = v38;
  v47 = sub_3E06C;
  v48 = v42;

  sub_2CB0F0();

  (*(v57 + 8))(v52, v60);
  return sub_30B8(v65, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_3BDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a4;
  v59 = a1;
  v60 = a2;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v62 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = v5[3];
  v57 = v5[4];
  v17 = v5[2];
  v51 = v16;
  v63 = 0x80000000002DAAB0;
  v67 = 0;
  memset(v66, 0, sizeof(v66));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v58 = v10;
  v22 = *(v10 + 32);
  v61 = v9;
  v22(v21 + v19, v13);
  v23 = (v21 + v20);
  *v23 = v54;
  v23[1] = a5;

  v24 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2D0E40;
  *(v25 + 56) = &type metadata for String;
  v26 = sub_1087C();
  v54 = v17;
  *(v25 + 32) = v17;
  v27 = v51;
  *(v25 + 40) = v51;
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v26;
  *(v25 + 64) = v26;
  *(v25 + 72) = 0xD000000000000021;
  *(v25 + 80) = v63;

  LOBYTE(v48) = 2;
  v53 = v15;
  sub_2CDF90(v24, &dword_0, v18, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v48, v25);

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v21;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v32 = v55;
  v33 = v62;
  (*(v55 + 16))(v62, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v54;
    *(v36 + 4) = sub_3F08(v54, v27, &v64);
    *(v36 + 12) = 2080;
    v38 = v63;
    *(v36 + 14) = sub_3F08(0xD000000000000021, v63, &v64);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v32 + 8))(v62, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v38 = v63;
    v37 = v54;
  }

  v64 = v37;
  v65 = v27;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000021;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v64;
  v39 = v65;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v52;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v45 = v59;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v60;
  *(&v50 - 7) = v66;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v40;
  v47 = v39;
  v48 = sub_3E06C;
  v49 = v43;

  sub_2CB0F0();

  (*(v58 + 8))(v53, v61);
  return sub_30B8(v66, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_3C470(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = v5[3];
  v57 = v5[4];
  v17 = v5[2];
  v51 = v16;
  v64 = 0x80000000002DAA80;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v58 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v19, v13);
  v22 = (v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v59;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v17;
  *(v24 + 32) = v17;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000026;
  v27 = v64;
  *(v24 + 80) = v64;

  LOBYTE(v48) = 2;
  v59 = v15;
  sub_2CDF90(v23, &dword_0, v18, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v48, v24);

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v20;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD000000000000026, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000026;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_3CAE0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v59 = a4;
  v60 = a1;
  v61 = a2;
  v62 = a3;
  v7 = sub_2CE000();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = v5[3];
  v57 = v5[4];
  v17 = v5[2];
  v51 = v16;
  v64 = 0x80000000002DAA60;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v58 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v19, v13);
  v22 = (v20 + ((v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v59;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v53 = v17;
  *(v24 + 32) = v17;
  v26 = v51;
  *(v24 + 40) = v51;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000015;
  v27 = v64;
  *(v24 + 80) = v64;

  LOBYTE(v48) = 2;
  v59 = v15;
  sub_2CDF90(v23, &dword_0, v18, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v48, v24);

  v28 = swift_allocObject();
  *(v28 + 16) = sub_13D80;
  *(v28 + 24) = v20;
  v52 = v28;
  v29 = qword_34BF58;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = v56;
  v31 = sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v33 = v54;
  v32 = v55;
  (*(v55 + 16))(v54, v31, v30);

  v34 = sub_2CDFE0();
  v35 = sub_2CE660();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v53;
    *(v36 + 4) = sub_3F08(v53, v26, &v65);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_3F08(0xD000000000000015, v64, &v65);
    _os_log_impl(&dword_0, v34, v35, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();
    v27 = v64;

    (*(v32 + 8))(v33, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v37 = v53;
  }

  v65 = v37;
  v66 = v26;

  v67._countAndFlagsBits = 35;
  v67._object = 0xE100000000000000;
  sub_2CE350(v67);
  v68._countAndFlagsBits = 0xD000000000000015;
  v68._object = v27;
  sub_2CE350(v68);
  v39 = v65;
  v38 = v66;
  v40 = sub_2CB460();
  if (!v40)
  {
    sub_2CB180();
    v40 = sub_2CB170();
  }

  v41 = v40;
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_13DB4;
  v42[4] = v52;
  v43 = sub_2CB180();
  __chkstk_darwin(v43);
  v45 = v60;
  v44 = v61;
  *(&v50 - 10) = v57;
  *(&v50 - 9) = v45;
  *(&v50 - 8) = v44;
  *(&v50 - 7) = v62;
  *(&v50 - 6) = 0;
  *(&v50 - 5) = v39;
  v47 = v38;
  v48 = sub_3E06C;
  v49 = v42;

  sub_2CB0F0();

  return (*(v58 + 8))(v59, v63);
}

uint64_t sub_3D150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v55 = a1;
  v56 = a2;
  v6 = sub_2CE000();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v59 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v47 - v13;
  v54 = v4[4];
  v15 = v4[3];
  v60 = v4[2];
  v49 = v15;
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v17 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = "catServiceExecute";
  *(v18 + 24) = 17;
  *(v18 + 32) = 2;
  v57 = v9;
  v58 = v8;
  (*(v9 + 32))(v18 + v17, v12, v8);
  v19 = (v18 + ((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v51;
  v19[1] = a4;

  v20 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2D0E40;
  *(v21 + 56) = &type metadata for String;
  v22 = sub_1087C();
  v23 = v49;
  *(v21 + 32) = v60;
  *(v21 + 40) = v23;
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v22;
  *(v21 + 64) = v22;
  strcpy((v21 + 72), "GenericError");
  *(v21 + 85) = 0;
  *(v21 + 86) = -5120;

  LOBYTE(v45) = 2;
  sub_2CDF90(v20, &dword_0, v16, "catServiceExecute", 17, 2, v14, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v45, v21);

  v24 = swift_allocObject();
  *(v24 + 16) = sub_13D80;
  *(v24 + 24) = v18;
  v50 = v24;
  v25 = qword_34BF58;
  v51 = v18;

  v26 = v23;
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = v53;
  v28 = sub_3ED0(v53, static Logger.default);
  swift_beginAccess();
  v29 = v52;
  v30 = v59;
  (*(v52 + 16))(v59, v28, v27);

  v31 = sub_2CDFE0();
  v32 = sub_2CE660();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v48 = v14;
    v61 = v34;
    *v33 = 136315394;
    v35 = v60;
    *(v33 + 4) = sub_3F08(v60, v26, &v61);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_3F08(0x45636972656E6547, 0xEC000000726F7272, &v61);
    _os_log_impl(&dword_0, v31, v32, "Evaluating CAT family:%s id:%s...", v33, 0x16u);
    swift_arrayDestroy();
    v14 = v48;

    (*(v29 + 8))(v59, v27);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
    v35 = v60;
  }

  v61 = v35;
  v62 = v26;

  v65._countAndFlagsBits = 35;
  v65._object = 0xE100000000000000;
  sub_2CE350(v65);
  v66._countAndFlagsBits = 0x45636972656E6547;
  v66._object = 0xEC000000726F7272;
  sub_2CE350(v66);
  v37 = v61;
  v36 = v62;
  v38 = sub_2CB460();
  if (!v38)
  {
    sub_2CB180();
    v38 = sub_2CB170();
  }

  v39 = v38;
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = sub_13DB4;
  v40[4] = v50;
  v41 = sub_2CB180();
  __chkstk_darwin(v41);
  v42 = v55;
  *(&v47 - 10) = v54;
  *(&v47 - 9) = v42;
  *(&v47 - 8) = v56;
  *(&v47 - 7) = v63;
  *(&v47 - 6) = 0;
  *(&v47 - 5) = v37;
  v44 = v36;
  v45 = sub_3E06C;
  v46 = v40;

  sub_2CB0F0();

  (*(v57 + 8))(v14, v58);
  return sub_30B8(v63, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_3D81C(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v5 = v4;
  v64 = a4;
  v65 = a2;
  v58 = a3;
  v7 = sub_2CE000();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v56 - v14;
  v72 = a1;

  v16 = sub_2CB620();
  v70 = &type metadata for Bool;
  LOBYTE(v69) = v16 & 1;
  sub_270DC4(&v69, 0x68637461577369, 0xE700000000000000, v71);
  sub_30B8(v71, &qword_34CEA0, &qword_2D0FC0);
  v17 = sub_2CB5E0();
  v70 = &type metadata for Bool;
  LOBYTE(v69) = v17 & 1;
  sub_270DC4(&v69, 0x63614D7369, 0xE500000000000000, v71);
  sub_30B8(v71, &qword_34CEA0, &qword_2D0FC0);
  v18 = sub_2CB660();
  v70 = &type metadata for Bool;
  LOBYTE(v69) = v18 & 1;
  sub_270DC4(&v69, 0x6976654452587369, 0xEA00000000006563, v71);
  sub_30B8(v71, &qword_34CEA0, &qword_2D0FC0);
  v19 = v5[3];
  v59 = v5[4];
  v20 = v5[2];
  v68 = v19;
  v63 = v72;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v22 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v23 = v15;
  v24 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  v66 = v10;
  v67 = v9;
  (*(v10 + 32))(v25 + v22, v13, v9);
  v26 = (v25 + v24);
  v27 = v64;
  *v26 = v58;
  v26[1] = v27;

  v28 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2D0E40;
  *(v29 + 56) = &type metadata for String;
  v30 = sub_1087C();
  v57 = v20;
  v31 = v68;
  *(v29 + 32) = v20;
  *(v29 + 40) = v31;
  *(v29 + 96) = &type metadata for String;
  *(v29 + 104) = v30;
  *(v29 + 64) = v30;
  *(v29 + 72) = 0xD000000000000015;
  v58 = 0x80000000002DA9A0;
  *(v29 + 80) = 0x80000000002DA9A0;

  LOBYTE(v54) = 2;
  v64 = v23;
  sub_2CDF90(v28, &dword_0, v21, "catServiceExecute", 17, 2, v23, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v54, v29);

  v32 = swift_allocObject();
  *(v32 + 16) = sub_13D7C;
  *(v32 + 24) = v25;
  v56 = v32;
  v33 = qword_34BF58;

  v34 = v31;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = v62;
  v36 = sub_3ED0(v62, static Logger.default);
  swift_beginAccess();
  v38 = v60;
  v37 = v61;
  (*(v61 + 16))(v60, v36, v35);

  v39 = sub_2CDFE0();
  v40 = sub_2CE660();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *&v69 = swift_slowAlloc();
    *v41 = 136315394;
    v42 = v57;
    *(v41 + 4) = sub_3F08(v57, v68, &v69);
    *(v41 + 12) = 2080;
    v43 = v58;
    *(v41 + 14) = sub_3F08(0xD000000000000015, v58, &v69);
    _os_log_impl(&dword_0, v39, v40, "Evaluating CAT family:%s id:%s...", v41, 0x16u);
    swift_arrayDestroy();
    v34 = v68;

    (*(v37 + 8))(v38, v35);
    v44 = v66;
  }

  else
  {

    (*(v37 + 8))(v38, v35);
    v44 = v66;
    v43 = v58;
    v42 = v57;
  }

  *&v69 = v42;
  *(&v69 + 1) = v34;

  v73._countAndFlagsBits = 35;
  v73._object = 0xE100000000000000;
  sub_2CE350(v73);
  v74._countAndFlagsBits = 0xD000000000000015;
  v74._object = v43;
  sub_2CE350(v74);
  v45 = v69;
  v46 = sub_2CB460();
  if (!v46)
  {
    sub_2CB180();
    v46 = sub_2CB170();
  }

  v47 = v46;
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = sub_13D84;
  v48[4] = v56;
  v49 = sub_2CB180();
  __chkstk_darwin(v49);
  v50 = v63;
  *(&v56 - 10) = v59;
  *(&v56 - 9) = v50;
  v51 = v65;
  *(&v56 - 8) = 0;
  *(&v56 - 7) = v51;
  *(&v56 - 6) = 0;
  *(&v56 - 5) = v45;
  v53 = *(&v45 + 1);
  v54 = sub_3E010;
  v55 = v48;

  sub_2CB0F0();

  return (*(v44 + 8))(v64, v67);
}

uint64_t sub_3DFAC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_3E088@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v78 = a2;
  v79 = a1;
  v77 = sub_2CD490();
  v72 = *(v77 - 1);
  __chkstk_darwin(v77);
  v64 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_20410(&qword_34CFB0, &unk_2D1000);
  __chkstk_darwin(v69);
  v76 = &v64 - v3;
  v4 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v5 = __chkstk_darwin(v4 - 8);
  v66 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v70 = &v64 - v8;
  __chkstk_darwin(v7);
  v71 = &v64 - v9;
  v10 = sub_2CA870();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v75 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v64 - v14;
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v67 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v68 = &v64 - v21;
  v22 = __chkstk_darwin(v20);
  v65 = &v64 - v23;
  __chkstk_darwin(v22);
  v25 = &v64 - v24;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v26 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  v27 = *(v17 + 16);
  v74 = v26;
  v73 = v27;
  v27(v25, v26, v16);
  v28 = sub_2CDFE0();
  v29 = sub_2CE670();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "SearchForMediaNeedsValueStrategy#actionForInput...", v30, 2u);
  }

  v31 = *(v17 + 8);
  v32 = v16;
  v31(v25, v16);
  sub_2CA790();
  v33 = (*(v11 + 88))(v15, v10);
  if (v33 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v11 + 96))(v15, v10);
    sub_20410(&qword_353070, &unk_2D0FB0);

    v34 = sub_2CAFE0();
    (*(*(v34 - 8) + 8))(v15, v34);
    v35 = v77;
  }

  else
  {
    v36 = v33;
    v37 = enum case for Parse.pommesResponse(_:);
    (*(v11 + 8))(v15, v10);
    v35 = v77;
    if (v36 != v37)
    {
      v48 = v67;
      v73(v67, v74, v32);
      v49 = sub_2CDFE0();
      v50 = sub_2CE690();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        v52 = "SearchForMediaNeedsValueStrategy#actionForInput parse not of right type";
        goto LABEL_16;
      }

LABEL_17:

      v31(v48, v32);
      return sub_2C9CF0();
    }
  }

  v38 = v75;
  sub_2CA790();
  v39 = sub_D2F98(v38, &v80);
  (*(v11 + 8))(v38, v10, v39);
  if (!v81)
  {
    sub_30B8(&v80, &qword_34CF98, &unk_2D1A40);
    v48 = v68;
    v73(v68, v74, v32);
    v49 = sub_2CDFE0();
    v50 = sub_2CE690();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "SearchForMediaNeedsValueStrategy#actionForInput received invalid NL intent";
LABEL_16:
      _os_log_impl(&dword_0, v49, v50, v52, v51, 2u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v77 = v31;
  v79 = v17 + 8;
  sub_420A4(&v80, v82);
  sub_35E0(v82, v83);
  v40 = v71;
  sub_2CD480();
  v41 = v72;
  v42 = v70;
  (*(v72 + 104))(v70, enum case for CommonAudio.Confirmation.cancel(_:), v35);
  (*(v41 + 56))(v42, 0, 1, v35);
  v43 = *(v69 + 48);
  v44 = v76;
  sub_F3F4(v40, v76, &qword_34CCE8, &unk_2D0E20);
  v45 = v44;
  sub_F3F4(v42, v44 + v43, &qword_34CCE8, &unk_2D0E20);
  v46 = *(v41 + 48);
  if (v46(v44, 1, v35) == 1)
  {
    sub_30B8(v42, &qword_34CCE8, &unk_2D0E20);
    v47 = v76;
    sub_30B8(v40, &qword_34CCE8, &unk_2D0E20);
    if (v46(v47 + v43, 1, v35) == 1)
    {
      sub_30B8(v47, &qword_34CCE8, &unk_2D0E20);
LABEL_23:
      v60 = v65;
      v73(v65, v74, v32);
      v61 = sub_2CDFE0();
      v62 = sub_2CE690();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_0, v61, v62, "SearchForMediaNeedsValueStrategy#actionForInput User asked to cancel", v63, 2u);
      }

      (v77)(v60, v32);
      sub_2C9CD0();
      return sub_306C(v82);
    }

    goto LABEL_20;
  }

  v54 = v66;
  sub_F3F4(v44, v66, &qword_34CCE8, &unk_2D0E20);
  if (v46(v44 + v43, 1, v35) == 1)
  {
    sub_30B8(v70, &qword_34CCE8, &unk_2D0E20);
    v47 = v76;
    sub_30B8(v71, &qword_34CCE8, &unk_2D0E20);
    (*(v72 + 8))(v54, v35);
LABEL_20:
    sub_30B8(v47, &qword_34CFB0, &unk_2D1000);
    goto LABEL_21;
  }

  v55 = v72;
  v56 = v64;
  (*(v72 + 32))(v64, v45 + v43, v35);
  sub_42148(&qword_34CFB8, 255, &type metadata accessor for CommonAudio.Confirmation, &protocol conformance descriptor for CommonAudio.Confirmation);
  v57 = v45;
  v58 = sub_2CE250();
  v59 = *(v55 + 8);
  v59(v56, v35);
  sub_30B8(v70, &qword_34CCE8, &unk_2D0E20);
  sub_30B8(v71, &qword_34CCE8, &unk_2D0E20);
  v59(v54, v35);
  sub_30B8(v57, &qword_34CCE8, &unk_2D0E20);
  if (v58)
  {
    goto LABEL_23;
  }

LABEL_21:
  sub_2C9CE0();
  return sub_306C(v82);
}