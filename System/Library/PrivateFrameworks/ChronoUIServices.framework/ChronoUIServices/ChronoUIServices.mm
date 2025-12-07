uint64_t sub_1D92903B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock);
    v5 = *(v4 + 16);

    os_unfair_lock_lock(v5);
    sub_1D9290468(v3);
    os_unfair_lock_unlock(*(v4 + 16));
  }

  return result;
}

uint64_t sub_1D9290468(uint64_t a1)
{
  v66 = sub_1D9327614();
  v2 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v52[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = sub_1D9327654();
  v4 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v75 = sub_1D9327774();
  v6 = *(v75 - 8);
  v7 = MEMORY[0x1EEE9AC00](v75);
  v61 = &v52[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v52[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD248, &qword_1D93300D8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v72 = &v52[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v52[-v13];
  swift_beginAccess();
  v67 = a1;
  v14 = *(a1 + 16);
  v15 = *(v14 + 64);
  v54 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v60 = OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__queue;
  v53 = (v16 + 63) >> 6;
  v69 = v6 + 32;
  v70 = v6 + 16;
  v59 = v78;
  v58 = (v2 + 8);
  v57 = (v4 + 8);
  v74 = v6;
  v56 = v6 + 8;
  v55 = v14;

  v20 = 0;
  if (v18)
  {
    while (1)
    {
      v21 = v20;
LABEL_12:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v21 << 6);
      v26 = v55;
      v28 = v73;
      v27 = v74;
      v29 = v75;
      (*(v74 + 16))(v73, *(v55 + 48) + *(v74 + 72) * v25, v75);
      v30 = *(*(v26 + 56) + 8 * v25);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD250, &qword_1D93300E0);
      v32 = *(v31 + 48);
      v33 = *(v27 + 32);
      v34 = v72;
      v33(v72, v28, v29);
      *&v34[v32] = v30;
      (*(*(v31 - 8) + 56))(v34, 0, 1, v31);

      v23 = v21;
LABEL_13:
      v35 = v68;
      sub_1D9290C44(v72, v68);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD250, &qword_1D93300E0);
      if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
      {
      }

      v38 = v73;
      v37 = v74;
      v71 = v23;
      v39 = *(v74 + 32);
      v40 = v75;
      v39(v73, v35, v75);
      v41 = v67;
      v42 = *(v67 + v60);
      v43 = v61;
      (*(v37 + 16))(v61, v38, v40);
      v44 = (*(v37 + 80) + 24) & ~*(v37 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = v41;
      v39((v45 + v44), v43, v40);
      v78[2] = sub_1D9290DF4;
      v78[3] = v45;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v78[0] = sub_1D9290DB0;
      v78[1] = &block_descriptor_68;
      v46 = _Block_copy(aBlock);
      v47 = v42;

      v48 = v63;
      sub_1D9327634();
      v76 = MEMORY[0x1E69E7CC0];
      sub_1D9290D18(&qword_1EDE3BCE8, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9E0, &unk_1D932DEF0);
      sub_1D9290D60(&qword_1EDE3BC58, &qword_1ECAFC9E0, &unk_1D932DEF0, MEMORY[0x1E69E6328]);
      v50 = v65;
      v49 = v66;
      sub_1D93283C4();
      MEMORY[0x1DA72E860](0, v48, v50, v46);
      _Block_release(v46);

      (*v58)(v50, v49);
      (*v57)(v48, v64);
      (*(v74 + 8))(v73, v75);

      v20 = v71;
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v53 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v53;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v53)
      {
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD250, &qword_1D93300E0);
        (*(*(v51 - 8) + 56))(v72, 1, 1, v51);
        v18 = 0;
        goto LABEL_13;
      }

      v18 = *(v54 + 8 * v21);
      ++v20;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D9290C44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD248, &qword_1D93300D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9290D18(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9290D60(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9290DB0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1D9290E64(uint64_t a1, uint64_t a2)
{
  v237 = a1;
  v227 = a2;
  v228 = sub_1D9327774();
  v222 = *(v228 - 8);
  v2 = MEMORY[0x1EEE9AC00](v228);
  v218 = &v197 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v213 = &v197 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v204 = &v197 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v201 = &v197 - v8;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD220, &qword_1D93300B0);
  MEMORY[0x1EEE9AC00](v205);
  v206 = &v197 - v9;
  v10 = sub_1D9326884();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v203 = &v197 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v200 = &v197 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v209 = &v197 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD228, &qword_1D93300B8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v212 = &v197 - v18;
  v19 = sub_1D9326814();
  v216 = *(v19 - 8);
  v217 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v231 = &v197 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v233 = &v197 - v22;
  v23 = sub_1D9327B64();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v224 = &v197 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v219 = &v197 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD230, &qword_1D93300C0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v197 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = v31;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v197 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD218, &qword_1D932FEE0);
  v35 = MEMORY[0x1EEE9AC00](v34 - 8);
  v202 = &v197 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v207 = &v197 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v208 = (&v197 - v40);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v211 = &v197 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v197 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v251 = 0;
  v210 = v11;
  v46 = *(v11 + 56);
  v232 = &v197 - v47;
  v46();
  v226 = v24;
  v48 = v24[7];
  (v48)(v33, 1, 1, v23);
  v214 = v23;
  isa = v48;
  (v48)(v31, 1, 1, v23);
  v249 = 0;
  v250 = 0;
  v225 = v10;
  v220 = v46;
  v221 = v11 + 56;
  (v46)(v45, 1, 1, v10);
  v248 = 0;
  v235 = OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock;
  v49 = v238;
  v50 = *(v238 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock);
  v51 = *(v50 + 16);

  v52 = v51;
  v53 = v237;
  os_unfair_lock_lock(v52);
  swift_beginAccess();
  v54 = *(v49 + 16);
  v55 = *(v54 + 16);
  v236 = v45;
  v229 = v33;
  if (!v55)
  {
    goto LABEL_5;
  }

  v56 = sub_1D9293100(v53);
  if ((v57 & 1) == 0)
  {

LABEL_5:
    v70 = 0;
    v234 = 0;
    v71 = 0;
    goto LABEL_6;
  }

  v58 = *(*(v54 + 56) + 8 * v56);

  swift_beginAccess();

  v59 = v219;
  sub_1D9327664();

  v60 = v232;
  sub_1D92933A0(v232, &qword_1ECAFD218, &qword_1D932FEE0);
  sub_1D92933A0(v33, &qword_1ECAFD230, &qword_1D93300C0);
  v223 = v226[2];
  v61 = v59;
  v62 = v214;
  v223(v33, v61, v214);
  (isa)(v33, 0, 1, v62);
  v63 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
  swift_beginAccess();
  LODWORD(v215) = *(v58 + v63);
  v64 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate;
  swift_beginAccess();
  sub_1D9293400(v58 + v64, v60);

  v234 = sub_1D93276C4();

  __swift_project_boxed_opaque_existential_1((v238 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor), *(v238 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor + 24));
  v65 = v224;
  sub_1D93278D4();
  v66 = v230;
  sub_1D92933A0(v230, &qword_1ECAFD230, &qword_1D93300C0);
  v223(v66, v65, v62);
  (isa)(v66, 0, 1, v62);
  sub_1D9290D18(&qword_1EDE3BC78, 255, MEMORY[0x1E69859A8], MEMORY[0x1E69859B8]);
  v67 = v219;
  LODWORD(v60) = sub_1D9327F44();

  v68 = v226[1];
  v69 = v65;
  v70 = v215;
  v68(v69, v62);
  v68(v67, v62);
  v71 = v60;
  v248 = v60 & 1;
LABEL_6:
  os_unfair_lock_unlock(*(v50 + 16));

  v72 = *(v238 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__cacheReader + 8);
  isa = *(v238 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__cacheReader);
  v246.isa = isa;
  v247 = v72;
  if (v71)
  {
    v72 = *(v238 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__placeholderCacheReader + 8);
    v246.isa = *(v238 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__placeholderCacheReader);
    v247 = v72;
    isa = v246.isa;
    if (!v246.isa)
    {
      v78 = 7104878;

      v251 = 0;
      v243 = 0;
      v244 = 0xE000000000000000;
      sub_1D9328444();
      MEMORY[0x1DA72E570](91, 0xE100000000000000);
      sub_1D9290D18(&qword_1EDE3B278, 255, MEMORY[0x1E6993DC8], MEMORY[0x1E6993DE0]);
      v79 = sub_1D9328614();
      MEMORY[0x1DA72E570](v79);

      MEMORY[0x1DA72E570](0xD00000000000003DLL, 0x80000001D9337D00);
      v80 = v226;
      v81 = v226[6];
      v82 = v229;
      v83 = v214;
      if (v81(v229, 1, v214))
      {
        v84 = 0xE300000000000000;
        v85 = 7104878;
      }

      else
      {
        v93 = v219;
        (v80[2])(v219, v82, v83);
        v94 = sub_1D9327B54();
        v95 = v80;
        v84 = v96;
        (v95[1])(v93, v83);
        v85 = v94;
      }

      v97 = v230;
      MEMORY[0x1DA72E570](v85, v84);

      MEMORY[0x1DA72E570](0xD00000000000004CLL, 0x80000001D9337D40);
      if (v81(v97, 1, v83))
      {
        v98 = 0xE300000000000000;
      }

      else
      {
        v99 = v226;
        v100 = v219;
        (v226[2])(v219, v97, v83);
        v78 = sub_1D9327B54();
        v98 = v101;
        (v99[1])(v100, v83);
      }

      MEMORY[0x1DA72E570](v78, v98);

      MEMORY[0x1DA72E570](11817, 0xE200000000000000);
      v102 = v243;
      v103 = v244;
      v249 = v243;
      v250 = v244;
      v104 = sub_1D9326BC4();
      v105 = sub_1D9328214();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v243 = v107;
        *v106 = 136446210;

        v108 = sub_1D9293524(v102, v103, &v243);

        *(v106 + 4) = v108;
        _os_log_impl(&dword_1D928E000, v104, v105, "%{public}s", v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v107);
        MEMORY[0x1DA72F920](v107, -1, -1);
        MEMORY[0x1DA72F920](v106, -1, -1);
      }

      isa = 0;
      v231 = 0;
      goto LABEL_23;
    }
  }

  LODWORD(v215) = v70;
  v199 = v71;
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v74 = *(v72 + 8);
  swift_unknownObjectRetain();
  v223 = v74;
  v224 = ObjectType;
  sub_1D9327784();
  v75 = v211;
  sub_1D9326804();
  sub_1D92934B4(v75, v236);
  sub_1D93277B4();
  sub_1D93277A4();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD238, &unk_1D93300C8);
  sub_1D9290D60(&qword_1EDE3DA58, &qword_1ECAFD238, &unk_1D93300C8, MEMORY[0x1E6993F88]);
  v77 = v212;
  sub_1D93267D4();

  v86 = *(v76 - 8);
  (*(v86 + 56))(v77, 0, 1, v76);
  sub_1D9326934();
  v87 = v243;
  (*(v86 + 8))(v77, v76);
  v89 = v237;
  v88 = v238;
  if (v234 && ((v87 ^ sub_1D93277C4()) & 1) == 0 && ((v215 ^ v199) & 1) == 0)
  {
    v90 = v208;
    sub_1D9293400(v232, v208);
    v91 = v210;
    v92 = v225;
    v215 = *(v210 + 48);
    if (v215(v90, 1, v225) == 1)
    {
      sub_1D92933A0(v90, &qword_1ECAFD218, &qword_1D932FEE0);
      v89 = v237;
      goto LABEL_31;
    }

    LODWORD(v212) = v87;
    v110 = v209;
    v198 = *(v91 + 32);
    v198(v209, v90, v92);
    v111 = *(v91 + 16);
    v112 = v207;
    v211 = (v91 + 16);
    v208 = v111;
    (v111)(v207, v110, v92);
    (v220)(v112, 0, 1, v92);
    v113 = v206;
    v114 = *(v205 + 48);
    sub_1D9293400(v112, v206);
    sub_1D9293400(v236, v113 + v114);
    if (v215(v113, 1, v92) == 1)
    {
      sub_1D92933A0(v112, &qword_1ECAFD218, &qword_1D932FEE0);
      v115 = v215(v113 + v114, 1, v92);
      v116 = v233;
      if (v115 == 1)
      {
        sub_1D92933A0(v113, &qword_1ECAFD218, &qword_1D932FEE0);
LABEL_40:
        v144 = v222;
        v145 = v201;
        v146 = v228;
        (*(v222 + 16))(v201, v237, v228);
        v147 = v209;
        v148 = v225;
        (v208)(v203, v209, v225);
        v149 = sub_1D9326BC4();
        v150 = sub_1D9328234();
        if (os_log_type_enabled(v149, v150))
        {
          LODWORD(v238) = v150;
          v151 = swift_slowAlloc();
          v237 = swift_slowAlloc();
          v242[0] = v237;
          *v151 = 136447234;
          v152 = sub_1D9327744();
          v154 = v153;
          (*(v144 + 8))(v145, v146);
          v155 = sub_1D9293524(v152, v154, v242);

          *(v151 + 4) = v155;
          *(v151 + 12) = 2082;
          sub_1D9290D18(&qword_1EDE3DA68, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
          v156 = v203;
          v157 = sub_1D9328614();
          v159 = v158;
          v160 = *(v210 + 8);
          v160(v156, v148);
          v161 = sub_1D9293524(v157, v159, v242);

          *(v151 + 14) = v161;
          *(v151 + 22) = 2082;
          v162 = v236;
          swift_beginAccess();
          if (v215(v162, 1, v148))
          {
            v163 = 7104878;
            v164 = 0xE300000000000000;
          }

          else
          {
            v190 = v160;
            v191 = v200;
            (v208)(v200, v162, v148);
            v192 = sub_1D9326834();
            v164 = v193;
            v194 = v191;
            v160 = v190;
            v190(v194, v148);
            v163 = v192;
          }

          v195 = sub_1D9293524(v163, v164, v242);

          *(v151 + 24) = v195;
          *(v151 + 32) = 1026;
          *(v151 + 34) = v199 & 1;
          *(v151 + 38) = 1026;
          *(v151 + 40) = v212;
          _os_log_impl(&dword_1D928E000, v149, v238, "Ignoring reloading contents for key because it's the exact same as we already have loaded: %{public}s (cachedLastModifiedDate: %{public}s, lastModifiedDate: %{public}s, isDataProtected  (isPlaceholder): %{BOOL,public}d, hasError? %{BOOL,public}d)", v151, 0x2Cu);
          v196 = v237;
          swift_arrayDestroy();
          MEMORY[0x1DA72F920](v196, -1, -1);
          MEMORY[0x1DA72F920](v151, -1, -1);
          swift_unknownObjectRelease();

          v160(v209, v148);
          (*(v216 + 8))(v233, v217);
          swift_unknownObjectRelease();
          sub_1D92933A0(v232, &qword_1ECAFD218, &qword_1D932FEE0);
          v166 = v162;
        }

        else
        {
          swift_unknownObjectRelease();

          v165 = *(v210 + 8);
          v165(v203, v148);
          (*(v144 + 8))(v145, v146);
          v165(v147, v148);
          (*(v216 + 8))(v116, v217);
          swift_unknownObjectRelease();
          sub_1D92933A0(v232, &qword_1ECAFD218, &qword_1D932FEE0);
          v166 = v236;
        }

        sub_1D92933A0(v166, &qword_1ECAFD218, &qword_1D932FEE0);
        v97 = v230;
        goto LABEL_34;
      }
    }

    else
    {
      v117 = v202;
      sub_1D9293400(v113, v202);
      if (v215(v113 + v114, 1, v92) != 1)
      {
        v141 = v113 + v114;
        v142 = v117;
        v143 = v200;
        v198(v200, v141, v92);
        sub_1D9290D18(&qword_1EDE3DA70, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
        LODWORD(v205) = sub_1D9327F64();
        v118 = *(v210 + 8);
        v118(v143, v92);
        sub_1D92933A0(v207, &qword_1ECAFD218, &qword_1D932FEE0);
        v118(v142, v92);
        sub_1D92933A0(v206, &qword_1ECAFD218, &qword_1D932FEE0);
        v88 = v238;
        v116 = v233;
        if (v205)
        {
          goto LABEL_40;
        }

LABEL_30:
        v118(v209, v225);
        v89 = v237;
        v87 = v212;
        goto LABEL_31;
      }

      sub_1D92933A0(v207, &qword_1ECAFD218, &qword_1D932FEE0);
      (*(v210 + 8))(v117, v92);
    }

    sub_1D92933A0(v113, &qword_1ECAFD220, &qword_1D93300B0);
    v118 = *(v210 + 8);
    v88 = v238;
    goto LABEL_30;
  }

LABEL_31:
  sub_1D9327794();
  v119 = v89;
  v120 = v243;
  sub_1D93277D4();
  __swift_project_boxed_opaque_existential_1(&v243, v245);
  sub_1D9327AA4();
  v231 = 0;
  sub_1D93277E4();
  __swift_destroy_boxed_opaque_existential_1Tm(&v243);

  v251 = v120;
  v124 = v222;
  v125 = v204;
  v126 = v228;
  (*(v222 + 16))(v204, v119, v228);

  v127 = sub_1D9326BC4();
  v128 = sub_1D9328234();

  if (os_log_type_enabled(v127, v128))
  {
    LODWORD(v234) = v128;
    LODWORD(v212) = v87;
    v129 = swift_slowAlloc();
    v225 = swift_slowAlloc();
    v241 = v225;
    *v129 = 136447490;
    v130 = sub_1D9327744();
    v131 = v126;
    v133 = v132;
    (*(v124 + 8))(v125, v131);
    v134 = sub_1D9293524(v130, v133, &v241);

    *(v129 + 4) = v134;
    *(v129 + 12) = 2082;
    v135 = v229;
    swift_beginAccess();
    v136 = v226;
    v137 = v226[6];
    v138 = v214;
    if (v137(v135, 1, v214))
    {
      v139 = 0xE300000000000000;
      v140 = 7104878;
    }

    else
    {
      v167 = v136[2];
      v228 = v127;
      v168 = v219;
      v167(v219, v135, v138);
      v169 = sub_1D9327B54();
      v139 = v170;
      v171 = v168;
      v127 = v228;
      (v136[1])(v171, v138);
      v140 = v169;
    }

    v172 = sub_1D9293524(v140, v139, &v241);

    *(v129 + 14) = v172;
    *(v129 + 22) = 2082;
    v173 = v230;
    swift_beginAccess();
    v174 = v137(v173, 1, v138);
    v175 = 7104878;
    if (v174)
    {
      v176 = 0xE300000000000000;
    }

    else
    {
      v177 = v226;
      v178 = v127;
      v179 = v219;
      (v226[2])(v219, v173, v138);
      v180 = sub_1D9327B54();
      v176 = v181;
      v182 = v179;
      v127 = v178;
      (v177[1])(v182, v138);
      v175 = v180;
    }

    v97 = v173;
    v183 = sub_1D9293524(v175, v176, &v241);

    *(v129 + 24) = v183;
    *(v129 + 32) = 2082;
    sub_1D93277D4();

    __swift_project_boxed_opaque_existential_1(&v243, v245);
    sub_1D9327AC4();
    v184 = sub_1D9326A24();

    v240 = v184;
    sub_1D92C969C();
    v185 = sub_1D9328394();
    v187 = v186;
    __swift_destroy_boxed_opaque_existential_1Tm(&v243);
    v188 = sub_1D9293524(v185, v187, &v241);

    *(v129 + 34) = v188;
    *(v129 + 42) = 1026;
    *(v129 + 44) = v199 & 1;
    *(v129 + 48) = 1026;
    *(v129 + 50) = v212;
    _os_log_impl(&dword_1D928E000, v127, v234, "Content load successful: loading content for key: %{public}s with data protection level of entry [%{public}s] (system protection level: %{public}s), current state: %{public}s, isDataProtected (isPlaceholder): %{BOOL,public}d, hasError? %{BOOL,public}d", v129, 0x36u);
    v189 = v225;
    swift_arrayDestroy();
    MEMORY[0x1DA72F920](v189, -1, -1);
    MEMORY[0x1DA72F920](v129, -1, -1);
    swift_unknownObjectRelease();

    (*(v216 + 8))(v233, v217);
LABEL_23:
    v109 = v236;
    v88 = v238;
    goto LABEL_32;
  }

  swift_unknownObjectRelease();

  (*(v124 + 8))(v125, v126);
  (*(v216 + 8))(v233, v217);
  v97 = v230;
  v109 = v236;
LABEL_32:
  v121 = *(v88 + v235);
  v122 = *(v121 + 16);

  os_unfair_lock_lock(v122);
  v123 = v231;
  sub_1D930D6F8(v88, v237, &v246, v227, &v248, v109, &v249, &v251);
  if (!v123)
  {
    os_unfair_lock_unlock(*(v121 + 16));

    swift_unknownObjectRelease();
    sub_1D92933A0(v232, &qword_1ECAFD218, &qword_1D932FEE0);
    sub_1D92933A0(v109, &qword_1ECAFD218, &qword_1D932FEE0);

LABEL_34:
    sub_1D92933A0(v97, &qword_1ECAFD230, &qword_1D93300C0);
    sub_1D92933A0(v229, &qword_1ECAFD230, &qword_1D93300C0);

    return;
  }

  os_unfair_lock_unlock(*(v121 + 16));
  __break(1u);
}

unint64_t sub_1D9293100(uint64_t a1)
{
  sub_1D9327774();
  sub_1D9293198(&qword_1EDE3BCE0, MEMORY[0x1E6993DC8], MEMORY[0x1E6993DD0]);
  v2 = sub_1D9327F14();

  return sub_1D92931E0(a1, v2);
}

uint64_t sub_1D9293198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D92931E0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1D9327774();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1D9293198(&qword_1EDE3BCD8, MEMORY[0x1E6993DC8], MEMORY[0x1E6993DD8]);
      v15 = sub_1D9327F64();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_1D92933A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D9293400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD218, &qword_1D932FEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1D92934B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD218, &qword_1D932FEE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9293524(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D92935F0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1D92936FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1D92935F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D92D8B14(a5, a6);
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
    result = sub_1D9328494();
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

uint64_t sub_1D92936FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1F0, &qword_1D932FEA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_1D9327774();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_53Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1F0, &qword_1D932FEA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_53Tm_0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1D9293AAC(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v69 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD48, &qword_1D932EDC8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF20, &qword_1D932F5A0);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v58 - v7;
  v8 = sub_1D93271E4();
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD8, &qword_1D932E920);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v61 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF28, &qword_1D932F5A8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v58 - v13;
  v15 = type metadata accessor for ControlIconView.Mode(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v58 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v58 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF30, &qword_1D932F5B0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v58 - v26;
  v28 = (&v58 + *(v25 + 56) - v26);
  sub_1D929705C(v68, &v58 - v26, type metadata accessor for ControlIconView.Mode);
  sub_1D929705C(v69, v28, type metadata accessor for ControlIconView.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D929705C(v27, v23, type metadata accessor for ControlIconView.Mode);
      v31 = *v23;
      v30 = v23[1];
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_19:
        sub_1D92933A0(v27, &qword_1ECAFCF30, &qword_1D932F5B0);
        return 0;
      }

      if (v31 == *v28 && v30 == v28[1])
      {

        goto LABEL_35;
      }

      v46 = sub_1D9328654();

      if (v46)
      {
        goto LABEL_35;
      }

LABEL_30:
      sub_1D929748C(v27, type metadata accessor for ControlIconView.Mode);
      return 0;
    }

    sub_1D929705C(v27, v21, type metadata accessor for ControlIconView.Mode);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = *(v12 + 48);
      sub_1D9297374(v21, v14, &qword_1ECAFCBD8, &qword_1D932E920);
      sub_1D9297374(v28, &v14[v37], &qword_1ECAFCBD8, &qword_1D932E920);
      v39 = v63;
      v38 = v64;
      v40 = *(v63 + 48);
      if (v40(v14, 1, v64) == 1)
      {
        if (v40(&v14[v37], 1, v38) == 1)
        {
          sub_1D92933A0(v14, &qword_1ECAFCBD8, &qword_1D932E920);
          goto LABEL_35;
        }

LABEL_28:
        sub_1D92933A0(v14, &qword_1ECAFCF28, &qword_1D932F5A8);
        goto LABEL_30;
      }

      v45 = v61;
      sub_1D92973DC(v14, v61, &qword_1ECAFCBD8, &qword_1D932E920);
      if (v40(&v14[v37], 1, v38) == 1)
      {
        (*(v39 + 8))(v45, v38);
        goto LABEL_28;
      }

      v55 = &v14[v37];
      v56 = v59;
      (*(v39 + 32))(v59, v55, v38);
      sub_1D9297444(&qword_1EDE3BD40, MEMORY[0x1E697CB10], MEMORY[0x1E697CB20]);
      v50 = sub_1D9327F64();
      v57 = *(v39 + 8);
      v57(v56, v38);
      v57(v45, v38);
      v52 = &qword_1ECAFCBD8;
      v53 = &qword_1D932E920;
      v54 = v14;
LABEL_34:
      sub_1D92933A0(v54, v52, v53);
      if (v50)
      {
        goto LABEL_35;
      }

      goto LABEL_30;
    }

    v41 = &qword_1ECAFCBD8;
    v42 = &qword_1D932E920;
    v43 = v21;
LABEL_18:
    sub_1D92933A0(v43, v41, v42);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D929705C(v27, v18, type metadata accessor for ControlIconView.Mode);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v41 = &qword_1ECAFCD48;
      v42 = &qword_1D932EDC8;
      v43 = v18;
      goto LABEL_18;
    }

    v32 = *(v6 + 48);
    v33 = v65;
    sub_1D9297374(v18, v65, &qword_1ECAFCD48, &qword_1D932EDC8);
    sub_1D9297374(v28, v33 + v32, &qword_1ECAFCD48, &qword_1D932EDC8);
    v35 = v66;
    v34 = v67;
    v36 = *(v66 + 48);
    if (v36(v33, 1, v67) == 1)
    {
      if (v36(v33 + v32, 1, v34) == 1)
      {
        sub_1D92933A0(v33, &qword_1ECAFCD48, &qword_1D932EDC8);
        goto LABEL_35;
      }
    }

    else
    {
      v44 = v62;
      sub_1D92973DC(v33, v62, &qword_1ECAFCD48, &qword_1D932EDC8);
      if (v36(v33 + v32, 1, v34) != 1)
      {
        v48 = v33 + v32;
        v49 = v60;
        (*(v35 + 32))(v60, v48, v34);
        sub_1D9290D60(&qword_1ECAFCF38, &qword_1ECAFCD38, &qword_1D932ECB0, MEMORY[0x1E6994148]);
        v50 = sub_1D9327F64();
        v51 = *(v35 + 8);
        v51(v49, v34);
        v51(v44, v34);
        v52 = &qword_1ECAFCD48;
        v53 = &qword_1D932EDC8;
        v54 = v33;
        goto LABEL_34;
      }

      (*(v35 + 8))(v44, v34);
    }

    sub_1D92933A0(v33, &qword_1ECAFCF20, &qword_1D932F5A0);
    goto LABEL_30;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_19;
  }

