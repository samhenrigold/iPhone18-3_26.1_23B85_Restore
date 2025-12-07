uint64_t sub_67AB0()
{
  sub_386A8();
  v1 = [*(v0 + 40) dialog];
  sub_6805C();
  v2 = sub_16E2CC();

  if (sub_3B35C(v2))
  {
    sub_3B360();
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = sub_16E48C();
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;
    v5 = *(v0 + 40);

    v6 = [v4 fullPrint];

    sub_16E1BC();
    sub_680F8();
  }

  else
  {
    v7 = *(v0 + 40);

    sub_68104();
  }

  v8 = sub_680D4();

  return v9(v8);
}

uint64_t sub_67BD8()
{
  sub_8A88();
  v0[2] = v1;
  v0[3] = v2;
  sub_2440(&qword_1C5800, &unk_16F510);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_67C74()
{
  sub_386A8();
  if (qword_1C55C8 != -1)
  {
    sub_680A0(&qword_1C55C8);
  }

  v1 = v0[4];
  v2 = v0[5];
  sub_16E23C();
  v3 = sub_16D5CC();
  sub_214C(v2, 0, 1, v3);
  sub_214C(v1, 1, 1, v3);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_67D78;

  return sub_3F924();
}

uint64_t sub_67D78()
{
  sub_386A8();
  sub_C9D4();
  sub_38440();
  *v2 = v1;
  v4 = *(v3 + 40);
  v5 = *(v3 + 32);
  *(v1 + 56) = v6;
  *(v1 + 64) = v0;

  sub_6261C(v5);
  sub_6261C(v4);
  sub_8ACC();

  return _swift_task_switch(v7);
}

uint64_t sub_67EBC()
{
  sub_386A8();
  v1 = [*(v0 + 56) dialog];
  sub_6805C();
  v2 = sub_16E2CC();

  if (sub_3B35C(v2))
  {
    sub_3B360();
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = sub_16E48C();
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;
    v5 = *(v0 + 56);

    v6 = [v4 fullPrint];

    sub_16E1BC();
    sub_680F8();
  }

  else
  {
    v7 = *(v0 + 56);

    sub_68104();
  }

  v8 = sub_680D4();

  return v9(v8);
}

uint64_t sub_67FF4()
{
  sub_8A88();

  v0 = sub_680C0();

  return v1(v0);
}

unint64_t sub_6805C()
{
  result = qword_1C6E48;
  if (!qword_1C6E48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C6E48);
  }

  return result;
}

uint64_t sub_680A0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_68120(char a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, __int128 *a6)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  memcpy((v6 + 32), __src, 0xA0uLL);
  *(v6 + 192) = a4;
  *(v6 + 200) = a5;
  sub_1E1A8(a6, v6 + 208);
  return v6;
}

uint64_t sub_6817C()
{
  sub_8A88();
  v1[15] = v2;
  v1[16] = v0;
  v1[17] = *v0;
  v3 = sub_16C7FC();
  v1[18] = v3;
  sub_888C(v3);
  v1[19] = v4;
  v1[20] = sub_8BC0();
  v5 = sub_2440(&qword_1C6FF0, &unk_1730A0);
  sub_4348(v5);
  v1[21] = sub_8BC0();
  v6 = sub_16C89C();
  v1[22] = v6;
  sub_888C(v6);
  v1[23] = v7;
  v1[24] = sub_8BC0();
  v8 = sub_16C8FC();
  v1[25] = v8;
  sub_888C(v8);
  v1[26] = v9;
  v1[27] = sub_8BC0();
  v10 = sub_16C80C();
  v1[28] = v10;
  sub_888C(v10);
  v1[29] = v11;
  v1[30] = sub_8C38();
  v1[31] = swift_task_alloc();
  v12 = sub_16C83C();
  v1[32] = v12;
  sub_888C(v12);
  v1[33] = v13;
  v1[34] = sub_8BC0();
  v14 = sub_16C7DC();
  v1[35] = v14;
  sub_888C(v14);
  v1[36] = v15;
  v1[37] = sub_8BC0();
  v16 = sub_16DBEC();
  v1[38] = v16;
  sub_888C(v16);
  v1[39] = v17;
  v1[40] = sub_8C38();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v18 = sub_17960();

  return _swift_task_switch(v18);
}

uint64_t sub_68460(uint64_t a1)
{
  v112 = v1;
  v2 = *(v1 + 336);
  v3 = *(v1 + 304);
  v4 = *(v1 + 312);
  v6 = *(v1 + 288);
  v5 = *(v1 + 296);
  v7 = *(v1 + 280);
  v8 = *(v1 + 120);
  v9 = sub_16DBBC();
  sub_8B48(v9, v1 + 48);
  v102 = v9;
  v101 = *(v4 + 16);
  v101(v2, v9, v3);
  (*(v6 + 16))(v5, v8, v7);
  v10 = sub_16DBDC();
  v11 = sub_16E36C();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v1 + 336);
  v15 = *(v1 + 304);
  v14 = *(v1 + 312);
  v17 = *(v1 + 288);
  v16 = *(v1 + 296);
  v18 = *(v1 + 280);
  if (v12)
  {
    v109 = *(v1 + 304);
    v19 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v111 = v105;
    *v19 = 136315394;
    v20 = sub_16E7AC();
    v107 = v13;
    v22 = sub_3AB7C(v20, v21, &v111);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    sub_6B580();
    sub_6B40C(v23, v24, &protocol conformance descriptor for Input);
    v25 = sub_16E68C();
    v27 = v26;
    (*(v17 + 8))(v16, v18);
    v28 = sub_3AB7C(v25, v27, &v111);

    *(v19 + 14) = v28;
    _os_log_impl(&def_259DC, v10, v11, "%s Parsing Input: %s", v19, 0x16u);
    swift_arrayDestroy();
    sub_8A2C(v105);
    sub_8A2C(v19);

    v29 = *(v14 + 8);
    v30 = v107;
    v31 = v109;
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    v29 = *(v14 + 8);
    v30 = v13;
    v31 = v15;
  }

  v100 = v29;
  (v29)(v30, v31);
  v32 = *(v1 + 128);
  v103 = sub_6AB10();
  v34 = v33;
  v99 = v32;
  v35 = *(v32 + 24);
  if (sub_3B35C(v35))
  {
    sub_3B360();
    if ((v35 & 0xC000000000000001) != 0)
    {

      v36 = sub_16E48C();
    }

    else
    {
      v36 = *(v35 + 32);
    }

    v37 = sub_103424(v36);
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v40 = *(v1 + 232);
  sub_16C7CC();
  v41 = *(v40 + 88);
  v42 = sub_387CC();
  if ((v41)(v42) != enum case for Parse.uso(_:))
  {
    (*(*(v1 + 232) + 8))(*(v1 + 248), *(v1 + 224));
LABEL_13:
    v52 = *(v1 + 240);
    v53 = *(v1 + 224);
    sub_16C7CC();
    if (v41(v52, v53) != enum case for Parse.directInvocation(_:))
    {

      v63 = sub_387CC();
      v64(v63);
      sub_8B48(v102, v1 + 72);
      v65 = sub_6B5B8();
      (v101)(v65);
      v66 = sub_16DBDC();
      v67 = sub_16E37C();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&def_259DC, v66, v67, "Received unsupported type of input", v68, 2u);
        sub_8A2C(v68);
      }

      v69 = sub_C9F8();
      v100(v69);
      goto LABEL_35;
    }

    v54 = *(v1 + 240);
    v56 = *(v1 + 152);
    v55 = *(v1 + 160);
    v57 = *(v1 + 144);
    (*(*(v1 + 232) + 96))(v54, *(v1 + 224));
    (*(v56 + 32))(v55, v54, v57);
    v58 = sub_16C7EC();
    if (v58)
    {
      sub_17400(v58, (v1 + 16), 0xD000000000000012, 0x800000000017A960);

      if (*(v1 + 40))
      {
        if (swift_dynamicCast())
        {
          v106 = v37;
          v108 = v39;
          if (*(v1 + 344) != 1)
          {
            (*(*(v1 + 152) + 8))(*(v1 + 160), *(v1 + 144));

            v104 = 0;
            v110 = v34;
            goto LABEL_46;
          }

          v59 = *(v1 + 152);
          v60 = *(v1 + 160);
          v61 = *(v1 + 144);
          if (*(*(v1 + 128) + 16) == 1)
          {
            v111 = v34;

            sub_B96EC(v62);
          }

          else
          {
            v111 = v34;

            sub_B96EC(v103);
          }

          (*(v59 + 8))(v60, v61);
          goto LABEL_44;
        }

        goto LABEL_32;
      }
    }

    else
    {

      *(v1 + 16) = 0u;
      *(v1 + 32) = 0u;
    }

    sub_C878(v1 + 16, &qword_1C63E0, &unk_1717D0);
LABEL_32:
    sub_8B48(v102, v1 + 96);
    v84 = sub_6B5B8();
    (v101)(v84);
    v85 = sub_16DBDC();
    v86 = sub_16E37C();
    v87 = os_log_type_enabled(v85, v86);
    v89 = *(v1 + 152);
    v88 = *(v1 + 160);
    v90 = *(v1 + 144);
    if (v87)
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&def_259DC, v85, v86, "LogMedAsNeededConfirmationStrategy failed to unpack directInvocation, returning nil", v91, 2u);
      sub_8A2C(v91);
    }

    v92 = sub_387CC();
    v100(v92);
    (*(v89 + 8))(v88, v90);
LABEL_35:
    v104 = 0;
    v106 = 0;
    v108 = 0;
    v110 = 1;
    goto LABEL_46;
  }

  v106 = v37;
  v108 = v39;
  v110 = v34;
  v44 = *(v1 + 264);
  v43 = *(v1 + 272);
  v46 = *(v1 + 248);
  v45 = *(v1 + 256);
  v47 = *(v1 + 192);
  v48 = *(v1 + 184);
  v97 = *(v1 + 176);
  v98 = *(v1 + 200);
  v49 = *(v1 + 168);
  (*(*(v1 + 232) + 96))(v46, *(v1 + 224));
  (*(v44 + 32))(v43, v46, v45);
  sub_16C82C();
  v50 = sub_16C88C();
  (*(v48 + 8))(v47, v97);
  sub_9AD9C(v50, v49);

  if (sub_369C(v49, 1, v98) == 1)
  {
    v51 = *(v1 + 168);
    (*(*(v1 + 264) + 8))(*(v1 + 272), *(v1 + 256));
    sub_C878(v51, &qword_1C6FF0, &unk_1730A0);
    v39 = v108;
    v34 = v110;
    v37 = v106;
    goto LABEL_13;
  }

  (*(*(v1 + 208) + 32))(*(v1 + 216), *(v1 + 168), *(v1 + 200));
  if (sub_16C8CC())
  {
    v70 = *(v1 + 264);
    v71 = *(v1 + 272);
    v72 = *(v1 + 256);
    v73 = *(v1 + 208);
    v74 = *(v1 + 216);
    v75 = *(v1 + 200);
    if (*(*(v1 + 128) + 16) == 1)
    {
      v111 = v110;

      sub_B96EC(v76);
    }

    else
    {
      v111 = v110;

      sub_B96EC(v103);
    }

    (*(v73 + 8))(v74, v75);
    (*(v70 + 8))(v71, v72);
LABEL_44:
    v110 = v111;
    v94 = 1;
    goto LABEL_45;
  }

  v77 = sub_16C8DC();
  v78 = *(v1 + 264);
  v79 = *(v1 + 272);
  v80 = *(v1 + 256);
  v82 = *(v1 + 208);
  v81 = *(v1 + 216);
  v83 = *(v1 + 200);
  if (v77)
  {
    (*(v82 + 8))(*(v1 + 216), *(v1 + 200));
    (*(v78 + 8))(v79, v80);
LABEL_39:

    v104 = 0;
    goto LABEL_46;
  }

  v93 = sub_16C8EC();
  (*(v82 + 8))(v81, v83);
  (*(v78 + 8))(v79, v80);
  if (v93)
  {
    goto LABEL_39;
  }

  v110 = *(v99 + 24);

  v94 = 2;
LABEL_45:
  v104 = v94;
LABEL_46:

  v95 = *(v1 + 8);

  return v95(v104, v110, v106, v108);
}

uint64_t sub_68EF0(uint64_t a1)
{
  v2 = sub_16C7DC();
  sub_42F0();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_4304();
  v8 = v7 - v6;
  v9 = sub_16DBEC();
  sub_42F0();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_4304();
  v15 = v14 - v13;
  v16 = sub_16DBAC();
  sub_8B48(v16, v33);
  v31 = v9;
  (*(v11 + 16))(v15, v16, v9);
  (*(v4 + 16))(v8, a1, v2);
  v17 = sub_16DBDC();
  v18 = sub_16E36C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v19 = 136315394;
    v20 = sub_16E7AC();
    v22 = sub_3AB7C(v20, v21, &v32);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    sub_6B580();
    sub_6B40C(v23, v24, &protocol conformance descriptor for Input);
    v25 = sub_16E68C();
    v27 = v26;
    (*(v4 + 8))(v8, v2);
    v28 = sub_3AB7C(v25, v27, &v32);

    *(v19 + 14) = v28;
    _os_log_impl(&def_259DC, v17, v18, "%s Handling Input: %s", v19, 0x16u);
    swift_arrayDestroy();
    sub_8A2C(v30);
    sub_8A2C(v19);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  (*(v11 + 8))(v15, v31);
  return sub_16C47C();
}

uint64_t sub_69214()
{
  sub_8A88();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[13] = *v0;
  v4 = sub_16C46C();
  v1[14] = v4;
  sub_888C(v4);
  v1[15] = v5;
  v1[16] = sub_8C38();
  v1[17] = swift_task_alloc();
  v6 = sub_16C7BC();
  v1[18] = v6;
  sub_888C(v6);
  v1[19] = v7;
  v1[20] = sub_8BC0();
  v8 = sub_16DBEC();
  v1[21] = v8;
  sub_888C(v8);
  v1[22] = v9;
  v1[23] = sub_8BC0();
  v10 = sub_17960();

  return _swift_task_switch(v10);
}

uint64_t sub_69388(uint64_t a1)
{
  v24 = v1;
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[21];
  v5 = sub_16DBBC();
  sub_8B48(v5, (v1 + 7));
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E36C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[22];
  v9 = v1[23];
  v11 = v1[21];
  if (v8)
  {
    v22 = v1[21];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 136315394;
    v15 = sub_16E7AC();
    v21 = v9;
    v17 = sub_3AB7C(v15, v16, &v23);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v13 = v18;
    _os_log_impl(&def_259DC, v6, v7, "%s makeErrorResponse called with error: %@", v12, 0x16u);
    sub_C878(v13, &qword_1C57B8, &qword_1715A0);
    sub_8A2C(v13);
    sub_2D64(v14);
    sub_8A2C(v14);
    sub_8A2C(v12);

    (*(v10 + 8))(v21, v22);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  sub_2D20((v1[12] + 72), *(v1[12] + 96));
  v19 = swift_task_alloc();
  v1[24] = v19;
  *v19 = v1;
  v19[1] = sub_695D8;

  return sub_7AA38();
}

uint64_t sub_695D8()
{
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 200) = v5;

  if (v0)
  {

    sub_C9BC();

    return v6();
  }

  else
  {
    sub_8ACC();

    return _swift_task_switch(v8);
  }
}

uint64_t sub_6972C(uint64_t a1)
{
  v2 = v1[25];
  v4 = v1[16];
  v3 = v1[17];
  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[12];
  sub_16C45C();
  (*(v6 + 16))(v4, v3, v5);
  sub_6B5C8();
  (*(v6 + 8))(v3, v5);
  sub_16C77C();
  v8 = [v2 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_8388(v7 + 208, (v1 + 2));
  v9 = v1[5];
  v10 = v1[6];
  sub_2D20(v1 + 2, v9);
  v11 = swift_task_alloc();
  v1[26] = v11;
  *v11 = v1;
  v11[1] = sub_698B4;
  v12 = v1[25];
  v13 = v1[20];
  v14 = v1[10];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v14, v12, v13, v9, v10);
}

uint64_t sub_698B4()
{
  sub_8A88();
  sub_C9D4();
  v2 = *v1;
  sub_C990();
  *v3 = v2;
  *(v4 + 216) = v0;

  sub_8ACC();

  return _swift_task_switch(v5);
}

uint64_t sub_699B4()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);

  (*(v2 + 8))(v1, v3);
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v4();
}

uint64_t sub_69A6C()
{
  sub_8A88();
  v1[20] = v2;
  v1[21] = v0;
  v3 = sub_16DBEC();
  v1[22] = v3;
  sub_888C(v3);
  v1[23] = v4;
  v1[24] = sub_8BC0();
  v5 = sub_2440(&qword_1C5990, &unk_16F760);
  sub_4348(v5);
  v1[25] = sub_8BC0();
  v6 = sub_16C46C();
  sub_4348(v6);
  v1[26] = sub_8BC0();
  v7 = sub_16C7BC();
  v1[27] = v7;
  sub_888C(v7);
  v1[28] = v8;
  v1[29] = sub_8BC0();
  v9 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v9);
  v1[30] = sub_8C38();
  v1[31] = swift_task_alloc();
  v10 = sub_17960();

  return _swift_task_switch(v10);
}

uint64_t sub_69BE0()
{
  v1 = v0[21];
  v2 = *(v1 + 24);
  if (!sub_3B35C(v2))
  {
    goto LABEL_6;
  }

  sub_3B360();
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_16E48C();
  }

  else
  {
    v3 = *(v2 + 32);
  }

  sub_16B9FC(v3);
  if (v4)
  {
    sub_16E23C();

    v5 = 0;
  }

  else
  {
LABEL_6:
    v5 = 1;
  }

  v6 = v0[31];
  v7 = v0[21];
  v8 = sub_16D5CC();
  sub_214C(v6, v5, 1, v8);
  sub_6AD78();
  v0[32] = *(v7 + 192);
  v9 = *(v1 + 24);
  if (sub_3B35C(v9))
  {
    sub_3B360();
    if ((v9 & 0xC000000000000001) != 0)
    {

      v11 = sub_16E48C();
    }

    else
    {
      v10 = *(v9 + 32);

      v11 = v10;
    }

    sub_16B9FC(v11);
    if (v12)
    {
      sub_16E23C();

      v13 = 0;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v13 = 1;
LABEL_14:
  sub_214C(v0[30], v13, 1, v8);
  v14 = swift_task_alloc();
  v0[33] = v14;
  *v14 = v0;
  v14[1] = sub_69E4C;

  return sub_166D04();
}

uint64_t sub_69E4C()
{
  sub_C9EC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  v7 = *v1;
  *v6 = *v1;

  v8 = *(v4 + 240);
  if (v0)
  {

    sub_C878(v8, &qword_1C5800, &unk_16F510);
    sub_8ACC();

    return _swift_task_switch(v9);
  }

  else
  {
    *(v5 + 272) = v3;
    sub_C878(v8, &qword_1C5800, &unk_16F510);

    v10 = swift_task_alloc();
    *(v5 + 280) = v10;
    *v10 = v7;
    v10[1] = sub_6A044;

    return sub_66A84(0x6C65636E6163, 0xE600000000000000);
  }
}

uint64_t sub_6A044()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  *v3 = v4;
  v2[36] = v5;
  v2[37] = v6;

  v7 = swift_task_alloc();
  v2[38] = v7;
  *v7 = v4;
  v7[1] = sub_6A178;

  return sub_66A84(0x6D7269666E6F63, 0xE700000000000000);
}

