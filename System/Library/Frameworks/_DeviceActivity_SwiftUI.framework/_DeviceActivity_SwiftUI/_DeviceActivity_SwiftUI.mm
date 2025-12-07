uint64_t DeviceActivityReport.Context.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeviceActivityReport.Context.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *sub_23B6BB86C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_23B6BB878@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_23B6BB884()
{
  sub_23B6D73F0();
  sub_23B6D7080();
  return sub_23B6D7410();
}

uint64_t sub_23B6BB8D8(uint64_t a1)
{
  sub_23B6D73F0();
  sub_23B6D7080();
  return sub_23B6D7410();
}

uint64_t sub_23B6BB920(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23B6D73C0();
  }
}

double DeviceActivityReport.init(_:filter:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_23B6D6D20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[1];
  v13[0] = *a1;
  v13[1] = v10;
  (*(v7 + 16))(v9, a2, v6);
  DeviceActivityReport.init(_:filter:extensionIdentifier:)(v13, v9, 0, 0, v14);
  (*(v7 + 8))(a2, v6);
  result = *v14;
  v12 = v14[1];
  *a3 = v14[0];
  a3[1] = v12;
  return result;
}

void DeviceActivityReport.init(_:filter:extensionIdentifier:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v180 = a4;
  v179 = a3;
  v181 = a5;
  v184 = sub_23B6D6DF0();
  v188 = *(v184 - 8);
  v7 = MEMORY[0x28223BE20](v184);
  v187 = &v157[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v196 = &v157[-v9];
  v183 = sub_23B6D6DC0();
  v189 = *(v183 - 8);
  v10 = MEMORY[0x28223BE20](v183);
  v195 = &v157[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v197 = &v157[-v12];
  v13 = sub_23B6D6D90();
  v192 = *(v13 - 1);
  v193 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v191 = &v157[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v198 = &v157[-v16];
  v190 = sub_23B6D6AF0();
  v194 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v185 = &v157[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797F0, &qword_23B6D7C80);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v157[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179508, &qword_23B6D7C88);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v157[-v22];
  v176 = sub_23B6D69D0();
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v25 = &v157[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_23B6D6C10();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v157[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v32 = &v157[-v31];
  v177 = type metadata accessor for DeviceActivityReport.ClientConfiguration(0);
  MEMORY[0x28223BE20](v177);
  v178 = &v157[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = a1[1];
  v173 = *a1;
  v172 = v34;
  sub_23B6D6C20();
  v171 = DeviceActivityFilter.SegmentInterval.rawValue.getter();
  v35 = *(v27 + 8);
  v35(v32, v26);
  sub_23B6D6C20();
  v174 = v25;
  sub_23B6D6C00();
  v35(v30, v26);
  v186 = a2;
  sub_23B6D6CA0();
  v36 = sub_23B6D6C90();
  v37 = *(v36 - 8);
  v38 = (*(v37 + 48))(v23, 1, v36);
  if (v38 == 1)
  {
    sub_23B6BCE90(v23, &qword_27E179508, &qword_23B6D7C88);
    v170 = 0;
  }

  else
  {
    v170 = sub_23B6D6C80();
    (*(v37 + 8))(v23, v36);
  }

  sub_23B6D6CE0();
  v39 = sub_23B6D6CC0();
  v40 = *(v39 - 8);
  v41 = (*(v40 + 48))(v20, 1, v39);
  v42 = MEMORY[0x277D84FA0];
  v169 = v38;
  if (v41 == 1)
  {
    sub_23B6BCE90(v20, &qword_27E1797F0, &qword_23B6D7C80);
    v168 = 0;
LABEL_17:
    v55 = v191;
    v167 = sub_23B6D6BF0();
    v166 = sub_23B6D6BC0();
    v165 = sub_23B6D6BD0();
    v164 = sub_23B6D6BE0();
    v163 = v56;
    v162 = sub_23B6D6C30();
    v161 = v57;
    v58 = sub_23B6D6C60();
    v200 = v42;
    v59 = v58 + 56;
    v60 = 1 << *(v58 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(v58 + 56);
    v63 = (v60 + 63) >> 6;
    v194 = v192 + 16;
    v185 = (v192 + 8);
    v190 = v58;

    v64 = 0;
    *&v65 = 136446210;
    v182 = v65;
    v66 = v195;
    v67 = v193;
    while (v62)
    {
LABEL_27:
      v70 = *(v192 + 16);
      v70(v198, *(v190 + 48) + *(v192 + 72) * (__clz(__rbit64(v62)) | (v64 << 6)), v67);
      v71 = sub_23B6D6D80();
      if (v72)
      {
        sub_23B6BD810(&v199, v71, v72);

        v68 = *v185;
        v67 = v193;
      }

      else
      {
        if (qword_27E179500 != -1)
        {
          swift_once();
        }

        v73 = sub_23B6D6E20();
        __swift_project_value_buffer(v73, qword_27E17A730);
        v67 = v193;
        v70(v55, v198, v193);
        v74 = sub_23B6D6E00();
        v75 = sub_23B6D71D0();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v159 = v76;
          v160 = swift_slowAlloc();
          v199 = v160;
          *v76 = v182;
          sub_23B6C1E04(&qword_27E179510, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AC8]);
          v158 = v75;
          v77 = sub_23B6D73A0();
          v79 = v78;
          v68 = *v185;
          (*v185)(v55, v67);
          v80 = sub_23B6BD12C(v77, v79, &v199);

          v81 = v159;
          *(v159 + 1) = v80;
          v82 = v81;
          _os_log_impl(&dword_23B6BA000, v74, v158, "Untokenized application has no bundle identifier: %{public}s", v81, 0xCu);
          v83 = v160;
          __swift_destroy_boxed_opaque_existential_0(v160);
          v84 = v83;
          v66 = v195;
          MEMORY[0x23EEA3EE0](v84, -1, -1);
          MEMORY[0x23EEA3EE0](v82, -1, -1);
        }

        else
        {

          v68 = *v185;
          (*v185)(v55, v67);
        }
      }

      v62 &= v62 - 1;
      v68(v198, v67);
      v55 = v191;
    }

    while (1)
    {
      v69 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        __break(1u);
        goto LABEL_69;
      }

      if (v69 >= v63)
      {
        break;
      }

      v62 = *(v59 + 8 * v69);
      ++v64;
      if (v62)
      {
        v64 = v69;
        goto LABEL_27;
      }
    }

    v192 = v200;
    v85 = sub_23B6D6C40();
    v200 = MEMORY[0x277D84FA0];
    v86 = v85 + 56;
    v87 = 1 << *(v85 + 32);
    v88 = -1;
    if (v87 < 64)
    {
      v88 = ~(-1 << v87);
    }

    v89 = v88 & *(v85 + 56);
    v90 = (v87 + 63) >> 6;
    v198 = v189 + 2;
    v193 = v189 + 1;
    v194 = v85;

    v91 = 0;
    v92 = v183;
    v93 = v184;
    while (v89)
    {
LABEL_43:
      v96 = v189[2];
      v96(v197, *(v194 + 48) + v189[9] * (__clz(__rbit64(v89)) | (v91 << 6)), v92);
      v97 = sub_23B6D6DB0();
      if (v98)
      {
        sub_23B6BD810(&v199, v97, v98);

        v94 = *v193;
      }

      else
      {
        if (qword_27E179500 != -1)
        {
          swift_once();
        }

        v99 = sub_23B6D6E20();
        __swift_project_value_buffer(v99, qword_27E17A730);
        v96(v66, v197, v92);
        v100 = sub_23B6D6E00();
        v101 = sub_23B6D71D0();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v190 = v102;
          v191 = swift_slowAlloc();
          v199 = v191;
          *v102 = v182;
          sub_23B6C1E04(&qword_27E179518, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AE8]);
          v103 = sub_23B6D73A0();
          v105 = v104;
          v106 = v66;
          v94 = *v193;
          (*v193)(v106, v183);
          v107 = sub_23B6BD12C(v103, v105, &v199);
          v92 = v183;

          v108 = v190;
          *(v190 + 4) = v107;
          v109 = v108;
          _os_log_impl(&dword_23B6BA000, v100, v101, "Untokenized category has no identifier: %{public}s", v108, 0xCu);
          v110 = v191;
          __swift_destroy_boxed_opaque_existential_0(v191);
          MEMORY[0x23EEA3EE0](v110, -1, -1);
          MEMORY[0x23EEA3EE0](v109, -1, -1);
        }

        else
        {

          v111 = v66;
          v94 = *v193;
          (*v193)(v111, v92);
        }

        v93 = v184;
      }

      v89 &= v89 - 1;
      v94(v197, v92);
      v66 = v195;
    }

    while (1)
    {
      v95 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        break;
      }

      if (v95 >= v90)
      {

        v194 = v200;
        v112 = sub_23B6D6C50();
        v113 = v112;
        v200 = MEMORY[0x277D84FA0];
        v114 = v112 + 56;
        v115 = 1 << *(v112 + 32);
        v116 = -1;
        if (v115 < 64)
        {
          v116 = ~(-1 << v115);
        }

        v117 = v116 & *(v112 + 56);
        v118 = (v115 + 63) >> 6;
        v197 = (v188 + 8);
        v198 = (v188 + 16);
        v119 = 0;

        while (1)
        {
          v121 = v187;
          if (!v117)
          {
            break;
          }

LABEL_60:
          v123 = *(v188 + 16);
          v123(v196, *(v113 + 6) + *(v188 + 72) * (__clz(__rbit64(v117)) | (v119 << 6)), v93);
          v124 = sub_23B6D6DE0();
          if (v125)
          {
            sub_23B6BD810(&v199, v124, v125);

            v120 = *v197;
          }

          else
          {
            if (qword_27E179500 != -1)
            {
              swift_once();
            }

            v126 = sub_23B6D6E20();
            __swift_project_value_buffer(v126, qword_27E17A730);
            v123(v121, v196, v93);
            v127 = v93;
            v128 = sub_23B6D6E00();
            v129 = sub_23B6D71D0();
            if (os_log_type_enabled(v128, v129))
            {
              v130 = swift_slowAlloc();
              v191 = v130;
              v193 = swift_slowAlloc();
              v199 = v193;
              *v130 = v182;
              sub_23B6C1E04(&qword_27E179520, MEMORY[0x277CD4B20], MEMORY[0x277CD4B38]);
              v131 = sub_23B6D73A0();
              v132 = v127;
              v134 = v133;
              v120 = *v197;
              (*v197)(v121, v132);
              v135 = sub_23B6BD12C(v131, v134, &v199);

              v136 = v191;
              *(v191 + 4) = v135;
              v137 = v136;
              _os_log_impl(&dword_23B6BA000, v128, v129, "Untokenized web domain has no domain: %{public}s", v136, 0xCu);
              v138 = v193;
              __swift_destroy_boxed_opaque_existential_0(v193);
              MEMORY[0x23EEA3EE0](v138, -1, -1);
              MEMORY[0x23EEA3EE0](v137, -1, -1);

              v93 = v184;
            }

            else
            {

              v120 = *v197;
              (*v197)(v121, v127);
              v93 = v127;
            }

            v113 = v195;
          }

          v117 &= v117 - 1;
          v120(v196, v93);
        }

        while (1)
        {
          v122 = v119 + 1;
          if (__OFADD__(v119, 1))
          {
            goto LABEL_70;
          }

          if (v122 >= v118)
          {
            v139 = v169 == 1;

            v140 = v200;
            v141 = v178;
            v142 = v172;
            *v178 = v173;
            *(v141 + 8) = v142;
            *(v141 + 16) = v171;
            v143 = v177;
            (*(v175 + 32))(v141 + *(v177 + 24), v174, v176);
            v144 = v141 + v143[7];
            *v144 = v170;
            *(v144 + 8) = v139;
            *(v141 + v143[8]) = v168;
            *(v141 + v143[9]) = v167;
            *(v141 + v143[10]) = v166;
            *(v141 + v143[11]) = v165;
            v145 = (v141 + v143[12]);
            v146 = v163;
            *v145 = v164;
            v145[1] = v146;
            v147 = (v141 + v143[13]);
            v148 = v161;
            *v147 = v162;
            v147[1] = v148;
            *(v141 + v143[14]) = v192;
            *(v141 + v143[15]) = v194;
            *(v141 + v143[16]) = v140;
            v149 = (v141 + v143[17]);
            v150 = v180;
            *v149 = v179;
            v149[1] = v150;
            v151 = sub_23B6BD960();
            sub_23B6D69B0();
            swift_allocObject();
            sub_23B6D69A0();
            sub_23B6C1E04(&qword_27E179530, type metadata accessor for DeviceActivityReport.ClientConfiguration, &protocol conformance descriptor for DeviceActivityReport.ClientConfiguration);
            v152 = sub_23B6D6990();
            v154 = v153;

            v155 = v181;
            v156 = sub_23B6D6D20();
            (*(*(v156 - 8) + 8))(v186, v156);
            sub_23B6BD9AC(v141);
            *v155 = v151;
            v155[1] = &off_284E299B8;
            v155[2] = v152;
            v155[3] = v154;
            return;
          }

          v117 = *(v114 + 8 * v122);
          ++v119;
          if (v117)
          {
            v119 = v122;
            goto LABEL_60;
          }
        }
      }

      v89 = *(v86 + 8 * v95);
      ++v91;
      if (v89)
      {
        v91 = v95;
        goto LABEL_43;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
  }

  else
  {
    v43 = sub_23B6D6CB0();
    (*(v40 + 8))(v20, v39);
    v199 = v42;
    v44 = 1 << *(v43 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & *(v43 + 56);
    v47 = (v44 + 63) >> 6;
    *&v182 = v194 + 16;

    v48 = 0;
    v49 = v194;
    while (v46)
    {
      v50 = v48;
LABEL_14:
      v51 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v52 = v185;
      v53 = v190;
      (*(v49 + 16))(v185, *(v43 + 48) + *(v49 + 72) * (v51 | (v50 << 6)), v190);
      v54 = sub_23B6D6AE0();
      sub_23B6BD730(&v200, v54);
      (*(v49 + 8))(v52, v53);
    }

    while (1)
    {
      v50 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v50 >= v47)
      {

        v168 = v199;
        v42 = MEMORY[0x277D84FA0];
        goto LABEL_17;
      }

      v46 = *(v43 + 56 + 8 * v50);
      ++v48;
      if (v46)
      {
        v48 = v50;
        goto LABEL_14;
      }
    }
  }

  __break(1u);
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

uint64_t sub_23B6BCE90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DeviceActivityReport.body.getter@<X0>(uint64_t *a4@<X8>)
{
  if (*v4)
  {
    sub_23B6BDA08(v4[2], v4[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179538, &qword_23B6D7C90);
    sub_23B6BDA70();
  }

  result = sub_23B6D6FE0();
  *a4 = result;
  return result;
}

uint64_t sub_23B6BCF9C@<X0>(uint64_t *a4@<X8>)
{
  if (*v4)
  {
    sub_23B6BDA08(v4[2], v4[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179538, &qword_23B6D7C90);
    sub_23B6BDA70();
  }

  result = sub_23B6D6FE0();
  *a4 = result;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23B6BD05C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_23B6BD0D0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_23B6BD12C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_23B6BD12C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23B6BD1F8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_23B6C1E4C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23B6BD1F8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23B6BD304(a5, a6);
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
    result = sub_23B6D72B0();
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

void *sub_23B6BD304(uint64_t a1, unint64_t a2)
{
  v3 = sub_23B6BD350(a1, a2);
  sub_23B6BD480(&unk_284E28D50);
  return v3;
}

void *sub_23B6BD350(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23B6BD56C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23B6D72B0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23B6D70A0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23B6BD56C(v10, 0);
        result = sub_23B6D7290();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23B6BD480(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23B6BD5E0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23B6BD56C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C0, &unk_23B6D7EF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23B6BD5E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C0, &unk_23B6D7EF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_23B6BD6D4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_23B6BD730(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_23B6D73E0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_23B6BFAD8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_23B6BD810(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_23B6D73F0();
  sub_23B6D7080();
  v8 = sub_23B6D7410();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_23B6D73C0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_23B6BFBF8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t sub_23B6BD960()
{
  result = qword_27E179528;
  if (!qword_27E179528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E179528);
  }

  return result;
}

uint64_t sub_23B6BD9AC(uint64_t a1)
{
  v2 = type metadata accessor for DeviceActivityReport.ClientConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23B6BDA08(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_23B6BDA1C(a1, a2);
  }
}

void sub_23B6BDA1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t sub_23B6BDA70()
{
  result = qword_27E179540;
  if (!qword_27E179540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E179538, &qword_23B6D7C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E179540);
  }

  return result;
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

unint64_t sub_23B6BDB20()
{
  result = qword_27E179548;
  if (!qword_27E179548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E179548);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_23_DeviceActivity_SwiftUI0aB6ReportV15ServiceHostViewVy_So07_EXHostH23ControllerConfigurationCSo08_EXQueryJ0CGSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B6BDBF8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23B6BDC54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23B6BDCC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B6BDD0C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_23B6BDD64(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_23B6D6DF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_23B6C1E04(&qword_27E179568, MEMORY[0x277CD4B20], MEMORY[0x277CD4B28]);
  v33 = a2;
  v11 = sub_23B6D7020();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_23B6C1E04(&qword_27E179570, MEMORY[0x277CD4B20], MEMORY[0x277CD4B30]);
      v21 = sub_23B6D7030();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_23B6BFD78(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_23B6BE044(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_23B6D6DC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_23B6C1E04(&qword_27E179580, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AD8]);
  v33 = a2;
  v11 = sub_23B6D7020();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_23B6C1E04(&qword_27E179588, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AE0]);
      v21 = sub_23B6D7030();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_23B6C0040(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_23B6BE324(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_23B6D6D90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_23B6C1E04(&qword_27E179598, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AB8]);
  v33 = a2;
  v11 = sub_23B6D7020();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_23B6C1E04(&qword_27E1795A0, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AC0]);
      v21 = sub_23B6D7030();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_23B6C0308(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_23B6BE604(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_23B6D6AF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_23B6C1E04(&qword_27E179550, MEMORY[0x277CC5808], MEMORY[0x277CC5810]);
  v33 = a2;
  v11 = sub_23B6D7020();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_23B6C1E04(&qword_27E179558, MEMORY[0x277CC5808], MEMORY[0x277CC5818]);
      v21 = sub_23B6D7030();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_23B6C05D0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_23B6BE8E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795B0, &qword_23B6D7EE0);
  result = sub_23B6D7280();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_23B6D73E0();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23B6BEB08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795B8, &qword_23B6D7EE8);
  result = sub_23B6D7280();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_23B6D73F0();
      sub_23B6D7080();
      result = sub_23B6D7410();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23B6BED68(uint64_t a1)
{
  v2 = v1;
  v36 = sub_23B6D6DF0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179578, &qword_23B6D7EC8);
  result = sub_23B6D7280();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_23B6C1E04(&qword_27E179568, MEMORY[0x277CD4B20], MEMORY[0x277CD4B28]);
      result = sub_23B6D7020();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_23B6BF0C4(uint64_t a1)
{
  v2 = v1;
  v36 = sub_23B6D6DC0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179590, &qword_23B6D7ED0);
  result = sub_23B6D7280();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_23B6C1E04(&qword_27E179580, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AD8]);
      result = sub_23B6D7020();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_23B6BF420(uint64_t a1)
{
  v2 = v1;
  v36 = sub_23B6D6D90();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795A8, &qword_23B6D7ED8);
  result = sub_23B6D7280();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_23B6C1E04(&qword_27E179598, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AB8]);
      result = sub_23B6D7020();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_23B6BF77C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_23B6D6AF0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179560, &qword_23B6D7EC0);
  result = sub_23B6D7280();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_23B6C1E04(&qword_27E179550, MEMORY[0x277CC5808], MEMORY[0x277CC5810]);
      result = sub_23B6D7020();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_23B6BFAD8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23B6BE8E4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_23B6C0898();
      a2 = v7;
      goto LABEL_12;
    }

    sub_23B6C0D6C(v5 + 1);
  }

  v8 = *v3;
  result = sub_23B6D73E0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23B6D73D0();
  __break(1u);
  return result;
}

void sub_23B6BFBF8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_23B6BEB08(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_23B6C09D8();
      goto LABEL_16;
    }

    sub_23B6C0F5C(v8 + 1);
  }

  v10 = *v4;
  sub_23B6D73F0();
  sub_23B6D7080();
  v11 = sub_23B6D7410();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_23B6D73C0() & 1) != 0)
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
  sub_23B6D73D0();
  __break(1u);
}

uint64_t sub_23B6BFD78(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_23B6D6DF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23B6BED68(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_23B6C0B34(MEMORY[0x277CD4B20], &qword_27E179578, &qword_23B6D7EC8);
      goto LABEL_12;
    }

    sub_23B6C1194(v10 + 1);
  }

  v12 = *v3;
  sub_23B6C1E04(&qword_27E179568, MEMORY[0x277CD4B20], MEMORY[0x277CD4B28]);
  v13 = sub_23B6D7020();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_23B6C1E04(&qword_27E179570, MEMORY[0x277CD4B20], MEMORY[0x277CD4B30]);
      v21 = sub_23B6D7030();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23B6D73D0();
  __break(1u);
  return result;
}

uint64_t sub_23B6C0040(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_23B6D6DC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23B6BF0C4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_23B6C0B34(MEMORY[0x277CD4AD0], &qword_27E179590, &qword_23B6D7ED0);
      goto LABEL_12;
    }

    sub_23B6C14B0(v10 + 1);
  }

  v12 = *v3;
  sub_23B6C1E04(&qword_27E179580, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AD8]);
  v13 = sub_23B6D7020();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_23B6C1E04(&qword_27E179588, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AE0]);
      v21 = sub_23B6D7030();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23B6D73D0();
  __break(1u);
  return result;
}