LABEL_35:
  sub_1D929748C(v27, type metadata accessor for ControlIconView.Mode);
  return 1;
}

uint64_t sub_1D92945A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D92945F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

id CHUISLogViewController(uint64_t a1)
{
  if (CHUISLogViewController_onceToken != -1)
  {
    CHUISLogViewController_cold_1();
  }

  v2 = CHUISLogViewController___logObj;

  return v2;
}

void __CHUISLogViewController_block_invoke()
{
  v0 = os_log_create("com.apple.chrono", "ViewController");
  v1 = CHUISLogViewController___logObj;
  CHUISLogViewController___logObj = v0;
}

id CHUISSharedExtensionProvider(uint64_t a1)
{
  if (CHUISSharedExtensionProvider___once != -1)
  {
    CHUISSharedExtensionProvider_cold_1();
  }

  v2 = CHUISSharedExtensionProvider___instance;

  return v2;
}

void __CHUISSharedExtensionProvider_block_invoke()
{
  v3 = [objc_alloc(MEMORY[0x1E6994398]) initIncludingRelevanceBacked:1];
  v0 = [objc_alloc(MEMORY[0x1E69943D0]) initWithWidgetsPredicate:v3 controlsPredicate:0];
  v1 = [objc_alloc(MEMORY[0x1E69943C0]) initWithOptions:v0];
  v2 = CHUISSharedExtensionProvider___instance;
  CHUISSharedExtensionProvider___instance = v1;
}

id CHUISSceneWorkspace()
{
  if (CHUISSceneWorkspace___once != -1)
  {
    CHUISSceneWorkspace_cold_1();
  }

  v1 = CHUISSceneWorkspace___instance;

  return v1;
}

void __CHUISSceneWorkspace_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E699F7F8]) initWithIdentifier:@"com.apple.chrono"];
  v1 = CHUISSceneWorkspace___instance;
  CHUISSceneWorkspace___instance = v0;
}

void sub_1D9295074(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));

  _Unwind_Resume(a1);
}

uint64_t sub_1D92955BC(uint64_t result, uint64_t a2, char a3)
{
  if ((*(v3 + 40) & 1) == 0)
  {
    if ((a3 & 1) == 0 && *(v3 + 24) == *&result && *(v3 + 32) == *&a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
    sub_1D93268F4();
    *&result = COERCE_DOUBLE();
    return result;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v3 + 24) = *&result;
  *(v3 + 32) = *&a2;
  *(v3 + 40) = a3 & 1;
  return result;
}

void sub_1D929630C(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__viewModel];
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);

  sub_1D9326904();

  v5 = *(v4 + 56);

  sub_1D9296448(0, &qword_1EDE3B250, 0x1E6994428);
  v6 = sub_1D9328314();

  if ((v6 & 1) == 0)
  {

    sub_1D929C060(a1);

    [v2 setNeedsLayout];
  }
}

uint64_t sub_1D9296448(uint64_t a1, unint64_t *a2, void *a3)
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

id sub_1D9296490(double a1)
{
  v3 = OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__viewModel;
  v4 = *&v1[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__viewModel];
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);

  sub_1D9326904();

  v5 = *(v4 + 16);

  if (v5 != a1)
  {
    v7 = *&v1[v3];
    if (*(v7 + 16) == a1)
    {
      *(v7 + 16) = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);

      sub_1D93268F4();
    }

    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1D929705C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D92970C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D929712C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9297194(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s16ChronoUIServices15ControlIconViewV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D9293AAC(a1, a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  v4 = type metadata accessor for ControlIconView(0);
  v5 = v4[7];
  v6 = *(a2 + v5);
  if (*(a1 + v5))
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = sub_1D9327364();

    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (v6)
  {
    goto LABEL_9;
  }

  if (*(a1 + v4[5]) == *(a2 + v4[5]))
  {
    v8 = (a1 + v4[8]);
    v9 = *v8;
    v10 = v8[1];
    LOBYTE(v8) = *(v8 + 16);
    v26 = v9;
    v27 = v10;
    v28 = v8;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
    MEMORY[0x1DA72DAB0](&v25);
    v12 = v25;
    v13 = (a2 + v4[8]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v13) = *(v13 + 16);
    v26 = v14;
    v27 = v15;
    v28 = v13;
    MEMORY[0x1DA72DAB0](&v25, v11);
    if (v12 == v25)
    {
      v18 = (a1 + v4[9]);
      v19 = *v18;
      v20 = v18[1];
      LOBYTE(v18) = *(v18 + 16);
      v26 = v19;
      v27 = v20;
      v28 = v18;
      MEMORY[0x1DA72DAB0](&v25, v11);
      v21 = v25;
      v22 = (a2 + v4[9]);
      v23 = *v22;
      v24 = v22[1];
      LOBYTE(v22) = *(v22 + 16);
      v26 = v23;
      v27 = v24;
      v28 = v22;
      MEMORY[0x1DA72DAB0](&v25, v11);
      v16 = v21 ^ v25 ^ 1;
      return v16 & 1;
    }
  }

LABEL_9:
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1D9297374(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D92973DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D9297444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D929748C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D92974EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__CFString *CHUISWidgetSceneSettingsKeyDescription(uint64_t a1)
{
  if ((a1 - 88889) > 0x1C)
  {
    return @"widget";
  }

  else
  {
    return off_1E8575328[a1 - 88889];
  }
}

id CHUISWidgetSceneSettingsValueDescription(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((a1 - 88888) <= 0x1D)
  {
    v5 = v3;
  }

  return v4;
}

void sub_1D9297F94()
{
  v1 = v0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CHUISSolariumEffectView();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);

  [v0 bounds];
  sub_1D92955BC(v2, v3, 0);

  v4 = *&v0[OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__hostingView];
  [v1 bounds];
  [v4 setFrame_];
}

void sub_1D9298608(uint64_t a1)
{
  sub_1D9314364(319, &qword_1ECAFC478, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D9326924();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D9298728(uint64_t a1, unint64_t *a2, uint64_t a3)
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

__n128 sub_1D9298774()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  *(v1 + 24) = result;
  *(v1 + 40) = v2;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double sub_1D9298798()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

Class __getBLSHBacklightFBSceneEnvironmentActionHandlerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!BacklightServicesHostLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __BacklightServicesHostLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E8575C40;
    v9 = 0;
    BacklightServicesHostLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!BacklightServicesHostLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BacklightServicesHostLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CHUISWidgetHostViewController.m" lineNumber:66 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("BLSHBacklightFBSceneEnvironmentActionHandler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBLSHBacklightFBSceneEnvironmentActionHandlerClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"CHUISWidgetHostViewController.m" lineNumber:67 description:{@"Unable to find class %s", "BLSHBacklightFBSceneEnvironmentActionHandler"}];

LABEL_10:
    __break(1u);
  }

  getBLSHBacklightFBSceneEnvironmentActionHandlerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id CHUISLogViewControllerTouch(uint64_t a1)
{
  if (CHUISLogViewControllerTouch_onceToken != -1)
  {
    CHUISLogViewControllerTouch_cold_1();
  }

  v2 = CHUISLogViewControllerTouch___logObj;

  return v2;
}

uint64_t CHUISHasGlobalCaptureEntitlement()
{
  if (CHUISInUnitTests())
  {
    v0 = 1;
  }

  else
  {
    if (CHUISHasGlobalCaptureEntitlement_onceToken != -1)
    {
      CHUISHasGlobalCaptureEntitlement_cold_1();
    }

    v0 = CHUISHasGlobalCaptureEntitlement_hasGlobalCaptureEntitlement;
  }

  return v0 & 1;
}

BOOL CHUISInUnitTests()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 environment];
  v2 = [v1 objectForKeyedSubscript:@"CHS_IN_UNIT_TESTS"];
  v3 = v2 != 0;

  return v3;
}

void __CHUISHasGlobalCaptureEntitlement_block_invoke()
{
  v0 = [MEMORY[0x1E698E740] processHandle];
  CHUISHasGlobalCaptureEntitlement_hasGlobalCaptureEntitlement = [v0 hasEntitlement:@"com.apple.QuartzCore.global-capture"];
}

uint64_t sub_1D92991B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  v6 = OBJC_IVAR____TtC16ChronoUIServices25SimpleEnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  v7 = sub_1D9327034();
  (*(*(v7 - 8) + 16))(a1, v3 + v6, v7);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_1D929926C@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 64);
  a1[3] = type metadata accessor for SimpleEnvironmentProvider(0);
  a1[4] = sub_1D9299378(&qword_1EDE3DD08, type metadata accessor for SimpleEnvironmentProvider, &unk_1D932FBF8);
  *a1 = v3;
}

void __CHUISLogViewControllerTouch_block_invoke()
{
  v0 = os_log_create("com.apple.chrono", "ViewControllerTouch");
  v1 = CHUISLogViewControllerTouch___logObj;
  CHUISLogViewControllerTouch___logObj = v0;
}

uint64_t sub_1D9299378(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D92993CC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC830, &qword_1D932CC10);
    sub_1D9290D60(&qword_1EDE3DA90, &unk_1ECAFC830, &qword_1D932CC10, MEMORY[0x1E695BF88]);
    v1 = sub_1D9326C64();
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_1D929A344()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD2F0, &qword_1D93303F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD2E8, &qword_1D9330398);
  sub_1D93145B8();
  sub_1D929AE20();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D929A4FC(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v2 = sub_1D93279E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v48[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D9327034();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v60 = &v48[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48[-v10];
  v62 = sub_1D9327A04();
  v12 = *(v62 - 8);
  v13 = MEMORY[0x1EEE9AC00](v62);
  v15 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48[-v16];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v53 = v2;
    v54 = v5;
    v52 = v3;
    v56 = result;
    v19 = *(result + 64);
    v20 = *(v19 + 32);
    v21 = *(v20 + 16);

    os_unfair_lock_lock(v21);
    v22 = OBJC_IVAR____TtC16ChronoUIServices25SimpleEnvironmentProvider__lock_environmentValues;
    swift_beginAccess();
    v57 = v7;
    v23 = *(v7 + 16);
    v23(v11, v19 + v22, v6);
    os_unfair_lock_unlock(*(v20 + 16));

    v58 = v11;
    sub_1D93279F4();
    if (qword_1EDE3DAA8 != -1)
    {
      swift_once();
    }

    v24 = sub_1D9326BE4();
    __swift_project_value_buffer(v24, qword_1EDE40178);
    v25 = *(v12 + 16);
    v59 = v17;
    v25(v15, v17, v62);
    v26 = v60;
    v55 = v23;
    v23(v60, v61, v6);
    v27 = sub_1D9326BC4();
    v28 = sub_1D9328234();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v54;
    if (v29)
    {
      v31 = swift_slowAlloc();
      v50 = v31;
      v51 = swift_slowAlloc();
      v63[0] = v51;
      *v31 = 136446210;
      sub_1D93279A4();
      sub_1D93279B4();
      v49 = v28;
      v32 = sub_1D9327994();

      (*(v52 + 8))(v30, v53);
      v54 = MEMORY[0x1DA72E5E0](v32, MEMORY[0x1E69E6158]);
      v33 = v26;
      v35 = v34;

      v36 = v57;
      v60 = *(v57 + 8);
      (v60)(v33, v6);
      v37 = v15;
      v38 = *(v12 + 8);
      v38(v37, v62);
      v39 = sub_1D9293524(v54, v35, v63);

      v40 = v50;
      *(v50 + 1) = v39;
      _os_log_impl(&dword_1D928E000, v27, v49, "ClientEnvironmentProviderFactory systemEnvironmentDidChange, diff old vs new: %{public}s", v40, 0xCu);
      v41 = v51;
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x1DA72F920](v41, -1, -1);
      MEMORY[0x1DA72F920](v40, -1, -1);
    }

    else
    {

      v36 = v57;
      v60 = *(v57 + 8);
      (v60)(v26, v6);
      v42 = v15;
      v38 = *(v12 + 8);
      v38(v42, v62);
    }

    v43 = *(v56 + 64);
    v44 = v58;
    v55(v58, v61, v6);
    v45 = *(v43 + 32);
    v46 = *(v45 + 16);

    os_unfair_lock_lock(v46);
    v47 = OBJC_IVAR____TtC16ChronoUIServices25SimpleEnvironmentProvider__lock_environmentValues;
    swift_beginAccess();
    (*(v36 + 24))(v43 + v47, v44, v6);
    swift_endAccess();
    os_unfair_lock_unlock(*(v45 + 16));

    (v60)(v44, v6);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC830, &qword_1D932CC10);
    sub_1D9290D60(&qword_1EDE3DA98, &unk_1ECAFC830, &qword_1D932CC10, MEMORY[0x1E695BF80]);
    sub_1D9326C54();

    return (v38)(v59, v62);
  }

  return result;
}

unint64_t sub_1D929ABFC()
{
  result = qword_1EDE3B2E0;
  if (!qword_1EDE3B2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD300, &qword_1D9330400);
    sub_1D929ACB4();
    sub_1D9290D60(&qword_1EDE3B288, &qword_1ECAFD310, &qword_1D9330440, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B2E0);
  }

  return result;
}

unint64_t sub_1D929ACB4()
{
  result = qword_1EDE3B2A8;
  if (!qword_1EDE3B2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD2F8, &qword_1D93303F8);
    sub_1D929AD38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B2A8);
  }

  return result;
}

unint64_t sub_1D929AD38()
{
  result = qword_1EDE3B2D0;
  if (!qword_1EDE3B2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD338, &qword_1D9330468);
    sub_1D9313FC4(&qword_1EDE3B2B0, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAD8]);
    sub_1D9290D60(&qword_1EDE3B290, &qword_1ECAFD340, &qword_1D9330470, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B2D0);
  }

  return result;
}

unint64_t sub_1D929AE20()
{
  result = qword_1EDE3B260;
  if (!qword_1EDE3B260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD2E8, &qword_1D9330398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B260);
  }

  return result;
}

uint64_t sub_1D929AE9C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = type metadata accessor for SolariumEffectView(0);
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v40 = v4;
  v41 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD2F0, &qword_1D93303F0);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_1D9326D04();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD2F8, &qword_1D93303F8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - v14;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD300, &qword_1D9330400);
  MEMORY[0x1EEE9AC00](v35);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD308, &qword_1D9330408);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v36 = v15;
  v37 = &v34 - v19;
  sub_1D929B608(v15);
  v20 = *v1;
  sub_1D929BACC(v8);
  v21 = *(v10 + 48);
  v22 = v21(v8, 1, v9);
  v42 = v1;
  if (v22 == 1)
  {
    sub_1D9310D80(v12);
    if (v21(v8, 1, v9) != 1)
    {
      sub_1D92933A0(v8, &qword_1ECAFC438, &qword_1D932CA10);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  KeyPath = swift_getKeyPath();
  v24 = &v17[*(v35 + 36)];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD310, &qword_1D9330440);
  (*(v10 + 32))(v24 + *(v25 + 28), v12, v9);
  *v24 = KeyPath;
  sub_1D929BDD8(v36, v17);
  swift_getKeyPath();
  v46 = v20;
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
  sub_1D9326904();

  v26 = *(v20 + 56);
  v27 = v37;
  sub_1D9310F88(v26);

  sub_1D92933A0(v17, &qword_1ECAFD300, &qword_1D9330400);
  v28 = v44;
  v29 = v42;
  sub_1D93111F4(v42, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD2E8, &qword_1D9330398);
  sub_1D9326CB4();
  v30 = v41;
  sub_1D93144F0(v29, v41);
  v31 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v32 = swift_allocObject();
  sub_1D9314554(v30, v32 + v31);
  sub_1D93145B8();
  sub_1D929AE20();
  sub_1D9327314();

  sub_1D92933A0(v28, &qword_1ECAFD2F0, &qword_1D93303F0);
  return sub_1D92933A0(v27, &qword_1ECAFD308, &qword_1D9330408);
}

