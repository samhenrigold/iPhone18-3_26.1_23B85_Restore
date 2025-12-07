void sub_237A70570(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_237C059EC();
  v7[0] = 0;
  LODWORD(a1) = [a1 removeItemAtURL:v2 error:v7];

  v3 = v7[0];
  if (a1)
  {

    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    v6 = sub_237C0593C();

    swift_willThrow();
  }
}

void sub_237A70684(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v4 = v3;
  HIDWORD(v71) = a2;
  v61 = a3;
  v6 = sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_0();
  v70 = v10;
  OUTLINED_FUNCTION_39_0();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v61 - v13;
  v15 = MEMORY[0x2383DDC00](0, v12);
  if (!v15)
  {
    goto LABEL_23;
  }

  v16 = v15;
  type metadata accessor for CMLTable();
  OUTLINED_FUNCTION_103();
  *(swift_allocObject() + 16) = v16;
  v17 = type metadata accessor for _DataTable();
  OUTLINED_FUNCTION_75_2(v17);
  v18 = OUTLINED_FUNCTION_125();
  v75 = sub_237B6C578(v18);
  LOBYTE(v76) = 0;
  v62 = a1;
  v19 = sub_237C05D8C();
  v20 = 0;
  v72 = v19[2];
  v63 = v6;
  v64 = 0x8000000237C199E0;
  v68 = v8 + 16;
  v69 = v8 + 8;
  v66 = v19;
  v67 = v8;
  while (1)
  {
    if (v72 == v20)
    {

      sub_237C05DBC();
      OUTLINED_FUNCTION_12_0();
      (*(v55 + 8))(v62);
      v56 = v76;
      v57 = v61;
      *v61 = v75;
      *(v57 + 8) = v56;
      return;
    }

    if (v20 >= v19[2])
    {
      break;
    }

    v21 = *(v8 + 16);
    v21(v14, v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v6);
    v22 = v70;
    v23 = OUTLINED_FUNCTION_84();
    (v21)(v23);
    sub_237A72900(v22, BYTE4(v71) & 1, &v73);
    if (v4)
    {

      sub_237C05DBC();
      OUTLINED_FUNCTION_12_0();
      (*(v58 + 8))(v62);
      v59 = OUTLINED_FUNCTION_50_5();
      v60(v59, v6);
      sub_2379DBC9C(v75, v76);
      return;
    }

    v24 = v73;
    v25 = v74;
    v26 = v14;
    v27 = sub_237C0600C();
    sub_237B6C670(v27, v28, v29, v30, v31, v32, v33, v34, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v28, v79, v80);
    v35 = v75;
    if (v76)
    {
      v65 = 0;
      v73 = v75;
      v36 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
      v37 = sub_237C0925C();
      if (v37)
      {
        v38 = v37;
        sub_2379DBC9C(v35, 1);
      }

      else
      {
        OUTLINED_FUNCTION_50();
        v38 = swift_allocError();
        *v48 = v35;
      }

      v14 = v26;
      v8 = v67;
      v4 = v65;
LABEL_14:
      sub_2379DBC9C(v75, v76);

      v75 = v38;
      LOBYTE(v76) = 1;
LABEL_15:
      v49 = v38;
      v50 = 1;
      goto LABEL_16;
    }

    if (v25)
    {
      v73 = 0;
      v74 = 0xE000000000000000;

      sub_237C08EDC();

      v73 = 0xD000000000000021;
      v74 = v64;
      MEMORY[0x2383DC360](v27, v78);
      MEMORY[0x2383DC360](39, 0xE100000000000000);
      v39 = v73;
      v40 = v74;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v38 = swift_allocError();
      *v41 = v39;
      v41[1] = v40;
      v42 = OUTLINED_FUNCTION_38_4(v38, v41);
      OUTLINED_FUNCTION_72_3(v42, v43, v44);
      v4 = 0;
      v14 = v26;
      sub_2379DBC9C(v35, 0);
      v8 = v67;
      goto LABEL_14;
    }

    v45 = v24[2];
    sub_2379DBCF4(v75, 0);
    v46 = OUTLINED_FUNCTION_88();
    sub_2379DBCF4(v46, v47);

    sub_237A303B4(v27, v78, v45);
    v53 = OUTLINED_FUNCTION_88();
    sub_2379DBC9C(v53, v54);

    sub_2379DBC9C(v35, 0);

    v38 = v75;
    v14 = v26;
    if (v76)
    {
      v6 = v63;
      v8 = v67;
      goto LABEL_15;
    }

    sub_2379DBCF4(v75, 0);
    sub_237B6C588();
    v25 = 0;
    v50 = 0;
    v6 = v63;
    v8 = v67;
LABEL_16:
    sub_2379DBC9C(v24, v25);
    v51 = OUTLINED_FUNCTION_50_5();
    v52(v51, v6);
    sub_2379DBC9C(v38, v50);
    ++v20;
    v19 = v66;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_237A70BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC98, &qword_237C0EC00);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14_0();
  v32 = v4;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_138();
  v31 = v6;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = sub_237C05CFC();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a3;
  v17 = *(a3 + 16);
  v18 = *(a3 + 17);
  sub_237C05D0C();
  v19 = sub_237C05CEC();
  (*(v12 + 8))(v15, v10);
  if ((v18 & 1) == 0)
  {
    if (v17)
    {
      v36 = 0;
      MEMORY[0x2383DD970](&v36, 8);
    }

    if (v16 != 0.0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v20 = sub_237C05D1C();
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v20);
    return sub_237A7644C(0, v35);
  }

  if (v19 < 50)
  {
    goto LABEL_7;
  }

LABEL_8:
  v22 = v33;
  sub_237C05DBC();
  sub_237C05C4C();
  v23 = v31;
  sub_237A7B7A0(v9, v31, &qword_27DE9BC98, &qword_237C0EC00);
  v24 = *(v22 + 48);
  v25 = sub_237C05D1C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 32);
  v28 = v34;
  v27(v34, v23, v25);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v25);
  v29 = v32;
  sub_237A763DC(v9, v32);
  v27(v35, v29 + *(v22 + 48), v25);
  v30 = *(v26 + 8);
  v30(v29, v25);
  return (v30)(v23 + v24, v25);
}

uint64_t sub_237A70ED4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B090, &unk_237C14050);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v7);
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BDF0, &qword_237C0EC88);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v11);
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BDF8, &qword_237C0EC90);
  OUTLINED_FUNCTION_0();
  v13 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v15);
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v17 = v16;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v19);
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  OUTLINED_FUNCTION_0();
  v21 = v20;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v23);
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0();
  v25 = v24;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v27);
  v28 = *a1;
  LODWORD(a1) = *(a1 + 8);
  v311 = a2;
  sub_237C05DAC();
  v314 = a1;
  if (a1)
  {
    v29 = MEMORY[0x2383DDAC0](0);
    if (!v29)
    {
      goto LABEL_164;
    }

    v30 = v29;
    v31 = type metadata accessor for CMLSequence();
    v32 = OUTLINED_FUNCTION_11_2(v31);
    *(v32 + 16) = v30;
    v313 = v32;
    *(v32 + 24) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_15_12(v28);
    sub_237B6C208(v33);
    sub_2379DBC9C(v28, 0);
    v313 = v337;
  }

  v312 = v28;
  *&v337 = v28;
  OUTLINED_FUNCTION_41_6();
  BYTE8(v337) = v34;
  MLDataTable.columnTypes.getter(v35, v36, v37, v38, v39, v40, v41, v42, v289, v291, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310);
  v319 = v43;
  v44 = 0;
  v45 = 0;
  v300 = v5 + 8;
  v294 = v9 + 8;
  v290 = v13 + 8;
  v299 = v17 + 8;
  v298 = v21 + 8;
  v297 = v25 + 8;
LABEL_6:
  v46 = v313;
  while (1)
  {
    v47 = sub_237A2E9F4();
    if (v44 == sub_237A017E8(0, v47))
    {
      break;
    }

    sub_237A2E9C8(v44);
    v327 = sub_237A2DE60();
    v328 = v48;

    v49 = sub_237A2E9F4();
    if (v44 >= sub_237A017E8(0, v49))
    {
      goto LABEL_128;
    }

    ++v44;
    v50 = v319;
    if (*(v319 + 16))
    {
      v51 = sub_237ACAC78(v327, v328);
      if (v52)
      {
        v53 = *(*(v50 + 56) + v51);
        v323 = v44;
        switch(v53)
        {
          case 1:
            OUTLINED_FUNCTION_41_6();
            if (v80)
            {
              goto LABEL_158;
            }

            OUTLINED_FUNCTION_14_14();
            OUTLINED_FUNCTION_70_2();
            OUTLINED_FUNCTION_69_2();
            type metadata accessor for _UntypedColumn();
            OUTLINED_FUNCTION_103();
            v81 = swift_allocObject();
            v82 = OUTLINED_FUNCTION_53_5(v81);
            OUTLINED_FUNCTION_15_12(v82);
            sub_237A60248(v83);
            v84 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v84, v85);
            if (v337 != 1)
            {
              v286 = 0;
              goto LABEL_163;
            }

            v86 = OUTLINED_FUNCTION_88();
            sub_2379DBCF4(v86, v87);
            v88 = sub_237A2F128();
            v89 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v89, v90);
            if (v88 < 0)
            {
              goto LABEL_135;
            }

            if (v88)
            {
              v91 = OUTLINED_FUNCTION_26_9(MEMORY[0x277D84F90]);
              sub_237AC8C14(v91, v92, v93);
              v94 = v331;
              do
              {
                OUTLINED_FUNCTION_15_12(v46);
                OUTLINED_FUNCTION_74_2(v95);
                v96 = OUTLINED_FUNCTION_88();
                sub_2379DBC9C(v96, v97);
                if (v338 != 1)
                {
                  sub_2379E8CE8(v337, *(&v337 + 1), v338);
                }

                OUTLINED_FUNCTION_82_2();
                if (v74)
                {
                  OUTLINED_FUNCTION_106(v98);
                  OUTLINED_FUNCTION_49_2();
                  sub_237AC8C14(v99, v100, v101);
                  v94 = v331;
                }

                OUTLINED_FUNCTION_42_2();
              }

              while (!v75);
            }

            else
            {
              v94 = MEMORY[0x277D84F90];
            }

            *&v337 = v94;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BE48, &qword_237C0ECC8);
            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_91_0(&qword_27DE9BE50);
            OUTLINED_FUNCTION_47_6();
            OUTLINED_FUNCTION_34_5();
            sub_237C05EFC();
            OUTLINED_FUNCTION_44_4();
            v102 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v102, v103);
            v104 = OUTLINED_FUNCTION_33_5();
            v106 = &v335;
LABEL_41:
            v105(v104, *(v106 - 32));
            v46 = v313;
            v44 = v323;
            continue;
          case 2:
            OUTLINED_FUNCTION_41_6();
            if (v176)
            {
              OUTLINED_FUNCTION_67_2(v175);
              OUTLINED_FUNCTION_19_13();
              sub_237C08EDC();

              OUTLINED_FUNCTION_7_18("DataTable has no column named ");
              MEMORY[0x2383DC360](v327, v328);
              OUTLINED_FUNCTION_68_1();
              sub_2379E8AF0();
              OUTLINED_FUNCTION_50();
              v46 = swift_allocError();
              OUTLINED_FUNCTION_8_18(v46, v273);
LABEL_150:
              sub_2379DBC9C(v46, v274);
              __break(1u);
LABEL_151:
              OUTLINED_FUNCTION_67_2(v137);
              OUTLINED_FUNCTION_19_13();
              sub_237C08EDC();

              OUTLINED_FUNCTION_7_18("DataTable has no column named ");
              MEMORY[0x2383DC360](v327, v328);
              OUTLINED_FUNCTION_68_1();
              v45 = *(&v337 + 1);
              sub_2379E8AF0();
              OUTLINED_FUNCTION_50();
              *&v330 = swift_allocError();
              OUTLINED_FUNCTION_8_18(v330, v275);
LABEL_152:
              sub_2379DBC9C(v330, v272);
              __break(1u);

              goto LABEL_153;
            }

            OUTLINED_FUNCTION_14_14();
            OUTLINED_FUNCTION_70_2();
            OUTLINED_FUNCTION_69_2();
            type metadata accessor for _UntypedColumn();
            OUTLINED_FUNCTION_103();
            v177 = swift_allocObject();
            v178 = OUTLINED_FUNCTION_53_5(v177);
            OUTLINED_FUNCTION_15_12(v178);
            sub_237A60248(v179);
            v180 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v180, v181);
            if (v337 != 2)
            {
              v274 = 0;
              goto LABEL_150;
            }

            v182 = OUTLINED_FUNCTION_88();
            sub_2379DBCF4(v182, v183);
            v184 = sub_237A2F128();
            v185 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v185, v186);
            if (v184 < 0)
            {
              goto LABEL_139;
            }

            if (v184)
            {
              OUTLINED_FUNCTION_26_9(MEMORY[0x277D84F90]);
              sub_237AC8A54();
              v187 = 0;
              v188 = v331;
              do
              {
                OUTLINED_FUNCTION_15_12(v46);
                OUTLINED_FUNCTION_74_2(v189);
                v190 = OUTLINED_FUNCTION_88();
                sub_2379DBC9C(v190, v191);
                v192 = v337;
                if (v338 != 2)
                {
                  sub_2379E8CE8(v337, *(&v337 + 1), v338);
                  v192 = 0uLL;
                }

                v331 = v188;
                v194 = *(v188 + 16);
                v193 = *(v188 + 24);
                if (v194 >= v193 >> 1)
                {
                  OUTLINED_FUNCTION_106(v193);
                  v330 = v195;
                  sub_237AC8A54();
                  v192 = v330;
                  v188 = v331;
                }

                ++v187;
                *(v188 + 16) = v194 + 1;
                *(v188 + 16 * v194 + 32) = v192;
              }

              while (v184 != v187);
            }

            else
            {
              v188 = MEMORY[0x277D84F90];
            }

            *&v337 = v188;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAD8, &qword_237C0E680);
            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_91_0(&qword_27DE9BAE0);
            OUTLINED_FUNCTION_47_6();
            OUTLINED_FUNCTION_34_5();
            sub_237C05EFC();
            OUTLINED_FUNCTION_44_4();
            v267 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v267, v268);
            v134 = OUTLINED_FUNCTION_33_5();
            v136 = &v336;
LABEL_125:
            v135(v134, *(v136 - 32));
            break;
          case 3:
            v317 = 32;
            OUTLINED_FUNCTION_41_6();
            if (v197)
            {
              OUTLINED_FUNCTION_67_2(v196);
LABEL_153:
              OUTLINED_FUNCTION_19_13();
              sub_237C08EDC();

              OUTLINED_FUNCTION_7_18("DataTable has no column named ");
              MEMORY[0x2383DC360](v327, v328);
              OUTLINED_FUNCTION_68_1();
              v276 = v337;
              sub_2379E8AF0();
              OUTLINED_FUNCTION_50();
              v277 = swift_allocError();
              v310 = v277;
              *v278 = v276;
              OUTLINED_FUNCTION_38_4(v277, v278);
              v280 = 1;
              *(v279 + 48) = 1;
LABEL_154:
              sub_2379DBC9C(v310, v280);
              __break(1u);

LABEL_155:
              OUTLINED_FUNCTION_7_18("DataTable has no column named ");
              MEMORY[0x2383DC360](v327, v328);
              OUTLINED_FUNCTION_68_1();
              sub_2379E8AF0();
              OUTLINED_FUNCTION_50();
              v46 = swift_allocError();
              OUTLINED_FUNCTION_8_18(v46, v281);
LABEL_157:
              sub_2379DBC9C(v46, v282);
              __break(1u);
LABEL_158:
              OUTLINED_FUNCTION_67_2(v79);
              goto LABEL_161;
            }

            OUTLINED_FUNCTION_14_14();
            OUTLINED_FUNCTION_70_2();
            OUTLINED_FUNCTION_69_2();
            type metadata accessor for _UntypedColumn();
            OUTLINED_FUNCTION_103();
            v198 = swift_allocObject();
            v198[2] = v50;
            OUTLINED_FUNCTION_15_12(v198);
            sub_237A60248(v199);
            v200 = OUTLINED_FUNCTION_52_5();
            sub_2379DBC9C(v200, v201);
            v310 = v198;
            if (v337 != 3)
            {
              v280 = 0;
              goto LABEL_154;
            }

            v202 = OUTLINED_FUNCTION_52_5();
            sub_2379DBCF4(v202, v203);
            v204 = sub_237A2F128();
            v205 = OUTLINED_FUNCTION_52_5();
            sub_2379DBC9C(v205, v206);
            if (v204 < 0)
            {
              goto LABEL_138;
            }

            if (v204)
            {
              v336 = MEMORY[0x277D84F90];
              sub_237AC8BF4(0, v204, 0);
              v207 = 0;
              v208 = v336;
              v309 = v204;
              while (1)
              {
                v322 = v208;
                OUTLINED_FUNCTION_15_12(v198);
                sub_237A607E0(v207, v209);
                v210 = OUTLINED_FUNCTION_52_5();
                sub_2379DBC9C(v210, v211);
                v212 = v337;
                if (v338 == 3)
                {
                  v318 = *(&v337 + 1);

                  v213 = sub_237A2E9F4();
                  if (sub_237A2E9F4() < 0)
                  {
                    goto LABEL_131;
                  }

                  v214 = sub_237A2E9F4();
                  if (v213 < 0 || v214 < v213)
                  {
                    goto LABEL_132;
                  }

                  if (v213)
                  {
                    v316 = v207;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B2A8, &qword_237C0CB58);
                    v215 = swift_allocObject();
                    v216 = _swift_stdlib_malloc_size(v215);
                    v217 = 0;
                    v215[2] = v213;
                    v215[3] = 2 * ((v216 - 32) / 24);
                    v315 = v215;
                    v218 = v215 + 4;
                    v321 = v212;
                    v320 = v213;
                    while (1)
                    {
                      if (v217 == sub_237A2E9F4())
                      {
                        goto LABEL_140;
                      }

                      v219 = sub_237A2E9C8(v217);
                      v220 = sub_237A2E910();
                      v329 = v217 + 1;
                      *&v330 = v217;
                      switch(v220)
                      {
                        case 1:

                          sub_237B0E848();
                          v250 = v249;

                          v223 = 0;
                          v222 = v250;
                          v224 = 1;
                          goto LABEL_110;
                        case 2:

                          v222 = sub_237A2DE60();
                          v223 = v246;
                          v224 = 2;

                          goto LABEL_110;
                        case 3:
                          v247 = sub_237B0DD68(*(v219 + 16));
                          if (!v247)
                          {
                            goto LABEL_143;
                          }

                          v248 = type metadata accessor for CMLSequence();
                          v222 = OUTLINED_FUNCTION_11_2(v248);
                          *(v222 + 16) = v247;
                          *(v222 + 24) = 1;

                          v223 = 0;
                          v224 = 3;
                          goto LABEL_110;
                        case 4:
                          if (!sub_237B0DDC8(*(v219 + 16)))
                          {
                            goto LABEL_142;
                          }

                          type metadata accessor for CMLDictionary();
                          inited = swift_initStackObject();
                          OUTLINED_FUNCTION_53_5(inited);
                          v222 = MEMORY[0x277D84F98];
                          v334 = MEMORY[0x277D84F98];
                          swift_retain_n();
                          v226 = 0;
                          break;
                        case 5:

                          v222 = 0;
                          v223 = 0;
                          v224 = 6;
                          goto LABEL_110;
                        case 6:

                          sub_237AC8278(v251, &v337);
                          v222 = v337;
                          if (!v337)
                          {
                            goto LABEL_141;
                          }

                          v223 = 0;
                          v224 = 5;
                          goto LABEL_110;
                        default:
                          v221 = *(v219 + 16);

                          v222 = sub_237B0ECCC(v221);

                          v223 = 0;
                          v224 = 0;
                          goto LABEL_110;
                      }

                      while (v226 != sub_237A2EAA4())
                      {
                        sub_237A2EB64(v226);
                        v226 = sub_237B6A974(v226);
                        v227 = sub_237A2DE60();
                        v229 = v228;

                        sub_237AFC548(v230, &v337);

                        v324 = *(&v337 + 1);
                        v231 = v337;
                        v326 = v338;
                        *&v337 = v227;
                        *(&v337 + 1) = v229;
                        LOBYTE(v338) = 2;
                        v232 = sub_237ACB180(v227, v229, 2);
                        v234 = *(v222 + 16);
                        v235 = (v233 & 1) == 0;
                        v236 = __OFADD__(v234, v235);
                        v237 = v234 + v235;
                        if (v236)
                        {
                          goto LABEL_129;
                        }

                        v238 = v233;
                        if (*(v222 + 24) < v237)
                        {
                          sub_237ABF994(v237, 1);
                          v222 = v334;
                          v232 = sub_237ACB180(v337, *(&v337 + 1), v338);
                          if ((v238 & 1) != (v239 & 1))
                          {
                            sub_237C0932C();
                            __break(1u);
LABEL_167:
                            OUTLINED_FUNCTION_50();
                            v287 = swift_allocError();
                            swift_willThrow();

                            v333 = v287;
                            v288 = v287;
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
                            if (swift_dynamicCast())
                            {
                              v331 = 0;
                              v332 = 0xE000000000000000;
                              sub_237C08EDC();
                              MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
                              sub_237C0907C();
                              MEMORY[0x2383DC360](39, 0xE100000000000000);
                              sub_237C090DC();
                              __break(1u);
                              JUMPOUT(0x237A728C8);
                            }

                            sub_2379E8CE8(v231, v324, v326);

                            sub_2379E8CE8(v337, *(&v337 + 1), v338);

                            while (1)
                            {
LABEL_165:
                              swift_unexpectedError();
                              __break(1u);
                              OUTLINED_FUNCTION_56_4();
                            }
                          }
                        }

                        if (v238)
                        {
                          goto LABEL_167;
                        }

                        *(v222 + 8 * (v232 >> 6) + 64) |= 1 << v232;
                        v240 = *(v222 + 48) + 24 * v232;
                        v241 = v338;
                        *v240 = v337;
                        *(v240 + 16) = v241;
                        v242 = *(v222 + 56) + 24 * v232;
                        v243 = v324;
                        *v242 = v231;
                        *(v242 + 8) = v243;
                        *(v242 + 16) = v326;
                        v244 = *(v222 + 16);
                        v236 = __OFADD__(v244, 1);
                        v245 = v244 + 1;
                        if (v236)
                        {
                          goto LABEL_130;
                        }

                        *(v222 + 16) = v245;
                      }

                      v224 = 4;

                      v223 = 0;
                      v44 = v323;
                      v213 = v320;
LABEL_110:
                      if (v330 >= sub_237A2E9F4())
                      {
                        break;
                      }

                      *v218 = v222;
                      v218[1] = v223;
                      *(v218 + 16) = v224;
                      v218 += 3;
                      v217 = v329;
                      if (v329 == v213)
                      {
                        OUTLINED_FUNCTION_92_1();
                        v198 = v310;
                        v204 = v309;
                        v207 = v316;
                        v252 = v315;
                        goto LABEL_115;
                      }
                    }

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
LABEL_134:
                    __break(1u);
LABEL_135:
                    __break(1u);
LABEL_136:
                    __break(1u);
LABEL_137:
                    __break(1u);
LABEL_138:
                    __break(1u);
LABEL_139:
                    __break(1u);
LABEL_140:
                    OUTLINED_FUNCTION_92_1();
                    __break(1u);
LABEL_141:
                    __break(1u);
LABEL_142:
                    __break(1u);
LABEL_143:
                    __break(1u);

                    __break(1u);

                    __break(1u);

                    __break(1u);

                    __break(1u);

                    __break(1u);
LABEL_144:
                    OUTLINED_FUNCTION_67_2(v54);
                    OUTLINED_FUNCTION_19_13();
                    sub_237C08EDC();

                    OUTLINED_FUNCTION_7_18("DataTable has no column named ");
                    MEMORY[0x2383DC360](v327, v328);
                    OUTLINED_FUNCTION_68_1();
                    v45 = *(&v337 + 1);
                    sub_2379E8AF0();
                    OUTLINED_FUNCTION_50();
                    v46 = swift_allocError();
                    OUTLINED_FUNCTION_8_18(v46, v283);
LABEL_160:
                    sub_2379DBC9C(v46, v284);
                    __break(1u);

LABEL_161:
                    OUTLINED_FUNCTION_19_13();
                    sub_237C08EDC();

                    OUTLINED_FUNCTION_7_18("DataTable has no column named ");
                    MEMORY[0x2383DC360](v327, v328);
                    OUTLINED_FUNCTION_68_1();
                    sub_2379E8AF0();
                    OUTLINED_FUNCTION_50();
                    v46 = swift_allocError();
                    OUTLINED_FUNCTION_8_18(v46, v285);
LABEL_163:
                    sub_2379DBC9C(v46, v286);
                    __break(1u);
LABEL_164:
                    __break(1u);
                    goto LABEL_165;
                  }

                  v253 = v318;
                  sub_2379E8CE8(v212, v318, 3);
                  sub_2379E8CE8(v212, v253, 3);
                  v252 = MEMORY[0x277D84F90];
                }

                else
                {
                  sub_2379E8CE8(v337, *(&v337 + 1), v338);
                  v252 = 0;
                }

LABEL_115:
                v208 = v322;
                v336 = v322;
                v255 = *(v322 + 16);
                v254 = *(v322 + 24);
                if (v255 >= v254 >> 1)
                {
                  v256 = OUTLINED_FUNCTION_106(v254);
                  sub_237AC8BF4(v256, v255 + 1, 1);
                  v208 = v336;
                }

                ++v207;
                *(v208 + 16) = v255 + 1;
                *(v208 + 8 * v255 + 32) = v252;
                if (v207 == v204)
                {
                  goto LABEL_124;
                }
              }
            }

            v208 = MEMORY[0x277D84F90];
