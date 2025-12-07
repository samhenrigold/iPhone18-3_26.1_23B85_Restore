uint64_t sub_1C7318EB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryAnnotation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C7318FFC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C73190D8()
{
  result = qword_1EC21AA20;
  if (!qword_1EC21AA20)
  {
    result = swift_getWitnessTable(aX_0, &unk_1F46C2440, v0, v1);
    atomic_store(result, &qword_1EC21AA20);
  }

  return result;
}

unint64_t sub_1C7319130()
{
  result = qword_1EC21AA28;
  if (!qword_1EC21AA28)
  {
    result = swift_getWitnessTable(aQw_0, &type metadata for QueryAnnotation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21AA28);
  }

  return result;
}

unint64_t sub_1C7319188()
{
  result = qword_1EDD0F2E8;
  if (!qword_1EDD0F2E8)
  {
    result = swift_getWitnessTable(byte_1C7583668, &type metadata for QueryAnnotation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F2E8);
  }

  return result;
}

unint64_t sub_1C73191E0()
{
  result = qword_1EDD0F2F0;
  if (!qword_1EDD0F2F0)
  {
    result = swift_getWitnessTable(byte_1C7583690, &type metadata for QueryAnnotation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F2F0);
  }

  return result;
}

unint64_t sub_1C7319238()
{
  result = qword_1EDD0F3D0;
  if (!qword_1EDD0F3D0)
  {
    result = swift_getWitnessTable(aAe_1, &unk_1F46C2440, v0, v1);
    atomic_store(result, &qword_1EDD0F3D0);
  }

  return result;
}

unint64_t sub_1C7319290()
{
  result = qword_1EDD0F3D8;
  if (!qword_1EDD0F3D8)
  {
    result = swift_getWitnessTable(aYa_0, &unk_1F46C2440, v0, v1);
    atomic_store(result, &qword_1EDD0F3D8);
  }

  return result;
}

unint64_t sub_1C73192E4()
{
  result = qword_1EC21AA30;
  if (!qword_1EC21AA30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryAttributePropertyKey, &type metadata for QueryAttributePropertyKey, v0, v1);
    atomic_store(result, &qword_1EC21AA30);
  }

  return result;
}

unint64_t sub_1C7319338()
{
  result = qword_1EDD0F300;
  if (!qword_1EDD0F300)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QuerySortOrder, &type metadata for QuerySortOrder, v0, v1);
    atomic_store(result, &qword_1EDD0F300);
  }

  return result;
}

uint64_t sub_1C731938C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = a2;
  v21 = a1;
  OUTLINED_FUNCTION_23_38(&v21, a4, a5, a6, a7, a8, a9, a10, 0);
  MEMORY[0x1CCA5CD70](3943982, 0xE300000000000000);
  OUTLINED_FUNCTION_23_38(&v20, v10, v11, v12, v13, v14, v15, v16, v18);
  return v19;
}

uint64_t sub_1C7319464(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a2[3];
  v10 = a2[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_0(a2, v9);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = a4(a1, v14, a3, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v16;
}

uint64_t sub_1C7319574(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  *(v9 + 704) = v8;
  *(v9 + 696) = a7;
  *(v9 + 688) = a6;
  *(v9 + 680) = a5;
  *(v9 + 672) = a4;
  *(v9 + 664) = a2;
  *(v9 + 656) = a1;
  v12 = sub_1C754F38C();
  *(v9 + 712) = v12;
  *(v9 + 720) = *(v12 - 8);
  *(v9 + 728) = swift_task_alloc();
  *(v9 + 736) = swift_task_alloc();
  v13 = a3[1];
  *(v9 + 744) = *a3;
  *(v9 + 760) = v13;
  *(v9 + 832) = *a8;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C7319678()
{
  v123 = v0;
  v1 = *(v0 + 680);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v5 = 0;
  v6 = *(v0 + 664);
  v7 = *(v6 + 16);
  v8 = v6 + 32;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_5:
  *(v0 + 776) = v9;
  for (i = (v8 + 120 * v5); ; i += 120)
  {
    if (v7 == v5)
    {
      v15 = *(v0 + 704);
      v16 = [*(v15 + 16) photoAnalysisClient];
      *(v0 + 784) = v16;
      if (v16)
      {
        v22 = v16;
        v23 = *(v0 + 680);
        v24 = *(v0 + 672);
        v25 = *(v9 + 16);
        v26 = *(v0 + 760);
        __dst[0] = *(v0 + 744);
        __dst[1] = v26;
        StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(__dst, v24, v23, v17, v18, v19, v20, v21, v96, v97, v99, v100, v102, v104, v106, v108, v110, v112, v114, v116);
        v34 = *(v0 + 704);
        if (v25 | *(v27 + 16))
        {
          v113 = *(v27 + 16);
          v119 = v22;
          v35 = *(v0 + 680);
          v36 = sub_1C75504FC();
          v37 = sub_1C71CD85C(v36);
          v38 = *(v15 + 16);
          v39 = *(v34 + 24);
          v40 = *(v34 + 32);
          *&__dst[0] = v38;
          WORD4(__dst[0]) = v39;
          *&__dst[1] = v40;
          v41 = v38;

          v53 = sub_1C73DD2C4(v37, __dst, v35);
          v98 = v25;

          v103 = v53 + 64;
          v54 = -1;
          v55 = -1 << *(v53 + 32);
          if (-v55 < 64)
          {
            v54 = ~(-1 << -v55);
          }

          v56 = v54 & *(v53 + 64);
          v101 = (63 - v55) >> 6;
          v57 = sub_1C75504FC();
          v65 = 0;
          v66 = MEMORY[0x1E69E7CC8];
LABEL_27:
          *(v0 + 792) = v66;
          while (1)
          {
            if (v56)
            {
              goto LABEL_33;
            }

            do
            {
              v67 = v65 + 1;
              if (__OFADD__(v65, 1))
              {
                __break(1u);
LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
                return MEMORY[0x1EEE2A6A0](v57, v58, v59, v60, v61, v62, v63, v64);
              }

              if (v67 >= v101)
              {

                *(v0 + 800) = OBJC_IVAR____TtC18PhotosIntelligence22ExtendedTokenGenerator_logger;
                sub_1C75504FC();
                sub_1C75504FC();
                v84 = sub_1C754FEEC();
                v85 = sub_1C75511BC();
                if (os_log_type_enabled(v84, v85))
                {
                  v86 = v66;
                  v87 = swift_slowAlloc();
                  *v87 = 134218752;
                  *(v87 + 4) = v98;
                  *(v87 + 12) = 2048;
                  v88 = *(v53 + 16);

                  *(v87 + 14) = v88;

                  *(v87 + 22) = 2048;
                  *(v87 + 24) = v86[2];

                  *(v87 + 32) = 2048;
                  *(v87 + 34) = v113;
                  _os_log_impl(&dword_1C6F5C000, v84, v85, "Generating extended token collection with (%ld) unambiguous query tokens, %ld representative moments, %ld assets (out of %ld originally).", v87, 0x2Au);
                  OUTLINED_FUNCTION_10_1();
                  v89 = v119;
                }

                else
                {
                  swift_bridgeObjectRelease_n();

                  v89 = v119;
                  v86 = v66;
                }

                v90 = *(v0 + 704);
                v91 = v1[3];
                v92 = v1[4];
                __swift_project_boxed_opaque_existential_1(*(v0 + 680), v91);
                v93 = swift_task_alloc();
                *(v0 + 808) = v93;
                v93[2] = v9;
                v93[3] = v89;
                v93[4] = v90;
                v93[5] = v86;
                swift_task_alloc();
                OUTLINED_FUNCTION_48();
                *(v0 + 816) = v94;
                *v94 = v95;
                v94[1] = sub_1C731A10C;
                v125 = v92;
                v58 = "ExtendedTokenGenerator.requestExtendedTokens";
                v64 = &type metadata for ExtendedTokenCollection;
                v61 = &unk_1C75837D8;
                v57 = v0 + 256;
                v59 = 44;
                v60 = 2;
                v62 = v93;
                v63 = v91;

                return MEMORY[0x1EEE2A6A0](v57, v58, v59, v60, v61, v62, v63, v64);
              }

              v56 = *(v103 + 8 * v67);
              ++v65;
            }

            while (!v56);
            v65 = v67;
LABEL_33:
            v68 = __clz(__rbit64(v56));
            v56 &= v56 - 1;
            v69 = v68 | (v65 << 6);
            v70 = *(*(v53 + 56) + 8 * v69);
            v71 = *(v70 + 16);
            if (v71)
            {
              v72 = (*(v53 + 48) + 16 * v69);
              v109 = *v72;
              v121 = v72[1];
              sub_1C75504FC();
              v57 = sub_1C75504FC();
              v73 = 0;
              v74 = (v70 + 40);
              v111 = v53;
              v105 = v71;
              v107 = v70;
              while (1)
              {
                v117 = v73;
                if (v73 >= *(v70 + 16))
                {
                  goto LABEL_58;
                }

                v76 = *(v74 - 1);
                v75 = *v74;
                v115 = v74;
                sub_1C75504FC();
                sub_1C75504FC();
                swift_isUniquelyReferenced_nonNull_native();
                *&__dst[0] = v66;
                v118 = v76;
                v57 = sub_1C6F78124(v76, v75);
                v120 = v58;
                if (__OFADD__(v66[2], (v58 & 1) == 0))
                {
                  goto LABEL_59;
                }

                v77 = v57;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215328, &unk_1C758DBC0);
                v57 = sub_1C7551A2C();
                if (v57)
                {
                  v57 = sub_1C6F78124(v118, v75);
                  v53 = v111;
                  if ((v120 & 1) != (v58 & 1))
                  {
                    goto LABEL_54;
                  }

                  v77 = v57;
                  if ((v120 & 1) == 0)
                  {
LABEL_40:
                    v66 = *&__dst[0];
                    *(*&__dst[0] + 8 * (v77 >> 6) + 64) |= 1 << v77;
                    v78 = (v66[6] + 16 * v77);
                    *v78 = v118;
                    v78[1] = v75;
                    v79 = (v66[7] + 16 * v77);
                    *v79 = v109;
                    v79[1] = v121;
                    v80 = v66[2];
                    v81 = __OFADD__(v80, 1);
                    v82 = v80 + 1;
                    if (v81)
                    {
                      goto LABEL_60;
                    }

                    v66[2] = v82;
                    goto LABEL_44;
                  }
                }

                else
                {
                  v53 = v111;
                  if ((v120 & 1) == 0)
                  {
                    goto LABEL_40;
                  }
                }

                v66 = *&__dst[0];
                v83 = (*(*&__dst[0] + 56) + 16 * v77);
                *v83 = v109;
                v83[1] = v121;

LABEL_44:
                v70 = v107;
                v73 = v117 + 1;
                v74 = v115 + 2;
                if (v105 == v117 + 1)
                {

                  goto LABEL_27;
                }
              }
            }
          }
        }

        v42 = sub_1C754FEEC();
        v43 = sub_1C75511BC();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 134218240;
          *(v44 + 4) = 0;
          *(v44 + 12) = 2048;
          *(v44 + 14) = 0;
          _os_log_impl(&dword_1C6F5C000, v42, v43, "Cannot generate extended token collection without unambiguous query tokens (%ld) or assets (%ld).", v44, 0x16u);
          MEMORY[0x1CCA5F8E0](v44, -1, -1);
        }

        v45 = *(v0 + 736);
        v46 = *(v0 + 720);
        v47 = *(v0 + 712);
        v48 = *(v0 + 688);
        v49 = *(v0 + 680);
        v50 = *(v0 + 656);

        v51 = MEMORY[0x1E69E7CC0];
        *v50 = MEMORY[0x1E69E7CC0];
        v50[1] = v51;
        v50[2] = v51;
        v50[3] = v51;
        v50[4] = v51;
        v50[5] = v51;
        v50[6] = v51;
        v50[7] = v51;
        v50[8] = v51;
        v50[9] = v51;
        OUTLINED_FUNCTION_80_0(v49, v1[3]);
        sub_1C754F1AC();
        (*(v46 + 8))(v45, v47);
        sub_1C754F2FC();
        OUTLINED_FUNCTION_3();
        (*(v52 + 8))(v48);
        OUTLINED_FUNCTION_9_71();

        OUTLINED_FUNCTION_43();
      }

      else
      {
        v28 = *(v0 + 736);
        v29 = *(v0 + 720);
        v30 = *(v0 + 712);
        v31 = *(v0 + 688);
        v32 = *(v0 + 680);

        sub_1C731B334();
        swift_allocError();
        *v33 = 1;
        swift_willThrow();
        __swift_project_boxed_opaque_existential_1(v32, v1[3]);
        sub_1C754F1AC();
        (*(v29 + 8))(v28, v30);
        sub_1C754F2FC();
        OUTLINED_FUNCTION_3();
        (*(v2 + 8))(v31);
        OUTLINED_FUNCTION_9_71();

        OUTLINED_FUNCTION_43();
      }

      return v3();
    }

    if (v5 >= v7)
    {
      break;
    }

    memcpy((v0 + 16), i, 0x78uLL);
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_53;
    }

    memcpy(__dst, i, 0x78uLL);
    sub_1C6FCA6E4(v0 + 16, v0 + 136);
    sub_1C72D36F8();
    if (v12 != 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C716D7D8(0, *(v9 + 16) + 1, 1);
      }

      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1C716D7D8(v13 > 1, v14 + 1, 1);
      }

      *(v9 + 16) = v14 + 1;
      memcpy((v9 + 120 * v14 + 32), (v0 + 16), 0x78uLL);
      v5 = v11;
      goto LABEL_5;
    }

    sub_1C6FDD548(v0 + 16);
    ++v5;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:

  return sub_1C7551E4C();
}

uint64_t sub_1C731A10C()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v3 + 824) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C731A24C()
{
  v34 = v0;
  v1 = *(v0 + 696);
  memcpy((v0 + 336), (v0 + 256), 0x50uLL);
  v2 = *(v0 + 824);
  if (v1)
  {
    v3 = *(v0 + 832);
    __swift_project_boxed_opaque_existential_1(*(v0 + 680), *(*(v0 + 680) + 24));

    sub_1C754F1CC();
    memcpy(__dst, (v0 + 336), 0x50uLL);
    LOBYTE(v32) = v3;
    static ExtendedTokenDiagnosticsGenerator.save(extendedTokens:diagnosticsFileType:in:)(__dst, &v32, v4);
    if (v2)
    {
      v5 = v2;
      v6 = sub_1C754FEEC();
      v7 = sub_1C755119C();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        v10 = v2;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_1C6F5C000, v6, v7, "Failed to save extended token diagnostics: %@", v8, 0xCu);
        sub_1C6FC15D8(v9);
        MEMORY[0x1CCA5F8E0](v9, -1, -1);
        OUTLINED_FUNCTION_10_1();
      }

      else
      {
      }
    }

    v12 = *(v0 + 728);
    v13 = *(v0 + 720);
    v14 = *(v0 + 712);
    OUTLINED_FUNCTION_80_0(*(v0 + 680), *(*(v0 + 680) + 24));
    sub_1C754F1AC();

    (*(v13 + 8))(v12, v14);
    v2 = 0;
  }

  sub_1C7027A20(v0 + 336, v0 + 416);
  v15 = sub_1C754FEEC();
  v16 = sub_1C75511BC();
  sub_1C7027A58(v0 + 336);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v17 = 136380675;
    memcpy(__dst, (v0 + 336), 0x50uLL);
    sub_1C7027A20(v0 + 336, v0 + 576);
    ExtendedTokenCollection.description.getter();
    v20 = v19;
    v22 = v21;
    memcpy((v0 + 496), __dst, 0x50uLL);
    sub_1C7027A58(v0 + 496);
    v23 = sub_1C6F765A4(v20, v22, &v32);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_1C6F5C000, v15, v16, "Generated extended tokens %{private}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1CCA5F8E0](v18, -1, -1);
    OUTLINED_FUNCTION_10_1();
  }

  sub_1C754F2EC();
  v24 = *(v0 + 784);
  v25 = *(v0 + 736);
  v26 = *(v0 + 720);
  v27 = *(v0 + 712);
  v28 = *(v0 + 680);
  if (v2)
  {
    sub_1C7027A58(v0 + 336);
  }

  else
  {
    v30 = *(v0 + 656);

    memcpy(v30, (v0 + 336), 0x50uLL);
  }

  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1C754F1AC();
  (*(v26 + 8))(v25, v27);

  OUTLINED_FUNCTION_9_71();

  OUTLINED_FUNCTION_43();

  return v29();
}

uint64_t sub_1C731A684()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 720);
  v3 = *(v0 + 712);
  v4 = *(v0 + 688);
  v5 = *(v0 + 680);

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v4);

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C731A78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  type metadata accessor for PhotoAnalysisMomentGraphService(0);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C731A824, 0, 0);
}

uint64_t sub_1C731A824()
{
  v1 = v0[11];
  sub_1C754DBCC();
  swift_allocObject();
  v2 = sub_1C754DBBC();
  v0[9] = v1;
  v0[16] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219068, &qword_1C7576920);
  sub_1C72729E4();
  v0[17] = sub_1C754DBAC();
  v0[18] = v3;
  v4 = [objc_allocWithZone(MEMORY[0x1E69BE620]) initWithServiceProvider_];
  if (qword_1EC213F98 != -1)
  {
    swift_once();
  }

  v5 = v0[15];
  v6 = v0[13];
  v7 = sub_1C754FF1C();
  v8 = __swift_project_value_buffer(v7, qword_1EC219F58);
  (*(*(v7 - 8) + 16))(v5, v8, v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20, &qword_1C75601D0);
  v10 = (v5 + *(v9 + 28));
  v11 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v12 = [v11 processName];

  v13 = sub_1C755068C();
  v15 = v14;

  *v10 = v13;
  v10[1] = v15;
  *(v5 + *(v9 + 32)) = v4;
  v16 = v6[8];
  v17 = v6[9];
  v21 = (OUTLINED_FUNCTION_80_0(v6 + 5, v16) + 96);
  v22 = (*v21 + **v21);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[19] = v18;
  *v18 = v19;
  v18[1] = sub_1C731AB34;

  return v22(v0 + 2, v16, v17);
}

uint64_t sub_1C731AB34()
{
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C731AC20()
{
  v11 = *(v0 + 136);
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  v5 = (*(v4 + 24))(v3, v4);
  *(v0 + 160) = v5;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v6 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *(v7 + 16) = v11;
  *(v7 + 32) = v1;
  *(v7 + 40) = v5;
  *(v7 + 48) = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 176) = v8;
  *v8 = v9;
  v8[1] = sub_1C731AD6C;

  return sub_1C7299A58(v0 + 56, 0xD00000000000001ELL, 0x80000001C75A88A0, &unk_1C757E7B0, v7, 0, 0);
}

uint64_t sub_1C731AD6C()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v3 + 184) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C731AE80()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_1C754DB8C();
  swift_allocObject();
  sub_1C754DB7C();
  sub_1C70F8328();
  sub_1C754DB5C();
  v4 = v0[17];
  v3 = v0[18];
  sub_1C6FF6930(v0[15]);

  sub_1C6FC1640(v1, v2);
  sub_1C6FC1640(v4, v3);

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C731AFA4()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];

  sub_1C6FC1640(v2, v1);

  sub_1C6FF6930(v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t ExtendedTokenGenerator.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  v2 = OBJC_IVAR____TtC18PhotosIntelligence22ExtendedTokenGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0 + v2);
  return v0;
}

uint64_t ExtendedTokenGenerator.__deallocating_deinit()
{
  ExtendedTokenGenerator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C731B114(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ExtendedTokenGenerator(0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a2, a5);
  v15 = sub_1C731B240(a1, v13, a3, v14, a5, a6);
  (*(v11 + 8))(a2, a5);
  return v15;
}

uint64_t sub_1C731B240(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a5;
  v17 = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v15);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a2, a5);
  v12 = *a1;
  LOWORD(a2) = *(a1 + 4);
  v13 = a1[2];
  sub_1C754FEFC();
  *(a4 + 16) = v12;
  *(a4 + 24) = a2;
  *(a4 + 32) = v13;
  sub_1C6F699F8(&v15, a4 + 40);
  *(a4 + 80) = a3;
  return a4;
}

unint64_t sub_1C731B334()
{
  result = qword_1EC21AA38;
  if (!qword_1EC21AA38)
  {
    result = swift_getWitnessTable(byte_1C75838E0, &type metadata for ExtendedTokenGenerator.Error, v0, v1);
    atomic_store(result, &qword_1EC21AA38);
  }

  return result;
}

uint64_t sub_1C731B388(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1C731B444;

  return sub_1C731A78C(a1, v4, v5, v7, v6);
}

