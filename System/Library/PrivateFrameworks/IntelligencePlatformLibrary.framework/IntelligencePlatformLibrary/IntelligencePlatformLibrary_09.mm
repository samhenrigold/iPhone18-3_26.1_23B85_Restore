id Library.Streams.IntelligenceFlow.Telemetry.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex.__allocating_init(name:fields:streamIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_allocWithZone(v5);
  v7 = sub_19393C570();

  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  v8 = sub_19393C6C0();

  v9 = sub_19393C570();

  v10 = [v6 initWithName:v7 fields:v8 streamIdentifier:v9];

  return v10;
}

id Library.Streams.IntelligenceFlow.Telemetry.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Library.Streams.IntelligenceFlow.Telemetry.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1934EF014()
{
  v0 = objc_allocWithZone(type metadata accessor for Library.Streams.IntelligenceFlow.Telemetry.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex());
  result = sub_1934EDD30();
  qword_1ED510218 = result;
  return result;
}

uint64_t *sub_1934EF048()
{
  if (qword_1ED510210 != -1)
  {
    OUTLINED_FUNCTION_5_24(&qword_1ED510210);
  }

  return &qword_1ED510218;
}

id static Library.Streams.IntelligenceFlow.Telemetry.Indexes.Datestamp_ClientSessionID_ClientRequestID.getter()
{
  if (qword_1ED510210 != -1)
  {
    OUTLINED_FUNCTION_5_24(&qword_1ED510210);
  }

  v1 = qword_1ED510218;

  return v1;
}

_BYTE *_s7IndexesOwst_0(_BYTE *result, int a2, int a3)
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

uint64_t sub_1934EF3D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED510238);
  v4 = __swift_project_value_buffer(v3, qword_1ED510238);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

unint64_t static Library.Streams.IntelligenceFlow.Telemetry.attribute(_:)(void (*a1)(void))
{
  result = sub_1934EF600(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934EF63C(void (*a1)(void))
{
  result = sub_1934EF600(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934EF6A4(uint64_t a1)
{
  result = sub_1934EF6CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1934EF6CC()
{
  result = qword_1ED5028B8;
  if (!qword_1ED5028B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5028B8);
  }

  return result;
}

_BYTE *_s9TelemetryOwst(_BYTE *result, int a2, int a3)
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

uint64_t IntelligenceFlowTarget.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!v3 & v2)
  {
    switch(result)
    {
      case 1:
        result = 0;
        break;
      case 4001:
        v4 = 1;
        result = 37;
        goto LABEL_45;
      case 3:
        v4 = 1;
        result = 2;
        goto LABEL_45;
      case 101:
        v4 = 1;
        result = 3;
        goto LABEL_45;
      case 102:
        v4 = 1;
        result = 4;
        goto LABEL_45;
      case 201:
        v4 = 1;
        result = 5;
        goto LABEL_45;
      case 202:
        v4 = 1;
        result = 6;
        goto LABEL_45;
      case 401:
        v4 = 1;
        result = 18;
        goto LABEL_45;
      case 402:
        v4 = 1;
        result = 19;
        goto LABEL_45;
      case 601:
        v4 = 1;
        result = 28;
        goto LABEL_45;
      case 602:
        v4 = 1;
        result = 29;
        goto LABEL_45;
      case 3001:
        v4 = 1;
        result = 35;
        goto LABEL_45;
      case 3002:
        v4 = 1;
        result = 36;
        goto LABEL_45;
      case 2:
        result = 1;
        break;
      default:
        v4 = 0;
        goto LABEL_45;
    }

    v4 = 1;
  }

  else
  {
    switch(result)
    {
      case 301:
        v4 = 1;
        result = 7;
        break;
      case 302:
        v4 = 1;
        result = 8;
        break;
      case 303:
        v4 = 1;
        result = 9;
        break;
      case 304:
        v4 = 1;
        result = 10;
        break;
      case 305:
        v4 = 1;
        result = 11;
        break;
      case 306:
        v4 = 1;
        result = 12;
        break;
      case 307:
        v4 = 1;
        result = 13;
        break;
      case 308:
        v4 = 1;
        result = 14;
        break;
      case 309:
        v4 = 1;
        result = 15;
        break;
      case 310:
        v4 = 1;
        result = 16;
        break;
      case 311:
        v4 = 1;
        result = 17;
        break;
      default:
        JUMPOUT(0);
    }
  }

LABEL_45:
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t static IntelligenceFlowTarget.allCases.getter()
{
  v0 = sub_1934F0E4C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v3 = v0;
  v5 = *(v0 + 2);
  v4 = *(v0 + 3);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    v0 = OUTLINED_FUNCTION_1_28(v4, v0);
    v3 = v0;
    v4 = *(v0 + 3);
    v6 = v4 >> 1;
  }

  *(v3 + 16) = v7;
  v8 = v3 + 16 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v9 = v5 + 2;
  if (v6 < (v5 + 2))
  {
    v0 = OUTLINED_FUNCTION_2_27(v4, v3);
    v3 = v0;
    v4 = *(v0 + 3);
    v6 = v4 >> 1;
  }

  *(v3 + 16) = v9;
  v10 = v3 + 16 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  v11 = v5 + 3;
  if (v6 < (v5 + 3))
  {
    v0 = sub_1934F0E4C((v4 > 1), v5 + 3, 1, v3);
    v3 = v0;
  }

  *(v3 + 16) = v11;
  v12 = v3 + 16 * v9;
  *(v12 + 32) = 1;
  *(v12 + 40) = 1;
  v13 = *(v3 + 24);
  if ((v5 + 4) > (v13 >> 1))
  {
    v0 = OUTLINED_FUNCTION_1_28(v13, v3);
    v3 = v0;
  }

  *(v3 + 16) = v5 + 4;
  v14 = v3 + 16 * v11;
  *(v14 + 32) = 2;
  *(v14 + 40) = 1;
  v15 = *(v3 + 24);
  if ((v5 + 5) > (v15 >> 1))
  {
    v0 = OUTLINED_FUNCTION_2_27(v15, v3);
    v3 = v0;
  }

  OUTLINED_FUNCTION_47_5(v0, v1, v2, v3);
  OUTLINED_FUNCTION_4(v16);
  if ((v5 + 6) > (v21 >> 1))
  {
    v17 = OUTLINED_FUNCTION_1_28(v21, v20);
    v20 = v17;
  }

  OUTLINED_FUNCTION_50(v17, v18, v19, v20);
  OUTLINED_FUNCTION_4(v22);
  if ((v5 + 7) > (v27 >> 1))
  {
    v23 = OUTLINED_FUNCTION_2_27(v27, v26);
    v26 = v23;
  }

  OUTLINED_FUNCTION_47_5(v23, v24, v25, v26);
  OUTLINED_FUNCTION_4(v28);
  if ((v5 + 8) > (v33 >> 1))
  {
    v29 = OUTLINED_FUNCTION_1_28(v33, v32);
    v32 = v29;
  }

  OUTLINED_FUNCTION_50(v29, v30, v31, v32);
  OUTLINED_FUNCTION_4(v34);
  if ((v5 + 9) > (v39 >> 1))
  {
    v35 = OUTLINED_FUNCTION_2_27(v39, v38);
    v38 = v35;
  }

  OUTLINED_FUNCTION_47_5(v35, v36, v37, v38);
  OUTLINED_FUNCTION_4(v40);
  if ((v5 + 10) > (v45 >> 1))
  {
    v41 = OUTLINED_FUNCTION_1_28(v45, v44);
    v44 = v41;
  }

  OUTLINED_FUNCTION_50(v41, v42, v43, v44);
  OUTLINED_FUNCTION_4(v46);
  if ((v5 + 11) > (v51 >> 1))
  {
    v47 = OUTLINED_FUNCTION_2_27(v51, v50);
    v50 = v47;
  }

  OUTLINED_FUNCTION_47_5(v47, v48, v49, v50);
  OUTLINED_FUNCTION_4(v52);
  if ((v5 + 12) > (v57 >> 1))
  {
    v53 = OUTLINED_FUNCTION_1_28(v57, v56);
    v56 = v53;
  }

  OUTLINED_FUNCTION_50(v53, v54, v55, v56);
  OUTLINED_FUNCTION_4(v58);
  if ((v5 + 13) > (v63 >> 1))
  {
    v59 = OUTLINED_FUNCTION_2_27(v63, v62);
    v62 = v59;
  }

  OUTLINED_FUNCTION_47_5(v59, v60, v61, v62);
  OUTLINED_FUNCTION_4(v64);
  if ((v5 + 14) > (v69 >> 1))
  {
    v65 = OUTLINED_FUNCTION_1_28(v69, v68);
    v68 = v65;
  }

  OUTLINED_FUNCTION_50(v65, v66, v67, v68);
  OUTLINED_FUNCTION_4(v70);
  if ((v5 + 15) > (v75 >> 1))
  {
    v71 = OUTLINED_FUNCTION_2_27(v75, v74);
    v74 = v71;
  }

  OUTLINED_FUNCTION_47_5(v71, v72, v73, v74);
  OUTLINED_FUNCTION_4(v76);
  if ((v5 + 16) > (v81 >> 1))
  {
    v77 = OUTLINED_FUNCTION_1_28(v81, v80);
    v80 = v77;
  }

  OUTLINED_FUNCTION_50(v77, v78, v79, v80);
  OUTLINED_FUNCTION_4(v82);
  if ((v5 + 17) > (v87 >> 1))
  {
    v83 = OUTLINED_FUNCTION_2_27(v87, v86);
    v86 = v83;
  }

  OUTLINED_FUNCTION_47_5(v83, v84, v85, v86);
  OUTLINED_FUNCTION_4(v88);
  if ((v5 + 18) > (v93 >> 1))
  {
    v89 = OUTLINED_FUNCTION_1_28(v93, v92);
    v92 = v89;
  }

  OUTLINED_FUNCTION_50(v89, v90, v91, v92);
  OUTLINED_FUNCTION_4(v94);
  if ((v5 + 19) > (v99 >> 1))
  {
    v95 = OUTLINED_FUNCTION_2_27(v99, v98);
    v98 = v95;
  }

  OUTLINED_FUNCTION_47_5(v95, v96, v97, v98);
  OUTLINED_FUNCTION_4(v100);
  if ((v5 + 20) > (v105 >> 1))
  {
    v101 = OUTLINED_FUNCTION_1_28(v105, v104);
    v104 = v101;
  }

  OUTLINED_FUNCTION_50(v101, v102, v103, v104);
  OUTLINED_FUNCTION_4(v106);
  if ((v5 + 21) > (v111 >> 1))
  {
    v107 = OUTLINED_FUNCTION_2_27(v111, v110);
    v110 = v107;
  }

  OUTLINED_FUNCTION_47_5(v107, v108, v109, v110);
  OUTLINED_FUNCTION_4(v112);
  if ((v5 + 22) > (v117 >> 1))
  {
    v113 = OUTLINED_FUNCTION_1_28(v117, v116);
    v116 = v113;
  }

  OUTLINED_FUNCTION_50(v113, v114, v115, v116);
  OUTLINED_FUNCTION_4(v118);
  if ((v5 + 23) > (v123 >> 1))
  {
    v119 = OUTLINED_FUNCTION_2_27(v123, v122);
    v122 = v119;
  }

  OUTLINED_FUNCTION_47_5(v119, v120, v121, v122);
  OUTLINED_FUNCTION_4(v124);
  if ((v5 + 24) > (v129 >> 1))
  {
    v125 = OUTLINED_FUNCTION_1_28(v129, v128);
    v128 = v125;
  }

  OUTLINED_FUNCTION_50(v125, v126, v127, v128);
  OUTLINED_FUNCTION_4(v130);
  if ((v5 + 25) > (v135 >> 1))
  {
    v131 = OUTLINED_FUNCTION_2_27(v135, v134);
    v134 = v131;
  }

  OUTLINED_FUNCTION_47_5(v131, v132, v133, v134);
  OUTLINED_FUNCTION_4(v136);
  if ((v5 + 26) > (v141 >> 1))
  {
    v137 = OUTLINED_FUNCTION_1_28(v141, v140);
    v140 = v137;
  }

  OUTLINED_FUNCTION_50(v137, v138, v139, v140);
  OUTLINED_FUNCTION_4(v142);
  if ((v5 + 27) > (v147 >> 1))
  {
    v143 = OUTLINED_FUNCTION_2_27(v147, v146);
    v146 = v143;
  }

  OUTLINED_FUNCTION_47_5(v143, v144, v145, v146);
  OUTLINED_FUNCTION_4(v148);
  if ((v5 + 28) > (v153 >> 1))
  {
    v149 = OUTLINED_FUNCTION_1_28(v153, v152);
    v152 = v149;
  }

  OUTLINED_FUNCTION_50(v149, v150, v151, v152);
  OUTLINED_FUNCTION_4(v154);
  if ((v5 + 29) > (v159 >> 1))
  {
    v155 = OUTLINED_FUNCTION_2_27(v159, v158);
    v158 = v155;
  }

  OUTLINED_FUNCTION_47_5(v155, v156, v157, v158);
  OUTLINED_FUNCTION_4(v160);
  if ((v5 + 30) > (v165 >> 1))
  {
    v161 = OUTLINED_FUNCTION_1_28(v165, v164);
    v164 = v161;
  }

  OUTLINED_FUNCTION_50(v161, v162, v163, v164);
  OUTLINED_FUNCTION_4(v166);
  if ((v5 + 31) > (v171 >> 1))
  {
    v167 = OUTLINED_FUNCTION_2_27(v171, v170);
    v170 = v167;
  }

  OUTLINED_FUNCTION_47_5(v167, v168, v169, v170);
  OUTLINED_FUNCTION_4(v172);
  if ((v5 + 32) > (v177 >> 1))
  {
    v173 = OUTLINED_FUNCTION_1_28(v177, v176);
    v176 = v173;
  }

  OUTLINED_FUNCTION_50(v173, v174, v175, v176);
  OUTLINED_FUNCTION_4(v178);
  if ((v5 + 33) > (v183 >> 1))
  {
    v179 = OUTLINED_FUNCTION_2_27(v183, v182);
    v182 = v179;
  }

  OUTLINED_FUNCTION_47_5(v179, v180, v181, v182);
  OUTLINED_FUNCTION_4(v184);
  if ((v5 + 34) > (v189 >> 1))
  {
    v185 = OUTLINED_FUNCTION_1_28(v189, v188);
    v188 = v185;
  }

  OUTLINED_FUNCTION_50(v185, v186, v187, v188);
  OUTLINED_FUNCTION_4(v190);
  if ((v5 + 35) > (v195 >> 1))
  {
    v191 = OUTLINED_FUNCTION_2_27(v195, v194);
    v194 = v191;
  }

  OUTLINED_FUNCTION_47_5(v191, v192, v193, v194);
  OUTLINED_FUNCTION_4(v196);
  if ((v5 + 36) > (v201 >> 1))
  {
    v197 = OUTLINED_FUNCTION_1_28(v201, v200);
    v200 = v197;
  }

  OUTLINED_FUNCTION_50(v197, v198, v199, v200);
  OUTLINED_FUNCTION_4(v202);
  if ((v5 + 37) > (v207 >> 1))
  {
    v203 = OUTLINED_FUNCTION_2_27(v207, v206);
    v206 = v203;
  }

  OUTLINED_FUNCTION_47_5(v203, v204, v205, v206);
  OUTLINED_FUNCTION_4(v208);
  if ((v5 + 38) > (v213 >> 1))
  {
    v209 = OUTLINED_FUNCTION_1_28(v213, v212);
    v212 = v209;
  }

  OUTLINED_FUNCTION_50(v209, v210, v211, v212);
  OUTLINED_FUNCTION_4(v214);
  if ((v5 + 39) > (v219 >> 1))
  {
    v215 = OUTLINED_FUNCTION_2_27(v219, v218);
    v218 = v215;
  }

  OUTLINED_FUNCTION_47_5(v215, v216, v217, v218);
  *(v220 + 32) = 37;
  *(v220 + 40) = 1;
  return v221;
}

void IntelligenceFlowTarget.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 8:
      case 0xBLL:
      case 0xCLL:
      case 0xDLL:
      case 0x11:
      case 0x12:
      case 0x1DLL:
      case 0x25:
        OUTLINED_FUNCTION_38();
        break;
      default:
        OUTLINED_FUNCTION_8_25();
        break;
    }
  }
}