uint64_t sub_1D929B46C()
{
  v1 = type metadata accessor for SolariumEffectView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD298, &unk_1D9330130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1D9326D04();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D929B608@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD358, &qword_1D93304B0);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v27 - v2;
  v28 = sub_1D93275C4();
  v3 = *(v28 - 8);
  v4 = MEMORY[0x1EEE9AC00](v28);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD338, &qword_1D9330468);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v27 = v1;
  v12 = *v1;
  swift_getKeyPath();
  v32 = v12;
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
  sub_1D9326904();

  v13 = *(v12 + 48);
  if (v13 == 1)
  {
    swift_getKeyPath();
    v32 = v12;
    sub_1D9326904();

    v14 = *(v12 + 16);
    v15 = *(sub_1D9326E34() + 20);
    v16 = *MEMORY[0x1E697F468];
    v17 = sub_1D9327094();
    (*(*(v17 - 8) + 104))(&v11[v15], v16, v17);
    *v11 = v14;
    *(v11 + 1) = v14;
    sub_1D93275B4();
    sub_1D9327574();
    v18 = *(v3 + 8);
    v19 = v28;
    v18(v6, v28);
    sub_1D93275D4();
    v18(v8, v19);
LABEL_5:
    sub_1D92973DC(v11, v29, &qword_1ECAFD338, &qword_1D9330468);
    swift_storeEnumTagMultiPayload();
    sub_1D929AD38();
    sub_1D9327104();
    return sub_1D92933A0(v11, &qword_1ECAFD338, &qword_1D9330468);
  }

  v20 = v3;
  v21 = v28;
  if (!v13)
  {
    swift_getKeyPath();
    v32 = v12;
    sub_1D9326904();

    v22 = *(v12 + 16);
    v23 = *(sub_1D9326E34() + 20);
    v24 = *MEMORY[0x1E697F468];
    v25 = sub_1D9327094();
    (*(*(v25 - 8) + 104))(&v11[v23], v24, v25);
    *v11 = v22;
    *(v11 + 1) = v22;
    sub_1D93114D4(v27, v8);
    sub_1D93275D4();
    (*(v20 + 8))(v8, v21);
    goto LABEL_5;
  }

  v32 = *(v12 + 48);
  result = sub_1D9328674();
  __break(1u);
  return result;
}

uint64_t sub_1D929BACC@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1D9326D04();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = v1;
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
  sub_1D9326904();

  v11 = [*(v1 + 56) filterStyle];
  v12 = 1;
  if (v11 <= 4)
  {
    if (v11 != 3)
    {
      if (v11 != 4)
      {
        return (*(v8 + 56))(a1, v12, 1, v7);
      }

      goto LABEL_9;
    }

LABEL_10:
    v14 = MEMORY[0x1E697DBB8];
    goto LABEL_11;
  }

  switch(v11)
  {
    case 5:
      goto LABEL_10;
    case 6:
LABEL_9:
      v14 = MEMORY[0x1E697DBA8];
LABEL_11:
      (*(v8 + 104))(a1, *v14, v7);
      goto LABEL_12;
    case 7:
      swift_getKeyPath();
      v18 = v1;
      sub_1D9326904();

      v13 = OBJC_IVAR____TtC16ChronoUIServices23SolariumEffectViewModel__preferredColorScheme;
      swift_beginAccess();
      sub_1D92973DC(v2 + v13, v6, &qword_1ECAFC438, &qword_1D932CA10);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_1D92933A0(v6, &qword_1ECAFC438, &qword_1D932CA10);
        v12 = 1;
        return (*(v8 + 56))(a1, v12, 1, v7);
      }

      v16 = *(v8 + 32);
      v16(v10, v6, v7);
      v16(a1, v10, v7);
LABEL_12:
      v12 = 0;
      break;
  }

  return (*(v8 + 56))(a1, v12, 1, v7);
}

uint64_t sub_1D929BDD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD2F8, &qword_1D93303F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D929BE48(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for SolariumEffectView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1D929BEC8(a1, a2, v6);
}

void sub_1D929BEC8(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  swift_getKeyPath();
  sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
  sub_1D9326904();

  [*(v4 + 56) mutableCopy];
  sub_1D93283A4();
  swift_unknownObjectRelease();
  sub_1D9296448(0, &qword_1EDE3B248, 0x1E6994328);
  if (swift_dynamicCast())
  {
    if (v3 == 2 || (v3 & 1) == 0)
    {
      v5 = [v7 wantsSubduedGlass];
    }

    else
    {
      v5 = 1;
    }

    [v7 setWantsSubduedGlass_];
    v6 = v7;
    sub_1D929C060(v6);
  }
}

void sub_1D929C060(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
  sub_1D9296448(0, &qword_1EDE3B250, 0x1E6994428);
  v5 = v4;
  v6 = sub_1D9328314();

  if (v6)
  {
    v7 = *(v2 + 56);
    *(v2 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D9313FC4(&qword_1EDE3B500, type metadata accessor for SolariumEffectViewModel, &protocol conformance descriptor for SolariumEffectViewModel);
    sub_1D93268F4();
  }
}

uint64_t sub_1D929C634(void *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = a2(v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v11;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1D929C790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v6 + 32))(&v15 - v10);
  type metadata accessor for ClientEnvironmentProviderFactory();
  v12 = swift_allocObject();
  (*(v6 + 16))(v9, v11, a3);
  v13 = sub_1D929C9B4(v9, v12, a3, a4);
  (*(v6 + 8))(v11, a3);
  return v13;
}

uint64_t sub_1D929C9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D9327034();
  v26 = *(v7 - 8);
  v8 = v26;
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[3] = a3;
  v29[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
  v12 = *(*(a3 - 8) + 32);
  v25[1] = boxed_opaque_existential_0;
  v12();
  *(a2 + 16) = 0;
  *(a2 + 72) = MEMORY[0x1E69E7CD0];
  sub_1D929CF00(v29, a2 + 24);
  sub_1D9327024();
  type metadata accessor for SimpleEnvironmentProvider(0);
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC830, &qword_1D932CC10);
  swift_allocObject();
  v13[2] = sub_1D9326C44();
  v13[3] = 0;
  type metadata accessor for UnfairLock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *v15 = 0;
  *(v14 + 16) = v15;
  v13[4] = v14;
  (*(v8 + 32))(v13 + OBJC_IVAR____TtC16ChronoUIServices25SimpleEnvironmentProvider__lock_environmentValues, v10, v7);
  *(a2 + 64) = v13;
  v28 = (*(a4 + 16))(a3, a4);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1A0, &qword_1D932FC30);
  sub_1D9290D60(&qword_1EDE3DAA0, &qword_1ECAFD1A0, &qword_1D932FC30, MEMORY[0x1E695BED8]);
  sub_1D9326C94();

  swift_beginAccess();
  sub_1D9326C04();
  swift_endAccess();

  v16 = *(a2 + 64);
  v17 = *(a4 + 8);

  v17(a3, a4);
  v18 = *(v16 + 32);
  v19 = *(v18 + 16);

  os_unfair_lock_lock(v19);
  v20 = OBJC_IVAR____TtC16ChronoUIServices25SimpleEnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  v21 = v26;
  v22 = v16 + v20;
  v23 = v27;
  (*(v26 + 24))(v22, v10, v27);
  swift_endAccess();
  os_unfair_lock_unlock(*(v18 + 16));

  (*(v21 + 8))(v10, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  return a2;
}

uint64_t sub_1D929CD60()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1D929CF00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D929D084(uint64_t a1)
{
  result = sub_1D9327034();
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

uint64_t sub_1D929D978()
{
  v0 = sub_1D9326BE4();
  __swift_allocate_value_buffer(v0, qword_1EDE40178);
  __swift_project_value_buffer(v0, qword_1EDE40178);
  if (qword_1EDE3DA88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE40170;
  return sub_1D9326BF4();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1D929DAA0()
{
  sub_1D929DB08();
  result = sub_1D9328364();
  qword_1EDE40170 = result;
  return result;
}

unint64_t sub_1D929DB08()
{
  result = qword_1EDE3DA80;
  if (!qword_1EDE3DA80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE3DA80);
  }

  return result;
}

void sub_1D929E208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1D929E490@<X0>(void *a2@<X3>, _BYTE *a3@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + *a2);
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void *sub_1D929E500@<X0>(void *a1@<X8>)
{
  sub_1D929E550();
  result = sub_1D9327044();
  *a1 = v3;
  return result;
}

unint64_t sub_1D929E550()
{
  result = qword_1EDE3BE00;
  if (!qword_1EDE3BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE00);
  }

  return result;
}

uint64_t sub_1D929E5A4@<X0>(void *a1@<X8>)
{
  if (qword_1EDE3C838 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EDE400F8;
}

uint64_t sub_1D929E614@<X0>(uint64_t a1@<X8>)
{
  v214 = a1;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCCD8, &qword_1D932EC68);
  MEMORY[0x1EEE9AC00](v206);
  v195 = &v175 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD48, &qword_1D932EDC8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v194 = &v175 - v3;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF50, &qword_1D932F5C8);
  MEMORY[0x1EEE9AC00](v203);
  v204 = &v175 - v4;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC90, &qword_1D932EC20);
  MEMORY[0x1EEE9AC00](v213);
  v205 = &v175 - v5;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF58, &qword_1D932F5D0);
  MEMORY[0x1EEE9AC00](v198);
  v199 = &v175 - v6;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCCD0, &qword_1D932EC60);
  MEMORY[0x1EEE9AC00](v192);
  v178 = &v175 - v7;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF60, &qword_1D932F5D8);
  MEMORY[0x1EEE9AC00](v188);
  v191 = &v175 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBE0, &qword_1D932E928);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v177 = &v175 - v10;
  v181 = sub_1D9327B74();
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v187 = &v175 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCCB0, &qword_1D932EC40);
  MEMORY[0x1EEE9AC00](v179);
  v182 = &v175 - v12;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF68, &qword_1D932F5E0);
  v184 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v183 = &v175 - v13;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCCA0, &qword_1D932EC30);
  MEMORY[0x1EEE9AC00](v196);
  v190 = &v175 - v14;
  v200 = sub_1D93271E4();
  v201 = *(v200 - 8);
  v15 = MEMORY[0x1EEE9AC00](v200);
  v176 = &v175 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v193 = &v175 - v17;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC98, &qword_1D932EC28);
  MEMORY[0x1EEE9AC00](v202);
  v197 = &v175 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD8, &qword_1D932E920);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v175 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v208 = &v175 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE68, &qword_1D932F470);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v175 = &v175 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v175 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v207 = &v175 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v175 - v32;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC70, &qword_1D932EC00);
  v34 = MEMORY[0x1EEE9AC00](v209);
  v185 = (&v175 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x1EEE9AC00](v34);
  v186 = &v175 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = (&v175 - v39);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v175 - v41;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF70, &qword_1D932F5E8);
  MEMORY[0x1EEE9AC00](v210);
  v212 = &v175 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF78, &unk_1D932F5F0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v175 - v45;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC68, &qword_1D932EBF8);
  MEMORY[0x1EEE9AC00](v211);
  v48 = &v175 - v47;
  v49 = type metadata accessor for ControlIconView.Mode(0);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v175 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D929705C(v215, v51, type metadata accessor for ControlIconView.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v62 = &qword_1D932EDC8;
      v63 = v194;
      sub_1D9297374(v51, v194, &qword_1ECAFCD48, &qword_1D932EDC8);
      v64 = type metadata accessor for ControlIconView(0);
      v65 = *(v215 + *(v64 + 20));
      v66 = *(v215 + *(v64 + 24));
      v67 = v195;
      sub_1D92973DC(v63, v195, &qword_1ECAFCD48, &qword_1D932EDC8);
      v68 = type metadata accessor for AppIconView(0);
      *(v67 + v68[5]) = v65;
      *(v67 + v68[6]) = v66;
      v69 = v68[7];
      *(v67 + v69) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
      swift_storeEnumTagMultiPayload();
      v70 = (v67 + v68[8]);
      v216 = 0;
      v217 = 0;
      v218 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD58, &qword_1D932EDE8);
      sub_1D93274C4();
      v71 = v220;
      *v70 = v219;
      v70[1] = v71;
      KeyPath = swift_getKeyPath();
      v73 = sub_1D9326CE4();
      v74 = sub_1D9326CE4();
      v75 = v67 + *(v206 + 36);
      *v75 = KeyPath;
      *(v75 + 8) = 0;
      *(v75 + 16) = v73;
      *(v75 + 24) = v74;
      sub_1D92973DC(v67, v204, &qword_1ECAFCCD8, &qword_1D932EC68);
      swift_storeEnumTagMultiPayload();
      sub_1D92A09E8();
      sub_1D92A0A74();
      v76 = v205;
      sub_1D9327104();
      sub_1D92973DC(v76, v212, &qword_1ECAFCC90, &qword_1D932EC20);
      swift_storeEnumTagMultiPayload();
      sub_1D92A0B30();
      sub_1D92A0BBC();
      sub_1D9327104();
      sub_1D92933A0(v76, &qword_1ECAFCC90, &qword_1D932EC20);
      sub_1D92933A0(v67, &qword_1ECAFCCD8, &qword_1D932EC68);
      v77 = v63;
      v78 = &qword_1ECAFCD48;
LABEL_31:
      v126 = v62;
      return sub_1D92933A0(v77, v78, v126);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D92A092C();
    sub_1D9327104();
    v82 = &qword_1ECAFCC68;
    v62 = &qword_1D932EBF8;
    sub_1D92973DC(v48, v212, &qword_1ECAFCC68, &qword_1D932EBF8);
    swift_storeEnumTagMultiPayload();
    sub_1D92A0B30();
    sub_1D92A0BBC();
    sub_1D9327104();
    v77 = v48;
LABEL_30:
    v78 = v82;
    goto LABEL_31;
  }

  if (!EnumCaseMultiPayload)
  {
    v206 = v42;
    sub_1D9327464();
    sub_1D93270D4();
    v53 = sub_1D93270E4();
    (*(*(v53 - 8) + 56))(v33, 0, 1, v53);
    v207 = sub_1D9327474();

    sub_1D92933A0(v33, &qword_1ECAFCE68, &qword_1D932F470);
    v54 = type metadata accessor for ControlIconView(0);
    v55 = v215;
    v56 = *(v215 + v54[5]);
    LODWORD(v208) = *(v215 + v54[6]);
    v57 = (v215 + v54[9]);
    v58 = *v57;
    v59 = v57[1];
    LOBYTE(v57) = *(v57 + 16);
    *&v219 = v58;
    *(&v219 + 1) = v59;
    LOBYTE(v220) = v57;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
    MEMORY[0x1DA72DAB0](&v216, v60);
    v61 = 0;
    if (v216 == 1)
    {
      if (*(v55 + v54[7]))
      {
      }

      else
      {
        v61 = sub_1D92F0C04();
      }
    }

    v215 = v61;
    v113 = sub_1D9326CE4();
    v114 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC80, &qword_1D932EC10) + 36));
    *v114 = v56;
    v115 = type metadata accessor for ImageScaleOverride(0);
    v116 = *(v115 + 20);
    *(v114 + v116) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
    v205 = v56;
    swift_storeEnumTagMultiPayload();
    v117 = *(v115 + 24);
    v118 = v207;

    *(v114 + v117) = sub_1D9326CC4();
    *v40 = v118;
    v40[1] = v113;
    v119 = swift_getKeyPath();
    v120 = sub_1D9326CE4();
    v121 = sub_1D9326CE4();

    v122 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC78, &qword_1D932EC08) + 36);
    *v122 = v119;
    v122[8] = 0;
    *(v122 + 2) = v120;
    *(v122 + 3) = v121;
    v123 = (v40 + *(v209 + 36));
    *v123 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v124 = type metadata accessor for SymbolColorEffect(0);
    v125 = v206;
    *(v123 + v124[5]) = v205;
    *(v123 + v124[6]) = v208;
    *(v123 + v124[7]) = v215;
    v82 = &qword_1ECAFCC70;
    v62 = &qword_1D932EC00;
    sub_1D9297374(v40, v125, &qword_1ECAFCC70, &qword_1D932EC00);
    sub_1D92973DC(v125, v46, &qword_1ECAFCC70, &qword_1D932EC00);
    swift_storeEnumTagMultiPayload();
    sub_1D92A092C();
    sub_1D9327104();
    sub_1D92973DC(v48, v212, &qword_1ECAFCC68, &qword_1D932EBF8);
    swift_storeEnumTagMultiPayload();
    sub_1D92A0B30();
    sub_1D92A0BBC();
    sub_1D9327104();
    sub_1D92933A0(v48, &qword_1ECAFCC68, &qword_1D932EBF8);
    v77 = v125;
    goto LABEL_30;
  }

  sub_1D9297374(v51, v208, &qword_1ECAFCBD8, &qword_1D932E920);
  v79 = type metadata accessor for ControlIconView(0);
  v80 = *(v215 + v79[5]);
  if (v80 < 2)
  {
    sub_1D93270D4();
    v83 = 0;
    v81 = v201;
  }

  else
  {
    v81 = v201;
    if (v80 == 3)
    {
      sub_1D93270C4();
    }

    else
    {
      if (v80 != 2)
      {
        v83 = 1;
        goto LABEL_17;
      }

      sub_1D93270B4();
    }

    v83 = 0;
  }

LABEL_17:
  v84 = sub_1D93270E4();
  v85 = *(*(v84 - 8) + 56);
  v85(v29, v83, 1, v84);
  sub_1D9297374(v29, v207, &qword_1ECAFCE68, &qword_1D932F470);
  sub_1D92973DC(v208, v22, &qword_1ECAFCBD8, &qword_1D932E920);
  v86 = v200;
  if ((*(v81 + 48))(v22, 1, v200) == 1)
  {
    sub_1D92933A0(v22, &qword_1ECAFCBD8, &qword_1D932E920);
    if (qword_1ECAFC3D8 != -1)
    {
      swift_once();
    }

    v87 = sub_1D9327474();
    v88 = v215;
    LODWORD(v201) = *(v215 + v79[6]);
    v89 = (v215 + v79[9]);
    v90 = *v89;
    v91 = v89[1];
    LOBYTE(v89) = *(v89 + 16);
    *&v219 = v90;
    *(&v219 + 1) = v91;
    LOBYTE(v220) = v89;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
    MEMORY[0x1DA72DAB0](&v216, v92);
    if (v216 == 1)
    {
      v93 = *(v88 + v79[7]);
      if (v93)
      {
      }

      else
      {
        v93 = sub_1D92F0C04();
      }
    }

    else
    {
      v93 = 0;
    }

    v131 = sub_1D9326CE4();
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC80, &qword_1D932EC10);
    v133 = v185;
    v134 = (v185 + *(v132 + 36));
    *v134 = v80;
    v135 = type metadata accessor for ImageScaleOverride(0);
    v136 = *(v135 + 20);
    *(v134 + v136) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
    swift_storeEnumTagMultiPayload();
    v137 = *(v135 + 24);

    *(v134 + v137) = sub_1D9326CC4();
    *v133 = v87;
    v133[1] = v131;
    v138 = swift_getKeyPath();
    v139 = sub_1D9326CE4();
    v140 = sub_1D9326CE4();

    v141 = v133 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC78, &qword_1D932EC08) + 36);
    *v141 = v138;
    v141[8] = 0;
    *(v141 + 2) = v139;
    *(v141 + 3) = v140;
    v142 = (v133 + *(v209 + 36));
    *v142 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v143 = type metadata accessor for SymbolColorEffect(0);
    *(v142 + v143[5]) = v80;
    *(v142 + v143[6]) = v201;
    *(v142 + v143[7]) = v93;
    v144 = v186;
    sub_1D9297374(v133, v186, &qword_1ECAFCC70, &qword_1D932EC00);
    sub_1D92973DC(v144, v199, &qword_1ECAFCC70, &qword_1D932EC00);
    swift_storeEnumTagMultiPayload();
    sub_1D92A0850();
    sub_1D92A092C();
    v145 = v197;
    sub_1D9327104();
    sub_1D92933A0(v144, &qword_1ECAFCC70, &qword_1D932EC00);
  }

  else
  {
    v195 = v80;
    v94 = v193;
    (*(v81 + 32))(v193, v22, v86);
    if (sub_1D93271D4())
    {
      (*(v81 + 16))(v176, v94, v86);
      sub_1D92973DC(v207, v175, &qword_1ECAFCE68, &qword_1D932F470);
      v95 = v215;
      if (*(v215 + v79[10]) == 1)
      {
        v96 = (v215 + v79[8]);
        v97 = *v96;
        v98 = v96[1];
        LOBYTE(v96) = *(v96 + 16);
        *&v219 = v97;
        *(&v219 + 1) = v98;
        LOBYTE(v220) = v96;
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
        MEMORY[0x1DA72DAB0](&v216, v99);
      }

      sub_1D92973DC(v95 + v79[11], v177, &qword_1ECAFCBE0, &qword_1D932E928);
      sub_1D9327B94();
      sub_1D9327BA4();
      sub_1D9327BB4();
      sub_1D9327B84();
      LODWORD(v177) = *(v95 + v79[6]);
      v127 = v95 + v79[9];
      v128 = *v127;
      v129 = *(v127 + 8);
      LODWORD(v127) = *(v127 + 16);
      v194 = v128;
      *&v219 = v128;
      *(&v219 + 1) = v129;
      v186 = v129;
      LODWORD(v185) = v127;
      LOBYTE(v220) = v127;
      v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
      MEMORY[0x1DA72DAB0](&v216);
      v130 = 0;
      if (v216 == 1)
      {
        if (*(v95 + v79[7]))
        {
        }

        else
        {
          v130 = sub_1D92F0C04();
        }
      }

      v176 = v130;
      v146 = sub_1D9326CE4();
      v147 = v180;
      v148 = v182;
      v149 = v187;
      v150 = v181;
      (*(v180 + 16))(v182, v187, v181);
      *(v148 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCCC8, &qword_1D932EC58) + 36)) = v146;
      v151 = (v148 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCCC0, &qword_1D932EC50) + 36));
      v152 = v195;
      *v151 = v195;
      v153 = type metadata accessor for ImageScaleOverride(0);
      v154 = *(v153 + 20);
      *(v151 + v154) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
      swift_storeEnumTagMultiPayload();
      v155 = *(v153 + 24);
      *(v151 + v155) = sub_1D9326CC4();
      v156 = swift_getKeyPath();
      v157 = sub_1D9326CE4();
      v158 = sub_1D9326CE4();
      (*(v147 + 8))(v149, v150);
      v159 = v148 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCCB8, &qword_1D932EC48) + 36);
      *v159 = v156;
      *(v159 + 8) = 0;
      *(v159 + 16) = v157;
      *(v159 + 24) = v158;
      v160 = (v148 + *(v179 + 36));
      *v160 = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v161 = type metadata accessor for SymbolColorEffect(0);
      *(v160 + v161[5]) = v152;
      *(v160 + v161[6]) = v177;
      *(v160 + v161[7]) = v176;
      v162 = (v215 + v79[8]);
      v163 = *v162;
      v164 = v162[1];
      LOBYTE(v162) = *(v162 + 16);
      *&v219 = v163;
      *(&v219 + 1) = v164;
      LOBYTE(v220) = v162;
      sub_1D9327524();
      v165 = v216;
      v166 = v217;
      v167 = v218;
      *&v219 = v194;
      *(&v219 + 1) = v186;
      LOBYTE(v220) = v185;
      sub_1D9327524();
      v168 = v183;
      sub_1D92A0568(v165, v166, v167, v216, v217, v218, v183);

      sub_1D92933A0(v148, &qword_1ECAFCCB0, &qword_1D932EC40);
      v169 = v184;
      v170 = v189;
      (*(v184 + 16))(v191, v168, v189);
      swift_storeEnumTagMultiPayload();
      v171 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCA8, &qword_1D932EC38);
      v172 = sub_1D92F8D38();
      *&v219 = v171;
      *(&v219 + 1) = MEMORY[0x1E69E6370];
      *&v220 = v172;
      *(&v220 + 1) = MEMORY[0x1E69E6388];
      swift_getOpaqueTypeConformance2();
      sub_1D92A0794();
      v112 = v190;
      sub_1D9327104();
      (*(v169 + 8))(v168, v170);
      v86 = v200;
      v94 = v193;
    }

    else
    {
      v85(v33, 1, 1, v84);
      v100 = sub_1D93271A4();
      sub_1D92933A0(v33, &qword_1ECAFCE68, &qword_1D932F470);
      v101 = *(v215 + v79[6]);
      v102 = *(type metadata accessor for RasterizedImageView(0) + 32);
      v103 = swift_getKeyPath();
      v104 = v178;
      *&v178[v102] = v103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
      swift_storeEnumTagMultiPayload();
      v105 = v195;
      *v104 = v100;
      *(v104 + 8) = v105;
      *(v104 + 16) = v101;
      *(v104 + 24) = 0;
      *(v104 + 32) = 0;
      *(v104 + 40) = 1;
      v106 = swift_getKeyPath();
      v107 = sub_1D9326CE4();
      v108 = sub_1D9326CE4();
      v109 = v104 + *(v192 + 36);
      *v109 = v106;
      *(v109 + 8) = 0;
      *(v109 + 16) = v107;
      *(v109 + 24) = v108;
      sub_1D92973DC(v104, v191, &qword_1ECAFCCD0, &qword_1D932EC60);
      swift_storeEnumTagMultiPayload();
      v110 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCA8, &qword_1D932EC38);
      v111 = sub_1D92F8D38();
      *&v219 = v110;
      *(&v219 + 1) = MEMORY[0x1E69E6370];
      *&v220 = v111;
      *(&v220 + 1) = MEMORY[0x1E69E6388];
      swift_getOpaqueTypeConformance2();
      sub_1D92A0794();
      v112 = v190;
      sub_1D9327104();
      sub_1D92933A0(v104, &qword_1ECAFCCD0, &qword_1D932EC60);
    }

    sub_1D92973DC(v112, v199, &qword_1ECAFCCA0, &qword_1D932EC30);
    swift_storeEnumTagMultiPayload();
    sub_1D92A0850();
    sub_1D92A092C();
    v145 = v197;
    sub_1D9327104();
    sub_1D92933A0(v112, &qword_1ECAFCCA0, &qword_1D932EC30);
    (*(v201 + 8))(v94, v86);
  }

  sub_1D92973DC(v145, v204, &qword_1ECAFCC98, &qword_1D932EC28);
  swift_storeEnumTagMultiPayload();
  sub_1D92A09E8();
  sub_1D92A0A74();
  v173 = v205;
  sub_1D9327104();
  sub_1D92973DC(v173, v212, &qword_1ECAFCC90, &qword_1D932EC20);
  swift_storeEnumTagMultiPayload();
  sub_1D92A0B30();
  sub_1D92A0BBC();
  sub_1D9327104();
  sub_1D92933A0(v173, &qword_1ECAFCC90, &qword_1D932EC20);
  sub_1D92933A0(v145, &qword_1ECAFCC98, &qword_1D932EC28);
  sub_1D92933A0(v207, &qword_1ECAFCE68, &qword_1D932F470);
  v78 = &qword_1ECAFCBD8;
  v126 = &qword_1D932E920;
  v77 = v208;
  return sub_1D92933A0(v77, v78, v126);
}

