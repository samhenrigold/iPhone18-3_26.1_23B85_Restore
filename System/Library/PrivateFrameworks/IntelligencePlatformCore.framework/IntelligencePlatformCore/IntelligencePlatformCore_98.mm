uint64_t sub_1C4D17710()
{
  sub_1C43FEAEC();
  sub_1C4D1ED24();
  sub_1C441BE98((v0 + 16));
  sub_1C4411260();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1C4D17818;
  v3 = sub_1C4404904();

  return v5(v3);
}

uint64_t sub_1C4D17818()
{
  sub_1C43FCF70();
  sub_1C447CCB8();
  sub_1C44001F0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v0;

  sub_1C4461DAC();
  sub_1C447E3E8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4D17950()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C445AEF8;

  return sub_1C4D16160();
}

uint64_t sub_1C4D179E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C4D176F4();
}

uint64_t sub_1C4D17A90(uint64_t a1, unsigned int a2, uint64_t a3, char a4)
{
  swift_defaultActor_initialize();
  *(v4 + 128) = a2;
  *(v4 + 112) = a3;
  *(v4 + 120) = a1;
  v9 = a2 >> 14;
  if (v9 < 2)
  {
    goto LABEL_6;
  }

  if (BYTE2(a1))
  {
    if (BYTE2(a1) == 1)
    {
      v10 = 0;
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a1)
  {
LABEL_6:
    v10 = 2;
    goto LABEL_7;
  }

  v10 = 1;
LABEL_7:
  *(v4 + 130) = v10;
  *(v4 + 131) = a4;
  v11 = (a2 >> 8) & 0x3F;
  if (v9 != 1)
  {
    LOBYTE(v11) = BYTE2(a1);
  }

  if (a2 >> 14)
  {
    v12 = v11;
  }

  else
  {
    v12 = a1;
  }

  *(v4 + 132) = v12;
  return v4;
}

uint64_t sub_1C4D17B60()
{
  sub_1C43FCF70();
  sub_1C443D71C(&qword_1EC0C6440, v1, type metadata accessor for ViewUpdate.ViewTruncateJob, &unk_1C4F6D6E8);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1C4D17C48;
  sub_1C440F4D4(*(v0 + 16));
  sub_1C442BBB8();

  return sub_1C4D17D60();
}

uint64_t sub_1C4D17C48()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;

  if (v0)
  {
    sub_1C43FBDA0();

    return v4();
  }

  else
  {
    sub_1C4D1ECD4();
    v6 = sub_1C4401EF4();

    return v7(v6);
  }
}

uint64_t sub_1C4D17D60()
{
  sub_1C43FCF70();
  sub_1C43FFB44();
  *(v1 + 298) = v2;
  *(v1 + 296) = v3;
  *(v1 + 104) = v4;
  *(v1 + 112) = v0;
  *(v1 + 120) = _s7MetricsO7PayloadVMa(0);
  sub_1C4404280();
  *(v1 + 128) = v5;
  *(v1 + 136) = sub_1C43FE604();
  *(v1 + 144) = swift_task_alloc();
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v6);
  *(v1 + 152) = sub_1C43FBE7C();
  v7 = sub_1C456902C(&qword_1EC0C6428, qword_1C4F6D7E8);
  sub_1C43FBD18(v7);
  *(v1 + 160) = sub_1C43FE604();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  swift_getObjectType();
  v9 = sub_1C4F017F8();
  *(v1 + 192) = v9;
  *(v1 + 200) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C4D17EC8, v9, v8);
}

uint64_t sub_1C4D17EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C4405098();
  a21 = v25;
  a22 = v26;
  sub_1C44142CC();
  a20 = v22;
  v27 = sub_1C4D1179C();
  *(v22 + 208) = v27;
  v28 = v27;
  if (qword_1EDDFD018 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v29 = *(v22 + 104);
  v30 = *(v22 + 296);
  v31 = sub_1C4F00978();
  *(v22 + 216) = sub_1C43FCEE8(v31, qword_1EDE2DDF8);
  sub_1C44174AC();
  swift_bridgeObjectRetain_n();
  v32 = sub_1C43FD2BC();
  sub_1C4428D8C(v32, v33);
  v34 = sub_1C4F00968();
  sub_1C4F01CF8();
  v35 = sub_1C4428F14();
  sub_1C4463890(v35, v30);
  if (sub_1C444AD54())
  {
    v36 = *(v22 + 104);
    v37 = *(v22 + 296);
    sub_1C441024C();
    swift_slowAlloc();
    sub_1C440A2C8();
    v38 = swift_slowAlloc();
    a10 = v38;
    *v29 = 136446466;
    v39 = sub_1C442A10C(v36, v37);
    v23 = v40;
    sub_1C441D828(v39, v40, &a10);

    sub_1C4485F54();
    *(v29 + 14) = v23;

    sub_1C4415A90();
    _os_log_impl(v41, v42, v43, v44, v45, 0x16u);
    sub_1C440962C(v38);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v46 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v46);
  }

  else
  {
    sub_1C44174AC();
    swift_bridgeObjectRelease_n();
  }

  v47 = *(v28 + 16);
  *(v22 + 224) = v47;
  if (v47)
  {
    v48 = MEMORY[0x1E69E7CC0];
    *(v22 + 72) = MEMORY[0x1E69E7CC0];
    sub_1C43FCF64();
    result = sub_1C440BAA8(v49, v50, v51, v52);
    *(v22 + 240) = v48;
    *(v22 + 248) = v48;
    *(v22 + 232) = 0;
    v54 = *(v22 + 208);
    if (v54[2])
    {
      sub_1C445EAF0(v54);
      v55 = sub_1C4F00968();
      sub_1C4F01CF8();
      sub_1C44AB2BC();

      if (os_log_type_enabled(v55, v23))
      {
        sub_1C43FECF0();
        v56 = swift_slowAlloc();
        sub_1C43FEC60();
        swift_slowAlloc();
        sub_1C44C1320();
        sub_1C44AB1E0(4.8751e-34);
        v57 = sub_1C4F02858();
        sub_1C4424DA0(v57, v58);
        v59 = sub_1C43FBEF8();
        MEMORY[0x1C6940010](v59);

        sub_1C444C088(v60, v61);
        sub_1C4460618();
        *(v56 + 4) = v24;
        sub_1C44BBF64(&dword_1C43F8000, v55, v23, "ViewUpdate: %{public}s: Truncation start");
        _os_log_impl(v62, v63, v64, v65, v66, v67);
        sub_1C4415138();
        v68 = sub_1C4416E14();
        MEMORY[0x1C6942830](v68);
      }

      sub_1C4480878();
      sub_1C44884F8();
      if (v77)
      {
        v78 = sub_1C4416BC0();
        sub_1C442D874(v78);
        sub_1C4EF9CC8();
        sub_1C440B7F4();
        sub_1C447F668();
        sub_1C468282C();
      }

      v79 = swift_task_alloc();
      *(v22 + 280) = v79;
      *v79 = v22;
      sub_1C440E9F8(v79);
      sub_1C43FD0C0();

      return sub_1C4D12F80(v80, v81, v82, v83);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1C4D1C120(*(v22 + 104), *(v22 + 296), v28, "ViewUpdate: %{public}s: Truncating %ld views - end");

    sub_1C445BB70();

    sub_1C43FBCF0();
    sub_1C43FD0C0();

    return v71(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14);
  }

  return result;
}

uint64_t sub_1C4D182C4()
{
  sub_1C43FCF70();
  sub_1C447CCB8();
  sub_1C44001F0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 288) = v0;

  sub_1C4461DAC();
  v6 = *(v5 + 200);
  v7 = *(v1 + 192);
  if (v0)
  {
    v8 = sub_1C4D189B8;
  }

  else
  {
    v8 = sub_1C4D183EC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

void sub_1C4D183EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  sub_1C4405098();
  a21 = v23;
  a22 = v24;
  sub_1C44142CC();
  a20 = v22;
  v25 = v22[36];
  sub_1C4475650();
  if (!sub_1C442F7D8())
  {
    sub_1C4EF9CC8();
    sub_1C4EF9CD8();
    sub_1C43FBD94();
    sub_1C440BAA8(v26, v27, v28, v29);
    sub_1C468282C();
    sub_1C4475650();
  }

  v30 = v22[20];
  sub_1C4404BCC();
  sub_1C4D1ECE0();
  sub_1C43FD2BC();
  sub_1C4D1ECE0();
  if (sub_1C4401818(v30) == 1)
  {
    v31 = v22[20];
    sub_1C4420C3C(v22[21], &qword_1EC0C6428, qword_1C4F6D7E8);
    sub_1C4420C3C(v31, &qword_1EC0C6428, qword_1C4F6D7E8);
    v32 = v22[30];
    v33 = v22[31];
  }

  else
  {
    sub_1C4420954();
    sub_1C446268C();
    sub_1C43FE1EC();
    sub_1C4459500();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v22[30];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C441D4A8();
      v32 = v102;
    }

    v36 = *(v32 + 16);
    v35 = *(v32 + 24);
    if (v36 >= v35 >> 1)
    {
      v103 = sub_1C43FFD98(v35);
      sub_1C458F628(v103, v104, v105, v32);
      v32 = v106;
    }

    v37 = v22[21];
    sub_1C44114B8(v22[18]);
    sub_1C4420C3C(v37, &qword_1EC0C6428, qword_1C4F6D7E8);
    *(v32 + 16) = v36 + 1;
    sub_1C441B18C();
    sub_1C4420954();
    sub_1C446268C();
    v22[9] = v32;
    v33 = v32;
  }

  v38 = v22[23];
  sub_1C4420C3C(v38, &qword_1EC0C6428, qword_1C4F6D7E8);
  sub_1C44165A4(v38);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v39 = sub_1C4F00968();
  v40 = sub_1C4F01CF8();

  v41 = os_log_type_enabled(v39, v40);
  v42 = v22[34];
  v43 = &unk_1C4F6D000;
  if (v41)
  {
    v44 = v22[32];
    v45 = v22[33];
    sub_1C43FECF0();
    a9 = v25;
    v46 = v33;
    v47 = swift_slowAlloc();
    sub_1C43FEC60();
    v48 = swift_slowAlloc();
    a10 = v48;
    *v47 = 136446210;
    v22[11] = v44;
    v49 = sub_1C4F02858();
    sub_1C44A83C0(v49, v50);
    MEMORY[0x1C6940010](v45, v42);
    v51 = sub_1C441D828(v22[5], v22[6], &a10);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_1C43F8000, v39, v40, "ViewUpdate: %{public}s: Truncation end", v47, 0xCu);
    sub_1C440962C(v48);
    v43 = &unk_1C4F6D000;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v33 = v46;
    v25 = a9;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C4475894();
  if (v53)
  {
    sub_1C447FB08();
    sub_1C4422934();
    v54 = v22[26];
    v55 = v22[23];
    if (v25)
    {

      sub_1C4420C3C(v55, &qword_1EC0C6428, qword_1C4F6D7E8);
      v56 = sub_1C43FE990();
      sub_1C4D1C120(v56, v57, v54, v58);

      sub_1C44A150C();

      sub_1C43FC560();
      sub_1C43FD0C0();

      v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      sub_1C4420C3C(v22[23], &qword_1EC0C6428, qword_1C4F6D7E8);
      v84 = sub_1C43FE990();
      sub_1C4D1C120(v84, v85, v54, v86);

      sub_1C445BB70();

      sub_1C43FBCF0();
      sub_1C43FD0C0();

      v89(v87, v88, v89, v90, v91, v92, v93, v94, a9, a10, a11, a12, a13, a14);
    }
  }

  else
  {
    v22[30] = v32;
    v22[31] = v33;
    sub_1C4485AE4(v52);
    if (v67)
    {
      __break(1u);
    }

    else
    {
      sub_1C445EAF0((v69 + 24 * v68));
      v70 = sub_1C4F00968();
      sub_1C4F01CF8();
      sub_1C44AB2BC();

      if (os_log_type_enabled(v70, v42))
      {
        sub_1C43FECF0();
        v71 = swift_slowAlloc();
        sub_1C43FEC60();
        swift_slowAlloc();
        sub_1C44C1320();
        sub_1C44AB1E0(COERCE_FLOAT(v43[59]));
        v72 = sub_1C4F02858();
        sub_1C4424DA0(v72, v73);
        v74 = sub_1C43FBEF8();
        MEMORY[0x1C6940010](v74);

        sub_1C444C088(v75, v76);
        sub_1C4460618();
        *(v71 + 4) = v43;
        sub_1C44BBF64(&dword_1C43F8000, v70, v42, "ViewUpdate: %{public}s: Truncation start");
        _os_log_impl(v77, v78, v79, v80, v81, v82);
        sub_1C4415138();
        v83 = sub_1C4416E14();
        MEMORY[0x1C6942830](v83);
      }

      sub_1C4480878();
      sub_1C44884F8();
      if (v53)
      {
        v95 = sub_1C4416BC0();
        sub_1C442D874(v95);
        sub_1C4EF9CC8();
        sub_1C440B7F4();
        sub_1C447F668();
        sub_1C468282C();
      }

      v96 = swift_task_alloc();
      v22[35] = v96;
      *v96 = v22;
      sub_1C440E9F8(v96);
      sub_1C43FD0C0();

      sub_1C4D12F80(v97, v98, v99, v100);
    }
  }
}

void sub_1C4D189B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C4405098();
  a21 = v23;
  a22 = v24;
  sub_1C44142CC();
  a20 = v22;
  v25 = *(v22 + 288);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v26 = v25;
  v27 = sub_1C4F00968();
  sub_1C4F01CD8();
  sub_1C4428F14();

  if (sub_1C444AD54())
  {
    sub_1C441024C();
    swift_slowAlloc();
    v28 = sub_1C4475CA4();
    sub_1C43FEC60();
    v29 = swift_slowAlloc();
    a10 = v29;
    *v25 = 136446466;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FD574();
    sub_1C444AB08();
    sub_1C44B9050();

    sub_1C443E01C(v30, v31);

    sub_1C44A3D04();
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v32;
    *v28 = v32;
    sub_1C43FD0B4();
    _os_log_impl(v33, v34, v35, v36, v25, 0x16u);
    sub_1C4420C3C(v28, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C440962C(v29);
    v37 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v37);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  swift_getErrorValue();
  sub_1C4D118BC();
  if (v38)
  {
    v39 = *(v22 + 184);
    v40 = sub_1C440EF74();
    if (!sub_1C44157D4(v40, v41, v42))
    {
      *(v39 + 32) = 2;
    }

    v43 = *(v22 + 216);
    sub_1C4D1ECE0();
    sub_1C4D11510();
    v44 = sub_1C43FFE24();
    sub_1C4420C3C(v44, v45, qword_1C4F6D7E8);

    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v46 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44624E4();

    if (sub_1C444AD54())
    {
      v47 = *(v22 + 256);
      sub_1C43FECF0();
      swift_slowAlloc();
      sub_1C440A2C8();
      swift_slowAlloc();
      sub_1C442AD20();
      *v43 = 136446210;
      sub_1C43FE990();
      v48 = sub_1C444AB08();
      sub_1C448602C(v48, v49, v50, v51);
      sub_1C4D1ED44();
      *(v43 + 4) = v47;
      sub_1C4415A90();
      _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
      sub_1C440962C(qword_1C4F6D7E8);
      v57 = sub_1C4416E14();
      MEMORY[0x1C6942830](v57);
      v58 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v58);
    }

    v75 = *(v22 + 208);
    v76 = *(v22 + 104);
    v77 = *(v22 + 296);
    sub_1C4420C3C(*(v22 + 184), &qword_1EC0C6428, qword_1C4F6D7E8);
    sub_1C4D1C120(v76, v77, v75, "ViewUpdate: %{public}s: Truncating %ld views - end");

    sub_1C43FBDA0();
    sub_1C43FD0C0();

    v107(v106, v107, v108, v109, v110, v111, v112, v113, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v59 = *(v22 + 120);

    v60 = sub_1C440EF74();
    if (!sub_1C44157D4(v60, v61, v59))
    {
      *(*(v22 + 184) + 32) = 5;
    }

    sub_1C4475650();
    if (!sub_1C442F7D8())
    {
      sub_1C4EF9CC8();
      sub_1C4EF9CD8();
      sub_1C43FBD94();
      sub_1C440BAA8(v62, v63, v64, v65);
      sub_1C468282C();
      sub_1C4475650();
    }

    v66 = *(v22 + 160);
    sub_1C4402B58();
    sub_1C44EC888();
    sub_1C43FBEF8();
    sub_1C44EC888();
    if (sub_1C4401818(v66) == 1)
    {
      sub_1C442BBB8();
      sub_1C4420C3C(v67, v68, v69);
      sub_1C442BBB8();
      sub_1C4420C3C(v70, v71, v72);
      v73 = *(v22 + 240);
      v74 = *(v22 + 248);
    }

    else
    {
      sub_1C4420954();
      sub_1C446268C();
      sub_1C43FE1EC();
      sub_1C4459500();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = *(v22 + 240);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C441D4A8();
        v73 = v149;
      }

      v80 = *(v73 + 16);
      v79 = *(v73 + 24);
      if (v80 >= v79 >> 1)
      {
        v150 = sub_1C43FFD98(v79);
        sub_1C458F628(v150, v151, v152, v73);
        v73 = v153;
      }

      v81 = *(v22 + 168);
      sub_1C44114B8(*(v22 + 144));
      sub_1C4420C3C(v81, &qword_1EC0C6428, qword_1C4F6D7E8);
      *(v73 + 16) = v80 + 1;
      sub_1C441B18C();
      sub_1C4420954();
      sub_1C446268C();
      *(v22 + 72) = v73;
      v74 = v73;
    }

    v82 = *(v22 + 120);
    sub_1C4420C3C(*(v22 + 184), &qword_1EC0C6428, qword_1C4F6D7E8);
    sub_1C43FCF64();
    sub_1C440BAA8(v83, v84, v85, v82);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v86 = sub_1C4F00968();
    v87 = sub_1C4F01CF8();

    v88 = os_log_type_enabled(v86, v87);
    v89 = *(v22 + 272);
    v90 = &unk_1C4F6D000;
    if (v88)
    {
      v91 = *(v22 + 256);
      v92 = *(v22 + 264);
      sub_1C43FECF0();
      v93 = swift_slowAlloc();
      sub_1C43FEC60();
      swift_slowAlloc();
      sub_1C44C1320();
      *v93 = 136446210;
      *(v22 + 88) = v91;
      v94 = sub_1C4F02858();
      sub_1C44A83C0(v94, v95);
      MEMORY[0x1C6940010](v92, v89);
      sub_1C441D828(*(v22 + 40), *(v22 + 48), &a10);
      sub_1C4460618();
      *(v93 + 4) = v92;
      v90 = &unk_1C4F6D000;
      sub_1C44BBF64(&dword_1C43F8000, v86, v87, "ViewUpdate: %{public}s: Truncation end");
      _os_log_impl(v96, v97, v98, v99, v100, v101);
      sub_1C4415138();
      v102 = sub_1C4416E14();
      MEMORY[0x1C6942830](v102);
    }

    sub_1C4475894();
    if (v104)
    {
      sub_1C447FB08();
      sub_1C4422934();
      v105 = *(v22 + 208);
      sub_1C4420C3C(*(v22 + 184), &qword_1EC0C6428, qword_1C4F6D7E8);
      v131 = sub_1C43FE990();
      sub_1C4D1C120(v131, v132, v105, v133);

      sub_1C43FBCF0();
      sub_1C43FD0C0();

      v136(v134, v135, v136, v137, v138, v139, v140, v141, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      *(v22 + 240) = v73;
      *(v22 + 248) = v74;
      sub_1C4485AE4(v103);
      if (v114)
      {
        __break(1u);
      }

      else
      {
        sub_1C445EAF0((v116 + 24 * v115));
        v117 = sub_1C4F00968();
        sub_1C4F01CF8();
        sub_1C44AB2BC();

        if (os_log_type_enabled(v117, v87))
        {
          sub_1C43FECF0();
          v118 = swift_slowAlloc();
          sub_1C43FEC60();
          swift_slowAlloc();
          sub_1C44C1320();
          sub_1C44AB1E0(COERCE_FLOAT(v90[59]));
          v119 = sub_1C4F02858();
          sub_1C4424DA0(v119, v120);
          v121 = sub_1C43FBEF8();
          MEMORY[0x1C6940010](v121);

          sub_1C444C088(v122, v123);
          sub_1C4460618();
          *(v118 + 4) = v90;
          sub_1C44BBF64(&dword_1C43F8000, v117, v87, "ViewUpdate: %{public}s: Truncation start");
          _os_log_impl(v124, v125, v126, v127, v128, v129);
          sub_1C4415138();
          v130 = sub_1C4416E14();
          MEMORY[0x1C6942830](v130);
        }

        sub_1C4480878();
        sub_1C44884F8();
        if (v104)
        {
          v142 = sub_1C4416BC0();
          sub_1C442D874(v142);
          sub_1C4EF9CC8();
          sub_1C440B7F4();
          sub_1C447F668();
          sub_1C468282C();
        }

        v143 = swift_task_alloc();
        *(v22 + 280) = v143;
        *v143 = v22;
        sub_1C440E9F8(v143);
        sub_1C43FD0C0();

        sub_1C4D12F80(v144, v145, v146, v147);
      }
    }
  }
}

uint64_t sub_1C4D19268()
{
  sub_1C43FEAEC();
  sub_1C4D1ED24();
  sub_1C441BE98((v0 + 16));
  sub_1C4411260();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1C4D19370;
  v3 = sub_1C4404904();

  return v5(v3);
}