uint64_t sub_6A178()
{
  sub_8A88();
  sub_C9D4();
  *(v2 + 312) = v0;
  *(v2 + 320) = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_6A268()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[37];
  v4 = v0[34];
  v5 = v0[25];
  v6 = v0[21];
  v7 = v3 == 0;
  if (!v3)
  {
    v3 = 0xE600000000000000;
  }

  v24 = v3;
  v8 = 0x6C65636E6143;
  if (!v7)
  {
    v8 = v0[36];
  }

  v23 = v8;
  if (!v1)
  {
    v2 = 0x6D7269666E6F43;
  }

  v22 = v2;
  if (v1)
  {
    v9 = v0[40];
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  v0[5] = &type metadata for WellnessFeatureFlagsKey;
  v0[6] = sub_3736C();
  *(v0 + 16) = 4;
  v10 = sub_16C86C();
  sub_2D64(v0 + 2);
  sub_16C44C();
  sub_6B5C8();
  sub_16C79C();
  sub_6ADF8();
  v11 = sub_16C55C();
  sub_214C(v5, 0, 1, v11);
  sub_16C78C();
  sub_16C77C();
  v12 = [v4 catId];
  sub_16E1BC();

  sub_387CC();
  sub_16C76C();
  sub_16C7AC();
  sub_8388(v6 + 208, (v0 + 7));
  v13 = v0[10];
  v14 = v0[11];
  sub_2D20(v0 + 7, v13);
  v0[15] = type metadata accessor for WellnessSnippets(0);
  v0[16] = sub_6B40C(&qword_1C5EE0, type metadata accessor for WellnessSnippets, &protocol conformance descriptor for WellnessSnippets);
  v15 = sub_9910(v0 + 12);
  *v15 = 0xD000000000000031;
  v15[1] = 0x800000000017DF40;
  v15[2] = v23;
  v15[3] = v24;
  v15[4] = v22;
  v15[5] = v9;
  *(v15 + 48) = v10 & 1;
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v16 = swift_allocObject();
  v0[41] = v16;
  *(v16 + 16) = xmmword_170F70;
  *(v16 + 32) = v4;
  v17 = v4;
  v18 = swift_task_alloc();
  v0[42] = v18;
  *v18 = v0;
  v18[1] = sub_6A54C;
  v19 = v0[29];
  v20 = v0[20];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v20, v0 + 12, v16, v19, v13, v14);
}

uint64_t sub_6A54C()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 96));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_6A64C()
{
  sub_C9EC();
  v1 = *(v0 + 248);

  v2 = sub_C9F8();
  v3(v2);
  sub_C878(v1, &qword_1C5800, &unk_16F510);
  sub_2D64((v0 + 56));
  sub_6B5E8();

  sub_C9BC();

  return v4();
}

uint64_t sub_6A724(uint64_t a1)
{
  v2 = sub_16DBBC();
  sub_8B48(v2, v1 + 136);
  v3 = sub_6B5B8();
  v4(v3);
  v5 = sub_16DBDC();
  v6 = sub_16E36C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&def_259DC, v5, v6, "Couldn't create logMedScheduleMixedStatusConfirmation_Dialog, returning generic error output.", v7, 2u);
    sub_8A2C(v7);
  }

  v8 = sub_C9F8();
  v9(v8);
  sub_6B3B8();
  *(v1 + 344) = swift_allocError();
  v10 = swift_task_alloc();
  *(v1 + 352) = v10;
  *v10 = v1;
  v10[1] = sub_6A894;

  return sub_69214();
}

uint64_t sub_6A894()
{
  sub_8A88();
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v3 + 360) = v0;

  if (!v0)
  {
  }

  sub_8ACC();

  return _swift_task_switch(v7);
}

uint64_t sub_6A994()
{
  sub_C9EC();
  sub_C878(*(v0 + 248), &qword_1C5800, &unk_16F510);
  sub_6B5E8();

  sub_C9BC();

  return v1();
}

uint64_t sub_6AA3C()
{
  sub_C878(*(v0 + 248), &qword_1C5800, &unk_16F510);

  sub_C9BC();

  return v1();
}

void *sub_6AB10()
{
  v1 = *(v0 + 24);
  result = sub_3B35C(v1);
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = result;
  if (result >= 1)
  {

    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = sub_16E48C();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = sub_B9838(v5);
      if (v8)
      {
        if (v7 == 0x6E656B6174 && v8 == 0xE500000000000000)
        {

LABEL_23:
          v18 = v6;
          sub_16E2AC();
          sub_6B5A8();
          if (v17)
          {
            sub_6B598(v19);
            sub_16E2EC();
          }

          sub_16E30C();

          goto LABEL_30;
        }

        v10 = sub_16E6BC();

        if (v10)
        {
          goto LABEL_23;
        }
      }

      v11 = sub_B9838(v6);
      if (v12)
      {
        if (v11 == 0x64657070696B73 && v12 == 0xE700000000000000)
        {

LABEL_27:
          v20 = v6;
          sub_16E2AC();
          sub_6B5A8();
          if (v17)
          {
            sub_6B598(v21);
            sub_16E2EC();
          }

          sub_16E30C();

          goto LABEL_30;
        }

        v14 = sub_16E6BC();

        if (v14)
        {
          goto LABEL_27;
        }
      }

      v15 = v6;
      sub_16E2AC();
      sub_6B5A8();
      if (v17)
      {
        sub_6B598(v16);
        sub_16E2EC();
      }

      sub_16E30C();

LABEL_30:
      if (v3 == ++v4)
      {

        return _swiftEmptyArrayStorage;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_6AD78()
{
  v0 = sub_6AB10();
  v2 = v1;
  v4 = v3;
  v5 = sub_3B35C(v0);
  sub_3B35C(v2);

  sub_3B35C(v4);

  return v5;
}

uint64_t sub_6ADF8()
{
  v0 = sub_16C96C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  sub_4304();
  v4 = v3 - v2;
  v5 = sub_16C8BC();
  sub_42F0();
  v7 = v6;
  v9 = __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_16C8AC();
  sub_16C95C();
  (*(v7 + 16))(v11, v13, v5);
  sub_16C93C();
  sub_16C54C();
  sub_2440(&qword_1C5988, &unk_16F750);
  v14 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_16F530;
  (*(v1 + 16))(v15 + v14, v4, v0);
  sub_16C53C();
  (*(v1 + 8))(v4, v0);
  return (*(v7 + 8))(v13, v5);
}

uint64_t sub_6B028()
{

  sub_C938(v0 + 32);

  sub_2D64((v0 + 208));
  return v0;
}

uint64_t sub_6B068()
{
  sub_6B028();

  return _swift_deallocClassInstance(v0, 248, 7);
}

uint64_t sub_6B0C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_6B15C;

  return sub_6817C();
}

uint64_t sub_6B15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_C9D4();
  v11 = v10;
  sub_38388();
  *v12 = v11;
  v13 = *v5;
  sub_C990();
  *v14 = v13;

  if (!v4)
  {
    v15 = *(v11 + 16);
    *v15 = a1;
    v15[1] = a2;
    v15[2] = a3;
    v15[3] = a4;
  }

  v16 = *(v13 + 8);

  return v16();
}

uint64_t sub_6B278()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_69A6C();
}

uint64_t sub_6B310()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C98C;

  return sub_69214();
}

unint64_t sub_6B3B8()
{
  result = qword_1C6FE8;
  if (!qword_1C6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6FE8);
  }

  return result;
}

uint64_t sub_6B40C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for LogMedScheduleMixedStatusConfirmationStrategyError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x6B4F0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_6B52C()
{
  result = qword_1C6FF8;
  if (!qword_1C6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6FF8);
  }

  return result;
}

uint64_t sub_6B5C8()
{

  return sub_16C75C();
}

uint64_t sub_6B5E8()
{
}

void sub_6B680()
{
  sub_77510();
  v3 = sub_77434();
  v4 = sub_4348(v3);
  __chkstk_darwin(v4);
  sub_769E8();
  __chkstk_darwin(v5);
  sub_7732C();
  sub_2440(&qword_1C6078, &unk_172520);
  v6 = swift_allocObject();
  v7 = sub_76B58(v6, xmmword_172970);
  sub_77320(v7, v8);
  sub_76E40();
  sub_74678(v9, v10, v11, &unk_16F510);
  sub_16D5CC();
  sub_8A94(v2);
  if (v12)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    sub_773F4();
    sub_76B0C();
    sub_76E40();
    v13();
  }

  v14 = sub_769C8();
  type metadata accessor for WellnessQueryingBasalBodyTemperatureParameters(v14);
  sub_774A0();
  sub_7741C(&qword_1C5800, &unk_16F510, v15);
  sub_8A94(v1);
  if (v12)
  {
    sub_8748(v1, &qword_1C5800, &unk_16F510);
    sub_7737C();
  }

  else
  {
    sub_77524();
    sub_76B0C();
    sub_76DD8();
    v16();
  }

  sub_38B4C();
  v6[8].n128_u64[0] = 0xD000000000000014;
  v6[8].n128_u64[1] = v17;
  v18 = *(v0 + *(v2 + 24));
  if (v18)
  {
    v19 = sub_16D39C();
    v20 = v18;
  }

  else
  {
    v19 = sub_76C6C();
    v6[9].n128_u64[1] = 0;
    v6[10].n128_u64[0] = 0;
  }

  v6[9].n128_u64[0] = v20;
  v6[10].n128_u64[1] = v19;
  v6[11].n128_u64[0] = 0x74617265706D6574;
  sub_775B0(0xEB00000000657275);
  v22 = *(v0 + v21);
  if (v22)
  {
    sub_16D2BC();
    v23 = v22;
  }

  else
  {
    sub_76C6C();
    v6[12].n128_u64[1] = 0;
    v6[13].n128_u64[0] = 0;
  }

  v6[12].n128_u64[0] = v23;
  sub_77364();
  v6[13].n128_u64[1] = v24;
  v6[14].n128_u64[0] = v25;
  sub_77494(0xE400000000000000);
  v27 = *(v0 + v26);
  if (v27)
  {
    v28 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    v28 = 0;
    v6[15].n128_u64[1] = 0;
    v6[16].n128_u64[0] = 0;
  }

  v6[15].n128_u64[0] = v27;
  v6[16].n128_u64[1] = v28;

  sub_76E7C();
  sub_774FC();
}

void sub_6B90C()
{
  sub_77510();
  sub_77488();
  v5 = sub_774E4();
  v6 = sub_4348(v5);
  __chkstk_darwin(v6);
  sub_769E8();
  __chkstk_darwin(v7);
  sub_76B1C();
  __chkstk_darwin(v8);
  sub_76CCC();
  v9 = sub_2440(&qword_1C6078, &unk_172520);
  v10 = sub_7761C(v9);
  sub_76B40(v10, "actionAceCommandString", xmmword_173190);
  sub_76E28();
  sub_74678(v11, v12, v13, &unk_16F510);
  v14 = sub_16D5CC();
  sub_76A04(v2);
  if (v15)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    *(v10 + 72) = v14;
    sub_9910((v10 + 48));
    sub_76AEC();
    sub_76E28();
    v16();
  }

  sub_76A7C();
  *(v10 + 80) = v17;
  *(v10 + 88) = v18;
  type metadata accessor for WellnessQueryingBloodOxygenParameters(0);
  sub_77388();
  sub_76D40();
  if (v20)
  {
    *(v10 + 104) = 0;
    *(v10 + 112) = 0;
    v21 = 0;
  }

  else
  {
    v21 = *v19;
  }

  *(v10 + 96) = v21;
  sub_76D18();
  *(v10 + 120) = v22;
  *(v10 + 128) = v23;
  *(v10 + 136) = 0xE800000000000000;
  sub_7753C(&qword_1C5800, &unk_16F510, v2[6]);
  sub_76A04(v3);
  if (v15)
  {
    sub_8748(v3, &qword_1C5800, &unk_16F510);
    *(v10 + 144) = 0u;
    *(v10 + 160) = 0u;
  }

  else
  {
    *(v10 + 168) = v14;
    sub_9910((v10 + 144));
    sub_76AEC();
    sub_77394();
    v24();
  }

  sub_38B4C();
  *(v10 + 176) = v4;
  *(v10 + 184) = v25;
  v26 = *(v0 + v2[7]);
  if (v26)
  {
    v27 = sub_16D39C();
    v28 = v26;
  }

  else
  {
    v27 = sub_76C6C();
    *(v10 + 200) = 0;
    *(v10 + 208) = 0;
  }

  sub_76C2C(v27, v28);
  sub_76D40();
  if (v30)
  {
    v32 = sub_76DBC();
  }

  else
  {
    v32 = *v29;
    v31 = &type metadata for Double;
  }

  sub_76C08(v31, v32);
  sub_76D40();
  if (v34)
  {
    v36 = sub_76DAC();
  }

  else
  {
    v36 = *v33;
    v35 = &type metadata for Double;
  }

  sub_76C94(v35, v36);
  v37 = *(v0 + v2[10]);
  if (v37)
  {
    v38 = type metadata accessor for WellnessTime(0);
    v39 = v37;
  }

  else
  {
    v38 = sub_76C6C();
    *(v10 + 344) = 0;
    *(v10 + 352) = 0;
  }

  sub_76C78(v38, v39);
  sub_7741C(&qword_1C5800, &unk_16F510, v2[11]);
  sub_76A04(v1);
  if (v15)
  {

    sub_8748(v1, &qword_1C5800, &unk_16F510);
    *(v10 + 384) = 0u;
    *(v10 + 400) = 0u;
  }

  else
  {
    *(v10 + 408) = v14;
    sub_9910((v10 + 384));
    sub_76AEC();
    sub_775E4();
    v40();
  }

  sub_76D74();
  sub_76D40();
  if (v42)
  {
    v44 = sub_773E4();
  }

  else
  {
    v44 = *v41;
    v43 = &type metadata for Double;
  }

  *(v10 + 432) = v44;
  *(v10 + 456) = v43;
  sub_76E7C();
  sub_774FC();
}

void sub_6BC7C()
{
  sub_77510();
  v4 = sub_774E4();
  v5 = sub_4348(v4);
  __chkstk_darwin(v5);
  sub_769E8();
  __chkstk_darwin(v6);
  sub_76B1C();
  __chkstk_darwin(v7);
  sub_76CCC();
  sub_2440(&qword_1C6078, &unk_172520);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1731A0;
  sub_38B4C();
  *(v9 + 32) = 0xD000000000000016;
  *(v9 + 40) = v10;
  sub_76E28();
  sub_74678(v11, v12, v13, &unk_16F510);
  v14 = sub_16D5CC();
  sub_76A04(v2);
  if (v15)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    *(v8 + 72) = v14;
    sub_9910((v8 + 48));
    sub_76AEC();
    sub_76E28();
    v16();
  }

  v17 = sub_769C8();
  type metadata accessor for WellnessQueryingBloodPressure_DetailedResultParameters(v17);
  sub_77388();
  sub_7753C(&qword_1C5800, &unk_16F510, v18);
  sub_76A04(v3);
  if (v15)
  {
    sub_8748(v3, &qword_1C5800, &unk_16F510);
    sub_7737C();
  }

  else
  {
    *(v8 + 120) = v14;
    sub_9910((v8 + 96));
    sub_76AEC();
    sub_77394();
    v19();
  }

  sub_77554();
  *(v8 + 128) = v20;
  *(v8 + 136) = 0xEC00000078614D63;
  v21 = (v0 + v2[6]);
  if (v21[1])
  {
    v22 = 0;
    *(v8 + 152) = 0;
    *(v8 + 160) = 0;
    v23 = 0;
  }

  else
  {
    v23 = *v21;
    v22 = &type metadata for Double;
  }

  *(v8 + 144) = v23;
  *(v8 + 168) = v22;
  *(v8 + 176) = v20;
  *(v8 + 184) = 0xEC0000006E694D63;
  sub_76D40();
  if (v25)
  {
    v26 = 0;
    *(v8 + 200) = 0;
    *(v8 + 208) = 0;
    v27 = 0;
  }

  else
  {
    v27 = *v24;
    v26 = &type metadata for Double;
  }

  *(v8 + 192) = v27;
  *(v8 + 216) = v26;
  *(v8 + 224) = 0x6E69577473726966;
  *(v8 + 232) = 0xEF657A6953776F64;
  sub_76D40();
  if (v29)
  {
    v30 = sub_76DBC();
  }

  else
  {
    v30 = *v28;
  }

  *(v8 + 240) = v30;
  sub_775F0();
  *(v8 + 264) = v31;
  *(v8 + 272) = 0xD000000000000012;
  *(v8 + 280) = v32;
  sub_76D40();
  if (v34)
  {
    v36 = sub_76DAC();
  }

  else
  {
    v36 = *v33;
    v35 = &type metadata for Double;
  }

  sub_76E4C(v35, v36);
  sub_772D4(*(v0 + v2[10]));
  *(v8 + 384) = *(v0 + v2[11]);
  sub_38B4C();
  *(v8 + 408) = v37;
  *(v8 + 416) = 0xD000000000000016;
  *(v8 + 424) = v38;
  *(v8 + 432) = *(v0 + v2[12]);
  sub_38B4C();
  *(v8 + 456) = v39;
  *(v8 + 464) = 0xD000000000000014;
  *(v8 + 472) = v40;
  v41 = *(v0 + v2[13]);
  if (v41)
  {
    v42 = sub_16D39C();
    v43 = v41;
  }

  else
  {
    v43 = 0;
    v42 = 0;
    *(v8 + 488) = 0;
    *(v8 + 496) = 0;
  }

  *(v8 + 480) = v43;
  *(v8 + 504) = v42;
  *(v8 + 512) = 0x63696C6F74737973;
  *(v8 + 520) = 0xEB0000000078614DLL;
  v44 = (v0 + v2[14]);
  if (v44[1])
  {
    v45 = 0;
    *(v8 + 536) = 0u;
    v46 = 0;
  }

  else
  {
    v46 = *v44;
    v45 = &type metadata for Double;
  }

  *(v8 + 528) = v46;
  *(v8 + 552) = v45;
  *(v8 + 560) = 0x63696C6F74737973;
  *(v8 + 568) = 0xEB000000006E694DLL;
  sub_76D40();
  if (v48)
  {
    sub_773AC();
    v50 = 0;
  }

  else
  {
    v50 = *v47;
    v49 = &type metadata for Double;
  }

  *(v8 + 576) = v50;
  *(v8 + 600) = v49;
  sub_77364();
  *(v8 + 608) = v51;
  *(v8 + 616) = 0xE400000000000000;
  v52 = *(v0 + v2[16]);
  if (v52)
  {
    v53 = type metadata accessor for WellnessTime(0);
    v54 = v52;
  }

  else
  {
    sub_76C6C();
    sub_773AC();
  }

  *(v8 + 624) = v54;
  *(v8 + 648) = v53;
  *(v8 + 656) = 1953066613;
  *(v8 + 664) = 0xE400000000000000;
  sub_7741C(&qword_1C5800, &unk_16F510, v2[17]);
  sub_76A04(v1);
  if (v15)
  {

    sub_8748(v1, &qword_1C5800, &unk_16F510);
    *(v8 + 672) = 0u;
    *(v8 + 688) = 0u;
  }

  else
  {
    *(v8 + 696) = v14;
    sub_9910((v8 + 672));
    sub_76AEC();
    sub_775E4();
    v55();
  }

  sub_775D0();
  *(v8 + 704) = v56;
  *(v8 + 712) = 0xEA0000000000657ALL;
  sub_76D40();
  if (v58)
  {
    sub_773AC();
    v60 = 0;
  }

  else
  {
    v60 = *v57;
    v59 = &type metadata for Double;
  }

  *(v8 + 720) = v60;
  *(v8 + 744) = v59;
  sub_76E7C();
  sub_774FC();
}

