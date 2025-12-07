uint64_t sub_243810D1C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_243800504(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 16 * v3);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_243810D80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EF8, &qword_24381DBA0);
    v2 = sub_24381CF14();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + 16 * (v10 | (v9 << 6)));
    v13 = *v11;
    v12 = v11[1];

    swift_dynamicCast();
    sub_24380B0CC(&v22, v24);
    sub_24380B0CC(v24, v25);
    sub_24380B0CC(v25, &v23);
    result = sub_24380939C(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_1(v17);
      result = sub_24380B0CC(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_24380B0CC(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_243810FBC()
{

  sub_24381933C(*(v0 + 32), *(v0 + 40));
  sub_24381933C(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t type metadata accessor for Downloader.AssetDownloadResult(uint64_t a1)
{
  result = qword_27ED93430;
  if (!qword_27ED93430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243811060()
{
  v0 = sub_24381CA64();
  __swift_allocate_value_buffer(v0, qword_27ED93448);
  __swift_project_value_buffer(v0, qword_27ED93448);
  sub_24381C794();
  OUTLINED_FUNCTION_60_0();
  type metadata accessor for Downloader();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED930B0, &unk_24381DE08);
  sub_24381CBB4();
  OUTLINED_FUNCTION_23_1();
  return sub_24381CA54();
}

uint64_t sub_2438110FC(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_24381115C()
{
  OUTLINED_FUNCTION_36_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v220 = type metadata accessor for Downloader.AssetDownloadResult(0);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  v222 = v11;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93138, &qword_24381DEC8);
  OUTLINED_FUNCTION_9();
  v221 = v12;
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v216 - v14;
  v16 = sub_24381C694();
  OUTLINED_FUNCTION_9();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_42();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93140, &unk_24381DED0);
  OUTLINED_FUNCTION_38(v23);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v24);
  sub_24381C6E4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_42();
  v30 = v29 - v28;
  if (v9)
  {
    v31 = *v9;
    if (v3)
    {
      type metadata accessor for CFError(0);
      OUTLINED_FUNCTION_15_2();
      sub_243819364(v32, v33);
      v34 = OUTLINED_FUNCTION_45_0();
      v36 = OUTLINED_FUNCTION_49_0(v34, v35);
      *v37 = v3;
      v38 = v3;

      v39 = sub_24381C674();

      v40 = [v39 code];
      if (v40 == *sub_24381A64C())
      {
        if (_MergedGlobals_2 != -1)
        {
          OUTLINED_FUNCTION_0_4();
          swift_once();
        }

        v41 = sub_24381CA64();
        OUTLINED_FUNCTION_47_0(v41, qword_27ED93448);
        v42 = v39;
        v43 = sub_24381CA44();
        v44 = sub_24381CD84();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = OUTLINED_FUNCTION_42_0();
          v46 = v31;
          v47 = OUTLINED_FUNCTION_54_0();
          *v45 = 138412290;
          *(v45 + 4) = v42;
          *v47 = v42;
          v48 = v42;
          OUTLINED_FUNCTION_9_2();
          _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
          sub_24380B1F4(v47, &qword_27ED92E38, &unk_24381DBD0);
          v31 = v46;
          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_22_1();
        }

        v54 = [v42 localizedDescription];
        sub_24381CB84();
        OUTLINED_FUNCTION_60_0();

        OUTLINED_FUNCTION_49_1();
        MEMORY[0x28223BE20](v55);
        OUTLINED_FUNCTION_51_1();
        v58 = OUTLINED_FUNCTION_46_1(v56, v57);
        v59 = *(v58 + 2);
        if (v59)
        {
          v223 = v38;
          v219 = v31;
          *&v227 = MEMORY[0x277D84F90];
          v60 = OUTLINED_FUNCTION_8_1();
          sub_24380A0AC(v60, v61, v62);
          v63 = v227;
          v64 = (v58 + 56);
          do
          {
            v65 = *(v64 - 3);
            v66 = *(v64 - 2);
            v67 = *(v64 - 1);
            v68 = *v64;

            v69 = MEMORY[0x245D40C50](v65, v66, v67, v68);
            v71 = v70;

            *&v227 = v63;
            v73 = *(v63 + 16);
            v72 = *(v63 + 24);
            if (v73 >= v72 >> 1)
            {
              v75 = OUTLINED_FUNCTION_28_0(v72);
              sub_24380A0AC(v75, v73 + 1, 1);
              v63 = v227;
            }

            *(v63 + 16) = v73 + 1;
            v74 = v63 + 16 * v73;
            *(v74 + 32) = v69;
            *(v74 + 40) = v71;
            v64 += 4;
            --v59;
          }

          while (v59);

          v38 = v223;
        }

        else
        {

          v63 = MEMORY[0x277D84F90];
        }

        v164 = sub_24381C954();
        OUTLINED_FUNCTION_18_1();
        v167 = sub_243819364(v165, v166);
        v168 = OUTLINED_FUNCTION_49_0(v164, v167);
        *v169 = v63;
        (*(*(v164 - 8) + 104))(v169, *MEMORY[0x277CFA920], v164);
        *&v227 = v168;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
        OUTLINED_FUNCTION_46_0();
        sub_24381CD14();
      }

      else
      {
        if (_MergedGlobals_2 != -1)
        {
          OUTLINED_FUNCTION_0_4();
          swift_once();
        }

        v136 = sub_24381CA64();
        OUTLINED_FUNCTION_47_0(v136, qword_27ED93448);
        v137 = v39;
        v138 = sub_24381CA44();
        v139 = sub_24381CD84();

        if (OUTLINED_FUNCTION_72_0())
        {
          v140 = OUTLINED_FUNCTION_42_0();
          v141 = OUTLINED_FUNCTION_54_0();
          *v140 = 138412290;
          *(v140 + 4) = v137;
          *v141 = v137;
          v142 = v137;
          OUTLINED_FUNCTION_35_1(&dword_2437FA000, v143, v139, "mmcs engine returns error %@");
          sub_24380B1F4(v141, &qword_27ED92E38, &unk_24381DBD0);
          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_27_0();
        }

        v144 = sub_24380043C();
        *&v227 = OUTLINED_FUNCTION_49_0(&type metadata for ProcessorError, v144);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
        OUTLINED_FUNCTION_46_0();
        sub_24381CD14();
      }

      goto LABEL_89;
    }

    v216 = v7;
    if (!v5)
    {
      v154 = sub_24380043C();
      *&v227 = OUTLINED_FUNCTION_49_0(&type metadata for ProcessorError, v154);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
      OUTLINED_FUNCTION_46_0();
      sub_24381CD14();
      if (_MergedGlobals_2 != -1)
      {
        OUTLINED_FUNCTION_0_4();
        swift_once();
      }

      v155 = sub_24381CA64();
      OUTLINED_FUNCTION_47_0(v155, qword_27ED93448);
      v156 = sub_24381CA44();
      v157 = sub_24381CD84();
      if (OUTLINED_FUNCTION_55_0(v157))
      {
        v158 = OUTLINED_FUNCTION_42_0();
        *v158 = 134349056;
        *(v158 + 4) = v216;
        OUTLINED_FUNCTION_9_2();
        _os_log_impl(v159, v160, v161, v162, v163, 0xCu);
        OUTLINED_FUNCTION_22_1();
      }

      goto LABEL_89;
    }

    v217 = v27;
    v218 = v30;
    v82 = v26;
    v83 = objc_opt_self();
    v219 = v31;

    v84 = [v83 defaultManager];
    v85 = [v84 stringWithFileSystemRepresentation:v5 length:strlen(v5)];

    sub_24381CB84();
    OUTLINED_FUNCTION_47_1();
    v86 = v82;
    v87 = v82;
    v88 = v218;
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v87);
    (*(v18 + 104))(v22, *MEMORY[0x277CC91D8], v16);
    sub_24381C6D4();
    if (!v1 || (objc_opt_self(), !swift_dynamicCastObjCClass()) || (*&v227 = 0, sub_24381CB04(), (v92 = v227) == 0))
    {
      v145 = sub_24380043C();
      *&v227 = OUTLINED_FUNCTION_49_0(&type metadata for ProcessorError, v145);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
      OUTLINED_FUNCTION_46_0();
      sub_24381CD14();
      if (_MergedGlobals_2 != -1)
      {
        OUTLINED_FUNCTION_0_4();
        swift_once();
      }

      v146 = sub_24381CA64();
      OUTLINED_FUNCTION_47_0(v146, qword_27ED93448);
      v147 = sub_24381CA44();
      v148 = sub_24381CD84();
      if (OUTLINED_FUNCTION_55_0(v148))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_9_2();
        _os_log_impl(v149, v150, v151, v152, v153, 2u);
        OUTLINED_FUNCTION_22_1();

LABEL_88:
        (*(v217 + 8))(v218, v86);
        goto LABEL_89;
      }

LABEL_87:

      goto LABEL_88;
    }

    if (!*MEMORY[0x277D25640])
    {
      goto LABEL_93;
    }

    v93 = sub_24381CB84();
    sub_2438033D0(v93, v94, v92, &v227);

    v95 = v228;
    sub_24380B1F4(&v227, &qword_27ED92F70, &qword_24381DA88);
    if (v95)
    {
      v96 = sub_24381CB84();
      sub_2438033D0(v96, v97, v92, &v225);

      if (v226)
      {

        sub_24380B0CC(&v225, &v227);
        sub_24380B24C();
        swift_dynamicCast();
        v98 = v224;
        v99 = [v224 code];
        v100 = sub_24381A64C();
        v101 = _MergedGlobals_2;
        if (v99 == *v100)
        {
          if (_MergedGlobals_2 != -1)
          {
            OUTLINED_FUNCTION_0_4();
            swift_once();
          }

          v102 = sub_24381CA64();
          OUTLINED_FUNCTION_47_0(v102, qword_27ED93448);
          v103 = v98;
          v104 = sub_24381CA44();
          v105 = sub_24381CD84();

          if (os_log_type_enabled(v104, v105))
          {
            v106 = OUTLINED_FUNCTION_42_0();
            v107 = OUTLINED_FUNCTION_54_0();
            *v106 = 138412290;
            *(v106 + 4) = v103;
            *v107 = v103;
            v108 = v103;
            OUTLINED_FUNCTION_9_2();
            _os_log_impl(v109, v110, v111, v112, v113, 0xCu);
            sub_24380B1F4(v107, &qword_27ED92E38, &unk_24381DBD0);
            OUTLINED_FUNCTION_20_1();
            OUTLINED_FUNCTION_22_1();
          }

          v114 = [v103 description];
          sub_24381CB84();
          OUTLINED_FUNCTION_60_0();

          OUTLINED_FUNCTION_49_1();
          MEMORY[0x28223BE20](v115);
          OUTLINED_FUNCTION_51_1();
          v118 = OUTLINED_FUNCTION_46_1(v116, v117);
          v119 = *(v118 + 2);
          if (v119)
          {
            v223 = v103;
            *&v227 = MEMORY[0x277D84F90];
            v120 = OUTLINED_FUNCTION_8_1();
            sub_24380A0AC(v120, v121, v122);
            v123 = v227;
            v124 = (v118 + 56);
            do
            {
              v125 = *(v124 - 3);
              v126 = *(v124 - 2);
              v127 = *(v124 - 1);
              v128 = *v124;

              v129 = MEMORY[0x245D40C50](v125, v126, v127, v128);
              v131 = v130;

              *&v227 = v123;
              v133 = *(v123 + 16);
              v132 = *(v123 + 24);
              if (v133 >= v132 >> 1)
              {
                v135 = OUTLINED_FUNCTION_28_0(v132);
                sub_24380A0AC(v135, v133 + 1, 1);
                v123 = v227;
              }

              *(v123 + 16) = v133 + 1;
              v134 = v123 + 16 * v133;
              *(v134 + 32) = v129;
              *(v134 + 40) = v131;
              v124 += 4;
              --v119;
            }

            while (v119);

            v103 = v223;
          }

          else
          {

            v123 = MEMORY[0x277D84F90];
          }

          v210 = sub_24381C954();
          OUTLINED_FUNCTION_18_1();
          v213 = sub_243819364(v211, v212);
          v214 = OUTLINED_FUNCTION_49_0(v210, v213);
          *v215 = v123;
          (*(*(v210 - 8) + 104))(v215, *MEMORY[0x277CFA920], v210);
          *&v227 = v214;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
          OUTLINED_FUNCTION_46_0();
          sub_24381CD14();

          goto LABEL_87;
        }

LABEL_66:
        if (v101 != -1)
        {
          OUTLINED_FUNCTION_0_4();
          swift_once();
        }

        v182 = sub_24381CA64();
        OUTLINED_FUNCTION_47_0(v182, qword_27ED93448);
        v183 = v98;
        v184 = sub_24381CA44();
        sub_24381CD84();

        if (OUTLINED_FUNCTION_72_0())
        {
          v185 = OUTLINED_FUNCTION_42_0();
          v186 = OUTLINED_FUNCTION_54_0();
          *v185 = 138412290;
          *(v185 + 4) = v183;
          *v186 = v183;
          v187 = v183;
          OUTLINED_FUNCTION_70(&dword_2437FA000, v188, v189, "mmcs engine returns error %@");
          sub_24380B1F4(v186, &qword_27ED92E38, &unk_24381DBD0);
          OUTLINED_FUNCTION_27_0();
          OUTLINED_FUNCTION_20_1();
        }

        v190 = sub_24380043C();
        *&v227 = OUTLINED_FUNCTION_49_0(&type metadata for ProcessorError, v190);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
        OUTLINED_FUNCTION_46_0();
        sub_24381CD14();

        goto LABEL_87;
      }

      goto LABEL_94;
    }

    if (!*MEMORY[0x277D25648])
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v170 = sub_24381CB84();
    OUTLINED_FUNCTION_56_1(v170, v171);

    if (!v228)
    {
      goto LABEL_71;
    }

    if ((OUTLINED_FUNCTION_33_1(v172, v173, v174, MEMORY[0x277D83B88]) & 1) == 0)
    {
      goto LABEL_72;
    }

    if (!*MEMORY[0x277D25650])
    {
LABEL_97:
      __break(1u);
      return;
    }

    v175 = v225;
    v176 = sub_24381CB84();
    OUTLINED_FUNCTION_56_1(v176, v177);

    if (v228)
    {
      if (OUTLINED_FUNCTION_33_1(v178, v179, v180, MEMORY[0x277D83B88]))
      {

        v101 = v225;
        v98 = (v175 + v225);
        if (__OFADD__(v175, v225))
        {
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v181 = v217;
        if (v98 < v175)
        {
          __break(1u);
          goto LABEL_66;
        }

        goto LABEL_77;
      }
    }

    else
    {
LABEL_71:
      sub_24380B1F4(&v227, &qword_27ED92F70, &qword_24381DA88);
    }

LABEL_72:
    if (!*MEMORY[0x277D25480])
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v191 = sub_24381CB84();
    OUTLINED_FUNCTION_56_1(v191, v192);

    if (v228)
    {
      if (OUTLINED_FUNCTION_33_1(v193, v194, v195, MEMORY[0x277D83B88]))
      {
        v98 = v225;
        v181 = v217;
        if ((v225 & 0x8000000000000000) != 0)
        {
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v175 = 0;
LABEL_77:
        v196 = v216;
        if ((v216 & 0x8000000000000000) == 0)
        {
          v197 = v220;
          v198 = v222;
          v199 = v181;
          (*(v181 + 16))(v222 + *(v220 + 20), v88, v86);
          *v198 = v196;
          v200 = (v198 + *(v197 + 24));
          *v200 = v175;
          v200[1] = v98;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
          sub_24381CD04();

          (*(v221 + 8))(v15, v223);
          (*(v199 + 8))(v88, v86);
LABEL_89:
          OUTLINED_FUNCTION_33_0();
          return;
        }

        __break(1u);
        goto LABEL_91;
      }
    }

    else
    {
      sub_24380B1F4(&v227, &qword_27ED92F70, &qword_24381DA88);
    }

    if (_MergedGlobals_2 != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v201 = sub_24381CA64();
    OUTLINED_FUNCTION_47_0(v201, qword_27ED93448);
    v202 = sub_24381CA44();
    v203 = sub_24381CD84();
    if (OUTLINED_FUNCTION_55_0(v203))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_9_2();
      _os_log_impl(v204, v205, v206, v207, v208, 2u);
      OUTLINED_FUNCTION_22_1();
    }

    v209 = sub_24380043C();
    *&v227 = OUTLINED_FUNCTION_49_0(&type metadata for ProcessorError, v209);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
    OUTLINED_FUNCTION_46_0();
    sub_24381CD14();
    goto LABEL_87;
  }

  v76 = v7;
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v77 = sub_24381CA64();
  OUTLINED_FUNCTION_47_0(v77, qword_27ED93448);
  v223 = sub_24381CA44();
  v78 = sub_24381CD84();
  if (os_log_type_enabled(v223, v78))
  {
    v79 = OUTLINED_FUNCTION_42_0();
    *v79 = 134349056;
    *(v79 + 4) = v76;
    _os_log_impl(&dword_2437FA000, v223, v78, "context for downloading asset with tracking number %{public}llu can not be loaded", v79, 0xCu);
    OUTLINED_FUNCTION_35_0();
  }

  OUTLINED_FUNCTION_33_0();
}

void sub_243812308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = a5;
  v8 = a6;
  sub_24381115C();
}

uint64_t sub_243812390()
{
  OUTLINED_FUNCTION_13();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v1[7] = v7;
  v1[14] = *v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93058, &qword_24381DD88);
  v1[15] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[16] = v9;
  v1[17] = OUTLINED_FUNCTION_32();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93060, &unk_24381DD90);
  v1[18] = v10;
  OUTLINED_FUNCTION_1(v10);
  v1[19] = v11;
  v1[20] = OUTLINED_FUNCTION_32();
  v12 = sub_24381C894();
  v1[21] = v12;
  OUTLINED_FUNCTION_1(v12);
  v1[22] = v13;
  v1[23] = OUTLINED_FUNCTION_32();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FC0, &qword_24381DB38);
  v1[24] = v14;
  OUTLINED_FUNCTION_1(v14);
  v1[25] = v15;
  v1[26] = OUTLINED_FUNCTION_32();
  v16 = sub_24381CCD4();
  v1[27] = v16;
  OUTLINED_FUNCTION_1(v16);
  v1[28] = v17;
  v1[29] = OUTLINED_FUNCTION_32();
  v18 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v18);
}

