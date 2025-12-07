void sub_22CF1685C(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22D016B7C())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2318C5DE0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_22CF16990(uint64_t a1)
{
  v74 = sub_22D01483C();
  v77 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v3);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D01502C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v76 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v93 = &v71 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v92 = &v71 - v15;
  v91 = sub_22D014EFC();
  v86 = *(v91 - 8);
  v17 = MEMORY[0x28223BE20](v91, v16);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v85 = &v71 - v21;
  v97 = sub_22D0149AC();
  v90 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v22);
  v84 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3828, &qword_22D01BD10);
  v26 = MEMORY[0x28223BE20](v24 - 8, v25);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v71 - v30;
  if ((*(v1 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_hasActivityListenerEntitlement) & 1) == 0)
  {
    if (*(v1 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_hasRemoteActivityAccessorEntitlement) & 1) != 0 || (type metadata accessor for Activity(0), (sub_22D014F5C()))
    {
      v73 = v5;
      v71 = type metadata accessor for Activity(0);
      v32 = *(v71 + 28);
      v72 = a1;
      v33 = *(a1 + v32);
      v34 = *(v33 + 64);
      v89 = v33 + 64;
      v35 = 1 << *(v33 + 32);
      v36 = -1;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      v37 = v36 & v34;
      v94 = (v1 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier);
      v75 = (v35 + 63) >> 6;
      v78 = v90 + 32;
      v79 = v90 + 16;
      v38 = (v7 + 32);
      v95 = (v7 + 8);
      v87 = (v90 + 8);
      v83 = v33;

      v39 = 0;
      v96 = v6;
      v81 = v31;
      v82 = v19;
      v88 = v38;
      v80 = v28;
      v40 = v89;
      if (v37)
      {
        while (1)
        {
          v41 = v39;
LABEL_16:
          v44 = __clz(__rbit64(v37));
          v37 &= v37 - 1;
          v45 = v44 | (v41 << 6);
          v46 = v83;
          v47 = v90;
          (*(v90 + 16))(v84, *(v83 + 48) + *(v90 + 72) * v45, v97);
          v48 = v85;
          v49 = *(v46 + 56) + *(v86 + 72) * v45;
          v50 = MEMORY[0x277CB9790];
          sub_22CF1C294(v49, v85, MEMORY[0x277CB9790]);
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
          v52 = *(v51 + 48);
          v28 = v80;
          (*(v47 + 32))();
          sub_22CF0A794(v48, &v28[v52], v50);
          (*(*(v51 - 8) + 56))(v28, 0, 1, v51);
          v6 = v96;
          v31 = v81;
          v19 = v82;
          v38 = v88;
LABEL_17:
          sub_22CEF0368(v28, v31, &qword_27D9F3828, &qword_22D01BD10);
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
          if ((*(*(v53 - 8) + 48))(v31, 1, v53) == 1)
          {
            break;
          }

          sub_22CF0A794(&v31[*(v53 + 48)], v19, MEMORY[0x277CB9790]);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v55 = *v38;
          if (EnumCaseMultiPayload == 1)
          {
            v55(v93, v19, v6);
            if (sub_22D014F9C() == *v94 && v56 == v94[1])
            {

              (*v95)(v93, v6);
              goto LABEL_42;
            }

            v57 = sub_22D016DFC();

            (*v95)(v93, v6);
          }

          else
          {
            v55(v92, v19, v6);
            if (sub_22D014F9C() == *v94 && v58 == v94[1])
            {

              (*v95)(v92, v6);
LABEL_42:

              (*v87)(v31, v97);
              return;
            }

            v57 = sub_22D016DFC();

            (*v95)(v92, v6);
          }

          if (v57)
          {
            goto LABEL_42;
          }

          (*v87)(v31, v97);
          v40 = v89;
          if (!v37)
          {
            goto LABEL_8;
          }
        }

        v60 = *(v72 + *(v71 + 36));
        v61 = *(v60 + 16);
        if (!v61)
        {
          return;
        }

        v62 = 0;
        v97 = v60 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
        v93 = (v77 + 16);
        v63 = *MEMORY[0x277CB9348];
        v64 = (v77 + 8);
        v65 = (v77 + 96);
        v66 = v74;
        while (v62 < *(v60 + 16))
        {
          v67 = v77;
          v68 = v73;
          (*(v77 + 16))(v73, v97 + *(v77 + 72) * v62, v66);
          if ((*(v67 + 88))(v68, v66) == v63)
          {
            (*v65)(v68, v66);
            (*v88)(v76, v68, v96);
            if (sub_22D014F9C() == *v94 && v69 == v94[1])
            {

              (*v95)(v76, v96);
              return;
            }

            v70 = sub_22D016DFC();

            (*v95)(v76, v96);
            v66 = v74;
            if (v70)
            {
              return;
            }
          }

          else
          {
            (*v64)(v68, v66);
          }

          if (v61 == ++v62)
          {
            return;
          }
        }
      }

      else
      {
LABEL_8:
        if (v75 <= v39 + 1)
        {
          v42 = v39 + 1;
        }

        else
        {
          v42 = v75;
        }

        v43 = v42 - 1;
        while (1)
        {
          v41 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          if (v41 >= v75)
          {
            v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
            (*(*(v59 - 8) + 56))(v28, 1, 1, v59);
            v37 = 0;
            v39 = v43;
            goto LABEL_17;
          }

          v37 = *(v40 + 8 * v41);
          ++v39;
          if (v37)
          {
            v39 = v41;
            goto LABEL_16;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }
}

id sub_22CF17328(uint64_t a1, SEL *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() *a2];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_22D01416C();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_22CF173F4(void *a1, uint64_t a2, uint64_t a3)
{
  v170 = a3;
  v171 = a2;
  v163 = sub_22D015DDC();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163, v5);
  v161 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v160 = &v151 - v9;
  v155 = sub_22D01483C();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155, v10);
  v159 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_22D015D8C();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152, v12);
  v158 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D01430C();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v166 = &v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_22D015E0C();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157, v17);
  v153 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2700, &unk_22D01AEA0);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v164 = &v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v167 = &v151 - v24;
  v25 = sub_22D0162DC();
  MEMORY[0x28223BE20](v25 - 8, v26);
  v168 = &v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22D015C8C();
  v174 = *(v28 - 8);
  v175 = v28;
  v30 = MEMORY[0x28223BE20](v28, v29);
  v165 = &v151 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v169 = &v151 - v33;
  v34 = sub_22D0161DC();
  v178 = *(v34 - 8);
  v179 = v34;
  v36 = MEMORY[0x28223BE20](v34, v35);
  v173 = &v151 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v185 = &v151 - v39;
  v40 = sub_22D01459C();
  v41 = *(v40 - 8);
  v181 = v40;
  v182 = v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v45 = &v151 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v46);
  v172 = &v151 - v47;
  v184 = sub_22D015B6C();
  v177 = *(v184 - 8);
  v49 = MEMORY[0x28223BE20](v184, v48);
  v51 = &v151 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v49, v52);
  v183 = &v151 - v54;
  MEMORY[0x28223BE20](v53, v55);
  v176 = (&v151 - v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2358, &unk_22D018980);
  v59 = MEMORY[0x28223BE20](v57 - 8, v58);
  v61 = &v151 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59, v62);
  v64 = &v151 - v63;
  v65 = sub_22D0145EC();
  v66 = *(v65 - 8);
  v186 = v65;
  v187 = v66;
  v68 = MEMORY[0x28223BE20](v65, v67);
  v70 = &v151 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x28223BE20](v68, v71);
  v74 = &v151 - v73;
  v76 = MEMORY[0x28223BE20](v72, v75);
  v78 = &v151 - v77;
  MEMORY[0x28223BE20](v76, v79);
  v180 = &v151 - v80;
  v81 = type metadata accessor for Activity(0);
  result = sub_22D014F5C();
  if ((result & 1) == 0)
  {
    return result;
  }

  result = type metadata accessor for ActivityManagerEvent(0);
  if (*(a1 + *(result + 20)) <= 1u)
  {
    if (!*(a1 + *(result + 20)))
    {
      return result;
    }

    sub_22CF09E84(*(a1 + *(v81 + 36)), v64);
    v89 = v187;
    if ((*(v187 + 48))(v64, 1, v186) == 1)
    {
      v86 = &unk_27D9F2358;
      v87 = &unk_22D018980;
      v88 = v64;
      return sub_22CEEC3D8(v88, v86, v87);
    }

    v99 = v3;
    v100 = v180;
    (*(v89 + 32))();
    v101 = v172;
    sub_22D0145DC();
    v103 = v181;
    v102 = v182;
    v104 = (*(v182 + 11))(v101, v181);
    if (v104 == *MEMORY[0x277CB9218])
    {
      (*(v102 + 12))(v101, v103);
      v105 = *v101;
      v106 = *(v101 + 2);
      v107 = *(v101 + 3);
      v108 = v176;
      *v176 = v105;
      *(v108 + 2) = v106;
      v109 = MEMORY[0x277D4D558];
      v110 = 24;
    }

    else
    {
      if (v104 != *MEMORY[0x277CB9210])
      {
        if (v104 != *MEMORY[0x277CB9220])
        {
          if (qword_28143FB58 != -1)
          {
            swift_once();
          }

          v136 = sub_22D01637C();
          __swift_project_value_buffer(v136, qword_281444498);
          v137 = v186;
          v138 = v187;
          v139 = *(v187 + 16);
          v139(v78, v100, v186);
          v140 = sub_22D01636C();
          v141 = sub_22D0168EC();
          if (os_log_type_enabled(v140, v141))
          {
            v142 = swift_slowAlloc();
            v143 = swift_slowAlloc();
            v188 = v143;
            *v142 = 136380675;
            v139(v74, v78, v137);
            v144 = sub_22D01669C();
            v146 = v145;
            v147 = *(v138 + 8);
            v147(v78, v137);
            v148 = sub_22CEEE31C(v144, v146, &v188);

            *(v142 + 4) = v148;
            _os_log_impl(&dword_22CEE1000, v140, v141, "PushParticipant received unexpected push input: %{private}s", v142, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v143);
            MEMORY[0x2318C6860](v143, -1, -1);
            v149 = v142;
            v103 = v181;
            MEMORY[0x2318C6860](v149, -1, -1);

            v147(v180, v137);
          }

          else
          {

            v150 = *(v138 + 8);
            v150(v78, v137);
            v150(v100, v137);
          }

          return (*(v182 + 1))(v172, v103);
        }

        v109 = MEMORY[0x277D4D560];
        v108 = v176;
LABEL_20:
        v112 = v177;
        v113 = v184;
        (*(v177 + 104))(v108, *v109, v184);
        v114 = *a1;
        v181 = a1[1];
        v182 = v114;
        sub_22D0145BC();
        sub_22D0161EC();
        v115 = *(v112 + 16);
        v115(v183, v108, v113);
        if ((sub_22D014CFC() & 1) == 0)
        {
          sub_22D014D1C();
        }

        (*(v178 + 16))(v173, v185, v179);
        v115(v51, v183, v184);
        v116 = v181;

        sub_22D015B2C();
        sub_22D015C1C();
        v117 = v169;
        v118 = v182;
        sub_22D015BEC();
        __swift_project_boxed_opaque_existential_1(v99 + 6, v99[9]);
        v119 = v99;
        sub_22D015F6C();
        ObjectType = swift_getObjectType();
        v121 = v170;
        v122 = *(v170 + 32);
        swift_unknownObjectRetain();
        v122(v119, &off_28402B970, v118, v116, ObjectType, v121);
        swift_unknownObjectRelease();
        (*(v174 + 8))(v117, v175);
        v123 = *(v177 + 8);
        v124 = v184;
        v123(v183, v184);
        (*(v178 + 8))(v185, v179);
        v123(v176, v124);
        return (*(v187 + 8))(v180, v186);
      }

      (*(v102 + 12))(v101, v103);
      v111 = *v101;
      v107 = *(v101 + 1);
      v108 = v176;
      *v176 = v111;
      v109 = MEMORY[0x277D4D550];
      v110 = 8;
    }

    *(v108 + v110) = v107;
    goto LABEL_20;
  }

  if (*(a1 + *(result + 20)) != 3)
  {
    __swift_project_boxed_opaque_existential_1(v3 + 6, v3[9]);
    return sub_22D015F0C();
  }

  v83 = a1;
  sub_22CF09E84(*(a1 + *(v81 + 36)), v61);
  v85 = v186;
  v84 = v187;
  if ((*(v187 + 48))(v61, 1, v186) == 1)
  {
    v86 = &unk_27D9F2358;
    v87 = &unk_22D018980;
    v88 = v61;
    return sub_22CEEC3D8(v88, v86, v87);
  }

  v90 = v3;
  (*(v84 + 32))(v70, v61, v85);
  sub_22D0145DC();
  v91 = v181;
  v92 = v182;
  if ((*(v182 + 11))(v45, v181) == *MEMORY[0x277CB9220])
  {
    __swift_project_boxed_opaque_existential_1(v90 + 6, v90[9]);
    v93 = sub_22D015F2C();
    MEMORY[0x28223BE20](v93, v94);
    v95 = v167;
    sub_22CF11BC8(sub_22CF11BF4, v93, v167);

    v96 = v164;
    sub_22CEEB6DC(v95, v164, &qword_27D9F2700, &unk_22D01AEA0);
    v98 = v174;
    v97 = v175;
    if ((*(v174 + 48))(v96, 1, v175) == 1)
    {
      sub_22CEEC3D8(v95, &qword_27D9F2700, &unk_22D01AEA0);
      (*(v187 + 8))(v70, v85);
      v88 = v96;
      v86 = &qword_27D9F2700;
      v87 = &unk_22D01AEA0;
      return sub_22CEEC3D8(v88, v86, v87);
    }

    (*(v98 + 32))(v165, v96, v97);
    v125 = sub_22D015C3C();
    v184 = v126;
    v185 = v125;
    v127 = *v83;
    v182 = v83[1];
    v183 = v127;

    sub_22D015C5C();
    sub_22D0142DC();
    (*(v151 + 104))(v158, *MEMORY[0x277D4D5C0], v152);
    v128 = v187;
    v129 = v159;
    (*(v187 + 16))(v159, v70, v85);
    (*(v154 + 104))(v129, *MEMORY[0x277CB9320], v155);
    v130 = *(v81 + 56);
    v131 = sub_22D0146BC();
    v132 = *(v131 - 8);
    v133 = v83 + v130;
    v134 = v160;
    (*(v132 + 16))(v160, v133, v131);
    (*(v132 + 56))(v134, 0, 1, v131);
    (*(v162 + 104))(v161, *MEMORY[0x277D4D5D0], v163);
    v135 = v153;
    sub_22D015DBC();
    __swift_project_boxed_opaque_existential_1(v90 + 11, v90[14]);
    sub_22D01601C();
    (*(v156 + 8))(v135, v157);
    (*(v174 + 8))(v165, v175);
    sub_22CEEC3D8(v167, &qword_27D9F2700, &unk_22D01AEA0);
    return (*(v128 + 8))(v70, v85);
  }

  else
  {
    (*(v84 + 8))(v70, v85);
    return (*(v92 + 1))(v45, v91);
  }
}

void sub_22CF185DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v87 = a2;
  v88 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v90 = &v87 - v6;
  v7 = type metadata accessor for ActivityManagerEvent(0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = (&v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = (&v87 - v14);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = (&v87 - v18);
  MEMORY[0x28223BE20](v17, v20);
  v22 = (&v87 - v21);
  v23 = sub_22D01430C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Activity(0);
  sub_22D0142DC();
  sub_22CEF888C(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v28 = sub_22D01663C();
  (*(v24 + 8))(v27, v23);
  if (v28)
  {
    v29 = *(a1 + *(v7 + 20));
    switch(v29)
    {
      case 4:
        if (sub_22CF0B5E0() != 1)
        {
          return;
        }

        if (qword_28143FB38 != -1)
        {
          swift_once();
        }

        v54 = sub_22D01637C();
        __swift_project_value_buffer(v54, qword_281444450);
        sub_22CF0CCBC(a1, v15, type metadata accessor for ActivityManagerEvent);
        v55 = sub_22D01636C();
        v56 = sub_22D01690C();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v92[0] = v58;
          *v57 = 136446210;
          v59 = *v15;
          v60 = v15[1];

          sub_22CF0F640(v15, type metadata accessor for ActivityManagerEvent);
          v61 = sub_22CEEE31C(v59, v60, v92);

          *(v57 + 4) = v61;
          _os_log_impl(&dword_22CEE1000, v55, v56, "Activity was discarded %{public}s", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v58);
          MEMORY[0x2318C6860](v58, -1, -1);
          MEMORY[0x2318C6860](v57, -1, -1);
        }

        else
        {

          sub_22CF0F640(v15, type metadata accessor for ActivityManagerEvent);
        }

        v77 = v91;
        v78 = v91[2];
        v83 = *(v78 + 16);
        os_unfair_lock_lock(v83);
        v84 = *a1;
        v85 = a1[1];
        v86 = v90;
        (*(*(v89 - 8) + 56))(v90, 1, 1);
        swift_beginAccess();

        sub_22CF0BC5C(v86, v84, v85);
        swift_endAccess();
        v82 = v83;
        goto LABEL_32;
      case 2:
        if (qword_28143FB38 != -1)
        {
          swift_once();
        }

        v46 = sub_22D01637C();
        __swift_project_value_buffer(v46, qword_281444450);
        sub_22CF0CCBC(a1, v19, type metadata accessor for ActivityManagerEvent);
        v47 = sub_22D01636C();
        v48 = sub_22D01690C();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v92[0] = v50;
          *v49 = 136446210;
          v51 = *v19;
          v52 = v19[1];

          sub_22CF0F640(v19, type metadata accessor for ActivityManagerEvent);
          v53 = sub_22CEEE31C(v51, v52, v92);

          *(v49 + 4) = v53;
          _os_log_impl(&dword_22CEE1000, v47, v48, "Activity became a zombie %{public}s", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v50);
          MEMORY[0x2318C6860](v50, -1, -1);
          MEMORY[0x2318C6860](v49, -1, -1);
        }

        else
        {

          sub_22CF0F640(v19, type metadata accessor for ActivityManagerEvent);
        }

        v62 = v91;
        v63 = v91[2];
        v64 = *(v63 + 16);
        os_unfair_lock_lock(v64);
        v65 = *a1;
        v66 = a1[1];
        v67 = a1;
        v68 = v90;
        sub_22CF0CCBC(v67, v90, type metadata accessor for Activity);
        (*(*(v89 - 8) + 56))(v68, 0, 1);
        swift_beginAccess();

        sub_22CF0BC5C(v68, v65, v66);
        swift_endAccess();
        os_unfair_lock_unlock(v64);
        v69 = *(v63 + 16);
        os_unfair_lock_lock(v69);
        v70 = v62;
        goto LABEL_33;
      case 1:
        if (qword_28143FB38 != -1)
        {
          swift_once();
        }

        v30 = sub_22D01637C();
        __swift_project_value_buffer(v30, qword_281444450);
        sub_22CF0CCBC(a1, v22, type metadata accessor for ActivityManagerEvent);
        v31 = sub_22D01636C();
        v32 = sub_22D01690C();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v92[0] = v34;
          *v33 = 136446210;
          v35 = *v22;
          v36 = v22[1];

          sub_22CF0F640(v22, type metadata accessor for ActivityManagerEvent);
          v37 = sub_22CEEE31C(v35, v36, v92);

          *(v33 + 4) = v37;
          _os_log_impl(&dword_22CEE1000, v31, v32, "Activity did start %{public}s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v34);
          MEMORY[0x2318C6860](v34, -1, -1);
          MEMORY[0x2318C6860](v33, -1, -1);
        }

        else
        {

          sub_22CF0F640(v22, type metadata accessor for ActivityManagerEvent);
        }

        ObjectType = swift_getObjectType();
        v72 = *a1;
        v73 = a1[1];
        (*(v88 + 32))(v91, &off_28402BD60, *a1, v73, ObjectType);
        if (sub_22CF0B5E0() == 1)
        {
          v74 = sub_22D01636C();
          v75 = sub_22D01690C();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            *v76 = 0;
            _os_log_impl(&dword_22CEE1000, v74, v75, "Tracking zombie activity", v76, 2u);
            MEMORY[0x2318C6860](v76, -1, -1);
          }

          v77 = v91;
          v78 = v91[2];
          v79 = *(v78 + 16);
          os_unfair_lock_lock(v79);
          v80 = a1;
          v81 = v90;
          sub_22CF0CCBC(v80, v90, type metadata accessor for Activity);
          (*(*(v89 - 8) + 56))(v81, 0, 1);
          swift_beginAccess();

          sub_22CF0BC5C(v81, v72, v73);
          swift_endAccess();
          v82 = v79;
LABEL_32:
          os_unfair_lock_unlock(v82);
          v69 = *(v78 + 16);
          os_unfair_lock_lock(v69);
          v70 = v77;
LABEL_33:
          sub_22CFC1910(v70);
          os_unfair_lock_unlock(v69);
        }

        break;
    }
  }

  else
  {
    if (qword_28143FB38 != -1)
    {
      swift_once();
    }

    v38 = sub_22D01637C();
    __swift_project_value_buffer(v38, qword_281444450);
    sub_22CF0CCBC(a1, v11, type metadata accessor for ActivityManagerEvent);
    v39 = sub_22D01636C();
    v40 = sub_22D01690C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v92[0] = v42;
      *v41 = 136446210;
      v43 = *v11;
      v44 = v11[1];

      sub_22CF0F640(v11, type metadata accessor for ActivityManagerEvent);
      v45 = sub_22CEEE31C(v43, v44, v92);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_22CEE1000, v39, v40, "Ignoring pending activity %{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x2318C6860](v42, -1, -1);
      MEMORY[0x2318C6860](v41, -1, -1);
    }

    else
    {

      sub_22CF0F640(v11, type metadata accessor for ActivityManagerEvent);
    }
  }
}

void sub_22CF19114(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for ActivityManagerEvent(0);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = (&v35 - v14);
  v16 = *(a1 + *(v13 + 28));
  if (v16 == 4)
  {
    if (qword_28143FB38 != -1)
    {
      swift_once();
    }

    v26 = sub_22D01637C();
    __swift_project_value_buffer(v26, qword_281444450);
    sub_22CF1C1C8(a1, v11);
    v27 = sub_22D01636C();
    v28 = sub_22D01690C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36 = v30;
      *v29 = 136446210;
      v31 = *v11;
      v32 = v11[1];

      sub_22CF0D34C(v11);
      v33 = sub_22CEEE31C(v31, v32, &v36);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_22CEE1000, v27, v28, "Ephemeral activity ended %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x2318C6860](v30, -1, -1);
      MEMORY[0x2318C6860](v29, -1, -1);
    }

    else
    {

      sub_22CF0D34C(v11);
    }

    v34 = *(*(v4 + 16) + 16);
    os_unfair_lock_lock(v34);
    sub_22CF3C408(v4, a1);
    goto LABEL_17;
  }

  if (v16 == 1)
  {
    ObjectType = swift_getObjectType();
    (*(a3 + 32))(v3, &off_28402A260, *a1, a1[1], ObjectType, a3);
    type metadata accessor for Activity(0);
    if (sub_22D014CFC() & 1) != 0 || (sub_22D014D1C())
    {
      if (qword_28143FB38 != -1)
      {
        swift_once();
      }

      v18 = sub_22D01637C();
      __swift_project_value_buffer(v18, qword_281444450);
      sub_22CF1C1C8(a1, v15);
      v19 = sub_22D01636C();
      v20 = sub_22D01690C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v36 = v22;
        *v21 = 136446210;
        v23 = *v15;
        v24 = v15[1];

        sub_22CF0D34C(v15);
        v25 = sub_22CEEE31C(v23, v24, &v36);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_22CEE1000, v19, v20, "Tracking ephemeral activity %{public}s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x2318C6860](v22, -1, -1);
        MEMORY[0x2318C6860](v21, -1, -1);
      }

      else
      {

        sub_22CF0D34C(v15);
      }

      v34 = *(*(v4 + 16) + 16);
      os_unfair_lock_lock(v34);
      sub_22CF11390(v4, a1);
LABEL_17:
      os_unfair_lock_unlock(v34);
    }
  }
}

