uint64_t sub_226B83534(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226AD827C;

  return sub_226B8211C(a1, v4, v5, v7, v6);
}

uint64_t sub_226B83618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226B83688(uint64_t a1)
{
  v1 = sub_226D6D1AC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_226B836E0(void *a1, void *a2)
{
  v6 = 0;
  sub_226AE532C(a1, v5);
  sub_226D6704C();
  sub_226D6701C();
  sub_226D6E39C();
  v6 = 0;
  sub_226AE532C(a2, v5);
  _s21NotificationSchedulerVMa(0);
  sub_226D6701C();
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_226B837F4(void (**a1)(uint64_t, char *, uint64_t), void *a2, uint64_t a3)
{
  v229 = a3;
  v235 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  MEMORY[0x28223BE20](v4 - 8);
  v212 = &v202 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  MEMORY[0x28223BE20](v6 - 8);
  v211 = &v202 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  MEMORY[0x28223BE20](v8 - 8);
  v210 = &v202 - v9;
  v218 = _s21NotificationFormatterV16FulfillmentInputVMa(0);
  MEMORY[0x28223BE20](v218);
  v213 = (&v202 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6688, &unk_226D718A0);
  MEMORY[0x28223BE20](v11 - 8);
  v223 = &v202 - v12;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A30, &qword_226D738B0);
  v227 = *(v220 - 8);
  MEMORY[0x28223BE20](v220 - 8);
  v234 = &v202 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v226 = &v202 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F20, &qword_226D738B8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v202 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v202 - v20;
  v207 = sub_226D6D52C();
  v225 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v206 = &v202 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_226D6D1AC();
  v209 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v204 = &v202 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = _s34NotificationOrderStatusFormatStyleVMa(0);
  MEMORY[0x28223BE20](v24 - 8);
  v228 = &v202 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_226D6D71C();
  MEMORY[0x28223BE20](v26 - 8);
  v217 = &v202 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_226D6D6DC();
  MEMORY[0x28223BE20](v28 - 8);
  v216 = &v202 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_226D6D5DC();
  MEMORY[0x28223BE20](v30 - 8);
  v215 = &v202 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = _s21NotificationFormatterVMa(0);
  MEMORY[0x28223BE20](v32 - 8);
  v214 = &v202 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = _s21NotificationFormatterV16OrderStatusInputVMa(0);
  MEMORY[0x28223BE20](v224);
  v230 = &v202 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_226D677FC();
  v237 = *(v35 - 8);
  v238 = v35;
  MEMORY[0x28223BE20](v35);
  v231 = &v202 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6690, &qword_226D74720);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v202 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71F0, &qword_226D74728);
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v236 = &v202 - v42;
  v43 = sub_226D6D4AC();
  v44 = *(v43 - 8);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v202 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = [a2 notificationsEnabled];
  v232 = v18;
  v233 = v21;
  if (v48)
  {
    v49 = [a2 isMarkedAsComplete];
  }

  else
  {
    v49 = 1;
  }

  _s21NotificationSchedulerVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
  sub_226D66FEC();
  result = MEMORY[0x277D84F90];
  if (v240 & 1) != 0 || (v49)
  {
    return result;
  }

  sub_226D66FEC();
  v219 = a2;
  if (v240)
  {
    v51 = v220;
    v52 = v237;
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v53 = sub_226D6E07C();
    __swift_project_value_buffer(v53, qword_28105F6A8);
    v54 = sub_226D6E05C();
    v55 = sub_226D6E9EC();
    v56 = os_log_type_enabled(v54, v55);
    v58 = v235;
    v57 = v236;
    if (v56)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_226AB4000, v54, v55, "allowOldExtractedOrderNotifications overriden, scheduling notifications for old emails as well.", v59, 2u);
      MEMORY[0x22AA8BEE0](v59, -1, -1);
    }

    v60 = v238;
  }

  else
  {
    v61 = [a2 orderContent];
    v62 = [v61 orderUpdateDate];

    sub_226D6D45C();
    sub_226D6D3BC();
    v63 = v220;
    v52 = v237;
    v60 = v238;
    if (v64 > 604800.0)
    {
      v65 = sub_226D6D48C();
      v67 = v66;
      if (qword_28105F6A0 != -1)
      {
        swift_once();
      }

      v68 = sub_226D6E07C();
      __swift_project_value_buffer(v68, qword_28105F6A8);

      v69 = sub_226D6E05C();
      v70 = sub_226D6E9CC();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v240 = v72;
        *v71 = 136315138;
        v73 = sub_226AC4530(v65, v67, &v240);

        *(v71 + 4) = v73;
        _os_log_impl(&dword_226AB4000, v69, v70, "Extracted order update date %s is older than 7 days, skipping scheduling notifications.", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v72);
        MEMORY[0x22AA8BEE0](v72, -1, -1);
        MEMORY[0x22AA8BEE0](v71, -1, -1);
      }

      else
      {
      }

      (*(v44 + 8))(v47, v43);
      return MEMORY[0x277D84F90];
    }

    (*(v44 + 8))(v47, v43);
    v58 = v235;
    v57 = v236;
    v51 = v63;
  }

  v240 = MEMORY[0x277D84F90];
  v74 = _s7ChangesVMa(0);
  (*(v41 + 16))(v57, v58 + v74[5], v40);
  v75 = (*(v41 + 88))(v57, v40);
  LODWORD(v229) = *MEMORY[0x277CC8590];
  if (v75 != v229)
  {
    v81 = v234;
    if (v75 != *MEMORY[0x277CC8598])
    {
      result = sub_226D6F0AC();
      __break(1u);
      return result;
    }

    v208 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v239 = v74;
  (*(v41 + 96))(v57, v40);
  v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7200, &qword_226D74738) + 48);
  v77 = *(v52 + 48);
  v78 = v77(v57, 1, v60);
  v79 = v231;
  if (v78 != 1 || v77(v76 + v57, 1, v60) == 1)
  {
    goto LABEL_29;
  }

  sub_226B85788(v76 + v57, v39);
  if ((*(v52 + 88))(v39, v60) != *MEMORY[0x277CC6DE0])
  {
    (*(v52 + 8))(v39, v60);
    goto LABEL_29;
  }

  sub_226D208E8();
  if ((v80 & 1) == 0)
  {
LABEL_29:
    v222 = v76;
    v82 = v219;
    v83 = [v219 orderContent];
    v84 = [v83 merchantDisplayName];

    v85 = sub_226D6E39C();
    v87 = v86;

    v88 = [v82 orderContent];
    sub_226D6B2EC();

    v89 = v230;
    (*(v52 + 16))(v230 + *(v224 + 20), v79, v60);
    *v89 = v85;
    *(v89 + 8) = v87;
    sub_226D6D56C();
    sub_226D6D66C();
    sub_226D6D70C();
    v90 = v214;
    sub_226D69B5C();
    v91 = sub_226D69B8C();
    v92 = v228;
    (*(*(v91 - 8) + 16))(v228, v90, v91);
    sub_226C4DB20(v89);
    v94 = v93;
    sub_226B85728(v92, _s34NotificationOrderStatusFormatStyleVMa);
    sub_226B85728(v90, _s21NotificationFormatterVMa);
    if (v94)
    {
      v95 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
      v96 = sub_226D6E36C();
      [v95 setTitle_];

      v97 = sub_226D6E36C();
      [v95 setBody_];

      [v95 setInterruptionLevel_];
      v98 = [v82 trackedOrderIdentifier];
      [v95 setThreadIdentifier_];

      v99 = [v82 trackedOrderIdentifier];
      sub_226D6E39C();

      v100 = v204;
      sub_226D66DAC();

      v101 = sub_226D6D0DC();
      v209[1](v100, v205);
      [v95 setDefaultActionURL_];

      v102 = v206;
      sub_226D6D51C();
      sub_226D6D4CC();
      (*(v225 + 8))(v102, v207);
      v103 = v95;
      v104 = sub_226D6E36C();

      v105 = [objc_opt_self() requestWithIdentifier:v104 content:v103 trigger:0];

      v106 = v105;
      MEMORY[0x22AA8A610]();
      if (*((v240 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v240 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_226D6E61C();
      }

      sub_226D6E65C();

      sub_226B85728(v230, _s21NotificationFormatterV16OrderStatusInputVMa);
      (*(v237 + 8))(v231, v238);
      v208 = v240;
      v58 = v235;
    }

    else
    {
      sub_226B85728(v89, _s21NotificationFormatterV16OrderStatusInputVMa);
      (*(v52 + 8))(v231, v238);
      v208 = MEMORY[0x277D84F90];
    }

    v51 = v220;
    v57 = v236;
    v74 = v239;
    v76 = v222;
    goto LABEL_35;
  }

  v208 = MEMORY[0x277D84F90];
  v74 = v239;
LABEL_35:
  sub_226AC47B0(v76 + v57, &qword_27D7A6690, &qword_226D74720);
  sub_226AC47B0(v57, &qword_27D7A6690, &qword_226D74720);
  v81 = v234;
LABEL_36:
  v107 = *(v58 + v74[6]);
  v108 = *(v107 + 64);
  v231 = (v107 + 64);
  v109 = 1 << *(v107 + 32);
  v110 = -1;
  if (v109 < 64)
  {
    v110 = ~(-1 << v109);
  }

  v237 = v110 & v108;
  v230 = (v109 + 63) >> 6;
  v224 = v227 + 16;
  v235 = (v227 + 32);
  v228 = (v227 + 88);
  v221 = (v227 + 96);
  v222 = (v227 + 8);
  ++v209;
  v203 = (v225 + 8);
  v225 = v107;

  v111 = 0;
LABEL_39:
  v113 = v230;
  for (i = v231; ; i = v231)
  {
    v114 = v237;
    if (!v237)
    {
      if (v113 <= v111 + 1)
      {
        v117 = v111 + 1;
      }

      else
      {
        v117 = v113;
      }

      v118 = v117 - 1;
      while (1)
      {
        v116 = v111 + 1;
        if (__OFADD__(v111, 1))
        {
          break;
        }

        if (v116 >= v113)
        {
          v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F28, &unk_226D738C0);
          v127 = v232;
          (*(*(v148 - 8) + 56))(v232, 1, 1, v148);
          v237 = 0;
          v111 = v118;
          goto LABEL_53;
        }

        v114 = *&i[8 * v116];
        ++v111;
        if (v114)
        {
          v115 = v51;
          v111 = v116;
          goto LABEL_52;
        }
      }

      __break(1u);
      goto LABEL_108;
    }

    v115 = v51;
    v116 = v111;
LABEL_52:
    v237 = (v114 - 1) & v114;
    v119 = __clz(__rbit64(v114)) | (v116 << 6);
    v120 = v226;
    v121 = (*(v225 + 48) + 16 * v119);
    v123 = *v121;
    v122 = v121[1];
    v124 = v227;
    (*(v227 + 16))(v226, *(v225 + 56) + *(v227 + 72) * v119, v115);
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F28, &unk_226D738C0);
    v126 = *(v125 + 48);
    v127 = v232;
    *v232 = v123;
    *(v127 + 8) = v122;
    v128 = *(v124 + 32);
    v51 = v115;
    v128(v127 + v126, v120, v115);
    (*(*(v125 - 8) + 56))(v127, 0, 1, v125);

    v81 = v234;
LABEL_53:
    v74 = v233;
    sub_226AFD80C(v127, v233, &qword_27D7A6F20, &qword_226D738B8);
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F28, &unk_226D738C0);
    if ((*(*(v129 - 8) + 48))(v74, 1, v129) == 1)
    {
      break;
    }

    v130 = *(v74 + 1);
    v236 = *v74;
    (*v235)(v81, v74 + *(v129 + 48), v51);
    v131 = (*v228)(v81, v51);
    if (v131 != v229)
    {

      (*v222)(v81, v51);
      goto LABEL_41;
    }

    (*v221)(v81, v51);
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A71F8, &qword_226D74730);
    v133 = v223;
    v74 = &unk_226D718A0;
    sub_226AFD80C(v81 + *(v132 + 48), v223, &qword_27D7A6688, &unk_226D718A0);
    sub_226AC47B0(v81, &qword_27D7A6688, &unk_226D718A0);
    v134 = _s7ChangesV11FulfillmentVMa(0);
    if ((*(*(v134 - 8) + 48))(v133, 1, v134) == 1)
    {

      sub_226AC47B0(v133, &qword_27D7A6688, &unk_226D718A0);
      goto LABEL_41;
    }

    v135 = [v219 orderContent];
    v136 = sub_226D6B30C();

    if (!(v136 >> 62))
    {
      v137 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v137)
      {
        goto LABEL_59;
      }

      goto LABEL_84;
    }

    v137 = sub_226D6EDFC();
    if (v137)
    {
LABEL_59:
      v138 = 0;
      v238 = v136 & 0xC000000000000001;
      v239 = v130;
      while (1)
      {
        if (v238)
        {
          v139 = MEMORY[0x22AA8AFD0](v138, v136);
        }

        else
        {
          if (v138 >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_109;
          }

          v139 = *(v136 + 8 * v138 + 32);
        }

        v140 = v139;
        v141 = v138 + 1;
        if (__OFADD__(v138, 1))
        {
          break;
        }

        v142 = [v139 trackingNumber];
        if (v142)
        {
          v143 = v142;
          v144 = sub_226D6E39C();
          v74 = v145;

          if (v239)
          {
            if (v144 == v236 && v239 == v74)
            {

LABEL_79:

              v149 = v140;
              v150 = [v219 orderContent];
              v151 = v218;
              v152 = *(v218 + 24);
              v153 = sub_226D6760C();
              v74 = v213;
              (*(*(v153 - 8) + 56))(v213 + v152, 1, 1, v153);
              v154 = *(v151 + 28);
              v238 = v154;
              v155 = sub_226D6762C();
              (*(*(v155 - 8) + 56))(v74 + v154, 1, 1, v155);
              v156 = *(v151 + 32);
              v157 = sub_226D6763C();
              (*(*(v157 - 8) + 56))(v74 + v156, 1, 1, v157);
              v158 = v149;
              v159 = [v150 merchantDisplayName];
              v160 = sub_226D6E39C();
              v162 = v161;

              *v74 = v160;
              *(v74 + 1) = v162;
              v163 = v150;
              sub_226D6C6AC();
              v164 = v210;
              sub_226D6C66C();
              sub_226AFD680(v164, v74 + v152, &qword_27D7A6678, &unk_226D71890);
              v165 = v211;
              sub_226D6C67C();
              sub_226AFD680(v165, v74 + v238, &qword_27D7A6670, &qword_226D71888);
              v166 = v212;
              v167 = v158;
              sub_226D6C68C();
              sub_226AFD680(v166, v74 + v156, &qword_27D7A6680, &unk_226D74710);
              v168 = sub_226D6B30C();
              if (v168 >> 62)
              {
                v169 = sub_226D6EDFC();
              }

              else
              {
                v169 = *((v168 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v170 = v167;

              *(v74 + *(v218 + 36)) = v169 > 1;
              sub_226D6D56C();
              sub_226D6D66C();
              sub_226D6D70C();
              v171 = v214;
              sub_226D69B5C();
              sub_226C4B068(v74);
              v173 = v172;
              v175 = v174;
              sub_226B85728(v171, _s21NotificationFormatterVMa);
              if (!v173)
              {
                sub_226B85728(v74, _s21NotificationFormatterV16FulfillmentInputVMa);

                v176 = v223;
                goto LABEL_85;
              }

              v177 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
              v178 = sub_226D6E36C();
              [v177 setTitle_];

              v179 = sub_226D6E36C();
              [v177 setBody_];

              [v177 setInterruptionLevel_];
              v180 = v219;
              v181 = [v219 trackedOrderIdentifier];
              [v177 setThreadIdentifier_];

              v182 = [v180 trackedOrderIdentifier];
              sub_226D6E39C();

              v238 = v175;
              v183 = v204;
              sub_226D66DAC();

              v184 = sub_226D6D0DC();
              (*v209)(v183, v205);
              [v177 setDefaultActionURL_];

              v185 = v206;
              sub_226D6D51C();
              sub_226D6D4CC();
              (*v203)(v185, v207);
              v186 = v177;
              v187 = sub_226D6E36C();

              v188 = [objc_opt_self() requestWithIdentifier:v187 content:v186 trigger:0];

              v74 = v188;
              MEMORY[0x22AA8A610]();
              if (*((v240 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v240 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_226D6E61C();
              }

              sub_226D6E65C();

              sub_226B85728(v213, _s21NotificationFormatterV16FulfillmentInputVMa);
              v208 = v240;
              sub_226AC47B0(v223, &qword_27D7A6688, &unk_226D718A0);
              v51 = v220;
              v81 = v234;
              goto LABEL_39;
            }

            v147 = sub_226D6F21C();

            if (v147)
            {
              goto LABEL_79;
            }
          }

          else
          {
          }
        }

        else if (!v239)
        {
          goto LABEL_79;
        }

        ++v138;
        if (v141 == v137)
        {
          goto LABEL_84;
        }
      }

LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

LABEL_84:

    v176 = v223;
LABEL_85:
    sub_226AC47B0(v176, &qword_27D7A6688, &unk_226D718A0);
    v51 = v220;
    v81 = v234;
LABEL_41:
    v113 = v230;
  }

  v74 = (v208 >> 62);
  if (!(v208 >> 62))
  {
    v189 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_92;
  }

LABEL_110:
  v189 = sub_226D6EDFC();
LABEL_92:
  if (v189)
  {
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v190 = sub_226D6E07C();
    __swift_project_value_buffer(v190, qword_28105F6A8);
    v191 = v208;

    v192 = sub_226D6E05C();
    v193 = sub_226D6E9EC();
    if (os_log_type_enabled(v192, v193))
    {
      v194 = swift_slowAlloc();
      *v194 = 134217984;
      v191 = v208;
      if (v74)
      {
        v201 = v194;
        v195 = sub_226D6EDFC();
        v194 = v201;
      }

      else
      {
        v195 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v194 + 4) = v195;
      v196 = v194;

      _os_log_impl(&dword_226AB4000, v192, v193, "Scheduled %ld notifications", v196, 0xCu);
      MEMORY[0x22AA8BEE0](v196, -1, -1);
    }

    else
    {
    }

    return v191;
  }

  else
  {
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v197 = sub_226D6E07C();
    __swift_project_value_buffer(v197, qword_28105F6A8);
    v198 = sub_226D6E05C();
    v199 = sub_226D6E9EC();
    if (os_log_type_enabled(v198, v199))
    {
      v200 = swift_slowAlloc();
      *v200 = 0;
      _os_log_impl(&dword_226AB4000, v198, v199, "Order changes did not yield any notifications", v200, 2u);
      MEMORY[0x22AA8BEE0](v200, -1, -1);
    }

    return v208;
  }
}

uint64_t _s21NotificationSchedulerVMa(uint64_t a1)
{
  result = qword_27D7A7208;
  if (!qword_27D7A7208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226B85728(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226B85788(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6690, &qword_226D74720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_226B85820(uint64_t a1)
{
  sub_226B8588C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_226B8588C()
{
  if (!qword_27D7A6758)
  {
    v0 = sub_226D6702C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A6758);
    }
  }
}

void sub_226B858EC(void *a1)
{
  v94[1] = *MEMORY[0x277D85DE8];
  v2 = sub_226D6D4AC();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6B9BC();
  v89 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = &v61 - v9;
  MEMORY[0x28223BE20](v10);
  v84 = &v61 - v11;
  v12 = sub_226D6D52C();
  MEMORY[0x28223BE20](v12 - 8);
  v83 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_226D673EC();
  v87 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v75 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v92 = &v61 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7218, &unk_226D74820);
  MEMORY[0x28223BE20](v18 - 8);
  v86 = &v61 - v19;
  v20 = sub_226D68CBC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v82 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v91 = &v61 - v24;
  v25 = [objc_opt_self() currentQueryGenerationToken];
  v94[0] = 0;
  v26 = [a1 setQueryGenerationFromToken:v25 error:v94];

  v27 = v94[0];
  if (v26)
  {
    v74 = v4;
    v28 = sub_226D69F0C();
    v29 = v27;
    v30 = sub_226D69DDC();
    sub_226B2A4F4();
    v31 = sub_226D6E91C();
    [v30 setPredicate_];

    v32 = v93;
    v33 = sub_226D6EBBC();
    v88 = v32;
    if (v32)
    {
LABEL_3:

      return;
    }

    v35 = v33;
    v81 = v28;
    if (v33 >> 62)
    {
      goto LABEL_31;
    }

    v36 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v37 = v86;
    if (v36)
    {
LABEL_7:
      v63 = v7;
      v7 = 0;
      v90 = v35 & 0xC000000000000001;
      v72 = v35 & 0xFFFFFFFFFFFFFF8;
      v78 = (v21 + 48);
      v65 = (v21 + 32);
      v64 = (v21 + 16);
      v66 = (v89 + 8);
      v62 = (v87 + 16);
      v67 = (v87 + 8);
      v68 = (v21 + 8);
      v89 = v36;
      v71 = v5;
      v73 = v14;
      v70 = v20;
      v80 = v30;
      v69 = a1;
      v79 = v35;
      do
      {
        if (v90)
        {
          v38 = MEMORY[0x22AA8AFD0](v7, v35);
          v39 = (v7 + 1);
          if (__OFADD__(v7, 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v7 >= *(v72 + 16))
          {
            goto LABEL_30;
          }

          v38 = *(v35 + 8 * v7 + 32);
          v39 = (v7 + 1);
          if (__OFADD__(v7, 1))
          {
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            v36 = sub_226D6EDFC();
            v37 = v86;
            if (!v36)
            {
              break;
            }

            goto LABEL_7;
          }
        }

        v93 = v39;
        v21 = v38;
        v40 = [v38 externalAccountId];
        if (v40)
        {
          v41 = v40;
          v87 = sub_226D6E39C();
          v43 = v42;

          sub_226D69E5C();
          v44 = v20;
          if ((*v78)(v37, 1, v20) == 1)
          {

            sub_226B86350(v37);
          }

          else
          {
            v45 = v91;
            (*v65)(v91, v37, v44);
            sub_226D6D51C();
            v76 = v43;
            sub_226D69D5C();
            (*v64)(v82, v45, v44);
            v77 = v21;
            [v21 isAccountMismatched];
            sub_226D6D46C();
            v46 = v69;
            sub_226D673DC();
            v47 = sub_226D68E6C();
            v48 = v85;
            sub_226D6738C();
            v49 = v88;
            v50 = sub_226D68E2C();
            if (v49)
            {
              v88 = v49;
              (*v66)(v48, v71);

              (*v67)(v92, v73);
              (*v68)(v91, v70);
              return;
            }

            v76 = v47;
            v87 = v50;
            v51 = *v66;
            v52 = v71;
            (*v66)(v48, v71);
            v53 = v63;
            sub_226D6738C();
            v54 = v52;
            v5 = v46;
            v55 = sub_226D69D9C();
            v88 = 0;
            v56 = v55;
            v51(v53, v54);
            v21 = v87;
            if (v87)
            {
              MEMORY[0x22AA84F00](v87, v92);
              a1 = v5;
            }

            else
            {
              (*v62)(v75, v92, v73);
              a1 = v5;
              v57 = v5;
              v21 = sub_226D68E7C();
            }

            v20 = v70;
            v37 = v86;
            if (v56)
            {
              sub_226D69EDC();
              v14 = v73;

              v58 = v92;
            }

            else
            {
              v56 = v21;
              v14 = v73;
              v58 = v92;
              v21 = v77;
            }

            (*v67)(v58, v14);
            (*v68)(v91, v20);
          }

          v35 = v79;
          v30 = v80;
        }

        else
        {
        }

        ++v7;
      }

      while (v93 != v89);
    }

    v94[0] = 0;
    if ([a1 save_])
    {
      v59 = v94[0];
      goto LABEL_3;
    }

    v60 = v94[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  else
  {
    v34 = v94[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

void sub_226B862C4(uint64_t a1)
{
  v1 = sub_226D676AC();
  sub_226D6EB7C();
}

uint64_t sub_226B86350(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7218, &unk_226D74820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PostInstallScheduleImmediateInstitutionConfigurationUpdateTask(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF2 && a1[17])
  {
    return (*a1 + 242);
  }

  v3 = *a1;
  v4 = v3 >= 0xF;
  v5 = v3 - 15;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PostInstallScheduleImmediateInstitutionConfigurationUpdateTask(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF1)
  {
    *(result + 16) = 0;
    *result = a2 - 242;
    *(result + 8) = 0;
    if (a3 >= 0xF2)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF2)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 14;
    }
  }

  return result;
}

void sub_226B86464(void *a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = sub_226D6D4AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6842C();
  v7 = sub_226D6840C();
  v8 = MEMORY[0x22AA84480]();
  [v7 setPredicate_];

  v9 = sub_226D6EBBC();
  if (!v1)
  {
    v10 = v9;
    v21 = a1;
    if (v9 >> 62)
    {
      v11 = sub_226D6EDFC();
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_4:
        v19[1] = 0;
        v20 = v7;
        if (v11 < 1)
        {
          __break(1u);
        }

        v12 = 0;
        v13 = (v4 + 8);
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x22AA8AFD0](v12, v10);
          }

          else
          {
            v14 = *(v10 + 8 * v12 + 32);
          }

          v15 = v14;
          ++v12;
          sub_226D6D46C();
          v16 = sub_226D6D3EC();
          (*v13)(v6, v3);
          [v15 setEarliestUpdateRequestStartDate_];

          [v15 setUpdateRequestAttemptCount_];
          [v15 setLastUpdateRequestAttemptDate_];
        }

        while (v11 != v12);

        v7 = v20;
        goto LABEL_13;
      }
    }

LABEL_13:
    v22[0] = 0;
    if ([v21 save_])
    {
      v17 = v22[0];
    }

    else
    {
      v18 = v22[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226B86714(uint64_t a1)
{
  v1 = sub_226D676AC();
  sub_226D6EB7C();
}

void static DisplayUtilities.mainScreenScale.getter()
{
  GSMainScreenScaleFactor();
  if ((LODWORD(v0) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v0 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v0 >= 9.2234e18)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_226B86820(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v38 = sub_226D67C0C();
  MEMORY[0x28223BE20](v38);
  v35 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v37 = &v27 - v11;
  v34 = *(a3 + 16);
  if (v34)
  {
    v12 = 0;
    v31 = (v9 + 8);
    v32 = (v9 + 32);
    v33 = v9 + 16;
    v36 = MEMORY[0x277D84F90];
    v29 = a2;
    v30 = a3;
    v28 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = *(v9 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v9;
      v18 = a1;
      v19 = v37;
      (*(v9 + 16))(v37, v16, v38, v10);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v31)(v37, v38);

        return;
      }

      if (v21)
      {
        v22 = *v32;
        (*v32)(v35, v37, v38);
        v23 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226AE1E98(0, *(v23 + 16) + 1, 1);
          v23 = v39;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_226AE1E98((v25 > 1), v26 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v26 + 1;
        v36 = v23;
        v22((v23 + v13 + v26 * v14), v35, v38);
        a3 = v30;
        a1 = v28;
      }

      else
      {
        (*v31)(v37, v38);
        a3 = v15;
      }

      ++v12;
      v9 = v17;
      if (v34 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
LABEL_14:
  }
}

uint64_t sub_226B86AF0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x22AA8AFD0](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_226D6EF6C();
        sub_226D6EF9C();
        v4 = v15;
        sub_226D6EFAC();
        sub_226D6EF7C();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

uint64_t sub_226B86C9C()
{
  v1[3] = v0;
  v2 = sub_226D6EB9C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B86D5C, 0, 0);
}

uint64_t sub_226B86D5C()
{
  if ((*(*(v0[3] + 32) + 24))())
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v1 = sub_226D6E07C();
    __swift_project_value_buffer(v1, qword_28105F710);
    v2 = sub_226D6E05C();
    v3 = sub_226D6E9EC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_226AB4000, v2, v3, "Wallet is deleted, Bank Connect pending tasks skipped.", v4, 2u);
      MEMORY[0x22AA8BEE0](v4, -1, -1);
    }

    v5 = v0[1];
    v6 = MEMORY[0x277D84F90];

    return v5(v6);
  }

  else
  {
    v9 = v0[5];
    v8 = v0[6];
    v11 = v0[3];
    v10 = v0[4];
    v12 = sub_226D676AC();
    v0[7] = v12;
    v13 = swift_allocObject();
    v0[8] = v13;
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;
    (*(v9 + 104))(v8, *MEMORY[0x277CBE110], v10);
    v12;

    v14 = swift_task_alloc();
    v0[9] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6170, &qword_226D70BB0);
    *v14 = v0;
    v14[1] = sub_226B86FD0;
    v16 = v0[6];

    return MEMORY[0x28210EE50](v0 + 2, v16, sub_226B8CCA0, v13, v15);
  }
}

uint64_t sub_226B86FD0()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_226B871D8;
  }

  else
  {
    v5 = sub_226B87164;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226B87164()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_226B871D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B87244@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v10[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v10];

  if (v6)
  {
    v7 = v10[0];
    result = sub_226B87344(a1);
    if (!v2)
    {
      *a2 = result;
    }
  }

  else
  {
    v9 = v10[0];
    sub_226D6D04C();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_226B87344(char *a1)
{
  v16 = MEMORY[0x277D84F90];
  v3 = sub_226B874F4(a1);
  if (v1)
  {
  }

  sub_226CEE124(v3);
  v4 = sub_226B87B20();
  sub_226CEE124(v4);
  v5 = sub_226B8870C();
  sub_226CEE124(v5);
  v6 = sub_226B8DD2C();
  sub_226CEE124(v6);
  v7 = sub_226B88B7C(a1);
  sub_226CEE124(v7);
  v8 = sub_226B8E328(a1);
  sub_226CEE124(v8);
  v9 = sub_226B88FB8(a1);
  sub_226CEE124(v9);
  v10 = sub_226B8ECF8(a1);
  sub_226CEE124(v10);
  v11 = sub_226B8F28C();
  sub_226CEE124(v11);
  v12 = sub_226B89394(a1);
  sub_226CEE124(v12);
  v13 = sub_226B8FA80(a1);
  sub_226CEE124(v13);
  v14 = sub_226B90214(a1);
  sub_226CEE124(v14);
  return v16;
}

uint64_t *sub_226B874F4(char *a1)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v1 - 8);
  v53 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - v4;
  v6 = sub_226D6B9BC();
  v49 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226D69F0C();
  v9 = sub_226D69DDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_226D71F40;
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  boxed_opaque_existential_1 = MEMORY[0x277D84F90];
  *(v10 + 32) = sub_226D6E91C();
  *(v10 + 40) = sub_226D6E91C();
  v12 = sub_226D6E5CC();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v9 setPredicate_];
  v14 = v54;
  v15 = sub_226D6EBBC();
  v16 = v14;
  if (v14)
  {

    return v8;
  }

  v17 = v49;
  v50 = v6;
  v51 = v8;
  v44 = v9;
  v52 = v5;
  v18 = v15;
  if (v15 >> 62)
  {
    goto LABEL_27;
  }

  v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v20 = v52;
  if (!v19)
  {

    return MEMORY[0x277D84F90];
  }

  v43 = v16;
  v58 = boxed_opaque_existential_1;

  v16 = &v58;
  result = sub_226AE2510(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v8 = v58;
    v23 = v18;
    v48 = v18;
    v49 = v18 & 0xC000000000000001;
    v45 = v18 & 0xFFFFFFFFFFFFFF8;
    v46 = (v17 + 32);
    v47 = v19;
    while (1)
    {
      if (v49)
      {
        v24 = MEMORY[0x22AA8AFD0](v22, v23);
      }

      else
      {
        if ((v22 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          v19 = sub_226D6EDFC();
          goto LABEL_5;
        }

        if (v22 >= *(v45 + 16))
        {
          goto LABEL_26;
        }

        v24 = *(v23 + 8 * v22 + 32);
      }

      v25 = v24;
      sub_226D69D5C();
      v26 = [v25 earliestAccountRequestStartDate];
      if (v26)
      {
        v27 = v26;
        sub_226D6D45C();

        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      v29 = v20;
      v30 = sub_226D6D4AC();
      v31 = *(*(v30 - 8) + 56);
      v32 = 1;
      v31(v29, v28, 1, v30);
      v54 = [v25 accountRequestAttemptCount];
      v33 = [v25 lastAccountRequestAttemptDate];
      if (v33)
      {
        v34 = v33;
        v35 = v53;
        sub_226D6D45C();

        v32 = 0;
      }

      else
      {
        v35 = v53;
      }

      v31(v35, v32, 1, v30);
      Task = type metadata accessor for BankConnectAccountDataFetchTask(0);
      v56 = Task;
      v57 = sub_226B8CC58(&qword_27D7A7290, type metadata accessor for BankConnectAccountDataFetchTask, &unk_226D763F8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
      (*v46)(boxed_opaque_existential_1, v51, v50);
      v20 = v52;
      sub_226B72784(v52, boxed_opaque_existential_1 + Task[5]);
      *(boxed_opaque_existential_1 + Task[6]) = v54;
      sub_226B72784(v35, boxed_opaque_existential_1 + Task[7]);

      v58 = v8;
      v18 = v8[2];
      v37 = v8[3];
      if (v18 >= v37 >> 1)
      {
        sub_226AE2510((v37 > 1), v18 + 1, 1);
      }

      ++v22;
      v16 = v56;
      v17 = v57;
      v38 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
      v39 = MEMORY[0x28223BE20](v38);
      v41 = &v43 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v42 + 16))(v41, v39);
      sub_226B8CEB8(v18, v41, &v58, v16, v17);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      v8 = v58;
      v23 = v48;
      if (v47 == v22)
      {

        return v8;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226B87B20()
{
  v110 = *MEMORY[0x277D85DE8];
  v0 = sub_226D6D4AC();
  v103 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v86 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v86 - v7;
  sub_226D6794C();
  v9 = sub_226D678BC();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v10 = MEMORY[0x277D84F90];
  v11 = sub_226D6E91C();
  [v9 setPredicate_];

  v12 = v105;
  v13 = sub_226D6EBBC();
  v104 = v12;
  if (v12)
  {

    return v9;
  }

  v14 = v13;
  v95 = v8;
  v105 = v5;
  v87 = v2;
  v101 = v0;
  v108 = v10;
  if (v13 >> 62)
  {
LABEL_88:
    v15 = sub_226D6EDFC();
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = v105;
  v88 = v9;
  if (!v15)
  {
    v9 = v10;
    goto LABEL_19;
  }

  v17 = 0;
  v9 = v14 & 0xFFFFFFFFFFFFFF8;
  while ((v14 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x22AA8AFD0](v17, v14);
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_16;
    }

LABEL_12:
    v10 = v18;
    v20 = [v10 institutionObject];
    v21 = [v20 supportsTransactions];

    if (v21)
    {
      sub_226D6EF6C();
      sub_226D6EF9C();
      sub_226D6EFAC();
      sub_226D6EF7C();
    }

    else
    {
    }

    v16 = v105;
    ++v17;
    if (v19 == v15)
    {
      goto LABEL_17;
    }
  }

  if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_85;
  }

  v18 = *(v14 + 8 * v17 + 32);
  v19 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v9 = v108;
  v10 = MEMORY[0x277D84F90];
LABEL_19:

  v22 = v103;
  if ((v9 & 0x8000000000000000) == 0 && (v9 & 0x4000000000000000) == 0)
  {
    v14 = *(v9 + 16);
    if (v14)
    {
      goto LABEL_22;
    }

LABEL_90:

    v24 = MEMORY[0x277D84F90];
LABEL_91:
    v72 = *(v24 + 16);
    v73 = v24;
    if (!v72)
    {
      v9 = MEMORY[0x277D84F90];
LABEL_110:

      return v9;
    }

    v74 = 0;
    v9 = MEMORY[0x277D84F90];
    v75 = v73;
    v76 = v73 + 32;
    while (2)
    {
      if (v74 >= *(v75 + 16))
      {
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
      }

      v77 = *(v76 + 8 * v74);
      v78 = *(v77 + 16);
      v79 = *(v9 + 16);
      v80 = v79 + v78;
      if (__OFADD__(v79, v78))
      {
        goto LABEL_113;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v80 <= *(v9 + 24) >> 1)
      {
        if (!*(v77 + 16))
        {
LABEL_93:

          if (v78)
          {
            goto LABEL_114;
          }

LABEL_94:
          if (v72 == ++v74)
          {
            goto LABEL_110;
          }

          continue;
        }
      }

      else
      {
        if (v79 <= v80)
        {
          v82 = v79 + v78;
        }

        else
        {
          v82 = v79;
        }

        v9 = sub_226BBB984(isUniquelyReferenced_nonNull_native, v82, 1, v9);
        if (!*(v77 + 16))
        {
          goto LABEL_93;
        }
      }

      break;
    }

    if ((*(v9 + 24) >> 1) - *(v9 + 16) < v78)
    {
      goto LABEL_115;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6160, &qword_226D70BA0);
    swift_arrayInitWithCopy();

    if (v78)
    {
      v83 = *(v9 + 16);
      v61 = __OFADD__(v83, v78);
      v84 = v83 + v78;
      if (v61)
      {
        goto LABEL_116;
      }

      *(v9 + 16) = v84;
    }

    goto LABEL_94;
  }

  v14 = sub_226D6EDFC();
  if (!v14)
  {
    goto LABEL_90;
  }

LABEL_22:
  v108 = v10;
  sub_226AE2550(0, v14 & ~(v14 >> 63), 0);
  if (v14 < 0)
  {
    goto LABEL_117;
  }

  v23 = 0;
  v24 = v108;
  v25 = v9;
  v98 = v9 & 0xC000000000000001;
  v89 = v9 + 32;
  v26 = (v22 + 56);
  v86 = (v22 + 32);
  v27 = MEMORY[0x277D84FA0];
  v90 = v10 >> 62;
  v96 = v14;
  v97 = v9;
  while (2)
  {
    if (__OFADD__(v23, 1))
    {
      goto LABEL_86;
    }

    v103 = v23 + 1;
    if (v98)
    {
      v28 = MEMORY[0x22AA8AFD0]();
    }

    else
    {
      if (v23 >= *(v25 + 16))
      {
        goto LABEL_87;
      }

      v28 = *(v89 + 8 * v23);
    }

    v102 = v28;
    v29 = [v28 accountObjects];
    v109 = 0;
    sub_226D69F0C();
    sub_226B8CC58(&qword_27D7A7278, MEMORY[0x277CC7A70], MEMORY[0x277D85378]);
    sub_226D6E88C();

    v9 = v109;
    if (v109)
    {
      goto LABEL_32;
    }

    if (!v90 || (v46 = MEMORY[0x277D84F90], (v30 = sub_226D6EDFC()) == 0))
    {
      v9 = v27;
LABEL_32:
      if ((v9 & 0xC000000000000001) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_33;
    }

    sub_226B1F8F4(v46);
    v9 = v30;
    if ((v30 & 0xC000000000000001) != 0)
    {
LABEL_33:
      v109 = v27;
      v14 = sub_226D6EDBC();
      v31 = sub_226D6EE2C();
      if (v31)
      {
        v9 = v101;
LABEL_38:
        v106 = v31;
        swift_dynamicCast();
        v32 = v107;
        if (![v107 isAccountEnabled])
        {
          goto LABEL_36;
        }

        v33 = [v32 earliestTransactionsRequestStartDate];
        if (!v33)
        {
          (*v26)(v16, 1, 1, v9);
          sub_226B905C4(v16);
LABEL_36:

          goto LABEL_37;
        }

        v34 = v33;
        sub_226D6D45C();

        (*v26)(v16, 0, 1, v9);
        sub_226B905C4(v16);
        v10 = v107;
        v35 = *(v27 + 16);
        if (*(v27 + 24) <= v35)
        {
          sub_226C29738(v35 + 1);
        }

        v27 = v109;
        v36 = sub_226D6EC2C();
        v37 = v27 + 56;
        v38 = -1 << *(v27 + 32);
        v39 = v36 & ~v38;
        v40 = v39 >> 6;
        if (((-1 << v39) & ~*(v27 + 56 + 8 * (v39 >> 6))) != 0)
        {
          v41 = __clz(__rbit64((-1 << v39) & ~*(v27 + 56 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
          goto LABEL_52;
        }

        v42 = 0;
        v43 = (63 - v38) >> 6;
        while (++v40 != v43 || (v42 & 1) == 0)
        {
          v44 = v40 == v43;
          if (v40 == v43)
          {
            v40 = 0;
          }

          v42 |= v44;
          v45 = *(v37 + 8 * v40);
          if (v45 != -1)
          {
            v41 = __clz(__rbit64(~v45)) + (v40 << 6);
LABEL_52:
            *(v37 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
            *(*(v27 + 48) + 8 * v41) = v10;
            ++*(v27 + 16);
LABEL_37:
            v31 = sub_226D6EE2C();
            if (!v31)
            {
              goto LABEL_53;
            }

            goto LABEL_38;
          }
        }

        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

LABEL_53:

      goto LABEL_76;
    }

LABEL_56:
    v47 = *(v9 + 32);
    v48 = ((1 << v47) + 63) >> 6;
    if ((v47 & 0x3Fu) <= 0xD)
    {
      goto LABEL_57;
    }

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_57:
      v99 = v24;
      v91 = &v86;
      v92 = v48;
      MEMORY[0x28223BE20](v30);
      v93 = &v86 - ((v49 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v93, v49);
      v94 = 0;
      v50 = 0;
      v51 = 1 << *(v9 + 32);
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      else
      {
        v52 = -1;
      }

      v53 = v52 & *(v9 + 56);
      v14 = (v51 + 63) >> 6;
      while (v53)
      {
        v54 = __clz(__rbit64(v53));
        v53 &= v53 - 1;
LABEL_69:
        v57 = v54 | (v50 << 6);
        v10 = *(*(v9 + 48) + 8 * v57);
        if ([v10 isAccountEnabled])
        {
          v58 = [v10 earliestTransactionsRequestStartDate];
          if (v58)
          {
            v59 = v58;
            sub_226D6D45C();

            v60 = v95;
            v10 = v101;
            (*v86)(v95, v87, v101);
            (*v26)(v60, 0, 1, v10);
            sub_226B905C4(v60);
            *&v93[(v57 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v57;
            v61 = __OFADD__(v94++, 1);
            if (v61)
            {
              goto LABEL_118;
            }
          }

          else
          {

            v10 = v95;
            (*v26)(v95, 1, 1, v101);
            sub_226B905C4(v10);
          }
        }

        else
        {
        }
      }

      v55 = v50;
      v16 = v105;
      v24 = v99;
      while (1)
      {
        v50 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_84;
        }

        if (v50 >= v14)
        {
          break;
        }

        v56 = *(v9 + 56 + 8 * v50);
        ++v55;
        if (v56)
        {
          v54 = __clz(__rbit64(v56));
          v53 = (v56 - 1) & v56;
          goto LABEL_69;
        }
      }

      v27 = sub_226D568FC(v93, v92, v94, v9);
LABEL_76:
      v62 = v102;
      v63 = [v102 institutionObject];
      [v63 maxAgeTransactionsRefreshRequest];
      v65 = v64;
      v66 = v100;

      v67 = v104;
      v14 = sub_226B8CFE8(v27, v66, v65);
      v104 = v67;

      v108 = v24;
      v10 = *(v24 + 16);
      v68 = *(v24 + 24);
      v9 = v10 + 1;
      if (v10 >= v68 >> 1)
      {
        sub_226AE2550((v68 > 1), v10 + 1, 1);
        v24 = v108;
      }

      *(v24 + 16) = v9;
      *(v24 + 8 * v10 + 32) = v14;
      v23 = v103;
      v25 = v97;
      v27 = MEMORY[0x277D84FA0];
      if (v103 == v96)
      {

        goto LABEL_91;
      }

      continue;
    }

    break;
  }

  v69 = swift_slowAlloc();

  v70 = v104;
  v71 = sub_226B8CCBC(v69, v48, v9, sub_226B8965C);
  v104 = v70;
  if (!v70)
  {
    v27 = v71;
    swift_bridgeObjectRelease_n();
    MEMORY[0x22AA8BEE0](v69, -1, -1);
    goto LABEL_76;
  }

  swift_bridgeObjectRelease_n();
  result = MEMORY[0x22AA8BEE0](v69, -1, -1);
  __break(1u);
  return result;
}

void *sub_226B8870C()
{
  v2 = v0;
  v3 = sub_226D6794C();
  v4 = sub_226D678BC();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v5 = MEMORY[0x277D84F90];
  v6 = sub_226D6E91C();
  [v4 setPredicate_];

  v7 = sub_226D6EBBC();
  if (v1)
  {
LABEL_62:

    return v3;
  }

  v8 = v7;
  v39 = v5;
  if (v7 >> 62)
  {
    goto LABEL_57;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v10 = MEMORY[0x277D84F90];
  v35 = v4;
  v36 = v2;
  if (v9)
  {
    v11 = 0;
    v4 = v8 & 0xC000000000000001;
    v2 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v4)
      {
        v12 = MEMORY[0x22AA8AFD0](v11, v8);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v17 = v39;
          v10 = MEMORY[0x277D84F90];
          goto LABEL_18;
        }
      }

      else
      {
        if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v9 = sub_226D6EDFC();
          goto LABEL_4;
        }

        v12 = *(v8 + 8 * v11 + 32);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_15;
        }
      }

      v14 = v12;
      v15 = [v14 institutionObject];
      v16 = [v15 supportsTransactions];

      if (v16)
      {
        sub_226D6EF6C();
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
      }

      else
      {
      }

      ++v11;
      if (v13 == v9)
      {
        goto LABEL_16;
      }
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_18:

  if ((v17 & 0x8000000000000000) == 0 && (v17 & 0x4000000000000000) == 0)
  {
    v8 = *(v17 + 16);
    if (v8)
    {
      goto LABEL_21;
    }

LABEL_59:

    v20 = MEMORY[0x277D84F90];
    v26 = *(MEMORY[0x277D84F90] + 16);
    if (v26)
    {
LABEL_32:
      v4 = 0;
      v3 = MEMORY[0x277D84F90];
      v2 = v20 + 32;
      while (1)
      {
        if (v4 >= *(v20 + 16))
        {
          goto LABEL_51;
        }

        v27 = *(v2 + 8 * v4);
        v28 = *(v27 + 16);
        v29 = v3[2];
        v8 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          goto LABEL_52;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v8 <= v3[3] >> 1)
        {
          if (!*(v27 + 16))
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (v29 <= v8)
          {
            v31 = v29 + v28;
          }

          else
          {
            v31 = v29;
          }

          v3 = sub_226BBB984(isUniquelyReferenced_nonNull_native, v31, 1, v3);
          if (!*(v27 + 16))
          {
LABEL_33:

            if (v28)
            {
              goto LABEL_53;
            }

            goto LABEL_34;
          }
        }

        if ((v3[3] >> 1) - v3[2] < v28)
        {
          goto LABEL_54;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6160, &qword_226D70BA0);
        swift_arrayInitWithCopy();

        if (v28)
        {
          v32 = v3[2];
          v33 = __OFADD__(v32, v28);
          v34 = v32 + v28;
          if (v33)
          {
            goto LABEL_56;
          }

          v3[2] = v34;
        }

LABEL_34:
        if (v26 == ++v4)
        {
          goto LABEL_61;
        }
      }
    }

    goto LABEL_60;
  }

  v8 = sub_226D6EDFC();
  if (!v8)
  {
    goto LABEL_59;
  }

LABEL_21:
  v39 = v10;
  result = sub_226AE2550(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    v20 = v39;
    v4 = v17 & 0xC000000000000001;
    do
    {
      v2 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_50;
      }

      if (v4)
      {
        v21 = MEMORY[0x22AA8AFD0](v19, v17);
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          goto LABEL_55;
        }

        v21 = *(v17 + 8 * v19 + 32);
      }

      v22 = v21;
      v37 = v21;
      sub_226B89990(&v37, v36, &v38);

      v23 = v38;
      v39 = v20;
      v25 = *(v20 + 16);
      v24 = *(v20 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226AE2550((v24 > 1), v25 + 1, 1);
        v20 = v39;
      }

      *(v20 + 16) = v25 + 1;
      *(v20 + 8 * v25 + 32) = v23;
      ++v19;
    }

    while (v2 != v8);

    v26 = *(v20 + 16);
    if (v26)
    {
      goto LABEL_32;
    }

LABEL_60:
    v3 = MEMORY[0x277D84F90];
LABEL_61:

    v4 = v35;
    goto LABEL_62;
  }

  __break(1u);
  return result;
}

void *sub_226B88B7C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v39 - v7;
  sub_226D6996C();
  v9 = sub_226D6992C();
  v10 = a1;
  v11 = sub_226D6EBBC();
  if (v2)
  {

    return v10;
  }

  v12 = v11;
  if (v11 >> 62)
  {
    goto LABEL_21;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_22:

    return MEMORY[0x277D84F90];
  }

LABEL_5:
  v43 = v8;
  v39[0] = v9;
  v39[1] = v3;
  v49 = MEMORY[0x277D84F90];
  v39[2] = v4;

  result = sub_226AE2510(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v10 = v49;
    v44 = v12 & 0xC000000000000001;
    v40 = v12 & 0xFFFFFFFFFFFFFF8;
    v41 = v13;
    v42 = v12;
    while (1)
    {
      if (v44)
      {
        v16 = MEMORY[0x22AA8AFD0](v15, v12);
      }

      else
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v13 = sub_226D6EDFC();
          if (!v13)
          {
            goto LABEL_22;
          }

          goto LABEL_5;
        }

        if (v15 >= *(v40 + 16))
        {
          goto LABEL_20;
        }

        v16 = *(v12 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 consentID];
      v45 = sub_226D6E39C();
      v20 = v19;

      v21 = [v17 institutionID];
      v22 = sub_226D6E39C();
      v24 = v23;

      v8 = [v17 consentValidationAttemptCount];
      v25 = [v17 lastConsentValidationAttemptDate];
      if (v25)
      {
        v26 = v43;
        v27 = v25;
        sub_226D6D45C();

        v28 = 0;
      }

      else
      {
        v28 = 1;
        v26 = v43;
      }

      v29 = sub_226D6D4AC();
      (*(*(v29 - 8) + 56))(v26, v28, 1, v29);
      v30 = type metadata accessor for BankConnectPendingConsentProcessingTask(0);
      v47 = v30;
      v48 = sub_226B8CC58(&qword_27D7A6E68, type metadata accessor for BankConnectPendingConsentProcessingTask, &unk_226D736B0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
      *boxed_opaque_existential_1 = v45;
      boxed_opaque_existential_1[1] = v20;
      boxed_opaque_existential_1[2] = v22;
      boxed_opaque_existential_1[3] = v24;
      boxed_opaque_existential_1[4] = v8;
      sub_226B72784(v26, boxed_opaque_existential_1 + *(v30 + 28));

      v49 = v10;
      v3 = *(v10 + 16);
      v32 = *(v10 + 24);
      if (v3 >= v32 >> 1)
      {
        sub_226AE2510((v32 > 1), v3 + 1, 1);
      }

      ++v15;
      v33 = v47;
      v34 = v48;
      v35 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
      v9 = v39;
      v36 = MEMORY[0x28223BE20](v35);
      v4 = v39 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v38 + 16))(v4, v36);
      sub_226B8CEB8(v3, v4, &v49, v33, v34);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      v10 = v49;
      v12 = v42;
      if (v41 == v15)
      {

        return v10;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_226B88FB8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7240, &unk_226D74960);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_226D6826C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x277CC7220], v7, v9);
  v12 = sub_226D6A03C();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_226D6794C();
  v13 = sub_226D678BC();
  v14 = sub_226D6EBBC();
  if (v1)
  {
  }

  else
  {
    v15 = v14;
    v26 = v13;
    if (v14 >> 62)
    {
      goto LABEL_25;
    }

    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = 0; v16; i = v2)
    {
      v17 = 0;
      v28 = v15 & 0xC000000000000001;
      v2 = v15 & 0xFFFFFFFFFFFFFF8;
      a1 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v28)
        {
          v18 = MEMORY[0x22AA8AFD0](v17, v15);
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v18 = *(v15 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        sub_226B8C5CC(v18, v6);
        v21 = type metadata accessor for BankConnectNotificationEventsRegisterTask(0);
        if ((*(*(v21 - 8) + 48))(v6, 1, v21) == 1)
        {
          v37 = 0;
          v35 = 0u;
          v36 = 0u;
        }

        else
        {
          v30 = v21;
          v31 = sub_226B8CC58(&qword_27D7A7248, type metadata accessor for BankConnectNotificationEventsRegisterTask, &unk_226D7D4B8);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
          sub_226B9064C(v6, boxed_opaque_existential_1);
          sub_226AC484C(&v29, &v35);
        }

        v32 = v35;
        v33 = v36;
        v34 = v37;

        if (*(&v33 + 1))
        {
          sub_226AC484C(&v32, &v35);
          sub_226AC484C(&v35, &v32);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_226BBB984(0, a1[2] + 1, 1, a1);
          }

          v24 = a1[2];
          v23 = a1[3];
          if (v24 >= v23 >> 1)
          {
            a1 = sub_226BBB984((v23 > 1), v24 + 1, 1, a1);
          }

          a1[2] = v24 + 1;
          sub_226AC484C(&v32, &a1[5 * v24 + 4]);
        }

        ++v17;
        if (v20 == v16)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v16 = sub_226D6EDFC();
    }

    a1 = MEMORY[0x277D84F90];
LABEL_27:
  }

  return a1;
}

void *sub_226B89394(void *a1)
{
  v3 = v1;
  v5 = *v1;
  sub_226D6842C();
  v6 = sub_226D6840C();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v7 = sub_226D6E91C();
  [v6 setPredicate_];

  v8 = sub_226D6EBBC();
  if (v2)
  {
  }

  else
  {
    v9 = v8;
    v19 = a1;
    if (v8 >> 62)
    {
      goto LABEL_20;
    }

    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v6; v10; i = v6)
    {
      v11 = 0;
      v5 = MEMORY[0x277D84F90];
      v6 = v19;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x22AA8AFD0](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v23 = v12;
        sub_226B8A8C0(&v23, v6, v3, &v20);

        if (v21)
        {
          sub_226AC484C(&v20, v22);
          sub_226AC484C(v22, &v20);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_226BBB984(0, v5[2] + 1, 1, v5);
          }

          v16 = v5[2];
          v15 = v5[3];
          if (v16 >= v15 >> 1)
          {
            v5 = sub_226BBB984((v15 > 1), v16 + 1, 1, v5);
          }

          v5[2] = v16 + 1;
          sub_226AC484C(&v20, &v5[5 * v16 + 4]);
          v6 = v19;
        }

        ++v11;
        if (v14 == v10)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v10 = sub_226D6EDFC();
    }

    v5 = MEMORY[0x277D84F90];
LABEL_22:
  }

  return v5;
}

uint64_t sub_226B89680@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = sub_226D6B9BC();
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D69D5C();
  v15 = [a1 earliestTransactionsRequestStartDate];
  if (v15)
  {
    v16 = v15;
    sub_226D6D45C();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_226D6D4AC();
  v19 = *(*(v18 - 8) + 56);
  v20 = 1;
  v19(v11, v17, 1, v18);
  v29 = [a1 transactionsRequestAttemptCount];
  v21 = [a1 lastTransactionsRequestAttemptDate];
  if (v21)
  {
    v22 = v21;
    sub_226D6D45C();

    v20 = 0;
  }

  v19(v8, v20, 1, v18);
  Task = type metadata accessor for BankConnectTransactionsDataFetchTask(0);
  a2[3] = Task;
  a2[4] = sub_226B8CC58(&qword_27D7A6FD0, type metadata accessor for BankConnectTransactionsDataFetchTask, &unk_226D73C88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  sub_226D6D46C();
  v25 = Task[7];
  v19(boxed_opaque_existential_1 + v25, 1, 1, v18);
  v26 = Task[9];
  v19(boxed_opaque_existential_1 + v26, 1, 1, v18);
  (*(v30 + 32))(boxed_opaque_existential_1 + Task[5], v14, v31);
  *(boxed_opaque_existential_1 + Task[6]) = a3;
  sub_226B3E298(v11, boxed_opaque_existential_1 + v25);
  *(boxed_opaque_existential_1 + Task[8]) = v29;
  return sub_226B3E298(v8, boxed_opaque_existential_1 + v26);
}

void sub_226B89990(id *a1@<X0>, char *a2@<X1>, unint64_t a3@<X8>)
{
  v4 = v3;
  v73 = *MEMORY[0x277D85DE8];
  v69 = sub_226D6D4AC();
  v8 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v67 = &v56 - v15;
  v16 = *a1;
  v17 = [*a1 accountObjects];
  v72 = 0;
  sub_226D69F0C();
  sub_226B8CC58(&qword_27D7A7278, MEMORY[0x277CC7A70], MEMORY[0x277D85378]);
  sub_226D6E88C();

  v19 = v72;
  if (!v72)
  {
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_47;
    }

LABEL_3:
    v19 = MEMORY[0x277D84FA0];
    goto LABEL_4;
  }

  while (1)
  {
LABEL_4:
    v65 = a2;
    v66 = a3;
    v63 = v4;
    v64 = v16;
    if ((v19 & 0xC000000000000001) != 0)
    {
      a2 = MEMORY[0x277D84FA0];
      v72 = MEMORY[0x277D84FA0];
      sub_226D6EDBC();
      v20 = sub_226D6EE2C();
      if (!v20)
      {
LABEL_25:

        goto LABEL_45;
      }

      v67 = v8 + 32;
      v16 = (v8 + 56);
      v4 = &selRef_setSortDescriptors_;
      while (1)
      {
        v70 = v20;
        swift_dynamicCast();
        v21 = v71;
        if ([v71 isAccountEnabled])
        {
          v22 = [v21 earliestHistoricalTransactionsRequestStartDate];
          if (v22)
          {
            v23 = v68;
            v24 = v22;
            sub_226D6D45C();

            v25 = v69;
            (*v67)(v12, v23, v69);
            (*v16)(v12, 0, 1, v25);
            sub_226B905C4(v12);
            v8 = v71;
            v26 = *(a2 + 2);
            if (*(a2 + 3) <= v26)
            {
              sub_226C29738(v26 + 1);
            }

            a2 = v72;
            a3 = v8;
            v27 = sub_226D6EC2C();
            v28 = a2 + 56;
            v29 = -1 << a2[32];
            v30 = v27 & ~v29;
            v31 = v30 >> 6;
            if (((-1 << v30) & ~*&a2[8 * (v30 >> 6) + 56]) != 0)
            {
              v32 = __clz(__rbit64((-1 << v30) & ~*&a2[8 * (v30 >> 6) + 56])) | v30 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v33 = 0;
              v34 = (63 - v29) >> 6;
              do
              {
                if (++v31 == v34 && (v33 & 1) != 0)
                {
                  __break(1u);
                  goto LABEL_46;
                }

                v35 = v31 == v34;
                if (v31 == v34)
                {
                  v31 = 0;
                }

                v33 |= v35;
                v36 = *&v28[8 * v31];
              }

              while (v36 == -1);
              v32 = __clz(__rbit64(~v36)) + (v31 << 6);
            }

            *&v28[(v32 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v32;
            *(*(a2 + 6) + 8 * v32) = v8;
            ++*(a2 + 2);
            goto LABEL_9;
          }

          (*v16)(v12, 1, 1, v69);
          sub_226B905C4(v12);
        }

LABEL_9:
        v20 = sub_226D6EE2C();
        if (!v20)
        {
          goto LABEL_25;
        }
      }
    }

    v37 = *(v19 + 32);
    v38 = ((1 << v37) + 63) >> 6;
    if ((v37 & 0x3Fu) > 0xD)
    {
      break;
    }

LABEL_27:
    v58 = &v56;
    v59 = v38;
    MEMORY[0x28223BE20](v18);
    v60 = &v56 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v60, v39);
    v40 = 0;
    v16 = (v19 + 56);
    v41 = 1 << *(v19 + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v12 = v42 & *(v19 + 56);
    v4 = ((v41 + 63) >> 6);
    v61 = 0;
    v62 = (v8 + 56);
    v57 = (v8 + 32);
LABEL_32:
    if (v12)
    {
      v43 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      goto LABEL_39;
    }

    v44 = v40;
    while (1)
    {
      v40 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v40 >= v4)
      {
        goto LABEL_44;
      }

      v45 = v16[v40];
      ++v44;
      if (v45)
      {
        v43 = __clz(__rbit64(v45));
        v12 = (v45 - 1) & v45;
LABEL_39:
        a3 = v43 | (v40 << 6);
        v8 = *(*(v19 + 48) + 8 * a3);
        if ([v8 isAccountEnabled])
        {
          v46 = [v8 earliestHistoricalTransactionsRequestStartDate];
          if (v46)
          {
            v47 = v46;
            sub_226D6D45C();

            a2 = v67;
            (*v57)(v67, v68, v69);
            (*v62)(a2, 0, 1, v69);
            sub_226B905C4(a2);

            *&v60[(a3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a3;
            if (!__OFADD__(v61++, 1))
            {
              goto LABEL_32;
            }

            __break(1u);
LABEL_44:
            a2 = sub_226D568FC(v60, v59, v61, v19);
LABEL_45:
            v49 = v64;
            v50 = [v64 institutionObject];

            v51 = v50;
            v52 = v49;
            v53 = sub_226B8D3E4(a2, v51, v52);

            *v66 = v53;
            return;
          }

          a3 = v67;
          (*v62)(v67, 1, 1, v69);
          sub_226B905C4(a3);
        }

        goto LABEL_32;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    v18 = sub_226D6EDFC();
    if (!v18)
    {
      goto LABEL_3;
    }

    sub_226B1F8F4(MEMORY[0x277D84F90]);
    v19 = v18;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_27;
  }

  v54 = swift_slowAlloc();
  v55 = sub_226B8CCBC(v54, v38, v19, sub_226B8A144);
  if (!v4)
  {
    a2 = v55;

    MEMORY[0x22AA8BEE0](v54, -1, -1);
    goto LABEL_45;
  }

  MEMORY[0x22AA8BEE0](v54, -1, -1);
  __break(1u);
}

BOOL sub_226B8A168(void **a1, SEL *a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v17 - v10;
  v12 = *a1;
  if (![v12 isAccountEnabled])
  {
    return 0;
  }

  v13 = [v12 *a2];
  v14 = v13 != 0;
  if (v13)
  {
    v15 = v13;
    sub_226D6D45C();

    (*(v5 + 32))(v11, v7, v4);
    (*(v5 + 56))(v11, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v11, 1, 1, v4);
  }

  sub_226B905C4(v11);
  return v14;
}

void sub_226B8A320(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v54 = sub_226D6D61C();
  v3 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6D6DC();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_226D6D4AC();
  v9 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v12 - 8);
  v56 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v49 - v19;
  v21 = *a1;
  v22 = [v21 externalAccountId];
  if (v22)
  {
    v23 = v22;
    v24 = sub_226D6E39C();
    v50 = v25;
    v51 = v24;

    v26 = [v21 lastPassLinkingAttemptDate];
    if (v26)
    {
      v27 = v26;
      sub_226D6D45C();

      v28 = v54;
      (*(v3 + 104))(v5, *MEMORY[0x277CC9810], v54);
      sub_226D6D62C();
      (*(v3 + 8))(v5, v28);
      sub_226D6D23C();
      (*(v52 + 8))(v8, v53);
      v29 = v55;
      (*(v9 + 8))(v11, v55);
      v30 = *(v9 + 56);
      v30(v16, 0, 1, v29);
    }

    else
    {
      v30 = *(v9 + 56);
      v29 = v55;
      v30(v16, 1, 1, v55);
    }

    sub_226B72784(v16, v20);
    v43 = type metadata accessor for BankConnectPassLinkingRequestTask(0);
    v44 = v57;
    v57[3] = v43;
    v44[4] = sub_226B8CC58(&qword_27D7A7220, type metadata accessor for BankConnectPassLinkingRequestTask, &unk_226D7E5E8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
    sub_226D69D5C();
    v46 = v56;
    sub_226AF265C(v20, v56);
    v30(boxed_opaque_existential_1, 1, 1, v29);
    v47 = (boxed_opaque_existential_1 + *(v43 + 24));
    v48 = v50;
    *v47 = v51;
    v47[1] = v48;
    sub_226B3E298(v46, boxed_opaque_existential_1);
    sub_226B905C4(v20);
  }

  else
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v31 = sub_226D6E07C();
    __swift_project_value_buffer(v31, qword_28105F710);
    v32 = v21;
    v33 = sub_226D6E05C();
    v34 = sub_226D6E9CC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v58 = v36;
      *v35 = 136315138;
      v37 = [v32 accountId];
      v38 = sub_226D6E39C();
      v40 = v39;

      v41 = sub_226AC4530(v38, v40, &v58);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_226AB4000, v33, v34, "externalAccountId is nil for %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x22AA8BEE0](v36, -1, -1);
      MEMORY[0x22AA8BEE0](v35, -1, -1);
    }

    v42 = v57;
    v57[4] = 0;
    *v42 = 0u;
    *(v42 + 1) = 0u;
  }
}

void sub_226B8A8C0(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v142 = a2;
  v138 = a4;
  v139 = a3;
  v5 = sub_226D6B9BC();
  v6 = *(v5 - 8);
  v127 = v5;
  v128 = v6;
  MEMORY[0x28223BE20](v5);
  v125 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v124 = &v118 - v9;
  v129 = sub_226D69FCC();
  v137 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v136 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v126 = &v118 - v12;
  v13 = sub_226D6BD9C();
  v134 = *(v13 - 8);
  v135 = v13;
  MEMORY[0x28223BE20](v13);
  v133 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226D6A30C();
  v131 = *(v15 - 8);
  *&v132 = v15;
  MEMORY[0x28223BE20](v15);
  v130 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v118 - v21;
  v23 = sub_226D6D4AC();
  v140 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  sub_226D6794C();
  v27 = [v26 id];
  sub_226D6E39C();

  v28 = v141;
  sub_226D6791C();
  if (v28)
  {
    goto LABEL_2;
  }

  v122 = v19;
  v123 = v25;
  v141 = 0;

  __swift_project_boxed_opaque_existential_1(v139 + 5, v139[8]);
  sub_226D6B3CC();

  v29 = v140;
  if ((*(v140 + 48))(v22, 1, v23) != 1)
  {
    v36 = v26;
    (*(v29 + 32))(v123, v22, v23);
    v38 = v130;
    v37 = v131;
    v39 = v132;
    v131[13](v130, *MEMORY[0x277CC7B60], v132);
    v120 = v23;
    v121 = sub_226D6A2FC();
    (v37[1])(v38, v39);
    v130 = sub_226D69F0C();
    v40 = sub_226D69DDC();
    v131 = v40;
    [v40 setReturnsObjectsAsFaults_];
    v41 = sub_226D6E5CC();
    [v40 setRelationshipKeyPathsForPrefetching_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_226D72B90;
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    *(v42 + 32) = sub_226D6E91C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v43 = swift_allocObject();
    v132 = xmmword_226D70840;
    *(v43 + 16) = xmmword_226D70840;
    v119 = v36;
    v44 = [v36 id];
    v45 = sub_226D6E39C();
    v47 = v46;

    *(v43 + 56) = MEMORY[0x277D837D0];
    *(v43 + 64) = sub_226B16404();
    *(v43 + 32) = v45;
    *(v43 + 40) = v47;
    *(v42 + 40) = sub_226D6E91C();
    v48 = swift_allocObject();
    v49 = MEMORY[0x277D84958];
    *(v48 + 16) = v132;
    v50 = MEMORY[0x277D849A0];
    *(v48 + 56) = v49;
    *(v48 + 64) = v50;
    *(v48 + 32) = v121;
    *(v42 + 48) = sub_226D6E91C();
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_226D71F40;
    *(v51 + 32) = sub_226D6E91C();
    v52 = swift_allocObject();
    *(v52 + 16) = v132;
    v53 = v133;
    sub_226D6BD6C();
    LODWORD(v43) = sub_226D6BD7C();
    (*(v134 + 8))(v53, v135);
    v54 = MEMORY[0x277D84A20];
    *(v52 + 56) = MEMORY[0x277D849A8];
    *(v52 + 64) = v54;
    *(v52 + 32) = v43;
    *(v51 + 40) = sub_226D6E91C();
    v55 = sub_226D6E5CC();

    v56 = objc_opt_self();
    v57 = [v56 orPredicateWithSubpredicates_];

    *(v42 + 56) = v57;
    v58 = sub_226D6E5CC();
    v59 = v131;

    v60 = [v56 andPredicateWithSubpredicates_];

    [v59 setPredicate_];
    v62 = v141;
    v61 = v142;
    v63 = sub_226D6EBBC();
    if (v62)
    {
      (*(v140 + 8))(v123, v120);

      return;
    }

    v64 = v63;
    MEMORY[0x28223BE20](v63);
    *(&v118 - 2) = v65;
    *(&v118 - 1) = v61;

    v66 = sub_226B86AF0(sub_226B9062C, (&v118 - 4), v64);
    v130 = v64;
    v67 = v123;
    v141 = 0;
    if (v66 >> 62)
    {
      v68 = sub_226D6EDFC();
    }

    else
    {
      v68 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v69 = v137;
    v70 = v138;
    v71 = v136;
    v72 = &selRef_setSortDescriptors_;

    if (v68 <= 0)
    {
      goto LABEL_26;
    }

    __swift_project_boxed_opaque_existential_1(v139 + 15, v139[18]);
    v73 = sub_226D6B7EC();
    v135 = *(v73 + 16);
    if (v135)
    {
      v74 = 0;
      *&v132 = v69 + 8;
      v133 = (v69 + 32);
      v134 = v69 + 16;
      v75 = MEMORY[0x277D84F90];
      v76 = v129;
      v77 = v126;
      while (v74 < *(v73 + 16))
      {
        v78 = (*(v69 + 80) + 32) & ~*(v69 + 80);
        v79 = *(v69 + 72);
        (*(v69 + 16))(v77, v73 + v78 + v79 * v74, v76);
        if (sub_226D69FBC())
        {
          v80 = *v133;
          (*v133)(v71, v77, v76);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v143 = v75;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_226AE2590(0, *(v75 + 16) + 1, 1);
            v77 = v126;
            v75 = v143;
          }

          v83 = *(v75 + 16);
          v82 = *(v75 + 24);
          if (v83 >= v82 >> 1)
          {
            sub_226AE2590((v82 > 1), v83 + 1, 1);
            v77 = v126;
            v75 = v143;
          }

          *(v75 + 16) = v83 + 1;
          v84 = v75 + v78 + v83 * v79;
          v71 = v136;
          v76 = v129;
          v80(v84, v136, v129);
          v69 = v137;
        }

        else
        {
          (*v132)(v77, v76);
        }

        if (v135 == ++v74)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_45;
    }

    v75 = MEMORY[0x277D84F90];
LABEL_25:

    v85 = *(v75 + 16);

    v70 = v138;
    v67 = v123;
    v72 = &selRef_setSortDescriptors_;
    if (v85)
    {
LABEL_26:
      v86 = [v119 v72[70]];
      v87 = sub_226D6E39C();
      v89 = v88;

      v90 = v141;
      v91 = sub_226B8B904(v130, v87, v89, v142);
      if (v90)
      {
        (*(v140 + 8))(v67, v120);

LABEL_2:

        return;
      }

      v92 = v91;
      v141 = 0;

      if (v92 >> 62)
      {
        v116 = sub_226D6EDFC();
        v94 = v125;
        if (v116)
        {
          v117 = sub_226D6EDFC();
          v95 = MEMORY[0x277D84F90];
          v93 = v117;
          if (!v117)
          {

            v96 = MEMORY[0x277D84F90];
            goto LABEL_43;
          }

LABEL_30:
          v143 = v95;
          sub_226AE2090(0, v93 & ~(v93 >> 63), 0);
          if (v93 < 0)
          {
            __break(1u);
            return;
          }

          v96 = v143;
          v97 = v124;
          if ((v92 & 0xC000000000000001) != 0)
          {
            v98 = 0;
            do
            {
              MEMORY[0x22AA8AFD0](v98, v92);
              sub_226D69D5C();
              swift_unknownObjectRelease();
              v143 = v96;
              v100 = *(v96 + 16);
              v99 = *(v96 + 24);
              if (v100 >= v99 >> 1)
              {
                sub_226AE2090((v99 > 1), v100 + 1, 1);
                v96 = v143;
              }

              ++v98;
              *(v96 + 16) = v100 + 1;
              (*(v128 + 32))(v96 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v100, v97, v127);
            }

            while (v93 != v98);
          }

          else
          {
            v101 = 32;
            do
            {
              v102 = *(v92 + v101);
              sub_226D69D5C();

              v143 = v96;
              v104 = *(v96 + 16);
              v103 = *(v96 + 24);
              if (v104 >= v103 >> 1)
              {
                sub_226AE2090((v103 > 1), v104 + 1, 1);
                v96 = v143;
              }

              *(v96 + 16) = v104 + 1;
              (*(v128 + 32))(v96 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v104, v94, v127);
              v101 += 8;
              --v93;
            }

            while (v93);
          }

LABEL_43:
          [v119 maxAgeTransactionsRefreshRequest];
          v106 = v105;
          v107 = v140;
          v108 = v122;
          v109 = v123;
          v110 = v120;
          (*(v140 + 16))(v122, v123, v120);
          v111 = *(v107 + 56);
          v111(v108, 0, 1, v110);
          refreshed = type metadata accessor for BankConnectBackgroundRefreshTask(0);
          v113 = v138;
          v138[3] = refreshed;
          v113[4] = sub_226B8CC58(&qword_27D7A7230, type metadata accessor for BankConnectBackgroundRefreshTask, &unk_226D7C908);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v113);
          sub_226D6D51C();
          v115 = *(refreshed + 24);
          v111(boxed_opaque_existential_1 + v115, 1, 1, v110);
          *boxed_opaque_existential_1 = v96;
          sub_226B3E298(v108, boxed_opaque_existential_1 + v115);

          boxed_opaque_existential_1[1] = v106;
          (*(v107 + 8))(v109, v110);
          return;
        }
      }

      else
      {
        v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v94 = v125;
        v95 = MEMORY[0x277D84F90];
        if (v93)
        {
          goto LABEL_30;
        }
      }

      (*(v140 + 8))(v67, v120);
    }

    else
    {
      (*(v140 + 8))(v123, v120);
    }

    v70[4] = 0;
    *v70 = 0u;
    *(v70 + 1) = 0u;
    return;
  }

  sub_226B905C4(v22);
  if (qword_28105F708 != -1)
  {
LABEL_45:
    swift_once();
  }

  v30 = sub_226D6E07C();
  __swift_project_value_buffer(v30, qword_28105F710);
  v31 = sub_226D6E05C();
  v32 = sub_226D6E9CC();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v138;
  if (v33)
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_226AB4000, v31, v32, "Failed to compute the next background refresh date", v35, 2u);
    MEMORY[0x22AA8BEE0](v35, -1, -1);
  }

  v34[4] = 0;
  *v34 = 0u;
  *(v34 + 1) = 0u;
}

uint64_t sub_226B8B904(unint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v81 = a2;
  v82 = a4;
  v63 = a1;
  v76 = sub_226D6D52C();
  v62 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v80 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = &v61 - v8;
  v9 = sub_226D67C0C();
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x28223BE20](v9);
  v75 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v4[13];
  v73 = v4[14];
  v70 = v4;
  v72 = __swift_project_boxed_opaque_existential_1(v4 + 10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68C8, &qword_226D74270);
  v13 = sub_226D6B7FC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v66 = v12;
  v67 = v15;
  v17 = swift_allocObject();
  v83 = xmmword_226D70840;
  *(v17 + 16) = xmmword_226D70840;
  v18 = *MEMORY[0x277CC8008];
  v19 = *(v14 + 104);
  v68 = v13;
  v64 = v19;
  v19((v17 + v16), v18, v13);
  sub_226D6B80C();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
  v20 = swift_allocObject();
  *(v20 + 16) = v83;
  *(v20 + 32) = v81;
  *(v20 + 40) = a3;
  v71 = a3;

  v21 = v74;
  v22 = sub_226D6C15C();

  if (!v21)
  {
    v65 = 0;
    v74 = sub_226AE4C9C(v22);

    v23 = v70[13];
    v73 = v70[14];
    v72 = __swift_project_boxed_opaque_existential_1(v70 + 10, v23);
    v24 = v67;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_226D71840;
    v26 = v25 + v16;
    v27 = v68;
    v28 = v64;
    v64(v26, *MEMORY[0x277CC8010], v68);
    v28(&v24[v26], *MEMORY[0x277CC8000], v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8C20, &qword_226D72160);
    v29 = sub_226D6B81C();
    v30 = *(v29 - 8);
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v83;
    (*(v30 + 104))(v32 + v31, *MEMORY[0x277CC8018], v29);
    v33 = swift_allocObject();
    *(v33 + 16) = v83;
    *(v33 + 32) = v81;
    *(v33 + 40) = v71;

    v22 = v72;
    v34 = v65;
    v35 = sub_226D6C15C();
    v65 = v34;
    if (v34)
    {
    }

    else
    {
      v37 = v35;

      v38 = sub_226AE4C9C(v37);

      sub_226B8C098(v38, v74);
      v82 = v39;
      v84 = MEMORY[0x277D84F90];
      v40 = v63;
      if (v63 >> 62)
      {
        goto LABEL_35;
      }

      for (i = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
      {
        v42 = v78;
        if (!i)
        {
          break;
        }

        v43 = 0;
        v68 = v40 & 0xFFFFFFFFFFFFFF8;
        v69 = v40 & 0xC000000000000001;
        v66 = i;
        v67 = (v40 + 32);
        v70 = (v82 + 56);
        v73 = (v62 + 8);
        v74 = v77 + 16;
        v72 = (v77 + 8);
        while (1)
        {
          if (v69)
          {
            v44 = MEMORY[0x22AA8AFD0](v43, v63);
          }

          else
          {
            if (v43 >= *(v68 + 16))
            {
              goto LABEL_34;
            }

            v44 = *&v67[8 * v43];
          }

          v81 = v44;
          v45 = __OFADD__(v43, 1);
          v46 = v43 + 1;
          if (v45)
          {
            break;
          }

          v71 = v46;
          v47 = 1 << *(v82 + 32);
          if (v47 < 64)
          {
            v48 = ~(-1 << v47);
          }

          else
          {
            v48 = -1;
          }

          v49 = v48 & *(v82 + 56);
          v50 = (v47 + 63) >> 6;

          v51 = 0;
          do
          {
            if (!v49)
            {
              v40 = v79;
              v53 = v80;
              while (1)
              {
                v52 = v51 + 1;
                if (__OFADD__(v51, 1))
                {
                  break;
                }

                if (v52 >= v50)
                {

                  sub_226D6EF6C();
                  sub_226D6EF9C();
                  sub_226D6EFAC();
                  sub_226D6EF7C();
                  goto LABEL_10;
                }

                v49 = v70[v52];
                ++v51;
                if (v49)
                {
                  v51 = v52;
                  goto LABEL_26;
                }
              }

              __break(1u);
              goto LABEL_33;
            }

            v52 = v51;
            v40 = v79;
            v53 = v80;
LABEL_26:
            v54 = __clz(__rbit64(v49));
            v49 &= v49 - 1;
            v55 = v77;
            v56 = v75;
            (*(v77 + 16))(v75, *(v82 + 48) + *(v77 + 72) * (v54 | (v52 << 6)), v42);
            v57 = v40;
            sub_226D67BDC();
            sub_226D69EBC();
            LODWORD(v83) = sub_226D6D4EC();
            v40 = *v73;
            v58 = v53;
            v59 = v76;
            (*v73)(v58, v76);
            v60 = v57;
            v42 = v78;
            (v40)(v60, v59);
            (*(v55 + 8))(v56, v42);
          }

          while ((v83 & 1) == 0);

LABEL_10:
          v43 = v71;
          if (v71 == v66)
          {
            v22 = v84;
            goto LABEL_31;
          }
        }

LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        ;
      }

      v22 = MEMORY[0x277D84F90];
LABEL_31:
    }
  }

  return v22;
}

void sub_226B8C098(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D67C0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v12.n128_f64[0] = MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4, v12);
      (*(v5 + 32))(v7, v14, v4);
      sub_226C26E88(v10, v7);
      (*(v5 + 8))(v10, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_226B8C2B4(uint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_226D6EDBC();
    sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
    sub_226AE59FC();
    sub_226D6E8DC();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_226AD3C20(v2);
      return;
    }

    while (1)
    {
      sub_226C264CC(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_226D6EE2C())
      {
        sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_226B8C49C(void **a1, void *a2, uint64_t a3)
{
  v5 = sub_226D67C0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v10 = v9;
  sub_226D67C1C();
  v11 = sub_226D6C12C();
  (*(v6 + 8))(v8, v5);
  return v11 & 1;
}

uint64_t sub_226B8C5CC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - v8;
  v10 = sub_226D6BD9C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v57 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - v20;
  if (sub_226B8E9C4(a1))
  {
    v50 = v6;
    v54 = v9;
    v22 = [a1 notificationSubscriptionObject];
    v23 = [a1 institutionObject];
    sub_226D6841C();

    sub_226D6BD8C();
    v24 = MEMORY[0x277CC8140];
    sub_226B8CC58(&qword_27D7A7250, MEMORY[0x277CC8140], MEMORY[0x277CC8150]);
    sub_226D6E53C();
    sub_226B8CC58(&qword_27D7A7258, v24, MEMORY[0x277CC8160]);
    sub_226D6F3DC();
    sub_226B8CC58(&qword_27D7A7260, v24, MEMORY[0x277CC8158]);
    sub_226D6ED2C();
    v53 = *(v11 + 8);
    v53(v15, v10);
    v25 = [a1 consentID];
    v26 = sub_226D6E39C();
    v55 = v27;
    v56 = v26;

    if (v22 && (v28 = [v22 subscriptionID]) != 0)
    {
      v29 = v28;
      v30 = sub_226D6E39C();
      v51 = v31;
      v52 = v30;
    }

    else
    {
      v51 = 0;
      v52 = 0;
    }

    (*(v11 + 16))(v57, v18, v10);
    if (v22)
    {
      v35 = [v22 registerRequestAttemptCount];
      v36 = [v22 lastRegisterRequestAttemptDate];
      if (v36)
      {
        v37 = v50;
        v38 = v36;
        sub_226D6D45C();

        v39 = 0;
      }

      else
      {
        v39 = 1;
        v37 = v50;
      }

      v42 = sub_226D6D4AC();
      (*(*(v42 - 8) + 56))(v37, v39, 1, v42);
      v43 = v37;
      v41 = v54;
      sub_226B72784(v43, v54);
    }

    else
    {
      v40 = sub_226D6D4AC();
      v41 = v54;
      (*(*(v40 - 8) + 56))(v54, 1, 1, v40);
      v35 = 0;
    }

    v44 = type metadata accessor for BankConnectNotificationEventsRegisterTask(0);
    sub_226D6D46C();

    v45 = v18;
    v46 = v53;
    v53(v45, v10);
    v46(v21, v10);
    v47 = v55;
    *a2 = v56;
    *(a2 + 1) = v47;
    v48 = v51;
    *(a2 + 2) = v52;
    *(a2 + 3) = v48;
    (*(v11 + 32))(&a2[v44[6]], v57, v10);
    *&a2[v44[7]] = v35;
    sub_226B72784(v41, &a2[v44[8]]);
    return (*(*(v44 - 1) + 56))(a2, 0, 1, v44);
  }

  else
  {
    v32 = type metadata accessor for BankConnectNotificationEventsRegisterTask(0);
    v33 = *(*(v32 - 8) + 56);

    return v33(a2, 1, 1, v32);
  }
}

uint64_t sub_226B8CB4C()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 5);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 15);

  return swift_deallocClassInstance();
}

uint64_t sub_226B8CC58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_226B8CCBC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_226B8CD4C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_226B8CD4C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_226D568FC(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_226B8CEB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_226AC484C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_226B8CF50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_226AC484C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_226B8CFE8(uint64_t a1, uint64_t a2, double a3)
{
  v5 = a1;
  v45 = a2;
  v46 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_226D6EDFC();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v53 = MEMORY[0x277D84F90];
  sub_226AE2510(0, v6 & ~(v6 >> 63), 0);
  v7 = v53;
  if (v46)
  {
    result = sub_226D6EDAC();
  }

  else
  {
    result = sub_226D6ED6C();
    v9 = *(v5 + 36);
  }

  v50 = result;
  v51 = v9;
  v52 = v46 != 0;
  if ((v6 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 < 0)
    {
      v11 = v5;
    }

    v41 = v5 + 56;
    v42 = v11;
    v39[1] = v3;
    v40 = v5 + 64;
    v43 = v6;
    v44 = v5;
    while (v10 < v6)
    {
      if (__OFADD__(v10++, 1))
      {
        goto LABEL_37;
      }

      v14 = v50;
      v15 = v51;
      v16 = v52;
      sub_226CCCCEC(v50, v51, v52, v5);
      v18 = v17;
      sub_226B89680(v17, v47, a3);

      v53 = v7;
      v20 = *(v7 + 16);
      v19 = *(v7 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_226AE2510((v19 > 1), v20 + 1, 1);
      }

      v21 = v48;
      v22 = v49;
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
      v24 = MEMORY[0x28223BE20](v23);
      v26 = v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v26, v24);
      sub_226B8CEB8(v20, v26, &v53, v21, v22);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v47);
      v7 = v53;
      if (v46)
      {
        if (!v16)
        {
          goto LABEL_42;
        }

        v28 = sub_226D6EDCC();
        v5 = v44;
        if (v28)
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v6 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7288, &qword_226D74970);
        v12 = sub_226D6E8CC();
        sub_226D6EE4C();
        result = v12(v47, 0);
        if (v10 == v6)
        {
LABEL_34:
          sub_226AE5444(v50, v51, v52);
          return v7;
        }
      }

      else
      {
        if (v16)
        {
          goto LABEL_43;
        }

        v5 = v44;
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        v29 = 1 << *(v44 + 32);
        if (v14 >= v29)
        {
          goto LABEL_38;
        }

        v30 = v14 >> 6;
        v31 = *(v41 + 8 * (v14 >> 6));
        if (((v31 >> v14) & 1) == 0)
        {
          goto LABEL_39;
        }

        if (*(v44 + 36) != v15)
        {
          goto LABEL_40;
        }

        v32 = v31 & (-2 << (v14 & 0x3F));
        if (v32)
        {
          v29 = __clz(__rbit64(v32)) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v33 = v30 << 6;
          v34 = v30 + 1;
          v35 = (v40 + 8 * v30);
          while (v34 < (v29 + 63) >> 6)
          {
            v37 = *v35++;
            v36 = v37;
            v33 += 64;
            ++v34;
            if (v37)
            {
              result = sub_226AE5444(v14, v15, 0);
              v29 = __clz(__rbit64(v36)) + v33;
              goto LABEL_33;
            }
          }

          result = sub_226AE5444(v14, v15, 0);
        }

LABEL_33:
        v38 = *(v5 + 36);
        v50 = v29;
        v51 = v38;
        v52 = 0;
        v6 = v43;
        if (v10 == v43)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_226B8D3E4(uint64_t a1, void *a2, void *a3)
{
  v87 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v98 = v75 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = v75 - v12;
  v86 = sub_226D6B9BC();
  v14 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v96 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_226D6D4AC();
  v16 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v95 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v94 = v75 - v19;
  v89 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v20 = sub_226D6EDFC();
  }

  else
  {
    v20 = *(a1 + 16);
  }

  v21 = MEMORY[0x277D84F90];
  if (!v20)
  {
    return v21;
  }

  v107 = MEMORY[0x277D84F90];
  v88 = v20;
  sub_226AE2510(0, v20 & ~(v20 >> 63), 0);
  v97 = v107;
  if (v89)
  {
    result = sub_226D6EDAC();
  }

  else
  {
    result = sub_226D6ED6C();
    v23 = *(a1 + 36);
  }

  v104 = result;
  v105 = v23;
  v106 = v89 != 0;
  v24 = v88;
  if ((v88 & 0x8000000000000000) == 0)
  {
    v83 = v8;
    v75[1] = v3;
    v25 = 0;
    v82 = (v16 + 16);
    v99 = (v16 + 56);
    v81 = (v14 + 32);
    v80 = (v16 + 32);
    v79 = (v16 + 8);
    v77 = a1 + 56;
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v26 = a1;
    }

    v78 = v26;
    v76 = a1 + 64;
    v85 = a2;
    v27 = v98;
    v84 = a1;
    v93 = v13;
    while (v25 < v24)
    {
      if (__OFADD__(v25++, 1))
      {
        goto LABEL_48;
      }

      v91 = v105;
      v92 = v104;
      v90 = v106;
      sub_226CCCCEC(v104, v105, v106, a1);
      v31 = v30;
      v32 = [a2 firstTransactionsRequestWindow];
      v33 = v32;
      if (v32)
      {
        [v32 doubleValue];
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      [a2 maxAgeTransactionsFirstRequest];
      v37 = v36;
      v38 = [v87 authorizedAt];
      v39 = v94;
      sub_226D6D45C();

      sub_226D69D5C();
      (*v82)(v95, v39, v100);
      v40 = [v31 earliestHistoricalTransactionsRequestStartDate];
      if (v40)
      {
        v41 = v40;
        sub_226D6D45C();

        v42 = 0;
      }

      else
      {
        v42 = 1;
      }

      v43 = *v99;
      v44 = 1;
      (*v99)(v13, v42, 1, v100);
      v45 = [v31 historicalTransactionsRequestAttemptCount];
      v46 = [v31 lastHistoricalTransactionsRequestAttemptDate];
      if (v46)
      {
        v47 = v46;
        sub_226D6D45C();

        v44 = 0;
      }

      v48 = 1;
      v43(v27, v44, 1, v100);
      v49 = [v31 oldestFetchedHistoricalTransactionTimestamp];
      v50 = v83;
      if (v49)
      {
        v51 = v49;
        sub_226D6D45C();

        v48 = 0;
      }

      v52 = v100;
      v43(v50, v48, 1, v100);
      Task = type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask(0);
      v102 = Task;
      v103 = sub_226B8CC58(&qword_27D7A7280, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask, &unk_226D76E98);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v101);
      (*v81)(boxed_opaque_existential_1, v96, v86);
      *(boxed_opaque_existential_1 + Task[5]) = v37;
      v55 = boxed_opaque_existential_1 + Task[6];
      *v55 = v35;
      v55[8] = v33 == 0;
      (*v80)(boxed_opaque_existential_1 + Task[7], v95, v52);
      sub_226B72784(v93, boxed_opaque_existential_1 + Task[8]);
      *(boxed_opaque_existential_1 + Task[9]) = v45;
      sub_226B72784(v98, boxed_opaque_existential_1 + Task[10]);
      sub_226B72784(v50, boxed_opaque_existential_1 + Task[11]);
      (*v79)(v94, v52);

      v107 = v97;
      v57 = *(v97 + 16);
      v56 = *(v97 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_226AE2510((v56 > 1), v57 + 1, 1);
      }

      v58 = v102;
      v59 = v103;
      v60 = __swift_mutable_project_boxed_opaque_existential_1(v101, v102);
      v61 = MEMORY[0x28223BE20](v60);
      v63 = v75 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v64 + 16))(v63, v61);
      sub_226B8CEB8(v57, v63, &v107, v58, v59);
      __swift_destroy_boxed_opaque_existential_0Tm(v101);
      v97 = v107;
      if (v89)
      {
        a2 = v85;
        a1 = v84;
        v27 = v98;
        result = v92;
        v13 = v93;
        if (!v90)
        {
          goto LABEL_53;
        }

        if (sub_226D6EDCC())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7288, &qword_226D74970);
        v28 = sub_226D6E8CC();
        sub_226D6EE4C();
        result = v28(v101, 0);
      }

      else
      {
        a2 = v85;
        a1 = v84;
        v27 = v98;
        result = v92;
        v13 = v93;
        if (v90)
        {
          goto LABEL_54;
        }

        if ((v92 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        v65 = 1 << *(v84 + 32);
        if (v92 >= v65)
        {
          goto LABEL_49;
        }

        v66 = v92 >> 6;
        v67 = *(v77 + 8 * (v92 >> 6));
        if (((v67 >> v92) & 1) == 0)
        {
          goto LABEL_50;
        }

        if (*(v84 + 36) != v91)
        {
          goto LABEL_51;
        }

        v68 = v67 & (-2 << (v92 & 0x3F));
        if (v68)
        {
          v65 = __clz(__rbit64(v68)) | v92 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v69 = v66 << 6;
          v70 = v66 + 1;
          v71 = (v76 + 8 * v66);
          while (v70 < (v65 + 63) >> 6)
          {
            v73 = *v71++;
            v72 = v73;
            v69 += 64;
            ++v70;
            if (v73)
            {
              result = sub_226AE5444(v92, v91, 0);
              v65 = __clz(__rbit64(v72)) + v69;
              goto LABEL_44;
            }
          }

          result = sub_226AE5444(v92, v91, 0);
        }

LABEL_44:
        v74 = *(a1 + 36);
        v104 = v65;
        v105 = v74;
        v106 = 0;
      }

      v24 = v88;
      if (v25 == v88)
      {
        sub_226AE5444(v104, v105, v106);
        return v97;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

void *sub_226B8DD2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = v49 - v4;
  sub_226D6842C();
  v6 = sub_226D6840C();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v7 = sub_226D6E91C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_226D71F40;
  *(v8 + 32) = v7;
  v9 = v7;
  *(v8 + 40) = MEMORY[0x22AA84480]();
  v10 = sub_226D6E5CC();

  v11 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v6 setPredicate_];
  v12 = v62;
  v13 = sub_226D6EBBC();
  v14 = v12;
  if (v12)
  {

    return v8;
  }

  v8 = MEMORY[0x277D84F90];
  v51 = v9;
  v62 = v5;
  v15 = v13;
  if (v13 >> 62)
  {
    goto LABEL_24;
  }

  v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v17 = v51;
  if (!v16)
  {
LABEL_25:

    return v8;
  }

LABEL_5:
  v49[1] = v14;
  v50 = v6;
  v55 = v2;
  v66 = v8;
  result = sub_226AE2510(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    v8 = v66;
    v20 = v15;
    v56 = v15 & 0xC000000000000001;
    v52 = v15 & 0xFFFFFFFFFFFFFF8;
    v53 = v16;
    v14 = v62;
    v54 = v15;
    while (1)
    {
      if (v56)
      {
        v21 = MEMORY[0x22AA8AFD0](v19, v20);
      }

      else
      {
        if ((v19 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          v16 = sub_226D6EDFC();
          v17 = v51;
          if (!v16)
          {
            goto LABEL_25;
          }

          goto LABEL_5;
        }

        if (v19 >= *(v52 + 16))
        {
          goto LABEL_23;
        }

        v21 = *(v20 + 8 * v19 + 32);
      }

      v22 = v21;
      v23 = [v21 id];
      v24 = sub_226D6E39C();
      v26 = v25;

      v27 = [v22 earliestUpdateRequestStartDate];
      v60 = v8;
      v61 = v19;
      v58 = v26;
      v59 = v24;
      if (v27)
      {
        v28 = v27;
        sub_226D6D45C();

        v29 = 0;
      }

      else
      {
        v29 = 1;
      }

      v6 = sub_226D6D4AC();
      v30 = *(*(v6 - 1) + 56);
      v31 = 1;
      v30(v14, v29, 1, v6);
      v32 = [v22 updateRequestAttemptCount];
      v33 = [v22 lastUpdateRequestAttemptDate];
      v57 = v32;
      if (v33)
      {
        v34 = v33;
        v2 = v55;
        sub_226D6D45C();

        v31 = 0;
      }

      else
      {
        v2 = v55;
      }

      v30(v2, v31, 1, v6);
      Task = type metadata accessor for BankConnectInstitutionDataFetchTask(0);
      v64 = Task;
      v65 = sub_226B8CC58(&qword_27D7A7270, type metadata accessor for BankConnectInstitutionDataFetchTask, &unk_226D74F78);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
      sub_226D6D46C();
      v37 = Task[6];
      v30(boxed_opaque_existential_1 + v37, 1, 1, v6);
      v38 = Task[8];
      v30(boxed_opaque_existential_1 + v38, 1, 1, v6);
      v39 = (boxed_opaque_existential_1 + Task[5]);
      v40 = v58;
      *v39 = v59;
      v39[1] = v40;
      sub_226B3E298(v62, boxed_opaque_existential_1 + v37);
      *(boxed_opaque_existential_1 + Task[7]) = v57;
      sub_226B3E298(v2, boxed_opaque_existential_1 + v38);

      v66 = v60;
      v15 = *(v60 + 16);
      v41 = *(v60 + 24);
      if (v15 >= v41 >> 1)
      {
        sub_226AE2510((v41 > 1), v15 + 1, 1);
      }

      v19 = v61 + 1;
      v42 = v64;
      v43 = v65;
      v44 = __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
      v45 = MEMORY[0x28223BE20](v44);
      v47 = v49 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v48 + 16))(v47, v45);
      sub_226B8CEB8(v15, v47, &v66, v42, v43);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      v8 = v66;
      v20 = v54;
      v14 = v62;
      if (v53 == v19)
      {

        return v8;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_226B8E328(unint64_t a1)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v1 - 8);
  v50 = &v44 - v2;
  v51 = sub_226D6B9BC();
  v45 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D68CBC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_226D69F0C();
  v47 = sub_226D69DDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_226D72B90;
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  *(v9 + 32) = sub_226D6E91C();
  *(v9 + 40) = sub_226D6E91C();
  v46 = "consentObject == nil";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_226D70840;
  (*(v6 + 104))(v8, *MEMORY[0x277CC75D0], v5);
  v11 = sub_226D68CAC();
  (*(v6 + 8))(v8, v5);
  v12 = MEMORY[0x277D83C10];
  *(v10 + 56) = MEMORY[0x277D83B88];
  *(v10 + 64) = v12;
  *(v10 + 32) = v11;
  v13 = v47;
  *(v9 + 48) = sub_226D6E91C();
  v14 = MEMORY[0x277D84F90];
  *(v9 + 56) = sub_226D6E91C();
  v15 = sub_226D6E5CC();

  v16 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v13 setPredicate_];
  v17 = v52;
  v18 = sub_226D6EBBC();
  if (v17)
  {

    return v9;
  }

  v19 = v18;
  v20 = v45;
  if (!(v18 >> 62))
  {
    v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_18:

    return MEMORY[0x277D84F90];
  }

  v21 = sub_226D6EDFC();
  if (!v21)
  {
    goto LABEL_18;
  }

LABEL_5:
  v46 = 0;
  v56 = v14;
  result = sub_226AE2510(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v9 = v56;
    v48 = (v20 + 32);
    v49 = v19 & 0xC000000000000001;
    v52 = v4;
    do
    {
      if (v49)
      {
        v24 = MEMORY[0x22AA8AFD0](v23, v19);
      }

      else
      {
        v24 = *(v19 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = v51;
      v27 = v21;
      sub_226D69D5C();
      v28 = [v25 earliestAccountValidationStartDate];
      if (v28)
      {
        v29 = v50;
        v30 = v28;
        sub_226D6D45C();

        v31 = 0;
      }

      else
      {
        v31 = 1;
        v29 = v50;
      }

      v32 = sub_226D6D4AC();
      (*(*(v32 - 8) + 56))(v29, v31, 1, v32);
      v33 = type metadata accessor for BankConnectAccountValidationTask(0);
      v54 = v33;
      v55 = sub_226B8CC58(&qword_27D7A70B8, type metadata accessor for BankConnectAccountValidationTask, &unk_226D74150);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
      (*v48)(boxed_opaque_existential_1, v52, v26);
      sub_226B72784(v29, boxed_opaque_existential_1 + *(v33 + 20));
      v56 = v9;
      v36 = *(v9 + 16);
      v35 = *(v9 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_226AE2510((v35 > 1), v36 + 1, 1);
      }

      ++v23;
      v37 = v54;
      v38 = v55;
      v39 = __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
      v40 = MEMORY[0x28223BE20](v39);
      v42 = &v44 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v42, v40);
      sub_226B8CEB8(v36, v42, &v56, v37, v38);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      v9 = v56;
      v21 = v27;
    }

    while (v27 != v23);

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_226B8E9C4(void *a1)
{
  v2 = sub_226D6BD9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v21 - v8;
  v10 = [a1 institutionObject];
  sub_226D6841C();

  v11 = [a1 notificationSubscriptionObject];
  if (!v11)
  {
    v16 = MEMORY[0x277CC8140];
    sub_226B8CC58(&qword_27D7A7260, MEMORY[0x277CC8140], MEMORY[0x277CC8158]);
    sub_226D6ED4C();
    sub_226B8CC58(&qword_27D7A7268, v16, MEMORY[0x277CC8148]);
    v17 = sub_226D6E35C();
LABEL_6:
    v19 = *(v3 + 8);
    v19(v5, v2);
    v19(v9, v2);
    v15 = v17 ^ 1;
    return v15 & 1;
  }

  v12 = v11;
  v13 = [v11 subscriptionID];
  if (!v13)
  {
    v18 = MEMORY[0x277CC8140];
    sub_226B8CC58(&qword_27D7A7260, MEMORY[0x277CC8140], MEMORY[0x277CC8158]);
    sub_226D6ED4C();
    sub_226B8CC58(&qword_27D7A7268, v18, MEMORY[0x277CC8148]);
    v17 = sub_226D6E35C();

    goto LABEL_6;
  }

  sub_226D6C57C();
  sub_226B8CC58(&qword_27D7A7250, MEMORY[0x277CC8140], MEMORY[0x277CC8150]);
  sub_226D6E53C();
  sub_226D6E53C();

  v14 = *(v3 + 8);
  v14(v5, v2);
  v14(v9, v2);
  v15 = v21[3] != v21[2];
  return v15 & 1;
}

void *sub_226B8ECF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v46 - v4;
  v51 = sub_226D6D52C();
  v6 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6826C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277CC7220], v9, v11);
  v14 = sub_226D6A03C();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_226D6C5BC();
  v15 = sub_226D6C59C();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v16 = MEMORY[0x277D84F90];
  v17 = sub_226D6E91C();
  [v15 setPredicate_];

  v18 = a1;
  v19 = sub_226D6EBBC();
  if (v1)
  {

    return v18;
  }

  v47 = v15;
  v20 = v19;
  if (!(v19 >> 62))
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v47;
    if (v21)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  v21 = sub_226D6EDFC();
  v22 = v47;
  if (!v21)
  {
LABEL_19:

    return MEMORY[0x277D84F90];
  }

LABEL_6:
  v46[1] = 0;
  v55 = v16;
  result = sub_226AE2510(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v18 = v55;
    v25 = v20;
    v48 = v20 & 0xC000000000000001;
    v49 = v21;
    v26 = (v6 + 32);
    v50 = v20;
    do
    {
      if (v48)
      {
        v27 = MEMORY[0x22AA8AFD0](v24, v25);
      }

      else
      {
        v27 = *(v25 + 8 * v24 + 32);
      }

      v28 = v27;
      v29 = [v27 id];
      sub_226D6D4FC();

      v30 = [v28 unregisterRequestAttemptCount];
      v31 = [v28 lastUnregisterRequestAttemptDate];
      if (v31)
      {
        v32 = v31;
        sub_226D6D45C();

        v33 = 0;
      }

      else
      {
        v33 = 1;
      }

      v34 = sub_226D6D4AC();
      (*(*(v34 - 8) + 56))(v5, v33, 1, v34);
      v35 = type metadata accessor for BankConnectNotificationEventsUnregisterTask(0);
      v53 = v35;
      v54 = sub_226B8CC58(&qword_27D7A6980, type metadata accessor for BankConnectNotificationEventsUnregisterTask, &unk_226D723E8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
      sub_226D6D46C();

      (*v26)(boxed_opaque_existential_1, v8, v51);
      *(boxed_opaque_existential_1 + *(v35 + 20)) = v30;
      sub_226B72784(v5, boxed_opaque_existential_1 + *(v35 + 24));
      v55 = v18;
      v38 = *(v18 + 16);
      v37 = *(v18 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_226AE2510((v37 > 1), v38 + 1, 1);
      }

      ++v24;
      v39 = v53;
      v40 = v54;
      v41 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
      v42 = MEMORY[0x28223BE20](v41);
      v44 = v46 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v45 + 16))(v44, v42);
      sub_226B8CEB8(v38, v44, &v55, v39, v40);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      v18 = v55;
      v25 = v50;
    }

    while (v49 != v24);

    return v18;
  }

  __break(1u);
  return result;
}

void *sub_226B8F28C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v1 - 8);
  v73 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v56 - v4;
  v79 = sub_226D6D4AC();
  v6 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v56 - v9;
  v10 = sub_226D6826C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *MEMORY[0x277CC7220], v10, v12);
  v15 = sub_226D6A03C();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v62 = v5;
    v16 = sub_226D6C5BC();
    v17 = sub_226D6C59C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_226D71F30;
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    *(v18 + 32) = sub_226D6E91C();
    *(v18 + 40) = sub_226D6E91C();
    *(v18 + 48) = sub_226D6E91C();
    v19 = sub_226D6E5CC();

    v20 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v17 setPredicate_];
    v21 = sub_226D6EBBC();
    if (v0)
    {
    }

    else
    {
      v22 = v21;
      v56 = v17;
      if (v21 >> 62)
      {
        goto LABEL_34;
      }

      for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
      {
        v24 = v62;
        v58 = 0;
        if (!i)
        {
          break;
        }

        v25 = 0;
        v64 = v22 & 0xC000000000000001;
        v63 = v22 & 0xFFFFFFFFFFFFFF8;
        v65 = (v6 + 32);
        v72 = (v6 + 56);
        v57 = (v6 + 48);
        v16 = MEMORY[0x277D84F90];
        v60 = v22;
        v59 = i;
        while (1)
        {
          if (v64)
          {
            v26 = MEMORY[0x22AA8AFD0](v25, v22);
          }

          else
          {
            if (v25 >= *(v63 + 16))
            {
              goto LABEL_33;
            }

            v26 = *(v22 + 8 * v25 + 32);
          }

          v27 = v26;
          v28 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          v29 = [v26 subscriptionID];
          if (v29)
          {
            v30 = v29;
            v31 = sub_226D6E39C();
            v33 = v32;

            v34 = [v27 lastFetchedAt];
            v68 = v33;
            v69 = v31;
            if (v34)
            {
              v35 = v61;
              v36 = v34;
              sub_226D6D45C();

              v37 = *v65;
              v38 = v35;
              v39 = v79;
              (*v65)(v24, v38, v79);
              v40 = *v72;
              (*v72)(v24, 0, 1, v39);
              v37(v74, v24, v39);
            }

            else
            {
              v40 = *v72;
              v41 = v79;
              (*v72)(v24, 1, 1, v79);
              sub_226D6D39C();
              if ((*v57)(v24, 1, v41) != 1)
              {
                sub_226B905C4(v24);
              }
            }

            v42 = [v27 updateSequenceNumber];
            v43 = [v27 requestAttemptCount];
            v44 = [v27 lastRequestAttemptDate];
            v70 = v25 + 1;
            v71 = v16;
            v66 = v42;
            v67 = v43;
            if (v44)
            {
              v45 = v44;
              sub_226D6D45C();

              v46 = 0;
            }

            else
            {
              v46 = 1;
            }

            v47 = v73;
            v48 = v79;
            v40(v73, v46, 1, v79);
            Task = type metadata accessor for BankConnectNotificationEventsFetchTask(0);
            v76 = Task;
            v77 = sub_226B8CC58(&qword_27D7A7238, type metadata accessor for BankConnectNotificationEventsFetchTask, &unk_226D79588);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v75);
            sub_226D6D46C();
            v6 = Task[8];
            v40(boxed_opaque_existential_1 + v6, 1, 1, v48);
            v51 = v68;
            *boxed_opaque_existential_1 = v69;
            boxed_opaque_existential_1[1] = v51;
            v52 = v65;
            *(boxed_opaque_existential_1 + Task[6]) = v66;
            (*v52)(boxed_opaque_existential_1 + Task[5], v74, v48);
            *(boxed_opaque_existential_1 + Task[7]) = v67;
            sub_226B3E298(v47, boxed_opaque_existential_1 + v6);

            sub_226AC484C(&v75, v78);
            v16 = v71;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_226BBB984(0, v16[2] + 1, 1, v16);
            }

            v28 = v70;
            v54 = v16[2];
            v53 = v16[3];
            v24 = v62;
            if (v54 >= v53 >> 1)
            {
              v16 = sub_226BBB984((v53 > 1), v54 + 1, 1, v16);
            }

            v16[2] = v54 + 1;
            sub_226AC484C(v78, &v16[5 * v54 + 4]);
            v22 = v60;
            i = v59;
          }

          else
          {
          }

          ++v25;
          if (v28 == i)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        ;
      }

      v16 = MEMORY[0x277D84F90];
LABEL_30:
    }
  }

  else
  {
    v58 = v0;
    return MEMORY[0x277D84F90];
  }

  return v16;
}

char *sub_226B8FA80(uint64_t a1)
{
  v59 = a1;
  v57 = sub_226D6D4AC();
  v53 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v58 = v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v61 = v51 - v3;
  v4 = sub_226D6A30C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = sub_226D6794C();
  v8 = sub_226D678BC();
  [v8 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_226D71F40;
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  *(v9 + 32) = sub_226D6E91C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_226D70840;
  (*(v5 + 104))(v7, *MEMORY[0x277CC7B60], v4);
  v11 = sub_226D6A2FC();
  (*(v5 + 8))(v7, v4);
  v12 = MEMORY[0x277D849A0];
  *(v10 + 56) = MEMORY[0x277D84958];
  *(v10 + 64) = v12;
  *(v10 + 32) = v11;
  *(v9 + 40) = sub_226D6E91C();
  v13 = sub_226D6E5CC();

  v14 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v8 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_226D71840;
  v16 = MEMORY[0x277D837D0];
  *(v15 + 32) = 0x49746E65736E6F63;
  *(v15 + 40) = 0xE900000000000044;
  *(v15 + 88) = v16;
  *(v15 + 56) = v16;
  *(v15 + 64) = 0xD000000000000022;
  *(v15 + 72) = 0x8000000226D80EB0;
  v17 = sub_226D6E5CC();

  [v8 setPropertiesToFetch_];

  v18 = sub_226D6E5CC();
  [v8 setRelationshipKeyPathsForPrefetching_];

  v19 = v60;
  v20 = sub_226D6EBBC();
  if (v19)
  {
  }

  else
  {
    v21 = v20;
    v22 = v53;
    v52 = v8;
    if (v20 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
    {
      v24 = v58;
      v25 = v61;
      v51[1] = 0;
      if (!i)
      {
        break;
      }

      v26 = 0;
      v59 = v21 & 0xFFFFFFFFFFFFFF8;
      v60 = v21 & 0xC000000000000001;
      v53 = (v22 + 8);
      v54 = (v22 + 32);
      v7 = MEMORY[0x277D84F90];
      v55 = i;
      v56 = v21;
      while (1)
      {
        if (v60)
        {
          v27 = MEMORY[0x22AA8AFD0](v26, v21);
        }

        else
        {
          if (v26 >= *(v59 + 16))
          {
            goto LABEL_24;
          }

          v27 = *(v21 + 8 * v26 + 32);
        }

        v28 = v27;
        v29 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        v30 = [v27 consentTokenIdentifiedAsOutdatedAt];
        if (v30)
        {
          v31 = v30;
          sub_226D6D45C();

          v32 = v25;
          v33 = v57;
          (*v54)(v32, v24, v57);
          v34 = [v28 institutionObject];
          [v34 consentSyncingOutdatedTokenWaitTimeout];

          v63 = type metadata accessor for BankConnectConsentTokenOutdatedTimeoutTask(0);
          v64 = sub_226B8CC58(&qword_27D7A7228, type metadata accessor for BankConnectConsentTokenOutdatedTimeoutTask, &unk_226D7DCF8);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v62);
          sub_226D6D3DC();
          v36 = [v28 consentID];
          v37 = sub_226D6E39C();
          v39 = v38;

          v40 = v33;
          v25 = v61;
          (*v53)(v61, v40);
          *boxed_opaque_existential_1 = v37;
          boxed_opaque_existential_1[1] = v39;
          sub_226AC484C(&v62, v65);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v68 = v7;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v7 = sub_226BBB984(0, v7[2] + 1, 1, v7);
            v68 = v7;
          }

          v43 = v7[2];
          v42 = v7[3];
          if (v43 >= v42 >> 1)
          {
            v7 = sub_226BBB984((v42 > 1), v43 + 1, 1, v7);
            v68 = v7;
          }

          v44 = v66;
          v22 = v67;
          v45 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
          v46 = MEMORY[0x28223BE20](v45);
          v48 = v51 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v49 + 16))(v48, v46);
          sub_226B8CF50(v43, v48, &v68, v44, v22);
          __swift_destroy_boxed_opaque_existential_0Tm(v65);
          v24 = v58;
          i = v55;
          v21 = v56;
        }

        else
        {
        }

        ++v26;
        if (v29 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v7 = MEMORY[0x277D84F90];
LABEL_21:
  }

  return v7;
}

void *sub_226B90214(void *a1)
{
  sub_226D69F0C();
  v3 = sub_226D69DDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D71F40;
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  *(v4 + 32) = sub_226D6E91C();
  *(v4 + 40) = sub_226D6E91C();
  v5 = sub_226D6E5CC();

  v6 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v3 setPredicate_];
  v7 = sub_226D6EBBC();
  if (v1)
  {
  }

  else
  {
    v8 = v7;
    if (v7 >> 62)
    {
      goto LABEL_20;
    }

    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v3; v9; i = v3)
    {
      v10 = 0;
      v27 = v8 & 0xFFFFFFFFFFFFFF8;
      v28 = v8 & 0xC000000000000001;
      a1 = MEMORY[0x277D84F90];
      v25 = v9;
      v26 = v8;
      while (1)
      {
        if (v28)
        {
          v17 = MEMORY[0x22AA8AFD0](v10, v8);
        }

        else
        {
          if (v10 >= *(v27 + 16))
          {
            goto LABEL_19;
          }

          v17 = *(v8 + 8 * v10 + 32);
        }

        v18 = v17;
        v19 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v33 = v17;
        sub_226B8A320(&v33, &v29);

        if (v30)
        {
          sub_226AC484C(&v29, v32);
          sub_226AC484C(v32, &v29);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v34 = a1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            a1 = sub_226BBB984(0, a1[2] + 1, 1, a1);
            v34 = a1;
          }

          v22 = a1[2];
          v21 = a1[3];
          if (v22 >= v21 >> 1)
          {
            a1 = sub_226BBB984((v21 > 1), v22 + 1, 1, a1);
            v34 = a1;
          }

          v11 = v30;
          v12 = v31;
          v13 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
          v14 = MEMORY[0x28223BE20](v13);
          v3 = &i - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v16 + 16))(v3, v14);
          sub_226B8CF50(v22, v3, &v34, v11, v12);
          __swift_destroy_boxed_opaque_existential_0Tm(&v29);
          v9 = v25;
          v8 = v26;
        }

        ++v10;
        if (v19 == v9)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v9 = sub_226D6EDFC();
    }

    a1 = MEMORY[0x277D84F90];