uint64_t sub_2438125BC()
{
  v54 = v0;
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v1 = sub_24381CA64();
  OUTLINED_FUNCTION_47_0(v1, qword_27ED93448);

  v2 = sub_24381CA44();
  v3 = sub_24381CD94();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[28];
    v4 = v0[29];
    v6 = v0[27];
    v7 = v0[21];
    v8 = v0[8];
    v9 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = MEMORY[0x245D40CE0](v8, v7);
    v12 = sub_243808908(v10, v11, &v53);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    sub_24381CCE4();
    sub_243819364(&qword_27ED92DF0, MEMORY[0x277D85720]);
    v13 = sub_24381CF24();
    v15 = v14;
    (*(v5 + 8))(v4, v6);
    v16 = sub_243808908(v13, v15, &v53);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_2437FA000, v2, v3, "processing %s with priority %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_14_0();
  }

  v17 = v0[8];
  v0[30] = *(*(*(v0[13] + 16) + 24) + OBJC_IVAR____TtC17CloudAssetsDaemon13TenantContext_requestTracker);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v0[22];
    v53 = MEMORY[0x277D84F90];

    v20 = OUTLINED_FUNCTION_44_1();
    sub_24380FBA8(v20, v21, v22);
    v23 = v53;
    v25 = *(v19 + 16);
    v19 += 16;
    v24 = v25;
    OUTLINED_FUNCTION_37_1();
    v27 = v17 + v26;
    v52 = *(v19 + 56);
    v28 = (v19 - 8);
    do
    {
      v29 = v0[26];
      v30 = v0[23];
      v31 = v0[21];
      v24(v30, v27, v31);
      v0[5] = v31;
      v0[6] = sub_243819364(&qword_27ED93068, MEMORY[0x277CFA830]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
      v24(boxed_opaque_existential_1, v30, v31);
      v33 = sub_243800058((v0 + 2));
      __swift_destroy_boxed_opaque_existential_1(v0 + 2);
      *v29 = v33;
      sub_24381C874();
      (*v28)(v30, v31);
      v53 = v23;
      v35 = *(v23 + 16);
      v34 = *(v23 + 24);
      if (v35 >= v34 >> 1)
      {
        v39 = OUTLINED_FUNCTION_28_0(v34);
        sub_24380FBA8(v39, v35 + 1, 1);
        v23 = v53;
      }

      *(v23 + 16) = v35 + 1;
      OUTLINED_FUNCTION_37_1();
      sub_2438198C8(v38, v23 + v36 + *(v37 + 72) * v35, &qword_27ED92FC0, &qword_24381DB38);
      v27 += v52;
      --v18;
    }

    while (v18);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v0[31] = sub_243812E60(v23, &qword_27ED92FB8, &qword_24381DB30, sub_24380ECB4);

  v40 = sub_24381CA44();
  v41 = sub_24381CD94();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = OUTLINED_FUNCTION_42_0();
    v43 = OUTLINED_FUNCTION_63();
    v53 = v43;
    *v42 = 136315138;
    sub_24381CA14();

    sub_24381CB34();

    v44 = OUTLINED_FUNCTION_57_0();
    v47 = sub_243808908(v44, v45, v46);

    *(v42 + 4) = v47;
    OUTLINED_FUNCTION_35_1(&dword_2437FA000, v48, v41, "start downloading assets with tracking numbers %s");
    __swift_destroy_boxed_opaque_existential_1(v43);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_27_0();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  v0[32] = v49;
  *v49 = v50;
  v49[1] = sub_243812AF0;

  return sub_243812F04();
}

uint64_t sub_243812AF0()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_243812C04()
{
  v10 = v0[30];
  v1 = v0[20];
  v14 = v0[19];
  v15 = v0[18];
  v2 = v0[16];
  v12 = v0[17];
  v13 = v0[15];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[11];
  v6 = v0[12];
  v11 = v0[14];
  v7 = swift_task_alloc();
  v7[2] = v1;
  v7[3] = v10;
  v7[4] = v4;
  v7[5] = v3;
  v7[6] = v5;
  v7[7] = v6;
  v7[8] = v11;
  sub_24381C8E4();
  (*(v2 + 104))(v12, *MEMORY[0x277D858A0], v13);
  sub_24381CD54();

  (*(v14 + 8))(v1, v15);

  OUTLINED_FUNCTION_12();

  return v8();
}

uint64_t sub_243812DB8()
{

  OUTLINED_FUNCTION_12();

  return v0();
}

uint64_t sub_243812E60(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    OUTLINED_FUNCTION_45_0();
    v5 = sub_24381CF14();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_243812F04()
{
  OUTLINED_FUNCTION_13();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93038, &qword_24381DCD8);
  v1[6] = v4;
  OUTLINED_FUNCTION_38(v4);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93040, &qword_24381DCE0);
  v1[9] = v5;
  OUTLINED_FUNCTION_1(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_32();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93048, &unk_24381DCE8);
  v1[12] = v7;
  OUTLINED_FUNCTION_1(v7);
  v1[13] = v8;
  v1[14] = OUTLINED_FUNCTION_32();
  v9 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v9);
}

void sub_24381307C()
{
  v65 = v0;
  v50 = *(*(*(v0[4] + 16) + 24) + OBJC_IVAR____TtC17CloudAssetsDaemon13TenantContext_requestTracker);

  v2 = sub_2438156D0(v1);
  v3 = v2[2];
  if (v3)
  {
    v54 = v0[9];
    v56 = v0[6];
    v63 = MEMORY[0x277D84F90];
    sub_243818C80(0, v3, 0);
    v62 = v63;
    v6 = sub_24380AF24(v2);
    v7 = 0;
    v8 = v2 + 8;
    v52 = v4;
    v53 = v3;
    v51 = v2 + 9;
    v57 = v2;
    v58 = v0;
    v55 = v2 + 8;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      if ((v8[v6 >> 6] & (1 << v6)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v2 + 9) != v4)
      {
        goto LABEL_30;
      }

      v60 = v7;
      v61 = v4;
      v59 = v5;
      v9 = v0[11];
      v11 = v0[7];
      v10 = v0[8];
      v12 = v2[6];
      v13 = sub_24381C6E4();
      OUTLINED_FUNCTION_9();
      v15 = v14;
      v17 = v12 + *(v16 + 72) * v6;
      v18 = *(v14 + 16);
      v18(v10, v17, v13);
      v19 = *(v2[7] + 8 * v6);
      (*(v15 + 32))(v11, v10, v13);
      *(v11 + *(v56 + 48)) = v19;
      v18(v9, v11, v13);

      if (*(sub_243815D64(v20) + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FB8, &qword_24381DB30);
        OUTLINED_FUNCTION_45_0();
        v21 = sub_24381CF14();
      }

      else
      {
        v21 = MEMORY[0x277D84F98];
      }

      v64 = v21;

      sub_24380ECB4(v22, 1, &v64);
      v2 = v57;
      v0 = v58;
      v8 = v55;
      v23 = v58[11];
      v24 = v58[7];

      *(v23 + *(v54 + 48)) = v64;
      sub_24380B1F4(v24, &qword_27ED93038, &qword_24381DCD8);
      v25 = v62;
      v27 = *(v62 + 16);
      v26 = *(v62 + 24);
      if (v27 >= v26 >> 1)
      {
        v41 = OUTLINED_FUNCTION_28_0(v26);
        sub_243818C80(v41, v27 + 1, 1);
        v25 = v62;
      }

      *(v25 + 16) = v27 + 1;
      OUTLINED_FUNCTION_37_1();
      v62 = v28;
      sub_2438198C8(v31, v28 + v29 + *(v30 + 72) * v27, &qword_27ED93040, &qword_24381DCE0);
      v32 = 1 << *(v57 + 32);
      if (v6 >= v32)
      {
        goto LABEL_31;
      }

      if ((v55[v6 >> 6] & (1 << v6)) == 0)
      {
        goto LABEL_32;
      }

      if (*(v57 + 9) != v61)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_58_1();
      if (v35)
      {
        v36 = v34 << 6;
        v37 = &v51[v34];
        v38 = v34 + 1;
        while (v38 < (v32 + 63) >> 6)
        {
          v40 = *v37++;
          v39 = v40;
          v36 += 64;
          ++v38;
          if (v40)
          {
            sub_24380AF64(v6, v33, v59 & 1);
            v32 = __clz(__rbit64(v39)) + v36;
            goto LABEL_22;
          }
        }

        sub_24380AF64(v6, v33, v59 & 1);
      }

      else
      {
        OUTLINED_FUNCTION_57_1();
      }

LABEL_22:
      v5 = 0;
      v7 = v60 + 1;
      v6 = v32;
      v4 = v52;
      if (v60 + 1 == v53)
      {

        v42 = v62;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
LABEL_25:
    v43 = v0[13];
    v44 = v0[14];
    v45 = v0[12];
    v47 = v0[4];
    v46 = v0[5];
    v48 = swift_task_alloc();
    v48[2] = v42;
    v48[3] = v50;
    v48[4] = v47;
    v48[5] = v46;
    type metadata accessor for Downloader.AssetDownloadResult(0);
    (*(v43 + 104))(v44, *MEMORY[0x277D858A0], v45);
    sub_24381CD54();

    OUTLINED_FUNCTION_12();

    v49();
  }
}

void sub_2438135A4()
{
  OUTLINED_FUNCTION_36_0();
  v41 = v1;
  v42 = v0;
  v40 = v2;
  v43 = HIDWORD(v1);
  v44 = v3;
  v45 = HIDWORD(v3);
  v46 = v4;
  v47 = HIDWORD(v4);
  v48 = v5;
  v49 = HIDWORD(v5);
  v50 = v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93070, &unk_24381DDA8);
  v7 = *(v37 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v37);
  v38 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93060, &unk_24381DD90);
  OUTLINED_FUNCTION_9();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92D20, &qword_24381D6D0);
  OUTLINED_FUNCTION_38(v18);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v19);
  v39 = &v37 - v20;
  sub_24381CCD4();
  OUTLINED_FUNCTION_47_1();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  (*(v12 + 16))(v17, v40, v10);
  v25 = OUTLINED_FUNCTION_65_0();
  v26(v25);
  v27 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v28 = (v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 11) & 0xFFFFFFFFFFFFFFF8;
  v30 = (*(v7 + 80) + v29 + 32) & ~*(v7 + 80);
  v31 = (v8 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  (*(v12 + 32))(v32 + v27, v17, v10);
  v33 = v41;
  *(v32 + v28) = v42;
  v34 = (v32 + v29);
  v36 = v43;
  v35 = v44;
  *v34 = v33;
  v34[1] = v36;
  v34[2] = v35;
  v34[3] = v45;
  v34[4] = v46;
  v34[5] = v47;
  v34[6] = v48;
  v34[7] = v49;
  (*(v7 + 32))(v32 + v30, v38, v37);
  *(v32 + v31) = v50;

  sub_2437FCB64(0, 0, v39, &unk_24381DDC0, v32);

  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_2438138B0()
{
  OUTLINED_FUNCTION_13();
  v0[15] = v26;
  v0[16] = v27;
  v0[13] = v1;
  v0[14] = v2;
  v0[11] = v3;
  v0[12] = v4;
  v0[10] = v5;
  v6 = sub_24381C954();
  v0[17] = v6;
  OUTLINED_FUNCTION_1(v6);
  v0[18] = v7;
  v0[19] = OUTLINED_FUNCTION_32();
  v8 = sub_24381C6E4();
  v0[20] = v8;
  OUTLINED_FUNCTION_1(v8);
  v0[21] = v9;
  v0[22] = OUTLINED_FUNCTION_32();
  v10 = sub_24381CA14();
  OUTLINED_FUNCTION_38(v10);
  v0[23] = OUTLINED_FUNCTION_32();
  v11 = sub_24381C724();
  v0[24] = v11;
  OUTLINED_FUNCTION_1(v11);
  v0[25] = v12;
  v0[26] = OUTLINED_FUNCTION_32();
  v13 = sub_24381C8E4();
  v0[27] = v13;
  OUTLINED_FUNCTION_1(v13);
  v0[28] = v14;
  v0[29] = OUTLINED_FUNCTION_32();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93078, &qword_24381DDD0);
  v0[30] = v15;
  OUTLINED_FUNCTION_1(v15);
  v0[31] = v16;
  v0[32] = OUTLINED_FUNCTION_32();
  v17 = sub_24381C894();
  v0[33] = v17;
  OUTLINED_FUNCTION_1(v17);
  v0[34] = v18;
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v19 = type metadata accessor for Downloader.AssetDownloadResult(0);
  v0[38] = v19;
  OUTLINED_FUNCTION_38(v19);
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93080, &qword_24381DDD8);
  OUTLINED_FUNCTION_38(v20);
  v0[44] = OUTLINED_FUNCTION_32();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93088, &unk_24381DDE0);
  v0[45] = v21;
  OUTLINED_FUNCTION_1(v21);
  v0[46] = v22;
  v0[47] = OUTLINED_FUNCTION_32();
  v23 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v23);
}