uint64_t sub_22CF19518(void *a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v59 = a3;
  updated = type metadata accessor for PowerLog.UpdateEvent(0);
  MEMORY[0x28223BE20](updated, v5);
  v7 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2308, &unk_22D018950);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v56[-v10];
  v12 = type metadata accessor for PowerLog.LifecycleEvent(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v56[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for ActivityManagerEvent(0);
  type metadata accessor for ReplicatorParticipant();
  v17 = swift_dynamicCastClass();
  v60 = type metadata accessor for Activity(0);
  v18 = *(a1 + *(v60 + 52) + 8);
  type metadata accessor for PushParticipant();
  result = swift_dynamicCastClass();
  if (*(a1 + *(v16 + 20)) <= 1u)
  {
    v32 = v59;
    if (!*(a1 + *(v16 + 20)))
    {
      return result;
    }

    v57 = v18 != 0;
    ObjectType = swift_getObjectType();
    v34 = *a1;
    v35 = a1[1];
    v36 = v61;
    (*(v32 + 32))(v61, &off_28402EA98, *a1, v35, ObjectType, v32);
    sub_22D0142DC();
    v37 = sub_22D014F9C();
    v39 = v38;

    v40 = sub_22CF1173C(a1);
    v41 = &v15[v12[5]];
    *v41 = v37;
    v41[1] = v39;
    v42 = &v15[v12[6]];
    *v42 = v34;
    v42[1] = v35;
    v15[v12[7]] = v17 != 0;
    v15[v12[8]] = 0;
    *&v15[v12[9]] = v40;
    v15[v12[10]] = v57;
    v43 = *(v36 + 40);
    v44 = (v36 + 16);
    goto LABEL_7;
  }

  if (*(a1 + *(v16 + 20)) - 2 >= 2)
  {
    v45 = v18 != 0;
    v46 = v17 != 0;
    sub_22D0142DC();
    v47 = sub_22D014F9C();
    v49 = v48;
    v51 = *a1;
    v50 = a1[1];

    v52 = v61;
    v53 = sub_22CF1173C(a1);
    v54 = &v15[v12[5]];
    *v54 = v47;
    v54[1] = v49;
    v55 = &v15[v12[6]];
    *v55 = v51;
    v55[1] = v50;
    v15[v12[7]] = v46;
    v15[v12[8]] = 1;
    *&v15[v12[9]] = v53;
    v15[v12[10]] = v45;
    v43 = *(v52 + 40);
    v44 = (v52 + 16);
LABEL_7:
    __swift_project_boxed_opaque_existential_1(v44, v43);
    sub_22CF1CBF4(v15);
    v30 = type metadata accessor for PowerLog.LifecycleEvent;
    v31 = v15;
    return sub_22CF1CF70(v31, v30);
  }

  LODWORD(v59) = v18 != 0;
  LODWORD(v58) = result == 0;
  sub_22D01462C();
  v20 = sub_22D0150CC();
  v21 = (*(*(v20 - 8) + 48))(v11, 1, v20) != 1;
  sub_22CEEC3D8(v11, &qword_27D9F2308, &unk_22D018950);
  v22 = *(a1 + *(v16 + 32));
  v23 = sub_22CF0B5E0();
  sub_22D0142DC();
  v24 = sub_22D014F9C();
  v25 = *a1;
  v26 = a1[1];
  v27 = &v7[updated[5]];
  *v27 = v24;
  v27[1] = v28;
  v29 = &v7[updated[6]];
  *v29 = v25;
  v29[1] = v26;
  v7[updated[7]] = v17 != 0;
  v7[updated[8]] = v22;
  v7[updated[9]] = v21;
  v7[updated[10]] = v23;
  v7[updated[11]] = v59;
  v7[updated[12]] = v58;
  __swift_project_boxed_opaque_existential_1((v61 + 16), *(v61 + 40));

  sub_22CF303E4(v7);
  v30 = type metadata accessor for PowerLog.UpdateEvent;
  v31 = v7;
  return sub_22CF1CF70(v31, v30);
}

uint64_t sub_22CF199C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF19A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroyTm_1(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

uint64_t objectdestroyTm_2(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_22D01430C();
  (*(*(v6 - 8) + 8))(v1 + v4, v6);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for ActivityParticipantEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = v0 + v3 + v1[6];
  type metadata accessor for ActivityParticipantEvent.EventType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v21 = sub_22D01486C();
    (*(*(v21 - 8) + 8))(v6, v21);
  }

  else if (!EnumCaseMultiPayload)
  {

    v8 = type metadata accessor for Activity(0);
    v9 = v8[5];
    v10 = sub_22D014E2C();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
    v11 = v8[6];
    v12 = sub_22D01502C();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);

    v13 = v8[10];
    v14 = sub_22D01430C();
    v15 = *(*(v14 - 8) + 8);
    v15(v6 + v13, v14);
    v15(v6 + v8[11], v14);

    v16 = v8[14];
    v17 = sub_22D0146BC();
    (*(*(v17 - 8) + 8))(v6 + v16, v17);
    v18 = v8[15];
    v19 = sub_22D01486C();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v6 + v18, 1, v19))
    {
      (*(v20 + 8))(v6 + v18, v19);
    }

    v3 = (v2 + 24) & ~v2;
  }

  v22 = v1[7];
  v23 = sub_22D01483C();
  (*(*(v23 - 8) + 8))(v5 + v22, v23);
  swift_unknownObjectRelease();
  v24 = v1[9];
  v25 = sub_22D0146BC();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v5 + v24, 1, v25))
  {
    (*(v26 + 8))(v5 + v24, v25);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22CF1A060(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  return (*(v4 + 16))(v3, v2, &off_28402C298, ObjectType, v4);
}

uint64_t sub_22CF1A0D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CF1A11C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CF1A164(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CF1A1AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22CF1A1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v153 = a3;
  v152 = a2;
  v4 = sub_22D01495C();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v151 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for ActivityParticipantEvent(0);
  MEMORY[0x28223BE20](v150, v7);
  v149 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Activity(0);
  v161 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v157 = (&v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11, v13);
  v148 = (&v142 - v15);
  MEMORY[0x28223BE20](v14, v16);
  v165 = (&v142 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v158 = &v142 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v159 = &v142 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v142 - v26;
  v28 = type metadata accessor for ActivityManagerEvent(0);
  v30 = MEMORY[0x28223BE20](v28, v29);
  v143 = &v142 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v142 - v33;
  v170 = sub_22D01502C();
  v35 = *(v170 - 8);
  MEMORY[0x28223BE20](v170, v36);
  v38 = &v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22D01483C();
  v156 = *(v39 - 8);
  v41 = MEMORY[0x28223BE20](v39, v40);
  v164 = &v142 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41, v43);
  v46 = &v142 - v45;
  v166 = v9;
  v47 = *(a1 + *(v9 + 36));
  v48 = *(v47 + 16);
  v160 = v27;
  v163 = v34;
  v171 = v44;
  if (v48)
  {
    v155 = v28;
    v162 = a1;
    LODWORD(v175) = 0;
    v49 = *(v156 + 16);
    v50 = v47 + ((*(v156 + 80) + 32) & ~*(v156 + 80));
    v173 = *(v156 + 72);
    v174 = v49;
    v51 = (v156 + 88);
    LODWORD(v172) = *MEMORY[0x277CB9348];
    v168 = (v156 + 96);
    v169 = (v156 + 8);
    v52 = (v35 + 32);
    v53 = (v35 + 8);
    v49(v46, v50, v39);
    while (1)
    {
      v57 = (*v51)(v46, v39);
      if (v57 == v172)
      {
        (*v168)(v46, v39);
        v54 = v170;
        (*v52)(v38, v46, v170);
        v55 = sub_22D014F6C();
        v56 = v54;
        v39 = v171;
        (*v53)(v38, v56);
        LODWORD(v175) = v55 | v175;
      }

      else
      {
        (*v169)(v46, v39);
      }

      v50 += v173;
      if (!--v48)
      {
        break;
      }

      v174(v46, v50, v39);
    }

    v27 = v160;
    a1 = v162;
    v34 = v163;
    v28 = v155;
    if (v175)
    {
      return;
    }
  }

  if (*(a1 + *(v28 + 20)) > 1u)
  {
    return;
  }

  v58 = v167;
  v59 = v167[7];
  v60 = v167[8];
  v61 = __swift_project_boxed_opaque_existential_1(v167 + 4, v59);
  v62 = *(v59 - 8);
  MEMORY[0x28223BE20](v61, v61);
  v64 = &v142 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v62 + 16))(v64);
  v65 = (*(v60 + 8))(v59, v60);
  v66 = (*(v62 + 8))(v64, v59);
  MEMORY[0x28223BE20](v66, v67);
  *(&v142 - 2) = a1;
  v68 = sub_22CEE9F88(sub_22CF1CAF8, (&v142 - 4), v65);

  v69 = v68[2];
  v169 = v58[10];
  if (v169 >= v69)
  {

    return;
  }

  v162 = a1;
  if (qword_28143FB58 != -1)
  {
LABEL_50:
    swift_once();
  }

  v168 = sub_22D01637C();
  v155 = (v161 + 48);
  v154 = (v161 + 56);
  v174 = (v156 + 16);
  v147 = v153 + 24;
  v146 = (v156 + 8);
  *&v70 = 136380675;
  v145 = v70;
  *&v70 = 136446210;
  v144 = v70;
  v71 = v165;
  while (1)
  {
    v83 = __swift_project_value_buffer(v168, qword_281444498);
    sub_22CF0CC54(v162, v34, type metadata accessor for ActivityManagerEvent);
    v175 = v83;
    v84 = sub_22D01636C();
    v85 = sub_22D01690C();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = v68;
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v176[0] = v88;
      *v87 = v145;
      sub_22CEFF220(&qword_281443988, MEMORY[0x277CB9810], MEMORY[0x277CB9830]);
      v89 = sub_22D016DEC();
      v90 = v34;
      v34 = v91;
      sub_22CF0F640(v90, type metadata accessor for ActivityManagerEvent);
      v92 = sub_22CEEE31C(v89, v34, v176);

      *(v87 + 4) = v92;
      _os_log_impl(&dword_22CEE1000, v84, v85, "Requester has too many activities: %{private}s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v88);
      MEMORY[0x2318C6860](v88, -1, -1);
      v93 = v87;
      v68 = v86;
      MEMORY[0x2318C6860](v93, -1, -1);

      v94 = v86[2];
      if (!v94)
      {
        goto LABEL_26;
      }
    }

    else
    {

      sub_22CF0F640(v34, type metadata accessor for ActivityManagerEvent);
      v94 = v68[2];
      if (!v94)
      {
LABEL_26:
        v97 = MEMORY[0x277D84F90];
        goto LABEL_27;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F23F0, &unk_22D0196D0);
    v95 = *(v161 + 72);
    v96 = (*(v161 + 80) + 32) & ~*(v161 + 80);
    v97 = swift_allocObject();
    v98 = _swift_stdlib_malloc_size(v97);
    if (!v95)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v98 - v96 == 0x8000000000000000 && v95 == -1)
    {
      goto LABEL_49;
    }

    v97[2] = v94;
    v97[3] = 2 * ((v98 - v96) / v95);
    v100 = sub_22CF7B31C(v176, v97 + v96, v94, v68);
    v101 = v176[0];
    v34 = v176[1];
    v102 = v68;
    v68 = v176[2];
    v27 = v176[4];
    v103 = v102;

    sub_22CEE57FC(v101);
    if (v100 != v94)
    {
      goto LABEL_48;
    }

    v27 = v160;
    v71 = v165;
    v68 = v103;
LABEL_27:
    v104 = v166;
    sub_22CFA87F0(v97, v27);

    v105 = v159;
    sub_22CEEB6DC(v27, v159, &qword_27D9F3810, &unk_22D018FA0);
    if ((*v155)(v105, 1, v104) == 1)
    {
      break;
    }

    sub_22CFA8FC0(v105, v71);
    v107 = *v71;
    v106 = v71[1];
    v108 = sub_22CEEC698(*v71, v106);
    if (v109)
    {
      v110 = v108;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v176[0] = v68;
      v112 = v158;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22CFB6320();
        v112 = v158;
        v68 = v176[0];
      }

      sub_22CFA8FC0(v68[7] + *(v161 + 72) * v110, v112);
      sub_22CFBCCB8(v110, v68);
      v113 = 0;
    }

    else
    {
      v113 = 1;
      v112 = v158;
    }

    (*v154)(v112, v113, 1, v104);
    sub_22CEEC3D8(v112, &qword_27D9F3810, &unk_22D018FA0);
    v114 = *(v71 + *(v104 + 36));
    v115 = v157;
    if (*(v114 + 16))
    {
      v172 = v107;
      v173 = v68;
      v116 = *(v156 + 16);
      v116(v164, v114 + ((*(v156 + 80) + 32) & ~*(v156 + 80)), v171);
      sub_22CF0CC54(v71, v115, type metadata accessor for Activity);
      v117 = sub_22D01636C();
      v118 = sub_22D01690C();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v176[0] = v120;
        *v119 = v144;
        v121 = *v115;
        v122 = v115[1];

        sub_22CF0F640(v115, type metadata accessor for Activity);
        v123 = sub_22CEEE31C(v121, v122, v176);
        v72 = v160;

        *(v119 + 4) = v123;
        _os_log_impl(&dword_22CEE1000, v117, v118, "Ending zombie session: %{public}s", v119, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v120);
        MEMORY[0x2318C6860](v120, -1, -1);
        MEMORY[0x2318C6860](v119, -1, -1);

        v34 = v163;
      }

      else
      {

        sub_22CF0F640(v115, type metadata accessor for Activity);
        v34 = v163;
        v72 = v27;
      }

      v73 = v150;

      sub_22D01494C();
      v74 = v149;
      sub_22D01485C();
      type metadata accessor for ActivityParticipantEvent.EventType(0);
      swift_storeEnumTagMultiPayload();
      v75 = v164;
      v76 = v171;
      v116(&v74[v73[7]], v164, v171);
      v77 = v73[9];
      v78 = sub_22D0146BC();
      (*(*(v78 - 8) + 56))(&v74[v77], 1, 1, v78);
      *v74 = v172;
      *(v74 + 1) = v106;
      *(v74 + 2) = 0;
      *(v74 + 3) = 0;
      v79 = &v74[v73[8]];
      *v79 = v167;
      *(v79 + 1) = &off_28402B568;
      v74[v73[10]] = 0;
      ObjectType = swift_getObjectType();
      v81 = v153;
      v82 = *(v153 + 24);

      v82(v74, ObjectType, v81);
      sub_22CF0F640(v74, type metadata accessor for ActivityParticipantEvent);
      (*v146)(v75, v76);
      sub_22CEEC3D8(v72, &qword_27D9F3810, &unk_22D018FA0);
      v71 = v165;
      v27 = v72;
      v68 = v173;
    }

    else
    {
      v124 = v148;
      sub_22CF0CC54(v71, v148, type metadata accessor for Activity);
      v125 = sub_22D01636C();
      v126 = sub_22D0168EC();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v176[0] = v128;
        *v127 = v144;
        v129 = *v124;
        v130 = v124[1];

        sub_22CF0F640(v124, type metadata accessor for Activity);
        v131 = sub_22CEEE31C(v129, v130, v176);

        *(v127 + 4) = v131;
        _os_log_impl(&dword_22CEE1000, v125, v126, "No sources exist for zombie activity: %{public}s", v127, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v128);
        v132 = v128;
        v71 = v165;
        MEMORY[0x2318C6860](v132, -1, -1);
        MEMORY[0x2318C6860](v127, -1, -1);
      }

      else
      {

        sub_22CF0F640(v124, type metadata accessor for Activity);
      }

      sub_22CEEC3D8(v27, &qword_27D9F3810, &unk_22D018FA0);
      v34 = v163;
    }

    sub_22CF0F640(v71, type metadata accessor for Activity);
    if (v169 >= v68[2])
    {
      goto LABEL_45;
    }
  }

  sub_22CEEC3D8(v105, &qword_27D9F3810, &unk_22D018FA0);
  v133 = v143;
  sub_22CF0CC54(v162, v143, type metadata accessor for ActivityManagerEvent);
  v134 = sub_22D01636C();
  v135 = sub_22D0168FC();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v176[0] = v137;
    *v136 = v145;
    sub_22CEFF220(&qword_281443988, MEMORY[0x277CB9810], MEMORY[0x277CB9830]);
    v138 = sub_22D016DEC();
    v140 = v139;
    sub_22CF0F640(v133, type metadata accessor for ActivityManagerEvent);
    v141 = sub_22CEEE31C(v138, v140, v176);

    *(v136 + 4) = v141;
    _os_log_impl(&dword_22CEE1000, v134, v135, "Requester has too many active sessions: %{private}s", v136, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v137);
    MEMORY[0x2318C6860](v137, -1, -1);
    MEMORY[0x2318C6860](v136, -1, -1);
  }

  else
  {

    sub_22CF0F640(v133, type metadata accessor for ActivityManagerEvent);
  }

  sub_22CEEC3D8(v27, &qword_27D9F3810, &unk_22D018FA0);
LABEL_45:
}

uint64_t sub_22CF1B3B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3278, &unk_22D01B2C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF1B440()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22CF1B48C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22D01430C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22CF1B538()
{
  v0 = sub_22D01502C();
  MEMORY[0x28223BE20](v0, v1);
  v2 = sub_22D014F9C();
  v4 = v3;
  v5 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v6 = sub_22CEE8CD0(v2, v4, 1);
  v7 = [v6 localizedName];

  v8 = sub_22D01667C();
  return v8;
}