void sub_6C1B8()
{
  sub_77510();
  v5 = v1;
  sub_77488();
  v6 = sub_774E4();
  v7 = sub_4348(v6);
  __chkstk_darwin(v7);
  sub_887C();
  sub_77310();
  __chkstk_darwin(v8);
  sub_76B1C();
  __chkstk_darwin(v9);
  sub_76CCC();
  sub_2440(&qword_1C6078, &unk_172520);
  v10 = swift_allocObject();
  sub_76B40(v10, "actionAceCommandString", xmmword_1731B0);
  sub_76E28();
  sub_74678(v11, v12, v13, &unk_16F510);
  v14 = sub_16D5CC();
  sub_76A04(v2);
  if (v15)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v14;
    sub_9910((v10 + 48));
    sub_76AEC();
    sub_76E28();
    v16();
  }

  sub_76A68();
  *(v10 + 80) = v17;
  *(v10 + 88) = 0xE800000000000000;
  type metadata accessor for WellnessQueryingBloodPressure_SimpleResultParameters(0);
  sub_77388();
  sub_74678(v5 + v18, v3, &qword_1C5800, &unk_16F510);
  sub_76A04(v3);
  if (v15)
  {
    sub_8748(v3, &qword_1C5800, &unk_16F510);
    *(v10 + 96) = 0u;
    *(v10 + 112) = 0u;
  }

  else
  {
    *(v10 + 120) = v14;
    sub_9910((v10 + 96));
    sub_76AEC();
    sub_77394();
    v19();
  }

  sub_38B4C();
  *(v10 + 128) = v4;
  *(v10 + 136) = v20;
  v21 = *(v5 + v2[6]);
  if (v21)
  {
    sub_16D39C();
    v22 = v21;
  }

  else
  {
    sub_76C6C();
    *(v10 + 152) = 0;
    *(v10 + 160) = 0;
  }

  *(v10 + 144) = v22;
  sub_77554();
  *(v10 + 168) = v23;
  *(v10 + 176) = v24;
  *(v10 + 184) = 0xE900000000000063;
  sub_773A0();
  if (v26)
  {
    v27 = 0;
    *(v10 + 200) = 0;
    *(v10 + 208) = 0;
    v28 = 0;
  }

  else
  {
    v28 = *v25;
    v27 = &type metadata for Double;
  }

  *(v10 + 192) = v28;
  *(v10 + 216) = v27;
  *(v10 + 224) = 0x63696C6F74737973;
  *(v10 + 232) = 0xE800000000000000;
  sub_773A0();
  if (v30)
  {
    v31 = 0;
    *(v10 + 248) = 0;
    *(v10 + 256) = 0;
    v32 = 0;
  }

  else
  {
    v32 = *v29;
    v31 = &type metadata for Double;
  }

  *(v10 + 240) = v32;
  *(v10 + 264) = v31;
  *(v10 + 272) = 1701669236;
  *(v10 + 280) = 0xE400000000000000;
  v33 = *(v5 + v2[9]);
  if (v33)
  {
    v34 = type metadata accessor for WellnessTime(0);
    v35 = v33;
  }

  else
  {
    v34 = sub_76C6C();
    *(v10 + 296) = 0;
    *(v10 + 304) = 0;
  }

  *(v10 + 288) = v35;
  *(v10 + 312) = v34;
  *(v10 + 320) = 1953066613;
  *(v10 + 328) = 0xE400000000000000;
  sub_74678(v5 + v2[10], v0, &qword_1C5800, &unk_16F510);
  sub_76A04(v0);
  if (v15)
  {

    sub_8748(v0, &qword_1C5800, &unk_16F510);
    *(v10 + 336) = 0u;
    *(v10 + 352) = 0u;
  }

  else
  {
    *(v10 + 360) = v14;
    sub_9910((v10 + 336));
    sub_76AEC();
    sub_77590();
    v36();
  }

  sub_774FC();
}

void sub_6C554()
{
  sub_77510();
  v3 = sub_77434();
  v4 = sub_4348(v3);
  __chkstk_darwin(v4);
  sub_887C();
  sub_77300();
  __chkstk_darwin(v5);
  sub_7733C();
  sub_2440(&qword_1C6078, &unk_172520);
  v6 = swift_allocObject();
  v7 = sub_76B58(v6, xmmword_1731C0);
  sub_77320(v7, v8);
  sub_76DD8();
  sub_74678(v9, v10, v11, &unk_16F510);
  v12 = sub_16D5CC();
  sub_8A94(v1);
  if (v13)
  {
    sub_8748(v1, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    sub_773F4();
    sub_76B0C();
    sub_76DD8();
    v14();
  }

  sub_76A7C();
  *(v6 + 80) = v15;
  *(v6 + 88) = v16;
  type metadata accessor for WellnessQueryingBodyTemperatureParameters(0);
  sub_773D4();
  if (&unk_16F510)
  {
    sub_16D2BC();
    v17 = &unk_16F510;
  }

  else
  {
    sub_76C6C();
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
  }

  *(v6 + 96) = v17;
  sub_76A68();
  *(v6 + 120) = v18;
  *(v6 + 128) = v19;
  *(v6 + 136) = 0xE800000000000000;
  sub_77634(&qword_1C5800, &unk_16F510, v1[6]);
  sub_8A94(v2);
  if (v13)
  {

    sub_8748(v2, &qword_1C5800, &unk_16F510);
    *(v6 + 144) = 0u;
    *(v6 + 160) = 0u;
  }

  else
  {
    *(v6 + 168) = v12;
    sub_9910((v6 + 144));
    sub_76B0C();
    sub_76E40();
    v20();
  }

  sub_38B4C();
  *(v6 + 176) = 0xD000000000000014;
  *(v6 + 184) = v21;
  v22 = *(v0 + v1[7]);
  if (v22)
  {
    v23 = sub_16D39C();
    v24 = v22;
  }

  else
  {
    v23 = sub_76C6C();
    *(v6 + 200) = 0;
    *(v6 + 208) = 0;
  }

  sub_76C2C(v23, v24);
  v25 = *(v0 + v1[8]);
  if (v25)
  {
    v26 = sub_16D2BC();
    v27 = v25;
  }

  else
  {
    v26 = sub_76C6C();
    *(v6 + 248) = 0;
    *(v6 + 256) = 0;
  }

  *(v6 + 240) = v27;
  *(v6 + 264) = v26;
  *(v6 + 272) = 0x65756C61566E696DLL;
  *(v6 + 280) = 0xE800000000000000;
  v28 = *(v0 + v1[9]);
  if (v28)
  {
    sub_16D2BC();
    v29 = v28;
  }

  else
  {
    sub_76C6C();
    *(v6 + 296) = 0;
    *(v6 + 304) = 0;
  }

  *(v6 + 288) = v29;
  sub_77364();
  *(v6 + 312) = v30;
  *(v6 + 320) = v31;
  *(v6 + 328) = 0xE400000000000000;
  v32 = *(v0 + v1[10]);
  if (v32)
  {
    v33 = type metadata accessor for WellnessTime(0);
    v34 = v32;
  }

  else
  {
    v33 = sub_76C6C();
    *(v6 + 344) = 0;
    *(v6 + 352) = 0;
  }

  *(v6 + 336) = v34;
  *(v6 + 360) = v33;
  *(v6 + 368) = 0x65756C6176;
  *(v6 + 376) = 0xE500000000000000;
  v35 = *(v0 + v1[11]);
  if (v35)
  {
    v36 = sub_16D2BC();
  }

  else
  {
    v36 = 0;
    *(v6 + 392) = 0;
    *(v6 + 400) = 0;
  }

  *(v6 + 384) = v35;
  *(v6 + 408) = v36;

  sub_76E7C();
  sub_774FC();
}

void sub_6C89C()
{
  sub_77510();
  v3 = sub_77434();
  v4 = sub_4348(v3);
  __chkstk_darwin(v4);
  sub_769E8();
  __chkstk_darwin(v5);
  sub_7732C();
  sub_2440(&qword_1C6078, &unk_172520);
  v6 = swift_allocObject();
  v7 = sub_76B58(v6, xmmword_172970);
  sub_77320(v7, v8);
  sub_76E40();
  sub_74678(v9, v10, v11, &unk_16F510);
  sub_16D5CC();
  sub_8A94(v2);
  if (v12)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    sub_773F4();
    sub_76B0C();
    sub_76E40();
    v13();
  }

  v14 = sub_769C8();
  type metadata accessor for WellnessQueryingCardioFitnessParameters(v14);
  sub_774A0();
  sub_7741C(&qword_1C5800, &unk_16F510, v15);
  sub_8A94(v1);
  if (v12)
  {
    sub_8748(v1, &qword_1C5800, &unk_16F510);
    sub_7737C();
  }

  else
  {
    sub_77524();
    sub_76B0C();
    sub_76DD8();
    v16();
  }

  sub_38B4C();
  v6[8].n128_u64[0] = 0xD000000000000014;
  v6[8].n128_u64[1] = v17;
  v18 = *(v0 + *(v2 + 24));
  if (v18)
  {
    v19 = sub_16D39C();
    v20 = v18;
  }

  else
  {
    v19 = sub_76C6C();
    v6[9].n128_u64[1] = 0;
    v6[10].n128_u64[0] = 0;
  }

  v6[9].n128_u64[0] = v20;
  v6[10].n128_u64[1] = v19;
  v6[11].n128_u64[0] = 0x6C6576656CLL;
  sub_775B0(0xE500000000000000);
  sub_76D40();
  if (v22)
  {
    v23 = 0;
    v6[12].n128_u64[1] = 0;
    v6[13].n128_u64[0] = 0;
    v24 = 0;
  }

  else
  {
    v24 = *v21;
    v23 = &type metadata for Double;
  }

  v6[12].n128_u64[0] = v24;
  v6[13].n128_u64[1] = v23;
  v6[14].n128_u64[0] = 1701669236;
  sub_77494(0xE400000000000000);
  v26 = *(v0 + v25);
  if (v26)
  {
    v27 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    v27 = 0;
    v6[15].n128_u64[1] = 0;
    v6[16].n128_u64[0] = 0;
  }

  v6[15].n128_u64[0] = v26;
  v6[16].n128_u64[1] = v27;

  sub_76E7C();
  sub_774FC();
}

uint64_t sub_6CB1C(uint64_t a1)
{
  v5 = v2;
  v6 = sub_2440(&qword_1C5800, &unk_16F510);
  v7 = sub_4348(v6);
  __chkstk_darwin(v7);
  sub_887C();
  sub_77310();
  __chkstk_darwin(v8);
  sub_76B1C();
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  sub_2440(&qword_1C6078, &unk_172520);
  v12 = swift_allocObject();
  v13 = sub_76B58(v12, xmmword_1731B0);
  v13[2].n128_u64[0] = 0xD000000000000016;
  v13[2].n128_u64[1] = v14;
  sub_74678(v5, v11, &qword_1C5800, &unk_16F510);
  v15 = sub_16D5CC();
  sub_76A04(v11);
  if (v16)
  {
    sub_8748(v11, &qword_1C5800, &unk_16F510);
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
  }

  else
  {
    *(v12 + 72) = v15;
    sub_9910((v12 + 48));
    sub_76AEC();
    (*(v17 + 32))();
  }

  sub_76A7C();
  *(v12 + 80) = v18;
  *(v12 + 88) = v19;
  (a1)(0);
  sub_77388();
  sub_773A0();
  if (v21)
  {
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
    v22 = 0;
  }

  else
  {
    v22 = *v20;
  }

  *(v12 + 96) = v22;
  sub_76D18();
  sub_7757C(v23);
  sub_74678(v5 + v24, v3, &qword_1C5800, &unk_16F510);
  sub_76A04(v3);
  if (v16)
  {
    sub_8748(v3, &qword_1C5800, &unk_16F510);
    *(v12 + 144) = 0u;
    *(v12 + 160) = 0u;
  }

  else
  {
    *(v12 + 168) = v15;
    sub_9910((v12 + 144));
    sub_76AEC();
    sub_77394();
    v25();
  }

  sub_38B4C();
  *(v12 + 176) = 0xD000000000000014;
  *(v12 + 184) = v26;
  v27 = *(v5 + *(a1 + 28));
  if (v27)
  {
    sub_16D39C();
    v28 = v27;
  }

  else
  {
    sub_76C6C();
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  *(v12 + 192) = v28;
  sub_77364();
  *(v12 + 216) = v29;
  *(v12 + 224) = v30;
  *(v12 + 232) = 0xE400000000000000;
  v31 = *(v5 + *(a1 + 32));
  if (v31)
  {
    type metadata accessor for WellnessTime(0);
    v32 = v31;
  }

  else
  {
    sub_76C6C();
    *(v12 + 248) = 0;
    *(v12 + 256) = 0;
  }

  *(v12 + 240) = v32;
  sub_77568();
  *(v12 + 264) = v33;
  *(v12 + 272) = v34;
  *(v12 + 280) = 0xEA00000000006575;
  sub_773A0();
  if (v36)
  {
    v37 = 0;
    *(v12 + 296) = 0;
    *(v12 + 304) = 0;
    v38 = 0;
  }

  else
  {
    v38 = *v35;
    v37 = &type metadata for Double;
  }

  *(v12 + 288) = v38;
  *(v12 + 312) = v37;
  *(v12 + 320) = 1953066613;
  *(v12 + 328) = 0xE400000000000000;
  sub_74678(v5 + *(a1 + 40), v1, &qword_1C5800, &unk_16F510);
  sub_76A04(v1);
  if (v16)
  {

    sub_8748(v1, &qword_1C5800, &unk_16F510);
    *(v12 + 336) = 0u;
    *(v12 + 352) = 0u;
  }

  else
  {
    *(v12 + 360) = v15;
    sub_9910((v12 + 336));
    sub_76AEC();
    sub_77590();
    v39();
  }

  return v12;
}

uint64_t sub_6CF4C(uint64_t a1)
{
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  v6 = sub_4348(v5);
  __chkstk_darwin(v6);
  sub_769E8();
  __chkstk_darwin(v7);
  sub_76B1C();
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  sub_2440(&qword_1C6078, &unk_172520);
  v11 = swift_allocObject();
  v12 = sub_76B58(v11, xmmword_1731D0);
  v14 = sub_77320(v12, v13);
  sub_74678(v14, v10, &qword_1C5800, &unk_16F510);
  v15 = sub_16D5CC();
  sub_8A94(v10);
  if (v16)
  {
    sub_8748(v10, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    sub_773F4();
    sub_76B0C();
    (*(v17 + 32))();
  }

  sub_76A7C();
  *(v11 + 80) = v18;
  *(v11 + 88) = v19;
  (a1)(0);
  sub_774A0();
  sub_76D40();
  if (v21)
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
    v22 = 0;
  }

  else
  {
    v22 = *v20;
  }

  *(v11 + 96) = v22;
  sub_76D18();
  *(v11 + 120) = v23;
  *(v11 + 128) = v24;
  *(v11 + 136) = 0xE800000000000000;
  sub_7753C(&qword_1C5800, &unk_16F510, *(a1 + 24));
  sub_8A94(v3);
  if (v16)
  {
    sub_8748(v3, &qword_1C5800, &unk_16F510);
    *(v11 + 144) = 0u;
    *(v11 + 160) = 0u;
  }

  else
  {
    *(v11 + 168) = v15;
    sub_9910((v11 + 144));
    sub_76B0C();
    (*(v25 + 32))();
  }

  sub_38B4C();
  *(v11 + 176) = 0xD000000000000014;
  *(v11 + 184) = v26;
  v27 = *(v1 + *(a1 + 28));
  if (v27)
  {
    v28 = sub_16D39C();
    v29 = v27;
  }

  else
  {
    v28 = sub_76C6C();
    *(v11 + 200) = 0;
    *(v11 + 208) = 0;
  }

  sub_76C2C(v28, v29);
  sub_76D40();
  if (v31)
  {
    v33 = sub_76DBC();
  }

  else
  {
    v33 = *v30;
    v32 = &type metadata for Double;
  }

  sub_76C08(v32, v33);
  sub_76D40();
  if (v35)
  {
    v37 = sub_76DAC();
  }

  else
  {
    v37 = *v34;
    v36 = &type metadata for Double;
  }

  sub_76C94(v36, v37);
  v38 = *(v1 + *(a1 + 40));
  if (v38)
  {
    v39 = type metadata accessor for WellnessTime(0);
    v40 = v38;
  }

  else
  {
    v39 = sub_76C6C();
    *(v11 + 344) = 0;
    *(v11 + 352) = 0;
  }

  sub_76C78(v39, v40);
  sub_7741C(&qword_1C5800, &unk_16F510, *(a1 + 44));
  sub_8A94(v2);
  if (v16)
  {

    sub_8748(v2, &qword_1C5800, &unk_16F510);
    *(v11 + 384) = 0u;
    *(v11 + 400) = 0u;
  }

  else
  {
    *(v11 + 408) = v15;
    sub_9910((v11 + 384));
    sub_76B0C();
    sub_76DD8();
    v41();
  }

  sub_76D74();
  sub_76D40();
  if (v43)
  {
    v44 = sub_773E4();
  }

  else
  {
    v44 = *v42;
  }

  *(v11 + 432) = v44;
  sub_775F0();
  *(v11 + 456) = v45;
  *(v11 + 464) = 0xD000000000000010;
  *(v11 + 472) = v46;
  v47 = *(v1 + *(a1 + 52));
  if (v47 == 2)
  {
    v48 = 0;
    *(v11 + 480) = 0;
    *(v11 + 488) = 0;
    *(v11 + 496) = 0;
  }

  else
  {
    *(v11 + 480) = v47 & 1;
    v48 = &type metadata for Bool;
  }

  *(v11 + 504) = v48;
  return v11;
}

void sub_6D344()
{
  sub_77510();
  v3 = sub_77434();
  v4 = sub_4348(v3);
  __chkstk_darwin(v4);
  sub_887C();
  sub_77300();
  __chkstk_darwin(v5);
  sub_7733C();
  v6 = sub_2440(&qword_1C6078, &unk_172520);
  v7 = sub_7761C(v6);
  *(v7 + 16) = xmmword_173190;
  sub_38B4C();
  *(v8 + 32) = 0xD000000000000016;
  *(v8 + 40) = v9;
  sub_76DD8();
  sub_74678(v10, v11, v12, &unk_16F510);
  sub_16D5CC();
  sub_8A94(v1);
  if (v13)
  {
    sub_8748(v1, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    sub_773F4();
    sub_76B0C();
    sub_76DD8();
    v14();
  }

  v15 = sub_769C8();
  v16 = type metadata accessor for WellnessQueryingHeightParameters(v15);
  sub_77634(&qword_1C5800, &unk_16F510, v16[5]);
  sub_8A94(v2);
  if (v13)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    sub_7737C();
  }

  else
  {
    sub_77524();
    sub_76B0C();
    sub_76E40();
    v17();
  }

  sub_38B4C();
  *(v7 + 128) = 0xD000000000000016;
  *(v7 + 136) = v18;
  *(v7 + 144) = *(v0 + v16[6]);
  sub_38B4C();
  *(v7 + 168) = v19;
  *(v7 + 176) = 0xD000000000000017;
  *(v7 + 184) = v20;
  *(v7 + 192) = *(v0 + v16[7]);
  *(v7 + 216) = v19;
  *(v7 + 224) = 0x746867696568;
  *(v7 + 232) = 0xE600000000000000;
  v21 = *(v0 + v16[8]);
  if (v21)
  {
    v22 = sub_16D2FC();
    v23 = v21;
  }

  else
  {
    v22 = sub_76C6C();
    *(v7 + 248) = 0;
    *(v7 + 256) = 0;
  }

  *(v7 + 240) = v23;
  *(v7 + 264) = v22;
  *(v7 + 272) = 0x686769654878616DLL;
  *(v7 + 280) = 0xE900000000000074;
  v24 = *(v0 + v16[9]);
  if (v24)
  {
    v25 = sub_16D2FC();
    v26 = v24;
  }

  else
  {
    v25 = sub_76C6C();
    *(v7 + 296) = 0;
    *(v7 + 304) = 0;
  }

  *(v7 + 288) = v26;
  *(v7 + 312) = v25;
  *(v7 + 320) = 0x68676965486E696DLL;
  *(v7 + 328) = 0xE900000000000074;
  v27 = *(v0 + v16[10]);
  if (v27)
  {
    sub_16D2FC();
    v28 = v27;
  }

  else
  {
    sub_76C6C();
    *(v7 + 344) = 0;
    *(v7 + 352) = 0;
  }

  *(v7 + 336) = v28;
  sub_38B4C();
  *(v7 + 360) = v29;
  *(v7 + 368) = 0xD000000000000014;
  *(v7 + 376) = v30;
  v31 = *(v0 + v16[11]);
  if (v31)
  {
    sub_16D39C();
    v32 = v31;
  }

  else
  {
    sub_76C6C();
    *(v7 + 392) = 0;
    *(v7 + 400) = 0;
  }

  *(v7 + 384) = v32;
  sub_77364();
  *(v7 + 408) = v33;
  *(v7 + 416) = v34;
  *(v7 + 424) = 0xE400000000000000;
  v35 = *(v0 + v16[12]);
  if (v35)
  {
    v36 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    v36 = 0;
    *(v7 + 440) = 0;
    *(v7 + 448) = 0;
  }

  *(v7 + 432) = v35;
  *(v7 + 456) = v36;

  sub_76E7C();
  sub_774FC();
}

void sub_6D6A0()
{
  sub_77510();
  v3 = sub_77434();
  v4 = sub_4348(v3);
  __chkstk_darwin(v4);
  sub_769E8();
  __chkstk_darwin(v5);
  sub_7732C();
  sub_2440(&qword_1C6078, &unk_172520);
  v6 = swift_allocObject();
  v7 = sub_76B58(v6, xmmword_172970);
  sub_77320(v7, v8);
  sub_76E40();
  sub_74678(v9, v10, v11, &unk_16F510);
  sub_16D5CC();
  sub_8A94(v2);
  if (v12)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    sub_773F4();
    sub_76B0C();
    sub_76E40();
    v13();
  }

  v14 = sub_769C8();
  type metadata accessor for WellnessQueryingMenstruationEndParameters(v14);
  sub_774A0();
  sub_7741C(&qword_1C5800, &unk_16F510, v15);
  sub_8A94(v1);
  if (v12)
  {
    sub_8748(v1, &qword_1C5800, &unk_16F510);
    sub_7737C();
  }

  else
  {
    sub_77524();
    sub_76B0C();
    sub_76DD8();
    v16();
  }

  sub_773B8();
  if (v1)
  {
    sub_16D4EC();
  }

  else
  {
    v6[9].n128_u64[1] = 0;
    v6[10].n128_u64[0] = 0;
  }

  v6[9].n128_u64[0] = v1;
  sub_38B4C();
  v6[10].n128_u64[1] = v17;
  v6[11].n128_u64[0] = 0xD000000000000017;
  sub_775B0(v18);
  v6[12].n128_u8[0] = *(v0 + v19);
  sub_38B4C();
  v6[13].n128_u64[1] = v20;
  v6[14].n128_u64[0] = 0xD000000000000013;
  sub_77494(v21);
  LOBYTE(v22) = *(v0 + v22);
  v6[16].n128_u64[1] = v23;
  v6[15].n128_u8[0] = v22;

  sub_76E7C();
  sub_774FC();
}