uint64_t sub_243813C10()
{
  OUTLINED_FUNCTION_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93060, &unk_24381DD90);
  sub_24381CD34();
  *(v0 + 384) = *MEMORY[0x277D861C0];
  v1 = MEMORY[0x277CFA8C8];
  *(v0 + 440) = *MEMORY[0x277CFA970];
  *(v0 + 444) = *v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v0 + 392) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_14_2(v2);
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822005A8](v4);
}

uint64_t sub_243813CE8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 400) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_243813DE0()
{
  v174 = v0;
  v1 = v0;
  v2 = v0[44];
  if (__swift_getEnumTagSinglePayload(v2, 1, v0[38]) == 1)
  {
    (*(v0[46] + 8))(v0[47], v0[45]);
LABEL_33:
    v1[9] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93070, &unk_24381DDA8);
    sub_24381CD14();

    v142 = v1[1];

    return v142();
  }

  v3 = v0[50];
  v4 = v0[43];
  sub_243819694(v2, v4);
  sub_24380029C(*v4, (v0 + 2));
  if (v3)
  {
    v5 = v3;
    v7 = v0[46];
    v6 = v0[47];
    v8 = v0[45];
    sub_2438196F8(v1[43]);
    (*(v7 + 8))(v6, v8);
    goto LABEL_5;
  }

  v32 = v0[43];
  v33 = v0[38];
  v35 = v1[14];
  v34 = v1[15];
  v36 = v1[12];
  v37 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DB0, &unk_24381D7A0);
  swift_dynamicCast();
  v38 = *(v33 + 20);
  sub_24381C6C4();
  sub_24381CBC4();

  v1[51] = v36;
  v1[52] = v37;
  v1[53] = v35;
  v1[54] = v34;
  v39 = sandbox_extension_issue_file_to_process();

  if (!v39)
  {
    if (_MergedGlobals_2 != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v109 = v1[36];
    v108 = v1[37];
    v111 = v1[33];
    v110 = v1[34];
    v112 = sub_24381CA64();
    __swift_project_value_buffer(v112, qword_27ED93448);
    (*(v110 + 16))(v109, v108, v111);
    v113 = OUTLINED_FUNCTION_18();
    sub_243819754(v113, v114);
    v115 = sub_24381CA44();
    v116 = sub_24381CD84();
    v117 = os_log_type_enabled(v115, v116);
    v118 = v1[42];
    if (v117)
    {
      v119 = v1[36];
      v120 = v1[34];
      v171 = v1[33];
      v121 = swift_slowAlloc();
      v173[0] = swift_slowAlloc();
      *v121 = 136315394;
      v162 = v116;
      sub_24381C864();
      OUTLINED_FUNCTION_17_1();
      sub_243819364(v122, v123);
      v124 = sub_24381CF24();
      v126 = v125;
      v127 = OUTLINED_FUNCTION_66_0();
      v128(v127);
      v129 = v171;
      v172 = *(v120 + 8);
      v172(v119, v129);
      v130 = sub_243808908(v124, v126, v173);

      *(v121 + 4) = v130;
      *(v121 + 12) = 2080;
      OUTLINED_FUNCTION_16_1();
      sub_243819364(v131, v132);
      v133 = sub_24381CF24();
      v135 = v134;
      sub_2438196F8(v118);
      v136 = sub_243808908(v133, v135, v173);

      *(v121 + 14) = v136;
      _os_log_impl(&dword_2437FA000, v115, v162, "[request id = %s] failed to issue sandbox extension token for file at %s", v121, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_20_1();
      OUTLINED_FUNCTION_27_0();
    }

    else
    {

      sub_2438196F8(v118);
      v143 = OUTLINED_FUNCTION_23_1();
      v172 = v144;
      (v144)(v143);
    }

    v146 = v1[46];
    v145 = v1[47];
    v147 = v1[45];
    v148 = v1[43];
    v149 = sub_24380043C();
    v5 = OUTLINED_FUNCTION_49_0(&type metadata for ProcessorError, v149);
    swift_willThrow();
    sub_2438196F8(v148);
    (*(v146 + 8))(v145, v147);
    v150 = OUTLINED_FUNCTION_57_0();
    (v172)(v150);
LABEL_5:
    v1[8] = v5;
    v9 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DE0, &unk_24381D950);
    if (swift_dynamicCast())
    {
      v10 = (*(v1[18] + 88))(v1[19], v1[17]);
      if (v10 == *MEMORY[0x277CFA920])
      {
        v11 = v10;
        v12 = v1[31];
        v13 = v1[29];
        v165 = v1[32];
        v167 = v1[30];
        v14 = v1[27];
        v15 = v1[28];
        v16 = v1[18];
        v17 = v1[19];
        v18 = v1[17];

        v19 = OUTLINED_FUNCTION_57_0();
        v20(v19);
        v21 = *v17;
        *v13 = *v17;
        (*(v16 + 104))(v13, v11, v18);
        (*(v15 + 104))(v13, *MEMORY[0x277CFA8C0], v14);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93070, &unk_24381DDA8);
        sub_24381CD04();
        (*(v12 + 8))(v165, v167);
        if (_MergedGlobals_2 != -1)
        {
          OUTLINED_FUNCTION_0_4();
          swift_once();
        }

        v22 = sub_24381CA64();
        OUTLINED_FUNCTION_47_0(v22, qword_27ED93448);

        v23 = sub_24381CA44();
        v24 = sub_24381CD84();

        if (OUTLINED_FUNCTION_72_0())
        {
          v25 = OUTLINED_FUNCTION_42_0();
          v26 = OUTLINED_FUNCTION_63();
          v173[0] = v26;
          *v25 = 136315138;
          v27 = MEMORY[0x245D40CE0](v21, MEMORY[0x277D837D0]);
          v29 = v28;

          v30 = sub_243808908(v27, v29, v173);

          *(v25 + 4) = v30;
          OUTLINED_FUNCTION_35_1(&dword_2437FA000, v31, v24, "failed to download due to server blocking %s");
          __swift_destroy_boxed_opaque_existential_1(v26);
          OUTLINED_FUNCTION_20_1();
          OUTLINED_FUNCTION_27_0();
        }

        else
        {
        }

        v107 = v1[8];
        goto LABEL_32;
      }

      (*(v1[18] + 8))(v1[19], v1[17]);
    }

    v89 = *(v1 + 111);
    v91 = v1[31];
    v90 = v1[32];
    v92 = v1[29];
    v94 = v1[27];
    v93 = v1[28];
    v170 = v1[30];

    v95 = (v92 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93090, &qword_24381DDF0) + 48));
    v96 = *MEMORY[0x277CFA968];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93098, &qword_24381DDF8);
    OUTLINED_FUNCTION_0_1();
    (*(v97 + 104))(v92, v96);
    *v95 = 0;
    v95[1] = 0xE000000000000000;
    (*(v93 + 104))(v92, v89, v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93070, &unk_24381DDA8);
    sub_24381CD04();
    (*(v91 + 8))(v90, v170);
    if (_MergedGlobals_2 != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v98 = sub_24381CA64();
    OUTLINED_FUNCTION_47_0(v98, qword_27ED93448);
    v99 = v5;
    v100 = sub_24381CA44();
    sub_24381CD84();

    if (OUTLINED_FUNCTION_72_0())
    {
      v101 = OUTLINED_FUNCTION_42_0();
      v102 = OUTLINED_FUNCTION_54_0();
      *v101 = 138412290;
      v103 = v5;
      v104 = _swift_stdlib_bridgeErrorToNSError();
      *(v101 + 4) = v104;
      *v102 = v104;
      OUTLINED_FUNCTION_70(&dword_2437FA000, v105, v106, "failed to download assets with %@");
      sub_24380B1F4(v102, &qword_27ED92E38, &unk_24381DBD0);
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_20_1();

      goto LABEL_33;
    }

    v107 = v5;
LABEL_32:

    goto LABEL_33;
  }

  v160 = *(v1 + 111);
  v153 = *(v1 + 110);
  log = v1[32];
  v166 = v1[31];
  v40 = v1[29];
  v168 = v1[30];
  v155 = v1[28];
  v157 = v1[27];
  v41 = v1[22];
  v42 = v38;
  v44 = v1[20];
  v43 = v1[21];
  v152 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93090, &qword_24381DDF0) + 48));
  sub_24381C864();
  sub_24381C874();
  (*(v43 + 16))(v41, v32 + v42, v44);
  sub_24381C8B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93098, &qword_24381DDF8);
  OUTLINED_FUNCTION_0_1();
  (*(v45 + 104))(v40, v153);
  *v152 = sub_24381CC14();
  v152[1] = v46;
  (*(v155 + 104))(v40, v160, v157);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93070, &unk_24381DDA8);
  sub_24381CD04();
  (v166[1].isa)(log, v168);
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v47 = v1[43];
  v48 = v1[39];
  v49 = v1[37];
  v50 = v1[34];
  v51 = v1[35];
  v52 = v1[33];
  v53 = sub_24381CA64();
  __swift_project_value_buffer(v53, qword_27ED93448);
  (*(v50 + 16))(v51, v49, v52);
  v54 = OUTLINED_FUNCTION_18();
  sub_243819754(v54, v55);
  v56 = OUTLINED_FUNCTION_23_1();
  sub_243819754(v56, v57);
  sub_243819754(v47, v48);
  v58 = sub_24381CA44();
  v59 = sub_24381CD94();
  v60 = os_log_type_enabled(v58, v59);
  v61 = v1[43];
  v63 = v1[40];
  v62 = v1[41];
  v64 = v1[39];
  if (v60)
  {
    v154 = v1[35];
    v169 = v1[43];
    v65 = v1[34];
    v156 = v1[33];
    v158 = v1[38];
    v159 = v1[39];
    loga = v58;
    v66 = swift_slowAlloc();
    v173[0] = swift_slowAlloc();
    *v66 = 136315906;
    v161 = v59;
    sub_24381C864();
    OUTLINED_FUNCTION_17_1();
    sub_243819364(v67, v68);
    v69 = sub_24381CF24();
    v70 = v63;
    v72 = v71;
    v73 = OUTLINED_FUNCTION_63_0();
    v74(v73);
    v75 = *(v65 + 8);
    v75(v154, v156);
    v76 = sub_243808908(v69, v72, v173);

    *(v66 + 4) = v76;
    *(v66 + 12) = 2050;
    v77 = *v62;
    sub_2438196F8(v62);
    *(v66 + 14) = v77;
    *(v66 + 22) = 2080;
    OUTLINED_FUNCTION_16_1();
    sub_243819364(v78, v79);
    sub_24381CF24();
    sub_2438196F8(v70);
    v80 = OUTLINED_FUNCTION_18();
    v83 = sub_243808908(v80, v81, v82);

    *(v66 + 24) = v83;
    *(v66 + 32) = 2080;
    sub_2438197B8(*(v159 + *(v158 + 24)), *(v159 + *(v158 + 24) + 8));
    sub_2438196F8(v159);
    v84 = OUTLINED_FUNCTION_18();
    v87 = sub_243808908(v84, v85, v86);

    *(v66 + 34) = v87;
    _os_log_impl(&dword_2437FA000, loga, v161, "[request id = %s] downloaded asset with tracking number %{public}ld at %s for range %s", v66, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_14_0();

    v88 = v169;
  }

  else
  {
    v138 = v1[34];
    v137 = v1[35];
    v139 = v1[33];
    sub_2438196F8(v1[41]);

    sub_2438196F8(v64);
    sub_2438196F8(v63);
    v75 = *(v138 + 8);
    v75(v137, v139);
    v88 = v61;
  }

  sub_2438196F8(v88);
  v75(v1[37], v1[33]);
  v140 = swift_task_alloc();
  v1[49] = v140;
  *v140 = v1;
  OUTLINED_FUNCTION_14_2(v140);
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822005A8](v141);
}