uint64_t sub_1C731B444()
{
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t type metadata accessor for ExtendedTokenGenerator(uint64_t a1)
{
  result = qword_1EDD09E08;
  if (!qword_1EDD09E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C731B57C(uint64_t a1)
{
  result = sub_1C754FF1C();
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

uint64_t dispatch thunk of ExtendedTokenGenerator.generate(from:extendedRetrievedAssets:assetPertinenceFilter:eventRecorder:progressReporter:storyGenerationDiagnosticContext:diagnosticsFileType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = (*(*v8 + 120) + **(*v8 + 120));
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v9 + 16) = v18;
  *v18 = v19;
  v18[1] = sub_1C731B900;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

_BYTE *storeEnumTagSinglePayload for ExtendedTokenGenerator.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C731B8AC()
{
  result = qword_1EC21AA40;
  if (!qword_1EC21AA40)
  {
    result = swift_getWitnessTable(byte_1C75838B8, &type metadata for ExtendedTokenGenerator.Error, v0, v1);
    atomic_store(result, &qword_1EC21AA40);
  }

  return result;
}

uint64_t SafetyBundle.init(guardrails:inputDenyLists:userRequestIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v60 = a3;
  v59 = a4;
  v6 = sub_1C754EABC();
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v64 = v9 - v8;
  OUTLINED_FUNCTION_37_3();
  v10 = sub_1C754EC7C();
  v11 = OUTLINED_FUNCTION_76(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_0();
  v63 = v13 - v12;
  OUTLINED_FUNCTION_37_3();
  v14 = sub_1C754EC9C();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_2();
  v67 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v66 = &v58 - v20;
  OUTLINED_FUNCTION_37_3();
  sub_1C754EBCC();
  OUTLINED_FUNCTION_3_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14_0();
  v26 = v25 - v24;
  v27 = sub_1C754EBDC();
  v28 = OUTLINED_FUNCTION_76(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_14_0();
  v29 = sub_1C754EC1C();
  v30 = OUTLINED_FUNCTION_76(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_23_39();
  v58 = a1;
  v32 = *(a1 + 16);
  v61 = a2;
  if (v32)
  {
    v62 = v31;
    v65 = v16;
    OUTLINED_FUNCTION_32_31(MEMORY[0x1E69E7CC0]);
    do
    {
      sub_1C754EBBC();
      OUTLINED_FUNCTION_41_34();
      if (v34)
      {
        OUTLINED_FUNCTION_29_33(v33);
      }

      v35 = OUTLINED_FUNCTION_7_66();
      v36(v35);
      --v32;
    }

    while (v32);
    sub_1C754EBAC();
    sub_1C754EC0C();
    OUTLINED_FUNCTION_44_27(&off_1F46C24E0);
    sub_1C754EC2C();
    sub_1C731E63C(v69);
    OUTLINED_FUNCTION_27_39();
    a2 = v61;
    v16 = v65;
  }

  v37 = *(a2 + 16);
  if (v37)
  {
    v38 = (a2 + 32);
    v65 = v16 + 2;
    v39 = (v16 + 1);
    v40 = MEMORY[0x1E69E7CC0];
    v62 = v14;
    do
    {
      if (*v38)
      {
        sub_1C754E3CC();
      }

      else
      {
        sub_1C754E3BC();
      }

      v41 = OUTLINED_FUNCTION_25_38();
      (*(*(v26 - 8) + 16))(v41, v32, v26);
      OUTLINED_FUNCTION_45_27();
      OUTLINED_FUNCTION_39_32();
      MEMORY[0x1EEE9AC00](v42);
      OUTLINED_FUNCTION_14_0();
      v44 = OUTLINED_FUNCTION_22_52(v43);
      v45(v44);
      MEMORY[0x1CCA5AFC0](v22, v26, v32);
      sub_1C754EC6C();
      __swift_destroy_boxed_opaque_existential_1(v68);
      v46 = v66;
      sub_1C754EC8C();
      v32 = *v65;
      v47 = v62;
      (*v65)(v67, v46, v62);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_31_35();
        v40 = v51;
      }

      v22 = *(v40 + 16);
      v26 = v22 + 1;
      if (v22 >= *(v40 + 24) >> 1)
      {
        OUTLINED_FUNCTION_28_29();
        v40 = v52;
      }

      v48 = *v39;
      (*v39)(v66, v47);
      v49 = OUTLINED_FUNCTION_44_27(&off_1F46C24E0);
      v50 = v67;
      (v32)(v49, v67, v47);
      OUTLINED_FUNCTION_33_31();
      v48(v50, v47);
      ++v38;
      --v37;
    }

    while (v37);
  }

  v53 = v59;
  *v59 = 0;
  v54 = v61;
  *(v53 + 1) = v58;
  *(v53 + 2) = v54;
  *(v53 + 3) = MEMORY[0x1E69E7CC0];
  v55 = *(OUTLINED_FUNCTION_30_35() + 40);
  sub_1C754DFFC();
  OUTLINED_FUNCTION_84_0();
  return (*(v56 + 32))(&v53[v55], v60);
}

uint64_t SafetyBundle.init(guardrails:outputDenyLists:userRequestIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v62 = a3;
  v61 = a4;
  v6 = sub_1C754EADC();
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v66 = v9 - v8;
  OUTLINED_FUNCTION_37_3();
  v10 = sub_1C754EB7C();
  v11 = OUTLINED_FUNCTION_76(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_0();
  v65 = v13 - v12;
  OUTLINED_FUNCTION_37_3();
  v14 = sub_1C754EB9C();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_2();
  v64 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v59 - v20;
  OUTLINED_FUNCTION_37_3();
  sub_1C754EBCC();
  OUTLINED_FUNCTION_3_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14_0();
  v26 = v25 - v24;
  v27 = sub_1C754EBDC();
  v28 = OUTLINED_FUNCTION_76(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_14_0();
  v29 = sub_1C754EB1C();
  v30 = OUTLINED_FUNCTION_76(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_23_39();
  v60 = a1;
  v32 = *(a1 + 16);
  v63 = a2;
  if (v32)
  {
    v59 = v31;
    v67 = v16;
    OUTLINED_FUNCTION_32_31(MEMORY[0x1E69E7CC0]);
    do
    {
      sub_1C754EBBC();
      OUTLINED_FUNCTION_41_34();
      if (v34)
      {
        OUTLINED_FUNCTION_29_33(v33);
      }

      v35 = OUTLINED_FUNCTION_7_66();
      v36(v35);
      --v32;
    }

    while (v32);
    sub_1C754EBAC();
    sub_1C754EB0C();
    OUTLINED_FUNCTION_44_27(&off_1F46C24F8);
    sub_1C754EB2C();
    sub_1C731E63C(v70);
    OUTLINED_FUNCTION_27_39();
    a2 = v63;
    v16 = v67;
  }

  v37 = *(a2 + 16);
  if (v37)
  {
    v38 = (a2 + 32);
    v39 = (v16 + 16);
    v40 = (v16 + 8);
    v41 = MEMORY[0x1E69E7CC0];
    do
    {
      v42 = *v38;
      v67 = v38 + 1;
      switch(v42)
      {
        case 1:
          sub_1C754E40C();
          break;
        case 2:
          sub_1C754E3FC();
          break;
        case 3:
          sub_1C754E41C();
          break;
        case 4:
          sub_1C754E3EC();
          break;
        default:
          sub_1C754E3DC();
          break;
      }

      v43 = OUTLINED_FUNCTION_25_38();
      (*(*(v26 - 8) + 16))(v43, v32, v26);
      OUTLINED_FUNCTION_45_27();
      OUTLINED_FUNCTION_39_32();
      MEMORY[0x1EEE9AC00](v44);
      OUTLINED_FUNCTION_14_0();
      v46 = OUTLINED_FUNCTION_22_52(v45);
      v47(v46);
      MEMORY[0x1CCA5AFE0](v22, v26, v32);
      sub_1C754EB6C();
      __swift_destroy_boxed_opaque_existential_1(v69);
      v48 = v68;
      sub_1C754EB8C();
      v32 = *v39;
      v49 = v64;
      (*v39)(v64, v48, v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_31_35();
        v41 = v52;
      }

      v22 = *(v41 + 16);
      v26 = v22 + 1;
      if (v22 >= *(v41 + 24) >> 1)
      {
        OUTLINED_FUNCTION_28_29();
        v41 = v53;
      }

      v50 = *v40;
      (*v40)(v68, v14);
      v51 = OUTLINED_FUNCTION_44_27(&off_1F46C24F8);
      (v32)(v51, v49, v14);
      OUTLINED_FUNCTION_33_31();
      v50(v49, v14);
      --v37;
      v38 = v67;
    }

    while (v37);
  }

  v54 = v61;
  *v61 = 1;
  *(v54 + 1) = v60;
  v55 = v63;
  *(v54 + 2) = MEMORY[0x1E69E7CC0];
  *(v54 + 3) = v55;
  v56 = *(OUTLINED_FUNCTION_30_35() + 40);
  sub_1C754DFFC();
  OUTLINED_FUNCTION_84_0();
  return (*(v57 + 32))(&v54[v56], v62);
}

Swift::Void __swiftcall SafetyBundle.prewarm(useCaseIdentifier:)(PhotosIntelligence::LLMUseCaseIdentifier useCaseIdentifier)
{
  v2 = *useCaseIdentifier;
  sub_1C731E6A4(v1 + 32, &v11);
  if (v12)
  {
    sub_1C6FD80E4(&v11, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215100, &unk_1C755C310);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1C755BAB0;
    sub_1C6FB5E28(v13, v3 + 32);
    *&v11 = v3;
    sub_1C75504FC();
    sub_1C6FD246C();
    __swift_destroy_boxed_opaque_existential_1(v13);
    v4 = v11;
  }

  else
  {
    sub_1C731E63C(&v11);
    v4 = sub_1C75504FC();
  }

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_1C6FB5E28(v6, v13);
      v7 = v14;
      v8 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v9 = 0xE500000000000000;
      v10 = 0x726568746FLL;
      switch(v2)
      {
        case 1:
          v10 = 0xD000000000000021;
          v9 = 0x80000001C7596920;
          break;
        case 2:
          v10 = 0xD00000000000001BLL;
          v9 = 0x80000001C7596950;
          break;
        case 3:
          v10 = 0xD00000000000001ALL;
          v9 = 0x80000001C7596970;
          break;
        case 4:
          v10 = 0xD00000000000001CLL;
          v9 = 0x80000001C7596990;
          break;
        case 5:
          v10 = 0xD000000000000014;
          v9 = 0x80000001C75969B0;
          break;
        case 6:
          v10 = 0xD000000000000023;
          v9 = 0x80000001C75969D0;
          break;
        case 7:
          break;
        default:
          v10 = 0xD000000000000020;
          v9 = 0x80000001C75968F0;
          break;
      }

      (*(v8 + 16))(v10, v9, v7, v8);

      __swift_destroy_boxed_opaque_existential_1(v13);
      v6 += 40;
      --v5;
    }

    while (v5);
  }
}

uint64_t SafetyBundle.scrub(_:useCaseIdentifier:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 192) = v4;
  *(v1 + 200) = v0;
  *(v1 + 184) = v5;
  v6 = sub_1C754D84C();
  *(v1 + 208) = v6;
  OUTLINED_FUNCTION_18(v6);
  *(v1 + 216) = v7;
  *(v1 + 224) = OUTLINED_FUNCTION_77();
  *(v1 + 314) = *v3;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C731C6A0()
{
  OUTLINED_FUNCTION_123();
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  *(v0 + 168) = v2;
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 208);
  *(v0 + 176) = v1;
  sub_1C754D7BC();
  sub_1C6FB5E8C();
  v7 = sub_1C755154C();
  v9 = v8;
  (*(v5 + 8))(v4, v6);
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 == 0xE000000000000000;
  }

  if (v10)
  {

    goto LABEL_12;
  }

  v11 = sub_1C7551DBC();

  if (v11)
  {
LABEL_12:
    v19 = *(v0 + 192);
    sub_1C75504FC();
    v20 = *(v0 + 184);
    goto LABEL_13;
  }

  v12 = *(v0 + 200);
  v13 = *(v12 + 72);
  if (*(v13 + 16))
  {
    *(v0 + 313) = *(v0 + 314);
    v14 = swift_task_alloc();
    *(v0 + 232) = v14;
    *v14 = v0;
    v14[1] = sub_1C731C920;
    v15 = *(v0 + 192);
    v16 = (v0 + 313);
    v17 = *(v0 + 184);
    v18 = v13;
LABEL_18:

    return sub_1C731DF78(v17, v15, v18, v16);
  }

  v20 = *(v0 + 184);
  v19 = *(v0 + 192);
  *(v0 + 264) = v19;
  sub_1C75504FC();
  sub_1C731E6A4(v12 + 32, v0 + 128);
  if (*(v0 + 152))
  {
    v23 = *(v0 + 314);
    sub_1C6FD80E4((v0 + 128), v0 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215100, &unk_1C755C310);
    inited = swift_initStackObject();
    *(v0 + 272) = inited;
    *(inited + 16) = xmmword_1C755BAB0;
    sub_1C6FB5E28(v0 + 88, inited + 32);
    *(v0 + 312) = v23;
    v25 = swift_task_alloc();
    *(v0 + 280) = v25;
    *v25 = v0;
    OUTLINED_FUNCTION_5_73(v25);
    v17 = v20;
    v15 = v19;
    v18 = inited;
    goto LABEL_18;
  }

  sub_1C731E63C(v0 + 128);
LABEL_13:

  OUTLINED_FUNCTION_82_0();

  return v21(v20, v19);
}

uint64_t sub_1C731C920()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_10_5();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  v5[30] = v1;

  if (!v1)
  {
    v5[31] = v0;
    v5[32] = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C731CA38()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  *(v0 + 264) = v1;
  sub_1C731E6A4(*(v0 + 200) + 32, v0 + 128);
  if (*(v0 + 152))
  {
    v3 = *(v0 + 314);
    sub_1C6FD80E4((v0 + 128), v0 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215100, &unk_1C755C310);
    inited = swift_initStackObject();
    *(v0 + 272) = inited;
    *(inited + 16) = xmmword_1C755BAB0;
    sub_1C6FB5E28(v0 + 88, inited + 32);
    *(v0 + 312) = v3;
    v5 = swift_task_alloc();
    *(v0 + 280) = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_5_73(v5);

    return sub_1C731DF78(v2, v1, inited, v6);
  }

  else
  {
    sub_1C731E63C(v0 + 128);

    OUTLINED_FUNCTION_82_0();

    return v8(v2, v1);
  }
}

uint64_t sub_1C731CB78()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_10_5();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  v5[36] = v1;

  if (!v1)
  {
    v5[37] = v0;
    v5[38] = v3;
  }

  swift_setDeallocating();
  sub_1C6FDC978();

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C731CCBC()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  v1 = v0[37];
  v2 = v0[38];

  OUTLINED_FUNCTION_82_0();

  return v3(v2, v1);
}

uint64_t sub_1C731CD2C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C731CD88()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C731CDEC()
{
  OUTLINED_FUNCTION_42();
  v6 = OUTLINED_FUNCTION_43_31(v1, v2, v3, v4, v5);
  v0[8] = v6;
  OUTLINED_FUNCTION_18(v6);
  v0[9] = v7;
  v0[10] = OUTLINED_FUNCTION_77();
  v8 = sub_1C754EC4C();
  v0[11] = v8;
  OUTLINED_FUNCTION_18(v8);
  v0[12] = v9;
  v0[13] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C731CED8()
{
  OUTLINED_FUNCTION_123();
  v1 = OUTLINED_FUNCTION_12_59();
  v2(v1);
  v3 = objc_opt_self();
  sub_1C75504FC();
  v4 = [v3 processInfo];
  [v4 processIdentifier];

  OUTLINED_FUNCTION_20_50();
  sub_1C754EC3C();
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_17_64(v5);

  return MEMORY[0x1EEE0B2A8](v6);
}

uint64_t sub_1C731CFD0()
{
  OUTLINED_FUNCTION_36_27();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v0;

  if (!v0)
  {
    v10 = OUTLINED_FUNCTION_42_30();
    v11(v10);

    OUTLINED_FUNCTION_16_54();
    OUTLINED_FUNCTION_88_0();

    __asm { BRAA            X3, X16 }
  }

  v4 = OUTLINED_FUNCTION_42_30();
  v5(v4);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C731D174()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C731EDBC;

  return sub_1C731CDEC();
}

uint64_t sub_1C731D28C()
{
  OUTLINED_FUNCTION_42();
  v6 = OUTLINED_FUNCTION_43_31(v1, v2, v3, v4, v5);
  v0[8] = v6;
  OUTLINED_FUNCTION_18(v6);
  v0[9] = v7;
  v0[10] = OUTLINED_FUNCTION_77();
  v8 = sub_1C754EB4C();
  v0[11] = v8;
  OUTLINED_FUNCTION_18(v8);
  v0[12] = v9;
  v0[13] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C731D378()
{
  OUTLINED_FUNCTION_123();
  v1 = OUTLINED_FUNCTION_12_59();
  v2(v1);
  v3 = objc_opt_self();
  sub_1C75504FC();
  v4 = [v3 processInfo];
  [v4 processIdentifier];

  OUTLINED_FUNCTION_20_50();
  sub_1C754EB3C();
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_17_64(v5);

  return MEMORY[0x1EEE0B268](v6);
}

uint64_t sub_1C731D470()
{
  OUTLINED_FUNCTION_36_27();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v0;

  if (!v0)
  {
    v10 = OUTLINED_FUNCTION_42_30();
    v11(v10);

    OUTLINED_FUNCTION_16_54();
    OUTLINED_FUNCTION_88_0();

    __asm { BRAA            X3, X16 }
  }

  v4 = OUTLINED_FUNCTION_42_30();
  v5(v4);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C731D614()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C731D67C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t, uint64_t, id), void (*a5)(char *))
{
  v9 = a3(0);
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  v15 = objc_opt_self();
  sub_1C75504FC();
  v16 = [v15 processInfo];
  v17 = [v16 processIdentifier];

  a4(a1, a2, v17);
  a5(v14);
  return (*(v11 + 8))(v14, v9);
}

uint64_t sub_1C731D7BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C731D880;

  return sub_1C731D28C();
}

uint64_t sub_1C731D880(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  OUTLINED_FUNCTION_14();
  *v7 = v6;

  OUTLINED_FUNCTION_82_0();
  if (!v2)
  {
    v8 = a1;
    v9 = a2;
  }

  return v10(v8, v9);
}

uint64_t SafetyBundle.Guardrail.init(rawValue:)()
{
  OUTLINED_FUNCTION_29_0();
  v1 = sub_1C7551B2C();

  *v0 = v1 != 0;
  return result;
}

unint64_t sub_1C731DA5C@<X0>(void *a1@<X8>)
{
  result = SafetyBundle.Guardrail.rawValue.getter();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

PhotosIntelligence::SafetyBundle::InputDenyList_optional __swiftcall SafetyBundle.InputDenyList.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_29_0();
  v2 = sub_1C7551B2C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t SafetyBundle.InputDenyList.rawValue.getter()
{
  if (*v0)
  {
    return 0x6D6F725072657375;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t sub_1C731DB60@<X0>(uint64_t *a1@<X8>)
{
  result = SafetyBundle.InputDenyList.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

PhotosIntelligence::SafetyBundle::OutputDenyList_optional __swiftcall SafetyBundle.OutputDenyList.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_29_0();
  v2 = sub_1C7551B2C();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t SafetyBundle.OutputDenyList.rawValue.getter()
{
  result = 1702060386;
  switch(*v0)
  {
    case 1:
      result = 0x7469617274;
      break;
    case 2:
      result = 0x74695479726F7473;
      break;
    case 3:
      result = 0x6E6F53636973756DLL;
      break;
    case 4:
      result = 0x76697469736E6573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C731DCC4@<X0>(uint64_t *a1@<X8>)
{
  result = SafetyBundle.OutputDenyList.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SafetyBundle.debugDescription.getter()
{
  v1 = 1701736302;
  v2 = *(*(v0 + 8) + 16);
  if (*v0)
  {
    if (v2)
    {
      v3 = MEMORY[0x1CCA5D090]();
      v5 = v4;
    }

    else
    {
      v5 = 0xE400000000000000;
      v3 = 1701736302;
    }

    v7 = "edTokenGenerator";
    if (*(*(v0 + 24) + 16))
    {
      v1 = MEMORY[0x1CCA5D090]();
      v9 = v8;
    }

    else
    {
      v9 = 0xE400000000000000;
    }

    v10 = 0xD000000000000027;
  }

  else
  {
    if (v2)
    {
      v3 = MEMORY[0x1CCA5D090]();
      v5 = v6;
    }

    else
    {
      v5 = 0xE400000000000000;
      v3 = 1701736302;
    }

    v7 = "\nuserRequestIdentifier: ";
    v10 = 0xD00000000000002CLL;
    if (*(*(v0 + 16) + 16))
    {
      v1 = MEMORY[0x1CCA5D090]();
      v9 = v11;
    }

    else
    {
      v9 = 0xE400000000000000;
    }
  }

  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x7542797465666153, 0xEE00203A656C646ELL);
  MEMORY[0x1CCA5CD70](v10, v7 | 0x8000000000000000);

  MEMORY[0x1CCA5CD70](0x617264726175470ALL, 0xED0000203A736C69);
  MEMORY[0x1CCA5CD70](v3, v5);

  MEMORY[0x1CCA5CD70](0x696C20796E65440ALL, 0xED0000203A737473);
  MEMORY[0x1CCA5CD70](v1, v9);

  MEMORY[0x1CCA5CD70](0xD000000000000018, 0x80000001C75AACF0);
  type metadata accessor for SafetyBundle(0);
  sub_1C754DFFC();
  sub_1C712A6F8();
  v12 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v12);

  return 0;
}

uint64_t sub_1C731DF78(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = v4;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  *(v5 + 156) = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1C731DFA4, 0, 0);
}

void sub_1C731DFA4()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  *(v0 + 88) = v2;
  if (v2)
  {
    v3 = *(v0 + 64);
    *(v0 + 152) = *(type metadata accessor for SafetyBundle(0) + 40);
    *(v0 + 96) = v3;
    *(v0 + 104) = 0;
    sub_1C75504FC();
    sub_1C6FB5E28(v1 + 32, v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_15_61();
    switch(v4)
    {
      case 5:
      case 7:
        break;
      default:
        OUTLINED_FUNCTION_0_140();
        break;
    }

    OUTLINED_FUNCTION_8_68();
    v7 = swift_task_alloc();
    *(v0 + 120) = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_6_79(v7);
    OUTLINED_FUNCTION_13_64();
    OUTLINED_FUNCTION_17_1();

    __asm { BRAA            X7, X16 }
  }

  OUTLINED_FUNCTION_43();
  sub_1C75504FC();
  OUTLINED_FUNCTION_17_1();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C731E1EC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *v7 = *v3;
  v6[16] = v2;

  if (!v2)
  {
    v6[17] = a2;
    v6[18] = a1;
  }

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1C731E358()
{
  v1 = v0[11];
  v2 = v0[13] + 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v2 == v1)
  {
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_17_1();

    __asm { BRAA            X3, X16 }
  }

  v5 = v0[13];
  v0[12] = v0[17];
  v0[13] = v5 + 1;
  sub_1C6FB5E28(v0[9] + 40 * v5 + 72, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_15_61();
  switch(v6)
  {
    case 5:
    case 7:
      break;
    default:
      OUTLINED_FUNCTION_0_140();
      break;
  }

  OUTLINED_FUNCTION_8_68();
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_6_79(v7);
  OUTLINED_FUNCTION_13_64();
  OUTLINED_FUNCTION_17_1();

  __asm { BRAA            X7, X16 }
}

uint64_t sub_1C731E590()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t type metadata accessor for SafetyBundle(uint64_t a1)
{
  result = qword_1EC21AA90;
  if (!qword_1EC21AA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C731E63C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2154F0, &unk_1C7583920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C731E6A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2154F0, &unk_1C7583920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C731E718()
{
  result = qword_1EC21AA48;
  if (!qword_1EC21AA48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SafetyBundle.Guardrail, &type metadata for SafetyBundle.Guardrail, v0, v1);
    atomic_store(result, &qword_1EC21AA48);
  }

  return result;
}

unint64_t sub_1C731E7A0()
{
  result = qword_1EC21AA60;
  if (!qword_1EC21AA60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SafetyBundle.InputDenyList, &type metadata for SafetyBundle.InputDenyList, v0, v1);
    atomic_store(result, &qword_1EC21AA60);
  }

  return result;
}

unint64_t sub_1C731E828()
{
  result = qword_1EC21AA78;
  if (!qword_1EC21AA78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SafetyBundle.OutputDenyList, &type metadata for SafetyBundle.OutputDenyList, v0, v1);
    atomic_store(result, &qword_1EC21AA78);
  }

  return result;
}

void sub_1C731E8D4(uint64_t a1)
{
  sub_1C731EA30(319, &qword_1EC21AAA0, &type metadata for SafetyBundle.Guardrail);
  if (v1 <= 0x3F)
  {
    sub_1C731EA30(319, &qword_1EC21AAA8, &type metadata for SafetyBundle.InputDenyList);
    if (v2 <= 0x3F)
    {
      sub_1C731EA30(319, &qword_1EC21AAB0, &type metadata for SafetyBundle.OutputDenyList);
      if (v3 <= 0x3F)
      {
        sub_1C731EA7C(319, &qword_1EC21AAB8, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C731EA7C(319, &qword_1EC21AAC0, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            sub_1C754DFFC();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C731EA30(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C7550C3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C731EA7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215108, &qword_1C755EAC0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SafetyBundle.Guardrail(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for SafetyBundle.OutputDenyList(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C731EC80(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C731ED60()
{
  result = qword_1EC21AAC8;
  if (!qword_1EC21AAC8)
  {
    result = swift_getWitnessTable(a5q, &type metadata for SafetyBundle.SafetyBundleType, v0, v1);
    atomic_store(result, &qword_1EC21AAC8);
  }

  return result;
}

void OUTLINED_FUNCTION_32_31(uint64_t a1@<X8>)
{
  *(v2 - 168) = a1;

  sub_1C716D6F4(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_43_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;

  return sub_1C754DFFC();
}

uint64_t sub_1C731EE10(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C75516BC())
  {
    result = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x1E69E7CC0];
    result = sub_1C755195C();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v4 = 0;
    v13 = v1 & 0xFFFFFFFFFFFFFF8;
    v14 = v1 & 0xC000000000000001;
    v5 = v1;
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v14)
      {
        v7 = MEMORY[0x1CCA5DDD0](v4, v1);
        v8 = v7;
      }

      else
      {
        if (v4 >= *(v13 + 16))
        {
          goto LABEL_17;
        }

        v8 = *(v1 + 8 * v4 + 32);
      }

      MEMORY[0x1EEE9AC00](v7);
      sub_1C75504FC();
      v9 = sub_1C70735F4();

      v10 = 1.0;
      if (!v9)
      {
        v10 = v8[4];
      }

      v11 = *(v8 + 2);
      v12 = *(v8 + 3);
      type metadata accessor for MusicKeywordCompletion();
      swift_allocObject();
      MusicKeywordCompletion.init(keyword:score:)(v11, v12, v10);
      sub_1C75504FC();

      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      ++v4;
      v1 = v5;
      if (v6 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return result;
}

id static StoryMusicCurator.isUserAllowedExplicitContent()()
{
  v0 = byte_1EDD0A9C2;
  if (byte_1EDD0A9C2 != 2)
  {
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v15 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v15, &dword_1EDD28D48);
    v16 = sub_1C754FEEC();
    v17 = sub_1C755117C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_102();
      *v18 = 67109120;
      *(v18 + 4) = v0 & 1;
      _os_log_impl(&dword_1C6F5C000, v16, v17, "[isUserAllowedExplicitContent] using cached isExplicitContentAllowed = %{BOOL}d", v18, 8u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    return (v0 & 1);
  }

  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v2 = result;
    v3 = sub_1C755068C();
    v5 = sub_1C7326958(v3, v4, v2);

    v0 = v5 == 1;
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v6 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v6, &dword_1EDD28D48);
    v7 = sub_1C754FEEC();
    sub_1C755117C();
    v8 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_102();
      *v10 = 67109120;
      *(v10 + 4) = v5 == 1;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v11, v12, v13, v14, v10, 8u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    byte_1EDD0A9C2 = v5 == 1;
    return (v0 & 1);
  }

  __break(1u);
  return result;
}

uint64_t static AppleMusicConfigurationParameters.storefrontsExcludedFromAppleMusicSearch.getter()
{
  if (qword_1EC214018 != -1)
  {
    OUTLINED_FUNCTION_8_69(&qword_1EC214018);
  }

  return sub_1C75504FC();
}

uint64_t StoryMusicCurator.curateAppleMusic(using:with:maestroKeywords:mood:eventRecorder:)()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  *(v1 + 520) = v2;
  *(v1 + 504) = v7;
  *(v1 + 512) = v8;
  *(v1 + 496) = v9;
  *(v1 + 528) = *v2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C60, &qword_1C757ED30);
  OUTLINED_FUNCTION_76(v10);
  *(v1 + 536) = swift_task_alloc();
  *(v1 + 544) = swift_task_alloc();
  v11 = type metadata accessor for AppleMusicSubscriptionState(0);
  *(v1 + 552) = v11;
  OUTLINED_FUNCTION_76(v11);
  *(v1 + 560) = swift_task_alloc();
  *(v1 + 568) = swift_task_alloc();
  *(v1 + 576) = swift_task_alloc();
  *(v1 + 584) = swift_task_alloc();
  v12 = sub_1C754F38C();
  *(v1 + 592) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v1 + 600) = v13;
  *(v1 + 608) = OUTLINED_FUNCTION_77();
  *(v1 + 763) = *v6;
  memcpy((v1 + 16), v4, 0x80uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C731F44C()
{
  OUTLINED_FUNCTION_31();
  v120 = v0;
  v1 = v0[64];
  v2 = v0[62];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = (v3 + 32);
  while (1)
  {
    if (!v4)
    {
      OUTLINED_FUNCTION_94_14();
      if (!v7)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v8 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v8, &dword_1EDD28D48);
      v9 = sub_1C754FEEC();
      sub_1C755117C();
      v10 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v10, v11))
      {
        OUTLINED_FUNCTION_96_0();
        v12 = swift_slowAlloc();
        OUTLINED_FUNCTION_92_0(v12);
        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v13, v14, v15, v16, 0x6973754D78656C66, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v17 = v0[64];

      __swift_project_boxed_opaque_existential_1(v17, v1[3]);
      sub_1C754F1AC();
      v18 = OUTLINED_FUNCTION_49_3();
      v19(v18);
      goto LABEL_48;
    }

    if ((*v5 & 1) == 0)
    {
      break;
    }

    v6 = sub_1C7551DBC();

    ++v5;
    --v4;
    if (v6)
    {
      goto LABEL_12;
    }
  }

LABEL_12:
  v20 = v0[69];
  v21 = v0[68];
  v22 = v0[62];
  __swift_project_boxed_opaque_existential_1(v0[64], v1[3]);
  sub_1C754F15C();
  v23 = type metadata accessor for StoryMusicCurationOptions(0);
  v0[77] = v23;
  sub_1C7326A18(v22 + *(v23 + 56), v21, &qword_1EC215C60, &qword_1C757ED30);
  if (__swift_getEnumTagSinglePayload(v21, 1, v20) == 1)
  {
    sub_1C6FD7FC8(v0[68], &qword_1EC215C60, &qword_1C757ED30);
    v24 = v0[28];
    __swift_project_boxed_opaque_existential_1(v0 + 24, v0[27]);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[78] = v25;
    *v25 = v26;
    v25[1] = sub_1C731FF18;
    v122 = v24;
    OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE2A6A0](v27, v28, v29, v30, v31, v32, v33, v34);
  }

  sub_1C73269B4(v0[68], v0[72]);
  OUTLINED_FUNCTION_90_3();
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD00000000000003ELL, 0x80000001C75AAF30);
  v36 = AppleMusicSubscriptionState.description.getter();
  MEMORY[0x1CCA5CD70](v36);

  v37 = v119[0];
  v38 = v119[1];
  OUTLINED_FUNCTION_94_14();
  if (!v7)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v39 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v39, &dword_1EDD28D48);
  sub_1C75504FC();
  v40 = sub_1C754FEEC();
  sub_1C755117C();

  v123 = v39;
  if (OUTLINED_FUNCTION_140_0())
  {
    v41 = OUTLINED_FUNCTION_41_0();
    v42 = OUTLINED_FUNCTION_20_1();
    v119[0] = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_1C6F765A4(v37, v38, v119);
    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v43, v44, v45, v46, v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v47 = v0[72];
  v48 = v0[65];
  sub_1C6FF7624(v47, v0[73]);
  v49 = v48 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  OUTLINED_FUNCTION_20_18(v48 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics, (v0 + 53));
  v50 = type metadata accessor for StoryMusicCurationDiagnostics(0);
  v51 = v50[33];
  sub_1C6FB0600();
  v52 = *(*(v49 + v51) + 16);
  sub_1C6FB0EFC();
  v53 = *(v49 + v51);
  *(v53 + 16) = v52 + 1;
  v54 = v53 + 16 * v52;
  *(v54 + 32) = v37;
  *(v54 + 40) = v38;
  *(v49 + v51) = v53;
  swift_endAccess();
  sub_1C6FF7688(v47);
  v55 = v0[73];
  v56 = v0[69];
  v57 = v0[67];
  v58 = v0[65];
  sub_1C6FF7624(v55, v57);
  v59 = 1;
  __swift_storeEnumTagSinglePayload(v57, 0, 1, v56);
  v60 = OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_appleMusicSubscriptionState;
  OUTLINED_FUNCTION_20_18(v58 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_appleMusicSubscriptionState, (v0 + 29));
  sub_1C7326A68(v57, v58 + v60, &qword_1EC215C60, &qword_1C757ED30);
  swift_endAccess();
  switch(*(v55 + 1))
  {
    case 1:
      goto LABEL_22;
    case 2:
    case 3:
    case 4:
    case 5:
      OUTLINED_FUNCTION_246_1();
LABEL_22:
      OUTLINED_FUNCTION_15_62();
      v59 = OUTLINED_FUNCTION_46_27(v61, v62, v63);
      break;
    default:
      break;
  }

  v64 = v0[73];
  v65 = v0[69];
  v66 = v0[65];

  v67 = v59 & 1;
  v68 = OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  v0[79] = OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  v69 = (v66 + v68);
  swift_beginAccess();
  v0[80] = v50;
  *(v69 + v50[16]) = v67;
  v70 = (v64 + *(v65 + 32));
  v71 = v70[1];
  *v69 = *v70;
  v69[1] = v71;
  sub_1C75504FC();

  switch(*(v55 + 1))
  {
    case 1:
      goto LABEL_26;
    case 2:
    case 3:
    case 4:
    case 5:
      OUTLINED_FUNCTION_35_23();
LABEL_26:
      OUTLINED_FUNCTION_15_62();
      v75 = OUTLINED_FUNCTION_46_27(v72, v73, v74);

      if (v75)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_94_14();
      if (!v7)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v87 = v0[73];
      v88 = v0[70];
      __swift_project_value_buffer(v123, &dword_1EDD28D48);
      sub_1C6FF7624(v87, v88);
      v89 = sub_1C754FEEC();
      sub_1C755117C();
      v90 = OUTLINED_FUNCTION_72();
      v92 = os_log_type_enabled(v90, v91);
      v93 = v0[70];
      if (!v92)
      {

        sub_1C6FF7688(v93);
        goto LABEL_47;
      }

      v94 = OUTLINED_FUNCTION_41_0();
      v95 = OUTLINED_FUNCTION_20_1();
      v119[0] = v95;
      *v94 = 136315138;
      v96 = v93 + *(v65 + 32);
      if (*(v96 + 8))
      {
        v69 = *v96;
        v93 = *(v96 + 8);
      }

      else
      {
        OUTLINED_FUNCTION_93_13();
      }

      v108 = v0[70];
      sub_1C75504FC();
      sub_1C6FF7688(v108);
      v109 = sub_1C6F765A4(v69, v93, v119);

      *(v94 + 4) = v109;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v110, v111, v112, v113, v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v95);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      goto LABEL_45;
    default:

LABEL_27:
      OUTLINED_FUNCTION_94_14();
      if (!v7)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v0[81] = __swift_project_value_buffer(v123, &dword_1EDD28D48);
      v76 = sub_1C754FEEC();
      v77 = sub_1C755118C();
      v78 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v78, v79))
      {
        OUTLINED_FUNCTION_96_0();
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_1C6F5C000, v76, v77, "(Apple Music) User is eligible", v80, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v81 = v0[73];

      v0[82] = *(v81 + 8);
      v82 = *(v81 + 16);
      v0[83] = v82;
      if (v82)
      {
        v83 = swift_task_alloc();
        v0[84] = v83;
        *v83 = v0;
        OUTLINED_FUNCTION_24_34(v83);
        v84 = OUTLINED_FUNCTION_117_0();

        return StoryMusicCurator.canCurateAppleMusic(forStorefront:with:)(v84, v85, v86);
      }

      OUTLINED_FUNCTION_20_18(v69, (v0 + 35));
      v97 = v50[35];
      sub_1C6FB0600();
      v98 = *(*(v69 + v97) + 16);
      sub_1C6FB0EFC();
      v99 = *(v69 + v97);
      *(v99 + 16) = v98 + 1;
      v100 = v99 + 16 * v98;
      *(v100 + 32) = 0xD000000000000037;
      *(v100 + 40) = 0x80000001C75AADA0;
      *(v69 + v97) = v99;
      swift_endAccess();
      v89 = sub_1C754FEEC();
      v101 = sub_1C755117C();
      v102 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v102, v103))
      {
        OUTLINED_FUNCTION_41_0();
        v119[0] = OUTLINED_FUNCTION_17_6();
        OUTLINED_FUNCTION_95_15(4.8149e-34);
        v104 = OUTLINED_FUNCTION_49_3();
        *(v97 + 4) = sub_1C6F765A4(v104, v105, v106);
        OUTLINED_FUNCTION_22_53(&dword_1C6F5C000, v107, v101, "(Apple Music) %s");
        OUTLINED_FUNCTION_56_2();
LABEL_45:
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

LABEL_47:
      OUTLINED_FUNCTION_33_32();
      OUTLINED_FUNCTION_19_58();
      v114 = OUTLINED_FUNCTION_94();
      v115(v114);
      break;
  }

LABEL_48:
  OUTLINED_FUNCTION_1_105();

  OUTLINED_FUNCTION_116();
  v117 = MEMORY[0x1E69E7CC0];

  return v116(v117);
}

void sub_1C731FF18()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_41();

    MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }
}

uint64_t sub_1C7320028()
{
  v77 = v0;
  sub_1C73269B4(v0[71], v0[73]);
  v1 = v0[73];
  v2 = v0[69];
  v3 = v0[67];
  v4 = v0[65];
  sub_1C6FF7624(v1, v3);
  v5 = 1;
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v2);
  v6 = OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_appleMusicSubscriptionState;
  OUTLINED_FUNCTION_20_18(v4 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_appleMusicSubscriptionState, (v0 + 29));
  sub_1C7326A68(v3, v4 + v6, &qword_1EC215C60, &qword_1C757ED30);
  swift_endAccess();
  v7 = "";
  v8 = 0xD000000000000018;
  switch(*(v1 + 1))
  {
    case 1:
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_246_1();
      v8 = v9 + 4;
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_246_1();
      v8 = v11 + 14;
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_246_1();
      v8 = v10 + 23;
      goto LABEL_6;
    case 5:
      OUTLINED_FUNCTION_246_1();
      v8 = v12 + 3;
LABEL_6:
      v5 = OUTLINED_FUNCTION_46_27(v8, v7 | 0x8000000000000000, 0x626967696C457369);
      break;
    default:
      break;
  }

  v13 = v0[73];
  v14 = v0[69];
  v15 = v0[65];

  v16 = v5 & 1;
  v17 = OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  v0[79] = OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  v18 = (v15 + v17);
  swift_beginAccess();
  v19 = type metadata accessor for StoryMusicCurationDiagnostics(0);
  v0[80] = v19;
  *(v18 + *(v19 + 64)) = v16;
  v20 = (v13 + *(v14 + 32));
  v21 = v20[1];
  v22 = v18[1];
  *v18 = *v20;
  v18[1] = v21;
  sub_1C75504FC();

  switch(*(v1 + 1))
  {
    case 1:
      goto LABEL_10;
    case 2:
    case 3:
    case 4:
    case 5:
      OUTLINED_FUNCTION_39_33();
LABEL_10:
      OUTLINED_FUNCTION_15_62();
      v26 = OUTLINED_FUNCTION_46_27(v23, v24, v25);

      if (v26)
      {
        goto LABEL_11;
      }

      if (qword_1EDD0ED88 != -1)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v42 = sub_1C754FF1C();
      __swift_project_value_buffer(v42, &dword_1EDD28D48);
      v43 = OUTLINED_FUNCTION_66_2();
      sub_1C6FF7624(v43, v44);
      v45 = sub_1C754FEEC();
      sub_1C755117C();
      v46 = OUTLINED_FUNCTION_72();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v0[70];
      if (!v48)
      {

        sub_1C6FF7688(v49);
        goto LABEL_31;
      }

      v50 = OUTLINED_FUNCTION_41_0();
      v51 = OUTLINED_FUNCTION_20_1();
      v76 = v51;
      *v50 = 136315138;
      v52 = (v49 + *(v14 + 32));
      if (v52[1])
      {
        v22 = *v52;
        v49 = v52[1];
      }

      else
      {
        OUTLINED_FUNCTION_93_13();
      }

      v65 = v0[70];
      sub_1C75504FC();
      sub_1C6FF7688(v65);
      v66 = sub_1C6F765A4(v22, v49, &v76);

      *(v50 + 4) = v66;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v67, v68, v69, v70, v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0](v71);
      goto LABEL_29;
    default:

LABEL_11:
      if (qword_1EDD0ED88 != -1)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v27 = sub_1C754FF1C();
      v0[81] = __swift_project_value_buffer(v27, &dword_1EDD28D48);
      v28 = sub_1C754FEEC();
      sub_1C755118C();
      v29 = OUTLINED_FUNCTION_12_60();
      if (os_log_type_enabled(v29, v30))
      {
        OUTLINED_FUNCTION_96_0();
        v31 = swift_slowAlloc();
        *v31 = 0;
        OUTLINED_FUNCTION_102_11();
        _os_log_impl(v32, v33, v34, v35, v31, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v36 = v0[73];

      v37 = *(v36 + 8);
      v0[82] = v37;
      v38 = *(v36 + 16);
      v0[83] = v38;
      if (v38)
      {
        v39 = swift_task_alloc();
        v0[84] = v39;
        *v39 = v0;
        OUTLINED_FUNCTION_24_34(v39);

        return StoryMusicCurator.canCurateAppleMusic(forStorefront:with:)(v37, v38, v40);
      }

      else
      {
        OUTLINED_FUNCTION_20_18(v18, (v0 + 35));
        v53 = *(v19 + 140);
        sub_1C6FB0600();
        v54 = *(*(v18 + v53) + 16);
        sub_1C6FB0EFC();
        v55 = *(v18 + v53);
        *(v55 + 16) = v54 + 1;
        v56 = v55 + 16 * v54;
        *(v56 + 32) = 0xD000000000000037;
        *(v56 + 40) = 0x80000001C75AADA0;
        *(v18 + v53) = v55;
        swift_endAccess();
        v45 = sub_1C754FEEC();
        sub_1C755117C();
        v57 = OUTLINED_FUNCTION_72();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = OUTLINED_FUNCTION_41_0();
          v76 = OUTLINED_FUNCTION_20_1();
          *v59 = 136315138;
          *(v59 + 4) = sub_1C6F765A4(0xD000000000000037, 0x80000001C75AADA0, &v76);
          OUTLINED_FUNCTION_8_1();
          _os_log_impl(v60, v61, v62, v63, v64, 0xCu);
          OUTLINED_FUNCTION_56_2();
LABEL_29:
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

LABEL_31:
        OUTLINED_FUNCTION_33_32();
        OUTLINED_FUNCTION_19_58();
        v72 = OUTLINED_FUNCTION_94();
        v73(v72);
        OUTLINED_FUNCTION_1_105();

        OUTLINED_FUNCTION_116();
        v75 = MEMORY[0x1E69E7CC0];

        return v74(v75);
      }
  }
}

uint64_t sub_1C7320680()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 680) = v0;

  if (!v0)
  {
    *(v5 + 764) = v3 & 1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7320794()
{
  v72 = v0;
  if (*(v0 + 764) != 1)
  {
    v28 = *(v0 + 648);
    v29 = *(v0 + 640);
    OUTLINED_FUNCTION_69_19();
    OUTLINED_FUNCTION_95_0();
    sub_1C755180C();
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_84_11();
    v30 = OUTLINED_FUNCTION_0_11();
    MEMORY[0x1CCA5CD70](v30);
    OUTLINED_FUNCTION_84_11();
    v31 = __dst[1];
    OUTLINED_FUNCTION_30_36(v32, v0 + 328);
    v33 = *(v29 + 140);
    sub_1C75504FC();
    sub_1C6FB0600();
    OUTLINED_FUNCTION_17_65();
    OUTLINED_FUNCTION_2_97();
    *(v34 + 32) = __dst[0];
    *(v34 + 40) = v31;
    *(v1 + v33) = v35;
    swift_endAccess();
    sub_1C75504FC();
    v36 = sub_1C754FEEC();
    sub_1C755117C();
    OUTLINED_FUNCTION_97_10();

    if (os_log_type_enabled(v36, v28))
    {
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_17_6();
      OUTLINED_FUNCTION_47_4();
      *v1 = 136315138;
      v37 = OUTLINED_FUNCTION_0_11();
      v40 = sub_1C6F765A4(v37, v38, v39);

      *(v1 + 4) = v40;
      OUTLINED_FUNCTION_22_53(&dword_1C6F5C000, v41, v28, "(Apple Music) %s");
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    OUTLINED_FUNCTION_33_32();
    OUTLINED_FUNCTION_19_58();
    v42 = OUTLINED_FUNCTION_94();
    v43(v42);
LABEL_15:
    OUTLINED_FUNCTION_1_105();

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_235_0();

    __asm { BRAA            X2, X16 }
  }

  v2 = *(v0 + 496);
  LOBYTE(__dst[0]) = *(v0 + 763);
  sub_1C7324174(__dst, v2, (v0 + 760));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  OUTLINED_FUNCTION_3_1();
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = v5;
  v6 = OUTLINED_FUNCTION_0_11();
  LOBYTE(v2) = sub_1C73243A0(v6, v7, inited);
  v9 = v8;
  *(v0 + 688) = v8;
  swift_setDeallocating();
  sub_1C6FDC9DC();
  if (v2)
  {
    *(v0 + 760) = 2;
  }

  v10 = *(v0 + 680);
  v11 = *(v0 + 496);
  v12 = swift_allocObject();
  *(v0 + 696) = v12;
  memcpy(__dst, (v0 + 16), 0x80uLL);
  v13 = StoryMusicCurator.prepareAppleMusicCurationOptions(using:mood:with:)(v9, __dst, v11);
  if (v10)
  {
    v14 = *(v0 + 584);

    sub_1C6FF7688(v14);
    swift_deallocUninitializedObject();
    __swift_destroy_boxed_opaque_existential_1((v0 + 192));
    OUTLINED_FUNCTION_7_67();
    sub_1C754F1AC();
    v15 = OUTLINED_FUNCTION_68_19();
    v16(v15);
    OUTLINED_FUNCTION_95_0();
    sub_1C755180C();
    v17 = __dst[1];
    *(v0 + 448) = __dst[0];
    *(v0 + 456) = v17;
    OUTLINED_FUNCTION_125_1();
    MEMORY[0x1CCA5CD70](v18 + 26, v19 | 0x8000000000000000);
    *(v0 + 480) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    v20 = sub_1C75519EC();
    v22 = *(v0 + 448);
    v21 = *(v0 + 456);
    OUTLINED_FUNCTION_30_36(v20, v0 + 304);
    sub_1C75504FC();
    sub_1C6FB0600();
    OUTLINED_FUNCTION_59_22();
    OUTLINED_FUNCTION_20_51();
    sub_1C75504FC();
    v23 = sub_1C754FEEC();
    v24 = sub_1C755119C();

    if (OUTLINED_FUNCTION_200())
    {
      OUTLINED_FUNCTION_41_0();
      v25 = OUTLINED_FUNCTION_17_6();
      __dst[0] = v25;
      *v11 = 136315138;
      v26 = sub_1C6F765A4(v22, v21, __dst);

      *(v11 + 4) = v26;
      OUTLINED_FUNCTION_22_53(&dword_1C6F5C000, v27, v24, "(Apple Music Curation Failed) %s");
      __swift_destroy_boxed_opaque_existential_1(v25);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    goto LABEL_15;
  }

  v44 = *(v0 + 640);
  v45 = *(v0 + 520) + *(v0 + 632);
  *(v12 + 16) = v13;
  *(v45 + *(v44 + 128)) = 0;
  v46 = *(v0 + 760);
  v47 = sub_1C754FEEC();
  sub_1C755118C();
  v48 = OUTLINED_FUNCTION_12_60();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_47_4();
    *v50 = 136315138;
    v51 = 0xED00006E6F697463;
    v52 = 0x656C65536F747561;
    switch(v46)
    {
      case 1:
        v51 = 0x80000001C7595F50;
        v52 = 0xD00000000000001ALL;
        break;
      case 2:
        v51 = 0x80000001C7595F70;
        v52 = 0xD000000000000014;
        break;
      case 3:
        v51 = 0x80000001C7595F90;
        v52 = 0xD00000000000001DLL;
        break;
      default:
        break;
    }

    v55 = sub_1C6F765A4(v52, v51, __dst);

    *(v50 + 4) = v55;
    OUTLINED_FUNCTION_102_11();
    _os_log_impl(v56, v57, v58, v59, v50, 0xCu);
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  swift_beginAccess();
  *(v0 + 761) = *(v0 + 760);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 704) = v60;
  *v60 = v61;
  v60[1] = sub_1C7320DF0;
  OUTLINED_FUNCTION_235_0();

  return sub_1C73257A4(v62, v63, v64, v65, v66, v67, v68);
}

uint64_t sub_1C7320DF0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 712) = v4;
  *(v2 + 720) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7320EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v18 = *(v16 + 712);
  if (*(v18 + 16))
  {
    v19 = *(v16 + 584);

    sub_1C6FF7688(v19);

    OUTLINED_FUNCTION_45_28();
    v20 = OUTLINED_FUNCTION_49_3();
    v21(v20);
    OUTLINED_FUNCTION_62_20();

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_129();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v31 = *(v16 + 640);
    OUTLINED_FUNCTION_69_19();
    OUTLINED_FUNCTION_95_0();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    v77 = v32;
    v33 = MEMORY[0x1CCA5D090](v18, &type metadata for StoryMusicCurationSong);
    MEMORY[0x1CCA5CD70](v33);

    v34 = MEMORY[0x1CCA5CD70](39, 0xE100000000000000);
    OUTLINED_FUNCTION_30_36(v34, v16 + 400);
    v35 = *(v31 + 132);
    sub_1C75504FC();
    sub_1C6FB0600();
    OUTLINED_FUNCTION_17_65();
    OUTLINED_FUNCTION_2_97();
    *(v36 + 32) = 0xD00000000000002BLL;
    *(v36 + 40) = v77;
    *(v17 + v35) = v37;
    swift_endAccess();
    sub_1C75504FC();
    v38 = sub_1C754FEEC();
    v39 = sub_1C755119C();

    if (OUTLINED_FUNCTION_140_0())
    {
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_17_6();
      OUTLINED_FUNCTION_47_4();
      v40 = OUTLINED_FUNCTION_34_31(4.8149e-34);
      v42 = sub_1C6F765A4(v40, v77, v41);

      *(v17 + 4) = v42;
      OUTLINED_FUNCTION_22_53(&dword_1C6F5C000, v43, v39, "(Apple Music) %s");
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    sub_1C70EB0F0();
    v44 = swift_allocError();
    *v45 = 12;
    swift_willThrow();
    *(v16 + 728) = v44;
    v46 = *(v16 + 616);
    v47 = *(v16 + 496);
    *(*(v16 + 520) + *(v16 + 632) + *(*(v16 + 640) + 128)) = 1;
    OUTLINED_FUNCTION_95_0();
    sub_1C755180C();
    *(v16 + 464) = 0xD00000000000002BLL;
    *(v16 + 472) = v77;
    MEMORY[0x1CCA5CD70](0xD000000000000018, 0x80000001C75AAEC0);
    v48 = *(v46 + 76);
    v49 = 0x656C65536F747561;
    v50 = 0xED00006E6F697463;
    switch(*(v47 + v48))
    {
      case 1:
        v50 = 0x80000001C7595F50;
        v49 = 0xD00000000000001ALL;
        break;
      case 2:
        v50 = 0x80000001C7595F70;
        v49 = OUTLINED_FUNCTION_101_12();
        break;
      case 3:
        v50 = 0x80000001C7595F90;
        v49 = 0xD00000000000001DLL;
        break;
      default:
        break;
    }

    MEMORY[0x1CCA5CD70](v49, v50);

    OUTLINED_FUNCTION_55_26();
    v51 = *(v16 + 640);
    v52 = *(v16 + 520) + *(v16 + 632);
    v53 = OUTLINED_FUNCTION_117_0();
    MEMORY[0x1CCA5CD70](v53);

    OUTLINED_FUNCTION_10_2();
    v54 = OUTLINED_FUNCTION_101_12();
    MEMORY[0x1CCA5CD70](v54);
    *(v16 + 488) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    sub_1C75519EC();
    v56 = *(v16 + 464);
    v55 = *(v16 + 472);
    OUTLINED_FUNCTION_20_18(v52, v16 + 376);
    v57 = *(v51 + 132);
    sub_1C75504FC();
    sub_1C6FB0600();
    v58 = *(*(v52 + v57) + 16);
    sub_1C6FB0EFC();
    v59 = *(v52 + v57);
    *(v59 + 16) = v58 + 1;
    v60 = v59 + 16 * v58;
    *(v60 + 32) = v56;
    *(v60 + 40) = v55;
    *(v52 + v57) = v59;
    swift_endAccess();
    sub_1C75504FC();
    v61 = sub_1C754FEEC();
    sub_1C755119C();
    OUTLINED_FUNCTION_97_10();

    if (os_log_type_enabled(v61, v58))
    {
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_17_6();
      OUTLINED_FUNCTION_47_4();
      *v57 = 136315138;
      v62 = OUTLINED_FUNCTION_0_11();
      v65 = sub_1C6F765A4(v62, v63, v64);

      *(v57 + 4) = v65;
      OUTLINED_FUNCTION_22_53(&dword_1C6F5C000, v66, v58, "(Apple Music) %s");
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    *(v16 + 762) = *(v47 + v48);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v16 + 736) = v67;
    *v67 = v68;
    OUTLINED_FUNCTION_18_47(v67);
    OUTLINED_FUNCTION_129();

    return sub_1C73257A4(v69, v70, v71, v72, v73, v74, v75);
  }
}

uint64_t sub_1C7321474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  sub_1C6FF7688(v14[73]);
  __swift_destroy_boxed_opaque_existential_1(v14 + 24);
  v16 = v14[85];
  v37 = v14[81];
  OUTLINED_FUNCTION_7_67();
  v17 = v16;
  sub_1C754F1AC();
  v18 = OUTLINED_FUNCTION_68_19();
  v19(v18);
  OUTLINED_FUNCTION_90_3();
  sub_1C755180C();
  v14[56] = a10;
  v14[57] = a11;
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1CCA5CD70](0xD00000000000002ALL);
  v14[60] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  v20 = sub_1C75519EC();
  v22 = v14[56];
  v21 = v14[57];
  OUTLINED_FUNCTION_30_36(v20, (v14 + 38));
  sub_1C75504FC();
  sub_1C6FB0600();
  OUTLINED_FUNCTION_59_22();
  OUTLINED_FUNCTION_20_51();
  sub_1C75504FC();
  v23 = sub_1C754FEEC();
  v24 = sub_1C755119C();

  if (OUTLINED_FUNCTION_140_0())
  {
    OUTLINED_FUNCTION_41_0();
    a10 = OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_95_15(4.8149e-34);
    v26 = sub_1C6F765A4(v22, v21, v25);

    *(v15 + 4) = v26;
    OUTLINED_FUNCTION_22_53(&dword_1C6F5C000, v27, v24, "(Apple Music Curation Failed) %s");
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_105();

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_17_1();

  return v30(v28, v29, v30, v31, v32, v33, v34, v35, v37, a10, a11, a12, a13, a14);
}

uint64_t sub_1C7321694()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 744) = v5;
  *(v3 + 752) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C73217AC()
{
  OUTLINED_FUNCTION_111_9();
  sub_1C6FF7688(v0);

  if (!v1)
  {
  }

  v3 = *(v2 + 744);
  OUTLINED_FUNCTION_45_28();
  v4 = OUTLINED_FUNCTION_49_3();
  v5(v4);
  OUTLINED_FUNCTION_62_20();

  OUTLINED_FUNCTION_116();

  return v6(v3);
}

uint64_t sub_1C7321890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v17 = *(v16 + 720);
  *(v16 + 728) = v17;
  v18 = *(v16 + 616);
  v19 = *(v16 + 496);
  *(*(v16 + 520) + *(v16 + 632) + *(*(v16 + 640) + 128)) = 1;
  OUTLINED_FUNCTION_90_3();
  sub_1C755180C();
  *(v16 + 464) = a10;
  *(v16 + 472) = a11;
  MEMORY[0x1CCA5CD70](0xD000000000000018, 0x80000001C75AAEC0);
  v20 = *(v18 + 76);
  v50 = v19;
  v21 = 0x656C65536F747561;
  v22 = 0xED00006E6F697463;
  switch(*(v19 + v20))
  {
    case 1:
      v22 = 0x80000001C7595F50;
      v21 = 0xD00000000000001ALL;
      break;
    case 2:
      v22 = 0x80000001C7595F70;
      v21 = OUTLINED_FUNCTION_101_12();
      break;
    case 3:
      v22 = 0x80000001C7595F90;
      v21 = 0xD00000000000001DLL;
      break;
    default:
      break;
  }

  MEMORY[0x1CCA5CD70](v21, v22);

  OUTLINED_FUNCTION_55_26();
  v23 = *(v16 + 648);
  v24 = *(v16 + 640);
  OUTLINED_FUNCTION_69_19();
  v25 = OUTLINED_FUNCTION_0_11();
  MEMORY[0x1CCA5CD70](v25);

  OUTLINED_FUNCTION_10_2();
  v26 = OUTLINED_FUNCTION_101_12();
  MEMORY[0x1CCA5CD70](v26);
  *(v16 + 488) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  v27 = sub_1C75519EC();
  v29 = *(v16 + 464);
  v28 = *(v16 + 472);
  OUTLINED_FUNCTION_30_36(v27, v16 + 376);
  v30 = *(v24 + 132);
  sub_1C75504FC();
  sub_1C6FB0600();
  OUTLINED_FUNCTION_17_65();
  OUTLINED_FUNCTION_2_97();
  *(v31 + 32) = v29;
  *(v31 + 40) = v28;
  *(v30 - 0x2FFFFFFFFFFFFFECLL) = v32;
  swift_endAccess();
  sub_1C75504FC();
  v33 = sub_1C754FEEC();
  sub_1C755119C();
  OUTLINED_FUNCTION_97_10();

  if (os_log_type_enabled(v33, v23))
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_95_15(4.8149e-34);
    v34 = OUTLINED_FUNCTION_0_11();
    v37 = sub_1C6F765A4(v34, v35, v36);

    MEMORY[0xD000000000000018] = v37;
    OUTLINED_FUNCTION_22_53(&dword_1C6F5C000, v38, v23, "(Apple Music) %s");
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  *(v16 + 762) = *(v50 + v20);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v16 + 736) = v39;
  *v39 = v40;
  OUTLINED_FUNCTION_18_47(v39);
  OUTLINED_FUNCTION_17_1();

  return sub_1C73257A4(v41, v42, v43, v44, v45, v46, v47);
}

uint64_t sub_1C7321BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_111_9();
  sub_1C6FF7688(v14);

  if (!v15)
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v16 + 24);
  v18 = v16[94];
  v39 = v16[81];
  OUTLINED_FUNCTION_7_67();
  v19 = v18;
  sub_1C754F1AC();
  v20 = OUTLINED_FUNCTION_68_19();
  v21(v20);
  OUTLINED_FUNCTION_90_3();
  sub_1C755180C();
  v16[56] = a10;
  v16[57] = a11;
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1CCA5CD70](0xD00000000000002ALL);
  v16[60] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  v22 = sub_1C75519EC();
  v24 = v16[56];
  v23 = v16[57];
  OUTLINED_FUNCTION_30_36(v22, (v16 + 38));
  sub_1C75504FC();
  sub_1C6FB0600();
  OUTLINED_FUNCTION_59_22();
  OUTLINED_FUNCTION_20_51();
  sub_1C75504FC();
  v25 = sub_1C754FEEC();
  v26 = sub_1C755119C();

  if (OUTLINED_FUNCTION_140_0())
  {
    OUTLINED_FUNCTION_41_0();
    a10 = OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_95_15(4.8149e-34);
    v28 = sub_1C6F765A4(v24, v23, v27);

    *(v17 + 4) = v28;
    OUTLINED_FUNCTION_22_53(&dword_1C6F5C000, v29, v26, "(Apple Music Curation Failed) %s");
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_105();

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_17_1();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, v39, a10, a11, a12, a13, a14);
}