LABEL_124:
            *&v337 = v208;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BE30, &qword_237C0ECB8);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BE38, &qword_237C0ECC0);
            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_91_0(&qword_27DE9BE40);
            OUTLINED_FUNCTION_47_6();
            OUTLINED_FUNCTION_34_5();
            sub_237C05EFC();
            sub_237C05D4C();
            v269 = OUTLINED_FUNCTION_52_5();
            sub_2379DBC9C(v269, v270);
            v134 = OUTLINED_FUNCTION_33_5();
            v136 = &v325;
            goto LABEL_125;
          case 4:
            v317 = 32;
            OUTLINED_FUNCTION_41_6();
            if (v138)
            {
              goto LABEL_151;
            }

            OUTLINED_FUNCTION_14_14();
            OUTLINED_FUNCTION_70_2();
            OUTLINED_FUNCTION_69_2();
            type metadata accessor for _UntypedColumn();
            OUTLINED_FUNCTION_103();
            v139 = swift_allocObject();
            v140 = OUTLINED_FUNCTION_53_5(v139);
            OUTLINED_FUNCTION_15_12(v140);
            sub_237A60248(v141);
            v142 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v142, v143);
            *&v330 = v46;
            if (v337 != 4)
            {
              v272 = 0;
              goto LABEL_152;
            }

            v144 = OUTLINED_FUNCTION_88();
            sub_2379DBCF4(v144, v145);
            v146 = sub_237A2F128();
            v147 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v147, v148);
            if (v146 < 0)
            {
              goto LABEL_136;
            }

            if (v146)
            {
              v331 = MEMORY[0x277D84F90];
              sub_237AC8BD4(0, v146, 0);
              v156 = 0;
              v157 = v331;
              do
              {
                OUTLINED_FUNCTION_15_12(v46);
                OUTLINED_FUNCTION_74_2(v158);
                v159 = OUTLINED_FUNCTION_88();
                sub_2379DBC9C(v159, v160);
                v161 = v337;
                if (v338 == 4)
                {
                  v162 = *(v337 + 16);
                  if (v162)
                  {
                    v163 = v146;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BE28, &qword_237C0ECB0);
                    v164 = swift_allocObject();
                    v165 = _swift_stdlib_malloc_size(v164);
                    v164[2] = v162;
                    v164[3] = 2 * ((v165 - 32) / 48);
                    v166 = sub_237BA1DAC(&v337, (v164 + 4), v162, v161);
                    v167 = *(&v337 + 1);
                    v168 = v338;
                    v169 = v339;

                    sub_2379E8FD0(v167, v168, v169);
                    if (v166 != v162)
                    {
                      goto LABEL_133;
                    }

                    v44 = v323;
                    v146 = v163;
                    v46 = v330;
                  }

                  else
                  {
                    sub_2379E8CE8(v337, *(&v337 + 1), 4);
                    v164 = MEMORY[0x277D84F90];
                  }
                }

                else
                {
                  sub_2379E8CE8(v337, *(&v337 + 1), v338);
                  v164 = 0;
                }

                v331 = v157;
                v171 = *(v157 + 16);
                v170 = *(v157 + 24);
                if (v171 >= v170 >> 1)
                {
                  OUTLINED_FUNCTION_106(v170);
                  OUTLINED_FUNCTION_49_2();
                  sub_237AC8BD4(v172, v173, v174);
                  v157 = v331;
                }

                ++v156;
                *(v157 + 16) = v171 + 1;
                *(v157 + 8 * v171 + 32) = v164;
              }

              while (v146 != v156);
            }

            else
            {
              v157 = MEMORY[0x277D84F90];
            }

            sub_237B99480(v157, v149, v150, v151, v152, v153, v154, v155, v290, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
            v258 = v257;

            *&v337 = v258;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BE10, &qword_237C0ECA0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BE18, &qword_237C0ECA8);
            OUTLINED_FUNCTION_44();
            sub_237A7B85C(&qword_27DE9BE20, &qword_27DE9BE18, &qword_237C0ECA8);
            OUTLINED_FUNCTION_47_6();
            OUTLINED_FUNCTION_66_3(v259, v260, v261, v262, v263, v264);
            OUTLINED_FUNCTION_87_1();
            v265 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v265, v266);
            v134 = OUTLINED_FUNCTION_50_5();
            v136 = &v329;
            goto LABEL_125;
          case 5:
            OUTLINED_FUNCTION_41_6();
            if (v110)
            {
              OUTLINED_FUNCTION_67_2(v109);
              goto LABEL_155;
            }

            OUTLINED_FUNCTION_14_14();
            OUTLINED_FUNCTION_70_2();
            OUTLINED_FUNCTION_69_2();
            type metadata accessor for _UntypedColumn();
            OUTLINED_FUNCTION_103();
            v111 = swift_allocObject();
            v112 = OUTLINED_FUNCTION_53_5(v111);
            OUTLINED_FUNCTION_15_12(v112);
            sub_237A60248(v113);
            v114 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v114, v115);
            if (v337 != 5)
            {
              v282 = 0;
              goto LABEL_157;
            }

            v116 = OUTLINED_FUNCTION_88();
            sub_2379DBCF4(v116, v117);
            v118 = sub_237A2F128();
            v119 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v119, v120);
            if (v118 < 0)
            {
              goto LABEL_137;
            }

            v121 = MEMORY[0x277D84F90];
            if (v118)
            {
              v331 = MEMORY[0x277D84F90];
              sub_237C08FCC();
              v122 = 0;
              do
              {
                OUTLINED_FUNCTION_15_12(v46);
                OUTLINED_FUNCTION_74_2(v123);
                v124 = OUTLINED_FUNCTION_88();
                sub_2379DBC9C(v124, v125);
                if (v338 != 5)
                {
                  sub_2379E8CE8(v337, *(&v337 + 1), v338);
                }

                ++v122;
                sub_237C08F8C();
                sub_237C08FEC();
                sub_237C08FFC();
                sub_237C08F9C();
              }

              while (v118 != v122);
              v121 = v331;
            }

            *&v337 = v121;
            sub_237A36634();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BE00, &qword_237C0EC98);
            OUTLINED_FUNCTION_44();
            sub_237A7B85C(&qword_27DE9BE08, &qword_27DE9BE00, &qword_237C0EC98);
            OUTLINED_FUNCTION_47_6();
            OUTLINED_FUNCTION_66_3(v126, v127, v128, v129, v130, v131);
            OUTLINED_FUNCTION_87_1();
            v132 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v132, v133);
            v134 = OUTLINED_FUNCTION_50_5();
            v136 = &v337 + 1;
            goto LABEL_125;
          case 6:
            goto LABEL_24;
          default:
            OUTLINED_FUNCTION_41_6();
            if (v55)
            {
              goto LABEL_144;
            }

            OUTLINED_FUNCTION_14_14();
            OUTLINED_FUNCTION_70_2();
            OUTLINED_FUNCTION_69_2();
            type metadata accessor for _UntypedColumn();
            OUTLINED_FUNCTION_103();
            v56 = swift_allocObject();
            v57 = OUTLINED_FUNCTION_53_5(v56);
            OUTLINED_FUNCTION_15_12(v57);
            sub_237A60248(v58);
            v59 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v59, v60);
            if (v337)
            {
              v284 = 0;
              goto LABEL_160;
            }

            v61 = OUTLINED_FUNCTION_88();
            sub_2379DBCF4(v61, v62);
            v63 = sub_237A2F128();
            v64 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v64, v65);
            if (v63 < 0)
            {
              goto LABEL_134;
            }

            if (v63)
            {
              v66 = OUTLINED_FUNCTION_26_9(MEMORY[0x277D84F90]);
              sub_237AC8C34(v66, v67, v68);
              v69 = v331;
              do
              {
                OUTLINED_FUNCTION_15_12(v46);
                OUTLINED_FUNCTION_74_2(v70);
                v71 = OUTLINED_FUNCTION_88();
                sub_2379DBC9C(v71, v72);
                if (v338)
                {
                  sub_2379E8CE8(v337, *(&v337 + 1), v338);
                }

                OUTLINED_FUNCTION_82_2();
                if (v74)
                {
                  OUTLINED_FUNCTION_106(v73);
                  OUTLINED_FUNCTION_49_2();
                  sub_237AC8C34(v76, v77, v78);
                  v69 = v331;
                }

                OUTLINED_FUNCTION_42_2();
              }

              while (!v75);
            }

            else
            {
              v69 = MEMORY[0x277D84F90];
            }

            *&v337 = v69;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAB0, &qword_237C0E660);
            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_91_0(&qword_27DE9BAB8);
            OUTLINED_FUNCTION_47_6();
            OUTLINED_FUNCTION_34_5();
            sub_237C05EFC();
            OUTLINED_FUNCTION_44_4();
            v107 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v107, v108);
            v104 = OUTLINED_FUNCTION_33_5();
            v106 = &v334;
            goto LABEL_41;
        }

        goto LABEL_6;
      }
    }

LABEL_24:
  }

  sub_2379DBC9C(v312, v314);
}

uint64_t sub_237A72900@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v546 = a2;
  v568 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F8, &qword_237C0CA08);
  v6 = OUTLINED_FUNCTION_20(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_0();
  v514 = v7;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_58();
  v512 = v9;
  v496 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0B0, &unk_237C15250);
  OUTLINED_FUNCTION_0();
  v511 = v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23();
  v510 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B120, &qword_237C0CA20);
  v14 = OUTLINED_FUNCTION_20(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_0();
  v509 = v15;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_58();
  v508 = v17;
  v494 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B098, &qword_237C15210);
  OUTLINED_FUNCTION_0();
  v507 = v18;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_23();
  v506 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B118, &qword_237C0CA18);
  v22 = OUTLINED_FUNCTION_20(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_0();
  v505 = v23;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_58();
  v503 = v25;
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0A0, &qword_237C0E2D0);
  OUTLINED_FUNCTION_0();
  v502 = v26;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_23();
  v501 = v28;
  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B090, &unk_237C14050);
  OUTLINED_FUNCTION_0();
  v500 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_23();
  v517 = v31;
  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCB0, &qword_237C0EC10);
  OUTLINED_FUNCTION_0();
  v504 = v32;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_23();
  v528 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCB8, &qword_237C0EC18);
  OUTLINED_FUNCTION_20(v35);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_23();
  v497 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B168, &unk_237C151E0);
  OUTLINED_FUNCTION_20(v38);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_23();
  v515 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCC0, &qword_237C0EC20);
  OUTLINED_FUNCTION_20(v41);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_23();
  v516 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B138, &qword_237C0CA30);
  OUTLINED_FUNCTION_20(v44);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_23();
  v519 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B140, &unk_237C151F0);
  OUTLINED_FUNCTION_20(v47);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_23();
  v520 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B130, &qword_237C0CA28);
  OUTLINED_FUNCTION_20(v50);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_23();
  v521 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B580, &qword_237C0D770);
  OUTLINED_FUNCTION_20(v53);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_23();
  v522 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B578, &qword_237C14020);
  OUTLINED_FUNCTION_20(v56);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_23();
  v523 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B148, &qword_237C0CA38);
  OUTLINED_FUNCTION_20(v59);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_23();
  v525 = v61;
  v537 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
  OUTLINED_FUNCTION_0();
  v524 = v62;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_14_0();
  v499 = v64;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_138();
  v535 = v66;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_58();
  v536 = v68;
  v539 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0B8, &unk_237C14040);
  OUTLINED_FUNCTION_0();
  v526 = v69;
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_14_0();
  v527 = v71;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_58();
  v538 = v73;
  v542 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  OUTLINED_FUNCTION_0();
  v531 = v74;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_14_0();
  v498 = v76;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_138();
  v540 = v78;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_58();
  v541 = v80;
  v543 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0C0, &qword_237C0E240);
  OUTLINED_FUNCTION_0();
  v529 = v81;
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_14_0();
  v530 = v83;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_58();
  v544 = v85;
  v551 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCC8, &qword_237C0EC28);
  OUTLINED_FUNCTION_0();
  v532 = v86;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_23();
  v550 = v88;
  v553 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
  OUTLINED_FUNCTION_0();
  v545 = v89;
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_14_0();
  v495 = v91;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_138();
  v554 = v93;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_58();
  v552 = v95;
  v547 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0D0, &unk_237C15270);
  OUTLINED_FUNCTION_0();
  v556 = v96;
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_14_0();
  v533 = v98;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_138();
  v534 = v100;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_58();
  v549 = v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCD0, &qword_237C0EC30);
  v104 = OUTLINED_FUNCTION_20(v103);
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_14_0();
  v560 = v105;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_58();
  *&v559 = v107;
  *&v562 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCD8, &qword_237C0EC38);
  OUTLINED_FUNCTION_0();
  v548 = v108;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_23();
  *&v561 = v110;
  v566 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v555 = v111;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_23();
  v564 = v113;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  OUTLINED_FUNCTION_0();
  *&v557 = v115;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v116);
  v118 = &v493 - v117;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B060, &qword_237C0C9D0);
  OUTLINED_FUNCTION_0();
  v558 = v120;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v121);
  v123 = &v493 - v122;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0();
  v565 = v125;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v126);
  v128 = &v493 - v127;
  v129 = a1;
  v130 = sub_237C05FFC();
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    v123 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD80, &qword_27DE9AB98, &unk_237C0B900);
    v131 = v128;
    v132 = sub_237C08B3C();
    LOBYTE(v118) = v124;
    if (!v132)
    {
      v155 = OUTLINED_FUNCTION_83_2();
      v156(v155);
LABEL_17:
      v123 = v568;
      OUTLINED_FUNCTION_17_11();
      MEMORY[0x28223BE20](v157);
      OUTLINED_FUNCTION_3_28();
LABEL_24:
      sub_237BBDC94(sub_237A7B8A0);
      OUTLINED_FUNCTION_24_10();
      OUTLINED_FUNCTION_12_0();
      (*(v167 + 8))(v129);
      goto LABEL_25;
    }

    v133 = v132;
    OUTLINED_FUNCTION_10_15(MEMORY[0x277D84F90]);
    v134 = *&v574[0];
    v131 = v128;
    sub_237C08B2C();
    if ((v133 & 0x8000000000000000) == 0)
    {
      v563 = v129;
      do
      {
        OUTLINED_FUNCTION_28_5();
        sub_237C08B9C();
        v135 = OUTLINED_FUNCTION_59_3();
        v136(v135);
        *&v574[0] = v134;
        v138 = *(v134 + 16);
        v137 = *(v134 + 24);
        if (v138 >= v137 >> 1)
        {
          OUTLINED_FUNCTION_9_16(v137);
          LODWORD(v566) = v139;
          sub_237AC8A94();
          v134 = *&v574[0];
        }

        *(v134 + 16) = v138 + 1;
        OUTLINED_FUNCTION_58_4(v134 + 24 * v138);
        v131 = v128;
        sub_237C08B6C();
        --v133;
      }

      while (v133);
      v140 = OUTLINED_FUNCTION_83_2();
      v141(v140);
      v129 = v563;
      goto LABEL_17;
    }

    __break(1u);
LABEL_130:
    (*(v129 + 8))(v549, v133);
LABEL_98:
    OUTLINED_FUNCTION_32_6();
    MEMORY[0x28223BE20](v286);
    OUTLINED_FUNCTION_3_28();
    sub_237BBDC94(sub_237A7B8A0);
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_12_0();
    (*(v287 + 8))(v563);
    goto LABEL_25;
  }

  v142 = v114;
  v143 = v564;
  v144 = v129;
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    v145 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD78, &qword_27DE9B060, &qword_237C0C9D0);
    v131 = v123;
    v118 = v119;
    sub_237C08B3C();
    OUTLINED_FUNCTION_61_4();
    if (v146)
    {
      v147 = v146;
      v563 = v129;
      OUTLINED_FUNCTION_10_15(MEMORY[0x277D84F90]);
      v148 = *&v574[0];
      OUTLINED_FUNCTION_55_1();
      sub_237C08B2C();
      if ((v147 & 0x8000000000000000) == 0)
      {
        do
        {
          OUTLINED_FUNCTION_28_5();
          sub_237C08B9C();
          v149 = OUTLINED_FUNCTION_59_3();
          v150(v149);
          *&v574[0] = v148;
          v151 = v118;
          v153 = *(v148 + 16);
          v152 = *(v148 + 24);
          if (v153 >= v152 >> 1)
          {
            OUTLINED_FUNCTION_9_16(v152);
            LODWORD(v566) = v154;
            sub_237AC8A94();
            v148 = *&v574[0];
          }

          *(v148 + 16) = v153 + 1;
          OUTLINED_FUNCTION_58_4(v148 + 24 * v153);
          v131 = v123;
          sub_237C08B6C();
          --v147;
          v118 = v151;
        }

        while (v147);
        v158 = OUTLINED_FUNCTION_55();
        v159(v158);
        v129 = v563;
        v123 = v568;
        goto LABEL_23;
      }

      __break(1u);
LABEL_136:
      v123 = v563;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B590, &qword_237C14080);
      OUTLINED_FUNCTION_36_4();
      if (swift_dynamicCastMetatype())
      {
        OUTLINED_FUNCTION_12_17();
        sub_237C05FEC();
        v338 = OUTLINED_FUNCTION_13_14();
        sub_237A783D0(v338, v339);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B588, &qword_237C0D778);
        OUTLINED_FUNCTION_23_2();
        if (!swift_dynamicCastMetatype())
        {
          goto LABEL_143;
        }

        OUTLINED_FUNCTION_12_17();
        sub_237C05FEC();
        v344 = OUTLINED_FUNCTION_13_14();
        sub_237A77FC0(v344, v345);
      }

LABEL_160:
      if (!v3)
      {
        sub_237C0602C();
        OUTLINED_FUNCTION_12_0();
        result = (*(v359 + 8))(v123);
        v131 = *&v578[0];
        LOBYTE(v118) = BYTE8(v578[0]);
        goto LABEL_163;
      }

      goto LABEL_161;
    }

LABEL_22:
    v164 = OUTLINED_FUNCTION_55();
    v165(v164);