uint64_t sub_1D92A041C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D9326FA4();
  *a1 = result;
  return result;
}

uint64_t sub_1D92A047C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D929E614(a2);
  v5 = *(v2 + *(a1 + 20));
  v6 = sub_1D9326CA4();
  v7 = sub_1D9326CA4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD0, &qword_1D932E918);
  v9 = (a2 + *(result + 36));
  *v9 = v5;
  v9[1] = v6;
  v9[2] = v7;
  return result;
}

uint64_t sub_1D92A0568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v22[1] = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCCA8, &qword_1D932EC38);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  *(v17 + 56) = a6;
  sub_1D92973DC(v7, v16, &qword_1ECAFCCB0, &qword_1D932EC40);
  v18 = &v16[*(v14 + 36)];
  *v18 = sub_1D92FAFA4;
  *(v18 + 1) = v17;
  v25 = a1;
  v26 = a2;
  v27 = a3;

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
  MEMORY[0x1DA72DAB0](&v24, v19);
  v23 = v24;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  sub_1D92F8D38();

  sub_1D9327324();

  return sub_1D92933A0(v16, &qword_1ECAFCCA8, &qword_1D932EC38);
}

unint64_t sub_1D92A0794()
{
  result = qword_1EDE3BEE0;
  if (!qword_1EDE3BEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCD0, &qword_1D932EC60);
    sub_1D9297444(qword_1EDE3CE50, type metadata accessor for RasterizedImageView, &unk_1D932F0B4);
    sub_1D92F8CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BEE0);
  }

  return result;
}

unint64_t sub_1D92A0850()
{
  result = qword_1EDE3BDD0;
  if (!qword_1EDE3BDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCA0, &qword_1D932EC30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCA8, &qword_1D932EC38);
    sub_1D92F8D38();
    swift_getOpaqueTypeConformance2();
    sub_1D92A0794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDD0);
  }

  return result;
}

unint64_t sub_1D92A092C()
{
  result = qword_1EDE3BE30;
  if (!qword_1EDE3BE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC70, &qword_1D932EC00);
    sub_1D92F8B1C();
    sub_1D9297444(qword_1EDE3D0E8, type metadata accessor for SymbolColorEffect, &unk_1D932F104);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE30);
  }

  return result;
}

unint64_t sub_1D92A09E8()
{
  result = qword_1EDE3BDB0;
  if (!qword_1EDE3BDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC98, &qword_1D932EC28);
    sub_1D92A0850();
    sub_1D92A092C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDB0);
  }

  return result;
}

unint64_t sub_1D92A0A74()
{
  result = qword_1EDE3BEF0;
  if (!qword_1EDE3BEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCD8, &qword_1D932EC68);
    sub_1D9297444(&qword_1EDE3DA10, type metadata accessor for AppIconView, &unk_1D932F064);
    sub_1D92F8CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BEF0);
  }

  return result;
}

unint64_t sub_1D92A0B30()
{
  result = qword_1EDE3BDC8;
  if (!qword_1EDE3BDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC68, &qword_1D932EBF8);
    sub_1D92A092C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDC8);
  }

  return result;
}

unint64_t sub_1D92A0BBC()
{
  result = qword_1EDE3BD98;
  if (!qword_1EDE3BD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC90, &qword_1D932EC20);
    sub_1D92A09E8();
    sub_1D92A0A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BD98);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D92A0C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v35 = a1;
  v38 = a5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEB8, &qword_1D932F548);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - v6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEC0, &qword_1D932F550);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v32 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEC8, &qword_1D932F558);
  MEMORY[0x1EEE9AC00](v33);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCED0, &qword_1D932F560);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCED8, &qword_1D932F568);
  MEMORY[0x1EEE9AC00](v36);
  v19 = &v32 - v18;
  sub_1D9326CB4();
  if ((v41 & 1) != 0 || (sub_1D9326CB4(), v41 == 1))
  {
    if (a2 == 1)
    {
      sub_1D9326CB4();
      if (v41 == 1)
      {
        v20 = sub_1D9327064();
      }

      else
      {
        v20 = sub_1D9327074();
      }

      v26 = v20;
      v39 = 0;
      v40 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF08, &qword_1D932F598);
      sub_1D93274C4();
      v27 = v41;
      v28 = v42;
      v29 = v43;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEE0, &qword_1D932F570);
      (*(*(v30 - 8) + 16))(v15, v35, v30);
      v31 = &v15[*(v12 + 36)];
      *v31 = v26;
      *(v31 + 1) = v27;
      v31[16] = v28;
      *(v31 + 3) = v29;
      sub_1D9297374(v15, v17, &qword_1ECAFCED0, &qword_1D932F560);
      sub_1D92973DC(v17, v11, &qword_1ECAFCED0, &qword_1D932F560);
      swift_storeEnumTagMultiPayload();
      sub_1D92A144C();
      sub_1D92A1394();
      sub_1D9327104();
      v21 = v17;
      v22 = &qword_1ECAFCED0;
      v23 = &qword_1D932F560;
    }

    else
    {
      sub_1D92A11FC(v35, v9);
      sub_1D92973DC(v9, v11, &qword_1ECAFCEC0, &qword_1D932F550);
      swift_storeEnumTagMultiPayload();
      sub_1D92A144C();
      sub_1D92A1394();
      sub_1D9327104();
      v21 = v9;
      v22 = &qword_1ECAFCEC0;
      v23 = &qword_1D932F550;
    }

    sub_1D92933A0(v21, v22, v23);
    sub_1D92973DC(v19, v7, &qword_1ECAFCED8, &qword_1D932F568);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEE0, &qword_1D932F570);
    sub_1D92A1504();
    sub_1D9290D60(&qword_1EDE3BD88, &qword_1ECAFCEE0, &qword_1D932F570, MEMORY[0x1E697FDF8]);
    sub_1D9327104();
    return sub_1D92933A0(v19, &qword_1ECAFCED8, &qword_1D932F568);
  }

  else
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEE0, &qword_1D932F570);
    (*(*(v24 - 8) + 16))(v7, v35, v24);
    swift_storeEnumTagMultiPayload();
    sub_1D92A1504();
    sub_1D9290D60(&qword_1EDE3BD88, &qword_1ECAFCEE0, &qword_1D932F570, MEMORY[0x1E697FDF8]);
    return sub_1D9327104();
  }
}

uint64_t sub_1D92A11FC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1D9327444();
  KeyPath = swift_getKeyPath();
  v7 = sub_1D9326CE4();
  v8 = sub_1D9326CE4();
  v9 = sub_1D93273A4();
  v10 = sub_1D93270A4();
  sub_1D9326CB4();
  if (v17 == 1)
  {
    v11 = sub_1D9327064();
  }

  else
  {
    v11 = sub_1D9327074();
  }

  v12 = v11;
  v13 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEC0, &qword_1D932F550) + 36);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEE0, &qword_1D932F570);
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF00, &qword_1D932F590);
  v16 = (v13 + *(result + 36));
  *v16 = v10;
  v16[1] = v12;
  *a3 = v5;
  *(a3 + 8) = KeyPath;
  *(a3 + 16) = 0;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  return result;
}

unint64_t sub_1D92A1394()
{
  result = qword_1EDE3BE48;
  if (!qword_1EDE3BE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCEC0, &qword_1D932F550);
    sub_1D92FAE3C();
    sub_1D9290D60(&qword_1EDE3BE18, &qword_1ECAFCF00, &qword_1D932F590, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE48);
  }

  return result;
}

unint64_t sub_1D92A144C()
{
  result = qword_1EDE3BEC0;
  if (!qword_1EDE3BEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCED0, &qword_1D932F560);
    sub_1D9290D60(&qword_1EDE3BD88, &qword_1ECAFCEE0, &qword_1D932F570, MEMORY[0x1E697FDF8]);
    sub_1D92FADE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BEC0);
  }

  return result;
}

unint64_t sub_1D92A1504()
{
  result = qword_1EDE3BDE8;
  if (!qword_1EDE3BDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCED8, &qword_1D932F568);
    sub_1D92A144C();
    sub_1D92A1394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDE8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D92A159C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D92A165C(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  KeyPath = swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDB0, &qword_1D932F3C0);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDB8, &qword_1D932F3C8);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v5;
  return result;
}

uint64_t sub_1D92A165C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D9327034();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDC0, &qword_1D932F3D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD78, &qword_1D932F328);
  sub_1D9326CB4();
  if (v18)
  {

    if ((a2 & 1) == 0)
    {
      sub_1D9328224();
      v13 = sub_1D93271F4();
      sub_1D9326BB4();

      sub_1D9327024();
      swift_getAtKeyPath();
      j__swift_release(a1);
      (*(v7 + 8))(v9, v6);
      a1 = v17;
    }
  }

  else
  {
    v14 = sub_1D9327234();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    a1 = sub_1D9327254();
    sub_1D92933A0(v12, &qword_1ECAFCDC0, &qword_1D932F3D0);
  }

  sub_1D9326CB4();
  if ((v18 & 1) == 0 && a1)
  {

    sub_1D9327244();
    v15 = sub_1D9327264();

    return v15;
  }

  return a1;
}

uint64_t sub_1D92A1900@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D9327494();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D92A196C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D92A19D0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1D92A19D0()
{
  result = qword_1EDE3BD08;
  if (!qword_1EDE3BD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC18, &qword_1D932EA28);
    sub_1D9297444(&qword_1EDE3BD10, MEMORY[0x1E69816E8], MEMORY[0x1E6981700]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BD08);
  }

  return result;
}

uint64_t sub_1D92A1A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC18, &qword_1D932EA28);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_1D9327034();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1D9327494();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImageScaleOverride(0);
  sub_1D92A1DC8(v9);
  sub_1D92A1FA8();
  sub_1D9327044();
  (*(v7 + 8))(v9, v6);
  v14 = *(v11 + 48);
  if (v14(v5, 1, v10) == 1)
  {
    sub_1D92A1FFC(v13);
    if (v14(v5, 1, v10) != 1)
    {
      sub_1D92933A0(v5, &qword_1ECAFCC18, &qword_1D932EA28);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v5, v10);
  }

  KeyPath = swift_getKeyPath();
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD90, &qword_1D932F370) + 36));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD98, &qword_1D932F378);
  (*(v11 + 32))(v16 + *(v17 + 28), v13, v10);
  *v16 = KeyPath;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA0, &qword_1D932F380);
  return (*(*(v18 - 8) + 16))(a2, v21, v18);
}

uint64_t sub_1D92A1DC8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D9327034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1D92973DC(v2, &v13 - v9, &qword_1ECAFCDA8, &qword_1D932F388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v5 + 32))(a1, v10, v4);
  }

  sub_1D9328224();
  v12 = sub_1D93271F4();
  sub_1D9326BB4();

  sub_1D9327024();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D92A1FA8()
{
  result = qword_1EDE3BE08;
  if (!qword_1EDE3BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE08);
  }

  return result;
}

uint64_t sub_1D92A1FFC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9327494();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImageScaleOverride(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD60, &qword_1D932EED8);
  sub_1D9326CB4();
  v7 = v14;
  if (v14)
  {
    v8 = v13;
    if (v13 == 0x6C6C616D73 && v14 == 0xE500000000000000 || (sub_1D9328654() & 1) != 0)
    {

      v9 = MEMORY[0x1E69816C8];
      return (*(v4 + 104))(a1, *v9, v3);
    }

    if (v8 == 0x6D756964656DLL && v7 == 0xE600000000000000 || (sub_1D9328654() & 1) != 0)
    {

      v9 = MEMORY[0x1E69816E0];
      return (*(v4 + 104))(a1, *v9, v3);
    }

    if (v8 == 0x656772616CLL && v7 == 0xE500000000000000 || (sub_1D9328654() & 1) != 0)
    {

      v9 = MEMORY[0x1E69816C0];
      return (*(v4 + 104))(a1, *v9, v3);
    }

    if (v8 == 0xD000000000000014 && 0x80000001D9337340 == v7 || (sub_1D9328654() & 1) != 0)
    {

      v9 = MEMORY[0x1E69816B0];
      return (*(v4 + 104))(a1, *v9, v3);
    }

    if (v8 == 0xD000000000000015 && 0x80000001D9337320 == v7 || (sub_1D9328654() & 1) != 0)
    {

      v9 = MEMORY[0x1E69816B8];
      return (*(v4 + 104))(a1, *v9, v3);
    }

    if (v8 == 0xD000000000000014 && 0x80000001D9337300 == v7)
    {

LABEL_27:
      v9 = MEMORY[0x1E69816A8];
      return (*(v4 + 104))(a1, *v9, v3);
    }

    v11 = sub_1D9328654();

    if (v11)
    {
      goto LABEL_27;
    }
  }

  if (*v1 > 3uLL)
  {
    v12 = MEMORY[0x1E69816E0];
  }

  else
  {
    v12 = qword_1E8575F18[*v1];
  }

  (*(v4 + 104))(v6, *v12, v3);
  return (*(v4 + 32))(a1, v6, v3);
}

uint64_t sub_1D92A2358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD78, &qword_1D932F328);
  sub_1D9326CB4();
  if (v9)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v8;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD80, &qword_1D932F330);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD88, &qword_1D932F338);
  v7 = a2 + *(result + 36);
  *v7 = 0;
  *(v7 + 8) = v4;
  return result;
}

uint64_t ControlIconView.init(systemName:tint:isActive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a3;
  v9 = type metadata accessor for ControlIconView.Mode(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = a1;
  v11[1] = a2;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v29) = a4;
  sub_1D9327544();
  v12 = v32;
  v13 = v33;
  v14 = v34;
  v28 = a4;
  sub_1D9327544();
  v25 = v30;
  v26 = v29;
  v15 = v31;
  v16 = type metadata accessor for ControlIconView(0);
  v17 = v16[7];
  *(a5 + v16[10]) = 1;
  v18 = v16[11];
  v19 = sub_1D9326E44();
  (*(*(v19 - 8) + 56))(a5 + v18, 1, 1, v19);
  v20 = a5 + v16[12];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  sub_1D929705C(v11, a5, type metadata accessor for ControlIconView.Mode);
  *(a5 + v16[5]) = 0;
  *(a5 + v16[6]) = 1;
  *(a5 + v17) = v27;
  v21 = a5 + v16[8];
  *v21 = v12;
  *(v21 + 8) = v13;
  *(v21 + 16) = v14;
  result = sub_1D929748C(v11, type metadata accessor for ControlIconView.Mode);
  v23 = a5 + v16[9];
  v24 = v25;
  *v23 = v26;
  *(v23 + 8) = v24;
  *(v23 + 16) = v15;
  return result;
}

void *sub_1D92A2628@<X0>(void *a1@<X8>)
{
  sub_1D929E550();
  result = sub_1D9327044();
  *a1 = v3;
  return result;
}

uint64_t ControlIconView.controlIconViewStyle(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D929705C(v2, a2, type metadata accessor for ControlIconView);
  result = type metadata accessor for ControlIconView(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1D92A26E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9327034();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v1 + *(type metadata accessor for SymbolColorEffect(0) + 28)))
  {
    sub_1D92A1DC8(v6);
    sub_1D92A40DC(v25, 0.4, 0.6);
    result = (*(v4 + 8))(v6, v3);
    v8 = v25[0];
    v9 = v25[1];
    v10 = v25[2];
    v11 = v26;
    v12 = v27;
    v13 = vmulq_f32(v28, vdupq_n_s32(0x3F0CCCCDu));
    v14 = v29 * 0.55;
  }

  else
  {
    sub_1D9327374();
    sub_1D92A1DC8(v6);
    sub_1D93273E4();
    v16 = v15;
    sub_1D93273F4();
    *&v18 = v17 * v16;
    v23 = v18;
    sub_1D9327414();
    *&v20 = v16 * v19;
    v24 = v20;
    sub_1D9327404();
    v22 = v21;

    result = (*(v4 + 8))(v6, v3);
    *&v9 = v23;
    v12 = v16 * v22;
    *(&v9 + 1) = COERCE_UNSIGNED_INT(1.0);
    LODWORD(v10) = 0;
    HIDWORD(v10) = 0;
    *(&v10 + 4) = v24;
    v11 = 1065353216;
    v13 = xmmword_1D932E8E0;
    v8 = xmmword_1D932E8A0;
    v14 = 0.0;
  }

  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 60) = v13;
  *(a1 + 76) = v14;
  return result;
}

