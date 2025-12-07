uint64_t sub_1C49E7010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v64 = a3;
  v65 = a2;
  v5 = sub_1C4F00978();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = (&v63 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v63 - v11;
  v12 = sub_1C4EFA4D8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v63 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v71 = &v63 - v21;
  v22 = sub_1C456902C(&qword_1EC0C0EA0, &qword_1C4F412C8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v63 - v26;
  sub_1C445FFF0(a1, &v63 - v26, &qword_1EC0C0EA0, &qword_1C4F412C8);
  if (sub_1C44157D4(v27, 1, v12) != 1)
  {
    v32 = v71;
    (*(v13 + 32))(v71, v27, v12);
    (*(v13 + 104))(v19, *MEMORY[0x1E69BDB80], v12);
    v33 = sub_1C4EFA4C8();
    v34 = *(v13 + 8);
    (v34)(v19, v12);
    if (v33)
    {
      v35 = v65;
      swift_beginAccess();
      *(v35 + 16) = 1;
      v36 = v69;
      sub_1C4F00168();
      v37 = *(v13 + 16);
      v38 = v66;
      v37(v66, v32, v12);
      v39 = sub_1C4F00968();
      v40 = sub_1C4F01CD8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v41 = 134218242;
        *(v41 + 4) = v64;
        *(v41 + 12) = 2112;
        sub_1C49EA068(&qword_1EDDF01E0, MEMORY[0x1E69BDB88], MEMORY[0x1E69BDB98]);
        swift_allocError();
        v37(v42, v38, v12);
        v43 = _swift_stdlib_bridgeErrorToNSError();
        (v34)(v38, v12);
        *(v41 + 14) = v43;
        v44 = v70;
        *v70 = v43;
        _os_log_impl(&dword_1C43F8000, v39, v40, "LiveGlobalKnowledge IDSearch timed out at %ldms: %@", v41, 0x16u);
        sub_1C4420C3C(v44, &qword_1EC0BDA00, &qword_1C4F10D30);
        MEMORY[0x1C6942830](v44, -1, -1);
        MEMORY[0x1C6942830](v41, -1, -1);

        (*(v72 + 8))(v69, v73);
      }

      else
      {

        (v34)(v38, v12);
        (*(v72 + 8))(v36, v73);
      }
    }

    else
    {
      v69 = v34;
      v66 = sub_1C49EA068(&qword_1EDDF01E0, MEMORY[0x1E69BDB88], MEMORY[0x1E69BDB98]);
      v46 = sub_1C4F02A38();
      v48 = v47;
      sub_1C49E47AC();
      v49 = swift_allocError();
      *v50 = v46;
      *(v50 + 8) = v48;
      *(v50 + 16) = 4;
      v51 = v67;
      swift_beginAccess();
      v52 = *(v51 + 16);
      *(v51 + 16) = v49;

      v53 = v70;
      sub_1C4F00168();
      v54 = *(v13 + 16);
      v55 = v68;
      v54(v68, v32, v12);
      v56 = sub_1C4F00968();
      v57 = sub_1C4F01CD8();
      if (!os_log_type_enabled(v56, v57))
      {

        v62 = v69;
        (v69)(v55, v12);
        (*(v72 + 8))(v53, v73);
        return (v62)(v32, v12);
      }

      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      swift_allocError();
      v54(v60, v55, v12);
      v61 = _swift_stdlib_bridgeErrorToNSError();
      v34 = v69;
      (v69)(v55, v12);
      *(v58 + 4) = v61;
      *v59 = v61;
      _os_log_impl(&dword_1C43F8000, v56, v57, "LiveGlobalKnowledge IDSearch error: %@", v58, 0xCu);
      sub_1C4420C3C(v59, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v59, -1, -1);
      MEMORY[0x1C6942830](v58, -1, -1);

      (*(v72 + 8))(v70, v73);
    }

    return (v34)(v71, v12);
  }

  sub_1C4F00168();
  sub_1C445FFF0(a1, v24, &qword_1EC0C0EA0, &qword_1C4F412C8);
  v28 = sub_1C4F00968();
  v29 = sub_1C4F01CC8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    sub_1C49EA068(&qword_1EC0C0EA8, MEMORY[0x1E69BDB88], MEMORY[0x1E69BDB90]);
    v31 = sub_1C4F00B48();
    sub_1C4420C3C(v24, &qword_1EC0C0EA0, &qword_1C4F412C8);
    *(v30 + 4) = v31;
    _os_log_impl(&dword_1C43F8000, v28, v29, "LiveGlobalKnowledge IDSearch completed: %ld", v30, 0xCu);
    MEMORY[0x1C6942830](v30, -1, -1);
  }

  else
  {
    sub_1C4420C3C(v24, &qword_1EC0C0EA0, &qword_1C4F412C8);
  }

  return (*(v72 + 8))(v7, v73);
}

uint64_t sub_1C49E7888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v4 = sub_1C4F00978();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFA4D8();
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v38 - v9;
  v10 = sub_1C4EFA418();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&qword_1EC0C0E98, &qword_1C4F412C0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = swift_projectBox();
  sub_1C445FFF0(a1, v16, &qword_1EC0C0E98, &qword_1C4F412C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v39;
    v19 = v43;
    (*(v39 + 32))(v43, v16, v6);
    sub_1C49EA068(&qword_1EDDF01E0, MEMORY[0x1E69BDB88], MEMORY[0x1E69BDB98]);
    v20 = sub_1C4F02A38();
    v22 = v21;
    sub_1C49E47AC();
    v23 = swift_allocError();
    *v24 = v20;
    *(v24 + 8) = v22;
    *(v24 + 16) = 4;
    v25 = v38;
    swift_beginAccess();
    v26 = *(v25 + 16);
    *(v25 + 16) = v23;

    sub_1C4F00168();
    v27 = *(v18 + 16);
    v27(v42, v19, v6);
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CD8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      swift_allocError();
      v32 = v42;
      v27(v33, v42, v6);
      v34 = _swift_stdlib_bridgeErrorToNSError();
      v35 = *(v18 + 8);
      v35(v32, v6);
      *(v30 + 4) = v34;
      *v31 = v34;
      _os_log_impl(&dword_1C43F8000, v28, v29, "LiveGlobalKnowledge IDSearch error: %@", v30, 0xCu);
      sub_1C4420C3C(v31, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v31, -1, -1);
      MEMORY[0x1C6942830](v30, -1, -1);

      (*(v40 + 8))(v44, v41);
      return (v35)(v43, v6);
    }

    else
    {

      v37 = *(v18 + 8);
      v37(v42, v6);
      (*(v40 + 8))(v44, v41);
      return (v37)(v43, v6);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v16, v10);
    swift_beginAccess();
    return (*(v11 + 40))(v17, v13, v10);
  }
}

uint64_t sub_1C49E7DC4()
{
  v0 = sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v29 - v1;
  v3 = sub_1C4EFF388();
  v4 = v3;
  v5 = v3 + 64;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (v8)
  {
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v10 << 6);
    v15 = *(v4 + 48);
    v16 = sub_1C4EFF428();
    (*(*(v16 - 8) + 16))(v2, v15 + *(*(v16 - 8) + 72) * v14, v16);
    v17 = *(*(v4 + 56) + 8 * v14);
    *&v2[*(v0 + 48)] = v17;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v18 = sub_1C49E80B4(v2, v17);
    v20 = v19;
    sub_1C4420C3C(v2, &qword_1EC0BF730, &unk_1C4F3A680);
    if (v20)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C443D664();
        v11 = v24;
      }

      v21 = *(v11 + 16);
      v22 = v21 + 1;
      if (v21 >= *(v11 + 24) >> 1)
      {
        v30 = v21 + 1;
        v25 = v21;
        sub_1C443D664();
        v21 = v25;
        v22 = v30;
        v11 = v26;
      }

      *(v11 + 16) = v22;
      v23 = v11 + 16 * v21;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      v31 = v11;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44ECB2C(&v31);

      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6310]);
      v27 = sub_1C4F01048();

      return v27;
    }

    v8 = *(v5 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C49E80B4(uint64_t a1, uint64_t a2)
{
  v29 = sub_1C4EFEEF8();
  v3 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1C4EFF408();
  v33 = v5;
  MEMORY[0x1C6940010](8250, 0xE200000000000000);
  v6 = a2 + 56;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 56);
  v10 = (v7 + 63) >> 6;
  v27[1] = v3 + 8;
  v27[2] = v3 + 16;
  v30 = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    goto LABEL_8;
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

      v31 = v12;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44ECB2C(&v31);

      v23 = MEMORY[0x1C6940380](v31, MEMORY[0x1E69E6158]);
      v25 = v24;

      MEMORY[0x1C6940010](v23, v25);

      return v32;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      do
      {
LABEL_8:
        v14 = v29;
        v15 = v28;
        (*(v3 + 16))(v28, *(v30 + 48) + *(v3 + 72) * (__clz(__rbit64(v9)) | (v11 << 6)), v29);
        v16 = sub_1C4EFEB68();
        v18 = v17;
        (*(v3 + 8))(v15, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C443D664();
          v12 = v21;
        }

        v19 = *(v12 + 16);
        if (v19 >= *(v12 + 24) >> 1)
        {
          sub_1C443D664();
          v12 = v22;
        }

        v9 &= v9 - 1;
        *(v12 + 16) = v19 + 1;
        v20 = v12 + 16 * v19;
        *(v20 + 32) = v16;
        *(v20 + 40) = v18;
      }

      while (v9);
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C49E836C(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  while (v3 != v2)
  {
    v5 = (type metadata accessor for LiveGlobalKnowledgeTriple(0) - 8);
    v6 = a1 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80)) + *(*v5 + 72) * v2;
    v17 = sub_1C4EFF048();
    v18 = v7;
    MEMORY[0x1C6940010](32, 0xE100000000000000);
    v8 = sub_1C4EFEB68();
    MEMORY[0x1C6940010](v8);

    MEMORY[0x1C6940010](32, 0xE100000000000000);
    MEMORY[0x1C6940010](*(v6 + v5[10]), *(v6 + v5[10] + 8));
    v9 = v17;
    v10 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C443D664();
      v4 = v13;
    }

    v11 = *(v4 + 16);
    if (v11 >= *(v4 + 24) >> 1)
    {
      sub_1C443D664();
      v4 = v14;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v9;
    *(v12 + 40) = v10;
    ++v2;
  }

  v17 = v4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44ECB2C(&v17);

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6310]);
  v15 = sub_1C4F01048();

  return v15;
}

void (*LiveGlobalKnowledgeApi.idSearch(request:timeoutMs:)(uint64_t a1, uint64_t a2))(uint64_t, uint64_t, uint64_t)
{
  v62 = a2;
  v3 = sub_1C4EFA418();
  sub_1C43FCDF8();
  v66 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  v65 = v6;
  v7 = sub_1C456902C(&qword_1EC0C0E38, &qword_1C4F41118);
  v8 = sub_1C43FBD18(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v63 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v68 = v58 - v12;
  sub_1C43FBE44();
  v13 = sub_1C4EFF3B8();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v67 = sub_1C4F00978();
  sub_1C43FCDF8();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBD08();
  v58[1] = v23 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v58 - v26;
  sub_1C4F00168();
  v28 = *(v15 + 16);
  v61 = a1;
  v28(v19, a1, v13);
  v29 = sub_1C4F00968();
  v30 = sub_1C4F01CC8();
  v31 = os_log_type_enabled(v29, v30);
  v60 = v21;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v59 = v3;
    v33 = v32;
    v34 = swift_slowAlloc();
    v69 = v34;
    *v33 = 136642819;
    v58[0] = sub_1C49E7DC4();
    v36 = v35;
    (*(v15 + 8))(v19, v13);
    v37 = sub_1C441D828(v58[0], v36, &v69);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_1C43F8000, v29, v30, "LiveGlobalKnowledgeApi idSearch query: \n%{sensitive}s", v33, 0xCu);
    sub_1C440962C(v34);
    sub_1C43FBE2C();
    v3 = v59;
    sub_1C43FBE2C();

    v38 = v60;
  }

  else
  {

    (*(v15 + 8))(v19, v13);
    v38 = v21;
  }

  v39 = *(v38 + 8);
  v39(v27, v67);
  v40 = v64;
  LiveGlobalKnowledgeApi.callPegasusProxy(request:timeoutMs:)(v68, v61, v62);
  v42 = v65;
  v41 = v66;
  v43 = v63;
  if (!v40)
  {
    sub_1C445FFF0(v68, v63, &qword_1EC0C0E38, &qword_1C4F41118);
    if (sub_1C44157D4(v43, 1, v3) == 1)
    {
      sub_1C4420C3C(v43, &qword_1EC0C0E38, &qword_1C4F41118);
      sub_1C49E47AC();
      swift_allocError();
      *v44 = 0xD000000000000022;
      *(v44 + 8) = 0x80000001C4FAC240;
      *(v44 + 16) = 4;
      swift_willThrow();
      sub_1C4420C3C(v68, &qword_1EC0C0E38, &qword_1C4F41118);
    }

    else
    {
      v46.n128_f64[0] = (*(v41 + 32))(v42, v43, v3);
      v43 = sub_1C49E8B68(v42, v46);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F00168();
      v47 = sub_1C4F00968();
      v48 = sub_1C4F01CC8();
      v59 = v3;
      v49 = v48;

      v64 = v47;
      if (os_log_type_enabled(v47, v49))
      {
        v50 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v69 = v63;
        *v50 = 136642819;
        v51 = sub_1C49E836C(v43);
        v53 = sub_1C441D828(v51, v52, &v69);

        *(v50 + 4) = v53;
        v54 = v49;
        v55 = v64;
        _os_log_impl(&dword_1C43F8000, v64, v54, "LiveGlobalKnowledgeApi idSearch triples: \n%{sensitive}s", v50, 0xCu);
        sub_1C440962C(v63);
        sub_1C43FBE2C();
        sub_1C43FBE2C();

        v56 = sub_1C4417514();
        (v39)(v56);
        (*(v66 + 8))(v65, v59);
      }

      else
      {

        v57 = sub_1C4417514();
        (v39)(v57);
        (*(v41 + 8))(v42, v59);
      }

      sub_1C4420C3C(v68, &qword_1EC0C0E38, &qword_1C4F41118);
    }
  }

  return v43;
}

void (*sub_1C49E8B68(uint64_t a1, __n128 a2))(uint64_t, uint64_t, uint64_t)
{
  v58 = sub_1C4EFA308();
  sub_1C43FCDF8();
  v61 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FD2D8();
  v66 = v5;
  sub_1C43FBE44();
  v60 = sub_1C4EFA148();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2D8();
  v59 = v9;
  sub_1C43FBE44();
  v65 = sub_1C4EFA488();
  sub_1C43FCDF8();
  v62 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD2D8();
  v64 = v12;
  sub_1C43FBE44();
  v13 = sub_1C4EFA238();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBD08();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v48 - v21;
  v48[0] = a1;
  v23 = sub_1C4EFA3F8();
  v24 = 0;
  v69[0] = MEMORY[0x1E69E7CC8];
  v25 = *(v23 + 16);
  v67 = v15 + 16;
  v26 = (v15 + 8);
  while (v25 != v24)
  {
    if (v24 >= *(v23 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);

      (*v26)(v22, v13);

      __break(1u);
LABEL_29:
      result = sub_1C4F029F8();
      __break(1u);
      return result;
    }

    (*(v15 + 16))(v22, v23 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v24, v13);
    sub_1C49E91C0(v69, v22);
    ++v24;
    (*v26)(v22, v13);
  }

  v63 = v69[0];
  v27 = sub_1C4EFA3E8();
  v57 = *(v27 + 16);
  if (v57)
  {
    v28 = 0;
    v56 = v27 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v54 = (v7 + 8);
    v55 = v62 + 16;
    v48[2] = v61 + 32;
    v53 = (v62 + 8);
    v29 = MEMORY[0x1E69E7CC8];
    v48[1] = v61 + 40;
    v51 = v19;
    v52 = v13;
    v50 = (v15 + 8);
    v49 = v27;
    while (v28 < *(v27 + 16))
    {
      v13 = v64;
      (*(v62 + 16))(v64, v56 + *(v62 + 72) * v28, v65);
      v30 = v59;
      sub_1C4EFA468();
      v26 = sub_1C4EFA118();
      v22 = v31;
      (*v54)(v30, v60);
      sub_1C4EFA478();
      swift_isUniquelyReferenced_nonNull_native();
      v69[0] = v29;
      v32 = sub_1C445FAA8(v26, v22);
      if (__OFADD__(*(v29 + 16), (v33 & 1) == 0))
      {
        goto LABEL_27;
      }

      v34 = v32;
      v13 = v33;
      sub_1C456902C(&qword_1EC0C0E40, &qword_1C4F41280);
      if (sub_1C4F02458())
      {
        v35 = sub_1C445FAA8(v26, v22);
        if ((v13 & 1) != (v36 & 1))
        {
          goto LABEL_29;
        }

        v34 = v35;
      }

      if (v13)
      {

        v29 = v69[0];
        v37 = sub_1C4408D84();
        (*(v38 + 40))(v37, v66, v58);
        (*v53)(v64, v65);
      }

      else
      {
        v29 = v69[0];
        *(v69[0] + (v34 >> 6) + 8) |= 1 << v34;
        v39 = (*(v29 + 48) + 16 * v34);
        *v39 = v26;
        v39[1] = v22;
        v40 = sub_1C4408D84();
        (*(v41 + 32))(v40, v66, v58);
        (*v53)(v64, v65);
        v42 = *(v29 + 16);
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_28;
        }

        *(v29 + 16) = v44;
      }

      ++v28;
      v19 = v51;
      v13 = v52;
      v26 = v50;
      v27 = v49;
      if (v57 == v28)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_26;
  }

  v29 = MEMORY[0x1E69E7CC8];
LABEL_19:

  v45 = sub_1C4EFA3F8();
  v46 = 0;
  v69[0] = MEMORY[0x1E69E7CC0];
  v22 = *(v45 + 16);
  while (v22 != v46)
  {
    if (v46 >= *(v45 + 16))
    {
      goto LABEL_25;
    }

    (*(v15 + 16))(v19, v45 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v46, v13);
    sub_1C49E98D0(v19, v29, v63, &v68);
    ++v46;
    (*v26)(v19, v13);
    sub_1C49D3B70(v68);
  }

  return v69[0];
}

uint64_t sub_1C49E91C0(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v3 = sub_1C4F00978();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4F00DD8();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4F00DC8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_1C4F01188();
  v55 = *(v12 - 8);
  v56 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C4EFA148();
  v57 = *(v15 - 8);
  v58 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C4EFA328();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C4EFD548();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v49 - v26;
  v59 = a2;
  sub_1C4EFA068();
  v28 = v63;
  EntityClass.init(globalKGEntityType:)(v20);
  if (v28)
  {
    v29 = v60;
    sub_1C4F00168();
    v30 = v28;
    v31 = sub_1C4F00968();
    v32 = sub_1C4F01CD8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = v28;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_1C43F8000, v31, v32, "LiveGlobalKnowledgeApi.convertApiResponse: error while generating MD_ID %@", v33, 0xCu);
      sub_1C4420C3C(v34, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v34, -1, -1);
      MEMORY[0x1C6942830](v33, -1, -1);
    }

    else
    {
    }

    return (*(v61 + 8))(v29, v62);
  }

  else
  {
    v61 = v22;
    v62 = v27;
    v60 = v24;
    v63 = v21;
    v49 = v11;
    sub_1C4EFA218();
    sub_1C4EFA118();
    v37 = v58;
    v38 = *(v57 + 8);
    v38(v17, v58);
    sub_1C4F01178();
    v39 = sub_1C4F01148();
    v41 = v40;

    (*(v55 + 8))(v14, v56);
    if (v41 >> 60 == 15)
    {
      return (*(v61 + 8))(v62, v63);
    }

    else
    {
      sub_1C4EFA218();
      v59 = sub_1C4EFA118();
      v57 = v43;
      v38(v17, v37);
      v44 = v61;
      (*(v61 + 16))(v60, v62, v63);
      sub_1C49EA068(&qword_1EDDFEAD0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      v45 = v50;
      v46 = v53;
      sub_1C4F00DB8();
      sub_1C44344B8(v39, v41);
      sub_1C4498FD8(v39, v41, v45);
      sub_1C441DFEC(v39, v41);
      sub_1C4F00DA8();
      (*(v52 + 8))(v45, v46);
      v47 = v49;
      sub_1C4EFF028();
      v48 = sub_1C4EFF0C8();
      sub_1C440BAA8(v47, 0, 1, v48);
      sub_1C4C80730();
      sub_1C441DFEC(v39, v41);
      return (*(v44 + 8))(v62, v63);
    }
  }
}

uint64_t sub_1C49E98D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v54 = a3;
  v51 = a2;
  v59 = a4;
  v5 = sub_1C4F00978();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&qword_1EC0C0E48, &qword_1C4F41288);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v48 - v8;
  v10 = sub_1C4EFA148();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C4EFA308();
  v52 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C4EFA238();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v22;
  v56 = v21;
  (*(v22 + 16))(v20, a1, v18);
  sub_1C4EFA218();
  v23 = sub_1C4EFA118();
  v25 = v24;
  (*(v11 + 8))(v13, v10);
  sub_1C465C94C(v23, v25, v51);

  if (sub_1C44157D4(v9, 1, v14) == 1)
  {
    sub_1C4420C3C(v9, &qword_1EC0C0E48, &qword_1C4F41288);
    v26 = v57;
    v27 = v53;
  }

  else
  {
    (*(v52 + 32))(v16, v9, v14);
    v28 = sub_1C4EFA1F8();
    v29 = MEMORY[0x1EEE9AC00](v28);
    *(&v48 - 2) = v16;
    v30 = v53;
    v31 = sub_1C4A6D408(sub_1C49EA02C, v29, (&v48 - 4), v28);
    v27 = v30;

    if (v31)
    {
      v32 = sub_1C4EFA1E8();
      v34 = v33;
      sub_1C45894E4();
      v35 = *(*v34 + 16);
      sub_1C458A074();
      v36 = *v34;
      *(v36 + 16) = v35 + 1;
      v37 = v52;
      (*(v52 + 16))(v36 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v35, v16, v14);
      v32(v58, 0);
      (*(v37 + 8))(v16, v14);
    }

    else
    {
      (*(v52 + 8))(v16, v14);
    }

    v26 = v57;
  }

  v38 = sub_1C49EAAA4(v54);
  if (v27)
  {
    sub_1C4F00168();
    v39 = v27;
    v40 = sub_1C4F00968();
    v41 = sub_1C4F01CD8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      v44 = v27;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v45;
      *v43 = v45;
      _os_log_impl(&dword_1C43F8000, v40, v41, "LiveGlobalKnowledgeApi.convertApiResponse: error while generating graph triples %@", v42, 0xCu);
      sub_1C4420C3C(v43, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v43, -1, -1);
      MEMORY[0x1C6942830](v42, -1, -1);
    }

    (*(v49 + 8))(v26, v50);
    v46 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v46 = v38;
  }

  result = (*(v55 + 8))(v20, v56);
  *v59 = v46;
  return result;
}