void *sub_22CF1B8BC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void (*sub_22CF1BA14(void (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;
      swift_unknownObjectRetain();
      v5(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_22CF1BAAC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for ActivityManagerEvent(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v38[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v38[-1] - v14;
  LODWORD(v14) = *(a1 + *(v8 + 28));
  v16 = v14 >= 2;
  v17 = v14 - 2;
  if (!v16)
  {
    sub_22CEE3A84(v4 + 32, v38);
    v30 = v39;
    v31 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    (*(v31 + 24))(a1, v30, v31);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    ObjectType = swift_getObjectType();
    (*(a3 + 32))(v4, &off_28402E5A0, *a1, a1[1], ObjectType, a3);
    return;
  }

  if (v17 >= 2)
  {
    sub_22CEE3A84(v4 + 32, v38);
    v35 = v39;
    v36 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    (*(v36 + 32))(*a1, a1[1], v35, v36);
    goto LABEL_11;
  }

  sub_22CEE3A84(v4 + 32, v38);
  v18 = v39;
  v19 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  (*(v19 + 16))(*a1, a1[1], v18, v19);
  v20 = type metadata accessor for Activity(0);
  v21 = (*(*(v20 - 8) + 48))(v15, 1, v20);
  sub_22CEEC3D8(v15, &qword_27D9F3810, &unk_22D018FA0);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  if (v21 != 1)
  {
    sub_22CEE3A84(v4 + 32, v38);
    v33 = v39;
    v34 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    (*(v34 + 24))(a1, v33, v34);
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    return;
  }

  if (qword_28143FB58 != -1)
  {
    swift_once();
  }

  v22 = sub_22D01637C();
  __swift_project_value_buffer(v22, qword_281444498);
  sub_22CF0CCBC(a1, v11, type metadata accessor for ActivityManagerEvent);
  v23 = sub_22D01636C();
  v24 = sub_22D0168EC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38[0] = v26;
    *v25 = 136446210;
    v27 = *v11;
    v28 = v11[1];

    sub_22CF0F640(v11, type metadata accessor for ActivityManagerEvent);
    v29 = sub_22CEEE31C(v27, v28, v38);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_22CEE1000, v23, v24, "PersistentParticipant received update for non-existent activity: %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x2318C6860](v26, -1, -1);
    MEMORY[0x2318C6860](v25, -1, -1);
  }

  else
  {

    sub_22CF0F640(v11, type metadata accessor for ActivityManagerEvent);
  }
}

uint64_t sub_22CF1BF00(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_22CEEC698(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_22CFBBDE0(v20, a4 & 1, a5, a6);
      v15 = sub_22CEEC698(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_22D016E1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_22CFB856C(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

uint64_t sub_22CF1C0A0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = *a2;
  v8 = a2[1];
  sub_22CF0CB84(a2, &v11 - v5, type metadata accessor for Activity);
  v9 = type metadata accessor for Activity(0);
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  swift_beginAccess();

  sub_22CF0BC5C(v6, v7, v8);
  return swift_endAccess();
}

uint64_t sub_22CF1C1C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityManagerEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF1C22C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF1C294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_22CF1C2FC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2730, &unk_22D0196E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_22CF1C384(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3818, &qword_22D01BD00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v39 - v7;
  (*(v5 + 16))(&v39 - v7, &v2[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__target], v4);
  sub_22D01567C();
  (*(v5 + 8))(v8, v4);
  v9 = v46;
  if (v46)
  {
    v45 = sub_22CF0D704(a1);
    sub_22D01566C();
    v10 = sub_22D01563C();
    v11 = __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processManager], *&v2[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processManager + 24]);
    v12 = *&v2[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier];
    v39 = *&v2[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier + 8];
    v40 = v12;
    LODWORD(v42) = *&v2[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_pid];
    v43 = "Delivering activity changes";
    v13 = swift_allocObject();
    v13[2] = v2;
    v13[3] = a1;
    v13[4] = v9;
    v13[5] = v10;
    v14 = *v11;
    v16 = v14[5];
    v15 = v14[6];
    __swift_project_boxed_opaque_existential_1(v14 + 2, v16);
    v41 = *(v15 + 40);
    v44 = v10;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v17 = v2;
    swift_unknownObjectRetain_n();
    v18 = v17;
    v19 = v41(v42, v16, v15);
    if (v19)
    {
      v20 = v19;
      v21 = v18;

      swift_unknownObjectRetain();
      v22 = v44;

      sub_22CF0DC2C(v20, 0xD000000000000018, v43 | 0x8000000000000000, v45, v14, v21, a1, v9, 30.0, v22);

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease_n();
LABEL_11:

      return;
    }

    v42 = v13;
    v27 = v44;
    v29 = v14[5];
    v28 = v14[6];
    __swift_project_boxed_opaque_existential_1(v14 + 2, v29);
    v31 = v39;
    v30 = v40;
    v32 = (*(v28 + 32))(v40, v39, v29, v28);
    if (v32)
    {
      v33 = v32;
      v34 = v18;

      swift_unknownObjectRetain();

      sub_22CF0DC2C(v33, 0xD000000000000018, v43 | 0x8000000000000000, v45, v14, v34, a1, v9, 30.0, v27);

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease_n();
      goto LABEL_11;
    }

    v36 = v42;
    v35 = v43;
    if (v45 == 2)
    {

      sub_22CF7D8CC(v30, v31, v14, v14, 0xD000000000000018, v35 | 0x8000000000000000, 2, sub_22CFD9270, 30.0, v36);

      swift_unknownObjectRelease_n();
      swift_bridgeObjectRelease_n();

      goto LABEL_11;
    }

    sub_22CEEEBB4();
    v37 = swift_allocError();
    *v38 = 2;
    sub_22CF2F0BC(v37, v18, a1, v9, v27);

    swift_unknownObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    if (qword_28143FB60 != -1)
    {
      swift_once();
    }

    v23 = sub_22D01637C();
    __swift_project_value_buffer(v23, qword_2814444B0);
    v24 = sub_22D01636C();
    v25 = sub_22D0168EC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22CEE1000, v24, v25, "Cannot send changes to bad remote target", v26, 2u);
      MEMORY[0x2318C6860](v26, -1, -1);
    }
  }
}

uint64_t sub_22CF1C920()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_22CF1C978(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22CF21580(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_22CF60134();
      goto LABEL_16;
    }

    sub_22CF78BEC(v8 + 1);
  }

  v10 = *v4;
  sub_22D016EAC();
  sub_22D0166DC();
  v11 = sub_22D016ECC();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_22D016DFC() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_22D016E0C();
  __break(1u);
}

uint64_t sub_22CF1CB18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22CF1CB78(uint64_t a1, void *a2)
{
  v3 = sub_22D015C2C();
  if (v4)
  {
    if (v3 == *a2 && v4 == a2[1])
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_22D016DFC();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

double sub_22CF1CBF4(uint64_t a1)
{
  v3 = sub_22D0164CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22D01653C();
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PowerLog.LifecycleEvent(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8, v15);
  v20[1] = *(v1 + 16);
  sub_22CF199C0(a1, v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PowerLog.LifecycleEvent);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  sub_22CF19A28(v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PowerLog.LifecycleEvent);
  aBlock[4] = sub_22CF11C18;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF8B58;
  aBlock[3] = &block_descriptor_9_0;
  v18 = _Block_copy(aBlock);
  sub_22D0164EC();
  v22 = MEMORY[0x277D84F90];
  sub_22CF1A11C(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8340(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v11, v7, v18);
  _Block_release(v18);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v21);

  return result;
}

uint64_t sub_22CF1CF70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22CF1CFD0()
{
  v0 = sub_22D01666C();
  sub_22CF1D078();
  v1 = sub_22D0165CC();

  PLLogRegisteredEvent();
}

unint64_t sub_22CF1D078()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D019D40;
  *(inited + 32) = 0x6D617473656D6974;
  *(inited + 40) = 0xE900000000000070;
  v2 = sub_22D01426C();
  v3 = sub_22CEE82F8(0, &qword_28143D900, 0x277CBEAA8);
  *(inited + 48) = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0x4449656C646E7562;
  *(inited + 88) = 0xE800000000000000;
  v4 = type metadata accessor for PowerLog.LifecycleEvent(0);
  v5 = sub_22D01666C();
  v6 = sub_22CEE82F8(0, &qword_28143D8F0, 0x277CCACA8);
  *(inited + 96) = v5;
  *(inited + 120) = v6;
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x800000022D01E850;
  *(inited + 144) = sub_22D01666C();
  *(inited + 168) = v6;
  *(inited + 176) = 0x656372756F73;
  *(inited + 184) = 0xE600000000000000;
  v7 = MEMORY[0x277D83B88];
  *(inited + 192) = *(v0 + v4[7]);
  *(inited + 216) = v7;
  *(inited + 224) = 0x707954746E657665;
  *(inited + 232) = 0xE900000000000065;
  v8 = 1;
  if (*(v0 + v4[8]))
  {
    v8 = 2;
  }

  *(inited + 240) = v8;
  *(inited + 264) = v7;
  strcpy((inited + 272), "updateBudget");
  *(inited + 285) = 0;
  *(inited + 286) = -5120;
  v9 = *(v0 + v4[9]);
  *(inited + 312) = v7;
  *(inited + 288) = v9;
  v10 = sub_22CF11C44(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
  swift_arrayDestroy();
  return v10;
}

_OWORD *sub_22CF1D288(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_22CF1D2A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v122 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v123 = v118 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v118 - v13;
  v15 = sub_22D01461C();
  v120 = *(v15 - 8);
  v121 = v15;
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v118 - v21;
  v23 = type metadata accessor for ActivityManagerEvent(0);
  v25 = MEMORY[0x28223BE20](v23 - 8, v24);
  v27 = (v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = (v118 - v30);
  v33 = MEMORY[0x28223BE20](v29, v32);
  v35 = (v118 - v34);
  v37 = MEMORY[0x28223BE20](v33, v36);
  v39 = MEMORY[0x28223BE20](v37, v38);
  v42 = (v118 - v41);
  v43 = *(v39 + 28);
  v125 = a1;
  v44 = *(a1 + v43);
  if (v44 > 1)
  {
    if (v44 != 3)
    {
      v58 = v125;
      if (qword_28143DAB0 != -1)
      {
        swift_once();
      }

      v59 = sub_22D01637C();
      __swift_project_value_buffer(v59, qword_281444320);
      sub_22CF0CCBC(v58, v27, type metadata accessor for ActivityManagerEvent);
      v60 = sub_22D01636C();
      v61 = sub_22D01690C();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v126[0] = v63;
        *v62 = 136446210;
        v64 = *v27;
        v65 = v27[1];

        sub_22CF0F640(v27, type metadata accessor for ActivityManagerEvent);
        v66 = sub_22CEEE31C(v64, v65, v126);

        *(v62 + 4) = v66;
        _os_log_impl(&dword_22CEE1000, v60, v61, "Activity is no longer relevant %{public}s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        MEMORY[0x2318C6860](v63, -1, -1);
        MEMORY[0x2318C6860](v62, -1, -1);
      }

      else
      {

        sub_22CF0F640(v27, type metadata accessor for ActivityManagerEvent);
      }

      v76 = v124;
      v77 = *(v124 + 16);
      v78 = *(v77 + 16);
      os_unfair_lock_lock(v78);
      v79 = *v58;
      v80 = v58[1];
      v81 = type metadata accessor for Activity(0);
      v82 = v123;
      (*(*(v81 - 8) + 56))(v123, 1, 1, v81);
      swift_beginAccess();

      sub_22CF0BC5C(v82, v79, v80);
      swift_endAccess();
      os_unfair_lock_unlock(v78);
      v83 = *(v77 + 16);
      os_unfair_lock_lock(v83);
      v84 = v76;
      goto LABEL_37;
    }

    v45 = type metadata accessor for Activity(0);
    v46 = v125;
    sub_22D01467C();
    sub_22D01460C();
    (*(v120 + 8))(v19, v121);
    v47 = sub_22D01430C();
    v48 = (*(*(v47 - 8) + 48))(v11, 1, v47);
    sub_22CEEC3D8(v11, &qword_27D9F2648, &unk_22D018BC0);
    if (v48 == 1)
    {
      v49 = v124;
      if (qword_28143DAB0 != -1)
      {
        swift_once();
      }

      v50 = sub_22D01637C();
      __swift_project_value_buffer(v50, qword_281444320);
      sub_22CF0CCBC(v46, v31, type metadata accessor for ActivityManagerEvent);
      v51 = sub_22D01636C();
      v52 = sub_22D01690C();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v126[0] = v54;
        *v53 = 136446210;
        v55 = *v31;
        v56 = v31[1];

        sub_22CF0F640(v31, type metadata accessor for ActivityManagerEvent);
        v57 = sub_22CEEE31C(v55, v56, v126);

        *(v53 + 4) = v57;
        _os_log_impl(&dword_22CEE1000, v51, v52, "Stopping activity tracking %{public}s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x2318C6860](v54, -1, -1);
        MEMORY[0x2318C6860](v53, -1, -1);
      }

      else
      {

        sub_22CF0F640(v31, type metadata accessor for ActivityManagerEvent);
      }

      v93 = v49[2];
      v94 = *(v93 + 16);
      os_unfair_lock_lock(v94);
      v95 = *v46;
      v96 = v46[1];
      v97 = v123;
      (*(*(v45 - 8) + 56))(v123, 1, 1, v45);
    }

    else
    {
      v49 = v124;
      if (qword_28143DAB0 != -1)
      {
        swift_once();
      }

      v85 = sub_22D01637C();
      __swift_project_value_buffer(v85, qword_281444320);
      sub_22CF0CCBC(v46, v35, type metadata accessor for ActivityManagerEvent);
      v86 = sub_22D01636C();
      v87 = sub_22D01690C();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v126[0] = v89;
        *v88 = 136446210;
        v90 = *v35;
        v91 = v35[1];

        sub_22CF0F640(v35, type metadata accessor for ActivityManagerEvent);
        v92 = sub_22CEEE31C(v90, v91, v126);

        *(v88 + 4) = v92;
        _os_log_impl(&dword_22CEE1000, v86, v87, "Tracking activity %{public}s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        MEMORY[0x2318C6860](v89, -1, -1);
        MEMORY[0x2318C6860](v88, -1, -1);
      }

      else
      {

        sub_22CF0F640(v35, type metadata accessor for ActivityManagerEvent);
      }

      v93 = v49[2];
      v94 = *(v93 + 16);
      os_unfair_lock_lock(v94);
      v95 = *v46;
      v96 = v46[1];
      v97 = v123;
      sub_22CF0CCBC(v46, v123, type metadata accessor for Activity);
      (*(*(v45 - 8) + 56))(v97, 0, 1, v45);
    }

    swift_beginAccess();

    sub_22CF0BC5C(v97, v95, v96);
    swift_endAccess();
    os_unfair_lock_unlock(v94);
    v83 = *(v93 + 16);
LABEL_36:
    os_unfair_lock_lock(v83);
    v84 = v49;
LABEL_37:
    sub_22CF11D74(v84);
    os_unfair_lock_unlock(v83);
    return;
  }

  v67 = v122;
  v119 = v40;
  if (v44 && sub_22CF0B5E0() != 1)
  {
    if (qword_28143DAB0 != -1)
    {
      swift_once();
    }

    v68 = sub_22D01637C();
    v69 = __swift_project_value_buffer(v68, qword_281444320);
    sub_22CF0CCBC(v125, v42, type metadata accessor for ActivityManagerEvent);
    v118[1] = v69;
    v70 = sub_22D01636C();
    v71 = sub_22D01690C();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v126[0] = v73;
      *v72 = 136446210;
      v74 = v42[1];
      v118[0] = *v42;

      sub_22CF0F640(v42, type metadata accessor for ActivityManagerEvent);
      v75 = sub_22CEEE31C(v118[0], v74, v126);

      *(v72 + 4) = v75;
      _os_log_impl(&dword_22CEE1000, v70, v71, "Subscribing to activity %{public}s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      MEMORY[0x2318C6860](v73, -1, -1);
      MEMORY[0x2318C6860](v72, -1, -1);
    }

    else
    {

      sub_22CF0F640(v42, type metadata accessor for ActivityManagerEvent);
    }

    v49 = v124;
    v98 = v14;
    v99 = v22;
    ObjectType = swift_getObjectType();
    v101 = v125;
    v102 = *v125;
    v103 = v125[1];
    (*(v67 + 32))(v49, &off_28402D270, *v125, v103, ObjectType, v67);
    v104 = type metadata accessor for Activity(0);
    sub_22D01467C();
    sub_22D01460C();
    (*(v120 + 8))(v99, v121);
    v105 = sub_22D01430C();
    v106 = (*(*(v105 - 8) + 48))(v98, 1, v105);
    sub_22CEEC3D8(v98, &qword_27D9F2648, &unk_22D018BC0);
    if (v106 != 1)
    {
      v107 = v119;
      sub_22CF0CCBC(v101, v119, type metadata accessor for ActivityManagerEvent);
      v108 = sub_22D01636C();
      v109 = sub_22D01690C();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v126[0] = v111;
        *v110 = 136446210;
        v124 = v102;
        v112 = v103;
        v113 = *v107;
        v114 = v107[1];

        sub_22CF0F640(v107, type metadata accessor for ActivityManagerEvent);
        v115 = sub_22CEEE31C(v113, v114, v126);
        v103 = v112;
        v101 = v125;

        *(v110 + 4) = v115;
        v102 = v124;
        _os_log_impl(&dword_22CEE1000, v108, v109, "Tracking activity %{public}s", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v111);
        MEMORY[0x2318C6860](v111, -1, -1);
        MEMORY[0x2318C6860](v110, -1, -1);
      }

      else
      {

        sub_22CF0F640(v107, type metadata accessor for ActivityManagerEvent);
      }

      v116 = *(v49[2] + 16);
      os_unfair_lock_lock(v116);
      v117 = v123;
      sub_22CF0CCBC(v101, v123, type metadata accessor for Activity);
      (*(*(v104 - 8) + 56))(v117, 0, 1, v104);
      swift_beginAccess();

      sub_22CF0BC5C(v117, v102, v103);
      swift_endAccess();
      os_unfair_lock_unlock(v116);
    }

    v83 = *(v49[2] + 16);
    goto LABEL_36;
  }
}

void sub_22CF1E084(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v57 - v9;
  v11 = type metadata accessor for ActivityManagerEvent(0);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = (&v57 - v18);
  if (*(a1 + *(v17 + 28)) - 2 < 2)
  {
    if (sub_22CF0B5E0() == 3)
    {
      if (qword_28143DA88 != -1)
      {
        swift_once();
      }

      v20 = sub_22D01637C();
      __swift_project_value_buffer(v20, qword_2814442D8);
      sub_22CF0CCBC(a1, v15, type metadata accessor for ActivityManagerEvent);
      v21 = sub_22D01636C();
      v22 = sub_22D01690C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v60[0] = v24;
        *v23 = 136446210;
        v25 = *v15;
        v26 = v15[1];

        sub_22CF0F640(v15, type metadata accessor for ActivityManagerEvent);
        v27 = sub_22CEEE31C(v25, v26, v60);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_22CEE1000, v21, v22, "Delayed activity was updated %{public}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x2318C6860](v24, -1, -1);
        MEMORY[0x2318C6860](v23, -1, -1);
      }

      else
      {

        sub_22CF0F640(v15, type metadata accessor for ActivityManagerEvent);
      }

      v45 = v4[2];
      v46 = *(v45 + 16);
      v37 = (v45 + 16);
      v36 = v46;
      os_unfair_lock_lock(v46);
      v47 = *a1;
      v48 = a1[1];
      sub_22CF0CCBC(a1, v10, type metadata accessor for Activity);
      v49 = type metadata accessor for Activity(0);
      (*(*(v49 - 8) + 56))(v10, 0, 1, v49);
      swift_beginAccess();

      v42 = v10;
      v43 = v47;
      v44 = v48;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (*(a1 + *(v17 + 28)))
  {
LABEL_13:
    v35 = v3[2];
    v38 = *(v35 + 16);
    v37 = (v35 + 16);
    v36 = v38;
    os_unfair_lock_lock(v38);
    v40 = *a1;
    v39 = a1[1];
    v41 = type metadata accessor for Activity(0);
    (*(*(v41 - 8) + 56))(v10, 1, 1, v41);
    swift_beginAccess();

    v42 = v10;
    v43 = v40;
    v44 = v39;
    goto LABEL_18;
  }

  if (sub_22CF0B5E0() != 3)
  {
    return;
  }

  if (qword_28143DA88 != -1)
  {
    swift_once();
  }

  v28 = sub_22D01637C();
  __swift_project_value_buffer(v28, qword_2814442D8);
  sub_22CF0CCBC(a1, v19, type metadata accessor for ActivityManagerEvent);
  v29 = sub_22D01636C();
  v30 = sub_22D01690C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60[0] = v59;
    *v31 = 136446210;
    v32 = v19[1];
    v58 = *v19;

    sub_22CF0F640(v19, type metadata accessor for ActivityManagerEvent);
    v33 = sub_22CEEE31C(v58, v32, v60);

    *(v31 + 4) = v33;
    _os_log_impl(&dword_22CEE1000, v29, v30, "Delayed activity did appear %{public}s", v31, 0xCu);
    v34 = v59;
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    MEMORY[0x2318C6860](v34, -1, -1);
    MEMORY[0x2318C6860](v31, -1, -1);
  }

  else
  {

    sub_22CF0F640(v19, type metadata accessor for ActivityManagerEvent);
  }

  ObjectType = swift_getObjectType();
  v51 = *a1;
  v52 = a1[1];
  (*(a3 + 32))(v4, &off_28402EC70, *a1, v52, ObjectType, a3);
  v53 = v4[2];
  v54 = *(v53 + 16);
  v37 = (v53 + 16);
  v36 = v54;
  os_unfair_lock_lock(v54);
  sub_22CF0CCBC(a1, v10, type metadata accessor for Activity);
  v55 = type metadata accessor for Activity(0);
  (*(*(v55 - 8) + 56))(v10, 0, 1, v55);
  swift_beginAccess();

  v42 = v10;
  v43 = v51;
  v44 = v52;
LABEL_18:
  sub_22CF0BC5C(v42, v43, v44);
  swift_endAccess();
  os_unfair_lock_unlock(v36);
  v56 = *v37;
  os_unfair_lock_lock(*v37);
  sub_22CF1E8A0(v4);
  os_unfair_lock_unlock(v56);
}

uint64_t sub_22CF1E6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_22CEEC698(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22CF28A08(type metadata accessor for Activity, &qword_27D9F2A28, &qword_22D0196C8, type metadata accessor for Activity);
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Activity(0);
    v19 = *(v12 - 8);
    sub_22CEF0B08(v11 + *(v19 + 72) * v8, a3, type metadata accessor for Activity);
    sub_22CF28D18(v8, v10, type metadata accessor for Activity);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for Activity(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_22CF1E8A0(void *a1)
{
  v2 = sub_22D01559C();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D0155CC();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01430C();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v29 - v17;
  swift_beginAccess();
  sub_22CEEB6DC((a1 + 9), &v35, &qword_27D9F3278, &unk_22D01B2C0);
  if (*(&v36 + 1))
  {
    sub_22CEE3A84(&v35, v34);
    sub_22CEEC3D8(&v35, &qword_27D9F3278, &unk_22D01B2C0);
    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    sub_22D0163DC();
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  else
  {
    sub_22CEEC3D8(&v35, &qword_27D9F3278, &unk_22D01B2C0);
  }

  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  swift_beginAccess();
  sub_22CF1B3B4(&v35, (a1 + 9));
  swift_endAccess();
  sub_22CF15224(v18);
  sub_22D01423C();
  v19 = sub_22D01428C();
  v20 = *(v11 + 8);
  v20(v15, v10);
  if (v19)
  {
    (*(v11 + 16))(v15, v18, v10);
    (*(v30 + 104))(v5, *MEMORY[0x277D4D508], v31);
    sub_22D01558C();
    __swift_project_boxed_opaque_existential_1(a1 + 3, a1[6]);
    swift_allocObject();
    swift_weakInit();

    sub_22D0155DC();

    (*(v32 + 8))(v9, v33);
    v20(v18, v10);

    sub_22CEF44D4(&v35, v34);
    swift_beginAccess();
    sub_22CF1B3B4(v34, (a1 + 9));
    return swift_endAccess();
  }

  else
  {
    if (qword_28143DA88 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_2814442D8);
    v23 = sub_22D01636C();
    v24 = sub_22D01690C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = v10;
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22CEE1000, v23, v24, "No more delayed activities awaiting start", v26, 2u);
      MEMORY[0x2318C6860](v26, -1, -1);

      v27 = v18;
      v28 = v25;
    }

    else
    {

      v27 = v18;
      v28 = v10;
    }

    return (v20)(v27, v28);
  }
}

uint64_t sub_22CF1EDB4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_22CF1EDF0(uint64_t a1)
{
  v3 = sub_22D0164CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22D01653C();
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActivityManagerEvent(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8, v15);
  v20[1] = *(v1 + 16);
  sub_22CF0CBEC(a1, v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActivityManagerEvent);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  sub_22CF0FFD8(v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ActivityManagerEvent);
  aBlock[4] = sub_22CF1B858;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF8B58;
  aBlock[3] = &block_descriptor_13;
  v18 = _Block_copy(aBlock);

  sub_22D0164EC();
  v22 = MEMORY[0x277D84F90];
  sub_22CF1A164(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70, MEMORY[0x277D83970]);
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v11, v7, v18);
  _Block_release(v18);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v21);

  return result;
}

uint64_t sub_22CF1F180()
{
  v1 = *(type metadata accessor for ActivityManagerEvent(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v18 = *(v1 + 64);

  v4 = type metadata accessor for Activity(0);
  v5 = v4[5];
  v6 = sub_22D014E2C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v4[6];
  v8 = sub_22D01502C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  v9 = v4[10];
  v10 = sub_22D01430C();
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v3 + v9, v10);
  v11(v0 + v3 + v4[11], v10);

  v12 = v4[14];
  v13 = sub_22D0146BC();
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);
  v14 = v4[15];
  v15 = sub_22D01486C();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v3 + v14, 1, v15))
  {
    (*(v16 + 8))(v0 + v3 + v14, v15);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v3 + v18, v2 | 7);
}

void sub_22CF1F444(uint64_t a1)
{
  v257 = a1;
  v2 = type metadata accessor for ReplicatorParticipant.RelationshipSchedule(0);
  v234 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v237 = v233 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_22D01436C();
  v250 = *(v236 - 8);
  MEMORY[0x28223BE20](v236, v5);
  v235 = v233 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = type metadata accessor for ActivityManagerEvent(0);
  v8 = MEMORY[0x28223BE20](v252, v7);
  v10 = (v233 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v8, v11);
  v255 = v233 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v254 = (v233 - v16);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v251 = (v233 - v19);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v247 = (v233 - v22);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v246 = (v233 - v25);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v245 = (v233 - v28);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v244 = (v233 - v31);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v243 = (v233 - v34);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v242 = (v233 - v37);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v241 = (v233 - v40);
  v42 = MEMORY[0x28223BE20](v39, v41);
  v240 = (v233 - v43);
  v45 = MEMORY[0x28223BE20](v42, v44);
  v239 = (v233 - v46);
  v48 = MEMORY[0x28223BE20](v45, v47);
  v238 = (v233 - v49);
  v51 = MEMORY[0x28223BE20](v48, v50);
  v249 = v233 - v52;
  MEMORY[0x28223BE20](v51, v53);
  v248 = (v233 - v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v55 - 8, v56);
  v253 = v233 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2300, &qword_22D01A830);
  MEMORY[0x28223BE20](v58 - 8, v59);
  v61 = v233 - v60;
  v62 = sub_22D01471C();
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v64);
  v66 = v233 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22D01659C();
  v68 = *(v67 - 1);
  MEMORY[0x28223BE20](v67, v69);
  v71 = (v233 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  v256 = v1;
  v72 = *(v1 + 16);
  *v71 = v72;
  (*(v68 + 104))(v71, *MEMORY[0x277D85200], v67);
  v73 = v72;
  LOBYTE(v72) = sub_22D0165BC();
  (*(v68 + 8))(v71, v67);
  if ((v72 & 1) == 0)
  {
    __break(1u);
    goto LABEL_115;
  }

  v67 = v257;
  sub_22CF0D3A8(v66);
  v74 = sub_22D0146CC();
  v75 = *(v63 + 8);
  v75(v66, v62);
  if (v74 & 1) != 0 || (sub_22CF0D3A8(v66), v76 = sub_22D0146DC(), v77 = (v75)(v66, v62), (v76))
  {
    if (qword_28143DA98 == -1)
    {
LABEL_5:
      v79 = sub_22D01637C();
      __swift_project_value_buffer(v79, qword_2814442F0);
      sub_22CF0CBEC(v67, v10, type metadata accessor for ActivityManagerEvent);
      v80 = sub_22D01636C();
      v81 = sub_22D01690C();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *&v259[0] = v83;
        *v82 = 136446210;
        v84 = *v10;
        v85 = v10[1];

        sub_22CF0F5E0(v10, type metadata accessor for ActivityManagerEvent);
        v86 = sub_22CEEE31C(v84, v85, v259);

        *(v82 + 4) = v86;
        _os_log_impl(&dword_22CEE1000, v80, v81, "Not replicating ephemeral/momentary activity: %{public}s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v83);
        v87 = v83;
LABEL_7:
        MEMORY[0x2318C6860](v87, -1, -1);
        MEMORY[0x2318C6860](v82, -1, -1);

        return;
      }

      v88 = v10;
      goto LABEL_9;
    }

LABEL_115:
    swift_once();
    goto LABEL_5;
  }

  v89 = v256;
  v90 = *(v256 + 176);
  MEMORY[0x28223BE20](v77, v78);
  v233[-2] = sub_22CFA3834;
  v233[-1] = v89;
  os_unfair_lock_lock(v90 + 4);
  sub_22CFA384C(v259);
  os_unfair_lock_unlock(v90 + 4);
  v91 = *&v259[0];
  if (!*&v259[0])
  {
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v104 = sub_22D01637C();
    __swift_project_value_buffer(v104, qword_2814442F0);
    v95 = v255;
    sub_22CF0CBEC(v67, v255, type metadata accessor for ActivityManagerEvent);
    v80 = sub_22D01636C();
    v105 = sub_22D0168EC();
    if (os_log_type_enabled(v80, v105))
    {
      v82 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *&v259[0] = v106;
      *v82 = 136446210;
      v107 = *v95;
      v108 = v95[1];

      sub_22CF0F5E0(v95, type metadata accessor for ActivityManagerEvent);
      v109 = sub_22CEEE31C(v107, v108, v259);

      *(v82 + 4) = v109;
      _os_log_impl(&dword_22CEE1000, v80, v105, "Not replicating ephemeral/momentary activity because activityManager is not set: %{public}s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v106);
      v87 = v106;
      goto LABEL_7;
    }

LABEL_28:
    v88 = v95;
    goto LABEL_9;
  }

  v92 = *(&v259[0] + 1);
  sub_22CF37A40();
  if (v93)
  {
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v94 = sub_22D01637C();
    __swift_project_value_buffer(v94, qword_2814442F0);
    v95 = v254;
    sub_22CF0CBEC(v67, v254, type metadata accessor for ActivityManagerEvent);
    v96 = sub_22D01636C();
    v97 = sub_22D01690C();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *&v259[0] = v99;
      *v98 = 136446210;
      v100 = *v95;
      v101 = v95[1];

      sub_22CF0F5E0(v95, type metadata accessor for ActivityManagerEvent);
      v102 = sub_22CEEE31C(v100, v101, v259);

      *(v98 + 4) = v102;
      _os_log_impl(&dword_22CEE1000, v96, v97, "Not replicating scene-backed activity: %{public}s", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v99);
      v103 = v99;
LABEL_16:
      MEMORY[0x2318C6860](v103, -1, -1);
      MEMORY[0x2318C6860](v98, -1, -1);
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
    goto LABEL_28;
  }

  v110 = type metadata accessor for Activity(0);
  sub_22CF8CDAC(*(v67 + *(v110 + 36)), v61);
  v111 = sub_22D01483C();
  v112 = (*(*(v111 - 8) + 48))(v61, 1, v111);
  sub_22CEEC3D8(v61, &qword_27D9F2300, &qword_22D01A830);
  if (v112 != 1)
  {
    v122 = v252;
    v123 = *(v67 + *(v252 + 20));
    if (*(v67 + *(v110 + 52) + 8))
    {
      if (*(v67 + *(v252 + 20)) > 1u)
      {
        if (v123 == 2)
        {
          if (qword_28143DA98 != -1)
          {
            swift_once();
          }

          v152 = sub_22D01637C();
          __swift_project_value_buffer(v152, qword_2814442F0);
          v125 = v246;
          sub_22CF0CBEC(v67, v246, type metadata accessor for ActivityManagerEvent);
          v126 = sub_22D01636C();
          v127 = sub_22D01690C();
          if (os_log_type_enabled(v126, v127))
          {
            v128 = swift_slowAlloc();
            v129 = swift_slowAlloc();
            *&v259[0] = v129;
            *v128 = 136446210;
            v153 = v125[1];
            v255 = *v125;

            sub_22CF0F5E0(v125, type metadata accessor for ActivityManagerEvent);
            v154 = sub_22CEEE31C(v255, v153, v259);

            *(v128 + 4) = v154;
            v132 = "Remote activity did stop: %{public}s";
            goto LABEL_52;
          }
        }

        else
        {
          if (v123 != 3)
          {
            if (qword_28143DA98 != -1)
            {
              swift_once();
            }

            v158 = sub_22D01637C();
            __swift_project_value_buffer(v158, qword_2814442F0);
            v159 = v247;
            sub_22CF0CBEC(v67, v247, type metadata accessor for ActivityManagerEvent);
            v160 = sub_22D01636C();
            v161 = sub_22D01690C();
            if (os_log_type_enabled(v160, v161))
            {
              v162 = swift_slowAlloc();
              v163 = swift_slowAlloc();
              *&v259[0] = v163;
              *v162 = 136446210;
              v164 = v159[1];
              v255 = *v159;

              sub_22CF0F5E0(v159, type metadata accessor for ActivityManagerEvent);
              v165 = sub_22CEEE31C(v255, v164, v259);

              *(v162 + 4) = v165;
              _os_log_impl(&dword_22CEE1000, v160, v161, "Remote activity was dismissed: %{public}s", v162, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v163);
              MEMORY[0x2318C6860](v163, -1, -1);
              MEMORY[0x2318C6860](v162, -1, -1);
            }

            else
            {

              sub_22CF0F5E0(v159, type metadata accessor for ActivityManagerEvent);
            }

            sub_22CF90068(v67);
            v155 = *v67;
            v156 = v67[1];
            v157 = v253;
            (*(*(v110 - 8) + 56))(v253, 1, 1, v110);
            goto LABEL_88;
          }

          if (qword_28143DA98 != -1)
          {
            swift_once();
          }

          v124 = sub_22D01637C();
          __swift_project_value_buffer(v124, qword_2814442F0);
          v125 = v245;
          sub_22CF0CBEC(v67, v245, type metadata accessor for ActivityManagerEvent);
          v126 = sub_22D01636C();
          v127 = sub_22D01690C();
          if (os_log_type_enabled(v126, v127))
          {
            v128 = swift_slowAlloc();
            v129 = swift_slowAlloc();
            *&v259[0] = v129;
            *v128 = 136446210;
            v130 = v125[1];
            v255 = *v125;

            sub_22CF0F5E0(v125, type metadata accessor for ActivityManagerEvent);
            v131 = sub_22CEEE31C(v255, v130, v259);

            *(v128 + 4) = v131;
            v132 = "Remote activity did update: %{public}s";
LABEL_52:
            _os_log_impl(&dword_22CEE1000, v126, v127, v132, v128, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v129);
            MEMORY[0x2318C6860](v129, -1, -1);
            MEMORY[0x2318C6860](v128, -1, -1);

LABEL_54:
            v155 = *v67;
            v156 = v67[1];
            v157 = v253;
            sub_22CF0CBEC(v67, v253, type metadata accessor for Activity);
            (*(*(v110 - 8) + 56))(v157, 0, 1, v110);
LABEL_88:
            swift_beginAccess();

            v173 = v157;
            v174 = v155;
            v175 = v156;
            goto LABEL_89;
          }
        }

        sub_22CF0F5E0(v125, type metadata accessor for ActivityManagerEvent);
        goto LABEL_54;
      }

      if (*(v67 + *(v252 + 20)))
      {
        if (qword_28143DA98 != -1)
        {
          swift_once();
        }

        v166 = sub_22D01637C();
        __swift_project_value_buffer(v166, qword_2814442F0);
        v141 = v244;
        sub_22CF0CBEC(v67, v244, type metadata accessor for ActivityManagerEvent);
        v142 = sub_22D01636C();
        v143 = sub_22D01690C();
        if (os_log_type_enabled(v142, v143))
        {
          v144 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          *&v259[0] = v145;
          *v144 = 136446210;
          v254 = *v141;
          v255 = v110;
          v167 = v141[1];

          sub_22CF0F5E0(v141, type metadata accessor for ActivityManagerEvent);
          v168 = sub_22CEEE31C(v254, v167, v259);
          v110 = v255;

          *(v144 + 4) = v168;
          v148 = "Remote activity did start: %{public}s";
          goto LABEL_63;
        }
      }

      else
      {
        if (qword_28143DA98 != -1)
        {
          swift_once();
        }

        v140 = sub_22D01637C();
        __swift_project_value_buffer(v140, qword_2814442F0);
        v141 = v243;
        sub_22CF0CBEC(v67, v243, type metadata accessor for ActivityManagerEvent);
        v142 = sub_22D01636C();
        v143 = sub_22D01690C();
        if (os_log_type_enabled(v142, v143))
        {
          v144 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          *&v259[0] = v145;
          *v144 = 136446210;
          v254 = *v141;
          v255 = v110;
          v146 = v141[1];

          sub_22CF0F5E0(v141, type metadata accessor for ActivityManagerEvent);
          v147 = sub_22CEEE31C(v254, v146, v259);
          v110 = v255;

          *(v144 + 4) = v147;
          v148 = "Remote activity did pend: %{public}s";
LABEL_63:
          _os_log_impl(&dword_22CEE1000, v142, v143, v148, v144, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v145);
          MEMORY[0x2318C6860](v145, -1, -1);
          MEMORY[0x2318C6860](v144, -1, -1);

LABEL_65:
          ObjectType = swift_getObjectType();
          v170 = *v67;
          v171 = v67[1];
          (*(v92 + 32))(v89, &off_28402B0B0, *v67, v171, ObjectType, v92);
          v172 = v253;
          sub_22CF0CBEC(v67, v253, type metadata accessor for Activity);
          (*(*(v110 - 8) + 56))(v172, 0, 1, v110);
          swift_beginAccess();

          v173 = v172;
          v174 = v170;
          v175 = v171;
LABEL_89:
          sub_22CF0BC5C(v173, v174, v175);
          swift_endAccess();
          swift_unknownObjectRelease();
          return;
        }
      }

      sub_22CF0F5E0(v141, type metadata accessor for ActivityManagerEvent);
      goto LABEL_65;
    }

    if (*(v67 + *(v252 + 20)) > 2u)
    {
      if (v123 != 3)
      {
        v149 = *v67;
        v150 = v67[1];
        v151 = v253;
        (*(*(v110 - 8) + 56))(v253, 1, 1, v110);
        goto LABEL_67;
      }
    }

    else if (v123 < 2)
    {
      v133 = swift_getObjectType();
      v134 = *v67;
      v135 = v67[1];
      (*(v92 + 32))(v89, &off_28402B0B0, *v67, v135, v133, v92);
      v136 = v253;
      sub_22CF0CBEC(v67, v253, type metadata accessor for Activity);
      (*(*(v110 - 8) + 56))(v136, 0, 1, v110);
      swift_beginAccess();

      v137 = v136;
      v138 = v134;
      v139 = v135;
      goto LABEL_68;
    }

    v149 = *v67;
    v150 = v67[1];
    v151 = v253;
    sub_22CF0CBEC(v67, v253, type metadata accessor for Activity);
    (*(*(v110 - 8) + 56))(v151, 0, 1, v110);
LABEL_67:
    swift_beginAccess();

    v137 = v151;
    v138 = v149;
    v139 = v150;
LABEL_68:
    sub_22CF0BC5C(v137, v138, v139);
    swift_endAccess();
    v176 = sub_22CF8CF70(v67);
    if (!v176[2])
    {

      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v187 = sub_22D01637C();
      __swift_project_value_buffer(v187, qword_2814442F0);
      v188 = v248;
      sub_22CF0CBEC(v67, v248, type metadata accessor for ActivityManagerEvent);
      v189 = v67;
      v190 = v249;
      sub_22CF0CBEC(v189, v249, type metadata accessor for ActivityManagerEvent);
      v96 = sub_22D01636C();
      v191 = sub_22D01690C();
      if (os_log_type_enabled(v96, v191))
      {
        v98 = swift_slowAlloc();
        v257 = swift_slowAlloc();
        *&v259[0] = v257;
        *v98 = 136446466;
        v192 = v122;
        v193 = *v188;
        v194 = v188[1];

        sub_22CF0F5E0(v188, type metadata accessor for ActivityManagerEvent);
        v195 = sub_22CEEE31C(v193, v194, v259);

        *(v98 + 4) = v195;
        *(v98 + 12) = 2082;
        v258 = *(v190 + *(v192 + 20));
        v196 = sub_22D01669C();
        v198 = v197;
        sub_22CF0F5E0(v190, type metadata accessor for ActivityManagerEvent);
        v199 = sub_22CEEE31C(v196, v198, v259);

        *(v98 + 14) = v199;
        _os_log_impl(&dword_22CEE1000, v96, v191, "No destinations for event %{public}s of type %{public}s", v98, 0x16u);
        v200 = v257;
        swift_arrayDestroy();
        v103 = v200;
        goto LABEL_16;
      }

      swift_unknownObjectRelease();

      sub_22CF0F5E0(v190, type metadata accessor for ActivityManagerEvent);
      v88 = v188;
LABEL_9:
      sub_22CF0F5E0(v88, type metadata accessor for ActivityManagerEvent);
      return;
    }

    v254 = v176;
    if (v123 <= 1)
    {
      if (v123)
      {
        if (qword_28143DA98 != -1)
        {
          swift_once();
        }

        v220 = sub_22D01637C();
        __swift_project_value_buffer(v220, qword_2814442F0);
        v178 = v239;
        sub_22CF0CBEC(v67, v239, type metadata accessor for ActivityManagerEvent);
        v179 = sub_22D01636C();
        v180 = sub_22D01690C();
        if (os_log_type_enabled(v179, v180))
        {
          v181 = swift_slowAlloc();
          v182 = swift_slowAlloc();
          *&v259[0] = v182;
          *v181 = 136446210;
          v221 = *v178;
          v222 = v178[1];

          sub_22CF0F5E0(v178, type metadata accessor for ActivityManagerEvent);
          v223 = sub_22CEEE31C(v221, v222, v259);

          *(v181 + 4) = v223;
          v186 = "Local activity did start: %{public}s";
          goto LABEL_102;
        }
      }

      else
      {
        if (qword_28143DA98 != -1)
        {
          swift_once();
        }

        v201 = sub_22D01637C();
        __swift_project_value_buffer(v201, qword_2814442F0);
        v178 = v238;
        sub_22CF0CBEC(v67, v238, type metadata accessor for ActivityManagerEvent);
        v179 = sub_22D01636C();
        v180 = sub_22D01690C();
        if (os_log_type_enabled(v179, v180))
        {
          v181 = swift_slowAlloc();
          v182 = swift_slowAlloc();
          *&v259[0] = v182;
          *v181 = 136446210;
          v202 = *v178;
          v203 = v178[1];

          sub_22CF0F5E0(v178, type metadata accessor for ActivityManagerEvent);
          v204 = sub_22CEEE31C(v202, v203, v259);

          *(v181 + 4) = v204;
          v186 = "Local activity did pend: %{public}s";
          goto LABEL_102;
        }
      }
    }

    else if (v123 == 2)
    {
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v205 = sub_22D01637C();
      __swift_project_value_buffer(v205, qword_2814442F0);
      v178 = v240;
      sub_22CF0CBEC(v67, v240, type metadata accessor for ActivityManagerEvent);
      v179 = sub_22D01636C();
      v180 = sub_22D01690C();
      if (os_log_type_enabled(v179, v180))
      {
        v181 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        *&v259[0] = v182;
        *v181 = 136446210;
        v206 = *v178;
        v207 = v178[1];

        sub_22CF0F5E0(v178, type metadata accessor for ActivityManagerEvent);
        v208 = sub_22CEEE31C(v206, v207, v259);

        *(v181 + 4) = v208;
        v186 = "Local activity did stop: %{public}s";
        goto LABEL_102;
      }
    }

    else
    {
      if (v123 != 3)
      {
        v209 = v176;
        if (qword_28143DA98 != -1)
        {
          swift_once();
        }

        v210 = sub_22D01637C();
        __swift_project_value_buffer(v210, qword_2814442F0);
        v211 = v241;
        sub_22CF0CBEC(v67, v241, type metadata accessor for ActivityManagerEvent);
        v212 = sub_22D01636C();
        v213 = sub_22D01690C();
        v214 = os_log_type_enabled(v212, v213);
        v233[1] = v91;
        if (v214)
        {
          v215 = swift_slowAlloc();
          v216 = swift_slowAlloc();
          *&v259[0] = v216;
          *v215 = 136446210;
          v217 = *v211;
          v218 = v211[1];

          sub_22CF0F5E0(v211, type metadata accessor for ActivityManagerEvent);
          v219 = sub_22CEEE31C(v217, v218, v259);

          *(v215 + 4) = v219;
          _os_log_impl(&dword_22CEE1000, v212, v213, "Local activity was dismissed: %{public}s", v215, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v216);
          MEMORY[0x2318C6860](v216, -1, -1);
          MEMORY[0x2318C6860](v215, -1, -1);
        }

        else
        {

          sub_22CF0F5E0(v211, type metadata accessor for ActivityManagerEvent);
        }

        v224 = v209[2];
        if (v224)
        {
          *&v259[0] = MEMORY[0x277D84F90];
          sub_22CF442C0(0, v224, 0);
          v225 = *&v259[0];
          v226 = v209 + ((*(v234 + 80) + 32) & ~*(v234 + 80));
          v255 = *(v234 + 72);
          v227 = (v250 + 16);
          v228 = v237;
          v229 = v236;
          v230 = v235;
          do
          {
            sub_22CF0CBEC(v226, v228, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
            (*v227)(v230, v228, v229);
            sub_22CF0F5E0(v228, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
            *&v259[0] = v225;
            v232 = *(v225 + 16);
            v231 = *(v225 + 24);
            if (v232 >= v231 >> 1)
            {
              sub_22CF442C0((v231 > 1), v232 + 1, 1);
              v228 = v237;
              v225 = *&v259[0];
            }

            *(v225 + 16) = v232 + 1;
            (*(v250 + 32))(v225 + ((*(v250 + 80) + 32) & ~*(v250 + 80)) + *(v250 + 72) * v232, v230, v229);
            v226 += v255;
            --v224;
          }

          while (v224);

          v67 = v257;
        }

        else
        {

          v225 = MEMORY[0x277D84F90];
        }

        sub_22CF8F470(v67, v225);

        swift_unknownObjectRelease();
        return;
      }

      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v177 = sub_22D01637C();
      __swift_project_value_buffer(v177, qword_2814442F0);
      v178 = v242;
      sub_22CF0CBEC(v67, v242, type metadata accessor for ActivityManagerEvent);
      v179 = sub_22D01636C();
      v180 = sub_22D01690C();
      if (os_log_type_enabled(v179, v180))
      {
        v181 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        *&v259[0] = v182;
        *v181 = 136446210;
        v183 = *v178;
        v184 = v178[1];

        sub_22CF0F5E0(v178, type metadata accessor for ActivityManagerEvent);
        v185 = sub_22CEEE31C(v183, v184, v259);

        *(v181 + 4) = v185;
        v186 = "Local activity did update: %{public}s";
LABEL_102:
        _os_log_impl(&dword_22CEE1000, v179, v180, v186, v181, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v182);
        MEMORY[0x2318C6860](v182, -1, -1);
        MEMORY[0x2318C6860](v181, -1, -1);

LABEL_104:
        sub_22CF8D580(v67, v254);
        swift_unknownObjectRelease();

        return;
      }
    }

    sub_22CF0F5E0(v178, type metadata accessor for ActivityManagerEvent);
    goto LABEL_104;
  }

  if (qword_28143DA98 != -1)
  {
    swift_once();
  }

  v113 = sub_22D01637C();
  __swift_project_value_buffer(v113, qword_2814442F0);
  v114 = v251;
  sub_22CF0CBEC(v67, v251, type metadata accessor for ActivityManagerEvent);
  v115 = sub_22D01636C();
  v116 = sub_22D01690C();
  if (!os_log_type_enabled(v115, v116))
  {

    swift_unknownObjectRelease();
    v88 = v114;
    goto LABEL_9;
  }

  v117 = swift_slowAlloc();
  v118 = swift_slowAlloc();
  *&v259[0] = v118;
  *v117 = 136446210;
  v119 = *v114;
  v120 = v114[1];

  sub_22CF0F5E0(v114, type metadata accessor for ActivityManagerEvent);
  v121 = sub_22CEEE31C(v119, v120, v259);

  *(v117 + 4) = v121;
  _os_log_impl(&dword_22CEE1000, v115, v116, "Not replicating activity that opts out of sync: %{public}s", v117, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v118);
  MEMORY[0x2318C6860](v118, -1, -1);
  MEMORY[0x2318C6860](v117, -1, -1);
  swift_unknownObjectRelease();
}

void sub_22CF21580(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2728, qword_22D019070);
  v4 = sub_22D016C1C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_22D016EAC();
      sub_22D0166DC();
      v21 = sub_22D016ECC();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_22CF217E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_22CF21854(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_lock) + 16);
  os_unfair_lock_lock(v3);
  *(a2 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_pendingChangeAck) = 0;
  v4 = OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_bufferedChanges;
  swift_beginAccess();
  v5 = *(a2 + v4);
  *(a2 + v4) = 0;
  os_unfair_lock_unlock(v3);
  if (v5)
  {
    v6 = sub_22CFD6104(v5);

    sub_22CF1C384(v6);
  }

  return sub_22D01562C();
}

uint64_t sub_22CF21918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a1;
  v112 = a2;
  v3 = sub_22D01461C();
  v4 = *(v3 - 8);
  v110 = v3;
  v111 = v4;
  v6 = MEMORY[0x28223BE20](v3, v5);
  v101 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v99 = v80 - v9;
  v108 = sub_22D0146BC();
  v114 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v10);
  v98 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D014C4C();
  v106 = *(v12 - 8);
  v107 = v12;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v100 = v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v97 = v80 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v109 = v80 - v20;
  v95 = sub_22D01430C();
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v21);
  v94 = v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22D0149CC();
  MEMORY[0x28223BE20](v23 - 8, v24);
  v81 = v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_22D01502C();
  v26 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v27);
  v29 = v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v29;
  v30 = sub_22D01488C();
  MEMORY[0x28223BE20](v30 - 8, v31);
  v87 = v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0) - 8;
  v102 = v33;
  v35 = MEMORY[0x28223BE20](v33, v34);
  v92 = v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v39 = v80 - v38;
  v91 = v80 - v38;
  v40 = sub_22D01471C();
  v104 = *(v40 - 8);
  v105 = v40;
  v42 = MEMORY[0x28223BE20](v40, v41);
  v96 = v80 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v44);
  v113 = v80 - v45;
  sub_22CEEB6DC(a1, v39, &unk_27D9F3840, &unk_22D01A2B0);

  v46 = &v39[*(v33 + 56)];
  v47 = *(v46 + 1);
  v89 = *v46;
  v88 = v47;
  v48 = type metadata accessor for Activity(0);

  sub_22D014D7C();
  v86 = sub_22D014D4C();
  v85 = v49;
  v50 = v48[6];
  v83 = *&v46[v48[7]];
  v82 = *&v46[v48[8]];
  (*(v26 + 16))(v29, &v46[v50], v90);

  sub_22D014DBC();

  LODWORD(v90) = sub_22D014CFC();
  v80[1] = sub_22D014D1C();
  sub_22D014D0C();
  (*(v93 + 16))(v94, &v46[v48[11]], v95);

  sub_22D014D8C();

  sub_22D0146FC();
  sub_22CF0C71C(v46);
  v51 = v103;
  v52 = v92;
  sub_22CEEB6DC(v103, v92, &unk_27D9F3840, &unk_22D01A2B0);

  v53 = v102;
  v54 = *(v102 + 56);
  v55 = v52;
  LOBYTE(v52) = sub_22CF0B5E0();
  sub_22CF0C71C(v55 + v54);
  v56 = v106;
  v57 = v107;
  v58 = **(&unk_2787486F8 + v52);
  v59 = v97;
  (*(v106 + 104))(v97, v58, v107);
  (*(v56 + 32))(v109, v59, v57);
  v60 = v51;
  v61 = v91;
  sub_22CEEB6DC(v60, v91, &unk_27D9F3840, &unk_22D01A2B0);

  v62 = v61 + *(v53 + 56);
  v63 = v48[14];
  v64 = v114;
  v93 = *(v114 + 16);
  v65 = v98;
  v66 = v108;
  (v93)(v98, v62 + v63, v108);
  sub_22CF0C71C(v62);
  v67 = v99;
  sub_22D01467C();
  v68 = *(v64 + 8);
  v114 = v64 + 8;
  v68(v65, v66);
  v69 = sub_22D0145FC();
  v94 = v70;
  v95 = v69;
  v97 = *(v111 + 8);
  (v97)(v67, v110);
  sub_22CEEB6DC(v103, v61, &unk_27D9F3840, &unk_22D01A2B0);

  v71 = v61 + *(v102 + 56);
  v72 = v71 + v48[14];
  v73 = v108;
  (v93)(v65, v72, v108);
  sub_22CF0C71C(v71);
  sub_22D01467C();
  v68(v65, v73);
  (*(v104 + 16))(v96, v113, v105);
  v75 = v106;
  v74 = v107;
  v76 = v109;
  (*(v106 + 16))(v100, v109, v107);
  v77 = v110;
  (*(v111 + 16))(v101, v67, v110);
  sub_22D014A8C();
  (v97)(v67, v77);
  (*(v75 + 8))(v76, v74);
  (*(v104 + 8))(v113, v105);
  v78 = sub_22D014A9C();
  return (*(*(v78 - 8) + 56))(v112, 0, 1, v78);
}