uint64_t sub_1D92A292C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a1;
  v111 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDC8, &qword_1D932F3D8);
  MEMORY[0x1EEE9AC00](v100);
  v92 = &v86 - v3;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDD0, &qword_1D932F3E0);
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v86 - v4;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDD8, &qword_1D932F3E8);
  MEMORY[0x1EEE9AC00](v106);
  v101 = &v86 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDE0, &qword_1D932F3F0);
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v86 - v6;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDE8, &qword_1D932F3F8);
  v7 = MEMORY[0x1EEE9AC00](v97);
  v89 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v86 - v9;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDF0, &qword_1D932F400);
  MEMORY[0x1EEE9AC00](v96);
  v88 = &v86 - v10;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDF8, &qword_1D932F408);
  MEMORY[0x1EEE9AC00](v108);
  v110 = &v86 - v11;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE00, &qword_1D932F410);
  MEMORY[0x1EEE9AC00](v103);
  v105 = &v86 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE08, &qword_1D932F418);
  MEMORY[0x1EEE9AC00](v94);
  v14 = &v86 - v13;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE10, &qword_1D932F420);
  MEMORY[0x1EEE9AC00](v104);
  v95 = &v86 - v15;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE18, &qword_1D932F428);
  MEMORY[0x1EEE9AC00](v109);
  v17 = &v86 - v16;
  v102 = sub_1D9327034();
  v18 = *(v102 - 8);
  v19 = MEMORY[0x1EEE9AC00](v102);
  v21 = (&v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = (&v86 - v23);
  MEMORY[0x1EEE9AC00](v22);
  v26 = (&v86 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE20, &qword_1D932F430);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v86 - v28;
  v30 = type metadata accessor for SymbolColorEffect(0);
  v31 = *(v2 + v30[5]);
  if (v31 > 1)
  {
    if (v31 == 3)
    {
      v62 = v17;
      sub_1D92A1DC8(v26);
      sub_1D92F8514();
      sub_1D9327044();
      v63 = *(v18 + 8);
      v64 = v102;
      v63(v26, v102);
      v65 = v115;
      sub_1D92A1DC8(v24);
      sub_1D92F8568();
      sub_1D9327044();
      v63(v24, v64);
      v66 = v115;
      sub_1D92A1DC8(v21);
      sub_1D92F85BC();
      sub_1D9327044();
      v63(v21, v64);
      v67 = v115;
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE28, &qword_1D932F438);
      v69 = v92;
      (*(*(v68 - 8) + 16))(v92, v107, v68);
      v70 = (v69 + *(v100 + 36));
      *v70 = v65;
      v70[1] = v66;
      v70[2] = v67;
      sub_1D92973DC(v69, v99, &qword_1ECAFCDC8, &qword_1D932F3D8);
      swift_storeEnumTagMultiPayload();
      sub_1D92FA3D8();
      sub_1D92FA574();
      v71 = v101;
      sub_1D9327104();
      sub_1D92973DC(v71, v105, &qword_1ECAFCDD8, &qword_1D932F3E8);
      swift_storeEnumTagMultiPayload();
      sub_1D92A4318();
      sub_1D92A45C0();
      sub_1D9327104();
      sub_1D92933A0(v71, &qword_1ECAFCDD8, &qword_1D932F3E8);
      sub_1D92973DC(v62, v110, &qword_1ECAFCE18, &qword_1D932F428);
      swift_storeEnumTagMultiPayload();
      sub_1D92A43A4();
      sub_1D9290D60(&qword_1EDE3BD80, &qword_1ECAFCE28, &qword_1D932F438, MEMORY[0x1E697FDF8]);
      sub_1D9327104();
      sub_1D92933A0(v62, &qword_1ECAFCE18, &qword_1D932F428);
      v42 = v69;
      v43 = &qword_1ECAFCDC8;
      v44 = &qword_1D932F3D8;
    }

    else
    {
      if (v31 != 2)
      {
        goto LABEL_9;
      }

      sub_1D92A1DC8(v26);
      sub_1D92FA658();
      sub_1D9327044();
      (*(v18 + 8))(v26, v102);
      v39 = v115;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE28, &qword_1D932F438);
      (*(*(v40 - 8) + 16))(v29, v107, v40);
      *&v29[*(v27 + 36)] = v39;
      sub_1D92973DC(v29, v14, &qword_1ECAFCE20, &qword_1D932F430);
      swift_storeEnumTagMultiPayload();
      sub_1D92A4234();
      sub_1D92A4430();
      v41 = v95;
      sub_1D9327104();
      sub_1D92973DC(v41, v105, &qword_1ECAFCE10, &qword_1D932F420);
      swift_storeEnumTagMultiPayload();
      sub_1D92A4318();
      sub_1D92A45C0();
      sub_1D9327104();
      sub_1D92933A0(v41, &qword_1ECAFCE10, &qword_1D932F420);
      sub_1D92973DC(v17, v110, &qword_1ECAFCE18, &qword_1D932F428);
      swift_storeEnumTagMultiPayload();
      sub_1D92A43A4();
      sub_1D9290D60(&qword_1EDE3BD80, &qword_1ECAFCE28, &qword_1D932F438, MEMORY[0x1E697FDF8]);
      sub_1D9327104();
      sub_1D92933A0(v17, &qword_1ECAFCE18, &qword_1D932F428);
      v42 = v29;
      v43 = &qword_1ECAFCE20;
      v44 = &qword_1D932F430;
    }
  }

  else
  {
    v32 = v30;
    if (v31)
    {
      if (v31 == 1)
      {
        v33 = *(v2 + v30[7]);
        v87 = v17;
        if (v33)
        {
          swift_retain_n();
          v34 = sub_1D9327394();
          sub_1D92A1DC8(v26);
          v96 = sub_1D92F62C8(v34, v26, v33, 0.1);

          v35 = *(v18 + 8);
          v36 = v102;
          v35(v26, v102);

          v37 = sub_1D9327394();
          v38 = v2;
          sub_1D92A1DC8(v26);
          sub_1D92F62C8(v37, v26, v33, 0.1);

          v35(v26, v36);
        }

        else
        {
          v38 = v2;
          v36 = v102;
          if (*(v2 + v30[6]))
          {
            v96 = sub_1D9327374();
            sub_1D9327374();
          }

          else
          {
            v96 = sub_1D93273B4();
            sub_1D93273B4();
          }
        }

        v72 = sub_1D93273C4();

        if (v33)
        {
          v73 = sub_1D9327394();
          sub_1D92A1DC8(v26);
          sub_1D92F62C8(v73, v26, v33, 0.1);

          (*(v18 + 8))(v26, v36);
        }

        else if (*(v38 + v32[6]))
        {
          sub_1D9327374();
        }

        else
        {
          sub_1D93273B4();
        }

        v74 = v107;
        v75 = v91;
        v76 = v90;
        v77 = v89;
        v78 = sub_1D93273C4();

        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE28, &qword_1D932F438);
        (*(*(v79 - 8) + 16))(v75, v74, v79);
        v80 = (v75 + *(v76 + 36));
        *v80 = v96;
        v80[1] = v72;
        v80[2] = v78;
        v81 = MEMORY[0x1DA72DBA0](0.5, 1.0, 0.0);
        sub_1D9297374(v75, v77, &qword_1ECAFCDE0, &qword_1D932F3F0);
        v82 = (v77 + *(v97 + 36));
        *v82 = v81;
        v82[1] = v33;
        v83 = v93;
        sub_1D9297374(v77, v93, &qword_1ECAFCDE8, &qword_1D932F3F8);
        sub_1D92973DC(v83, v99, &qword_1ECAFCDE8, &qword_1D932F3F8);
        swift_storeEnumTagMultiPayload();
        sub_1D92FA3D8();
        sub_1D92FA574();

        v84 = v101;
        sub_1D9327104();
        sub_1D92973DC(v84, v105, &qword_1ECAFCDD8, &qword_1D932F3E8);
        swift_storeEnumTagMultiPayload();
        sub_1D92A4318();
        sub_1D92A45C0();
        v85 = v87;
        sub_1D9327104();
        sub_1D92933A0(v84, &qword_1ECAFCDD8, &qword_1D932F3E8);
        sub_1D92973DC(v85, v110, &qword_1ECAFCE18, &qword_1D932F428);
        swift_storeEnumTagMultiPayload();
        sub_1D92A43A4();
        sub_1D9290D60(&qword_1EDE3BD80, &qword_1ECAFCE28, &qword_1D932F438, MEMORY[0x1E697FDF8]);
        sub_1D9327104();
        sub_1D92933A0(v85, &qword_1ECAFCE18, &qword_1D932F428);
        v42 = v83;
        v43 = &qword_1ECAFCDE8;
        v44 = &qword_1D932F3F8;
        return sub_1D92933A0(v42, v43, v44);
      }

LABEL_9:
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE28, &qword_1D932F438);
      (*(*(v45 - 8) + 16))(v110, v107, v45);
      swift_storeEnumTagMultiPayload();
      sub_1D92A43A4();
      sub_1D9290D60(&qword_1EDE3BD80, &qword_1ECAFCE28, &qword_1D932F438, MEMORY[0x1E697FDF8]);
      return sub_1D9327104();
    }

    v87 = v17;
    sub_1D92A3F14(v112);
    sub_1D92A26E4(v113);
    sub_1D92A3CCC(v114);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE28, &qword_1D932F438);
    v48 = v88;
    (*(*(v47 - 8) + 16))(v88, v107, v47);
    v49 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE38, &qword_1D932F448) + 36));
    v50 = v114[3];
    v49[12] = v114[2];
    v49[13] = v50;
    v49[14] = v114[4];
    v51 = v113[4];
    v49[8] = v113[3];
    v49[9] = v51;
    v52 = v114[1];
    v49[10] = v114[0];
    v49[11] = v52;
    v53 = v113[0];
    v49[4] = v112[4];
    v49[5] = v53;
    v54 = v113[2];
    v49[6] = v113[1];
    v49[7] = v54;
    v55 = v112[1];
    *v49 = v112[0];
    v49[1] = v55;
    v56 = v112[3];
    v49[2] = v112[2];
    v49[3] = v56;
    v57 = MEMORY[0x1DA72DBA0](0.2, 1.0, 0.0);
    v58 = *(v2 + v32[7]);
    v59 = (v48 + *(v96 + 36));
    *v59 = v57;
    v59[1] = v58;
    sub_1D92973DC(v48, v14, &qword_1ECAFCDF0, &qword_1D932F400);
    swift_storeEnumTagMultiPayload();
    sub_1D92A4234();
    sub_1D92A4430();

    v60 = v95;
    sub_1D9327104();
    sub_1D92973DC(v60, v105, &qword_1ECAFCE10, &qword_1D932F420);
    swift_storeEnumTagMultiPayload();
    sub_1D92A4318();
    sub_1D92A45C0();
    v61 = v87;
    sub_1D9327104();
    sub_1D92933A0(v60, &qword_1ECAFCE10, &qword_1D932F420);
    sub_1D92973DC(v61, v110, &qword_1ECAFCE18, &qword_1D932F428);
    swift_storeEnumTagMultiPayload();
    sub_1D92A43A4();
    sub_1D9290D60(&qword_1EDE3BD80, &qword_1ECAFCE28, &qword_1D932F438, MEMORY[0x1E697FDF8]);
    sub_1D9327104();
    sub_1D92933A0(v61, &qword_1ECAFCE18, &qword_1D932F428);
    v42 = v48;
    v43 = &qword_1ECAFCDF0;
    v44 = &qword_1D932F400;
  }

  return sub_1D92933A0(v42, v43, v44);
}

uint64_t sub_1D92A3CCC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9327034();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v1 + *(type metadata accessor for SymbolColorEffect(0) + 28)))
  {
    sub_1D92A1DC8(v6);
    sub_1D92A40DC(v25, 0.4, 0.6);
    result = (*(v4 + 8))(v6, v3);
    v8 = v25[0];
    v9 = v25[1];
    v10 = v25[2];
    v11 = v26;
    v12 = v27;
    v13 = vmulq_f32(v28, vdupq_n_s32(0x3E9AE148u));
    v14 = v29 * 0.3025;
  }

  else
  {
    sub_1D9327374();
    sub_1D92A1DC8(v6);
    sub_1D93273E4();
    v16 = v15;
    sub_1D93273F4();
    *&v18 = v17 * v16;
    v23 = v18;
    sub_1D9327414();
    *&v20 = v16 * v19;
    v24 = v20;
    sub_1D9327404();
    v22 = v21;

    result = (*(v4 + 8))(v6, v3);
    *&v9 = v23;
    v12 = v16 * v22;
    *(&v9 + 1) = COERCE_UNSIGNED_INT(1.0);
    LODWORD(v10) = 0;
    HIDWORD(v10) = 0;
    *(&v10 + 4) = v24;
    v11 = 1065353216;
    v13 = xmmword_1D932E8E0;
    v8 = xmmword_1D932E8A0;
    v14 = 0.0;
  }

  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 60) = v13;
  *(a1 + 76) = v14;
  return result;
}

double sub_1D92A3F14@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9327034();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v1 + *(type metadata accessor for SymbolColorEffect(0) + 28)))
  {
    sub_1D92A1DC8(v6);
    sub_1D92A40DC(&v15, 0.4, 0.6);
    (*(v4 + 8))(v6, v3);
    v7 = v19;
    v8 = v18;
    v12 = v15;
    v13 = v16;
    v14[0] = *v17;
    *(v14 + 12) = *&v17[12];
  }

  else
  {
    sub_1D93273B4();
    sub_1D92A1DC8(v6);
    sub_1D92A44E8(&v15);
    v12 = v15;
    v13 = v16;
    v14[0] = *v17;
    *(v14 + 12) = *&v17[12];
    v11 = v18;
    v7 = v19;

    (*(v4 + 8))(v6, v3);
    v8 = v11;
  }

  v9 = v13;
  *a1 = v12;
  *(a1 + 16) = v9;
  *(a1 + 32) = v14[0];
  result = *(v14 + 12);
  *(a1 + 44) = *(v14 + 12);
  *(a1 + 60) = v8;
  *(a1 + 76) = v7;
  return result;
}

void sub_1D92A40DC(uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>)
{
  sub_1D93273E4();
  v13 = (v10 * 0.0721) + ((*v8.i32 * 0.2125) + (*v9.i32 * 0.7154));
  v14 = 1.0;
  if (((1.0 - v15) + (v15 * v13)) <= a5)
  {
    sub_1D92A44E8(v27);
    v22 = v27[0];
    v20 = v27[1];
    v26 = v28;
    v21 = v29;
    v24 = v30;
    v25 = v31;
    v14 = v32;
  }

  else
  {
    v16 = 1.0 / v13;
    *v11.i8 = vmul_n_f32(0x3F3724743E59999ALL, v16);
    *&v22 = vmul_n_f32(*v11.i8, *v8.i32);
    v17 = v16 * 0.0721;
    *&v18 = *v8.i32 * v17;
    *v12.i32 = -a4;
    v8.i32[1] = v9.i32[0];
    v19 = vextq_s8(vextq_s8(v12, v12, 4uLL), v11, 0xCuLL);
    v19.f32[3] = v17;
    v20 = vmulq_f32(vzip1q_s32(v8, vdupq_lane_s32(*v8.i8, 1)), v19);
    *&v9.i32[1] = v10;
    v21 = vmulq_f32(vzip1q_s32(v9, vdupq_lane_s32(*v9.i8, 1)), v19);
    *(&v22 + 1) = v18;
    v23 = -(a4 * v10);
    LODWORD(v24) = 0;
    *(&v24 + 1) = 0;
    *(&v24 + 1) = v23;
    v25 = 0;
    v26 = 0;
  }

  *a3 = v22;
  *(a3 + 16) = v20;
  *(a3 + 32) = v26;
  *(a3 + 36) = v21;
  *(a3 + 52) = v24;
  *(a3 + 68) = v25;
  *(a3 + 76) = v14;
}

unint64_t sub_1D92A4234()
{
  result = qword_1EDE3BEB8;
  if (!qword_1EDE3BEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCE20, &qword_1D932F430);
    sub_1D9290D60(&qword_1EDE3BD80, &qword_1ECAFCE28, &qword_1D932F438, MEMORY[0x1E697FDF8]);
    sub_1D9290D60(&qword_1EDE3BD68, &qword_1ECAFCE30, &qword_1D932F440, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BEB8);
  }

  return result;
}

unint64_t sub_1D92A4318()
{
  result = qword_1EDE3BDE0;
  if (!qword_1EDE3BDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCE10, &qword_1D932F420);
    sub_1D92A4234();
    sub_1D92A4430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDE0);
  }

  return result;
}

unint64_t sub_1D92A43A4()
{
  result = qword_1EDE3BDB8;
  if (!qword_1EDE3BDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCE18, &qword_1D932F428);
    sub_1D92A4318();
    sub_1D92A45C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDB8);
  }

  return result;
}

unint64_t sub_1D92A4430()
{
  result = qword_1EDE3BE70;
  if (!qword_1EDE3BE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCDF0, &qword_1D932F400);
    sub_1D92FA2F4();
    sub_1D9290D60(&qword_1EDE3BDF8, &qword_1ECAFCE48, &qword_1D932F458, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE70);
  }

  return result;
}

float sub_1D92A44E8@<S0>(uint64_t a3@<X8>)
{
  sub_1D93273E4();
  v5 = v4;
  v6 = 1.0 - v4;
  sub_1D93273F4();
  v8 = v7 * v5;
  sub_1D9327414();
  v10 = v5 * v9;
  sub_1D9327404();
  *a3 = v6;
  result = v5 * v11;
  *(a3 + 4) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = v8;
  *(a3 + 20) = 0;
  *(a3 + 24) = v6;
  *(a3 + 28) = 0;
  *(a3 + 36) = v10;
  *(a3 + 40) = 0;
  *(a3 + 48) = v6;
  *(a3 + 52) = 0;
  *(a3 + 56) = result;
  *(a3 + 60) = 0;
  *(a3 + 68) = 0;
  *(a3 + 72) = v6;
  *(a3 + 76) = v5;
  return result;
}

unint64_t sub_1D92A45C0()
{
  result = qword_1EDE3BDD8;
  if (!qword_1EDE3BDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCDD8, &qword_1D932F3E8);
    sub_1D92FA3D8();
    sub_1D92FA574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDD8);
  }

  return result;
}

uint64_t sub_1D92A464C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D92A466C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void *sub_1D92A46A8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id sub_1D92A4748@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for WidgetInstanceConfiguration(0) + 36));
  *a2 = v3;

  return v3;
}

void sub_1D92A4790(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  WidgetInstanceConfiguration.tintParameters.setter(v1);
}

id sub_1D92A47C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for WidgetInstanceConfiguration(0) + 60));
  *a2 = v3;

  return v3;
}

id sub_1D92A480C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(a1 + *(type metadata accessor for WidgetInstanceConfiguration(0) + 60)) backgroundViewPolicy];
  *a2 = result;
  return result;
}

uint64_t sub_1D92A4854(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[15]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC448, &qword_1D932CA18);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[20];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1D92A4994(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[15]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC448, &qword_1D932CA18);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[20];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1D92A4AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LaunchType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D92A4B90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LaunchType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D92A4C48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D92993CC();
  *a1 = result;
  return result;
}

uint64_t sub_1D92A4C74(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 24) = *a1;
}

uint64_t sub_1D92A4CC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D9326FC4();
  *a1 = result;
  return result;
}

uint64_t sub_1D92A4D18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D9326FE4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D92A4D88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D9327004();
  *a1 = result;
  return result;
}

uint64_t sub_1D92A4DE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9326F24();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D92A4E38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9326F44();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D92A4E90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9326F64();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D92A4EE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D9326F84();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D92A5030()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A5068()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D92A50EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D92A513C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D92A51F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D92A52BC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1D92A5328(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D92A53E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D92A5494(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D9327A94();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D92A5540(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D9327A94();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1D92A55E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 font];
  *a2 = result;
  return result;
}

id sub_1D92A5634@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 style];
  *a2 = result;
  return result;
}

uint64_t sub_1D92A5684()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A56BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D92A56F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D92993CC();
  *a1 = result;
  return result;
}

uint64_t sub_1D92A5720(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 24) = *a1;
}

id sub_1D92A5764@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

uint64_t sub_1D92A57C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D92D3840();
  *a1 = result;
  return result;
}

uint64_t sub_1D92A57EC(uint64_t *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession____lazy_storage___contentDidChangePublisher) = *a1;
}

uint64_t sub_1D92A58B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_1D92A5908(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_1D92D490C(v5);
}

uint64_t sub_1D92A5964()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D92A59AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D92A5A70()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A5AA8()
{
  v1 = sub_1D9327034();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D92A5B6C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A5BA4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A5BF0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D9327A94();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D92A5C9C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D9327A94();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D92A5D40()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D92A5D88()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A5DFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1D92E90F4(v3);
}

uint64_t sub_1D92A5E5C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A5E94()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_1D92A5F20(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *sub_1D92A5F2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D92E8CF0();
  *a1 = result;
  return result;
}

void sub_1D92A5F58(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D92E8D50(v1);
}

double sub_1D92A5F94@<D0>(uint64_t a1@<X8>)
{
  sub_1D92E9074(v6);
  v2 = v6[1];
  v3 = v7;
  v4 = v8;
  *a1 = v6[0];
  *(a1 + 1) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  result = *&v9;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_1D92A6000@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D92EAC8C();
  *a1 = result;
  return result;
}

uint64_t sub_1D92A6060()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D92A61F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ControlIconView.Mode(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBE0, &qword_1D932E928);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D92A632C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ControlIconView.Mode(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBE0, &qword_1D932E928);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D92A6460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC18, &qword_1D932EA28);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBE0, &qword_1D932E928);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D92A659C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC18, &qword_1D932EA28);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBE0, &qword_1D932E928);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D92A6708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD48, &qword_1D932EDC8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD50, &qword_1D932EDD0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1D92A683C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD48, &qword_1D932EDC8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD50, &qword_1D932EDD0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 24) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D92A6960(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD50, &qword_1D932EDD0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_1D92A6A28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD50, &qword_1D932EDD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D92A6AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD50, &qword_1D932EDD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D92A6BAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD50, &qword_1D932EDD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

uint64_t sub_1D92A6C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD50, &qword_1D932EDD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1D92A6D3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD50, &qword_1D932EDD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D92A6E04()
{
  v1 = type metadata accessor for AppIconView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D9327034();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = *(v5 + *(v1 + 32) + 16);
  if (v10 != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D92A6FC0()
{
  v1 = type metadata accessor for AppIconView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = v3 + *(*(v1 - 8) + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE98, &qword_1D932F4E0) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  swift_unknownObjectRelease();
  v8 = v0 + v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  v11 = v4 + v6;
  v12 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1D9327034();
    (*(*(v13 - 8) + 8))(v8 + v12, v13);
  }

  else
  {
  }

  v14 = v11 & ~v6;
  v15 = *(v8 + *(v1 + 32) + 16);
  if (v15 != 1)
  {
  }

  v16 = type metadata accessor for AppIconImageCache.CacheKey(0);
  if (!(*(*(v16 - 8) + 48))(v0 + v14, 1, v16))
  {
    (*(v10 + 8))(v0 + v14, v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, v14 + v7, v2 | v6 | 7);
}

uint64_t sub_1D92A724C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D92A7284()
{
  v1 = *(type metadata accessor for AppIconImageCache.CacheKey(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEB0, &qword_1D932F520);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  swift_unknownObjectRelease();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
  (*(*(v11 - 8) + 8))(v0 + v3, v11);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v10 | 7);
}

uint64_t sub_1D92A7468()
{
  type metadata accessor for RasterizedImageView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCE98, &qword_1D932F4E0);
  sub_1D9297444(qword_1EDE3CE50, type metadata accessor for RasterizedImageView, &unk_1D932F0B4);
  sub_1D92FA89C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D92A7520()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1D92A7570@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 visibility];
  *a2 = result;
  return result;
}

id sub_1D92A75B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 configuration];
  *a2 = result;
  return result;
}