uint64_t sub_23B6C0308(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_23B6D6D90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23B6BF420(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_23B6C0B34(MEMORY[0x277CD4AB0], &qword_27E1795A8, &qword_23B6D7ED8);
      goto LABEL_12;
    }

    sub_23B6C17CC(v10 + 1);
  }

  v12 = *v3;
  sub_23B6C1E04(&qword_27E179598, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AB8]);
  v13 = sub_23B6D7020();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_23B6C1E04(&qword_27E1795A0, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AC0]);
      v21 = sub_23B6D7030();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23B6D73D0();
  __break(1u);
  return result;
}

uint64_t sub_23B6C05D0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_23B6D6AF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23B6BF77C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_23B6C0B34(MEMORY[0x277CC5808], &qword_27E179560, &qword_23B6D7EC0);
      goto LABEL_12;
    }

    sub_23B6C1AE8(v10 + 1);
  }

  v12 = *v3;
  sub_23B6C1E04(&qword_27E179550, MEMORY[0x277CC5808], MEMORY[0x277CC5810]);
  v13 = sub_23B6D7020();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_23B6C1E04(&qword_27E179558, MEMORY[0x277CC5808], MEMORY[0x277CC5818]);
      v21 = sub_23B6D7030();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23B6D73D0();
  __break(1u);
  return result;
}

void *sub_23B6C0898()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795B0, &qword_23B6D7EE0);
  v2 = *v0;
  v3 = sub_23B6D7270();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_23B6C09D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795B8, &qword_23B6D7EE8);
  v2 = *v0;
  v3 = sub_23B6D7270();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_23B6C0B34(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_23B6D7270();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

uint64_t sub_23B6C0D6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795B0, &qword_23B6D7EE0);
  result = sub_23B6D7280();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_23B6D73E0();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_23B6C0F5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795B8, &qword_23B6D7EE8);
  result = sub_23B6D7280();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_23B6D73F0();

      sub_23B6D7080();
      result = sub_23B6D7410();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_23B6C1194(uint64_t a1)
{
  v2 = v1;
  v33 = sub_23B6D6DF0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179578, &qword_23B6D7EC8);
  v7 = sub_23B6D7280();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_23B6C1E04(&qword_27E179568, MEMORY[0x277CD4B20], MEMORY[0x277CD4B28]);
      result = sub_23B6D7020();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_23B6C14B0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_23B6D6DC0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179590, &qword_23B6D7ED0);
  v7 = sub_23B6D7280();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_23B6C1E04(&qword_27E179580, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AD8]);
      result = sub_23B6D7020();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_23B6C17CC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_23B6D6D90();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795A8, &qword_23B6D7ED8);
  v7 = sub_23B6D7280();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_23B6C1E04(&qword_27E179598, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AB8]);
      result = sub_23B6D7020();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_23B6C1AE8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_23B6D6AF0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179560, &qword_23B6D7EC0);
  v7 = sub_23B6D7280();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_23B6C1E04(&qword_27E179550, MEMORY[0x277CC5808], MEMORY[0x277CC5810]);
      result = sub_23B6D7020();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_23B6C1E04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B6C1E4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)()@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 8);
  (*(v9 + 16))(v6);
  return sub_23B6C7A4C(v6, a2, v8, a3, v10);
}

void *static DeviceActivityReportBuilder.buildBlock<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (**a7)()@<X8>)
{
  result = sub_23B6C1FD4(a1, a2, a3, a4, *(a5 + 8), *(a6 + 8), &v10);
  v9 = v10;
  *a7 = sub_23B6C872C;
  a7[1] = 0;
  a7[2] = v9;
  return result;
}

uint64_t sub_23B6C1FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v22 = a7;
  v23 = a6;
  v20 = a5;
  v21 = a2;
  v10 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v11);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  sub_23B6D6A60();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23B6D7F00;
  (*(v15 + 16))(v17, a1, a3);
  sub_23B6D6A50();
  (*(v10 + 16))(v13, v21, a4);
  result = sub_23B6D6A50();
  *v22 = v18;
  return result;
}

void *static DeviceActivityReportBuilder.buildBlock<A, B, C>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10)
{
  result = sub_23B6C225C(a1, a2, a3, a4, a5, a6, *(a7 + 8), *(a8 + 8), &v13, *(a10 + 8));
  v12 = v13;
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v12;
  return result;
}

uint64_t sub_23B6C225C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v31 = a6;
  v32 = a8;
  v27 = a7;
  v28 = a2;
  v25 = a5;
  v26 = a1;
  v33 = a3;
  v34 = a9;
  v29 = *(a6 - 8);
  v30 = a10;
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v16);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  sub_23B6D6A60();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23B6D7F10;
  (*(v20 + 16))(v22, v26, a4);
  sub_23B6D6A50();
  (*(v15 + 16))(v18, v28, v25);
  sub_23B6D6A50();
  (*(v29 + 16))(v13, v33, v31);
  result = sub_23B6D6A50();
  *v34 = v23;
  return result;
}

void *static DeviceActivityReportBuilder.buildBlock<A, B, C, D>(_:_:_:_:)@<X0>(void (**a1)()@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  result = sub_23B6C25A8(a2, a3, a4, a5, a6, a7, a8, a9, &v16, *(a10 + 8), *(a11 + 8), *(a12 + 8), *(a13 + 8));
  v15 = v16;
  *a1 = sub_23B6C872C;
  a1[1] = 0;
  a1[2] = v15;
  return result;
}

uint64_t sub_23B6C25A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v41 = a8;
  v42 = a4;
  v33 = a1;
  v34 = a7;
  v32[0] = a6;
  v36 = a2;
  v44 = a9;
  v43 = a13;
  v39 = a3;
  v40 = a12;
  v38 = *(a8 - 8);
  v35 = a11;
  v32[1] = a10;
  v14 = MEMORY[0x28223BE20](a1);
  v37 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v18);
  v25 = v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v23);
  v29 = v32 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  sub_23B6D6A60();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_23B6D7F20;
  (*(v27 + 16))(v29, v33, a5);
  sub_23B6D6A50();
  (*(v22 + 16))(v25, v36, v32[0]);
  sub_23B6D6A50();
  (*(v17 + 16))(v20, v39, v34);
  sub_23B6D6A50();
  (*(v38 + 16))(v37, v42, v41);
  result = sub_23B6D6A50();
  *v44 = v30;
  return result;
}

void *static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E>(_:_:_:_:_:)@<X0>(void (**a1)()@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  result = sub_23B6C29BC(a2, a3, a4, a5, a6, a7, a8, a9, &v19, a10, a11, *(a12 + 8), *(a13 + 8), *(a14 + 8), *(a15 + 8), *(a16 + 8));
  v18 = v19;
  *a1 = sub_23B6C872C;
  a1[1] = 0;
  a1[2] = v18;
  return result;
}

uint64_t sub_23B6C29BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v40 = a8;
  v38 = a7;
  v43 = a1;
  v57 = a9;
  v55 = a5;
  v56 = a16;
  v52 = a4;
  v53 = a15;
  v49 = a3;
  v50 = a14;
  v46 = a2;
  v47 = a10;
  v54 = a11;
  v51 = *(a11 - 8);
  v44 = a13;
  v41 = a12;
  v17 = MEMORY[0x28223BE20](a1);
  v48 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v17);
  v42 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v23);
  v30 = &v37 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v28);
  v34 = &v37 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  sub_23B6D6A60();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_23B6D7F30;
  (*(v32 + 16))(v34, v43, a6);
  sub_23B6D6A50();
  (*(v27 + 16))(v30, v46, v38);
  sub_23B6D6A50();
  (*(v39 + 16))(v25, v49, v40);
  sub_23B6D6A50();
  (*(v45 + 16))(v42, v52, v47);
  sub_23B6D6A50();
  (*(v51 + 16))(v48, v55, v54);
  result = sub_23B6D6A50();
  *v57 = v35;
  return result;
}

void *static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F>(_:_:_:_:_:_:)@<X0>(void (**a1)()@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  result = sub_23B6C2EA0(a2, a3, a4, a5, a6, a7, a8, a9, &v22, a10, a11, a12, a13, *(a14 + 8), *(a15 + 8), *(a16 + 8), *(a17 + 8), *(a18 + 8), *(a19 + 8));
  v21 = v22;
  *a1 = sub_23B6C872C;
  a1[1] = 0;
  a1[2] = v21;
  return result;
}

uint64_t sub_23B6C2EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v45 = a8;
  v68 = a9;
  v66 = a6;
  v67 = a19;
  v64 = a5;
  v65 = a18;
  v60 = a4;
  v61 = a17;
  v57 = a3;
  v58 = a16;
  v53 = a2;
  v54 = a15;
  v50 = a1;
  v51 = a14;
  v56 = a12;
  v63 = a13;
  v62 = *(a13 - 8);
  v46 = a10;
  v49 = a11;
  v20 = MEMORY[0x28223BE20](a1);
  v59 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v20);
  v52 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v23);
  v47 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v26);
  v32 = &v44 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v30);
  v37 = &v44 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v35);
  v41 = &v44 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  sub_23B6D6A60();
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_23B6D7F40;
  (*(v39 + 16))(v41, v50, a7);
  sub_23B6D6A50();
  (*(v34 + 16))(v37, v53, v45);
  sub_23B6D6A50();
  (*(v29 + 16))(v32, v57, v46);
  sub_23B6D6A50();
  (*(v48 + 16))(v47, v60, v49);
  sub_23B6D6A50();
  (*(v55 + 16))(v52, v64, v56);
  sub_23B6D6A50();
  (*(v62 + 16))(v59, v66, v63);
  result = sub_23B6D6A50();
  *v68 = v42;
  return result;
}

void *static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)@<X0>(void (**a1)()@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  result = sub_23B6C345C(a2, a3, a4, a5, a6, a7, a8, a9, &v25, a10, a11, a12, a13, a14, a15, *(a16 + 8), *(a17 + 8), *(a18 + 8), *(a19 + 8), *(a20 + 8), *(a21 + 8), *(a22 + 8));
  v24 = v25;
  *a1 = sub_23B6C872C;
  a1[1] = 0;
  a1[2] = v24;
  return result;
}