uint64_t sub_22CF224E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2300, &qword_22D01A830);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v30 - v9;
  v11 = sub_22D01483C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v30[0] = a2;
    v30[1] = result;
    v17 = a3;
    v18 = *(v3 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_connection);
    sub_22CEE84BC([v18 remoteProcess]);
    (*(v12 + 104))(v10, *MEMORY[0x277CB9348], v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    (*(v12 + 32))(v15, v10, v11);
    sub_22CEE3A84(v3 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_activityAuthorizer, v31);
    v19 = v32;
    v20 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v21 = [v18 remoteProcess];
    v22 = v17;
    v23 = v17;
    v24 = v30[0];
    v25 = (*(v20 + 16))(v23, v21, a1, v30[0], v19, v20);

    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    if (v25)
    {
      sub_22CF2412C(a1, v24, v15, v22);
    }

    else
    {
      if (qword_28143FB60 != -1)
      {
        swift_once();
      }

      v26 = sub_22D01637C();
      __swift_project_value_buffer(v26, qword_2814444B0);
      v27 = sub_22D01636C();
      v28 = sub_22D0168EC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_22CEE1000, v27, v28, "Client is not permitted to update activity", v29, 2u);
        MEMORY[0x2318C6860](v29, -1, -1);
        swift_unknownObjectRelease();

        return (*(v12 + 8))(v15, v11);
      }
    }

    swift_unknownObjectRelease();
    return (*(v12 + 8))(v15, v11);
  }

  return result;
}

uint64_t sub_22CF22940(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v64 = a3;
  v65 = a4;
  v67 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2308, &unk_22D018950);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v60 - v7;
  v9 = sub_22D0150CC();
  v66 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2340, &qword_22D01D0A0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v60 - v15;
  v17 = sub_22D01502C();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v60 - v24;
  v26 = a2;
  sub_22CEE84BC(v26);
  v61 = v22;
  v62 = v12;
  (*(v18 + 56))(v16, 0, 1, v17);
  v27 = v18;
  v28 = *(v18 + 32);
  v63 = v25;
  v28(v25, v16, v17);
  sub_22D01462C();
  v29 = v66;
  v30 = (*(v66 + 48))(v8, 1, v9);
  v67 = v17;
  if (v30 == 1)
  {
    sub_22CEEC3D8(v8, &qword_27D9F2308, &unk_22D018950);
LABEL_8:
    v36 = v27;
LABEL_9:
    v37 = sub_22D01666C();
    v38 = [v26 hasEntitlement_];

    v39 = v63;
    v40 = v67;
    if (v38)
    {
      if (qword_28143FB28 != -1)
      {
        swift_once();
      }

      v41 = sub_22D01637C();
      __swift_project_value_buffer(v41, qword_281444420);
      v42 = v61;
      (*(v36 + 16))(v61, v39, v40);
      v43 = sub_22D01636C();
      v44 = sub_22D01690C();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v68 = v46;
        *v45 = 136380675;
        sub_22CEFF2B0(&qword_281443988, MEMORY[0x277CB9810], MEMORY[0x277CB9830]);
        v47 = sub_22D016DEC();
        v49 = v48;
        v50 = *(v36 + 8);
        v50(v42, v40);
        v51 = sub_22CEEE31C(v47, v49, &v68);

        *(v45 + 4) = v51;
        _os_log_impl(&dword_22CEE1000, v43, v44, "Requester is entitled to update activities while playing background audio: %{private}s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        MEMORY[0x2318C6860](v46, -1, -1);
        MEMORY[0x2318C6860](v45, -1, -1);

        v50(v63, v40);
      }

      else
      {

        v54 = *(v36 + 8);
        v54(v42, v40);
        v54(v39, v40);
      }

      v52 = 1;
    }

    else
    {
      v53 = sub_22CF23150(v26);
      (*(v36 + 8))(v39, v40);
      v52 = v53 ^ 1;
    }

    return v52 & 1;
  }

  v32 = v9;
  v33 = v62;
  (*(v29 + 32))(v62, v8, v9);
  if ((sub_22D01505C() & 1) == 0)
  {
    (*(v29 + 8))(v33, v9);
    goto LABEL_8;
  }

  v34 = sub_22D01666C();
  v35 = [v26 hasEntitlement_];

  v36 = v27;
  if (v35)
  {
    (*(v29 + 8))(v33, v32);
    goto LABEL_9;
  }

  if (qword_28143FB28 != -1)
  {
    swift_once();
  }

  v55 = sub_22D01637C();
  __swift_project_value_buffer(v55, qword_281444420);
  v56 = v26;
  v57 = sub_22D01636C();
  v58 = sub_22D0168EC();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 67240192;
    *(v59 + 4) = [v56 pid];

    _os_log_impl(&dword_22CEE1000, v57, v58, "Requester is not entitled to request activities that needs to break through Focus: %{public}d", v59, 8u);
    MEMORY[0x2318C6860](v59, -1, -1);
  }

  else
  {
  }

  (*(v29 + 8))(v62, v32);
  (*(v27 + 8))(v63, v67);
  v52 = 0;
  return v52 & 1;
}

uint64_t sub_22CF23150(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3D00, &qword_22D01D0A8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v91 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3D08, &qword_22D01D0B0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v91 - v9;
  v11 = &off_278748000;
  v12 = [objc_opt_self() identifierWithPid_];
  if (!v12)
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v16 = sub_22D01637C();
    __swift_project_value_buffer(v16, qword_281444420);
    v17 = a1;
    v18 = sub_22D01636C();
    v19 = sub_22D0168EC();
    if (!os_log_type_enabled(v18, v19))
    {

      goto LABEL_48;
    }

    v20 = swift_slowAlloc();
    *v20 = 67240192;
    *(v20 + 4) = [v17 pid];

    _os_log_impl(&dword_22CEE1000, v18, v19, "Could not get identifier for pid: %{public}d", v20, 8u);
    MEMORY[0x2318C6860](v20, -1, -1);

    return 0;
  }

  v13 = v12;
  v107 = v7;
  sub_22CEE82F8(0, &qword_28143D928, 0x277D46F48);
  v14 = v13;
  v15 = sub_22CF23FE0(v14);

  v106 = v6;
  v21 = [v15 currentState];
  if (!v21)
  {
    if (qword_28143FB28 != -1)
    {
LABEL_91:
      swift_once();
    }

    v44 = sub_22D01637C();
    __swift_project_value_buffer(v44, qword_281444420);
    v17 = a1;
    v45 = sub_22D01636C();
    v46 = sub_22D0168EC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 67240192;
      *(v47 + 4) = [v17 v11[417]];

      _os_log_impl(&dword_22CEE1000, v45, v46, "Could not get state for pid: %{public}d", v47, 8u);
      MEMORY[0x2318C6860](v47, -1, -1);

      return 0;
    }

LABEL_47:
    goto LABEL_48;
  }

  v22 = v21;
  v104 = v5;
  v23 = [v21 endowmentNamespaces];
  if (v23)
  {
    v24 = v23;
    v25 = sub_22D01685C();

    v26 = sub_22D01667C();
    v28 = sub_22CF24034(v26, v27, v25);

    if (v28)
    {
      if (qword_28143FB28 != -1)
      {
        swift_once();
      }

      v29 = sub_22D01637C();
      __swift_project_value_buffer(v29, qword_281444420);
      v17 = a1;
      v30 = sub_22D01636C();
      v31 = sub_22D01690C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 67240192;
        *(v32 + 4) = [v17 pid];

        v33 = "Foreground process is permitted to update activity: %{public}d";
LABEL_45:
        _os_log_impl(&dword_22CEE1000, v30, v31, v33, v32, 8u);
        MEMORY[0x2318C6860](v32, -1, -1);

        return 0;
      }

LABEL_46:

      goto LABEL_47;
    }
  }

  v34 = [v22 assertions];
  if (!v34)
  {
LABEL_41:
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v56 = sub_22D01637C();
    __swift_project_value_buffer(v56, qword_281444420);
    v17 = a1;
    v30 = sub_22D01636C();
    v31 = sub_22D0168EC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67240192;
      *(v32 + 4) = [v17 pid];

      v33 = "Process is not targeted by assertions and can update activity: %{public}d";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v35 = v34;
  v36 = sub_22CEE82F8(0, &qword_28143D920, 0x277D46F10);
  v37 = sub_22D00631C();
  v105 = v36;
  v38 = sub_22D01685C();

  v98 = v38 & 0xC000000000000001;
  if ((v38 & 0xC000000000000001) != 0)
  {
    if (sub_22D016B7C())
    {
      v103 = v38;
      v97 = 0;
      v96 = a1;
      v99 = v22;
      v100 = v15;
      v101 = v14;
      swift_unknownObjectRetain();
      sub_22D016B3C();
      v95 = v37;
      sub_22D01689C();
      v39 = v111;
      v40 = v112;
      v42 = v113;
      v41 = v114;
      v43 = v115;
      goto LABEL_28;
    }

    goto LABEL_40;
  }

  if (!*(v38 + 16))
  {
LABEL_40:

    goto LABEL_41;
  }

  v95 = v37;
  v97 = 0;
  v96 = a1;
  v99 = v22;
  v100 = v15;
  v101 = v14;
  v48 = -1 << *(v38 + 32);
  v40 = v38 + 56;
  v42 = ~v48;
  v49 = -v48;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  else
  {
    v50 = -1;
  }

  v43 = v50 & *(v38 + 56);

  v41 = 0;
  v103 = v38;
  v39 = v38;
LABEL_28:
  v102 = v42;
  do
  {
    if (v39 < 0)
    {
      v55 = sub_22D016BAC();
      if (!v55)
      {
        goto LABEL_39;
      }

      v109 = v55;
      swift_dynamicCast();
      v51 = v116;
      if (!v116)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v53 = v41;
      v54 = v43;
      if (!v43)
      {
        while (1)
        {
          v41 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            __break(1u);
LABEL_88:
            v59 = v107;
LABEL_75:
            sub_22CEE57FC(v59);

            if (qword_28143FB28 != -1)
            {
              swift_once();
            }

            v82 = sub_22D01637C();
            __swift_project_value_buffer(v82, qword_281444420);
            v83 = v96;
            v84 = sub_22D01636C();
            v85 = sub_22D0168EC();
            if (os_log_type_enabled(v84, v85))
            {
              v86 = swift_slowAlloc();
              *v86 = 67240192;
              *(v86 + 4) = [v83 pid];

              _os_log_impl(&dword_22CEE1000, v84, v85, "Process is only playing background media so is forbidden to update activity: %{public}d", v86, 8u);
              MEMORY[0x2318C6860](v86, -1, -1);
            }

            else
            {
            }

            return 1;
          }

          if (v41 >= ((v42 + 64) >> 6))
          {
            break;
          }

          v54 = *(v40 + 8 * v41);
          ++v53;
          if (v54)
          {
            goto LABEL_29;
          }
        }

LABEL_39:

        sub_22CEE57FC(v39);

        return 0;
      }

LABEL_29:
      v43 = (v54 - 1) & v54;
      v51 = *(*(v39 + 48) + ((v41 << 9) | (8 * __clz(__rbit64(v54)))));
      if (!v51)
      {
        goto LABEL_39;
      }
    }

    v52 = [v51 reason];
  }

  while (v52 != 1);
  sub_22CEE57FC(v39);
  if (v98)
  {
    v58 = v103;
    swift_unknownObjectRetain();
    sub_22D016B3C();
    sub_22D01689C();
    v59 = v116;
    v60 = v117;
    v62 = v118;
    v61 = v119;
    v63 = v120;
  }

  else
  {
    v58 = v103;
    v64 = -1 << *(v103 + 32);
    v60 = v103 + 56;
    v62 = ~v64;
    v65 = -v64;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    else
    {
      v66 = -1;
    }

    v63 = (v66 & *(v103 + 56));

    v61 = 0;
  }

  v67 = v97;
  v14 = &selRef_initWithBundleIdentifier_allowPlaceholder_error_;
  v94 = v62;
  v15 = ((v62 + 64) >> 6);
  v95 = (v107 + 56);
  v93 = (v107 + 32);
  v92 = (v107 + 8);
  v102 = v60;
  v103 = v58;
  v107 = v59;
  while (1)
  {
    a1 = v63;
    v11 = v61;
    if (v59 < 0)
    {
      v71 = sub_22D016BAC();
      if (!v71)
      {
        goto LABEL_88;
      }

      v108 = v71;
      swift_dynamicCast();
      v70 = v109;
      v98 = v61;
      v63 = a1;
    }

    else
    {
      v68 = v61;
      v69 = a1;
      if (!a1)
      {
        while (1)
        {
          v61 = v68 + 1;
          if (__OFADD__(v68, 1))
          {
            break;
          }

          if (v61 >= v15)
          {
            goto LABEL_75;
          }

          v69 = *(v60 + 8 * v61);
          ++v68;
          if (v69)
          {
            goto LABEL_64;
          }
        }

        __break(1u);
        goto LABEL_91;
      }

LABEL_64:
      v98 = v11;
      v63 = ((v69 - 1) & v69);
      v70 = *(*(v59 + 48) + ((v61 << 9) | (8 * __clz(__rbit64(v69)))));
    }

    if (!v70)
    {
      v59 = v107;
      goto LABEL_75;
    }

    if (![v70 v14[45]])
    {
LABEL_57:

      goto LABEL_58;
    }

    if ([v70 v14[45]] != 1)
    {
      break;
    }

    v72 = [v70 explanation];
    if (!v72)
    {
      goto LABEL_57;
    }

    v73 = v72;
    v74 = sub_22D01667C();
    v76 = v75;

    v77 = v104;
    sub_22D0157BC();
    if (v67)
    {

      (*v95)(v77, 1, 1, v106);
      sub_22CEEC3D8(v77, &qword_27D9F3D00, &qword_22D01D0A8);
      v67 = 0;
      v14 = &selRef_initWithBundleIdentifier_allowPlaceholder_error_;
LABEL_58:
      v60 = v102;
      v59 = v107;
    }

    else
    {
      v78 = *v95;
      v97 = 0;
      v79 = v106;
      v78(v77, 0, 1, v106);
      (*v93)(v10, v77, v79);
      v109 = v74;
      v110 = v76;
      sub_22D006384();
      sub_22D0063D8();
      v80 = sub_22D01662C();

      v81 = v79;
      v67 = v97;
      (*v92)(v10, v81);

      v60 = v102;
      v14 = &selRef_initWithBundleIdentifier_allowPlaceholder_error_;
      v59 = v107;
      if (v80)
      {
        goto LABEL_83;
      }
    }
  }

  v59 = v107;
