void sub_1CF3ECA90(void *a1, char a2, _TtC18FileProviderDaemon8FSTester *a3, void *a4, uint64_t a5)
{
  v119 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v118 = &v113 - v11;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v12 = *(v124 - 1);
  MEMORY[0x1EEE9AC00](v124);
  v121 = (&v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v120 = &v113 - v15;
  v16 = type metadata accessor for SnapshotCounters(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 3000;
  if ((a2 & 1) == 0)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v151 = v19;
  v126 = a4;
  v154 = a5;
  v20 = sub_1CF3E9B60(a4, a5, a2);
  if (v5)
  {

    v20 = &unk_1F4BEEF30;
  }

  v28 = *v20->tree;
  v125 = a3;
  v29 = v118;
  if (!v28)
  {
    v20, v21, v22, v23, v24, v25, v26, v27;
    goto LABEL_37;
  }

  v122 = (v12 + 48);
  v123 = v12 + 56;
  v114 = v18;
  v115 = "should fetch updated item ";
  v113 = v20;
  anon_8 = v20[1]._anon_8;
  do
  {
    v38 = *(anon_8 - 1);
    v39 = *anon_8;
    sub_1CF3E65B0(v38, *anon_8, v126, v154, v29);
    if ((*v122)(v29, 1, v124) == 1)
    {
      sub_1CEFCCC44(v29, &qword_1EC4C1B40, &unk_1CF9FCB70);
      goto LABEL_8;
    }

    v40 = v120;
    sub_1CEFE55D0(v29, v120, &unk_1EC4BE360, &qword_1CF9FE650);
    v149 = v38;
    v150 = v39;
    v147 = v126;
    v148 = v154;
    if (v151 > 0)
    {
      v117 = v151;
      v41 = v121;
      sub_1CEFCCBDC(v40, v121, &unk_1EC4BE360, &qword_1CF9FE650);
      v42 = *v41;
      v43 = *(v41 + 8);
      if (*(v41 + 8))
      {
        v44 = v125;
        if (v43 == 1)
        {
          if (v150 != 1 || v42 != v149)
          {
LABEL_27:
            v48 = v124;
LABEL_31:
            if (*(v41 + v48[12]) != 1)
            {
              v74 = v41 + v48[14];
              *v74 = 0u;
              *(v74 + 16) = 0u;
              *(v74 + 32) = 1;
              v75 = v41 + v48[15];
              *v75 = 0;
              *(v75 + 8) = 0;
              *(v75 + 16) = 1;
            }

            v76 = v119;
            v77 = v119[3];
            v116 = v119[4];
            __swift_project_boxed_opaque_existential_1(v119, v77);
            v78 = sub_1CF814758();
            v80 = v79;
            sub_1CF4FB2BC(v78, v79, v77, v116);
            v80, v81, v82, v83, v84, v85, v86, v87;
            v151 = v117 - 1;
            v88 = v76[3];
            v89 = v76[4];
            v90 = __swift_project_boxed_opaque_existential_1(v76, v88);
            MEMORY[0x1EEE9AC00](v90);
            v45 = v121;
            *(&v113 - 6) = v125;
            *(&v113 - 5) = v45;
            *(&v113 - 4) = &v147;
            *(&v113 - 3) = &v149;
            *(&v113 - 2) = 1;
            *(&v113 - 1) = &v151;
            sub_1CF4FB38C(32, 0xE100000000000000, sub_1CF483F1C, (&v113 - 8), v88, MEMORY[0x1E69E7CA8] + 8, v89);
            sub_1CEFCCC44(v120, &unk_1EC4BE360, &qword_1CF9FE650);
            goto LABEL_34;
          }
        }

        else if (v42)
        {
          if (v150 != 2 || v149 != 1)
          {
            goto LABEL_27;
          }
        }

        else if (v150 != 2 || v149)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v44 = v125;
        if (v150 || v42 != v149)
        {
          goto LABEL_27;
        }
      }

      sub_1CF3E7180(v42, v43, v126, v154, v129);
      v143 = v129[12];
      v144 = v129[13];
      v145 = v129[14];
      v146 = v130;
      v139 = v129[8];
      v140 = v129[9];
      v141 = v129[10];
      v142 = v129[11];
      v135 = v129[4];
      v136 = v129[5];
      v137 = v129[6];
      v138 = v129[7];
      v131 = v129[0];
      v132 = v129[1];
      v133 = v129[2];
      v134 = v129[3];
      v49 = v121;
      v50 = v121 + v124[13];
      v51 = *(v50 + 13);
      v127[12] = *(v50 + 12);
      v127[13] = v51;
      v127[14] = *(v50 + 14);
      v128 = *(v50 + 30);
      v52 = *(v50 + 9);
      v127[8] = *(v50 + 8);
      v127[9] = v52;
      v53 = *(v50 + 11);
      v127[10] = *(v50 + 10);
      v127[11] = v53;
      v54 = *(v50 + 5);
      v127[4] = *(v50 + 4);
      v127[5] = v54;
      v55 = *(v50 + 7);
      v127[6] = *(v50 + 6);
      v127[7] = v55;
      v56 = *(v50 + 1);
      v127[0] = *v50;
      v127[1] = v56;
      v57 = *(v50 + 3);
      v127[2] = *(v50 + 2);
      v127[3] = v57;
      sub_1CEFCCC44(v127, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v58 = v144;
      *(v50 + 12) = v143;
      *(v50 + 13) = v58;
      *(v50 + 14) = v145;
      *(v50 + 30) = v146;
      v59 = v140;
      *(v50 + 8) = v139;
      *(v50 + 9) = v59;
      v60 = v142;
      *(v50 + 10) = v141;
      *(v50 + 11) = v60;
      v61 = v136;
      *(v50 + 4) = v135;
      *(v50 + 5) = v61;
      v62 = v138;
      *(v50 + 6) = v137;
      *(v50 + 7) = v62;
      v63 = v132;
      *v50 = v131;
      *(v50 + 1) = v63;
      v64 = v134;
      *(v50 + 2) = v133;
      *(v50 + 3) = v64;
      v65 = *v49;
      v66 = *(v49 + 8);
      if (v44[1].super.isa)
      {
        v67 = sub_1CF3E571C(v65, v66, v126, v154);
        v48 = v124;
        v41 = v121;
        v68 = v121 + v124[15];
        *v68 = v67;
        *(v68 + 1) = v69;
        v68[16] = v70 & 1;
      }

      else
      {
        sub_1CF3E4858(v65, v66, v126, v154, v152);
        v71 = v152[1];
        v72 = v153;
        v48 = v124;
        v41 = v121;
        v73 = v121 + v124[14];
        *v73 = v152[0];
        *(v73 + 1) = v71;
        v73[32] = v72;
      }

      goto LABEL_31;
    }

    v45 = v40;
    v46 = v119[3];
    v47 = v119[4];
    __swift_project_boxed_opaque_existential_1(v119, v46);
    sub_1CF4FB2BC(0xD00000000000001BLL, v115 | 0x8000000000000000, v46, v47);
LABEL_34:
    sub_1CEFCCC44(v45, &unk_1EC4BE360, &qword_1CF9FE650);
    v29 = v118;
LABEL_8:
    anon_8 += 16;
    --v28;
  }

  while (v28);
  v113, v31, v32, v33, v34, v35, v36, v37;
  v18 = v114;
LABEL_37:
  v91 = v119[3];
  v92 = v119[4];
  __swift_project_boxed_opaque_existential_1(v119, v91);
  strcpy(v129, "+ counters: ");
  BYTE13(v129[0]) = 0;
  HIWORD(v129[0]) = -5120;
  v93 = qword_1EDEBBA48;
  v94 = v125;
  swift_beginAccess();
  sub_1CEFDA214(v94 + v93, v18, type metadata accessor for SnapshotCounters);
  v95 = sub_1CF6866E8();
  v97 = v96;
  MEMORY[0x1D3868CC0](v95);
  v97, v98, v99, v100, v101, v102, v103, v104;
  sub_1CEFD5278(v18, type metadata accessor for SnapshotCounters);
  v105 = *(&v129[0] + 1);
  sub_1CF4FB2BC(*&v129[0], *(&v129[0] + 1), v91, v92);
  v105, v106, v107, v108, v109, v110, v111, v112;
}

uint64_t sub_1CF3ED2B8(uint64_t a1, _BYTE *a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  a3(&v5, a1);
  *a2 = v5;
  return 1;
}

uint64_t sub_1CF3ED334(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  a3(&v6, a1);
  v4 = v6;
  *(a2 + 4) = BYTE4(v6);
  *a2 = v4;
  *(a2 + 5) = 0;
  return 1;
}

uint64_t sub_1CF3ED3BC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  a3(&v5, a1);
  *a2 = v5;
  *(a2 + 8) = 0;
  return 1;
}

uint64_t sub_1CF3ED43C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  a3(&v7, a1);
  v4 = v8;
  v5 = v9;
  *a2 = v7;
  *(a2 + 12) = v5;
  *(a2 + 8) = v4;
  return 1;
}

uint64_t sub_1CF3ED4C8(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t))
{
  a3(&v14, a1);
  v4 = v15;
  v5 = *(a2 + 8);
  *a2 = v14;
  *(a2 + 16) = v4;
  v5, v6, v7, v8, v9, v10, v11, v12;
  return 1;
}

uint64_t sub_1CF3ED554(uint64_t a1, _BYTE *a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  a3(&v5, a1);
  *a2 = 0;
  return 1;
}

uint64_t sub_1CF3ED5F8(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xE500000000000000;
  v4 = 0x6574617473;
  v5 = 0xD000000000000011;
  v6 = 0x80000001CFA2C070;
  if (a1 != 6)
  {
    v5 = 0xD00000000000001ALL;
    v6 = 0x80000001CFA2C090;
  }

  v7 = 0xEA0000000000726FLL;
  v8 = 0x7272655F7473616CLL;
  if (a1 != 4)
  {
    v8 = 0x797469726F697270;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEF657461645F7972;
  v10 = 0x7465725F7478656ELL;
  if (a1 != 2)
  {
    v10 = 0x7272655F7473616CLL;
    v9 = 0xEF657461645F726FLL;
  }

  if (a1)
  {
    v4 = 0x6F635F7972746572;
    v3 = 0xEB00000000746E75;
  }

  if (a1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (a1 <= 3u)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  MEMORY[0x1D3868CC0](v11, v12);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](1059077408, 0xE400000000000000);
  return a2;
}

void *sub_1CF3ED780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  *(v3 + 48) = dispatch_group_create();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CF9FA450;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
  *(v8 + 32) = sub_1CF387EDC();
  *(v3 + 80) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1CF9FC3C0;
  *(v9 + 32) = sub_1CF387EDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
  *(v9 + 33) = sub_1CF387EDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD30, &unk_1CF9FB480);
  *(v9 + 34) = sub_1CF387EDC();
  *(v3 + 88) = v9;
  v10 = (v5 & 2) == 0;
  *(v3 + 40) = v10;
  v11 = *(v3 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05E0, &qword_1CFA059A8);
  v12 = swift_allocObject();
  *(v12 + 104) = 0;
  *(v12 + 16) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  strcpy((v12 + 24), "FS_item_jobs");
  *(v12 + 37) = 0;
  *(v12 + 38) = -5120;

  v13 = v11;
  *(v12 + 40) = sub_1CF207018(0x696C756465686373uLL, 0xEB000000005F676ELL);
  *(v12 + 48) = v14;
  *(v12 + 64) = v10;

  MEMORY[0x1D3868CC0](0x6F6A2D6D65746923, 0xEB000000002D7362);
  MEMORY[0x1D3868CC0](21318, 0xE200000000000000);
  *(v12 + 88) = a1;
  *(v12 + 96) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0628, &qword_1CFA05A38);
  swift_allocObject();
  v15 = sub_1CF479160(a1, a2, 0, v13, v5, sub_1CF207C98);

  *(v12 + 56) = v15;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = *(v15 + 136);
  v18 = *(v15 + 144);
  *(v15 + 136) = sub_1CF482DFC;
  *(v15 + 144) = v16;

  sub_1CEFF7124(v17, v18);

  v4[2] = v12;
  v19 = v4[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05E8, &qword_1CFA059B0);
  v20 = swift_allocObject();
  *(v20 + 104) = 0;
  *(v20 + 72) = 0;
  *(v20 + 80) = 0;
  *(v20 + 16) = 1;
  strcpy((v20 + 24), "FP_item_jobs");
  *(v20 + 37) = 0;
  *(v20 + 38) = -5120;

  v21 = v19;
  *(v20 + 40) = sub_1CF207018(0x696C756465686373uLL, 0xEB000000005F676ELL);
  *(v20 + 48) = v22;
  *(v20 + 64) = v10;

  MEMORY[0x1D3868CC0](0x6F6A2D6D65746923, 0xEB000000002D7362);
  MEMORY[0x1D3868CC0](20550, 0xE200000000000000);
  *(v20 + 88) = a1;
  *(v20 + 96) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0630, &unk_1CFA05A40);
  swift_allocObject();
  v23 = sub_1CF479160(a1, a2, 1, v21, v5, sub_1CF207884);

  *(v20 + 56) = v23;
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = *(v23 + 136);
  v26 = *(v23 + 144);
  *(v23 + 136) = sub_1CF482DFC;
  *(v23 + 144) = v24;

  sub_1CEFF7124(v25, v26);

  v4[3] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C05F0, &qword_1CFA059B8);
  swift_allocObject();
  v4[4] = sub_1CF39DEA4(a1, a2, v5 & 1);
  v4[7] = sub_1CF207454(0, 0xE000000000000000);
  v4[8] = v27;
  v28 = v4[2];
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = *(v28 + 72);
  v31 = *(v28 + 80);
  *(v28 + 72) = sub_1CF482E40;
  *(v28 + 80) = v29;
  swift_retain_n();

  sub_1CEFF7124(v30, v31);

  v32 = v4[3];
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = *(v32 + 72);
  v35 = *(v32 + 80);
  *(v32 + 72) = sub_1CF482E48;
  *(v32 + 80) = v33;

  sub_1CEFF7124(v34, v35);

  v36 = v4[4];

  v37 = swift_allocObject();
  swift_weakInit();

  v38 = *(v36 + 16);
  v39 = *(v36 + 24);
  *(v36 + 16) = sub_1CF482E40;
  *(v36 + 24) = v37;

  sub_1CEFF7124(v38, v39);

  return v4;
}

uint64_t sub_1CF3EDDA4(uint64_t a1)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  Strong = swift_weakLoadStrong();

  return Strong;
}

void sub_1CF3EDE10(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      sub_1CF033A74();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1CF3EDE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t), uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v25 = v8;
  v26 = a3;
  v27 = a4;
  v11 = a8(a7, &v24, a1, a2);
  if (!v9)
  {
    v12 = v11;
    if ([v11 next])
    {
      do
      {
        v13 = objc_autoreleasePoolPush();
        v14 = sub_1CF1CBD20();
        sub_1CF24144C(v14, v12, 0);
        v16 = v15;
        v14, v17, v18, v19, v20, v21, v22, v23;
        a5(v16);

        objc_autoreleasePoolPop(v13);
      }

      while (([v12 next] & 1) != 0);
    }
  }
}

uint64_t sub_1CF3EDFB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1CF9E7948();
  0xE000000000000000, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](*(a2 + 56), *(a2 + 64));
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA45D10);
  v13 = a3(a1);
  v15 = v14;
  MEMORY[0x1D3868CC0](v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
  return 0x205443454C4553;
}

void sub_1CF3EE07C(uint64_t a1, id a2, uint64_t a3)
{
  [a2 assertOnQueue];
  if (a1 < 0)
  {
    v6 = (a1 & 0x7FFFFFFFFFFFFFFFLL) + 56;
  }

  else
  {
    v6 = a1 + 56;
  }

  swift_beginAccess();
  sub_1CEFCCBDC(v6, v24, &unk_1EC4C1BE0, &unk_1CF9FD400);
  if (!v25)
  {
    sub_1CEFCCC44(v24, &unk_1EC4C1BE0, &unk_1CF9FD400);
LABEL_33:
    sub_1CF50F200("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLJobRegistry.swift", 133, 2, 194);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
  v7 = swift_dynamicCast();
  if ((v7 & 1) == 0)
  {
    goto LABEL_33;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v8 = *(a1 + 112);
    if (v8 != 3 && (v8 != 4 || *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL | *(a1 + 104)))
    {
LABEL_17:
      v9 = a1;
      goto LABEL_18;
    }

LABEL_14:
    if (*(v3 + 40) == 1)
    {
      MEMORY[0x1EEE9AC00](v7);
      v21 = v23;
      sub_1CF7D5920(sub_1CF480E94, v20, a2);
      return;
    }

    if (a1 < 0)
    {
      v9 = a1 & 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v9 = a1 & 0x7FFFFFFFFFFFFFFFLL;
  v10 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x70);
  if (v10 == 3 || v10 == 4 && !(*((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x60) & 0xFFFFFFFFFFFFFFFELL | *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x68)))
  {
    goto LABEL_14;
  }

LABEL_18:
  if (*(v9 + 112) == 1)
  {
    v11 = *(v9 + 96);
    if (v11)
    {
      v12 = *(v9 + 104);
      v13 = *(*v11 + 88);

      v15 = v13(v14);
      if (v17 == 3 && v15 == 1 && v16 == 0)
      {
        MEMORY[0x1EEE9AC00](v15);
        v21 = a1;
        v22 = v23;
        sub_1CF7D5920(sub_1CF480E8C, v20, a2);
        sub_1CF03D7A8(v11, v12, 1u);
        return;
      }

      sub_1CF1DBCF0(v15, v16, v17);
      sub_1CF03D7A8(v11, v12, 1u);
    }
  }

  MEMORY[0x1EEE9AC00](v7);
  v21 = a1;
  v22 = v23;
  sub_1CF7D5920(sub_1CF480E84, v20, a2);
}

uint64_t sub_1CF3EE378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52[0] = 0;
  v52[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v54 = 0;
  v55 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA45C50);
  v5 = a2 & 0x7FFFFFFFFFFFFFFFLL;
  v7 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x60);
  v6 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x68);
  v8 = *(v5 + 112);
  sub_1CF03C530(v7, v6, *(v5 + 112));
  v9 = sub_1CF065BDC(v7, v6, v8, 0x696C756465686373, 0xEB000000005F676ELL);
  v11 = v10;
  sub_1CF03D7A8(v7, v6, v8);
  MEMORY[0x1D3868CC0](v9, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA45C70);
  v19 = *(v5 + 128);
  v53 = MEMORY[0x1E69E6530];
  v52[0] = v19;
  v20 = sub_1CEFF8EA0(v52);
  v22 = v21;
  sub_1CEFCCC44(v52, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v22 && (MEMORY[0x1D3868CC0](v20, v22), v22, v23, v24, v25, v26, v27, v28, v29, MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA45CB0), v30 = *(v5 + 120), v53 = MEMORY[0x1E69E6810], v52[0] = v30, v31 = sub_1CEFF8EA0(v52), v33 = v32, sub_1CEFCCC44(v52, &unk_1EC4BEC50, &qword_1CF9FB4B0), v33))
  {
    MEMORY[0x1D3868CC0](v31, v33);
    v33, v34, v35, v36, v37, v38, v39, v40;
    MEMORY[0x1D3868CC0](0x4552454857200A29, 0xEE00203D20646920);
    v41 = sub_1CF1DF1A8(a3, 0);
    v43 = v42;
    MEMORY[0x1D3868CC0](v41);
    v43, v44, v45, v46, v47, v48, v49, v50;
    return v54;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

unint64_t sub_1CF3EE614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  v12 = a2 & 0x7FFFFFFFFFFFFFFFLL;
  v14 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x60);
  v13 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x68);
  v15 = *(v12 + 112);
  sub_1CF03C530(v14, v13, *(v12 + 112));
  v16 = sub_1CF065BDC(v14, v13, v15, 0x696C756465686373, 0xEB000000005F676ELL);
  v18 = v17;
  sub_1CF03D7A8(v14, v13, v15);
  MEMORY[0x1D3868CC0](v16, v18);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  v26 = sub_1CF1DF1A8(a3, 0);
  v28 = v27;
  MEMORY[0x1D3868CC0](v26);
  v28, v29, v30, v31, v32, v33, v34, v35;
  return 0xD000000000000013;
}

void sub_1CF3EE760(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *(Strong + 136);

  Strong = objc_sync_enter(v4);
  if (Strong)
  {
LABEL_10:
    MEMORY[0x1EEE9AC00](Strong);
    v54 = v4;
    goto LABEL_13;
  }

  swift_beginAccess();
  v11 = *v4->tree;

  v12 = objc_sync_exit(v4);
  if (v12)
  {
    MEMORY[0x1EEE9AC00](v12);
    v54 = v4;
    goto LABEL_15;
  }

  sub_1CF383F1C(v11, sub_1CF066914, 0);
  v4 = v13;
  v11, v14, v15, v16, v17, v18, v19, v20;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v21 = *(Strong + 144);

  v22 = objc_sync_enter(v21);
  if (v22)
  {
    MEMORY[0x1EEE9AC00](v22);
    v54 = v21;
LABEL_13:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v53, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  swift_beginAccess();
  v23 = *v21->tree;

  v24 = objc_sync_exit(v21);
  if (v24)
  {
    MEMORY[0x1EEE9AC00](v24);
    v54 = v21;
LABEL_15:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v53, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  sub_1CF383BB4(v23, sub_1CF066914, 0);
  v26 = v25;
  v23, v27, v28, v29, v30, v31, v32, v33;
  v55 = v4;
  sub_1CF1E8CF8(v26);
  v34 = sub_1CF8E44FC(v4);
  v4, v35, v36, v37, v38, v39, v40, v41;
  MEMORY[0x1EEE9AC00](v42);
  LOBYTE(v54) = a1 & 1;
  MEMORY[0x1EEE9AC00](v43);
  v52[2] = v34;
  v52[3] = v5;
  v52[4] = a4;
  sub_1CF3EDE94(a2, a3, sub_1CF4842AC, v44, sub_1CF4842B4, v52, sub_1CF480EB4, sub_1CF7D5474);
  v34, v45, v46, v47, v48, v49, v50, v51;
}

uint64_t sub_1CF3EEB08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 < 0)
  {
    v7 = (a1 & 0x7FFFFFFFFFFFFFFFLL) + 56;
  }

  else
  {
    v7 = a1 + 56;
  }

  swift_beginAccess();
  sub_1CEFCCBDC(v7, &v80, &unk_1EC4C1BE0, &unk_1CF9FD400);
  v8 = v82;
  if (v82)
  {
    v9 = v83;
    __swift_project_boxed_opaque_existential_1(&v80, v82);
    v10 = (*(v9 + 16))(v8, v9);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1(&v80);
    sub_1CEFDB148(v10, v12, a2);
    v12, v13, v14, v15, v16, v17, v18, v19;
  }

  else
  {
    sub_1CEFCCC44(&v80, &unk_1EC4C1BE0, &unk_1CF9FD400);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = sub_1CF3E3388(a1);

    if (v21 < 0)
    {
      v50 = a4[3];
      v51 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v50);
      v80 = 0x3A70669286E27366;
      v81 = 0xA800000000000000;
      v53 = sub_1CF902D78(v52);
      v55 = v54;
      MEMORY[0x1D3868CC0](v53);
      v55, v56, v57, v58, v59, v60, v61, v62;
      v63 = sub_1CF9E7988();
      v65 = v64;
      MEMORY[0x1D3868CC0](v63);
      v65, v66, v67, v68, v69, v70, v71, v72;
      v45 = v80;
      v46 = v81;
      v47 = v81;
      v48 = v50;
      v49 = v51;
    }

    else
    {
      v22 = a4[3];
      v23 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v22);
      v80 = 0x3A73669286E27066;
      v81 = 0xA800000000000000;
      v25 = sub_1CF902D78(v24);
      v27 = v26;
      MEMORY[0x1D3868CC0](v25);
      v27, v28, v29, v30, v31, v32, v33, v34;
      v35 = sub_1CF9E7988();
      v37 = v36;
      MEMORY[0x1D3868CC0](v35);
      v37, v38, v39, v40, v41, v42, v43, v44;
      v45 = v80;
      v46 = v81;
      v47 = v81;
      v48 = v22;
      v49 = v23;
    }

    sub_1CF4FB2BC(v45, v47, v48, v49);

    v46, v73, v74, v75, v76, v77, v78, v79;
    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF3EED98(int a1, void *a2, int a3, void *a4, void **a5, uint64_t a6)
{
  v7 = v6;
  v11 = a3;
  LODWORD(v13) = a1;
  v45 = a2;
  v46 = a3;
  Strong = swift_weakLoadStrong();
  v15 = MEMORY[0x1E69E7CA8];
  if (v13)
  {
    if (Strong)
    {

      v25 = sub_1CF03B3A8(sub_1CF1C546C, sub_1CF1C5468);

      if (!v25)
      {
        v26 = a4[3];
        v27 = a4[4];
        __swift_project_boxed_opaque_existential_1(a4, v26);
        sub_1CF4FB2BC(0xD000000000000018, 0x80000001CFA46B30, v26, v27);
        v28 = a4[3];
        v29 = a4[4];
        __swift_project_boxed_opaque_existential_1(a4, v28);
        sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF484018, v7, v28, v15 + 8, v29);
      }

      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return;
  }

  v44 = v13;
  if (!Strong)
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = sub_1CF03B3A8(sub_1CF1C546C, sub_1CF1C5468);

  v43 = v11;
  if (!v16)
  {
    v17 = a4[3];
    v18 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v17);
    sub_1CF4FB2BC(0xD000000000000018, 0x80000001CFA46B30, v17, v18);
    v19 = a4[3];
    v20 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v19);
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF484070, v7, v19, v15 + 8, v20);
  }

  v21 = a4[3];
  v22 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v21);
  sub_1CF4FB2BC(0x72676B636162202BLL, 0xEC000000646E756FLL, v21, v22);
  v23 = a4[3];
  v13 = a4[4];
  v24 = __swift_project_boxed_opaque_existential_1(a4, v23);
  MEMORY[0x1EEE9AC00](v24);
  v39 = v7;
  v40 = &v45;
  v41 = a5;
  v42 = a6;
  sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF48408C, v38, v23, v15 + 8, v13);
  v11 = v43;
  LOBYTE(v13) = v44;
LABEL_9:
  if (v13)
  {
    v30 = sub_1CF4842D8;
  }

  else
  {
    v30 = sub_1CF484120;
  }

  sub_1CF39C304(a2, v11, a4, v30);

  v31 = a4[3];
  v32 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v31);
  sub_1CF4FB2BC(0xD000000000000012, 0x80000001CFA46B50, v31, v32);
  v33 = a4[3];
  v34 = a4[4];
  v35 = __swift_project_boxed_opaque_existential_1(a4, v33);
  MEMORY[0x1EEE9AC00](v35);
  v39 = v7;
  LOBYTE(v40) = v13 & 1;
  v41 = &v45;
  sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF484034, v38, v33, MEMORY[0x1E69E7CA8] + 8, v34);
  v36 = a4[3];
  v37 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v36);
  sub_1CF4FB2BC(0x6A206D657469202BLL, 0xEB0000000073626FLL, v36, v37);
  sub_1CF3AFFF4(a2, v11, a4);
}