uint64_t sub_23B6C345C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v49 = a8;
  v77 = a7;
  v78 = a9;
  v58 = a1;
  v75 = a6;
  v76 = a22;
  v74 = a21;
  v70 = a20;
  v71 = a5;
  v67 = a19;
  v68 = a4;
  v63 = a18;
  v64 = a3;
  v60 = a17;
  v61 = a2;
  v57 = a16;
  v50 = a10;
  v51 = a11;
  v66 = a14;
  v73 = a15;
  v72 = *(a15 - 8);
  v54 = a12;
  v59 = a13;
  v22 = MEMORY[0x28223BE20](a10);
  v69 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v22);
  v62 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v25);
  v55 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v30 - 8);
  v31 = MEMORY[0x28223BE20](v28);
  v52 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v31);
  v37 = &v48 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v35 - 8);
  v39 = MEMORY[0x28223BE20](v35);
  v41 = &v48 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v39);
  v45 = &v48 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  sub_23B6D6A60();
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_23B6D7F50;
  (*(v43 + 16))(v45, v58, v49);
  sub_23B6D6A50();
  (*(v38 + 16))(v41, v61, v50);
  sub_23B6D6A50();
  (*(v34 + 16))(v37, v64, v51);
  sub_23B6D6A50();
  (*(v53 + 16))(v52, v68, v54);
  sub_23B6D6A50();
  (*(v56 + 16))(v55, v71, v59);
  sub_23B6D6A50();
  (*(v65 + 16))(v62, v75, v66);
  sub_23B6D6A50();
  (*(v72 + 16))(v69, v77, v73);
  result = sub_23B6D6A50();
  *v78 = v46;
  return result;
}

void *static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H>(_:_:_:_:_:_:_:_:)@<X0>(void (**a1)()@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  result = sub_23B6C3B28(a2, a3, a4, a5, a6, a7, a8, a9, &v28, a10, a11, a12, a13, a14, a15, a16, a17, *(a18 + 8), *(a19 + 8), *(a20 + 8), *(a21 + 8), *(a22 + 8), *(a23 + 8), *(a24 + 8), *(a25 + 8));
  v27 = v28;
  *a1 = sub_23B6C872C;
  a1[1] = 0;
  a1[2] = v27;
  return result;
}

uint64_t sub_23B6C3B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v85 = a8;
  v83 = a7;
  v79 = a6;
  v76 = a5;
  v73 = a4;
  v69 = a3;
  v66 = a2;
  v62 = a1;
  v86 = a9;
  v84 = a25;
  v82 = a24;
  v78 = a23;
  v75 = a22;
  v71 = a21;
  v68 = a20;
  v65 = a19;
  v61 = a18;
  v53[0] = a11;
  v54 = a12;
  v57 = a13;
  v74 = a16;
  v81 = a17;
  v80 = *(a17 - 8);
  v60 = a14;
  v67 = a15;
  v25 = MEMORY[0x28223BE20](a12);
  v77 = v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v25);
  v70 = v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(v30 - 8);
  v31 = MEMORY[0x28223BE20](v28);
  v63 = v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v31);
  v58 = v53 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(v36 - 8);
  v37 = MEMORY[0x28223BE20](v34);
  v55 = v53 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v37 - 8);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = v53 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(v43 - 8);
  v45 = MEMORY[0x28223BE20](v40);
  v47 = v53 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(a10 - 8);
  MEMORY[0x28223BE20](v45);
  v50 = v53 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  v53[1] = 8 * *(*(sub_23B6D6A60() - 8) + 72);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_23B6D7F60;
  (*(v48 + 16))(v50, v62, a10);
  sub_23B6D6A50();
  (*(v44 + 16))(v47, v66, v53[0]);
  sub_23B6D6A50();
  (*(v39 + 16))(v42, v69, v54);
  sub_23B6D6A50();
  (*(v56 + 16))(v55, v73, v57);
  sub_23B6D6A50();
  (*(v59 + 16))(v58, v76, v60);
  sub_23B6D6A50();
  (*(v64 + 16))(v63, v79, v67);
  sub_23B6D6A50();
  (*(v72 + 16))(v70, v83, v74);
  sub_23B6D6A50();
  (*(v80 + 16))(v77, v85, v81);
  result = sub_23B6D6A50();
  *v86 = v51;
  return result;
}

void *static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I>(_:_:_:_:_:_:_:_:_:)@<X0>(void (**a1)()@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  result = sub_23B6C4310(a2, a3, a4, a5, a6, a7, a8, a9, &v31, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, *(a20 + 8), *(a21 + 8), *(a22 + 8), *(a23 + 8), *(a24 + 8), *(a25 + 8), *(a26 + 8), *(a27 + 8), *(a28 + 8));
  v30 = v31;
  *a1 = sub_23B6C872C;
  a1[1] = 0;
  a1[2] = v30;
  return result;
}

uint64_t sub_23B6C4310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v98 = a8;
  v94 = a7;
  v90 = a6;
  v87 = a5;
  v83 = a4;
  v80 = a3;
  v77 = a2;
  v74 = a1;
  v100 = a9;
  v99 = a28;
  v97 = a27;
  v93 = a26;
  v89 = a25;
  v86 = a24;
  v82 = a23;
  v79 = a22;
  v75 = a21;
  v72 = a20;
  v96 = a10;
  v60 = a11;
  v61 = a12;
  v63 = a13;
  v66 = a14;
  v69 = a15;
  v88 = a18;
  v95 = a19;
  v92 = *(a19 - 8);
  v73 = a16;
  v81 = a17;
  v28 = MEMORY[0x28223BE20](a14);
  v91 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *(v30 - 8);
  v31 = MEMORY[0x28223BE20](v28);
  v84 = &v60 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v31);
  v76 = &v60 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(v36 - 8);
  v37 = MEMORY[0x28223BE20](v34);
  v70 = &v60 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(v39 - 8);
  v40 = MEMORY[0x28223BE20](v37);
  v67 = &v60 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(v40 - 8);
  v42 = MEMORY[0x28223BE20](v40);
  v64 = &v60 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v44 - 8);
  v46 = MEMORY[0x28223BE20](v42);
  v48 = &v60 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v49 - 8);
  v51 = MEMORY[0x28223BE20](v46);
  v53 = &v60 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v51);
  v57 = &v60 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  v62 = 8 * *(*(sub_23B6D6A60() - 8) + 72);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_23B6D7F70;
  (*(v55 + 16))(v57, v74, v60);
  sub_23B6D6A50();
  (*(v50 + 16))(v53, v77, v61);
  sub_23B6D6A50();
  (*(v45 + 16))(v48, v80, v63);
  sub_23B6D6A50();
  (*(v65 + 16))(v64, v83, v66);
  sub_23B6D6A50();
  (*(v68 + 16))(v67, v87, v69);
  sub_23B6D6A50();
  (*(v71 + 16))(v70, v90, v73);
  sub_23B6D6A50();
  (*(v78 + 16))(v76, v94, v81);
  sub_23B6D6A50();
  (*(v85 + 16))(v84, v98, v88);
  sub_23B6D6A50();
  (*(v92 + 16))(v91, v96, v95);
  result = sub_23B6D6A50();
  *v100 = v58;
  return result;
}

void *static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J>(_:_:_:_:_:_:_:_:_:_:)@<X0>(void (**a1)()@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  result = sub_23B6C4BFC(a2, a3, a4, a5, a6, a7, a8, a9, &v34, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, *(a22 + 8), *(a23 + 8), *(a24 + 8), *(a25 + 8), *(a26 + 8), *(a27 + 8), *(a28 + 8), *(a29 + 8), *(a30 + 8), *(a31 + 8));
  v33 = v34;
  *a1 = sub_23B6C872C;
  a1[1] = 0;
  a1[2] = v33;
  return result;
}

uint64_t sub_23B6C4BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v103 = a8;
  v99 = a7;
  v96 = a6;
  v92 = a5;
  v89 = a4;
  v85 = a3;
  v82 = a2;
  v78 = a1;
  v108 = a9;
  v106 = a11;
  v107 = a31;
  v104 = a10;
  v105 = a30;
  v101 = a29;
  v98 = a28;
  v94 = a27;
  v90 = a26;
  v87 = a25;
  v83 = a24;
  v80 = a23;
  v77 = a22;
  v64 = a13;
  v65 = a14;
  v69 = a15;
  v95 = a20;
  v102 = a21;
  v100 = *(a21 - 8);
  v72 = a16;
  v75 = a17;
  v81 = a18;
  v88 = a19;
  v31 = MEMORY[0x28223BE20](a15);
  v97 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v31);
  v91 = &v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *(v36 - 8);
  v37 = MEMORY[0x28223BE20](v34);
  v84 = &v64 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *(v39 - 8);
  v40 = MEMORY[0x28223BE20](v37);
  v76 = &v64 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(v42 - 8);
  v43 = MEMORY[0x28223BE20](v40);
  v73 = &v64 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(v45 - 8);
  v46 = MEMORY[0x28223BE20](v43);
  v70 = &v64 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(v46 - 8);
  v48 = MEMORY[0x28223BE20](v46);
  v66 = &v64 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(v50 - 8);
  v52 = MEMORY[0x28223BE20](v48);
  v54 = &v64 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(v55 - 8);
  v57 = MEMORY[0x28223BE20](v52);
  v59 = &v64 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *(a12 - 8);
  MEMORY[0x28223BE20](v57);
  v62 = &v64 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  sub_23B6D6A60();
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_23B6D7F80;
  (*(v60 + 16))(v62, v78, a12);
  sub_23B6D6A50();
  (*(v56 + 16))(v59, v82, v64);
  sub_23B6D6A50();
  (*(v51 + 16))(v54, v85, v65);
  sub_23B6D6A50();
  (*(v68 + 16))(v66, v89, v69);
  sub_23B6D6A50();
  (*(v71 + 16))(v70, v92, v72);
  sub_23B6D6A50();
  (*(v74 + 16))(v73, v96, v75);
  sub_23B6D6A50();
  (*(v79 + 16))(v76, v99, v81);
  sub_23B6D6A50();
  (*(v86 + 16))(v84, v103, v88);
  sub_23B6D6A50();
  (*(v93 + 16))(v91, v104, v95);
  sub_23B6D6A50();
  (*(v100 + 16))(v97, v106, v102);
  result = sub_23B6D6A50();
  *v108 = v67;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K>(_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_23B6C1FD4(a1, a2, a13, a14, *(a24 + 8), *(a25 + 8), &v54);
  v53 = v54;
  sub_23B6C1FD4(a3, a4, a15, a16, *(a26 + 8), *(a27 + 8), &v52);
  v51 = v52;
  sub_23B6C1FD4(a5, a6, a17, a18, *(a28 + 8), *(a29 + 8), &v50);
  v49 = v50;
  sub_23B6C1FD4(a7, a8, a19, a20, *(a30 + 8), *(a31 + 8), &v48);
  v47 = v48;
  sub_23B6C1FD4(a10, a11, a21, a22, *(a32 + 8), *(a33 + 8), &v46);
  v45 = v46;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C8, &qword_23B6D7F90);
  v37 = sub_23B6C7790();
  sub_23B6C2EA0(&v53, &v51, &v49, &v47, &v45, a12, v36, v36, &v55, v36, v36, v36, a23, v37, v37, v37, v37, v37, *(a34 + 8));

  v39 = v55;
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v39;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L>(_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_23B6C1FD4(a1, a2, a14, a15, *(a26 + 8), *(a27 + 8), &v51);
  sub_23B6C1FD4(a3, a4, a16, a17, *(a28 + 8), *(a29 + 8), &v50);
  sub_23B6C1FD4(a5, a6, a18, a19, *(a30 + 8), *(a31 + 8), &v49);
  sub_23B6C1FD4(a7, a8, a20, a21, *(a32 + 8), *(a33 + 8), &v48);
  sub_23B6C1FD4(a10, a11, a22, a23, *(a34 + 8), *(a35 + 8), &v47);
  sub_23B6C1FD4(a12, a13, a24, a25, *(a36 + 8), *(a37 + 8), &v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  sub_23B6D6A60();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_23B6D7F40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C8, &qword_23B6D7F90);
  sub_23B6C7790();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  result = sub_23B6D6A50();
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v39;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M>(_:_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  sub_23B6C1FD4(a1, a2, a15, a16, *(a28 + 8), *(a29 + 8), &v62);
  v61 = v62;
  sub_23B6C1FD4(a3, a4, a17, a18, *(a30 + 8), *(a31 + 8), &v60);
  v59 = v60;
  sub_23B6C1FD4(a5, a6, a19, a20, *(a32 + 8), *(a33 + 8), &v58);
  v57 = v58;
  sub_23B6C1FD4(a7, a8, a21, a22, *(a34 + 8), *(a35 + 8), &v56);
  v55 = v56;
  sub_23B6C1FD4(a10, a11, a23, a24, *(a36 + 8), *(a37 + 8), &v54);
  v53 = v54;
  sub_23B6C1FD4(a12, a13, a25, a26, *(a38 + 8), *(a39 + 8), &v52);
  v51 = v52;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C8, &qword_23B6D7F90);
  v42 = sub_23B6C7790();
  sub_23B6C345C(&v61, &v59, &v57, &v55, &v53, &v51, a14, v41, &v63, v41, v41, v41, v41, v41, a27, v42, v42, v42, v42, v42, v42, *(a40 + 8));

  v44 = v63;
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v44;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  sub_23B6C1FD4(a1, a2, a16, a17, *(a30 + 8), *(a31 + 8), &v58);
  sub_23B6C1FD4(a3, a4, a18, a19, *(a32 + 8), *(a33 + 8), &v57);
  sub_23B6C1FD4(a5, a6, a20, a21, *(a34 + 8), *(a35 + 8), &v56);
  sub_23B6C1FD4(a7, a8, a22, a23, *(a36 + 8), *(a37 + 8), &v55);
  sub_23B6C1FD4(a10, a11, a24, a25, *(a38 + 8), *(a39 + 8), &v54);
  sub_23B6C1FD4(a12, a13, a26, a27, *(a40 + 8), *(a41 + 8), &v53);
  sub_23B6C1FD4(a14, a15, a28, a29, *(a42 + 8), *(a43 + 8), &v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  sub_23B6D6A60();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_23B6D7F50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C8, &qword_23B6D7F90);
  sub_23B6C7790();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  result = sub_23B6D6A50();
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v43;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  sub_23B6C1FD4(a1, a2, a17, a18, *(a32 + 8), *(a33 + 8), &v70);
  v69 = v70;
  sub_23B6C1FD4(a3, a4, a19, a20, *(a34 + 8), *(a35 + 8), &v68);
  v67 = v68;
  sub_23B6C1FD4(a5, a6, a21, a22, *(a36 + 8), *(a37 + 8), &v66);
  v65 = v66;
  sub_23B6C1FD4(a7, a8, a23, a24, *(a38 + 8), *(a39 + 8), &v64);
  v63 = v64;
  sub_23B6C1FD4(a10, a11, a25, a26, *(a40 + 8), *(a41 + 8), &v62);
  v61 = v62;
  sub_23B6C1FD4(a12, a13, a27, a28, *(a42 + 8), *(a43 + 8), &v60);
  v59 = v60;
  sub_23B6C1FD4(a14, a15, a29, a30, *(a44 + 8), *(a45 + 8), &v58);
  v57 = v58;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C8, &qword_23B6D7F90);
  v47 = sub_23B6C7790();
  sub_23B6C3B28(&v69, &v67, &v65, &v63, &v61, &v59, &v57, a16, &v71, v46, v46, v46, v46, v46, v46, v46, a31, v47, v47, v47, v47, v47, v47, v47, *(a46 + 8));

  v49 = v71;
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v49;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  sub_23B6C1FD4(a1, a2, a18, a19, *(a34 + 8), *(a35 + 8), &v65);
  sub_23B6C1FD4(a3, a4, a20, a21, *(a36 + 8), *(a37 + 8), &v64);
  sub_23B6C1FD4(a5, a6, a22, a23, *(a38 + 8), *(a39 + 8), &v63);
  sub_23B6C1FD4(a7, a8, a24, a25, *(a40 + 8), *(a41 + 8), &v62);
  sub_23B6C1FD4(a10, a11, a26, a27, *(a42 + 8), *(a43 + 8), &v61);
  sub_23B6C1FD4(a12, a13, a28, a29, *(a44 + 8), *(a45 + 8), &v60);
  sub_23B6C1FD4(a14, a15, a30, a31, *(a46 + 8), *(a47 + 8), &v59);
  sub_23B6C1FD4(a16, a17, a32, a33, *(a48 + 8), *(a49 + 8), &v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  sub_23B6D6A60();
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_23B6D7F60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C8, &qword_23B6D7F90);
  sub_23B6C7790();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  result = sub_23B6D6A50();
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v49;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  sub_23B6C1FD4(a1, a2, a19, a20, *(a36 + 8), *(a37 + 8), &v78);
  v77 = v78;
  sub_23B6C1FD4(a3, a4, a21, a22, *(a38 + 8), *(a39 + 8), &v76);
  v75 = v76;
  sub_23B6C1FD4(a5, a6, a23, a24, *(a40 + 8), *(a41 + 8), &v74);
  v73 = v74;
  sub_23B6C1FD4(a7, a8, a25, a26, *(a42 + 8), *(a43 + 8), &v72);
  v71 = v72;
  sub_23B6C1FD4(a10, a11, a27, a28, *(a44 + 8), *(a45 + 8), &v70);
  v69 = v70;
  sub_23B6C1FD4(a12, a13, a29, a30, *(a46 + 8), *(a47 + 8), &v68);
  v67 = v68;
  sub_23B6C1FD4(a14, a15, a31, a32, *(a48 + 8), *(a49 + 8), &v66);
  v65 = v66;
  sub_23B6C1FD4(a16, a17, a33, a34, *(a50 + 8), *(a51 + 8), &v64);
  v63 = v64;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C8, &qword_23B6D7F90);
  v53 = sub_23B6C7790();
  sub_23B6C4310(&v77, &v75, &v73, &v71, &v69, &v67, &v65, &v63, &v79, a18, v52, v52, v52, v52, v52, v52, v52, v52, a35, v53, v53, v53, v53, v53, v53, v53, v53, *(a52 + 8));

  v55 = v79;
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v55;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  sub_23B6C1FD4(a1, a2, a20, a21, *(a38 + 8), *(a39 + 8), &v72);
  sub_23B6C1FD4(a3, a4, a22, a23, *(a40 + 8), *(a41 + 8), &v71);
  sub_23B6C1FD4(a5, a6, a24, a25, *(a42 + 8), *(a43 + 8), &v70);
  sub_23B6C1FD4(a7, a8, a26, a27, *(a44 + 8), *(a45 + 8), &v69);
  sub_23B6C1FD4(a10, a11, a28, a29, *(a46 + 8), *(a47 + 8), &v68);
  sub_23B6C1FD4(a12, a13, a30, a31, *(a48 + 8), *(a49 + 8), &v67);
  sub_23B6C1FD4(a14, a15, a32, a33, *(a50 + 8), *(a51 + 8), &v66);
  sub_23B6C1FD4(a16, a17, a34, a35, *(a52 + 8), *(a53 + 8), &v65);
  sub_23B6C1FD4(a18, a19, a36, a37, *(a54 + 8), *(a55 + 8), &v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  sub_23B6D6A60();
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_23B6D7F70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C8, &qword_23B6D7F90);
  sub_23B6C7790();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  result = sub_23B6D6A50();
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v55;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  sub_23B6C1FD4(a1, a2, a21, a22, *(a40 + 8), *(a41 + 8), &v86);
  v85 = v86;
  sub_23B6C1FD4(a3, a4, a23, a24, *(a42 + 8), *(a43 + 8), &v84);
  v83 = v84;
  sub_23B6C1FD4(a5, a6, a25, a26, *(a44 + 8), *(a45 + 8), &v82);
  v81 = v82;
  sub_23B6C1FD4(a7, a8, a27, a28, *(a46 + 8), *(a47 + 8), &v80);
  v79 = v80;
  sub_23B6C1FD4(a10, a11, a29, a30, *(a48 + 8), *(a49 + 8), &v78);
  v77 = v78;
  sub_23B6C1FD4(a12, a13, a31, a32, *(a50 + 8), *(a51 + 8), &v76);
  v75 = v76;
  sub_23B6C1FD4(a14, a15, a33, a34, *(a52 + 8), *(a53 + 8), &v74);
  v73 = v74;
  sub_23B6C1FD4(a16, a17, a35, a36, *(a54 + 8), *(a55 + 8), &v72);
  v71 = v72;
  sub_23B6C1FD4(a18, a19, a37, a38, *(a56 + 8), *(a57 + 8), &v70);
  v69 = v70;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C8, &qword_23B6D7F90);
  v59 = sub_23B6C7790();
  sub_23B6C4BFC(&v85, &v83, &v81, &v79, &v77, &v75, &v73, &v71, &v87, &v69, a20, v58, v58, v58, v58, v58, v58, v58, v58, v58, a39, v59, v59, v59, v59, v59, v59, v59, v59, v59, *(a58 + 8));

  v61 = v87;
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v61;
  return result;
}