LABEL_23:
    OUTLINED_FUNCTION_17_11();
    MEMORY[0x28223BE20](v166);
    OUTLINED_FUNCTION_3_28();
    goto LABEL_24;
  }

  v160 = swift_dynamicCastMetatype();
  v123 = v568;
  if (v160)
  {
    v161 = v118;
    v563 = v129;
    sub_237C05FEC();
    OUTLINED_FUNCTION_1_28(&qword_27DE9BD70, &qword_27DE9AB88, &qword_237C0B8F0);
    v131 = v118;
    LOBYTE(v118) = v142;
    v162 = sub_237C08B3C();
    if (v162)
    {
      v129 = v162;
      OUTLINED_FUNCTION_10_15(MEMORY[0x277D84F90]);
      v163 = *&v574[0];
      v131 = v161;
      OUTLINED_FUNCTION_55_1();
      sub_237C08B2C();
      if ((v129 & 0x8000000000000000) == 0)
      {
        do
        {
          OUTLINED_FUNCTION_28_5();
          sub_237C08B9C();
          v280 = OUTLINED_FUNCTION_59_3();
          v281(v280);
          *&v574[0] = v163;
          v283 = *(v163 + 16);
          v282 = *(v163 + 24);
          v123 = v283 + 1;
          if (v283 >= v282 >> 1)
          {
            OUTLINED_FUNCTION_9_16(v282);
            LODWORD(v566) = v279;
            sub_237AC8A94();
            v163 = *&v574[0];
          }

          *(v163 + 16) = v123;
          OUTLINED_FUNCTION_58_4(v163 + 24 * v283);
          v131 = v161;
          sub_237C08B6C();
          --v129;
        }

        while (v129);
        v284 = OUTLINED_FUNCTION_76_2();
        v285(v284);
        OUTLINED_FUNCTION_61_4();
        goto LABEL_98;
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_31:
    v174 = OUTLINED_FUNCTION_76_2();
    v175(v174);
    goto LABEL_98;
  }

  if (swift_dynamicCastMetatype())
  {
    v169 = v143;
    sub_237C05FEC();
    LOBYTE(v118) = OUTLINED_FUNCTION_1_28(&qword_27DE9BD68, &qword_27DE9ACA0, &unk_237C0E0E0);
    v131 = v143;
    v170 = v566;
    OUTLINED_FUNCTION_55();
    v171 = sub_237C08B3C();
    v172 = v144;
    if (v171)
    {
      v173 = v171;
      v563 = v172;
      OUTLINED_FUNCTION_10_15(MEMORY[0x277D84F90]);
      v123 = *&v574[0];
      OUTLINED_FUNCTION_54_3();
      OUTLINED_FUNCTION_55();
      sub_237C08B2C();
      if (v173 < 0)
      {
        __break(1u);
        goto LABEL_31;
      }

      do
      {
        OUTLINED_FUNCTION_28_5();
        v315 = sub_237C08B9C();
        v317 = *v316;
        v318 = v316[1];

        v319 = OUTLINED_FUNCTION_11_18();
        v315(v319);
        if (v318)
        {
          v320 = v317;
        }

        else
        {
          v320 = 0;
        }

        if (v318)
        {
          v321 = 2;
        }

        else
        {
          v321 = 6;
        }

        *&v574[0] = v123;
        v323 = *(v123 + 16);
        v322 = *(v123 + 24);
        if (v323 >= v322 >> 1)
        {
          OUTLINED_FUNCTION_9_16(v322);
          LODWORD(v565) = v312;
          v314 = v313;
          sub_237AC8A94();
          v320 = v314;
          v321 = v565;
          v123 = *&v574[0];
        }

        *(v123 + 16) = v323 + 1;
        v324 = v123 + 24 * v323;
        *(v324 + 32) = v320;
        *(v324 + 40) = v318;
        *(v324 + 48) = v321;
        v131 = v169;
        v325 = v566;
        sub_237C08B6C();
        --v173;
      }

      while (v173);
      v326 = OUTLINED_FUNCTION_2_19();
      v327(v326, v325);
      v172 = v563;
      v123 = v568;
    }

    else
    {
      v197 = OUTLINED_FUNCTION_2_19();
      v198(v197, v170);
    }

    OUTLINED_FUNCTION_17_11();
    MEMORY[0x28223BE20](v328);
    OUTLINED_FUNCTION_3_28();
    sub_237BBDC94(sub_237A7B8A0);
    OUTLINED_FUNCTION_24_10();
    OUTLINED_FUNCTION_12_0();
    (*(v329 + 8))(v172);
    goto LABEL_25;
  }

  v176 = sub_237C05BFC();
  OUTLINED_FUNCTION_36_4();
  v177 = swift_dynamicCastMetatype();
  v142 = v567;
  if (v177)
  {
    v178 = v561;
    v566 = v176;
    sub_237C05FEC();
    v118 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD60, &qword_27DE9BCD8, &qword_237C0EC38);
    v131 = v178;
    v179 = v562;
    OUTLINED_FUNCTION_55();
    v180 = sub_237C08B3C();
    if (v180)
    {
      v181 = v180;
      v563 = v144;
      OUTLINED_FUNCTION_10_15(MEMORY[0x277D84F90]);
      v145 = *&v574[0];
      OUTLINED_FUNCTION_54_3();
      OUTLINED_FUNCTION_55();
      sub_237C08B2C();
      if (v181 < 0)
      {
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      v564 = (v566 - 1);
      v565 = v118;
      do
      {
        OUTLINED_FUNCTION_28_5();
        v182 = sub_237C08B9C();
        v184 = OUTLINED_FUNCTION_85_1(v182, v183);
        v185 = v559;
        sub_237A7B7A0(v184, v559, &qword_27DE9BCD0, &qword_237C0EC30);
        v186 = OUTLINED_FUNCTION_11_18();
        (v131)(v186);
        v187 = v560;
        sub_237A7B7A0(v185, v560, &qword_27DE9BCD0, &qword_237C0EC30);
        v188 = OUTLINED_FUNCTION_117_0();
        if (__swift_getEnumTagSinglePayload(v188, v189, v566) == 1)
        {
          sub_237A7B808(v185, &qword_27DE9BCD0, &qword_237C0EC30);
          sub_237A7B808(v187, &qword_27DE9BCD0, &qword_237C0EC30);
          v190 = 6;
          v191 = 0;
        }

        else
        {
          sub_237C05BDC();
          v191 = v192;
          sub_237A7B808(v185, &qword_27DE9BCD0, &qword_237C0EC30);
          v193 = OUTLINED_FUNCTION_84();
          v194(v193);
          v190 = 1;
        }

        *&v574[0] = v145;
        v118 = *(v145 + 16);
        v195 = *(v145 + 24);
        if (v118 >= v195 >> 1)
        {
          OUTLINED_FUNCTION_9_16(v195);
          sub_237AC8A94();
          v145 = *&v574[0];
        }

        *(v145 + 16) = v118 + 1;
        v196 = v145 + 24 * v118;
        *(v196 + 32) = v191;
        *(v196 + 40) = 0;
        *(v196 + 48) = v190;
        v131 = v561;
        LOBYTE(v118) = v565;
        sub_237C08B6C();
        --v181;
        v123 = v568;
      }

      while (v181);
      v199 = OUTLINED_FUNCTION_84();
      v200(v199);
      v201 = v563;
    }

    else
    {
      v226 = OUTLINED_FUNCTION_2_19();
      v227(v226, v179);
      v201 = v144;
    }

    OUTLINED_FUNCTION_32_6();
    MEMORY[0x28223BE20](v228);
    OUTLINED_FUNCTION_3_28();
    sub_237BBDC94(sub_237A7B8A0);
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_12_0();
    (*(v229 + 8))(v201);
LABEL_25:

    goto LABEL_26;
  }

  v563 = v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
  OUTLINED_FUNCTION_36_4();
  if (swift_dynamicCastMetatype())
  {
    v145 = v545;
    if (v546)
    {
      v202 = v549;
      sub_237C05FEC();
      v118 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD58, &qword_27DE9B0D0, &unk_237C15270);
      v131 = v202;
      v203 = v547;
      v204 = sub_237C08B3C();
      if (v204)
      {
        v205 = MEMORY[0x277D84F90];
        *&v574[0] = MEMORY[0x277D84F90];
        *&v562 = v204;
        OUTLINED_FUNCTION_46_4();
        OUTLINED_FUNCTION_37_3();
        v565 = v118;
        sub_237C08B2C();
        v129 = v556;
        if ((v562 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_152;
        }

        v206 = 0;
        *&v561 = v145 + 16;
        v560 = v145 + 8;
        v559 = xmmword_237C0B660;
        v145 = v552;
        v118 = v553;
        while (1)
        {
          v564 = v206 + 1;
          if (__OFADD__(v206, 1))
          {
            goto LABEL_146;
          }

          OUTLINED_FUNCTION_28_5();
          v3 = sub_237C08B9C();
          v208 = *v207;

          v209 = OUTLINED_FUNCTION_11_18();
          v3(v209);
          if (v208)
          {
            v567 = *(v208 + 16);
            if (v567)
            {
              *&v578[0] = v205;
              sub_237AC8AD4();
              v210 = v567;
              v145 = 0;
              v211 = *&v578[0];
              while (v145 < *(v208 + 16))
              {
                v212 = *(v208 + 8 * v145 + 32);
                if (v212 != v212)
                {
                  sub_2379E8AF0();
                  OUTLINED_FUNCTION_50();
                  v250 = swift_allocError();
                  *v251 = 0xD00000000000001FLL;
                  v251[1] = 0x8000000237C199A0;
                  v252 = OUTLINED_FUNCTION_38_4(v250, v251);
                  OUTLINED_FUNCTION_72_3(v252, v253, v254);

                  sub_237C0602C();
                  OUTLINED_FUNCTION_12_0();
                  (*(v255 + 8))(v563);
                  (*(v129 + 8))(v549, v547);
                }

                *&v578[0] = v211;
                v214 = *(v211 + 16);
                v213 = *(v211 + 24);
                if (v214 >= v213 >> 1)
                {
                  OUTLINED_FUNCTION_106(v213);
                  OUTLINED_FUNCTION_84_2();
                  sub_237AC8AD4();
                  v210 = v567;
                  v211 = *&v578[0];
                }

                ++v145;
                *(v211 + 16) = v214 + 1;
                *(v211 + 4 * v214 + 32) = v212;
                v205 = MEMORY[0x277D84F90];
                v129 = v556;
                if (v210 == v145)
                {
                  v145 = v552;
                  v118 = v553;
                  goto LABEL_61;
                }
              }

              __break(1u);
LABEL_143:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B160, &qword_237C0CA48);
              OUTLINED_FUNCTION_23_2();
              if (swift_dynamicCastMetatype())
              {
                OUTLINED_FUNCTION_12_17();
                sub_237C05FEC();
                v346 = OUTLINED_FUNCTION_13_14();
                sub_237A786C4(v346, v347);
                goto LABEL_160;
              }

LABEL_147:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B150, &unk_237C152C0);
              OUTLINED_FUNCTION_23_2();
              if (swift_dynamicCastMetatype())
              {
                OUTLINED_FUNCTION_12_17();
                sub_237C05FEC();
                v348 = OUTLINED_FUNCTION_13_14();
                sub_237A789B8(v348, v349);
                goto LABEL_160;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B158, &qword_237C0CA40);
              OUTLINED_FUNCTION_23_2();
              if (swift_dynamicCastMetatype())
              {
                OUTLINED_FUNCTION_12_17();
                sub_237C05FEC();
                v350 = OUTLINED_FUNCTION_13_14();
                sub_237A78CAC(v350, v351);
                goto LABEL_160;
              }

LABEL_152:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCE8, &qword_237C0EC40);
              OUTLINED_FUNCTION_23_2();
              if (swift_dynamicCastMetatype())
              {
                OUTLINED_FUNCTION_12_17();
                sub_237C05FEC();
                v352 = OUTLINED_FUNCTION_13_14();
                sub_237A78FA0(v352, v353);
                goto LABEL_160;
              }

LABEL_155:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B190, &qword_237C152D0);
              OUTLINED_FUNCTION_23_2();
              if (swift_dynamicCastMetatype())
              {
                OUTLINED_FUNCTION_12_17();
                sub_237C05FEC();
                v354 = OUTLINED_FUNCTION_13_14();
                sub_237A79588(v354, v355);
                goto LABEL_160;
              }

LABEL_158:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
              OUTLINED_FUNCTION_23_2();
              if (swift_dynamicCastMetatype())
              {
                OUTLINED_FUNCTION_12_17();
                sub_237C05FEC();
                v356 = OUTLINED_FUNCTION_13_14();
                sub_237A79294(v356, v357);
                goto LABEL_160;
              }

LABEL_165:
              LOBYTE(v118) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCF0, &qword_237C0EC48);
              OUTLINED_FUNCTION_23_2();
              if (swift_dynamicCastMetatype())
              {
                sub_237C05FEC();
                v131 = v145;
                v554 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD18, &qword_27DE9BCB0, &qword_237C0EC10);
                v552 = sub_237C08B3C();
                if (v552)
                {
                  v587 = MEMORY[0x277D84F90];
                  v360 = v552;
                  OUTLINED_FUNCTION_46_4();
                  v553 = v587;
                  sub_237C08B2C();
                  if ((v360 & 0x8000000000000000) == 0)
                  {
                    v555 = 0;
                    while (1)
                    {
                      if (__OFADD__(v555++, 1))
                      {
                        __break(1u);
                        break;
                      }

                      v362 = sub_237C08B9C();
                      v364 = *v363;

                      v365 = OUTLINED_FUNCTION_11_18();
                      v362(v365);
                      v567 = v364;
                      if (v364)
                      {
                        v118 = *(v567 + 16);
                        if (v118)
                        {
                          v586 = MEMORY[0x277D84F90];
                          sub_237AC8AB4();
                          *&v562 = v586;
                          v131 = v567;
                          v366 = sub_237B024B4(v567);
                          v565 = v367;
                          v566 = v131 + 8;
                          for (i = (v118 - 1); ; i = v564 - 1)
                          {
                            v564 = i;
                            if (v366 < 0 || v366 >= 1 << *(v567 + 32))
                            {
                              break;
                            }

                            *&v561 = v366 >> 6;
                            if ((v566[v366 >> 6] & (1 << v366)) == 0)
                            {
                              goto LABEL_252;
                            }

                            if (v565 != *(v567 + 36))
                            {
                              goto LABEL_253;
                            }

                            v369 = v567;
                            sub_2379E8F20(*(v567 + 48) + 40 * v366, v578);
                            v370 = *(v369 + 56) + 32 * v366;
                            v131 = v578;
                            sub_237A7B7A0(v370, v580, &qword_27DE9A998, &unk_237C0C100);
                            v574[0] = v578[0];
                            v574[1] = v578[1];
                            v575 = v579;
                            v576 = v580[0];
                            v577 = v580[1];
                            sub_237A7B7A0(v574, v573, &qword_27DE9BD20, &qword_237C0EC50);
                            sub_237A7B7A0(v573, v571, &qword_27DE9BD28, &qword_237C0EC58);
                            if (v571[3])
                            {
                              v371 = OUTLINED_FUNCTION_81_1();
                              memcpy(v371, v372, 0x48uLL);
                              v373 = OUTLINED_FUNCTION_81_1();
                              sub_237A7B7A0(v373, v374, &qword_27DE9BD20, &qword_237C0EC50);
                              if (v571[8])
                              {
                                v375 = OUTLINED_FUNCTION_60_5();
                                sub_2379DAD24(v375, v570);
                                sub_2379E8F7C(v571);
                                v376 = OUTLINED_FUNCTION_81_1();
                                sub_237A7B7A0(v376, v377, &qword_27DE9BD20, &qword_237C0EC50);
                                v131 = v571;
                                sub_237C08E6C();
                                sub_2379E8F7C(v571);
                                sub_237AFCC90(v569, &v581);
                                if (v142)
                                {
                                  __swift_destroy_boxed_opaque_existential_1(v570);
LABEL_220:
                                  sub_237A7B808(v572, &qword_27DE9BD20, &qword_237C0EC50);
                                  v421 = OUTLINED_FUNCTION_60_5();
                                  sub_237A7B808(v421, v422, v423);
                                  sub_237A7B808(v573, &qword_27DE9BD28, &qword_237C0EC58);

                                  sub_237C0602C();
                                  OUTLINED_FUNCTION_12_0();
                                  (*(v424 + 8))(v123);
                                  sub_237A7B808(v574, &qword_27DE9BD20, &qword_237C0EC50);
                                  v425 = OUTLINED_FUNCTION_35_5();
                                  v426(v425);
                                }

                                v378 = OUTLINED_FUNCTION_60_5();
                                sub_237A7B808(v378, &qword_27DE9A998, &unk_237C0C100);
                                sub_2379FED88(v570, v571);
                                sub_237AFCC90(v571, &v583);
                                __swift_destroy_boxed_opaque_existential_1(v570);
                                sub_237A7B808(v572, &qword_27DE9BD20, &qword_237C0EC50);
                                v558 = v583;
                                *&v559 = v584;
                                v379 = v585;
                              }

                              else
                              {
                                v380 = OUTLINED_FUNCTION_60_5();
                                sub_237A7B808(v380, &qword_27DE9A998, &unk_237C0C100);
                                sub_2379E8F7C(v571);
                                v381 = OUTLINED_FUNCTION_81_1();
                                sub_237A7B7A0(v381, v382, &qword_27DE9BD20, &qword_237C0EC50);
                                v131 = v571;
                                sub_237C08E6C();
                                sub_2379E8F7C(v571);
                                sub_237AFCC90(v570, &v581);
                                if (v142)
                                {
                                  goto LABEL_220;
                                }

                                sub_237A7B808(v572, &qword_27DE9BD20, &qword_237C0EC50);
                                v383 = OUTLINED_FUNCTION_60_5();
                                sub_237A7B808(v383, &qword_27DE9A998, &unk_237C0C100);
                                *&v559 = 0;
                                v558 = 0;
                                v583 = 0;
                                v584 = 0;
                                v379 = 6;
                                v585 = 6;
                              }
                            }

                            else
                            {
                              sub_237A7B808(v571, &qword_27DE9BD28, &qword_237C0EC58);
                              *&v559 = 0;
                              v558 = 0;
                              v581 = 0uLL;
                              v582 = 6;
                              v583 = 0;
                              v584 = 0;
                              v379 = 6;
                              v585 = 6;
                            }

                            sub_237A7B808(v573, &qword_27DE9BD28, &qword_237C0EC58);
                            sub_237A7B808(v574, &qword_27DE9BD20, &qword_237C0EC50);
                            v557 = v581;
                            LODWORD(v556) = v582;
                            v586 = v562;
                            v118 = *(v562 + 16);
                            v384 = *(v562 + 24);
                            v560 = v118 + 1;
                            if (v118 >= v384 >> 1)
                            {
                              OUTLINED_FUNCTION_106(v384);
                              v131 = &v586;
                              sub_237AC8AB4();
                              *&v562 = v586;
                            }

                            v385 = v562;
                            *(v562 + 16) = v560;
                            v386 = v385 + 48 * v118;
                            *(v386 + 32) = v557;
                            *(v386 + 48) = v556;
                            v387 = v559;
                            *(v386 + 56) = v558;
                            *(v386 + 64) = v387;
                            *(v386 + 72) = v379;
                            if (v366 >= -(-1 << *(v567 + 32)))
                            {
                              goto LABEL_254;
                            }

                            if ((v566[v561] & (1 << v366)) == 0)
                            {
                              goto LABEL_255;
                            }

                            if (v565 != *(v567 + 36))
                            {
                              goto LABEL_256;
                            }

                            v388 = sub_237C08E3C();
                            if (!v564)
                            {
                              goto LABEL_193;
                            }

                            v366 = v388;
                            v565 = *(v567 + 36);
                          }

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
                          (*(v511 + 8))(v510, v496);
                          OUTLINED_FUNCTION_32_6();
                          MEMORY[0x28223BE20](v482);
                          OUTLINED_FUNCTION_3_28();
                          sub_237BBDC94(sub_237A7B748);
                          OUTLINED_FUNCTION_45_2();
                          OUTLINED_FUNCTION_12_0();
                          (*(v483 + 8))(v123);
LABEL_266:

LABEL_163:
                          v123 = v568;
LABEL_26:
                          *v123 = v131;
                          *(v123 + 8) = v118 & 1;
                          return result;
                        }

                        *&v562 = MEMORY[0x277D84F90];
LABEL_193:
                        if (*(v562 + 16))
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BD30, &qword_237C0EC60);
                          OUTLINED_FUNCTION_125();
                          v391 = sub_237C0912C();
                        }

                        else
                        {
                          v391 = MEMORY[0x277D84F98];
                        }

                        *&v578[0] = v391;
                        sub_237A7B42C(v562, 1, v578);
                        if (v142)
                        {
                          goto LABEL_272;
                        }

                        v389 = *&v578[0];
                        v390 = 4;
                      }

                      else
                      {
                        v389 = 0;
                        v390 = 6;
                      }

                      v587 = v553;
                      v118 = *(v553 + 16);
                      v392 = *(v553 + 24);
                      if (v118 >= v392 >> 1)
                      {
                        OUTLINED_FUNCTION_106(v392);
                        OUTLINED_FUNCTION_49_2();
                        sub_237AC8A94();
                        v553 = v587;
                      }

                      v393 = v553;
                      *(v553 + 16) = v118 + 1;
                      v394 = v393 + 24 * v118;
                      *(v394 + 32) = v389;
                      *(v394 + 40) = 0;
                      *(v394 + 48) = v390;
                      v131 = v145;
                      sub_237C08B6C();
                      if (v555 == v552)
                      {
                        v449 = OUTLINED_FUNCTION_35_5();
                        v451 = v450(v449);
                        goto LABEL_207;
                      }
                    }
                  }

                  __break(1u);
LABEL_269:
                  __break(1u);
LABEL_270:
                  __break(1u);
LABEL_271:
                  __break(1u);
LABEL_272:
                  result = swift_unexpectedError();
                  __break(1u);
                  return result;
                }

LABEL_206:
                v398 = OUTLINED_FUNCTION_35_5();
                v451 = v399(v398);
                v553 = MEMORY[0x277D84F90];
LABEL_207:
                *&v578[0] = v553;
                MEMORY[0x28223BE20](v451);
                OUTLINED_FUNCTION_3_28();
LABEL_249:
                sub_237BBDC94(sub_237A7B8A0);
                OUTLINED_FUNCTION_24_10();
                OUTLINED_FUNCTION_12_0();
                (*(v474 + 8))(v123);
                goto LABEL_266;
              }

              v564 = sub_237A36634();
              if (swift_dynamicCastMetatype())
              {
                v118 = v517;
                OUTLINED_FUNCTION_89_0(v564);
                v131 = v118;
                v566 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD10, &qword_27DE9B090, &unk_237C14050);
                v395 = sub_237C08B3C();
                if (v395)
                {
                  v396 = v395;
                  OUTLINED_FUNCTION_10_15(MEMORY[0x277D84F90]);
                  v397 = *&v574[0];
                  v131 = v517;
                  sub_237C08B2C();
                  if (v396 < 0)
                  {
                    __break(1u);
                    goto LABEL_206;
                  }

                  do
                  {
                    OUTLINED_FUNCTION_28_5();
                    v484 = sub_237C08B9C();
                    v486 = *v485;
                    v487 = *v485;
                    v488 = OUTLINED_FUNCTION_11_18();
                    v484(v488);
                    if (v486)
                    {
                      MLDataValue.MultiArrayType.init(_:)(v487);
                      v565 = *&v578[0];
                      v489 = 5;
                    }

                    else
                    {
                      v565 = 0;
                      v489 = 6;
                    }

                    *&v574[0] = v397;
                    v118 = *(v397 + 16);
                    v490 = *(v397 + 24);
                    if (v118 >= v490 >> 1)
                    {
                      OUTLINED_FUNCTION_9_16(v490);
                      sub_237AC8A94();
                      v397 = *&v574[0];
                    }

                    *(v397 + 16) = v118 + 1;
                    v491 = v397 + 24 * v118;
                    *(v491 + 32) = v565;
                    *(v491 + 40) = 0;
                    *(v491 + 48) = v489;
                    v131 = v517;
                    sub_237C08B6C();
                    --v396;
                  }

                  while (v396);
                  v427 = (*(v500 + 8))(v517, v518);
                }

                else
                {
                  v427 = (*(v500 + 8))(v517, v518);
                  v397 = MEMORY[0x277D84F90];
                }

                *&v578[0] = v397;
                MEMORY[0x28223BE20](v427);
                OUTLINED_FUNCTION_3_28();
                sub_237BBDC94(sub_237A7B8A0);
                OUTLINED_FUNCTION_24_10();
                OUTLINED_FUNCTION_12_0();
                (*(v492 + 8))(v123);
                goto LABEL_266;
              }

              if (swift_dynamicCastMetatype())
              {
                v118 = v501;
                OUTLINED_FUNCTION_89_0(v542);
                v131 = v118;
                v565 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD08, &qword_27DE9B0A0, &qword_237C0E2D0);
                v400 = sub_237C08B3C();
                if (v400)
                {
                  v401 = v400;
                  *&v574[0] = MEMORY[0x277D84F90];
                  OUTLINED_FUNCTION_46_4();
                  OUTLINED_FUNCTION_37_3();
                  sub_237C08B2C();
                  if (v401 < 0)
                  {
                    goto LABEL_269;
                  }

                  OUTLINED_FUNCTION_18_15(v531);
                  do
                  {
                    OUTLINED_FUNCTION_28_5();
                    v402 = v501;
                    v403 = sub_237C08B9C();
                    v405 = OUTLINED_FUNCTION_85_1(v403, v404);
                    v406 = v503;
                    sub_237A7B7A0(v405, v503, &qword_27DE9B118, &qword_237C0CA18);
                    v407 = OUTLINED_FUNCTION_11_18();
                    v402(v407);
                    sub_237A7B7A0(v406, v505, &qword_27DE9B118, &qword_237C0CA18);
                    v408 = OUTLINED_FUNCTION_117_0();
                    if (__swift_getEnumTagSinglePayload(v408, v409, v542) == 1)
                    {
                      sub_237A7B808(v503, &qword_27DE9B118, &qword_237C0CA18);
                      sub_237A7B808(v505, &qword_27DE9B118, &qword_237C0CA18);
                      v118 = 0;
                      v410 = 6;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_65_2();
                      v411(v498, v505, v542);
                      OUTLINED_FUNCTION_79_2();
                      v412 = OUTLINED_FUNCTION_84();
                      v413(v412);
                      OUTLINED_FUNCTION_45();
                      sub_237A7B85C(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0);
                      OUTLINED_FUNCTION_36_4();
                      v414 = sub_237C08BFC();
                      MLDataValue.MultiArrayType.init(_:)(v414);
                      OUTLINED_FUNCTION_78_1();
                      v415 = OUTLINED_FUNCTION_55();
                      v416(v415);
                      sub_237A7B808(v503, &qword_27DE9B118, &qword_237C0CA18);
                      v118 = *&v578[0];
                      v410 = 5;
                    }

                    *&v574[0] = v566;
                    v418 = v566[2];
                    v417 = v566[3];
                    if (v418 >= v417 >> 1)
                    {
                      OUTLINED_FUNCTION_9_16(v417);
                      OUTLINED_FUNCTION_49_2();
                      sub_237AC8A94();
                      v566 = *&v574[0];
                    }

                    v419 = v566;
                    v566[2] = v418 + 1;
                    v420 = v419 + 24 * v418;
                    *(v420 + 32) = v118;
                    *(v420 + 40) = 0;
                    *(v420 + 48) = v410;
                    v131 = v501;
                    sub_237C08B6C();
                    --v401;
                  }

                  while (v401);
                  (*(v502 + 8))(v501, v493);
                }

                else
                {
                  (*(v502 + 8))(v501, v493);
                  v566 = MEMORY[0x277D84F90];
                }

LABEL_248:
                OUTLINED_FUNCTION_80_2();
                MEMORY[0x28223BE20](v473);
                OUTLINED_FUNCTION_3_28();
                goto LABEL_249;
              }

              if (swift_dynamicCastMetatype())
              {
                v118 = v506;
                OUTLINED_FUNCTION_89_0(v537);
                v131 = v118;
                v565 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD00, &qword_27DE9B098, &qword_237C15210);
                v428 = sub_237C08B3C();
                if (v428)
                {
                  v429 = v428;
                  *&v574[0] = MEMORY[0x277D84F90];
                  OUTLINED_FUNCTION_46_4();
                  OUTLINED_FUNCTION_37_3();
                  sub_237C08B2C();
                  if (v429 < 0)
                  {
                    goto LABEL_270;
                  }

                  OUTLINED_FUNCTION_18_15(v524);
                  do
                  {
                    OUTLINED_FUNCTION_28_5();
                    v430 = v506;
                    v431 = sub_237C08B9C();
                    v433 = OUTLINED_FUNCTION_85_1(v431, v432);
                    v434 = v508;
                    sub_237A7B7A0(v433, v508, &qword_27DE9B120, &qword_237C0CA20);
                    v435 = OUTLINED_FUNCTION_11_18();
                    v430(v435);
                    sub_237A7B7A0(v434, v509, &qword_27DE9B120, &qword_237C0CA20);
                    v436 = OUTLINED_FUNCTION_117_0();
                    if (__swift_getEnumTagSinglePayload(v436, v437, v537) == 1)
                    {
                      sub_237A7B808(v508, &qword_27DE9B120, &qword_237C0CA20);
                      sub_237A7B808(v509, &qword_27DE9B120, &qword_237C0CA20);
                      v118 = 0;
                      v438 = 6;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_65_2();
                      v439 = v499;
                      v440 = v537;
                      v441(v499, v509, v537);
                      OUTLINED_FUNCTION_79_2();
                      v442(v536, v439, v440);
                      OUTLINED_FUNCTION_45();
                      sub_237A7B85C(&qword_27DE9B128, &qword_27DE9B0F0, &qword_237C0DD30);
                      OUTLINED_FUNCTION_36_4();
                      v443 = sub_237C08BFC();
                      MLDataValue.MultiArrayType.init(_:)(v443);
                      OUTLINED_FUNCTION_78_1();
                      v444(v439, v440);
                      sub_237A7B808(v508, &qword_27DE9B120, &qword_237C0CA20);
                      v118 = *&v578[0];
                      v438 = 5;
                    }

                    *&v574[0] = v566;
                    v446 = v566[2];
                    v445 = v566[3];
                    if (v446 >= v445 >> 1)
                    {
                      OUTLINED_FUNCTION_9_16(v445);
                      OUTLINED_FUNCTION_49_2();
                      sub_237AC8A94();
                      v566 = *&v574[0];
                    }

                    v447 = v566;
                    v566[2] = v446 + 1;
                    v448 = v447 + 24 * v446;
                    *(v448 + 32) = v118;
                    *(v448 + 40) = 0;
                    *(v448 + 48) = v438;
                    v131 = v506;
                    sub_237C08B6C();
                    --v429;
                  }

                  while (v429);
                  (*(v507 + 8))(v506, v494);
                }

                else
                {
                  (*(v507 + 8))(v506, v494);
                  v566 = MEMORY[0x277D84F90];
                }

                goto LABEL_248;
              }

              if (swift_dynamicCastMetatype())
              {
                v118 = v510;
                OUTLINED_FUNCTION_89_0(v553);
                OUTLINED_FUNCTION_1_28(&qword_27DE9BCF8, &qword_27DE9B0B0, &unk_237C15250);
                v131 = v118;
                v452 = sub_237C08B3C();
                if (!v452)
                {
                  goto LABEL_257;
                }

                v453 = v452;
                *&v574[0] = MEMORY[0x277D84F90];
                sub_237B05E78(v452);
                sub_237C08B2C();
                if ((v453 & 0x8000000000000000) == 0)
                {
                  OUTLINED_FUNCTION_18_15(v545);
                  do
                  {
                    OUTLINED_FUNCTION_28_5();
                    v454 = v510;
                    v455 = sub_237C08B9C();
                    v457 = OUTLINED_FUNCTION_85_1(v455, v456);
                    v458 = v512;
                    sub_237A7B7A0(v457, v512, &qword_27DE9B0F8, &qword_237C0CA08);
                    v459 = OUTLINED_FUNCTION_11_18();
                    v454(v459);
                    sub_237A7B7A0(v458, v514, &qword_27DE9B0F8, &qword_237C0CA08);
                    v460 = OUTLINED_FUNCTION_117_0();
                    if (__swift_getEnumTagSinglePayload(v460, v461, v553) == 1)
                    {
                      sub_237A7B808(v512, &qword_27DE9B0F8, &qword_237C0CA08);
                      sub_237A7B808(v514, &qword_27DE9B0F8, &qword_237C0CA08);
                      v566 = 0;
                      v462 = 6;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_65_2();
                      v463(v495, v514, v553);
                      OUTLINED_FUNCTION_79_2();
                      v464 = OUTLINED_FUNCTION_84();
                      v465(v464);
                      OUTLINED_FUNCTION_45();
                      sub_237A7B85C(&qword_27DE9B100, &qword_27DE9B0E0, &unk_237C15290);
                      OUTLINED_FUNCTION_36_4();
                      v466 = sub_237C08BFC();
                      MLDataValue.MultiArrayType.init(_:)(v466);
                      OUTLINED_FUNCTION_78_1();
                      v467 = OUTLINED_FUNCTION_55();
                      v468(v467);
                      sub_237A7B808(v512, &qword_27DE9B0F8, &qword_237C0CA08);
                      v566 = *&v578[0];
                      v462 = 5;
                    }

                    LODWORD(v565) = v462;
                    v469 = *&v574[0];
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_237AC8A94();
                      v469 = *&v574[0];
                    }

                    v471 = *(v469 + 16);
                    v470 = *(v469 + 24);
                    v118 = v471 + 1;
                    if (v471 >= v470 >> 1)
                    {
                      OUTLINED_FUNCTION_9_16(v470);
                      sub_237AC8A94();
                      v469 = *&v574[0];
                    }

                    *(v469 + 16) = v118;
                    v472 = v469 + 24 * v471;
                    *(v472 + 32) = v566;
                    *(v472 + 40) = 0;
                    *(v472 + 48) = v565;
                    v131 = v510;
                    sub_237C08B6C();
                    --v453;
                  }

                  while (v453);
                  goto LABEL_257;
                }

                goto LABEL_271;
              }

              *&v578[0] = 0xD000000000000016;
              *(&v578[0] + 1) = 0x8000000237C19980;
              sub_237C05FFC();
              v475 = sub_237C094DC();
              MEMORY[0x2383DC360](v475);

              MEMORY[0x2383DC360](46, 0xE100000000000000);
              v476 = v578[0];
              sub_2379E8AF0();
              OUTLINED_FUNCTION_50();
              v477 = swift_allocError();
              *v478 = v476;
              v479 = OUTLINED_FUNCTION_38_4(v477, v478);
              OUTLINED_FUNCTION_72_3(v479, v480, v481);
LABEL_161:
              sub_237C0602C();
              OUTLINED_FUNCTION_12_0();
              return (*(v358 + 8))(v123);
            }

            v211 = v205;