LABEL_22:
  }

  return a1;
}

uint64_t sub_226B905C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226B9064C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectNotificationEventsRegisterTask(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t BankConnectServiceImplementation.loadAccount(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = v3;
  v7 = sub_226D6B9BC();
  v4[4] = v7;
  v4[5] = *(v7 - 8);
  v8 = swift_task_alloc();
  v4[6] = v8;
  v9 = swift_task_alloc();
  v4[7] = v9;
  *v9 = v4;
  v9[1] = sub_226B907DC;

  return sub_226C00808(v8, a2, a3);
}

uint64_t sub_226B907DC()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B90AE4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[9] = v3;
    *v3 = v2;
    v3[1] = sub_226B90950;
    v4 = v2[6];
    v5 = v2[2];

    return BankConnectServiceImplementation.loadAccount(for:)(v5, v4);
  }
}

uint64_t sub_226B90950()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_226B90B48;
  }

  else
  {
    v2 = sub_226B90A64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B90A64()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226B90AE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B90B48()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t BankConnectServiceImplementation.loadAccount(for:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_226D6764C();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_226D67C0C();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v6 = sub_226D6D4AC();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v7 = sub_226D6B9BC();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B90DFC, 0, 0);
}

uint64_t sub_226B90DFC()
{
  v55 = v0;
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v3 + 16);
  v0[23] = v7;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5, v2);
  __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
  v8 = sub_226D676AC();
  v0[25] = v8;
  sub_226D6D46C();
  v9 = swift_task_alloc();
  v9[2] = v8;
  v9[3] = v1;
  v9[4] = v4;
  sub_226D6EB7C();
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[9];
  v13 = v0[10];

  sub_226B91EA0(v10, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_226AC47B0(v0[13], &qword_27D7A6D50, &unk_226D75230);
    if (qword_27D7A5F60 != -1)
    {
      swift_once();
    }

    v14 = v0[21];
    v15 = v0[22];
    v16 = v0[18];
    v17 = sub_226D6E07C();
    v0[26] = __swift_project_value_buffer(v17, qword_27D7A7D10);
    v7(v14, v15, v16);
    v18 = sub_226D6E05C();
    v19 = sub_226D6E9AC();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[21];
    v23 = v0[18];
    v22 = v0[19];
    if (v20)
    {
      v24 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54[0] = v53;
      *v24 = 136315138;
      sub_226B42070(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
      v25 = sub_226D6F1CC();
      v27 = v26;
      v52 = v19;
      v28 = *(v22 + 8);
      v28(v21, v23);
      v29 = sub_226AC4530(v25, v27, v54);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_226AB4000, v18, v52, "Fetching account update for %s.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x22AA8BEE0](v53, -1, -1);
      MEMORY[0x22AA8BEE0](v24, -1, -1);
    }

    else
    {

      v28 = *(v22 + 8);
      v28(v21, v23);
    }

    v0[27] = v28;
    v42 = v0[7];
    v41 = v0[8];
    v43 = v0[6];
    v44 = __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
    v54[3] = &type metadata for BankConnectEnvironmentImplementation;
    v54[4] = sub_226B41FC0();
    v54[0] = swift_allocObject();
    sub_226B42014(v44, v54[0] + 16);
    v45 = sub_226D6B13C();
    swift_allocObject();
    v46 = sub_226D6B12C();
    v0[2] = v46;
    v0[28] = v46;
    (*(v42 + 104))(v41, *MEMORY[0x277CC6D38], v43);
    v47 = swift_task_alloc();
    v0[29] = v47;
    *v47 = v0;
    v47[1] = sub_226B913F8;
    v48 = v0[22];
    v49 = v0[8];
    v50 = v0[3];
    v51 = MEMORY[0x277CC7E10];

    return MEMORY[0x282119F10](v50, v48, v49, v45, v51);
  }

  else
  {
    v30 = v0[13];
    v32 = v0[10];
    v31 = v0[11];
    v33 = v0[9];
    v34 = v0[3];
    sub_226AC47B0(v0[14], &qword_27D7A6D50, &unk_226D75230);

    v35 = *(v32 + 32);
    v35(v31, v30, v33);
    v35(v34, v31, v33);
    v36 = v0[22];
    v37 = v0[19];
    v38 = v0[18];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v37 + 8))(v36, v38);

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_226B913F8()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {
    v3 = sub_226B916B8;
  }

  else
  {
    v3 = sub_226B9157C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226B9157C()
{
  v1 = v0[25];
  v2 = v0[14];
  sub_226B91CD4(v0[5], v0[22], v0[17]);

  sub_226AC47B0(v2, &qword_27D7A6D50, &unk_226D75230);
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[18];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_226B916B8()
{
  v35 = v0;
  v1 = *(v0 + 240);
  (*(v0 + 184))(*(v0 + 160), *(v0 + 176), *(v0 + 144));
  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9CC();

  if (os_log_type_enabled(v3, v4))
  {
    v32 = *(v0 + 216);
    v33 = *(v0 + 240);
    v5 = *(v0 + 160);
    v6 = *(v0 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v7 = 136315394;
    sub_226B42070(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
    v10 = sub_226D6F1CC();
    v12 = v11;
    v32(v5, v6);
    v13 = sub_226AC4530(v10, v12, &v34);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = v33;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_226AB4000, v3, v4, "Failed to update account for %s: %@.", v7, 0x16u);
    sub_226AC47B0(v8, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 216);
    v17 = *(v0 + 160);
    v18 = *(v0 + 144);

    v16(v17, v18);
  }

  v19 = *(v0 + 240);
  v20 = *(v0 + 200);
  v21 = *(v0 + 176);
  v22 = *(v0 + 136);
  v23 = *(v0 + 112);
  v24 = *(v0 + 40);
  v25 = sub_226D6A0DC();
  sub_226B42070(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
  swift_allocError();
  *v26 = v19;
  (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277CC7AB0], v25);
  swift_willThrow();
  sub_226B91CD4(v24, v21, v22);

  sub_226AC47B0(v23, &qword_27D7A6D50, &unk_226D75230);
  v27 = *(v0 + 176);
  v28 = *(v0 + 152);
  v29 = *(v0 + 144);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  (*(v28 + 8))(v27, v29);

  v30 = *(v0 + 8);

  return v30();
}

void sub_226B91A98(void *a1@<X0>, uint64_t a4@<X8>)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = [objc_opt_self() currentQueryGenerationToken];
  v19[0] = 0;
  v8 = [a1 setQueryGenerationFromToken:v7 error:v19];

  v9 = v19[0];
  if (v8)
  {
    sub_226D69F0C();
    v10 = v9;
    v11 = sub_226D69D9C();
    if (v4)
    {

LABEL_4:
      v12 = sub_226D67C0C();
      (*(*(v12 - 8) + 56))(a4, 1, 1, v12);
      return;
    }

    v14 = v11;
    if (!v11)
    {
      goto LABEL_4;
    }

    if (sub_226D69D4C())
    {
      v15 = sub_226D6D3EC();
      [v14 setLastAccountRefreshDate_];

      v19[0] = 0;
      if ([a1 save_])
      {
        v16 = v19[0];

        goto LABEL_4;
      }

      v18 = v19[0];
      sub_226D6D04C();

      swift_willThrow();
    }

    else
    {
      sub_226D67C1C();
      v17 = sub_226D67C0C();
      (*(*(v17 - 8) + 56))(a4, 0, 1, v17);
    }
  }

  else
  {
    v13 = v19[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226B91CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D46C();
  v8 = __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_226AE532C((v8 + 41), v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v9 = sub_226D6B97C();
  v11 = v10;
  sub_226D6D3BC();
  v13 = v12;
  v16[3] = &_s24InstitutionDurationEventVN;
  v16[4] = sub_226B420B8();
  v14 = swift_allocObject();
  v16[0] = v14;
  v14[2] = 0xD00000000000002BLL;
  v14[3] = 0x8000000226D81280;
  v14[4] = v9;
  v14[5] = v11;
  v14[6] = v13;
  sub_226D69AFC();
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

uint64_t sub_226B91EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BankConnectServiceImplementation.showBackgroundRefreshAlert(isFirstTimeAskingPermission:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_226B91F34, 0, 0);
}

uint64_t sub_226B91F34()
{
  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_27D7A7D10);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Attempting to show BackgroundRefreshAlert", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  v6 = sub_226D6BAAC();
  *(v0 + 24) = v6;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_226B920B8;
  v8 = *(v0 + 48);

  return sub_226B1757C(v8, v6);
}

uint64_t sub_226B920B8()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B921F4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_226B921F4()
{

  v1 = *(v0 + 8);

  return v1();
}

void BankConnectServiceImplementation.updateAccountBackgroundRefreshUserPreference(fullyQualifiedAccountIdentifiers:userPreference:asOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v4 = sub_226D676AC();
  sub_226D6EB8C();
}

id sub_226B922F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = sub_226D6BDEC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6BDDC();
  sub_226D6BDCC();
  if (v4)
  {
    return (*(v7 + 8))(v9, v6);
  }

  (*(v7 + 8))(v9, v6);
  v12[0] = 0;
  if ([a4 save_])
  {
    return v12[0];
  }

  v11 = v12[0];
  sub_226D6D04C();

  return swift_willThrow();
}

uint64_t sub_226B924B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B924D4, 0, 0);
}

uint64_t sub_226B924D4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7488, qword_226D74EA0);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7490, &qword_27D7A7488, qword_226D74EA0, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_27D7A7498, &qword_27D7A7488, qword_226D74EA0, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B92660;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B92660()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_226B9E338;
  }

  else
  {
    v2 = sub_226B9E32C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B92774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B92798, 0, 0);
}