LABEL_83:
  sub_22CEE57FC(v59);

  if (qword_28143FB28 != -1)
  {
    swift_once();
  }

  v87 = sub_22D01637C();
  __swift_project_value_buffer(v87, qword_281444420);
  v17 = v96;
  v88 = sub_22D01636C();
  v89 = sub_22D01690C();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 67240192;
    *(v90 + 4) = [v17 pid];

    _os_log_impl(&dword_22CEE1000, v88, v89, "Process is doing more than playing background media so is permitted to update activity: %{public}d", v90, 8u);
    MEMORY[0x2318C6860](v90, -1, -1);

    return 0;
  }

LABEL_48:
  return 0;
}

uint64_t sub_22CF24034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22D016EAC();
  sub_22D0166DC();
  v6 = sub_22D016ECC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22D016DFC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_22CF2412C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a3;
  v25 = a1;
  v26 = a2;
  v7 = sub_22D01483C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v11 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D0146BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v16 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = v5;
  v27 = *(v5 + 16);
  (*(v13 + 16))(v16, a4, v12);
  (*(v8 + 16))(v11, v24, v7);
  v17 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v18 = (v14 + *(v8 + 80) + v17) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v20 = v25;
  *(v19 + 2) = v5;
  *(v19 + 3) = v20;
  *(v19 + 4) = v26;
  (*(v13 + 32))(&v19[v17], v16, v12);
  (*(v8 + 32))(&v19[v18], v11, v7);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_22CF245B8;
  *(v21 + 24) = v19;
  aBlock[4] = sub_22CEF4034;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF3C20;
  aBlock[3] = &block_descriptor_76;
  v22 = _Block_copy(aBlock);

  dispatch_sync(v27, v22);
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }
}