uint64_t sub_1C7321E04(uint64_t a1)
{
  type metadata accessor for StoryMusicCurator(0);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C6F73F48;

  return static StoryMusicCurator.queryAppleMusicSubscriptionState(cacheValueInSeconds:)();
}

uint64_t static StoryMusicCurator.queryAppleMusicSubscriptionState(cacheValueInSeconds:)()
{
  OUTLINED_FUNCTION_42();
  v1[16] = v0;
  v1[15] = v2;
  v1[14] = v3;
  v4 = sub_1C755013C();
  v1[17] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[18] = v5;
  v1[19] = OUTLINED_FUNCTION_77();
  v6 = sub_1C755010C();
  v1[20] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[21] = v7;
  v1[22] = OUTLINED_FUNCTION_77();
  v8 = sub_1C755014C();
  v1[23] = v8;
  OUTLINED_FUNCTION_18(v8);
  v1[24] = v9;
  v1[25] = OUTLINED_FUNCTION_77();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  v1[26] = v10;
  OUTLINED_FUNCTION_76(v10);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v11 = sub_1C754DF6C();
  v1[30] = v11;
  OUTLINED_FUNCTION_18(v11);
  v1[31] = v12;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C73220AC()
{
  if (qword_1EDD0ED90 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = __swift_project_value_buffer(*(v0 + 208), qword_1EDD28D60);
  *(v0 + 272) = v3;
  swift_beginAccess();
  sub_1C7326A18(v3, v2, &unk_1EC219230, &unk_1C7563720);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1C6FD7FC8(*(v0 + 232), &unk_1EC219230, &unk_1C7563720);
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 248);
    v6 = *(v0 + 120);
    (*(v5 + 32))(*(v0 + 264), *(v0 + 232), *(v0 + 240));
    sub_1C754DF3C();
    sub_1C754DEAC();
    v8 = v7;
    v9 = *(v5 + 8);
    v10 = OUTLINED_FUNCTION_49_3();
    v9(v10);
    v4 = v8 < v6;
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v11 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v11, &dword_1EDD28D48);
    v12 = sub_1C754FEEC();
    sub_1C75511BC();
    v13 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109376;
      *(v15 + 4) = v8 < v6;
      *(v15 + 8) = 2048;
      *(v15 + 10) = v8;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v16, v17, v18, v19, v15, 0x12u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v20 = OUTLINED_FUNCTION_49_3();
    v9(v20);
  }

  v21 = byte_1EDD0ED98;
  if (byte_1EDD0ED98 == 2 || ((byte_1EDD0ED98 | v4) & 1) == 0)
  {
    v50 = *(v0 + 240);
    v51 = *(v0 + 216);
    sub_1C754DF3C();
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v50);
    OUTLINED_FUNCTION_20_18(v3, v0 + 40);
    v52 = OUTLINED_FUNCTION_66_2();
    sub_1C7326A68(v52, v53, v54, v55);
    swift_endAccess();
    OUTLINED_FUNCTION_38_29();
    sub_1C755180C();

    if (!__swift_getEnumTagSinglePayload(v3, 1, v50))
    {
      v57 = *(v0 + 248);
      v56 = *(v0 + 256);
      v58 = *(v0 + 240);
      v59 = OUTLINED_FUNCTION_66_2();
      v60(v59);
      sub_1C754DE5C();
      (*(v57 + 8))(v56, v58);
    }

    v61 = OUTLINED_FUNCTION_0_11();
    MEMORY[0x1CCA5CD70](v61);

    OUTLINED_FUNCTION_40_36();
    *(v0 + 280) = 0x6568436574616428;
    *(v0 + 288) = 0xEF203D2064656B63;
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v62 = sub_1C754FF1C();
    *(v0 + 296) = __swift_project_value_buffer(v62, &dword_1EDD28D48);
    v63 = sub_1C754FEEC();
    sub_1C75511BC();
    v64 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v64, v65))
    {
      OUTLINED_FUNCTION_96_0();
      v66 = swift_slowAlloc();
      OUTLINED_FUNCTION_37_0(v66);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v67, v68, v69, v70, v71, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v73 = *(v0 + 168);
    v72 = *(v0 + 176);
    v74 = *(v0 + 160);

    (*(v73 + 104))(v72, *MEMORY[0x1E69B2950], v74);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 304) = v75;
    *v75 = v76;
    v75[1] = sub_1C7322870;
    v77 = *(v0 + 200);
    v78 = *(v0 + 176);

    return MEMORY[0x1EEE1F778](v77, v78);
  }

  else
  {
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v22 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v22, &dword_1EDD28D48);
    v23 = sub_1C754FEEC();
    sub_1C755117C();
    v24 = OUTLINED_FUNCTION_12_60();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_102();
      *v26 = 67109120;
      *(v26 + 4) = v21 & 1;
      OUTLINED_FUNCTION_102_11();
      _os_log_impl(v27, v28, v29, v30, v26, 8u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v31 = *(v0 + 240);

    v32 = OUTLINED_FUNCTION_27_40();
    if (!__swift_getEnumTagSinglePayload(v32, 1, v31))
    {
      v34 = *(v0 + 248);
      v33 = *(v0 + 256);
      v35 = *(v0 + 240);
      v36 = OUTLINED_FUNCTION_66_2();
      v37(v36);
      sub_1C754DE5C();
      (*(v34 + 8))(v33, v35);
    }

    v38 = *(v0 + 224);
    v39 = *(v0 + 112);
    v40 = OUTLINED_FUNCTION_49_3();
    MEMORY[0x1CCA5CD70](v40);

    v41 = byte_1EDD0ED99;
    if (byte_1EDD0ED99 == 6)
    {
      v41 = 1;
    }

    v80 = v41;
    v42 = qword_1EC25B970;
    v79 = qword_1EC25B968;
    sub_1C7326A18(v3, v38, &unk_1EC219230, &unk_1C7563720);
    OUTLINED_FUNCTION_38_29();
    sub_1C75504FC();
    sub_1C755180C();
    OUTLINED_FUNCTION_81_17();
    OUTLINED_FUNCTION_65_21();
    MEMORY[0x1CCA5CD70]();
    MEMORY[0x1CCA5CD70]();

    OUTLINED_FUNCTION_10_2();
    MEMORY[0x1CCA5CD70](0xD000000000000025);
    *(v0 + 352) = byte_1EDD0ED99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AAD8, &qword_1C7583D98);
    v43 = sub_1C75506EC();
    MEMORY[0x1CCA5CD70](v43);

    MEMORY[0x1CCA5CD70](0x6665726F7473202CLL, 0xED00003D746E6F72);
    if (qword_1EC25B970)
    {
      v44 = qword_1EC25B968;
    }

    else
    {
      v44 = 0;
    }

    if (qword_1EC25B970)
    {
      v45 = qword_1EC25B970;
    }

    else
    {
      v45 = 0xE000000000000000;
    }

    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v44, v45);

    OUTLINED_FUNCTION_40_36();
    *v39 = v21 & 1;
    *(v39 + 1) = v80;
    *(v39 + 8) = v79;
    *(v39 + 16) = v42;
    v46 = type metadata accessor for AppleMusicSubscriptionState(0);
    sub_1C6FF51C8(v38, v39 + *(v46 + 28));
    v47 = (v39 + *(v46 + 32));
    *v47 = v81;
    v47[1] = v82;
    OUTLINED_FUNCTION_6_80();

    OUTLINED_FUNCTION_43();

    return v48();
  }
}