id sub_1D92A7608@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

uint64_t sub_1D92A7658()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D92A76A0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A76D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D92A7710()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A7750@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironmentDidChangePublisher;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D92A77D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1A8, &qword_1D932FC48);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D92A7914(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1A8, &qword_1D932FC48);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D92A7A7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1D92A7AC4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1D92A7B08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_archiveLastModifiedDate;
  swift_beginAccess();
  return sub_1D9293400(v3 + v4, a2);
}

uint64_t sub_1D92A7B68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D92A7BC0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1D92A7C14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D92A7C74()
{
  v1 = sub_1D9327774();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D92A7D48()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A7DE8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD2C0, &qword_1D9330378);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D92A7EA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD2C0, &qword_1D9330378);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D92A7F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD360, qword_1D93304C8);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 68);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D92A809C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD360, qword_1D93304C8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 68);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D92A81D8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D92A8228()
{
  v1 = sub_1D9326884();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D92A8310(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[7];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = type metadata accessor for ControlInstanceToggle.ViewModel.Option(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[10];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1A8, &qword_1D932FC48);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_1D92A84A0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for ControlInstanceToggle.ViewModel.Option(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1A8, &qword_1D932FC48);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1D92A8624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD360, qword_1D93304C8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D92A86EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD360, qword_1D93304C8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D92A87A4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__CFString *NSStringFromCHUISWidgetEntryContentType(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<Unknown>";
  }

  else
  {
    return off_1E85752E8[a1];
  }
}

void sub_1D92A9640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id CHUISWatchComplicationsWidgetSceneSettingsValueDescription(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((a1 - 89888) <= 4)
  {
    v5 = v3;
  }

  return v4;
}

void sub_1D92AD0B0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D92AD270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v23 = v21;

  _Unwind_Resume(a1);
}

void sub_1D92AF2AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1D92B151C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = CHUISWidgetHostCancelTouchesAssertion;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

id CHUISLogKeybag(uint64_t a1)
{
  if (CHUISLogKeybag_onceToken != -1)
  {
    CHUISLogKeybag_cold_1();
  }

  v2 = CHUISLogKeybag___logObj;

  return v2;
}

void __CHUISLogKeybag_block_invoke()
{
  v0 = os_log_create("com.apple.chrono", "Keybag");
  v1 = CHUISLogKeybag___logObj;
  CHUISLogKeybag___logObj = v0;
}

id CHUISSerializeNSUserActivity(void *a1, void *a2)
{
  v3 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  [v3 setNeedsSave:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CHUISSerializeNSUserActivity_block_invoke;
  v6[3] = &unk_1E85756C8;
  v6[4] = &v13;
  v6[5] = &v7;
  [v3 _createUserActivityDataWithOptions:0 completionHandler:v6];
  if (a2)
  {
    *a2 = v8[5];
  }

  v4 = v14[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v4;
}

void sub_1D92B1AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose((v21 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __CHUISSerializeNSUserActivity_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1D92B30B8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void CHUISSetDefaultRendererBundleID(void *a1)
{
  v2 = a1;
  v1 = v2;
  BSDispatchMain();
}

id CHUISSharedExtensionProviderWithRemote(uint64_t a1)
{
  if (CHUISSharedExtensionProviderWithRemote___once[0] != -1)
  {
    CHUISSharedExtensionProviderWithRemote_cold_1();
  }

  v2 = CHUISSharedExtensionProviderWithRemote___instance;

  return v2;
}

void sub_1D92B4524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1D92B4770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = CHUISWidgetHostViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

__CFString *NSStringFromCHUISWidgetPresentationMode(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"none";
  }

  else
  {
    return off_1E8575C78[a1 - 1];
  }
}

void sub_1D92B7518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19, id a20)
{
  objc_destroyWeak(v20 + 6);
  objc_destroyWeak(v20 + 5);
  objc_destroyWeak(v20 + 4);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  objc_destroyWeak(&a20);

  _Unwind_Resume(a1);
}

void sub_1D92B7848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_1D92B9CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  _Block_object_dispose((v28 - 144), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D92BB8AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));

  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D92BE564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1D92BF858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D92BFB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1D92C13A4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

__CFString *NSStringFromCHUISWidgetVisibility(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Not Visible";
  }

  else
  {
    return off_1E8575C90[a1 - 1];
  }
}

void __CHUISSharedExtensionProviderWithRemote_block_invoke()
{
  v3 = [objc_alloc(MEMORY[0x1E6994398]) initIncludingRelevanceBacked:1];
  [v3 setRemoteWidgetInclusions:2];
  v0 = [objc_alloc(MEMORY[0x1E69943D0]) initWithWidgetsPredicate:v3 controlsPredicate:0];
  v1 = [objc_alloc(MEMORY[0x1E69943C0]) initWithOptions:v0];
  v2 = CHUISSharedExtensionProviderWithRemote___instance;
  CHUISSharedExtensionProviderWithRemote___instance = v1;
}

uint64_t __BacklightServicesHostLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BacklightServicesHostLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

BOOL OUTLINED_FUNCTION_5(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

void OUTLINED_FUNCTION_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1D92C195C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t ColorScheme.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D9326D04();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v8 = MEMORY[0x1E697DBB8];
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v8 = MEMORY[0x1E697DBA8];
LABEL_5:
    v9 = *v8;
    v10 = *(v5 + 104);
    v14 = v5;
    v10(v7, v9, v4);
    (*(v14 + 32))(a2, v7, v4);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }

  v12 = *(v5 + 56);

  return v12(a2, 1, 1, v4);
}

{
  v4 = sub_1D9326D04();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v8 = MEMORY[0x1E697DBB8];
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v8 = MEMORY[0x1E697DBA8];
LABEL_5:
    v9 = *v8;
    v10 = *(v5 + 104);
    v14 = v5;
    v10(v7, v9, v4);
    (*(v14 + 32))(a2, v7, v4);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }

  v12 = *(v5 + 56);

  return v12(a2, 1, 1, v4);
}

uint64_t default argument 1 of ControlSession.init(sessionKey:controlsClient:configuration:keybagStateProvider:)@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EDE3C588 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1D929CF00(&qword_1EDE400D0, v2);
}

uint64_t sub_1D92C1C54(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D92C1C74(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1D92C1CC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D92C1CE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

BOOL sub_1D92C1DA8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1D92C1DEC()
{
  v1 = *v0;
  sub_1D9328724();
  MEMORY[0x1DA72ECE0](v1);
  return sub_1D9328764();
}

uint64_t sub_1D92C1E34(uint64_t a1)
{
  v2 = *v1;
  sub_1D9328724();
  MEMORY[0x1DA72ECE0](v2);
  return sub_1D9328764();
}

uint64_t sub_1D92C1EC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *WidgetInstanceConfiguring.description.getter(uint64_t a1, uint64_t a2)
{
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  MEMORY[0x1EEE9AC00](v84);
  v4 = *(a2 + 184);
  v5 = 0xE000000000000000;
  if (v4(a1, a2))
  {
    sub_1D9328444();

    v6 = v4(a1, a2);
    v7 = (v6 & 1) == 0;
    if (v6)
    {
      v8 = 1702195828;
    }

    else
    {
      v8 = 0x65736C6166;
    }

    if (v7)
    {
      v9 = 0xE500000000000000;
    }

    else
    {
      v9 = 0xE400000000000000;
    }

    MEMORY[0x1DA72E570](v8, v9);

    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
    v10 = 0xD000000000000015;
    v5 = 0x80000001D9336110;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1DA72E570](v10, v5);

  v11 = *(a2 + 160);
  if (v11(a1, a2))
  {
    sub_1D9328444();
    MEMORY[0x1DA72E570](0xD000000000000032, 0x80000001D93360D0);
    v12 = v11(a1, a2);
    v13 = (v12 & 1) == 0;
    if (v12)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v13)
    {
      v15 = 0xE500000000000000;
    }

    else
    {
      v15 = 0xE400000000000000;
    }

    MEMORY[0x1DA72E570](v14, v15);

    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
  }

  MEMORY[0x1DA72E570](0, 0xE000000000000000);

  sub_1D9328444();
  MEMORY[0x1DA72E570](0xD00000000000002ALL, 0x80000001D9335FC0);
  (*(a2 + 64))(a1, a2);
  v16 = sub_1D9327F94();
  MEMORY[0x1DA72E570](v16);

  MEMORY[0x1DA72E570](0x7265646E6572202CLL, 0xEF3D656D65686353);
  v17 = (*(a2 + 208))(a1, a2);
  v18 = [v17 description];
  v19 = sub_1D9327F84();
  v21 = v20;

  MEMORY[0x1DA72E570](v19, v21);

  MEMORY[0x1DA72E570](0xD000000000000015, 0x80000001D9335FF0);
  v22 = (*(a2 + 16))(a1, a2);
  if (v22)
  {
    v23 = v22;
    v24 = [v22 description];

    v25 = sub_1D9327F84();
    v27 = v26;
  }

  else
  {
    v27 = 0xE300000000000000;
    v25 = 7104878;
  }

  MEMORY[0x1DA72E570](v25, v27);

  MEMORY[0x1DA72E570](44, 0xE100000000000000);
  v28 = *(a2 + 88);
  v29 = v28(a1, a2);
  v30 = 0xE000000000000000;
  if (v29)
  {

    sub_1D9328444();

    result = v28(a1, a2);
    if (!result)
    {
      __break(1u);
      goto LABEL_74;
    }

    v32 = result;
    v33 = [result description];

    v34 = sub_1D9327F84();
    v36 = v35;

    MEMORY[0x1DA72E570](v34, v36);

    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
    v29 = 0x61726150746E6974;
    v30 = 0xEF3D73726574656DLL;
  }

  MEMORY[0x1DA72E570](v29, v30);

  v37 = *(a2 + 112);
  v38 = v37(a1, a2);
  v39 = 0xE000000000000000;
  if (v38)
  {

    sub_1D9328444();

    result = v37(a1, a2);
    if (result)
    {
      v40 = result;
      v41 = [result description];

      v42 = sub_1D9327F84();
      v44 = v43;

      MEMORY[0x1DA72E570](v42, v44);

      MEMORY[0x1DA72E570](8236, 0xE200000000000000);
      v38 = 0xD000000000000015;
      v39 = 0x80000001D93360B0;
      goto LABEL_27;
    }

LABEL_74:
    __break(1u);
    return result;
  }

LABEL_27:
  MEMORY[0x1DA72E570](v38, v39);

  v45 = *(a2 + 304);
  v46 = 0xE000000000000000;
  if (v45(a1, a2))
  {
    sub_1D9328444();

    v47 = v45(a1, a2);
    v48 = (v47 & 1) == 0;
    if (v47)
    {
      v49 = 1702195828;
    }

    else
    {
      v49 = 0x65736C6166;
    }

    if (v48)
    {
      v50 = 0xE500000000000000;
    }

    else
    {
      v50 = 0xE400000000000000;
    }

    MEMORY[0x1DA72E570](v49, v50);

    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
    v51 = 0xD000000000000010;
    v46 = 0x80000001D9336090;
  }

  else
  {
    v51 = 0;
  }

  MEMORY[0x1DA72E570](v51, v46);

  v52 = *(a2 + 280);
  v53 = 0xE000000000000000;
  if (v52(a1, a2))
  {
    sub_1D9328444();

    v54 = v52(a1, a2);
    v55 = (v54 & 1) == 0;
    if (v54)
    {
      v56 = 1702195828;
    }

    else
    {
      v56 = 0x65736C6166;
    }

    if (v55)
    {
      v57 = 0xE500000000000000;
    }

    else
    {
      v57 = 0xE400000000000000;
    }

    MEMORY[0x1DA72E570](v56, v57);

    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
    v58 = 0xD000000000000014;
    v53 = 0x80000001D9336070;
  }

  else
  {
    v58 = 0;
  }

  MEMORY[0x1DA72E570](v58, v53);

  v59 = *(a2 + 256);
  v60 = 0xE000000000000000;
  if (v59(a1, a2))
  {
    sub_1D9328444();

    v61 = v59(a1, a2);
    v62 = (v61 & 1) == 0;
    if (v61)
    {
      v63 = 1702195828;
    }

    else
    {
      v63 = 0x65736C6166;
    }

    if (v62)
    {
      v64 = 0xE500000000000000;
    }

    else
    {
      v64 = 0xE400000000000000;
    }

    MEMORY[0x1DA72E570](v63, v64);

    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
    v65 = 0xD000000000000016;
    v60 = 0x80000001D9336050;
  }

  else
  {
    v65 = 0;
  }

  MEMORY[0x1DA72E570](v65, v60);

  v66 = *(a2 + 136);
  v67 = 0xE000000000000000;
  if (v66(a1, a2))
  {
    sub_1D9328444();

    v68 = v66(a1, a2);
    v69 = (v68 & 1) == 0;
    if (v68)
    {
      v70 = 1702195828;
    }

    else
    {
      v70 = 0x65736C6166;
    }

    if (v69)
    {
      v71 = 0xE500000000000000;
    }

    else
    {
      v71 = 0xE400000000000000;
    }

    MEMORY[0x1DA72E570](v70, v71);

    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
    v72 = 0xD000000000000011;
    v67 = 0x80000001D9336030;
  }

  else
  {
    v72 = 0;
  }

  MEMORY[0x1DA72E570](v72, v67);

  v73 = *(a2 + 40);
  v74 = 0xE000000000000000;
  if (v73(a1, a2))
  {
    sub_1D9328444();

    v75 = v73(a1, a2);
    v76 = (v75 & 1) == 0;
    if (v75)
    {
      v77 = 1702195828;
    }

    else
    {
      v77 = 0x65736C6166;
    }

    if (v76)
    {
      v78 = 0xE500000000000000;
    }

    else
    {
      v78 = 0xE400000000000000;
    }

    MEMORY[0x1DA72E570](v77, v78);

    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
    v79 = 0xD00000000000001DLL;
    v74 = 0x80000001D9336010;
  }

  else
  {
    v79 = 0;
  }

  MEMORY[0x1DA72E570](v79, v74);

  MEMORY[0x1DA72E570](538976288, 0xE400000000000000);

  MEMORY[0x1DA72E570](0x69786F727022202CLL, 0xED00003D7974696DLL);
  (*(a2 + 328))(a1, a2);
  v80 = NSStringFromCHSWidgetProximity();
  v81 = sub_1D9327F84();
  v83 = v82;

  MEMORY[0x1DA72E570](v81, v83);

  MEMORY[0x1DA72E570](15906, 0xE200000000000000);
  return 0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id WidgetInstanceConfiguration.displayProperties.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t type metadata accessor for WidgetInstanceConfiguration(uint64_t a1)
{
  result = qword_1ECAFC458;
  if (!qword_1ECAFC458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D92C2BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetInstanceConfiguration(0);
  v5 = v4[6];
  sub_1D92C2CC8(a1, a2 + v5);
  sub_1D92C2CC8(a2 + v5, a2 + v4[7]);
  v6 = a2 + v4[8];

  return sub_1D92C2CC8(a2 + v5, v6);
}

uint64_t WidgetInstanceConfiguration.preferredColorScheme.setter(uint64_t a1)
{
  v3 = type metadata accessor for WidgetInstanceConfiguration(0);
  v4 = v3[6];
  sub_1D92C3C20(a1, v1 + v4, &qword_1ECAFC438, &qword_1D932CA10);
  sub_1D92C2CC8(v1 + v4, v1 + v3[7]);
  v5 = v1 + v3[8];

  return sub_1D92C2CC8(v1 + v4, v5);
}

uint64_t sub_1D92C2CC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*WidgetInstanceConfiguration.preferredColorScheme.modify(uint64_t a1))()
{
  *a1 = v1;
  v3 = type metadata accessor for WidgetInstanceConfiguration(0);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v3 + 24);
  return sub_1D92C2D8C;
}

void *WidgetInstanceConfiguration.tintParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetInstanceConfiguration(0) + 36));
  v2 = v1;
  return v1;
}

void WidgetInstanceConfiguration.tintParameters.setter(void *a1)
{
  v3 = type metadata accessor for WidgetInstanceConfiguration(0);
  v4 = v3[9];

  *(v1 + v4) = a1;
  if ((*(v1 + v3[14]) & 1) == 0)
  {
    v5 = v3[15];
    v6 = *(v1 + v5);
    [v6 mutableCopy];
    sub_1D93283A4();
    swift_unknownObjectRelease();
    sub_1D9296448(0, &qword_1ECAFC440, 0x1E6994320);
    swift_dynamicCast();
    if (a1)
    {
      v7 = [a1 effectiveRenderingMode];
    }

    else
    {
      v7 = 0;
    }

    [v8 setRenderingMode_];

    *(v1 + v5) = v8;
  }
}

id WidgetInstanceConfiguration.renderScheme.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetInstanceConfiguration(0) + 60));

  return v1;
}

void (*WidgetInstanceConfiguration.tintParameters.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = type metadata accessor for WidgetInstanceConfiguration(0);
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 + 36);
  return sub_1D92C312C;
}

void sub_1D92C312C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v4 = *(v2 + 40);
    v3 = *(v2 + 48);
    if ((*(v4 + *(v3 + 56)) & 1) == 0)
    {
      v5 = *(v2 + 56);
      v6 = *(v3 + 60);
      v7 = *(v4 + v6);
      [v7 mutableCopy];
      sub_1D93283A4();
      swift_unknownObjectRelease();
      sub_1D9296448(0, &qword_1ECAFC440, 0x1E6994320);
      swift_dynamicCast();
      v8 = *(v2 + 32);
      v9 = *(v4 + v5);
      if (v9)
      {
        v10 = [v9 effectiveRenderingMode];
      }

      else
      {
        v10 = 0;
      }

      [v8 setRenderingMode_];

      *(v4 + v6) = v8;
    }
  }

  free(v2);
}

void *WidgetInstanceConfiguration.inlineTextParameters.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetInstanceConfiguration(0) + 40));
  v2 = v1;
  return v1;
}

void WidgetInstanceConfiguration.inlineTextParameters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetInstanceConfiguration(0) + 40);

  *(v1 + v3) = a1;
}

uint64_t WidgetInstanceConfiguration.showsWidgetLabel.setter(char a1)
{
  result = type metadata accessor for WidgetInstanceConfiguration(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t WidgetInstanceConfiguration.prefersUnredactedContentInLowLuminanceEnvironment.setter(char a1)
{
  result = type metadata accessor for WidgetInstanceConfiguration(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t WidgetInstanceConfiguration.supportsLowLuminance.setter(char a1)
{
  result = type metadata accessor for WidgetInstanceConfiguration(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

void sub_1D92C34B8(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = type metadata accessor for WidgetInstanceConfiguration(0);
  objc_storeStrong((a2 + *(v4 + 60)), v3);
  *(a2 + *(v4 + 56)) = 1;
}

void WidgetInstanceConfiguration.renderScheme.setter(uint64_t a1)
{
  v3 = type metadata accessor for WidgetInstanceConfiguration(0);
  v4 = *(v3 + 60);

  *(v1 + v4) = a1;
  *(v1 + *(v3 + 56)) = 1;
}

uint64_t (*WidgetInstanceConfiguration.renderScheme.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  v5 = type metadata accessor for WidgetInstanceConfiguration(0);
  *(v4 + 16) = v5;
  v6 = *(v5 + 60);
  *(v4 + 32) = v6;
  v7 = *(v1 + v6);
  *(v4 + 24) = v7;
  *v4 = v7;
  v8 = v7;
  return sub_1D92C35F4;
}

id WidgetInstanceConfiguration.backgroundViewPolicy.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetInstanceConfiguration(0) + 60));

  return [v1 backgroundViewPolicy];
}

void sub_1D92C3634(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for WidgetInstanceConfiguration(0) + 60);
  v5 = *(a2 + v4);
  [v5 mutableCopy];
  sub_1D93283A4();
  swift_unknownObjectRelease();
  sub_1D9296448(0, &qword_1ECAFC440, 0x1E6994320);
  swift_dynamicCast();
  [v6 setBackgroundViewPolicy_];

  *(a2 + v4) = v6;
}

void WidgetInstanceConfiguration.backgroundViewPolicy.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetInstanceConfiguration(0) + 60);
  v4 = *(v1 + v3);
  [v4 mutableCopy];
  sub_1D93283A4();
  swift_unknownObjectRelease();
  sub_1D9296448(0, &qword_1ECAFC440, 0x1E6994320);
  swift_dynamicCast();
  [v5 setBackgroundViewPolicy_];

  *(v1 + v3) = v5;
}

void (*WidgetInstanceConfiguration.backgroundViewPolicy.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(type metadata accessor for WidgetInstanceConfiguration(0) + 60);
  *(v4 + 64) = v5;
  v6 = *(v1 + v5);
  *(v4 + 56) = v6;
  *(v4 + 32) = [v6 backgroundViewPolicy];
  return sub_1D92C3858;
}