uint64_t sub_226B92798()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7470, &qword_226D74E90);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7478, &qword_27D7A7470, &qword_226D74E90, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_27D7A7480, &qword_27D7A7470, &qword_226D74E90, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B92660;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B92924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B92948, 0, 0);
}

uint64_t sub_226B92948()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7458, &qword_226D74E80);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7460, &qword_27D7A7458, &qword_226D74E80, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_27D7A7468, &qword_27D7A7458, &qword_226D74E80, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B92660;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B92AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B92AF8, 0, 0);
}

uint64_t sub_226B92AF8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7450, &qword_226D74E70);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_281062C08, &qword_27D7A7450, &qword_226D74E70, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_281062C10, &qword_27D7A7450, &qword_226D74E70, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B92660;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B92C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B92CA8, 0, 0);
}

uint64_t sub_226B92CA8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7438, &qword_226D74E60);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7440, &qword_27D7A7438, &qword_226D74E60, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_27D7A7448, &qword_27D7A7438, &qword_226D74E60, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B92660;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B92E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B92E58, 0, 0);
}

uint64_t sub_226B92E58()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7430, &qword_226D74E50);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_281062BF8, &qword_27D7A7430, &qword_226D74E50, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_281062C00, &qword_27D7A7430, &qword_226D74E50, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B92660;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B92FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B93008, 0, 0);
}