uint64_t sub_1C7322870()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 312) = v0;

  (*(v2[21] + 8))(v2[22], v2[20]);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C73229CC()
{
  v1 = sub_1C755012C();
  v2 = OUTLINED_FUNCTION_66_2();
  v3(v2);
  byte_1EDD0ED98 = v1 & 1;
  if (v1)
  {
    v4 = swift_task_alloc();
    v0[40] = v4;
    *v4 = v0;
    v4[1] = sub_1C7322C1C;

    return static StoryMusicCurator.getAmsUserStorefront()();
  }

  else
  {
    v6 = sub_1C754FEEC();
    sub_1C755117C();
    v7 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_96_0();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_37_0(v9);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v15 = v0[34];
    v16 = v0[14];

    byte_1EDD0ED98 = 0;
    byte_1EDD0ED99 = 2;
    v17 = type metadata accessor for AppleMusicSubscriptionState(0);
    sub_1C7326A18(v15, v16 + *(v17 + 28), &unk_1EC219230, &unk_1C7563720);
    OUTLINED_FUNCTION_90_3();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    v22 = v18;
    v19 = OUTLINED_FUNCTION_154();
    MEMORY[0x1CCA5CD70](v19);

    OUTLINED_FUNCTION_40_19();
    *v16 = 512;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    v20 = (v16 + *(v17 + 32));
    *v20 = 0xD00000000000002BLL;
    v20[1] = v22;
    OUTLINED_FUNCTION_6_80();

    OUTLINED_FUNCTION_43();

    return v21();
  }
}

uint64_t sub_1C7322C1C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  v2[41] = v4;
  v2[42] = v5;
  v2[43] = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7322D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v18 = v16 + 10;
  v19 = v16[42];
  qword_1EC25B968 = v16[41];
  qword_1EC25B970 = v19;
  sub_1C75504FC();

  if (qword_1EC214018 != -1)
  {
    OUTLINED_FUNCTION_8_69(&qword_1EC214018);
  }

  v20 = v16[42];
  v16[10] = v16[41];
  v16[11] = v20;
  *(swift_task_alloc() + 16) = v18;
  sub_1C70735F4();
  OUTLINED_FUNCTION_97_10();

  v21 = v16[42];
  if (v18)
  {
    sub_1C75504FC();
    v22 = sub_1C754FEEC();
    v23 = sub_1C755117C();

    if (OUTLINED_FUNCTION_200())
    {
      v21 = v16[42];
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_17_6();
      OUTLINED_FUNCTION_47_4();
      v24 = OUTLINED_FUNCTION_34_31(4.8149e-34);
      *(v17 + 4) = sub_1C6F765A4(v24, v21, v25);
      OUTLINED_FUNCTION_22_53(&dword_1C6F5C000, v26, v23, "[isUserEligibleForAppleMusic] Apple Music Storefront '%s' not allowed");
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v28 = v16[41];
    v27 = v16[42];
    v29 = v16[35];
    v30 = v16[36];
    v31 = v16[34];
    v32 = v16[14];
    byte_1EDD0ED98 = 0;
    v33 = 3;
    byte_1EDD0ED99 = 3;
    v34 = qword_1EC25B970;
    a9 = v29;
    v59 = qword_1EC25B968;
    type metadata accessor for AppleMusicSubscriptionState(0);
    OUTLINED_FUNCTION_100_12();
    sub_1C7326A18(v31, v32 + v35, &unk_1EC219230, &unk_1C7563720);
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_1C75504FC();
    sub_1C755180C();
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_84_11();
    MEMORY[0x1CCA5CD70](v28, v27);

    OUTLINED_FUNCTION_84_11();
    MEMORY[0x1CCA5CD70](a9, v30);

    OUTLINED_FUNCTION_40_19();
  }

  else
  {

    v36 = sub_1C754FEEC();
    sub_1C755117C();
    v37 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v37, v38))
    {
      OUTLINED_FUNCTION_96_0();
      v39 = swift_slowAlloc();
      OUTLINED_FUNCTION_37_0(v39);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v40, v41, v42, v43, v44, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v45 = v16[34];
    v32 = v16[14];

    byte_1EDD0ED98 = 1;
    byte_1EDD0ED99 = 0;
    v34 = qword_1EC25B970;
    v59 = qword_1EC25B968;
    type metadata accessor for AppleMusicSubscriptionState(0);
    OUTLINED_FUNCTION_100_12();
    sub_1C7326A18(v45, v32 + v46, &unk_1EC219230, &unk_1C7563720);
    sub_1C75504FC();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    v60 = 0xD000000000000013;
    v61 = v47;
    v48 = OUTLINED_FUNCTION_117_0();
    MEMORY[0x1CCA5CD70](v48);

    v33 = 0;
  }

  *v32 = 1;
  *(v32 + 1) = v33;
  *(v32 + 8) = v59;
  *(v32 + 16) = v34;
  v49 = (v32 + *(v21 + 32));
  *v49 = v60;
  v49[1] = v61;
  OUTLINED_FUNCTION_6_80();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, v59, v60, v61, a13, a14, a15, a16);
}

uint64_t StoryMusicCurator.canCurateAppleMusic(forStorefront:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  return OUTLINED_FUNCTION_0_67(sub_1C7323A08);
}

void sub_1C7323A08()
{
  *(v0 + 16) = *(v0 + 192);
  *(v0 + 24) = *(v0 + 200);
  *(swift_task_alloc() + 16) = v0 + 16;
  v4 = 0;
  v5 = sub_1C70735F4();

  if (v5)
  {
    goto LABEL_16;
  }

  if (qword_1EC214018 != -1)
  {
LABEL_55:
    OUTLINED_FUNCTION_8_69(&qword_1EC214018);
  }

  v6 = *(v0 + 200);
  *(v0 + 16) = *(v0 + 192);
  *(v0 + 24) = v6;
  *(swift_task_alloc() + 16) = v0 + 16;
  v7 = sub_1C70735F4();

  if (v7)
  {
    OUTLINED_FUNCTION_103_8();
    OUTLINED_FUNCTION_95_0();
    sub_1C755180C();
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_71_13();
    OUTLINED_FUNCTION_84_11();
    v8 = OUTLINED_FUNCTION_154();
    MEMORY[0x1CCA5CD70](v8);
    OUTLINED_FUNCTION_4_79();
    v9 = *(&__dst[0] + 1);
    v10 = *&__dst[0];
    v11 = v1 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_20_18(v11, v0 + 16);
    v12 = *(type metadata accessor for StoryMusicCurationDiagnostics(0) + 132);
  }

  else
  {
    v13 = *(v0 + 208);
    v14 = v13 + *(type metadata accessor for StoryMusicCurationOptions(0) + 88);
    v15 = *(v14 + 48);
    if (v15)
    {
      v16 = *(v14 + 64);
      v17 = *(v14 + 56);
      v18 = *(v14 + 40);
      __dst[0] = *(v14 + 24);
      *&__dst[1] = v18;
      *(&__dst[1] + 1) = v15;
      *&__dst[2] = v17;
      WORD4(__dst[2]) = v16 & 0xFF01;
      if (StoryPromptAttributes.hasMusicCurationIngredients()())
      {
        v19 = *(v0 + 208);
        v63 = 0;
        sub_1C6FC0604((v0 + 16));
        memcpy(__dst, (v0 + 16), sizeof(__dst));
        StoryMusicCurator.packageSpecificationOptions(for:in:fallbackMood:)(&v63, v19, __dst);
        if (v4)
        {
LABEL_16:
          OUTLINED_FUNCTION_116();
          OUTLINED_FUNCTION_235_0();

          __asm { BRAA            X2, X16 }
        }

        v33 = v20;
        v34 = v20 + 64;
        v35 = -1;
        v36 = -1 << *(v20 + 32);
        if (-v36 < 64)
        {
          v35 = ~(-1 << -v36);
        }

        v1 = v35 & *(v20 + 64);
        v37 = (63 - v36) >> 6;
        sub_1C75504FC();
        while (1)
        {
          if (v1)
          {
            goto LABEL_27;
          }

          do
          {
            v38 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              __break(1u);
LABEL_54:
              __break(1u);
              goto LABEL_55;
            }

            if (v38 >= v37)
            {

              v42 = -1;
              v43 = -1 << *(v33 + 32);
              if (-v43 < 64)
              {
                v42 = ~(-1 << -v43);
              }

              v1 = v42 & *(v33 + 64);
              v44 = (63 - v43) >> 6;
              sub_1C75504FC();
              v4 = 0;
              while (1)
              {
                if (v1)
                {
                  goto LABEL_41;
                }

                do
                {
                  v45 = v4 + 1;
                  if (__OFADD__(v4, 1))
                  {
                    goto LABEL_54;
                  }

                  if (v45 >= v44)
                  {
                    OUTLINED_FUNCTION_103_8();

                    OUTLINED_FUNCTION_95_0();
                    sub_1C755180C();

                    OUTLINED_FUNCTION_3_1();
                    *&__dst[0] = 0xD00000000000001FLL;
                    *(&__dst[0] + 1) = v49;
                    v50 = OUTLINED_FUNCTION_154();
                    MEMORY[0x1CCA5CD70](v50);
                    OUTLINED_FUNCTION_4_79();
                    v9 = *(&__dst[0] + 1);
                    v51 = *&__dst[0];
                    v11 = v1 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
                    OUTLINED_FUNCTION_30_36(v52, v0 + 144);
                    v53 = *(type metadata accessor for StoryMusicCurationDiagnostics(0) + 140);
                    sub_1C75504FC();
                    sub_1C6FB0600();
                    OUTLINED_FUNCTION_17_65();
                    OUTLINED_FUNCTION_2_97();
                    *(v54 + 32) = v51;
                    *(v54 + 40) = v9;
                    *(v11 + v53) = v55;
LABEL_11:
                    swift_endAccess();
                    if (qword_1EDD0ED88 != -1)
                    {
                      OUTLINED_FUNCTION_0_35();
                      swift_once();
                    }

                    v24 = sub_1C754FF1C();
                    OUTLINED_FUNCTION_23_2(v24, &dword_1EDD28D48);
                    sub_1C75504FC();
                    v25 = sub_1C754FEEC();
                    v26 = sub_1C755117C();

                    if (!OUTLINED_FUNCTION_200())
                    {
                      goto LABEL_15;
                    }

                    goto LABEL_14;
                  }

                  v1 = *(v34 + 8 * v45);
                  ++v4;
                }

                while (!v1);
                v4 = v45;
LABEL_41:
                OUTLINED_FUNCTION_54_25();
                *(v0 + 144) = v3;
                *(v0 + 152) = v2;
                v46 = sub_1C755068C();
                if (v3 == v46 && v2 == v47)
                {
                  goto LABEL_48;
                }

                v3 = OUTLINED_FUNCTION_61_18(v46);
                sub_1C75504FC();

                sub_1C6FD7FC8(v0 + 144, &qword_1EC21AAE0, &unk_1C7583DA0);
                if (v3)
                {
LABEL_49:

                  OUTLINED_FUNCTION_103_8();
                  OUTLINED_FUNCTION_95_0();
                  sub_1C755180C();
                  OUTLINED_FUNCTION_303();
                  OUTLINED_FUNCTION_71_13();
                  OUTLINED_FUNCTION_84_11();
                  v56 = OUTLINED_FUNCTION_154();
                  MEMORY[0x1CCA5CD70](v56);
                  OUTLINED_FUNCTION_4_79();
                  v9 = *(&__dst[0] + 1);
                  v57 = *&__dst[0];
                  v11 = v1 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
                  OUTLINED_FUNCTION_30_36(v58, v0 + 144);
                  v59 = *(type metadata accessor for StoryMusicCurationDiagnostics(0) + 140);
                  sub_1C75504FC();
                  sub_1C6FB0600();
                  OUTLINED_FUNCTION_17_65();
                  OUTLINED_FUNCTION_2_97();
                  *(v60 + 32) = v57;
                  *(v60 + 40) = v9;
                  *(v11 + v59) = v61;
                  swift_endAccess();
                  if (qword_1EDD0ED88 != -1)
                  {
                    OUTLINED_FUNCTION_0_35();
                    swift_once();
                  }

                  v62 = sub_1C754FF1C();
                  OUTLINED_FUNCTION_23_2(v62, &dword_1EDD28D48);
                  sub_1C75504FC();
                  v25 = sub_1C754FEEC();
                  v26 = sub_1C755117C();

                  if (!OUTLINED_FUNCTION_200())
                  {
LABEL_15:

                    goto LABEL_16;
                  }

LABEL_14:
                  OUTLINED_FUNCTION_41_0();
                  OUTLINED_FUNCTION_17_6();
                  OUTLINED_FUNCTION_47_4();
                  v27 = OUTLINED_FUNCTION_34_31(4.8149e-34);
                  v29 = sub_1C6F765A4(v27, v9, v28);

                  *(v11 + 4) = v29;
                  OUTLINED_FUNCTION_22_53(&dword_1C6F5C000, v30, v26, "(canCurateAppleMusic) %s");
                  OUTLINED_FUNCTION_56_2();
                  OUTLINED_FUNCTION_235();
                  MEMORY[0x1CCA5F8E0]();

                  goto LABEL_16;
                }
              }
            }

            v1 = *(v34 + 8 * v38);
            ++v4;
          }

          while (!v1);
          v4 = v38;
LABEL_27:
          OUTLINED_FUNCTION_54_25();
          *(v0 + 144) = v3;
          *(v0 + 152) = v2;
          v39 = sub_1C755068C();
          if (v3 == v39 && v2 == v40)
          {
LABEL_48:
            sub_1C75504FC();

            sub_1C6FD7FC8(v0 + 144, &qword_1EC21AAE0, &unk_1C7583DA0);
            goto LABEL_49;
          }

          v3 = OUTLINED_FUNCTION_61_18(v39);
          sub_1C75504FC();

          sub_1C6FD7FC8(v0 + 144, &qword_1EC21AAE0, &unk_1C7583DA0);
          if (v3)
          {
            goto LABEL_49;
          }
        }
      }
    }

    OUTLINED_FUNCTION_103_8();
    OUTLINED_FUNCTION_95_0();
    sub_1C755180C();
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_71_13();
    OUTLINED_FUNCTION_84_11();
    v21 = OUTLINED_FUNCTION_154();
    MEMORY[0x1CCA5CD70](v21);
    OUTLINED_FUNCTION_4_79();
    v9 = *(&__dst[0] + 1);
    v10 = *&__dst[0];
    v11 = v1 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_20_18(v11, v0 + 16);
    v12 = *(type metadata accessor for StoryMusicCurationDiagnostics(0) + 140);
  }

  sub_1C75504FC();
  sub_1C6FB0600();
  OUTLINED_FUNCTION_17_65();
  OUTLINED_FUNCTION_2_97();
  *(v22 + 32) = v10;
  *(v22 + 40) = v9;
  *(v11 + v12) = v23;
  goto LABEL_11;
}

uint64_t sub_1C7324174@<X0>(char *a1@<X0>, uint8_t *a2@<X1>, char *a3@<X8>)
{
  v4 = *a1;
  switch(*a1)
  {
    case 1:
    case 2:
    case 3:
      v6 = sub_1C7551DBC();

      if (v6)
      {
        goto LABEL_4;
      }

      break;
    default:

LABEL_4:
      if (qword_1EDD0ED88 != -1)
      {
        swift_once();
      }

      v8 = sub_1C754FF1C();
      __swift_project_value_buffer(v8, &dword_1EDD28D48);
      v9 = sub_1C754FEEC();
      v10 = sub_1C755118C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1C6F5C000, v9, v10, "(Apple Music) Story Music curation technique will be auto selected", v11, 2u);
        MEMORY[0x1CCA5F8E0](v11, -1, -1);
      }

      result = sub_1C738C104(a2);
      if (result)
      {
        v4 = 3;
      }

      else
      {
        result = type metadata accessor for StoryMusicCurationOptions(0);
        if (*&a2[*(result + 88) + 48])
        {
          result = StoryPromptAttributes.hasMusicCurationIngredients()();
          if (result)
          {
            v4 = 1;
          }

          else
          {
            v4 = 2;
          }
        }

        else
        {
          v4 = 2;
        }
      }

      break;
  }

  *a3 = v4;
  return result;
}

uint64_t sub_1C73243A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v103 = MEMORY[0x1E69E7CC0];
  v6 = a1 + *(type metadata accessor for StoryMusicCurationOptions(0) + 88);
  v7 = *(v6 + 48);
  v95 = a2;
  if (v7)
  {
    v9 = *(v6 + 24);
    v8 = *(v6 + 32);
    v10 = *(v6 + 40);
    v11 = *(v6 + 56);
    v12 = *(v6 + 64);
    if (v9)
    {
      sub_1C75504FC();
      v13 = v8;
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    if (*(v13 + 16))
    {
      if (qword_1EDD0ED88 == -1)
      {
LABEL_8:
        v14 = sub_1C754FF1C();
        __swift_project_value_buffer(v14, &dword_1EDD28D48);
        sub_1C75504FC();
        v15 = sub_1C754FEEC();
        v16 = sub_1C755118C();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v96 = v18;
          *v17 = 136315138;
          v19 = MEMORY[0x1CCA5D090](v13, MEMORY[0x1E69E6158]);
          v21 = v20;

          v22 = sub_1C6F765A4(v19, v21, &v96);

          *(v17 + 4) = v22;
          _os_log_impl(&dword_1C6F5C000, v15, v16, "(Apple Music) (Fallback to Maestro) QU found artists: %s. Do not switch to keywordBasedCuration.", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v18);
          MEMORY[0x1CCA5F8E0](v18, -1, -1);
          MEMORY[0x1CCA5F8E0](v17, -1, -1);
        }

        else
        {
        }

        sub_1C75504FC();
        return 0;
      }

LABEL_61:
      swift_once();
      goto LABEL_8;
    }

    v96 = v9;
    v97 = v8;
    v98 = v10;
    v99 = v7;
    v100 = v11;
    v101 = v12 & 0xFF01;
    v5 = MEMORY[0x1E69E7CC0];
    v93 = sub_1C7325F10(&v96, a3);
    v103 = v93;
    a2 = v95;
  }

  else
  {
    v93 = v5;
  }

  v102 = v5;
  v23 = sub_1C6FB6304();
  v24 = 0;
  v13 = 0;
  v25 = a2 & 0xC000000000000001;
  while (v23 != v24)
  {
    sub_1C6FB6330();
    if (v25)
    {
      v27 = MEMORY[0x1CCA5DDD0](v24, a2);
      v26 = v27;
    }

    else
    {
      v26 = *(a2 + 8 * v24 + 32);
    }

    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_60;
    }

    v28 = *(v26 + 24);
    v96 = *(v26 + 16);
    v97 = v28;
    MEMORY[0x1EEE9AC00](v27);
    sub_1C75504FC();
    v29 = sub_1C70735F4();

    if (v29)
    {
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    else
    {
    }

    ++v24;
    a2 = v95;
  }

  v30 = v102;
  v31 = sub_1C6FB6304();
  if (v31)
  {
    v36 = v31;
    v96 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v31 & ~(v31 >> 63), 0, v32, v33, v34, v35);
    if (v36 < 0)
    {
      __break(1u);
LABEL_63:
      swift_once();
LABEL_45:
      v66 = sub_1C754FF1C();
      __swift_project_value_buffer(v66, &dword_1EDD28D48);
      v67 = sub_1C754FEEC();
      v68 = sub_1C755117C();
      if (!os_log_type_enabled(v67, v68))
      {
        goto LABEL_53;
      }

      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v102 = v70;
      *v69 = 136315394;
      v71 = sub_1C75504FC();
      v72 = MEMORY[0x1CCA5D090](v71, MEMORY[0x1E69E6158]);
      v74 = v73;

      v75 = sub_1C6F765A4(v72, v74, &v102);

      *(v69 + 4) = v75;
      *(v69 + 12) = 2080;
      v76 = type metadata accessor for MusicKeywordCompletion();
      v77 = sub_1C75504FC();
      v78 = MEMORY[0x1CCA5D090](v77, v76);
      v80 = v79;

      v81 = sub_1C6F765A4(v78, v80, &v102);

      *(v69 + 14) = v81;
      _os_log_impl(&dword_1C6F5C000, v67, v68, "(Apple Music) (Fallback to Maestro) Keywords %s are found in QU. Switch to keywordBasedCuration with updated maestroKeywords %s.", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v70, -1, -1);
      v82 = v69;
      goto LABEL_52;
    }

    v37 = 0;
    v38 = v96;
    v94 = v30 & 0xC000000000000001;
    v39 = v30;
    do
    {
      if (v94)
      {
        v40 = MEMORY[0x1CCA5DDD0](v37, v30);
      }

      else
      {
        v40 = *(v30 + 8 * v37 + 32);
      }

      v41 = *(v40 + 16);
      v42 = *(v40 + 24);
      sub_1C75504FC();

      v96 = v38;
      v48 = *(v38 + 16);
      v47 = *(v38 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1C6F7ED9C(v47 > 1, v48 + 1, 1, v43, v44, v45, v46);
        v38 = v96;
      }

      ++v37;
      *(v38 + 16) = v48 + 1;
      v49 = v38 + 16 * v48;
      *(v49 + 32) = v41;
      *(v49 + 40) = v42;
      v30 = v39;
    }

    while (v36 != v37);
  }

  else
  {

    v38 = MEMORY[0x1E69E7CC0];
  }

  if (*(v93 + 16))
  {
    v50 = sub_1C75504FC();
    v51 = sub_1C731EE10(v50);

    v96 = v51;
    sub_1C75504FC();
    sub_1C706D154();
    v53 = v52;
    sub_1C706D154();
    v55 = sub_1C7238810(v54, v53);

    v56 = 0;
    v57 = 1 << *(v55 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & *(v55 + 56);
    v60 = (v57 + 63) >> 6;
    if (v59)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v61 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v61 >= v60)
      {

        swift_bridgeObjectRetain_n();
        v102 = sub_1C71CC894(v51);
        sub_1C70CCDF0(&v102);
        swift_bridgeObjectRelease_n();
        v96 = v102;
        if (qword_1EDD0ED88 != -1)
        {
          goto LABEL_63;
        }

        goto LABEL_45;
      }

      v59 = *(v55 + 56 + 8 * v61);
      ++v56;
      if (v59)
      {
        v56 = v61;
        do
        {
LABEL_40:
          v62 = (*(v55 + 48) + ((v56 << 10) | (16 * __clz(__rbit64(v59)))));
          v63 = *v62;
          v64 = v62[1];
          type metadata accessor for MusicKeywordCompletion();
          swift_allocObject();
          MusicKeywordCompletion.init(keyword:score:)(v63, v64, 1.0);
          v65 = sub_1C75504FC();
          MEMORY[0x1CCA5D040](v65);
          if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C7550B9C();
          }

          v59 &= v59 - 1;
          sub_1C7550BEC();
          v51 = v96;
        }

        while (v59);
      }
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (*(v38 + 16))
  {
    v83 = qword_1EDD0ED88;
    sub_1C75504FC();
    if (v83 != -1)
    {
      swift_once();
    }

    v84 = sub_1C754FF1C();
    __swift_project_value_buffer(v84, &dword_1EDD28D48);
    sub_1C75504FC();
    v67 = sub_1C754FEEC();
    v85 = sub_1C755117C();

    if (!os_log_type_enabled(v67, v85))
    {

      goto LABEL_53;
    }

    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v102 = v87;
    *v86 = 136315138;
    v88 = MEMORY[0x1CCA5D090](v38, MEMORY[0x1E69E6158]);
    v90 = v89;

    v91 = sub_1C6F765A4(v88, v90, &v102);

    *(v86 + 4) = v91;
    _os_log_impl(&dword_1C6F5C000, v67, v85, "(Apple Music) (Fallback to Maestro) Keywords %s are found in maestroKeywords. Switch to keywordBasedCuration.", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v87);
    MEMORY[0x1CCA5F8E0](v87, -1, -1);
    v82 = v86;
LABEL_52:
    MEMORY[0x1CCA5F8E0](v82, -1, -1);
LABEL_53:

    return 1;
  }

  sub_1C75504FC();

  return 0;
}