void sub_1D92C3858(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 56);
  [v3 mutableCopy];
  sub_1D93283A4();
  swift_unknownObjectRelease();
  sub_1D9296448(0, &qword_1ECAFC440, 0x1E6994320);
  swift_dynamicCast();
  v4 = *(v1 + 40);
  [v4 setBackgroundViewPolicy_];

  *(*(v1 + 48) + *(v1 + 64)) = v4;

  free(v1);
}

uint64_t WidgetInstanceConfiguration.isInteractionDisabled.setter(char a1)
{
  result = type metadata accessor for WidgetInstanceConfiguration(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t WidgetInstanceConfiguration.areAnimationsPaused.setter(char a1)
{
  result = type metadata accessor for WidgetInstanceConfiguration(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t WidgetInstanceConfiguration.isContentPaused.setter(char a1)
{
  result = type metadata accessor for WidgetInstanceConfiguration(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t WidgetInstanceConfiguration.proximity.setter(uint64_t a1)
{
  result = type metadata accessor for WidgetInstanceConfiguration(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t sub_1D92C3C20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t WidgetInstanceConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v2 = type metadata accessor for WidgetInstanceConfiguration(0);
  v3 = v2[6];
  v4 = sub_1D9326D04();
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + v2[7], 1, 1, v4);
  v5(a1 + v2[8], 1, 1, v4);
  *(a1 + v2[9]) = 0;
  *(a1 + v2[10]) = 0;
  *(a1 + v2[11]) = 0;
  *(a1 + v2[12]) = 0;
  *(a1 + v2[13]) = 0;
  *(a1 + v2[14]) = 0;
  v6 = v2[15];
  *(a1 + v6) = [objc_allocWithZone(MEMORY[0x1E6994420]) initWithRenderingMode_];
  *(a1 + v2[16]) = 0;
  *(a1 + v2[17]) = 0;
  *(a1 + v2[18]) = 0;
  *(a1 + v2[19]) = 0;
  v7 = v2[20];
  v8 = sub_1D9327874();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

id sub_1D92C3E60()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_1D92C3F38(uint64_t a1, int *a2)
{
  v4 = a2[6];
  sub_1D92C3C20(a1, v2 + v4, &qword_1ECAFC438, &qword_1D932CA10);
  sub_1D92C2CC8(v2 + v4, v2 + a2[7]);
  v5 = v2 + a2[8];

  return sub_1D92C2CC8(v2 + v4, v5);
}

uint64_t (*sub_1D92C3FA8(uint64_t a1, uint64_t a2))()
{
  *a1 = v2;
  *(a1 + 8) = a2;
  *(a1 + 16) = *(a2 + 24);
  return sub_1D92C4C5C;
}

uint64_t *sub_1D92C3FD4(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(result + 4);
    v5 = *result;
    v4 = result[1];
    sub_1D92C2CC8(*result + v3, *result + *(v4 + 28));
    v6 = v5 + *(v4 + 32);

    return sub_1D92C2CC8(v5 + v3, v6);
  }

  return result;
}

void *sub_1D92C4034(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));
  v3 = v2;
  return v2;
}

uint64_t (*sub_1D92C4064(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = WidgetInstanceConfiguration.tintParameters.modify(v2);
  return sub_1D92C40D4;
}

void *sub_1D92C40D8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  v3 = v2;
  return v2;
}

void sub_1D92C4104(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);

  *(v2 + v4) = a1;
}

void sub_1D92C4220(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 60);

  *(v2 + v5) = a1;
  *(v2 + *(a2 + 56)) = 1;
}

uint64_t (*sub_1D92C4268(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  *(v5 + 8) = v2;
  *(v5 + 16) = a2;
  v6 = *(a2 + 60);
  *(v5 + 32) = v6;
  v7 = *(v2 + v6);
  *(v5 + 24) = v7;
  *v5 = v7;
  v8 = v7;
  return sub_1D92C4C60;
}

void sub_1D92C42F8(void ***a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  v6 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    v8 = v6;

    *&v7[v3] = v8;
    v7[v4[14]] = 1;
  }

  else
  {

    *&v7[v3] = v6;
    v7[v4[14]] = 1;
  }

  free(v2);
}

void sub_1D92C439C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);
  v5 = *(v2 + v4);
  [v5 mutableCopy];
  sub_1D93283A4();
  swift_unknownObjectRelease();
  sub_1D9296448(0, &qword_1ECAFC440, 0x1E6994320);
  swift_dynamicCast();
  [v6 setBackgroundViewPolicy_];

  *(v2 + v4) = v6;
}

