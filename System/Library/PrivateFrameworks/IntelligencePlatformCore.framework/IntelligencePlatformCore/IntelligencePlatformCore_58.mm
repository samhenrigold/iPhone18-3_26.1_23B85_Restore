uint64_t sub_1C4988F50(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5, uint64_t a6, unint64_t a7)
{
  v131 = a7;
  v112 = a6;
  v108 = a5;
  LODWORD(v110) = a2;
  v106 = a1;
  v9 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v109 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v85 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v85 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v85 - v18;
  v20 = sub_1C4EFB768();
  v107 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  v111 = a3;
  v23 = sub_1C4440C6C(a3);
  v24 = v7;
  if (v7)
  {
LABEL_5:

LABEL_6:

    return swift_unownedRelease();
  }

  else
  {
    v25 = v23;
    v103 = v22;
    v104 = v20;
    v100 = v19;
    v101 = v13;
    v102 = v16;

    v105 = *(v25 + 168);

    swift_unownedRetainStrong();
    v26 = v111;
    v27 = sub_1C4440C6C(v111);
    if (v110)
    {

      v28 = *(v27 + 192);

      swift_unownedRetainStrong();
      v29 = sub_1C4440C6C(v26);
      v92 = v28;

      v30 = (v29 + 184);
    }

    else
    {

      v31 = *(v27 + 200);

      swift_unownedRetainStrong();
      v33 = sub_1C4440C6C(v26);
      v92 = v31;

      v30 = (v33 + 176);
    }

    v94 = *v30;

    swift_unownedRetainStrong();
    v34 = sub_1C4440C6C(v26);
    v35 = v102;
    v36 = v107;
    v37 = v34;

    v93 = *(v37 + 256);

    v111 = v36 + 8;
    v89 = xmmword_1C4F0CE60;
    v99 = xmmword_1C4F0D130;
    while (1)
    {
      v38 = v106;
      if (v24 == 8)
      {

        return swift_unownedRelease();
      }

      v39 = *(&unk_1F43D2FB8 + v24 + 32);
      v110 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
      v40 = swift_allocObject();
      *(v40 + 16) = v89;
      *(v40 + 56) = MEMORY[0x1E69E6530];
      *(v40 + 64) = MEMORY[0x1E69A0180];
      *(v40 + 32) = v38;
      *(v40 + 96) = &_s10SourceTypeON;
      *(v40 + 104) = sub_1C444323C();
      *(v40 + 72) = v39;
      v41 = v103;
      sub_1C4EFB728();
      sub_1C4EFC088();
      v42 = v104;
      v107 = *v111;
      (v107)(v41, v104);
      v43 = v100;
      sub_1C440BAA8(v100, 1, 1, v42);
      sub_1C44458E0();
      memset(v120, 0, 40);
      v44 = sub_1C4EFB3E8();
      ++v24;
      sub_1C4420C3C(v120, &unk_1EC0BC770, &qword_1C4F10DC0);
      result = sub_1C4420C3C(v43, &unk_1EC0C06C0, &unk_1C4F10DB0);
      v45 = 0;
      v46 = *(v44 + 16);
      v90 = v44;
      v47 = v44 + 32;
      v86 = v46;
      v87 = v24;
      v85 = v44 + 32;
LABEL_10:
      if (v45 != v46)
      {
        break;
      }
    }

    if (v45 < *(v90 + 16))
    {
      v48 = v47 + 56 * v45;
      v49 = *v48;
      v50 = *(v48 + 16);
      v51 = *(v48 + 32);
      v130 = *(v48 + 48);
      v129[1] = v50;
      v129[2] = v51;
      v129[0] = v49;
      v52 = swift_allocObject();
      *(v52 + 16) = v99;
      v53 = *&v129[0];
      *(v52 + 56) = MEMORY[0x1E69E6530];
      *(v52 + 64) = MEMORY[0x1E69A0180];
      *(v52 + 32) = v53;
      sub_1C444808C(v129, v120);
      v54 = v103;
      sub_1C4EFB728();
      sub_1C4EFC088();
      v55 = v104;
      (v107)(v54, v104);
      sub_1C440BAA8(v35, 1, 1, v55);
      memset(v120, 0, 40);
      v56 = sub_1C4EFB988();
      v88 = v45 + 1;
      sub_1C4420C3C(v120, &unk_1EC0BC770, &qword_1C4F10DC0);
      result = sub_1C4420C3C(v35, &unk_1EC0C06C0, &unk_1C4F10DB0);
      v57 = 0;
      v91 = *(v56 + 16);
      while (1)
      {
        if (v91 == v57)
        {

          result = sub_1C44636BC(v129);
          v24 = v87;
          v45 = v88;
          v47 = v85;
          v46 = v86;
          goto LABEL_10;
        }

        if (v57 >= *(v56 + 16))
        {
          break;
        }

        v58 = v56;
        v59 = *(v56 + 8 * v57 + 32);
        v60 = swift_allocObject();
        *(v60 + 16) = v99;
        *(v60 + 56) = MEMORY[0x1E69E6530];
        *(v60 + 64) = MEMORY[0x1E69A0180];
        *(v60 + 32) = v59;
        v61 = v103;
        sub_1C4EFB728();
        sub_1C4EFC088();
        v62 = v104;
        (v107)(v61, v104);
        v63 = v101;
        sub_1C440BAA8(v101, 1, 1, v62);
        sub_1C444C538();
        memset(v117, 0, 40);
        sub_1C4EFB408();
        sub_1C4420C3C(v117, &unk_1EC0BC770, &qword_1C4F10DC0);
        sub_1C4420C3C(v63, &unk_1EC0C06C0, &unk_1C4F10DB0);
        if (*&v120[3] >> 60 == 11)
        {
          sub_1C44636BC(v129);

          *&v117[0] = 0;
          *(&v117[0] + 1) = 0xE000000000000000;
          sub_1C4F02248();

          *&v117[0] = 0xD00000000000002ELL;
          *(&v117[0] + 1) = 0x80000001C4FAAEC0;
          *&v114 = v59;
          v75 = sub_1C4F02858();
          MEMORY[0x1C6940010](v75);

          v76 = v117[0];
          sub_1C450B034();
          swift_allocError();
          *v77 = v76;
          v79 = v117[1];
          v78 = v117[2];
          *(v77 + 16) = v117[0];
          *(v77 + 32) = v79;
          *(v77 + 48) = v78;
          *(v77 + 64) = 5;
          swift_willThrow();

          goto LABEL_5;
        }

        v64 = *&v120[1];
        v95 = v120[0];
        v127[0] = v120[0];
        v127[1] = v120[1];
        v96 = *(&v120[2] + 1);
        v97 = *(&v120[1] + 1);
        v65 = *&v120[2];
        v127[2] = v120[2];
        v98 = *&v120[3];
        v128 = *&v120[3];
        v66 = swift_allocObject();
        *(v66 + 16) = v99;
        *(v66 + 56) = MEMORY[0x1E69E6530];
        *(v66 + 64) = MEMORY[0x1E69A0180];
        v67 = v64;
        *(v66 + 32) = v64;
        v68 = v103;
        sub_1C4EFB728();
        sub_1C4EFC088();
        v69 = v68;
        v70 = v104;
        (v107)(v69, v104);
        v71 = v109;
        sub_1C440BAA8(v109, 1, 1, v70);
        sub_1C444C5E8();
        memset(v118, 0, sizeof(v118));
        v119 = 0;
        sub_1C4EFB408();
        sub_1C4420C3C(v118, &unk_1EC0BC770, &qword_1C4F10DC0);
        sub_1C4420C3C(v71, &unk_1EC0C06C0, &unk_1C4F10DB0);
        memcpy(v117, v120, 0x48uLL);
        if (!*(&v117[1] + 1))
        {
          sub_1C44636BC(v129);

          *&v114 = 0;
          *(&v114 + 1) = 0xE000000000000000;
          sub_1C4F02248();

          *&v114 = 0xD00000000000001DLL;
          *(&v114 + 1) = 0x80000001C4FAAEF0;
          v113 = 0;
          v80 = sub_1C4F02858();
          MEMORY[0x1C6940010](v80);

          v81 = v114;
          sub_1C450B034();
          swift_allocError();
          *v82 = v81;
          v84 = v115;
          v83 = v116;
          *(v82 + 16) = v114;
          *(v82 + 32) = v84;
          *(v82 + 48) = v83;
          *(v82 + 64) = 5;
          swift_willThrow();

          sub_1C44652C4(v95, *(&v95 + 1), v64, v97, v65, v96, v98);
          goto LABEL_6;
        }

        v121 = v120[0];
        v122 = *&v120[1];
        v123 = *(&v117[1] + 1);
        v124 = v120[2];
        v125 = v120[3];
        v126 = *&v120[4];
        sub_1C4987200(&v121, v127, v129, v108, v112, v131);
        v56 = v58;
        v73 = v96;
        v72 = v97;
        v74 = *(&v95 + 1);
        sub_1C4420C3C(v117, &qword_1EC0C6340, &qword_1C4F6BAA0);
        result = sub_1C44652C4(v95, v74, v67, v72, v65, v73, v98);
        ++v57;
        v35 = v102;
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C4989D48(void *a1, uint64_t a2, int a3)
{
  v90 = *MEMORY[0x1E69E9840];
  v6 = sub_1C4F01188();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v13 = a1[4];
  v15 = sub_1C4409678(a1, v14);
  v16 = *(v13 + 16);
  v79 = v15;
  v80 = v13 + 16;
  v81 = v13;
  v78 = v16;
  v16(&v87, v14, v13);
  v17 = v88;
  v18 = v89;
  sub_1C4409678(&v87, v88);
  v19 = (*(v18 + 24))(v17, v18);
  v20 = *(v19 + 16);
  if (v20)
  {
    v73 = v14;
    v74 = a3;
    v75 = a2;
    v76 = v8;
    *&v85 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v20, 0);
    v21 = v85;
    v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v72[1] = v19;
    v23 = v19 + v22;
    v24 = *(v10 + 72);
    do
    {
      sub_1C443CCBC(v23, v12);
      v26 = *v12;
      v25 = v12[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4454000(v12, type metadata accessor for ViewDatabaseArtifact.Property);
      *&v85 = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1C44CD9C0(v27 > 1, v28 + 1, 1);
        v21 = v85;
      }

      *(v21 + 16) = v28 + 1;
      v29 = v21 + 16 * v28;
      *(v29 + 32) = v26;
      *(v29 + 40) = v25;
      v23 += v24;
      --v20;
    }

    while (v20);

    v8 = v76;
    a2 = v75;
    LOBYTE(a3) = v74;
    v14 = v73;
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  sub_1C440962C(&v87);
  v30 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  v88 = v30;
  *&v87 = v21;
  sub_1C44482AC(&v87, &v85);
  v31 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  *&v83[0] = v31;
  sub_1C46601FC();
  v32 = *&v83[0];
  v78(&v87, v14, v81);
  v33 = v88;
  v34 = v89;
  sub_1C4409678(&v87, v88);
  v35 = v77;
  v36 = (*(v34 + 40))(v33, v34);
  if (v35)
  {

    v37 = -1;
  }

  else
  {
    v37 = v36;
  }

  sub_1C440962C(&v87);
  v88 = MEMORY[0x1E69E6530];
  *&v87 = v37;
  sub_1C44482AC(&v87, &v85);
  swift_isUniquelyReferenced_nonNull_native();
  *&v83[0] = v32;
  sub_1C46601FC();
  v38 = *&v83[0];
  v78(&v85, v14, v81);
  sub_1C456902C(&qword_1EC0C06F0, &unk_1C4F5BAD0);
  sub_1C456902C(&qword_1EC0C06F8, &qword_1C4F3EFF8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v84 = 0;
    memset(v83, 0, sizeof(v83));
    sub_1C4420C3C(v83, &unk_1EC0C0700, &qword_1C4F3F000);
    goto LABEL_32;
  }

  sub_1C441D670(v83, &v87);
  if (a3)
  {
    v39 = v88;
    v40 = v89;
    sub_1C4409678(&v87, v88);
    v41 = (*(v40 + 8))(v39, v40);
    goto LABEL_17;
  }

  if (a2 >= 1)
  {
    v42 = v88;
    v43 = v89;
    sub_1C4409678(&v87, v88);
    v41 = (*(v43 + 16))(a2, v42, v43);
LABEL_17:
    v44 = v41;
    if (sub_1C4428DA0(v41))
    {
      v45 = sub_1C4428DA0(v44);
      v77 = v38;
      if (v45)
      {
        v46 = v45;
        v79 = v30;
        v76 = v8;
        *&v85 = MEMORY[0x1E69E7CC0];
        sub_1C44CD9C0(0, v45 & ~(v45 >> 63), 0);
        if (v46 < 0)
        {
          __break(1u);
        }

        v47 = 0;
        v48 = v85;
        v80 = v44 & 0xC000000000000001;
        v81 = v44;
        v49 = v46;
        do
        {
          if (v80)
          {
            v50 = MEMORY[0x1C6940F90](v47, v44);
          }

          else
          {
            v50 = *(v44 + 8 * v47 + 32);
          }

          v51 = sub_1C4985D4C(v50);
          v52 = sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
          v53 = MEMORY[0x1C6940380](v51, v52);
          v55 = v54;

          *&v85 = v48;
          v57 = *(v48 + 16);
          v56 = *(v48 + 24);
          if (v57 >= v56 >> 1)
          {
            sub_1C44CD9C0(v56 > 1, v57 + 1, 1);
            v48 = v85;
          }

          ++v47;
          *(v48 + 16) = v57 + 1;
          v58 = v48 + 16 * v57;
          *(v58 + 32) = v53;
          *(v58 + 40) = v55;
          v44 = v81;
        }

        while (v49 != v47);

        v30 = v79;
      }

      else
      {

        v48 = MEMORY[0x1E69E7CC0];
      }

      v86 = v30;
      *&v85 = v48;
      sub_1C44482AC(&v85, v83);
      v59 = v77;
      swift_isUniquelyReferenced_nonNull_native();
      v82 = v59;
      sub_1C46601FC();
    }

    else
    {
    }
  }

  sub_1C440962C(&v87);
LABEL_32:
  v60 = objc_autoreleasePoolPush();
  v61 = objc_opt_self();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v62 = sub_1C4F00EC8();

  *&v87 = 0;
  v63 = [v61 dataWithJSONObject:v62 options:3 error:&v87];

  v64 = v87;
  if (v63)
  {
    v65 = sub_1C4EF9A68();
    v67 = v66;

    sub_1C4F01178();
    v68 = sub_1C4F01158();
    if (v69)
    {
      v70 = v68;
      sub_1C4434000(v65, v67);
    }

    else
    {
      sub_1C4434000(v65, v67);

      v70 = 1701736270;
    }

    objc_autoreleasePoolPop(v60);
  }

  else
  {
    v70 = v64;
    sub_1C4EF97A8();

    swift_willThrow();

    objc_autoreleasePoolPop(v60);
  }

  return v70;
}

uint64_t sub_1C498A5A8()
{
  sub_1C43FBCD4();
  v0[108] = v1;
  v0[107] = v2;
  v0[106] = v3;
  v0[105] = v4;
  v0[104] = v5;
  v6 = sub_1C456902C(&qword_1EC0C0688, &qword_1C4F3EFA8);
  v0[109] = v6;
  v0[110] = *(v6 - 8);
  v0[111] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C498A674()
{
  v102 = v0;
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44(&qword_1EDDF9710);
  }

  *(v0 + 896) = sub_1C4415590();
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49587E8();
  swift_setDeallocating();
  sub_1C44DEE40();
  if (qword_1EDDF6970 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v4 = *(v0 + 856);
    v5 = *(v0 + 848);
    v6 = sub_1C456902C(&qword_1EC0C0690, &qword_1C4F3EFB0);
    sub_1C442B738(v6, qword_1EDE2CEA8);
    *(v0 + 712) = v5;
    *(v0 + 720) = v4;
    sub_1C456902C(&qword_1EC0C0698, &qword_1C4F3EFB8);
    sub_1C498DA70();
    sub_1C4401CBC(&qword_1EDDF0008, &qword_1EC0C0690, &qword_1C4F3EFB0, MEMORY[0x1E69E9290]);
    v96 = sub_1C4F01038();
    v7 = *(v96 + 16);
    if (v7)
    {
      v8 = *(v0 + 880);
      v9 = *(v8 + 16);
      v8 += 16;
      v10 = v96 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
      v97 = *(v8 + 56);
      v99 = v9;
      v11 = (v8 - 8);
      v12 = MEMORY[0x1E69E7CC0];
      do
      {
        v99(*(v0 + 888), v10, *(v0 + 872));
        swift_getKeyPath();
        sub_1C4EFCBE8();

        v13 = *(v0 + 888);
        v14 = *(v0 + 872);
        if (*(v0 + 704))
        {
          v15 = MEMORY[0x1C693FEF0](*(v0 + 680), *(v0 + 688), *(v0 + 696), *(v0 + 704));
          v17 = v16;

          (*v11)(v13, v14);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C441E4B8();
            sub_1C443D664();
            v12 = v20;
          }

          v18 = *(v12 + 16);
          if (v18 >= *(v12 + 24) >> 1)
          {
            sub_1C443D664();
            v12 = v21;
          }

          *(v12 + 16) = v18 + 1;
          v19 = v12 + 16 * v18;
          *(v19 + 32) = v15;
          *(v19 + 40) = v17;
        }

        else
        {
          (*v11)(*(v0 + 888), *(v0 + 872));
        }

        v10 += v97;
        --v7;
      }

      while (v7);
    }

    v22 = sub_1C4499940();
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0(&qword_1EDDFA678);
    }

    v23 = sub_1C4F00978();
    sub_1C442B738(v23, qword_1EDE2DCD8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v24 = sub_1C4F00968();
    v25 = sub_1C4F01CF8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v101 = v27;
      *v26 = 136315138;
      v28 = sub_1C4F01AC8();
      v30 = sub_1C441D828(v28, v29, &v101);

      *(v26 + 4) = v30;
      sub_1C44065F4(&dword_1C43F8000, v31, v32, "Table names to replace: %s");
      sub_1C440962C(v27);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    if (qword_1EDDFF2A0 != -1)
    {
      sub_1C43FD998(&qword_1EDDFF2A0);
    }

    *(v0 + 904) = sub_1C44E7FAC();
    sub_1C4C81AA0(*(v0 + 832), *(v0 + 840), 0);
    sub_1C456902C(&qword_1EC0C06A0, &unk_1C4F5B890);
    sub_1C456902C(&qword_1EC0C06A8, &unk_1C4F5D8E0);
    if (!swift_dynamicCast())
    {
      break;
    }

    v36 = *(v0 + 856);
    v37 = *(v0 + 848);
    sub_1C441D670((v0 + 400), v0 + 320);
    *(v0 + 728) = v37;
    *(v0 + 736) = v36;
    *(v0 + 744) = 0x454C42415424;
    *(v0 + 752) = 0xE600000000000000;
    sub_1C4409678((v0 + 320), *(v0 + 344));
    v38 = sub_1C43FD074();
    v39(v38);
    sub_1C4409678((v0 + 440), *(v0 + 464));
    v40 = sub_1C43FD074();
    *(v0 + 760) = v41(v40);
    *(v0 + 768) = v42;
    sub_1C4415EA8();
    v47 = sub_1C4404478(v0 + 744, v0 + 760, v43, v44, v45, v46, MEMORY[0x1E69E6158]);
    v49 = v48;

    sub_1C440962C((v0 + 440));
    *(v0 + 504) = sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    *(v0 + 512) = sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50, MEMORY[0x1E69E6508]);
    *(v0 + 480) = v22;
    v53 = sub_1C4C81ADC((v0 + 480));
    v100 = v47;
    sub_1C440962C((v0 + 480));
    v54 = 0;
    v98 = v53;
    v55 = v53 + 64;
    v56 = -1;
    v57 = -1 << *(v53 + 32);
    if (-v57 < 64)
    {
      v56 = ~(-1 << -v57);
    }

    v58 = v56 & *(v53 + 64);
    v59 = (63 - v57) >> 6;
    while (1)
    {
      *(v0 + 912) = v49;
      if (!v58)
      {
        break;
      }

      v60 = v54;
LABEL_36:
      v61 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
      v62 = v61 | (v60 << 6);
      v63 = (*(v98 + 48) + 16 * v62);
      v64 = *v63;
      v65 = v63[1];
      sub_1C442E860(*(v98 + 56) + 40 * v62, v0 + 520);
      *(v0 + 216) = v64;
      *(v0 + 224) = v65;
      sub_1C441D670((v0 + 520), v0 + 232);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_37:
      v66 = *(v0 + 232);
      *(v0 + 160) = *(v0 + 216);
      *(v0 + 176) = v66;
      *(v0 + 192) = *(v0 + 248);
      *(v0 + 208) = *(v0 + 264);
      if (!*(v0 + 168))
      {

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v80 = sub_1C4F00968();
        v81 = sub_1C4F01CF8();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = *(v0 + 840);
          v83 = *(v0 + 832);
          v84 = swift_slowAlloc();
          *&v101 = swift_slowAlloc();
          *v84 = 136315394;
          *(v84 + 4) = sub_1C441D828(v83, v82, &v101);
          *(v84 + 12) = 2080;
          v85 = v100;
          *(v84 + 14) = sub_1C441D828(v100, v49, &v101);
          sub_1C4402B48();
          _os_log_impl(v86, v87, v88, v89, v90, 0x16u);
          swift_arrayDestroy();
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        else
        {

          v85 = v100;
        }

        v91 = *(v0 + 344);
        v92 = *(v0 + 352);
        sub_1C4409678((v0 + 320), v91);
        (*(v92 + 16))(v91, v92);
        v93 = *(v0 + 584);
        v94 = *(v0 + 592);
        sub_1C4409678((v0 + 560), v93);
        v95 = swift_task_alloc();
        *(v0 + 920) = v95;
        *v95 = v0;
        v95[1] = sub_1C498B2F8;

        return sub_1C498B538(v85, v49, v93, v94);
      }

      sub_1C441D670((v0 + 176), v0 + 600);
      *(v0 + 776) = v100;
      *(v0 + 784) = v49;
      *&v101 = 31524;
      *(&v101 + 1) = 0xE200000000000000;
      v67 = sub_1C4404C28();
      MEMORY[0x1C6940010](v67);

      MEMORY[0x1C6940010](125, 0xE100000000000000);
      v68 = *(&v101 + 1);
      *(v0 + 792) = v101;
      *(v0 + 800) = v68;
      sub_1C4409678((v0 + 600), *(v0 + 624));
      v69 = sub_1C43FD074();
      v70(v69);
      sub_1C4409678((v0 + 640), *(v0 + 664));
      v71 = sub_1C43FD074();
      *(v0 + 808) = v72(v71);
      *(v0 + 816) = v73;
      v100 = sub_1C4404478(v0 + 792, v0 + 808, v74, v75, v76, v77, MEMORY[0x1E69E6158]);
      v79 = v78;

      sub_1C440962C((v0 + 640));
      sub_1C440962C((v0 + 600));
      v49 = v79;
    }

    while (1)
    {
      v60 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v60 >= v59)
      {
        v58 = 0;
        *(v0 + 264) = 0;
        *(v0 + 248) = 0u;
        *(v0 + 232) = 0u;
        *(v0 + 216) = 0u;
        goto LABEL_37;
      }

      v58 = *(v55 + 8 * v60);
      ++v54;
      if (v58)
      {
        v54 = v60;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_47:
    swift_once();
  }

  v50 = *(v0 + 840);
  v51 = *(v0 + 832);

  *(v0 + 432) = 0;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  sub_1C4420C3C(v0 + 400, &unk_1EC0C06B0, &qword_1C4F5FBA0);
  sub_1C450B034();
  swift_allocError();
  *v52 = v51;
  *(v52 + 8) = v50;
  *(v52 + 16) = xmmword_1C4F3EF20;
  *(v52 + 32) = 0xD000000000000033;
  *(v52 + 40) = 0x80000001C4FAAE60;
  *(v52 + 48) = v101;
  *(v52 + 64) = 0;
  swift_willThrow();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C43FBDA0();

  return v33();
}

uint64_t sub_1C498B2F8()
{
  sub_1C43FEAEC();
  v3 = v2;
  v5 = v4;
  sub_1C43FBDE4();
  v7 = v6;
  sub_1C44001F0();
  *v8 = v7;
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;
  v7[116] = v0;

  if (!v0)
  {

    v7[117] = v3;
    v7[118] = v5;
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C498B41C()
{
  sub_1C43FBCD4();

  sub_1C440962C(v0 + 70);
  sub_1C440962C(v0 + 40);

  v1 = v0[1];
  v2 = v0[118];
  v3 = v0[117];

  return v1(v2, v3);
}

uint64_t sub_1C498B4AC()
{
  sub_1C43FBCD4();

  sub_1C440962C((v0 + 560));
  sub_1C440962C((v0 + 320));

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C498B538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C498B560, 0, 0);
}

uint64_t sub_1C498B560()
{
  sub_1C43FCF70();
  v1 = v0[5];
  v2 = v0[4];
  v0[9] = *((*(v0[7] + 16))(v0[6]) + 16);

  v3 = swift_allocObject();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = type metadata accessor for ErrorHandlingDatabasePool(0);
  v6 = sub_1C44FAF1C(&qword_1EDDFEDB0, type metadata accessor for ErrorHandlingDatabasePool, &unk_1C4F244D0);
  *v4 = v0;
  v4[1] = sub_1C498B6CC;
  v7 = MEMORY[0x1E69E6158];

  return MEMORY[0x1EEE09680](v0 + 2, sub_1C498DAC4, v3, v5, v7, v6);
}

uint64_t sub_1C498B6CC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C498B7F0()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C498B854(uint64_t a1)
{
  *(v1 + 128) = a1;
  sub_1C43FEAF8();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C498B880()
{
  v8 = v0;
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44(&qword_1EDDF9710);
  }

  sub_1C4415590();

  if (qword_1EDDFB828 != -1)
  {
    swift_once();
  }

  v0[17] = sub_1C4ABF9D8();
  v0[15] = MEMORY[0x1E69E7CC0];
  v0[18] = 0;
  v1 = sub_1C4CB06C4(byte_1F43D9F50);
  sub_1C4405DCC(v1, v2);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v4 = sub_1C442CCF0(v3);

  return sub_1C445E588(v4, v5, v6);
}

uint64_t sub_1C498BB0C()
{
  sub_1C43FEAEC();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *v7 = *v1;

  if (v0)
  {
  }

  else
  {

    *(v6 + 168) = v3;
    *(v6 + 176) = v5;
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C498BC54()
{
  sub_1C43FCF70();
  *(v0 + 96) = vextq_s8(*(v0 + 168), *(v0 + 168), 8uLL);
  sub_1C456902C(&qword_1EC0C6020, &qword_1C4F3EF98);
  sub_1C456902C(&qword_1EC0C0680, &qword_1C4F3EFA0);
  if (swift_dynamicCast())
  {
    if (*(v0 + 80))
    {
      sub_1C441D670((v0 + 56), v0 + 16);
      v1 = *(v0 + 48);
      sub_1C4409678((v0 + 16), *(v0 + 40));
      v2 = sub_1C4404F74();
      sub_1C4C0C3D4(v2, v1);
      sub_1C49D4838(v3);
      sub_1C440962C((v0 + 16));
      goto LABEL_6;
    }
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
  }

  sub_1C4420C3C(v0 + 56, &unk_1EC0C0670, &qword_1C4F3EF90);
LABEL_6:
  v4 = *(v0 + 144) + 1;
  if (*(v0 + 144) == 248)
  {

    sub_1C43FBCF0();

    return v5();
  }

  else
  {
    *(v0 + 144) = v4;
    v7 = sub_1C4CB06C4(*(&unk_1F43D9F30 + v4 + 32));
    sub_1C4405DCC(v7, v8);
    v9 = swift_task_alloc();
    *(v0 + 160) = v9;
    *v9 = v0;
    v10 = sub_1C442CCF0(v9);

    return sub_1C445E588(v10, v11, v12);
  }
}

uint64_t sub_1C498BE00()
{
  sub_1C43FCF70();
  *(v0 + 56) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  sub_1C4420C3C(v0 + 56, &unk_1EC0C0670, &qword_1C4F3EF90);
  v1 = *(v0 + 144) + 1;
  if (*(v0 + 144) == 248)
  {

    sub_1C43FBCF0();

    return v2();
  }

  else
  {
    *(v0 + 144) = v1;
    v4 = sub_1C4CB06C4(*(&unk_1F43D9F30 + v1 + 32));
    sub_1C4405DCC(v4, v5);
    v6 = swift_task_alloc();
    *(v0 + 160) = v6;
    *v6 = v0;
    v7 = sub_1C442CCF0(v6);

    return sub_1C445E588(v7, v8, v9);
  }
}

uint64_t InternalXPC.Server.viewInfo(viewQuery:rows:)()
{
  sub_1C43FBCD4();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[8] = v4;
  sub_1C43FBD18(v4);
  v1[9] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C498BF9C()
{
  sub_1C43FCF70();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    *swift_slowAlloc() = 0;
    sub_1C4402B48();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v9 = sub_1C442B738(*(v0 + 64), qword_1EDDEBB90);
  sub_1C43FC598(v9);
  v10 = sub_1C43FBC98();
  sub_1C446C964(v10, v11, v12, v13);
  type metadata accessor for Configuration(0);
  v14 = sub_1C4404F74();
  result = sub_1C44157D4(v14, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = swift_task_alloc();
    *(v0 + 80) = v17;
    *v17 = v0;
    v17[1] = sub_1C498C130;

    return sub_1C49860D4();
  }

  return result;
}

uint64_t sub_1C498C130()
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
    sub_1C4419AF4();

    sub_1C43FBCF0();

    return v12(v3);
  }
}

uint64_t sub_1C498C26C()
{
  sub_1C43FBCD4();
  sub_1C4419AF4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C498C368(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1C498C43C;

  return InternalXPC.Server.viewInfo(viewQuery:rows:)();
}

uint64_t sub_1C498C43C()
{
  sub_1C43FEAEC();
  v2 = v0;
  sub_1C43FBDE4();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v7 = v6[4];
  v8 = v6[3];
  v9 = v6[2];
  v10 = *v1;
  sub_1C43FBDAC();
  *v11 = v10;

  if (v2)
  {
    v12 = sub_1C4EF9798();

    v13 = v12;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
    v14 = sub_1C4F01658();

    v13 = v14;
  }

  v15 = *(v4 + 40);
  v16 = sub_1C44033C0();
  v17(v16);

  _Block_release(v15);
  sub_1C43FBDA0();

  return v18();
}

uint64_t InternalXPC.Server.viewSql(name:statement:)()
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
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C498C678()
{
  sub_1C43FCF70();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    *swift_slowAlloc() = 0;
    sub_1C4402B48();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v9 = sub_1C442B738(*(v0 + 80), qword_1EDDEBB90);
  sub_1C43FC598(v9);
  v10 = sub_1C43FBC98();
  sub_1C446C964(v10, v11, v12, v13);
  type metadata accessor for Configuration(0);
  v14 = sub_1C4404F74();
  result = sub_1C44157D4(v14, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = swift_task_alloc();
    *(v0 + 96) = v17;
    *v17 = v0;
    v17[1] = sub_1C498C80C;

    return sub_1C498A5A8();
  }

  return result;
}

uint64_t sub_1C498C80C()
{
  sub_1C43FCF70();
  v3 = v2;
  v5 = v4;
  sub_1C43FBDE4();
  v7 = v6;
  sub_1C44001F0();
  *v8 = v7;
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;
  *(v7 + 104) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    sub_1C4419AF4();

    v14 = *(v9 + 8);

    return v14(v5, v3);
  }
}

uint64_t sub_1C498C954()
{
  sub_1C43FBCD4();
  sub_1C4419AF4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C498CA50(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  sub_1C4F01138();
  v4[4] = v6;
  sub_1C4F01138();
  v4[5] = v7;
  a4;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_1C498CB4C;

  return InternalXPC.Server.viewSql(name:statement:)();
}

uint64_t sub_1C498CB4C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1C43FBDE4();
  v6 = v5;
  sub_1C44001F0();
  *v7 = v6;
  v9 = *(v8 + 16);
  v10 = *v3;
  sub_1C43FBDAC();
  *v11 = v10;

  if (v4)
  {
    v12 = sub_1C4EF9798();

    v13 = v12;
  }

  else
  {
    v14 = sub_1C4F01108();

    v13 = v14;
  }

  v15 = *(v6 + 24);
  v16 = sub_1C44033C0();
  v17(v16);

  _Block_release(v15);
  sub_1C43FBDA0();

  return v18();
}

uint64_t InternalXPC.Server.featureKeys()()
{
  sub_1C43FBCD4();
  v1[5] = v0;
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[6] = v2;
  sub_1C43FBD18(v2);
  v1[7] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C498CD84()
{
  sub_1C43FCF70();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    *swift_slowAlloc() = 0;
    sub_1C4402B48();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v9 = sub_1C442B738(v0[6], qword_1EDDEBB90);
  sub_1C43FC598(v9);
  v10 = sub_1C43FBC98();
  sub_1C446C964(v10, v11, v12, v13);
  type metadata accessor for Configuration(0);
  v14 = sub_1C4404F74();
  result = sub_1C44157D4(v14, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = swift_task_alloc();
    v0[8] = v17;
    *v17 = v0;
    v17[1] = sub_1C498CF10;
    v18 = v0[7];

    return sub_1C498B854(v18);
  }

  return result;
}

uint64_t sub_1C498CF10()
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
  *(v5 + 72) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1C4419AF4();

    sub_1C43FBCF0();

    return v12(v3);
  }
}

uint64_t sub_1C498D04C()
{
  sub_1C43FBCD4();
  sub_1C4419AF4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C498D12C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C498D1D4;

  return InternalXPC.Server.featureKeys()();
}

uint64_t sub_1C498D1D4()
{
  sub_1C43FCF70();
  v2 = v0;
  sub_1C43FBDE4();
  v4 = v3;
  sub_1C44001F0();
  *v5 = v4;
  v7 = *(v6 + 16);
  v8 = *v1;
  sub_1C43FBDAC();
  *v9 = v8;

  if (v2)
  {
    v10 = sub_1C4EF9798();

    v11 = v10;
  }

  else
  {
    sub_1C45A2D54();
    v12 = sub_1C4F01658();

    v11 = v12;
  }

  v13 = *(v4 + 24);
  v14 = sub_1C44033C0();
  v15(v14);

  _Block_release(v13);
  sub_1C43FBDA0();

  return v16();
}

uint64_t sub_1C498D338@<X0>(uint64_t *a3@<X8>)
{
  v42 = a3;
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  v10 = sub_1C4EFB768();
  sub_1C440BAA8(v9, 1, 1, v10);
  sub_1C4EFBE78();
  result = sub_1C4420C3C(v9, &unk_1EC0C06C0, &unk_1C4F10DB0);
  if (!v3)
  {
    v12 = v42;
    v39 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      while (1)
      {
        if (!sub_1C4EFB718())
        {
          *&v40[0] = v39;
          sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6310]);
          v33 = sub_1C4F01048();
          v35 = v34;

          *v12 = v33;
          v12[1] = v35;
          return result;
        }

        v13 = sub_1C4EFBC58();
        sub_1C440BAA8(v6, 1, 1, v10);
        v41 = 0;
        memset(v40, 0, sizeof(v40));
        v14 = sub_1C4EFBC28();
        sub_1C4420C3C(v40, &unk_1EC0BC770, &qword_1C4F10DC0);
        sub_1C4420C3C(v6, &unk_1EC0C06C0, &unk_1C4F10DB0);
        if (v14 >> 62)
        {
          break;
        }

        result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_6;
        }

LABEL_12:
        if (result == 1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v36 = MEMORY[0x1C6940F90](0, v14);
          }

          else
          {
            if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v36 = *(v14 + 32);
          }

          *&v40[0] = v36;
          sub_1C44FAF1C(&unk_1EC0C06D0, MEMORY[0x1E69A0008], MEMORY[0x1E69A0020]);
          v16 = sub_1C4F02858();
          v18 = v17;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v37 = v18;
          v38 = v16;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C443D664();
            v39 = v31;
          }

          v20 = *(v39 + 16);
          v21 = v20 + 1;
          if (v20 >= *(v39 + 24) >> 1)
          {
            sub_1C443D664();
            v39 = v32;
          }
        }

        else
        {
          v22 = MEMORY[0x1C6940380](v14, v13);
          v37 = v23;

          v24 = swift_isUniquelyReferenced_nonNull_native();
          v38 = v22;
          if ((v24 & 1) == 0)
          {
            sub_1C443D664();
            v39 = v29;
          }

          v20 = *(v39 + 16);
          v21 = v20 + 1;
          if (v20 >= *(v39 + 24) >> 1)
          {
            sub_1C443D664();
            v39 = v30;
          }
        }

        v26 = v38;
        v25 = v39;
        *(v39 + 16) = v21;
        v27 = v25 + 16 * v20;
        v28 = v37;
        *(v27 + 32) = v26;
        *(v27 + 40) = v28;
      }

      if (v14 < 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFFFFFFFF8;
      }

      v38 = v15;
      if (sub_1C4F02128())
      {
        result = sub_1C4F02128();
        goto LABEL_12;
      }

LABEL_6:
    }
  }

  return result;
}