uint64_t static DeviceActivityReportBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T>(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void (**a9)()@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  sub_23B6C1FD4(a1, a2, a22, a23, *(a42 + 8), *(a43 + 8), &v79);
  sub_23B6C1FD4(a3, a4, a24, a25, *(a44 + 8), *(a45 + 8), &v78);
  sub_23B6C1FD4(a5, a6, a26, a27, *(a46 + 8), *(a47 + 8), &v77);
  sub_23B6C1FD4(a7, a8, a28, a29, *(a48 + 8), *(a49 + 8), &v76);
  sub_23B6C1FD4(a10, a11, a30, a31, *(a50 + 8), *(a51 + 8), &v75);
  sub_23B6C1FD4(a12, a13, a32, a33, *(a52 + 8), *(a53 + 8), &v74);
  sub_23B6C1FD4(a14, a15, a34, a35, *(a54 + 8), *(a55 + 8), &v73);
  sub_23B6C1FD4(a16, a17, a36, a37, *(a56 + 8), *(a57 + 8), &v72);
  sub_23B6C1FD4(a18, a19, a38, a39, *(a58 + 8), *(a59 + 8), &v71);
  sub_23B6C1FD4(a20, a21, a40, a41, *(a60 + 8), *(a61 + 8), &v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795E0, qword_23B6D7F98);
  sub_23B6D6A60();
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_23B6D7F80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1795C8, &qword_23B6D7F90);
  sub_23B6C7790();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  sub_23B6D6A50();
  result = sub_23B6D6A50();
  *a9 = sub_23B6C872C;
  a9[1] = 0;
  a9[2] = v61;
  return result;
}

unint64_t sub_23B6C7790()
{
  result = qword_27E1795D0;
  if (!qword_27E1795D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1795C8, &qword_23B6D7F90);
    sub_23B6C7814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1795D0);
  }

  return result;
}

unint64_t sub_23B6C7814()
{
  result = qword_27E1795D8;
  if (!qword_27E1795D8)
  {
    sub_23B6D6A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1795D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceActivityReportBuilder(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DeviceActivityReportBuilder(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_23B6C7950(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s5SceneVMa(255, *a1, *(a1[1] + 8), a4);

  return swift_getWitnessTable();
}

unint64_t sub_23B6C799C()
{
  result = qword_27E1795E8;
  if (!qword_27E1795E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1795F0, &qword_23B6D7FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1795E8);
  }

  return result;
}

uint64_t sub_23B6C7A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)()@<X8>, uint64_t a5@<X3>)
{
  *a4 = sub_23B6C872C;
  a4[1] = 0;
  v8 = _s5SceneVMa(0, a2, a3, a5);
  v9 = *(*(a2 - 8) + 32);
  v10 = a4 + *(v8 + 36);

  return v9(v10, a1, a2);
}

uint64_t DeviceActivityReportExtension.configuration.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a1);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_23B6D6A30();
}

uint64_t sub_23B6C7C58()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t DeviceActivityReportScene.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = [objc_allocWithZone(_s18SceneConfigurationCMa(0)) init];
  (*(a2 + 40))(&v15, a1, a2);
  (*(v6 + 16))(v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  (*(v6 + 32))(v10 + v9, v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *(v10 + ((v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  *(swift_allocObject() + 16) = v8;
  _s9SceneViewVMa(0, a1, a2, v11);
  v12 = v8;
  swift_getWitnessTable();
  return sub_23B6D6A20();
}

uint64_t _s18SceneConfigurationCMa(uint64_t a1)
{
  result = qword_27E179620;
  if (!qword_27E179620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B6C7F94@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v26 = a5;
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s9SceneViewVMa(0, v12, v13, v13);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  (*(v9 + 16))(v11, a1, a3);
  v21 = a2;
  sub_23B6C82AC(v11, a3, a4, v18);
  swift_getWitnessTable();
  v22 = *(v15 + 16);
  v22(v20, v18, v14);
  v23 = *(v15 + 8);
  v23(v18, v14);
  v22(v26, v20, v14);
  return (v23)(v20, v14);
}

uint64_t sub_23B6C81B0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_23B6C82AC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = _s9SceneViewVMa(0, a3, a4, a4);
  v9 = (a5 + *(v8 + 40));
  sub_23B6D6FE0();
  sub_23B6D6FA0();
  *v9 = v16;
  v9[1] = v17;
  v10 = *(a3 - 8);
  (*(v10 + 16))(a5, a1, a3);
  v11 = (a5 + *(v8 + 36));
  _s18SceneConfigurationCMa(0);
  sub_23B6CE40C(&qword_27E179750, _s18SceneConfigurationCMa, &unk_23B6D8170);
  v12 = sub_23B6D6E90();
  v14 = v13;
  result = (*(v10 + 8))(a1, a3);
  *v11 = v12;
  v11[1] = v14;
  return result;
}

uint64_t sub_23B6C8404()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t dispatch thunk of DeviceActivityReportScene.makeConfiguration(representing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23B6C85D8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_23B6C85D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B6C87C0()
{
  sub_23B6D7130();
  sub_23B6D7120();
  v1 = sub_23B6D70F0();

  return MEMORY[0x2822009F8](sub_23B6C8850, v1, v0);
}

void (*sub_23B6C88C0())()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_23B6CD8BC;
}

uint64_t sub_23B6C8930(uint64_t a1)
{
  _s18SceneConfigurationCMa(0);
  sub_23B6CE40C(&qword_27E179750, _s18SceneConfigurationCMa, &unk_23B6D8170);

  return sub_23B6D6E90();
}

uint64_t sub_23B6C89E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = (v2 + *(MEMORY[0x28223BE20](a1) + 40));
  v9 = *v7;
  v8 = v7[1];
  v18 = v9;
  v19 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179760, &qword_23B6D8220);
  sub_23B6D6FB0();
  v17 = v20;
  KeyPath = swift_getKeyPath();
  swift_beginAccess();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179768, &qword_23B6D8258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179770, &qword_23B6D8260);
  sub_23B6D6E50();
  swift_endAccess();
  (*(v5 + 16))(&KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = *(a1 + 16);
  result = (*(v5 + 32))(v12 + v11, &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v14 = KeyPath;
  *a2 = v17;
  *(a2 + 8) = v14;
  *(a2 + 16) = 0;
  v15 = (a2 + *(v10 + 56));
  *v15 = sub_23B6CD0B8;
  v15[1] = v12;
  return result;
}

uint64_t sub_23B6C8BE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s9SceneViewVMa(0, a3, a4, a4);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179778, &qword_23B6D8268);
  result = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v36 - v15;
  v17 = *a1;
  if (*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179780, &qword_23B6D8270);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = v17;
    *(v18 + 32) = 0u;
    *(v18 + 48) = 0u;
    v37 = a4;
    v19 = qword_27E179BA8;
    v20 = sub_23B6D6D60();
    (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
    *(v18 + qword_27E179BB0) = 0;
    v21 = v18 + qword_27E179BB8;
    *(v21 + 32) = 0;
    *v21 = 0u;
    *(v21 + 16) = 0u;
    v36 = *(a2 + *(v8 + 36) + 8);

    sub_23B6D7140();
    v22 = sub_23B6D7160();
    (*(*(v22 - 8) + 56))(v16, 0, 1, v22);
    (*(v9 + 16))(v12, a2, v8);
    sub_23B6D7130();

    v23 = sub_23B6D7120();
    v24 = (*(v9 + 80) + 48) & ~*(v9 + 80);
    v25 = (v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    v27 = MEMORY[0x277D85700];
    *(v26 + 2) = v23;
    *(v26 + 3) = v27;
    v28 = v37;
    *(v26 + 4) = a3;
    *(v26 + 5) = v28;
    (*(v9 + 32))(&v26[v24], v12, v8);
    *&v26[v25] = v18;
    v29 = sub_23B6C974C(0, 0, v16, &unk_23B6D8280, v26);
    v30 = v36;
    v31 = *&v36[OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_updateTaskQueue];
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = v29;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_23B6CD3E4;
    *(v33 + 24) = v32;
    aBlock[4] = sub_23B6CD3EC;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23B6CA604;
    aBlock[3] = &block_descriptor;
    v34 = _Block_copy(aBlock);
    v35 = v30;

    dispatch_sync(v31, v34);
    _Block_release(v34);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if (v31)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_23B6C9018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[6] = AssociatedTypeWitness;
  v7[7] = *(AssociatedTypeWitness - 8);
  v12 = swift_task_alloc();
  v7[8] = v12;
  v7[9] = sub_23B6D7130();
  v7[10] = sub_23B6D7120();
  v7[2] = a5;
  v15 = (*(a7 + 48) + **(a7 + 48));
  v13 = swift_task_alloc();
  v7[11] = v13;
  *v13 = v7;
  v13[1] = sub_23B6C91F8;

  return v15(v12, v7 + 2, a6, a7);
}

uint64_t sub_23B6C91F8()
{
  v1 = *v0;

  v3 = sub_23B6D70F0();
  *(v1 + 96) = v3;
  *(v1 + 104) = v2;

  return MEMORY[0x2822009F8](sub_23B6C933C, v3, v2);
}

uint64_t sub_23B6C933C()
{
  if (sub_23B6D7180())
  {

    (*(v0[7] + 8))(v0[8], v0[6]);

    v1 = v0[1];

    return v1();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23B6C9400, 0, 0);
  }
}

uint64_t sub_23B6C9400(uint64_t a1)
{
  *(v1 + 112) = sub_23B6D7120();
  v3 = sub_23B6D70F0();

  return MEMORY[0x2822009F8](sub_23B6C948C, v3, v2);
}

uint64_t sub_23B6C948C()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];

  sub_23B6C95D8(v4, v1, v3, v2);
  v5 = v0[12];
  v6 = v0[13];

  return MEMORY[0x2822009F8](sub_23B6C9554, v5, v6);
}

uint64_t sub_23B6C9554()
{

  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23B6C95D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = (*(a4 + 56))(a3, a4);
  v8(a2);

  swift_getAssociatedConformanceWitness();
  sub_23B6D6FE0();
  _s9SceneViewVMa(0, a3, a4, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179760, &qword_23B6D8220);
  return sub_23B6D6FC0();
}

uint64_t sub_23B6C974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179778, &qword_23B6D8268);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23B6CDAFC(a3, v25 - v10, &qword_27E179778, &qword_23B6D8268);
  v12 = sub_23B6D7160();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23B6BCE90(v11, &qword_27E179778, &qword_23B6D8268);
  }

  else
  {
    sub_23B6D7150();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23B6D70F0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23B6D7070() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23B6BCE90(a3, &qword_27E179778, &qword_23B6D8268);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23B6BCE90(a3, &qword_27E179778, &qword_23B6D8268);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23B6C9A4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B6D6E60();

  return v1;
}

uint64_t sub_23B6C9AC4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connection);
  if (v3)
  {
    v7[4] = sub_23B6C9C00;
    v7[5] = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_23B6C9DA4;
    v7[3] = &block_descriptor_68;
    v4 = _Block_copy(v7);
    v5 = v3;
    v6 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v4);

    sub_23B6D7250();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E179B30, &qword_23B6D82C8);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_23B6C9C00(void *a1)
{
  if (qword_27E179500 != -1)
  {
    swift_once();
  }

  v2 = sub_23B6D6E20();
  __swift_project_value_buffer(v2, qword_27E17A730);
  MEMORY[0x23EEA3D60](a1);
  oslog = sub_23B6D6E00();
  v3 = sub_23B6D71B0();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    MEMORY[0x23EEA3D60](a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797A0, &qword_23B6D82C0);
    v6 = sub_23B6D7060();
    v8 = sub_23B6BD12C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_23B6BA000, oslog, v3, "Failed to create service proxy for scene configuration: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23EEA3EE0](v5, -1, -1);
    MEMORY[0x23EEA3EE0](v4, -1, -1);
  }

  else
  {
  }
}