uint64_t sub_226B93008()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7368, &qword_226D74DF0);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7370, &qword_27D7A7368, &qword_226D74DF0, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_27D7A7378, &qword_27D7A7368, &qword_226D74DF0, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B93194;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B93194()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_226B93338;
  }

  else
  {
    v2 = sub_226B932A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B932A8()
{
  (*(*(v0[5] - 8) + 104))(v0[6], *MEMORY[0x277CC67C0]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_226B93338()
{
  v1 = v0[8];
  v2 = v0[2];
  __swift_deallocate_boxed_opaque_existential_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
  v2[3] = v3;
  v2[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
  v2[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2);
  v5 = v1;
  sub_226D66FBC();
  (*(*(v3 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CC67B0], v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_226B934A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B934CC, 0, 0);
}

uint64_t sub_226B934CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7418, &qword_226D74E38);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7420, &qword_27D7A7418, &qword_226D74E38, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_27D7A7428, &qword_27D7A7418, &qword_226D74E38, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B92660;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B93658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B9367C, 0, 0);
}

uint64_t sub_226B9367C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7400, &qword_226D74E28);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7408, &qword_27D7A7400, &qword_226D74E28, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_27D7A7410, &qword_27D7A7400, &qword_226D74E28, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B92660;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B93808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B9382C, 0, 0);
}