uint64_t (*sub_1D92C4458(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = WidgetInstanceConfiguration.backgroundViewPolicy.modify(v2);
  return sub_1D92C4C64;
}

void sub_1D92C44C8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_1D92C4600(uint64_t a1)
{
  result = sub_1D92C4628();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D92C4628()
{
  result = qword_1ECAFC450;
  if (!qword_1ECAFC450)
  {
    type metadata accessor for WidgetInstanceConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC450);
  }

  return result;
}

void sub_1D92C49F4(uint64_t a1)
{
  sub_1D92C4C04(319, &qword_1ECAFC468, &qword_1ECAFC470, 0x1E69943A0);
  if (v1 <= 0x3F)
  {
    sub_1D92C4BB0(319, &qword_1ECAFC478, MEMORY[0x1E697DBD0]);
    if (v2 <= 0x3F)
    {
      sub_1D92C4C04(319, &qword_1ECAFC480, &qword_1EDE3B250, 0x1E6994428);
      if (v3 <= 0x3F)
      {
        sub_1D92C4C04(319, &qword_1ECAFC488, &qword_1ECAFC490, 0x1E69942B8);
        if (v4 <= 0x3F)
        {
          sub_1D9296448(319, &qword_1ECAFC498, 0x1E6994420);
          if (v5 <= 0x3F)
          {
            type metadata accessor for CHSWidgetProximity(319);
            if (v6 <= 0x3F)
            {
              sub_1D92C4BB0(319, &qword_1ECAFC4A0, MEMORY[0x1E6993E88]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D92C4BB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D9328374();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D92C4C04(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1D9296448(255, a3, a4);
    v5 = sub_1D9328374();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D92C4CC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id LaunchRequest.widget.getter()
{
  v1 = *(v0 + *(type metadata accessor for LaunchRequest(0) + 20));

  return v1;
}

void LaunchRequest.widget.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LaunchRequest(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t LaunchRequest.init(launchType:widget:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D92C4E60(a1, a3);
  result = type metadata accessor for LaunchRequest(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1D92C4E60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LaunchRequest.dataForRemoteLaunchRequest()()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteWidgetLaunchRequest(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LaunchType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D92C5138(v1, v7, type metadata accessor for LaunchType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D92C51F8(v7, type metadata accessor for LaunchType);
    }
  }

  else
  {
    v12 = sub_1D9326814();
    (*(*(v12 - 8) + 32))(v10, v7, v12);
  }

  swift_storeEnumTagMultiPayload();
  sub_1D92C5138(v10, v4, type metadata accessor for RemoteWidgetLaunchRequest.LaunchType);
  v13 = *(v1 + *(type metadata accessor for LaunchRequest(0) + 20));
  *&v4[*(v2 + 20)] = v13;
  sub_1D92C51A0();
  v14 = v13;
  v15 = sub_1D9327F04();
  sub_1D92C51F8(v4, type metadata accessor for RemoteWidgetLaunchRequest);
  sub_1D92C51F8(v10, type metadata accessor for RemoteWidgetLaunchRequest.LaunchType);
  return v15;
}

uint64_t sub_1D92C5138(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D92C51A0()
{
  result = qword_1ECAFC4A8;
  if (!qword_1ECAFC4A8)
  {
    type metadata accessor for RemoteWidgetLaunchRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC4A8);
  }

  return result;
}

uint64_t sub_1D92C51F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LaunchType.bsAction()(BSAction_optional *__return_ptr retstr)
{
  v2 = v1;
  v32[8] = *MEMORY[0x1E69E9840];
  v3 = sub_1D9326814();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v32[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32[-1] - v8;
  v10 = type metadata accessor for LaunchType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v32[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D92C5138(v2, v12, type metadata accessor for LaunchType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = *v12;
      v32[0] = 0;
      v17 = CHUISSerializeNSUserActivity(v16, v32);
      v18 = v32[0];
      if (v17)
      {
        v19 = v17;
        v20 = v32[0];
        v21 = sub_1D9326824();
        v23 = v22;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4B0, &qword_1D932CB50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D932CB30;
        *(inited + 32) = 7;
        v25 = inited + 32;
        *(inited + 40) = v21;
        *(inited + 48) = v23;
        v26 = sub_1D92C5DD0(inited);
        swift_setDeallocating();
        sub_1D92C5EDC(v21, v23);
        sub_1D92C5F30(v25);
        sub_1D92C561C(v26);

        v27 = objc_allocWithZone(MEMORY[0x1E69DC630]);
        v28 = sub_1D9327EE4();

        [v27 initWithSettings_];

        sub_1D92C5F98(v21, v23);
      }

      else
      {
        if (v32[0])
        {
          swift_willThrow();
          v18;
        }
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v4 + 32))(v9, v12, v3);
    v29 = objc_allocWithZone(MEMORY[0x1E69DCD00]);
    v30 = sub_1D93267E4();
    [v29 initWithURL_];

    (*(v4 + 8))(v9, v3);
  }

  else
  {
    (*(v4 + 32))(v7, v12, v3);
    v14 = objc_allocWithZone(MEMORY[0x1E69DCD00]);
    v15 = sub_1D93267E4();
    [v14 initWithURL_];

    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1D92C561C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4D0, &qword_1D932CBC0);
    v2 = sub_1D9328574();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 56) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = *v13;
    v15 = v13[1];
    sub_1D92C5EDC(*v13, v15);
    swift_dynamicCast();
    *&v31[0] = v14;
    *(&v31[0] + 1) = v15;
    swift_dynamicCast();
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_1D92C6364(&v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_1D92C6364(v30, v31);
    result = sub_1D9328404();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_1D92C6364(v31, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
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

uint64_t static LaunchType.test_serialize(activity:)(void *a1)
{
  v1 = CHUISSerializeNSUserActivity(a1, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D9326824();

  return v3;
}

unint64_t sub_1D92C5938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4D0, &qword_1D932CBC0);
    v3 = sub_1D9328574();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D92973DC(v4, v13, &qword_1ECAFC4E8, &qword_1D932CBD8);
      result = sub_1D931D52C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D92C6364(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id _s16ChronoUIServices13LaunchRequestV12userActivity3forSo06NSUserF0CSo9CHSWidgetC_tFZ_0(void *a1)
{
  v2 = [a1 intent];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 _className];
      if (!v6)
      {
        sub_1D9327F84();
        v6 = sub_1D9327F74();
      }

      v7 = [objc_allocWithZone(MEMORY[0x1E69636A8]) initWithActivityType_];

      [v7 _setAppIntent_];
      goto LABEL_14;
    }
  }

  v8 = [a1 intent];
  if (v8)
  {
    v3 = v8;
    v9 = [v8 _className];
    if (!v9)
    {
      sub_1D9327F84();
      v9 = sub_1D9327F74();
    }

    v7 = [objc_allocWithZone(MEMORY[0x1E69636A8]) initWithActivityType_];

    v10 = [objc_allocWithZone(MEMORY[0x1E696E8B8]) initWithIntent:v3 response:0];
    [v7 _setInteraction_donate_];
  }

  else
  {
    v3 = [a1 kind];
    if (!v3)
    {
      sub_1D9327F84();
      v3 = sub_1D9327F74();
    }

    v7 = [objc_allocWithZone(MEMORY[0x1E69636A8]) initWithActivityType_];
  }

LABEL_14:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4E0, &qword_1D932CBD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D932CB40;
  v12 = v7;
  v24 = sub_1D9327A14();
  v26 = v13;
  v14 = MEMORY[0x1E69E6158];
  sub_1D9328424();
  v15 = [a1 kind];
  v16 = sub_1D9327F84();
  v18 = v17;

  *(inited + 96) = v14;
  *(inited + 72) = v16;
  *(inited + 80) = v18;
  v25 = sub_1D9327A24();
  v27 = v19;
  sub_1D9328424();
  [a1 family];
  v20 = sub_1D9328264();
  *(inited + 168) = v14;
  *(inited + 144) = v20;
  *(inited + 152) = v21;
  sub_1D92C5938(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4E8, &qword_1D932CBD8);
  swift_arrayDestroy();
  v22 = sub_1D9327EE4();

  [v12 setUserInfo_];

  return v12;
}

unint64_t sub_1D92C5DD0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4D8, &qword_1D932CBC8);
  v3 = sub_1D9328574();
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  result = sub_1D931D570(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v9 = a1 + 9;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    v10 = (v3[7] + 16 * result);
    *v10 = v4;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_1D92C5EDC(v4, v6);
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v9 - 2);
    v4 = *(v9 - 1);
    v6 = *v9;
    result = sub_1D931D570(v5);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D92C5EDC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1D92C5F30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4B8, &qword_1D932CB58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D92C5F98(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1D92C603C(uint64_t a1)
{
  result = sub_1D9326814();
  if (v2 <= 0x3F)
  {
    result = sub_1D9296448(319, &qword_1EDE3B258, 0x1E69636A8);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D92C60E8(uint64_t a1)
{
  result = type metadata accessor for LaunchType(319);
  if (v2 <= 0x3F)
  {
    result = sub_1D9296448(319, &qword_1EDE3B220, 0x1E6994370);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D92C617C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4C0, &qword_1D932CBB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4C8, &qword_1D932CBB8);
    v7 = sub_1D9328574();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D92973DC(v9, v5, &qword_1ECAFC4C0, &qword_1D932CBB0);
      result = sub_1D9293100(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D9327774();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

_OWORD *sub_1D92C6364(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t (*sub_1D92C63CC(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1D92993CC();
  return sub_1D92C6414;
}

uint64_t sub_1D92C6424(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssertMain();
}

uint64_t sub_1D92C6450()
{
  swift_beginAccess();

  v0 = sub_1D93276C4();

  if (v0)
  {
    v1 = sub_1D93277C4();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1D92C64E0@<X0>(uint64_t a3@<X8>)
{
  BSDispatchQueueAssertMain();
  v5 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__cachedTemplate;
  swift_beginAccess();
  return sub_1D92973DC(v3 + v5, a3, &qword_1ECAFC4F0, &qword_1D932CC18);
}

uint64_t sub_1D92C654C@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  BSDispatchQueueAssertMain();
  v5 = *(v4 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 1);
  v6 = *(v4 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 8);
  v7 = *(v4 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 16);
  v9 = *(v4 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 24);
  v8 = *(v4 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 32);
  *a3 = *(v4 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration);
  *(a3 + 1) = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v9;
  *(a3 + 32) = v8;
}

uint64_t sub_1D92C65B8(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 1);
  v4 = a1[16];
  v6 = *(a1 + 3);
  v5 = *(a1 + 4);
  v9[0] = v1;
  v9[1] = v2;
  v10 = v3;
  v11 = v4;
  v12 = v6;
  v13 = v5;

  return sub_1D92C667C(v9, v7);
}

uint64_t sub_1D92C6614@<X0>(uint64_t a3@<X8>)
{
  BSDispatchQueueAssertMain();
  v5 = *(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 1);
  v6 = *(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 8);
  v7 = *(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 16);
  v9 = *(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 24);
  v8 = *(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 32);
  *a3 = *(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration);
  *(a3 + 1) = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v9;
  *(a3 + 32) = v8;
}

uint64_t sub_1D92C667C(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  v6 = a1[16];
  v8 = *(a1 + 3);
  v7 = *(a1 + 4);
  BSDispatchQueueAssertMain();
  v9 = v2 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration;
  v10 = *(v2 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration);
  v11 = *(v2 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 1);
  v12 = *(v2 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 8);
  v16 = *(v9 + 16);
  v13 = *(v9 + 32);
  v15 = *(v9 + 24);
  *v9 = v3;
  *(v9 + 1) = v4;
  *(v9 + 8) = v5;
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  *(v9 + 32) = v7;

  v22[0] = v10;
  v22[1] = v11;
  v23 = v12;
  v24 = v16;
  v25 = v15;
  v26 = v13;
  v17[0] = v3;
  v17[1] = v4;
  v18 = v5;
  v19 = v6;
  v20 = v8;
  v21 = v7;
  sub_1D92C7F9C(v22, v17);
}

void (*sub_1D92C677C(uint64_t *a1))(char **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  BSDispatchQueueAssertMain();
  v5 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration;
  *(v4 + 48) = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration;
  v6 = v1 + v5;
  v7 = *(v6 + 1);
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v11 = *(v6 + 24);
  v10 = *(v6 + 32);
  *v4 = *v6;
  *(v4 + 1) = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v11;
  *(v4 + 32) = v10;

  return sub_1D92C6830;
}

void sub_1D92C6830(char **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 1);
  v6 = (*a1)[16];
  v8 = *(*a1 + 3);
  v7 = *(*a1 + 4);
  v9 = *(*a1 + 5) + *(*a1 + 6);
  if (a2)
  {

    BSDispatchQueueAssertMain();
    v18 = *(v9 + 1);
    v20 = *v9;
    v16 = *(v9 + 8);
    v14 = *(v9 + 16);
    v10 = *(v9 + 32);
    v12 = *(v9 + 24);
    *v9 = v3;
    *(v9 + 1) = v4;
    *(v9 + 8) = v5;
    *(v9 + 16) = v6;
    *(v9 + 24) = v8;
    *(v9 + 32) = v7;

    v22 = v20;
    v23 = v18;
    v24 = v16;
    v25 = v14;
    v26 = v12;
    v27 = v10;
    v28 = v3;
    v29 = v4;
    v30 = v5;
    v31 = v6;
    v32 = v8;
    v33 = v7;
    sub_1D92C7F9C(&v22, &v28);
  }

  else
  {
    BSDispatchQueueAssertMain();
    v19 = *(v9 + 1);
    v21 = *v9;
    v17 = *(v9 + 8);
    v15 = *(v9 + 16);
    v11 = *(v9 + 32);
    v13 = *(v9 + 24);
    *v9 = v3;
    *(v9 + 1) = v4;
    *(v9 + 8) = v5;
    *(v9 + 16) = v6;
    *(v9 + 24) = v8;
    *(v9 + 32) = v7;

    v22 = v21;
    v23 = v19;
    v24 = v17;
    v25 = v15;
    v26 = v13;
    v27 = v11;
    v28 = v3;
    v29 = v4;
    v30 = v5;
    v31 = v6;
    v32 = v8;
    v33 = v7;
    sub_1D92C7F9C(&v22, &v28);
  }

  free(v2);
}

uint64_t sub_1D92C69EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry);
  v2 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1D92C6A40()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4F0, &qword_1D932CC18);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v26[-v3];
  v4 = sub_1D9326E24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26[-v9];
  v11 = sub_1D9327034();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry);
  v16 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
  swift_beginAccess();
  v17 = *(v15 + v16);
  if (*(v1 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration) == 1 && (v27 = *(v15 + v16), sub_1D92C6E14(v14), sub_1D9326EE4(), (*(v12 + 8))(v14, v11), sub_1D9326E14(), sub_1D92C96F0(&qword_1EDE3BE20, MEMORY[0x1E697EA58], MEMORY[0x1E697EA78]), v18 = sub_1D93283B4(), v19 = *(v5 + 8), v19(v8, v4), v19(v10, v4), v17 = v27, (v18 & 1) != 0))
  {
    BSDispatchQueueAssertMain();
    v20 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__cachedTemplate;
    swift_beginAccess();
    v21 = v28;
    sub_1D92973DC(v1 + v20, v28, &qword_1ECAFC4F0, &qword_1D932CC18);
    v22 = sub_1D9327B44();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      sub_1D92933A0(v21, &qword_1ECAFC4F0, &qword_1D932CC18);
      if ((v27 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1D9327B04();
      (*(v23 + 8))(v21, v22);
      __swift_project_boxed_opaque_existential_1(v29, v29[3]);
      v24 = sub_1D9327AE4();
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      if ((v27 & 1) == 0)
      {
        return v24 & 1;
      }
    }
  }

  else if (!v17)
  {
LABEL_8:
    v24 = 0;
    return v24 & 1;
  }

  v24 = 1;
  return v24 & 1;
}

uint64_t sub_1D92C6E14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v14 = sub_1D9326D04();
  v4 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9326E24();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__rawEnvironmentValues;
  swift_beginAccess();
  v9 = sub_1D9327034();
  (*(*(v9 - 8) + 16))(a1, v1 + v8, v9);
  if (*(v1 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__isPasscodeLocked) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC570, &qword_1D932CF38);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D932CB30;
    sub_1D9326E14();
    v15 = v10;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_1D92C96F0(&qword_1EDE3BE20, MEMORY[0x1E697EA58], MEMORY[0x1E697EA78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC568, &qword_1D932CF30);
  sub_1D9290D60(&qword_1EDE3BC60, &qword_1ECAFC568, &qword_1D932CF30, MEMORY[0x1E69E6328]);
  sub_1D93283C4();
  sub_1D9326EF4();
  v11 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__colorScheme;
  swift_beginAccess();
  (*(v4 + 16))(v6, v2 + v11, v14);
  return sub_1D9326E84();
}

uint64_t sub_1D92C7104(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D9326A44();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    BSDispatchQueueAssertMain();
    (*(v3 + 104))(v5, *MEMORY[0x1E6994040], v2);
    v8 = sub_1D9326A54();
    (*(v3 + 8))(v5, v2);
    v9 = *(v7 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__isPasscodeLocked);
    *(v7 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__isPasscodeLocked) = v8 & 1;
    if ((v8 & 1) != v9)
    {
      sub_1D92C80B8(0x617453206B636F4CLL, 0xEA00000000006574);
    }
  }

  return result;
}

uint64_t sub_1D92C7270(uint64_t a1)
{
  v1 = sub_1D93279E4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v55 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D9327A04();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9327034();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v46 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v59 = &v46 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v46 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v51 = v2;
    v52 = v1;
    BSDispatchQueueAssertMain();
    v60 = v9;
    v61 = v17;
    v22 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__rawEnvironmentValues;
    swift_beginAccess();
    v23 = *(v6 + 16);
    v23(v19, v21 + v22, v5);
    v58 = v19;
    swift_beginAccess();

    sub_1D9327684();

    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    v24 = v58;
    sub_1D9327884();
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    v25 = v59;
    v23(v59, v61, v5);
    swift_beginAccess();
    v26 = v21 + v22;
    v27 = v61;
    (*(v6 + 40))(v26, v25, v5);
    swift_endAccess();
    sub_1D92C7C70();
    v57 = v12;
    v23(v12, v24, v5);
    v49 = v23;
    v23(v60, v27, v5);

    v28 = sub_1D9326BC4();
    v29 = sub_1D9328234();

    v50 = v29;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v6;
      v31 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v63[0] = v48;
      *v31 = 136446466;
      v47 = v28;
      v32 = *(v21 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logIdentifier);
      v33 = *(v21 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logIdentifier + 8);

      v34 = sub_1D9293524(v32, v33, v63);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2082;
      v49(v25, v57, v5);
      v35 = v53;
      sub_1D93279F4();
      sub_1D93279A4();
      v36 = v55;
      sub_1D93279B4();
      v37 = v60;
      v38 = sub_1D9327994();

      (*(v51 + 8))(v36, v52);
      (*(v54 + 8))(v35, v56);
      v62 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC560, &qword_1D932CF28);
      sub_1D9290D60(&qword_1EDE3BC50, &qword_1ECAFC560, &qword_1D932CF28, MEMORY[0x1E69E6310]);
      v39 = sub_1D9327F34();
      v41 = v40;

      v42 = *(v30 + 8);
      v42(v37, v5);
      v42(v57, v5);
      v27 = v61;
      v43 = sub_1D9293524(v39, v41, v63);
      v24 = v58;

      *(v31 + 14) = v43;
      v44 = v47;
      _os_log_impl(&dword_1D928E000, v47, v50, "[%{public}s] environment changed: %{public}s", v31, 0x16u);
      v45 = v48;
      swift_arrayDestroy();
      MEMORY[0x1DA72F920](v45, -1, -1);
      MEMORY[0x1DA72F920](v31, -1, -1);
    }

    else
    {

      v42 = *(v6 + 8);
      v42(v60, v5);
      v42(v57, v5);
    }

    sub_1D92C80B8(0x69766E452077654ELL, 0xEF746E656D6E6F72);

    v42(v27, v5);
    return (v42)(v24, v5);
  }

  return result;
}

uint64_t sub_1D92C79A8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    BSDispatchQueueAssertMain();
    sub_1D92C80B8(0x2065766968637241, 0xEF6465676E616863);
  }

  return result;
}

void *sub_1D92C7A24(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssertMain();
  v3 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__subscriptions;
  swift_beginAccess();
  v20 = v2;
  v4 = *(v2 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1D93283E4();
    sub_1D9326C24();
    sub_1D92C96F0(&qword_1ECAFC520, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    result = sub_1D93281E4();
    v7 = v22;
    v6 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
  }

  else
  {
    v11 = -1 << *(v4 + 32);
    v6 = v4 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v4 + 56);
    result = swift_bridgeObjectRetain_n();
    v9 = 0;
    v7 = v4;
  }

  v14 = (v8 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v15 = v9;
    v16 = v10;
    v17 = v9;
    if (!v10)
    {
      break;
    }

LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
LABEL_18:
      sub_1D92C9738(v7);

      *(v20 + v3) = MEMORY[0x1E69E7CD0];
    }

    while (1)
    {
      sub_1D9326C14();

      v9 = v17;
      v10 = v18;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D93283F4())
      {
        sub_1D9326C24();
        swift_dynamicCast();
        v17 = v9;
        v18 = v10;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_18;
    }

    v16 = *(v6 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D92C7C70()
{
  v1 = sub_1D9327034();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D9326D04();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v26[-v11];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26[-v16];
  BSDispatchQueueAssertMain();
  BSDispatchQueueAssertMain();
  if ((*(v0 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 16) & 1) == 0)
  {
    v18 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 8);
    if (v18 == 1)
    {
      v19 = MEMORY[0x1E697DBB8];
      goto LABEL_7;
    }

    if (v18 == 2)
    {
      v19 = MEMORY[0x1E697DBA8];
LABEL_7:
      (*(v6 + 104))(v12, *v19, v5);
      v23 = *(v6 + 32);
      v23(v15, v12, v5);
      v23(v17, v15, v5);
      v23(v9, v17, v5);
      v24 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__colorScheme;
      swift_beginAccess();
      (*(v6 + 40))(v0 + v24, v9, v5);
      return swift_endAccess();
    }
  }

  v20 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__rawEnvironmentValues;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v20, v1);
  v21 = v0;
  sub_1D9326E74();
  (*(v2 + 8))(v4, v1);
  v22 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__colorScheme;
  swift_beginAccess();
  (*(v6 + 40))(v21 + v22, v9, v5);
  return swift_endAccess();
}

uint64_t sub_1D92C7F9C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0xD000000000000014;
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = a1[16];
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = a2[16];
  result = BSDispatchQueueAssertMain();
  v10 = 0x80000001D9336240;
  if (v5)
  {
    if ((v8 & 1) == 0)
    {
LABEL_3:

      sub_1D92C7C70();
      v10 = 0x80000001D9336260;
      goto LABEL_10;
    }
  }

  else
  {
    if (v4 == v7)
    {
      v11 = v8;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      goto LABEL_3;
    }
  }

  if (((v3 ^ v6) & 1) == 0)
  {
    return result;
  }

  v2 = 0xD00000000000001CLL;
LABEL_10:
  v12 = v10;
  MEMORY[0x1DA72E570](0x6465676E61686320, 0xE800000000000000);
  sub_1D92C80B8(v2, v12);
}

uint64_t sub_1D92C80B8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v64 = sub_1D9327B44();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v59 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1D9327034();
  v7 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4F0, &qword_1D932CC18);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v60 = &v57 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v57 - v16;
  BSDispatchQueueAssertMain();
  v18 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logger;

  v65 = v18;
  v19 = sub_1D9326BC4();
  v20 = sub_1D9328234();

  v21 = os_log_type_enabled(v19, v20);
  v61 = v13;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v68[0] = v23;
    *v22 = 136446466;
    *(v22 + 4) = sub_1D9293524(*(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logIdentifier), *(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logIdentifier + 8), v68);
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_1D9293524(a1, a2, v68);
    _os_log_impl(&dword_1D928E000, v19, v20, "[%{public}s] Evaluating cached control template for reason: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72F920](v23, -1, -1);
    MEMORY[0x1DA72F920](v22, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4F8, &qword_1D932CCE8);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D932CBF0;
  *(v24 + 32) = swift_getKeyPath();
  *(v24 + 40) = swift_getKeyPath();
  *(v24 + 48) = swift_getKeyPath();
  *(v24 + 56) = swift_getKeyPath();
  *(v24 + 64) = swift_getKeyPath();
  *(v24 + 72) = swift_getKeyPath();
  *(v24 + 80) = swift_getKeyPath();
  *(v24 + 88) = swift_getKeyPath();
  *(v24 + 96) = swift_getKeyPath();
  *(v24 + 104) = swift_getKeyPath();
  v25 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry;
  swift_beginAccess();

  v26 = sub_1D93276C4();

  if (v26)
  {
    sub_1D93277D4();

    __swift_project_boxed_opaque_existential_1(v68, v69);
    sub_1D92C6E14(v9);
    sub_1D9327AD4();
    (*(v7 + 8))(v9, v62);

    v27 = v63;
    v28 = v64;
    (*(v63 + 56))(v17, 0, 1, v64);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
  }

  else
  {

    v27 = v63;
    v28 = v64;
    (*(v63 + 56))(v17, 1, 1, v64);
  }

  v29 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__cachedTemplate;
  swift_beginAccess();
  sub_1D92C962C(v17, v3 + v29);
  swift_endAccess();
  swift_beginAccess();

  v30 = sub_1D93276C4();

  if (v30)
  {
    sub_1D93277D4();

    __swift_project_boxed_opaque_existential_1(v68, v69);
    v30 = sub_1D9327AC4();
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
  }

  *(v3 + 32) = v30;

  swift_retain_n();
  v31 = sub_1D9326BC4();
  v32 = sub_1D9328234();
  if (!os_log_type_enabled(v31, v32))
  {

    goto LABEL_25;
  }

  LODWORD(v62) = v32;
  v65 = v31;
  v33 = swift_slowAlloc();
  v58 = swift_slowAlloc();
  v67 = v58;
  *v33 = 136447491;
  *(v33 + 4) = sub_1D9293524(*(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logIdentifier), *(v3 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logIdentifier + 8), &v67);
  *(v33 + 12) = 2082;
  v34 = v60;
  sub_1D92973DC(v3 + v29, v60, &qword_1ECAFC4F0, &qword_1D932CC18);
  v35 = *(v27 + 48);
  v36 = v35(v34, 1, v28);
  sub_1D92933A0(v34, &qword_1ECAFC4F0, &qword_1D932CC18);
  if (v36 == 1)
  {
    v37 = 28494;
  }

  else
  {
    v37 = 7562585;
  }

  if (v36 == 1)
  {
    v38 = 0xE200000000000000;
  }

  else
  {
    v38 = 0xE300000000000000;
  }

  v39 = sub_1D9293524(v37, v38, &v67);

  *(v33 + 14) = v39;
  *(v33 + 22) = 1026;
  v40 = *(v3 + v25);
  v41 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_redactedForDataProtection;
  swift_beginAccess();
  LODWORD(v40) = *(v40 + v41);
  v42 = v64;

  *(v33 + 24) = v40;

  *(v33 + 28) = 1026;
  LOBYTE(v40) = sub_1D92C6A40();

  *(v33 + 30) = v40 & 1;

  *(v33 + 34) = 1026;
  v43 = v61;
  sub_1D92973DC(v3 + v29, v61, &qword_1ECAFC4F0, &qword_1D932CC18);
  if (v35(v43, 1, v42))
  {
    sub_1D92933A0(v43, &qword_1ECAFC4F0, &qword_1D932CC18);

LABEL_20:
    v46 = 0;
    goto LABEL_21;
  }

  v44 = v63;
  v45 = v59;
  (*(v63 + 16))(v59, v43, v42);
  sub_1D92933A0(v43, &qword_1ECAFC4F0, &qword_1D932CC18);
  sub_1D9327B04();
  (*(v44 + 8))(v45, v42);
  __swift_project_boxed_opaque_existential_1(v68, v69);
  LOBYTE(v45) = sub_1D9327AF4();
  __swift_destroy_boxed_opaque_existential_1Tm(v68);

  if ((v45 & 1) == 0)
  {
    goto LABEL_20;
  }

  v46 = 1;
LABEL_21:
  *(v33 + 36) = v46;

  *(v33 + 40) = 2081;
  swift_beginAccess();

  v47 = sub_1D93276C4();

  if (v47)
  {
    sub_1D93277D4();

    __swift_project_boxed_opaque_existential_1(v68, v69);
    sub_1D9327AC4();
    v48 = sub_1D9326A24();

    v66 = v48;
    sub_1D92C969C();
    v49 = sub_1D9328394();
    v51 = v50;
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
  }

  else
  {
    v51 = 0xE300000000000000;
    v49 = 7104878;
  }

  v52 = v62;
  v53 = sub_1D9293524(v49, v51, &v67);

  *(v33 + 42) = v53;
  v54 = v65;
  _os_log_impl(&dword_1D928E000, v65, v52, "[%{public}s] Found template? %{public}s, isDataProtected: %{BOOL,public}d, isRedacted? %{BOOL,public}d, isDisabled: %{BOOL,public}d, current state: %{private}s", v33, 0x32u);
  v55 = v58;
  swift_arrayDestroy();
  MEMORY[0x1DA72F920](v55, -1, -1);
  MEMORY[0x1DA72F920](v33, -1, -1);

LABEL_25:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC830, &qword_1D932CC10);
  sub_1D9290D60(&qword_1EDE3DA98, &unk_1ECAFC830, &qword_1D932CC10, MEMORY[0x1E695BF80]);
  sub_1D9326C54();
}

uint64_t sub_1D92C8EE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC518, &qword_1D932CEE8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D92973DC(a1, &v5 - v3, &qword_1ECAFC518, &qword_1D932CEE8);
  return sub_1D9326ED4();
}

uint64_t sub_1D92C8F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

char *ControlSessionViewModel.deinit()
{

  sub_1D92933A0(v0 + OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__cachedTemplate, &qword_1ECAFC4F0, &qword_1D932CC18);

  v1 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__colorScheme;
  v2 = sub_1D9326D04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__rawEnvironmentValues;
  v4 = sub_1D9327034();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logger;
  v6 = sub_1D9326BE4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t ControlSessionViewModel.__deallocating_deinit()
{
  ControlSessionViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for ControlSessionViewModel(uint64_t a1)
{
  result = qword_1EDE3C7E0;
  if (!qword_1EDE3C7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D92C926C(uint64_t a1)
{
  sub_1D92C95D4(319);
  if (v1 <= 0x3F)
  {
    sub_1D9326D04();
    if (v2 <= 0x3F)
    {
      sub_1D9327034();
      if (v3 <= 0x3F)
      {
        sub_1D9326BE4();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1D92C95D4(uint64_t a1)
{
  if (!qword_1EDE3BC80)
  {
    sub_1D9327B44();
    v1 = sub_1D9328374();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE3BC80);
    }
  }
}

uint64_t sub_1D92C962C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4F0, &qword_1D932CC18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D92C969C()
{
  result = qword_1EDE3BC68;
  if (!qword_1EDE3BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BC68);
  }

  return result;
}

uint64_t sub_1D92C96F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1D92C9740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void *a6)
{
  v7 = v6;
  v100 = a6;
  v75 = a4;
  v84 = a3;
  v76 = a2;
  v101 = a1;
  v97 = sub_1D9326A44();
  v95 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v93 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1D9326A64();
  v94 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v92 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC528, &qword_1D932CEF0);
  v91 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v87 = &v66 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC530, &qword_1D932CEF8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v78 = &v66 - v13;
  v81 = sub_1D9328354();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC538, &unk_1D932CF00);
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v66 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC540, &qword_1D932E450);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v98 = &v66 - v17;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC548, &qword_1D932CF10);
  v70 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v66 - v18;
  v19 = sub_1D9327034();
  v85 = v19;
  v86 = *(v19 - 8);
  v20 = v86;
  MEMORY[0x1EEE9AC00](v19);
  v99 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a5;
  LODWORD(v74) = a5[1];
  v23 = *(a5 + 1);
  v24 = a5[16];
  v25 = *(a5 + 3);
  v26 = *(a5 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC830, &qword_1D932CC10);
  swift_allocObject();
  v27 = sub_1D9326C44();
  *(v7 + 3) = 0;
  *(v7 + 4) = 0;
  *(v7 + 2) = v27;
  v28 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__cachedTemplate;
  v29 = sub_1D9327B44();
  (*(*(v29 - 8) + 56))(&v7[v28], 1, 1, v29);
  v7[OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__isPasscodeLocked] = 1;
  *&v7[OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__subscriptions] = MEMORY[0x1E69E7CD0];
  *&v7[OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry] = v75;
  v30 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logger;
  v88 = sub_1D9326BE4();
  v89 = *(v88 - 8);
  (*(v89 + 16))(&v7[v30], v101, v88);
  v31 = &v7[OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logIdentifier];
  v32 = v84;
  *v31 = v76;
  v31[1] = v32;
  v33 = &v7[OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration];
  *v33 = v22;
  v33[1] = v74;
  *(v33 + 1) = v23;
  v33[16] = v24;
  *(v33 + 3) = v25;
  *(v33 + 4) = v26;
  v34 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__colorScheme;
  v35 = *MEMORY[0x1E697DBA8];
  v36 = sub_1D9326D04();
  (*(*(v36 - 8) + 104))(&v7[v34], v35, v36);

  v37 = v99;
  sub_1D9327024();
  v84 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__rawEnvironmentValues;
  (*(v20 + 32))(&v7[OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__rawEnvironmentValues], v37, v19);
  __swift_project_boxed_opaque_existential_1(v100, v100[3]);
  v104 = sub_1D9326AF4();
  v71 = sub_1D9296448(0, &qword_1EDE3BC10, 0x1E69E9610);
  v38 = sub_1D93282A4();
  v106 = v38;
  v75 = sub_1D9328284();
  v39 = *(v75 - 8);
  v74 = *(v39 + 56);
  v76 = v39 + 56;
  v40 = v98;
  v74(v98, 1, 1, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC550, &qword_1D932CF18);
  v67 = MEMORY[0x1E695BED8];
  sub_1D9290D60(&qword_1EDE3BF38, &qword_1ECAFC550, &qword_1D932CF18, MEMORY[0x1E695BED8]);
  v72 = sub_1D92CA7C0(&qword_1EDE3BC18, &qword_1EDE3BC10, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v41 = v68;
  sub_1D9326C74();
  sub_1D92933A0(v40, &qword_1ECAFC540, &qword_1D932E450);

  swift_allocObject();
  swift_weakInit();
  v73 = MEMORY[0x1E695BE98];
  sub_1D9290D60(&qword_1EDE3BF48, &qword_1ECAFC548, &qword_1D932CF10, MEMORY[0x1E695BE98]);

  v42 = v69;
  sub_1D9326C94();

  (*(v70 + 8))(v41, v42);
  v69 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__subscriptions;
  swift_beginAccess();
  sub_1D9326C04();
  swift_endAccess();

  v70 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry;
  swift_beginAccess();

  sub_1D9327684();

  __swift_project_boxed_opaque_existential_1(&v104, v105);
  v66 = sub_1D9327894();
  v103 = v66;
  v43 = v77;
  sub_1D9328344();
  v44 = [objc_opt_self() mainRunLoop];
  v102 = v44;
  v45 = sub_1D9328334();
  v46 = v78;
  (*(*(v45 - 8) + 56))(v78, 1, 1, v45);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC558, &qword_1D932CF20);
  sub_1D9296448(0, &qword_1EDE3BBE8, 0x1E695DFD0);
  sub_1D9290D60(&qword_1EDE3BF20, &qword_1ECAFC558, &qword_1D932CF20, v67);
  sub_1D92CA7C0(&qword_1EDE3BBF0, &qword_1EDE3BBE8, 0x1E695DFD0, MEMORY[0x1E696A010]);
  v47 = v79;
  sub_1D9326C84();
  sub_1D92933A0(v46, &qword_1ECAFC530, &qword_1D932CEF8);

  (*(v80 + 8))(v43, v81);

  __swift_destroy_boxed_opaque_existential_1Tm(&v104);
  v48 = swift_allocObject();
  swift_weakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1D92CA80C;
  *(v49 + 24) = v48;
  sub_1D9290D60(&qword_1EDE3BF50, &qword_1ECAFC538, &unk_1D932CF00, MEMORY[0x1E695BE50]);
  v50 = v82;
  sub_1D9326C94();

  (*(v83 + 8))(v47, v50);
  swift_beginAccess();
  sub_1D9326C04();
  swift_endAccess();

  swift_beginAccess();

  v51 = sub_1D9327694();

  v104 = v51;
  v52 = sub_1D93282A4();
  v102 = v52;
  v53 = v98;
  v74(v98, 1, 1, v75);
  v54 = v87;
  sub_1D9326C74();
  sub_1D92933A0(v53, &qword_1ECAFC540, &qword_1D932E450);

  v55 = swift_allocObject();
  swift_weakInit();

  v56 = swift_allocObject();
  *(v56 + 16) = sub_1D92CA81C;
  *(v56 + 24) = v55;
  sub_1D9290D60(&qword_1EDE3BF40, &qword_1ECAFC528, &qword_1D932CEF0, v73);
  v57 = v90;
  sub_1D9326C94();

  (*(v91 + 8))(v54, v57);
  swift_beginAccess();
  sub_1D9326C04();
  swift_endAccess();

  swift_beginAccess();

  sub_1D9327684();

  __swift_project_boxed_opaque_existential_1(&v104, v105);
  v58 = v99;
  sub_1D9327884();
  v59 = v84;
  swift_beginAccess();
  (*(v86 + 40))(&v7[v59], v58, v85);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(&v104);
  v60 = v100;
  __swift_project_boxed_opaque_existential_1(v100, v100[3]);
  v61 = v92;
  sub_1D9326AE4();
  v62 = v95;
  v63 = v93;
  v64 = v97;
  (*(v95 + 104))(v93, *MEMORY[0x1E6994040], v97);
  LOBYTE(v59) = sub_1D9326A54();
  (*(v62 + 8))(v63, v64);
  (*(v94 + 8))(v61, v96);
  v7[OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__isPasscodeLocked] = v59 & 1;
  sub_1D92C7C70();
  sub_1D92C80B8(0x696C616974696E49, 0xEE006E6F6974617ALL);
  (*(v89 + 8))(v101, v88);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  return v7;
}

uint64_t sub_1D92CA7C0(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D9296448(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D92CA874()
{
  v0 = sub_1D9326BE4();
  __swift_allocate_value_buffer(v0, qword_1EDE40088);
  __swift_project_value_buffer(v0, qword_1EDE40088);
  return sub_1D9326BD4();
}

uint64_t sub_1D92CA920(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D9326BE4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1D9326BD4();
}

uint64_t sub_1D92CA998(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_1D9328634();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_1D93267C4();

  v11 = [v10 debugDescription];
  v12 = sub_1D9327F84();

  return v12;
}