void sub_23B6C9DA4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_23B6C9E0C(void *a1)
{
  v2 = a1;
  [a1 setExportedObject_];
  v3 = objc_opt_self();
  v4 = [v3 interfaceWithProtocol_];
  [v2 setExportedInterface_];

  v5 = [v3 interfaceWithProtocol_];
  [v2 setRemoteObjectInterface_];

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_23B6CDDE4;
  v22 = v6;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_23B6CE7A0;
  v20 = &block_descriptor_74;
  v7 = _Block_copy(&v17);

  [v2 setInterruptionHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_23B6CDDEC;
  v22 = v8;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_23B6CE7A0;
  v20 = &block_descriptor_78;
  v9 = _Block_copy(&v17);

  [v2 setInvalidationHandler_];
  _Block_release(v9);
  [v2 activate];
  v10 = *&v1[OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connectionQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_23B6CDE34;
  *(v12 + 24) = v11;
  v21 = sub_23B6CE558;
  v22 = v12;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_23B6CA604;
  v20 = &block_descriptor_88;
  v13 = _Block_copy(&v17);
  v14 = v1;
  v15 = v2;

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return 1;
  }

  __break(1u);
  return result;
}

char *sub_23B6CA158(uint64_t a1)
{
  if (qword_27E179500 != -1)
  {
    swift_once();
  }

  v1 = sub_23B6D6E20();
  __swift_project_value_buffer(v1, qword_27E17A730);
  v2 = sub_23B6D6E00();
  v3 = sub_23B6D71D0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23B6BA000, v2, v3, "The extension's connection to our view service was interrupted.", v4, 2u);
    MEMORY[0x23EEA3EE0](v4, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *&result[OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connectionQueue];
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = 1;
    *(v8 + 24) = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_23B6CE54C;
    *(v9 + 24) = v8;
    aBlock[4] = sub_23B6CE558;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23B6CA604;
    aBlock[3] = &block_descriptor_109;
    v10 = _Block_copy(aBlock);
    v11 = v7;

    dispatch_sync(v6, v10);
    _Block_release(v10);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

char *sub_23B6CA39C(uint64_t a1)
{
  if (qword_27E179500 != -1)
  {
    swift_once();
  }

  v1 = sub_23B6D6E20();
  __swift_project_value_buffer(v1, qword_27E17A730);
  v2 = sub_23B6D6E00();
  v3 = sub_23B6D71D0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23B6BA000, v2, v3, "The extension's connection to our view service was invalidated.", v4, 2u);
    MEMORY[0x23EEA3EE0](v4, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *&result[OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connectionQueue];
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_23B6CDE80;
    *(v9 + 24) = v8;
    aBlock[4] = sub_23B6CE558;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23B6CA604;
    aBlock[3] = &block_descriptor_98;
    v10 = _Block_copy(aBlock);
    v11 = v7;

    dispatch_sync(v6, v10);
    _Block_release(v10);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_23B6CA62C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_updateTask;
  if (*(a1 + OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_updateTask))
  {

    sub_23B6D7170();
  }

  *(a1 + v4) = a2;
}

uint64_t sub_23B6CA6BC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a4;
  v46 = a5;
  v40 = a3;
  v47 = a2;
  v5 = sub_23B6D69D0();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23B6D6C10();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v42 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v33 - v10;
  v11 = sub_23B6D6D60();
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23B6D6A90();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23B6D6AB0();
  v36 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v33 - v22;
  sub_23B6CE40C(&qword_27E1797D8, MEMORY[0x277CC5778], MEMORY[0x277CC5780]);
  v24 = v51;
  result = sub_23B6D6960();
  if (!v24)
  {
    sub_23B6D6AA0();
    sub_23B6D6A80();
    (*(v15 + 8))(v17, v14);
    v26 = sub_23B6D6D50();
    (*(v34 + 8))(v13, v35);
    v27 = v37;
    (*(v38 + 16))(v37, v40, v39);
    v28 = v41;
    DeviceActivityFilter.SegmentInterval.init(_:_:)(v26, v27, v41);
    v29 = v36;
    (*(v36 + 16))(v21, v23, v18);
    v30 = v43;
    v31 = v44;
    (*(v43 + 16))(v42, v28, v44);
    v49 = _s18SceneConfigurationCMa(0);
    v50 = sub_23B6CE40C(&qword_27E1797E0, _s18SceneConfigurationCMa, &unk_23B6D8148);
    v48 = v45;
    v32 = v45;
    sub_23B6D6BB0();
    (*(v30 + 8))(v28, v31);
    return (*(v29 + 8))(v23, v18);
  }

  return result;
}

void *sub_23B6CAB78(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797C8, &qword_23B6D8328);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_23B6D6BA0();
  v10 = MEMORY[0x28223BE20](v9);
  v33 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v31 = &v26 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = (a3 + 32);
  v16 = (v12 + 48);
  v30 = v12;
  v32 = (v12 + 32);
  v17 = MEMORY[0x277D84F90];
  v28 = v9;
  v29 = a1;
  v27 = (v12 + 48);
  while (1)
  {
    v34 = *v15;
    sub_23B6BDA1C(v34, *(&v34 + 1));
    a1(&v34);
    if (v3)
    {
      break;
    }

    sub_23B6CDAA8(v34, *(&v34 + 1));
    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_23B6BCE90(v8, &qword_27E1797C8, &qword_23B6D8328);
    }

    else
    {
      v18 = v31;
      v19 = *v32;
      (*v32)(v31, v8, v9);
      v19(v33, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_23B6CDB64(0, v17[2] + 1, 1, v17);
      }

      v21 = v17[2];
      v20 = v17[3];
      v22 = v30;
      if (v21 >= v20 >> 1)
      {
        v24 = sub_23B6CDB64((v20 > 1), v21 + 1, 1, v17);
        v22 = v30;
        v17 = v24;
      }

      v17[2] = v21 + 1;
      v23 = v17 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v21;
      v9 = v28;
      v19(v23, v33, v28);
      a1 = v29;
      v16 = v27;
    }

    ++v15;
    if (!--v14)
    {
      return v17;
    }
  }

  sub_23B6CDAA8(v34, *(&v34 + 1));

  return v17;
}

uint64_t sub_23B6CAE6C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;

  sub_23B6D6E70();
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;
  sub_23B6D6E70();
  return a3(0);
}

void sub_23B6CB08C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_23B6D69E0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_23B6CB0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = a7;
  v30 = a8;
  v28[0] = a3;
  v28[1] = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179790, qword_23B6D82A8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179788, &qword_23B6D82A0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v28 - v17;
  v31 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179798, &unk_23B6D87A0);
  sub_23B6D7210();
  v19 = aBlock[0];
  if (aBlock[0])
  {
    if (a4)
    {
      v28[0] = sub_23B6D7040();
    }

    else
    {
      v28[0] = 0;
    }

    v21 = sub_23B6D7040();
    v29 = sub_23B6D6D50();
    v22 = v30;
    v23 = sub_23B6D7040();
    (*(v13 + 16))(v15, a1, v12);
    v24 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v22;
    *(v25 + 24) = a9;
    (*(v13 + 32))(v25 + v24, v15, v12);
    aBlock[4] = sub_23B6CD9FC;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23B6CBB44;
    aBlock[3] = &block_descriptor_65;
    v26 = _Block_copy(aBlock);

    v27 = v28[0];
    [v19 fetchActivitySegmentWithUserAltDSID_deviceIdentifier_segmentInterval_recordName:v28[0] :{v21, v29, v23, v26}];
    _Block_release(v26);
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = sub_23B6D6B10();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
    sub_23B6D7100();
  }
}

uint64_t sub_23B6CB434(uint64_t a1, unint64_t a2, void *a3, char *a4, unint64_t a5, uint64_t a6)
{
  v40 = a4;
  v41 = a6;
  v10 = sub_23B6D6A70();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179788, &qword_23B6D82A0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v39 - v21;
  v23 = sub_23B6D6B10();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  if (a2 >> 60 == 15)
  {
    v24 = v20;
    if (a3)
    {
      MEMORY[0x23EEA3D60](a3);
      if (qword_27E179500 != -1)
      {
        swift_once();
      }

      v25 = sub_23B6D6E20();
      __swift_project_value_buffer(v25, qword_27E17A730);
      MEMORY[0x23EEA3D60](a3);
      v26 = sub_23B6D6E00();
      v27 = sub_23B6D71B0();

      if (!os_log_type_enabled(v26, v27))
      {

        goto LABEL_14;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v42 = a3;
      v43 = v29;
      *v28 = 136446210;
      MEMORY[0x23EEA3D60](a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797A0, &qword_23B6D82C0);
      v30 = sub_23B6D7060();
      v32 = sub_23B6BD12C(v30, v31, &v43);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_23B6BA000, v26, v27, "Failed to fetch activity segment: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x23EEA3EE0](v29, -1, -1);
      MEMORY[0x23EEA3EE0](v28, -1, -1);
    }

    else
    {
      if (qword_27E179500 != -1)
      {
        swift_once();
      }

      v33 = sub_23B6D6E20();
      __swift_project_value_buffer(v33, qword_27E17A730);

      v26 = sub_23B6D6E00();
      v34 = sub_23B6D71C0();

      if (os_log_type_enabled(v26, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v43 = v36;
        *v35 = 136446210;
        *(v35 + 4) = sub_23B6BD12C(v40, a5, &v43);
        _os_log_impl(&dword_23B6BA000, v26, v34, "Failed to fetch activity segment: %{public}s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x23EEA3EE0](v36, -1, -1);
        MEMORY[0x23EEA3EE0](v35, -1, -1);
      }
    }

LABEL_14:
    v37 = v24;
    goto LABEL_15;
  }

  v40 = v20;
  sub_23B6D6980();
  swift_allocObject();
  sub_23B6BDA1C(a1, a2);
  sub_23B6D6970();
  sub_23B6CE40C(&qword_27E1797A8, MEMORY[0x277CC5760], MEMORY[0x277CC5768]);
  sub_23B6D6960();
  (*(v11 + 16))(v14, v16, v10);
  v37 = v40;
  sub_23B6D6B20();

  sub_23B6CDA94(a1, a2);
  (*(v11 + 8))(v16, v10);
  sub_23B6BCE90(v22, &qword_27E179788, &qword_23B6D82A0);
  sub_23B6CDD3C(v37, v22);
LABEL_15:
  sub_23B6CDAFC(v22, v37, &qword_27E179788, &qword_23B6D82A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179790, qword_23B6D82A8);
  sub_23B6D7100();
  return sub_23B6BCE90(v22, &qword_27E179788, &qword_23B6D82A0);
}

uint64_t sub_23B6CBB44(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_23B6D6A10();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_23B6CDA94(v4, v8);
}

id sub_23B6CBBF0()
{
  v1 = sub_23B6D71F0();
  v2 = *(v1 - 8);
  v24 = v1;
  v25 = v2;
  MEMORY[0x28223BE20](v1);
  v23 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23B6D71E0();
  MEMORY[0x28223BE20](v4);
  v5 = sub_23B6D7010();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179770, &qword_23B6D8260);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  v10 = OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration__deviceActivityData;
  v11 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E179638, &qword_23B6D80A8);
  sub_23B6D6E40();
  v12 = *(v7 + 32);
  v22 = v0;
  v12(&v0[v10], v9, v6);
  *&v0[OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connection] = 0;
  v21 = OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connectionQueue;
  v20[0] = sub_23B6CDF34();
  v20[3] = "v16@?0@NSError8";
  sub_23B6D7000();
  v27 = v11;
  v20[2] = sub_23B6CE40C(&unk_27E179B10, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v20[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797B0, &unk_23B6D8790);
  sub_23B6CE4C8(&unk_27E179B20, &qword_27E1797B0, &unk_23B6D8790, MEMORY[0x277D83970]);
  sub_23B6D7260();
  v13 = *MEMORY[0x277D85260];
  v14 = *(v25 + 104);
  v25 += 104;
  v15 = v23;
  v14(v23, v13, v24);
  v16 = sub_23B6D7230();
  v17 = v22;
  *&v22[v21] = v16;
  *&v17[OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_updateTask] = 0;
  v21 = OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_updateTaskQueue;
  sub_23B6D7000();
  v27 = MEMORY[0x277D84F90];
  sub_23B6D7260();
  v14(v15, v13, v24);
  *&v17[v21] = sub_23B6D7230();
  v18 = _s18SceneConfigurationCMa(0);
  v26.receiver = v17;
  v26.super_class = v18;
  return objc_msgSendSuper2(&v26, sel_init);
}

id sub_23B6CC040()
{
  v2.receiver = v0;
  v2.super_class = _s18SceneConfigurationCMa(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23B6CC138(uint64_t a1)
{
  sub_23B6CC1E4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23B6CC1E4(uint64_t a1)
{
  if (!qword_27E179630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E179638, &qword_23B6D80A8);
    v1 = sub_23B6D6E80();
    if (!v2)
    {
      atomic_store(v1, &qword_27E179630);
    }
  }
}

uint64_t sub_23B6CC25C(uint64_t a1)
{
  result = sub_23B6CC6D0();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B6CC2E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_23B6CC468(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

unint64_t sub_23B6CC6D0()
{
  result = qword_27E1796C0[0];
  if (!qword_27E1796C0[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27E1796C0);
  }

  return result;
}

void sub_23B6CC728(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_23B6CCAD8(319);
    if (v2 <= 0x3F)
    {
      sub_23B6CCB6C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23B6CC7C8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_23B6CC90C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[1] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_23B6CCAD8(uint64_t a1)
{
  if (!qword_27E179748)
  {
    _s18SceneConfigurationCMa(255);
    sub_23B6CE40C(&qword_27E179750, _s18SceneConfigurationCMa, &unk_23B6D8170);
    v1 = sub_23B6D6EA0();
    if (!v2)
    {
      atomic_store(v1, &qword_27E179748);
    }
  }
}

void sub_23B6CCB6C()
{
  if (!qword_27E179758)
  {
    v0 = sub_23B6D6FD0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E179758);
    }
  }
}

uint64_t sub_23B6CCC00@<X0>(uint64_t *a2@<X8>)
{
  _s18SceneConfigurationCMa(0);
  result = sub_23B6D6E30();
  *a2 = result;
  return result;
}

uint64_t sub_23B6CCC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[8] = a7;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  v9[10] = *v8;
  return MEMORY[0x2822009F8](sub_23B6CCC78, 0, 0);
}

uint64_t sub_23B6CCC78()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  v8 = *(v0 + 48);
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = v8;
  *(v7 + 64) = v3;
  *(v7 + 72) = v2;
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179788, &qword_23B6D82A0);
  *v9 = v0;
  v9[1] = sub_23B6CCDAC;
  v11 = *(v0 + 16);

  return MEMORY[0x2822007B8](v11, 0, 0, 0xD00000000000004ELL, 0x800000023B6D8D50, sub_23B6CD8DC, v7, v10);
}

uint64_t sub_23B6CCDAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B6CCED4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23B6CCF54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B6D6EB0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23B6CCFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (_s9SceneViewVMa(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);
  (*(*(v5 - 8) + 8))(v4 + v8, v5);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_23B6CD0B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(_s9SceneViewVMa(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_23B6C8BE4(a1, v9, v6, v7);
}

uint64_t sub_23B6CD144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (_s9SceneViewVMa(0, v5, *(v4 + 40), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 48) & ~v7;
  v9 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v10 = v4 + v8;
  (*(*(v5 - 8) + 8))(v10, v5);

  return MEMORY[0x2821FE8E8](v4, v9 + 8, v7 | 7);
}

uint64_t sub_23B6CD264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = v4[4];
  v8 = v4[5];
  v10 = *(_s9SceneViewVMa(0, v9, v8, a4) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = v4[2];
  v13 = v4[3];
  v14 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_23B6CE554;

  return sub_23B6C9018(a1, v12, v13, v4 + v11, v14, v9, v8);
}

uint64_t sub_23B6CD3A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23B6CD42C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B6D6E60();

  *a2 = v4;
  return result;
}

uint64_t sub_23B6CD4AC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_23B6D6E70();
}

uint64_t sub_23B6CD524(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23B6CD61C;

  return v6(a1);
}

uint64_t sub_23B6CD61C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B6CD714()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B6CD74C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B6CE554;

  return sub_23B6CD524(a1, v4);
}

uint64_t sub_23B6CD804(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B6C85D8;

  return sub_23B6CD524(a1, v4);
}

uint64_t sub_23B6CD92C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179790, qword_23B6D82A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23B6CD9FC(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179790, qword_23B6D82A8) - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_23B6CB434(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_23B6CDA94(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23B6CDAA8(result, a2);
  }

  return result;
}

uint64_t sub_23B6CDAA8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_23B6CDAFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_23B6CDB64(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797D0, &qword_23B6D8330);
  v10 = *(sub_23B6D6BA0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_23B6D6BA0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_23B6CDD3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179788, &qword_23B6D82A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B6CDDAC()
{
  MEMORY[0x23EEA3F60](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B6CDDF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_23B6CDE34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connection);
  *(v1 + OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connection) = v2;
  v3 = v2;
}

uint64_t sub_23B6CDE84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_23B6CDEBC()
{
  v1 = *(v0 + 24);
  if (*(v0 + 16) == 1)
  {
    [*(v1 + OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connection) invalidate];
  }

  v2 = *(v1 + OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connection);
  *(v1 + OBJC_IVAR____TtCV23_DeviceActivity_SwiftUI20DeviceActivityReport18SceneConfiguration_connection) = 0;
}

unint64_t sub_23B6CDF34()
{
  result = qword_27E179AF0;
  if (!qword_27E179AF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E179AF0);
  }

  return result;
}

uint64_t sub_23B6CDF80(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v8 = sub_23B6D6FF0();
  v24 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23B6D7010();
  v23 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  sub_23B6D6980();
  swift_allocObject();
  _Block_copy(a4);
  v26 = sub_23B6D6970();
  v27 = a2;
  v28 = a3;
  v15 = sub_23B6CAB78(sub_23B6CE398, v25, a1);

  sub_23B6CDF34();
  v22 = sub_23B6D7200();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = v15;
  v16[4] = sub_23B6CE390;
  v16[5] = v14;
  aBlock[4] = sub_23B6CE400;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B6CE7A0;
  aBlock[3] = &block_descriptor_124;
  v17 = _Block_copy(aBlock);
  v18 = a3;

  sub_23B6D7000();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23B6CE40C(&qword_27E1797B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E179B00, &qword_23B6D8320);
  sub_23B6CE4C8(&qword_27E1797C0, &unk_27E179B00, &qword_23B6D8320, MEMORY[0x277D83970]);
  sub_23B6D7260();
  v19 = v22;
  MEMORY[0x23EEA3790](0, v13, v10, v17);
  _Block_release(v17);

  (*(v24 + 8))(v10, v8);
  (*(v23 + 8))(v13, v11);
}

uint64_t sub_23B6CE358()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B6CE3B8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B6CE40C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B6CE4C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t DeviceActivityFilter.SegmentInterval.rawValue.getter()
{
  v1 = v0;
  v2 = sub_23B6D6C10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  v7 = 0;
  if (v6 == *MEMORY[0x277CC5838])
  {
    goto LABEL_6;
  }

  if (v6 == *MEMORY[0x277CC5830])
  {
    v7 = 1;
LABEL_6:
    (*(v3 + 96))(v5, v2);
    v8 = sub_23B6D69D0();
    (*(*(v8 - 8) + 8))(v5, v8);
    return v7;
  }

  if (v6 == *MEMORY[0x277CC5840])
  {
    v7 = 2;
    goto LABEL_6;
  }

  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_23B6D72A0();
  MEMORY[0x23EEA3600](0xD000000000000011, 0x800000023B6D8F30);
  sub_23B6D72C0();
  result = sub_23B6D72D0();
  __break(1u);
  return result;
}

uint64_t sub_23B6CE7A0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t DeviceActivityFilter.SegmentInterval.init(_:_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 >= 3)
  {
    sub_23B6D72A0();

    v11 = sub_23B6D73A0();
    MEMORY[0x23EEA3600](v11);

    result = sub_23B6D72D0();
    __break(1u);
  }

  else
  {
    v5 = qword_278B852F0[a1];
    v6 = sub_23B6D69D0();
    (*(*(v6 - 8) + 32))(a3, a2, v6);
    v7 = *v5;
    v8 = sub_23B6D6C10();
    v9 = *(*(v8 - 8) + 104);

    return v9(a3, v7, v8);
  }

  return result;
}

uint64_t DeviceActivityReport.ClientConfiguration.context.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeviceActivityReport.ClientConfiguration.interval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeviceActivityReport.ClientConfiguration(0) + 24);
  v4 = sub_23B6D69D0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DeviceActivityReport.ClientConfiguration(uint64_t a1)
{
  result = qword_27E1798F0;
  if (!qword_27E1798F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double DeviceActivityReport.ClientConfiguration.models.getter()
{
  type metadata accessor for DeviceActivityReport.ClientConfiguration(0);

  return result;
}

double DeviceActivityReport.ClientConfiguration.applications.getter()
{
  type metadata accessor for DeviceActivityReport.ClientConfiguration(0);

  return result;
}

double DeviceActivityReport.ClientConfiguration.categories.getter()
{
  type metadata accessor for DeviceActivityReport.ClientConfiguration(0);

  return result;
}

double DeviceActivityReport.ClientConfiguration.webDomains.getter()
{
  type metadata accessor for DeviceActivityReport.ClientConfiguration(0);

  return result;
}

uint64_t DeviceActivityReport.ClientConfiguration.userAltDSID.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeviceActivityReport.ClientConfiguration(0) + 48));

  return v1;
}