LABEL_61:
            *&v578[0] = v211;
            v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
            v218 = OUTLINED_FUNCTION_75_2(v217);
            *(v218 + 16) = v559;
            *(v218 + 32) = v567;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCE0, &unk_237C15280);
            OUTLINED_FUNCTION_44();
            sub_237A7B85C(&qword_27DE9BD50, &qword_27DE9BCE0, &unk_237C15280);
            sub_237C082BC();
            sub_237A36634();
            OUTLINED_FUNCTION_79_2();
            v219(v554, v145, v118);
            OUTLINED_FUNCTION_45();
            sub_237A7B85C(&qword_27DE9B100, &qword_27DE9B0E0, &unk_237C15290);
            OUTLINED_FUNCTION_23_2();
            v220 = sub_237C08BFC();
            MLDataValue.MultiArrayType.init(_:)(v220);

            OUTLINED_FUNCTION_78_1();
            v221(v145, v118);
            v215 = *&v578[0];
            v216 = 5;
          }

          else
          {
            v215 = 0;
            v216 = 6;
          }

          v222 = v566;
          *&v574[0] = v566;
          v224 = v566[2];
          v223 = v566[3];
          if (v224 >= v223 >> 1)
          {
            OUTLINED_FUNCTION_9_16(v223);
            sub_237AC8A94();
            v222 = *&v574[0];
          }

          *(v222 + 16) = v224 + 1;
          v566 = v222;
          v225 = v222 + 24 * v224;
          *(v225 + 32) = v215;
          *(v225 + 40) = 0;
          *(v225 + 48) = v216;
          v131 = v549;
          v133 = v547;
          sub_237C08B6C();
          v206 = v564;
          v145 = v552;
          v118 = v553;
          v129 = v556;
          if (v564 == v562)
          {
            goto LABEL_130;
          }
        }
      }

      v288 = OUTLINED_FUNCTION_2_19();
      v289(v288, v203);
      goto LABEL_98;
    }

    goto LABEL_100;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCE0, &unk_237C15280);
  OUTLINED_FUNCTION_125();
  v565 = v230;
  v231 = swift_dynamicCastMetatype();
  v232 = v546;
  v233 = v545;
  if (v231)
  {
    if ((v546 & 1) == 0)
    {
LABEL_100:
      OUTLINED_FUNCTION_12_17();
      v130 = v563;
      sub_237C05FEC();
      v290 = OUTLINED_FUNCTION_13_14();
      sub_237A7668C(v290, v291);
      goto LABEL_101;
    }

    v234 = v550;
    v145 = v563;
    sub_237C05FEC();
    v235 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD48, &qword_27DE9BCC8, &qword_237C0EC28);
    v131 = v234;
    LOBYTE(v118) = v551;
    v566 = v235;
    v236 = sub_237C08B3C();
    if (v236)
    {
      v237 = v236;
      v142 = v233;
      OUTLINED_FUNCTION_10_15(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_54_3();
      v123 = v566;
      sub_237C08B2C();
      if (v237 < 0)
      {
        __break(1u);
        goto LABEL_155;
      }

      v564 = (v233 + 16);
      *&v562 = v233 + 8;
      v561 = xmmword_237C0B660;
      do
      {
        OUTLINED_FUNCTION_28_5();
        v238 = sub_237C08B9C();
        OUTLINED_FUNCTION_71_2(v238, v239);
        v240 = OUTLINED_FUNCTION_11_18();
        v3(v240);
        v241 = v554;
        if (v233)
        {
          *&v578[0] = v233;
          v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
          v243 = OUTLINED_FUNCTION_75_2(v242);
          *(v243 + 16) = v561;
          *(v243 + 32) = *(v233 + 16);
          OUTLINED_FUNCTION_44();
          v3 = sub_237A7B85C(&qword_27DE9BD50, &qword_27DE9BCE0, &unk_237C15280);

          v244 = v552;
          sub_237C082BC();
          sub_237A36634();
          (*v564)(v241, v244, v553);
          OUTLINED_FUNCTION_45();
          sub_237A7B85C(&qword_27DE9B100, &qword_27DE9B0E0, &unk_237C15290);
          v245 = OUTLINED_FUNCTION_73_2();
          MLDataValue.MultiArrayType.init(_:)(v245);

          OUTLINED_FUNCTION_65_2();
          v246 = OUTLINED_FUNCTION_23_2();
          v247(v246);
        }

        OUTLINED_FUNCTION_86_1();
        if (v249)
        {
          OUTLINED_FUNCTION_9_16(v248);
          OUTLINED_FUNCTION_84_2();
          sub_237AC8A94();
        }

        OUTLINED_FUNCTION_55_4();
        v131 = v550;
        LOBYTE(v118) = v551;
        v123 = v566;
        sub_237C08B6C();
        --v237;
      }

      while (v237);
      goto LABEL_78;
    }

LABEL_138:
    v340 = OUTLINED_FUNCTION_23_2();
    v341(v340);
    goto LABEL_139;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
  OUTLINED_FUNCTION_125();
  v564 = v256;
  if (swift_dynamicCastMetatype())
  {
    v257 = v531;
    if ((v232 & 1) == 0)
    {
      v330 = v530;
      OUTLINED_FUNCTION_90_1(v564);
      v3 = v142;
      sub_237A76CCC(v330, v578);
      goto LABEL_101;
    }

    v258 = v544;
    OUTLINED_FUNCTION_90_1(v564);
    v259 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD40, &qword_27DE9B0C0, &qword_237C0E240);
    v131 = v258;
    v145 = v543;
    v118 = v259;
    v260 = sub_237C08B3C();
    if (!v260)
    {
      v333 = OUTLINED_FUNCTION_2_19();
      v334(v333, v145);
      goto LABEL_139;
    }

    v261 = v260;
    OUTLINED_FUNCTION_10_15(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_37_3();
    v142 = v118;
    sub_237C08B2C();
    if (v261 < 0)
    {
      __break(1u);
      goto LABEL_158;
    }

    v262 = v257;
    v263 = (v257 + 16);
    *&v562 = v262 + 8;
    v561 = xmmword_237C0B660;
    v565 = v118;
    do
    {
      OUTLINED_FUNCTION_28_5();
      v264 = sub_237C08B9C();
      OUTLINED_FUNCTION_71_2(v264, v265);
      v266 = OUTLINED_FUNCTION_11_18();
      v3(v266);
      v268 = v541;
      v267 = v542;
      v269 = v540;
      if (v142)
      {
        *&v578[0] = v142;
        v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
        v271 = OUTLINED_FUNCTION_75_2(v270);
        *(v271 + 16) = v561;
        *(v271 + 32) = *(v142 + 16);
        OUTLINED_FUNCTION_44();
        v3 = sub_237A7B85C(&qword_27DE9AEB0, &qword_27DE9AEA8, &unk_237C0C200);

        sub_237C082BC();
        sub_237A36634();
        (*v263)(v269, v268, v267);
        OUTLINED_FUNCTION_45();
        sub_237A7B85C(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0);
        v272 = OUTLINED_FUNCTION_73_2();
        MLDataValue.MultiArrayType.init(_:)(v272);

        OUTLINED_FUNCTION_65_2();
        v273 = OUTLINED_FUNCTION_23_2();
        v274(v273);
        v118 = *&v578[0];
        v123 = 5;
      }

      else
      {
        v118 = 0;
        v123 = 6;
      }

      v275 = v566;
      *&v574[0] = v566;
      v277 = v566[2];
      v276 = v566[3];
      if (v277 >= v276 >> 1)
      {
        OUTLINED_FUNCTION_9_16(v276);
        OUTLINED_FUNCTION_84_2();
        sub_237AC8A94();
        v275 = *&v574[0];
      }

      *(v275 + 16) = v277 + 1;
      v566 = v275;
      v278 = v275 + 24 * v277;
      *(v278 + 32) = v118;
      *(v278 + 40) = 0;
      *(v278 + 48) = v123;
      LOBYTE(v118) = v543;
      v131 = v544;
      v142 = v565;
      sub_237C08B6C();
      --v261;
    }

    while (v261);
LABEL_78:
    v294 = OUTLINED_FUNCTION_36_4();
    v295(v294);
    OUTLINED_FUNCTION_61_4();
LABEL_139:
    OUTLINED_FUNCTION_17_11();
    MEMORY[0x28223BE20](v342);
    OUTLINED_FUNCTION_3_28();
    sub_237BBDC94(sub_237A7B8A0);
    OUTLINED_FUNCTION_24_10();
    OUTLINED_FUNCTION_12_0();
    (*(v343 + 8))(v563);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  OUTLINED_FUNCTION_125();
  v566 = v296;
  if (swift_dynamicCastMetatype())
  {
    if ((v232 & 1) == 0)
    {
      v335 = v527;
      OUTLINED_FUNCTION_90_1(v566);
      v3 = v142;
      sub_237A7730C(v335, v578);
      goto LABEL_101;
    }

    v297 = v538;
    OUTLINED_FUNCTION_90_1(v566);
    v145 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD38, &qword_27DE9B0B8, &unk_237C14040);
    v131 = v297;
    LOBYTE(v118) = v539;
    OUTLINED_FUNCTION_55_1();
    v298 = sub_237C08B3C();
    if (v298)
    {
      v299 = v298;
      OUTLINED_FUNCTION_10_15(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_54_3();
      OUTLINED_FUNCTION_55_1();
      sub_237C08B2C();
      if (v299 < 0)
      {
        __break(1u);
        goto LABEL_165;
      }

      v565 = v524 + 16;
      v564 = (v524 + 8);
      v562 = xmmword_237C0B660;
      do
      {
        OUTLINED_FUNCTION_28_5();
        v300 = sub_237C08B9C();
        OUTLINED_FUNCTION_71_2(v300, v301);
        v302 = OUTLINED_FUNCTION_11_18();
        v3(v302);
        v304 = v536;
        v303 = v537;
        v305 = v535;
        if (v142)
        {
          *&v578[0] = v142;
          v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
          v307 = OUTLINED_FUNCTION_75_2(v306);
          *(v307 + 16) = v562;
          *(v307 + 32) = *(v142 + 16);
          OUTLINED_FUNCTION_44();
          v3 = sub_237A7B85C(&qword_27DE9B810, &qword_27DE9ACF0, &unk_237C14060);

          sub_237C082BC();
          sub_237A36634();
          (*v565)(v305, v304, v303);
          OUTLINED_FUNCTION_45();
          sub_237A7B85C(&qword_27DE9B128, &qword_27DE9B0F0, &qword_237C0DD30);
          v308 = OUTLINED_FUNCTION_73_2();
          MLDataValue.MultiArrayType.init(_:)(v308);

          v309 = OUTLINED_FUNCTION_23_2();
          v310(v309);
          v123 = 5;
        }

        else
        {
          v123 = 6;
        }

        OUTLINED_FUNCTION_86_1();
        if (v249)
        {
          OUTLINED_FUNCTION_9_16(v311);
          OUTLINED_FUNCTION_84_2();
          sub_237AC8A94();
        }

        OUTLINED_FUNCTION_55_4();
        LOBYTE(v118) = v539;
        v131 = v538;
        sub_237C08B6C();
        --v299;
      }

      while (v299);
      v336 = OUTLINED_FUNCTION_23_2();
      v337(v336);
      OUTLINED_FUNCTION_61_4();
      goto LABEL_139;
    }

    goto LABEL_138;
  }

  v145 = v528;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  OUTLINED_FUNCTION_36_4();
  if (!swift_dynamicCastMetatype())
  {
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_12_17();
  v130 = v563;
  sub_237C05FEC();
  v331 = OUTLINED_FUNCTION_13_14();
  sub_237A7794C(v331, v332);
LABEL_101:
  if (!v3)
  {
    sub_237C0602C();
    OUTLINED_FUNCTION_12_0();
    result = (*(v293 + 8))(v130);
    v131 = *&v578[0];
    LOBYTE(v118) = BYTE8(v578[0]);
    goto LABEL_26;
  }

  sub_237C0602C();
  OUTLINED_FUNCTION_12_0();
  return (*(v292 + 8))(v130);
}

uint64_t sub_237A763DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC98, &qword_237C0EC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A7644C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCA0, &qword_237C0EC08);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v7 = sub_237C05CFC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237C05DBC();
  sub_237C05C3C();
  v11.n128_f64[0] = (*(v8 + 16))(v6, v10, v7);
  sub_237A76634(v11);
  sub_237C08B2C();
  v12 = *(v4 + 48);
  sub_237C08B5C();
  (*(v8 + 8))(v10, v7);
  v13 = *&v6[v12];
  result = sub_237A7B808(v6, &qword_27DE9BCA0, &qword_237C0EC08);
  if (v13 >= a1)
  {
    return sub_237C05C7C();
  }

  __break(1u);
  return result;
}

unint64_t sub_237A76634(__n128 a1)
{
  result = qword_27DE9BCA8;
  if (!qword_27DE9BCA8)
  {
    sub_237C05CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BCA8);
  }

  return result;
}

uint64_t sub_237A7668C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v53 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0D0, &unk_237C15270);
  v6 = sub_237A7B85C(&qword_27DE9BD58, &qword_27DE9B0D0, &unk_237C15270);
  v7 = sub_237C08B3C();
  v8 = MEMORY[0x277D84F90];
  v58 = v5;
  if (!v7)
  {
LABEL_39:
    v66 = v8;
    MEMORY[0x28223BE20](v7);
    v49 = sub_237BBDC94(sub_237A7B8A0);
    v51 = v50;
    (*(*(v58 - 8) + 8))(a1);

    *v53 = v49;
    *(v53 + 8) = v51 & 1;
    return result;
  }

  v72 = MEMORY[0x277D84F90];
  v57 = v7;
  sub_237AC8A94();
  v60 = v8;
  sub_237C08B2C();
  if (v57 < 0)
  {
    goto LABEL_43;
  }

  v9 = 0;
  v55 = a1;
  v56 = v6;
  while (1)
  {
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      goto LABEL_42;
    }

    v59 = v11;
    v12 = sub_237C08B9C();
    v14 = *v13;

    v12(&v66, 0);
    if (v14)
    {
      break;
    }

    *&v62 = 0;
    v44 = 6;
LABEL_34:
    v45 = v60;
    v72 = v60;
    v46 = *(v60 + 16);
    if (v46 >= *(v60 + 24) >> 1)
    {
      sub_237AC8A94();
      v45 = v72;
    }

    *(v45 + 16) = v46 + 1;
    v60 = v45;
    v47 = v45 + 24 * v46;
    *(v47 + 32) = v62;
    *(v47 + 40) = 0;
    *(v47 + 48) = v44;
    v7 = sub_237C08B6C();
    v9 = v59;
    if (v59 == v57)
    {
      v8 = v60;
      goto LABEL_39;
    }
  }

  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
LABEL_13:
    v24 = MEMORY[0x2383DDAC0](0);
    if (!v24)
    {
      goto LABEL_46;
    }

    v25 = v24;
    v54 = v14;
    type metadata accessor for CMLSequence();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = 1;
    v61 = *(v16 + 16);
    *&v62 = v26;
    if (v61)
    {
      v34 = 0;
      v35 = (v16 + 48);
      while (2)
      {
        if (v34 < *(v16 + 16))
        {
          v36 = *(v35 - 2);
          v37 = *(v35 - 1);
          ++v34;
          v38 = *v35;
          switch(*v35)
          {
            case 1:
              v42 = sub_237B0F594(v26, v27, v28, v29, v30, v31, v32, v33, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, *(&v62 + 1), v63, *(&v63 + 1), v64, v65, v66, v67, v68, v69, v70, v71);
              if (v3)
              {
                goto LABEL_48;
              }

              v40 = v42;
              if (v42)
              {
                goto LABEL_27;
              }

              goto LABEL_45;
            case 2:
              type metadata accessor for CMLFeatureValue();
              sub_2379E9288(v36, v37, 2);

              v41 = sub_237A2E7CC();
              if (v3)
              {
                goto LABEL_48;
              }

              goto LABEL_30;
            case 3:
              v66 = *(v35 - 2);

              v41 = sub_237A91FA8();
              goto LABEL_30;
            case 4:
              v66 = *(v35 - 2);

              v41 = sub_237AFF290();
              goto LABEL_30;
            case 5:
              v66 = *(v35 - 2);
              v43 = v36;
              v41 = sub_237AC85C4();
              goto LABEL_30;
            case 6:
              type metadata accessor for CMLFeatureValue();
              v41 = sub_237A2E78C();
              goto LABEL_30;
            default:
              v39 = sub_237B0F164(*(v35 - 2), v27, v28, v29, v30, v31, v32, v33, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, *(&v62 + 1), v63, *(&v63 + 1), v64, v65, v66, v67, v68, v69, v70, v71);
              if (v3)
              {
                goto LABEL_48;
              }

              v40 = v39;
              if (!v39)
              {
                goto LABEL_44;
              }

LABEL_27:
              type metadata accessor for CMLFeatureValue();
              swift_allocObject();
              v41 = sub_237A2E764(v40, 1);
LABEL_30:
              sub_237A2DE9C(v41);
              if (v3)
              {
                goto LABEL_47;
              }

              sub_2379E8CE8(v36, v37, v38);

              v35 += 24;
              if (v61 == v34)
              {
                goto LABEL_32;
              }

              continue;
          }
        }

        break;
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:

      while (1)
      {
LABEL_48:
        swift_unexpectedError();
        __break(1u);
      }
    }

LABEL_32:

    v44 = 3;
    a1 = v55;
    goto LABEL_34;
  }

  v65 = MEMORY[0x277D84F90];
  sub_237AC8A94();
  v17 = 0;
  v16 = v65;
  v18 = MEMORY[0x277D83B88];
  while (1)
  {
    if (v17 >= *(v14 + 16))
    {
      goto LABEL_41;
    }

    v19 = *(v14 + 8 * v17 + 32);
    v69 = v18;
    v66 = v19;
    sub_237AFCC90(&v66, &v63);
    if (v3)
    {
      break;
    }

    v20 = v63;
    v21 = v64;
    v65 = v16;
    v22 = *(v16 + 16);
    if (v22 >= *(v16 + 24) >> 1)
    {
      v62 = v63;
      sub_237AC8A94();
      v20 = v62;
      v18 = MEMORY[0x277D83B88];
      v16 = v65;
    }

    ++v17;
    *(v16 + 16) = v22 + 1;
    v23 = v16 + 24 * v22;
    *(v23 + 32) = v20;
    *(v23 + 48) = v21;
    if (v15 == v17)
    {
      goto LABEL_13;
    }
  }

  (*(*(v58 - 8) + 8))(v55);
}

uint64_t sub_237A76CCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v53 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0C0, &qword_237C0E240);
  v6 = sub_237A7B85C(&qword_27DE9BD40, &qword_27DE9B0C0, &qword_237C0E240);
  v7 = sub_237C08B3C();
  v8 = MEMORY[0x277D84F90];
  v58 = v5;
  if (!v7)
  {
LABEL_39:
    v66 = v8;
    MEMORY[0x28223BE20](v7);
    v49 = sub_237BBDC94(sub_237A7B8A0);
    v51 = v50;
    (*(*(v58 - 8) + 8))(a1);

    *v53 = v49;
    *(v53 + 8) = v51 & 1;
    return result;
  }

  v72 = MEMORY[0x277D84F90];
  v57 = v7;
  sub_237AC8A94();
  v60 = v8;
  sub_237C08B2C();
  if (v57 < 0)
  {
    goto LABEL_43;
  }

  v9 = 0;
  v55 = a1;
  v56 = v6;
  while (1)
  {
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      goto LABEL_42;
    }

    v59 = v11;
    v12 = sub_237C08B9C();
    v14 = *v13;

    v12(&v66, 0);
    if (v14)
    {
      break;
    }

    *&v62 = 0;
    v44 = 6;
LABEL_34:
    v45 = v60;
    v72 = v60;
    v46 = *(v60 + 16);
    if (v46 >= *(v60 + 24) >> 1)
    {
      sub_237AC8A94();
      v45 = v72;
    }

    *(v45 + 16) = v46 + 1;
    v60 = v45;
    v47 = v45 + 24 * v46;
    *(v47 + 32) = v62;
    *(v47 + 40) = 0;
    *(v47 + 48) = v44;
    v7 = sub_237C08B6C();
    v9 = v59;
    if (v59 == v57)
    {
      v8 = v60;
      goto LABEL_39;
    }
  }

  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
LABEL_13:
    v24 = MEMORY[0x2383DDAC0](0);
    if (!v24)
    {
      goto LABEL_46;
    }

    v25 = v24;
    v54 = v14;
    type metadata accessor for CMLSequence();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = 1;
    v61 = *(v16 + 16);
    *&v62 = v26;
    if (v61)
    {
      v34 = 0;
      v35 = (v16 + 48);
      while (2)
      {
        if (v34 < *(v16 + 16))
        {
          v36 = *(v35 - 2);
          v37 = *(v35 - 1);
          ++v34;
          v38 = *v35;
          switch(*v35)
          {
            case 1:
              v42 = sub_237B0F594(v26, v27, v28, v29, v30, v31, v32, v33, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, *(&v62 + 1), v63, *(&v63 + 1), v64, v65, v66, v67, v68, v69, v70, v71);
              if (v3)
              {
                goto LABEL_48;
              }

              v40 = v42;
              if (v42)
              {
                goto LABEL_27;
              }

              goto LABEL_45;
            case 2:
              type metadata accessor for CMLFeatureValue();
              sub_2379E9288(v36, v37, 2);

              v41 = sub_237A2E7CC();
              if (v3)
              {
                goto LABEL_48;
              }

              goto LABEL_30;
            case 3:
              v66 = *(v35 - 2);

              v41 = sub_237A91FA8();
              goto LABEL_30;
            case 4:
              v66 = *(v35 - 2);

              v41 = sub_237AFF290();
              goto LABEL_30;
            case 5:
              v66 = *(v35 - 2);
              v43 = v36;
              v41 = sub_237AC85C4();
              goto LABEL_30;
            case 6:
              type metadata accessor for CMLFeatureValue();
              v41 = sub_237A2E78C();
              goto LABEL_30;
            default:
              v39 = sub_237B0F164(*(v35 - 2), v27, v28, v29, v30, v31, v32, v33, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, *(&v62 + 1), v63, *(&v63 + 1), v64, v65, v66, v67, v68, v69, v70, v71);
              if (v3)
              {
                goto LABEL_48;
              }

              v40 = v39;
              if (!v39)
              {
                goto LABEL_44;
              }

LABEL_27:
              type metadata accessor for CMLFeatureValue();
              swift_allocObject();
              v41 = sub_237A2E764(v40, 1);
LABEL_30:
              sub_237A2DE9C(v41);
              if (v3)
              {
                goto LABEL_47;
              }

              sub_2379E8CE8(v36, v37, v38);

              v35 += 24;
              if (v61 == v34)
              {
                goto LABEL_32;
              }

              continue;
          }
        }

        break;
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:

      while (1)
      {
LABEL_48:
        swift_unexpectedError();
        __break(1u);
      }
    }

LABEL_32:

    v44 = 3;
    a1 = v55;
    goto LABEL_34;
  }

  v65 = MEMORY[0x277D84F90];
  sub_237AC8A94();
  v17 = 0;
  v16 = v65;
  v18 = MEMORY[0x277D83A90];
  while (1)
  {
    if (v17 >= *(v14 + 16))
    {
      goto LABEL_41;
    }

    v19 = *(v14 + 4 * v17 + 32);
    v69 = v18;
    LODWORD(v66) = v19;
    sub_237AFCC90(&v66, &v63);
    if (v3)
    {
      break;
    }

    v20 = v63;
    v21 = v64;
    v65 = v16;
    v22 = *(v16 + 16);
    if (v22 >= *(v16 + 24) >> 1)
    {
      v62 = v63;
      sub_237AC8A94();
      v20 = v62;
      v18 = MEMORY[0x277D83A90];
      v16 = v65;
    }

    ++v17;
    *(v16 + 16) = v22 + 1;
    v23 = v16 + 24 * v22;
    *(v23 + 32) = v20;
    *(v23 + 48) = v21;
    if (v15 == v17)
    {
      goto LABEL_13;
    }
  }

  (*(*(v58 - 8) + 8))(v55);
}

uint64_t sub_237A7730C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v53 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0B8, &unk_237C14040);
  v6 = sub_237A7B85C(&qword_27DE9BD38, &qword_27DE9B0B8, &unk_237C14040);
  v7 = sub_237C08B3C();
  v8 = MEMORY[0x277D84F90];
  v58 = v5;
  if (!v7)
  {
LABEL_39:
    v66 = v8;
    MEMORY[0x28223BE20](v7);
    v49 = sub_237BBDC94(sub_237A7B8A0);
    v51 = v50;
    (*(*(v58 - 8) + 8))(a1);

    *v53 = v49;
    *(v53 + 8) = v51 & 1;
    return result;
  }

  v72 = MEMORY[0x277D84F90];
  v57 = v7;
  sub_237AC8A94();
  v60 = v8;
  sub_237C08B2C();
  if (v57 < 0)
  {
    goto LABEL_43;
  }

  v9 = 0;
  v55 = a1;
  v56 = v6;
  while (1)
  {
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      goto LABEL_42;
    }

    v59 = v11;
    v12 = sub_237C08B9C();
    v14 = *v13;

    v12(&v66, 0);
    if (v14)
    {
      break;
    }

    *&v62 = 0;
    v44 = 6;
LABEL_34:
    v45 = v60;
    v72 = v60;
    v46 = *(v60 + 16);
    if (v46 >= *(v60 + 24) >> 1)
    {
      sub_237AC8A94();
      v45 = v72;
    }

    *(v45 + 16) = v46 + 1;
    v60 = v45;
    v47 = v45 + 24 * v46;
    *(v47 + 32) = v62;
    *(v47 + 40) = 0;
    *(v47 + 48) = v44;
    v7 = sub_237C08B6C();
    v9 = v59;
    if (v59 == v57)
    {
      v8 = v60;
      goto LABEL_39;
    }
  }

  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
LABEL_13:
    v24 = MEMORY[0x2383DDAC0](0);
    if (!v24)
    {
      goto LABEL_46;
    }

    v25 = v24;
    v54 = v14;
    type metadata accessor for CMLSequence();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = 1;
    v61 = *(v16 + 16);
    *&v62 = v26;
    if (v61)
    {
      v34 = 0;
      v35 = (v16 + 48);
      while (2)
      {
        if (v34 < *(v16 + 16))
        {
          v36 = *(v35 - 2);
          v37 = *(v35 - 1);
          ++v34;
          v38 = *v35;
          switch(*v35)
          {
            case 1:
              v42 = sub_237B0F594(v26, v27, v28, v29, v30, v31, v32, v33, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, *(&v62 + 1), v63, *(&v63 + 1), v64, v65, v66, v67, v68, v69, v70, v71);
              if (v3)
              {
                goto LABEL_48;
              }

              v40 = v42;
              if (v42)
              {
                goto LABEL_27;
              }

              goto LABEL_45;
            case 2:
              type metadata accessor for CMLFeatureValue();
              sub_2379E9288(v36, v37, 2);

              v41 = sub_237A2E7CC();
              if (v3)
              {
                goto LABEL_48;
              }

              goto LABEL_30;
            case 3:
              v66 = *(v35 - 2);

              v41 = sub_237A91FA8();
              goto LABEL_30;
            case 4:
              v66 = *(v35 - 2);

              v41 = sub_237AFF290();
              goto LABEL_30;
            case 5:
              v66 = *(v35 - 2);
              v43 = v36;
              v41 = sub_237AC85C4();
              goto LABEL_30;
            case 6:
              type metadata accessor for CMLFeatureValue();
              v41 = sub_237A2E78C();
              goto LABEL_30;
            default:
              v39 = sub_237B0F164(*(v35 - 2), v27, v28, v29, v30, v31, v32, v33, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, *(&v62 + 1), v63, *(&v63 + 1), v64, v65, v66, v67, v68, v69, v70, v71);
              if (v3)
              {
                goto LABEL_48;
              }

              v40 = v39;
              if (!v39)
              {
                goto LABEL_44;
              }

LABEL_27:
              type metadata accessor for CMLFeatureValue();
              swift_allocObject();
              v41 = sub_237A2E764(v40, 1);
LABEL_30:
              sub_237A2DE9C(v41);
              if (v3)
              {
                goto LABEL_47;
              }

              sub_2379E8CE8(v36, v37, v38);

              v35 += 24;
              if (v61 == v34)
              {
                goto LABEL_32;
              }

              continue;
          }
        }

        break;
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:

      while (1)
      {
LABEL_48:
        swift_unexpectedError();
        __break(1u);
      }
    }

LABEL_32:

    v44 = 3;
    a1 = v55;
    goto LABEL_34;
  }

  v65 = MEMORY[0x277D84F90];
  sub_237AC8A94();
  v17 = 0;
  v16 = v65;
  v18 = MEMORY[0x277D839F8];
  while (1)
  {
    if (v17 >= *(v14 + 16))
    {
      goto LABEL_41;
    }

    v19 = *(v14 + 8 * v17 + 32);
    v69 = v18;
    v66 = v19;
    sub_237AFCC90(&v66, &v63);
    if (v3)
    {
      break;
    }

    v20 = v63;
    v21 = v64;
    v65 = v16;
    v22 = *(v16 + 16);
    if (v22 >= *(v16 + 24) >> 1)
    {
      v62 = v63;
      sub_237AC8A94();
      v20 = v62;
      v18 = MEMORY[0x277D839F8];
      v16 = v65;
    }

    ++v17;
    *(v16 + 16) = v22 + 1;
    v23 = v16 + 24 * v22;
    *(v23 + 32) = v20;
    *(v23 + 48) = v21;
    if (v15 == v17)
    {
      goto LABEL_13;
    }
  }

  (*(*(v58 - 8) + 8))(v55);
}