uint64_t StoryMusicCurator.prepareAppleMusicCurationOptions(using:mood:with:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
  v8 = sub_1C75504DC();
  v9 = StoryMusicCurator.packageMaestroKeywords(using:)(a1);
  v10 = *(a3 + 48);
  v92 = a3;
  v93 = v4;
  if (v10 == 1)
  {
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v11 = sub_1C754FF1C();
    __swift_project_value_buffer(v11, &dword_1EDD28D48);
    v12 = sub_1C754FEEC();
    v13 = sub_1C755117C();
    v14 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_96_0();
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C6F5C000, v12, v13, "(Apple Music) Using maestro mood keywords", v16, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    memcpy(v97, a2, sizeof(v97));
    v17 = StoryMusicCurator.appendMoodKeywords(to:for:)(v9, v97);

    v18 = v4 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    swift_beginAccess();
    *(v18 + *(type metadata accessor for StoryMusicCurationDiagnostics(0) + 40)) = v17;
    sub_1C75504FC();

    v9 = v17;
  }

  else
  {
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v19 = sub_1C754FF1C();
    __swift_project_value_buffer(v19, &dword_1EDD28D48);
    v20 = sub_1C754FEEC();
    v21 = sub_1C755117C();
    v22 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_96_0();
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1C6F5C000, v20, v21, "(Apple Music) Not using maestro mood keywords", v24, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }
  }

  sub_1C755068C();
  *(&v97[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F30, &qword_1C757ED70);
  *&v97[0] = v9;
  OUTLINED_FUNCTION_118_8();
  swift_isUniquelyReferenced_nonNull_native();
  *&v95[0] = v8;
  __swift_mutable_project_boxed_opaque_existential_0(v96, *(&v96[1] + 1));
  v25 = &v91;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14_0();
  v28 = OUTLINED_FUNCTION_78_13(v27);
  v29(v28);
  sub_1C709D494();
  __swift_destroy_boxed_opaque_existential_1(v96);

  sub_1C755068C();
  v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v31 = sub_1C6F65BE8(0, &qword_1EDD108E0, 0x1E696AD98);
  *(&v97[1] + 1) = v31;
  *&v97[0] = v30;
  OUTLINED_FUNCTION_118_8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_110_7();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14_0();
  v35 = OUTLINED_FUNCTION_77_13(v34);
  v36(v35);
  v37 = OUTLINED_FUNCTION_91_12();
  sub_1C709D4A8(v37, v38, v39, isUniquelyReferenced_nonNull_native, v40);
  __swift_destroy_boxed_opaque_existential_1(v96);

  sub_1C755068C();
  v41 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(&v97[1] + 1) = v31;
  *&v97[0] = v41;
  OUTLINED_FUNCTION_118_8();
  v42 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_110_7();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_14_0();
  v45 = OUTLINED_FUNCTION_77_13(v44);
  v46(v45);
  v47 = OUTLINED_FUNCTION_91_12();
  sub_1C709D4A8(v47, v48, v49, v42, v50);
  __swift_destroy_boxed_opaque_existential_1(v96);

  v51 = *&v95[0];
  v52 = v92;
  v53 = *(v92 + 64);
  if (*(v53 + 16))
  {
    v54 = sub_1C755068C();
    v56 = v55;
    *(&v97[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    *&v97[0] = v53;
    OUTLINED_FUNCTION_118_8();
    sub_1C75504FC();
    v57 = swift_isUniquelyReferenced_nonNull_native();
    *&v95[0] = v51;
    v25 = *(&v96[1] + 1);
    __swift_mutable_project_boxed_opaque_existential_0(v96, *(&v96[1] + 1));
    OUTLINED_FUNCTION_29();
    MEMORY[0x1EEE9AC00](v58);
    OUTLINED_FUNCTION_14_0();
    v61 = (v60 - v59);
    (*(v62 + 16))(v60 - v59);
    sub_1C709D024(*v61, v54, v56, v57, v95);
    __swift_destroy_boxed_opaque_existential_1(v96);

    v51 = *&v95[0];
  }

  LOBYTE(v95[0]) = 0;
  sub_1C6FC0604(v97);
  memcpy(v96, v97, sizeof(v96));
  v63 = v94;
  StoryMusicCurator.packageSpecificationOptions(for:in:fallbackMood:)(v95, v52, v96);
  if (!v63)
  {
    v65 = v64;
    if (*(v64 + 16))
    {
      sub_1C755068C();
      *(&v96[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216CF8, &qword_1C757EAE0);
      *&v96[0] = v65;
      sub_1C6FCABEC(v96, v95);
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_106_7();
      OUTLINED_FUNCTION_29();
      MEMORY[0x1EEE9AC00](v66);
      OUTLINED_FUNCTION_14_0();
      (*(v69 + 16))(v68 - v67);
      sub_1C709D518();
      __swift_destroy_boxed_opaque_existential_1(v95);

      v51 = v98;
      sub_1C755068C();
      sub_1C6FE3750();

      if (*(&v96[1] + 1))
      {

        sub_1C6FD7FC8(v96, &qword_1EC216D30, &unk_1C7583DB0);
        goto LABEL_24;
      }

      v25 = &qword_1EC216D30;
      sub_1C6FD7FC8(v96, &qword_1EC216D30, &unk_1C7583DB0);
      sub_1C755068C();
      sub_1C6FE3750();

      v74 = *(&v96[1] + 1);
      sub_1C6FD7FC8(v96, &qword_1EC216D30, &unk_1C7583DB0);
      if (v74)
      {
LABEL_24:
        v25 = sub_1C755068C();
        *(&v96[1] + 1) = MEMORY[0x1E69E6370];
        LOBYTE(v96[0]) = 1;
        sub_1C6FCABEC(v96, v95);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_106_7();
        OUTLINED_FUNCTION_29();
        MEMORY[0x1EEE9AC00](v75);
        OUTLINED_FUNCTION_14_0();
        v77 = OUTLINED_FUNCTION_78_13(v76);
        v78(v77);
        sub_1C709D30C();
        __swift_destroy_boxed_opaque_existential_1(v95);

        v51 = v98;
        if (qword_1EDD0ED88 != -1)
        {
          OUTLINED_FUNCTION_0_35();
          swift_once();
        }

        v79 = sub_1C754FF1C();
        __swift_project_value_buffer(v79, &dword_1EDD28D48);
        v71 = sub_1C754FEEC();
        sub_1C755117C();
        v80 = OUTLINED_FUNCTION_12_60();
        if (!os_log_type_enabled(v80, v81))
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      if (qword_1EDD0ED88 != -1)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v88 = sub_1C754FF1C();
      __swift_project_value_buffer(v88, &dword_1EDD28D48);
      v71 = sub_1C754FEEC();
      sub_1C755117C();
      v89 = OUTLINED_FUNCTION_12_60();
      if (!os_log_type_enabled(v89, v90))
      {
        goto LABEL_28;
      }
    }

    else
    {

      if (qword_1EDD0ED88 != -1)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v70 = sub_1C754FF1C();
      __swift_project_value_buffer(v70, &dword_1EDD28D48);
      v71 = sub_1C754FEEC();
      sub_1C755118C();
      v72 = OUTLINED_FUNCTION_12_60();
      if (!os_log_type_enabled(v72, v73))
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    OUTLINED_FUNCTION_96_0();
    v82 = swift_slowAlloc();
    OUTLINED_FUNCTION_92_0(v82);
    OUTLINED_FUNCTION_102_11();
    _os_log_impl(v83, v84, v85, v86, v25, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
LABEL_28:

    return v51;
  }

  return v51;
}

uint64_t sub_1C73257A4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 272) = a6;
  *(v7 + 280) = a7;
  *(v7 + 256) = a4;
  *(v7 + 264) = a5;
  *(v7 + 240) = a2;
  *(v7 + 248) = a3;
  *(v7 + 345) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1C73257D4, 0, 0);
}

uint64_t sub_1C73257D4()
{
  switch(*(v0 + 345))
  {
    case 1:
      goto LABEL_10;
    case 2:
      v14 = *(v0 + 280);
      sub_1C755068C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216CF8, &qword_1C757EAE0);
      OUTLINED_FUNCTION_20_18(v14 + 16, v0 + 192);
      OUTLINED_FUNCTION_113_10();
      swift_endAccess();
      sub_1C755068C();
      OUTLINED_FUNCTION_20_18(v14 + 16, v0 + 216);
      OUTLINED_FUNCTION_113_10();
      swift_endAccess();
LABEL_10:
      v15 = *(v0 + 280);
      *(v0 + 344) = 0;
      swift_beginAccess();
      *(v0 + 304) = *(v15 + 16);
      sub_1C75504FC();
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v0 + 312) = v16;
      *v16 = v17;
      v16[1] = sub_1C7325C08;

      result = StoryMusicCurator.requestMaestroMusicCuration(for:with:eventRecorder:)();
      break;
    case 3:
      memcpy((v0 + 16), *(v0 + 272), 0x80uLL);
      v18 = swift_task_alloc();
      *(v0 + 288) = v18;
      *v18 = v0;
      v18[1] = sub_1C7325AE8;

      result = sub_1C73891D0();
      break;
    default:
      if (qword_1EDD0ED88 != -1)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v1 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v1, &dword_1EDD28D48);
      v2 = sub_1C754FEEC();
      sub_1C755119C();
      v3 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v3, v4))
      {
        OUTLINED_FUNCTION_96_0();
        v5 = swift_slowAlloc();
        OUTLINED_FUNCTION_37_0(v5);
        OUTLINED_FUNCTION_8_1();
        _os_log_impl(v6, v7, v8, v9, v10, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C70EB0F0();
      swift_allocError();
      *v11 = 2;
      swift_willThrow();
      OUTLINED_FUNCTION_43();

      result = v12();
      break;
  }

  return result;
}

uint64_t sub_1C7325AE8()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v8 + 296) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_116();

    return v12(v3);
  }
}

uint64_t sub_1C7325C08()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  v5[40] = v9;
  v5[41] = v0;

  if (!v0)
  {

    v5[42] = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C7325D20()
{
  v15 = v0;
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v14[0] = 0;
  v4 = static MusicCurationJsonParser.musicCurationSongs(fromAppleMusicJson:from:songType:)(v1, v3, 0xD000000000000014, 0x80000001C75AB260, v14);

  if (v2)
  {
    OUTLINED_FUNCTION_43();

    return v5();
  }

  else
  {
    if (qword_1EC213DA8 != -1)
    {
      swift_once();
    }

    v7 = v0[31];
    v8 = type metadata accessor for MusicMobileAssetsConfigUtility(0);
    v9 = __swift_project_value_buffer(v8, qword_1EC217400);
    v10 = *(v8 + 20);
    v11 = v7 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_20_18(v7 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics, (v0 + 21));
    v12 = type metadata accessor for StoryMusicCurationDiagnostics(0);
    sub_1C709CFB4(v9 + v10, v11 + *(v12 + 148));
    swift_endAccess();
    OUTLINED_FUNCTION_116();

    return v13(v4);
  }
}

uint64_t sub_1C7325EB4()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C7325F10(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8, &qword_1C755BFD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v31 - v5;
  v6 = *(a2 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *a1;
  v36 = a1[1];
  v37 = v7;
  v8 = a1[2];
  v34 = a1[3];
  v35 = v8;
  v33 = a1[4];
  LODWORD(v8) = *(a1 + 40);
  v9 = (a2 + 40);
  v31 = *(a1 + 41);
  v32 = v8;
  v40 = MEMORY[0x1E69E7CC0];
  do
  {
    v10 = *(v9 - 1);
    v11 = *v9;
    sub_1C75504FC();
    static StoryMusicEmbeddingTerms.termByEngineeringName(_:)(&v44, v10, v11);
    v12 = v45;
    if (v45 && (v41 = v11, v39 = v10, v13 = v44, v14 = sub_1C75506FC(), v16 = v15, sub_1C72B9804(v13, v12), v44 = v37, v45 = v36, v46 = v35, v47 = v34, v48 = v33, v49 = v32, v50 = v31, StoryPromptAttributes.description.getter(), v17 = sub_1C75506FC(), v19 = v18, , v44 = v17, v45 = v19, v42 = v14, v43 = v16, v20 = sub_1C754E15C(), v21 = v38, __swift_storeEnumTagSinglePayload(v38, 1, 1, v20), sub_1C6FB5E8C(), sub_1C755157C(), LOBYTE(v14) = v22, sub_1C6FD7FC8(v21, &qword_1EC214DF8, &qword_1C755BFD0), , , (v14 & 1) == 0))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v40 = v28;
      }

      v23 = v39;
      v24 = *(v40 + 16);
      if (v24 >= *(v40 + 24) >> 1)
      {
        sub_1C6FB1814();
        v40 = v29;
      }

      v25 = v40;
      v26 = v41;
      *(v40 + 16) = v24 + 1;
      v27 = v25 + 16 * v24;
      *(v27 + 32) = v23;
      *(v27 + 40) = v26;
    }

    else
    {
    }

    v9 += 2;
    --v6;
  }

  while (v6);
  return v40;
}

uint64_t static StoryMusicCurator.isUserEligibleForAppleMusic()()
{
  OUTLINED_FUNCTION_42();
  v1 = type metadata accessor for AppleMusicSubscriptionState(0);
  OUTLINED_FUNCTION_76(v1);
  *(v0 + 16) = OUTLINED_FUNCTION_77();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 24) = v2;
  *v2 = v3;
  v2[1] = sub_1C7326280;

  return static StoryMusicCurator.queryAppleMusicSubscriptionState(cacheValueInSeconds:)();
}

uint64_t sub_1C7326280()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C7326368()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 16);
  v2 = *(v1 + 1);
  sub_1C6FF7688(v1);
  v3 = 1;
  switch(v2)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      OUTLINED_FUNCTION_15_62();
      v4 = OUTLINED_FUNCTION_66_2();
      v3 = OUTLINED_FUNCTION_46_27(v4, v5, v6);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_116();

  return v7(v3 & 1);
}

uint64_t sub_1C732649C()
{
  sub_1C6F65BE8(0, &qword_1EC21AAE8, 0x1E698C7D8);
  v1 = sub_1C732682C(0x736F746F6850, 0xE600000000000000, 49, 0xE100000000000000);
  v0[20] = v1;
  OUTLINED_FUNCTION_87_16();
  v2 = sub_1C755065C();
  v3 = [v1 stringForKey_];
  v0[21] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C7326630;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AAF0, &qword_1C7583DC8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C73268C0;
  v0[13] = &block_descriptor_30;
  v0[14] = v4;
  [v3 valueWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C7326630()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C7326730()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);

  v3 = sub_1C755068C();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_1C73267BC()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

id sub_1C732682C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C755065C();

  v5 = sub_1C755065C();

  v6 = [swift_getObjCClassFromMetadata() bagForProfile:v4 profileVersion:v5];

  return v6;
}

uint64_t *sub_1C73268C0(uint64_t a1, void *a2, char a3, void *a4)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    v9 = a4;

    return sub_1C6FF5694();
  }

  else if (a2)
  {
    v10 = a2;

    return sub_1C6FF0CE0(v8, v10, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C7326958(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C755065C();

  v5 = [a3 effectiveBoolValueForSetting_];

  return v5;
}

uint64_t sub_1C73269B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleMusicSubscriptionState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7326A18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_164(a1, a2, a3, a4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1C7326A68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_164(a1, a2, a3, a4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 40))(v4, v5);
  return v4;
}

_BYTE *storeEnumTagSinglePayload for AppleMusicConfigurationParameters(_BYTE *result, int a2, int a3)
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

void OUTLINED_FUNCTION_40_36()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_54_25()
{
  v5 = *(v0 + 56) + 32 * (__clz(__rbit64(v3)) | (v1 << 6));

  return sub_1C6F774EC(v5, v2 + 160);
}

void OUTLINED_FUNCTION_55_26()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_61_18(uint64_t a1)
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_62_20()
{
}

id OUTLINED_FUNCTION_85_12()
{
  *(v1 + 96) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_106_7()
{
  *(v2 - 72) = v1;
  v4 = *(v0 + 80);

  return __swift_mutable_project_boxed_opaque_existential_0(v0 + 56, v4);
}

void OUTLINED_FUNCTION_107_8()
{
}

void OUTLINED_FUNCTION_109_10()
{
  v2 = *(v0 + 96);
}

uint64_t OUTLINED_FUNCTION_110_7()
{
  *(v0 + 56) = v1;
  v3 = *(v0 + 112);

  return __swift_mutable_project_boxed_opaque_existential_0(v0 + 88, v3);
}

void OUTLINED_FUNCTION_111_9()
{
  v2 = *(v0 + 728);
}

uint64_t OUTLINED_FUNCTION_113_10()
{

  return sub_1C709B020();
}

uint64_t OUTLINED_FUNCTION_114_10@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1C7326A18(v3, v4 + a3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_115_12()
{

  return type metadata accessor for AppleMusicSubscriptionState(0);
}

void OUTLINED_FUNCTION_116_10()
{
}

_OWORD *OUTLINED_FUNCTION_118_8()
{

  return sub_1C6FCABEC((v0 + 216), (v0 + 88));
}

void OUTLINED_FUNCTION_119_10()
{
}

uint64_t PromptSanitizer.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC18PhotosIntelligence15PromptSanitizer_logger;
  if (qword_1EDD0B9A0 != -1)
  {
    OUTLINED_FUNCTION_1_106(&qword_1EDD0B9A0);
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EDD0B9A8);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  return v0;
}

uint64_t PromptSanitizer.sanitizePrompt(from:extendedTokens:queryTokens:eventRecorder:progressReporter:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  *(v6 + 256) = a5;
  *(v6 + 264) = v7;
  *(v6 + 240) = a3;
  *(v6 + 248) = a4;
  *(v6 + 232) = a1;
  *(v6 + 272) = *v7;
  v9 = sub_1C754D84C();
  *(v6 + 280) = v9;
  *(v6 + 288) = *(v9 - 8);
  *(v6 + 296) = swift_task_alloc();
  v10 = sub_1C754F38C();
  *(v6 + 304) = v10;
  *(v6 + 312) = *(v10 - 8);
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C73270D4, 0, 0);
}

void sub_1C73270D4()
{
  v64 = v0;
  v1 = v0[31];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v60 = (v0 + 20);
  v58 = (v0 + 22);
  v2 = [v0[29] string];
  v3 = sub_1C755068C();
  v5 = v4;

  sub_1C75504FC();
  v6 = sub_1C754FEEC();
  v7 = sub_1C75511BC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v63[0] = v9;
    *v8 = 136642819;
    *(v8 + 4) = sub_1C6F765A4(v3, v5, v63);
    _os_log_impl(&dword_1C6F5C000, v6, v7, "Starting sanitizePrompt with unambiguous prompt: %{sensitive}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v10 = v3;
  v11 = v0[41];
  v12 = v0[42];
  v13 = v0[33];
  v56 = v0[34];
  v14 = v0[29];
  v15 = *MEMORY[0x1E6978F98];
  v0[20] = 0;
  v0[21] = 0xE000000000000000;
  v0[22] = 0;
  v0[23] = 0xE000000000000000;
  v62 = v15;
  v16 = sub_1C7327A00(v11);
  v17 = sub_1C7327C24(v12);
  static StoryGenerationUtilities.queryTokenPersonUUIDs(from:)();
  sub_1C706D154();
  v19 = v18;
  v0[28] = MEMORY[0x1E69E7CC0];
  v57 = [v14 length];
  v20 = swift_allocObject();
  v20[2] = v10;
  v20[3] = v5;
  v20[4] = v60;
  v20[5] = v58;
  v20[6] = v0 + 28;
  v20[7] = v13;
  v20[8] = v16;
  v20[9] = v17;
  v20[10] = v19;
  v20[11] = v56;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1C7328F34;
  *(v21 + 24) = v20;
  v0[6] = sub_1C71CCBD4;
  v0[7] = v21;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C743BBE4;
  v0[5] = &block_descriptor_31;
  v22 = _Block_copy(v0 + 2);

  [v14 enumerateAttribute:v62 inRange:0 options:v57 usingBlock:{0, v22}];
  _Block_release(v22);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    v24 = v0[36];
    v23 = v0[37];
    v25 = v0[35];
    v26 = v0[21];
    v0[24] = v0[20];
    v0[25] = v26;
    sub_1C75504FC();
    sub_1C754D7FC();
    sub_1C6FB5E8C();
    v27 = sub_1C755154C();
    v29 = v28;
    v30 = *(v24 + 8);
    v30(v23, v25);

    v0[20] = v27;
    v0[21] = v29;

    v31 = v0[23];
    v0[26] = v0[22];
    v0[27] = v31;
    sub_1C75504FC();
    sub_1C754D7FC();
    v32 = sub_1C755154C();
    v34 = v33;
    v30(v23, v25);

    v0[22] = v32;
    v0[23] = v34;

    v35 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v35 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (!v35 || (v36 = sub_1C75504FC(), v37 = sub_1C7328660(v36), , (v37 & 1) != 0))
    {
      v38 = v0[21];
      v0[22] = v0[20];
      v0[23] = v38;
      sub_1C75504FC();
    }

    sub_1C754F2EC();
    v39 = sub_1C754FEEC();
    v40 = sub_1C75511BC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v63[0] = swift_slowAlloc();
      *v41 = 136643075;
      OUTLINED_FUNCTION_5(v60, (v0 + 14));
      v42 = v0[20];
      v43 = v0[21];
      sub_1C75504FC();
      v44 = sub_1C6F765A4(v42, v43, v63);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2085;
      v45 = (v0 + 22);
      OUTLINED_FUNCTION_5(v58, (v0 + 17));
      v46 = v0[22];
      v47 = v0[23];
      sub_1C75504FC();
      v48 = sub_1C6F765A4(v46, v47, v63);

      *(v41 + 14) = v48;
      _os_log_impl(&dword_1C6F5C000, v39, v40, "Finished sanitizePrompt with people names removed: %{sensitive}s, with no music: %{sensitive}s", v41, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {

      v45 = (v0 + 22);
    }

    v50 = v0[39];
    v49 = v0[40];
    v59 = v0[38];
    v51 = v0[31];
    OUTLINED_FUNCTION_5(v60, (v0 + 8));
    v52 = v0[21];
    v61 = v0[20];
    OUTLINED_FUNCTION_5(v45, (v0 + 11));
    v54 = v0[22];
    v53 = v0[23];
    sub_1C75504FC();
    sub_1C75504FC();

    __swift_project_boxed_opaque_existential_1(v51, v1[3]);
    OUTLINED_FUNCTION_15_1();
    sub_1C754F1AC();
    (*(v50 + 8))(v49, v59);

    v55 = v0[1];

    v55(v61, v52, v54, v53);
  }
}

uint64_t sub_1C73278C0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0B9A8);
  __swift_project_value_buffer(v0, qword_1EDD0B9A8);
  return sub_1C754FEFC();
}

uint64_t PromptSanitizer.init()()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence15PromptSanitizer_logger;
  if (qword_1EDD0B9A0 != -1)
  {
    OUTLINED_FUNCTION_1_106(&qword_1EDD0B9A0);
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EDD0B9A8);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  return v0;
}

PhotosIntelligence::PromptSanitizer::PetSanitizationInfo __swiftcall PromptSanitizer.PetSanitizationInfo.init(detectionType:isMyPet:)(PhotosIntelligence::PromptSanitizer::PetSanitizationInfo detectionType, Swift::Bool isMyPet)
{
  *v2 = detectionType.detectionType;
  *(v2 + 16) = isMyPet;
  detectionType.isMyPet = isMyPet;
  return detectionType;
}

void *sub_1C7327A00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 88;
    v3 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v19 = v1;
      v5 = *(v2 - 24);
      v4 = *(v2 - 16);
      v20 = *(v2 - 8);
      v21 = *(v2 - 6);
      v22 = *(v2 - 5);
      v23 = *(v2 - 4);
      v24 = *(v2 - 3);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      v6 = sub_1C6F78124(v5, v4);
      if (__OFADD__(v3[2], (v7 & 1) == 0))
      {
        break;
      }

      v8 = v6;
      v9 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AB00, &qword_1C7583E98);
      if (sub_1C7551A2C())
      {
        v10 = sub_1C6F78124(v5, v4);
        if ((v9 & 1) != (v11 & 1))
        {
          goto LABEL_17;
        }

        v8 = v10;
      }

      if (v9)
      {
        v12 = v3[7] + 6 * v8;
        *v12 = v20;
        *(v12 + 2) = v21;
        *(v12 + 3) = v22;
        *(v12 + 4) = v23;
        *(v12 + 5) = v24;
      }

      else
      {
        v3[(v8 >> 6) + 8] |= 1 << v8;
        v13 = (v3[6] + 16 * v8);
        *v13 = v5;
        v13[1] = v4;
        v14 = v3[7] + 6 * v8;
        *v14 = v20;
        *(v14 + 2) = v21;
        *(v14 + 3) = v22;
        *(v14 + 4) = v23;
        *(v14 + 5) = v24;

        v15 = v3[2];
        v16 = __OFADD__(v15, 1);
        v17 = v15 + 1;
        if (v16)
        {
          goto LABEL_16;
        }

        v3[2] = v17;
      }

      v2 += 72;
      v1 = v19 - 1;
      if (v19 == 1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1C7327C24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 64;
    v3 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v23 = v1;
      v5 = *v2;
      v4 = *(v2 + 8);
      v24 = *(v2 + 33);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v6 = PHDetectionTypeDescription();
      v7 = sub_1C755068C();
      v9 = v8;

      swift_isUniquelyReferenced_nonNull_native();
      v10 = sub_1C6F78124(v5, v4);
      if (__OFADD__(v3[2], (v11 & 1) == 0))
      {
        break;
      }

      v12 = v10;
      v13 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AAF8, &qword_1C7583E90);
      if (sub_1C7551A2C())
      {
        v14 = sub_1C6F78124(v5, v4);
        if ((v13 & 1) != (v15 & 1))
        {
          goto LABEL_17;
        }

        v12 = v14;
      }

      if (v13)
      {
        v16 = v3[7] + 24 * v12;
        *v16 = v7;
        *(v16 + 8) = v9;
        *(v16 + 16) = v24;
      }

      else
      {
        v3[(v12 >> 6) + 8] |= 1 << v12;
        v17 = (v3[6] + 16 * v12);
        *v17 = v5;
        v17[1] = v4;
        v18 = v3[7] + 24 * v12;
        *v18 = v7;
        *(v18 + 8) = v9;
        *(v18 + 16) = v24;

        v19 = v3[2];
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          goto LABEL_16;
        }

        v3[2] = v21;
      }

      v2 += 72;
      v1 = v23 - 1;
      if (v23 == 1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1C7327E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = static StoryGenerationUtilities.substring(of:in:)(a5, a6, a2, a3);
  if (!v15)
  {
    return;
  }

  v16 = v14;
  v17 = v15;
  sub_1C7329154(a1, v26);
  if (!v27)
  {
    sub_1C6FB5FC8(v26, &qword_1EC219770, &unk_1C755C740);
    goto LABEL_9;
  }

  sub_1C73291C4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    MEMORY[0x1CCA5CD70](v16, v17);
    MEMORY[0x1CCA5CD70](v16, v17);

    return;
  }

  v18 = [v25 QUToken];
  if (!v18)
  {

    goto LABEL_9;
  }

  v19 = v18;
  MEMORY[0x1CCA5D040]();
  sub_1C6FB6328();
  sub_1C7550BEC();
  if (static StoryGenerationUtilities.isPersonOrPetQueryToken(_:)())
  {
    v20 = [v25 suggestion];
    v21 = PromptSanitizer.replacePersonOrPetName(for:quToken:relationshipInfoByPersonUUID:petSanitizationInfoByPetUUID:validPersonPetUUIDs:suggestion:)(v16, v17, v19, a11, a12, a13, v20);
    v23 = v22;

    MEMORY[0x1CCA5CD70](v21, v23);
    MEMORY[0x1CCA5CD70](v21, v23);
  }

  else
  {
    v24 = sub_1C73282CC(v19);
    MEMORY[0x1CCA5CD70](v16, v17);
    if ((v24 & 1) == 0)
    {
      MEMORY[0x1CCA5CD70](v16, v17);
    }
  }
}

uint64_t PromptSanitizer.replacePersonOrPetName(for:quToken:relationshipInfoByPersonUUID:petSanitizationInfoByPetUUID:validPersonPetUUIDs:suggestion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1C75506FC();
  v12 = v11;
  if (qword_1EC214270 != -1)
  {
    swift_once();
  }

  if (*(off_1EC21C9E8 + 2))
  {
    sub_1C6F78124(v10, v12);
    if (v13)
    {

      StoryPersonRelationshipType.rawValue.getter();
      return OUTLINED_FUNCTION_15_1();
    }
  }

  static StoryGenerationCharacterTypes.unbiasedRelationshipsStringsWithPrefix.getter();
  v15 = sub_1C7009C30(v10, v12, v14);

  if (v15)
  {
LABEL_15:
    sub_1C75504FC();
    return OUTLINED_FUNCTION_15_1();
  }

  sub_1C7328780(a3, a7, a6);
  v21 = v20;
  v22 = *(v20 + 16);
  if (!v22)
  {

    if (qword_1EC214278 != -1)
    {
      swift_once();
    }

    goto LABEL_15;
  }

  v39 = MEMORY[0x1E69E7CC0];
  sub_1C6F7ED9C(0, v22, 0, v16, v17, v18, v19);
  v23 = (v21 + 40);
  do
  {
    v24 = *(v23 - 1);
    v25 = *v23;
    sub_1C75504FC();
    v26 = sub_1C73289BC(v24, v25, a5, a4);
    v28 = v27;

    v34 = *(v39 + 16);
    v33 = *(v39 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_1C6F7ED9C(v33 > 1, v34 + 1, 1, v29, v30, v31, v32);
    }

    *(v39 + 16) = v34 + 1;
    v35 = v39 + 16 * v34;
    *(v35 + 32) = v26;
    *(v35 + 40) = v28;
    v23 += 2;
    --v22;
  }

  while (v22);

  static StoryGenerationUtilities.arrayAsSentence(for:includeComma:emptyArrayResult:)(v39, 1, 0);

  return OUTLINED_FUNCTION_15_1();
}

uint64_t sub_1C73282CC(void *a1)
{
  v2 = sub_1C754E25C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A540, &qword_1C7580D20);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = sub_1C754E2FC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v27 - v15;
  v17 = [a1 entityCategoryTypes];
  sub_1C754E29C();

  v27 = v16;
  v28 = v10;
  (*(v10 + 16))(v12, v16, v9);
  v18 = MEMORY[0x1E6969B50];
  sub_1C732910C(&qword_1EDD0CB78, MEMORY[0x1E6969B50], MEMORY[0x1E6969B78]);
  sub_1C75509AC();
  sub_1C732910C(&qword_1EDD0CB70, v18, MEMORY[0x1E6969B88]);
  v19 = (v3 + 8);
  for (i = 1; ; i = (v25 - 9) < 3)
  {
    do
    {
      v21 = i;
      sub_1C755107C();
      sub_1C732910C(&qword_1EDD0CB80, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
      v22 = sub_1C755063C();
      (*v19)(v5, v2);
      if (v22)
      {
        sub_1C6FB5FC8(v8, &qword_1EC21A540, &qword_1C7580D20);
        (*(v28 + 8))(v27, v9);
        return v21;
      }

      v23 = sub_1C75510CC();
      v25 = *v24;
      v23(v29, 0);
      result = sub_1C755108C();
      i = 0;
    }

    while (!v21);
    if (v25 < 0)
    {
      break;
    }
  }

  __break(1u);
  return result;
}

id sub_1C7328660(uint64_t a1)
{
  v2 = sub_1C6FB6304();
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {
      v6 = sub_1C6FB6304();

      return (v6 == 0);
    }

    sub_1C6FB6330();
    result = (a1 & 0xC000000000000001) != 0 ? MEMORY[0x1CCA5DDD0](i, a1) : *(a1 + 8 * i + 32);
    v5 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (sub_1C73282CC(result))
    {
    }

    else
    {
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }
  }

  __break(1u);
  return result;
}