uint64_t DeviceActivityReport.ClientConfiguration.deviceIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeviceActivityReport.ClientConfiguration(0) + 52));

  return v1;
}

double DeviceActivityReport.ClientConfiguration.bundleIdentifiers.getter()
{
  type metadata accessor for DeviceActivityReport.ClientConfiguration(0);

  return result;
}

double DeviceActivityReport.ClientConfiguration.categoryIdentifiers.getter()
{
  type metadata accessor for DeviceActivityReport.ClientConfiguration(0);

  return result;
}

double DeviceActivityReport.ClientConfiguration.domains.getter()
{
  type metadata accessor for DeviceActivityReport.ClientConfiguration(0);

  return result;
}

uint64_t DeviceActivityReport.ClientConfiguration.extensionIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeviceActivityReport.ClientConfiguration(0) + 68));

  return v1;
}

void DeviceActivityReport.ClientConfiguration.filter.getter(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797F0, &qword_23B6D7C80);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v126 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v125 = &v124 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797F8, &qword_23B6D8348);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v136 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v137 = &v124 - v10;
  v11 = sub_23B6D6AF0();
  v130 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v132 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v124 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v135 = &v124 - v18;
  MEMORY[0x28223BE20](v17);
  v131 = &v124 - v19;
  v134 = sub_23B6D6CC0();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v124 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23B6D6C90();
  MEMORY[0x28223BE20](v21 - 8);
  v129 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v147 = sub_23B6D6DF0();
  v139 = *(v147 - 8);
  v23 = MEMORY[0x28223BE20](v147);
  *&v146 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v145 = &v124 - v25;
  v150 = sub_23B6D6DC0();
  v140 = *(v150 - 1);
  v26 = MEMORY[0x28223BE20](v150);
  v149 = &v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v148 = &v124 - v28;
  v153 = sub_23B6D6D90();
  v29 = *(v153 - 8);
  v30 = MEMORY[0x28223BE20](v153);
  v152 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v151 = &v124 - v32;
  v33 = sub_23B6D69D0();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_23B6D6C10();
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v40 = &v124 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38);
  v128 = &v124 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v127 = &v124 - v44;
  MEMORY[0x28223BE20](v43);
  v142 = &v124 - v45;
  v46 = type metadata accessor for DeviceActivityReport.ClientConfiguration(0);
  v47 = v46;
  v48 = (v1 + v46[12]);
  v49 = *v48;
  v141 = v48[1];
  v138 = a1;
  v143 = v46;
  v144 = v1;
  if (v141 || *(v1 + v46[13] + 8) || (*(v1 + v46[14]))[2] || (*(v1 + v46[15]))[2] || (*(v1 + v46[16]))[2])
  {
    v137 = v49;
    v50 = v1[2];
    v51 = *(v34 + 16);
    v34 += 16;
    v51(v36, v1 + v46[6], v33);
    DeviceActivityFilter.SegmentInterval.init(_:_:)(v50, v36, v142);
    v52 = (v1 + v47[13]);
    v16 = *(v1 + v47[14]);
    v40 = v52[1];
    v136 = *v52;
    v33 = (v16 + 56);
    v53 = *(v16 + 7);
    v154 = MEMORY[0x277D84FA0];
    v54 = 1 << v16[32];
    v55 = -1;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    v11 = v55 & v53;
    v56 = (v54 + 63) >> 6;
    v36 = (v29 + 8);

    v135 = v40;

    v47 = 0;
    v57 = v152;
    if (v11)
    {
      while (1)
      {
        v58 = v47;
LABEL_14:
        v59 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v34 = *(*(v16 + 6) + ((v58 << 10) | (16 * v59)) + 8);
        swift_bridgeObjectRetain_n();
        sub_23B6D6D70();
        v1 = &v154;
        v40 = v151;
        sub_23B6BE324(v151, v57);

        (*v36)(v40, v153);
        if (!v11)
        {
          goto LABEL_10;
        }
      }
    }

    while (1)
    {
LABEL_10:
      v58 = (v47 + 1);
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v58 >= v56)
      {
        break;
      }

      v11 = *(v33 + 8 * v58);
      v47 = (v47 + 1);
      if (v11)
      {
        v47 = v58;
        goto LABEL_14;
      }
    }

    v153 = v154;
    v60 = *(v144 + v143[15]);
    v16 = (v60 + 56);
    v61 = *(v60 + 56);
    v154 = MEMORY[0x277D84FA0];
    v62 = 1 << *(v60 + 32);
    v63 = -1;
    if (v62 < 64)
    {
      v63 = ~(-1 << v62);
    }

    v11 = v63 & v61;
    v36 = ((v62 + 63) >> 6);
    v33 = v140 + 8;

    v47 = 0;
    while (v11)
    {
      v64 = v47;
LABEL_24:
      v65 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v34 = *(*(v60 + 48) + ((v64 << 10) | (16 * v65)) + 8);
      swift_bridgeObjectRetain_n();
      v66 = v149;
      sub_23B6D6DA0();
      v1 = &v154;
      v40 = v148;
      sub_23B6BE044(v148, v66);

      (*v33)(v40, v150);
    }

    while (1)
    {
      v64 = (v47 + 1);
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v64 >= v36)
      {

        v152 = v154;
        v11 = *(v144 + v143[16]);
        v16 = (v11 + 56);
        v67 = *(v11 + 56);
        v154 = MEMORY[0x277D84FA0];
        v68 = 1 << *(v11 + 32);
        v69 = -1;
        if (v68 < 64)
        {
          v69 = ~(-1 << v68);
        }

        v33 = v69 & v67;
        v36 = ((v68 + 63) >> 6);
        v70 = (v139 + 8);

        v47 = 0;
        while (v33)
        {
          v71 = v47;
LABEL_34:
          v72 = __clz(__rbit64(v33));
          v33 &= v33 - 1;
          v34 = *(*(v11 + 48) + ((v71 << 10) | (16 * v72)) + 8);
          swift_bridgeObjectRetain_n();
          v73 = v146;
          sub_23B6D6DD0();
          v1 = &v154;
          v40 = v145;
          sub_23B6BDD64(v145, v73);

          (*v70)(v40, v147);
        }

        while (1)
        {
          v71 = (v47 + 1);
          if (__OFADD__(v47, 1))
          {
            goto LABEL_39;
          }

          if (v71 >= v36)
          {

            sub_23B6D6CF0();
            return;
          }

          v33 = *&v16[8 * v71];
          v47 = (v47 + 1);
          if (v33)
          {
            v47 = v71;
            goto LABEL_34;
          }
        }
      }

      v11 = *&v16[8 * v64];
      v47 = (v47 + 1);
      if (v11)
      {
        v47 = v64;
        goto LABEL_24;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  v151 = v16;
  v152 = v11;
  v74 = *(v1 + v47[7] + 8);
  v153 = *(v1 + v47[8]);
  if (v74)
  {
    if (v153)
    {
      v75 = v1[2];
      (*(v34 + 16))(v36, v1 + v47[6], v33);
      DeviceActivityFilter.SegmentInterval.init(_:_:)(v75, v36, v128);
      v77 = v153 + 56;
      v76 = *(v153 + 56);
      v78 = 1 << *(v153 + 32);
      v154 = MEMORY[0x277D84FA0];
      if (v78 < 64)
      {
        v79 = ~(-1 << v78);
      }

      else
      {
        v79 = -1;
      }

      v80 = v79 & v76;
      v81 = (v78 + 63) >> 6;
      v149 = (v130 + 16);
      v150 = (v130 + 32);
      v148 = (v130 + 8);
      v82 = (v130 + 48);

      v83 = 0;
      *&v84 = 134349056;
      v147 = v84;
      if (v80)
      {
        goto LABEL_48;
      }

LABEL_49:
      v90 = v136;
      while (1)
      {
        v89 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          break;
        }

        if (v89 >= v81)
        {

          v123 = v125;
          sub_23B6D6CD0();
          (*(v133 + 56))(v123, 0, 1, v134);

          goto LABEL_81;
        }

        v80 = *(v77 + 8 * v89);
        ++v83;
        if (v80)
        {
          while (1)
          {
            v91 = __clz(__rbit64(v80));
            v80 &= v80 - 1;
            v92 = *(*(v153 + 48) + ((v89 << 9) | (8 * v91)));
            sub_23B6D6AD0();
            v93 = v152;
            if ((*v82)(v90, 1, v152) == 1)
            {
              sub_23B6D3350(v90);
              if (qword_27E179500 != -1)
              {
                swift_once();
              }

              v94 = sub_23B6D6E20();
              __swift_project_value_buffer(v94, qword_27E17A730);
              v95 = sub_23B6D6E00();
              v96 = sub_23B6D71B0();
              if (os_log_type_enabled(v95, v96))
              {
                v97 = swift_slowAlloc();
                *v97 = v147;
                *(v97 + 4) = v92;
                _os_log_impl(&dword_23B6BA000, v95, v96, "Invalid device model: %{public}ld", v97, 0xCu);
                MEMORY[0x23EEA3EE0](v97, -1, -1);
              }

              v83 = v89;
              if (!v80)
              {
                goto LABEL_49;
              }
            }

            else
            {
              v85 = v132;
              (*v150)(v132, v90, v93);
              v86 = v151;
              (*v149)(v151, v85, v93);
              v87 = v135;
              sub_23B6BE604(v135, v86);
              v88 = *v148;
              (*v148)(v87, v93);
              v88(v85, v93);
              v83 = v89;
              if (!v80)
              {
                goto LABEL_49;
              }
            }

LABEL_48:
            v89 = v83;
            v90 = v136;
          }
        }
      }

      __break(1u);
LABEL_84:
      __break(1u);
      return;
    }
  }

  else if (v153)
  {
    v98 = v1[2];
    (*(v34 + 16))(v36, v1 + v47[6], v33);
    DeviceActivityFilter.SegmentInterval.init(_:_:)(v98, v36, v127);
    sub_23B6D6C70();
    v100 = v153 + 56;
    v99 = *(v153 + 56);
    v101 = 1 << *(v153 + 32);
    v154 = MEMORY[0x277D84FA0];
    if (v101 < 64)
    {
      v102 = ~(-1 << v101);
    }

    else
    {
      v102 = -1;
    }

    v103 = v102 & v99;
    v104 = (v101 + 63) >> 6;
    v105 = (v130 + 48);
    v148 = (v130 + 16);
    v149 = (v130 + 32);
    *&v147 = v130 + 8;

    v106 = 0;
    *&v107 = 134349056;
    v146 = v107;
    v150 = v105;
    if (v103)
    {
      goto LABEL_67;
    }

LABEL_68:
    v114 = v137;
    while (1)
    {
      v113 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        goto LABEL_84;
      }

      if (v113 >= v104)
      {

        sub_23B6D6CD0();

        sub_23B6D6D00();
        return;
      }

      v103 = *(v100 + 8 * v113);
      ++v106;
      if (v103)
      {
        while (1)
        {
          v115 = __clz(__rbit64(v103));
          v103 &= v103 - 1;
          v116 = *(*(v153 + 48) + ((v113 << 9) | (8 * v115)));
          sub_23B6D6AD0();
          v117 = v152;
          if ((*v105)(v114, 1, v152) == 1)
          {
            sub_23B6D3350(v114);
            if (qword_27E179500 != -1)
            {
              swift_once();
            }

            v118 = sub_23B6D6E20();
            __swift_project_value_buffer(v118, qword_27E17A730);
            v119 = sub_23B6D6E00();
            v120 = sub_23B6D71B0();
            if (os_log_type_enabled(v119, v120))
            {
              v121 = swift_slowAlloc();
              *v121 = v146;
              *(v121 + 4) = v116;
              _os_log_impl(&dword_23B6BA000, v119, v120, "Invalid device model: %{public}ld", v121, 0xCu);
              MEMORY[0x23EEA3EE0](v121, -1, -1);
            }

            v106 = v113;
            if (!v103)
            {
              goto LABEL_68;
            }
          }

          else
          {
            v108 = v131;
            (*v149)(v131, v114, v117);
            v109 = v151;
            (*v148)(v151, v108, v117);
            v110 = v135;
            sub_23B6BE604(v135, v109);
            v111 = *v147;
            (*v147)(v110, v117);
            v112 = v108;
            v105 = v150;
            v111(v112, v117);
            v106 = v113;
            if (!v103)
            {
              goto LABEL_68;
            }
          }

LABEL_67:
          v113 = v106;
          v114 = v137;
        }
      }
    }
  }

  v122 = v1[2];
  (*(v34 + 16))(v36, v1 + v47[6], v33);
  DeviceActivityFilter.SegmentInterval.init(_:_:)(v122, v36, v40);
  (*(v133 + 56))(v126, 1, 1, v134);