uint64_t sub_237A7794C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v56 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B148, &qword_237C0CA38);
  v6 = sub_237A7B85C(&qword_27DE9BD88, &qword_27DE9B148, &qword_237C0CA38);
  v7 = sub_237C08B3C();
  v8 = MEMORY[0x277D84F90];
  v60 = v5;
  if (!v7)
  {
LABEL_40:
    v70 = v8;
    MEMORY[0x28223BE20](v7);
    v53 = sub_237BBDC94(sub_237A7B8A0);
    v55 = v54;
    (*(*(v60 - 8) + 8))(a1);

    *v56 = v53;
    *(v56 + 8) = v55 & 1;
    return result;
  }

  v76 = MEMORY[0x277D84F90];
  v59 = v7;
  sub_237AC8A94();
  v62 = v6;
  v63 = v8;
  sub_237C08B2C();
  if (v59 < 0)
  {
    goto LABEL_44;
  }

  v9 = 0;
  v58 = a1;
  while (1)
  {
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      goto LABEL_43;
    }

    v61 = v11;
    v12 = sub_237C08B9C();
    v14 = *v13;

    v12(&v70, 0);
    if (v14)
    {
      break;
    }

    v66 = 0;
    v48 = 6;
LABEL_35:
    v49 = v63;
    v76 = v63;
    v50 = *(v63 + 16);
    if (v50 >= *(v63 + 24) >> 1)
    {
      sub_237AC8A94();
      v49 = v76;
    }

    *(v49 + 16) = v50 + 1;
    v63 = v49;
    v51 = v49 + 24 * v50;
    *(v51 + 32) = v66;
    *(v51 + 40) = 0;
    *(v51 + 48) = v48;
    a1 = v58;
    v7 = sub_237C08B6C();
    v9 = v61;
    if (v61 == v59)
    {
      v8 = v63;
      goto LABEL_40;
    }
  }

  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
LABEL_14:
    v28 = MEMORY[0x2383DDAC0](0);
    if (!v28)
    {
      goto LABEL_47;
    }

    v29 = v28;
    v57 = v14;
    type metadata accessor for CMLSequence();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    v66 = v30;
    *(v30 + 24) = 1;
    *&v64 = *(v16 + 16);
    if (v64)
    {
      v38 = 0;
      v39 = (v16 + 48);
      while (2)
      {
        if (v38 < *(v16 + 16))
        {
          v40 = *(v39 - 2);
          v41 = *(v39 - 1);
          ++v38;
          v42 = *v39;
          switch(*v39)
          {
            case 1:
              v46 = sub_237B0F594(v30, v31, v32, v33, v34, v35, v36, v37, v56, v57, v58, v59, v60, v61, v62, v63, v64, *(&v64 + 1), v65, v66, v67, *(&v67 + 1), v68, v69, v70, v71, v72, v73, v74, v75);
              if (v3)
              {
                goto LABEL_49;
              }

              v44 = v46;
              if (v46)
              {
                goto LABEL_28;
              }

              goto LABEL_46;
            case 2:
              type metadata accessor for CMLFeatureValue();
              sub_2379E9288(v40, v41, 2);

              v45 = sub_237A2E7CC();
              if (v3)
              {
                goto LABEL_49;
              }

              goto LABEL_31;
            case 3:
              v70 = *(v39 - 2);

              v45 = sub_237A91FA8();
              goto LABEL_31;
            case 4:
              v70 = *(v39 - 2);

              v45 = sub_237AFF290();
              goto LABEL_31;
            case 5:
              v70 = *(v39 - 2);
              v47 = v40;
              v45 = sub_237AC85C4();
              goto LABEL_31;
            case 6:
              type metadata accessor for CMLFeatureValue();
              v45 = sub_237A2E78C();
              goto LABEL_31;
            default:
              v43 = sub_237B0F164(*(v39 - 2), v31, v32, v33, v34, v35, v36, v37, v56, v57, v58, v59, v60, v61, v62, v63, v64, *(&v64 + 1), v65, v66, v67, *(&v67 + 1), v68, v69, v70, v71, v72, v73, v74, v75);
              if (v3)
              {
                goto LABEL_49;
              }

              v44 = v43;
              if (!v43)
              {
                goto LABEL_45;
              }

LABEL_28:
              type metadata accessor for CMLFeatureValue();
              swift_allocObject();
              v45 = sub_237A2E764(v44, 1);
LABEL_31:
              sub_237A2DE9C(v45);
              if (v3)
              {
                goto LABEL_48;
              }

              sub_2379E8CE8(v40, v41, v42);

              v39 += 24;
              if (v64 == v38)
              {
                goto LABEL_33;
              }

              continue;
          }
        }

        break;
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:

      while (1)
      {
LABEL_49:
        swift_unexpectedError();
        __break(1u);
      }
    }

LABEL_33:

    v48 = 3;
    goto LABEL_35;
  }

  v69 = MEMORY[0x277D84F90];
  sub_237AC8A94();
  v17 = 0;
  v16 = v69;
  v18 = (v14 + 40);
  while (1)
  {
    if (v17 >= *(v14 + 16))
    {
      goto LABEL_42;
    }

    v19 = *(v18 - 1);
    v20 = *v18;
    v73 = MEMORY[0x277D837D0];
    v70 = v19;
    v71 = v20;
    swift_bridgeObjectRetain_n();
    sub_237AFCC90(&v70, &v67);
    if (v3)
    {
      break;
    }

    v21 = v15;

    v22 = v67;
    v23 = v68;
    v24 = v16;
    v69 = v16;
    v25 = *(v16 + 16);
    if (v25 >= *(v16 + 24) >> 1)
    {
      v64 = v67;
      sub_237AC8A94();
      v22 = v64;
      v24 = v69;
    }

    ++v17;
    *(v24 + 16) = v25 + 1;
    v16 = v24;
    v26 = v24 + 24 * v25;
    *(v26 + 32) = v22;
    *(v26 + 48) = v23;
    v18 += 2;
    v15 = v21;
    v27 = v21 == v17;
    v3 = 0;
    if (v27)
    {
      goto LABEL_14;
    }
  }

  (*(*(v60 - 8) + 8))(v58);
}

void *sub_237A77FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B580, &qword_237C0D770);
  sub_237A7B85C(&qword_27DE9BD98, &qword_27DE9B580, &qword_237C0D770);
  result = sub_237C08B3C();
  v8 = MEMORY[0x277D84F90];
  v35 = v6;
  if (!result)
  {
LABEL_21:
    v41[0] = v8;
    MEMORY[0x28223BE20](result);
    v28 = sub_237BBDC94(sub_237A7B8A0);
    v30 = v29;
    (*(*(v35 - 8) + 8))(a1);

    *a2 = v28;
    *(a2 + 8) = v30 & 1;
    return result;
  }

  v9 = result;
  v42 = MEMORY[0x277D84F90];
  sub_237AC8A94();
  v36 = v8;
  result = sub_237C08B2C();
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v34 = v9;
  v32 = a2;
  v10 = 0;
  v11 = MEMORY[0x277D84F70] + 8;
  v33 = a1;
  while (1)
  {
    if (__OFADD__(v10++, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    v13 = sub_237C08B9C();
    v15 = *v14;

    v13(v41, 0);
    if (v15)
    {
      break;
    }

    v23 = 0;
    v24 = 6;
LABEL_16:
    v25 = v36;
    v42 = v36;
    v26 = *(v36 + 16);
    if (v26 >= *(v36 + 24) >> 1)
    {
      sub_237AC8A94();
      v25 = v42;
    }

    *(v25 + 16) = v26 + 1;
    v36 = v25;
    v27 = v25 + 24 * v26;
    *(v27 + 32) = v23;
    *(v27 + 40) = 0;
    *(v27 + 48) = v24;
    result = sub_237C08B6C();
    if (v10 == v34)
    {
      a2 = v32;
      v8 = v36;
      goto LABEL_21;
    }
  }

  v16 = *(v15 + 16);
  if (!v16)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_15:
    sub_237A7987C(v17, v41);

    v23 = v41[0];
    v24 = 3;
    a1 = v33;
    goto LABEL_16;
  }

  v40 = MEMORY[0x277D84F90];
  sub_237AC8A94();
  v17 = v40;
  v18 = v15 + 32;
  while (1)
  {
    sub_2379FED88(v18, v41);
    v37[3] = v11;
    v37[0] = swift_allocObject();
    sub_2379FED88(v41, v37[0] + 16);
    sub_237AFCC90(v37, &v38);
    if (v3)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v41);
    v19 = v38;
    v20 = v39;
    v40 = v17;
    v21 = *(v17 + 16);
    if (v21 >= *(v17 + 24) >> 1)
    {
      v31 = v38;
      sub_237AC8A94();
      v19 = v31;
      v17 = v40;
    }

    *(v17 + 16) = v21 + 1;
    v22 = v17 + 24 * v21;
    *(v22 + 32) = v19;
    *(v22 + 48) = v20;
    v18 += 32;
    if (!--v16)
    {
      goto LABEL_15;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v41);

  (*(*(v35 - 8) + 8))(v33);
}

void *sub_237A783D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B578, &qword_237C14020);
  sub_237A7B85C(&qword_27DE9BD90, &qword_27DE9B578, &qword_237C14020);
  result = sub_237C08B3C();
  v8 = MEMORY[0x277D84F90];
  if (result)
  {
    v9 = result;
    v30 = MEMORY[0x277D84F90];
    sub_237AC8A94();
    v8 = v30;
    result = sub_237C08B2C();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v25 = a2;
      v26 = v9;
      v10 = 0;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v12 = sub_237C08B9C();
        v14 = *v13;

        v12(v27, 0);
        sub_237A79AF0(v14, &v28);
        if (v3)
        {
          (*(*(v6 - 8) + 8))(a1, v6);
        }

        v15 = a1;

        v16 = v28;
        v17 = v29;
        v18 = v8;
        v30 = v8;
        v19 = *(v8 + 16);
        if (v19 >= *(v8 + 24) >> 1)
        {
          v24 = v28;
          sub_237AC8A94();
          v16 = v24;
          v18 = v30;
        }

        *(v18 + 16) = v19 + 1;
        v8 = v18;
        v20 = v18 + 24 * v19;
        *(v20 + 32) = v16;
        *(v20 + 48) = v17;
        a1 = v15;
        result = sub_237C08B6C();
        ++v10;
        v3 = 0;
        if (v11 == v26)
        {
          a2 = v25;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v27[0] = v8;
    MEMORY[0x28223BE20](result);
    v21 = sub_237BBDC94(sub_237A7B8A0);
    v23 = v22;
    (*(*(v6 - 8) + 8))(a1, v6);

    *a2 = v21;
    *(a2 + 8) = v23 & 1;
  }

  return result;
}

void *sub_237A786C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B130, &qword_237C0CA28);
  sub_237A7B85C(&qword_27DE9BDA0, &qword_27DE9B130, &qword_237C0CA28);
  result = sub_237C08B3C();
  v8 = MEMORY[0x277D84F90];
  if (result)
  {
    v9 = result;
    v30 = MEMORY[0x277D84F90];
    sub_237AC8A94();
    v8 = v30;
    result = sub_237C08B2C();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v25 = a2;
      v26 = v9;
      v10 = 0;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v12 = sub_237C08B9C();
        v14 = *v13;

        v12(v27, 0);
        sub_237A7AB80(v14, &v28);
        if (v3)
        {
          (*(*(v6 - 8) + 8))(a1, v6);
        }

        v15 = a1;

        v16 = v28;
        v17 = v29;
        v18 = v8;
        v30 = v8;
        v19 = *(v8 + 16);
        if (v19 >= *(v8 + 24) >> 1)
        {
          v24 = v28;
          sub_237AC8A94();
          v16 = v24;
          v18 = v30;
        }

        *(v18 + 16) = v19 + 1;
        v8 = v18;
        v20 = v18 + 24 * v19;
        *(v20 + 32) = v16;
        *(v20 + 48) = v17;
        a1 = v15;
        result = sub_237C08B6C();
        ++v10;
        v3 = 0;
        if (v11 == v26)
        {
          a2 = v25;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v27[0] = v8;
    MEMORY[0x28223BE20](result);
    v21 = sub_237BBDC94(sub_237A7B8A0);
    v23 = v22;
    (*(*(v6 - 8) + 8))(a1, v6);

    *a2 = v21;
    *(a2 + 8) = v23 & 1;
  }

  return result;
}

void *sub_237A789B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B140, &unk_237C151F0);
  sub_237A7B85C(&qword_27DE9BDA8, &qword_27DE9B140, &unk_237C151F0);
  result = sub_237C08B3C();
  v8 = MEMORY[0x277D84F90];
  if (result)
  {
    v9 = result;
    v30 = MEMORY[0x277D84F90];
    sub_237AC8A94();
    v8 = v30;
    result = sub_237C08B2C();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v25 = a2;
      v26 = v9;
      v10 = 0;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v12 = sub_237C08B9C();
        v14 = *v13;

        v12(v27, 0);
        sub_237A7A864(v14, &v28);
        if (v3)
        {
          (*(*(v6 - 8) + 8))(a1, v6);
        }

        v15 = a1;

        v16 = v28;
        v17 = v29;
        v18 = v8;
        v30 = v8;
        v19 = *(v8 + 16);
        if (v19 >= *(v8 + 24) >> 1)
        {
          v24 = v28;
          sub_237AC8A94();
          v16 = v24;
          v18 = v30;
        }

        *(v18 + 16) = v19 + 1;
        v8 = v18;
        v20 = v18 + 24 * v19;
        *(v20 + 32) = v16;
        *(v20 + 48) = v17;
        a1 = v15;
        result = sub_237C08B6C();
        ++v10;
        v3 = 0;
        if (v11 == v26)
        {
          a2 = v25;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v27[0] = v8;
    MEMORY[0x28223BE20](result);
    v21 = sub_237BBDC94(sub_237A7B8A0);
    v23 = v22;
    (*(*(v6 - 8) + 8))(a1, v6);

    *a2 = v21;
    *(a2 + 8) = v23 & 1;
  }

  return result;
}

void *sub_237A78CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B138, &qword_237C0CA30);
  sub_237A7B85C(&qword_27DE9BDB0, &qword_27DE9B138, &qword_237C0CA30);
  result = sub_237C08B3C();
  v8 = MEMORY[0x277D84F90];
  if (result)
  {
    v9 = result;
    v30 = MEMORY[0x277D84F90];
    sub_237AC8A94();
    v8 = v30;
    result = sub_237C08B2C();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v25 = a2;
      v26 = v9;
      v10 = 0;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v12 = sub_237C08B9C();
        v14 = *v13;

        v12(v27, 0);
        sub_237A7A548(v14, &v28);
        if (v3)
        {
          (*(*(v6 - 8) + 8))(a1, v6);
        }

        v15 = a1;

        v16 = v28;
        v17 = v29;
        v18 = v8;
        v30 = v8;
        v19 = *(v8 + 16);
        if (v19 >= *(v8 + 24) >> 1)
        {
          v24 = v28;
          sub_237AC8A94();
          v16 = v24;
          v18 = v30;
        }

        *(v18 + 16) = v19 + 1;
        v8 = v18;
        v20 = v18 + 24 * v19;
        *(v20 + 32) = v16;
        *(v20 + 48) = v17;
        a1 = v15;
        result = sub_237C08B6C();
        ++v10;
        v3 = 0;
        if (v11 == v26)
        {
          a2 = v25;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v27[0] = v8;
    MEMORY[0x28223BE20](result);
    v21 = sub_237BBDC94(sub_237A7B8A0);
    v23 = v22;
    (*(*(v6 - 8) + 8))(a1, v6);

    *a2 = v21;
    *(a2 + 8) = v23 & 1;
  }

  return result;
}

void *sub_237A78FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCC0, &qword_237C0EC20);
  sub_237A7B85C(&qword_27DE9BDB8, &qword_27DE9BCC0, &qword_237C0EC20);
  result = sub_237C08B3C();
  v8 = MEMORY[0x277D84F90];
  if (result)
  {
    v9 = result;
    v30 = MEMORY[0x277D84F90];
    sub_237AC8A94();
    v8 = v30;
    result = sub_237C08B2C();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v25 = a2;
      v26 = v9;
      v10 = 0;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v12 = sub_237C08B9C();
        v14 = *v13;

        v12(v27, 0);
        sub_237A7A218(v14, &v28);
        if (v3)
        {
          (*(*(v6 - 8) + 8))(a1, v6);
        }

        v15 = a1;

        v16 = v28;
        v17 = v29;
        v18 = v8;
        v30 = v8;
        v19 = *(v8 + 16);
        if (v19 >= *(v8 + 24) >> 1)
        {
          v24 = v28;
          sub_237AC8A94();
          v16 = v24;
          v18 = v30;
        }

        *(v18 + 16) = v19 + 1;
        v8 = v18;
        v20 = v18 + 24 * v19;
        *(v20 + 32) = v16;
        *(v20 + 48) = v17;
        a1 = v15;
        result = sub_237C08B6C();
        ++v10;
        v3 = 0;
        if (v11 == v26)
        {
          a2 = v25;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v27[0] = v8;
    MEMORY[0x28223BE20](result);
    v21 = sub_237BBDC94(sub_237A7B8A0);
    v23 = v22;
    (*(*(v6 - 8) + 8))(a1, v6);

    *a2 = v21;
    *(a2 + 8) = v23 & 1;
  }

  return result;
}

void *sub_237A79294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCB8, &qword_237C0EC18);
  sub_237A7B85C(&qword_27DE9BDD0, &qword_27DE9BCB8, &qword_237C0EC18);
  result = sub_237C08B3C();
  v8 = MEMORY[0x277D84F90];
  if (result)
  {
    v9 = result;
    v30 = MEMORY[0x277D84F90];
    sub_237AC8A94();
    v8 = v30;
    result = sub_237C08B2C();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v25 = a2;
      v26 = v9;
      v10 = 0;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v12 = sub_237C08B9C();
        v14 = *v13;

        v12(v27, 0);
        sub_237A79D28(v14, &v28);
        if (v3)
        {
          (*(*(v6 - 8) + 8))(a1, v6);
        }

        v15 = a1;

        v16 = v28;
        v17 = v29;
        v18 = v8;
        v30 = v8;
        v19 = *(v8 + 16);
        if (v19 >= *(v8 + 24) >> 1)
        {
          v24 = v28;
          sub_237AC8A94();
          v16 = v24;
          v18 = v30;
        }

        *(v18 + 16) = v19 + 1;
        v8 = v18;
        v20 = v18 + 24 * v19;
        *(v20 + 32) = v16;
        *(v20 + 48) = v17;
        a1 = v15;
        result = sub_237C08B6C();
        ++v10;
        v3 = 0;
        if (v11 == v26)
        {
          a2 = v25;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v27[0] = v8;
    MEMORY[0x28223BE20](result);
    v21 = sub_237BBDC94(sub_237A7B8A0);
    v23 = v22;
    (*(*(v6 - 8) + 8))(a1, v6);

    *a2 = v21;
    *(a2 + 8) = v23 & 1;
  }

  return result;
}

void *sub_237A79588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B168, &unk_237C151E0);
  sub_237A7B85C(&qword_27DE9BDC0, &qword_27DE9B168, &unk_237C151E0);
  result = sub_237C08B3C();
  v8 = MEMORY[0x277D84F90];
  if (result)
  {
    v9 = result;
    v30 = MEMORY[0x277D84F90];
    sub_237AC8A94();
    v8 = v30;
    result = sub_237C08B2C();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v25 = a2;
      v26 = v9;
      v10 = 0;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v12 = sub_237C08B9C();
        v14 = *v13;

        v12(v27, 0);
        sub_237A7AE9C(v14, &v28);
        if (v3)
        {
          (*(*(v6 - 8) + 8))(a1, v6);
        }

        v15 = a1;

        v16 = v28;
        v17 = v29;
        v18 = v8;
        v30 = v8;
        v19 = *(v8 + 16);
        if (v19 >= *(v8 + 24) >> 1)
        {
          v24 = v28;
          sub_237AC8A94();
          v16 = v24;
          v18 = v30;
        }

        *(v18 + 16) = v19 + 1;
        v8 = v18;
        v20 = v18 + 24 * v19;
        *(v20 + 32) = v16;
        *(v20 + 48) = v17;
        a1 = v15;
        result = sub_237C08B6C();
        ++v10;
        v3 = 0;
        if (v11 == v26)
        {
          a2 = v25;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v27[0] = v8;
    MEMORY[0x28223BE20](result);
    v21 = sub_237BBDC94(sub_237A7B8A0);
    v23 = v22;
    (*(*(v6 - 8) + 8))(a1, v6);

    *a2 = v21;
    *(a2 + 8) = v23 & 1;
  }

  return result;
}

uint64_t sub_237A79AF0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = a2;
  if (!result)
  {
    *a2 = 0;
    a2[1] = 0;
    v12 = 6;
LABEL_14:
    *(v3 + 16) = v12;
    return result;
  }

  v4 = result;
  v5 = *(result + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
LABEL_13:
    result = sub_237A7987C(v6, v19);
    *v3 = v19[0];
    v3[1] = 0;
    v12 = 3;
    goto LABEL_14;
  }

  v22 = MEMORY[0x277D84F90];
  sub_237AC8A94();
  v6 = v22;
  v7 = v4 + 32;
  v15 = MEMORY[0x277D84F70] + 8;
  while (1)
  {
    sub_237A7B7A0(v7, v19, &qword_27DE9A998, &unk_237C0C100);
    sub_237A7B7A0(v19, &v16, &qword_27DE9A998, &unk_237C0C100);
    if (!v17)
    {
      sub_237A7B808(v19, &qword_27DE9A998, &unk_237C0C100);
      sub_237A7B808(&v16, &qword_27DE9A998, &unk_237C0C100);
      v8 = 0uLL;
      v20 = 0u;
      v9 = 6;
      v21 = 6;
      goto LABEL_8;
    }

    sub_2379DAD24(&v16, v18);
    v17 = v15;
    *&v16 = swift_allocObject();
    sub_2379FED88(v18, v16 + 16);
    sub_237AFCC90(&v16, &v20);
    if (v2)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v18);
    sub_237A7B808(v19, &qword_27DE9A998, &unk_237C0C100);
    v8 = v20;
    v9 = v21;
LABEL_8:
    v22 = v6;
    v10 = *(v6 + 16);
    if (v10 >= *(v6 + 24) >> 1)
    {
      v13 = v8;
      sub_237AC8A94();
      v8 = v13;
      v6 = v22;
    }

    *(v6 + 16) = v10 + 1;
    v11 = v6 + 24 * v10;
    *(v11 + 32) = v8;
    *(v11 + 48) = v9;
    v7 += 32;
    if (!--v5)
    {
      v3 = a2;
      goto LABEL_13;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_237A7B808(v19, &qword_27DE9A998, &unk_237C0C100);
}