uint64_t sub_1C4D19370()
{
  sub_1C43FCF70();
  sub_1C447CCB8();
  sub_1C44001F0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v0;

  sub_1C4461DAC();
  sub_1C447E3E8();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C4D19484()
{
  sub_1C43FBCD4();
  sub_1C440962C((v0 + 16));
  sub_1C43FC1B0();

  return v1();
}

uint64_t sub_1C4D194DC()
{
  sub_1C43FBCD4();
  sub_1C440962C((v0 + 16));
  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4D19538()
{

  sub_1C4463890(*(v0 + 120), *(v0 + 128));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C4D1956C()
{
  sub_1C4D19538();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C4D195BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C445ADFC;

  return sub_1C4D17B44();
}

uint64_t sub_1C4D19650()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return sub_1C4D1924C();
}

void sub_1C4D196E0(void *a1@<X8>)
{
  sub_1C4BBAA38();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4D19798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C4BABFC8(a3, a4, a1, a2);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void sub_1C4D197DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  v65 = a6;
  v70 = a5;
  v71 = a2;
  v66 = a4;
  v59 = a7;
  v64 = a8;
  updated = _s17ViewUpdateRequestVMa(0);
  MEMORY[0x1EEE9AC00](updated);
  v60 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&qword_1EC0BE5A8, &qword_1C4F376A8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v62 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v54 - v14;
  v15 = sub_1C456902C(&qword_1EC0C5478, &qword_1C4F613C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v54 - v16);
  v18 = _s15NameAndRequestsVMa(0);
  v57 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v56 = &v54 - v21;
  v22 = 0;
  v23 = *(a3 + 16);
  v24 = a3 + 48;
  v61 = MEMORY[0x1E69E7CC0];
  v69 = a1;
  v55 = v23;
  v54 = a3 + 48;
  while (1)
  {
    v25 = ~v22;
    v26 = (v24 + 24 * v22);
    v27 = v23 - v22;
    v28 = v66;
    if (!v27)
    {
      break;
    }

    while (1)
    {
      v72 = v27;
      v73 = v25;
      v29 = v18;
      v30 = v17;
      v31 = *(v26 - 2);
      v32 = *(v26 - 1);
      v33 = *v26;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v34 = v75;
      sub_1C4449828();
      if (v34)
      {
        v75 = v34;

LABEL_26:

        return;
      }

      if ((v74[48] & 1) == 0)
      {
        goto LABEL_11;
      }

      if (v28 != 11 && v31 != v70)
      {
        v36 = a1;
        v37 = v71;
        sub_1C4CEB018();
        sub_1C4448688(v31, v36, v37);
        a1 = v69;
      }

      if (v74[8])
      {
LABEL_11:
        v75 = 0;
        sub_1C444AF3C(v74);

        v17 = v30;
        v38 = v30;
        v18 = v29;
        sub_1C440BAA8(v38, 1, 1, v29);
        goto LABEL_12;
      }

      v40 = v64;
      v75 = *(v64 + 56);
      v41 = *(v64 + 72);
      v68 = *(v64 + 64);
      v42 = sub_1C4445828(v31, v41);
      v53 = *(v40 + 80);
      v43 = v67;
      sub_1C444412C(a1, v71, v74, v31, v32, v33, v75, v68, v67, v42 & 1, v53);
      v75 = 0;
      v44 = v62;
      sub_1C44DDE2C();
      if (sub_1C44157D4(v44, 1, updated) == 1)
      {
        sub_1C4420C3C(v44, &qword_1EC0BE5A8, &qword_1C4F376A8);
        a1 = v69;
        v45 = v75;
        sub_1C4BBAC48();
        v75 = v45;
        if (v45)
        {
          sub_1C444AF3C(v74);

          sub_1C4420C3C(v67, &qword_1EC0BE5A8, &qword_1C4F376A8);
          goto LABEL_26;
        }

        sub_1C444AF3C(v74);

        sub_1C4420C3C(v67, &qword_1EC0BE5A8, &qword_1C4F376A8);
        v46 = 1;
        v17 = v30;
      }

      else
      {
        sub_1C4420C3C(v43, &qword_1EC0BE5A8, &qword_1C4F376A8);
        sub_1C444AF3C(v74);
        sub_1C446268C();
        sub_1C446268C();
        v46 = 0;
        *v30 = v32;
        v30[1] = v33;
        v17 = v30;
        a1 = v69;
      }

      sub_1C440BAA8(v17, v46, 1, v29);
      v47 = sub_1C44157D4(v17, 1, v29);
      v28 = v66;
      v18 = v29;
      if (v47 != 1)
      {
        break;
      }

LABEL_12:
      v39 = v73;
      sub_1C4420C3C(v17, &qword_1EC0C5478, &qword_1C4F613C0);
      v25 = v39 - 1;
      v26 += 3;
      v27 = v72 - 1;
      if (v72 == 1)
      {
        goto LABEL_24;
      }
    }

    sub_1C446268C();
    sub_1C446268C();
    v48 = v61;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458F668(0, *(v48 + 16) + 1, 1, v48);
      v48 = v51;
    }

    v24 = v54;
    v50 = *(v48 + 16);
    v49 = *(v48 + 24);
    if (v50 >= v49 >> 1)
    {
      sub_1C458F668(v49 > 1, v50 + 1, 1, v48);
      v48 = v52;
    }

    v22 = -v73;
    *(v48 + 16) = v50 + 1;
    v61 = v48;
    sub_1C446268C();
    a1 = v69;
    v23 = v55;
  }

LABEL_24:
  *v59 = v61;
}

uint64_t sub_1C4D19EA8()
{
  sub_1C43FBCD4();
  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  *(v1 + 128) = v3;
  *(v1 + 136) = v4;
  *(v1 + 112) = v5;
  *(v1 + 120) = v6;
  *(v1 + 242) = v7;
  *(v1 + 104) = v8;
  *(v1 + 160) = _s15NameAndRequestsVMa(0);
  sub_1C4404280();
  *(v1 + 168) = v9;
  *(v1 + 176) = sub_1C43FE604();
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  sub_1C43FEAF8();
  return sub_1C448885C(v10, v11, v12);
}

uint64_t sub_1C4D19F70()
{
  v1 = v0[15];
  sub_1C442E860(v0[19] + 32, (v0 + 2));
  sub_1C4409678(v0 + 2, v0[5]);
  v2 = *(v1 + 16);
  v0[25] = v2;
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
LABEL_43:
    v0[26] = v3;
    sub_1C4404280();
    v60 = (v45 + *v45);
    v46 = swift_task_alloc();
    v0[27] = v46;
    *v46 = v0;
    v46[1] = sub_1C4D1A514;
    v47 = sub_1C440F4D4(v0[13]);

    return v60(v47);
  }

  v4 = (v0 + 7);
  v51 = v0[20];
  v52 = v0[24];
  v61 = MEMORY[0x1E69E7CC0];
  sub_1C4F02348();
  v5 = 0;
  sub_1C441B18C();
  v50 = v0;
  v49 = v2;
  while (1)
  {
    v6 = v0[24];
    v59 = v5;
    sub_1C4459500();
    v58 = objc_autoreleasePoolPush();
    v7 = *v6;
    v8 = v6 + *(v51 + 20);
    v9 = *(v8 + 3);
    v56 = *(v52 + 8);
    v57 = v7;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = v9;
    MEMORY[0x1C6940330]();
    v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v11 >> 1)
    {
      sub_1C43FCFE8(v11);
      sub_1C4F016D8();
    }

    sub_1C4404BCC();
    sub_1C4F01748();
    v12 = v3;
    v13 = *(v8 + 6);
    v14 = *(v13 + 16);
    if (v14)
    {
      sub_1C4F02348();
      v15 = (v13 + 32);
      do
      {
        v16 = *v15;
        v15 += 3;
        v17 = v16;
        sub_1C4F02318();
        sub_1C4F02358();
        sub_1C4F02368();
        sub_1C4F02328();
        --v14;
      }

      while (v14);
      v18 = v3;
      v12 = v3;
    }

    else
    {
      v18 = v3;
    }

    v19 = v18 >> 62 ? sub_1C4F02128() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v12 >> 62;
    result = v12 >> 62 ? sub_1C4F02128() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = result + v19;
    if (__OFADD__(result, v19))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (!v20)
      {
        goto LABEL_22;
      }

LABEL_21:
      sub_1C4F02128();
      goto LABEL_22;
    }

    if (v20)
    {
      goto LABEL_21;
    }

    v23 = v12 & 0xFFFFFFFFFFFFFF8;
    v24 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v24 >= v22)
    {
      v55 = v12;
      goto LABEL_23;
    }

LABEL_22:
    result = sub_1C4F022B8();
    v55 = result;
    v23 = result & 0xFFFFFFFFFFFFFF8;
    v24 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_23:
    v25 = *(v23 + 16);
    v26 = v24 - v25;
    v27 = v23 + 8 * v25;
    v54 = v23;
    if (v18 >> 62)
    {
      v29 = sub_1C4F02128();
      if (v29)
      {
        v30 = v29;
        result = sub_1C4F02128();
        if (v26 < result)
        {
          goto LABEL_49;
        }

        if (v30 < 1)
        {
          goto LABEL_51;
        }

        v48 = result;
        v53 = v19;
        v31 = v27 + 32;
        sub_1C4D1E10C();
        for (i = 0; i != v30; ++i)
        {
          sub_1C456902C(&unk_1EC0C5F88, &unk_1C4F6D880);
          v33 = sub_1C4CD79AC(v4, i, v18);
          v35 = *v34;
          v33(v4, 0);
          *(v31 + 8 * i) = v35;
        }

        v0 = v50;
        v3 = MEMORY[0x1E69E7CC0];
        v28 = v48;
        goto LABEL_33;
      }
    }

    else
    {
      v28 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        if (v26 < v28)
        {
          goto LABEL_50;
        }

        v53 = v19;
        sub_1C4461BB8(0, &unk_1EDDF03B0, 0x1E69A9F18);
        swift_arrayInitWithCopy();
        v0 = v50;
LABEL_33:

        v36 = v49;
        v37 = v59;
        if (v28 < v53)
        {
          goto LABEL_47;
        }

        if (v28 > 0)
        {
          v38 = *(v54 + 16);
          v39 = __OFADD__(v38, v28);
          v40 = v38 + v28;
          if (v39)
          {
            goto LABEL_48;
          }

          *(v54 + 16) = v40;
        }

        goto LABEL_39;
      }
    }

    v41 = v19 <= 0;
    v36 = v49;
    v0 = v50;
    v37 = v59;
    if (!v41)
    {
      goto LABEL_47;
    }