LABEL_81:
  sub_23B6D6D10();
}

unint64_t sub_23B6CFE5C(char a1)
{
  result = 0x747865746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x746E656D676573;
      break;
    case 2:
      result = 0x6C61767265746E69;
      break;
    case 3:
      result = 0x7372657375;
      break;
    case 4:
      result = 0x736C65646F6DLL;
      break;
    case 5:
      result = 0x746163696C707061;
      break;
    case 6:
      result = 0x69726F6765746163;
      break;
    case 7:
      result = 0x69616D6F44626577;
      break;
    case 8:
      result = 0x44746C4172657375;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x736E69616D6F64;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B6D0038()
{
  v1 = *v0;
  sub_23B6D73F0();
  MEMORY[0x23EEA3970](v1);
  return sub_23B6D7410();
}

uint64_t sub_23B6D00AC(uint64_t a1)
{
  v2 = *v1;
  sub_23B6D73F0();
  MEMORY[0x23EEA3970](v2);
  return sub_23B6D7410();
}

uint64_t sub_23B6D00F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23B6D426C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23B6D0138(uint64_t a1)
{
  v2 = sub_23B6D33FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B6D0174(uint64_t a1)
{
  v2 = sub_23B6D33FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeviceActivityReport.ClientConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179800, &qword_23B6D8350);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B6D33FC();
  sub_23B6D7430();
  LOBYTE(v14) = 0;
  sub_23B6D7370();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v14) = 1;
  sub_23B6D7380();
  v9 = type metadata accessor for DeviceActivityReport.ClientConfiguration(0);
  LOBYTE(v14) = 2;
  sub_23B6D69D0();
  sub_23B6D4B00(&qword_27E179810, MEMORY[0x277CC88A8], MEMORY[0x277CC88B0]);
  sub_23B6D7390();
  LOBYTE(v14) = 3;
  sub_23B6D7350();
  v14 = *(v3 + v9[8]);
  v13 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179818, &qword_23B6D8358);
  sub_23B6D36CC(&qword_27E179820, MEMORY[0x277D83B90], MEMORY[0x277D83B50]);
  sub_23B6D7360();
  v14 = *(v3 + v9[9]);
  v13 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179828, &qword_23B6D8360);
  sub_23B6D3450();
  sub_23B6D7390();
  v14 = *(v3 + v9[10]);
  v13 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179848, &qword_23B6D8370);
  sub_23B6D3500();
  sub_23B6D7390();
  v14 = *(v3 + v9[11]);
  v13 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179868, &qword_23B6D8380);
  sub_23B6D35B0();
  sub_23B6D7390();
  LOBYTE(v14) = 8;
  sub_23B6D7340();
  LOBYTE(v14) = 9;
  sub_23B6D7340();
  v12 = v6;
  v14 = *(v3 + v9[14]);
  v13 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179888, &qword_23B6D8390);
  sub_23B6D3660(&qword_27E179890, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
  sub_23B6D7390();
  v14 = *(v3 + v9[15]);
  v13 = 11;
  sub_23B6D7390();
  v14 = *(v3 + v9[16]);
  v13 = 12;
  sub_23B6D7390();
  LOBYTE(v14) = 13;
  sub_23B6D7340();
  return (*(v12 + 8))(v8, v5);
}

uint64_t DeviceActivityReport.ClientConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_23B6D69D0();
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179898, &qword_23B6D8398);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v32 - v7;
  v9 = type metadata accessor for DeviceActivityReport.ClientConfiguration(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B6D33FC();
  v39 = v8;
  v12 = v40;
  sub_23B6D7420();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v40 = a1;
  v33 = v3;
  v34 = v9;
  v13 = v11;
  LOBYTE(v42) = 0;
  *v11 = sub_23B6D7310();
  v11[1] = v14;
  LOBYTE(v42) = 1;
  v11[2] = sub_23B6D7320();
  LOBYTE(v42) = 2;
  sub_23B6D4B00(&qword_27E1798A0, MEMORY[0x277CC88A8], MEMORY[0x277CC88D0]);
  v15 = v33;
  sub_23B6D7330();
  v16 = v34;
  (*(v36 + 32))(v13 + v34[6], v5, v15);
  LOBYTE(v42) = 3;
  v17 = sub_23B6D72F0();
  v18 = v13 + v16[7];
  *v18 = v17;
  *(v18 + 8) = v19 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179818, &qword_23B6D8358);
  v41 = 4;
  sub_23B6D36CC(&qword_27E1798A8, MEMORY[0x277D83BB8], MEMORY[0x277D83B70]);
  sub_23B6D7300();
  *(v13 + v16[8]) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179828, &qword_23B6D8360);
  v41 = 5;
  sub_23B6D3738();
  sub_23B6D7330();
  *(v13 + v16[9]) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179848, &qword_23B6D8370);
  v41 = 6;
  sub_23B6D37E8();
  sub_23B6D7330();
  *(v13 + v16[10]) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179868, &qword_23B6D8380);
  v41 = 7;
  sub_23B6D3898();
  sub_23B6D7330();
  *(v13 + v34[11]) = v42;
  LOBYTE(v42) = 8;
  v20 = sub_23B6D72E0();
  v21 = (v13 + v34[12]);
  *v21 = v20;
  v21[1] = v22;
  LOBYTE(v42) = 9;
  v23 = sub_23B6D72E0();
  v24 = (v13 + v34[13]);
  *v24 = v23;
  v24[1] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179888, &qword_23B6D8390);
  v41 = 10;
  sub_23B6D3660(&unk_27E1798E0, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
  sub_23B6D7330();
  v32[1] = 1;
  *(v13 + v34[14]) = v42;
  v41 = 11;
  sub_23B6D7330();
  *(v13 + v34[15]) = v42;
  v41 = 12;
  sub_23B6D7330();
  *(v13 + v34[16]) = v42;
  LOBYTE(v42) = 13;
  v26 = sub_23B6D72E0();
  v28 = v27;
  (*(v37 + 8))(v39, v38);
  v29 = v35;
  v30 = (v13 + v34[17]);
  *v30 = v26;
  v30[1] = v28;
  sub_23B6D3948(v13, v29);
  __swift_destroy_boxed_opaque_existential_0(v40);
  return sub_23B6BD9AC(v13);
}

void sub_23B6D1154(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v14[8] = v8;
    v14[9] = v9;
    v14[0] = a5;
    v14[1] = a6;
    v14[2] = a7;
    v14[3] = a8;
    v12 = _s15ServiceHostViewV11CoordinatorCMa(0, v14);
    sub_23B6BDA08(a3, a4);
    v13 = objc_allocWithZone(v12);
    sub_23B6D22FC(a3, a4);
  }
}

id sub_23B6D121C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v14[0] = a6;
  v14[1] = a7;
  v14[2] = a8;
  v14[3] = a9;
  _s15ServiceHostViewVMa(255, v14);
  swift_getWitnessTable();
  sub_23B6D6F60();
  sub_23B6D6F50();
  v11 = v14[0];
  v12 = sub_23B6D12F4(v14[0], a2, a3);

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    return [objc_allocWithZone(MEMORY[0x277CC5E68]) init];
  }

  return result;
}

id sub_23B6D12F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *MEMORY[0x277D85000];
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = *(a3 + 24);
  v9 = swift_unknownObjectRetain();
  v8(v9, a2, a3);
  v10 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
  v11 = sub_23B6D7040();
  v12 = [v10 initWithExtensionPointIdentifier_];

  v13 = *((v6 & v5) + 0x58);
  v14 = swift_allocObject();
  v14[2] = *((v6 & v5) + 0x50);
  v14[3] = v13;
  v14[4] = *((v6 & v5) + 0x60);
  v15 = *((v6 & v5) + 0x68);
  v14[5] = v15;
  v14[6] = v7;
  v14[7] = a3;
  v16 = *(v15 + 24);
  v17 = v7;
  v16(v12, sub_23B6D4840, v14, v13, v15);

  return v17;
}

void sub_23B6D14A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a3;
  v44 = a7;
  v42 = a5;
  v45 = a2;
  v10 = sub_23B6D6FF0();
  v50 = *(v10 - 8);
  v51 = v10;
  MEMORY[0x28223BE20](v10);
  v48 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_23B6D7010();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_23B6D7240();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x28223BE20](v16);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v52 = &v41 - v23;
  aBlock[0] = a1;
  sub_23B6D70D0();
  swift_getWitnessTable();
  sub_23B6D71A0();
  if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) == 1)
  {
    (*(v15 + 8))(v18, v14);
    if (qword_27E179500 != -1)
    {
      swift_once();
    }

    v24 = sub_23B6D6E20();
    __swift_project_value_buffer(v24, qword_27E17A730);
    v25 = sub_23B6D6E00();
    v26 = sub_23B6D71C0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_23B6BA000, v25, v26, "Failed to find the report service extension.", v27, 2u);
      MEMORY[0x23EEA3EE0](v27, -1, -1);
    }
  }

  else
  {
    v28 = v52;
    (*(v19 + 32))(v52, v18, AssociatedTypeWitness);
    v29 = swift_allocBox();
    (*(a6 + 24))(a4, a6);
    (*(v19 + 16))(v22, v28, AssociatedTypeWitness);
    (*(a6 + 40))(v22, a4, a6);
    (*(a6 + 64))(1, a4, a6);
    sub_23B6CDF34();
    v30 = sub_23B6D7200();
    v31 = swift_allocObject();
    v32 = v42;
    v31[2] = a4;
    v31[3] = v32;
    v33 = v44;
    v34 = v45;
    v31[4] = a6;
    v31[5] = v33;
    v35 = v43;
    v31[6] = v34;
    v31[7] = v35;
    v41 = v29;
    v31[8] = v29;
    aBlock[4] = sub_23B6D4890;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23B6CE7A0;
    aBlock[3] = &block_descriptor_17;
    v36 = _Block_copy(aBlock);
    v37 = v34;

    v38 = v46;
    sub_23B6D7000();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23B6D4B00(&qword_27E1797B8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E179B00, &qword_23B6D8320);
    sub_23B6CE4C8(&qword_27E1797C0, &unk_27E179B00, &qword_23B6D8320, MEMORY[0x277D83970]);
    v39 = v48;
    v40 = v51;
    sub_23B6D7260();
    MEMORY[0x23EEA3790](0, v38, v39, v36);
    _Block_release(v36);

    (*(v50 + 8))(v39, v40);
    (*(v47 + 8))(v38, v49);
    (*(v19 + 8))(v52, AssociatedTypeWitness);
  }
}

uint64_t sub_23B6D1B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_projectBox();
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  v13[3] = a4;
  v13[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, v9, a4);
  return (*(a2 + 48))(v13, ObjectType, a2);
}

uint64_t sub_23B6D1CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_23B6D1D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_23B6D1DD0(uint64_t a1)
{
  swift_getWitnessTable();
  sub_23B6D6F30();
  __break(1u);
}

void sub_23B6D1E10()
{
  v1 = sub_23B6D1F9C();
  if (v1)
  {
    v2 = v1;
    v3 = v0 + qword_27E179958;
    v4 = *(v0 + qword_27E179958);
    v5 = *(v3 + 8);
    sub_23B6BDA1C(v4, v5);
    v6 = sub_23B6D6A00();
    sub_23B6CDAA8(v4, v5);
    v8[4] = sub_23B6D1F10;
    v8[5] = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_23B6D1F1C;
    v8[3] = &block_descriptor_0;
    v7 = _Block_copy(v8);
    [v2 updateClientConfiguration:v6 :v7];
    _Block_release(v7);
    swift_unknownObjectRelease();
  }
}

void sub_23B6D1F1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_23B6D1F9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179798, &unk_23B6D87A0);
  sub_23B6D7210();
  return v1;
}

uint64_t sub_23B6D201C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + qword_27E179960);
  if (v3)
  {
    v7[4] = sub_23B6D2158;
    v7[5] = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_23B6C9DA4;
    v7[3] = &block_descriptor_58;
    v4 = _Block_copy(v7);
    v5 = v3;
    v6 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v4);

    sub_23B6D7250();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E179B30, &qword_23B6D82C8);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_23B6D2158(void *a1)
{
  if (qword_27E179500 != -1)
  {
    swift_once();
  }

  v2 = sub_23B6D6E20();
  __swift_project_value_buffer(v2, qword_27E17A730);
  MEMORY[0x23EEA3D60](a1);
  oslog = sub_23B6D6E00();
  v3 = sub_23B6D71B0();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    MEMORY[0x23EEA3D60](a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797A0, &qword_23B6D82C0);
    v6 = sub_23B6D7060();
    v8 = sub_23B6BD12C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_23B6BA000, oslog, v3, "Failed to create service proxy for service host coordinator: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23EEA3EE0](v5, -1, -1);
    MEMORY[0x23EEA3EE0](v4, -1, -1);
  }

  else
  {
  }
}

id sub_23B6D22FC(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v17 = *MEMORY[0x277D85000] & *v2;
  v16 = sub_23B6D71F0();
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23B6D71E0();
  MEMORY[0x28223BE20](v6);
  v7 = sub_23B6D7010();
  MEMORY[0x28223BE20](v7 - 8);
  *(v2 + qword_27E179960) = 0;
  v15 = qword_27E179968;
  v8 = sub_23B6CDF34();
  v14[1] = "activityui.report-service";
  v14[2] = v8;
  sub_23B6D7000();
  *&v20[0] = MEMORY[0x277D84F90];
  sub_23B6D4B00(&unk_27E179B10, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797B0, &unk_23B6D8790);
  sub_23B6CE4C8(&unk_27E179B20, &qword_27E1797B0, &unk_23B6D8790, MEMORY[0x277D83970]);
  sub_23B6D7260();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v16);
  *(v2 + v15) = sub_23B6D7230();
  v9 = (v2 + qword_27E179958);
  v10 = v19;
  *v9 = v18;
  v9[1] = v10;
  v11 = *(v17 + 96);
  v20[0] = *(v17 + 80);
  v20[1] = v11;
  v12 = _s15ServiceHostViewV11CoordinatorCMa(0, v20);
  v21.receiver = v2;
  v21.super_class = v12;
  return objc_msgSendSuper2(&v21, sel_init);
}

void sub_23B6D2604(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_23B6D25F8(v4);
}

void sub_23B6D266C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a1;
  v8 = a4;
  sub_23B6D4B64();
}