void sub_6D8B8()
{
  sub_77510();
  v3 = sub_77434();
  v4 = sub_4348(v3);
  __chkstk_darwin(v4);
  sub_769E8();
  __chkstk_darwin(v5);
  sub_7732C();
  sub_2440(&qword_1C6078, &unk_172520);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1731E0;
  sub_38B4C();
  *(v7 + 32) = 0xD000000000000016;
  *(v7 + 40) = v8;
  sub_76E40();
  sub_74678(v9, v10, v11, &unk_16F510);
  sub_16D5CC();
  sub_8A94(v2);
  if (v12)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    sub_773F4();
    sub_76B0C();
    sub_76E40();
    v13();
  }

  v14 = sub_769C8();
  type metadata accessor for WellnessQueryingMenstruationStartParameters(v14);
  sub_774A0();
  sub_7741C(&qword_1C5800, &unk_16F510, v15);
  sub_8A94(v1);
  if (v12)
  {
    sub_8748(v1, &qword_1C5800, &unk_16F510);
    sub_7737C();
  }

  else
  {
    sub_77524();
    sub_76B0C();
    sub_76DD8();
    v16();
  }

  sub_773B8();
  if (v1)
  {
    sub_16D4EC();
  }

  else
  {
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
  }

  *(v6 + 144) = v1;
  sub_38B4C();
  *(v6 + 168) = v17;
  *(v6 + 176) = 0xD000000000000017;
  sub_775B0(v18);
  *(v6 + 192) = *(v0 + v19);
  *(v6 + 216) = &type metadata for Bool;
  *(v6 + 224) = 0xD000000000000021;
  sub_77494(0x800000000017E240);
  *(v6 + 240) = *(v0 + v20);
  *(v6 + 264) = v21;
  *(v6 + 272) = 0xD000000000000022;
  *(v6 + 280) = 0x800000000017E270;
  LOBYTE(v20) = *(v0 + *(v2 + 36));
  *(v6 + 312) = v21;
  *(v6 + 288) = v20;

  sub_76E7C();
  sub_774FC();
}

void sub_6DB4C()
{
  sub_77510();
  v4 = sub_774E4();
  v5 = sub_4348(v4);
  __chkstk_darwin(v5);
  sub_887C();
  sub_77310();
  __chkstk_darwin(v6);
  sub_76B1C();
  __chkstk_darwin(v7);
  sub_76CCC();
  v8 = sub_2440(&qword_1C6078, &unk_172520);
  v9 = sub_7761C(v8);
  v10 = sub_76B58(v9, xmmword_173190);
  sub_77320(v10, v11);
  sub_76E28();
  sub_74678(v12, v13, v14, &unk_16F510);
  v15 = sub_16D5CC();
  sub_76A04(v2);
  if (v16)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v15;
    sub_9910((v9 + 48));
    sub_76AEC();
    sub_76E28();
    v17();
  }

  *(v9 + 80) = 0x6570797461746164;
  *(v9 + 88) = 0xE800000000000000;
  type metadata accessor for WellnessQueryingRingsParameters(0);
  sub_77388();
  sub_7753C(&qword_1C5800, &unk_16F510, v18);
  sub_76A04(v3);
  if (v16)
  {
    sub_8748(v3, &qword_1C5800, &unk_16F510);
    *(v9 + 96) = 0u;
    *(v9 + 112) = 0u;
  }

  else
  {
    *(v9 + 120) = v15;
    sub_9910((v9 + 96));
    sub_76AEC();
    sub_77394();
    v19();
  }

  *(v9 + 128) = 1702125924;
  *(v9 + 136) = 0xE400000000000000;
  v20 = *(v1 + v2[6]);
  if (v20)
  {
    sub_16D4EC();
    v21 = v20;
  }

  else
  {
    sub_76C6C();
    *(v9 + 152) = 0;
    *(v9 + 160) = 0;
  }

  *(v9 + 144) = v21;
  sub_38B4C();
  *(v9 + 168) = v22;
  *(v9 + 176) = 0xD000000000000017;
  *(v9 + 184) = v23;
  *(v9 + 192) = *(v1 + v2[7]);
  *(v9 + 216) = &type metadata for Bool;
  *(v9 + 224) = 0x756C61566C616F67;
  *(v9 + 232) = 0xE900000000000065;
  v24 = (v1 + v2[8]);
  if (v24[1])
  {
    v25 = 0;
    *(v9 + 248) = 0;
    *(v9 + 256) = 0;
    v26 = 0;
  }

  else
  {
    v26 = *v24;
    v25 = &type metadata for Double;
  }

  *(v9 + 240) = v26;
  *(v9 + 264) = v25;
  strcpy((v9 + 272), "isRingClosed");
  *(v9 + 285) = 0;
  *(v9 + 286) = -5120;
  *(v9 + 288) = *(v1 + v2[9]);
  *(v9 + 312) = &type metadata for Bool;
  *(v9 + 320) = 0xD000000000000010;
  *(v9 + 328) = 0x800000000017DA40;
  *(v9 + 336) = *(v1 + v2[10]);
  *(v9 + 360) = &type metadata for Bool;
  *(v9 + 368) = 0x6C61566C61746F74;
  *(v9 + 376) = 0xEA00000000006575;
  sub_76D40();
  if (v28)
  {
    v29 = 0;
    *(v9 + 392) = 0;
    *(v9 + 400) = 0;
    v30 = 0;
  }

  else
  {
    v30 = *v27;
    v29 = &type metadata for Double;
  }

  *(v9 + 384) = v30;
  *(v9 + 408) = v29;
  *(v9 + 416) = 1953066613;
  *(v9 + 424) = 0xE400000000000000;
  sub_74678(v1 + v2[12], v0, &qword_1C5800, &unk_16F510);
  sub_76A04(v0);
  if (v16)
  {

    sub_8748(v0, &qword_1C5800, &unk_16F510);
    *(v9 + 432) = 0u;
    *(v9 + 448) = 0u;
  }

  else
  {
    *(v9 + 456) = v15;
    sub_9910((v9 + 432));
    sub_76AEC();
    sub_77590();
    v31();
  }

  sub_774FC();
}