LABEL_39:
    v5 = v37 + 1;
    v42 = v0[24];
    v43 = objc_allocWithZone(MEMORY[0x1E69A9F08]);
    sub_1C4D1DCEC(v57, v56, v55);
    objc_autoreleasePoolPop(v58);
    sub_1C4422C1C();
    sub_1C44544DC(v42, v44);
    sub_1C4F02318();
    sub_1C4F02358();
    sub_1C4404C28();
    sub_1C4F02368();
    sub_1C4F02328();
    if (v5 == v36)
    {
      v3 = v61;
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1C4D1A514()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 224) = v5;
  *(v3 + 232) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4D1A61C()
{
  isUniquelyReferenced_nonNull_native = v0;
  sub_1C440962C((v0 + 16));
  if (qword_1EDDFD018 != -1)
  {
LABEL_31:
    sub_1C441A86C();
    swift_once();
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2DDF8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C440D060();

  v4 = sub_1C44020E0();
  v5 = *(isUniquelyReferenced_nonNull_native + 224);
  if (v4)
  {
    sub_1C441024C();
    v6 = swift_slowAlloc();
    sub_1C43FEC60();
    v63 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = sub_1C43FE990();
    *(v6 + 4) = sub_1C441D828(v7, v8, v9);
    *(v6 + 12) = 2048;
    *(v6 + 14) = sub_1C4428DA0(v5);

    sub_1C4402B48();
    _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
    sub_1C440962C(v63);
    v15 = sub_1C4416E14();
    MEMORY[0x1C6942830](v15);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  v16 = *(isUniquelyReferenced_nonNull_native + 200);
  *(isUniquelyReferenced_nonNull_native + 88) = MEMORY[0x1E69E7CC0];
  *(isUniquelyReferenced_nonNull_native + 240) = 0;
  v62 = isUniquelyReferenced_nonNull_native;
  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC8];
LABEL_19:
    v42 = isUniquelyReferenced_nonNull_native + 96;
    v58 = isUniquelyReferenced_nonNull_native + 240;
    v59 = isUniquelyReferenced_nonNull_native + 88;
    v57 = isUniquelyReferenced_nonNull_native + 241;
    v43 = *(isUniquelyReferenced_nonNull_native + 224);
    v61 = *(isUniquelyReferenced_nonNull_native + 232);
    v44 = *(v62 + 152);
    v45 = *(v62 + 144);
    v56 = *(v62 + 128);
    v46 = *(v62 + 242);
    v47 = *(v62 + 112);
    v48 = *(v62 + 104);
    *(v62 + 96) = v20;
    v49 = swift_task_alloc();
    *(v49 + 16) = v43;
    *(v49 + 24) = v42;
    *(v49 + 32) = v48;
    *(v49 + 40) = v47;
    *(v49 + 48) = v44;
    *(v49 + 56) = v46;
    *(v49 + 64) = v59;
    *(v49 + 72) = v58;
    *(v49 + 80) = v57;
    *(v49 + 88) = v56;
    *(v49 + 104) = v45;
    sub_1C4422934();
    if (v61)
    {

      sub_1C445C048();
      sub_1C4416034();

      __asm { BRAA            X2, X16 }
    }

    sub_1C4D1ECD4();
    sub_1C4416034();

    __asm { BRAA            X3, X16 }
  }

  v17 = 0;
  v60 = *(isUniquelyReferenced_nonNull_native + 184);
  v18 = *(isUniquelyReferenced_nonNull_native + 168);
  v19 = *(isUniquelyReferenced_nonNull_native + 120) + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v20 = MEMORY[0x1E69E7CC8];
  v21 = *(v18 + 72);
  while (1)
  {
    v22 = *(isUniquelyReferenced_nonNull_native + 184);
    sub_1C4459500();
    v23 = *v22;
    v24 = *(v60 + 8);
    sub_1C4459500();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = sub_1C43FE990();
    v27 = sub_1C445FAA8(v25, v26);
    if (__OFADD__(v20[2], (v28 & 1) == 0))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v29 = v27;
    v30 = v28;
    sub_1C456902C(&qword_1EC0B8D88, &qword_1C4F0E328);
    if ((sub_1C4F02458() & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = v62;
      goto LABEL_12;
    }

    v31 = sub_1C43FE990();
    v33 = sub_1C445FAA8(v31, v32);
    isUniquelyReferenced_nonNull_native = v62;
    if ((v30 & 1) != (v34 & 1))
    {
      break;
    }

    v29 = v33;
LABEL_12:
    if (v30)
    {
      sub_1C4D1E0A8(*(isUniquelyReferenced_nonNull_native + 176), v20[7] + v29 * v21);
    }

    else
    {
      v20[(v29 >> 6) + 8] |= 1 << v29;
      v35 = (v20[6] + 16 * v29);
      *v35 = v23;
      v35[1] = v24;
      sub_1C446268C();
      v36 = v20[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_30;
      }

      v20[2] = v38;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    ++v17;
    v39 = *(isUniquelyReferenced_nonNull_native + 200);
    sub_1C4422C1C();
    sub_1C44544DC(v40, v41);
    v19 += v21;
    if (v17 == v39)
    {
      goto LABEL_19;
    }
  }

  sub_1C4416034();

  return sub_1C4F029F8();
}

uint64_t sub_1C4D1AB0C()
{
  sub_1C43FCF70();

  sub_1C440962C((v0 + 16));

  sub_1C445C048();

  return v1();
}

void sub_1C4D1AB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8, uint64_t *a9, _BYTE *a10, _BYTE *a11, char *a12)
{
  v13 = v12;
  v121 = a8;
  v123 = a7;
  v119 = a5;
  v137 = a4;
  v111 = a11;
  *&v133 = _s17ViewUpdateResultsVMa(0);
  MEMORY[0x1EEE9AC00](v133);
  v134 = (&v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_1C456902C(&qword_1EC0C5478, &qword_1C4F613C0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v118 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v132 = &v109 - v22;
  updated = _s17ViewUpdateRequestVMa(0);
  MEMORY[0x1EEE9AC00](updated);
  v124 = (&v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v117 = (&v109 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v116 = &v109 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v136 = (&v109 - v29);
  v30 = _s15NameAndRequestsVMa(0);
  v120 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v115 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v112 = &v109 - v33;
  v34 = sub_1C4428DA0(a3);
  v36 = &unk_1C4F0C000;
  v128 = a2;
  v135 = a1;
  v122 = a6;
  v127 = v30;
  v131 = v34;
  if (v34)
  {
    v37 = 0;
    v130 = a3 & 0xC000000000000001;
    v114 = a3 & 0xFFFFFFFFFFFFFF8;
    v110 = a10;
    v109 = a9;
    *&v35 = 136315394;
    v113 = v35;
    v129 = a3;
    while (1)
    {
      if (v130)
      {
        v38 = MEMORY[0x1C6940F90](v37, a3);
      }

      else
      {
        if (v37 >= *(v114 + 16))
        {
          goto LABEL_77;
        }

        v38 = *(a3 + 8 * v37 + 32);
      }

      if (__OFADD__(v37, 1))
      {
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        return;
      }

      v138 = v37 + 1;
      v140 = v38;
      v39 = [v38 name];
      v40 = sub_1C4F01138();
      v42 = v41;

      v43 = *(*v137 + 16);
      v139 = v40;
      if (v43)
      {
        sub_1C445FAA8(v40, v42);
        v44 = v132;
        if (v45)
        {
          sub_1C4459500();
          v46 = 0;
        }

        else
        {
          v46 = 1;
        }
      }

      else
      {
        v46 = 1;
        v44 = v132;
      }

      sub_1C440BAA8(v44, v46, 1, v30);
      if (sub_1C44157D4(v44, 1, v30))
      {
        sub_1C4420C3C(v44, &qword_1EC0C5478, &qword_1C4F613C0);
        if (qword_1EDDFD018 != -1)
        {
          swift_once();
        }

        v47 = sub_1C4F00978();
        sub_1C442B738(v47, qword_1EDE2DDF8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v48 = sub_1C4F00968();
        v49 = sub_1C4F01CD8();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v142 = v51;
          *v50 = v113;
          *(v50 + 4) = sub_1C441D828(v119, a6, &v142);
          *(v50 + 12) = 2080;
          v52 = sub_1C441D828(v139, v42, &v142);

          *(v50 + 14) = v52;
          _os_log_impl(&dword_1C43F8000, v48, v49, "ViewUpdate: %s: Have source responses for %s but unable to find corresponding source requests", v50, 0x16u);
          swift_arrayDestroy();
          v53 = v51;
          v30 = v127;
          MEMORY[0x1C6942830](v53, -1, -1);
          v54 = v50;
          a1 = v135;
          MEMORY[0x1C6942830](v54, -1, -1);
        }

        else
        {
        }

        a3 = v129;
        v36 = &unk_1C4F0C000;
        goto LABEL_40;
      }

      v55 = v115;
      sub_1C4459500();
      sub_1C4420C3C(v44, &qword_1EC0C5478, &qword_1C4F613C0);
      v56 = v13;
      sub_1C4459500();
      sub_1C44544DC(v55, _s15NameAndRequestsVMa);
      v57 = v136;
      sub_1C446268C();
      sub_1C440BAA8(v118, 1, 1, v30);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4C815F0();
      v58 = v57[1];
      v126 = *v57;
      v59 = v57[2];
      v60 = v117;
      sub_1C4459500();
      v61 = [v140 responses];
      sub_1C4461BB8(0, &qword_1EDDFA450, 0x1E69A9F20);
      v62 = sub_1C4F01678();

      v63 = v134;
      sub_1C4455A6C(v60, v62, v134);
      if (v56)
      {

        goto LABEL_74;
      }

      v64 = *(v63 + *(v133 + 32));
      if (v64 == 1 && *(v136 + *(updated + 32)) == 1)
      {
        v65 = v59;
        v66 = v123;
        sub_1C4456AA4(v135, v128, v126, v58, v65, *(v63 + *(v133 + 40)), 0, 1);
        a1 = v135;
        a6 = v122;
        v67 = v139;
      }

      else
      {
        v68 = *(v63 + *(v133 + 32));
        v69 = *(v63 + *(v133 + 40));
        v70 = v63;
        a1 = v135;
        v71 = v128;
        v72 = v59;
        v66 = v123;
        sub_1C4456AA4(v135, v128, v126, v58, v72, v69, 0, 0);
        sub_1C44516D8(a1, v71, v121, v70, 1);
        if (*(v136 + *(updated + 32)) == 1)
        {
          sub_1C4BB71C8();
        }

        a6 = v122;
        v67 = v139;
        LOBYTE(v64) = v68;
      }

      if (*(v134 + *(v133 + 28)) != 1)
      {
        break;
      }

      v13 = 0;
      if (*(v136 + *(updated + 48)) == 1)
      {
        v73 = *(v66 + 112);
        if (v73)
        {
          v74 = objc_allocWithZone(MEMORY[0x1E698EC58]);
          v75 = sub_1C4D1DD80(v67, v42);
          [v73 sendEvent_];
        }

        else
        {
        }

        a1 = v135;
        if ((v64 & 1) == 0)
        {
LABEL_37:
          v77 = v109;
          sub_1C4588C68();
          v78 = *(*v77 + 16);
          sub_1C4589894(v78);

          v79 = *v77;
          *(v79 + 16) = v78 + 1;
          *(v79 + 8 * v78 + 32) = v126;
          a3 = v129;
          v36 = &unk_1C4F0C000;
LABEL_38:
          v76 = v111;
          goto LABEL_39;
        }
      }

      else
      {

        if ((v64 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      v76 = v110;
      a3 = v129;
      v36 = &unk_1C4F0C000;
LABEL_39:
      sub_1C44544DC(v134, _s17ViewUpdateResultsVMa);
      *v76 = 1;
      sub_1C44544DC(v136, _s17ViewUpdateRequestVMa);
      v30 = v127;
LABEL_40:
      ++v37;
      if (v138 == v131)
      {
        goto LABEL_41;
      }
    }

    v13 = 0;

    v76 = v110;
    a3 = v129;
    v36 = &unk_1C4F0C000;
    if (v64)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_41:
  v132 = a12;
  v80 = *v137 + 64;
  v81 = 1 << *(*v137 + 32);
  v82 = -1;
  if (v81 < 64)
  {
    v82 = ~(-1 << v81);
  }

  v83 = v82 & *(*v137 + 64);
  v84 = (v81 + 63) >> 6;
  v139 = *v137;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v85 = 0;
  *&v86 = v36[457];
  v133 = v86;
  v136 = v84;
  v137 = v80;
  if (v83)
  {
    while (1)
    {
LABEL_48:
      v140 = v13;
      v88 = v112;
      sub_1C4459500();
      v89 = v124;
      sub_1C4459500();
      sub_1C44544DC(v88, _s15NameAndRequestsVMa);
      v91 = *v89;
      v90 = v89[1];
      v92 = v89[2];
      if (qword_1EDDFD018 != -1)
      {
        swift_once();
      }

      v93 = sub_1C4F00978();
      sub_1C442B738(v93, qword_1EDE2DDF8);
      v94 = v122;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v95 = sub_1C4F00968();
      v96 = sub_1C4F01CF8();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v138 = v91;
        v98 = v97;
        v134 = swift_slowAlloc();
        v144 = v134;
        *v98 = v133;
        *(v98 + 4) = sub_1C441D828(v119, v94, &v144);
        *(v98 + 12) = 2080;
        v141 = v138;
        v142 = sub_1C4F02858();
        v143 = v99;
        MEMORY[0x1C6940010](58, 0xE100000000000000);
        MEMORY[0x1C6940010](v90, v92);
        v100 = sub_1C441D828(v142, v143, &v144);

        *(v98 + 14) = v100;
        v101 = v128;
        _os_log_impl(&dword_1C43F8000, v95, v96, "ViewUpdate: %s: did not process view %s", v98, 0x16u);
        v102 = v134;
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v102, -1, -1);
        v103 = v98;
        v91 = v138;
        MEMORY[0x1C6942830](v103, -1, -1);
      }

      else
      {

        v101 = v128;
      }

      a1 = v135;
      v104 = v140;
      sub_1C4CDFF1C(v135, v101, v91, v90, v92, v124[6], 1, *(v124 + *(updated + 32)));
      if (v104)
      {
        break;
      }

      if (v121 == 11)
      {
        v13 = 0;
        v80 = v137;
      }

      else
      {
        sub_1C442AE14();
        v80 = v137;
        sub_1C4BBAC48();
        v13 = 0;
      }

      v83 &= v83 - 1;
      sub_1C44544DC(v124, _s17ViewUpdateRequestVMa);
      v84 = v136;
      if (!v83)
      {
        goto LABEL_44;
      }
    }

    v136 = v124;
LABEL_74:
    sub_1C44544DC(v136, _s17ViewUpdateRequestVMa);
  }

  else
  {
    while (1)
    {
LABEL_44:
      v87 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        __break(1u);
        goto LABEL_76;
      }

      if (v87 >= v84)
      {
        break;
      }

      v83 = *(v80 + 8 * v87);
      ++v85;
      if (v83)
      {
        v85 = v87;
        goto LABEL_48;
      }
    }

    if (*v111 == 1 && v121 != 11)
    {
      if (sub_1C4424B10(v121) == 1702259052 && v106 == 0xE400000000000000)
      {

        return;
      }

      v108 = sub_1C4F02938();

      if (v108)
      {
        return;
      }

      if (!__OFADD__(v132, 1))
      {
        sub_1C4BB4E1C(v121, (v132 + 1), a1);
        return;
      }

      goto LABEL_78;
    }
  }
}

void sub_1C4D1BAD0(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v12 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_1C4EFB768();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v23 = a4;
    swift_unownedRetainStrong();
    sub_1C4440C6C(a1);

    if (!v7)
    {

      sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v19 = swift_allocObject();
      v20 = MEMORY[0x1E69E6530];
      *(v19 + 16) = xmmword_1C4F13950;
      v21 = MEMORY[0x1E69A0180];
      *(v19 + 56) = v20;
      *(v19 + 64) = v21;
      *(v19 + 32) = 0;
      *(v19 + 96) = v20;
      *(v19 + 104) = v21;
      *(v19 + 72) = 0;
      *(v19 + 112) = 0u;
      *(v19 + 128) = 0u;
      *(v19 + 144) = 0u;
      *(v19 + 160) = 0u;
      *(v19 + 176) = 0u;
      *(v19 + 216) = v20;
      *(v19 + 224) = v21;
      *(v19 + 192) = v23;
      sub_1C4EFB728();
      sub_1C4EFC088();
      (*(v16 + 8))(v18, v15);
      sub_1C440BAA8(v14, 1, 1, v15);
      sub_1C4EFC0A8();

      sub_1C4420C3C(v14, &unk_1EC0C06C0, &unk_1C4F10DB0);
      sub_1C4BB7370();
      sub_1C4BB71C8();
      sub_1C4CE8700();
      sub_1C4D11B14(a1, a2);
    }
  }

  else
  {
    sub_1C4BBAFAC();
    if (!v7)
    {
      sub_1C4BB7370();
      sub_1C4BB71C8();
    }
  }
}

void sub_1C4D1BDD8(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v12 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_1C4EFB768();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v23 = a4;
    swift_unownedRetainStrong();
    sub_1C4440C6C(a1);

    if (!v7)
    {

      sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v19 = swift_allocObject();
      v20 = MEMORY[0x1E69E6530];
      *(v19 + 16) = xmmword_1C4F13950;
      v21 = MEMORY[0x1E69A0180];
      *(v19 + 56) = v20;
      *(v19 + 64) = v21;
      *(v19 + 32) = 0;
      *(v19 + 96) = v20;
      *(v19 + 104) = v21;
      *(v19 + 72) = 0;
      *(v19 + 112) = 0u;
      *(v19 + 128) = 0u;
      *(v19 + 144) = 0u;
      *(v19 + 160) = 0u;
      *(v19 + 176) = 0u;
      *(v19 + 216) = v20;
      *(v19 + 224) = v21;
      *(v19 + 192) = v23;
      sub_1C4EFB728();
      sub_1C4EFC088();
      (*(v16 + 8))(v18, v15);
      sub_1C440BAA8(v14, 1, 1, v15);
      sub_1C4EFC0A8();

      sub_1C4420C3C(v14, &unk_1EC0C06C0, &unk_1C4F10DB0);
      sub_1C4BBADF4();
      sub_1C4BB7370();
      sub_1C4BB71C8();
      sub_1C4CE8700();
      sub_1C4D11B14(a1, a2);
    }
  }

  else
  {
    sub_1C4BBAFAC();
    if (!v7)
    {
      sub_1C4BBADF4();
      sub_1C4BB7370();
      sub_1C4BB71C8();
    }
  }
}

void sub_1C4D1C120(uint64_t a1, __int16 a2, uint64_t a3, const char *a4, ...)
{
  if (qword_1EDDFD018 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDE2DDF8);
  sub_1C43FCFC0();
  swift_bridgeObjectRetain_n();
  sub_1C4428D8C(a1, a2);
  v11 = sub_1C4F00968();
  sub_1C4F01CF8();
  v12 = sub_1C4475E34();
  sub_1C4463890(v12, a2);
  if (sub_1C443E1FC())
  {
    sub_1C441024C();
    v13 = swift_slowAlloc();
    sub_1C43FEC60();
    swift_slowAlloc();
    sub_1C442AD20();
    v14 = sub_1C44995E0(4.8752e-34);
    v15 = sub_1C442A10C(v14, a2);
    v17 = sub_1C441D828(v15, v16, &v20);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    v18 = *(a3 + 16);

    *(v13 + 14) = v18;

    _os_log_impl(&dword_1C43F8000, v11, v4, a4, v13, 0x16u);
    sub_1C440962C(v5);
    v19 = sub_1C4416E14();
    MEMORY[0x1C6942830](v19);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

id sub_1C4D1C298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a7;
  v48 = a8;
  v49 = a5;
  v50 = a6;
  v46 = a4;
  v45 = a3;
  v9 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v43 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v15);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v19 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v44 = v20;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v24 = v23 - v22;
  swift_unownedRetainStrong();
  sub_1C4440C6C(a1);
  v41 = v14;
  v42 = v9;
  v25 = MEMORY[0x1E69E6158];

  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C4F13950;
  v27 = v50;
  v28 = MEMORY[0x1E69E6530];
  v29 = MEMORY[0x1E69A0180];
  *(v26 + 56) = MEMORY[0x1E69E6530];
  *(v26 + 64) = v29;
  *(v26 + 32) = v27;
  *(v26 + 96) = v28;
  *(v26 + 104) = v29;
  v30 = MEMORY[0x1E69A0138];
  *(v26 + 72) = 0;
  *(v26 + 136) = v25;
  *(v26 + 144) = v30;
  *(v26 + 112) = v47;
  *(v26 + 120) = v48;
  *(v26 + 152) = 0u;
  *(v26 + 168) = 0u;
  *(v26 + 216) = v28;
  *(v26 + 224) = v29;
  v31 = v45;
  *(v26 + 184) = 0;
  *(v26 + 192) = v31;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB728();
  sub_1C4EFC088();
  sub_1C43FFB20();
  v32(v24, v19);
  sub_1C43FCF64();
  sub_1C440BAA8(v33, v34, v35, v19);
  sub_1C4EFC0A8();

  sub_1C4420C3C(v18, &unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C4CE9968();
  sub_1C4CE7D58();
  if (v38 != 2)
  {
    v39 = v41;
    sub_1C4EF9C88();
    sub_1C4EF9AD8();
    sub_1C43FFB20();
    v40(v39, v42);
    sub_1C4401EF4();
    sub_1C441DA58();
  }

  result = [objc_opt_self() isInternalDevice];
  if (result)
  {
    sub_1C4F00288();
    sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
    inited = swift_initStackObject();
    sub_1C449AF48(inited, xmmword_1C4F0C890);
    inited[3].n128_u64[0] = sub_1C4F01108();
    inited[3].n128_u64[1] = 0x6E6F73616572;
    inited[4].n128_u64[0] = 0xE600000000000000;
    inited[4].n128_u64[1] = sub_1C4F01B58();
    inited[5].n128_u64[0] = 0x726F727265;
    inited[5].n128_u64[1] = 0xE500000000000000;
    sub_1C43FE990();
    inited[6].n128_u64[0] = sub_1C4F01108();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C440F1BC();
    sub_1C4F00268();
  }

  return result;
}

uint64_t sub_1C4D1C8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a4;
  if (qword_1EDDFD018 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v14 = sub_1C4F00978();
  sub_1C442B738(v14, qword_1EDE2DDF8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CE8();

  if (os_log_type_enabled(v15, v16))
  {
    sub_1C441024C();
    v42 = a8;
    v17 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v17 = 136446466;
    v18 = sub_1C444AB08();
    v19 = a6;
    v41 = a3;
    v21 = sub_1C441D828(v18, v20, &v45);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = sub_1C4CC2358(a6);
    v24 = sub_1C441D828(v22, v23, &v45);
    a3 = v41;

    *(v17 + 14) = v24;
    a6 = v19;
    _os_log_impl(&dword_1C43F8000, v15, v16, "ViewUpdate: %{public}s: disabling for: %s", v17, 0x16u);
    swift_arrayDestroy();
    v25 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v25);
    a8 = v42;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v26 = sub_1C43FD024();
  sub_1C4D1C298(v26, v27, a3, v47, a5, a6, a7, a8);
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_1C4F02248();

  sub_1C43FBDF0();
  v45 = 0xD000000000000015;
  v46 = v28;
  v29 = sub_1C444AB08();
  MEMORY[0x1C6940010](v29);

  MEMORY[0x1C6940010](0xD000000000000018, 0x80000001C4FC67E0);
  MEMORY[0x1C6940010](a7, a8);
  v31 = v45;
  v30 = v46;
  v32 = sub_1C4BAD398(a3, a1, a2);
  if (!v44)
  {
    v33 = *(v32 + 16);
    if (v33)
    {
      v47 = v32;
      v34 = (v32 + 48);
      do
      {
        v35 = *(v34 - 2);
        v36 = *(v34 - 1);
        v37 = *v34;
        v34 += 3;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v38 = sub_1C43FD024();
        sub_1C4D1C298(v38, v39, v35, v36, v37, 1, v31, v30);

        --v33;
      }

      while (v33);
    }
  }
}

uint64_t sub_1C4D1CC0C()
{

  v0 = sub_1C440CABC();
  sub_1C446C37C(v0, v1);
}

void sub_1C4D1CCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v23;
  a20 = v24;
  sub_1C43FFB44();
  v25 = sub_1C456902C(&qword_1EC0C6430, &unk_1C4F6D7F8);
  sub_1C43FCDF8();
  v27 = v26;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  sub_1C4EFE0F8();
  (*(v27 + 32))(v21 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob14NamedViewQueue_viewsToProcess, v30, v25);
  *(v21 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob14NamedViewQueue_viewDb) = v20;
  v31 = *(v22 + 16);

  v32 = 0;
  for (i = (v22 + 48); ; i += 3)
  {
    if (v31 == v32)
    {

      sub_1C43FE9F0();
      return;
    }

    if (v32 >= *(v22 + 16))
    {
      break;
    }

    ++v32;
    v34 = *i;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v35 = sub_1C43FE5F8();
    sub_1C4D1CE48(v35, v36, v34);
  }

  __break(1u);
}

uint64_t sub_1C4D1CE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  sub_1C4403138(v3 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob14NamedViewQueue_viewsToProcess, v5);
  sub_1C456902C(&qword_1EC0C6430, &unk_1C4F6D7F8);
  sub_1C4EFE118();
  return swift_endAccess();
}

uint64_t sub_1C4D1CEB4()
{
  sub_1C4403138(v0 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob14NamedViewQueue_viewsToProcess, v10);
  sub_1C456902C(&qword_1EC0C6430, &unk_1C4F6D7F8);
  sub_1C4EFE108();
  v1 = swift_endAccess();
  v2 = v11;
  v3 = v12;
  v4 = v13;
  if (v13)
  {
    MEMORY[0x1EEE9AC00](v1);
    v9[8] = v2;
    v9[9] = v3;
    v9[10] = v4;
    MEMORY[0x1EEE9AC00](v5);
    v9[2] = sub_1C4D1DF00;
    v9[3] = v6;
    v9[4] = v7;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C446C37C(sub_1C4D1ECA8, v9);
  }

  return v2;
}

uint64_t sub_1C4D1CFF0()
{
  sub_1C456902C(&qword_1EC0C6430, &unk_1C4F6D7F8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  sub_1C440F1BC();
  swift_beginAccess();
  v1 = sub_1C44AE0F4();
  v2(v1);
  v3 = sub_1C4EFE128();
  v4 = sub_1C4404C28();
  v5(v4);
  return v3;
}

BOOL sub_1C4D1D0DC()
{
  sub_1C456902C(&qword_1EC0C6430, &unk_1C4F6D7F8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FFF80();
  sub_1C440F1BC();
  swift_beginAccess();
  v1 = sub_1C44AE0F4();
  v2(v1);
  v3 = sub_1C4EFE128();
  v4 = sub_1C4404C28();
  v5(v4);
  return v3 == 0;
}

uint64_t sub_1C4D1D1CC()
{
  v2 = sub_1C456902C(&qword_1EC0C6430, &unk_1C4F6D7F8);
  sub_1C43FCDF8();
  v4 = v3;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FFF80();
  v6 = OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob14NamedViewQueue_viewsToProcess;
  sub_1C440F1BC();
  swift_beginAccess();
  (*(v4 + 16))(v1, v0 + v6, v2);
  v7 = sub_1C4EFE0E8();
  v8 = sub_1C4404C28();
  v9(v8);
  return v7;
}

uint64_t sub_1C4D1D2D0()
{
  v1 = OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob14NamedViewQueue_viewsToProcess;
  sub_1C456902C(&qword_1EC0C6430, &unk_1C4F6D7F8);
  sub_1C43FBCE0();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

void sub_1C4D1D3A8(uint64_t a1)
{
  sub_1C4D1EC04(319, &qword_1EDDEFF98, &type metadata for ViewUpdate.ViewRef, MEMORY[0x1E69A9618]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C4D1D528(uint64_t a1)
{
  v2 = sub_1C4428DA0(a1);
  if (v2)
  {
    v3 = v2;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v2 & ~(v2 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return;
    }

    v4 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C6940F90](v4, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [v5 state];
      v8 = sub_1C4F01138();
      v10 = v9;

      v12 = *(v29 + 16);
      v11 = *(v29 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1C44CD9C0(v11 > 1, v12 + 1, 1);
      }

      ++v4;
      *(v29 + 16) = v12 + 1;
      v13 = v29 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
    }

    while (v3 != v4);
  }

  v14 = sub_1C4499940();
  v15 = 0;
  v16 = 0xED00006465726975;
  v17 = 0x7165527261656C63;
  v18 = &unk_1F43D9BD8;
  do
  {
    v19 = v18;
    v20 = v18[v15++ + 32];
    v21 = v16;
    v22 = v17;
    switch(v20)
    {
      case 1:
        v17 = 0xD000000000000013;
        v16 = 0x80000001C4F87C40;
        break;
      case 2:
        break;
      case 3:
        v16 = 0xEA00000000007365;
        v17 = 0x676E616843736168;
        break;
      case 4:
        v16 = 0xE900000000000073;
        v17 = 0x65676E6168436F6ELL;
        break;
      default:
        v17 = 0xD000000000000010;
        v16 = 0x80000001C4F87C20;
        break;
    }

    if (*(v14 + 16))
    {
      sub_1C4F02AF8();
      sub_1C4F01298();
      v23 = sub_1C4F02B68();
      v24 = ~(-1 << *(v14 + 32));
      while (1)
      {
        v25 = v23 & v24;
        if (((*(v14 + 56 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
        {
          break;
        }

        v26 = (*(v14 + 48) + 16 * v25);
        if (*v26 != v17 || v26[1] != v16)
        {
          v28 = sub_1C4F02938();
          v23 = v25 + 1;
          if ((v28 & 1) == 0)
          {
            continue;
          }
        }

        return;
      }
    }

    v16 = v21;
    v17 = v22;
    v18 = v19;
  }

  while (v15 != 4);
}

uint64_t sub_1C4D1D820(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (sub_1C4F02128())
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_3:
  sub_1C4431590(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1C6940F90](0, a1);
  }

  else
  {
    v2 = *(a1 + 32);
  }

  v3 = v2;
  v4 = [v2 configIdentifier];
  v5 = [v4 sourceIdentifier];

  v6 = sub_1C4F01138();
  v8 = v7;

  if ((v8 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  v10 = [v3 configIdentifier];
  v11 = v10;
  v12 = &selRef_sourceType;
  if (v9)
  {
    v12 = &selRef_sourceIdentifier;
  }

  v13 = [v10 *v12];

  v14 = sub_1C4F01138();
  if (sub_1C4428DA0(a1) < 2)
  {
  }

  else
  {
    MEMORY[0x1C6940010](35, 0xE100000000000000);
    v15 = sub_1C4F02858();
    MEMORY[0x1C6940010](v15);
  }

  return v14;
}

void sub_1C4D1D9F8(uint64_t a1)
{
  sub_1C4D1DB4C(319, &qword_1EDDFCCD0, MEMORY[0x1E69A9310]);
  if (v1 <= 0x3F)
  {
    sub_1C4D1DB4C(319, &qword_1EDDFF9E0, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Configuration(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C4D1DB4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C4D1DBB0(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

unint64_t sub_1C4D1DBE4()
{
  result = qword_1EDDF9D88;
  if (!qword_1EDDF9D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9D88);
  }

  return result;
}

uint64_t sub_1C4D1DC38(uint64_t a1)
{
  result = sub_1C443D71C(&qword_1EDDECEC8, 255, type metadata accessor for ViewUpdate.ViewUpdateJob.NamedViewQueue, &unk_1C4F6D630);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D1DC94(uint64_t a1, uint64_t a2)
{
  result = sub_1C443D71C(qword_1EDDECE00, a2, type metadata accessor for ViewUpdate.ViewUpdateJob.ScheduledViewQueue, &unk_1C4F6D674);
  *(a1 + 8) = result;
  return result;
}

id sub_1C4D1DCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C4F01108();

  sub_1C4461BB8(0, &unk_1EDDF03B0, 0x1E69A9F18);
  v5 = sub_1C4F01658();

  v6 = [v3 initWithName:v4 requests:v5];

  return v6;
}

id sub_1C4D1DD80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C4F01108();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithViewName_];

  return v4;
}

uint64_t sub_1C4D1DDE4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C4958C38(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C4958BB4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C4D1E0A8(uint64_t a1, uint64_t a2)
{
  v4 = _s15NameAndRequestsVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4D1E10C()
{
  result = qword_1EDDF0600;
  if (!qword_1EDDF0600)
  {
    sub_1C4572308(&unk_1EC0C5F88, &unk_1C4F6D880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0600);
  }

  return result;
}

uint64_t sub_1C4D1E170(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  swift_getErrorValue();
  sub_1C4D118BC();
  v13 = *(a7 + 16);
  v62 = a3;
  v63 = a4;
  v64 = a5;
  if (v14)
  {
    v58 = sub_1C4D1E9A8;
    v59 = v61;
    v60 = v13;
    sub_1C446C37C(sub_1C4D1ECA8, v57);
    return 1;
  }

  v58 = sub_1C4D1E970;
  v59 = v61;
  v60 = v13;
  v16 = sub_1C443DD50(sub_1C4959A38, v57);
  if (qword_1EDDECB20 != -1)
  {
    swift_once();
  }

  if (v16 >= qword_1EDE2D2B0)
  {
    v55 = v16;
    if (qword_1EDDFD018 != -1)
    {
      swift_once();
    }

    v28 = sub_1C4F00978();
    sub_1C442B738(v28, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v29 = a2;
    v30 = sub_1C4F00968();
    v31 = sub_1C4F01CE8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v66 = v34;
      *v32 = 136446722;
      v35 = sub_1C444AB08();
      v37 = sub_1C441D828(v35, v36, &v66);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2048;
      *(v32 + 14) = v55;
      *(v32 + 22) = 2112;
      v38 = a2;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 24) = v39;
      *v33 = v39;
      _os_log_impl(&dword_1C43F8000, v30, v31, "ViewUpdate: %{public}s: Update failed after %ld maximum attempts reached: %@", v32, 0x20u);
      sub_1C4420C3C(v33, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v33, -1, -1);
      sub_1C440962C(v34);
      MEMORY[0x1C6942830](v34, -1, -1);
      MEMORY[0x1C6942830](v32, -1, -1);
    }

    swift_getErrorValue();
    sub_1C4F02A38();
    sub_1C4D1971C();
    goto LABEL_20;
  }

  if ((a6 & 1) == 0)
  {
    swift_getErrorValue();
    sub_1C4F02A38();
    sub_1C4D1971C();
LABEL_20:

    return 0;
  }

  v69 = a2;
  v17 = a2;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (swift_dynamicCast())
  {
    if (v68 == 2)
    {
      v54 = v16;
      sub_1C4D1E990(v66, v67, v68);
      if (qword_1EDDFD018 != -1)
      {
        swift_once();
      }

      v18 = sub_1C4F00978();
      sub_1C442B738(v18, qword_1EDE2DDF8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v19 = a2;
      v20 = sub_1C4F00968();
      v21 = sub_1C4F01CE8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v65 = v53;
        *v22 = 136446722;
        v23 = sub_1C444AB08();
        v25 = sub_1C441D828(v23, v24, &v65);

        *(v22 + 4) = v25;
        *(v22 + 12) = 2048;
        *(v22 + 14) = v54;
        *(v22 + 22) = 2112;
        v26 = a2;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 24) = v27;
        *v52 = v27;
        _os_log_impl(&dword_1C43F8000, v20, v21, "ViewUpdate: %{public}s: unrecoverable error after %ld attempts: %@", v22, 0x20u);
        sub_1C4420C3C(v52, &qword_1EC0BDA00, &qword_1C4F10D30);
        MEMORY[0x1C6942830](v52, -1, -1);
        sub_1C440962C(v53);
        MEMORY[0x1C6942830](v53, -1, -1);
        MEMORY[0x1C6942830](v22, -1, -1);
      }

      swift_getErrorValue();
      sub_1C4F02A38();
      sub_1C4D1971C();

      return 0;
    }

    sub_1C4D1E990(v66, v67, v68);
  }

  if (qword_1EDDFD018 != -1)
  {
    swift_once();
  }

  v40 = sub_1C4F00978();
  sub_1C442B738(v40, qword_1EDE2DDF8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v41 = a2;
  v42 = sub_1C4F00968();
  v43 = sub_1C4F01CE8();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v56 = v16;
    v46 = swift_slowAlloc();
    v66 = v46;
    *v44 = 136446722;
    v47 = sub_1C444AB08();
    v49 = sub_1C441D828(v47, v48, &v66);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2048;
    *(v44 + 14) = v56;
    *(v44 + 22) = 2112;
    v50 = a2;
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 24) = v51;
    *v45 = v51;
    _os_log_impl(&dword_1C43F8000, v42, v43, "ViewUpdate: %{public}s: Clearing and re-attempting update after %ld attempts: %@", v44, 0x20u);
    sub_1C4420C3C(v45, &qword_1EC0BDA00, &qword_1C4F10D30);
    MEMORY[0x1C6942830](v45, -1, -1);
    sub_1C440962C(v46);
    MEMORY[0x1C6942830](v46, -1, -1);
    MEMORY[0x1C6942830](v44, -1, -1);
  }

  return 1;
}

uint64_t sub_1C4D1E990(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

void sub_1C4D1EA30(uint64_t a1)
{
  sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    sub_1C4D1EC04(319, &qword_1EDDDBCE8, &_s20SourceListenerResultVN, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4D1EAFC(uint64_t a1)
{
  sub_1C4D1EC04(319, &qword_1EDDDBD18, &_s13SourceRequestVN, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C4EF9CD8();
    if (v2 <= 0x3F)
    {
      sub_1C4D1EC04(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4D1EC04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C4D1ECE0()
{

  return sub_1C44DDE2C();
}

uint64_t sub_1C4D1ED04()
{
}

uint64_t sub_1C4D1ED24()
{
  v2 = *(*(v0 + 56) + 112) + 32;

  return sub_1C442E860(v2, v0 + 16);
}

uint64_t sub_1C4D1ED44()
{
}

uint64_t sub_1C4D1ED5C(uint64_t a1)
{
  v2 = sub_1C4F00978();
  MEMORY[0x1EEE9AC00](v2);
  if (qword_1EDDFF7A0 != -1)
  {
LABEL_15:
    swift_once();
  }

  v3 = sub_1C44273D4();
  MEMORY[0x1EEE9AC00](v3);
  LOWORD(v21[-2]) = 519;
  v4 = sub_1C49A5628(sub_1C4D204E4, &v21[-4]);

  v5 = *(v4 + 16);
  if (v5)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v5, 0);
    v6 = v22;
    v21[1] = v4;
    v7 = (v4 + 56);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v22 = v6;
      v11 = v6[2];
      v10 = v6[3];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v11 >= v10 >> 1)
      {
        sub_1C44CD9C0(v10 > 1, v11 + 1, 1);
        v6 = v22;
      }

      v6[2] = v11 + 1;
      v12 = &v6[2 * v11];
      v12[4] = v8;
      v12[5] = v9;
      v7 += 9;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v14 = 0;
  v15 = v6[2];
  v16 = v6 + 5;
  while (v15 != v14)
  {
    if (v14 >= v6[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    v17 = *v16;
    v18 = *(v21[2] + 16);
    MEMORY[0x1EEE9AC00](v13);
    v21[-4] = a1;
    v21[-3] = v19;
    v21[-2] = v17;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    os_unfair_lock_lock((v18 + 24));
    sub_1C4D20504((v18 + 16));
    ++v14;
    os_unfair_lock_unlock((v18 + 24));

    v16 += 2;
  }
}

uint64_t sub_1C4D1F15C()
{
  type metadata accessor for ViewUpdateNotificationSourceMonitor();
  v0 = swift_allocObject();
  result = sub_1C4D1F198();
  qword_1EDE2C9A0 = v0;
  return result;
}

uint64_t sub_1C4D1F198()
{
  type metadata accessor for ViewUpdateNotificationSourceMonitor.GuardedData();
  v1 = swift_allocObject();
  sub_1C4EF98F8();
  sub_1C456902C(&unk_1EC0C6470, &qword_1C4F6DA08);
  sub_1C4695550(&qword_1EDDFFA00, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  *(v1 + 16) = sub_1C4F00F28();
  sub_1C456902C(&unk_1EC0C6480, qword_1C4F6DA10);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_1C4D1F278()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  sub_1C4D1F2E0((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));

  return v0;
}

uint64_t sub_1C4D1F2E0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v1 + 16) + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v21 = *(v1 + 16);
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  v20 = v4;
  if (v8)
  {
LABEL_5:
    v12 = v11;
LABEL_9:
    v13 = *(*(v21 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v8)))));
    v8 &= v8 - 1;
    v14 = 1 << *(v13 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v13 + 64);
    v17 = (v14 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v18 = 0;
    if (v16)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        result = swift_bridgeObjectRelease_n();
        v11 = v12;
        v4 = v20;
        if (!v8)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      v16 = *(v13 + 64 + 8 * v19);
      ++v18;
      if (v16)
      {
        v18 = v19;
        do
        {
LABEL_18:
          v16 &= v16 - 1;

          sub_1C4F00BB8();
        }

        while (v16);
        continue;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
      }

      v8 = *(v4 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_9;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4D1F4C0()
{
  sub_1C4D1F278();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4D1F53C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_1C4EF98F8();
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v58 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1C4F01D88();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v62 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1C4F01E38();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v13 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1C456902C(&unk_1EC0BADE0, &unk_1C4F17660);
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v64 = v55 - v14;
  v15 = sub_1C4F00978();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  swift_beginAccess();
  v69 = v19;
  v70 = a2;
  if (*(*(v19 + 16) + 16) && (sub_1C43FE83C(), (v20 & 1) != 0))
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C4F00BC8();
    sub_1C4F00F28();
  }

  v21 = a3;
  v22 = sub_1C466324C();
  swift_endAccess();

  if (v22)
  {
  }

  v56 = v21;
  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v24 = sub_1C4F00968();
  v25 = sub_1C4F01CB8();

  v26 = os_log_type_enabled(v24, v25);
  v57 = a4;
  v55[1] = v4;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v71[0] = v28;
    *v27 = 136315138;
    v29 = v56;
    *(v27 + 4) = sub_1C441D828(v56, v57, v71);
    _os_log_impl(&dword_1C43F8000, v24, v25, "ViewUpdateNotificationSourceMonitor: Starting notification observation for %s", v27, 0xCu);
    sub_1C440962C(v28);
    MEMORY[0x1C6942830](v28, -1, -1);
    v30 = v27;
    a4 = v57;
    MEMORY[0x1C6942830](v30, -1, -1);

    (*(v16 + 8))(v18, v15);
  }

  else
  {

    (*(v16 + 8))(v18, v15);
    v29 = v56;
  }

  v31 = [objc_opt_self() defaultCenter];
  v32 = sub_1C4F01108();
  sub_1C4F01E48();

  v33 = v62;
  sub_1C4F01D78();
  sub_1C4665684();
  v34 = sub_1C4F01DA8();
  v71[0] = v34;
  sub_1C4695550(&qword_1EDDDB8D0, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1C4695550(&unk_1EDDDB910, sub_1C4665684, MEMORY[0x1E69E8028]);
  v35 = v64;
  v36 = v29;
  v37 = v63;
  sub_1C4F00D08();

  (*(v65 + 8))(v33, v67);
  (*(v61 + 8))(v13, v37);
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = a4;
  sub_1C46953BC();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v39 = v68;
  v40 = sub_1C4F00D28();

  (*(v66 + 8))(v35, v39);
  v41 = v69;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v72 = *(v41 + 16);
  v42 = v72;
  *(v41 + 16) = 0x8000000000000000;
  sub_1C43FE83C();
  if (__OFADD__(*(v42 + 16), (v44 & 1) == 0))
  {
    __break(1u);
    goto LABEL_19;
  }

  v45 = v43;
  v46 = v44;
  sub_1C456902C(&unk_1EC0C6460, &unk_1C4F6D9E0);
  v47 = sub_1C4F02458();
  v48 = v72;
  if ((v47 & 1) == 0)
  {
    v51 = v57;
    goto LABEL_15;
  }

  sub_1C43FE83C();
  v51 = v57;
  if ((v46 & 1) != (v50 & 1))
  {
LABEL_19:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v45 = v49;
LABEL_15:
  *(v41 + 16) = v48;
  if ((v46 & 1) == 0)
  {
    sub_1C4D1FCD8(&v72);
    v52 = v58;
    (*(v59 + 16))(v58, v70, v60);
    sub_1C457E9E4(v45, v52, v72, v48);
  }

  v53 = *(v48 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = *(v53 + 8 * v45);
  sub_1C4663070(v40, v36, v51, isUniquelyReferenced_nonNull_native);
  *(v53 + 8 * v45) = v72;
  return swift_endAccess();
}

uint64_t sub_1C4D1FCD8@<X0>(uint64_t *a1@<X8>)
{
  sub_1C4F00BC8();
  result = sub_1C4F00F28();
  *a1 = result;
  return result;
}

uint64_t sub_1C4D1FD24(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_1C4F00978();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000039, 0x80000001C4FC6900);
  MEMORY[0x1C6940010](a2, a3);
  sub_1C4F011C8();

  v12 = os_transaction_create();

  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CB8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = v12;
    v16 = v15;
    v17 = swift_slowAlloc();
    v24[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_1C441D828(a2, a3, v24);
    _os_log_impl(&dword_1C43F8000, v13, v14, "ViewUpdateNotificationSourceMonitor: Received %s notification", v16, 0xCu);
    sub_1C440962C(v17);
    MEMORY[0x1C6942830](v17, -1, -1);
    v18 = v16;
    v12 = v23;
    MEMORY[0x1C6942830](v18, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v19 = sub_1C4F018C8();
  sub_1C440BAA8(v7, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = v12;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4785250();
}

uint64_t sub_1C4D20008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = sub_1C4F00978();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4D20100, 0, 0);
}

uint64_t sub_1C4D20100(uint64_t a1)
{
  v38 = v1;
  v37[1] = *MEMORY[0x1E69E9840];
  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CB8();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[7];
  if (v4)
  {
    v9 = v1[4];
    v8 = v1[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v37[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1C441D828(v9, v8, v37);
    _os_log_impl(&dword_1C43F8000, v2, v3, "ViewUpdateNotificationSourceMonitor: signaling source update for %s", v10, 0xCu);
    sub_1C440962C(v11);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v13 = [objc_allocWithZone(MEMORY[0x1E69A9F28]) init];
  v14 = sub_1C4F01108();
  v15 = sub_1C4F01108();
  v1[2] = 0;
  v16 = [v13 sourceUpdatedWithSourceType:v14 sourceIdentifier:v15 error:v1 + 2];

  v17 = v1[2];
  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v19 = v17;
    v20 = sub_1C4EF97A8();

    swift_willThrow();
    sub_1C4F00178();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v21 = v20;
    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CD8();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v1[8];
    v26 = v1[6];
    if (v24)
    {
      v28 = v1[4];
      v27 = v1[5];
      v36 = v1[8];
      v29 = swift_slowAlloc();
      v37[0] = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_1C441D828(v28, v27, v37);
      *(v29 + 12) = 2080;
      v1[3] = v20;
      v30 = v20;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v31 = sub_1C4F01198();
      v33 = sub_1C441D828(v31, v32, v37);

      *(v29 + 14) = v33;
      _os_log_impl(&dword_1C43F8000, v22, v23, "ViewUpdateNotificationSourceMonitor: failed to update views for %s. Error: %s", v29, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();

      v12(v36, v26);
    }

    else
    {

      v12(v25, v26);
    }
  }

  v34 = v1[1];

  return v34();
}

uint64_t sub_1C4D2052C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C44A7DA0;

  return sub_1C4D20008(a1, v4, v5, v6, v7);
}

unint64_t sub_1C4D205F4(uint64_t a1)
{
  result = sub_1C4D2061C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4D2061C()
{
  result = qword_1EC0C6490;
  if (!qword_1EC0C6490)
  {
    sub_1C4EFFE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6490);
  }

  return result;
}

uint64_t sub_1C4D20674()
{
  v1 = *(v0 + 64);
  if (v1 >> 62)
  {
    if (sub_1C4F02128())
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  sub_1C4431590(0, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C6940F90](0, v1);
  }

  else
  {
  }

  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  sub_1C4EFEEF8();
  *(swift_allocObject() + 16) = xmmword_1C4F13950;
  sub_1C4EFEBB8();
  sub_1C4EFE308();
  sub_1C4EFECF8();
  sub_1C4EFE818();
  sub_1C4EFE3F8();
  v2 = sub_1C4872C50();

  if (qword_1EDDFA668 != -1)
  {
    swift_once();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDE2DDE0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v2 + 16);

    _os_log_impl(&dword_1C43F8000, v4, v5, "EntityInteractionHistogramViewGenerator: Found %ld triples", v6, 0xCu);
    MEMORY[0x1C6942830](v6, -1, -1);
  }

  else
  {
  }

  return v2;
}

uint64_t sub_1C4D20910()
{
  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70(&qword_1EDDF0C00);
  }

  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);

  return sub_1C442B738(v0, qword_1EDDF0C10);
}

void sub_1C4D20970(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - v4;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DCD8);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_1C43FCED0();
    *v9 = 0;
    _os_log_impl(&dword_1C43F8000, v7, v8, "ViewXPC: starting...", v9, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70(&qword_1EDDF0C00);
  }

  sub_1C43FCEE8(v2, qword_1EDDF0C10);
  sub_1C44098F0(a1, v5);
  v10 = type metadata accessor for Configuration(0);
  sub_1C440BAA8(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1C45A6EE0(v5, v7);
  swift_endAccess();
  sub_1C4461BB8(0, &qword_1EDDFA520, 0x1E696B0D8);
  v11 = sub_1C49AA56C(0xD000000000000023, 0x80000001C4FC6B50);
  v12 = qword_1EDE2D378;
  qword_1EDE2D378 = v11;
  v13 = v11;

  if (v13)
  {
    qword_1EDE2D380 = [objc_allocWithZone(type metadata accessor for ViewXPC.Delegate()) init];
    v14 = qword_1EDE2D380;
    swift_unknownObjectRelease();
    [v13 setDelegate:v14];

    [v13 resume];
  }

  else
  {
    v13 = sub_1C4F00968();
    v15 = sub_1C4F01CE8();
    if (os_log_type_enabled(v13, v15))
    {
      v16 = sub_1C43FCED0();
      sub_1C43FBD24(v16);
      sub_1C4402B48();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      sub_1C43FE9D4();
    }
  }
}

uint64_t sub_1C4D20C10()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDDF0C10);
  v1 = sub_1C43FBC98();
  v3 = sub_1C442B738(v1, v2);
  v4 = type metadata accessor for Configuration(0);

  return sub_1C440BAA8(v3, 1, 1, v4);
}

uint64_t static ViewXPC.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70(&qword_1EDDF0C00);
  }

  v2 = sub_1C4410428();
  v4 = sub_1C456902C(v2, v3);
  v5 = sub_1C442B738(v4, qword_1EDDF0C10);
  swift_beginAccess();
  return sub_1C446C964(v5, a1, &unk_1EC0B9610, &unk_1C4F0F2E0);
}

uint64_t static ViewXPC.configuration.setter(uint64_t a1)
{
  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70(&qword_1EDDF0C00);
  }

  v2 = sub_1C4410428();
  v4 = sub_1C456902C(v2, v3);
  v5 = sub_1C442B738(v4, qword_1EDDF0C10);
  swift_beginAccess();
  sub_1C498E14C(a1, v5);
  swift_endAccess();
  v6 = sub_1C43FBC98();
  return sub_1C4420C3C(v6, v7, &unk_1C4F0F2E0);
}

uint64_t (*static ViewXPC.configuration.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70(&qword_1EDDF0C00);
  }

  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FCEE8(v1, qword_1EDDF0C10);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C4D20E58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C4D20910();
  swift_beginAccess();
  return sub_1C446C964(v2, a1, &unk_1EC0B9610, &unk_1C4F0F2E0);
}

uint64_t sub_1C4D20EB4(uint64_t a1)
{
  v2 = sub_1C4D20910();
  swift_beginAccess();
  sub_1C498E14C(a1, v2);
  return swift_endAccess();
}

uint64_t sub_1C4D20F08(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 89) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return sub_1C43FEB04();
}

uint64_t sub_1C4D20F24()
{
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44(&qword_1EDDF9710);
  }

  v1 = sub_1C4415590();
  *(v0 + 48) = v1;
  v2 = *(v0 + 16);
  *(v0 + 56) = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v17 = MEMORY[0x1E69E7CC0];

    sub_1C44CD9C0(0, v3, 0);
    v4 = v17;
    v5 = (v2 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      switch(sub_1C4BB047C())
      {
        case 5u:

          break;
        case 7u:
        case 0xAu:
        case 0xCu:
        case 0xDu:
          sub_1C440CB64();
          goto LABEL_8;
        default:
LABEL_8:
          v8 = sub_1C4F02938();

          if ((v8 & 1) == 0 && sub_1C4D215A4(v7, v6, *(v0 + 24)))
          {
            v7 = sub_1C4EFA6C8();
            v10 = v9;

            v6 = v10;
          }

          break;
      }

      v12 = *(v17 + 16);
      v11 = *(v17 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1C44CD9C0(v11 > 1, v12 + 1, 1);
      }

      *(v17 + 16) = v12 + 1;
      v13 = v17 + 16 * v12;
      *(v13 + 32) = v7;
      *(v13 + 40) = v6;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 64) = v4;
  v14 = *(v0 + 89);
  *(v0 + 88) = 3;
  v15 = swift_task_alloc();
  *(v0 + 72) = v15;
  *v15 = v0;
  v15[1] = sub_1C4D213B8;

  return sub_1C4427590(v4, v14 | 0x4000u, 0, 0, 1, (v0 + 88));
}

uint64_t sub_1C4D213B8()
{
  sub_1C43FCF70();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4D214D8()
{
  sub_1C43FBCD4();

  sub_1C43FBCF0();

  return v0(1);
}

uint64_t sub_1C4D21540()
{
  sub_1C43FBCD4();

  v0 = sub_1C4409E50();

  return v1(v0);
}

void *sub_1C4D215A4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1C4EFA598();
  v8 = sub_1C4EFA538();
  if (v8)
  {
    v9 = *(v3 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_process);
    if (v9)
    {
      v24 = v4;
      sub_1C4461BB8(0, &qword_1EC0C6520, 0x1E698E9F8);
      v10 = v9;
      sub_1C4EFA6E8();
      v11 = sub_1C4EFA558();
      v12 = sub_1C4D26584(3, v11);
      v13 = [objc_opt_self() policyForProcess:v10 connectionFlags:0 useCase:a3];
      if ([v13 allowsAccessToResource:v12 withMode:1])
      {
      }

      else
      {
        v23 = v10;
        if (qword_1EDDFA678 != -1)
        {
          swift_once();
        }

        v15 = sub_1C4F00978();
        sub_1C442B738(v15, qword_1EDE2DCD8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v16 = sub_1C4F00968();
        v17 = sub_1C4F01CD8();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v8 = swift_slowAlloc();
          v25 = v8;
          *v18 = 136315138;
          *(v18 + 4) = sub_1C441D828(a1, a2, &v25);
          _os_log_impl(&dword_1C43F8000, v16, v17, "ViewXPC: client not authorized for %s", v18, 0xCu);
          sub_1C440962C(v8);
          MEMORY[0x1C6942830](v8, -1, -1);
          MEMORY[0x1C6942830](v18, -1, -1);
        }

        v20 = *(v24 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier);
        v19 = *(v24 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier + 8);
        sub_1C4D27FAC();
        swift_allocError();
        *v21 = a1;
        *(v21 + 8) = a2;
        *(v21 + 16) = v20;
        *(v21 + 24) = v19;
        *(v21 + 32) = 0;
        *(v21 + 40) = 0;
        *(v21 + 48) = 1;
        swift_willThrow();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }
    }

    else
    {
      sub_1C4D27FAC();
      swift_allocError();
      *v14 = 0u;
      *(v14 + 16) = 0u;
      *(v14 + 32) = 0u;
      *(v14 + 48) = 5;
      swift_willThrow();
    }
  }

  else
  {
    sub_1C4D23658(a1, a2);
  }

  return v8;
}

uint64_t sub_1C4D218E0()
{
  sub_1C43FBCD4();
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  *(v1 + 112) = v3;
  *(v1 + 120) = v4;
  *(v1 + 280) = v5;
  *(v1 + 104) = v6;
  v7 = sub_1C4EF9948();
  *(v1 + 144) = v7;
  sub_1C43FCF7C(v7);
  *(v1 + 152) = v8;
  *(v1 + 160) = sub_1C43FBE7C();
  v9 = sub_1C4F01188();
  *(v1 + 168) = v9;
  sub_1C43FCF7C(v9);
  *(v1 + 176) = v10;
  *(v1 + 184) = sub_1C43FBE7C();
  v11 = sub_1C4EFA608();
  *(v1 + 192) = v11;
  sub_1C43FCF7C(v11);
  *(v1 + 200) = v12;
  *(v1 + 208) = sub_1C43FBE7C();
  v13 = sub_1C4EF98F8();
  *(v1 + 216) = v13;
  sub_1C43FCF7C(v13);
  *(v1 + 224) = v14;
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  v15 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

void sub_1C4D21A88()
{
  v139 = v0;
  v1 = *(v0 + 136);
  v2 = (v1 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_auditToken);
  if ((*(v1 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_auditToken + 32) & 1) != 0 || (v3 = *(v1 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_process)) == 0)
  {
    v27 = sub_1C4D27FAC();
    v28 = sub_1C43FFB2C(&type metadata for ViewXPC.AccessError, v27);
    sub_1C4426258(v28, v29);
    goto LABEL_14;
  }

  v122 = v2[7];
  v123 = v2[6];
  v120 = v2[5];
  v121 = v2[4];
  v118 = v2[3];
  v119 = v2[2];
  v116 = v2[1];
  v117 = *v2;
  v4 = qword_1EDDFA678;
  v5 = v3;
  if (v4 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v6 = *(v0 + 120);
  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DCD8);
  v8 = v5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = v6;
  v10 = v8;
  v11 = v9;
  v12 = sub_1C4F00968();
  sub_1C4F01CF8();

  if (sub_1C442FAFC())
  {
    v13 = *(v0 + 112);
    v124 = v10;
    v14 = *(v0 + 104);
    v15 = sub_1C43FFD34();
    v16 = swift_slowAlloc();
    v129[0] = sub_1C43FC11C();
    *v15 = 136315650;
    v17 = sub_1C441D828(v14, v13, v129);
    sub_1C4450114(v17);
    v18 = sub_1C4F01138();
    v20 = sub_1C441D828(v18, v19, v129);
    v10 = v124;

    *(v15 + 14) = v20;
    *(v15 + 22) = 2112;
    *(v15 + 24) = v124;
    *v16 = v3;
    v21 = v124;
    sub_1C444B414();
    _os_log_impl(v22, v23, v24, v25, v15, 0x20u);
    sub_1C4420C3C(v16, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBE2C();
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FE9D4();
  }

  v26 = sub_1C4D215A4(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  if (v26)
  {
    sub_1C4EFA6C8();
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44(&qword_1EDDF9710);
  }

  v125 = v10;
  v32 = *(sub_1C4415590() + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate7Manager_liveState);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  os_unfair_lock_lock(v32 + 6);
  sub_1C4422F74(v129);
  os_unfair_lock_unlock(v32 + 6);
  sub_1C44E8494(v129);
  v105 = v129[2];
  v106 = v129[3];
  v107 = v130;
  v33 = v132;
  v109 = v129[4];
  v110 = v131;
  v34 = v133;
  v115 = v134;
  v35 = v135;
  v108 = v136;
  v111 = v138;
  v113 = v137;

  *(v0 + 16) = v109;
  *(v0 + 24) = v107;
  *(v0 + 25) = *v126;
  *(v0 + 28) = *&v126[3];
  *(v0 + 32) = v110;
  *(v0 + 40) = v33;
  *(v0 + 48) = v34;
  *(v0 + 56) = v115;
  *(v0 + 64) = v35;
  *(v0 + 65) = v108;
  *(v0 + 66) = v127;
  *(v0 + 70) = v128;
  *(v0 + 72) = v113;
  *(v0 + 80) = v111;
  if ((v35 & 1) == 0)
  {
    goto LABEL_21;
  }

  v36 = v34;
  if ((v115 & 1) == 0)
  {
    if (v107)
    {
      v42 = v33;
      v43 = *(v0 + 104);
      v44 = *(v0 + 112);

      if (v36)
      {
        v45 = v42;
      }

      else
      {
        v45 = 0x206E776F6E6B6E55;
      }

      if (v36)
      {
        v46 = v36;
      }

      else
      {
        v46 = 0xED0000726F727265;
      }

      v47 = sub_1C4D27FAC();
      sub_1C43FFB2C(&type metadata for ViewXPC.AccessError, v47);
      *v48 = v43;
      v48[1] = v44;
      v48[2] = v107;
      v48[3] = v45;
      v48[4] = v46;
      v48[5] = 0;
      sub_1C44165C0(v48, 4);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C444AF3C(v0 + 16);
      goto LABEL_14;
    }

    if (v111 >> 60 == 15)
    {
LABEL_21:
      v37 = *(v0 + 104);
      v38 = *(v0 + 112);

      v39 = sub_1C4D27FAC();
      v40 = sub_1C43FFB2C(&type metadata for ViewXPC.AccessError, v39);
      *v41 = v37;
      v41[1] = v38;
      sub_1C440EA30(v40, v41);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C444AF3C(v0 + 16);

      goto LABEL_14;
    }
  }

  if (v26)
  {
    sub_1C4EFA6E8();
    sub_1C4F01138();
    sub_1C4EFA5B8();

    sub_1C4EFA5F8();
    v53 = sub_1C4402B58();
    v54(v53);
  }

  else
  {
    v49 = *(v0 + 232);
    v51 = *(v0 + 216);
    v50 = *(v0 + 224);
    v52 = objc_autoreleasePoolPush();
    sub_1C4436790();
    sub_1C4EF9888();
    objc_autoreleasePoolPop(v52);
    sub_1C4EF9888();
    (*(v50 + 8))(v49, v51);
  }

  v55 = *(v0 + 224);
  v57 = *(v0 + 176);
  v56 = *(v0 + 184);
  v112 = *(v0 + 168);
  v114 = *(v0 + 280);
  sub_1C4EF98A8();
  v58 = sub_1C4EF98E8();
  v60 = v59;
  v61 = *(v55 + 8);
  v62 = sub_1C4402B58();
  v61(v62);
  v63 = v61;
  *(v0 + 88) = v58;
  *(v0 + 96) = v60;
  sub_1C4F01178();
  sub_1C4415EA8();
  sub_1C4F02038();
  (*(v57 + 8))(v56, v112);

  if (v114 != 1)
  {

    v67 = 0;
    v69 = 0xC000000000000000;
LABEL_38:
    v71 = *(v0 + 232);
    v70 = *(v0 + 240);
    v72 = *(v0 + 216);
    (*(*(v0 + 224) + 16))(v71, v70, v72);
    v73 = objc_allocWithZone(MEMORY[0x1E69A9EF8]);
    sub_1C4D27648(v67, v69, v71, v105, v106, v115 & 1);

    sub_1C444AF3C(v0 + 16);

    v63(v70, v72);

    sub_1C43FBCF0();
    sub_1C44693C8();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 248) = v117;
  *(v0 + 252) = v116;
  *(v0 + 256) = v119;
  *(v0 + 260) = v118;
  *(v0 + 264) = v121;
  *(v0 + 268) = v120;
  *(v0 + 272) = v123;
  *(v0 + 276) = v122;
  v64 = sandbox_extension_issue_file_to_process();
  if (!v64)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v76 = sub_1C4F00968();
    sub_1C4F01CD8();

    if (sub_1C442FAFC())
    {
      v78 = *(v0 + 104);
      v77 = *(v0 + 112);
      v79 = sub_1C43FD084();
      v129[0] = sub_1C43FFD34();
      *v79 = 136315138;
      *(v79 + 4) = sub_1C441D828(v78, v77, v129);
      sub_1C444B414();
      _os_log_impl(v80, v81, v82, v83, v79, 0xCu);
      sub_1C4435858();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    v84 = MEMORY[0x1C693F6A0]();
    v85 = strerror(v84);
    if (!v85)
    {
      goto LABEL_49;
    }

    v86 = v85;

    v87 = MEMORY[0x1C693FF00](v86);
    v89 = *(v0 + 240);
    v90 = *(v0 + 216);
    v91 = *(v0 + 136);
    v93 = *(v0 + 104);
    v92 = *(v0 + 112);
    if (v88)
    {
      v94 = v87;
      v95 = v88;
      v96 = (v91 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier);
      v98 = *v96;
      v97 = v96[1];
      v99 = sub_1C4D27FAC();
      sub_1C43FFB2C(&type metadata for ViewXPC.AccessError, v99);
      *v100 = v93;
      v100[1] = v92;
      v100[2] = v98;
      v100[3] = v97;
      v100[4] = v94;
      v100[5] = v95;
    }

    else
    {
      v101 = (v91 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier);
      v103 = *v101;
      v102 = v101[1];
      v104 = sub_1C4D27FAC();
      sub_1C43FFB2C(&type metadata for ViewXPC.AccessError, v104);
      *v100 = v93;
      v100[1] = v92;
      v100[2] = v103;
      v100[3] = v102;
      *(v100 + 2) = xmmword_1C4F6DA60;
    }

    sub_1C44165C0(v100, 2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C444AF3C(v0 + 16);

    v63(v89, v90);
LABEL_14:

    sub_1C43FBDA0();
    sub_1C44693C8();

    __asm { BRAA            X1, X16 }
  }

  v65 = v64;

  if (!__OFADD__(strlen(v65), 1))
  {
    (*(*(v0 + 152) + 104))(*(v0 + 160), *MEMORY[0x1E6969000], *(v0 + 144));
    v66 = sub_1C4410428();
    v67 = MEMORY[0x1C6938660](v66);
    v69 = v68;
    goto LABEL_38;
  }

  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t sub_1C4D22634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1C43FEB04();
}

uint64_t sub_1C4D22650(uint64_t a1)
{
  v80 = v1;
  v2 = *(v1[6] + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_process);
  if (!v2)
  {
    v26 = sub_1C4D27FAC();
    v27 = sub_1C43FFB2C(&type metadata for ViewXPC.AccessError, v26);
    sub_1C4426258(v27, v28);
    goto LABEL_9;
  }

  v3 = qword_1EDDFA678;
  v4 = v2;
  if (v3 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v5 = v1[3];
  v6 = v1[4];
  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DCD8);
  v8 = v4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = v6;
  v10 = sub_1C4F00968();
  sub_1C4F01CF8();

  if (sub_1C442FAFC())
  {
    v11 = v1[3];
    v12 = v8;
    v13 = v1[2];
    v5 = sub_1C43FFD34();
    v14 = swift_slowAlloc();
    v72[0] = sub_1C43FC11C();
    *v5 = 136315650;
    v15 = v13;
    v8 = v12;
    v16 = sub_1C441D828(v15, v11, v72);
    sub_1C4450114(v16);
    v17 = sub_1C4F01138();
    v19 = sub_1C441D828(v17, v18, v72);

    *(v5 + 14) = v19;
    *(v5 + 22) = 2112;
    *(v5 + 24) = v12;
    *v14 = v2;
    v20 = v12;
    sub_1C444B414();
    _os_log_impl(v21, v22, v23, v24, v5, 0x20u);
    sub_1C4420C3C(v14, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBE2C();
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FE9D4();
  }

  v25 = sub_1C443486C();
  if (v5)
  {
LABEL_7:

LABEL_9:
    sub_1C43FBDA0();

    return v29();
  }

  if (!v25)
  {
    v32 = sub_1C4D27FAC();
    v33 = sub_1C43FFB2C(&type metadata for ViewXPC.AccessError, v32);
    sub_1C44339FC(v33, v34);
    *(v35 + 48) = 0;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    goto LABEL_7;
  }

  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44(&qword_1EDDF9710);
  }

  sub_1C4415590();

  sub_1C4CE06F0(v31, v72);

  v36 = v72[3];
  if ((v77 & 1) == 0)
  {
    v69 = v8;
    v44 = v1[2];
    v45 = v1[3];

    v46 = sub_1C4D27FAC();
    v47 = sub_1C43FFB2C(&type metadata for ViewXPC.AccessError, v46);
    *v48 = v44;
    v48[1] = v45;
    sub_1C440EA30(v47, v48);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v49 = sub_1C43FD018();
    sub_1C441DFEC(v49, v50);

    goto LABEL_9;
  }

  v37 = v72[2];
  v38 = v76;
  if ((v76 & 1) == 0)
  {
    v51 = v73;
    if (v73)
    {
      v52 = v74;
      v53 = v75;
      v54 = v79;
      v55 = v78;
      v56 = v8;
      v57 = v1[3];
      v70 = v1[2];

      if (v53)
      {
        v58 = v52;
      }

      else
      {
        v58 = 0x206E776F6E6B6E55;
      }

      if (v53)
      {
        v59 = v53;
      }

      else
      {
        v59 = 0xED0000726F727265;
      }

      v60 = sub_1C4D27FAC();
      sub_1C43FFB2C(&type metadata for ViewXPC.AccessError, v60);
      *v61 = v70;
      v61[1] = v57;
      v61[2] = v51;
      v61[3] = v58;
      v61[4] = v59;
      v61[5] = 0;
      sub_1C44165C0(v61, 4);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C441DFEC(v55, v54);
      goto LABEL_9;
    }

    if (v79 >> 60 == 15)
    {
      v71 = v79;
      v62 = v78;
      v63 = v8;
      v64 = v1[2];
      v65 = v1[3];

      v66 = sub_1C4D27FAC();
      v67 = sub_1C43FFB2C(&type metadata for ViewXPC.AccessError, v66);
      *v68 = v64;
      v68[1] = v65;
      sub_1C440EA30(v67, v68);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C441DFEC(v62, v71);

      goto LABEL_9;
    }
  }

  v39 = objc_allocWithZone(MEMORY[0x1E69A9EF0]);
  v40 = sub_1C4D2774C(v37, v36, v38 & 1);

  v41 = sub_1C43FD018();
  sub_1C441DFEC(v41, v42);
  sub_1C43FBCF0();

  return v43(v40);
}

__n128 sub_1C4D22BA0@<Q0>(uint64_t a3@<X8>)
{
  sub_1C4EFA6C8();
  sub_1C44E8494(v17);
  if (v3)
  {
  }

  else
  {
    v6 = v17[0];
    v7 = v17[1];
    v8 = v17[2];
    v9 = v17[3];
    v10 = v17[4];
    v11 = v18;
    v15 = v20;
    v16 = v19;
    v25 = v22;
    v26 = v21;
    v13 = v24;
    v14 = v23;

    *a3 = v6;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
    *(a3 + 32) = v10;
    *(a3 + 40) = v11;
    result = v16;
    *(a3 + 48) = v16;
    *(a3 + 64) = v15;
    v12 = v25;
    *(a3 + 80) = v26;
    *(a3 + 81) = v12;
    *(a3 + 88) = v14;
    *(a3 + 96) = v13;
  }

  return result;
}

void sub_1C4D22C8C(int a1, uint64_t a2, uint64_t a3, void (*a4)(id, void *), uint64_t a5)
{
  v134 = a5;
  v133 = a1;
  v7 = sub_1C4EF9948();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v131 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C4F01188();
  sub_1C43FCDF8();
  v132 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF98F8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v26 = &v108 - v25;
  v27 = (v5 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_auditToken);
  p_info = (&OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache + 32);
  if (*(v5 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_auditToken + 32))
  {
    v29 = sub_1C4D27FAC();
    v30 = sub_1C43FFB2C(&type metadata for ViewXPC.AccessError, v29);
    sub_1C4426258(v30, v31);
LABEL_6:
    if (p_info[410] != -1)
    {
      sub_1C44066DC(&qword_1EDDFECD0);
    }

    v42 = sub_1C4F00978();
    sub_1C43FCEE8(v42, qword_1EDE2DF70);
    v43 = v30;
    v44 = sub_1C4F00968();
    v45 = sub_1C4F01CD8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = sub_1C43FD084();
      v47 = sub_1C43FFD34();
      v135 = v47;
      *v46 = 136315138;
      v141 = v30;
      v48 = v30;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v49 = sub_1C4F01198();
      v51 = sub_1C441D828(v49, v50, &v135);

      *(v46 + 4) = v51;
      sub_1C44057CC();
      _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
      sub_1C440962C(v47);
      sub_1C43FBE2C();
      sub_1C43FE9D4();
    }

    v57 = v30;
    a4(0, v30);

    return;
  }

  v127 = v24;
  v128 = v23;
  v118 = v7;
  v129 = v22;
  v130 = v5;
  v32 = v27[6];
  v125 = v27[7];
  v126 = v32;
  v33 = v27[4];
  v123 = v27[5];
  v124 = v33;
  v34 = v27[2];
  v121 = v27[3];
  v122 = v34;
  v35 = *v27;
  v119 = v27[1];
  v120 = v35;
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44(&qword_1EDDF9710);
  }

  v36 = sub_1C4415590();
  v116 = v19;
  v115 = v26;
  v117 = a4;
  v37 = *(v36 + 16);
  v38 = v36;
  v39 = sub_1C4F01138();
  v41 = v40;

  sub_1C4D23658(v39, v41);
  v114 = v38;

  sub_1C445E5B0(sub_1C4BAFBD8, 0);
  if (v58)
  {
    v59 = v58;
    sub_1C4BAFEA8();
    v109 = v60;
    v113 = v59;
    v111 = v61;
    v112 = v37;
    v72 = objc_autoreleasePoolPush();
    sub_1C4436790();
    v73 = v128;
    sub_1C4EF9888();
    objc_autoreleasePoolPop(v72);
    v74 = v115;
    sub_1C4EF9888();
    v110 = *(v127 + 8);
    v110(v73, v129);
    sub_1C4EF98A8();
    v135 = sub_1C4EF98E8();
    v136 = v75;
    sub_1C4F01178();
    sub_1C4415EA8();
    sub_1C4F02038();
    (*(v132 + 8))(v16, v12);

    if ((v133 & 1) == 0)
    {

      v79 = 0;
      v81 = 0xC000000000000000;
      goto LABEL_25;
    }

    v135 = __PAIR64__(v119, v120);
    v136 = __PAIR64__(v121, v122);
    v137 = v124;
    v138 = v123;
    v139 = v126;
    v140 = v125;
    v76 = sandbox_extension_issue_file_to_process();
    if (v76)
    {
      v77 = v76;

      if (!__OFADD__(strlen(v77), 1))
      {
        (*(v9 + 104))(v131, *MEMORY[0x1E6969000], v118);
        v78 = sub_1C4410428();
        v79 = MEMORY[0x1C6938660](v78);
        v81 = v80;
LABEL_25:
        v82 = v128;
        v83 = v129;
        (*(v127 + 16))(v128, v74, v129);
        v84 = objc_allocWithZone(MEMORY[0x1E69A9EF8]);
        sub_1C44344B8(v79, v81);
        v85 = sub_1C4D27648(v79, v81, v82, v109, v111, 0);
        v117(v85, 0);

        sub_1C4412914();

        sub_1C4434000(v79, v81);
        v86 = v110;
        v110(v116, v83);
        v86(v74, v83);
        return;
      }

      __break(1u);
    }

    else if (qword_1EDDFECD0 == -1)
    {
LABEL_27:
      v87 = sub_1C4F00978();
      sub_1C43FCEE8(v87, qword_1EDE2DF70);
      v88 = sub_1C4F00968();
      v89 = sub_1C4F01CD8();
      if (sub_1C43FCEA4(v89))
      {
        *sub_1C43FCED0() = 0;
        sub_1C44011B0(&dword_1C43F8000, v90, v91, "Could not create token for view features database");
        sub_1C43FBE2C();
      }

      v92 = MEMORY[0x1C693F6A0]();
      v93 = strerror(v92);
      if (!v93)
      {
        __break(1u);
        return;
      }

      v94 = v93;

      v95 = MEMORY[0x1C693FF00](v94);
      if (v96)
      {
        v97 = v95;
        v98 = v96;
        v99 = *(v130 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier);
        v100 = *(v130 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier + 8);
        v101 = sub_1C4D27FAC();
        v30 = sub_1C43FFB2C(&type metadata for ViewXPC.AccessError, v101);
        *v102 = xmmword_1C4F6DA70;
        *(v102 + 16) = v99;
        *(v102 + 24) = v100;
        *(v102 + 32) = v97;
        *(v102 + 40) = v98;
      }

      else
      {
        v104 = *(v130 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier);
        v103 = *(v130 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier + 8);
        v105 = sub_1C4D27FAC();
        v30 = sub_1C43FFB2C(&type metadata for ViewXPC.AccessError, v105);
        *v102 = xmmword_1C4F6DA70;
        *(v102 + 16) = v104;
        *(v102 + 24) = v103;
        *(v102 + 32) = xmmword_1C4F6DA60;
      }

      sub_1C44165C0(v102, 2);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4412914();

      v106 = v129;
      v107 = v110;
      v110(v116, v129);
      v107(v74, v106);
      a4 = v117;
      p_info = &OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache.info;
      goto LABEL_6;
    }

    sub_1C44066DC(&qword_1EDDFECD0);
    goto LABEL_27;
  }

  v62 = v117;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v63 = sub_1C4F00978();
  sub_1C43FCEE8(v63, qword_1EDE2DCD8);
  v64 = sub_1C4F00968();
  v65 = sub_1C4F01CD8();
  if (sub_1C43FCEA4(v65))
  {
    v66 = sub_1C43FCED0();
    sub_1C43FBD24(v66);
    sub_1C44057CC();
    _os_log_impl(v67, v68, v69, v70, v71, 2u);
    sub_1C43FE9D4();
  }

  v62(0, 0);
  sub_1C4412914();
}

void sub_1C4D23658(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (*(v2 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_entitledViewNames) && (v21[0] = a1, v21[1] = a2, MEMORY[0x1EEE9AC00](a1), _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), v6 = sub_1C44CE068(), , v6))
  {
    if (qword_1EDDFA678 != -1)
    {
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDE2DCD8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1C441D828(a1, a2, v21);
      _os_log_impl(&dword_1C43F8000, v8, v9, "ViewXPC: entitlements contained %s", v10, 0xCu);
      sub_1C440962C(v11);
      MEMORY[0x1C6942830](v11, -1, -1);
      MEMORY[0x1C6942830](v10, -1, -1);
    }
  }

  else
  {
    if (qword_1EDDFA678 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDE2DCD8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CD8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1C441D828(a1, a2, v21);
      _os_log_impl(&dword_1C43F8000, v13, v14, "ViewXPC: client not authorized for %s", v15, 0xCu);
      sub_1C440962C(v16);
      MEMORY[0x1C6942830](v16, -1, -1);
      MEMORY[0x1C6942830](v15, -1, -1);
    }

    v17 = v3 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier;
    v19 = *(v3 + OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier);
    v18 = *(v17 + 8);
    sub_1C4D27FAC();
    swift_allocError();
    *v20 = a1;
    *(v20 + 8) = a2;
    *(v20 + 16) = v19;
    *(v20 + 24) = v18;
    *(v20 + 32) = 0;
    *(v20 + 40) = 0;
    *(v20 + 48) = 1;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t ViewXPC.Server.reportUnknownError(forViewName:useCase:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1C43FEB04();
}

uint64_t sub_1C4D239B8()
{
  sub_1C43FEAEC();
  v2 = sub_1C443486C();
  if (v0)
  {
    v5 = sub_1C4409E50();

    return v6(v5);
  }

  else
  {
    if (v2)
    {
      sub_1C4EFA6C8();
      v4 = v3;
    }

    else
    {
      v4 = v1[3];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v1[7] = v4;
    if (qword_1EDDF9710 != -1)
    {
      sub_1C440AD44(&qword_1EDDF9710);
    }

    v1[8] = sub_1C4415590();
    v8 = swift_task_alloc();
    v1[9] = v8;
    *v8 = v1;
    v8[1] = sub_1C4D23B10;

    return sub_1C4CE2394();
  }
}

uint64_t sub_1C4D23B10()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4D23C10()
{
  sub_1C43FBCD4();

  sub_1C43FBCF0();

  return v0(1);
}

uint64_t sub_1C4D23C70()
{
  sub_1C43FBCD4();

  v0 = sub_1C4409E50();

  return v1(v0);
}

uint64_t ViewXPC.Server.reportSQLiteError(forViewName:sqliteErrorCode:useCase:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_1C43FEB04();
}

uint64_t sub_1C4D23CF0()
{
  sub_1C43FEAEC();
  if (sub_1C4D215A4(v0[2], v0[3], v0[5]))
  {
    sub_1C4EFA6C8();
    v2 = v1;
  }

  else
  {
    v2 = v0[3];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  v0[8] = v2;
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44(&qword_1EDDF9710);
  }

  v0[9] = sub_1C4415590();
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1C4D23E58;

  return sub_1C4CE2394();
}

uint64_t sub_1C4D23E58()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4D23F58()
{
  sub_1C43FBCD4();

  sub_1C43FBCF0();

  return v0(1);
}

uint64_t sub_1C4D23FB8()
{
  sub_1C43FBCD4();

  v0 = sub_1C4409E50();

  return v1(v0);
}

uint64_t ViewXPC.Server.performUpdate(forViewNames:useCase:includeDependencies:)()
{
  sub_1C43FBCD4();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 96) = v3;
  *(v1 + 40) = v4;
  v5 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v1 + 64) = v5;
  sub_1C43FBD18(v5);
  *(v1 + 72) = sub_1C43FBE7C();
  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4D240AC()
{
  sub_1C4404D98();
  v29 = v0;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = sub_1C4F00978();
  sub_1C43FCEE8(v1, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = sub_1C43FD084();
    v6 = sub_1C43FFD34();
    v28 = v6;
    *v5 = 136315138;
    v7 = MEMORY[0x1C6940380](v4, MEMORY[0x1E69E6158]);
    v9 = sub_1C441D828(v7, v8, &v28);

    *(v5 + 4) = v9;
    sub_1C4402B48();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_1C440962C(v6);
    sub_1C43FBE2C();
    sub_1C43FE9D4();
  }

  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70(&qword_1EDDF0C00);
  }

  v15 = sub_1C442B738(*(v0 + 64), qword_1EDDF0C10);
  sub_1C43FC598(v15);
  v16 = sub_1C43FBC98();
  sub_1C446C964(v16, v17, v18, v19);
  v20 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v20);
  if (v22)
  {
    __break(1u);
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 80) = v23;
    *v23 = v0;
    v23[1] = sub_1C4D242AC;
    v24 = *(v0 + 72);
    v25 = *(v0 + 48);
    v26 = *(v0 + 96);
    v27 = *(v0 + 40);

    return sub_1C4D20F08(v27, v25, v26, v24);
  }

  return result;
}

uint64_t sub_1C4D242AC()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C4467948(*(v5 + 72));

    sub_1C43FBCF0();

    return v12(v3 & 1);
  }
}

uint64_t sub_1C4D243EC()
{
  sub_1C43FBCD4();
  sub_1C4467948(*(v0 + 72));

  sub_1C43FBCF0();

  return v1(0);
}

uint64_t sub_1C4D244F8(uint64_t a1, void *a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a2;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v5[5] = sub_1C4F01678();
  v8 = a2;
  a5;
  v9 = swift_task_alloc();
  v5[6] = v9;
  *v9 = v5;
  v9[1] = sub_1C4D245EC;

  return ViewXPC.Server.performUpdate(forViewNames:useCase:includeDependencies:)();
}

uint64_t sub_1C4D245EC()
{
  sub_1C4404D98();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  v8 = v5[3];
  v9 = v5[2];
  v10 = *v1;
  *v7 = *v1;

  if (v2)
  {
    v11 = sub_1C4EF9798();

    v12 = sub_1C4413080();
    v13(v12, 0, v11);
  }

  else
  {
    (*(v5[4] + 16))(v5[4], v4 & 1, 0);
  }

  _Block_release(v6[4]);
  v14 = v10[1];

  return v14();
}

uint64_t ViewXPC.Server.accessToken(viewName:isSandboxed:useCase:)()
{
  sub_1C43FBCD4();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  *(v1 + 104) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  v6 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v1 + 72) = v6;
  sub_1C43FBD18(v6);
  *(v1 + 80) = sub_1C43FBE7C();
  v7 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4D24834()
{
  v28 = v0;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = *(v0 + 56);
  v2 = sub_1C4F00978();
  sub_1C43FCEE8(v2, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = v1;
  v4 = sub_1C4F00968();
  LOBYTE(v1) = sub_1C4F01CF8();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v27 = sub_1C43FC11C();
    *v6 = 136315650;
    v7 = sub_1C43FD018();
    *(v6 + 4) = sub_1C441D828(v7, v8, v9);
    *(v6 + 12) = 1024;
    *(v6 + 14) = v5;
    *(v6 + 18) = 2080;
    v10 = sub_1C4F01138();
    v12 = sub_1C441D828(v10, v11, &v27);

    *(v6 + 20) = v12;
    sub_1C4402B48();
    _os_log_impl(v13, v14, v15, v16, v17, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FE9D4();
  }

  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70(&qword_1EDDF0C00);
  }

  v18 = sub_1C442B738(*(v0 + 72), qword_1EDDF0C10);
  sub_1C43FC598(v18);
  v19 = sub_1C43FBC98();
  sub_1C446C964(v19, v20, v21, v22);
  v23 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v23);
  if (v25)
  {
    __break(1u);
  }

  else
  {
    v26 = swift_task_alloc();
    *(v0 + 88) = v26;
    *v26 = v0;
    v26[1] = sub_1C4D24A88;

    return sub_1C4D218E0();
  }

  return result;
}

uint64_t sub_1C4D24A88()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C4467948(*(v5 + 80));

    sub_1C43FBCF0();

    return v12(v3);
  }
}

uint64_t sub_1C4D24C6C(uint64_t a1, int a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  sub_1C4F01138();
  v5[5] = v8;
  v9 = a3;
  a5;
  v10 = swift_task_alloc();
  v5[6] = v10;
  *v10 = v5;
  v10[1] = sub_1C4D28144;

  return ViewXPC.Server.accessToken(viewName:isSandboxed:useCase:)();
}

uint64_t ViewXPC.Server.accessInfo(viewName:useCase:)()
{
  sub_1C43FBCD4();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[9] = v5;
  sub_1C43FBD18(v5);
  v1[10] = sub_1C43FBE7C();
  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4D24DEC()
{
  sub_1C4404D98();
  v32 = v0;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = v0[7];
  v2 = sub_1C4F00978();
  sub_1C43FCEE8(v2, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = v1;
  v4 = sub_1C4F00968();
  LOBYTE(v1) = sub_1C4F01CF8();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = swift_slowAlloc();
    v31 = sub_1C43FC11C();
    *v5 = 136315394;
    v6 = sub_1C43FD018();
    v9 = sub_1C441D828(v6, v7, v8);
    sub_1C4450114(v9);
    v10 = sub_1C4F01138();
    v12 = sub_1C441D828(v10, v11, &v31);

    *(v5 + 14) = v12;
    sub_1C4402B48();
    _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FE9D4();
  }

  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70(&qword_1EDDF0C00);
  }

  v18 = sub_1C442B738(v0[9], qword_1EDDF0C10);
  sub_1C43FC598(v18);
  v19 = sub_1C43FBC98();
  sub_1C446C964(v19, v20, v21, v22);
  v23 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v23);
  if (v25)
  {
    __break(1u);
  }

  else
  {
    v26 = swift_task_alloc();
    v0[11] = v26;
    *v26 = v0;
    v27 = sub_1C4440130(v26);

    return sub_1C4D22634(v27, v28, v29, v30);
  }

  return result;
}

uint64_t sub_1C4D25004()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C4467948(*(v5 + 80));

    sub_1C43FBCF0();

    return v12(v3);
  }
}

uint64_t sub_1C4D25144()
{
  sub_1C43FBCD4();
  sub_1C4467948(*(v0 + 80));

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4D251CC(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  sub_1C4F01138();
  v4[5] = v7;
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1C4D252B8;

  return ViewXPC.Server.accessInfo(viewName:useCase:)();
}

uint64_t sub_1C4D252B8()
{
  sub_1C4404D98();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;
  sub_1C43FBDAC();
  *v9 = v8;

  v10 = *(v5 + 32);
  if (v2)
  {
    v11 = sub_1C4EF9798();

    v12 = sub_1C4413080();
    v13(v12, 0, v11);

    _Block_release(v10);
  }

  else
  {
    v14 = sub_1C4413080();
    v15(v14, v4, 0);
    _Block_release(v10);
  }

  v16 = *(v8 + 8);

  return v16();
}

void sub_1C4D25478(char a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  v17 = a4;
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v9 = sub_1C4F00978();
  sub_1C442B738(v9, qword_1EDE2DCD8);
  v10 = sub_1C4F00968();
  v11 = sub_1C4F01CF8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1C43F8000, v10, v11, "ViewXPC: accessTokenForFeatures", v12, 2u);
    MEMORY[0x1C6942830](v12, -1, -1);
  }

  if (qword_1EDDF0C00 != -1)
  {
    swift_once();
  }

  v13 = sub_1C442B738(v6, qword_1EDDF0C10);
  swift_beginAccess();
  sub_1C446C964(v13, v8, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v14 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v8, 1, v14) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1C4D22C8C(a1 & 1, v15, v8, sub_1C4D27D14, v16);
    sub_1C4467948(v8);
    _Block_release(a4);
  }
}

uint64_t ViewXPC.Server.accessTokenForFeatures(isSandboxed:useCase:completion:)(char a1, uint64_t a2, void (*a3)(id, void *), uint64_t a4)
{
  v7 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v11 = sub_1C4F00978();
  sub_1C43FCEE8(v11, qword_1EDE2DCD8);
  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CF8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = sub_1C43FCED0();
    *v14 = 0;
    _os_log_impl(&dword_1C43F8000, v12, v13, "ViewXPC: accessTokenForFeatures", v14, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70(&qword_1EDDF0C00);
  }

  sub_1C43FCEE8(v7, qword_1EDDF0C10);
  swift_beginAccess();
  sub_1C446C964(v12, v10, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v15 = type metadata accessor for Configuration(0);
  result = sub_1C44157D4(v10, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1C4D22C8C(a1 & 1, v17, v10, a3, a4);
    return sub_1C4467948(v10);
  }

  return result;
}

void sub_1C4D258F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1C4EF9798();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t ViewXPC.Server.reportUnknownError(forViewName:useCase:)()
{
  sub_1C43FBCD4();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[9] = v5;
  sub_1C43FBD18(v5);
  v1[10] = sub_1C43FBE7C();
  v6 = sub_1C4F00978();
  v1[11] = v6;
  sub_1C43FCF7C(v6);
  v1[12] = v7;
  v1[13] = sub_1C43FBE7C();
  v8 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C4D25A38(uint64_t a1)
{
  v26 = v1;
  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v2 = sub_1C4F00968();
  sub_1C4F01CF8();

  if (sub_1C442FAFC())
  {
    v4 = v1[5];
    v3 = v1[6];
    v5 = sub_1C43FD084();
    v25 = sub_1C43FFD34();
    *v5 = 136315138;
    *(v5 + 4) = sub_1C441D828(v4, v3, &v25);
    sub_1C444B414();
    _os_log_impl(v6, v7, v8, v9, v5, 0xCu);
    sub_1C4435858();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v10 = sub_1C4402B58();
  v11(v10);
  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70(&qword_1EDDF0C00);
  }

  v12 = sub_1C442B738(v1[9], qword_1EDDF0C10);
  sub_1C43FC598(v12);
  v13 = sub_1C43FBC98();
  sub_1C446C964(v13, v14, v15, v16);
  v17 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v17);
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v20 = swift_task_alloc();
    v1[14] = v20;
    *v20 = v1;
    v21 = sub_1C4440130(v20);

    return ViewXPC.Server.reportUnknownError(forViewName:useCase:config:)(v21, v22, v23, v24);
  }

  return result;
}

uint64_t sub_1C4D25C00()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v5 + 120) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C4467948(*(v5 + 80));

    sub_1C43FBCF0();

    return v12(v3 & 1);
  }
}