void sub_237A79D28(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = a2;
  if (!result)
  {
    *a2 = 0;
    a2[1] = 0;
    v31 = 6;
LABEL_28:
    *(v3 + 16) = v31;
    return;
  }

  v4 = result;
  v5 = *(result + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
LABEL_27:
    *v3 = sub_237B6A9C8(v6);
    v3[1] = 0;
    v31 = 4;
    goto LABEL_28;
  }

  v60 = MEMORY[0x277D84F90];
  sub_237AC8AB4();
  v44 = v60;
  v9 = sub_237B024B4(v4);
  v10 = 0;
  v43 = v4 + 64;
  v35 = v7;
  v33 = v4 + 72;
  v34 = MEMORY[0x277D84F70] + 8;
  v36 = v5;
  v37 = v4;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v4 + 32))
  {
    v11 = v9 >> 6;
    if ((*(v43 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_31;
    }

    if (*(v4 + 36) != v7)
    {
      goto LABEL_32;
    }

    v42 = v7;
    v38 = v8;
    v12 = (*(v4 + 48) + 16 * v9);
    v13 = *v12;
    v14 = v12[1];
    sub_2379FED88(*(v4 + 56) + 32 * v9, v54);
    v52[0] = v13;
    v52[1] = v14;
    sub_2379DAD24(v54, &v53);
    sub_237A7B7A0(v52, v51, &qword_27DE9BDD8, &qword_237C0EC70);
    sub_237A7B7A0(v51, &v48, &qword_27DE9BDE0, &qword_237C0EC78);
    v41 = v10;
    if (*(&v48 + 1))
    {
      v50[0] = v48;
      v50[1] = v49[0];
      v50[2] = v49[1];
      sub_237A7B7A0(v50, &v48, &qword_27DE9BDD8, &qword_237C0EC70);
      v55 = v48;
      v56 = 2;
      sub_237A7B7A0(v50, v45, &qword_27DE9BDD8, &qword_237C0EC70);

      v47[3] = v34;
      v47[0] = swift_allocObject();
      sub_2379DAD24(&v46, (v47[0] + 16));
      sub_237AFCC90(v47, &v57);
      if (v2)
      {
        sub_2379E8CE8(v55, *(&v55 + 1), v56);
        sub_237A7B808(v50, &qword_27DE9BDD8, &qword_237C0EC70);
        __swift_destroy_boxed_opaque_existential_1(v49);
        sub_237A7B808(v51, &qword_27DE9BDE0, &qword_237C0EC78);
        sub_237A7B808(v52, &qword_27DE9BDD8, &qword_237C0EC70);

        return;
      }

      sub_237A7B808(v50, &qword_27DE9BDD8, &qword_237C0EC70);
      __swift_destroy_boxed_opaque_existential_1(v49);
      v40 = v55;
      v15 = v56;
      v16 = v57;
      v39 = v58;
      v17 = v59;
    }

    else
    {

      sub_237A7B808(&v48, &qword_27DE9BDE0, &qword_237C0EC78);
      v39 = 0;
      v40 = 0uLL;
      v16 = 0;
      v55 = 0uLL;
      v17 = 6;
      v56 = 6;
      v57 = 0;
      v58 = 0;
      v15 = 6;
      v59 = 6;
    }

    sub_237A7B808(v51, &qword_27DE9BDE0, &qword_237C0EC78);
    sub_237A7B808(v52, &qword_27DE9BDD8, &qword_237C0EC70);
    v18 = v44;
    v60 = v44;
    v19 = *(v44 + 16);
    if (v19 >= *(v44 + 24) >> 1)
    {
      sub_237AC8AB4();
      v18 = v60;
    }

    *(v18 + 16) = v19 + 1;
    v20 = v18 + 48 * v19;
    *(v20 + 32) = v40;
    *(v20 + 48) = v15;
    *(v20 + 56) = v16;
    *(v20 + 64) = v39;
    *(v20 + 72) = v17;
    v4 = v37;
    v21 = 1 << *(v37 + 32);
    if (v9 >= v21)
    {
      goto LABEL_33;
    }

    v22 = *(v43 + 8 * v11);
    if ((v22 & (1 << v9)) == 0)
    {
      goto LABEL_34;
    }

    if (*(v37 + 36) != v42)
    {
      goto LABEL_35;
    }

    v23 = v22 & (-2 << (v9 & 0x3F));
    v44 = v18;
    if (v23)
    {
      v21 = __clz(__rbit64(v23)) | v9 & 0x7FFFFFFFFFFFFFC0;
      v24 = v36;
      v25 = v41;
    }

    else
    {
      v26 = v11 << 6;
      v27 = v11 + 1;
      v28 = (v33 + 8 * v11);
      v24 = v36;
      v25 = v41;
      while (v27 < (v21 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          sub_2379E8FD0(v9, v42, v38 & 1);
          v21 = __clz(__rbit64(v29)) + v26;
          goto LABEL_24;
        }
      }

      sub_2379E8FD0(v9, v42, v38 & 1);
    }

LABEL_24:
    v8 = 0;
    v10 = v25 + 1;
    v9 = v21;
    v7 = v35;
    if (v10 == v24)
    {
      v3 = a2;
      v6 = v44;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_237A7A218(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = a2;
  if (!result)
  {
    *a2 = 0;
    a2[1] = 0;
    v35 = 6;
LABEL_26:
    *(v4 + 16) = v35;
    return;
  }

  v5 = result;
  v6 = *(result + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_25:
    *v4 = sub_237B6A9C8(v7);
    v4[1] = 0;
    v35 = 4;
    goto LABEL_26;
  }

  v52 = MEMORY[0x277D84F90];
  sub_237AC8AB4();
  v7 = v52;
  v10 = sub_237B024B4(v5);
  v11 = 0;
  v12 = v5 + 64;
  v40 = v8;
  v41 = v6;
  v39 = v5 + 72;
  v42 = v5 + 64;
  v43 = v5;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v5 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v12 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_28;
    }

    if (*(v5 + 36) != v8)
    {
      goto LABEL_29;
    }

    v45 = v11;
    v46 = v8;
    v44 = v9;
    v14 = (*(v5 + 48) + 16 * v10);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(v5 + 56) + 16 * v10);
    v18 = *v17;
    v19 = v17[1];
    *&v48 = v15;
    *(&v48 + 1) = v16;
    v49 = 2;
    v47[3] = MEMORY[0x277D837D0];
    v47[0] = v18;
    v47[1] = v19;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_237AFCC90(v47, &v50);
    if (v3)
    {
      sub_2379E8CE8(v48, *(&v48 + 1), v49);

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      return;
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v20 = v48;
    v21 = v49;
    v22 = v50;
    v23 = v51;
    v52 = v7;
    v24 = *(v7 + 16);
    if (v24 >= *(v7 + 24) >> 1)
    {
      v36 = v50;
      v37 = v48;
      sub_237AC8AB4();
      v22 = v36;
      v20 = v37;
      v7 = v52;
    }

    *(v7 + 16) = v24 + 1;
    v25 = v7 + 48 * v24;
    *(v25 + 32) = v20;
    *(v25 + 48) = v21;
    *(v25 + 56) = v22;
    *(v25 + 72) = v23;
    v5 = v43;
    v26 = 1 << *(v43 + 32);
    if (v10 >= v26)
    {
      goto LABEL_30;
    }

    v12 = v42;
    v27 = *(v42 + 8 * v13);
    if ((v27 & (1 << v10)) == 0)
    {
      goto LABEL_31;
    }

    if (*(v43 + 36) != v46)
    {
      goto LABEL_32;
    }

    v28 = v27 & (-2 << (v10 & 0x3F));
    if (v28)
    {
      v26 = __clz(__rbit64(v28)) | v10 & 0x7FFFFFFFFFFFFFC0;
      v29 = v41;
    }

    else
    {
      v30 = v13 << 6;
      v31 = v13 + 1;
      v32 = (v39 + 8 * v13);
      v29 = v41;
      while (v31 < (v26 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          sub_2379E8FD0(v10, v46, v44 & 1);
          v26 = __clz(__rbit64(v33)) + v30;
          goto LABEL_21;
        }
      }

      sub_2379E8FD0(v10, v46, v44 & 1);
    }

LABEL_21:
    v3 = 0;
    v9 = 0;
    v11 = v45 + 1;
    v10 = v26;
    v8 = v40;
    if (v45 + 1 == v29)
    {
      v4 = a2;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_237A7A548(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = a2;
  if (!result)
  {
    *a2 = 0;
    a2[1] = 0;
    v33 = 6;
LABEL_26:
    *(v4 + 16) = v33;
    return;
  }

  v5 = result;
  v6 = *(result + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_25:
    *v4 = sub_237B6A9C8(v7);
    v4[1] = 0;
    v33 = 4;
    goto LABEL_26;
  }

  v50 = MEMORY[0x277D84F90];
  sub_237AC8AB4();
  v7 = v50;
  v10 = sub_237B024B4(v5);
  v11 = 0;
  v43 = v5 + 64;
  v38 = v8;
  v39 = v6;
  v37 = v5 + 72;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v5 + 32))
  {
    v12 = v10 >> 6;
    if ((*(v43 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_28;
    }

    if (*(v5 + 36) != v8)
    {
      goto LABEL_29;
    }

    v42 = v8;
    v40 = v9;
    v13 = (*(v5 + 48) + 16 * v10);
    v14 = *(*(v5 + 56) + 4 * v10);
    v15 = v13[1];
    *&v46 = *v13;
    *(&v46 + 1) = v15;
    v47 = 2;
    v45 = MEMORY[0x277D83A90];
    v44[0] = v14;
    swift_bridgeObjectRetain_n();
    sub_237AFCC90(v44, &v48);
    if (v3)
    {
      sub_2379E8CE8(v46, *(&v46 + 1), v47);

      swift_bridgeObjectRelease_n();
      return;
    }

    v41 = v11;
    v16 = v5;
    swift_bridgeObjectRelease_n();
    v17 = v46;
    v18 = v47;
    v19 = v48;
    v20 = v49;
    v50 = v7;
    v21 = *(v7 + 16);
    if (v21 >= *(v7 + 24) >> 1)
    {
      v34 = v48;
      v35 = v46;
      sub_237AC8AB4();
      v19 = v34;
      v17 = v35;
      v7 = v50;
    }

    *(v7 + 16) = v21 + 1;
    v22 = v7 + 48 * v21;
    *(v22 + 32) = v17;
    *(v22 + 48) = v18;
    *(v22 + 56) = v19;
    *(v22 + 72) = v20;
    v23 = 1 << *(v16 + 32);
    if (v10 >= v23)
    {
      goto LABEL_30;
    }

    v24 = *(v43 + 8 * v12);
    if ((v24 & (1 << v10)) == 0)
    {
      goto LABEL_31;
    }

    v5 = v16;
    if (*(v16 + 36) != v42)
    {
      goto LABEL_32;
    }

    v25 = v24 & (-2 << (v10 & 0x3F));
    if (v25)
    {
      v23 = __clz(__rbit64(v25)) | v10 & 0x7FFFFFFFFFFFFFC0;
      v26 = v39;
      v27 = v41;
    }

    else
    {
      v28 = v12 << 6;
      v29 = v12 + 1;
      v30 = (v37 + 8 * v12);
      v26 = v39;
      v27 = v41;
      while (v29 < (v23 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          sub_2379E8FD0(v10, v42, v40 & 1);
          v23 = __clz(__rbit64(v31)) + v28;
          goto LABEL_21;
        }
      }

      sub_2379E8FD0(v10, v42, v40 & 1);
    }

LABEL_21:
    v9 = 0;
    v11 = v27 + 1;
    v10 = v23;
    v8 = v38;
    v3 = 0;
    if (v11 == v26)
    {
      v4 = a2;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_237A7A864(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = a2;
  if (!result)
  {
    *a2 = 0;
    a2[1] = 0;
    v33 = 6;
LABEL_26:
    *(v4 + 16) = v33;
    return;
  }

  v5 = result;
  v6 = *(result + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_25:
    *v4 = sub_237B6A9C8(v7);
    v4[1] = 0;
    v33 = 4;
    goto LABEL_26;
  }

  v49 = MEMORY[0x277D84F90];
  sub_237AC8AB4();
  v7 = v49;
  v10 = sub_237B024B4(v5);
  v11 = 0;
  v43 = v5 + 64;
  v38 = v8;
  v39 = v6;
  v37 = v5 + 72;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v5 + 32))
  {
    v12 = v10 >> 6;
    if ((*(v43 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_28;
    }

    if (*(v5 + 36) != v8)
    {
      goto LABEL_29;
    }

    v42 = v8;
    v40 = v9;
    v13 = (*(v5 + 48) + 16 * v10);
    v14 = *(*(v5 + 56) + 8 * v10);
    v15 = v13[1];
    *&v45 = *v13;
    *(&v45 + 1) = v15;
    v46 = 2;
    v44[3] = MEMORY[0x277D839F8];
    v44[0] = v14;
    swift_bridgeObjectRetain_n();
    sub_237AFCC90(v44, &v47);
    if (v3)
    {
      sub_2379E8CE8(v45, *(&v45 + 1), v46);

      swift_bridgeObjectRelease_n();
      return;
    }

    v41 = v11;
    v16 = v5;
    swift_bridgeObjectRelease_n();
    v17 = v45;
    v18 = v46;
    v19 = v47;
    v20 = v48;
    v49 = v7;
    v21 = *(v7 + 16);
    if (v21 >= *(v7 + 24) >> 1)
    {
      v34 = v47;
      v35 = v45;
      sub_237AC8AB4();
      v19 = v34;
      v17 = v35;
      v7 = v49;
    }

    *(v7 + 16) = v21 + 1;
    v22 = v7 + 48 * v21;
    *(v22 + 32) = v17;
    *(v22 + 48) = v18;
    *(v22 + 56) = v19;
    *(v22 + 72) = v20;
    v23 = 1 << *(v16 + 32);
    if (v10 >= v23)
    {
      goto LABEL_30;
    }

    v24 = *(v43 + 8 * v12);
    if ((v24 & (1 << v10)) == 0)
    {
      goto LABEL_31;
    }

    v5 = v16;
    if (*(v16 + 36) != v42)
    {
      goto LABEL_32;
    }

    v25 = v24 & (-2 << (v10 & 0x3F));
    if (v25)
    {
      v23 = __clz(__rbit64(v25)) | v10 & 0x7FFFFFFFFFFFFFC0;
      v26 = v39;
      v27 = v41;
    }

    else
    {
      v28 = v12 << 6;
      v29 = v12 + 1;
      v30 = (v37 + 8 * v12);
      v26 = v39;
      v27 = v41;
      while (v29 < (v23 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          sub_2379E8FD0(v10, v42, v40 & 1);
          v23 = __clz(__rbit64(v31)) + v28;
          goto LABEL_21;
        }
      }

      sub_2379E8FD0(v10, v42, v40 & 1);
    }

LABEL_21:
    v9 = 0;
    v11 = v27 + 1;
    v10 = v23;
    v8 = v38;
    v3 = 0;
    if (v11 == v26)
    {
      v4 = a2;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_237A7AB80(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = a2;
  if (!result)
  {
    *a2 = 0;
    a2[1] = 0;
    v33 = 6;
LABEL_26:
    *(v4 + 16) = v33;
    return;
  }

  v5 = result;
  v6 = *(result + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_25:
    *v4 = sub_237B6A9C8(v7);
    v4[1] = 0;
    v33 = 4;
    goto LABEL_26;
  }

  v49 = MEMORY[0x277D84F90];
  sub_237AC8AB4();
  v7 = v49;
  v10 = sub_237B024B4(v5);
  v11 = 0;
  v43 = v5 + 64;
  v38 = v8;
  v39 = v6;
  v37 = v5 + 72;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v5 + 32))
  {
    v12 = v10 >> 6;
    if ((*(v43 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_28;
    }

    if (*(v5 + 36) != v8)
    {
      goto LABEL_29;
    }

    v42 = v8;
    v40 = v9;
    v13 = (*(v5 + 48) + 16 * v10);
    v14 = *(*(v5 + 56) + 8 * v10);
    v15 = v13[1];
    *&v45 = *v13;
    *(&v45 + 1) = v15;
    v46 = 2;
    v44[3] = MEMORY[0x277D83B88];
    v44[0] = v14;
    swift_bridgeObjectRetain_n();
    sub_237AFCC90(v44, &v47);
    if (v3)
    {
      sub_2379E8CE8(v45, *(&v45 + 1), v46);

      swift_bridgeObjectRelease_n();
      return;
    }

    v41 = v11;
    v16 = v5;
    swift_bridgeObjectRelease_n();
    v17 = v45;
    v18 = v46;
    v19 = v47;
    v20 = v48;
    v49 = v7;
    v21 = *(v7 + 16);
    if (v21 >= *(v7 + 24) >> 1)
    {
      v34 = v47;
      v35 = v45;
      sub_237AC8AB4();
      v19 = v34;
      v17 = v35;
      v7 = v49;
    }

    *(v7 + 16) = v21 + 1;
    v22 = v7 + 48 * v21;
    *(v22 + 32) = v17;
    *(v22 + 48) = v18;
    *(v22 + 56) = v19;
    *(v22 + 72) = v20;
    v23 = 1 << *(v16 + 32);
    if (v10 >= v23)
    {
      goto LABEL_30;
    }

    v24 = *(v43 + 8 * v12);
    if ((v24 & (1 << v10)) == 0)
    {
      goto LABEL_31;
    }

    v5 = v16;
    if (*(v16 + 36) != v42)
    {
      goto LABEL_32;
    }

    v25 = v24 & (-2 << (v10 & 0x3F));
    if (v25)
    {
      v23 = __clz(__rbit64(v25)) | v10 & 0x7FFFFFFFFFFFFFC0;
      v26 = v39;
      v27 = v41;
    }

    else
    {
      v28 = v12 << 6;
      v29 = v12 + 1;
      v30 = (v37 + 8 * v12);
      v26 = v39;
      v27 = v41;
      while (v29 < (v23 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          sub_2379E8FD0(v10, v42, v40 & 1);
          v23 = __clz(__rbit64(v31)) + v28;
          goto LABEL_21;
        }
      }

      sub_2379E8FD0(v10, v42, v40 & 1);
    }

LABEL_21:
    v9 = 0;
    v11 = v27 + 1;
    v10 = v23;
    v8 = v38;
    v3 = 0;
    if (v11 == v26)
    {
      v4 = a2;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_237A7AE9C(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  if (result)
  {
    v3 = result;
    v4 = *(result + 16);
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v50 = MEMORY[0x277D84F90];
      sub_237AC8AB4();
      v5 = v50;
      v8 = sub_237B024B4(v3);
      v9 = 0;
      v39 = v3 + 64;
      v34 = v6;
      v35 = v4;
      v33 = v3 + 72;
      while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v3 + 32))
      {
        v10 = v8 >> 6;
        if ((*(v39 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v3 + 36) != v6)
        {
          goto LABEL_28;
        }

        v37 = v9;
        v38 = v6;
        v36 = v7;
        v11 = (*(v3 + 48) + 16 * v8);
        v12 = *v11;
        v13 = v11[1];
        sub_237A7B7A0(*(v3 + 56) + 32 * v8, v45, &qword_27DE9A998, &unk_237C0C100);
        v42[0] = v12;
        v42[1] = v13;
        v43 = v45[0];
        v44 = v45[1];
        sub_237A7B7A0(v42, v41, &qword_27DE9ADA0, &qword_237C0BF18);

        sub_237A7B21C(&v46, &v48, v41);
        if (v40)
        {
          sub_237A7B808(v41, &qword_27DE9BDC8, &qword_237C0EC68);
          sub_237A7B808(v42, &qword_27DE9ADA0, &qword_237C0BF18);

          return;
        }

        v14 = v3;
        v40 = 0;
        sub_237A7B808(v41, &qword_27DE9BDC8, &qword_237C0EC68);
        sub_237A7B808(v42, &qword_27DE9ADA0, &qword_237C0BF18);
        v15 = v46;
        v16 = v47;
        v17 = v48;
        v18 = v49;
        v50 = v5;
        v19 = *(v5 + 16);
        if (v19 >= *(v5 + 24) >> 1)
        {
          v30 = v48;
          v31 = v46;
          sub_237AC8AB4();
          v17 = v30;
          v15 = v31;
          v5 = v50;
        }

        *(v5 + 16) = v19 + 1;
        v20 = v5 + 48 * v19;
        *(v20 + 32) = v15;
        *(v20 + 48) = v16;
        *(v20 + 56) = v17;
        *(v20 + 72) = v18;
        v3 = v14;
        v21 = 1 << *(v14 + 32);
        if (v8 >= v21)
        {
          goto LABEL_29;
        }

        v22 = *(v39 + 8 * v10);
        if ((v22 & (1 << v8)) == 0)
        {
          goto LABEL_30;
        }

        if (*(v14 + 36) != v38)
        {
          goto LABEL_31;
        }

        v23 = v22 & (-2 << (v8 & 0x3F));
        if (v23)
        {
          v21 = __clz(__rbit64(v23)) | v8 & 0x7FFFFFFFFFFFFFC0;
          v24 = v35;
        }

        else
        {
          v25 = v10 << 6;
          v26 = v10 + 1;
          v27 = (v33 + 8 * v10);
          v24 = v35;
          while (v26 < (v21 + 63) >> 6)
          {
            v29 = *v27++;
            v28 = v29;
            v25 += 64;
            ++v26;
            if (v29)
            {
              sub_2379E8FD0(v8, v38, v36 & 1);
              v21 = __clz(__rbit64(v28)) + v25;
              goto LABEL_21;
            }
          }

          sub_2379E8FD0(v8, v38, v36 & 1);
        }

LABEL_21:
        v7 = 0;
        v9 = v37 + 1;
        v8 = v21;
        v6 = v34;
        if (v37 + 1 == v24)
        {
          v2 = a2;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    else
    {
LABEL_25:
      *v2 = sub_237B6A9C8(v5);
      *(v2 + 8) = 0;
      *(v2 + 16) = 4;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 6;
  }
}

uint64_t sub_237A7B21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237A7B7A0(a3, &v11, &qword_27DE9BDC8, &qword_237C0EC68);
  if (*(&v11 + 1))
  {
    v14 = v11;
    v15 = v12;
    v16 = v13;
    sub_237A7B7A0(&v14, &v11, &qword_27DE9ADA0, &qword_237C0BF18);

    if (*(&v13 + 1))
    {
      sub_2379DAD24(&v12, v10);
      sub_237A7B7A0(&v14, &v11, &qword_27DE9ADA0, &qword_237C0BF18);
      v6 = v11;
      *a1 = v11;
      *(a1 + 16) = 2;
      v9[3] = MEMORY[0x277D84F70] + 8;
      v9[0] = swift_allocObject();
      sub_2379FED88(v10, v9[0] + 16);
      sub_237AFCC90(v9, a2);
      if (v3)
      {
        sub_2379E8CE8(v6, *(&v6 + 1), 2);
      }

      __swift_destroy_boxed_opaque_existential_1(v10);
      sub_237A7B808(&v14, &qword_27DE9ADA0, &qword_237C0BF18);
    }

    else
    {
      sub_237A7B808(&v12, &qword_27DE9A998, &unk_237C0C100);
      v11 = v14;
      v12 = v15;
      v13 = v16;
      v8 = *(&v14 + 1);
      *a1 = v14;
      *(a1 + 8) = v8;
      *(a1 + 16) = 2;
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 6;
    }

    return sub_237A7B808(&v12, &qword_27DE9A998, &unk_237C0C100);
  }

  else
  {
    result = sub_237A7B808(&v11, &qword_27DE9BDC8, &qword_237C0EC68);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 6;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 6;
  }

  return result;
}

void sub_237A7B42C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v41 = *(a1 + 16);
  for (i = (a1 + 72); ; i += 48)
  {
    if (v41 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_237C0932C();
      __break(1u);
      goto LABEL_23;
    }

    v6 = *(i - 24);
    v7 = *i;
    v9 = *(i - 2);
    v8 = *(i - 1);
    v10 = *(i - 5);
    v11 = *(i - 4);
    v12 = OUTLINED_FUNCTION_31_6();
    sub_2379E9288(v12, v13, v14);
    sub_2379E9288(v9, v8, v7);
    if (v6 == 255)
    {
      goto LABEL_17;
    }

    v43 = v9;
    v44 = v8;
    v45 = v7;
    v15 = *a3;
    v16 = OUTLINED_FUNCTION_31_6();
    v20 = sub_237ACB180(v16, v17, v18);
    v21 = v15[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_20;
    }

    v24 = v19;
    if (v15[3] < v23)
    {
      break;
    }

    if (a2)
    {
      if (v19)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BDE8, &qword_237C0EC80);
      sub_237C090BC();
      if (v24)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v30 = *a3;
    *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    v31 = v30[6] + 24 * v20;
    *v31 = v10;
    *(v31 + 8) = v11;
    *(v31 + 16) = v6;
    v32 = v30[7] + 24 * v20;
    *v32 = v43;
    *(v32 + 8) = v44;
    *(v32 + 16) = v45;
    v33 = v30[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_21;
    }

    v30[2] = v35;
    ++v4;
    a2 = 1;
  }

  sub_237ABF994(v23, a2 & 1);
  v25 = OUTLINED_FUNCTION_31_6();
  v28 = sub_237ACB180(v25, v26, v27);
  if ((v24 & 1) != (v29 & 1))
  {
    goto LABEL_22;
  }

  v20 = v28;
  if ((v24 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  OUTLINED_FUNCTION_50();
  v36 = swift_allocError();
  swift_willThrow();

  v37 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2379E8CE8(v43, v44, v45);
    v38 = OUTLINED_FUNCTION_31_6();
    sub_2379E8CE8(v38, v39, v40);

    return;
  }

LABEL_23:
  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
  sub_237C0907C();
  MEMORY[0x2383DC360](39, 0xE100000000000000);
  sub_237C090DC();
  __break(1u);
}

uint64_t sub_237A7B768()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237A7B7A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_237A7B808(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_12_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_237A7B85C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_125();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_237A7B85C(a1, a2, a3);
}

double OUTLINED_FUNCTION_8_18(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 1;
  return result;
}

void OUTLINED_FUNCTION_10_15(uint64_t a1@<X8>)
{
  *(v1 + 944) = a1;

  sub_237AC8A94();
}

uint64_t OUTLINED_FUNCTION_14_14()
{

  return swift_retain_n();
}

void OUTLINED_FUNCTION_18_15(uint64_t a1@<X8>)
{
  v1[74] = a1 + 32;
  v1[72] = a1 + 16;
  v1[71] = a1 + 8;
}

uint64_t OUTLINED_FUNCTION_24_10()
{

  return sub_237C0602C();
}

double OUTLINED_FUNCTION_38_4(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  return result;
}

void OUTLINED_FUNCTION_42_2()
{
  if (v0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  *(v3 + 16) = v2;
  v6 = v3 + 16 * v4;
  *(v6 + 32) = v1;
  *(v6 + 40) = v5;
}

uint64_t OUTLINED_FUNCTION_44_4()
{

  return sub_237C05D4C();
}

uint64_t OUTLINED_FUNCTION_45_2()
{

  return sub_237C0602C();
}

void OUTLINED_FUNCTION_46_4()
{

  sub_237AC8A94();
}

uint64_t OUTLINED_FUNCTION_55_4()
{
  *(v2 + 16) = v4;
  v6 = v2 + 24 * v3;
  *(v6 + 32) = v1;
  *(v6 + 40) = 0;
  *(v6 + 48) = v5;
  return v0 + 872;
}

uint64_t OUTLINED_FUNCTION_58_4@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = v2;
  *(a1 + 40) = 0;
  *(a1 + 48) = v1;
  return v3 + 872;
}

uint64_t OUTLINED_FUNCTION_66_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_237C05EFC();
}

uint64_t OUTLINED_FUNCTION_67_2(double a1)
{

  return swift_willThrow();
}

void OUTLINED_FUNCTION_68_1()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_69_2()
{
}

uint64_t OUTLINED_FUNCTION_70_2()
{

  return sub_237B6ACC0();
}

uint64_t OUTLINED_FUNCTION_71_2(uint64_t a1, uint64_t *a2)
{
}

uint64_t OUTLINED_FUNCTION_72_3(double a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 48) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_73_2()
{

  return sub_237C08BFC();
}

uint64_t OUTLINED_FUNCTION_74_2@<X0>(uint64_t a1@<X8>)
{

  return sub_237A607E0(v1, a1);
}

uint64_t OUTLINED_FUNCTION_75_2(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_87_1()
{

  return sub_237C05D4C();
}

uint64_t OUTLINED_FUNCTION_89_0(uint64_t a1)
{

  return sub_237C05FEC();
}

uint64_t OUTLINED_FUNCTION_90_1(uint64_t a1)
{

  return sub_237C05FEC();
}

uint64_t OUTLINED_FUNCTION_91_0(unint64_t *a1)
{

  return sub_237A7B85C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_92_1()
{
  sub_2379E8CE8(v0, *(v1 - 312), 3);
}

uint64_t Array<A>.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_23_13();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = *v5;
  if (*(v5 + 8))
  {
    sub_2379DBC9C(*v5, 1);
    OUTLINED_FUNCTION_21_12();
    return sub_237C0897C();
  }

  v10 = sub_237C084DC();
  v19 = v10;
  v11 = OUTLINED_FUNCTION_21_12();
  v14 = type metadata accessor for MLDataColumn(v11, v12, a3, v13);
  result = MLDataColumn.count.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    v16 = result;
    if (result)
    {
      v17 = 0;
      do
      {
        v18 = v17 + 1;
        MLDataColumn.subscript.getter(v17, v14, v8);
        OUTLINED_FUNCTION_21_12();
        sub_237C089DC();
        sub_237C089AC();
        v17 = v18;
      }

      while (v16 != v18);
      sub_2379DBC9C(v9, 0);
      return v19;
    }

    else
    {
      sub_2379DBC9C(v9, 0);
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t MLDataColumn.count.getter()
{
  if (*(v0 + 8))
  {
    return -1;
  }

  v2 = sub_237A2F128();
  v3 = OUTLINED_FUNCTION_88();
  sub_2379DBC9C(v3, v4);
  return v2;
}

uint64_t sub_237A7C11C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t MLDataColumn.element(at:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 8))
  {
    v4 = 0uLL;
    v5 = 6;
  }

  else
  {

    sub_237A607E0(a1, &v10);
    v7 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v7, v8);
    v4 = v10;
    v5 = v11;
  }

  v10 = v4;
  v11 = v5;
  return (*(*(a2 + 24) + 16))(&v10);
}

void sub_237A7C1D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  MLDataColumn.map<A>(to:)(a2);
  sub_2379DBC9C(v4, v5);
  *a3 = v6;
  *(a3 + 8) = v7;
}

void MLDataColumn.map<A>(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_24_11();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_2379DBCF4(*v1, *(v1 + 8));
  MLUntypedColumn.map<A>(to:)(v5, v3, v7);
  OUTLINED_FUNCTION_25_9();

  sub_2379DBC9C(v8, v9);
}

id MLDataColumn.error.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

void MLDataColumn.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_3_15();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v11 = OUTLINED_FUNCTION_10_16(v10);
  v12(v11);
  MLUntypedColumn.init<A>(_:)();
  (*(v8 + 8))(a1, a3);
  OUTLINED_FUNCTION_16_11();
}

uint64_t MLDataColumn.init(repeating:count:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v8 = *a1;
  v9 = v5;
  v6 = type metadata accessor for _UntypedColumn();
  OUTLINED_FUNCTION_12_18(v6);
  result = sub_237A5FDF0(&v8, a2);
  *a3 = result;
  *(a3 + 8) = 0;
  return result;
}

void MLDataColumn.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_15();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v13 = OUTLINED_FUNCTION_10_16(v12);
  v14(v13);
  MLUntypedColumn.init<A>(repeating:count:)(v4, a2, a3, a4, &v15);
  (*(v10 + 8))(a1, a3);
  OUTLINED_FUNCTION_16_11();
}

void MLDataColumn.init()(uint64_t a1@<X8>)
{
  sub_2379E8AF0();
  swift_allocError();
  OUTLINED_FUNCTION_22_9(v2, 29);
  *(v3 + 48) = 1;
  *a1 = v4;
  *(a1 + 8) = 1;
}

void MLDataColumn.append(contentsOf:)(uint64_t a1)
{
  OUTLINED_FUNCTION_24_11();
  v3 = v1;
  v4 = *v1;
  if (v3[1])
  {
    v5 = 1;
  }

  else
  {
    v6 = *v2;
    if (*(v2 + 8))
    {
      v5 = 1;
      sub_2379DBCF4(*v2, 1);
      v7 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v7, v8);
      v4 = v6;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_3_22();
      sub_2379DBCF4(v9, v10);
      v11 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v11, v12);
      v13 = sub_237A60168(v6);
      v14 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v14, v15);
      v16 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v16, v17);
      v18 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v18, v19);
      v4 = v13;
      v5 = 0;
    }
  }

  *v3 = v4;
  *(v3 + 8) = v5;
  OUTLINED_FUNCTION_25_9();
}

void sub_237A7C6A0(uint64_t a1)
{
  v18 = *a1;
  LOBYTE(v20) = *(a1 + 8);
  v1 = sub_2379DBCF4(*a1, v20);
  v9 = OUTLINED_FUNCTION_20_8(v1, v2, v3, v4, v5, v6, v7, v8, v18);
  MLUntypedColumn.subscript.getter(v9);
  sub_2379DBC9C(v19, v20);
  OUTLINED_FUNCTION_18_16(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21, v22);
}

void sub_237A7C70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v13 = *(v6 + 8);
  v14 = swift_allocObject();
  v15 = *(a4 + 16);
  v16 = *(a4 + 24);
  v14[2] = v15;
  v14[3] = a5;
  v14[4] = v16;
  v14[5] = a6;
  v14[6] = a2;
  v14[7] = a3;
  if (v13)
  {
    v19 = v12;

    sub_2379DBCF4(v12, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (sub_237C0925C())
    {

      sub_2379DBC9C(v12, 1);
    }

    else
    {
      swift_allocError();
      *v18 = v12;
    }

    v17 = 1;
  }

  else
  {

    sub_2379DBCF4(v12, 0);
    sub_237A7CB58(sub_237A7E4A8, v14, a5, a6, &v19);

    sub_2379DBC9C(v12, 0);
    v17 = 0;
  }

  OUTLINED_FUNCTION_11_19(v17);
}

uint64_t sub_237A7C8A4(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v26 = a3;
  v23 = a6;
  v27 = a2;
  v24 = sub_237C08D2C();
  v9 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v11 = &v22 - v10;
  v12 = *(a5 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_237C08D2C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v22 - v18;
  if (sub_237A2E988())
  {
    __swift_storeEnumTagSinglePayload(v19, 1, 1, a4);
  }

  else
  {
    sub_237B70F8C(a4, v23, v19);
  }

  v27(v19);
  if (__swift_getEnumTagSinglePayload(v11, 1, a5) == 1)
  {
    (*(v9 + 8))(v11, v24);
    type metadata accessor for CMLFeatureValue();
    v20 = sub_237A2E78C();
  }

  else
  {
    (*(v12 + 32))(v15, v11, a5);
    v20 = sub_237B70DD4(a5, v25);
    (*(v12 + 8))(v15, a5);
  }

  (*(v17 + 8))(v19, v16);
  return v20;
}

uint64_t sub_237A7CB58@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t *a5@<X8>)
{
  (*(a4 + 8))(&v9, a3, a4);
  result = sub_237A60CE8(a1, a2, 0, &v9);
  *a5 = result;
  return result;
}

uint64_t MLDataColumn.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_237A7CD54(a1, a2, a3, a4, a5, &unk_284AC2AC0, sub_237A7E418);
}

{
  return sub_237A7CD54(a1, a2, a3, a4, a5, &unk_284AC2AE8, sub_237A7E430);
}

uint64_t sub_237A7CC04(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = sub_237C08D2C();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  result = __swift_getEnumTagSinglePayload(v10, 1, a4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a2(v10);
    return (*(*(a4 - 8) + 8))(v10, a4);
  }

  return result;
}

uint64_t sub_237A7CD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_19_14();
  v13 = v12;
  OUTLINED_FUNCTION_0_31();
  v14 = swift_allocObject();
  v15 = *(v9 + 24);
  v14[2] = *(v9 + 16);
  v14[3] = v8;
  v14[4] = v15;
  v14[5] = v7;
  v14[6] = v13;
  v14[7] = v10;

  sub_237A7C70C(1, a7, v14, v9, v8, v7);
}

uint64_t sub_237A7CE10@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_237C08D2C();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  (*(v14 + 16))(&v16 - v12, a1, v11);
  result = __swift_getEnumTagSinglePayload(v13, 1, a3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a2(v13);
    (*(*(a3 - 8) + 8))(v13, a3);
    return __swift_storeEnumTagSinglePayload(a5, 0, 1, a4);
  }

  return result;
}

void MLDataColumn.fillMissing(with:)()
{
  OUTLINED_FUNCTION_8_19();
  if (v2)
  {
    v10 = v0;
    v3 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (sub_237C0925C())
    {
      v4 = OUTLINED_FUNCTION_3_29();
      sub_2379DBC9C(v4, v5);
    }

    else
    {
      v7 = OUTLINED_FUNCTION_9_17();
      OUTLINED_FUNCTION_15_13(v7, v8);
    }

    v6 = 1;
  }

  else
  {
    v9 = v0;
    sub_237A7D080(&v9, *(v1 + 16), *(v1 + 24), &v10);
    v6 = 0;
  }

  OUTLINED_FUNCTION_11_19(v6);
}

uint64_t sub_237A7D080@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = sub_237B70DD4(a2, a3);
  result = sub_237B11000(*(*(v6 + 16) + 16), *(v7 + 16));
  if (v4)
  {
  }

  v9 = result;
  if (result)
  {
    type metadata accessor for CMLColumn();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    type metadata accessor for _UntypedColumn();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;

    *a4 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void MLDataColumn.materialize()(uint64_t a1@<X8>)
{
  v5 = *v2;
  if (*(v2 + 8))
  {
    swift_willThrow();
    sub_2379DBCF4(v5, 1);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_88();
    sub_2379DBCF4(v6, v7);
    sub_237A2F234();
    v8 = OUTLINED_FUNCTION_88();
    sub_2379DBC9C(v8, v9);
    if (!v3)
    {
      *a1 = v5;
      *(a1 + 8) = 0;
      v10 = OUTLINED_FUNCTION_88();
      sub_2379DBCF4(v10, v11);
    }
  }
}

uint64_t MLDataColumn.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  OUTLINED_FUNCTION_21_12();
  v8 = sub_237C08D2C();
  OUTLINED_FUNCTION_3_15();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v14 = *(v3 + 8);
  v17 = *v3;
  v18 = v14;
  MLDataColumn.element(at:)(a1, a2);
  if (__swift_getEnumTagSinglePayload(v13, 1, v7) == 1)
  {
    (*(*(a2 + 24) + 24))(v7);
    result = __swift_getEnumTagSinglePayload(v13, 1, v7);
    if (result != 1)
    {
      return (*(v10 + 8))(v13, v8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_13();
    return (*(v16 + 32))(a3, v13, v7);
  }

  return result;
}

void MLDataColumn.subscript.getter(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  MLUntypedColumn.subscript.getter(a2, a3);
  *a1 = v4;
  *(a1 + 8) = v5;
}

void MLDataColumn.subscript.getter(uint64_t a1@<X8>)
{
  v10 = *v1;
  LOBYTE(v11) = *(v1 + 8);
  if (MLDataColumn.count.getter() < 0)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF10, &qword_237C0D670);
    v3 = sub_237A365A8();
    OUTLINED_FUNCTION_20_8(v3, v4, v3, v5, v6, v7, v8, v9, 0);
    sub_237C088CC();
    MLDataColumn.subscript.getter(a1, v10, v11);
  }
}

void MLDataColumn<>.init<A>(column:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_237A7DE70(a1, a2, a3, MEMORY[0x277D83B88], &protocol witness table for Int, a6, a7, a8);
}

{
  sub_237A7DE70(a1, a2, a3, MEMORY[0x277D839F8], &protocol witness table for Double, a6, a7, a8);
}

{
  sub_237A7DE70(a1, a2, a3, MEMORY[0x277D837D0], &protocol witness table for String, a6, a7, a8);
}

{
  sub_237A7DE70(a1, a2, a3, &type metadata for MLDataValue.SequenceType, &protocol witness table for MLDataValue.SequenceType, a6, a7, a8);
}

{
  sub_237A7DE70(a1, a2, a3, &type metadata for MLDataValue.DictionaryType, &protocol witness table for MLDataValue.DictionaryType, a6, a7, a8);
}

void MLDataColumn<>.sum()()
{
  OUTLINED_FUNCTION_24_11();
  if ((*(v0 + 8) & 1) == 0)
  {
    v1 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v1, v2);
    v3 = sub_237A2F250();
    if (sub_237A2E950())
    {
      sub_237B0ECCC(*(v3 + 16));

      v4 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v4, v5);
    }

    else
    {
      v6 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v6, v7);
    }
  }

  OUTLINED_FUNCTION_25_9();
}