void sub_1C7328780(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = static StoryGenerationUtilities.getEligibleCharacterUUIDs(quToken:suggestion:)(a1);
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *(v4 + 16);
    v30 = v4 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    v29 = v7;
    while (1)
    {
LABEL_3:
      if (v6 == v7)
      {

        return;
      }

      v9 = v6;
      if (v6 >= *(v5 + 16))
      {
        break;
      }

      ++v6;
      if (*(a3 + 16))
      {
        v10 = (v30 + 16 * v9);
        v12 = *v10;
        v11 = v10[1];
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75505AC();
        v13 = sub_1C7551FAC();
        v14 = ~(-1 << *(a3 + 32));
        do
        {
          v15 = v13 & v14;
          if (((*(a3 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
          {

            goto LABEL_3;
          }

          v16 = (*(a3 + 48) + 16 * v15);
          if (*v16 == v12 && v16[1] == v11)
          {
            break;
          }

          v18 = sub_1C7551DBC();
          v13 = v15 + 1;
        }

        while ((v18 & 1) == 0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6F7ED9C(0, *(v8 + 16) + 1, 1, v19, v20, v21, v22);
        }

        v24 = *(v8 + 16);
        v23 = *(v8 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1C6F7ED9C(v23 > 1, v24 + 1, 1, v19, v20, v21, v22);
        }

        *(v8 + 16) = v24 + 1;
        v25 = v8 + 16 * v24;
        *(v25 + 32) = v12;
        *(v25 + 40) = v11;
        v7 = v29;
      }
    }

    __break(1u);
  }

  else
  {
    v26 = sub_1C754FEEC();
    v27 = sub_1C755119C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1C6F5C000, v26, v27, "No possible person/pet uuids from quToken or suggestion!", v28, 2u);
      MEMORY[0x1CCA5F8E0](v28, -1, -1);
    }
  }
}

unint64_t sub_1C73289BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 16))
  {
    v8 = sub_1C6F78124(a1, a2);
    if (v9)
    {
      v10 = *(a3 + 56) + 24 * v8;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16) == 0;
      v14 = 8289;
      if (!v13)
      {
        v14 = 2128237;
      }

      v41 = v14;
      sub_1C75504FC();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v11, v12);

      return v41;
    }
  }

  if (*(a4 + 16) && (v16 = sub_1C6F78124(a1, a2), (v17 & 1) != 0))
  {
    v18 = (*(a4 + 56) + 6 * v16);
    if (v18[4] == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1C75604F0;
      v20 = MEMORY[0x1E69E6158];
      *(v19 + 56) = MEMORY[0x1E69E6158];
      v21 = sub_1C6F6D524();
      v22 = 31085;
      v23 = 0xE200000000000000;
LABEL_10:
      *(v19 + 32) = v22;
      *(v19 + 40) = v23;
      *(v19 + 96) = v20;
      *(v19 + 104) = v21;
      *(v19 + 64) = v21;
      *(v19 + 72) = 0x646C696863;
      v24 = 0xE500000000000000;
LABEL_11:
      *(v19 + 80) = v24;
      return sub_1C75506BC();
    }

    v32 = v18[2];
    if (v32 != 18)
    {
      if (v18[5])
      {
        LOBYTE(v41) = v18[2];
        return StoryPersonRelationshipType.rawValue.getter();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1C75604F0;
      v35 = MEMORY[0x1E69E6158];
      *(v34 + 56) = MEMORY[0x1E69E6158];
      v36 = sub_1C6F6D524();
      *(v34 + 64) = v36;
      *(v34 + 32) = 31085;
      *(v34 + 40) = 0xE200000000000000;
      LOBYTE(v41) = v32;
      v37 = StoryPersonRelationshipType.rawValue.getter();
      *(v34 + 96) = v35;
      *(v34 + 104) = v36;
      *(v34 + 72) = v37;
      *(v34 + 80) = v38;
      return sub_1C75506BC();
    }

    v33 = *v18;
    if (v33 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1C75604F0;
      v39 = MEMORY[0x1E69E6158];
      *(v19 + 56) = MEMORY[0x1E69E6158];
      v40 = sub_1C6F6D524();
      *(v19 + 32) = 97;
      *(v19 + 40) = 0xE100000000000000;
      *(v19 + 96) = v39;
      *(v19 + 104) = v40;
      *(v19 + 64) = v40;
      *(v19 + 72) = 2036490594;
      v24 = 0xE400000000000000;
      goto LABEL_11;
    }

    if (v33 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1C75604F0;
      v20 = MEMORY[0x1E69E6158];
      *(v19 + 56) = MEMORY[0x1E69E6158];
      v21 = sub_1C6F6D524();
      v22 = 97;
      v23 = 0xE100000000000000;
      goto LABEL_10;
    }

    sub_1C75504FC();
    v26 = sub_1C754FEEC();
    v27 = sub_1C75511BC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1C6F765A4(a1, a2, &v41);
      v30 = "Person or pet UUID %s doesn't have anything more specific to use, defaulting to a person";
      goto LABEL_16;
    }
  }

  else
  {
    sub_1C75504FC();
    v26 = sub_1C754FEEC();
    v27 = sub_1C75511BC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1C6F765A4(a1, a2, &v41);
      v30 = "Person or pet UUID %s missing relationship!";
LABEL_16:
      _os_log_impl(&dword_1C6F5C000, v26, v27, v30, v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1CCA5F8E0](v29, -1, -1);
      MEMORY[0x1CCA5F8E0](v28, -1, -1);
    }
  }

  if (qword_1EC214278 != -1)
  {
    swift_once();
  }

  v15 = qword_1EC21C9F0;
  sub_1C75504FC();
  return v15;
}

uint64_t PromptSanitizer.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence15PromptSanitizer_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PromptSanitizer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence15PromptSanitizer_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PromptSanitizer(uint64_t a1)
{
  result = qword_1EDD0B988;
  if (!qword_1EDD0B988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7328FC0(uint64_t a1)
{
  result = sub_1C754FF1C();
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

uint64_t sub_1C732907C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1C73290BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C732910C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C7329154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219770, &unk_1C755C740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C73291C4()
{
  result = qword_1EDD0CDB0;
  if (!qword_1EDD0CDB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD0CDB0);
  }

  return result;
}

uint64_t FinalTokenGenerator.__allocating_init(photoLibrary:storyAssetsFetcher:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  FinalTokenGenerator.init(photoLibrary:storyAssetsFetcher:)(a1, a2);
  return v4;
}

uint64_t FinalTokenGenerator.generate(from:previousAssetScopingTokens:consolidatedPersonAssetUUIDs:eventRecorder:progressReporter:storyGenerationDiagnosticContext:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[319] = v0;
  v1[318] = v4;
  v1[317] = v5;
  v1[316] = v6;
  v1[315] = v7;
  v1[314] = v8;
  v1[313] = v2;
  v1[312] = v9;
  v1[320] = sub_1C754F2FC();
  OUTLINED_FUNCTION_15_3();
  v1[321] = v10;
  v1[322] = swift_task_alloc();
  v1[323] = swift_task_alloc();
  v1[324] = swift_task_alloc();
  v1[325] = swift_task_alloc();
  v1[326] = sub_1C754F38C();
  OUTLINED_FUNCTION_15_3();
  v1[327] = v11;
  v1[328] = swift_task_alloc();
  memcpy(v1 + 152, v3, 0x50uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C73293B8()
{
  v37 = v0;
  v1 = OUTLINED_FUNCTION_457();
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_1C754F1CC();
  v3 = OUTLINED_FUNCTION_457();
  __swift_project_boxed_opaque_existential_1(v3, v4);
  sub_1C754F15C();
  sub_1C754F2CC();
  v0[329] = OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator_logger;
  v5 = sub_1C754FEEC();
  v6 = sub_1C755117C();
  if (os_log_type_enabled(v5, v6))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_211_4(&dword_1C6F5C000, v5, v6, "Starting generate final tokens");
    OUTLINED_FUNCTION_37();
  }

  v7 = v0[325];
  v8 = v0[324];
  v9 = v0[321];
  v10 = v0[320];
  v11 = v0[313];

  memcpy(__dst, v11, 0x50uLL);
  sub_1C700BC7C(__dst, v12, v13, v14, v15, v16, v17, v18, v31, v33, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
  memcpy(v0 + 32, __src, 0x50uLL);
  memcpy(__dst, v11, 0x50uLL);
  sub_1C700C6EC(__dst, v19, v20, v21, v22, v23, v24, v25, v32, v34, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
  sub_1C754F2BC();
  memcpy(v0 + 52, v0 + 32, 0x50uLL);
  v26 = *(v9 + 32);
  v0[330] = v26;
  v0[331] = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v26(v8, v7, v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[332] = v27;
  *v27 = v28;
  v27[1] = sub_1C73296F4;
  v29 = v0[324];

  return sub_1C732AF60((v0 + 42), v0 + 26, (v0 + 282), v29);
}

uint64_t sub_1C73296F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 2664) = v0;

  if (v0)
  {
    sub_1C7027A58(v3 + 176);
  }

  else
  {
    sub_1C7027A58(v3 + 256);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73297FC()
{
  v27 = v0;
  memcpy(v0 + 12, v0 + 42, 0x50uLL);
  memcpy(__dst, v0 + 12, sizeof(__dst));
  sub_1C7027A20((v0 + 12), (v0 + 62));
  sub_1C7027A20((v0 + 12), (v0 + 72));
  sub_1C701260C();
  v0[334] = v2;
  sub_1C7027A58((v0 + 12));
  memcpy(v25, v0 + 22, sizeof(v25));
  memcpy(__dst, v0 + 12, sizeof(__dst));
  v3 = sub_1C7335844(v25, __dst);
  sub_1C75504FC();
  v4 = sub_1C754FEEC();
  v5 = sub_1C755117C();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_41_0();
    v6 = OUTLINED_FUNCTION_31_0();
    __dst[0] = v6;
    *v1 = 136642819;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8, &unk_1C7562CE0);
    v8 = MEMORY[0x1CCA5D090](v3, v7);
    v10 = sub_1C6F765A4(v8, v9, __dst);

    *(v1 + 4) = v10;
    _os_log_impl(&dword_1C6F5C000, v4, v5, "Compatible collection tokens: %{sensitive}s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_37();
  }

  v11 = v0[330];
  memcpy(__dst, v0 + 152, sizeof(__dst));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D18, &qword_1C7583EC0);
  v0[335] = v12;
  v0[290] = v12;
  v13 = sub_1C7335B90();
  v0[336] = v13;
  v0[291] = v13;
  v0[287] = v3;
  ExtendedTokenCollection.intersecting(_:)((v0 + 287), v14, v15, v16, v17, v18, v19, v20, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], __dst[0], __dst[1]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 287);
  memcpy(v0 + 82, v25, 0x50uLL);
  sub_1C754F2BC();
  memcpy(v0 + 102, v0 + 82, 0x50uLL);
  OUTLINED_FUNCTION_75();
  v11();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[337] = v21;
  *v21 = v22;
  v21[1] = sub_1C7329AC4;
  v23 = v0[322];

  return sub_1C732AF60((v0 + 92), v0 + 51, (v0 + 282), v23);
}

uint64_t sub_1C7329AC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 2704) = v0;

  if (v0)
  {
    sub_1C7027A58(v3 + 176);
    sub_1C7027A58(v3 + 96);
  }

  else
  {
    sub_1C7027A58(v3 + 656);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7329BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v14 = *(v12 + 334);
  memcpy(v12 + 56, v12 + 46, 0x50uLL);
  if (v14)
  {
    v15 = *(v12 + 319) + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__interestingTokenFilteringClosure;
    os_unfair_lock_lock(v15);
    v13 = *(v15 + 8);

    os_unfair_lock_unlock(v15);
    memcpy(&v122, v12 + 56, sizeof(v122));
    v120.personExtendedTokens._rawValue = v14;
    (v13)(__src, &v122, &v120);

    sub_1C7027A58((v12 + 56));
    v17 = __src[0];
    v16 = __src[1];
    v19 = __src[2];
    v18 = __src[3];
    v20 = __src[4];
  }

  else
  {
    v18 = v12[59];
    v20 = v12[60];
    v16 = v12[57];
    v19 = v12[58];
    v17 = v12[56];
  }

  v12[61] = v17;
  v12[62] = v16;
  v12[63] = v19;
  v12[64] = v18;
  v12[65] = v20;
  sub_1C7027A20((v12 + 61), (v12 + 66));
  v21 = sub_1C754FEEC();
  v22 = sub_1C755117C();
  sub_1C7027A58((v12 + 61));
  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_41_0();
    v23 = OUTLINED_FUNCTION_31_0();
    *&__src[0] = v23;
    *v13 = 136642819;
    OUTLINED_FUNCTION_214_1();
    sub_1C7027A20((v12 + 61), (v12 + 1));
    ExtendedTokenCollection.description.getter();
    OUTLINED_FUNCTION_213_3(v12 + 136);
    sub_1C7027A58((v12 + 136));
    v24 = OUTLINED_FUNCTION_23_14();
    v27 = sub_1C6F765A4(v24, v25, v26);

    *(v13 + 4) = v27;
    OUTLINED_FUNCTION_40_6(&dword_1C6F5C000, v28, v29, "Interesting collection tokens: %{sensitive}s");
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_37();
  }

  v30 = *(v12 + 314);
  v31 = *(v12 + 319) + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__assetScopingTokenElectionClosure;
  os_unfair_lock_lock(v31);
  v32 = *(v31 + 8);

  os_unfair_lock_unlock(v31);
  OUTLINED_FUNCTION_214_1();
  *&__src[0] = v30;
  sub_1C7027A20((v12 + 61), (v12 + 81));
  (v32)(&v122, __src);

  OUTLINED_FUNCTION_213_3(v12 + 71);
  sub_1C7027A58((v12 + 71));
  if (*(v12 + 295))
  {
    v32 = *(v12 + 336);
    v33 = *(v12 + 335);
    sub_1C6F699F8(v12 + 146, v12 + 2456);
    OUTLINED_FUNCTION_214_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE0, &unk_1C755C0D0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1C755BAB0;
    sub_1C6FB5E28(v12 + 2456, v34 + 32);
    *(v12 + 300) = v33;
    *(v12 + 301) = v32;
    *(v12 + 297) = v34;
    ExtendedTokenCollection.intersecting(_:)(v12 + 2376, v35, v36, v37, v38, v39, v40, v41, v90, v93, v94, v97, v98, v101, v102, v105, v106, v109, v110, v113);
    OUTLINED_FUNCTION_213_3(v12 + 131);
    sub_1C7027A58((v12 + 131));
    __swift_destroy_boxed_opaque_existential_1(v12 + 297);
    memcpy(v12 + 126, __src, 0x50uLL);
    memcpy(__src, v12 + 6, sizeof(__src));
    memcpy(&v122, v12 + 126, sizeof(v122));
    ExtendedTokenCollection.merging(_:)(&v120, &v122);
    sub_1C7027A58((v12 + 126));
    sub_1C7027A58((v12 + 6));
    v103 = *&v120.locationExtendedTokens._rawValue;
    v107 = *&v120.personExtendedTokens._rawValue;
    v95 = *&v120.partOfDayExtendedTokens._rawValue;
    v99 = *&v120.homeExtendedTokens._rawValue;
    v91 = *&v120.tripExtendedTokens._rawValue;
    memcpy(__src, v12 + 11, sizeof(__src));
    sub_1C7335BF4(__src, &v122);
    sub_1C7027A58((v12 + 11));
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1C755BAB0;
    sub_1C6FB5E28(v12 + 2456, v42 + 32);
    *(v12 + 305) = v33;
    *(v12 + 306) = v32;
    *(v12 + 302) = v42;
    ExtendedTokenCollection.excluding(_:)((v12 + 151), v43, v44, v45, v46, v47, v48, v49, v91, *(&v91 + 1), v95, *(&v95 + 1), v99, *(&v99 + 1), v103, *(&v103 + 1), v107, *(&v107 + 1), v111, v114);
    OUTLINED_FUNCTION_213_3(v12 + 121);
    sub_1C7027A58((v12 + 121));
    __swift_destroy_boxed_opaque_existential_1(v12 + 307);
    __swift_destroy_boxed_opaque_existential_1(v12 + 302);
    v50 = v104;
    v51 = v108;
    v52 = v96;
    v53 = v100;
    v54 = v92;
    v117 = __src[1];
    v118 = __src[0];
    v115 = __src[3];
    v116 = __src[2];
    v112 = __src[4];
  }

  else
  {
    sub_1C7027A58((v12 + 61));
    sub_1C6FB5FC8((v12 + 146), &qword_1EC215EA8, &qword_1C7560760);
    memcpy(&v122, v12 + 11, sizeof(v122));
    sub_1C7335BF4(&v122, __src);
    sub_1C7027A58((v12 + 11));
    v117 = __src[1];
    v118 = __src[0];
    v115 = __src[3];
    v116 = __src[2];
    v112 = __src[4];
    v52 = v12[9];
    v54 = v12[10];
    v50 = v12[7];
    v53 = v12[8];
    v51 = v12[6];
  }

  v55 = *(v12 + 338);
  v12[101] = v51;
  v12[102] = v50;
  v12[103] = v53;
  v12[104] = v52;
  v12[105] = v54;
  memcpy(__src, v12 + 101, sizeof(__src));
  *&v122.personExtendedTokens._rawValue = v118;
  *&v122.locationExtendedTokens._rawValue = v117;
  *&v122.homeExtendedTokens._rawValue = v116;
  *&v122.partOfDayExtendedTokens._rawValue = v115;
  *&v122.tripExtendedTokens._rawValue = v112;
  sub_1C7027A20((v12 + 101), (v12 + 106));
  ExtendedTokenCollection.merging(_:)(&v120, &v122);
  OUTLINED_FUNCTION_213_3(v12 + 96);
  sub_1C7027A58((v12 + 96));
  memcpy(v12 + 91, __src, 0x50uLL);
  sub_1C7027A58((v12 + 91));
  memcpy(v12 + 86, &v120, 0x50uLL);
  sub_1C754F2DC();
  if (v55)
  {
    v56 = *(v12 + 321);
    v119 = *(v12 + 320);
    v57 = *(v12 + 317);
    __swift_destroy_boxed_opaque_existential_1(v12 + 282);
    sub_1C7027A58((v12 + 86));
    sub_1C7027A58((v12 + 101));
    v58 = OUTLINED_FUNCTION_61_0();
    __swift_project_boxed_opaque_existential_1(v58, v59);
    OUTLINED_FUNCTION_24_2();
    sub_1C754F1AC();
    v60 = OUTLINED_FUNCTION_457();
    v61(v60);
    (*(v56 + 8))(v57, v119);
    OUTLINED_FUNCTION_218_2();

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    sub_1C7027A20((v12 + 101), (v12 + 111));
    v62 = sub_1C754FEEC();
    v63 = sub_1C755117C();
    sub_1C7027A58((v12 + 101));
    if (os_log_type_enabled(v62, v63))
    {
      OUTLINED_FUNCTION_41_0();
      v64 = OUTLINED_FUNCTION_31_0();
      *&__src[0] = v64;
      *v32 = 136642819;
      memcpy(&v122, v12 + 101, sizeof(v122));
      ExtendedTokenCollection.description.getter();
      OUTLINED_FUNCTION_213_3(v12 + 116);
      sub_1C7027A58((v12 + 116));
      v65 = OUTLINED_FUNCTION_23_14();
      v68 = sub_1C6F765A4(v65, v66, v67);

      *(v32 + 4) = v68;
      OUTLINED_FUNCTION_40_6(&dword_1C6F5C000, v69, v70, "Scoping tokens chosen: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_37();
    }

    else
    {

      sub_1C7027A58((v12 + 101));
    }

    if (*(v12 + 318))
    {
      memcpy(&v122, v12 + 86, sizeof(v122));
      LOBYTE(__src[0]) = 1;

      static ExtendedTokenDiagnosticsGenerator.save(extendedTokens:diagnosticsFileType:in:)(&v122, __src, v71);
    }

    sub_1C754F2EC();
    v81 = sub_1C754FEEC();
    v82 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v82))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v84, v85, "Finished generating final tokens");
      OUTLINED_FUNCTION_109();
    }

    v86 = *(v12 + 316);
    v87 = *(v12 + 312);

    __swift_destroy_boxed_opaque_existential_1(v12 + 282);
    memcpy(v87, v12 + 86, 0x50uLL);
    __swift_project_boxed_opaque_existential_1(v86, v86[3]);
    sub_1C754F1AC();
    v88 = OUTLINED_FUNCTION_49_3();
    v89(v88);

    OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_44();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12);
}

uint64_t sub_1C732A52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_170_5();
  sub_1C7027A58(v14 + 256);
  v16 = OUTLINED_FUNCTION_23_14();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  OUTLINED_FUNCTION_24_2();
  sub_1C754F1AC();
  (*(v15 + 8))(v12, v13);
  v18 = OUTLINED_FUNCTION_117_0();
  v19(v18);
  OUTLINED_FUNCTION_219_3();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1C732A600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_170_5();
  sub_1C7027A58(v14 + 656);
  v16 = OUTLINED_FUNCTION_23_14();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  OUTLINED_FUNCTION_24_2();
  sub_1C754F1AC();
  (*(v15 + 8))(v12, v13);
  v18 = OUTLINED_FUNCTION_117_0();
  v19(v18);
  OUTLINED_FUNCTION_219_3();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1C732A6E8()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0A620);
  __swift_project_value_buffer(v0, qword_1EDD0A620);
  return sub_1C754FEFC();
}

void sub_1C732A768(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
  a1[6] = v1;
  a1[7] = v1;
  a1[8] = v1;
  a1[9] = v1;
}

uint64_t (*FinalTokenGenerator.interestingTokenFilteringClosure.getter())(uint64_t a1, uint64_t a2)
{
  v1 = v0 + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__interestingTokenFilteringClosure;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__interestingTokenFilteringClosure));
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v1);
  OUTLINED_FUNCTION_30();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  return sub_1C733721C;
}

double sub_1C732A828@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t (*FinalTokenGenerator.assetScopingTokenElectionClosure.getter())(uint64_t a1, uint64_t a2)
{
  v1 = v0 + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__assetScopingTokenElectionClosure;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__assetScopingTokenElectionClosure));
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v1);
  OUTLINED_FUNCTION_30();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  return sub_1C733721C;
}

void sub_1C732A8D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = v5 + *a3;
  os_unfair_lock_lock(v9);

  OUTLINED_FUNCTION_30();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v9 + 8) = a5;
  *(v9 + 16) = v10;

  os_unfair_lock_unlock(v9);
}

char *FinalTokenGenerator.init(photoLibrary:storyAssetsFetcher:)(void *a1, void *a2)
{
  v5 = *v2;
  v6 = OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator_logger;
  if (qword_1EDD0A618 != -1)
  {
    swift_once();
  }

  v7 = sub_1C754FF1C();
  v8 = __swift_project_value_buffer(v7, qword_1EDD0A620);
  (*(*(v7 - 8) + 16))(v2 + v6, v8, v7);
  v9 = v2 + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__interestingTokenFilteringClosure;
  *v9 = 0;
  *(v9 + 1) = sub_1C732A768;
  *(v9 + 2) = 0;
  v10 = v2 + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__assetScopingTokenElectionClosure;
  *v10 = 0;
  *(v10 + 1) = sub_1C732A828;
  *(v10 + 2) = 0;
  v2[2] = a1;
  sub_1C6FB5E28(a2, (v2 + 3));
  v11 = (v2 + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__interestingTokenFilteringClosure);
  v12 = a1;
  os_unfair_lock_lock(v11);
  sub_1C732AC30(&v11[2]._os_unfair_lock_opaque, v5, v13, &unk_1F46C29C0, &unk_1F46C29E8, sub_1C7337588, sub_1C73376A8);
  os_unfair_lock_unlock(v11);
  v14 = v2 + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__assetScopingTokenElectionClosure;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__assetScopingTokenElectionClosure));
  sub_1C732AC30(v14 + 1, v5, v15, &unk_1F46C2970, &unk_1F46C2998, sub_1C73373E0, sub_1C73376A4);
  os_unfair_lock_unlock(v14);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v2;
}

void sub_1C732ABD0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C75504FC();
  OUTLINED_FUNCTION_35();
  sub_1C700D1A8(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9]);
}

uint64_t sub_1C732AC30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  OUTLINED_FUNCTION_30();
  result = swift_allocObject();
  *(result + 16) = a6;
  *(result + 24) = v11;
  *a1 = a7;
  a1[1] = result;
  return result;
}