void sub_6DF30()
{
  sub_77510();
  sub_77488();
  v5 = sub_77434();
  v6 = sub_4348(v5);
  __chkstk_darwin(v6);
  sub_887C();
  sub_77300();
  __chkstk_darwin(v7);
  sub_7733C();
  sub_2440(&qword_1C6078, &unk_172520);
  v8 = swift_allocObject();
  sub_76B40(v8, "actionAceCommandString", xmmword_1731F0);
  sub_76DD8();
  sub_74678(v9, v10, v11, &unk_16F510);
  v12 = sub_16D5CC();
  sub_8A94(v1);
  if (v13)
  {
    sub_8748(v1, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    sub_773F4();
    sub_76B0C();
    sub_76DD8();
    v14();
  }

  sub_38B4C();
  *(v8 + 80) = v4 + 1;
  *(v8 + 88) = v15;
  type metadata accessor for WellnessQueryingSleep_DetailedResultParameters(0);
  sub_773D4();
  if (&unk_16F510)
  {
    sub_16D54C();
    v16 = &unk_16F510;
  }

  else
  {
    sub_76C6C();
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
  }

  *(v8 + 96) = v16;
  sub_38B4C();
  sub_7759C(v17, v18);
  if (v3)
  {
    sub_16D54C();
    v19 = v3;
  }

  else
  {
    sub_76C6C();
    *(v8 + 152) = 0;
    *(v8 + 160) = 0;
  }

  *(v8 + 144) = v19;
  sub_76A68();
  sub_775BC(v20, v21);
  sub_77634(&qword_1C5800, &unk_16F510, v22);
  sub_8A94(v2);
  if (v13)
  {

    sub_8748(v2, &qword_1C5800, &unk_16F510);
    *(v8 + 192) = 0u;
    *(v8 + 208) = 0u;
  }

  else
  {
    *(v8 + 216) = v12;
    sub_9910((v8 + 192));
    sub_76B0C();
    sub_76E40();
    v23();
  }

  *(v8 + 224) = 0x6E69577473726966;
  *(v8 + 232) = 0xEF657A6953776F64;
  sub_76D40();
  if (v25)
  {
    v26 = sub_76DBC();
  }

  else
  {
    v26 = *v24;
  }

  *(v8 + 240) = v26;
  sub_775F0();
  *(v8 + 264) = v27;
  *(v8 + 272) = v4 - 2;
  *(v8 + 280) = v28;
  sub_76D40();
  if (v30)
  {
    v32 = sub_76DAC();
  }

  else
  {
    v32 = *v29;
    v31 = &type metadata for Double;
  }

  sub_76E4C(v31, v32);
  sub_772D4(*(v0 + v1[10]));
  *(v8 + 384) = *(v0 + v1[11]);
  sub_38B4C();
  *(v8 + 408) = v33;
  *(v8 + 416) = v4 + 2;
  *(v8 + 424) = v34;
  *(v8 + 432) = *(v0 + v1[12]);
  sub_38B4C();
  *(v8 + 456) = v35;
  *(v8 + 464) = v4 + 4;
  *(v8 + 472) = v36;
  sub_76D40();
  if (v38)
  {
    *(v8 + 488) = 0;
    *(v8 + 496) = 0;
    v39 = 0;
  }

  else
  {
    v39 = *v37;
  }

  *(v8 + 480) = v39;
  sub_775F0();
  *(v8 + 504) = v40;
  *(v8 + 512) = v4;
  *(v8 + 520) = v41;
  v42 = *(v0 + v1[14]);
  if (v42)
  {
    v43 = sub_16D39C();
    v44 = v42;
  }

  else
  {
    sub_76C6C();
    sub_773AC();
  }

  *(v8 + 528) = v44;
  *(v8 + 552) = v43;
  sub_77364();
  *(v8 + 560) = v45;
  *(v8 + 568) = 0xE400000000000000;
  v46 = *(v0 + v1[15]);
  if (v46)
  {
    v47 = type metadata accessor for WellnessTime(0);
    v48 = v46;
  }

  else
  {
    sub_76C6C();
    sub_773AC();
  }

  *(v8 + 576) = v48;
  *(v8 + 600) = v47;
  sub_775D0();
  *(v8 + 608) = v49;
  *(v8 + 616) = 0xEA0000000000657ALL;
  sub_76D40();
  if (v51)
  {
    sub_773AC();
    v53 = 0;
  }

  else
  {
    v53 = *v50;
    v52 = &type metadata for Double;
  }

  *(v8 + 624) = v53;
  *(v8 + 648) = v52;

  sub_76E7C();
  sub_774FC();
}

void sub_6E354()
{
  sub_77510();
  sub_77488();
  v5 = sub_77434();
  v6 = sub_4348(v5);
  __chkstk_darwin(v6);
  sub_887C();
  sub_77300();
  __chkstk_darwin(v7);
  sub_7733C();
  sub_2440(&qword_1C6078, &unk_172520);
  v8 = swift_allocObject();
  sub_76B40(v8, "actionAceCommandString", xmmword_1731C0);
  sub_76DD8();
  sub_74678(v9, v10, v11, &unk_16F510);
  v12 = sub_16D5CC();
  sub_8A94(v1);
  if (v13)
  {
    sub_8748(v1, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    sub_773F4();
    sub_76B0C();
    sub_76DD8();
    v14();
  }

  sub_38B4C();
  *(v8 + 80) = v4 + 1;
  *(v8 + 88) = v15;
  type metadata accessor for WellnessQueryingSleep_SimpleResultParameters(0);
  sub_773D4();
  if (&unk_16F510)
  {
    sub_16D54C();
    v16 = &unk_16F510;
  }

  else
  {
    sub_76C6C();
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
  }

  *(v8 + 96) = v16;
  sub_38B4C();
  sub_7759C(v17, v18);
  if (v3)
  {
    sub_16D54C();
    v19 = v3;
  }

  else
  {
    sub_76C6C();
    *(v8 + 152) = 0;
    *(v8 + 160) = 0;
  }

  *(v8 + 144) = v19;
  sub_76A68();
  sub_775BC(v20, v21);
  sub_77634(&qword_1C5800, &unk_16F510, v22);
  sub_8A94(v2);
  if (v13)
  {

    sub_8748(v2, &qword_1C5800, &unk_16F510);
    *(v8 + 192) = 0u;
    *(v8 + 208) = 0u;
  }

  else
  {
    *(v8 + 216) = v12;
    sub_9910((v8 + 192));
    sub_76B0C();
    sub_76E40();
    v23();
  }

  sub_38B4C();
  *(v8 + 224) = v4;
  *(v8 + 232) = v24;
  v25 = *(v0 + v1[8]);
  if (v25)
  {
    sub_16D39C();
    v26 = v25;
  }

  else
  {
    sub_76C6C();
    *(v8 + 248) = 0;
    *(v8 + 256) = 0;
  }

  *(v8 + 240) = v26;
  sub_77364();
  *(v8 + 264) = v27;
  *(v8 + 272) = v28;
  *(v8 + 280) = 0xE400000000000000;
  v29 = *(v0 + v1[9]);
  if (v29)
  {
    type metadata accessor for WellnessTime(0);
    v30 = v29;
  }

  else
  {
    sub_76C6C();
    *(v8 + 296) = 0;
    *(v8 + 304) = 0;
  }

  *(v8 + 288) = v30;
  sub_38B4C();
  *(v8 + 312) = v31;
  *(v8 + 320) = v4 - 1;
  *(v8 + 328) = v32;
  v33 = *(v0 + v1[10]);
  if (v33)
  {
    sub_16D54C();
    v34 = v33;
  }

  else
  {
    sub_76C6C();
    *(v8 + 344) = 0;
    *(v8 + 352) = 0;
  }

  *(v8 + 336) = v34;
  sub_38B4C();
  *(v8 + 360) = v35;
  *(v8 + 368) = v4 - 2;
  *(v8 + 376) = v36;
  v37 = *(v0 + v1[11]);
  if (v37)
  {
    v38 = sub_16D54C();
  }

  else
  {
    v38 = 0;
    *(v8 + 392) = 0;
    *(v8 + 400) = 0;
  }

  *(v8 + 384) = v37;
  *(v8 + 408) = v38;

  sub_76E7C();
  sub_774FC();
}

void sub_6E6B8()
{
  sub_77510();
  v5 = v1;
  sub_77488();
  v6 = sub_774E4();
  v7 = sub_4348(v6);
  __chkstk_darwin(v7);
  sub_887C();
  sub_77310();
  __chkstk_darwin(v8);
  sub_76B1C();
  __chkstk_darwin(v9);
  sub_76CCC();
  sub_2440(&qword_1C6078, &unk_172520);
  v10 = swift_allocObject();
  sub_76B40(v10, "actionAceCommandString", xmmword_1731C0);
  sub_76E28();
  sub_74678(v11, v12, v13, &unk_16F510);
  v14 = sub_16D5CC();
  sub_76A04(v2);
  if (v15)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v14;
    sub_9910((v10 + 48));
    sub_76AEC();
    sub_76E28();
    v16();
  }

  sub_76A7C();
  *(v10 + 80) = v17;
  *(v10 + 88) = v18;
  type metadata accessor for WellnessQueryingStepsParameters(0);
  sub_77388();
  sub_773A0();
  if (v20)
  {
    *(v10 + 104) = 0;
    *(v10 + 112) = 0;
    v21 = 0;
  }

  else
  {
    v21 = *v19;
  }

  *(v10 + 96) = v21;
  sub_76D18();
  sub_7757C(v22);
  sub_74678(v5 + v23, v3, &qword_1C5800, &unk_16F510);
  sub_76A04(v3);
  if (v15)
  {
    sub_8748(v3, &qword_1C5800, &unk_16F510);
    *(v10 + 144) = 0u;
    *(v10 + 160) = 0u;
  }

  else
  {
    *(v10 + 168) = v14;
    sub_9910((v10 + 144));
    sub_76AEC();
    sub_77394();
    v24();
  }

  sub_38B4C();
  *(v10 + 176) = v4;
  *(v10 + 184) = v25;
  v26 = *(v5 + v2[7]);
  if (v26)
  {
    v27 = sub_16D39C();
    v28 = v26;
  }

  else
  {
    v27 = sub_76C6C();
    *(v10 + 200) = 0;
    *(v10 + 208) = 0;
  }

  *(v10 + 192) = v28;
  *(v10 + 216) = v27;
  strcpy((v10 + 224), "lastQueryDate");
  *(v10 + 238) = -4864;
  v29 = *(v5 + v2[8]);
  if (v29)
  {
    type metadata accessor for WellnessTime(0);
    v30 = v29;
  }

  else
  {
    sub_76C6C();
    *(v10 + 248) = 0;
    *(v10 + 256) = 0;
  }

  *(v10 + 240) = v30;
  sub_77364();
  *(v10 + 264) = v31;
  *(v10 + 272) = v32;
  *(v10 + 280) = 0xE400000000000000;
  v33 = *(v5 + v2[9]);
  if (v33)
  {
    type metadata accessor for WellnessTime(0);
    v34 = v33;
  }

  else
  {
    sub_76C6C();
    *(v10 + 296) = 0;
    *(v10 + 304) = 0;
  }

  *(v10 + 288) = v34;
  sub_77568();
  *(v10 + 312) = v35;
  *(v10 + 320) = v36;
  *(v10 + 328) = 0xEA00000000006575;
  sub_773A0();
  if (v38)
  {
    v39 = 0;
    *(v10 + 344) = 0;
    *(v10 + 352) = 0;
    v40 = 0;
  }

  else
  {
    v40 = *v37;
    v39 = &type metadata for Double;
  }

  *(v10 + 336) = v40;
  *(v10 + 360) = v39;
  *(v10 + 368) = 1953066613;
  *(v10 + 376) = 0xE400000000000000;
  sub_74678(v5 + v2[11], v0, &qword_1C5800, &unk_16F510);
  sub_76A04(v0);
  if (v15)
  {

    sub_8748(v0, &qword_1C5800, &unk_16F510);
    *(v10 + 384) = 0u;
    *(v10 + 400) = 0u;
  }

  else
  {
    *(v10 + 408) = v14;
    sub_9910((v10 + 384));
    sub_76AEC();
    sub_77590();
    v41();
  }

  sub_774FC();
}

void sub_6EAAC()
{
  sub_77510();
  v4 = sub_774E4();
  v5 = sub_4348(v4);
  __chkstk_darwin(v5);
  sub_769E8();
  __chkstk_darwin(v6);
  sub_76B1C();
  __chkstk_darwin(v7);
  sub_76CCC();
  v8 = sub_2440(&qword_1C6078, &unk_172520);
  v9 = sub_7761C(v8);
  *(v9 + 16) = xmmword_173190;
  sub_38B4C();
  *(v10 + 32) = 0xD000000000000016;
  *(v10 + 40) = v11;
  sub_76E28();
  sub_74678(v12, v13, v14, &unk_16F510);
  v15 = sub_16D5CC();
  sub_76A04(v2);
  if (v16)
  {
    sub_8748(v2, &qword_1C5800, &unk_16F510);
    sub_76E34();
  }

  else
  {
    *(v9 + 72) = v15;
    sub_9910((v9 + 48));
    sub_76AEC();
    sub_76E28();
    v17();
  }

  v18 = sub_769C8();
  type metadata accessor for WellnessQueryingWeightParameters(v18);
  sub_77388();
  sub_7753C(&qword_1C5800, &unk_16F510, v19);
  sub_76A04(v3);
  if (v16)
  {
    sub_8748(v3, &qword_1C5800, &unk_16F510);
    sub_7737C();
  }

  else
  {
    *(v9 + 120) = v15;
    sub_9910((v9 + 96));
    sub_76AEC();
    sub_77394();
    v20();
  }

  sub_38B4C();
  *(v9 + 128) = 0xD000000000000014;
  *(v9 + 136) = v21;
  v22 = *(v0 + v2[6]);
  if (v22)
  {
    sub_16D39C();
    v23 = v22;
  }

  else
  {
    sub_76C6C();
    *(v9 + 152) = 0;
    *(v9 + 160) = 0;
  }

  *(v9 + 144) = v23;
  sub_38B4C();
  *(v9 + 168) = v24;
  *(v9 + 176) = 0xD000000000000016;
  *(v9 + 184) = v25;
  *(v9 + 192) = *(v0 + v2[7]);
  *(v9 + 216) = &type metadata for Bool;
  *(v9 + 224) = 0x65756C615678616DLL;
  *(v9 + 232) = 0xE800000000000000;
  sub_76D40();
  if (v27)
  {
    v29 = sub_76DBC();
  }

  else
  {
    v29 = *v26;
    v28 = &type metadata for Double;
  }

  sub_76C08(v28, v29);
  sub_76D40();
  if (v31)
  {
    v33 = sub_76DAC();
  }

  else
  {
    v33 = *v30;
    v32 = &type metadata for Double;
  }

  sub_76C94(v32, v33);
  v34 = *(v0 + v2[10]);
  if (v34)
  {
    v35 = type metadata accessor for WellnessTime(0);
    v36 = v34;
  }

  else
  {
    v35 = sub_76C6C();
    *(v9 + 344) = 0;
    *(v9 + 352) = 0;
  }

  sub_76C78(v35, v36);
  sub_7741C(&qword_1C5800, &unk_16F510, v2[11]);
  sub_76A04(v1);
  if (v16)
  {

    sub_8748(v1, &qword_1C5800, &unk_16F510);
    *(v9 + 384) = 0u;
    *(v9 + 400) = 0u;
  }

  else
  {
    *(v9 + 408) = v15;
    sub_9910((v9 + 384));
    sub_76AEC();
    sub_775E4();
    v37();
  }

  sub_76D74();
  sub_76D40();
  if (v39)
  {
    v41 = sub_773E4();
  }

  else
  {
    v41 = *v38;
    v40 = &type metadata for Double;
  }

  *(v9 + 432) = v41;
  *(v9 + 456) = v40;
  sub_76E7C();
  sub_774FC();
}

uint64_t sub_6EE28()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  active = type metadata accessor for WellnessQueryingActiveEnergyParameters(v3);
  sub_76ACC(active);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_6EE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v10 = sub_76D4C();
  v11 = sub_767D0(v10);
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CB1C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(29);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_6EF6C()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_6F08C()
{
  sub_8A88();
  sub_771CC();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_6F0E8()
{
  sub_8A88();
  sub_771CC();

  sub_76ADC();

  return v0();
}

uint64_t sub_6F144()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingBasalBodyTemperatureParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_6F1B8()
{
  sub_5E06C();
  sub_C9EC();
  sub_76D4C();
  sub_76978();
  v4 = sub_76A58(v3);
  sub_76CDC(v4, v5, v6);
  *(v0 + v7) = 0;
  *(v0 + *(v1 + 32)) = 0;
  v2(v0);
  sub_76E1C();
  sub_6B680();
  sub_76D00(v8);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = swift_task_alloc();
  v10 = sub_76D0C(v9);
  *v10 = v11;
  sub_769B4(v10);
  sub_76C50(37);
  sub_38F74();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_6F290()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_6F3B0()
{
  sub_8A88();
  sub_76EE0();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_6F40C()
{
  sub_8A88();
  sub_76EE0();

  sub_76ADC();

  return v0();
}

uint64_t sub_6F468()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingBloodGlucoseParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_6F4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  sub_77370();
  v10 = sub_16D5CC();
  sub_7689C(v10);
  v11 = sub_76D2C();
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CF4C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(29);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_6F5B8()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_6F6D8()
{
  sub_8A88();
  sub_770C4();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_6F734()
{
  sub_8A88();
  sub_770C4();

  sub_76ADC();

  return v0();
}

uint64_t sub_6F790()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingBloodOxygenParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_6F804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  sub_77370();
  v11 = sub_16D5CC();
  sub_7689C(v11);
  v10(v9);
  sub_76E1C();
  sub_6B90C();
  sub_76D00(v12);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v26 = v13;
  v14 = swift_task_alloc();
  v15 = sub_76D0C(v14);
  *v15 = v16;
  sub_769B4(v15);
  sub_76B30(28);
  sub_774AC();

  return v20(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26);
}

uint64_t sub_6F8CC()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_6F9EC()
{
  sub_8A88();
  sub_76EB4();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_6FA48()
{
  sub_8A88();
  sub_76EB4();

  sub_76ADC();

  return v0();
}

uint64_t sub_6FAA4()
{
  sub_8A88();
  v6 = sub_76CB0(v1, v2, v3, v4, v5);
  v7 = type metadata accessor for WellnessQueryingBloodPressure_DetailedResultParameters(v6);
  sub_76ACC(v7);
  *(v0 + 48) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8);
}

uint64_t sub_6FB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  sub_77370();
  v16 = v13[90];
  v17 = v13[89];
  v18 = v13[88];
  v19 = sub_16D5CC();
  v20 = sub_76AAC();
  sub_214C(v20, v21, v22, v19);
  v23 = sub_76A58(v15[5]);
  sub_214C(v23, v24, v25, v19);
  v26 = sub_76A58(v15[17]);
  sub_214C(v26, v27, v28, v19);
  sub_76A48(v15[6]);
  sub_76A48(v15[7]);
  sub_76A48(v15[8]);
  sub_76A48(v15[9]);
  *(v12 + v15[10]) = v18;
  *(v12 + v15[11]) = v17;
  *(v12 + v15[12]) = v16;
  *(v12 + v15[13]) = 0;
  sub_76A48(v15[14]);
  sub_76A48(v15[15]);
  *(v12 + v15[16]) = 0;
  sub_76A48(v15[18]);
  v14(v12);
  sub_76E1C();
  sub_6BC7C();
  sub_76D00(v29);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v43 = v30;
  v31 = swift_task_alloc();
  v32 = sub_76D0C(v31);
  *v32 = v33;
  sub_769B4(v32);
  sub_76C50(45);
  sub_8CC0();

  return v37(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10, a11, a12);
}

uint64_t sub_6FC7C()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_6FD9C()
{
  sub_8A88();
  sub_77224();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_6FDF8()
{
  sub_8A88();
  sub_77224();

  sub_76ADC();

  return v0();
}

uint64_t sub_6FE54()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingBloodPressure_SimpleResultParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_6FEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v13 = sub_76D4C();
  sub_76948(v13);
  v15 = sub_76A58(v14);
  sub_76CDC(v15, v16, v17);
  sub_76A48(v18);
  sub_76A48(v11[8]);
  *(v9 + v11[9]) = 0;
  v19 = sub_76A58(v11[10]);
  sub_214C(v19, v20, v21, v10);
  v12(v9);
  sub_76E1C();
  sub_6C1B8();
  sub_76D00(v22);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v36 = v23;
  v24 = swift_task_alloc();
  v25 = sub_76D0C(v24);
  *v25 = v26;
  sub_769B4(v25);
  sub_76B30(43);
  sub_774AC();

  return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36);
}

uint64_t sub_6FFB4()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_700D4()
{
  sub_8A88();
  sub_77098();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_70130()
{
  sub_8A88();
  sub_77098();

  sub_76ADC();

  return v0();
}

uint64_t sub_7018C()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingBodyTemperatureParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_70200()
{
  sub_5E06C();
  sub_C9EC();
  sub_76D4C();
  sub_76978();
  *(v0 + v2) = 0;
  sub_76860();
  sub_7744C(v3);
  v1(v0);
  sub_76E1C();
  sub_6C554();
  sub_76D00(v4);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v5 = swift_task_alloc();
  v6 = sub_76D0C(v5);
  *v6 = v7;
  sub_769B4(v6);
  sub_76C50(32);
  sub_38F74();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_702D0()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_703F0()
{
  sub_8A88();
  sub_76E88();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_7044C()
{
  sub_8A88();
  sub_76E88();

  sub_76ADC();

  return v0();
}

uint64_t sub_704A8()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingCardioFitnessParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_7051C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v12 = sub_76D4C();
  sub_76948(v12);
  v14 = sub_76A58(v13);
  sub_76CDC(v14, v15, v16);
  sub_76A48(v17);
  *(v9 + *(v10 + 32)) = 0;
  v11(v9);
  sub_76E1C();
  sub_6C89C();
  sub_76D00(v18);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v32 = v19;
  v20 = swift_task_alloc();
  v21 = sub_76D0C(v20);
  *v21 = v22;
  sub_769B4(v21);
  sub_76B30(30);
  sub_774AC();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32);
}

uint64_t sub_705F0()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_70710()
{
  sub_8A88();
  sub_7711C();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_7076C()
{
  sub_8A88();
  sub_7711C();

  sub_76ADC();

  return v0();
}

uint64_t sub_707C8()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingCyclingDistanceParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_7083C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v10 = sub_76D4C();
  v11 = sub_767D0(v10);
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CB1C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(32);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_7090C()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_70A2C()
{
  sub_8A88();
  sub_76F0C();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_70A88()
{
  sub_8A88();
  sub_76F0C();

  sub_76ADC();

  return v0();
}

uint64_t sub_70AE4()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingDistanceWalkingAndRunningParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_70B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v10 = sub_76D4C();
  v11 = sub_767D0(v10);
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CB1C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(42);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_70C28()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_70D48()
{
  sub_8A88();
  sub_7727C();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_70DA4()
{
  sub_8A88();
  sub_7727C();

  sub_76ADC();

  return v0();
}

uint64_t sub_70E00()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingDistanceWheelchairParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_70E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v10 = sub_76D4C();
  v11 = sub_767D0(v10);
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CB1C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(35);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_70F44()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_71064()
{
  sub_8A88();
  sub_77250();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_710C0()
{
  sub_8A88();
  sub_77250();

  sub_76ADC();

  return v0();
}

uint64_t sub_7111C()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingExerciseMinutesParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_71190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v10 = sub_76D4C();
  v11 = sub_767D0(v10);
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CB1C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(32);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_71260()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_71380()
{
  sub_8A88();
  sub_770F0();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_713DC()
{
  sub_8A88();
  sub_770F0();

  sub_76ADC();

  return v0();
}

uint64_t sub_71438()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingFlightsClimbedParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_714AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v10 = sub_76D4C();
  v11 = sub_767D0(v10);
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CB1C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(31);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_7157C()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_7169C()
{
  sub_8A88();
  sub_7706C();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_716F8()
{
  sub_8A88();
  sub_7706C();

  sub_76ADC();

  return v0();
}

uint64_t sub_71754()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingHeartRateParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_717C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  sub_77370();
  v10 = sub_16D5CC();
  sub_7689C(v10);
  v11 = sub_76D2C();
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CF4C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(26);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_718A4()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_719C4()
{
  sub_8A88();
  sub_77014();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_71A20()
{
  sub_8A88();
  sub_77014();

  sub_76ADC();

  return v0();
}

uint64_t sub_71A7C()
{
  sub_8A88();
  v5 = sub_77470(v1, v2, v3, v4);
  v6 = type metadata accessor for WellnessQueryingHeightParameters(v5);
  sub_76ACC(v6);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7);
}

uint64_t sub_71AF0()
{
  sub_76D68();
  v5 = sub_774C0();
  sub_76978();
  v7 = sub_76A58(v6);
  sub_214C(v7, v8, v9, v5);
  *(v0 + v1[6]) = v3;
  *(v0 + v1[7]) = v4;
  *(v0 + v1[8]) = 0;
  sub_7744C(v1[9]);
  *(v0 + v1[12]) = 0;
  v2(v0);
  sub_76E1C();
  sub_6D344();
  sub_76D00(v10);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v11 = swift_task_alloc();
  v12 = sub_76D0C(v11);
  *v12 = v13;
  sub_769B4(v12);
  v14 = sub_76C50(23);

  return v15(v14);
}

uint64_t sub_71BF8()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_71D18()
{
  sub_8A88();
  sub_771F8();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_71D74()
{
  sub_8A88();
  sub_771F8();

  sub_76ADC();

  return v0();
}

uint64_t sub_71DD0()
{
  sub_8A88();
  v5 = sub_77470(v1, v2, v3, v4);
  v6 = type metadata accessor for WellnessQueryingMenstruationEndParameters(v5);
  sub_76ACC(v6);
  *(v0 + 48) = sub_8BC0();
  v7 = sub_17960();

  return _swift_task_switch(v7);
}

uint64_t sub_71E44()
{
  sub_76D68();
  sub_774C0();
  sub_76978();
  v6 = sub_76A58(v5);
  sub_76CDC(v6, v7, v8);
  *(v0 + v9) = v4;
  *(v0 + *(v1 + 32)) = v3;
  v2(v0);
  sub_76E1C();
  sub_6D6A0();
  sub_76D00(v10);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v11 = swift_task_alloc();
  v12 = sub_76D0C(v11);
  *v12 = v13;
  sub_769B4(v12);
  v14 = sub_76C50(32);

  return v15(v14);
}

uint64_t sub_71F2C()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_7204C()
{
  sub_8A88();
  sub_772A8();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_720A8()
{
  sub_8A88();
  sub_772A8();

  sub_76ADC();

  return v0();
}

uint64_t sub_72104()
{
  sub_8A88();
  v6 = sub_76CB0(v1, v2, v3, v4, v5);
  started = type metadata accessor for WellnessQueryingMenstruationStartParameters(v6);
  sub_76ACC(started);
  *(v0 + 48) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8);
}

uint64_t sub_72178()
{
  sub_38664();
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[2];
  sub_775FC();
  sub_76978();
  v8 = sub_76A58(v7);
  sub_76CDC(v8, v9, v10);
  *(v4 + v11) = v3;
  *(v4 + *(v5 + 32)) = v2;
  *(v4 + *(v5 + 36)) = v1;
  v6(v4);
  sub_76E1C();
  sub_6D8B8();
  sub_76D00(v12);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v18 = v13;
  v14 = swift_task_alloc();
  v15 = sub_76D0C(v14);
  *v15 = v16;
  sub_769B4(v15);

  return v18(0xD000000000000022);
}

uint64_t sub_7227C()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_7239C()
{
  sub_8A88();
  sub_77148();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_723F8()
{
  sub_8A88();
  sub_77148();

  sub_76ADC();

  return v0();
}

uint64_t sub_72454()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingPushesParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_724C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v10 = sub_76D4C();
  v11 = sub_767D0(v10);
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CB1C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(23);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_72598()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_726B8()
{
  sub_8A88();
  sub_76F38();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_72714()
{
  sub_8A88();
  sub_76F38();

  sub_76ADC();

  return v0();
}

uint64_t sub_72770()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingRespiratoryRateParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_727E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  sub_77370();
  v10 = sub_16D5CC();
  sub_7689C(v10);
  v11 = sub_76D2C();
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CF4C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(32);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_728C0()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_729E0()
{
  sub_8A88();
  sub_77174();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_72A3C()
{
  sub_8A88();
  sub_77174();

  sub_76ADC();

  return v0();
}

uint64_t sub_72A98()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingRestingEnergyParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_72B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v10 = sub_76D4C();
  v11 = sub_767D0(v10);
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CB1C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(30);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_72BDC()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_72CFC()
{
  sub_8A88();
  sub_76FBC();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_72D58()
{
  sub_8A88();
  sub_76FBC();

  sub_76ADC();

  return v0();
}

uint64_t sub_72DB4()
{
  sub_8A88();
  v6 = sub_76CB0(v1, v2, v3, v4, v5);
  v7 = type metadata accessor for WellnessQueryingSleep_DetailedResultParameters(v6);
  sub_76ACC(v7);
  *(v0 + 48) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8);
}

uint64_t sub_72E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  sub_77370();
  v18 = sub_775FC();
  v19 = sub_76AAC();
  sub_214C(v19, v20, v21, v18);
  v22 = sub_76A58(v14[7]);
  sub_214C(v22, v23, v24, v18);
  *(v12 + v14[5]) = 0;
  *(v12 + v14[6]) = 0;
  sub_76C60(v14[8]);
  *(v25 + 8) = 1;
  sub_76C60(v14[9]);
  *(v26 + 8) = 1;
  *(v12 + v14[10]) = v17;
  *(v12 + v14[11]) = v16;
  *(v12 + v14[12]) = v15;
  sub_76C60(v14[13]);
  *(v27 + 8) = 1;
  *(v12 + v14[14]) = 0;
  *(v12 + v14[15]) = 0;
  sub_76C60(v14[16]);
  *(v28 + 8) = 1;
  v13(v12);
  sub_76E1C();
  sub_6DF30();
  sub_76D00(v29);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v43 = v30;
  v31 = swift_task_alloc();
  v32 = sub_76D0C(v31);
  *v32 = v33;
  sub_769B4(v32);
  sub_76C50(37);
  sub_8CC0();

  return v37(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10, a11, a12);
}

uint64_t sub_72F74()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_73094()
{
  sub_8A88();
  sub_76F64();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_730F0()
{
  sub_8A88();
  sub_76F64();

  sub_76ADC();

  return v0();
}

uint64_t sub_7314C()
{
  sub_8A88();
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 136) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 16) = v6;
  v7 = sub_16BE9C();
  *(v0 + 56) = v7;
  *(v0 + 64) = *(v7 - 8);
  *(v0 + 72) = sub_8BC0();
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  *(v0 + 80) = sub_8BC0();
  v9 = type metadata accessor for WellnessQueryingSleep_SimpleResultParameters(0);
  *(v0 + 88) = v9;
  sub_4348(v9);
  *(v0 + 96) = sub_8BC0();
  v10 = sub_17960();

  return _swift_task_switch(v10);
}

uint64_t sub_73254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v14 = *(v12 + 88);
  v13 = *(v12 + 96);
  v15 = *(v12 + 56);
  v16 = *(v12 + 24);
  v17 = sub_16D5CC();
  v18 = sub_76AAC();
  sub_214C(v18, v19, v20, v17);
  v21 = v14[5];
  *(v13 + v21) = 0;
  v22 = v14[6];
  *(v13 + v22) = 0;
  v23 = sub_76A58(v14[7]);
  sub_214C(v23, v24, v25, v17);
  v26 = v14[8];
  *(v13 + v26) = 0;
  v27 = v14[9];
  *(v13 + v27) = 0;
  *(v13 + v14[10]) = 0;
  *(v13 + v14[11]) = 0;
  v28 = sub_369C(v16, 1, v15);
  v29 = *(v12 + 80);
  if (v28)
  {
    sub_214C(*(v12 + 80), 1, 1, v17);
  }

  else
  {
    v31 = *(v12 + 64);
    v30 = *(v12 + 72);
    v32 = *(v12 + 56);
    (*(v31 + 16))(v30, *(v12 + 24), v32);
    sub_61120(v29);
    (*(v31 + 8))(v30, v32);
  }

  v33 = *(v12 + 136);
  v35 = *(v12 + 32);
  v34 = *(v12 + 40);
  sub_8640(*(v12 + 80), *(v12 + 96));
  *(v13 + v26) = v35;
  *(v13 + v27) = v34;
  if (v33 == 1)
  {
    v36 = *(v12 + 48);
    sub_16D53C();
    swift_allocObject();

    sub_16D52C();
    [v36 averageAsleepDuration];
    sub_16D51C();

    v37 = sub_16D50C();

    *(v13 + v21) = v37;
  }

  else
  {
  }

  v38 = *(v12 + 48);
  sub_16D53C();
  swift_allocObject();
  sub_16D52C();
  [v38 averageInBedDuration];
  sub_16D51C();

  v39 = sub_16D50C();

  *(v13 + v22) = v39;
  sub_6E354();
  *(v12 + 104) = v40;
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v52 = v41;
  v42 = swift_task_alloc();
  *(v12 + 112) = v42;
  *v42 = v12;
  v42[1] = sub_73510;
  sub_76C50(35);
  sub_8CC0();

  return v46(v43, v44, v45, v46, v47, v48, v49, v50, v52, a10, a11, a12);
}

uint64_t sub_73510()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 128) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_73630()
{
  sub_C9EC();
  sub_76DE4();

  v2 = *(v0 + 8);
  v3 = *(v0 + 128);

  return v2(v3);
}

uint64_t sub_736CC()
{
  sub_C9EC();
  sub_76DE4();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_73764()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingStandMinutesParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_737D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v10 = sub_76D4C();
  v11 = sub_767D0(v10);
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CB1C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(29);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_738A8()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_739C8()
{
  sub_8A88();
  sub_771A0();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_73A24()
{
  sub_8A88();
  sub_771A0();

  sub_76ADC();

  return v0();
}

uint64_t sub_73A80()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingStepsParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_73AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  v13 = sub_76D4C();
  sub_76948(v13);
  sub_76A48(v14);
  sub_76860();
  *(v9 + v15) = 0;
  sub_76A48(*(v11 + 40));
  v16 = sub_76A58(*(v11 + 44));
  sub_214C(v16, v17, v18, v10);
  v12(v9);
  sub_76E1C();
  sub_6E6B8();
  sub_76D00(v19);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v33 = v20;
  v21 = swift_task_alloc();
  v22 = sub_76D0C(v21);
  *v22 = v23;
  sub_769B4(v22);
  sub_76B30(22);
  sub_774AC();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33);
}

uint64_t sub_73BD8()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_73CF8()
{
  sub_8A88();
  sub_76FE8();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_73D54()
{
  sub_8A88();
  sub_76FE8();

  sub_76ADC();

  return v0();
}

uint64_t sub_73DB0()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessQueryingWalkingHeartRateAverageParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_73E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_7734C();
  sub_76D68();
  sub_77370();
  v10 = sub_16D5CC();
  sub_7689C(v10);
  v11 = sub_76D2C();
  v9(v11);
  v12 = sub_76DCC();
  v13 = sub_6CF4C(v12);
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v27 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  sub_769B4(v16);
  sub_76B30(40);
  sub_774AC();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_73F00()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_74020()
{
  sub_8A88();
  sub_76F90();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_7407C()
{
  sub_8A88();
  sub_76F90();

  sub_76ADC();

  return v0();
}

uint64_t sub_740D8()
{
  sub_8A88();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 88) = v4;
  v5 = type metadata accessor for WellnessQueryingWeightParameters(0);
  sub_76ACC(v5);
  *(v1 + 48) = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_74158()
{
  sub_76D68();
  sub_77370();
  v4 = *(v1 + 88);
  v5 = sub_16D5CC();
  v6 = sub_76AAC();
  sub_214C(v6, v7, v8, v5);
  v9 = sub_76A58(v3[5]);
  sub_214C(v9, v10, v11, v5);
  v12 = sub_76A58(v3[11]);
  sub_214C(v12, v13, v14, v5);
  *(v0 + v3[6]) = 0;
  *(v0 + v3[7]) = v4;
  sub_76C60(v3[8]);
  *(v15 + 8) = 1;
  sub_76C60(v3[9]);
  *(v16 + 8) = 1;
  *(v0 + v3[10]) = 0;
  sub_76C60(v3[12]);
  *(v17 + 8) = 1;
  v2(v0);
  sub_76E1C();
  sub_6EAAC();
  sub_76D00(v18);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v19 = swift_task_alloc();
  v20 = sub_76D0C(v19);
  *v20 = v21;
  sub_769B4(v20);
  v22 = sub_76C50(23);

  return v23(v22);
}

uint64_t sub_742A0()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_743C0()
{
  sub_8A88();
  sub_77040();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_7441C()
{
  sub_8A88();
  sub_77040();

  sub_76ADC();

  return v0();
}

uint64_t sub_744CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_16D63C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = sub_2440(&qword_1C57F8, &unk_172510);
  v8 = sub_4348(v7);
  __chkstk_darwin(v8);
  sub_74678(a1, &v13 - v9, &qword_1C57F8, &unk_172510);
  sub_775E4();
  v10();
  v11 = sub_16D56C();
  (*(v6 + 8))(a2, v5);
  sub_8748(a1, &qword_1C57F8, &unk_172510);
  return v11;
}

uint64_t sub_74678(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_2440(a3, a4);
  sub_8B38();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_746F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_8B38();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_74B10(uint64_t a1)
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720, &type metadata for Double);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_75CD8(319, &qword_1C70B8, &type metadata accessor for DialogCalendarRange);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_75CD8(319, &unk_1C70C0, type metadata accessor for WellnessTime);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_74C78()
{
  sub_76D8C();
  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v2 + 84) != v0)
  {
    return sub_76A24(*(v1 + 52));
  }

  v3 = sub_76D9C();

  return sub_369C(v3, v4, v5);
}

void sub_74D20()
{
  sub_76BF4();
  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v2 + 84) == v1)
  {
    v3 = sub_76BE0();

    sub_214C(v3, v4, v5, v6);
  }

  else
  {
    sub_77464(*(v0 + 52));
  }
}

uint64_t sub_74DB4(uint64_t a1)
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720, &type metadata for Double);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_75CD8(319, &qword_1C70B8, &type metadata accessor for DialogCalendarRange);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_75CD8(319, &unk_1C70C0, type metadata accessor for WellnessTime);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_74F54(uint64_t a1)
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_75CD8(319, &qword_1C70B8, &type metadata accessor for DialogCalendarRange);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_3A10(319, &qword_1C5720, &type metadata for Double);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_75CD8(319, &unk_1C70C0, type metadata accessor for WellnessTime);
    if (v7 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_750B0(uint64_t a1)
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_75CD8(319, &unk_1C7170, &type metadata accessor for DialogTemperature);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_75CD8(319, &qword_1C70B8, &type metadata accessor for DialogCalendarRange);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_75CD8(319, &unk_1C70C0, type metadata accessor for WellnessTime);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_75254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_76BB8(a1, &qword_1C64B8);
  if (v10 <= 0x3F)
  {
    sub_76B90(v9, &qword_1C70B8);
    if (v11 <= 0x3F)
    {
      v12 = a6(319, a4, a5);
      if (v13 <= 0x3F)
      {
        sub_76B68(v12, &unk_1C70C0);
        if (v14 <= 0x3F)
        {
          sub_7740C();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_75354(uint64_t a1)
{
  sub_76BB8(a1, &qword_1C64B8);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720, &type metadata for Double);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_76B90(v4, &qword_1C70B8);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_76B68(v6, &unk_1C70C0);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_7740C();
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_7551C(uint64_t a1)
{
  sub_76BB8(a1, &qword_1C64B8);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720, &type metadata for Double);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_76B90(v4, &qword_1C70B8);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_76B68(v6, &unk_1C70C0);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_3A10(319, &unk_1C7218, &type metadata for Bool);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          sub_7740C();
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_75660()
{
  sub_76D8C();
  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v2 + 84) != v0)
  {
    return sub_76A24(*(v1 + 32));
  }

  v3 = sub_76D9C();

  return sub_369C(v3, v4, v5);
}

void sub_75708()
{
  sub_76BF4();
  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v2 + 84) == v1)
  {
    v3 = sub_76BE0();

    sub_214C(v3, v4, v5, v6);
  }

  else
  {
    sub_77464(*(v0 + 32));
  }
}

void sub_7579C(uint64_t a1)
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  if (v1 <= 0x3F)
  {
    sub_75CD8(319, &unk_1C7A30, &type metadata accessor for DialogPersonHeight);
    if (v2 <= 0x3F)
    {
      sub_75CD8(319, &qword_1C70B8, &type metadata accessor for DialogCalendarRange);
      if (v3 <= 0x3F)
      {
        sub_75CD8(319, &unk_1C70C0, type metadata accessor for WellnessTime);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_758FC(uint64_t a1)
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  if (v1 <= 0x3F)
  {
    sub_75CD8(319, &unk_1C7AE8, &type metadata accessor for DialogCalendar);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_759F0(uint64_t a1)
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  if (v1 <= 0x3F)
  {
    sub_75CD8(319, &unk_1C7AE8, &type metadata accessor for DialogCalendar);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_75B58(uint64_t a1)
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_75CD8(319, &unk_1C7E30, &type metadata accessor for DialogDuration);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_3A10(319, &qword_1C5720, &type metadata for Double);
    v2 = v6;
    if (v7 > 0x3F)
    {
      return v2;
    }

    sub_75CD8(319, &qword_1C70B8, &type metadata accessor for DialogCalendarRange);
    if (v8 > 0x3F)
    {
      return v4;
    }

    sub_75CD8(319, &unk_1C70C0, type metadata accessor for WellnessTime);
    if (v9 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_75CD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_16E3EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_75D7C(uint64_t a1)
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720, &type metadata for Double);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_75CD8(319, &qword_1C70B8, &type metadata accessor for DialogCalendarRange);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_75CD8(319, &unk_1C70C0, type metadata accessor for WellnessTime);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_75ED8()
{
  sub_76D8C();
  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v2 + 84) != v0)
  {
    return sub_76A24(*(v1 + 28));
  }

  v3 = sub_76D9C();

  return sub_369C(v3, v4, v5);
}

void sub_75F80()
{
  sub_76BF4();
  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v2 + 84) == v1)
  {
    v3 = sub_76BE0();

    sub_214C(v3, v4, v5, v6);
  }

  else
  {
    sub_77464(*(v0 + 28));
  }
}

uint64_t sub_7603C(uint64_t a1)
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_75CD8(319, &qword_1C70B8, &type metadata accessor for DialogCalendarRange);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_3A10(319, &qword_1C5720, &type metadata for Double);
    if (v7 > 0x3F)
    {
      return v6;
    }

    sub_75CD8(319, &unk_1C70C0, type metadata accessor for WellnessTime);
    if (v8 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_761D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7621C()
{
  sub_76D8C();
  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v2 + 84) != v0)
  {
    return sub_76A24(*(v1 + 24));
  }

  v3 = sub_76D9C();

  return sub_369C(v3, v4, v5);
}

void sub_762C4()
{
  sub_76BF4();
  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v2 + 84) == v1)
  {
    v3 = sub_76BE0();

    sub_214C(v3, v4, v5, v6);
  }

  else
  {
    sub_77464(*(v0 + 24));
  }
}

uint64_t sub_76358(uint64_t a1)
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_75CD8(319, &unk_1C7AE8, &type metadata accessor for DialogCalendar);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_3A10(319, &qword_1C5720, &type metadata for Double);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_76480()
{
  sub_76D8C();
  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v2 + 84) != v0)
  {
    return sub_76A24(*(v1 + 20));
  }

  v3 = sub_76D9C();

  return sub_369C(v3, v4, v5);
}

void sub_76528()
{
  sub_76BF4();
  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v2 + 84) == v1)
  {
    v3 = sub_76BE0();

    sub_214C(v3, v4, v5, v6);
  }

  else
  {
    sub_77464(*(v0 + 20));
  }
}

uint64_t sub_765BC(uint64_t a1)
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_75CD8(319, &unk_1C7E30, &type metadata accessor for DialogDuration);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_75CD8(319, &qword_1C70B8, &type metadata accessor for DialogCalendarRange);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_75CD8(319, &unk_1C70C0, type metadata accessor for WellnessTime);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_767D0(uint64_t a1)
{
  sub_214C(v1, 1, 1, a1);
  v4 = v1 + v2[5];
  *v4 = 0;
  *(v4 + 8) = 1;
  sub_214C(v1 + v2[6], 1, 1, a1);
  *(v1 + v2[7]) = 0;
  *(v1 + v2[8]) = 0;
  v5 = v1 + v2[9];
  *v5 = 0;
  *(v5 + 8) = 1;
  sub_214C(v1 + v2[10], 1, 1, a1);
  return v1;
}

uint64_t sub_76860()
{
  result = sub_214C(v0 + v2[6], 1, 1, v1);
  *(v0 + v2[7]) = 0;
  *(v0 + v2[8]) = 0;
  return result;
}

uint64_t sub_7689C(uint64_t a1)
{
  sub_214C(v1, 1, 1, a1);
  v4 = v1 + v2[5];
  *v4 = 0;
  *(v4 + 8) = 1;
  sub_214C(v1 + v2[6], 1, 1, a1);
  *(v1 + v2[7]) = 0;
  v5 = v1 + v2[8];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v1 + v2[9];
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v1 + v2[10]) = 0;
  result = sub_214C(v1 + v2[11], 1, 1, a1);
  v8 = v1 + v2[12];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t sub_769C8()
{
  *(v0 + 80) = 0x6570795461746164;
  *(v0 + 88) = 0xE800000000000000;
  return 0;
}

uint64_t sub_76A24@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  v3 = v2 - 1;
  if (v3 < 0)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void sub_76A48(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = v2;
}

uint64_t sub_76AFC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return 0;
}