void sub_1CF3EF318(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 136);

    MEMORY[0x1EEE9AC00](v4);
    sub_1CF052DA4(v3, sub_1CF4840D4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF3EF3C8(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 144);

    MEMORY[0x1EEE9AC00](v4);
    sub_1CF052DA4(v3, sub_1CF484320);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CF3EF478(void *a1, unsigned __int8 *a2, uint64_t a3, char a4, uint64_t a5)
{
  v80 = a5;
  v8 = sub_1CF9E6938();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_1CF9E7948();
  v84 = v81;
  v85 = v82;
  MEMORY[0x1D3868CC0](0x203D2065646973, 0xE700000000000000);
  v12 = *a2;
  v13 = MEMORY[0x1E69E6530];
  v83 = MEMORY[0x1E69E6530];
  v81 = v12;
  v14 = sub_1CEFF8EA0(&v81);
  v16 = v15;
  sub_1CEFCCC44(&v81, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v16)
  {
    MEMORY[0x1D3868CC0](v14, v16);
    v16, v17, v18, v19, v20, v21, v22, v23;
    MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA45CF0);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v25 = v24;
    sub_1CF9E6918();
    v26 = sub_1CF9E68C8();
    v28 = v27;
    v25, v27, v29, v30, v31, v32, v33, v34;
    (*(v9 + 8))(v11, v8);
    if (v28 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v35 = sub_1CF9E5B48();
      sub_1CEFE48D8(v26, v28);
      v36 = [a1 bindObjectParameter_];

      v37 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v39 = v38;

      MEMORY[0x1D3868CC0](v37, v39);
      v39, v40, v41, v42, v43, v44, v45, v46;
      MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xEC000000203D2065);
      v47 = qword_1CFA05BE8[a4];
      v83 = v13;
      v81 = v47;
      v48 = sub_1CEFF8EA0(&v81);
      v50 = v49;
      sub_1CEFCCC44(&v81, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      if (v50)
      {
        MEMORY[0x1D3868CC0](v48, v50);
        v50, v51, v52, v53, v54, v55, v56, v57;
        MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA44140);
        v81 = 0;
        v58 = sub_1CF9E7F98();
        v60 = v59;
        MEMORY[0x1D3868CC0](v58);
        v60, v61, v62, v63, v64, v65, v66, v67;
        MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA44210);
        v83 = v13;
        v81 = v80;
        v68 = sub_1CEFF8EA0(&v81);
        v70 = v69;
        sub_1CEFCCC44(&v81, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        if (v70)
        {
          MEMORY[0x1D3868CC0](v68, v70);
          v70, v71, v72, v73, v74, v75, v76, v77;
          return v84;
        }
      }
    }
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF3EF85C(void *a1, unsigned __int8 *a2, unint64_t a3, char a4, char a5, uint64_t a6)
{
  v67[0] = 0;
  v67[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v69 = 0;
  v70 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x203D2065646973, 0xE700000000000000);
  v12 = *a2;
  v13 = MEMORY[0x1E69E6530];
  v68 = MEMORY[0x1E69E6530];
  v67[0] = v12;
  v14 = sub_1CEFF8EA0(v67);
  v16 = v15;
  sub_1CEFCCC44(v67, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v16)
  {
    goto LABEL_11;
  }

  MEMORY[0x1D3868CC0](v14, v16);
  v16, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA45CF0);
  if (!a4)
  {
    goto LABEL_6;
  }

  if (a4 != 1)
  {
    a3 = (a3 != 0) << 63;
    goto LABEL_8;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_6:
    a3 = -a3;
  }

LABEL_8:
  v24 = [a1 bindLongParameter_];
  v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v27 = v26;

  MEMORY[0x1D3868CC0](v25, v27);
  v27, v28, v29, v30, v31, v32, v33, v34;
  MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xEC000000203D2065);
  v35 = qword_1CFA05BE8[a5];
  v68 = v13;
  v67[0] = v35;
  v36 = sub_1CEFF8EA0(v67);
  v38 = v37;
  sub_1CEFCCC44(v67, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v38)
  {
    MEMORY[0x1D3868CC0](v36, v38);
    v38, v39, v40, v41, v42, v43, v44, v45;
    MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA44140);
    v67[0] = 0;
    v46 = sub_1CF9E7F98();
    v48 = v47;
    MEMORY[0x1D3868CC0](v46);
    v48, v49, v50, v51, v52, v53, v54, v55;
    MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA44210);
    v68 = v13;
    v67[0] = a6;
    v56 = sub_1CEFF8EA0(v67);
    v58 = v57;
    sub_1CEFCCC44(v67, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    if (v58)
    {
      MEMORY[0x1D3868CC0](v56, v58);
      v58, v59, v60, v61, v62, v63, v64, v65;
      return v69;
    }
  }

LABEL_11:
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF3EFB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned int a6, uint64_t *a7)
{
  v84 = a5;
  v85 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDE8, &qword_1CFA054E8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v78 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDF0, &unk_1CFA054F0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v78 - v16;
  v86 = a1;
  v78 = a7;
  v79 = a4;
  if ((a1 & 0x8000000000000000) == 0)
  {
    sub_1CEFCCBDC(a2, &v78 - v16, &qword_1EC4BE710, &qword_1CF9FE5A8);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v20 = v83;
      if (!*(v86 + 112))
      {
        v21 = Strong;
        v22 = *(v86 + 96);
        v23 = *(v86 + 104);
        v24 = v22 & a3;

        v25 = v22;
        if ((v22 & a3) != 0)
        {
          while (1)
          {
            v37 = v24 & -v24;
            sub_1CF44058C(v37, v86, v17, v21, v84, v85);
            if (v20)
            {
              break;
            }

            if (v38)
            {
              v39 = -1;
              if ((v25 & v37) != 0)
              {
                v39 = ~v37;
              }

              v25 &= v39;
              v40 = v86;
              v41 = *(v86 + 96);
              v82 = *(v86 + 104);
              v83 = v41;
              *(v86 + 96) = v25;
              *(v40 + 104) = v23;
              v42 = *(v40 + 112);
              *(v40 + 112) = 0;
              sub_1CF03C530(v22, v23, 0);
              sub_1CF03D7A8(v83, v82, v42);
            }

            v36 = v24 == v37;
            v24 ^= v37;
            if (v36)
            {
              goto LABEL_5;
            }
          }

LABEL_35:
          sub_1CF03D7A8(v22, v23, 0);
          sub_1CEFCCC44(v17, &unk_1EC4BFDF0, &unk_1CFA054F0);

          return 1;
        }

LABEL_5:
        v81 = v22;
        v83 = v20;
        if (v25)
        {
          v26 = v25;
        }

        else
        {
          v26 = v23;
        }

        if (v25)
        {
          v27 = v23;
        }

        else
        {
          v27 = 0;
        }

        sub_1CEFCCC44(v17, &unk_1EC4BFDF0, &unk_1CFA054F0);

        v28 = v23;
        v29 = *(v86 + 96);
        v30 = *(v86 + 104);
        v31 = *(v86 + 112);
        sub_1CF03C530(v29, v30, v31);
        v32 = v26;
        v82 = v27;
        v33 = sub_1CF95F010(v26, v27, v25 == 0, v29, v30, v31);
        sub_1CF03D7A8(v29, v30, v31);
        if (v33)
        {
          v34 = v81;
          v35 = v28;
LABEL_45:
          sub_1CF03D7A8(v34, v35, 0);
          return 1;
        }

        v55 = v28;
        v17 = v86;
        v56 = *(v86 + 96);
        v57 = *(v86 + 104);
        v59 = v81;
        v58 = v82;
        *(v86 + 96) = v32;
        *(v17 + 13) = v58;
        v60 = v17[112];
        v17[112] = v25 == 0;
        sub_1CF03C530(v59, v55, 0);
        sub_1CF03D7A8(v56, v57, v60);
        v61 = v83;
        v23 = v79;
        sub_1CF3EE07C(v17, v84, v85);
        v22 = v61;
        sub_1CF03D7A8(v59, v55, 0);
        if (!v61 && !v25)
        {
          v62 = v78;
          v63 = *v78 + 1;
          if (!__OFADD__(*v78, 1))
          {
            goto LABEL_49;
          }

          __break(1u);
          goto LABEL_35;
        }

        return 1;
      }

LABEL_55:
      sub_1CF50F1DC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/JobRegistry.swift", 113, 2, 894);
    }

    goto LABEL_53;
  }

  sub_1CF030B88(v14);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
  (*(*(v43 - 8) + 56))(v14, 0, 1, v43);
  if (!swift_weakLoadStrong())
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v44 = v86 & 0x7FFFFFFFFFFFFFFFLL;
  v45 = sub_1CF033A74();

  if (*(v44 + 112))
  {
    goto LABEL_55;
  }

  v46 = *(v44 + 96);
  v47 = *(v44 + 104);
  v48 = v46 & a3;

  v49 = v83;
  if ((v46 & a3) != 0)
  {
    v50 = v46;
    v80 = v45;
    while (1)
    {
      v51 = v48 & -v48;
      sub_1CF43D19C(v51, v44, v14, v45, v84, v85);
      if (v49)
      {
        break;
      }

      if (v52)
      {
        if ((v50 & v51) != 0)
        {
          v53 = ~v51;
        }

        else
        {
          v53 = -1;
        }

        v50 &= v53;
        v54 = *(v44 + 96);
        v82 = *(v44 + 104);
        v83 = v54;
        *(v44 + 96) = v50;
        *(v44 + 104) = v47;
        LODWORD(v81) = *(v44 + 112);
        *(v44 + 112) = 0;
        sub_1CF03C530(v46, v47, 0);
        sub_1CF03D7A8(v83, v82, v81);
        v45 = v80;
      }

      v36 = v48 == v51;
      v48 ^= v51;
      if (v36)
      {
        goto LABEL_37;
      }
    }

    sub_1CF03D7A8(v46, v47, 0);
    sub_1CEFCCC44(v14, &qword_1EC4BFDE8, &qword_1CFA054E8);

    return 1;
  }

  v50 = v46;
LABEL_37:
  LODWORD(v81) = v50 == 0;
  if (v50)
  {
    v64 = v50;
  }

  else
  {
    v64 = v47;
  }

  v82 = v64;
  v83 = v49;
  if (v50)
  {
    v65 = v47;
  }

  else
  {
    v65 = 0;
  }

  sub_1CEFCCC44(v14, &qword_1EC4BFDE8, &qword_1CFA054E8);

  v66 = *(v44 + 96);
  v67 = *(v44 + 104);
  v68 = *(v44 + 112);
  sub_1CF03C530(v66, v67, v68);
  v80 = v65;
  v69 = v65;
  v70 = v81;
  v71 = sub_1CF95F010(v82, v69, v81, v66, v67, v68);
  sub_1CF03D7A8(v66, v67, v68);
  if (v71)
  {
    v34 = v46;
    v35 = v47;
    goto LABEL_45;
  }

  v72 = *(v44 + 96);
  v73 = *(v44 + 104);
  v74 = v80;
  *(v44 + 96) = v82;
  *(v44 + 104) = v74;
  v75 = *(v44 + 112);
  *(v44 + 112) = v70;
  sub_1CF03C530(v46, v47, 0);
  sub_1CF03D7A8(v72, v73, v75);
  v76 = v83;
  sub_1CF3EE07C(v86, v84, v85);
  sub_1CF03D7A8(v46, v47, 0);
  if (!v76 && !v50)
  {
    v62 = v78;
    v63 = *v78 + 1;
    if (!__OFADD__(*v78, 1))
    {
LABEL_49:
      *v62 = v63;
      return 1;
    }

    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  return 1;
}

void sub_1CF3F0224(void *a1, void *a2, uint64_t a3)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v27 - v10);
  v12 = sub_1CF02C1C8(&v32);
  v13 = HIBYTE(v35);
  if (v13 > 0xFE)
  {
    goto LABEL_2;
  }

  if (!v13)
  {
    v30 = v34;
    v31 = v35;
    v27 = a2;
    v28 = a3;
    v36 = 0;
    v29 = v33 < 3u;
    MEMORY[0x1EEE9AC00](v12);
    *(&v27 - 4) = &v29;
    *(&v27 - 3) = &v30;
    *(&v27 - 16) = v21;
    *(&v27 - 1) = v22;
    MEMORY[0x1EEE9AC00](v23);
    *(&v27 - 6) = a1;
    *(&v27 - 5) = v24;
    *(&v27 - 4) = v3;
    *(&v27 - 3) = &v27;
    *(&v27 - 2) = &v36;
    sub_1CF3EDE94(a2, a3, sub_1CF480DD0, v25, sub_1CF480DE8, (&v27 - 8), sub_1CF480EB4, sub_1CF7D55FC);
    if (v4)
    {
      return;
    }

    v5 = 0;
    if (v36 <= 0)
    {
      goto LABEL_2;
    }

    goto LABEL_11;
  }

  if (v13 == 1)
  {
    v15 = v34;
    v27 = v34;
    v30 = a2;
    v31 = a3;
    v36 = 0;
    v29 = v33 > 2u;
    MEMORY[0x1EEE9AC00](v12);
    *(&v27 - 4) = &v29;
    *(&v27 - 3) = &v27;
    *(&v27 - 16) = v16;
    *(&v27 - 1) = v17;
    MEMORY[0x1EEE9AC00](v18);
    *(&v27 - 6) = a1;
    *(&v27 - 5) = v19;
    *(&v27 - 4) = v3;
    *(&v27 - 3) = &v30;
    *(&v27 - 2) = &v36;
    sub_1CF3EDE94(a2, a3, sub_1CF480DBC, v20, sub_1CF485AC0, (&v27 - 8), sub_1CF480EB4, sub_1CF7D55FC);
    if (v4)
    {

      return;
    }

    if (v36 > 0 && swift_weakLoadStrong())
    {
      sub_1CF7FC438();
    }

    else
    {
    }

    v14 = 0;
    goto LABEL_3;
  }

  MEMORY[0x1EEE9AC00](v12);
  *(&v27 - 2) = v26;
  sub_1CF7D5920(sub_1CF480E34, (&v27 - 4), a2);
  if (v4)
  {
    return;
  }

  if ([a2 changes])
  {
    sub_1CF7D5920(sub_1CF4D1C20, 0, a2);
    v5 = 0;
    if (![a2 changes])
    {
LABEL_2:
      v14 = v5;
      goto LABEL_3;
    }

LABEL_11:
    if (swift_weakLoadStrong())
    {
      sub_1CF7FC438();
    }

    goto LABEL_2;
  }

  v14 = 0;
LABEL_3:
  sub_1CF3AD104(a1, a2, a3);
  if (!v14)
  {
    sub_1CF030B88(v11);
    sub_1CF3ADBB0(v11, a2, a3);
    sub_1CEFCCC44(v11, &unk_1EC4C4E20, &unk_1CFA05350);
    sub_1CF3A1454(a1, a2, a3);
  }
}

uint64_t sub_1CF3F06B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C05D0, &unk_1CF9FE620);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CF9FC3C0;
  v2 = v0[2];
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05E0, &qword_1CFA059A8);
  *(v1 + 64) = &off_1F4BFD928;
  *(v1 + 32) = v2;
  v3 = v0[3];
  *(v1 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05E8, &qword_1CFA059B0);
  *(v1 + 104) = &off_1F4BFD928;
  *(v1 + 72) = v3;
  v4 = v0[4];
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C05F0, &qword_1CFA059B8);
  *(v1 + 144) = &off_1F4BFCA18;
  *(v1 + 112) = v4;

  return v1;
}

void sub_1CF3F079C(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v5);
  v3 = *a1;
  *a1 = v5;
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;

  sub_1CF480F84(v3, v4);
}

double sub_1CF3F0810@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v5 = a2 + v4[13];
  sub_1CEFE528C(v110);
  v6 = v110[13];
  *(v5 + 12) = v110[12];
  *(v5 + 13) = v6;
  *(v5 + 14) = v110[14];
  *(v5 + 30) = v111;
  v7 = v110[9];
  *(v5 + 8) = v110[8];
  *(v5 + 9) = v7;
  v8 = v110[11];
  *(v5 + 10) = v110[10];
  *(v5 + 11) = v8;
  v9 = v110[5];
  *(v5 + 4) = v110[4];
  *(v5 + 5) = v9;
  v10 = v110[7];
  *(v5 + 6) = v110[6];
  *(v5 + 7) = v10;
  v11 = v110[1];
  *v5 = v110[0];
  *(v5 + 1) = v11;
  v12 = v110[3];
  *(v5 + 2) = v110[2];
  *(v5 + 3) = v12;
  v13 = a2 + v4[14];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v13[32] = 1;
  v14 = a2 + v4[15];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = [a1 itemID];
  v16 = [v15 identifier];

  *a2 = v16;
  v17 = [a1 itemID];
  v18 = [v17 identifier];

  if (qword_1EDEA3498 != -1)
  {
    swift_once();
  }

  v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v20;
  v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v24 = v23;
  if (v19 == v22 && v21 == v23)
  {
    goto LABEL_5;
  }

  v39 = sub_1CF9E8048();

  v21, v40, v41, v42, v43, v44, v45, v46;
  v24, v47, v48, v49, v50, v51, v52, v53;
  if (v39)
  {
    goto LABEL_7;
  }

  v84 = [a1 itemID];
  v18 = [v84 identifier];

  if (qword_1EDEA34B0 != -1)
  {
    swift_once();
  }

  v85 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v86;
  v87 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v24 = v88;
  if (v85 == v87 && v21 == v88)
  {
LABEL_5:

    v21, v25, v26, v27, v28, v29, v30, v31;
    v24, v32, v33, v34, v35, v36, v37, v38;
  }

  else
  {
    v89 = sub_1CF9E8048();

    v21, v90, v91, v92, v93, v94, v95, v96;
    v24, v97, v98, v99, v100, v101, v102, v103;
    if ((v89 & 1) == 0)
    {
      a2[1] = sub_1CF0689E4();
      goto LABEL_8;
    }
  }

LABEL_7:
  v54 = [a1 itemID];
  v55 = [v54 identifier];

  a2[1] = v55;
LABEL_8:
  sub_1CF06BC9C(a2 + 2);
  v56 = [a1 filename];
  v57 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v59 = v58;

  *&v108[0] = v57;
  *(&v108[0] + 1) = v59;
  *&v106[0] = 58;
  *(&v106[0] + 1) = 0xE100000000000000;
  v105 = sub_1CEFE4E68();
  v104 = MEMORY[0x1E69E6158];
  v60 = sub_1CF9E7668();
  v62 = v61;
  v59, v61, v63, v64, v65, v66, v67, v68;
  a2[10] = v60;
  a2[11] = v62;
  sub_1CEFF54BC(a2 + v4[12]);
  sub_1CF06C190(v106);
  v69 = *(v5 + 13);
  v108[12] = *(v5 + 12);
  v108[13] = v69;
  v108[14] = *(v5 + 14);
  v109 = *(v5 + 30);
  v70 = *(v5 + 9);
  v108[8] = *(v5 + 8);
  v108[9] = v70;
  v71 = *(v5 + 11);
  v108[10] = *(v5 + 10);
  v108[11] = v71;
  v72 = *(v5 + 5);
  v108[4] = *(v5 + 4);
  v108[5] = v72;
  v73 = *(v5 + 7);
  v108[6] = *(v5 + 6);
  v108[7] = v73;
  v74 = *(v5 + 1);
  v108[0] = *v5;
  v108[1] = v74;
  v75 = *(v5 + 3);
  v108[2] = *(v5 + 2);
  v108[3] = v75;
  sub_1CEFCCC44(v108, &qword_1EC4BECF0, &unk_1CF9FEEB0);
  v76 = v106[13];
  *(v5 + 12) = v106[12];
  *(v5 + 13) = v76;
  *(v5 + 14) = v106[14];
  *(v5 + 30) = v107;
  v77 = v106[9];
  *(v5 + 8) = v106[8];
  *(v5 + 9) = v77;
  v78 = v106[11];
  *(v5 + 10) = v106[10];
  *(v5 + 11) = v78;
  v79 = v106[5];
  *(v5 + 4) = v106[4];
  *(v5 + 5) = v79;
  v80 = v106[7];
  *(v5 + 6) = v106[6];
  *(v5 + 7) = v80;
  v81 = v106[1];
  *v5 = v106[0];
  *(v5 + 1) = v81;
  v82 = v106[3];
  *(v5 + 2) = v106[2];
  *(v5 + 3) = v82;
  Fields.init(_:)([a1 unsupportedFields]);

  *(a2 + v4[16]) = 47;
  result = 0.0;
  *(a2 + v4[17]) = xmmword_1CF9FEC20;
  return result;
}

uint64_t sub_1CF3F0D38(void *a1, char a2, uint64_t a3, char a4)
{
  v25 = a3;
  v26 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0230, &unk_1CFA05740);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1CF387EDC();
    v11 = (*(*v4 + 360))(v10, v9 + 144, *(v9 + 120), a2 & 1, &v25, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0250, &unk_1CFA05760);
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      v14 = sub_1CF387EDC();
      v11 = (*(*v4 + 368))(v14, v13 + 144, *(v13 + 120), a2 & 1, &v25, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    }

    else
    {
      (*(*a1 + 440))(&v23);
      v16 = v24;
      if (HIBYTE(v24) < 0xFFu)
      {
        if ((v24 & 0x100) != 0)
        {
          v21 = v23;
          v22 = v24;
          v20 = sub_1CF387EDC();
          v11 = (*(*v4 + 368))(v20, &v21, a1[15], a2 & 1, &v25, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        }

        else
        {
          v17 = v23;
          v21 = v23;
          v18 = sub_1CF387EDC();
          v19 = (*(*v4 + 360))(v18, &v21, a1[15], a2 & 1, &v25, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          sub_1CF4804C0(v17, v16);
          if (!v5)
          {
            v11 = v19;
          }
        }
      }

      else
      {
        v11 = 0;
      }
    }
  }

  return v11 & 1;
}

uint64_t sub_1CF3F1098(void *a1, char a2, uint64_t a3, char a4)
{
  v25 = a3;
  v26 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF30, &unk_1CFA05600);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1CF388E8C();
    v11 = (*(*v4 + 360))(v10, v9 + 144, *(v9 + 120), a2 & 1, &v25, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0200, &unk_1CFA05710);
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      v14 = sub_1CF388E8C();
      v11 = (*(*v4 + 368))(v14, v13 + 144, *(v13 + 120), a2 & 1, &v25, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    }

    else
    {
      (*(*a1 + 440))(&v23);
      v16 = v24;
      if (HIBYTE(v24) < 0xFFu)
      {
        if ((v24 & 0x100) != 0)
        {
          v18 = v23;
          v21 = v23;
          v19 = sub_1CF388E8C();
          v20 = (*(*v4 + 368))(v19, &v21, a1[15], a2 & 1, &v25, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          sub_1CF47FDFC(v18, v16);
          if (!v5)
          {
            v11 = v20;
          }
        }

        else
        {
          v21 = v23;
          v22 = v24;
          v17 = sub_1CF388E8C();
          v11 = (*(*v4 + 360))(v17, &v21, a1[15], a2 & 1, &v25, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        }
      }

      else
      {
        v11 = 0;
      }
    }
  }

  return v11 & 1;
}

unint64_t sub_1CF3F13F8(void *a1, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 3u)
  {
    if (a4 > 5u)
    {
      if (a4 != 6)
      {
        return 0xD000000000000010;
      }

      strcpy(v221, "propagate(");
      BYTE3(v221[1]) = 0;
      HIDWORD(v221[1]) = -369098752;
      sub_1CF1FB2C0(a1, a2, a3, 6u);
      v62 = NSFileProviderItemIdentifier.description.getter(a1);
      v64 = v63;
      MEMORY[0x1D3868CC0](v62);
      v64, v65, v66, v67, v68, v69, v70, v71;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v27 = a1;
      v28 = a2;
      v29 = a3;
      v30 = 6;
    }

    else
    {
      if (a4 != 4)
      {
        v98 = a1;
        sub_1CF9E7948();
        0xE000000000000000, v99, v100, v101, v102, v103, v104, v105;
        v221[0] = 0xD000000000000017;
        v221[1] = 0x80000001CFA46B90;
        v106 = NSFileProviderItemIdentifier.description.getter(v98);
        v108 = v107;
        MEMORY[0x1D3868CC0](v106);
        v108, v109, v110, v111, v112, v113, v114, v115;
        MEMORY[0x1D3868CC0](41, 0xE100000000000000);

        return v221[0];
      }

      v9 = a1;
      sub_1CF9E7948();
      0xE000000000000000, v10, v11, v12, v13, v14, v15, v16;
      v221[0] = 0xD000000000000014;
      v221[1] = 0x80000001CFA46BD0;
      v17 = NSFileProviderItemIdentifier.description.getter(v9);
      v19 = v18;
      MEMORY[0x1D3868CC0](v17);
      v19, v20, v21, v22, v23, v24, v25, v26;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v27 = a1;
      v28 = a2;
      v29 = a3;
      v30 = 4;
    }

LABEL_18:
    sub_1CF484340(v27, v28, v29, v30);
    return v221[0];
  }

  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      if (a2)
      {
        v32 = a1;
        v5 = a2;
        sub_1CF9E7948();
        0xE000000000000000, v33, v34, v35, v36, v37, v38, v39;
        v221[0] = 0x286863746566;
        v221[1] = 0xE600000000000000;
        v40 = NSFileProviderItemIdentifier.description.getter(v32);
        v42 = v41;
        MEMORY[0x1D3868CC0](v40);
        v42, v43, v44, v45, v46, v47, v48, v49;
        MEMORY[0x1D3868CC0](0x203A6E69202CLL, 0xE600000000000000);
        v50 = NSFileProviderItemIdentifier.description.getter(v5);
        v52 = v51;
        MEMORY[0x1D3868CC0](v50);
        v52, v53, v54, v55, v56, v57, v58, v59;
        MEMORY[0x1D3868CC0](41, 0xE100000000000000);

LABEL_24:
        return v221[0];
      }

      strcpy(v221, "fetchUnkown(");
      BYTE5(v221[1]) = 0;
      HIWORD(v221[1]) = -5120;
      v5 = a1;
      v6 = 2;
LABEL_23:
      sub_1CF1FB2C0(a1, a2, a3, v6);
      v174 = NSFileProviderItemIdentifier.description.getter(v5);
      v176 = v175;
      MEMORY[0x1D3868CC0](v174);
      v176, v177, v178, v179, v180, v181, v182, v183;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      goto LABEL_24;
    }

    v221[0] = 0x287473696CLL;
    v221[1] = 0xE500000000000000;
    sub_1CF1FB2C0(a1, a2, a3, 3u);
    v118 = NSFileProviderItemIdentifier.description.getter(a1);
    v120 = v119;
    MEMORY[0x1D3868CC0](v118);
    v120, v121, v122, v123, v124, v125, v126, v127;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v27 = a1;
    v28 = a2;
    v29 = a3;
    v30 = 3;
    goto LABEL_18;
  }

  if (!a4)
  {
    strcpy(v221, "create(");
    v221[1] = 0xE700000000000000;
    v5 = a1;
    v6 = 0;
    goto LABEL_23;
  }

  v74 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v76 = v75;
  v78 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v79 = v74;
  v80 = v77;
  if (v79 == v78 && v76 == v77)
  {
    v81 = a1;
    v82 = a2;
    v83 = a3;
    v76, v84, v85, v86, v87, v88, v89, v90;
    v80, v91, v92, v93, v94, v95, v96, v97;
  }

  else
  {
    v129 = sub_1CF9E8048();
    v130 = a1;
    v131 = a2;
    v132 = a3;
    v76, v133, v134, v135, v136, v137, v138, v139;
    v80, v140, v141, v142, v143, v144, v145, v146;
    if ((v129 & 1) == 0)
    {
      sub_1CF9E7948();
      0xE000000000000000, v184, v185, v186, v187, v188, v189, v190;
      strcpy(v221, "update(");
      v221[1] = 0xE700000000000000;
      v191 = NSFileProviderItemIdentifier.description.getter(v130);
      v193 = v192;
      MEMORY[0x1D3868CC0](v191);
      v193, v194, v195, v196, v197, v198, v199, v200;
      MEMORY[0x1D3868CC0](0x203A6E69202CLL, 0xE600000000000000);
      v201 = NSFileProviderItemIdentifier.description.getter(v131);
      v203 = v202;
      MEMORY[0x1D3868CC0](v201);
      v203, v204, v205, v206, v207, v208, v209, v210;
      MEMORY[0x1D3868CC0](540945696, 0xE400000000000000);
      v211 = NSFileProviderItemIdentifier.description.getter(v132);
      v213 = v212;
      MEMORY[0x1D3868CC0](v211);
      v213, v214, v215, v216, v217, v218, v219, v220;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

      return v221[0];
    }
  }

  sub_1CF9E7948();
  0xE000000000000000, v147, v148, v149, v150, v151, v152, v153;
  strcpy(v221, "update(");
  v221[1] = 0xE700000000000000;
  v154 = NSFileProviderItemIdentifier.description.getter(a1);
  v156 = v155;
  MEMORY[0x1D3868CC0](v154);
  v156, v157, v158, v159, v160, v161, v162, v163;
  MEMORY[0x1D3868CC0](0x203A6E69202CLL, 0xE600000000000000);
  v164 = NSFileProviderItemIdentifier.description.getter(a2);
  v166 = v165;
  MEMORY[0x1D3868CC0](v164);
  v166, v167, v168, v169, v170, v171, v172, v173;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  return v221[0];
}