void sub_1C732AD10(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v5 = objc_opt_self();
  if ([v5 enableAssetScopingTokenPromotion] && (sub_1C73374E4(0.0, 1.0), v7 = v6, objc_msgSend(v5, sel_assetScopingTokenPromotionLikeliness), v7 < v8))
  {
    v9 = *(a2 + 16);
    v10 = MEMORY[0x1E69E7CC0];
    v11 = (a2 + 32);
    if (v9)
    {
      while (1)
      {
        v12 = *v11;
        v13 = *(*v11 + 16);
        v14 = *(v10 + 16);
        if (__OFADD__(v14, v13))
        {
          break;
        }

        sub_1C75504FC();
        if (!swift_isUniquelyReferenced_nonNull_native() || v14 + v13 > *(v10 + 24) >> 1)
        {
          sub_1C6FB1844();
          v10 = v15;
        }

        if (*(v12 + 16))
        {
          if ((*(v10 + 24) >> 1) - *(v10 + 16) < v13)
          {
            goto LABEL_19;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8, &unk_1C7562CE0);
          swift_arrayInitWithCopy();

          if (v13)
          {
            v16 = *(v10 + 16);
            v17 = __OFADD__(v16, v13);
            v18 = v16 + v13;
            if (v17)
            {
              goto LABEL_20;
            }

            *(v10 + 16) = v18;
          }
        }

        else
        {

          if (v13)
          {
            goto LABEL_18;
          }
        }

        ++v11;
        if (!--v9)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    else
    {
LABEL_15:
      memcpy(v33, __dst, sizeof(v33));
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D18, &qword_1C7583EC0);
      v19 = sub_1C7335B90();
      ExtendedTokenCollection.excluding(_:)(v30, v20, v21, v22, v23, v24, v25, v26, v28, a3, v10, v30[1], v30[2], v31, v19, __srca[0], __srca[1], __srca[2], __srca[3], __srca[4]);
      __swift_destroy_boxed_opaque_existential_1(v30);
      memcpy(v33, __srca, sizeof(v33));
      memcpy(__srca, v33, sizeof(__srca));
      v27 = ExtendedTokenCollection.allTokens.getter();
      sub_1C7027A58(v33);
      sub_1C73373E8(v27, v29);
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t sub_1C732AF60(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 3112) = v4;
  *(v5 + 3104) = a4;
  *(v5 + 3096) = a3;
  *(v5 + 3088) = a1;
  v7 = type metadata accessor for PartOfWeekExtendedToken(0);
  *(v5 + 3120) = v7;
  *(v5 + 3128) = *(v7 - 8);
  *(v5 + 3136) = swift_task_alloc();
  *(v5 + 3144) = swift_task_alloc();
  *(v5 + 3152) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AB18, &unk_1C7583F48);
  *(v5 + 3160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  *(v5 + 3168) = swift_task_alloc();
  v8 = sub_1C754DABC();
  *(v5 + 3176) = v8;
  *(v5 + 3184) = *(v8 - 8);
  *(v5 + 3192) = swift_task_alloc();
  v9 = type metadata accessor for TimeExtendedToken(0);
  *(v5 + 3200) = v9;
  *(v5 + 3208) = *(v9 - 8);
  *(v5 + 3216) = swift_task_alloc();
  *(v5 + 3224) = swift_task_alloc();
  *(v5 + 3232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AB20, &qword_1C7583F58);
  *(v5 + 3240) = swift_task_alloc();
  v10 = a2[1];
  *(v5 + 3248) = *a2;
  *(v5 + 3264) = v10;
  v11 = a2[3];
  *(v5 + 3280) = a2[2];
  *(v5 + 3296) = v11;
  *(v5 + 3312) = a2[4];

  return MEMORY[0x1EEE6DFA0](sub_1C732B1D0, 0, 0);
}

void sub_1C732B1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_168_6();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_160_5();
  sub_1C754F2CC();
  if (v14)
  {
    v18 = *(v15 + 3104);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v19 + 8))(v18);
  }

  else
  {
    *(v15 + 56) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
    *(v15 + 64) = &off_1F46ACFD0;
    v28 = [objc_opt_self() currentUnifiedEmbeddingVersion];
    v29 = v28;
    if (v28)
    {
      v30 = [v28 integerValue];
    }

    else
    {
      v30 = 0;
    }

    *(v15 + 32) = 4;
    *(v15 + 40) = v30;
    *(v15 + 48) = v29 == 0;
    v332 = (v15 + 1536);
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;
    v333 = v15 + 2096;
    v334 = (v15 + 2152);
    *(v15 + 96) = 0;
    *(v15 + 104) = 0;
    v330 = v15 + 1216;
    v331 = v15 + 2264;
    v31 = (v15 + 2320);
    v32 = (v15 + 2376);
    *(v15 + 88) = 1;
    v337 = (v15 + 2600);
    *(v15 + 112) = vdupq_n_s64(1uLL);
    v335 = v15 + 2696;
    *(v15 + 128) = 0;
    v339 = (v15 + 394);
    *(v15 + 136) = 0;
    v341 = (v15 + 473);
    *(v15 + 144) = 1;
    *(v15 + 72) = 4000;
    *(v15 + 80) = 0;
    v33 = *(v15 + 3264);
    *__dst = *(v15 + 3248);
    v336 = *__dst;
    *&__dst[16] = v33;
    v34 = *(v15 + 3296);
    *&__dst[32] = *(v15 + 3280);
    *&__dst[48] = v34;
    *&__dst[64] = *(v15 + 3312);
    *(v15 + 3328) = *(ExtendedTokenCollection.allTokens.getter() + 16);

    v35 = 0;
    *(v15 + 3080) = 0;
    v36 = *(v336 + 16);
    *(v15 + 3336) = v36;
    v37 = v15 + 408;
    v38 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      *(v15 + 3360) = 0;
      *(v15 + 3352) = v38;
      *(v15 + 3344) = v35;
      if (v35 == v36)
      {
        break;
      }

      v39 = *(v15 + 3248);
      if (v35 >= *(v39 + 16))
      {
        __break(1u);
        goto LABEL_92;
      }

      OUTLINED_FUNCTION_240_3(v39);
      memcpy(__dst, (v38 + 32), 0x41uLL);
      *(v15 + 400) = v35;
      memcpy((v15 + 408), __dst, 0x41uLL);
      sub_1C7025F3C(v15 + 1000, v15 + 1072);
      v40 = *(v15 + 464);
      OUTLINED_FUNCTION_135_7();
      if (!v40)
      {
        v83 = *(v15 + 440);
        sub_1C70555F8(v15 + 400, v15 + 480, &qword_1EC21AB28, &unk_1C7583F60);
        sub_1C75504FC();
        OUTLINED_FUNCTION_145_2();
        if (sub_1C75507FC() <= 0)
        {
          sub_1C75504FC();
          v85 = OUTLINED_FUNCTION_165_3();
          MEMORY[0x1CCA5CC40](v85);
          OUTLINED_FUNCTION_162_6();
        }

        else
        {
          sub_1C75504FC();
        }

        v86 = *(v15 + 3112);
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
        v88 = OUTLINED_FUNCTION_13_1(v87);
        OUTLINED_FUNCTION_198_2(v88, xmmword_1C755BAB0);
        sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
        OUTLINED_FUNCTION_24_2();
        sub_1C75504FC();
        OUTLINED_FUNCTION_145_2();
        v89 = sub_1C7073450();
        OUTLINED_FUNCTION_248_3(v89);
        sub_1C6F65BE8(0, &qword_1EC217FE0, 0x1E6978A98);
        OUTLINED_FUNCTION_51();
        sub_1C75504FC();
        v90 = sub_1C71C3DE4();
        v91 = objc_opt_self();
        *(v15 + 3368) = OUTLINED_FUNCTION_77_14(v91, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);

        OUTLINED_FUNCTION_15_63((v86 + 24));
        OUTLINED_FUNCTION_15_3();
        swift_task_alloc();
        OUTLINED_FUNCTION_48();
        *(v15 + 3376) = v92;
        *v92 = v93;
        OUTLINED_FUNCTION_124_8(v92);
LABEL_58:
        OUTLINED_FUNCTION_34_32();
LABEL_59:
        OUTLINED_FUNCTION_73_18();

        v164(v158, v159, v160, v161, v162, v163, v164, v165, a9, a10, a11, a12, a13, a14);
        return;
      }

      sub_1C70555F8(v15 + 400, v15 + 560, &qword_1EC21AB28, &unk_1C7583F60);
      OUTLINED_FUNCTION_42_31();
      OUTLINED_FUNCTION_19_59(v41, v42, *(v15 + 3344));
      sub_1C754F2DC();
      v43 = *(v15 + 2336);
      *v32 = *v31;
      *(v15 + 2392) = v43;
      *(v15 + 2408) = *(v15 + 2352);
      *(v15 + 2422) = *(v15 + 2366);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v15 + 3352);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v53 = OUTLINED_FUNCTION_92();
        sub_1C6FB3FA4(v53, v54, v55, v56);
        v38 = v57;
      }

      OUTLINED_FUNCTION_90_14();
      if (v46)
      {
        v58 = OUTLINED_FUNCTION_36_28(v45);
        sub_1C6FB3FA4(v58, v59, v60, v61);
        v38 = v62;
      }

      v17 = *(v15 + 554);
      v47 = *(v15 + 553);
      sub_1C6FB5FC8(v15 + 400, &qword_1EC21AB28, &unk_1C7583F60);
      OUTLINED_FUNCTION_194_4();
      v49 = *(v15 + 2392);
      v48 = *(v15 + 2408);
      v50 = *v32;
      *(v51 + 78) = *(v15 + 2422);
      OUTLINED_FUNCTION_128_6(v48, v49, v51, v50);
      *(v52 + 86) = 1;
      *(v52 + 87) = v47;
      *(v52 + 88) = v40;
      *(v52 + 96) = v17;
      v35 = *(v15 + 3344) + 1;
      v36 = *(v15 + 3336);
    }

    OUTLINED_FUNCTION_180_3();
    v38 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      OUTLINED_FUNCTION_189_2();
      if (v35 == v63)
      {
        break;
      }

      OUTLINED_FUNCTION_190_0();
      if (v46)
      {
        __break(1u);
LABEL_98:
        v240 = OUTLINED_FUNCTION_27_41();
        v242 = v241(v240);
        OUTLINED_FUNCTION_244_3(v242, v243, &qword_1EC218C50, &qword_1C75606A0);
        v244 = objc_allocWithZone(MEMORY[0x1E6978A98]);
        v245 = OUTLINED_FUNCTION_104_9();
        sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
        OUTLINED_FUNCTION_51();
        sub_1C75504FC();
        OUTLINED_FUNCTION_49_3();
        [sub_1C7073450() length];
        v246 = objc_opt_self();
        v247 = OUTLINED_FUNCTION_63_19(v246, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
        OUTLINED_FUNCTION_221_2(v247);

        OUTLINED_FUNCTION_15_63((v16 + 24));
        OUTLINED_FUNCTION_15_3();
        swift_task_alloc();
        OUTLINED_FUNCTION_48();
        *(v15 + 3624) = v248;
        *v248 = v249;
        OUTLINED_FUNCTION_6_81(v248);
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_172_3(v64);
      memcpy(__dst, (v38 + 32), 0x42uLL);
      *(v15 + 320) = v35;
      memcpy((v15 + 2320), __dst, 0x42uLL);
      sub_1C7025FF8(v15 + 856, v15 + 928);
      v65 = *(v15 + 384);
      OUTLINED_FUNCTION_130_5(*v31, *(v15 + 2336));
      if (!v65)
      {
        v120 = *(v15 + 360);
        sub_1C70555F8(v15 + 320, v15 + 160, &qword_1EC21AB30, &qword_1C7583F70);
        sub_1C75504FC();
        OUTLINED_FUNCTION_145_2();
        if (sub_1C75507FC() <= 0)
        {
          sub_1C75504FC();
          v121 = OUTLINED_FUNCTION_165_3();
          MEMORY[0x1CCA5CC40](v121);
          OUTLINED_FUNCTION_162_6();
        }

        else
        {
          sub_1C75504FC();
        }

        v122 = *(v15 + 3112);
        v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
        v124 = OUTLINED_FUNCTION_13_1(v123);
        OUTLINED_FUNCTION_198_2(v124, xmmword_1C755BAB0);
        sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
        OUTLINED_FUNCTION_24_2();
        sub_1C75504FC();
        OUTLINED_FUNCTION_145_2();
        v125 = sub_1C7073450();
        OUTLINED_FUNCTION_248_3(v125);
        sub_1C6F65BE8(0, &qword_1EC217FE0, 0x1E6978A98);
        OUTLINED_FUNCTION_51();
        sub_1C75504FC();
        v126 = sub_1C71C3DE4();
        v127 = objc_opt_self();
        *(v15 + 3424) = OUTLINED_FUNCTION_77_14(v127, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);

        OUTLINED_FUNCTION_15_63((v122 + 24));
        OUTLINED_FUNCTION_15_3();
        swift_task_alloc();
        OUTLINED_FUNCTION_48();
        *(v15 + 3432) = v128;
        *v128 = v129;
        OUTLINED_FUNCTION_49_22(v128);
        goto LABEL_58;
      }

      sub_1C70555F8(v15 + 320, v15 + 240, &qword_1EC21AB30, &qword_1C7583F70);
      OUTLINED_FUNCTION_42_31();
      OUTLINED_FUNCTION_19_59(v66, v67, *(v15 + 3400));
      sub_1C754F2DC();
      v68 = OUTLINED_FUNCTION_161_6(v15 + 2488, *(v15 + 2488), *(v15 + 2504));
      v38 = *(v15 + 3408);
      if ((v68 & 1) == 0)
      {
        v73 = OUTLINED_FUNCTION_92();
        sub_1C6FB3F74(v73, v74, v75, v76);
        v38 = v77;
      }

      v70 = *(v38 + 16);
      v69 = *(v38 + 24);
      v35 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        v78 = OUTLINED_FUNCTION_36_28(v69);
        sub_1C6FB3F74(v78, v79, v80, v81);
        v38 = v82;
      }

      v17 = *(v15 + 478);
      sub_1C6FB5FC8(v15 + 320, &qword_1EC21AB30, &qword_1C7583F70);
      OUTLINED_FUNCTION_233_3();
      OUTLINED_FUNCTION_60_20(v71, *(v15 + 2464), *(v15 + 2448), *(v15 + 2432));
      OUTLINED_FUNCTION_197_4(v72);
    }

    OUTLINED_FUNCTION_86_11();
    v95 = MEMORY[0x1E69E7CC0];
    v96 = 56;
    v97 = &qword_1EC21AB38;
    while (1)
    {
      OUTLINED_FUNCTION_140_6(v94);
      if (v98 == v99)
      {
        break;
      }

      OUTLINED_FUNCTION_217_1();
      if (v46)
      {
        __break(1u);
        goto LABEL_113;
      }

      v100 = OUTLINED_FUNCTION_61_19();
      v103 = OUTLINED_FUNCTION_22_54((v15 + 1984), v100, v101, v102);
      OUTLINED_FUNCTION_157_3(v104, v105, v103, v106, v107);
      v108 = *(v15 + 1336);
      v109 = *(v17 + 16);
      *v337 = *v17;
      *(v15 + 2616) = v109;
      *(v15 + 2625) = *(v17 + 25);
      *v339 = *v16;
      *(v15 + 398) = *(v16 + 4);
      if (!v108)
      {
        OUTLINED_FUNCTION_151_5();
        v150 = sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
        OUTLINED_FUNCTION_246_3(v150, v151, &qword_1EC21AB38, &qword_1C7583F78);
        sub_1C75504FC();
        OUTLINED_FUNCTION_49_3();
        v152 = sub_1C7073450();
        [v152 length];
        v153 = objc_allocWithZone(MEMORY[0x1E6978A98]);
        OUTLINED_FUNCTION_51();
        sub_1C75504FC();
        OUTLINED_FUNCTION_75();
        sub_1C71C8E10();
        v154 = objc_opt_self();
        v155 = OUTLINED_FUNCTION_52_26(v154, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
        OUTLINED_FUNCTION_247_2(v155);

        OUTLINED_FUNCTION_15_63((v17 + 24));
        OUTLINED_FUNCTION_15_3();
        swift_task_alloc();
        OUTLINED_FUNCTION_48();
        *(v15 + 3488) = v156;
        *v156 = v157;
        OUTLINED_FUNCTION_24_35(v156);
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_174_3();
      OUTLINED_FUNCTION_42_31();
      OUTLINED_FUNCTION_19_59(v110, v111, *(v15 + 3456));
      sub_1C754F2DC();
      v38 = *(v15 + 3464);
      v112 = *(v15 + 2616);
      *(v15 + 2648) = *v337;
      *(v15 + 2664) = v112;
      *(v15 + 2673) = *(v15 + 2625);
      *(v15 + 314) = *v339;
      *(v15 + 318) = *(v15 + 398);
      v113 = swift_isUniquelyReferenced_nonNull_native();
      v95 = *(v15 + 3464);
      if ((v113 & 1) == 0)
      {
        v116 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB2320(v116);
        v95 = v117;
      }

      v35 = *(v95 + 16);
      OUTLINED_FUNCTION_134_0();
      if (v46)
      {
        v118 = OUTLINED_FUNCTION_15_2(v114);
        sub_1C6FB2320(v118);
        v95 = v119;
      }

      OUTLINED_FUNCTION_220_2();
      *(v95 + 16) = v38;
      OUTLINED_FUNCTION_20_52(v95 + 56 * v35);
      OUTLINED_FUNCTION_69_20(v115);
    }

    OUTLINED_FUNCTION_153_5();
    v340 = v131;
    v133 = v132 + 64;
    v134 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      *(v15 + 3504) = v134;
      if (v340 == v130)
      {
        break;
      }

      OUTLINED_FUNCTION_131_4();
      if (v46)
      {
        __break(1u);
        goto LABEL_123;
      }

      OUTLINED_FUNCTION_45_29();
      v16 = *(v133 - 24);
      v341 = *(v133 - 32);
      OUTLINED_FUNCTION_98_13();
      if (v137)
      {
        v96 = v135 + 1;
      }

      else
      {
        v96 = v135;
      }

      v344 = v136;
      OUTLINED_FUNCTION_127_7();
      OUTLINED_FUNCTION_141_4();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_171_2();
      if (v35)
      {
        OUTLINED_FUNCTION_125_6();
        v189 = *(v15 + 3104);
        OUTLINED_FUNCTION_129_7();
        swift_bridgeObjectRelease_n();
        OUTLINED_FUNCTION_141_4();
        swift_bridgeObjectRelease_n();

        sub_1C70DF138(v15 + 16);
        sub_1C754F2FC();
        OUTLINED_FUNCTION_3();
        (*(v190 + 8))(v189);
        goto LABEL_3;
      }

      v138 = v134;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v141 = OUTLINED_FUNCTION_92();
        sub_1C6FB3F44(v141, v142, v143, v144);
        v138 = v145;
      }

      v35 = *(v138 + 16);
      v134 = v138;
      OUTLINED_FUNCTION_134_0();
      if (v46)
      {
        v146 = OUTLINED_FUNCTION_15_2(v139);
        sub_1C6FB3F44(v146, v147, v148, v138);
        v134 = v149;
      }

      OUTLINED_FUNCTION_193_2();
      OUTLINED_FUNCTION_93_14(v140);
      v130 = v344 + 1;
    }

    OUTLINED_FUNCTION_65_22();
    v38 = MEMORY[0x1E69E7CC0];
    v168 = 56;
    v37 = &qword_1EC21AB38;
    v169 = &qword_1C7583F78;
    while (1)
    {
      OUTLINED_FUNCTION_96_12(v167);
      if (v137)
      {
        break;
      }

      OUTLINED_FUNCTION_217_1();
      if (v46)
      {
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        OUTLINED_FUNCTION_205_2();
        OUTLINED_FUNCTION_204_4();
        v329 = *(v15 + 3088);
        *v329 = v134;
        v329[1] = v341;
        v329[2] = v169;
        v329[3] = v96;
        v329[4] = v168;
        v329[5] = v95;
        v329[6] = v38;
        v329[7] = v16;
        OUTLINED_FUNCTION_225_1(v329);

        OUTLINED_FUNCTION_25();
        goto LABEL_4;
      }

      v170 = OUTLINED_FUNCTION_61_19();
      v173 = OUTLINED_FUNCTION_22_54(v334, v170, v171, v172);
      OUTLINED_FUNCTION_107_9(v174, v175, v173, v176, v177);
      v178 = OUTLINED_FUNCTION_232_2();
      OUTLINED_FUNCTION_50_25(v335, v178, v179);
      if (!v95)
      {
        OUTLINED_FUNCTION_116_11();
        v218 = sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
        OUTLINED_FUNCTION_223_2(v218, v219, &qword_1EC21AB38, &qword_1C7583F78);
        sub_1C75504FC();
        OUTLINED_FUNCTION_49_3();
        v220 = sub_1C7073450();
        [v220 length];
        v221 = objc_allocWithZone(MEMORY[0x1E6978A98]);
        OUTLINED_FUNCTION_51();
        sub_1C75504FC();
        OUTLINED_FUNCTION_75();
        sub_1C71C8E10();
        v222 = objc_opt_self();
        v223 = OUTLINED_FUNCTION_52_26(v222, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
        OUTLINED_FUNCTION_226_2(v223);

        OUTLINED_FUNCTION_15_63(v134 + 3);
        OUTLINED_FUNCTION_15_3();
        swift_task_alloc();
        OUTLINED_FUNCTION_48();
        *(v15 + 3552) = v224;
        *v224 = v225;
        OUTLINED_FUNCTION_14_55(v224);
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_173_4();
      OUTLINED_FUNCTION_42_31();
      OUTLINED_FUNCTION_19_59(v180, v181, *(v15 + 3520));
      v35 = 0;
      sub_1C754F2DC();
      v16 = *(v15 + 3528);
      OUTLINED_FUNCTION_43_32(v335);
      v182 = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v15 + 3528);
      if ((v182 & 1) == 0)
      {
        v185 = OUTLINED_FUNCTION_92();
        sub_1C6FB2320(v185);
        v38 = v186;
      }

      OUTLINED_FUNCTION_90_14();
      if (v46)
      {
        v187 = OUTLINED_FUNCTION_36_28(v183);
        sub_1C6FB2320(v187);
        v38 = v188;
      }

      OUTLINED_FUNCTION_216_3();
      *(v38 + 16) = 0;
      OUTLINED_FUNCTION_20_52(v38 + 56 * v16);
      OUTLINED_FUNCTION_44_28(v184);
    }

    OUTLINED_FUNCTION_195_3();
    v38 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_114_11();
    v134 = &qword_1EC21AB20;
    OUTLINED_FUNCTION_149_6();
    v169 = &qword_1C7583F58;
    OUTLINED_FUNCTION_148_7();
    while (1)
    {
      *(v15 + 3592) = 0;
      OUTLINED_FUNCTION_147_5(v191);
      if (v137)
      {
        break;
      }

      OUTLINED_FUNCTION_217_1();
      if (v46)
      {
        goto LABEL_138;
      }

      v193 = *(v15 + 3240);
      OUTLINED_FUNCTION_16_55(v192);
      v95 = *(v194 + 48);
      *v193 = v195;
      OUTLINED_FUNCTION_18_48();
      sub_1C7337590(v196, v193 + v95, v197);
      OUTLINED_FUNCTION_215_2();
      v198 = 7954788;
      switch(*(v38 + 57))
      {
        case 1:
          v198 = OUTLINED_FUNCTION_33_33();
          goto LABEL_82;
        case 2:
          v198 = OUTLINED_FUNCTION_91_13();
          goto LABEL_82;
        case 3:
          v198 = OUTLINED_FUNCTION_32_32();
          goto LABEL_82;
        case 4:

          goto LABEL_83;
        case 5:
          v198 = OUTLINED_FUNCTION_41_36();
          goto LABEL_82;
        case 6:
          v198 = v96;
          goto LABEL_82;
        default:
LABEL_82:
          OUTLINED_FUNCTION_112_6(v198);
          OUTLINED_FUNCTION_364();
          if (v37)
          {
LABEL_83:
            OUTLINED_FUNCTION_40_37();
            OUTLINED_FUNCTION_229_2(v199);
          }

          else
          {
            OUTLINED_FUNCTION_48_23();
            if (!v200)
            {
              goto LABEL_98;
            }
          }

          OUTLINED_FUNCTION_42_31();
          OUTLINED_FUNCTION_19_59(v201, v202, *(v15 + 3576));
          v35 = 0;
          sub_1C754F2DC();
          v37 = *(v15 + 3240);
          OUTLINED_FUNCTION_5_74(*(v15 + 3216), *(v15 + 3224));
          v203 = OUTLINED_FUNCTION_101_5();
          sub_1C6FB5FC8(v203, v204, &qword_1C7583F58);
          v205 = swift_isUniquelyReferenced_nonNull_native();
          v38 = *(v15 + 3584);
          if ((v205 & 1) == 0)
          {
            v208 = OUTLINED_FUNCTION_92();
            sub_1C6FB3F04(v208, v209, v210, v211);
            v38 = v212;
          }

          OUTLINED_FUNCTION_117_7();
          if (v46)
          {
            OUTLINED_FUNCTION_90_9();
            sub_1C6FB3F04(v213, v214, v215, v216);
            v38 = v217;
          }

          OUTLINED_FUNCTION_51_21();
          OUTLINED_FUNCTION_200_2();
          OUTLINED_FUNCTION_5_74(v206, v207);
          OUTLINED_FUNCTION_144_7();
          break;
      }
    }

LABEL_92:
    OUTLINED_FUNCTION_110_8();
    OUTLINED_FUNCTION_228_3();
    if (v227)
    {
      if (*(v226 + 16))
      {
        OUTLINED_FUNCTION_13_65(v226);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        swift_task_alloc();
        OUTLINED_FUNCTION_48();
        *(v15 + 3656) = v228;
        *v228 = v229;
        OUTLINED_FUNCTION_1_107(v228);
        OUTLINED_FUNCTION_73_18();

        sub_1C7336744(v230, v231, v232, v233, v234, v235, v236, v237, v238);
      }

      else
      {
LABEL_143:
        __break(1u);
      }

      return;
    }

    OUTLINED_FUNCTION_62_21();
    *(v15 + 3680) = OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator_logger;
    v16 = MEMORY[0x1E69E7CC0];
    v251 = 1u;
    v252 = &selRef_clsSceneClassifications;
    while (1)
    {
      OUTLINED_FUNCTION_142_2(v250);
      if (v137)
      {
        break;
      }

      OUTLINED_FUNCTION_71_14();
      if (v46)
      {
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      v253 = *(v15 + 3160);
      OUTLINED_FUNCTION_109_11();
      v254 = *(v15 + 3120);
      OUTLINED_FUNCTION_9_72(v255);
      v257 = *(v256 + 48);
      *v253 = v258;
      OUTLINED_FUNCTION_2_98();
      sub_1C7337590(v259, v253 + v257, v260);
      OUTLINED_FUNCTION_35();
      sub_1C7337590(v261, v262, v263);
      v264 = *(v254 + 32);
      *(v37 + v264) = v251;
      OUTLINED_FUNCTION_141_6();
      if (!v266)
      {
        OUTLINED_FUNCTION_238_2(v265);
        v267 = OUTLINED_FUNCTION_155_2();
        sub_1C6F65BE8(v267, &qword_1EDD0CE30, 0x1E696AAB0);
        OUTLINED_FUNCTION_97_11();
        sub_1C75504FC();
        v268 = OUTLINED_FUNCTION_183_2();
        [v268 v252[476]];
        v269 = OUTLINED_FUNCTION_230_3();
        v270 = sub_1C6F65BE8(v269, &qword_1EC217FE0, 0x1E6978A98);
        v271 = sub_1C754F06C();
        if (sub_1C71C3FF8(v271))
        {
          OUTLINED_FUNCTION_235_3();
          v324 = objc_opt_self();
          v325 = OUTLINED_FUNCTION_88_12(v324, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_, v268, v270);
          OUTLINED_FUNCTION_210_3(v325);

          OUTLINED_FUNCTION_47_22((v264 + 24));
          OUTLINED_FUNCTION_15_3();
          v326 = swift_task_alloc();
          v327 = OUTLINED_FUNCTION_72_17(v326);
          *v327 = v328;
          OUTLINED_FUNCTION_0_141(v327);
          goto LABEL_59;
        }

        v272 = sub_1C754FEEC();
        v273 = sub_1C755119C();
        if (OUTLINED_FUNCTION_66(v273))
        {
          v274 = OUTLINED_FUNCTION_127();
          OUTLINED_FUNCTION_115_13(v274);
          OUTLINED_FUNCTION_211_4(&dword_1C6F5C000, v272, v275, "Part Of Week retrieval not supported by Spotlight in this build.");
          OUTLINED_FUNCTION_37();
        }

        *(v37 + v264) = 2;
        v252 = &selRef_clsSceneClassifications;
        v251 = 1;
      }

      OUTLINED_FUNCTION_10_67();
      v35 = 0;
      sub_1C754F2DC();
      v38 = *(v15 + 3696);
      v37 = *(v15 + 3160);
      OUTLINED_FUNCTION_3_90(*(v15 + 3136), *(v15 + 3144));
      sub_1C6FB5FC8(v37, &unk_1EC21AB18, &unk_1C7583F48);
      v276 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v15 + 3696);
      if ((v276 & 1) == 0)
      {
        v281 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB3E94(v281, v282, v283, v16);
        v16 = v284;
      }

      OUTLINED_FUNCTION_186_3();
      if (v46)
      {
        v285 = OUTLINED_FUNCTION_15_2(v277);
        sub_1C6FB3E94(v285, v286, v287, v16);
        v16 = v288;
      }

      OUTLINED_FUNCTION_35_24();
      OUTLINED_FUNCTION_196_1();
      OUTLINED_FUNCTION_3_90(v280, v279 + v278 * v37);
      OUTLINED_FUNCTION_87_17();
    }

LABEL_113:
    v289 = 0;
    OUTLINED_FUNCTION_227_2();
    v342 = v290;
    v345 = v291;
    v97 = (v290 + 32);
    v292 = MEMORY[0x1E69E7CC0];
    while (v345 != v289)
    {
      if (v289 >= *(v342 + 16))
      {
        goto LABEL_141;
      }

      v293 = OUTLINED_FUNCTION_66_21();
      OUTLINED_FUNCTION_95_16(v332, v293, v294, v295, v296);
      OUTLINED_FUNCTION_70_17();
      OUTLINED_FUNCTION_119_11();
      v297 = OUTLINED_FUNCTION_21_49(v289);
      sub_1C70555F8(v297, v298, &unk_1EC21AB48, &unk_1C7583F90);
      OUTLINED_FUNCTION_171_2();
      if (v35)
      {
        OUTLINED_FUNCTION_167_5();
        OUTLINED_FUNCTION_64_16();
        v347 = v322;
        OUTLINED_FUNCTION_78_14(v330, v349, v350);

        sub_1C6FB5FC8(v15 + 712, &unk_1EC21AB48, &unk_1C7583F90);
        sub_1C70DF138(v15 + 16);
        sub_1C754F2FC();
        OUTLINED_FUNCTION_3();
        (*(v323 + 8))(v347);
        goto LABEL_3;
      }

      *__dst = v349;
      *&__dst[16] = v350;
      *&__dst[32] = v351;
      OUTLINED_FUNCTION_154_4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v301 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB3DA8(v301);
        v292 = v302;
      }

      v35 = *(v292 + 16);
      OUTLINED_FUNCTION_134_0();
      if (v46)
      {
        v303 = OUTLINED_FUNCTION_15_2(v299);
        sub_1C6FB3DA8(v303);
        v292 = v304;
      }

      sub_1C6FB5FC8(v15 + 712, &unk_1EC21AB48, &unk_1C7583F90);
      *(v292 + 16) = v38;
      OUTLINED_FUNCTION_111_10((v292 + (v35 << 6)), *&__dst[32], *&__dst[16], *__dst);
      OUTLINED_FUNCTION_76_16(v300);
      v97 += 8;
      ++v289;
    }

LABEL_123:
    OUTLINED_FUNCTION_94_15();
    v338 = v306;
    v308 = v307 + 64;
    v346 = MEMORY[0x1E69E7CC0];
    while (v338 != v305)
    {
      OUTLINED_FUNCTION_131_4();
      if (v46)
      {
        goto LABEL_142;
      }

      OUTLINED_FUNCTION_45_29();
      v309 = *(v308 - 24);
      v343 = *(v308 - 32);
      OUTLINED_FUNCTION_100_13();
      OUTLINED_FUNCTION_46_28();
      OUTLINED_FUNCTION_141_4();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_171_2();
      if (v35)
      {
        OUTLINED_FUNCTION_67_19();
        OUTLINED_FUNCTION_53_29();
        OUTLINED_FUNCTION_141_4();
        swift_bridgeObjectRelease_n();

        sub_1C70DF138(v15 + 16);
        sub_1C754F2FC();
        OUTLINED_FUNCTION_3();
        (*(v84 + 8))(v97);
        goto LABEL_3;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v313 = OUTLINED_FUNCTION_8_64();
        sub_1C6FB3D78(v313, v314, v315, v316);
        v346 = v317;
      }

      OUTLINED_FUNCTION_59_23();
      if (v46)
      {
        v318 = OUTLINED_FUNCTION_15_2(v310);
        sub_1C6FB3D78(v318, v319, v320, v346);
        v346 = v321;
      }

      OUTLINED_FUNCTION_75_13(v346);
      *(v311 + 32) = v343;
      *(v311 + 40) = v309;
      OUTLINED_FUNCTION_152_5(v311);
      OUTLINED_FUNCTION_68_20(v312);
    }

    OUTLINED_FUNCTION_160_5();
    sub_1C754F2EC();
    v38 = *(v15 + 3648);
    v95 = *(v15 + 3584);
    v168 = *(v15 + 3528);
    v96 = *(v15 + 3504);
    v169 = *(v15 + 3464);
    v341 = *(v15 + 3408);
    v134 = *(v15 + 3352);
    if (!v35)
    {
      goto LABEL_139;
    }

    sub_1C70DF138(v15 + 16);
  }