__n128 *sub_76B40@<X0>(__n128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result[1] = a3;
  result[2].n128_u64[0] = v3 | 2;
  result[2].n128_u64[1] = (a2 - 32) | 0x8000000000000000;
  return result;
}

void sub_76B68(uint64_t a1, unint64_t *a2)
{

  sub_75CD8(319, a2, type metadata accessor for WellnessTime);
}

void sub_76B90(uint64_t a1, unint64_t *a2)
{

  sub_75CD8(319, a2, &type metadata accessor for DialogCalendarRange);
}

void sub_76BB8(uint64_t a1, unint64_t *a2)
{

  sub_75CD8(319, a2, &type metadata accessor for SpeakableString);
}

void sub_76C08(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v2 + 240) = a2;
  *(v2 + 264) = a1;
  *(v2 + 272) = 0x65756C61566E696DLL;
  *(v2 + 280) = 0xE800000000000000;
}

uint64_t sub_76C2C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[24] = a2;
  v2[27] = result;
  v2[28] = 0x65756C615678616DLL;
  v2[29] = 0xE800000000000000;
  return result;
}

uint64_t sub_76C78@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[42] = a2;
  v2[45] = result;
  v2[46] = 1953066613;
  v2[47] = 0xE400000000000000;
  return result;
}

void sub_76C94(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v2 + 288) = a2;
  *(v2 + 312) = a1;
  *(v2 + 320) = 1701669236;
  *(v2 + 328) = 0xE400000000000000;
}

uint64_t sub_76CB0(char a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = v5;
  *(v6 + 16) = a4;
  *(v6 + 90) = a3;
  *(v6 + 89) = a2;
  *(v6 + 88) = a1;
  return 0;
}

uint64_t sub_76CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_214C(a1, a2, a3, v4);
  *(v3 + *(v5 + 24)) = 0;
  return result;
}

uint64_t sub_76D4C()
{

  return sub_16D5CC();
}

double sub_76DAC()
{
  *(v0 + 296) = 0;
  *(v0 + 304) = 0;
  return 0.0;
}

double sub_76DBC()
{
  *(v0 + 248) = 0;
  *(v0 + 256) = 0;
  return 0.0;
}

uint64_t sub_76DE4()
{
  v2 = *(v0 + 96);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingSleep_SimpleResultParameters);
}

double sub_76E34()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

void sub_76E4C(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v2 + 288) = a2;
  *(v2 + 312) = a1;
  strcpy((v2 + 320), "isFirstWindow");
  *(v2 + 334) = -4864;
}

uint64_t sub_76E88()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingBodyTemperatureParameters);
}

uint64_t sub_76EB4()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingBloodOxygenParameters);
}

uint64_t sub_76EE0()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingBasalBodyTemperatureParameters);
}

uint64_t sub_76F0C()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingCyclingDistanceParameters);
}

uint64_t sub_76F38()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingPushesParameters);
}

uint64_t sub_76F64()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingSleep_DetailedResultParameters);
}

uint64_t sub_76F90()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingWalkingHeartRateAverageParameters);
}

uint64_t sub_76FBC()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingRestingEnergyParameters);
}

uint64_t sub_76FE8()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingStepsParameters);
}

uint64_t sub_77014()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingHeartRateParameters);
}

uint64_t sub_77040()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingWeightParameters);
}

uint64_t sub_7706C()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingFlightsClimbedParameters);
}

uint64_t sub_77098()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingBloodPressure_SimpleResultParameters);
}

uint64_t sub_770C4()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingBloodGlucoseParameters);
}

uint64_t sub_770F0()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingExerciseMinutesParameters);
}

uint64_t sub_7711C()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingCardioFitnessParameters);
}

uint64_t sub_77148()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingMenstruationStartParameters);
}

uint64_t sub_77174()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingRespiratoryRateParameters);
}

uint64_t sub_771A0()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingStandMinutesParameters);
}

uint64_t sub_771CC()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingActiveEnergyParameters);
}

uint64_t sub_771F8()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingHeightParameters);
}

uint64_t sub_77224()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingBloodPressure_DetailedResultParameters);
}

uint64_t sub_77250()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingDistanceWheelchairParameters);
}

uint64_t sub_7727C()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingDistanceWalkingAndRunningParameters);
}

uint64_t sub_772A8()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingMenstruationEndParameters);
}

void sub_772D4(char a1@<W8>)
{
  *(v2 + 336) = a1;
  *(v2 + 360) = v1;
  strcpy((v2 + 368), "isLastWindow");
  *(v2 + 381) = 0;
  *(v2 + 382) = -5120;
}

uint64_t sub_77320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = v2;
  *(a1 + 40) = a2;
  return v3;
}

double sub_7737C()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

double sub_773AC()
{
  result = 0.0;
  *v0 = 0u;
  return result;
}

double sub_773E4()
{
  *(v0 + 440) = 0;
  *(v0 + 448) = 0;
  return 0.0;
}

uint64_t *sub_773F4()
{
  *(v0 + 72) = v1;

  return sub_9910((v0 + 48));
}

uint64_t sub_7741C@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_74678(v3 + a3, v4, a1, a2);
}

uint64_t sub_77434()
{

  return sub_2440(v0, v1);
}

void sub_7744C(uint64_t a1@<X8>)
{
  *(v1 + a1) = 0;
  *(v1 + *(v2 + 40)) = 0;
  *(v1 + *(v2 + 44)) = 0;
}

uint64_t sub_77470(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 16) = a3;
  *(v5 + 89) = a2;
  *(v5 + 88) = a1;
  return 0;
}

uint64_t sub_774C0()
{

  return sub_16D5CC();
}

uint64_t sub_774E4()
{

  return sub_2440(v0, v1);
}

uint64_t *sub_77524()
{
  *(v0 + 120) = v1;

  return sub_9910((v0 + 96));
}

uint64_t sub_7753C@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_74678(v3 + a3, v4, a1, a2);
}

void sub_7757C(uint64_t a1@<X8>)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = 0xE800000000000000;
}

uint64_t sub_7759C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[15] = result;
  v2[16] = v3;
  v2[17] = a2;
  return result;
}

uint64_t sub_775BC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[21] = result;
  v2[22] = a2;
  v2[23] = 0xE800000000000000;
  return result;
}