uint64_t sub_243814CD4()
{
  v49 = v0;
  v1 = v0;
  (*(v0[46] + 8))(v0[47], v0[45]);
  v2 = v0[7];
  v0[8] = v2;
  v3 = (v0 + 8);
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DE0, &unk_24381D950);
  if (swift_dynamicCast())
  {
    v5 = (*(v1[18] + 88))(v1[19], v1[17]);
    if (v5 == *MEMORY[0x277CFA920])
    {
      v6 = v5;
      v7 = v1[31];
      v8 = v1[29];
      v45 = v1[32];
      v46 = v1[30];
      v9 = v1[28];
      v10 = v1[18];
      v11 = v1[19];
      v12 = v1[17];
      v44 = v1[27];

      (*(v10 + 96))(v11, v12);
      v13 = *v11;
      *v8 = *v11;
      (*(v10 + 104))(v8, v6, v12);
      (*(v9 + 104))(v8, *MEMORY[0x277CFA8C0], v44);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93070, &unk_24381DDA8);
      sub_24381CD04();
      (*(v7 + 8))(v45, v46);
      if (_MergedGlobals_2 != -1)
      {
        OUTLINED_FUNCTION_0_4();
        swift_once();
      }

      v14 = sub_24381CA64();
      OUTLINED_FUNCTION_47_0(v14, qword_27ED93448);

      v15 = sub_24381CA44();
      v16 = sub_24381CD84();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = OUTLINED_FUNCTION_42_0();
        v18 = OUTLINED_FUNCTION_63();
        v48 = v18;
        *v17 = 136315138;
        v19 = MEMORY[0x245D40CE0](v13, MEMORY[0x277D837D0]);
        v21 = v20;

        v22 = sub_243808908(v19, v21, &v48);

        *(v17 + 4) = v22;
        _os_log_impl(&dword_2437FA000, v15, v16, "failed to download due to server blocking %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        OUTLINED_FUNCTION_35_0();
        OUTLINED_FUNCTION_14_0();
      }

      else
      {
      }

      v41 = *v3;
      goto LABEL_15;
    }

    (*(v1[18] + 8))(v1[19], v1[17]);
  }

  v23 = *(v1 + 111);
  v25 = v1[31];
  v24 = v1[32];
  v26 = v1[29];
  v28 = v1[27];
  v27 = v1[28];
  v47 = v1[30];

  v29 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93090, &qword_24381DDF0) + 48));
  v30 = *MEMORY[0x277CFA968];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93098, &qword_24381DDF8);
  OUTLINED_FUNCTION_0_1();
  (*(v31 + 104))(v26, v30);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  (*(v27 + 104))(v26, v23, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93070, &unk_24381DDA8);
  sub_24381CD04();
  (*(v25 + 8))(v24, v47);
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v32 = sub_24381CA64();
  OUTLINED_FUNCTION_47_0(v32, qword_27ED93448);
  v33 = v2;
  v34 = sub_24381CA44();
  v35 = sub_24381CD84();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_42_0();
    v37 = OUTLINED_FUNCTION_54_0();
    *v36 = 138412290;
    v38 = v2;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 4) = v39;
    *v37 = v39;
    OUTLINED_FUNCTION_35_1(&dword_2437FA000, v40, v35, "failed to download assets with %@");
    sub_24380B1F4(v37, &qword_27ED92E38, &unk_24381DBD0);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_27_0();

    goto LABEL_16;
  }

  v41 = v2;
LABEL_15:

LABEL_16:
  v1[9] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93070, &unk_24381DDA8);
  sub_24381CD14();

  v42 = v1[1];

  return v42();
}

uint64_t sub_2438152B0()
{
  OUTLINED_FUNCTION_13();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v8 = sub_24381C8D4();
  v1[9] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[10] = v9;
  v1[11] = OUTLINED_FUNCTION_32();
  v10 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_243815360()
{
  (*(v0[10] + 16))(v0[11], v0[3], v0[9]);
  v1 = OUTLINED_FUNCTION_18();
  v3 = v2(v1);
  if (v3 == *MEMORY[0x277CFA898] || v3 == *MEMORY[0x277CFA8A0])
  {
    v5 = v0[11];
    (*(v0[10] + 96))(v5, v0[9]);
    v0[12] = *v5;
    swift_task_alloc();
    OUTLINED_FUNCTION_20();
    v0[13] = v6;
    *v6 = v7;
    v6[1] = sub_243815510;

    return sub_243812390();
  }

  else
  {
    v9 = sub_24380043C();
    OUTLINED_FUNCTION_49_0(&type metadata for ProcessorError, v9);
    swift_willThrow();
    v10 = OUTLINED_FUNCTION_18();
    v11(v10);

    OUTLINED_FUNCTION_12();

    return v12();
  }
}

uint64_t sub_243815510()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_243815608()
{
  OUTLINED_FUNCTION_13();

  OUTLINED_FUNCTION_12();

  return v0();
}

uint64_t sub_24381566C()
{
  OUTLINED_FUNCTION_13();

  OUTLINED_FUNCTION_12();

  return v0();
}

void *sub_2438156D0(uint64_t a1)
{
  v79 = sub_24381C9A4();
  v2 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_24381C6E4();
  v4 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EC0, &qword_24381D9E0);
  v70 = *(v76 - 8);
  v7 = MEMORY[0x28223BE20](v76);
  v69 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v75 = (&v61 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v74 = &v61 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v61 - v14;
  MEMORY[0x28223BE20](v13);
  v73 = &v61 - v16;
  v17 = 0;
  v80 = a1;
  v81 = MEMORY[0x277D84F98];
  v82 = MEMORY[0x277D84F98];
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v72 = (v2 + 8);
  v65 = v4 + 32;
  v66 = v4;
  v64 = (v4 + 8);
  v63 = xmmword_24381D830;
  v67 = v24;
  v68 = v19;
  v77 = v6;
  if ((v22 & v18) != 0)
  {
LABEL_8:
    while (1)
    {
      v26 = __clz(__rbit64(v23)) | (v17 << 6);
      v27 = *(v80 + 56);
      v28 = *(*(v80 + 48) + 8 * v26);
      v29 = sub_24381CA14();
      v30 = *(v29 - 8);
      v31 = v27 + *(v30 + 72) * v26;
      v32 = v76;
      v33 = v73;
      (*(v30 + 16))(&v73[*(v76 + 48)], v31, v29);
      *v33 = v28;
      sub_2438198C8(v33, v15, &qword_27ED92EC0, &qword_24381D9E0);
      v34 = v15;
      v35 = v15;
      v36 = v74;
      sub_243819878(v35, v74, &qword_27ED92EC0, &qword_24381D9E0);
      v37 = *(v32 + 48);
      v38 = v75;
      *v75 = *v36;
      (*(v30 + 32))(v38 + v37, &v36[v37], v29);
      v39 = v78;
      sub_24381C9C4();
      v40 = v77;
      sub_24381C964();
      (*v72)(v39, v79);
      sub_24380B1F4(v38, &qword_27ED92EC0, &qword_24381D9E0);
      v41 = v81;
      v43 = sub_243818428(v40);
      v44 = v41[2];
      v45 = (v42 & 1) == 0;
      v46 = v44 + v45;
      if (__OFADD__(v44, v45))
      {
        break;
      }

      v47 = v42;
      if (v41[3] < v46)
      {
        sub_2438188A8(v46, 1);
        v41 = v82;
        v48 = sub_243818428(v40);
        if ((v47 & 1) != (v49 & 1))
        {
          goto LABEL_26;
        }

        v43 = v48;
      }

      v15 = v34;
      v23 &= v23 - 1;
      v81 = v41;
      if (v47)
      {
        (*v64)(v40, v71);
        v50 = v41[7];
        sub_2438198C8(v15, v69, &qword_27ED92EC0, &qword_24381D9E0);
        v51 = *(v50 + 8 * v43);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v50 + 8 * v43) = v51;
        v62 = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v51 = sub_243818134(0, v51[2] + 1, 1, v51);
          *(v50 + 8 * v43) = v51;
        }

        v54 = v51[2];
        v53 = v51[3];
        if (v54 >= v53 >> 1)
        {
          v51 = sub_243818134((v53 > 1), v54 + 1, 1, v51);
          *(v62 + 8 * v43) = v51;
        }

        v51[2] = v54 + 1;
        sub_2438198C8(v69, v51 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v54, &qword_27ED92EC0, &qword_24381D9E0);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93118, &qword_24381DEB8);
        v55 = (*(v70 + 80) + 32) & ~*(v70 + 80);
        v56 = swift_allocObject();
        *(v56 + 16) = v63;
        sub_2438198C8(v15, v56 + v55, &qword_27ED92EC0, &qword_24381D9E0);
        v41[(v43 >> 6) + 8] |= 1 << v43;
        (*(v66 + 32))(v41[6] + *(v66 + 72) * v43, v40, v71);
        *(v41[7] + 8 * v43) = v56;
        v57 = v41[2];
        v58 = __OFADD__(v57, 1);
        v59 = v57 + 1;
        if (v58)
        {
          goto LABEL_25;
        }

        v41[2] = v59;
      }

      v24 = v67;
      v19 = v68;
      if (!v23)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v25 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v25 >= v24)
      {

        return v81;
      }

      v23 = *(v19 + 8 * v25);
      ++v17;
      if (v23)
      {
        v17 = v25;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_24381CF54();
  __break(1u);
  return result;
}