LABEL_3:
  OUTLINED_FUNCTION_25_39();

  OUTLINED_FUNCTION_6_0();
LABEL_4:
  OUTLINED_FUNCTION_73_18();

  v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C732CCF8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 3384) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C732CDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_168_6();
  OUTLINED_FUNCTION_31();
  v360 = (v14 + 1984);
  v346 = (v14 + 1536);
  v348 = v14 + 2096;
  v350 = (v14 + 2152);
  v352 = v14 + 1144;
  v342 = v14 + 1216;
  v344 = v14 + 2264;
  v16 = (v14 + 2320);
  v17 = (v14 + 2376);
  v365 = v14 + 2648;
  v356 = v14 + 2696;
  v358 = v14 + 2600;
  v18 = *(v14 + 3368);
  v19 = *(v14 + 2944);
  v20 = *(v14 + 2952);
  *(v14 + 2960) = *(v14 + 2936);
  v354 = v14 + 2744;
  v363 = v14 + 314;
  v368 = v14 + 394;
  v371 = v14 + 473;
  *(v14 + 2968) = v19;
  *(v14 + 2976) = v20;
  v28 = FreeformStoryFetching.Result.uuids.getter(v21, v22, v23, v24, v25, v26, v27);

  swift_unknownObjectRelease();
  v29 = *(v14 + 3384);
  v30 = v14 + 408;
  while (1)
  {
    OUTLINED_FUNCTION_42_31();
    OUTLINED_FUNCTION_19_59(v31, v32, *(v14 + 3344));
    v33 = sub_1C754F2DC();
    if (v29)
    {
      OUTLINED_FUNCTION_122_8(v33, v34, v35, v36, v37, v38, v39, v40, v342, v344, v346, v348, v350, v352);
      *(v14 + 1200) = v28;
      *(v14 + 1208) = v64;
      sub_1C7025F74(v65);

      sub_1C6FB5FC8(v14 + 400, &qword_1EC21AB28, &unk_1C7583F60);
LABEL_12:
      sub_1C70DF138(v14 + 16);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v66 + 8))(v30);
      goto LABEL_86;
    }

    v41 = *(v14 + 2336);
    *v17 = *v16;
    *(v14 + 2392) = v41;
    *(v14 + 2408) = *(v14 + 2352);
    *(v14 + 2422) = *(v14 + 2366);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *(v14 + 3352);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v54 = OUTLINED_FUNCTION_92();
      sub_1C6FB3FA4(v54, v55, v56, v57);
      v43 = v58;
    }

    OUTLINED_FUNCTION_90_14();
    if (v44)
    {
      OUTLINED_FUNCTION_58_24();
      sub_1C6FB3FA4(v59, v60, v61, v62);
      v43 = v63;
    }

    v45 = *(v14 + 554);
    v46 = *(v14 + 553);
    sub_1C6FB5FC8(v14 + 400, &qword_1EC21AB28, &unk_1C7583F60);
    OUTLINED_FUNCTION_194_4();
    v48 = *(v14 + 2392);
    v47 = *(v14 + 2408);
    v49 = *v17;
    *(v50 + 78) = *(v14 + 2422);
    OUTLINED_FUNCTION_128_6(v47, v48, v50, v49);
    *(v51 + 86) = 1;
    *(v51 + 87) = v46;
    *(v51 + 88) = v28;
    *(v51 + 96) = v45;
    v52 = *(v14 + 3344) + 1;
    *(v14 + 3360) = v15;
    *(v14 + 3352) = v43;
    *(v14 + 3344) = v52;
    if (v52 == *(v14 + 3336))
    {
      OUTLINED_FUNCTION_180_3();
      v43 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        OUTLINED_FUNCTION_189_2();
        if (v52 == v67)
        {
          break;
        }

        OUTLINED_FUNCTION_190_0();
        if (v44)
        {
          __break(1u);
LABEL_91:
          v253 = OUTLINED_FUNCTION_27_41();
          v255 = v254(v253);
          OUTLINED_FUNCTION_244_3(v255, v256, &qword_1EC218C50, &qword_1C75606A0);
          v257 = objc_allocWithZone(MEMORY[0x1E6978A98]);
          v258 = OUTLINED_FUNCTION_104_9();
          sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
          OUTLINED_FUNCTION_51();
          sub_1C75504FC();
          OUTLINED_FUNCTION_49_3();
          [sub_1C7073450() length];
          v259 = objc_opt_self();
          v260 = OUTLINED_FUNCTION_63_19(v259, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
          OUTLINED_FUNCTION_221_2(v260);

          OUTLINED_FUNCTION_15_63(v19 + 3);
          OUTLINED_FUNCTION_15_3();
          swift_task_alloc();
          OUTLINED_FUNCTION_48();
          *(v14 + 3624) = v261;
          *v261 = v262;
          OUTLINED_FUNCTION_6_81(v261);
          goto LABEL_47;
        }

        OUTLINED_FUNCTION_172_3(v68);
        memcpy(__dst, (v43 + 32), 0x42uLL);
        *(v14 + 320) = v52;
        memcpy((v14 + 2320), __dst, 0x42uLL);
        sub_1C7025FF8(v14 + 856, v14 + 928);
        v69 = *(v14 + 384);
        OUTLINED_FUNCTION_130_5(*v16, *(v14 + 2336));
        if (!v69)
        {
          v134 = *(v14 + 360);
          sub_1C70555F8(v14 + 320, v14 + 160, &qword_1EC21AB30, &qword_1C7583F70);
          sub_1C75504FC();
          OUTLINED_FUNCTION_145_2();
          if (sub_1C75507FC() <= 0)
          {
            sub_1C75504FC();
            v135 = OUTLINED_FUNCTION_165_3();
            MEMORY[0x1CCA5CC40](v135);
            OUTLINED_FUNCTION_162_6();
          }

          else
          {
            sub_1C75504FC();
          }

          v136 = *(v14 + 3112);
          v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
          v138 = OUTLINED_FUNCTION_13_1(v137);
          OUTLINED_FUNCTION_198_2(v138, xmmword_1C755BAB0);
          sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
          OUTLINED_FUNCTION_24_2();
          sub_1C75504FC();
          OUTLINED_FUNCTION_145_2();
          v139 = sub_1C7073450();
          OUTLINED_FUNCTION_248_3(v139);
          sub_1C6F65BE8(0, &qword_1EC217FE0, 0x1E6978A98);
          OUTLINED_FUNCTION_51();
          sub_1C75504FC();
          v140 = sub_1C71C3DE4();
          v141 = objc_opt_self();
          *(v14 + 3424) = OUTLINED_FUNCTION_77_14(v141, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);

          OUTLINED_FUNCTION_15_63((v136 + 24));
          OUTLINED_FUNCTION_15_3();
          swift_task_alloc();
          OUTLINED_FUNCTION_48();
          *(v14 + 3432) = v142;
          *v142 = v143;
          OUTLINED_FUNCTION_49_22(v142);
          goto LABEL_47;
        }

        sub_1C70555F8(v14 + 320, v14 + 240, &qword_1EC21AB30, &qword_1C7583F70);
        OUTLINED_FUNCTION_42_31();
        OUTLINED_FUNCTION_19_59(v70, v71, *(v14 + 3400));
        sub_1C754F2DC();
        v72 = OUTLINED_FUNCTION_161_6(v14 + 2488, *(v14 + 2488), *(v14 + 2504));
        v43 = *(v14 + 3408);
        if ((v72 & 1) == 0)
        {
          v77 = OUTLINED_FUNCTION_92();
          sub_1C6FB3F74(v77, v78, v79, v80);
          v43 = v81;
        }

        v74 = *(v43 + 16);
        v73 = *(v43 + 24);
        v52 = v74 + 1;
        if (v74 >= v73 >> 1)
        {
          v82 = OUTLINED_FUNCTION_36_28(v73);
          sub_1C6FB3F74(v82, v83, v84, v85);
          v43 = v86;
        }

        sub_1C6FB5FC8(v14 + 320, &qword_1EC21AB30, &qword_1C7583F70);
        OUTLINED_FUNCTION_233_3();
        OUTLINED_FUNCTION_60_20(v75, *(v14 + 2464), *(v14 + 2448), *(v14 + 2432));
        OUTLINED_FUNCTION_197_4(v76);
      }

      OUTLINED_FUNCTION_86_11();
      v98 = MEMORY[0x1E69E7CC0];
      v30 = &qword_1EC21AB38;
      while (1)
      {
        OUTLINED_FUNCTION_140_6(v97);
        if (v99 == v100)
        {
          break;
        }

        OUTLINED_FUNCTION_217_1();
        if (v44)
        {
          __break(1u);
          goto LABEL_106;
        }

        v101 = OUTLINED_FUNCTION_61_19();
        v104 = OUTLINED_FUNCTION_22_54(v360, v101, v102, v103);
        v109 = OUTLINED_FUNCTION_157_3(v105, v106, v104, v107, v108);
        OUTLINED_FUNCTION_133_7(v109, v110, v111, v112, v113, v114, v115, v116, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v363, v365, v368);
        OUTLINED_FUNCTION_174_3();
        OUTLINED_FUNCTION_42_31();
        OUTLINED_FUNCTION_19_59(v117, v118, *(v14 + 3456));
        v119 = sub_1C754F2DC();
        v43 = *(v14 + 3464);
        v127 = OUTLINED_FUNCTION_145_5(v119, v120, v121, v122, v123, v124, v125, v126, v343, v345, v347, v349, v351, v353, v355, v357, v359, v361, v364, v366, v369);
        v98 = *(v14 + 3464);
        if ((v127 & 1) == 0)
        {
          v130 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB2320(v130);
          v98 = v131;
        }

        v52 = *(v98 + 16);
        OUTLINED_FUNCTION_134_0();
        if (v44)
        {
          v132 = OUTLINED_FUNCTION_15_2(v128);
          sub_1C6FB2320(v132);
          v98 = v133;
        }

        OUTLINED_FUNCTION_220_2();
        *(v98 + 16) = v43;
        OUTLINED_FUNCTION_20_52(v98 + 56 * v52);
        OUTLINED_FUNCTION_69_20(v129);
      }

      OUTLINED_FUNCTION_153_5();
      v370 = v145;
      v147 = v146 + 64;
      v148 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        *(v14 + 3504) = v148;
        if (v370 == v144)
        {
          break;
        }

        OUTLINED_FUNCTION_131_4();
        if (v44)
        {
          __break(1u);
          goto LABEL_116;
        }

        OUTLINED_FUNCTION_45_29();
        v19 = *(v147 - 24);
        v371 = *(v147 - 32);
        OUTLINED_FUNCTION_98_13();
        v374 = v149;
        OUTLINED_FUNCTION_127_7();
        OUTLINED_FUNCTION_141_4();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_171_2();
        if (v52)
        {
          OUTLINED_FUNCTION_125_6();
          v193 = *(v14 + 3104);
          OUTLINED_FUNCTION_129_7();
          swift_bridgeObjectRelease_n();
          OUTLINED_FUNCTION_141_4();
          swift_bridgeObjectRelease_n();

          sub_1C70DF138(v14 + 16);
          sub_1C754F2FC();
          OUTLINED_FUNCTION_3();
          (*(v194 + 8))(v193);
          goto LABEL_86;
        }

        v150 = v148;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v153 = OUTLINED_FUNCTION_92();
          sub_1C6FB3F44(v153, v154, v155, v156);
          v150 = v157;
        }

        v52 = *(v150 + 16);
        v148 = v150;
        OUTLINED_FUNCTION_134_0();
        if (v44)
        {
          v158 = OUTLINED_FUNCTION_15_2(v151);
          sub_1C6FB3F44(v158, v159, v160, v150);
          v148 = v161;
        }

        OUTLINED_FUNCTION_193_2();
        OUTLINED_FUNCTION_93_14(v152);
        v144 = v374 + 1;
      }

      OUTLINED_FUNCTION_65_22();
      v30 = &qword_1EC21AB38;
      while (1)
      {
        OUTLINED_FUNCTION_96_12(v171);
        if (v172)
        {
          break;
        }

        OUTLINED_FUNCTION_217_1();
        if (v44)
        {
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          OUTLINED_FUNCTION_113_11();
          v339 = *(v14 + 3088);
          *v339 = v30;
          v339[1] = v371;
          OUTLINED_FUNCTION_146_6(v339);
          *(v340 + 64) = v148;
          *(v340 + 72) = v341;
          sub_1C70DF138(v14 + 16);

          OUTLINED_FUNCTION_25();
          goto LABEL_87;
        }

        v173 = OUTLINED_FUNCTION_61_19();
        v176 = OUTLINED_FUNCTION_22_54(v350, v173, v174, v175);
        OUTLINED_FUNCTION_107_9(v177, v178, v176, v179, v180);
        v181 = OUTLINED_FUNCTION_232_2();
        OUTLINED_FUNCTION_50_25(v356, v181, v182);
        if (!v98)
        {
          OUTLINED_FUNCTION_116_11();
          v223 = sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
          OUTLINED_FUNCTION_223_2(v223, v224, &qword_1EC21AB38, &qword_1C7583F78);
          sub_1C75504FC();
          OUTLINED_FUNCTION_49_3();
          v225 = sub_1C7073450();
          [v225 length];
          v226 = objc_allocWithZone(MEMORY[0x1E6978A98]);
          OUTLINED_FUNCTION_51();
          sub_1C75504FC();
          OUTLINED_FUNCTION_75();
          sub_1C71C8E10();
          v227 = objc_opt_self();
          v228 = OUTLINED_FUNCTION_52_26(v227, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
          OUTLINED_FUNCTION_226_2(v228);

          OUTLINED_FUNCTION_15_63((v148 + 24));
          OUTLINED_FUNCTION_15_3();
          swift_task_alloc();
          OUTLINED_FUNCTION_48();
          *(v14 + 3552) = v229;
          *v229 = v230;
          OUTLINED_FUNCTION_14_55(v229);
          goto LABEL_47;
        }

        OUTLINED_FUNCTION_173_4();
        OUTLINED_FUNCTION_42_31();
        OUTLINED_FUNCTION_19_59(v183, v184, *(v14 + 3520));
        v52 = 0;
        sub_1C754F2DC();
        v19 = *(v14 + 3528);
        OUTLINED_FUNCTION_43_32(v356);
        v185 = swift_isUniquelyReferenced_nonNull_native();
        v186 = *(v14 + 3528);
        if ((v185 & 1) == 0)
        {
          v189 = OUTLINED_FUNCTION_92();
          sub_1C6FB2320(v189);
          v186 = v190;
        }

        OUTLINED_FUNCTION_90_14();
        if (v44)
        {
          v191 = OUTLINED_FUNCTION_36_28(v187);
          sub_1C6FB2320(v191);
          v186 = v192;
        }

        OUTLINED_FUNCTION_216_3();
        *(v186 + 16) = 0;
        OUTLINED_FUNCTION_20_52(v186 + 56 * v19);
        OUTLINED_FUNCTION_44_28(v188);
      }

      OUTLINED_FUNCTION_195_3();
      v43 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_114_11();
      OUTLINED_FUNCTION_149_6();
      v148 = 0x6D72657465646E75;
      while (1)
      {
        *(v14 + 3592) = v15;
        OUTLINED_FUNCTION_147_5(v195);
        if (v172)
        {
          break;
        }

        OUTLINED_FUNCTION_217_1();
        if (v44)
        {
          goto LABEL_131;
        }

        v197 = *(v14 + 3240);
        OUTLINED_FUNCTION_16_55(v196);
        v199 = *(v198 + 48);
        *v197 = v200;
        OUTLINED_FUNCTION_18_48();
        sub_1C7337590(v201, v197 + v199, v202);
        OUTLINED_FUNCTION_215_2();
        v203 = 7954788;
        switch(*(v43 + 57))
        {
          case 1:
            v203 = OUTLINED_FUNCTION_33_33();
            goto LABEL_71;
          case 2:
            v203 = OUTLINED_FUNCTION_91_13();
            goto LABEL_71;
          case 3:
            v203 = OUTLINED_FUNCTION_32_32();
            goto LABEL_71;
          case 4:

            goto LABEL_72;
          case 5:
            v203 = OUTLINED_FUNCTION_41_36();
            goto LABEL_71;
          case 6:
            v203 = 0x6D72657465646E75;
            goto LABEL_71;
          default:
LABEL_71:
            OUTLINED_FUNCTION_112_6(v203);
            OUTLINED_FUNCTION_364();
            if (v30)
            {
LABEL_72:
              OUTLINED_FUNCTION_40_37();
              OUTLINED_FUNCTION_229_2(v204);
            }

            else
            {
              OUTLINED_FUNCTION_48_23();
              if (!v205)
              {
                goto LABEL_91;
              }
            }

            OUTLINED_FUNCTION_42_31();
            OUTLINED_FUNCTION_19_59(v206, v207, *(v14 + 3576));
            v52 = 0;
            sub_1C754F2DC();
            v30 = *(v14 + 3240);
            OUTLINED_FUNCTION_5_74(*(v14 + 3216), *(v14 + 3224));
            v208 = OUTLINED_FUNCTION_457();
            sub_1C6FB5FC8(v208, v209, &qword_1C7583F58);
            v210 = swift_isUniquelyReferenced_nonNull_native();
            v43 = *(v14 + 3584);
            if ((v210 & 1) == 0)
            {
              v213 = OUTLINED_FUNCTION_92();
              sub_1C6FB3F04(v213, v214, v215, v216);
              v43 = v217;
            }

            OUTLINED_FUNCTION_117_7();
            if (v44)
            {
              OUTLINED_FUNCTION_90_9();
              sub_1C6FB3F04(v218, v219, v220, v221);
              v43 = v222;
            }

            OUTLINED_FUNCTION_51_21();
            OUTLINED_FUNCTION_200_2();
            OUTLINED_FUNCTION_5_74(v211, v212);
            OUTLINED_FUNCTION_144_7();
            break;
        }
      }

LABEL_81:
      OUTLINED_FUNCTION_110_8();
      OUTLINED_FUNCTION_228_3();
      if (v232)
      {
        if (*(v231 + 16))
        {
          OUTLINED_FUNCTION_13_65(v231);
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          swift_task_alloc();
          OUTLINED_FUNCTION_48();
          *(v14 + 3656) = v233;
          *v233 = v234;
          OUTLINED_FUNCTION_1_107(v233);
          OUTLINED_FUNCTION_73_18();

          sub_1C7336744(v235, v236, v237, v238, v239, v240, v241, v242, v243);
        }

        else
        {
LABEL_136:
          __break(1u);
        }

        return;
      }

      OUTLINED_FUNCTION_62_21();
      *(v14 + 3680) = OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator_logger;
      v264 = &selRef_clsSceneClassifications;
      while (1)
      {
        OUTLINED_FUNCTION_142_2(v263);
        if (v172)
        {
          break;
        }

        OUTLINED_FUNCTION_71_14();
        if (v44)
        {
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        v265 = *(v14 + 3160);
        OUTLINED_FUNCTION_109_11();
        v266 = *(v14 + 3120);
        OUTLINED_FUNCTION_9_72(v267);
        v269 = *(v268 + 48);
        *v265 = v270;
        OUTLINED_FUNCTION_2_98();
        sub_1C7337590(v271, v265 + v269, v272);
        OUTLINED_FUNCTION_35();
        sub_1C7337590(v273, v274, v275);
        v276 = *(v266 + 32);
        *(v30 + v276) = 1;
        OUTLINED_FUNCTION_141_6();
        if (!v277)
        {
          v278 = *(*(v14 + 3120) + 24);
          sub_1C754F06C();
          v279 = OUTLINED_FUNCTION_155_2();
          sub_1C6F65BE8(v279, &qword_1EDD0CE30, 0x1E696AAB0);
          OUTLINED_FUNCTION_97_11();
          sub_1C75504FC();
          v280 = OUTLINED_FUNCTION_183_2();
          [v280 v264[476]];
          v281 = OUTLINED_FUNCTION_230_3();
          v282 = sub_1C6F65BE8(v281, &qword_1EC217FE0, 0x1E6978A98);
          v283 = sub_1C754F06C();
          if (sub_1C71C3FF8(v283))
          {
            OUTLINED_FUNCTION_235_3();
            v334 = objc_opt_self();
            v335 = OUTLINED_FUNCTION_88_12(v334, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_, v280, v282);
            OUTLINED_FUNCTION_210_3(v335);

            OUTLINED_FUNCTION_47_22((v278 + 24));
            OUTLINED_FUNCTION_15_3();
            v336 = swift_task_alloc();
            v337 = OUTLINED_FUNCTION_72_17(v336);
            *v337 = v338;
            OUTLINED_FUNCTION_0_141(v337);
            goto LABEL_48;
          }

          v284 = sub_1C754FEEC();
          v285 = sub_1C755119C();
          if (OUTLINED_FUNCTION_66(v285))
          {
            v286 = OUTLINED_FUNCTION_127();
            OUTLINED_FUNCTION_115_13(v286);
            OUTLINED_FUNCTION_211_4(&dword_1C6F5C000, v284, v287, "Part Of Week retrieval not supported by Spotlight in this build.");
            OUTLINED_FUNCTION_37();
          }

          *(v30 + v276) = 2;
          v264 = &selRef_clsSceneClassifications;
        }

        OUTLINED_FUNCTION_10_67();
        v52 = 0;
        sub_1C754F2DC();
        v43 = *(v14 + 3696);
        v30 = *(v14 + 3160);
        OUTLINED_FUNCTION_3_90(*(v14 + 3136), *(v14 + 3144));
        sub_1C6FB5FC8(v30, &unk_1EC21AB18, &unk_1C7583F48);
        v288 = swift_isUniquelyReferenced_nonNull_native();
        v289 = *(v14 + 3696);
        if ((v288 & 1) == 0)
        {
          v293 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB3E94(v293, v294, v295, v289);
          v289 = v296;
        }

        OUTLINED_FUNCTION_186_3();
        if (v44)
        {
          OUTLINED_FUNCTION_82_16();
          sub_1C6FB3E94(v297, v298, v299, v289);
        }

        OUTLINED_FUNCTION_35_24();
        OUTLINED_FUNCTION_196_1();
        OUTLINED_FUNCTION_3_90(v292, v291 + v290 * v30);
        OUTLINED_FUNCTION_87_17();
      }

LABEL_106:
      v300 = 0;
      OUTLINED_FUNCTION_227_2();
      v372 = v301;
      v375 = v302;
      v30 = v301 + 32;
      v148 = MEMORY[0x1E69E7CC0];
      while (v375 != v300)
      {
        if (v300 >= *(v372 + 16))
        {
          goto LABEL_134;
        }

        v303 = OUTLINED_FUNCTION_66_21();
        OUTLINED_FUNCTION_95_16(v346, v303, v304, v305, v306);
        OUTLINED_FUNCTION_70_17();
        OUTLINED_FUNCTION_119_11();
        v307 = OUTLINED_FUNCTION_21_49(v300);
        sub_1C70555F8(v307, v308, &unk_1EC21AB48, &unk_1C7583F90);
        OUTLINED_FUNCTION_171_2();
        if (v52)
        {
          OUTLINED_FUNCTION_167_5();
          OUTLINED_FUNCTION_64_16();
          v377 = v332;
          OUTLINED_FUNCTION_78_14(v342, v379, v380);

          sub_1C6FB5FC8(v14 + 712, &unk_1EC21AB48, &unk_1C7583F90);
          sub_1C70DF138(v14 + 16);
          sub_1C754F2FC();
          OUTLINED_FUNCTION_3();
          (*(v333 + 8))(v377);
          goto LABEL_86;
        }

        __dst[0] = v379;
        __dst[1] = v380;
        __dst[2] = v381;
        OUTLINED_FUNCTION_154_4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v311 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB3DA8(v311);
          v148 = v312;
        }

        v52 = *(v148 + 16);
        OUTLINED_FUNCTION_134_0();
        if (v44)
        {
          v313 = OUTLINED_FUNCTION_15_2(v309);
          sub_1C6FB3DA8(v313);
          v148 = v314;
        }

        sub_1C6FB5FC8(v14 + 712, &unk_1EC21AB48, &unk_1C7583F90);
        *(v148 + 16) = v43;
        OUTLINED_FUNCTION_111_10((v148 + (v52 << 6)), __dst[2], __dst[1], __dst[0]);
        OUTLINED_FUNCTION_76_16(v310);
        v30 += 64;
        ++v300;
      }

LABEL_116:
      OUTLINED_FUNCTION_94_15();
      v367 = v316;
      v318 = v317 + 64;
      v376 = MEMORY[0x1E69E7CC0];
      v362 = v148;
      while (v367 != v315)
      {
        OUTLINED_FUNCTION_131_4();
        if (v44)
        {
          goto LABEL_135;
        }

        OUTLINED_FUNCTION_45_29();
        v319 = *(v318 - 24);
        v373 = *(v318 - 32);
        OUTLINED_FUNCTION_100_13();
        OUTLINED_FUNCTION_46_28();
        OUTLINED_FUNCTION_141_4();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_171_2();
        if (v52)
        {
          OUTLINED_FUNCTION_67_19();
          OUTLINED_FUNCTION_53_29();
          OUTLINED_FUNCTION_141_4();
          swift_bridgeObjectRelease_n();

          goto LABEL_12;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v323 = OUTLINED_FUNCTION_8_64();
          sub_1C6FB3D78(v323, v324, v325, v326);
          v376 = v327;
        }

        OUTLINED_FUNCTION_59_23();
        if (v44)
        {
          v328 = OUTLINED_FUNCTION_15_2(v320);
          sub_1C6FB3D78(v328, v329, v330, v376);
          v376 = v331;
        }

        OUTLINED_FUNCTION_75_13(v376);
        *(v321 + 32) = v373;
        *(v321 + 40) = v319;
        OUTLINED_FUNCTION_152_5(v321);
        OUTLINED_FUNCTION_68_20(v322);
        v148 = v362;
      }

      OUTLINED_FUNCTION_160_5();
      sub_1C754F2EC();
      OUTLINED_FUNCTION_56_24();
      v371 = *(v14 + 3408);
      v30 = *(v14 + 3352);
      if (!v52)
      {
        goto LABEL_132;
      }

      sub_1C70DF138(v14 + 16);
LABEL_86:
      OUTLINED_FUNCTION_25_39();

      OUTLINED_FUNCTION_6_0();
LABEL_87:
      OUTLINED_FUNCTION_73_18();

      v246(v245, v246, v247, v248, v249, v250, v251, v252, a9, a10, a11, a12, a13, a14);
      return;
    }

    v53 = *(v14 + 3248);
    if (v52 >= *(v53 + 16))
    {
      __break(1u);
      goto LABEL_81;
    }

    OUTLINED_FUNCTION_240_3(v53);
    memcpy(__dst, (v43 + 32), 0x41uLL);
    *(v14 + 400) = v52;
    memcpy((v14 + 408), __dst, 0x41uLL);
    sub_1C7025F3C(v14 + 1000, v14 + 1072);
    v28 = *(v14 + 464);
    OUTLINED_FUNCTION_135_7();
    if (!v28)
    {
      break;
    }

    sub_1C70555F8(v14 + 400, v14 + 560, &qword_1EC21AB28, &unk_1C7583F60);
    v29 = 0;
  }

  v87 = *(v14 + 440);
  sub_1C70555F8(v14 + 400, v14 + 480, &qword_1EC21AB28, &unk_1C7583F60);
  sub_1C75504FC();
  OUTLINED_FUNCTION_145_2();
  if (sub_1C75507FC() <= 0)
  {
    sub_1C75504FC();
    v88 = OUTLINED_FUNCTION_165_3();
    MEMORY[0x1CCA5CC40](v88);
    OUTLINED_FUNCTION_162_6();
  }

  else
  {
    sub_1C75504FC();
  }

  v89 = *(v14 + 3112);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v91 = OUTLINED_FUNCTION_13_1(v90);
  OUTLINED_FUNCTION_198_2(v91, xmmword_1C755BAB0);
  sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  OUTLINED_FUNCTION_145_2();
  v92 = sub_1C7073450();
  OUTLINED_FUNCTION_248_3(v92);
  sub_1C6F65BE8(0, &qword_1EC217FE0, 0x1E6978A98);
  OUTLINED_FUNCTION_51();
  sub_1C75504FC();
  v93 = sub_1C71C3DE4();
  v94 = objc_opt_self();
  *(v14 + 3368) = OUTLINED_FUNCTION_77_14(v94, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);

  OUTLINED_FUNCTION_15_63((v89 + 24));
  OUTLINED_FUNCTION_15_3();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v14 + 3376) = v95;
  *v95 = v96;
  OUTLINED_FUNCTION_124_8(v95);
LABEL_47:
  OUTLINED_FUNCTION_34_32();
LABEL_48:
  OUTLINED_FUNCTION_73_18();

  v168(v162, v163, v164, v165, v166, v167, v168, v169, a9, a10, a11, a12, a13, a14);
}