void sub_237A7D8C0(uint64_t a1)
{
  OUTLINED_FUNCTION_24_11();
  if ((*(v1 + 8) & 1) == 0)
  {
    v3 = v2;
    v4 = OUTLINED_FUNCTION_88();
    v6 = sub_2379DBCF4(v4, v5);
    v7 = v3(v6);
    if (sub_237A2E950())
    {
      sub_237B0ECCC(*(v7 + 16));

      v8 = OUTLINED_FUNCTION_88();
      sub_2379DBC9C(v8, v9);
    }

    else
    {
      v10 = OUTLINED_FUNCTION_88();
      sub_2379DBC9C(v10, v11);
    }
  }

  OUTLINED_FUNCTION_25_9();
}

uint64_t MLDataColumn<>.std()()
{
  return sub_237A7DB5C(sub_237A2F300);
}

{
  return sub_237A7DB5C(sub_237A2F300);
}

uint64_t MLDataColumn<>.mean()()
{
  return sub_237A7DB5C(sub_237A2F2D4);
}

{
  return sub_237A7DB5C(sub_237A2F2D4);
}

uint64_t sub_237A7DA3C(uint64_t (*a1)(id))
{
  if ((*(v1 + 8) & 1) == 0)
  {
    v3 = OUTLINED_FUNCTION_88();
    v5 = sub_2379DBCF4(v3, v4);
    a1(v5);
    if (sub_237A2E96C())
    {
      sub_237B0E848();
      v7 = v6;

      v8 = OUTLINED_FUNCTION_88();
      sub_2379DBC9C(v8, v9);
      return v7;
    }

    v11 = OUTLINED_FUNCTION_88();
    sub_2379DBC9C(v11, v12);
  }

  return 0;
}

uint64_t sub_237A7DB5C(uint64_t (*a1)(id))
{
  result = 0;
  if ((*(v1 + 8) & 1) == 0)
  {
    v4 = OUTLINED_FUNCTION_4_26();
    v6 = sub_2379DBCF4(v4, v5);
    a1(v6);
    if (sub_237A2E96C())
    {
      sub_237B0E848();
      v8 = v7;

      v9 = OUTLINED_FUNCTION_4_26();
      sub_2379DBC9C(v9, v10);
      return v8;
    }

    else
    {
      v11 = OUTLINED_FUNCTION_4_26();
      sub_2379DBC9C(v11, v12);

      return 0;
    }
  }

  return result;
}

uint64_t sub_237A7DC48()
{
  result = 0;
  if ((*(v0 + 8) & 1) == 0)
  {
    v2 = OUTLINED_FUNCTION_3_22();
    sub_2379DBCF4(v2, v3);
    sub_237A2F300();
    if (sub_237A2E96C())
    {
      sub_237B0E848();
      v5 = v4;

      v6 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v6, v7);
      return v5;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v8, v9);

      return 0;
    }
  }

  return result;
}

void MLDataColumn<>.init<A>(column:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237A7DD8C(a1, a2, a3, &qword_27DE9AEC8, &qword_237C0C2A0, &qword_27DE9B538);
}

{
  sub_237A7DD8C(a1, a2, a3, &qword_27DE9ACF0, &unk_237C14060, &qword_27DE9B530);
}

{
  sub_237A7DD8C(a1, a2, a3, &qword_27DE9AE60, &qword_237C0D000, &qword_27DE9B528);
}

void sub_237A7DD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  OUTLINED_FUNCTION_19_14();
  v10 = v9;
  v24 = *v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  v15 = sub_237A35F1C(a6, v7, v6);
  v22 = OUTLINED_FUNCTION_20_8(v15, v16, v17, v18, v15, v19, v20, v21, v24);
  sub_237A7C1D0(v22, v14, v23);
  *v10 = v25;
  *(v10 + 8) = v26;
}

void sub_237A7DE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LOBYTE(v20) = *(a1 + 8);
  v8 = OUTLINED_FUNCTION_20_8(a1, a2, a3, a4, a5, a3, a7, a8, *a1);
  sub_237A7C1D0(v8, v9, v10);
  OUTLINED_FUNCTION_18_16(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t MLDataColumn.customMirror.getter(uint64_t a1)
{
  v3 = sub_237C0942C();
  OUTLINED_FUNCTION_3_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DE9BE58, &unk_237C0ECD8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = *v1;
  v14 = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_237C0B670;
  *(v15 + 32) = 0x746E756F63;
  *(v15 + 40) = 0xE500000000000000;
  v23 = v13;
  v24 = v14;
  v16 = MLDataColumn.count.getter();
  v17 = MEMORY[0x277D83B88];
  *(v15 + 48) = v16;
  *(v15 + 72) = v17;
  *(v15 + 80) = 1701869940;
  *(v15 + 88) = 0xE400000000000000;
  v18 = *(a1 + 16);
  *(v15 + 120) = swift_getMetatypeMetadata();
  *(v15 + 96) = v18;
  v23 = a1;
  v19 = *MEMORY[0x277D84BF8];
  v20 = sub_237C0941C();
  OUTLINED_FUNCTION_23_13();
  (*(v21 + 104))(v12, v19, v20);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v20);
  (*(v5 + 104))(v9, *MEMORY[0x277D84C30], v3);
  swift_getMetatypeMetadata();
  return sub_237C0943C();
}

uint64_t MLDataColumn.description.getter()
{
  OUTLINED_FUNCTION_23_13();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v2 = *v0;
  if (*(v0 + 8))
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    swift_getErrorValue();
    sub_2379DBCF4(v2, 1);
    sub_237C0927C();
    v3 = v2;
    v4 = 1;
LABEL_18:
    sub_2379DBC9C(v3, v4);
    return v16;
  }

  v16 = 91;
  v17 = 0xE100000000000000;
  v14 = v2;
  LOBYTE(v15) = 0;
  v5 = OUTLINED_FUNCTION_88();
  sub_2379DBCF4(v5, v6);
  result = MLDataColumn.count.getter();
  if (result >= 10)
  {
    v8 = 10;
  }

  else
  {
    v8 = result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    if (result)
    {
      v13 = result;
      v9 = 0;
      do
      {
        if (v9)
        {
          MEMORY[0x2383DC360](8236, 0xE200000000000000);
        }

        sub_237A60248(&v14);
        if (v14 == 2)
        {
          OUTLINED_FUNCTION_13_15();
          v10 = sub_237C0874C();
          v14 = 34;
          v15 = 0xE100000000000000;
          MEMORY[0x2383DC360](v10);

          MEMORY[0x2383DC360](34, 0xE100000000000000);

          v11 = v14;
          v12 = v15;
        }

        else
        {
          OUTLINED_FUNCTION_13_15();
          v11 = sub_237C0874C();
        }

        MEMORY[0x2383DC360](v11, v12);
        ++v9;
      }

      while (v8 != v9);
      if (v13 >= 11)
      {
        MEMORY[0x2383DC360](0x2E2E2E202CLL, 0xE500000000000000);
      }
    }

    MEMORY[0x2383DC360](93, 0xE100000000000000);
    v3 = OUTLINED_FUNCTION_88();
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

unint64_t MLDataColumn.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_0_31();
  v2 = MLDataColumn.description.getter();
  v4 = v3;
  v5 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v6 = sub_237A02218(v2, v4, 0);
  result = sub_237A022C0();
  a1[3] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_237A7E3E0()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237A7E460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_9_17()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_12_18(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_15()
{
  *(v4 - 144) = v0;
  *(v4 - 136) = 0;

  return MLDataColumn.subscript.getter(v3, v1, v2);
}

void OUTLINED_FUNCTION_16_11()
{
  v2 = *(v1 - 72);
  *v0 = *(v1 - 80);
  *(v0 + 8) = v2;
}

uint64_t OUTLINED_FUNCTION_17_12(uint64_t a1)
{
  *(a1 + 16) = v1;

  return type metadata accessor for _UntypedColumn();
}

double OUTLINED_FUNCTION_22_9@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 8) = v2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_237C0925C();
}