uint64_t sub_243815D64(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EC0, &qword_24381D9E0);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92FC0, &qword_24381DB38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_24380FBA8(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_243819878(v11, v4, &qword_27ED92EC0, &qword_24381D9E0);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_24380FBA8(v13 > 1, v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_2438198C8(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, &qword_27ED92FC0, &qword_24381DB38);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void sub_243815F9C()
{
  OUTLINED_FUNCTION_36_0();
  v386 = v0;
  v405 = v1;
  v3 = v2;
  v397 = v4;
  v460 = *MEMORY[0x277D85DE8];
  v411 = sub_24381CBA4();
  OUTLINED_FUNCTION_9();
  *&v448 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v419 = v7;
  OUTLINED_FUNCTION_60();
  v416 = sub_24381C714();
  OUTLINED_FUNCTION_9();
  v447 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  v415 = v10;
  OUTLINED_FUNCTION_60();
  v426 = sub_24381C9A4();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  v425 = v14;
  OUTLINED_FUNCTION_60();
  v432 = sub_24381CA14();
  OUTLINED_FUNCTION_9();
  v428 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_76();
  v424 = v17;
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v372 - v19;
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DD0, &unk_24381D800);
  OUTLINED_FUNCTION_9();
  v22 = v21;
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v23);
  v388 = &v372 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED930B8, &qword_24381DE18);
  v26 = OUTLINED_FUNCTION_38(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_76();
  v429 = v27;
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x28223BE20](v28);
  v393 = &v372 - v29;
  OUTLINED_FUNCTION_60();
  v437 = sub_24381C894();
  OUTLINED_FUNCTION_9();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4_0();
  v402 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E68, &unk_24381DE20);
  OUTLINED_FUNCTION_38(v34);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v35);
  v394 = &v372 - v36;
  OUTLINED_FUNCTION_60();
  v433 = sub_24381C754();
  OUTLINED_FUNCTION_9();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_76();
  v420 = v40;
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x28223BE20](v41);
  v404 = &v372 - v42;
  OUTLINED_FUNCTION_60();
  v43 = sub_24381C6E4();
  OUTLINED_FUNCTION_9();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_42();
  v49 = v48 - v47;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93040, &qword_24381DCE0);
  v51 = MEMORY[0x28223BE20](v50);
  v395 = &v372 - v53;
  v385 = *(v3 + 16);
  if (!v385)
  {
    goto LABEL_183;
  }

  v54 = 0;
  v441 = 0;
  v55 = *(v51 + 48);
  v391 = v3 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
  v392 = v55;
  v56 = *(v52 + 72);
  v389 = (v45 + 32);
  v390 = v56;
  v384 = (v38 + 32);
  v381 = (v22 + 16);
  v440 = v428 + 16;
  v421 = v428 + 32;
  v422 = v428 + 8;
  v423 = (v12 + 8);
  v413 = (v447 + 1);
  v414 = v31 + 8;
  v427 = (v38 + 8);
  v418 = (v448 + 8);
  v380 = *MEMORY[0x277D25598];
  v373 = *MEMORY[0x277D255B8];
  v378 = *MEMORY[0x277D25560];
  v57 = *MEMORY[0x277D25610];
  v375 = *MEMORY[0x277D25588];
  v376 = v57;
  v374 = 0x800000024381E610;
  v382 = (v45 + 8);
  v406 = xmmword_24381DCB0;
  *(&v58 + 1) = 4;
  v379 = xmmword_24381D840;
  *&v58 = 138412290;
  v372 = v58;
  *(&v58 + 1) = 2;
  v387 = xmmword_24381D830;
  *&v58 = 136315138;
  v407 = v58;
  v377 = v20;
  v59 = MEMORY[0x277D84F90];
  v383 = v43;
  v403 = v49;
  do
  {
    v408 = v54;
    v60 = v395;
    sub_243819878(v391 + v54 * v390, v395, &qword_27ED93040, &qword_24381DCE0);
    v61 = *(v60 + v392);
    (*v389)(v49, v60, v43);

    v435 = v61;
    v63 = sub_24380239C(v62);
    v64 = v63[2];
    if (v64)
    {
      *&v457 = v59;
      sub_24380A174(0, v64, 0);
      v65 = v457;
      v66 = 4;
      do
      {
        v67 = v63[v66];
        if (v67 < 0)
        {
          goto LABEL_185;
        }

        *&v457 = v65;
        v69 = v65[2];
        v68 = v65[3];
        if (v69 >= v68 >> 1)
        {
          v70 = OUTLINED_FUNCTION_28_0(v68);
          sub_24380A174(v70, v69 + 1, 1);
          v65 = v457;
        }

        v65[2] = v69 + 1;
        v65[v69 + 4] = v67;
        ++v66;
        --v64;
      }

      while (v64);
      v71 = v65;

      v72 = v71;
    }

    else
    {

      v72 = v59;
    }

    v447 = v72;
    v73 = v72[2];
    if (v73)
    {
      *&v452 = v59;
      sub_24380A154(0, v73, 0);
      v74 = 0;
      v75 = v452;
      v76 = v441;
      while (1)
      {
        if (v74 >= v447[2])
        {
          goto LABEL_186;
        }

        v77 = v447[v74 + 4];
        if (v77 < 0)
        {
          break;
        }

        *&v457 = v447[v74 + 4];
        sub_24380029C(v77, &v457 + 8);
        if (v76)
        {
          goto LABEL_216;
        }

        *&v452 = v75;
        v79 = *(v75 + 16);
        v78 = *(v75 + 24);
        if (v79 >= v78 >> 1)
        {
          v83 = OUTLINED_FUNCTION_28_0(v78);
          sub_24380A154(v83, v79 + 1, 1);
          v75 = v452;
        }

        ++v74;
        *(v75 + 16) = v79 + 1;
        v80 = (v75 + 48 * v79);
        v81 = v457;
        v82 = v459;
        v80[3] = v458;
        v80[4] = v82;
        v80[2] = v81;
        if (v73 == v74)
        {
          v441 = 0;
          goto LABEL_21;
        }
      }

LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
      goto LABEL_212;
    }

    v75 = v59;
LABEL_21:
    v84 = sub_243812E60(v75, &qword_27ED92F38, &qword_24381DA48, sub_2438096C0);
    sub_243803EA0(v84, &v457);
    v86 = v393;
    v85 = v394;
    if (!v459)
    {
      v365 = OUTLINED_FUNCTION_62_0();
      v366(v365);

      sub_24380B1F4(&v457, &qword_27ED92E70, &qword_24381D990);
      OUTLINED_FUNCTION_47_1();
      __swift_storeEnumTagSinglePayload(v367, v368, v369, v433);
LABEL_182:
      sub_24380B1F4(v85, &qword_27ED92E68, &unk_24381DE20);
      break;
    }

    v434 = v73;
    v446 = v84;
    __swift_project_boxed_opaque_existential_1(&v457 + 1, v459);
    sub_24381C764();
    v87 = v433;
    __swift_storeEnumTagSinglePayload(v85, 0, 1, v433);
    __swift_destroy_boxed_opaque_existential_1(&v457 + 1);
    if (__swift_getEnumTagSinglePayload(v85, 1, v87) == 1)
    {
      v370 = OUTLINED_FUNCTION_62_0();
      v371(v370);

      goto LABEL_182;
    }

    (*v384)(v404, v85, v87);
    v88 = v446;
    if (!v447[2])
    {
      goto LABEL_205;
    }

    v89 = v447[4];
    v409 = v447 + 4;
    if (v89 < 0)
    {
      goto LABEL_206;
    }

    sub_243800368(v89, v446, &v452);
    if (!v453)
    {
      goto LABEL_209;
    }

    sub_243800490(&v452, &v457);
    v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DB0, &unk_24381D7A0);
    v90 = v437;
    swift_dynamicCast();
    v91 = sub_24381C834();
    v93 = v92;
    v94 = OUTLINED_FUNCTION_23_1();
    v412 = v95;
    v95(v94);
    if (*v409 < 0)
    {
      goto LABEL_207;
    }

    sub_243800368(*v409, v88, &v452);
    if (!v453)
    {
      goto LABEL_210;
    }

    sub_243800490(&v452, &v457);
    swift_dynamicCast();
    v96 = sub_24381C854();
    v98 = v97;
    v99 = OUTLINED_FUNCTION_23_1();
    v412(v99);
    type metadata accessor for Downloader.OptionsBuilder();
    inited = swift_initStackObject();
    v101 = v406;
    *(inited + 32) = v406;
    *(inited + 48) = v101;
    *(inited + 72) = 0;
    *(inited + 80) = 0;
    *(inited + 16) = v435;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93108, &unk_24381DEA0);
    *(inited + 24) = sub_24381CB24();
    v417 = inited + 24;
    v102 = *(inited + 32);
    v103 = *(inited + 40);
    *(inited + 32) = v406;
    sub_24381933C(v102, v103);
    v104 = *(inited + 48);
    v105 = *(inited + 56);
    *(inited + 48) = v406;
    sub_24381933C(v104, v105);
    *(inited + 64) = 0;
    v106 = sub_2438013D8(v91, v93);
    v438 = inited;
    if (!v106)
    {
      v107 = *(inited + 32);
      v108 = *(inited + 40);
      *(inited + 32) = v91;
      *(inited + 40) = v93;
      sub_24381933C(v107, v108);
      sub_24380AF70(v91, v93);
      *(v438 + 48) = v96;
      *(v438 + 56) = v98;
      v109 = OUTLINED_FUNCTION_23_1();
      v90 = v437;
      sub_24381933C(v109, v110);
      v111 = OUTLINED_FUNCTION_57_0();
      sub_24380AF70(v111, v112);
      *(v438 + 64) = 1;
    }

    if (*v409 < 0)
    {
      goto LABEL_208;
    }

    sub_243800368(*v409, v446, &v457);
    if (*(&v458 + 1))
    {
      v113 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v86, v113 ^ 1u, 1, v90);
      if (__swift_getEnumTagSinglePayload(v86, 1, v90) != 1)
      {
        sub_24381C824();
        OUTLINED_FUNCTION_60_0();
        (v412)(v86, v437);
        if (v90)
        {
          v114 = v438;
          *(v438 + 72) = v86;
          *(v114 + 80) = v90;
        }

        goto LABEL_37;
      }
    }

    else
    {
      sub_24380B1F4(&v457, &qword_27ED92DB8, &qword_24381DE30);
      OUTLINED_FUNCTION_47_1();
      __swift_storeEnumTagSinglePayload(v115, v116, v117, v90);
    }

    sub_24380B1F4(v86, &qword_27ED930B8, &qword_24381DE18);
LABEL_37:
    v398 = v98;
    v399 = v96;
    v400 = v93;
    v401 = v91;
    v118 = v446;
    v119 = *(v446 + 16);
    if (v119)
    {
      *&v455 = v59;
      sub_243818CC0(0, v119, 0);
      *&v448 = v455;
      v122 = sub_24380AF24(v118);
      v123 = 0;
      v445 = v118 + 64;
      v431 = v120;
      v410 = v118 + 72;
      v124 = v437;
      v430 = v119;
      do
      {
        v125 = v429;
        if (v122 < 0 || v122 >= 1 << *(v118 + 32))
        {
          goto LABEL_188;
        }

        v126 = v122 >> 6;
        if ((*(v445 + 8 * (v122 >> 6)) & (1 << v122)) == 0)
        {
          goto LABEL_189;
        }

        if (*(v118 + 36) != v120)
        {
          goto LABEL_190;
        }

        v442 = v120;
        v439 = v121;
        v127 = *(*(v118 + 48) + 8 * v122);
        sub_2438000FC(*(v118 + 56) + 40 * v122, &v457 + 8);
        v444 = v127;
        *&v452 = v127;
        sub_243800490((&v457 + 8), &v452 + 8);
        sub_2438000FC(&v452 + 8, v454);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v125, 0, 1, v124);
          v128 = sub_24381C884();
          v130 = v129;
          LODWORD(v443) = v131;
          v132 = OUTLINED_FUNCTION_23_1();
          v412(v132);
        }

        else
        {
          LODWORD(v443) = 1;
          OUTLINED_FUNCTION_47_1();
          __swift_storeEnumTagSinglePayload(v133, v134, v135, v124);
          sub_24380B1F4(v125, &qword_27ED930B8, &qword_24381DE18);
          v128 = 0;
          v130 = 0;
        }

        sub_24380B1F4(&v452, &qword_27ED930C0, &qword_24381DE38);
        v136 = v448;
        *&v455 = v448;
        v138 = *(v448 + 16);
        v137 = *(v448 + 24);
        if (v138 >= v137 >> 1)
        {
          v149 = OUTLINED_FUNCTION_28_0(v137);
          sub_243818CC0(v149, v138 + 1, 1);
          v136 = v455;
        }

        *(v136 + 16) = v138 + 1;
        v139 = v136 + 32 * v138;
        *(v139 + 32) = v444;
        *(v139 + 40) = v128;
        *(v139 + 48) = v130;
        *(v139 + 56) = v443 & 1;
        v118 = v446;
        v140 = 1 << *(v446 + 32);
        if (v122 >= v140)
        {
          goto LABEL_191;
        }

        if ((*(v445 + 8 * v126) & (1 << v122)) == 0)
        {
          goto LABEL_192;
        }

        if (*(v446 + 36) != v442)
        {
          goto LABEL_193;
        }

        *&v448 = v136;
        OUTLINED_FUNCTION_58_1();
        if (v142)
        {
          v144 = v126 << 6;
          v145 = v126 + 1;
          v146 = (v410 + 8 * v126);
          v143 = v430;
          while (v145 < (v140 + 63) >> 6)
          {
            v148 = *v146++;
            v147 = v148;
            v144 += 64;
            ++v145;
            if (v148)
            {
              sub_24380AF64(v122, v141, v439 & 1);
              v140 = __clz(__rbit64(v147)) + v144;
              goto LABEL_58;
            }
          }

          sub_24380AF64(v122, v141, v439 & 1);
        }

        else
        {
          OUTLINED_FUNCTION_57_1();
          v143 = v430;
        }