uint64_t sub_22CF24450()
{
  v1 = sub_22D0146BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_22D01483C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

void sub_22CF245B8()
{
  v1 = *(sub_22D0146BC() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_22D01483C() - 8);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_22CF2468C(v5, v6, v7, v0 + v2, v8);
}

void sub_22CF2468C(void *a1, NSObject *a2, NSObject *a3, _BYTE *a4, uint64_t a5)
{
  v151 = a5;
  v154 = a4;
  v156 = a2;
  v157 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A78, &unk_22D01B130);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v146 = &v129[-v8];
  v144 = type metadata accessor for XPCInputParticipant.ActivityUpdate(0);
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144, v9);
  v145 = &v129[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v142 = sub_22D01436C();
  v141 = *(v142 - 1);
  MEMORY[0x28223BE20](v142, v11);
  v139 = &v129[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v150 = sub_22D01483C();
  v147 = *(v150 - 8);
  v14 = MEMORY[0x28223BE20](v150, v13);
  v140 = &v129[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14, v16);
  v149 = &v129[-v17];
  v152 = sub_22D0146BC();
  v155 = *(v152 - 8);
  v19 = MEMORY[0x28223BE20](v152, v18);
  v148 = &v129[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v129[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2308, &unk_22D018950);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v129[-v26];
  v28 = sub_22D01430C();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v129[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = type metadata accessor for Activity(0);
  v34 = *(v33 - 8);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v38 = &v129[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v36, v39);
  v153 = &v129[-v40];
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    swift_beginAccess();
    v138 = a1;
    v41 = a1[15];
    if (*(v41 + 16))
    {

      v42 = sub_22CEEC698(v156, v157);
      if (v43)
      {
        sub_22CF0CB84(*(v41 + 56) + *(v34 + 72) * v42, v38, type metadata accessor for Activity);

        sub_22CF0FF70(v38, v153, type metadata accessor for Activity);
        sub_22D0142DC();
        sub_22CEF87FC(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v44 = sub_22D01663C();
        (*(v29 + 8))(v32, v28);
        if ((v44 & 1) == 0)
        {
          sub_22D01462C();
          v45 = sub_22D0150CC();
          v46 = (*(*(v45 - 8) + 48))(v27, 1, v45);
          sub_22CEEC3D8(v27, &qword_27D9F2308, &unk_22D018950);
          if (v46 == 1)
          {
            v47 = v157;
            if (qword_28143FB58 == -1)
            {
LABEL_7:
              v48 = sub_22D01637C();
              __swift_project_value_buffer(v48, qword_281444498);

              v49 = sub_22D01636C();
              v50 = sub_22D0168EC();

              if (os_log_type_enabled(v49, v50))
              {
                v51 = swift_slowAlloc();
                v52 = swift_slowAlloc();
                v159 = v52;
                *v51 = 136446210;
                *(v51 + 4) = sub_22CEEE31C(v156, v47, &v159);
                _os_log_impl(&dword_22CEE1000, v49, v50, "Cannot update a pending activity without an alert configuration; id %{public}s", v51, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v52);
                MEMORY[0x2318C6860](v52, -1, -1);
                MEMORY[0x2318C6860](v51, -1, -1);
              }

              goto LABEL_51;
            }

LABEL_56:
            swift_once();
            goto LABEL_7;
          }
        }

        v63 = v157;
        if (qword_28143FB58 != -1)
        {
          swift_once();
        }

        v64 = sub_22D01637C();
        v65 = __swift_project_value_buffer(v64, qword_281444498);
        v66 = v152;
        v135 = *(v155 + 16);
        v137 = v155 + 16;
        v135(v23, v154, v152);
        v67 = v147;
        v68 = v147 + 16;
        v69 = *(v147 + 16);
        v71 = v149;
        v70 = v150;
        v69(v149, v151, v150);

        v133 = v65;
        v72 = sub_22D01636C();
        v73 = sub_22D01690C();

        v74 = os_log_type_enabled(v72, v73);
        v136 = v68;
        v134 = v69;
        if (v74)
        {
          v75 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v159 = v132;
          *v75 = 136446723;
          *(v75 + 4) = sub_22CEEE31C(v156, v63, &v159);
          *(v75 + 12) = 2082;
          v130 = v73;
          v76 = v139;
          v131 = v72;
          sub_22D01466C();
          sub_22CEF87FC(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v77 = v142;
          v78 = sub_22D016DEC();
          v79 = v70;
          v81 = v80;
          (*(v141 + 8))(v76, v77);
          v142 = *(v155 + 8);
          (v142)(v23, v152);
          v82 = sub_22CEEE31C(v78, v81, &v159);

          *(v75 + 14) = v82;
          *(v75 + 22) = 2081;
          v83 = v149;
          v69(v140, v149, v79);
          v84 = sub_22D01669C();
          v86 = v85;
          v87 = v79;
          v63 = v157;
          (*(v67 + 8))(v83, v87);
          v47 = v156;
          v88 = sub_22CEEE31C(v84, v86, &v159);

          *(v75 + 24) = v88;
          v89 = v131;
          _os_log_impl(&dword_22CEE1000, v131, v130, "Pending activity update for %{public}s with payload %{public}s for XPC participant content source %{private}s", v75, 0x20u);
          v90 = v132;
          swift_arrayDestroy();
          MEMORY[0x2318C6860](v90, -1, -1);
          v91 = v75;
          v66 = v152;
          MEMORY[0x2318C6860](v91, -1, -1);
        }

        else
        {

          (*(v67 + 8))(v71, v70);
          v142 = *(v155 + 8);
          (v142)(v23, v66);
          v47 = v156;
        }

        v92 = v138;
        v93 = v148;
        v94 = v135;
        v135(v148, v154, v66);
        v95 = __swift_project_boxed_opaque_existential_1(v92 + 28, v92[31]);
        v96 = *v95;
        v97 = *(*(*v95 + 48) + 16);
        os_unfair_lock_lock(v97);
        v98 = *(v96 + 112);

        v99 = sub_22CF24034(v47, v63, v98);

        os_unfair_lock_unlock(v97);
        if (v99)
        {

          v100 = sub_22D01636C();
          v101 = sub_22D01690C();

          if (os_log_type_enabled(v100, v101))
          {
            v102 = swift_slowAlloc();
            v103 = swift_slowAlloc();
            v159 = v103;
            *v102 = 136446210;
            *(v102 + 4) = sub_22CEEE31C(v47, v63, &v159);
            _os_log_impl(&dword_22CEE1000, v100, v101, "Activity is unthrottled: %{public}s", v102, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v103);
            MEMORY[0x2318C6860](v103, -1, -1);
            MEMORY[0x2318C6860](v102, -1, -1);
          }

          goto LABEL_50;
        }

        v104 = *(*__swift_project_boxed_opaque_existential_1(v92 + 20, v92[23]) + 16);
        if (*(v104 + 16))
        {
          v105 = sub_22CF259D0(0);
          if (v106)
          {
            v107 = sub_22CF25A3C(v47, v63, *(*(v104 + 56) + 8 * v105));
            v108 = v138;
            __swift_project_boxed_opaque_existential_1(v138 + 20, v138[23]);
            sub_22CF263F8(v47, v63);
            v109 = *(*__swift_project_boxed_opaque_existential_1(v108 + 20, v108[23]) + 16);
            if (*(v109 + 16))
            {
              v110 = sub_22CF259D0(0);
              if (v111)
              {
                v112 = sub_22CF25A3C(v47, v63, *(*(v109 + 56) + 8 * v110));
                v113 = v112;
                if (v107)
                {

                  v114 = sub_22D01636C();
                  v115 = sub_22D01690C();

                  v116 = os_log_type_enabled(v114, v115);
                  if (!v113)
                  {
                    if (v116)
                    {
                      v117 = swift_slowAlloc();
                      v118 = swift_slowAlloc();
                      v159 = v118;
                      *v117 = 136446210;
                      *(v117 + 4) = sub_22CEEE31C(v47, v63, &v159);
                      _os_log_impl(&dword_22CEE1000, v114, v115, "Activity is no longer chatty: %{public}s", v117, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1Tm(v118);
                      MEMORY[0x2318C6860](v118, -1, -1);
                      MEMORY[0x2318C6860](v117, -1, -1);
                    }

                    swift_beginAccess();
                    sub_22CF3C4B0(v47, v63);
                    swift_endAccess();

                    goto LABEL_50;
                  }
                }

                else
                {
                  if (!v112)
                  {
LABEL_50:
                    v126 = v144;
                    v127 = v145;
                    v134(v145 + *(v144 + 20), v151, v150);
                    v94(v127 + *(v126 + 24), v93, v66);

                    sub_22D0142DC();
                    *v127 = v47;
                    v127[1] = v63;
                    v128 = v146;
                    sub_22CF0CB84(v127, v146, type metadata accessor for XPCInputParticipant.ActivityUpdate);
                    (*(v143 + 56))(v128, 0, 1, v126);
                    swift_beginAccess();

                    sub_22CF26EA8(v128, v47, v63);
                    swift_endAccess();
                    sub_22CF2737C();
                    sub_22CF289A8(v127, type metadata accessor for XPCInputParticipant.ActivityUpdate);
                    (v142)(v93, v66);
LABEL_51:
                    sub_22CF289A8(v153, type metadata accessor for Activity);
                    return;
                  }

                  v119 = v138;
                  swift_beginAccess();
                  v120 = v119[18];

                  v121 = sub_22CF24034(v47, v63, v120);

                  v114 = sub_22D01636C();
                  v115 = sub_22D01690C();

                  v116 = os_log_type_enabled(v114, v115);
                  if ((v121 & 1) == 0)
                  {
                    if (v116)
                    {
                      v124 = swift_slowAlloc();
                      v125 = swift_slowAlloc();
                      v159 = v125;
                      *v124 = 136446210;
                      *(v124 + 4) = sub_22CEEE31C(v47, v63, &v159);
                      _os_log_impl(&dword_22CEE1000, v114, v115, "Activity has become chatty: %{public}s", v124, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1Tm(v125);
                      MEMORY[0x2318C6860](v125, -1, -1);
                      MEMORY[0x2318C6860](v124, -1, -1);
                    }

                    swift_beginAccess();

                    sub_22CEE54CC(&v158, v47, v63);
                    swift_endAccess();

                    goto LABEL_49;
                  }
                }

                if (v116)
                {
                  v122 = swift_slowAlloc();
                  v123 = swift_slowAlloc();
                  v159 = v123;
                  *v122 = 136446210;
                  *(v122 + 4) = sub_22CEEE31C(v47, v63, &v159);
                  _os_log_impl(&dword_22CEE1000, v114, v115, "Activity continues to be chatty: %{public}s", v122, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v123);
                  MEMORY[0x2318C6860](v123, -1, -1);
                  MEMORY[0x2318C6860](v122, -1, -1);
                }

LABEL_49:
                sub_22D01468C();
                goto LABEL_50;
              }

LABEL_55:
              __break(1u);
              goto LABEL_56;
            }

LABEL_54:
            __break(1u);
            goto LABEL_55;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_54;
      }
    }

    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v57 = sub_22D01637C();
    __swift_project_value_buffer(v57, qword_281444498);
    v58 = v157;

    v59 = sub_22D01636C();
    v60 = sub_22D0168EC();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v159 = v62;
      *v61 = 136446210;
      *(v61 + 4) = sub_22CEEE31C(v156, v58, &v159);
      _os_log_impl(&dword_22CEE1000, v59, v60, "XPCInputParticipant has no activity for update; id %{public}s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x2318C6860](v62, -1, -1);
      MEMORY[0x2318C6860](v61, -1, -1);
    }
  }

  else
  {
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v53 = sub_22D01637C();
    __swift_project_value_buffer(v53, qword_281444498);
    v157 = sub_22D01636C();
    v54 = sub_22D0168EC();
    if (os_log_type_enabled(v157, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_22CEE1000, v157, v54, "XPCInputParticipant has no ActivityManager", v55, 2u);
      MEMORY[0x2318C6860](v55, -1, -1);
    }

    v56 = v157;
  }
}

uint64_t type metadata accessor for XPCInputParticipant.ActivityUpdate(uint64_t a1)
{
  result = qword_28143EB70;
  if (!qword_28143EB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22CF259D0(char a1)
{
  sub_22D016EAC();
  MEMORY[0x2318C6020](a1 & 1);
  v2 = sub_22D016ECC();

  return sub_22CF25C40(a1 & 1, v2);
}

BOOL sub_22CF25A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for XPCInputBudgetManager.Budget(0);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v23 - v15;
  swift_beginAccess();

  v18 = sub_22CF25CB0(v17, v4);

  *(v4 + 32) = v18;

  if (*(v18 + 16) && (v19 = sub_22CEEC698(a1, a2), (v20 & 1) != 0))
  {
    sub_22CF2628C(*(v18 + 56) + *(v9 + 72) * v19, v13);

    sub_22CF26E44(v13, v16);
    v21 = *&v16[*(v8 + 20)];
    sub_22CF26360(v16);
    return v21 >= a3;
  }

  else
  {

    return 0;
  }
}

uint64_t type metadata accessor for XPCInputBudgetManager.Budget(uint64_t a1)
{
  result = qword_28143E6F8;
  if (!qword_28143E6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22CF25C40(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_22CF25CB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_22CFFFE74(v14, v8, a1, a2);
      MEMORY[0x2318C6860](v14, -1, -1);

      return v12;
    }
  }

  MEMORY[0x28223BE20](v10, v11);
  bzero(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v12 = sub_22CF25E70((v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_22CF25E70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a2;
  v61 = a4;
  v46 = a1;
  v60 = sub_22D01430C();
  v5 = *(v60 - 8);
  v7 = MEMORY[0x28223BE20](v60, v6);
  v51 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v59 = &v44 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3CF0, &unk_22D01CDE0);
  v12 = MEMORY[0x28223BE20](v58, v11);
  v57 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v56 = (&v44 - v15);
  v16 = type metadata accessor for XPCInputBudgetManager.Budget(0);
  v55 = *(v16 - 8);
  result = MEMORY[0x28223BE20](v16 - 8, v17);
  v54 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v62 = a3;
  v21 = *(a3 + 64);
  v47 = 0;
  v48 = a3 + 64;
  v22 = 1 << *(a3 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v49 = (v22 + 63) >> 6;
  v52 = (v5 + 8);
  v53 = (v5 + 16);
  v25 = v60;
  while (v24)
  {
    v26 = __clz(__rbit64(v24));
    v64 = (v24 - 1) & v24;
LABEL_11:
    v29 = v26 | (v20 << 6);
    v30 = v62[7];
    v31 = (v62[6] + 16 * v29);
    v33 = *v31;
    v32 = v31[1];
    v34 = v54;
    v35 = *(v55 + 72);
    v50 = v29;
    sub_22CF2628C(v30 + v35 * v29, v54);
    v36 = v56;
    *v56 = v33;
    *(v36 + 8) = v32;
    v63 = v32;
    v37 = v58;
    sub_22CF2628C(v34, v36 + *(v58 + 48));
    v38 = v57;
    sub_22CF262F0(v36, v57);
    swift_bridgeObjectRetain_n();

    v39 = *(v37 + 48);
    v40 = v51;
    (*v53)(v51, v38 + v39, v25);
    sub_22CF26360(v38 + v39);
    v41 = v59;
    sub_22D01425C();
    v42 = *v52;
    (*v52)(v40, v25);
    sub_22D0142DC();
    LOBYTE(v39) = sub_22D01427C();
    v42(v40, v25);
    v42(v41, v25);
    sub_22CEEC3D8(v36, &qword_27D9F3CF0, &unk_22D01CDE0);
    sub_22CF26360(v34);

    v24 = v64;
    if (v39)
    {
      *(v46 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      if (__OFADD__(v47++, 1))
      {
        __break(1u);
        return sub_22CF263BC(v46, v45, v47, v62);
      }
    }
  }

  v27 = v20;
  while (1)
  {
    v20 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v20 >= v49)
    {
      return sub_22CF263BC(v46, v45, v47, v62);
    }

    v28 = *(v48 + 8 * v20);
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v64 = (v28 - 1) & v28;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF2628C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCInputBudgetManager.Budget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF262F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3CF0, &unk_22D01CDE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF26360(uint64_t a1)
{
  v2 = type metadata accessor for XPCInputBudgetManager.Budget(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22CF263F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3250, &qword_22D01B1E8);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for XPCInputBudgetManager.Budget(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  v19 = sub_22CF25CB0(v18, v2);

  *(v2 + 32) = v19;

  if (!os_variant_has_internal_ui() || (v20 = [objc_opt_self() standardUserDefaults], v21 = sub_22D01666C(), v22 = objc_msgSend(v20, sel_BOOLForKey_, v21), v20, v21, !v22))
  {
    v27 = *(v3 + 32);
    v28 = v36;
    if (*(v27 + 16))
    {

      v29 = sub_22CEEC698(a1, v28);
      if (v30)
      {
        sub_22CF2628C(*(v27 + 56) + *(v14 + 72) * v29, v12);

        v31 = *(v14 + 56);
        v31(v12, 0, 1, v13);
        sub_22CF26E44(v12, v17);
LABEL_13:
        v32 = *(v13 + 20);
        v33 = *&v17[v32];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (!v34)
        {
          *&v17[v32] = v35;
          sub_22CF2628C(v17, v9);
          v31(v9, 0, 1, v13);
          swift_beginAccess();

          sub_22CF26930(v9, a1, v28);
          swift_endAccess();
          sub_22CF26360(v17);
          return;
        }

        __break(1u);
        goto LABEL_16;
      }
    }

    v31 = *(v14 + 56);
    v31(v12, 1, 1, v13);
    sub_22D0142DC();
    *&v17[*(v13 + 20)] = 0;
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_22CEEC3D8(v12, &qword_27D9F3250, &qword_22D01B1E8);
    }

    goto LABEL_13;
  }

  if (qword_28143FB28 != -1)
  {
LABEL_16:
    swift_once();
  }

  v23 = sub_22D01637C();
  __swift_project_value_buffer(v23, qword_281444420);
  v24 = sub_22D01636C();
  v25 = sub_22D01690C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_22CEE1000, v24, v25, "Automation flag set, not reducing budget.", v26, 2u);
    MEMORY[0x2318C6860](v26, -1, -1);
  }
}

uint64_t sub_22CF26840(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D01430C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22CF268C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D01430C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22CF26930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3250, &qword_22D01B1E8);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for XPCInputBudgetManager.Budget(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_22CEEC3D8(a1, &qword_27D9F3250, &qword_22D01B1E8);
    sub_22CFBCA50(a2, a3, v10);

    return sub_22CEEC3D8(v10, &qword_27D9F3250, &qword_22D01B1E8);
  }

  else
  {
    sub_22CEF0B08(a1, v14, type metadata accessor for XPCInputBudgetManager.Budget);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_22CFBF800(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

void sub_22CF26B04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v51 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v48 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v50 = &v45 - v13;
  v14 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v49 = v10;
  v15 = sub_22D016D2C();
  v16 = v15;
  if (*(v14 + 16))
  {
    v46 = v6;
    v47 = v14;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = v15 + 64;
    while (v21)
    {
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v29 = v26 | (v17 << 6);
      v30 = *(v14 + 56);
      v31 = (*(v14 + 48) + 16 * v29);
      v33 = *v31;
      v32 = v31[1];
      v34 = *(v48 + 72);
      v35 = v30 + v34 * v29;
      if (v49)
      {
        sub_22CEF0B08(v35, v50, v51);
      }

      else
      {
        sub_22CF28C98(v35, v50, v51);
      }

      sub_22D016EAC();
      sub_22D0166DC();
      v36 = sub_22D016ECC();
      v37 = -1 << *(v16 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v23 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v23 + 8 * v39);
          if (v43 != -1)
          {
            v24 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v38) & ~*(v23 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v25 = (*(v16 + 48) + 16 * v24);
      *v25 = v33;
      v25[1] = v32;
      sub_22CEF0B08(v50, *(v16 + 56) + v34 * v24, v51);
      ++*(v16 + 16);
      v14 = v47;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v28 = v18[v17];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v21 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v9 = v46;
      goto LABEL_34;
    }

    v44 = 1 << *(v14 + 32);
    v9 = v46;
    if (v44 >= 64)
    {
      bzero(v18, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v44;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v9 = v16;
}

uint64_t sub_22CF26E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCInputBudgetManager.Budget(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF26EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A78, &unk_22D01B130);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for XPCInputParticipant.ActivityUpdate(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_22CEEC3D8(a1, &qword_27D9F2A78, &unk_22D01B130);
    sub_22CF32FD4(a2, a3, v10);

    return sub_22CEEC3D8(v10, &qword_27D9F2A78, &unk_22D01B130);
  }

  else
  {
    sub_22CEF0B08(a1, v14, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_22CFBF5FC(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_22CF27090(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_22D01483C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_22D0146BC();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_22D01430C();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_22CF27210(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_22D01483C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_22D0146BC();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_22D01430C();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_22CF2737C()
{
  v1 = v0;
  v2 = sub_22D0164CC();
  v84 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D01653C();
  v83 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v82 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A78, &unk_22D01B130);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v94 = &v79 - v11;
  v93 = type metadata accessor for XPCInputParticipant.ActivityUpdate(0);
  v95 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v12);
  v92 = (&v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = sub_22D01430C();
  v14 = *(v97 - 8);
  v16 = MEMORY[0x28223BE20](v97, v15);
  v96 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v79 - v19;
  v21 = sub_22D01659C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = (&v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v1 + 2);
  *v25 = v26;
  (*(v22 + 104))(v25, *MEMORY[0x277D85200], v21);
  v27 = v26;
  LOBYTE(v26) = sub_22D0165BC();
  (*(v22 + 8))(v25, v21);
  if (v26)
  {
    v79 = v5;
    v80 = v6;
    v81 = v2;
    sub_22D0142DC();
    v28 = swift_beginAccess();
    v29 = *(v1 + 16);
    MEMORY[0x28223BE20](v28, v30);
    *(&v79 - 2) = v1;
    *(&v79 - 1) = v20;

    v31 = sub_22CF27D84(sub_22CF282CC, (&v79 - 4), v29);

    v32 = v31 + 64;
    v33 = 1 << v31[32];
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v31 + 8);
    v36 = (v33 + 63) >> 6;
    v37 = v95;
    v90 = (v14 + 16);
    v91 = (v95 + 56);
    v86 = v14 + 32;
    v85 = v14 + 40;

    v38 = 0;
    v39 = v20;
    v40 = v37;
    v87 = v36;
    v89 = v14;
    v88 = v31;
    while (v35)
    {
LABEL_12:
      v43 = *(v31 + 7);
      v44 = *(v40 + 72);
      v45 = v92;
      sub_22CF0CB84(v43 + v44 * (__clz(__rbit64(v35)) | (v38 << 6)), v92, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      v47 = *v45;
      v46 = v45[1];

      sub_22CF289A8(v45, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      swift_beginAccess();
      v98 = v47;
      v48 = sub_22CEEC698(v47, v46);
      if (v49)
      {
        v50 = v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = *(v1 + 16);
        v100 = v52;
        *(v1 + 16) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_22CF28C5C();
          v52 = v100;
        }

        v53 = *(v52 + 56) + v50 * v44;
        v54 = v94;
        sub_22CF0FF70(v53, v94, type metadata accessor for XPCInputParticipant.ActivityUpdate);
        sub_22CF28D00(v50, v52);
        *(v1 + 16) = v52;

        v55 = 0;
      }

      else
      {
        v55 = 1;
        v54 = v94;
      }

      (*v91)(v54, v55, 1, v93);
      sub_22CEEC3D8(v54, &qword_27D9F2A78, &unk_22D01B130);
      swift_endAccess();
      swift_beginAccess();
      v56 = v39;
      (*v90)(v96, v39, v97);
      v57 = swift_isUniquelyReferenced_nonNull_native();
      v100 = *(v1 + 17);
      v58 = v100;
      v59 = v1;
      *(v1 + 17) = 0x8000000000000000;
      v61 = sub_22CEEC698(v98, v46);
      v62 = v58[2];
      v63 = (v60 & 1) == 0;
      v64 = v62 + v63;
      if (__OFADD__(v62, v63))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v65 = v60;
      if (v58[3] >= v64)
      {
        if ((v57 & 1) == 0)
        {
          sub_22CFB7B8C();
        }
      }

      else
      {
        sub_22CFBB188(v64, v57);
        v66 = sub_22CEEC698(v98, v46);
        if ((v65 & 1) != (v67 & 1))
        {
          goto LABEL_33;
        }

        v61 = v66;
      }

      v31 = v88;
      if (v65)
      {

        v41 = v100;
        v14 = v89;
        (*(v89 + 40))(v100[7] + *(v89 + 72) * v61, v96, v97);
      }

      else
      {
        v41 = v100;
        v100[(v61 >> 6) + 8] |= 1 << v61;
        v68 = (v41[6] + 16 * v61);
        v69 = v97;
        *v68 = v98;
        v68[1] = v46;
        v14 = v89;
        (*(v89 + 32))(v41[7] + *(v89 + 72) * v61, v96, v69);
        v70 = v41[2];
        v71 = __OFADD__(v70, 1);
        v72 = v70 + 1;
        if (v71)
        {
          goto LABEL_31;
        }

        v41[2] = v72;
      }

      v35 &= v35 - 1;
      v1 = v59;
      *(v59 + 17) = v41;

      swift_endAccess();
      v39 = v56;
      v40 = v95;
      v36 = v87;
    }

    while (1)
    {
      v42 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v42 >= v36)
      {
        break;
      }

      v35 = *&v32[8 * v42];
      ++v38;
      if (v35)
      {
        v38 = v42;
        goto LABEL_12;
      }
    }

    if (*(v31 + 2))
    {
      v98 = v39;
      v73 = swift_allocObject();
      *(v73 + 16) = v31;
      *(v73 + 24) = v1;
      aBlock[4] = sub_22CF297C4;
      aBlock[5] = v73;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22CEF8B58;
      aBlock[3] = &block_descriptor_65;
      v74 = _Block_copy(aBlock);

      v75 = v82;
      sub_22D0164EC();
      v100 = MEMORY[0x277D84F90];
      sub_22CEF87FC(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
      sub_22CF0EDA8();
      v76 = v79;
      v77 = v81;
      sub_22D016ADC();
      v39 = v98;
      MEMORY[0x2318C5B10](0, v75, v76, v74);
      _Block_release(v74);
      (*(v84 + 8))(v76, v77);
      (*(v83 + 8))(v75, v80);
    }

    sub_22CF28F14();

    return (*(v14 + 8))(v39, v97);
  }

  else
  {
LABEL_32:
    __break(1u);
LABEL_33:
    result = sub_22D016E1C();
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF27DF8(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t))
{
  v34 = a4;
  v29 = a2;
  v30 = a1;
  v5 = type metadata accessor for XPCInputParticipant.ActivityUpdate(0);
  v33 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5 - 8, v6);
  v31 = 0;
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v35 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v36 = (v15 - 1) & v15;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = v35[7];
    v22 = (v35[6] + 16 * v20);
    v23 = v22[1];
    v37[0] = *v22;
    v37[1] = v23;
    v24 = v32;
    v25 = v20;
    sub_22CF07D60(v21 + *(v33 + 72) * v20, v32, type metadata accessor for XPCInputParticipant.ActivityUpdate);

    v26 = v38;
    v27 = v34(v37, v24);
    sub_22CF1CB18(v24, type metadata accessor for XPCInputParticipant.ActivityUpdate);

    v38 = v26;
    if (v26)
    {
      return result;
    }

    v15 = v36;
    if (v27)
    {
      *(v30 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
        return sub_22CEE4728(v30, v29, v31, v35, type metadata accessor for XPCInputParticipant.ActivityUpdate, &qword_27D9F2A10, &qword_22D0196B0, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return sub_22CEE4728(v30, v29, v31, v35, type metadata accessor for XPCInputParticipant.ActivityUpdate, &qword_27D9F2A10, &qword_22D0196B0, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    }

    v19 = v11[v9];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v36 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CF28070(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v24 - v8;
  v10 = sub_22D01430C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2A80, &unk_22D019B70);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v19 = (v24 - v18);
  v20 = *a1;
  v21 = a1[1];
  *v19 = v20;
  v19[1] = v21;
  sub_22CF0CB84(a2, v24 + *(v17 + 56) - v18, type metadata accessor for XPCInputParticipant.ActivityUpdate);

  sub_22CF282EC(v20, v21, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_22CEEC3D8(v9, &qword_27D9F2648, &unk_22D018BC0);
    v22 = 0;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v22 = sub_22D01428C();
    (*(v11 + 8))(v14, v10);
  }

  sub_22CEEC3D8(v19, &unk_27D9F2A80, &unk_22D019B70);
  return v22 & 1;
}

uint64_t sub_22CF282EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v65 = a1;
  v66 = sub_22D01430C();
  v7 = *(v66 - 8);
  v9 = MEMORY[0x28223BE20](v66, v8);
  v60 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v61 = &v58 - v12;
  v13 = type metadata accessor for XPCInputParticipant.ActivityUpdate(0);
  v14 = *(v13 - 8);
  v62 = v13;
  v63 = v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v64 = &v58 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v58 - v23;
  v25 = sub_22D01659C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = (&v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = v4[2];
  *v29 = v30;
  (*(v26 + 104))(v29, *MEMORY[0x277D85200], v25);
  v31 = v30;
  LOBYTE(v30) = sub_22D0165BC();
  result = (*(v26 + 8))(v29, v25);
  if ((v30 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  swift_beginAccess();
  v33 = v4[15];
  if (!*(v33 + 16))
  {
    goto LABEL_13;
  }

  v34 = sub_22CEEC698(v65, a2);
  if ((v35 & 1) == 0)
  {

LABEL_13:
    v56 = type metadata accessor for Activity(0);
    v40 = 1;
    (*(*(v56 - 8) + 56))(v24, 1, 1, v56);
    sub_22CEEC3D8(v24, &qword_27D9F3810, &unk_22D018FA0);
LABEL_14:
    v57 = v66;
    return (*(v7 + 56))(a3, v40, 1, v57);
  }

  v36 = v34;
  v59 = a3;
  v37 = *(v33 + 56);
  v38 = type metadata accessor for Activity(0);
  v39 = *(v38 - 8);
  sub_22CF0CB84(v37 + *(v39 + 72) * v36, v24, type metadata accessor for Activity);

  v40 = 1;
  (*(v39 + 56))(v24, 0, 1, v38);
  sub_22CEEC3D8(v24, &qword_27D9F3810, &unk_22D018FA0);
  swift_beginAccess();
  v41 = v4[16];
  if (!*(v41 + 16))
  {
    a3 = v59;
    goto LABEL_14;
  }

  v42 = a2;
  v43 = sub_22CEEC698(v65, a2);
  a3 = v59;
  v44 = v66;
  if ((v45 & 1) == 0)
  {

    v40 = 1;
    v57 = v44;
    return (*(v7 + 56))(a3, v40, 1, v57);
  }

  sub_22CF0CB84(*(v41 + 56) + *(v63 + 72) * v43, v18, type metadata accessor for XPCInputParticipant.ActivityUpdate);

  v46 = v64;
  sub_22CF0FF70(v18, v64, type metadata accessor for XPCInputParticipant.ActivityUpdate);
  swift_beginAccess();
  v47 = v4[17];
  if (!*(v47 + 16))
  {
LABEL_19:
    (*(v7 + 16))(a3, v46 + *(v62 + 28), v44);
LABEL_20:
    sub_22CF289A8(v46, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    v57 = v44;
    v40 = 0;
    return (*(v7 + 56))(a3, v40, 1, v57);
  }

  v48 = sub_22CEEC698(v65, v42);
  if ((v49 & 1) == 0)
  {

    goto LABEL_19;
  }

  v50 = *(v47 + 56) + *(v7 + 72) * v48;
  v51 = v60;
  v63 = *(v7 + 16);
  (v63)(v60, v50, v44);

  (*(v7 + 32))(v61, v51, v44);
  result = __swift_project_boxed_opaque_existential_1(v4 + 20, v4[23]);
  v52 = *(*result + 16);
  if (!*(v52 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = sub_22CF259D0(1);
  if (v53)
  {
    v54 = v65;
    if (sub_22CF25A3C(v65, v42, *(*(v52 + 56) + 8 * result)))
    {
      __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
      sub_22CF718F0(v54, v42);
      v55 = v61;
      sub_22D01425C();
      (*(v7 + 8))(v55, v44);
    }

    else
    {
      (*(v7 + 8))(v61, v44);
      (v63)(a3, v46 + *(v62 + 28), v44);
    }

    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22CF289A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22CF28A08(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v42 = a4;
  v7 = v4;
  v8 = a1(0);
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v40 = &v39 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v4;
  v12 = sub_22D016D1C();
  v13 = v12;
  if (*(v11 + 16))
  {
    v39 = v7;
    v14 = (v12 + 64);
    v15 = v11 + 64;
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 64 + 8 * v16)
    {
      memmove(v14, (v11 + 64), 8 * v16);
    }

    v18 = 0;
    v19 = *(v11 + 16);
    v43 = v13;
    *(v13 + 16) = v19;
    v20 = 1 << *(v11 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v11 + 64);
    v23 = (v20 + 63) >> 6;
    if (v22)
    {
      do
      {
        v24 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_17:
        v27 = v24 | (v18 << 6);
        v28 = 16 * v27;
        v29 = *(v11 + 56);
        v30 = (*(v11 + 48) + 16 * v27);
        v31 = v11;
        v32 = *v30;
        v33 = v30[1];
        v34 = v40;
        v35 = *(v41 + 72) * v27;
        v36 = v42;
        sub_22CF28C98(v29 + v35, v40, v42);
        v37 = v43;
        v38 = (*(v43 + 48) + v28);
        *v38 = v32;
        v38[1] = v33;
        v11 = v31;
        sub_22CEF0B08(v34, *(v37 + 56) + v35, v36);

        v22 = v44;
      }

      while (v44);
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v39;
        v13 = v43;
        goto LABEL_21;
      }

      v26 = *(v15 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v44 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v13;
  }
}

uint64_t sub_22CF28C98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_22CF28D18(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22D016AFC() + 1) & ~v6;
    while (1)
    {
      sub_22D016EAC();

      sub_22D0166DC();
      v11 = sub_22D016ECC();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_22CF28F14()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v98 = v83 - v4;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2A80, &unk_22D019B70);
  MEMORY[0x28223BE20](v97, v5);
  v94 = (v83 - v6);
  v96 = sub_22D01430C();
  v7 = *(v96 - 8);
  v9 = MEMORY[0x28223BE20](v96, v8);
  v11 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = v83 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = v83 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v84 = v83 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v85 = v83 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v88 = v83 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v89 = v83 - v30;
  v31 = sub_22D01659C();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v35 = (v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(v1 + 16);
  *v35 = v36;
  (*(v32 + 104))(v35, *MEMORY[0x277D85200], v31);
  v83[1] = v36;
  LOBYTE(v36) = sub_22D0165BC();
  (*(v32 + 8))(v35, v31);
  if (v36)
  {
    v86 = v19;
    v87 = v11;

    sub_22D014E9C();

    swift_beginAccess();
    v37 = *(v1 + 128);
    v38 = v37 + 64;
    v39 = 1 << *(v37 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v37 + 64);
    v42 = (v39 + 63) >> 6;
    v93 = (v7 + 48);
    v90 = (v7 + 32);
    v91 = v7;
    v99 = v37;
    swift_bridgeObjectRetain_n();
    v43 = 0;
    v92 = MEMORY[0x277D84F90];
    v95 = v1;
LABEL_5:
    v44 = v43;
    if (!v41)
    {
      goto LABEL_7;
    }

    do
    {
      v45 = v15;
      v43 = v44;
LABEL_11:
      v46 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v47 = v46 | (v43 << 6);
      v48 = *(v99 + 56);
      v49 = (*(v99 + 48) + 16 * v47);
      v50 = *v49;
      v51 = v49[1];
      v52 = type metadata accessor for XPCInputParticipant.ActivityUpdate(0);
      v53 = v94;
      sub_22CF0CB84(v48 + *(*(v52 - 8) + 72) * v47, v94 + *(v97 + 48), type metadata accessor for XPCInputParticipant.ActivityUpdate);
      *v53 = v50;
      v53[1] = v51;

      v54 = v98;
      sub_22CF282EC(v50, v51, v98);
      sub_22CEEC3D8(v53, &unk_27D9F2A80, &unk_22D019B70);
      if ((*v93)(v54, 1, v96) != 1)
      {
        v55 = *v90;
        (*v90)(v84, v54, v96);
        v15 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_22CFCE548(0, *(v92 + 2) + 1, 1, v92);
        }

        v57 = *(v92 + 2);
        v56 = *(v92 + 3);
        v58 = v57 + 1;
        if (v57 >= v56 >> 1)
        {
          v83[0] = v57 + 1;
          v61 = sub_22CFCE548((v56 > 1), v57 + 1, 1, v92);
          v58 = v83[0];
          v92 = v61;
        }

        v59 = v91;
        v60 = v92;
        *(v92 + 2) = v58;
        v55(&v60[((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v57], v84, v96);
        goto LABEL_5;
      }

      sub_22CEEC3D8(v54, &qword_27D9F2648, &unk_22D018BC0);
      v44 = v43;
      v15 = v45;
    }

    while (v41);
    while (1)
    {
LABEL_7:
      v43 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v43 >= v42)
      {
        break;
      }

      v41 = *(v38 + 8 * v43);
      ++v44;
      if (v41)
      {
        v45 = v15;
        goto LABEL_11;
      }
    }

    v62 = v88;
    sub_22D01423C();
    v63 = *(v92 + 2);
    if (v63)
    {
      v64 = v90;
      v65 = *(v91 + 16);
      v66 = &v92[(*(v91 + 80) + 32) & ~*(v91 + 80)];
      v97 = *(v91 + 72);
      v98 = v65;
      v99 = v91 + 16;
      v67 = (v91 + 8);
      v94 = (v90 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
      v68 = v15;
      v69 = v85;
      v70 = v96;
      do
      {
        (v98)(v69, v66, v70);
        sub_22CEF87FC(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v71 = sub_22D01663C();
        v72 = (v71 & 1) == 0;
        if (v71)
        {
          v73 = v62;
        }

        else
        {
          v73 = v69;
        }

        if (v72)
        {
          v74 = v62;
        }

        else
        {
          v74 = v69;
        }

        (*v67)(v73, v70);
        v75 = *v64;
        (*v64)(v68, v74, v70);
        v75(v62, v68, v70);
        v66 += v97;
        --v63;
      }

      while (v63);

      v76 = v91;
    }

    else
    {

      v76 = v91;
      v75 = *v90;
    }

    v77 = v89;
    v78 = v96;
    v75(v89, v62, v96);
    v79 = v86;
    sub_22D01423C();
    v80 = sub_22D01428C();
    v81 = *(v76 + 8);
    v81(v79, v78);
    v82 = v87;
    if (v80)
    {
      sub_22D0142DC();
      if (sub_22D01427C())
      {

        sub_22D01424C();
        swift_allocObject();
        swift_weakInit();

        sub_22D014E8C();

        v81(v82, v78);
        v81(v77, v78);

        return;
      }

      sub_22CF2737C();
      v81(v82, v78);
    }

    v81(v77, v78);
  }

  else
  {
LABEL_36:
    __break(1u);
  }
}

uint64_t sub_22CF29780()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_22CF297CC(uint64_t a1, uint64_t a2)
{
  v85 = a2;
  v70 = sub_22D01483C();
  v3 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v4);
  v69 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_22D01436C();
  v6 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v7);
  v67 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_22D01430C();
  v9 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v10);
  v76 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for XPCInputParticipant.ActivityUpdate(0);
  v82 = *(v88 - 8);
  v13 = MEMORY[0x28223BE20](v88, v12);
  v87 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v83 = &v64 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v81 = (&v64 - v20);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = (&v64 - v23);
  MEMORY[0x28223BE20](v22, v25);
  v79 = &v64 - v26;
  v27 = a1 + 64;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a1 + 64);
  v86 = (v28 + 63) >> 6;
  v77 = (v9 + 8);
  v66 = (v6 + 8);
  v65 = (v3 + 16);

  v31 = 0;
  *&v32 = 136446979;
  v64 = v32;
  v71 = a1;
  v80 = v24;
  v78 = a1 + 64;
  while (v30)
  {
    v33 = v87;
LABEL_13:
    v35 = v79;
    sub_22CF0CB84(*(a1 + 56) + *(v82 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v79, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    sub_22CF0FF70(v35, v24, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    v36 = v76;
    sub_22D0142DC();
    sub_22D01424C();
    v38 = v37;
    (*v77)(v36, v84);
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v39 = sub_22D01637C();
    __swift_project_value_buffer(v39, qword_281444498);
    v40 = v81;
    sub_22CF0CB84(v24, v81, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    v41 = v83;
    sub_22CF0CB84(v24, v83, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    sub_22CF0CB84(v24, v33, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    v42 = sub_22D01636C();
    v43 = sub_22D01690C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v74 = v42;
      v45 = v44;
      v75 = swift_slowAlloc();
      v89[0] = v75;
      *v45 = v64;
      v73 = v43;
      v46 = *v40;
      v47 = v40[1];

      v72 = type metadata accessor for XPCInputParticipant.ActivityUpdate;
      sub_22CF289A8(v40, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      v48 = sub_22CEEE31C(v46, v47, v89);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2082;
      v49 = v88;
      v50 = v67;
      sub_22D01466C();
      sub_22CEF87FC(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v51 = v68;
      v52 = sub_22D016DEC();
      v54 = v53;
      (*v66)(v50, v51);
      v55 = v41;
      v56 = v72;
      sub_22CF289A8(v55, v72);
      v57 = sub_22CEEE31C(v52, v54, v89);

      *(v45 + 14) = v57;
      *(v45 + 22) = 2081;
      (*v65)(v69, v33 + *(v49 + 20), v70);
      v58 = sub_22D01669C();
      v60 = v59;
      sub_22CF289A8(v33, v56);
      v61 = sub_22CEEE31C(v58, v60, v89);
      a1 = v71;

      *(v45 + 24) = v61;
      *(v45 + 32) = 2050;
      *(v45 + 34) = v38;
      v62 = v74;
      _os_log_impl(&dword_22CEE1000, v74, v73, "Publishing pended activity update for %{public}s with payload %{public}s for XPC participant content source %{private}s after pended delay %{public}fs", v45, 0x2Au);
      v63 = v75;
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v63, -1, -1);
      MEMORY[0x2318C6860](v45, -1, -1);
    }

    else
    {

      sub_22CF289A8(v33, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      sub_22CF289A8(v41, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      sub_22CF289A8(v40, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    }

    v30 &= v30 - 1;
    v24 = v80;
    sub_22CF29F78(v80);
    sub_22CF289A8(v24, type metadata accessor for XPCInputParticipant.ActivityUpdate);
    v27 = v78;
  }

  v33 = v87;
  while (1)
  {
    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v34 >= v86)
    {

      return;
    }

    v30 = *(v27 + 8 * v34);
    ++v31;
    if (v30)
    {
      v31 = v34;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_22CF29F78(void *a1)
{
  v2 = v1;
  v102 = a1;
  v99 = type metadata accessor for ActivityParticipantEvent(0);
  MEMORY[0x28223BE20](v99, v3);
  v5 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_22D01483C();
  v101 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v6);
  v94 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D01436C();
  v92 = *(v8 - 8);
  v93 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v91 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for XPCInputParticipant.ActivityUpdate(0);
  v12 = MEMORY[0x28223BE20](v100, v11);
  v97 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v96 = &v85 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v95 = (&v85 - v18);
  v19 = sub_22D01659C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = (&v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v1 + 16);
  *v23 = v24;
  v25 = *(v20 + 104);
  v25(v23, *MEMORY[0x277D851F0], v19);
  v26 = v24;
  v27 = sub_22D0165BC();
  v28 = *(v20 + 8);
  v28(v23, v19);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v29 = *(v2 + 24);
  *v23 = v29;
  v25(v23, *MEMORY[0x277D85200], v19);
  v30 = v29;
  LOBYTE(v29) = sub_22D0165BC();
  v28(v23, v19);
  if ((v29 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2328, &qword_22D019B80);
  sub_22D01699C();
  v23 = v103[0];
  if (v103[0])
  {
    v89 = v2;
    v90 = v103[1];
    if (qword_28143FB58 == -1)
    {
LABEL_5:
      v31 = sub_22D01637C();
      __swift_project_value_buffer(v31, qword_281444498);
      v32 = v102;
      v33 = v95;
      sub_22CF0CB84(v102, v95, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      v34 = v96;
      sub_22CF0CB84(v32, v96, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      v35 = v97;
      sub_22CF0CB84(v32, v97, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      v36 = sub_22D01636C();
      v37 = sub_22D01690C();
      v38 = os_log_type_enabled(v36, v37);
      v39 = v98;
      v40 = v100;
      v41 = v101;
      if (v38)
      {
        v42 = swift_slowAlloc();
        v87 = v37;
        v43 = v42;
        v88 = swift_slowAlloc();
        v103[0] = v88;
        *v43 = 136446723;
        v86 = v36;
        v44 = v33;
        v45 = *v33;
        v46 = v33[1];

        v85 = type metadata accessor for XPCInputParticipant.ActivityUpdate;
        sub_22CF289A8(v44, type metadata accessor for XPCInputParticipant.ActivityUpdate);
        v47 = sub_22CEEE31C(v45, v46, v103);

        *(v43 + 4) = v47;
        *(v43 + 12) = 2082;
        v95 = v23;
        v48 = v91;
        sub_22D01466C();
        sub_22CEF87FC(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v49 = v35;
        v50 = v39;
        v51 = v101;
        v52 = v34;
        v53 = v93;
        v54 = sub_22D016DEC();
        v56 = v55;
        (*(v92 + 8))(v48, v53);
        v57 = v52;
        v58 = v85;
        sub_22CF289A8(v57, v85);
        v59 = sub_22CEEE31C(v54, v56, v103);

        *(v43 + 14) = v59;
        *(v43 + 22) = 2081;
        v60 = v100;
        (*(v51 + 16))(v94, v49 + *(v100 + 20), v50);
        v61 = sub_22D01669C();
        v63 = v62;
        sub_22CF289A8(v49, v58);
        v64 = sub_22CEEE31C(v61, v63, v103);
        v65 = v50;

        *(v43 + 24) = v64;
        v66 = v86;
        _os_log_impl(&dword_22CEE1000, v86, v87, "Updating activity %{public}s with payload %{public}s for XPC participant content source %{private}s", v43, 0x20u);
        v67 = v88;
        swift_arrayDestroy();
        MEMORY[0x2318C6860](v67, -1, -1);
        MEMORY[0x2318C6860](v43, -1, -1);

        v68 = v60;
      }

      else
      {

        sub_22CF289A8(v35, type metadata accessor for XPCInputParticipant.ActivityUpdate);
        sub_22CF289A8(v34, type metadata accessor for XPCInputParticipant.ActivityUpdate);
        sub_22CF289A8(v33, type metadata accessor for XPCInputParticipant.ActivityUpdate);
        v68 = v40;
        v65 = v39;
        v51 = v41;
      }

      v73 = v102;
      v75 = *v102;
      v74 = v102[1];
      v76 = v99;
      type metadata accessor for ActivityParticipantEvent.EventType(0);
      swift_storeEnumTagMultiPayload();
      (*(v51 + 16))(&v5[v76[7]], &v73[*(v68 + 20)], v65);
      v77 = v76[9];
      v78 = *(v68 + 24);
      v79 = sub_22D0146BC();
      v80 = *(v79 - 8);
      (*(v80 + 16))(&v5[v77], &v73[v78], v79);
      (*(v80 + 56))(&v5[v77], 0, 1, v79);
      *v5 = v75;
      *(v5 + 1) = v74;
      *(v5 + 2) = 0;
      *(v5 + 3) = 0;
      v81 = &v5[v76[8]];
      *v81 = v89;
      *(v81 + 1) = &off_28402A298;
      v5[v76[10]] = 0;
      ObjectType = swift_getObjectType();
      v83 = v90;
      v84 = *(v90 + 24);

      v84(v5, ObjectType, v83);
      swift_unknownObjectRelease();
      sub_22CF289A8(v5, type metadata accessor for ActivityParticipantEvent);
      return;
    }

LABEL_16:
    swift_once();
    goto LABEL_5;
  }

  if (qword_28143FB58 != -1)
  {
    swift_once();
  }

  v69 = sub_22D01637C();
  __swift_project_value_buffer(v69, qword_281444498);
  v70 = sub_22D01636C();
  v71 = sub_22D0168EC();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_22CEE1000, v70, v71, "XPCInputParticipant has no ActivityManager", v72, 2u);
    MEMORY[0x2318C6860](v72, -1, -1);
  }
}

uint64_t sub_22CF2A87C@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 216);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_22CF2A8D4(uint64_t a1)
{
  v3 = type metadata accessor for ActivityParticipantEvent(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = *(v1 + 40);
  sub_22CEFEA98(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActivityParticipantEvent);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  sub_22CF0A72C(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ActivityParticipantEvent);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22CF2AB60;
  *(v10 + 24) = v9;
  aBlock[4] = sub_22CEF3C48;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF3C20;
  aBlock[3] = &block_descriptor_37_1;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

void sub_22CF2AB64(uint64_t *a1)
{
  v96 = type metadata accessor for ActivityParticipantEvent(0);
  v4 = MEMORY[0x28223BE20](v96, v3);
  v97 = (&v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v4, v6);
  v94 = &v86 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v95 = (&v86 - v11);
  MEMORY[0x28223BE20](v10, v12);
  v88 = (&v86 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v91 = &v86 - v16;
  v17 = sub_22D0146BC();
  v92 = *(v17 - 8);
  v93 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v87 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22D01486C();
  v89 = *(v20 - 8);
  v90 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Activity(0);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ActivityParticipantEvent.EventType(0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22D01659C();
  v33 = *(v32 - 1);
  MEMORY[0x28223BE20](v32, v34);
  v36 = (&v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(v1 + 40);
  *v36 = v37;
  (*(v33 + 104))(v36, *MEMORY[0x277D85200], v32);
  v38 = v37;
  LOBYTE(v37) = sub_22D0165BC();
  v40 = *(v33 + 8);
  v39 = v33 + 8;
  v40(v36, v32);
  if ((v37 & 1) == 0)
  {
    __break(1u);
    swift_once();
    v43 = sub_22D01637C();
    __swift_project_value_buffer(v43, qword_281444498);
    v44 = v97;
    sub_22CEFEA98(v39, v97, type metadata accessor for ActivityParticipantEvent);
    v45 = sub_22D01636C();
    v46 = sub_22D0168EC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v98[0] = v48;
      *v47 = 136446210;
      v49 = *v44;
      v50 = v44[1];

      sub_22CF0A5FC(v44, type metadata accessor for ActivityParticipantEvent);
      v51 = sub_22CEEE31C(v49, v50, v98);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_22CEE1000, v45, v46, "Unexpected error occurred when evaluating event obsolecence for activity: %{public}s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x2318C6860](v48, -1, -1);
      MEMORY[0x2318C6860](v47, -1, -1);

      return;
    }

    v62 = type metadata accessor for ActivityParticipantEvent;
    v63 = v44;
    goto LABEL_22;
  }

  v41 = sub_22CF2B748(a1);
  v42 = a1;
  if (v41)
  {
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v52 = sub_22D01637C();
    __swift_project_value_buffer(v52, qword_281444498);
    v53 = v95;
    sub_22CEFEA98(a1, v95, type metadata accessor for ActivityParticipantEvent);
    v54 = sub_22D01636C();
    v55 = sub_22D0168EC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v98[0] = v57;
      *v56 = 136446210;
      v58 = *v53;
      v59 = v53[1];

      sub_22CF0A5FC(v53, type metadata accessor for ActivityParticipantEvent);
      v60 = sub_22CEEE31C(v58, v59, v98);

      *(v56 + 4) = v60;
      v61 = "Event is obsolete for activity: %{public}s";
LABEL_10:
      _os_log_impl(&dword_22CEE1000, v54, v55, v61, v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x2318C6860](v57, -1, -1);
      MEMORY[0x2318C6860](v56, -1, -1);

      return;
    }

LABEL_21:

    v62 = type metadata accessor for ActivityParticipantEvent;
    v63 = v53;
    goto LABEL_22;
  }

  v64 = v96;
  sub_22CEFEA98(a1 + *(v96 + 24), v31, type metadata accessor for ActivityParticipantEvent.EventType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22CF0A72C(v31, v27, type metadata accessor for Activity);
    v68 = (a1 + v64[8]);
    v69 = *v68;
    v70 = v68[1];
    ObjectType = swift_getObjectType();
    v72 = v64;
    v73 = ObjectType;
    v74 = a1[2];
    v75 = a1[3];
    v76 = *(v42 + v72[10]);
    v77 = *(v70 + 8);
    swift_unknownObjectRetain();
    sub_22CF0A7FC(v27, v69, v74, v75, v76, v1, v73, v77);
    swift_unknownObjectRelease();
    v62 = type metadata accessor for Activity;
    v63 = v27;
LABEL_22:
    sub_22CF0A5FC(v63, v62);
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v67 = v89;
    v66 = v90;
    (*(v89 + 32))(v23, v31, v90);
    sub_22CF35D50(*v42, v42[1], v42 + v64[9], v23, *(v42 + v64[8]), *(v42 + v64[8] + 8), v42 + v64[7], v42[2], v42[3], *(v42 + v64[10]));
    (*(v67 + 8))(v23, v66);
    return;
  }

  v78 = v91;
  sub_22CEEB6DC(a1 + v64[9], v91, &qword_27D9F22F8, &unk_22D018940);
  v80 = v92;
  v79 = v93;
  if ((*(v92 + 48))(v78, 1, v93) == 1)
  {
    sub_22CEEC3D8(v78, &qword_27D9F22F8, &unk_22D018940);
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v81 = sub_22D01637C();
    __swift_project_value_buffer(v81, qword_281444498);
    v53 = v88;
    sub_22CEFEA98(a1, v88, type metadata accessor for ActivityParticipantEvent);
    v54 = sub_22D01636C();
    v55 = sub_22D0168EC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v98[0] = v57;
      *v56 = 136446210;
      v82 = *v53;
      v83 = v53[1];

      sub_22CF0A5FC(v53, type metadata accessor for ActivityParticipantEvent);
      v84 = sub_22CEEE31C(v82, v83, v98);

      *(v56 + 4) = v84;
      v61 = "Update did not include payload for activity: %{public}s";
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v85 = v87;
  (*(v80 + 32))(v87, v78, v79);
  sub_22CF2C224(*v42, v42[1], v85, *(v42 + v64[8]), *(v42 + v64[8] + 8), v42 + v64[7], v42[2], v42[3], *(v42 + v64[10]));
  (*(v80 + 8))(v85, v79);
}

uint64_t sub_22CF2B748(uint64_t *a1)
{
  v3 = type metadata accessor for ActivityParticipantEvent(0);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v99 = (&v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5, v7);
  v91 = (&v88 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v94 = &v88 - v11;
  v12 = sub_22D0146BC();
  v95 = *(v12 - 8);
  v96 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v90 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Activity(0);
  v102 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v15);
  v93 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v101 = &v88 - v19;
  v97 = sub_22D01430C();
  v104 = *(v97 - 8);
  v21 = MEMORY[0x28223BE20](v97, v20);
  v89 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v92 = &v88 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v98 = &v88 - v27;
  v28 = type metadata accessor for ActivityParticipantEvent.EventType(0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22D01659C();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v36 = (&v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = v1;
  v37 = *(v1 + 40);
  *v36 = v37;
  (*(v33 + 104))(v36, *MEMORY[0x277D85200], v32);
  v38 = v37;
  LOBYTE(v37) = sub_22D0165BC();
  v40 = *(v33 + 8);
  v39 = (v33 + 8);
  v40(v36, v32);
  if ((v37 & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v41 = *(a1 + *(v3 + 32) + 8);
  ObjectType = swift_getObjectType();
  if ((*(v41 + 48))(ObjectType, v41))
  {
LABEL_5:
    v44 = 0;
    return v44 & 1;
  }

  v39 = a1;
  v43 = v3;
  sub_22CEFEA98(a1 + *(v3 + 24), v31, type metadata accessor for ActivityParticipantEvent.EventType);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    sub_22CF0A5FC(v31, type metadata accessor for ActivityParticipantEvent.EventType);
    goto LABEL_5;
  }

  v46 = *a1;
  v47 = a1[1];
  v48 = v103;
  swift_beginAccess();
  v49 = *(v48 + 32);
  if (*(v49 + 16))
  {

    v50 = sub_22CEEC698(v46, v47);
    v51 = v104;
    v53 = v101;
    v52 = v102;
    if (v54)
    {
      sub_22CEFEA98(*(v49 + 56) + *(v102 + 72) * v50, v101, type metadata accessor for Activity);
      v55 = 0;
    }

    else
    {
      v55 = 1;
    }

    v56 = v100;
  }

  else
  {
    v55 = 1;
    v51 = v104;
    v56 = v100;
    v53 = v101;
    v52 = v102;
  }

  (*(v52 + 56))(v53, v55, 1, v56);
  if ((*(v52 + 48))(v53, 1, v56))
  {
    sub_22CEEC3D8(v53, &qword_27D9F3810, &unk_22D018FA0);
    if (qword_28143FB58 == -1)
    {
LABEL_15:
      v57 = sub_22D01637C();
      __swift_project_value_buffer(v57, qword_281444498);
      v58 = v99;
      sub_22CEFEA98(v39, v99, type metadata accessor for ActivityParticipantEvent);
      v59 = sub_22D01636C();
      v60 = sub_22D0168EC();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v105 = v62;
        *v61 = 136446210;
        v63 = *v58;
        v64 = v58[1];

        sub_22CF0A5FC(v58, type metadata accessor for ActivityParticipantEvent);
        v65 = sub_22CEEE31C(v63, v64, &v105);

        *(v61 + 4) = v65;
        _os_log_impl(&dword_22CEE1000, v59, v60, "Received an update for an unknown activity: %{public}s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v62);
        MEMORY[0x2318C6860](v62, -1, -1);
        MEMORY[0x2318C6860](v61, -1, -1);
      }

      else
      {

        sub_22CF0A5FC(v58, type metadata accessor for ActivityParticipantEvent);
      }

      sub_22CF3D1BC();
      v44 = swift_allocError();
      *v82 = 0;
      swift_willThrow();
      return v44 & 1;
    }

LABEL_28:
    swift_once();
    goto LABEL_15;
  }

  v66 = v93;
  sub_22CEFEA98(v53, v93, type metadata accessor for Activity);
  sub_22CEEC3D8(v53, &qword_27D9F3810, &unk_22D018FA0);
  v67 = v92;
  sub_22D01469C();
  sub_22CF0A5FC(v66, type metadata accessor for Activity);
  v69 = v97;
  v68 = v98;
  (*(v51 + 32))(v98, v67, v97);
  v70 = v94;
  sub_22CEEB6DC(v39 + *(v43 + 36), v94, &qword_27D9F22F8, &unk_22D018940);
  v72 = v95;
  v71 = v96;
  if ((*(v95 + 48))(v70, 1, v96) == 1)
  {
    sub_22CEEC3D8(v70, &qword_27D9F22F8, &unk_22D018940);
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v73 = sub_22D01637C();
    __swift_project_value_buffer(v73, qword_281444498);
    v74 = v91;
    sub_22CEFEA98(v39, v91, type metadata accessor for ActivityParticipantEvent);
    v75 = sub_22D01636C();
    v76 = sub_22D0168EC();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v105 = v78;
      *v77 = 136446210;
      v79 = *v74;
      v80 = v74[1];

      sub_22CF0A5FC(v74, type metadata accessor for ActivityParticipantEvent);
      v81 = sub_22CEEE31C(v79, v80, &v105);

      *(v77 + 4) = v81;
      v69 = v97;
      _os_log_impl(&dword_22CEE1000, v75, v76, "Received an update without a payload for activity: %{public}s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x2318C6860](v78, -1, -1);
      MEMORY[0x2318C6860](v77, -1, -1);
    }

    else
    {

      sub_22CF0A5FC(v74, type metadata accessor for ActivityParticipantEvent);
    }

    sub_22CF3D1BC();
    v44 = swift_allocError();
    *v87 = 1;
    swift_willThrow();
    (*(v51 + 8))(v98, v69);
  }

  else
  {
    v83 = v90;
    (*(v72 + 32))(v90, v70, v71);
    v84 = v89;
    sub_22D01469C();
    v85 = v68;
    v44 = sub_22D01427C();
    v86 = *(v51 + 8);
    v86(v84, v69);
    (*(v72 + 8))(v83, v71);
    v86(v85, v69);
  }

  return v44 & 1;
}

void sub_22CF2C224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = v9;
  v161 = a8;
  v160 = a7;
  v165 = a6;
  v166 = a4;
  v169 = a5;
  v167 = a3;
  v163 = sub_22D0146BC();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163, v13);
  v157 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for ActivityManagerEvent(0);
  MEMORY[0x28223BE20](v159, v15);
  v173 = &v156 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v158 = &v156 - v19;
  v164 = sub_22D01430C();
  v168 = *(v164 - 8);
  v21 = MEMORY[0x28223BE20](v164, v20);
  v23 = &v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v156 - v25;
  v27 = type metadata accessor for Activity(0);
  v170 = *(v27 - 8);
  v171 = v27;
  v29 = MEMORY[0x28223BE20](v27, v28);
  v31 = &v156 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v32);
  v172 = &v156 - v33;
  v34 = sub_22D01659C();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v36);
  v38 = (&v156 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v10[5];
  *v38 = v39;
  (*(v35 + 104))(v38, *MEMORY[0x277D85200], v34);
  v40 = v39;
  LOBYTE(v39) = sub_22D0165BC();
  v42 = *(v35 + 8);
  v41 = v35 + 8;
  v42(v38, v34);
  if ((v39 & 1) == 0)
  {
    __break(1u);
LABEL_59:
    swift_once();
    goto LABEL_23;
  }

  swift_beginAccess();
  v43 = v10[3];
  v41 = a2;
  if (*(v43 + 16))
  {

    v44 = sub_22CEEC698(a1, a2);
    if (v45)
    {
      v46 = *(*(v43 + 56) + 8 * v44);

      swift_beginAccess();
      v47 = v10[4];
      if (*(v47 + 16))
      {

        v48 = sub_22CEEC698(a1, v41);
        if (v49)
        {
          sub_22CEFEA98(*(v47 + 56) + *(v170 + 72) * v48, v31, type metadata accessor for Activity);

          sub_22CF0A72C(v31, v172, type metadata accessor for Activity);
          if (sub_22CF0B5E0() == 1 && (v50 = swift_getObjectType(), ((v169[5].isa)(v50) & 1) == 0))
          {

            if (qword_28143FB58 != -1)
            {
              swift_once();
            }

            v97 = sub_22D01637C();
            __swift_project_value_buffer(v97, qword_281444498);

            v98 = sub_22D01636C();
            v99 = sub_22D0168EC();

            if (os_log_type_enabled(v98, v99))
            {
              v100 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              v175[0] = v101;
              *v100 = 136446210;
              *(v100 + 4) = sub_22CEEE31C(a1, v41, v175);
              _os_log_impl(&dword_22CEE1000, v98, v99, "Received an update for a zombie activity: %{public}s", v100, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v101);
              MEMORY[0x2318C6860](v101, -1, -1);
              MEMORY[0x2318C6860](v100, -1, -1);
            }

            v102 = sub_22D014C3C();
            sub_22CEF88D4(&qword_2814439B0, MEMORY[0x277CB95E0], MEMORY[0x277CB95E8]);
            v95 = swift_allocError();
            (*(*(v102 - 8) + 104))(v103, *MEMORY[0x277CB95D0], v102);
            swift_willThrow();
          }

          else
          {
            v51 = v171;

            v52 = sub_22D01482C();

            if (v52 & 1) != 0 || (sub_22D0147FC())
            {
              sub_22D01469C();
              v165 = *(v51 + 56);
              sub_22D01469C();
              sub_22CEF88D4(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
              v53 = v164;
              v54 = sub_22D01663C();
              v56 = v168 + 8;
              v55 = *(v168 + 8);
              v55(v23, v53);
              v168 = v56;
              v55(v26, v53);
              v57 = v166;
              if (v54 & 1) == 0 || (v58 = v55, v59 = swift_getObjectType(), ((v169[6].isa)(v59)))
              {
                if (qword_28143FB58 != -1)
                {
                  swift_once();
                }

                v168 = v46;
                v60 = sub_22D01637C();
                __swift_project_value_buffer(v60, qword_281444498);

                v61 = sub_22D01636C();
                v62 = sub_22D01690C();

                v63 = os_log_type_enabled(v61, v62);
                v64 = v171;
                if (v63)
                {
                  v65 = swift_slowAlloc();
                  v66 = swift_slowAlloc();
                  v175[0] = v66;
                  *v65 = 136446210;
                  *(v65 + 4) = sub_22CEEE31C(a1, v41, v175);
                  _os_log_impl(&dword_22CEE1000, v61, v62, "Updating activity: %{public}s", v65, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v66);
                  v67 = v66;
                  v64 = v171;
                  MEMORY[0x2318C6860](v67, -1, -1);
                  MEMORY[0x2318C6860](v65, -1, -1);
                }

                v68 = v172;
                (*(v162 + 24))(v172 + v165, v167, v163);
                v69 = v158;
                sub_22CEFEA98(v68, v158, type metadata accessor for Activity);
                (*(v170 + 56))(v69, 0, 1, v64);
                swift_beginAccess();

                sub_22CF0BC5C(v69, a1, v41);
                swift_endAccess();
                isa = v169[1].isa;
                v71 = v68;
                v72 = v173;
                sub_22CEFEA98(v71, v173, type metadata accessor for Activity);
                v73 = v159;
                *(v72 + *(v159 + 20)) = 3;
                v74 = (v72 + v73[6]);
                *v74 = v57;
                v74[1] = isa;
                v75 = (v72 + v73[7]);
                v76 = v161;
                *v75 = v160;
                v75[1] = v76;
                *(v72 + v73[8]) = a9 & 1;
                type metadata accessor for ActivityManager.QueueActivityManager();
                v77 = swift_allocObject();
                *(v77 + 16) = v10;
                v78 = v168;
                v79 = *(v168 + 16);
                if (v79)
                {

                  swift_unknownObjectRetain();
                  v80 = (v78 + 40);
                  do
                  {
                    if (*(v80 - 1) != v57)
                    {
                      ObjectType = swift_getObjectType();
                      v82 = *v80;
                      v83 = *(*v80 + 16);
                      swift_unknownObjectRetain();

                      v83(v173, v77, &off_28402C298, ObjectType, v82);
                      swift_unknownObjectRelease();
                    }

                    v80 += 2;
                    --v79;
                  }

                  while (v79);
                }

                else
                {

                  swift_unknownObjectRetain();
                }

                sub_22CF0A5FC(v173, type metadata accessor for ActivityManagerEvent);
                sub_22CF0A5FC(v172, type metadata accessor for Activity);
                return;
              }

              v115 = v163;
              if (qword_28143FB58 != -1)
              {
                swift_once();
              }

              v116 = sub_22D01637C();
              __swift_project_value_buffer(v116, qword_281444498);
              v117 = v162;
              v118 = v157;
              (*(v162 + 16))(v157, v167, v115);

              v119 = sub_22D01636C();
              v120 = v41;
              v121 = sub_22D0168EC();

              if (os_log_type_enabled(v119, v121))
              {
                v122 = a1;
                v123 = swift_slowAlloc();
                v173 = swift_slowAlloc();
                v174 = v173;
                *v123 = 136446722;
                *(v123 + 4) = sub_22CEEE31C(v122, v120, &v174);
                *(v123 + 12) = 2080;
                sub_22D01469C();
                sub_22CEF88D4(&unk_281443A20, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
                LODWORD(v170) = v121;
                v124 = v164;
                v125 = sub_22D016DEC();
                v127 = v126;
                v169 = v119;
                v58(v26, v124);
                (*(v117 + 8))(v118, v163);
                v128 = sub_22CEEE31C(v125, v127, &v174);

                *(v123 + 14) = v128;
                *(v123 + 22) = 2080;
                v129 = v172;
                swift_beginAccess();
                sub_22D01469C();
                swift_endAccess();
                v130 = sub_22D016DEC();
                v132 = v131;
                v58(v26, v124);
                v133 = sub_22CEEE31C(v130, v132, &v174);

                *(v123 + 24) = v133;
                v134 = v169;
                _os_log_impl(&dword_22CEE1000, v169, v170, "Received an obsolete payload: %{public}s. Payload timestamp is %s. Activity timestamp is %s", v123, 0x20u);
                v135 = v173;
                swift_arrayDestroy();
                MEMORY[0x2318C6860](v135, -1, -1);
                MEMORY[0x2318C6860](v123, -1, -1);
              }

              else
              {

                (*(v117 + 8))(v118, v115);
                v129 = v172;
              }

              v136 = sub_22D014C3C();
              sub_22CEF88D4(&qword_2814439B0, MEMORY[0x277CB95E0], MEMORY[0x277CB95E8]);
              v95 = swift_allocError();
              (*(*(v136 - 8) + 104))(v137, *MEMORY[0x277CB95D0], v136);
              swift_willThrow();
              v114 = v129;
              goto LABEL_52;
            }

            if (qword_28143FB58 != -1)
            {
              swift_once();
            }

            v104 = sub_22D01637C();
            __swift_project_value_buffer(v104, qword_281444498);

            v105 = sub_22D01636C();
            v106 = sub_22D0168EC();

            if (os_log_type_enabled(v105, v106))
            {
              v107 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              v175[0] = v108;
              *v107 = 136446210;
              *(v107 + 4) = sub_22CEEE31C(a1, v41, v175);
              _os_log_impl(&dword_22CEE1000, v105, v106, "Received an update from a content source that cannot contribute to the activity: %{public}s", v107, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v108);
              MEMORY[0x2318C6860](v108, -1, -1);
              MEMORY[0x2318C6860](v107, -1, -1);
            }

            v109 = a1;
            v110 = sub_22D014C3C();
            sub_22CEF88D4(&qword_2814439B0, MEMORY[0x277CB95E0], MEMORY[0x277CB95E8]);
            v95 = swift_allocError();
            v112 = v111;
            v113 = (v111 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2338, &unk_22D018960) + 64));
            *v112 = 0x657461647055;
            v112[1] = 0xE600000000000000;
            sub_22D01480C();
            *v113 = v109;
            v113[1] = v41;
            (*(*(v110 - 8) + 104))(v112, *MEMORY[0x277CB95D8], v110);
            swift_willThrow();
          }

          v114 = v172;
LABEL_52:
          sub_22CF0A5FC(v114, type metadata accessor for Activity);
LABEL_53:
          if (qword_28143FB58 != -1)
          {
            swift_once();
          }

          v138 = sub_22D01637C();
          __swift_project_value_buffer(v138, qword_281444498);
          v139 = sub_22D01415C();
          v140 = [v139 localizedDescription];
          v141 = sub_22D01667C();
          v143 = v142;

          v144 = v139;

          v145 = sub_22D01636C();
          v146 = sub_22D0168EC();

          if (os_log_type_enabled(v145, v146))
          {
            v173 = v141;
            v147 = swift_slowAlloc();
            v148 = swift_slowAlloc();
            v175[0] = v148;
            *v147 = 136446978;
            *(v147 + 4) = sub_22CEEE31C(0xD00000000000001ELL, 0x800000022D0215E0, v175);
            *(v147 + 12) = 2082;
            v149 = [v144 domain];
            v150 = sub_22D01667C();
            v152 = v151;

            v153 = sub_22CEEE31C(v150, v152, v175);

            *(v147 + 14) = v153;
            *(v147 + 22) = 2048;
            v154 = [v144 code];

            *(v147 + 24) = v154;
            *(v147 + 32) = 2082;
            v155 = sub_22CEEE31C(v173, v143, v175);

            *(v147 + 34) = v155;
            _os_log_impl(&dword_22CEE1000, v145, v146, "%{public}s: %{public}s (%ld) %{public}s", v147, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x2318C6860](v148, -1, -1);
            MEMORY[0x2318C6860](v147, -1, -1);
          }

          else
          {
          }

          return;
        }
      }

      if (qword_28143FB58 != -1)
      {
        swift_once();
      }

      v89 = sub_22D01637C();
      __swift_project_value_buffer(v89, qword_281444498);

      v90 = sub_22D01636C();
      v91 = sub_22D0168EC();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v175[0] = v93;
        *v92 = 136446210;
        *(v92 + 4) = sub_22CEEE31C(a1, v41, v175);
        _os_log_impl(&dword_22CEE1000, v90, v91, "Received an update for an activity that does not exist: %{public}s", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v93);
        MEMORY[0x2318C6860](v93, -1, -1);
        MEMORY[0x2318C6860](v92, -1, -1);
      }

      v94 = sub_22D014C3C();
      sub_22CEF88D4(&qword_2814439B0, MEMORY[0x277CB95E0], MEMORY[0x277CB95E8]);
      v95 = swift_allocError();
      (*(*(v94 - 8) + 104))(v96, *MEMORY[0x277CB95D0], v94);
      swift_willThrow();
      goto LABEL_53;
    }
  }

  if (qword_28143FB58 != -1)
  {
    goto LABEL_59;
  }

LABEL_23:
  v84 = sub_22D01637C();
  __swift_project_value_buffer(v84, qword_281444498);

  v85 = sub_22D01636C();
  v86 = sub_22D0168EC();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v176[0] = v88;
    *v87 = 136446210;
    *(v87 + 4) = sub_22CEEE31C(a1, v41, v176);
    _os_log_impl(&dword_22CEE1000, v85, v86, "Received an update for an activity with no subscribers: %{public}s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v88);
    MEMORY[0x2318C6860](v88, -1, -1);
    MEMORY[0x2318C6860](v87, -1, -1);
  }
}

uint64_t sub_22CF2D7F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_22CF2D87C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*(v3 + 32) + 16);
  os_unfair_lock_lock(v7);
  v8 = *(v3 + 16);
  swift_beginAccess();
  v9 = *(v8 + 16);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  v10 = sub_22CEEC698(a1, a2);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    v16 = type metadata accessor for Activity(0);
    (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
    goto LABEL_6;
  }

  v12 = v10;
  v13 = *(v9 + 56);
  v14 = type metadata accessor for Activity(0);
  v15 = *(v14 - 8);
  sub_22CF0F9C8(v13 + *(v15 + 72) * v12, a3);

  (*(v15 + 56))(a3, 0, 1, v14);
LABEL_6:
  os_unfair_lock_unlock(v7);
}

uint64_t sub_22CF2D9F0(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v33 - v12;
  v15 = *a2;
  v14 = a2[1];
  v16 = OBJC_IVAR____TtC11SessionCore12OutputServer__lock_activities;
  swift_beginAccess();
  v17 = *(a1 + v16);
  if (!*(v17 + 16))
  {
    goto LABEL_7;
  }

  v18 = sub_22CEEC698(v15, v14);
  if (v19)
  {
    v20 = v18;
    v21 = *(v17 + 56);
    v33 = a3;
    v34 = v21;
    v22 = type metadata accessor for Activity(0);
    v35 = v15;
    v23 = v22;
    v24 = *(v22 - 8);
    sub_22CF1C294(v34 + *(v24 + 72) * v20, v13, type metadata accessor for Activity);

    v25 = *(v24 + 56);
    v25(v13, 0, 1, v23);
    sub_22CEEC3D8(v13, &qword_27D9F3810, &unk_22D018FA0);
    sub_22CF1C294(a2, v10, type metadata accessor for Activity);
    v25(v10, 0, 1, v23);
    swift_beginAccess();

    sub_22CF0BC5C(v10, v35, v14);
    swift_endAccess();
    v26 = OBJC_IVAR____TtC11SessionCore12OutputServer__lock_clients;
    swift_beginAccess();
    v27 = *(a1 + v26);
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = sub_22CF1C2FC(*(v27 + 16), 0);
      a3 = sub_22CF102C0(v36, v29 + 4, v28, v27);
      v30 = v36[0];
      v13 = v36[2];

      sub_22CEE57FC(v30);
      if (a3 != v28)
      {
        __break(1u);
        goto LABEL_6;
      }
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }

    a3 = v33;
    goto LABEL_10;
  }

LABEL_6:

LABEL_7:
  v31 = type metadata accessor for Activity(0);
  (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
  sub_22CEEC3D8(v13, &qword_27D9F3810, &unk_22D018FA0);
  v29 = MEMORY[0x277D84F90];
LABEL_10:
  *a3 = v29;
}

void sub_22CF2DD2C(uint64_t *a1)
{
  v3 = type metadata accessor for Activity(0);
  MEMORY[0x28223BE20](v3, v4);
  v88 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D014CBC();
  v86 = *(v6 - 8);
  v87 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v85 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3820, &qword_22D01BD08);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v81 = &v76 - v11;
  v12 = sub_22D014A1C();
  v83 = *(v12 - 8);
  v84 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v82 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D014C4C();
  v80 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D014C8C();
  v20 = *(v19 - 8);
  v90 = v19;
  v91 = v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v78 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v76 - v25;
  v27 = sub_22D01461C();
  v28 = *(v27 - 1);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v76 - v34;
  v92 = a1;
  sub_22CF16990(a1);
  if (v36)
  {
    v37 = *(v1 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_hasOutsizedPayloadsEntitlement);
    v38 = sub_22D01464C();
    if (v37 == 1)
    {
      if (v38 + 0x4000000000000000 < 0)
      {
        __break(1u);
        goto LABEL_43;
      }

      v38 *= 2;
    }

    v79 = v38;
    v89 = v1;
    v76 = *(v3 + 56);
    sub_22D01467C();
    v39 = sub_22D0145FC();
    v41 = v40;
    v43 = *(v28 + 8);
    v42 = v28 + 8;
    v77 = v43;
    v43(v35, v27);
    v44 = v41;
    v45 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      if (v45 != 2)
      {
        sub_22CEE7524(v39, v41);
        v39 = v89;
        if (v79 < 0)
        {
LABEL_14:
          if (qword_28143FB60 == -1)
          {
LABEL_15:
            v49 = sub_22D01637C();
            __swift_project_value_buffer(v49, qword_2814444B0);
            v15 = v88;
            sub_22CF1C294(v92, v88, type metadata accessor for Activity);
            v50 = sub_22D01636C();
            v26 = sub_22D0168EC();
            if (!os_log_type_enabled(v50, v26))
            {
              sub_22CF0C71C(v15);
LABEL_40:

              return;
            }

            v18 = swift_slowAlloc();
            *v18 = 134349312;
            sub_22D01467C();
            v51 = sub_22D0145FC();
            v53 = v52;
            v77(v32, v27);
            v54 = v53;
            v55 = v53 >> 62;
            if ((v53 >> 62) <= 1)
            {
              if (v55)
              {
                sub_22CEE7524(v51, v53);
                if (__OFSUB__(HIDWORD(v51), v51))
                {
                  __break(1u);

                  os_unfair_lock_unlock(HIDWORD(v51));
                  __break(1u);
                  return;
                }

                v56 = HIDWORD(v51) - v51;
              }

              else
              {
                sub_22CEE7524(v51, v53);
                v56 = BYTE6(v53);
              }

              goto LABEL_39;
            }

            if (v55 != 2)
            {
              sub_22CEE7524(v51, v53);
              v56 = 0;
LABEL_39:
              sub_22CF0C71C(v15);
              *(v18 + 4) = v56;
              *(v18 + 6) = 2050;
              *(v18 + 14) = v79;
              _os_log_impl(&dword_22CEE1000, v50, v26, "Content state size %{public}ld exceeds maximum size %{public}ld", v18, 0x16u);
              MEMORY[0x2318C6860](v18, -1, -1);
              goto LABEL_40;
            }

            v71 = *(v51 + 16);
            v70 = *(v51 + 24);
            sub_22CEE7524(v51, v54);
            v48 = __OFSUB__(v70, v71);
            v56 = v70 - v71;
            if (!v48)
            {
              goto LABEL_39;
            }

            __break(1u);
            goto LABEL_33;
          }

LABEL_43:
          swift_once();
          goto LABEL_15;
        }

LABEL_20:
        v57 = *(*(v39 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_lock) + 16);
        os_unfair_lock_lock(v57);
        sub_22CF2E784(v39, v92, v93);
        os_unfair_lock_unlock(v57);
        if ((v93[0] & 1) == 0)
        {
          return;
        }

        v58 = sub_22CF0B5E0();
        v59 = v80;
        (*(v80 + 104))(v18, **(&unk_2787486F8 + v58), v15);
        (*(v59 + 32))(v26, v18, v15);
        v60 = *(v91 + 104);
        v60(v26, *MEMORY[0x277CB9630], v90);
        v27 = sub_22CF0D6DC(0, 1, 1, MEMORY[0x277D84F90]);
        v62 = v27[2];
        v61 = v27[3];
        if (v62 >= v61 >> 1)
        {
          v27 = sub_22CF0D6DC((v61 > 1), v62 + 1, 1, v27);
        }

        v15 = v82;
        v27[2] = v62 + 1;
        v41 = *(v91 + 32);
        v3 = (*(v91 + 80) + 32) & ~*(v91 + 80);
        v42 = *(v91 + 72);
        v91 += 32;
        (v41)(v27 + v3 + v42 * v62, v26, v90);
        v63 = OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_subscriptionOptions;
        v64 = v89;
        swift_beginAccess();
        v65 = v64 + v63;
        v66 = v81;
        sub_22CEEB6DC(v65, v81, &qword_27D9F3820, &qword_22D01BD08);
        v18 = v83;
        v26 = v84;
        if ((*(v83 + 6))(v66, 1, v84) == 1)
        {
          sub_22CEEC3D8(v66, &qword_27D9F3820, &qword_22D01BD08);
LABEL_34:
          v69 = v87;
          goto LABEL_35;
        }

        (*(v18 + 4))(v15, v66, v26);
        if ((sub_22D014A0C() & 1) == 0)
        {
LABEL_33:
          (*(v18 + 1))(v15, v26);
          goto LABEL_34;
        }

        v67 = sub_22D0146BC();
        v68 = v78;
        (*(*(v67 - 8) + 16))(v78, v92 + v76, v67);
        v60(v68, *MEMORY[0x277CB9638], v90);
        v47 = v27[2];
        v46 = v27[3];
        v39 = v47 + 1;
        if (v47 < v46 >> 1)
        {
LABEL_28:
          v69 = v87;
          (*(v18 + 1))(v15, v26);
          v27[2] = v39;
          (v41)(v27 + v3 + v47 * v42, v78, v90);
LABEL_35:

          v72 = v85;
          sub_22D014C9C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F20E8, &qword_22D018910);
          v73 = v86;
          v74 = (*(v86 + 80) + 32) & ~*(v86 + 80);
          v75 = swift_allocObject();
          *(v75 + 16) = xmmword_22D0187A0;
          (*(v73 + 16))(v75 + v74, v72, v69);
          sub_22CF1C384(v75);

          (*(v73 + 8))(v72, v69);
          return;
        }

LABEL_46:
        v27 = sub_22CF0D6DC((v46 > 1), v39, 1, v27);
        goto LABEL_28;
      }

      v41 = *(v39 + 16);
      v47 = *(v39 + 24);
      sub_22CEE7524(v39, v44);
      v46 = v47 - v41;
      if (!__OFSUB__(v47, v41))
      {
        v39 = v89;
        goto LABEL_13;
      }

      __break(1u);
    }

    else
    {
      if (!v45)
      {
        sub_22CEE7524(v39, v41);
        v46 = BYTE6(v41);
        v39 = v89;
        goto LABEL_13;
      }

      v47 = HIDWORD(v39);
      sub_22CEE7524(v39, v41);
      v48 = __OFSUB__(HIDWORD(v39), v39);
      v46 = (HIDWORD(v39) - v39);
      v39 = v89;
      if (!v48)
      {
        v46 = v46;
LABEL_13:
        if (v79 < v46)
        {
          goto LABEL_14;
        }

        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_46;
  }
}

uint64_t sub_22CF2E784@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3820, &qword_22D01BD08);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v92 - v10;
  v12 = sub_22D014A1C();
  v107 = *(v12 - 8);
  v108 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v101 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_22D014C4C();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v15);
  v104 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D014C8C();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v119 = &v92 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v118 = &v92 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  result = MEMORY[0x28223BE20](v28, v29);
  v34 = &v92 - v33;
  if (*(a1 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_pendingChangeAck))
  {
    v102 = v32;
    v94 = v11;
    v92 = v31;
    v35 = OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_bufferedChanges;
    swift_beginAccess();
    v103 = a1;
    v99 = v35;
    v36 = MEMORY[0x277D84F98];
    if (*(a1 + v35))
    {
      v36 = *(a1 + v35);
    }

    v38 = *a2;
    v37 = a2[1];
    v100 = a2;
    v39 = v36;
    v40 = *(v36 + 16);

    v98 = v37;
    v97 = v38;
    if (v40 && (sub_22CEEC698(v38, v37), (v41 & 1) != 0))
    {
    }

    else
    {
      v42 = MEMORY[0x277D84F90];
    }

    v44 = v18;
    v95 = a3;
    v96 = v4;
    v45 = *(v42 + 16);
    v110 = v17;
    v117 = v45;
    v93 = v39;
    if (v45)
    {
      v46 = 0;
      v114 = v18 + 88;
      v115 = v18 + 16;
      v47 = *MEMORY[0x277CB9630];
      v112 = *MEMORY[0x277CB9628];
      v113 = v47;
      v48 = v18 + 8;
      v111 = (v44 + 32);
      v49 = MEMORY[0x277D84F90];
      v109 = v44;
      v116 = v42;
      while (v46 < *(v42 + 16))
      {
        v121 = ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v120 = *(v44 + 72);
        v50 = *(v44 + 16);
        v50(v34, &v121[v42 + v120 * v46], v17);
        v51 = v48;
        v52 = v118;
        v50(v118, v34, v17);
        v53 = (*(v44 + 88))(v52, v17);
        v4 = *(v44 + 8);
        v54 = v52;
        v48 = v51;
        (v4)(v54, v17);
        if (v53 != v113 && v53 == v112)
        {
          v56 = *v111;
          (*v111)(v119, v34, v17);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v122[0] = v49;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22CF443F0(0, *(v49 + 16) + 1, 1);
            v49 = v122[0];
          }

          v59 = *(v49 + 16);
          v58 = *(v49 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_22CF443F0((v58 > 1), v59 + 1, 1);
            v49 = v122[0];
          }

          *(v49 + 16) = v59 + 1;
          v60 = &v121[v49 + v59 * v120];
          v17 = v110;
          v56(v60, v119, v110);
          v44 = v109;
          v48 = v51;
        }

        else
        {
          (v4)(v34, v17);
        }

        ++v46;
        v42 = v116;
        if (v117 == v46)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
      v49 = MEMORY[0x277D84F90];
LABEL_24:

      v61 = sub_22CF0B5E0();
      v4 = v49;
      v62 = v105;
      v63 = v104;
      v64 = v106;
      (*(v105 + 104))(v104, **(&unk_2787486F8 + v61), v106);
      v65 = v102;
      (*(v62 + 32))(v102, v63, v64);
      v66 = *(v44 + 104);
      (v66)(v65, *MEMORY[0x277CB9630], v17);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v121 = v66;
      if (v67)
      {
LABEL_25:
        v69 = v4[2];
        v68 = v4[3];
        v70 = v4;
        if (v69 >= v68 >> 1)
        {
          v70 = sub_22CF0D6DC((v68 > 1), v69 + 1, 1, v4);
        }

        *(v70 + 2) = v69 + 1;
        v71 = *(v44 + 32);
        v72 = v44 + 32;
        v73 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v74 = *(v72 + 40);
        v71(&v70[v73 + v74 * v69], v102, v110);
        v75 = OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_subscriptionOptions;
        v76 = v103;
        swift_beginAccess();
        v77 = v94;
        sub_22CEEB6DC(v76 + v75, v94, &qword_27D9F3820, &qword_22D01BD08);
        v79 = v107;
        v78 = v108;
        if ((*(v107 + 48))(v77, 1, v108) == 1)
        {
          sub_22CEEC3D8(v77, &qword_27D9F3820, &qword_22D01BD08);
        }

        else
        {
          v109 = v72;
          v80 = v101;
          (*(v79 + 32))(v101, v77, v78);
          if (sub_22D014A0C())
          {
            v81 = *(type metadata accessor for Activity(0) + 56);
            v82 = sub_22D0146BC();
            v83 = v100 + v81;
            v84 = v92;
            (*(*(v82 - 8) + 16))(v92, v83, v82);
            (v121)(v84, *MEMORY[0x277CB9638], v110);
            v86 = *(v70 + 2);
            v85 = *(v70 + 3);
            v121 = (v86 + 1);
            if (v86 >= v85 >> 1)
            {
              v70 = sub_22CF0D6DC((v85 > 1), v86 + 1, 1, v70);
            }

            v87 = v99;
            v88 = v98;
            v89 = v97;
            (*(v107 + 8))(v101, v108);
            *(v70 + 2) = v121;
            v71(&v70[v73 + v86 * v74], v92, v110);
            goto LABEL_35;
          }

          (*(v79 + 8))(v80, v78);
        }

        v87 = v99;
        v88 = v98;
        v89 = v97;
LABEL_35:

        v90 = v93;
        v91 = swift_isUniquelyReferenced_nonNull_native();
        v123 = v90;
        sub_22CFC00E0(v70, v89, v88, v91);

        *(v103 + v87) = v123;

        v43 = 0;
        a3 = v95;
        goto LABEL_36;
      }
    }

    v4 = sub_22CF0D6DC(0, v4[2] + 1, 1, v4);
    goto LABEL_25;
  }

  v43 = 1;
  *(a1 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_pendingChangeAck) = 1;
LABEL_36:
  *a3 = v43;
  return result;
}

uint64_t sub_22CF2F0BC(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v50 = a5;
  v9 = sub_22D01457C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  p_info = _TtC11SessionCore16KnownClientStore.info;
  v51 = a4;
  if (a1)
  {
    v49 = a3;
    v15 = a1;
    if (qword_28143FB60 != -1)
    {
      swift_once();
    }

    v16 = sub_22D01637C();
    __swift_project_value_buffer(v16, qword_2814444B0);
    v17 = a1;
    v18 = a2;
    v19 = sub_22D01636C();
    v20 = sub_22D01690C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v48 = v10;
      v22 = v21;
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_22CEEE31C(*&v18[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier], *&v18[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier + 8], aBlock);
      *(v22 + 12) = 2082;
      v52 = a1;
      v24 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2030, &qword_22D018FD0);
      v25 = sub_22D01669C();
      v27 = sub_22CEEE31C(v25, v26, aBlock);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_22CEE1000, v19, v20, "Did not provide extra runtime to process for activity change delivery: %{public}s: %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      v28 = v23;
      p_info = (_TtC11SessionCore16KnownClientStore + 32);
      MEMORY[0x2318C6860](v28, -1, -1);
      v29 = v22;
      v10 = v48;
      MEMORY[0x2318C6860](v29, -1, -1);
    }

    else
    {
    }
  }

  if (p_info[364] != -1)
  {
    swift_once();
  }

  v30 = sub_22D01637C();
  __swift_project_value_buffer(v30, qword_2814444B0);
  v31 = a2;
  v32 = sub_22D01636C();
  v33 = sub_22D01690C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136446210;
    *(v34 + 4) = sub_22CEEE31C(*&v31[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier], *&v31[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier + 8], aBlock);
    _os_log_impl(&dword_22CEE1000, v32, v33, "Delivering activity changes for %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x2318C6860](v35, -1, -1);
    MEMORY[0x2318C6860](v34, -1, -1);
  }

  sub_22D01456C();
  sub_22CEE74DC(&unk_281443A00, MEMORY[0x277CB9208], MEMORY[0x277CB9200]);
  v36 = sub_22D01517C();
  v37 = sub_22D0141EC();
  v39 = v38;

  v40 = sub_22D0141DC();
  v41 = swift_allocObject();
  v42 = v9;
  v43 = v50;
  *(v41 + 16) = v31;
  *(v41 + 24) = v43;
  aBlock[4] = sub_22CF2184C;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CF217E0;
  aBlock[3] = &block_descriptor_25;
  v44 = _Block_copy(aBlock);
  v45 = v31;

  [v51 activitiesChanged:v40 completion:v44];
  sub_22CEE7524(v37, v39);
  _Block_release(v44);

  return (*(v10 + 8))(v13, v42);
}

uint64_t sub_22CF2F5B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF2F7D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CF2F820(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F28E0, qword_22D019290);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v15 - v5;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(*(v1 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient_lock) + 16);
    os_unfair_lock_lock(v9);
    v10 = sub_22D0149FC();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v6, a1, v10);
    (*(v11 + 56))(v6, 0, 1, v10);
    v12 = OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_predicate;
    swift_beginAccess();
    sub_22CF2F9DC(v6, v1 + v12);
    swift_endAccess();
    os_unfair_lock_unlock(v9);
    v13 = *(*(v8 + OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_lock) + 16);
    os_unfair_lock_lock(v13);
    v14 = *(v8 + OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer__lock_prominentActivityIdentifiers);

    os_unfair_lock_unlock(v13);
    sub_22CF2FA4C(v14);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22CF2F9DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F28E0, qword_22D019290);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF2FA4C(uint64_t a1)
{
  v3 = sub_22D01637C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D01473C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v1 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient_connection) remoteTarget])
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  aBlock = v36;
  v32 = v37;
  if (*(&v37 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2950, qword_22D0192A8);
    if (swift_dynamicCast())
    {
      v13 = v35;
      *&v36 = 0;
      v14 = *(*(v1 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient_lock) + 16);
      os_unfair_lock_lock(v14);
      sub_22CF2FEF4(v1, a1, &v36);
      os_unfair_lock_unlock(v14);
      if (!v36)
      {
        return swift_unknownObjectRelease();
      }

      sub_22D01472C();
      sub_22CF2F7D8(&qword_28143F6D8, MEMORY[0x277CB9300], MEMORY[0x277CB92F8]);
      v30 = v13;
      v15 = v1;
      v16 = sub_22D01517C();
      v29 = sub_22D0141EC();
      v18 = v17;

      sub_22D01566C();
      v19 = sub_22D01563C();
      v20 = sub_22D0141DC();
      v21 = swift_allocObject();
      *(v21 + 16) = v15;
      *(v21 + 24) = v19;
      v33 = sub_22CF3034C;
      v34 = v21;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v32 = sub_22CF217E0;
      *(&v32 + 1) = &block_descriptor_3;
      v22 = v9;
      v23 = _Block_copy(&aBlock);
      v24 = v15;

      [v30 activityProminenceDidChange:v20 completion:v23];
      sub_22CEE7524(v29, v18);
      _Block_release(v23);

      swift_unknownObjectRelease();

      (*(v22 + 8))(v12, v8);
    }
  }

  else
  {
    sub_22CEEC3D8(&aBlock, &qword_27D9F2B10, &unk_22D01B930);
  }

  sub_22D01635C();
  v26 = sub_22D01636C();
  v27 = sub_22D0168EC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_22CEE1000, v26, v27, "Client does not implement expected interface", v28, 2u);
    MEMORY[0x2318C6860](v28, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_22CF2FEB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CF2FEF4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F28E0, qword_22D019290);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v19 - v8;
  v10 = sub_22D0149FC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_predicate;
  swift_beginAccess();
  sub_22CF30164(a1 + v15, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_22CEEC3D8(v9, &unk_27D9F28E0, qword_22D019290);
  }

  (*(v11 + 32))(v14, v9, v10);
  if (*(a1 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_pendingAck))
  {
    *(a1 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_bufferedProminenceUpdate) = a2;
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_pendingAck) = 1;
    if (sub_22D0149DC())
    {

      MEMORY[0x28223BE20](v17, v18);
      *(&v19 - 2) = v14;

      *a3 = sub_22CF301D4(sub_22CF66B6C, (&v19 - 4), a2);
    }

    else
    {
      *a3 = a2;
    }
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_22CF30164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F28E0, qword_22D019290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF301D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_22CF4412C(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_22CF4412C((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t sub_22CF30354(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient_lock) + 16);
  os_unfair_lock_lock(v3);
  *(a2 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_pendingAck) = 0;
  v4 = *(a2 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_bufferedProminenceUpdate);
  *(a2 + OBJC_IVAR____TtC11SessionCoreP33_4DC64229D2ABB0B5306670C4AE3A9EED34ProminenceObservationServiceClient__lock_bufferedProminenceUpdate) = 0;
  os_unfair_lock_unlock(v3);
  if (v4)
  {
    sub_22CF2FA4C(v4);
  }

  return sub_22D01562C();
}

double sub_22CF303E4(uint64_t a1)
{
  v3 = sub_22D0164CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22D01653C();
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for PowerLog.UpdateEvent(0);
  v13 = *(updated - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](updated - 8, v15);
  v20[1] = *(v1 + 16);
  sub_22CF199C0(a1, v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PowerLog.UpdateEvent);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  sub_22CF19A28(v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PowerLog.UpdateEvent);
  aBlock[4] = sub_22CF311BC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF8B58;
  aBlock[3] = &block_descriptor_12;
  v18 = _Block_copy(aBlock);
  sub_22D0164EC();
  v22 = MEMORY[0x277D84F90];
  sub_22CF1A11C(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8340(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v11, v7, v18);
  _Block_release(v18);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v21);

  return result;
}

uint64_t sub_22CF30760(uint64_t *a1)
{
  v2 = sub_22D0152EC();
  v109 = *(v2 - 8);
  v110 = v2;
  v4 = MEMORY[0x28223BE20](v2, v3);
  v108 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v107 = &v99 - v7;
  v8 = sub_22D01436C();
  v113 = *(v8 - 8);
  v114 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v112 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActivityManagerEvent(0);
  v12 = v11 - 8;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v117 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v124 = &v99 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v116 = (&v99 - v20);
  v21 = sub_22D01637C();
  v120 = *(v21 - 8);
  v121 = v21;
  v23 = MEMORY[0x28223BE20](v21, v22);
  v118 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v125 = &v99 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A58, &qword_22D019788);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v30 = &v99 - v29;
  v31 = sub_22D01525C();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v115 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2308, &unk_22D018950);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v38 = &v99 - v37;
  v39 = *a1;
  v40 = a1[1];
  v41 = *(a1 + *(v12 + 28));
  v43 = v41 == 2 || v41 == 4;
  v106 = v43;
  v111 = type metadata accessor for Activity(0);
  sub_22D01462C();
  v44 = sub_22D0150CC();
  v119 = (*(*(v44 - 8) + 48))(v38, 1, v44);
  sub_22CEEC3D8(v38, &qword_27D9F2308, &unk_22D018950);
  v45 = *(v126 + 16);
  v46 = *(v126 + 24);
  ObjectType = swift_getObjectType();
  v122 = v40;
  v123 = v39;
  sub_22D0152BC();
  v48 = *(v32 + 48);
  v126 = v31;
  if (v48(v30, 1, v31) == 1)
  {
    return sub_22CEEC3D8(v30, &qword_27D9F2A58, &qword_22D019788);
  }

  v103 = ObjectType;
  v104 = v45;
  v105 = v46;
  v50 = v115;
  (*(v32 + 32))(v115, v30, v126);
  sub_22D01635C();
  v51 = v116;
  sub_22CF1C1C8(a1, v116);
  sub_22CF1C1C8(a1, v124);
  v52 = sub_22D01636C();
  v53 = sub_22D01690C();
  v54 = a1;
  if (os_log_type_enabled(v52, v53))
  {
    v55 = v119 != 1;
    v102 = v32;
    v56 = swift_slowAlloc();
    v101 = a1;
    v57 = v56;
    v100 = swift_slowAlloc();
    v127[0] = v100;
    *v57 = 67110146;
    *(v57 + 4) = v41 == 3;
    *(v57 + 8) = 1024;
    *(v57 + 10) = v106;
    *(v57 + 14) = 1024;
    *(v57 + 16) = v55;
    *(v57 + 20) = 2082;
    v58 = *v51;
    v59 = v51[1];

    sub_22CF0D34C(v51);
    v60 = sub_22CEEE31C(v58, v59, v127);

    *(v57 + 22) = v60;
    *(v57 + 30) = 2082;
    v61 = v124;
    v62 = v50;
    v63 = v112;
    sub_22D01466C();
    sub_22CEF87B4(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v64 = v114;
    v65 = sub_22D016DEC();
    v67 = v66;
    v68 = v63;
    v50 = v62;
    (*(v113 + 8))(v68, v64);
    sub_22CF0D34C(v61);
    v69 = sub_22CEEE31C(v65, v67, v127);
    v32 = v102;

    *(v57 + 32) = v69;
    _os_log_impl(&dword_22CEE1000, v52, v53, "AlertParticipant is checking for a possible alert to dismiss; activityUpdated:%{BOOL}d; activityStoppedOrDiscarded:%{BOOL}d hasNewAlertConfiguration:%{BOOL}d %{public}s.%{public}s", v57, 0x28u);
    v70 = v100;
    swift_arrayDestroy();
    MEMORY[0x2318C6860](v70, -1, -1);
    v54 = v101;
    MEMORY[0x2318C6860](v57, -1, -1);
  }

  else
  {

    sub_22CF0D34C(v124);
    sub_22CF0D34C(v51);
  }

  v71 = v125;
  v125 = *(v120 + 8);
  (v125)(v71, v121);
  v72 = v117;
  v73 = v123;
  if (v41 == 3)
  {
    v74 = v107;
    sub_22D01521C();
    v76 = v109;
    v75 = v110;
    v77 = v72;
    v78 = v50;
    v79 = v108;
    (*(v109 + 104))(v108, *MEMORY[0x277D4D430], v110);
    v80 = sub_22D0152DC();
    v81 = *(v76 + 8);
    v82 = v79;
    v50 = v78;
    v72 = v77;
    v81(v82, v75);
    v83 = v74;
    v73 = v123;
    v81(v83, v75);
    if ((v80 & 1) != 0 || v119 != 1)
    {
      goto LABEL_19;
    }
  }

  else if (v119 != 1 || v41 == 4 || v41 == 2)
  {
LABEL_19:
    v84 = v118;
    sub_22D01635C();
    sub_22CF1C1C8(v54, v72);

    v85 = sub_22D01636C();
    v86 = sub_22D01690C();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v127[0] = v124;
      *v87 = 136446466;
      *(v87 + 4) = sub_22CEEE31C(v73, v122, v127);
      *(v87 + 12) = 2082;
      v88 = v72;
      v89 = v112;
      sub_22D01466C();
      sub_22CEF87B4(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v90 = v50;
      v91 = v114;
      v92 = sub_22D016DEC();
      v93 = v32;
      v95 = v94;
      (*(v113 + 8))(v89, v91);
      sub_22CF0D34C(v88);
      v96 = sub_22CEEE31C(v92, v95, v127);
      v32 = v93;
      v50 = v90;

      *(v87 + 14) = v96;
      _os_log_impl(&dword_22CEE1000, v85, v86, "Dismissing latest alert for activity update: %{public}s.%{public}s", v87, 0x16u);
      v97 = v124;
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v97, -1, -1);
      MEMORY[0x2318C6860](v87, -1, -1);

      v98 = v118;
    }

    else
    {

      sub_22CF0D34C(v72);
      v98 = v84;
    }

    (v125)(v98, v121);
    sub_22D01529C();
  }

  return (*(v32 + 8))(v50, v126);
}

void sub_22CF311E8()
{
  v0 = sub_22D01666C();
  sub_22CF31290();
  v1 = sub_22D0165CC();

  PLLogRegisteredEvent();
}

unint64_t sub_22CF31290()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D019D50;
  *(inited + 32) = 0x6D617473656D6974;
  *(inited + 40) = 0xE900000000000070;
  v2 = sub_22D01426C();
  v3 = sub_22CEE82F8(0, &qword_28143D900, 0x277CBEAA8);
  *(inited + 48) = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x800000022D01E850;
  updated = type metadata accessor for PowerLog.UpdateEvent(0);
  v5 = sub_22D01666C();
  v6 = sub_22CEE82F8(0, &qword_28143D8F0, 0x277CCACA8);
  *(inited + 96) = v5;
  *(inited + 120) = v6;
  *(inited + 128) = 0x4449656C646E7562;
  *(inited + 136) = 0xE800000000000000;
  *(inited + 144) = sub_22D01666C();
  *(inited + 168) = v6;
  *(inited + 176) = 0x656372756F73;
  *(inited + 184) = 0xE600000000000000;
  v7 = MEMORY[0x277D83B88];
  *(inited + 192) = *(v0 + updated[7]);
  *(inited + 216) = v7;
  strcpy((inited + 224), "pushPriority");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  v8 = 5;
  if (*(v0 + updated[8]))
  {
    v8 = 10;
  }

  *(inited + 240) = v8;
  *(inited + 264) = v7;
  *(inited + 272) = 0x7472656C417369;
  *(inited + 280) = 0xE700000000000000;
  v9 = MEMORY[0x277D839B0];
  *(inited + 288) = *(v0 + updated[9]);
  *(inited + 312) = v9;
  *(inited + 320) = 0x6574617473;
  *(inited + 328) = 0xE500000000000000;
  *(inited + 336) = *(v0 + updated[10]) + 1;
  *(inited + 360) = v7;
  *(inited + 368) = 0x6E6F73616572;
  *(inited + 376) = 0xE600000000000000;
  v10 = *(v0 + updated[12]);
  *(inited + 408) = v7;
  *(inited + 384) = v10;
  v11 = sub_22CF11C44(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
  swift_arrayDestroy();
  return v11;
}