uint64_t sub_1C4D25D4C()
{
  sub_1C43FBCD4();
  sub_1C4467948(*(v0 + 80));

  sub_1C43FBCF0();

  return v1(0);
}

uint64_t sub_1C4D25DE4(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  sub_1C442FFD4();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = sub_1C43FBC98();

  return sub_1C446D134(v13, v14);
}

uint64_t sub_1C4D25E64(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  sub_1C4F01138();
  v4[5] = v7;
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1C4D28158;

  return ViewXPC.Server.reportUnknownError(forViewName:useCase:)();
}

uint64_t ViewXPC.Server.reportSQLiteError(forViewName:sqliteErrorCode:useCase:)()
{
  sub_1C43FBCD4();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[5] = v5;
  v6 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[10] = v6;
  sub_1C43FBD18(v6);
  v1[11] = sub_1C43FBE7C();
  v7 = sub_1C4F00978();
  v1[12] = v7;
  sub_1C43FCF7C(v7);
  v1[13] = v8;
  v1[14] = sub_1C43FBE7C();
  v9 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4D2602C(uint64_t a1)
{
  v28 = v1;
  sub_1C4F00178();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v2 = sub_1C4F00968();
  sub_1C4F01CF8();

  if (sub_1C442FAFC())
  {
    v3 = v1[6];
    v26 = v1[7];
    v4 = v1[5];
    v5 = swift_slowAlloc();
    v27 = sub_1C43FFD34();
    *v5 = 136315394;
    *(v5 + 4) = sub_1C441D828(v4, v3, &v27);
    *(v5 + 12) = 2048;
    *(v5 + 14) = v26;
    sub_1C444B414();
    _os_log_impl(v6, v7, v8, v9, v5, 0x16u);
    sub_1C4435858();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v10 = sub_1C4402B58();
  v11(v10);
  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70(&qword_1EDDF0C00);
  }

  v12 = sub_1C442B738(v1[10], qword_1EDDF0C10);
  sub_1C43FC598(v12);
  v13 = sub_1C43FBC98();
  sub_1C446C964(v13, v14, v15, v16);
  v17 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v17);
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v20 = swift_task_alloc();
    v1[15] = v20;
    *v20 = v1;
    v20[1] = sub_1C4D2622C;
    v21 = v1[11];
    v22 = v1[8];
    v23 = v1[6];
    v24 = v1[7];
    v25 = v1[5];

    return ViewXPC.Server.reportSQLiteError(forViewName:sqliteErrorCode:useCase:config:)(v25, v23, v24, v22, v21);
  }

  return result;
}