LABEL_58:
        v121 = 0;
        ++v123;
        v122 = v140;
        v120 = v431;
        v124 = v437;
      }

      while (v123 != v143);
      v150 = v448;
    }

    else
    {
      v150 = v59;
    }

    v151 = 0;
    ++v408;
    v152 = v150[2];
    v153 = v150 + 7;
    v154 = v438;
    v445 = v152;
    while (v152 != v151)
    {
      if (v151 >= v150[2])
      {
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
        goto LABEL_187;
      }

      if ((*v153 & 1) == 0)
      {
        v155 = *(v153 - 3);
        v448 = *(v153 - 1);
        swift_beginAccess();

        swift_isUniquelyReferenced_nonNull_native();
        v156 = v154;
        v157 = *(v154 + 24);
        *&v452 = v157;
        *(v156 + 24) = 0x8000000000000000;
        v158 = sub_243800504(v155);
        if (__OFADD__(*(v157 + 16), (v159 & 1) == 0))
        {
          goto LABEL_200;
        }

        v160 = v158;
        v161 = v159;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED930C8, &unk_24381DE40);
        v162 = sub_24381CEC4();
        v163 = v452;
        if (v162)
        {
          v164 = sub_243800504(v155);
          if ((v161 & 1) != (v165 & 1))
          {
            goto LABEL_217;
          }

          v160 = v164;
          if ((v161 & 1) == 0)
          {
LABEL_69:
            v163[(v160 >> 6) + 8] |= 1 << v160;
            *(v163[6] + 8 * v160) = v155;
            *(v163[7] + 16 * v160) = v448;
            v166 = v163[2];
            v167 = __OFADD__(v166, 1);
            v168 = v166 + 1;
            if (v167)
            {
              goto LABEL_202;
            }

            v163[2] = v168;
            goto LABEL_73;
          }
        }

        else if ((v161 & 1) == 0)
        {
          goto LABEL_69;
        }

        *(v163[7] + 16 * v160) = v448;
LABEL_73:
        v169 = v438;
        *(v438 + 24) = v163;
        v154 = v169;
        swift_endAccess();

        v152 = v445;
      }

      v153 += 32;
      ++v151;
    }

    type metadata accessor for DownloadRequestContext(0);
    (*v381)(v388, v397, v396);

    v443 = sub_2438007D8(v170);
    v171 = v434;
    if (v434)
    {
      *&v457 = MEMORY[0x277D84F90];
      v172 = OUTLINED_FUNCTION_44_1();
      sub_24380A10C(v172, v173, v174);
      v175 = v457;
      v176 = v409;
      v177 = v432;
      v178 = v377;
      do
      {
        v180 = *v176++;
        v179 = v180;
        if (v180 < 0)
        {
          goto LABEL_194;
        }

        v181 = v435;
        if (!*(v435 + 16))
        {
          goto LABEL_195;
        }

        v182 = sub_243800504(v179);
        if ((v183 & 1) == 0)
        {
          goto LABEL_196;
        }

        v184 = *(v181 + 56);
        v185 = v428;
        v186 = *(v428 + 72);
        (*(v428 + 16))(v178, v184 + v186 * v182, v177);
        v187 = v175;
        *&v457 = v175;
        v189 = *(v175 + 16);
        v188 = *(v175 + 24);
        if (v189 >= v188 >> 1)
        {
          v192 = OUTLINED_FUNCTION_28_0(v188);
          sub_24380A10C(v192, v189 + 1, 1);
          v185 = v428;
          v187 = v457;
        }

        *(v187 + 16) = v189 + 1;
        OUTLINED_FUNCTION_37_1();
        v175 = v190;
        (*(v185 + 32))(v190 + v191 + v189 * v186, v178, v177);
        --v171;
      }

      while (v171);
      v59 = MEMORY[0x277D84F90];
      v193 = v175;
    }

    else
    {
      v59 = MEMORY[0x277D84F90];
      v193 = MEMORY[0x277D84F90];
      v185 = v428;
    }

    v194 = *(v193 + 16);
    v442 = v193;
    if (v194)
    {
      *&v457 = v59;
      v195 = OUTLINED_FUNCTION_8_1();
      v197 = v196;
      sub_24380A05C(v195, v198, v199);
      v200 = v457;
      OUTLINED_FUNCTION_37_1();
      v202 = v197 + v201;
      *&v448 = *(v185 + 72);
      v445 = *(v185 + 16);
      do
      {
        v203 = OUTLINED_FUNCTION_65_0();
        v204 = v432;
        (v445)(v203);
        v205 = v425;
        sub_24381C9C4();
        v206 = sub_24381C994();
        v208 = v207;
        (*v423)(v205, v426);
        v209 = OUTLINED_FUNCTION_62_0();
        v210(v209, v204);
        *&v457 = v200;
        v212 = v200[2];
        v211 = v200[3];
        v213 = v212 + 1;
        if (v212 >= v211 >> 1)
        {
          v215 = OUTLINED_FUNCTION_28_0(v211);
          sub_24380A05C(v215, v212 + 1, 1);
          v200 = v457;
        }

        v200[2] = v213;
        v214 = &v200[2 * v212];
        v214[4] = v206;
        v214[5] = v208;
        v202 += v448;
        --v194;
      }

      while (v194);
      v59 = MEMORY[0x277D84F90];
      goto LABEL_93;
    }

    v213 = v59[2];
    if (v213)
    {
      v200 = v59;
LABEL_93:
      *&v457 = v59;
      v216 = OUTLINED_FUNCTION_44_1();
      sub_24380A02C(v216, v217, v218);
      *&v448 = v457;
      v219 = v200 + 5;
      while (2)
      {
        v220 = *(v219 - 1);
        v221 = *v219;
        v222 = *v219 >> 62;
        v219 += 2;
        v223 = v59;
        switch(v222)
        {
          case 1uLL:
            if (__OFSUB__(HIDWORD(v220), v220))
            {
              goto LABEL_203;
            }

            v224 = HIDWORD(v220) - v220;
LABEL_100:
            v227 = OUTLINED_FUNCTION_23_1();
            sub_24380AF70(v227, v228);
            if (v224)
            {
LABEL_101:
              if (v224 < 1)
              {
                v223 = v59;
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92DF8, &qword_24381DDA0);
                v223 = swift_allocObject();
                v229 = _swift_stdlib_malloc_size(v223);
                v223[2] = v224;
                v223[3] = 2 * v229 - 64;
              }

              v230 = v415;
              v231 = sub_24381C6F4();
              (*v413)(v230, v416);
              v59 = MEMORY[0x277D84F90];
              if (v231 != v224)
              {
                goto LABEL_201;
              }
            }

            else
            {
LABEL_96:
              v223 = v59;
            }

LABEL_105:
            v232 = v223[2];
            v233 = swift_slowAlloc();
            memcpy(v233, v223 + 4, v232);
            v234 = OUTLINED_FUNCTION_23_1();
            sub_2437FF838(v234, v235);

            v236 = v448;
            *&v457 = v448;
            v238 = *(v448 + 16);
            v237 = *(v448 + 24);
            if (v238 >= v237 >> 1)
            {
              v239 = OUTLINED_FUNCTION_28_0(v237);
              sub_24380A02C(v239, v238 + 1, 1);
              v236 = v457;
            }

            *(v236 + 16) = v238 + 1;
            *&v448 = v236;
            *(v236 + 8 * v238 + 32) = v233;
            if (--v213)
            {
              continue;
            }

            break;
          case 2uLL:
            v226 = *(v220 + 16);
            v225 = *(v220 + 24);
            v224 = v225 - v226;
            if (!__OFSUB__(v225, v226))
            {
              goto LABEL_100;
            }

            goto LABEL_204;
          case 3uLL:
            goto LABEL_105;
          default:
            v224 = BYTE6(v221);
            if (!BYTE6(v221))
            {
              goto LABEL_96;
            }

            goto LABEL_101;
        }

        break;
      }
    }

    else
    {

      *&v448 = v59;
    }

    if (v434)
    {
      *&v452 = v59;
      sub_24380A0EC(0, v434, 0);
      v240 = 0;
      v241 = v452;
      while (1)
      {
        v242 = v441;
        if (v240 >= v447[2])
        {
          goto LABEL_197;
        }

        v243 = v447[v240 + 4];
        if (v243 < 0)
        {
          goto LABEL_198;
        }

        sub_24380029C(v243, &v457);
        v441 = v242;
        if (v242)
        {
          goto LABEL_216;
        }

        *&v452 = v241;
        v245 = v241[2];
        v244 = v241[3];
        if (v245 >= v244 >> 1)
        {
          v246 = OUTLINED_FUNCTION_28_0(v244);
          sub_24380A0EC(v246, v245 + 1, 1);
          v241 = v452;
        }

        ++v240;
        v241[2] = v245 + 1;
        sub_243800490(&v457, &v241[5 * v245 + 4]);
        if (v434 == v240)
        {
          goto LABEL_119;
        }
      }
    }

    v241 = v59;
LABEL_119:
    v247 = v241[2];
    if (v247)
    {
      *&v452 = v59;
      v248 = OUTLINED_FUNCTION_8_1();
      sub_24380A0AC(v248, v249, v250);
      v251 = v452;
      v252 = (v241 + 4);
      do
      {
        sub_2438000FC(v252, &v457);
        __swift_project_boxed_opaque_existential_1(&v457, *(&v458 + 1));
        sub_24381C764();
        v253 = sub_24381C734();
        v255 = v254;
        v256 = OUTLINED_FUNCTION_62_0();
        v257(v256, v433);
        __swift_destroy_boxed_opaque_existential_1(&v457);
        *&v452 = v251;
        v259 = v251[2];
        v258 = v251[3];
        if (v259 >= v258 >> 1)
        {
          v261 = OUTLINED_FUNCTION_28_0(v258);
          sub_24380A0AC(v261, v259 + 1, 1);
          v251 = v452;
        }

        v251[2] = v259 + 1;
        v260 = &v251[2 * v259];
        v260[4] = v253;
        v260[5] = v255;
        v252 += 40;
        --v247;
      }

      while (v247);

      v59 = MEMORY[0x277D84F90];
    }

    else
    {

      v251 = v59;
    }

    v262 = v251[2];
    v263 = v411;
    if (v262)
    {
      *&v452 = v59;
      v264 = OUTLINED_FUNCTION_8_1();
      sub_24380A07C(v264, v265, v266);
      v267 = 0;
      v268 = v452;
      v269 = v251 + 5;
      v444 = v262;
      do
      {
        if (v267 >= v251[2])
        {
          goto LABEL_199;
        }

        v445 = v268;
        v270 = *(v269 - 1);
        v271 = *v269;
        *&v457 = v270;
        *(&v457 + 1) = v271;

        v272 = v419;
        sub_24381CB94();
        sub_24380B0DC();
        v273 = sub_24381CDE4();
        (*v418)(v272, v263);
        if (v273)
        {
          v274 = *(v273 + 16);
          v275 = swift_slowAlloc();
          memcpy(v275, (v273 + 32), v274);
        }

        else
        {
          if (_MergedGlobals_2 != -1)
          {
            OUTLINED_FUNCTION_0_4();
            swift_once();
          }

          v276 = sub_24381CA64();
          OUTLINED_FUNCTION_47_0(v276, qword_27ED93448);

          v277 = sub_24381CA44();
          v278 = sub_24381CD84();

          if (os_log_type_enabled(v277, v278))
          {
            v279 = OUTLINED_FUNCTION_42_0();
            v280 = OUTLINED_FUNCTION_63();
            *&v457 = v280;
            *v279 = v407;
            *(v279 + 4) = sub_243808908(v270, v271, &v457);
            _os_log_impl(&dword_2437FA000, v277, v278, "unable to convert token %s to C string.", v279, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v280);
            v59 = MEMORY[0x277D84F90];
            OUTLINED_FUNCTION_35_0();
            OUTLINED_FUNCTION_14_0();
          }

          v275 = 0;
          v263 = v411;
        }

        v268 = v445;
        *&v452 = v445;
        v282 = *(v445 + 16);
        v281 = *(v445 + 24);
        if (v282 >= v281 >> 1)
        {
          v283 = OUTLINED_FUNCTION_28_0(v281);
          sub_24380A07C(v283, v282 + 1, 1);
          v268 = v452;
        }

        ++v267;
        *(v268 + 16) = v282 + 1;
        *(v268 + 8 * v282 + 32) = v275;
        v269 += 2;
      }

      while (v444 != v267);
      v445 = v268;
    }

    else
    {

      v445 = v59;
    }

    v450 = 0;
    v284 = *(*(v386 + 16) + 32);
    v49 = v403;
    v285 = sub_24381C6A4();
    sub_24381C744();
    v446 = sub_24381CB74();

    v444 = *(v443 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EB0, &unk_24381D9D0);
    v286 = swift_initStackObject();
    *(v286 + 16) = v379;
    if (!v380)
    {
      goto LABEL_211;
    }

    *(v286 + 32) = sub_24381CB84();
    *(v286 + 40) = v287;
    v288 = v438;
    sub_2438105A8();
    v290 = v289;
    *(v286 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EB8, &qword_24381DB50);
    *(v286 + 48) = v290;
    v291 = sub_24381A61C();
    v293 = *v291;
    v292 = v291[1];
    *(v286 + 80) = v293;
    *(v286 + 88) = v292;
    LOBYTE(v293) = *(v288 + 64);
    *(v286 + 120) = MEMORY[0x277D839B0];
    *(v286 + 96) = v293;

    v294 = MEMORY[0x277D837D0];
    sub_24381CB24();
    if (*(v288 + 40) >> 60 == 15 || (v295 = *(v288 + 56), v295 >> 60 == 15))
    {
      v296 = v378;
      goto LABEL_147;
    }

    v442 = v284;
    if (!v373)
    {
      __break(1u);
LABEL_216:

      swift_unexpectedError();
      __break(1u);
LABEL_217:
      sub_24381CF54();
      __break(1u);
      JUMPOUT(0x2438180C4);
    }

    v297 = v285;
    v298 = *(v438 + 48);
    v299 = sub_24381CB84();
    v301 = v300;
    v453 = MEMORY[0x277CC9318];
    OUTLINED_FUNCTION_69();
    v302 = OUTLINED_FUNCTION_66_0();
    sub_243819864(v302, v303);
    v304 = OUTLINED_FUNCTION_66_0();
    sub_243819864(v304, v305);
    v306 = OUTLINED_FUNCTION_63_0();
    sub_243819864(v306, v307);
    swift_isUniquelyReferenced_nonNull_native();
    v308 = OUTLINED_FUNCTION_59_0();
    sub_243818F74(v308, v299, v301, v309);

    v310 = v455;
    v311 = sub_24381A640();
    v312 = *v311;
    v313 = v311[1];
    v453 = MEMORY[0x277CC9318];
    *&v452 = v298;
    *(&v452 + 1) = v295;
    sub_24380B0CC(&v452, v454);
    v314 = OUTLINED_FUNCTION_63_0();
    sub_243819864(v314, v315);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v455 = v310;
    sub_243818F74(v454, v312, v313, isUniquelyReferenced_nonNull_native);

    v317 = OUTLINED_FUNCTION_66_0();
    sub_24381933C(v317, v318);
    v319 = OUTLINED_FUNCTION_63_0();
    sub_24381933C(v319, v320);
    v296 = v378;
    v59 = MEMORY[0x277D84F90];
    v294 = MEMORY[0x277D837D0];
    v285 = v297;
    v49 = v403;
    v284 = v442;
LABEL_147:
    v321 = *(v438 + 80);
    if (v321)
    {
      v442 = v284;
      if (v296)
      {
        v322 = v285;
        v323 = *(v438 + 72);
        v324 = sub_24381CB84();
        v326 = v325;
        v453 = v294;
        OUTLINED_FUNCTION_69();
        swift_bridgeObjectRetain_n();
        swift_isUniquelyReferenced_nonNull_native();
        v327 = OUTLINED_FUNCTION_59_0();
        sub_243818F74(v327, v324, v326, v328);

        if (v376)
        {
          v329 = v455;
          v330 = sub_24381CB84();
          v332 = v331;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED930D8, &qword_24381DE58);
          v333 = swift_initStackObject();
          *(v333 + 16) = v387;
          if (v375)
          {
            *(v333 + 32) = sub_24381CB84();
            *(v333 + 40) = v334;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED930E0, &qword_24381DE60);
            v335 = swift_initStackObject();
            *(v335 + 16) = v387;
            *(v335 + 32) = 0xD000000000000014;
            *(v335 + 40) = v374;
            *(v335 + 48) = v323;
            *(v335 + 56) = v321;
            *(v333 + 48) = sub_24381CB24();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED930E8, &qword_24381DE68);
            v336 = sub_24381CB24();
            v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED930F0, &unk_24381DE70);
            *&v455 = v336;
            sub_24380B0CC(&v455, v451);
            v337 = swift_isUniquelyReferenced_nonNull_native();
            v449 = v329;
            sub_243818F74(v451, v330, v332, v337);

            v285 = v322;
            v49 = v403;
            goto LABEL_152;
          }