uint64_t sub_775FC()
{

  return sub_16D5CC();
}

uint64_t sub_7761C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_77634@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_74678(v3 + a3, v4, a1, a2);
}

uint64_t sub_77654(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 256))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_77694(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_77724(uint64_t a1, uint64_t a2)
{
  sub_78880();

  return sub_16C33C();
}

uint64_t sub_77778()
{
  sub_8A88();
  v1[27] = v2;
  v1[28] = v0;
  v1[29] = type metadata accessor for GenericButtonModel(0);
  v1[30] = sub_8BC0();
  sub_2440(&qword_1C57F8, &unk_172510);
  v1[31] = sub_8BC0();
  v3 = sub_16BE9C();
  v1[32] = v3;
  sub_888C(v3);
  v1[33] = v4;
  v1[34] = sub_8BC0();
  v5 = sub_16C46C();
  v1[35] = v5;
  sub_888C(v5);
  v1[36] = v6;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v7 = sub_16C7BC();
  v1[39] = v7;
  sub_888C(v7);
  v1[40] = v8;
  v1[41] = sub_8BC0();
  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_77920()
{
  sub_8A88();
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_779B0;

  return sub_1671CC();
}

uint64_t sub_779B0()
{
  sub_8A88();
  sub_C9D4();
  *(v2 + 344) = v1;

  if (v0)
  {

    v3 = sub_78340;
  }

  else
  {
    v3 = sub_77AC4;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_77AC4(uint64_t a1)
{
  v2 = v1[43];
  v4 = v1[37];
  v3 = v1[38];
  v5 = v1[35];
  v6 = v1[36];
  v7 = v1[28];
  sub_16C45C();
  (*(v6 + 16))(v4, v3, v5);
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C7AC();
  v8 = [v2 catId];
  sub_16E1BC();

  sub_16C76C();
  v9 = v7[3];
  v10 = v7[4];
  sub_2D20(v7, v9);
  (*(v10 + 8))(v9, v10);
  sub_2D20(v1 + 2, v1[5]);
  if (sub_16C40C())
  {
    sub_2D64(v1 + 2);
LABEL_4:
    v15 = v1[31];
    v14 = v1[32];
    v16 = sub_9A820(0x616548206E65704FLL, 0xEB0000000068746CLL, 0x6C6165486E65706FLL, 0xED00007070416874);
    v18 = v17;
    sub_16BE8C();
    v19 = sub_369C(v15, 1, v14);
    if (v19 == 1)
    {
      __break(1u);
    }

    else
    {
      v25 = v1[43];
      v27 = v1[33];
      v26 = v1[34];
      v28 = v1[32];
      v30 = v1[29];
      v29 = v1[30];
      v31 = v1[28];
      (*(v27 + 32))(v26, v1[31], v28);
      (*(v27 + 16))(v29 + *(v30 + 20), v26, v28);
      *v29 = v16;
      v29[1] = v18;
      v32 = v31[28];
      v33 = v31[29];
      sub_2D20(v31 + 25, v32);
      v1[25] = type metadata accessor for WellnessSnippets(0);
      v1[26] = sub_17548();
      v34 = sub_9910(v1 + 22);
      sub_175A0(v29, v34);
      swift_storeEnumTagMultiPayload();
      sub_2440(&qword_1C5ED8, &unk_173090);
      v35 = swift_allocObject();
      v1[44] = v35;
      *(v35 + 16) = xmmword_170F70;
      *(v35 + 32) = v25;
      v36 = v25;
      swift_task_alloc();
      sub_179E8();
      v1[45] = v37;
      *v37 = v38;
      v37[1] = sub_77F74;
      v22 = v1[41];
      v19 = (v1 + 17);
      v20 = v1 + 22;
      v21 = v35;
      v23 = v32;
      v24 = v33;
    }

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v19, v20, v21, v22, v23, v24);
  }

  v12 = v7[3];
  v11 = v7[4];
  sub_2D20(v1[28], v12);
  (*(v11 + 8))(v12, v11);
  sub_2D20(v1 + 7, v1[10]);
  v13 = sub_16C3FC();
  sub_2D64(v1 + 7);
  sub_2D64(v1 + 2);
  if (v13)
  {
    goto LABEL_4;
  }

  v39 = v1[43];
  v40 = v1[28];
  v41 = v40[28];
  v42 = v40[29];
  sub_2D20(v40 + 25, v41);
  sub_2440(&qword_1C5ED8, &unk_173090);
  v43 = swift_allocObject();
  v1[46] = v43;
  *(v43 + 16) = xmmword_170F70;
  *(v43 + 32) = v39;
  v44 = v39;
  swift_task_alloc();
  sub_179E8();
  v1[47] = v45;
  *v45 = v46;
  v45[1] = sub_78178;
  v47 = v1[41];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v1 + 12, v43, v47, v41, v42);
}

uint64_t sub_77F74()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  sub_2D64((v2 + 176));
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_7807C()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);
  v7 = *(v0 + 240);
  v8 = *(v0 + 216);

  sub_17604(v7);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_17464((v0 + 136), v8);
  sub_788D4();

  sub_C9BC();

  return v9();
}

uint64_t sub_78178()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_78278()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v0 + 216);

  (*(v2 + 8))(v1, v3);
  sub_17464((v0 + 96), v4);
  sub_788D4();

  sub_C9BC();

  return v5();
}

uint64_t sub_78340(uint64_t a1)
{
  v2 = *(v1 + 216);
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  sub_788D4();

  sub_C9BC();

  return v3();
}

uint64_t sub_783E0()
{
  sub_8A88();
  v1[38] = v2;
  v1[39] = v0;
  swift_task_alloc();
  sub_179E8();
  v1[40] = v3;
  *v3 = v4;
  v3[1] = sub_78470;

  return sub_77778();
}

uint64_t sub_78470()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_78554()
{
  if (*(v0 + 240))
  {
    sub_17464((v0 + 216), v0 + 176);
    sub_8388(v0 + 176, v0 + 256);
    v1 = swift_allocObject();
    sub_17464((v0 + 256), v1 + 16);
    sub_16C73C();
    sub_16C1DC();
    swift_allocObject();
    *(v0 + 296) = sub_16C1CC();
    sub_16C4EC();
    sub_2D64((v0 + 176));
  }

  else
  {
    v2 = *(v0 + 312);
    sub_7874C(v0 + 216);
    sub_8284(v2 + 40, v0 + 16);
    sub_82E0();
    sub_16C4EC();
    sub_8334(v0 + 16);
  }

  sub_C9BC();

  return v3();
}

uint64_t sub_786B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_783E0();
}

uint64_t sub_7874C(uint64_t a1)
{
  v2 = sub_2440(&qword_1C5ED0, &qword_171090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_787B4()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_787EC()
{
  sub_8A88();
  v3 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_C6F0;

  return sub_16AC0(v3, v0 + 16);
}

unint64_t sub_78880()
{
  result = qword_1C8298;
  if (!qword_1C8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8298);
  }

  return result;
}

uint64_t sub_788D4()
{
}

uint64_t sub_788FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 264))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_7893C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_789CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_16C58C();
  swift_allocObject();
  result = sub_16C57C();
  a1[3] = v2;
  a1[4] = &protocol witness table for ResponseFactory;
  *a1 = result;
  return result;
}

uint64_t sub_78A7C(uint64_t (*a1)(void), uint64_t (*a2)(char *, void))
{
  v4 = sub_16D63C();
  v5 = sub_4348(v4);
  __chkstk_darwin(v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(0);
  sub_16D62C();
  return a2(v7, 0);
}

uint64_t sub_78B18(uint64_t a1, uint64_t a2)
{
  sub_84F0();

  return sub_16C33C();
}

uint64_t sub_78B6C()
{
  sub_8A88();
  v1[7] = v2;
  v1[8] = v0;
  v3 = type metadata accessor for GenericButtonModel(0);
  v1[9] = v3;
  sub_4348(v3);
  v1[10] = sub_8BC0();
  v4 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v4);
  v1[11] = sub_8BC0();
  v5 = sub_16BE9C();
  v1[12] = v5;
  sub_888C(v5);
  v1[13] = v6;
  v1[14] = sub_8BC0();
  v7 = sub_16C46C();
  v1[15] = v7;
  sub_888C(v7);
  v1[16] = v8;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v9 = sub_16C7BC();
  v1[19] = v9;
  sub_888C(v9);
  v1[20] = v10;
  v1[21] = sub_8BC0();
  v11 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v11);
  v1[22] = sub_8BC0();
  v12 = sub_17960();

  return _swift_task_switch(v12);
}

uint64_t sub_78D38()
{
  v1 = *(v0 + 176);
  sub_208C0(**(v0 + 64));
  sub_16E23C();

  v2 = sub_16D5CC();
  sub_214C(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_78E18;

  return sub_3E2F8();
}

uint64_t sub_78E18()
{
  sub_8A88();
  sub_C9D4();
  v3 = *(v2 + 176);
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *(v7 + 192) = v6;
  *(v7 + 200) = v0;

  sub_C878(v3, &qword_1C5800, &unk_16F510);
  if (v0)
  {
    v8 = sub_796C4;
  }

  else
  {
    v8 = sub_78F4C;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_78F4C(uint64_t a1)
{
  v2 = v1[24];
  v4 = v1[17];
  v3 = v1[18];
  v5 = v1[15];
  v6 = v1[16];
  v8 = v1[11];
  v7 = v1[12];
  sub_16C43C();
  (*(v6 + 16))(v4, v3, v5);
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C7AC();
  v9 = [v2 catId];
  sub_16E1BC();

  sub_16C76C();
  sub_121FA0(v8);
  if (sub_369C(v8, 1, v7) == 1)
  {
    v10 = v1[24];
    v11 = v1[8];
    sub_C878(v1[11], &qword_1C57F8, &unk_172510);
    sub_2D20((v11 + 208), *(v11 + 232));
    sub_2440(&qword_1C5ED8, &unk_173090);
    v12 = swift_allocObject();
    v1[28] = v12;
    *(v12 + 16) = xmmword_170F70;
    *(v12 + 32) = v10;
    v13 = v10;
    swift_task_alloc();
    sub_179E8();
    v1[29] = v14;
    *v14 = v15;
    v14[1] = sub_79500;
    sub_8CC0();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v16, v17, v18, v19, v20);
  }

  else
  {
    v22 = v1[24];
    v24 = v1[13];
    v23 = v1[14];
    v25 = v1[12];
    v27 = v1[9];
    v26 = v1[10];
    v28 = v1[8];
    (*(v24 + 32))(v23, v1[11], v25);
    v29 = sub_9A820(0xD000000000000014, 0x800000000017E5C0, 0xD000000000000012, 0x800000000017E5E0);
    v31 = v30;
    (*(v24 + 16))(v26 + *(v27 + 20), v23, v25);
    *v26 = v29;
    v26[1] = v31;
    sub_2D20((v28 + 208), *(v28 + 232));
    v1[5] = type metadata accessor for WellnessSnippets(0);
    v1[6] = sub_17548();
    v32 = sub_9910(v1 + 2);
    sub_175A0(v26, v32);
    swift_storeEnumTagMultiPayload();
    sub_2440(&qword_1C5ED8, &unk_173090);
    v33 = swift_allocObject();
    v1[26] = v33;
    *(v33 + 16) = xmmword_170F70;
    *(v33 + 32) = v22;
    v34 = v22;
    swift_task_alloc();
    sub_179E8();
    v1[27] = v35;
    *v35 = v36;
    v35[1] = sub_79300;
    sub_8CC0();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v37, v38, v39, v40, v41, v42);
  }
}

uint64_t sub_79300()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  sub_2D64((v2 + 16));
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_79408()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);

  sub_17604(v7);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_79E24();

  sub_C9BC();

  return v8();
}

uint64_t sub_79500()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_79600()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);

  (*(v2 + 8))(v1, v3);
  sub_79E24();

  sub_C9BC();

  return v4();
}

uint64_t sub_796C4(uint64_t a1)
{
  sub_79E24();

  sub_C9BC();

  return v1();
}

uint64_t sub_79760()
{
  sub_8A88();
  v0[16] = v1;
  v2 = sub_16C38C();
  v0[17] = v2;
  sub_888C(v2);
  v0[18] = v3;
  v0[19] = sub_8BC0();
  v4 = sub_16DBEC();
  v0[20] = v4;
  sub_888C(v4);
  v0[21] = v5;
  v0[22] = sub_8BC0();
  swift_task_alloc();
  sub_179E8();
  v0[23] = v6;
  *v6 = v7;
  v6[1] = sub_79888;

  return sub_78B6C();
}

uint64_t sub_79888()
{
  sub_8A88();
  sub_C9D4();
  v2 = *v1;
  sub_C990();
  *v3 = v2;
  *(v4 + 192) = v0;

  if (v0)
  {
    v5 = sub_79AA8;
  }

  else
  {
    v5 = sub_7998C;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_7998C()
{
  sub_8388(v0 + 16, v0 + 56);
  v1 = swift_allocObject();
  sub_17464((v0 + 56), v1 + 16);
  sub_16C73C();
  sub_16C1DC();
  swift_allocObject();
  *(v0 + 120) = sub_16C1CC();
  sub_16C4EC();
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v2();
}

void sub_79AA8(uint64_t a1)
{
  v3 = v1[21];
  v2 = v1[22];
  v4 = v1[20];
  v5 = sub_16DBBC();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E37C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&def_259DC, v6, v7, "Caught unexpected exception %@, attempting server fallback", v8, 0xCu);
    sub_C878(v9, &qword_1C57B8, &qword_1715A0);
  }

  v12 = v1[21];
  v11 = v1[22];
  v14 = v1[19];
  v13 = v1[20];
  v15 = v1[17];
  v16 = v1[18];

  (*(v12 + 8))(v11, v13);
  (*(v16 + 104))(v14, enum case for FlowUnhandledReason.needsServerExecution(_:), v15);
  sub_16C52C();

  (*(v16 + 8))(v14, v15);

  sub_C9BC();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_79CC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_79760();
}

uint64_t sub_79D58()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_79D90()
{
  sub_8A88();
  v3 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_C6F0;

  return sub_16AC0(v3, v0 + 16);
}

uint64_t sub_79E24()
{
}

unint64_t sub_79EA4(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD00000000000002ALL;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
    case 7:
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD00000000000001FLL;
      break;
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_79FFC()
{
  v1 = sub_2440(&qword_1C5800, &unk_16F510);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = swift_allocObject();
  sub_7B5F4(v4, xmmword_173B00);
  if (v5)
  {
    v6 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
    v7 = 0.0;
  }

  else
  {
    v7 = *v0;
    v6 = &type metadata for Double;
  }

  sub_7B624(v6, v7);
  sub_7B68C(v8);
  *(v4 + 120) = &type metadata for Bool;
  *(v4 + 128) = v9;
  sub_7B5C4();
  *(v4 + 168) = &type metadata for Bool;
  *(v4 + 176) = v10;
  sub_7B670();
  sub_38B4C();
  *(v4 + 216) = &type metadata for Bool;
  *(v4 + 224) = 0xD000000000000016;
  sub_7B654(v11);
  *(v4 + 264) = &type metadata for Bool;
  *(v4 + 272) = v12;
  *(v4 + 280) = 0xE500000000000000;
  v13 = *(v0 + 16);
  sub_2440(&qword_1C82F8, &unk_173BF0);
  *(v4 + 288) = v13;
  sub_38B4C();
  *(v4 + 312) = v14;
  *(v4 + 320) = 0xD000000000000013;
  *(v4 + 328) = v15;
  if (*(v0 + 32))
  {
    v16 = 0;
    *(v4 + 344) = 0;
    *(v4 + 352) = 0;
    v17 = 0;
  }

  else
  {
    v17 = *(v0 + 24);
    v16 = &type metadata for Double;
  }

  *(v4 + 336) = v17;
  *(v4 + 360) = v16;
  *(v4 + 368) = 0x64654D664F6D756ELL;
  *(v4 + 376) = 0xE800000000000000;
  if (*(v0 + 48))
  {
    v18 = 0;
    *(v4 + 392) = 0;
    *(v4 + 400) = 0;
    v19 = 0;
  }

  else
  {
    v19 = *(v0 + 40);
    v18 = &type metadata for Double;
  }

  *(v4 + 384) = v19;
  *(v4 + 408) = v18;
  *(v4 + 416) = 0xD000000000000010;
  *(v4 + 424) = 0x800000000017AE00;
  v20 = type metadata accessor for WellnessDisambiguateMedNameParameters(0);
  sub_7B09C(v0 + v20[12], v3, &qword_1C5800, &unk_16F510);
  v21 = sub_16D5CC();
  if (sub_369C(v3, 1, v21) == 1)
  {

    sub_5CFC8(v3, &qword_1C5800, &unk_16F510);
    *(v4 + 432) = 0u;
    *(v4 + 448) = 0u;
  }

  else
  {
    *(v4 + 456) = v21;
    sub_9910((v4 + 432));
    sub_5DE54();
    (*(v22 + 32))();
  }

  *(v4 + 464) = 0xD000000000000016;
  *(v4 + 472) = 0x800000000017AE20;
  *(v4 + 480) = *(v0 + v20[13]);
  sub_7B6A4();
  *(v4 + 504) = &type metadata for Bool;
  *(v4 + 512) = v24;
  *(v4 + 520) = v23 + 3571;
  v25 = (v0 + v20[14]);
  if (v25[1])
  {
    v26 = 0;
    *(v4 + 536) = 0u;
    v27 = 0;
  }

  else
  {
    v27 = *v25;
    v26 = &type metadata for Double;
  }

  *(v4 + 528) = v27;
  *(v4 + 552) = v26;
  *(v4 + 560) = 0x6953776F646E6977;
  *(v4 + 568) = v23;
  v28 = (v0 + v20[15]);
  if (v28[1])
  {
    v29 = 0;
    *(v4 + 584) = 0u;
    v30 = 0;
  }

  else
  {
    v30 = *v28;
    v29 = &type metadata for Double;
  }

  *(v4 + 576) = v30;
  *(v4 + 600) = v29;
  return v4;
}

uint64_t sub_7A35C()
{
  v1 = sub_2440(&qword_1C5800, &unk_16F510);
  __chkstk_darwin(v1 - 8);
  v3 = &v36 - v2;
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = swift_allocObject();
  sub_7B5F4(v4, xmmword_173B10);
  if (v5)
  {
    v6 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
    v7 = 0.0;
  }

  else
  {
    v7 = *v0;
    v6 = &type metadata for Double;
  }

  sub_7B624(v6, v7);
  sub_7B68C(v8);
  *(v4 + 120) = v10;
  *(v4 + 128) = v9;
  sub_7B5C4();
  *(v4 + 168) = v12;
  *(v4 + 176) = v11;
  sub_7B670();
  sub_38B4C();
  *(v4 + 216) = v13;
  *(v4 + 224) = 0xD000000000000016;
  sub_7B654(v14);
  *(v4 + 264) = v16;
  *(v4 + 272) = v15;
  *(v4 + 280) = 0xE500000000000000;
  v17 = *(v0 + 16);
  sub_2440(&qword_1C82F0, &unk_173BE0);
  *(v4 + 288) = v17;
  sub_38B4C();
  *(v4 + 312) = v18;
  *(v4 + 320) = 0xD000000000000013;
  *(v4 + 328) = v19;
  if (*(v0 + 32))
  {
    v20 = 0;
    *(v4 + 344) = 0;
    *(v4 + 352) = 0;
    v21 = 0;
  }

  else
  {
    v21 = *(v0 + 24);
    v20 = &type metadata for Double;
  }

  *(v4 + 336) = v21;
  *(v4 + 360) = v20;
  strcpy((v4 + 368), "numOfSchedule");
  *(v4 + 382) = -4864;
  if (*(v0 + 48))
  {
    v22 = 0;
    *(v4 + 392) = 0;
    *(v4 + 400) = 0;
    v23 = 0;
  }

  else
  {
    v23 = *(v0 + 40);
    v22 = &type metadata for Double;
  }

  *(v4 + 384) = v23;
  *(v4 + 408) = v22;
  *(v4 + 416) = 0xD000000000000014;
  *(v4 + 424) = 0x800000000017E660;
  v24 = type metadata accessor for WellnessDisambiguateMedScheduleParameters(0);
  sub_7B09C(v0 + v24[12], v3, &qword_1C5800, &unk_16F510);
  v25 = sub_16D5CC();
  if (sub_369C(v3, 1, v25) == 1)
  {

    sub_5CFC8(v3, &qword_1C5800, &unk_16F510);
    *(v4 + 432) = 0u;
    *(v4 + 448) = 0u;
  }

  else
  {
    *(v4 + 456) = v25;
    sub_9910((v4 + 432));
    sub_5DE54();
    (*(v26 + 32))();
  }

  sub_7B6A4();
  *(v4 + 464) = v28;
  *(v4 + 472) = v27 + 3571;
  v29 = (v0 + v24[13]);
  if (v29[1])
  {
    v30 = 0;
    *(v4 + 488) = 0;
    *(v4 + 496) = 0;
    v31 = 0;
  }

  else
  {
    v31 = *v29;
    v30 = &type metadata for Double;
  }

  *(v4 + 480) = v31;
  *(v4 + 504) = v30;
  *(v4 + 512) = 0x6953776F646E6977;
  *(v4 + 520) = v27;
  v32 = (v0 + v24[14]);
  if (v32[1])
  {
    v33 = 0;
    *(v4 + 536) = 0u;
    v34 = 0;
  }

  else
  {
    v34 = *v32;
    v33 = &type metadata for Double;
  }

  *(v4 + 528) = v34;
  *(v4 + 552) = v33;
  return v4;
}

uint64_t sub_7A690(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_7A6B4);
}

