uint64_t sub_22BF56B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_22BE18DA0();
}

uint64_t sub_22BF56B44()
{
  sub_22BE2035C();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v0[7] = sub_22BF52030();
  v6 = swift_allocObject();
  v0[8] = v6;
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = v2;
  v6[5] = v5;
  v6[6] = v3;

  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_22BF56C78;

  return sub_22BF52250(sub_22BF52250, &unk_22C28ECE8, v6);
}

uint64_t sub_22BF56C78()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF56D80()
{
  sub_22BE183F0();

  sub_22BE17A94();

  return v0();
}

uint64_t sub_22BF56DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  return MEMORY[0x2822009F8](sub_22BF56E0C, 0, 0);
}

uint64_t sub_22BF56E0C()
{
  sub_22BE2035C();
  v14 = v0;
  sub_22BF54F00(v0[3], v0[4]);
  v2 = v1;
  sub_22BF4D750();
  v4 = v3;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v13[0] = 0;
  v13[1] = 0;
  sub_22BF55940(v5, v13, v2, v4, v7, v8, v6);

  v10 = sub_22BE291B0();
  sub_22BF55CC4(v10, v11);

  sub_22BE1A26C();

  return v12();
}

uint64_t sub_22BF56EFC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v91 = a2;
  v92 = a3;
  v4 = sub_22C272A74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v90 - v9;
  v11 = sub_22C272AC4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v90 - v16;
  v93 = a1;
  v18 = sub_22C272154();
  MEMORY[0x2318AB1A0](v18);
  v19 = v4;
  v20 = *(v12 + 8);
  v20(v17, v11);
  v21 = (*(v5 + 88))(v10, v19);
  if (v21 == *MEMORY[0x277D730E0])
  {
    v22 = *(v5 + 8);
    v22(v10, v19);
    v23 = sub_22C272154();
    MEMORY[0x2318AB1A0](v23);
    v20(v14, v11);
    v24 = v94;
    v25 = sub_22C272A64();
    if (v24)
    {
      v27 = (v22)(v7, v19);
      return v27 & 1;
    }

    v44 = v25;
    v45 = v26;
    v94 = 0;
    v22(v7, v19);
    v46 = v91;
    v47 = *v91;
    sub_22C274154();
    sub_22C274174();
    sub_22C272F44();
    v48 = sub_22C2741A4();
    v49 = v47 + 56;
    v50 = -1 << *(v47 + 32);
    v51 = v48 & ~v50;
    if ((*(v47 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
    {
      v52 = ~v50;
      v53 = *(v47 + 48);
      do
      {
        v54 = (v53 + 16 * v51);
        v55 = v54[1];
        if (v55)
        {
          v56 = *v54 == v44 && v55 == v45;
          if (v56 || (sub_22C274014() & 1) != 0)
          {
            goto LABEL_49;
          }
        }

        v51 = (v51 + 1) & v52;
      }

      while (((*(v49 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) != 0);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = *v46;
    v58 = v105;
    *v46 = 0x8000000000000000;
    v59 = *(v58 + 16);
    v60 = *(v58 + 24);

    if (v60 <= v59)
    {
      v68 = v59 + 1;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_22C1A9E40(v68, v61, v62, v63, v64, v65, v66, v67, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
      }

      else
      {
        sub_22C1AD514(v68, v61, v62, v63, v64, v65, v66, v67, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
      }

      v76 = v105;
      sub_22C274154();
      sub_22C274174();
      sub_22C272F44();
      v77 = sub_22C2741A4();
      v78 = v76 + 56;
      v79 = -1 << *(v76 + 32);
      v51 = v77 & ~v79;
      if ((*(v76 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
      {
        v80 = ~v79;
        v81 = *(v76 + 48);
        do
        {
          v82 = (v81 + 16 * v51);
          v83 = v82[1];
          if (v83)
          {
            v84 = *v82 == v44 && v83 == v45;
            if (v84 || (sub_22C274014() & 1) != 0)
            {
              goto LABEL_54;
            }
          }

          v51 = (v51 + 1) & v80;
        }

        while (((*(v78 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) != 0);
      }
    }

    else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22C1ABF80();
    }

    v85 = v105;
    *(v105 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v51;
    v86 = (*(v85 + 48) + 16 * v51);
    *v86 = v44;
    v86[1] = v45;
    v87 = *(v85 + 16);
    v74 = __OFADD__(v87, 1);
    v88 = v87 + 1;
    if (!v74)
    {
      *(v85 + 16) = v88;
      *v46 = v85;
LABEL_49:

      goto LABEL_50;
    }
  }

  else
  {
    if (v21 != *MEMORY[0x277D730D8])
    {
      (*(v5 + 8))(v10, v19);
LABEL_50:
      v27 = sub_22BF540EC();
      return v27 & 1;
    }

    v28 = v91;
    v29 = *v91;
    sub_22C274154();
    sub_22C274174();
    v30 = sub_22C2741A4();
    v31 = -1 << *(v29 + 32);
    v32 = v30 & ~v31;
    if ((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
    {
      v33 = ~v31;
      while (*(*(v29 + 48) + 16 * v32 + 8))
      {
        v32 = (v32 + 1) & v33;
        if (((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_50;
    }

LABEL_9:
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v105 = *v28;
    v42 = v105;
    *v28 = 0x8000000000000000;
    v43 = *(v42 + 16);
    if (*(v42 + 24) <= v43)
    {
      if (v34)
      {
        sub_22C1A9E40(v43 + 1, v35, v36, v37, v38, v39, v40, v41, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
      }

      else
      {
        sub_22C1AD514(v43 + 1, v35, v36, v37, v38, v39, v40, v41, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
      }

      v42 = v105;
      sub_22C274154();
      sub_22C274174();
      v69 = sub_22C2741A4();
      v70 = -1 << *(v42 + 32);
      v32 = v69 & ~v70;
      if ((*(v42 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        v71 = ~v70;
        while (*(*(v42 + 48) + 16 * v32 + 8))
        {
          v32 = (v32 + 1) & v71;
          if (((*(v42 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        goto LABEL_54;
      }
    }

    else if ((v34 & 1) == 0)
    {
      sub_22C1ABF80();
      v42 = v105;
    }

LABEL_34:
    *(v42 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v32;
    v72 = (*(v42 + 48) + 16 * v32);
    *v72 = 0;
    v72[1] = 0;
    v73 = *(v42 + 16);
    v74 = __OFADD__(v73, 1);
    v75 = v73 + 1;
    if (!v74)
    {
      *(v42 + 16) = v75;
      *v28 = v42;
      goto LABEL_50;
    }

    __break(1u);
  }

  __break(1u);
LABEL_54:
  sub_22BE5CE4C(&qword_27D9072A0, &qword_22C288100);
  result = sub_22C2740A4();
  __break(1u);
  return result;
}

uint64_t sub_22BF57588(unint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_22BF674CC(a1);
    return a2;
  }

  else
  {

    return sub_22BF675C4(a1, a2);
  }
}

uint64_t sub_22BF575DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_22BE78B08();
  v4 = *(*(a2 + 16) + 16);
  sub_22BE78BF4(v4);
  v5 = *(a2 + 16);
  *(v5 + 16) = v4 + 1;
  v6 = sub_22C272224();
  (*(*(v6 - 8) + 16))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, a1, v6);
  *(a2 + 16) = v5;
  return swift_endAccess();
}

void sub_22BF57724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v25;
  a20 = v26;
  v206 = v21;
  v199 = v27;
  v226 = v28;
  v29 = sub_22BE5CE4C(&qword_27D90B348, &qword_22C28CA00);
  sub_22BE392E0(v29);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE3A208();
  sub_22C2722D4();
  sub_22BE179D8();
  v210 = v32;
  v213 = v31;
  MEMORY[0x28223BE20](v31);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v33);
  sub_22BE19E94();
  v218 = v34;
  v35 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  sub_22BE19448(v35);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE3AC88();
  v225 = sub_22C272224();
  sub_22BE179D8();
  v223 = v37;
  MEMORY[0x28223BE20](v38);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v39);
  sub_22BE19490();
  v217 = v40;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v41);
  sub_22BE19490();
  v209 = v42;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v43);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v44);
  sub_22BE19490();
  v224 = v45;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v46);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v47);
  sub_22BE19490();
  v221 = v48;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v49);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v50);
  sub_22BE19E94();
  sub_22BE18950(v51);
  v52 = sub_22C271FF4();
  sub_22BE179D8();
  v54 = v53;
  MEMORY[0x28223BE20](v55);
  sub_22BE183AC();
  sub_22BE28C8C();
  MEMORY[0x28223BE20](v56);
  sub_22BE324EC();
  sub_22C272014();
  sub_22C271FC4();
  v205 = v20;
  v57 = sub_22C272014();
  v58 = sub_22C2737F4();
  if (sub_22C273824())
  {
    sub_22BE36138();
    v198 = v23;
    v59 = v22;
    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = sub_22C271FD4();
    _os_signpost_emit_with_name_impl(&dword_22BE15000, v57, v58, v61, "ToolEmbeddingsDatabase:fetchToolDefinition", "", v60, 2u);
    v22 = v59;
    v23 = v198;
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
  }

  v62 = sub_22BE27BA4();
  v63(v62);
  sub_22C272064();
  sub_22BE29494();
  swift_allocObject();
  sub_22BE48A68();
  sub_22C272054();
  (*(v54 + 8))(v24, v52);
  v230 = MEMORY[0x277D84FA0];
  v203 = sub_22C272E84();
  if (!v20[25])
  {
    v102 = v226;

    goto LABEL_24;
  }

  v64 = v226 + 56;
  sub_22BE185B4();
  v67 = v66 & v65;
  v57 = (v68 + 63) >> 6;

  v69 = 0;
LABEL_5:
  v70 = v69;
  if (!v67)
  {
    goto LABEL_7;
  }

  do
  {
    v69 = v70;
LABEL_10:
    v71 = (*(v226 + 48) + ((v69 << 10) | (16 * __clz(__rbit64(v67)))));
    v72 = *v71;
    v24 = v71[1];
    v67 &= v67 - 1;
    v227 = *v71;
    v228 = v24;
    swift_bridgeObjectRetain_n();
    sub_22C271B94();

    sub_22BE1AB5C(v22, 1, v225);
    if (!v153)
    {
      sub_22BE31718();
      v196 = v78;
      v195 = *v79;
      (*v79)();
      sub_22BE33554();
      v80(v202, v200, v225);
      swift_isUniquelyReferenced_nonNull_native();
      v227 = v203;
      v81 = sub_22BE41FB4();
      v83 = sub_22BE3B674(v81, v82);
      v85 = *(v203 + 16);
      v204 = v84;
      if (__OFADD__(v85, (v84 & 1) == 0))
      {
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        sub_22C2740B4();
        __break(1u);
        return;
      }

      v23 = v83;
      sub_22BE5CE4C(&qword_27D90B6E8, &qword_22C28EC18);
      if (sub_22C273C44())
      {
        v86 = sub_22BE41FB4();
        v88 = sub_22BE3B674(v86, v87);
        v22 = v196;
        if ((v204 & 1) != (v89 & 1))
        {
          goto LABEL_103;
        }

        v23 = v88;
        if (v204)
        {
LABEL_21:

          v203 = v227;
          sub_22BF6AC54(v98);
          v99();
          v100 = sub_22BF6AAF0();
          v101(v100);
          sub_22BE33C0C();
          goto LABEL_5;
        }
      }

      else
      {
        v22 = v196;
        if (v204)
        {
          goto LABEL_21;
        }
      }

      v90 = v227;
      sub_22BE45B78(&v227[v23 >> 6]);
      v91 = (*(v90 + 48) + 16 * v23);
      *v91 = v72;
      v91[1] = v24;
      sub_22BF6AC54(v92);
      sub_22BE31718();
      v195();
      v93 = sub_22BF6AAF0();
      v94(v93);
      v95 = *(v90 + 16);
      v96 = __OFADD__(v95, 1);
      v97 = v95 + 1;
      if (v96)
      {
        goto LABEL_102;
      }

      v203 = v90;
      *(v90 + 16) = v97;
      sub_22BE33C0C();
      v22 = v196;
      goto LABEL_5;
    }

    sub_22BE233E8(v22, &qword_27D90B2D8, &qword_22C2B5080);
    sub_22C1A7B60(&v227, v72, v24, v73, v74, v75, v76, v77, v194, v195);

    v70 = v69;
  }

  while (v67);
  while (1)
  {
LABEL_7:
    v69 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    if (v69 >= v57)
    {
      break;
    }

    v67 = *(v64 + 8 * v69);
    ++v70;
    if (v67)
    {
      goto LABEL_10;
    }
  }

  v102 = v230;
LABEL_24:
  v64 = v218;
  v202 = v102;
  if (!*(v102 + 16))
  {
    v24 = sub_22C272E84();
LABEL_42:
    v112 = v203;
    goto LABEL_43;
  }

  v24 = v20[8];
  v200 = v20[7];
  sub_22BE1BD3C(v20 + 4, v200);
  sub_22C2722B4();
  swift_getKeyPath();
  sub_22BE2BA74();
  v103 = swift_allocObject();
  *(v103 + 16) = v102;
  *v23 = v103;
  sub_22BE29E4C();
  (*(v104 + 104))(v23);
  sub_22BE269EC();
  sub_22BE29F88(v105, v106, MEMORY[0x277D724A0]);
  sub_22BF68104();

  sub_22C2724E4();

  v107 = sub_22BE196A8();
  v108(v107);
  v57 = *(v210 + 8);
  (v57)(v201, v213);
  if (qword_27D906378 != -1)
  {
    goto LABEL_100;
  }

  while (2)
  {
    v109 = sub_22C26E244();
    v110 = sub_22BE199F4(v109, qword_27D90B298);
    v111 = (*(v24 + 72))(v64, v110, v200, v24);
    v112 = v203;
    if (v206)
    {
      v113 = sub_22BE291B0();
      (v57)(v113);

      sub_22BE3CA84(&a13);
      sub_22BF5BCAC();

      goto LABEL_89;
    }

    v114 = v111;
    v115 = sub_22BE291B0();
    (v57)(v115);
    v24 = sub_22C272E84();
    v219 = *(v114 + 16);
    if (v219)
    {
      v116 = 0;
      sub_22BE25AD8();
      v214 = v114 + v117;
      v200 = v118 + 40;
      v207 = v114;
      while (v116 < *(v114 + 16))
      {
        v64 = *(v223 + 72);
        v119 = *(v223 + 16);
        v57 = v225;
        (v119)(v221, v214 + v64 * v116, v225);
        v120 = sub_22C2721D4();
        v122 = v121;
        sub_22BE40960();
        v119();
        swift_isUniquelyReferenced_nonNull_native();
        v227 = v24;
        v123 = sub_22BE196A8();
        v125 = sub_22BE3B674(v123, v124);
        v127 = *(v24 + 16);
        v128 = (v126 & 1) == 0;
        v24 = v127 + v128;
        if (__OFADD__(v127, v128))
        {
          goto LABEL_98;
        }

        v129 = v125;
        v57 = v126;
        sub_22BE5CE4C(&qword_27D90B6E8, &qword_22C28EC18);
        if (sub_22C273C44())
        {
          v130 = sub_22BE196A8();
          v132 = sub_22BE3B674(v130, v131);
          if ((v57 & 1) != (v133 & 1))
          {
            goto LABEL_103;
          }

          v129 = v132;
        }

        if (v57)
        {

          v24 = v227;
          sub_22BE33554();
          sub_22BF6AC54(v134);
          v135();
          sub_22BE33554();
          v136(v221, v129);
        }

        else
        {
          v24 = v227;
          sub_22BE45B78(&v227[v129 >> 6]);
          v137 = (*(v24 + 48) + 16 * v129);
          *v137 = v120;
          v137[1] = v122;
          sub_22BE33554();
          sub_22BF6AC54(v138);
          v139();
          sub_22BE33554();
          v140(v221, v129);
          v141 = *(v24 + 16);
          v96 = __OFADD__(v141, 1);
          v142 = v141 + 1;
          if (v96)
          {
            goto LABEL_99;
          }

          *(v24 + 16) = v142;
        }

        ++v116;
        v114 = v207;
        if (v219 == v116)
        {

          goto LABEL_42;
        }
      }

LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      sub_22BE185D0();
      swift_once();
      continue;
    }

    break;
  }

LABEL_43:

  v203 = v112;
  v143 = sub_22BF589B4(v24, v112);
  v144 = 0;
  v145 = v205[9];
  v215 = *(v145 + 16);
  v221 = v223 + 16;
  v222 = (v223 + 32);
  v220 = MEMORY[0x277D84F90];
  v211 = v145;
LABEL_44:
  while (v144 != v215)
  {
    if (v144 >= *(v145 + 16))
    {
      goto LABEL_92;
    }

    v64 = (*(v223 + 80) + 32) & ~*(v223 + 80);
    v146 = *(v223 + 72);
    (*(v223 + 16))(v224, v145 + v64 + v146 * v144++, v225);
    v147 = sub_22C2721D4();
    v149 = v148;
    if (*(v226 + 16))
    {
      v24 = v147;
      sub_22C274154();
      sub_22C272F44();
      v150 = sub_22C2741A4();
      v151 = ~(-1 << *(v226 + 32));
      while (1)
      {
        v57 = v150 & v151;
        if (((*(v226 + 56 + (((v150 & v151) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v150 & v151)) & 1) == 0)
        {
          break;
        }

        v152 = (*(v226 + 48) + 16 * v57);
        v153 = *v152 == v24 && v152[1] == v149;
        if (!v153)
        {
          v154 = sub_22C274014();
          v150 = v57 + 1;
          if ((v154 & 1) == 0)
          {
            continue;
          }
        }

        v155 = *v222;
        (*v222)(v209, v224, v225);
        v156 = v220;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v229 = v220;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22BE711C4(0, *(v220 + 16) + 1, 1);
          v156 = v229;
        }

        v24 = *(v156 + 16);
        v158 = *(v156 + 24);
        v57 = v24 + 1;
        if (v24 >= v158 >> 1)
        {
          v160 = sub_22BE1AAE4(v158);
          sub_22BE711C4(v160, v24 + 1, 1);
          v156 = v229;
        }

        *(v156 + 16) = v57;
        v220 = v156;
        v155(v156 + v64 + v24 * v146, v209, v225);
        v145 = v211;
        goto LABEL_44;
      }
    }

    sub_22BE33554();
    v159(v224, v225);

    v145 = v211;
  }

  v224 = *(v220 + 16);
  if (v224)
  {
    v64 = 0;
    sub_22BE25AD8();
    v216 = v161 + v162;
    v212 = (v163 + 40);
    while (v64 < *(v161 + 16))
    {
      v226 = *(v223 + 72);
      v57 = v225;
      (*(v223 + 16))(v208, v216 + v226 * v64, v225);
      v164 = sub_22C2721D4();
      v24 = v165;
      v166 = *(v223 + 32);
      sub_22BE40960();
      v166();
      swift_isUniquelyReferenced_nonNull_native();
      v227 = v143;
      v167 = sub_22BE2BA80();
      v169 = sub_22BE3B674(v167, v168);
      if (__OFADD__(v143[2], (v170 & 1) == 0))
      {
        goto LABEL_94;
      }

      v57 = v169;
      v171 = v170;
      sub_22BE5CE4C(&qword_27D90B6E8, &qword_22C28EC18);
      if (sub_22C273C44())
      {
        v172 = sub_22BE2BA80();
        v174 = sub_22BE3B674(v172, v173);
        if ((v171 & 1) != (v175 & 1))
        {
          goto LABEL_103;
        }

        v57 = v174;
      }

      if (v171)
      {

        v143 = v227;
        (*v212)(v227[7] + v57 * v226, v217, v225);
      }

      else
      {
        v143 = v227;
        sub_22BE45B78(&v227[v57 >> 6]);
        v176 = (v143[6] + 16 * v57);
        *v176 = v164;
        v176[1] = v24;
        (v166)(v143[7] + v57 * v226, v217, v225);
        v177 = v143[2];
        v96 = __OFADD__(v177, 1);
        v178 = v177 + 1;
        if (v96)
        {
          goto LABEL_95;
        }

        v143[2] = v178;
      }

      ++v64;
      v161 = v220;
      if (v224 == v64)
      {
        goto LABEL_72;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

LABEL_72:

  if (sub_22BE406B8())
  {
    v179 = v202;
    if (v199)
    {
      v64 = v202 + 56;
      sub_22BE185B4();
      v182 = v181 & v180;
      v184 = (v183 + 63) >> 6;

      v185 = 0;
      v24 = v197;
      while (v182)
      {
        v186 = v182;
LABEL_81:
        v182 = (v186 - 1) & v186;
        if (v143[2])
        {
          v188 = (*(v179 + 48) + ((v185 << 10) | (16 * __clz(__rbit64(v186)))));
          v189 = *v188;
          v57 = v188[1];

          v190 = sub_22BE1B328();
          v192 = sub_22BE3B674(v190, v191);
          if (v193)
          {
            (*(v223 + 16))(v197, v143[7] + *(v223 + 72) * v192, v225);
            v227 = v189;
            v228 = v57;
            sub_22C271BA4();

            (*(v223 + 8))(v197, v225);
          }

          else
          {
          }

          v179 = v202;
        }
      }

      while (1)
      {
        v187 = v185 + 1;
        if (__OFADD__(v185, 1))
        {
          break;
        }

        if (v187 >= v184)
        {

          sub_22BE406B8();

          goto LABEL_88;
        }

        v186 = *(v64 + 8 * v187);
        ++v185;
        if (v186)
        {
          v185 = v187;
          goto LABEL_81;
        }
      }

LABEL_96:
      __break(1u);
      goto LABEL_97;
    }
  }

LABEL_88:
  sub_22BE3CA84(&a13);
  sub_22BF5BCAC();

LABEL_89:
  sub_22BE18478();
}

uint64_t sub_22BF589B4(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_22BF65A28(a1, sub_22BF67F50, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_22BF58A38(unint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v249 = a6;
  v241 = a5;
  v252 = a4;
  v256 = a3;
  v257 = a1;
  v258 = a2;
  v217 = sub_22C272CA4();
  i = *(v217 - 8);
  MEMORY[0x28223BE20](v217);
  v211 = &v201 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v214 = &v201 - v9;
  MEMORY[0x28223BE20](v10);
  v222 = &v201 - v11;
  v212 = type metadata accessor for ToolboxSearchOutput(0);
  v213 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v210 = (&v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v209 = &v201 - v14;
  MEMORY[0x28223BE20](v15);
  v208 = (&v201 - v16);
  v17 = sub_22BE5CE4C(&qword_27D90B6D0, &unk_22C28EBA0);
  MEMORY[0x28223BE20](v17 - 8);
  v227 = &v201 - v18;
  v228 = type metadata accessor for ToolboxDatabasePayload(0);
  MEMORY[0x28223BE20](v228);
  v219 = &v201 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v226 = &v201 - v21;
  v235 = sub_22C273064();
  v251 = *(v235 - 8);
  MEMORY[0x28223BE20](v235);
  v234 = &v201 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = sub_22C2720A4();
  v237 = *(v260 - 8);
  MEMORY[0x28223BE20](v260);
  v245 = &v201 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v238 = &v201 - v25;
  MEMORY[0x28223BE20](v26);
  v218 = &v201 - v27;
  MEMORY[0x28223BE20](v28);
  v233 = &v201 - v29;
  v30 = sub_22C26E4D4();
  v31 = *(v30 - 8);
  v246 = v30;
  v247 = v31;
  MEMORY[0x28223BE20](v30);
  v216 = (&v201 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v215 = &v201 - v34;
  MEMORY[0x28223BE20](v35);
  v250 = &v201 - v36;
  MEMORY[0x28223BE20](v37);
  v244 = &v201 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v201 - v40;
  v42 = sub_22C26E444();
  v248 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v44 = &v201 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22C26E494();
  v242 = *(v45 - 8);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = (&v201 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v255 = sub_22C26E4C4();
  *&v243 = *(v255 - 8);
  MEMORY[0x28223BE20](v255);
  v49 = (&v201 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = v6[18];
  v50 = v6[19];
  sub_22BE1BD3C(v6 + 15, v51);
  (*(v50 + 1))(&v261, v51, v50);
  LOBYTE(v264) = v261;
  v52 = v259;
  sub_22BF51D9C(v257, v258, v6 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_signposter);
  if (!v52)
  {
    v239 = v53;
    v232 = v47;
    v259 = v6;
    v236 = 0;
    v254 = v44;
    v240 = v42;
    v258 = v41;
    v264 = MEMORY[0x277D84FA0];
    v262 = MEMORY[0x277D84FA0];
    v263 = MEMORY[0x277D84FA0];
    sub_22BE5CE4C(&qword_27D90B6C8, &unk_22C28EB80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_22C2759F0;
    v257 = v54;
    *v49 = 0;
    v49[1] = 0;
    v55 = *MEMORY[0x277D78268];
    v56 = *(v243 + 104);
    v57 = v255;
    v56(v49, v55, v255);
    sub_22C26E474();
    *v49 = 0;
    *(v49 + 8) = 1;
    v56(v49, *MEMORY[0x277D78270], v57);
    sub_22C26E474();
    v58 = v249;
    if (v249)
    {
      sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
      sub_22C26E404();
      v59 = swift_allocObject();
      v243 = xmmword_22C275160;
      *(v59 + 16) = xmmword_22C275160;
      *v49 = 0;
      v49[1] = 0;
      v56(v49, v55, v255);

      sub_22C26E474();
      sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
      v60 = (sub_22BE5CE4C(&qword_27D907338, &qword_22C275290) - 8);
      v61 = (*(*v60 + 80) + 32) & ~*(*v60 + 80);
      v62 = swift_allocObject();
      *(v62 + 16) = v243;
      v63 = v62 + v61;
      v64 = (v62 + v61 + v60[14]);
      v65 = *MEMORY[0x277D78238];
      v66 = sub_22C26E464();
      (*(*(v66 - 8) + 104))(v63, v65, v66);
      *v64 = v241;
      v64[1] = v58;
      v67 = v246;
      (*(v247 + 104))(v64, *MEMORY[0x277D78288], v246);
      sub_22BE19DC4(v64, 0, 1, v67);
    }

    else
    {
      sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
      sub_22C26E404();
      v59 = swift_allocObject();
      v249 = xmmword_22C275160;
      *(v59 + 16) = xmmword_22C275160;
      *v49 = 0;
      v49[1] = 0;
      v56(v49, v55, v255);
      sub_22C26E474();
      sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
      v68 = (sub_22BE5CE4C(&qword_27D907338, &qword_22C275290) - 8);
      v69 = (*(*v68 + 80) + 32) & ~*(*v68 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = v249;
      v71 = v70 + v69;
      v72 = v68[14];
      v73 = *MEMORY[0x277D78230];
      v74 = sub_22C26E464();
      (*(*(v74 - 8) + 104))(v71, v73, v74);
      v67 = v246;
      sub_22BE19DC4(v71 + v72, 1, 1, v246);
    }

    sub_22C26E3F4();
    v75 = v245;
    v76 = v240;
    sub_22BE5CE4C(&qword_27D90B718, &qword_22C28EC48);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_22C275160;
    v78 = sub_22C2734C4();
    v80 = v79;

    *(v77 + 32) = v78;
    *(v77 + 40) = v80;
    v261 = v252;

    sub_22BE6E0C4(v59);
    v81 = v236;
    v82 = sub_22C26E364();
    v236 = v81;
    v83 = i;
    v84 = v251;
    if (v81)
    {
      goto LABEL_6;
    }

    v85 = v82;

    v86 = 0;
    v221 = v85 + 32;
    v223 = *(v85 + 16);
    v88 = v247;
    v87 = v248;
    v252 = v248 + 16;
    *&v243 = v247 + 16;
    v242 = v247 + 32;
    v241 = v247 + 88;
    LODWORD(v239) = *MEMORY[0x277D78288];
    v259 = (v237 + 8);
    *&v249 = v247 + 8;
    v232 = (v247 + 96);
    v230 = v84 + 1;
    v207 = *MEMORY[0x277D78290];
    v251 = (v248 + 8);
    v204 = (v83 + 32);
    v206 = (v83 + 16);
    v89 = MEMORY[0x277D84F90];
    v205 = (v83 + 8);
    v90 = v254;
    v220 = v85;
LABEL_9:
    if (v86 == v223)
    {
LABEL_6:

      return;
    }

    if (v86 < *(v85 + 16))
    {
      if (*(v89 + 16) < v256)
      {
        v91 = *(v221 + 8 * v86);
        v225 = v86 + 1;
        v255 = *(v91 + 16);

        v92 = 0;
        for (i = v91; ; v91 = i)
        {
          if (v255 == v92)
          {
            goto LABEL_81;
          }

          if (v92 >= *(v91 + 16))
          {
            __break(1u);
            goto LABEL_84;
          }

          (*(v87 + 16))(v90, v91 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v92, v76);
          if (*(v89 + 16) >= v256)
          {
            (*v251)(v90, v76);
LABEL_81:

            v85 = v220;
            v86 = v225;
            goto LABEL_9;
          }

          v93 = sub_22C26E424();
          if (!*(v93 + 16))
          {

            sub_22C271AD4();
            v108 = sub_22C272084();
            v109 = sub_22C2737A4();
            if (os_log_type_enabled(v108, v109))
            {
              v110 = swift_slowAlloc();
              *v110 = 0;
              _os_log_impl(&dword_22BE15000, v108, v109, "ANN search for for 1P apps or protocols did not return toolbox identifier", v110, 2u);
              v111 = v110;
              v87 = v248;
              MEMORY[0x2318AD180](v111, -1, -1);
            }

            (*v259)(v75, v260);
            goto LABEL_23;
          }

          v257 = v89;
          v94 = (*(v88 + 80) + 32) & ~*(v88 + 80);
          v95 = *(v88 + 16);
          v96 = v244;
          v95(v244, v93 + v94, v67);

          v97 = v67;
          v98 = *(v88 + 32);
          v99 = v258;
          v98(v258, v96, v97);
          v100 = v250;
          v95(v250, v99, v97);
          v101 = *(v88 + 88);
          v102 = v101(v100, v97);
          if (v102 != v239)
          {
            break;
          }

          v231 = *v232;
          v231(v100, v97);
          v103 = v234;
          sub_22C273054();
          v104 = sub_22C273034();
          v106 = v105;

          (*v230)(v103, v235);
          if (v106 >> 60 == 15)
          {
            v107 = v238;
            v67 = v246;
LABEL_27:
            v76 = v240;
            v89 = v257;
LABEL_28:
            sub_22C271AD4();
            v116 = sub_22C272084();
            v117 = sub_22C2737A4();
            v118 = os_log_type_enabled(v116, v117);
            v75 = v245;
            if (v118)
            {
              v119 = swift_slowAlloc();
              *v119 = 0;
              _os_log_impl(&dword_22BE15000, v116, v117, "Payload from ANN search for 1P apps or protocols could not be decoded", v119, 2u);
              MEMORY[0x2318AD180](v119, -1, -1);
            }

            (*v259)(v107, v260);
            (*v249)(v258, v67);
            v90 = v254;
            (*v251)(v254, v76);
            v88 = v247;
            v87 = v248;
            goto LABEL_31;
          }

          v229 = v92;
          v237 = v106;
          if (qword_281079BD8 != -1)
          {
            swift_once();
          }

          sub_22BE29F88(&qword_281079998, type metadata accessor for ToolboxDatabasePayload, &unk_22C28F0C0);
          v120 = v227;
          v121 = v228;
          v122 = v104;
          v123 = v237;
          v124 = v236;
          sub_22C26DB54();
          if (v124)
          {

            sub_22BF158B4(v122, v123);
            sub_22BE19DC4(v120, 1, 1, v121);
            sub_22BE233E8(v120, &qword_27D90B6D0, &unk_22C28EBA0);
            v236 = 0;
            v107 = v238;
            v67 = v246;
            v76 = v240;
            v89 = v257;
            v92 = v229;
            goto LABEL_28;
          }

          v224 = v122;
          v236 = 0;
          sub_22BE19DC4(v120, 0, 1, v121);
          sub_22BF68168();
          v125 = *(sub_22C26E424() + 16);

          if (v125 < 2)
          {
            v126 = v218;
            sub_22C271AD4();
            v127 = sub_22C272084();
            v128 = sub_22C2737A4();
            v129 = os_log_type_enabled(v127, v128);
            v92 = v229;
            if (v129)
            {
              v130 = swift_slowAlloc();
              *v130 = 0;
              _os_log_impl(&dword_22BE15000, v127, v128, "ANN search for for 1P apps or protocols did not return toolbox scope", v130, 2u);
              MEMORY[0x2318AD180](v130, -1, -1);
            }

            sub_22BF158B4(v224, v237);

            (*v259)(v126, v260);
            sub_22BF680B4();
            v67 = v246;
            (*v249)(v258, v246);
            v90 = v254;
            v76 = v240;
            (*v251)(v254, v240);
LABEL_40:
            v75 = v245;
            v88 = v247;
LABEL_54:
            v87 = v248;
LABEL_55:
            v89 = v257;
            goto LABEL_31;
          }

          v131 = sub_22C26E424();
          v132 = v219;
          v92 = v229;
          if (*(v131 + 16) < 2uLL)
          {
            goto LABEL_85;
          }

          v133 = v246;
          v134 = v131 + v94 + *(v247 + 72);
          v135 = v215;
          v95(v215, v134, v246);

          v136 = v216;
          v98(v216, v135, v133);
          v137 = v101(v136, v133);
          if (v137 == v207)
          {
            v231(v136, v133);
            if (*v136 >= 4)
            {
              v138 = 4;
            }

            else
            {
              v138 = *v136;
            }
          }

          else
          {
            (*v249)(v136, v133);
            v138 = 4;
          }

          v139 = v217;
          v140 = v222;
          v141 = v258;
          sub_22BF6805C();
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v88 = v247;
          if (!EnumCaseMultiPayload)
          {
            v148 = *v132;
            v147 = *(v132 + 1);
            v149 = v132[16];
            if (sub_22C269E10(*v132, v147, v264))
            {
              sub_22BF158B4(v224, v237);

              sub_22BF680B4();
              v145 = *v249;
              v146 = v141;
LABEL_53:
              v67 = v246;
              v145(v146, v246);
              v90 = v254;
              v76 = v240;
              (*v251)(v254, v240);
              v75 = v245;
            }

            else
            {
              v231 = v138;

              sub_22C1A7B60(&v261, v148, v147, v155, v156, v157, v158, v159, v201, v202);

              v160 = v148;
              v75 = v245;
              v67 = v246;
              v76 = v240;
              if ((v149 & 1) == 0)
              {

                sub_22C26E434();
                v176 = v208;
                v202 = v160;
                *v208 = v160;
                v176[1] = v147;
                v203 = v147;
                *(v176 + 16) = v231;
                *(v176 + 5) = v177;
                swift_storeEnumTagMultiPayload();
                v178 = v257;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_22BE66E58(0, *(v178 + 16) + 1, 1, v178);
                  v178 = v197;
                }

                v180 = *(v178 + 16);
                v179 = *(v178 + 24);
                v181 = v178;
                v87 = v248;
                if (v180 >= v179 >> 1)
                {
                  sub_22BE66E58(v179 > 1, v180 + 1, 1, v178);
                  v181 = v198;
                }

                *(v181 + 16) = v180 + 1;
                v89 = v181;
                sub_22BF68168();
                v187 = v202;
                v188 = &v235;
LABEL_79:
                sub_22C1A7B60(&v261, v187, *(v188 - 32), v182, v183, v184, v185, v186, v201, v202);
                sub_22BF158B4(v224, v237);

                sub_22BF680B4();
                (*v249)(v258, v67);
LABEL_23:
                v90 = v254;
                (*v251)(v254, v76);
                goto LABEL_31;
              }

              sub_22BF158B4(v224, v237);

              sub_22BF680B4();
              (*v249)(v258, v67);
              v90 = v254;
              (*v251)(v254, v76);
            }

            goto LABEL_54;
          }

          v143 = v206;
          if (EnumCaseMultiPayload != 1)
          {
            v151 = *v132;
            v150 = *(v132 + 1);
            v152 = v132[16];
            v153 = sub_22C269E10(*v132, v150, v264);
            v87 = v248;
            if (v153)
            {
              sub_22BF158B4(v224, v237);

              sub_22BF680B4();
              v67 = v246;
              (*v249)(v141, v246);
              v90 = v254;
              v76 = v240;
              (*v251)(v254, v240);
              v75 = v245;
            }

            else
            {

              LODWORD(v231) = v152;
              sub_22C1A7B60(&v261, v151, v150, v161, v162, v163, v164, v165, v201, v202);

              v75 = v245;
              v67 = v246;
              v76 = v240;
              if ((v231 & 1) == 0)
              {

                sub_22C26E434();
                v189 = v210;
                v203 = v151;
                *v210 = v151;
                v189[1] = v150;
                v231 = v150;
                *(v189 + 4) = v190;
                swift_storeEnumTagMultiPayload();
                v191 = v257;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_22BE66E58(0, *(v191 + 16) + 1, 1, v191);
                  v191 = v199;
                }

                v193 = *(v191 + 16);
                v192 = *(v191 + 24);
                v194 = v191;
                if (v193 >= v192 >> 1)
                {
                  sub_22BE66E58(v192 > 1, v193 + 1, 1, v191);
                  v194 = v200;
                }

                *(v194 + 16) = v193 + 1;
                v89 = v194;
                sub_22BF68168();
                v187 = v203;
                v188 = &v260;
                goto LABEL_79;
              }

              sub_22BF158B4(v224, v237);

              sub_22BF680B4();
              (*v249)(v258, v67);
              v90 = v254;
              (*v251)(v254, v76);
            }

            goto LABEL_55;
          }

          v144 = v132[*(sub_22BE5CE4C(&qword_27D90B720, &qword_22C28EC50) + 48)];
          (*v204)(v140, v132, v139);
          if (sub_22C269EFC(v140, v262))
          {
            sub_22BF158B4(v224, v237);
            (*v205)(v140, v139);
            sub_22BF680B4();
            v145 = *v249;
            v146 = v258;
            goto LABEL_53;
          }

          v231 = *v143;
          (v231)(v211, v140, v139);
          sub_22C1A7C40();
          v154 = *v205;
          (*v205)(v214, v139);
          v76 = v240;
          if (v144)
          {
            sub_22BF158B4(v224, v237);
            v154(v222, v139);
            sub_22BF680B4();
            v67 = v246;
            (*v249)(v258, v246);
            v90 = v254;
            (*v251)(v254, v76);
            goto LABEL_40;
          }

          v203 = v154;
          v166 = sub_22BE5CE4C(&qword_27D90B6F0, &qword_22C28EC20);
          v167 = *(v166 + 48);
          v168 = *(v166 + 64);
          v169 = v209;
          (v231)(v209, v222, v139);
          v169[v167] = v138;
          sub_22C26E434();
          *&v169[v168] = v170;
          swift_storeEnumTagMultiPayload();
          v171 = v257;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22BE66E58(0, *(v171 + 16) + 1, 1, v171);
            v171 = v195;
          }

          v88 = v247;
          v87 = v248;
          v173 = *(v171 + 16);
          v172 = *(v171 + 24);
          v174 = v222;
          v175 = v237;
          v257 = v173 + 1;
          if (v173 >= v172 >> 1)
          {
            sub_22BE66E58(v172 > 1, v173 + 1, 1, v171);
            v171 = v196;
          }

          sub_22BF158B4(v224, v175);
          v203(v174, v139);
          sub_22BF680B4();
          v67 = v246;
          (*v249)(v258, v246);
          v90 = v254;
          (*v251)(v254, v76);
          *(v171 + 16) = v257;
          v89 = v171;
          sub_22BF68168();
          v75 = v245;
LABEL_31:
          ++v92;
        }

        v112 = v233;
        sub_22C271AD4();
        v113 = sub_22C272084();
        v114 = sub_22C2737A4();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          *v115 = 0;
          _os_log_impl(&dword_22BE15000, v113, v114, "Unexpected type found while unwrapping projected attribute in Vector Db", v115, 2u);
          MEMORY[0x2318AD180](v115, -1, -1);
        }

        (*v259)(v112, v260);
        v67 = v246;
        (*v249)(v250, v246);
        v107 = v238;
        goto LABEL_27;
      }

      goto LABEL_6;
    }

LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
  }
}

void sub_22BF5AAB4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  v6 = *a1 + 32;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v5 == v7)
    {
      swift_bridgeObjectRelease_n();
      *a1 = v8;
      return;
    }

    if (v7 >= *(v4 + 16))
    {
      break;
    }

    sub_22BE26B00(v6, v15);
    v9 = sub_22BF5AC38(v15, a2);
    if (v2)
    {
      goto LABEL_15;
    }

    if (v9)
    {
      sub_22BE49224(v15, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BE7121C(0, *(v8 + 16) + 1, 1);
        v8 = v16;
      }

      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_22BE7121C(v11 > 1, v12 + 1, 1);
        v8 = v16;
      }

      *(v8 + 16) = v12 + 1;
      sub_22BE49224(v14, v8 + 40 * v12 + 32);
    }

    else
    {
      sub_22BE26B64(v15);
    }

    v6 += 40;
    ++v7;
  }

  __break(1u);
LABEL_15:

  sub_22BE26B64(v15);

  __break(1u);
}

BOOL sub_22BF5AC38(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v49 = type metadata accessor for ToolBoxClientActionSearchResult(0);
  MEMORY[0x28223BE20](v49);
  v48 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ToolBoxAssistantSchemaSearchResult(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = sub_22C2720A4();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);
  MEMORY[0x28223BE20](v10 - 8);
  v47 = &v42 - v11;
  v12 = sub_22C272AC4();
  v50 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ToolBoxToolSearchResult(0);
  MEMORY[0x28223BE20](v15);
  v45 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  MEMORY[0x28223BE20](v20);
  sub_22BE26B00(a1, v52);
  sub_22BE5CE4C(&unk_27D907760, &unk_22C28EC00);
  if (swift_dynamicCast())
  {
    sub_22BF68168();
    if ((v19[*(v15 + 24)] | 2) != 3)
    {
      goto LABEL_8;
    }

    sub_22C272154();
    v21 = sub_22C272A24();
    v23 = v22;
    v24 = *(v50 + 8);
    v24(v14, v12);
    v25 = v51;
    LOBYTE(v21) = sub_22C269E10(v21, v23, v51);

    if (v21)
    {
      goto LABEL_8;
    }

    v29 = v47;
    sub_22C272194();
    if (sub_22BE1AEA8(v29, 1, v12) == 1)
    {
      sub_22BE233E8(v29, &unk_27D906F38, qword_22C274D30);
      v30 = v46;
      sub_22C271AD4();
      sub_22BF6805C();
      v31 = sub_22C272084();
      v32 = sub_22C2737C4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v53 = v34;
        *v33 = 136315138;
        v35 = sub_22C2721D4();
        v37 = v36;
        sub_22BF680B4();
        v38 = sub_22BE61C88(v35, v37, &v53);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_22BE15000, v31, v32, "ToolEmbeddingsDatabase: Filtering local tool that doesn't match requested bundle IDs: %s", v33, 0xCu);
        sub_22BE26B64(v34);
        MEMORY[0x2318AD180](v34, -1, -1);
        MEMORY[0x2318AD180](v33, -1, -1);
      }

      else
      {

        sub_22BF680B4();
      }

      (*(v43 + 8))(v30, v44);
      sub_22BF680B4();
      v27 = 0;
    }

    else
    {
      v39 = sub_22C272A24();
      v41 = v40;
      v24(v29, v12);
      v27 = sub_22C269E10(v39, v41, v25);

      sub_22BF680B4();
    }
  }

  else
  {
    if (!swift_dynamicCast())
    {
      if (!swift_dynamicCast())
      {
LABEL_9:
        v27 = 1;
        goto LABEL_10;
      }

LABEL_8:
      sub_22BF680B4();
      goto LABEL_9;
    }

    sub_22BF68168();
    v26 = v6[*(v4 + 24)];
    sub_22BF680B4();
    v27 = v26 == 0;
  }

LABEL_10:
  sub_22BE26B64(v52);
  return v27;
}

uint64_t sub_22BF5B2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v7 = sub_22C26E4C4();
  v8 = *(v7 - 8);
  v42 = v7;
  v43 = v8;
  MEMORY[0x28223BE20](v7);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C26E494();
  MEMORY[0x28223BE20](v10 - 8);
  v40 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BE5CE4C(&qword_27D907338, &qword_22C275290);
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = *(a3 + 16);
  if (v15)
  {
    v37 = a1;
    v38 = a2;
    v49 = MEMORY[0x277D84F90];
    sub_22BE7123C(0, v15, 0);
    v16 = v49;
    LODWORD(v46) = *MEMORY[0x277D78238];
    v45 = sub_22C26E464();
    v44 = *(*(v45 - 8) + 104);
    v17 = *MEMORY[0x277D78288];
    v18 = (a3 + 40);
    do
    {
      v20 = *(v18 - 1);
      v19 = *v18;
      v21 = &v14[*(v48 + 48)];
      v44(v14, v46, v45);
      *v21 = v20;
      *(v21 + 1) = v19;
      v22 = sub_22C26E4D4();
      (*(*(v22 - 8) + 104))(v21, v17, v22);
      sub_22BE19DC4(v21, 0, 1, v22);
      v49 = v16;
      v23 = *(v16 + 16);
      v24 = *(v16 + 24);

      if (v23 >= v24 >> 1)
      {
        sub_22BE7123C((v24 > 1), v23 + 1, 1);
        v16 = v49;
      }

      *(v16 + 16) = v23 + 1;
      sub_22BEBFD18();
      v18 += 2;
      --v15;
    }

    while (v15);
  }

  sub_22BE5CE4C(&qword_27D90A828, &qword_22C288108);
  v45 = *(*(sub_22C26E404() - 8) + 72);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_22C27FED0;
  v25 = v39;
  *v39 = 0;
  *(v25 + 1) = 0;
  v27 = v43 + 104;
  v26 = *(v43 + 104);
  v26(v25, *MEMORY[0x277D78268], v42);
  v43 = v27;
  v44 = v26;

  sub_22C26E474();
  sub_22C26E3F4();
  *v25 = 0;
  v25[8] = 1;
  LODWORD(v38) = *MEMORY[0x277D78270];
  (v26)(v25);
  sub_22C26E474();
  v37 = sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
  v28 = *(v47 + 72);
  v29 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_22C2759F0;
  v31 = v30 + v29;
  v32 = v48;
  sub_22BF53E38(v30 + v29, (v30 + v29 + *(v48 + 48)), 2);
  sub_22BF53E38(v31 + v28, (v31 + v28 + *(v32 + 48)), 1);
  sub_22C26E3F4();
  *v25 = 0;
  v25[8] = 1;
  v44(v25, v38, v42);
  sub_22C26E474();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22C28E670;
  v34 = v33 + v29;
  sub_22BF53E38(v33 + v29, (v33 + v29 + *(v32 + 48)), 1);
  sub_22BF53E38(v34 + v28, (v34 + v28 + *(v32 + 48)), 0);
  sub_22BF53E38(v34 + 2 * v28, (v34 + 2 * v28 + *(v32 + 48)), 3);
  sub_22BF53E38(v34 + 3 * v28, (v34 + 3 * v28 + *(v32 + 48)), 2);
  sub_22C26E3F4();
  return v46;
}

uint64_t sub_22BF5B8C8(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v43 = a4;
  v44 = a5;
  v41 = a2;
  v42 = a3;
  v40 = a1;
  v8 = sub_22BE5CE4C(&qword_27D90B6D8, &qword_22C28EBF8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for ToolBoxToolSearchResult(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - v19;
  v21 = sub_22C26E314();
  if (!v6)
  {
    v36 = v11;
    v37 = v17;
    v47 = v20;
    v38 = v12;
    v39 = v14;
    sub_22BF58A38(v40, v41, v21, v42, v43, v44);
    v23 = v22;
    v25 = v24;

    v27 = sub_22BF576B8(v23, v25, 0);

    swift_bridgeObjectRelease_n();
    v28 = *(v27 + 16);
    if (v28)
    {
      v44 = v27;
      v29 = v27 + 32;
      v7 = MEMORY[0x277D84F90];
      v30 = v36;
      do
      {
        sub_22BE26B00(v29, v46);
        sub_22BE49224(v46, v45);
        sub_22BE5CE4C(&unk_27D907760, &unk_22C28EC00);
        if (swift_dynamicCast())
        {
          sub_22BE19DC4(v10, 0, 1, v30);
          sub_22BF68168();
          sub_22BF68168();
          sub_22BF68168();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22BE67120(0, *(v7 + 16) + 1, 1, v7);
            v7 = v33;
          }

          v32 = *(v7 + 16);
          v31 = *(v7 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_22BE67120(v31 > 1, v32 + 1, 1, v7);
            v7 = v34;
          }

          *(v7 + 16) = v32 + 1;
          sub_22BF68168();
        }

        else
        {
          sub_22BE19DC4(v10, 1, 1, v30);
          sub_22BE233E8(v10, &qword_27D90B6D8, &qword_22C28EBF8);
        }

        v29 += 40;
        --v28;
      }

      while (v28);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v7;
}

void sub_22BF5BCAC()
{
  sub_22BE19460();
  v2 = v1;
  v18 = v3;
  v4 = sub_22C272034();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  sub_22BE3AC88();
  sub_22C271FF4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  sub_22BE1AB80();
  v9 = sub_22C272014();
  sub_22C272044();
  v17 = sub_22C2737E4();
  if ((sub_22C273824() & 1) == 0)
  {
LABEL_13:

    v15 = sub_22BE25D18();
    v16(v15);
    sub_22BE1AABC();
    return;
  }

  if ((v2 & 1) == 0)
  {
    v10 = v18;
    if (v18)
    {
LABEL_9:

      sub_22C272074();

      if ((*(v6 + 88))(v0, v4) == *MEMORY[0x277D85B00])
      {
        v11 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v0, v4);
        v11 = "";
      }

      sub_22BE36138();
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = sub_22C271FD4();
      _os_signpost_emit_with_name_impl(&dword_22BE15000, v9, v17, v13, v10, v11, v12, 2u);
      v14 = sub_22BE22C7C();
      MEMORY[0x2318AD180](v14);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v18 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v18 & 0xFFFFF800) != 0xD800)
  {
    if (v18 >> 16 <= 0x10)
    {
      v10 = &v19;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_22BF5BF00(uint64_t a1)
{
  sub_22BF5BF58(a1);
  if (!v2)
  {
    v1 = *(v3 + 16);
  }

  return v1;
}

void sub_22BF5BF58(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  v12 = MEMORY[0x277D84FA0];
  v13 = MEMORY[0x277D84FA0];
  v6 = sub_22C26E314();
  if (v2)
  {

    return;
  }

  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 < -999)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v8 = 0;
  v9 = v7 / 500 + 1;
  while (v9 != v8)
  {
    if ((v9 & ~(v9 >> 63)) == v8)
    {
      __break(1u);
      goto LABEL_11;
    }

    v10 = MEMORY[0x2318ACA20]();
    sub_22BF5C0A0(v3, a1, 500, v8++, &v13, &v12, v5, &v11);
    objc_autoreleasePoolPop(v10);
  }
}

void sub_22BF5C0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v67 = a7;
  v58 = a6;
  v60 = a5;
  v57 = sub_22C272CA4();
  v13 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v55 = &v50 - v16;
  MEMORY[0x28223BE20](v17);
  v54 = &v50 - v18;
  v75 = type metadata accessor for ToolboxDatabasePayload(0);
  MEMORY[0x28223BE20](v75);
  v68 = (&v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v69 = &v50 - v21;
  v22 = sub_22BE5CE4C(&qword_27D90B6D0, &unk_22C28EBA0);
  MEMORY[0x28223BE20](v22 - 8);
  v59 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v50 - v25;
  v27 = sub_22C26E504();
  v70 = *(v27 - 8);
  v71 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = (&v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a4 * a3) >> 64 == (a4 * a3) >> 63)
  {
    v61 = v26;
    v26 = *(a1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_database);
    v30 = sub_22C26E3B4();
    if (v8)
    {
      *a8 = v8;
      return;
    }

    v31 = 0;
    v32 = *(v30 + 16);
    v65 = v29;
    v66 = v32;
    v63 = v70 + 16;
    v64 = (v70 + 8);
    v53 = (v13 + 32);
    v52 = (v13 + 16);
    v51 = (v13 + 8);
    v62 = xmmword_22C28E6A0;
    v29 = &qword_27D90B6D0;
    v33 = v59;
    v34 = v61;
    while (1)
    {
      a1 = v71;
      if (v66 == v31)
      {

        return;
      }

      if (v31 >= *(v30 + 16))
      {
        break;
      }

      v35 = v29;
      v36 = v30;
      v37 = v65;
      (*(v70 + 16))(v65, v30 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v31, v71);
      *v74 = v62;
      v38 = sub_22BE19DC4(v34, 1, 1, v75);
      v39 = MEMORY[0x2318ACA20](v38);
      sub_22BF5C72C(v37, v74);
      (*v64)(v37, a1);
      objc_autoreleasePoolPop(v39);
      v26 = MEMORY[0x2318ACA20]();
      sub_22BF5C8A4(v74, v34);
      objc_autoreleasePoolPop(v26);
      v72 = MEMORY[0x2318ACA20]();
      v29 = v35;
      sub_22BE22868();
      if (sub_22BE1AEA8(v33, 1, v75) == 1)
      {
        sub_22BE233E8(v33, v35, &unk_22C28EBA0);
      }

      else
      {
        sub_22BF68168();
        sub_22BF6805C();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v46 = v54;
            v47 = v57;
            (*v53)(v54, v68, v57);
            (*v52)(v56, v46, v47);
            v48 = v55;
            sub_22C1A7C40();
            v26 = *v51;
            (*v51)(v48, v47);
            v49 = v47;
            v33 = v59;
            (v26)(v46, v49);
          }

          else
          {
            v26 = v60;
            sub_22C1A7B60(v73, *v68, v68[1], v41, v42, v43, v44, v45, v50, v51);
          }

          sub_22BF680B4();
          v34 = v61;
        }

        else
        {
          v26 = v60;
          sub_22C1A7B60(v73, *v68, v68[1], v41, v42, v43, v44, v45, v50, v51);
          v34 = v61;

          sub_22BF680B4();
        }

        v29 = v35;
      }

      objc_autoreleasePoolPop(v72);
      sub_22BE233E8(v34, v29, &unk_22C28EBA0);
      sub_22BF158B4(v74[0], v74[1]);
      ++v31;
      v30 = v36;
    }

    __break(1u);
  }

  __break(1u);
  (*v64)(v29, a1);
  objc_autoreleasePoolPop(v26);
  __break(1u);
}

uint64_t sub_22BF5C72C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22C2720A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C26E4F4();
  if (v8 >> 60 == 15)
  {
    sub_22C271AD4();
    v9 = sub_22C272084();
    v10 = sub_22C2737A4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22BE15000, v9, v10, "ANN search for for 1P apps or protocols did not return a payload", v11, 2u);
      MEMORY[0x2318AD180](v11, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v13 = *a2;
    v14 = a2[1];
    *a2 = v7;
    a2[1] = v8;
    return sub_22BF158B4(v13, v14);
  }
}

uint64_t sub_22BF5C8A4(uint64_t *a1, uint64_t a2)
{
  v21 = sub_22C2720A4();
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BE5CE4C(&qword_27D90B6D0, &unk_22C28EBA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ToolboxDatabasePayload(0);
  MEMORY[0x28223BE20](v11);
  v12 = a1[1];
  if (v12 >> 60 != 15)
  {
    v20 = a2;
    v13 = *a1;
    sub_22BE29D7C(*a1, v12);
    if (qword_281079BD8 != -1)
    {
      swift_once();
    }

    sub_22BE29F88(&qword_281079998, type metadata accessor for ToolboxDatabasePayload, &unk_22C28F0C0);
    sub_22C26DB54();
    if (!v2)
    {
      sub_22BF158B4(v13, v12);
      sub_22BE19DC4(v10, 0, 1, v11);
      sub_22BF68168();
      v18 = v20;
      sub_22BE233E8(v20, &qword_27D90B6D0, &unk_22C28EBA0);
      sub_22BF68168();
      return sub_22BE19DC4(v18, 0, 1, v11);
    }

    sub_22BF158B4(v13, v12);
    sub_22BE19DC4(v10, 1, 1, v11);
    sub_22BE233E8(v10, &qword_27D90B6D0, &unk_22C28EBA0);
  }

  sub_22C271AD4();
  v14 = sub_22C272084();
  v15 = sub_22C2737A4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22BE15000, v14, v15, "Payload from ANN search for 1P apps or protocols could not be decoded", v16, 2u);
    MEMORY[0x2318AD180](v16, -1, -1);
  }

  return (*(v5 + 8))(v7, v21);
}

void sub_22BF5CC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    v7 = v5;
    sub_22C272C34();
    sub_22C272C24();
    v12 = sub_22C2721A4();

    if (!v6)
    {
      MEMORY[0x28223BE20](v13);
      v14[2] = v7;
      v14[3] = a1;
      v14[4] = a4;
      v14[5] = a2;
      v14[6] = a3;
      sub_22BF4421C(sub_22BF68F90, v14, v12);
    }
  }
}

void sub_22BF5CD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v24;
  a20 = v25;
  v507 = v26;
  v498 = v27;
  v29 = v28;
  v31 = v30;
  v475 = sub_22C272224();
  sub_22BE179D8();
  v471 = v32;
  MEMORY[0x28223BE20](v33);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v34);
  sub_22BE19E94();
  sub_22BE18950(v35);
  v473 = sub_22C2720A4();
  sub_22BE179D8();
  v472 = v36;
  MEMORY[0x28223BE20](v37);
  sub_22BE17A44();
  sub_22BE190A8(v38);
  v479 = sub_22BE5CE4C(&qword_27D90B770, &qword_22C28ED50);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE1A174();
  sub_22BE190A8(v40);
  v41 = sub_22BE5CE4C(&qword_27D90B778, &qword_22C28ED58);
  v42 = sub_22BE19448(v41);
  MEMORY[0x28223BE20](v42);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v43);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v44);
  sub_22BE19E94();
  sub_22BE18950(v45);
  v493 = sub_22C272A94();
  sub_22BE179D8();
  v488 = v46;
  MEMORY[0x28223BE20](v47);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v48);
  sub_22BE19E94();
  sub_22BE190A8(v49);
  v482 = sub_22BE5CE4C(&qword_27D90B780, &qword_22C28ED60);
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v50);
  sub_22BE1A174();
  sub_22BE190A8(v51);
  v52 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);
  v53 = sub_22BE19448(v52);
  MEMORY[0x28223BE20](v53);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v54);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v55);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v56);
  sub_22BE19E94();
  sub_22BE190A8(v57);
  v58 = sub_22BE5CE4C(&qword_27D90B788, &qword_22C28ED68);
  v59 = sub_22BE19448(v58);
  MEMORY[0x28223BE20](v59);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v60);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v61);
  sub_22BE19E94();
  sub_22BE18950(v62);
  v490 = sub_22C272A14();
  sub_22BE179D8();
  v492 = v63;
  MEMORY[0x28223BE20](v64);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v65);
  sub_22BE19E94();
  sub_22BE18950(v66);
  sub_22C26E4C4();
  sub_22BE179D8();
  v502 = v68;
  v503 = v67;
  MEMORY[0x28223BE20](v67);
  sub_22BE17A44();
  v501 = v69;
  sub_22BE183BC();
  v509 = sub_22C272A74();
  sub_22BE179D8();
  v506 = v70;
  MEMORY[0x28223BE20](v71);
  sub_22BE17B98();
  v500 = v72;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v73);
  sub_22BE19E94();
  v505 = v74;
  sub_22BE183BC();
  v508 = sub_22C272AC4();
  sub_22BE179D8();
  v510 = v75;
  MEMORY[0x28223BE20](v76);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v77);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v78);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v79);
  sub_22BE19490();
  v499 = v80;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v81);
  sub_22BE19E94();
  v504 = v82;
  sub_22BE183BC();
  v511 = sub_22C26E4D4();
  sub_22BE179D8();
  v513 = v83;
  MEMORY[0x28223BE20](v84);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v85);
  v87 = &v454 - v86;
  MEMORY[0x28223BE20](v88);
  v90 = &v454 - v89;
  v91 = sub_22C26E494();
  sub_22BE179D8();
  v512 = v92;
  MEMORY[0x28223BE20](v93);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v94);
  v96 = &v454 - v95;
  v515 = *v29;
  v97 = v31;
  sub_22BF4DCB4();
  if (v21)
  {
    goto LABEL_62;
  }

  v461 = v23;
  v458 = v22;
  v462 = v20;
  v469 = v90;
  v98 = v513;
  v467 = v96;
  v468 = v87;
  v494 = v91;
  v99 = a10;
  if ((a10 & 0xFF00) == 0x200)
  {
    goto LABEL_62;
  }

  v465 = 0;
  sub_22BE29F88(&qword_28107F310, MEMORY[0x277D78248], MEMORY[0x277D78250]);
  v100 = sub_22C272E84();
  v466 = v97;
  v454 = sub_22C2721D4();
  v456 = v101;
  sub_22BE28C80();
  sub_22C26E484();
  v455 = v99;
  v102 = v469;
  *v469 = v99;
  v103 = *(v98 + 104);
  HIDWORD(v457) = *MEMORY[0x277D78290];
  v464 = v98 + 104;
  v460 = v103;
  v103(v102);
  v104 = sub_22BE200D4();
  v513 = v98 + 32;
  v463 = v105;
  v105(v104);
  swift_isUniquelyReferenced_nonNull_native();
  *&v515 = v100;
  v106 = sub_22BE25D0C();
  sub_22BE62DF8(v106, v107, v108, v109, v110, v111, v112, v113, v454, v455, v456, v457);
  v459 = v515;
  v114 = *(v512 + 8);
  v115 = sub_22BE191C0();
  v512 = v116;
  (v114)(v115);
  v117 = v504;
  v118 = sub_22C272154();
  v119 = v505;
  MEMORY[0x2318AB1A0](v118);
  v121 = v510 + 8;
  v120 = *(v510 + 8);
  (v120)(v117, v508);
  LODWORD(v117) = (*(v506 + 11))(v119, v509);
  v122 = *MEMORY[0x277D730E0];
  v123 = sub_22BF6AC14();
  v125 = v124;
  (v124)(v123);
  v514 = v114;
  if (v117 == v122)
  {
    sub_22BE3C6E0();
    sub_22C26E484();
    v126 = sub_22C272154();
    v127 = v500;
    MEMORY[0x2318AB1A0](v126);
    v128 = sub_22BE1A6BC();
    v120(v128);
    v129 = v465;
    v130 = sub_22C272A64();
    v465 = v129;
    if (v129)
    {

      v125(v127, v509);
      sub_22BE1AF50();
      v514();

      goto LABEL_62;
    }

    v132 = v130;
    v133 = v131;
    v506 = v120;
    v510 = v121;
    v125(v127, v509);
    v134 = v458;
    *v458 = v132;
    v134[1] = v133;
    sub_22BE2C69C();
    v135();
    sub_22BE1B328();
    sub_22BE41EE0();
    v136();
    v137 = v459;
    swift_isUniquelyReferenced_nonNull_native();
    *&v515 = v137;
    v138 = sub_22BE29454();
    sub_22BE62DF8(v138, v139, v140, v141, v142, v143, v144, v145, v454, v455, v456, v457);
    v459 = v515;
    sub_22BE1AF50();
    v514();
  }

  else
  {
    v506 = v120;
    v510 = v121;
  }

  v146 = v462[24];
  sub_22BE26950(v462 + 20, v462[23]);
  v147 = v146 + 24;
  v148 = *(v146 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v516 = AssociatedTypeWitness;
  sub_22BE1AB74();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v517 = AssociatedConformanceWitness;
  sub_22BE62524(&v515);
  sub_22BE36674();
  (v148)();
  v152 = v501;
  v151 = v502;
  *v501 = 0;
  v152[1] = 0;
  (*(v151 + 104))(v152, *MEMORY[0x277D78268], v503);
  sub_22BE29E4C();
  sub_22C26E474();
  sub_22BE28C80();
  v153(AssociatedTypeWitness, AssociatedConformanceWitness);
  v154 = sub_22BE25D0C();
  v155 = v511;
  v156 = v463;
  v463(v154);
  v157 = v459;
  swift_isUniquelyReferenced_nonNull_native();
  sub_22BE412E4();
  v158 = sub_22BE22DF4();
  sub_22BE62DF8(v158, v159, v160, v161, v162, v163, v164, v165, v454, v455, v456, v457);
  v166 = sub_22BE2B820();
  v167(v166);
  if (v507)
  {

    sub_22BE23CD0();
    sub_22C26E484();
    *v148 = 3;
    v168 = sub_22BE1A8E8();
    v169 = v460;
    v460(v168);
    v170 = sub_22BE25D0C();
    v156(v170);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BE48DCC();
    v171 = sub_22BE22DF4();
    sub_22BE62DF8(v171, v172, v173, v174, v175, v176, v177, v178, v454, v455, v456, v457);
    v179 = sub_22BE2B820();
    v180(v179);
    sub_22BF6AA58();
    sub_22C26E484();
    *v148 = 0;
    v181 = sub_22BE1A8E8();
    v169(v181);
    v182 = sub_22BE25D0C();
    v156(v182);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BE412E4();
    v183 = sub_22BE22DF4();
    sub_22BE62DF8(v183, v184, v185, v186, v187, v188, v189, v190, v454, v455, v456, v457);
    v191 = v514;
    (v514)(v147, v494);
    v192 = v507;

    sub_22C26E484();
    *v148 = v498;
    *(v148 + 8) = v192;
    sub_22BE2C69C();
    v193();
    sub_22BE25D0C();
    sub_22BE290EC();
    v194();
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BE412E4();
    v195 = sub_22BE22DF4();
    sub_22BE62DF8(v195, v196, v197, v198, v199, v200, v201, v202, v454, v455, v456, v457);
    v203 = sub_22BE33BE8();
    (v191)(v203);
LABEL_61:
    sub_22BE26B64(&v515);
    goto LABEL_62;
  }

  if ((v455 & 0x100) != 0)
  {
    sub_22BE23CD0();
    sub_22C26E484();
    v224 = v469;
    *v469 = 4;
    v225 = v460;
    (v460)(v224, HIDWORD(v457), v155);
    v226 = sub_22BE36658();
    v463(v226);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BE48DCC();
    v227 = sub_22BE22DF4();
    sub_22BE62DF8(v227, v228, v229, v230, v231, v232, v233, v234, v454, v455, v456, v457);
    v235 = sub_22BE2B820();
    v236(v235);
    sub_22C26E484();
    v237 = v456;
    *v224 = v454;
    v224[1] = v237;
    (v225)(v224, *MEMORY[0x277D78288], v155);
    sub_22BE36658();
    sub_22BE290EC();
    v238();
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BE48DCC();
    v239 = sub_22BE22DF4();
    sub_22BE62DF8(v239, v240, v241, v242, v243, v244, v245, v246, v454, v455, v456, v457);
    v247 = sub_22BE2B820();
    v248(v247);
    goto LABEL_61;
  }

  v509 = v157;

  sub_22BF6AA4C();
  sub_22C272154();
  sub_22BE28C80();
  sub_22C272A34();
  v204 = v508;
  sub_22BE406D0();
  v205();
  v206 = v492;
  v207 = *(v492 + 104);
  v208 = v496;
  LODWORD(v507) = *MEMORY[0x277D730B0];
  v209 = v490;
  v504 = (v492 + 104);
  v505 = v207;
  v207(v496);
  v210 = sub_22C272A04();
  v211 = *(v206 + 8);
  v212 = sub_22BE22DF4();
  v211(v212);
  v213 = sub_22BE191C0();
  v503 = v211;
  v211(v213);
  if ((v210 & 1) == 0)
  {
    sub_22BE1B754();
    sub_22C272194();
    sub_22BE1AB5C(v208, 1, v204);
    if (v259)
    {
      sub_22BE233E8(v208, &unk_27D906F38, qword_22C274D30);
      v250 = 1;
      v251 = v483;
      v204 = v487;
    }

    else
    {
      sub_22BE3C6E0();
      sub_22C272A34();
      sub_22BE200D4();
      sub_22BE406D0();
      v249();
      v250 = 0;
      v251 = v483;
    }

    v252 = v486;
    v253 = v482;
    sub_22BE19DC4(v204, v250, 1, v209);
    v505(v252, v507, v209);
    sub_22BE187DC();
    sub_22BE19DC4(v254, v255, v256, v209);
    v208 = *(v253 + 48);
    sub_22BE426E8();
    sub_22BE22868();
    sub_22BE22868();
    sub_22BE1AB5C(v251, 1, v209);
    if (v259)
    {
      v257 = sub_22BE19454();
      sub_22BE233E8(v257, v258, &qword_22C28ED68);
      sub_22BE233E8(v204, &qword_27D90B788, &qword_22C28ED68);
      sub_22BE1AB5C(v251 + v208, 1, v209);
      if (v259)
      {
        sub_22BE233E8(v251, &qword_27D90B788, &qword_22C28ED68);
        sub_22BE3D694();
        v204 = v508;
        goto LABEL_12;
      }
    }

    else
    {
      sub_22BE22868();
      sub_22BE1AB5C(v251 + v208, 1, v209);
      if (!v259)
      {
        v394 = v495;
        (*(v492 + 32))(v495, v251 + v208, v209);
        sub_22BE23538();
        sub_22BE29F88(v395, v396, MEMORY[0x277D730C8]);
        sub_22BE22B1C();
        v397 = sub_22C272FD4();
        v398 = v503;
        (v503)(v394, v209);
        v208 = &qword_22C28ED68;
        sub_22BE233E8(v486, &qword_27D90B788, &qword_22C28ED68);
        sub_22BE233E8(v487, &qword_27D90B788, &qword_22C28ED68);
        v399 = sub_22BE33B3C();
        v398(v399);
        v400 = v394;
        sub_22BE233E8(v251, &qword_27D90B788, &qword_22C28ED68);
        sub_22BE3D694();
        v267 = v496;
        v204 = v508;
        if (v397)
        {
          goto LABEL_12;
        }

LABEL_30:
        sub_22BE1B754();
        sub_22C272154();
        sub_22C272A34();
        v268 = sub_22BE1B328();
        v269 = v510;
        v270 = v506;
        v506(v268);
        v505(v267, v507, v209);
        sub_22BE23538();
        sub_22BE29F88(v271, v272, MEMORY[0x277D730C8]);
        sub_22BE27BA4();
        v273 = sub_22C272FD4();
        v274 = sub_22BE191C0();
        v275 = v503;
        v503(v274);
        v276 = sub_22BE33B3C();
        v275(v276);
        if (v273)
        {
          goto LABEL_61;
        }

        sub_22BE23CD0();
        sub_22BE204A4();
        sub_22C26E484();
        v510 = v269;
        v506 = v270;
        v277 = v469;
        *v469 = 1;
        sub_22BE1A8E8();
        sub_22BE20368();
        v278();
        v279 = v468;
        sub_22BE426E8();
        sub_22BE290EC();
        v280();
        swift_isUniquelyReferenced_nonNull_native();
        sub_22BE412E4();
        sub_22BE62DF8(v279, v400, v281, v282, v283, v284, v285, v286, v454, v455, v456, v457);
        sub_22BF6ABD4();
        v287 = v494;
        (v514)(v400, v494);
        sub_22BF6AA6C();
        sub_22C26E484();
        sub_22BE32E58();
        sub_22C272154();
        v288 = sub_22C272A24();
        v290 = v289;
        (v506)(v208, v508);
        *v277 = v288;
        v277[1] = v290;
        sub_22BE20368();
        v291();
        sub_22BE426E8();
        v292 = v508;
        sub_22BE290EC();
        v293();
        v294 = v509;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a10 = v294;
        sub_22BE62DF8(v279, v400, isUniquelyReferenced_nonNull_native, v296, v297, v298, v299, v300, v454, v455, v456, v457);
        sub_22BF6ABD4();
        (v514)(v400, v287);
        v301 = v477;
        sub_22C272194();
        v302 = sub_22BE23E90();
        sub_22BE1AB5C(v302, v303, v292);
        if (!v259)
        {
          v304 = sub_22C272A24();
          v306 = v305;
          v307 = sub_22BE36318();
          v308 = v506;
          v506(v307);
          sub_22BE204A4();
          sub_22C272154();
          v309 = sub_22C272A24();
          v311 = v310;
          v312 = sub_22BE27BA4();
          v308(v312);
          if (v304 != v309 || v306 != v311)
          {
            sub_22BE1B328();
            v314 = sub_22C274014();

            if ((v314 & 1) == 0)
            {
              sub_22BE204A4();
              sub_22C26E484();
              sub_22BE3C128();
              sub_22BE2C69C();
              v315();
              sub_22BE41EE0();
              v316();
              v317 = v509;
              swift_isUniquelyReferenced_nonNull_native();
              a10 = v317;
              v318 = sub_22BE1B62C();
              sub_22BE62DF8(v318, v319, v320, v321, v322, v323, v324, v325, v454, v455, v456, v457);
              sub_22BE1AF50();
              v514();
              goto LABEL_61;
            }

LABEL_60:

            goto LABEL_61;
          }

LABEL_59:

          goto LABEL_60;
        }

LABEL_52:
        sub_22BE233E8(v301, &unk_27D906F38, qword_22C274D30);
        goto LABEL_61;
      }

      sub_22BE40960();
      sub_22BE233E8(v260, v261, v262);
      sub_22BE40960();
      sub_22BE233E8(v263, v264, v265);
      v266 = sub_22BE33B3C();
      v503(v266);
    }

    sub_22BE233E8(v251, &qword_27D90B780, &qword_22C28ED60);
    sub_22BE3D694();
    v267 = v496;
    v400 = v495;
    goto LABEL_30;
  }

LABEL_12:
  sub_22BF6AA4C();
  sub_22C272154();
  sub_22BE29E4C();
  sub_22C272AB4();
  v214 = sub_22BE260B8();
  v215 = v506;
  v506(v214);
  v216 = *MEMORY[0x277D730F0];
  sub_22BE1B754();
  v218 = *(v217 + 104);
  v505 = (v217 + 104);
  v507 = v218;
  v218(v489, v216, v493);
  v219 = sub_22C272A04();
  v220 = *(v208 + 8);
  v221 = sub_22BE3EA80();
  v220(v221);
  v222 = sub_22BE180C8();
  v220(v222);
  if (v219)
  {
LABEL_13:
    v223 = 2;
    goto LABEL_50;
  }

  v504 = v220;
  sub_22BE204A4();
  sub_22BE32E58();
  sub_22C272194();
  sub_22BE1AB5C(v220, 1, v204);
  if (v259)
  {
    sub_22BE233E8(v220, &unk_27D906F38, qword_22C274D30);
    v326 = 1;
    v327 = v481;
    v215 = v480;
  }

  else
  {
    sub_22BE28C80();
    sub_22C272AB4();
    v215(v220, v204);
    v326 = 0;
    v327 = v481;
  }

  v328 = v484;
  v329 = v479;
  v330 = v493;
  sub_22BE19DC4(v215, v326, 1, v493);
  v507(v328, v216, v330);
  sub_22BE187DC();
  sub_22BE19DC4(v331, v332, v333, v330);
  v334 = *(v329 + 48);
  sub_22BE191C0();
  sub_22BE22868();
  sub_22BE22868();
  sub_22BE1AB5C(v327, 1, v330);
  if (v259)
  {
    sub_22BE233E8(v328, &qword_27D90B778, &qword_22C28ED58);
    sub_22BE233E8(v215, &qword_27D90B778, &qword_22C28ED58);
    sub_22BE1AB5C(v327 + v334, 1, v330);
    if (v259)
    {
      sub_22BE233E8(v327, &qword_27D90B778, &qword_22C28ED58);
      goto LABEL_13;
    }
  }

  else
  {
    v335 = v478;
    sub_22BE22868();
    sub_22BE1AB5C(v327 + v334, 1, v330);
    if (!v336)
    {
      v401 = v327 + v334;
      v402 = v491;
      (*(v488 + 32))(v491, v401, v330);
      sub_22BE29F88(&qword_28106DF08, MEMORY[0x277D73100], MEMORY[0x277D73108]);
      v403 = sub_22C272FD4();
      v404 = v504;
      (v504)(v402, v330);
      sub_22BE36674();
      sub_22BE233E8(v405, v406, v407);
      sub_22BE36674();
      sub_22BE233E8(v408, v409, v410);
      v404(v335, v330);
      sub_22BE36674();
      sub_22BE233E8(v411, v412, v413);
      v343 = v507;
      if (v403)
      {
        goto LABEL_13;
      }

      goto LABEL_47;
    }

    sub_22BE36674();
    sub_22BE233E8(v337, v338, v339);
    sub_22BE36674();
    sub_22BE233E8(v340, v341, v342);
    (v504)(v335, v330);
  }

  sub_22BE233E8(v327, &qword_27D90B770, &qword_22C28ED50);
  v343 = v507;
LABEL_47:
  sub_22BF6AA4C();
  sub_22BE32E58();
  sub_22C272154();
  sub_22BE28C80();
  sub_22C272AB4();
  v344 = v489;
  v345 = v506;
  (v506)(&qword_27D90B778, v508);
  v346 = v493;
  v343(v344, *MEMORY[0x277D730E8], v493);
  v347 = sub_22C272A04();
  v348 = sub_22BE3EA80();
  v349 = v504;
  v504(v348);
  v350 = sub_22BE37B20();
  v349(v350);
  if (v347 & 1) != 0 || (sub_22BE32E58(), sub_22C272154(), sub_22C272AB4(), v345(&qword_27D90B778, v508), v507(v344, *MEMORY[0x277D730F8], v346), v351 = sub_22C272A04(), v352 = sub_22BE3EA80(), v349(v352), v353 = sub_22BE37B20(), v349(v353), (v351))
  {
    v223 = 1;
LABEL_50:
    v354 = v467;
    v355 = v469;
    sub_22BE23CD0();
    sub_22BF6AB80();
    sub_22C26E484();
    *v355 = v223;
    sub_22BE20368();
    v356();
    v357 = v468;
    sub_22BE23108();
    sub_22BE41EE0();
    v358();
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BE412E4();
    sub_22BE62DF8(v357, v354, v359, v360, v361, v362, v363, v364, v454, v455, v456, v457);
    sub_22BF6ABD4();
    sub_22BE1AF50();
    v365 = v514;
    v514();
    sub_22BF6AA6C();
    sub_22BF6AB80();
    sub_22C26E484();
    sub_22BE28C80();
    v366 = v466;
    sub_22C272154();
    v367 = sub_22C272A24();
    v369 = v368;
    v370 = v508;
    sub_22BE406D0();
    v371();
    *v355 = v367;
    v355[1] = v369;
    LODWORD(v507) = *MEMORY[0x277D78288];
    sub_22BE20368();
    v372();
    v373 = sub_22BE23108();
    v463(v373);
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BE48DCC();
    v374 = v366;
    sub_22BE62DF8(v357, v354, v375, v376, v377, v378, v379, v380, v454, v455, v456, v457);
    sub_22BF6ABD4();
    sub_22BE1AF50();
    v365();
    v301 = v485;
    sub_22C272194();
    v381 = sub_22BE23E90();
    sub_22BE1AB5C(v381, v382, v370);
    if (!v259)
    {
      v383 = sub_22C272A24();
      v385 = v384;
      v386 = sub_22BE36318();
      v387 = v506;
      v506(v386);
      sub_22BE351B8();
      sub_22C272154();
      v388 = sub_22C272A24();
      v390 = v389;
      v391 = sub_22BE2BA80();
      v387(v391);
      if (v383 != v388 || v385 != v390)
      {
        sub_22BE1B328();
        v393 = sub_22C274014();

        if ((v393 & 1) == 0)
        {
          sub_22BE351B8();
          sub_22C26E484();
          sub_22BE3C128();
          sub_22BE2C69C();
          v414();
          v415 = v468;
          sub_22BE194F8();
          sub_22BE41EE0();
          v416();
          v417 = v509;
          v418 = swift_isUniquelyReferenced_nonNull_native();
          a10 = v417;
          sub_22BE62DF8(v415, v374, v418, v419, v420, v421, v422, v423, v454, v455, v456, v457);
          sub_22BE1AF50();
          v365();
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      goto LABEL_59;
    }

    goto LABEL_52;
  }

  sub_22BE29E4C();
  sub_22C271AB4();
  v424 = v471;
  v425 = *(v471 + 16);
  v425(v470, v466, v475);
  v426 = sub_22BE2590C();
  (v425)(v426);
  v427 = sub_22C272084();
  v428 = sub_22C2737A4();
  if (os_log_type_enabled(v427, v428))
  {
    sub_22BE33578();
    v429 = swift_slowAlloc();
    v514 = sub_22BE3CF58();
    a10 = v514;
    *v429 = 136315394;
    v430 = v497;
    sub_22C272154();
    sub_22BE28C80();
    v431 = v430;
    sub_22C272AB4();
    sub_22BE406D0();
    v432();
    sub_22C273074();
    v433 = sub_22BE48A68();
    v434 = *(v424 + 8);
    v435 = v475;
    v434(v433, v475);
    v436 = sub_22BE1B73C();
    sub_22BE61C88(v436, v437, v438);
    sub_22BE48A68();

    *(v429 + 4) = v431;
    *(v429 + 12) = 2080;
    v439 = v474;
    v440 = sub_22C2721D4();
    v442 = v441;
    v434(v439, v435);
    sub_22BE61C88(v440, v442, &a10);
    sub_22BE48A68();

    *(v429 + 14) = v439;
    sub_22BF6AC20();
    _os_log_impl(v443, v444, v445, v446, v447, 0x16u);
    swift_arrayDestroy();
    v448 = sub_22BE19F74();
    MEMORY[0x2318AD180](v448);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();

    sub_22BE1B5D4();
    v450 = v476;
  }

  else
  {

    v451 = *(v424 + 8);
    v452 = sub_22BE194F8();
    v451(v452);
    v453 = sub_22BE18240();
    v451(v453);
    sub_22BE1B5D4();
    v450 = v345;
  }

  v449(v450, v473);
  sub_22BE26B64(&v515);
LABEL_62:
  sub_22BE18478();
}

uint64_t sub_22BF5EE78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 24);

  v9 = sub_22C2721D4();
  *a3 = v5;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8;
  *(a3 + 48) = a2;
}