uint64_t sub_1C498D7E8()
{
  sub_1C43FCF70();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;
  v2 = sub_1C43FBC98();

  return v3(v2);
}

uint64_t sub_1C498D88C()
{
  sub_1C43FEAEC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1C4411F54(v1);

  return v3(v2);
}

uint64_t sub_1C498D92C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C498D97C()
{
  sub_1C43FEAEC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1C4411F54(v1);

  return v3(v2);
}

unint64_t sub_1C498DA70()
{
  result = qword_1EDDDBDB0;
  if (!qword_1EDDDBDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBDB0);
  }

  return result;
}

uint64_t sub_1C498DAE0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_1C4D1EC90(a2, a3, a4, a5);
  if (!v5)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C498DC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *))
{
  v9[2] = a2;
  v9[3] = a1;

  v7 = a5(a4, v9);

  return v7;
}

void sub_1C498DC88(char a1, uint64_t a2, uint64_t a3)
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
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_1C498DCF8(uint64_t a1)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FFF80();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DCD8);
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v7))
  {
    *sub_1C43FCED0() = 0;
    sub_1C4404B70(&dword_1C43F8000, v8, v9, "InternalXPC: starting...");
    sub_1C43FFD18();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  sub_1C43FCEE8(v3, qword_1EDDEBB90);
  sub_1C440AD64();
  sub_1C4430E2C(a1, v1, v10);
  type metadata accessor for Configuration(0);
  v11 = sub_1C442F270();
  sub_1C440BAA8(v11, v12, v13, v14);
  swift_beginAccess();
  v15 = sub_1C4404050();
  sub_1C45A6EE0(v15, v16);
  swift_endAccess();
  sub_1C45A6F50();
  v17 = sub_1C448F160();
  v19 = sub_1C49AA56C(v17, v18);
  v20 = qword_1EDE2D270;
  qword_1EDE2D270 = v19;
  v21 = v19;

  if (v21)
  {
    qword_1EDE2D278 = [objc_allocWithZone(type metadata accessor for InternalXPC.Delegate()) init];
    v22 = qword_1EDE2D278;
    swift_unknownObjectRelease();
    [v21 setDelegate_];

    [v21 resume];
  }

  else
  {
    v21 = sub_1C4F00968();
    v23 = sub_1C4F01CE8();
    if (sub_1C4402B64(v23))
    {
      v24 = sub_1C43FCED0();
      sub_1C43FBD24(v24);
      sub_1C43FFFD8(&dword_1C43F8000, v25, v26, "Failed to create Internal XPC service");
      sub_1C43FE9D4();
    }
  }
}

uint64_t sub_1C498DF3C()
{
  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);

  return sub_1C442B738(v0, qword_1EDDEBB90);
}

uint64_t sub_1C498DF9C()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDDEBB90);
  v1 = sub_1C43FBC98();
  sub_1C442B738(v1, v2);
  type metadata accessor for Configuration(0);
  sub_1C43FCF64();

  return sub_1C440BAA8(v3, v4, v5, v6);
}

uint64_t static InternalXPC.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v2 = sub_1C4410428();
  v4 = sub_1C456902C(v2, v3);
  v5 = sub_1C442B738(v4, qword_1EDDEBB90);
  sub_1C440D164(v5, v7);
  return sub_1C446C964(v5, a1, &unk_1EC0B9610, &unk_1C4F0F2E0);
}

uint64_t static InternalXPC.configuration.setter(uint64_t a1)
{
  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v2 = sub_1C4410428();
  v4 = sub_1C456902C(v2, v3);
  v5 = sub_1C442B738(v4, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C498E14C(a1, v5);
  swift_endAccess();
  v6 = sub_1C43FBC98();
  return sub_1C4420C3C(v6, v7, &unk_1C4F0F2E0);
}

uint64_t sub_1C498E14C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static InternalXPC.configuration.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FCEE8(v1, qword_1EDDEBB90);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C498E248@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C498DF3C();
  swift_beginAccess();
  return sub_1C446C964(v2, a1, &unk_1EC0B9610, &unk_1C4F0F2E0);
}

uint64_t sub_1C498E2A4(uint64_t a1)
{
  v2 = sub_1C498DF3C();
  swift_beginAccess();
  sub_1C498E14C(a1, v2);
  return swift_endAccess();
}

uint64_t InternalXPC.InternalXPCError.hashValue.getter()
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](0);
  return sub_1C4F02B68();
}

void sub_1C498E3A0(uint64_t a1, void (**a2)(void, void, void))
{
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDE2DCD8);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C43F8000, v4, v5, "InternalXPC: status", v6, 2u);
    MEMORY[0x1C6942830](v6, -1, -1);
  }

  sub_1C494B4E4();
  v7 = sub_1C4F01108();
  (a2)[2](a2, v7, 0);

  _Block_release(a2);
}

uint64_t InternalXPC.Server.status(completion:)()
{
  sub_1C444C2AC();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = sub_1C4F00978();
  sub_1C43FCEE8(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_1C43FCED0();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "InternalXPC: status", v4, 2u);
    sub_1C43FFD4C();
  }

  v5 = sub_1C494B4E4();
  v0(v5);
}

uint64_t InternalXPC.Server.clearStatus()()
{
  sub_1C43FBCD4();
  v1 = type metadata accessor for Configuration(0);
  v0[18] = v1;
  sub_1C43FBD18(v1);
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v2 = type metadata accessor for Pipeline.StatusStore(0);
  v0[21] = v2;
  sub_1C43FBD18(v2);
  v0[22] = sub_1C43FBE7C();
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[23] = v3;
  sub_1C43FBD18(v3);
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v4 = _s11StatusStoreVMa(0);
  sub_1C43FBD18(v4);
  v0[26] = sub_1C43FBE7C();
  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C498E98C()
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "InternalXPC: clearStatus");
    sub_1C43FE9D4();
  }

  v86 = v0[21];

  v7 = 0;
  while (v7 != 4)
  {
    v8 = *(&unk_1F43D9C28 + v7 + 32);
    if (qword_1EDDEBB80 != -1)
    {
      swift_once();
    }

    v9 = v0[18];
    v10 = sub_1C442B738(v0[23], qword_1EDDEBB90);
    sub_1C440D164(v10, (v0 + 12));
    v11 = sub_1C4404050();
    sub_1C446C964(v11, v12, &unk_1EC0B9610, &unk_1C4F0F2E0);
    v13 = sub_1C440EF74();
    result = sub_1C440175C(v13, v14, v9);
    if (v16)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return result;
    }

    v17 = v7 + 1;
    v18 = v0[22];
    v19 = v0[20];
    sub_1C440E3F8();
    sub_1C499967C(v20, v18, v21);
    v22 = *(v86 + 20);
    *(v18 + v22) = v8;
    sub_1C440AD64();
    sub_1C4430E2C(v18, v19, v23);
    v24 = 0xE700000000000000;
    v25 = 0x6E776F6E6B6E75;
    switch(*(v18 + v22))
    {
      case 1:
        v24 = 0xE400000000000000;
        v25 = 1819047270;
        break;
      case 2:
        v24 = 0xE500000000000000;
        v25 = 0x61746C6564;
        break;
      case 3:
        v25 = sub_1C44133C0();
        v24 = 0xEA0000000000676ELL;
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v25, v24);

    MEMORY[0x1C6940010](0x756F69766572702ELL, 0xE900000000000073);
    type metadata accessor for KeyValueStore(0);
    swift_allocObject();
    v26 = sub_1C4404050();
    KeyValueStore.init(config:domain:)(v26, v27, 0x80000001C4FAAFC0);
    v89 = v17;
    v28 = sub_1C4AD27B0();
    v29 = *(v28 + 16);
    if (v29)
    {
      v87 = v22;
      v88 = v18;
      sub_1C4461FF0();
      v30._rawValue = 0xD000000000000010;
      v31 = v28 + 32;
      do
      {
        sub_1C442E860(v31, (v0 + 2));
        sub_1C4409678(v0 + 2, v0[5]);
        v32 = sub_1C44409FC();
        v34 = v33(v32);
        v36 = v35;
        sub_1C440962C(v0 + 2);
        v37 = MEMORY[0xD000000000000020];
        if (MEMORY[0xD000000000000020] >= MEMORY[0xD000000000000028] >> 1)
        {
          v39 = sub_1C43FCFE8(MEMORY[0xD000000000000028]);
          sub_1C44CD9C0(v39, v37 + 1, 1);
        }

        MEMORY[0xD000000000000020] = v37 + 1;
        v38 = 16 * v37 - 0x2FFFFFFFFFFFFFF0;
        *(v38 + 32) = v34;
        *(v38 + 40) = v36;
        v31 += 40;
        --v29;
      }

      while (v29);

      v22 = v87;
      v18 = v88;
    }

    else
    {

      v30._rawValue = MEMORY[0x1E69E7CC0];
    }

    KeyValueStore.delete(keys:)(v30);
    v40 = v0[22];
    if (v41)
    {
      sub_1C445E8A0();
      sub_1C44BCA84(v40, v76);

LABEL_40:

      v77 = sub_1C4409E50();
      goto LABEL_41;
    }

    sub_1C440AD64();
    v42 = sub_1C4410428();
    sub_1C4430E2C(v42, v43, v44);
    v45 = 0xE700000000000000;
    v46 = 0x6E776F6E6B6E75;
    switch(*(v18 + v22))
    {
      case 1:
        v45 = 0xE400000000000000;
        v46 = 1819047270;
        break;
      case 2:
        v45 = 0xE500000000000000;
        v46 = 0x61746C6564;
        break;
      case 3:
        v46 = sub_1C44133C0();
        v45 = 0xEA0000000000676ELL;
        break;
      default:
        break;
    }

    MEMORY[0x1C6940010](v46, v45);

    MEMORY[0x1C6940010](0x746E65727275632ELL, 0xE800000000000000);
    swift_allocObject();
    sub_1C445FDE4();
    KeyValueStore.init(config:domain:)(v47, v48, v49);
    v50 = sub_1C4AD27B0();
    v51 = *(v50 + 16);
    if (v51)
    {
      sub_1C4461FF0();
      v52._rawValue = 0xD000000000000010;
      v53 = v50 + 32;
      do
      {
        sub_1C442E860(v53, (v0 + 7));
        sub_1C4409678(v0 + 7, v0[10]);
        v54 = sub_1C44409FC();
        v56 = v55(v54);
        v58 = v57;
        sub_1C440962C(v0 + 7);
        v59 = MEMORY[0xD000000000000020];
        if (MEMORY[0xD000000000000020] >= MEMORY[0xD000000000000028] >> 1)
        {
          v61 = sub_1C43FCFE8(MEMORY[0xD000000000000028]);
          sub_1C44CD9C0(v61, v59 + 1, 1);
        }

        MEMORY[0xD000000000000020] = v59 + 1;
        v60 = 16 * v59 - 0x2FFFFFFFFFFFFFF0;
        *(v60 + 32) = v56;
        *(v60 + 40) = v58;
        v53 += 40;
        --v51;
      }

      while (v51);
    }

    else
    {

      v52._rawValue = MEMORY[0x1E69E7CC0];
    }

    KeyValueStore.delete(keys:)(v52);
    sub_1C445E8A0();
    sub_1C44BCA84(v62, v63);

    v7 = v89;
    if (v64)
    {
      goto LABEL_40;
    }
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v65 = v0[18];
  v66 = sub_1C442B738(v0[23], qword_1EDDEBB90);
  sub_1C440D164(v66, (v0 + 15));
  v67 = sub_1C4404050();
  sub_1C446C964(v67, v68, v69, v70);
  v71 = sub_1C440EF74();
  result = sub_1C440175C(v71, v72, v65);
  if (v16)
  {
    goto LABEL_48;
  }

  v73 = v0[26];
  sub_1C440E3F8();
  sub_1C499967C(v74, v73, v75);
  sub_1C4C6ABF8(1);
  sub_1C4C6ABF8(0);
  v79 = sub_1C4F00968();
  v80 = sub_1C4F01CF8();
  if (sub_1C4402B64(v80))
  {
    v82 = sub_1C43FCED0();
    sub_1C43FBD24(v82);
    sub_1C43FFFD8(&dword_1C43F8000, v83, v84, "InternalXPC: clearStatus: done");
    sub_1C43FE9D4();
  }

  v85 = v0[26];

  sub_1C44BCA84(v85, _s11StatusStoreVMa);

  sub_1C43FBCF0();
  v77 = 1;
LABEL_41:

  return v78(v77);
}

uint64_t sub_1C498F168(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C498F20C;

  return InternalXPC.Server.clearStatus()();
}

uint64_t sub_1C498F20C(char a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  sub_1C43FBDAC();
  *v7 = v6;
  v8 = *(v5 + 16);
  v9 = *v2;
  *v7 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_1C4EF9798();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

void sub_1C498F394(uint64_t a1, void (**a2)(void, void, void))
{
  v40[4] = *MEMORY[0x1E69E9840];
  v3 = sub_1C4F01188();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v39 - v5;
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DCD8);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C43F8000, v8, v9, "InternalXPC: stats", v10, 2u);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v11 = sub_1C442B738(v4, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C446C964(v11, v6, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v12 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v6, 1, v12) == 1)
  {
    __break(1u);
  }

  sub_1C4B6AFD4();
  sub_1C44BCA84(v6, type metadata accessor for Configuration);
  v25 = objc_autoreleasePoolPush();
  v26 = objc_opt_self();
  v27 = sub_1C4F00EC8();
  v40[0] = 0;
  v28 = [v26 dataWithJSONObject:v27 options:3 error:v40];

  v29 = v40[0];
  if (v28)
  {
    v30 = sub_1C4EF9A68();
    v32 = v31;

    objc_autoreleasePoolPop(v25);
    sub_1C4F01178();
    sub_1C4F01158();
    if (v33)
    {
      v34 = sub_1C4F01108();
      (a2)[2](a2, v34, 0);

      sub_1C4434000(v30, v32);

      goto LABEL_13;
    }

    sub_1C4999628();
    v37 = swift_allocError();
    v38 = sub_1C4EF9798();
    (a2)[2](a2, 0, v38);

    sub_1C4434000(v30, v32);
    v24 = v37;
  }

  else
  {
    v35 = v29;
    v36 = sub_1C4EF97A8();

    swift_willThrow();

    objc_autoreleasePoolPop(v25);
    v13 = v36;
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v40[0] = v17;
      *v16 = 136315138;
      v39[1] = v36;
      v18 = v36;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v19 = sub_1C4F01198();
      v21 = sub_1C441D828(v19, v20, v40);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1C43F8000, v14, v15, "InternalXPC: stats: failed: %s", v16, 0xCu);
      sub_1C440962C(v17);
      MEMORY[0x1C6942830](v17, -1, -1);
      MEMORY[0x1C6942830](v16, -1, -1);
    }

    v22 = v36;
    v23 = sub_1C4EF9798();
    (a2)[2](a2, 0, v23);

    v24 = v36;
  }

LABEL_13:
  _Block_release(a2);
}