uint64_t IntelligenceFlowTarget.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9(0x6E776F6E6B6E55, 0xE700000000000000) & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_38();
  v11 = a1 == 0xD000000000000017 && v10 == a2;
  if (v11 || (OUTLINED_FUNCTION_0_9(0xD000000000000017, v10) & 1) != 0)
  {

    v8 = 0;
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_38();
  v13 = a1 == 0xD000000000000014 && v12 == a2;
  if (v13 || (OUTLINED_FUNCTION_0_9(0xD000000000000014, v12) & 1) != 0)
  {

    v8 = 1;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_38();
  v15 = a1 == 0xD000000000000012 && v14 == a2;
  if (v15 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, v14) & 1) != 0)
  {

    v9 = 1;
    v8 = 2;
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v17 = a1 == 0xD00000000000001BLL && v16 == a2;
    if (v17 || (OUTLINED_FUNCTION_0_9(0xD00000000000001BLL, v16) & 1) != 0)
    {

      v9 = 1;
      v8 = 3;
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v19 = a1 == 0xD00000000000001CLL && v18 == a2;
      if (v19 || (OUTLINED_FUNCTION_0_9(0xD00000000000001CLL, v18) & 1) != 0)
      {

        v9 = 1;
        v8 = 4;
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v21 = a1 == 0xD000000000000019 && v20 == a2;
        if (v21 || (OUTLINED_FUNCTION_0_9(0xD000000000000019, v20) & 1) != 0)
        {

          v9 = 1;
          v8 = 5;
        }

        else
        {
          OUTLINED_FUNCTION_38();
          v23 = a1 == 0xD00000000000001ALL && v22 == a2;
          if (v23 || (OUTLINED_FUNCTION_0_9(0xD00000000000001ALL, v22) & 1) != 0)
          {

            v9 = 1;
            v8 = 6;
          }

          else
          {
            OUTLINED_FUNCTION_60();
            v25 = v6 && v24 == a2;
            if (v25 || (OUTLINED_FUNCTION_0_9(0xD000000000000017, v24) & 1) != 0)
            {

              v9 = 1;
              v8 = 7;
            }

            else
            {
              OUTLINED_FUNCTION_96_2();
              v27 = v6 && v26 == a2;
              if (v27 || (OUTLINED_FUNCTION_0_9(0xD000000000000018, v26) & 1) != 0)
              {

                v9 = 1;
                v8 = 8;
              }

              else
              {
                OUTLINED_FUNCTION_38();
                v29 = a1 == 0xD000000000000029 && v28 == a2;
                if (v29 || (OUTLINED_FUNCTION_0_9(0xD000000000000029, v28) & 1) != 0)
                {

                  v9 = 1;
                  v8 = 9;
                }

                else
                {
                  OUTLINED_FUNCTION_60();
                  v31 = v6 && v30 == a2;
                  if (v31 || (OUTLINED_FUNCTION_0_9(0xD000000000000029, v30) & 1) != 0)
                  {

                    v9 = 1;
                    v8 = 10;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_38();
                    v33 = a1 == 0xD00000000000003CLL && v32 == a2;
                    if (v33 || (OUTLINED_FUNCTION_0_9(0xD00000000000003CLL, v32) & 1) != 0)
                    {

                      v9 = 1;
                      v8 = 11;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_38();
                      v35 = a1 == 0xD00000000000003BLL && v34 == a2;
                      if (v35 || (OUTLINED_FUNCTION_0_9(0xD00000000000003BLL, v34) & 1) != 0)
                      {

                        v9 = 1;
                        v8 = 12;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_60();
                        v37 = v6 && v36 == a2;
                        if (v37 || (OUTLINED_FUNCTION_0_9(0xD00000000000003BLL, v36) & 1) != 0)
                        {

                          v9 = 1;
                          v8 = 13;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_38();
                          v39 = a1 == 0xD00000000000004ELL && v38 == a2;
                          if (v39 || (OUTLINED_FUNCTION_0_9(0xD00000000000004ELL, v38) & 1) != 0)
                          {

                            v9 = 1;
                            v8 = 14;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_60();
                            v41 = v6 && v40 == a2;
                            if (v41 || (OUTLINED_FUNCTION_0_9(0xD00000000000004ELL, v40) & 1) != 0)
                            {

                              v9 = 1;
                              v8 = 15;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_38();
                              v43 = a1 == 0xD000000000000022 && v42 == a2;
                              if (v43 || (OUTLINED_FUNCTION_0_9(0xD000000000000022, v42) & 1) != 0)
                              {

                                v9 = 1;
                                v8 = 16;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_38();
                                v45 = a1 == 0xD00000000000001DLL && v44 == a2;
                                if (v45 || (OUTLINED_FUNCTION_0_9(0xD00000000000001DLL, v44) & 1) != 0)
                                {

                                  v9 = 1;
                                  v8 = 17;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_96_2();
                                  v47 = v6 && v46 == a2;
                                  if (v47 || (OUTLINED_FUNCTION_0_9(0xD000000000000018, v46) & 1) != 0)
                                  {

                                    v9 = 1;
                                    v8 = 18;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_38();
                                    v49 = a1 == 0xD000000000000019 && v48 == a2;
                                    if (v49 || (OUTLINED_FUNCTION_0_9(0xD000000000000019, v48) & 1) != 0)
                                    {

                                      v9 = 1;
                                      v8 = 19;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_38();
                                      v51 = a1 == 0xD00000000000001ELL && v50 == a2;
                                      if (v51 || (OUTLINED_FUNCTION_0_9(0xD00000000000001ELL, v50) & 1) != 0)
                                      {

                                        v9 = 1;
                                        v8 = 20;
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_38();
                                        v53 = a1 == 0xD00000000000001FLL && v52 == a2;
                                        if (v53 || (OUTLINED_FUNCTION_0_9(0xD00000000000001FLL, v52) & 1) != 0)
                                        {

                                          v9 = 1;
                                          v8 = 21;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_38();
                                          v55 = a1 == 0xD00000000000002ALL && v54 == a2;
                                          if (v55 || (OUTLINED_FUNCTION_0_9(0xD00000000000002ALL, v54) & 1) != 0)
                                          {

                                            v9 = 1;
                                            v8 = 22;
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_38();
                                            v57 = a1 == 0xD000000000000021 && v56 == a2;
                                            if (v57 || (OUTLINED_FUNCTION_0_9(0xD000000000000021, v56) & 1) != 0)
                                            {

                                              v9 = 1;
                                              v8 = 23;
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_38();
                                              v59 = a1 == 0xD000000000000028 && v58 == a2;
                                              if (v59 || (OUTLINED_FUNCTION_0_9(0xD000000000000028, v58) & 1) != 0)
                                              {

                                                v9 = 1;
                                                v8 = 24;
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_38();
                                                v61 = a1 == 0xD000000000000027 && v60 == a2;
                                                if (v61 || (OUTLINED_FUNCTION_0_9(0xD000000000000027, v60) & 1) != 0)
                                                {

                                                  v9 = 1;
                                                  v8 = 25;
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_38();
                                                  v63 = a1 == 0xD00000000000002FLL && v62 == a2;
                                                  if (v63 || (OUTLINED_FUNCTION_0_9(0xD00000000000002FLL, v62) & 1) != 0)
                                                  {

                                                    v9 = 1;
                                                    v8 = 26;
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_38();
                                                    v65 = a1 == 0xD000000000000024 && v64 == a2;
                                                    if (v65 || (OUTLINED_FUNCTION_0_9(0xD000000000000024, v64) & 1) != 0)
                                                    {

                                                      v9 = 1;
                                                      v8 = 27;
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_38();
                                                      v67 = a1 == 0xD00000000000001CLL && v66 == a2;
                                                      if (v67 || (OUTLINED_FUNCTION_0_9(0xD00000000000001CLL, v66) & 1) != 0)
                                                      {

                                                        v9 = 1;
                                                        v8 = 28;
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_38();
                                                        v69 = a1 == 0xD00000000000001DLL && v68 == a2;
                                                        if (v69 || (OUTLINED_FUNCTION_0_9(0xD00000000000001DLL, v68) & 1) != 0)
                                                        {

                                                          v9 = 1;
                                                          v8 = 29;
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_38();
                                                          v71 = a1 == 0xD000000000000023 && v70 == a2;
                                                          if (v71 || (OUTLINED_FUNCTION_0_9(0xD000000000000023, v70) & 1) != 0)
                                                          {

                                                            v9 = 1;
                                                            v8 = 30;
                                                          }

                                                          else
                                                          {
                                                            OUTLINED_FUNCTION_38();
                                                            v73 = a1 == 0xD000000000000024 && v72 == a2;
                                                            if (v73 || (OUTLINED_FUNCTION_0_9(0xD000000000000024, v72) & 1) != 0)
                                                            {

                                                              v9 = 1;
                                                              v8 = 31;
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_38();
                                                              v75 = a1 == 0xD000000000000025 && v74 == a2;
                                                              if (v75 || (OUTLINED_FUNCTION_0_9(0xD000000000000025, v74) & 1) != 0)
                                                              {

                                                                v9 = 1;
                                                                v8 = 32;
                                                              }

                                                              else
                                                              {
                                                                OUTLINED_FUNCTION_38();
                                                                v77 = a1 == 0xD000000000000025 && v76 == a2;
                                                                if (v77 || (OUTLINED_FUNCTION_0_9(0xD000000000000025, v76) & 1) != 0)
                                                                {

                                                                  v9 = 1;
                                                                  v8 = 33;
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_38();
                                                                  v79 = a1 == 0xD00000000000002BLL && v78 == a2;
                                                                  if (v79 || (OUTLINED_FUNCTION_0_9(0xD00000000000002BLL, v78) & 1) != 0)
                                                                  {

                                                                    v9 = 1;
                                                                    v8 = 34;
                                                                  }

                                                                  else
                                                                  {
                                                                    OUTLINED_FUNCTION_38();
                                                                    v81 = a1 == 0xD00000000000001CLL && v80 == a2;
                                                                    if (v81 || (OUTLINED_FUNCTION_0_9(0xD00000000000001CLL, v80) & 1) != 0)
                                                                    {

                                                                      v9 = 1;
                                                                      v8 = 35;
                                                                    }

                                                                    else
                                                                    {
                                                                      OUTLINED_FUNCTION_60();
                                                                      v83 = v6 && v82 == a2;
                                                                      if (v83 || (OUTLINED_FUNCTION_0_9(0xD000000000000021, v82) & 1) != 0)
                                                                      {

                                                                        v9 = 1;
                                                                        v8 = 36;
                                                                      }

                                                                      else
                                                                      {
                                                                        OUTLINED_FUNCTION_96_2();
                                                                        if (v6 && v84 == a2)
                                                                        {

                                                                          v9 = 1;
                                                                          v8 = 37;
                                                                        }

                                                                        else
                                                                        {
                                                                          v9 = OUTLINED_FUNCTION_0_9(0xD000000000000018, v84);

                                                                          v8 = 37;
                                                                          if ((v9 & 1) == 0)
                                                                          {
                                                                            v8 = 0;
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_1934F0E4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BB88, &qword_193958D38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
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

unint64_t sub_1934F0F4C()
{
  result = qword_1EAE3BB80;
  if (!qword_1EAE3BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BB80);
  }

  return result;
}

uint64_t sub_1934F0FA0()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9080);
  __swift_project_value_buffer(v0, qword_1EAEA9080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_193958E70;
  v4 = v122 + v3 + v1[14];
  *(v122 + v3) = 0;
  *v4 = "IntelligenceFlowTargetUnknown";
  *(v4 + 8) = 29;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  v7 = *(*(v6 - 8) + 104);
  v7(v4, v5, v6);
  v8 = OUTLINED_FUNCTION_3_1(v122 + v3 + v2);
  *v9 = 1;
  *v8 = "StandardPlannerMakePlan";
  v8[1] = 23;
  v10 = OUTLINED_FUNCTION_1_3(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v122 + v3 + 2 * v2);
  *v12 = 2;
  v13 = OUTLINED_FUNCTION_0_0(v11, "StandardPlannerSetup");
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_45_2(3 * v2);
  *v15 = 3;
  v16 = OUTLINED_FUNCTION_0_0(v14, "StandardPlannerRun");
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v122 + v3 + 4 * v2);
  *v18 = 101;
  v19 = OUTLINED_FUNCTION_0_0(v17, "QueryDecorationServiceSetup");
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_45_2(5 * v2);
  *v21 = 102;
  v22 = OUTLINED_FUNCTION_0_0(v20, "QueryDecorationServiceHandle");
  (v7)(v22);
  v23 = OUTLINED_FUNCTION_3_29(6);
  *v24 = 201;
  *v23 = "PlanOverridesServiceSetup";
  v23[1] = 25;
  v25 = OUTLINED_FUNCTION_1_3(v23);
  (v7)(v25);
  v26 = OUTLINED_FUNCTION_45_2(7 * v2);
  *v27 = 202;
  v28 = OUTLINED_FUNCTION_0_0(v26, "PlanOverridesServiceHandle");
  (v7)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v122 + v3 + 8 * v2);
  *v30 = 301;
  v31 = OUTLINED_FUNCTION_18_1(v29, "FullPlannerServiceSetup");
  (v7)(v31);
  v32 = OUTLINED_FUNCTION_45_2(9 * v2);
  *v33 = 302;
  v34 = OUTLINED_FUNCTION_0_0(v32, "FullPlannerServiceHandle");
  (v7)(v34);
  v35 = OUTLINED_FUNCTION_3_29(10);
  *v36 = 303;
  v37 = OUTLINED_FUNCTION_18_1(v35, "FullPlannerServiceHttpClientInterfaceCall");
  (v7)(v37);
  v38 = OUTLINED_FUNCTION_3_29(11);
  *v39 = 304;
  v40 = OUTLINED_FUNCTION_18_1(v38, "FullPlannerTokenGeneratorInterfaceGMSCall");
  (v7)(v40);
  v41 = OUTLINED_FUNCTION_3_29(12);
  *v42 = 305;
  v43 = OUTLINED_FUNCTION_0_0(v41, "FullPlannerTokenGeneratorConstrainedDecodingInterfaceGMSCall");
  (v7)(v43);
  v44 = OUTLINED_FUNCTION_3_29(13);
  *v45 = 306;
  v46 = OUTLINED_FUNCTION_18_1(v44, "FullPlannerTokenGeneratorInterfaceLLMCacheManagerLookupCall");
  (v7)(v46);
  v47 = OUTLINED_FUNCTION_3_29(14);
  *v48 = 307;
  v49 = OUTLINED_FUNCTION_18_1(v47, "FullPlannerTokenGeneratorInterfaceLLMCacheManagerInsertCall");
  (v7)(v49);
  v50 = OUTLINED_FUNCTION_45_2(15 * v2);
  *v51 = 308;
  v52 = OUTLINED_FUNCTION_18_1(v50, "FullPlannerTokenGeneratorConstrainedDecodingInterfaceLLMCacheManagerLookupCall");
  (v7)(v52);
  v53 = OUTLINED_FUNCTION_3_1(v122 + v3 + 16 * v2);
  *v54 = 309;
  v55 = OUTLINED_FUNCTION_18_1(v53, "FullPlannerTokenGeneratorConstrainedDecodingInterfaceLLMCacheManagerInsertCall");
  (v7)(v55);
  v56 = OUTLINED_FUNCTION_45_2(17 * v2);
  *v57 = 310;
  v58 = OUTLINED_FUNCTION_0_0(v56, "FullPlannerPromptGeneratorMakePlan");
  (v7)(v58);
  v59 = OUTLINED_FUNCTION_3_29(18);
  *v60 = 311;
  *v59 = "FullPlannerModelInferenceCall";
  v59[1] = 29;
  v61 = OUTLINED_FUNCTION_1_3(v59);
  (v7)(v61);
  v62 = OUTLINED_FUNCTION_3_29(19);
  *v63 = 401;
  v64 = OUTLINED_FUNCTION_18_1(v62, "PlanResolverServiceSetup");
  (v7)(v64);
  v65 = OUTLINED_FUNCTION_3_29(20);
  *v66 = 402;
  *v65 = "PlanResolverServiceHandle";
  v65[1] = 25;
  v67 = OUTLINED_FUNCTION_1_3(v65);
  (v7)(v67);
  v68 = OUTLINED_FUNCTION_3_29(21);
  *v69 = 501;
  v70 = OUTLINED_FUNCTION_0_0(v68, "ResponseGenerationServiceSetup");
  (v7)(v70);
  v71 = OUTLINED_FUNCTION_3_29(22);
  *v72 = 502;
  v73 = OUTLINED_FUNCTION_0_0(v71, "ResponseGenerationServiceHandle");
  (v7)(v73);
  v74 = OUTLINED_FUNCTION_3_29(23);
  *v75 = 503;
  v76 = OUTLINED_FUNCTION_0_0(v74, "ResponseGenerationServiceRequestValidation");
  (v7)(v76);
  v77 = OUTLINED_FUNCTION_3_1(v122 + v3 + 24 * v2);
  *v78 = 504;
  v79 = OUTLINED_FUNCTION_0_0(v77, "ResponseGenerationServiceOverride");
  (v7)(v79);
  v80 = OUTLINED_FUNCTION_3_1(v122 + v3 + 25 * v2);
  *v81 = 505;
  v82 = OUTLINED_FUNCTION_0_0(v80, "ResponseGenerationServiceResponseCatalog");
  (v7)(v82);
  v83 = OUTLINED_FUNCTION_3_29(26);
  *v84 = 506;
  *v83 = "ResponseGenerationServiceModelInference";
  v83[1] = 39;
  v85 = OUTLINED_FUNCTION_1_3(v83);
  (v7)(v85);
  v86 = OUTLINED_FUNCTION_3_29(27);
  *v87 = 507;
  v88 = OUTLINED_FUNCTION_0_0(v86, "ResponseGenerationServiceHallucinationDetection");
  (v7)(v88);
  v89 = OUTLINED_FUNCTION_3_1(v122 + v3 + 28 * v2);
  *v90 = 508;
  v91 = OUTLINED_FUNCTION_0_0(v89, "ResponseGenerationServiceSafetyCheck");
  (v7)(v91);
  v92 = OUTLINED_FUNCTION_3_1(v122 + v3 + 29 * v2);
  *v93 = 601;
  *v92 = "PrescribedPlanGeneratorSetup";
  v92[1] = 28;
  v94 = OUTLINED_FUNCTION_1_3(v92);
  (v7)(v94);
  v95 = OUTLINED_FUNCTION_3_29(30);
  *v96 = 602;
  v97 = OUTLINED_FUNCTION_18_1(v95, "PrescribedPlanGeneratorHandle");
  (v7)(v97);
  v98 = OUTLINED_FUNCTION_45_2(31 * v2);
  *v99 = 1001;
  *v98 = "ExecutorProtocolAcceptActionCreated";
  v98[1] = 35;
  v100 = OUTLINED_FUNCTION_1_3(v98);
  (v7)(v100);
  v101 = OUTLINED_FUNCTION_3_1(v122 + v3 + 32 * v2);
  *v102 = 1002;
  *v101 = "ExecutorProtocolAcceptQueriesCreated";
  v101[1] = 36;
  v103 = OUTLINED_FUNCTION_1_3(v101);
  (v7)(v103);
  v104 = OUTLINED_FUNCTION_45_2(33 * v2);
  *v105 = 1003;
  v106 = OUTLINED_FUNCTION_18_1(v104, "ExecutorProtocolAcceptActionCancelled");
  (v7)(v106);
  v107 = OUTLINED_FUNCTION_3_29(34);
  *v108 = 1004;
  v109 = OUTLINED_FUNCTION_18_1(v107, "ExecutorProtocolAcceptUndoRedoRequest");
  (v7)(v109);
  v110 = OUTLINED_FUNCTION_3_1(v122 + v3 + 35 * v2);
  *v111 = 1005;
  v112 = OUTLINED_FUNCTION_0_0(v110, "ExecutorProtocolAcceptTypeConversionRequest");
  (v7)(v112);
  v113 = OUTLINED_FUNCTION_3_29(36);
  *v114 = 3001;
  *v113 = "FeedbackLearningEvaluateTask";
  v113[1] = 28;
  v115 = OUTLINED_FUNCTION_1_3(v113);
  (v7)(v115);
  v116 = OUTLINED_FUNCTION_3_1(v122 + v3 + 37 * v2);
  *v117 = 3002;
  *v116 = "FeedbackLearningDonateInteraction";
  v116[1] = 33;
  v118 = OUTLINED_FUNCTION_1_3(v116);
  (v7)(v118);
  v119 = OUTLINED_FUNCTION_3_29(38);
  *v120 = 4001;
  *v119 = "SessionCoordinatorAccept";
  *(v119 + 8) = 24;
  *(v119 + 16) = 2;
  (v7)();
  return sub_19393C410();
}

uint64_t sub_1934F17E0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE50880 != -1)
  {
    OUTLINED_FUNCTION_4_17(&qword_1EAE50880);
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEA9080);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1934F1878@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowTarget.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1934F18A4()
{
  result = qword_1EAE3BB90;
  if (!qword_1EAE3BB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3BB98, &qword_193958EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BB90);
  }

  return result;
}

uint64_t sub_1934F1908@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowTarget.allCases.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1934F1934()
{
  result = qword_1EAE3BBA0;
  if (!qword_1EAE3BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BBA0);
  }

  return result;
}

uint64_t sub_1934F1994()
{
  sub_19393CAB0();
  v0 = IntelligenceFlowTarget.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1934F1A4C(uint64_t a1)
{
  sub_19393CAB0();
  v1 = IntelligenceFlowTarget.rawValue.getter();
  MEMORY[0x193B18030](v1);
  return sub_19393CB00();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFlowTelemetry.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v23 = sub_19393C090();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for IntelligenceFlowTelemetry(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBA8, &qword_193959028);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  OUTLINED_FUNCTION_4_18();
  sub_1934588A4(v1, v12, v16);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v17, &qword_1EAE3BBA8, &qword_193959028, v18);
  sub_19393C250();
  (*(v3 + 8))(v7, v23);
  sub_19344E6DC(v15, &qword_1EAE3BBA8, &qword_193959028);
  OUTLINED_FUNCTION_27();
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

void static IntelligenceFlowTelemetry.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = OUTLINED_FUNCTION_47(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBA8, &qword_193959028);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v30, &qword_1EAE3BBA8, &qword_193959028, v31);
  sub_19393C260();
  if (!v20)
  {
    OUTLINED_FUNCTION_6_19();
    sub_1934F3308(v29, v24, v32);
  }

  OUTLINED_FUNCTION_27();
}

void static IntelligenceFlowTelemetry.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v34 = v2;
  v35 = v1;
  v33 = v3;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBA8, &qword_193959028);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = sub_19393C0C0();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;
  if (*sub_193457224() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    (*(v11 + 16))(v15, v17, v9);
    v18 = OUTLINED_FUNCTION_19_3();
    sub_193450688(v18, v19);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v20, v21, v22, v23);
    OUTLINED_FUNCTION_19_3();
    sub_19393C280();
    (*(v11 + 8))(v17, v9);
    if (!v0)
    {
      OUTLINED_FUNCTION_6_19();
      v25 = v34;
      sub_1934F3308(v8, v34, v26);
      v27 = type metadata accessor for IntelligenceFlowTelemetry(0);
      v28 = *(v27 + 20);
      sub_19344E6DC(v25 + v28, &qword_1EAE3A9E8, &qword_19394F800);
      v29 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v30 + 16))(v25 + v28, v33, v29);
      __swift_storeEnumTagSinglePayload(v25 + v28, 0, 1, v29);
      v31 = *(v27 + 24);
      sub_19344E6DC(v25 + v31, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v35, v25 + v31);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v24 = v5;
    *(v24 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934F2164()
{
  OUTLINED_FUNCTION_26();
  v89 = v1;
  v90 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBB8, &unk_193959130);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v81 - v8;
  v9 = OUTLINED_FUNCTION_22_2();
  v83 = type metadata accessor for IntelligenceFlowTelemetry.Objective(v9);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v82 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v13);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v87 = &v81 - v15;
  OUTLINED_FUNCTION_22_2();
  v88 = sub_19393BE60();
  OUTLINED_FUNCTION_1_0();
  v86 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_1();
  v85 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v20);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v81 - v22;
  v24 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_1();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBB0, &qword_193959030);
  OUTLINED_FUNCTION_47(v29);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v81 - v31;
  v33 = type metadata accessor for IntelligenceFlowTelemetry.Metadata(0);
  MEMORY[0x1EEE9AC00](0x617461646174656DLL);
  OUTLINED_FUNCTION_5_1();
  v36 = v35 - v34;
  v37 = v5 == 0x617461646174656DLL && v3 == 0xE800000000000000;
  if (v37 || (v38 = v3, (sub_19393CA30() & 1) != 0))
  {
    v39 = type metadata accessor for IntelligenceFlowTelemetry(0);
    v40 = OUTLINED_FUNCTION_21_11(*(v39 + 28));
    sub_193448758(v40, v32, v41, v42);
    if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
    {
      v43 = &qword_1EAE3BBB0;
      v44 = &qword_193959030;
      v45 = v32;
LABEL_18:
      sub_19344E6DC(v45, v43, v44);
      v53 = v89;
      *v89 = 0u;
      *(v53 + 1) = 0u;
      goto LABEL_19;
    }

    sub_1934F3308(v32, v36, type metadata accessor for IntelligenceFlowTelemetry.Metadata);
    sub_193494798(v33, &off_1F07C3A40, v89);
    v46 = type metadata accessor for IntelligenceFlowTelemetry.Metadata;
    v47 = v36;
    goto LABEL_9;
  }

  v48 = v5 == 0xD000000000000012 && 0x8000000193A17A30 == v3;
  if (v48 || (OUTLINED_FUNCTION_12_17(0xD000000000000012, 0x8000000193A17A30) & 1) != 0)
  {
    v49 = type metadata accessor for IntelligenceFlowTelemetry(0);
    v50 = OUTLINED_FUNCTION_21_11(*(v49 + 32));
    sub_193448758(v50, v23, v51, v52);
    if (__swift_getEnumTagSinglePayload(v23, 1, v24) != 1)
    {
      sub_1934F3308(v23, v28, type metadata accessor for MonotonicTimestamp);
      sub_193494798(v24, &off_1F07BD958, v89);
      v46 = type metadata accessor for MonotonicTimestamp;
      v47 = v28;
LABEL_9:
      sub_1934574A0(v47, v46);
      goto LABEL_19;
    }

    v43 = &qword_1EAE3B498;
    v44 = &unk_193959120;
LABEL_17:
    v45 = v23;
    goto LABEL_18;
  }

  v54 = OUTLINED_FUNCTION_17_12();
  v55 = v5 == v54 && v3 == 0xE900000000000064;
  if (v55 || (OUTLINED_FUNCTION_12_17(v54, 0xE900000000000064) & 1) != 0)
  {
    v56 = type metadata accessor for IntelligenceFlowTelemetry(0);
    v57 = OUTLINED_FUNCTION_21_11(*(v56 + 36));
    v23 = v87;
    sub_193448758(v57, v87, v58, v59);
    v60 = v88;
    if (__swift_getEnumTagSinglePayload(v23, 1, v88) != 1)
    {
      v62 = v85;
      v61 = v86;
      (*(v86 + 32))(v85, v23, v60);
      sub_1934948FC();
      (*(v61 + 8))(v62, v60);
      goto LABEL_19;
    }

    v43 = &qword_1EAE3AA88;
    v44 = &qword_19394F9C0;
    goto LABEL_17;
  }

  v63 = v5 == 0x76697463656A626FLL && v3 == 0xE900000000000065;
  if (v63 || (OUTLINED_FUNCTION_12_17(0x76697463656A626FLL, 0xE900000000000065) & 1) != 0)
  {
    v64 = type metadata accessor for IntelligenceFlowTelemetry(0);
    v65 = OUTLINED_FUNCTION_21_11(*(v64 + 40));
    v66 = v84;
    sub_193448758(v65, v84, v67, v68);
    v69 = v83;
    if (__swift_getEnumTagSinglePayload(v66, 1, v83) != 1)
    {
      v71 = v66;
      v72 = v82;
      sub_1934F3308(v71, v82, type metadata accessor for IntelligenceFlowTelemetry.Objective);
      sub_193494798(v69, &off_1F07C3A50, v89);
      OUTLINED_FUNCTION_5_25();
      sub_1934574A0(v72, v73);
      goto LABEL_19;
    }

    sub_19344E6DC(v66, &qword_1EAE3BBB8, &unk_193959130);
  }

  else
  {
    v74 = v5 == 0x746567726174 && v3 == 0xE600000000000000;
    if (!v74 && (OUTLINED_FUNCTION_12_17(0x746567726174, 0xE600000000000000) & 1) == 0)
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_11();
      swift_allocError();
      v78 = v77;
      *v77 = v5;
      v77[1] = v38;
      v77[5] = type metadata accessor for IntelligenceFlowTelemetry(0);
      __swift_allocate_boxed_opaque_existential_1Tm(v78 + 2);
      OUTLINED_FUNCTION_4_18();
      sub_1934588A4(v90, v79, v80);
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      goto LABEL_19;
    }

    v75 = (v90 + *(type metadata accessor for IntelligenceFlowTelemetry(0) + 44));
    if ((*(v75 + 9) & 1) == 0)
    {
      v76 = *(v75 + 8);
      v91 = *v75;
      v92 = v76 & 1;
      sub_1934948FC();
      goto LABEL_19;
    }
  }

  v70 = v89;
  *v89 = 0u;
  *(v70 + 1) = 0u;
LABEL_19:
  OUTLINED_FUNCTION_27();
}

void sub_1934F2870()
{
  OUTLINED_FUNCTION_26();
  v41 = v2;
  v42 = v1;
  v43 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for IntelligenceFlowIdentifiers(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v16);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v20 = sub_19393BE60();
  OUTLINED_FUNCTION_1_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_1();
  v26 = v25 - v24;
  v28 = v6 == v27 && v4 == 0xE500000000000000;
  if (v28 || (sub_19393CA30() & 1) != 0)
  {
    sub_193448758(v43, v19, &qword_1EAE3AA88, &qword_19394F9C0);
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
    {
      (*(v22 + 32))(v26, v19, v20);
      sub_1934948FC();
      (*(v22 + 8))(v26, v20);
      goto LABEL_10;
    }

    v29 = &qword_1EAE3AA88;
    v30 = &qword_19394F9C0;
    v31 = v19;
  }

  else
  {
    v33 = v6 == 0xD000000000000013 && 0x8000000193A18C60 == v4;
    if (!v33 && (sub_19393CA30() & 1) == 0)
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_11();
      swift_allocError();
      v39 = v38;
      *v38 = v6;
      v38[1] = v4;
      v38[5] = type metadata accessor for IntelligenceFlowTelemetry.Metadata(0);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v39 + 2);
      sub_1934588A4(v43, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowTelemetry.Metadata);
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      goto LABEL_10;
    }

    v34 = type metadata accessor for IntelligenceFlowTelemetry.Metadata(0);
    sub_193448758(v43 + *(v34 + 20), v10, &qword_1EAE3B948, &qword_193957C10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      sub_1934F3308(v10, v15, type metadata accessor for IntelligenceFlowIdentifiers);
      OUTLINED_FUNCTION_19_3();
      sub_193494798(v35, v36, v37);
      sub_1934574A0(v15, type metadata accessor for IntelligenceFlowIdentifiers);
      goto LABEL_10;
    }

    v29 = &qword_1EAE3B948;
    v30 = &qword_193957C10;
    v31 = v10;
  }

  sub_19344E6DC(v31, v29, v30);
  v32 = v41;
  *v41 = 0u;
  v32[1] = 0u;
LABEL_10:
  OUTLINED_FUNCTION_27();
}

void sub_1934F2C3C()
{
  OUTLINED_FUNCTION_26();
  v85 = v2;
  v86 = v1;
  v88 = v0;
  v4 = v3;
  v6 = v5;
  v80 = type metadata accessor for IntelligenceFlowFeedbackLearning(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v79 = (v9 - v8);
  v10 = OUTLINED_FUNCTION_22_2();
  v83 = type metadata accessor for ResponseGeneration(v10);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v82 = (v13 - v12);
  v14 = OUTLINED_FUNCTION_22_2();
  v15 = type metadata accessor for PlanGeneration(v14);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_1();
  v19 = v18 - v17;
  v20 = type metadata accessor for IntelligenceFlowPlatformPnR(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_1();
  v24 = v23 - v22;
  v87 = type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
  OUTLINED_FUNCTION_4_1();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v81 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v84 = &v79 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v79 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v79 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v79 - v36;
  v38 = v6 == 7499376 && v4 == 0xE300000000000000;
  if (!v38 && (OUTLINED_FUNCTION_10_17(7499376, 0xE300000000000000) & 1) == 0)
  {
    v49 = v6 == 0xD000000000000018 && 0x8000000193A18C80 == v4;
    if (v49 || (OUTLINED_FUNCTION_10_17(0xD000000000000018, 0x8000000193A18C80) & 1) != 0)
    {
      OUTLINED_FUNCTION_0_27();
      v50 = v88;
      sub_1934588A4(v88, v35, v51);
      v52 = v87;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_193494798(&type metadata for ImpendingRequestDetected, &off_1F07C57F0, v85);
        goto LABEL_18;
      }
    }

    else
    {
      v53 = v6 == 0x656E65476E616C70 && v4 == 0xEE006E6F69746172;
      if (v53 || (OUTLINED_FUNCTION_10_17(0x656E65476E616C70, 0xEE006E6F69746172) & 1) != 0)
      {
        OUTLINED_FUNCTION_0_27();
        v54 = v88;
        sub_1934588A4(v88, v32, v55);
        v56 = v87;
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v57 = OUTLINED_FUNCTION_19_3();
          sub_1934F3308(v57, v58, v59);
          sub_193494798(v15, &off_1F07C5AB0, v85);
          v47 = type metadata accessor for PlanGeneration;
          v48 = v19;
        }

        else
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_11();
          v60 = swift_allocError();
          OUTLINED_FUNCTION_13_11(v60, v61);
          *(v62 + 40) = v56;
          __swift_allocate_boxed_opaque_existential_1Tm((v62 + 16));
          OUTLINED_FUNCTION_0_27();
          sub_1934588A4(v54, v63, v64);
          OUTLINED_FUNCTION_15_24();
          swift_willThrow();

          OUTLINED_FUNCTION_5_25();
          v48 = v32;
        }

        goto LABEL_10;
      }

      v65 = v6 == 0xD000000000000012 && 0x8000000193A18CA0 == v4;
      if (v65 || (OUTLINED_FUNCTION_10_17(0xD000000000000012, 0x8000000193A18CA0) & 1) != 0)
      {
        OUTLINED_FUNCTION_0_27();
        v50 = v88;
        v35 = v84;
        sub_1934588A4(v88, v84, v66);
        v52 = v87;
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v37 = v82;
          sub_1934F3308(v35, v82, type metadata accessor for ResponseGeneration);
          sub_193494798(v83, &off_1F07C5800, v85);
          v46 = type metadata accessor for ResponseGeneration;
          goto LABEL_8;
        }
      }

      else
      {
        v67 = v6 == 0xD000000000000010 && 0x8000000193A18CC0 == v4;
        v52 = v87;
        v50 = v88;
        if (!v67 && (OUTLINED_FUNCTION_10_17(0xD000000000000010, 0x8000000193A18CC0) & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_11();
          v74 = swift_allocError();
          OUTLINED_FUNCTION_13_11(v74, v75);
          *(v76 + 40) = v52;
          __swift_allocate_boxed_opaque_existential_1Tm((v76 + 16));
          OUTLINED_FUNCTION_0_27();
          sub_1934588A4(v50, v77, v78);
          OUTLINED_FUNCTION_15_24();
          swift_willThrow();

          goto LABEL_18;
        }

        OUTLINED_FUNCTION_0_27();
        v35 = v81;
        sub_1934588A4(v50, v81, v68);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v37 = v79;
          sub_1934F3308(v35, v79, type metadata accessor for IntelligenceFlowFeedbackLearning);
          sub_193494798(v80, &off_1F07C5BB0, v85);
          v46 = type metadata accessor for IntelligenceFlowFeedbackLearning;
          goto LABEL_8;
        }
      }
    }

    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v69 = swift_allocError();
    OUTLINED_FUNCTION_13_11(v69, v70);
    *(v71 + 40) = v52;
    __swift_allocate_boxed_opaque_existential_1Tm((v71 + 16));
    OUTLINED_FUNCTION_0_27();
    sub_1934588A4(v50, v72, v73);
    OUTLINED_FUNCTION_15_24();
    swift_willThrow();

    OUTLINED_FUNCTION_5_25();
    v48 = v35;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_0_27();
  v39 = v88;
  sub_1934588A4(v88, v37, v40);
  v41 = v87;
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_1934F3308(v37, v24, type metadata accessor for IntelligenceFlowPlatformPnR);
    sub_193494798(v20, &off_1F07C57A0, v85);
    v47 = type metadata accessor for IntelligenceFlowPlatformPnR;
    v48 = v24;
    goto LABEL_10;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v43 = v42;
  *v42 = v6;
  v42[1] = v4;
  v42[5] = v41;
  __swift_allocate_boxed_opaque_existential_1Tm(v42 + 2);
  OUTLINED_FUNCTION_0_27();
  sub_1934588A4(v39, v44, v45);
  *(v43 + 48) = 1;
  swift_willThrow();

  v46 = type metadata accessor for IntelligenceFlowTelemetry.Objective;
LABEL_8:
  v47 = v46;
  v48 = v37;
LABEL_10:
  sub_1934574A0(v48, v47);
LABEL_18:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934F3308(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

void static IntelligenceFlowTelemetry.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v116 = v1;
  v3 = v2;
  v104 = type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v99 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBB8, &unk_193959130);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_53_1();
  v100 = v9;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBC0, &qword_1939590A0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_1();
  v103 = v11;
  OUTLINED_FUNCTION_22_2();
  v110 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v106 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v101 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v16);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_53_1();
  v105 = v18;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_53_1();
  v109 = v20;
  v21 = OUTLINED_FUNCTION_22_2();
  v113 = type metadata accessor for MonotonicTimestamp(v21);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v107 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v25);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_53_1();
  v111 = v27;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v28);
  v29 = OUTLINED_FUNCTION_15_9();
  type metadata accessor for IntelligenceFlowTelemetry.Metadata(v29);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_1();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBB0, &qword_193959030);
  OUTLINED_FUNCTION_47(v34);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v98 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBC8, &qword_1939590A8) - 8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v98 - v40;
  v114 = type metadata accessor for IntelligenceFlowTelemetry(0);
  v115 = v3;
  v42 = *(v114 + 28);
  v43 = *(v38 + 56);
  sub_1934486F8(v3 + v42, v41, &qword_1EAE3BBB0, &qword_193959030);
  sub_1934486F8(v116 + v42, &v41[v43], &qword_1EAE3BBB0, &qword_193959030);
  OUTLINED_FUNCTION_31(v41);
  if (v44)
  {
    OUTLINED_FUNCTION_31(&v41[v43]);
    if (v44)
    {
      sub_19344E6DC(v41, &qword_1EAE3BBB0, &qword_193959030);
      goto LABEL_11;
    }

LABEL_9:
    v45 = &qword_1EAE3BBC8;
    v46 = &qword_1939590A8;
    v47 = v41;
LABEL_31:
    sub_19344E6DC(v47, v45, v46);
    goto LABEL_32;
  }

  sub_1934486F8(v41, v37, &qword_1EAE3BBB0, &qword_193959030);
  OUTLINED_FUNCTION_31(&v41[v43]);
  if (v44)
  {
    sub_1934574F8(v37, type metadata accessor for IntelligenceFlowTelemetry.Metadata);
    goto LABEL_9;
  }

  sub_1934F4874(&v41[v43], v33, type metadata accessor for IntelligenceFlowTelemetry.Metadata);
  OUTLINED_FUNCTION_8_26();
  sub_1934F4CB8(v48, v49, &protocol conformance descriptor for IntelligenceFlowTelemetry.Metadata);
  v50 = sub_19393C550();
  sub_1934574F8(v33, type metadata accessor for IntelligenceFlowTelemetry.Metadata);
  sub_1934574F8(v37, type metadata accessor for IntelligenceFlowTelemetry.Metadata);
  sub_19344E6DC(v41, &qword_1EAE3BBB0, &qword_193959030);
  if ((v50 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_11:
  v52 = v114;
  v51 = v115;
  v53 = *(v114 + 32);
  v54 = *(v112 + 48);
  sub_1934486F8(v115 + v53, v0, &qword_1EAE3B498, &unk_193959120);
  v55 = v116;
  sub_1934486F8(v116 + v53, v0 + v54, &qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_6_3(v0, 1, v113);
  if (v44)
  {
    OUTLINED_FUNCTION_31(v0 + v54);
    if (v44)
    {
      sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
      goto LABEL_21;
    }

LABEL_19:
    v45 = &qword_1EAE3B958;
    v46 = &qword_193957B50;
LABEL_30:
    v47 = v0;
    goto LABEL_31;
  }

  v56 = v111;
  sub_1934486F8(v0, v111, &qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_31(v0 + v54);
  if (v57)
  {
    sub_1934574F8(v56, type metadata accessor for MonotonicTimestamp);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_11_17();
  v58 = v0 + v54;
  v59 = v107;
  sub_1934F4874(v58, v107, v60);
  OUTLINED_FUNCTION_10_18();
  sub_1934F4CB8(v61, v62, &protocol conformance descriptor for MonotonicTimestamp);
  OUTLINED_FUNCTION_22();
  v63 = sub_19393C550();
  sub_1934574F8(v59, &unk_193959120);
  sub_1934574F8(v56, &unk_193959120);
  sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
  if ((v63 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  v64 = v52[9];
  v0 = v109;
  v65 = *(v108 + 48);
  OUTLINED_FUNCTION_25_6(v51 + v64, v109);
  OUTLINED_FUNCTION_25_6(v55 + v64, v0 + v65);
  v66 = v110;
  OUTLINED_FUNCTION_6_3(v0, 1, v110);
  if (v44)
  {
    OUTLINED_FUNCTION_6_3(v0 + v65, 1, v66);
    if (v44)
    {
      sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  v67 = v105;
  sub_1934486F8(v0, v105, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v0 + v65, 1, v66);
  if (v68)
  {
    (*(v106 + 8))(v67, v66);
LABEL_29:
    v45 = &qword_1EAE3B4E8;
    v46 = &unk_193952CF0;
    goto LABEL_30;
  }

  v69 = v106;
  v70 = v0 + v65;
  v71 = v101;
  (*(v106 + 32))(v101, v70, v66);
  OUTLINED_FUNCTION_9_33();
  sub_1934F4CB8(v72, v73, MEMORY[0x1E69695C8]);
  v74 = sub_19393C550();
  v75 = *(v69 + 8);
  v75(v71, v66);
  v75(v67, v66);
  sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v74 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_34:
  v76 = v52[10];
  v77 = v103;
  v78 = *(v102 + 48);
  OUTLINED_FUNCTION_25_6(v51 + v76, v103);
  v79 = v55 + v76;
  v80 = v77;
  OUTLINED_FUNCTION_25_6(v79, v77 + v78);
  OUTLINED_FUNCTION_6_3(v77, 1, v104);
  if (!v44)
  {
    v81 = v77;
    v82 = v100;
    sub_1934486F8(v81, v100, &qword_1EAE3BBB8, &unk_193959130);
    OUTLINED_FUNCTION_31(v80 + v78);
    if (!v83)
    {
      v85 = v80 + v78;
      v86 = v99;
      sub_1934F4874(v85, v99, type metadata accessor for IntelligenceFlowTelemetry.Objective);
      OUTLINED_FUNCTION_6_20();
      sub_1934F4CB8(v87, v88, &protocol conformance descriptor for IntelligenceFlowTelemetry.Objective);
      v89 = sub_19393C550();
      sub_1934574F8(v86, type metadata accessor for IntelligenceFlowTelemetry.Objective);
      sub_1934574F8(v82, type metadata accessor for IntelligenceFlowTelemetry.Objective);
      sub_19344E6DC(v80, &qword_1EAE3BBB8, &unk_193959130);
      if ((v89 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_44;
    }

    OUTLINED_FUNCTION_7_20();
    sub_1934574F8(v82, v84);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_31(v77 + v78);
  if (!v44)
  {
LABEL_42:
    v45 = &qword_1EAE3BBC0;
    v46 = &qword_1939590A0;
    v47 = v80;
    goto LABEL_31;
  }

  sub_19344E6DC(v77, &qword_1EAE3BBB8, &unk_193959130);
LABEL_44:
  v90 = v52[11];
  v91 = (v51 + v90);
  v92 = *(v51 + v90 + 9);
  v93 = (v55 + v90);
  v94 = *(v55 + v90 + 9);
  if ((v92 & 1) == 0)
  {
    v95 = *v93;
    v96 = *(v93 + 8);
    v97 = *(v91 + 8);
    v119 = *v91;
    v120 = v97;
    if ((v94 & 1) == 0)
    {
      v117 = v95;
      v118 = v96 & 1;
      sub_1934F1934();
      sub_19393C550();
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowTelemetry.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v62 = type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v57 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBB8, &unk_193959130);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_53_1();
  v61 = v7;
  OUTLINED_FUNCTION_22_2();
  v60 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v56 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v55 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v12);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53_1();
  v58 = v14;
  v15 = OUTLINED_FUNCTION_22_2();
  v59 = type metadata accessor for MonotonicTimestamp(v15);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_1();
  v54 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v19);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_15_9();
  v22 = type metadata accessor for IntelligenceFlowTelemetry.Metadata(v21);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_1();
  v26 = (v25 - v24);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBB0, &qword_193959030);
  OUTLINED_FUNCTION_47(v27);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v53 - v29;
  v31 = type metadata accessor for IntelligenceFlowTelemetry(0);
  sub_1934486F8(v0 + v31[7], v30, &qword_1EAE3BBB0, &qword_193959030);
  OUTLINED_FUNCTION_6_3(v30, 1, v22);
  if (v32)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_1934F4874(v30, v26, type metadata accessor for IntelligenceFlowTelemetry.Metadata);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_8_26();
    sub_1934F4CB8(v33, v34, &protocol conformance descriptor for IntelligenceFlowTelemetry.Metadata);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_1934574F8(v26, type metadata accessor for IntelligenceFlowTelemetry.Metadata);
  }

  v35 = v0;
  sub_1934486F8(v0 + v31[8], v1, &qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_6_3(v1, 1, v59);
  if (v32)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_11_17();
    v36 = v54;
    sub_1934F4874(v1, v54, v37);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_10_18();
    sub_1934F4CB8(v38, v39, &protocol conformance descriptor for MonotonicTimestamp);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_1934574F8(v36, v26);
  }

  v40 = v62;
  v41 = v60;
  v42 = v58;
  sub_1934486F8(v35 + v31[9], v58, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v42, 1, v41);
  if (v32)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v44 = v55;
    v43 = v56;
    (*(v56 + 32))(v55, v42, v41);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_9_33();
    sub_1934F4CB8(v45, v46, MEMORY[0x1E69695B8]);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    (*(v43 + 8))(v44, v41);
  }

  v47 = v61;
  sub_1934486F8(v35 + v31[10], v61, &qword_1EAE3BBB8, &unk_193959130);
  OUTLINED_FUNCTION_6_3(v47, 1, v40);
  if (v32)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v48 = v57;
    sub_1934F4874(v47, v57, type metadata accessor for IntelligenceFlowTelemetry.Objective);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_6_20();
    sub_1934F4CB8(v49, v50, &protocol conformance descriptor for IntelligenceFlowTelemetry.Objective);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_1934574F8(v48, type metadata accessor for IntelligenceFlowTelemetry.Objective);
  }

  v51 = (v35 + v31[11]);
  if (*(v51 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v52 = *(v51 + 8);
    v63 = *v51;
    v64 = v52 & 1;
    OUTLINED_FUNCTION_103_0();
    sub_1934F42AC();
    sub_19393C540();
  }

  OUTLINED_FUNCTION_116();
}

unint64_t sub_1934F42AC()
{
  result = qword_1EAE3BBF0;
  if (!qword_1EAE3BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BBF0);
  }

  return result;
}

void static IntelligenceFlowTelemetry.Objective.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v78 = v0;
  v79 = v1;
  v2 = type metadata accessor for IntelligenceFlowFeedbackLearning(0);
  v3 = OUTLINED_FUNCTION_47(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6();
  v77 = v4 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v71 - v7;
  v8 = OUTLINED_FUNCTION_22_2();
  v9 = type metadata accessor for ResponseGeneration(v8);
  v10 = OUTLINED_FUNCTION_47(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v75 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v71 - v14;
  v15 = OUTLINED_FUNCTION_22_2();
  v16 = type metadata accessor for PlanGeneration(v15);
  v17 = OUTLINED_FUNCTION_47(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v73 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v72 = &v71 - v21;
  v22 = OUTLINED_FUNCTION_22_2();
  v23 = type metadata accessor for IntelligenceFlowPlatformPnR(v22);
  v24 = OUTLINED_FUNCTION_47(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v71 - v29;
  type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_6();
  v34 = v32 - v33;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v71 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v71 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v71 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v71 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BBF8, &qword_1939590B0);
  OUTLINED_FUNCTION_47(v47);
  OUTLINED_FUNCTION_3_0();
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = &v71 - v50;
  v52 = *(v49 + 56);
  sub_1934595A0(v78, &v71 - v50);
  sub_1934595A0(v79, &v51[v52]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1934595A0(v51, v44);
      if (OUTLINED_FUNCTION_19_18() != 1)
      {
        goto LABEL_19;
      }

      v69 = v51[v52];
      v81 = *v44;
      v80 = v69;
      static ImpendingRequestDetected.== infix(_:_:)(&v81, &v80);
      goto LABEL_14;
    case 2u:
      sub_1934595A0(v51, v41);
      if (OUTLINED_FUNCTION_19_18() == 2)
      {
        v55 = type metadata accessor for PlanGeneration;
        v56 = v72;
        sub_1934F4874(v41, v72, type metadata accessor for PlanGeneration);
        v57 = v73;
        OUTLINED_FUNCTION_22();
        sub_1934F4874(v61, v62, v63);
        static PlanGeneration.== infix(_:_:)();
        goto LABEL_10;
      }

      v53 = type metadata accessor for PlanGeneration;
      v54 = v41;
      goto LABEL_18;
    case 3u:
      sub_1934595A0(v51, v38);
      if (OUTLINED_FUNCTION_19_18() == 3)
      {
        v55 = type metadata accessor for ResponseGeneration;
        v56 = v74;
        sub_1934F4874(v38, v74, type metadata accessor for ResponseGeneration);
        v57 = v75;
        OUTLINED_FUNCTION_22();
        sub_1934F4874(v64, v65, v66);
        static ResponseGeneration.== infix(_:_:)();
        goto LABEL_10;
      }

      v53 = type metadata accessor for ResponseGeneration;
      v54 = v38;
      goto LABEL_18;
    case 4u:
      sub_1934595A0(v51, v34);
      if (OUTLINED_FUNCTION_19_18() != 4)
      {
        v53 = type metadata accessor for IntelligenceFlowFeedbackLearning;
        v54 = v34;
        goto LABEL_18;
      }

      v55 = type metadata accessor for IntelligenceFlowFeedbackLearning;
      v56 = v76;
      sub_1934F4874(v34, v76, type metadata accessor for IntelligenceFlowFeedbackLearning);
      v57 = v77;
      OUTLINED_FUNCTION_22();
      sub_1934F4874(v58, v59, v60);
      static IntelligenceFlowFeedbackLearning.== infix(_:_:)();
LABEL_10:
      sub_1934574F8(v57, v55);
      v67 = v56;
      v68 = v55;
      goto LABEL_11;
    default:
      sub_1934595A0(v51, v46);
      if (OUTLINED_FUNCTION_19_18())
      {
        v53 = type metadata accessor for IntelligenceFlowPlatformPnR;
        v54 = v46;
LABEL_18:
        sub_1934574F8(v54, v53);
LABEL_19:
        sub_19344E6DC(v51, &qword_1EAE3BBF8, &qword_1939590B0);
      }

      else
      {
        sub_1934F4874(v46, v30, type metadata accessor for IntelligenceFlowPlatformPnR);
        sub_1934F4874(&v51[v52], v27, type metadata accessor for IntelligenceFlowPlatformPnR);
        static IntelligenceFlowPlatformPnR.== infix(_:_:)();
        sub_1934574F8(v27, type metadata accessor for IntelligenceFlowPlatformPnR);
        v67 = v30;
        v68 = type metadata accessor for IntelligenceFlowPlatformPnR;
LABEL_11:
        sub_1934574F8(v67, v68);
LABEL_14:
        OUTLINED_FUNCTION_7_20();
        sub_1934574F8(v51, v70);
      }

      OUTLINED_FUNCTION_116();
      return;
  }
}

uint64_t sub_1934F4874(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void IntelligenceFlowTelemetry.Objective.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v0;
  type metadata accessor for IntelligenceFlowFeedbackLearning(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  type metadata accessor for ResponseGeneration(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  type metadata accessor for PlanGeneration(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v12 = OUTLINED_FUNCTION_15_9();
  type metadata accessor for IntelligenceFlowPlatformPnR(v12);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_1();
  v20 = v19 - v18;
  sub_1934595A0(v2, v19 - v18);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1934F4C64();
      sub_19393C540();
      goto LABEL_7;
    case 2u:
      v21 = type metadata accessor for PlanGeneration;
      sub_1934F4874(v20, v1, type metadata accessor for PlanGeneration);
      sub_1934F4CB8(&qword_1EAE3BC10, type metadata accessor for PlanGeneration, &protocol conformance descriptor for PlanGeneration);
      sub_19393C540();
      v22 = v1;
      goto LABEL_6;
    case 3u:
      v21 = type metadata accessor for ResponseGeneration;
      sub_1934F4874(v20, v10, type metadata accessor for ResponseGeneration);
      sub_1934F4CB8(&qword_1EAE3BC08, type metadata accessor for ResponseGeneration, &protocol conformance descriptor for ResponseGeneration);
      sub_19393C540();
      v22 = v10;
      goto LABEL_6;
    case 4u:
      v21 = type metadata accessor for IntelligenceFlowFeedbackLearning;
      sub_1934F4874(v20, v6, type metadata accessor for IntelligenceFlowFeedbackLearning);
      sub_1934F4CB8(&qword_1EAE3BC00, type metadata accessor for IntelligenceFlowFeedbackLearning, &protocol conformance descriptor for IntelligenceFlowFeedbackLearning);
      sub_19393C540();
      v22 = v6;
      goto LABEL_6;
    default:
      v21 = type metadata accessor for IntelligenceFlowPlatformPnR;
      sub_1934F4874(v20, v16, type metadata accessor for IntelligenceFlowPlatformPnR);
      sub_1934F4CB8(&qword_1EAE3BC20, type metadata accessor for IntelligenceFlowPlatformPnR, &protocol conformance descriptor for IntelligenceFlowPlatformPnR);
      sub_19393C540();
      v22 = v16;
LABEL_6:
      sub_1934574F8(v22, v21);
LABEL_7:
      OUTLINED_FUNCTION_116();
      return;
  }
}

unint64_t sub_1934F4C64()
{
  result = qword_1EAE3BC18;
  if (!qword_1EAE3BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BC18);
  }

  return result;
}

uint64_t sub_1934F4CB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1934F4D00()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9098);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 72);
  v7 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_11_3(v7, xmmword_19394FBD0);
  *v0 = "metadata";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v1 + v6);
  *v11 = 2;
  *v10 = "monotonicTimestamp";
  v10[1] = 18;
  v12 = OUTLINED_FUNCTION_1_3(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v6);
  *v14 = 3;
  *v13 = "contextId";
  v13[1] = 9;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 3 * v6);
  *v17 = 4;
  *v16 = "objective";
  v16[1] = 9;
  v18 = OUTLINED_FUNCTION_1_3(v16);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 4 * v6);
  *v20 = 5;
  *v19 = "target";
  *(v19 + 8) = 6;
  *(v19 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934F4EF0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = sub_19393C0E0();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        type metadata accessor for IntelligenceFlowTelemetry(0);
        type metadata accessor for IntelligenceFlowTelemetry.Metadata(0);
        OUTLINED_FUNCTION_10_2();
        goto LABEL_10;
      case 2:
        type metadata accessor for IntelligenceFlowTelemetry(0);
        type metadata accessor for MonotonicTimestamp(0);
        OUTLINED_FUNCTION_10_2();
        goto LABEL_10;
      case 3:
        v4 = type metadata accessor for IntelligenceFlowTelemetry(0);
        sub_193497890(v1 + *(v4 + 36));
        goto LABEL_11;
      case 4:
        type metadata accessor for IntelligenceFlowTelemetry(0);
        type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
        OUTLINED_FUNCTION_10_2();
LABEL_10:
        sub_193498018();
        goto LABEL_11;
      case 5:
        type metadata accessor for IntelligenceFlowTelemetry(0);
        sub_1934982A8();
LABEL_11:
        v0 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934F5094()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA90B0);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_19394FBE0;
  v8 = (v7 + v6);
  v9 = v7 + v6 + dword_1EAEA90E8;
  *v8 = 1;
  *v9 = "rowId";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADC8];
  v11 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v13 = *(v12 + 104);
  (v13)(v9, v10, v11);
  v14 = OUTLINED_FUNCTION_3_1(v8 + v4);
  *v15 = 2;
  *v14 = "intelligenceFlowIds";
  *(v14 + 8) = 19;
  *(v14 + 16) = 2;
  v13();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934F5228()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = sub_19393C0E0();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 2)
    {
      type metadata accessor for IntelligenceFlowTelemetry.Metadata(0);
      type metadata accessor for IntelligenceFlowIdentifiers(0);
      OUTLINED_FUNCTION_10_2();
      sub_193498018();
LABEL_8:
      v0 = 0;
    }

    else if (v2 == 1)
    {
      sub_193497890(v1);
      goto LABEL_8;
    }
  }
}

uint64_t sub_1934F5328@<X0>(uint64_t a1@<X8>)
{
  IntelligenceFlowPlatformPnR.init()(a1);
  type metadata accessor for IntelligenceFlowTelemetry.Objective(0);

  return swift_storeEnumTagMultiPayload();
}

void sub_1934F5370()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA90C8);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 72);
  v7 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_11_3(v7, xmmword_19394FBD0);
  *v0 = "pnr";
  *(v0 + 8) = 3;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v1 + v6);
  *v11 = 2;
  *v10 = "impendingRequestDetected";
  v10[1] = 24;
  v12 = OUTLINED_FUNCTION_1_3(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v6);
  *v14 = 101;
  *v13 = "planGeneration";
  v13[1] = 14;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 3 * v6);
  *v17 = 102;
  *v16 = "responseGeneration";
  v16[1] = 18;
  v18 = OUTLINED_FUNCTION_1_3(v16);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 4 * v6);
  *v20 = 401;
  *v19 = "feedbackLearning";
  *(v19 + 8) = 16;
  *(v19 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1934F5564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_26();
  v129 = v12;
  v130 = v14;
  v131 = v15;
  v17 = v16;
  v122 = type metadata accessor for IntelligenceFlowFeedbackLearning(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_1();
  v116 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BC58, &qword_1939590B8);
  v22 = OUTLINED_FUNCTION_47(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15_8();
  v117 = v23;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v24);
  v121 = &v111 - v25;
  v120 = type metadata accessor for ResponseGeneration(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  v115 = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BC60, &qword_1939590C0);
  v30 = OUTLINED_FUNCTION_47(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15_8();
  v114 = v31;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v111 - v33;
  v35 = type metadata accessor for PlanGeneration(0);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_1();
  v113 = v37 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BC68, &qword_1939590C8);
  v39 = OUTLINED_FUNCTION_47(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_15_8();
  v124 = v40;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v111 - v42;
  v44 = type metadata accessor for IntelligenceFlowPlatformPnR(0);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_1();
  v112 = v46 - v45;
  v47 = OUTLINED_FUNCTION_25_2();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
  v50 = OUTLINED_FUNCTION_47(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_15_8();
  v123 = v51;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v111 - v53;
  v125 = v17;
  v126 = v43;
  v118 = v35;
  v119 = v34;
  v55 = &qword_1EAE3BC70;
  v56 = &qword_1EAE3BC68;
  v127 = v44;
  v128 = &v111 - v53;
  while (1)
  {
    v57 = sub_19393C0E0();
    if (v13 || (v58 & 1) != 0)
    {
      break;
    }

    switch(v57)
    {
      case 401:
        v91 = v117;
        v92 = v121;
        v93 = v122;
        __swift_storeEnumTagSinglePayload(v121, 1, 1, v122);
        sub_193498018();
        OUTLINED_FUNCTION_0_28();
        sub_193457550(v129, v94);
        sub_193448758(v92, v91, &qword_1EAE3BC58, &qword_1939590B8);
        OUTLINED_FUNCTION_6_3(v91, 1, v93);
        if (v64)
        {
          v108 = v116;
          IntelligenceFlowFeedbackLearning.init()();
          v95 = OUTLINED_FUNCTION_25_2();
          sub_19344E6DC(v95, v96, &qword_1939590B8);
          v55 = &qword_1EAE3BC70;
          OUTLINED_FUNCTION_6_3(v91, 1, v93);
          v43 = v126;
          if (!v64)
          {
            sub_19344E6DC(v91, &qword_1EAE3BC58, &qword_1939590B8);
          }
        }

        else
        {
          v106 = OUTLINED_FUNCTION_25_2();
          sub_19344E6DC(v106, v107, &qword_1939590B8);
          OUTLINED_FUNCTION_4_19();
          v108 = v116;
          sub_1934586F4(v91, v116, v109);
          v43 = v126;
        }

        OUTLINED_FUNCTION_4_19();
        sub_1934586F4(v108, v129, v110);
        type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
        swift_storeEnumTagMultiPayload();
        v56 = &qword_1EAE3BC68;
        v44 = v127;
        v54 = v128;
        break;
      case 2:
        sub_193498018();
        OUTLINED_FUNCTION_0_28();
        sub_193457550(v129, v66);
        ImpendingRequestDetected.init()();
        *v129 = a12 & 1;
        type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
        swift_storeEnumTagMultiPayload();
        break;
      case 101:
        v77 = v55;
        v78 = v56;
        v79 = OUTLINED_FUNCTION_37_7();
        v80 = v118;
        __swift_storeEnumTagSinglePayload(v79, v81, 1, v118);
        sub_193498018();
        OUTLINED_FUNCTION_0_28();
        sub_193457550(v129, v82);
        v83 = v43;
        v84 = v43;
        v85 = v124;
        sub_193448758(v83, v124, v78, &qword_1939590C8);
        v86 = OUTLINED_FUNCTION_37_7();
        OUTLINED_FUNCTION_6_3(v86, v87, v80);
        if (v64)
        {
          v100 = v113;
          PlanGeneration.init()();
          v88 = v78;
          v55 = &qword_1EAE3BC70;
          sub_19344E6DC(v84, v88, &qword_1939590C8);
          v89 = OUTLINED_FUNCTION_37_7();
          OUTLINED_FUNCTION_6_3(v89, v90, v80);
          if (!v64)
          {
            sub_19344E6DC(v124, &qword_1EAE3BC68, &qword_1939590C8);
          }
        }

        else
        {
          sub_19344E6DC(v84, v78, &qword_1939590C8);
          OUTLINED_FUNCTION_6_21();
          v100 = v113;
          sub_1934586F4(v85, v113, v101);
          v55 = v77;
        }

        OUTLINED_FUNCTION_6_21();
        sub_1934586F4(v100, v129, v102);
        type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
        swift_storeEnumTagMultiPayload();
        v56 = &qword_1EAE3BC68;
        v43 = v126;
        v44 = v127;
        v54 = v128;
        break;
      case 102:
        v67 = v119;
        v68 = v120;
        __swift_storeEnumTagSinglePayload(v119, 1, 1, v120);
        sub_193498018();
        OUTLINED_FUNCTION_0_28();
        sub_193457550(v129, v69);
        v70 = v114;
        sub_193448758(v67, v114, &qword_1EAE3BC60, &qword_1939590C0);
        v71 = OUTLINED_FUNCTION_37_7();
        OUTLINED_FUNCTION_6_3(v71, v72, v68);
        if (v64)
        {
          v73 = v115;
          ResponseGeneration.init()();
          sub_19344E6DC(v67, &qword_1EAE3BC60, &qword_1939590C0);
          v74 = OUTLINED_FUNCTION_37_7();
          v75 = v68;
          v97 = v73;
          v56 = &qword_1EAE3BC68;
          v54 = v128;
          OUTLINED_FUNCTION_6_3(v74, v76, v75);
          if (!v64)
          {
            sub_19344E6DC(v70, &qword_1EAE3BC60, &qword_1939590C0);
          }
        }

        else
        {
          sub_19344E6DC(v67, &qword_1EAE3BC60, &qword_1939590C0);
          OUTLINED_FUNCTION_7_21();
          v97 = v115;
          sub_1934586F4(v70, v115, v98);
        }

        OUTLINED_FUNCTION_7_21();
        sub_1934586F4(v97, v129, v99);
        type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
        swift_storeEnumTagMultiPayload();
        v43 = v126;
        v44 = v127;
        v55 = &qword_1EAE3BC70;
        break;
      case 1:
        __swift_storeEnumTagSinglePayload(v54, 1, 1, v44);
        sub_193498018();
        v59 = v56;
        OUTLINED_FUNCTION_0_28();
        sub_193457550(v129, v60);
        v61 = v54;
        v62 = v54;
        v63 = v123;
        sub_193448758(v61, v123, v55, &qword_1939590D0);
        OUTLINED_FUNCTION_6_3(v63, 1, v44);
        if (v64)
        {
          v65 = v55;
          v103 = v112;
          IntelligenceFlowPlatformPnR.init()(v112);
          sub_19344E6DC(v62, v65, &qword_1939590D0);
          OUTLINED_FUNCTION_6_3(v63, 1, v44);
          if (!v64)
          {
            sub_19344E6DC(v123, &qword_1EAE3BC70, &qword_1939590D0);
          }
        }

        else
        {
          sub_19344E6DC(v62, v55, &qword_1939590D0);
          OUTLINED_FUNCTION_5_26();
          v103 = v112;
          sub_1934586F4(v63, v112, v104);
        }

        OUTLINED_FUNCTION_5_26();
        sub_1934586F4(v103, v129, v105);
        type metadata accessor for IntelligenceFlowTelemetry.Objective(0);
        swift_storeEnumTagMultiPayload();
        v55 = &qword_1EAE3BC70;
        v54 = v128;
        v56 = v59;
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t IntelligenceFlowTelemetry.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowTelemetry.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t IntelligenceFlowTelemetry.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowTelemetry.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowTelemetry.metadata.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3BBB0, &qword_193959030, *(v1 + 28));
}

uint64_t IntelligenceFlowTelemetry.metadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowTelemetry.monotonicTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3B498, &unk_193959120, *(v1 + 32));
}

uint64_t IntelligenceFlowTelemetry.monotonicTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowTelemetry.contextId.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3AA88, &qword_19394F9C0, *(v1 + 36));
}

uint64_t IntelligenceFlowTelemetry.contextId.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowTelemetry(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_1934453DC(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowTelemetry.contextId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowTelemetry.objective.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowTelemetry(v0);
  return OUTLINED_FUNCTION_17_13(&qword_1EAE3BBB8, &unk_193959130, *(v1 + 40));
}

uint64_t IntelligenceFlowTelemetry.objective.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowTelemetry.target.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for IntelligenceFlowTelemetry(v2);
  v4 = (v1 + *(result + 44));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t IntelligenceFlowTelemetry.target.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowTelemetry(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowTelemetry.Metadata.intelligenceFlowIds.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowTelemetry.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t static IntelligenceFlowTelemetry.Metadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v53 = type metadata accessor for IntelligenceFlowIdentifiers(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v47 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v46 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B950, &unk_193959140);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v46 - v11;
  v12 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v19);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_47(v23);
  OUTLINED_FUNCTION_3_0();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v46 - v26;
  v28 = *(v25 + 56);
  v51 = a1;
  sub_1934487B4(a1, &v46 - v26, &qword_1EAE3AA88, &qword_19394F9C0);
  v52 = a2;
  sub_1934487B4(a2, &v27[v28], &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_31(v27);
  if (v29)
  {
    OUTLINED_FUNCTION_31(&v27[v28]);
    if (v29)
    {
      sub_19344E6DC(v27, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_11;
    }
  }

  else
  {
    sub_1934487B4(v27, v22, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_31(&v27[v28]);
    if (!v29)
    {
      (*(v14 + 32))(v18, &v27[v28], v12);
      OUTLINED_FUNCTION_5_27();
      sub_1934F6968(v33, v34, MEMORY[0x1E69695C8]);
      v35 = sub_19393C550();
      v36 = *(v14 + 8);
      v36(v18, v12);
      v36(v22, v12);
      sub_19344E6DC(v27, &qword_1EAE3AA88, &qword_19394F9C0);
      if ((v35 & 1) == 0)
      {
        return 0;
      }

LABEL_11:
      v37 = *(type metadata accessor for IntelligenceFlowTelemetry.Metadata(0) + 20);
      v38 = v50;
      v39 = *(v49 + 48);
      sub_1934487B4(v51 + v37, v50, &qword_1EAE3B948, &qword_193957C10);
      sub_1934487B4(v52 + v37, v38 + v39, &qword_1EAE3B948, &qword_193957C10);
      if (__swift_getEnumTagSinglePayload(v38, 1, v53) == 1)
      {
        OUTLINED_FUNCTION_31(v38 + v39);
        if (!v29)
        {
          goto LABEL_18;
        }

        sub_19344E6DC(v38, &qword_1EAE3B948, &qword_193957C10);
      }

      else
      {
        v40 = v48;
        sub_1934487B4(v38, v48, &qword_1EAE3B948, &qword_193957C10);
        OUTLINED_FUNCTION_31(v38 + v39);
        if (v29)
        {
          sub_1934F68A8(v40);
LABEL_18:
          v30 = &qword_1EAE3B950;
          v31 = &unk_193959140;
          v32 = v38;
          goto LABEL_19;
        }

        v42 = v47;
        sub_1934F6904(v38 + v39, v47);
        OUTLINED_FUNCTION_4_20();
        sub_1934F6968(v43, v44, &protocol conformance descriptor for IntelligenceFlowIdentifiers);
        v45 = sub_19393C550();
        sub_1934F68A8(v42);
        sub_1934F68A8(v40);
        sub_19344E6DC(v38, &qword_1EAE3B948, &qword_193957C10);
        if ((v45 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    (*(v14 + 8))(v22, v12);
  }

  v30 = &qword_1EAE3B4E8;
  v31 = &unk_193952CF0;
  v32 = v27;
LABEL_19:
  sub_19344E6DC(v32, v30, v31);
  return 0;
}

uint64_t sub_1934F68A8(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceFlowIdentifiers(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1934F6904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowIdentifiers(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1934F6968(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t IntelligenceFlowTelemetry.Metadata.hash(into:)()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_3_4();
  v29 = type metadata accessor for IntelligenceFlowIdentifiers(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v18);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  sub_1934487B4(v1, &v28 - v20, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v11) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    (*(v13 + 32))(v17, v21, v11);
    sub_19393CAD0();
    OUTLINED_FUNCTION_5_27();
    sub_1934F6968(v22, v23, MEMORY[0x1E69695B8]);
    sub_19393C540();
    (*(v13 + 8))(v17, v11);
  }

  v24 = type metadata accessor for IntelligenceFlowTelemetry.Metadata(0);
  sub_1934487B4(v1 + *(v24 + 20), v10, &qword_1EAE3B948, &qword_193957C10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v29) == 1)
  {
    return sub_19393CAD0();
  }

  sub_1934F6904(v10, v6);
  sub_19393CAD0();
  OUTLINED_FUNCTION_4_20();
  sub_1934F6968(v26, v27, &protocol conformance descriptor for IntelligenceFlowIdentifiers);
  sub_19393C540();
  return sub_1934F68A8(v6);
}

uint64_t sub_1934F6D1C(uint64_t (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1934F6D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

void sub_1934F6ECC(uint64_t a1)
{
  OUTLINED_FUNCTION_16_13(a1, &qword_1ED5082C0);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_16_13(v2, &qword_1ED507ED0);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_16_13(v4, &qword_1ED507A78);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_9_34(v6, &qword_1ED508298);
          if (v9 <= 0x3F)
          {
            OUTLINED_FUNCTION_16_13(v8, &qword_1ED507EC8);
            if (v10 <= 0x3F)
            {
              sub_1934F7080();
              if (v11 <= 0x3F)
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

void sub_1934F702C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1934F7080()
{
  if (!qword_1ED506D18)
  {
    v0 = sub_19393C860();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED506D18);
    }
  }
}

void sub_1934F70D0(uint64_t a1)
{
  OUTLINED_FUNCTION_9_34(a1, &qword_1ED508298);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_16_13(v1, qword_1ED5077D0);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1934F7174(uint64_t a1)
{
  result = type metadata accessor for IntelligenceFlowPlatformPnR(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PlanGeneration(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ResponseGeneration(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for IntelligenceFlowFeedbackLearning(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

_BYTE *_s8LLMCacheOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1934F72E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED510298);
  v4 = __swift_project_value_buffer(v3, qword_1ED510298);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.LLMCache.CacheManagerTelemetry.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:10000 maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x20000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_10 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510298);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BC80, &qword_193959360);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 1;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.LLMCache.CacheManagerTelemetry.attribute(_:)(void (*a1)(void))
{
  result = sub_1934F76E4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934F772C(void (*a1)(void))
{
  result = sub_1934F76E4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934F775C(uint64_t a1)
{
  result = sub_1934F7784();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1934F7784()
{
  result = qword_1ED507AE8;
  if (!qword_1ED507AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED507AE8);
  }

  return result;
}

_BYTE *_s21CacheManagerTelemetryOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1934F78CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5102F8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5102F8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

unint64_t static Library.Streams.IntelligenceFlow.Experimentation.attribute(_:)(void (*a1)(void))
{
  result = sub_1934F7AF8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934F7B30(void (*a1)(void))
{
  result = sub_1934F7AF8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1934F7B98(uint64_t a1)
{
  result = sub_1934F7BC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1934F7BC0()
{
  result = qword_1ED507B30[0];
  if (!qword_1ED507B30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED507B30);
  }

  return result;
}

_BYTE *_s15ExperimentationOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFlowExperimentation.json()()
{
  v0 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  v7 = type metadata accessor for IntelligenceFlowExperimentation(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BC90, &qword_193959468);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v15 = OUTLINED_FUNCTION_0_29();
  sub_1934F8E94(v15, v11, v16);
  sub_1934470C8(v11, v7, v14);
  sub_19393C080();
  sub_1934F7E7C();
  v17 = sub_19393C250();
  v19 = v18;
  (*(v2 + 8))(v6, v0);
  sub_19344E6DC(v14, &qword_1EAE3BC90, &qword_193959468);
  v20 = v17;
  v21 = v19;
  result._object = v21;
  result._countAndFlagsBits = v20;
  return result;
}

unint64_t sub_1934F7E7C()
{
  result = qword_1EAE3BC98;
  if (!qword_1EAE3BC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3BC90, &qword_193959468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BC98);
  }

  return result;
}

uint64_t static IntelligenceFlowExperimentation.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BC90, &qword_193959468);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;

  sub_19393C060();
  sub_1934F7E7C();
  result = sub_19393C260();
  if (!v3)
  {
    OUTLINED_FUNCTION_4_21();
    return sub_1934F89B4(v8, a3, v10);
  }

  return result;
}

uint64_t static IntelligenceFlowExperimentation.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a6;
  v35 = a5;
  v33 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BC90, &qword_193959468);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_6();
  v11 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  if (*sub_1934FAEA0() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    (*(v13 + 16))(v17, v20, v11);
    sub_193450688(a1, a2);
    sub_1934F7E7C();
    v21 = v39;
    sub_19393C280();
    if (v21)
    {
      return (*(v13 + 8))(v20, v11);
    }

    else
    {
      (*(v13 + 8))(v20, v11);
      OUTLINED_FUNCTION_4_21();
      v25 = v34;
      sub_1934F89B4(v6, v34, v26);
      v27 = type metadata accessor for IntelligenceFlowExperimentation(0);
      v28 = *(v27 + 20);
      sub_19344E6DC(v25 + v28, &qword_1EAE3A9E8, &qword_19394F800);
      v29 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v30 + 16))(v25 + v28, v33, v29);
      __swift_storeEnumTagSinglePayload(v25 + v28, 0, 1, v29);
      v31 = *(v27 + 24);
      sub_19344E6DC(v25 + v31, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v35, v25 + v31);
    }
  }

  else
  {
    v23 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v23);
    *v24 = a3;
    *(v24 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t IntelligenceFlowExperimentation.serialize()()
{
  v0 = type metadata accessor for IntelligenceFlowExperimentation(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_1();
  v4 = v3 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BC90, &qword_193959468);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v8 = OUTLINED_FUNCTION_0_29();
  sub_1934F8E94(v8, v4, v9);
  sub_1934470C8(v4, v0, v7);
  sub_1934F7E7C();
  sub_19393C290();
  sub_19344E6DC(v7, &qword_1EAE3BC90, &qword_193959468);
  return OUTLINED_FUNCTION_13_0();
}

id sub_1934F8464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1 == 0xD00000000000001ELL && 0x8000000193A18E10 == a2;
  if (v5 || (sub_19393CA30() & 1) != 0)
  {
    type metadata accessor for IntelligenceFlowExperimentation(0);
    v7 = type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
    v8 = &off_1F07C3D58;
    return sub_193494798(v7, v8, a3);
  }

  v10 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v10 || (sub_19393CA30() & 1) != 0)
  {
    type metadata accessor for IntelligenceFlowExperimentation(0);
    v7 = type metadata accessor for MonotonicTimestamp(0);
    v8 = &off_1F07BD958;
    return sub_193494798(v7, v8, a3);
  }

  v11 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v11);
  v13 = v12;
  *v12 = a1;
  v12[1] = a2;
  v12[5] = type metadata accessor for IntelligenceFlowExperimentation(0);
  __swift_allocate_boxed_opaque_existential_1Tm(v13 + 2);
  v14 = OUTLINED_FUNCTION_0_29();
  sub_1934F8E94(v14, v15, v16);
  *(v13 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1934F85E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = a1 == 0x697461636F6C6C61 && a2 == 0xEA00000000006E6FLL;
  if (v20 || (OUTLINED_FUNCTION_0_18(0x697461636F6C6C61, 0xEA00000000006E6FLL) & 1) != 0)
  {
    v41 = *v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA8, &qword_193959470);
    return sub_1934948FC();
  }

  v22 = a1 == 0x6874617065646F63 && a2 == 0xEA00000000006449;
  if (v22 || (OUTLINED_FUNCTION_0_18(0x6874617065646F63, 0xEA00000000006449) & 1) != 0)
  {
    v23 = type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
    sub_1934F8944(v40 + *(v23 + 20), v11);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      v24 = v11;
LABEL_14:
      result = sub_19344E6DC(v24, &qword_1EAE3BCA0, &unk_19395C320);
      v25 = v39;
      *v39 = 0u;
      *(v25 + 1) = 0u;
      return result;
    }

    OUTLINED_FUNCTION_2_28();
    sub_1934F89B4(v11, v19, v26);
    OUTLINED_FUNCTION_13_0();
    sub_193494798(v27, v28, v29);
    v30 = v19;
    return sub_1934F8A10(v30);
  }

  v31 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
  if (v31 || (OUTLINED_FUNCTION_0_18(0x4974736575716572, 0xE900000000000064) & 1) != 0)
  {
    v32 = type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
    sub_1934F8944(v40 + *(v32 + 24), v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
    {
      v24 = v8;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_2_28();
    sub_1934F89B4(v8, v16, v33);
    sub_193494798(v12, &off_1F07C3F90, v39);
    v30 = v16;
    return sub_1934F8A10(v30);
  }

  v34 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v34);
  v36 = v35;
  *v35 = a1;
  v35[1] = a2;
  v35[5] = type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v36 + 2);
  sub_1934F8E94(v40, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1);
  *(v36 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1934F8944(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1934F89B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t sub_1934F8A10(uint64_t a1)
{
  v2 = type metadata accessor for AIML.UUID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1934F8A84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_9_6();
  v10 = type metadata accessor for AIML.UUID(v9);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_38();
  v16 = a1 == 0xD000000000000013 && v15 == a2;
  if (v16 || (OUTLINED_FUNCTION_59_0(0xD000000000000013, v15) & 1) != 0)
  {
    if (*(v3 + 8))
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

  v17 = a1 == 0x656D697265707865 && a2 == 0xEC0000006449746ELL;
  if (v17 || (OUTLINED_FUNCTION_59_0(0x656D697265707865, 0xEC0000006449746ELL) & 1) != 0)
  {
    if (*(v3 + 24))
    {
LABEL_14:
      sub_1934948FC();
      return;
    }

    goto LABEL_22;
  }

  v18 = a1 == 0x6E656D7461657274 && a2 == 0xEB00000000644974;
  if (v18 || (OUTLINED_FUNCTION_59_0(0x6E656D7461657274, 0xEB00000000644974) & 1) != 0)
  {
    v19 = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
    sub_1934F8944(v3 + *(v19 + 24), v4);
    if (__swift_getEnumTagSinglePayload(v4, 1, v10) != 1)
    {
      OUTLINED_FUNCTION_2_28();
      sub_1934F89B4(v4, v14, v20);
      sub_193494798(v10, &off_1F07C3F90, a3);
      sub_1934F8A10(v14);
      return;
    }

    sub_19344E6DC(v4, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_22:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v21 = a1 == 0x656D796F6C706564 && a2 == 0xEC0000006449746ELL;
  if (v21 || (OUTLINED_FUNCTION_59_0(0x656D796F6C706564, 0xEC0000006449746ELL) & 1) != 0)
  {
    if ((*(v3 + *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0) + 28) + 8) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_38();
  v23 = a1 == 0xD000000000000010 && v22 == a2;
  if (v23 || (OUTLINED_FUNCTION_59_0(0xD000000000000010, v22) & 1) != 0)
  {
    if ((*(v3 + *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0) + 32) + 9) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

  OUTLINED_FUNCTION_38();
  v25 = a1 == 0xD000000000000011 && v24 == a2;
  if (v25 || (OUTLINED_FUNCTION_59_0(0xD000000000000011, v24) & 1) != 0)
  {
    if ((*(v3 + *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0) + 36) + 8) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

  OUTLINED_FUNCTION_38();
  v27 = a1 == 0xD000000000000014 && v26 == a2;
  if (v27 || (OUTLINED_FUNCTION_59_0(0xD000000000000014, v26) & 1) != 0)
  {
    if ((*(v3 + *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0) + 40) + 4) & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_37:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v28 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v28);
  v30 = v29;
  *v29 = a1;
  v29[1] = a2;
  v29[5] = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v30 + 2);
  sub_1934F8E94(v3, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment);
  *(v30 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1934F8E94(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t IntelligenceFlowExperimentation.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceFlowExperimentation(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  *a1 = *sub_1934FAEA0();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v5 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v5);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  IntelligenceFlowExperimentation.ClientSiriRequestTier1.init()();
  return MonotonicTimestamp.init()(a1 + v2[8]);
}

uint64_t static IntelligenceFlowExperimentation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IntelligenceFlowExperimentation(0);
  type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
  OUTLINED_FUNCTION_0_30();
  sub_1934F9184(v2, v3, &protocol conformance descriptor for IntelligenceFlowExperimentation.ClientSiriRequestTier1);
  if ((sub_19393C550() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_1_29();
  sub_1934F9184(v4, v5, &protocol conformance descriptor for MonotonicTimestamp);
  return sub_19393C550() & 1;
}

uint64_t IntelligenceFlowExperimentation.hash(into:)(uint64_t a1)
{
  type metadata accessor for IntelligenceFlowExperimentation(0);
  type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
  OUTLINED_FUNCTION_0_30();
  sub_1934F9184(v1, v2, &protocol conformance descriptor for IntelligenceFlowExperimentation.ClientSiriRequestTier1);
  sub_19393C540();
  type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_1_29();
  sub_1934F9184(v3, v4, &protocol conformance descriptor for MonotonicTimestamp);
  return sub_19393C540();
}

uint64_t sub_1934F9184(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t IntelligenceFlowExperimentation.TreatmentAllocationStatus.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 2;
  if (result == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  if (result == 3)
  {
    v4 = 1;
  }

  else
  {
    v2 = v3;
    v4 = result == 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  v5 = result == 1 || v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = 0;
  return result;
}

char *static IntelligenceFlowExperimentation.TreatmentAllocationStatus.allCases.getter()
{
  v0 = sub_1934F9548(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v13 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934F9548(v13, v2 + 1, 1, v14);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v15 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934F9548(v15, v2 + 2, 1, v16);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v17 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934F9548(v17, v2 + 3, 1, v18);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  if ((v2 + 4) > (v10 >> 1))
  {
    v19 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_1934F9548(v19, v2 + 4, 1, v20);
  }

  *(v0 + 2) = v2 + 4;
  v11 = &v0[16 * v8];
  *(v11 + 4) = 2;
  v11[40] = 1;
  return v0;
}

uint64_t IntelligenceFlowExperimentation.TreatmentAllocationStatus.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  v1 = 0x6574617669746341;
  if (*v0 != 1)
  {
    v1 = 0x6176697463616544;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657461636F6C6C41;
  }
}

uint64_t IntelligenceFlowExperimentation.TreatmentAllocationStatus.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9(0x6E776F6E6B6E55, 0xE700000000000000) & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v10 = a1 == 0x657461636F6C6C41 && a2 == 0xE900000000000064;
  if (v10 || (OUTLINED_FUNCTION_0_9(0x657461636F6C6C41, 0xE900000000000064) & 1) != 0)
  {

    v8 = 0;
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v11 = a1 == 0x6574617669746341 && a2 == 0xE900000000000064;
  if (v11 || (OUTLINED_FUNCTION_0_9(0x6574617669746341, 0xE900000000000064) & 1) != 0)
  {

    v8 = 1;
    goto LABEL_13;
  }

  if (a1 == 0x6176697463616544 && a2 == 0xEB00000000646574)
  {

    v9 = 1;
    v8 = 2;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_9(0x6176697463616544, 0xEB00000000646574);

    v8 = 2;
    if ((v9 & 1) == 0)
    {
      v8 = 0;
    }
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_1934F9548(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCC8, &qword_193959540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
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

unint64_t sub_1934F9648()
{
  result = qword_1EAE3BCC0;
  if (!qword_1EAE3BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BCC0);
  }

  return result;
}

void sub_1934F969C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, &qword_1EAEA90E0);
  v2 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_30_3();
  v8 = v7 & ~v6;
  v9 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_34_5(v9, xmmword_19394FBE0);
  *v0 = 104;
  *v8 = "SiriRequestExperimentTriggered";
  *(v8 + 8) = 30;
  *(v8 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_10_0();
  v11();
  v12 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v13 = 2;
  *v12 = "timestamp";
  *(v12 + 8) = 9;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v11();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934F9808()
{
  OUTLINED_FUNCTION_26();
  v47 = v0;
  v3 = v2;
  v50 = v4;
  v49 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = &qword_1EAE3B498;
  v10 = &unk_193959120;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  v12 = OUTLINED_FUNCTION_47(v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - v16;
  v44 = type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_1();
  v43 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD00, &qword_193959548);
  v22 = OUTLINED_FUNCTION_47(v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v45 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v46 = v15;
  v48 = &v43 - v25;
  while (1)
  {
    OUTLINED_FUNCTION_23_18();
    v26 = sub_19393C0E0();
    if (v1)
    {
      break;
    }

    v28 = v8;
    v29 = v49;
    if (v27)
    {
      break;
    }

    v30 = v3;
    v31 = v10;
    v32 = v9;
    if (v26 == 2)
    {
      __swift_storeEnumTagSinglePayload(v17, 1, 1, v49);
      OUTLINED_FUNCTION_23_18();
      sub_193498018();
      v38 = v46;
      v39 = v30;
      v40 = v32;
      sub_19344F184();
      if (__swift_getEnumTagSinglePayload(v38, 1, v29) == 1)
      {
        MonotonicTimestamp.init()(v28);
        sub_19344E6DC(v17, v32, v31);
        v41 = v29;
        v8 = v28;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v41);
        v9 = v32;
        v10 = v31;
        if (EnumTagSinglePayload != 1)
        {
          sub_19344E6DC(v46, v40, v31);
        }
      }

      else
      {
        sub_19344E6DC(v17, v32, v31);
        v8 = v28;
        sub_1934FADD0();
        v9 = v32;
        v10 = v31;
      }

      type metadata accessor for IntelligenceFlowExperimentation(0);
      sub_1934F9CDC();
      v3 = v39;
    }

    else
    {
      v8 = v28;
      v10 = v31;
      v3 = v30;
      v33 = v48;
      if (v26 == 104)
      {
        v34 = v44;
        __swift_storeEnumTagSinglePayload(v48, 1, 1, v44);
        OUTLINED_FUNCTION_23_18();
        sub_193498018();
        v35 = v33;
        v36 = v45;
        sub_19344F184();
        if (__swift_getEnumTagSinglePayload(v36, 1, v34) == 1)
        {
          IntelligenceFlowExperimentation.ClientSiriRequestTier1.init()();
          sub_19344E6DC(v35, &qword_1EAE3BD00, &qword_193959548);
          v37 = __swift_getEnumTagSinglePayload(v36, 1, v34);
          v3 = v30;
          v10 = &unk_193959120;
          if (v37 != 1)
          {
            sub_19344E6DC(v45, &qword_1EAE3BD00, &qword_193959548);
          }
        }

        else
        {
          sub_19344E6DC(v35, &qword_1EAE3BD00, &qword_193959548);
          sub_1934FADD0();
          v3 = v30;
          v10 = &unk_193959120;
        }

        type metadata accessor for IntelligenceFlowExperimentation(0);
        sub_1934F9CDC();
        v9 = &qword_1EAE3B498;
      }
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934F9CDC()
{
  OUTLINED_FUNCTION_91_0();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_13_0();
  v3(v2);
  return v0;
}

void sub_1934F9D34()
{
  OUTLINED_FUNCTION_46_5();
  sub_1934F9D7C();
  if (!v0)
  {
    OUTLINED_FUNCTION_46_5();
    sub_1934F9E70();
  }
}

void sub_1934F9D7C()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_14_10();
  type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(v1);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  v6 = *(type metadata accessor for IntelligenceFlowExperimentation(0) + 28);
  IntelligenceFlowExperimentation.ClientSiriRequestTier1.init()();
  v7 = sub_19344A894(&qword_1EAE3BCB0, type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1, &protocol conformance descriptor for IntelligenceFlowExperimentation.ClientSiriRequestTier1);
  v8 = OUTLINED_FUNCTION_38_9(v7);
  sub_1934FAE28(v5, type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_29_4(v0 + v6, 104);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1934F9E70()
{
  OUTLINED_FUNCTION_26();
  v1 = OUTLINED_FUNCTION_14_10();
  type metadata accessor for MonotonicTimestamp(v1);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  v6 = *(type metadata accessor for IntelligenceFlowExperimentation(0) + 32);
  MonotonicTimestamp.init()(v5);
  v7 = sub_19344A894(&qword_1ED5028F0, type metadata accessor for MonotonicTimestamp, &protocol conformance descriptor for MonotonicTimestamp);
  v8 = OUTLINED_FUNCTION_38_9(v7);
  sub_1934FAE28(v5, type metadata accessor for MonotonicTimestamp);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_29_4(v0 + v6, 2);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1934F9FC8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA90F8);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_30_3();
  v7 = v6 & ~v5;
  v8 = OUTLINED_FUNCTION_156();
  *(v8 + 16) = xmmword_19394FBC0;
  v9 = v8 + v7 + dword_1EAEA9130;
  *(v8 + v7) = 0;
  *v9 = "TreatmentAllocationStatusUnknown";
  *(v9 + 8) = 32;
  *(v9 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_2_0();
  v11();
  v12 = OUTLINED_FUNCTION_3_1(v8 + v7 + v4);
  *v13 = 1;
  *v12 = "TreatmentAllocationStatusAllocated";
  *(v12 + 8) = 34;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  v14 = OUTLINED_FUNCTION_3_1(v8 + v7 + 2 * v4);
  *v15 = 2;
  *v14 = "TreatmentAllocationStatusActivated";
  *(v14 + 8) = 34;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  v16 = OUTLINED_FUNCTION_3_1(v8 + v7 + 3 * v4);
  *v17 = 3;
  *v16 = "TreatmentAllocationStatusDeactivated";
  *(v16 + 8) = 36;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934FA1D0()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEA9110);
  v2 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_30_3();
  v8 = v7 & ~v6;
  v9 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_34_5(v9, xmmword_19394FBB0);
  *v0 = 1;
  *v8 = "allocation";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_10_0();
  v11();
  v12 = OUTLINED_FUNCTION_3_1(v0 + v5);
  *v13 = 2;
  *v12 = "codepathId";
  *(v12 + 8) = 10;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v11();
  v14 = OUTLINED_FUNCTION_3_1(v0 + 2 * v5);
  *v15 = 3;
  *v14 = "requestId";
  *(v14 + 8) = 9;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v11();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934FA374()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v4 = sub_19393C0E0();
    if (v0 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 3:
        v7 = *(type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0) + 24);
        goto LABEL_10;
      case 2:
        v7 = *(type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0) + 20);
LABEL_10:
        v8 = type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_37_8(v1 + v7, v9, v8);
LABEL_11:
        v0 = 0;
        break;
      case 1:
        v6 = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
        sub_193498238(v1, v3, v6, v2, &off_1F07C3E00);
        goto LABEL_11;
    }
  }
}

void sub_1934FA454()
{
  OUTLINED_FUNCTION_18_15();
  v5 = *v4;
  if (*(*v4 + 16))
  {
    v6 = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
    v1 = v0;
    sub_193451CFC(v5, 1, v3, v6, v2, &off_1F07C3E00);
  }

  if (!v0)
  {
    OUTLINED_FUNCTION_79();
    sub_1934FA4F8();
    if (!v1)
    {
      OUTLINED_FUNCTION_79();
      sub_1934FAC04();
    }
  }
}

void sub_1934FA4F8()
{
  OUTLINED_FUNCTION_26();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v2 = OUTLINED_FUNCTION_47(v1);
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_36_11();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
  sub_19344F184();
  if (__swift_getEnumTagSinglePayload(v0, 1, v3) == 1)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_1934FADD0();
    OUTLINED_FUNCTION_23_18();
    sub_193447600();
    OUTLINED_FUNCTION_10_19();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1934FA6B8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEA9128);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_30_3();
  v7 = v6 & ~v5;
  v8 = OUTLINED_FUNCTION_156();
  *(v8 + 16) = xmmword_193952700;
  v9 = v8 + v7 + dword_1EAEA9160;
  *(v8 + v7) = 1;
  *v9 = "experimentNamespace";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_2_0();
  v11();
  v12 = OUTLINED_FUNCTION_3_1(v8 + v7 + v4);
  *v13 = 2;
  *v12 = "experimentId";
  v12[1] = 12;
  v14 = OUTLINED_FUNCTION_1_3(v12);
  (v11)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v8 + v7 + 2 * v4);
  *v16 = 3;
  *v15 = "treatmentId";
  v15[1] = 11;
  v17 = OUTLINED_FUNCTION_1_3(v15);
  (v11)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v8 + v7 + 3 * v4);
  *v19 = 4;
  *v18 = "deploymentId";
  v18[1] = 12;
  v20 = OUTLINED_FUNCTION_1_3(v18);
  (v11)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v8 + v7 + 4 * v4);
  *v22 = 5;
  *v21 = "allocationStatus";
  v21[1] = 16;
  v23 = OUTLINED_FUNCTION_1_3(v21);
  (v11)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v8 + v7 + 5 * v4);
  *v25 = 6;
  *v24 = "lastUpdatedAtInMs";
  v24[1] = 17;
  v26 = OUTLINED_FUNCTION_1_3(v24);
  (v11)(v26);
  v27 = OUTLINED_FUNCTION_3_1(v8 + v7 + 6 * v4);
  *v28 = 7;
  *v27 = "compatibilityVersion";
  *(v27 + 8) = 20;
  *(v27 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v11();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934FA928()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = sub_19393C0E0();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        goto LABEL_11;
      case 3:
        v4 = *(type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0) + 24);
        v5 = type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_37_8(v1 + v4, v6, v5);
        goto LABEL_11;
      case 4:
        type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
        OUTLINED_FUNCTION_113();
        sub_19393C190();
        goto LABEL_11;
      case 5:
        type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
        sub_1934982A8();
        goto LABEL_11;
      case 6:
        type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
        OUTLINED_FUNCTION_113();
        sub_19393C230();
        goto LABEL_11;
      case 7:
        type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
        OUTLINED_FUNCTION_113();
        sub_19393C220();
LABEL_11:
        v0 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1934FAA7C()
{
  OUTLINED_FUNCTION_18_15();
  if (*(v4 + 8))
  {
    v1 = v0;
    sub_19393C3C0();
  }

  if (!v0)
  {
    if (*(v4 + 24))
    {
      v1 = 0;
      sub_19393C3C0();
    }

    OUTLINED_FUNCTION_79();
    sub_1934FAC04();
    if (!v1)
    {
      v5 = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
      if ((*(v4 + v5[7] + 8) & 1) == 0)
      {
        OUTLINED_FUNCTION_15_11();
        sub_19393C360();
      }

      v6 = (v4 + v5[8]);
      if ((*(v6 + 9) & 1) == 0)
      {
        v7 = *(v6 + 8);
        v8 = *v6;
        v9 = v7 & 1;
        sub_193447324(&v8, 5, v3, &type metadata for IntelligenceFlowExperimentation.TreatmentAllocationStatus, v2, &off_1F07C3DA8);
      }

      if ((*(v4 + v5[9] + 8) & 1) == 0)
      {
        OUTLINED_FUNCTION_15_11();
        sub_19393C3E0();
      }

      if ((*(v4 + v5[10] + 4) & 1) == 0)
      {
        OUTLINED_FUNCTION_15_11();
        sub_19393C3D0();
      }
    }
  }
}

void sub_1934FAC04()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v4 = OUTLINED_FUNCTION_47(v3);
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_36_11();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v2(0);
  sub_19344F184();
  if (__swift_getEnumTagSinglePayload(v0, 1, v5) == 1)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_1934FADD0();
    OUTLINED_FUNCTION_23_18();
    sub_193447600();
    OUTLINED_FUNCTION_10_19();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1934FADD0()
{
  OUTLINED_FUNCTION_91_0();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_13_0();
  v3(v2);
  return v0;
}

uint64_t sub_1934FAE28(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_36_11()
{

  return type metadata accessor for AIML.UUID(0);
}

uint64_t IntelligenceFlowExperimentation.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowExperimentation(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExperimentation.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowExperimentation(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 24));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowExperimentation.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowExperimentation(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowExperimentation.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowExperimentation(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExperimentation.SiriRequestExperimentTriggered.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowExperimentation(v0);
  OUTLINED_FUNCTION_101(*(v1 + 28));
  return sub_1934FB148();
}

uint64_t IntelligenceFlowExperimentation.SiriRequestExperimentTriggered.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowExperimentation(v0);
  OUTLINED_FUNCTION_100_0();
  return sub_1934FB1E0();
}

uint64_t IntelligenceFlowExperimentation.SiriRequestExperimentTriggered.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowExperimentation(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExperimentation.timestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowExperimentation(v0);
  OUTLINED_FUNCTION_101(*(v1 + 32));
  return sub_1934FB148();
}

uint64_t sub_1934FB148()
{
  v1 = OUTLINED_FUNCTION_16_14();
  v2(v1);
  OUTLINED_FUNCTION_4_1();
  v3 = OUTLINED_FUNCTION_13_0();
  v4(v3);
  return v0;
}

uint64_t IntelligenceFlowExperimentation.timestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowExperimentation(v0);
  OUTLINED_FUNCTION_100_0();
  return sub_1934FB1E0();
}

uint64_t sub_1934FB1E0()
{
  v1 = OUTLINED_FUNCTION_16_14();
  v2(v1);
  OUTLINED_FUNCTION_4_1();
  v3 = OUTLINED_FUNCTION_13_0();
  v4(v3);
  return v0;
}

uint64_t IntelligenceFlowExperimentation.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowExperimentation(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1934FB27C@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowExperimentation.TreatmentAllocationStatus.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1934FB2A4@<X0>(char **a1@<X8>)
{
  result = static IntelligenceFlowExperimentation.TreatmentAllocationStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1934FB2D8()
{
  sub_19393CAB0();
  v0 = IntelligenceFlowExperimentation.TreatmentAllocationStatus.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1934FB390(uint64_t a1)
{
  sub_19393CAB0();
  v1 = IntelligenceFlowExperimentation.TreatmentAllocationStatus.rawValue.getter();
  MEMORY[0x193B18030](v1);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowExperimentation.ClientSiriRequestTier1.allocation.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t IntelligenceFlowExperimentation.ClientSiriRequestTier1.codepathId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExperimentation.ClientSiriRequestTier1.requestId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExperimentation.ClientSiriRequestTier1.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(v1);
  v3 = *(v2 + 20);
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = *(v2 + 24);
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  *v0 = MEMORY[0x1E69E7CC0];
  sub_19344E6DC(v0 + v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  sub_19344E6DC(v0 + v8, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_28();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

void static IntelligenceFlowExperimentation.ClientSiriRequestTier1.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v9 = OUTLINED_FUNCTION_47(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v38 - v22;
  if ((sub_1934FBB40(*v3, *v1) & 1) == 0)
  {
    goto LABEL_22;
  }

  v38[0] = v12;
  v38[1] = v7;
  v40 = v20;
  v39 = type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
  v24 = *(v39 + 20);
  v25 = *(v16 + 48);
  sub_193448804(v3 + v24, v23, &qword_1EAE3BCA0, &unk_19395C320);
  sub_193448804(v1 + v24, &v23[v25], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v23);
  if (!v26)
  {
    sub_193448804(v23, v15, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(&v23[v25]);
    if (!v26)
    {
      OUTLINED_FUNCTION_1_30();
      sub_1934FD0AC();
      OUTLINED_FUNCTION_0_31();
      sub_1934FD044(v28, v29, &protocol conformance descriptor for AIML.UUID);
      v30 = sub_19393C550();
      sub_1934FD688();
      sub_1934FD688();
      sub_19344E6DC(v23, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v30 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_2_29();
    sub_1934FD688();
LABEL_10:
    v27 = v23;
LABEL_21:
    sub_19344E6DC(v27, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_31(&v23[v25]);
  if (!v26)
  {
    goto LABEL_10;
  }

  sub_19344E6DC(v23, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_12:
  v31 = *(v39 + 24);
  v32 = *(v16 + 48);
  v33 = v3 + v31;
  v34 = v40;
  sub_193448804(v33, v40, &qword_1EAE3BCA0, &unk_19395C320);
  sub_193448804(v1 + v31, v34 + v32, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v34);
  if (!v26)
  {
    sub_193448804(v34, v38[0], &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v34 + v32);
    if (!v35)
    {
      OUTLINED_FUNCTION_1_30();
      sub_1934FD0AC();
      OUTLINED_FUNCTION_0_31();
      sub_1934FD044(v36, v37, &protocol conformance descriptor for AIML.UUID);
      sub_19393C550();
      OUTLINED_FUNCTION_7_22();
      sub_1934FD688();
      sub_1934FD688();
      sub_19344E6DC(v34, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_2_29();
    sub_1934FD688();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_31(v34 + v32);
  if (!v26)
  {
LABEL_20:
    v27 = v34;
    goto LABEL_21;
  }

  sub_19344E6DC(v34, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_22:
  OUTLINED_FUNCTION_116();
}

uint64_t sub_1934FBB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = *(a1 + 16);
  if (v7 == *(a2 + 16))
  {
    if (!v7 || a1 == a2)
    {
      v13 = 1;
    }

    else
    {
      v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v9 = a1 + v8;
      v10 = a2 + v8;
      v11 = *(v6 + 72);
      do
      {
        sub_1934FB148();
        sub_1934FB148();
        static IntelligenceFlowExperimentation.TrialExperiment.== infix(_:_:)();
        v13 = v12;
        sub_1934FD688();
        sub_1934FD688();
        if ((v13 & 1) == 0)
        {
          break;
        }

        v10 += v11;
        v9 += v11;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void IntelligenceFlowExperimentation.ClientSiriRequestTier1.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_117();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  v25 = OUTLINED_FUNCTION_3_4();
  v26 = type metadata accessor for AIML.UUID(v25);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_1();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v29 = OUTLINED_FUNCTION_47(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_6();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  sub_1934FCC08(v20, *v24);
  v36 = type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(0);
  sub_193448804(v24 + *(v36 + 20), v35, &qword_1EAE3BCA0, &unk_19395C320);
  if (__swift_getEnumTagSinglePayload(v35, 1, v26) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_1_30();
    sub_1934FD0AC();
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_31();
    v39 = sub_1934FD044(v37, v38, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_33(v39);
    OUTLINED_FUNCTION_2_29();
    sub_1934FD688();
  }

  sub_193448804(v24 + *(v36 + 24), v32, &qword_1EAE3BCA0, &unk_19395C320);
  if (__swift_getEnumTagSinglePayload(v32, 1, v26) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_1_30();
    sub_1934FD0AC();
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_31();
    v42 = sub_1934FD044(v40, v41, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_33(v42);
    OUTLINED_FUNCTION_2_29();
    sub_1934FD688();
  }

  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.experimentNamespace.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.experimentId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1934FC050()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_101(*(v2 + 24));
  return sub_193448804(v3, v4, v5, v6);
}

uint64_t sub_1934FC0B0()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1(v0);
  v2 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.treatmentId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.deploymentId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.allocationStatus.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(v2);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.allocationStatus.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
  v6 = v1 + *(result + 32);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.allocationStatus.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.lastUpdatedAtInMs.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.compatibilityVersion.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  result = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(v2);
  v4 = v1 + *(result + 40);
  *v4 = v0;
  *(v4 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.compatibilityVersion.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(v0);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowExperimentation.TrialExperiment.init()()
{
  OUTLINED_FUNCTION_117();
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(v1);
  v3 = v2[6];
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = v0 + v2[7];
  v9 = v0 + v2[8];
  *v9 = 0;
  *(v9 + 4) = 256;
  v10 = v2[10];
  v11 = v0 + v2[9];
  v12 = v0 + v10;
  *v0 = 0u;
  v0[1] = 0u;
  sub_19344E6DC(v0 + v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  *v8 = 0;
  v8[8] = 1;
  *v9 = 0;
  *(v9 + 4) = 256;
  *v11 = 0;
  v11[8] = 1;
  *v12 = 0;
  v12[4] = 1;
  OUTLINED_FUNCTION_116();
}

void static IntelligenceFlowExperimentation.TrialExperiment.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v7 = OUTLINED_FUNCTION_47(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = v3[1];
  v15 = v1[1];
  if (v14)
  {
    if (!v15)
    {
      goto LABEL_28;
    }

    v16 = *v3 == *v1 && v14 == v15;
    if (!v16 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v15)
  {
    goto LABEL_28;
  }

  v17 = v3[3];
  v18 = v1[3];
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_28;
    }

    v19 = v3[2] == v1[2] && v17 == v18;
    if (!v19 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v18)
  {
    goto LABEL_28;
  }

  v40 = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
  v20 = *(v40 + 24);
  v21 = *(v10 + 48);
  sub_193448804(v3 + v20, v13, &qword_1EAE3BCA0, &unk_19395C320);
  sub_193448804(v1 + v20, &v13[v21], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v13);
  if (!v16)
  {
    sub_193448804(v13, v9, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(&v13[v21]);
    if (!v22)
    {
      OUTLINED_FUNCTION_1_30();
      sub_1934FD0AC();
      OUTLINED_FUNCTION_0_31();
      sub_1934FD044(v23, v24, &protocol conformance descriptor for AIML.UUID);
      sub_19393C550();
      OUTLINED_FUNCTION_7_22();
      sub_1934FD688();
      sub_1934FD688();
      sub_19344E6DC(v13, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v4 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    OUTLINED_FUNCTION_2_29();
    sub_1934FD688();
LABEL_27:
    sub_19344E6DC(v13, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_31(&v13[v21]);
  if (!v16)
  {
    goto LABEL_27;
  }

  sub_19344E6DC(v13, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_30:
  v25 = v40;
  OUTLINED_FUNCTION_32_2();
  if (v27)
  {
    if (!v26)
    {
      goto LABEL_28;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v28)
    {
      goto LABEL_28;
    }
  }

  v29 = *(v25 + 32);
  v30 = v3 + v29;
  v31 = *(v3 + v29 + 9);
  v32 = v1 + v29;
  if (v31)
  {
    if ((v32[9] & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v32[9])
    {
      goto LABEL_28;
    }

    v33 = *v30;
    v34 = v30[8];
    v35 = *v32;
    v36 = v32[8];
    v43 = v33;
    v44 = v34 & 1;
    v41 = v35;
    v42 = v36 & 1;
    v37 = IntelligenceFlowExperimentation.TreatmentAllocationStatus.rawValue.getter();
    if (v37 != IntelligenceFlowExperimentation.TreatmentAllocationStatus.rawValue.getter())
    {
      goto LABEL_28;
    }
  }

  OUTLINED_FUNCTION_32_2();
  if ((v38 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_0();
  }

LABEL_28:
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowExperimentation.TrialExperiment.hash(into:)()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for AIML.UUID(v1);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v5 = OUTLINED_FUNCTION_47(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v8 = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
  sub_193448804(v0 + v8[6], v7, &qword_1EAE3BCA0, &unk_19395C320);
  if (__swift_getEnumTagSinglePayload(v7, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_1_30();
    sub_1934FD0AC();
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_31();
    sub_1934FD044(v9, v10, &protocol conformance descriptor for AIML.UUID);
    sub_19393C540();
    OUTLINED_FUNCTION_2_29();
    sub_1934FD688();
  }

  v11 = (v0 + v8[7]);
  if (*(v11 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v12 = *v11;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v12);
  }

  v13 = (v0 + v8[8]);
  if (*(v13 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v14 = *(v13 + 8);
    v15 = *v13;
    OUTLINED_FUNCTION_103_0();
    v20 = v15;
    v21 = v14 & 1;
    v16 = IntelligenceFlowExperimentation.TreatmentAllocationStatus.rawValue.getter();
    MEMORY[0x193B18030](v16);
  }

  v17 = (v0 + v8[9]);
  if (*(v17 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v18 = *v17;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v18);
  }

  if (*(v0 + v8[10] + 4) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  return sub_19393CAE0();
}

uint64_t sub_1934FCB58(uint64_t (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1934FCBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t sub_1934FCC08(uint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for AIML.UUID(0);
  MEMORY[0x1EEE9AC00](v27);
  v22 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment(0);
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  result = MEMORY[0x193B18030](v11);
  if (v11)
  {
    v13 = v7[6];
    v25 = &v10[v7[7]];
    v26 = v13;
    v14 = &v10[v7[8]];
    v24 = &v10[v7[9]];
    v15 = &v10[v7[10]];
    v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v23 = *(v8 + 72);
    do
    {
      sub_1934FB148();
      if (*(v10 + 1))
      {
        sub_19393CAD0();
        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();
      }

      if (*(v10 + 3))
      {
        sub_19393CAD0();
        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();
      }

      sub_193448804(&v10[v26], v6, &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(v6, 1, v27) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_1934FD0AC();
        sub_19393CAD0();
        sub_1934FD044(&qword_1EAE3BD18, type metadata accessor for AIML.UUID, &protocol conformance descriptor for AIML.UUID);
        sub_19393C540();
        sub_1934FD688();
      }

      if (v25[8] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v17 = *v25;
        sub_19393CAD0();
        MEMORY[0x193B18060](v17);
      }

      if (v14[9] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v18 = v14[8];
        v19 = *v14;
        sub_19393CAD0();
        v28 = v19;
        v29 = v18 & 1;
        v20 = IntelligenceFlowExperimentation.TreatmentAllocationStatus.rawValue.getter();
        MEMORY[0x193B18030](v20);
      }

      if (v24[8] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v21 = *v24;
        sub_19393CAD0();
        MEMORY[0x193B18060](v21);
      }

      if (v15[4] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19393CAD0();
        sub_19393CAE0();
      }

      result = sub_1934FD688();
      v16 += v23;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_1934FD044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1934FD0AC()
{
  v1 = OUTLINED_FUNCTION_16_14();
  v2(v1);
  OUTLINED_FUNCTION_4_1();
  v3 = OUTLINED_FUNCTION_13_0();
  v4(v3);
  return v0;
}

unint64_t sub_1934FD104()
{
  result = qword_1EAE3BD20;
  if (!qword_1EAE3BD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3BD28, &qword_1939595E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BD20);
  }

  return result;
}

unint64_t sub_1934FD16C()
{
  result = qword_1EAE3BD30;
  if (!qword_1EAE3BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BD30);
  }

  return result;
}

void sub_1934FD2C0()
{
  sub_1934FD4B0(319, &qword_1ED5082C0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_19349D198(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for IntelligenceFlowExperimentation.ClientSiriRequestTier1(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for MonotonicTimestamp(319);
        if (v3 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1934FD3E4()
{
  sub_1934FD4B0(319, qword_1ED5066C0, type metadata accessor for IntelligenceFlowExperimentation.TrialExperiment, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_9_35();
    sub_1934FD4B0(319, v1, v2, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1934FD4B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1934FD53C()
{
  sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_9_35();
    sub_1934FD4B0(319, v1, v2, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED506678, MEMORY[0x1E69E7360]);
      if (v4 <= 0x3F)
      {
        sub_19349D1FC(319, qword_1ED506C68, &type metadata for IntelligenceFlowExperimentation.TreatmentAllocationStatus);
        if (v5 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED508070, MEMORY[0x1E69E76D8]);
          if (v6 <= 0x3F)
          {
            sub_19349D1FC(319, qword_1ED506E98, MEMORY[0x1E69E7668]);
            if (v7 <= 0x3F)
            {
              OUTLINED_FUNCTION_15_2();
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1934FD688()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v2(v1);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1934FD6DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v4);
  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 40) = &type metadata for AIML;
  *(v5 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1934FD764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_19393BE60();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v15 || (sub_19393CA30() & 1) != 0)
  {
    sub_193458F7C(v4, v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      result = sub_193458FEC(v10);
      *a3 = 0u;
      a3[1] = 0u;
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      sub_1934948FC();
      return (*(v12 + 8))(v14, v11);
    }
  }

  else
  {
    v17 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v17);
    v19 = v18;
    *v18 = a1;
    v18[1] = a2;
    v18[5] = type metadata accessor for AIML.UUID(0);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v19 + 2);
    sub_1934FD998(v4, boxed_opaque_existential_1Tm);
    *(v19 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1934FD998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIML.UUID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1934FDA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x726F6A616DLL;
  v7 = v3[1];
  v20 = *v3;
  v21 = v7;
  v22 = *(v3 + 4);
  v8 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v8 || (result = OUTLINED_FUNCTION_1_31(0x726F6A616DLL), (result & 1) != 0))
  {
    if (BYTE4(v20))
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

    v10 = v20;
    goto LABEL_9;
  }

  result = 0x726F6E696DLL;
  v11 = a1 == 0x726F6E696DLL && a2 == 0xE500000000000000;
  if (v11 || (result = OUTLINED_FUNCTION_1_31(0x726F6E696DLL), (result & 1) != 0))
  {
    if (BYTE12(v20))
    {
      goto LABEL_7;
    }

    v10 = DWORD2(v20);
    goto LABEL_9;
  }

  result = 0x6863746170;
  v12 = a1 == 0x6863746170 && a2 == 0xE500000000000000;
  if (v12 || (result = OUTLINED_FUNCTION_1_31(0x6863746170), (result & 1) != 0))
  {
    if (BYTE4(v21))
    {
      goto LABEL_7;
    }

    v10 = v21;
LABEL_9:
    LODWORD(v19[0]) = v10;
    return sub_1934948FC();
  }

  result = 0x61656C6572657270;
  v13 = a1 == 0x61656C6572657270 && a2 == 0xEA00000000006573;
  if (v13 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (!v22)
    {
      goto LABEL_7;
    }

    v19[0] = *(&v21 + 1);
    v19[1] = v22;
    return sub_1934948FC();
  }

  v14 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
  v16 = v15;
  *v15 = a1;
  v15[1] = a2;
  v15[5] = &type metadata for AIML.Version;
  v17 = swift_allocObject();
  v16[2] = v17;
  *(v17 + 48) = v22;
  v18 = v21;
  *(v17 + 16) = v20;
  *(v17 + 32) = v18;
  *(v16 + 48) = 1;
  swift_willThrow();

  return sub_1934FDBFC(&v20, v19);
}

uint64_t sub_1934FDC70@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *v3;
  v7 = result == 0xD000000000000012 && 0x8000000193A19030 == a2;
  if (v7 || (v8 = result, v10 = *(v3 + 1), v9 = *(v3 + 2), v11 = v3[24], result = OUTLINED_FUNCTION_0_32(0xD000000000000012, 0x8000000193A19030), (result & 1) != 0))
  {
    if (v6 == 2)
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

    return sub_1934948FC();
  }

  result = 0xD000000000000016;
  v12 = v8 == 0xD000000000000016 && 0x8000000193A19050 == a2;
  if (v12 || (result = OUTLINED_FUNCTION_0_32(0xD000000000000016, 0x8000000193A19050), (result & 1) != 0))
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    return sub_1934948FC();
  }

  result = 0x704F646C756F6873;
  v13 = v8 == 0x704F646C756F6873 && a2 == 0xEA00000000006E65;
  if (v13 || (result = OUTLINED_FUNCTION_0_32(0x704F646C756F6873, 0xEA00000000006E65), (result & 1) != 0))
  {
    if (v11 == 2)
    {
      goto LABEL_7;
    }

    return sub_1934948FC();
  }

  v14 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
  v16 = v15;
  *v15 = v8;
  v15[1] = a2;
  v15[5] = &type metadata for IFOutcomeSuccess;
  OUTLINED_FUNCTION_184();
  v17 = swift_allocObject();
  v16[2] = v17;
  *(v17 + 16) = v6;
  *(v17 + 24) = v10;
  *(v17 + 32) = v9;
  *(v17 + 40) = v11;
  *(v16 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1934FDE40@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = result == 0xD000000000000013 && 0x8000000193A19070 == a2;
  if (v8 || (v9 = result, result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v6)
    {
      return sub_1934948FC();
    }

    else
    {
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  else
  {
    v10 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v10);
    *v11 = v9;
    *(v11 + 8) = a2;
    *(v11 + 40) = &type metadata for IFOutcomeToolDisambiguation;
    *(v11 + 16) = v7;
    *(v11 + 24) = v6;
    *(v11 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1934FDF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x6E69616D6F64;
  v8 = *v3;
  v7 = v3[1];
  v9 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v9 || (v11 = v3[2], v12 = *(v3 + 24), result = OUTLINED_FUNCTION_0_32(0x6E69616D6F64, 0xE600000000000000), (result & 1) != 0))
  {
    if (v7)
    {
      return sub_1934948FC();
    }

    goto LABEL_14;
  }

  v13 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v13 || (result = OUTLINED_FUNCTION_0_32(1701080931, 0xE400000000000000), (result & 1) != 0))
  {
    if ((v12 & 1) == 0)
    {
      return sub_1934948FC();
    }

LABEL_14:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  v14 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
  v16 = v15;
  *v15 = a1;
  v15[1] = a2;
  v15[5] = &type metadata for IFError;
  OUTLINED_FUNCTION_184();
  v17 = swift_allocObject();
  v16[2] = v17;
  *(v17 + 16) = v8;
  *(v17 + 24) = v7;
  *(v17 + 32) = v11;
  *(v17 + 40) = v12;
  *(v16 + 48) = 1;
  swift_willThrow();
}

uint64_t IFPayload.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IFPayload.allCases.getter()
{
  sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3BD60, &qword_1939599F8);
  OUTLINED_FUNCTION_16_0();
  if (!(!v8 & v7))
  {
    v40 = OUTLINED_FUNCTION_39(v6);
    OUTLINED_FUNCTION_84_2(v40, v41, v42, v43, &qword_1EAE3BD60, &qword_1939599F8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v2, v3, v4, v5);
  if (v14 != v15)
  {
    v44 = OUTLINED_FUNCTION_39(v13);
    OUTLINED_FUNCTION_85(v44, v45, v46, v47, &qword_1EAE3BD60, &qword_1939599F8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v9, v10, v11, v12);
  if (v14 != v15)
  {
    v48 = OUTLINED_FUNCTION_39(v20);
    v16 = sub_1934B0FCC(v48, v0, 1, v49, &qword_1EAE3BD60, &qword_1939599F8);
    v19 = v16;
  }

  OUTLINED_FUNCTION_9_7(v16, v17, v18, v19);
  if (!(v14 ^ v15 | v8))
  {
    v50 = OUTLINED_FUNCTION_39(v25);
    v21 = OUTLINED_FUNCTION_84_2(v50, v51, v52, v53, &qword_1EAE3BD60, &qword_1939599F8);
    v24 = v21;
  }

  OUTLINED_FUNCTION_3_7(v21, v22, v23, v24);
  if (!(v14 ^ v15 | v8))
  {
    v54 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_85(v54, v55, v56, v57, &qword_1EAE3BD60, &qword_1939599F8);
    v29 = v26;
  }

  OUTLINED_FUNCTION_47_5(v26, v27, v28, v29);
  OUTLINED_FUNCTION_4(v31);
  if (v1 + 6 > (v36 >> 1))
  {
    v58 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_84_2(v58, v59, v60, v61, &qword_1EAE3BD60, &qword_1939599F8);
    v35 = v32;
  }

  OUTLINED_FUNCTION_50(v32, v33, v34, v35);
  *(v37 + 32) = 4;
  *(v37 + 40) = 1;
  return v38;
}

unint64_t IFPayload.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x72436E6F69746341;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_18_16();
      break;
    case 2:
      result = OUTLINED_FUNCTION_20_11();
      break;
    case 3:
      result = OUTLINED_FUNCTION_19_19();
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

void IFPayload.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x72436E6F69746341 ? (v5 = v0 == 0xED00006465746165) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x72436E6F69746341, 0xED00006465746165) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_18_16();
    v9 = v1 == v7 && v0 == v8;
    if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
      v10 = OUTLINED_FUNCTION_20_11();
      v12 = v1 == v10 && v0 == v11;
      if (v12 || (OUTLINED_FUNCTION_0_9(v10, v11) & 1) != 0)
      {

        v6 = 2;
      }

      else
      {
        v13 = OUTLINED_FUNCTION_19_19();
        v15 = v1 == v13 && v0 == v14;
        if (v15 || (OUTLINED_FUNCTION_0_9(v13, v14) & 1) != 0)
        {

          v6 = 3;
        }

        else if (v1 == 0xD000000000000015 && 0x8000000193A19090 == v0)
        {

          v6 = 4;
        }

        else
        {
          v17 = OUTLINED_FUNCTION_0_9(0xD000000000000015, 0x8000000193A19090);

          v6 = 4;
          if ((v17 & 1) == 0)
          {
            v6 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v6);
}

uint64_t IFOutcome.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IFOutcome.allCases.getter()
{
  sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3BD58, &qword_1939599F0);
  OUTLINED_FUNCTION_16_0();
  if (!(!v8 & v7))
  {
    v82 = OUTLINED_FUNCTION_39(v6);
    OUTLINED_FUNCTION_84_2(v82, v83, v84, v85, &qword_1EAE3BD58, &qword_1939599F0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v2, v3, v4, v5);
  if (v14 != v15)
  {
    v86 = OUTLINED_FUNCTION_39(v13);
    OUTLINED_FUNCTION_85(v86, v87, v88, v89, &qword_1EAE3BD58, &qword_1939599F0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v9, v10, v11, v12);
  if (v14 != v15)
  {
    v90 = OUTLINED_FUNCTION_39(v20);
    v16 = sub_1934B0FCC(v90, v0, 1, v91, &qword_1EAE3BD58, &qword_1939599F0);
    v19 = v16;
  }

  OUTLINED_FUNCTION_9_7(v16, v17, v18, v19);
  if (!(v14 ^ v15 | v8))
  {
    v92 = OUTLINED_FUNCTION_39(v25);
    v21 = OUTLINED_FUNCTION_84_2(v92, v93, v94, v95, &qword_1EAE3BD58, &qword_1939599F0);
    v24 = v21;
  }

  OUTLINED_FUNCTION_3_7(v21, v22, v23, v24);
  if (!(v14 ^ v15 | v8))
  {
    v96 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_85(v96, v97, v98, v99, &qword_1EAE3BD58, &qword_1939599F0);
    v29 = v26;
  }

  OUTLINED_FUNCTION_47_5(v26, v27, v28, v29);
  OUTLINED_FUNCTION_4(v31);
  if (v1 + 6 > (v36 >> 1))
  {
    v100 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_84_2(v100, v101, v102, v103, &qword_1EAE3BD58, &qword_1939599F0);
    v35 = v32;
  }

  OUTLINED_FUNCTION_50(v32, v33, v34, v35);
  OUTLINED_FUNCTION_4(v37);
  if (v1 + 7 > (v42 >> 1))
  {
    v104 = OUTLINED_FUNCTION_39(v42);
    v38 = OUTLINED_FUNCTION_85(v104, v105, v106, v107, &qword_1EAE3BD58, &qword_1939599F0);
    v41 = v38;
  }

  OUTLINED_FUNCTION_47_5(v38, v39, v40, v41);
  OUTLINED_FUNCTION_4(v43);
  if (v1 + 8 > (v48 >> 1))
  {
    v108 = OUTLINED_FUNCTION_39(v48);
    v44 = OUTLINED_FUNCTION_84_2(v108, v109, v110, v111, &qword_1EAE3BD58, &qword_1939599F0);
    v47 = v44;
  }

  OUTLINED_FUNCTION_50(v44, v45, v46, v47);
  OUTLINED_FUNCTION_4(v49);
  if (v1 + 9 > (v54 >> 1))
  {
    v112 = OUTLINED_FUNCTION_39(v54);
    v50 = OUTLINED_FUNCTION_85(v112, v113, v114, v115, &qword_1EAE3BD58, &qword_1939599F0);
    v53 = v50;
  }

  OUTLINED_FUNCTION_47_5(v50, v51, v52, v53);
  OUTLINED_FUNCTION_4(v55);
  if (v1 + 10 > (v60 >> 1))
  {
    v116 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_84_2(v116, v117, v118, v119, &qword_1EAE3BD58, &qword_1939599F0);
    v59 = v56;
  }

  OUTLINED_FUNCTION_50(v56, v57, v58, v59);
  OUTLINED_FUNCTION_4(v61);
  if (v1 + 11 > (v66 >> 1))
  {
    v120 = OUTLINED_FUNCTION_39(v66);
    v62 = OUTLINED_FUNCTION_85(v120, v121, v122, v123, &qword_1EAE3BD58, &qword_1939599F0);
    v65 = v62;
  }

  OUTLINED_FUNCTION_47_5(v62, v63, v64, v65);
  OUTLINED_FUNCTION_4(v67);
  if (v1 + 12 > (v72 >> 1))
  {
    v124 = OUTLINED_FUNCTION_39(v72);
    v68 = OUTLINED_FUNCTION_84_2(v124, v125, v126, v127, &qword_1EAE3BD58, &qword_1939599F0);
    v71 = v68;
  }

  OUTLINED_FUNCTION_50(v68, v69, v70, v71);
  OUTLINED_FUNCTION_4(v73);
  if (v1 + 13 > (v78 >> 1))
  {
    v128 = OUTLINED_FUNCTION_39(v78);
    v74 = OUTLINED_FUNCTION_85(v128, v129, v130, v131, &qword_1EAE3BD58, &qword_1939599F0);
    v77 = v74;
  }

  OUTLINED_FUNCTION_47_5(v74, v75, v76, v77);
  *(v79 + 32) = 11;
  *(v79 + 40) = v0;
  return v80;
}

unint64_t IFOutcome.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x73736563637553;
  switch(*v0)
  {
    case 1:
    case 8:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 0xALL:
      result = 0x6572756C696146;
      break;
    case 0xBLL:
      result = OUTLINED_FUNCTION_17_14();
      break;
    default:
      return result;
  }

  return result;
}

void IFOutcome.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x73736563637553 ? (v5 = v0 == 0xE700000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x73736563637553, 0xE700000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = v1 == 0xD000000000000012 && 0x8000000193A191B0 == v0;
    if (v7 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, 0x8000000193A191B0) & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_60();
      v9 = v4 && v8 == v0;
      if (v9 || (OUTLINED_FUNCTION_0_9(0xD000000000000013, v8) & 1) != 0)
      {

        v6 = 2;
      }

      else
      {
        v10 = v1 == 0xD000000000000015 && 0x8000000193A19170 == v0;
        if (v10 || (OUTLINED_FUNCTION_0_9(0xD000000000000015, 0x8000000193A19170) & 1) != 0)
        {

          v6 = 3;
        }

        else
        {
          v11 = v1 == 0xD000000000000017 && 0x8000000193A19150 == v0;
          if (v11 || (OUTLINED_FUNCTION_0_9(0xD000000000000017, 0x8000000193A19150) & 1) != 0)
          {

            v6 = 4;
          }

          else
          {
            OUTLINED_FUNCTION_60();
            v13 = v4 && v12 == v0;
            if (v13 || (OUTLINED_FUNCTION_0_9(0xD000000000000013, v12) & 1) != 0)
            {

              v6 = 5;
            }

            else
            {
              v14 = v1 == 0xD00000000000001BLL && 0x8000000193A19110 == v0;
              if (v14 || (OUTLINED_FUNCTION_0_9(0xD00000000000001BLL, 0x8000000193A19110) & 1) != 0)
              {

                v6 = 6;
              }

              else
              {
                v15 = v1 == 0xD000000000000011 && 0x8000000193A190F0 == v0;
                if (v15 || (OUTLINED_FUNCTION_0_9(0xD000000000000011, 0x8000000193A190F0) & 1) != 0)
                {

                  v6 = 7;
                }

                else
                {
                  v16 = v1 == 0xD000000000000012 && 0x8000000193A190D0 == v0;
                  if (v16 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, 0x8000000193A190D0) & 1) != 0)
                  {

                    v6 = 8;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_60();
                    v18 = v4 && v17 == v0;
                    if (v18 || (OUTLINED_FUNCTION_0_9(0xD000000000000013, v17) & 1) != 0)
                    {

                      v6 = 9;
                    }

                    else
                    {
                      v19 = v1 == 0x6572756C696146 && v0 == 0xE700000000000000;
                      if (v19 || (OUTLINED_FUNCTION_0_9(0x6572756C696146, 0xE700000000000000) & 1) != 0)
                      {

                        v6 = 10;
                      }

                      else
                      {
                        v20 = OUTLINED_FUNCTION_17_14();
                        if (v1 == v20 && v0 == v21)
                        {

                          v6 = 11;
                        }

                        else
                        {
                          v23 = OUTLINED_FUNCTION_0_9(v20, v21);

                          v6 = 11;
                          if ((v23 & 1) == 0)
                          {
                            v6 = 0;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v6);
}

unint64_t sub_1934FED28()
{
  result = qword_1EAE3BD48;
  if (!qword_1EAE3BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BD48);
  }

  return result;
}

unint64_t sub_1934FED80()
{
  result = qword_1EAE3BD50;
  if (!qword_1EAE3BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BD50);
  }

  return result;
}

uint64_t sub_1934FEDD8()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9140);
  __swift_project_value_buffer(v0, qword_1EAEA9140);
  return sub_19393C410();
}

uint64_t sub_1934FEE30()
{
  OUTLINED_FUNCTION_110();
  do
  {
    result = sub_19393C0E0();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1934FEED8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_193497890(v3);
    }
  }

  return result;
}

uint64_t sub_1934FEF4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v10 - v3;
  v5 = sub_19393BE60();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_193458F7C(a1, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return sub_193458FEC(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_19344652C();
  return (*(v6 + 8))(v8, v5);
}

void sub_1934FF150()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEA9170);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v5, xmmword_19394FBC0);
  *v1 = 1;
  *v0 = "major";
  *(v0 + 8) = 5;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 2;
  *v8 = "minor";
  v8[1] = 5;
  v10 = OUTLINED_FUNCTION_1_3(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_9_4((v1 + 2 * v4));
  *v11 = "patch";
  *(v11 + 1) = 5;
  v12 = OUTLINED_FUNCTION_1_3(v11);
  (v7)(v12);
  v13 = OUTLINED_FUNCTION_13((v1 + 3 * v4));
  *v13 = "prerelease";
  *(v13 + 1) = 10;
  v13[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934FF300()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_1934FF394()
{
  OUTLINED_FUNCTION_110();
  v2 = *(v0 + 12);
  v3 = *(v0 + 20);
  v4 = *(v0 + 32);
  if ((*(v0 + 4) & 1) == 0)
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393C3D0();
  }

  if (!v1)
  {
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if (v4)
    {
      sub_19393C3C0();
    }
  }
}

void sub_1934FF4D0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA9188);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = OUTLINED_FUNCTION_156();
  *(v5 + 16) = xmmword_19394FBB0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + dword_1EAEA91C0;
  *v6 = 2;
  *v7 = "didShowInAppResult";
  *(v7 + 8) = 18;
  *(v7 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_10_0();
  v9();
  v10 = OUTLINED_FUNCTION_9_4((v6 + v2));
  *v10 = "followUpActionBundleId";
  *(v10 + 1) = 22;
  v10[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v9();
  v11 = OUTLINED_FUNCTION_13((v6 + 2 * v2));
  *v11 = "shouldOpen";
  *(v11 + 1) = 10;
  v11[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1934FF66C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 4:
        goto LABEL_9;
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 2:
LABEL_9:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
    }
  }
}

void sub_1934FF6E4()
{
  OUTLINED_FUNCTION_110();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (*v0 != 2)
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393C2E0();
  }

  if (!v1)
  {
    if (v2)
    {
      sub_19393C3C0();
    }

    if (v3 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }
  }
}

uint64_t sub_1934FF810(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_19393C420();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_19394FAC0;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = a3;
  *v13 = a4;
  *(v13 + 8) = a5;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  (*(v15 + 104))(v13, v14);
  return sub_19393C410();
}

uint64_t sub_1934FF97C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

uint64_t sub_1934FF9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 8))
  {
    return sub_19393C3C0();
  }

  return result;
}

void sub_1934FFA6C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEA91B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = OUTLINED_FUNCTION_156();
  *(v5 + 16) = xmmword_19394FBE0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + dword_1EAEA91F0;
  *v6 = 1;
  *v7 = "domain";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_10_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v6 + v2);
  *v11 = 2;
  *v10 = "code";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934FFBE0()
{
  OUTLINED_FUNCTION_110();
  v2 = *(v0 + 24);
  if (*(v0 + 8))
  {
    sub_19393C3C0();
  }

  if (!v1 && (v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393C360();
  }
}

void sub_1934FFCA0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEA91D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_49_0();
  v3 = OUTLINED_FUNCTION_156();
  *(v3 + 16) = xmmword_1939526E0;
  v4 = v3 + v0 + dword_1EAEA9208;
  *(v3 + v0) = 0;
  *v4 = "IFPayloadUnknown";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_3_1(v3 + v0 + v2);
  *v8 = 1;
  *v7 = "IFPayload_Action_Created";
  *(v7 + 8) = 24;
  *(v7 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v9 = OUTLINED_FUNCTION_3_1(v3 + v0 + 2 * v2);
  *v10 = 2;
  *v9 = "IFPayload_Queries_Created";
  *(v9 + 8) = 25;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v11 = OUTLINED_FUNCTION_9_4((v3 + v0 + 3 * v2));
  *v11 = "IFPayload_Action_Canceled";
  *(v11 + 1) = 25;
  v11[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v12 = OUTLINED_FUNCTION_13((v3 + v0 + 4 * v2));
  *v12 = "IFPayload_Undo_Redo_Request";
  *(v12 + 1) = 27;
  v12[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v13 = OUTLINED_FUNCTION_3_1(v3 + v0 + 5 * v2);
  *v14 = 5;
  *v13 = "IFPayload_Type_Conversion_Request";
  *(v13 + 8) = 33;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1934FFEFC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEA91E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v5, xmmword_193952680);
  *v1 = 0;
  *v0 = "IFOutcomeUnknown";
  *(v0 + 8) = 16;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 1;
  v10 = OUTLINED_FUNCTION_0_0(v8, "IFOutcome_Success");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v12 = 2;
  v13 = OUTLINED_FUNCTION_0_0(v11, "IFOutcome_Action_Confirmation");
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  *v14 = "IFOutcome_Parameter_Needs_Value";
  *(v14 + 1) = 31;
  v15 = OUTLINED_FUNCTION_1_3(v14);
  (v7)(v15);
  v16 = OUTLINED_FUNCTION_13((v1 + 4 * v4));
  v17 = OUTLINED_FUNCTION_0_0(v16, "IFOutcome_Parameter_Confirmation");
  (v7)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v1 + 5 * v4);
  *v19 = 5;
  v20 = OUTLINED_FUNCTION_0_0(v18, "IFOutcome_Parameter_Disambiguation");
  (v7)(v20);
  v21 = OUTLINED_FUNCTION_14_4(6);
  *v21 = "IFOutcome_Parameter_Not_Allowed";
  *(v21 + 1) = 31;
  v22 = OUTLINED_FUNCTION_1_3(v21);
  (v7)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v1 + 7 * v4);
  *v24 = 7;
  v25 = OUTLINED_FUNCTION_0_0(v23, "IFOutcome_Parameter_Candidates_Not_Found");
  (v7)(v25);
  v26 = OUTLINED_FUNCTION_3_1(&v1[v4]);
  *v27 = 8;
  v28 = OUTLINED_FUNCTION_0_0(v26, "IFOutcome_Action_Requirement");
  (v7)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v1 + 9 * v4);
  *v30 = 9;
  *v29 = "IFOutcome_Tool_Disambiguation";
  v29[1] = 29;
  v31 = OUTLINED_FUNCTION_1_3(v29);
  (v7)(v31);
  v32 = OUTLINED_FUNCTION_14_4(10);
  v33 = OUTLINED_FUNCTION_0_0(v32, "IFOutcome_Value_Disambiguation");
  (v7)(v33);
  v34 = OUTLINED_FUNCTION_14_4(11);
  *v34 = "IFOutcome_Failure";
  *(v34 + 1) = 17;
  v35 = OUTLINED_FUNCTION_1_3(v34);
  (v7)(v35);
  v36 = OUTLINED_FUNCTION_14_4(12);
  *v36 = "IFOutcome_Snippet_Stream";
  *(v36 + 1) = 24;
  v36[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

BOOL static AIML.UUID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25 - v15;
  v17 = *(v14 + 56);
  sub_193458F7C(a1, &v25 - v15);
  sub_193458F7C(a2, &v16[v17]);
  OUTLINED_FUNCTION_31(v16);
  if (!v18)
  {
    sub_193458F7C(v16, v12);
    OUTLINED_FUNCTION_31(&v16[v17]);
    if (!v18)
    {
      (*(v6 + 32))(v9, &v16[v17], v4);
      OUTLINED_FUNCTION_2_30();
      sub_193501374(v20, v21, MEMORY[0x1E69695C8]);
      v22 = sub_19393C550();
      v23 = *(v6 + 8);
      v24 = OUTLINED_FUNCTION_13_0();
      v23(v24);
      (v23)(v12, v4);
      sub_193442B60(v16, &qword_1EAE3AA88, &qword_19394F9C0);
      return (v22 & 1) != 0;
    }

    (*(v6 + 8))(v12, v4);
LABEL_9:
    sub_193442B60(v16, &qword_1EAE3B4E8, &unk_193952CF0);
    return 0;
  }

  OUTLINED_FUNCTION_31(&v16[v17]);
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_193442B60(v16, &qword_1EAE3AA88, &qword_19394F9C0);
  return 1;
}

uint64_t AIML.UUID.hash(into:)(uint64_t a1)
{
  v2 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  sub_193458F7C(v1, &v14 - v9);
  if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
  {
    return sub_19393CAD0();
  }

  (*(v4 + 32))(v7, v10, v2);
  sub_19393CAD0();
  OUTLINED_FUNCTION_2_30();
  sub_193501374(v12, v13, MEMORY[0x1E69695B8]);
  sub_19393C540();
  return (*(v4 + 8))(v7, v2);
}

uint64_t AIML.UUID.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  AIML.UUID.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1935006EC(uint64_t a1)
{
  sub_19393CAB0();
  AIML.UUID.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t AIML.Version.major.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t AIML.Version.minor.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t AIML.Version.patch.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t AIML.Version.prerelease.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

void AIML.Version.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

BOOL static AIML.Version.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a2 + 32);
  if (v4)
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v12 = *(a2 + 4);
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (v5 == *(a2 + 8))
    {
      v13 = *(a2 + 12);
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v7 == *(a2 + 16))
    {
      v14 = *(a2 + 20);
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v15 = v9 == *(a2 + 24) && v10 == v11;
    return v15 || (sub_19393CA30() & 1) != 0;
  }

  return !v11;
}

uint64_t AIML.Version.hash(into:)()
{
  v1 = *(v0 + 12);
  v2 = *(v0 + 20);
  v3 = *(v0 + 32);
  if (*(v0 + 4) == 1)
  {
    sub_19393CAD0();
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_19393CAD0();
    sub_19393CAE0();
    if (!v1)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393CAE0();
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_19393CAD0();
      if (v3)
      {
        goto LABEL_5;
      }

      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();
  if (v2)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_19393CAD0();
  sub_19393CAE0();
  if (!v3)
  {
    return sub_19393CAD0();
  }

LABEL_5:
  sub_19393CAD0();
  OUTLINED_FUNCTION_15_1();

  return sub_19393C640();
}

uint64_t AIML.Version.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  AIML.Version.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193500A8C(uint64_t a1)
{
  sub_19393CAB0();
  AIML.Version.hash(into:)();
  return sub_19393CB00();
}

uint64_t IFOutcomeSuccess.followUpActionBundleId.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

IntelligencePlatformLibrary::IFOutcomeSuccess __swiftcall IFOutcomeSuccess.init()()
{
  *v0 = 2;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 2;
  return result;
}

uint64_t static IFOutcomeSuccess.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = a1[24];
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = a2[24];
  if (v4 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else
  {
    v12 = 0;
    if (v8 == 2 || ((v8 ^ v4) & 1) != 0)
    {
      return v12;
    }
  }

  if (v6)
  {
    if (!v10)
    {
      return 0;
    }

    v13 = v5 == v9 && v6 == v10;
    if (!v13 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v7 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v11 ^ v7) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t IFOutcomeSuccess.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*v0 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (v1)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  if (v2 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t IFOutcomeSuccess.hashValue.getter()
{
  OUTLINED_FUNCTION_4_22();
  sub_19393CAB0();
  IFOutcomeSuccess.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193500DB8()
{
  OUTLINED_FUNCTION_4_22();
  sub_19393CAB0();
  IFOutcomeSuccess.hash(into:)();
  return sub_19393CB00();
}

uint64_t IFOutcomeToolDisambiguation.assistantSchemaKind.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligencePlatformLibrary::IFOutcomeToolDisambiguation __swiftcall IFOutcomeToolDisambiguation.init()()
{
  v1 = v0;

  *v1 = 0;
  v1[1] = 0;
  result.assistantSchemaKind.value._object = v3;
  result.assistantSchemaKind.value._countAndFlagsBits = v2;
  return result;
}

uint64_t static IFOutcomeToolDisambiguation.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t IFOutcomeToolDisambiguation.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t IFOutcomeToolDisambiguation.hashValue.getter()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_193500FE8(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t IFError.domain.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IFError.code.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void IFError.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t static IFError.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
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
      return 0;
    }
  }

  return 1;
}

uint64_t IFError.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (*(v1 + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v3)
    {
      return sub_19393CAD0();
    }
  }

  else
  {
    sub_19393CAD0();
    if (v3)
    {
      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();
  return MEMORY[0x193B18060](v2);
}

uint64_t IFError.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (!v3)
  {
    MEMORY[0x193B18060](v2);
  }

  return sub_19393CB00();
}

uint64_t sub_1935012D4(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_19393CAB0();
  IFError.hash(into:)(v5);
  return sub_19393CB00();
}

uint64_t sub_193501374(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1935013C0()
{
  result = qword_1EAE3BDC8;
  if (!qword_1EAE3BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BDC8);
  }

  return result;
}

unint64_t sub_193501418()
{
  result = qword_1EAE3BDD0;
  if (!qword_1EAE3BDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BDD0);
  }

  return result;
}

unint64_t sub_193501470()
{
  result = qword_1EAE3BDD8;
  if (!qword_1EAE3BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BDD8);
  }

  return result;
}

unint64_t sub_1935014C8()
{
  result = qword_1EAE3BDE0;
  if (!qword_1EAE3BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BDE0);
  }

  return result;
}

unint64_t sub_193501520()
{
  result = qword_1EAE3BDE8;
  if (!qword_1EAE3BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BDE8);
  }

  return result;
}

uint64_t sub_193501580@<X0>(uint64_t *a1@<X8>)
{
  result = IFPayload.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935015D8@<X0>(uint64_t *a1@<X8>)
{
  result = static IFPayload.allCases.getter();
  *a1 = result;
  return result;
}

unint64_t sub_193501604()
{
  result = qword_1EAE3BE00;
  if (!qword_1EAE3BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BE00);
  }

  return result;
}

uint64_t sub_19350168C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193501794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1935018A0@<X0>(uint64_t *a1@<X8>)
{
  result = IFOutcome.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935018F8@<X0>(uint64_t *a1@<X8>)
{
  result = static IFOutcome.allCases.getter();
  *a1 = result;
  return result;
}

unint64_t sub_193501924()
{
  result = qword_1EAE3BE18;
  if (!qword_1EAE3BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BE18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AIML(_BYTE *result, int a2, int a3)
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

void sub_193501AF4(uint64_t a1)
{
  sub_1934D6C4C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_193501B60(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_193501BAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_193501C18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_193501C64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowFeedbackLearning.TaskStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_46_4(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_193501D18(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_46_4(*a1);
  }

  else
  {
    return 0;
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LLMCacheManagerTelemetry.json()()
{
  OUTLINED_FUNCTION_26();
  v23 = v1;
  v24 = v2;
  v3 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for LLMCacheManagerTelemetry(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE20, &qword_19395A0A0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  OUTLINED_FUNCTION_3_30();
  sub_19350346C(v0, v14, v18);
  sub_1934470C8(v14, v10, v17);
  sub_19393C080();
  sub_193501EF8();
  sub_19393C250();
  (*(v5 + 8))(v9, v3);
  sub_19344E6DC(v17, &qword_1EAE3BE20, &qword_19395A0A0);
  OUTLINED_FUNCTION_27();
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

unint64_t sub_193501EF8()
{
  result = qword_1EAE3BE28;
  if (!qword_1EAE3BE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3BE20, &qword_19395A0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BE28);
  }

  return result;
}

uint64_t static LLMCacheManagerTelemetry.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE20, &qword_19395A0A0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;

  sub_19393C060();
  sub_193501EF8();
  result = sub_19393C260();
  if (!v3)
  {
    OUTLINED_FUNCTION_7_23();
    return sub_1935030F4(v9, a3, v11);
  }

  return result;
}

void static LLMCacheManagerTelemetry.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v32 = v2;
  v33 = v1;
  v31 = v3;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE20, &qword_19395A0A0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  if (*sub_193509008() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    (*(v11 + 16))(v15, v18, v9);
    v19 = OUTLINED_FUNCTION_19_3();
    sub_193450688(v19, v20);
    sub_193501EF8();
    OUTLINED_FUNCTION_19_3();
    sub_19393C280();
    (*(v11 + 8))(v18, v9);
    if (!v0)
    {
      OUTLINED_FUNCTION_7_23();
      v23 = v32;
      sub_1935030F4(v8, v32, v24);
      v25 = type metadata accessor for LLMCacheManagerTelemetry(0);
      v26 = *(v25 + 20);
      sub_19344E6DC(v23 + v26, &qword_1EAE3A9E8, &qword_19394F800);
      v27 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v28 + 16))(v23 + v26, v31, v27);
      __swift_storeEnumTagSinglePayload(v23 + v26, 0, 1, v27);
      v29 = *(v25 + 24);
      sub_19344E6DC(v23 + v29, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v33, v23 + v29);
    }
  }

  else
  {
    v21 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v21);
    *v22 = v5;
    *(v22 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t LLMCacheManagerTelemetry.serialize()()
{
  v1 = type metadata accessor for LLMCacheManagerTelemetry(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE20, &qword_19395A0A0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  OUTLINED_FUNCTION_3_30();
  sub_19350346C(v0, v5, v9);
  sub_1934470C8(v5, v1, v8);
  sub_193501EF8();
  sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3BE20, &qword_19395A0A0);
  return OUTLINED_FUNCTION_13_0();
}

void sub_1935024D4()
{
  OUTLINED_FUNCTION_26();
  v66 = v2;
  v67 = v1;
  v68 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE38, &qword_19395A0B0);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v64 - v9;
  v65 = type metadata accessor for CacheManagerTarget(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v64 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v14);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v64 - v16;
  v18 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_1();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BE30, &qword_19395A0A8);
  OUTLINED_FUNCTION_47(v23);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v64 - v25;
  v27 = type metadata accessor for CacheManagerTelemetryEventMetadata(0);
  MEMORY[0x1EEE9AC00](0x74654D746E657665);
  OUTLINED_FUNCTION_5_1();
  v32 = v31 - v30;
  v33 = v6 == v28 && v4 == v29;
  if (!v33 && (OUTLINED_FUNCTION_0_18(v28, v29) & 1) == 0)
  {
    v47 = v6 == 0xD000000000000012 && 0x8000000193A17A30 == v4;
    if (v47 || (OUTLINED_FUNCTION_0_18(0xD000000000000012, 0x8000000193A17A30) & 1) != 0)
    {
      v48 = type metadata accessor for LLMCacheManagerTelemetry(0);
      v49 = OUTLINED_FUNCTION_27_4(*(v48 + 32));
      sub_193448758(v49, v17, v50, v51);
      if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
      {
        v38 = &qword_1EAE3B498;
        v39 = &unk_193959120;
        v40 = v17;
        goto LABEL_8;
      }

      sub_1935030F4(v17, v22, type metadata accessor for MonotonicTimestamp);
      sub_193494798(v18, &off_1F07BD958, v66);
      v45 = type metadata accessor for MonotonicTimestamp;
      v46 = v22;
    }

    else
    {
      v52 = v6 == 0x746567726174 && v4 == 0xE600000000000000;
      if (!v52 && (OUTLINED_FUNCTION_0_18(0x746567726174, 0xE600000000000000) & 1) == 0)
      {
        v59 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v59);
        v61 = v60;
        *v60 = v6;
        v60[1] = v4;
        v60[5] = type metadata accessor for LLMCacheManagerTelemetry(0);
        __swift_allocate_boxed_opaque_existential_1Tm(v61 + 2);
        OUTLINED_FUNCTION_3_30();
        sub_19350346C(v68, v62, v63);
        OUTLINED_FUNCTION_9_36();

        goto LABEL_11;
      }

      v53 = type metadata accessor for LLMCacheManagerTelemetry(0);
      v54 = OUTLINED_FUNCTION_27_4(*(v53 + 36));
      sub_193448758(v54, v10, v55, v56);
      v57 = v65;
      if (__swift_getEnumTagSinglePayload(v10, 1, v65) == 1)
      {
        v38 = &qword_1EAE3BE38;
        v39 = &qword_19395A0B0;
        v40 = v10;
        goto LABEL_8;
      }

      v58 = v64;
      sub_1935030F4(v10, v64, type metadata accessor for CacheManagerTarget);
      sub_193494798(v57, &off_1F07C4648, v66);
      OUTLINED_FUNCTION_1_32();
      v46 = v58;
    }

LABEL_10:
    sub_193503150(v46, v45);
    goto LABEL_11;
  }

  v34 = type metadata accessor for LLMCacheManagerTelemetry(0);
  v35 = OUTLINED_FUNCTION_27_4(*(v34 + 28));
  sub_193448758(v35, v26, v36, v37);
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) != 1)
  {
    sub_1935030F4(v26, v32, type metadata accessor for CacheManagerTelemetryEventMetadata);
    OUTLINED_FUNCTION_19_3();
    sub_193494798(v42, v43, v44);
    v45 = type metadata accessor for CacheManagerTelemetryEventMetadata;
    v46 = v32;
    goto LABEL_10;
  }

  v38 = &qword_1EAE3BE30;
  v39 = &qword_19395A0A8;
  v40 = v26;
LABEL_8:
  sub_19344E6DC(v40, v38, v39);
  v41 = v66;
  *v66 = 0u;
  *(v41 + 1) = 0u;
LABEL_11:
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27();
}

void sub_1935029B4()
{
  OUTLINED_FUNCTION_26();
  v37 = v2;
  v38 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v37 - v23;
  v25 = v6 == 0x6449776F72 && v4 == 0xE500000000000000;
  if (v25 || (sub_19393CA30() & 1) != 0)
  {
    sub_193448758(v0, v14, &qword_1EAE3AA88, &qword_19394F9C0);
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
    {
      (*(v17 + 32))(v24, v14, v15);
      sub_1934948FC();
      (*(v17 + 8))(v24, v15);
      goto LABEL_10;
    }

    v26 = v14;
  }

  else
  {
    v28 = v6 == 0x6E614D6568636163 && v4 == 0xEE00644972656761;
    if (!v28 && (sub_19393CA30() & 1) == 0)
    {
      v33 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v33);
      v35 = v34;
      *v34 = v6;
      v34[1] = v4;
      v34[5] = type metadata accessor for CacheManagerTelemetryEventMetadata(0);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v35 + 2);
      sub_19350346C(v0, boxed_opaque_existential_1Tm, type metadata accessor for CacheManagerTelemetryEventMetadata);
      OUTLINED_FUNCTION_9_36();

      goto LABEL_10;
    }

    v29 = type metadata accessor for CacheManagerTelemetryEventMetadata(0);
    v30 = OUTLINED_FUNCTION_27_4(*(v29 + 20));
    sub_193448758(v30, v11, v31, v32);
    if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
    {
      (*(v17 + 32))(v21, v11, v15);
      sub_1934948FC();
      (*(v17 + 8))(v21, v15);
      goto LABEL_10;
    }

    v26 = v11;
  }

  sub_19344E6DC(v26, &qword_1EAE3AA88, &qword_19394F9C0);
  v27 = v37;
  *v37 = 0u;
  v27[1] = 0u;
LABEL_10:
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27();
}

void sub_193502D10()
{
  OUTLINED_FUNCTION_26();
  v57 = v2;
  v58 = v1;
  v63 = v0;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for CacheManagerRequestInvocation(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = type metadata accessor for CacheManagerTarget(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v16 = v14 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v57 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v57 - v21;
  v23 = v6 == 0x697461636F766E69 && v4 == 0xEA00000000006E6FLL;
  if (!v23 && (OUTLINED_FUNCTION_19_20(0x697461636F766E69, 0xEA00000000006E6FLL) & 1) == 0)
  {
    v32 = v6 == 0x6F43747265736E69 && v4 == 0xED0000747865746ELL;
    if (v32 || (OUTLINED_FUNCTION_19_20(0x6F43747265736E69, 0xED0000747865746ELL) & 1) != 0)
    {
      OUTLINED_FUNCTION_0_33();
      sub_19350346C(v63, v20, v33);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v38 = sub_19349AB64();
        v39 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v38);
        OUTLINED_FUNCTION_6_22(v39, v40);
        OUTLINED_FUNCTION_0_33();
        sub_19350346C(v63, v41, v42);
        OUTLINED_FUNCTION_9_36();

        OUTLINED_FUNCTION_1_32();
        v31 = v20;
        goto LABEL_8;
      }

      v34 = *(v20 + 4);
      v35 = v20[10];
      *&v59 = *v20;
      BYTE10(v59) = v35;
      WORD4(v59) = v34;
      v36 = &type metadata for CacheManagerInsert;
      v37 = &off_1F07C4668;
    }

    else
    {
      v43 = v6 == 0x6F43686372616573 && v4 == 0xED0000747865746ELL;
      if (!v43 && (OUTLINED_FUNCTION_19_20(0x6F43686372616573, 0xED0000747865746ELL) & 1) == 0)
      {
        v52 = sub_19349AB64();
        v53 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v52);
        OUTLINED_FUNCTION_6_22(v53, v54);
        OUTLINED_FUNCTION_0_33();
        sub_19350346C(v63, v55, v56);
        OUTLINED_FUNCTION_9_36();

        goto LABEL_18;
      }

      OUTLINED_FUNCTION_0_33();
      sub_19350346C(v63, v16, v44);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v47 = sub_19349AB64();
        v48 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v47);
        OUTLINED_FUNCTION_6_22(v48, v49);
        OUTLINED_FUNCTION_0_33();
        sub_19350346C(v63, v50, v51);
        OUTLINED_FUNCTION_9_36();

        OUTLINED_FUNCTION_1_32();
        v31 = v16;
        goto LABEL_8;
      }

      v45 = *(v16 + 48);
      v46 = *(v16 + 16);
      v59 = *v16;
      v60 = v46;
      v61 = *(v16 + 32);
      v62 = v45;
      v36 = &type metadata for CacheManagerSearch;
      v37 = &off_1F07C46A8;
    }

    sub_193494798(v36, v37, v57);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_0_33();
  sub_19350346C(v63, v22, v24);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_1935030F4(v22, v11, type metadata accessor for CacheManagerRequestInvocation);
    sub_193494798(v7, &off_1F07C4658, v57);
    sub_193503150(v11, type metadata accessor for CacheManagerRequestInvocation);
    goto LABEL_18;
  }

  v25 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v25);
  v27 = v26;
  *v26 = v6;
  v26[1] = v4;
  v26[5] = v12;
  __swift_allocate_boxed_opaque_existential_1Tm(v26 + 2);
  OUTLINED_FUNCTION_0_33();
  sub_19350346C(v63, v28, v29);
  *(v27 + 48) = 1;
  swift_willThrow();

  OUTLINED_FUNCTION_1_32();
  v31 = v22;
LABEL_8:
  sub_193503150(v31, v30);
LABEL_18:
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1935030F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t sub_193503150(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1935031C0()
{
  OUTLINED_FUNCTION_26();
  v30 = v1;
  v33 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = v5 == 0x7254746E65696C63 && v3 == 0xED00006449656361;
  if (v19 || (OUTLINED_FUNCTION_59_0(0x7254746E65696C63, 0xED00006449656361) & 1) != 0)
  {
    sub_193448758(v33, v11, &qword_1EAE3AA88, &qword_19394F9C0);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
    {
      v20 = OUTLINED_FUNCTION_19_3();
      v21(v20);
      sub_1934948FC();
      (*(v14 + 8))(v18, v12);
      goto LABEL_10;
    }

    sub_19344E6DC(v11, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  else
  {
    v22 = v5 == 0x63617073656D616ELL && v3 == 0xE900000000000065;
    if (!v22 && (OUTLINED_FUNCTION_59_0(0x63617073656D616ELL, 0xE900000000000065) & 1) == 0)
    {
      v25 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v25);
      v27 = v26;
      *v26 = v5;
      v26[1] = v3;
      v26[5] = type metadata accessor for CacheManagerRequestInvocation(0);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v27 + 2);
      sub_19350346C(v33, boxed_opaque_existential_1Tm, type metadata accessor for CacheManagerRequestInvocation);
      OUTLINED_FUNCTION_9_36();

      goto LABEL_10;
    }

    v23 = v33 + *(type metadata accessor for CacheManagerRequestInvocation(0) + 20);
    if ((*(v23 + 9) & 1) == 0)
    {
      v24 = *(v23 + 8);
      v31 = *v23;
      v32 = v24 & 1;
      sub_1934948FC();
      goto LABEL_10;
    }
  }

  *v7 = 0u;
  v7[1] = 0u;
LABEL_10:
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19350346C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

id sub_1935034E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = OUTLINED_FUNCTION_26_9();
  v9 = *v3;
  v10 = *(v3 + 4) | (*(v3 + 10) << 16);
  v11 = a1 == v7 && v8 == 0xE700000000000000;
  if (v11 || (OUTLINED_FUNCTION_91_2(v7, 0xE700000000000000) & 1) != 0)
  {
    if (!(v10 >> 22))
    {
      v12 = &type metadata for CacheManagerInsert.Started;
      v13 = &off_1F07C4678;
      return sub_193494798(v12, v13, a3);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_24_3();
    v16 = v11 && a2 == 0xE500000000000000;
    if (v16 || (OUTLINED_FUNCTION_91_2(v15, 0xE500000000000000) & 1) != 0)
    {
      if ((v10 & 0xC00000) == 0x400000)
      {
        v12 = &type metadata for CacheManagerInsert.Ended;
        v13 = &off_1F07C4688;
        return sub_193494798(v12, v13, a3);
      }
    }

    else
    {
      v17 = OUTLINED_FUNCTION_22_16();
      v18 = v11 && a2 == 0xE600000000000000;
      if (v18 || (OUTLINED_FUNCTION_91_2(v17, 0xE600000000000000)) && (v10 & 0xC00000) == 0x800000)
      {
        v12 = &type metadata for CacheManagerInsert.Failed;
        v13 = &off_1F07C4698;
        return sub_193494798(v12, v13, a3);
      }
    }
  }

  v19 = sub_19349AB64();
  v20 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v19);
  *v21 = a1;
  *(v21 + 8) = a2;
  *(v21 + 40) = &type metadata for CacheManagerInsert;
  *(v21 + 16) = v9;
  *(v21 + 26) = BYTE2(v10);
  *(v21 + 24) = v10;
  OUTLINED_FUNCTION_23_2(v20, v21);
}

id sub_1935036D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = OUTLINED_FUNCTION_26_9();
  v10 = *v3;
  v9 = v3[1];
  v11 = v3[2];
  v26 = v3[3];
  v12 = v3[4];
  v27 = v3[5];
  v13 = a1 == v7 && v8 == 0xE700000000000000;
  v14 = *(v3 + 48);
  if (v13 || (OUTLINED_FUNCTION_5_5(v7, 0xE700000000000000) & 1) != 0)
  {
    if (v14 <= 0x3F)
    {
      v15 = &type metadata for CacheManagerSearch.Started;
      v16 = &off_1F07C46B8;
      return sub_193494798(v15, v16, a3);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_24_3();
    v19 = v13 && a2 == 0xE500000000000000;
    if (v19 || (OUTLINED_FUNCTION_5_5(v18, 0xE500000000000000) & 1) != 0)
    {
      if ((v14 & 0xC0) == 0x40)
      {
        v15 = &type metadata for CacheManagerSearch.Ended;
        v16 = &off_1F07C46C8;
        return sub_193494798(v15, v16, a3);
      }
    }

    else
    {
      v20 = OUTLINED_FUNCTION_22_16();
      v21 = v13 && a2 == 0xE600000000000000;
      if (v21 || (OUTLINED_FUNCTION_5_5(v20, 0xE600000000000000)) && (v14 & 0xC0) == 0x80)
      {
        v15 = &type metadata for CacheManagerSearch.Failed;
        v16 = &off_1F07C46D8;
        return sub_193494798(v15, v16, a3);
      }
    }
  }

  v22 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v22);
  v24 = v23;
  *v23 = a1;
  v23[1] = a2;
  v23[5] = &type metadata for CacheManagerSearch;
  v25 = swift_allocObject();
  v24[2] = v25;
  *(v25 + 16) = v10;
  *(v25 + 24) = v9;
  *(v25 + 32) = v11;
  *(v25 + 40) = v26;
  *(v25 + 48) = v12;
  *(v25 + 56) = v27;
  *(v25 + 64) = v14;
  *(v24 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1935038F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  result = 0x737473697865;
  v8 = *v4;
  v9 = a1 == 0x737473697865 && a2 == 0xE600000000000000;
  if (v9 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v8 == 2)
    {
      *a4 = 0u;
      a4[1] = 0u;
    }

    else
    {
      return sub_1934948FC();
    }
  }

  else
  {
    v12 = sub_19349AB64();
    v13 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v12);
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 40) = a3;
    *(v14 + 16) = v8;
    OUTLINED_FUNCTION_23_2(v13, v14);
  }

  return result;
}

uint64_t sub_193503A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x7453686372616573;
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = *(v3 + 9);
  v11 = a1 == 0x7453686372616573 && a2 == 0xEE00796765746172;
  if (v11 || (v20 = *(v3 + 5), v12 = *(v3 + 16), v23 = v3[3], v24 = *(v3 + 32), v25 = *(v3 + 3), v21 = v3[5], v22 = *(v3 + 48), result = OUTLINED_FUNCTION_59_0(0x7453686372616573, 0xEE00796765746172), (result & 1) != 0))
  {
    if (v10)
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return result;
    }

    return sub_1934948FC();
  }

  result = 0x6F43746C75736572;
  v13 = a1 == 0x6F43746C75736572 && a2 == 0xEB00000000746E75;
  if (v13 || (result = OUTLINED_FUNCTION_59_0(0x6F43746C75736572, 0xEB00000000746E75), (result & 1) != 0))
  {
    if (v12)
    {
      goto LABEL_7;
    }

    return sub_1934948FC();
  }

  v14 = a1 == 0xD000000000000011 && 0x8000000193A194E0 == a2;
  if (v14 || (result = OUTLINED_FUNCTION_59_0(0xD000000000000011, 0x8000000193A194E0), (result & 1) != 0))
  {
    if (v24)
    {
      goto LABEL_7;
    }

    return sub_1934948FC();
  }

  v15 = a1 == 0xD000000000000010 && 0x8000000193A19500 == a2;
  if (v15 || (result = OUTLINED_FUNCTION_59_0(0xD000000000000010, 0x8000000193A19500), (result & 1) != 0))
  {
    if (v22)
    {
      goto LABEL_7;
    }

    return sub_1934948FC();
  }

  v16 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v16);
  v18 = v17;
  *v17 = a1;
  v17[1] = a2;
  v17[5] = &type metadata for CacheManagerSearch.Ended;
  v19 = swift_allocObject();
  v18[2] = v19;
  *(v19 + 16) = v8;
  *(v19 + 24) = v9;
  *(v19 + 25) = v10;
  *(v19 + 26) = v20;
  *(v19 + 28) = v25;
  *(v19 + 32) = v12;
  *(v19 + 36) = *(v3 + 5);
  *(v19 + 33) = *(v3 + 17);
  *(v19 + 40) = v23;
  *(v19 + 48) = v24;
  *(v19 + 52) = *(v3 + 9);
  *(v19 + 49) = *(v3 + 33);
  *(v19 + 56) = v21;
  *(v19 + 64) = v22;
  *(v18 + 48) = 1;
  swift_willThrow();
}