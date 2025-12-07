id sub_1D894C1D0(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for TextSummarizer(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v9 = result;
    v10 = [result isVisualIntelligenceSummaryAllowed];

    if (!v10)
    {
      if (qword_1EE0E44C8 != -1)
      {
        swift_once();
      }

      v23 = sub_1D8B151E0();
      __swift_project_value_buffer(v23, qword_1EE0E44D0);
      v24 = sub_1D8B151C0();
      v25 = sub_1D8B161F0();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1D8783000, v24, v25, "Summarization is not available with this managed configuration", v26, 2u);
        MEMORY[0x1DA721330](v26, -1, -1);
      }

      return 0xD00000000000002DLL;
    }

    v11 = *(String.tokens()(a1, a2) + 16);

    if (v11 < 0x65)
    {
      v16 = 0x80000001D8B44A00;
      if (qword_1EE0E44C8 != -1)
      {
        swift_once();
      }

      v15 = 0x1000000000000021;
      v27 = sub_1D8B151E0();
      __swift_project_value_buffer(v27, qword_1EE0E44D0);
      v18 = sub_1D8B151C0();
      v19 = sub_1D8B161F0();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_19;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315138;
      v22 = 0x1000000000000021;
    }

    else
    {
      v12 = *(v5 + 20);
      v13 = sub_1D8B15340();
      (*(*(v13 - 8) + 16))(v7 + v12, v2, v13);
      sub_1D8B153D0();
      swift_allocObject();
      *v7 = sub_1D8B153C0();
      v14 = sub_1D89CF330(a1, a2);
      sub_1D894C7B8(v7, type metadata accessor for TextSummarizer);
      v15 = 0;
      if (v14)
      {
        return v15;
      }

      v16 = 0x80000001D8B44A30;
      if (qword_1EE0E44C8 != -1)
      {
        swift_once();
      }

      v15 = 0xD000000000000045;
      v17 = sub_1D8B151E0();
      __swift_project_value_buffer(v17, qword_1EE0E44D0);
      v18 = sub_1D8B151C0();
      v19 = sub_1D8B161F0();
      if (!os_log_type_enabled(v18, v19))
      {
LABEL_19:

        return v15;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315138;
      v22 = 0xD000000000000045;
    }

    *(v20 + 4) = sub_1D89AC714(v22, v16, &v29);
    _os_log_impl(&dword_1D8783000, v18, v19, "%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1DA721330](v21, -1, -1);
    MEMORY[0x1DA721330](v20, -1, -1);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D894C614(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  v10 = swift_task_alloc();
  *(v5 + 64) = v10;
  *v10 = v5;
  v10[1] = sub_1D88DFAD0;

  return sub_1D894B5F0(a1, a2, v9, a4, v5 + 16);
}

uint64_t type metadata accessor for SummarizeClassifier(uint64_t a1)
{
  result = qword_1EE0E5B70;
  if (!qword_1EE0E5B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D894C744(uint64_t a1)
{
  result = sub_1D8B15340();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D894C7B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D894C818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D894C880(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D894C8C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D894C93C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1D8B16D20();
    MEMORY[0x1DA720210](v13);
    result = sub_1D8B16D80();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D894CAAC(uint64_t a1, uint64_t a2)
{
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v138);
  v5 = &v120 - v4;
  v150 = type metadata accessor for TextDetectorResult(0);
  v141 = *(v150 - 1);
  v6 = MEMORY[0x1EEE9AC00](v150);
  v155 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v120 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D20, &qword_1D8B22D08);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v120 - v11;
  v153 = type metadata accessor for DetectionRequest.Annotation(0);
  v13 = MEMORY[0x1EEE9AC00](v153);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v120 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v144 = (&v120 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v120 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v154 = &v120 - v23;
  result = MEMORY[0x1EEE9AC00](v22);
  v28 = &v120 - v27;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v29 = 0;
  v30 = a1 + 56;
  v31 = 1 << *(a1 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & *(a1 + 56);
  v34 = (v31 + 63) >> 6;
  v152 = a2 + 56;
  v131 = "";
  v137 = "textComposition.OpenEndedSchema";
  v136 = "ucturedExtraction.addToCalendar";
  v127 = "sualIntelligenceCamera";
  v130 = "IntelligenceCamera.ImageSearch";
  v129 = "gs.AppleIntelligence";
  v140 = v10;
  v143 = v26;
  v147 = v16;
  v133 = a2;
  v124 = a1;
  v132 = v5;
  v148 = v9;
  v123 = v25;
  v146 = v21;
  v122 = v28;
  v121 = a1 + 56;
  v120 = v34;
  if (!v33)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v35 = __clz(__rbit64(v33));
    v125 = (v33 - 1) & v33;
LABEL_13:
    v126 = v29;
    v38 = *(a1 + 48);
    v151 = *(v25 + 72);
    sub_1D8959330(v38 + v151 * (v35 | (v29 << 6)), v28, type metadata accessor for DetectionRequest.Annotation);
    sub_1D8959398(v28, v154, type metadata accessor for DetectionRequest.Annotation);
    sub_1D8B16D20();
    DetectionRequest.Annotation.hash(into:)(&v156);
    v39 = sub_1D8B16D80();
    v40 = -1 << *(a2 + 32);
    v41 = v39 & ~v40;
    if (((*(v152 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
    {
LABEL_141:
      sub_1D8959400(v154, type metadata accessor for DetectionRequest.Annotation);
      return 0;
    }

    v149 = ~v40;
    while (1)
    {
      sub_1D8959330(*(a2 + 48) + v41 * v151, v21, type metadata accessor for DetectionRequest.Annotation);
      v42 = *(v10 + 48);
      sub_1D8959330(v21, v12, type metadata accessor for DetectionRequest.Annotation);
      sub_1D8959330(v154, &v12[v42], type metadata accessor for DetectionRequest.Annotation);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload == 1)
      {
        sub_1D8959330(v12, v16, type metadata accessor for DetectionRequest.Annotation);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D87C14D4(&v12[v42], v5);
          result = sub_1D8B13200();
          if ((result & 1) != 0 && *&v16[v138[9]] == *&v5[v138[9]])
          {
            v44 = v138[10];
            if (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*&v16[v44], *&v5[v44]), vceqq_f64(*&v16[v44 + 16], *&v5[v44 + 16])), vuzp1q_s32(vceqq_f64(*&v16[v44 + 32], *&v5[v44 + 32]), vceqq_f64(*&v16[v44 + 48], *&v5[v44 + 48]))))))
            {
              v45 = v138[11];
              v46 = *&v16[v45];
              v47 = *&v5[v45];
              v48 = *(v46 + 16);
              if (v48 == *(v47 + 16))
              {
                if (!v48 || v46 == v47)
                {
LABEL_31:
                  v51 = v138[12];
                  v52 = *&v16[v51];
                  v53 = *&v5[v51];
                  v54 = *(v52 + 16);
                  if (v54 == *(v53 + 16))
                  {
                    if (v54)
                    {
                      v55 = v52 == v53;
                    }

                    else
                    {
                      v55 = 1;
                    }

                    if (!v55)
                    {
                      v56 = (v52 + 32);
                      v57 = (v53 + 32);
                      while (v54)
                      {
                        if (*v56 != *v57)
                        {
                          goto LABEL_59;
                        }

                        ++v56;
                        ++v57;
                        if (!--v54)
                        {
                          goto LABEL_40;
                        }
                      }

                      goto LABEL_146;
                    }

LABEL_40:
                    if (*&v16[v138[13]] == *&v5[v138[13]] && *&v16[v138[14]] == *&v5[v138[14]])
                    {
                      v58 = sub_1D88E31C4(*&v16[v138[15]], *&v5[v138[15]]);
                      sub_1D8959400(v21, type metadata accessor for DetectionRequest.Annotation);
                      if (v58)
                      {
                        sub_1D8959400(v154, type metadata accessor for DetectionRequest.Annotation);
                        sub_1D87A14E4(v5, &qword_1ECA67750, &unk_1D8B1E0C0);
                        sub_1D87A14E4(v16, &qword_1ECA67750, &unk_1D8B1E0C0);
                        goto LABEL_138;
                      }

                      goto LABEL_60;
                    }
                  }
                }

                else
                {
                  v49 = (v46 + 40);
                  v50 = (v47 + 40);
                  while (*(v49 - 1) == *(v50 - 1) && *v49 == *v50)
                  {
                    v49 += 4;
                    v50 += 4;
                    if (!--v48)
                    {
                      goto LABEL_31;
                    }
                  }
                }
              }
            }
          }

LABEL_59:
          sub_1D8959400(v21, type metadata accessor for DetectionRequest.Annotation);
LABEL_60:
          sub_1D87A14E4(v5, &qword_1ECA67750, &unk_1D8B1E0C0);
          sub_1D87A14E4(v16, &qword_1ECA67750, &unk_1D8B1E0C0);
          sub_1D8959400(v12, type metadata accessor for DetectionRequest.Annotation);
          goto LABEL_17;
        }

        sub_1D8959400(v21, type metadata accessor for DetectionRequest.Annotation);
        sub_1D87A14E4(v16, &qword_1ECA67750, &unk_1D8B1E0C0);
        goto LABEL_16;
      }

      v61 = v143;
      sub_1D8959330(v12, v143, type metadata accessor for DetectionRequest.Annotation);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1D8959400(v21, type metadata accessor for DetectionRequest.Annotation);
        v16 = v147;
        goto LABEL_16;
      }

      v62 = *v61;
      if (v62 > 2)
      {
        v16 = v147;
        if (v62 == 3)
        {
          v66 = 0xD00000000000002ELL;
          v111 = &v157;
        }

        else if (v62 == 4)
        {
          v66 = 0xD000000000000024;
          v111 = &v159;
        }

        else
        {
          v66 = 0xD00000000000002CLL;
          v111 = &v158;
        }

        v67 = *(v111 - 32);
      }

      else
      {
        v63 = 0xD00000000000003FLL;
        if (v62 != 1)
        {
          v63 = 0xD000000000000026;
        }

        v64 = v137;
        if (v62 != 1)
        {
          v64 = v136;
        }

        v65 = v62 == 0;
        if (*v61)
        {
          v66 = v63;
        }

        else
        {
          v66 = 0xD00000000000001FLL;
        }

        v67 = v131;
        if (!v65)
        {
          v67 = v64;
        }

        v16 = v147;
      }

      v112 = v12[v42];
      if (v112 > 2)
      {
        if (v112 != 3)
        {
          v113 = v112 == 4;
          if (v112 == 4)
          {
            v114 = 0xD000000000000024;
          }

          else
          {
            v114 = 0xD00000000000002CLL;
          }

          v115 = v130;
          v116 = &v158;
LABEL_125:
          v117 = *(v116 - 32);
          if (!v113)
          {
            v115 = v117;
          }

          goto LABEL_131;
        }

        v114 = 0xD00000000000002ELL;
        v118 = &v157;
      }

      else
      {
        if (v12[v42])
        {
          v113 = v112 == 1;
          if (v112 == 1)
          {
            v114 = 0xD00000000000003FLL;
          }

          else
          {
            v114 = 0xD000000000000026;
          }

          v115 = v137;
          v116 = &v161;
          goto LABEL_125;
        }

        v114 = 0xD00000000000001FLL;
        v118 = &v160;
      }

      v115 = *(v118 - 32);
LABEL_131:
      if (v66 == v114 && (v67 | 0x8000000000000000) == (v115 | 0x8000000000000000))
      {

        sub_1D8959400(v21, type metadata accessor for DetectionRequest.Annotation);
LABEL_137:
        sub_1D8959400(v154, type metadata accessor for DetectionRequest.Annotation);
        v10 = v140;
        goto LABEL_138;
      }

      v119 = sub_1D8B16BA0();

      sub_1D8959400(v21, type metadata accessor for DetectionRequest.Annotation);
      if (v119)
      {
        goto LABEL_137;
      }

      sub_1D8959400(v12, type metadata accessor for DetectionRequest.Annotation);
      v10 = v140;
LABEL_17:
      v41 = (v41 + 1) & v149;
      if (((*(v152 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
      {
        goto LABEL_141;
      }
    }

    v59 = v144;
    sub_1D8959330(v12, v144, type metadata accessor for DetectionRequest.Annotation);
    v60 = *v59;
    result = swift_getEnumCaseMultiPayload();
    if (result)
    {
      v21 = v146;
      sub_1D8959400(v146, type metadata accessor for DetectionRequest.Annotation);

LABEL_16:
      sub_1D87A14E4(v12, &qword_1ECA63D20, &qword_1D8B22D08);
      goto LABEL_17;
    }

    v68 = *&v12[v42];
    v142 = v60;
    v69 = *(v60 + 16);
    v145 = v68;
    v21 = v146;
    v70 = v141;
    if (v69 != *(v68 + 16))
    {
LABEL_110:
      sub_1D8959400(v21, type metadata accessor for DetectionRequest.Annotation);

      sub_1D8959400(v12, type metadata accessor for DetectionRequest.Annotation);
      goto LABEL_17;
    }

    v71 = v142;
    if (v69 && v142 != v145)
    {
      v72 = 0;
      v73 = (*(v141 + 80) + 32) & ~*(v141 + 80);
      v135 = v142 + v73;
      v134 = v145 + v73;
      v128 = v69;
      while (v72 < *(v71 + 16))
      {
        v74 = *(v70 + 72) * v72;
        v139 = v72;
        result = sub_1D8959330(v135 + v74, v9, type metadata accessor for TextDetectorResult);
        if (v139 >= *(v145 + 16))
        {
          goto LABEL_145;
        }

        sub_1D8959330(v134 + v74, v155, type metadata accessor for TextDetectorResult);
        if ((sub_1D8B13200() & 1) == 0)
        {
          goto LABEL_109;
        }

        if (*&v148[v150[5]] != *(v155 + v150[5]))
        {
          goto LABEL_109;
        }

        v75 = v150[6];
        if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*&v148[v75], *(v155 + v75)), vceqq_f64(*&v148[v75 + 16], *(v155 + v75 + 16))), vuzp1q_s32(vceqq_f64(*&v148[v75 + 32], *(v155 + v75 + 32)), vceqq_f64(*&v148[v75 + 48], *(v155 + v75 + 48)))))) & 1) == 0)
        {
          goto LABEL_109;
        }

        v76 = v150[7];
        v77 = &v148[v76];
        v78 = *&v148[v76 + 8];
        v79 = (v155 + v76);
        if ((*v77 != *v79 || v78 != v79[1]) && (sub_1D8B16BA0() & 1) == 0)
        {
          goto LABEL_109;
        }

        if (*&v148[v150[8]] != *(v155 + v150[8]))
        {
          goto LABEL_109;
        }

        if (*&v148[v150[9]] != *(v155 + v150[9]))
        {
          goto LABEL_109;
        }

        if ((sub_1D894DBC4(*&v148[v150[10]], *(v155 + v150[10])) & 1) == 0)
        {
          goto LABEL_109;
        }

        v80 = v150[11];
        v81 = *&v148[v80];
        v82 = *(v155 + v80);
        v83 = *(v81 + 16);
        if (v83 != *(v82 + 16))
        {
          goto LABEL_109;
        }

        if (v83 && v81 != v82)
        {
          v84 = 0;
          while (1)
          {
            v85 = (v81 + v84);
            v86 = (v82 + v84);
            if (*(v81 + v84 + 32) != *(v82 + v84 + 32))
            {
              break;
            }

            v88 = v85[7];
            v87 = v85[8];
            v89 = v86[7];
            v90 = v86[8];
            v91 = v85[5] == v86[5] && v85[6] == v86[6];
            if (!v91 && (sub_1D8B16BA0() & 1) == 0)
            {
              break;
            }

            v92 = v88 == v89 && v87 == v90;
            if (!v92 && (sub_1D8B16BA0() & 1) == 0)
            {
              break;
            }

            v84 += 40;
            if (!--v83)
            {
              goto LABEL_93;
            }
          }

LABEL_109:
          sub_1D8959400(v155, type metadata accessor for TextDetectorResult);
          v9 = v148;
          sub_1D8959400(v148, type metadata accessor for TextDetectorResult);
          a2 = v133;
          v5 = v132;
          v10 = v140;
          v21 = v146;
          v16 = v147;
          goto LABEL_110;
        }

LABEL_93:
        v93 = v150[12];
        v94 = &v148[v93];
        v95 = *v94;
        v96 = v155 + v93;
        v97 = *v96;
        if (*v94)
        {
          if (!v97)
          {
            goto LABEL_109;
          }

          v99 = *(v94 + 1);
          v98 = *(v94 + 2);
          v101 = *(v96 + 8);
          v100 = *(v96 + 16);
          sub_1D87DDF0C();
          v102 = v97;
          v103 = v95;
          v104 = sub_1D8B16400();

          if ((v104 & 1) == 0 || v99 != v101 || v98 != v100)
          {
            goto LABEL_109;
          }
        }

        else if (v97)
        {
          goto LABEL_109;
        }

        v105 = v150[13];
        v9 = v148;
        v106 = *&v148[v105];
        v107 = *&v148[v105 + 8];
        v108 = (v155 + v105);
        if (v106 == *v108 && v107 == v108[1])
        {
          sub_1D8959400(v155, type metadata accessor for TextDetectorResult);
          result = sub_1D8959400(v9, type metadata accessor for TextDetectorResult);
          a2 = v133;
          v5 = v132;
          v70 = v141;
          v10 = v140;
          v21 = v146;
          v16 = v147;
          v109 = v128;
        }

        else
        {
          v110 = sub_1D8B16BA0();
          sub_1D8959400(v155, type metadata accessor for TextDetectorResult);
          result = sub_1D8959400(v9, type metadata accessor for TextDetectorResult);
          a2 = v133;
          v5 = v132;
          v70 = v141;
          v10 = v140;
          v21 = v146;
          v16 = v147;
          v109 = v128;
          if ((v110 & 1) == 0)
          {
            goto LABEL_110;
          }
        }

        v72 = v139 + 1;
        v71 = v142;
        if (v139 + 1 == v109)
        {
          goto LABEL_135;
        }
      }

      goto LABEL_144;
    }

LABEL_135:
    sub_1D8959400(v21, type metadata accessor for DetectionRequest.Annotation);
    sub_1D8959400(v154, type metadata accessor for DetectionRequest.Annotation);

LABEL_138:
    result = sub_1D8959400(v12, type metadata accessor for DetectionRequest.Annotation);
    a1 = v124;
    v25 = v123;
    v28 = v122;
    v29 = v126;
    v30 = v121;
    v34 = v120;
    v33 = v125;
    if (v125)
    {
      continue;
    }

    break;
  }