BOOL sub_1C49E9E98(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_1C4EFA308();
  sub_1C49EA068(&qword_1EC0C0E50, MEMORY[0x1E69BCF30], MEMORY[0x1E69BCF38]);
  return (sub_1C4F010B8() & 1) == 0;
}

_BYTE *storeEnumTagSinglePayload for LiveGlobalKnowledgeApi(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C49EA068(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C49EA0B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BF728, &qword_1C4F412D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C49EA120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  sub_1C4EFF428();
  sub_1C43FCDF8();
  v100 = v5;
  v101 = v4;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v6);
  sub_1C4F00978();
  sub_1C43FCDF8();
  v85 = v8;
  v86 = v7;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  v87 = v9;
  sub_1C43FBE44();
  v83 = sub_1C4EFA278();
  sub_1C43FCDF8();
  v82 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  sub_1C43FD2C8(v13);
  sub_1C4EFA188();
  sub_1C43FCDF8();
  v90 = v15;
  v91 = v14;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  v88 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  v89 = v18;
  sub_1C43FBE44();
  sub_1C4EFA1C8();
  sub_1C43FCDF8();
  v94 = v20;
  v95 = v19;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBFDC();
  v92 = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD230();
  v93 = v23;
  sub_1C43FBE44();
  sub_1C4EFA378();
  sub_1C43FCDF8();
  v98 = v25;
  v99 = v24;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBFDC();
  v96 = v26;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FD230();
  v97 = v28;
  sub_1C43FBE44();
  v29 = sub_1C4EFA148();
  sub_1C43FCDF8();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v81 - v36;
  v38 = sub_1C4EFF448();
  sub_1C43FCDF8();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FC4B0();
  sub_1C4EFA308();
  sub_1C43FCDF8();
  v102 = v44;
  v103 = v43;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBCC4();
  v47 = v46 - v45;
  sub_1C4EFA2F8();
  sub_1C4EFF418();
  v81[4] = v40;
  v48 = (*(v40 + 88))(v2, v38);
  if (v48 == *MEMORY[0x1E69A98C8])
  {
    sub_1C4EFA138();
    sub_1C4EFF408();
    sub_1C4EFA128();
    (*(v31 + 16))(v34, v37, v29);
    sub_1C4EFA288();
    (*(v100 + 8))(a1, v101);
LABEL_3:
    (*(v31 + 8))(v37, v29);
LABEL_9:
    v54 = v103;
    v55 = v104;
    (*(v102 + 32))(v104, v47, v103);
    v56 = 0;
    return sub_1C440BAA8(v55, v56, 1, v54);
  }

  v50 = v100;
  v49 = v101;
  if (v48 == *MEMORY[0x1E69A98C0])
  {
    v51 = v97;
    sub_1C4EFA368();
    sub_1C4EFF408();
    sub_1C4EFA128();
    v53 = v98;
    v52 = v99;
    (v98[2])(v96, v51, v99);
    sub_1C4404568();
    sub_1C4EFA2D8();
LABEL_8:
    (*(v50 + 8))(a1, v49);
    (v53[1])(v51, v52);
    goto LABEL_9;
  }

  if (v48 == *MEMORY[0x1E69A98D8])
  {
    v51 = v93;
    sub_1C4EFA1B8();
    sub_1C4EFF408();
    sub_1C4EFA128();
    v53 = v94;
    v52 = v95;
    (*(v94 + 16))(v92, v51, v95);
    sub_1C4404568();
    sub_1C4EFA2A8();
    goto LABEL_8;
  }

  v58 = v101;
  v59 = v100;
  if (v48 == *MEMORY[0x1E69A98D0])
  {
    v60 = v89;
    sub_1C4EFA178();
    sub_1C4EFF408();
    sub_1C4EFA128();
    v62 = v90;
    v61 = v91;
    (*(v90 + 16))(v88, v60, v91);
    sub_1C4404568();
    sub_1C4EFA298();
    (*(v59 + 8))(a1, v58);
    (*(v62 + 8))(v60, v61);
    goto LABEL_9;
  }

  v63 = a1;
  if (v48 == *MEMORY[0x1E69A98E0])
  {
    v37 = v81[3];
    sub_1C4EFA268();
    sub_1C4EFF408();
    sub_1C4EFA128();
    v31 = v82;
    v29 = v83;
    (*(v82 + 16))(v81[2], v37, v83);
    sub_1C4404568();
    sub_1C4EFA2B8();
    (*(v59 + 8))(a1, v58);
    goto LABEL_3;
  }

  v64 = v87;
  sub_1C4F00168();
  v65 = v84;
  (*(v59 + 16))(v84, a1, v49);
  v66 = sub_1C4F00968();
  v54 = sub_1C4F01CD8();
  if (os_log_type_enabled(v66, v54))
  {
    v67 = swift_slowAlloc();
    v99 = v63;
    v68 = v67;
    v69 = swift_slowAlloc();
    LODWORD(v97) = v54;
    v98 = v69;
    v105 = v69;
    *v68 = 136315138;
    sub_1C4EFF418();
    v81[0] = v38;
    v70 = sub_1C4F01198();
    v72 = v71;
    v73 = *(v59 + 8);
    v74 = sub_1C43FD168();
    v73(v74);
    v75 = sub_1C441D828(v70, v72, &v105);

    *(v68 + 4) = v75;
    _os_log_impl(&dword_1C43F8000, v66, v97, "got unknown ExternalIdentifier from PegasusApi: %s", v68, 0xCu);
    v54 = v98;
    sub_1C440962C(v98);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    (v73)(v99, v58);
    (*(v85 + 8))(v87, v86);
  }

  else
  {

    v78 = *(v59 + 8);
    v78(v63, v58);
    v78(v65, v58);
    (*(v85 + 8))(v64, v86);
  }

  v76 = sub_1C4405EB8();
  v77(v76);
  v55 = v104;
  v79 = sub_1C43FDB44();
  v80(v79);
  v56 = 1;
  return sub_1C440BAA8(v55, v56, 1, v54);
}

uint64_t sub_1C49EAAA4(void (*a1)(uint64_t, uint64_t, uint64_t))
{
  v210 = a1;
  v211 = sub_1C4F00978();
  sub_1C43FCDF8();
  v181 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v197 = v6;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD230();
  v209 = v8;
  sub_1C43FBE44();
  v180 = sub_1C4EFF448();
  sub_1C43FCDF8();
  v178 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v11);
  v190 = sub_1C4EFF428();
  sub_1C43FCDF8();
  v183 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  v201 = v15;
  sub_1C43FBE44();
  v203 = sub_1C4EFA308();
  sub_1C43FCDF8();
  v208 = v16;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD2D8();
  v202 = v18;
  v19 = sub_1C43FBE44();
  type metadata accessor for LiveGlobalKnowledgeTriple(v19);
  sub_1C43FCDF8();
  v204 = v20;
  v205 = v21;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FC4B0();
  v200 = sub_1C4EFA4A8();
  sub_1C43FCDF8();
  v207 = v23;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FD2D8();
  v199 = v25;
  sub_1C43FBE44();
  v188 = sub_1C4F002F8();
  sub_1C43FCDF8();
  v184 = v26;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v28);
  v193 = sub_1C4EFA108();
  sub_1C43FCDF8();
  *&v206 = v29;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v31);
  v32 = sub_1C4EFA328();
  v33 = sub_1C43FBD18(v32);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD2D8();
  v213 = v34;
  sub_1C43FBE44();
  v176 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v175 = v35;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD2D8();
  v185 = v37;
  v38 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v39 = sub_1C43FBD18(v38);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FECFC();
  v40 = sub_1C4EFA148();
  sub_1C43FCDF8();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  v46 = v169 - v45;
  v47 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v186 = v48;
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FD2D8();
  v51 = v50;
  v214 = MEMORY[0x1E69E7CC0];
  v191 = v1;
  sub_1C4EFA218();
  v52 = sub_1C4EFA118();
  v54 = v53;
  v55 = *(v42 + 8);
  v56 = v46;
  v57 = v47;
  v174 = v40;
  v173 = v42 + 8;
  v171 = v55;
  v55(v56, v40);
  sub_1C465C294(v52, v54, v210);

  if (sub_1C44157D4(v3, 1, v47) == 1)
  {
    sub_1C4423A0C(v3, &unk_1EC0BA0E0, &qword_1C4F105A0);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v59 = v186;
    sub_1C44333BC();
    v60 = v51;
    v61(v51, v3, v47);
    v62 = v213;
    sub_1C4EFA068();
    v63 = v194;
    EntityClass.init(globalKGEntityType:)(v62);
    v64 = v63;
    if (v63)
    {
      return (*(v59 + 8))(v60, v57);
    }

    else
    {
      v213 = v60;
      v65 = *(sub_1C4EFA078() + 16);
      v198 = v57;
      if (v65)
      {
        v212 = 0;
        v196 = *(v206 + 16);
        sub_1C43FC354();
        v169[1] = v66;
        v68 = v66 + v67;
        v195 = *(v69 + 56);
        sub_1C4405EAC();
        v189 = v70;
        *&v206 = v71;
        v194 = (v71 - 8);
        sub_1C4405EAC();
        v184 = v72;
        *&v74 = *(v73 + 1168);
        v182 = v74;
        v75 = v197;
        v76 = v193;
        v77 = v192;
        do
        {
          v78 = v75;
          v196(v77, v68, v76);
          v80 = v76;
          v79 = sub_1C49EBB04(v210, v213);
          sub_1C49D3B70(v79);
          v81 = v187;
          sub_1C4EFA058();
          v82 = sub_1C4F002E8();
          (*v184)(v81, v188);
          (*v194)(v77, v80);
          v83 = v212;
          if (v82 > v212)
          {
            v83 = v82;
          }

          v212 = v83;
          v76 = v80;
          v75 = v78;
          v68 += v195;
          --v65;
        }

        while (v65);

        v64 = 0;
      }

      else
      {

        v212 = 0;
        v75 = v197;
      }

      v84 = *(sub_1C4EFA208() + 16);
      if (v84)
      {
        v194 = v64;
        v85 = v214;
        v210 = *(v207 + 16);
        sub_1C43FC354();
        v193 = v86;
        v88 = v86 + v87;
        v209 = *(v89 + 56);
        v207 = v89;
        v195 = (v89 - 8);
        v196 = (v186 + 16);
        v192 = (v186 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        do
        {
          v90 = v199;
          v91 = v200;
          v210(v199, v88, v200);
          *&v206 = *v196;
          (v206)(v2, v213, v198);
          v92 = v204;
          sub_1C4EFEBF8();
          v93 = sub_1C4EFA0B8();
          v95 = v94;
          (*v195)(v90, v91);
          sub_1C4EFF888();
          sub_1C4EFEC38();
          v96 = (v2 + v92[8]);
          *v96 = v93;
          v96[1] = v95;
          *(v2 + v92[9]) = v212;
          *(v2 + v92[10]) = 0;
          *(v2 + v92[11]) = MEMORY[0x1E69E7CC0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_1C43FCEC0();
            sub_1C458BB48(v101, v102, v103, v85);
            v85 = v104;
          }

          v98 = *(v85 + 16);
          v97 = *(v85 + 24);
          if (v98 >= v97 >> 1)
          {
            v105 = sub_1C43FFD98(v97);
            sub_1C458BB48(v105, v106, v107, v85);
            v85 = v108;
          }

          *(v85 + 16) = v98 + 1;
          sub_1C43FC354();
          sub_1C49ED99C(v2, v85 + v99 + *(v100 + 72) * v98);
          v88 += v209;
          --v84;
        }

        while (v84);

        v214 = v85;
        v64 = v194;
        v75 = v197;
        v109 = v206;
      }

      else
      {

        v109 = *(v186 + 16);
      }

      v110 = v170;
      v111 = v198;
      v109(v170, v213, v198);
      v112 = v204;
      sub_1C4EFEBB8();
      v113 = sub_1C4EFD2F8();
      v115 = v114;
      sub_1C4EFF888();
      sub_1C4EFEC38();
      v116 = (v110 + v112[8]);
      *v116 = v113;
      v116[1] = v115;
      *(v110 + v112[9]) = v212;
      *(v110 + v112[10]) = 0;
      *(v110 + v112[11]) = MEMORY[0x1E69E7CC0];
      v117 = v214;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v164 = sub_1C43FCEC0();
        sub_1C458BB48(v164, v165, v166, v117);
        v117 = v167;
      }

      v119 = *(v117 + 16);
      v118 = *(v117 + 24);
      if (v119 >= v118 >> 1)
      {
        sub_1C458BB48(v118 > 1, v119 + 1, 1, v117);
        v117 = v168;
      }

      *(v117 + 16) = v119 + 1;
      sub_1C43FC354();
      sub_1C49ED99C(v110, v117 + v120 + *(v121 + 72) * v119);
      v214 = v117;
      v122 = *(sub_1C4EFA1F8() + 16);
      if (v122)
      {
        v123 = v64;
        sub_1C43FC354();
        v204 = v124;
        v126 = v124 + v125;
        v209 = *(v127 + 56);
        v210 = v128;
        v208 = v127;
        sub_1C4405EAC();
        v205 = v129;
        sub_1C4405EAC();
        v207 = v130;
        *&v131 = 138412290;
        v206 = v131;
        v132 = v202;
        v133 = v203;
        do
        {
          v210(v132, v126, v133);
          v134 = v201;
          sub_1C49EC7EC(v201);
          v135 = v123;
          if (v123)
          {
            v136 = sub_1C43FD168();
            v137(v136);
            v123 = 0;
            sub_1C4F00168();
            v140 = v135;
            v141 = sub_1C4F00968();
            v142 = sub_1C4F01CD8();

            if (os_log_type_enabled(v141, v142))
            {
              v143 = swift_slowAlloc();
              v144 = swift_slowAlloc();
              *v143 = v206;
              v145 = v135;
              v146 = _swift_stdlib_bridgeErrorToNSError();
              *(v143 + 4) = v146;
              *v144 = v146;
              _os_log_impl(&dword_1C43F8000, v141, v142, "Apple_Parsec_Kg_V1alpha_Entity.toGraphTriples: error while converting alternateId %@", v143, 0xCu);
              sub_1C4423A0C(v144, &qword_1EC0BDA00, &qword_1C4F10D30);
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
              v75 = v197;
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
            }

            (*v207)(v75, v211);
          }

          else
          {
            v138 = sub_1C43FD168();
            v139(v138);
            v147 = sub_1C49ECECC(v134, v213, v212);
            v123 = 0;
            v148 = sub_1C440D628();
            v149(v148);
            sub_1C49D3B70(v147);
          }

          v126 += v209;
          --v122;
          v132 = v202;
          v133 = v203;
        }

        while (v122);

        v64 = 0;
        v111 = v198;
      }

      else
      {
      }

      v150 = v172;
      sub_1C4EFA218();
      sub_1C4EFA118();
      v171(v150, v174);
      (*(v178 + 104))(v177, *MEMORY[0x1E69A98C8], v180);
      v151 = v179;
      sub_1C43FD168();
      sub_1C4EFF3E8();
      v152 = v213;
      v153 = sub_1C49ECECC(v151, v213, v212);
      v154 = (v186 + 8);
      if (v64)
      {
        v155 = sub_1C43FDB44();
        v156(v155, v190);
        v157 = sub_1C44351F0();
        v158(v157);
        (*v154)(v152, v111);
      }

      else
      {
        v159 = v153;
        v160 = sub_1C43FDB44();
        v161(v160, v190);
        sub_1C49D3B70(v159);
        v162 = sub_1C44351F0();
        v163(v162);
        (*v154)(v152, v111);
        return v214;
      }
    }
  }
}