uint64_t sub_1CF3F19CC(uint64_t a1)
{
  v2 = *(v1 + 41);
  if (v2 <= 3)
  {
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    if (*(v1 + 41) > 1u)
    {
      if (v2 != 2)
      {
        v5 = 0x287473696CLL;
        goto LABEL_21;
      }

      if (v4 == 255)
      {
        v5 = 0x6B6E556863746566;
        goto LABEL_21;
      }

      sub_1CF9E7948();
      0xE000000000000000, v34, v35, v36, v37, v38, v39, v40;
      v42 = 0x286863746566;
    }

    else
    {
      if (!*(v1 + 41))
      {
        v5 = 0x28657461657263;
LABEL_21:
        v89 = v5;
LABEL_22:
        v23 = VFSItemID.description.getter(a1);
        v25 = v24;
        MEMORY[0x1D3868CC0](v23);
        v25, v26, v27, v28, v29, v30, v31, v32;
        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        return v89;
      }

      v14 = *(v1 + 32);
      v15 = *(v1 + 40);
      if (*(v1 + 24))
      {
        if (v4 == 1)
        {
          if (v15 != 1 || v3 != v14)
          {
LABEL_36:
            sub_1CF9E7948();
            0xE000000000000000, v60, v61, v62, v63, v64, v65, v66;
            v89 = 0x28657461647075;
            v68 = VFSItemID.description.getter(v67);
            v70 = v69;
            MEMORY[0x1D3868CC0](v68);
            v70, v71, v72, v73, v74, v75, v76, v77;
            v78 = MEMORY[0x1D3868CC0](0x203A6E69202CLL, 0xE600000000000000);
            v79 = VFSItemID.description.getter(v78);
            v81 = v80;
            MEMORY[0x1D3868CC0](v79);
            v81, v82, v83, v84, v85, v86, v87, v88;
            a1 = MEMORY[0x1D3868CC0](540945696, 0xE400000000000000);
            goto LABEL_22;
          }
        }

        else if (v3)
        {
          if (v15 != 2 || v14 != 1)
          {
            goto LABEL_36;
          }
        }

        else if (v15 != 2 || v14)
        {
          goto LABEL_36;
        }
      }

      else if (*(v1 + 40) || v3 != v14)
      {
        goto LABEL_36;
      }

      sub_1CF9E7948();
      0xE000000000000000, v43, v44, v45, v46, v47, v48, v49;
      v42 = 0x28657461647075;
    }

    v89 = v42;
    v50 = VFSItemID.description.getter(v41);
    v52 = v51;
    MEMORY[0x1D3868CC0](v50);
    v52, v53, v54, v55, v56, v57, v58, v59;
    a1 = MEMORY[0x1D3868CC0](0x203A6E69202CLL, 0xE600000000000000);
    goto LABEL_22;
  }

  if (*(v1 + 41) <= 5u)
  {
    if (v2 == 4)
    {
      sub_1CF9E7948();
      0xE000000000000000, v6, v7, v8, v9, v10, v11, v12;
      v13 = 0xD000000000000014;
    }

    else
    {
      sub_1CF9E7948();
      0xE000000000000000, v16, v17, v18, v19, v20, v21, v22;
      v13 = 0xD000000000000017;
    }

    v89 = v13;
    goto LABEL_22;
  }

  if (v2 == 6)
  {
    v5 = 0x74616761706F7270;
    goto LABEL_21;
  }

  return 0xD000000000000010;
}

uint64_t sub_1CF3F1D48()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = sub_1CF3F2030(v0, &qword_1EC4C0670, &qword_1CFA129D0, &qword_1EC4C0678);
  v3 = objc_sync_exit(v0);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v2;
}

uint64_t sub_1CF3F1EBC()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = sub_1CF3F2030(v0, &unk_1EC4C4EF0, &unk_1CFA05A90, qword_1EDEAA350);
  v3 = objc_sync_exit(v0);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v2;
}

uint64_t sub_1CF3F2030(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  sub_1CF9E7948();
  0xE000000000000000, v8, v9, v10, v11, v12, v13, v14;
  swift_beginAccess();
  v15 = *(a1 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1CEFCCCEC(a4, a2, a3, &unk_1CFA0A0B8);
  v16 = sub_1CF9E6FA8();
  v18 = v17;
  v15, v17, v19, v20, v21, v22, v23, v24;
  MEMORY[0x1D3868CC0](v16, v18);
  v18, v25, v26, v27, v28, v29, v30, v31;
  MEMORY[0x1D3868CC0](0x676E69646E657020, 0xEE003A6873756C46);
  swift_beginAccess();
  v32 = *(a1 + 24);

  v33 = sub_1CF9E6FA8();
  v35 = v34;
  v32, v34, v36, v37, v38, v39, v40, v41;
  MEMORY[0x1D3868CC0](v33, v35);
  v35, v42, v43, v44, v45, v46, v47, v48;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0x676E696E6E75723CLL;
}

void sub_1CF3F21DC(uint64_t a1, void *a2, char a3)
{
  swift_beginAccess();
  v75 = a1;
  v4 = *(a1 + 16);
  v78 = v4 + 64;
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v77 = (v5 + 63) >> 6;
  v80 = v4;

  v8 = 0;
  if (v7)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = v10 | (v9 << 6);
      v12 = *(v80 + 48) + 32 * v11;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v80 + 56) + 16 * v11;
      v17 = *(v16 + 8);
      v81 = *v16;
      v83 = a2[3];
      v85 = a2[4];
      v18 = *(v12 + 24);
      __swift_project_boxed_opaque_existential_1(a2, v83);
      v82 = v15;
      sub_1CF1FB2C0(v13, v14, v15, v18);

      sub_1CF9E7948();
      v19 = sub_1CF3F13F8(v13, v14, v15, v18);
      v21 = v20;
      0xE000000000000000, v20, v22, v23, v24, v25, v26, v27;
      v84 = v21;
      MEMORY[0x1D3868CC0](0x8FB8EFB696E2203ALL, 0xA900000000000020);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE650, &qword_1CF9FE490);
      v29 = MEMORY[0x1D3868FE0](v81, v28);
      v31 = v30;
      MEMORY[0x1D3868CC0](v29);
      v31, v32, v33, v34, v35, v36, v37, v38;
      MEMORY[0x1D3868CC0](0x208F949FF02020, 0xA700000000000000);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
      v40 = MEMORY[0x1D3868FE0](v17, v39);
      v42 = v41;
      MEMORY[0x1D3868CC0](v40);
      v17, v43, v44, v45, v46, v47, v48, v49;
      v81, v50, v51, v52, v53, v54, v55, v56;
      v42, v57, v58, v59, v60, v61, v62, v63;
      sub_1CF4FB2BC(v19, v84, v83, v85);
      v84, v64, v65, v66, v67, v68, v69, v70;
      sub_1CF484340(v13, v14, v82, v18);
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v77)
    {
      break;
    }

    v7 = *(v78 + 8 * v9);
    ++v8;
    if (v7)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  if (a3)
  {
    v71 = a2[3];
    v72 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v71);
    sub_1CF4FB2BC(0x2064656B636F6C62, 0xED00003A73626F6ALL, v71, v72);
    v73 = a2[3];
    v74 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v73);
    sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF4843C8, v75, v73, MEMORY[0x1E69E7CA8] + 8, v74);
  }
}