uint64_t sub_226B9382C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A73E0, &qword_226D74E18);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A73E8, &qword_27D7A73E0, &qword_226D74E18, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_27D7A73F0, &qword_27D7A73E0, &qword_226D74E18, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B92660;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B939B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B939DC, 0, 0);
}

uint64_t sub_226B939DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A73C8, &qword_226D74E10);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A73D0, &qword_27D7A73C8, &qword_226D74E10, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_27D7A73D8, &qword_27D7A73C8, &qword_226D74E10, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B92660;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B93B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B93B8C, 0, 0);
}

uint64_t sub_226B93B8C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A73B0, &qword_226D74E08);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A73B8, &qword_27D7A73B0, &qword_226D74E08, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_27D7A73C0, &qword_27D7A73B0, &qword_226D74E08, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B92660;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B93D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B93D3C, 0, 0);
}

uint64_t sub_226B93D3C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7398, &qword_226D74E00);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A73A0, &qword_27D7A7398, &qword_226D74E00, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_27D7A73A8, &qword_27D7A7398, &qword_226D74E00, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B92660;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B93EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B93EEC, 0, 0);
}

uint64_t sub_226B93EEC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7380, &qword_226D74DF8);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7388, &qword_27D7A7380, &qword_226D74DF8, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_27D7A7390, &qword_27D7A7380, &qword_226D74DF8, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B92660;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B94078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B9409C, 0, 0);
}