uint64_t sub_1C49EBB04(uint64_t a1, uint64_t a2)
{
  v156 = a1;
  v157 = a2;
  v154 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  sub_1C43FCDF8();
  v146 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v6);
  v135 = sub_1C4F00DD8();
  sub_1C43FCDF8();
  v134 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v9);
  v10 = sub_1C4F00DC8();
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v12);
  v138 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v137 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v15);
  sub_1C4F01188();
  sub_1C43FCDF8();
  v140 = v17;
  v141 = v16;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v139 = v18;
  sub_1C43FBE44();
  v19 = sub_1C4EFA328();
  v20 = sub_1C43FBD18(v19);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD2D8();
  v151 = v21;
  sub_1C43FBE44();
  v147 = sub_1C4EFA088();
  sub_1C43FCDF8();
  v149 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FD230();
  v145 = v25;
  sub_1C43FBE44();
  sub_1C4EFD548();
  sub_1C43FCDF8();
  v143 = v27;
  v144 = v26;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBFDC();
  v142 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD230();
  v148 = v30;
  sub_1C43FBE44();
  sub_1C4F002F8();
  sub_1C43FCDF8();
  v152 = v32;
  v153 = v31;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD2D8();
  v150 = v33;
  v34 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v35 = sub_1C43FBD18(v34);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v126 - v36;
  v38 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v155 = v39;
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBCC4();
  v43 = v42 - v41;
  v44 = sub_1C4EFA338();
  v45 = sub_1C43FBD18(v44);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBCC4();
  sub_1C43FECFC();
  v46 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v48 = v47;
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBCC4();
  v52 = v51 - v50;
  v53 = v2;
  sub_1C4EFA068();
  v54 = v160;
  EntityPredicate.init(globalKGPropertyId:)(v3);
  if (!v54)
  {
    v128 = 0;
    v55 = v151;
    v130 = v52;
    v160 = v48;
    v129 = v46;
    v56 = v154;
    v57 = sub_1C4EFA0B8();
    v59 = v58;
    v60 = sub_1C4EFA0B8();
    sub_1C465C294(v60, v61, v156);

    if (sub_1C44157D4(v37, 1, v38) == 1)
    {
      v126 = v57;
      v127 = v59;
      sub_1C4423A0C(v37, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {

      v62 = v155;
      sub_1C44333BC();
      v63(v43, v37, v38);
      v126 = sub_1C4EFF048();
      v127 = v64;
      (*(v62 + 8))(v43, v38);
    }

    v65 = v160;
    v66 = v55;
    v67 = v150;
    sub_1C4EFA058();
    v68 = sub_1C4F002E8();
    (*(v152 + 8))(v67, v153);
    v69 = sub_1C4EFA0A8();
    v70 = v56;
    v71 = v128;
    if (v69)
    {
      v152 = v38;
      v153 = v68;
      v72 = v145;
      sub_1C4EFA098();
      sub_1C4EFA068();
      v74 = v149 + 8;
      v73 = *(v149 + 8);
      v73(v72, v147);
      v75 = v148;
      EntityClass.init(globalKGEntityType:)(v66);
      v76 = v130;
      if (v71)
      {

LABEL_15:
        (*(v65 + 8))(v76, v129);
        return v53;
      }

      v145 = v73;
      v149 = v74;
      v150 = v2;
      v158 = sub_1C4EFF048();
      v159 = v83;
      v84 = sub_1C4EFEB68();
      MEMORY[0x1C6940010](v84);

      v85 = v126;
      v86 = v127;
      MEMORY[0x1C6940010]();
      v53 = v139;
      sub_1C4F01178();
      v151 = sub_1C4F01148();
      v88 = v87;

      (*(v140 + 8))(v53, v141);
      if (v88 >> 60 == 15)
      {
        v158 = 0;
        v159 = 0xE000000000000000;
        sub_1C4F02248();

        v158 = 0xD00000000000001FLL;
        v159 = 0x80000001C4FAC2D0;
        MEMORY[0x1C6940010](v85, v86);

        v89 = v158;
        v90 = v159;
        sub_1C49E47AC();
        swift_allocError();
        *v91 = v89;
        *(v91 + 8) = v90;
        *(v91 + 16) = 3;
        swift_willThrow();
        (*(v143 + 8))(v75, v144);
LABEL_14:
        v76 = v130;
        goto LABEL_15;
      }

      (*(v143 + 16))(v142, v75, v144);
      sub_1C49EDA00(&qword_1EDDFEAD0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      v92 = v133;
      v93 = v135;
      sub_1C4F00DB8();
      v94 = v151;
      sub_1C44344B8(v151, v88);
      sub_1C4498FD8(v94, v88, v92);
      v95 = v157;
      v140 = 0;
      v141 = v88;
      sub_1C441DFEC(v94, v88);
      sub_1C4F00DA8();
      v96 = sub_1C43FDB44();
      v53 = v130;
      v97(v96, v93);
      v98 = v136;
      sub_1C4EFF818();
      v99 = v132;
      sub_1C4EFA098();
      sub_1C4EFA078();
      v100 = v145(v99, v147);
      MEMORY[0x1EEE9AC00](v100);
      *(&v126 - 6) = v156;
      *(&v126 - 5) = v95;
      v101 = v95;
      *(&v126 - 4) = v53;
      *(&v126 - 3) = v98;
      v102 = v153;
      *(&v126 - 2) = v153;
      v103 = v140;
      sub_1C49C0698();
      if (v103)
      {
        (*(v143 + 8))(v148, v144);
        sub_1C441DFEC(v151, v141);

        (*(v137 + 8))(v98, v138);
        v65 = v160;
        goto LABEL_14;
      }

      v53 = v104;

      v106 = v131;
      (*(v155 + 16))(v131, v101, v152);
      v65 = v160;
      (*(v160 + 16))(v106 + v70[5], v130, v129);
      (*(v137 + 16))(v106 + v70[6], v98, v138);
      sub_1C4EFEBB8();
      v107 = v148;
      v108 = sub_1C4EFD2F8();
      v109 = (v106 + v70[8]);
      *v109 = v108;
      v109[1] = v110;
      *(v106 + v70[9]) = v102;
      *(v106 + v70[10]) = 0;
      *(v106 + v70[11]) = MEMORY[0x1E69E7CC0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v118 = sub_1C43FCEC0();
        sub_1C458BB48(v118, v119, v120, v53);
        v53 = v121;
      }

      v111 = v144;
      v112 = v141;
      v114 = *(v53 + 16);
      v113 = *(v53 + 24);
      v115 = v151;
      if (v114 >= v113 >> 1)
      {
        v122 = sub_1C43FFD98(v113);
        sub_1C458BB48(v122, v123, v124, v53);
        v53 = v125;
        v115 = v151;
      }

      sub_1C441DFEC(v115, v112);
      (*(v143 + 8))(v107, v111);
      *(v53 + 16) = v114 + 1;
      sub_1C43FC354();
      sub_1C49ED99C(v106, v53 + v116 + *(v117 + 72) * v114);
      (*(v137 + 8))(v136, v138);
      v80 = v129;
      v79 = v130;
    }

    else
    {
      sub_1C456902C(&qword_1EC0B93E8, &unk_1C4F0EF50);
      v77 = (*(v146 + 80) + 32) & ~*(v146 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1C4F0D130;
      v78 = v53 + v77;
      (*(v155 + 16))(v78, v157, v38);
      v79 = v130;
      v80 = v129;
      (*(v65 + 16))(v78 + v56[5], v130, v129);
      sub_1C4EFF888();
      sub_1C4EFEC38();
      v81 = (v78 + v56[8]);
      v82 = v127;
      *v81 = v126;
      v81[1] = v82;
      *(v78 + v56[9]) = v68;
      *(v78 + v56[10]) = 0;
      *(v78 + v56[11]) = MEMORY[0x1E69E7CC0];
    }

    (*(v65 + 8))(v79, v80);
  }

  return v53;
}

uint64_t sub_1C49EC7EC@<X0>(uint64_t a1@<X8>)
{
  sub_1C4EFA278();
  sub_1C43FCDF8();
  v64 = v4;
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FD2D8();
  v63 = v5;
  sub_1C43FBE44();
  sub_1C4EFA188();
  sub_1C43FCDF8();
  v69 = v7;
  v70 = v6;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  v68 = v8;
  sub_1C43FBE44();
  sub_1C4EFA1C8();
  sub_1C43FCDF8();
  v71 = v10;
  v72 = v9;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C43FECFC();
  sub_1C4EFA378();
  sub_1C43FCDF8();
  v66 = v12;
  v67 = v11;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  sub_1C4EFF448();
  sub_1C43FCDF8();
  v73 = v17;
  v74 = v16;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v75 = v18;
  sub_1C43FBE44();
  v19 = sub_1C4EFA148();
  sub_1C43FCDF8();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v25 = v24 - v23;
  v26 = sub_1C456902C(&qword_1EC0C0EB8, qword_1C4F412D8);
  v27 = sub_1C43FBD18(v26);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v62 - v31;
  sub_1C4EFA2E8();
  v33 = sub_1C4EFA2C8();
  if (sub_1C44157D4(v32, 1, v33) == 1)
  {
    goto LABEL_2;
  }

  v62 = a1;
  sub_1C49EDA48(v32, v29);
  v36 = *(v33 - 8);
  v37 = (*(v36 + 88))(v29, v33);
  if (v37 == *MEMORY[0x1E69BCF08])
  {
    v38 = sub_1C44134AC();
    v39(v38);
    (*(v21 + 32))(v25, v29, v19);
    sub_1C4EFA118();
    sub_1C440D158();
    sub_1C441CC20();
    v40(v75);
    sub_1C4410FEC();
    sub_1C4EFF3E8();
    (*(v21 + 8))(v25, v19);
  }

  else if (v37 == *MEMORY[0x1E69BCF18])
  {
    v41 = sub_1C44134AC();
    v42(v41);
    v44 = v71;
    v43 = v72;
    sub_1C44333BC();
    v45(v1, v29, v43);
    sub_1C4EFA118();
    sub_1C441CC20();
    v46(v75);
    sub_1C43FD168();
    sub_1C4EFF3E8();
    (*(v44 + 8))(v1, v43);
  }

  else
  {
    if (v37 == *MEMORY[0x1E69BCF10])
    {
      v47 = sub_1C44134AC();
      v48(v47);
      v50 = v68;
      v49 = v69;
      sub_1C44333BC();
      v51 = v70;
      v52(v50, v29, v70);
      sub_1C4EFA118();
      sub_1C440D158();
    }

    else
    {
      if (v37 == *MEMORY[0x1E69BCF28])
      {
        v54 = sub_1C44134AC();
        v55(v54);
        v57 = v66;
        v56 = v67;
        (*(v66 + 32))(v15, v29, v67);
        sub_1C4EFA118();
        sub_1C440D158();
        sub_1C441CC20();
        v58(v75);
        sub_1C4410FEC();
        sub_1C4EFF3E8();
        (*(v57 + 8))(v15, v56);
        return sub_1C4423A0C(v32, &qword_1EC0C0EB8, qword_1C4F412D8);
      }

      if (v37 != *MEMORY[0x1E69BCF20])
      {
        (*(v36 + 8))(v29, v33);
LABEL_2:
        sub_1C49E47AC();
        swift_allocError();
        *v34 = 0xD000000000000031;
        *(v34 + 8) = 0x80000001C4FAC2F0;
        *(v34 + 16) = 0;
        swift_willThrow();
        return sub_1C4423A0C(v32, &qword_1EC0C0EB8, qword_1C4F412D8);
      }

      v59 = sub_1C44134AC();
      v60(v59);
      v50 = v63;
      v49 = v64;
      sub_1C44333BC();
      v51 = v65;
      v61(v50, v29, v65);
      sub_1C4EFA118();
      sub_1C440D158();
    }

    sub_1C441CC20();
    v53(v75);
    sub_1C4410FEC();
    sub_1C4EFF3E8();
    (*(v49 + 8))(v50, v51);
  }

  return sub_1C4423A0C(v32, &qword_1EC0C0EB8, qword_1C4F412D8);
}

uint64_t sub_1C49ECECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a3;
  v58 = a2;
  v4 = sub_1C4EFF448();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4F00DD8();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4F00DC8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v53 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4EFD548();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v52 = (&v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = sub_1C4EFF8A8();
  v57 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C4F01188();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFF428();
  sub_1C49EDA00(&qword_1EC0C0EB0, MEMORY[0x1E69A98A0], MEMORY[0x1E69A98B8]);
  v67 = a1;
  sub_1C4F02858();
  sub_1C4F01178();
  v18 = sub_1C4F01148();
  v20 = v19;

  (*(v15 + 8))(v17, v14);
  if (v20 >> 60 == 15)
  {
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_1C4F02248();

    v65 = 0xD00000000000001FLL;
    v66 = 0x80000001C4FAC2D0;
    v21 = sub_1C4F02858();
    MEMORY[0x1C6940010](v21);

    v22 = v65;
    v23 = v66;
    sub_1C49E47AC();
    swift_allocError();
    *v24 = v22;
    *(v24 + 8) = v23;
    *(v24 + 16) = 3;
    return swift_willThrow();
  }

  else
  {
    sub_1C4EFD258();
    sub_1C49EDA00(&qword_1EDDFEAD0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    v26 = v55;
    sub_1C4F00DB8();
    sub_1C44344B8(v18, v20);
    v50 = v20;
    v51 = v18;
    v27 = v56;
    sub_1C4498FD8(v18, v20, v8);
    v56 = v27;
    sub_1C441DFEC(v18, v20);
    sub_1C4F00DA8();
    (*(v54 + 8))(v8, v26);
    sub_1C4EFF818();
    sub_1C456902C(&qword_1EC0B93E8, &unk_1C4F0EF50);
    v28 = (type metadata accessor for LiveGlobalKnowledgeTriple(0) - 8);
    v29 = *v28;
    v54 = *(*v28 + 72);
    v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v31 = swift_allocObject();
    v55 = v31;
    *(v31 + 16) = xmmword_1C4F0CE60;
    v32 = v31 + v30;
    v33 = sub_1C4EFF0C8();
    v34 = *(v33 - 8);
    v52 = *(v34 + 16);
    v53 = (v34 + 16);
    v35 = v58;
    v52(v32, v58, v33);
    sub_1C4EFE308();
    v36 = v57;
    v37 = *(v57 + 16);
    v38 = v62;
    v37(v32 + v28[8], v62, v63);
    sub_1C4EFE558();
    v39 = sub_1C4EFF408();
    v40 = (v32 + v28[10]);
    *v40 = v39;
    v40[1] = v41;
    *(v32 + v28[11]) = v64;
    *(v32 + v28[12]) = 0;
    *(v32 + v28[13]) = MEMORY[0x1E69E7CC0];
    v42 = v32 + v54;
    v52(v42, v35, v33);
    sub_1C4EFE308();
    v43 = v63;
    v37(v42 + v28[8], v38, v63);
    sub_1C4EFE658();
    v44 = v59;
    sub_1C4EFF418();
    v45 = sub_1C4EFF438();
    v47 = v46;
    (*(v60 + 8))(v44, v61);
    v48 = (v42 + v28[10]);
    *v48 = v45;
    v48[1] = v47;
    *(v42 + v28[11]) = v64;
    *(v42 + v28[12]) = 0;
    *(v42 + v28[13]) = MEMORY[0x1E69E7CC0];
    sub_1C441DFEC(v51, v50);
    (*(v36 + 8))(v38, v43);
    return v55;
  }
}

uint64_t sub_1C49ED5F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v42 = a5;
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v36 = a1;
  v37 = a6;
  v7 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_1C4EFF0C8();
  v38 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C4EFA338();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C4EFEEF8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFA068();
  result = EntityPredicate.init(globalKGPropertyId:)(v15);
  if (!v6)
  {
    v35 = v17;
    v21 = sub_1C4EFA0B8();
    v23 = v22;
    sub_1C465C294(v21, v22, v36);
    if (sub_1C44157D4(v9, 1, v10) == 1)
    {
      sub_1C4423A0C(v9, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v24 = v38;
    }

    else
    {

      v25 = v9;
      v24 = v38;
      (*(v38 + 32))(v12, v25, v10);
      v21 = sub_1C4EFF048();
      v23 = v26;
      (*(v24 + 8))(v12, v10);
    }

    v27 = v16;
    v28 = v37;
    (*(v24 + 16))(v37, v39, v10);
    v29 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
    v30 = v35;
    (*(v35 + 16))(v28 + v29[5], v40, v27);
    v31 = v29[6];
    v32 = sub_1C4EFF8A8();
    (*(*(v32 - 8) + 16))(v28 + v31, v41, v32);
    (*(v30 + 32))(v28 + v29[7], v19, v27);
    v33 = (v28 + v29[8]);
    *v33 = v21;
    v33[1] = v23;
    *(v28 + v29[9]) = v42;
    *(v28 + v29[10]) = 0;
    *(v28 + v29[11]) = MEMORY[0x1E69E7CC0];
    return sub_1C440BAA8(v28, 0, 1, v29);
  }

  return result;
}

uint64_t sub_1C49ED99C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C49EDA00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C49EDA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C0EB8, qword_1C4F412D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LiveGlobalKnowledgeTriple.description.getter()
{
  sub_1C4F02248();

  v1 = sub_1C4EFF048();
  MEMORY[0x1C6940010](v1);

  sub_1C43FDB54();
  v2 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  sub_1C4EFEB68();
  sub_1C441C2C0();

  sub_1C43FDB54();
  MEMORY[0x1C6940010](*(v0 + *(v2 + 32)), *(v0 + *(v2 + 32) + 8));
  sub_1C43FDB54();
  sub_1C4EFF848();
  sub_1C441C2C0();

  sub_1C43FDB54();
  sub_1C4EFEB68();
  sub_1C441C2C0();

  sub_1C43FDB54();
  v3 = sub_1C4F02858();
  MEMORY[0x1C6940010](v3);

  sub_1C43FDB54();
  sub_1C4F02858();
  sub_1C441C2C0();

  sub_1C43FDB54();
  v4 = MEMORY[0x1C6940380](*(v0 + *(v2 + 44)), &type metadata for LiveGlobalKnowledgeGraphClientSet);
  MEMORY[0x1C6940010](v4);

  MEMORY[0x1C6940010](93, 0xE100000000000000);
  return 91;
}

void Array<A>.toIdString.getter()
{
  sub_1C43FBD3C();
  v1 = v0;
  v2 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v24 = 0xE000000000000000;
  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v3 + 32);
    v18[1] = *(v3 + 28);
    v10 = &v6[v9];
    v11 = *(v4 + 72);
    do
    {
      sub_1C4932758(v8, v6);
      v21 = 10;
      v22 = 0xE100000000000000;
      v19 = sub_1C4EFF048();
      v20 = v12;
      sub_1C4410C38();
      v13 = sub_1C4EFEB68();
      MEMORY[0x1C6940010](v13);

      sub_1C4410C38();
      MEMORY[0x1C6940010](*v10, *(v10 + 1));
      sub_1C4410C38();
      v14 = sub_1C4EFF848();
      MEMORY[0x1C6940010](v14);

      sub_1C4410C38();
      v15 = sub_1C4EFEB68();
      MEMORY[0x1C6940010](v15);

      v16 = v19;
      v17 = v20;
      sub_1C49327BC(v6);
      MEMORY[0x1C6940010](v16, v17);

      MEMORY[0x1C6940010](v21, v22);

      v8 += v11;
      --v7;
    }

    while (v7);
  }

  sub_1C43FE9F0();
}

unint64_t sub_1C49EDEA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C49EDEF4(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x7461636964657270;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x7463656A626FLL;
      break;
    case 5:
      result = 0x73656D69546C7474;
      break;
    case 6:
      result = 0x6D617473656D6974;
      break;
    case 7:
      result = 0x73746E65696C63;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C49EE018@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C49EDEA8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1C49EE048@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C49EDEF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C49EE074(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49F1B80();

  return MEMORY[0x1EEE09870](a1, a2, v4);
}

uint64_t sub_1C49EE0C0(uint64_t a1)
{
  v2 = sub_1C4932818();

  return MEMORY[0x1EEE09858](a1, v2);
}

uint64_t sub_1C49EE10C(uint64_t a1)
{
  v2 = sub_1C49F1B2C();

  return MEMORY[0x1EEE09A90](a1, v2);
}

uint64_t sub_1C49EE158(uint64_t a1)
{
  v2 = sub_1C49F1B2C();

  return MEMORY[0x1EEE09A88](a1, v2);
}

uint64_t LiveGlobalKnowledgeTriple.subject.getter()
{
  sub_1C44059B8();
  sub_1C4EFF0C8();
  sub_1C43FBCE0();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t LiveGlobalKnowledgeTriple.predicate.getter()
{
  v0 = sub_1C44059B8();
  type metadata accessor for LiveGlobalKnowledgeTriple(v0);
  sub_1C4EFEEF8();
  sub_1C43FBCE0();
  v1 = sub_1C4409DB8();

  return v2(v1);
}

uint64_t LiveGlobalKnowledgeTriple.relationshipId.getter()
{
  v0 = sub_1C44059B8();
  type metadata accessor for LiveGlobalKnowledgeTriple(v0);
  sub_1C4EFF8A8();
  sub_1C43FBCE0();
  v1 = sub_1C4409DB8();

  return v2(v1);
}

uint64_t LiveGlobalKnowledgeTriple.relationshipPredicate.getter()
{
  v0 = sub_1C44059B8();
  type metadata accessor for LiveGlobalKnowledgeTriple(v0);
  sub_1C4EFEEF8();
  sub_1C43FBCE0();
  v1 = sub_1C4409DB8();

  return v2(v1);
}

uint64_t LiveGlobalKnowledgeTriple.object.getter()
{
  v1 = *(v0 + *(type metadata accessor for LiveGlobalKnowledgeTriple(0) + 32));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t LiveGlobalKnowledgeTriple.clients.getter()
{
  type metadata accessor for LiveGlobalKnowledgeTriple(0);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t LiveGlobalKnowledgeTriple.toIdString.getter(uint64_t a1)
{
  v7 = sub_1C4EFF048();
  sub_1C4410C38();
  v2 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  v3 = sub_1C4EFEB68();
  MEMORY[0x1C6940010](v3);

  sub_1C4410C38();
  MEMORY[0x1C6940010](*(v1 + *(v2 + 32)), *(v1 + *(v2 + 32) + 8));
  sub_1C4410C38();
  v4 = sub_1C4EFF848();
  MEMORY[0x1C6940010](v4);

  sub_1C4410C38();
  v5 = sub_1C4EFEB68();
  MEMORY[0x1C6940010](v5);

  return v7;
}

uint64_t static LiveGlobalKnowledgeTriple.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1C4EFF088() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  if ((sub_1C44DBB50(a1 + v4[5], a2 + v4[5]) & 1) == 0 || (sub_1C4EFF878() & 1) == 0 || (sub_1C44DBB50(a1 + v4[7], a2 + v4[7]) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[8];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1C4F02938() & 1) == 0 || *(a1 + v4[9]) != *(a2 + v4[9]) || *(a1 + v4[10]) != *(a2 + v4[10]))
  {
    return 0;
  }

  v10 = v4[11];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);

  return sub_1C47E6D78(v11, v12);
}

uint64_t sub_1C49EE5D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6974616C6572 && a2 == 0xEE00644970696873;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001C4F86600 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x73656D69546C7474 && a2 == 0xEC000000706D6174;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x73746E65696C63 && a2 == 0xE700000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C4F02938();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C49EE868(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x7461636964657270;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x7463656A626FLL;
      break;
    case 5:
      result = 0x73656D69546C7474;
      break;
    case 6:
      result = 0x6D617473656D6974;
      break;
    case 7:
      result = 0x73746E65696C63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C49EE970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C49EE5D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C49EE998(uint64_t a1)
{
  v2 = sub_1C49EFD38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C49EE9D4(uint64_t a1)
{
  v2 = sub_1C49EFD38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LiveGlobalKnowledgeTriple.encode(to:)(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0C0EC0, &qword_1C4F41300);
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = sub_1C4409A28();
  sub_1C4409678(v9, v10);
  sub_1C49EFD38();
  sub_1C4F02BF8();
  LOBYTE(v22) = 0;
  sub_1C4EFF0C8();
  sub_1C442CEE4();
  sub_1C4490FA8(v11, v12, MEMORY[0x1E69A9818]);
  sub_1C43FBF44();
  sub_1C4F027E8();
  if (!v2)
  {
    v13 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
    LOBYTE(v22) = 1;
    sub_1C4EFEEF8();
    sub_1C4407458();
    sub_1C4490FA8(v14, v15, MEMORY[0x1E69A9750]);
    sub_1C442E3BC();
    sub_1C43FBF44();
    sub_1C4F027E8();
    v20 = v13;
    LOBYTE(v22) = 2;
    sub_1C4EFF8A8();
    sub_1C4419F38();
    sub_1C4490FA8(v16, v17, MEMORY[0x1E69A99F0]);
    sub_1C442E3BC();
    sub_1C43FBF44();
    sub_1C4F027E8();
    v18 = v20;
    LOBYTE(v22) = 3;
    sub_1C442E3BC();
    sub_1C43FBF44();
    sub_1C4F027E8();
    LOBYTE(v22) = 4;
    sub_1C43FBF44();
    sub_1C4F02798();
    LOBYTE(v22) = 5;
    sub_1C442E3BC();
    sub_1C43FBF44();
    sub_1C4F027F8();
    LOBYTE(v22) = 6;
    sub_1C442E3BC();
    sub_1C43FBF44();
    sub_1C4F027F8();
    v22 = *(v1 + *(v18 + 44));
    v21 = 7;
    sub_1C456902C(&qword_1EC0C0ED0, &qword_1C4F41308);
    sub_1C49EFF90(&qword_1EC0C0ED8, sub_1C49E4278, MEMORY[0x1E69E6300]);
    sub_1C43FBF44();
    sub_1C4F027E8();
  }

  return (*(v5 + 8))(v8, v3);
}

void LiveGlobalKnowledgeTriple.hash(into:)(uint64_t a1)
{
  sub_1C4EFF0C8();
  sub_1C442CEE4();
  sub_1C4490FA8(v2, v3, MEMORY[0x1E69A9820]);
  sub_1C4F00FE8();
  v4 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  sub_1C4EFEEF8();
  sub_1C4407458();
  sub_1C4490FA8(v5, v6, MEMORY[0x1E69A9758]);
  sub_1C43FC2F4();
  sub_1C4F00FE8();
  sub_1C4EFF8A8();
  sub_1C4419F38();
  sub_1C4490FA8(v7, v8, MEMORY[0x1E69A99F8]);
  sub_1C4F00FE8();
  sub_1C43FC2F4();
  sub_1C4F00FE8();
  sub_1C4F01298();
  MEMORY[0x1C6941830](*(v1 + *(v4 + 36)));
  MEMORY[0x1C6941830](*(v1 + *(v4 + 40)));

  sub_1C49EFF50();
}

uint64_t LiveGlobalKnowledgeTriple.hashValue.getter()
{
  sub_1C4F02AF8();
  LiveGlobalKnowledgeTriple.hash(into:)(v1);
  return sub_1C4F02B68();
}

uint64_t LiveGlobalKnowledgeTriple.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v60 = v4;
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v56 = v6 - v5;
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v65 = v7;
  v66 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  v14 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v62 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  sub_1C456902C(&qword_1EC0C0EE0, &qword_1C4F41310);
  sub_1C43FCDF8();
  v57 = v20;
  v58 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v51 - v22;
  v67 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v27 = v26 - v25;
  v28 = a1[3];
  v64 = a1;
  v29 = sub_1C4409678(a1, v28);
  sub_1C49EFD38();
  v59 = v23;
  v30 = v63;
  sub_1C4F02BC8();
  if (!v30)
  {
    v63 = v10;
    LOBYTE(v69) = 0;
    sub_1C442CEE4();
    sub_1C4490FA8(v31, v32, MEMORY[0x1E69A9838]);
    sub_1C4405ECC();
    sub_1C4F026C8();
    (*(v62 + 32))(v27, v19, v14);
    LOBYTE(v69) = 1;
    sub_1C4407458();
    sub_1C4490FA8(v33, v34, MEMORY[0x1E69A9778]);
    sub_1C4F026C8();
    v53 = v14;
    v54 = v27;
    v35 = *(v66 + 32);
    sub_1C43FC2F4();
    v35();
    LOBYTE(v69) = 2;
    sub_1C4419F38();
    sub_1C4490FA8(v36, v37, MEMORY[0x1E69A9A10]);
    v38 = v56;
    v39 = v61;
    sub_1C4F026C8();
    v52 = v35;
    (*(v60 + 32))(v54 + *(v67 + 24), v38, v39);
    LOBYTE(v69) = 3;
    sub_1C4405ECC();
    sub_1C4F026C8();
    v41 = v67;
    sub_1C43FC2F4();
    v52();
    sub_1C442FF6C(4);
    v42 = sub_1C4F02678();
    v43 = v41;
    v44 = (v54 + v41[8]);
    *v44 = v42;
    v44[1] = v45;
    sub_1C442FF6C(5);
    sub_1C4405ECC();
    v46 = sub_1C4F026D8();
    v47 = v54;
    *(v54 + v43[9]) = v46;
    sub_1C442FF6C(6);
    sub_1C4405ECC();
    *(v47 + v43[10]) = sub_1C4F026D8();
    sub_1C456902C(&qword_1EC0C0ED0, &qword_1C4F41308);
    v68 = 7;
    sub_1C49EFF90(&qword_1EC0C0EE8, sub_1C49E4224, MEMORY[0x1E69E6330]);
    sub_1C4405ECC();
    sub_1C4F026C8();
    v48 = sub_1C440F934();
    v49(v48);
    *(v47 + v43[11]) = v69;
    sub_1C4932758(v47, v55);
    sub_1C440962C(v64);
    return sub_1C49327BC(v47);
  }

  sub_1C44252B8();
  result = sub_1C440962C(v64);
  if (v29)
  {
    result = (*(v62 + 8))(v27, v14);
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else if (v10)
  {
LABEL_6:
    v40 = v67;
    result = (*(v66 + 8))(v27 + *(v67 + 20), v28);
    if ((v13 & 1) == 0)
    {
      return result;
    }

    return (*(v60 + 8))(v27 + *(v40 + 24), v61);
  }

  v40 = v67;
  if (v13)
  {
    return (*(v60 + 8))(v27 + *(v40 + 24), v61);
  }

  return result;
}

uint64_t sub_1C49EF714()
{
  sub_1C4F02AF8();
  LiveGlobalKnowledgeTriple.hash(into:)(v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C49EF764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490FA8(&qword_1EC0C0F20, type metadata accessor for LiveGlobalKnowledgeTriple, &protocol conformance descriptor for LiveGlobalKnowledgeTriple);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C49EF7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4490FA8(&qword_1EC0BDDC8, type metadata accessor for LiveGlobalKnowledgeTriple, &protocol conformance descriptor for LiveGlobalKnowledgeTriple);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C49EF980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490FA8(&qword_1EC0C0F18, type metadata accessor for LiveGlobalKnowledgeTriple, &protocol conformance descriptor for LiveGlobalKnowledgeTriple);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t Array<A>.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = *(type metadata accessor for LiveGlobalKnowledgeTriple(0) - 8);
  v4 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v3 + 72);
  do
  {
    v6 = LiveGlobalKnowledgeTriple.description.getter();
    MEMORY[0x1C6940010](v6);

    MEMORY[0x1C6940010](10, 0xE100000000000000);

    v4 += v5;
    --v1;
  }

  while (v1);
  return 0;
}

void Array<A>.toIdStringSet.getter()
{
  sub_1C43FBD3C();
  v1 = v0;
  v2 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = *(v1 + 16);
  if (v9)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v9, 0);
    v10 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v18 = *(v4 + 72);
    do
    {
      sub_1C4932758(v10, v8);
      v19 = sub_1C4EFF048();
      v20 = v11;
      sub_1C4410C38();
      v12 = sub_1C4EFEB68();
      MEMORY[0x1C6940010](v12);

      sub_1C4410C38();
      MEMORY[0x1C6940010](*(v8 + *(v2 + 32)), *(v8 + *(v2 + 32) + 8));
      sub_1C4410C38();
      v13 = sub_1C4EFF848();
      MEMORY[0x1C6940010](v13);

      sub_1C4410C38();
      v14 = sub_1C4EFEB68();
      MEMORY[0x1C6940010](v14);

      sub_1C49327BC(v8);
      v16 = *(v21 + 16);
      v15 = *(v21 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C44CD9C0(v15 > 1, v16 + 1, 1);
      }

      *(v21 + 16) = v16 + 1;
      v17 = v21 + 16 * v16;
      *(v17 + 32) = v19;
      *(v17 + 40) = v20;
      v10 += v18;
      --v9;
    }

    while (v9);
  }

  sub_1C4499940();
  sub_1C43FE9F0();
}

uint64_t type metadata accessor for LiveGlobalKnowledgeTriple(uint64_t a1)
{
  result = qword_1EDDFACC8;
  if (!qword_1EDDFACC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C49EFD38()
{
  result = qword_1EC0C0EC8;
  if (!qword_1EC0C0EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0EC8);
  }

  return result;
}

void sub_1C49EFD8C()
{
  sub_1C440AF28();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4410428();
      sub_1C4F01298();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

void sub_1C49EFDF0()
{
  sub_1C44158A0();
  sub_1C440AF28();
  v10 = v0;
  if (v0)
  {
    v2 = 0;
    do
    {
      v3 = v1 + 32 + 40 * v2;
      v4 = *(v3 + 16);
      v5 = *(v3 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4409A28();
      sub_1C4F01298();
      if (v4)
      {
        sub_1C4F02B18();
        MEMORY[0x1C69417F0](*(v4 + 16));
        v6 = *(v4 + 16);
        if (v6)
        {
          v7 = v4 + 40;
          do
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4409A28();
            sub_1C4F01298();

            v7 += 16;
            --v6;
          }

          while (v6);
        }

        if (v5)
        {
LABEL_8:
          sub_1C4F02B18();
          MEMORY[0x1C69417F0](*(v5 + 16));
          v8 = *(v5 + 16);
          if (v8)
          {
            v9 = v5 + 40;
            do
            {
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4409A28();
              sub_1C4F01298();

              v9 += 16;
              --v8;
            }

            while (v8);
          }

          goto LABEL_14;
        }
      }

      else
      {
        sub_1C4F02B18();
        if (v5)
        {
          goto LABEL_8;
        }
      }

      sub_1C4F02B18();
LABEL_14:
      ++v2;
      sub_1C4F02B18();
    }

    while (v2 != v10);
  }

  sub_1C4410198();
}

void sub_1C49EFF50()
{
  sub_1C440AF28();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      MEMORY[0x1C69417F0](v3);
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_1C49EFF90(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C0ED0, &qword_1C4F41308);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C49F0008(uint64_t a1)
{
  result = sub_1C4490FA8(&qword_1EC0BDB08, type metadata accessor for LiveGlobalKnowledgeTriple, &protocol conformance descriptor for LiveGlobalKnowledgeTriple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49F0060(uint64_t a1)
{
  *(a1 + 8) = sub_1C4490FA8(&qword_1EC0C0820, type metadata accessor for LiveGlobalKnowledgeTriple, &protocol conformance descriptor for LiveGlobalKnowledgeTriple);
  result = sub_1C4490FA8(&qword_1EC0BDDC8, type metadata accessor for LiveGlobalKnowledgeTriple, &protocol conformance descriptor for LiveGlobalKnowledgeTriple);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C49F0268(uint64_t a1)
{
  v1 = sub_1C4EFF0C8();
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFEEF8();
    if (v3 <= 0x3F)
    {
      v4 = sub_1C4EFF8A8();
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_1C49F0354();
        v1 = v6;
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_1C49F0354()
{
  if (!qword_1EDDDBC40)
  {
    v0 = sub_1C4F017A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDDBC40);
    }
  }
}

unint64_t sub_1C49F03B8()
{
  result = qword_1EC0C0F00;
  if (!qword_1EC0C0F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0F00);
  }

  return result;
}

unint64_t sub_1C49F0410()
{
  result = qword_1EC0C0F08;
  if (!qword_1EC0C0F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0F08);
  }

  return result;
}

unint64_t sub_1C49F0468()
{
  result = qword_1EC0C0F10;
  if (!qword_1EC0C0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0F10);
  }

  return result;
}

void sub_1C49F04BC()
{
  sub_1C43FBD3C();
  sub_1C440AF28();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      ++v2;
      sub_1C4F01298();

      --v0;
    }

    while (v0);
  }

  sub_1C43FE9F0();
}

void sub_1C49F063C()
{
  sub_1C44158A0();
  sub_1C440AF28();
  if (v0)
  {
    v2 = 0;
    v3 = v1 + 32;
    v31 = v1 + 32;
    while (2)
    {
      v4 = (v3 + 32 * v2);
      v5 = *v4;
      v6 = v4[1];
      v7 = v4[2];
      switch(*(v4 + 24))
      {
        case 1:
          MEMORY[0x1C69417F0](1);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4410428();
          sub_1C4F01298();
          v8 = sub_1C4400910();
          v11 = 1;
          goto LABEL_40;
        case 2:
          MEMORY[0x1C69417F0](8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4410428();
          sub_1C4F01298();
          v8 = sub_1C4400910();
          v11 = 2;
          goto LABEL_40;
        case 3:
          MEMORY[0x1C69417F0](9);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4410428();
          sub_1C4F01298();
          v8 = sub_1C4400910();
          v11 = 3;
          goto LABEL_40;
        case 4:
          MEMORY[0x1C69417F0](10);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4410428();
          sub_1C4F01298();
          sub_1C4F02B38();
          v8 = sub_1C4400910();
          v11 = 4;
          goto LABEL_40;
        case 5:
          MEMORY[0x1C69417F0](11);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4410428();
          sub_1C4F01298();
          if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v25 = v7;
          }

          else
          {
            v25 = 0;
          }

          MEMORY[0x1C6941830](v25);
          v8 = sub_1C4400910();
          v11 = 5;
          goto LABEL_40;
        case 6:
          MEMORY[0x1C69417F0](12);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4410428();
          sub_1C4F01298();
          MEMORY[0x1C69417F0](v7);
          v8 = sub_1C4400910();
          v11 = 6;
          goto LABEL_40;
        case 7:
          MEMORY[0x1C69417F0](13);
          MEMORY[0x1C69417F0](*(v5 + 16));
          v19 = *(v5 + 16);
          if (v19)
          {
            v20 = (v5 + 32);
            do
            {
              v21 = *v20++;
              MEMORY[0x1C69417F0](v21);
              --v19;
            }

            while (v19);
          }

          v22 = sub_1C4400910();
          sub_1C49F1884(v22, v23, v24, 7u);
          sub_1C4F01298();
          v8 = sub_1C4400910();
          v11 = 7;
          goto LABEL_40;
        case 8:
          MEMORY[0x1C69417F0](14);
          MEMORY[0x1C69417F0](*(v5 + 16));
          v26 = *(v5 + 16);
          if (v26)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v27 = v5 + 40;
            do
            {
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C43FC1C0();
              sub_1C4F01298();

              v27 += 16;
              --v26;
            }

            while (v26);
            v28 = sub_1C4400910();
            sub_1C49F181C(v28, v29, v30, 8u);
            v3 = v31;
          }

          goto LABEL_41;
        case 9:
          v12 = v7 | v6;
          if (v7 | v6 | v5)
          {
            if (v5 == 1 && v12 == 0)
            {
              v18 = 3;
            }

            else if (v5 == 2 && v12 == 0)
            {
              v18 = 4;
            }

            else if (v5 == 3 && v12 == 0)
            {
              v18 = 5;
            }

            else if (v5 == 4 && v12 == 0)
            {
              v18 = 6;
            }

            else if (v5 == 5 && v12 == 0)
            {
              v18 = 7;
            }

            else
            {
              v18 = 15;
            }
          }

          else
          {
            v18 = 2;
          }

          MEMORY[0x1C69417F0](v18);
          goto LABEL_41;
        default:
          MEMORY[0x1C69417F0](0);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4410428();
          sub_1C4F01298();
          v8 = sub_1C4400910();
          v11 = 0;
LABEL_40:
          sub_1C49F181C(v8, v9, v10, v11);
LABEL_41:
          if (++v2 == v0)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  sub_1C4410198();
}

void sub_1C49F0938()
{
  sub_1C440AF28();
  if (v0)
  {
    v2 = (v1 + 40);
    do
    {
      if (*v2)
      {
        MEMORY[0x1C69417F0](1);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v3 = sub_1C4410428();
        sub_1C47C9714(v3, v4);
      }

      else
      {
        MEMORY[0x1C69417F0](0);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v5 = sub_1C4410428();
        sub_1C47C99E8(v5, v6);
      }

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

void sub_1C49F09BC()
{
  sub_1C441EB54();
  sub_1C440AF28();
  if (v0)
  {
    v2 = (v1 + 75);
    do
    {
      v3 = *(v2 - 43);
      v4 = *(v2 - 3);
      v5 = *(v2 - 2);
      v6 = *(v2 - 1);
      v7 = *v2;
      v2 += 48;
      v8 = v6;
      v9 = v7;
      switch(v3)
      {
        case 2:
          sub_1C441E594();
          break;
        case 3:
        case 10:
          sub_1C4409F3C();
          break;
        case 5:
          sub_1C4408D98();
          goto LABEL_9;
        case 6:
          sub_1C44034AC();
LABEL_9:
          sub_1C4414DC8();
          break;
        case 8:
          sub_1C44034AC();
          sub_1C43FC694();
          break;
        case 9:
          sub_1C4408D98();
          sub_1C440D640();
          break;
        default:
          break;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4414A08();
      sub_1C4F01298();

      sub_1C43FC1C0();
      sub_1C4F01298();
      sub_1C4F01298();
      if (v4 != 2)
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B18();
      if (v5 != 2)
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B18();
      if (v8 != 2)
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B18();
      if (v9 != 2)
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B18();

      --v0;
    }

    while (v0);
  }

  sub_1C43FBF50();
}

void sub_1C49F0BC8()
{
  sub_1C440AF28();
  if (v0)
  {
    v2 = (v1 + 83);
    do
    {
      v3 = *(v2 - 51);
      v4 = *(v2 - 27);
      v5 = *(v2 - 11);
      v6 = *(v2 - 3);
      v8 = *(v2 - 2);
      v9 = *(v2 - 1);
      v7 = *v2;
      v2 += 56;
      v10 = v7;
      switch(v3)
      {
        case 2:
          sub_1C441E594();
          break;
        case 3:
        case 10:
          sub_1C4409F3C();
          break;
        case 5:
          sub_1C4408D98();
          goto LABEL_9;
        case 6:
          sub_1C44034AC();
LABEL_9:
          sub_1C4414DC8();
          break;
        case 8:
          sub_1C44034AC();
          sub_1C43FC694();
          break;
        case 9:
          sub_1C4408D98();
          sub_1C440D640();
          break;
        default:
          break;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4414A08();
      sub_1C4F01298();

      sub_1C43FC1C0();
      sub_1C4F01298();
      sub_1C4F02B18();
      if (v4 != 2)
      {
        sub_1C4F01298();
      }

      sub_1C4F02B18();
      if (v5)
      {
        sub_1C4F01298();
      }

      if (v6 != 2)
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B18();
      if (v8 != 2)
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B18();
      if (v9 != 2)
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B18();
      if (v10 != 2)
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B18();

      --v0;
    }

    while (v0);
  }
}

void sub_1C49F0E88()
{
  sub_1C43FBD3C();
  sub_1C440AF28();
  if (v0)
  {
    v2 = (v1 + 36);
    do
    {
      v3 = *(v2 - 4);
      v4 = *(v2 - 3);
      v5 = *(v2 - 2);
      v6 = *(v2 - 1);
      v8 = *v2;
      v2 += 5;
      v7 = v8;
      switch(v3)
      {
        case 5:
        case 6:
        case 8:
        case 9:
          sub_1C441628C();
          break;
        default:
          break;
      }

      sub_1C4F01298();

      if (v4 != 2)
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B18();
      if (v5 != 2)
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B18();
      if (v6 != 2)
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B18();
      if (v7 != 2)
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B18();
      --v0;
    }

    while (v0);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C49F1084(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1C69417F0](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      v7 = v6[1];
      v10[0] = *v6;
      v10[1] = v7;
      v8 = v6[3];
      v10[2] = v6[2];
      v10[3] = v8;
      sub_1C445CD7C(v10, &v9);
      sub_1C4CC7064(a1);
      result = sub_1C445DA1C(v10);
      v6 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_1C49F110C()
{
  sub_1C441EB54();
  sub_1C440AF28();
  if (v0)
  {
    v2 = (v1 + 59);
    do
    {
      v3 = *(v2 - 27);
      v4 = *(v2 - 3);
      v5 = *(v2 - 2);
      v8 = *(v2 - 1);
      v7 = *v2;
      v2 += 32;
      v6 = v7;
      switch(v3)
      {
        case 5:
        case 6:
        case 8:
        case 9:
          sub_1C44051A4();
          break;
        default:
          break;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C43FC1C0();
      sub_1C4F01298();

      sub_1C4F01298();
      if (v4 != 2)
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B18();
      if (v5 != 2)
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B18();
      if (v8 != 2)
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B18();
      if (v6 != 2)
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B18();

      --v0;
    }

    while (v0);
  }

  sub_1C43FBF50();
}

void sub_1C49F133C()
{
  sub_1C44158A0();
  sub_1C440AF28();
  if (v0)
  {
    v2 = (v1 + 75);
    do
    {
      v3 = *(v2 - 11);
      v4 = *(v2 - 3);
      v5 = *(v2 - 1);
      v8 = *(v2 - 2);
      v9 = *v2;
      sub_1C4424B10(*(v2 - 43));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4410428();
      sub_1C4F01298();

      v6 = sub_1C4409A28();
      sub_1C4851370(v6, v7);
      sub_1C43FC1C0();
      sub_1C49F14C0();
      sub_1C4F02B18();
      if (v3)
      {
        sub_1C4F01298();
      }

      if (v4 != 2)
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B18();
      if (v8 != 2)
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B18();
      if (v5 != 2)
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B18();
      if (v9 != 2)
      {
        sub_1C4F02B18();
      }

      v2 += 48;
      sub_1C4F02B18();

      --v0;
    }

    while (v0);
  }

  sub_1C4410198();
}

void sub_1C49F14C0()
{
  sub_1C441EB54();
  sub_1C440AF28();
  v13 = v0;
  if (v0)
  {
    v2 = 0;
    v12 = v1 + 32;
    do
    {
      v3 = v12 + 56 * v2;
      v4 = *(v3 + 16);
      v6 = *(v3 + 24);
      v5 = *(v3 + 32);
      v7 = *(v3 + 48);
      if (*(v3 + 8))
      {
        sub_1C4F02B18();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4414A08();
        sub_1C4F01298();
      }

      else
      {
        sub_1C4F02B18();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      if (v4 != 2)
      {
        sub_1C4F02B18();
      }

      sub_1C4F02B18();
      if (v6)
      {
        sub_1C4F02B18();
        MEMORY[0x1C69417F0](*(v6 + 16));
        v8 = *(v6 + 16);
        if (v8)
        {
          v9 = v6 + 40;
          do
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4414A08();
            sub_1C4F01298();

            v9 += 16;
            --v8;
          }

          while (v8);
        }

        if (!v5)
        {
LABEL_19:
          sub_1C4F02B18();
          if (!v7)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }
      }

      else
      {
        sub_1C4F02B18();
        if (!v5)
        {
          goto LABEL_19;
        }
      }

      sub_1C4F02B18();
      MEMORY[0x1C69417F0](*(v5 + 16));
      v10 = *(v5 + 16);
      if (v10)
      {
        v11 = v5 + 40;
        do
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4414A08();
          sub_1C4F01298();

          v11 += 16;
          --v10;
        }

        while (v10);
      }

      if (!v7)
      {
LABEL_20:
        sub_1C4F02B18();
        goto LABEL_21;
      }

LABEL_17:
      sub_1C4F02B18();
      sub_1C4F01298();
LABEL_21:

      ++v2;
    }

    while (v2 != v13);
  }

  sub_1C43FBF50();
}

void sub_1C49F16B0()
{
  sub_1C43FBD3C();
  sub_1C440AF28();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      ++v2;
      sub_1C4F01298();

      --v0;
    }

    while (v0);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C49F181C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 >= 7u && a4 != 8)
  {
    if (a4 != 7)
    {
      return result;
    }
  }
}

uint64_t sub_1C49F1884(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 >= 7u && a4 != 8)
  {
    if (a4 != 7)
    {
      return result;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

_BYTE *sub_1C49F18EC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        break;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C49F19CC()
{
  result = qword_1EDDDE990;
  if (!qword_1EDDDE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDE990);
  }

  return result;
}

unint64_t sub_1C49F1A24()
{
  result = qword_1EDDDE988;
  if (!qword_1EDDDE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDE988);
  }

  return result;
}

unint64_t sub_1C49F1A7C()
{
  result = qword_1EDDDE998;
  if (!qword_1EDDDE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDE998);
  }

  return result;
}

unint64_t sub_1C49F1AD4()
{
  result = qword_1EC0C0F28;
  if (!qword_1EC0C0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0F28);
  }

  return result;
}

unint64_t sub_1C49F1B2C()
{
  result = qword_1EDDDE980;
  if (!qword_1EDDDE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDE980);
  }

  return result;
}

unint64_t sub_1C49F1B80()
{
  result = qword_1EDDDE978;
  if (!qword_1EDDDE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDE978);
  }

  return result;
}

void sub_1C49F1BE0(double a1)
{
  *&v6[2] = a1;

  sub_1C446C37C(sub_1C49F2094, v6);

  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2E088);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_1C43F8000, v3, v4, "GlobalKnowledgeStore: Deleted rows with ttlTimestamp before %f", v5, 0xCu);
    MEMORY[0x1C6942830](v5, -1, -1);
  }
}

uint64_t sub_1C49F1D1C(uint64_t a1, double a2)
{
  v4 = sub_1C456902C(&qword_1EC0BF748, &qword_1C4F3A6A8);
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19[-1] - v5;
  v7 = sub_1C456902C(&qword_1EC0BF758, &qword_1C4F3A6C0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19[-1] - v9;
  type metadata accessor for LiveGlobalKnowledgeTriple(0);
  v23 = &type metadata for LiveGlobalKnowledgeTripleColumn;
  v24 = sub_1C49F1B2C();
  LOBYTE(v22[0]) = 5;
  v20 = MEMORY[0x1E69E63B0];
  v21 = MEMORY[0x1E69A0160];
  *v19 = a2;
  v11 = sub_1C4EFB298();
  v26 = v11;
  v27 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v25);
  sub_1C4EFB818();
  sub_1C440962C(v19);
  sub_1C440962C(v22);
  sub_1C49F20B0();
  sub_1C4EFAE28();
  sub_1C440962C(v25);
  sub_1C4EFB898();
  result = (*(v8 + 8))(v10, v7);
  if (!v2)
  {
    v13 = MEMORY[0x1E69E63B0];
    v14 = v18;
    if (qword_1EDDE2AB8 != -1)
    {
      swift_once();
    }

    v15 = sub_1C4EFBD38();
    v16 = sub_1C442B738(v15, qword_1EDE2CBD0);
    v23 = v15;
    v24 = MEMORY[0x1E69A0050];
    v17 = sub_1C4422F90(v22);
    (*(*(v15 - 8) + 16))(v17, v16, v15);
    v20 = v13;
    v21 = MEMORY[0x1E69A0160];
    *v19 = a2;
    v26 = v11;
    v27 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v25);
    sub_1C4EFB818();
    sub_1C440962C(v19);
    sub_1C440962C(v22);
    sub_1C4835EB4();
    sub_1C4EFAE28();
    sub_1C440962C(v25);
    sub_1C4EFB898();
    return (*(v14 + 8))(v6, v4);
  }

  return result;
}

unint64_t sub_1C49F20B0()
{
  result = qword_1EDDE1270;
  if (!qword_1EDDE1270)
  {
    type metadata accessor for LiveGlobalKnowledgeTriple(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1270);
  }

  return result;
}

uint64_t sub_1C49F2108(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_1C49F27E4(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t LocationGeoHashBlockingFunction.blockValue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a3;
  v5 = sub_1C4EFEEF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v56 - v13;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v56 - v18;
  sub_1C440A6C4();
  v19 = sub_1C4F01688();
  v69 = v19;
  sub_1C440A6C4();
  v20 = 0.0;
  if (v19 != sub_1C4F01758())
  {
    v56 = v15;
    v61 = v14 + 16;
    v60 = v14 + 32;
    v23 = v6;
    v24 = (v6 + 8);
    v59 = v23 + 16;
    v21 = 0.0;
    v58 = v14 + 8;
    v64 = v8;
    v25 = v57;
    v63 = a1;
    v62 = v14;
    while (1)
    {
      sub_1C440A6C4();
      v26 = sub_1C4F01738();
      sub_1C4F016B8();
      if (v26)
      {
        v27 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v19;
        v28 = v65;
        (*(v14 + 16))(v65, v27, a2);
      }

      else
      {
        result = sub_1C4F02298();
        if (v56 != 8)
        {
          __break(1u);
          return result;
        }

        *&v68[0] = result;
        sub_1C4402C08();
        v52 = v65;
        v53(v65, v68, a2);
        v28 = v52;
        swift_unknownObjectRelease();
      }

      sub_1C4F01788();
      sub_1C4402C08();
      v29(v67, v28, a2);
      sub_1C4407470();
      sub_1C4EFF7C8();
      v30 = sub_1C4EFED18();
      v31 = *v24;
      (*v24)(v11, v5);
      sub_1C4407470();
      if (v30)
      {
        sub_1C4EFF7F8();
      }

      else
      {
        sub_1C4EFF7C8();
      }

      v32 = v25;
      sub_1C4402C08();
      v33(v64, v25, v5);
      sub_1C4EFEDD8();
      v34 = sub_1C49E5390();
      v35 = sub_1C441FE90();
      v31(v11, v5);
      if (v35)
      {
        v36 = sub_1C43FFE24();
        (v31)(v36);
        v37 = v67;
        v38 = sub_1C4EFF7D8();
        sub_1C442CEFC(v38, v39);
        sub_1C44120EC();
        v31(v32, v5);
        sub_1C4402C08();
        v40(v37, a2);
        if (v34)
        {
          v21 = v68[0];
        }

        v25 = v32;
      }

      else
      {
        sub_1C4EFEEB8();
        v41 = sub_1C441FE90();
        v31(v11, v5);
        v42 = sub_1C43FFE24();
        (v31)(v42);
        if (v41)
        {
          v43 = v67;
          v44 = sub_1C4EFF7D8();
          sub_1C442CEFC(v44, v45);
          sub_1C44120EC();
          v25 = v57;
          v46 = sub_1C43FFE24();
          (v31)(v46);
          sub_1C4402C08();
          v47(v43, a2);
          if (v34)
          {
            v20 = v68[0];
          }
        }

        else
        {
          v25 = v57;
          v48 = sub_1C43FFE24();
          (v31)(v48);
          sub_1C4402C08();
          v49(v67, a2);
        }
      }

      v14 = v62;
      a1 = v63;
      sub_1C440A6C4();
      v50 = sub_1C4F01758();
      v19 = v69;
      if (v69 == v50)
      {
        goto LABEL_3;
      }
    }
  }

  v21 = 0.0;
LABEL_3:
  if (v21 == 0.0 && v20 == 0.0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for RawLocation();
  inited = swift_initStackObject();
  *(inited + 64) = &type metadata for GeoHashProvider;
  *(inited + 72) = &off_1F43F44C8;
  *(inited + 80) = 0;
  *(inited + 88) = 1;
  *(inited + 96) = 0;
  *(inited + 104) = 1;
  *(inited + 112) = 0;
  *(inited + 120) = 1;
  *(inited + 128) = sub_1C4F00F28();
  *(inited + 16) = v21;
  *(inited + 24) = v20;
  *(inited + 32) = 0;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C4F0D130;
  v69 = sub_1C49FBAA0();
  *(v22 + 32) = sub_1C4F02858();
  *(v22 + 40) = v55;
  swift_setDeallocating();
  RawLocation.__deallocating_deinit();
  return v22;
}

BOOL sub_1C49F27E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1C4F02218();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

_BYTE *storeEnumTagSinglePayload for LocationGeoHashBlockingFunction(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C49F2988(uint64_t result, uint64_t *a2)
{
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  v7 = result + 32;
  v8 = MEMORY[0x1E69E7CC0];
  v19 = v6;
  v20 = result;
  while (1)
  {
    if (v6 == v5)
    {
      goto LABEL_14;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    sub_1C442E860(v7, v24);
    v9 = sub_1C49F3F04(v24, a2);
    if (v2)
    {
      sub_1C440962C(v24);

LABEL_14:

      return v8;
    }

    if (v9)
    {
      sub_1C441D670(v24, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C44F4214();
        v8 = v25;
      }

      v11 = *(v8 + 16);
      if (v11 >= *(v8 + 24) >> 1)
      {
        sub_1C44F4214();
      }

      v12 = v22;
      v13 = v23;
      v14 = sub_1C4418280(v21, v22);
      v15 = MEMORY[0x1EEE9AC00](v14);
      v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v17, v15);
      sub_1C44FDC24(v11, v17, &v25, v12, v13);
      result = sub_1C440962C(v21);
      v8 = v25;
      v6 = v19;
      v4 = v20;
    }

    else
    {
      result = sub_1C440962C(v24);
    }

    v7 += 40;
    ++v5;
  }

  __break(1u);
  return result;
}

void *sub_1C49F2B98(void *a1, unint64_t a2, void *a3)
{
  if (a3)
  {
    sub_1C4F01108();
    v7 = sub_1C43FBD30();
    v8 = [a3 matchesInString:v3 options:0 range:{0, MEMORY[0x1C69400B0](v7, a2)}];

    sub_1C44DBED0();
    v9 = sub_1C4F01678();

    v38 = sub_1C4428DA0(v9);
    if (v38)
    {
      a2 = 0;
      v39 = MEMORY[0x1E69E7CC8];
      v36 = v9 & 0xFFFFFFFFFFFFFF8;
      v37 = v9 & 0xC000000000000001;
      v34 = v9;
      v35 = v9 + 32;
      while (1)
      {
LABEL_4:
        if (a2 == v38)
        {

          return v39;
        }

        if (v37)
        {
          v10 = MEMORY[0x1C6940F90](a2, v9);
        }

        else
        {
          if (a2 >= *(v36 + 16))
          {
            goto LABEL_32;
          }

          v10 = *(v35 + 8 * a2);
        }

        a1 = v10;
        if (__OFADD__(a2++, 1))
        {
          break;
        }

        v12 = sub_1C49F8758(v10);
        if (v12)
        {
          v13 = v12;
          v14 = v12 + 64;
          v15 = 1 << *(v12 + 32);
          if (v15 < 64)
          {
            v16 = ~(-1 << v15);
          }

          else
          {
            v16 = -1;
          }

          v17 = v16 & *(v12 + 64);
          v18 = (v15 + 63) >> 6;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v19 = 0;
          while (v17)
          {
            v20 = v19;
LABEL_19:
            v21 = __clz(__rbit64(v17));
            v17 &= v17 - 1;
            v22 = v21 | (v20 << 6);
            v23 = *(*(v13 + 48) + 8 * v22);
            v24 = (*(v13 + 56) + 16 * v22);
            v25 = *v24;
            v26 = v24[1];
            v27 = v23;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C49F2ED8(v27, v25, v26, &v39);
          }

          while (1)
          {
            v20 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v20 >= v18)
            {

              v9 = v34;
              goto LABEL_4;
            }

            v17 = *(v14 + 8 * v20);
            ++v19;
            if (v17)
            {
              v19 = v20;
              goto LABEL_19;
            }
          }

          __break(1u);
          break;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }
  }

  if (qword_1EDDFD028 != -1)
  {
LABEL_33:
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v29 = sub_1C4F00978();
  sub_1C442B738(v29, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v30 = sub_1C4F00968();
  v31 = sub_1C4F01CC8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39 = v33;
    *v32 = 136642819;
    *(v32 + 4) = sub_1C441D828(a1, a2, &v39);
    _os_log_impl(&dword_1C43F8000, v30, v31, "No addresses found in string %{sensitive}s", v32, 0xCu);
    sub_1C440962C(v33);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  return 0;
}

void sub_1C49F2ED8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_1C4EFEEF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C4F01138();
  v12 = v11;
  if (v10 == sub_1C4F01138() && v12 == v13)
  {

    goto LABEL_36;
  }

  v15 = sub_1C4F02938();

  if (v15)
  {
LABEL_36:
    sub_1C4EFECD8();
LABEL_37:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    v56 = *a4;
    sub_1C46612A8();
    *a4 = v56;
    (*(v7 + 8))(v9, v6);
    return;
  }

  v16 = sub_1C4F01138();
  v18 = v17;
  if (v16 == sub_1C4F01138() && v18 == v19)
  {

    goto LABEL_39;
  }

  v21 = sub_1C4F02938();

  if (v21)
  {
LABEL_39:
    sub_1C4EFEDE8();
    goto LABEL_37;
  }

  v22 = sub_1C4F01138();
  v24 = v23;
  if (v22 == sub_1C4F01138() && v24 == v25)
  {

    goto LABEL_41;
  }

  v27 = sub_1C4F02938();

  if (v27)
  {
LABEL_41:
    sub_1C4EFE8D8();
    goto LABEL_37;
  }

  v28 = sub_1C4F01138();
  v30 = v29;
  if (v28 == sub_1C4F01138() && v30 == v31)
  {

    goto LABEL_43;
  }

  v33 = sub_1C4F02938();

  if (v33)
  {
LABEL_43:
    sub_1C4EFE5A8();
    goto LABEL_37;
  }

  v34 = sub_1C4F01138();
  v36 = v35;
  if (v34 == sub_1C4F01138() && v36 == v37)
  {

    goto LABEL_45;
  }

  v39 = sub_1C4F02938();

  if (v39)
  {
LABEL_45:
    sub_1C4EFEBF8();
    goto LABEL_37;
  }

  v40 = sub_1C4F01138();
  v42 = v41;
  if (v40 == sub_1C4F01138() && v42 == v43)
  {

    goto LABEL_47;
  }

  v45 = sub_1C4F02938();

  if (v45)
  {
LABEL_47:
    sub_1C4EFE378();
    goto LABEL_37;
  }

  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v46 = sub_1C4F00978();
  sub_1C442B738(v46, qword_1EDE2DE10);
  v47 = a1;
  v55 = sub_1C4F00968();
  v48 = sub_1C4F01CC8();

  if (os_log_type_enabled(v55, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v56 = v50;
    *v49 = 136315138;
    v51 = sub_1C4F01138();
    v53 = sub_1C441D828(v51, v52, &v56);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_1C43F8000, v55, v48, "Unsupported address type %s", v49, 0xCu);
    sub_1C440962C(v50);
    MEMORY[0x1C6942830](v50, -1, -1);
    MEMORY[0x1C6942830](v49, -1, -1);
  }

  else
  {
    v54 = v55;
  }
}

uint64_t LocationMatcher.stateStore.getter()
{
  type metadata accessor for LocationMatcher(0);
}

uint64_t sub_1C49F3460()
{
  v0 = sub_1C4EF9488();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1C44F9918(v7, qword_1EDE2D570);
  sub_1C442B738(v0, qword_1EDE2D570);
  sub_1C4EF9448();
  sub_1C4EF9438();
  sub_1C4EF9458();
  v8 = *(v1 + 8);
  v8(v3, v0);
  return (v8)(v6, v0);
}

uint64_t sub_1C49F3590()
{
  result = sub_1C4F00F28();
  qword_1EDE2CE98 = result;
  return result;
}

uint64_t sub_1C49F35CC()
{
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  sub_1C4EFEEF8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4F17D00;
  sub_1C4EFEBF8();
  sub_1C4EFE4C8();
  sub_1C4EFE748();
  sub_1C4EFE5A8();
  sub_1C4EFE4B8();
  sub_1C4EFEDE8();
  sub_1C4EFEA58();
  sub_1C4EFE8D8();
  sub_1C4EFEA78();
  sub_1C4EFE378();
  sub_1C4EFECD8();
  result = sub_1C4EFE688();
  qword_1EDE2CEA0 = v0;
  return result;
}

uint64_t LocationMatcher.stageName.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for LocationMatcher(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t sub_1C49F3784(uint64_t a1)
{
  v2 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  v64 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v5);
  v65 = v63 - v6;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v63 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v63 - v11;
  v13 = *(a1 + 16);
  v63[1] = a1;
  v14 = a1 + 32;
  v15 = MEMORY[0x1E69E7CC0];
  v69 = (v16 + 8);
  v66 = a1 + 32;
  for (i = v13; v13; --v13)
  {
    sub_1C442E860(v14, &v77);
    sub_1C4409678(&v77, v78);
    sub_1C4EFF7F8();
    sub_1C4EFE308();
    sub_1C4419F50();
    sub_1C49F87FC(&off_1EDDFCCA8, v17, MEMORY[0x1E69A9770]);
    sub_1C444FE94();
    sub_1C444FE94();
    if (v71 == v75 && v72 == v76)
    {
      v21 = *v69;
      (*v69)(v9, v2);
      v21(v12, v2);
    }

    else
    {
      sub_1C43FF3F8();
      v68 = sub_1C4F02938();
      v19 = v15;
      v20 = *v69;
      (*v69)(v9, v2);
      v20(v12, v2);
      v15 = v19;

      if ((v68 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    sub_1C4409678(&v77, v78);
    sub_1C43FBD30();
    if (sub_1C4EFF7D8() == 1145656661 && v22 == 0xE400000000000000)
    {

LABEL_16:
      sub_1C441D670(&v77, &v71);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79[0] = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C44F4214();
        v15 = v79[0];
      }

      v27 = *(v15 + 16);
      v26 = *(v15 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1C43FCFE8(v26);
        sub_1C44F4214();
      }

      v28 = v73;
      v29 = v74;
      sub_1C4418280(&v71, v73);
      sub_1C44335A8();
      MEMORY[0x1EEE9AC00](v30);
      sub_1C43FBCC4();
      v33 = v32 - v31;
      (*(v34 + 16))(v32 - v31);
      sub_1C44FDC24(v27, v33, v79, v28, v29);
      sub_1C440962C(&v71);
      v15 = v79[0];
      goto LABEL_21;
    }

    v24 = sub_1C4F02938();

    if (v24)
    {
      goto LABEL_16;
    }

LABEL_14:
    sub_1C440962C(&v77);
LABEL_21:
    v14 += 40;
  }

  v79[0] = v15;
  v35 = v65;
  if (!*(v15 + 16))
  {
    v36 = MEMORY[0x1E69E7CC0];
    v37 = v66;
    v38 = i;
    if (i)
    {
      do
      {
        v39 = v15;
        v66 = v37;
        i = v38;
        sub_1C442E860(v37, &v77);
        sub_1C4409678(&v77, v78);
        sub_1C43FBD30();
        sub_1C4EFF7F8();
        v40 = v64;
        sub_1C4EFE308();
        sub_1C4419F50();
        sub_1C49F87FC(&off_1EDDFCCA8, v41, MEMORY[0x1E69A9770]);
        sub_1C444FE94();
        sub_1C444FE94();
        v42 = v71 == v75 && v72 == v76;
        v43 = v35;
        if (v42)
        {
          v46 = *v69;
          (*v69)(v40, v2);
          v46(v43, v2);

          v15 = v39;
        }

        else
        {
          sub_1C43FF3F8();
          v44 = sub_1C4F02938();
          v45 = *v69;
          (*v69)(v40, v2);
          v45(v43, v2);

          v15 = v39;
          if ((v44 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        sub_1C4409678(&v77, v78);
        sub_1C43FBD30();
        if (sub_1C4EFF7D8() == 1145656653 && v47 == 0xE400000000000000)
        {

LABEL_38:
          sub_1C441D670(&v77, &v71);
          v50 = swift_isUniquelyReferenced_nonNull_native();
          v70 = v36;
          if ((v50 & 1) == 0)
          {
            sub_1C44F4214();
            v36 = v70;
          }

          v52 = *(v36 + 16);
          v51 = *(v36 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_1C43FCFE8(v51);
            sub_1C44F4214();
          }

          v53 = v73;
          v54 = v74;
          sub_1C4418280(&v71, v73);
          sub_1C44335A8();
          MEMORY[0x1EEE9AC00](v55);
          sub_1C43FBCC4();
          v58 = v57 - v56;
          (*(v59 + 16))(v57 - v56);
          sub_1C44FDC24(v52, v58, &v70, v53, v54);
          sub_1C440962C(&v71);
          v36 = v70;
          goto LABEL_43;
        }

        v49 = sub_1C4F02938();

        if (v49)
        {
          goto LABEL_38;
        }

LABEL_36:
        sub_1C440962C(&v77);
LABEL_43:
        v37 = v66 + 40;
        v38 = i - 1;
        v35 = v65;
      }

      while (i != 1);
    }

    v79[0] = v36;
  }

  sub_1C4409A34();
  v60 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v61 = sub_1C49F2988(v60, v79);
  sub_1C486C278(v61, &v77);

  if (v78)
  {
    sub_1C4409678(&v77, v78);
    sub_1C4EFF7D8();
    sub_1C440962C(&v77);
  }

  else
  {
    sub_1C4420C3C(&v77, &qword_1EC0C0F38, &qword_1C4F41A90);
  }

  return sub_1C43FBC98();
}

uint64_t sub_1C49F3F04(void *a1, uint64_t *a2)
{
  v45 = a2;
  v51 = sub_1C4EFF8A8();
  v43 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1C456902C(&qword_1EC0C0F40, &qword_1C4F41A98);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v37 - v4;
  v5 = sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v37 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = sub_1C4EFEEF8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  sub_1C4409678(a1, a1[3]);
  sub_1C4EFF7F8();
  sub_1C4EFE308();
  v19 = sub_1C44DBB50(v18, v15);
  v20 = *(v13 + 8);
  v20(v15, v12);
  v41 = v12;
  v20(v18, v12);
  if ((v19 & 1) == 0)
  {
    goto LABEL_11;
  }

  v38 = v20;
  sub_1C4409678(a1, a1[3]);
  sub_1C4EFF7B8();
  v42 = v11;
  sub_1C440BAA8(v11, 0, 1, v51);
  sub_1C486C278(*v45, v49);
  v39 = a1;
  if (v50)
  {
    sub_1C4409678(v49, v50);
    v21 = v47;
    sub_1C4EFF7B8();
    sub_1C440BAA8(v21, 0, 1, v51);
    sub_1C440962C(v49);
  }

  else
  {
    sub_1C4420C3C(v49, &qword_1EC0C0F38, &qword_1C4F41A90);
    v21 = v47;
    sub_1C440BAA8(v47, 1, 1, v51);
  }

  v22 = *(v46 + 48);
  v23 = v42;
  v24 = v48;
  sub_1C446C964(v42, v48, &qword_1EC0B9A10, &qword_1C4F107C0);
  sub_1C446C964(v21, v24 + v22, &qword_1EC0B9A10, &qword_1C4F107C0);
  if (sub_1C44157D4(v24, 1, v51) == 1)
  {
    sub_1C4420C3C(v21, &qword_1EC0B9A10, &qword_1C4F107C0);
    v24 = v48;
    sub_1C4420C3C(v23, &qword_1EC0B9A10, &qword_1C4F107C0);
    if (sub_1C44157D4(v24 + v22, 1, v51) == 1)
    {
      sub_1C4420C3C(v24, &qword_1EC0B9A10, &qword_1C4F107C0);
      v25 = v39;
LABEL_14:
      sub_1C4409678(v25, v25[3]);
      sub_1C4EFF7C8();
      sub_1C4EFE558();
      v28 = sub_1C44DBB50(v18, v15);
      v35 = v41;
      v36 = v38;
      v38(v15, v41);
      v36(v18, v35);
      return v28 & 1;
    }

    goto LABEL_10;
  }

  v26 = v44;
  sub_1C446C964(v24, v44, &qword_1EC0B9A10, &qword_1C4F107C0);
  v27 = sub_1C44157D4(v24 + v22, 1, v51);
  v25 = v39;
  if (v27 == 1)
  {
    sub_1C4420C3C(v47, &qword_1EC0B9A10, &qword_1C4F107C0);
    sub_1C4420C3C(v42, &qword_1EC0B9A10, &qword_1C4F107C0);
    (*(v43 + 8))(v26, v51);
LABEL_10:
    sub_1C4420C3C(v24, &qword_1EC0C0F40, &qword_1C4F41A98);
    goto LABEL_11;
  }

  v30 = v43;
  v31 = v24 + v22;
  v32 = v40;
  v33 = v51;
  (*(v43 + 32))(v40, v31, v51);
  sub_1C49F87FC(&unk_1EDDFCC80, MEMORY[0x1E69A99E8], MEMORY[0x1E69A9A08]);
  LODWORD(v46) = sub_1C4F010B8();
  v34 = *(v30 + 8);
  v34(v32, v33);
  sub_1C4420C3C(v47, &qword_1EC0B9A10, &qword_1C4F107C0);
  sub_1C4420C3C(v42, &qword_1EC0B9A10, &qword_1C4F107C0);
  v34(v44, v33);
  sub_1C4420C3C(v48, &qword_1EC0B9A10, &qword_1C4F107C0);
  if (v46)
  {
    goto LABEL_14;
  }

LABEL_11:
  v28 = 0;
  return v28 & 1;
}

id sub_1C49F4560(uint64_t a1)
{
  v2 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  sub_1C4419F50();
  sub_1C49F87FC(v15, v16, MEMORY[0x1E69A9758]);
  v39 = sub_1C4F00F28();
  v17 = (a1 + 32);
  v18 = *(a1 + 16) + 1;
  while (--v18)
  {
    v19 = v17 + 5;
    sub_1C49F47D4(&v39, v17);
    v17 = v19;
  }

  v20 = v39;
  sub_1C4EFEDD8();
  sub_1C465C38C(v14, v20);
  v22 = v21;
  v23 = *(v4 + 8);
  v24 = sub_1C43FFE3C();
  v23(v24);
  if (v22 && (v25 = sub_1C43FFE24(), v27 = sub_1C49F2108(v25, v26), (v28 & 1) == 0) && (v29 = *&v27, sub_1C4EFEEB8(), sub_1C465C38C(v11, v20), v31 = v30, (v23)(v11, v2), v31) && (v32 = sub_1C43FFE24(), v34 = sub_1C49F2108(v32, v33), (v35 & 1) == 0))
  {
    v36 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v29 longitude:*&v34];
  }

  else
  {
    v36 = 0;
  }

  sub_1C4EFEBF8();
  sub_1C465C38C(v8, v20);
  (v23)(v8, v2);
  return v36;
}

uint64_t sub_1C49F47D4(uint64_t *a1, void *a2)
{
  v38 = a1;
  v3 = sub_1C4EFEEF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = a2[4];
  sub_1C4409678(a2, a2[3]);
  v40 = v10;
  sub_1C4EFF7F8();
  sub_1C4EFE2E8();
  v11 = sub_1C44DBB50(v9, v6);
  v12 = *(v4 + 8);
  v12(v6, v3);
  v41 = v12;
  v12(v9, v3);
  v39 = v3;
  if (v11)
  {
    sub_1C4409678(a2, a2[3]);
    v3 = v39;
    v13 = sub_1C4EFF7D8();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      sub_1C4409678(a2, a2[3]);
      v3 = v39;
      v17 = sub_1C4EFF7D8();
      v19 = sub_1C49F2108(v17, v18);
      if ((v20 & 1) != 0 || (v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_18;
      }
    }
  }

  sub_1C4EFF7F8();
  sub_1C4EFEBF8();
  v21 = sub_1C44DBB50(v9, v6);
  v22 = v41;
  v41(v6, v3);
  v22(v9, v3);
  if ((v21 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1C4409678(a2, a2[3]);
  v3 = v39;
  v23 = sub_1C4EFF7D8();
  v25 = v24;

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
LABEL_12:
    sub_1C4EFF7F8();
    sub_1C4EFE378();
    v27 = sub_1C44DBB50(v9, v6);
    v28 = v41;
    v41(v6, v3);
    v28(v9, v3);
    if (v27)
    {
      sub_1C4409678(a2, a2[3]);
      v3 = v39;
      v29 = sub_1C4EFF7D8();
      v31 = v30;

      v32 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v32 = v29 & 0xFFFFFFFFFFFFLL;
      }

      if (v32)
      {
        sub_1C4EFE378();
        goto LABEL_19;
      }
    }

    sub_1C4EFF7F8();
    sub_1C4EFE2D8();
    v33 = sub_1C44DBB50(v9, v6);
    v34 = v41;
    v41(v6, v3);
    result = v34(v9, v3);
    if ((v33 & 1) == 0)
    {
      return result;
    }

LABEL_18:
    sub_1C4409678(a2, a2[3]);
    sub_1C4EFF7C8();
    goto LABEL_19;
  }

  sub_1C4EFEBF8();
LABEL_19:
  sub_1C4409678(a2, a2[3]);
  sub_1C4EFF7D8();
  v36 = v38;
  swift_isUniquelyReferenced_nonNull_native();
  v42 = *v36;
  sub_1C46612A8();
  *v36 = v42;
  return (v41)(v9, v3);
}

void sub_1C49F4C08(uint64_t a1, uint64_t a2)
{
  v2 = objc_autoreleasePoolPush();
  sub_1C4415EA8();
  v3 = sub_1C4F01FC8();
  v4 = *(v3 + 16);
  if (v4)
  {
    v23 = v2;
    v24 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v4, 0);
    v5 = 0;
    v6 = (v3 + 40);
    while (v5 < *(v3 + 16))
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = qword_1EDDE7958;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v9 != -1)
      {
        sub_1C4432660();
        swift_once();
      }

      v10 = qword_1EDE2CE98;
      v11 = sub_1C4F00FF8();
      if (*(v10 + 16))
      {
        v13 = sub_1C445FAA8(v11, v12);
        if (v14)
        {
          v15 = (*(v10 + 56) + 16 * v13);
          v7 = *v15;
          v16 = v15[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          v8 = v16;
        }
      }

      v18 = *(v24 + 16);
      v17 = *(v24 + 24);
      if (v18 >= v17 >> 1)
      {
        v20 = sub_1C43FCFE8(v17);
        sub_1C44CD9C0(v20, v18 + 1, 1);
      }

      ++v5;
      *(v24 + 16) = v18 + 1;
      v19 = v24 + 16 * v18;
      *(v19 + 32) = v7;
      *(v19 + 40) = v8;
      v6 += 2;
      if (v4 == v5)
      {

        v2 = v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_14:
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C44134BC();
    sub_1C4401CBC(v21, &unk_1EC0B9620, &unk_1C4F0E870, v22);
    sub_1C4F01048();

    objc_autoreleasePoolPop(v2);
  }
}

uint64_t sub_1C49F4E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  sub_1C465C38C(a3, a1);
  if (v7)
  {
    sub_1C465C38C(a3, a2);
    if (v8)
    {
      sub_1C4415EA8();
      sub_1C44104C0();

      sub_1C44104C0();

      v9 = sub_1C4F00FF8();
      v11 = v10;

      v12 = sub_1C4F00FF8();
      v14 = v13;

      if (v9 == v12 && v11 == v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = sub_1C4F02938();
      }

      v19 = v16 & 1;
      goto LABEL_14;
    }
  }

  sub_1C465C38C(a3, a1);
  if (v17 || (sub_1C465C38C(a3, a2), v18))
  {

    v19 = 0;
  }

  else
  {
    v19 = 2;
  }

LABEL_14:
  objc_autoreleasePoolPop(v6);
  return v19;
}

uint64_t sub_1C49F4FD8(uint64_t a1, void *a2, uint64_t a3)
{
  v120 = a2;
  v5 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v119 = v9 - v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v114 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v114 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v114 - v18;
  sub_1C4EFE5A8();
  v20 = sub_1C465C38C(v19, a1);
  v22 = v21;
  v121 = *(v7 + 8);
  (v121)(v19, v5);
  if (v22)
  {
    v23 = sub_1C4F00FF8();
    v25 = v24;

    v122 = v23;
    v123 = v25;
    sub_1C4415EA8();
    sub_1C4F01FF8();
    sub_1C4426CC8();
  }

  else
  {
    v23 = 0;
  }

  v118 = a3;
  sub_1C4EFE5A8();
  v26 = sub_1C465C38C(v16, v120);
  v28 = v27;
  (v121)(v16, v5);
  if (v28)
  {
    v29 = sub_1C4F00FF8();
    v31 = v30;

    v122 = v29;
    v123 = v31;
    sub_1C4415EA8();
    v26 = sub_1C4F01FF8();
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  sub_1C4EFE748();
  sub_1C465C38C(v13, a1);
  v35 = v34;
  (v121)(v13, v5);
  if (v35)
  {
    v36 = sub_1C4F00FF8();
    v38 = v37;

    v122 = v36;
    v123 = v38;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](32, 0xE100000000000000);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v39 = sub_1C43FE99C();
    MEMORY[0x1C6940010](v39);

    v20 = v122;
    v23 = v123;
  }

  v40 = v119;
  sub_1C4EFE748();
  sub_1C465C38C(v40, v120);
  v42 = v41;
  (v121)(v40, v5);
  if (v42)
  {
    v43 = sub_1C4F00FF8();
    v45 = v44;

    v122 = v43;
    v123 = v45;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](32, 0xE100000000000000);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v46 = sub_1C43FFE24();
    MEMORY[0x1C6940010](v46);

    v26 = v122;
    v33 = v123;
  }

  if (!v23)
  {
    if (!v33)
    {
      return 1;
    }

    goto LABEL_20;
  }

  if (!v33)
  {
LABEL_20:

    return 0;
  }

  if (v20 == v26 && v23 == v33)
  {
    goto LABEL_18;
  }

  sub_1C43FE99C();
  if (sub_1C4F02938())
  {
    goto LABEL_18;
  }

  v122 = v20;
  v123 = v23;
  v126 = 32;
  v127 = 0xE100000000000000;
  sub_1C4415EA8();
  v49 = sub_1C4415B5C(&v126);

  v122 = v26;
  v123 = v33;
  v126 = 32;
  v127 = 0xE100000000000000;
  v50 = sub_1C4415B5C(&v126);
  v51 = v50;
  if (v49[2] <= 2uLL || (v52 = *(v50 + 16), v52 <= 2))
  {
LABEL_46:

    goto LABEL_20;
  }

  v121 = v49[2];
  v117 = v52;
  v53 = v49[4];
  v116 = v49 + 4;
  v54 = v49[5];
  v122 = v53;
  v123 = v54;
  sub_1C4F01FF8();
  v56 = v55;
  v57 = sub_1C4F00FF8();
  v59 = v58;

  if (v51[2])
  {
    v120 = v51;
    v60 = v51[4];
    v115 = v51 + 4;
    v61 = v51[5];
    v122 = v60;
    v123 = v61;
    sub_1C4F01FF8();
    v119 = sub_1C4F00FF8();
    v56 = v62;

    if (qword_1EDDE7958 == -1)
    {
      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1C4432660();
  swift_once();
LABEL_27:
  v63 = qword_1EDE2CE98;
  v64 = sub_1C4F00FF8();
  v66 = sub_1C44735D4(v64, v65, v63);
  v68 = v67;

  if (v68)
  {

    v59 = v68;
  }

  else
  {
    v66 = v57;
  }

  v69 = v119;
  v70 = sub_1C4F00FF8();
  v72 = sub_1C44735D4(v70, v71, v63);
  v74 = v73;

  if (v74)
  {

    v69 = v72;
    v56 = v74;
  }

  if (v66 == v69 && v59 == v56)
  {
  }

  else
  {
    sub_1C43FF3F8();
    v76 = sub_1C4F02938();

    if ((v76 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  v77 = v120;
  if (v121 > v49[2])
  {
    __break(1u);
  }

  else
  {
    v78 = &v116[2 * v121];
    v80 = *(v78 - 2);
    v79 = *(v78 - 1);
    v122 = v80;
    v123 = v79;
    sub_1C4F01FF8();
    v81 = sub_1C4F00FF8();
    v83 = v82;

    if (v117 <= *(v77 + 16))
    {
      v84 = &v115[2 * v117];
      v86 = *(v84 - 2);
      v85 = *(v84 - 1);
      v122 = v86;
      v123 = v85;
      sub_1C4F01FF8();
      v87 = sub_1C4F00FF8();
      v89 = v88;

      if (v81 == v87 && v83 == v89)
      {
      }

      else
      {
        sub_1C43FF3F8();
        v91 = sub_1C4F02938();

        if ((v91 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      v92 = sub_1C4499330(1);
      v94 = v93;
      v96 = v95;
      v98 = v97;

      v122 = v92;
      v123 = v94;
      v124 = v96;
      v125 = v98;
      sub_1C456902C(&qword_1EC0C0F30, &qword_1C4F41A88);
      sub_1C4401CBC(&qword_1EDDFCDC8, &qword_1EC0C0F30, &qword_1C4F41A88, MEMORY[0x1E69E6958]);
      sub_1C4408DA4();
      v99 = sub_1C4F01048();
      v101 = v100;
      swift_unknownObjectRelease();
      v102 = sub_1C4499330(1);
      v104 = v103;
      v106 = v105;
      v108 = v107;

      v122 = v102;
      v123 = v104;
      v124 = v106;
      v125 = v108;
      sub_1C4408DA4();
      v109 = sub_1C4F01048();
      v111 = v110;
      swift_unknownObjectRelease();
      if (v99 == v109 && v101 == v111)
      {

LABEL_18:

        return 1;
      }

      sub_1C43FF3F8();
      v113 = sub_1C4F02938();

      return (v113 & 1) != 0;
    }
  }

  __break(1u);
  return result;
}

float sub_1C49F5850(uint64_t a1, void *a2)
{
  if (qword_1EDDF6740 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4EF9488();
  v6 = sub_1C442B738(v5, qword_1EDE2D570);
  v7 = objc_autoreleasePoolPush();
  LOBYTE(v6) = sub_1C49F4FD8(a1, a2, v6);
  objc_autoreleasePoolPop(v7);
  v8 = 0.0;
  if (v6)
  {
    sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
    sub_1C4EFEEF8();
    *(swift_allocObject() + 16) = xmmword_1C4F0CE60;
    sub_1C4EFE4C8();
    sub_1C4EFE378();
    sub_1C4D504A4();
    v10 = v9;
    MEMORY[0x1EEE9AC00](v9);
    sub_1C49C0954(sub_1C49F8738, &v31, v10, v11, v12, v13, v14, v15, v31, v32, v33, v34, v35, v2, a1, a2, v36, v37, v38, v39, v40, v41, v42);
    v17 = v16;

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v18;
      v37 = MEMORY[0x1E69E7CC0];
      sub_1C459D3B0(0, v18, 0);
      v20 = v37;
      v21 = *(v37 + 16);
      v22 = 32;
      do
      {
        if (*(v17 + v22))
        {
          v23 = 1.0;
        }

        else
        {
          v23 = 0.0;
        }

        v37 = v20;
        v24 = *(v20 + 24);
        if (v21 >= v24 >> 1)
        {
          v25 = sub_1C43FCFE8(v24);
          sub_1C459D3B0(v25, v21 + 1, 1);
          v20 = v37;
        }

        *(v20 + 16) = v21 + 1;
        *(v20 + 4 * v21 + 32) = v23;
        ++v22;
        ++v21;
        --v18;
      }

      while (v18);

      v26 = *(v20 + 16);
      if (v26)
      {
        v27 = (v20 + 32);
        v28 = 0.0;
        do
        {
          v29 = *v27++;
          v28 = v28 + v29;
          --v26;
        }

        while (v26);
      }

      else
      {
        v28 = 0.0;
      }

      return v28 / v19;
    }

    else
    {
    }
  }

  return v8;
}

uint64_t sub_1C49F5B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (qword_1EDDF6740 != -1)
  {
    swift_once();
  }

  v8 = sub_1C4EF9488();
  sub_1C442B738(v8, qword_1EDE2D570);
  result = sub_1C49F4E44(a2, a3, a1);
  *a4 = result;
  return result;
}

uint64_t sub_1C49F5BA0(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11 = *(v6 + *(type metadata accessor for LocationMatcher(0) + 40));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = sub_1C49F2B98(v9, v10, v11);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C43FFE24();
  v15 = sub_1C49F2B98(v13, v14, v11);

  if (!v12)
  {
    sub_1C4EFEEF8();
    sub_1C4419F50();
    sub_1C49F87FC(v16, v17, MEMORY[0x1E69A9758]);
    v12 = sub_1C4F00F28();
  }

  v18 = sub_1C49F5850(v12, a6);

  sub_1C458BE6C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v20 = v19;
  v22 = *(v19 + 16);
  v21 = *(v19 + 24);
  if (v22 >= v21 >> 1)
  {
    v32 = sub_1C43FCFE8(v21);
    sub_1C458BE6C(v32, v22 + 1, 1, v20);
    v20 = v33;
  }

  *(v20 + 16) = v22 + 1;
  *(v20 + 4 * v22 + 32) = v18;
  if (!v15)
  {
    sub_1C4EFEEF8();
    sub_1C4419F50();
    sub_1C49F87FC(v23, v24, MEMORY[0x1E69A9758]);
    v15 = sub_1C4F00F28();
  }

  v25 = sub_1C49F5850(a3, v15);

  v27 = *(v20 + 16);
  v26 = *(v20 + 24);
  if (v27 >= v26 >> 1)
  {
    v34 = sub_1C43FCFE8(v26);
    sub_1C458BE6C(v34, v27 + 1, 1, v20);
    v20 = v35;
  }

  *(v20 + 16) = v27 + 1;
  *(v20 + 4 * v27 + 32) = v25;
  v28 = sub_1C49F5850(a3, a6);
  v30 = *(v20 + 16);
  v29 = *(v20 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_1C43FCFE8(v29);
    sub_1C4401DCC();
    sub_1C458BE6C(v36, v37, v38, v20);
    v20 = v39;
  }

  *(v20 + 16) = v30 + 1;
  *(v20 + 4 * v30 + 32) = v28;
  sub_1C4613518(v20);
}

uint64_t sub_1C49F5E34(uint64_t a1, uint64_t (*a2)(void, __n128), uint64_t a3, void (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  v10 = objc_autoreleasePoolPush();
  sub_1C49F5EC0(a1, v13, &v12, a2, a3, a4, a2, a5);
  objc_autoreleasePoolPop(v10);
  return v13[0];
}

uint64_t sub_1C49F5EC0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void, __n128), uint64_t a5, void (*a6)(void), uint64_t a7, void (*a8)(BOOL, uint64_t, uint64_t))
{
  v176 = a8;
  v182 = a7;
  v187 = a6;
  v193 = a5;
  v174 = a2;
  sub_1C43FBE94();
  v178 = sub_1C4EF9488();
  sub_1C43FCDF8();
  v172 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v177 = v13 - v12;
  v14 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBD08();
  v20 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  v180 = v24;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v171 - v31;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  sub_1C43FBF28();
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = v171 - v39;
  v195 = a4(0, v38);
  sub_1C43FCDF8();
  v184 = v41;
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBD08();
  v189 = v43 - v44;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  v181 = v46;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v47);
  v49 = v171 - v48;
  v50 = 0;
  v183 = v8;
  v185 = *(v8 + 16);
  v201 = (v16 + 16);
  v194 = (v16 + 8);
  v186 = MEMORY[0x1E69E7CC0];
  v188 = v32;
  v192 = v171 - v48;
LABEL_2:
  while (v50 != v185)
  {
    v51 = (*(v184 + 80) + 32) & ~*(v184 + 80);
    v190 = *(v184 + 72);
    v191 = v51;
    sub_1C44719E4(v183 + v51 + v190 * v50, v49);
    if (qword_1EDDE7960 != -1)
    {
      swift_once();
    }

    v196 = v50 + 1;
    v52 = qword_1EDE2CEA0;
    (*v201)(v40, v49 + *(v195 + 28), v14);
    v53 = 0;
    v54 = *(v52 + 16);
    do
    {
      if (v54 == v53)
      {
        v64 = sub_1C44252CC();
        v65(v64);
        v49 = v192;
        sub_1C447EA28(v192, v187);
        v32 = v188;
        v50 = v196;
        goto LABEL_2;
      }

      v55 = v53 + 1;
      sub_1C442FF7C();
      sub_1C4419F50();
      sub_1C49F87FC(&qword_1EDDFCCB0, v56, MEMORY[0x1E69A9768]);
      v57 = sub_1C4F010B8();
      v53 = v55;
    }

    while ((v57 & 1) == 0);
    v58 = sub_1C44252CC();
    v59(v58);
    sub_1C44DD7A8(v192, v181);
    v60 = v186;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v199 = v60;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v176(0, *(v60 + 16) + 1, 1);
      v60 = v199;
    }

    v63 = *(v60 + 16);
    v62 = *(v60 + 24);
    if (v63 >= v62 >> 1)
    {
      v176(v62 > 1, v63 + 1, 1);
      v60 = v199;
    }

    *(v60 + 16) = v63 + 1;
    v186 = v60;
    sub_1C44DD7A8(v181, v60 + v191 + v63 * v190);
    v32 = v188;
    v49 = v192;
    v50 = v196;
  }

  sub_1C4419F50();
  sub_1C49F87FC(v66, v67, MEMORY[0x1E69A9758]);
  v192 = sub_1C4F00F28();
  v190 = *(v186 + 16);
  if (v190)
  {
    v68 = 0;
    v185 = (v186 + ((*(v184 + 80) + 32) & ~*(v184 + 80)));
    v184 = *(v184 + 72);
    v181 = (v172 + 8);
    do
    {
      v49 = v189;
      sub_1C44719E4(&v185[v184 * v68], v189);
      if (qword_1EDDE7960 != -1)
      {
        swift_once();
      }

      v196 = v68 + 1;
      v69 = qword_1EDE2CEA0;
      v70 = *v201;
      v191 = *(v195 + 28);
      v70(v20, v49 + v191, v14);
      v71 = 0;
      v72 = *(v69 + 16);
      while (v72 != v71)
      {
        v73 = (v71 + 1);
        sub_1C442FF7C();
        sub_1C4419F50();
        sub_1C49F87FC(&qword_1EDDFCCB0, v74, MEMORY[0x1E69A9768]);
        v75 = sub_1C4F010B8();
        v71 = v73;
        if (v75)
        {
          v76 = sub_1C44051B0();
          v77(v76);
          v78 = v189;
          v79 = (v189 + *(v195 + 32));
          v80 = v79[1];
          v199 = *v79;
          v200 = v80;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v49 = v177;
          sub_1C4EF9448();
          sub_1C4415EA8();
          v81 = sub_1C4F01FF8();
          v182 = v82;
          v183 = v81;
          (*v181)(v49, v178);

          v83 = v192;
          swift_isUniquelyReferenced_nonNull_native();
          v199 = v83;
          sub_1C46612A8();
          sub_1C447EA28(v78, v187);
          v192 = v199;
          goto LABEL_23;
        }
      }

      v84 = sub_1C44051B0();
      v85(v84);
      sub_1C447EA28(v189, v187);
LABEL_23:
      v68 = v196;
    }

    while (v196 != v190);

    v32 = v188;
  }

  else
  {

    v72 = v194;
  }

  if (qword_1EDDE7960 != -1)
  {
    swift_once();
  }

  v86 = *(qword_1EDE2CEA0 + 16);
  v87 = v192;
  if (v86)
  {
    sub_1C442FF7C();
    v90 = v88 + v89;
    v91 = *(v16 + 72);
    v196 = *(v16 + 16);
    v191 = MEMORY[0x1E69E7CC0];
    v193 = MEMORY[0x1E69E7CC0];
    v92 = v179;
    v195 = v91;
    while (1)
    {
      (v196)(v92, v90, v14);
      if (*(v87 + 16))
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C457AB64();
        sub_1C441C3A8();
        if (v49)
        {
          break;
        }
      }

      (*v72)(v92, v14);
LABEL_50:
      v90 += v91;
      if (!--v86)
      {
        goto LABEL_72;
      }
    }

    v192 = v87;
    sub_1C4EFECD8();
    sub_1C4419F50();
    sub_1C49F87FC(&off_1EDDFCCA8, v93, MEMORY[0x1E69A9770]);
    sub_1C43FFE3C();
    sub_1C4F01578();
    sub_1C43FFE3C();
    sub_1C4F01578();
    if (v199 == v197 && v200 == v198)
    {
      v95 = 1;
    }

    else
    {
      sub_1C43FF3F8();
      v95 = sub_1C4F02938();
    }

    v96 = *v72;
    (*v72)(v180, v14);

    if ((v95 & 1) == 0)
    {
      v97 = v175;
      sub_1C4EFE688();
      sub_1C43FFE3C();
      sub_1C4F01578();
      sub_1C43FFE3C();
      sub_1C4F01578();
      if (v199 == v197 && v200 == v198)
      {
        v105 = v97;
        v72 = v194;
        v96(v105, v14);
      }

      else
      {
        v99 = sub_1C4F02938();
        v100 = v97;
        v72 = v194;
        v96(v100, v14);

        if ((v99 & 1) == 0)
        {
          sub_1C4415B50();
          sub_1C4EFEBF8();
          sub_1C4419F50();
          sub_1C49F87FC(&qword_1EDDFCCB0, v101, MEMORY[0x1E69A9768]);
          sub_1C4409A34();
          v102 = sub_1C4F010B8();
          v96(v99, v14);
          if (v102)
          {
            v104 = v191;
            v103 = v192;
          }

          else
          {
            v104 = v191;
            v106 = v192;
            if (*(v192 + 16) && (sub_1C4409A34(), sub_1C457AB64(), (v108 & 1) != 0))
            {
              v109 = (*(v106 + 56) + 16 * v107);
              v111 = *v109;
              v110 = v109[1];
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            }

            else
            {
              v111 = 0;
              v110 = 0xE000000000000000;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C43FCEC0();
              sub_1C443D664();
              v193 = v126;
            }

            v112 = *(v193 + 16);
            if (v112 >= *(v193 + 24) >> 1)
            {
              sub_1C443D664();
              v193 = v127;
            }

            v113 = v193;
            *(v193 + 16) = v112 + 1;
            v114 = v113 + 16 * v112;
            *(v114 + 32) = v111;
            *(v114 + 40) = v110;
            v103 = v192;
          }

          v115 = *(v103 + 16);
          v192 = v103;
          if (v115 && (sub_1C4409A34(), sub_1C457AB64(), (v117 & 1) != 0))
          {
            v118 = (*(v103 + 56) + 16 * v116);
            v49 = v118[1];
            v190 = *v118;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          else
          {
            v190 = 0;
            v49 = 0xE000000000000000;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C43FCEC0();
            sub_1C443D664();
            v104 = v124;
          }

          v119 = *(v104 + 16);
          v120 = v96;
          if (v119 >= *(v104 + 24) >> 1)
          {
            sub_1C443D664();
            v191 = v125;
          }

          else
          {
            v191 = v104;
          }

          v92 = v179;
          v72 = v194;
          v120(v179, v14);
          v122 = v190;
          v121 = v191;
          *(v191 + 16) = v119 + 1;
          v123 = v121 + 16 * v119;
          *(v123 + 32) = v122;
          *(v123 + 40) = v49;
          goto LABEL_49;
        }
      }
    }

    v49 = v179;
    v96(v179, v14);
    v92 = v49;
LABEL_49:
    v87 = v192;
    v32 = v188;
    v91 = v195;
    goto LABEL_50;
  }

  v191 = MEMORY[0x1E69E7CC0];
  v193 = MEMORY[0x1E69E7CC0];
LABEL_72:
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v128 = v173;
  sub_1C4EFECD8();
  v129 = v87;
  if (*(v87 + 16))
  {
    sub_1C457AB64();
    sub_1C441C3A8();
    v130 = v128;
    v131 = *v72;
    (*v72)(v130, v14);
    if (v49)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v132 = v171[5];
      sub_1C4EFE688();
      if (*(v87 + 16))
      {
        sub_1C457AB64();
        sub_1C441C3A8();
        v131(v132, v14);
        if (v49)
        {
          sub_1C4415B50();
          sub_1C4EFE688();
          sub_1C465C38C(v32, v87);
          v133 = sub_1C4417528();
          (v131)(v133);
          if (v87)
          {
            v134 = v49;
          }

          else
          {
            v134 = 0;
          }

          if (!v87)
          {
            v87 = 0xE000000000000000;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C43FCEC0();
            sub_1C443D664();
            v193 = v169;
          }

          sub_1C441BB44();
          if (v135)
          {
            sub_1C4401DCC();
            sub_1C443D664();
            v193 = v170;
          }

LABEL_99:
          sub_1C441E5A8();
          sub_1C4415B50();
          sub_1C4EFE688();
          sub_1C465C38C(v134, v129);
          v138 = sub_1C4417528();
          (v131)(v138);
          goto LABEL_111;
        }
      }

      else
      {

        v131(v132, v14);
      }
    }
  }

  else
  {

    v136 = v128;
    v131 = *v72;
    (*v72)(v136, v14);
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFE688();
  if (*(v87 + 16))
  {
    sub_1C457AB64();
    sub_1C441C3A8();
    v131(v32, v14);
    if (v49)
    {
      sub_1C4415B50();
      sub_1C4EFE688();
      sub_1C465C38C(v32, v87);
      v137 = sub_1C4417528();
      (v131)(v137);
      if (v87)
      {
        v134 = v49;
      }

      else
      {
        v134 = 0;
      }

      if (!v87)
      {
        v87 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C443D664();
        v193 = v167;
      }

      sub_1C441BB44();
      if (v135)
      {
        sub_1C4401DCC();
        sub_1C443D664();
        v193 = v168;
      }

      goto LABEL_99;
    }
  }

  else
  {

    v131(v32, v14);
  }

  v139 = v171[6];
  sub_1C4EFECD8();
  sub_1C465C38C(v139, v87);
  v140 = sub_1C4404574();
  (v131)(v140);
  if (v87)
  {
    v141 = v49;
  }

  else
  {
    v141 = 0;
  }

  if (!v87)
  {
    v87 = 0xE000000000000000;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C43FCEC0();
    sub_1C443D664();
    v193 = v165;
  }

  v142 = *(v193 + 16);
  v49 = v142 + 1;
  if (v142 >= *(v193 + 24) >> 1)
  {
    sub_1C4401DCC();
    sub_1C443D664();
    v193 = v166;
  }

  v143 = v193;
  *(v193 + 16) = v49;
  v144 = v143 + 16 * v142;
  *(v144 + 32) = v141;
  *(v144 + 40) = v87;
  v145 = v171[7];
  sub_1C4EFECD8();
  sub_1C465C38C(v145, v129);
  v146 = sub_1C4404574();
  (v131)(v146);
LABEL_111:
  v147 = v191;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C43FCEC0();
    sub_1C443D664();
    v147 = v163;
  }

  v148 = *(v147 + 16);
  if (v148 >= *(v147 + 24) >> 1)
  {
    sub_1C4401DCC();
    sub_1C443D664();
    v147 = v164;
  }

  *(v147 + 16) = v148 + 1;
  v149 = v147 + 16 * v148;
  *(v149 + 32) = v49;
  *(v149 + 40) = v87;
  v199 = v147;
  v150 = sub_1C43FBC98();
  sub_1C456902C(v150, v151);
  sub_1C44134BC();
  sub_1C4401CBC(v152, &unk_1EC0B9620, &unk_1C4F0E870, v153);
  sub_1C4408DA4();
  v154 = sub_1C4F01048();
  v156 = v155;

  v199 = v193;
  sub_1C4408DA4();
  v157 = sub_1C4F01048();
  v159 = v158;

  v160 = HIBYTE(v159) & 0xF;
  if ((v159 & 0x2000000000000000) == 0)
  {
    v160 = v157 & 0xFFFFFFFFFFFFLL;
  }

  v161 = v174;
  if (!v160)
  {
    *v174 = v154;
    v161[1] = v156;
  }

  *v161 = v157;
  v161[1] = v159;
}

float sub_1C49F6FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void, __n128), uint64_t a6, void (*a7)(void), void (*a8)(BOOL, uint64_t, uint64_t))
{
  sub_1C44F40EC();
  v14 = sub_1C49F4560(v13);
  v73 = v15;
  v74 = v14;
  v72 = v16;
  v18 = v17;

  v19 = a4(a2);
  v76 = sub_1C49F4560(v19);
  v71 = v20;
  v22 = v21;
  v24 = v23;

  sub_1C44F40EC();
  sub_1C49F3784(v25);
  sub_1C4426CC8();

  v65 = a2;
  v26 = a4(a2);
  v27 = sub_1C49F3784(v26);
  v29 = v28;

  if (v8 && v29)
  {
    v30 = v9 == 48 && v8 == 0xE100000000000000;
    v31 = v76;
    if (!v30)
    {
      sub_1C43FE99C();
      if ((sub_1C4F02938() & 1) == 0)
      {

        if (v9 == v27 && v8 == v29)
        {

          v36 = 1.0;
        }

        else
        {
          sub_1C43FE99C();
          sub_1C43FF3F8();
          v62 = sub_1C4F02938();

          if (v62)
          {
            v36 = 1.0;
          }

          else
          {
            v36 = 0.0;
          }
        }

        return v36;
      }
    }
  }

  else
  {

    v31 = v76;
  }

  if (v74)
  {
    if (v31)
    {
      [v74 distanceFromLocation_];
      if (v32 < 5.0)
      {

        [v74 distanceFromLocation_];
        v34 = v33;

        v35 = v34 / -5.0;
        return v35 + 1.0;
      }
    }
  }

  v38 = v71;
  v37 = v72;
  if (v18 && v22)
  {
    v39 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v39 = v72 & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      v40 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v40 = v71 & 0xFFFFFFFFFFFFLL;
      }

      if (v40)
      {
        sub_1C4F00FF8();
        sub_1C4426CC8();
        if (v9 == sub_1C4F00FF8() && v8 == v41)
        {

          goto LABEL_51;
        }

        sub_1C43FE99C();
        sub_1C43FF3F8();
        v9 = sub_1C4F02938();

        v38 = v71;
        v37 = v72;
        if (v9)
        {

LABEL_51:

          goto LABEL_52;
        }
      }
    }
  }

  sub_1C49F5BA0(v37, v18, v73, v38, v22, v24);
  v36 = v43;

  if (v36 > 0.8)
  {

LABEL_52:
    return 1.0;
  }

  if (!*(v70 + *(type metadata accessor for LocationMatcher(0) + 36)))
  {

    goto LABEL_42;
  }

  sub_1C49F5E34(a1, type metadata accessor for EntityTriple, type metadata accessor for EntityTriple, type metadata accessor for EntityTriple, sub_1C459DCC0);
  sub_1C4426CC8();
  v44 = sub_1C49F5E34(v65, a5, a6, a7, a8);
  v46 = v45;
  v47 = HIBYTE(v73) & 0xF;
  if ((v73 & 0x2000000000000000) == 0)
  {
    v47 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v47)
  {
    goto LABEL_40;
  }

  v48 = v44;
  v49 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v49 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {
LABEL_40:

LABEL_42:
    return 0.0;
  }

  v50 = sub_1C43FE99C();
  sub_1C49F4C08(v50, v51);
  v53 = v52;
  v55 = v54;

  sub_1C49F4C08(v48, v46);
  v57 = v56;
  v59 = v58;

  v60 = sub_1C4576D84(v53, v55, v57, v59, a3);
  if (!v75)
  {
    v36 = v60;
  }

  return v36;
}

uint64_t sub_1C49F74EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a3;
  v77 = a2;
  v79 = a1;
  v73 = a4;
  v72 = sub_1C4EF9CD8();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v64 - v9;
  v11 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BC900, byte_1C4F142D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v64 - v15;
  v17 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64 - v24;
  v26 = v80;
  result = sub_1C44DC054();
  if (!v26)
  {
    v68 = v13;
    v69 = v10;
    v65 = v19;
    v66 = v22;
    v28 = v75;
    v29 = v76;
    v80 = 0;
    v30 = v74;
    v67 = v4;
    if (v77)
    {
      v31 = v77;
      sub_1C44F1938(v77, v16);
      v32 = type metadata accessor for GraphTriple(0);
      v33 = v29;
      v34 = v11;
      if (sub_1C44157D4(v16, 1, v32) == 1)
      {
        sub_1C4420C3C(v16, &unk_1EC0BC900, byte_1C4F142D0);
        v35 = 1;
      }

      else
      {
        (*(v30 + 16))(v25, v16, v28);
        sub_1C447EA28(v16, type metadata accessor for GraphTriple);
        v35 = 0;
      }
    }

    else
    {
      v31 = 0;
      v35 = 1;
      v33 = v76;
      v34 = v11;
    }

    v36 = v25;
    sub_1C440BAA8(v25, v35, 1, v28);
    v37 = v69;
    sub_1C44D0BD8(v79, v69);
    v38 = sub_1C44157D4(v37, 1, v34);
    v39 = v78;
    if (v38 == 1)
    {
      sub_1C4420C3C(v37, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v40 = sub_1C4F00978();
      sub_1C442B738(v40, qword_1EDE2DE10);
      v41 = sub_1C4F00968();
      v42 = sub_1C4F01CD8();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1C43F8000, v41, v42, "Location Matcher: skipping entityTriples are empty", v43, 2u);
        MEMORY[0x1C6942830](v43, -1, -1);
      }

      sub_1C46828B4();
      v44 = swift_allocError();
      *v45 = 0;
      v80 = v44;
      swift_willThrow();
      return sub_1C4420C3C(v36, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    v46 = v37;
    v47 = v68;
    sub_1C44DD7A8(v46, v68);
    if (v31)
    {
      v48 = v80;
      v49 = sub_1C49F6FB8(v79, v31, v33, sub_1C44FE5AC, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, sub_1C459D7C8);
      v50 = v73;
      v80 = v48;
      v51 = v66;
      if (v48)
      {
        sub_1C447EA28(v47, type metadata accessor for EntityTriple);
        return sub_1C4420C3C(v36, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }

      v53 = 1.0;
      v52 = &unk_1C4F41000;
      if (v49 > 0.88)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v50 = v73;
      v51 = v66;
      v52 = &unk_1C4F41000;
    }

    sub_1C4EFF008();
    sub_1C4420C3C(v36, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C440BAA8(v51, 0, 1, v28);
    sub_1C44DDDBC(v51, v36);
    v53 = v52[605];
LABEL_20:
    v54 = v65;
    sub_1C446C964(v36, v65, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (sub_1C44157D4(v54, 1, v28) == 1)
    {
      sub_1C4420C3C(v54, &unk_1EC0BA0E0, &qword_1C4F105A0);
      result = sub_1C4F024A8();
      __break(1u);
    }

    else
    {
      (*(v30 + 32))(v39, v54, v28);
      _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
      v55 = type metadata accessor for EntityMatch(0);
      v56 = v39;
      v57 = v28;
      v58 = *(v30 + 16);
      v59 = v68;
      v58(v50 + v55[5], v68, v57);
      v58(v50 + v55[6], v56, v57);
      v60 = v71;
      sub_1C4EF9C88();
      sub_1C4EF9AD8();
      v62 = v61;
      (*(v70 + 8))(v60, v72);
      (*(v30 + 8))(v56, v57);
      sub_1C447EA28(v59, type metadata accessor for EntityTriple);
      sub_1C4420C3C(v36, &unk_1EC0BA0E0, &qword_1C4F105A0);
      result = type metadata accessor for LocationMatcher(0);
      v63 = *(v67 + *(result + 24));
      *(v50 + v55[7]) = v53;
      *(v50 + v55[8]) = v62;
      *(v50 + v55[9]) = v63;
      *(v50 + v55[10]) = 0;
    }
  }

  return result;
}

uint64_t sub_1C49F7CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a3;
  v78 = a2;
  v79 = a1;
  v74 = a4;
  v5 = sub_1C4EF9CD8();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFF0C8();
  v75 = *(v7 - 8);
  v76 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v65 - v16;
  v18 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v65 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v65 - v25;
  v27 = v4;
  v28 = v81;
  result = sub_1C44DC054();
  if (!v28)
  {
    v30 = v14;
    v69 = v11;
    v70 = v9;
    v66 = v23;
    v67 = v20;
    v32 = v76;
    v31 = v77;
    v81 = 0;
    v33 = v75;
    v68 = v27;
    v34 = v78;
    if (v78)
    {
      sub_1C44D0BD8(v78, v17);
      v35 = v33;
      v36 = v31;
      if (sub_1C44157D4(v17, 1, v70) == 1)
      {
        sub_1C4420C3C(v17, &qword_1EC0BA590, &qword_1C4F1F430);
        v37 = 1;
      }

      else
      {
        (*(v35 + 16))(v26, v17, v32);
        sub_1C447EA28(v17, type metadata accessor for EntityTriple);
        v37 = 0;
      }

      v38 = v80;
    }

    else
    {
      v37 = 1;
      v35 = v75;
      v36 = v77;
      v38 = v80;
    }

    v39 = v26;
    sub_1C440BAA8(v26, v37, 1, v32);
    v40 = v79;
    sub_1C44D0BD8(v79, v30);
    if (sub_1C44157D4(v30, 1, v70) == 1)
    {
      sub_1C4420C3C(v30, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v41 = sub_1C4F00978();
      sub_1C442B738(v41, qword_1EDE2DE10);
      v42 = sub_1C4F00968();
      v43 = sub_1C4F01CD8();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1C43F8000, v42, v43, "Location Matcher: skipping entityTriples are empty", v44, 2u);
        MEMORY[0x1C6942830](v44, -1, -1);
      }

      sub_1C46828B4();
      v45 = swift_allocError();
      *v46 = 0;
      v81 = v45;
      swift_willThrow();
      return sub_1C4420C3C(v39, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    sub_1C44DD7A8(v30, v69);
    if (v34)
    {
      v47 = v81;
      v48 = sub_1C49F6FB8(v40, v34, v36, sub_1C44F40EC, type metadata accessor for EntityTriple, type metadata accessor for EntityTriple, type metadata accessor for EntityTriple, sub_1C459DCC0);
      v49 = v74;
      v81 = v47;
      if (v47)
      {
        sub_1C447EA28(v69, type metadata accessor for EntityTriple);
        return sub_1C4420C3C(v39, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }

      v50 = 1.0;
      if (v48 > 0.88)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v49 = v74;
    }

    v51 = v38;
    v52 = v66;
    sub_1C4EFF008();
    sub_1C4420C3C(v39, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C440BAA8(v52, 0, 1, v32);
    v53 = v52;
    v38 = v51;
    sub_1C44DDDBC(v53, v39);
    v50 = 0.88;
LABEL_21:
    v54 = v67;
    sub_1C446C964(v39, v67, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (sub_1C44157D4(v54, 1, v32) == 1)
    {
      sub_1C4420C3C(v54, &unk_1EC0BA0E0, &qword_1C4F105A0);
      result = sub_1C4F024A8();
      __break(1u);
    }

    else
    {
      (*(v35 + 32))(v38, v54, v32);
      _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
      v55 = type metadata accessor for EntityMatch(0);
      v56 = v35;
      v57 = v35;
      v58 = v32;
      v59 = *(v56 + 16);
      v60 = v69;
      v59(v49 + v55[5], v69, v58);
      v59(v49 + v55[6], v38, v58);
      v61 = v71;
      sub_1C4EF9C88();
      sub_1C4EF9AD8();
      v63 = v62;
      (*(v72 + 8))(v61, v73);
      (*(v57 + 8))(v38, v58);
      sub_1C447EA28(v60, type metadata accessor for EntityTriple);
      sub_1C4420C3C(v39, &unk_1EC0BA0E0, &qword_1C4F105A0);
      result = type metadata accessor for LocationMatcher(0);
      v64 = *(v68 + *(result + 24));
      *(v49 + v55[7]) = v50;
      *(v49 + v55[8]) = v63;
      *(v49 + v55[9]) = v64;
      *(v49 + v55[10]) = 0;
    }
  }

  return result;
}

uint64_t sub_1C49F852C(uint64_t a1)
{
  result = sub_1C49F87FC(&qword_1EDDF6720, type metadata accessor for LocationMatcher, &protocol conformance descriptor for LocationMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49F8584(uint64_t a1)
{
  result = sub_1C49F87FC(&unk_1EDDF6730, type metadata accessor for LocationMatcher, &protocol conformance descriptor for LocationMatcher);
  *(a1 + 8) = result;
  return result;
}

void sub_1C49F8604(uint64_t a1)
{
  type metadata accessor for PhaseStores(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Source(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for StateStore(319);
      if (v3 <= 0x3F)
      {
        sub_1C49F86D0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C49F86D0(uint64_t a1)
{
  if (!qword_1EDDF4D40)
  {
    type metadata accessor for AddressLinkingModel();
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDF4D40);
    }
  }
}

uint64_t sub_1C49F8758(void *a1)
{
  v1 = [a1 addressComponents];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSTextCheckingKey(0);
  sub_1C49F87FC(&qword_1EDDF0440, type metadata accessor for NSTextCheckingKey, &unk_1C4F0C6F0);
  v3 = sub_1C4F00ED8();

  return v3;
}

uint64_t sub_1C49F87FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C49F885C(int a1@<W0>, _BYTE *a2@<X8>)
{
  if ((a1 - 1) >= 9)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CE8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_1C43F8000, v6, v7, "Unknown BMLocationHashedCoordinatesDistanceRange with value: %d", v8, 8u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    v3 = 0;
  }

  else
  {
    v3 = a1;
  }

  *a2 = v3;
}

IntelligencePlatformCore::LocationHashedCoordinatesDistanceRange_optional __swiftcall LocationHashedCoordinatesDistanceRange.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C49F8988()
{
  result = qword_1EC0C0F48;
  if (!qword_1EC0C0F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0F48);
  }

  return result;
}

uint64_t sub_1C49F89E4@<X0>(uint64_t *a1@<X8>)
{
  result = LocationHashedCoordinatesDistanceRange.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WalletPassStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LocationHashedCoordinatesDistanceRange(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        break;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C49F8BE0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LocationMetadataEvent(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = sub_1C4EF9CD8();
    v13 = *(v12 - 8);
    v38 = a3;
    v14 = v13;
    v15 = *(v13 + 16);
    v15(v9, a2, v12);
    v15(&v9[*(v6 + 20)], a2, v12);
    LODWORD(v15) = [v11 distanceBucketFromHome];
    v16 = [v11 distanceBucketFromWork];
    v17 = a2;
    v18 = [v11 distanceBucketFromGym];
    LODWORD(v11) = [v11 distanceBucketFromSchool];
    sub_1C49F885C(v15, &v42);
    LOBYTE(v15) = v42;
    sub_1C49F885C(v16, &v41);
    LOBYTE(v16) = v41;
    sub_1C49F885C(v18, &v40);
    LOBYTE(v18) = v40;
    sub_1C49F885C(v11, &v39);

    (*(v14 + 8))(v17, v12);
    v19 = v39;
    v20 = &v9[*(v6 + 24)];
    *v20 = v15;
    v20[1] = v16;
    v20[2] = v18;
    v20[3] = v19;
    v21 = v38;
    sub_1C49F90E0(v9, v38);
    return sub_1C440BAA8(v21, 0, 1, v6);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v23 = sub_1C4F00978();
    sub_1C442B738(v23, qword_1EDDFECB8);
    v24 = a1;
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CE8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43 = v28;
      *v27 = 136315138;
      swift_getObjectType();
      v29 = sub_1C4F02C58();
      v31 = v6;
      v32 = a2;
      v33 = sub_1C441D828(v29, v30, &v43);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_1C43F8000, v25, v26, "Could not create a BMLocationHashedCoordinates event from the provided event - %s", v27, 0xCu);
      sub_1C440962C(v28);
      MEMORY[0x1C6942830](v28, -1, -1);
      MEMORY[0x1C6942830](v27, -1, -1);

      sub_1C4EF9CD8();
      sub_1C43FBCE0();
      v35 = v32;
      v6 = v31;
      (*(v34 + 8))(v35);
    }

    else
    {

      sub_1C4EF9CD8();
      sub_1C43FBCE0();
      (*(v36 + 8))(a2);
    }

    return sub_1C440BAA8(a3, 1, 1, v6);
  }
}

void sub_1C49F8FD0(uint64_t a1)
{
  v1 = [BiomeLibrary() Location];
  swift_unknownObjectRelease();
  v2 = [v1 HashedCoordinates];
  swift_unknownObjectRelease();
  sub_1C4580FF0();
}

uint64_t type metadata accessor for LocationMetadataEvent(uint64_t a1)
{
  result = qword_1EC0C0F60;
  if (!qword_1EC0C0F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C49F90E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationMetadataEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C49F916C(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationMetadataContent(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF7 && a1[4])
    {
      v2 = *a1 + 246;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 0xA;
      v2 = v3 - 10;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for LocationMetadataContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 9;
    }
  }

  return result;
}

uint64_t sub_1C49F9280(unsigned int a1)
{
  if (a1 == 0x7FFFFFFF)
  {
    v1 = 0;
  }

  else
  {
    v1 = 7;
  }

  if (a1 >= 0x28)
  {
    v2 = v1;
  }

  else
  {
    v2 = 6;
  }

  if (a1 >= 0x14)
  {
    v3 = v2;
  }

  else
  {
    v3 = 5;
  }

  if (a1 >= 0xA)
  {
    v4 = v3;
  }

  else
  {
    v4 = 4;
  }

  if (a1 >= 4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 3;
  }

  if (a1 >= 2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 2;
  }

  if ((a1 & 0x80000000) == 0)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1C49F9348()
{
  v10 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0(0, 3, 0);
  v0 = 0;
  v1 = v10;
  do
  {
    v2 = 0xD000000000000014;
    if (byte_1F43D28C0[v0 + 32] == 1)
    {
      v3 = "last_speed_bucket";
    }

    else
    {
      v2 = 0xD000000000000011;
      v3 = "last_altitude_bucket";
    }

    if (byte_1F43D28C0[v0 + 32])
    {
      v4 = v2;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (byte_1F43D28C0[v0 + 32])
    {
      v5 = v3;
    }

    else
    {
      v5 = "locationMetadataSignal";
    }

    v11 = v1;
    v7 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_1C44CD9C0(v6 > 1, v7 + 1, 1);
      v1 = v11;
    }

    ++v0;
    *(v1 + 16) = v7 + 1;
    v8 = v1 + 16 * v7;
    *(v8 + 32) = v4;
    *(v8 + 40) = v5 | 0x8000000000000000;
  }

  while (v0 != 3);

  return sub_1C4499940();
}

uint64_t sub_1C49F9478(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1C49F94CC(a1, &v4);
  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t sub_1C49F94CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &aBlock - v8;
  v10 = [BiomeLibrary() Location];
  swift_unknownObjectRelease();
  v11 = [v10 HashedCoordinates];
  swift_unknownObjectRelease();
  v12 = sub_1C4EF9CD8();
  sub_1C440BAA8(v9, 1, 1, v12);
  (*(*(v12 - 8) + 16))(v6, a1, v12);
  sub_1C440BAA8(v6, 0, 1, v12);
  v13 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v14 = sub_1C457A86C(v9, v6, 1, 1, 0);
  v15 = [v11 publisherWithOptions_];

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v27 = nullsub_1;
  v28 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1C44405F8;
  v26 = &unk_1F43F4378;
  v17 = _Block_copy(&aBlock);
  v27 = sub_1C49FA1EC;
  v28 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1C4440590;
  v26 = &unk_1F43F43A0;
  v18 = _Block_copy(&aBlock);

  v19 = [v15 sinkWithCompletion:v17 receiveInput:v18];

  _Block_release(v18);
  _Block_release(v17);

  swift_beginAccess();
  v20 = *(v16 + 16);
  *a2 = v20;
  v21 = v20;
}

void sub_1C49F97F4(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "Unable to parse eventBody from read event in location metadata featurizer", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }
  }
}

uint64_t sub_1C49F992C(uint64_t a1)
{
  v1 = sub_1C49F9478(a1);
  if (v1)
  {
    v2 = v1;
    sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0C890;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x80000001C4F91670;
    v4 = [v2 speedBucket];
    v5 = objc_opt_self();
    *(inited + 48) = [v5 featureValueWithInt64_];
    *(inited + 56) = 0xD000000000000014;
    *(inited + 64) = 0x80000001C4F91690;
    *(inited + 72) = [v5 featureValueWithInt64_];
    *(inited + 80) = 0xD000000000000011;
    *(inited + 88) = 0x80000001C4F916B0;
    *(inited + 96) = [v5 featureValueWithInt64_];
    sub_1C4577DBC();
    v6 = sub_1C4F00F28();

    return v6;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDDFECB8);
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CF8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C43F8000, v9, v10, "Unable to fetch most recent locationMetadata event", v11, 2u);
      MEMORY[0x1C6942830](v11, -1, -1);
    }

    sub_1C4577DBC();

    return sub_1C4F00F28();
  }
}

void sub_1C49F9BB0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v30 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  type metadata accessor for FeatureProviderSnapshot(0);
  sub_1C43FCDF8();
  v28 = v12;
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v16 = *(a2 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v25 = a3;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1C459D0A8();
    v17 = v32;
    v19 = *(v6 + 16);
    v18 = v6 + 16;
    v20 = a2 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v26 = *(v18 + 56);
    v27 = v19;
    do
    {
      v27(v10, v20, v30);
      v27(v15, v10, v30);
      v21 = sub_1C49F992C(v10);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C49FA1F4(v21, a1);

      sub_1C465CF34();
      v23 = v22;

      (*(v18 - 8))(v10, v30);
      *(v15 + *(v29 + 20)) = v23;
      v24 = *(v32 + 16);
      if (v24 >= *(v32 + 24) >> 1)
      {
        sub_1C459D0A8();
      }

      *(v32 + 16) = v24 + 1;
      sub_1C4586A54(v15, v32 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24);
      v20 += v26;
      --v16;
    }

    while (v16);
    a3 = v25;
  }

  *a3 = v17;
}

uint64_t sub_1C49F9E50()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C4EF9C88();
  v7 = sub_1C49F992C(v6);
  (*(v2 + 8))(v6, v0);
  return v7;
}

uint64_t sub_1C49F9F0C(uint64_t a1)
{
  v2 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4EF9C88();
  sub_1C49F992C(v8);
  (*(v4 + 8))(v8, v2);
  v9 = sub_1C44F9274(a1);

  return v9;
}

uint64_t sub_1C49FA08C(uint64_t a1)
{
  v2 = [BiomeLibrary() Location];
  swift_unknownObjectRelease();
  v3 = [v2 HashedCoordinates];
  swift_unknownObjectRelease();
  *(v1 + 16) = v3;
  return v1;
}

unint64_t sub_1C49FA170(uint64_t a1)
{
  result = sub_1C49FA198();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C49FA198()
{
  result = qword_1EC0C0F80;
  if (!qword_1EC0C0F80)
  {
    type metadata accessor for LocationMetadataSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0F80);
  }

  return result;
}

_BYTE *sub_1C49FA1F4(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v16, v7, v4, a2);
      MEMORY[0x1C6942830](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v17 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2, v10, v11, v12, v13);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v14;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_1C49FA3C0()
{
  v1 = *v0;
  v2 = sub_1C4F00978();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C441FEB4();
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CB8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = sub_1C46655C4(v1);
    v16 = v2;
    v12 = sub_1C441D828(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1C43F8000, v6, v7, "<%s: Starting observe notification>", v8, 0xCu);
    sub_1C440962C(v9);
    sub_1C43FBE2C();
    sub_1C43FBE2C();

    v13 = (*(v4 + 8))(v0, v16);
  }

  else
  {

    v13 = (*(v4 + 8))(v0, v2);
  }

  v14 = v0[2];
  MEMORY[0x1EEE9AC00](v13);

  os_unfair_lock_lock((v14 + 24));
  sub_1C49FAD54((v14 + 16));
  os_unfair_lock_unlock((v14 + 24));
}

uint64_t *sub_1C49FA5E0()
{
  type metadata accessor for LocationsOfInterestMonitor();
  v0 = swift_allocObject();
  result = sub_1C49FA61C();
  qword_1EDE2CAD8 = v0;
  return result;
}

uint64_t *sub_1C49FA61C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1C4F00978();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C441FEB4();
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v11 = sub_1C46655C4(v2);
    v13 = sub_1C441D828(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1C43F8000, v7, v8, "<%s: Init>", v9, 0xCu);
    sub_1C440962C(v10);
    sub_1C4407480();
    sub_1C43FBE2C();
  }

  (*(v5 + 8))(v0, v3);
  type metadata accessor for LocationsOfInterestMonitor.GuardedData();
  v14 = swift_allocObject();
  sub_1C4EF98F8();
  sub_1C4F00BC8();
  sub_1C4695550(&qword_1EDDFFA00, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  *(v14 + 16) = sub_1C4F00F28();
  sub_1C456902C(&unk_1EC0C0F90, &qword_1C4F41D58);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = v14;
  v1[2] = v15;
  return v1;
}

uint64_t sub_1C49FA8A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Configuration(0);
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = v7;
  v38 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4F01D88();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4F01E38();
  v31 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BADE0, &unk_1C4F17660);
  v34 = *(v14 - 8);
  v35 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v17 = *a1;
  swift_beginAccess();
  if (!*(*(v17 + 16) + 16) || (sub_1C43FE83C(), (v18 & 1) == 0))
  {
    swift_endAccess();
    v19 = [objc_opt_self() defaultCenter];
    sub_1C4F01E48();

    sub_1C4F01D78();
    sub_1C4665684();
    v20 = sub_1C4F01DA8();
    v30 = a3;
    v21 = v20;
    v39 = v20;
    sub_1C4695550(&qword_1EDDDB8D0, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    v29 = a2;
    sub_1C4695550(&unk_1EDDDB910, sub_1C4665684, MEMORY[0x1E69E8028]);
    sub_1C4F00D08();

    (*(v32 + 8))(v10, v33);
    (*(v31 + 8))(v13, v11);
    v22 = v38;
    sub_1C44098F0(v29, v38);
    v23 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v24 = (v37 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    sub_1C4409954(v22, v25 + v23);
    *(v25 + v24) = v30;
    sub_1C46953BC();
    v26 = v35;
    sub_1C4F00D28();

    (*(v34 + 8))(v16, v26);
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v17 + 16);
    sub_1C4661C18();
    *(v17 + 16) = v40;
  }

  return swift_endAccess();
}

uint64_t sub_1C49FAD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v4 = type metadata accessor for Configuration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_1C4F00978();
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = os_transaction_create();
  sub_1C4F00198();
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CB8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v39 = a2;
    v20 = v19;
    v42 = v19;
    *v18 = 136315138;
    v21 = sub_1C46655C4(v41);
    v38 = v7;
    v23 = sub_1C441D828(v21, v22, &v42);
    v36 = v11;
    v24 = v14;
    v25 = v10;
    v26 = v5;
    v27 = v23;
    v7 = v38;

    *(v18 + 4) = v27;
    v5 = v26;
    v10 = v25;
    v14 = v24;
    _os_log_impl(&dword_1C43F8000, v15, v16, "<%s: Received notification>", v18, 0xCu);
    sub_1C440962C(v20);
    v28 = v20;
    a2 = v39;
    MEMORY[0x1C6942830](v28, -1, -1);
    v29 = v18;
    v6 = v37;
    MEMORY[0x1C6942830](v29, -1, -1);

    (*(v40 + 8))(v13, v36);
  }

  else
  {

    (*(v40 + 8))(v13, v11);
  }

  v30 = sub_1C4F018C8();
  sub_1C440BAA8(v10, 1, 1, v30);
  sub_1C44098F0(a2, v7);
  v31 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v32 = (v6 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  sub_1C4409954(v7, v33 + v31);
  *(v33 + v32) = v14;
  *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v41;
  sub_1C4785250();
}

uint64_t sub_1C49FB0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a4;
  v6[4] = a6;
  v7 = sub_1C4F00978();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C49FB1A8, 0, 0);
}

uint64_t sub_1C49FB1A8(uint64_t a1)
{
  v19 = v1;
  sub_1C4F00198();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CB8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[8];
  v6 = v1[5];
  v7 = v1[6];
  if (v4)
  {
    v8 = v1[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = sub_1C46655C4(v8);
    v13 = sub_1C441D828(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1C43F8000, v2, v3, "<%s: Starting delta update>", v9, 0xCu);
    sub_1C440962C(v10);
    sub_1C4407480();
    sub_1C43FBE2C();
  }

  v14 = *(v7 + 8);
  v14(v5, v6);
  v1[9] = v14;
  if (qword_1EDDF0AB0 != -1)
  {
    swift_once();
  }

  v1[10] = sub_1C4468E90();
  if (qword_1EDDFED08 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Source(0);
  sub_1C442B738(v15, qword_1EDDFED10);
  v16 = swift_task_alloc();
  v1[11] = v16;
  *v16 = v1;
  v16[1] = sub_1C49FB590;

  return sub_1C4ACB9F0();
}

uint64_t sub_1C49FB590()
{
  *(*v1 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C49FB6D8, 0, 0);
  }

  else
  {

    sub_1C43FBDA0();

    return v2();
  }
}

uint64_t sub_1C49FB6D8()
{
  v24 = v0;

  v2 = v0[12];
  sub_1C4F00198();
  v3 = v2;
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CB8();

  if (os_log_type_enabled(v4, v5))
  {
    v21 = v0[7];
    v22 = v0[9];
    v7 = v0[4];
    v6 = v0[5];
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = sub_1C46655C4(v7);
    sub_1C441D828(v9, v10, &v23);
    sub_1C4432674();
    *(v8 + 4) = v1;
    *(v8 + 12) = 2080;
    v0[2] = v2;
    v11 = v2;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v12 = sub_1C4F01198();
    sub_1C441D828(v12, v13, &v23);
    sub_1C4432674();
    *(v8 + 14) = v1;
    sub_1C44134D4(&dword_1C43F8000, v14, v15, "<%s: Can't run delta updates for lifeEvents due to: %s>");
    swift_arrayDestroy();
    sub_1C4407480();
    sub_1C43FBE2C();

    v22(v21, v6);
  }

  else
  {
    v16 = v0[9];
    v17 = v0[7];
    v18 = v0[5];

    v16(v17, v18);
  }

  sub_1C43FBDA0();

  return v19();
}

uint64_t sub_1C49FB8DC(uint64_t a1)
{
  v3 = type metadata accessor for Configuration(0);
  sub_1C43FCF7C(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C49FAD70(a1, v1 + v8, v9);
}

uint64_t sub_1C49FB970(uint64_t a1)
{
  v4 = type metadata accessor for Configuration(0);
  sub_1C43FCF7C(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v8);
  v12 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1C4665934;

  return sub_1C49FB0DC(a1, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_1C49FBAA0()
{
  if (*(v0 + 88) != 1)
  {
    return *(v0 + 80);
  }

  result = sub_1C49FC164(16);
  *(v0 + 80) = result;
  *(v0 + 88) = 0;
  return result;
}

unint64_t sub_1C49FBAE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C49FBB34(char a1)
{
  if (!a1)
  {
    return 0x656475746974616CLL;
  }

  if (a1 == 1)
  {
    return 0x64757469676E6F6CLL;
  }

  return 0xD000000000000016;
}

unint64_t sub_1C49FBBB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C49FBAE8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C49FBBE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C49FBB34(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C49FBC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C49FBAE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C49FBC44(uint64_t a1)
{
  v2 = sub_1C49FBF54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C49FBC80(uint64_t a1)
{
  v2 = sub_1C49FBF54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawLocation.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  RawLocation.init(from:)(a1);
  return v2;
}

uint64_t *RawLocation.init(from:)(void *a1)
{
  v4 = sub_1C456902C(&qword_1EC0C0FA0, &qword_1C4F41D80);
  sub_1C43FCDF8();
  v15 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  *(v1 + 80) = 0;
  *(v1 + 88) = 1;
  *(v1 + 96) = 0;
  *(v1 + 104) = 1;
  *(v1 + 112) = 0;
  *(v1 + 120) = 1;
  *(v1 + 128) = sub_1C4F00F28();
  sub_1C4409678(a1, a1[3]);
  sub_1C49FBF54();
  sub_1C4F02BC8();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v15;
    LOBYTE(v12) = 0;
    sub_1C4419F68();
    *(v1 + 16) = sub_1C4F02698();
    LOBYTE(v12) = 1;
    sub_1C4419F68();
    *(v1 + 24) = sub_1C4F02698();
    LOBYTE(v12) = 2;
    sub_1C4419F68();
    *(v1 + 32) = sub_1C4F026B8();
    v13 = &type metadata for GeoHashProvider;
    v14 = &off_1F43F44C8;
    (*(v9 + 8))(v8, v4);
    sub_1C441D670(&v12, v1 + 40);
  }

  sub_1C440962C(a1);
  return v1;
}

unint64_t sub_1C49FBF54()
{
  result = qword_1EC0C0FA8;
  if (!qword_1EC0C0FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0FA8);
  }

  return result;
}

uint64_t RawLocation.encode(to:)(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C0FB0, &qword_1C4F41D88);
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  sub_1C4409678(a1, a1[3]);
  sub_1C49FBF54();
  sub_1C4F02BF8();
  v10[15] = 0;
  sub_1C4F027B8();
  if (!v1)
  {
    v10[14] = 1;
    sub_1C4F027B8();
    v10[13] = 2;
    sub_1C4F027D8();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C49FC164(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[16];
  if (*(v4 + 16) && (v5 = sub_1C457B350(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    swift_endAccess();
    v8 = v2[8];
    v9 = v2[9];
    sub_1C4409678(v2 + 5, v8);
    v7 = (*(v9 + 8))(v2, a1, v8, v9);
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v11 = v2[16];
    sub_1C46614F4();
    v2[16] = v11;
  }

  swift_endAccess();
  return v7;
}

uint64_t RawLocation.deinit()
{
  sub_1C440962C((v0 + 40));

  return v0;
}

uint64_t RawLocation.__deallocating_deinit()
{
  sub_1C440962C((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1C49FC2D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = RawLocation.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RawLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C49FC498()
{
  result = qword_1EC0C0FB8;
  if (!qword_1EC0C0FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0FB8);
  }

  return result;
}

unint64_t sub_1C49FC4F0()
{
  result = qword_1EC0C0FC0;
  if (!qword_1EC0C0FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0FC0);
  }

  return result;
}

unint64_t sub_1C49FC548()
{
  result = qword_1EC0C0FC8;
  if (!qword_1EC0C0FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0FC8);
  }

  return result;
}

uint64_t sub_1C49FC59C(uint64_t a1, unint64_t a2)
{
  v8 = CLLocationCoordinate2DMake(*(a1 + 16), *(a1 + 24));
  latitude = v8.latitude;
  longitude = v8.longitude;
  if (!CLLocationCoordinate2DIsValid(v8))
  {
    return 0;
  }

  v7[0] = CLLocationCoordinate2DMake(90.0, -180.0);
  v7[1] = CLLocationCoordinate2DMake(-90.0, 180.0);
  v6 = 0;
  return sub_1C49FC64C(a2, &v6, 0, &v7[0].latitude, latitude, longitude);
}

uint64_t sub_1C49FC64C(unint64_t a1, uint64_t a2, unint64_t a3, double *a4, CLLocationDegrees a5, CLLocationDegrees a6)
{
  if (a1 >= 1)
  {
    v11 = a4 + 1;
    v12 = a4 + 3;
    if (a1 >= 0x20)
    {
      v13 = 32;
    }

    else
    {
      v13 = a1;
    }

    while (1)
    {
      if (a3 >= v13)
      {
        return *a2;
      }

      v14 = CLLocationCoordinate2DMake((*a4 + a4[2]) * 0.5, (a4[1] + a4[3]) * 0.5);
      if (v14.latitude >= a5)
      {
        *a4 = v14.latitude;
        if (v14.longitude < a6)
        {
          v15 = v11;
          v16 = 3;
          goto LABEL_14;
        }

        v16 = 2;
      }

      else
      {
        a4[2] = v14.latitude;
        if (v14.longitude < a6)
        {
          v15 = v11;
          v16 = 1;
          goto LABEL_14;
        }

        v16 = 0;
      }

      v15 = v12;
LABEL_14:
      *v15 = v14.longitude;
      *a2 = v16 | (4 * *a2);
      ++a3;
    }
  }

  return *a2;
}

uint64_t static Logging.mdlog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C4F00978();
  v3 = sub_1C442B738(v2, qword_1EDDFECB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

_BYTE *storeEnumTagSinglePayload for Logging(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

id sub_1C49FC9DC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_1C4F00978();
  sub_1C44F9918(v5, a2);
  sub_1C442B738(v5, a2);
  result = a3();
  if (result)
  {
    return sub_1C4F00988();
  }

  __break(1u);
  return result;
}

void sub_1C49FCA94(uint64_t a1)
{
  sub_1C471154C(319, &qword_1EDDF05E0, MEMORY[0x1E69E85C0]);
  if (v1 <= 0x3F)
  {
    sub_1C49FCB78(319, &qword_1EDDFF9E0, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      sub_1C49FCB78(319, &qword_1EDDF67A0, type metadata accessor for LOIBasedSegment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C49FCB78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1C49FCC14(uint64_t a1)
{
  sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    sub_1C49FCCC0();
    if (v2 <= 0x3F)
    {
      sub_1C471154C(319, &qword_1EDDF4A18, &protocol descriptor for SegmentTypeProtocol);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C49FCCC0()
{
  if (!qword_1EDDF49E0)
  {
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDF49E0);
    }
  }
}

uint64_t sub_1C49FCD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = a2;
  v33 = a1;
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  type metadata accessor for LOIBasedSegmentProvider(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v12, v13, v14, v6);
  type metadata accessor for LOIBasedSegment(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v15, v16, v17, v18);
  v19 = *(v7 + 16);
  v19(v11, a1, v6);
  v19(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v20 = *(v7 + 80);
  v21 = (v20 + 16) & ~v20;
  v22 = (v8 + v20 + v21) & ~v20;
  v23 = v22 + v8;
  v24 = swift_allocObject();
  v25 = *(v7 + 32);
  v25(v24 + v21, v11, v6);
  v25(v24 + v22, v31, v6);
  *(v24 + v23) = 256;
  a3[3] = &_s14descr1F43D0299O27StoredLocationVisitIteratorVN;
  a3[4] = sub_1C49FE2B8();
  v26 = swift_allocObject();
  *a3 = v26;
  v27 = MEMORY[0x1E69E7CC0];
  *(v26 + 16) = &unk_1C4F55BB0;
  *(v26 + 24) = v24;
  *(v26 + 32) = v27;
  *(v26 + 40) = 0;
  *(v26 + 48) = 0;
  v28 = *(v7 + 8);
  v28(v32, v6);
  return (v28)(v33, v6);
}

uint64_t sub_1C49FCF64(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C49FCFA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C49FCF64(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C49FCFCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C49FCF7C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1C49FCFF8(uint64_t a1, uint64_t a2)
{
  if ((sub_1C4EF9C68() & 1) == 0)
  {
    goto LABEL_10;
  }

  v4 = type metadata accessor for LOIBasedSegment(0);
  if ((sub_1C4EF9C68() & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *(v4 + 24);
  sub_1C4460050(a1 + v5, v11, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  sub_1C4460050(a2 + v5, &v13, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (!v12)
  {
    if (!*(&v14 + 1))
    {
      sub_1C4420C3C(v11, &qword_1EC0B97A0, &qword_1C4F0F7D0);
      v6 = 1;
      return v6 & 1;
    }

    goto LABEL_9;
  }

  sub_1C4460050(v11, v10, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (!*(&v14 + 1))
  {
    sub_1C46CB91C(v10);
LABEL_9:
    sub_1C4420C3C(v11, &qword_1EC0C0FD0, &unk_1C4F42140);
LABEL_10:
    v6 = 0;
    return v6 & 1;
  }

  v8[0] = v13;
  v8[1] = v14;
  v9 = v15;
  v6 = sub_1C4B70C8C(v10, v8);
  sub_1C46CB91C(v8);
  sub_1C46CB91C(v10);
  sub_1C4420C3C(v11, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  return v6 & 1;
}