uint64_t sub_1C4D2622C()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v5 + 128) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C4467948(*(v5 + 88));

    sub_1C43FBCF0();

    return v12(v3 & 1);
  }
}

uint64_t sub_1C4D26378()
{
  sub_1C43FBCD4();
  sub_1C4467948(*(v0 + 88));

  sub_1C43FBCF0();

  return v1(0);
}

uint64_t sub_1C4D26490(uint64_t a1, int a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  sub_1C4F01138();
  v5[5] = v8;
  v9 = a3;
  a5;
  v10 = swift_task_alloc();
  v5[6] = v10;
  *v10 = v5;
  v10[1] = sub_1C4D28158;

  return ViewXPC.Server.reportSQLiteError(forViewName:sqliteErrorCode:useCase:)();
}

id sub_1C4D26584(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_1C4F01108();

  v5 = [v3 initWithType:a1 name:v4];

  return v5;
}

id ViewXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ViewXPC.Server.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_auditToken];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[32] = 1;
  *&v0[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_process] = 0;
  v3 = &v0[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v0[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_entitledViewNames] = 0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1C4D26738(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v61 - v5;
  if (qword_1EDDF0C00 != -1)
  {
    sub_1C441AA70(&qword_1EDDF0C00);
  }

  v7 = sub_1C442B738(v3, qword_1EDDF0C10);
  swift_beginAccess();
  sub_1C446C964(v7, v6, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v8 = type metadata accessor for Configuration(0);
  result = sub_1C44157D4(v6, 1, v8);
  if (result != 1)
  {
    v10 = &v6[*(v8 + 20)];
    v11 = *v10;
    v12 = *(v10 + 1);
    sub_1C4467948(v6);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v11) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v12) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0(&qword_1EDDFA678);
      }

      v20 = sub_1C4F00978();
      sub_1C43FCEE8(v20, qword_1EDE2DCD8);
      v21 = sub_1C4F00968();
      v22 = sub_1C4F01CF8();
      if (sub_1C43FCEA4(v22))
      {
        v23 = sub_1C43FCED0();
        sub_1C43FBD24(v23);
        sub_1C44057CC();
        _os_log_impl(v24, v25, v26, v27, v28, 2u);
        sub_1C43FE9D4();
      }
    }

    else
    {
      v14 = a2;
      if (sub_1C446874C(0xD000000000000023, 0x80000001C4FC6B50))
      {
        if (qword_1EDDFA678 != -1)
        {
          sub_1C43FFCC0(&qword_1EDDFA678);
        }

        v15 = sub_1C4F00978();
        sub_1C43FCEE8(v15, qword_1EDE2DCD8);
        v16 = a2;
        v17 = sub_1C4F00968();
        v18 = sub_1C4F01CF8();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 67109120;
          *(v19 + 4) = [v16 processIdentifier];

          _os_log_impl(&dword_1C43F8000, v17, v18, "ViewXPC connection from %d", v19, 8u);
          sub_1C43FBE2C();
        }

        else
        {

          v17 = v16;
        }

        v29 = [objc_opt_self() interfaceWithProtocol_];
        [v16 setExportedInterface:v29];

        v30 = [objc_allocWithZone(type metadata accessor for ViewXPC.Server()) init];
        [v16 auditToken];
        v31 = v63;
        v32 = &v30[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_auditToken];
        *v32 = aBlock;
        *(v32 + 1) = v31;
        v32[32] = 0;
        v33 = [objc_opt_self() processWithXPCConnection_];
        v34 = *&v30[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_process];
        *&v30[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_process] = v33;

        v35 = sub_1C4F01108();
        v36 = [v16 valueForEntitlement:v35];

        if (v36)
        {
          sub_1C4F02078();
          swift_unknownObjectRelease();
        }

        else
        {
          aBlock = 0u;
          v63 = 0u;
        }

        v68[0] = aBlock;
        v68[1] = v63;
        sub_1C446C964(v68, &aBlock, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v37 = &unk_1C4F0C000;
        if (*(&v63 + 1))
        {
          if (swift_dynamicCast())
          {
            v38 = v66;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v61[0] = v14;
            v39 = sub_1C4F00968();
            v40 = sub_1C4F01CF8();

            if (os_log_type_enabled(v39, v40))
            {
              v41 = sub_1C43FD084();
              *&aBlock = sub_1C43FFD34();
              *v41 = 136315138;
              *(v41 + 4) = sub_1C441D828(v38, *(&v38 + 1), &aBlock);
              _os_log_impl(&dword_1C43F8000, v39, v40, "ViewXPC.Delegate: clientIdentifier: %s", v41, 0xCu);
              sub_1C4435858();
              sub_1C43FBE2C();
              sub_1C43FBE2C();
            }

            *&v30[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier] = v38;

            v14 = v61[0];
            v37 = &unk_1C4F0C000;
          }
        }

        else
        {
          sub_1C4420C3C(&aBlock, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        }

        v42 = sub_1C4F01108();
        v43 = [v16 valueForEntitlement:v42];

        if (v43)
        {
          sub_1C4F02078();
          swift_unknownObjectRelease();
        }

        else
        {
          v66 = 0u;
          v67 = 0u;
        }

        aBlock = v66;
        v63 = v67;
        if (*(&v67 + 1))
        {
          sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          if (swift_dynamicCast())
          {
            v44 = v61[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v45 = sub_1C4F00968();
            v46 = sub_1C4F01CF8();

            if (os_log_type_enabled(v45, v46))
            {
              v47 = sub_1C43FD084();
              v61[0] = v14;
              v48 = v37;
              v49 = v47;
              v50 = sub_1C43FFD34();
              *&aBlock = v50;
              *v49 = v48[458];
              v51 = MEMORY[0x1C6940380](v44, MEMORY[0x1E69E6158]);
              v53 = sub_1C441D828(v51, v52, &aBlock);

              *(v49 + 4) = v53;
              _os_log_impl(&dword_1C43F8000, v45, v46, "ViewXPC.Delegate: entitledViewNames: %s", v49, 0xCu);
              sub_1C440962C(v50);
              sub_1C43FBE2C();
              sub_1C43FBE2C();
            }

            *&v30[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_entitledViewNames] = v44;
          }
        }

        else
        {
          sub_1C4420C3C(&aBlock, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        }

        if (*&v30[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_clientIdentifier + 8] || *&v30[OBJC_IVAR____TtCC24IntelligencePlatformCore7ViewXPC6Server_entitledViewNames])
        {
          [v16 setExportedObject:v30];
          v64 = sub_1C4D27004;
          v65 = 0;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v63 = sub_1C4833DD0;
          *(&v63 + 1) = &unk_1F440C518;
          v54 = _Block_copy(&aBlock);
          [v16 setInterruptionHandler:v54];
          _Block_release(v54);
          v64 = sub_1C4D27024;
          v65 = 0;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v63 = sub_1C4833DD0;
          *(&v63 + 1) = &unk_1F440C540;
          v55 = _Block_copy(&aBlock);
          [v16 setInvalidationHandler:v55];
          _Block_release(v55);
          [v16 resume];

          sub_1C4420C3C(v68, &qword_1EC0BCD10, &qword_1C4F0C8C0);
          return 1;
        }

        v56 = sub_1C4F00968();
        v57 = sub_1C4F01CD8();
        if (sub_1C43FCEA4(v57))
        {
          *sub_1C43FCED0() = 0;
          sub_1C44011B0(&dword_1C43F8000, v58, v59, "View XPC Service requires application-identifier or view read-only entitlement");
          sub_1C43FBE2C();
          v60 = v30;
        }

        else
        {
          v60 = v56;
          v56 = v30;
        }

        sub_1C4420C3C(v68, &qword_1EC0BCD10, &qword_1C4F0C8C0);
      }
    }

    return 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C4D2710C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  switch(*(v0 + 48))
  {
    case 1:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      v16 = 0x20746E65696C43;
      if (v1)
      {
        v14 = v2;
      }

      else
      {
        v14 = 0x6F727020746F6E3CLL;
      }

      if (!v1)
      {
        v1 = 0xEE003E6465646976;
      }

      MEMORY[0x1C6940010](v14, v1);

      MEMORY[0x1C6940010](0xD000000000000023, 0x80000001C4FC6C60);
      v6 = sub_1C44114DC();
      goto LABEL_18;
    case 2:
      v16 = 0;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000027, 0x80000001C4FC6C30);
      v10 = sub_1C44114DC();
      MEMORY[0x1C6940010](v10);
      MEMORY[0x1C6940010](0x3A746E65696C6320, 0xE900000000000020);
      if (v1)
      {
        v11 = v2;
      }

      else
      {
        v11 = 0x6F727020746F6E3CLL;
      }

      if (v1)
      {
        v12 = v1;
      }

      else
      {
        v12 = 0xEE003E6465646976;
      }

      MEMORY[0x1C6940010](v11, v12);

      MEMORY[0x1C6940010](0x203A726F72726520, 0xE800000000000000);
      v6 = v3;
      v7 = v4;
      goto LABEL_18;
    case 3:
      sub_1C43FBFCC();
      sub_1C4F02248();

      v16 = 0x2077656956;
      v13 = sub_1C44114DC();
      MEMORY[0x1C6940010](v13);
      v6 = 0xD00000000000001BLL;
      v7 = 0x80000001C4FC6C10;
      goto LABEL_18;
    case 4:
      sub_1C43FBFCC();
      sub_1C4F02248();

      v16 = 0x2077656956;
      v8 = sub_1C44114DC();
      MEMORY[0x1C6940010](v8);
      MEMORY[0x1C6940010](0x7272756320736920, 0xEE0020796C746E65);
      v9 = sub_1C4CC2358(v2);
      MEMORY[0x1C6940010](v9);

      MEMORY[0x1C6940010](0x7265206874697720, 0xEC00000020726F72);
      v6 = v1;
      v7 = v3;
      goto LABEL_18;
    case 5:
      if (v2 | *(v0 + 8) | *v0 | v1 | v3 | v4)
      {
        return 0xD000000000000021;
      }

      else
      {
        return 0xD00000000000001CLL;
      }

    default:
      sub_1C43FBFCC();
      sub_1C4F02248();

      v16 = 0xD000000000000027;
      v5 = sub_1C44114DC();
      MEMORY[0x1C6940010](v5);
      v6 = 46;
      v7 = 0xE100000000000000;
LABEL_18:
      MEMORY[0x1C6940010](v6, v7);
      return v16;
  }
}

uint64_t sub_1C4D27494()
{
  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = sub_1C4F01138();
  *(inited + 40) = v1;
  v2 = sub_1C4D2710C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  return sub_1C4F00F28();
}

uint64_t sub_1C4D2752C()
{
  result = 1;
  switch(v0[3].i8[0])
  {
    case 1:
      result = 2;
      break;
    case 2:
      result = 3;
      break;
    case 3:
      result = 4;
      break;
    case 4:
      result = 5;
      break;
    case 5:
      v2 = vorrq_s8(v0[1], v0[2]);
      if (*&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | v0->i64[1] | v0->i64[0])
      {
        result = 7;
      }

      else
      {
        result = 6;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4D275A4(uint64_t a1)
{
  v2 = sub_1C4D280EC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C4D275E0(uint64_t a1)
{
  v2 = sub_1C4D280EC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

id sub_1C4D27648(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v13 = sub_1C4EF9A38();
  v14 = sub_1C4EF9868();
  if (a5)
  {
    v15 = sub_1C4F01108();
  }

  else
  {
    v15 = 0;
  }

  v16 = [v7 initWithToken:v13 url:v14 tableName:v15 alwaysAvailable:a6 & 1];

  sub_1C4434000(a1, a2);
  v17 = sub_1C4EF98F8();
  (*(*(v17 - 8) + 8))(a3, v17);
  return v16;
}

id sub_1C4D2774C(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = sub_1C4F01108();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithTableName:v5 alwaysAvailable:a3 & 1];

  return v6;
}

uint64_t sub_1C4D277B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_1C446C964(a3, v22 - v10, &qword_1EC0BC660, &qword_1C4F29150);
  v12 = sub_1C4F018C8();
  if (sub_1C44157D4(v11, 1, v12) == 1)
  {
    sub_1C4420C3C(v11, &qword_1EC0BC660, &qword_1C4F29150);
  }

  else
  {
    sub_1C4F018B8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_1C4F017F8();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_1C4F011C8() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_1C4420C3C(a3, &qword_1EC0BC660, &qword_1C4F29150);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C4420C3C(a3, &qword_1EC0BC660, &qword_1C4F29150);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1C4D27B00()
{
  sub_1C43FEAEC();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  sub_1C440FEFC(v1);
  sub_1C445EB20();

  return v3();
}

uint64_t sub_1C4D27BA8()
{
  swift_unknownObjectRelease();

  v0 = sub_1C442FFD4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4D27BE0()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C4406C84(v1);

  return v4(v3);
}

uint64_t sub_1C4D27C78()
{
  sub_1C43FEAEC();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C4411F54(v1);

  return v4(v3);
}

uint64_t sub_1C4D27D1C()
{
  _Block_release(*(v0 + 32));

  v1 = sub_1C442FFD4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C4D27D64()
{
  sub_1C43FEAEC();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C4411F54(v1);

  return v4(v3);
}

uint64_t sub_1C4D27E00()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C4D27E50()
{
  sub_1C43FEAEC();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  sub_1C440FEFC(v1);
  sub_1C445EB20();

  return v3();
}

uint64_t sub_1C4D27EFC()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = swift_task_alloc();
  v6 = sub_1C43FC218(v5);
  *v6 = v7;
  v8 = sub_1C440FEFC(v6);

  return v9(v8, v1, v2, v4, v3);
}

unint64_t sub_1C4D27FAC()
{
  result = qword_1EDDF0C30;
  if (!qword_1EDDF0C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0C30);
  }

  return result;
}

uint64_t sub_1C4D28000(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1C4D2801C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 49))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4D2805C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C4D280B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_1C4D280EC()
{
  result = qword_1EDDF0C40;
  if (!qword_1EDDF0C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0C40);
  }

  return result;
}

uint64_t sub_1C4D28164()
{
  sub_1C45F9C18();
  v2 = v1;

  return v2;
}

uint64_t sub_1C4D28198()
{
  sub_1C45FA1A8();
  v1 = v0;

  return v1;
}

uint64_t sub_1C4D281CC()
{
  sub_1C45FA498();
  v1 = v0;

  return v1;
}

uint64_t sub_1C4D28200(void *a1)
{
  sub_1C45FA5C0();
  v3 = v2;

  return v3;
}

uint64_t sub_1C4D28230(uint64_t a1, uint64_t a2)
{
  sub_1C45FA778(a1, a2);
  v3 = v2;

  return v3;
}

void sub_1C4D28268(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  v9 = sub_1C43FBD18(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for Source(0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBD08();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  if (!a2 || !a3)
  {
    v21 = 1;
LABEL_28:
    *a1 = v21;
    a1[1] = a4;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = v19;
    v31 = &v29 - v18;
    v33 = a2;
    v34 = a1;
    v36 = a3;
    v20 = 0;
    v21 = 1;
    while (2)
    {
      if (v20 >= v36)
      {
LABEL_32:
        __break(1u);
      }

      else
      {
        v32 = (v20 + 1);
        if (!__OFADD__(v20, 1))
        {
          v35 = v20;
          while (1)
          {
            while (1)
            {
              if (qword_1EDDFA6A8 != -1)
              {
                swift_once();
              }

              if (qword_1EDE2DCF0 < v21)
              {
                a1 = v34;
                goto LABEL_28;
              }

              sub_1C449E530(v21, v11);
              if (sub_1C44157D4(v11, 1, v12) != 1)
              {
                break;
              }

              sub_1C4420C3C(v11, &unk_1EC0C0760, &qword_1C4F170D0);
              v22 = __OFADD__(v21++, 1);
              if (v22)
              {
                __break(1u);
LABEL_30:
                __break(1u);
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }
            }

            sub_1C4D29B04(v11, v16, type metadata accessor for Source);
            v23 = v21 - 1;
            if (__OFSUB__(v21, 1))
            {
              goto LABEL_30;
            }

            v22 = __OFADD__(v21++, 1);
            if (v22)
            {
              goto LABEL_31;
            }

            v24 = v23 > 0x40;
            v25 = v23 >= 0x40 ? 0 : 1 << v23;
            if (v24)
            {
              v25 = 0;
            }

            if ((v25 & a4) >= 1)
            {
              break;
            }

            sub_1C4454534(v16, type metadata accessor for Source);
          }

          v35 = type metadata accessor for Source;
          v26 = v31;
          sub_1C4D29B04(v16, v31, type metadata accessor for Source);
          v27 = v26;
          v28 = v33;
          sub_1C4D29B04(v27, v33, v35);
          v20 = v32;
          if (v32 != v36)
          {
            v33 = v28 + *(v30 + 72);
            continue;
          }

          a1 = v34;
          goto LABEL_28;
        }
      }

      break;
    }

    __break(1u);
  }

  __break(1u);
}

id sub_1C4D2857C(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1C4F01658();

  v3 = [v1 initWithArray_];

  return v3;
}

uint64_t sub_1C4D285F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6, int a7, uint64_t a8)
{
  v9 = v8;
  v56 = a8;
  v57 = a5;
  v53 = a7;
  v54 = a3;
  v58 = a2;
  v59 = a1;
  v12 = type metadata accessor for GDInteractionEnumeration.GDInteractionIterator(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC24IntelligencePlatformCore28VirtualInteractionEnumerator_handleToIDMap;
  sub_1C456902C(&qword_1EC0BA788, &qword_1C4F6DE10);
  v16 = MEMORY[0x1E69E7CC0];
  v17 = 0;
  *(v9 + v15) = sub_1C4F00F28();
  v18 = MEMORY[0x1E69E6530];
  do
  {
    v19 = *(&unk_1F43D12C0 + v17 + 32);
    v61 = v18;
    *&v60 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458B364(0, *(v16 + 16) + 1, 1, v16);
      v16 = v22;
    }

    v21 = *(v16 + 16);
    v20 = *(v16 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_1C458B364(v20 > 1, v21 + 1, 1, v16);
      v16 = v23;
    }

    *(v16 + 16) = v21 + 1;
    sub_1C44482AC(&v60, (v16 + 32 * v21 + 32));
    v17 += 8;
  }

  while (v17 != 104);
  v55 = a4;
  v24 = OBJC_IVAR____TtC24IntelligencePlatformCore28VirtualInteractionEnumerator_mechanismsWithoutParticipantStatusToKeep;
  v25 = sub_1C4461BB8(0, &unk_1EDDF0380, 0x1E695DEC8);
  v26 = sub_1C4D2857C(v16);
  *(v9 + v24) = v26;
  if (a6)
  {
    v27 = v26;
    sub_1C4461BB8(0, &qword_1EDDF05A0, 0x1E696AE18);
    sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C4F0C890;
    v29 = sub_1C4EF9CD8();
    *(v28 + 56) = v29;
    v30 = sub_1C4422F90((v28 + 32));
    v31 = *(*(v29 - 8) + 16);
    v31(v30, v59, v29);
    *(v28 + 88) = v29;
    v32 = sub_1C4422F90((v28 + 64));
    v31(v32, v58, v29);
    *(v28 + 120) = v25;
    *(v28 + 96) = v27;
    v33 = v27;
    v34 = 0xD000000000000034;
    v35 = 0x80000001C4FC6DD0;
    v36 = v28;
  }

  else
  {
    sub_1C4461BB8(0, &qword_1EDDF05A0, 0x1E696AE18);
    sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1C4F0CE60;
    v38 = sub_1C4EF9CD8();
    *(v37 + 56) = v38;
    v39 = sub_1C4422F90((v37 + 32));
    v40 = *(*(v38 - 8) + 16);
    v40(v39, v59, v38);
    *(v37 + 88) = v38;
    v41 = sub_1C4422F90((v37 + 64));
    v40(v41, v58, v38);
    v35 = 0x80000001C4FC6DA0;
    v34 = 0xD000000000000020;
    v36 = v37;
  }

  v42 = sub_1C4D28AF8(v34, v35, v36);
  v43 = objc_opt_self();
  v44 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v45 = v42;
  v46 = sub_1C4D29970(0x7461447472617473, 0xE900000000000065, v54 & 1);
  v47 = v56;
  v48 = [v43 interactionHistoryEnumeratorWithPredicate:v45 sortDescriptor:v46 batchSize:sub_1C468BDE0()];

  sub_1C4EF97F8();
  sub_1C4D29B04(v14, v9 + OBJC_IVAR____TtC24IntelligencePlatformCore28VirtualInteractionEnumerator_enumerator, type metadata accessor for GDInteractionEnumeration.GDInteractionIterator);
  v49 = v57;
  if (v55)
  {
    if (v53)
    {
      sub_1C4D28E08(v55, v57);
    }
  }

  sub_1C4454534(v47, type metadata accessor for Configuration);
  sub_1C4420C3C(v49, &qword_1EC0BA0C8, &unk_1C4F6E090);
  v50 = sub_1C4EF9CD8();
  v51 = *(*(v50 - 8) + 8);
  v51(v58, v50);
  v51(v59, v50);
  return v9;
}

id sub_1C4D28AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C4F01108();

  if (a3)
  {
    v5 = sub_1C4F01658();
  }

  else
  {
    v5 = 0;
  }

  v6 = [swift_getObjCClassFromMetadata() predicateWithFormat:v4 argumentArray:v5];

  return v6;
}

uint64_t sub_1C4D28B94(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  v36 = a5;
  v37 = a8;
  v40 = a6;
  v41 = a7;
  v39 = a4;
  v38 = a3;
  v10 = type metadata accessor for Configuration(0);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&qword_1EC0BA0C8, &unk_1C4F6E090);
  v15 = sub_1C43FBD18(v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  v18 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBD08();
  v24 = v22 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v35 - v27;
  v29 = *(v20 + 16);
  v29(&v35 - v27, a1, v18, v26);
  (v29)(v24, a2, v18);
  v30 = v36;
  sub_1C445FFF0(v36, v17, &qword_1EC0BA0C8, &unk_1C4F6E090);
  v31 = v37;
  sub_1C44098F0(v37, v13);
  type metadata accessor for VirtualInteractionEnumerator(0);
  swift_allocObject();
  v32 = sub_1C4D285F4(v28, v24, v38, v39, v17, v40, v41, v13);
  sub_1C4454534(v31, type metadata accessor for Configuration);
  sub_1C4420C3C(v30, &qword_1EC0BA0C8, &unk_1C4F6E090);
  v33 = *(v20 + 8);
  v33(a2, v18);
  v33(a1, v18);
  return v32;
}

uint64_t sub_1C4D28E08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v91 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v99 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&qword_1EC0BA788, &qword_1C4F6DE10);
  sub_1C43FCDF8();
  v89 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  v94 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v82 - v15;
  v97 = sub_1C456902C(&qword_1EC0BDCE0, &unk_1C4F31990);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBD08();
  v90 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v93 = (&v82 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v82 - v22;
  v24 = sub_1C456902C(&qword_1EC0BA0C8, &unk_1C4F6E090);
  v25 = sub_1C43FBD18(v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v82 - v26;
  sub_1C486DFC0();
  v29 = v28;
  sub_1C445FFF0(a2, v27, &qword_1EC0BA0C8, &unk_1C4F6E090);
  v30 = sub_1C4EFCE48();
  if (sub_1C44157D4(v27, 1, v30) == 1)
  {

    sub_1C4420C3C(v27, &qword_1EC0BA0C8, &unk_1C4F6E090);
    v31 = sub_1C4F00F28();
LABEL_29:
    *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore28VirtualInteractionEnumerator_handleToIDMap) = v31;
  }

  v83 = v2;
  v32 = sub_1C4EFCE38();
  (*(*(v30 - 8) + 8))(v27, v30);
  v31 = sub_1C4F00F28();
  v33 = v32 + 64;
  v34 = 1 << *(v32 + 32);
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  else
  {
    v35 = -1;
  }

  v36 = v35 & *(v32 + 64);
  v37 = (v34 + 63) >> 6;
  v104 = v29;
  v105 = v23;
  v38 = v91;
  v86 = v91 + 32;
  v100 = v29 + 56;
  v102 = (v91 + 8);
  v103 = v91 + 16;
  v88 = v32;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v39 = 0;
  v85 = v32 + 64;
  v84 = v37;
  for (i = v9; v36; v37 = v84)
  {
    v92 = v31;
LABEL_12:
    v41 = __clz(__rbit64(v36)) | (v39 << 6);
    v42 = *(v88 + 56);
    v43 = (*(v88 + 48) + 16 * v41);
    v45 = *v43;
    v44 = v43[1];
    v101 = *(v38 + 72);
    v46 = v38;
    v47 = *(v38 + 16);
    v48 = v105;
    v47(v105 + *(v97 + 48), v42 + v101 * v41, v5);
    *v48 = v45;
    v48[1] = v44;
    v49 = v93;
    sub_1C445FFF0(v48, v93, &qword_1EC0BDCE0, &unk_1C4F31990);
    v50 = v49[1];
    v96 = *v49;
    v98 = v50;
    v51 = v90;
    sub_1C445FFF0(v48, v90, &qword_1EC0BDCE0, &unk_1C4F31990);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    (*(v46 + 32))(v95, v51 + *(v97 + 48), v5);
    v52 = v104;
    if (*(v104 + 16))
    {
      sub_1C442D944();
      sub_1C4D299DC(&qword_1EDDFE820, v53, MEMORY[0x1E69A9820]);
      v54 = sub_1C4F00FD8();
      v55 = ~(-1 << *(v52 + 32));
      do
      {
        v56 = v54 & v55;
        v57 = (1 << (v54 & v55)) & *(v100 + (((v54 & v55) >> 3) & 0xFFFFFFFFFFFFFF8));
        v58 = v57 != 0;
        if (!v57)
        {
          break;
        }

        v59 = v99;
        v47(v99, *(v104 + 48) + v56 * v101, v5);
        sub_1C442D944();
        sub_1C4D299DC(&qword_1EDDFCC98, v60, MEMORY[0x1E69A9830]);
        v61 = sub_1C4F010B8();
        (*v102)(v59, v5);
        v54 = v56 + 1;
      }

      while ((v61 & 1) == 0);
    }

    else
    {
      v58 = 0;
    }

    v63 = v94;
    v62 = v95;
    v95[*(i + 48)] = v58;
    sub_1C4D29A24(v62, v63);
    v64 = v92;
    swift_isUniquelyReferenced_nonNull_native();
    v106 = v64;
    v65 = sub_1C445FAA8(v96, v98);
    if (__OFADD__(*(v64 + 16), (v66 & 1) == 0))
    {
      goto LABEL_31;
    }

    v67 = v65;
    v68 = v66;
    sub_1C456902C(&qword_1EC0C6528, &qword_1C4F6DE18);
    if (sub_1C4F02458())
    {
      v69 = sub_1C445FAA8(v96, v98);
      v71 = v105;
      if ((v68 & 1) != (v70 & 1))
      {
        goto LABEL_33;
      }

      v67 = v69;
      v38 = v91;
      if (v68)
      {
LABEL_25:

        v31 = v106;
        v79 = sub_1C44013A8();
        sub_1C4D29A94(v79, v80);
        sub_1C4420C3C(v71, &qword_1EC0BDCE0, &unk_1C4F31990);
        goto LABEL_26;
      }
    }

    else
    {
      v38 = v91;
      v71 = v105;
      if (v68)
      {
        goto LABEL_25;
      }
    }

    v31 = v106;
    *(v106 + 8 * (v67 >> 6) + 64) |= 1 << v67;
    v72 = (*(v31 + 48) + 16 * v67);
    v73 = v98;
    *v72 = v96;
    v72[1] = v73;
    v74 = sub_1C44013A8();
    sub_1C4D29A24(v74, v75);
    sub_1C4420C3C(v71, &qword_1EC0BDCE0, &unk_1C4F31990);
    v76 = *(v31 + 16);
    v77 = __OFADD__(v76, 1);
    v78 = v76 + 1;
    if (v77)
    {
      goto LABEL_32;
    }

    *(v31 + 16) = v78;
LABEL_26:
    v36 &= v36 - 1;
    (*v102)(v93 + *(v97 + 48), v5);
    v33 = v85;
  }

  while (1)
  {
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v40 >= v37)
    {

      v3 = v83;
      goto LABEL_29;
    }

    v36 = *(v33 + 8 * v40);
    ++v39;
    if (v36)
    {
      v92 = v31;
      v39 = v40;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4D295BC()
{
  v0 = objc_autoreleasePoolPush();
  swift_beginAccess();
  GDInteractionEnumeration.GDInteractionIterator.next()(v1);
  v3 = v2;
  swift_endAccess();
  if (v3)
  {
    v4 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C481A97C(v4);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v0);
  return v6;
}

uint64_t sub_1C4D29664()
{
  sub_1C4454534(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28VirtualInteractionEnumerator_enumerator, type metadata accessor for GDInteractionEnumeration.GDInteractionIterator);

  return v0;
}

uint64_t sub_1C4D296C0()
{
  sub_1C4D29664();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VirtualInteractionEnumerator(uint64_t a1)
{
  result = qword_1EDDF20C8;
  if (!qword_1EDDF20C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4D2976C(uint64_t a1)
{
  result = sub_1C4EF97E8();
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

uint64_t sub_1C4D29818@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4D28574();
  *a1 = result;
  return result;
}

uint64_t sub_1C4D298FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4D295BC();
  *a1 = result;
  return result;
}

id sub_1C4D29970(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = sub_1C4F01108();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithKey:v5 ascending:a3 & 1];

  return v6;
}

uint64_t sub_1C4D299DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4D29A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BA788, &qword_1C4F6DE10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4D29A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BA788, &qword_1C4F6DE10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4D29B04(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

BOOL sub_1C4D29B64(uint64_t a1, uint64_t a2)
{
  v36[0] = a1;
  v39 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = (8 * v5);
  v7 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v4 > 0xD)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v36[4] = v36;
    MEMORY[0x1EEE9AC00](v7);
    v6 = v36 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    v37 = v5;
    sub_1C4501018(0, v5, v6);
    v38 = 0;
    v8 = 0;
    sub_1C43FD030();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    v36[2] = 0x80000001C4F85600;
    v36[3] = 0x80000001C4F86760;
    v36[1] = 0x80000001C4F86740;
    while (v11)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v5 = v14 | (v8 << 6);
      switch(*(*(a2 + 48) + 24 * v5 + 16))
      {
        case 1:
          sub_1C43FD8FC();
          goto LABEL_14;
        case 2:
          sub_1C4408D0C();
          goto LABEL_14;
        case 3:
        case 6:
          sub_1C4405CE0();
          goto LABEL_14;
        case 4:

          goto LABEL_15;
        default:
LABEL_14:
          v18 = sub_1C4F02938();

          if (v18)
          {
LABEL_15:
            *&v6[(v5 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v5;
            if (__OFADD__(v38++, 1))
            {
              __break(1u);
            }
          }

          return result;
      }
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
        sub_1C4A8DF38(v6, v37, v38, a2);
        v21 = v20;
        goto LABEL_20;
      }

      ++v15;
      if (*(a2 + 56 + 8 * v8))
      {
        sub_1C43FCF1C();
        v11 = v17 & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_37:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v35 = swift_slowAlloc();

  v21 = sub_1C4D2C7B8(v35, v5, a2, sub_1C4D2C150);
  swift_bridgeObjectRelease_n();
  MEMORY[0x1C6942830](v35, -1, -1);
LABEL_20:
  if (*(v21 + 2))
  {
    sub_1C4F02AF8();
    MEMORY[0x1C69417F0](4);
    sub_1C441BEB8();
    sub_1C4F01298();
    v22 = sub_1C4F02B68();
    v23 = -1 << v21[32];
    v24 = v22 & ~v23;
    if ((*&v21[((v24 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v24))
    {
      v38 = 0;
      v25 = ~v23;
      do
      {
        v26 = *(v21 + 6) + 24 * v24;
        if (*(v26 + 16) == 4)
        {
          if ((*v26 & 1) == 0)
          {

            goto LABEL_31;
          }

          v27 = sub_1C4F02938();

          if (v27)
          {
            goto LABEL_30;
          }
        }

        v24 = (v24 + 1) & v25;
      }

      while (((*&v21[((v24 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v24) & 1) != 0);
    }

    return 0;
  }

LABEL_30:

LABEL_31:
  sub_1C4D51718();
  sub_1C4839234(v36[0], v28);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
    return 0;
  }

  sub_1C4AA8A50(a2);
  v32 = sub_1C4597BBC(v31);
  if (qword_1EDDF4E28 != -1)
  {
    swift_once();
  }

  v33 = *(sub_1C4A7C718(qword_1EDDF4E30, v32) + 16);

  return v33 == 0;
}

uint64_t sub_1C4D2A0D0(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = v4;
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v6 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0BA0C8, &unk_1C4F6E090);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  type metadata accessor for VirtualInteractionEnumerator(0);
  v21 = *(v14 + 16);
  sub_1C441BEB8();
  v21();
  (v21)(v17, v26, v12);
  v22 = *(v5 + *(type metadata accessor for GraphBasedVirtualInteractionStreamProvider(0) + 20));
  v23 = sub_1C4EFCE48();
  sub_1C43FBCE0();
  (*(v24 + 16))(v11, v5, v23);
  sub_1C440BAA8(v11, 0, 1, v23);
  sub_1C4D2CD80(v22 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config, v8, type metadata accessor for Configuration);

  return sub_1C4D28B94(v20, v17, v27, v22, v11, v28, 1, v8);
}

uint64_t sub_1C4D2A32C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  result = sub_1C4D2A0D0(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_1C4D2A354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v46 = a6;
  v42 = a2;
  v47 = a4;
  v39 = a1;
  v7 = *(a5 + 16);
  v8 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C4F02268();
  sub_1C43FCDF8();
  v44 = v12;
  v45 = v11;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v35 - v14;
  sub_1C4572308(&unk_1EC0BA420, &qword_1C4F13E78);
  sub_1C4F02408();
  sub_1C440FF14();
  sub_1C4F02508();
  v15 = type metadata accessor for InteractionEvent(255);
  swift_getWitnessTable();
  v40 = v15;
  v16 = sub_1C4F02408();
  sub_1C43FCDF8();
  v38 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBFDC();
  v36 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  v37 = *(AssociatedTypeWitness - 8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v35 - v24;
  v26 = v47;
  if (sub_1C4D29B64(a3, v47))
  {
    (*(v8 + 24))(v39, v42, 0, 0, v41, v8);
    v27 = v43;
    MEMORY[0x1C6940210](AssociatedTypeWitness, AssociatedConformanceWitness);
    v28 = swift_allocObject();
    *(v28 + 16) = a3;
    *(v28 + 24) = v26;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v29 = v45;
    swift_getWitnessTable();
    sub_1C4F025A8();

    (*(v44 + 8))(v27, v29);
    v30 = v38;
    (*(v38 + 16))(v36, v22, v16);
    sub_1C440FF14();
    sub_1C441BEB8();
    v31 = sub_1C4F021B8();
    (*(v30 + 8))(v22, v16);
    result = (*(v37 + 8))(v25, AssociatedTypeWitness);
    v33 = v46;
    *v46 = sub_1C4D2CD58;
    v33[1] = v31;
  }

  else
  {
    sub_1C463DFA8();
    swift_allocError();
    *v34 = a3;
    *(v34 + 8) = v26;
    *(v34 + 16) = 0;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C4D2A7A4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1C4EF9CD8();
  sub_1C440BAA8(v5, 1, 1, v6);
  v7 = sub_1C4D2A8A4();
  result = sub_1C4420C3C(v5, &unk_1EC0B84E0, qword_1C4F0D2D0);
  *a2 = v7;
  return result;
}

uint64_t sub_1C4D2A8A4()
{
  sub_1C441516C();
  v291 = v0;
  v3 = v2;
  v296 = *MEMORY[0x1E69E9840];
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v282 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v7);
  v270 = &v269 - v8;
  sub_1C456902C(&qword_1EC0BDBF8, &unk_1C4F6DE80);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v276 = &v269 - v10;
  v293 = type metadata accessor for VirtualInteractionContact(0);
  sub_1C43FCDF8();
  v285 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  v292 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  v290 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v274 = &v269 - v18;
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v288 = v20;
  v289 = v19;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  v287 = &v269 - v23;
  v24 = *(v3 + 32);
  v25 = v24 & 0x3F;
  v26 = ((1 << v24) + 63) >> 6;
  v27 = 8 * v26;
  v28 = swift_bridgeObjectRetain_n();
  v29 = "communicationDirection";
  v30 = "communicationMechanism";
  v31 = "lookaheadDuration";
  v294 = v3;
  if (v25 > 0xD)
  {
    goto LABEL_202;
  }

LABEL_2:
  v283 = &v269;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FF170();
  v34 = v32 - v33;
  v284 = v26;
  sub_1C4501018(0, v26, v32 - v33);
  v286 = 0;
  v35 = 0;
  v36 = v3 + 56;
  sub_1C43FD030();
  v39 = v38 & v37;
  v41 = v40 + 63;
  v42 = v31;
  v31 = v41 >> 6;
  v281 = (v29 - 32) | 0x8000000000000000;
  v280 = ((v30 - 32) | 0x8000000000000000);
  v279 = ((v42 - 32) | 0x8000000000000000);
  do
  {
LABEL_3:
    if (v39)
    {
      sub_1C442377C();
      goto LABEL_10;
    }

    v44 = v35;
    do
    {
      v35 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:

        sub_1C440DB84();
LABEL_132:
        v152 = type metadata accessor for VirtualInteraction(0);
        v153 = v276;
        sub_1C445FFF0(&v291[v152[9]], v276, &qword_1EC0BDBF8, &unk_1C4F6DE80);
        v154 = sub_1C44157D4(v153, 1, v27);
        v286 = v152;
        if (v154 == 1)
        {
          sub_1C4420C3C(v153, &qword_1EC0BDBF8, &unk_1C4F6DE80);
        }

        else
        {
          v168 = v153;
          v169 = v274;
          sub_1C481B660(v168, v274, v155);
          v171 = *(v169 + *(v27 + 32));
          if (v171 != 2 && (v171 & 1) == 0)
          {
            v222 = v169;
            sub_1C456902C(&qword_1EC0B8E98, &unk_1C4F0E8F0);
            v223 = v27;
            v224 = (*(v39 + 80) + 32) & ~*(v39 + 80);
            v173 = swift_allocObject();
            *(v173 + 16) = xmmword_1C4F0D130;
            sub_1C445FFF0(v222 + *(v223 + 28), v173 + v224, &unk_1EC0BA0E0, &qword_1C4F105A0);
            sub_1C4D2C848(v222, v225);
            goto LABEL_184;
          }

          sub_1C4D2C848(v169, v170);
        }

        v30 = *&v291[v152[10]];
        if (*&v291[v152[8]] != 1)
        {
          v29 = 0;
          v26 = *(v30 + 16);
          v3 = MEMORY[0x1E69E7CC0];
          v294 = MEMORY[0x1E69E7CC0];
          while (v26 != v29)
          {
            if (v29 >= *(v30 + 16))
            {
              goto LABEL_201;
            }

            sub_1C44062CC();
            v189 = v188 & ~v187;
            v31 = *(v190 + 72);
            sub_1C442096C();
            v191 = v292;
            sub_1C4D2CD80(v192, v292, v193);
            v195 = *(v191 + *(v27 + 32));
            if (v195 == 2 || (v195 & 1) == 0)
            {
              sub_1C481B660(v292, v277, v194);
              v196 = v294;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v295 = v196;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1C459D608();
                sub_1C440DB84();
                v196 = v295;
              }

              v200 = *(v196 + 16);
              v199 = *(v196 + 24);
              v201 = v196;
              if (v200 >= v199 >> 1)
              {
                sub_1C4403B28(v199);
                sub_1C459D608();
                sub_1C440DB84();
                v201 = v295;
              }

              ++v29;
              *(v201 + 16) = v200 + 1;
              v294 = v201;
              sub_1C481B660(v277, v201 + v189 + v200 * v31, v198);
              v27 = v293;
            }

            else
            {
              sub_1C4D2C848(v292, v194);
              ++v29;
            }
          }

          v202 = v294;
          v203 = *(v294 + 16);
          if (v203)
          {
            sub_1C441E8B4();
            sub_1C440DB84();
            v204 = v295;
            sub_1C44062CC();
            v207 = v202 + (v206 & ~v205);
            v209 = *(v208 + 72);
            v210 = v269;
            do
            {
              sub_1C442096C();
              v211 = v290;
              sub_1C4D2CD80(v207, v290, v212);
              sub_1C445FFF0(v211 + *(v27 + 28), v210, &unk_1EC0BA0E0, &qword_1C4F105A0);
              sub_1C4D2C848(v211, v213);
              v295 = v204;
              v215 = *(v204 + 16);
              v214 = *(v204 + 24);
              if (v215 >= v214 >> 1)
              {
                sub_1C4403B28(v214);
                sub_1C459D660();
                sub_1C440DB84();
                v204 = v295;
              }

              sub_1C4430424();
              sub_1C44DDDBC(v210, v216 + v217 * v215);
              v207 += v209;
              --v203;
              v27 = v293;
            }

            while (v203);
          }

          else
          {

            v204 = MEMORY[0x1E69E7CC0];
          }

          v218 = *(v204 + 16);
          v219 = v275;
          if (v218 < 2)
          {
            goto LABEL_185;
          }

          goto LABEL_182;
        }

        v172 = *(v30 + 16);
        v173 = MEMORY[0x1E69E7CC0];
        if (v172)
        {
          sub_1C441E8B4();
          sub_1C440DB84();
          v173 = v295;
          sub_1C44062CC();
          v176 = v30 + (v175 & ~v174);
          v178 = *(v177 + 72);
          v179 = v270;
          do
          {
            sub_1C442096C();
            v180 = v290;
            sub_1C4D2CD80(v176, v290, v181);
            sub_1C445FFF0(v180 + *(v27 + 28), v179, &unk_1EC0BA0E0, &qword_1C4F105A0);
            sub_1C4D2C848(v180, v182);
            v295 = v173;
            v184 = *(v173 + 16);
            v183 = *(v173 + 24);
            if (v184 >= v183 >> 1)
            {
              sub_1C4403B28(v183);
              sub_1C459D660();
              sub_1C440DB84();
              v173 = v295;
            }

            sub_1C4430424();
            sub_1C44DDDBC(v179, v185 + v186 * v184);
            v176 += v178;
            --v172;
            v27 = v293;
          }

          while (v172);
        }

LABEL_184:
        v218 = *(v173 + 16);
        v219 = v275;
        if (v218 <= 1)
        {
LABEL_185:
          if (v218)
          {
            sub_1C441BEB8();
            sub_1C445FFF0(v226, v227, v228, &qword_1C4F105A0);
            v229 = v271;
            sub_1C445FFF0(v219, v271, &unk_1EC0BA0E0, &qword_1C4F105A0);
            v230 = sub_1C4EFF0C8();
            if (sub_1C44157D4(v229, 1, v230) == 1)
            {
              sub_1C4420C3C(v219, &unk_1EC0BA0E0, &qword_1C4F105A0);
              sub_1C4420C3C(v229, &unk_1EC0BA0E0, &qword_1C4F105A0);
              v231 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v232 = v229;
              v39 = sub_1C4EFF048();
              v30 = v233;
              sub_1C4420C3C(v219, &unk_1EC0BA0E0, &qword_1C4F105A0);
              (*(*(v230 - 8) + 8))(v232, v230);
              v231 = MEMORY[0x1E69E7CC0];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
LABEL_218:
                sub_1C443D664();
                v231 = v266;
              }

              v234 = *(v231 + 16);
              if (v234 >= *(v231 + 24) >> 1)
              {
                sub_1C443D664();
                v231 = v267;
              }

              *(v231 + 16) = v234 + 1;
              v235 = v231 + 16 * v234;
              *(v235 + 32) = v39;
              *(v235 + 40) = v30;
            }
          }

          else
          {

            v231 = MEMORY[0x1E69E7CC0];
          }

          v237 = v287;
          v236 = v288;
          v238 = v273;
          v239 = v289;
          v272(v273, v287, v289);
          v295 = v231;
          sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          sub_1C443D694();
          v240 = sub_1C4F01048();
          v242 = v241;

          sub_1C456902C(&qword_1EC0B8ED8, &qword_1C4F4CE40);
          v243 = swift_allocObject();
          *(v243 + 16) = xmmword_1C4F0CE60;
          v244 = v286;
          v245 = v291;
          v246 = &v291[v286[7]];
          v247 = *(v246 + 1);
          *(v243 + 32) = *v246;
          *(v243 + 40) = v247;
          *(v243 + 48) = 0;
          *(v243 + 56) = *&v245[*(v244 + 24)];
          *(v243 + 64) = 0;
          *(v243 + 72) = 3;
          v248 = *(v236 + 8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v248(v237, v239);
          type metadata accessor for InteractionEvent(0);
          swift_allocObject();
          return sub_1C4950CDC(v238, 3, v240, v242, v243);
        }

LABEL_182:
        v220 = sub_1C442C128();
        v221(v220);

        return 0;
      }

      if (v35 >= v31)
      {
        v3 = v294;
        sub_1C4A8DF38(v34, v284, v286, v294);
        v30 = v49;
        v31 = "lookaheadDuration";
        while (1)
        {
          if (*(v30 + 16) == 1)
          {
            sub_1C440C11C();
            MEMORY[0x1C69417F0](2);
            sub_1C4F01298();
            sub_1C4F02B68();
            sub_1C442E718();
            v52 = v51 & ~v50;
            if ((*(v30 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
            {
              v29 = ~v50;
              while (1)
              {
                v53 = *(v30 + 48) + 24 * v52;
                if (*(v53 + 16) == 2)
                {
                  if ((*v53 & 1) == 0)
                  {

                    goto LABEL_34;
                  }

                  v54 = sub_1C4F02938();

                  if (v54)
                  {
                    break;
                  }
                }

                v52 = (v52 + 1) & v29;
                if (((*(v30 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
                {
                  goto LABEL_30;
                }
              }

LABEL_34:
              v55 = v291;
            }

            else
            {
LABEL_30:

              v55 = &v291[*(type metadata accessor for VirtualInteraction(0) + 20)];
            }

            v56 = v288;
            v27 = v289;
            v57 = v278;
            v272 = *(v288 + 16);
            v272(v278, v55, v289);
            (*(v56 + 32))(v287, v57, v27);
            v3 = v294;
          }

          else
          {

            v272 = *(v288 + 16);
            v272(v287, v291, v289);
          }

          v58 = "communicationMechanism";
          sub_1C4413CF8();
          sub_1C4415DB8(v59);
          if (!v93 & v68)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            if (!sub_1C4409D60())
            {
              sub_1C4408BA4();
              swift_slowAlloc();
              sub_1C4450124();
              v254 = sub_1C4426FD0();
              sub_1C440EA54(v254, v286, v255, v256);
              sub_1C441516C();
              if (v1)
              {
                goto LABEL_219;
              }

              sub_1C443562C();
              v257 = sub_1C4408BA4();
              MEMORY[0x1C6942830](v257);
              goto LABEL_59;
            }
          }

          sub_1C444014C(v60, v61, v62, v63, v64, v65, v66, v67, v269);
          MEMORY[0x1EEE9AC00](v69);
          sub_1C43FF170();
          sub_1C4404914(v70);
          v284 = 0;
          v71 = 0;
          v72 = v3 + 56;
          sub_1C43FD030();
          v39 = v74 & v73;
          v76 = (v75 + 63) >> 6;
          v58 = 0x80000001C4F85600;
          v280 = ((v31 - 32) | 0x8000000000000000);
          v279 = "lookaheadDuration";
          while (2)
          {
            if (!v39)
            {
              v77 = v71;
              v31 = "lookaheadDuration";
              while (1)
              {
                v71 = v77 + 1;
                if (__OFADD__(v77, 1))
                {
                  goto LABEL_196;
                }

                if (v71 >= v76)
                {
                  goto LABEL_58;
                }

                ++v77;
                if (*(v72 + 8 * v71))
                {
                  sub_1C43FCF1C();
                  v39 = v79 & v78;
                  goto LABEL_45;
                }
              }
            }

            sub_1C442377C();
LABEL_45:
            sub_1C441CFD8();
            v27 = 0xE800000000000000;
            v80 = "entityIdentifier";
            v81 = 0x4449656C646E7562;
            switch(v82)
            {
              case 1:
                v81 = sub_1C43FD8FC();
                v27 = v280;
                goto LABEL_52;
              case 2:
                v27 = 0xEC000000746E6576;
                v81 = sub_1C4408D0C();
                goto LABEL_52;
              case 3:
                goto LABEL_51;
              case 4:
                v81 = sub_1C44081F4();
                goto LABEL_52;
              case 5:
                v81 = sub_1C442D95C();
                goto LABEL_52;
              case 6:
                v80 = v279;
LABEL_51:
                v27 = v80 | 0x8000000000000000;
                v81 = sub_1C4405CE0();
                if (0x80000001C4F85600 != v27)
                {
                  goto LABEL_52;
                }

                goto LABEL_55;
              default:
LABEL_52:
                v29 = sub_1C440A2D8(v81);

                if ((v29 & 1) == 0)
                {
                  continue;
                }

LABEL_55:
                sub_1C4417B28();
                v284 = v83;
                if (!v48)
                {
                  continue;
                }

                __break(1u);
                break;
            }

            break;
          }

LABEL_58:
          v84 = sub_1C4410740();
          v3 = v294;
          sub_1C4A8DF38(v84, v85, v86, v294);
          sub_1C44255C0();
LABEL_59:
          if (*(v58 + 2))
          {
            v87 = *&v291[*(type metadata accessor for VirtualInteraction(0) + 24)];
            sub_1C440C11C();
            MEMORY[0x1C69417F0](3);
            MEMORY[0x1C69417F0](v87);
            v88 = sub_1C4F02B68();
            v89 = -1 << v58[32];
            v90 = v88 & ~v89;
            if (((*&v58[((v90 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v90) & 1) == 0)
            {
LABEL_67:
              swift_bridgeObjectRelease_n();
              goto LABEL_68;
            }

            v91 = ~v89;
            while (1)
            {
              v92 = *(v58 + 6) + 24 * v90;
              v93 = *(v92 + 16) == 3 && *v92 == v87;
              if (v93)
              {
                break;
              }

              v90 = (v90 + 1) & v91;
              if (((*&v58[((v90 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v90) & 1) == 0)
              {
                goto LABEL_67;
              }
            }
          }

          sub_1C4413CF8();
          v39 = v95 >> 6;
          v27 = 8 * (v95 >> 6);
          v30 = "communicationMechanism";
          if (v96 > 0xD)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            if (!sub_1C4409D60())
            {
              sub_1C4408BA4();
              swift_slowAlloc();
              sub_1C4450124();
              v258 = sub_1C4426FD0();
              sub_1C440EA54(v258, v39, v259, v260);
              sub_1C441516C();
              if (v1)
              {
                goto LABEL_219;
              }

              sub_1C443562C();
              v261 = sub_1C4408BA4();
              MEMORY[0x1C6942830](v261);
LABEL_91:
              if (*(v30 + 16))
              {
                v111 = &v291[*(type metadata accessor for VirtualInteraction(0) + 28)];
                v112 = *v111;
                v31 = v111[1];
                sub_1C440C11C();
                MEMORY[0x1C69417F0](0);
                sub_1C4F01298();
                sub_1C4F02B68();
                sub_1C442E718();
                v39 = v114 & ~v113;
                if (((*(v30 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
                {
LABEL_101:

                  goto LABEL_102;
                }

                v115 = ~v113;
                v116 = *(v30 + 48);
                while (1)
                {
                  v117 = v116 + 24 * v39;
                  if (!*(v117 + 16))
                  {
                    v118 = *v117 == v112 && *(v117 + 8) == v31;
                    if (v118 || (sub_1C4F02938() & 1) != 0)
                    {
                      break;
                    }
                  }

                  v39 = (v39 + 1) & v115;
                  if (((*(v30 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
                  {
                    goto LABEL_101;
                  }
                }

                v3 = v294;
              }

              sub_1C4413CF8();
              sub_1C4415DB8(v122);
              v29 = "lookaheadDuration";
              v30 = "communicationDirection";
              if (!v93 & v68)
              {
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                if (!sub_1C4409D60())
                {
                  goto LABEL_216;
                }
              }

              sub_1C444014C(v123, v124, v125, v126, v127, v128, v129, v130, v269);
              MEMORY[0x1EEE9AC00](v131);
              sub_1C43FF170();
              sub_1C4404914(v132);
              v284 = 0;
              v26 = 0;
              v3 += 56;
              sub_1C43FD030();
              v39 = v134 & v133;
              v136 = (v135 + 63) >> 6;
              v280 = "lookaheadDuration";
              v30 = 0x80000001C4F86760;
              v279 = 0x80000001C4F86740;
              v27 = v293;
              while (2)
              {
                if (v39)
                {
                  sub_1C442377C();
LABEL_114:
                  sub_1C441CFD8();
                  v140 = "entityIdentifier";
                  v141 = 0x4449656C646E7562;
                  switch(v142)
                  {
                    case 1:
                      v141 = sub_1C43FD8FC();
                      goto LABEL_121;
                    case 2:
                      v141 = sub_1C4408D0C();
                      goto LABEL_121;
                    case 3:
                      goto LABEL_120;
                    case 4:
                      v141 = sub_1C44081F4();
                      goto LABEL_121;
                    case 5:
                      v141 = sub_1C442D95C();
                      goto LABEL_121;
                    case 6:
                      v140 = v280;
LABEL_120:
                      v143 = v140 | 0x8000000000000000;
                      v141 = sub_1C4405CE0();
                      if (0x80000001C4F86760 != v143)
                      {
                        goto LABEL_121;
                      }

                      v27 = v293;
                      goto LABEL_124;
                    default:
LABEL_121:
                      v29 = sub_1C440A2D8(v141);

                      v27 = v293;
                      if ((v29 & 1) == 0)
                      {
                        continue;
                      }

LABEL_124:
                      sub_1C4417B28();
                      v284 = v144;
                      if (!v48)
                      {
                        continue;
                      }

                      __break(1u);
                      break;
                  }

LABEL_127:
                  v145 = sub_1C4410740();
                  sub_1C4A8DF38(v145, v146, v147, v294);
                  sub_1C44255C0();
                  goto LABEL_128;
                }

                break;
              }

              v137 = v26;
              v39 = v282;
              while (1)
              {
                v26 = v137 + 1;
                if (__OFADD__(v137, 1))
                {
                  goto LABEL_200;
                }

                if (v26 >= v136)
                {
                  goto LABEL_127;
                }

                ++v137;
                if (*(v3 + 8 * v26))
                {
                  sub_1C43FCF1C();
                  v39 = v139 & v138;
                  goto LABEL_114;
                }
              }
            }
          }

          v284 = &v269;
          MEMORY[0x1EEE9AC00](v94);
          sub_1C43FF170();
          v99 = v97 - v98;
          sub_1C4501018(0, v39, v97 - v98);
          v286 = 0;
          v100 = 0;
          v3 += 56;
          sub_1C43FD030();
          v101 = v31;
          v31 = v103 & v102;
          v26 = (v104 + 63) >> 6;
          v283 = 0x80000001C4F86760;
          v281 = 0x80000001C4F85600;
          v280 = ((v101 - 32) | 0x8000000000000000);
          while (2)
          {
            if (v31)
            {
              v105 = __clz(__rbit64(v31));
              v31 &= v31 - 1;
LABEL_78:
              v29 = v105 | (v100 << 6);
              v27 = 0xEC000000746E6576;
              switch(*(*(v294 + 48) + 24 * v29 + 16))
              {
                case 1:
                  sub_1C43FD8FC();
                  v27 = v280;
                  goto LABEL_85;
                case 2:
                  goto LABEL_85;
                case 3:
                  v109 = &v298;
                  goto LABEL_83;
                case 4:
                  sub_1C44081F4();
                  goto LABEL_85;
                case 5:
                  sub_1C442D95C();
                  goto LABEL_85;
                case 6:
                  v109 = &v299;
LABEL_83:
                  v27 = *(v109 - 32);
                  sub_1C4405CE0();
LABEL_85:
                  v30 = sub_1C4F02938();

                  if (v30)
                  {
                    goto LABEL_86;
                  }

                  continue;
                default:

LABEL_86:
                  sub_1C43FCBC4((v29 >> 3) & 0x1FFFFFFFFFFFFFF8);
                  if (!v48)
                  {
                    continue;
                  }

                  __break(1u);
                  break;
              }

              goto LABEL_218;
            }

            break;
          }

          v106 = v100;
          while (1)
          {
            v100 = v106 + 1;
            if (__OFADD__(v106, 1))
            {
              break;
            }

            if (v100 >= v26)
            {
              v3 = v294;
              sub_1C4A8DF38(v99, v39, v286, v294);
              v30 = v110;
              goto LABEL_91;
            }

            ++v106;
            if (*(v3 + 8 * v100))
            {
              sub_1C43FCF1C();
              v31 = v108 & v107;
              goto LABEL_78;
            }
          }

          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (sub_1C4409D60())
          {

            goto LABEL_2;
          }

          sub_1C4408BA4();
          swift_slowAlloc();
          sub_1C4450124();
          v249 = sub_1C4426FD0();
          sub_1C440EA54(v249, v26, v250, v251);
          sub_1C441516C();
          if (v1)
          {
            goto LABEL_219;
          }

          sub_1C443562C();
          v253 = sub_1C4408BA4();
          MEMORY[0x1C6942830](v253);
        }
      }

      ++v44;
    }

    while (!*(v36 + 8 * v35));
    sub_1C43FCF1C();
    v39 = v46 & v45;
LABEL_10:
    v30 = v43 | (v35 << 6);
    v27 = 0xE800000000000000;
    switch(*(*(v294 + 48) + 24 * v30 + 16))
    {
      case 1:
        sub_1C43FD8FC();
        v27 = v279;
        break;
      case 2:

        goto LABEL_18;
      case 3:
        v47 = &v297;
        goto LABEL_15;
      case 4:
        sub_1C44081F4();
        break;
      case 5:
        sub_1C442D95C();
        break;
      case 6:
        v47 = &v298;
LABEL_15:
        v27 = *(v47 - 32);
        sub_1C4405CE0();
        break;
      default:
        break;
    }

    v29 = sub_1C4F02938();
  }

  while ((v29 & 1) == 0);
LABEL_18:
  sub_1C43FCBC4((v30 >> 3) & 0x1FFFFFFFFFFFFFF8);
  if (!v48)
  {
    goto LABEL_3;
  }

  __break(1u);
LABEL_216:
  sub_1C4408BA4();
  swift_slowAlloc();
  sub_1C4450124();
  v262 = sub_1C4426FD0();
  sub_1C440EA54(v262, v286, v263, v264);
  sub_1C441516C();
  if (v1)
  {
LABEL_219:

    swift_bridgeObjectRelease_n();
    v268 = sub_1C4408BA4();
    result = MEMORY[0x1C6942830](v268);
    __break(1u);
  }

  else
  {
    sub_1C443562C();
    v265 = sub_1C4408BA4();
    MEMORY[0x1C6942830](v265);
    sub_1C440DB84();
    v27 = v293;
LABEL_128:
    if (!*(v30 + 16))
    {

      goto LABEL_132;
    }

    v148 = type metadata accessor for VirtualInteraction(0);
    v149 = sub_1C494E0DC(*&v291[*(v148 + 32)]);
    if (v149 == 4)
    {
      v150 = sub_1C442C128();
      v151(v150);

      return 0;
    }

    if (*(v30 + 16))
    {
      v156 = v149;
      sub_1C440C11C();
      MEMORY[0x1C69417F0](6);
      sub_1C468B054();
      sub_1C4F02B68();
      sub_1C442E718();
      v159 = v158 & ~v157;
      if ((*(v30 + 56 + ((v159 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v159))
      {
        v160 = ~v157;
        v31 = 0x676E696D6F636E69;
        v161 = 24;
        while (1)
        {
          v162 = (*(v30 + 48) + v159 * v161);
          if (v162[16] >= 6u)
          {
            v39 = 0xE800000000000000;
            v163 = 0x676E696D6F636E69;
            switch(*v162)
            {
              case 1:
                v163 = 0x676E696F6774756FLL;
                break;
              case 2:
                v163 = 0x7463657269646962;
                v39 = 0xED00006C616E6F69;
                break;
              case 3:
                v163 = 0x656E696665646E75;
                v39 = 0xE900000000000064;
                break;
              default:
                break;
            }

            v164 = 0xE800000000000000;
            v165 = 0x676E696D6F636E69;
            v27 = v293;
            switch(v156)
            {
              case 1:
                v165 = 0x676E696F6774756FLL;
                break;
              case 2:
                v165 = 0x7463657269646962;
                v164 = 0xED00006C616E6F69;
                break;
              case 3:
                v165 = 0x656E696665646E75;
                v164 = 0xE900000000000064;
                break;
              default:
                break;
            }

            if (v163 == v165 && v39 == v164)
            {
              goto LABEL_197;
            }

            v167 = sub_1C4F02938();

            sub_1C440DB84();
            if (v167)
            {
              break;
            }
          }

          v159 = (v159 + 1) & v160;
          if (((*(v30 + 56 + ((v159 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v159) & 1) == 0)
          {
            goto LABEL_68;
          }
        }

        v27 = v293;
        goto LABEL_132;
      }
    }

LABEL_68:

LABEL_102:
    v119 = sub_1C442C128();
    v120(v119);
    return 0;
  }

  return result;
}

uint64_t sub_1C4D2C150(uint64_t a1)
{
  v1 = 1;
  switch(*(a1 + 16))
  {
    case 4:
      break;
    default:
      v1 = sub_1C4F02938();
      break;
  }

  return v1 & 1;
}

uint64_t sub_1C4D2C284(uint64_t a1)
{
  v1 = 1;
  switch(*(a1 + 16))
  {
    case 2:
      break;
    default:
      v1 = sub_1C4F02938();
      break;
  }

  return v1 & 1;
}

uint64_t sub_1C4D2C3B8(uint64_t a1)
{
  v1 = "entityIdentifier";
  switch(*(a1 + 16))
  {
    case 3:
      goto LABEL_4;
    case 6:
      v1 = "lookaheadDuration";
LABEL_4:
      if (0x80000001C4F85600 != (v1 | 0x8000000000000000))
      {
        goto LABEL_2;
      }

      result = 1;
      break;
    default:
LABEL_2:
      v2 = sub_1C4F02938();

      result = v2 & 1;
      break;
  }

  return result;
}

uint64_t sub_1C4D2C50C(uint64_t a1)
{
  v1 = 1;
  switch(*(a1 + 16))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      v1 = sub_1C4F02938();
      break;
    default:
      break;
  }

  return v1 & 1;
}

uint64_t sub_1C4D2C644(uint64_t a1)
{
  v1 = "entityIdentifier";
  switch(*(a1 + 16))
  {
    case 3:
      goto LABEL_4;
    case 6:
      v1 = "lookaheadDuration";
LABEL_4:
      if (0x80000001C4F86760 != (v1 | 0x8000000000000000))
      {
        goto LABEL_2;
      }

      result = 1;
      break;
    default:
LABEL_2:
      v2 = sub_1C4F02938();

      result = v2 & 1;
      break;
  }

  return result;
}

void *sub_1C4D2C7B8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
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

    sub_1C4A8D368(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1C4D2C848(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for VirtualInteractionContact(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C4D2C8A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_1C44157D4(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_1C44157D4(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C4D2C9E0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C440BAA8(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t type metadata accessor for GraphBasedVirtualInteractionStreamProvider(uint64_t a1)
{
  result = qword_1EDDF0EB8;
  if (!qword_1EDDF0EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4D2CC70(uint64_t a1)
{
  result = sub_1C4EFCE48();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for GraphStore(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C4D2CCF8()
{
  result = qword_1EDDF20E0;
  if (!qword_1EDDF20E0)
  {
    type metadata accessor for VirtualInteractionEnumerator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF20E0);
  }

  return result;
}

uint64_t sub_1C4D2CD80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4D2CDE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24IntelligencePlatformCore38VirtualInteractionDistributionProvider_hashGenerator;
  type metadata accessor for HashGenerator();
  swift_allocObject();
  *(v1 + v3) = sub_1C4886F04();
  sub_1C4D2F76C(a1, v1 + OBJC_IVAR____TtC24IntelligencePlatformCore38VirtualInteractionDistributionProvider_config, type metadata accessor for Configuration);
  return v1;
}

void sub_1C4D2CE60()
{
  sub_1C43FEC28();
  v96 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FCBE0(v11, v95[0]);
  v12 = sub_1C456902C(&qword_1EC0BDBF8, &unk_1C4F6DE80);
  sub_1C43FBD18(v12);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v95 - v14;
  v16 = type metadata accessor for VirtualInteractionContact(0);
  sub_1C43FCDF8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBD08();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C4425958();
  v24 = type metadata accessor for VirtualInteraction(0);
  v25 = *(v8 + v24[8]);
  if (v25 != 1)
  {
    if (v25)
    {
LABEL_42:
      sub_1C44086C4();
      return;
    }

    sub_1C445FFF0(v8 + v24[9], v15, &qword_1EC0BDBF8, &unk_1C4F6DE80);
    if (sub_1C44157D4(v15, 1, v16) == 1)
    {
      sub_1C4420C3C(v15, &qword_1EC0BDBF8, &unk_1C4F6DE80);
      goto LABEL_42;
    }

    sub_1C4417B58();
    sub_1C4D2F76C(v15, v1, v40);
    v41 = *(v1 + 16);
    v42 = *(v1 + 24);
    v43 = sub_1C4EF9CD8();
    sub_1C43FBCE0();
    v45 = v97;
    (*(v44 + 16))(v97, v96, v43);
    sub_1C43FBD94();
    sub_1C440BAA8(v46, v47, v48, v43);
    v49 = sub_1C4886564(v41, v42, v45);
    v51 = v50;
    sub_1C4420C3C(v45, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (v51)
    {
      v52 = v49;
    }

    else
    {
      v52 = 0;
    }

    if (v51)
    {
      v53 = v51;
    }

    else
    {
      v53 = 0xE000000000000000;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v99 = *v6;
    sub_1C445FAA8(v52, v53);
    sub_1C43FC438();
    if (!__OFADD__(v56, v57))
    {
      v58 = v54;
      v59 = v55;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C441CFF4();
      v60 = sub_1C4F02458();
      v61 = v99;
      if ((v60 & 1) == 0)
      {
LABEL_23:
        *v6 = v61;
        if (v59)
        {
        }

        else
        {
          sub_1C457DBD8(v58, v52, v53, v61);
        }

        *(*(v61 + 56) + 8 * v58) = *(*(v61 + 56) + 8 * v58) + 1.0;
        sub_1C441AA90();
        sub_1C4D2F7CC(v1, v93);
        goto LABEL_42;
      }

      v62 = sub_1C445FAA8(v52, v53);
      if ((v59 & 1) == (v63 & 1))
      {
        v58 = v62;
        goto LABEL_23;
      }

      goto LABEL_50;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  v98 = v4;
  v26 = *(v8 + v24[10]);
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = v26 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v29 = *(v18 + 72);
    v30 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C4403B40();
      sub_1C4D2F70C(v28, v22, v31);
      v32 = *(v22 + 16);
      v33 = *(v22 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C441AA90();
      sub_1C4D2F7CC(v22, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C443D664();
        v30 = v38;
      }

      v35 = v30[2];
      v36 = v35 + 1;
      if (v35 >= v30[3] >> 1)
      {
        sub_1C443D664();
        v36 = v35 + 1;
        v30 = v39;
      }

      v30[2] = v36;
      v37 = &v30[2 * v35];
      v37[4] = v32;
      v37[5] = v33;
      v28 += v29;
      --v27;
    }

    while (v27);
LABEL_26:
    v64 = 0;
    v65 = 0;
    v66 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore38VirtualInteractionDistributionProvider_hashGenerator);
    v95[0] = v36;
    v95[1] = v66;
    v67 = v30 + 5;
    while (v65 < v30[2])
    {
      v68 = *(v67 - 1);
      v69 = *v67;
      v70 = sub_1C4EF9CD8();
      sub_1C43FBCE0();
      v72 = v97;
      (*(v71 + 16))(v97, v96, v70);
      sub_1C43FBD94();
      sub_1C440BAA8(v73, v74, v75, v70);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v76 = sub_1C4886564(v68, v69, v72);
      v78 = v77;

      sub_1C4420C3C(v72, &unk_1EC0B84E0, qword_1C4F0D2D0);
      sub_1C44239FC(v64, 0);
      if (!v78)
      {
        v76 = 0;
        v78 = 0xE000000000000000;
      }

      v79 = v98;
      swift_isUniquelyReferenced_nonNull_native();
      v99 = *v79;
      sub_1C445FAA8(v76, v78);
      sub_1C43FC438();
      if (__OFADD__(v82, v83))
      {
        goto LABEL_47;
      }

      v84 = v80;
      v85 = v81;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C441CFF4();
      v86 = sub_1C4F02458();
      v87 = v99;
      if (v86)
      {
        v88 = sub_1C445FAA8(v76, v78);
        if ((v85 & 1) != (v89 & 1))
        {
          goto LABEL_50;
        }

        v84 = v88;
      }

      *v98 = v87;
      if (v85)
      {
      }

      else
      {
        sub_1C440EA74();
        *v90 = v76;
        v90[1] = v78;
        sub_1C4430440();
        if (v92)
        {
          goto LABEL_48;
        }

        *(v87 + 16) = v91;
      }

      ++v65;
      *(*(v87 + 56) + 8 * v84) = *(*(v87 + 56) + 8 * v84) + 1.0;
      v67 += 2;
      v64 = sub_1C457EB40;
      if (v95[0] == v65)
      {

        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v30 = MEMORY[0x1E69E7CC0];
  v36 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v36)
  {
    goto LABEL_26;
  }

  sub_1C44086C4();
}