void sub_23B6D26D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = (*MEMORY[0x277D85000] & *v2);
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 64))(ObjectType, a2);
  v8 = [objc_opt_self() interfaceWithProtocol_];
  [v7 setRemoteObjectInterface_];

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v41 = sub_23B6D4A28;
  v42 = v10;
  v37 = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_23B6CE7A0;
  v40 = &block_descriptor_35;
  v11 = v5[10];
  v10[2] = v11;
  v12 = v5[11];
  v10[3] = v12;
  v13 = v5[12];
  v10[4] = v13;
  v14 = v5[13];
  v10[5] = v14;
  v10[6] = v9;
  v15 = _Block_copy(&v37);

  [v7 setInterruptionHandler_];
  _Block_release(v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *&v18 = v11;
  *(&v18 + 1) = v12;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  *(v17 + 16) = v18;
  *(v17 + 32) = v19;
  *(v17 + 48) = v16;
  v41 = sub_23B6D4A38;
  v42 = v17;
  v37 = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_23B6CE7A0;
  v40 = &block_descriptor_42;
  v20 = _Block_copy(&v37);

  [v7 setInvalidationHandler_];
  _Block_release(v20);
  [v7 activate];
  v21 = *&v3[qword_27E179968];
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  *(v22 + 24) = v7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_23B6D4AB4;
  *(v23 + 24) = v22;
  v41 = sub_23B6D4BC0;
  v42 = v23;
  v37 = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_23B6CA604;
  v40 = &block_descriptor_52;
  v24 = _Block_copy(&v37);
  v25 = v3;
  v26 = v7;

  dispatch_sync(v21, v24);

  _Block_release(v24);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v27 = sub_23B6D1F9C();
  if (v27)
  {
    v28 = v27;
    v29 = *&v25[qword_27E179958];
    v30 = *&v25[qword_27E179958 + 8];
    sub_23B6BDA1C(v29, v30);
    v31 = sub_23B6D6A00();
    sub_23B6CDAA8(v29, v30);
    v41 = sub_23B6D2EE8;
    v42 = 0;
    v37 = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_23B6D1F1C;
    v40 = &block_descriptor_55;
    v32 = _Block_copy(&v37);
    [v28 discoverClientExtensionWithConfiguration:v31 :v32];
    _Block_release(v32);

    swift_unknownObjectRelease();

    return;
  }

  if (qword_27E179500 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v33 = sub_23B6D6E20();
  __swift_project_value_buffer(v33, qword_27E17A730);
  v34 = sub_23B6D6E00();
  v35 = sub_23B6D71D0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_23B6BA000, v34, v35, "Can't discover the client's extension without a valid XPC proxy", v36, 2u);
    MEMORY[0x23EEA3EE0](v36, -1, -1);
  }
}

void sub_23B6D2DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, char a7)
{
  if (qword_27E179500 != -1)
  {
    swift_once();
  }

  v9 = sub_23B6D6E20();
  __swift_project_value_buffer(v9, qword_27E17A730);
  v10 = sub_23B6D6E00();
  v11 = sub_23B6D71D0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23B6BA000, v10, v11, a6, v12, 2u);
    MEMORY[0x23EEA3EE0](v12, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_23B6D30B4(a7 & 1);
  }
}

void sub_23B6D2EF4(void *a1, const char *a2, ...)
{
  if (a1)
  {
    MEMORY[0x23EEA3D60]();
    if (qword_27E179500 != -1)
    {
      swift_once();
    }

    v4 = sub_23B6D6E20();
    __swift_project_value_buffer(v4, qword_27E17A730);
    MEMORY[0x23EEA3D60](a1);
    v5 = sub_23B6D6E00();
    v6 = sub_23B6D71B0();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      MEMORY[0x23EEA3D60](a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797A0, &qword_23B6D82C0);
      v9 = sub_23B6D7060();
      v11 = sub_23B6BD12C(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_23B6BA000, v5, v6, a2, v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x23EEA3EE0](v8, -1, -1);
      MEMORY[0x23EEA3EE0](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_23B6D30B4(char a1)
{
  v3 = *&v1[qword_27E179968];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_23B6D4940;
  *(v5 + 24) = v4;
  v10[4] = sub_23B6D49B0;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23B6CA604;
  v10[3] = &block_descriptor_26;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id sub_23B6D3278()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v4[0] = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v4[1] = v1;
  v2 = _s15ServiceHostViewV11CoordinatorCMa(0, v4);
  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_23B6D32F0(uint64_t a1)
{
  sub_23B6CDAA8(*(a1 + qword_27E179958), *(a1 + qword_27E179958 + 8));

  v2 = *(a1 + qword_27E179968);
}

uint64_t sub_23B6D3350(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1797F8, &qword_23B6D8348);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23B6D33FC()
{
  result = qword_27E179808;
  if (!qword_27E179808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E179808);
  }

  return result;
}

unint64_t sub_23B6D3450()
{
  result = qword_27E179830;
  if (!qword_27E179830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E179828, &qword_23B6D8360);
    sub_23B6CE4C8(&qword_27E179838, &qword_27E179840, &qword_23B6D8368, MEMORY[0x277CD4AF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E179830);
  }

  return result;
}

unint64_t sub_23B6D3500()
{
  result = qword_27E179850;
  if (!qword_27E179850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E179848, &qword_23B6D8370);
    sub_23B6CE4C8(&qword_27E179858, &qword_27E179860, &qword_23B6D8378, MEMORY[0x277CD4AF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E179850);
  }

  return result;
}

unint64_t sub_23B6D35B0()
{
  result = qword_27E179870;
  if (!qword_27E179870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E179868, &qword_23B6D8380);
    sub_23B6CE4C8(&qword_27E179878, &qword_27E179880, &qword_23B6D8388, MEMORY[0x277CD4AF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E179870);
  }

  return result;
}

uint64_t sub_23B6D3660(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E179888, &qword_23B6D8390);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B6D36CC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E179818, &qword_23B6D8358);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B6D3738()
{
  result = qword_27E1798B0;
  if (!qword_27E1798B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E179828, &qword_23B6D8360);
    sub_23B6CE4C8(&qword_27E1798B8, &qword_27E179840, &qword_23B6D8368, MEMORY[0x277CD4B10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1798B0);
  }

  return result;
}

unint64_t sub_23B6D37E8()
{
  result = qword_27E1798C0;
  if (!qword_27E1798C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E179848, &qword_23B6D8370);
    sub_23B6CE4C8(&qword_27E1798C8, &qword_27E179860, &qword_23B6D8378, MEMORY[0x277CD4B10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1798C0);
  }

  return result;
}

unint64_t sub_23B6D3898()
{
  result = qword_27E1798D0;
  if (!qword_27E1798D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E179868, &qword_23B6D8380);
    sub_23B6CE4C8(&qword_27E1798D8, &qword_27E179880, &qword_23B6D8388, MEMORY[0x277CD4B10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1798D0);
  }

  return result;
}

uint64_t sub_23B6D3948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceActivityReport.ClientConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B6D39C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23B6D69D0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23B6D3A80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23B6D69D0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23B6D3B24(uint64_t a1)
{
  sub_23B6D69D0();
  if (v1 <= 0x3F)
  {
    sub_23B6D3DD8(319, &qword_27E179900, MEMORY[0x277D83B88]);
    if (v2 <= 0x3F)
    {
      sub_23B6D3CD8(319);
      if (v3 <= 0x3F)
      {
        sub_23B6D3D3C(319, &qword_27E179910, &qword_27E179840, &qword_23B6D8368, &qword_27E179918);
        if (v4 <= 0x3F)
        {
          sub_23B6D3D3C(319, &qword_27E179920, &qword_27E179860, &qword_23B6D8378, &qword_27E179928);
          if (v5 <= 0x3F)
          {
            sub_23B6D3D3C(319, &qword_27E179930, &qword_27E179880, &qword_23B6D8388, &qword_27E179938);
            if (v6 <= 0x3F)
            {
              sub_23B6D3DD8(319, &qword_27E179940, MEMORY[0x277D837D0]);
              if (v7 <= 0x3F)
              {
                sub_23B6D3E24();
                if (v8 <= 0x3F)
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
}

void sub_23B6D3CD8(uint64_t a1)
{
  if (!qword_27E179908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E179818, &qword_23B6D8358);
    v1 = sub_23B6D7240();
    if (!v2)
    {
      atomic_store(v1, &qword_27E179908);
    }
  }
}

void sub_23B6D3D3C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    sub_23B6CE4C8(a5, a3, a4, MEMORY[0x277CD4B00]);
    v9 = sub_23B6D7190();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_23B6D3DD8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23B6D7240();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23B6D3E24()
{
  if (!qword_27E179948)
  {
    v0 = sub_23B6D7190();
    if (!v1)
    {
      atomic_store(v0, &qword_27E179948);
    }
  }
}

uint64_t _s19ClientConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s19ClientConfigurationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23B6D4060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23B6D40A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B6D40F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23B6D4168()
{
  result = qword_27E179AD0;
  if (!qword_27E179AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E179AD0);
  }

  return result;
}

unint64_t sub_23B6D41C0()
{
  result = qword_27E179AD8;
  if (!qword_27E179AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E179AD8);
  }

  return result;
}

unint64_t sub_23B6D4218()
{
  result = qword_27E179AE0;
  if (!qword_27E179AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E179AE0);
  }

  return result;
}

uint64_t sub_23B6D426C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_23B6D73C0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656D676573 && a2 == 0xE700000000000000 || (sub_23B6D73C0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (sub_23B6D73C0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7372657375 && a2 == 0xE500000000000000 || (sub_23B6D73C0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736C65646F6DLL && a2 == 0xE600000000000000 || (sub_23B6D73C0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746163696C707061 && a2 == 0xEC000000736E6F69 || (sub_23B6D73C0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_23B6D73C0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69616D6F44626577 && a2 == 0xEA0000000000736ELL || (sub_23B6D73C0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x44746C4172657375 && a2 == 0xEB00000000444953 || (sub_23B6D73C0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023B6D8FB0 == a2 || (sub_23B6D73C0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023B6D8FD0 == a2 || (sub_23B6D73C0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023B6D8FF0 == a2 || (sub_23B6D73C0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x736E69616D6F64 && a2 == 0xE700000000000000 || (sub_23B6D73C0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023B6D9010 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_23B6D73C0();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

void sub_23B6D46D4(uint64_t a1, unint64_t a2)
{
  v3 = (v2 + qword_27E179958);
  v4 = *(v2 + qword_27E179958);
  v5 = *(v2 + qword_27E179958 + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_23B6BDA1C(a1, a2);
  sub_23B6CDAA8(v4, v5);

  sub_23B6D1E10();
}

void sub_23B6D472C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12[0] = a6;
  v12[1] = a7;
  v12[2] = a8;
  v12[3] = a9;
  _s15ServiceHostViewVMa(255, v12);
  swift_getWitnessTable();
  sub_23B6D6F60();
  sub_23B6D6F50();
  if (a5 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v11 = v12[0];
    sub_23B6BDA08(a4, a5);
    sub_23B6D46D4(a4, a5);
    sub_23B6CDA94(a4, a5);
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23B6D4808()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23B6D4850()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23B6D4908()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_23B6D4940()
{
  v1 = *(v0 + 24);
  if (*(v0 + 16) == 1)
  {
    [*(v1 + qword_27E179960) invalidate];
  }

  v2 = *(v1 + qword_27E179960);
  *(v1 + qword_27E179960) = 0;
}

uint64_t sub_23B6D49B8()
{
  MEMORY[0x23EEA3F60](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B6D49F0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23B6D4A74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_23B6D4AB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + qword_27E179960);
  *(v1 + qword_27E179960) = v2;
  v3 = v2;
}

uint64_t sub_23B6D4B00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DeviceActivityData.activitySegments.getter@<X0>(char **a1@<X8>)
{
  v33 = a1;
  v1 = sub_23B6D6C10();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_23B6D6D60();
  v4 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23B6D6B00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23B6D6B70();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B6D6B80();
  v14 = sub_23B6D6B60();
  v27 = v15;
  v28 = v14;
  (*(v11 + 8))(v13, v10);
  sub_23B6D6B90();
  v16 = sub_23B6D6AC0();
  v18 = v17;
  (*(v7 + 8))(v9, v6);
  sub_23B6D6B40();
  v19 = v29;
  sub_23B6D6D40();
  (*(v30 + 8))(v3, v31);
  v20 = sub_23B6D6B50();
  sub_23B6D6B30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179BA0, &qword_23B6D87C0);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v27;
  *(v21 + 4) = v28;
  *(v21 + 5) = v22;
  *(v21 + 6) = v16;
  *(v21 + 7) = v18;
  v23 = qword_27E179BA8;
  v24 = v19;
  v25 = v32;
  (*(v4 + 32))(&v21[qword_27E179BA8], v24, v32);
  (*(v4 + 56))(&v21[v23], 0, 1, v25);
  *&v21[qword_27E179BB0] = v20;
  result = sub_23B6D4F58(v34, &v21[qword_27E179BB8]);
  *v33 = v21;
  return result;
}

uint64_t sub_23B6D4F58(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

double sub_23B6D4FE8@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = v7;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  v9 = qword_27E179BA8;
  v10 = sub_23B6D6D60();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  *(v8 + qword_27E179BB0) = 0;
  v11 = v8 + qword_27E179BB8;
  *(v11 + 32) = 0;
  result = 0.0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *a4 = v8;
  return result;
}

uint64_t DeviceActivityResults.makeAsyncIterator()()
{
  sub_23B6D5BD8();
}

uint64_t sub_23B6D50F4(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = *v1;
  v2[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179788, &qword_23B6D82A0);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E179BD8, &qword_23B6D87F0);
  v2[17] = swift_task_alloc();
  v3 = sub_23B6D6D60();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B6D5250, 0, 0);
}

uint64_t sub_23B6D5250()
{
  v1 = *(v0 + 104);
  if (v1[3])
  {
    v3 = v1[2];
    v2 = v1 + 2;
    v4 = *(*(v0 + 112) + 88);
    if (v3 < sub_23B6D70C0())
    {
      v5 = *(v0 + 96);
      sub_23B6D70E0();
      (*(*(v4 - 8) + 56))(v5, 0, 1, v4);
      v6 = *v2 + 1;
      if (!__OFADD__(*v2, 1))
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    v1 = *(v0 + 104);
  }

  v7 = v1[7];
  if (v7)
  {
    v8 = v1[6];
    v9 = *(v0 + 144);
    v10 = *(v0 + 152);
    v11 = *(v0 + 136);
    sub_23B6CDAFC(v1 + qword_27E179BA8, v11, &qword_27E179BD8, &qword_23B6D87F0);
    if ((*(v10 + 48))(v11, 1, v9) == 1)
    {
      sub_23B6BCE90(*(v0 + 136), &qword_27E179BD8, &qword_23B6D87F0);
    }

    else
    {
      v12 = *(v0 + 104);
      (*(*(v0 + 152) + 32))(*(v0 + 160), *(v0 + 136), *(v0 + 144));
      v13 = *(v12 + qword_27E179BB0);
      if (v13)
      {
        sub_23B6CDAFC(*(v0 + 104) + qword_27E179BB8, v0 + 56, qword_27E179BE0, qword_23B6D87F8);
        if (*(v0 + 80))
        {
          v14 = *(v0 + 104);
          v15 = sub_23B6D4F58((v0 + 56), v0 + 16);
          v23 = *(v14 + 16);
          v24 = *(v13 + 16);
          if (v23 < v24)
          {
            if (v23 < v24)
            {
              v25 = *(v0 + 104);
              v26 = v13 + 16 * v23;
              v27 = *(v26 + 40);
              v35 = *(v26 + 32);
              *(v0 + 168) = v27;
              __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
              v28 = *(v25 + 32);
              v29 = *(v25 + 40);

              v30 = swift_task_alloc();
              *(v0 + 176) = v30;
              *v30 = v0;
              v30[1] = sub_23B6D5610;
              v20 = *(v0 + 160);
              v15 = *(v0 + 128);
              v16 = v28;
              v17 = v29;
              v18 = v8;
              v19 = v7;
              v21 = v35;
              v22 = v27;

              return MEMORY[0x2821164A0](v15, v16, v17, v18, v19, v20, v21, v22);
            }

LABEL_25:
            __break(1u);
            return MEMORY[0x2821164A0](v15, v16, v17, v18, v19, v20, v21, v22);
          }

          (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        }

        else
        {
          (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
          sub_23B6BCE90(v0 + 56, qword_27E179BE0, qword_23B6D87F8);
        }
      }

      else
      {
        (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
      }
    }
  }

  v31 = *(v0 + 104);
  v15 = (*(*(*(*(v0 + 112) + 88) - 8) + 56))(*(v0 + 96), 1, 1);
  v32 = *(v31 + 16);
  v2 = (v31 + 16);
  v6 = v32 + 1;
  if (__OFADD__(v32, 1))
  {
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  *v2 = v6;

  v33 = *(v0 + 8);

  return v33();
}