uint64_t sub_7A6B4()
{
  sub_386A8();
  v1 = *(v0 + 48);
  sub_2440(&qword_1C6078, &unk_172520);
  v2 = swift_allocObject();
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_16F530;
  sub_38B4C();
  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = v4;
  *(v3 + 72) = &type metadata for Bool;
  *(v3 + 48) = v1;
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v8 = v5;
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_7A7D4;

  return v8(0xD000000000000016, 0x800000000017E720, v2);
}

uint64_t sub_7A7D4()
{
  sub_386A8();
  v3 = v2;
  v4 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_7A928);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(v3);
  }
}

uint64_t sub_7A928()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_7A98C()
{
  sub_386A8();
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_7B5C0;
  sub_40160();
  v3 = sub_40198(25);

  return v4(v3);
}

uint64_t sub_7AA38()
{
  sub_386A8();
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_7AAE4;
  sub_40160();
  v3 = sub_40198(21);

  return v4(v3);
}

uint64_t sub_7AAE4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_7ABE4()
{
  sub_386A8();
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_7B5C0;
  sub_40160();
  v3 = sub_40198(28);

  return v4(v3);
}

uint64_t sub_7AC90()
{
  sub_386A8();
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_7B5C0;
  sub_40160();
  v3 = sub_40198(31);

  return v4(v3);
}

uint64_t sub_7AD3C()
{
  sub_386A8();
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_7B5C0;
  sub_40160();
  v3 = sub_40198(28);

  return v4(v3);
}

uint64_t sub_7ADE8()
{
  sub_386A8();
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_7B5C0;
  sub_40160();
  v3 = sub_40198(26);

  return v4(v3);
}

uint64_t sub_7AEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_16D63C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v9 - 8);
  sub_7B09C(a1, &v13 - v10, &qword_1C57F8, &unk_172510);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_16D56C();
  (*(v6 + 8))(a2, v5);
  sub_5CFC8(a1, &qword_1C57F8, &unk_172510);
  return v11;
}

uint64_t sub_7B09C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_2440(a3, a4);
  sub_5DE54();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_7B150(uint64_t a1)
{
  sub_7B288();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_7B554(319, &unk_1C8368, type metadata accessor for WellnessMedicationDialogObject, &type metadata accessor for Array);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_7B554(319, &qword_1C64B8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_7B288()
{
  if (!qword_1C5720)
  {
    v0 = sub_16E3EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C5720);
    }
  }
}

uint64_t sub_7B2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2440(&qword_1C5800, &unk_16F510);
    v9 = a1 + *(a3 + 48);

    return sub_369C(v9, a2, v8);
  }
}

uint64_t sub_7B394(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_2440(&qword_1C5800, &unk_16F510);
    v8 = v5 + *(a4 + 48);

    return sub_214C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_7B420(uint64_t a1)
{
  sub_7B288();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_7B554(319, &unk_1C8428, type metadata accessor for WellnessDialogStringQuartet, &type metadata accessor for Array);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_7B554(319, &qword_1C64B8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_7B554(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 *sub_7B5F4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6E69577473726966;
  result[2].n128_u64[1] = 0xEF657A6953776F64;
  return result;
}

void sub_7B624(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v2 + 48) = a2;
  *(v2 + 72) = a1;
  strcpy((v2 + 80), "isConclusion");
  *(v2 + 93) = 0;
  *(v2 + 94) = -5120;
}

uint64_t sub_7B6B8@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v41 = sub_16BF5C();
  sub_7BB14();
  v39 = v1;
  __chkstk_darwin(v2);
  v40 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_16C0BC();
  v38 = v4;
  sub_7BB14();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  v13 = sub_2440(&qword_1C57E0, &unk_171C60);
  __chkstk_darwin(v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_2440(&qword_1C8480, &unk_1742D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v35 - v17;
  v19 = sub_2440(&qword_1C8488, &unk_173C60);
  __chkstk_darwin(v19 - 8);
  v21 = &v35 - v20;
  v36 = sub_16BE2C();
  sub_7BB14();
  v23 = v22;
  __chkstk_darwin(v24);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214C(v21, 1, 1, v4);
  v27 = sub_16C0EC();
  sub_214C(v18, 1, 1, v27);
  v28 = v39;
  sub_16BE1C();
  sub_16BDBC();
  sub_16BE0C();
  sub_16C08C();
  sub_16C08C();
  v29 = v40;
  sub_16C02C();
  v30 = *(v6 + 8);
  v31 = v10;
  v32 = v38;
  v30(v31, v38);
  sub_16C05C();
  v33 = v41;
  (*(v28 + 8))(v29, v41);
  v30(v12, v32);
  result = sub_369C(v15, 1, v33);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v23 + 8))(v26, v36);
    return (*(v28 + 32))(v37, v15, v33);
  }

  return result;
}

unint64_t sub_7BB24(char a1)
{
  result = 0x656C756465686373;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x697461636964656DLL;
      break;
    case 3:
    case 4:
      result = 0x6874676E65727473;
      break;
    default:
      result = 0xD000000000000031;
      break;
  }

  return result;
}

uint64_t sub_7BBDC(void *a1)
{
  v2 = v1;
  sub_7BE88();
  v4 = sub_7BECC(0xD000000000000031, 0x800000000017DF40);
  sub_2440(&qword_1C5858, &qword_173C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_172980;
  strcpy(&v19, "medicationID");
  BYTE13(v19) = 0;
  HIWORD(v19) = -5120;
  sub_7C10C(&v19);
  v19 = v2[1];
  v6 = sub_2440(&qword_1C69C8, &qword_174150);
  *(inited + 96) = v6;
  *(inited + 72) = v2[1];
  *&v18 = 0x6874676E65727473;
  *(&v18 + 1) = 0xE800000000000000;
  sub_7BF40(&v19, &v17);
  sub_7C10C(&v18);
  *(inited + 168) = sub_2440(&qword_1C57A0, &qword_16F3C0);
  *(inited + 144) = *(v2 + 4);
  *(inited + 152) = *(v2 + 40);
  strcpy(&v18, "strengthUnit");
  BYTE13(v18) = 0;
  HIWORD(v18) = -5120;
  sub_7C10C(&v18);
  v18 = v2[3];
  v7 = v18;
  *(inited + 240) = v6;
  *(inited + 216) = v7;
  *&v17 = 0x656C756465686373;
  *(&v17 + 1) = 0xEA00000000004449;
  sub_7BF40(&v18, v16);
  sub_7C10C(&v17);
  v17 = *v2;
  v8 = v17;
  *(inited + 312) = v6;
  *(inited + 288) = v8;
  sub_7BF40(&v17, v16);
  v9 = sub_16E14C();
  sub_7BFB0(v9, v4);
  v10 = objc_opt_self();
  sub_2D20(a1, a1[3]);
  v11 = sub_16C42C();
  v12 = [v10 runSiriKitExecutorCommandWithContext:v11 payload:v4];

  v13 = [v10 wrapCommandInStartLocalRequest:v12];
  v14 = sub_16E3CC();

  return v14;
}

unint64_t sub_7BE88()
{
  result = qword_1C8490;
  if (!qword_1C8490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C8490);
  }

  return result;
}

id sub_7BECC(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_16E1AC();

  v4 = [v2 initWithIdentifier:v3];

  return v4;
}

uint64_t sub_7BF40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C69C8, &qword_174150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_7BFB0(uint64_t a1, void *a2)
{
  isa = sub_16E13C().super.isa;

  [a2 setUserData:isa];
}

__n128 sub_7C030(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_7C044(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_7C098(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_7C10C(uint64_t a1)
{

  return sub_16E41C();
}

uint64_t sub_7C124()
{
  v1 = OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_name;
  v2 = sub_16D5CC();
  sub_214C(v0 + v1, 1, 1, v2);
  sub_7DED0(OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_scheduleString);
  sub_7DED0(OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_scheduleID);
  sub_7DED0(OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_medicationID);
  v3 = v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_strength;
  *v3 = 0;
  *(v3 + 8) = 1;
  sub_7DED0(OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_strengthUnit);
  sub_7DED0(OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_onSelectCommand);
  return v0;
}

uint64_t sub_7C1C8()
{
  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_name);
  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_scheduleString);
  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_scheduleID);
  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_medicationID);
  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_strengthUnit);
  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_onSelectCommand);
  return v0;
}

uint64_t sub_7C274(uint64_t a1)
{
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  __chkstk_darwin(v3 - 8);
  v5 = &v10[-v4];
  *(v1 + 16) = 0;
  sub_8B48(a1 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_name, v15);
  sub_7DFB0(OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_name);
  sub_8B48(a1 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_scheduleString, v14);
  sub_7DFB0(OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_scheduleString);
  sub_8B48(a1 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_scheduleID, v13);
  sub_7DFB0(OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_scheduleID);
  sub_8B48(a1 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_medicationID, v12);
  sub_7DFB0(OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_medicationID);
  v6 = *(a1 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_strength + 8);
  v7 = v1 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_strength;
  *v7 = *(a1 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_strength);
  *(v7 + 8) = v6;
  sub_8B48(a1 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_strengthUnit, v11);
  sub_7DFB0(OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_strengthUnit);
  v8 = OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_onSelectCommand;
  sub_8B48(a1 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_onSelectCommand, v10);
  sub_7DA9C(a1 + v8, v5);

  sub_7DB0C(v5, v1 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_onSelectCommand);
  return v1;
}

uint64_t sub_7C3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for WellnessMedicationDialogObject.Builder(0);
  v16 = swift_allocObject();
  v17 = sub_7C124();
  v18 = OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_name;
  sub_7DF34(v17);
  sub_7DA2C(a1, v16 + v18);
  v19 = swift_endAccess();
  v20 = OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_scheduleString;
  sub_7DF34(v19);
  sub_7DA2C(a2, v16 + v20);
  v21 = swift_endAccess();
  v22 = OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_scheduleID;
  sub_7DF34(v21);
  sub_7DA2C(a3, v16 + v22);
  v23 = swift_endAccess();
  v24 = OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_medicationID;
  sub_7DF34(v23);
  sub_7DA2C(a4, v16 + v24);
  v25 = swift_endAccess();
  v26 = v16 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_strength;
  *v26 = a5;
  *(v26 + 8) = a6 & 1;
  v27 = OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_strengthUnit;
  sub_7DFDC(v25);
  sub_7DA2C(a7, v16 + v27);
  v28 = swift_endAccess();
  v29 = OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_onSelectCommand;
  sub_7DFDC(v28);
  sub_7DA2C(a8, v16 + v29);
  swift_endAccess();
  type metadata accessor for WellnessMedicationDialogObject(0);
  v30 = swift_allocObject();
  sub_7C274(v16);
  sub_6261C(a8);
  sub_6261C(a7);
  sub_6261C(a4);
  sub_6261C(a3);
  sub_6261C(a2);
  sub_6261C(a1);
  return v30;
}

double sub_7C5AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v38 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - v16;
  __chkstk_darwin(v15);
  sub_7DFC8();
  __chkstk_darwin(v18);
  sub_8C94();
  __chkstk_darwin(v19);
  v21 = &v38 - v20;
  v22 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v22 || (sub_7DF18(1701667182, 0xE400000000000000) & 1) != 0)
  {
    sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_name, v21);
    sub_16D5CC();
    sub_7DEB0(v21);
    if (!v22)
    {
      goto LABEL_56;
    }

    v23 = v21;
    goto LABEL_9;
  }

  v26 = a1 == 0x656C756465686373 && a2 == 0xEE00676E69727453;
  if (v26 || (sub_7DF18(0x656C756465686373, 0xEE00676E69727453) & 1) != 0)
  {
    sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_scheduleString, v5);
    sub_16D5CC();
    sub_7DEB0(v5);
    if (!v22)
    {
      goto LABEL_56;
    }

    v23 = v5;
    goto LABEL_9;
  }

  v27 = a1 == 0x656C756465686373 && a2 == 0xEA00000000004449;
  if (v27 || (sub_7DF18(0x656C756465686373, 0xEA00000000004449) & 1) != 0)
  {
    sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_scheduleID, v4);
    sub_16D5CC();
    sub_7DEB0(v4);
    if (!v22)
    {
      goto LABEL_56;
    }

    v23 = v4;
    goto LABEL_9;
  }

  v28 = sub_7DF90();
  v30 = a1 == v28 && a2 == v29;
  if (v30 || (sub_7DF18(v28, v29) & 1) != 0)
  {
    sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_medicationID, v17);
    sub_16D5CC();
    sub_7DEB0(v17);
    if (!v22)
    {
      goto LABEL_56;
    }

    v23 = v17;
    goto LABEL_9;
  }

  v31 = a1 == 0x6874676E65727473 && a2 == 0xE800000000000000;
  if (v31 || (sub_7DF18(0x6874676E65727473, 0xE800000000000000) & 1) != 0)
  {
    if ((*(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_strength + 8) & 1) == 0)
    {
      result = *(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_strength);
      v32 = v39;
      *(v39 + 24) = &type metadata for Double;
      *v32 = result;
      return result;
    }

LABEL_10:
    result = 0.0;
    v25 = v39;
    *v39 = 0u;
    *(v25 + 16) = 0u;
    return result;
  }

  v33 = a1 == 0x6874676E65727473 && a2 == 0xEC00000074696E55;
  if (v33 || (sub_7DF18(0x6874676E65727473, 0xEC00000074696E55) & 1) != 0)
  {
    sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_strengthUnit, v14);
    sub_16D5CC();
    sub_7DEB0(v14);
    if (!v22)
    {
      goto LABEL_56;
    }

    v23 = v14;
    goto LABEL_9;
  }

  v34 = sub_7DF54();
  v36 = a1 == v34 && a2 == v35;
  if (!v36 && (sub_7DF18(v34, v35) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_onSelectCommand, v11);
  sub_16D5CC();
  sub_7DEB0(v11);
  if (v22)
  {
    v23 = v11;
LABEL_9:
    sub_6261C(v23);
    goto LABEL_10;
  }

LABEL_56:
  sub_7DF78();
  sub_7DE8C();
  (*(v37 + 32))();
  return result;
}

unint64_t sub_7CA28(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1B8490;
  v6._object = a2;
  v4 = sub_16E55C(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_7CA80(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x656C756465686373;
      break;
    case 3:
      result = sub_7DF90();
      break;
    case 4:
    case 5:
      result = 0x6874676E65727473;
      break;
    case 6:
      result = sub_7DF54();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_7CB7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_7CA28(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_7CBAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7CA80(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_7CBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_7CA74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_7CC14(uint64_t a1)
{
  v2 = sub_7DB7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7CC50(uint64_t a1)
{
  v2 = sub_7DB7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7CC8C()
{
  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_name);
  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_scheduleString);
  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_scheduleID);
  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_medicationID);
  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_strengthUnit);
  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_onSelectCommand);
  return v0;
}

uint64_t sub_7CD24(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return _swift_deallocClassInstance(v1, v2, v3);
}

void sub_7CDA8(uint64_t a1)
{
  sub_7D0F4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_7CE58(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1C87E0, &qword_173E50);
  sub_42F0();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  sub_2D20(a1, a1[3]);
  sub_7DB7C();
  sub_16E77C();
  v11 = OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_name;
  v15[15] = 0;
  sub_16D5CC();
  sub_7DF00();
  sub_7D9E4(v12, v13, &protocol conformance descriptor for SpeakableString);
  sub_7DE68(v3 + v11);
  if (!v2)
  {
    v15[14] = 1;
    sub_7DE68(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_scheduleString);
    v15[13] = 2;
    sub_7DE68(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_scheduleID);
    v15[12] = 3;
    sub_7DE68(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_medicationID);
    v15[11] = 4;
    sub_16E62C();
    v15[10] = 5;
    sub_7DE68(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_strengthUnit);
    v15[9] = 6;
    sub_7DE68(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_onSelectCommand);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_7D0A4(void *a1)
{
  v2 = swift_allocObject();
  sub_7D218(a1);
  return v2;
}

void sub_7D0F4(uint64_t a1)
{
  if (!qword_1C64B8)
  {
    sub_16D5CC();
    v1 = sub_16E3EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1C64B8);
    }
  }
}

void sub_7D174(uint64_t a1)
{
  sub_7D0F4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_7D218(void *a1)
{
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  v6 = __chkstk_darwin(v5 - 8);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  sub_7DFC8();
  v9 = __chkstk_darwin(v8);
  v11 = &v35 - v10;
  __chkstk_darwin(v9);
  sub_8C94();
  v13 = __chkstk_darwin(v12);
  v15 = &v35 - v14;
  __chkstk_darwin(v13);
  v40 = &v35 - v16;
  v41 = sub_2440(&qword_1C87D0, &qword_173E48);
  sub_42F0();
  v39 = v17;
  __chkstk_darwin(v18);
  v20 = &v35 - v19;
  v43 = v1;
  v44 = a1;
  *(v1 + 16) = 0;
  sub_2D20(a1, a1[3]);
  sub_7DB7C();
  v21 = v42;
  sub_16E76C();
  if (v21)
  {
    v27 = v43;

    type metadata accessor for WellnessMedicationDialogObject(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v42 = v3;
    v36 = v2;
    v37 = v11;
    v22 = v39;
    sub_16D5CC();
    v51 = 0;
    sub_7DF00();
    sub_7D9E4(v23, v24, &protocol conformance descriptor for SpeakableString);
    v25 = v40;
    sub_7DE9C();
    sub_16E5AC();
    v27 = v43;
    sub_7DB0C(v25, v43 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_name);
    v50 = 1;
    sub_7DE9C();
    sub_16E5AC();
    sub_7DB0C(v15, v27 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_scheduleString);
    v49 = 2;
    v28 = v42;
    sub_7DE9C();
    v40 = 0;
    sub_16E5AC();
    sub_7DB0C(v28, v27 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_scheduleID);
    v48 = 3;
    v29 = v37;
    sub_7DE9C();
    sub_16E5AC();
    sub_7DB0C(v29, v27 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_medicationID);
    v47 = 4;
    v30 = sub_16E59C();
    v31 = v27 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_strength;
    *v31 = v30;
    *(v31 + 8) = v32 & 1;
    v46 = 5;
    v33 = v36;
    sub_16E5AC();
    sub_7DB0C(v33, v27 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_strengthUnit);
    v45 = 6;
    v34 = v38;
    sub_16E5AC();
    (*(v22 + 8))(v20, v41);
    sub_7DB0C(v34, v27 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_onSelectCommand);
  }

  sub_2D64(v44);
  return v27;
}

void *sub_7D7F4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_7D83C(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t sub_7D904@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_7D0A4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_7D9E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_7DA2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_7DA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7DB0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_7DB7C()
{
  result = qword_1C87D8;
  if (!qword_1C87D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C87D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WellnessMedicationDialogObject.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WellnessMedicationDialogObject.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x7DD24);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}