double sub_22BF5EEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_22C272D14();
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  sub_22BF442E8(sub_22BF68FB4, v15, v11);

  v12 = sub_22C272CF4();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  sub_22BF442E8(sub_22BF68FD0, v14, v12);

  return result;
}

uint64_t sub_22BF5EFD8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7)
{
  v19 = a7;
  v9 = *a1;
  v10 = a1[1];
  v18[0] = sub_22C2721D4();
  v18[1] = v11;

  v12 = sub_22BE1B18C();
  MEMORY[0x2318AB8D0](v12);

  v13 = sub_22BF53DC0();

  sub_22C1A8734(v18, v13);
  result = sub_22C26A128(v13, a5);
  if ((result & 1) == 0)
  {

    sub_22BE78B20();
    v15 = *(*a6 + 16);
    result = sub_22BE78C0C(v15);
    v16 = *a6;
    *(v16 + 16) = v15 + 1;
    v17 = v16 + 32 * v15;
    *(v17 + 32) = v13;
    *(v17 + 40) = v9;
    *(v17 + 48) = v10;
    *(v17 + 56) = v19;
  }

  return result;
}

void sub_22BF5F0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v69 = a8;
  v73 = a7;
  v80 = a5;
  v81 = a6;
  v79 = a3;
  v64 = type metadata accessor for ToolboxVersion(0);
  MEMORY[0x28223BE20](v64);
  v65 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C2720A4();
  v67 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v68 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22BE5CE4C(&qword_27D90B740, &qword_22C28ED18);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v64 - v16;
  v82 = sub_22C26E504();
  v18 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v75 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v72 = &v64 - v21;
  if (a2 < a1)
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v66 = v13;
    v83 = v9;
    v78 = a9;
    v76 = sub_22C26D134();
    v24 = v23;
    v25 = 0;
    v27 = v26 >> 1;
    v77 = MEMORY[0x277D84F90];
    v70 = v22;
    v71 = v18;
    v74 = (v18 + 32);