void InternalXPC.Server.stats(completion:)()
{
  sub_1C444C2AC();
  v49 = *MEMORY[0x1E69E9840];
  v1 = sub_1C4F01188();
  v2 = sub_1C43FBD18(v1);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v46 - v5;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v7 = sub_1C4F00978();
  sub_1C43FCEE8(v7, qword_1EDE2DCD8);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = sub_1C43FCED0();
    *v10 = 0;
    _os_log_impl(&dword_1C43F8000, v8, v9, "InternalXPC: stats", v10, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v11 = sub_1C442B738(v3, qword_1EDDEBB90);
  sub_1C440D164(v11, v48);
  sub_1C446C964(v11, v6, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v12 = type metadata accessor for Configuration(0);
  sub_1C4402E68(v6, v13, v12);
  if (v14)
  {
    __break(1u);
  }

  sub_1C4B6AFD4();
  sub_1C4419B1C();
  sub_1C44BCA84(v6, v31);
  v32 = objc_autoreleasePoolPush();
  v33 = objc_opt_self();
  v34 = sub_1C4F00EC8();
  v47 = 0;
  v35 = [v33 dataWithJSONObject:v34 options:3 error:&v47];

  v36 = v47;
  if (!v35)
  {
    v43 = v36;
    v44 = sub_1C4EF97A8();

    swift_willThrow();

    objc_autoreleasePoolPop(v32);
    v15 = v44;
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CD8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = sub_1C43FD084();
      v19 = sub_1C43FFD34();
      v47 = v19;
      *v18 = 136315138;
      v46[1] = v44;
      v20 = v44;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v21 = sub_1C4F01198();
      v23 = sub_1C441D828(v21, v22, &v47);

      *(v18 + 4) = v23;
      sub_1C4415A90();
      _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
      sub_1C440962C(v19);
      sub_1C43FFD18();
      sub_1C43FEA20();
    }

    v29 = v44;
    (v0)(0, 0, v44);

    v30 = v44;
    goto LABEL_12;
  }

  v37 = sub_1C4EF9A68();
  v39 = v38;

  objc_autoreleasePoolPop(v32);
  sub_1C4F01178();
  v40 = sub_1C4F01158();
  v41 = v40;
  if (!v42)
  {
    sub_1C4999628();
    v45 = swift_allocError();
    (v0)(v41, 0, v45);
    sub_1C4434000(v37, v39);
    v30 = v45;
LABEL_12:

    return;
  }

  v0(v40);
  sub_1C4434000(v37, v39);
}

void sub_1C498FD90(uint64_t *a1, uint64_t a2, char *a3)
{
  v303 = a1;
  v299 = type metadata accessor for GraphTriple(0);
  v291 = *(v299 - 8);
  MEMORY[0x1EEE9AC00](v299);
  *&v298 = v257 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v292 = v257 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v293 = (v257 - v8);
  v306 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v306);
  v275 = v257 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v304 = (v257 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v302 = (v257 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v257 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v290 = (v257 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v274 = v257 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v300 = v257 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v257 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v305 = v257 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v285 = (v257 - v29);
  v295 = type metadata accessor for EventTriple(0);
  v288 = *(v295 - 8);
  MEMORY[0x1EEE9AC00](v295);
  v294 = v257 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v268 = v257 - v32;
  v286 = sub_1C4EFDE98();
  v277 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286);
  v258 = v257 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v261 = (v257 - v35);
  MEMORY[0x1EEE9AC00](v36);
  v273 = v257 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v259 = v257 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v263 = (v257 - v41);
  v42 = sub_1C4EFDE88();
  v271 = *(v42 - 8);
  v272 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v270 = v257 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v269 = v257 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v283 = v257 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v282 = v257 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v297 = v257 - v51;
  v52 = sub_1C4EFDC98();
  v265 = *(v52 - 8);
  v266 = v52;
  MEMORY[0x1EEE9AC00](v52);
  v264 = v257 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1C456902C(&qword_1EC0BE4F0, &qword_1C4F37248);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v260 = v257 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v267 = (v257 - v57);
  MEMORY[0x1EEE9AC00](v58);
  v278 = v257 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v262 = v257 - v61;
  MEMORY[0x1EEE9AC00](v62);
  *&v280 = v257 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v279 = v257 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v281 = v257 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v287 = v257 - v69;
  MEMORY[0x1EEE9AC00](v70);
  p_info = (v257 - v71);
  MEMORY[0x1EEE9AC00](v73);
  v75 = v257 - v74;
  v296 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v296);
  v77 = (v257 - v76);
  if (qword_1EDDFA678 != -1)
  {
    goto LABEL_257;
  }

  while (1)
  {
    v78 = sub_1C4F00978();
    v79 = sub_1C442B738(v78, qword_1EDE2DCD8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v284 = v79;
    v80 = sub_1C4F00968();
    v81 = sub_1C4F01CF8();

    v82 = os_log_type_enabled(v80, v81);
    v301 = v25;
    v289 = v75;
    v276 = a3;
    if (v82)
    {
      v83 = p_info;
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v314[0] = v85;
      *v84 = 136315138;
      v86 = sub_1C4F00EE8();
      v88 = sub_1C441D828(v86, v87, v314);

      *(v84 + 4) = v88;
      v75 = v289;
      _os_log_impl(&dword_1C43F8000, v80, v81, "InternalXPC: triples query: %s", v84, 0xCu);
      sub_1C440962C(v85);
      v89 = v85;
      v25 = v301;
      MEMORY[0x1C6942830](v89, -1, -1);
      v90 = v84;
      p_info = v83;
      MEMORY[0x1C6942830](v90, -1, -1);
    }

    v91 = v300;
    if (qword_1EDDEBB80 != -1)
    {
      swift_once();
    }

    v92 = sub_1C442B738(v296, qword_1EDDEBB90);
    swift_beginAccess();
    sub_1C446C964(v92, v77, &unk_1EC0B9610, &unk_1C4F0F2E0);
    v93 = type metadata accessor for Configuration(0);
    if (sub_1C44157D4(v77, 1, v93) == 1)
    {
      break;
    }

    type metadata accessor for GraphStore(0);
    swift_allocObject();
    v94 = GraphStore.init(config:)(v77);
    v257[0] = p_info;
    v257[1] = v94;
    v95 = v286;
    sub_1C440BAA8(v75, 1, 1, v286);
    v96 = sub_1C44735D4(0x686372616573, 0xE600000000000000, v303);
    v77 = &qword_1C4F0D000;
    if (v97)
    {
      v98 = v96;
      v99 = v97;
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      *(inited + 32) = v98;
      *(inited + 40) = v99;
      sub_1C4499940();
      v101 = v264;
      v102 = v265;
      v103 = v266;
      (*(v265 + 104))(v264, *MEMORY[0x1E69A9500], v266);
      v104 = v257[0];
      sub_1C4EFDC88();

      v105 = v103;
      v77 = &qword_1C4F0D000;
      (*(v102 + 8))(v101, v105);
      v106 = v289;
      sub_1C4420C3C(v289, &qword_1EC0BE4F0, &qword_1C4F37248);
      sub_1C440BAA8(v104, 0, 1, v95);
      sub_1C49996D8(v104, v106);
    }

    sub_1C440BAA8(v287, 1, 1, v95);
    sub_1C44735D4(0x7463656A627573, 0xE700000000000000, v303);
    if (v107 || (sub_1C44735D4(0x7461636964657270, 0xE900000000000065, v303), v108 = v277, v109) || (sub_1C44735D4(0x7463656A626FLL, 0xE600000000000000, v303), v110))
    {

      sub_1C44735D4(0x7463656A627573, 0xE700000000000000, v303);
      if (v111)
      {

        sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
        v112 = swift_initStackObject();
        *(v112 + 16) = xmmword_1C4F0D130;
        v113 = sub_1C44735D4(0x7463656A627573, 0xE700000000000000, v303);
        if (!v114)
        {
          goto LABEL_259;
        }

        *(v112 + 32) = v113;
        *(v112 + 40) = v114;
        sub_1C448DE08();
        v296 = v115;
      }

      else
      {
        v296 = 0;
      }

      sub_1C44735D4(0x7461636964657270, 0xE900000000000065, v303);
      if (v116)
      {

        sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
        v117 = swift_initStackObject();
        *(v117 + 16) = xmmword_1C4F0D130;
        v118 = sub_1C44735D4(0x7461636964657270, 0xE900000000000065, v303);
        if (!v119)
        {
          goto LABEL_260;
        }

        *(v117 + 32) = v118;
        *(v117 + 40) = v119;
        sub_1C448DE08();
        v121 = v120;
      }

      else
      {
        v121 = 0;
      }

      sub_1C44735D4(0x7463656A626FLL, 0xE600000000000000, v303);
      v266 = v121;
      if (v122)
      {

        sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
        v123 = swift_initStackObject();
        *(v123 + 16) = xmmword_1C4F0D130;
        v124 = sub_1C44735D4(0x7463656A626FLL, 0xE600000000000000, v303);
        if (!v125)
        {
          goto LABEL_261;
        }

        *(v123 + 32) = v124;
        *(v123 + 40) = v125;
        sub_1C448DE08();
        v303 = v126;
      }

      else
      {
        v303 = 0;
      }

      v127 = v271;
      v128 = v272;
      v129 = *MEMORY[0x1E69A95C0];
      v130 = *(v271 + 104);
      v130(v297, v129, v272);
      v130(v282, v129, v128);
      v130(v283, v129, v128);
      v131 = v269;
      v130(v269, v129, v128);
      v132 = v270;
      v130(v270, v129, v128);
      v133 = v282;
      sub_1C4EFDCE8();

      v134 = *(v127 + 8);
      v77 = (v127 + 8);
      v134(v132, v128);
      v134(v131, v128);
      v134(v283, v128);
      v134(v133, v128);
      v134(v297, v128);
      v135 = v287;
      sub_1C4420C3C(v287, &qword_1EC0BE4F0, &qword_1C4F37248);
      v136 = v281;
      v95 = v286;
      sub_1C440BAA8(v281, 0, 1, v286);
      sub_1C49996D8(v136, v135);
      v91 = v300;
      v25 = v301;
      v108 = v277;
    }

    sub_1C440BAA8(v279, 1, 1, v95);
    v137 = v289;
    v138 = v280;
    sub_1C446C964(v289, v280, &qword_1EC0BE4F0, &qword_1C4F37248);
    if (sub_1C44157D4(v138, 1, v95) != 1)
    {
      v139 = *(v108 + 32);
      v77 = v263;
      v139(v263, v138, v95);
      v138 = v262;
      sub_1C446C964(v287, v262, &qword_1EC0BE4F0, &qword_1C4F37248);
      if (sub_1C44157D4(v138, 1, v95) != 1)
      {
        v145 = v139;
        v146 = v259;
        v145(v259, v138, v95);
        p_info = v257[0];
        sub_1C4EFDCB8();
        v147 = *(v108 + 8);
        v147(v146, v95);
        v147(v77, v95);
        v141 = v279;
        sub_1C4420C3C(v279, &qword_1EC0BE4F0, &qword_1C4F37248);
        sub_1C440BAA8(p_info, 0, 1, v95);
        sub_1C49996D8(p_info, v141);
        goto LABEL_35;
      }

      (*(v108 + 8))(v77, v95);
      v137 = v289;
    }

    sub_1C4420C3C(v138, &qword_1EC0BE4F0, &qword_1C4F37248);
    p_info = v267;
    sub_1C446C964(v137, v267, &qword_1EC0BE4F0, &qword_1C4F37248);
    v95 = v286;
    if (sub_1C44157D4(p_info, 1, v286) == 1)
    {
      sub_1C4420C3C(p_info, &qword_1EC0BE4F0, &qword_1C4F37248);
      v140 = v260;
      sub_1C446C964(v287, v260, &qword_1EC0BE4F0, &qword_1C4F37248);
      if (sub_1C44157D4(v140, 1, v95) == 1)
      {
        sub_1C4420C3C(v140, &qword_1EC0BE4F0, &qword_1C4F37248);
        v141 = v279;
        goto LABEL_35;
      }

      v148 = v279;
      sub_1C4420C3C(v279, &qword_1EC0BE4F0, &qword_1C4F37248);
      v149 = *(v277 + 32);
      v150 = v140;
      v151 = v258;
      v149(v258, v150, v286);
      v149(v148, v151, v286);
      v141 = v148;
      v95 = v286;
      v144 = v141;
    }

    else
    {
      v142 = v279;
      sub_1C4420C3C(v279, &qword_1EC0BE4F0, &qword_1C4F37248);
      v143 = *(v277 + 32);
      v77 = v261;
      v143(v261, p_info, v95);
      v143(v142, v77, v95);
      v141 = v142;
      v144 = v142;
    }

    sub_1C440BAA8(v144, 0, 1, v95);
LABEL_35:
    v152 = v278;
    sub_1C446C964(v141, v278, &qword_1EC0BE4F0, &qword_1C4F37248);
    if (sub_1C44157D4(v152, 1, v95) == 1)
    {
      sub_1C4420C3C(v152, &qword_1EC0BE4F0, &qword_1C4F37248);
      v153 = sub_1C4F00968();
      v154 = sub_1C4F01CD8();
      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        *v155 = 0;
        _os_log_impl(&dword_1C43F8000, v153, v154, "InternalXPC: triples query: failed to generate query.", v155, 2u);
        MEMORY[0x1C6942830](v155, -1, -1);
      }

      sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
      v156 = sub_1C4F01658();
      v157 = sub_1C4F01658();
      v158 = v276;
      (*(v276 + 2))(v276, v156, v157);

LABEL_248:
      sub_1C4420C3C(v279, &qword_1EC0BE4F0, &qword_1C4F37248);
      sub_1C4420C3C(v287, &qword_1EC0BE4F0, &qword_1C4F37248);
      sub_1C4420C3C(v289, &qword_1EC0BE4F0, &qword_1C4F37248);
      _Block_release(v158);
      return;
    }

    v159 = MEMORY[0x1E69E7CC0];
    v160 = v273;
    (*(v277 + 32))(v273, v152, v95);
    v161 = sub_1C4EFF8F8();
    v162 = v268;
    sub_1C440BAA8(v268, 1, 1, v161);
    v163 = sub_1C498DC1C(v160, v162, &OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool, sub_1C4999CC8, sub_1C4505B00);
    sub_1C4420C3C(v162, &qword_1EC0BAA00, &unk_1C4F17400);
    v164 = *(v163 + 16);
    if (!v164)
    {

      v297 = MEMORY[0x1E69E7CC0];
LABEL_144:
      v213 = v268;
      sub_1C440BAA8(v268, 1, 1, v161);
      v75 = sub_1C498DC1C(v273, v213, &OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool, sub_1C4999CAC, sub_1C49A52CC);
      sub_1C4420C3C(v213, &qword_1EC0BAA00, &unk_1C4F17400);
      a3 = *(v75 + 16);
      v16 = MEMORY[0x1E69E7CC0];
      if (a3)
      {
        v311 = MEMORY[0x1E69E7CC0];
        sub_1C459E7C8(0, a3, 0);
        v214 = 0;
        v302 = (v75 + ((*(v288 + 80) + 32) & ~*(v288 + 80)));
        v77 = v311;
        v299 = 0x80000001C4F86600;
        v291 = 0x80000001C4F86630;
        v298 = xmmword_1C4F23100;
        v296 = v75;
        v292 = a3;
        while (v214 < *(v75 + 16))
        {
          v303 = (v214 + 1);
          v304 = v77;
          v215 = v294;
          sub_1C4430E2C(v302 + *(v288 + 72) * v214, v294, type metadata accessor for EventTriple);
          sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
          a3 = swift_allocObject();
          *(a3 + 1) = v298;
          *(a3 + 4) = 0x7463656A627573;
          *(a3 + 5) = 0xE700000000000000;
          *(a3 + 6) = sub_1C4EFF048();
          *(a3 + 7) = v216;
          v217 = MEMORY[0x1E69E6158];
          *(a3 + 9) = MEMORY[0x1E69E6158];
          *(a3 + 10) = 0x7461636964657270;
          *(a3 + 11) = 0xE900000000000065;
          p_info = v16;
          v218 = v295;
          *(a3 + 12) = sub_1C4EFEB68();
          *(a3 + 13) = v219;
          *(a3 + 15) = v217;
          strcpy(a3 + 128, "relationshipId");
          a3[143] = -18;
          *(a3 + 18) = sub_1C4EFF848();
          *(a3 + 19) = v220;
          *(a3 + 21) = v217;
          *(a3 + 22) = 0xD000000000000015;
          *(a3 + 23) = v299;
          *(a3 + 24) = sub_1C4EFEB68();
          *(a3 + 25) = v221;
          *(a3 + 27) = v217;
          *(a3 + 28) = 0x7463656A626FLL;
          *(a3 + 29) = 0xE600000000000000;
          v222 = (v215 + *(v218 + 32));
          v223 = v222[1];
          *(a3 + 30) = *v222;
          *(a3 + 31) = v223;
          *(a3 + 33) = v217;
          v77 = v293;
          *(a3 + 34) = 0x73656372756F73;
          *(a3 + 35) = 0xE700000000000000;
          v75 = *(v215 + *(v218 + 36));
          v312 = p_info;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44CD9C0(0, 0, 0);
          v224 = v312;
          v16 = 1;
          while (1)
          {
            v225 = v224;
LABEL_149:
            if (qword_1EDDFA6A8 != -1)
            {
              swift_once();
            }

            if (qword_1EDE2DCF0 < v16)
            {
              break;
            }

            switch(v16)
            {
              case 1:
                if (qword_1EDDFED28 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = &unk_1EDDFD088;
                goto LABEL_227;
              case 2:
                if (qword_1EDDFD0D0 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = qword_1EDDFD0D8;
                goto LABEL_227;
              case 6:
                if (qword_1EDDFD0A8 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = qword_1EDDFD0B0;
                goto LABEL_227;
              case 9:
                if (qword_1EDDFD150 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = qword_1EDDFD158;
                goto LABEL_227;
              case 11:
                if (qword_1EDDFD068 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = qword_1EDDFD070;
                goto LABEL_227;
              case 12:
                if (qword_1EDDFD110 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = qword_1EDDFD118;
                goto LABEL_227;
              case 14:
                if (qword_1EDDFED38 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = qword_1EDDFD0F0;
                goto LABEL_227;
              case 16:
                if (qword_1EDDFD2F0 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = qword_1EDDFD2F8;
                goto LABEL_227;
              case 17:
                if (qword_1EDDFED08 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = qword_1EDDFED10;
                goto LABEL_227;
              case 18:
                if (qword_1EDDFD040 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = qword_1EDDFD048;
                goto LABEL_227;
              case 19:
                if (qword_1EDDFD268 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = &qword_1EDDFD270;
                goto LABEL_227;
              case 21:
                if (qword_1EDDFD130 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = qword_1EDDFD138;
                goto LABEL_227;
              case 22:
                if (qword_1EDDFD178 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = &qword_1EDDFD180;
                goto LABEL_227;
              case 23:
                if (qword_1EDDFED40 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = qword_1EDDFD2A8;
                goto LABEL_227;
              case 24:
                if (qword_1EDDFD218 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = &qword_1EDDFD220;
                goto LABEL_227;
              case 25:
                if (qword_1EDDFD240 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = &qword_1EDDFD248;
                goto LABEL_227;
              case 27:
                if (qword_1EDDFD318 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = qword_1EDDFD320;
                goto LABEL_227;
              case 28:
                if (qword_1EDDFD340 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = qword_1EDDFD348;
                goto LABEL_227;
              case 29:
                if (qword_1EDDFD2C8 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = qword_1EDDFD2D0;
                goto LABEL_227;
              case 31:
                if (qword_1EDDFD1F0 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = &qword_1EDDFD1F8;
                goto LABEL_227;
              case 32:
                if (qword_1EDDFD288 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = &qword_1EDDFD290;
                goto LABEL_227;
              case 33:
                if (qword_1EDDFD1A0 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = &qword_1EDDFD1A8;
                goto LABEL_227;
              case 34:
                if (qword_1EDDFD1C8 != -1)
                {
                  swift_once();
                }

                v226 = v306;
                v227 = &qword_1EDDFD1D0;
LABEL_227:
                v232 = sub_1C442B738(v226, v227);
                sub_1C4430E2C(v232, v91, type metadata accessor for Source);
                goto LABEL_228;
              default:
                if (qword_1EDDFDCF8 != -1)
                {
                  swift_once();
                }

                swift_beginAccess();
                if (!qword_1EDDFF3C8)
                {
                  sub_1C440BAA8(v77, 1, 1, v306);
LABEL_238:
                  sub_1C4420C3C(v77, &unk_1EC0C0760, &qword_1C4F170D0);
                  v193 = __OFADD__(v16++, 1);
                  v224 = v225;
                  if (v193)
                  {
                    goto LABEL_256;
                  }

                  goto LABEL_149;
                }

                v228 = (*(off_1EDDFF3D0 + 2))();
                (*(v229 + 16))(v16, v228, v229);
                if (sub_1C44157D4(v77, 1, v306) == 1)
                {
                  goto LABEL_238;
                }

                v230 = v274;
                sub_1C499967C(v77, v274, type metadata accessor for Source);
                v231 = v230;
                v25 = v301;
                sub_1C499967C(v231, v91, type metadata accessor for Source);
LABEL_228:
                sub_1C499967C(v91, v25, type metadata accessor for Source);
                sub_1C499967C(v25, v305, type metadata accessor for Source);
                v233 = v16 - 1;
                if (__OFSUB__(v16, 1))
                {
                  goto LABEL_251;
                }

                v193 = __OFADD__(v16++, 1);
                if (v193)
                {
                  goto LABEL_252;
                }

                v234 = v233 > 0x40;
                if (v233 >= 0x40)
                {
                  v235 = 0;
                }

                else
                {
                  v235 = 1 << v233;
                }

                if (v234)
                {
                  v235 = 0;
                }

                if ((v235 & v75) < 1)
                {
                  v224 = v225;
                  sub_1C44BCA84(v305, type metadata accessor for Source);
                  goto LABEL_149;
                }

                v236 = v285;
                sub_1C499967C(v305, v285, type metadata accessor for Source);
                v238 = *v236;
                v237 = v236[1];
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v239 = v236;
                v224 = v225;
                sub_1C44BCA84(v239, type metadata accessor for Source);
                v312 = v225;
                v241 = *(v225 + 16);
                v240 = *(v225 + 24);
                p_info = (v241 + 1);
                if (v241 >= v240 >> 1)
                {
                  sub_1C44CD9C0(v240 > 1, v241 + 1, 1);
                  v224 = v312;
                }

                *(v224 + 16) = p_info;
                v242 = v224 + 16 * v241;
                *(v242 + 32) = v238;
                *(v242 + 40) = v237;
                v77 = v293;
                v91 = v300;
                v25 = v301;
                break;
            }
          }

          v243 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          *(a3 + 36) = v224;
          *(a3 + 39) = v243;
          *(a3 + 40) = 0x6E656469666E6F63;
          *(a3 + 41) = 0xEA00000000006563;
          v245 = v294;
          v244 = v295;
          *(a3 + 42) = *(v294 + *(v295 + 40));
          v246 = MEMORY[0x1E69E63B0];
          *(a3 + 45) = MEMORY[0x1E69E63B0];
          *(a3 + 46) = 0x6D617473656D6974;
          *(a3 + 47) = 0xE900000000000070;
          *(a3 + 48) = *(v245 + *(v244 + 48));
          *(a3 + 51) = v246;
          *(a3 + 52) = 0xD000000000000010;
          *(a3 + 53) = v291;
          v247 = (v245 + *(v244 + 44));
          v248 = *v247;
          v249 = v247[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v250 = objc_autoreleasePoolPush();
          v312 = v248;
          v313 = v249;
          v307 = 30;
          v308 = 0xE100000000000000;
          sub_1C4415EA8();
          v251 = sub_1C4F01FC8();

          objc_autoreleasePoolPop(v250);
          *(a3 + 57) = v243;
          *(a3 + 54) = v251;
          v252 = sub_1C4F00F28();
          sub_1C44BCA84(v245, type metadata accessor for EventTriple);
          v77 = v304;
          v311 = v304;
          v254 = v304[2];
          v253 = v304[3];
          if (v254 >= v253 >> 1)
          {
            sub_1C459E7C8(v253 > 1, v254 + 1, 1);
            v77 = v311;
          }

          v77[2] = v254 + 1;
          v77[v254 + 4] = v252;
          v214 = v303;
          a3 = v292;
          v25 = v301;
          v16 = MEMORY[0x1E69E7CC0];
          v75 = v296;
          if (v303 == v292)
          {
            goto LABEL_247;
          }
        }

        goto LABEL_255;
      }

LABEL_247:

      sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
      v255 = sub_1C4F01658();
      v256 = sub_1C4F01658();
      v158 = v276;
      (*(v276 + 2))(v276, v255, v256);

      (*(v277 + 8))(v273, v286);
      goto LABEL_248;
    }

    v272 = v161;
    v307 = v159;
    a3 = &unk_1C4F23000;
    v75 = "relationshipPredicate";
    v283 = v164;
    v284 = v163;
    sub_1C459E7C8(0, v164, 0);
    v165 = v284;
    v166 = 0;
    v282 = (v284 + ((*(v291 + 80) + 32) & ~*(v291 + 80)));
    v167 = v307;
    v281 = 0x80000001C4F86600;
    v278 = 0x80000001C4F86630;
    v280 = xmmword_1C4F23100;
    while (1)
    {
      if (v166 >= *(v165 + 16))
      {
        goto LABEL_253;
      }

      v296 = (v166 + 1);
      v297 = v167;
      v168 = v298;
      sub_1C4430E2C(&v282[*(v291 + 72) * v166], v298, type metadata accessor for GraphTriple);
      sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
      a3 = swift_initStackObject();
      *(a3 + 1) = v280;
      *(a3 + 4) = 0x7463656A627573;
      *(a3 + 5) = 0xE700000000000000;
      *(a3 + 6) = sub_1C4EFF048();
      *(a3 + 7) = v169;
      v25 = MEMORY[0x1E69E6158];
      *(a3 + 9) = MEMORY[0x1E69E6158];
      *(a3 + 10) = 0x7461636964657270;
      *(a3 + 11) = 0xE900000000000065;
      v170 = v299;
      *(a3 + 12) = sub_1C4EFEB68();
      *(a3 + 13) = v171;
      *(a3 + 15) = v25;
      strcpy(a3 + 128, "relationshipId");
      a3[143] = -18;
      *(a3 + 18) = sub_1C4EFF848();
      *(a3 + 19) = v172;
      *(a3 + 21) = v25;
      *(a3 + 22) = 0xD000000000000015;
      *(a3 + 23) = v281;
      *(a3 + 24) = sub_1C4EFEB68();
      *(a3 + 25) = v173;
      *(a3 + 27) = v25;
      *(a3 + 28) = 0x7463656A626FLL;
      *(a3 + 29) = 0xE600000000000000;
      v174 = (v168 + *(v170 + 32));
      v175 = v174[1];
      *(a3 + 30) = *v174;
      *(a3 + 31) = v175;
      *(a3 + 33) = v25;
      *(a3 + 34) = 0x73656372756F73;
      *(a3 + 35) = 0xE700000000000000;
      v75 = *(v168 + *(v170 + 36));
      v309 = MEMORY[0x1E69E7CC0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44CD9C0(0, 0, 0);
      v77 = v309;
      v176 = 1;
      v177 = v304;
LABEL_43:
      p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
      v178 = &dword_1EDE2D000;
      v303 = v77;
LABEL_44:
      if (p_info[213] != -1)
      {
        swift_once();
      }

      if (*(v178 + 414) >= v176)
      {
        break;
      }

      v203 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      *(a3 + 36) = v77;
      *(a3 + 39) = v203;
      *(a3 + 40) = 0x6E656469666E6F63;
      *(a3 + 41) = 0xEA00000000006563;
      v204 = v299;
      v205 = v298;
      *(a3 + 42) = *(v298 + *(v299 + 40));
      v206 = MEMORY[0x1E69E63B0];
      *(a3 + 45) = MEMORY[0x1E69E63B0];
      *(a3 + 46) = 0x6D617473656D6974;
      *(a3 + 47) = 0xE900000000000070;
      *(a3 + 48) = *(v205 + *(v204 + 48));
      *(a3 + 51) = v206;
      *(a3 + 52) = 0xD000000000000010;
      *(a3 + 53) = v278;
      v207 = (v205 + *(v204 + 44));
      v208 = *v207;
      v75 = v207[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v209 = objc_autoreleasePoolPush();
      v309 = v208;
      v310 = v75;
      v312 = 30;
      v313 = 0xE100000000000000;
      sub_1C4415EA8();
      v77 = MEMORY[0x1E69E6158];
      v210 = sub_1C4F01FC8();

      objc_autoreleasePoolPop(v209);
      *(a3 + 57) = v203;
      *(a3 + 54) = v210;
      a3 = sub_1C4F00F28();
      sub_1C44BCA84(v205, type metadata accessor for GraphTriple);
      v167 = v297;
      v307 = v297;
      v212 = *(v297 + 2);
      v211 = *(v297 + 3);
      if (v212 >= v211 >> 1)
      {
        sub_1C459E7C8(v211 > 1, v212 + 1, 1);
        v167 = v307;
      }

      *(v167 + 2) = v212 + 1;
      *&v167[8 * v212 + 32] = a3;
      v166 = v296;
      v165 = v284;
      v91 = v300;
      v25 = v301;
      if (v296 == v283)
      {
        v297 = v167;

        v161 = v272;
        goto LABEL_144;
      }
    }

    switch(v176)
    {
      case 1:
        if (qword_1EDDFED28 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = &unk_1EDDFD088;
        goto LABEL_122;
      case 2:
        if (qword_1EDDFD0D0 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = qword_1EDDFD0D8;
        goto LABEL_122;
      case 6:
        if (qword_1EDDFD0A8 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = qword_1EDDFD0B0;
        goto LABEL_122;
      case 9:
        if (qword_1EDDFD150 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = qword_1EDDFD158;
        goto LABEL_122;
      case 11:
        if (qword_1EDDFD068 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = qword_1EDDFD070;
        goto LABEL_122;
      case 12:
        if (qword_1EDDFD110 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = qword_1EDDFD118;
        goto LABEL_122;
      case 14:
        if (qword_1EDDFED38 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = qword_1EDDFD0F0;
        goto LABEL_122;
      case 16:
        if (qword_1EDDFD2F0 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = qword_1EDDFD2F8;
        goto LABEL_122;
      case 17:
        if (qword_1EDDFED08 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = qword_1EDDFED10;
        goto LABEL_122;
      case 18:
        if (qword_1EDDFD040 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = qword_1EDDFD048;
        goto LABEL_122;
      case 19:
        if (qword_1EDDFD268 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = &qword_1EDDFD270;
        goto LABEL_122;
      case 21:
        if (qword_1EDDFD130 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = qword_1EDDFD138;
        goto LABEL_122;
      case 22:
        if (qword_1EDDFD178 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = &qword_1EDDFD180;
        goto LABEL_122;
      case 23:
        if (qword_1EDDFED40 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = qword_1EDDFD2A8;
        goto LABEL_122;
      case 24:
        if (qword_1EDDFD218 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = &qword_1EDDFD220;
        goto LABEL_122;
      case 25:
        if (qword_1EDDFD240 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = &qword_1EDDFD248;
        goto LABEL_122;
      case 27:
        if (qword_1EDDFD318 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = qword_1EDDFD320;
        goto LABEL_122;
      case 28:
        if (qword_1EDDFD340 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = qword_1EDDFD348;
        goto LABEL_122;
      case 29:
        if (qword_1EDDFD2C8 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = qword_1EDDFD2D0;
        goto LABEL_122;
      case 31:
        if (qword_1EDDFD1F0 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = &qword_1EDDFD1F8;
        goto LABEL_122;
      case 32:
        if (qword_1EDDFD288 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = &qword_1EDDFD290;
        goto LABEL_122;
      case 33:
        if (qword_1EDDFD1A0 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = &qword_1EDDFD1A8;
        goto LABEL_122;
      case 34:
        if (qword_1EDDFD1C8 != -1)
        {
          swift_once();
        }

        v179 = v306;
        v180 = &qword_1EDDFD1D0;
LABEL_122:
        v190 = sub_1C442B738(v179, v180);
        sub_1C4430E2C(v190, v177, type metadata accessor for Source);
        v189 = v177;
        goto LABEL_123;
      default:
        if (qword_1EDDFDCF8 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (!qword_1EDDFF3C8)
        {
          v186 = v292;
          sub_1C440BAA8(v292, 1, 1, v306);
          goto LABEL_133;
        }

        v181 = (*(off_1EDDFF3D0 + 2))();
        v25 = v75;
        v183 = v16;
        v184 = p_info;
        v185 = v292;
        (*(v182 + 16))(v176, v181, v182);
        v186 = v185;
        p_info = v184;
        v16 = v183;
        v75 = v25;
        if (sub_1C44157D4(v186, 1, v306) == 1)
        {
LABEL_133:
          sub_1C4420C3C(v186, &unk_1EC0C0760, &qword_1C4F170D0);
          v193 = __OFADD__(v176++, 1);
          v177 = v304;
          if (v193)
          {
            goto LABEL_254;
          }

          goto LABEL_44;
        }

        v187 = v275;
        sub_1C499967C(v186, v275, type metadata accessor for Source);
        v188 = v187;
        v178 = &dword_1EDE2D000;
        v189 = v304;
        sub_1C499967C(v188, v304, type metadata accessor for Source);
LABEL_123:
        v191 = v189;
        v77 = v302;
        sub_1C499967C(v191, v302, type metadata accessor for Source);
        sub_1C499967C(v77, v16, type metadata accessor for Source);
        v192 = v176 - 1;
        if (!__OFSUB__(v176, 1))
        {
          v193 = __OFADD__(v176++, 1);
          if (v193)
          {
            goto LABEL_250;
          }

          v194 = v192 > 0x40;
          if (v192 >= 0x40)
          {
            v195 = 0;
          }

          else
          {
            v195 = 1 << v192;
          }

          if (v194)
          {
            v195 = 0;
          }

          if ((v195 & v75) >= 1)
          {
            v196 = v290;
            sub_1C499967C(v16, v290, type metadata accessor for Source);
            v197 = *v196;
            v198 = v196[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C44BCA84(v196, type metadata accessor for Source);
            v199 = v303;
            v177 = v304;
            v309 = v303;
            v201 = v303[2];
            v200 = v303[3];
            v25 = (v201 + 1);
            if (v201 >= v200 >> 1)
            {
              sub_1C44CD9C0(v200 > 1, v201 + 1, 1);
              v177 = v304;
              v199 = v309;
            }

            *(v199 + 16) = v25;
            v202 = v199 + 16 * v201;
            *(v202 + 32) = v197;
            *(v202 + 40) = v198;
            v77 = v199;
            goto LABEL_43;
          }

          sub_1C44BCA84(v16, type metadata accessor for Source);
          v77 = v303;
          v177 = v304;
          goto LABEL_44;
        }

        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        swift_once();
        break;
    }
  }

  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
}

uint64_t InternalXPC.Server.triplesQuery(withQuery:completion:)(unint64_t a1, void (*a2)(uint64_t, unint64_t), uint64_t a3)
{
  v378 = a3;
  v379 = a2;
  type metadata accessor for EventTriple(0);
  sub_1C43FCDF8();
  v390 = v6;
  v391 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v398 = v8 - v7;
  v9 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  v10 = sub_1C43FBD18(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  v393 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  v397.n128_u64[0] = v13;
  v14 = sub_1C43FBE44();
  v15 = type metadata accessor for Source(v14);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  v376 = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF38();
  v401 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  v405 = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  v409 = v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  v388 = v25;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  v377 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v359 - v29;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  v406 = v32;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v359 - v34);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  v394 = v37;
  v38 = sub_1C43FBE44();
  v403 = type metadata accessor for GraphTriple(v38);
  sub_1C43FCDF8();
  v395 = v39;
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBCC4();
  v402 = v42 - v41;
  v43 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  sub_1C43FBD18(v43);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v44);
  v369 = &v359 - v45;
  sub_1C43FBE44();
  v404 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v380 = v46;
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBFDC();
  v375 = v48;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v49);
  p_info = &v359 - v50;
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  v363 = v53;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBF38();
  v361 = v55;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FD230();
  v365 = v57;
  sub_1C43FBE44();
  v370 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v373 = v58;
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBFDC();
  v372 = v60;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBF38();
  v371 = v62;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBF38();
  v385 = v64;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBF38();
  v384 = v66;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v67);
  sub_1C43FD230();
  v407 = v68;
  sub_1C43FBE44();
  v396 = sub_1C4EFDC98();
  sub_1C43FCDF8();
  v367 = v69;
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FBCC4();
  v366 = v72 - v71;
  v73 = sub_1C456902C(&qword_1EC0BE4F0, &qword_1C4F37248);
  v74 = sub_1C43FBD18(v73);
  MEMORY[0x1EEE9AC00](v74);
  sub_1C43FBFDC();
  v374 = v75;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v76);
  sub_1C43FBF38();
  v362 = v77;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v78);
  sub_1C43FBF38();
  v368 = v79;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v80);
  sub_1C43FBF38();
  v364 = v81;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v82);
  sub_1C43FBF38();
  v381 = v83;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v84);
  sub_1C43FBF38();
  v387 = v85;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v86);
  sub_1C43FBF38();
  v383.n128_u64[0] = v87;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v88);
  sub_1C43FBF38();
  v389 = v89;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v90);
  sub_1C43FBF38();
  v382 = v91;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v92);
  sub_1C43FD230();
  v392 = v93;
  v400 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v359 - v95;
  if (qword_1EDDFA678 != -1)
  {
    goto LABEL_262;
  }

  while (1)
  {
    v97 = sub_1C4F00978();
    sub_1C43FCEE8(v97, qword_1EDE2DCD8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v399 = v3;
    v98 = sub_1C4F00968();
    v99 = sub_1C4F01CF8();

    v100 = os_log_type_enabled(v98, v99);
    v408 = v15;
    v386 = a1;
    if (v100)
    {
      v101 = sub_1C43FD084();
      v360 = sub_1C43FFD34();
      v416[0] = v360;
      *v101 = 136315138;
      v102 = sub_1C4F00EE8();
      v104 = p_info;
      v105 = v96;
      v106 = sub_1C441D828(v102, v103, v416);

      *(v101 + 4) = v106;
      v96 = v105;
      p_info = v104;
      _os_log_impl(&dword_1C43F8000, v98, v99, "InternalXPC: triples query: %s", v101, 0xCu);
      sub_1C440962C(v360);
      sub_1C43FE9D4();
      v15 = v408;
      sub_1C43FBE2C();
    }

    if (qword_1EDDEBB80 != -1)
    {
      sub_1C44006B4(&qword_1EDDEBB80);
    }

    v107 = sub_1C43FCEE8(v400, qword_1EDDEBB90);
    sub_1C440D164(v107, v416);
    sub_1C446C964(v98, v96, &unk_1EC0B9610, &unk_1C4F0F2E0);
    v108 = type metadata accessor for Configuration(0);
    result = sub_1C4402E68(v96, v109, v108);
    if (v111)
    {
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
      return result;
    }

    type metadata accessor for GraphStore(0);
    swift_allocObject();
    v112 = 0;
    v113 = GraphStore.init(config:)(v96);
    v359 = p_info;
    v360 = v113;
    v114 = v392;
    sub_1C43FCF64();
    sub_1C440BAA8(v115, v116, v117, v404);
    v118 = sub_1C44735D4(0x686372616573, 0xE600000000000000, v386);
    if (v119)
    {
      v120 = v118;
      v121 = v119;
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      *(inited + 32) = v120;
      *(inited + 40) = v121;
      sub_1C4499940();
      v124 = v366;
      v123 = v367;
      v125 = v396;
      (*(v367 + 104))(v366, *MEMORY[0x1E69A9500], v396);
      v112 = v382;
      sub_1C4EFDC88();

      v126 = *(v123 + 8);
      p_info = v123 + 8;
      v126(v124, v125);
      sub_1C4420C3C(v114, &qword_1EC0BE4F0, &qword_1C4F37248);
      v127 = sub_1C442F270();
      sub_1C440BAA8(v127, v128, v129, v404);
      sub_1C49996D8(v112, v114);
    }

    sub_1C4451344();
    sub_1C44023DC();
    sub_1C43FCF64();
    sub_1C440BAA8(v130, v131, v132, v404);
    v133 = v386;
    sub_1C44735D4(v112, 0xE700000000000000, v386);
    v396 = v30;
    if (!v134)
    {
      sub_1C441B444();
      v135 = v380;
      v112 = v392;
      if (v136)
      {
        sub_1C44023DC();
        v133 = v137;
      }

      else
      {
        sub_1C44735D4(0x7463656A626FLL, 0xE600000000000000, v133);
        if (!v138)
        {
          goto LABEL_27;
        }

        sub_1C44023DC();
      }
    }

    sub_1C44735D4(v112, 0xE700000000000000, v133);
    if (v139)
    {

      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v140 = swift_initStackObject();
      *(v140 + 16) = xmmword_1C4F0D130;
      result = sub_1C44735D4(v112, 0xE700000000000000, v133);
      if (!v141)
      {
        goto LABEL_264;
      }

      *(v140 + 32) = result;
      *(v140 + 40) = v141;
      sub_1C448DE08();
      v400 = v142;
    }

    else
    {
      v400 = 0;
    }

    sub_1C441B444();
    if (v143)
    {

      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v144 = swift_initStackObject();
      *(v144 + 16) = xmmword_1C4F0D130;
      result = sub_1C441B444();
      if (!v145)
      {
        goto LABEL_265;
      }

      *(v144 + 32) = result;
      *(v144 + 40) = v145;
      sub_1C448DE08();
      v147 = v146;
    }

    else
    {
      v147 = 0;
    }

    sub_1C44735D4(0x7463656A626FLL, 0xE600000000000000, v133);
    v367 = v147;
    if (v148)
    {

      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      v149 = swift_initStackObject();
      *(v149 + 16) = xmmword_1C4F0D130;
      result = sub_1C44735D4(0x7463656A626FLL, 0xE600000000000000, v133);
      if (!v150)
      {
        goto LABEL_266;
      }

      *(v149 + 32) = result;
      *(v149 + 40) = v150;
      sub_1C448DE08();
      v386 = v151;
    }

    else
    {
      v386 = 0;
    }

    v152 = v373;
    v153 = *(v373 + 104);
    v154 = v370;
    (v153)(v407, *MEMORY[0x1E69A95C0], v370);
    sub_1C444AD30();
    v153();
    sub_1C444AD30();
    v153();
    v155 = v371;
    sub_1C444AD30();
    v153();
    v156 = v372;
    sub_1C444AD30();
    v153();
    v157 = v384;
    sub_1C4EFDCE8();

    v158 = *(v152 + 8);
    p_info = v152 + 8;
    v158(v156, v154);
    v158(v155, v154);
    v158(v385, v154);
    v158(v157, v154);
    v158(v407, v154);
    sub_1C4420C3C(v389, &qword_1EC0BE4F0, &qword_1C4F37248);
    v159 = sub_1C442F270();
    sub_1C440BAA8(v159, v160, v161, v404);
    v162 = sub_1C4404050();
    sub_1C49996D8(v162, v163);
    v15 = v408;
    v135 = v380;
    v112 = v392;
    sub_1C4451344();
    v30 = v396;
LABEL_27:
    v164 = sub_1C440EF74();
    v165 = v404;
    sub_1C440BAA8(v164, v166, 1, v404);
    v167 = v112;
    v168 = v381;
    sub_1C446C964(v167, v381, &qword_1EC0BE4F0, &qword_1C4F37248);
    sub_1C440175C(v168, 1, v165);
    if (!v111)
    {
      v169 = v365;
      v170 = v404;
      v407 = *(v135 + 32);
      (v407)(v365, v168, v404);
      v171 = v364;
      sub_1C446C964(v389, v364, &qword_1EC0BE4F0, &qword_1C4F37248);
      sub_1C440175C(v171, 1, v170);
      if (!v111)
      {
        v187 = v361;
        (v407)(v361, v171, v404);
        sub_1C4EFDCB8();
        v188 = *(v135 + 8);
        v189 = v404;
        v188(v187, v404);
        v188(v169, v189);
        sub_1C4420C3C(v387, &qword_1EC0BE4F0, &qword_1C4F37248);
        v190 = sub_1C442F270();
        sub_1C440BAA8(v190, v191, v192, v189);
        v193 = sub_1C4404050();
        sub_1C49996D8(v193, v194);
        goto LABEL_37;
      }

      (*(v135 + 8))(v169, v404);
    }

    sub_1C445FDE4();
    sub_1C4420C3C(v172, v173, v174);
    v175 = v368;
    sub_1C446C964(v392, v368, &qword_1EC0BE4F0, &qword_1C4F37248);
    sub_1C440175C(v175, 1, v404);
    if (v111)
    {
      sub_1C445FDE4();
      sub_1C4420C3C(v176, v177, v178);
      v179 = v362;
      sub_1C446C964(v389, v362, &qword_1EC0BE4F0, &qword_1C4F37248);
      v180 = sub_1C440EF74();
      if (sub_1C44157D4(v180, v181, v404) == 1)
      {
        sub_1C4420C3C(v179, &qword_1EC0BE4F0, &qword_1C4F37248);
        goto LABEL_37;
      }

      v182 = v387;
      sub_1C4420C3C(v387, &qword_1EC0BE4F0, &qword_1C4F37248);
      v186 = v179;
      v183 = *(v380 + 32);
      v184 = v359;
      v185 = v359;
    }

    else
    {
      v182 = v387;
      sub_1C4420C3C(v387, &qword_1EC0BE4F0, &qword_1C4F37248);
      v183 = *(v380 + 32);
      v184 = v363;
      v185 = v363;
      v186 = v175;
    }

    v195 = v404;
    v183(v185, v186, v404);
    v183(v182, v184, v195);
    sub_1C440BAA8(v182, 0, 1, v195);
LABEL_37:
    v196 = v374;
    v197 = sub_1C4410428();
    sub_1C446C964(v197, v198, v199, v200);
    sub_1C440175C(v196, 1, v404);
    if (v111)
    {
      sub_1C4420C3C(v196, &qword_1EC0BE4F0, &qword_1C4F37248);
      v201 = sub_1C4F00968();
      v202 = sub_1C4F01CD8();
      if (sub_1C43FEB2C(v202))
      {
        v203 = sub_1C43FCED0();
        *v203 = 0;
        _os_log_impl(&dword_1C43F8000, v201, v202, "InternalXPC: triples query: failed to generate query.", v203, 2u);
        sub_1C43FBE2C();
      }

      v379(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);

      goto LABEL_253;
    }

    v204 = MEMORY[0x1E69E7CC0];
    v205 = sub_1C4410428();
    v206 = v404;
    v207(v205);
    sub_1C4EFF8F8();
    v208 = v369;
    sub_1C43FCF64();
    v374 = v209;
    sub_1C440BAA8(v210, v211, v212, v209);
    sub_1C447F9A8();
    v213 = sub_1C4410428();
    v218 = sub_1C498DC1C(v213, v214, v215, v216, v217);
    sub_1C4420C3C(v208, &qword_1EC0BAA00, &unk_1C4F17400);
    v219 = v206;
    v96 = "relationshipPredicate";
    v220 = *(v218 + 16);
    a1 = "sourceDuplicates";
    if (!v220)
    {
      break;
    }

    v410[0] = v204;
    v386 = v218;
    v3 = v410;
    v382 = v220;
    sub_1C459E7C8(0, v220, 0);
    sub_1C4418064();
    v385 = v223;
    v400 = v410[0];
    v384 = 0x80000001C4F86600;
    v381 = 0x80000001C4F86630;
    v383 = xmmword_1C4F23100;
    while (1)
    {
      if (v222 >= *(v221 + 16))
      {
        goto LABEL_258;
      }

      v399 = v222 + 1;
      v224 = v402;
      sub_1C4430E2C(v385 + *(v395 + 72) * v222, v402, type metadata accessor for GraphTriple);
      sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
      v225 = swift_initStackObject();
      v226 = sub_1C4461CFC(v225, v383);
      v15 = v204;
      v226[2].n128_u64[0] = v227;
      v226[2].n128_u64[1] = 0xE700000000000000;
      v225[3].n128_u64[0] = sub_1C4EFF048();
      v225[3].n128_u64[1] = v228;
      v229 = MEMORY[0x1E69E6158];
      v225[4].n128_u64[1] = MEMORY[0x1E69E6158];
      v225[5].n128_u64[0] = p_info;
      v225[5].n128_u64[1] = 0xE900000000000065;
      v230 = v403;
      v231 = sub_1C4EFEB68();
      sub_1C44167E4(v231, v232);
      v225[7].n128_u64[1] = v229;
      v225[8].n128_u64[0] = v233;
      sub_1C442A95C();
      v234 = sub_1C4EFF848();
      sub_1C4460A90(v234, v235);
      v225[10].n128_u64[1] = v229;
      v225[11].n128_u64[0] = v236;
      v225[11].n128_u64[1] = v384;
      v237 = sub_1C4EFEB68();
      sub_1C446069C(v237, v238);
      v225[13].n128_u64[1] = v229;
      v225[14].n128_u64[0] = v239;
      v225[14].n128_u64[1] = 0xE600000000000000;
      sub_1C441426C((v224 + *(v230 + 32)));
      v225[16].n128_u64[1] = v229;
      v225[17].n128_u64[0] = v240;
      v225[17].n128_u64[1] = 0xE700000000000000;
      v96 = *(v224 + *(v230 + 36));
      v411[0] = v204;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v3 = v411;
      sub_1C44CD9C0(0, 0, 0);
      a1 = v411[0];
      v241 = 1;
LABEL_46:
      p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
      v407 = a1;
LABEL_47:
      if (qword_1EDDFA6A8 != -1)
      {
        sub_1C440BE0C();
        swift_once();
      }

      if (qword_1EDE2DCF0 >= v241)
      {
        break;
      }

      v272 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      v225[18].n128_u64[0] = a1;
      sub_1C443594C(v272);
      v96 = v402;
      v225[21].n128_u64[0] = *(v402 + *(v403 + 40));
      sub_1C44602BC();
      sub_1C4440D4C(*(v96 + *(v273 + 48)));
      v225[26].n128_u64[1] = v381;
      v275 = (v96 + *(v274 + 44));
      v276 = *v275;
      v277 = v275[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v278 = objc_autoreleasePoolPush();
      v411[0] = v276;
      v411[1] = v277;
      v413 = 30;
      v414 = 0xE100000000000000;
      sub_1C4415EA8();
      v3 = sub_1C4F01FC8();

      objc_autoreleasePoolPop(v278);
      v225[28].n128_u64[1] = v272;
      v225[27].n128_u64[0] = v3;
      v279 = sub_1C4F00F28();
      sub_1C44BCA84(v96, type metadata accessor for GraphTriple);
      v280 = v400;
      v410[0] = v400;
      a1 = *(v400 + 16);
      v281 = *(v400 + 24);
      if (a1 >= v281 >> 1)
      {
        v282 = sub_1C43FCFE8(v281);
        v3 = v410;
        sub_1C459E7C8(v282, a1 + 1, 1);
        v280 = v410[0];
      }

      *(v280 + 16) = a1 + 1;
      v400 = v280;
      *(v280 + 8 * a1 + 32) = v279;
      v222 = v399;
      v15 = v408;
      p_info = 0x7461636964657270;
      v204 = MEMORY[0x1E69E7CC0];
      v221 = v386;
      if (v399 == v382)
      {
        v283 = v404;

        goto LABEL_147;
      }
    }

    switch(v241)
    {
      case 1:
        if (qword_1EDDFED28 != -1)
        {
          sub_1C44133AC();
          swift_once();
        }

        v242 = v408;
        v243 = &unk_1EDDFD088;
        goto LABEL_125;
      case 2:
        if (qword_1EDDFD0D0 != -1)
        {
          sub_1C4407180();
          swift_once();
        }

        v242 = v408;
        v243 = qword_1EDDFD0D8;
        goto LABEL_125;
      case 6:
        if (qword_1EDDFD0A8 != -1)
        {
          sub_1C43FCE90();
          swift_once();
        }

        v242 = v408;
        v243 = qword_1EDDFD0B0;
        goto LABEL_125;
      case 9:
        if (qword_1EDDFD150 != -1)
        {
          sub_1C44050D8();
          swift_once();
        }

        v242 = v408;
        v243 = qword_1EDDFD158;
        goto LABEL_125;
      case 11:
        if (qword_1EDDFD068 != -1)
        {
          sub_1C4419B48();
          swift_once();
        }

        v242 = v408;
        v243 = qword_1EDDFD070;
        goto LABEL_125;
      case 12:
        if (qword_1EDDFD110 != -1)
        {
          sub_1C4419B34();
          swift_once();
        }

        v242 = v408;
        v243 = qword_1EDDFD118;
        goto LABEL_125;
      case 14:
        if (qword_1EDDFED38 != -1)
        {
          sub_1C44044A0();
          swift_once();
        }

        v242 = v408;
        v243 = qword_1EDDFD0F0;
        goto LABEL_125;
      case 16:
        if (qword_1EDDFD2F0 != -1)
        {
          sub_1C442E080();
          swift_once();
        }

        v242 = v408;
        v243 = qword_1EDDFD2F8;
        goto LABEL_125;
      case 17:
        if (qword_1EDDFED08 != -1)
        {
          sub_1C4407298();
          swift_once();
        }

        v242 = v408;
        v243 = qword_1EDDFED10;
        goto LABEL_125;
      case 18:
        if (qword_1EDDFD040 != -1)
        {
          sub_1C441CB5C();
          swift_once();
        }

        v242 = v408;
        v243 = qword_1EDDFD048;
        goto LABEL_125;
      case 19:
        if (qword_1EDDFD268 != -1)
        {
          sub_1C4410434();
          swift_once();
        }

        v242 = v408;
        v243 = &qword_1EDDFD270;
        goto LABEL_125;
      case 21:
        if (qword_1EDDFD130 != -1)
        {
          sub_1C4409DC8();
          swift_once();
        }

        v242 = v408;
        v243 = qword_1EDDFD138;
        goto LABEL_125;
      case 22:
        if (qword_1EDDFD178 != -1)
        {
          sub_1C44251E8();
          swift_once();
        }

        v242 = v408;
        v243 = &qword_1EDDFD180;
        goto LABEL_125;
      case 23:
        if (qword_1EDDFED40 != -1)
        {
          sub_1C4415A7C();
          swift_once();
        }

        v242 = v408;
        v243 = qword_1EDDFD2A8;
        goto LABEL_125;
      case 24:
        if (qword_1EDDFD218 != -1)
        {
          sub_1C4405DDC();
          swift_once();
        }

        v242 = v408;
        v243 = &qword_1EDDFD220;
        goto LABEL_125;
      case 25:
        if (qword_1EDDFD240 != -1)
        {
          sub_1C442BCAC();
          swift_once();
        }

        v242 = v408;
        v243 = &qword_1EDDFD248;
        goto LABEL_125;
      case 27:
        if (qword_1EDDFD318 != -1)
        {
          sub_1C4425D4C();
          swift_once();
        }

        v242 = v408;
        v243 = qword_1EDDFD320;
        goto LABEL_125;
      case 28:
        if (qword_1EDDFD340 != -1)
        {
          sub_1C442FF00();
          swift_once();
        }

        v242 = v408;
        v243 = qword_1EDDFD348;
        goto LABEL_125;
      case 29:
        if (qword_1EDDFD2C8 != -1)
        {
          sub_1C44072C0();
          swift_once();
        }

        v242 = v408;
        v243 = qword_1EDDFD2D0;
        goto LABEL_125;
      case 31:
        if (qword_1EDDFD1F0 != -1)
        {
          sub_1C441BA74();
          swift_once();
        }

        v242 = v408;
        v243 = &qword_1EDDFD1F8;
        goto LABEL_125;
      case 32:
        if (qword_1EDDFD288 != -1)
        {
          sub_1C4433574();
          swift_once();
        }

        v242 = v408;
        v243 = &qword_1EDDFD290;
        goto LABEL_125;
      case 33:
        if (qword_1EDDFD1A0 != -1)
        {
          sub_1C441BA88();
          swift_once();
        }

        v242 = v408;
        v243 = &qword_1EDDFD1A8;
        goto LABEL_125;
      case 34:
        if (qword_1EDDFD1C8 != -1)
        {
          sub_1C44072AC();
          swift_once();
        }

        v242 = v408;
        v243 = &qword_1EDDFD1D0;
LABEL_125:
        sub_1C442B738(v242, v243);
        sub_1C440C5B0();
        sub_1C4430E2C(v254, v30, v255);
        goto LABEL_126;
      default:
        if (qword_1EDDFDCF8 != -1)
        {
          sub_1C43FC5B8();
          swift_once();
        }

        sub_1C440D164(&qword_1EDDFF3C8, &v415);
        if (!qword_1EDDFF3C8)
        {
          v3 = v397.n128_u64[0];
          v262 = sub_1C440EF74();
          sub_1C440BAA8(v262, v263, 1, v408);
          goto LABEL_136;
        }

        v244 = qword_1EDDFF3C8;
        (*(off_1EDDFF3D0 + 2))();
        sub_1C445BF90();
        v15 = v96;
        v245 = v30;
        v246 = v35;
        v247 = v397.n128_u64[0];
        v248(v241, v244);
        v3 = v247;
        v35 = v246;
        v30 = v245;
        v96 = v15;
        v249 = sub_1C440EF74();
        sub_1C440175C(v249, v250, v408);
        if (v111)
        {
LABEL_136:
          sub_1C4420C3C(v3, &unk_1EC0C0760, &qword_1C4F170D0);
          v258 = __OFADD__(v241++, 1);
          if (v258)
          {
            goto LABEL_259;
          }

          goto LABEL_47;
        }

        v251 = v3;
        v3 = type metadata accessor for Source;
        v252 = v377;
        sub_1C499967C(v251, v377, type metadata accessor for Source);
        v253 = v252;
        v30 = v396;
        sub_1C499967C(v253, v396, type metadata accessor for Source);
LABEL_126:
        sub_1C4411F78();
        a1 = v406;
        sub_1C499967C(v30, v406, v256);
        sub_1C499967C(a1, v35, v3);
        v257 = v241 - 1;
        if (!__OFSUB__(v241, 1))
        {
          v258 = __OFADD__(v241++, 1);
          if (v258)
          {
            goto LABEL_255;
          }

          v259 = v257 > 0x40;
          if (v257 >= 0x40)
          {
            v260 = 0;
          }

          else
          {
            v260 = 1 << v257;
          }

          if (v259)
          {
            v260 = 0;
          }

          if ((v260 & v96) >= 1)
          {
            sub_1C4413394();
            v3 = v394;
            sub_1C499967C(v35, v394, v264);
            v265 = *v3;
            v15 = v3[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C441FD94();
            sub_1C44BCA84(v3, v266);
            v267 = v407;
            v411[0] = v407;
            v269 = *(v407 + 16);
            v268 = *(v407 + 24);
            if (v269 >= v268 >> 1)
            {
              v271 = sub_1C43FCFE8(v268);
              v3 = v411;
              sub_1C44CD9C0(v271, v269 + 1, 1);
              v267 = v411[0];
            }

            *(v267 + 16) = v269 + 1;
            v270 = v267 + 16 * v269;
            *(v270 + 32) = v265;
            *(v270 + 40) = v15;
            v30 = v396;
            a1 = v267;
            goto LABEL_46;
          }

          sub_1C441FD94();
          sub_1C44BCA84(v35, v261);
          a1 = v407;
          goto LABEL_47;
        }

        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
LABEL_262:
        sub_1C43FFCC0(&qword_1EDDFA678);
        break;
    }
  }

  v283 = v219;

  v400 = MEMORY[0x1E69E7CC0];
LABEL_147:
  v284 = v369;
  sub_1C43FCF64();
  sub_1C440BAA8(v285, v286, v287, v374);
  sub_1C4423C10();
  v290 = sub_1C498DC1C(v375, v284, v288, v289, sub_1C49A52CC);
  sub_1C4420C3C(v284, &qword_1EC0BAA00, &unk_1C4F17400);
  v291 = *(v290 + 16);
  v35 = v391;
  a1 = "sourceDuplicates";
  v30 = "relationshipPredicate";
  if (v291)
  {
    v412 = v204;
    v403 = v290;
    v3 = &v412;
    v396 = v291;
    sub_1C459E7C8(0, v291, 0);
    sub_1C4418064();
    v402 = v294;
    v407 = v412;
    v399 = 0x80000001C4F86600;
    v395 = 0x80000001C4F86630;
    v397 = xmmword_1C4F23100;
    p_info = &OBJC_METACLASS____TtC24IntelligencePlatformCore10StateStore.info;
    do
    {
      if (v293 >= *(v292 + 16))
      {
        goto LABEL_260;
      }

      v406 = v293 + 1;
      v295 = v398;
      sub_1C4430E2C(v402 + *(v390 + 72) * v293, v398, type metadata accessor for EventTriple);
      sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
      v296 = swift_allocObject();
      v297 = sub_1C4461CFC(v296, v397);
      v297[2].n128_u64[0] = v298;
      v297[2].n128_u64[1] = 0xE700000000000000;
      v296[3].n128_u64[0] = sub_1C4EFF048();
      v296[3].n128_u64[1] = v299;
      v300 = MEMORY[0x1E69E6158];
      v296[4].n128_u64[1] = MEMORY[0x1E69E6158];
      v296[5].n128_u64[0] = 0x7461636964657270;
      v296[5].n128_u64[1] = 0xE900000000000065;
      v301 = sub_1C4EFEB68();
      sub_1C44167E4(v301, v302);
      v296[7].n128_u64[1] = v300;
      v296[8].n128_u64[0] = v303;
      sub_1C442A95C();
      v304 = sub_1C4EFF848();
      sub_1C4460A90(v304, v305);
      v296[10].n128_u64[1] = v300;
      v296[11].n128_u64[0] = v306;
      v296[11].n128_u64[1] = v399;
      v307 = sub_1C4EFEB68();
      sub_1C446069C(v307, v308);
      v296[13].n128_u64[1] = v300;
      v296[14].n128_u64[0] = v309;
      v296[14].n128_u64[1] = 0xE600000000000000;
      sub_1C441426C((v295 + *(v35 + 8)));
      v296[16].n128_u64[1] = v300;
      v296[17].n128_u64[0] = v310;
      v296[17].n128_u64[1] = 0xE700000000000000;
      v96 = 1;
      v30 = *(v295 + *(v35 + 9));
      v413 = v204;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44CD9C0(0, 0, 0);
      v3 = v413;
      v311 = 1;
      while (1)
      {
        a1 = v401;
        v35 = v3;
LABEL_152:
        if (*(p_info + 1704) != -1)
        {
          sub_1C440BE0C();
          swift_once();
        }

        if (qword_1EDE2DCF0 < v311)
        {
          break;
        }

        switch(v311)
        {
          case 1:
            if (qword_1EDDFED28 != -1)
            {
              sub_1C44133AC();
              swift_once();
            }

            v312 = v15;
            v313 = &unk_1EDDFD088;
            goto LABEL_230;
          case 2:
            if (qword_1EDDFD0D0 != -1)
            {
              sub_1C4407180();
              swift_once();
            }

            v312 = v15;
            v313 = qword_1EDDFD0D8;
            goto LABEL_230;
          case 6:
            if (qword_1EDDFD0A8 != -1)
            {
              sub_1C43FCE90();
              swift_once();
            }

            v312 = v15;
            v313 = qword_1EDDFD0B0;
            goto LABEL_230;
          case 9:
            if (qword_1EDDFD150 != -1)
            {
              sub_1C44050D8();
              swift_once();
            }

            v312 = v15;
            v313 = qword_1EDDFD158;
            goto LABEL_230;
          case 11:
            if (qword_1EDDFD068 != -1)
            {
              sub_1C4419B48();
              swift_once();
            }

            v312 = v15;
            v313 = qword_1EDDFD070;
            goto LABEL_230;
          case 12:
            if (qword_1EDDFD110 != -1)
            {
              sub_1C4419B34();
              swift_once();
            }

            v312 = v15;
            v313 = qword_1EDDFD118;
            goto LABEL_230;
          case 14:
            if (qword_1EDDFED38 != -1)
            {
              sub_1C44044A0();
              swift_once();
            }

            v312 = v15;
            v313 = qword_1EDDFD0F0;
            goto LABEL_230;
          case 16:
            if (qword_1EDDFD2F0 != -1)
            {
              sub_1C442E080();
              swift_once();
            }

            v312 = v15;
            v313 = qword_1EDDFD2F8;
            goto LABEL_230;
          case 17:
            if (qword_1EDDFED08 != -1)
            {
              sub_1C4407298();
              swift_once();
            }

            v312 = v15;
            v313 = qword_1EDDFED10;
            goto LABEL_230;
          case 18:
            if (qword_1EDDFD040 != -1)
            {
              sub_1C441CB5C();
              swift_once();
            }

            v312 = v15;
            v313 = qword_1EDDFD048;
            goto LABEL_230;
          case 19:
            if (qword_1EDDFD268 != -1)
            {
              sub_1C4410434();
              swift_once();
            }

            v312 = v15;
            v313 = &qword_1EDDFD270;
            goto LABEL_230;
          case 21:
            if (qword_1EDDFD130 != -1)
            {
              sub_1C4409DC8();
              swift_once();
            }

            v312 = v15;
            v313 = qword_1EDDFD138;
            goto LABEL_230;
          case 22:
            if (qword_1EDDFD178 != -1)
            {
              sub_1C44251E8();
              swift_once();
            }

            v312 = v15;
            v313 = &qword_1EDDFD180;
            goto LABEL_230;
          case 23:
            if (qword_1EDDFED40 != -1)
            {
              sub_1C4415A7C();
              swift_once();
            }

            v312 = v15;
            v313 = qword_1EDDFD2A8;
            goto LABEL_230;
          case 24:
            if (qword_1EDDFD218 != -1)
            {
              sub_1C4405DDC();
              swift_once();
            }

            v312 = v15;
            v313 = &qword_1EDDFD220;
            goto LABEL_230;
          case 25:
            if (qword_1EDDFD240 != -1)
            {
              sub_1C442BCAC();
              swift_once();
            }

            v312 = v15;
            v313 = &qword_1EDDFD248;
            goto LABEL_230;
          case 27:
            if (qword_1EDDFD318 != -1)
            {
              sub_1C4425D4C();
              swift_once();
            }

            v312 = v15;
            v313 = qword_1EDDFD320;
            goto LABEL_230;
          case 28:
            if (qword_1EDDFD340 != -1)
            {
              sub_1C442FF00();
              swift_once();
            }

            v312 = v15;
            v313 = qword_1EDDFD348;
            goto LABEL_230;
          case 29:
            if (qword_1EDDFD2C8 != -1)
            {
              sub_1C44072C0();
              swift_once();
            }

            v312 = v15;
            v313 = qword_1EDDFD2D0;
            goto LABEL_230;
          case 31:
            if (qword_1EDDFD1F0 != -1)
            {
              sub_1C441BA74();
              swift_once();
            }

            v312 = v15;
            v313 = &qword_1EDDFD1F8;
            goto LABEL_230;
          case 32:
            if (qword_1EDDFD288 != -1)
            {
              sub_1C4433574();
              swift_once();
            }

            v312 = v15;
            v313 = &qword_1EDDFD290;
            goto LABEL_230;
          case 33:
            if (qword_1EDDFD1A0 != -1)
            {
              sub_1C441BA88();
              swift_once();
            }

            v312 = v15;
            v313 = &qword_1EDDFD1A8;
            goto LABEL_230;
          case 34:
            if (qword_1EDDFD1C8 != -1)
            {
              sub_1C44072AC();
              swift_once();
            }

            v312 = v15;
            v313 = &qword_1EDDFD1D0;
LABEL_230:
            sub_1C442B738(v312, v313);
            sub_1C440C5B0();
            sub_1C4430E2C(v319, a1, v320);
            goto LABEL_231;
          default:
            if (qword_1EDDFDCF8 != -1)
            {
              sub_1C43FC5B8();
              swift_once();
            }

            sub_1C440D164(&qword_1EDDFF3C8, v411);
            if (!qword_1EDDFF3C8)
            {
              v314 = v393;
              sub_1C43FCF64();
              sub_1C440BAA8(v326, v327, v328, v15);
LABEL_241:
              sub_1C4420C3C(v314, &unk_1EC0C0760, &qword_1C4F170D0);
              v258 = __OFADD__(v311++, 1);
              p_info = 0x1EDDFA000;
              v3 = v35;
              if (v258)
              {
                goto LABEL_261;
              }

              goto LABEL_152;
            }

            v3 = qword_1EDDFF3C8;
            (*(off_1EDDFF3D0 + 2))();
            sub_1C445BF90();
            v314 = v393;
            v315(v311, v3);
            sub_1C440175C(v314, 1, v15);
            if (v111)
            {
              goto LABEL_241;
            }

            sub_1C4411F78();
            v316 = v376;
            sub_1C499967C(v314, v376, v317);
            v318 = v316;
            a1 = v401;
            sub_1C499967C(v318, v401, v3);
LABEL_231:
            sub_1C4411F78();
            p_info = v405;
            sub_1C499967C(a1, v405, v321);
            sub_1C499967C(p_info, v409, v3);
            v322 = v311 - 1;
            if (__OFSUB__(v311, 1))
            {
              goto LABEL_256;
            }

            v258 = __OFADD__(v311++, 1);
            if (v258)
            {
              goto LABEL_257;
            }

            v323 = v322 > 0x40;
            if (v322 >= 0x40)
            {
              v324 = 0;
            }

            else
            {
              v324 = 1 << v322;
            }

            if (v323)
            {
              v324 = 0;
            }

            if ((v324 & v30) < 1)
            {
              v3 = v35;
              sub_1C441FD94();
              sub_1C44BCA84(v409, v325);
              p_info = 0x1EDDFA000;
              goto LABEL_152;
            }

            sub_1C4413394();
            v329 = v388;
            sub_1C499967C(v409, v388, v330);
            v332 = *v329;
            v331 = v329[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C441FD94();
            v333 = v329;
            v3 = v35;
            sub_1C44BCA84(v333, v334);
            v413 = v35;
            v335 = v35[2];
            v336 = v3[3];
            if (v335 >= v336 >> 1)
            {
              v338 = sub_1C43FCFE8(v336);
              sub_1C44CD9C0(v338, v335 + 1, 1);
              v3 = v413;
            }

            v3[2] = v335 + 1;
            v337 = &v3[2 * v335];
            v337[4] = v332;
            v337[5] = v331;
            v15 = v408;
            p_info = 0x1EDDFA000;
            break;
        }
      }

      v339 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      v296[18].n128_u64[0] = v3;
      sub_1C443594C(v339);
      v35 = v391;
      v30 = v398;
      v296[21].n128_u64[0] = *(v398 + *(v391 + 10));
      sub_1C44602BC();
      sub_1C4440D4C(*(v30 + *(v35 + 12)));
      v296[26].n128_u64[1] = v395;
      v340 = (v30 + *(v35 + 11));
      v341 = *v340;
      v342 = v340[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v343 = objc_autoreleasePoolPush();
      v413 = v341;
      v414 = v342;
      v410[0] = 30;
      v410[1] = 0xE100000000000000;
      sub_1C4415EA8();
      v3 = sub_1C4F01FC8();

      objc_autoreleasePoolPop(v343);
      v296[28].n128_u64[1] = v339;
      v296[27].n128_u64[0] = v3;
      v344 = sub_1C4F00F28();
      sub_1C44BCA84(v30, type metadata accessor for EventTriple);
      v345 = v407;
      v412 = v407;
      v347 = *(v407 + 16);
      v346 = *(v407 + 24);
      a1 = v347 + 1;
      if (v347 >= v346 >> 1)
      {
        v348 = sub_1C43FCFE8(v346);
        v3 = &v412;
        sub_1C459E7C8(v348, v347 + 1, 1);
        v345 = v412;
      }

      *(v345 + 16) = a1;
      v407 = v345;
      *(v345 + 8 * v347 + 32) = v344;
      v293 = v406;
      v15 = v408;
      v204 = MEMORY[0x1E69E7CC0];
      p_info = 0x1EDDFA000;
      v292 = v403;
    }

    while (v406 != v396);

    v283 = v404;
    v349 = v407;
  }

  else
  {

    v349 = MEMORY[0x1E69E7CC0];
  }

  v379(v400, v349);

  (*(v380 + 8))(v375, v283);
LABEL_253:
  sub_1C445FDE4();
  sub_1C4420C3C(v350, v351, v352);
  sub_1C445FDE4();
  sub_1C4420C3C(v353, v354, v355);
  sub_1C445FDE4();
  return sub_1C4420C3C(v356, v357, v358);
}

void sub_1C49955AC(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DCD8);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C43F8000, v7, v8, "InternalXPC: benchmark", v9, 2u);
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v10 = sub_1C442B738(v3, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C446C964(v10, v5, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v11 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v5, 1, v11) == 1)
  {
    _Block_release(a2);
    __break(1u);
  }

  else
  {
    type metadata accessor for IntelligencePlatformBenchmark(0);
    v12 = sub_1C46390AC(v5);
    sub_1C44BCA84(v5, type metadata accessor for Configuration);
    if (v12)
    {
      sub_1C463ACD4();
      a2[2](a2, 1, 0);
    }

    else
    {
      a2[2](a2, 0, 0);
    }

    _Block_release(a2);
  }
}

uint64_t InternalXPC.Server.benchmark(completion:)()
{
  sub_1C444C2AC();
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v4 = sub_1C4F00978();
  sub_1C43FCEE8(v4, qword_1EDE2DCD8);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v6))
  {
    *sub_1C43FCED0() = 0;
    sub_1C4404B70(&dword_1C43F8000, v7, v8, "InternalXPC: benchmark");
    sub_1C43FFD18();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v9 = sub_1C43FCEE8(v2, qword_1EDDEBB90);
  sub_1C440D164(v9, v20);
  v10 = sub_1C4410428();
  sub_1C446C964(v10, v11, v12, v13);
  v14 = type metadata accessor for Configuration(0);
  result = sub_1C4402E68(v1, v15, v14);
  if (v17)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for IntelligencePlatformBenchmark(0);
    v18 = sub_1C46390AC(v1);
    sub_1C4419B1C();
    sub_1C44BCA84(v1, v19);
    if (v18)
    {
      sub_1C463ACD4();
      sub_1C440E490();
      v0();
    }

    else
    {
      sub_1C440E490();
      return (v0)();
    }
  }

  return result;
}

void sub_1C4995A20(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  if (qword_1EDDFA678 != -1)
  {
    swift_once();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DCD8);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C43F8000, v7, v8, "InternalXPC: validateGraph", v9, 2u);
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  if (qword_1EDDEBB80 != -1)
  {
    swift_once();
  }

  v10 = sub_1C442B738(v3, qword_1EDDEBB90);
  swift_beginAccess();
  sub_1C446C964(v10, v5, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v11 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v5, 1, v11) == 1)
  {
    _Block_release(a2);
    __break(1u);
  }

  else
  {
    type metadata accessor for GraphValidator();
    swift_allocObject();
    GraphValidator.init(config:)(v5);
    sub_1C4881260();
    sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    v12 = sub_1C4F00EC8();
    (a2)[2](a2, v12, 0);

    _Block_release(a2);
  }
}

uint64_t InternalXPC.Server.validateGraph(completion:)()
{
  sub_1C444C2AC();
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FFF80();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DCD8);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v6))
  {
    v7 = sub_1C43FCED0();
    *v7 = 0;
    _os_log_impl(&dword_1C43F8000, v5, v6, "InternalXPC: validateGraph", v7, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v8 = sub_1C43FCEE8(v2, qword_1EDDEBB90);
  sub_1C440D164(v8, v17);
  v9 = sub_1C4410428();
  sub_1C446C964(v9, v10, v11, v12);
  v13 = type metadata accessor for Configuration(0);
  result = sub_1C4402E68(v1, v14, v13);
  if (v16)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for GraphValidator();
    swift_allocObject();
    GraphValidator.init(config:)(v1);
    sub_1C4881260();
    sub_1C440E490();
    v0();
  }

  return result;
}

void sub_1C4996030(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

id InternalXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C49960E0(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - v5;
  if (![objc_opt_self() isInternalDevice])
  {
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0(&qword_1EDDFA678);
    }

    v20 = sub_1C4F00978();
    sub_1C43FCEE8(v20, qword_1EDE2DCD8);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_22;
    }

    v23 = sub_1C43FCED0();
    sub_1C43FBD24(v23);
    v24 = "InternalXPC: API disabled on customer devices.";
    goto LABEL_21;
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v7 = sub_1C442B738(v3, qword_1EDDEBB90);
  sub_1C440D164(v7, v34);
  sub_1C446C964(v7, v6, &unk_1EC0B9610, &unk_1C4F0F2E0);
  v8 = type metadata accessor for Configuration(0);
  result = sub_1C440175C(v6, 1, v8);
  if (!v13)
  {
    v10 = &v6[*(v8 + 20)];
    v3 = *v10;
    v11 = v10[1];
    sub_1C4419B1C();
    sub_1C44BCA84(v6, v12);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    v13 = (xmmword_1EDDFEC90 & ~v3) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v11) == *(&xmmword_1EDDFEC90 + 1);
    if (!v13)
    {
      v14 = sub_1C448F160();
      if (sub_1C446874C(v14, v15))
      {
        v16 = [objc_opt_self() interfaceWithProtocol_];
        sub_1C44059FC(v16, sel_setExportedInterface_);

        v17 = [objc_allocWithZone(type metadata accessor for InternalXPC.Server()) init];
        sub_1C44059FC(v17, sel_setExportedObject_);

        v32 = sub_1C49964D0;
        v33 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v29 = 1107296256;
        v30 = sub_1C4833DD0;
        v31 = &unk_1F43F2280;
        v18 = _Block_copy(&aBlock);
        sub_1C44059FC(v18, sel_setInterruptionHandler_);
        _Block_release(v18);
        v32 = sub_1C49964F0;
        v33 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v29 = 1107296256;
        v30 = sub_1C4833DD0;
        v31 = &unk_1F43F22A8;
        v19 = _Block_copy(&aBlock);
        sub_1C44059FC(v19, sel_setInvalidationHandler_);
        _Block_release(v19);
        [a2 resume];
        return 1;
      }

      return 0;
    }

    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0(&qword_1EDDFA678);
    }

    v25 = sub_1C4F00978();
    sub_1C43FCEE8(v25, qword_1EDE2DCD8);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CF8();
    if (!os_log_type_enabled(v21, v22))
    {
LABEL_22:

      return 0;
    }

    v26 = sub_1C43FCED0();
    sub_1C43FBD24(v26);
    v24 = "InternalXPC: service is in no-op mode.";
LABEL_21:
    _os_log_impl(&dword_1C43F8000, v21, v22, v24, v3, 2u);
    sub_1C43FE9D4();
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void sub_1C4996510(uint8_t *a1, const char *a2)
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v4 = sub_1C4F00978();
  sub_1C43FCEE8(v4, qword_1EDE2DCD8);
  oslog = sub_1C4F00968();
  v5 = (a1)();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = sub_1C43FCED0();
    sub_1C43FBD24(v6);
    _os_log_impl(&dword_1C43F8000, oslog, v5, a2, a1, 2u);
    sub_1C43FE9D4();
  }
}

uint64_t InternalXPC.Server.runDeltaUpdatePipeline(withSource:)()
{
  sub_1C43FBCD4();
  v0[5] = v1;
  v0[6] = v2;
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[7] = v3;
  sub_1C43FBD18(v3);
  v0[8] = sub_1C43FBE7C();
  v4 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  sub_1C43FBD18(v4);
  v0[9] = sub_1C43FBE7C();
  v5 = type metadata accessor for Source(0);
  v0[10] = v5;
  sub_1C43FBD18(v5);
  v0[11] = sub_1C43FBE7C();
  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4996738()
{
  v36 = v0;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = sub_1C4F00978();
  *(v0 + 96) = sub_1C43FCEE8(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_1C43FCED0();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "InternalXPC: runDeltaUpdatePipeline", v4, 2u);
    sub_1C43FEA20();
  }

  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  Source.init(rawValue:)(v8, v7, v6);
  v9 = sub_1C44157D4(v6, 1, v5);
  *(v0 + 128) = v9;
  if (v9 == 1)
  {
    sub_1C4420C3C(*(v0 + 72), &unk_1EC0C0760, &qword_1C4F170D0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CD8();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 40);
      v12 = *(v0 + 48);
      v14 = sub_1C43FD084();
      v15 = sub_1C43FFD34();
      v35 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1C441D828(v13, v12, &v35);
      _os_log_impl(&dword_1C43F8000, v10, v11, "InternalXPC: runDeltaUpdatePipeline: %s doesn't exist", v14, 0xCu);
      sub_1C440962C(v15);
      sub_1C43FFD18();
      sub_1C43FFD4C();
    }

    sub_1C43FBCF0();
    v16 = sub_1C44BBE4C();

    return v17(v16);
  }

  else
  {
    sub_1C4413394();
    sub_1C499967C(v18, v19, v20);
    if (qword_1EDDEBB80 != -1)
    {
      sub_1C44006B4(&qword_1EDDEBB80);
    }

    v21 = *(v0 + 64);
    v22 = sub_1C442B738(*(v0 + 56), qword_1EDDEBB90);
    sub_1C440D164(v22, v0 + 16);
    v23 = sub_1C43FBC98();
    sub_1C446C964(v23, v24, v25, v26);
    v27 = type metadata accessor for Configuration(0);
    result = sub_1C4402E68(v21, v28, v27);
    if (v30)
    {
      __break(1u);
    }

    else
    {
      if (qword_1EDDF0AB0 != -1)
      {
        sub_1C4402D88(&qword_1EDDF0AB0);
      }

      *(v0 + 104) = sub_1C4468E90();
      sub_1C4419B1C();
      sub_1C44BCA84(v31, v32);
      v33 = swift_task_alloc();
      *(v0 + 112) = v33;
      *v33 = v0;
      v33[1] = sub_1C4996AD8;
      v34 = *(v0 + 88);

      return Pipeline.runDeltaUpdate(reason:source:)(1, v34);
    }
  }

  return result;
}

uint64_t sub_1C4996AD8()
{
  sub_1C43FCF70();
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1C4996CDC;
  }

  else
  {
    v2 = sub_1C4996C08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C4996C08()
{
  sub_1C43FCF70();
  v1 = sub_1C4F00968();
  v2 = sub_1C4F01CF8();
  v3 = sub_1C43FEB2C(v2);
  v4 = *(v0 + 88);
  if (v3)
  {
    *sub_1C43FCED0() = 0;
    sub_1C4415A90();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_1C43FEA20();
  }

  sub_1C441FD94();
  sub_1C44BCA84(v4, v10);

  sub_1C43FBCF0();
  v11 = sub_1C44BBE4C();

  return v12(v11);
}

uint64_t sub_1C4996CDC()
{
  sub_1C43FCF70();
  sub_1C441FD94();
  sub_1C44BCA84(v0, v1);

  v2 = sub_1C4409E50();

  return v3(v2);
}

uint64_t sub_1C4996DE8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_1C4F01138();
  v3[4] = v5;
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1C4996EB8;

  return InternalXPC.Server.runDeltaUpdatePipeline(withSource:)();
}

uint64_t sub_1C4996EB8(char a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  sub_1C43FBDAC();
  *v7 = v6;
  v8 = *(v5 + 16);
  v9 = *v2;
  *v7 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_1C4EF9798();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t InternalXPC.Server.runToMatchingPipeline()()
{
  sub_1C43FBCD4();
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v0 + 40) = v1;
  sub_1C43FBD18(v1);
  *(v0 + 48) = sub_1C43FBE7C();
  v2 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C49970E8()
{
  sub_1C43FCF70();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = sub_1C4F00978();
  v0[7] = sub_1C442B738(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "InternalXPC: runToMatchingPipeline");
    sub_1C43FE9D4();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v7 = v0[6];
  v8 = sub_1C442B738(v0[5], qword_1EDDEBB90);
  sub_1C440D164(v8, (v0 + 2));
  v9 = sub_1C43FBC98();
  sub_1C446C964(v9, v10, v11, v12);
  v13 = type metadata accessor for Configuration(0);
  result = sub_1C4402E68(v7, v14, v13);
  if (v16)
  {
    __break(1u);
  }

  else
  {
    if (qword_1EDDF0AB0 != -1)
    {
      sub_1C4402D88(&qword_1EDDF0AB0);
    }

    v0[8] = sub_1C4468E90();
    sub_1C4419B1C();
    sub_1C44BCA84(v17, v18);
    v19 = swift_task_alloc();
    v0[9] = v19;
    *v19 = v0;
    v19[1] = sub_1C49972E8;

    return sub_1C4ABF4F0(1);
  }

  return result;
}

uint64_t sub_1C49972E8()
{
  sub_1C43FBCD4();
  v5 = *v1;
  sub_1C43FBDAC();
  *v2 = v5;
  *(v5 + 80) = v0;

  if (v0)
  {
    v3 = sub_1C49974A0;
  }

  else
  {

    v3 = sub_1C49973F8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C49973F8()
{
  sub_1C43FCF70();
  v0 = sub_1C4F00968();
  v1 = sub_1C4F01CF8();
  if (sub_1C4402B64(v1))
  {
    v2 = sub_1C43FCED0();
    sub_1C43FBD24(v2);
    sub_1C43FFFD8(&dword_1C43F8000, v3, v4, "InternalXPC: runToMatchingPipeline: done");
    sub_1C43FE9D4();
  }

  sub_1C43FBCF0();

  return v5(1);
}

uint64_t sub_1C49974A0()
{
  sub_1C43FBCD4();

  v0 = sub_1C4409E50();

  return v1(v0);
}

uint64_t sub_1C4997524(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C4999D64;

  return InternalXPC.Server.runToMatchingPipeline()();
}

uint64_t InternalXPC.Server.stopPipeline()()
{
  sub_1C43FBCD4();
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v0 + 40) = v1;
  sub_1C43FBD18(v1);
  *(v0 + 48) = sub_1C43FBE7C();
  v2 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C499764C()
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2DCD8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v3))
  {
    *sub_1C43FCED0() = 0;
    sub_1C4415A90();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_1C43FEA20();
  }

  if (qword_1EDDEBB80 != -1)
  {
    sub_1C44006B4(&qword_1EDDEBB80);
  }

  v9 = *(v0 + 48);
  v10 = sub_1C442B738(*(v0 + 40), qword_1EDDEBB90);
  sub_1C440D164(v10, v0 + 16);
  v11 = sub_1C4404050();
  sub_1C446C964(v11, v12, v13, v14);
  v15 = type metadata accessor for Configuration(0);
  result = sub_1C4402E68(v9, v16, v15);
  if (v18)
  {
    __break(1u);
  }

  else
  {
    if (qword_1EDDF0AB0 != -1)
    {
      sub_1C4402D88(&qword_1EDDF0AB0);
    }

    sub_1C4468E90();
    sub_1C4419B1C();
    sub_1C44BCA84(v19, v20);
    sub_1C4ABF738();

    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CF8();
    if (sub_1C4402B64(v22))
    {
      v24 = sub_1C43FCED0();
      sub_1C43FBD24(v24);
      sub_1C43FFFD8(&dword_1C43F8000, v25, v26, "InternalXPC: stopPipeline: done");
      sub_1C43FE9D4();
    }

    sub_1C43FBCF0();

    return v27(1);
  }

  return result;
}

uint64_t sub_1C4997880(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C4999D64;

  return InternalXPC.Server.stopPipeline()();
}

uint64_t sub_1C4997924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a3;
  v48 = a1;
  v3 = sub_1C4EFD678();
  v43 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&qword_1EC0BDCB8, &qword_1C4F3F1C0);
  v6 = *(v5 - 8);
  v51 = v5;
  v52 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = sub_1C4EFF658();
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v42 - v20;
  v22 = sub_1C4EFF8F8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v26;
  sub_1C446C964(v49, v21, &qword_1EC0BAA00, &unk_1C4F17400);
  v28 = sub_1C44157D4(v21, 1, v27);
  v44 = v27;
  v53 = v23;
  if (v28 == 1)
  {
    sub_1C440BAA8(v18, 1, 1, v3);
    sub_1C4EFF8C8();
    if (sub_1C44157D4(v21, 1, v27) != 1)
    {
      sub_1C4420C3C(v21, &qword_1EC0BAA00, &unk_1C4F17400);
    }
  }

  else
  {
    (*(v23 + 32))(v25, v21, v27);
  }

  v29 = v55;
  sub_1C4EFF648();
  type metadata accessor for StaticKnowledgeTriple(0);
  v54[3] = sub_1C4EFB298();
  v54[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v54);
  sub_1C4EFDCA8();
  sub_1C4999D1C(&qword_1EDDF4270, type metadata accessor for StaticKnowledgeTriple, &unk_1C4F55330);
  sub_1C4EFAE28();
  sub_1C440962C(v54);
  sub_1C4EFF8E8();
  v30 = sub_1C44157D4(v15, 1, v3);
  v31 = v51;
  if (v30 == 1)
  {
    sub_1C4420C3C(v15, &unk_1EC0C07E0, &unk_1C4F168F0);
    v32 = v52;
  }

  else
  {
    v33 = v42;
    v34 = v43;
    (*(v43 + 32))(v42, v15, v3);
    sub_1C4EFD658();
    sub_1C4401CBC(&qword_1EDDF00D0, &qword_1EC0BDCB8, &qword_1C4F3F1C0, MEMORY[0x1E699FF68]);
    v35 = v45;
    sub_1C4EFB308();

    v36 = v33;
    v29 = v55;
    (*(v34 + 8))(v36, v3);
    v32 = v52;
    (*(v52 + 8))(v10, v31);
    (*(v32 + 32))(v10, v35, v31);
  }

  result = sub_1C4EFF8D8();
  v38 = v53;
  if (v39)
  {
    goto LABEL_11;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    sub_1C4401CBC(&qword_1EC0C0818, &qword_1EC0BDCB8, &qword_1C4F3F1C0, MEMORY[0x1E699FF80]);
    v40 = v45;
    sub_1C4EFB608();
    (*(v32 + 8))(v10, v31);
    (*(v32 + 32))(v10, v40, v31);
LABEL_11:
    sub_1C4401CBC(&qword_1EDDFA2A0, &qword_1EC0BDCB8, &qword_1C4F3F1C0, MEMORY[0x1E699FF60]);
    sub_1C4999D1C(&unk_1EDDF4260, type metadata accessor for StaticKnowledgeTriple, &unk_1C4F552E8);
    v41 = sub_1C4EFAFE8();
    (*(v32 + 8))(v10, v31);
    (*(v46 + 8))(v29, v47);
    (*(v38 + 8))(v25, v44);
    return v41;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4998068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a3;
  v48 = a1;
  v3 = sub_1C4EFD678();
  v43 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v6 = *(v5 - 8);
  v51 = v5;
  v52 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = sub_1C4EFF658();
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v42 - v20;
  v22 = sub_1C4EFF8F8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v26;
  sub_1C446C964(v49, v21, &qword_1EC0BAA00, &unk_1C4F17400);
  v28 = sub_1C44157D4(v21, 1, v27);
  v44 = v27;
  v53 = v23;
  if (v28 == 1)
  {
    sub_1C440BAA8(v18, 1, 1, v3);
    sub_1C4EFF8C8();
    if (sub_1C44157D4(v21, 1, v27) != 1)
    {
      sub_1C4420C3C(v21, &qword_1EC0BAA00, &unk_1C4F17400);
    }
  }

  else
  {
    (*(v23 + 32))(v25, v21, v27);
  }

  v29 = v55;
  sub_1C4EFF648();
  type metadata accessor for GraphTriple(0);
  v54[3] = sub_1C4EFB298();
  v54[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v54);
  sub_1C4EFDCA8();
  sub_1C4999D1C(&qword_1EDDFE210, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v54);
  sub_1C4EFF8E8();
  v30 = sub_1C44157D4(v15, 1, v3);
  v31 = v51;
  if (v30 == 1)
  {
    sub_1C4420C3C(v15, &unk_1EC0C07E0, &unk_1C4F168F0);
    v32 = v52;
  }

  else
  {
    v33 = v42;
    v34 = v43;
    (*(v43 + 32))(v42, v15, v3);
    sub_1C4EFD658();
    sub_1C4401CBC(&qword_1EDDF0108, &unk_1EC0C0800, &qword_1C4F0F948, MEMORY[0x1E699FF68]);
    v35 = v45;
    sub_1C4EFB308();

    v36 = v33;
    v29 = v55;
    (*(v34 + 8))(v36, v3);
    v32 = v52;
    (*(v52 + 8))(v10, v31);
    (*(v32 + 32))(v10, v35, v31);
  }

  result = sub_1C4EFF8D8();
  v38 = v53;
  if (v39)
  {
    goto LABEL_11;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    sub_1C4401CBC(&qword_1EC0C0810, &unk_1EC0C0800, &qword_1C4F0F948, MEMORY[0x1E699FF80]);
    v40 = v45;
    sub_1C4EFB608();
    (*(v32 + 8))(v10, v31);
    (*(v32 + 32))(v10, v40, v31);
LABEL_11:
    sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948, MEMORY[0x1E699FF60]);
    sub_1C4999D1C(&qword_1EDDFE208, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
    v41 = sub_1C4EFAFE8();
    (*(v32 + 8))(v10, v31);
    (*(v46 + 8))(v29, v47);
    (*(v38 + 8))(v25, v44);
    return v41;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C49987AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a3;
  v48 = a1;
  v3 = sub_1C4EFD678();
  v43 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&qword_1EC0BF758, &qword_1C4F3A6C0);
  v6 = *(v5 - 8);
  v51 = v5;
  v52 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = sub_1C4EFF658();
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v42 - v20;
  v22 = sub_1C4EFF8F8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v26;
  sub_1C446C964(v49, v21, &qword_1EC0BAA00, &unk_1C4F17400);
  v28 = sub_1C44157D4(v21, 1, v27);
  v44 = v27;
  v53 = v23;
  if (v28 == 1)
  {
    sub_1C440BAA8(v18, 1, 1, v3);
    sub_1C4EFF8C8();
    if (sub_1C44157D4(v21, 1, v27) != 1)
    {
      sub_1C4420C3C(v21, &qword_1EC0BAA00, &unk_1C4F17400);
    }
  }

  else
  {
    (*(v23 + 32))(v25, v21, v27);
  }

  v29 = v55;
  sub_1C4EFF648();
  type metadata accessor for LiveGlobalKnowledgeTriple(0);
  v54[3] = sub_1C4EFB298();
  v54[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v54);
  sub_1C4EFDCA8();
  sub_1C4999D1C(&qword_1EDDE1270, type metadata accessor for LiveGlobalKnowledgeTriple, &protocol conformance descriptor for LiveGlobalKnowledgeTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v54);
  sub_1C4EFF8E8();
  v30 = sub_1C44157D4(v15, 1, v3);
  v31 = v51;
  if (v30 == 1)
  {
    sub_1C4420C3C(v15, &unk_1EC0C07E0, &unk_1C4F168F0);
    v32 = v52;
  }

  else
  {
    v33 = v42;
    v34 = v43;
    (*(v43 + 32))(v42, v15, v3);
    sub_1C4EFD658();
    sub_1C4401CBC(&unk_1EC0C0830, &qword_1EC0BF758, &qword_1C4F3A6C0, MEMORY[0x1E699FF68]);
    v35 = v45;
    sub_1C4EFB308();

    v36 = v33;
    v29 = v55;
    (*(v34 + 8))(v36, v3);
    v32 = v52;
    (*(v52 + 8))(v10, v31);
    (*(v32 + 32))(v10, v35, v31);
  }

  result = sub_1C4EFF8D8();
  v38 = v53;
  if (v39)
  {
    goto LABEL_11;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    sub_1C4401CBC(&qword_1EC0C0828, &qword_1EC0BF758, &qword_1C4F3A6C0, MEMORY[0x1E699FF80]);
    v40 = v45;
    sub_1C4EFB608();
    (*(v32 + 8))(v10, v31);
    (*(v32 + 32))(v10, v40, v31);
LABEL_11:
    sub_1C4401CBC(&qword_1EC0BF760, &qword_1EC0BF758, &qword_1C4F3A6C0, MEMORY[0x1E699FF60]);
    sub_1C4999D1C(&qword_1EC0C0820, type metadata accessor for LiveGlobalKnowledgeTriple, &protocol conformance descriptor for LiveGlobalKnowledgeTriple);
    v41 = sub_1C4EFAFE8();
    (*(v32 + 8))(v10, v31);
    (*(v46 + 8))(v29, v47);
    (*(v38 + 8))(v25, v44);
    return v41;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4998EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a3;
  v48 = a1;
  v3 = sub_1C4EFD678();
  v43 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&qword_1EC0BDFD0, &qword_1C4F324F8);
  v6 = *(v5 - 8);
  v51 = v5;
  v52 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = sub_1C4EFF658();
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v42 - v20;
  v22 = sub_1C4EFF8F8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v26;
  sub_1C446C964(v49, v21, &qword_1EC0BAA00, &unk_1C4F17400);
  v28 = sub_1C44157D4(v21, 1, v27);
  v44 = v27;
  v53 = v23;
  if (v28 == 1)
  {
    sub_1C440BAA8(v18, 1, 1, v3);
    sub_1C4EFF8C8();
    if (sub_1C44157D4(v21, 1, v27) != 1)
    {
      sub_1C4420C3C(v21, &qword_1EC0BAA00, &unk_1C4F17400);
    }
  }

  else
  {
    (*(v23 + 32))(v25, v21, v27);
  }

  v29 = v55;
  sub_1C4EFF648();
  type metadata accessor for EventTriple(0);
  v54[3] = sub_1C4EFB298();
  v54[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v54);
  sub_1C4EFDCA8();
  sub_1C4999D1C(&qword_1EDDFE2E8, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v54);
  sub_1C4EFF8E8();
  v30 = sub_1C44157D4(v15, 1, v3);
  v31 = v51;
  if (v30 == 1)
  {
    sub_1C4420C3C(v15, &unk_1EC0C07E0, &unk_1C4F168F0);
    v32 = v52;
  }

  else
  {
    v33 = v42;
    v34 = v43;
    (*(v43 + 32))(v42, v15, v3);
    sub_1C4EFD658();
    sub_1C4401CBC(&qword_1EC0C07F8, &qword_1EC0BDFD0, &qword_1C4F324F8, MEMORY[0x1E699FF68]);
    v35 = v45;
    sub_1C4EFB308();

    v36 = v33;
    v29 = v55;
    (*(v34 + 8))(v36, v3);
    v32 = v52;
    (*(v52 + 8))(v10, v31);
    (*(v32 + 32))(v10, v35, v31);
  }

  result = sub_1C4EFF8D8();
  v38 = v53;
  if (v39)
  {
    goto LABEL_11;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    sub_1C4401CBC(&qword_1EC0C07F0, &qword_1EC0BDFD0, &qword_1C4F324F8, MEMORY[0x1E699FF80]);
    v40 = v45;
    sub_1C4EFB608();
    (*(v32 + 8))(v10, v31);
    (*(v32 + 32))(v10, v40, v31);
LABEL_11:
    sub_1C4401CBC(&unk_1EDDFF9D0, &qword_1EC0BDFD0, &qword_1C4F324F8, MEMORY[0x1E699FF60]);
    sub_1C4999D1C(&qword_1EDDFC2C8, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple);
    v41 = sub_1C4EFAFE8();
    (*(v32 + 8))(v10, v31);
    (*(v46 + 8))(v29, v47);
    (*(v38 + 8))(v25, v44);
    return v41;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C4999628()
{
  result = qword_1EC0C0758;
  if (!qword_1EC0C0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0758);
  }

  return result;
}

uint64_t sub_1C499967C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C49996D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BE4F0, &qword_1C4F37248);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C499974C()
{
  result = qword_1EC0C0770;
  if (!qword_1EC0C0770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0770);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InternalXPC.InternalXPCError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C49998B8()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440E474(v1);

  return v4(v3);
}

uint64_t sub_1C4999948()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440E474(v1);

  return v4(v3);
}

uint64_t sub_1C49999D8()
{
  sub_1C43FCF70();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_1C43FC218(v4);
  *v5 = v6;
  v5[1] = sub_1C4999D74;

  return sub_1C4996DE8(v1, v2, v3);
}

uint64_t sub_1C4999A84()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440E474(v1);

  return v4(v3);
}

uint64_t sub_1C4999B14()
{
  sub_1C43FBCD4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C4999BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C4997924(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4999C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C4998068(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4999C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C49987AC(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4999C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C4998EE8(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4999D1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4999D88(uint64_t a1, char a2)
{
  if (!flock(a1, 8))
  {
    return sub_1C4999FA0();
  }

  sub_1C4F02248();
  v4 = sub_1C446A060(a2);
  MEMORY[0x1C6940010](v4);

  v5 = sub_1C441FDAC();
  MEMORY[0x1C6940010](v5);
  sub_1C4EF98F8();
  sub_1C44266D0();
  sub_1C4F02858();
  sub_1C4408C4C();

  v6 = MEMORY[0x1C6940010](0xD00000000000002DLL, 0x80000001C4FAB270);
  MEMORY[0x1C693F6A0](v6);
  sub_1C4F02858();
  sub_1C4408C4C();

  sub_1C44072D4();
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C4999FA0()
{
  result = sub_1C4F00A38();
  if ((result & 0x100000000) != 0)
  {
    v1 = result;
    sub_1C499A9B0();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v2 = v1;
  }

  return result;
}

uint64_t sub_1C499A018(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDDFECB8);
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CB8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33[0] = v14;
    *v13 = 136315138;
    v15 = sub_1C446A060(a2);
    v31 = v6;
    v17 = sub_1C441D828(v15, v16, v33);
    v6 = v31;

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1C43F8000, v11, v12, "%s: unlock called.", v13, 0xCu);
    sub_1C440962C(v14);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  (*(v6 + 16))(v9, a1, v4);
  type metadata accessor for InterprocessLockDescriptors(0);
  v18 = sub_1C499A458(a1, a2);
  if ((v18 & 0x100000000) != 0)
  {
    sub_1C440AD7C();
    sub_1C4F02248();
    v20 = sub_1C446A060(a2);
    MEMORY[0x1C6940010](v20);

    v21 = sub_1C441FDAC();
    MEMORY[0x1C6940010](v21);
    v22 = sub_1C44266D0();
    sub_1C44133D4(v22);
    sub_1C440F848();

    MEMORY[0x1C6940010](0xD000000000000032, 0x80000001C4FAB2D0);
    sub_1C440AD8C();
    v23 = 75;
  }

  else
  {
    if (!flock(v18, 8))
    {
      sub_1C4999FA0();
      return (*(v6 + 8))(v9, v4);
    }

    sub_1C440AD7C();
    sub_1C4F02248();
    v24 = sub_1C446A060(a2);
    v26 = v25;

    v33[0] = v24;
    v33[1] = v26;
    v27 = sub_1C441FDAC();
    MEMORY[0x1C6940010](v27);
    v28 = sub_1C44266D0();
    sub_1C44133D4(v28);
    sub_1C440F848();

    v29 = MEMORY[0x1C6940010](0xD000000000000028, 0x80000001C4FAB310);
    LODWORD(v32) = MEMORY[0x1C693F6A0](v29);
    sub_1C4F02858();
    sub_1C440F848();

    sub_1C440AD8C();
    v23 = 79;
  }

  v30 = v23;
  sub_1C44072D4();
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

unint64_t sub_1C499A458(uint64_t a1, uint64_t a2)
{
  if (qword_1EDDF2318 != -1)
  {
    swift_once();
  }

  result = sub_1C446A178();
  if (!v2)
  {
    v5 = *(result + 16);

    os_unfair_lock_lock((v5 + 24));
    v6 = *(v5 + 16);
    swift_beginAccess();
    v7 = *(v6 + 16);
    if (*(v7 + 16) && (v8 = sub_1C446A3F0(a2), (v9 & 1) != 0))
    {
      v10 = 0;
      v11 = *(*(v7 + 56) + 4 * v8);
    }

    else
    {
      v11 = 0;
      v10 = 1;
    }

    swift_endAccess();
    os_unfair_lock_unlock((v5 + 24));

    return v11 | (v10 << 32);
  }

  return result;
}

uint64_t sub_1C499A56C()
{
  result = sub_1C4400720() & 0xFFFFFFFFFFFFLL | 0x5365000000000000;
  switch(v1)
  {
    case 1:
      result = sub_1C43FD3B0();
      break;
    case 2:
      result = sub_1C4432574();
      break;
    case 3:
      result = sub_1C4400720() & 0xFFFFFFFFFFFFLL | 0x4365000000000000;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C499A62C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C499A69C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C499A62C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C499A6CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C499A56C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C499A700()
{
  sub_1C456902C(&qword_1EC0C0850, &unk_1C4F3F320);
  swift_allocObject();
  result = sub_1C4CE5730();
  qword_1EDDF2320 = result;
  return result;
}

uint64_t sub_1C499A74C(uint64_t a1)
{
  type metadata accessor for InterprocessLockDescriptors.GuardedData();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  sub_1C456902C(&qword_1EC0C0848, &qword_1C4F3F318);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *(v1 + 16) = v4;
  sub_1C4409954(a1, v1 + OBJC_IVAR____TtC24IntelligencePlatformCoreP33_68ED29ADC1C8F1510ECF194B6AB7052227InterprocessLockDescriptors_config);
  return v1;
}

uint64_t sub_1C499A7E4()
{

  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCoreP33_68ED29ADC1C8F1510ECF194B6AB7052227InterprocessLockDescriptors_config);

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for InterprocessLock(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C499A95C()
{
  result = qword_1EDDF5B70;
  if (!qword_1EDDF5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF5B70);
  }

  return result;
}

unint64_t sub_1C499A9B0()
{
  result = qword_1EC0C0840;
  if (!qword_1EC0C0840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0840);
  }

  return result;
}

uint64_t sub_1C499AA04(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v5);
  *(v3 + 32) = swift_task_alloc();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 40) = swift_task_alloc();
  v7 = type metadata accessor for Source(0);
  *(v3 + 48) = v7;
  sub_1C43FBD18(v7);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  v8 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v9 = type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor(0);
  *(v3 + 88) = v9;
  sub_1C43FBD18(v9);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 129) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C499AB68, 0, 0);
}

uint64_t sub_1C499AB68()
{
  sub_1C4419B5C();
  sub_1C4471928(v1, v2, v3);
  if (qword_1EDDFD178 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 129);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 64);
  v14 = *(v0 + 56);
  v15 = *(v0 + 72);
  v10 = *(v0 + 16);
  v11 = sub_1C442B738(*(v0 + 48), &qword_1EDDFD180);
  *(v0 + 112) = v11;
  sub_1C4471928(v11, v5 + *(v7 + 20), type metadata accessor for Source);
  *(v5 + *(v7 + 24)) = v4;
  sub_1C4471928(v10, v8, type metadata accessor for PhaseStores);
  sub_1C4471928(v11, v9, type metadata accessor for Source);
  sub_1C4471928(v5, v6, type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor);
  sub_1C4471928(v11, v14, type metadata accessor for Source);
  sub_1C4471928(v10, v15, type metadata accessor for PhaseStores);
  *(v0 + 128) = v4;
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = sub_1C499AD44;

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C499AD44()
{

  return MEMORY[0x1EEE6DFA0](sub_1C499AE40, 0, 0);
}

uint64_t sub_1C499AE40()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v22 = v0[8];
  v23 = v0[10];
  v5 = v0[4];
  v24 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  sub_1C4471928(v0[14], v0[7], type metadata accessor for Source);
  sub_1C4419B5C();
  sub_1C4471928(v7, v4, v8);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C448550C(v7, type metadata accessor for PhaseStores);
  sub_1C448550C(v1, type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor);
  v9 = (v6 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v2;
  v9[4] = sub_1C499B128();
  v10 = sub_1C4422F90(v9);
  sub_1C499B180(v3, v10, type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor);
  sub_1C441FDB8();
  sub_1C499B180(v22, v11, v12);
  sub_1C441FDB8();
  sub_1C499B180(v23, v13, v14);
  sub_1C441FDB8();
  sub_1C499B180(v24, v15, v16);
  sub_1C441FDB8();
  sub_1C499B180(v5, v17, v18);
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v19 = v0[1];
  v20 = v0[3];

  return v19(v20);
}

uint64_t type metadata accessor for IPEntityTaggingPersonInferencePhase(uint64_t a1)
{
  result = qword_1EC0C0858;
  if (!qword_1EC0C0858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C499B128()
{
  result = qword_1EC0C0868;
  if (!qword_1EC0C0868)
  {
    type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0868);
  }

  return result;
}

uint64_t sub_1C499B180(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor(uint64_t a1)
{
  result = qword_1EC0C0870;
  if (!qword_1EC0C0870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C499B254()
{
  v1 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C43FD2C8(&v66 - v2);
  v83 = sub_1C4EFDE18();
  sub_1C43FCDF8();
  v82 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v6 - v5);
  v7 = sub_1C4EFDE68();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v9 - v8);
  v10 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v12 = v11;
  v88 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  v92 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF38();
  v91 = v19;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v66 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v89 = &v66 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v66 - v30;
  v80 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v79 = v32;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBCC4();
  v74 = v35 - v34;
  v36 = swift_allocObject();
  v94 = v36;
  *(v36 + 16) = 0;
  v86 = (v36 + 16);
  v37 = swift_allocObject();
  v93 = v37;
  *(v37 + 16) = 0;
  v85 = (v37 + 16);
  v108 = MEMORY[0x1E69E7CC0];
  v107 = MEMORY[0x1E69E7CC0];
  v38 = *(type metadata accessor for PhaseStores(0) + 24);
  v70 = v0;
  v75 = *(v0 + v38);
  sub_1C456902C(&unk_1EC0BAC00, &unk_1C4F11680);
  v39 = *(type metadata accessor for Source(0) - 8);
  v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1C4F0D130;
  type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor(0);
  sub_1C4419B74();
  sub_1C448CE44(v0 + v42, v41 + v40, v43);
  SourceSet.init(arrayLiteral:)(&v106, v41);
  v68 = v106;
  v44 = *(v12 + 104);
  v69 = v31;
  sub_1C43FDA64();
  v44();
  sub_1C43FDA64();
  v44();
  v45 = v26;
  v67 = v26;
  sub_1C43FDA64();
  v44();
  v46 = v71;
  sub_1C43FDA64();
  v44();
  v47 = v72;
  sub_1C43FDA64();
  v44();
  v48 = v73;
  sub_1C43FDA64();
  v44();
  v49 = *(v88 + 16);
  v49(v90, v31, v10);
  v49(v91, v89, v10);
  v49(v92, v45, v10);
  v49(v76, v46, v10);
  v49(v77, v47, v10);
  v49(v78, v48, v10);
  v50 = v81;
  sub_1C4EFDD38();
  (*(v82 + 104))(v50, *MEMORY[0x1E69A95A8], v83);
  sub_1C4EFDE28();
  v51 = v74;
  sub_1C4EFDEA8();
  v52 = *(v88 + 8);
  v52(v48, v10);
  v52(v47, v10);
  v52(v46, v10);
  v53 = v70;
  v52(v67, v10);
  v52(v89, v10);
  v52(v69, v10);
  v54 = sub_1C4EFD678();
  v55 = v84;
  sub_1C440BAA8(v84, 1, 1, v54);
  v103 = v53;
  v104 = &v108;
  v105 = &v107;
  sub_1C48687D0(v51, v55, sub_1C499CDBC, v102);
  sub_1C499CDC8(v55);
  (*(v79 + 8))(v51, v80);
  sub_1C4681710(v108, v107);
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  v57 = (v56 + 16);
  v58 = [BiomeLibrary() IntelligencePlatform];
  swift_unknownObjectRelease();
  v59 = [v58 EntityTagging];
  swift_unknownObjectRelease();
  v60 = [v59 PersonInference];
  swift_unknownObjectRelease();
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  v96 = v60;
  v97 = v53;
  v98 = v56;
  v99 = v61;
  v100 = v94;
  v101 = v93;
  v62 = v87;
  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C499CE30, v95);
  if (!v62)
  {
    swift_beginAccess();
    v63 = *v57;
    if (*v57)
    {
      swift_willThrow();
      v64 = v63;

      goto LABEL_5;
    }

    sub_1C4EF9AE8();
    sub_1C464B4B0();
  }

LABEL_5:
  sub_1C499BC18(v53, v85, v86);
}

uint64_t sub_1C499BC18(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C448CE44(a1, v9, type metadata accessor for Configuration);
  v9[*(v7 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C44BCADC(v9, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v11 = sub_1C4F01108();

  *(inited + 48) = v11;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  swift_beginAccess();
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  swift_beginAccess();
  v12 = *a3;
  swift_beginAccess();
  result = v12 - *a2;
  if (__OFSUB__(v12, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

uint64_t sub_1C499BED8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v26 = a3;
  v28 = a2;
  v6 = sub_1C456902C(&qword_1EC0BAC10, &unk_1C4F0F030);
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for GraphTriple(0);
  v25 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDF7900 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for SourceIdPrefix(0);
  sub_1C442B738(v12, qword_1EDE2D620);
  String.base64EncodedSHA(withPrefix:)();
  v14 = v13;
  v16 = v15;
  type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor(0);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = v14;
  *(inited + 40) = v16;
  sub_1C4B4AF44();
  swift_setDeallocating();
  sub_1C44DEE40();
  if (*&v11[*(v9 + 36)])
  {
    v18 = *(v6 + 48);
    sub_1C448CE44(a1, v8, type metadata accessor for GraphTriple);
    sub_1C448CE44(v11, &v8[v18], type metadata accessor for GraphTriple);
    sub_1C4588FA8();
    v19 = *(*a4 + 16);
    sub_1C4589B90();
    sub_1C44BCADC(v11, type metadata accessor for GraphTriple);
    v20 = *a4;
    *(v20 + 16) = v19 + 1;
    sub_1C46829D4(v8, v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v19);
  }

  else
  {
    v21 = v26;
    sub_1C4588D78();
    v22 = *(*v21 + 16);
    sub_1C4589968();
    sub_1C44BCADC(v11, type metadata accessor for GraphTriple);
    v23 = *v21;
    *(v23 + 16) = v22 + 1;
    sub_1C448CE44(a1, v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for GraphTriple);
  }

  return 1;
}

void sub_1C499C218(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v40 = a9;
  v37 = a7;
  v38 = a8;
  v35 = a2;
  v36 = a6;
  v33 = a5;
  v34 = a1;
  v11 = type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = [a3 publisher];
  v45 = nullsub_1;
  v46 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v31[1] = &v43;
  v43 = sub_1C44405F8;
  v44 = &unk_1F43F2478;
  v32 = _Block_copy(&aBlock);
  sub_1C448CE44(a4, v14, type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_1C499D10C(v14, v20 + v15);
  v21 = v34;
  *(v20 + v16) = v33;
  v22 = v36;
  v23 = v37;
  *(v20 + v17) = v36;
  *(v20 + v18) = v23;
  v24 = (v20 + v19);
  v25 = v35;
  *v24 = v21;
  v24[1] = v25;
  *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v38;
  v45 = sub_1C499D170;
  v46 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1C45AF9C8;
  v44 = &unk_1F43F24C8;
  v26 = _Block_copy(&aBlock);

  v27 = v22;

  v28 = v39;
  v29 = v32;
  v30 = [v39 sinkWithCompletion:v32 shouldContinue:v26];
  _Block_release(v26);
  _Block_release(v29);

  swift_beginAccess();
  *v40 = *(v27 + 16);
}

void sub_1C499C50C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  sub_1C4ACF474();
  swift_beginAccess();
  if (*(a3 + 16))
  {
    swift_beginAccess();
    *(a4 + 16) = 1;
    return;
  }

  v14 = [a1 eventBody];
  if (v14)
  {
    v15 = v14;
    swift_beginAccess();
    v16 = *(a5 + 16);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      *(a5 + 16) = v18;
      v24[0] = *(a2 + *(type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor(0) + 24));
      sub_1C499C724(v24);
      sub_1C4812140();
      v20 = v19;

      a6(v20);

      swift_beginAccess();
      v21 = *(a8 + 16);
      v17 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (!v17)
      {
        *(a8 + 16) = v22;
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C499C724(unsigned __int8 *a1)
{
  v4 = sub_1C456902C(&qword_1EC0C0890, &qword_1C4F3F420);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v51 - v5;
  v7 = type metadata accessor for IPEntityTaggingPersonInferenceStructs.AgentAffiliationRelationshipType(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = type metadata accessor for IPEntityTaggingPersonInferenceStructs.Person(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  v59 = *a1;
  if (qword_1EDDF7900 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for SourceIdPrefix(0);
  sub_1C442B738(v17, qword_1EDE2D620);
  String.base64EncodedSHA(withPrefix:)();
  v19 = v18;
  v21 = v20;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4DDB44C();
  if (v2)
  {
  }

  else
  {
    v54 = v19;
    v55 = v1;
    v53 = v6;
    v22 = *(v12 + 36);
    v56 = v16;
    v23 = (v16 + v22);

    *v23 = xmmword_1C4F17530;
    v24 = sub_1C4EFEEF8();
    sub_1C440BAA8(v11, 1, 1, v24);
    sub_1C4EFD318();
    v25 = v7[6];
    if (qword_1EDDFD178 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Source(0);
    sub_1C442B738(v26, &qword_1EDDFD180);
    sub_1C4419B74();
    sub_1C448CE44(v27, v11 + v25, v28);
    sub_1C4EFE808();
    v29 = (v11 + v7[8]);
    *v29 = 0;
    v29[1] = 0;
    sub_1C4EFE878();
    v30 = (v11 + v7[10]);
    *v30 = 0;
    v30[1] = 0;
    v52 = v30;
    sub_1C4EFE2A8();
    v31 = (v11 + v7[12]);
    *v31 = 0;
    v31[1] = 0;
    sub_1C4EFEB28();
    v32 = (v11 + v7[14]);
    *v32 = 0;
    v32[1] = 0;
    sub_1C4EFEB48();
    v33 = (v11 + v7[16]);
    *v33 = 0;
    v33[1] = 0;
    v34 = v55;
    if ([v55 hasEntityIdentifier])
    {
      v51 = v31;
      sub_1C456902C(&qword_1EC0B8400, &unk_1C4F175E0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1C4F0D130;
      v36 = [v34 entityIdentifier];
      v37 = MEMORY[0x1E69E7738];
      *(v35 + 56) = MEMORY[0x1E69E76D8];
      *(v35 + 64) = v37;
      *(v35 + 32) = v36;
      *v29 = sub_1C4F01168();
      v29[1] = v38;
      *v32 = sub_1C499D240(v34);
      v32[1] = v39;
      [v34 entityTagID];
      v57 = sub_1C499CE54();
      v58 = v40;
      v41 = sub_1C4F01438();
      v42 = v52;
      *v52 = v41;
      v42[1] = v43;
      [v34 entityTagID];
      v57 = sub_1C499CE54();
      v58 = v44;
      *v33 = sub_1C4F01438();
      v33[1] = v45;
      if ([v34 hasScore])
      {
        [v34 score];
        v46 = sub_1C4F019E8();
        v47 = v51;
        *v51 = v46;
        v47[1] = v48;
      }

      v49 = v53;
      sub_1C448CE44(v11, v53, type metadata accessor for IPEntityTaggingPersonInferenceStructs.AgentAffiliationRelationshipType);
      sub_1C440BAA8(v49, 0, 1, v7);
      sub_1C4DDBD9C(v49);
    }

    LOBYTE(v57) = v59;
    v19 = sub_1C4DDBF58(v54, v21, &v57);

    sub_1C440AD9C();
    sub_1C4400730();
  }

  return v19;
}

uint64_t sub_1C499CBD4()
{
  sub_1C499B254();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C499CCAC(uint64_t a1)
{
  result = sub_1C499CD78(&qword_1EC0C0880, &unk_1C4F3F390);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C499CCF0(uint64_t a1)
{
  result = sub_1C499CD78(&qword_1EC0C0888, &unk_1C4F3F3B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C499CD34(uint64_t a1)
{
  result = sub_1C499CD78(&qword_1EC0BA628, &unk_1C4F3F3D4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C499CD78(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C499CDC8(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C499CE54()
{
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C499D10C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C499D170(void *a1)
{
  v3 = *(type metadata accessor for IPEntityTaggingPersonInferenceSourceIngestor(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_1C499C50C(a1, v1 + v4, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C499D240(void *a1)
{
  v1 = [a1 feedbackEventID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C499D2AC(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C49A2490(a1, sub_1C49A2458, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1C499D330(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E696F70 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C499D3EC(char a1)
{
  if (a1)
  {
    return 0x73746E696F70;
  }

  else
  {
    return 25705;
  }
}

void sub_1C499D414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v26 = v25;
  v27 = sub_1C456902C(&qword_1EC0C0948, &qword_1C4F3F6F8);
  sub_1C43FCDF8();
  v29 = v28;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FE61C();
  sub_1C4409678(v26, v26[3]);
  sub_1C49A2A70();
  sub_1C4F02BF8();
  sub_1C4F02798();
  if (!v23)
  {
    sub_1C456902C(&qword_1EC0C0958, &qword_1C4F3F700);
    sub_1C49A2AC4(&qword_1EC0C0960, &qword_1EC0C0968, &unk_1C4F3F5AC, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
  }

  (*(v29 + 8))(v24, v27);
  sub_1C43FBC80();
}

uint64_t sub_1C499D5CC(void *a1)
{
  sub_1C456902C(&qword_1EC0C0970, &qword_1C4F3F708);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C49A2A70();
  sub_1C4F02BC8();
  if (!v1)
  {
    v4 = sub_1C4F02678();
    sub_1C456902C(&qword_1EC0C0958, &qword_1C4F3F700);
    sub_1C49A2AC4(&qword_1EC0C0978, &qword_1EC0C0980, &unk_1C4F3F5D4, MEMORY[0x1E69E6330]);
    sub_1C4F026C8();
    v6 = sub_1C44069E0();
    v7(v6);
  }

  sub_1C440962C(a1);
  return v4;
}

uint64_t sub_1C499D7E0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7890025 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C499D8A8(char a1)
{
  if (a1)
  {
    return 1702125924;
  }

  else
  {
    return 7890025;
  }
}

uint64_t sub_1C499D8D0(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C0998, &qword_1C4F3F718);
  sub_1C43FCDF8();
  v5 = v4;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  sub_1C4409678(a1, a1[3]);
  sub_1C49A2B60();
  sub_1C4F02BF8();
  v12[15] = 0;
  sub_1C4F027D8();
  if (!v1)
  {
    type metadata accessor for JointHUDataCollectionTaskManager.Point(0);
    v12[14] = 1;
    sub_1C4EF9CD8();
    sub_1C4411F90();
    sub_1C44724C0(v9, v10, MEMORY[0x1E6969538]);
    sub_1C4F027E8();
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_1C499DA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v26 = v25;
  v48 = v27;
  v50 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v47 = v28;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v51 = sub_1C456902C(&qword_1EC0C0988, &qword_1C4F3F710);
  sub_1C43FCDF8();
  v49 = v30;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v44 - v32;
  v34 = type metadata accessor for JointHUDataCollectionTaskManager.Point(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  v38 = (v37 - v36);
  sub_1C4409678(v26, v26[3]);
  sub_1C49A2B60();
  sub_1C4F02BC8();
  if (!v23)
  {
    v46 = v34;
    v39 = v49;
    v40 = v50;
    v41 = v51;
    *v38 = sub_1C4F026B8();
    sub_1C4411F90();
    sub_1C44724C0(v42, v43, MEMORY[0x1E6969558]);
    v45 = v24;
    sub_1C4F026C8();
    (*(v39 + 8))(v33, v41);
    (*(v47 + 32))(v38 + *(v46 + 20), v45, v40);
    sub_1C49A27C0(v38, v48);
  }

  sub_1C440962C(v26);
  sub_1C43FBC80();
}

uint64_t sub_1C499DD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C499D330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C499DD3C(uint64_t a1)
{
  v2 = sub_1C49A2A70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C499DD78(uint64_t a1)
{
  v2 = sub_1C49A2A70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C499DDB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C499D5CC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1C499DE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C499D7E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C499DE34(uint64_t a1)
{
  v2 = sub_1C49A2B60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C499DE70(uint64_t a1)
{
  v2 = sub_1C49A2B60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C499DEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

void sub_1C499DF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  v302 = v21;
  v23 = v20;
  v296 = v24;
  v277 = sub_1C4F01828();
  sub_1C43FCDF8();
  v271 = v25;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBFDC();
  v275 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD230();
  v274 = v29;
  v30 = sub_1C43FBE44();
  v31 = type metadata accessor for Configuration(v30);
  MEMORY[0x1EEE9AC00](v31 - 8);
  sub_1C43FBCC4();
  v282 = v33 - v32;
  v34 = sub_1C456902C(&qword_1EC0C0900, &unk_1C4F3F510);
  MEMORY[0x1EEE9AC00](v34 - 8);
  sub_1C43FBFDC();
  v280 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  v287 = v37;
  sub_1C43FBE44();
  v294 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  v283 = v41;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  v288 = v43;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBF38();
  v281 = v45;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  v272 = v47;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  v279 = v49;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  v292 = v51;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  v278 = v53;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBF38();
  v293 = v55;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FD230();
  v295 = v57;
  sub_1C43FBE44();
  sub_1C4EF9D38();
  sub_1C43FCDF8();
  v285 = v59;
  v286 = v58;
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBCC4();
  v284 = v61 - v60;
  v62 = sub_1C43FBE44();
  v63 = type metadata accessor for JointHUDataCollectionTaskManager.Point(v62);
  sub_1C43FCDF8();
  v273 = v64;
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v300 = sub_1C456902C(&qword_1EC0B9078, &unk_1C4F30C70);
  sub_1C43FCDF8();
  v303 = v66;
  MEMORY[0x1EEE9AC00](v67);
  sub_1C43FBFDC();
  v299 = v68;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FBF38();
  v298 = v70;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v71);
  v73 = v268 - v72;
  v74 = *(v20 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_kvStore);
  v75 = v23;
  v76 = v23 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_savedStateKey;
  v77 = *(v23 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_savedStateKey);
  v78 = *(v76 + 8);
  v79 = v302;
  v80 = sub_1C4598E94();
  v301 = v39;
  if (v79)
  {

    v290 = 0;
LABEL_3:
    v83 = v294;
    goto LABEL_4;
  }

  v268[0] = v73;
  v268[1] = v74;
  v269 = v78;
  v270 = v77;
  v297 = v22;
  v302 = v63;
  v290 = 0;
  if (!v81)
  {
    goto LABEL_3;
  }

  v83 = v294;
  if (v82[2].isa)
  {
    v291 = v81;
    v286 = v82;
    v276 = v80;
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v118 = sub_1C4F00978();
    sub_1C442B738(v118, qword_1EDDFECB8);
    v119 = v291;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v120 = sub_1C4F00968();
    v121 = sub_1C4F01CB8();

    v122 = os_log_type_enabled(v120, v121);
    v123 = v301;
    v289 = v75;
    if (v122)
    {
      sub_1C43FEC60();
      v124 = swift_slowAlloc();
      sub_1C443FD74();
      v296 = swift_slowAlloc();
      v308[0] = v296;
      *v124 = 136315650;
      *(v124 + 4) = sub_1C4410EF0();
      *(v124 + 12) = 2080;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v125 = sub_1C441D828(v276, v119, v308);

      *(v124 + 14) = v125;
      *(v124 + 22) = 2048;
      isa = v286[2].isa;

      *(v124 + 24) = isa;
      v123 = v301;

      _os_log_impl(&dword_1C43F8000, v120, v121, "%s: Found saved state %s with %ld points. Will resume.", v124, 0x20u);
      swift_arrayDestroy();
      v75 = v289;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v251 = v269;
    v250 = v270;
    v252 = v273;
    v253 = v286[2].isa;
    if (v253)
    {
      v308[0] = MEMORY[0x1E69E7CC0];
      v254 = v286;
      sub_1C459E978();
      v255 = v254 + ((*(v252 + 80) + 32) & ~*(v252 + 80));
      v256 = *(v252 + 9);
      v295 = v123 + 4;
      v296 = v256;
      v103 = v308[0];
      v257 = v300;
      v258 = v268[0];
      do
      {
        v259 = v297;
        sub_1C4430E88(v255, v297, type metadata accessor for JointHUDataCollectionTaskManager.Point);
        v260 = *(v257 + 48);
        *v258 = *v259;
        v261 = v83;
        (v295->isa)(v258 + v260, v259 + *(v302 + 20), v83);
        v308[0] = v103;
        v262 = *(v103 + 16);
        if (v262 >= *(v103 + 24) >> 1)
        {
          sub_1C459E978();
          v257 = v300;
          v103 = v308[0];
        }

        *(v103 + 16) = v262 + 1;
        sub_1C43FBF6C();
        sub_1C44CD9E0(v258, v103 + v263 + *(v264 + 72) * v262, &qword_1EC0B9078, &unk_1C4F30C70);
        v255 += v296;
        v253 = (v253 - 1);
        v83 = v261;
      }

      while (v253);

      v75 = v289;
      v251 = v269;
      v250 = v270;
    }

    else
    {

      v103 = MEMORY[0x1E69E7CC0];
    }

    v266._countAndFlagsBits = v250;
    v266._object = v251;
    KeyValueStore.delete(key:)(v266);
    v104 = v267;
    if (v267)
    {

      goto LABEL_20;
    }

    v95 = v301;
    v96 = v287;
    goto LABEL_11;
  }

LABEL_4:
  if (qword_1EDDFECB0 != -1)
  {
LABEL_83:
    sub_1C44064A8();
    swift_once();
  }

  v84 = sub_1C4F00978();
  sub_1C442B738(v84, qword_1EDDFECB8);
  sub_1C4426A94();

  v85 = sub_1C4F00968();
  v86 = sub_1C4F01CB8();

  if (os_log_type_enabled(v85, v86))
  {
    sub_1C43FECF0();
    v87 = swift_slowAlloc();
    sub_1C43FEC60();
    v88 = v83;
    v89 = swift_slowAlloc();
    v308[0] = v89;
    *v87 = 136315138;
    *(v87 + 4) = sub_1C441D828(*(v75 + 16), *(v75 + 24), v308);
    _os_log_impl(&dword_1C43F8000, v85, v86, "%s: deciding whether to sample.", v87, 0xCu);
    sub_1C440962C(v89);
    v83 = v88;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v90 = sub_1C49A0688();

  v91 = sub_1C4F00968();
  sub_1C4F01CB8();
  sub_1C4409E60();

  v92 = sub_1C441ED60();
  if (!v90)
  {
    if (v92)
    {
      sub_1C43FECF0();
      v113 = swift_slowAlloc();
      sub_1C43FEC60();
      v114 = swift_slowAlloc();
      v308[0] = v114;
      *(v113 + 4) = sub_1C44044B4(4.8149e-34);
      sub_1C44003E4(&dword_1C43F8000, v115, v116, "%s: decided not to sample");
      sub_1C440962C(v114);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C49A2824();
    swift_allocError();
    *v117 = 1;
    goto LABEL_19;
  }

  if (v92)
  {
    sub_1C43FECF0();
    v93 = swift_slowAlloc();
    sub_1C43FEC60();
    v94 = swift_slowAlloc();
    v308[0] = v94;
    *v93 = 136315138;
    *(v93 + 4) = sub_1C441D828(*(v75 + 16), *(v75 + 24), v308);
    _os_log_impl(&dword_1C43F8000, v91, v85, "%s: decided that sampling will occur.", v93, 0xCu);
    sub_1C440962C(v94);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v95 = v301;
  v96 = v287;
  v97 = v284;
  sub_1C4EF9058();
  v276 = sub_1C4EF9CF8();
  v291 = v98;
  (*(v285 + 1))(v97, v286);
  v99 = v295;
  v100 = sub_1C4EF9BE8();
  MEMORY[0x1EEE9AC00](v100);
  v268[-2] = v99;
  v268[-1] = v75;
  v101 = v290;
  sub_1C45DB1D8();
  v103 = v102;
  v104 = v101;
  (v95[1].isa)(v99, v83);
LABEL_11:
  sub_1C4868694(v103, v96);
  v105 = v300;
  if (sub_1C44157D4(v96, 1, v300) == 1)
  {

    sub_1C4420C3C(v96, &qword_1EC0C0900, &unk_1C4F3F510);
    if (qword_1EDDFECB0 == -1)
    {
LABEL_13:
      v106 = sub_1C4F00978();
      sub_1C442B738(v106, qword_1EDDFECB8);
      sub_1C4426A94();

      v107 = sub_1C4F00968();
      sub_1C4F01CD8();
      sub_1C4409E60();

      if (sub_1C441ED60())
      {
        sub_1C43FECF0();
        v108 = swift_slowAlloc();
        sub_1C43FEC60();
        v109 = swift_slowAlloc();
        v308[0] = v109;
        *(v108 + 4) = sub_1C44044B4(4.8149e-34);
        sub_1C44003E4(&dword_1C43F8000, v110, v111, "%s: received empty timepoints. Stopping data collection due to unexpected state.");
        sub_1C440962C(v109);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      sub_1C49A2824();
      swift_allocError();
      *v112 = 0;
LABEL_19:
      swift_willThrow();
      goto LABEL_20;
    }

LABEL_85:
    sub_1C44064A8();
    swift_once();
    goto LABEL_13;
  }

  v289 = v75;
  v287 = v104;
  v127 = v293;
  v128 = v95[4].isa;
  v129 = v278;
  v128(v278, v96 + *(v105 + 48), v83);
  v128(v127, v129, v83);
  v130 = v280;
  sub_1C4A3E29C(v103, v280);
  v131 = sub_1C44157D4(v130, 1, v105);
  v284 = &v95[4];
  v273 = v128;
  if (v131 == 1)
  {
    sub_1C4420C3C(v130, &qword_1EC0C0900, &unk_1C4F3F510);
    v132 = sub_1C441E4D0();
    v133(v132);
  }

  else
  {
    v128(v272, v130 + *(v105 + 48), v83);
    v134 = sub_1C441E4D0();
    (v128)(v134);
  }

  v296 = v103;
  v135 = v292;
  sub_1C4EF9BE8();
  v285 = v95[1].isa;
  v286 = v95 + 1;
  (v285)(v105, v83);
  v136 = v289;
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v137 = sub_1C4F00978();
  v138 = sub_1C442B738(v137, qword_1EDDFECB8);
  v139 = v95[2].isa;
  v140 = v281;
  v139(v281, v293, v83);
  v139(v288, v135, v83);

  v302 = v138;
  v141 = sub_1C4F00968();
  v142 = sub_1C4F01CB8();

  v143 = v136;
  if (sub_1C441ED60())
  {
    sub_1C43FEC60();
    v144 = swift_slowAlloc();
    v145 = v288;
    v146 = v144;
    v297 = swift_slowAlloc();
    v308[0] = v297;
    *(v146 + 4) = sub_1C44044B4(4.8152e-34);
    *(v146 + 12) = 2080;
    sub_1C4411F90();
    sub_1C44724C0(v147, v148, MEMORY[0x1E6969570]);
    v295 = v141;
    v149 = sub_1C4F02858();
    v150 = v140;
    v151 = v83;
    v153 = v152;
    LODWORD(v290) = v142;
    v154 = v285;
    (v285)(v150, v151);
    v155 = sub_1C441D828(v149, v153, v308);
    v156 = v151;
    v157 = v291;

    *(v146 + 14) = v155;
    *(v146 + 22) = 2080;
    v158 = sub_1C4F02858();
    v160 = v159;
    v154(v145, v156);
    sub_1C441D828(v158, v160, v308);
    sub_1C4426A94();
    v143 = v289;

    *(v146 + 24) = v158;
    v161 = v295;
    _os_log_impl(&dword_1C43F8000, v295, v290, "%s: startTime = %s endTime = %s", v146, 0x20u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v162 = v285;
    (v285)(v288, v83);
    v162(v140, v83);
    v157 = v291;
  }

  v163 = v287;
  v164 = v282;
  sub_1C4419B8C();
  sub_1C4430E88(v143 + v165, v164, v166);
  type metadata accessor for CUFeatureProvider(0);
  sub_1C43FD23C();
  swift_allocObject();
  sub_1C46A4590(v164);
  if ([objc_opt_self() isBetaBuild])
  {
    v167 = 1;
  }

  else
  {
    v167 = [objc_opt_self() isInternalDevice];
  }

  v168 = v163;
  v169 = sub_1C46A52B8(v167);
  if (v163)
  {

    v170 = v163;
    v171 = sub_1C4F00968();
    v172 = sub_1C4F01CE8();

    if (os_log_type_enabled(v171, v172))
    {
      sub_1C441024C();
      v173 = swift_slowAlloc();
      sub_1C443FD74();
      v297 = swift_slowAlloc();
      v308[0] = v297;
      *v173 = 136315394;
      *(v173 + 4) = sub_1C4410EF0();
      *(v173 + 12) = 2080;
      swift_getErrorValue();
      v174 = sub_1C4F02A38();
      v176 = sub_1C441D828(v174, v175, v308);

      *(v173 + 14) = v176;
      _os_log_impl(&dword_1C43F8000, v171, v172, "%s: unable to generate cu signals: %s", v173, 0x16u);
      swift_arrayDestroy();
      v143 = v289;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C456902C(&qword_1EC0B9AE0, &qword_1C4F16C40);
    v177 = sub_1C4F00F28();
  }

  else
  {
    v177 = v169;
  }

  sub_1C49A0950();
  v179 = v178;
  sub_1C456902C(&qword_1EC0B9088, &qword_1C4F0EBB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001C4F8F2E0;
  *(inited + 72) = type metadata accessor for BehaviorsFeatureProvider();
  *(inited + 80) = sub_1C44724C0(&qword_1EC0C0920, type metadata accessor for BehaviorsFeatureProvider, &unk_1C4F139CC);
  *(inited + 48) = v179;

  *(inited + 88) = sub_1C4665B2C();
  *(inited + 104) = 1;
  sub_1C456902C(&qword_1EC0B9AE0, &qword_1C4F16C40);
  v181 = sub_1C4F00F28();
  *(v143 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_behaviorsFeatureProvider) = v179;

  v295 = sub_1C499D2AC(v177, v181);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v182 = sub_1C4F00968();
  sub_1C4F01CF8();

  v183 = sub_1C441ED60();
  v287 = 0;
  if (v183)
  {
    sub_1C43FECF0();
    v184 = swift_slowAlloc();
    sub_1C43FEC60();
    v181 = swift_slowAlloc();
    v308[0] = v181;
    *v184 = 136315138;
    v185 = v276;
    *(v184 + 4) = sub_1C441D828(v276, v157, v308);
    sub_1C44003E4(&dword_1C43F8000, v186, v187, "Features: Starting data collection with id %s");
    sub_1C440962C(v181);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v185 = v276;
  }

  v188 = v157;
  sub_1C4812934();
  v190 = v189;
  v191 = swift_allocObject();
  *(v191 + 16) = v185;
  *(v191 + 24) = v188;
  v291 = v188;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v192 = sub_1C4668774();
  sub_1C442E860(v143 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_eventTracker, v310);
  sub_1C456902C(&qword_1EC0C0910, &unk_1C4F3F520);
  sub_1C43FD23C();
  v193 = swift_allocObject();
  sub_1C4418280(v310, v310[3]);
  v280 = v268;
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v194);
  sub_1C43FBCC4();
  v196 = sub_1C4408C64(v195);
  v197(v196);
  v198 = *v181;
  v309[3] = sub_1C4F00518();
  v309[4] = &off_1F43E7288;
  v309[0] = v198;
  v199 = qword_1EC151B98;
  v200 = sub_1C456902C(&qword_1EC0B9CA8, &qword_1C4F22290);
  sub_1C440BAA8(v193 + v199, 1, 2, v200);
  v201 = (v193 + qword_1EC0BB058);
  *v201 = 0u;
  v201[1] = 0u;
  v201[2] = 0u;
  v201[3] = 0u;
  *(v193 + qword_1EC0BB060) = 0;
  *(v193 + qword_1EC0BB068) = 0;
  v202 = v295;
  *(v193 + 16) = v295;
  v203 = v190;
  *(v193 + 48) = sub_1C49A2898;
  *(v193 + 56) = v191;
  *(v193 + 32) = v190;
  *(v193 + 40) = 0x4072C00000000000;
  *(v193 + 64) = v192;
  *(v193 + 72) = 2;
  *(v193 + 80) = 256;
  v288 = v193;
  sub_1C442E860(v309, v193 + 88);
  sub_1C456902C(&qword_1EC0C0918, &unk_1C4F3F530);
  v204 = sub_1C4F02538();
  v205 = v202 + 8;
  v206 = 1 << LOBYTE(v202[4].isa);
  v207 = -1;
  if (v206 < 64)
  {
    v207 = ~(-1 << v206);
  }

  v208 = v207 & v202[8].isa;
  v209 = (v206 + 63) >> 6;
  v302 = v204;
  v290 = v204 + 64;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v282 = v203;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v281 = v191;

  v210 = 0;
  if (v208)
  {
    while (1)
    {
      v211 = __clz(__rbit64(v208));
      v208 &= v208 - 1;
LABEL_57:
      v216 = v211 | (v210 << 6);
      v217 = v295[7].isa;
      v218 = (v295[6].isa + 16 * v216);
      v219 = v218[1];
      v297 = *v218;
      sub_1C4460050(v217 + 64 * v216, v308, &qword_1EC0B9AE0, &qword_1C4F16C40);
      sub_1C4460050(v308, v304, &qword_1EC0B9AE0, &qword_1C4F16C40);
      v220 = v305;
      if (v305 && v305 != 1)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C460986C(v304, v306);
      }

      else
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C441D670(v304, v306);
      }

      v221 = v297;
      v307 = v220;
      sub_1C4420C3C(v308, &qword_1EC0B9AE0, &qword_1C4F16C40);
      *(v290 + ((v216 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v216;
      v222 = v302;
      v223 = (*(v302 + 48) + 16 * v216);
      *v223 = v221;
      v223[1] = v219;
      v224 = *(v222 + 56) + 56 * v216;
      v225 = v307;
      v227 = v306[1];
      v226 = v306[2];
      *v224 = v306[0];
      *(v224 + 16) = v227;
      *(v224 + 32) = v226;
      *(v224 + 48) = v225;
      v228 = *(v222 + 16);
      v229 = __OFADD__(v228, 1);
      v230 = v228 + 1;
      if (v229)
      {
        break;
      }

      *(v302 + 16) = v230;
      if (!v208)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

LABEL_52:
  v212 = v210;
  v75 = v294;
  v213 = v283;
  v83 = v284;
  v214 = v296;
  while (1)
  {
    v210 = v212 + 1;
    if (__OFADD__(v212, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    if (v210 >= v209)
    {
      break;
    }

    v215 = v205[v210].isa;
    ++v212;
    if (v215)
    {
      v211 = __clz(__rbit64(v215));
      v208 = (v215 - 1) & v215;
      goto LABEL_57;
    }
  }

  sub_1C440962C(v309);
  v231 = v288;
  *(v288 + 24) = v302;
  *(v231 + qword_1EC151BA0) = v282;
  sub_1C440962C(v310);
  v232 = (v289 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_sampleTaskUUIDPair);
  v234 = *(v289 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_sampleTaskUUIDPair);
  v233 = *(v289 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_sampleTaskUUIDPair + 8);
  v235 = v291;
  *v232 = v276;
  v232[1] = v235;
  v232[2] = v231;

  sub_1C49A28A0(v234, v233);
  v236 = *(v214 + 16);
  if (v236)
  {
    v308[0] = MEMORY[0x1E69E7CC0];
    sub_1C459D270();
    v237 = v308[0];
    sub_1C43FBF6C();
    v239 = v214 + v238;
    v297 = *(v240 + 72);
    v241 = v273;
    do
    {
      v302 = v239;
      v303 = v236;
      v242 = v298;
      v243 = v83;
      sub_1C4460050(v239, v298, &qword_1EC0B9078, &unk_1C4F30C70);
      v244 = v242;
      v245 = v299;
      sub_1C44CD9E0(v244, v299, &qword_1EC0B9078, &unk_1C4F30C70);
      v241(v213, v245 + *(v300 + 48), v75);
      v308[0] = v237;
      v246 = *(v237 + 16);
      if (v246 >= *(v237 + 24) >> 1)
      {
        sub_1C459D270();
        v237 = v308[0];
      }

      *(v237 + 16) = v246 + 1;
      sub_1C43FBF6C();
      v241(v237 + v247 + *(v248 + 72) * v246, v213, v75);
      v239 = v297 + v302;
      v236 = v303 - 1;
      v83 = v243;
    }

    while (v303 != 1);

    v249 = v285;
    (v285)(v292, v75);
    v249(v293, v75);
  }

  else
  {

    v265 = v285;
    (v285)(v292, v75);
    v265(v293, v75);
  }

LABEL_20:
  sub_1C43FBC80();
}

uint64_t sub_1C499FC70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1C456902C(&qword_1EC0B9078, &unk_1C4F30C70);
  *a2 = v3;
  return sub_1C4EF9BE8();
}

uint64_t sub_1C499FCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1C4F00318();
  v8 = type metadata accessor for HUTenPointDataCollection(0);
  v9 = (a4 + v8[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a4 + v8[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a4 + v8[7]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a4 + v8[8];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v8[9];
  v14 = type metadata accessor for HUTenPointSessionSample(0);
  result = sub_1C440BAA8(a4 + v13, 1, 1, v14);
  *v9 = 0xD00000000000001ALL;
  v9[1] = 0x80000001C4FAB610;
  *v10 = xmmword_1C4F3F430;
  *v11 = a2;
  v11[1] = a3;
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *v12 = a1;
  *(v12 + 4) = 0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C499FDF4()
{
  v1 = v0;
  v51 = sub_1C456902C(&qword_1EC0B89E8, &unk_1C4F3E630);
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v45 - v8);
  v50 = type metadata accessor for JointHUDataCollectionTaskManager.Point(0);
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = (v14 - v13);
  v16 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_sampleTaskUUIDPair);
  v17 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_sampleTaskUUIDPair + 8);
  if (v17)
  {
    v49 = v3;
    v18 = *v16;
    v19 = v16[2];
    v20 = qword_1EC151BA0;
    swift_beginAccess();
    v21 = *(v19 + v20);
    v22 = *(v21 + 16);
    if (v22)
    {
      v47 = v1;
      v48 = v18;
      sub_1C49A277C(v18, v17);
      v52 = MEMORY[0x1E69E7CC0];
      v46 = v17;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v45[2] = v19;

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C459E9B8();
      v23 = v52;
      sub_1C43FBF6C();
      v45[1] = v21;
      v25 = v21 + v24;
      v49 = *(v26 + 72);
      do
      {
        sub_1C4460050(v25, v9, &qword_1EC0B89E8, &unk_1C4F3E630);
        v27 = *v9;
        sub_1C44CD9E0(v9, v6, &qword_1EC0B89E8, &unk_1C4F3E630);
        v28 = v50;
        isa_low = SLODWORD(v51[6].isa);
        *v15 = v27;
        v30 = *(v28 + 20);
        sub_1C4EF9CD8();
        sub_1C43FBCE0();
        (*(v31 + 32))(&v15[v30], &v6[isa_low]);
        v52 = v23;
        v32 = *(v23 + 16);
        if (v32 >= *(v23 + 24) >> 1)
        {
          sub_1C459E9B8();
          v23 = v52;
        }

        *(v23 + 16) = v32 + 1;
        sub_1C49A27C0(v15, v23 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v32);
        v25 += v49;
        --v22;
      }

      while (v22);

      v34 = v46;
      v33 = v47;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C495C7C0();
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v40 = sub_1C4F00978();
      sub_1C442B738(v40, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v41 = sub_1C4F00968();
      v42 = sub_1C4F01CB8();

      if (os_log_type_enabled(v41, v42))
      {
        sub_1C43FEC60();
        v43 = swift_slowAlloc();
        sub_1C443FD74();
        v52 = swift_slowAlloc();
        *v43 = 136315650;
        *(v43 + 4) = sub_1C441D828(*(v33 + 16), *(v33 + 24), &v52);
        *(v43 + 12) = 2080;
        *(v43 + 14) = sub_1C441D828(v48, v34, &v52);
        *(v43 + 22) = 2048;
        v44 = *(v23 + 16);

        *(v43 + 24) = v44;

        _os_log_impl(&dword_1C43F8000, v41, v42, "%s: Saved data collection state %s with %ld remaining points.", v43, 0x20u);
        swift_arrayDestroy();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v35 = sub_1C4F00978();
    sub_1C442B738(v35, qword_1EDDFECB8);

    v51 = sub_1C4F00968();
    v36 = sub_1C4F01CB8();

    if (os_log_type_enabled(v51, v36))
    {
      sub_1C43FECF0();
      v37 = swift_slowAlloc();
      sub_1C43FEC60();
      v38 = swift_slowAlloc();
      v53[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1C441D828(*(v1 + 16), *(v1 + 24), v53);
      _os_log_impl(&dword_1C43F8000, v51, v36, "%s: Skipping persisting state for deferral since no sample task has been created.", v37, 0xCu);
      sub_1C440962C(v38);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
      v39 = v51;
    }
  }
}

uint64_t sub_1C49A0554()
{
  if (!*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_behaviorsFeatureProvider))
  {
    return KeyValueStore.delete(key:)(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_savedStateKey));
  }

  sub_1C4637460();

  if (!v1)
  {
    return KeyValueStore.delete(key:)(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_savedStateKey));
  }

  return result;
}

void sub_1C49A05DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_postProcessor);
  if (v1)
  {
    v2 = v1;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4886B98();
  }
}

BOOL sub_1C49A0688()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  if (qword_1EDDE3C60 != -1)
  {
    swift_once();
  }

  sub_1C4EF9CC8();
  v7 = sub_1C46D791C(v6);
  (*(v2 + 8))(v6, v0);
  if (v7)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
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
      _os_log_impl(&dword_1C43F8000, v9, v10, "Not sampling for Joint HU due to being enrolled in longitudinal data collection", v11, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    return 0;
  }

  else
  {
    v13 = 1.0;
    if (([objc_opt_self() isInternalDevice] & 1) == 0)
    {
      if ([objc_opt_self() isBetaBuild])
      {
        v13 = 0.1;
      }

      else
      {
        v13 = 0.02;
      }
    }

    sub_1C4701FFC(0.0, 1.0);
    v15 = v14;
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v16 = sub_1C4F00978();
    sub_1C442B738(v16, qword_1EDDFECB8);
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CF8();
    if (os_log_type_enabled(v17, v18))
    {
      sub_1C441024C();
      v19 = swift_slowAlloc();
      *v19 = 134218240;
      *(v19 + 4) = v13;
      *(v19 + 12) = 2048;
      *(v19 + 14) = v15;
      _os_log_impl(&dword_1C43F8000, v17, v18, "Probability = %f, Draw = %f", v19, 0x16u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    return v15 < v13;
  }
}

void sub_1C49A0950()
{
  sub_1C43FE96C();
  v212 = v3;
  v216 = v1;
  v4 = v0;
  v207 = v5;
  v202 = v6;
  v203 = v7;
  v8 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1C43FBFDC();
  v170 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  v172 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  v174 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  v176 = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  v178 = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF38();
  v180 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  v182 = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  v184 = v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  v186 = v25;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  v188 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  v191 = v29;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD230();
  v199 = v31;
  sub_1C43FBE44();
  sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v192 = v33;
  v193 = v32;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBFDC();
  v169 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  v171 = v36;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  v173 = v38;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  v175 = v40;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBF38();
  v177 = v42;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  v179 = v44;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  v181 = v46;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  v183 = v48;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBF38();
  v185 = v50;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBF38();
  v187 = v52;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBF38();
  v190 = v54;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FD230();
  v189 = v56;
  sub_1C43FBE44();
  v197 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v195 = v57;
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBFDC();
  v198 = v59;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FD230();
  v196 = v61;
  sub_1C43FBE44();
  v62 = type metadata accessor for BehaviorSampleGenerator();
  v63 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_behaviorDatabase);
  v64 = OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_eventSource;
  sub_1C442E860(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_eventSource, &v227);
  v65 = *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_kvStore);
  v66 = v228;
  v67 = v229;
  sub_1C4418280(&v227, v228);
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FBCC4();
  v70 = sub_1C442E094(v69);
  v71(v70);
  v223[0] = v63;
  v72 = type metadata accessor for BehaviorDatabase(0);
  swift_retain_n();

  v201 = v62;
  sub_1C4632EB0(v223, v2, v65, v62, v72, v66, &off_1F43E5250, v67);
  sub_1C440962C(&v227);
  v237 = type metadata accessor for BehaviorFeaturizer();
  sub_1C442E860(v4 + v64, &v227);
  v73 = sub_1C45EDEF8();
  v209 = v4;
  v204 = v64;
  v194 = v63;
  sub_1C45EA370(v4 + v64, v223);
  v74 = v228;
  v210 = v229;
  sub_1C4418280(&v227, v228);
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v75);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  (*(v76 + 16))(v66);
  v77 = v224;
  v78 = v225;
  sub_1C4418280(v223, v224);
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v79);
  sub_1C43FBCC4();
  v82 = v81 - v80;
  (*(v83 + 16))(v81 - v80);
  v231[0] = v73;
  v84 = type metadata accessor for BehaviorDatabaseEventTracker();
  sub_1C460784C(v66, v231, v82, v65, v237, v74, v77, v84, v210, v78, &off_1F43E2390);
  sub_1C440962C(v223);
  sub_1C440962C(&v227);
  v85 = objc_autoreleasePoolPush();
  sub_1C460299C(v212);
  if (v216)
  {
    objc_autoreleasePoolPop(v85);
  }

  else
  {
    sub_1C46320C0(v212);
    objc_autoreleasePoolPop(v85);
    sub_1C442E860(v209 + v204, &v227);
    v86 = *(v195 + 16);
    v86(v196, v212, v197);
    v86(v198, v207, v197);
    v87 = type metadata accessor for CachedContextProvider(0);
    sub_1C43FD23C();
    swift_allocObject();
    v88 = sub_1C466C344(&v227, v196, v198);
    swift_retain_n();

    v205 = sub_1C496CD80(v194, v88, v65);

    v213 = sub_1C45EDEF8();
    v224 = v87;
    v225 = &off_1F43E5FE8;
    v223[0] = v88;

    sub_1C45EA370(v223, &v227);
    sub_1C440962C(v223);
    v89 = v228;
    v90 = v229;
    sub_1C4418280(&v227, v228);
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v91);
    sub_1C43FBCC4();
    v93 = sub_1C4408C64(v92);
    v94(v93);
    v208 = v88;
    v223[0] = v88;
    v231[0] = v213;
    v214 = sub_1C460784C(v223, v231, v197, v65, v237, v87, v89, v84, &off_1F43E5FE8, v90, &off_1F43E2390);
    sub_1C440962C(&v227);
    if ([objc_opt_self() isBetaBuild])
    {
      v95 = 1;
    }

    else
    {
      v95 = [objc_opt_self() isInternalDevice];
    }

    v211 = swift_allocObject();
    *(v211 + 16) = v95;
    v96 = sub_1C45FB538();
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v103 = (v209 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_postProcessor);
    v104 = *(v209 + OBJC_IVAR____TtC24IntelligencePlatformCore32JointHUDataCollectionTaskManager_postProcessor);
    *v103 = v96;
    v103[1] = v97;
    v103[2] = v99;
    v103[3] = v101;
    sub_1C49A26FC(v96);
    sub_1C45942C8(v104);
    v232 = v87;
    v233 = &off_1F43E5FE8;
    v231[0] = v208;
    v229 = &off_1F43E5240;
    v230 = &off_1F43E5228;
    v228 = v201;
    *&v227 = v205;
    v225 = &off_1F43E2F70;
    v226 = &off_1F43E2F40;
    v224 = v237;
    v223[0] = v214;
    if (v96)
    {
      *(&v218 + 1) = &type metadata for BehaviorEventPostProcessor;
      v219 = &off_1F43E2A10;
      v105 = swift_allocObject();
      *&v217 = v105;
      v105[2] = v96;
      v105[3] = v98;
      v105[4] = v100;
      v105[5] = v102;
      sub_1C441D670(&v217, &v220);
      v106 = v199;
    }

    else
    {
      v219 = 0;
      v217 = 0u;
      v218 = 0u;
      (*(v192 + 104))(v189, *MEMORY[0x1E69A9450], v193);
      sub_1C45D29E0(v189, 7040629, 0xE300000000000000, v234);
      v107 = v235;
      v108 = v236;
      *(&v221 + 1) = &type metadata for SimpleBehaviorReplacer;
      v222 = &off_1F43E2B20;
      v109 = swift_allocObject();
      *&v220 = v109;
      v110 = v234[1];
      *(v109 + 16) = v234[0];
      *(v109 + 32) = v110;
      *(v109 + 48) = v107;
      *(v109 + 56) = v108;
      v106 = v199;
      if (*(&v218 + 1))
      {
        sub_1C4420C3C(&v217, &qword_1EC0BA148, &qword_1C4F3F500);
      }
    }

    sub_1C456902C(&qword_1EC0C08F8, &qword_1C4F3F508);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_1C4F17D00;
    sub_1C4419B8C();
    v215 = v112;
    sub_1C4430E88(v209 + v112, v106, v113);
    v114 = type metadata accessor for BehaviorCountLimiter();
    swift_allocObject();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v115 = sub_1C45D8548(v106, v202, v203, 200);
    *(v111 + 56) = v114;
    *(v111 + 64) = &off_1F43E2360;
    *(v111 + 32) = v115;
    sub_1C4419B8C();
    sub_1C4430E88(v209 + v215, v191, v116);
    v200 = *(v192 + 104);
    v200(v190, *MEMORY[0x1E69A93D0], v193);
    type metadata accessor for BehaviorTypeCountLimiter(0);
    sub_1C43FD23C();
    v206 = v117;
    swift_allocObject();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    *(v111 + 72) = sub_1C45D8BA0(v191, v202, v203, v190, 2);
    *(v111 + 96) = v206;
    *(v111 + 104) = &off_1F43E2348;
    sub_1C4419B8C();
    sub_1C4430E88(v118 + v215, v188, v119);
    v200(v187, *MEMORY[0x1E69A9430], v193);
    sub_1C440E4BC();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    *(v111 + 112) = sub_1C45D8BA0(v188, v202, v203, v187, 5);
    *(v111 + 136) = v206;
    *(v111 + 144) = &off_1F43E2348;
    sub_1C4419B8C();
    sub_1C4430E88(v209 + v215, v186, v120);
    v200(v185, *MEMORY[0x1E69A93E0], v193);
    sub_1C440E4BC();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440A87C();
    *(v111 + 152) = sub_1C45D8BA0(v121, v122, v123, v185, 20);
    *(v111 + 176) = v206;
    *(v111 + 184) = &off_1F43E2348;
    sub_1C4419B8C();
    sub_1C4430E88(v124 + v215, v184, v125);
    v200(v183, *MEMORY[0x1E69A9410], v193);
    sub_1C440E4BC();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440A87C();
    *(v111 + 192) = sub_1C45D8BA0(v126, v127, v128, v183, 10);
    *(v111 + 216) = v206;
    *(v111 + 224) = &off_1F43E2348;
    sub_1C4419B8C();
    sub_1C4430E88(v209 + v215, v182, v129);
    v200(v181, *MEMORY[0x1E69A9428], v193);
    swift_allocObject();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440A87C();
    *(v111 + 232) = sub_1C45D8BA0(v130, v131, v132, v181, 10);
    *(v111 + 256) = v206;
    *(v111 + 264) = &off_1F43E2348;
    sub_1C4419B8C();
    sub_1C4430E88(v209 + v215, v180, v133);
    v200(v179, *MEMORY[0x1E69A9438], v193);
    swift_allocObject();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v134 = sub_1C45D8BA0(v180, v202, v203, v179, 10);
    *(v111 + 296) = v206;
    *(v111 + 304) = &off_1F43E2348;
    *(v111 + 272) = v134;
    sub_1C4419B8C();
    sub_1C4430E88(v209 + v215, v178, v135);
    v200(v177, *MEMORY[0x1E69A9470], v193);
    swift_allocObject();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440A87C();
    v139 = sub_1C45D8BA0(v136, v137, v138, v177, 10);
    *(v111 + 336) = v206;
    *(v111 + 344) = &off_1F43E2348;
    *(v111 + 312) = v139;
    sub_1C4419B8C();
    sub_1C4430E88(v209 + v215, v176, v140);
    v200(v175, *MEMORY[0x1E69A9400], v193);
    sub_1C440E4BC();
    sub_1C43FC5CC();
    v141 = sub_1C45D8BA0(v176, v202, 0, v175, 10);
    *(v111 + 376) = v206;
    *(v111 + 384) = &off_1F43E2348;
    *(v111 + 352) = v141;
    sub_1C4419B8C();
    v142 = sub_1C441CB70();
    sub_1C4430E88(v142, v174, v143);
    v200(v173, *MEMORY[0x1E69A93D8], v193);
    sub_1C440E4BC();
    sub_1C43FC5CC();
    v144 = sub_1C45D8BA0(v174, v202, 0, v173, 5);
    *(v111 + 416) = v206;
    *(v111 + 424) = &off_1F43E2348;
    *(v111 + 392) = v144;
    sub_1C4419B8C();
    v145 = sub_1C441CB70();
    sub_1C4430E88(v145, v172, v146);
    v200(v171, *MEMORY[0x1E69A9448], v193);
    sub_1C440E4BC();
    sub_1C43FC5CC();
    v147 = sub_1C4405DF0();
    *(v111 + 456) = v206;
    *(v111 + 464) = &off_1F43E2348;
    *(v111 + 432) = v147;
    sub_1C4419B8C();
    v148 = sub_1C441CB70();
    sub_1C4430E88(v148, v170, v149);
    v200(v169, *MEMORY[0x1E69A93F0], v193);
    sub_1C440E4BC();
    sub_1C43FC5CC();
    v150 = sub_1C4405DF0();
    *(v111 + 496) = v206;
    *(v111 + 504) = &off_1F43E2348;
    *(v111 + 472) = v150;

    sub_1C4418280(v231, v232);
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v151);
    sub_1C43FBCC4();
    v154 = (v153 - v152);
    (*(v155 + 16))(v153 - v152);
    sub_1C4418280(&v227, v228);
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v156);
    sub_1C43FBCC4();
    v158 = sub_1C442E094(v157);
    v159(v158);
    sub_1C4418280(v223, v224);
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v160);
    sub_1C43FBCC4();
    v162 = sub_1C4408C64(v161);
    v163(v162);
    v164 = *v154;
    v165 = *v170;
    v166 = *(v111 + 152);
    type metadata accessor for BehaviorsFeatureProvider();
    v167 = swift_allocObject();
    v168 = v221;
    *(v167 + 152) = v220;
    *(v167 + 40) = v87;
    *(v167 + 48) = &off_1F43E5FE8;
    *(v167 + 16) = v164;
    *(v167 + 80) = v201;
    *(v167 + 88) = &off_1F43E5240;
    *(v167 + 56) = v165;
    *(v167 + 128) = v237;
    *(v167 + 136) = &off_1F43E2F70;
    *(v167 + 144) = &off_1F43E2F40;
    *(v167 + 96) = &off_1F43E5228;
    *(v167 + 104) = v166;
    *(v167 + 168) = v168;
    *(v167 + 184) = v222;
    *(v167 + 192) = v111;
    *(v167 + 200) = 100;
    *(v167 + 208) = sub_1C49A26F4;
    *(v167 + 216) = v211;
    sub_1C440962C(v223);
    sub_1C440962C(&v227);
    sub_1C440962C(v231);
  }

  sub_1C43FBC80();
}