uint64_t sub_226B9409C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7368, &qword_226D74DF0);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7370, &qword_27D7A7368, &qword_226D74DF0, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_27D7A7378, &qword_27D7A7368, &qword_226D74DF0, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B92660;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B94228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B9424C, 0, 0);
}

uint64_t sub_226B9424C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7350, &qword_226D74DE8);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7358, &qword_27D7A7350, &qword_226D74DE8, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_27D7A7360, &qword_27D7A7350, &qword_226D74DE8, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B92660;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B943D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B943FC, 0, 0);
}

uint64_t sub_226B943FC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7338, &qword_226D74DE0);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7340, &qword_27D7A7338, &qword_226D74DE0, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_27D7A7348, &qword_27D7A7338, &qword_226D74DE0, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B92660;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B94588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B945AC, 0, 0);
}

uint64_t sub_226B945AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7320, &qword_226D74DD8);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7328, &qword_27D7A7320, &qword_226D74DD8, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_27D7A7330, &qword_27D7A7320, &qword_226D74DD8, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B92660;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B94738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B9475C, 0, 0);
}

uint64_t sub_226B9475C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7308, &qword_226D74DD0);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A7310, &qword_27D7A7308, &qword_226D74DD0, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_27D7A7318, &qword_27D7A7308, &qword_226D74DD0, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B92660;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B948E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B9490C, 0, 0);
}

uint64_t sub_226B9490C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72F0, &qword_226D74DC8);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A72F8, &qword_27D7A72F0, &qword_226D74DC8, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_27D7A7300, &qword_27D7A72F0, &qword_226D74DC8, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B92660;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B94A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B94ABC, 0, 0);
}