LABEL_8:
  v36 = v29;
  while (1)
  {
    v29 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v29 >= v34)
    {
      return 1;
    }

    v37 = *(v30 + 8 * v29);
    ++v36;
    if (v37)
    {
      v35 = __clz(__rbit64(v37));
      v125 = (v37 - 1) & v37;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

uint64_t sub_1D894DBC4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1D8B16D20();

    sub_1D8B15A60();
    v16 = sub_1D8B16D80();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1D8B16BA0() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D894DD7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B152F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1D8959460(&qword_1EE0E3A70, MEMORY[0x1E69E0248], MEMORY[0x1E69E0258]);
      v26 = sub_1D8B15790();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1D8959460(&qword_1EE0E3A68, MEMORY[0x1E69E0248], MEMORY[0x1E69E0260]);
        v31 = sub_1D8B158C0();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D894E12C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionPin(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v38 - v9;
  result = MEMORY[0x1EEE9AC00](v8);
  v14 = &v38 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a1 + 56);
  v20 = (v17 + 63) >> 6;
  v21 = a2 + 56;
  if (v19)
  {
    while (1)
    {
      v40 = v20;
      v41 = v16;
      v22 = __clz(__rbit64(v19));
      v39 = (v19 - 1) & v19;
LABEL_13:
      v44 = a1;
      v25 = *(a1 + 48);
      v43 = v12;
      v26 = *(v12 + 72);
      sub_1D8959330(v25 + v26 * (v22 | (v15 << 6)), v14, type metadata accessor for ActionPin);
      v42 = v14;
      sub_1D8959398(v14, v10, type metadata accessor for ActionPin);
      sub_1D8B16D20();
      sub_1D8B13240();
      sub_1D8959460(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D8B157A0();
      v27 = &v10[v4[5]];
      v28 = v27[3];
      v50 = v27[2];
      v51 = v28;
      v29 = v27[1];
      v48 = *v27;
      v49 = v29;
      sub_1D8818B80(v48.f64[0], v48.f64[1]);
      sub_1D8818B80(v49.f64[0], v49.f64[1]);
      sub_1D8818B80(v50.f64[0], v50.f64[1]);
      sub_1D8818B80(v51.f64[0], v51.f64[1]);
      v30 = &v10[v4[6]];
      v31 = *(v30 + 1);
      v47 = *v30;
      sub_1D8B15A60();
      v46 = *&v10[v4[7]];
      sub_1D87CF3E8(v52, v46);
      v45 = v10[v4[8]];
      sub_1D8B16D40();
      v32 = sub_1D8B16D80();
      v33 = -1 << *(a2 + 32);
      v34 = v32 & ~v33;
      if (((*(v21 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
      {
        break;
      }

      v35 = ~v33;
      while (1)
      {
        sub_1D8959330(*(a2 + 48) + v34 * v26, v7, type metadata accessor for ActionPin);
        if (sub_1D8B13200() & 1) != 0 && (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*&v7[v4[5]], v48), vceqq_f64(*&v7[v4[5] + 16], v49)), vuzp1q_s32(vceqq_f64(*&v7[v4[5] + 32], v50), vceqq_f64(*&v7[v4[5] + 48], v51))))))
        {
          v36 = &v7[v4[6]];
          v37 = *v36 == v47 && *(v36 + 1) == v31;
          if (v37 || (sub_1D8B16BA0()) && (sub_1D88E245C(*&v7[v4[7]], v46) & 1) != 0 && v45 == v7[v4[8]])
          {
            break;
          }
        }

        sub_1D8959400(v7, type metadata accessor for ActionPin);
        v34 = (v34 + 1) & v35;
        if (((*(v21 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      sub_1D8959400(v7, type metadata accessor for ActionPin);
      result = sub_1D8959400(v10, type metadata accessor for ActionPin);
      a1 = v44;
      v12 = v43;
      v14 = v42;
      v16 = v41;
      v20 = v40;
      v19 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

LABEL_28:
    sub_1D8959400(v10, type metadata accessor for ActionPin);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v16 + 8 * v15);
    ++v23;
    if (v24)
    {
      v40 = v20;
      v41 = v16;
      v22 = __clz(__rbit64(v24));
      v39 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D894E614(uint64_t a1, uint64_t a2)
{
  v73 = sub_1D8B13240();
  v4 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v67 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v68);
  v74 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CVBundle.BundleType(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v78 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DA8, &qword_1D8B22DB0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  v69 = type metadata accessor for CVBundle(0);
  v15 = MEMORY[0x1EEE9AC00](v69);
  v70 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v79 = &v55 - v18;
  result = MEMORY[0x1EEE9AC00](v17);
  v22 = &v55 - v21;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v23 = 0;
  v24 = a1 + 56;
  v25 = 1 << *(a1 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(a1 + 56);
  v28 = (v25 + 63) >> 6;
  v77 = a2 + 56;
  v72 = (v4 + 8);
  v66 = (v4 + 32);
  if (!v27)
  {
    goto LABEL_8;
  }

  do
  {
    v56 = v28;
    v57 = v24;
    v29 = __clz(__rbit64(v27));
    v55 = (v27 - 1) & v27;
LABEL_13:
    v58 = v23;
    v61 = a1;
    v32 = *(a1 + 48);
    v60 = v20;
    v76 = *(v20 + 72);
    sub_1D8959330(v32 + v76 * (v29 | (v23 << 6)), v22, type metadata accessor for CVBundle);
    v59 = v22;
    v33 = v79;
    sub_1D8959398(v22, v79, type metadata accessor for CVBundle);
    sub_1D8B16D20();
    sub_1D891CA54(v81);
    v34 = v69;
    v64 = *(v33 + v69[5]);
    sub_1D87CF97C(v81, v64);
    v63 = *(v33 + v34[6]);
    sub_1D87CF97C(v81, v63);
    v62 = *(v33 + v34[7]);
    sub_1D893983C(v81, v62);
    v35 = sub_1D8B16D80();
    v36 = -1 << *(a2 + 32);
    v37 = v35 & ~v36;
    v38 = v70;
    if (((*(v77 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
    {
LABEL_42:
      sub_1D8959400(v79, type metadata accessor for CVBundle);
      return 0;
    }

    v39 = ~v36;
    v71 = ~v36;
    v75 = a2;
    v65 = v12;
    while (1)
    {
      sub_1D8959330(*(a2 + 48) + v37 * v76, v38, type metadata accessor for CVBundle);
      v40 = *(v12 + 48);
      sub_1D8959330(v38, v14, type metadata accessor for CVBundle.BundleType);
      sub_1D8959330(v79, &v14[v40], type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      sub_1D8959330(v14, v78, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*v72)(v78, v73);
LABEL_16:
        sub_1D87A14E4(v14, &qword_1ECA63DA8, &qword_1D8B22DB0);
LABEL_17:
        a2 = v75;
        goto LABEL_18;
      }

      v41 = v78;
      v42 = v67;
      v43 = v73;
      (*v66)(v67, &v14[v40], v73);
      v44 = sub_1D8B13200();
      v45 = *v72;
      v46 = v42;
      v38 = v70;
      (*v72)(v46, v43);
      v47 = v43;
      v12 = v65;
      v45(v41, v47);
      v39 = v71;
      a2 = v75;
      if (v44)
      {
        goto LABEL_22;
      }

      sub_1D8959400(v14, type metadata accessor for CVBundle.BundleType);
LABEL_18:
      sub_1D8959400(v38, type metadata accessor for CVBundle);
      v37 = (v37 + 1) & v39;
      if (((*(v77 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    sub_1D8959330(v14, v11, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D8959400(v11, type metadata accessor for CVTrackSnapshot);
      goto LABEL_16;
    }

    sub_1D8959398(&v14[v40], v74, type metadata accessor for CVTrackSnapshot);
    if ((sub_1D8B13200() & 1) == 0 || (v48 = v68[5], v49 = *&v11[v48], v80 = *(v74 + v48), v81[0] = v49, , , LOBYTE(v49) = static CVDetection.== infix(_:_:)(v81, &v80), , , (v49 & 1) == 0) || (v50 = v68[6], v51 = *&v11[v50], v80 = *(v74 + v50), v81[0] = v51, , , LOBYTE(v51) = static CVDetection.== infix(_:_:)(v81, &v80), , , (v51 & 1) == 0) || v11[v68[7]] != *(v74 + v68[7]) || *&v11[v68[8]] != *(v74 + v68[8]) || *&v11[v68[9]] != *(v74 + v68[9]))
    {
      sub_1D8959400(v74, type metadata accessor for CVTrackSnapshot);
      v39 = v71;
LABEL_37:
      sub_1D8959400(v11, type metadata accessor for CVTrackSnapshot);
      sub_1D8959400(v14, type metadata accessor for CVBundle.BundleType);
      goto LABEL_17;
    }

    v52 = v68[10];
    v53 = v11[v52];
    v54 = *(v74 + v52);
    sub_1D8959400(v74, type metadata accessor for CVTrackSnapshot);
    v39 = v71;
    if (v53 != v54)
    {
      goto LABEL_37;
    }

    sub_1D8959400(v11, type metadata accessor for CVTrackSnapshot);
    a2 = v75;
LABEL_22:
    sub_1D8959400(v14, type metadata accessor for CVBundle.BundleType);
    if ((sub_1D88E4444(*(v38 + v69[5]), v64) & 1) == 0 || (sub_1D88E4444(*(v38 + v69[6]), v63) & 1) == 0 || (sub_1D8854A60(*(v38 + v69[7]), v62) & 1) == 0)
    {
      goto LABEL_18;
    }

    sub_1D8959400(v38, type metadata accessor for CVBundle);
    result = sub_1D8959400(v79, type metadata accessor for CVBundle);
    a1 = v61;
    v20 = v60;
    v22 = v59;
    v23 = v58;
    v24 = v57;
    v28 = v56;
    v27 = v55;
  }

  while (v55);
LABEL_8:
  v30 = v23;
  while (1)
  {
    v23 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v23 >= v28)
    {
      return 1;
    }

    v31 = *(v24 + 8 * v23);
    ++v30;
    if (v31)
    {
      v56 = v28;
      v57 = v24;
      v29 = __clz(__rbit64(v31));
      v55 = (v31 - 1) & v31;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D894EFE8(uint64_t a1, uint64_t a2)
{
  v84 = sub_1D8B13240();
  v4 = *(v84 - 8);
  v5 = MEMORY[0x1EEE9AC00](v84);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v69 - v8;
  v10 = type metadata accessor for DetectionRequest.Originator(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v85 = (&v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v69 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v86 = &v69 - v16;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0, &qword_1D8B25F50);
  MEMORY[0x1EEE9AC00](v89);
  v18 = &v69 - v17;
  v91 = type metadata accessor for DetectionRequest(0);
  v19 = MEMORY[0x1EEE9AC00](v91);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v90 = &v69 - v23;
  result = MEMORY[0x1EEE9AC00](v22);
  v27 = &v69 - v26;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v28 = 0;
  v29 = a1 + 56;
  v30 = 1 << *(a1 + 32);
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & *(a1 + 56);
  v33 = (v30 + 63) >> 6;
  v94 = a2 + 56;
  v81 = (v4 + 8);
  v79 = (v4 + 32);
  v82 = v15;
  if (!v32)
  {
    goto LABEL_8;
  }

  do
  {
    v71 = v33;
    v72 = v29;
    v78 = v7;
    v34 = __clz(__rbit64(v32));
    v70 = (v32 - 1) & v32;
LABEL_13:
    v73 = v28;
    v76 = a1;
    v37 = *(a1 + 48);
    v75 = v25;
    v93 = *(v25 + 72);
    sub_1D8959330(v37 + v93 * (v34 | (v28 << 6)), v27, type metadata accessor for DetectionRequest);
    v74 = v27;
    v38 = v90;
    sub_1D8959398(v27, v90, type metadata accessor for DetectionRequest);
    sub_1D8B16D20();
    MEMORY[0x1DA720210](*v38);
    v39 = v91;
    v88 = v91[5];
    DetectionRequest.Originator.hash(into:)(v95);
    v83 = *&v38[v39[6]];
    sub_1D8818BD0(v95, v83);
    v40 = &v38[v39[7]];
    v41 = *v40;
    v42 = v40[1];
    v43 = v40[2];
    v44 = v40[3];
    sub_1D88911A0(*v40, v42, v43, v44);
    v45 = v39[8];
    v46 = *&v38[v45];
    if (v46 == 0.0)
    {
      v47 = 0.0;
    }

    else
    {
      v47 = *&v38[v45];
    }

    MEMORY[0x1DA720250](*&v47);
    v48 = sub_1D8B16D80();
    v49 = -1 << *(a2 + 32);
    v50 = v48 & ~v49;
    if (((*(v94 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
    {
LABEL_57:
      sub_1D8959400(v90, type metadata accessor for DetectionRequest);
      return 0;
    }

    v51 = ~v49;
    v92 = *v90;
    v77 = v10;
    v87 = a2;
    while (1)
    {
      sub_1D8959330(*(a2 + 48) + v50 * v93, v21, type metadata accessor for DetectionRequest);
      if (*v21 != v92)
      {
        goto LABEL_21;
      }

      v52 = &v18[*(v89 + 48)];
      sub_1D8959330(&v21[v91[5]], v18, type metadata accessor for DetectionRequest.Originator);
      sub_1D8959330(&v90[v88], v52, type metadata accessor for DetectionRequest.Originator);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v57 = v82;
        sub_1D8959330(v18, v82, type metadata accessor for DetectionRequest.Originator);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          (*v81)(v57, v84);
          goto LABEL_19;
        }

        v58 = *v79;
        v59 = v57;
        v60 = v84;
        (*v79)(v9, v59, v84);
        v61 = v9;
        v62 = v78;
        v58(v78, v52, v60);
        v80 = sub_1D8B13200();
        v63 = *v81;
        v64 = v62;
        v9 = v61;
        v10 = v77;
        (*v81)(v64, v60);
        v63(v9, v60);
        sub_1D8959400(v18, type metadata accessor for DetectionRequest.Originator);
        a2 = v87;
        if (v80)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            goto LABEL_45;
          }

          goto LABEL_19;
        }

        v54 = v85;
        sub_1D8959330(v18, v85, type metadata accessor for DetectionRequest.Originator);
        v55 = *v54;
        if (swift_getEnumCaseMultiPayload() != 3)
        {

          goto LABEL_19;
        }

        v56 = sub_1D894FA18(v55, *v52);

        sub_1D8959400(v18, type metadata accessor for DetectionRequest.Originator);
        a2 = v87;
        if (v56)
        {
          goto LABEL_46;
        }
      }

LABEL_21:
      sub_1D8959400(v21, type metadata accessor for DetectionRequest);
      v50 = (v50 + 1) & v51;
      if (((*(v94 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    if (!EnumCaseMultiPayload)
    {
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_1D8959400(v52, type metadata accessor for DetectionRequest.Originator);
LABEL_45:
        sub_1D8959400(v18, type metadata accessor for DetectionRequest.Originator);
        a2 = v87;
        goto LABEL_46;
      }

LABEL_19:
      sub_1D87A14E4(v18, &unk_1ECA64FB0, &qword_1D8B25F50);
LABEL_20:
      a2 = v87;
      goto LABEL_21;
    }

    v65 = v86;
    sub_1D8959330(v18, v86, type metadata accessor for DetectionRequest.Originator);
    v66 = *v65;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_19;
    }

    v67 = *v52;
    v68 = *(v52 + 4);
    if (!*(v86 + 4))
    {
      if (!v68)
      {
        goto LABEL_44;
      }

      goto LABEL_50;
    }

    if (*(v86 + 4) == 1)
    {
      if (v68 == 1)
      {
LABEL_44:
        if (v66 == v67)
        {
          goto LABEL_45;
        }
      }

LABEL_50:
      sub_1D8959400(v18, type metadata accessor for DetectionRequest.Originator);
      goto LABEL_20;
    }

    sub_1D8959400(v18, type metadata accessor for DetectionRequest.Originator);
    a2 = v87;
    if (v67 != 0.0 || v68 != 2)
    {
      goto LABEL_21;
    }

LABEL_46:
    if ((sub_1D894CAAC(*&v21[v91[6]], v83) & 1) == 0)
    {
      goto LABEL_21;
    }

    v96.origin.x = v41;
    v96.origin.y = v42;
    v96.size.width = v43;
    v96.size.height = v44;
    if (!CGRectEqualToRect(*&v21[v91[7]], v96) || *&v21[v91[8]] != v46)
    {
      goto LABEL_21;
    }

    sub_1D8959400(v21, type metadata accessor for DetectionRequest);
    result = sub_1D8959400(v90, type metadata accessor for DetectionRequest);
    a1 = v76;
    v7 = v78;
    v25 = v75;
    v27 = v74;
    v28 = v73;
    v29 = v72;
    v33 = v71;
    v32 = v70;
  }

  while (v70);
LABEL_8:
  v35 = v28;
  while (1)
  {
    v28 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v28 >= v33)
    {
      return 1;
    }

    v36 = *(v29 + 8 * v28);
    ++v35;
    if (v36)
    {
      v71 = v33;
      v72 = v29;
      v78 = v7;
      v34 = __clz(__rbit64(v36));
      v70 = (v36 - 1) & v36;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D894FA18(uint64_t a1, uint64_t a2)
{
  v74 = sub_1D8B13240();
  v4 = *(v74 - 8);
  v5 = MEMORY[0x1EEE9AC00](v74);
  v70 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v57 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0, &qword_1D8B25F50);
  MEMORY[0x1EEE9AC00](v79);
  v9 = &v57 - v8;
  v10 = type metadata accessor for DetectionRequest.Originator(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v73 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v72 = &v57 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v75 = &v57 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v57 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v80 = &v57 - v21;
  result = MEMORY[0x1EEE9AC00](v20);
  v25 = &v57 - v24;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v26 = 0;
  v27 = a1 + 56;
  v28 = 1 << *(a1 + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & *(a1 + 56);
  v31 = (v28 + 63) >> 6;
  v78 = a2 + 56;
  v71 = (v4 + 8);
  v66 = (v4 + 32);
  v77 = a2;
  v62 = a1;
  v61 = v23;
  v60 = v25;
  v59 = a1 + 56;
  v58 = v31;
  v65 = v10;
  if (!v30)
  {
    goto LABEL_8;
  }

  do
  {
    v32 = __clz(__rbit64(v30));
    v63 = (v30 - 1) & v30;
LABEL_13:
    v64 = v26;
    v35 = *(v23 + 72);
    v36 = *(a1 + 48) + v35 * (v32 | (v26 << 6));
    v37 = v25;
    sub_1D8959330(v36, v25, type metadata accessor for DetectionRequest.Originator);
    sub_1D8959398(v37, v80, type metadata accessor for DetectionRequest.Originator);
    sub_1D8B16D20();
    DetectionRequest.Originator.hash(into:)(v81);
    v38 = sub_1D8B16D80();
    v39 = -1 << *(a2 + 32);
    v40 = v38 & ~v39;
    if (((*(v78 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
    {
LABEL_47:
      sub_1D8959400(v80, type metadata accessor for DetectionRequest.Originator);
      return 0;
    }

    v76 = ~v39;
    v67 = v35;
    while (1)
    {
      sub_1D8959330(*(a2 + 48) + v40 * v35, v19, type metadata accessor for DetectionRequest.Originator);
      v41 = &v9[*(v79 + 48)];
      sub_1D8959330(v19, v9, type metadata accessor for DetectionRequest.Originator);
      sub_1D8959330(v80, v41, type metadata accessor for DetectionRequest.Originator);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v46 = v72;
        sub_1D8959330(v9, v72, type metadata accessor for DetectionRequest.Originator);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_1D8959400(v19, type metadata accessor for DetectionRequest.Originator);
          (*v71)(v46, v74);
          goto LABEL_16;
        }

        v47 = v46;
        v48 = *v66;
        v49 = v69;
        v50 = v74;
        (*v66)(v69, v47, v74);
        v51 = v70;
        v48(v70, v41, v50);
        v35 = v67;
        v68 = sub_1D8B13200();
        v52 = *v71;
        (*v71)(v51, v50);
        v52(v49, v50);
        sub_1D8959400(v19, type metadata accessor for DetectionRequest.Originator);
        sub_1D8959400(v9, type metadata accessor for DetectionRequest.Originator);
        if (v68)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          sub_1D8959400(v19, type metadata accessor for DetectionRequest.Originator);
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            goto LABEL_43;
          }

          goto LABEL_16;
        }

        v43 = v73;
        sub_1D8959330(v9, v73, type metadata accessor for DetectionRequest.Originator);
        v44 = *v43;
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          sub_1D8959400(v19, type metadata accessor for DetectionRequest.Originator);

          goto LABEL_16;
        }

        v45 = sub_1D894FA18(v44, *v41);

        sub_1D8959400(v19, type metadata accessor for DetectionRequest.Originator);
        sub_1D8959400(v9, type metadata accessor for DetectionRequest.Originator);
        if (v45)
        {
          goto LABEL_44;
        }
      }

LABEL_17:
      a2 = v77;
      v40 = (v40 + 1) & v76;
      if (((*(v78 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    if (EnumCaseMultiPayload)
    {
      sub_1D8959400(v19, type metadata accessor for DetectionRequest.Originator);
      v53 = v75;
      sub_1D8959330(v9, v75, type metadata accessor for DetectionRequest.Originator);
      v54 = *v53;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_16;
      }

      v55 = *v41;
      v56 = *(v41 + 4);
      if (!*(v75 + 4))
      {
        if (v56)
        {
LABEL_39:
          sub_1D8959400(v9, type metadata accessor for DetectionRequest.Originator);
          goto LABEL_17;
        }

LABEL_38:
        if (v54 == v55)
        {
          goto LABEL_43;
        }

        goto LABEL_39;
      }

      if (*(v75 + 4) == 1)
      {
        if (v56 != 1)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      sub_1D8959400(v9, type metadata accessor for DetectionRequest.Originator);
      if (v55 == 0.0 && v56 == 2)
      {
        goto LABEL_44;
      }

      goto LABEL_17;
    }

    sub_1D8959400(v19, type metadata accessor for DetectionRequest.Originator);
    if (swift_getEnumCaseMultiPayload())
    {
LABEL_16:
      sub_1D87A14E4(v9, &unk_1ECA64FB0, &qword_1D8B25F50);
      goto LABEL_17;
    }

    sub_1D8959400(v41, type metadata accessor for DetectionRequest.Originator);
LABEL_43:
    sub_1D8959400(v9, type metadata accessor for DetectionRequest.Originator);
LABEL_44:
    result = sub_1D8959400(v80, type metadata accessor for DetectionRequest.Originator);
    a2 = v77;
    a1 = v62;
    v23 = v61;
    v25 = v60;
    v26 = v64;
    v27 = v59;
    v31 = v58;
    v30 = v63;
  }

  while (v63);
LABEL_8:
  v33 = v26;
  while (1)
  {
    v26 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v26 >= v31)
    {
      return 1;
    }

    v34 = *(v27 + 8 * v26);
    ++v33;
    if (v34)
    {
      v32 = __clz(__rbit64(v34));
      v63 = (v34 - 1) & v34;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8950304(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B15270();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1D8959460(&qword_1EE0E3A80, MEMORY[0x1E69E0220], MEMORY[0x1E69E0230]);
      v26 = sub_1D8B15790();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1D8959460(&qword_1EE0E3A78, MEMORY[0x1E69E0220], MEMORY[0x1E69E0238]);
        v31 = sub_1D8B158C0();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D89506B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BuiltInAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionPin.Pill.Source(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E58, &qword_1D8B23BF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v64 - v12;
  v14 = type metadata accessor for HighResolutionStillBarrier.ActionExecution(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v64 - v19;
  result = MEMORY[0x1EEE9AC00](v18);
  v24 = &v64 - v23;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v79 = v13;
  v78 = v11;
  v25 = 0;
  v26 = a1 + 56;
  v27 = 1 << *(a1 + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & *(a1 + 56);
  v30 = (v27 + 63) >> 6;
  v31 = a2 + 56;
  v32 = (v5 + 48);
  if (!v29)
  {
    goto LABEL_8;
  }

  do
  {
    v77 = v32;
    v69 = v30;
    v70 = v26;
    v80 = result;
    v75 = v10;
    v74 = v7;
    v76 = v4;
    v33 = __clz(__rbit64(v29));
    v68 = (v29 - 1) & v29;
LABEL_13:
    v73 = a1;
    v36 = *(a1 + 48);
    v72 = v22;
    v37 = *(v22 + 72);
    v38 = v24;
    sub_1D8959330(v36 + v37 * (v33 | (v25 << 6)), v24, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    v71 = v38;
    sub_1D8959398(v38, v20, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    sub_1D8B16D20();
    sub_1D8B13240();
    sub_1D8959460(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D8B157A0();
    v39 = type metadata accessor for ActionPin(0);
    v40 = &v20[v39[5]];
    v41 = v40[3];
    v88 = v40[2];
    v89 = v41;
    v42 = v40[1];
    v86 = *v40;
    v87 = v42;
    sub_1D8818B80(v86.f64[0], v86.f64[1]);
    sub_1D8818B80(v87.f64[0], v87.f64[1]);
    sub_1D8818B80(v88.f64[0], v88.f64[1]);
    sub_1D8818B80(v89.f64[0], v89.f64[1]);
    v43 = &v20[v39[6]];
    v44 = *v43;
    v84 = *(v43 + 1);
    v85 = v44;
    sub_1D8B15A60();
    v83 = *&v20[v39[7]];
    sub_1D87CF3E8(v90, v83);
    v81 = v20[v39[8]];
    sub_1D8B16D40();
    v82 = &v20[*(v80 + 20)];
    ActionPin.Pill.hash(into:)(v90);
    v45 = sub_1D8B16D80();
    v46 = -1 << *(a2 + 32);
    v47 = v45 & ~v46;
    if (((*(v31 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
    {
LABEL_54:
      sub_1D8959400(v20, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      return 0;
    }

    v48 = ~v46;
    while (1)
    {
      sub_1D8959330(*(a2 + 48) + v47 * v37, v17, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      if ((sub_1D8B13200() & 1) == 0 || (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*&v17[v39[5]], v86), vceqq_f64(*&v17[v39[5] + 16], v87)), vuzp1q_s32(vceqq_f64(*&v17[v39[5] + 32], v88), vceqq_f64(*&v17[v39[5] + 48], v89))))) & 1) == 0)
      {
        goto LABEL_16;
      }

      v49 = &v17[v39[6]];
      v50 = *v49 == v85 && *(v49 + 1) == v84;
      if (!v50 && (sub_1D8B16BA0() & 1) == 0)
      {
        goto LABEL_16;
      }

      if ((sub_1D88E245C(*&v17[v39[7]], v83) & 1) == 0 || v81 != v17[v39[8]])
      {
        goto LABEL_16;
      }

      v51 = &v17[*(v80 + 20)];
      v52 = *v51 == *v82 && *(v51 + 1) == *(v82 + 1);
      if (!v52 && (sub_1D8B16BA0() & 1) == 0 || (*(v51 + 2) != *(v82 + 2) || *(v51 + 3) != *(v82 + 3)) && (sub_1D8B16BA0() & 1) == 0)
      {
        goto LABEL_16;
      }

      if ((*(v51 + 4) != *(v82 + 4) || *(v51 + 5) != *(v82 + 5)) && (sub_1D8B16BA0() & 1) == 0)
      {
        goto LABEL_16;
      }

      v53 = *(v51 + 7);
      v54 = *(v82 + 7);
      if (v53)
      {
        break;
      }

      if (!v54)
      {
        goto LABEL_42;
      }

LABEL_16:
      sub_1D8959400(v17, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      v47 = (v47 + 1) & v48;
      if (((*(v31 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    if (!v54 || (*(v51 + 6) != *(v82 + 6) || v53 != v54) && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_42:
    if (*(v51 + 8) != *(v82 + 8))
    {
      goto LABEL_16;
    }

    v66 = *(type metadata accessor for ActionPin.Pill(0) + 36);
    v67 = *(v78 + 48);
    v65 = type metadata accessor for ActionPin.Pill.Source;
    v55 = &v51[v66];
    v56 = v79;
    sub_1D8959330(v55, v79, type metadata accessor for ActionPin.Pill.Source);
    sub_1D8959330(&v82[v66], v56 + v67, v65);
    v57 = v56;
    v58 = v76;
    v66 = *v77;
    if ((v66)(v57, 1, v76) == 1)
    {
      if ((v66)(&v79[v67], 1, v58) == 1)
      {
        goto LABEL_51;
      }

      goto LABEL_48;
    }

    v76 = v58;
    v59 = v79;
    sub_1D8959330(v79, v75, type metadata accessor for ActionPin.Pill.Source);
    v60 = v59 + v67;
    v61 = v67;
    if ((v66)(v60, 1, v76) == 1)
    {
      sub_1D8959400(v75, type metadata accessor for BuiltInAction);
LABEL_48:
      sub_1D87A14E4(v79, &qword_1ECA63E58, &qword_1D8B23BF0);
      goto LABEL_16;
    }

    v62 = &v79[v61];
    v63 = v74;
    sub_1D8959398(v62, v74, type metadata accessor for BuiltInAction);
    LODWORD(v67) = _s22VisualIntelligenceCore13BuiltInActionO2eeoiySbAC_ACtFZ_0(v75, v63);
    sub_1D8959400(v63, type metadata accessor for BuiltInAction);
    sub_1D8959400(v75, type metadata accessor for BuiltInAction);
    if ((v67 & 1) == 0)
    {
      sub_1D8959400(v79, type metadata accessor for ActionPin.Pill.Source);
      goto LABEL_16;
    }

LABEL_51:
    sub_1D8959400(v79, type metadata accessor for ActionPin.Pill.Source);
    sub_1D8959400(v17, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    sub_1D8959400(v20, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    a1 = v73;
    v4 = v76;
    v7 = v74;
    v10 = v75;
    result = v80;
    v22 = v72;
    v24 = v71;
    v26 = v70;
    v30 = v69;
    v32 = v77;
    v29 = v68;
  }

  while (v68);
LABEL_8:
  v34 = v25;
  while (1)
  {
    v25 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v25 >= v30)
    {
      return 1;
    }

    v35 = *(v26 + 8 * v25);
    ++v34;
    if (v35)
    {
      v77 = v32;
      v69 = v30;
      v70 = v26;
      v80 = result;
      v75 = v10;
      v74 = v7;
      v76 = v4;
      v33 = __clz(__rbit64(v35));
      v68 = (v35 - 1) & v35;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D89510C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13FA0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1D8959460(&qword_1ECA649A0, MEMORY[0x1E69A1168], MEMORY[0x1E69A1170]);
      v26 = sub_1D8B15790();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1D8959460(&qword_1ECA67E10, MEMORY[0x1E69A1168], MEMORY[0x1E69A1178]);
        v31 = sub_1D8B158C0();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8951478(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = sub_1D8B16D10();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_1D89515CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v198[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1D8B13240();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v198[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v198[-v12];
  v240 = type metadata accessor for DetectionRequest.Originator(0);
  v14 = MEMORY[0x1EEE9AC00](v240);
  v226 = &v198[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v229 = &v198[-v17];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v225 = &v198[-v19];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v224 = &v198[-v21];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v223 = &v198[-v23];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v228 = &v198[-v25];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v222 = &v198[-v27];
  v28 = MEMORY[0x1EEE9AC00](v26);
  v221 = &v198[-v29];
  MEMORY[0x1EEE9AC00](v28);
  v227 = &v198[-v30];
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0, &qword_1D8B25F50);
  v31 = MEMORY[0x1EEE9AC00](v234);
  v232 = &v198[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x1EEE9AC00](v31);
  v230 = &v198[-v34];
  MEMORY[0x1EEE9AC00](v33);
  v231 = &v198[-v35];
  v237 = type metadata accessor for DetectionRequest(0);
  v36 = MEMORY[0x1EEE9AC00](v237);
  v235 = &v198[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v36);
  v233 = &v198[-v38];
  v236 = type metadata accessor for ProcessorState(0);
  v39 = MEMORY[0x1EEE9AC00](v236);
  v241 = &v198[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = MEMORY[0x1EEE9AC00](v39);
  v244 = &v198[-v42];
  MEMORY[0x1EEE9AC00](v41);
  v239 = &v198[-v43];
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E90, &qword_1D8B2CF70);
  MEMORY[0x1EEE9AC00](v246);
  v45 = &v198[-v44];
  v247 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  v46 = MEMORY[0x1EEE9AC00](v247);
  v48 = &v198[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = MEMORY[0x1EEE9AC00](v46);
  v248 = &v198[-v50];
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v198[-v52];
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v214 = v13;
    v54 = 0;
    v55 = a1 + 56;
    v56 = 1 << *(a1 + 32);
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    else
    {
      v57 = -1;
    }

    v58 = v57 & *(a1 + 56);
    v59 = (v56 + 63) >> 6;
    v238 = a2 + 56;
    v215 = (v8 + 8);
    v213 = (v8 + 32);
    v219 = v6;
    v60 = v244;
    if (v58)
    {
LABEL_7:
      v202 = v59;
      v203 = v55;
      v209 = v11;
      v212 = v7;
      v207 = v4;
      v201 = (v58 - 1) & v58;
      v200 = v54;
      v61 = __clz(__rbit64(v58)) | (v54 << 6);
LABEL_13:
      v206 = a1;
      v65 = *(a1 + 48);
      v205 = v51;
      v66 = *(v51 + 72);
      v67 = v53;
      sub_1D8959330(v65 + v66 * v61, v53, type metadata accessor for TrackManager.TrackedProcessorState);
      v204 = v67;
      v68 = v248;
      sub_1D8959398(v67, v248, type metadata accessor for TrackManager.TrackedProcessorState);
      sub_1D8B16D20();
      v69.f64[0] = *(v68 + 2);
      v70 = v68[24];
      *v256 = *(v68 + 25);
      *&v256[3] = *(v68 + 7);
      *&v71 = *(v68 + 4);
      v72 = v68[40];
      *v259 = *(v68 + 41);
      *&v259[3] = *(v68 + 11);
      v73 = *(v68 + 6);
      v74 = *(v68 + 7);
      v75 = *(v68 + 8);
      v76 = *(v68 + 9);
      v251 = *v68;
      v253 = v251;
      v252 = v69;
      v254 = v69.f64[0];
      v255 = v70;
      v218 = v71;
      v257 = v71;
      v249 = v72;
      v258 = v72;
      v260 = v73;
      v261 = v74;
      v262 = v75;
      v263 = v76;
      CameraSourceFrameMetadata.hash(into:)(&v264);
      v77 = v247;
      v243 = *(v247 + 20);
      sub_1D8A36918(&v264);
      v208 = v68[*(v77 + 24)];
      MEMORY[0x1DA720210]();
      v78 = sub_1D8B16D80();
      v79 = v70;
      v80 = -1 << *(a2 + 32);
      v81 = v78 & ~v80;
      v82 = v238;
      v83 = v236;
      if ((*(v238 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81))
      {
        v250 = ~v80;
        v84.f64[0] = v252.f64[0];
        *&v84.f64[1] = v218;
        v252 = v84;
        v216 = a2;
        v242 = v66;
        v245 = v79;
        v220 = v45;
        do
        {
          sub_1D8959330(*(a2 + 48) + v81 * v66, v48, type metadata accessor for TrackManager.TrackedProcessorState);
          v85.f64[0] = *(v48 + 2);
          v85.f64[1] = *(v48 + 4);
          if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*v48, v251), vceqq_f64(v85, v252))))))
          {
            goto LABEL_42;
          }

          if ((v48[24] ^ v79))
          {
            goto LABEL_42;
          }

          if ((v48[40] ^ v249))
          {
            goto LABEL_42;
          }

          v265.origin.x = v73;
          v265.origin.y = v74;
          v265.size.width = v75;
          v265.size.height = v76;
          if (!CGRectEqualToRect(*(v48 + 48), v265))
          {
            goto LABEL_42;
          }

          v86 = &v45[*(v246 + 48)];
          sub_1D8959330(&v48[*(v247 + 20)], v45, type metadata accessor for ProcessorState);
          sub_1D8959330(&v248[v243], v86, type metadata accessor for ProcessorState);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (!EnumCaseMultiPayload)
          {
            v99 = v239;
            sub_1D8959330(v45, v239, type metadata accessor for ProcessorState);
            if (swift_getEnumCaseMultiPayload())
            {
              sub_1D8959400(v99, type metadata accessor for DetectionRequest);
              v82 = v238;
LABEL_39:
              v79 = v245;
LABEL_41:
              sub_1D87A14E4(v45, &qword_1ECA65E90, &qword_1D8B2CF70);
              v66 = v242;
              goto LABEL_42;
            }

            v118 = v233;
            sub_1D8959398(v86, v233, type metadata accessor for DetectionRequest);
            v119 = v118;
            v120 = v99;
            if (*v99 != *v118)
            {
              goto LABEL_165;
            }

            v121 = v237[5];
            v122 = v231;
            v123 = &v231[*(v234 + 48)];
            v124 = v119;
            sub_1D8959330(&v120[v121], v231, type metadata accessor for DetectionRequest.Originator);
            sub_1D8959330(&v124[v121], v123, type metadata accessor for DetectionRequest.Originator);
            v125 = swift_getEnumCaseMultiPayload();
            if (v125 > 1)
            {
              if (v125 == 2)
              {
                v165 = v221;
                sub_1D8959330(v122, v221, type metadata accessor for DetectionRequest.Originator);
                if (swift_getEnumCaseMultiPayload() != 2)
                {
                  (*v215)(v165, v212);
                  goto LABEL_105;
                }

                v166 = *v213;
                v167 = v214;
                v168 = v165;
                v169 = v212;
                (*v213)(v214, v168, v212);
                v170 = v209;
                (v166)(v209, v123, v169);
                v171 = sub_1D8B13200();
                v172 = *v215;
                (*v215)(v170, v169);
                v172(v167, v169);
                sub_1D8959400(v231, type metadata accessor for DetectionRequest.Originator);
                v119 = v233;
                v83 = v236;
                v60 = v244;
                v120 = v239;
                if ((v171 & 1) == 0)
                {
                  goto LABEL_165;
                }

                goto LABEL_154;
              }

              if (v125 == 3)
              {
                v126 = v222;
                sub_1D8959330(v122, v222, type metadata accessor for DetectionRequest.Originator);
                v127 = *v126;
                if (swift_getEnumCaseMultiPayload() != 3)
                {

LABEL_105:
                  v83 = v236;
LABEL_106:
                  sub_1D87A14E4(v231, &unk_1ECA64FB0, &qword_1D8B25F50);
                  goto LABEL_107;
                }

                v128 = sub_1D894FA18(v127, *v123);

                sub_1D8959400(v122, type metadata accessor for DetectionRequest.Originator);
                v119 = v233;
                v83 = v236;
                v60 = v244;
                v120 = v239;
                if ((v128 & 1) == 0)
                {
                  goto LABEL_165;
                }

                goto LABEL_154;
              }

              v173 = swift_getEnumCaseMultiPayload();
              v83 = v236;
              if (v173 != 4)
              {
                goto LABEL_106;
              }

LABEL_153:
              sub_1D8959400(v231, type metadata accessor for DetectionRequest.Originator);
              v119 = v233;
              v60 = v244;
              v120 = v239;
LABEL_154:
              v192 = sub_1D894CAAC(*&v120[v237[6]], *&v119[v237[6]]);
              v120 = v239;
              v119 = v233;
              if ((v192 & 1) == 0)
              {
                goto LABEL_165;
              }

              v193 = CGRectEqualToRect(*&v239[v237[7]], *&v233[v237[7]]);
              v120 = v239;
              v119 = v233;
              if (!v193 || *&v239[v237[8]] != *&v233[v237[8]])
              {
                goto LABEL_165;
              }

              v194 = v239;
              sub_1D8959400(v233, type metadata accessor for DetectionRequest);
              sub_1D8959400(v194, type metadata accessor for DetectionRequest);
              goto LABEL_158;
            }

            if (!v125)
            {
              v130 = swift_getEnumCaseMultiPayload();
              v83 = v236;
              if (v130)
              {
                goto LABEL_106;
              }

              sub_1D8959400(v123, type metadata accessor for DetectionRequest.Originator);
              goto LABEL_153;
            }

            v174 = v227;
            sub_1D8959330(v122, v227, type metadata accessor for DetectionRequest.Originator);
            v175 = *v174;
            v176 = swift_getEnumCaseMultiPayload();
            v83 = v236;
            if (v176 != 1)
            {
              goto LABEL_106;
            }

            v177 = *v123;
            v178 = *(v123 + 4);
            if (*(v227 + 4))
            {
              if (*(v227 + 4) != 1)
              {
                sub_1D8959400(v231, type metadata accessor for DetectionRequest.Originator);
                v119 = v233;
                v60 = v244;
                v120 = v239;
                if (v177 != 0.0 || v178 != 2)
                {
                  goto LABEL_165;
                }

                goto LABEL_154;
              }

              if (v178 != 1)
              {
                goto LABEL_162;
              }
            }

            else if (v178)
            {
              goto LABEL_162;
            }

            if (v175 != v177)
            {
LABEL_162:
              sub_1D8959400(v231, type metadata accessor for DetectionRequest.Originator);
LABEL_107:
              v119 = v233;
              v60 = v244;
              v120 = v239;
LABEL_165:
              v197 = v120;
              sub_1D8959400(v119, type metadata accessor for DetectionRequest);
              sub_1D8959400(v197, type metadata accessor for DetectionRequest);
              sub_1D8959400(v45, type metadata accessor for ProcessorState);
              v82 = v238;
              v66 = v242;
              v79 = v245;
LABEL_42:
              sub_1D8959400(v48, type metadata accessor for TrackManager.TrackedProcessorState);
              goto LABEL_43;
            }

            goto LABEL_153;
          }

          if (EnumCaseMultiPayload != 1)
          {
            v100 = v83;
            v101 = v241;
            sub_1D8959330(v45, v241, type metadata accessor for ProcessorState);
            v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0) + 48);
            v103 = *&v101[v102 + 8];
            v217 = *&v101[v102];
            v104 = v100;
            v105 = swift_getEnumCaseMultiPayload();
            v79 = v245;
            if (v105 != 2)
            {

              sub_1D8959400(v101, type metadata accessor for DetectionRequest);
              v60 = v244;
              v83 = v104;
              v45 = v220;
              goto LABEL_41;
            }

            *&v218 = v103;
            v106 = *(v86 + v102 + 8);
            v211 = *(v86 + v102);
            v107 = v235;
            sub_1D8959398(v86, v235, type metadata accessor for DetectionRequest);
            if (*v101 != *v107)
            {

              v66 = v242;
              v83 = v104;
              v45 = v220;
LABEL_143:
              sub_1D8959400(v241, type metadata accessor for DetectionRequest);
              v189 = type metadata accessor for TrackManager.TrackedProcessorState;
              v190 = v48;
LABEL_144:
              sub_1D8959400(v190, v189);
              sub_1D8959400(v107, type metadata accessor for DetectionRequest);
              sub_1D8959400(v45, type metadata accessor for ProcessorState);
              v60 = v244;
              goto LABEL_43;
            }

            v210 = v106;
            v108 = v237[5];
            v109 = &v232[*(v234 + 48)];
            sub_1D8959330(&v101[v108], v232, type metadata accessor for DetectionRequest.Originator);
            sub_1D8959330(&v107[v108], v109, type metadata accessor for DetectionRequest.Originator);
            v110 = swift_getEnumCaseMultiPayload();
            if (v110 > 1)
            {
              v111 = v229;
              if (v110 == 2)
              {
                v146 = v232;
                sub_1D8959330(v232, v229, type metadata accessor for DetectionRequest.Originator);
                v147 = swift_getEnumCaseMultiPayload();
                v82 = v238;
                v148 = v109;
                v45 = v220;
                if (v147 != 2)
                {

                  (*v215)(v111, v212);
                  v158 = v146;
                  v107 = v235;
                  v83 = v236;
                  v79 = v245;
                  goto LABEL_102;
                }

                v149 = *v213;
                v150 = v214;
                v151 = v212;
                (*v213)();
                v152 = v149;
                v153 = v209;
                (v152)(v209, v148, v151);
                v199 = sub_1D8B13200();
                v154 = *v215;
                (*v215)(v153, v151);
                v154(v150, v151);
                sub_1D8959400(v232, type metadata accessor for DetectionRequest.Originator);
                v83 = v236;
LABEL_74:
                v79 = v245;
                if ((v199 & 1) == 0)
                {
                  goto LABEL_141;
                }
              }

              else
              {
                v112 = v109;
                v82 = v238;
                v45 = v220;
                if (v110 == 3)
                {
                  v113 = v232;
                  v114 = v226;
                  sub_1D8959330(v232, v226, type metadata accessor for DetectionRequest.Originator);
                  v115 = *v114;
                  v116 = v112;
                  v117 = swift_getEnumCaseMultiPayload();
                  v83 = v236;
                  if (v117 != 3)
                  {

                    v107 = v235;
                    v79 = v245;
                    v158 = v113;
                    goto LABEL_102;
                  }

                  v199 = sub_1D894FA18(v115, *v116);

                  sub_1D8959400(v113, type metadata accessor for DetectionRequest.Originator);
                  goto LABEL_74;
                }

                v155 = swift_getEnumCaseMultiPayload();
                v156 = v232;
                v83 = v236;
                v79 = v245;
                if (v155 != 4)
                {
                  v157 = v232;

                  v158 = v157;
                  v107 = v235;
                  goto LABEL_102;
                }

LABEL_131:
                sub_1D8959400(v156, type metadata accessor for DetectionRequest.Originator);
              }

LABEL_132:
              v185 = v237;
              v186 = v241;
              v107 = v235;
              if ((sub_1D894CAAC(*&v241[v237[6]], *&v235[v237[6]]) & 1) == 0)
              {

                goto LABEL_142;
              }

              v187 = CGRectEqualToRect(*&v186[v185[7]], *&v107[v185[7]]);
              v188 = v185;
              v66 = v242;
              if (!v187)
              {

                goto LABEL_143;
              }

              if (*&v186[v188[8]] != *&v107[v188[8]])
              {
                sub_1D8959400(v48, type metadata accessor for TrackManager.TrackedProcessorState);

                v189 = type metadata accessor for DetectionRequest;
                v190 = v186;
                goto LABEL_144;
              }

              sub_1D8959400(v186, type metadata accessor for DetectionRequest);
              if (v217 == v211 && v218 == v210)
              {

                sub_1D8959400(v107, type metadata accessor for DetectionRequest);
              }

              else
              {
                LODWORD(v217) = sub_1D8B16BA0();

                sub_1D8959400(v107, type metadata accessor for DetectionRequest);
                if ((v217 & 1) == 0)
                {
                  sub_1D8959400(v48, type metadata accessor for TrackManager.TrackedProcessorState);
                  sub_1D8959400(v45, type metadata accessor for ProcessorState);
                  v60 = v244;
                  goto LABEL_128;
                }
              }

              goto LABEL_159;
            }

            v83 = v104;
            if (!v110)
            {
              v129 = swift_getEnumCaseMultiPayload();
              v82 = v238;
              v79 = v245;
              if (v129)
              {

                v107 = v235;
                goto LABEL_101;
              }

              sub_1D8959400(v109, type metadata accessor for DetectionRequest.Originator);
              v156 = v232;
              v45 = v220;
              goto LABEL_131;
            }

            v159 = v225;
            sub_1D8959330(v232, v225, type metadata accessor for DetectionRequest.Originator);
            v160 = *v159;
            v161 = swift_getEnumCaseMultiPayload();
            v82 = v238;
            if (v161 != 1)
            {

              v107 = v235;
              v79 = v245;
LABEL_101:
              v158 = v232;
              v45 = v220;
LABEL_102:
              sub_1D87A14E4(v158, &unk_1ECA64FB0, &qword_1D8B25F50);
LABEL_142:
              v66 = v242;
              goto LABEL_143;
            }

            v162 = *(v159 + 4);
            v163 = *v109;
            v164 = *(v109 + 4);
            v45 = v220;
            if (*(v159 + 4))
            {
              v79 = v245;
              if (v162 != 1)
              {
                v191 = v163;
                sub_1D8959400(v232, type metadata accessor for DetectionRequest.Originator);
                if (v191 != 0.0 || v164 != 2)
                {
                  goto LABEL_141;
                }

                goto LABEL_132;
              }

              v156 = v232;
              if (v164 != 1)
              {
                goto LABEL_140;
              }
            }

            else
            {
              v79 = v245;
              v156 = v232;
              if (v164)
              {
                goto LABEL_140;
              }
            }

            if (v160 != v163)
            {
LABEL_140:
              sub_1D8959400(v156, type metadata accessor for DetectionRequest.Originator);
LABEL_141:

              v107 = v235;
              goto LABEL_142;
            }

            goto LABEL_131;
          }

          sub_1D8959330(v45, v60, type metadata accessor for ProcessorState);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_1D8959400(v60, type metadata accessor for DetectionResult);
            goto LABEL_39;
          }

          v88 = v219;
          sub_1D8959398(v86, v219, type metadata accessor for DetectionResult);
          v89 = v60;
          if (*v60 != *v88)
          {
            goto LABEL_127;
          }

          v90 = v237[5];
          v91 = v230;
          v92 = &v230[*(v234 + 48)];
          sub_1D8959330(&v89[v90], v230, type metadata accessor for DetectionRequest.Originator);
          sub_1D8959330(&v88[v90], v92, type metadata accessor for DetectionRequest.Originator);
          v93 = swift_getEnumCaseMultiPayload();
          if (v93 <= 1)
          {
            if (v93)
            {
              v141 = v91;
              v142 = v228;
              sub_1D8959330(v141, v228, type metadata accessor for DetectionRequest.Originator);
              v143 = *v142;
              v91 = v230;
              if (swift_getEnumCaseMultiPayload() != 1)
              {
                goto LABEL_96;
              }

              v144 = *v92;
              v145 = *(v92 + 4);
              if (*(v228 + 4))
              {
                if (*(v228 + 4) != 1)
                {
                  sub_1D8959400(v91, type metadata accessor for DetectionRequest.Originator);
                  v88 = v219;
                  v83 = v236;
                  v89 = v244;
                  if (v144 != 0.0 || v145 != 2)
                  {
                    goto LABEL_127;
                  }

                  goto LABEL_112;
                }

                if (v145 != 1)
                {
                  goto LABEL_124;
                }
              }

              else if (v145)
              {
                goto LABEL_124;
              }

              if (v143 != v144)
              {
LABEL_124:
                sub_1D8959400(v91, type metadata accessor for DetectionRequest.Originator);
LABEL_97:
                v88 = v219;
                v83 = v236;
                v89 = v244;
LABEL_127:
                sub_1D8959400(v48, type metadata accessor for TrackManager.TrackedProcessorState);
                sub_1D8959400(v88, type metadata accessor for DetectionResult);
                sub_1D8959400(v89, type metadata accessor for DetectionResult);
                sub_1D8959400(v45, type metadata accessor for ProcessorState);
                v60 = v89;
                a2 = v216;
                v82 = v238;
                v66 = v242;
LABEL_128:
                v79 = v245;
                goto LABEL_43;
              }
            }

            else
            {
              if (swift_getEnumCaseMultiPayload())
              {
                goto LABEL_96;
              }

              sub_1D8959400(v92, type metadata accessor for DetectionRequest.Originator);
            }
          }

          else
          {
            if (v93 == 2)
            {
              v131 = v91;
              v132 = v91;
              v133 = v223;
              sub_1D8959330(v131, v223, type metadata accessor for DetectionRequest.Originator);
              if (swift_getEnumCaseMultiPayload() != 2)
              {
                (*v215)(v133, v212);
                v91 = v132;
LABEL_96:
                sub_1D87A14E4(v91, &unk_1ECA64FB0, &qword_1D8B25F50);
                goto LABEL_97;
              }

              v134 = *v213;
              v135 = v214;
              v136 = v133;
              v137 = v212;
              (*v213)(v214, v136, v212);
              v138 = v209;
              (v134)(v209, v92, v137);
              v139 = sub_1D8B13200();
              v140 = *v215;
              (*v215)(v138, v137);
              v140(v135, v137);
              sub_1D8959400(v132, type metadata accessor for DetectionRequest.Originator);
              v88 = v219;
              v83 = v236;
              v89 = v244;
              if ((v139 & 1) == 0)
              {
                goto LABEL_127;
              }

              goto LABEL_112;
            }

            if (v93 == 3)
            {
              v94 = v91;
              v95 = v91;
              v96 = v224;
              sub_1D8959330(v94, v224, type metadata accessor for DetectionRequest.Originator);
              v97 = *v96;
              if (swift_getEnumCaseMultiPayload() != 3)
              {

                v91 = v95;
                goto LABEL_96;
              }

              v98 = sub_1D894FA18(v97, *v92);

              sub_1D8959400(v95, type metadata accessor for DetectionRequest.Originator);
              v88 = v219;
              v83 = v236;
              v89 = v244;
              if ((v98 & 1) == 0)
              {
                goto LABEL_127;
              }

              goto LABEL_112;
            }

            if (swift_getEnumCaseMultiPayload() != 4)
            {
              goto LABEL_96;
            }
          }

          sub_1D8959400(v91, type metadata accessor for DetectionRequest.Originator);
          v88 = v219;
          v83 = v236;
          v89 = v244;
LABEL_112:
          if ((sub_1D894CAAC(*&v89[v237[6]], *&v88[v237[6]]) & 1) == 0)
          {
            goto LABEL_127;
          }

          if (!CGRectEqualToRect(*&v89[v237[7]], *&v88[v237[7]]))
          {
            goto LABEL_127;
          }

          if (*&v89[v237[8]] != *&v88[v237[8]])
          {
            goto LABEL_127;
          }

          v179 = *(v207 + 20);
          v180 = *&v89[v179];
          v181 = *&v88[v179];
          v182 = *(v181 + 16);
          *&v218 = *(v180 + 16);
          if (v218 != v182)
          {
            goto LABEL_127;
          }

          if (v218 && v180 != v181)
          {
            v183 = 0;
            v217 = v180 + 32;
            v211 = v181 + 32;
            while (v183 < *(v180 + 16))
            {
              v253.f64[0] = *(v217 + 8 * v183);
              if (v183 >= *(v181 + 16))
              {
                goto LABEL_173;
              }

              *&v264 = *(v211 + 8 * v183);

              v184 = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(&v253, &v264);

              v88 = v219;
              v89 = v244;
              if ((v184 & 1) == 0)
              {
                goto LABEL_127;
              }

              if (v218 == ++v183)
              {
                goto LABEL_123;
              }
            }

            goto LABEL_172;
          }

LABEL_123:
          sub_1D8959400(v219, type metadata accessor for DetectionResult);
          sub_1D8959400(v244, type metadata accessor for DetectionResult);
          a2 = v216;
LABEL_158:
          v82 = v238;
          v66 = v242;
LABEL_159:
          sub_1D8959400(v45, type metadata accessor for ProcessorState);
          v195 = v48[*(v247 + 24)];
          sub_1D8959400(v48, type metadata accessor for TrackManager.TrackedProcessorState);
          v196 = v195 == v208;
          v60 = v244;
          v79 = v245;
          if (v196)
          {
            sub_1D8959400(v248, type metadata accessor for TrackManager.TrackedProcessorState);
            a1 = v206;
            v4 = v207;
            v7 = v212;
            v11 = v209;
            v51 = v205;
            v53 = v204;
            v55 = v203;
            v59 = v202;
            v58 = v201;
            v54 = v200;
            if (v201)
            {
              goto LABEL_7;
            }

            goto LABEL_8;
          }

LABEL_43:
          v81 = (v81 + 1) & v250;
        }

        while (((*(v82 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81) & 1) != 0);
      }

      sub_1D8959400(v248, type metadata accessor for TrackManager.TrackedProcessorState);
    }

    else
    {
LABEL_8:
      v62 = v54;
      while (1)
      {
        v63 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          break;
        }

        if (v63 >= v59)
        {
          return;
        }

        v64 = *(v55 + 8 * v63);
        ++v62;
        if (v64)
        {
          v202 = v59;
          v203 = v55;
          v209 = v11;
          v212 = v7;
          v207 = v4;
          v201 = (v64 - 1) & v64;
          v200 = v63;
          v61 = __clz(__rbit64(v64)) | (v63 << 6);
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
    }
  }
}

uint64_t sub_1D8953784()
{
  sub_1D8B16D20();
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

uint64_t sub_1D8953808(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

void sub_1D8953864(BOOL *a2@<X8>)
{
  v3 = sub_1D8B16930();

  *a2 = v3 != 0;
}

void sub_1D8953904(BOOL *a3@<X8>)
{
  v4 = sub_1D8B16930();

  *a3 = v4 != 0;
}

uint64_t sub_1D895395C(uint64_t a1)
{
  v2 = sub_1D8953B80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8953998(uint64_t a1)
{
  v2 = sub_1D8953B80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TextActionsClassifier.Result.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E30, &qword_1D8B2CCD0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8953B80();

  sub_1D8B16DD0();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E40, &qword_1D8B2CCD8);
  sub_1D8958C10(&qword_1ECA65E48, &qword_1ECA65E50, MEMORY[0x1E69E0250], MEMORY[0x1E69E64F0]);
  sub_1D8B16AE0();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D8953B80()
{
  result = qword_1ECA65E38;
  if (!qword_1ECA65E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E38);
  }

  return result;
}

uint64_t TextActionsClassifier.Result.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  sub_1D8819574(v3, v1);
  return sub_1D8B16D80();
}

uint64_t TextActionsClassifier.Result.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E58, &qword_1D8B2CCE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8953B80();
  sub_1D8B16DB0();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E40, &qword_1D8B2CCD8);
    sub_1D8958C10(&qword_1ECA65E60, &qword_1ECA65E68, MEMORY[0x1E69E0268], MEMORY[0x1E69E6510]);
    sub_1D8B16A10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D8953DE8()
{
  v1 = *v0;
  sub_1D8B16D20();
  sub_1D8819574(v3, v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8953E38(uint64_t a1)
{
  v2 = *v1;
  sub_1D8B16D20();
  sub_1D8819574(v4, v2);
  return sub_1D8B16D80();
}

void sub_1D8953EAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB8, &qword_1D8B26820);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v93 - v8;
  v10 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MetaDetectionResult(0);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CVTrackSnapshot(0);
  v104 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 32);
  v19 = *(a2 + 40);
  *&v105 = *v3;
  if (!sub_1D8954D44())
  {
    v87 = xmmword_1D8B26630;
LABEL_50:
    *a3 = v87;
    goto LABEL_51;
  }

  if (!v19)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
LABEL_51:
    *(a3 + 16) = 2;
    return;
  }

  v20 = sub_1D891A6E8();
  v102 = *(v20 + 16);
  if (!v102)
  {

LABEL_49:
    v87 = xmmword_1D8B26640;
    goto LABEL_50;
  }

  v96 = v10;
  v95 = a1;
  v94 = a3;
  v99 = *(v15 + 20);
  v101 = v20 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
  v103 = v20;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0, &qword_1D8B2BEE0);
  v21 = 0;
  v22 = (v13 + 56);
  v23 = v98;
  while (1)
  {
    if (v21 >= *(v103 + 16))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v24 = v22;
    sub_1D8959330(v101 + *(v104 + 72) * v21, v17, type metadata accessor for CVTrackSnapshot);
    v25 = sub_1D8B16910();
    v26 = sub_1D881F7DC();
    if (v27)
    {
      goto LABEL_57;
    }

    v28 = v25 + 8;
    *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v26;
    *(v25[6] + v26) = 1;
    *(v25[7] + 8 * v26) = 0x3FE999999999999ALL;
    v29 = v25[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_58;
    }

    v25[2] = v31;
    v32 = sub_1D881F7DC();
    if (v33)
    {
      goto LABEL_59;
    }

    *(v28 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    *(v25[6] + v32) = 12;
    *(v25[7] + 8 * v32) = 0x3FE0000000000000;
    v34 = v25[2];
    v30 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v30)
    {
      goto LABEL_60;
    }

    v25[2] = v35;
    v36 = sub_1D881F7DC();
    if (v37)
    {
      goto LABEL_61;
    }

    *(v28 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    *(v25[6] + v36) = 13;
    *(v25[7] + 8 * v36) = 0x3FE0000000000000;
    v38 = v25[2];
    v30 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v30)
    {
      goto LABEL_62;
    }

    v25[2] = v39;
    v40 = sub_1D881F7DC();
    if (v41)
    {
      goto LABEL_63;
    }

    *(v28 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    *(v25[6] + v40) = 5;
    *(v25[7] + 8 * v40) = 0x4020000000000000;
    v42 = v25[2];
    v30 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v30)
    {
      goto LABEL_64;
    }

    v25[2] = v43;
    v44 = 1.0;
    if (v43)
    {
      v45 = sub_1D881F7DC();
      if (v46)
      {
        v44 = *(v25[7] + 8 * v45);
      }
    }

    ++v21;

    switch(*&v17[v99] >> 60)
    {
      case 1:
        v63 = type metadata accessor for GroundedParseDetectorResult(0);
        v48 = swift_projectBox();
        *(&v106 + 1) = v63;
        *&v107 = sub_1D8959460(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v105);
        v50 = type metadata accessor for GroundedParseDetectorResult;
        goto LABEL_29;
      case 2:
        v56 = swift_projectBox();
        *(&v106 + 1) = v12;
        *&v107 = sub_1D8959460(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v105);
        v57 = type metadata accessor for MetaDetectionResult;
        v58 = v56;
        goto LABEL_30;
      case 3:
      case 8:
        v47 = type metadata accessor for ObjectDetectorResult(0);
        v48 = swift_projectBox();
        *(&v106 + 1) = v47;
        *&v107 = sub_1D8959460(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v105);
        v50 = type metadata accessor for ObjectDetectorResult;
        goto LABEL_29;
      case 4:
        v64 = type metadata accessor for ParseDetectorResult(0);
        v48 = swift_projectBox();
        *(&v106 + 1) = v64;
        *&v107 = sub_1D8959460(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v105);
        v50 = type metadata accessor for ParseDetectorResult;
        goto LABEL_29;
      case 5:
        v65 = type metadata accessor for TextDetectorResult(0);
        v48 = swift_projectBox();
        *(&v106 + 1) = v65;
        *&v107 = sub_1D8959460(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v105);
        v50 = type metadata accessor for TextDetectorResult;
        goto LABEL_29;
      case 6:
      case 7:
        v51 = type metadata accessor for StreamingBarcodeDetectorResult(0);
        v48 = swift_projectBox();
        *(&v106 + 1) = v51;
        *&v107 = sub_1D8959460(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v105);
        v50 = type metadata accessor for StreamingBarcodeDetectorResult;
        goto LABEL_29;
      case 9:
      case 0xALL:
        v52 = swift_projectBox();
        v53 = v97;
        sub_1D8959330(v52, v97, type metadata accessor for AFMResult);
        *(&v106 + 1) = v96;
        *&v107 = sub_1D8959460(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
        v54 = __swift_allocate_boxed_opaque_existential_1(&v105);
        sub_1D8959398(v53, v54, type metadata accessor for AFMResult);
        break;
      case 0xBLL:
        v55 = type metadata accessor for SyntheticDetectionResult(0);
        v48 = swift_projectBox();
        *(&v106 + 1) = v55;
        *&v107 = sub_1D8959460(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v105);
        v50 = type metadata accessor for SyntheticDetectionResult;
        goto LABEL_29;
      case 0xCLL:
        v59 = type metadata accessor for GroundedParseEmbeddingsResult(0);
        v48 = swift_projectBox();
        *(&v106 + 1) = v59;
        *&v107 = sub_1D8959460(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v105);
        v50 = type metadata accessor for GroundedParseEmbeddingsResult;
        goto LABEL_29;
      case 0xDLL:
        v66 = type metadata accessor for GroundedParseClassificationsResult(0);
        v48 = swift_projectBox();
        *(&v106 + 1) = v66;
        *&v107 = sub_1D8959460(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v105);
        v50 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_29:
        v57 = v50;
        v58 = v48;
LABEL_30:
        sub_1D8959330(v58, boxed_opaque_existential_1, v57);
        break;
      default:
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
        v61 = swift_projectBox();
        *(&v106 + 1) = v60;
        *&v107 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>);
        v62 = __swift_allocate_boxed_opaque_existential_1(&v105);
        sub_1D87A0E38(v61, v62, &qword_1ECA67750, &unk_1D8B1E0C0);
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140, &qword_1D8B22FA0);
    v67 = swift_dynamicCast();
    v22 = v24;
    v68 = *v24;
    if ((v67 & 1) == 0)
    {
      v68(v9, 1, 1, v12);
      sub_1D87A14E4(v9, &qword_1ECA64BB8, &qword_1D8B26820);
LABEL_43:
      sub_1D8959400(v17, type metadata accessor for CVTrackSnapshot);
      goto LABEL_44;
    }

    v68(v9, 0, 1, v12);
    sub_1D8959398(v9, v23, type metadata accessor for MetaDetectionResult);
    if (*v23 != 5 || (v69 = *&v23[v12[8]], v69 != v18) || (v70 = v12[9], v23[v70] == 2) && v18 - v69 > v44 || (CVBundle.latestEstimate.getter(&v113), v112 = v113, CVDetection.detection.getter(v109), v71 = v110, v72 = v111, __swift_project_boxed_opaque_existential_1(v109, v110), (*(v72 + 64))(&v105, v71, v72), __swift_destroy_boxed_opaque_existential_1(v109), Corners.bounds.getter(), v74 = v73, v76 = v75, v78 = v77, v80 = v79, v23 = v98, , v118.origin.x = 0.0, v118.origin.y = 0.0, v118.size.width = 1.0, v118.size.height = 1.0, v114.origin.x = v74, v114.origin.y = v76, v114.size.width = v78, v114.size.height = v80, v115 = CGRectIntersection(v114, v118), x = v115.origin.x, y = v115.origin.y, width = v115.size.width, height = v115.size.height, v85 = &v23[v12[5]], *&v115.origin.y = v85[1], v105 = *v85, v106 = *&v115.origin.y, *&v115.origin.y = v85[3], v107 = v85[2], v108 = *&v115.origin.y, Corners.bounds.getter(), v22 = v24, v119.origin.x = x, v119.origin.y = y, v119.size.width = width, v119.size.height = height, v117 = CGRectIntersection(v116, v119), width * height * 0.9 > v117.size.width * v117.size.height))
    {
      sub_1D8959400(v23, type metadata accessor for MetaDetectionResult);
      goto LABEL_43;
    }

    v86 = v23[v70];
    if (v86 == 3)
    {
      break;
    }

    sub_1D8959400(v23, type metadata accessor for MetaDetectionResult);
    sub_1D8959400(v17, type metadata accessor for CVTrackSnapshot);
    if (v86 == 2)
    {

      v89 = v94;
LABEL_55:
      *v89 = 0;
      *(v89 + 8) = 0;
      *(v89 + 16) = -1;
      return;
    }

LABEL_44:
    if (v102 == v21)
    {

      a3 = v94;
      goto LABEL_49;
    }
  }

  if (qword_1EE0E54C0 == -1)
  {
    goto LABEL_53;
  }

LABEL_65:
  swift_once();
LABEL_53:
  v88 = sub_1D8B0AAA4();
  v89 = v94;
  if ((v88 & 1) == 0)
  {

    sub_1D8959400(v23, type metadata accessor for MetaDetectionResult);
    sub_1D8959400(v17, type metadata accessor for CVTrackSnapshot);
    goto LABEL_55;
  }

  *&v105 = 0;
  *(&v105 + 1) = 0xE000000000000000;
  sub_1D8B16720();

  *&v105 = 0xD00000000000002FLL;
  *(&v105 + 1) = 0x80000001D8B43DD0;
  v90 = &v23[v12[10]];
  if (v90[1])
  {
    v91 = *v90;
    v92 = v90[1];
  }

  else
  {
    v92 = 0xEF6E65766967206ELL;
    v91 = 0x6F73616572206F6ELL;
  }

  MEMORY[0x1DA71EFA0](v91, v92);

  sub_1D8B168C0();
  __break(1u);
}

BOOL sub_1D8954D44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  CVBundle.latestEstimate.getter(&v11);
  if (v11 >> 60 != 11)
  {
    if (v11 >> 60)
    {
LABEL_5:

      return 0;
    }

    v3 = swift_projectBox();
    sub_1D87A0E38(v3, v2, &qword_1ECA67750, &unk_1D8B1E0C0);
    v4 = sub_1D8A05CB0();
    v5 = sub_1D88E0474(&unk_1F5426EC8, v4);

    if (v5)
    {
      sub_1D87A14E4(v2, &qword_1ECA67750, &unk_1D8B1E0C0);
      goto LABEL_5;
    }

    v7 = *(CVBundle.textDetections.getter() + 2);

    if (!v7)
    {
      v8 = sub_1D891AC38();
      sub_1D87A14E4(v2, &qword_1ECA67750, &unk_1D8B1E0C0);
      v9 = *(v8 + 16);

      return v9 != 0;
    }

    sub_1D87A14E4(v2, &qword_1ECA67750, &unk_1D8B1E0C0);
  }

  return 1;
}

uint64_t sub_1D8954ED8(uint64_t a1, _OWORD *a2)
{
  v2 = a2[3];
  v14 = a2[2];
  v15 = v2;
  v16 = a2[4];
  v3 = a2[1];
  v13[0] = *a2;
  v13[1] = v3;
  if ((BYTE8(v14) & 1) == 0 || !sub_1D8954D44())
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B88, &unk_1D8B267B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  *(inited + 32) = 5;
  v6 = sub_1D893EA58(&unk_1F5426C18);
  v7 = 1.0;
  if (*(v6 + 16))
  {
    v8 = sub_1D881F7DC();
    if (v9)
    {
      v7 = *(*(v6 + 56) + 8 * v8);
    }
  }

  *(inited + 40) = v7;
  v10 = sub_1D893EA58(inited);
  swift_setDeallocating();
  v11 = sub_1D89E0D68(a1, v13, v10);

  return v11;
}

uint64_t sub_1D8954FF4(uint64_t a1, uint64_t a2)
{
  v3[19] = a1;
  v3[20] = a2;
  v4 = sub_1D8B152F0();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E98, &unk_1D8B2CF80);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8, &qword_1D8B1E6D0);
  v3[25] = swift_task_alloc();
  v5 = sub_1D8B131D0();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  v6 = swift_task_alloc();
  v7 = *v2;
  v3[29] = v6;
  v3[30] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D89551C8, 0, 0);
}

uint64_t sub_1D89551C8()
{
  v55 = v0;
  v1 = *(v0 + 240);
  CVBundle.latestEstimate.getter(&v53);
  v54[0] = v53;
  CVDetection.detection.getter((v0 + 16));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 248) = (*(v3 + 88))(v2, v3);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70, &qword_1D8B24060);
  v4 = sub_1D8B15270();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D8B1AB90;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x1E69E0208], v4);
  v8 = sub_1D8A562B8(v7);
  swift_setDeallocating();
  (*(v5 + 8))(v7 + v6, v4);
  swift_deallocClassInstance();
  *(v0 + 120) = v8;
  v9 = (v0 + 120);
  sub_1D8AA4CCC(v1);
  CVBundle.latestEstimate.getter(v54);
  if (v54[0] >> 60)
  {
    v12 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    v10 = *(v0 + 232);
    v11 = swift_projectBox();
    sub_1D87A0E38(v11, v10, &qword_1ECA67750, &unk_1D8B1E0C0);
    v12 = sub_1D8956C9C();
    sub_1D87A14E4(v10, &qword_1ECA67750, &unk_1D8B1E0C0);
  }

  v13 = (v0 + 56);

  sub_1D8AA4CCC(v12);
  if (qword_1EE0E54C0 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v14 = qword_1EE0E54C8;
    v15 = sub_1D8B0AAA4();
    v16 = *(v0 + 208);
    v17 = *(v0 + 216);
    v18 = *(v0 + 200);
    if (v15)
    {
      v19 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate;
      swift_beginAccess();
      sub_1D87A0E38(v14 + v19, v18, &qword_1ECA631A8, &qword_1D8B1E6D0);
      if ((*(v17 + 48))(v18, 1, v16) != 1)
      {
        (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 200), *(v0 + 208));
        goto LABEL_11;
      }
    }

    else
    {
      (*(v17 + 56))(*(v0 + 200), 1, 1, *(v0 + 208));
    }

    v20 = *(v0 + 216);
    v22 = *(v0 + 200);
    v21 = *(v0 + 208);
    _s22VisualIntelligenceCore18TextDetectorResultV21semanticDataDetectors3for13referenceDate21applyDefaultFilteringSay0abC9DDSupport08SemantichE0VGSayAH0qhE4TypeOG_10Foundation0L0VSbtFfA0__0();
    if ((*(v20 + 48))(v22, 1, v21) != 1)
    {
      sub_1D87A14E4(*(v0 + 200), &qword_1ECA631A8, &qword_1D8B1E6D0);
    }

LABEL_11:
    CVBundle.latestEstimate.getter(&v52);
    v53 = v52;
    CVDetection.detection.getter(v13);
    v23 = *(v0 + 80);
    v24 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1(v13, v23);
    (*(v24 + 64))(v54, v23, v24);
    __swift_destroy_boxed_opaque_existential_1(v13);
    Corners.bounds.getter();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v54[0] = CVBundle.textDetectorResults.getter();

    v13 = 0;
    sub_1D8956E24(v54, v26, v28, v30, v32);
    v33 = *(v0 + 224);

    v34 = v54[0];
    v35 = swift_task_alloc();
    *(v35 + 16) = v33;
    *(v35 + 24) = v9;
    sub_1D89167A8(sub_1D89592F0, v35, v34);
    v37 = v36;
    *(v0 + 256) = 0;

    v38 = *(v37 + 16);
    if (!v38)
    {
      break;
    }

    v39 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (v39 < *(v37 + 16))
    {
      v40 = *(v37 + 32 + 8 * v39);
      v13 = *(v40 + 16);
      v41 = v9[2];
      v42 = v13 + v41;
      if (__OFADD__(v41, v13))
      {
        goto LABEL_34;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v42 <= v9[3] >> 1)
      {
        if (*(v40 + 16))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v41 <= v42)
        {
          v44 = v13 + v41;
        }

        else
        {
          v44 = v41;
        }

        v9 = sub_1D87C84B0(isUniquelyReferenced_nonNull_native, v44, 1, v9);
        if (*(v40 + 16))
        {
LABEL_25:
          v45 = (v9[3] >> 1) - v9[2];
          sub_1D8B15240();
          if (v45 < v13)
          {
            goto LABEL_36;
          }

          swift_arrayInitWithCopy();

          if (v13)
          {
            v46 = v9[2];
            v47 = __OFADD__(v46, v13);
            v48 = v13 + v46;
            if (v47)
            {
              goto LABEL_37;
            }

            v9[2] = v48;
          }

          goto LABEL_14;
        }
      }

      if (v13)
      {
        goto LABEL_35;
      }

LABEL_14:
      if (v38 == ++v39)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_30:

  v49 = sub_1D87C4D68(v9);
  *(v0 + 264) = v49;

  sub_1D8B15320();
  v50 = swift_task_alloc();
  *(v0 + 272) = v50;
  *v50 = v0;
  v50[1] = sub_1D895587C;

  return MEMORY[0x1EEE4FAC8](v49);
}

uint64_t sub_1D895587C(uint64_t a1)
{
  *(*v1 + 280) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D895599C, 0, 0);
}

uint64_t sub_1D895599C()
{
  v62 = v0;
  v1 = sub_1D8956274(v0[35]);

  if (qword_1EE0E4468 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v3 = sub_1D8B151E0();
  v4 = __swift_project_value_buffer(v3, qword_1EE0E4470);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v2, v4, v3);
  (*(v5 + 56))(v2, 0, 1, v3);
  v0[16] = MEMORY[0x1E69E7CD0];
  v6 = swift_task_alloc();
  v6[2] = sub_1D8956AB0;
  v6[3] = 0;
  v6[4] = v0 + 16;
  v6[5] = v2;
  v7 = sub_1D8820F44(sub_1D8959310, v6, v1);

  sub_1D87A14E4(v2, &qword_1ECA65E98, &unk_1D8B2CF80);

  v9 = sub_1D87C4F04(v8);

  v10 = *(v1 + 16);

  if (v10)
  {

    v11 = sub_1D8B151C0();
    v12 = sub_1D8B16200();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v56 = v53;
      *v13 = 136315138;
      v14 = v7[2];
      if (v14)
      {
        v49 = v13;
        v50 = v12;
        v51 = v11;
        v52 = v9;
        v15 = v0[22];
        v57 = MEMORY[0x1E69E7CC0];
        sub_1D87F3F54(0, v14, 0);
        v55 = *(v15 + 16);
        v16 = v7;
        v17 = v57;
        v18 = v16 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v19 = (v15 + 8);
        v54 = *(v15 + 72);
        do
        {
          v20 = v0[23];
          v21 = v0[21];
          v55(v20, v18, v21);
          v58 = 91;
          v59 = 0xE100000000000000;
          v60 = 95;
          v61 = 0xE100000000000000;
          v0[17] = sub_1D8B152E0();
          v22 = sub_1D8B16B50();
          MEMORY[0x1DA71EFA0](v22);

          MEMORY[0x1DA71EFA0](24415, 0xE200000000000000);
          v23 = sub_1D8B152A0();
          if (v24)
          {
            v25 = v24;
          }

          else
          {
            v23 = 0x656C746974;
            v25 = 0xE500000000000000;
          }

          MEMORY[0x1DA71EFA0](v23, v25);

          MEMORY[0x1DA71EFA0](24415, 0xE200000000000000);
          v26 = sub_1D8B152D0();
          if (v27)
          {
            v28 = v27;
          }

          else
          {
            v26 = 0x6D614E6567616D69;
            v28 = 0xE900000000000065;
          }

          MEMORY[0x1DA71EFA0](v26, v28);

          MEMORY[0x1DA71EFA0](v60, v61);

          MEMORY[0x1DA71EFA0](93, 0xE100000000000000);
          v29 = v58;
          v30 = v59;
          (*v19)(v20, v21);
          v57 = v17;
          v32 = *(v17 + 16);
          v31 = *(v17 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_1D87F3F54((v31 > 1), v32 + 1, 1);
            v17 = v57;
          }

          *(v17 + 16) = v32 + 1;
          v33 = v17 + 16 * v32;
          *(v33 + 32) = v29;
          *(v33 + 40) = v30;
          v18 += v54;
          --v14;
        }

        while (v14);

        v11 = v51;
        v9 = v52;
        v12 = v50;
        v13 = v49;
      }

      else
      {

        v17 = MEMORY[0x1E69E7CC0];
      }

      v0[18] = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
      sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
      v38 = sub_1D8B15810();
      v40 = v39;

      v41 = sub_1D89AC714(v38, v40, &v56);

      *(v13 + 4) = v41;
      _os_log_impl(&dword_1D8783000, v11, v12, "Data detectors: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x1DA721330](v53, -1, -1);
      MEMORY[0x1DA721330](v13, -1, -1);
    }

    else
    {
    }

    v42 = v0[19];
    *v42 = v9;
    type metadata accessor for BundleClassification.ClassificationType(0);
    swift_storeEnumTagMultiPayload();
    v36 = type metadata accessor for BundleClassification(0);
    v43 = v42 + *(v36 + 20);
    *v43 = 2;
    *(v43 + 8) = 0u;
    *(v43 + 24) = 0u;
    sub_1D88E0FE4(2, 0, 0, 0);
    *v43 = 2;
    *(v43 + 8) = 0u;
    *(v43 + 24) = 0u;
  }

  else
  {
    v34 = v0[31];
    v35 = v0[19];

    *v35 = v9;
    type metadata accessor for BundleClassification.ClassificationType(0);
    swift_storeEnumTagMultiPayload();
    v36 = type metadata accessor for BundleClassification(0);
    v37 = v35 + *(v36 + 20);
    *v37 = 2;
    *(v37 + 8) = 0u;
    *(v37 + 24) = 0u;
    sub_1D88E0FE4(2, 0, 0, 0);
    *v37 = xmmword_1D8B2CCC0;
    *(v37 + 2) = 0x80000001D8B44AE0;
    *(v37 + 3) = 128;
    *(v37 + 4) = v34;
  }

  v44 = v0[28];
  v45 = v0[26];
  v46 = v0[27];
  *(v0[19] + *(v36 + 24)) = v0[31];
  (*(v46 + 8))(v44, v45);

  v47 = v0[1];

  return v47();
}

BOOL sub_1D8956098(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  type metadata accessor for TextDetectorResult(0);
  Corners.bounds.getter();
  width = v22.size.width;
  height = v22.size.height;
  v19 = a3 * a4;
  r2 = a1;
  v26.origin.x = a1;
  v21 = a2;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  v23 = CGRectIntersection(v22, v26);
  v10 = v23.size.width;
  v11 = v23.size.height;
  v12 = 0.0;
  v13 = 0.0;
  if (!CGRectIsNull(v23))
  {
    v13 = v10 * v11 / (v19 + width * height - v10 * v11);
  }

  Corners.bounds.getter();
  v14 = v24.size.width;
  v15 = v24.size.height;
  v27.origin.x = r2;
  v27.origin.y = v21;
  v27.size.width = a3;
  v27.size.height = a4;
  v25 = CGRectIntersection(v24, v27);
  v16 = v25.size.width;
  v17 = v25.size.height;
  if (!CGRectIsNull(v25))
  {
    v12 = v16 * v17 / (v19 + v14 * v15 - v16 * v17);
  }

  return v12 < v13;
}

void sub_1D8956208(char *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(MEMORY[0x1E69E7CC0], a1, 1);
  v6 = sub_1D8958E3C(v5, a2);

  *a3 = v6;
}

uint64_t sub_1D8956274(uint64_t a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v2 = sub_1D8B15270();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B152F0();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v78 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v60 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v14 = *(v9 + 16);
    v13 = v9 + 16;
    v74 = v14;
    v70 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v15 = a1 + v70;
    v16 = *(v13 + 56);
    v72 = (v3 + 88);
    v69 = (v3 + 8);
    v71 = *MEMORY[0x1E69E0200];
    v65 = "No actionables found";
    v63 = "\\d{1,4}[- ]?\\d{4}$";
    v61 = (v13 - 8);
    v17 = (v13 + 16);
    v18 = MEMORY[0x1E69E7CC0];
    v62 = xmmword_1D8B1AB90;
    v76 = v5;
    v77 = v2;
    v75 = v13;
    v73 = v16;
    while (1)
    {
      v19 = v6;
      v74(v11, v15, v6);
      sub_1D8B15290();
      v20 = (*v72)(v5, v2);
      if (v20 != v71)
      {
        break;
      }

      v21 = sub_1D8B152C0();
      if (!v22)
      {
        goto LABEL_8;
      }

      v23 = v21;
      v24 = v22;
      v25 = sub_1D8B15940();
      if (DDResultIsValidPhoneNumberString())
      {

LABEL_8:
        v26 = *v17;
        v6 = v19;
        (*v17)(v78, v11, v19);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D87F4948(0, *(v18 + 16) + 1, 1);
          v18 = v81;
        }

        v29 = *(v18 + 16);
        v28 = *(v18 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D87F4948((v28 > 1), v29 + 1, 1);
          v18 = v81;
        }

        *(v18 + 16) = v29 + 1;
        v30 = v73;
        v26((v18 + v70 + v29 * v73), v78, v6);
        v5 = v76;
        v2 = v77;
        goto LABEL_13;
      }

      v68 = v25;
      v31 = objc_allocWithZone(MEMORY[0x1E696AE70]);
      v32 = sub_1D8B15940();
      v79 = 0;
      v33 = [v31 initWithPattern:v32 options:0 error:&v79];

      v34 = v79;
      v67 = v23;
      v66 = HIBYTE(v24) & 0xF;
      if (v33)
      {
        if ((v24 & 0x1000000000000000) != 0)
        {
          v35 = sub_1D8B15B10();
        }

        else
        {
          v35 = sub_1D8B15B20();
        }

        v64 = v35;
        v36 = v34;
        v37 = sub_1D8B15940();
        v38 = [v33 firstMatchInString:v37 options:0 range:{0, v64}];

        if (v38)
        {

          goto LABEL_8;
        }
      }

      else
      {
        v39 = v79;
        v40 = sub_1D8B12EB0();

        v64 = v40;
        swift_willThrow();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EA0, &qword_1D8B2CF90);
        v41 = swift_allocObject();
        *(v41 + 16) = v62;
        v79 = 0;
        v80 = 0xE000000000000000;
        sub_1D8B16720();

        v79 = 0x2064696C61766E49;
        v80 = 0xEF203A7865676572;
        swift_getErrorValue();
        v42 = sub_1D8B16C90();
        MEMORY[0x1DA71EFA0](v42);

        v43 = v79;
        v44 = v80;
        *(v41 + 56) = MEMORY[0x1E69E6158];
        *(v41 + 32) = v43;
        *(v41 + 40) = v44;
        sub_1D8B16CF0();
      }

      v45 = objc_allocWithZone(MEMORY[0x1E696AE70]);
      v46 = sub_1D8B15940();
      v79 = 0;
      v47 = [v45 initWithPattern:v46 options:0 error:&v79];

      v48 = v79;
      if (v47)
      {
        if ((v24 & 0x1000000000000000) != 0)
        {
          v49 = sub_1D8B15B10();
        }

        else
        {
          v49 = sub_1D8B15B20();
        }

        v66 = v49;
        v50 = v48;
        v51 = sub_1D8B15940();
        v52 = [v47 firstMatchInString:v51 options:0 range:{0, v66}];

        if (v52)
        {

          goto LABEL_8;
        }
      }

      else
      {
        v53 = v79;
        v54 = sub_1D8B12EB0();

        v67 = v54;
        swift_willThrow();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EA0, &qword_1D8B2CF90);
        v55 = swift_allocObject();
        *(v55 + 16) = v62;
        v79 = 0;
        v80 = 0xE000000000000000;
        sub_1D8B16720();

        v79 = 0x2064696C61766E49;
        v80 = 0xEF203A7865676572;
        swift_getErrorValue();
        v56 = sub_1D8B16C90();
        MEMORY[0x1DA71EFA0](v56);

        v57 = v79;
        v58 = v80;
        *(v55 + 56) = MEMORY[0x1E69E6158];
        *(v55 + 32) = v57;
        *(v55 + 40) = v58;
        sub_1D8B16CF0();
      }

      v6 = v19;
      (*v61)(v11, v19);
      v5 = v76;
      v2 = v77;
      v30 = v73;
LABEL_13:
      v15 += v30;
      if (!--v12)
      {
        return v18;
      }
    }

    (*v69)(v5, v2);
    goto LABEL_8;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D8956AB0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1D8956ADC(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D8956ADC(uint64_t a1)
{
  sub_1D8B152E0();
  v1 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v1);

  MEMORY[0x1DA71EFA0](24415, 0xE200000000000000);
  v2 = sub_1D8B152A0();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0x656C746974;
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1DA71EFA0](v2, v4);

  MEMORY[0x1DA71EFA0](24415, 0xE200000000000000);
  v5 = sub_1D8B152D0();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v5 = 0x6D614E6567616D69;
    v7 = 0xE900000000000065;
  }

  MEMORY[0x1DA71EFA0](v5, v7);

  return 95;
}

uint64_t sub_1D8956BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  v8 = swift_task_alloc();
  *(v5 + 64) = v8;
  *v8 = v5;
  v8[1] = sub_1D88DFAD0;

  return sub_1D8954FF4(a1, a2);
}

char sub_1D8956C9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  v2 = *(v0 + *(v1 + 44));
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  LOBYTE(v1) = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v2 + 32));
  if (v9 == 181)
  {
LABEL_8:
    __break(1u);
    return v1;
  }

  if (v9 == 102)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64D70, &qword_1D8B24060);
    v3 = sub_1D8B15270();
    v4 = *(v3 - 8);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D8B1AB90;
    (*(v4 + 104))(v6 + v5, *MEMORY[0x1E69E0218], v3);
    v7 = sub_1D8A562B8(v6);
    swift_setDeallocating();
    (*(v4 + 8))(v6 + v5, v3);
    swift_deallocClassInstance();
    LOBYTE(v1) = v7;
  }

  else
  {
    LOBYTE(v1) = MEMORY[0x1E69E7CD0];
  }

  return v1;
}

void sub_1D8956E24(void *a1, CGFloat a2, double a3, CGFloat a4, CGFloat a5)
{
  v10 = *(type metadata accessor for TextDetectorResult(0) - 8);
  v11 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1D885D36C(v11);
  }

  v12 = v11[2];
  v13[0] = v11 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v13[1] = v12;
  sub_1D8956EFC(v13, a2, a3, a4, a5);
  *a1 = v11;
}

void sub_1D8956EFC(uint64_t *a1, CGFloat a2, double a3, CGFloat a4, CGFloat a5)
{
  v10 = a1[1];
  v11 = sub_1D8B16B30();
  if (v11 < v10)
  {
    if (v10 >= -1)
    {
      v12 = v11;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for TextDetectorResult(0);
        v14 = sub_1D8B15D60();
        *(v14 + 16) = v13;
      }

      v15 = *(type metadata accessor for TextDetectorResult(0) - 8);
      v16[0] = (v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80)));
      v16[1] = v13;
      sub_1D89574AC(v16, a2, a3, a4, a5, v17, a1, v12);
      *(v14 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    sub_1D8957068(0, v10, 1, a1, a2, a3, a4, a5);
  }
}

uint64_t sub_1D8957068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8)
{
  v80 = a8;
  v15 = type metadata accessor for TextDetectorResult(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v71 - v20;
  result = MEMORY[0x1EEE9AC00](v19);
  v25 = &v71 - v24;
  v73 = a2;
  if (a3 != a2)
  {
    v26 = *a4;
    v79 = a7 * v80;
    v27 = *(v23 + 72);
    v28 = v26 + v27 * (a3 - 1);
    v29 = -v27;
    v30 = a1 - a3;
    v78 = v26;
    v72 = v27;
    v31 = v26 + v27 * a3;
LABEL_5:
    v76 = v28;
    v77 = a3;
    v74 = v31;
    v75 = v30;
    while (1)
    {
      sub_1D8959330(v31, v25, type metadata accessor for TextDetectorResult);
      sub_1D8959330(v28, v21, type metadata accessor for TextDetectorResult);
      v32 = &v25[*(v15 + 24)];
      v33 = *v32;
      v34 = v32[1];
      v35 = v32[2];
      v36 = v32[3];
      v37 = v32[4];
      v38 = v32[5];
      v39 = v32[6];
      v40 = v32[7];
      if (v35 >= *v32)
      {
        v41 = *v32;
      }

      else
      {
        v41 = v32[2];
      }

      if (v37 < v41)
      {
        v41 = v32[4];
      }

      if (v39 < v41)
      {
        v41 = v32[6];
      }

      if (v36 >= v34)
      {
        v42 = v32[1];
      }

      else
      {
        v42 = v32[3];
      }

      if (v38 < v42)
      {
        v42 = v32[5];
      }

      if (v40 < v42)
      {
        v42 = v32[7];
      }

      if (v33 <= v35)
      {
        v33 = v32[2];
      }

      if (v33 <= v37)
      {
        v33 = v32[4];
      }

      if (v33 <= v39)
      {
        v33 = v32[6];
      }

      if (v34 <= v36)
      {
        v34 = v32[3];
      }

      if (v34 <= v38)
      {
        v34 = v32[5];
      }

      if (v34 <= v40)
      {
        v34 = v32[7];
      }

      v43 = v33 - v41;
      v44 = v34 - v42;
      v45 = v33 - v41;
      v46 = v34 - v42;
      v83.origin.x = a5;
      v83.origin.y = a6;
      v83.size.width = a7;
      v83.size.height = v80;
      v81 = CGRectIntersection(*&v41, v83);
      width = v81.size.width;
      height = v81.size.height;
      if (CGRectIsNull(v81))
      {
        v49 = &v21[*(v15 + 24)];
        v51 = *v49;
        v50 = v49[1];
        v52 = v49[2];
        v53 = v49[3];
        v55 = v49[4];
        v54 = v49[5];
        v57 = v49[6];
        v56 = v49[7];
        v58 = 0.0;
      }

      else
      {
        v58 = width * height / (v79 + v43 * v44 - width * height);
        v59 = &v21[*(v15 + 24)];
        v51 = *v59;
        v50 = v59[1];
        v52 = v59[2];
        v53 = v59[3];
        v55 = v59[4];
        v54 = v59[5];
        v57 = v59[6];
        v56 = v59[7];
      }

      v60 = v52;
      if (v52 >= v51)
      {
        v60 = v52;
        v52 = v51;
      }

      if (v55 < v52)
      {
        v52 = v55;
      }

      if (v57 < v52)
      {
        v52 = v57;
      }

      if (v53 >= v50)
      {
        v61 = v50;
      }

      else
      {
        v61 = v53;
      }

      if (v54 < v61)
      {
        v61 = v54;
      }

      if (v56 < v61)
      {
        v61 = v56;
      }

      if (v51 <= v60)
      {
        v51 = v60;
      }

      if (v51 <= v55)
      {
        v51 = v55;
      }

      if (v51 <= v57)
      {
        v51 = v57;
      }

      if (v50 <= v53)
      {
        v50 = v53;
      }

      if (v50 <= v54)
      {
        v50 = v54;
      }

      if (v50 <= v56)
      {
        v50 = v56;
      }

      v62 = v51 - v52;
      v63 = v50 - v61;
      v64 = v51 - v52;
      v65 = v63;
      v84.origin.x = a5;
      v84.origin.y = a6;
      v84.size.width = a7;
      v84.size.height = v80;
      v82 = CGRectIntersection(*&v52, v84);
      v66 = v82.size.width;
      v67 = v82.size.height;
      if (CGRectIsNull(v82))
      {
        v69 = 0.0;
      }

      else
      {
        v68 = v66 * v67 / (v79 + v62 * v63 - v66 * v67);
        v69 = v68;
      }

      sub_1D8959400(v21, type metadata accessor for TextDetectorResult);
      result = sub_1D8959400(v25, type metadata accessor for TextDetectorResult);
      if (v69 >= v58)
      {
LABEL_4:
        a3 = v77 + 1;
        v28 = v76 + v72;
        v30 = v75 - 1;
        v31 = v74 + v72;
        if (v77 + 1 == v73)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v78)
      {
        break;
      }

      sub_1D8959398(v31, v18, type metadata accessor for TextDetectorResult);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D8959398(v18, v28, type metadata accessor for TextDetectorResult);
      v28 += v29;
      v31 += v29;
      if (__CFADD__(v30++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D89574AC(char **a1, CGFloat a2, double a3, CGFloat a4, CGFloat a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v10 = v8;
  v207 = a3;
  v190 = a1;
  v16 = type metadata accessor for TextDetectorResult(0);
  v199 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v192 = &v185 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v205 = &v185 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v185 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v185 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v202 = &v185 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v186 = &v185 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v200 = a7;
  v34 = *(a7 + 8);
  if (v34 < 1)
  {
    v36 = MEMORY[0x1E69E7CC0];
LABEL_209:
    v9 = *v190;
    if (!*v190)
    {
      goto LABEL_251;
    }

    a7 = v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_245;
    }

    v180 = a7;
LABEL_212:
    v208 = v180;
    a7 = *(v180 + 2);
    if (a7 >= 2)
    {
      while (*v200)
      {
        v181 = *&v180[16 * a7];
        v182 = v180;
        v183 = *&v180[16 * a7 + 24];
        sub_1D8958358(&(*v200)[*(v199 + 72) * v181], &(*v200)[*(v199 + 72) * *&v180[16 * a7 + 16]], &(*v200)[*(v199 + 72) * v183], v9, a2, v207, a4, a5);
        if (v10)
        {
          goto LABEL_223;
        }

        if (v183 < v181)
        {
          goto LABEL_238;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v182 = sub_1D885CC68(v182);
        }

        if (a7 - 2 >= *(v182 + 2))
        {
          goto LABEL_239;
        }

        v184 = &v182[16 * a7];
        *v184 = v181;
        *(v184 + 1) = v183;
        v208 = v182;
        sub_1D885CBDC(a7 - 1);
        v180 = v208;
        a7 = *(v208 + 2);
        if (a7 <= 1)
        {
          goto LABEL_223;
        }
      }

      goto LABEL_249;
    }

    goto LABEL_223;
  }

  v187 = &v185 - v32;
  v201 = v33;
  v35 = 0;
  v206 = a4 * a5;
  v36 = MEMORY[0x1E69E7CC0];
  v189 = a8;
  while (1)
  {
    v193 = v36;
    if (v35 + 1 < v34)
    {
      v203 = v34;
      v37 = *v200;
      v38 = *(v199 + 72);
      v9 = &(*v200)[v38 * (v35 + 1)];
      a7 = v35;
      v204 = type metadata accessor for TextDetectorResult;
      sub_1D8959330(v9, v187, type metadata accessor for TextDetectorResult);
      v198 = v37;
      v39 = &v37[v38 * v35];
      v40 = v186;
      sub_1D8959330(v39, v186, v204);
      LODWORD(v197) = sub_1D8956098(a2, v207, a4, a5);
      if (!v10)
      {
        sub_1D8959400(v40, type metadata accessor for TextDetectorResult);
        sub_1D8959400(v187, type metadata accessor for TextDetectorResult);
        v188 = v35;
        v41 = v35 + 2;
        v42 = v198 + v38 * (v35 + 2);
        v43 = v38;
        v198 = v38;
        v196 = 0;
        while (1)
        {
          v56 = v203;
          if (v203 == v41)
          {
            break;
          }

          v57 = v202;
          sub_1D8959330(v42, v202, type metadata accessor for TextDetectorResult);
          a7 = v201;
          sub_1D8959330(v9, v201, type metadata accessor for TextDetectorResult);
          v58 = (v57 + *(v16 + 24));
          v59 = *v58;
          v60 = v58[1];
          v61 = v58[2];
          v62 = v58[3];
          v63 = v58[4];
          v64 = v58[5];
          v65 = v58[6];
          v66 = v58[7];
          if (v61 >= *v58)
          {
            v67 = *v58;
          }

          else
          {
            v67 = v58[2];
          }

          if (v63 < v67)
          {
            v67 = v58[4];
          }

          if (v65 < v67)
          {
            v67 = v58[6];
          }

          if (v62 >= v60)
          {
            v68 = v58[1];
          }

          else
          {
            v68 = v58[3];
          }

          if (v64 < v68)
          {
            v68 = v58[5];
          }

          if (v66 < v68)
          {
            v68 = v58[7];
          }

          if (v59 <= v61)
          {
            v59 = v58[2];
          }

          if (v59 <= v63)
          {
            v59 = v58[4];
          }

          if (v59 <= v65)
          {
            v59 = v58[6];
          }

          if (v60 <= v62)
          {
            v60 = v58[3];
          }

          if (v60 <= v64)
          {
            v60 = v58[5];
          }

          if (v60 <= v66)
          {
            v60 = v58[7];
          }

          v69 = v59 - v67;
          v70 = v60 - v68;
          v71 = v59 - v67;
          v72 = v60 - v68;
          v214.origin.x = a2;
          v214.origin.y = v207;
          v214.size.width = a4;
          v214.size.height = a5;
          v210 = CGRectIntersection(*&v67, v214);
          width = v210.size.width;
          height = v210.size.height;
          if (CGRectIsNull(v210))
          {
            v75 = (a7 + *(v16 + 24));
            v46 = *v75;
            v47 = v75[1];
            v44 = v75[2];
            v76 = v75[3];
            v78 = v75[4];
            v77 = v75[5];
            v80 = v75[6];
            v79 = v75[7];
            LODWORD(v204) = 0;
          }

          else
          {
            v81 = width * height / (v206 + v69 * v70 - width * height);
            *&v204 = v81;
            v82 = (a7 + *(v16 + 24));
            v46 = *v82;
            v47 = v82[1];
            v44 = v82[2];
            v76 = v82[3];
            v78 = v82[4];
            v77 = v82[5];
            v80 = v82[6];
            v79 = v82[7];
          }

          v83 = v44;
          v10 = v196;
          if (v44 >= v46)
          {
            v83 = v44;
            v44 = v46;
          }

          if (v78 < v44)
          {
            v44 = v78;
          }

          if (v80 < v44)
          {
            v44 = v80;
          }

          if (v76 >= v47)
          {
            v45 = v47;
          }

          else
          {
            v45 = v76;
          }

          if (v77 < v45)
          {
            v45 = v77;
          }

          if (v79 < v45)
          {
            v45 = v79;
          }

          if (v46 <= v83)
          {
            v46 = v83;
          }

          if (v46 <= v78)
          {
            v46 = v78;
          }

          if (v46 <= v80)
          {
            v46 = v80;
          }

          if (v47 <= v76)
          {
            v47 = v76;
          }

          if (v47 <= v77)
          {
            v47 = v77;
          }

          if (v47 <= v79)
          {
            v47 = v79;
          }

          v48 = v46 - v44;
          v49 = v47 - v45;
          v50 = v46 - v44;
          v51 = v49;
          v213.origin.x = a2;
          v213.origin.y = v207;
          v213.size.width = a4;
          v213.size.height = a5;
          v209 = CGRectIntersection(*&v44, v213);
          v52 = v209.size.width;
          v53 = v209.size.height;
          if (CGRectIsNull(v209))
          {
            v55 = 0.0;
          }

          else
          {
            v54 = v52 * v53 / (v206 + v48 * v49 - v52 * v53);
            v55 = v54;
          }

          sub_1D8959400(v201, type metadata accessor for TextDetectorResult);
          sub_1D8959400(v202, type metadata accessor for TextDetectorResult);
          ++v41;
          v43 = v198;
          v42 += v198;
          v9 += v198;
          if (((v197 ^ (v55 >= *&v204)) & 1) == 0)
          {
            v56 = (v41 - 1);
            break;
          }
        }

        a8 = v189;
        v35 = v188;
        if (v197)
        {
          if (v56 < v188)
          {
            goto LABEL_244;
          }

          if (v188 < v56)
          {
            v84 = v43 * (v56 - 1);
            v85 = v56 * v43;
            v203 = v56;
            v86 = v188;
            a7 = v188 * v43;
            do
            {
              v56 = (v56 - 1);
              if (v86 != v56)
              {
                v204 = v56;
                v9 = *v200;
                if (!*v200)
                {
                  goto LABEL_248;
                }

                sub_1D8959398(&v9[a7], v192, type metadata accessor for TextDetectorResult);
                if (a7 < v84 || &v9[a7] >= &v9[v85])
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (a7 != v84)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_1D8959398(v192, &v9[v84], type metadata accessor for TextDetectorResult);
                v43 = v198;
                v56 = v204;
              }

              v86 = (v86 + 1);
              v84 -= v43;
              v85 -= v43;
              a7 += v43;
            }

            while (v86 < v56);
            v10 = v196;
            a8 = v189;
            v35 = v188;
            v56 = v203;
          }
        }

        goto LABEL_82;
      }

      sub_1D8959400(v40, type metadata accessor for TextDetectorResult);
      sub_1D8959400(v187, type metadata accessor for TextDetectorResult);
LABEL_223:

      return;
    }

    v56 = (v35 + 1);
LABEL_82:
    v87 = v200[1];
    if (v56 < v87)
    {
      if (__OFSUB__(v56, v35))
      {
        goto LABEL_241;
      }

      if (v56 - v35 < a8)
      {
        if (__OFADD__(v35, a8))
        {
          goto LABEL_242;
        }

        if (v35 + a8 < v87)
        {
          v87 = (v35 + a8);
        }

        if (v87 < v35)
        {
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          v180 = sub_1D885CC68(a7);
          goto LABEL_212;
        }

        if (v56 != v87)
        {
          break;
        }
      }
    }

LABEL_156:
    if (v56 < v35)
    {
      goto LABEL_240;
    }

    v194 = v56;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v36 = v193;
    }

    else
    {
      v36 = sub_1D87C7C5C(0, *(v193 + 2) + 1, 1, v193);
    }

    a7 = *(v36 + 2);
    v135 = *(v36 + 3);
    v136 = a7 + 1;
    if (a7 >= v135 >> 1)
    {
      v36 = sub_1D87C7C5C((v135 > 1), a7 + 1, 1, v36);
    }

    *(v36 + 2) = v136;
    v137 = &v36[16 * a7];
    v138 = v194;
    *(v137 + 4) = v35;
    *(v137 + 5) = v138;
    v204 = *v190;
    if (!v204)
    {
      goto LABEL_250;
    }

    if (a7)
    {
      while (1)
      {
        v139 = v136 - 1;
        if (v136 >= 4)
        {
          break;
        }

        if (v136 == 3)
        {
          v140 = *(v36 + 4);
          v141 = *(v36 + 5);
          v150 = __OFSUB__(v141, v140);
          v142 = v141 - v140;
          v143 = v150;
LABEL_176:
          if (v143)
          {
            goto LABEL_229;
          }

          v156 = &v36[16 * v136];
          v158 = *v156;
          v157 = *(v156 + 1);
          v159 = __OFSUB__(v157, v158);
          v160 = v157 - v158;
          v161 = v159;
          if (v159)
          {
            goto LABEL_232;
          }

          v162 = &v36[16 * v139 + 32];
          v164 = *v162;
          v163 = *(v162 + 1);
          v150 = __OFSUB__(v163, v164);
          v165 = v163 - v164;
          if (v150)
          {
            goto LABEL_235;
          }

          if (__OFADD__(v160, v165))
          {
            goto LABEL_236;
          }

          if (v160 + v165 >= v142)
          {
            if (v142 < v165)
            {
              v139 = v136 - 2;
            }

            goto LABEL_197;
          }

          goto LABEL_190;
        }

        v166 = &v36[16 * v136];
        v168 = *v166;
        v167 = *(v166 + 1);
        v150 = __OFSUB__(v167, v168);
        v160 = v167 - v168;
        v161 = v150;
LABEL_190:
        if (v161)
        {
          goto LABEL_231;
        }

        v169 = &v36[16 * v139];
        v171 = *(v169 + 4);
        v170 = *(v169 + 5);
        v150 = __OFSUB__(v170, v171);
        v172 = v170 - v171;
        if (v150)
        {
          goto LABEL_234;
        }

        if (v172 < v160)
        {
          goto LABEL_3;
        }

LABEL_197:
        a7 = v139 - 1;
        if (v139 - 1 >= v136)
        {
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
          goto LABEL_243;
        }

        if (!*v200)
        {
          goto LABEL_247;
        }

        v9 = v36;
        v177 = *&v36[16 * a7 + 32];
        v178 = *&v36[16 * v139 + 40];
        sub_1D8958358(&(*v200)[*(v199 + 72) * v177], &(*v200)[*(v199 + 72) * *&v36[16 * v139 + 32]], &(*v200)[*(v199 + 72) * v178], v204, a2, v207, a4, a5);
        if (v10)
        {
          goto LABEL_223;
        }

        if (v178 < v177)
        {
          goto LABEL_225;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D885CC68(v9);
        }

        if (a7 >= *(v9 + 2))
        {
          goto LABEL_226;
        }

        v179 = &v9[16 * a7];
        *(v179 + 4) = v177;
        *(v179 + 5) = v178;
        v208 = v9;
        sub_1D885CBDC(v139);
        v36 = v208;
        v136 = *(v208 + 2);
        if (v136 <= 1)
        {
          goto LABEL_3;
        }
      }

      v144 = &v36[16 * v136 + 32];
      v145 = *(v144 - 64);
      v146 = *(v144 - 56);
      v150 = __OFSUB__(v146, v145);
      v147 = v146 - v145;
      if (v150)
      {
        goto LABEL_227;
      }

      v149 = *(v144 - 48);
      v148 = *(v144 - 40);
      v150 = __OFSUB__(v148, v149);
      v142 = v148 - v149;
      v143 = v150;
      if (v150)
      {
        goto LABEL_228;
      }

      v151 = &v36[16 * v136];
      v153 = *v151;
      v152 = *(v151 + 1);
      v150 = __OFSUB__(v152, v153);
      v154 = v152 - v153;
      if (v150)
      {
        goto LABEL_230;
      }

      v150 = __OFADD__(v142, v154);
      v155 = v142 + v154;
      if (v150)
      {
        goto LABEL_233;
      }

      if (v155 >= v147)
      {
        v173 = &v36[16 * v139 + 32];
        v175 = *v173;
        v174 = *(v173 + 1);
        v150 = __OFSUB__(v174, v175);
        v176 = v174 - v175;
        if (v150)
        {
          goto LABEL_237;
        }

        if (v142 < v176)
        {
          v139 = v136 - 2;
        }

        goto LABEL_197;
      }

      goto LABEL_176;
    }

LABEL_3:
    v34 = v200[1];
    v35 = v194;
    a8 = v189;
    if (v194 >= v34)
    {
      goto LABEL_209;
    }
  }

  v194 = v87;
  v196 = v10;
  v88 = *v200;
  v89 = *(v199 + 72);
  v90 = &(*v200)[v89 * (v56 - 1)];
  v91 = -v89;
  v188 = v35;
  v92 = v35 - v56;
  v204 = v88;
  v191 = v89;
  v9 = v88 + v56 * v89;
LABEL_92:
  v203 = v56;
  v195 = v9;
  v197 = v92;
  v198 = v90;
  v93 = v90;
  while (1)
  {
    sub_1D8959330(v9, v26, type metadata accessor for TextDetectorResult);
    sub_1D8959330(v93, v23, type metadata accessor for TextDetectorResult);
    v94 = &v26[*(v16 + 24)];
    v95 = *v94;
    v96 = v94[1];
    v97 = v94[2];
    v98 = v94[3];
    v99 = v94[4];
    v100 = v94[5];
    v101 = v94[6];
    v102 = v94[7];
    if (v97 >= *v94)
    {
      v103 = *v94;
    }

    else
    {
      v103 = v94[2];
    }

    if (v99 < v103)
    {
      v103 = v94[4];
    }

    if (v101 < v103)
    {
      v103 = v94[6];
    }

    if (v98 >= v96)
    {
      v104 = v94[1];
    }

    else
    {
      v104 = v94[3];
    }

    if (v100 < v104)
    {
      v104 = v94[5];
    }

    if (v102 < v104)
    {
      v104 = v94[7];
    }

    if (v95 <= v97)
    {
      v95 = v94[2];
    }

    if (v95 <= v99)
    {
      v95 = v94[4];
    }

    if (v95 <= v101)
    {
      v95 = v94[6];
    }

    if (v96 <= v98)
    {
      v96 = v94[3];
    }

    if (v96 <= v100)
    {
      v96 = v94[5];
    }

    if (v96 <= v102)
    {
      v96 = v94[7];
    }

    v105 = v95 - v103;
    v106 = v96 - v104;
    v107 = v95 - v103;
    v108 = v96 - v104;
    v215.origin.x = a2;
    v215.origin.y = v207;
    v215.size.width = a4;
    v215.size.height = a5;
    v211 = CGRectIntersection(*&v103, v215);
    v109 = v211.size.width;
    v110 = v211.size.height;
    if (CGRectIsNull(v211))
    {
      v111 = &v23[*(v16 + 24)];
      v113 = *v111;
      v112 = v111[1];
      v114 = v111[2];
      v115 = v111[3];
      v117 = v111[4];
      v116 = v111[5];
      v119 = v111[6];
      v118 = v111[7];
      v120 = 0.0;
    }

    else
    {
      v120 = v109 * v110 / (v206 + v105 * v106 - v109 * v110);
      v121 = &v23[*(v16 + 24)];
      v113 = *v121;
      v112 = v121[1];
      v114 = v121[2];
      v115 = v121[3];
      v117 = v121[4];
      v116 = v121[5];
      v119 = v121[6];
      v118 = v121[7];
    }

    v122 = v114;
    if (v114 >= v113)
    {
      v122 = v114;
      v114 = v113;
    }

    if (v117 < v114)
    {
      v114 = v117;
    }

    if (v119 < v114)
    {
      v114 = v119;
    }

    if (v115 >= v112)
    {
      v123 = v112;
    }

    else
    {
      v123 = v115;
    }

    if (v116 < v123)
    {
      v123 = v116;
    }

    if (v118 < v123)
    {
      v123 = v118;
    }

    if (v113 <= v122)
    {
      v113 = v122;
    }

    if (v113 <= v117)
    {
      v113 = v117;
    }

    if (v113 <= v119)
    {
      v113 = v119;
    }

    if (v112 <= v115)
    {
      v112 = v115;
    }

    if (v112 <= v116)
    {
      v112 = v116;
    }

    if (v112 <= v118)
    {
      v112 = v118;
    }

    v124 = v113 - v114;
    v125 = v112 - v123;
    v126 = v113 - v114;
    v127 = v125;
    v216.origin.x = a2;
    v216.origin.y = v207;
    v216.size.width = a4;
    v216.size.height = a5;
    v212 = CGRectIntersection(*&v114, v216);
    v128 = v212.size.width;
    v129 = v212.size.height;
    if (CGRectIsNull(v212))
    {
      v131 = 0.0;
    }

    else
    {
      v130 = v128 * v129 / (v206 + v124 * v125 - v128 * v129);
      v131 = v130;
    }

    sub_1D8959400(v23, type metadata accessor for TextDetectorResult);
    sub_1D8959400(v26, type metadata accessor for TextDetectorResult);
    if (v131 >= v120)
    {
LABEL_91:
      v56 = (v203 + 1);
      v90 = v198 + v191;
      v92 = v197 - 1;
      v9 = &v195[v191];
      if ((v203 + 1) == v194)
      {
        v10 = v196;
        v35 = v188;
        v56 = v194;
        goto LABEL_156;
      }

      goto LABEL_92;
    }

    if (!v204)
    {
      break;
    }

    a7 = v26;
    v132 = v23;
    v133 = v205;
    sub_1D8959398(v9, v205, type metadata accessor for TextDetectorResult);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D8959398(v133, v93, type metadata accessor for TextDetectorResult);
    v93 += v91;
    v9 += v91;
    v134 = __CFADD__(v92++, 1);
    v23 = v132;
    v26 = a7;
    if (v134)
    {
      goto LABEL_91;
    }
  }

  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
}

uint64_t sub_1D8958358(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v130 = a5;
  v131 = a6;
  v14 = type metadata accessor for TextDetectorResult(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v129 = &v120 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v120 - v21;
  result = MEMORY[0x1EEE9AC00](v20);
  v25 = &v120 - v24;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_175;
  }

  v28 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_176;
  }

  v29 = (a2 - a1) / v27;
  v134 = a1;
  v133 = a4;
  if (v29 >= v28 / v27)
  {
    v31 = v28 / v27 * v27;
    if (a4 < a2 || a2 + v31 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v72 = a4 + v31;
    if (v31 >= 1)
    {
      v73 = -v27;
      v126 = a7 * a8;
      v74 = a4 + v31;
      v127 = -v27;
      v128 = v17;
      v123 = a4;
      do
      {
        v121 = v72;
        v75 = a2;
        a2 += v73;
        v124 = a2;
        v125 = v75;
        while (1)
        {
          if (v75 <= a1)
          {
            v134 = v75;
            v72 = v121;
            goto LABEL_172;
          }

          v77 = a3;
          v122 = v72;
          v78 = v74 + v73;
          v79 = v14;
          v80 = v129;
          sub_1D8959330(v78, v129, type metadata accessor for TextDetectorResult);
          sub_1D8959330(a2, v17, type metadata accessor for TextDetectorResult);
          v81 = (v80 + *(v79 + 24));
          v82 = *v81;
          v83 = v81[1];
          v84 = v81[2];
          v85 = v81[3];
          v86 = v81[4];
          v87 = v81[5];
          v88 = v81[6];
          v89 = v81[7];
          if (v84 >= *v81)
          {
            v90 = *v81;
          }

          else
          {
            v90 = v81[2];
          }

          if (v86 < v90)
          {
            v90 = v81[4];
          }

          if (v88 < v90)
          {
            v90 = v81[6];
          }

          if (v85 >= v83)
          {
            v91 = v81[1];
          }

          else
          {
            v91 = v81[3];
          }

          if (v87 < v91)
          {
            v91 = v81[5];
          }

          if (v89 < v91)
          {
            v91 = v81[7];
          }

          if (v82 <= v84)
          {
            v82 = v81[2];
          }

          if (v82 <= v86)
          {
            v82 = v81[4];
          }

          if (v82 <= v88)
          {
            v82 = v81[6];
          }

          if (v83 <= v85)
          {
            v83 = v81[3];
          }

          if (v83 <= v87)
          {
            v83 = v81[5];
          }

          if (v83 <= v89)
          {
            v83 = v81[7];
          }

          v92 = v82 - v90;
          v93 = v83 - v91;
          v94 = v82 - v90;
          v95 = v83 - v91;
          v141.origin.x = v130;
          v141.origin.y = v131;
          v141.size.width = a7;
          v141.size.height = a8;
          v137 = CGRectIntersection(*&v90, v141);
          width = v137.size.width;
          height = v137.size.height;
          if (CGRectIsNull(v137))
          {
            v98 = &v17[*(v79 + 24)];
            v100 = *v98;
            v99 = v98[1];
            v101 = v98[2];
            v102 = v98[3];
            v104 = v98[4];
            v103 = v98[5];
            v106 = v98[6];
            v105 = v98[7];
            v107 = 0.0;
          }

          else
          {
            v107 = width * height / (v126 + v92 * v93 - width * height);
            v108 = &v17[*(v79 + 24)];
            v100 = *v108;
            v99 = v108[1];
            v101 = v108[2];
            v102 = v108[3];
            v104 = v108[4];
            v103 = v108[5];
            v106 = v108[6];
            v105 = v108[7];
          }

          v109 = v101;
          v14 = v79;
          if (v101 >= v100)
          {
            v109 = v101;
            v101 = v100;
          }

          if (v104 < v101)
          {
            v101 = v104;
          }

          if (v106 < v101)
          {
            v101 = v106;
          }

          if (v102 >= v99)
          {
            v110 = v99;
          }

          else
          {
            v110 = v102;
          }

          if (v103 < v110)
          {
            v110 = v103;
          }

          if (v105 < v110)
          {
            v110 = v105;
          }

          if (v100 <= v109)
          {
            v100 = v109;
          }

          if (v100 <= v104)
          {
            v100 = v104;
          }

          if (v100 <= v106)
          {
            v100 = v106;
          }

          if (v99 <= v102)
          {
            v99 = v102;
          }

          if (v99 <= v103)
          {
            v99 = v103;
          }

          if (v99 <= v105)
          {
            v99 = v105;
          }

          v111 = v100 - v101;
          v112 = v99 - v110;
          v113 = v100 - v101;
          v114 = v112;
          v142.origin.x = v130;
          v142.origin.y = v131;
          v142.size.width = a7;
          v142.size.height = a8;
          v138 = CGRectIntersection(*&v101, v142);
          v115 = v138.size.width;
          v116 = v138.size.height;
          if (CGRectIsNull(v138))
          {
            v118 = 0.0;
          }

          else
          {
            v117 = v115 * v116 / (v126 + v111 * v112 - v115 * v116);
            v118 = v117;
          }

          a3 += v127;
          sub_1D8959400(v128, type metadata accessor for TextDetectorResult);
          sub_1D8959400(v129, type metadata accessor for TextDetectorResult);
          v119 = v123;
          a2 = v124;
          if (v118 < v107)
          {
            break;
          }

          v72 = v78;
          if (v77 < v74 || a3 >= v74)
          {
            swift_arrayInitWithTakeFrontToBack();
            v72 = v78;
            v17 = v128;
          }

          else
          {
            v17 = v128;
            if (v77 != v74)
            {
              swift_arrayInitWithTakeBackToFront();
              v72 = v78;
            }
          }

          v74 = v72;
          v76 = v78 > v119;
          v73 = v127;
          v75 = v125;
          if (!v76)
          {
            v134 = v125;
            goto LABEL_172;
          }
        }

        if (v77 < v125 || a3 >= v125)
        {
          swift_arrayInitWithTakeFrontToBack();
          v73 = v127;
          v17 = v128;
        }

        else
        {
          v73 = v127;
          v17 = v128;
          if (v77 != v125)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v72 = v122;
      }

      while (v74 > v119);
    }

    v134 = a2;
LABEL_172:
    v132 = v72;
  }

  else
  {
    v30 = v29 * v27;
    if (a4 < a1 || a1 + v30 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v129 = a4 + v30;
    v132 = a4 + v30;
    if (v30 >= 1 && a2 < a3)
    {
      v33 = a7 * a8;
      do
      {
        sub_1D8959330(a2, v25, type metadata accessor for TextDetectorResult);
        sub_1D8959330(a4, v22, type metadata accessor for TextDetectorResult);
        v34 = &v25[*(v14 + 24)];
        v35 = *v34;
        v36 = v34[1];
        v37 = v34[2];
        v38 = v34[3];
        v39 = v34[4];
        v40 = v34[5];
        v41 = v34[6];
        v42 = v34[7];
        if (v37 >= *v34)
        {
          v43 = *v34;
        }

        else
        {
          v43 = v34[2];
        }

        if (v39 < v43)
        {
          v43 = v34[4];
        }

        if (v41 < v43)
        {
          v43 = v34[6];
        }

        if (v38 >= v36)
        {
          v44 = v34[1];
        }

        else
        {
          v44 = v34[3];
        }

        if (v40 < v44)
        {
          v44 = v34[5];
        }

        if (v42 < v44)
        {
          v44 = v34[7];
        }

        if (v35 <= v37)
        {
          v35 = v34[2];
        }

        if (v35 <= v39)
        {
          v35 = v34[4];
        }

        if (v35 <= v41)
        {
          v35 = v34[6];
        }

        if (v36 <= v38)
        {
          v36 = v34[3];
        }

        if (v36 <= v40)
        {
          v36 = v34[5];
        }

        if (v36 <= v42)
        {
          v36 = v34[7];
        }

        v45 = v35 - v43;
        v46 = v36 - v44;
        v47 = v35 - v43;
        v48 = v36 - v44;
        v139.origin.x = v130;
        v139.origin.y = v131;
        v139.size.width = a7;
        v139.size.height = a8;
        v135 = CGRectIntersection(*&v43, v139);
        v49 = v135.size.width;
        v50 = v135.size.height;
        if (CGRectIsNull(v135))
        {
          v51 = &v22[*(v14 + 24)];
          v53 = *v51;
          v52 = v51[1];
          v54 = v51[2];
          v55 = v51[3];
          v57 = v51[4];
          v56 = v51[5];
          v59 = v51[6];
          v58 = v51[7];
          v60 = 0.0;
        }

        else
        {
          v60 = v49 * v50 / (v33 + v45 * v46 - v49 * v50);
          v61 = &v22[*(v14 + 24)];
          v53 = *v61;
          v52 = v61[1];
          v54 = v61[2];
          v55 = v61[3];
          v57 = v61[4];
          v56 = v61[5];
          v59 = v61[6];
          v58 = v61[7];
        }

        v62 = v54;
        if (v54 >= v53)
        {
          v62 = v54;
          v54 = v53;
        }

        if (v57 < v54)
        {
          v54 = v57;
        }

        if (v59 < v54)
        {
          v54 = v59;
        }

        if (v55 >= v52)
        {
          v63 = v52;
        }

        else
        {
          v63 = v55;
        }

        if (v56 < v63)
        {
          v63 = v56;
        }

        if (v58 < v63)
        {
          v63 = v58;
        }

        if (v53 <= v62)
        {
          v53 = v62;
        }

        if (v53 <= v57)
        {
          v53 = v57;
        }

        if (v53 <= v59)
        {
          v53 = v59;
        }

        if (v52 <= v55)
        {
          v52 = v55;
        }

        if (v52 <= v56)
        {
          v52 = v56;
        }

        if (v52 <= v58)
        {
          v52 = v58;
        }

        v64 = v53 - v54;
        v65 = v52 - v63;
        v66 = v53 - v54;
        v67 = v65;
        v140.origin.x = v130;
        v140.origin.y = v131;
        v140.size.width = a7;
        v140.size.height = a8;
        v136 = CGRectIntersection(*&v54, v140);
        v68 = v136.size.width;
        v69 = v136.size.height;
        if (CGRectIsNull(v136))
        {
          v71 = 0.0;
        }

        else
        {
          v70 = v68 * v69 / (v33 + v64 * v65 - v68 * v69);
          v71 = v70;
        }

        sub_1D8959400(v22, type metadata accessor for TextDetectorResult);
        sub_1D8959400(v25, type metadata accessor for TextDetectorResult);
        if (v71 >= v60)
        {
          if (a1 < a4 || a1 >= a4 + v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v133 = a4 + v27;
          a4 += v27;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v27;
        }

        a1 += v27;
        v134 = a1;
      }

      while (a4 < v129 && a2 < a3);
    }
  }

  sub_1D885CE84(&v134, &v133, &v132);
  return 1;
}

uint64_t sub_1D8958C10(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65E40, &qword_1D8B2CCD8);
    sub_1D8959460(a2, MEMORY[0x1E69E0248], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8958CB0()
{
  result = qword_1ECA65E70;
  if (!qword_1ECA65E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E70);
  }

  return result;
}

unint64_t sub_1D8958D38()
{
  result = qword_1ECA65E78;
  if (!qword_1ECA65E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E78);
  }

  return result;
}

unint64_t sub_1D8958D90()
{
  result = qword_1ECA65E80;
  if (!qword_1ECA65E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E80);
  }

  return result;
}

unint64_t sub_1D8958DE8()
{
  result = qword_1ECA65E88;
  if (!qword_1ECA65E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E88);
  }

  return result;
}

uint64_t sub_1D8958E3C(uint64_t a1, uint64_t *a2)
{
  v44 = a2;
  v3 = sub_1D8B15270();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v51 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v34 - v7;
  v8 = sub_1D8B15240();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v11;
  v43 = *(a1 + 16);
  if (!v43)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = 0;
  v16 = *(v12 + 16);
  v15 = v12 + 16;
  v17 = (*(v15 + 64) + 32) & ~*(v15 + 64);
  v47 = *(v15 + 56);
  v36 = v4;
  v37 = v17;
  v38 = a1 + v17;
  v39 = v16;
  v50 = v4 + 16;
  v53 = (v4 + 8);
  v35 = (v15 - 8);
  v18 = MEMORY[0x1E69E7CC0];
  v45 = (v15 + 16);
  v41 = v15;
  v42 = v8;
  v40 = &v34 - v11;
  do
  {
    v48 = v18;
    v49 = v14;
    v39(v13, v38 + v47 * v14, v8);
    v19 = *v44;

    sub_1D8B15220();
    if (*(v19 + 16) && (sub_1D8959460(&qword_1EE0E3A80, MEMORY[0x1E69E0220], MEMORY[0x1E69E0230]), v20 = sub_1D8B15790(), v21 = -1 << *(v19 + 32), v22 = v20 & ~v21, v52 = v19 + 56, ((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
    {
      v23 = ~v21;
      v24 = *(v36 + 72);
      v25 = *(v36 + 16);
      while (1)
      {
        v26 = v51;
        v25(v51, *(v19 + 48) + v24 * v22, v3);
        sub_1D8959460(&qword_1EE0E3A78, MEMORY[0x1E69E0220], MEMORY[0x1E69E0238]);
        v27 = sub_1D8B158C0();
        v28 = *v53;
        (*v53)(v26, v3);
        if (v27)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v52 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v28(v54, v3);
      v13 = v40;
      v8 = v42;
      (*v35)(v40, v42);
      v18 = v48;
    }

    else
    {
LABEL_10:

      (*v53)(v54, v3);
      v29 = *v45;
      v13 = v40;
      v8 = v42;
      (*v45)(v46, v40, v42);
      v18 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D87F4AD8(0, *(v18 + 16) + 1, 1);
        v18 = v55;
      }

      v32 = *(v18 + 16);
      v31 = *(v18 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1D87F4AD8((v31 > 1), v32 + 1, 1);
        v18 = v55;
      }

      *(v18 + 16) = v32 + 1;
      v29((v18 + v37 + v32 * v47), v46, v8);
    }

    v14 = v49 + 1;
  }

  while (v49 + 1 != v43);
  return v18;
}

uint64_t sub_1D8959330(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8959398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8959400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8959460(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D89594B0(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v100 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB8, &qword_1D8B26820);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v88 - v7;
  *&v9 = COERCE_DOUBLE(type metadata accessor for AFMResult(0));
  MEMORY[0x1EEE9AC00](v9);
  v93 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = COERCE_DOUBLE(type metadata accessor for MetaDetectionResult(0));
  v92 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v94 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CVTrackSnapshot(0);
  v101 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 32);
  v95 = *(a2 + 40);
  v20 = *v3;
  sub_1D895C54C(a1, v18, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_1D8B13240();
    (*(*(v21 - 8) + 8))(v18, v21);
LABEL_8:
    v24 = xmmword_1D8B26630;
LABEL_9:
    v25 = v100;
    *v100 = v24;
    goto LABEL_10;
  }

  sub_1D895C61C(v18, type metadata accessor for CVBundle.BundleType);
  CVBundle.latestDetection.getter(&v106);
  if (*&v106 >> 60 != 11)
  {

    goto LABEL_8;
  }

  *&v22 = COERCE_DOUBLE(type metadata accessor for SyntheticDetectionResult(0));
  if (*(swift_projectBox() + *(v22 + 24)))
  {
    v23 = sub_1D8B16BA0();

    if ((v23 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (!(v95 & 1 | ((v20 & 1) == 0)))
  {
    v25 = v100;
    *v100 = 0;
    *(v25 + 1) = 0;
LABEL_10:
    v26 = 2;
LABEL_11:
    *(v25 + 16) = v26;
    return;
  }

  v89 = *&v22;
  v91 = a1;
  v99 = sub_1D891A6E8();
  v27 = *(v99 + 16);
  v90 = *&v9;
  v28 = v94;
  v98 = v27;
  if (!v27)
  {
LABEL_104:

    v24 = xmmword_1D8B26640;
    goto LABEL_9;
  }

  v29 = 0;
  v97 = v99 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
  v96 = *(v13 + 20);
  v30 = v92 + 7;
  v92 += 7;
  while (v29 < *(v99 + 16))
  {
    sub_1D895C54C(v97 + *(v101 + 72) * v29++, v15, type metadata accessor for CVTrackSnapshot);
    switch(*&v15[v96] >> 60)
    {
      case 1:
        *&v47 = COERCE_DOUBLE(type metadata accessor for GroundedParseDetectorResult(0));
        v32 = swift_projectBox();
        v109 = *&v47;
        v110 = COERCE_DOUBLE(sub_1D895C2CC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
        v34 = type metadata accessor for GroundedParseDetectorResult;
        goto LABEL_32;
      case 2:
        v39 = swift_projectBox();
        v109 = *&v11;
        v110 = COERCE_DOUBLE(sub_1D895C2CC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
        v40 = type metadata accessor for MetaDetectionResult;
        goto LABEL_25;
      case 3:
      case 8:
        *&v31 = COERCE_DOUBLE(type metadata accessor for ObjectDetectorResult(0));
        v32 = swift_projectBox();
        v109 = *&v31;
        v110 = COERCE_DOUBLE(sub_1D895C2CC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
        v34 = type metadata accessor for ObjectDetectorResult;
        goto LABEL_32;
      case 4:
        *&v48 = COERCE_DOUBLE(type metadata accessor for ParseDetectorResult(0));
        v32 = swift_projectBox();
        v109 = *&v48;
        v110 = COERCE_DOUBLE(sub_1D895C2CC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
        v34 = type metadata accessor for ParseDetectorResult;
        goto LABEL_32;
      case 5:
        *&v49 = COERCE_DOUBLE(type metadata accessor for TextDetectorResult(0));
        v32 = swift_projectBox();
        v109 = *&v49;
        v110 = COERCE_DOUBLE(sub_1D895C2CC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
        v34 = type metadata accessor for TextDetectorResult;
        goto LABEL_32;
      case 6:
      case 7:
        *&v35 = COERCE_DOUBLE(type metadata accessor for StreamingBarcodeDetectorResult(0));
        v32 = swift_projectBox();
        v109 = *&v35;
        v110 = COERCE_DOUBLE(sub_1D895C2CC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
        v34 = type metadata accessor for StreamingBarcodeDetectorResult;
        goto LABEL_32;
      case 9:
      case 0xALL:
        v36 = swift_projectBox();
        v37 = v93;
        sub_1D895C54C(v36, v93, type metadata accessor for AFMResult);
        v109 = v90;
        v110 = COERCE_DOUBLE(sub_1D895C2CC(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult));
        v38 = __swift_allocate_boxed_opaque_existential_1(&v106);
        sub_1D895C5B4(v37, v38, type metadata accessor for AFMResult);
        break;
      case 0xBLL:
        v39 = swift_projectBox();
        v109 = v89;
        v110 = COERCE_DOUBLE(sub_1D895C2CC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
        v40 = type metadata accessor for SyntheticDetectionResult;
LABEL_25:
        v41 = v40;
        v42 = v39;
        goto LABEL_33;
      case 0xCLL:
        *&v43 = COERCE_DOUBLE(type metadata accessor for GroundedParseEmbeddingsResult(0));
        v32 = swift_projectBox();
        v109 = *&v43;
        v110 = COERCE_DOUBLE(sub_1D895C2CC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
        v34 = type metadata accessor for GroundedParseEmbeddingsResult;
        goto LABEL_32;
      case 0xDLL:
        *&v50 = COERCE_DOUBLE(type metadata accessor for GroundedParseClassificationsResult(0));
        v32 = swift_projectBox();
        v109 = *&v50;
        v110 = COERCE_DOUBLE(sub_1D895C2CC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
        v34 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_32:
        v41 = v34;
        v42 = v32;
LABEL_33:
        sub_1D895C54C(v42, boxed_opaque_existential_1, v41);
        break;
      default:
        *&v44 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0));
        v45 = swift_projectBox();
        v109 = *&v44;
        v110 = COERCE_DOUBLE(sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>));
        v46 = __swift_allocate_boxed_opaque_existential_1(&v106);
        sub_1D894733C(v45, v46);
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140, &qword_1D8B22FA0);
    v51 = swift_dynamicCast();
    v52 = *v30;
    if (v51)
    {
      v52(v8, 0, 1, v11);
      sub_1D895C5B4(v8, v28, type metadata accessor for MetaDetectionResult);
      if (*v28 == 5 && ((v95 & 1) == 0 || *&v28[v11[8]] == v19))
      {
        v53 = v11[9];
        if (v28[v53] == 2 && v19 - *&v28[v11[8]] > 0.0001)
        {
          goto LABEL_93;
        }

        CVBundle.latestEstimate.getter(&v114);
        v105 = v114;
        CVDetection.detection.getter(v102);
        v54 = v103;
        v55 = v104;
        __swift_project_boxed_opaque_existential_1(v102, v103);
        v56 = *(v55 + 64);
        v57 = v55;
        v28 = v94;
        v56(&v106, v54, v57);
        __swift_destroy_boxed_opaque_existential_1(v102);

        v58 = v106;
        v59 = v107;
        if (v108 >= v106)
        {
          v60 = v106;
        }

        else
        {
          v60 = v108;
        }

        if (v110 < v60)
        {
          v60 = v110;
        }

        if (v112 < v60)
        {
          v60 = v112;
        }

        if (v109 >= v107)
        {
          v61 = v107;
        }

        else
        {
          v61 = v109;
        }

        if (v111 < v61)
        {
          v61 = v111;
        }

        if (v113 < v61)
        {
          v61 = v113;
        }

        if (v106 <= v108)
        {
          v58 = v108;
        }

        if (v58 <= v110)
        {
          v58 = v110;
        }

        if (v58 <= v112)
        {
          v58 = v112;
        }

        if (v107 <= v109)
        {
          v59 = v109;
        }

        if (v59 <= v111)
        {
          v59 = v111;
        }

        if (v59 <= v113)
        {
          v59 = v113;
        }

        v62 = v58 - v60;
        v63 = v59 - v61;
        v117.origin.x = 0.0;
        v117.origin.y = 0.0;
        v117.size.width = 1.0;
        v117.size.height = 1.0;
        v115 = CGRectIntersection(*&v60, v117);
        x = v115.origin.x;
        y = v115.origin.y;
        width = v115.size.width;
        height = v115.size.height;
        v68 = &v28[v11[5]];
        v69 = *v68;
        v70 = v68[1];
        v71 = v68[2];
        v72 = v68[3];
        v73 = v68[4];
        v74 = v68[5];
        v75 = v68[6];
        v76 = v68[7];
        if (v71 >= *v68)
        {
          v77 = *v68;
        }

        else
        {
          v77 = v68[2];
        }

        if (v73 < v77)
        {
          v77 = v68[4];
        }

        if (v75 < v77)
        {
          v77 = v68[6];
        }

        if (v72 >= v70)
        {
          v78 = v68[1];
        }

        else
        {
          v78 = v68[3];
        }

        if (v74 < v78)
        {
          v78 = v68[5];
        }

        if (v76 < v78)
        {
          v78 = v68[7];
        }

        if (v69 <= v71)
        {
          v69 = v68[2];
        }

        if (v69 <= v73)
        {
          v69 = v68[4];
        }

        if (v69 <= v75)
        {
          v69 = v68[6];
        }

        if (v70 <= v72)
        {
          v70 = v68[3];
        }

        if (v70 <= v74)
        {
          v70 = v68[5];
        }

        if (v70 <= v76)
        {
          v70 = v68[7];
        }

        v79 = v69 - v77;
        v80 = v70 - v78;
        v81 = width;
        v82 = height;
        v116 = CGRectIntersection(*&v77, *&x);
        if (width * height * 0.9 > v116.size.width * v116.size.height)
        {
LABEL_93:
          sub_1D895C61C(v28, type metadata accessor for MetaDetectionResult);
          v30 = v92;
        }

        else
        {
          v83 = v28[v53];
          if (v83 == 3)
          {
            if (qword_1EE0E54C0 != -1)
            {
              swift_once();
            }

            v84 = sub_1D8B0AAA4();
            v30 = v92;
            if (v84)
            {
              goto LABEL_107;
            }

            sub_1D895C61C(v28, type metadata accessor for MetaDetectionResult);
            if (v95)
            {
              goto LABEL_105;
            }
          }

          else
          {
            sub_1D895C61C(v28, type metadata accessor for MetaDetectionResult);
            v30 = v92;
            if (v83 == 2)
            {
LABEL_105:

              sub_1D895C61C(v15, type metadata accessor for CVTrackSnapshot);
              v25 = v100;
              *v100 = 0;
              *(v25 + 1) = 0;
              v26 = -1;
              goto LABEL_11;
            }
          }
        }
      }

      else
      {
        sub_1D895C61C(v28, type metadata accessor for MetaDetectionResult);
      }
    }

    else
    {
      v52(v8, 1, 1, v11);
      sub_1D87A14E4(v8, &qword_1ECA64BB8, &qword_1D8B26820);
    }

    sub_1D895C61C(v15, type metadata accessor for CVTrackSnapshot);
    if (v98 == v29)
    {
      goto LABEL_104;
    }
  }

  __break(1u);
LABEL_107:
  v106 = 0.0;
  v107 = -2.68156159e154;
  sub_1D8B16720();

  v106 = -2.31584178e77;
  v107 = COERCE_DOUBLE(0x80000001D8B43DD0);
  v85 = &v28[v11[10]];
  if (v85[1])
  {
    v86 = *v85;
    v87 = v85[1];
  }

  else
  {
    v87 = 0xEF6E65766967206ELL;
    v86 = 0x6F73616572206F6ELL;
  }

  MEMORY[0x1DA71EFA0](v86, v87);

  sub_1D8B168C0();
  __break(1u);
}

uint64_t sub_1D895A3E4(uint64_t a1, _OWORD *a2)
{
  v5 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[3];
  v24 = a2[2];
  v25 = v8;
  v26 = a2[4];
  v9 = a2[1];
  v23[0] = *a2;
  v23[1] = v9;
  if (*v2 == 1 && (BYTE8(v24) & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  sub_1D895C54C(a1, v7, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D8B13240();
    (*(*(v10 - 8) + 8))(v7, v10);
    return MEMORY[0x1E69E7CD0];
  }

  sub_1D895C61C(v7, type metadata accessor for CVBundle.BundleType);
  CVBundle.latestDetection.getter(&v22);
  if (v22 >> 60 != 11)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v11 = type metadata accessor for SyntheticDetectionResult(0);
  if (*(swift_projectBox() + *(v11 + 24)))
  {
    v12 = sub_1D8B16BA0();

    if ((v12 & 1) == 0)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B88, &unk_1D8B267B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  *(inited + 32) = 5;
  v15 = sub_1D893EA58(&unk_1F5426BB8);
  v16 = 1.0;
  if (*(v15 + 16))
  {
    v17 = sub_1D881F7DC();
    if (v18)
    {
      v16 = *(*(v15 + 56) + 8 * v17);
    }
  }

  *(inited + 40) = v16;
  v19 = sub_1D893EA58(inited);
  swift_setDeallocating();
  v20 = sub_1D89E0D5C(a1, v23, v19);

  return v20;
}

uint64_t sub_1D895A680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[46] = a2;
  v5[47] = a5;
  v5[45] = a1;
  v7 = sub_1D8B12EE0();
  v5[48] = v7;
  v5[49] = *(v7 - 8);
  v5[50] = swift_task_alloc();
  v5[51] = type metadata accessor for AFMResult(0);
  v5[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64820, &unk_1D8B2F6E0);
  v5[53] = swift_task_alloc();
  v8 = type metadata accessor for TextDetectorResult(0);
  v5[54] = v8;
  v5[55] = *(v8 - 8);
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = *(a4 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D895A820, 0, 0);
}

uint64_t sub_1D895A820()
{
  v58 = v0;
  v1 = sub_1D891F590(*(v0 + 464));
  v9 = v1;
  v56 = *(v1 + 16);
  if (v56)
  {
    v10 = 0;
    v55 = v1 + 32;
    v11 = *(v0 + 440);
    v12 = MEMORY[0x1E69E7CC0];
    while (v10 < *(v9 + 16))
    {
      v13 = *(v55 + 8 * v10++);
      switch(v13 >> 60)
      {
        case 1uLL:
          v29 = type metadata accessor for GroundedParseDetectorResult(0);
          v15 = swift_projectBox();
          *(v0 + 40) = v29;
          *(v0 + 48) = sub_1D895C2CC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          v17 = type metadata accessor for GroundedParseDetectorResult;
          goto LABEL_18;
        case 2uLL:
          v24 = type metadata accessor for MetaDetectionResult(0);
          v15 = swift_projectBox();
          *(v0 + 40) = v24;
          *(v0 + 48) = sub_1D895C2CC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          v17 = type metadata accessor for MetaDetectionResult;
          goto LABEL_18;
        case 3uLL:
        case 8uLL:
          v14 = type metadata accessor for ObjectDetectorResult(0);
          v15 = swift_projectBox();
          *(v0 + 40) = v14;
          *(v0 + 48) = sub_1D895C2CC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          v17 = type metadata accessor for ObjectDetectorResult;
          goto LABEL_18;
        case 4uLL:
          v30 = type metadata accessor for ParseDetectorResult(0);
          v15 = swift_projectBox();
          *(v0 + 40) = v30;
          *(v0 + 48) = sub_1D895C2CC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          v17 = type metadata accessor for ParseDetectorResult;
          goto LABEL_18;
        case 5uLL:
          v31 = *(v0 + 432);
          v32 = swift_projectBox();
          *(v0 + 40) = v31;
          *(v0 + 48) = sub_1D895C2CC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          v33 = type metadata accessor for TextDetectorResult;
          v34 = v32;
          goto LABEL_19;
        case 6uLL:
        case 7uLL:
          v18 = type metadata accessor for StreamingBarcodeDetectorResult(0);
          v15 = swift_projectBox();
          *(v0 + 40) = v18;
          *(v0 + 48) = sub_1D895C2CC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          v17 = type metadata accessor for StreamingBarcodeDetectorResult;
          goto LABEL_18;
        case 9uLL:
        case 0xAuLL:
          v20 = *(v0 + 408);
          v19 = *(v0 + 416);
          v21 = swift_projectBox();
          sub_1D895C54C(v21, v19, type metadata accessor for AFMResult);
          *(v0 + 40) = v20;
          *(v0 + 48) = sub_1D895C2CC(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
          v22 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          sub_1D895C5B4(v19, v22, type metadata accessor for AFMResult);
          break;
        case 0xBuLL:
          v23 = type metadata accessor for SyntheticDetectionResult(0);
          v15 = swift_projectBox();
          *(v0 + 40) = v23;
          *(v0 + 48) = sub_1D895C2CC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          v17 = type metadata accessor for SyntheticDetectionResult;
          goto LABEL_18;
        case 0xCuLL:
          v25 = type metadata accessor for GroundedParseEmbeddingsResult(0);
          v15 = swift_projectBox();
          *(v0 + 40) = v25;
          *(v0 + 48) = sub_1D895C2CC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          v17 = type metadata accessor for GroundedParseEmbeddingsResult;
          goto LABEL_18;
        case 0xDuLL:
          v35 = type metadata accessor for GroundedParseClassificationsResult(0);
          v15 = swift_projectBox();
          *(v0 + 40) = v35;
          *(v0 + 48) = sub_1D895C2CC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          v17 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_18:
          v33 = v17;
          v34 = v15;
LABEL_19:
          sub_1D895C54C(v34, boxed_opaque_existential_1, v33);
          break;
        default:
          v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
          v27 = swift_projectBox();
          *(v0 + 40) = v26;
          *(v0 + 48) = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>);
          v28 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          sub_1D894733C(v27, v28);
          break;
      }

      v37 = *(v0 + 424);
      v36 = *(v0 + 432);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140, &qword_1D8B22FA0);
      v38 = swift_dynamicCast();
      (*(v11 + 56))(v37, v38 ^ 1u, 1, v36);
      if ((*(v11 + 48))(v37, 1, v36) == 1)
      {
        v1 = sub_1D87A14E4(*(v0 + 424), &qword_1ECA64820, &unk_1D8B2F6E0);
      }

      else
      {
        sub_1D895C5B4(*(v0 + 424), *(v0 + 456), type metadata accessor for TextDetectorResult);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1D87C7EE0(0, v12[2] + 1, 1, v12);
        }

        v40 = v12[2];
        v39 = v12[3];
        if (v40 >= v39 >> 1)
        {
          v12 = sub_1D87C7EE0((v39 > 1), v40 + 1, 1, v12);
        }

        v41 = *(v0 + 456);
        v12[2] = v40 + 1;
        v1 = sub_1D895C5B4(v41, v12 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v40, type metadata accessor for TextDetectorResult);
      }

      if (v56 == v10)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DE38](v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_27:

  v57 = v12;

  sub_1D89DC06C(&v57);

  v42 = v57;
  *(v0 + 472) = v57;
  if (v42[2])
  {
    v43 = *(v0 + 448);
    v44 = *(v0 + 432);
    v45 = *(*(v0 + 440) + 80);
    sub_1D895C54C(v42 + ((v45 + 32) & ~v45), v43, type metadata accessor for TextDetectorResult);
    v46 = *(v43 + *(v44 + 48));
    *(v0 + 480) = v46;
    if (v46)
    {
      v47 = *(v0 + 368);
      v48 = swift_task_alloc();
      *(v0 + 488) = v48;
      *(v48 + 16) = v46;
      *(v48 + 24) = v47;
      v49 = v46;
      v50 = swift_task_alloc();
      *(v0 + 496) = v50;
      *v50 = v0;
      v50[1] = sub_1D895B21C;
      v8 = MEMORY[0x1E69E6370];
      v6 = sub_1D895C2C4;
      v1 = v0 + 512;
      v4 = 0xD00000000000003ALL;
      v5 = 0x80000001D8B44BA0;
      v2 = 0;
      v3 = 0;
      v7 = v48;

      return MEMORY[0x1EEE6DE38](v1, v2, v3, v4, v5, v6, v7, v8);
    }

    sub_1D895C61C(*(v0 + 448), type metadata accessor for TextDetectorResult);
  }

  v51 = *(v0 + 464);
  v52 = *(v0 + 376);

  *v52 = 0;
  *(v52 + 8) = 0xD00000000000002CLL;
  *(v52 + 16) = 0x80000001D8B44B70;
  *(v52 + 24) = 0x80;
  *(v52 + 32) = v51;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xD00000000000002CLL;
  *(v0 + 72) = 0x80000001D8B44B70;
  *(v0 + 80) = 0x80;
  *(v0 + 88) = v51;
  sub_1D88E0E0C();
  swift_willThrowTypedImpl();

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_1D895B21C()
{
  *(*v1 + 504) = v0;

  if (v0)
  {

    v2 = sub_1D895BBB0;
  }

  else
  {

    v2 = sub_1D895B364;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D895B364()
{
  v54 = v0;
  if (*(v0 + 512) == 1)
  {
    v1 = sub_1D895C038(*(v0 + 472));

    if (qword_1ECA621C0 != -1)
    {
      swift_once();
    }

    v2 = sub_1D8B151E0();
    __swift_project_value_buffer(v2, qword_1ECA66AB0);
    v3 = v1;
    v4 = sub_1D8B151C0();
    v5 = sub_1D8B16200();

    v51 = v3;
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52 = v50;
      *v6 = 136315138;
      v7 = [v3 count];
      v53 = MEMORY[0x1E69E7CC0];
      sub_1D87F3F54(0, v7 & ~(v7 >> 63), 0);
      v8 = v53;
      v9 = v3;
      sub_1D8B163D0();

      if (v7 < 0)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      v48 = v5;
      log = v4;
      buf = v6;
      if (v7)
      {
        sub_1D895C2CC(&qword_1ECA65EA8, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
        do
        {
          sub_1D8B16490();
          v10 = *(v0 + 200);
          if (!v10)
          {
            goto LABEL_25;
          }

          *(v0 + 296) = 0;
          *(v0 + 304) = 0xE000000000000000;
          __swift_project_boxed_opaque_existential_1((v0 + 176), v10);
          v11 = [v9 countForObject_];
          swift_unknownObjectRelease();
          *(v0 + 336) = v11;
          v12 = sub_1D8B16B50();
          MEMORY[0x1DA71EFA0](v12);

          MEMORY[0x1DA71EFA0](0x6F2073656E696C20, 0xEA00000000002066);
          sub_1D8B168A0();
          v14 = *(v0 + 296);
          v13 = *(v0 + 304);
          __swift_destroy_boxed_opaque_existential_1((v0 + 176));
          v53 = v8;
          v16 = *(v8 + 16);
          v15 = *(v8 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_1D87F3F54((v15 > 1), v16 + 1, 1);
            v8 = v53;
          }

          *(v8 + 16) = v16 + 1;
          v17 = v8 + 16 * v16;
          *(v17 + 32) = v14;
          *(v17 + 40) = v13;
        }

        while (--v7);
      }

      sub_1D895C2CC(&qword_1ECA65EA8, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
      sub_1D8B16490();
      while (*(v0 + 264))
      {
        sub_1D8943B68((v0 + 240), (v0 + 208));
        *(v0 + 312) = 0;
        *(v0 + 320) = 0xE000000000000000;
        __swift_project_boxed_opaque_existential_1((v0 + 208), *(v0 + 232));
        v28 = [v9 countForObject_];
        swift_unknownObjectRelease();
        *(v0 + 352) = v28;
        v29 = sub_1D8B16B50();
        MEMORY[0x1DA71EFA0](v29);

        MEMORY[0x1DA71EFA0](0x6F2073656E696C20, 0xEA00000000002066);
        sub_1D8B168A0();
        v30 = *(v0 + 312);
        v31 = *(v0 + 320);
        __swift_destroy_boxed_opaque_existential_1((v0 + 208));
        v53 = v8;
        v33 = *(v8 + 16);
        v32 = *(v8 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1D87F3F54((v32 > 1), v33 + 1, 1);
          v8 = v53;
        }

        *(v8 + 16) = v33 + 1;
        v34 = v8 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = v31;
        sub_1D8B16490();
      }

      (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
      sub_1D87A14E4(v0 + 240, &qword_1ECA650C0, &unk_1D8B2D030);
      *(v0 + 344) = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
      sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
      v35 = sub_1D8B15810();
      v37 = v36;

      v38 = sub_1D89AC714(v35, v37, &v52);

      *(buf + 4) = v38;
      _os_log_impl(&dword_1D8783000, log, v48, "Enabling translate action for %s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1DA721330](v50, -1, -1);
      MEMORY[0x1DA721330](buf, -1, -1);
    }

    else
    {
    }

    v39 = *(v0 + 480);
    v40 = *(v0 + 448);
    v41 = *(v0 + 360);
    type metadata accessor for BundleClassification.ClassificationType(0);
    swift_storeEnumTagMultiPayload();
    CVBundle.latestEstimate.getter(&v52);
    v53 = v52;
    CVDetection.detection.getter((v0 + 136));
    v42 = *(v0 + 160);
    v43 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v42);
    v44 = (*(v43 + 88))(v42, v43);

    sub_1D895C61C(v40, type metadata accessor for TextDetectorResult);
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    v45 = type metadata accessor for BundleClassification(0);
    v46 = v41 + *(v45 + 20);
    *v46 = 2;
    *(v46 + 8) = 0u;
    *(v46 + 24) = 0u;
    sub_1D88E0FE4(2, 0, 0, 0);
    *v46 = 2;
    *(v46 + 8) = 0u;
    *(v46 + 24) = 0u;
    *(v41 + *(v45 + 24)) = v44;

    v27 = *(v0 + 8);
  }

  else
  {
    v18 = *(v0 + 464);

    sub_1D88E0E0C();
    v19 = swift_allocError();
    *v20 = 0;
    *(v20 + 8) = 0xD00000000000001BLL;
    *(v20 + 16) = 0x80000001D8B44BE0;
    *(v20 + 24) = 0x80;
    *(v20 + 32) = v18;
    swift_willThrow();
    v21 = *(v0 + 480);
    v22 = *(v0 + 464);
    v23 = *(v0 + 448);
    v24 = *(v0 + 376);
    swift_getErrorValue();
    v25 = sub_1D8B16C90();
    *v24 = 0;
    *(v24 + 8) = v25;
    *(v24 + 16) = v26;
    *(v24 + 24) = 0x80;
    *(v24 + 32) = v22;
    *(v0 + 96) = 0;
    *(v0 + 104) = v25;
    *(v0 + 112) = v26;
    *(v0 + 120) = 0x80;
    *(v0 + 128) = v22;
    swift_willThrowTypedImpl();

    sub_1D895C61C(v23, type metadata accessor for TextDetectorResult);

    v27 = *(v0 + 8);
  }

  v27();
}

uint64_t sub_1D895BBB0()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 480);
  v3 = *(v0 + 464);
  v4 = *(v0 + 448);
  v5 = *(v0 + 376);
  swift_getErrorValue();
  v6 = sub_1D8B16C90();
  *v5 = 0;
  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  *(v5 + 24) = 0x80;
  *(v5 + 32) = v3;
  *(v0 + 96) = 0;
  *(v0 + 104) = v6;
  *(v0 + 112) = v7;
  *(v0 + 120) = 0x80;
  *(v0 + 128) = v3;
  sub_1D88E0E0C();
  swift_willThrowTypedImpl();

  sub_1D895C61C(v4, type metadata accessor for TextDetectorResult);

  v8 = *(v0 + 8);

  return v8();
}

void sub_1D895BCE4(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EB0, &unk_1D8B2D040);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  CVBundle.latestEstimate.getter(&v27);
  v26 = v27;
  CVDetection.detection.getter(v23);
  v7 = v24;
  v8 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v8 + 64))(aBlock, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v23);
  Corners.bounds.getter();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  (*(v4 + 16))(v6, a1, v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + v17, v6, v3);
  aBlock[4] = sub_1D895C314;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D895BFC0;
  aBlock[3] = &block_descriptor_5;
  v19 = _Block_copy(aBlock);

  viCore_canTranslate(v21, v19, v10, 1.0 - v12 - v16, v14, v16);
  _Block_release(v19);
}

uint64_t sub_1D895BF3C(char a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EB0, &unk_1D8B2D040);
    return sub_1D8B15E10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EB0, &unk_1D8B2D040);
    return sub_1D8B15E20();
  }
}

void sub_1D895BFC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_1D895C038(uint64_t a1)
{
  v2 = type metadata accessor for TextDetectorResult(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E696AB50]) init];
  v16 = *(a1 + 16);
  if (v16)
  {
    v7 = 0;
    v15 = *(v2 + 44);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1D895C54C(v8 + v9 * v7, v5, type metadata accessor for TextDetectorResult);
      v10 = *&v5[v15];
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v10 + 64;
        do
        {

          v13 = sub_1D8B15940();

          [v6 addObject_];

          v12 += 40;
          --v11;
        }

        while (v11);
      }

      ++v7;
      sub_1D895C61C(v5, type metadata accessor for TextDetectorResult);
    }

    while (v7 != v16);
  }

  return v6;
}

uint64_t sub_1D895C1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  v10 = swift_task_alloc();
  *(v5 + 64) = v10;
  *v10 = v5;
  v10[1] = sub_1D88DFAD0;

  return sub_1D895A680(a1, a2, v9, a4, v5 + 16);
}

uint64_t sub_1D895C2CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D895C314(char a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EB0, &unk_1D8B2D040);

  return sub_1D895BF3C(a1, a2);
}

double block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void viCore_canTranslate(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v13 = [objc_alloc(MEMORY[0x1E69844F0]) initWithCRDocumentOutputRegion:v11 requestRevision:1];
  v14 = [v13 blocksWithTypes:2 inRegion:{a3, a4, a5, a6}];
  if ([v14 count])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v15 = getLTUIVisualTranslationServiceClass_softClass;
    v21 = getLTUIVisualTranslationServiceClass_softClass;
    if (!getLTUIVisualTranslationServiceClass_softClass)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __getLTUIVisualTranslationServiceClass_block_invoke;
      v17[3] = &unk_1E8561D70;
      v17[4] = &v18;
      __getLTUIVisualTranslationServiceClass_block_invoke(v17);
      v15 = v19[3];
    }

    v16 = v15;
    _Block_object_dispose(&v18, 8);
    [v16 isTranslatable:v14 completion:v12];
  }

  else
  {
    (*(v12 + 2))(v12, 0, 0);
  }
}

void sub_1D895C534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1D895C54C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D895C5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D895C61C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Class __getLTUIVisualTranslationServiceClass_block_invoke(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!TranslationUILibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __TranslationUILibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E8561D90;
    v9 = 0;
    TranslationUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (TranslationUILibraryCore_frameworkLibrary)
  {
    v2 = v7[0];
    if (!v7[0])
    {
      goto LABEL_5;
    }
  }

  else
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TranslationUILibrary(void)"];
    [a1 handleFailureInFunction:v4 file:@"VisualIntelligenceCore.h" lineNumber:17 description:{@"%s", v7[0]}];

    __break(1u);
  }

  free(v2);
LABEL_5:
  result = objc_getClass("LTUIVisualTranslationService");
  *(*(a1[4] + 8) + 24) = result;
  if (!*(*(a1[4] + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLTUIVisualTranslationServiceClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"VisualIntelligenceCore.h" lineNumber:18 description:{@"Unable to find class %s", "LTUIVisualTranslationService"}];

    __break(1u);
  }

  getLTUIVisualTranslationServiceClass_softClass = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __TranslationUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  TranslationUILibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t sub_1D895C994@<X0>(void *a1@<X8>)
{
  *(swift_allocObject() + 16) = v1;
  v3 = objc_opt_self();
  v4 = v1;
  if (![v3 isMainThread])
  {
    sub_1D881F764(0, &qword_1EE0E3730, 0x1E69E9610);
    v8 = sub_1D8B162C0();
    MEMORY[0x1EEE9AC00](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EB8, &qword_1D8B2D0D8);
    sub_1D8B162D0();

    v5 = v9;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    result = 0;
    v7 = 0;
    a1[1] = 0;
    a1[2] = 0;
    goto LABEL_6;
  }

  v5 = [v4 frontmostAudioOrVideoCall];

  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  result = sub_1D881F764(0, &qword_1ECA65EC0, 0x1E69D8A40);
  v7 = &off_1F5430380;
LABEL_6:
  *a1 = v5;
  a1[3] = result;
  a1[4] = v7;
  return result;
}

id sub_1D895CB5C@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) frontmostAudioOrVideoCall];
  *a1 = result;
  return result;
}

void *sub_1D895CB98@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v4);
  *a1 = v4;
  return result;
}

uint64_t ConfigStorage.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  (*(a5 + 8))(v10, a1, a2, a3, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650C0, &unk_1D8B2D030);
  v8 = swift_dynamicCast();
  return (*(*(a4 - 8) + 56))(a6, v8 ^ 1u, 1, a4);
}

uint64_t ConfigStorage.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1D895DF34(a1, a2, a3, a4, a5, a6, a7);
  v8 = sub_1D8B16470();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

void (*ConfigStorage.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t **a1, char a2)
{
  v15 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v16 = malloc(0x58uLL);
  }

  v17 = v16;
  *a1 = v16;
  v16[5] = a7;
  v16[6] = v7;
  v16[3] = a5;
  v16[4] = a6;
  v16[1] = a3;
  v16[2] = a4;
  *v16 = a2;
  v18 = sub_1D8B16470();
  v17[7] = v18;
  v19 = *(v18 - 8);
  v17[8] = v19;
  v20 = *(v19 + 64);
  if (v15)
  {
    v17[9] = swift_coroFrameAlloc();
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v17[9] = malloc(*(v19 + 64));
    v21 = malloc(v20);
  }

  v17[10] = v21;
  ConfigStorage.subscript.getter(a2, a3, a5, a6, a7, v21);
  return sub_1D895D114;
}

void sub_1D895D114(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[9];
  v4 = (*a1)[10];
  v5 = (*a1)[7];
  v6 = (*a1)[8];
  v13 = (*a1)[5];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v10 = (*a1)[1];
  v9 = (*a1)[2];
  v11 = **a1;
  if (a2)
  {
    (*(v6 + 16))(v3, v4, v5);

    sub_1D895DF34(v3, v11, v10, v9, v8, v7, v13);
    v12 = *(v6 + 8);
    v12(v3, v5);
    v12(v4, v5);
  }

  else
  {

    sub_1D895DF34(v4, v11, v10, v9, v8, v7, v13);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

unint64_t ConfigStorageKey.rawValue.getter()
{
  v1 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000010;
  }

  v2 = 0xD000000000000018;
  if (!*v0)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t (*ConfigStorage.isVisualLookUpEagerModeEnabled.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  ConfigStorage.subscript.getter(0xD00000000000001ELL, 0x80000001D8B40140, a2, MEMORY[0x1E69E6370], a3, a1 + 24);
  *(a1 + 25) = *(a1 + 24) & 1;
  return sub_1D895D34C;
}

uint64_t sub_1D895D34C(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  *(a1 + 24) = *(a1 + 25);
  return sub_1D895DF34((a1 + 3), 0xD00000000000001ELL, 0x80000001D8B40140, MEMORY[0x1E69E6370], v2, MEMORY[0x1E69E6370], v1);
}

uint64_t (*ConfigStorage.hasOnboardedVisualLookUp.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  ConfigStorage.subscript.getter(0xD000000000000018, 0x80000001D8B40160, a2, MEMORY[0x1E69E6370], a3, a1 + 24);
  *(a1 + 25) = *(a1 + 24) & 1;
  return sub_1D895D420;
}

uint64_t sub_1D895D420(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  *(a1 + 24) = *(a1 + 25);
  return sub_1D895DF34((a1 + 3), 0xD000000000000018, 0x80000001D8B40160, MEMORY[0x1E69E6370], v2, MEMORY[0x1E69E6370], v1);
}

uint64_t (*ConfigStorage.hasOnboardedImageSearch.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  ConfigStorage.subscript.getter(0xD000000000000017, 0x80000001D8B3FFA0, a2, MEMORY[0x1E69E6370], a3, a1 + 24);
  *(a1 + 25) = *(a1 + 24) & 1;
  return sub_1D895D4F4;
}

uint64_t sub_1D895D4F4(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  *(a1 + 24) = *(a1 + 25);
  return sub_1D895DF34((a1 + 3), 0xD000000000000017, 0x80000001D8B3FFA0, MEMORY[0x1E69E6370], v2, MEMORY[0x1E69E6370], v1);
}

uint64_t (*ConfigStorage.hasOnboardedACME.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  ConfigStorage.subscript.getter(0xD000000000000010, 0x80000001D8B3FFC0, a2, MEMORY[0x1E69E6370], a3, a1 + 24);
  *(a1 + 25) = *(a1 + 24) & 1;
  return sub_1D895D5C8;
}

uint64_t sub_1D895D5C8(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  *(a1 + 24) = *(a1 + 25);
  return sub_1D895DF34((a1 + 3), 0xD000000000000010, 0x80000001D8B3FFC0, MEMORY[0x1E69E6370], v2, MEMORY[0x1E69E6370], v1);
}

uint64_t sub_1D895D61C()
{
  v1 = v0;
  v2 = 0;
  while (1)
  {
    v7 = byte_1F5428160[v2++ + 32];
    v8 = 0xD00000000000001ELL;
    v9 = 0xD000000000000017;
    if (v7 != 2)
    {
      v9 = 0xD000000000000010;
    }

    v10 = "searchSectionsAsData";
    if (v7 != 2)
    {
      v10 = "hasOnboardedImageSearch";
    }

    if (v7)
    {
      v8 = 0xD000000000000018;
    }

    v11 = "dn't Try";
    if (v7)
    {
      v11 = "isVisualLookUpEagerModeEnabled";
    }

    if (v7 <= 1)
    {
      v12 = v8;
    }

    else
    {
      v12 = v9;
    }

    if (v7 <= 1)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10;
    }

    v14 = v13 | 0x8000000000000000;
    memset(v39, 0, sizeof(v39));
    os_unfair_lock_lock((v1 + 16));
    sub_1D895E280(v39, &v37);
    if (!v38)
    {
      sub_1D895E2F0(&v37);
      v25 = sub_1D87EF838(v12, v14);
      v27 = v26;

      if (v27)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = *(v1 + 24);
        *(v1 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1D8968CE0();
        }

        sub_1D8943B68((*(v29 + 56) + 32 * v25), v36);
        sub_1D8AF1FEC(v25, v29, v30);
        *(v1 + 24) = v29;
      }

      else
      {
        memset(v36, 0, sizeof(v36));
      }

      sub_1D895E2F0(v36);
      goto LABEL_4;
    }

    sub_1D8943B68(&v37, v36);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v1 + 24);
    v35 = v16;
    *(v1 + 24) = 0x8000000000000000;
    v17 = sub_1D87EF838(v12, v14);
    v19 = v16[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (v16[3] < v22)
    {
      sub_1D8970C98(v22, v15);
      v17 = sub_1D87EF838(v12, v14);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_39;
      }

LABEL_29:
      if ((v23 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_2;
    }

    if (v15)
    {
      goto LABEL_29;
    }

    v34 = v17;
    sub_1D8968CE0();
    v17 = v34;
    if ((v23 & 1) == 0)
    {
LABEL_30:
      v4 = v16;
      v16[(v17 >> 6) + 8] |= 1 << v17;
      v31 = (v16[6] + 16 * v17);
      *v31 = v12;
      v31[1] = v14;
      sub_1D8943B68(v36, (v16[7] + 32 * v17));
      v32 = v16[2];
      v21 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v21)
      {
        goto LABEL_38;
      }

      v16[2] = v33;
      goto LABEL_3;
    }

LABEL_2:
    v3 = v17;

    v4 = v35;
    v5 = (v35[7] + 32 * v3);
    __swift_destroy_boxed_opaque_existential_1(v5);
    sub_1D8943B68(v36, v5);
LABEL_3:
    *(v1 + 24) = v4;

LABEL_4:
    os_unfair_lock_unlock((v1 + 16));
    result = sub_1D895E2F0(v39);
    if (v2 == 4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D895D928()
{
  v0 = 0xD000000000000010;
  v1 = 0xD00000000000001ELL;
  v2 = "dn't Try";
  v3 = 0xD000000000000017;
  if (byte_1F54281A8 == 2)
  {
    v4 = "searchSectionsAsData";
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = "hasOnboardedImageSearch";
  }

  if (byte_1F54281A8)
  {
    v1 = 0xD000000000000018;
    v5 = "isVisualLookUpEagerModeEnabled";
  }

  else
  {
    v5 = "dn't Try";
  }

  if (byte_1F54281A8 <= 1u)
  {
    v6 = v1;
  }

  else
  {
    v6 = v3;
  }

  if (byte_1F54281A8 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v13 = 0u;
  v14 = 0u;
  VisionKitConfigStorage.subscript.setter(&v13, v6, v7 | 0x8000000000000000);
  if (byte_1F54281A9 > 1u)
  {
    if (byte_1F54281A9 == 2)
    {
      v8 = 0xD000000000000017;
      v9 = "searchSectionsAsData";
    }

    else
    {
      v8 = 0xD000000000000010;
      v9 = "hasOnboardedImageSearch";
    }
  }

  else
  {
    if (byte_1F54281A9)
    {
      v8 = 0xD000000000000018;
    }

    else
    {
      v8 = 0xD00000000000001ELL;
    }

    if (byte_1F54281A9)
    {
      v9 = "isVisualLookUpEagerModeEnabled";
    }

    else
    {
      v9 = "dn't Try";
    }
  }

  v13 = 0u;
  v14 = 0u;
  VisionKitConfigStorage.subscript.setter(&v13, v8, v9 | 0x8000000000000000);
  if (byte_1F54281AA > 1u)
  {
    if (byte_1F54281AA == 2)
    {
      v10 = 0xD000000000000017;
      v11 = "searchSectionsAsData";
    }

    else
    {
      v10 = 0xD000000000000010;
      v11 = "hasOnboardedImageSearch";
    }
  }

  else if (byte_1F54281AA)
  {
    v10 = 0xD000000000000018;
    v11 = "isVisualLookUpEagerModeEnabled";
  }

  else
  {
    v10 = 0xD00000000000001ELL;
    v11 = "dn't Try";
  }

  v13 = 0u;
  v14 = 0u;
  VisionKitConfigStorage.subscript.setter(&v13, v10, v11 | 0x8000000000000000);
  if (byte_1F54281AB > 1u)
  {
    if (byte_1F54281AB == 2)
    {
      v0 = 0xD000000000000017;
      v2 = "searchSectionsAsData";
    }

    else
    {
      v2 = "hasOnboardedImageSearch";
    }
  }

  else if (byte_1F54281AB)
  {
    v0 = 0xD000000000000018;
    v2 = "isVisualLookUpEagerModeEnabled";
  }

  else
  {
    v0 = 0xD00000000000001ELL;
  }

  v13 = 0u;
  v14 = 0u;
  return VisionKitConfigStorage.subscript.setter(&v13, v0, v2 | 0x8000000000000000);
}

Swift::Void __swiftcall ConfigStorage.reset()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v1 + 16);
  v5 = 0u;
  v6 = 0u;
  v4(&v5, 0xD00000000000001ELL, 0x80000001D8B40140);
  v5 = 0u;
  v6 = 0u;
  (v4)(&v5, 0xD000000000000018, 0x80000001D8B40160, v3, v2);
  v5 = 0u;
  v6 = 0u;
  (v4)(&v5, 0xD000000000000017, 0x80000001D8B3FFA0, v3, v2);
  v5 = 0u;
  v6 = 0u;
  (v4)(&v5, 0xD000000000000010, 0x80000001D8B3FFC0, v3, v2);
}

VisualIntelligenceCore::ConfigStorageKey_optional __swiftcall ConfigStorageKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8B16930();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D895DC88()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

double sub_1D895DD40(uint64_t a1)
{
  sub_1D8B15A60();

  return result;
}

uint64_t sub_1D895DDE4(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

void sub_1D895DEA4(unint64_t *a1@<X8>)
{
  v2 = "searchSectionsAsData";
  v3 = 0xD000000000000017;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000010;
    v2 = "hasOnboardedImageSearch";
  }

  v4 = 0xD000000000000018;
  if (*v1)
  {
    v5 = "isVisualLookUpEagerModeEnabled";
  }

  else
  {
    v4 = 0xD00000000000001ELL;
    v5 = "dn't Try";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_1D895DF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1D8B16470();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  (*(v14 + 16))(&v20 - v15, a1, v13);
  v17 = *(a6 - 8);
  if ((*(v17 + 48))(v16, 1, a6) == 1)
  {
    (*(v14 + 8))(v16, v13);
    v20 = 0u;
    v21 = 0u;
  }

  else
  {
    *(&v21 + 1) = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
    (*(v17 + 32))(boxed_opaque_existential_1, v16, a6);
  }

  return (*(a7 + 16))(&v20, a2, a3, a5, a7);
}

unint64_t sub_1D895E0EC()
{
  result = qword_1ECA65EC8;
  if (!qword_1ECA65EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65EC8);
  }

  return result;
}

unint64_t sub_1D895E144()
{
  result = qword_1ECA65ED0;
  if (!qword_1ECA65ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65ED8, &qword_1D8B2D1C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65ED0);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D895E280(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650C0, &unk_1D8B2D030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D895E2F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650C0, &unk_1D8B2D030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D895E358(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1D8B04B90(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
  }

  else
  {
    v7 = sub_1D87EFF4C(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v14 = *v3;
      if (!v10)
      {
        sub_1D8967BA4();
        v11 = v14;
      }

      sub_1D8AF08D4(v9, v11, v12);
      *v3 = v11;
    }
  }
}

uint64_t sub_1D895E418(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A28, &unk_1D8B2D320);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A30, &qword_1D8B26080);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1D87A14E4(a1, &qword_1ECA64A28, &unk_1D8B2D320);
    sub_1D8AFD46C(a2);
    v12 = sub_1D8B13240();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1D87A14E4(v7, &qword_1ECA64A28, &unk_1D8B2D320);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D8B04DD8(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1D8B13240();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

void sub_1D895E64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1D8943B68(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_1D8B04FE8(v8, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v7;
  }

  else
  {
    sub_1D87A14E4(a1, &qword_1ECA650C0, &unk_1D8B2D030);
    sub_1D8AF0400(a2, a3, v8);

    sub_1D87A14E4(v8, &qword_1ECA650C0, &unk_1D8B2D030);
  }
}

uint64_t sub_1D895E71C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F08, &unk_1D8B2D2F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78, &unk_1D8B2D550);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1D87A14E4(a1, &qword_1ECA65F08, &unk_1D8B2D2F0);
    sub_1D8AFD470();
    sub_1D8960044(a2, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    return sub_1D87A14E4(v7, &qword_1ECA65F08, &unk_1D8B2D2F0);
  }

  else
  {
    sub_1D881F6FC(a1, v10, &qword_1ECA65B78, &unk_1D8B2D550);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1D8B05138(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1D8960044(a2, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_1D895E908(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A58, &qword_1D8B2D330);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A60, &qword_1D8B260B0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1D87A14E4(a1, &qword_1ECA64A58, &qword_1D8B2D330);
    sub_1D8AFD474(a2);
    v12 = sub_1D8B13240();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1D87A14E4(v7, &qword_1ECA64A58, &qword_1D8B2D330);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D8B05518(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1D8B13240();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1D895EB3C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A40, &unk_1D8B26090);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A48, &qword_1D8B2D630);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1D87A14E4(a1, &qword_1ECA64A40, &unk_1D8B26090);
    sub_1D8AFD478(a2);
    v12 = sub_1D8B13240();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1D87A14E4(v7, &qword_1ECA64A40, &unk_1D8B26090);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D8B05728(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1D8B13240();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1D895ED70(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A10, &unk_1D8B26060);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A18, &qword_1D8B2D610);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1D87A14E4(a1, &qword_1ECA64A10, &unk_1D8B26060);
    sub_1D8AFD47C(a2);
    v12 = sub_1D8B13240();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1D87A14E4(v7, &qword_1ECA64A10, &unk_1D8B26060);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D8B05938(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1D8B13240();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1D895EFA4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F10, &unk_1D8B2D300);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F18, &qword_1D8B2D570);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1D87A14E4(a1, &qword_1ECA65F10, &unk_1D8B2D300);
    sub_1D8AFD480(a2);
    v12 = sub_1D8B13240();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1D87A14E4(v7, &qword_1ECA65F10, &unk_1D8B2D300);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D8B05B48(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1D8B13240();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1D895F1D8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1D8788F40(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_1D8B05F64(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1D8960044(a2, type metadata accessor for BundleClassification.ClassificationType);
    *v2 = v6;
  }

  else
  {
    sub_1D87A14E4(a1, &qword_1ECA65F00, &qword_1D8B2D2E8);
    sub_1D8AF0658(a2, v7);
    sub_1D8960044(a2, type metadata accessor for BundleClassification.ClassificationType);
    return sub_1D87A14E4(v7, &qword_1ECA65F00, &qword_1D8B2D2E8);
  }

  return result;
}

uint64_t sub_1D895F2BC(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67970, &qword_1D8B2D318);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for CVDebugArtifactManager.BoresightState(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1D87A14E4(a1, &unk_1ECA67970, &qword_1D8B2D318);
    v13 = sub_1D87F05B0(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D896BB64();
        v17 = v22;
      }

      sub_1D89600A4(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for CVDebugArtifactManager.BoresightState);
      sub_1D8AF30D0(v15, v17, v18);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D87A14E4(v8, &unk_1ECA67970, &qword_1D8B2D318);
  }

  else
  {
    sub_1D89600A4(a1, v12, type metadata accessor for CVDebugArtifactManager.BoresightState);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1D8B06348(v12, v19, a2);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1D895F518(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  if (*(a1 + 24))
  {
    sub_1D8788F40(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_1D8B065BC(v15, v4, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
  }

  else
  {
    sub_1D87A14E4(a1, &unk_1ECA67D50, &qword_1D8B2D310);
    v7 = sub_1D881F7DC();
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v14 = *v3;
      if (!v10)
      {
        sub_1D896BF5C();
        v11 = v14;
      }

      sub_1D8788F40((*(v11 + 56) + 40 * v9), v15);
      sub_1D8AF3294(v9, v11, v12);
      *v3 = v11;
    }

    else
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
    }

    return sub_1D87A14E4(v15, &unk_1ECA67D50, &qword_1D8B2D310);
  }

  return result;
}

uint64_t sub_1D895F624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EF8, &qword_1D8B3ED40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B98, &qword_1D8B2BF20);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1D87A14E4(a1, &qword_1ECA65EF8, &qword_1D8B3ED40);
    v13 = sub_1D881F7DC();
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D896CCA0();
        v17 = v22;
      }

      sub_1D881F6FC(*(v17 + 56) + *(v10 + 72) * v15, v8, &qword_1ECA65B98, &qword_1D8B2BF20);
      sub_1D8AF3850(v15, v17, v18);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D87A14E4(v8, &qword_1ECA65EF8, &qword_1D8B3ED40);
  }

  else
  {
    sub_1D881F6FC(a1, v12, &qword_1ECA65B98, &qword_1D8B2BF20);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1D8B066EC(v12, v4, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1D895F878(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EF0, &qword_1D8B2D2E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1D87A14E4(a1, &qword_1ECA65EF0, &qword_1D8B2D2E0);
    sub_1D8AF0738(a2, v12);
    sub_1D8960044(a2, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    return sub_1D87A14E4(v7, &qword_1ECA65EF0, &qword_1D8B2D2E0);
  }

  else
  {
    sub_1D89600A4(a1, v10, type metadata accessor for TrackManager.TrackedProcessorState);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_1D8B06848(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1D8960044(a2, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    *v2 = v16;
  }

  return result;
}

uint64_t DictionaryConfigStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_1D893CABC(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}