id OUTLINED_FUNCTION_27_6(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{

  return v10;
}

uint64_t sub_237A7E684(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237A7E6C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v34 - v7;
  v8 = sub_237C0683C();
  MEMORY[0x28223BE20](v8 - 8);
  v38 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v34 - v11;
  MEMORY[0x28223BE20](v12);
  v39 = &v34 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  OUTLINED_FUNCTION_5_22();
  MEMORY[0x2383DC360](0x74657366666F2ELL, 0xE700000000000000);
  v17 = OUTLINED_FUNCTION_3_30();

  if (!v17)
  {
    OUTLINED_FUNCTION_0_32();
    sub_237C08EDC();
    OUTLINED_FUNCTION_4_27();

    v40 = a1;
    v41 = a2;
    v25 = "CreateML/MLDataColumn.swift";
    v26 = 0xD000000000000025;
LABEL_20:
    MEMORY[0x2383DC360](v26, v25 | 0x8000000000000000);
    v31 = v40;
    v32 = v41;
    sub_2379E8AF0();
    swift_allocError();
    *v33 = v31;
    *(v33 + 8) = v32;
    *(v33 + 16) = 0u;
    *(v33 + 32) = 0u;
    *(v33 + 48) = 2;
    return swift_willThrow();
  }

  v36 = a3;
  OUTLINED_FUNCTION_5_22();
  MEMORY[0x2383DC360](0x656C6163732ELL, 0xE600000000000000);
  v18 = OUTLINED_FUNCTION_3_30();

  if (!v18)
  {

    OUTLINED_FUNCTION_0_32();
    sub_237C08EDC();
    OUTLINED_FUNCTION_4_27();

    v40 = a1;
    v41 = a2;
    v25 = "d in state dictionary";
    v26 = 0xD000000000000024;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_5_22();
  MEMORY[0x2383DC360](0x676E696E6E75722ELL, 0xEC0000006E61654DLL);
  v19 = OUTLINED_FUNCTION_3_30();

  v35 = v19;
  if (!v19)
  {

    OUTLINED_FUNCTION_0_32();
    sub_237C08EDC();
    OUTLINED_FUNCTION_4_27();

    v40 = a1;
    v41 = a2;
    OUTLINED_FUNCTION_2_31();
    v26 = v27 + 26;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_0_32();
  sub_237C08EDC();
  OUTLINED_FUNCTION_4_27();

  v40 = a1;
  v41 = a2;
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C19B10);
  v20 = OUTLINED_FUNCTION_3_30();

  v34 = v20;
  if (!v20)
  {

    OUTLINED_FUNCTION_0_32();
    sub_237C08EDC();
    OUTLINED_FUNCTION_4_27();

    v40 = a1;
    v41 = a2;
    OUTLINED_FUNCTION_2_31();
    v26 = v28 + 30;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_5_22();
  MEMORY[0x2383DC360](0x75746E656D6F6D2ELL, 0xE90000000000006DLL);
  v21 = OUTLINED_FUNCTION_3_30();

  if (!v21)
  {
LABEL_17:

    OUTLINED_FUNCTION_0_32();
    sub_237C08EDC();
    OUTLINED_FUNCTION_4_27();

    v40 = a1;
    v41 = a2;
    OUTLINED_FUNCTION_2_31();
    v26 = v29 + 23;
    goto LABEL_20;
  }

  if (*(v21 + 16) != 1)
  {

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_5_22();
  MEMORY[0x2383DC360](0x6E6F6C697370652ELL, 0xE800000000000000);
  v22 = OUTLINED_FUNCTION_3_30();

  if (!v22)
  {
LABEL_19:

    OUTLINED_FUNCTION_0_32();
    sub_237C08EDC();
    OUTLINED_FUNCTION_4_27();

    v40 = a1;
    v41 = a2;
    OUTLINED_FUNCTION_2_31();
    v26 = v30 + 22;
    goto LABEL_20;
  }

  if (*(v22 + 16) != 1)
  {

    goto LABEL_19;
  }

  if (*(v21 + 16))
  {

    sub_237C0610C();
    v24 = v42;
    OUTLINED_FUNCTION_1_29();
    sub_237B666C0(v24, v17, v16);

    sub_237A7ECA4(v24);
    OUTLINED_FUNCTION_1_29();
    sub_237B666C0(v24, v18, v39);

    result = sub_237A7ECA4(v24);
    if (*(v22 + 16))
    {

      OUTLINED_FUNCTION_1_29();
      sub_237B666C0(v24, v35, v37);

      sub_237A7ECA4(v24);
      OUTLINED_FUNCTION_1_29();
      sub_237B666C0(v24, v34, v38);

      sub_237A7ECA4(v24);
      return sub_237C0695C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237A7ECA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_29()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_3_30()
{

  return sub_237ACDA88();
}

uint64_t OUTLINED_FUNCTION_4_27()
{
}

uint64_t OUTLINED_FUNCTION_5_22()
{
  *(v2 - 112) = v1;
  *(v2 - 104) = v0;
}

void sub_237A7ED98(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_18_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v89 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  MEMORY[0x28223BE20](v13 - 8);
  v104 = &v89 - v14;
  sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v102 = v16;
  v103 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  v101 = v17 - v18;
  MEMORY[0x28223BE20](v19);
  v110 = &v89 - v20;
  sub_237C0610C();
  OUTLINED_FUNCTION_0();
  v106 = v22;
  v107 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_0();
  v100 = v23 - v24;
  MEMORY[0x28223BE20](v25);
  v105 = &v89 - v26;
  OUTLINED_FUNCTION_6_23();
  MEMORY[0x2383DC360](0x7468676965772ELL, 0xE700000000000000);
  v27 = OUTLINED_FUNCTION_1_30();

  if (!v27)
  {
    OUTLINED_FUNCTION_0_33();
    sub_237C08EDC();
    OUTLINED_FUNCTION_7_19();

    v108 = a1;
    v109 = a2;
    OUTLINED_FUNCTION_3_31();
    v44 = v43 - 1;
LABEL_22:
    v46 = v42 | 0x8000000000000000;
LABEL_28:
    MEMORY[0x2383DC360](v44, v46);
    v48 = v108;
    v49 = v109;
    sub_2379E8AF0();
    swift_allocError();
    *v50 = v48;
    *(v50 + 8) = v49;
    *(v50 + 16) = 0u;
    *(v50 + 32) = 0u;
    *(v50 + 48) = 2;
    swift_willThrow();
    return;
  }

  v99 = v9;
  OUTLINED_FUNCTION_6_23();
  MEMORY[0x2383DC360](0x2E7468676965772ELL, 0xED00006570616873);
  v28 = OUTLINED_FUNCTION_1_30();

  if (!v28)
  {

    OUTLINED_FUNCTION_0_33();
    sub_237C08EDC();
    OUTLINED_FUNCTION_7_19();

    v108 = a1;
    v109 = a2;
    OUTLINED_FUNCTION_3_31();
    v44 = v45 + 5;
    goto LABEL_22;
  }

  v98 = a3;
  OUTLINED_FUNCTION_6_23();
  MEMORY[0x2383DC360](0x736564697274732ELL, 0xE800000000000000);
  v29 = OUTLINED_FUNCTION_1_30();

  if (!v29)
  {
LABEL_24:

    OUTLINED_FUNCTION_0_33();
    sub_237C08EDC();
    OUTLINED_FUNCTION_7_19();

    v108 = a1;
    v109 = a2;
    v47 = ".strides not found in state dictionary";
LABEL_27:
    v46 = (v47 - 32) | 0x8000000000000000;
    v44 = 0xD000000000000026;
    goto LABEL_28;
  }

  if (*(v29 + 16) != 2)
  {

    goto LABEL_24;
  }

  v97 = v29;
  OUTLINED_FUNCTION_6_23();
  MEMORY[0x2383DC360](0x676E69646461702ELL, 0xE800000000000000);
  v30 = OUTLINED_FUNCTION_1_30();

  if (!v30)
  {
LABEL_26:

    OUTLINED_FUNCTION_0_33();
    sub_237C08EDC();
    OUTLINED_FUNCTION_7_19();

    v108 = a1;
    v109 = a2;
    v47 = ".padding not found in state dictionary";
    goto LABEL_27;
  }

  if (*(v30 + 16) != 2)
  {

    goto LABEL_26;
  }

  v96 = v12;
  OUTLINED_FUNCTION_6_23();
  MEMORY[0x2383DC360](0x6F6974616C69642ELL, 0xEA0000000000736ELL);
  v31 = OUTLINED_FUNCTION_1_30();

  if (!v31)
  {
LABEL_30:

    OUTLINED_FUNCTION_0_33();
    sub_237C08EDC();
    OUTLINED_FUNCTION_7_19();

    v108 = a1;
    v109 = a2;
    OUTLINED_FUNCTION_3_31();
    v44 = v51 + 2;
    goto LABEL_22;
  }

  if (*(v31 + 16) != 2)
  {

    goto LABEL_30;
  }

  v95 = v31;
  OUTLINED_FUNCTION_6_23();
  MEMORY[0x2383DC360](0x6F4370756F72672ELL, 0xEB00000000746E75);
  v32 = OUTLINED_FUNCTION_1_30();

  if (!v32)
  {
LABEL_32:

    OUTLINED_FUNCTION_0_33();
    sub_237C08EDC();
    OUTLINED_FUNCTION_7_19();

    v108 = a1;
    v109 = a2;
    OUTLINED_FUNCTION_3_31();
    v44 = v52 + 3;
    goto LABEL_22;
  }

  if (*(v32 + 16) != 1)
  {

    goto LABEL_32;
  }

  v93 = v32;
  v33 = *(v28 + 16);
  v94 = v30;
  if (v33)
  {
    v108 = MEMORY[0x277D84F90];
    v34 = v33;
    sub_237AC8A34(0, v33, 0);
    v35 = v34;
    v36 = 32;
    v37 = v108;
    while (1)
    {
      v38 = *(v28 + v36);
      if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v38 <= -9.22337204e18)
      {
        goto LABEL_84;
      }

      if (v38 >= 9.22337204e18)
      {
        goto LABEL_85;
      }

      v108 = v37;
      v40 = *(v37 + 16);
      v39 = *(v37 + 24);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        v91 = v35;
        v92 = v40 + 1;
        sub_237AC8A34(v39 > 1, v40 + 1, 1);
        v41 = v92;
        v35 = v91;
        v37 = v108;
      }

      *(v37 + 16) = v41;
      *(v37 + 8 * v40 + 32) = v38;
      v36 += 8;
      if (!--v35)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

LABEL_33:

  v53 = v96;
  v54 = v105;
  sub_237C0611C();
  v55 = *(v106 + 16);
  v56 = v104;
  v57 = v54;
  v58 = v107;
  v91 = v106 + 16;
  v90 = v55;
  v55(v104, v57, v107);
  __swift_storeEnumTagSinglePayload(v56, 0, 1, v58);
  sub_237B666C0(v56, v27, v110);

  sub_2379F6DD8(v56, &qword_27DE9BEE0, &unk_237C12120);
  v59 = v103;
  __swift_storeEnumTagSinglePayload(v53, 1, 1, v103);
  OUTLINED_FUNCTION_6_23();
  MEMORY[0x2383DC360](0x736169622ELL, 0xE500000000000000);
  v60 = OUTLINED_FUNCTION_1_30();

  v61 = v99;
  v92 = v60;
  if (v60)
  {
    OUTLINED_FUNCTION_6_23();
    MEMORY[0x2383DC360](0x68732E736169622ELL, 0xEB00000000657061);
    v62 = OUTLINED_FUNCTION_1_30();

    if (v62)
    {
      v63 = *(v62 + 16);
      if (v63)
      {
        v108 = MEMORY[0x277D84F90];
        sub_237AC8A34(0, v63, 0);
        v64 = 32;
        v65 = v108;
        while (1)
        {
          v66 = *(v62 + v64);
          if ((*&v66 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            break;
          }

          if (v66 <= -9.22337204e18)
          {
            goto LABEL_87;
          }

          if (v66 >= 9.22337204e18)
          {
            goto LABEL_88;
          }

          v108 = v65;
          v68 = *(v65 + 16);
          v67 = *(v65 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_237AC8A34(v67 > 1, v68 + 1, 1);
            v65 = v108;
          }

          *(v65 + 16) = v68 + 1;
          *(v65 + 8 * v68 + 32) = v66;
          v64 += 8;
          --v63;
          v61 = v99;
          if (!v63)
          {

            v53 = v96;
            v59 = v103;
            goto LABEL_46;
          }
        }

LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

LABEL_46:
      v69 = v100;
      sub_237C0611C();
      v70 = v104;
      v71 = v107;
      v90(v104, v69, v107);
      __swift_storeEnumTagSinglePayload(v70, 0, 1, v71);
      sub_237B666C0(v70, v92, v61);

      sub_2379F6DD8(v70, &qword_27DE9BEE0, &unk_237C12120);
      (*(v106 + 8))(v69, v71);
      sub_2379F6DD8(v53, &qword_27DE9B410, &qword_237C0CCC8);
      __swift_storeEnumTagSinglePayload(v61, 0, 1, v59);
      sub_237A7FAB0(v61, v53);
    }

    else
    {
    }
  }

  v72 = v102;
  (*(v102 + 16))(v101, v110, v59);
  sub_237A7FA40(v53, v61);
  if (!*(v97 + 16))
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v73 = *(v97 + 32);
  OUTLINED_FUNCTION_5_23();
  if (!(v77 ^ v78 | v76))
  {
    goto LABEL_90;
  }

  if (v73 <= -9.22337204e18)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if (v73 >= 9.22337204e18)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v75 == 1)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v79 = *(v74 + 40);

  OUTLINED_FUNCTION_2_32();
  if (!(v77 ^ v78 | v76))
  {
    goto LABEL_94;
  }

  if (v79 <= -9.22337204e18)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v79 >= OUTLINED_FUNCTION_9_18())
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (!*(v94 + 16))
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v80 = *(v94 + 32);
  OUTLINED_FUNCTION_5_23();
  if (!(v77 ^ v78 | v76))
  {
    goto LABEL_98;
  }

  if (v80 <= -9.22337204e18)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v80 >= 9.22337204e18)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v81 == 1)
  {
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v82 = *(v94 + 40);

  OUTLINED_FUNCTION_2_32();
  if (!(v77 ^ v78 | v76))
  {
    goto LABEL_102;
  }

  if (v82 <= -9.22337204e18)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (v82 >= OUTLINED_FUNCTION_9_18())
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (!*(v83 + 16))
  {
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v84 = *(v83 + 32);
  OUTLINED_FUNCTION_5_23();
  if (!(v77 ^ v78 | v76))
  {
    goto LABEL_106;
  }

  if (v84 <= -9.22337204e18)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  if (v84 >= 9.22337204e18)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  if (v86 == 1)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v87 = *(v85 + 40);

  OUTLINED_FUNCTION_2_32();
  if (!(v77 ^ v78 | v76))
  {
    goto LABEL_110;
  }

  if (v87 <= -9.22337204e18)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v87 >= OUTLINED_FUNCTION_9_18())
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  if (!*(v93 + 16))
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v88 = *(v93 + 32);

  OUTLINED_FUNCTION_2_32();
  if (!(v77 ^ v78 | v76))
  {
    goto LABEL_114;
  }

  if (v88 <= -9.22337204e18)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (v88 < OUTLINED_FUNCTION_9_18())
  {
    sub_237C0657C();
    sub_2379F6DD8(v53, &qword_27DE9B410, &qword_237C0CCC8);
    (*(v72 + 8))(v110, v59);
    (*(v106 + 8))(v105, v107);
    return;
  }

LABEL_116:
  __break(1u);
}

uint64_t sub_237A7FA40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A7FAB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_30()
{

  return sub_237ACDA88();
}

uint64_t OUTLINED_FUNCTION_6_23()
{
  *(v2 - 168) = v1;
  *(v2 - 160) = v0;
}

uint64_t OUTLINED_FUNCTION_7_19()
{
}

void sub_237A7FBB8(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_18_0();
  v70 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v72 = v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  MEMORY[0x28223BE20](v12 - 8);
  v71 = v61 - v13;
  v14 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v68 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_0();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v75 = v61 - v21;
  v22 = sub_237C0610C();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18_0();
  v67 = v26 - v27;
  MEMORY[0x28223BE20](v28);
  v74 = v61 - v29;
  OUTLINED_FUNCTION_5_24();
  MEMORY[0x2383DC360](0x7468676965772ELL, 0xE700000000000000);
  OUTLINED_FUNCTION_3_32();
  v30 = sub_237ACDA88();

  v73 = v30;
  if (!v30)
  {
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_237C08EDC();

    v76 = a2;
    v77 = a3;
    v38 = 0x8000000237C19BC0;
    v39 = 0xD000000000000025;
LABEL_15:
    MEMORY[0x2383DC360](v39, v38);
    v40 = v76;
    v41 = v77;
    sub_2379E8AF0();
    swift_allocError();
    *v42 = v40;
    *(v42 + 8) = v41;
    *(v42 + 16) = 0u;
    *(v42 + 32) = 0u;
    *(v42 + 48) = 2;
    swift_willThrow();
    return;
  }

  v78 = v22;
  OUTLINED_FUNCTION_5_24();
  MEMORY[0x2383DC360](0x2E7468676965772ELL, 0xED00006570616873);
  OUTLINED_FUNCTION_3_32();
  v66 = a1;
  v31 = sub_237ACDA88();

  if (!v31)
  {

    v76 = 0;
    v77 = 0xE000000000000000;
    sub_237C08EDC();

    v76 = a2;
    v77 = a3;
    v39 = 0xD00000000000002BLL;
    v38 = 0x8000000237C19BF0;
    goto LABEL_15;
  }

  v63 = v19;
  v64 = a2;
  v65 = v14;
  if (*(v31 + 16))
  {
    OUTLINED_FUNCTION_1_31(MEMORY[0x277D84F90]);
    v32 = v76;
    v33 = 0x7FEFFFFFFFFFFFFFLL;
    while (1)
    {
      v34 = *(v31 + 32);
      if ((*&v34 & 0x7FFFFFFFFFFFFFFFLL) > v33)
      {
        break;
      }

      if (v34 <= -9.22337204e18)
      {
        goto LABEL_32;
      }

      if (v34 >= 9.22337204e18)
      {
        goto LABEL_33;
      }

      v76 = v32;
      v36 = *(v32 + 16);
      v35 = *(v32 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_237AC8A34(v35 > 1, v36 + 1, 1);
        v32 = v76;
      }

      *(v32 + 16) = v36 + 1;
      OUTLINED_FUNCTION_2_33(v34);
      if (v37)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_16:

  v43 = v72;
  v44 = v74;
  sub_237C0611C();
  v45 = v24;
  v46 = *(v24 + 16);
  v47 = v71;
  v48 = v78;
  v61[1] = v24 + 16;
  v62 = v46;
  v46(v71, v44, v78);
  __swift_storeEnumTagSinglePayload(v47, 0, 1, v48);
  sub_237B666C0(v47, v73, v75);

  sub_2379F6DD8(v47, &qword_27DE9BEE0, &unk_237C12120);
  v49 = v65;
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v65);
  OUTLINED_FUNCTION_5_24();
  MEMORY[0x2383DC360](0x736169622ELL, 0xE500000000000000);
  OUTLINED_FUNCTION_3_32();
  v50 = sub_237ACDA88();

  v73 = v50;
  if (!v50)
  {
LABEL_30:
    v59 = v68;
    v60 = v75;
    (*(v68 + 16))(v63, v75, v49);
    sub_237A7FA40(v43, v70);
    sub_237C0633C();
    sub_2379F6DD8(v43, &qword_27DE9B410, &qword_237C0CCC8);
    (*(v59 + 8))(v60, v49);
    (*(v45 + 8))(v74, v48);
    return;
  }

  v61[0] = v45;
  OUTLINED_FUNCTION_5_24();
  MEMORY[0x2383DC360](0x68732E736169622ELL, 0xEB00000000657061);
  OUTLINED_FUNCTION_3_32();
  v51 = sub_237ACDA88();

  if (!v51)
  {

    v43 = v72;
    v45 = v61[0];
    goto LABEL_30;
  }

  if (!*(v51 + 16))
  {
LABEL_29:

    v56 = v70;
    v57 = v67;
    sub_237C0611C();
    v58 = v71;
    v62(v71, v57, v48);
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v48);
    sub_237B666C0(v58, v73, v56);

    sub_2379F6DD8(v58, &qword_27DE9BEE0, &unk_237C12120);
    v45 = v61[0];
    (*(v61[0] + 8))(v57, v48);
    v43 = v72;
    sub_2379F6DD8(v72, &qword_27DE9B410, &qword_237C0CCC8);
    v49 = v65;
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v65);
    sub_237A7FAB0(v56, v43);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_1_31(MEMORY[0x277D84F90]);
  v52 = v76;
  while (1)
  {
    v53 = *(v51 + 32);
    if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v53 <= -9.22337204e18)
    {
      goto LABEL_35;
    }

    if (v53 >= 9.22337204e18)
    {
      goto LABEL_36;
    }

    v76 = v52;
    v55 = *(v52 + 16);
    v54 = *(v52 + 24);
    if (v55 >= v54 >> 1)
    {
      sub_237AC8A34(v54 > 1, v55 + 1, 1);
      v52 = v76;
    }

    *(v52 + 16) = v55 + 1;
    OUTLINED_FUNCTION_2_33(v53);
    v48 = v78;
    if (v37)
    {
      goto LABEL_29;
    }
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void OUTLINED_FUNCTION_1_31(uint64_t a1@<X8>)
{
  *(v2 - 120) = a1;

  sub_237AC8A34(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_5_24()
{
  *(v2 - 120) = v0;
  *(v2 - 112) = v1;
}

void *sub_237A80418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_237C0610C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_237A80A8C(a2, a3, a4, a5);
  v18 = v17;
  v37 = v19;
  v38 = v20;
  sub_237C0679C();
  sub_237A80B30();
  v21 = sub_237C08B3C();
  v39 = v16;
  if (!v21)
  {
    (*(v13 + 8))(v15, v12);
    v23 = MEMORY[0x277D84F90];
LABEL_9:
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_32();
    sub_237B40F54(v23, v37, v38, v29);

    *v6 = v40[0];
    v30 = sub_237C067EC();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_32();
    sub_237B40F54(v30, v39, v18, v31);

    *v6 = v40[0];
    return result;
  }

  v22 = v21;
  v36 = v13;
  v41 = MEMORY[0x277D84F90];
  sub_237AC8B54();
  v23 = v41;
  result = sub_237C08B2C();
  if ((v22 & 0x8000000000000000) == 0)
  {
    v33 = v18;
    v34 = a1;
    v35 = v6;
    do
    {
      v25 = sub_237C08B9C();
      v27 = *v26;
      v25(v40, 0);
      v41 = v23;
      v28 = *(v23 + 16);
      if (v28 >= *(v23 + 24) >> 1)
      {
        sub_237AC8B54();
        v23 = v41;
      }

      *(v23 + 16) = v28 + 1;
      *(v23 + 8 * v28 + 32) = v27;
      sub_237C08B6C();
      --v22;
    }

    while (v22);
    (*(v36 + 8))(v15, v12);
    v6 = v35;
    v18 = v33;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_237A806E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  sub_237A80A8C(a1, a2, a3, a4);
  v15 = sub_237ACDA88();

  if (v15 && (v16 = sub_237ACDA88(), , v16))
  {
    v17 = *(v15 + 16);
    if (v17)
    {
      v18 = 0;
      while (v17 != v18)
      {
        v19 = *(v15 + 8 * v18++ + 32);
        v20 = round(v19);
        if (v19 < 1.0 || v20 != v19)
        {
          goto LABEL_10;
        }
      }

      v40 = v16;
      v41 = a6;
      v42 = v6;
      v43 = MEMORY[0x277D84F90];
      sub_237AC8A34(0, v17, 0);
      v26 = 32;
      v27 = v43;
      do
      {
        v28 = *(v15 + v26);
        if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }

        if (v28 <= -9.22337204e18)
        {
          goto LABEL_31;
        }

        if (v28 >= 9.22337204e18)
        {
          goto LABEL_32;
        }

        v43 = v27;
        v30 = v27[2];
        v29 = v27[3];
        if (v30 >= v29 >> 1)
        {
          sub_237AC8A34(v29 > 1, v30 + 1, 1);
          v27 = v43;
        }

        v27[2] = v30 + 1;
        v27[v30 + 4] = v28;
        v26 += 8;
        --v17;
      }

      while (v17);

      v31 = v27[2];
      v32 = v40;
      if (v31)
      {
        v33 = v27 + 4;
        v34 = 1;
        v35 = v41;
        while (1)
        {
          v36 = *v33++;
          v37 = v34 * v36;
          if ((v34 * v36) >> 64 != (v34 * v36) >> 63)
          {
            goto LABEL_33;
          }

          v34 = v37;
          if (!--v31)
          {
            goto LABEL_27;
          }
        }
      }

      v37 = 1;
      v35 = v41;
LABEL_27:
      if (*(v40 + 16) == v37)
      {
        sub_237C0611C();
        v38 = sub_237C0610C();
        __swift_storeEnumTagSinglePayload(v14, 0, 1, v38);
        sub_237B666C0(v14, v32, v35);

        sub_237A7ECA4(v14);
        v23 = sub_237C0683C();
        v24 = v35;
        v25 = 0;
        goto LABEL_13;
      }

      sub_2379E8AF0();
      swift_allocError();
      sub_237A80C30();
    }

    else
    {
LABEL_10:

      v22 = sub_237B9958C(v15);

      sub_2379E8AF0();
      swift_allocError();
      sub_237A80B88(v22);
    }

    swift_willThrow();
  }

  else
  {

    v23 = sub_237C0683C();
    v24 = a6;
    v25 = 1;
LABEL_13:
    __swift_storeEnumTagSinglePayload(v24, v25, 1, v23);
  }
}

uint64_t sub_237A80A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    MEMORY[0x2383DC360](a1, a2);
    a1 = a3;
  }

  else
  {
  }

  MEMORY[0x2383DC360](0x65706168732ELL, 0xE600000000000000);
  return a1;
}

unint64_t sub_237A80B30()
{
  result = qword_27DE9BEE8;
  if (!qword_27DE9BEE8)
  {
    sub_237C0610C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BEE8);
  }

  return result;
}

double sub_237A80B88(uint64_t a1)
{
  sub_237C08EDC();

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3A8, &unk_237C0EF10);
  v3 = MEMORY[0x2383DC4F0](a1, v2);
  MEMORY[0x2383DC360](v3);

  return OUTLINED_FUNCTION_0_34(0xD00000000000001BLL);
}

double sub_237A80C30()
{
  sub_237C08EDC();

  v0 = sub_237C0924C();
  MEMORY[0x2383DC360](v0);

  MEMORY[0x2383DC360](0x6C6175746361202CLL, 0xE900000000000020);
  v1 = sub_237C0924C();
  MEMORY[0x2383DC360](v1);

  return OUTLINED_FUNCTION_0_34(0xD00000000000001ELL);
}

double OUTLINED_FUNCTION_0_34@<D0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = v1;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

uint64_t sub_237A80D58(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_237A80D94()
{

  sub_2379E86D4(*(v0 + 48), *(v0 + 56));
  sub_237A80F30(*(v0 + 64), *(v0 + 72));
  sub_237A80F30(*(v0 + 80), *(v0 + 88));
  return v0;
}

uint64_t sub_237A80DCC()
{
  sub_237A80D94();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_237A80E40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_237A80E80(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_237A80ED8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237A80EF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_237A80F30(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2379E86D4(result, a2);
  }

  return result;
}

uint64_t sub_237A80F74(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v4 = a1 + 64;
  v3 = *(a1 + 64);
  v5 = 1 << *(a1 + 32);
  v36 = MEMORY[0x277D84F98];
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v3;
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(*(a1 + 48) + v12);
    sub_2379FED88(*(a1 + 56) + 32 * v12, v34 + 8);
    LOBYTE(v34[0]) = v13;
    v31 = v34[0];
    v32 = v34[1];
    v33 = v35;
    sub_2379FED88(&v31 + 8, v28);
    if (swift_dynamicCast())
    {
      v14 = *&v29[0];
      v30 = v33;
      v29[0] = v31;
      v29[1] = v32;
      v15 = *(v2 + 16);
      if (*(v2 + 24) <= v15)
      {
        sub_237AC1104(v15 + 1, 1);
        v2 = v36;
      }

      v16 = v29[0];
      sub_237C093CC();
      sub_237C0878C();

      v17 = sub_237C0940C();
      v18 = v2 + 64;
      v19 = -1 << *(v2 + 32);
      v20 = v17 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6))) != 0)
      {
        v22 = __clz(__rbit64((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = 0;
        v24 = (63 - v19) >> 6;
        do
        {
          if (++v21 == v24 && (v23 & 1) != 0)
          {
            goto LABEL_27;
          }

          v25 = v21 == v24;
          if (v21 == v24)
          {
            v21 = 0;
          }

          v23 |= v25;
          v26 = *(v18 + 8 * v21);
        }

        while (v26 == -1);
        v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      }

      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v2 + 48) + v22) = v16;
      *(*(v2 + 56) + 8 * v22) = v14;
      ++*(v2 + 16);
      __swift_destroy_boxed_opaque_existential_1(v29 + 1);
    }

    else
    {
      *&v29[0] = 0;
      BYTE8(v29[0]) = 1;
      sub_2379D9054(&v31, &qword_27DE9BFF0, &qword_237C0F240);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      JUMPOUT(0x237A813A4);
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  return v2;
}

uint64_t sub_237A813D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v38 - v3;
  v5 = sub_237C05ADC();
  MEMORY[0x28223BE20](v5);
  v56 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = v38 - v9;
  v10 = MEMORY[0x277D84F98];
  v12 = a1 + 64;
  v11 = *(a1 + 64);
  v13 = 1 << *(a1 + 32);
  v55 = MEMORY[0x277D84F98];
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v11;
  v16 = (v13 + 63) >> 6;
  v39 = v8;
  v46 = (v8 + 32);
  v38[5] = 0x8000000237C16C60;
  v38[4] = 0x8000000237C16C40;
  v38[3] = 0x8000000237C16C10;
  v38[2] = 0x8000000237C16BF0;
  v38[1] = 0x8000000237C16BD0;

  v17 = 0;
  v40 = a1;
  v42 = v4;
  v41 = v16;
  while (v15)
  {
LABEL_10:
    v19 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v20 = v19 | (v17 << 6);
    v21 = *(*(a1 + 48) + v20);
    sub_2379FED88(*(a1 + 56) + 32 * v20, v53 + 8);
    LOBYTE(v53[0]) = v21;
    v50 = v53[0];
    v51 = v53[1];
    v52 = v54;
    sub_2379FED88(&v50 + 8, v47);
    v22 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v4, v22 ^ 1u, 1, v5);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      sub_2379D9054(&v50, &qword_27DE9BFF0, &qword_237C0F240);
      sub_2379D9054(v4, &qword_27DE9AA18, &qword_237C0B710);
    }

    else
    {
      v23 = *v46;
      v24 = v43;
      (*v46)(v43, v4, v5);
      v48[0] = v50;
      v48[1] = v51;
      v49 = v52;
      v45 = v23;
      v23(v56, v24, v5);
      v25 = *(v10 + 16);
      if (*(v10 + 24) <= v25)
      {
        sub_237AC0CF4(v25 + 1, 1);
      }

      v26 = LOBYTE(v48[0]);
      v10 = v55;
      sub_237C093CC();
      v44 = v26;
      v4 = v42;
      v16 = v41;
      sub_237C0878C();

      v27 = sub_237C0940C();
      v28 = v10 + 64;
      v29 = -1 << *(v10 + 32);
      v30 = v27 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v10 + 64 + 8 * (v30 >> 6))) != 0)
      {
        v32 = __clz(__rbit64((-1 << v30) & ~*(v10 + 64 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = 0;
        v34 = (63 - v29) >> 6;
        do
        {
          if (++v31 == v34 && (v33 & 1) != 0)
          {
            goto LABEL_26;
          }

          v35 = v31 == v34;
          if (v31 == v34)
          {
            v31 = 0;
          }

          v33 |= v35;
          v36 = *(v28 + 8 * v31);
        }

        while (v36 == -1);
        v32 = __clz(__rbit64(~v36)) + (v31 << 6);
      }

      *(v28 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      *(*(v10 + 48) + v32) = v44;
      v45((*(v10 + 56) + *(v39 + 72) * v32), v56, v5);
      ++*(v10 + 16);
      __swift_destroy_boxed_opaque_existential_1(v48 + 1);
      a1 = v40;
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      JUMPOUT(0x237A81A18);
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_10;
    }
  }

  return v10;
}

uint64_t sub_237A81A44@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = *(*(v3 + 48) + v10);
    sub_2379E8624(*(v3 + 56) + 40 * v10, v15);
    LOBYTE(v18) = v11;
    result = sub_237A1FCF0(v15, &v18 + 8);
    v13 = v20;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v13)
    {
      v14 = v1[5];
      v15[0] = v18;
      v15[1] = v19;
      v16 = v13;
      v17 = *(&v20 + 1);
      v14(v15);
      return sub_2379D9054(v15, &qword_27DE9C008, &qword_237C0F248);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v13 = 0;
        v9 = 0;
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t MLCheckpoint.url.getter@<X0>(uint64_t a1@<X8>)
{
  sub_237C05ADC();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t MLCheckpoint.url.setter()
{
  OUTLINED_FUNCTION_46();
  sub_237C05ADC();
  OUTLINED_FUNCTION_4();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t MLCheckpoint.phase.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MLCheckpoint(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for MLCheckpoint(uint64_t a1)
{
  result = qword_27DE9BF90;
  if (!qword_27DE9BF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLCheckpoint.phase.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MLCheckpoint(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

void (*MLCheckpoint.phase.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLCheckpoint(v0);
  return nullsub_1;
}

uint64_t MLCheckpoint.iteration.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  result = type metadata accessor for MLCheckpoint(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

void (*MLCheckpoint.iteration.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLCheckpoint(v0);
  return nullsub_1;
}

uint64_t MLCheckpoint.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLCheckpoint(0) + 28);
  sub_237C05BFC();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MLCheckpoint.date.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = *(type metadata accessor for MLCheckpoint(v2) + 28);
  sub_237C05BFC();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*MLCheckpoint.date.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLCheckpoint(v0);
  return nullsub_1;
}

void *MLCheckpoint.metrics.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLCheckpoint(0) + 32));

  return sub_237A825E8(v1);
}