LABEL_212:
          __break(1u);
        }

        __break(1u);
      }

      __break(1u);
    }

LABEL_152:
    OUTLINED_FUNCTION_48_1();
    v338 = sub_24381CAF4();

    v339 = v448;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2438086A4(0, *(v339 + 16), 0, v339, &qword_27ED92EA8, &qword_24381DE50);
      v339 = v340;
    }

    v341 = v445;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2438086A4(0, *(v341 + 16), 0, v341, &qword_27ED92EA0, &unk_24381D9C0);
      v341 = v342;
    }

    swift_beginAccess();

    v343 = v446;
    v344 = MMCSGetItems();
    swift_endAccess();
    v345 = v341;

    if (!v344)
    {
      v346 = sub_24380043C();
      *&v457 = OUTLINED_FUNCTION_49_0(&type metadata for ProcessorError, v346);
      sub_24381CD14();
      if (_MergedGlobals_2 != -1)
      {
        OUTLINED_FUNCTION_0_4();
        swift_once();
      }

      v347 = sub_24381CA64();
      OUTLINED_FUNCTION_47_0(v347, qword_27ED93448);
      v348 = sub_24381CA44();
      v349 = sub_24381CD84();
      if (os_log_type_enabled(v348, v349))
      {
        v350 = OUTLINED_FUNCTION_42_0();
        v351 = OUTLINED_FUNCTION_54_0();
        *v350 = v372;
        v352 = v450;
        if (v450)
        {
          type metadata accessor for CFError(0);
          *&v448 = v353;
          OUTLINED_FUNCTION_15_2();
          v355 = sub_243819364(&qword_27ED930D0, v354);
          OUTLINED_FUNCTION_49_0(v448, v355);
          *v356 = v352;
          v357 = _swift_stdlib_bridgeErrorToNSError();
          v358 = v357;
        }

        else
        {
          v357 = 0;
          v358 = 0;
        }

        *(v350 + 4) = v357;
        *v351 = v358;
        _os_log_impl(&dword_2437FA000, v348, v349, "failed to create download request due to error %@", v350, 0xCu);
        sub_24380B1F4(v351, &qword_27ED92E38, &unk_24381DBD0);
        OUTLINED_FUNCTION_27_0();
        OUTLINED_FUNCTION_22_1();
      }
    }

    v359 = *(v339 + 16);
    v360 = v383;
    if (v359)
    {

      v361 = 32;
      do
      {
        if (*(v339 + v361))
        {
          OUTLINED_FUNCTION_35_0();
        }

        v361 += 8;
        --v359;
      }

      while (v359);
    }

    v362 = *(v345 + 16);
    if (v362)
    {

      v363 = v345;
      v364 = 32;
      do
      {
        if (*(v363 + v364))
        {
          OUTLINED_FUNCTION_35_0();
          v363 = v345;
        }

        v364 += 8;
        --v362;
      }

      while (v362);
    }

    sub_2437FF838(v399, v398);
    sub_2437FF838(v401, v400);

    (*v427)(v404, v433);
    (*v382)(v49, v360);

    v54 = v408;
    v43 = v360;
  }

  while (v408 != v385);
LABEL_183:
  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_2438180D4()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_24381810C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2438110FC(a1);
  *a2 = result;
  return result;
}