uint64_t sub_226B94ABC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72D8, &qword_226D74DC0);
  v0[5] = v3;
  v1[3] = v3;
  v1[4] = sub_226AC4194(&qword_27D7A72E0, &qword_27D7A72D8, &qword_226D74DC0, MEMORY[0x277CC67D0]);
  v1[5] = sub_226AC4194(&qword_27D7A72E8, &qword_27D7A72D8, &qword_226D74DC0, MEMORY[0x277CC67C8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v0[6] = boxed_opaque_existential_1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_226B92660;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_226B94C48@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v327 = a3;
  v328 = a2;
  v290 = sub_226D6B81C();
  v289 = *(v290 - 8);
  MEMORY[0x28223BE20](v290);
  v288 = &v283 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = sub_226D6D4AC();
  v291 = *(v292 - 8);
  MEMORY[0x28223BE20](v292);
  v287 = &v283 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = v5;
  MEMORY[0x28223BE20](v6);
  v284 = &v283 - v7;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7298, &qword_226D74990);
  v303 = *(v304 - 8);
  v301 = *(v303 + 64);
  MEMORY[0x28223BE20](v304);
  v302 = &v283 - v8;
  v315 = sub_226D6C3CC();
  v309 = *(v315 - 8);
  MEMORY[0x28223BE20](v315);
  v316 = &v283 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = v9;
  MEMORY[0x28223BE20](v10);
  v307 = &v283 - v11;
  v314 = sub_226D6B82C();
  v306 = *(v314 - 8);
  v12 = *(v306 + 64);
  MEMORY[0x28223BE20](v314);
  v313 = &v283 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v311 = &v283 - v14;
  v317 = sub_226D6B8CC();
  v305 = *(v317 - 8);
  v15 = *(v305 + 64);
  MEMORY[0x28223BE20](v317);
  v312 = &v283 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v310 = &v283 - v17;
  v18 = sub_226D671FC();
  v321 = *(v18 - 8);
  v322 = v18;
  v19 = *(v321 + 64);
  MEMORY[0x28223BE20](v18);
  v319 = &v283 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v320 = &v283 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72A0, &unk_226D7C550);
  v318 = *(v22 - 8);
  v23 = *(v318 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v283 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v283 - v26;
  v28 = sub_226D6B9BC();
  v29 = *(v28 - 8);
  v325 = v28;
  v326 = v29;
  MEMORY[0x28223BE20](v28);
  v323 = v30;
  v324 = &v283 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_226D6832C();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v283 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72A8, &qword_226D74998) + 44));
  v36 = v35[1];
  v293 = *v35;
  v294 = v36;
  v37 = v35[3];
  v295 = v35[2];
  v296 = v37;
  v38 = v35[5];
  v297 = v35[4];
  v298 = v38;
  v39 = v35[6];
  LODWORD(v35) = v35[7];
  v299 = v39;
  v300 = v35;
  v40 = *(v32 + 16);
  v286 = a1;
  v40(v34, a1, v31);
  v41 = (*(v32 + 88))(v34, v31);
  if (v41 != *MEMORY[0x277CC7318])
  {
    if (v41 == *MEMORY[0x277CC7340])
    {
      (*(v32 + 96))(v34, v31);
      v47 = v325;
      v49 = v326 + 32;
      v48 = *(v326 + 32);
      v50 = v324;
      v48(v324, v34, v325);
      v51 = (*(v49 + 48) + 24) & ~*(v49 + 48);
      v52 = swift_allocObject();
      *(v52 + 16) = v328;
      v48((v52 + v51), v50, v47);
      v45 = swift_allocObject();
      *(v45 + 16) = &unk_226D74D90;
      *(v45 + 24) = v52;
      v46 = &unk_226D74DA0;
      goto LABEL_5;
    }

    if (v41 == *MEMORY[0x277CC7348])
    {
      (*(v32 + 96))(v34, v31);
      v55 = *v34;
      v323 = *(v34 + 1);
      v324 = v55;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72D0, &qword_226D74D60);
      v57 = v56[12];
      v58 = v56[16];
      LODWORD(v326) = v34[v56[20]];
      LODWORD(v325) = v34[v56[24]];
      sub_226B9DC00(&v34[v57], v27);
      v59 = v322;
      v61 = v321 + 32;
      v60 = *(v321 + 32);
      v62 = &v34[v58];
      v63 = v320;
      v60(v320, v62, v322);
      sub_226B9DC00(v27, v24);
      v64 = v319;
      v60(v319, v63, v59);
      v65 = (*(v318 + 80) + 40) & ~*(v318 + 80);
      v66 = (v23 + *(v61 + 48) + v65) & ~*(v61 + 48);
      v67 = swift_allocObject();
      v68 = v323;
      v69 = v324;
      *(v67 + 2) = v328;
      *(v67 + 3) = v69;
      *(v67 + 4) = v68;
      sub_226B9DC00(v24, &v67[v65]);
      v60(&v67[v66], v64, v59);
      v70 = &v67[v66 + v19];
      *v70 = v326;
      v70[1] = v325;
      v71 = swift_allocObject();
      *(v71 + 16) = &unk_226D74D70;
      *(v71 + 24) = v67;
      v72 = v327;
      *v327 = &unk_226D74D80;
      *(v72 + 8) = v71;
      *(v72 + 48) = 1;
    }

    if (v41 == *MEMORY[0x277CC7388])
    {
      (*(v32 + 96))(v34, v31);
      v73 = v320;
      v75 = v321 + 32;
      v74 = *(v321 + 32);
      v76 = v322;
      v74(v320, v34, v322);
      v77 = (*(v75 + 48) + 24) & ~*(v75 + 48);
      v78 = swift_allocObject();
      *(v78 + 16) = v328;
      v74((v78 + v77), v73, v76);
      v45 = swift_allocObject();
      *(v45 + 16) = &unk_226D74D48;
      *(v45 + 24) = v78;
      v46 = &unk_226D74D58;
      goto LABEL_5;
    }

    if (v41 == *MEMORY[0x277CC7338])
    {
      (*(v32 + 96))(v34, v31);
      v79 = v325;
      v81 = v326 + 32;
      v80 = *(v326 + 32);
      v82 = v324;
      v80(v324, v34, v325);
      v83 = (*(v81 + 48) + 24) & ~*(v81 + 48);
      v84 = swift_allocObject();
      *(v84 + 16) = v328;
      v80((v84 + v83), v82, v79);
      v45 = swift_allocObject();
      *(v45 + 16) = &unk_226D74D30;
      *(v45 + 24) = v84;
      v46 = &unk_226D74D38;
      goto LABEL_5;
    }

    if (v41 == *MEMORY[0x277CC7320])
    {
      (*(v32 + 96))(v34, v31);
      v86 = *v34;
      v85 = *(v34 + 1);
      v87 = swift_allocObject();
      v87[2] = v328;
      v87[3] = v86;
      v87[4] = v85;
      v45 = swift_allocObject();
      *(v45 + 16) = &unk_226D74D18;
      *(v45 + 24) = v87;
      v46 = &unk_226D74D20;
      goto LABEL_5;
    }

    if (v41 == *MEMORY[0x277CC7428])
    {
      (*(v32 + 96))(v34, v31);
      v88 = *v34;
      v89 = *(v34 + 1);
      v90 = v328;
      __swift_project_boxed_opaque_existential_1(v328 + 2, v328[5]);
      sub_226D6BAAC();
      v91 = sub_226D676AC();

      v92 = __swift_project_boxed_opaque_existential_1(v90 + 2, v90[5]);
      __swift_project_boxed_opaque_existential_1(v92 + 103, v92[106]);
      sub_226D098E8(v88, v89, v91);

      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
      v94 = v327;
      *(v327 + 24) = v93;
      *(v94 + 32) = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
      *(v94 + 40) = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v94);
      result = (*(*(v93 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CC67B8], v93);
      *(v94 + 48) = 0;
      return result;
    }

    if (v41 == *MEMORY[0x277CC73D8])
    {
      (*(v32 + 96))(v34, v31);
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72C8, &qword_226D74CE8);
      v97 = v96[12];
      v325 = *&v34[v96[16]];
      v98 = v96[20];
      v99 = v305 + 32;
      v326 = *(v305 + 32);
      (v326)(v310, v34, v317);
      v101 = v306 + 32;
      v100 = *(v306 + 32);
      v102 = v314;
      v100(v311, &v34[v97], v314);
      v103 = v309 + 32;
      v104 = &v34[v98];
      v105 = v307;
      v106 = v315;
      v107 = *(v309 + 32);
      v324 = v107;
      (v107)(v307, v104, v315);
      (v326)(v312, v310, v317);
      v100(v313, v311, v102);
      (v107)(v316, v105, v106);
      v108 = (*(v99 + 48) + 24) & ~*(v99 + 48);
      v109 = (v15 + *(v101 + 48) + v108) & ~*(v101 + 48);
      v110 = (v12 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
      v111 = (*(v103 + 48) + v110 + 8) & ~*(v103 + 48);
      v112 = swift_allocObject();
      *(v112 + 16) = v328;
      (v326)(v112 + v108, v312, v317);
      v100((v112 + v109), v313, v314);
      v113 = v324;
      *(v112 + v110) = v325;
      v113(v112 + v111, v316, v315);
      v114 = swift_allocObject();
      *(v114 + 16) = &unk_226D74CF8;
      *(v114 + 24) = v112;
      v115 = v327;
      *v327 = &unk_226D74D08;
      *(v115 + 8) = v114;
      *(v115 + 48) = 1;
    }

    if (v41 == *MEMORY[0x277CC73F8])
    {
      (*(v32 + 96))(v34, v31);
      v116 = *v34;
      v117 = swift_allocObject();
      *(v117 + 16) = v328;
      *(v117 + 24) = v116;
      v118 = swift_allocObject();
      *(v118 + 16) = &unk_226D74CD0;
      *(v118 + 24) = v117;
      v119 = &unk_226D74CE0;
      goto LABEL_22;
    }

    v121 = v328;
    if (v41 == *MEMORY[0x277CC73F0])
    {
      (*(v32 + 96))(v34, v31);
      v123 = *v34;
      v122 = *(v34 + 1);
      v124 = swift_allocObject();
      v124[2] = v121;
      v124[3] = v123;
      v124[4] = v122;
      v125 = swift_allocObject();
      *(v125 + 16) = &unk_226D74CB0;
      *(v125 + 24) = v124;
      v126 = &unk_226D74CC0;
    }

    else if (v41 == *MEMORY[0x277CC73E8])
    {
      (*(v32 + 96))(v34, v31);
      v128 = *v34;
      v127 = *(v34 + 1);
      v129 = swift_allocObject();
      v129[2] = v121;
      v129[3] = v128;
      v129[4] = v127;
      v125 = swift_allocObject();
      *(v125 + 16) = &unk_226D74C98;
      *(v125 + 24) = v129;
      v126 = &unk_226D74CA0;
    }

    else if (v41 == *MEMORY[0x277CC7400])
    {
      (*(v32 + 96))(v34, v31);
      v130 = v325;
      v132 = v326 + 32;
      v131 = *(v326 + 32);
      v133 = v324;
      v131(v324, v34, v325);
      v134 = (*(v132 + 48) + 24) & ~*(v132 + 48);
      v135 = swift_allocObject();
      *(v135 + 16) = v121;
      v131((v135 + v134), v133, v130);
      v125 = swift_allocObject();
      *(v125 + 16) = &unk_226D74C80;
      *(v125 + 24) = v135;
      v126 = &unk_226D74C88;
    }

    else if (v41 == *MEMORY[0x277CC7370])
    {
      (*(v32 + 96))(v34, v31);
      v137 = *v34;
      v136 = *(v34 + 1);
      v138 = swift_allocObject();
      v138[2] = v121;
      v138[3] = v137;
      v138[4] = v136;
      v125 = swift_allocObject();
      *(v125 + 16) = &unk_226D74C60;
      *(v125 + 24) = v138;
      v126 = &unk_226D74C70;
    }

    else if (v41 == *MEMORY[0x277CC73B0])
    {
      (*(v32 + 96))(v34, v31);
      v140 = *v34;
      v139 = *(v34 + 1);
      v141 = swift_allocObject();
      v141[2] = v121;
      v141[3] = v140;
      v141[4] = v139;
      v125 = swift_allocObject();
      *(v125 + 16) = &unk_226D74C48;
      *(v125 + 24) = v141;
      v126 = &unk_226D74C50;
    }

    else
    {
      if (v41 == *MEMORY[0x277CC73A0])
      {
        (*(v32 + 96))(v34, v31);
        v144 = v303 + 32;
        v143 = *(v303 + 32);
        v145 = v302;
        v146 = v304;
        v143(v302, v34, v304);
        v147 = (*(v144 + 48) + 24) & ~*(v144 + 48);
        v148 = swift_allocObject();
        *(v148 + 16) = v328;
        v143((v148 + v147), v145, v146);
        v45 = swift_allocObject();
        *(v45 + 16) = &unk_226D74C30;
        *(v45 + 24) = v148;
        v46 = &unk_226D74C38;
        goto LABEL_5;
      }

      if (v41 == *MEMORY[0x277CC7420])
      {
        (*(v32 + 96))(v34, v31);
        v150 = *v34;
        v149 = *(v34 + 1);
        v151 = swift_allocObject();
        v151[2] = v328;
        v151[3] = v150;
        v151[4] = v149;
        v45 = swift_allocObject();
        *(v45 + 16) = &unk_226D74C10;
        *(v45 + 24) = v151;
        v46 = &unk_226D74C20;
        goto LABEL_5;
      }

      if (v41 == *MEMORY[0x277CC73E0])
      {
        (*(v32 + 96))(v34, v31);
        v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72C0, &qword_226D74BE0);
        v153 = &v34[v152[12]];
        v154 = *v153;
        v324 = *(v153 + 1);
        v325 = v154;
        v155 = v152[16];
        LODWORD(v326) = *&v34[v152[20]];
        v156 = v320;
        v157 = v321 + 32;
        v158 = *(v321 + 32);
        v159 = v322;
        v158(v320, v34, v322);
        v160 = v309 + 32;
        v161 = *(v309 + 32);
        v162 = &v34[v155];
        v163 = v307;
        v164 = v315;
        v161(v307, v162, v315);
        v323 = v161;
        v158(v319, v156, v159);
        v161(v316, v163, v164);
        v165 = (*(v157 + 48) + 24) & ~*(v157 + 48);
        v166 = (v19 + v165 + 7) & 0xFFFFFFFFFFFFFFF8;
        v167 = (*(v160 + 48) + v166 + 16) & ~*(v160 + 48);
        v168 = (v308 + v167 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v169 = swift_allocObject();
        *(v169 + 16) = v328;
        v158((v169 + v165), v319, v159);
        v170 = (v169 + v166);
        v171 = v324;
        *v170 = v325;
        v170[1] = v171;
        v323((v169 + v167), v316, v164);
        *(v169 + v168) = v326;
        v172 = swift_allocObject();
        *(v172 + 16) = &unk_226D74BF0;
        *(v172 + 24) = v169;
        v173 = v327;
        *v327 = &unk_226D74C00;
        *(v173 + 8) = v172;
        *(v173 + 48) = 1;
      }

      if (v41 == *MEMORY[0x277CC73D0])
      {
        (*(v32 + 96))(v34, v31);
        v174 = *v34;
        v175 = swift_allocObject();
        *(v175 + 16) = v328;
        *(v175 + 24) = v174;
        v118 = swift_allocObject();
        *(v118 + 16) = &unk_226D74B90;
        *(v118 + 24) = v175;
        v119 = &unk_226D74B98;
        goto LABEL_22;
      }

      if (v41 != *MEMORY[0x277CC7410])
      {
        if (v41 == *MEMORY[0x277CC7438])
        {
          (*(v32 + 96))(v34, v31);
          v185 = *v34;
          v184 = *(v34 + 1);
          v186 = swift_allocObject();
          v186[2] = v328;
          v186[3] = v185;
          v186[4] = v184;
          v45 = swift_allocObject();
          *(v45 + 16) = &unk_226D74B48;
          *(v45 + 24) = v186;
          v46 = &unk_226D74B50;
          goto LABEL_5;
        }

        if (v41 == *MEMORY[0x277CC7350])
        {
          (*(v32 + 96))(v34, v31);
          v187 = v325;
          v189 = v326 + 32;
          v188 = *(v326 + 32);
          v190 = v324;
          v188(v324, v34, v325);
          v191 = (*(v189 + 48) + 24) & ~*(v189 + 48);
          v192 = swift_allocObject();
          *(v192 + 16) = v328;
          v188((v192 + v191), v190, v187);
          v45 = swift_allocObject();
          *(v45 + 16) = &unk_226D74B30;
          *(v45 + 24) = v192;
          v46 = &unk_226D74B38;
          goto LABEL_5;
        }

        if (v41 == *MEMORY[0x277CC7450])
        {
          (*(v32 + 96))(v34, v31);
          v194 = *v34;
          v193 = *(v34 + 1);
          v195 = swift_allocObject();
          v195[2] = v328;
          v195[3] = v194;
          v195[4] = v193;
          v45 = swift_allocObject();
          *(v45 + 16) = &unk_226D74B18;
          *(v45 + 24) = v195;
          v46 = &unk_226D74B20;
          goto LABEL_5;
        }

        if (v41 == *MEMORY[0x277CC7380])
        {
          (*(v32 + 96))(v34, v31);
          v196 = v325;
          v198 = v326 + 32;
          v197 = *(v326 + 32);
          v199 = v324;
          v197(v324, v34, v325);
          v200 = (*(v198 + 48) + 24) & ~*(v198 + 48);
          v201 = swift_allocObject();
          *(v201 + 16) = v328;
          v197((v201 + v200), v199, v196);
          v45 = swift_allocObject();
          *(v45 + 16) = &unk_226D74B00;
          *(v45 + 24) = v201;
          v46 = &unk_226D74B08;
          goto LABEL_5;
        }

        if (v41 == *MEMORY[0x277CC7430])
        {
          (*(v32 + 96))(v34, v31);
          v203 = *v34;
          v202 = *(v34 + 1);
          v204 = swift_allocObject();
          v204[2] = v328;
          v204[3] = v203;
          v204[4] = v202;
          v45 = swift_allocObject();
          *(v45 + 16) = &unk_226D74AE8;
          *(v45 + 24) = v204;
          v46 = &unk_226D74AF0;
          goto LABEL_5;
        }

        if (v41 == *MEMORY[0x277CC73C8])
        {
          (*(v32 + 96))(v34, v31);
          v206 = *v34;
          v205 = *(v34 + 1);
          v207 = swift_allocObject();
          v207[2] = v328;
          v207[3] = v206;
          v207[4] = v205;
          v45 = swift_allocObject();
          *(v45 + 16) = &unk_226D74AD0;
          *(v45 + 24) = v207;
          v46 = &unk_226D74AD8;
          goto LABEL_5;
        }

        if (v41 == *MEMORY[0x277CC7440])
        {
          (*(v32 + 96))(v34, v31);
          v209 = *v34;
          v208 = *(v34 + 1);
          v210 = swift_allocObject();
          v210[2] = v328;
          v210[3] = v209;
          v210[4] = v208;
          v45 = swift_allocObject();
          *(v45 + 16) = &unk_226D74AB8;
          *(v45 + 24) = v210;
          v46 = &unk_226D74AC0;
          goto LABEL_5;
        }

        if (v41 == *MEMORY[0x277CC7358])
        {
          (*(v32 + 96))(v34, v31);
          v211 = v325;
          v213 = v326 + 32;
          v212 = *(v326 + 32);
          v214 = v324;
          v212(v324, v34, v325);
          v215 = (*(v213 + 48) + 24) & ~*(v213 + 48);
          v216 = swift_allocObject();
          *(v216 + 16) = v328;
          v212((v216 + v215), v214, v211);
          v45 = swift_allocObject();
          *(v45 + 16) = &unk_226D74AA0;
          *(v45 + 24) = v216;
          v46 = &unk_226D74AA8;
          goto LABEL_5;
        }

        if (v41 == *MEMORY[0x277CC7360])
        {
          (*(v32 + 96))(v34, v31);
          v217 = v325;
          v219 = v326 + 32;
          v218 = *(v326 + 32);
          v220 = v324;
          v218(v324, v34, v325);
          v221 = (*(v219 + 48) + 24) & ~*(v219 + 48);
          v222 = swift_allocObject();
          *(v222 + 16) = v328;
          v218((v222 + v221), v220, v217);
          v45 = swift_allocObject();
          *(v45 + 16) = &unk_226D74A88;
          *(v45 + 24) = v222;
          v46 = &unk_226D74A90;
          goto LABEL_5;
        }

        if (v41 == *MEMORY[0x277CC73A8])
        {
          (*(v32 + 96))(v34, v31);
          v223 = v325;
          v225 = v326 + 32;
          v224 = *(v326 + 32);
          v226 = v324;
          v224(v324, v34, v325);
          v227 = (*(v225 + 48) + 24) & ~*(v225 + 48);
          v228 = swift_allocObject();
          *(v228 + 16) = v328;
          v224((v228 + v227), v226, v223);
          v45 = swift_allocObject();
          *(v45 + 16) = &unk_226D74A70;
          *(v45 + 24) = v228;
          v46 = &unk_226D74A78;
          goto LABEL_5;
        }

        if (v41 == *MEMORY[0x277CC7418])
        {
          (*(v32 + 96))(v34, v31);
          v229 = *v34;
          v230 = v34[8];
          v231 = swift_allocObject();
          *(v231 + 16) = v328;
          *(v231 + 24) = v229;
          *(v231 + 32) = v230;
          v45 = swift_allocObject();
          *(v45 + 16) = &unk_226D74A58;
          *(v45 + 24) = v231;
          v46 = &unk_226D74A60;
          goto LABEL_5;
        }

        if (v41 == *MEMORY[0x277CC7408])
        {
          (*(v32 + 96))(v34, v31);
          v233 = *v34;
          v232 = *(v34 + 1);
          v234 = swift_allocObject();
          v234[2] = v328;
          v234[3] = v233;
          v234[4] = v232;
          v45 = swift_allocObject();
          *(v45 + 16) = &unk_226D74A20;
          *(v45 + 24) = v234;
          v46 = &unk_226D74A30;
          goto LABEL_5;
        }

        if (v41 == *MEMORY[0x277CC7330])
        {
          (*(v32 + 96))(v34, v31);
          v236 = *v34;
          v235 = *(v34 + 1);
          v237 = swift_allocObject();
          v237[2] = v328;
          v237[3] = v236;
          v237[4] = v235;
          v45 = swift_allocObject();
          *(v45 + 16) = &unk_226D74A00;
          *(v45 + 24) = v237;
          v46 = &unk_226D74A10;
          goto LABEL_5;
        }

        if (v41 == *MEMORY[0x277CC7328])
        {
          (*(v32 + 96))(v34, v31);
          v238 = *v34;
          v239 = *(v34 + 1);
          v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72B8, &qword_226D749D8);
          v242 = v291 + 32;
          v241 = *(v291 + 32);
          v243 = v284;
          v244 = v292;
          v241(v284, &v34[*(v240 + 48)], v292);
          v245 = (*(v242 + 48) + 40) & ~*(v242 + 48);
          v246 = swift_allocObject();
          *(v246 + 2) = v328;
          *(v246 + 3) = v238;
          *(v246 + 4) = v239;
          v241(&v246[v245], v243, v244);
          v247 = swift_allocObject();
          *(v247 + 16) = &unk_226D749E8;
          *(v247 + 24) = v246;
          v248 = v327;
          *v327 = &unk_226D749F0;
          *(v248 + 8) = v247;
          *(v248 + 48) = 1;
        }

        if (v41 == *MEMORY[0x277CC7398])
        {
          (*(v32 + 96))(v34, v31);
          v249 = v320;
          v251 = v321 + 32;
          v250 = *(v321 + 32);
          v252 = v322;
          v250(v320, v34, v322);
          v253 = (*(v251 + 48) + 24) & ~*(v251 + 48);
          v254 = swift_allocObject();
          *(v254 + 16) = v328;
          v250((v254 + v253), v249, v252);
          v45 = swift_allocObject();
          *(v45 + 16) = &unk_226D74A40;
          *(v45 + 24) = v254;
          v46 = &unk_226D74A48;
          goto LABEL_5;
        }

        if (v41 != *MEMORY[0x277CC73B8])
        {
          if (v41 == *MEMORY[0x277CC7448])
          {
            (*(v32 + 96))(v34, v31);
            v257 = *v34;
            v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72B0, &qword_226D749A0);
            v259 = *(v258 + 64);
            v260 = v288;
            (*(v289 + 32))(v288, &v34[*(v258 + 48)], v290);
            v261 = &v34[v259];
            v262 = v287;
            (*(v291 + 32))(v287, v261, v292);
            __swift_project_boxed_opaque_existential_1(v328 + 2, v328[5]);
            v263 = sub_226D676AC();
            MEMORY[0x28223BE20](v263);
            *(&v283 - 4) = v257;
            *(&v283 - 3) = v260;
            v281 = v262;
            v282 = v264;
            sub_226D6EB8C();

            v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E38, &qword_226D73418);
            v270 = v327;
            *(v327 + 24) = v269;
            v270[4] = sub_226AC4194(&qword_281062BD8, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67D0]);
            v270[5] = sub_226AC4194(&qword_281062BE0, &qword_27D7A6E38, &qword_226D73418, MEMORY[0x277CC67C8]);
            v271 = __swift_allocate_boxed_opaque_existential_1(v270);
            (*(*(v269 - 8) + 104))(v271, *MEMORY[0x277CC67B8], v269);
            *(v327 + 48) = 0;
            (*(v291 + 8))(v287, v292);
            return (*(v289 + 8))(v288, v290);
          }

          if (v41 == *MEMORY[0x277CC7378])
          {
            v265 = swift_allocObject();
            v266 = v328;
            *(v265 + 16) = &unk_226D74BC8;
            *(v265 + 24) = v266;
            v267 = &unk_226D74BD8;
          }

          else if (v41 == *MEMORY[0x277CC73C0])
          {
            v265 = swift_allocObject();
            v268 = v328;
            *(v265 + 16) = &unk_226D74BA8;
            *(v265 + 24) = v268;
            v267 = &unk_226D74BB8;
          }

          else
          {
            if (v41 == *MEMORY[0x277CC7368])
            {
              v272 = swift_allocObject();
              *(v272 + 16) = v328;
              v273 = v294;
              *(v272 + 24) = v293;
              *(v272 + 28) = v273;
              v274 = v296;
              *(v272 + 32) = v295;
              *(v272 + 36) = v274;
              v275 = v298;
              *(v272 + 40) = v297;
              *(v272 + 44) = v275;
              v276 = v300;
              *(v272 + 48) = v299;
              *(v272 + 52) = v276;
              v277 = swift_allocObject();
              *(v277 + 16) = &unk_226D74B78;
              *(v277 + 24) = v272;
              v278 = v327;
              *v327 = &unk_226D74B80;
              *(v278 + 8) = v277;
              *(v278 + 48) = 1;
            }

            if (v41 != *MEMORY[0x277CC7390])
            {
              v329 = 0;
              v330 = 0xE000000000000000;
              sub_226D6EEFC();
              MEMORY[0x22AA8A510](0xD000000000000017, 0x8000000226D812F0);
              sub_226D6EFBC();
              result = sub_226D6F0AC();
              __break(1u);
              return result;
            }

            v265 = swift_allocObject();
            v279 = v328;
            *(v265 + 16) = &unk_226D749C8;
            *(v265 + 24) = v279;
            v267 = &unk_226D749D0;
          }

          v280 = v327;
          *v327 = v267;
          *(v280 + 8) = v265;
          *(v280 + 48) = 1;
        }

        (*(v32 + 96))(v34, v31);
        v255 = *v34;
        v256 = swift_allocObject();
        *(v256 + 16) = v328;
        *(v256 + 24) = v255;
        v118 = swift_allocObject();
        *(v118 + 16) = &unk_226D749B0;
        *(v118 + 24) = v256;
        v119 = &unk_226D749B8;