LABEL_3:
    v28 = (v22 + 56 * v24);
    while (v27 != v24)
    {
      if (v24 >= v27)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_26;
      }

      v30 = v17;
      v31 = *(v28 + 3);
      v32 = *(v28 + 4);
      v33 = *(v28 + 6);
      v34 = *(v28 + 40);
      v35 = *(v28 + 2);
      v84 = *v28;
      v85 = v35;
      v86 = v31;
      v87 = v32;
      v88 = v34;
      v89 = v33;

      v36 = v83;
      sub_22BF5F7BC(v25, &v84, v79, v30);
      v83 = v36;
      if (v36)
      {

        swift_unknownObjectRelease();
        return;
      }

      v17 = v30;
      if (sub_22BE1AEA8(v30, 1, v82) != 1)
      {
        v37 = *v74;
        v38 = v72;
        v39 = v82;
        (*v74)(v72, v30, v82);
        v37(v75, v38, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BE678C0(0, *(v77 + 16) + 1, 1, v77);
          v77 = v44;
        }

        v40 = v71;
        v42 = *(v77 + 16);
        v41 = *(v77 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_22BE678C0(v41 > 1, v42 + 1, 1, v77);
          v77 = v45;
        }

        ++v24;
        v43 = v77;
        *(v77 + 16) = v42 + 1;
        v37((v43 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v42), v75, v82);
        v25 = v29;
        v22 = v70;
        goto LABEL_3;
      }

      sub_22BE233E8(v30, &qword_27D90B740, &qword_22C28ED18);
      ++v25;
      v28 = (v28 + 56);
      ++v24;
    }

    swift_unknownObjectRelease();
    v46 = v73;
    v47 = v83;
    sub_22C26E354();
    if (v47)
    {
    }

    else
    {

      if (v69)
      {
        v48 = *(v69 + 16);

        if (v48)
        {
          v49 = v68;
          sub_22C271B14();

          v50 = sub_22C272084();
          v51 = sub_22C273784();

          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v90 = v53;
            *v52 = 136315138;
            v54 = v46;
            v55 = *(v46 + 144);
            v56 = *(v54 + 152);
            sub_22BE1BD3C((v54 + 120), v55);
            v57 = v65;
            (*(v56 + 16))(v55, v56);
            v58 = *(v64 + 20);
            v59 = sub_22C26FDE4();
            v61 = v60;
            v62 = sub_22C26FDF4();
            (*(*(v62 - 8) + 8))(&v57[v58], v62);
            v63 = sub_22BE61C88(v59, v61, &v90);

            *(v52 + 4) = v63;
            _os_log_impl(&dword_22BE15000, v50, v51, "ToolEmbeddingToolDatabase: received cancellation request. Cancelling %s toolbox.", v52, 0xCu);
            sub_22BE26B64(v53);
            MEMORY[0x2318AD180](v53, -1, -1);
            MEMORY[0x2318AD180](v52, -1, -1);

            (*(v67 + 8))(v68, v66);
          }

          else
          {

            (*(v67 + 8))(v49, v66);
          }
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_22BF5F7BC@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v51 = a4;
  v52 = a1;
  v50 = a5;
  v7 = sub_22C2720A4();
  *&v49 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C273064();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for ToolboxDatabasePayload(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[2];
  v15 = *(a2 + 40);
  *v13 = a2[1];
  *(v13 + 1) = v14;
  v13[16] = v15;
  swift_storeEnumTagMultiPayload();

  v17 = MEMORY[0x2318ACA20](v16);
  if (qword_281079BC0 != -1)
  {
    swift_once();
  }

  sub_22BE29F88(&qword_2810799A0, type metadata accessor for ToolboxDatabasePayload, &unk_22C28F098);
  v18 = sub_22C26DC04();
  if (v5)
  {
    objc_autoreleasePoolPop(v17);
    return sub_22BF680B4();
  }

  v46 = v7;
  v21 = v18;
  v22 = v19;
  objc_autoreleasePoolPop(v17);
  sub_22C26DC34();
  swift_allocObject();
  sub_22C26DC24();
  sub_22C273054();
  v47 = v21;
  v48 = v22;
  v23 = sub_22C273044();
  v25 = v24;

  if (!v25)
  {
    sub_22C271AD4();
    v41 = sub_22C272084();
    v42 = sub_22C2737A4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_22BE15000, v41, v42, "Could not convert tool definition representation to a json string", v43, 2u);
      MEMORY[0x2318AD180](v43, -1, -1);
    }

    (*(v49 + 8))(v9, v46);
    sub_22BF38764();
    swift_allocError();
    *v44 = 9;
    swift_willThrow();
    sub_22BE29DD4(v47, v48);
    return sub_22BF680B4();
  }

  sub_22BE5CE4C(&qword_27D90B748, &qword_22C28ED20);
  v26 = (sub_22BE5CE4C(&qword_27D90B750, &qword_22C28ED28) - 8);
  v27 = (*(*v26 + 80) + 32) & ~*(*v26 + 80);
  v28 = swift_allocObject();
  v49 = xmmword_22C275160;
  *(v28 + 16) = xmmword_22C275160;
  v29 = (v28 + v27 + v26[14]);
  sub_22C26E484();
  *v29 = v23;
  v29[1] = v25;
  v30 = *MEMORY[0x277D78288];
  v31 = sub_22C26E4D4();
  (*(*(v31 - 8) + 104))(v29, v30, v31);
  sub_22C26E494();
  sub_22BE29F88(&qword_28107F310, MEMORY[0x277D78248], MEMORY[0x277D78250]);
  v32 = sub_22C272E84();
  v33 = a2[6];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v32;
  sub_22BF65E20(v33, sub_22BF67FC0, 0, isUniquelyReferenced_nonNull_native, &v53);
  sub_22BE5CE4C(&qword_27D90B718, &qword_22C28EC48);
  result = swift_allocObject();
  *(result + 16) = v49;
  if ((v52 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v51 + 16) > v52)
  {
    v35 = result;

    v36 = sub_22C2734C4();
    v38 = v37;

    *(v35 + 32) = v36;
    *(v35 + 40) = v38;
    v39 = v50;
    sub_22C26E4E4();
    sub_22BF680B4();
    v40 = sub_22C26E504();
    return sub_22BE19DC4(v39, 0, 1, v40);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BF5FDE0()
{
  sub_22BE183F0();
  sub_22C26E374();
  sub_22BE1A26C();

  return v0();
}

uint64_t sub_22BF5FE48()
{
  sub_22BF1CE1C(v0 + 16);
  sub_22BE26B64((v0 + 120));
  sub_22BE26B64((v0 + 160));

  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_databaseBaseURL;
  sub_22C26DF64();
  sub_22BE18524();
  (*(v2 + 8))(v0 + v1);
  sub_22BE25F54();
  sub_22BF680B4();

  v3 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport22ToolEmbeddingsDatabase_signposter;
  sub_22C272024();
  sub_22BE18524();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t sub_22BF5FF24()
{
  sub_22BF5FE48();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BF5FF7C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000022C2D4B30 == a2;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75626972746E6F63 && a2 == 0xEC0000006E6F6974)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22BF60050(char a1)
{
  if (a1)
  {
    return 0x75626972746E6F63;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_22BF60094()
{
  sub_22BE18378();
  v3 = v1 == 0x64496C6F6F74 && v2 == 0xE600000000000000;
  if (v3 || (sub_22BE3554C(), (sub_22C274014() & 1) != 0))
  {

    return 0;
  }

  else if (v1 == 0x75626972746E6F63 && v0 == 0xEC0000006E6F6974)
  {

    return 1;
  }

  else
  {
    sub_22BE3554C();
    v6 = sub_22C274014();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

void sub_22BF60148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_22BE19130();
  sub_22BE5CE4C(&qword_27D90B7D0, &qword_22C28F160);
  sub_22BE179D8();
  v59 = v30;
  v60 = v29;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE1A174();
  v57 = v32;
  sub_22BE5CE4C(&qword_27D90B7D8, &qword_22C28F168);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE1A174();
  sub_22BE183BC();
  v58 = sub_22C272CA4();
  sub_22BE179D8();
  v62 = v34;
  MEMORY[0x28223BE20](v35);
  sub_22BE17A44();
  v61 = v36;
  v37 = sub_22BE5CE4C(&qword_27D90B7E0, &qword_22C28F170);
  sub_22BE179D8();
  v56 = v38;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE234F4();
  type metadata accessor for ToolboxDatabasePayload(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v40);
  sub_22BE179EC();
  v43 = v42 - v41;
  v44 = sub_22BE5CE4C(&qword_27D90B7E8, &qword_22C28F178);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v45);
  sub_22BE1AB80();
  v46 = sub_22BE18944();
  sub_22BE26950(v46, v47);
  sub_22BF69868();
  sub_22BE23550();
  sub_22C274234();
  sub_22BE37584();
  sub_22BF6805C();
  sub_22BE36658();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22BF699B8();
    sub_22C273EE4();
    sub_22BE1A6BC();
    sub_22C273F54();

    if (!v27)
    {
      sub_22BF69A0C();
      sub_22C273FA4();
    }

    (*(v56 + 8))(v28, v37);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_22BF698BC();
    sub_22C273EE4();
    sub_22BE291B0();
    sub_22C273F54();

    if (!v27)
    {
      sub_22BF69A0C();
      sub_22C273FA4();
    }

    (*(v59 + 8))(v57, v60);
LABEL_14:
    v53 = sub_22BE2399C();
    v55 = v44;
    goto LABEL_15;
  }

  sub_22BE5CE4C(&qword_27D90B720, &qword_22C28EC50);
  (*(v62 + 32))(v61, v43, v58);
  sub_22BF69964();
  sub_22C273EE4();
  sub_22BE19274();
  sub_22BE29F88(v49, v50, MEMORY[0x277D73360]);
  sub_22C273FA4();
  if (!v27)
  {
    sub_22BF69A0C();
    sub_22C273FA4();
  }

  v51 = sub_22BE37B20();
  v52(v51);
  (*(v62 + 8))(v61, v58);
  v53 = sub_22BE2399C();
  v55 = v44;
LABEL_15:
  v54(v53, v55);
  sub_22BE35D48();
  sub_22BE18478();
}

void sub_22BF60728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_22BE19130();
  a26 = v30;
  a27 = v31;
  v33 = v32;
  sub_22BE5CE4C(&qword_27D90B7B0, &qword_22C28F138);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE1A174();
  sub_22BE5CE4C(&qword_27D90B7B8, &qword_22C28F140);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE1A174();
  sub_22BE5CE4C(&qword_27D90B7C0, &qword_22C28F148);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1A174();
  sub_22BE5CE4C(&qword_27D90B7C8, &unk_22C28F150);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE1AB80();
  v38 = type metadata accessor for ToolboxDatabasePayload(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v39);
  sub_22BE183AC();
  sub_22BE27A50();
  MEMORY[0x28223BE20](v40);
  sub_22BE486EC();
  MEMORY[0x28223BE20](v41);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v42);
  sub_22BE324EC();
  sub_22BE26950(v33, v33[3]);
  sub_22BF69868();
  sub_22BE23550();
  sub_22C274214();
  if (v28)
  {
    goto LABEL_9;
  }

  v84 = v29;
  v85 = v27;
  sub_22C273ED4();
  sub_22BE7C5C4();
  if (v44 == v43 >> 1)
  {
LABEL_8:
    v55 = sub_22C273B34();
    sub_22BE196B4(v55, MEMORY[0x277D841A0]);
    v57 = v56;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v57 = v38;
    v58 = sub_22C273DF4();
    sub_22BE1B198(v58);
    sub_22BE1BC24();
    (*(v59 + 104))(v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = sub_22BE25034();
    v61(v60);
LABEL_9:
    v62 = v33;
LABEL_10:
    sub_22BE26B64(v62);
    sub_22BE18478();
    return;
  }

  sub_22BE38A18();
  if (v46 < (v47 >> 1))
  {
    v50 = *(v49 + v48);
    sub_22BE39FEC(v45, v47 >> 1, v46, v47, v48);
    sub_22BE7C5C0();
    v52 = v51;
    v54 = v53;
    swift_unknownObjectRelease();
    if (v52 == v54 >> 1)
    {
      if (v50)
      {
        if (v50 == 1)
        {
          a13 = 1;
          sub_22BF69964();
          sub_22C273DE4();
          sub_22C272CA4();
          a12 = 0;
          sub_22BE19274();
          sub_22BE29F88(v63, v64, MEMORY[0x277D73378]);
          sub_22C273EB4();
          sub_22BE5CE4C(&qword_27D90B720, &qword_22C28EC50);
          a11 = 1;
          sub_22BF69910();
          sub_22C273EB4();
          swift_unknownObjectRelease();
          v71 = sub_22BE25034();
          v72(v71);
          v73 = sub_22BE1B62C();
          v74(v73);
          swift_storeEnumTagMultiPayload();
          sub_22BE185FC();
LABEL_14:
          sub_22BF68168();
          sub_22BE185FC();
          sub_22BF68168();
          v62 = v33;
          goto LABEL_10;
        }

        a17 = 2;
        sub_22BF698BC();
        sub_22BF6AB8C(&type metadata for ToolboxDatabasePayload.ClientActionCodingKeys, &a17);
        a16 = 0;
        sub_22BE22B1C();
        v65 = sub_22C273E64();
        v70 = v69;
        v86 = v65;
        a14 = 1;
        sub_22BF69910();
        sub_22BF6AC08();
        sub_22C273EB4();
        swift_unknownObjectRelease();
        v79 = sub_22BE33BE8();
        v80(v79);
        v81 = sub_22BE2593C();
        v82(v81);
        v83 = a15;
        *v85 = v86;
        *(v85 + 8) = v70;
        *(v85 + 16) = v83;
        sub_22BE336E8();
      }

      else
      {
        a10 = 0;
        sub_22BF699B8();
        sub_22BF6AB8C(&type metadata for ToolboxDatabasePayload.ToolDefinitionCodingKeys, &a10);
        sub_22BE22B1C();
        v66 = sub_22C273E64();
        v68 = v67;
        sub_22BF69910();
        sub_22BF6AC08();
        sub_22C273EB4();
        swift_unknownObjectRelease();
        v75 = sub_22BE33BE8();
        v76(v75);
        v77 = sub_22BE2593C();
        v78(v77);
        *v84 = v66;
        *(v84 + 8) = v68;
        *(v84 + 16) = v87;
      }

      swift_storeEnumTagMultiPayload();
      sub_22BE185FC();
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_22BF60FA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000022C2D4B30 == a2;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65706F6373 && a2 == 0xE500000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22BF610BC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x65706F6373;
  }

  return 0x65726F6373;
}

uint64_t sub_22BF61110(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22BF611D0(char a1)
{
  if (a1)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x64496C6F6F74;
  }
}

uint64_t sub_22BF61200()
{
  sub_22BE18378();
  v3 = v1 == sub_22BE3C478() && v0 == v2;
  if (v3 || (sub_22BE3554C(), (sub_22C274014() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x6E61747369737361 && v0 == 0xEF616D6568635374;
    if (v5 || (sub_22BE3554C(), (sub_22C274014() & 1) != 0))
    {

      return 1;
    }

    else if (v1 == 0x6341746E65696C63 && v0 == 0xEC0000006E6F6974)
    {

      return 2;
    }

    else
    {
      sub_22BE3554C();
      v7 = sub_22C274014();

      if (v7)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22BF612EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65706F6373 && a2 == 0xE500000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22BF613F8(char a1)
{
  if (!a1)
  {
    return 0x64496C6F6F74;
  }

  if (a1 == 1)
  {
    return 0x65706F6373;
  }

  return 0x65726F6373;
}

void sub_22BF61444(uint64_t a1)
{
  sub_22BE5CE4C(&qword_27D90B868, &qword_22C28F1D0);
  sub_22BE179D8();
  v54[2] = v2;
  v54[3] = v1;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1A174();
  v54[1] = v4;
  sub_22BE5CE4C(&qword_27D90B870, &qword_22C28F1D8);
  sub_22BE179D8();
  v54[5] = v6;
  v55 = v5;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  v54[4] = v8;
  sub_22BE183BC();
  sub_22C272CA4();
  sub_22BE179D8();
  v56 = v10;
  v57 = v9;
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v58 = v11;
  v12 = sub_22BE5CE4C(&qword_27D90B878, &qword_22C28F1E0);
  sub_22BE179D8();
  v54[0] = v13;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1B01C();
  type metadata accessor for ToolboxSearchOutput(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  v18 = v17 - v16;
  sub_22BE5CE4C(&qword_27D90B880, &qword_22C28F1E8);
  sub_22BE179D8();
  v61 = v19;
  v62 = v20;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  v23 = v54 - v22;
  v24 = sub_22BE336E8();
  sub_22BE26950(v24, v25);
  sub_22BF69B5C();
  v26 = v23;
  sub_22C274234();
  sub_22BF6805C();
  sub_22BE37B20();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    LODWORD(v59) = *(v18 + 16);
    v67 = 0;
    sub_22BF69C58();
    sub_22C273EE4();
    v66 = 0;
    sub_22BE260B8();
    v39 = v60;
    sub_22C273F54();

    if (v39)
    {
      v40 = sub_22BE39058();
      v41(v40, v12);
    }

    else
    {
      v65 = v59;
      v64 = 1;
      sub_22BF40E6C();
      sub_22C273F34();
      v63 = 2;
      sub_22C273F84();
      v44 = sub_22BE23108();
      v45(v44);
    }

    v46 = sub_22BE1AEE4();
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    LODWORD(v59) = *(v18 + *(sub_22BE5CE4C(&qword_27D90B6F0, &qword_22C28EC20) + 48));
    v29 = v56;
    v28 = v57;
    v30 = v58;
    v31 = sub_22BE426E8();
    v32(v31);
    v72 = 1;
    sub_22BF69C04();
    sub_22C273EE4();
    v71 = 0;
    sub_22BE19274();
    sub_22BE29F88(v33, v34, MEMORY[0x277D73360]);
    v35 = v55;
    v36 = v60;
    sub_22C273FA4();
    if (v36)
    {
      v37 = sub_22BE41FB4();
      v38(v37);
      (*(v29 + 8))(v30, v28);
    }

    else
    {
      v70 = v59;
      v69 = 1;
      sub_22BF40E6C();
      sub_22C273F34();
      v68 = 2;
      sub_22C273F84();
      v51 = v58;
      v52 = sub_22BE1A194();
      v53(v52, v35);
      (*(v29 + 8))(v51, v28);
    }

    v46 = sub_22BE18240();
LABEL_15:
    v48(v46, v47);
    goto LABEL_16;
  }

  v75 = 2;
  sub_22BF69BB0();
  v42 = v61;
  sub_22C273EE4();
  v74 = 0;
  sub_22BE194F8();
  v43 = v60;
  sub_22C273F54();

  if (!v43)
  {
    v73 = 1;
    sub_22BE22B1C();
    sub_22C273F84();
  }

  v49 = sub_22BE33BE8();
  v50(v49);
  (*(v62 + 8))(v26, v42);
LABEL_16:
  sub_22BE35D48();
}

void sub_22BF61AE8(void *a1)
{
  v63 = sub_22BE5CE4C(&qword_27D90B828, &qword_22C28F1B0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1A174();
  sub_22BE5CE4C(&qword_27D90B830, &qword_22C28F1B8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1A174();
  sub_22BE5CE4C(&qword_27D90B838, &qword_22C28F1C0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A174();
  v65 = sub_22BE5CE4C(&qword_27D90B840, &qword_22C28F1C8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1AB80();
  v9 = type metadata accessor for ToolboxSearchOutput(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE183AC();
  sub_22BE27A50();
  MEMORY[0x28223BE20](v11);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v12);
  sub_22BE23858();
  MEMORY[0x28223BE20](v13);
  sub_22BE324EC();
  sub_22BE26950(a1, a1[3]);
  sub_22BF69B5C();
  sub_22BE23550();
  sub_22C274214();
  if (v68)
  {
    goto LABEL_10;
  }

  v62 = v2;
  v69 = v9;
  v14 = v65;
  sub_22C273ED4();
  sub_22BE7C5C4();
  if (v16 == v15 >> 1)
  {
LABEL_9:
    v27 = sub_22C273B34();
    sub_22BE196B4(v27, MEMORY[0x277D841A0]);
    v29 = v28;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v29 = v69;
    v30 = sub_22C273DF4();
    sub_22BE1B198(v30);
    sub_22BE1BC24();
    (*(v31 + 104))(v29);
    swift_willThrow();
    swift_unknownObjectRelease();
    v32 = sub_22BE1A194();
    v33(v32, v14);
LABEL_10:
    sub_22BE26B64(a1);
LABEL_11:
    sub_22BE35D48();
    return;
  }

  sub_22BE38A18();
  if (v18 < (v19 >> 1))
  {
    v22 = *(v21 + v20);
    sub_22BE39FEC(v17, v19 >> 1, v18, v19, v20);
    sub_22BE7C5C0();
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    if (v24 == v26 >> 1)
    {
      if (v22)
      {
        if (v22 != 1)
        {
          v73[0] = 2;
          sub_22BF69BB0();
          sub_22BE41DB4(&type metadata for ToolboxSearchOutput.ClientActionCodingKeys, v73);
          v72[2] = 0;
          sub_22BE22B1C();
          v37 = sub_22C273E64();
          v41 = v40;
          v67 = v37;
          v72[1] = 1;
          sub_22C273E94();
          v43 = v42;
          swift_unknownObjectRelease();
          v44 = sub_22BE1A194();
          v45(v44, v63);
          v46 = sub_22BE410A0();
          v47(v46, v65);
          *v1 = v67;
          *(v1 + 8) = v41;
          *(v1 + 16) = v43;
          sub_22BE1A6BC();
          swift_storeEnumTagMultiPayload();
          sub_22BE1B3E4();
          sub_22BF68168();
          v48 = a1;
LABEL_15:
          sub_22BE1B3E4();
          sub_22BE1B73C();
          sub_22BF68168();
          sub_22BE26B64(v48);
          goto LABEL_11;
        }

        v72[0] = 1;
        sub_22BF69C04();
        sub_22BE41DB4(&type metadata for ToolboxSearchOutput.AssistantSchemaCodingKeys, v72);
        sub_22C272CA4();
        v71[3] = 0;
        sub_22BE19274();
        sub_22BE29F88(v34, v35, MEMORY[0x277D73378]);
        sub_22C273EB4();
        v64 = sub_22BE5CE4C(&qword_27D90B6F0, &qword_22C28EC20);
        v71[2] = 1;
        sub_22BF40F04();
        sub_22C273E44();
        v71[1] = 2;
        sub_22C273E94();
        v50 = v49;
        swift_unknownObjectRelease();
        v51 = *(v64 + 64);
        v52 = sub_22BF6AA14();
        v53(v52);
        v54 = sub_22BE291B0();
        v55(v54);
        *(v62 + v51) = v50;
        swift_storeEnumTagMultiPayload();
        sub_22BE1B3E4();
      }

      else
      {
        v71[0] = 0;
        sub_22BF69C58();
        sub_22BE41DB4(&type metadata for ToolboxSearchOutput.ToolDefinitionCodingKeys, v71);
        v36 = sub_22C273E64();
        v39 = v38;
        v66 = v36;
        sub_22BF40F04();
        sub_22C273E44();
        sub_22C273E94();
        v57 = v56;
        swift_unknownObjectRelease();
        v58 = sub_22BE25034();
        v59(v58);
        v60 = sub_22BE1AB74();
        v61(v60);
        *v3 = v66;
        *(v3 + 8) = v39;
        *(v3 + 16) = v70;
        *(v3 + 20) = v57;
        swift_storeEnumTagMultiPayload();
        sub_22BE1B3E4();
      }

      sub_22BF68168();
      v48 = a1;
      goto LABEL_15;
    }

    v14 = v65;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_22BF624B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6576697469736F70 && a2 == 0xE800000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657669746167656ELL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22BF62584(char a1)
{
  if (a1)
  {
    return 0x657669746167656ELL;
  }

  else
  {
    return 0x6576697469736F70;
  }
}

void sub_22BF625B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BE19130();
  v41 = v24;
  sub_22BE5CE4C(&qword_27D90B810, &qword_22C28F198);
  sub_22BE179D8();
  v40[1] = v26;
  v40[2] = v25;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE1B01C();
  v40[0] = sub_22BE5CE4C(&qword_27D90B818, &qword_22C28F1A0);
  sub_22BE179D8();
  v29 = v28;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  v32 = v40 - v31;
  sub_22BE5CE4C(&qword_27D90B820, &qword_22C28F1A8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  v34 = sub_22BE1B73C();
  sub_22BE26950(v34, v35);
  sub_22BF69A60();
  sub_22C274234();
  if (v41)
  {
    sub_22BF69AB4();
    sub_22BF6AC08();
    sub_22C273EE4();
    v36 = sub_22BE39058();
    v37(v36);
  }

  else
  {
    sub_22BF69B08();
    sub_22BF6AC08();
    sub_22C273EE4();
    (*(v29 + 8))(v32, v40[0]);
  }

  v38 = sub_22BF6AC14();
  v39(v38);
  sub_22BE18478();
}

void sub_22BF62810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  a22 = v24;
  a23 = v25;
  v70 = v23;
  v27 = v26;
  v69 = sub_22BE5CE4C(&qword_27D90B7F0, &qword_22C28F180);
  sub_22BE179D8();
  v67 = v28;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  v30 = sub_22BE5CE4C(&qword_27D90B7F8, &qword_22C28F188);
  sub_22BE179D8();
  v66 = v31;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  v34 = &v63 - v33;
  v35 = sub_22BE5CE4C(&qword_27D90B800, &qword_22C28F190);
  sub_22BE179D8();
  v68 = v36;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v37);
  sub_22BE1B01C();
  sub_22BE26950(v27, v27[3]);
  sub_22BF69A60();
  v38 = v70;
  sub_22C274214();
  if (v38)
  {
    goto LABEL_8;
  }

  v64 = v30;
  v65 = v34;
  v70 = v27;
  sub_22C273ED4();
  sub_22BE7C5C4();
  if (v40 == v39 >> 1)
  {
LABEL_7:
    v51 = sub_22C273B34();
    sub_22BE196B4(v51, MEMORY[0x277D841A0]);
    v53 = v52;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v53 = &type metadata for ToolBoxIndexedEmeddingContribution;
    v54 = sub_22C273DF4();
    sub_22BE1B198(v54);
    sub_22BE1BC24();
    (*(v55 + 104))(v53);
    swift_willThrow();
    swift_unknownObjectRelease();
    v56 = sub_22BE39058();
    v57(v56, v35);
    v27 = v70;
LABEL_8:
    sub_22BE26B64(v27);
LABEL_9:
    sub_22BE18478();
    return;
  }

  sub_22BE38A18();
  v63 = 0;
  if (v42 < (v43 >> 1))
  {
    v46 = *(v45 + v44);
    sub_22BE39FEC(v41, v43 >> 1, v42, v43, v44);
    sub_22BE7C5C0();
    v48 = v47;
    v50 = v49;
    swift_unknownObjectRelease();
    if (v48 == v50 >> 1)
    {
      if (v46)
      {
        LODWORD(v66) = v46;
        a13 = 1;
        sub_22BF69AB4();
        sub_22BF6ABB0(&type metadata for ToolBoxIndexedEmeddingContribution.NegativeCodingKeys, &a13);
        swift_unknownObjectRelease();
        v59 = sub_22BE2593C();
        v60(v59);
      }

      else
      {
        a12 = 0;
        sub_22BF69B08();
        v58 = v65;
        sub_22BF6ABB0(&type metadata for ToolBoxIndexedEmeddingContribution.PositiveCodingKeys, &a12);
        swift_unknownObjectRelease();
        (*(v66 + 8))(v58, v64);
      }

      v61 = sub_22BE23108();
      v62(v61);
      sub_22BE26B64(v70);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_22BF62C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF5FF7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF62C80(uint64_t a1)
{
  v2 = sub_22BF69964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF62CBC(uint64_t a1)
{
  v2 = sub_22BF69964();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF62CF8(uint64_t a1)
{
  v2 = sub_22BF698BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF62D34(uint64_t a1)
{
  v2 = sub_22BF698BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF62D70(uint64_t a1)
{
  v2 = sub_22BF69868();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF62DAC(uint64_t a1)
{
  v2 = sub_22BF69868();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF62DE8(uint64_t a1)
{
  v2 = sub_22BF699B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF62E24(uint64_t a1)
{
  v2 = sub_22BF699B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF62E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF60FA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF62EC0(uint64_t a1)
{
  v2 = sub_22BF69C04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF62EFC(uint64_t a1)
{
  v2 = sub_22BF69C04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF62F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF61110(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF62F68(uint64_t a1)
{
  v2 = sub_22BF69BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF62FA4(uint64_t a1)
{
  v2 = sub_22BF69BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF62FE0(uint64_t a1)
{
  v2 = sub_22BF69B5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF6301C(uint64_t a1)
{
  v2 = sub_22BF69B5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF63060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF612EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF63088(uint64_t a1)
{
  v2 = sub_22BF69C58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF630C4(uint64_t a1)
{
  v2 = sub_22BF69C58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF63138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF624B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF63160(uint64_t a1)
{
  v2 = sub_22BF69A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF6319C(uint64_t a1)
{
  v2 = sub_22BF69A60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF631D8(uint64_t a1)
{
  v2 = sub_22BF69AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF63214(uint64_t a1)
{
  v2 = sub_22BF69AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF63250(uint64_t a1)
{
  v2 = sub_22BF69B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF6328C(uint64_t a1)
{
  v2 = sub_22BF69B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF63324(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61626F6C67 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22BF633E4(char a1)
{
  if (a1)
  {
    return 0x6C61636F6CLL;
  }

  else
  {
    return 0x6C61626F6C67;
  }
}

uint64_t sub_22BF6341C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF63324(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF63444(uint64_t a1)
{
  v2 = sub_22BF66D0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF63480(uint64_t a1)
{
  v2 = sub_22BF66D0C();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolBoxAllowList.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v11;
  v14 = v13;
  sub_22BE5CE4C(&qword_27D90B668, &qword_22C28E6C0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE234F4();
  v16 = sub_22BE1A6BC();
  sub_22BE26950(v16, v17);
  v18 = sub_22BF66D0C();
  sub_22BE33A2C(&type metadata for ToolBoxAllowList.CodingKeys, v19, v18);
  if (v10)
  {
    sub_22BE26B64(v12);
  }

  else
  {
    sub_22BE5CE4C(&qword_27D90B670, &qword_22C28E6C8);
    sub_22BF6AA28(&qword_28106DB78, MEMORY[0x277D83808]);
    sub_22BE376D8();
    sub_22BE376D8();
    v20 = sub_22BE18240();
    v21(v20);
    *v14 = a10;
    v14[1] = a10;

    sub_22BE26B64(v12);
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t sub_22BF6365C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE900000000000073;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7364496C6F6F74 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22BF6372C(char a1)
{
  if (a1)
  {
    return 0x7364496C6F6F74;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_22BF63788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF6365C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF637B0(uint64_t a1)
{
  v2 = sub_22BF66D60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF637EC(uint64_t a1)
{
  v2 = sub_22BF66D60();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolDenyList.encode(to:)()
{
  sub_22BE19130();
  sub_22BE5CE4C(&qword_27D90B678, &qword_22C28E6D0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v0);
  sub_22BE1AB80();
  v1 = sub_22BE1AEE4();
  sub_22BE26950(v1, v2);
  v3 = sub_22BF66D60();

  sub_22BE23550();
  sub_22C274234();
  sub_22BE5CE4C(&qword_27D90B670, &qword_22C28E6C8);
  sub_22BF66DB4(&qword_27D90B680, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
  sub_22BE29390();

  if (!v3)
  {
    sub_22BE5CE4C(&qword_27D90B688, &qword_22C28E6D8);
    sub_22BF66E74(&qword_27D90B690, sub_22BF66E20, MEMORY[0x277D83B50]);
    sub_22BE29390();
  }

  v4 = sub_22BE1AB74();
  v5(v4);
  sub_22BE35D48();
  sub_22BE18478();
}

void ToolDenyList.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v11;
  v14 = v13;
  sub_22BE5CE4C(&qword_27D90B6A0, &qword_22C28E6E0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE234F4();
  v16 = sub_22BE1A6BC();
  sub_22BE26950(v16, v17);
  v18 = sub_22BF66D60();
  sub_22BE33A2C(&type metadata for ToolDenyList.CodingKeys, v19, v18);
  if (v10)
  {
    sub_22BE26B64(v12);
  }

  else
  {
    sub_22BE5CE4C(&qword_27D90B670, &qword_22C28E6C8);
    v20 = sub_22BF6AA28(&qword_28106DB78, MEMORY[0x277D83808]);
    sub_22BE204D4(v20);
    sub_22BE5CE4C(&qword_27D90B688, &qword_22C28E6D8);
    v21 = sub_22BF66E74(&qword_28106DB88, sub_22BF66EEC, MEMORY[0x277D83B70]);
    sub_22BE204D4(v21);
    v22 = sub_22BE18240();
    v23(v22);
    *v14 = a10;
    v14[1] = a10;

    sub_22BE26B64(v12);
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t sub_22BF63BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_22C274014(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {
      sub_22BE3554C();

      return sub_22C274014();
    }
  }

  return result;
}

uint64_t sub_22BF63C5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22BF63D20(char a1)
{
  if (a1)
  {
    return 0x6449656C646E7562;
  }

  else
  {
    return 0x64496C6F6F74;
  }
}

void sub_22BF63D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  sub_22BE5CE4C(&qword_27D90B6B8, &qword_22C28EB68);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE1B01C();
  v25 = sub_22BE261AC();
  sub_22BE26950(v25, v26);
  sub_22BF67478();
  sub_22C274234();
  sub_22BE180C8();
  sub_22C273F54();
  if (!v23)
  {
    sub_22C273F54();
  }

  v27 = sub_22BE291B0();
  v28(v27);
  sub_22BE18478();
}

uint64_t sub_22BF63E94(uint64_t a1)
{
  sub_22C272F44();
  sub_22BE22C8C();

  return sub_22C272F44();
}

uint64_t sub_22BF63EE0()
{
  sub_22C274154();
  sub_22C272F44();
  sub_22BE22C8C();
  sub_22C272F44();
  return sub_22C2741A4();
}

void sub_22BF63F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  v25 = v24;
  sub_22BE5CE4C(&qword_27D90B6C0, &unk_22C28EB70);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1B01C();
  v27 = sub_22BE1B62C();
  sub_22BE26950(v27, v28);
  sub_22BF67478();
  sub_22C274214();
  if (!v23)
  {
    sub_22C273E64();
    sub_22C273E64();
    v29 = sub_22BE17B24();
    v30(v29);
  }

  sub_22BE26B64(v25);
  sub_22BE196A8();
  sub_22BE19650();
  sub_22BE18478();
}

uint64_t sub_22BF64118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BF63C5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BF64140(uint64_t a1)
{
  v2 = sub_22BF67478();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BF6417C(uint64_t a1)
{
  v2 = sub_22BF67478();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BF64220(uint64_t a1)
{
  sub_22C274154();
  sub_22C272F44();
  sub_22C272F44();
  return sub_22C2741A4();
}

double sub_22BF642A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22BE5CE4C(&qword_27D90B730, &qword_22C28ECF8);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  (*(v8 + 32))(v13 + v12, v11, v7);

  sub_22C270284();

  return result;
}

uint64_t sub_22BF64404(int *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a3;
  v6 = (a1 + *a1);
  v4 = swift_task_alloc();
  *(v3 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_22BF644F0;

  return v6();
}

uint64_t sub_22BF644F0()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BF645E8()
{
  sub_22BE183F0();
  sub_22BE5CE4C(&qword_27D90B730, &qword_22C28ECF8);
  sub_22C2735F4();
  sub_22BE17A94();

  return v0();
}

uint64_t sub_22BF64658()
{
  sub_22BE183F0();
  *(v0 + 16) = *(v0 + 40);
  sub_22BE5CE4C(&qword_27D90B730, &qword_22C28ECF8);
  sub_22C2735E4();
  sub_22BE17A94();

  return v1();
}

id sub_22BF646D8(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22C272E44();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_22C26DE84();

    swift_willThrow();
  }

  return v3;
}

id sub_22BF647C0(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  sub_22BE45D84(0, &qword_28106DAE8, 0x277CCABB0);
  v4 = sub_22C273484();

  v9[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_22C26DE84();

    swift_willThrow();
  }

  return v5;
}

void sub_22BF648BC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_22C273FC4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ToolBoxToolSearchResult(0);
        v6 = sub_22C273534();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ToolBoxToolSearchResult(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22BF64C3C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22BF649EC(0, v2, 1, a1);
  }
}

void sub_22BF649EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ToolBoxToolSearchResult(0);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v28 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v33 = v16;
    v27 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v31 = v18;
      v32 = a3;
      v29 = v21;
      v30 = v20;
      do
      {
        sub_22BF6805C();
        sub_22BF6805C();
        v22 = *(v8 + 20);
        v23 = *&v15[v22];
        v24 = *&v11[v22];
        sub_22BF680B4();
        sub_22BF680B4();
        if (v24 >= v23)
        {
          break;
        }

        if (!v33)
        {
          __break(1u);
          return;
        }

        sub_22BF68168();
        swift_arrayInitWithTakeFrontToBack();
        sub_22BF68168();
        v18 += v19;
        v21 += v19;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v32 + 1;
      v18 = v31 + v27;
      v20 = v30 - 1;
      v21 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

void sub_22BF64C3C(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v6 = v4;
  v115 = a1;
  v9 = type metadata accessor for ToolBoxToolSearchResult(0);
  v122 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v118 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v126 = &v111 - v12;
  MEMORY[0x28223BE20](v13);
  v127 = &v111 - v14;
  MEMORY[0x28223BE20](v15);
  v21 = &v111 - v20;
  v123 = a3;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_100:
    v5 = *v115;
    if (!*v115)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v106 = (v24 + 16);
      v107 = *(v24 + 16);
      for (i = v24; v107 >= 2; v24 = i)
      {
        if (!*v123)
        {
          goto LABEL_138;
        }

        v108 = (v24 + 16 * v107);
        v24 = *v108;
        v109 = &v106[2 * v107];
        v110 = *(v109 + 1);
        sub_22BF65594(&(*v123)[*(v122 + 72) * *v108], &(*v123)[*(v122 + 72) * *v109], &(*v123)[*(v122 + 72) * v110], v5);
        if (v6)
        {
          break;
        }

        if (v110 < v24)
        {
          goto LABEL_126;
        }

        if (v107 - 2 >= *v106)
        {
          goto LABEL_127;
        }

        *v108 = v24;
        v108[1] = v110;
        v17 = *v106 - v107;
        if (*v106 < v107)
        {
          goto LABEL_128;
        }

        v107 = *v106 - 1;
        sub_22C115E84(v109 + 16, v17, v109);
        *v106 = v107;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v24 = sub_22C115CA4(v24, v17, v18, v19);
    goto LABEL_102;
  }

  v113 = a4;
  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  v128 = v16;
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    if (v23 + 1 < v22)
    {
      v27 = *v123;
      v28 = *(v122 + 72);
      v125 = v23 + 1;
      v29 = &v27[v28 * v26];
      v120 = v27;
      v121 = v22;
      v30 = v16;
      sub_22BF6805C();
      v5 = v25;
      v31 = v127;
      sub_22BF6805C();
      v32 = *(v30 + 20);
      v33 = *&v21[v32];
      v34 = *&v31[v32];
      sub_22BF680B4();
      sub_22BF680B4();
      v35 = v121;
      v114 = v5;
      v36 = v5 + 2;
      i = v28;
      v37 = &v120[v28 * (v5 + 2)];
      while (1)
      {
        v38 = v36;
        if (++v125 >= v35)
        {
          break;
        }

        sub_22BF6805C();
        v5 = v127;
        sub_22BF6805C();
        v39 = *(v128 + 20);
        v40 = *&v21[v39];
        v41 = *(v5 + v39);
        sub_22BF680B4();
        sub_22BF680B4();
        v35 = v121;
        v37 += i;
        v29 += i;
        v36 = v38 + 1;
        if (v34 < v33 == v41 >= v40)
        {
          goto LABEL_9;
        }
      }

      v125 = v35;
LABEL_9:
      if (v34 >= v33)
      {
        v26 = v125;
        v25 = v114;
        v16 = v128;
      }

      else
      {
        v26 = v125;
        if (v125 < v114)
        {
          goto LABEL_132;
        }

        v16 = v128;
        if (v114 >= v125)
        {
          v25 = v114;
        }

        else
        {
          v5 = v24;
          v112 = v6;
          if (v35 >= v38)
          {
            v42 = v38;
          }

          else
          {
            v42 = v35;
          }

          v43 = i * (v42 - 1);
          v44 = i * v42;
          v45 = v114 * i;
          v46 = v114;
          do
          {
            if (v46 != --v26)
            {
              v47 = *v123;
              if (!*v123)
              {
                goto LABEL_139;
              }

              sub_22BF68168();
              v48 = v45 < v43 || &v47[v45] >= &v47[v44];
              if (v48)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v45 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22BF68168();
            }

            ++v46;
            v43 -= i;
            v44 -= i;
            v45 += i;
          }

          while (v46 < v26);
          v6 = v112;
          v24 = v5;
          v16 = v128;
          v26 = v125;
          v25 = v114;
        }
      }
    }

    v49 = v123[1];
    if (v26 < v49)
    {
      if (__OFSUB__(v26, v25))
      {
        goto LABEL_131;
      }

      if (v26 - v25 < v113)
      {
        break;
      }
    }

LABEL_47:
    if (v26 < v25)
    {
      goto LABEL_130;
    }

    v62 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BE6614C();
      v24 = v104;
    }

    v63 = *(v24 + 16);
    v64 = v63 + 1;
    if (v63 >= *(v24 + 24) >> 1)
    {
      sub_22BE6614C();
      v24 = v105;
    }

    v16 = v62;
    *(v24 + 16) = v64;
    v65 = v24 + 32;
    v66 = (v24 + 32 + 16 * v63);
    *v66 = v25;
    v66[1] = v26;
    v121 = *v115;
    if (!v121)
    {
      goto LABEL_140;
    }

    v125 = v26;
    if (v63)
    {
      i = v24;
      while (1)
      {
        v67 = v64 - 1;
        v68 = (v65 + 16 * (v64 - 1));
        v69 = (v24 + 16 * v64);
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v70 = *(v24 + 32);
          v71 = *(v24 + 40);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_68:
          if (v73)
          {
            goto LABEL_117;
          }

          v85 = *v69;
          v84 = v69[1];
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_120;
          }

          v89 = v68[1];
          v90 = v89 - *v68;
          if (__OFSUB__(v89, *v68))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v87, v90))
          {
            goto LABEL_125;
          }

          if (v87 + v90 >= v72)
          {
            if (v72 < v90)
            {
              v67 = v64 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v64 < 2)
        {
          goto LABEL_119;
        }

        v92 = *v69;
        v91 = v69[1];
        v80 = __OFSUB__(v91, v92);
        v87 = v91 - v92;
        v88 = v80;
LABEL_83:
        if (v88)
        {
          goto LABEL_122;
        }

        v94 = *v68;
        v93 = v68[1];
        v80 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v80)
        {
          goto LABEL_124;
        }

        if (v95 < v87)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v67 - 1 >= v64)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v123)
        {
          goto LABEL_137;
        }

        v5 = v21;
        v99 = (v65 + 16 * (v67 - 1));
        v100 = *v99;
        v101 = v67;
        v102 = v65 + 16 * v67;
        v24 = *(v102 + 8);
        sub_22BF65594(&(*v123)[*(v122 + 72) * *v99], &(*v123)[*(v122 + 72) * *v102], &(*v123)[*(v122 + 72) * v24], v121);
        if (v6)
        {
          goto LABEL_110;
        }

        if (v24 < v100)
        {
          goto LABEL_112;
        }

        v6 = *(i + 16);
        if (v101 > v6)
        {
          goto LABEL_113;
        }

        *v99 = v100;
        v99[1] = v24;
        if (v101 >= v6)
        {
          goto LABEL_114;
        }

        v64 = v6 - 1;
        sub_22C115E84((v102 + 16), v6 - 1 - v101, v102);
        v24 = i;
        *(i + 16) = v6 - 1;
        v103 = v6 > 2;
        v6 = 0;
        v16 = v128;
        v21 = v5;
        if (!v103)
        {
          goto LABEL_97;
        }
      }

      v74 = v65 + 16 * v64;
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_115;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_116;
      }

      v81 = v69[1];
      v82 = v81 - *v69;
      if (__OFSUB__(v81, *v69))
      {
        goto LABEL_118;
      }

      v80 = __OFADD__(v72, v82);
      v83 = v72 + v82;
      if (v80)
      {
        goto LABEL_121;
      }

      if (v83 >= v77)
      {
        v97 = *v68;
        v96 = v68[1];
        v80 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v80)
        {
          goto LABEL_129;
        }

        if (v72 < v98)
        {
          v67 = v64 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v22 = v123[1];
    v23 = v125;
    if (v125 >= v22)
    {
      goto LABEL_100;
    }
  }

  v50 = (v25 + v113);
  if (__OFADD__(v25, v113))
  {
    goto LABEL_133;
  }

  if (v50 >= v49)
  {
    v50 = v123[1];
  }

  if (v50 < v25)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v26 == v50)
  {
    goto LABEL_47;
  }

  i = v24;
  v112 = v6;
  v51 = *v123;
  v52 = *(v122 + 72);
  v53 = &(*v123)[v52 * (v26 - 1)];
  v54 = -v52;
  v114 = v25;
  v55 = (v25 - v26);
  v116 = v52;
  v117 = v50;
  v56 = &v51[v26 * v52];
LABEL_40:
  v125 = v26;
  v119 = v56;
  v120 = v55;
  v121 = v53;
  v57 = v53;
  v5 = v128;
  while (1)
  {
    sub_22BF6805C();
    v58 = v127;
    sub_22BF6805C();
    v59 = *(v5 + 20);
    v60 = *&v21[v59];
    v61 = *&v58[v59];
    sub_22BF680B4();
    sub_22BF680B4();
    if (v61 >= v60)
    {
LABEL_45:
      v26 = v125 + 1;
      v53 = v121 + v116;
      v55 = v120 - 1;
      v56 = &v119[v116];
      if ((v125 + 1) == v117)
      {
        v26 = v117;
        v6 = v112;
        v24 = i;
        v16 = v128;
        v25 = v114;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v51)
    {
      break;
    }

    sub_22BF68168();
    v5 = v128;
    swift_arrayInitWithTakeFrontToBack();
    sub_22BF68168();
    v57 += v54;
    v56 += v54;
    v48 = __CFADD__(v55++, 1);
    if (v48)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_22BF65594(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = type metadata accessor for ToolBoxToolSearchResult(0);
  MEMORY[0x28223BE20](v55);
  v54 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v49 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v19 = v15 / v14;
  v58 = a1;
  v57 = a4;
  v20 = v17 / v14;
  v49[1] = v4;
  if (v15 / v14 >= v17 / v14)
  {
    sub_22BE68268(a2, v17 / v14, a4);
    v29 = a4 + v20 * v14;
    v30 = -v14;
    v31 = v29;
    v32 = a3;
    v51 = a1;
    v52 = -v14;
LABEL_37:
    v53 = a2 + v30;
    v33 = v32;
    v49[0] = v31;
    while (1)
    {
      if (v29 <= a4)
      {
        v58 = a2;
        v56 = v31;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v50 = v31;
      v34 = a2;
      v35 = a4;
      v36 = v33 + v52;
      v37 = v29 + v52;
      v38 = v29;
      v39 = v33;
      sub_22BF6805C();
      v40 = v12;
      v41 = v54;
      sub_22BF6805C();
      v42 = *(v55 + 20);
      v43 = *&v40[v42];
      v44 = *&v41[v42];
      v12 = v40;
      sub_22BF680B4();
      sub_22BF680B4();
      if (v44 < v43)
      {
        v46 = v39 < v34 || v36 >= v34;
        v32 = v36;
        a4 = v35;
        if (v46)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v50;
          a1 = v51;
          v30 = v52;
          v29 = v38;
        }

        else
        {
          v31 = v50;
          v16 = v39 == v34;
          v30 = v52;
          v47 = v53;
          a2 = v53;
          v29 = v38;
          a1 = v51;
          if (!v16)
          {
            v48 = v50;
            swift_arrayInitWithTakeBackToFront();
            v29 = v38;
            a2 = v47;
            v31 = v48;
          }
        }

        goto LABEL_37;
      }

      v45 = v39 < v38 || v36 >= v38;
      a4 = v35;
      if (v45)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 = v36;
        v29 = v37;
        v31 = v37;
        a2 = v34;
        a1 = v51;
      }

      else
      {
        v31 = v37;
        v16 = v38 == v39;
        v33 = v36;
        v29 = v37;
        a2 = v34;
        a1 = v51;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v33 = v36;
          v29 = v37;
          v31 = v37;
        }
      }
    }

    v58 = a2;
    v56 = v49[0];
  }

  else
  {
    sub_22BE68268(a1, v15 / v14, a4);
    v21 = a4 + v19 * v14;
    v56 = v21;
    while (a4 < v21 && a2 < a3)
    {
      sub_22BF6805C();
      v23 = v54;
      sub_22BF6805C();
      v24 = *(v55 + 20);
      v25 = *&v12[v24];
      v26 = *&v23[v24];
      sub_22BF680B4();
      sub_22BF680B4();
      if (v26 >= v25)
      {
        if (a1 < a4 || a1 >= a4 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v57 = a4 + v14;
        a4 += v14;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v14;
      }

      a1 += v14;
      v58 = a1;
    }
  }

LABEL_59:
  sub_22C115CE4(&v58, &v57, &v56);
}

void sub_22BF65A28(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v50 = a5;
  v43 = sub_22C272224();
  v9 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v39 - v12;
  v14 = sub_22BE5CE4C(&qword_27D90B708, &qword_22C28EC38);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (v39 - v15);
  sub_22BF68520(a1, a2, a3, v48);
  v44 = v48[0];
  v45 = v48[1];
  v46 = v48[2];
  v47 = v49;
  v41 = v9;
  v42 = (v9 + 32);
  v39[4] = v9 + 8;
  v39[5] = v9 + 16;
  v39[3] = v9 + 40;
  v39[1] = a1;

  v39[0] = a3;

  while (1)
  {
    sub_22BF6855C(v16);
    v17 = sub_22BE5CE4C(&qword_27D90B700, &qword_22C28EC30);
    if (sub_22BE1AEA8(v16, 1, v17) == 1)
    {
      sub_22BE4926C(v44);

      return;
    }

    v19 = *v16;
    v18 = v16[1];
    v20 = *v42;
    v21 = v13;
    (*v42)(v13, v16 + *(v17 + 48), v43);
    v22 = *v50;
    v24 = sub_22BE3B674(v19, v18);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((a4 & 1) == 0)
      {
        sub_22BE5CE4C(&qword_27D90B6E8, &qword_22C28EC18);
        sub_22C273C54();
      }
    }

    else
    {
      sub_22C24FDD4(v27, a4 & 1);
      v29 = sub_22BE3B674(v19, v18);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_16;
      }

      v24 = v29;
    }

    v31 = *v50;
    if (v28)
    {
      v33 = v40;
      v32 = v41;
      v13 = v21;
      v34 = v43;
      (*(v41 + 16))(v40, v21, v43);
      (*(v32 + 8))(v21, v34);

      (*(v32 + 40))(v31[7] + *(v32 + 72) * v24, v33, v34);
      a4 = 1;
    }

    else
    {
      v31[(v24 >> 6) + 8] |= 1 << v24;
      v35 = (v31[6] + 16 * v24);
      *v35 = v19;
      v35[1] = v18;
      v13 = v21;
      v20((v31[7] + *(v41 + 72) * v24), v21, v43);
      v36 = v31[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_15;
      }

      v31[2] = v38;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  sub_22C2740B4();
  __break(1u);
}

void sub_22BF65E20(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v66 = a5;
  v48 = a4;
  v8 = sub_22C26E4D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v54 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = v47 - v12;
  v13 = sub_22C26E494();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22BE5CE4C(&qword_27D90B760, &qword_22C28ED38);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v47 - v18;
  sub_22BF68520(a1, a2, a3, v64);
  v60 = v64[0];
  v61 = v64[1];
  v62 = v64[2];
  v57 = (v9 + 32);
  v58 = (v14 + 32);
  v63 = v65;
  v52 = v9 + 16;
  v51 = v9 + 8;
  v53 = v14;
  v50 = (v14 + 8);
  v20 = v16;
  v21 = v48;
  v56 = v9;
  v49 = v9 + 40;
  v47[2] = a1;

  v47[1] = a3;

  for (i = v19; ; v19 = i)
  {
    sub_22BF688C8(v19);
    v22 = sub_22BE5CE4C(&qword_27D90B750, &qword_22C28ED28);
    if (sub_22BE1AEA8(v19, 1, v22) == 1)
    {
      sub_22BE4926C(v60);

      return;
    }

    v23 = *(v22 + 48);
    v24 = *v58;
    (*v58)(v20, v19, v13);
    v25 = *v57;
    v26 = &v19[v23];
    v27 = v8;
    (*v57)(v59, v26, v8);
    v28 = *v66;
    sub_22BE609E0();
    v31 = v30;
    v32 = v28[2];
    v33 = (v29 & 1) == 0;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v34 = v29;
    if (v28[3] >= v32 + v33)
    {
      if ((v21 & 1) == 0)
      {
        sub_22BE5CE4C(&qword_27D907230, &qword_22C28ED40);
        sub_22C273C54();
      }
    }

    else
    {
      sub_22C24FDFC();
      sub_22BE609E0();
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_17;
      }

      v31 = v35;
    }

    v37 = *v66;
    if (v34)
    {
      v38 = v56;
      v39 = v54;
      v40 = v20;
      v41 = v13;
      v42 = v59;
      v8 = v27;
      (*(v56 + 16))(v54, v59, v27);
      v43 = v42;
      v13 = v41;
      v20 = v40;
      (*(v38 + 8))(v43, v27);
      (*v50)(v40, v13);
      (*(v38 + 40))(v37[7] + *(v38 + 72) * v31, v39, v27);
    }

    else
    {
      v37[(v31 >> 6) + 8] |= 1 << v31;
      v24((v37[6] + *(v53 + 72) * v31), v20, v13);
      v8 = v27;
      v25((v37[7] + *(v56 + 72) * v31), v59, v27);
      v44 = v37[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_16;
      }

      v37[2] = v46;
    }

    v21 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  sub_22C2740B4();
  __break(1u);
}

unint64_t *sub_22BF6633C()
{
  sub_22BE18378();
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 32);
  v2 = v1 & 0x3F;
  v3 = ((1 << v1) + 63) >> 6;

  if (v2 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    sub_22C1A7AFC(0, v3, v18 - ((8 * v3 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_22BF6AC40();
    sub_22BF66568(v5, v6, v7, v8);
    if (!v3)
    {
      v10 = v9;

      return v10;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    swift_slowAlloc();

    sub_22BF6AC40();
    v10 = sub_22BF664D8(v12, v13, v14, v15);

    if (!v3)
    {

      v16 = sub_22BE3D494();
      MEMORY[0x2318AD180](v16);
      return v10;
    }
  }

  v17 = sub_22BE3D494();
  result = MEMORY[0x2318AD180](v17);
  __break(1u);
  return result;
}

unint64_t *sub_22BF664D8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_22BF66568(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_22BF66568(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      sub_22C274154();

      sub_22C272F44();
      v40 = sub_22C2741A4();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = sub_22C274014();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(a1 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        sub_22BF6690C(a1, a2, v53, v5);
        return;
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_22C274154();

      sub_22C272F44();
      v18 = sub_22C2741A4();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_22C274014();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      a1[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t sub_22BF6690C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_22BE5CE4C(&qword_27D907898, &qword_22C275B88);
  result = sub_22C273A44();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_22C274154();

    sub_22C272F44();
    result = sub_22C2741A4();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22BF66B28(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_22BE5CE4C(&qword_27D90B738, &qword_22C28ED10);
  result = sub_22C273A44();
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
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_22C274144();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_22BF66D0C()
{
  result = qword_28107B648[0];
  if (!qword_28107B648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107B648);
  }

  return result;
}

unint64_t sub_22BF66D60()
{
  result = qword_28107CBF0[0];
  if (!qword_28107CBF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107CBF0);
  }

  return result;
}

uint64_t sub_22BF66DB4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(&qword_27D90B670, &qword_22C28E6C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BF66E20()
{
  result = qword_27D90B698;
  if (!qword_27D90B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B698);
  }

  return result;
}

uint64_t sub_22BF66E74(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(&qword_27D90B688, &qword_22C28E6D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BF66EEC()
{
  result = qword_28106E360;
  if (!qword_28106E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E360);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolBoxUtility(_BYTE *result, int a2, int a3)
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

uint64_t sub_22BF67014(uint64_t a1)
{
  result = sub_22C26DF64();
  if (v2 <= 0x3F)
  {
    result = _s19SentinelFileManagerVMa(319);
    if (v3 <= 0x3F)
    {
      result = sub_22C272024();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_22BF67154(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22BF67194(uint64_t result, int a2, int a3)
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

unint64_t sub_22BF67214()
{
  result = qword_27D90B6A8;
  if (!qword_27D90B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B6A8);
  }

  return result;
}

unint64_t sub_22BF6726C()
{
  result = qword_27D90B6B0;
  if (!qword_27D90B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B6B0);
  }

  return result;
}

unint64_t sub_22BF672C4()
{
  result = qword_28106E368;
  if (!qword_28106E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E368);
  }

  return result;
}

unint64_t sub_22BF6731C()
{
  result = qword_28107CBE0;
  if (!qword_28107CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107CBE0);
  }

  return result;
}

unint64_t sub_22BF67374()
{
  result = qword_28107CBE8;
  if (!qword_28107CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107CBE8);
  }

  return result;
}

unint64_t sub_22BF673CC()
{
  result = qword_28107B638;
  if (!qword_28107B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107B638);
  }

  return result;
}

unint64_t sub_22BF67424()
{
  result = qword_28107B640;
  if (!qword_28107B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107B640);
  }

  return result;
}

unint64_t sub_22BF67478()
{
  result = qword_28106E380[0];
  if (!qword_28106E380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28106E380);
  }

  return result;
}

void sub_22BF674CC(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        sub_22BF679B0(*(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_22BF675C4(unint64_t a1, uint64_t a2)
{
  v3 = a2;
  v49 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v38 = 0;
    v4 = 0;
    v6 = a1 + 56;
    v5 = *(a1 + 56);
    v7 = -1;
    v8 = -1 << *(a1 + 32);
    v42 = ~v8;
    v43 = a1 + 56;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v5;
    v11 = (63 - v8) >> 6;
    v12 = a2 + 56;
    v13 = 1;
    v44 = a1;
    if ((v9 & v5) != 0)
    {
LABEL_6:
      v14 = v4;
LABEL_11:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v2 = *(*(a1 + 48) + ((v14 << 9) | (8 * v16)));
      v17 = sub_22C274144();
      v18 = -1 << *(v3 + 32);
      v19 = ~v18;
      while (1)
      {
        v4 = v17 & v19;
        v6 = (v17 & v19) >> 6;
        v7 = 1 << (v17 & v19);
        if ((v7 & *(v12 + 8 * v6)) == 0)
        {
          v4 = v14;
          v6 = v43;
          a1 = v44;
          v7 = -1;
          if (v10)
          {
            goto LABEL_6;
          }

          goto LABEL_7;
        }

        if (*(*(v3 + 48) + 8 * v4) == v2)
        {
          break;
        }

        v17 = v4 + 1;
      }

      v46 = v42;
      v47 = v14;
      v48 = v10;
      v45[0] = v44;
      v45[1] = v43;
      v13 = (63 - v18) >> 6;
      v2 = 8 * v13;

      if (v13 > 0x80)
      {
        goto LABEL_40;
      }

      while (1)
      {
        v39 = v13;
        v40 = &v38;
        MEMORY[0x28223BE20](v20);
        v13 = &v38 - v21;
        memcpy(&v38 - v21, (v3 + 56), v2);
        v22 = *(v3 + 16);
        *(v13 + 8 * v6) &= ~v7;
        v23 = v22 - 1;
        v4 = 1;
        v7 = v43;
        v6 = v44;
LABEL_19:
        v41 = v23;
LABEL_20:
        while (v10)
        {
LABEL_25:
          v25 = __clz(__rbit64(v10));
          v10 &= v10 - 1;
          v2 = *(*(v6 + 48) + ((v14 << 9) | (8 * v25)));
          v26 = sub_22C274144();
          v27 = ~(-1 << *(v3 + 32));
          while (1)
          {
            v28 = v26 & v27;
            v29 = (v26 & v27) >> 6;
            v30 = 1 << (v26 & v27);
            if ((v30 & *(v12 + 8 * v29)) == 0)
            {
              break;
            }

            v26 = v28 + 1;
            if (*(*(v3 + 48) + 8 * v28) == v2)
            {
              v31 = *(v13 + 8 * v29);
              *(v13 + 8 * v29) = v31 & ~v30;
              if ((v31 & v30) == 0)
              {
                goto LABEL_20;
              }

              v23 = v41 - 1;
              if (__OFSUB__(v41, 1))
              {
                __break(1u);
              }

              if (v41 == 1)
              {

                v3 = MEMORY[0x277D84FA0];
                goto LABEL_33;
              }

              goto LABEL_19;
            }
          }
        }

        while (1)
        {
          v24 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v24 >= v11)
          {
            v3 = sub_22BF66B28(v13, v39, v41, v3);
            goto LABEL_33;
          }

          v10 = *(v7 + 8 * v24);
          ++v14;
          if (v10)
          {
            v14 = v24;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v34 = swift_slowAlloc();
      v35 = v38;
      v36 = sub_22BF67C18(v34, v13, (v3 + 56), v13, v3, v4, v45);
      if (v35)
      {

        result = MEMORY[0x2318AD180](v34, -1, -1);
        __break(1u);
        return result;
      }

      v37 = v36;

      MEMORY[0x2318AD180](v34, -1, -1);
      v6 = v45[0];
      v42 = v46;
      v3 = v37;
LABEL_33:
      v32 = v6;
    }

    else
    {
LABEL_7:
      v15 = v4;
      while (1)
      {
        v14 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_39;
        }

        if (v14 >= v11)
        {
          break;
        }

        v10 = *(v6 + 8 * v14);
        ++v15;
        if (v10)
        {
          goto LABEL_11;
        }
      }
    }

    sub_22BE4926C(v32);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v3;
}

uint64_t sub_22BF679B0(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_22C274144();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((1 << (v5 & v6)) & *(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (*(*(v4 + 48) + 8 * v7) == a1)
    {
      break;
    }

    v5 = v7 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  v12 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22C1ABE5C();
    v10 = v12;
  }

  v8 = *(*(v10 + 48) + 8 * v7);
  sub_22BF67CA0(v7);
  *v2 = v12;
  return v8;
}

unint64_t sub_22BF67A9C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
LABEL_2:
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_7:
    v15 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    result = sub_22C274144();
    v16 = ~(-1 << *(a3 + 32));
    while (1)
    {
      v17 = result & v16;
      v18 = (result & v16) >> 6;
      v19 = 1 << (result & v16);
      if ((v19 & *(v11 + 8 * v18)) == 0)
      {
        break;
      }

      result = v17 + 1;
      if (*(*(a3 + 48) + 8 * v17) == v15)
      {
        v20 = v8[v18];
        v8[v18] = v20 & ~v19;
        if ((v20 & v19) == 0)
        {
          goto LABEL_2;
        }

        if (__OFSUB__(v10--, 1))
        {
          goto LABEL_16;
        }

        if (v10)
        {
          goto LABEL_2;
        }

        return MEMORY[0x277D84FA0];
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v12;
      a5[4] = 0;

      return sub_22BF66B28(v8, a2, v10, a3);
    }

    v13 = *(a5[1] + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_22BF67C18(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_22BF67A9C(a1, a2, a5, a6, a7);

  return v12;
}

void sub_22BF67CA0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22C2739D4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_22C274144() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }
}

uint64_t sub_22BF67E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22C272224();
  (*(*(v7 - 8) + 16))(a1, a4, v7);

  return a2;
}

uint64_t sub_22BF67E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22C26E494();
  (*(*(v8 - 8) + 16))(a1, a3, v8);
  v9 = sub_22C26E4D4();
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a4, v9);
}

uint64_t sub_22BF67F50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(sub_22BE5CE4C(&qword_27D90B6F8, &qword_22C28EC28) + 48);
  v5 = sub_22BE5CE4C(&qword_27D90B700, &qword_22C28EC30);
  result = sub_22BF67E18(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_22BF67FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_22BE5CE4C(&qword_27D90B758, &qword_22C28ED30) + 48);
  v5 = a2 + *(sub_22BE5CE4C(&qword_27D90B750, &qword_22C28ED28) + 48);

  return sub_22BF67E98(a2, v5, a1, a1 + v4);
}

uint64_t sub_22BF6805C()
{
  sub_22BE18378();
  v1(0);
  sub_22BE18000();
  v2 = sub_22BE19454();
  v3(v2);
  return v0;
}

uint64_t sub_22BF680B4()
{
  v1 = sub_22BE17BC4();
  v2(v1);
  sub_22BE18524();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_22BF68104()
{
  result = qword_28106DF80;
  if (!qword_28106DF80)
  {
    sub_22BE7431C(&qword_27D90B348, &qword_22C28CA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106DF80);
  }

  return result;
}

uint64_t sub_22BF68168()
{
  sub_22BE18378();
  v1(0);
  sub_22BE18000();
  v2 = sub_22BE19454();
  v3(v2);
  return v0;
}

unint64_t sub_22BF681E0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    sub_22BE22C8C();
    result = sub_22BF68278(v5, v6, v7);
    if ((result & 1) == 0)
    {
      v8 = result;
      sub_22BE22C8C();
      return v8 & 0xC | sub_22C26CCB8(v9, v10, v11) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_22BF68278(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_22C192BB0(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22BF682E8(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_22BF681E0(0xFuLL, a1, a2);
  result = sub_22BF681E0(v6, a1, a2);
  v9 = result >> 14;
  if (v7 >> 14 < result >> 14)
  {
    for (i = 0; ; ++i)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_22C2730F4();
        v7 = result;
      }

      else
      {
        v12 = v7 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v22 = a1;
          v23 = a2 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v22 + v12);
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            result = sub_22C273B44();
          }

          v13 = *(result + v12);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        v7 = ((v12 + v15) << 16) | 5;
      }

      if (v9 <= v7 >> 14)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  if (v9 < v7 >> 14)
  {
    v11 = 0;
    while (!__OFSUB__(v11--, 1))
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_22C273104();
        v7 = result;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v22 = a1;
          v23 = a2 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v22 + (v7 >> 16) - 1) & 0xC0) == 0x80)
          {
            v20 = &v22 + (v7 >> 16) - 2;
            v19 = 1;
            do
            {
              ++v19;
              v21 = *v20--;
            }

            while ((v21 & 0xC0) == 0x80);
          }

          else
          {
            v19 = 1;
          }
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            result = sub_22C273B44();
          }

          v17 = 0;
          do
          {
            v18 = *(result + (v7 >> 16) - 1 + v17--) & 0xC0;
          }

          while (v18 == 128);
          v19 = -v17;
        }

        v7 = (v7 - (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v9 >= v7 >> 14)
      {
        return v11;
      }
    }

    goto LABEL_42;
  }

  return 0;
}

uint64_t sub_22BF68520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_22BF6855C(uint64_t a1@<X8>)
{
  v38 = sub_22BE5CE4C(&qword_27D90B6F8, &qword_22C28EC28);
  MEMORY[0x28223BE20](v38);
  v4 = &v35 - v3;
  v5 = sub_22C272224();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90B710, &qword_22C28EC40);
  MEMORY[0x28223BE20](v9 - 8);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = &v35 - v12;
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v35 = v4;
  v39 = v17;
  if (v19)
  {
    v37 = a1;
    v20 = v18;
LABEL_7:
    v36 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v20 << 6);
    v22 = (*(v15 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    (*(v6 + 16))(v8, *(v15 + 56) + *(v6 + 72) * v21, v5, v13);
    v25 = v38;
    v26 = *(v38 + 48);
    *v14 = v23;
    *(v14 + 1) = v24;
    v27 = v8;
    v28 = v25;
    (*(v6 + 32))(&v14[v26], v27, v5);
    sub_22BE19DC4(v14, 0, 1, v28);

    v29 = v36;
    a1 = v37;
LABEL_8:
    *v1 = v15;
    v1[1] = v16;
    v30 = v40;
    v1[2] = v39;
    v1[3] = v18;
    v1[4] = v29;
    v31 = v1[5];
    sub_22BEBFD18();
    v32 = 1;
    if (sub_22BE1AEA8(v30, 1, v28) != 1)
    {
      v33 = v35;
      sub_22BEBFD18();
      v31(v33);
      sub_22BE233E8(v33, &qword_27D90B6F8, &qword_22C28EC28);
      v32 = 0;
    }

    v34 = sub_22BE5CE4C(&qword_27D90B700, &qword_22C28EC30);
    sub_22BE19DC4(a1, v32, 1, v34);
  }

  else
  {
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= ((v17 + 64) >> 6))
      {
        v28 = v38;
        sub_22BE19DC4(&v35 - v12, 1, 1, v38);
        v29 = 0;
        goto LABEL_8;
      }

      v19 = *(v16 + 8 * v20);
      ++v18;
      if (v19)
      {
        v37 = a1;
        v18 = v20;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_22BF688C8(uint64_t a1@<X8>)
{
  v52 = a1;
  v53 = sub_22BE5CE4C(&qword_27D90B758, &qword_22C28ED30);
  MEMORY[0x28223BE20](v53);
  v3 = &v42 - v2;
  v48 = sub_22C26E4D4();
  v4 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C26E494();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BE5CE4C(&qword_27D90B768, &qword_22C28ED48);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v49 = &v42 - v16;
  v50 = v1;
  v17 = *v1;
  v18 = v1[1];
  v19 = v1[2];
  v20 = v1[3];
  v21 = v1[4];
  v43 = v3;
  v51 = v19;
  if (v21)
  {
    v47 = v13;
    v22 = v20;
LABEL_8:
    v45 = v10;
    v46 = (v21 - 1) & v21;
    v24 = __clz(__rbit64(v21)) | (v22 << 6);
    v25 = v17;
    (*(v8 + 16))(v10, *(v17 + 48) + *(v8 + 72) * v24, v7, v15);
    v26 = v48;
    (*(v4 + 16))(v6, *(v25 + 56) + *(v4 + 72) * v24, v48);
    v27 = v53;
    v44 = *(v53 + 48);
    v28 = v49;
    v29 = v7;
    v30 = v46;
    (*(v8 + 32))(v49, v45, v29);
    v31 = v28;
    (*(v4 + 32))(&v28[v44], v6, v26);
    v23 = v27;
    v32 = 0;
    v13 = v47;
LABEL_9:
    v33 = 1;
    v34 = v23;
    sub_22BE19DC4(v31, v32, 1, v23);
    v36 = v50;
    v35 = v51;
    *v50 = v25;
    v36[1] = v18;
    v36[2] = v35;
    v36[3] = v20;
    v36[4] = v30;
    v37 = v36[5];
    sub_22BEBFD18();
    v38 = sub_22BE1AEA8(v13, 1, v34);
    v39 = v52;
    if (v38 != 1)
    {
      v40 = v43;
      sub_22BEBFD18();
      v37(v40);
      sub_22BE233E8(v40, &qword_27D90B758, &qword_22C28ED30);
      v33 = 0;
    }

    v41 = sub_22BE5CE4C(&qword_27D90B750, &qword_22C28ED28);
    sub_22BE19DC4(v39, v33, 1, v41);
  }

  else
  {
    v23 = v53;
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= ((v19 + 64) >> 6))
      {
        v30 = 0;
        v32 = 1;
        v31 = v49;
        v25 = v17;
        goto LABEL_9;
      }

      v21 = *(v18 + 8 * v22);
      ++v20;
      if (v21)
      {
        v47 = v13;
        v20 = v22;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void *sub_22BF68CE0@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_22BF45408(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_22BF68D44()
{
  result = qword_28107C818[0];
  if (!qword_28107C818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107C818);
  }

  return result;
}

uint64_t sub_22BF68DB4()
{
  sub_22BE201F0();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_22BE23AE4(v2);
  *v3 = v4;
  sub_22BE1C1CC(v3);
  sub_22BE3E808();

  return sub_22BF56DE4(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_22BF68E68()
{
  sub_22BE183FC();
  v2 = sub_22BE5CE4C(&qword_27D90B730, &qword_22C28ECF8);
  sub_22BE19448(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22BE40D78;

  return sub_22BF64404(v5, v6, v0 + v4);
}

uint64_t sub_22BF69008()
{
  sub_22BE183F0();
  v1 = swift_task_alloc();
  v2 = sub_22BE23AE4(v1);
  *v2 = v3;
  v4 = sub_22BE1C1CC(v2);

  return sub_22BF521B0(v4, v0);
}

uint64_t sub_22BF69090()
{
  sub_22BE2035C();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_22BE23AE4(v3);
  *v4 = v5;
  sub_22BE1C1CC(v4);
  sub_22BE3E808();

  return sub_22BF54168(v6, v7, v8, v9, v10, v2, v1);
}

uint64_t sub_22BF69184()
{
  sub_22BE183F0();
  v1 = swift_task_alloc();
  v2 = sub_22BE23AE4(v1);
  *v2 = v3;
  v4 = sub_22BE1C1CC(v2);

  return sub_22BF5FDC0(v4, v0);
}

uint64_t sub_22BF6920C()
{
  sub_22BE183F0();
  v1 = swift_task_alloc();
  v2 = sub_22BE23AE4(v1);
  *v2 = v3;
  v4 = sub_22BE1C1CC(v2);

  return sub_22BF53FD8(v4, v0);
}

uint64_t sub_22BF69294(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_22BF692D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_22BF69328(uint64_t a1, uint64_t a2)
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

uint64_t sub_22BF69344(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_22BF69384(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_22BF693F0(uint64_t a1)
{
  sub_22BF69490(319);
  if (v1 <= 0x3F)
  {
    sub_22BF69510(319);
    if (v2 <= 0x3F)
    {
      sub_22BF69638(319, &qword_28106DDE0, MEMORY[0x277D83A90], "toolId score ");
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_22BF69490(uint64_t a1)
{
  if (!qword_28106DDF0)
  {
    sub_22BE7431C(&qword_27D90B798, &qword_22C28EEB8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_28106DDF0);
    }
  }
}

void sub_22BF69510(uint64_t a1)
{
  if (!qword_28106DEF0)
  {
    sub_22C272CA4();
    sub_22BE7431C(&qword_27D90B798, &qword_22C28EEB8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_28106DEF0);
    }
  }
}

uint64_t sub_22BF69598(uint64_t a1)
{
  sub_22BF69638(319, &qword_28106DDE8, &type metadata for ToolBoxIndexedEmeddingContribution, "toolId contribution ");
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_22BF6968C(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_22BF69638(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_22BF6968C(uint64_t a1)
{
  if (!qword_28106DEF8)
  {
    sub_22C272CA4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28106DEF8);
    }
  }
}

unint64_t sub_22BF6970C()
{
  result = qword_27D90B7A0;
  if (!qword_27D90B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B7A0);
  }

  return result;
}

unint64_t sub_22BF69764()
{
  result = qword_27D90B7A8;
  if (!qword_27D90B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B7A8);
  }

  return result;
}

unint64_t sub_22BF697BC()
{
  result = qword_28106E370;
  if (!qword_28106E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E370);
  }

  return result;
}

unint64_t sub_22BF69814()
{
  result = qword_28106E378;
  if (!qword_28106E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E378);
  }

  return result;
}

unint64_t sub_22BF69868()
{
  result = qword_281079A00;
  if (!qword_281079A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281079A00);
  }

  return result;
}

unint64_t sub_22BF698BC()
{
  result = qword_2810799E8;
  if (!qword_2810799E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799E8);
  }

  return result;
}

unint64_t sub_22BF69910()
{
  result = qword_281073850;
  if (!qword_281073850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281073850);
  }

  return result;
}

unint64_t sub_22BF69964()
{
  result = qword_2810799B8;
  if (!qword_2810799B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799B8);
  }

  return result;
}

unint64_t sub_22BF699B8()
{
  result = qword_2810799D0;
  if (!qword_2810799D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799D0);
  }

  return result;
}

unint64_t sub_22BF69A0C()
{
  result = qword_281073858;
  if (!qword_281073858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281073858);
  }

  return result;
}

unint64_t sub_22BF69A60()
{
  result = qword_281073898[0];
  if (!qword_281073898[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281073898);
  }

  return result;
}

unint64_t sub_22BF69AB4()
{
  result = qword_27D90B808;
  if (!qword_27D90B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B808);
  }

  return result;
}

unint64_t sub_22BF69B08()
{
  result = qword_281073870;
  if (!qword_281073870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281073870);
  }

  return result;
}

unint64_t sub_22BF69B5C()
{
  result = qword_27D90B848;
  if (!qword_27D90B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B848);
  }

  return result;
}

unint64_t sub_22BF69BB0()
{
  result = qword_27D90B850;
  if (!qword_27D90B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B850);
  }

  return result;
}

unint64_t sub_22BF69C04()
{
  result = qword_27D90B858;
  if (!qword_27D90B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B858);
  }

  return result;
}

unint64_t sub_22BF69C58()
{
  result = qword_27D90B860;
  if (!qword_27D90B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B860);
  }

  return result;
}

_BYTE *sub_22BF69D1C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_22BE22BD0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BF69E14(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          result = sub_22BE22BD0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22BF69EF0()
{
  result = qword_27D90B888;
  if (!qword_27D90B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B888);
  }

  return result;
}

unint64_t sub_22BF69F48()
{
  result = qword_27D90B890;
  if (!qword_27D90B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B890);
  }

  return result;
}

unint64_t sub_22BF69FA0()
{
  result = qword_27D90B898;
  if (!qword_27D90B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B898);
  }

  return result;
}

unint64_t sub_22BF69FF8()
{
  result = qword_27D90B8A0;
  if (!qword_27D90B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8A0);
  }

  return result;
}

unint64_t sub_22BF6A050()
{
  result = qword_27D90B8A8;
  if (!qword_27D90B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8A8);
  }

  return result;
}

unint64_t sub_22BF6A0A8()
{
  result = qword_27D90B8B0;
  if (!qword_27D90B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8B0);
  }

  return result;
}

unint64_t sub_22BF6A100()
{
  result = qword_27D90B8B8;
  if (!qword_27D90B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8B8);
  }

  return result;
}

unint64_t sub_22BF6A158()
{
  result = qword_27D90B8C0;
  if (!qword_27D90B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8C0);
  }

  return result;
}

unint64_t sub_22BF6A1B0()
{
  result = qword_27D90B8C8;
  if (!qword_27D90B8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8C8);
  }

  return result;
}

unint64_t sub_22BF6A208()
{
  result = qword_27D90B8D0;
  if (!qword_27D90B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8D0);
  }

  return result;
}

unint64_t sub_22BF6A260()
{
  result = qword_27D90B8D8;
  if (!qword_27D90B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8D8);
  }

  return result;
}

unint64_t sub_22BF6A2B8()
{
  result = qword_27D90B8E0;
  if (!qword_27D90B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8E0);
  }

  return result;
}

unint64_t sub_22BF6A310()
{
  result = qword_27D90B8E8;
  if (!qword_27D90B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8E8);
  }

  return result;
}

unint64_t sub_22BF6A368()
{
  result = qword_27D90B8F0;
  if (!qword_27D90B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8F0);
  }

  return result;
}

unint64_t sub_22BF6A3C0()
{
  result = qword_27D90B8F8;
  if (!qword_27D90B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B8F8);
  }

  return result;
}

unint64_t sub_22BF6A418()
{
  result = qword_27D90B900;
  if (!qword_27D90B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B900);
  }

  return result;
}

unint64_t sub_22BF6A470()
{
  result = qword_27D90B908;
  if (!qword_27D90B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90B908);
  }

  return result;
}

unint64_t sub_22BF6A4C8()
{
  result = qword_281073860;
  if (!qword_281073860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281073860);
  }

  return result;
}

unint64_t sub_22BF6A520()
{
  result = qword_281073868;
  if (!qword_281073868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281073868);
  }

  return result;
}

unint64_t sub_22BF6A578()
{
  result = qword_281073878;
  if (!qword_281073878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281073878);
  }

  return result;
}

unint64_t sub_22BF6A5D0()
{
  result = qword_281073880;
  if (!qword_281073880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281073880);
  }

  return result;
}

unint64_t sub_22BF6A628()
{
  result = qword_281073888;
  if (!qword_281073888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281073888);
  }

  return result;
}

unint64_t sub_22BF6A680()
{
  result = qword_281073890;
  if (!qword_281073890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281073890);
  }

  return result;
}

unint64_t sub_22BF6A6D8()
{
  result = qword_2810799C0;
  if (!qword_2810799C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799C0);
  }

  return result;
}

unint64_t sub_22BF6A730()
{
  result = qword_2810799C8;
  if (!qword_2810799C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799C8);
  }

  return result;
}

unint64_t sub_22BF6A788()
{
  result = qword_2810799A8;
  if (!qword_2810799A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799A8);
  }

  return result;
}

unint64_t sub_22BF6A7E0()
{
  result = qword_2810799B0;
  if (!qword_2810799B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799B0);
  }

  return result;
}

unint64_t sub_22BF6A838()
{
  result = qword_2810799D8;
  if (!qword_2810799D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799D8);
  }

  return result;
}

unint64_t sub_22BF6A890()
{
  result = qword_2810799E0;
  if (!qword_2810799E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799E0);
  }

  return result;
}

unint64_t sub_22BF6A8E8()
{
  result = qword_2810799F0;
  if (!qword_2810799F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799F0);
  }

  return result;
}

unint64_t sub_22BF6A940()
{
  result = qword_2810799F8;
  if (!qword_2810799F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810799F8);
  }

  return result;
}