void *sub_243818134(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_24381823C(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EC0, &qword_24381D9E0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_243818344(a4 + v11, v8, v9 + v11, &qword_27ED92EC0, &qword_24381D9E0);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_24381823C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93118, &qword_24381DEB8);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EC0, &qword_24381D9E0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_243818344(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_0_1(), a1 + *(v10 + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v12 = OUTLINED_FUNCTION_48_1();

    MEMORY[0x2821FE828](v12);
  }

  else if (a3 != a1)
  {
    v11 = OUTLINED_FUNCTION_48_1();

    MEMORY[0x2821FE820](v11);
  }
}

unint64_t sub_243818428(uint64_t a1)
{
  sub_24381C6E4();
  sub_243819364(&qword_27ED93128, MEMORY[0x277CC9260]);
  v2 = sub_24381CB44();

  return sub_2438184C0(a1, v2);
}

unint64_t sub_2438184C0(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_24381C6E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_243819364(&qword_27ED93130, MEMORY[0x277CC9260]);
    v9 = sub_24381CB64();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_24381867C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_24380AC84(a1, a2, a3, v38);
  v34 = v38[0];
  v35 = v38[1];
  v36 = v38[2];
  v37 = v39;

  while (1)
  {
    sub_24380ADA8(&v32);
    v7 = *(&v32 + 1);
    if (!*(&v32 + 1))
    {
      sub_24380B0C4(v34);
    }

    v8 = v32;
    sub_24380B0CC(&v33, v31);
    v9 = *a5;
    v10 = OUTLINED_FUNCTION_65_0();
    v13 = sub_24380939C(v10, v11);
    v14 = *(v9 + 16);
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      break;
    }

    v17 = v12;
    if (*(v9 + 24) >= v16)
    {
      if (a4)
      {
        if (v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EF0, &unk_24381DA10);
        sub_24381CED4();
        if (v17)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_2438099C4(v16, a4 & 1);
      v18 = OUTLINED_FUNCTION_65_0();
      v20 = sub_24380939C(v18, v19);
      if ((v17 & 1) != (v21 & 1))
      {
        goto LABEL_18;
      }

      v13 = v20;
      if (v17)
      {
LABEL_10:
        v22 = *a5;
        sub_243808E78(*(*a5 + 56) + 32 * v13, v30);
        __swift_destroy_boxed_opaque_existential_1(v31);

        v23 = (*(v22 + 56) + 32 * v13);
        __swift_destroy_boxed_opaque_existential_1(v23);
        sub_24380B0CC(v30, v23);
        goto LABEL_14;
      }
    }

    v24 = *a5;
    *(*a5 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v25 = (v24[6] + 16 * v13);
    *v25 = v8;
    v25[1] = v7;
    sub_24380B0CC(v31, (v24[7] + 32 * v13));
    v26 = v24[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    v24[2] = v28;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_24381CF54();
  __break(1u);
  return result;
}

uint64_t sub_2438188A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24381C6E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93120, &qword_24381DEC0);
  v39 = v4;
  result = sub_24381CF04();
  v11 = result;
  if (!*(v9 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v11;
    return result;
  }

  v43 = v8;
  v35 = v2;
  v12 = 0;
  v13 = (v9 + 64);
  v14 = 1 << *(v9 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v9 + 64);
  v17 = (v14 + 63) >> 6;
  v36 = (v6 + 16);
  v37 = v9;
  v38 = v6;
  v40 = (v6 + 32);
  v18 = result + 64;
  if (!v16)
  {
LABEL_7:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      sub_243809FA8(0, (v33 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_12:
    v22 = v19 | (v12 << 6);
    v23 = *(v9 + 48);
    v42 = *(v38 + 72);
    v24 = v23 + v42 * v22;
    if (v39)
    {
      (*v40)(v43, v24, v5);
      v41 = *(*(v9 + 56) + 8 * v22);
    }

    else
    {
      (*v36)(v43, v24, v5);
      v41 = *(*(v9 + 56) + 8 * v22);
    }

    sub_243819364(&qword_27ED93128, MEMORY[0x277CC9260]);
    result = sub_24381CB44();
    v25 = -1 << *(v11 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v18 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = (*v40)(*(v11 + 48) + v42 * v28, v43, v5);
    *(*(v11 + 56) + 8 * v28) = v41;
    ++*(v11 + 16);
    v9 = v37;
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v18 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

char *sub_243818CC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_243818E78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_243818CE0()
{
  OUTLINED_FUNCTION_36_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_53_0();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_51_0();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v24 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = OUTLINED_FUNCTION_48_1();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_1(v19);
  v21 = *(v20 + 72);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  v25 = _swift_stdlib_malloc_size(v24);
  if (!v21)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v25 - v23 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_23;
  }

  v24[2] = v15;
  v24[3] = 2 * ((v25 - v23) / v21);
LABEL_18:
  v27 = OUTLINED_FUNCTION_48_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_37_1();
  if (v10)
  {
    sub_243818344(v8 + v29, v15, v24 + v29, v6, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_33_0();
}

char *sub_243818E78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93100, &qword_24381DE98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

_OWORD *sub_243818F74(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_24380939C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EF0, &unk_24381DA10);
  if ((sub_24381CEC4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_24380939C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_24381CF54();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = (v16[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_1(v17);

    return sub_24380B0CC(a1, v17);
  }

  else
  {
    sub_2438190BC(v12, a2, a3, a1, v16);
  }
}

_OWORD *sub_2438190BC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24380B0CC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_243819190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_24381C6E4();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_2438191F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_24381C6E4();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

void sub_243819250(uint64_t a1)
{
  sub_24381C6E4();
  if (v1 <= 0x3F)
  {
    sub_2438192E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2438192E4()
{
  if (!qword_27ED93050)
  {
    v0 = sub_24381CD64();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED93050);
    }
  }
}

uint64_t sub_24381933C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2437FF838(result, a2);
  }

  return result;
}

uint64_t sub_243819364(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_45_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2438193A8()
{
  OUTLINED_FUNCTION_36_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93060, &unk_24381DD90);
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93070, &unk_24381DDA8);
  OUTLINED_FUNCTION_9();
  v9 = v8;
  v10 = (((v6 + 11) & 0xFFFFFFFFFFFFFFF8) + *(v8 + 80) + 32) & ~*(v8 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_243819510()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93060, &unk_24381DD90);
  OUTLINED_FUNCTION_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93070, &unk_24381DDA8);
  OUTLINED_FUNCTION_38(v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2437FB6F4;

  return sub_2438138B0();
}

uint64_t sub_243819694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Downloader.AssetDownloadResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2438196F8(uint64_t a1)
{
  v2 = type metadata accessor for Downloader.AssetDownloadResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243819754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Downloader.AssetDownloadResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2438197B8(uint64_t a1, uint64_t a2)
{
  sub_24381CE54();
  MEMORY[0x245D40C80](3943982, 0xE300000000000000);
  sub_24381CE54();
  return 0;
}

uint64_t sub_243819864(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24380AF70(result, a2);
  }

  return result;
}

uint64_t sub_243819878(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_71_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_2438198C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_71_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 32))(v4, v5);
  return v4;
}

void sub_243819918(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void OUTLINED_FUNCTION_20_1()
{

  JUMPOUT(0x245D41570);
}

void OUTLINED_FUNCTION_22_1()
{

  JUMPOUT(0x245D41570);
}

uint64_t OUTLINED_FUNCTION_33_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_35_1(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

char *OUTLINED_FUNCTION_46_1@<X0>(uint64_t a1@<X3>, unint64_t a2@<X8>)
{

  return sub_243808200(0x7FFFFFFFFFFFFFFFLL, 1, v2, a1, v3, v4, a2);
}

uint64_t OUTLINED_FUNCTION_54_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_55_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

double OUTLINED_FUNCTION_56_1(uint64_t a1, uint64_t a2)
{

  return sub_2438033D0(a1, a2, v2, (v3 - 112));
}

_OWORD *OUTLINED_FUNCTION_69()
{
  *(v0 + 824) = v2;
  *(v0 + 832) = v1;

  return sub_24380B0CC((v0 + 824), (v0 + 888));
}

void OUTLINED_FUNCTION_70(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_71_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

BOOL OUTLINED_FUNCTION_72_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_243819CB4(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_243819CF4(a1);
  return v2;
}

uint64_t sub_243819CF4(uint64_t a1)
{
  v3 = swift_slowAlloc();
  *(v1 + 16) = v3;
  *(v1 + 24) = a1;
  *v3 = v1;

  return v1;
}

uint64_t sub_243819D40()
{
  result = *(v0 + 16);
  if (result)
  {
    MEMORY[0x245D41570](result, -1, -1);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243819D78()
{
  sub_243819D40();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *sub_243819DC0(void *result)
{
  if (result)
  {
    v1 = *(**result + 104);

    v1(v2);
  }

  return result;
}

void sub_243819E30(void *a1, void *a2)
{
  v3 = a2;
  sub_243819DC0(a1);
}

uint64_t sub_243819EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E90, &unk_24381D9B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_243819F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC17CloudAssetsDaemon20UploadRequestContext_storageReferenceContinuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E98, &unk_24381DF30);
  __swift_storeEnumTagSinglePayload(v3 + v7, 1, 1, v8);
  OUTLINED_FUNCTION_2_3(v3 + v7, v14);
  sub_24381A094(a2, v3 + v7);
  swift_endAccess();
  v9 = OBJC_IVAR____TtC17CloudAssetsDaemon20UploadRequestContext_trackingNumberContinutation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E88, &unk_24381DF40);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v3 + v9, a3, v10);
  v12 = sub_243819CF4(a1);
  (*(v11 + 8))(a3, v10);
  sub_24381A104(a2);
  return v12;
}

uint64_t sub_24381A094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E90, &unk_24381D9B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24381A104(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E90, &unk_24381D9B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24381A16C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E90, &unk_24381D9B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2 - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E98, &unk_24381DF30);
  v4 = OUTLINED_FUNCTION_1_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = OBJC_IVAR____TtC17CloudAssetsDaemon20UploadRequestContext_storageReferenceContinuation;
  OUTLINED_FUNCTION_2_3(v0 + OBJC_IVAR____TtC17CloudAssetsDaemon20UploadRequestContext_storageReferenceContinuation, v11);
  sub_243819EA0(v3, v0 + v8);
  return swift_endAccess();
}

uint64_t sub_24381A2AC()
{
  sub_24381A104(v0 + OBJC_IVAR____TtC17CloudAssetsDaemon20UploadRequestContext_storageReferenceContinuation);
  v1 = OBJC_IVAR____TtC17CloudAssetsDaemon20UploadRequestContext_trackingNumberContinutation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E88, &unk_24381DF40);
  OUTLINED_FUNCTION_0_5();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_24381A324()
{
  v0 = sub_243819D40();
  v1 = OBJC_IVAR____TtC17CloudAssetsDaemon20UploadRequestContext_storageReferenceContinuation;

  sub_24381A104(v2 + v1);
  v3 = OBJC_IVAR____TtC17CloudAssetsDaemon20UploadRequestContext_trackingNumberContinutation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92E88, &unk_24381DF40);
  OUTLINED_FUNCTION_0_5();
  (*(v4 + 8))(v0 + v3);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for UploadRequestContext(uint64_t a1)
{
  result = qword_27ED93460;
  if (!qword_27ED93460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24381A438(uint64_t a1)
{
  sub_24381A504(319);
  if (v1 <= 0x3F)
  {
    sub_24381A568(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24381A504(uint64_t a1)
{
  if (!qword_27ED93150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED92E98, &unk_24381DF30);
    v1 = sub_24381CDD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED93150);
    }
  }
}

void sub_24381A568(uint64_t a1)
{
  if (!qword_27ED93158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED92DE0, &unk_24381D950);
    v1 = sub_24381CD24();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED93158);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

unint64_t sub_24381A658()
{
  sub_24381CE34();

  MEMORY[0x245D40C80](*(v0 + 16), *(v0 + 24));
  return 0xD000000000000014;
}

uint64_t sub_24381A6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_24381A730(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_24381A730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v7 = OBJC_IVAR____TtC17CloudAssetsDaemon13TenantContext_workingDirectory;
  sub_24381C6E4();
  OUTLINED_FUNCTION_0_1();
  (*(v8 + 32))(v4 + v7, a3);
  *(v4 + OBJC_IVAR____TtC17CloudAssetsDaemon13TenantContext_requestTracker) = a4;
  return v4;
}

void *sub_24381A7AC()
{
  v1 = swift_slowAlloc();
  v2 = swift_slowAlloc();
  *v2 = v0;
  type metadata accessor for Registerer();

  v3 = sub_24380C834();
  type metadata accessor for Downloader();
  v4 = sub_243811130();
  v5 = sub_243811148();
  type metadata accessor for Uploader();
  v6 = sub_243802840();
  v7 = sub_243803490();
  type metadata accessor for RequestContext();
  v8 = sub_243819DAC();
  *v1 = 9;
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[6] = v7;
  v1[7] = v8;
  v1[9] = 0;
  v1[10] = 0;
  v1[8] = 0;
  return v1;
}

uint64_t sub_24381A88C()
{

  v1 = OBJC_IVAR____TtC17CloudAssetsDaemon13TenantContext_workingDirectory;
  sub_24381C6E4();
  OUTLINED_FUNCTION_0_1();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_24381A8FC()
{
  sub_24381A88C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for TenantContext(uint64_t a1)
{
  result = qword_27ED93470;
  if (!qword_27ED93470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24381A9A8(uint64_t a1)
{
  result = sub_24381C6E4();
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

uint64_t type metadata accessor for ProcessorFactory.TenantDomain(uint64_t a1)
{
  result = qword_27ED93600;
  if (!qword_27ED93600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24381AA9C(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_24381CF34() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ProcessorFactory.TenantDomain(0);

  return sub_24381C6B4();
}

uint64_t sub_24381AB18(uint64_t a1)
{
  sub_24381CBE4();
  type metadata accessor for ProcessorFactory.TenantDomain(0);
  sub_24381C6E4();
  OUTLINED_FUNCTION_0_6();
  sub_24381B694(v1, v2, MEMORY[0x277CC9270]);
  return sub_24381CB54();
}

uint64_t sub_24381AB98()
{
  sub_24381CFC4();
  sub_24381CBE4();
  type metadata accessor for ProcessorFactory.TenantDomain(0);
  sub_24381C6E4();
  OUTLINED_FUNCTION_0_6();
  v2 = sub_24381B694(v0, v1, MEMORY[0x277CC9270]);
  OUTLINED_FUNCTION_2_4(v2, v3);
  return sub_24381CFE4();
}

uint64_t sub_24381AC2C(uint64_t a1)
{
  sub_24381CFC4();
  sub_24381CBE4();
  sub_24381C6E4();
  OUTLINED_FUNCTION_0_6();
  v3 = sub_24381B694(v1, v2, MEMORY[0x277CC9270]);
  OUTLINED_FUNCTION_2_4(v3, v4);
  return sub_24381CFE4();
}

uint64_t sub_24381ACEC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t sub_24381AD88()
{
  v0 = swift_allocObject();
  sub_24381ADC0();
  return v0;
}

uint64_t sub_24381ADC0()
{
  swift_defaultActor_initialize();
  type metadata accessor for RequestTracker();
  *(v0 + 112) = sub_2437FFFB4();
  type metadata accessor for ProcessorFactory.TenantDomain(0);
  type metadata accessor for Engine();
  OUTLINED_FUNCTION_1_2();
  sub_24381B694(v1, v2, &unk_24381DFB0);
  *(v0 + 120) = sub_24381CB24();
  return v0;
}

uint64_t sub_24381AE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a1;
  v38 = a5;
  v37[0] = a6;
  v37[1] = a4;
  v40 = a3;
  v41 = a2;
  v8 = type metadata accessor for ProcessorFactory.TenantDomain(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = (v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_24381C6E4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TenantContext(0);
  v16 = *(v13 + 16);
  v16(v15, a3, v12);
  v17 = *(v6 + 112);
  v18 = v41;

  v19 = v42;
  sub_24381A6C8(v42, v18, v15, v17);
  v20 = *(v9 + 28);
  v21 = v39;
  v16(v11 + v20, v40, v12);
  *v11 = v19;
  v11[1] = v18;
  v22 = *(*v21 + 104);

  v24 = v22(v23);
  v25 = sub_24381B164(v11, v24);

  if (v25)
  {
    v26 = v25;
LABEL_3:
    v27 = *(v38 + 8);

    v27(v26);

    return sub_24381B1B4(v11);
  }

  type metadata accessor for Engine();

  v30 = v43;
  v31 = sub_24381BB08(v29);
  if (!v30)
  {
    v26 = v31;
    v32 = *(*v21 + 120);
    swift_retain_n();
    v33 = v32(v44);
    v35 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *v35;
    sub_24381B4D8(v26, v11, isUniquelyReferenced_nonNull_native);
    *v35 = v45;
    v33(v44, 0);
    goto LABEL_3;
  }

  sub_24381B1B4(v11);
}

uint64_t sub_24381B164(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_24381B294(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24381B1B4(uint64_t a1)
{
  v2 = type metadata accessor for ProcessorFactory.TenantDomain(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24381B210()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24381B240()
{
  sub_24381B210();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_24381B294(uint64_t *a1)
{
  sub_24381CFC4();
  sub_24381CBE4();
  type metadata accessor for ProcessorFactory.TenantDomain(0);
  sub_24381C6E4();
  sub_24381B694(&qword_27ED93128, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_24381CB54();
  v2 = sub_24381CFE4();

  return sub_24381B360(a1, v2);
}

unint64_t sub_24381B360(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for ProcessorFactory.TenantDomain(0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = a1[1];
    v14 = *(v6 + 72);
    while (1)
    {
      sub_24381B8AC(*(v2 + 48) + v14 * v10, v8);
      v15 = *v8 == v12 && v8[1] == v13;
      if (v15 || (sub_24381CF34()) && (sub_24381C6B4())
      {
        break;
      }

      sub_24381B1B4(v8);
      v10 = (v10 + 1) & v11;
      if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    sub_24381B1B4(v8);
  }

  return v10;
}

uint64_t sub_24381B4D8(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v7 = type metadata accessor for ProcessorFactory.TenantDomain(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = sub_24381B294(a2);
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93170, &unk_24381E070);
  if ((sub_24381CEC4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_24381B294(a2);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_11:
    result = sub_24381CF54();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v4;
  if (v14)
  {
    *(v17[7] + 8 * v13) = a1;
  }

  else
  {
    sub_24381B8AC(a2, v9);
    return sub_24381B910(v13, v9, a1, v17);
  }
}

uint64_t sub_24381B694(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24381B714(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24381C6E4();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_24381B7B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24381C6E4();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24381B830(uint64_t a1)
{
  result = sub_24381C6E4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24381B8AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessorFactory.TenantDomain(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24381B910(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ProcessorFactory.TenantDomain(0);
  result = sub_24381B9B0(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_24381B9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessorFactory.TenantDomain(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1, uint64_t a2, ...)
{

  return sub_24381CB54();
}

uint64_t sub_24381BA64()
{
  v0 = sub_24381CA64();
  __swift_allocate_value_buffer(v0, qword_27ED93618);
  __swift_project_value_buffer(v0, qword_27ED93618);
  sub_24381C794();
  type metadata accessor for Engine();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED931A0, &unk_24381E0F0);
  sub_24381CBB4();
  return sub_24381CA54();
}

uint64_t sub_24381BB08(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24381BB58(a1);
  return v2;
}

void sub_24381BB58(uint64_t a1)
{
  v3 = v1;
  v51 = sub_24381CDB4();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_42();
  v49 = v6 - v5;
  v48 = sub_24381CDA4();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_42();
  v7 = sub_24381CAE4();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_42();
  if (_MergedGlobals_3 != -1)
  {
    swift_once();
  }

  v8 = sub_24381CA64();
  __swift_project_value_buffer(v8, qword_27ED93618);

  v9 = sub_24381CA44();
  v10 = sub_24381CD74();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v53[0] = v12;
    *v11 = 136315138;
    v54 = a1;
    type metadata accessor for TenantContext(0);

    v13 = sub_24381CBB4();
    v15 = sub_243808908(v13, v14, v53);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2437FA000, v9, v10, "creating mmcs engine for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_1_3();
    MEMORY[0x245D41570]();
    OUTLINED_FUNCTION_1_3();
    MEMORY[0x245D41570]();
  }

  v3[2] = sub_24381A7AC();
  v3[3] = a1;

  v16 = objc_opt_self();
  v17 = [v16 defaultManager];
  sub_24381C6C4();
  v18 = sub_24381CB74();

  v19 = [v17 fileExistsAtPath_];

  if (v19)
  {
    v20 = [v16 defaultManager];
    v21 = sub_24381C6A4();
    v53[0] = 0;
    v22 = [v20 removeItemAtURL:v21 error:v53];

    v23 = v53[0];
    if (!v22)
    {
      goto LABEL_17;
    }

    v24 = v53[0];
  }

  v25 = [v16 defaultManager];
  v26 = sub_24381C6A4();
  v53[0] = 0;
  v27 = [v25 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:v53];

  v23 = v53[0];
  if (v27)
  {
    v28 = v53[0];
    if (!v2)
    {
      goto LABEL_10;
    }

LABEL_18:

    swift_deallocPartialClassInstance();
    return;
  }

LABEL_17:
  v46 = v23;
  v47 = sub_24381C684();

  swift_willThrow();
  if (v47)
  {
    goto LABEL_18;
  }

LABEL_10:
  sub_24381C360();
  sub_24381CAD4();
  v53[0] = MEMORY[0x277D84F90];
  sub_24381C3A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED93188, &qword_24381E080);
  sub_24381C3FC();
  sub_24381CDF4();
  (*(v50 + 104))(v49, *MEMORY[0x277D85260], v51);
  v29 = sub_24381CDC4();
  v30 = sub_24381C6A4();
  v52 = sub_24381CB74();
  sub_24381A658();
  v31 = sub_24381CB74();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED92EB0, &unk_24381D9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24381DAA0;
  if (!*MEMORY[0x277D25448])
  {
    __break(1u);
    goto LABEL_20;
  }

  *(inited + 32) = sub_24381CB84();
  *(inited + 40) = v33;
  v34 = MEMORY[0x277D839B0];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  if (!*MEMORY[0x277D25450])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(inited + 80) = sub_24381CB84();
  *(inited + 88) = v35;
  *(inited + 120) = v34;
  *(inited + 96) = 0;
  if (!*MEMORY[0x277D25440])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(inited + 128) = sub_24381CB84();
  *(inited + 136) = v36;
  *(inited + 168) = v34;
  *(inited + 144) = 1;
  sub_24381CB24();
  v37 = sub_24381CAF4();

  v38 = MMCSEngineCreateWithTargetDispatchQueue();

  if (!v38)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v3[4] = v38;

  v39 = sub_24381CA44();
  v40 = sub_24381CD74();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v53[0] = v42;
    *v41 = 136315138;
    v54 = a1;
    type metadata accessor for TenantContext(0);

    v43 = sub_24381CBB4();
    v45 = sub_243808908(v43, v44, v53);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_2437FA000, v39, v40, "created mmcs engine for %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_1_3();
    MEMORY[0x245D41570]();
    OUTLINED_FUNCTION_1_3();
    MEMORY[0x245D41570]();
  }
}

unint64_t sub_24381C360()
{
  result = qword_27ED93178;
  if (!qword_27ED93178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED93178);
  }

  return result;
}

unint64_t sub_24381C3A4()
{
  result = qword_27ED93180;
  if (!qword_27ED93180)
  {
    sub_24381CDA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED93180);
  }

  return result;
}

unint64_t sub_24381C3FC()
{
  result = qword_27ED93190;
  if (!qword_27ED93190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED93188, &qword_24381E080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED93190);
  }

  return result;
}

uint64_t sub_24381C460()
{
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x245D41570]();

  return v0;
}

uint64_t sub_24381C48C()
{
  sub_24381C460();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24381C4F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_24381C54C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}