LABEL_22:
        v120 = v327;
        *v327 = v119;
        *(v120 + 8) = v118;
        *(v120 + 48) = 1;
      }

      (*(v32 + 96))(v34, v31);
      v176 = *v34;
      v177 = *(v34 + 1);
      v178 = v34[16];
      v179 = swift_allocObject();
      *(v179 + 16) = v328;
      *(v179 + 24) = v176;
      *(v179 + 32) = v177;
      *(v179 + 40) = v178;
      v180 = v294;
      *(v179 + 44) = v293;
      *(v179 + 48) = v180;
      v181 = v296;
      *(v179 + 52) = v295;
      *(v179 + 56) = v181;
      v182 = v298;
      *(v179 + 60) = v297;
      *(v179 + 64) = v182;
      v183 = v300;
      *(v179 + 68) = v299;
      *(v179 + 72) = v183;
      v125 = swift_allocObject();
      *(v125 + 16) = &unk_226D74B60;
      *(v125 + 24) = v179;
      v126 = &unk_226D74B68;
    }

    v142 = v327;
    *v327 = v126;
    *(v142 + 8) = v125;
    *(v142 + 48) = 1;
  }

  (*(v32 + 96))(v34, v31);
  v43 = *v34;
  v42 = *(v34 + 1);
  v44 = swift_allocObject();
  v44[2] = v328;
  v44[3] = v43;
  v44[4] = v42;
  v45 = swift_allocObject();
  *(v45 + 16) = &unk_226D74DB0;
  *(v45 + 24) = v44;
  v46 = &unk_226D74DB8;
LABEL_5:
  v53 = v327;
  *v327 = v46;
  *(v53 + 8) = v45;
  *(v53 + 48) = 1;
}

uint64_t sub_226B97630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v7 = sub_226D6B9BC();
  v4[4] = v7;
  v4[5] = *(v7 - 8);
  v8 = swift_task_alloc();
  v4[6] = v8;
  v9 = swift_task_alloc();
  v4[7] = v9;
  *v9 = v4;
  v9[1] = sub_226B97748;

  return sub_226C00808(v8, a3, a4);
}

uint64_t sub_226B97748()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B90AE4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[9] = v3;
    *v3 = v2;
    v3[1] = sub_226B90950;
    v4 = v2[6];
    v5 = v2[2];

    return BankConnectServiceImplementation.loadAccount(for:)(v5, v4);
  }
}

uint64_t sub_226B978C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.loadAccount(for:)(a1, a3);
}

uint64_t sub_226B97974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a8;
  v10 = a7;
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.connectAccounts(primaryAccountIdentifier:primaryPassAccountFQAI:institution:shouldConnectSecondaryAccounts:ignoreConnectedAccounts:)(a1, a3, a4, a5, a6, v10, v9);
}

uint64_t sub_226B97A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_226D6764C();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B97B24, 0, 0);
}

uint64_t sub_226B97B24()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1((*(v0 + 64) + 16), *(*(v0 + 64) + 40));
  sub_226D1F120((v0 + 16));
  v4 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  *(v0 + 144) = sub_226D6718C() & 1;
  (*(v2 + 104))(v1, *MEMORY[0x277CC6D38], v3);
  *(v0 + 104) = *v4;
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_226B97C38;
  v6 = *(v0 + 72);

  return sub_226D1392C(v6);
}

uint64_t sub_226B97C38(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  *(v3 + 120) = a1;

  v5 = swift_task_alloc();
  *(v3 + 128) = v5;
  *v5 = v4;
  v5[1] = sub_226B97DB8;
  v6 = *(v3 + 144);
  v7 = *(v3 + 96);
  v8 = *(v3 + 72);

  return sub_226D14A8C(a1, v8, v6, v7);
}

uint64_t sub_226B97DB8(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 136) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_226B97F34, 0, 0);
}

uint64_t sub_226B97F34()
{
  v1 = v0[17];
  v2 = v0[7];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  *v2 = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_226B97FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.getConsent(for:)(a1, a3);
}

uint64_t sub_226B9806C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.updateConsentStatus(forConsentID:)(a2, a3);
}

uint64_t sub_226B9811C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_226D6C3CC();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = *(v8 + 64);
  v6[11] = swift_task_alloc();
  v9 = sub_226D6B82C();
  v6[12] = v9;
  v10 = *(v9 - 8);
  v6[13] = v10;
  v6[14] = *(v10 + 64);
  v6[15] = swift_task_alloc();
  v11 = sub_226D6B8CC();
  v6[16] = v11;
  v12 = *(v11 - 8);
  v6[17] = v12;
  v6[18] = *(v12 + 64);
  v6[19] = swift_task_alloc();
  v13 = sub_226D6B8AC();
  v6[20] = v13;
  v6[21] = *(v13 - 8);
  v6[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B98310, 0, 0);
}

uint64_t sub_226B98310()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  __swift_project_boxed_opaque_existential_1((v0[3] + 16), *(v0[3] + 40));
  sub_226D6B8BC();
  v4 = sub_226D6B88C();
  v6 = v5;
  v0[23] = v5;
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  v0[24] = v7;
  v8 = sub_226B41FC0();
  *v7 = v0;
  v7[1] = sub_226B98420;

  return MEMORY[0x28211A3F8](v4, v6, &type metadata for BankConnectEnvironmentImplementation, v8);
}

uint64_t sub_226B98420(uint64_t a1)
{
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_226B98540, 0, 0);
}

uint64_t sub_226B98540()
{
  v1 = v0[17];
  v22 = v0[16];
  v23 = v0[19];
  v2 = v0[15];
  v20 = v0[18];
  v21 = v0[14];
  v4 = v0[12];
  v3 = v0[13];
  v24 = v4;
  v5 = v0[11];
  v25 = v2;
  v7 = v0[8];
  v6 = v0[9];
  v26 = v7;
  v27 = v5;
  v8 = v0[7];
  v9 = v0[5];
  v29 = v0[3];
  v30 = v0[6];
  (*(v1 + 16))();
  (*(v3 + 16))(v2, v9, v4);
  (*(v6 + 16))(v5, v8, v7);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = (v20 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (*(v3 + 80) + v11 + 8) & ~*(v3 + 80);
  v13 = (v21 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (*(v6 + 80) + v13 + 8) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v0[26] = v15;
  (*(v1 + 32))(v15 + v10, v23, v22);
  *(v15 + v11) = v29;
  (*(v3 + 32))(v15 + v12, v25, v24);
  *(v15 + v13) = v30;
  (*(v6 + 32))(v15 + v14, v27, v26);
  v28 = (*MEMORY[0x277CC7780] + MEMORY[0x277CC7780]);

  v16 = swift_task_alloc();
  v0[27] = v16;
  v17 = sub_226D682FC();
  *v16 = v0;
  v16[1] = sub_226B987A4;
  v18 = v0[2];

  return v28(v18, &unk_226D73A08, v15, v17);
}

uint64_t sub_226B987A4()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_226B988C0;
  }

  else
  {

    v2 = sub_226B51E6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B988C0()
{

  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_27D7A7D10);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 224);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to complete connection authorization: %@.", v7, 0xCu);
    sub_226B17298(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v11 = *(v0 + 224);

  v12 = sub_226D6C63C();
  sub_226B9E270();
  swift_allocError();
  *v13 = v11;
  (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277CC82C8], v12);
  swift_willThrow();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_226B98AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_226B98BA0;

  return BankConnectServiceImplementation.encrypt(_:)(a3);
}

uint64_t sub_226B98BA0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x2822009F8](sub_226B98CFC, 0, 0);
  }
}

uint64_t sub_226B98D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_226B98DD8;

  return BankConnectServiceImplementation.decrypt(accountPaymentInformation:)(a3, a4);
}

uint64_t sub_226B98DD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_226B98F24, 0, 0);
  }
}

uint64_t sub_226B98F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.loadGrantedAccounts(forConsentID:)(a2, a3);
}

uint64_t sub_226B98FF8(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.scheduleHistoricalTransactionTask(for:)(a2);
}

uint64_t sub_226B99098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_226B9914C;

  return BankConnectServiceImplementation.logo(forInstitutionID:)(a3, a4);
}

uint64_t sub_226B9914C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return MEMORY[0x2822009F8](sub_226B9924C, 0, 0);
}

uint64_t sub_226B99270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226B99294, 0, 0);
}

uint64_t sub_226B99294()
{
  v0[5] = __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40))[51];

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_226B99350;
  v3 = v0[3];
  v2 = v0[4];

  return MEMORY[0x28211A630](v3, v2);
}

uint64_t sub_226B99350()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226B99464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_226B99488, 0, 0);
}

uint64_t sub_226B99488()
{
  v1 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7298, &qword_226D74990);
  v2 = sub_226D6B60C();
  v3 = [v2 primaryAccountIdentifier];

  v4 = sub_226D6E39C();
  v6 = v5;

  v0[10] = v6;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_226D1F020(v0 + 2);
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v12 = (*(v8 + 8) + **(v8 + 8));
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_226B99630;
  v10 = v0[7];

  return v12(v10, v4, v6, v7, v8);
}

uint64_t sub_226B99630()
{

  return MEMORY[0x2822009F8](sub_226B99748, 0, 0);
}

uint64_t sub_226B99748()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B997AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_226B997D0, 0, 0);
}

uint64_t sub_226B997D0()
{
  __swift_project_boxed_opaque_existential_1((v0[8] + 16), *(v0[8] + 40));
  sub_226D1F020(v0 + 2);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v8 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_226B9991C;
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[7];

  return v8(v6, v4, v5, v1, v2);
}

uint64_t sub_226B9991C()
{

  return MEMORY[0x2822009F8](sub_226B9E33C, 0, 0);
}

uint64_t sub_226B99A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7)
{
  *(v7 + 112) = a7;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = sub_226D671FC();
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B99AE4, 0, 0);
}

uint64_t sub_226B99AE4()
{
  v33 = v0;
  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_27D7A7D10);
  (*(v2 + 16))(v1, v5, v3);

  v7 = sub_226D6E05C();
  v8 = sub_226D6E9AC();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);
  v12 = *(v0 + 64);
  if (v9)
  {
    v29 = *(v0 + 48);
    v30 = *(v0 + 40);
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v13 = 136315394;
    v14 = sub_226D671AC();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_226AC4530(v14, v16, &v32);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    if (v29)
    {
      v18 = v30;
    }

    else
    {
      v18 = 0x3E6C696E3CLL;
    }

    if (v29)
    {
      v19 = v4;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    v20 = sub_226AC4530(v18, v19, &v32);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_226AB4000, v7, v8, "Initiating consent for institutionID: %s with fpanID: %s.", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v31, -1, -1);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v21 = swift_task_alloc();
  *(v0 + 88) = v21;
  *v21 = v0;
  v21[1] = sub_226B99DA0;
  v22 = *(v0 + 48);
  v23 = *(v0 + 56);
  v24 = *(v0 + 32);
  v25 = *(v0 + 40);
  v26 = *(v0 + 16);
  v27 = *(v0 + 112);

  return sub_226BD5D38(v26, v24, v25, v22, v23, v27);
}

uint64_t sub_226B99DA0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 96) = v6;
    *v6 = v3;
    v6[1] = sub_226B99F1C;
    v7 = *(v2 + 16);

    return sub_226BD6E30(v7);
  }
}

uint64_t sub_226B99F1C()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B9A058, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_226B9A058()
{
  v1 = *(v0 + 16);
  v2 = sub_226D6B8CC();
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_226B9A0F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.offlineLabPermission()(a1);
}

uint64_t sub_226B9A198(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.offlineLabSharingPreference()(a1);
}

uint64_t sub_226B9A238(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.setOfflineLabSharingPermission(_:)(v3);
}

uint64_t sub_226B9A2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_226AE5A84;

  return sub_226BE1EB8(a2, a3, a4, a5);
}

uint64_t sub_226B9A39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a4;
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_226AE5A84;

  return sub_226BE239C(a2, a3, v13, a5, a6, a7, a8);
}

uint64_t sub_226B9A480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v6 = sub_226D6B9BC();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_226B9A598;

  return sub_226C00808(v7, a2, a3);
}

uint64_t sub_226B9A598()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B40E90, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[8] = v3;
    *v3 = v2;
    v3[1] = sub_226B40CFC;
    v4 = v2[5];

    return BankConnectServiceImplementation.loadPaymentInfo(for:)(v4);
  }
}

uint64_t sub_226B9A710(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.loadPaymentInfo(for:)(a2);
}

uint64_t sub_226B9A7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v6 = sub_226D6B9BC();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_226B9A8C8;

  return sub_226C00808(v7, a2, a3);
}

uint64_t sub_226B9A8C8()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B9E334, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[8] = v3;
    *v3 = v2;
    v3[1] = sub_226B9AA40;
    v4 = v2[5];

    return BankConnectServiceImplementation.loadScheduledPayments(for:)(v4);
  }
}

uint64_t sub_226B9AA40()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_226B9E330;
  }

  else
  {
    v2 = sub_226B9E328;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B9AB54(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.loadScheduledPayments(for:)(a2);
}

uint64_t sub_226B9ABF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.revokeConnectionAuthorization(forConsentID:)(a2, a3);
}

uint64_t sub_226B9ACA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.revokeConsents(forInstitutionID:)(a2, a3);
}

uint64_t sub_226B9AD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v6 = sub_226D6B9BC();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_226B9AE6C;

  return sub_226C00808(v7, a2, a3);
}

uint64_t sub_226B9AE6C()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B9E334, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[8] = v3;
    *v3 = v2;
    v3[1] = sub_226B9AA40;
    v4 = v2[5];

    return BankConnectServiceImplementation.loadTransactions(for:)(v4);
  }
}

uint64_t sub_226B9AFE4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.loadTransactions(for:)(a2);
}

uint64_t sub_226B9B084(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.disconnectAccount(with:)(a2);
}

uint64_t sub_226B9B124(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.validateAccountConnection(with:)(a2);
}

uint64_t sub_226B9B1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.classifyTransactions(with:forceClassification:)(a2, v4);
}

uint64_t sub_226B9B274(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_226B9B294, 0, 0);
}

uint64_t sub_226B9B294()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  sub_226D6BAAC();
  v2 = sub_226D676AC();

  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_226D6EB7C();

  v4 = v0[1];

  return v4();
}

uint64_t sub_226B9B394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_226B9B3B8, 0, 0);
}

uint64_t sub_226B9B3B8()
{
  v2 = v0[4];
  v1 = v0[5];
  __swift_project_boxed_opaque_existential_1((v0[3] + 16), *(v0[3] + 40));
  sub_226D6BAAC();
  v3 = sub_226D676AC();

  v4 = swift_task_alloc();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A73F8, &qword_226D74E20);
  sub_226D6EB8C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_226B9B4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_226AD827C;

  return BankConnectServiceImplementation.termsAndConditionsURL(forTermsAndConditionsID:)(a1, a3, a4);
}

uint64_t sub_226B9B594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_226B9B5B8, 0, 0);
}

uint64_t sub_226B9B5B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  sub_226D6BAAC();
  v5 = sub_226D676AC();

  v6 = swift_task_alloc();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v4;
  v6[6] = v1;
  sub_226D6EB7C();

  v7 = v0[1];

  return v7();
}

uint64_t sub_226B9B6CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.reevaluateBankConnectEligibility()();
}

uint64_t sub_226B9B760(uint64_t a1, char a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226AE5A84;

  return BankConnectServiceImplementation.showBackgroundRefreshAlert(isFirstTimeAskingPermission:)(a2);
}

uint64_t sub_226B9B800()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_226AE5A84;

  return sub_226B9B760(v2, v3);
}

uint64_t sub_226B9B89C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226B3FD70(a1, v4);
}

uint64_t sub_226B9B948()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226AE5A84;

  return sub_226B9B6CC();
}

uint64_t sub_226B9B9D8()
{
  v2 = *(sub_226D6D4AC() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_226AE5A84;

  return sub_226B9B594(v4, v5, v6, v0 + v3);
}

uint64_t sub_226B9BAC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AD827C;

  return sub_226B9B4D8(a1, v4, v5, v6);
}

uint64_t sub_226B9BB78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226B93658(a1, v5, v4);
}

uint64_t sub_226B9BC24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B9B394(a1, v4, v5, v6);
}

uint64_t sub_226B9BCD8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B93808(a1, v5, v4);
}

uint64_t sub_226B9BD84()
{
  v2 = *(sub_226D671FC() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9B274(v4, v0 + v3);
}

uint64_t sub_226B9BE5C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9B1C4(v2, v3, v4);
}

uint64_t sub_226B9BF04()
{
  v2 = *(sub_226D6B9BC() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9B124(v4, v0 + v3);
}

uint64_t sub_226B9BFDC()
{
  v2 = *(sub_226D6B9BC() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9B084(v4, v0 + v3);
}

uint64_t sub_226B9C0B4()
{
  v2 = *(sub_226D6B9BC() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9AFE4(v4, v0 + v3);
}

uint64_t sub_226B9C18C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9AD54(v2, v3, v4);
}

uint64_t sub_226B9C234()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9ACA4(v2, v3, v4);
}

uint64_t sub_226B9C2DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9ABF4(v2, v3, v4);
}

uint64_t sub_226B9C384()
{
  v2 = *(sub_226D6B9BC() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9AB54(v4, v0 + v3);
}

uint64_t sub_226B9C45C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9A7B0(v2, v3, v4);
}

uint64_t sub_226B9C504()
{
  v2 = *(sub_226D6B9BC() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9A710(v4, v0 + v3);
}

uint64_t sub_226B9C5DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9A480(v2, v3, v4);
}

uint64_t sub_226B9C684()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 44);
  v7 = *(v0 + 52);
  v8 = *(v0 + 60);
  v9 = *(v0 + 68);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_226AE5A84;

  return sub_226B9A39C(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_226B9C764()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_226AE5A84;

  return sub_226B9A2D8(v2, v3, v4, v5, v6);
}

uint64_t sub_226B9C820()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_226AE5A84;

  return sub_226B9A238(v2, v3);
}

uint64_t sub_226B9C8BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226B9A198(a1);
}

uint64_t sub_226B9C958(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B939B8(a1, v5, v4);
}

uint64_t sub_226B9CA04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226B9A0F8(a1);
}

uint64_t sub_226B9CAA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B93B68(a1, v5, v4);
}

uint64_t sub_226B9CB4C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_226D671FC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_226D6C3CC() - 8);
  v9 = (v7 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = v1 + v7;
  v12 = *(v1 + v7);
  v13 = *(v11 + 8);
  v14 = *(v1 + ((*(v8 + 64) + v9 + 1) & 0xFFFFFFFFFFFFFFFELL));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_226AE5A84;

  return sub_226B99A18(a1, v10, v1 + v6, v12, v13, v1 + v9, v14);
}

uint64_t sub_226B9CCEC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B93D18(a1, v5, v4);
}

uint64_t sub_226B9CD98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B997AC(a1, v4, v5, v6);
}

uint64_t sub_226B9CE4C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B93EC8(a1, v5, v4);
}

uint64_t sub_226B9CEF8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7298, &qword_226D74990) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B99464(a1, v6, v1 + v5);
}

uint64_t sub_226B9CFE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B99270(v2, v3, v4);
}

uint64_t sub_226B9D090(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B99098(a1, v4, v5, v6);
}

uint64_t sub_226B9D144(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B94078(a1, v5, v4);
}

uint64_t sub_226B9D1F0()
{
  v2 = *(sub_226D6B9BC() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B98FF8(v4, v0 + v3);
}