void sub_1CF3F2520(uint64_t a1, void *a2, char a3)
{
  swift_beginAccess();
  v74 = a1;
  v4 = *(a1 + 16);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(a1 + 16) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v77 = *(a1 + 16);

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(v77 + 56) + 16 * (__clz(__rbit64(v10)) | (v13 << 6));
      v15 = *v14;
      v16 = *(v14 + 8);

      if (!v15)
      {
        break;
      }

      v10 &= v10 - 1;
      v78 = a2[3];
      v79 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v78);
      v17 = sub_1CF9E7948();
      v18 = sub_1CF3F19CC(v17);
      v20 = v19;
      0xE000000000000000, v19, v21, v22, v23, v24, v25, v26;
      MEMORY[0x1D3868CC0](0x8FB8EFB696E2203ALL, 0xA900000000000020);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE650, &qword_1CF9FE490);
      v28 = MEMORY[0x1D3868FE0](v15, v27);
      v30 = v29;
      MEMORY[0x1D3868CC0](v28);
      v30, v31, v32, v33, v34, v35, v36, v37;
      MEMORY[0x1D3868CC0](0x208F949FF02020, 0xA700000000000000);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
      v39 = MEMORY[0x1D3868FE0](v16, v38);
      v41 = v40;
      MEMORY[0x1D3868CC0](v39);
      v16, v42, v43, v44, v45, v46, v47, v48;
      v15, v49, v50, v51, v52, v53, v54, v55;
      v41, v56, v57, v58, v59, v60, v61, v62;
      sub_1CF4FB2BC(v18, v20, v78, v79);
      v20, v63, v64, v65, v66, v67, v68, v69;
      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    if (a3)
    {
      v70 = a2[3];
      v71 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v70);
      sub_1CF4FB2BC(0x2064656B636F6C62, 0xED00003A73626F6ALL, v70, v71);
      v72 = a2[3];
      v73 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v72);
      sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF4840F4, v74, v72, MEMORY[0x1E69E7CA8] + 8, v73);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        goto LABEL_11;
      }

      v10 = *(v6 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1CF3F2840(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v5 = *(a2 + 32);
  v6 = *(v5 + 64);
  v68 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v72 = *(a2 + 32);

  v11 = 0;
  while (v9)
  {
    v12 = v11;
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = (v12 << 10) | (16 * v13);
    v15 = (*(v72 + 48) + v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = (*(v72 + 56) + v14);
    v19 = *v18;
    v20 = v18[1];
    v73 = a1[3];
    v76 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v73);

    sub_1CF9E7948();
    0xE000000000000000, v21, v22, v23, v24, v25, v26, v27;
    v74 = v17;
    v75 = v16;
    MEMORY[0x1D3868CC0](0x3A73656C7572203ALL, 0xE900000000000020);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v29 = MEMORY[0x1D3868FE0](v19, v28);
    v31 = v30;
    v19, v30, v32, v33, v34, v35, v36, v37;
    MEMORY[0x1D3868CC0](v29, v31);
    v31, v38, v39, v40, v41, v42, v43, v44;
    MEMORY[0x1D3868CC0](0x656B636F6C62202CLL, 0xEE00203A79622064);
    v45 = MEMORY[0x1D3868FE0](v20, v28);
    v47 = v46;
    v20, v46, v48, v49, v50, v51, v52, v53;
    MEMORY[0x1D3868CC0](v45, v47);
    v47, v54, v55, v56, v57, v58, v59, v60;
    sub_1CF4FB2BC(v74, v75, v73, v76);
    v75, v61, v62, v63, v64, v65, v66, v67;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v68 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1CF3F2AA0(id *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v12 = a4;
  v13 = a5;
  v6 = *(a2 + 32);
  if ((v6[32] & 1) == 0)
  {
    v9 = (*(*v6 + 320))(result + 1, 0, &v12, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (!v5)
    {
      if (v9 == 2 || (v9 & 1) == 0)
      {
        v10 = result + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48);
        v11 = type metadata accessor for ItemMetadata(0);
        v10[*(v11 + 48)] = v10[*(v11 + 44)];
      }

      else
      {
        sub_1CF48221C(result, a3);
      }
    }
  }
}

void sub_1CF3F2B8C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v12 = a4;
  v13 = a5;
  v6 = *(a2 + 32);
  if ((v6[32] & 1) == 0)
  {
    v9 = (*(*v6 + 320))(result + 2, 0, &v12, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    if (!v5)
    {
      if (v9 == 2 || (v9 & 1) == 0)
      {
        v10 = result + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48);
        v11 = type metadata accessor for ItemMetadata(0);
        v10[*(v11 + 48)] = v10[*(v11 + 44)];
      }

      else
      {
        sub_1CF481944(result, a3);
      }
    }
  }
}

void sub_1CF3F2C78(uint64_t a1, id *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v15 = sub_1CF9E5CF8();
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a6;
  v73 = a7;
  v21 = *(a4 + 32);
  if (v21[32])
  {
    return;
  }

  v22 = *a3;
  if ((*a3 & 0x20002) == 0)
  {
    return;
  }

  v69 = a1;
  v70 = a5;
  *&v71 = v22;
  v67 = v17;
  v68 = v16;
  v23 = (*v21 + 320);
  v24 = *v23;
  v25 = (*v23)(a2 + 1, 0, &v72, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970, v18);
  if (v7)
  {
    return;
  }

  if (v25 == 2)
  {
    if ((v71 & 2) != 0)
    {
      v66 = 0;
LABEL_11:
      if ((*(**(a4 + 24) + 336))(0, 68, &v72, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970))
      {
        v30 = v69;
        v29 = (v24)(v69, 0, &v72, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
        v31 = v30;
      }

      else
      {
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v31 = v69;
        v51 = v69 + *(v50 + 48);
        v29 = *(v51 + *(type metadata accessor for ItemMetadata(0) + 48));
      }

      v28 = v70;
      if (v66)
      {
        goto LABEL_26;
      }

      if (v29)
      {
        v59 = *a2;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v61 = v60;
        (*(v67 + 8))(v20, v68);
        v62 = v61 * 1000000000.0;
        if (COERCE__INT64(fabs(v61 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        if (v62 <= -9.22337204e18)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        if (v62 >= 9.22337204e18)
        {
LABEL_51:
          __break(1u);
          return;
        }

        v63 = v62;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C02E0, &unk_1CFA057B0);
        v64 = swift_allocObject();
        *(v64 + 16) = 0u;
        *(v64 + 32) = 0u;
        *(v64 + 48) = 1;
        *(v64 + 56) = 0u;
        *(v64 + 72) = 0u;
        *(v64 + 88) = 0;
        *(v64 + 96) = xmmword_1CF9FEC30;
        *(v64 + 112) = 0;
        *(v64 + 120) = 0x2000000000000000;
        *(v64 + 128) = v63;
        *(v64 + 136) = 0x10000000000;
        *(v64 + 144) = v59;
        (*(*v28 + 144))();
      }

LABEL_14:
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v33 = a2 + *(v32 + 48);
      v34 = type metadata accessor for ItemMetadata(0);
      v35 = v33[*(v34 + 44)];
      v33[*(v34 + 48)] = v35;
      if (v35 == *(v31 + *(v32 + 48) + *(v34 + 48)))
      {
        return;
      }

      if ((v71 & 0x800000000000000) == 0)
      {
        *a3 = v71 | 0x800000000000000;
      }

      v36 = *a2;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v38 = v37;
      v39 = *(v67 + 8);
      v39(v20, v68);
      v40 = v38 * 1000000000.0;
      if (COERCE__INT64(fabs(v38 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v40 > -9.22337204e18)
      {
        if (v40 < 9.22337204e18)
        {
          v41 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C03E0, &qword_1CF9FB270);
          v42 = swift_allocObject();
          *(v42 + 16) = 0u;
          *(v42 + 32) = 0u;
          *(v42 + 48) = 1;
          *(v42 + 56) = 0u;
          *(v42 + 72) = 0u;
          *(v42 + 88) = 0;
          v71 = xmmword_1CF9FEC30;
          *(v42 + 96) = xmmword_1CF9FEC30;
          *(v42 + 112) = 0;
          *(v42 + 120) = 0x2000000000000000;
          *(v42 + 128) = v41;
          *(v42 + 136) = 0x10000000000;
          *(v42 + 144) = v36;
          v43 = *(*v70 + 144);
          v43();

          v44 = v36;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v46 = v45;
          v39(v20, v68);
          v47 = v46 * 1000000000.0;
          if (COERCE__INT64(fabs(v46 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v47 > -9.22337204e18)
            {
              if (v47 < 9.22337204e18)
              {
                v48 = v47;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0300, &qword_1CF9FB370);
                v49 = swift_allocObject();
                *(v49 + 16) = 0u;
                *(v49 + 32) = 0u;
                *(v49 + 48) = 1;
                *(v49 + 56) = 0u;
                *(v49 + 72) = 0u;
                *(v49 + 88) = 0;
                *(v49 + 96) = v71;
                *(v49 + 112) = 0;
                *(v49 + 120) = 0x2000000000000000;
                *(v49 + 128) = v48;
                *(v49 + 136) = 0x10000000000;
                *(v49 + 144) = v44;
                v43();
LABEL_32:

                return;
              }

              goto LABEL_45;
            }

LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      __break(1u);
      goto LABEL_42;
    }

    goto LABEL_13;
  }

  v66 = v25;
  if ((v71 & 2) != 0)
  {
    goto LABEL_11;
  }

  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48);
  v27 = type metadata accessor for ItemMetadata(0);
  v28 = v70;
  if ((v66 & 1) == 0)
  {
LABEL_13:
    v31 = v69;
    goto LABEL_14;
  }

  v29 = *(v69 + v26 + *(v27 + 48));
LABEL_26:
  if ((v29 & 1) == 0)
  {
    sub_1CF48221C(a2, v28);
    if ((v71 & 0x800000000000000) == 0)
    {
      *a3 = v71 | 0x800000000000000;
    }
  }

  v52 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48);
  if (v52[*(type metadata accessor for ItemMetadata(0) + 44)] == 1)
  {
    v53 = *a2;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v55 = v54;
    (*(v67 + 8))(v20, v68);
    v56 = v55 * 1000000000.0;
    if (COERCE__INT64(fabs(v55 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v56 > -9.22337204e18)
      {
        if (v56 < 9.22337204e18)
        {
          v57 = v56;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE78, &unk_1CF9FB290);
          v58 = swift_allocObject();
          *(v58 + 16) = 0u;
          *(v58 + 32) = 0u;
          *(v58 + 48) = 1;
          *(v58 + 56) = 0u;
          *(v58 + 72) = 0u;
          *(v58 + 88) = 0;
          *(v58 + 96) = xmmword_1CF9FEC30;
          *(v58 + 112) = 0;
          *(v58 + 120) = 0x2000000000000000;
          *(v58 + 128) = v57;
          *(v58 + 136) = 0x10000000000;
          *(v58 + 144) = v53;
          (*(*v28 + 144))();
          goto LABEL_32;
        }

        goto LABEL_48;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }
}

void sub_1CF3F3458(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v15 = sub_1CF9E5CF8();
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a6;
  v79 = a7;
  v21 = *(a4 + 32);
  if (v21[32])
  {
    return;
  }

  v22 = *a3;
  if ((*a3 & 0x20002) == 0)
  {
    return;
  }

  v75 = a1;
  v76 = a5;
  *&v77 = v22;
  v73 = v17;
  v74 = v16;
  v23 = (*v21 + 320);
  v24 = *v23;
  v25 = (*v23)(a2 + 2, 0, &v78, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970, v18);
  if (v7)
  {
    return;
  }

  v72 = a2;
  if (v25 == 2)
  {
    if ((v77 & 2) == 0)
    {
      v26 = v75;
      v27 = v76;
      goto LABEL_30;
    }

    HIDWORD(v71) = 0;
  }

  else
  {
    HIDWORD(v71) = v25;
    if ((v77 & 2) == 0)
    {
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) + 48);
      v29 = type metadata accessor for ItemMetadata(0);
      v27 = v76;
      if ((v71 & 0x100000000) != 0)
      {
        v30 = *(v75 + v28 + *(v29 + 48));
        goto LABEL_17;
      }

      v26 = v75;
LABEL_30:
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      v52 = v72 + *(v51 + 48);
      v53 = type metadata accessor for ItemMetadata(0);
      v54 = v52[*(v53 + 44)];
      v52[*(v53 + 48)] = v54;
      if (v54 == *(v26 + *(v51 + 48) + *(v53 + 48)))
      {
        return;
      }

      if ((v77 & 0x800000000000000) == 0)
      {
        *a3 = v77 | 0x800000000000000;
      }

      v55 = *v72;
      v56 = *(v72 + 8);
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v58 = v57;
      v59 = *(v73 + 8);
      v59(v20, v74);
      v60 = v58 * 1000000000.0;
      if (COERCE__INT64(fabs(v58 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v60 > -9.22337204e18)
      {
        if (v60 < 9.22337204e18)
        {
          v61 = v60;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD958, &qword_1CF9FAC70);
          v62 = swift_allocObject();
          *(v62 + 152) = v56;
          *(v62 + 16) = 0u;
          *(v62 + 32) = 0u;
          *(v62 + 48) = 1;
          *(v62 + 56) = 0u;
          *(v62 + 72) = 0u;
          *(v62 + 88) = 0;
          v77 = xmmword_1CF9FEC30;
          *(v62 + 96) = xmmword_1CF9FEC30;
          *(v62 + 112) = 0;
          *(v62 + 120) = 0x2000000000000000;
          *(v62 + 128) = v61;
          *(v62 + 136) = 0x10000000000;
          *(v62 + 144) = v55;
          v63 = *(*v27 + 144);
          v63();

          v64 = *v72;
          v65 = *(v72 + 8);
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v67 = v66;
          v59(v20, v74);
          v68 = v67 * 1000000000.0;
          if (COERCE__INT64(fabs(v67 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v68 > -9.22337204e18)
            {
              if (v68 < 9.22337204e18)
              {
                v69 = v68;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9D8, &qword_1CF9FAD70);
                v70 = swift_allocObject();
                *(v70 + 152) = v65;
                *(v70 + 16) = 0u;
                *(v70 + 32) = 0u;
                *(v70 + 48) = 1;
                *(v70 + 56) = 0u;
                *(v70 + 72) = 0u;
                *(v70 + 88) = 0;
                *(v70 + 96) = v77;
                *(v70 + 112) = 0;
                *(v70 + 120) = 0x2000000000000000;
                *(v70 + 128) = v69;
                *(v70 + 136) = 0x10000000000;
                *(v70 + 144) = v64;
                v63();
                goto LABEL_40;
              }

              goto LABEL_46;
            }

LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      __break(1u);
      goto LABEL_43;
    }
  }

  if ((*(**(a4 + 24) + 336))(0, 68, &v78, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970))
  {
    v31 = v75;
    v30 = (v24)(v75, 0, &v78, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v26 = v31;
  }

  else
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
    v26 = v75;
    v33 = v75 + *(v32 + 48);
    v30 = *(v33 + *(type metadata accessor for ItemMetadata(0) + 48));
  }

  v27 = v76;
  if ((v71 & 0x100000000) == 0)
  {
    if (v30)
    {
      v44 = *v72;
      v45 = *(v72 + 8);
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v47 = v46;
      (*(v73 + 8))(v20, v74);
      v48 = v47 * 1000000000.0;
      if (COERCE__INT64(fabs(v47 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v48 <= -9.22337204e18)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      if (v48 >= 9.22337204e18)
      {
LABEL_52:
        __break(1u);
        return;
      }

      v49 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD968, &unk_1CFA056A0);
      v50 = swift_allocObject();
      *(v50 + 152) = v45;
      *(v50 + 16) = 0u;
      *(v50 + 32) = 0u;
      *(v50 + 48) = 1;
      *(v50 + 56) = 0u;
      *(v50 + 72) = 0u;
      *(v50 + 88) = 0;
      *(v50 + 96) = xmmword_1CF9FEC30;
      *(v50 + 112) = 0;
      *(v50 + 120) = 0x2000000000000000;
      *(v50 + 128) = v49;
      *(v50 + 136) = 0x10000000000;
      *(v50 + 144) = v44;
      v27 = v76;
      (*(*v76 + 144))();
    }

    goto LABEL_30;
  }

LABEL_17:
  if ((v30 & 1) == 0)
  {
    sub_1CF481944(v72, v27);
    if ((v77 & 0x800000000000000) == 0)
    {
      *a3 = v77 | 0x800000000000000;
    }
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v35 = v72;
  v36 = v72 + *(v34 + 48);
  if (v36[*(type metadata accessor for ItemMetadata(0) + 44)] == 1)
  {
    v37 = *v35;
    v38 = *(v35 + 8);
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v40 = v39;
    (*(v73 + 8))(v20, v74);
    v41 = v40 * 1000000000.0;
    if (COERCE__INT64(fabs(v40 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v41 > -9.22337204e18)
      {
        if (v41 < 9.22337204e18)
        {
          v42 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0020, &unk_1CF9FAC90);
          v43 = swift_allocObject();
          *(v43 + 152) = v38;
          *(v43 + 16) = 0u;
          *(v43 + 32) = 0u;
          *(v43 + 48) = 1;
          *(v43 + 56) = 0u;
          *(v43 + 72) = 0u;
          *(v43 + 88) = 0;
          *(v43 + 96) = xmmword_1CF9FEC30;
          *(v43 + 112) = 0;
          *(v43 + 120) = 0x2000000000000000;
          *(v43 + 128) = v42;
          *(v43 + 136) = 0x10000000000;
          *(v43 + 144) = v37;
          (*(*v27 + 144))();
LABEL_40:

          return;
        }

        goto LABEL_49;
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }
}

void sub_1CF3F3C5C(uint64_t a1)
{
  isEscapingClosureAtFileLocation = v1;
  v6 = a1;
  sub_1CF9E7518();
  if (swift_task_isCurrentExecutor())
  {
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1CF484528;
    *(v3 + 24) = &v5;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1CF485B48;
    *(v4 + 24) = v3;

    v8[0] = v1;
    sub_1CF485888(v8);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA46EA0);
  v7 = isEscapingClosureAtFileLocation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06F0, &qword_1CFA05B00);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](46, 0xE100000000000000);
  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF3F3E44(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  sub_1CF4FB2BC(0xD000000000000021, 0x80000001CFA46F30, v4, v5);
  v6 = *(a1 + 56);
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v16[2] = v6;

  sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF484544, v16, v7, MEMORY[0x1E69E7CA8] + 8, v8);
  v6, v9, v10, v11, v12, v13, v14, v15;
}

void sub_1CF3F3F34(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    v41 = a1[3];
    v42 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v41);
    sub_1CF4FB2BC(0xD000000000000013, 0x80000001CFA46F60, v41, v42);
    return;
  }

  v3 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v43 = v3;
  while (v7)
  {
LABEL_13:
    v37 = *(v3 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7))));
    v38 = *v37;
    v39 = *(v37 + 8);
    v40 = a1[3];
    v44 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v40);
    if (!v39)
    {
      v45 = 0x284449636F64;
      v46 = 0xE600000000000000;
LABEL_6:
      v10 = sub_1CF9E7F98();
      v12 = v11;
      MEMORY[0x1D3868CC0](v10);
      v12, v13, v14, v15, v16, v17, v18, v19;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v20 = v45;
      v21 = v46;
      goto LABEL_7;
    }

    if (v39 == 1)
    {
      v45 = 0x284449656C6966;
      v46 = 0xE700000000000000;
      goto LABEL_6;
    }

    if (v38)
    {
      v20 = 0x6873617274;
    }

    else
    {
      v20 = 1953460082;
    }

    if (v38)
    {
      v21 = 0xE500000000000000;
    }

    else
    {
      v21 = 0xE400000000000000;
    }

LABEL_7:
    v7 &= v7 - 1;
    MEMORY[0x1D3868CC0](v20, v21);
    v21, v22, v23, v24, v25, v26, v27, v28;
    sub_1CF4FB2BC(0, 0xE000000000000000, v40, v44);
    0xE000000000000000, v29, v30, v31, v32, v33, v34, v35;
    v3 = v43;
  }

  while (1)
  {
    v36 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v36 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v36);
    ++v9;
    if (v7)
    {
      v9 = v36;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1CF3F4198(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA00, &qword_1CF9FADC8);
  result = swift_allocObject();
  *(result + 152) = a2;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 1;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 120) = a3;
  *(result + 128) = a4;
  *(result + 136) = a5;
  *(result + 144) = a1;
  v11 = 327936;
  if ((a5 & 0x8000) != 0)
  {
    v11 = 2425088;
  }

  *(result + 88) = 0;
  *(result + 96) = v11;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

uint64_t sub_1CF3F423C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF18, &qword_1CF9FB3C8);
  result = swift_allocObject();
  *(result + 48) = 1;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 120) = a2;
  *(result + 128) = a3;
  *(result + 136) = a4;
  *(result + 144) = a1;
  v9 = 327936;
  if ((a4 & 0x8000) != 0)
  {
    v9 = 2425088;
  }

  *(result + 88) = 0;
  *(result + 96) = v9;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

uint64_t sub_1CF3F42D0(uint64_t a1, id *a2, uint64_t *a3, void **a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v260 = a4;
  LODWORD(v250) = a6;
  v255 = a5;
  v258 = a3;
  v262 = a2;
  v254 = sub_1CF9E5CF8();
  v252 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254);
  v253 = &v243 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v248 = &v243 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v246 = *(v14 - 8);
  v247 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v245 = &v243 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v243 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v243 - v20;
  v256 = a7;
  v288 = a7;
  LODWORD(v257) = a8;
  v289 = a8;
  v259 = a1;
  sub_1CEFCCBDC(a1, &v243 - v20, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v23 = *(*(v22 - 8) + 48);
  if (v23(v21, 1, v22) == 1)
  {
    sub_1CEFCCC44(v21, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v24 = 0;
  }

  else
  {
    v25 = &v21[*(v22 + 52)];
    v26 = *(v25 + 13);
    v284[12] = *(v25 + 12);
    v284[13] = v26;
    v284[14] = *(v25 + 14);
    *&v284[15] = *(v25 + 30);
    v27 = *(v25 + 9);
    v284[8] = *(v25 + 8);
    v284[9] = v27;
    v28 = *(v25 + 11);
    v284[10] = *(v25 + 10);
    v284[11] = v28;
    v29 = *(v25 + 5);
    v284[4] = *(v25 + 4);
    v284[5] = v29;
    v30 = *(v25 + 7);
    v284[6] = *(v25 + 6);
    v284[7] = v30;
    v31 = *(v25 + 1);
    v284[0] = *v25;
    v284[1] = v31;
    v32 = *(v25 + 3);
    v284[2] = *(v25 + 2);
    v284[3] = v32;
    sub_1CEFCCBDC(v284, v283, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    sub_1CEFCCC44(v21, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v285[12] = v284[12];
    v285[13] = v284[13];
    v285[14] = v284[14];
    *&v285[15] = *&v284[15];
    v285[8] = v284[8];
    v285[9] = v284[9];
    v285[10] = v284[10];
    v285[11] = v284[11];
    v285[4] = v284[4];
    v285[5] = v284[5];
    v285[6] = v284[6];
    v285[7] = v284[7];
    v285[0] = v284[0];
    v285[1] = v284[1];
    v285[2] = v284[2];
    v285[3] = v284[3];
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v285) == 1)
    {
      v24 = 0;
    }

    else
    {
      sub_1CEFCCC44(v284, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v24 = *&v285[13];
    }
  }

  sub_1CEFCCBDC(v259, v18, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  if (v23(v18, 1, v22) == 1)
  {
    sub_1CEFCCC44(v18, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v33 = v262;
  }

  else
  {
    v34 = &v18[*(v22 + 52)];
    v35 = *(v34 + 13);
    v284[12] = *(v34 + 12);
    v284[13] = v35;
    v284[14] = *(v34 + 14);
    *&v284[15] = *(v34 + 30);
    v36 = *(v34 + 9);
    v284[8] = *(v34 + 8);
    v284[9] = v36;
    v37 = *(v34 + 11);
    v284[10] = *(v34 + 10);
    v284[11] = v37;
    v38 = *(v34 + 5);
    v284[4] = *(v34 + 4);
    v284[5] = v38;
    v39 = *(v34 + 7);
    v284[6] = *(v34 + 6);
    v284[7] = v39;
    v40 = *(v34 + 1);
    v284[0] = *v34;
    v284[1] = v40;
    v41 = *(v34 + 3);
    v284[2] = *(v34 + 2);
    v284[3] = v41;
    sub_1CEFCCBDC(v284, v283, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    sub_1CEFCCC44(v18, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v285[12] = v284[12];
    v285[13] = v284[13];
    v285[14] = v284[14];
    *&v285[15] = *&v284[15];
    v285[8] = v284[8];
    v285[9] = v284[9];
    v285[10] = v284[10];
    v285[11] = v284[11];
    v285[4] = v284[4];
    v285[5] = v284[5];
    v285[6] = v284[6];
    v285[7] = v284[7];
    v285[0] = v284[0];
    v285[1] = v284[1];
    v285[2] = v284[2];
    v285[3] = v284[3];
    enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v285);
    v33 = v262;
    if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 != 1)
    {
      sub_1CEFCCC44(v284, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v46 = *(&v285[13] + 1);
      goto LABEL_12;
    }
  }

  v43 = v261;
  v44 = (*(*v260[4] + 344))(v33, &v288, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v43)
  {
    return v45 & 1;
  }

  v46 = v44;
  v261 = 0;
LABEL_12:
  v47 = v33 + *(v22 + 52);
  v48 = *(v47 + 13);
  v286[12] = *(v47 + 12);
  v286[13] = v48;
  v286[14] = *(v47 + 14);
  v287 = *(v47 + 30);
  v49 = *(v47 + 9);
  v286[8] = *(v47 + 8);
  v286[9] = v49;
  v50 = *(v47 + 11);
  v286[10] = *(v47 + 10);
  v286[11] = v50;
  v51 = *(v47 + 5);
  v286[4] = *(v47 + 4);
  v286[5] = v51;
  v52 = *(v47 + 7);
  v286[6] = *(v47 + 6);
  v286[7] = v52;
  v53 = *(v47 + 1);
  v286[0] = *v47;
  v286[1] = v53;
  v54 = *(v47 + 3);
  v286[2] = *(v47 + 2);
  v286[3] = v54;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v286) == 1)
  {
    v251 = 0;
  }

  else
  {
    v251 = *(v47 + 26);
  }

  v249 = v24;
  v55 = *v258;
  v244 = v46;
  if ((v55 & 2) == 0)
  {
    goto LABEL_16;
  }

  v57 = v33 + 1;
  v58 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v60 = v59;
  v62 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v68 = v61;
  if (v58 == v62 && v60 == v61)
  {
    v60, v61, v62, v63, v64, v65, v66, v67;
    v68, v69, v70, v71, v72, v73, v74, v75;
LABEL_21:
    v56 = v46;
    v33 = v262;
    goto LABEL_22;
  }

  v76 = sub_1CF9E8048();
  v60, v77, v78, v79, v80, v81, v82, v83;
  v68, v84, v85, v86, v87, v88, v89, v90;
  if (v76)
  {
    goto LABEL_21;
  }

  v122 = v261;
  v123 = (*(*v260[4] + 352))(v57, &v288, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v122)
  {
    return v45 & 1;
  }

  v56 = v123;
  v261 = 0;
  v46 = v244;
  v33 = v262;
  if (v123 == v244)
  {
LABEL_16:
    v56 = v46;
    goto LABEL_22;
  }

  v124 = *(v47 + 13);
  v285[12] = *(v47 + 12);
  v285[13] = v124;
  v285[14] = *(v47 + 14);
  *&v285[15] = *(v47 + 30);
  v125 = *(v47 + 9);
  v285[8] = *(v47 + 8);
  v285[9] = v125;
  v126 = *(v47 + 11);
  v285[10] = *(v47 + 10);
  v285[11] = v126;
  v127 = *(v47 + 5);
  v285[4] = *(v47 + 4);
  v285[5] = v127;
  v128 = *(v47 + 7);
  v285[6] = *(v47 + 6);
  v285[7] = v128;
  v129 = *(v47 + 1);
  v285[0] = *v47;
  v285[1] = v129;
  v130 = *(v47 + 3);
  v285[2] = *(v47 + 2);
  v285[3] = v130;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v285) != 1)
  {
    *(v47 + 27) = v56;
  }

  if ((v55 & 0x400000000000000) == 0)
  {
    *v258 = v55 | 0x400000000000000;
  }

LABEL_22:
  v259 = *(v22 + 48);
  v91 = v251;
  if (*(v33 + v259) != 1 || (v92 = sub_1CF67E058(v249, v46), v93 = sub_1CF67E058(v91, v56), v92 == v93))
  {
    LODWORD(v258) = 0;
    goto LABEL_25;
  }

  if (v93 == 501)
  {
    if (!fpfs_supports_indexAllRemoteItems())
    {
      goto LABEL_38;
    }

LABEL_83:
    v152 = *v33;
    v153 = v253;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v155 = v154;
    result = (*(v252 + 8))(v153, v254);
    v156 = v155 * 1000000000.0;
    if (COERCE__INT64(fabs(v155 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_218:
      __break(1u);
      goto LABEL_219;
    }

    if (v156 <= -9.22337204e18)
    {
LABEL_219:
      __break(1u);
      goto LABEL_220;
    }

    if (v156 >= 9.22337204e18)
    {
LABEL_220:
      __break(1u);
      goto LABEL_221;
    }

    v157 = v156;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE70, &unk_1CF9FB280);
    v158 = swift_allocObject();
    *(v158 + 16) = 0u;
    *(v158 + 32) = 0u;
    *(v158 + 48) = 1;
    *(v158 + 56) = 0u;
    *(v158 + 72) = 0u;
    *(v158 + 88) = 0;
    *(v158 + 96) = xmmword_1CF9FEC30;
    *(v158 + 112) = 0;
    *(v158 + 120) = 0;
    *(v158 + 128) = v157;
    *(v158 + 136) = 0;
    *(v158 + 144) = v152;
    (*(*v255 + 144))();
    LODWORD(v258) = 0;
    goto LABEL_87;
  }

  if (v93 != 502 && v93 != 1003)
  {
    goto LABEL_83;
  }

LABEL_38:
  v104 = *v33;
  v105 = v253;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v107 = v106;
  v108 = *(v252 + 8);
  result = v108(v105, v254);
  v110 = v107 * 1000000000.0;
  if (COERCE__INT64(fabs(v107 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_215:
    __break(1u);
    goto LABEL_216;
  }

  if (v110 <= -9.22337204e18)
  {
LABEL_216:
    __break(1u);
    goto LABEL_217;
  }

  if (v110 >= 9.22337204e18)
  {
LABEL_217:
    __break(1u);
    goto LABEL_218;
  }

  v111 = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE70, &unk_1CF9FB280);
  v112 = swift_allocObject();
  *(v112 + 16) = 0u;
  *(v112 + 32) = 0u;
  LODWORD(v258) = 1;
  *(v112 + 48) = 1;
  *(v112 + 56) = 0u;
  *(v112 + 72) = 0u;
  *(v112 + 88) = 0;
  *(v112 + 120) = 0;
  *(v112 + 128) = v111;
  *(v112 + 136) = 0;
  *(v112 + 144) = v104;
  *(v112 + 96) = xmmword_1CFA04E40;
  *(v112 + 112) = 0;
  v113 = *(*v255 + 144);
  v113();

  if (v250)
  {
    (*(*v260[4][2] + 96))(v285, v114);
    v115 = *&v285[0];
    v116 = v253;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v118 = v117;
    result = v108(v116, v254);
    v119 = v118 * 1000000000.0;
    if (COERCE__INT64(fabs(v118 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_221:
      __break(1u);
      goto LABEL_222;
    }

    if (v119 <= -9.22337204e18)
    {
LABEL_222:
      __break(1u);
      goto LABEL_223;
    }

    if (v119 >= 9.22337204e18)
    {
LABEL_223:
      __break(1u);
      goto LABEL_224;
    }

    v120 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE60, &qword_1CF9FB268);
    v121 = swift_allocObject();
    *(v121 + 16) = 0u;
    *(v121 + 32) = 0u;
    *(v121 + 120) = 0;
    *(v121 + 128) = v120;
    LODWORD(v258) = 1;
    *(v121 + 48) = 1;
    *(v121 + 56) = 0u;
    *(v121 + 72) = 0u;
    *(v121 + 88) = 0;
    *(v121 + 136) = 0;
    *(v121 + 144) = v115;
    *(v121 + 96) = xmmword_1CFA04E50;
    *(v121 + 112) = 0;
    v113();
LABEL_87:
  }

LABEL_25:
  v94 = ((*v260)[75])();
  v95 = v262;
  if (*(v262 + v259) - 1 <= 1)
  {
    goto LABEL_62;
  }

  v96 = v244;
  v97 = sub_1CEFF8538(v249, v244, 0, v94, 0, 0);
  v98 = sub_1CEFF8538(v96, 0, 1, v94, 0, 0);
  if (v97 == 501)
  {
    v99 = v98;
    fpfs_supports_indexAllRemoteItems();
    v97 = v99;
  }

  v100 = *(v95 + v259) == 1;
  v101 = sub_1CEFF8538(v91, v56, 0, v94, v100, 0);
  v102 = sub_1CEFF8538(v56, 0, 1, v94, v100, 0);
  if (v101 == 501)
  {
    v103 = v102;
    fpfs_supports_indexAllRemoteItems();
    v101 = v103;
  }

  if (v101 == 3 || v101 == 1002)
  {
    if (v97 != 3 && v97 != 1002)
    {
      goto LABEL_58;
    }
  }

  else
  {
    if (v101 == 500)
    {
      if (v97 == 500)
      {
        goto LABEL_62;
      }

LABEL_58:
      v131 = *v95;
      LOBYTE(v281) = 0;
      v132 = v131;
      v133 = v253;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v135 = v134;
      result = (*(v252 + 8))(v133, v254);
      v136 = v135 * 1000000000.0;
      if (COERCE__INT64(fabs(v135 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v250 = v56;
        if (v136 > -9.22337204e18)
        {
          if (v136 < 9.22337204e18)
          {
            v137 = v136;
            *(&v285[2] + 8) = v284[0];
            *(&v285[3] + 8) = v284[1];
            *(&v285[4] + 2) = *(&v284[1] + 10);
            *(&v285[5] + 3) = *v283;
            v138 = v281;
            *(v285 + 10) = v270;
            HIWORD(v285[0]) = WORD2(v270);
            *(&v285[6] + 3) = *&v283[16];
            *&v285[0] = v131;
            BYTE8(v285[0]) = 0;
            BYTE9(v285[0]) = v281;
            v243 = xmmword_1CFA04E60;
            v285[1] = xmmword_1CFA04E60;
            *&v285[2] = v136;
            BYTE2(v285[5]) = 0;
            BYTE3(v285[7]) = 10;
            (*(*v255 + 136))(v285);
            *&v285[0] = v131;
            BYTE8(v285[0]) = 0;
            BYTE9(v285[0]) = v138;
            *(v285 + 10) = v270;
            HIWORD(v285[0]) = WORD2(v270);
            v285[1] = v243;
            *&v285[2] = v137;
            *(&v285[2] + 8) = v284[0];
            *(&v285[3] + 8) = v284[1];
            *(&v285[4] + 2) = *(&v284[1] + 10);
            BYTE2(v285[5]) = 0;
            *(&v285[6] + 3) = *&v283[16];
            *(&v285[5] + 3) = *v283;
            BYTE3(v285[7]) = 10;
            sub_1CEFCCC44(v285, &qword_1EC4BE730, &unk_1CFA05490);
            v95 = v262;
            v56 = v250;
            v91 = v251;
            goto LABEL_62;
          }

          goto LABEL_214;
        }
      }

      __break(1u);
LABEL_214:
      __break(1u);
      goto LABEL_215;
    }

    if (v97 == 3 || v97 == 500 || v97 == 1002)
    {
      goto LABEL_58;
    }
  }

LABEL_62:
  v139 = *v95;
  v140 = v261;
  sub_1CF7EBA74(*v95, v256, v257, v285);
  if (v140)
  {
    return v45 & 1;
  }

  memcpy(v284, v285, 0x208uLL);
  if (sub_1CF08B99C(v284) == 1)
  {
    memcpy(v283, v285, sizeof(v283));
LABEL_188:
    sub_1CEFCCC44(v283, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    goto LABEL_189;
  }

  memcpy(v283, v285, sizeof(v283));
  v141 = v283[512];
  if (v283[216] == 255)
  {
    v147 = v91;
    v148 = *(v95 + v259);
    v149 = *(v95 + v259);
    if (v249 > 501)
    {
      if ((v249 - 1000) >= 3)
      {
        if (v249 == 502)
        {
          v151 = qword_1CFA05BA8[v148];
          goto LABEL_109;
        }

        if (v249 == 1003)
        {
          if ((v149 - 2) >= 2)
          {
            v160 = v255;
            if (*(v95 + v259))
            {
              v151 = 4;
              goto LABEL_110;
            }

            v151 = 64;
            v159 = v147;
            if (v147 <= 999)
            {
              if (v147 == 500)
              {
                goto LABEL_178;
              }

              if (v147 == 501)
              {
                v164 = v283[512];
                LOBYTE(v149) = 0;
                if (fpfs_supports_indexAllRemoteItems())
                {
                  goto LABEL_178;
                }

LABEL_121:
                v163 = 16;
                if (((1u >> (v149 & 0xF)) & ((v164 & 3) == 0)) == 0)
                {
                  v163 = 0;
                }

                goto LABEL_179;
              }

              v149 = 0;
              if (v147 == 502)
              {
                v163 = 64;
                v151 = 64;
                if ((v283[512] & 2) != 0)
                {
                  goto LABEL_178;
                }

LABEL_179:
                if ((v163 & ~v151) == 0)
                {
                  goto LABEL_188;
                }

                v183 = v95[1];
                v184 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v186 = v185;
                v188 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v194 = v184;
                v195 = v187;
                if (v194 == v188 && v186 == v187)
                {
                  v186, v187, v188, v189, v190, v191, v192, v193;
                  v195, v196, v197, v198, v199, v200, v201, v202;
                  goto LABEL_188;
                }

                v203 = sub_1CF9E8048();
                v186, v204, v205, v206, v207, v208, v209, v210;
                v195, v211, v212, v213, v214, v215, v216, v217;
                if (v203)
                {
                  goto LABEL_188;
                }

                v218 = v183;
                v219 = v253;
                sub_1CF9E5CE8();
                sub_1CF9E5C98();
                v221 = v220;
                result = (*(v252 + 8))(v219, v254);
                v222 = v221 * 1000000000.0;
                if (COERCE__INT64(fabs(v221 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  if (v222 > -9.22337204e18)
                  {
                    if (v222 < 9.22337204e18)
                    {
                      v223 = v222;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0220, &unk_1CFA05730);
                      v224 = swift_allocObject();
                      *(v224 + 16) = 0u;
                      *(v224 + 32) = 0u;
                      *(v224 + 48) = 1;
                      *(v224 + 56) = 0u;
                      *(v224 + 72) = 0u;
                      *(v224 + 88) = 0;
                      *(v224 + 120) = 0;
                      *(v224 + 128) = v223;
                      *(v224 + 136) = 0;
                      *(v224 + 144) = v218;
                      *(v224 + 96) = xmmword_1CFA04E70;
                      *(v224 + 112) = 0;
                      (*(*v160 + 144))();

                      goto LABEL_188;
                    }

                    goto LABEL_226;
                  }

LABEL_225:
                  __break(1u);
LABEL_226:
                  __break(1u);
                  goto LABEL_227;
                }

LABEL_224:
                __break(1u);
                goto LABEL_225;
              }

              goto LABEL_175;
            }

            v149 = 0;
          }

          else
          {
            v151 = 0;
            v159 = v147;
            v160 = v255;
            if (v147 <= 999)
            {
              switch(v147)
              {
                case 500:
                  goto LABEL_178;
                case 501:
LABEL_120:
                  v164 = v141;
                  if (fpfs_supports_indexAllRemoteItems())
                  {
                    goto LABEL_178;
                  }

                  goto LABEL_121;
                case 502:
                  goto LABEL_178;
              }

              goto LABEL_175;
            }
          }

          if ((v159 - 1000) < 3)
          {
            goto LABEL_178;
          }

          goto LABEL_175;
        }

        goto LABEL_101;
      }
    }

    else
    {
      if (v249 == 3)
      {
        v151 = 4;
LABEL_109:
        v160 = v255;
LABEL_110:
        if (v147 <= 999)
        {
          if (v147 != 500)
          {
            if (v147 != 501)
            {
              if (v147 == 502)
              {
                if (!v149)
                {
                  goto LABEL_115;
                }

LABEL_178:
                v163 = 0;
                goto LABEL_179;
              }

              goto LABEL_175;
            }

            goto LABEL_120;
          }

LABEL_118:
          if (v149 != 1)
          {
            goto LABEL_178;
          }

LABEL_119:
          v163 = 4;
          goto LABEL_179;
        }

        if ((v147 - 1000) < 3)
        {
          goto LABEL_118;
        }

LABEL_175:
        if (v147 != 3)
        {
          if (v147 != 1003 || (v149 - 2) < 2)
          {
            goto LABEL_178;
          }

          if (!v149)
          {
LABEL_115:
            if ((v141 & 2) == 0)
            {
              v163 = 64;
              goto LABEL_179;
            }

            goto LABEL_178;
          }
        }

        goto LABEL_119;
      }

      if (v249 != 500)
      {
        if (v249 == 501)
        {
          v150 = v283[512];
          if (fpfs_supports_indexAllRemoteItems())
          {
            v151 = 0;
          }

          else
          {
            v151 = qword_1CFA05B88[v148];
          }

          v141 = v150;
          goto LABEL_108;
        }

LABEL_101:
        v151 = 0;
        goto LABEL_109;
      }
    }

    v151 = 4 * (v149 == 1);
LABEL_108:
    v149 = *(v95 + v259);
    goto LABEL_109;
  }

  v281 = *&v283[208];
  v282 = v283[216];
  if (v283[345] != 6 || v283[96] == 2)
  {
    goto LABEL_188;
  }

  *&v257 = *&v283[400];
  v262 = *&v283[512];
  v142 = v259;
  v143 = sub_1CEFF8538(v249, v244, 0, v94, *(v95 + v259) == 1, *&v283[512] != 0);
  v144 = v143;
  v145 = *(v95 + v142);
  if (v143 > 501)
  {
    v146 = v262;
    if ((v143 - 1000) >= 3)
    {
      if (v143 == 502)
      {
        v162 = qword_1CFA05BA8;
      }

      else
      {
        if (v143 != 1003)
        {
          goto LABEL_124;
        }

        v162 = &unk_1CFA05BC8;
      }

      v161 = v162[v145];
LABEL_134:
      v261 = v161;
      goto LABEL_135;
    }

LABEL_99:
    v161 = 4 * (v145 == 1);
    goto LABEL_134;
  }

  v146 = v262;
  if (v143 == 3)
  {
    v161 = 4;
    goto LABEL_134;
  }

  if (v143 == 500)
  {
    goto LABEL_99;
  }

  if (v143 != 501)
  {
LABEL_124:
    v261 = 0;
    goto LABEL_135;
  }

  if (fpfs_supports_indexAllRemoteItems())
  {
    v261 = 0;
  }

  else
  {
    v261 = qword_1CFA05B88[v145];
  }

  v146 = v262;
LABEL_135:
  v165 = v259;
  v166 = sub_1CEFF8538(v91, v56, 0, v94, *(v95 + v259) == 1, v146 != 0);
  v167 = v166;
  v168 = *(v95 + v165);
  if (v166 <= 501)
  {
    v169 = v255;
    if (v166 != 3)
    {
      if (v166 != 500)
      {
        if (v166 == 501 && (fpfs_supports_indexAllRemoteItems() & 1) == 0)
        {
          if (((1u >> (v168 & 0xF)) & ((v262 & 3) == 0)) != 0)
          {
            v170 = 16;
          }

          else
          {
            v170 = 0;
          }

          goto LABEL_158;
        }

LABEL_148:
        v170 = 0;
        goto LABEL_158;
      }

LABEL_144:
      v170 = 4 * (v168 == 1);
      goto LABEL_158;
    }

LABEL_157:
    v170 = 4;
    goto LABEL_158;
  }

  v169 = v255;
  if ((v166 - 1000) < 3)
  {
    goto LABEL_144;
  }

  if (v166 != 502)
  {
    if (v166 != 1003 || (v168 - 2) < 2)
    {
      goto LABEL_148;
    }

    if (!v168)
    {
      if ((v262 & 2) == 0)
      {
        v170 = 64;
        goto LABEL_158;
      }

      goto LABEL_148;
    }

    goto LABEL_157;
  }

  if ((0xEu >> (v168 & 0xF)) & 1 | ((v262 & 2) != 0))
  {
    v170 = 0;
  }

  else
  {
    v170 = 64;
  }

LABEL_158:
  if ((((*v260)[19])() & 0x40000) == 0 && v167 == 501 && (v262 & 2) != 0)
  {
    v280 = 0;
    v270 = v139;
    v271 = 0;
    v274 = xmmword_1CF9FD920;
    v279[16] = 14;
    v262 = *(*v169 + 136);
    v171 = v170;
    v172 = v139;
    (v262)(&v270);
    v173 = v255;

    v170 = v171;
    v169 = v173;
  }

  if (v144 != 1)
  {
    goto LABEL_171;
  }

  v174 = v248;
  (*(*v260[5] + 240))(&v281, 1, &v288, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  v175 = v247;
  v176 = (*(v246 + 48))(v174, 1, v247);
  if (v176 == 1)
  {
    v177 = &qword_1EC4C1B40;
    v178 = &unk_1CF9FCB70;
    v179 = v174;
LABEL_170:
    sub_1CEFCCC44(v179, v177, v178);
LABEL_171:
    v182 = v260;
LABEL_172:
    (*(*v182[3] + 472))(&v281, (v170 ^ v261) & v261, v170 & (v170 ^ v261) & 0x14, &v288, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
    sub_1CEFCCC44(v283, &unk_1EC4BFD80, &unk_1CFA0A2A0);
LABEL_189:
    v45 = v258;
    return v45 & 1;
  }

  v180 = v245;
  sub_1CEFE55D0(v174, v245, &unk_1EC4BE360, &qword_1CF9FE650);
  v181 = (v180 + *(v175 + 48));
  if ((v181[*(type metadata accessor for ItemMetadata(0) + 80)] & 1) == 0 || v257 >> 60 == 11)
  {
LABEL_169:
    v177 = &unk_1EC4BE360;
    v178 = &qword_1CF9FE650;
    v179 = v180;
    goto LABEL_170;
  }

  if (v167 > 501)
  {
    if (v167 != 502 && v167 != 1003)
    {
      goto LABEL_169;
    }

    goto LABEL_199;
  }

  if (v167 != 2)
  {
    if (v167 != 501 || fpfs_supports_indexAllRemoteItems())
    {
      goto LABEL_169;
    }

LABEL_199:
    v280 = 0;
    v270 = v139;
    v271 = 0;
    v274 = xmmword_1CF9FD920;
    v279[16] = 14;
    v225 = *(*v169 + 136);
    v226 = v139;
    v225(&v270);

    sub_1CEFCCC44(v180, &unk_1EC4BE360, &qword_1CF9FE650);
    sub_1CEFCCC44(v283, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    v45 = 0;
    return v45 & 1;
  }

  v262 = v170;
  v280 = 1;
  v270 = v281;
  LOBYTE(v271) = v282;
  HIBYTE(v271) = 1;
  v274 = 0uLL;
  v275 = 0;
  *v276 = 0xB000000000000000;
  memset(&v276[8], 0, 32);
  *&v276[40] = 257;
  *&v279[15] = 2317;
  v259 = *(*v169 + 136);
  v227 = (v259)(&v270);
  if ((((*v260)[69])(v227) & 1) == 0 || *v181 - 1 <= 1)
  {
LABEL_208:
    v269 = 0;
    v236 = v139;
    v237 = v253;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v239 = v238;
    result = (*(v252 + 8))(v237, v254);
    v240 = v239 * 1000000000.0;
    if (COERCE__INT64(fabs(v239 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v240 > -9.22337204e18)
      {
        if (v240 < 9.22337204e18)
        {
          v241 = v240;
          v242 = v269;
          v270 = v139;
          LOBYTE(v271) = 0;
          HIBYTE(v271) = v269;
          v272 = v267;
          v273 = v268;
          v257 = xmmword_1CFA00210;
          v274 = xmmword_1CFA00210;
          v275 = v240;
          *v276 = v265;
          *&v276[16] = v266[0];
          *&v276[26] = *(v266 + 10);
          v277 = 0;
          *v279 = v264;
          v278 = v263;
          v279[16] = 10;
          (v259)(&v270);
          v270 = v139;
          LOBYTE(v271) = 0;
          HIBYTE(v271) = v242;
          v272 = v267;
          v273 = v268;
          v274 = v257;
          v275 = v241;
          *v276 = v265;
          *&v276[16] = v266[0];
          *&v276[26] = *(v266 + 10);
          v277 = 0;
          *v279 = v264;
          v278 = v263;
          v279[16] = 10;
          sub_1CEFCCC44(&v270, &qword_1EC4BE730, &unk_1CFA05490);
          sub_1CEFCCC44(v245, &unk_1EC4BE360, &qword_1CF9FE650);
          v182 = v260;
          v170 = v262;
          goto LABEL_172;
        }

        goto LABEL_229;
      }

LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
      goto LABEL_230;
    }

LABEL_227:
    __break(1u);
    goto LABEL_228;
  }

  v228 = v281;
  v229 = v282;
  v230 = v253;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v232 = v231;
  result = (*(v252 + 8))(v230, v254);
  v233 = v232 * 1000000000.0;
  if (COERCE__INT64(fabs(v232 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_230:
    __break(1u);
    goto LABEL_231;
  }

  if (v233 <= -9.22337204e18)
  {
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  if (v233 < 9.22337204e18)
  {
    v234 = v233;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9D0, &qword_1CF9FAD60);
    v235 = swift_allocObject();
    *(v235 + 152) = v229;
    *(v235 + 16) = 0u;
    *(v235 + 32) = 0u;
    *(v235 + 48) = 1;
    *(v235 + 56) = 0u;
    *(v235 + 72) = 0u;
    *(v235 + 88) = 0;
    *(v235 + 96) = xmmword_1CF9FEC30;
    *(v235 + 112) = 0;
    *(v235 + 120) = 0;
    *(v235 + 128) = v234;
    *(v235 + 136) = 2;
    *(v235 + 144) = v228;
    (*(*v255 + 152))();

    goto LABEL_208;
  }

LABEL_232:
  __break(1u);
  return result;
}

uint64_t sub_1CF3F5E8C(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5, int a6, void (*a7)(void), int a8)
{
  LODWORD(v190) = a6;
  v194 = a5;
  v199 = a4;
  v197 = a3;
  *&v198 = a2;
  v193 = sub_1CF9E5CF8();
  v191 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v192 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v189 = &v180 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v187 = *(v15 - 8);
  v188 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v186 = &v180 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v180 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v180 - v21;
  v195 = a7;
  v224 = a7;
  LODWORD(v196) = a8;
  v225 = a8;
  sub_1CEFCCBDC(a1, &v180 - v21, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v24 = *(*(v23 - 8) + 48);
  if (v24(v22, 1, v23) == 1)
  {
    sub_1CEFCCC44(v22, &qword_1EC4C1B40, &unk_1CF9FCB70);
LABEL_4:
    v33 = 0;
    goto LABEL_6;
  }

  v25 = &v22[*(v23 + 52)];
  v26 = *(v25 + 13);
  v220[12] = *(v25 + 12);
  v220[13] = v26;
  v220[14] = *(v25 + 14);
  *&v220[15] = *(v25 + 30);
  v27 = *(v25 + 9);
  v220[8] = *(v25 + 8);
  v220[9] = v27;
  v28 = *(v25 + 11);
  v220[10] = *(v25 + 10);
  v220[11] = v28;
  v29 = *(v25 + 5);
  v220[4] = *(v25 + 4);
  v220[5] = v29;
  v30 = *(v25 + 7);
  v220[6] = *(v25 + 6);
  v220[7] = v30;
  v31 = *(v25 + 1);
  v220[0] = *v25;
  v220[1] = v31;
  v32 = *(v25 + 3);
  v220[2] = *(v25 + 2);
  v220[3] = v32;
  sub_1CEFCCBDC(v220, v219, &qword_1EC4BECF0, &unk_1CF9FEEB0);
  sub_1CEFCCC44(v22, &unk_1EC4BE360, &qword_1CF9FE650);
  v221[12] = v220[12];
  v221[13] = v220[13];
  v221[14] = v220[14];
  *&v221[15] = *&v220[15];
  v221[8] = v220[8];
  v221[9] = v220[9];
  v221[10] = v220[10];
  v221[11] = v220[11];
  v221[4] = v220[4];
  v221[5] = v220[5];
  v221[6] = v220[6];
  v221[7] = v220[7];
  v221[0] = v220[0];
  v221[1] = v220[1];
  v221[2] = v220[2];
  v221[3] = v220[3];
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v221) == 1)
  {
    goto LABEL_4;
  }

  sub_1CEFCCC44(v220, &qword_1EC4BECF0, &unk_1CF9FEEB0);
  v33 = *&v221[13];
LABEL_6:
  v34 = v198;
  sub_1CEFCCBDC(a1, v19, &qword_1EC4C1B40, &unk_1CF9FCB70);
  if (v24(v19, 1, v23) == 1)
  {
    sub_1CEFCCC44(v19, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v35 = v199;
  }

  else
  {
    v36 = &v19[*(v23 + 52)];
    v37 = *(v36 + 13);
    v220[12] = *(v36 + 12);
    v220[13] = v37;
    v220[14] = *(v36 + 14);
    *&v220[15] = *(v36 + 30);
    v38 = *(v36 + 9);
    v220[8] = *(v36 + 8);
    v220[9] = v38;
    v39 = *(v36 + 11);
    v220[10] = *(v36 + 10);
    v220[11] = v39;
    v40 = *(v36 + 5);
    v220[4] = *(v36 + 4);
    v220[5] = v40;
    v41 = *(v36 + 7);
    v220[6] = *(v36 + 6);
    v220[7] = v41;
    v42 = *(v36 + 1);
    v220[0] = *v36;
    v220[1] = v42;
    v43 = *(v36 + 3);
    v220[2] = *(v36 + 2);
    v220[3] = v43;
    sub_1CEFCCBDC(v220, v219, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    sub_1CEFCCC44(v19, &unk_1EC4BE360, &qword_1CF9FE650);
    v221[12] = v220[12];
    v221[13] = v220[13];
    v221[14] = v220[14];
    *&v221[15] = *&v220[15];
    v221[8] = v220[8];
    v221[9] = v220[9];
    v221[10] = v220[10];
    v221[11] = v220[11];
    v221[4] = v220[4];
    v221[5] = v220[5];
    v221[6] = v220[6];
    v221[7] = v220[7];
    v221[0] = v220[0];
    v221[1] = v220[1];
    v221[2] = v220[2];
    v221[3] = v220[3];
    enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v221);
    v35 = v199;
    if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 != 1)
    {
      sub_1CEFCCC44(v220, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v48 = *(&v221[13] + 1);
      v47 = v8;
      goto LABEL_12;
    }
  }

  v45 = (*(*v35[4] + 344))(v34, &v224, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  v47 = v8;
  if (v8)
  {
    return v46 & 1;
  }

  v48 = v45;
LABEL_12:
  v49 = v34 + *(v23 + 52);
  v50 = *(v49 + 208);
  v222[12] = *(v49 + 192);
  v222[13] = v50;
  v222[14] = *(v49 + 224);
  v223 = *(v49 + 240);
  v51 = *(v49 + 144);
  v222[8] = *(v49 + 128);
  v222[9] = v51;
  v52 = *(v49 + 176);
  v222[10] = *(v49 + 160);
  v222[11] = v52;
  v53 = *(v49 + 80);
  v222[4] = *(v49 + 64);
  v222[5] = v53;
  v54 = *(v49 + 112);
  v222[6] = *(v49 + 96);
  v222[7] = v54;
  v55 = *(v49 + 16);
  v222[0] = *v49;
  v222[1] = v55;
  v56 = *(v49 + 48);
  v222[2] = *(v49 + 32);
  v222[3] = v56;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v222) == 1)
  {
    v57 = 0;
  }

  else
  {
    v57 = *(v49 + 208);
  }

  v58 = *v197;
  v184 = v48;
  if ((v58 & 2) == 0)
  {
    goto LABEL_16;
  }

  v73 = *(v34 + 16);
  v74 = *v34;
  v75 = *(v34 + 8);
  if (*(v34 + 24))
  {
    if (*(v34 + 24) == 1)
    {
      if (v75 != 1 || v73 != v74)
      {
        goto LABEL_77;
      }

LABEL_16:
      v59 = v48;
      goto LABEL_17;
    }

    if (v73)
    {
      if (v75 == 2 && v74 == 1)
      {
        goto LABEL_16;
      }
    }

    else if (v75 == 2 && !v74)
    {
      goto LABEL_16;
    }
  }

  else if (!*(v34 + 8) && v73 == v74)
  {
    goto LABEL_16;
  }

LABEL_77:
  v113 = (*(*v199[4] + 352))(v34 + 16, &v224, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (v47)
  {
    return v46 & 1;
  }

  v48 = v184;
  v183 = v113;
  if (v113 == v184)
  {
    goto LABEL_16;
  }

  v114 = *(v49 + 208);
  v221[12] = *(v49 + 192);
  v221[13] = v114;
  v221[14] = *(v49 + 224);
  *&v221[15] = *(v49 + 240);
  v115 = *(v49 + 144);
  v221[8] = *(v49 + 128);
  v221[9] = v115;
  v116 = *(v49 + 176);
  v221[10] = *(v49 + 160);
  v221[11] = v116;
  v117 = *(v49 + 80);
  v221[4] = *(v49 + 64);
  v221[5] = v117;
  v118 = *(v49 + 112);
  v221[6] = *(v49 + 96);
  v221[7] = v118;
  v119 = *(v49 + 16);
  v221[0] = *v49;
  v221[1] = v119;
  v120 = *(v49 + 48);
  v221[2] = *(v49 + 32);
  v221[3] = v120;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v221) != 1)
  {
    *(v49 + 216) = v183;
  }

  if ((v58 & 0x400000000000000) == 0)
  {
    *v197 = v58 | 0x400000000000000;
  }

  v59 = v183;
LABEL_17:
  v197 = *(v23 + 48);
  v60 = *(v34 + v197);
  v182 = v57;
  v183 = v59;
  v185 = v33;
  if (v60 != 1 || (v61 = sub_1CF67E058(v33, v48), v62 = sub_1CF67E058(v57, v59), v61 == v62))
  {
    v181 = 0;
    goto LABEL_20;
  }

  if (v62 == 501)
  {
    if (!fpfs_supports_indexAllRemoteItems())
    {
      goto LABEL_38;
    }

LABEL_92:
    v124 = *v34;
    v125 = *(v34 + 8);
    v126 = v192;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v128 = v127;
    result = (*(v191 + 8))(v126, v193);
    v129 = v128 * 1000000000.0;
    if (COERCE__INT64(fabs(v128 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_235:
      __break(1u);
      goto LABEL_236;
    }

    if (v129 <= -9.22337204e18)
    {
LABEL_236:
      __break(1u);
      goto LABEL_237;
    }

    if (v129 >= 9.22337204e18)
    {
LABEL_237:
      __break(1u);
      goto LABEL_238;
    }

    v130 = v129;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD960, &qword_1CF9FAC80);
    v131 = swift_allocObject();
    *(v131 + 152) = v125;
    *(v131 + 16) = 0u;
    *(v131 + 32) = 0u;
    *(v131 + 48) = 1;
    *(v131 + 56) = 0u;
    *(v131 + 72) = 0u;
    *(v131 + 88) = 0;
    *(v131 + 96) = xmmword_1CF9FEC30;
    *(v131 + 112) = 0;
    *(v131 + 120) = 0;
    *(v131 + 128) = v130;
    *(v131 + 136) = 0;
    *(v131 + 144) = v124;
    (*(*v194 + 144))();
    v181 = 0;
    goto LABEL_96;
  }

  if (v62 != 502 && v62 != 1003)
  {
    goto LABEL_92;
  }

LABEL_38:
  v76 = *v34;
  v77 = *(v34 + 8);
  v78 = v192;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v80 = v79;
  v81 = *(v191 + 8);
  result = v81(v78, v193);
  v83 = v80 * 1000000000.0;
  if (COERCE__INT64(fabs(v80 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_232:
    __break(1u);
    goto LABEL_233;
  }

  if (v83 <= -9.22337204e18)
  {
LABEL_233:
    __break(1u);
    goto LABEL_234;
  }

  if (v83 >= 9.22337204e18)
  {
LABEL_234:
    __break(1u);
    goto LABEL_235;
  }

  v84 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD960, &qword_1CF9FAC80);
  v85 = swift_allocObject();
  *(v85 + 152) = v77;
  *(v85 + 16) = 0u;
  *(v85 + 32) = 0u;
  v181 = 1;
  *(v85 + 48) = 1;
  *(v85 + 56) = 0u;
  *(v85 + 72) = 0u;
  *(v85 + 88) = 0;
  *(v85 + 120) = 0;
  *(v85 + 128) = v84;
  *(v85 + 136) = 0;
  *(v85 + 144) = v76;
  *(v85 + 96) = xmmword_1CFA04E40;
  *(v85 + 112) = 0;
  v86 = *(*v194 + 144);
  v86();

  if (v190)
  {
    (*(*v199[4][2] + 96))(v221, v87);
    v88 = v192;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v90 = v89;
    result = v81(v88, v193);
    v91 = v90 * 1000000000.0;
    if (COERCE__INT64(fabs(v90 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_238:
      __break(1u);
      goto LABEL_239;
    }

    if (v91 <= -9.22337204e18)
    {
LABEL_239:
      __break(1u);
      goto LABEL_240;
    }

    if (v91 >= 9.22337204e18)
    {
LABEL_240:
      __break(1u);
      goto LABEL_241;
    }

    v92 = v47;
    v93 = v91;
    v94 = *&v221[0];
    v95 = BYTE8(v221[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF60, &unk_1CFA05620);
    v96 = swift_allocObject();
    *(v96 + 152) = v95;
    *(v96 + 16) = 0u;
    *(v96 + 32) = 0u;
    v181 = 1;
    *(v96 + 48) = 1;
    *(v96 + 56) = 0u;
    *(v96 + 72) = 0u;
    *(v96 + 88) = 0;
    *(v96 + 120) = 0;
    *(v96 + 128) = v93;
    *(v96 + 136) = 0;
    *(v96 + 144) = v94;
    *(v96 + 96) = xmmword_1CFA04E50;
    *(v96 + 112) = 0;
    v86();
    v47 = v92;
LABEL_96:
  }

LABEL_20:
  v63 = ((*v199)[75])();
  if (*(v34 + v197) - 1 <= 1)
  {
    goto LABEL_63;
  }

  v64 = v184;
  v65 = sub_1CEFF8538(v185, v184, 0, v63, 0, 0);
  v66 = sub_1CEFF8538(v64, 0, 1, v63, 0, 0);
  if (v65 == 501)
  {
    v67 = v66;
    fpfs_supports_indexAllRemoteItems();
    v65 = v67;
  }

  v68 = *(v34 + v197) == 1;
  v69 = v183;
  v70 = sub_1CEFF8538(v182, v183, 0, v63, v68, 0);
  v71 = sub_1CEFF8538(v69, 0, 1, v63, v68, 0);
  if (v70 == 501)
  {
    v72 = v71;
    fpfs_supports_indexAllRemoteItems();
    v70 = v72;
  }

  if (v70 == 3 || v70 == 1002)
  {
    if (v65 != 3 && v65 != 1002)
    {
      goto LABEL_59;
    }
  }

  else
  {
    if (v70 == 500)
    {
      if (v65 == 500)
      {
        goto LABEL_63;
      }

LABEL_59:
      v97 = *v34;
      v98 = *(v34 + 8);
      LOBYTE(v213) = 0;
      v99 = v192;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v101 = v100;
      result = (*(v191 + 8))(v99, v193);
      v102 = v101 * 1000000000.0;
      if (COERCE__INT64(fabs(v101 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v102 > -9.22337204e18)
      {
        v190 = v47;
        if (v102 < 9.22337204e18)
        {
          v103 = v102;
          *(&v221[3] + 8) = v220[1];
          *(&v221[4] + 8) = v220[2];
          *(&v221[5] + 8) = v220[3];
          *(&v221[6] + 2) = *(&v220[3] + 10);
          v104 = v213;
          *(v221 + 10) = v219[0];
          HIWORD(v221[0]) = WORD2(v219[0]);
          *(&v221[2] + 8) = v220[0];
          *&v221[0] = v97;
          BYTE8(v221[0]) = v98;
          BYTE9(v221[0]) = v213;
          v180 = xmmword_1CFA04E60;
          v221[1] = xmmword_1CFA04E60;
          *&v221[2] = v102;
          WORD1(v221[7]) = 2560;
          (*(*v194 + 136))(v221);
          v221[1] = v180;
          *(&v221[3] + 8) = v220[1];
          *(&v221[4] + 8) = v220[2];
          *(&v221[5] + 8) = v220[3];
          *(&v221[6] + 2) = *(&v220[3] + 10);
          *&v221[0] = v97;
          BYTE8(v221[0]) = v98;
          BYTE9(v221[0]) = v104;
          *(v221 + 10) = v219[0];
          HIWORD(v221[0]) = WORD2(v219[0]);
          *&v221[2] = v103;
          *(&v221[2] + 8) = v220[0];
          WORD1(v221[7]) = 2560;
          sub_1CEFCCC44(v221, &qword_1EC4BE6D0, &qword_1CF9FE560);
          v47 = v190;
          goto LABEL_63;
        }

        goto LABEL_231;
      }

      __break(1u);
LABEL_231:
      __break(1u);
      goto LABEL_232;
    }

    if (v65 == 3 || v65 == 500 || v65 == 1002)
    {
      goto LABEL_59;
    }
  }

LABEL_63:
  sub_1CF7EB934(*v34, *(v34 + 8), v195, v196, v221);
  if (v47)
  {
    return v46 & 1;
  }

  memcpy(v220, v221, 0x208uLL);
  if (sub_1CF08B99C(v220) == 1)
  {
    memcpy(v219, v221, sizeof(v219));
LABEL_214:
    sub_1CEFCCC44(v219, &unk_1EC4BFC20, &unk_1CFA0A290);
    v46 = v181;
    return v46 & 1;
  }

  memcpy(v219, v221, sizeof(v219));
  v105 = v219[31];
  v106 = v219[64];
  if (!v219[31])
  {
    v121 = *(v34 + v197);
    v122 = *(v34 + v197);
    if (v185 <= 501)
    {
      if (v185 != 3)
      {
        if (v185 != 500)
        {
          if (v185 == 501)
          {
            if (fpfs_supports_indexAllRemoteItems())
            {
              v123 = 0;
            }

            else
            {
              v123 = qword_1CFA05B88[v121];
            }

            goto LABEL_99;
          }

LABEL_110:
          v123 = 0;
          goto LABEL_126;
        }

LABEL_98:
        v123 = 4 * (v122 == 1);
LABEL_99:
        v122 = *(v34 + v197);
LABEL_126:
        if (v182 <= 999)
        {
          if (v182 != 500)
          {
            if (v182 != 501)
            {
              if (v182 == 502)
              {
                if (!v122)
                {
                  goto LABEL_131;
                }

LABEL_194:
                v134 = 0;
                goto LABEL_195;
              }

              goto LABEL_179;
            }

LABEL_193:
            if ((fpfs_supports_indexAllRemoteItems() & 1) == 0)
            {
              v160 = 16;
              if (((1u >> (v122 & 0xF)) & ((v106 & 3) == 0)) == 0)
              {
                v160 = 0;
              }

              if ((v160 & ~v123) == 0)
              {
                goto LABEL_214;
              }

              goto LABEL_196;
            }

            goto LABEL_194;
          }

LABEL_135:
          if (v122 != 1)
          {
            goto LABEL_194;
          }

LABEL_136:
          if ((~v123 & 4) == 0)
          {
            goto LABEL_214;
          }

          goto LABEL_196;
        }

        if ((v182 - 1000) < 3)
        {
          goto LABEL_135;
        }

LABEL_179:
        if (v182 != 3)
        {
          if (v182 != 1003 || (v122 - 2) < 2)
          {
            goto LABEL_194;
          }

          if (!v122)
          {
LABEL_131:
            if ((v106 & 2) == 0)
            {
              if ((~v123 & 0x40) == 0)
              {
                goto LABEL_214;
              }

              goto LABEL_196;
            }

            goto LABEL_194;
          }
        }

        goto LABEL_136;
      }

LABEL_125:
      v123 = 4;
      goto LABEL_126;
    }

    if ((v185 - 1000) < 3)
    {
      goto LABEL_98;
    }

    if (v185 == 502)
    {
      v123 = qword_1CFA05BA8[v121];
      goto LABEL_126;
    }

    if (v185 != 1003)
    {
      goto LABEL_110;
    }

    if ((v122 - 2) >= 2)
    {
      if (*(v34 + v197))
      {
        goto LABEL_125;
      }

      v123 = 64;
      v132 = v182;
      if (v182 <= 999)
      {
        if (v182 == 500)
        {
          goto LABEL_194;
        }

        if (v182 != 501)
        {
          v122 = 0;
          if (v182 == 502)
          {
            v134 = 64;
            v123 = 64;
            if ((v219[64] & 2) == 0)
            {
LABEL_195:
              if ((v134 & ~v123) == 0)
              {
                goto LABEL_214;
              }

LABEL_196:
              v151 = *v34;
              v152 = *(v34 + 16);
              v153 = *(v34 + 24);
              if (*(v34 + 8))
              {
                if (*(v34 + 8) == 1)
                {
                  if (v153 == 1 && v151 == v152)
                  {
                    goto LABEL_214;
                  }
                }

                else if (v151)
                {
                  if (v153 == 2 && v152 == 1)
                  {
                    goto LABEL_214;
                  }
                }

                else if (v153 == 2 && !v152)
                {
                  goto LABEL_214;
                }
              }

              else if (!*(v34 + 24) && v151 == v152)
              {
                goto LABEL_214;
              }

              v154 = v192;
              sub_1CF9E5CE8();
              sub_1CF9E5C98();
              v156 = v155;
              result = (*(v191 + 8))(v154, v193);
              v157 = v156 * 1000000000.0;
              if (COERCE__INT64(fabs(v156 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v157 > -9.22337204e18)
                {
                  if (v157 < 9.22337204e18)
                  {
                    v158 = v157;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C00E0, &qword_1CF9FACC8);
                    v159 = swift_allocObject();
                    *(v159 + 152) = v153;
                    *(v159 + 16) = 0u;
                    *(v159 + 32) = 0u;
                    *(v159 + 48) = 1;
                    *(v159 + 56) = 0u;
                    *(v159 + 72) = 0u;
                    *(v159 + 88) = 0;
                    *(v159 + 120) = 0;
                    *(v159 + 128) = v158;
                    *(v159 + 136) = 0;
                    *(v159 + 144) = v152;
                    *(v159 + 96) = xmmword_1CFA04E70;
                    *(v159 + 112) = 0;
                    (*(*v194 + 144))();

                    goto LABEL_214;
                  }

                  goto LABEL_243;
                }

LABEL_242:
                __break(1u);
LABEL_243:
                __break(1u);
                goto LABEL_244;
              }

LABEL_241:
              __break(1u);
              goto LABEL_242;
            }

            goto LABEL_194;
          }

          goto LABEL_179;
        }

        LOBYTE(v122) = 0;
        goto LABEL_193;
      }

      v122 = 0;
    }

    else
    {
      v123 = 0;
      v132 = v182;
      if (v182 <= 999)
      {
        switch(v182)
        {
          case 500:
            goto LABEL_194;
          case 501:
            goto LABEL_193;
          case 502:
            goto LABEL_194;
        }

        goto LABEL_179;
      }
    }

    if ((v132 - 1000) < 3)
    {
      goto LABEL_194;
    }

    goto LABEL_179;
  }

  v218 = v219[31];
  if (BYTE1(v219[43]) != 6 || LOBYTE(v219[17]) == 2)
  {
    goto LABEL_214;
  }

  v195 = v219[50];
  v190 = 0;
  v107 = v197;
  v108 = *(v34 + v197) == 1;
  v196 = v219[31];
  v109 = sub_1CEFF8538(v185, v184, 0, v63, v108, v106 != 0);
  v110 = v109;
  v111 = *(v34 + v107);
  if (v109 > 501)
  {
    if ((v109 - 1000) >= 3)
    {
      if (v109 == 502)
      {
        v112 = qword_1CFA05BA8;
        goto LABEL_139;
      }

      if (v109 == 1003)
      {
        v112 = &unk_1CFA05BC8;
        goto LABEL_139;
      }

LABEL_115:
      v133 = 0;
      goto LABEL_140;
    }

LABEL_109:
    v133 = 4 * (v111 == 1);
    goto LABEL_140;
  }

  if (v109 == 3)
  {
    v133 = 4;
    goto LABEL_140;
  }

  if (v109 == 500)
  {
    goto LABEL_109;
  }

  if (v109 != 501 || (fpfs_supports_indexAllRemoteItems() & 1) != 0)
  {
    goto LABEL_115;
  }

  v112 = qword_1CFA05B88;
LABEL_139:
  v133 = v112[v111];
LABEL_140:
  v135 = v197;
  v136 = sub_1CEFF8538(v182, v183, 0, v63, *(v34 + v197) == 1, v106 != 0);
  v137 = v136;
  v138 = *(v34 + v135);
  if (v136 <= 501)
  {
    if (v136 != 3)
    {
      if (v136 != 500)
      {
        if (v136 == 501 && (fpfs_supports_indexAllRemoteItems() & 1) == 0)
        {
          if (((1u >> (v138 & 0xF)) & ((v106 & 3) == 0)) != 0)
          {
            v139 = 16;
          }

          else
          {
            v139 = 0;
          }

          goto LABEL_161;
        }

LABEL_153:
        v139 = 0;
        goto LABEL_161;
      }

LABEL_149:
      v139 = 4 * (v138 == 1);
      goto LABEL_161;
    }

LABEL_160:
    v139 = 4;
    goto LABEL_161;
  }

  if ((v136 - 1000) < 3)
  {
    goto LABEL_149;
  }

  if (v136 != 502)
  {
    if (v136 != 1003 || (v138 - 2) < 2)
    {
      goto LABEL_153;
    }

    if (!v138)
    {
      if ((v106 & 2) == 0)
      {
        v139 = 64;
        goto LABEL_161;
      }

      goto LABEL_153;
    }

    goto LABEL_160;
  }

  if ((0xEu >> (v138 & 0xF)) & 1 | ((v106 & 2) != 0))
  {
    v139 = 0;
  }

  else
  {
    v139 = 64;
  }

LABEL_161:
  if ((((*v199)[19])() & 0x40000) == 0 && v137 == 501 && (v106 & 2) != 0)
  {
    v140 = *v34;
    v141 = *(v34 + 8);
    LOBYTE(v207) = 0;
    *&v213 = v140;
    WORD4(v213) = v141;
    v214 = xmmword_1CF9FD920;
    HIBYTE(v217) = 14;
    (*(*v194 + 136))(&v213);
  }

  if (v110 != 1)
  {
    v144 = v190;
    goto LABEL_170;
  }

  v143 = v189;
  v142 = v190;
  (*(*v199[5] + 240))(&v218, 1, &v224, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  v144 = v142;
  if (v142)
  {
LABEL_171:

    sub_1CEFCCC44(v219, &unk_1EC4BFC20, &unk_1CFA0A290);
    return v46 & 1;
  }

  v145 = v188;
  if ((*(v187 + 48))(v143, 1, v188) == 1)
  {
    sub_1CEFCCC44(v143, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    goto LABEL_170;
  }

  v197 = v133;
  v146 = v143;
  v147 = v186;
  sub_1CEFE55D0(v146, v186, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v148 = (v147 + *(v145 + 48));
  if ((v148[*(type metadata accessor for ItemMetadata(0) + 80)] & 1) == 0 || v195 >> 60 == 11)
  {
    goto LABEL_175;
  }

  if (v137 > 501)
  {
    if (v137 == 502 || v137 == 1003)
    {
      goto LABEL_191;
    }

    goto LABEL_175;
  }

  if (v137 != 2)
  {
    if (v137 == 501 && !fpfs_supports_indexAllRemoteItems())
    {
LABEL_191:
      v149 = *v34;
      v150 = *(v34 + 8);
      LOBYTE(v207) = 0;
      *&v213 = v149;
      WORD4(v213) = v150;
      v214 = xmmword_1CF9FD920;
      HIBYTE(v217) = 14;
      (*(*v194 + 136))(&v213);
      sub_1CEFCCC44(v147, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

      sub_1CEFCCC44(v219, &unk_1EC4BFC20, &unk_1CFA0A290);
      v46 = 0;
      return v46 & 1;
    }

LABEL_175:
    sub_1CEFCCC44(v147, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
LABEL_176:
    v133 = v197;
LABEL_170:
    (*(*v199[3] + 472))(&v218, (v139 ^ v133) & v133, v139 & (v139 ^ v133) & 0x14, &v224, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
    if (!v144)
    {

      goto LABEL_214;
    }

    goto LABEL_171;
  }

  v190 = 0;
  *&v207 = v105;
  WORD4(v207) = 256;
  v208 = 0;
  v209 = 0;
  *&v210 = 0;
  *(&v210 + 1) = 0xB000000000000000;
  v211 = 0u;
  *v212 = 0u;
  *&v212[16] = 257;
  v212[18] = 13;
  *v215 = v210;
  memset(&v215[16], 0, 32);
  *&v215[47] = *&v212[15];
  v213 = v207;
  v214 = 0u;
  HIBYTE(v217) = 9;
  v161 = *(*v194 + 136);
  v162 = *v194 + 136;
  v163 = v196;
  v195 = v161;
  v189 = v162;
  v161(&v213);
  v164 = sub_1CEFCCC44(&v207, &unk_1EC4BFCF0, &unk_1CFA05410);
  if ((((*v199)[69])(v164) & 1) == 0 || *v148 - 1 <= 1)
  {
LABEL_225:
    v172 = *v34;
    v173 = *(v34 + 8);
    v206 = 0;
    v174 = v192;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v176 = v175;
    result = (*(v191 + 8))(v174, v193);
    v177 = v176 * 1000000000.0;
    if (COERCE__INT64(fabs(v176 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v177 > -9.22337204e18)
      {
        if (v177 < 9.22337204e18)
        {
          v178 = v177;
          v179 = v206;
          *&v213 = v172;
          BYTE8(v213) = v173;
          BYTE9(v213) = v206;
          *(&v213 + 10) = v204;
          HIWORD(v213) = v205;
          v198 = xmmword_1CFA00210;
          v214 = xmmword_1CFA00210;
          *v215 = v177;
          *&v215[40] = v202;
          *v216 = v203[0];
          *&v216[10] = *(v203 + 10);
          *&v215[8] = v200;
          *&v215[24] = v201;
          v217 = 2560;
          (v195)(&v213);
          *&v213 = v172;
          BYTE8(v213) = v173;
          BYTE9(v213) = v179;
          *(&v213 + 10) = v204;
          HIWORD(v213) = v205;
          v214 = v198;
          *v215 = v178;
          *&v215[40] = v202;
          *v216 = v203[0];
          *&v216[10] = *(v203 + 10);
          *&v215[8] = v200;
          *&v215[24] = v201;
          v217 = 2560;
          sub_1CEFCCC44(&v213, &qword_1EC4BE6D0, &qword_1CF9FE560);
          sub_1CEFCCC44(v186, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          v144 = v190;
          goto LABEL_176;
        }

        goto LABEL_246;
      }

LABEL_245:
      __break(1u);
LABEL_246:
      __break(1u);
      goto LABEL_247;
    }

LABEL_244:
    __break(1u);
    goto LABEL_245;
  }

  v165 = v163;
  v166 = v192;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v168 = v167;
  result = (*(v191 + 8))(v166, v193);
  v169 = v168 * 1000000000.0;
  if (COERCE__INT64(fabs(v168 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_247:
    __break(1u);
    goto LABEL_248;
  }

  if (v169 <= -9.22337204e18)
  {
LABEL_248:
    __break(1u);
    goto LABEL_249;
  }

  if (v169 < 9.22337204e18)
  {
    v170 = v169;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0310, &unk_1CF9FB360);
    v171 = swift_allocObject();
    *(v171 + 16) = 0u;
    *(v171 + 32) = 0u;
    *(v171 + 48) = 1;
    *(v171 + 56) = 0u;
    *(v171 + 72) = 0u;
    *(v171 + 88) = 0;
    *(v171 + 96) = xmmword_1CF9FEC30;
    *(v171 + 112) = 0;
    *(v171 + 120) = 0;
    *(v171 + 128) = v170;
    *(v171 + 136) = 2;
    *(v171 + 144) = v165;
    (*(*v194 + 152))();

    v34 = v198;
    goto LABEL_225;
  }

LABEL_249:
  __break(1u);
  return result;
}

uint64_t sub_1CF3F7A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E30, &qword_1CF9FB460);
  result = swift_allocObject();
  *(result + 48) = 1;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 120) = a2;
  *(result + 128) = a3;
  *(result + 136) = a4;
  *(result + 144) = a1;
  v9 = 270592;
  if ((a4 & 0x8000) != 0)
  {
    v9 = 2367744;
  }

  *(result + 88) = 0;
  *(result + 96) = v9;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

uint64_t sub_1CF3F7ADC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCB0, &unk_1CF9FAE60);
  result = swift_allocObject();
  *(result + 152) = a2;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 1;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 120) = a3;
  *(result + 128) = a4;
  *(result + 136) = a5;
  *(result + 144) = a1;
  v11 = 270592;
  if ((a5 & 0x8000) != 0)
  {
    v11 = 2367744;
  }

  *(result + 88) = 0;
  *(result + 96) = v11;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

uint64_t sub_1CF3F7B80(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v142 = v2;
  v202 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](v137);
  v121 = (&v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v121 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v126 = (&v121 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v122 = (&v121 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v123 = (&v121 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v124 = (&v121 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v128 = (&v121 - v22);
  v23 = v8[4];
  v139 = *(v8 + 153);
  LODWORD(v130) = *(v8 + 176);
  v24 = v8[33];
  v25 = v8[34];
  v127 = *(v8 + 384);
  memcpy(v165, v8, sizeof(v165));
  v131 = v6;
  v163 = v6;
  LODWORD(v138) = v4;
  v164 = v4;
  v26 = LOBYTE(v165[3]) == 255 || v24 == 0;
  v27 = !v26;
  v28 = 1;
  v134 = v27;
  if (!v26 && !v23)
  {
    v28 = v25 != 0;
  }

  v133 = v28;
  v29 = 0;
  v30 = v8[98];
  if (LOBYTE(v165[68]) != 255 && v30)
  {
    v29 = (v8[69] | v8[99]) == 0;
  }

  v129 = v29;
  v32 = LOBYTE(v165[68]) != 255 && v30 != 0;
  v132 = v32;
  v125 = *v8;
  v141 = *(v8 + 8);
  v33 = v8[134];
  v34 = *(v8 + 1080);
  memcpy(v162, v8 + 67, sizeof(v162));
  v35 = v162[31];
  v140 = v162[2];
  LODWORD(v36) = LOBYTE(v162[46]);
  v135 = BYTE1(v162[17]);
  v136 = LOBYTE(v162[20]);
  memcpy(v161, v8 + 67, sizeof(v161));
  if (v34 < 2)
  {
LABEL_126:
    result = sub_1CF9E7B68();
    __break(1u);
    return result;
  }

  if (v33 > 1)
  {
    if (v33 == 2 && (v141 & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_28;
  }

  if (v33)
  {
    if (v141)
    {
      sub_1CF095754(v159);
      memcpy(v199, v159, sizeof(v199));
      memcpy(v160, &v165[136], sizeof(v160));
      sub_1CF08B99C(v160);
      sub_1CEFCCBDC(v162, v146, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v56 = v142;
      sub_1CF449E04(v161);
      if (v56)
      {
        goto LABEL_109;
      }

      sub_1CF47F390(v161);
      memcpy(v156, &v165[2], sizeof(v156));
      memcpy(v157, v161, sizeof(v157));
      v57 = v165[132];
      v36 = v165[133];
      memcpy(v158, &v165[136], sizeof(v158));
      memcpy(&v155[7], &v165[2], 0x208uLL);
      memcpy(v154, v161, sizeof(v154));
      memcpy(&v153[7], &v165[136], 0x208uLL);
      v190 = v125;
      v191 = v141;
      memcpy(v192, v155, sizeof(v192));
      memcpy(v193, v161, sizeof(v193));
      v194 = v165[132];
      v195 = v165[133];
      v196 = 1;
      v197 = 2;
      memcpy(v198, v153, sizeof(v198));
      sub_1CEFCCBDC(v156, v146, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CEFCCBDC(v157, v146, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CEFCCBDC(v158, v146, &unk_1EC4BFC20, &unk_1CFA0A290);
      sub_1CF396D20(&v190);
      if (v58)
      {
        v146[0] = v125;
        LOBYTE(v146[1]) = v141;
        memcpy(&v146[1] + 1, v155, 0x20FuLL);
        memcpy(v147, v154, sizeof(v147));
        v148 = v57;
        v149 = v36;
        v150 = 1;
        v151 = 2;
        memcpy(v152, v153, sizeof(v152));
        sub_1CEFCCC44(v146, &qword_1EC4BFC48, &qword_1CFA05388);
        goto LABEL_109;
      }

      (*(*v202 + 176))(v161, &v163, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
      v117 = v36;
      v118 = v57;
      v45 = LOBYTE(v156[20]);
      v127 = LOBYTE(v156[46]);
      v139 = BYTE1(v156[17]);
      v138 = v156[2];
      v24 = v156[31];
      LODWORD(v36) = LOBYTE(v157[46]);
      v135 = BYTE1(v157[17]);
      v136 = LOBYTE(v157[20]);
      v140 = v157[2];
      v131 = v157[31];
      v146[0] = v125;
      LOBYTE(v146[1]) = v141;
      memcpy(&v146[1] + 1, v155, 0x20FuLL);
      memcpy(v147, v154, sizeof(v147));
      v148 = v118;
      v149 = v117;
      v150 = 1;
      v151 = 2;
      memcpy(v152, v153, sizeof(v152));
      sub_1CEFCCC44(v146, &qword_1EC4BFC48, &qword_1CFA05388);
      v12 = 0;
      goto LABEL_111;
    }

    memcpy(v158, v8 + 2, sizeof(v158));
    memcpy(v159, v8 + 2, sizeof(v159));
    nullsub_1();
    memcpy(v189, v159, sizeof(v189));
    memcpy(v160, &v165[136], sizeof(v160));
    sub_1CF08B99C(v160);
    sub_1CEFCCBDC(v162, v146, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    sub_1CEFCCBDC(v158, v146, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v76 = v131;
    v77 = v142;
    sub_1CF449E04(v161);
    if (!v77)
    {
      sub_1CEFCCC44(v158, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      memcpy(v156, v161, sizeof(v156));
      memcpy(v157, v161, sizeof(v157));
      nullsub_1();
      memcpy(v188, v157, sizeof(v188));
      memcpy(v187, &v165[2], sizeof(v187));
      v96 = v138;
      sub_1CEFCCBDC(v156, v146, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CF44D124(v187, v188, v76, v96);
      v142 = 0;
      sub_1CEFCCC44(v156, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      memcpy(v144, &v165[2], sizeof(v144));
      memcpy(v145, v161, sizeof(v145));
      memcpy(v154, &v165[136], sizeof(v154));
      memcpy(&v155[7], &v165[2], 0x208uLL);
      memcpy(v143, v161, sizeof(v143));
      memcpy(&v153[7], &v165[136], 0x208uLL);
      v97 = v125;
      v178 = v125;
      v98 = v141;
      v179 = v141;
      memcpy(v180, v155, sizeof(v180));
      memcpy(v181, v161, sizeof(v181));
      v130 = v165[132];
      v182 = v165[132];
      v99 = v165[133];
      v183 = v165[133];
      v184 = 1;
      v185 = 2;
      memcpy(v186, v153, sizeof(v186));
      sub_1CEFCCBDC(v144, v146, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CEFCCBDC(v145, v146, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      sub_1CEFCCBDC(v154, v146, &unk_1EC4BFC20, &unk_1CFA0A290);
      v100 = v142;
      sub_1CF396D20(&v178);
      v12 = v100;
      if (v100)
      {
        v146[0] = v97;
        LOBYTE(v146[1]) = v98;
        memcpy(&v146[1] + 1, v155, 0x20FuLL);
        memcpy(v147, v143, sizeof(v147));
        v148 = v130;
        v149 = v99;
        v150 = 1;
        goto LABEL_90;
      }

      v112 = v99;
      v113 = v98;
      v114 = v112;
      if (v101)
      {
        v146[0] = v97;
        LOBYTE(v146[1]) = v113;
        memcpy(&v146[1] + 1, v155, 0x20FuLL);
        memcpy(v147, v143, sizeof(v147));
        v148 = v130;
        v149 = v114;
        v150 = 1;
        goto LABEL_106;
      }

      (*(*v202 + 192))(v161, &v165[2], v97, &v163, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
      v45 = LOBYTE(v144[20]);
      v127 = LOBYTE(v144[46]);
      v139 = BYTE1(v144[17]);
      v138 = v144[2];
      v24 = v144[31];
      LODWORD(v36) = LOBYTE(v145[46]);
      v140 = v145[2];
      v135 = BYTE1(v145[17]);
      v136 = LOBYTE(v145[20]);
      v131 = v145[31];
      v146[0] = v97;
      LOBYTE(v146[1]) = v113;
      memcpy(&v146[1] + 1, v155, 0x20FuLL);
      memcpy(v147, v143, sizeof(v147));
      v148 = v130;
      v149 = v114;
      v150 = 1;
      goto LABEL_110;
    }

LABEL_63:
    sub_1CEFCCC44(v158, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    goto LABEL_109;
  }

  if (v141)
  {
LABEL_28:
    v131 = v162[31];
    v138 = v23;
    sub_1CEFCCBDC(v162, v146, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v12 = v142;
    v35 = v137;
    v45 = v130;
    goto LABEL_29;
  }

  memcpy(v158, v8 + 2, sizeof(v158));
  memcpy(v159, v8 + 2, sizeof(v159));
  nullsub_1();
  memcpy(v177, v159, sizeof(v177));
  memcpy(v160, &v165[136], sizeof(v160));
  sub_1CF08B99C(v160);
  sub_1CEFCCBDC(v162, v146, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CEFCCBDC(v158, v146, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v37 = v131;
  v38 = v142;
  sub_1CF449E04(v161);
  if (v38)
  {
    goto LABEL_63;
  }

  sub_1CEFCCC44(v158, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  memcpy(v156, v161, sizeof(v156));
  memcpy(v157, v161, sizeof(v157));
  nullsub_1();
  memcpy(v176, v157, sizeof(v176));
  memcpy(v175, &v165[2], sizeof(v175));
  v39 = v138;
  sub_1CEFCCBDC(v156, v146, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CF44D124(v175, v176, v37, v39);
  v142 = 0;
  sub_1CEFCCC44(v156, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  memcpy(v144, &v165[2], sizeof(v144));
  memcpy(v145, v161, sizeof(v145));
  memcpy(v154, &v165[136], sizeof(v154));
  memcpy(&v155[7], &v165[2], 0x208uLL);
  memcpy(v143, v161, sizeof(v143));
  memcpy(&v153[7], &v165[136], 0x208uLL);
  v40 = v125;
  v166 = v125;
  v41 = v141;
  v167 = v141;
  memcpy(v168, v155, sizeof(v168));
  memcpy(v169, v161, sizeof(v169));
  v130 = v165[132];
  v170 = v165[132];
  v42 = v165[133];
  v171 = v165[133];
  v172 = 0;
  v173 = 2;
  memcpy(v174, v153, sizeof(v174));
  sub_1CEFCCBDC(v144, v146, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CEFCCBDC(v145, v146, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CEFCCBDC(v154, v146, &unk_1EC4BFC20, &unk_1CFA0A290);
  v43 = v142;
  sub_1CF396D20(&v166);
  v12 = v43;
  if (v43)
  {
    v146[0] = v40;
    LOBYTE(v146[1]) = v41;
    memcpy(&v146[1] + 1, v155, 0x20FuLL);
    memcpy(v147, v143, sizeof(v147));
    v148 = v130;
    v149 = v42;
    v150 = 0;
LABEL_90:
    v151 = 2;
LABEL_107:
    memcpy(v152, v153, sizeof(v152));
    sub_1CEFCCC44(v146, &qword_1EC4BFC48, &qword_1CFA05388);
    goto LABEL_109;
  }

  v109 = v41;
  v110 = v130;
  v111 = v42;
  if (v44)
  {
    v146[0] = v125;
    LOBYTE(v146[1]) = v41;
    memcpy(&v146[1] + 1, v155, 0x20FuLL);
    memcpy(v147, v143, sizeof(v147));
    v148 = v130;
    v149 = v42;
    v150 = 0;
LABEL_106:
    v151 = 2;
    goto LABEL_107;
  }

  v115 = v125;
  (*(*v202 + 192))(v161, &v165[2], v125, &v163, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
  v116 = v109;
  v120 = v110;
  v45 = LOBYTE(v144[20]);
  v127 = LOBYTE(v144[46]);
  v139 = BYTE1(v144[17]);
  v138 = v144[2];
  v24 = v144[31];
  LODWORD(v36) = LOBYTE(v145[46]);
  v140 = v145[2];
  v135 = BYTE1(v145[17]);
  v136 = LOBYTE(v145[20]);
  v131 = v145[31];
  v146[0] = v115;
  LOBYTE(v146[1]) = v116;
  memcpy(&v146[1] + 1, v155, 0x20FuLL);
  memcpy(v147, v143, sizeof(v147));
  v148 = v120;
  v149 = v111;
  v150 = 0;
LABEL_110:
  v151 = 2;
  memcpy(v152, v153, sizeof(v152));
  sub_1CEFCCC44(v146, &qword_1EC4BFC48, &qword_1CFA05388);
LABEL_111:
  v35 = v137;
  while (1)
  {
LABEL_29:
    if ((v136 != 2) == (v45 == 2) || (v36 != 2) == (v127 == 2))
    {
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v47 = Strong;
        memcpy(v146, &v165[67], 0x208uLL);
        v48 = v128;
        memcpy(v128, &v165[67], 0x208uLL);
        swift_storeEnumTagMultiPayload();
        v49 = *(*v47 + 312);
        sub_1CEFCCBDC(v146, v155, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
        v49(v48);

        sub_1CEFCCC44(v48, &qword_1EC4BE710, &qword_1CF9FE5A8);
      }
    }

    if (v133 || (v134 & 1) == 0 || (v141 & 1) != 0)
    {
      if (v129 || v132)
      {
        v50 = swift_weakLoadStrong();
        if (!v50)
        {
          goto LABEL_76;
        }

        v51 = v161[1];
        if (LOBYTE(v161[1]) == 255)
        {
LABEL_114:
          __break(1u);
        }

        else
        {
          v36 = v126;
          *v126 = v161[0];
          *(v36 + 8) = v51;
          v52 = v131;
          if (v131)
          {
            v53 = v50;
            *(v36 + 16) = v131;
            swift_storeEnumTagMultiPayload();
            v54 = *(*v53 + 312);
            v55 = v52;
            v54(v36);
            goto LABEL_75;
          }
        }

        __break(1u);
        goto LABEL_116;
      }

      if ((v134 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else if (v132)
    {
      goto LABEL_76;
    }

    if (v139 != 6)
    {
      v59 = swift_weakLoadStrong();
      if (v59)
      {
        v60 = v165[3];
        if (LOBYTE(v165[3]) == 255)
        {
          goto LABEL_118;
        }

        v61 = v59;
        v62 = v124;
        *v124 = v165[2];
        *(v62 + 8) = v60;
        *(v62 + 9) = 0;
        if (!v24)
        {
          goto LABEL_119;
        }

        v62[2] = v24;
        *(v62 + 25) = 1;
        *(v62 + 26) = v139;
        *(v62 + 27) = 6;
        v63 = v62;
        swift_storeEnumTagMultiPayload();
        v64 = *(*v61 + 312);
        v65 = v24;
        v64(v63);

        sub_1CEFCCC44(v63, &qword_1EC4BE710, &qword_1CF9FE5A8);
      }
    }

    v66 = swift_weakLoadStrong();
    if (!v66)
    {
      goto LABEL_113;
    }

    v67 = (*(*v66 + 152))(v66);

    v68 = swift_weakLoadStrong();
    v69 = v68;
    if ((v67 & 0x4000) == 0 || (v140 & 0x80) == 0)
    {
      break;
    }

    if (!v68)
    {
      goto LABEL_76;
    }

    v70 = v165[3];
    if (LOBYTE(v165[3]) == 255)
    {
      goto LABEL_120;
    }

    v36 = v123;
    *v123 = v165[2];
    *(v36 + 8) = v70;
    if (v24)
    {
      goto LABEL_74;
    }

    __break(1u);
LABEL_58:
    v71 = v161[1];
    if (LOBYTE(v161[1]) != 255 && v35 && (v72 = swift_weakLoadStrong()) != 0)
    {
      v73 = v72;
      *v12 = v161[0];
      v12[8] = v71;
      *(v12 + 2) = v35;
      swift_storeEnumTagMultiPayload();
      v74 = *(*v73 + 312);
      sub_1CEFCCBDC(v162, v146, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v75 = v35;
      v74(v12);

      sub_1CEFCCC44(v12, &qword_1EC4BE710, &qword_1CF9FE5A8);
    }

    else
    {
      sub_1CEFCCBDC(v162, v146, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    }

    sub_1CF095754(v146);
    memcpy(v201, v146, 0x208uLL);
    memcpy(v200, &v165[2], sizeof(v200));
    v94 = v202;
    v95 = v142;
    sub_1CF44D124(v200, v201, v131, v138);
    if (v95)
    {
      goto LABEL_109;
    }

    (*(*v94 + 200))(&v165[2], v125, 1, &v163, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
    v12 = 0;
    v131 = v35;
    v45 = LOBYTE(v200[20]);
    v138 = v200[2];
    v24 = v200[31];
    v127 = LOBYTE(v200[46]);
    v139 = BYTE1(v200[17]);
    if (BYTE1(v200[17]) == 6)
    {
      v139 = 6;
      v35 = v137;
    }

    else
    {
      v102 = v165[3];
      v35 = v137;
      if (LOBYTE(v165[3]) != 255)
      {
        v142 = v165[2];
        v103 = swift_weakLoadStrong();
        if (!v103)
        {
          goto LABEL_125;
        }

        v104 = v103;
        v105 = v121;
        *v121 = v142;
        *(v105 + 8) = v102;
        *(v105 + 9) = 0;
        if (v24)
        {
          v106 = 256;
        }

        else
        {
          v106 = -256;
        }

        *(v105 + 16) = v24;
        *(v105 + 24) = v106;
        *(v105 + 26) = v139;
        *(v105 + 27) = 6;
        swift_storeEnumTagMultiPayload();
        v142 = (*v104 + 312);
        v107 = *v142;
        v108 = v24;
        v107(v105);

        sub_1CEFCCC44(v105, &qword_1EC4BE710, &qword_1CF9FE5A8);
      }
    }
  }

  if (!v68)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v146[0] = v165[2];
  LOBYTE(v146[1]) = v165[3];
  if (LOBYTE(v165[3]) == 255)
  {
    goto LABEL_117;
  }

  v78 = (*(*v68 + 560))(v146);

  if (v78)
  {
    goto LABEL_70;
  }

  v79 = swift_weakLoadStrong();
  if (!v79)
  {
    goto LABEL_121;
  }

  v146[0] = v24;
  if (!v24)
  {
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v80 = *(*v79 + 568);
  v81 = v24;
  v82 = v80(v146);

  if ((v82 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_70:
  v83 = swift_weakLoadStrong();
  if (!v83)
  {
    goto LABEL_76;
  }

  v84 = v165[3];
  if (LOBYTE(v165[3]) == 255)
  {
    goto LABEL_123;
  }

  v36 = v122;
  *v122 = v165[2];
  *(v36 + 8) = v84;
  if (!v24)
  {
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v69 = v83;
LABEL_74:
  *(v36 + 16) = v24;
  swift_storeEnumTagMultiPayload();
  v85 = *(*v69 + 312);
  v86 = v24;
  v85(v36);
LABEL_75:

  sub_1CEFCCC44(v36, &qword_1EC4BE710, &qword_1CF9FE5A8);
LABEL_76:
  if (((v140 >> 4) & 1) == ((v138 & 0x10) == 0))
  {
    v87 = v161[1];
    if (LOBYTE(v161[1]) != 255)
    {
      v88 = v161[0];
      v89 = swift_weakLoadStrong();
      if (v89)
      {
        v90 = v89;
        v91 = v140 & 0x10;
        v92 = v128;
        *v128 = v88;
        v92[8] = v87;
        v92[9] = 0;
        v92[10] = v91 >> 4;
        swift_storeEnumTagMultiPayload();
        (*(*v90 + 312))(v92);

        sub_1CEFCCC44(v92, &qword_1EC4BE710, &qword_1CF9FE5A8);
      }
    }
  }

  if (v135 != 6 && v139 == 6)
  {
    v93 = swift_weakLoadStrong();
    if (v93)
    {
      (*(*v93 + 328))(&v163, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);

      goto LABEL_109;
    }

    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

LABEL_109:
  memcpy(v146, v161, 0x208uLL);
  return sub_1CEFCCC44(v146, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
}

void sub_1CF3F9764(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v84) = a2;
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  v82 = v9;
  v83 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v75 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v75 - v18;
  v96 = a1;
  v20 = a5;
  v97 = v84;
  v94 = a4;
  v95 = a5;
  v21 = a3;
  v22 = *(a3 + 32);
  v23 = v85;
  (*(*v22 + 240))(&v96, 1, &v94, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970, v17);
  if (!v23)
  {
    v79 = a4;
    v80 = v19;
    LODWORD(v85) = v20;
    v84 = v21;
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_1CEFCCC44(v14, &qword_1EC4C1B40, &unk_1CF9FCB70);
    }

    else
    {
      v24 = v80;
      sub_1CEFE55D0(v14, v80, &unk_1EC4BE360, &qword_1CF9FE650);
      v25 = *(v24 + 136);
      v91[0] = *(v24 + 128);
      v91[1] = v25;
      v88[0] = 0;
      LOBYTE(v88[1]) = -1;
      v26 = *(*v22 + 256);

      v27 = v26(&v96, v91, v88, &v94, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v91[1], v28, v29, v30, v31, v32, v33, v34;
      v35 = *v27->tree;
      if (v35)
      {
        v36 = 0;
        ++v83;
        anon_8 = v27[1]._anon_8;
        v38 = v79;
        v39 = v85;
        while (v36 < v35)
        {
          v42 = *(anon_8 - 1);
          v43 = *anon_8;
          v44 = *(v84 + 16);
          v92 = v38;
          v93 = v39;
          v89 = v42;
          v90 = v43;
          (*(*v44 + 168))(v91, &v89, v39 == 2, &v92, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          sub_1CEFD0994(v89, v90, SHIBYTE(v90));
          memcpy(v88, v91, sizeof(v88));
          if (sub_1CF08B99C(v88) == 1)
          {
            memcpy(v87, v91, sizeof(v87));
            v40 = &unk_1EC4BFD20;
            v41 = &unk_1CFA05440;
          }

          else
          {
            memcpy(v87, v91, 0x208uLL);
            if (v87[3] && !v87[2] && !LOBYTE(v87[20]) && (v87[18] & 0x400) != 0)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
              v45 = swift_allocObject();
              v46 = MEMORY[0x1E69E7CC0];
              v45[4] = MEMORY[0x1E69E7CC0];
              v47 = (v45 + 4);
              v45[2] = v46;
              v45[3] = v46;
              v45[5] = v46;
              v45[6] = 0;
              v78 = v87[59];
              v76 = v45;
              v77 = v87[60];
              v86 = 0;
              swift_beginAccess();
              v48 = sub_1CF1F8144(0, 1, 1, v46);
              v50 = *v48->tree;
              v49 = *v48->tester;
              v51 = v50 + 1;
              if (v50 >= v49 >> 1)
              {
                v75 = v50 + 1;
                v67 = sub_1CF1F8144((v49 > 1), (v50 + 1), 1, v48);
                v51 = v75;
                v48 = v67;
              }

              *v48->tree = v51;
              v52 = v48 + 120 * v50;
              *(v52 + 4) = v42;
              v52[40] = v43;
              v52[41] = 0;
              v53 = v77;
              v54 = v78;
              *(v52 + 6) = 0;
              *(v52 + 7) = v54;
              *(v52 + 8) = v53;
              *(v52 + 73) = 2560;
              v55 = v48;
              *v47 = v48;
              swift_endAccess();
              v56 = v81;
              sub_1CF9E5CE8();
              sub_1CF9E5C98();
              v58 = v57;
              (*v83)(v56, v82);
              v59 = v58 * 1000000000.0;
              if (COERCE__INT64(fabs(v58 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_24;
              }

              v38 = v79;
              if (v59 <= -9.22337204e18)
              {
                goto LABEL_25;
              }

              if (v59 >= 9.22337204e18)
              {
                goto LABEL_26;
              }

              sub_1CF7F6588(v76, v59, v79, v85);
              v55, v60, v61, v62, v63, v64, v65, v66;
              swift_setDeallocating();
              swift_deallocClassInstance();
            }

            v40 = &qword_1EC4BFBC0;
            v41 = &unk_1CF9FCAC0;
          }

          sub_1CEFCCC44(v87, v40, v41);
          ++v36;
          v35 = *v27->tree;
          anon_8 += 16;
          v39 = v85;
          if (v36 == v35)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      else
      {
LABEL_21:
        sub_1CEFCCC44(v80, &unk_1EC4BE360, &qword_1CF9FE650);
        v27, v68, v69, v70, v71, v72, v73, v74;
      }
    }
  }
}

void sub_1CF3F9E7C(uint64_t result@<X0>, char a2@<W1>, void *a3@<X8>, int64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>)
{
  v10 = v8;
  if (a2)
  {
    sub_1CF44C000();
    if (v9)
    {
      return;
    }
  }

  if (*(v8 + 120) == 2)
  {
    goto LABEL_15;
  }

  v13 = *(v8 + 96);
  if (v13 == 1)
  {
    goto LABEL_15;
  }

  if (!*v8)
  {
    if (*(v8 + 224))
    {
      goto LABEL_39;
    }

    goto LABEL_15;
  }

  if (*(*(v8 + 464) + 16))
  {
    goto LABEL_15;
  }

  v14 = *(v8 + 448);
  if ((v14 & 3) != 0)
  {
    goto LABEL_15;
  }

  v15 = *(v8 + 8);
  v16 = *(v8 + 216);
  v17 = *(v8 + 224);
  if ((v15 & 0x55) != 0)
  {
    if ((v15 & 0x51) != 0)
    {
      if ((*(v8 + 8) & 0x41) == 0x40)
      {
        if (qword_1EDEABDE0 != -1)
        {
          swift_once();
        }

        v18 = qword_1EDEABDE8;
        *a3 = 12;
        a3[1] = v18;
        a3[2] = 1310976;
        return;
      }

      if ((v17 & 0x51) != 0)
      {
        goto LABEL_39;
      }

      if ((v15 & 0x10) == 0)
      {
        if (v16 != 255)
        {
          if ((v15 & 2) == 0)
          {
            if (qword_1EDEABDE0 != -1)
            {
              swift_once();
            }

            v35 = qword_1EDEABDE8;
            v36 = sub_1CEFF8C8C();
            *a3 = 2;
            a3[1] = v35;
            goto LABEL_61;
          }

          if (qword_1EDEABDE0 != -1)
          {
            swift_once();
          }

          v37 = qword_1EDEABDE8;
          v46 = unk_1F4BED080;
          if ((unk_1F4BED080 & ~qword_1F4BED078) == 0)
          {
            v46 = 0;
          }

          v47 = v46 | qword_1F4BED078;
          v48 = qword_1F4BED088;
          v38 = unk_1F4BED090;
          if ((qword_1F4BED088 & ~v47) == 0)
          {
            v48 = 0;
          }

          v39 = v48 | v47;
          goto LABEL_92;
        }

LABEL_39:
        if (qword_1EDEABDE0 != -1)
        {
          swift_once();
        }

        v32 = qword_1EDEABDE8;
        *a3 = 2;
        a3[1] = v32;
        a3[2] = 0;
        return;
      }

      if (v16 != 255)
      {
        if (qword_1EDEABDE0 != -1)
        {
          swift_once();
        }

        v37 = qword_1EDEABDE8;
        v39 = qword_1F4BED048;
        v38 = unk_1F4BED050;
LABEL_92:
        if ((v38 & ~v39) == 0)
        {
          v38 = 0;
        }

        *a3 = 2;
        a3[1] = v37;
        a3[2] = v38 | v39;
        return;
      }
    }

LABEL_15:
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 89;
    return;
  }

  v19 = *(v8 + 16);
  v20 = *(v8 + 24);
  v21 = *(v8 + 97);
  v22 = *(v8 + 98);
  v23 = *(v8 + 152);
  v24 = *(v8 + 200);
  v25 = *(v8 + 240);
  v26 = *(v8 + 344);
  v27 = *(v8 + 345);
  if (v27 == 4 || v21 == 3)
  {
    v28 = 0;
    if (*(v8 + 240))
    {
      v29 = 0;
    }

    else
    {
      v29 = v27 == 4;
    }

    v30 = v29;
    if (v13 == 2 && !v30)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v27 == 6)
    {
      v28 = *(v8 + 240);
    }

    else
    {
      v28 = 5;
    }

    if (v21 != 6)
    {
      v28 = 5;
    }
  }

  v31 = 1843460;
  if ((v19 & 0x10000000000) != 0)
  {
    v33 = *(v8 + 456);
    if (v33 == 4)
    {
      __break(1u);
LABEL_191:
      __break(1u);
      goto LABEL_192;
    }

    if (!*(v8 + 96) && v33 == 2)
    {
      goto LABEL_45;
    }
  }

  if (v28 <= 2)
  {
    if (!v28)
    {
LABEL_45:
      v34 = 24;
      goto LABEL_104;
    }

    if (v28 == 1)
    {
      goto LABEL_67;
    }

    goto LABEL_48;
  }

  if (v28 == 3)
  {
    if (!(*(v8 + 232) & 8 | *(v8 + 224) & 0x51))
    {
LABEL_67:
      v40 = *(v8 + 456);
      if ((v19 & 0x10000) != 0)
      {
        if (v40 != 1)
        {
          if (v40 != 4)
          {
            *a3 = xmmword_1CFA00360;
            a3[2] = 1843456;
            return;
          }

          goto LABEL_193;
        }
      }

      else if (v40 != 1)
      {
        if (v40 == 4)
        {
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
          goto LABEL_195;
        }

        v31 = 1876224;
        v34 = 16;
        goto LABEL_104;
      }

      v31 = 1876244;
      v34 = 16;
LABEL_104:
      if (v16 != 255 && (v17 & 1) == 0)
      {
        if ((v34 & 2) != 0)
        {
          v31 |= 0x402uLL;
        }

        v50 = v31 | ((v34 & 1) << 10);
        v51 = (v34 >> 4) & 1;
        if (v19 != 0x10000)
        {
          LODWORD(v51) = 1;
        }

        if (!v51)
        {
          v50 |= 0x1000uLL;
        }

        v52 = v50 | 0x4000;
        if (v20)
        {
          v52 = v50;
        }

        if ((v19 & 0x100000000000) != 0)
        {
          v53 = v52;
        }

        else
        {
          v53 = v50;
        }

        if ((v14 & 0xC) == 4 || (v24 & 4) != 0)
        {
          if ((v24 & 0x30) == 0)
          {
            if (qword_1EDEABDE0 != -1)
            {
              swift_once();
            }

            v74 = v34 & 0xFFFFDFFFFFFEF6E7 & (qword_1EDEABDE8 | 0x6409000000C000);
            if (!v74)
            {
              goto LABEL_15;
            }

            goto LABEL_185;
          }

          v90 = v14 & 0xC;
        }

        else
        {
          v90 = v14 & 0xC;
          if (v90 == 12)
          {
            v54 = v19;
            v55 = v23;
            v56 = v27;
            v96 = v53;
            v57 = v25;
            sub_1CEFF5464(&unk_1F4BECFB0, __src, v26, v22, a4, a5, a6, a7, a8);
            v25 = v57;
            v53 = v96;
            v27 = v56;
            v23 = v55;
            v19 = v54;
            v34 |= __src[0];
          }
        }

        if ((v34 & 0x200000010918) != 0)
        {
          v93 = v25;
          v64 = v27;
          v65 = v23;
          v66 = v19;
          v96 = v9;
          sub_1CF7F6024(__dst);
          if (LOBYTE(__dst[1]) == 255 || !__dst[31] || (__dst[24] & 0xF000000000000000) == 0xB000000000000000)
          {
            memcpy(__src, __dst, 0x208uLL);
            sub_1CEFCCC44(__src, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
          }

          else
          {
            v67 = LOBYTE(__dst[43]);
            memcpy(__src, __dst, 0x208uLL);
            sub_1CEFCCC44(__src, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
            if (!v67 && v93)
            {
              if (qword_1EDEABDE0 != -1)
              {
                swift_once();
              }

              v68 = v34 & 0xFFFFDFFFFFFEF6E7 & (qword_1EDEABDE8 | 0x6409000000C000);
              if (v68)
              {
                *a3 = 1;
                a3[1] = v68;
                a3[2] = v53;
              }

              else
              {
                a3[1] = 0;
                a3[2] = 0;
                *a3 = 89;
              }

              return;
            }
          }

          v19 = v66;
          v23 = v65;
          v27 = v64;
        }

        if ((v34 & 8) == 0)
        {
          goto LABEL_149;
        }

        v69 = v53 & 0xFFFFFFFFFFEFFFFFLL;
        if (v13 > 2)
        {
          if (v13 != 3)
          {
            goto LABEL_153;
          }
        }

        else if (v13)
        {
LABEL_153:
          v70 = *(v10 + 456);
          if (v70 == 1)
          {
            v75 = v23 >> 60 != 11;
LABEL_182:
            if (!v75 || v90 != 12)
            {
LABEL_149:
              *a3 = 1;
              if ((v34 & 0x10) != 0)
              {
                a3[1] = 16;
              }

              else
              {
                a3[1] = v19;
              }

              goto LABEL_186;
            }

            v78 = v19;
            sub_1CEFF5464(&stru_1F4BECED0, __src, v26, v22, a4, a5, a6, a7, a8);
            v74 = __src[0] | v78;
LABEL_185:
            *a3 = 1;
            a3[1] = v74;
LABEL_186:
            a3[2] = v53;
            return;
          }

          if (v70 != 4)
          {
            if (v23 >> 60 == 11)
            {
              sub_1CEFF5464(&unk_1F4BECF00, __src, v26, v22, a4, a5, a6, a7, a8);
              v71 = __src[0] & v34;
              *a3 = 23;
              a3[1] = v71;
              a3[2] = v69;
              return;
            }

            v75 = 1;
            goto LABEL_182;
          }

          goto LABEL_194;
        }

        if (v27 == 3)
        {
          goto LABEL_15;
        }

        v72 = *(v10 + 456);
        if (v72 == 1)
        {
          v79 = sub_1CEFF8C8C();
          *a3 = 6;
          a3[1] = v34 & 0x10;
          a3[2] = v79;
          return;
        }

        if (v72 != 4)
        {
          sub_1CEFF5464(&stru_1F4BECF80, __src, v26, v22, a4, a5, a6, a7, a8);
          v73 = __src[0] & v34;
          *a3 = 23;
          a3[1] = v73;
          a3[2] = v69;
          return;
        }

LABEL_195:
        __break(1u);
        return;
      }

      if (v16 != 255 && (v19 & 8) == 0 && (v17 & 1) != 0)
      {
        v86 = v21;
        v88 = v20;
        v58 = *(*result + 152);
        v96 = v9;
        v59 = v19;
        v91 = v23;
        v60 = v26;
        v84 = v22;
        v61 = v58(v24);
        LOBYTE(v22) = v84;
        v21 = v86;
        v20 = v88;
        v23 = v91;
        if ((v34 & 2) == 0)
        {
          goto LABEL_15;
        }

        if ((v17 & 0x80) == 0)
        {
          goto LABEL_15;
        }

        LODWORD(v26) = v60;
        v19 = v59;
        if ((v61 & 0x4000) == 0)
        {
          goto LABEL_15;
        }
      }

      if (v21 == 5)
      {
        goto LABEL_15;
      }

      v62 = *(v10 + 456);
      if (v62 == 1)
      {
        if (!v19 && v21 != 6 && v16 != 255)
        {
          goto LABEL_15;
        }

        goto LABEL_180;
      }

      if (v62 != 4)
      {
        if ((v13 - 3) < 2)
        {
          goto LABEL_15;
        }

        if (v13)
        {
          if (v21 || (v22 & 1) == 0)
          {
            if (v16 != 255 && (v26 | 4) == 4)
            {
              goto LABEL_15;
            }

            if (v23 >> 60 == 11)
            {
              if (!v20)
              {
                a3[1] = 0;
                a3[2] = 0;
                *a3 = 89;
                return;
              }

              v36 = sub_1CEFF8C8C();
              *a3 = xmmword_1CFA04E90;
LABEL_61:
              a3[2] = v36;
              return;
            }
          }
        }

        else if (v62 == 2)
        {
          v63 = sub_1CEFF8C8C();
          *a3 = xmmword_1CFA04E90;
          a3[2] = v63;
          return;
        }

LABEL_180:
        v76 = v19;
        v77 = sub_1CEFF8C8C();
        *a3 = 0;
        a3[1] = v76;
        a3[2] = v77;
        return;
      }

      goto LABEL_191;
    }

    v31 = 1843456;
    if (v19)
    {
LABEL_101:
      v34 = v19;
      goto LABEL_104;
    }

LABEL_83:
    if ((~v14 & 0xC) != 0)
    {
      goto LABEL_15;
    }

    v34 = 0;
    goto LABEL_104;
  }

  if (v28 == 5)
  {
LABEL_48:
    if (v13 == 4)
    {
      goto LABEL_99;
    }

    if (!*(v8 + 96))
    {
      v80 = *(v8 + 200);
      v83 = *(v8 + 98);
      v85 = *(v8 + 97);
      v81 = *(v8 + 344);
      v82 = *(v8 + 345);
      v87 = *(v8 + 24);
      v92 = *(v8 + 240);
      v89 = *(v8 + 152);
      v96 = *(v8 + 16);
      sub_1CF7F6024(__src);
      if (LOBYTE(__src[1]) == 255 || !__src[31] || __src[24] >> 60 == 11)
      {
        memcpy(__dst, __src, sizeof(__dst));
        sub_1CEFCCC44(__dst, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
LABEL_54:
        v19 = v96;
        v23 = v89;
        v26 = v81;
        v27 = v82;
        v25 = v92;
        v21 = v85;
        v20 = v87;
        v22 = v83;
        v24 = v80;
LABEL_99:
        if ((v19 & 8) != 0)
        {
          v34 = v19 & 0xFFFFFFFFFFFFFFF7;
          if ((v19 & 0xFFFFFFFFFFFFFFF7) == 0)
          {
            *a3 = 1;
            a3[1] = v19;
            a3[2] = 794880;
            return;
          }

          v31 = 1876224;
          goto LABEL_104;
        }

LABEL_100:
        v31 = 1876224;
        if (v19)
        {
          goto LABEL_101;
        }

        goto LABEL_83;
      }

      v49 = LOBYTE(__src[43]);
      memcpy(__dst, __src, sizeof(__dst));
      sub_1CEFCCC44(__dst, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      if (v49)
      {
        goto LABEL_54;
      }

      v19 = v96;
      v23 = v89;
      v26 = v81;
      v27 = v82;
      v25 = v92;
      v21 = v85;
      v20 = v87;
      v22 = v83;
      v24 = v80;
    }

    if (v26 && v26 != 4)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  v41 = unk_1F4BED010;
  if ((unk_1F4BED010 & ~qword_1F4BED008) == 0)
  {
    v41 = 0;
  }

  v42 = v41 | qword_1F4BED008;
  v44 = qword_1F4BED018;
  v43 = unk_1F4BED020;
  if ((qword_1F4BED018 & ~v42) == 0)
  {
    v44 = 0;
  }

  v45 = v44 | v42;
  if ((unk_1F4BED020 & ~v45) == 0)
  {
    v43 = 0;
  }

  *a3 = xmmword_1CFA04E80;
  a3[2] = v43 | v45;
}

void sub_1CF3FA99C(uint64_t result@<X0>, char a2@<W1>, void *a3@<X8>, int64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>)
{
  v10 = v8;
  if (a2)
  {
    sub_1CF44C2CC();
    if (v9)
    {
      return;
    }
  }

  if (*(v8 + 160) == 2)
  {
    goto LABEL_15;
  }

  v13 = *(v8 + 136);
  if (v13 == 1)
  {
    goto LABEL_15;
  }

  if (*(v8 + 8) == 255)
  {
    if (*(v8 + 256))
    {
      goto LABEL_39;
    }

    goto LABEL_15;
  }

  if (*(*(v8 + 464) + 16))
  {
    goto LABEL_15;
  }

  v14 = *(v8 + 448);
  if ((v14 & 3) != 0)
  {
    goto LABEL_15;
  }

  v15 = *(v8 + 16);
  v17 = *(v8 + 248);
  v16 = *(v8 + 256);
  if ((v15 & 0x55) != 0)
  {
    if ((v15 & 0x51) != 0)
    {
      if ((*(v8 + 16) & 0x41) == 0x40)
      {
        if (qword_1EDEABDE0 != -1)
        {
          swift_once();
        }

        v18 = qword_1EDEABDE8;
        *a3 = 12;
        a3[1] = v18;
        a3[2] = 1310976;
        return;
      }

      if ((v16 & 0x51) != 0)
      {
        goto LABEL_39;
      }

      if ((v15 & 0x10) == 0)
      {
        if (v17)
        {
          if ((v15 & 2) == 0)
          {
            if (qword_1EDEABDE0 != -1)
            {
              swift_once();
            }

            v35 = qword_1EDEABDE8;
            v36 = sub_1CEFF8C8C();
            *a3 = 2;
            a3[1] = v35;
            goto LABEL_61;
          }

          if (qword_1EDEABDE0 != -1)
          {
            swift_once();
          }

          v37 = qword_1EDEABDE8;
          v46 = unk_1F4BECDA0;
          if ((unk_1F4BECDA0 & ~qword_1F4BECD98) == 0)
          {
            v46 = 0;
          }

          v47 = v46 | qword_1F4BECD98;
          v48 = qword_1F4BECDA8;
          v38 = unk_1F4BECDB0;
          if ((qword_1F4BECDA8 & ~v47) == 0)
          {
            v48 = 0;
          }

          v39 = v48 | v47;
          goto LABEL_92;
        }

LABEL_39:
        if (qword_1EDEABDE0 != -1)
        {
          swift_once();
        }

        v32 = qword_1EDEABDE8;
        *a3 = 2;
        a3[1] = v32;
        a3[2] = 0;
        return;
      }

      if (v17)
      {
        if (qword_1EDEABDE0 != -1)
        {
          swift_once();
        }

        v37 = qword_1EDEABDE8;
        v39 = qword_1F4BECD68;
        v38 = unk_1F4BECD70;
LABEL_92:
        if ((v38 & ~v39) == 0)
        {
          v38 = 0;
        }

        *a3 = 2;
        a3[1] = v37;
        a3[2] = v38 | v39;
        return;
      }
    }

LABEL_15:
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 89;
    return;
  }

  v19 = *(v8 + 24);
  v20 = *(v8 + 32);
  v21 = *(v8 + 137);
  v22 = *(v8 + 138);
  v23 = *(v8 + 192);
  v24 = *(v8 + 240);
  v25 = *(v8 + 272);
  v26 = *(v8 + 344);
  v27 = *(v8 + 345);
  if (v27 == 4 || v21 == 3)
  {
    v28 = 0;
    if (*(v8 + 272))
    {
      v29 = 0;
    }

    else
    {
      v29 = v27 == 4;
    }

    v30 = v29;
    if (v13 == 2 && !v30)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v27 == 6)
    {
      v28 = *(v8 + 272);
    }

    else
    {
      v28 = 5;
    }

    if (v21 != 6)
    {
      v28 = 5;
    }
  }

  v31 = 1843460;
  if ((v19 & 0x10000000000) != 0)
  {
    v33 = *(v8 + 456);
    if (v33 == 4)
    {
      __break(1u);
LABEL_190:
      __break(1u);
      goto LABEL_191;
    }

    if (!*(v8 + 136) && v33 == 2)
    {
      goto LABEL_45;
    }
  }

  if (v28 <= 2)
  {
    if (!v28)
    {
LABEL_45:
      v34 = 24;
      goto LABEL_104;
    }

    if (v28 == 1)
    {
      goto LABEL_67;
    }

    goto LABEL_48;
  }

  if (v28 == 3)
  {
    if (!(*(v8 + 264) & 8 | *(v8 + 256) & 0x51))
    {
LABEL_67:
      v40 = *(v8 + 456);
      if ((v19 & 0x10000) != 0)
      {
        if (v40 != 1)
        {
          if (v40 != 4)
          {
            *a3 = xmmword_1CFA00360;
            a3[2] = 1843456;
            return;
          }

          goto LABEL_192;
        }
      }

      else if (v40 != 1)
      {
        if (v40 == 4)
        {
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
          goto LABEL_194;
        }

        v31 = 1876224;
        v34 = 16;
        goto LABEL_104;
      }

      v31 = 1876244;
      v34 = 16;
LABEL_104:
      if (v17 && (v16 & 1) == 0)
      {
        if ((v34 & 2) != 0)
        {
          v31 |= 0x402uLL;
        }

        v50 = v31 | ((v34 & 1) << 10);
        v51 = (v34 >> 4) & 1;
        if (v19 != 0x10000)
        {
          LODWORD(v51) = 1;
        }

        if (!v51)
        {
          v50 |= 0x1000uLL;
        }

        v52 = v50 | 0x4000;
        if (v20)
        {
          v52 = v50;
        }

        if ((v19 & 0x100000000000) != 0)
        {
          v53 = v52;
        }

        else
        {
          v53 = v50;
        }

        if ((v14 & 0xC) == 4 || (v24 & 4) != 0)
        {
          if ((v24 & 0x30) == 0)
          {
            if (qword_1EDEABDE0 != -1)
            {
              swift_once();
            }

            v76 = v34 & 0xFFFFDFFFFFFEF6E7 & (qword_1EDEABDE8 | 0x6409000000C000);
            if (!v76)
            {
              goto LABEL_15;
            }

            goto LABEL_184;
          }

          v92 = v14 & 0xC;
        }

        else
        {
          v92 = v14 & 0xC;
          if (v92 == 12)
          {
            v54 = v19;
            v55 = v23;
            v56 = v27;
            v96 = v53;
            v57 = v25;
            sub_1CEFF5464(&unk_1F4BECCD0, __src, v22, v26, a4, a5, a6, a7, a8);
            v25 = v57;
            v53 = v96;
            v27 = v56;
            v23 = v55;
            v19 = v54;
            v34 |= __src[0];
          }
        }

        if ((v34 & 0x200000010918) != 0)
        {
          v84 = v25;
          v64 = v27;
          v65 = v23;
          v66 = v19;
          v96 = v9;
          sub_1CF7F62D0(__dst);
          if (!__dst[0] || LOBYTE(__dst[27]) == 255 || (__dst[19] & 0xF000000000000000) == 0xB000000000000000)
          {
            memcpy(__src, __dst, 0x208uLL);
            sub_1CEFCCC44(__src, &unk_1EC4BFC90, &unk_1CFA053E0);
          }

          else
          {
            v67 = LOBYTE(__dst[43]);
            memcpy(__src, __dst, 0x208uLL);
            sub_1CEFCCC44(__src, &unk_1EC4BFC90, &unk_1CFA053E0);
            if (!v67 && v84)
            {
              if (qword_1EDEABDE0 != -1)
              {
                swift_once();
              }

              v68 = v34 & 0xFFFFDFFFFFFEF6E7 & (qword_1EDEABDE8 | 0x6409000000C000);
              if (v68)
              {
                *a3 = 1;
                a3[1] = v68;
                a3[2] = v53;
              }

              else
              {
                a3[1] = 0;
                a3[2] = 0;
                *a3 = 89;
              }

              return;
            }
          }

          v19 = v66;
          v23 = v65;
          v27 = v64;
        }

        if ((v34 & 8) == 0)
        {
          goto LABEL_149;
        }

        v69 = v53 & 0xFFFFFFFFFFEFFFFFLL;
        if (v13 > 2)
        {
          if (v13 != 3)
          {
            goto LABEL_153;
          }
        }

        else if (v13)
        {
LABEL_153:
          v70 = *(v10 + 456);
          if (v70 == 1)
          {
            v77 = v23 >> 60 != 11;
LABEL_181:
            if (!v77 || v92 != 12)
            {
LABEL_149:
              *a3 = 1;
              if ((v34 & 0x10) != 0)
              {
                a3[1] = 16;
              }

              else
              {
                a3[1] = v19;
              }

              goto LABEL_185;
            }

            v78 = v19;
            sub_1CEFF5464(&stru_1F4BECBF0, __src, v22, v26, a4, a5, a6, a7, a8);
            v76 = __src[0] | v78;
LABEL_184:
            *a3 = 1;
            a3[1] = v76;
LABEL_185:
            a3[2] = v53;
            return;
          }

          if (v70 != 4)
          {
            if (v23 >> 60 == 11)
            {
              sub_1CEFF5464(&unk_1F4BECC20, __src, v22, v26, a4, a5, a6, a7, a8);
              v71 = __src[0] & v34;
              *a3 = 23;
              a3[1] = v71;
              a3[2] = v69;
              return;
            }

            v77 = 1;
            goto LABEL_181;
          }

          goto LABEL_193;
        }

        if (v27 == 3)
        {
          goto LABEL_15;
        }

        v74 = *(v10 + 456);
        if (v74 == 1)
        {
          v79 = sub_1CEFF8C8C();
          *a3 = 6;
          a3[1] = v34 & 0x10;
          a3[2] = v79;
          return;
        }

        if (v74 != 4)
        {
          sub_1CEFF5464(&stru_1F4BECCA0, __src, v22, v26, a4, a5, a6, a7, a8);
          v75 = __src[0] & v34;
          *a3 = 23;
          a3[1] = v75;
          a3[2] = v69;
          return;
        }

LABEL_194:
        __break(1u);
        return;
      }

      if (v17)
      {
        if (v19 & 8) == 0 && (v16)
        {
          v88 = v21;
          v90 = v20;
          v58 = *(*result + 152);
          v96 = v9;
          v59 = v19;
          v93 = v23;
          v60 = v22;
          v86 = v26;
          v61 = v58(v24);
          LODWORD(v26) = v86;
          v21 = v88;
          v20 = v90;
          v23 = v93;
          if ((v34 & 2) == 0)
          {
            goto LABEL_15;
          }

          if ((v16 & 0x80) == 0)
          {
            goto LABEL_15;
          }

          LOBYTE(v22) = v60;
          v19 = v59;
          if ((v61 & 0x4000) == 0)
          {
            goto LABEL_15;
          }
        }
      }

      if (v21 == 5)
      {
        goto LABEL_15;
      }

      v62 = *(v10 + 456);
      if (v62 == 1)
      {
        if (!v19 && v21 != 6 && v17)
        {
          goto LABEL_15;
        }

        goto LABEL_161;
      }

      if (v62 != 4)
      {
        if ((v13 - 3) < 2)
        {
          goto LABEL_15;
        }

        if (!v13)
        {
          if (v62 == 2)
          {
            v63 = sub_1CEFF8C8C();
            *a3 = xmmword_1CFA04E90;
            a3[2] = v63;
            return;
          }

          goto LABEL_161;
        }

        if (v21 || (v22 & 1) == 0)
        {
          if (v17 && (v26 | 4) == 4)
          {
            goto LABEL_187;
          }

          if (v23 >> 60 == 11)
          {
            if (v20)
            {
              v36 = sub_1CEFF8C8C();
              *a3 = xmmword_1CFA04E90;
LABEL_61:
              a3[2] = v36;
              return;
            }

LABEL_187:
            a3[1] = 0;
            a3[2] = 0;
            *a3 = 89;
            return;
          }
        }

LABEL_161:
        v72 = v19;
        v73 = sub_1CEFF8C8C();
        *a3 = 0;
        a3[1] = v72;
        a3[2] = v73;
        return;
      }

      goto LABEL_190;
    }

    v31 = 1843456;
    if (v19)
    {
LABEL_101:
      v34 = v19;
      goto LABEL_104;
    }

LABEL_83:
    if ((~v14 & 0xC) != 0)
    {
      goto LABEL_15;
    }

    v34 = 0;
    goto LABEL_104;
  }

  if (v28 == 5)
  {
LABEL_48:
    if (v13 == 4)
    {
      goto LABEL_99;
    }

    if (!*(v8 + 136))
    {
      v80 = *(v8 + 240);
      v85 = *(v8 + 344);
      v87 = *(v8 + 137);
      v81 = *(v8 + 138);
      v82 = *(v8 + 345);
      v89 = *(v8 + 32);
      v83 = *(v8 + 272);
      v91 = *(v8 + 192);
      v96 = *(v8 + 24);
      sub_1CF7F62D0(__src);
      if (!__src[0] || LOBYTE(__src[27]) == 255 || __src[19] >> 60 == 11)
      {
        memcpy(__dst, __src, sizeof(__dst));
        sub_1CEFCCC44(__dst, &unk_1EC4BFC90, &unk_1CFA053E0);
LABEL_54:
        v19 = v96;
        v23 = v91;
        v27 = v82;
        v25 = v83;
        v21 = v87;
        v20 = v89;
        v22 = v81;
        v26 = v85;
        v24 = v80;
LABEL_99:
        if ((v19 & 8) != 0)
        {
          v34 = v19 & 0xFFFFFFFFFFFFFFF7;
          if ((v19 & 0xFFFFFFFFFFFFFFF7) == 0)
          {
            *a3 = 1;
            a3[1] = v19;
            a3[2] = 794880;
            return;
          }

          v31 = 1876224;
          goto LABEL_104;
        }

LABEL_100:
        v31 = 1876224;
        if (v19)
        {
          goto LABEL_101;
        }

        goto LABEL_83;
      }

      v49 = LOBYTE(__src[43]);
      memcpy(__dst, __src, sizeof(__dst));
      sub_1CEFCCC44(__dst, &unk_1EC4BFC90, &unk_1CFA053E0);
      if (v49)
      {
        goto LABEL_54;
      }

      v19 = v96;
      v23 = v91;
      v27 = v82;
      v25 = v83;
      v21 = v87;
      v20 = v89;
      v22 = v81;
      v26 = v85;
      v24 = v80;
    }

    if (v26 && v26 != 4)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  v41 = unk_1F4BECD30;
  if ((unk_1F4BECD30 & ~qword_1F4BECD28) == 0)
  {
    v41 = 0;
  }

  v42 = v41 | qword_1F4BECD28;
  v44 = qword_1F4BECD38;
  v43 = unk_1F4BECD40;
  if ((qword_1F4BECD38 & ~v42) == 0)
  {
    v44 = 0;
  }

  v45 = v44 | v42;
  if ((unk_1F4BECD40 & ~v45) == 0)
  {
    v43 = 0;
  }

  *a3 = xmmword_1CFA04E80;
  a3[2] = v43 | v45;
}

uint64_t sub_1CF3FB4A8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    if (a2)
    {

      v5 = a2;
      sub_1CF9E7948();
      0xE000000000000000, v6, v7, v8, v9, v10, v11, v12;
      strcpy(v49, "item changed ");
      HIWORD(v49[1]) = -4864;
      v13 = [v5 description];
      v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v16 = v15;

      MEMORY[0x1D3868CC0](v14, v16);
      v16, v17, v18, v19, v20, v21, v22, v23;
      MEMORY[0x1D3868CC0](0x3A73656C7572202CLL, 0xE900000000000020);
      v24 = sub_1CF3F1D48();
      v26 = v25;
      MEMORY[0x1D3868CC0](v24);

      v34 = v26;
    }

    else
    {
      strcpy(v49, "item changed ");
      HIWORD(v49[1]) = -4864;

      v45 = NSFileProviderItemIdentifier.description.getter(a1);
      v47 = v46;
      MEMORY[0x1D3868CC0](v45);

      v34 = v47;
    }
  }

  else
  {
    sub_1CF9E7948();
    0xE000000000000000, v35, v36, v37, v38, v39, v40, v41;
    v49[0] = 0xD00000000000001ALL;
    v49[1] = 0x80000001CFA464B0;
    v42 = NSFileProviderItemIdentifier.description.getter(a1);
    v44 = v43;
    MEMORY[0x1D3868CC0](v42);
    v34 = v44;
  }

  v34, v27, v28, v29, v30, v31, v32, v33;
  return v49[0];
}

uint64_t sub_1CF3FB654()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v64 - v3;
  v5 = type metadata accessor for VFSItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C8, &qword_1CFA058F0);
  if (!*(v1 + *(v9 + 40)))
  {
    v66[0] = 0;
    v66[1] = 0xE000000000000000;
    sub_1CF9E7948();
    v66[1], v23, v24, v25, v26, v27, v28, v29;
    v66[0] = 0xD00000000000001ALL;
    v66[1] = 0x80000001CFA464B0;
    v30 = *(v1 + 8);
    v64 = *v1;
    v65 = v30;
    v32 = VFSItemID.description.getter(v31);
    v34 = v33;
    MEMORY[0x1D3868CC0](v32);
    v22 = v34;
    goto LABEL_5;
  }

  sub_1CEFCCBDC(v1 + *(v9 + 36), v4, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    v10 = sub_1CEFCCC44(v4, &unk_1EC4BEC00, &unk_1CF9FCB60);
    strcpy(v66, "item changed ");
    HIWORD(v66[1]) = -4864;
    v11 = *(v1 + 8);
    v64 = *v1;
    v65 = v11;
    v12 = VFSItemID.description.getter(v10);
    v14 = v13;
    MEMORY[0x1D3868CC0](v12);

    v22 = v14;
LABEL_5:
    v22, v15, v16, v17, v18, v19, v20, v21;
    return v66[0];
  }

  sub_1CEFD9F8C(v4, v8, type metadata accessor for VFSItem);
  v66[0] = 0;
  v66[1] = 0xE000000000000000;

  sub_1CF9E7948();
  v66[1], v36, v37, v38, v39, v40, v41, v42;
  strcpy(v66, "item changed ");
  HIWORD(v66[1]) = -4864;
  v43 = sub_1CF255338();
  v45 = v44;
  MEMORY[0x1D3868CC0](v43);
  v45, v46, v47, v48, v49, v50, v51, v52;
  MEMORY[0x1D3868CC0](0x3A73656C7572202CLL, 0xE900000000000020);
  v53 = sub_1CF3F1EBC();
  v55 = v54;
  MEMORY[0x1D3868CC0](v53);

  v55, v56, v57, v58, v59, v60, v61, v62;
  v63 = v66[0];
  sub_1CEFD5278(v8, type metadata accessor for VFSItem);
  return v63;
}

void sub_1CF3FB96C(void *a1, void **a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v160 = a1;
  v158 = a4;
  v157 = a3;
  v154 = sub_1CF9E6118();
  v150 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v153 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v142 = &v135 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0588, &qword_1CFA05950);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v156 = &v135 - v11;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0590, &qword_1CFA05958);
  v147 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v161 = (&v135 - v12);
  v13 = sub_1CF9E5CF8();
  v152 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v151 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v149 = (&v135 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v135 - v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0570, qword_1CFA18A50);
  inited = swift_initStackObject();
  v21 = MEMORY[0x1E69E7CC0];
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  *(inited + 24) = v21;
  *(inited + 32) = v21;
  *(inited + 40) = v21;
  *(inited + 48) = 0;
  sub_1CEFCCBDC(v160, v19, &unk_1EC4BFD70, &qword_1CFA12AC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7)
  {
    v32 = *v19;
    v33 = sub_1CF1CE930(v32);
    if (!v33)
    {
LABEL_19:

      return;
    }

    sub_1CF4821D4(v33, v34, v35);
    v36 = v32;
    v37 = v151;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v39 = v38;
    (*(v152 + 8))(v37, v13);
    v40 = v39 * 1000000000.0;
    if (COERCE__INT64(fabs(v39 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v40 <= -9.22337204e18)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v140 = v13;
    if (v40 >= 9.22337204e18)
    {
LABEL_49:
      __break(1u);
      return;
    }

    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
    v42 = swift_allocObject();
    *(v42 + 16) = 0u;
    *(v42 + 32) = 0u;
    *(v42 + 48) = 1;
    *(v42 + 56) = 0u;
    *(v42 + 72) = 0u;
    *(v42 + 120) = 0x2000000000000000;
    *(v42 + 128) = v41;
    *(v42 + 136) = 2048;
    *(v42 + 144) = v36;
    *(v42 + 96) = 0;
    *(v42 + 104) = 0;
    *(v42 + 88) = 0;
    *(v42 + 112) = 1;
    swift_beginAccess();

    sub_1CF7E3200(v43);
    swift_endAccess();

    v27 = v157;
    v13 = v140;
LABEL_12:
    v28 = v158;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 6)
  {
    sub_1CEFCCC44(v19, &unk_1EC4BFD70, &qword_1CFA12AC0);
    v27 = v157;
    goto LABEL_12;
  }

  v23 = *v19;
  v24 = sub_1CF1CE930(*v19);
  v27 = v157;
  v28 = v158;
  if (!v24)
  {

    v32 = v19[1];
    goto LABEL_19;
  }

  v137 = v24;
  v160 = v23;
  v139 = v26;
  v138 = v25;
  if (v25)
  {
    v29 = v25;
    v30 = v149;
    sub_1CF3F0810(v29, v149);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v30 = v149;
  }

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  (*(*(v77 - 8) + 56))(v30, v31, 1, v77);
  v78 = v151;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v80 = v79;
  (*(v152 + 8))(v78, v13);
  *&v81 = v80 * 1000000000.0;
  if (COERCE__INT64(fabs(v80 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_44;
  }

  v136 = v19;
  v82 = v160;
  if (*&v81 <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v140 = v13;
  v148 = inited;
  if (*&v81 >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v146 = *&v81;
  v163 = v27;
  v147 += 6;
  v145 = (v150 + 8);
  v83 = 1;
  v164 = v28;
  *&v81 = 136315394;
  v141 = v81;
  v84 = 1;
  v85 = v156;
  do
  {
    v105 = v83;
    sub_1CF438400(v30, v82, 0, 0, 2048, a2, v27, v28, v85);
    if (v5)
    {

      sub_1CEFCCC44(v30, &unk_1EC4BFBB0, &qword_1CF9FCB90);

      v76 = v136[1];
      goto LABEL_17;
    }

    if ((*v147)(v85, 1, v155) == 1)
    {
      sub_1CEFCCC44(v85, &qword_1EC4C0588, &qword_1CFA05950);
      inited = v148;
      v13 = v140;
      goto LABEL_40;
    }

    LODWORD(v159) = v105;
    v106 = v161;
    sub_1CEFE55D0(v85, v161, &qword_1EC4C0590, &qword_1CFA05958);
    v107 = sub_1CF41BBFC(v106, v82, 0, a2, 0x2000000000000000, v146, 2048, v148, v27, v28);
    if ((((((*a2)[19])() & 0x4000) != 0) & v107) == 0)
    {
      sub_1CEFCCC44(v161, &qword_1EC4C0590, &qword_1CFA05958);
      inited = v148;
      v13 = v140;
      goto LABEL_39;
    }

    v150 = v84;
    (*(*a2[2] + 528))(&v163, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    (*(*a2[4] + 688))(&v163, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    (*(*a2[5] + 688))(&v163, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v108 = fpfs_current_or_default_log();
    v109 = v153;
    sub_1CF9E6128();
    v110 = v160;
    v111 = sub_1CF9E6108();
    v112 = sub_1CF9E7288();
    v113 = os_log_type_enabled(v111, v112);
    v144 = v110;
    if (v113)
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v143 = 0;
      v88 = v87;
      v162 = v87;
      *v86 = v141;
      v89 = NSFileProviderItemIdentifier.description.getter(v110);
      v90 = a2;
      v92 = v91;

      v93 = sub_1CEFD0DF0(v89, v92, &v162);
      v94 = v92;
      a2 = v90;
      v94, v95, v96, v97, v98, v99, v100, v101;
      *(v86 + 4) = v93;
      v30 = v149;
      v28 = v158;
      *(v86 + 12) = 2048;
      *(v86 + 14) = v150;
      _os_log_impl(&dword_1CEFC7000, v111, v112, "Ingesting %s, retries %ld", v86, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v88);
      v102 = v88;
      v5 = v143;
      MEMORY[0x1D386CDC0](v102, -1, -1);
      v103 = v86;
      v27 = v157;
      MEMORY[0x1D386CDC0](v103, -1, -1);
    }

    else
    {
    }

    v104 = *v145;
    (*v145)(v109, v154);
    sub_1CEFCCC44(v161, &qword_1EC4C0590, &qword_1CFA05958);
    v83 = 0;
    v84 = 2;
    v82 = v160;
    v85 = v156;
  }

  while ((v159 & 1) != 0);
  v114 = fpfs_current_or_default_log();
  v115 = v142;
  sub_1CF9E6128();
  v116 = v144;
  v117 = sub_1CF9E6108();
  v118 = sub_1CF9E72A8();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v162 = v120;
    *v119 = 136315138;
    v121 = NSFileProviderItemIdentifier.description.getter(v116);
    v161 = a2;
    v122 = v121;
    v124 = v123;

    v125 = sub_1CEFD0DF0(v122, v124, &v162);
    v124, v126, v127, v128, v129, v130, v131, v132;
    *(v119 + 4) = v125;
    _os_log_impl(&dword_1CEFC7000, v117, v118, "Transform could not converge for item %s", v119, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v120);
    MEMORY[0x1D386CDC0](v120, -1, -1);
    v133 = v119;
    v27 = v157;
    MEMORY[0x1D386CDC0](v133, -1, -1);

    v134 = v142;
  }

  else
  {

    v134 = v115;
  }

  v104(v134, v154);
  v28 = v158;
  inited = v148;
  v13 = v140;
  v30 = v149;
LABEL_39:
  v82 = v160;
LABEL_40:
  sub_1CEFCCC44(v30, &unk_1EC4BFBB0, &qword_1CF9FCB90);

LABEL_13:
  v44 = v151;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v46 = v45;
  (*(v152 + 8))(v44, v13);
  v47 = v46 * 1000000000.0;
  if (COERCE__INT64(fabs(v46 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v47 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v47 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  sub_1CF7F6A3C(inited, v47, v27, v28);
  swift_setDeallocating();
  *(inited + 16), v48, v49, v50, v51, v52, v53, v54;
  *(inited + 24), v55, v56, v57, v58, v59, v60, v61;
  *(inited + 32), v62, v63, v64, v65, v66, v67, v68;
  *(inited + 40), v69, v70, v71, v72, v73, v74, v75;
  v76 = *(inited + 48);
LABEL_17:
}

void sub_1CF3FC714(uint64_t a1, void **a2, void (*a3)(void), unsigned int a4)
{
  v163 = a4;
  v168 = a3;
  v164 = a2;
  v169 = a1;
  v160 = sub_1CF9E6118();
  v153 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v166 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v151 = &v146 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0500, &qword_1CFA058D8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v162 = (&v146 - v8);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0508, &unk_1CFA058E0);
  *&v152 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v170 = &v146 - v9;
  v158 = sub_1CF9E5CF8();
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v156 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v154 = &v146 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v165 = &v146 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0510, &unk_1CFA16940);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v146 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C8, &qword_1CFA058F0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v155 = &v146 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v146 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
  inited = swift_initStackObject();
  v28 = MEMORY[0x1E69E7CC0];
  inited[2] = MEMORY[0x1E69E7CC0];
  inited[3] = v28;
  inited[4] = v28;
  inited[5] = v28;
  v167 = inited;
  inited[6] = 0;
  sub_1CEFCCBDC(v169, v26, &unk_1EC4BFCC0, &unk_1CF9FCB50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    if (EnumCaseMultiPayload != 6)
    {
      sub_1CEFCCC44(v26, &unk_1EC4BFCC0, &unk_1CF9FCB50);
      v37 = v163;
      goto LABEL_32;
    }

    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFEC0, &unk_1CFA05590) + 48);
    v31 = v26[8];
    v169 = *v26;
    v159 = v31;
    sub_1CF384EC8(v169, v31, v20);
    v32 = (*(v22 + 48))(v20, 1, v21);
    v33 = v164;
    if (v32 == 1)
    {
      sub_1CEFCCC44(v20, &unk_1EC4C0510, &unk_1CFA16940);
      sub_1CEFCCC44(&v26[v30], &unk_1EC4BEC00, &unk_1CF9FCB60);
      return;
    }

    v148 = v26;
    v38 = v155;
    sub_1CEFE55D0(v20, v155, &qword_1EC4BE1C8, &qword_1CFA058F0);
    v39 = v154;
    sub_1CEFCCBDC(v38 + *(v21 + 36), v154, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CF3FD75C(v39, v165);
    v40 = v156;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v42 = v41;
    (*(v157 + 8))(v40, v158);
    *&v43 = v42 * 1000000000.0;
    if (COERCE__INT64(fabs(v42 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_47;
    }

    v37 = v163;
    v44 = v168;
    if (*&v43 <= -9.22337204e18)
    {
      goto LABEL_49;
    }

    if (*&v43 >= 9.22337204e18)
    {
      goto LABEL_51;
    }

    v147 = v30;
    v45 = (v152 + 48);
    ++v153;
    v154 = *&v43;
    v46 = 1953460082;
    if (v169)
    {
      v46 = 0x6873617274;
    }

    v150 = v46;
    v174 = v168;
    v175 = v163;
    v47 = 0xE500000000000000;
    if (!v169)
    {
      v47 = 0xE400000000000000;
    }

    v149 = v47;
    v48 = 1;
    *&v43 = 136315394;
    v152 = v43;
    v49 = 1;
    while (1)
    {
      v51 = v48;
      v52 = v162;
      v53 = v159;
      v54 = v171;
      sub_1CF43A7C4(v165, v169, v159, 0, 0, 2048, v33, v44, v162, v37);
      if (v54)
      {

        sub_1CEFCCC44(v165, &qword_1EC4C1B40, &unk_1CF9FCB70);
        sub_1CEFCCC44(v155, &qword_1EC4BE1C8, &qword_1CFA058F0);
        sub_1CEFCCC44(&v148[v147], &unk_1EC4BEC00, &unk_1CF9FCB60);
        return;
      }

      if ((*v45)(v52, 1, v161) == 1)
      {
        v124 = &qword_1EC4C0500;
        v125 = &qword_1CFA058D8;
        v126 = v52;
LABEL_39:
        sub_1CEFCCC44(v126, v124, v125);
        v127 = v148;
        goto LABEL_43;
      }

      v55 = v52;
      v56 = v170;
      sub_1CEFE55D0(v55, v170, &qword_1EC4C0508, &unk_1CFA058E0);
      sub_1CF429240(v56, v169, v53, 0, v33, 0x2000000000000000, v154, 2048, v167, v44, v37);
      if (((((*(*v33 + 152))() & 0x4000) != 0) & v57) == 0)
      {
        v124 = &qword_1EC4C0508;
        v125 = &unk_1CFA058E0;
        v126 = v170;
        goto LABEL_39;
      }

      v171 = 0;
      (*(**(v33 + 16) + 528))(&v174, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      (*(**(v33 + 32) + 688))(&v174, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      (*(**(v33 + 40) + 688))(&v174, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v58 = fpfs_current_or_default_log();
      v59 = v166;
      sub_1CF9E6128();
      v60 = sub_1CF9E6108();
      v61 = sub_1CF9E7288();
      if (os_log_type_enabled(v60, v61))
      {
        break;
      }

      v50 = *v153;
      (*v153)(v59, v160);
      sub_1CEFCCC44(v170, &qword_1EC4C0508, &unk_1CFA058E0);
LABEL_17:
      v44 = v168;
      v48 = 0;
      v49 = 2;
      if ((v51 & 1) == 0)
      {
        v128 = fpfs_current_or_default_log();
        v129 = v151;
        sub_1CF9E6128();
        v130 = sub_1CF9E6108();
        v131 = sub_1CF9E72A8();
        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          v173 = v133;
          *v132 = 136315138;
          v176 = v169;
          LOBYTE(v177) = v159;
          v134 = VFSItemID.description.getter(v133);
          v136 = v135;
          v137 = sub_1CEFD0DF0(v134, v135, &v173);
          v136, v138, v139, v140, v141, v142, v143, v144;
          *(v132 + 4) = v137;
          _os_log_impl(&dword_1CEFC7000, v130, v131, "Transform could not converge for item %s", v132, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v133);
          MEMORY[0x1D386CDC0](v133, -1, -1);
          v145 = v132;
          v37 = v163;
          MEMORY[0x1D386CDC0](v145, -1, -1);
        }

        v50(v129, v160);
        v127 = v148;
LABEL_43:
        sub_1CEFCCC44(v165, &qword_1EC4C1B40, &unk_1CF9FCB70);
        sub_1CEFCCC44(v155, &qword_1EC4BE1C8, &qword_1CFA058F0);
        sub_1CEFCCC44(&v127[v147], &unk_1EC4BEC00, &unk_1CF9FCB60);
LABEL_32:
        v91 = v156;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v93 = v92;
        (*(v157 + 8))(v91, v158);
        v94 = v93 * 1000000000.0;
        if (COERCE__INT64(fabs(v93 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v94 > -9.22337204e18)
        {
          if (v94 < 9.22337204e18)
          {
            v95 = v167;
            sub_1CF7F6588(v167, v94, v168, v37);
            swift_setDeallocating();
            v95[2], v96, v97, v98, v99, v100, v101, v102;
            v95[3], v103, v104, v105, v106, v107, v108, v109;
            v95[4], v110, v111, v112, v113, v114, v115, v116;
            v95[5], v117, v118, v119, v120, v121, v122, v123;

            return;
          }

LABEL_46:
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
LABEL_52:
          __break(1u);
          return;
        }

        __break(1u);
        goto LABEL_46;
      }
    }

    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v173 = v63;
    *v62 = v152;
    if (v159)
    {
      v64 = v150;
      v65 = v149;
      if (v159 != 1)
      {
LABEL_27:
        v76 = sub_1CEFD0DF0(v64, v65, &v173);
        v65, v77, v78, v79, v80, v81, v82, v83;
        *(v62 + 4) = v76;
        *(v62 + 12) = 2048;
        *(v62 + 14) = v49;
        _os_log_impl(&dword_1CEFC7000, v60, v61, "Ingesting %s, retries %ld", v62, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x1D386CDC0](v63, -1, -1);
        MEMORY[0x1D386CDC0](v62, -1, -1);

        v50 = *v153;
        (*v153)(v166, v160);
        sub_1CEFCCC44(v170, &qword_1EC4C0508, &unk_1CFA058E0);
        v37 = v163;
        v33 = v164;
        goto LABEL_17;
      }

      v176 = 0x284449656C6966;
      v177 = 0xE700000000000000;
      v172 = v169;
    }

    else
    {
      v176 = 0x284449636F64;
      v177 = 0xE600000000000000;
      LODWORD(v172) = v169;
    }

    v66 = sub_1CF9E7F98();
    v68 = v67;
    MEMORY[0x1D3868CC0](v66);
    v68, v69, v70, v71, v72, v73, v74, v75;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v64 = v176;
    v65 = v177;
    goto LABEL_27;
  }

  v34 = *v26;
  v35 = v26[8];
  sub_1CF384EC8(*v26, v35, v17);
  v36 = (*(v22 + 48))(v17, 1, v21);
  sub_1CEFCCC44(v17, &unk_1EC4C0510, &unk_1CFA16940);
  if (v36 != 1)
  {
    v84 = v156;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v86 = v85;
    (*(v157 + 8))(v84, v158);
    v87 = v86 * 1000000000.0;
    if (COERCE__INT64(fabs(v86 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_48;
    }

    v37 = v163;
    if (v87 <= -9.22337204e18)
    {
      goto LABEL_50;
    }

    if (v87 < 9.22337204e18)
    {
      v88 = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
      v89 = swift_allocObject();
      *(v89 + 152) = v35;
      *(v89 + 16) = 0u;
      *(v89 + 32) = 0u;
      *(v89 + 48) = 1;
      *(v89 + 56) = 0u;
      *(v89 + 72) = 0u;
      *(v89 + 120) = 0x2000000000000000;
      *(v89 + 128) = v88;
      *(v89 + 136) = 2048;
      *(v89 + 144) = v34;
      *(v89 + 96) = 0;
      *(v89 + 104) = 0;
      *(v89 + 88) = 0;
      *(v89 + 112) = 1;
      swift_beginAccess();

      sub_1CF7E3218(v90);
      swift_endAccess();

      goto LABEL_32;
    }

    goto LABEL_52;
  }
}

uint64_t sub_1CF3FD75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v69 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v4 = &v66 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v66 - v6;
  v8 = type metadata accessor for VFSItem(0);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v66 - v13;
  v68 = a1;
  sub_1CEFCCBDC(a1, v7, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1CEFCCC44(v68, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCC44(v7, &unk_1EC4BEC00, &unk_1CF9FCB60);
    return (*(v69 + 56))(v70, 1, 1, v67);
  }

  else
  {
    v16 = v14;
    sub_1CEFD9F8C(v7, v14, type metadata accessor for VFSItem);
    sub_1CEFDA214(v14, v11, type metadata accessor for VFSItem);
    v17 = v67;
    v18 = &v4[*(v67 + 52)];
    sub_1CEFE528C(v90);
    v19 = v90[13];
    *(v18 + 12) = v90[12];
    *(v18 + 13) = v19;
    *(v18 + 14) = v90[14];
    *(v18 + 30) = v91;
    v20 = v90[9];
    *(v18 + 8) = v90[8];
    *(v18 + 9) = v20;
    v21 = v90[11];
    *(v18 + 10) = v90[10];
    *(v18 + 11) = v21;
    v22 = v90[5];
    *(v18 + 4) = v90[4];
    *(v18 + 5) = v22;
    v23 = v90[7];
    *(v18 + 6) = v90[6];
    *(v18 + 7) = v23;
    v24 = v90[1];
    *v18 = v90[0];
    *(v18 + 1) = v24;
    v25 = v90[3];
    *(v18 + 2) = v90[2];
    *(v18 + 3) = v25;
    v26 = &v4[v17[14]];
    *v26 = 0u;
    *(v26 + 1) = 0u;
    v26[32] = 1;
    v27 = &v4[v17[15]];
    *v27 = 0;
    *(v27 + 1) = 0;
    v27[16] = 1;
    v28 = *v11;
    v29 = v11[8];
    *v4 = *v11;
    v4[8] = v29;
    v30 = *(v11 + 2);
    v31 = v11[24];
    if (v29 == 2 && v28 < 2)
    {
      v32 = 2;
    }

    else
    {
      v28 = *(v11 + 2);
      v32 = v11[24];
    }

    *(v4 + 2) = v28;
    v4[24] = v32;
    v33 = &v11[v8[9]];
    v34 = *v33;
    v35 = *(v33 + 2);
    v36 = *(v33 + 2);
    LOBYTE(v33) = v33[24];
    v37 = *(v11 + 4);
    v38 = *(v11 + 5);
    *(v4 + 4) = v34;
    *(v4 + 10) = v35;
    *(v4 + 6) = v36;
    v4[56] = v33;
    v4[80] = v31;
    *(v4 + 11) = v37;
    *(v4 + 12) = v38;
    *(v4 + 8) = 0;
    *(v4 + 9) = v30;
    *(v4 + 13) = 0;
    *(v4 + 14) = 0;
    *(v4 + 15) = 0;
    *(v4 + 16) = v37;
    *(v4 + 17) = v38;
    sub_1CEFDA214(&v11[v8[7]], &v4[v17[12]], type metadata accessor for ItemMetadata);
    v39 = &v11[v8[8]];
    v40 = *(v39 + 13);
    v84 = *(v39 + 12);
    v85 = v40;
    v86 = *(v39 + 14);
    v87 = *(v39 + 30);
    v41 = *(v39 + 9);
    v80 = *(v39 + 8);
    v81 = v41;
    v42 = *(v39 + 11);
    v82 = *(v39 + 10);
    v83 = v42;
    v43 = *(v39 + 5);
    v76 = *(v39 + 4);
    v77 = v43;
    v44 = *(v39 + 7);
    v78 = *(v39 + 6);
    v79 = v44;
    v45 = *(v39 + 3);
    v74 = *(v39 + 2);
    v75 = v45;
    v46 = *(v39 + 1);
    v72 = *v39;
    v73 = v46;
    v47 = *(v18 + 13);
    v88[12] = *(v18 + 12);
    v88[13] = v47;
    v88[14] = *(v18 + 14);
    v89 = *(v18 + 30);
    v48 = *(v18 + 9);
    v88[8] = *(v18 + 8);
    v88[9] = v48;
    v49 = *(v18 + 11);
    v88[10] = *(v18 + 10);
    v88[11] = v49;
    v50 = *(v18 + 5);
    v88[4] = *(v18 + 4);
    v88[5] = v50;
    v51 = *(v18 + 7);
    v88[6] = *(v18 + 6);
    v88[7] = v51;
    v52 = *(v18 + 1);
    v88[0] = *v18;
    v88[1] = v52;
    v53 = *(v18 + 3);
    v88[2] = *(v18 + 2);
    v88[3] = v53;
    swift_bridgeObjectRetain_n();
    sub_1CEFCCBDC(&v72, &v71, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    sub_1CEFCCC44(v88, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v54 = v85;
    *(v18 + 12) = v84;
    *(v18 + 13) = v54;
    *(v18 + 14) = v86;
    *(v18 + 30) = v87;
    v55 = v81;
    *(v18 + 8) = v80;
    *(v18 + 9) = v55;
    v56 = v83;
    *(v18 + 10) = v82;
    *(v18 + 11) = v56;
    v57 = v77;
    *(v18 + 4) = v76;
    *(v18 + 5) = v57;
    v58 = v79;
    *(v18 + 6) = v78;
    *(v18 + 7) = v58;
    v59 = v73;
    *v18 = v72;
    *(v18 + 1) = v59;
    v60 = v75;
    *(v18 + 2) = v74;
    *(v18 + 3) = v60;
    *&v4[v17[16]] = 0;
    v61 = sub_1CF252CF4();
    v63 = v62;
    sub_1CEFD5278(v11, type metadata accessor for VFSItem);
    v64 = &v4[v17[17]];
    *v64 = v61;
    v64[1] = v63;
    v65 = v70;
    sub_1CEFE55D0(v4, v70, &unk_1EC4BE360, &qword_1CF9FE650);
    sub_1CEFCCC44(v68, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFD5278(v16, type metadata accessor for VFSItem);
    return (*(v69 + 56))(v65, 0, 1, v17);
  }
}

void sub_1CF3FDD38(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(a2 + 16) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v30 = *(a2 + 16);

  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = *(v30 + 56) + 24 * (v12 | (v11 << 6));
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    v31 = a1[3];
    v32 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v31);

    v17 = v14;
    v18 = v15;
    v19 = sub_1CF3FB4A8(v17, v15, v16);
    v21 = v20;

    sub_1CF4FB2BC(v19, v21, v31, v32);
    v21, v22, v23, v24, v25, v26, v27, v28;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v4 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1CF3FDEA0(void *a1, uint64_t a2)
{
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C8, &qword_1CFA058F0);
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v28 - v4;
  v5 = *(a2 + 16);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(a2 + 16) + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v32 = *(a2 + 16);

  v13 = 0;
  while (v11)
  {
    v14 = v13;
LABEL_9:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v29;
    sub_1CEFCCBDC(*(v32 + 56) + *(v30 + 72) * (v15 | (v14 << 6)), v29, &qword_1EC4BE1C8, &qword_1CFA058F0);
    v17 = v31[3];
    v33 = v31[4];
    __swift_project_boxed_opaque_existential_1(v31, v17);
    v18 = sub_1CF3FB654();
    v20 = v19;
    sub_1CEFCCC44(v16, &qword_1EC4BE1C8, &qword_1CFA058F0);
    sub_1CF4FB2BC(v18, v20, v17, v33);
    v20, v21, v22, v23, v24, v25, v26, v27;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(v7 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1CF3FE08C(void *a1, uint64_t a2)
{
  v31 = a1;
  v3 = type metadata accessor for SyncState(0);
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a2 + 24);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(a2 + 24) + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v32 = *(a2 + 24);

  v13 = 0;
  while (v11)
  {
    v14 = v13;
LABEL_9:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v29;
    sub_1CEFDA214(*(v32 + 56) + *(v30 + 72) * (v15 | (v14 << 6)), v29, type metadata accessor for SyncState);
    v17 = v31[3];
    v33 = v31[4];
    __swift_project_boxed_opaque_existential_1(v31, v17);
    v18 = sub_1CF04CC80();
    v20 = v19;
    sub_1CEFD5278(v16, type metadata accessor for SyncState);
    sub_1CF4FB2BC(v18, v20, v17, v33);
    v20, v21, v22, v23, v24, v25, v26, v27;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(v7 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

double sub_1CF3FE320@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v9 = MEMORY[0x1E69E7CC0];
  v10 = a1(MEMORY[0x1E69E7CC0]);
  v11 = a2(v9);
  v12 = a3(v9);
  v13 = sub_1CF03AD00(v9);
  v14 = a4(v9);
  *a5 = v10;
  *(a5 + 8) = v11;
  *(a5 + 16) = v12;
  *(a5 + 24) = v13;
  *&result = 2;
  *(a5 + 32) = xmmword_1CF9FD950;
  *(a5 + 48) = 0;
  *(a5 + 56) = v14;
  *(a5 + 64) = 0;
  *(a5 + 66) = 0;
  *(a5 + 72) = v9;
  *(a5 + 80) = v9;
  *(a5 + 88) = 0;
  return result;
}