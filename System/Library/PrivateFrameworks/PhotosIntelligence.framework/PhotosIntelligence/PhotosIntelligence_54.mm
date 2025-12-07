uint64_t sub_1C7366D34(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1C75504FC();
  v5 = sub_1C6FE3768();
  swift_isUniquelyReferenced_nonNull_native();
  v6 = *a2;
  v12 = *a2;
  *a2 = 0x8000000000000000;
  sub_1C6F78124(v4, v3);
  if (__OFADD__(*(v6 + 16), (v7 & 1) == 0))
  {
    __break(1u);
LABEL_12:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0, &qword_1C755CB70);
  if (sub_1C7551A2C())
  {
    sub_1C6F78124(v4, v3);
    if ((v8 & 1) != (v9 & 1))
    {
      goto LABEL_12;
    }
  }

  *a2 = v12;

  if (v8)
  {
  }

  else
  {
    sub_1C6FCABE4();
  }

  if (v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CD0];
  }

  return sub_1C6FD25FC(v10);
}

void sub_1C7366EA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = 0;
  sub_1C75504FC();
  sub_1C75504FC();
  v123 = v5;
  v9 = sub_1C754FEEC();
  v10 = sub_1C75511BC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v133 = v12;
    *v11 = 136315138;
    sub_1C75504FC();
    sub_1C7360418(a3, a1, v13, v14, v15, v16, v17);
    v18 = a3;
    v19 = a1;
    v20 = MEMORY[0x1CCA5D090]();
    v22 = v21;

    v23 = v20;
    a1 = v19;
    v24 = sub_1C6F765A4(v23, v22, &v133);

    *(v11 + 4) = v24;
    a3 = v18;
    _os_log_impl(&dword_1C6F5C000, v9, v10, "Allowed list of metadata query token types {%s}", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1CCA5F8E0](v12, -1, -1);
    MEMORY[0x1CCA5F8E0](v11, -1, -1);
  }

  v25 = a3 + 56;
  v26 = 1 << *(a3 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a3 + 56);
  v131 = (v26 + 63) >> 6;
  sub_1C75504FC();
  v129 = 0;
  v130 = 0;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  v125 = 0;
  v29 = 0;
  v132 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    if (v28)
    {
      goto LABEL_11;
    }

    do
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_107;
      }

      if (v30 >= v131)
      {

        sub_1C6F6E5B4(v130, 0);
        sub_1C6F6E5B4(v129, 0);
        sub_1C6F6E5B4(v126, 0);
        sub_1C6F6E5B4(v127, 0);
        sub_1C6F6E5B4(v128, 0);
        sub_1C6F6E5B4(v125, 0);
        return;
      }

      v28 = *(v25 + 8 * v30);
      ++v29;
    }

    while (!v28);
    v29 = v30;
LABEL_11:
    v31 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    switch(*(*(a3 + 48) + (v31 | (v29 << 6))))
    {
      case 1:
        v32 = v123 + *(type metadata accessor for QueryGenerator(0) + 24);
        v33 = *(v32 + 8);
        v34 = *(v32 + 16);
        v133 = *v32;
        v134 = v33;
        v135 = v34;
        v35 = v133;

        static QueryGenerator.consolidatePersonAssetUUIDs(from:isTrip:storyPhotoLibraryContext:)();
        v37 = v36;

        if (!v37)
        {
          continue;
        }

        v111 = v37;
        v117 = a3;
        v38 = v8;
        v8 = a1;
        sub_1C6F6E5B4(v130, 0);
        swift_isUniquelyReferenced_nonNull_native();
        v133 = v132;
        sub_1C6FC3264();
        if (__OFADD__(v132[2], (v39 & 1) == 0))
        {
          goto LABEL_111;
        }

        v40 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE88, &qword_1C75851E8);
        v41 = sub_1C7551A2C();
        v132 = v133;
        if ((v41 & 1) == 0)
        {
          v8 = v38;
LABEL_54:
          if ((v40 & 1) == 0)
          {
            sub_1C6FCABDC();
          }

          v80 = sub_1C75504FC();
          sub_1C739796C(v80);
          if (a5)
          {
            v133 = sub_1C71CD85C(v111);
            sub_1C75504FC();
            sub_1C70401E8();
            a3 = v117;

            v81 = sub_1C7164AD8(v133, 0x6F737265505B5551, 0xEA00000000005D6ELL, 0, 0);

            v130 = sub_1C719D928;
          }

          else
          {

            v130 = sub_1C719D928;
            a3 = v117;
          }

          continue;
        }

        sub_1C6FC3264();
        if ((v40 & 1) == (v42 & 1))
        {
          v8 = v38;
          goto LABEL_54;
        }

LABEL_117:
        sub_1C7551E4C();
        __break(1u);

        __break(1u);
        return;
      case 3:
        if (!*(a1 + 16))
        {
          continue;
        }

        v64 = sub_1C6FC3264();
        if ((v65 & 1) == 0)
        {
          continue;
        }

        v112 = v8;
        v118 = a3;
        v66 = *(*(a1 + 56) + 8 * v64);
        type metadata accessor for QueryGenerator(0);
        v67 = *(v66 + 16);
        if (v67)
        {
          v133 = MEMORY[0x1E69E7CC0];
          sub_1C75504FC();
          sub_1C716E23C(0, v67, 0);
          v68 = v133;
          v69 = 32;
          do
          {
            sub_1C75504FC();
            sub_1C706D154();
            v71 = v70;
            v133 = v68;
            v8 = v68[2];
            v72 = v68[3];
            if (v8 >= v72 >> 1)
            {
              sub_1C716E23C(v72 > 1, v8 + 1, 1);
              v68 = v133;
            }

            v68[2] = v8 + 1;
            v68[v8 + 4] = v71;
            v69 += 8;
            --v67;
          }

          while (v67);
        }

        else
        {
          v68 = MEMORY[0x1E69E7CC0];
        }

        v102 = MomentGroundingProcessor.assetUUIDsBackedByOverlappingMoments(for:)(v68);

        sub_1C6F6E5B4(v129, 0);
        swift_isUniquelyReferenced_nonNull_native();
        v133 = v132;
        sub_1C6FC3264();
        if (__OFADD__(v132[2], (v103 & 1) == 0))
        {
          goto LABEL_112;
        }

        v104 = v103;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE88, &qword_1C75851E8);
        v105 = sub_1C7551A2C();
        v8 = v112;
        v132 = v133;
        if (v105)
        {
          sub_1C6FC3264();
          a3 = v118;
          if ((v104 & 1) != (v106 & 1))
          {
            goto LABEL_117;
          }
        }

        else
        {
          a3 = v118;
        }

        if ((v104 & 1) == 0)
        {
          sub_1C6FCABDC();
        }

        v107 = sub_1C75504FC();
        sub_1C739796C(v107);
        if (a5)
        {
          v133 = sub_1C71CD85C(v102);
          sub_1C75504FC();
          sub_1C70401E8();

          v108 = sub_1C7164AD8(v133, 0x5D657461445B5551, 0xE800000000000000, 0, 0);
        }

        else
        {
        }

        v129 = sub_1C719D928;
        continue;
      case 4:
        if (!*(a1 + 16))
        {
          continue;
        }

        v50 = sub_1C6FC3264();
        if ((v51 & 1) == 0)
        {
          continue;
        }

        v52 = *(*(a1 + 56) + 8 * v50);
        v53 = *(v52 + 16);
        if (!v53)
        {
          continue;
        }

        v133 = MEMORY[0x1E69E7CD0];
        sub_1C75504FC();
        v54 = 0;
        while (2)
        {
          if (v53 != v54)
          {
            if (v54 < *(v52 + 16))
            {
              v55 = v54 + 1;
              v56 = sub_1C75504FC();
              sub_1C73978C4(v56);
              v54 = v55;
              continue;
            }

            goto LABEL_108;
          }

          break;
        }

        v87 = v8;
        v8 = a1;
        v120 = a3;

        v114 = v133;
        sub_1C6F6E5B4(v126, 0);
        swift_isUniquelyReferenced_nonNull_native();
        v133 = v132;
        sub_1C6FC3264();
        if (__OFADD__(v132[2], (v88 & 1) == 0))
        {
          goto LABEL_116;
        }

        v89 = v88;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE88, &qword_1C75851E8);
        v90 = sub_1C7551A2C();
        v132 = v133;
        if (v90)
        {
          sub_1C6FC3264();
          if ((v89 & 1) != (v91 & 1))
          {
            goto LABEL_117;
          }

          v8 = v87;
        }

        else
        {
          v8 = v87;
        }

        if ((v89 & 1) == 0)
        {
          sub_1C6FCABDC();
        }

        sub_1C739796C(v114);
        v126 = sub_1C719D928;
        a3 = v120;
        continue;
      case 5:
        if (!*(a1 + 16))
        {
          continue;
        }

        v57 = sub_1C6FC3264();
        if ((v58 & 1) == 0)
        {
          continue;
        }

        v59 = *(*(a1 + 56) + 8 * v57);
        v60 = *(v59 + 16);
        if (!v60)
        {
          continue;
        }

        v133 = MEMORY[0x1E69E7CD0];
        sub_1C75504FC();
        v61 = 0;
        while (2)
        {
          if (v60 != v61)
          {
            if (v61 < *(v59 + 16))
            {
              v62 = v61 + 1;
              v63 = sub_1C75504FC();
              sub_1C73978C4(v63);
              v61 = v62;
              continue;
            }

            goto LABEL_110;
          }

          break;
        }

        v92 = v8;
        v8 = a1;
        v121 = a3;

        v115 = v133;
        sub_1C6F6E5B4(v127, 0);
        swift_isUniquelyReferenced_nonNull_native();
        v133 = v132;
        sub_1C6FC3264();
        if (__OFADD__(v132[2], (v93 & 1) == 0))
        {
          goto LABEL_115;
        }

        v94 = v93;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE88, &qword_1C75851E8);
        v95 = sub_1C7551A2C();
        v132 = v133;
        if (v95)
        {
          sub_1C6FC3264();
          if ((v94 & 1) != (v96 & 1))
          {
            goto LABEL_117;
          }

          v8 = v92;
        }

        else
        {
          v8 = v92;
        }

        if ((v94 & 1) == 0)
        {
          sub_1C6FCABDC();
        }

        sub_1C739796C(v115);
        v127 = sub_1C719D928;
        a3 = v121;
        continue;
      case 6:
        if (!*(a1 + 16))
        {
          continue;
        }

        v43 = sub_1C6FC3264();
        if ((v44 & 1) == 0)
        {
          continue;
        }

        v45 = *(*(a1 + 56) + 8 * v43);
        v46 = *(v45 + 16);
        if (!v46)
        {
          continue;
        }

        v133 = MEMORY[0x1E69E7CD0];
        sub_1C75504FC();
        v47 = 0;
        while (2)
        {
          if (v46 != v47)
          {
            if (v47 < *(v45 + 16))
            {
              v48 = v47 + 1;
              v49 = sub_1C75504FC();
              sub_1C73978C4(v49);
              v47 = v48;
              continue;
            }

            goto LABEL_109;
          }

          break;
        }

        v82 = v8;
        v8 = a1;
        v119 = a3;

        v113 = v133;
        sub_1C6F6E5B4(v128, 0);
        swift_isUniquelyReferenced_nonNull_native();
        v133 = v132;
        sub_1C6FC3264();
        if (__OFADD__(v132[2], (v83 & 1) == 0))
        {
          goto LABEL_114;
        }

        v84 = v83;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE88, &qword_1C75851E8);
        v85 = sub_1C7551A2C();
        v132 = v133;
        if (v85)
        {
          sub_1C6FC3264();
          if ((v84 & 1) != (v86 & 1))
          {
            goto LABEL_117;
          }

          v8 = v82;
        }

        else
        {
          v8 = v82;
        }

        if ((v84 & 1) == 0)
        {
          sub_1C6FCABDC();
        }

        sub_1C739796C(v113);
        v128 = sub_1C719D928;
        a3 = v119;
        continue;
      case 7:
        if (!*(a1 + 16))
        {
          continue;
        }

        v73 = sub_1C6FC3264();
        if ((v74 & 1) == 0)
        {
          continue;
        }

        v75 = *(*(a1 + 56) + 8 * v73);
        v76 = *(v75 + 16);
        if (!v76)
        {
          continue;
        }

        v133 = MEMORY[0x1E69E7CD0];
        sub_1C75504FC();
        v77 = 0;
        while (2)
        {
          if (v76 != v77)
          {
            if (v77 < *(v75 + 16))
            {
              v78 = v77 + 1;
              v79 = sub_1C75504FC();
              sub_1C73978C4(v79);
              v77 = v78;
              continue;
            }

LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
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
            goto LABEL_117;
          }

          break;
        }

        v116 = v8;
        v122 = a3;
        v8 = a1;

        v97 = v133;
        sub_1C6F6E5B4(v125, 0);
        swift_isUniquelyReferenced_nonNull_native();
        v133 = v132;
        sub_1C6FC3264();
        if (__OFADD__(v132[2], (v98 & 1) == 0))
        {
          goto LABEL_113;
        }

        v99 = v98;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE88, &qword_1C75851E8);
        v100 = sub_1C7551A2C();
        v132 = v133;
        if (v100)
        {
          sub_1C6FC3264();
          if ((v99 & 1) != (v101 & 1))
          {
            goto LABEL_117;
          }

          v8 = v116;
        }

        else
        {
          v8 = v116;
        }

        if ((v99 & 1) == 0)
        {
          sub_1C6FCABDC();
        }

        v109 = sub_1C75504FC();
        sub_1C739796C(v109);
        if (a5)
        {
          v133 = sub_1C71CD85C(v97);
          sub_1C75504FC();
          sub_1C70401E8();
          a3 = v122;

          v110 = sub_1C7164AD8(v133, 0x7461636F4C5B5551, 0xEC0000005D6E6F69, 0, 0);

          v125 = sub_1C719D928;
        }

        else
        {

          v125 = sub_1C719D928;
          a3 = v122;
        }

        continue;
      default:
        continue;
    }
  }
}

void sub_1C7367CE0()
{
  OUTLINED_FUNCTION_33();
  v185 = v0;
  v3 = v2;
  v180 = v4;
  v175 = v5;
  v7 = v6;
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_2();
  v190 = v10;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_130();
  v187 = v12;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_140_1();
  v191 = v14;
  v15 = OUTLINED_FUNCTION_37_3();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(v15);
  v17 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_0();
  v20 = v19 - v18;
  sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v177 = v22;
  v178 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_0();
  v25 = v24 - v23;
  v179 = v3;
  OUTLINED_FUNCTION_141_1(v3, v3[3]);
  v176 = v25;
  OUTLINED_FUNCTION_119_12();
  v27 = v26;
  sub_1C754F1CC();
  v182 = *(v7 + 16);
  v28 = 0;
  if (!v182)
  {
    v30 = MEMORY[0x1E69E7CC8];
LABEL_57:
    v189 = v28;
    if (sub_1C6FE3758(8, v30) || sub_1C6FE3758(11, v30) || sub_1C6FE3758(9, v30) || sub_1C6FE3758(10, v30))
    {

      v92 = sub_1C6FE3758(11, v30);
      if (v92)
      {
        v1 = v92;
        v93 = *(v92 + 16);
        v191 = v92;
        if (v93)
        {
          if (v180)
          {
            v94 = 0;
            v95 = v92 + 32;
            v96 = MEMORY[0x1E69E7CC0];
            while (v93 != v94)
            {
              if (v94 >= *(v1 + 2))
              {
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
LABEL_212:
                __break(1u);
LABEL_213:
                __break(1u);
                goto LABEL_214;
              }

              v97 = *(v95 + 8 * v94);
              v98 = *(v97 + 16);
              TokenCategoryType = *(v96 + 16);
              v27 = TokenCategoryType + v98;
              if (__OFADD__(TokenCategoryType, v98))
              {
                goto LABEL_195;
              }

              sub_1C75504FC();
              if (!swift_isUniquelyReferenced_nonNull_native() || v27 > *(v96 + 24) >> 1)
              {
                sub_1C6FB1814();
                v96 = v99;
              }

              if (*(v97 + 16))
              {
                if ((*(v96 + 24) >> 1) - *(v96 + 16) < v98)
                {
                  goto LABEL_206;
                }

                swift_arrayInitWithCopy();

                if (v98)
                {
                  v100 = *(v96 + 16);
                  v66 = __OFADD__(v100, v98);
                  v101 = v100 + v98;
                  if (v66)
                  {
                    goto LABEL_210;
                  }

                  *(v96 + 16) = v101;
                }
              }

              else
              {

                if (v98)
                {
                  goto LABEL_196;
                }
              }

              ++v94;
              v1 = v191;
            }

            OUTLINED_FUNCTION_75_14(v96, 0xD000000000000011, 0x80000001C75AC2E0);
            OUTLINED_FUNCTION_312_1();

            v93 = *(v1 + 2);
            if (!v93)
            {
              goto LABEL_90;
            }
          }

          v102 = MEMORY[0x1E69E7CC0];
          v103 = v1 + 8;
          v1 = &dword_1C6F5C000;
          do
          {
            sub_1C75504FC();
            sub_1C706D154();
            v105 = v104;
            sub_1C75504FC();
            v106 = sub_1C754FEEC();
            v107 = sub_1C755117C();
            if (OUTLINED_FUNCTION_128(v107))
            {
              TokenCategoryType = OUTLINED_FUNCTION_41_0();
              *TokenCategoryType = 134217984;
              *(TokenCategoryType + 4) = *(v105 + 16);

              OUTLINED_FUNCTION_139_4(&dword_1C6F5C000, v106, v107, "There are %ld personal event assets", v175);
              OUTLINED_FUNCTION_109();
            }

            else
            {
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB20F8();
              v102 = v110;
            }

            OUTLINED_FUNCTION_51_22();
            if (v109)
            {
              OUTLINED_FUNCTION_15(v108);
              OUTLINED_FUNCTION_81_18();
              v102 = v111;
            }

            *(v102 + 16) = v106;
            *(v102 + 8 * v107 + 32) = v105;
            v103 += 2;
            --v93;
          }

          while (v93);
        }

        else
        {
LABEL_90:
          v102 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v102 = MEMORY[0x1E69E7CC0];
      }

      v112 = sub_1C6FE3758(10, v30);
      if (v112)
      {
        v113 = v112;
        v114 = *(v112 + 16);
        if (v114)
        {
          if (!v180)
          {
            goto LABEL_110;
          }

          OUTLINED_FUNCTION_86_12();
          v116 = MEMORY[0x1E69E7CC0];
          while (v114 != v115)
          {
            if (v115 >= *(v113 + 16))
            {
              goto LABEL_197;
            }

            OUTLINED_FUNCTION_11_63();
            if (v66)
            {
              goto LABEL_198;
            }

            sub_1C75504FC();
            if (!swift_isUniquelyReferenced_nonNull_native() || (OUTLINED_FUNCTION_120_9(), !(v118 ^ v66 | v117)))
            {
              OUTLINED_FUNCTION_90_9();
              sub_1C6FB1814();
              v116 = v119;
            }

            OUTLINED_FUNCTION_87_18();
            if (v120)
            {
              OUTLINED_FUNCTION_22_57();
              if (v118 != v66)
              {
                goto LABEL_207;
              }

              OUTLINED_FUNCTION_28_33(v121);
              swift_arrayInitWithCopy();

              if (v1)
              {
                OUTLINED_FUNCTION_111_11();
                if (v66)
                {
                  goto LABEL_211;
                }

                v116[2] = v122;
              }
            }

            else
            {

              v114 = TokenCategoryType;
              if (v1)
              {
                goto LABEL_199;
              }
            }

            v115 = v191 + 1;
          }

          sub_1C703FCFC();
          OUTLINED_FUNCTION_31_37();
          OUTLINED_FUNCTION_75_14(v114, 0x696C6275505B5551, 0xEF5D746E65764563);
          OUTLINED_FUNCTION_312_1();

          if (*(v113 + 16))
          {
LABEL_110:
            v1 = (v113 + 32);
            v191 = 134217984;
            do
            {
              sub_1C75504FC();
              sub_1C706D154();
              sub_1C75504FC();
              v123 = sub_1C754FEEC();
              v124 = sub_1C755117C();
              if (OUTLINED_FUNCTION_128(v124))
              {
                v125 = OUTLINED_FUNCTION_41_0();
                OUTLINED_FUNCTION_33_35(v125);
                OUTLINED_FUNCTION_139_4(&dword_1C6F5C000, v123, v124, "There are %ld public event assets", v175);
                OUTLINED_FUNCTION_109();
              }

              else
              {
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_24_0();
                sub_1C6FB20F8();
                v102 = v127;
              }

              OUTLINED_FUNCTION_51_22();
              if (v109)
              {
                OUTLINED_FUNCTION_15(v126);
                OUTLINED_FUNCTION_81_18();
                v102 = v128;
              }

              OUTLINED_FUNCTION_30_38();
            }

            while (!v117);
          }
        }
      }

      v129 = sub_1C6FE3758(8, v30);
      if (v129)
      {
        v130 = v129;
        v131 = *(v129 + 16);
        if (v131)
        {
          if (!v180)
          {
            goto LABEL_139;
          }

          OUTLINED_FUNCTION_86_12();
          v133 = MEMORY[0x1E69E7CC0];
          while (v131 != v132)
          {
            if (v132 >= *(v130 + 16))
            {
              goto LABEL_200;
            }

            OUTLINED_FUNCTION_11_63();
            if (v66)
            {
              goto LABEL_201;
            }

            sub_1C75504FC();
            if (!swift_isUniquelyReferenced_nonNull_native() || (OUTLINED_FUNCTION_120_9(), !(v118 ^ v66 | v117)))
            {
              OUTLINED_FUNCTION_90_9();
              sub_1C6FB1814();
              v133 = v134;
            }

            OUTLINED_FUNCTION_87_18();
            if (v135)
            {
              OUTLINED_FUNCTION_22_57();
              if (v118 != v66)
              {
                goto LABEL_208;
              }

              OUTLINED_FUNCTION_28_33(v136);
              swift_arrayInitWithCopy();

              if (v1)
              {
                OUTLINED_FUNCTION_111_11();
                if (v66)
                {
                  goto LABEL_212;
                }

                v133[2] = v137;
              }
            }

            else
            {

              v131 = TokenCategoryType;
              if (v1)
              {
                goto LABEL_202;
              }
            }

            v132 = v191 + 1;
          }

          sub_1C703FCFC();
          OUTLINED_FUNCTION_31_37();
          OUTLINED_FUNCTION_75_14(v131, 0xD000000000000013, 0x80000001C75AC2C0);
          OUTLINED_FUNCTION_312_1();

          if (*(v130 + 16))
          {
LABEL_139:
            v1 = (v130 + 32);
            v191 = 134217984;
            do
            {
              sub_1C75504FC();
              sub_1C706D154();
              sub_1C75504FC();
              v138 = sub_1C754FEEC();
              v139 = sub_1C755117C();
              if (OUTLINED_FUNCTION_128(v139))
              {
                v140 = OUTLINED_FUNCTION_41_0();
                OUTLINED_FUNCTION_33_35(v140);
                OUTLINED_FUNCTION_139_4(&dword_1C6F5C000, v138, v139, "There are %ld generic location assets", v175);
                OUTLINED_FUNCTION_109();
              }

              else
              {
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_24_0();
                sub_1C6FB20F8();
                v102 = v142;
              }

              OUTLINED_FUNCTION_51_22();
              if (v109)
              {
                OUTLINED_FUNCTION_15(v141);
                OUTLINED_FUNCTION_81_18();
                v102 = v143;
              }

              OUTLINED_FUNCTION_30_38();
            }

            while (!v117);
          }
        }
      }

      v144 = sub_1C6FE3758(9, v30);
      if (v144)
      {
        v145 = v144;
        v146 = *(v144 + 16);
        if (v146)
        {
          if (!v180)
          {
            goto LABEL_176;
          }

          OUTLINED_FUNCTION_86_12();
          v148 = MEMORY[0x1E69E7CC0];
          while (v146 != v147)
          {
            if (v147 >= *(v145 + 16))
            {
              goto LABEL_203;
            }

            OUTLINED_FUNCTION_11_63();
            if (v66)
            {
              goto LABEL_204;
            }

            sub_1C75504FC();
            if (!swift_isUniquelyReferenced_nonNull_native() || (OUTLINED_FUNCTION_120_9(), !(v118 ^ v66 | v117)))
            {
              OUTLINED_FUNCTION_90_9();
              sub_1C6FB1814();
              v148 = v149;
            }

            OUTLINED_FUNCTION_87_18();
            if (v150)
            {
              OUTLINED_FUNCTION_22_57();
              if (v118 != v66)
              {
                goto LABEL_209;
              }

              OUTLINED_FUNCTION_28_33(v151);
              swift_arrayInitWithCopy();

              if (v1)
              {
                OUTLINED_FUNCTION_111_11();
                if (v66)
                {
                  goto LABEL_213;
                }

                v148[2] = v152;
              }
            }

            else
            {

              v146 = TokenCategoryType;
              if (v1)
              {
                goto LABEL_205;
              }
            }

            v147 = v191 + 1;
          }

          sub_1C703FCFC();
          OUTLINED_FUNCTION_31_37();
          OUTLINED_FUNCTION_75_14(v146, 0x5D746168575B5551, 0xE800000000000000);
          OUTLINED_FUNCTION_312_1();

          if (*(v145 + 16))
          {
LABEL_176:
            do
            {
              sub_1C75504FC();
              sub_1C706D154();
              sub_1C75504FC();
              v153 = sub_1C754FEEC();
              v154 = sub_1C755117C();
              if (OUTLINED_FUNCTION_128(v154))
              {
                v155 = OUTLINED_FUNCTION_41_0();
                OUTLINED_FUNCTION_33_35(v155);
                OUTLINED_FUNCTION_139_4(&dword_1C6F5C000, v153, v154, "There are %ld what assets", v175);
                OUTLINED_FUNCTION_109();
              }

              else
              {
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_24_0();
                sub_1C6FB20F8();
                v102 = v157;
              }

              OUTLINED_FUNCTION_51_22();
              if (v109)
              {
                OUTLINED_FUNCTION_15(v156);
                OUTLINED_FUNCTION_81_18();
                v102 = v158;
              }

              OUTLINED_FUNCTION_30_38();
            }

            while (!v117);
          }
        }
      }

      if (*(v102 + 16))
      {
        goto LABEL_193;
      }

      v159 = sub_1C75504FC();
      sub_1C6FDE0B8(v159);
      v161 = v160;

      if (v161)
      {
        v162 = v161;
      }

      else
      {
        v162 = MEMORY[0x1E69E7CD0];
      }

      sub_1C75504FC();
      v163 = sub_1C754FEEC();
      v164 = sub_1C755117C();
      if (OUTLINED_FUNCTION_23_0(v164))
      {
        goto LABEL_183;
      }
    }

    else
    {
LABEL_187:
      v170 = sub_1C75504FC();
      sub_1C6FDE0B8(v170);
      v172 = v171;

      if (v172)
      {
        v162 = v172;
      }

      else
      {
        v162 = MEMORY[0x1E69E7CD0];
      }

      sub_1C75504FC();
      v163 = sub_1C754FEEC();
      v173 = sub_1C755117C();
      if (OUTLINED_FUNCTION_23_0(v173))
      {
LABEL_183:
        v165 = OUTLINED_FUNCTION_41_0();
        OUTLINED_FUNCTION_29_34(v165, 3.852e-34);
        OUTLINED_FUNCTION_46_0();
        OUTLINED_FUNCTION_282_1(v166, v167, v168, v169);
        OUTLINED_FUNCTION_37();

LABEL_192:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150E0, &qword_1C755C2E8);
        v174 = swift_allocObject();
        *(v174 + 16) = xmmword_1C755BAB0;
        *(v174 + 32) = v162;
LABEL_193:

        OUTLINED_FUNCTION_58_16(v179);
        sub_1C754F1AC();
        (*(v177 + 8))(v176, v178);
        sub_1C6F6E5B4(v189, 0);
        OUTLINED_FUNCTION_25_0();
        return;
      }
    }

    goto LABEL_192;
  }

  v29 = 0;
  v181 = v7 + 32;
  v30 = MEMORY[0x1E69E7CC8];
  v186 = TokenCategoryType;
  while (1)
  {
    memcpy(v195, (v181 + 120 * v29), 0x78uLL);
    v189 = v195[13];
    if (!v195[13])
    {
      sub_1C6FCA6E4(v195, v194);
      sub_1C6FCA6E4(v195, v194);
      v27 = v185;
      v77 = sub_1C754FEEC();
      v78 = sub_1C755117C();
      sub_1C6FDD548(v195);
      if (os_log_type_enabled(v77, v78))
      {
        v184 = v29;
        v79 = OUTLINED_FUNCTION_41_0();
        v1 = OUTLINED_FUNCTION_20_1();
        v193 = v1;
        *v79 = 136642819;
        v80 = memcpy(v192, v195, sizeof(v192));
        QueryToken.description.getter(v80, v81, v82, v83, v84, v85, v86);
        v88 = v87;
        v89 = v28;
        v91 = v90;
        memcpy(v194, v192, sizeof(v194));
        sub_1C6FDD548(v194);
        v27 = sub_1C6F765A4(v88, v91, &v193);
        v28 = v89;
        TokenCategoryType = v186;

        *(v79 + 4) = v27;
        _os_log_impl(&dword_1C6F5C000, v77, v78, "Ignore the query token because retrievedAssetUUIDs is nil = %{sensitive}s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v1);
        OUTLINED_FUNCTION_37();
        v29 = v184;
        OUTLINED_FUNCTION_109();
      }

      else
      {

        sub_1C6FDD548(v195);
      }

      goto LABEL_54;
    }

    v1 = v195[10];
    v188 = *(v195[10] + 16);
    if (v188)
    {
      break;
    }

LABEL_54:
    if (++v29 == v182)
    {
      goto LABEL_57;
    }
  }

  v183 = v29;
  OUTLINED_FUNCTION_85_13();
  sub_1C75504FC();
  sub_1C75504FC();
  v31 = 0;
  while (1)
  {
    if (v31 >= *(v1 + 2))
    {
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    OUTLINED_FUNCTION_4_86();
    sub_1C71AC0CC(v32, v20, v33);
    OUTLINED_FUNCTION_2_102();
    sub_1C71AC0CC(v20, v191, v34);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_43_2();
    static QueryTokenCategoryType.~= infix(_:_:)();
    v27 = v35;
    OUTLINED_FUNCTION_0_151();
    sub_1C736F5E4(v187, v36);
    if ((v27 & 1) == 0)
    {
      if (qword_1EDD0E0C8 != -1)
      {
        OUTLINED_FUNCTION_39_36();
        swift_once();
      }

      __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E0D0);
      static QueryTokenCategoryType.~= infix(_:_:)();
      if ((v37 & 1) == 0)
      {
        if (qword_1EDD0E0A0 != -1)
        {
          OUTLINED_FUNCTION_38();
          swift_once();
        }

        __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E0A8);
        static QueryTokenCategoryType.~= infix(_:_:)();
        if ((v38 & 1) == 0)
        {
          if (qword_1EC213CC0 != -1)
          {
            OUTLINED_FUNCTION_37_32();
            swift_once();
          }

          __swift_project_value_buffer(TokenCategoryType, &qword_1EC216260);
          static QueryTokenCategoryType.~= infix(_:_:)();
          if ((v39 & 1) == 0)
          {
            OUTLINED_FUNCTION_0_151();
            sub_1C736F5E4(v191, v43);
            OUTLINED_FUNCTION_1_113();
            sub_1C736F5E4(v20, v44);
            goto LABEL_49;
          }
        }
      }
    }

    OUTLINED_FUNCTION_2_102();
    sub_1C71AC0CC(v20, v190, v40);
    v41 = 9;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_0_151();
        sub_1C736F5E4(v190, v47);
        v41 = 2;
        break;
      case 2u:
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90);
        sub_1C6FB5FC8(v190 + *(v48 + 48), &qword_1EC218C50, &qword_1C75606A0);
        v49 = OUTLINED_FUNCTION_43_2();
        sub_1C6FB5FC8(v49, v50, &qword_1C75606A0);
        v41 = 3;
        break;
      case 3u:
        OUTLINED_FUNCTION_0_151();
        sub_1C736F5E4(v190, v46);
        v41 = 4;
        break;
      case 4u:
        sub_1C754F09C();
        OUTLINED_FUNCTION_3();
        (*(v52 + 8))(v190);
        v41 = 5;
        break;
      case 5u:
        sub_1C754F5FC();
        OUTLINED_FUNCTION_3();
        (*(v54 + 8))(v190);
        v41 = 6;
        break;
      case 6u:
        OUTLINED_FUNCTION_0_151();
        sub_1C736F5E4(v190, v51);
        v41 = 7;
        break;
      case 7u:
        sub_1C736F5E4(v190, type metadata accessor for GroundedGenericLocation);
        v41 = 8;
        break;
      case 8u:
        sub_1C6FB5FC8(v190, &qword_1EC216328, &qword_1C7575BE0);
        v41 = 10;
        break;
      case 9u:
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730);
        sub_1C736F5E4(v190 + *(v55 + 48), type metadata accessor for PersonalEventBackingItem);
        sub_1C6FB5FC8(v190, &qword_1EC216320, &unk_1C7563B80);
        v41 = 11;
        break;
      case 0xAu:
        OUTLINED_FUNCTION_0_151();
        sub_1C736F5E4(v190, v45);
        v41 = 15;
        break;
      case 0xBu:
        v41 = 16;
        break;
      case 0xCu:
        OUTLINED_FUNCTION_0_151();
        sub_1C736F5E4(v190, v53);
        v41 = 17;
        break;
      case 0xDu:
        v41 = 19;
        break;
      case 0xEu:
        break;
      case 0xFu:
        v41 = 12;
        break;
      case 0x10u:
        v41 = 13;
        break;
      case 0x11u:
        v41 = 14;
        break;
      case 0x12u:
        v41 = 18;
        break;
      default:
        OUTLINED_FUNCTION_0_151();
        sub_1C736F5E4(v190, v42);
        v41 = 1;
        break;
    }

    sub_1C6F6E5B4(v28, 0);
    swift_isUniquelyReferenced_nonNull_native();
    v194[0] = v30;
    sub_1C6FC3264();
    OUTLINED_FUNCTION_13_2();
    if (__OFADD__(v58, v59))
    {
      goto LABEL_185;
    }

    v60 = v56;
    v61 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE78, &qword_1C75851B8);
    v62 = sub_1C7551A2C();
    v30 = v194[0];
    if (v62)
    {
      break;
    }

LABEL_41:
    if ((v61 & 1) == 0)
    {
      OUTLINED_FUNCTION_1_3(&v30[v60 >> 6]);
      *(v30[6] + v60) = v41;
      *(v30[7] + 8 * v60) = MEMORY[0x1E69E7CC0];
      v65 = v30[2];
      v66 = __OFADD__(v65, 1);
      v67 = v65 + 1;
      if (v66)
      {
        goto LABEL_186;
      }

      v30[2] = v67;
    }

    v68 = v30[7];
    v27 = *(v68 + 8 * v60);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v68 + 8 * v60) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB226C();
      v27 = v75;
      *(v68 + 8 * v60) = v75;
    }

    v71 = *(v27 + 16);
    v70 = *(v27 + 24);
    if (v71 >= v70 >> 1)
    {
      OUTLINED_FUNCTION_15(v70);
      OUTLINED_FUNCTION_90_9();
      sub_1C6FB226C();
      *(v68 + 8 * v60) = v76;
    }

    OUTLINED_FUNCTION_0_151();
    sub_1C736F5E4(v191, v72);
    OUTLINED_FUNCTION_1_113();
    sub_1C736F5E4(v20, v73);
    v74 = *(v68 + 8 * v60);
    *(v74 + 16) = v71 + 1;
    *(v74 + 8 * v71 + 32) = v189;
    sub_1C75504FC();
    v28 = sub_1C6FC0A88;
    TokenCategoryType = v186;
LABEL_49:
    if (v188 == ++v31)
    {

      v29 = v183;
      goto LABEL_54;
    }
  }

  v63 = sub_1C6FC3264();
  if ((v61 & 1) == (v64 & 1))
  {
    v60 = v63;
    goto LABEL_41;
  }

LABEL_214:
  sub_1C7551E4C();
  __break(1u);
}

uint64_t sub_1C7368FDC()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 848) = v0;
  *(v1 + 840) = v4;
  *(v1 + 832) = v5;
  *(v1 + 824) = v6;
  v7 = sub_1C754F38C();
  *(v1 + 856) = v7;
  OUTLINED_FUNCTION_18(v7);
  *(v1 + 864) = v8;
  *(v1 + 872) = OUTLINED_FUNCTION_77();
  *(v1 + 880) = *v3;
  v9 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7369098()
{
  v73 = v0;
  v2 = v0[110];
  v3 = v0[105];
  v4 = OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_141_1(v4, v5);
  OUTLINED_FUNCTION_134_10("QueryGenerator.applyExactSubstringLocationMatchingResult", 56);
  OUTLINED_FUNCTION_58_16(v3);
  sub_1C754F15C();
  if (*(v2 + 16) || *(v0[111] + 16))
  {
    if (qword_1EDD0E038 != -1)
    {
      goto LABEL_52;
    }

    while (1)
    {
      v6 = v0[103];
      TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
      v8 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E040);
      v9 = swift_task_alloc();
      *(v9 + 16) = v8;
      sub_1C75504FC();
      v10 = 0;
      v11 = sub_1C706CC1C(sub_1C70A97B0, v9, v6);
      v0[112] = v11;

      v12 = MEMORY[0x1E69E7CC8];
      v0[98] = MEMORY[0x1E69E7CC8];
      v67 = *(v11 + 2);
      if (!v67)
      {
LABEL_43:
        v0[114] = v12;
        v0[113] = v12;
        v56 = swift_task_alloc();
        v0[115] = v56;
        *v56 = v0;
        v56[1] = sub_1C7369968;

        return sub_1C7364CEC();
      }

      v13 = 0;
      v14 = v0 + 97;
      v66 = v11 + 32;
      v68 = MEMORY[0x1E69E7CC8];
      v65 = v11;
      while (v13 < *(v11 + 2))
      {
        memcpy(v0 + 2, &v66[120 * v13], 0x78uLL);
        v15 = v0[14];
        v0[97] = v15;
        if (v15)
        {
          v9 = v0[110];
          *(swift_task_alloc() + 16) = v9;
          sub_1C6FCA6E4((v0 + 2), (v0 + 77));
          sub_1C70A96BC(v14, (v0 + 102));
          v16 = OUTLINED_FUNCTION_117_8();
          v19 = sub_1C736F0A8(v16, v17, v18);
          sub_1C6FB5FC8(v14, &qword_1EC216EC0, &qword_1C7568020);
        }

        else
        {
          OUTLINED_FUNCTION_142_3();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
          v19 = sub_1C75504DC();
        }

        v69 = v0[4];
        v70 = v0[5];
        if (*(v19 + 16))
        {
          v72[0] = MEMORY[0x1E69E7CD0];
          OUTLINED_FUNCTION_45_31();
          sub_1C75504FC();
          v20 = 0;
          if (v1)
          {
            while (1)
            {
LABEL_15:
              v22 = OUTLINED_FUNCTION_63_20();
              sub_1C739796C(v22);
            }
          }

          while (1)
          {
            v21 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              __break(1u);
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            if (v21 >= v9)
            {
              break;
            }

            v1 = *(v19 + 64 + 8 * v21);
            ++v20;
            if (v1)
            {
              goto LABEL_15;
            }
          }

          OUTLINED_FUNCTION_132_8();
          v1 = v72[0];
          sub_1C75504FC();
          sub_1C7069A44();
          v24 = v23;

          if ((sub_1C7369D94(v24, v9, v25, v26, v27, v28, v29, v30) & 1) == 0)
          {

            v14 = v0 + 97;
            goto LABEL_20;
          }

          sub_1C6FCA6E4((v0 + 2), (v0 + 62));

          v31 = sub_1C754FEEC();
          v32 = sub_1C75511BC();
          sub_1C6FDD548((v0 + 2));
          if (!OUTLINED_FUNCTION_200())
          {
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_23_1();
          v64 = v10;
          v33 = OUTLINED_FUNCTION_31_0();
          v72[0] = v33;
          *v9 = 136380931;
          v1 = v70;
          sub_1C75504FC();
          v34 = sub_1C6F765A4(v69, v70, v72);

          *(v9 + 4) = v34;
          *(v9 + 12) = 2048;
          v35 = *(v24 + 16);

          *(v9 + 14) = v35;

          OUTLINED_FUNCTION_140_7(&dword_1C6F5C000, v31, v32, "Applied exact location matching to query token %{private}s with (%ld) filtered assets");
          __swift_destroy_boxed_opaque_existential_1(v33);
          v10 = v64;
        }

        else
        {
LABEL_20:
          if (*v14)
          {
            v9 = v0[111];
            *(swift_task_alloc() + 16) = v9;
            sub_1C70A96BC(v14, (v0 + 101));
            v36 = OUTLINED_FUNCTION_117_8();
            v39 = sub_1C736F0A8(v36, v37, v38);
            sub_1C6FB5FC8(v14, &qword_1EC216EC0, &qword_1C7568020);
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
            v39 = sub_1C75504DC();
          }

          if (!*(v39 + 16))
          {

LABEL_37:

            sub_1C6FCA6E4((v0 + 2), (v0 + 32));
            v54 = sub_1C754FEEC();
            v55 = sub_1C75511BC();
            sub_1C6FDD548((v0 + 2));
            if (OUTLINED_FUNCTION_200())
            {
              OUTLINED_FUNCTION_41_0();
              v72[0] = OUTLINED_FUNCTION_31_0();
              *v9 = 136380675;
              sub_1C75504FC();
              sub_1C6FDD548((v0 + 2));
              v1 = sub_1C6F765A4(v69, v70, v72);

              *(v9 + 4) = v1;
              OUTLINED_FUNCTION_282_1(&dword_1C6F5C000, v54, v55, "No location assets to filter for location query token %{private}s. Using all available assets.");
              OUTLINED_FUNCTION_33_26();
              OUTLINED_FUNCTION_109();
              OUTLINED_FUNCTION_37();
            }

            else
            {

              sub_1C6FDD548((v0 + 2));
            }

            v11 = v65;
            goto LABEL_41;
          }

          v19 = sub_1C7210DC8(v39, v19);
          v72[0] = MEMORY[0x1E69E7CD0];
          OUTLINED_FUNCTION_45_31();
          sub_1C75504FC();
          v40 = 0;
          if (v1)
          {
            while (1)
            {
LABEL_28:
              v42 = OUTLINED_FUNCTION_63_20();
              sub_1C739796C(v42);
            }
          }

          while (1)
          {
            v41 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_50;
            }

            if (v41 >= v9)
            {
              break;
            }

            v1 = *(v19 + 64 + 8 * v41);
            ++v40;
            if (v1)
            {
              goto LABEL_28;
            }
          }

          OUTLINED_FUNCTION_132_8();
          sub_1C75504FC();
          OUTLINED_FUNCTION_145_2();
          sub_1C7069A44();
          v44 = v43;

          if ((sub_1C7369D94(v44, v9, v45, v46, v47, v48, v49, v50) & 1) == 0)
          {

            v14 = v0 + 97;
            goto LABEL_37;
          }

          sub_1C6FCA6E4((v0 + 2), (v0 + 47));

          v31 = sub_1C754FEEC();
          v51 = sub_1C75511BC();
          sub_1C6FDD548((v0 + 2));
          if (!OUTLINED_FUNCTION_200())
          {
LABEL_33:

            goto LABEL_34;
          }

          OUTLINED_FUNCTION_23_1();
          v72[0] = OUTLINED_FUNCTION_31_0();
          *v9 = 136380931;
          sub_1C75504FC();
          v52 = sub_1C6F765A4(v69, v70, v72);

          *(v9 + 4) = v52;
          *(v9 + 12) = 2048;
          v1 = *(v44 + 16);

          *(v9 + 14) = v1;

          OUTLINED_FUNCTION_140_7(&dword_1C6F5C000, v31, v51, "Applied partially location matching to query token %{private}s with (%ld) filtered assets");
          OUTLINED_FUNCTION_33_26();
        }

        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_37();
LABEL_34:

        v11 = v65;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v72[0] = v68;
        sub_1C6FC7AB4(v19, (v0 + 2), isUniquelyReferenced_nonNull_native);
        sub_1C6FDD548((v0 + 2));
        v68 = v72[0];
        v14 = v0 + 97;
LABEL_41:
        if (++v13 == v67)
        {
          v12 = v68;
          v0[98] = v68;
          goto LABEL_43;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      OUTLINED_FUNCTION_3_28(&qword_1EDD0E038);
    }
  }

  v58 = v0[105];
  __swift_destroy_boxed_opaque_existential_1(v0 + 92);
  OUTLINED_FUNCTION_70(v58, v3[3]);
  v71 = v0[104];
  v59 = v0[103];
  v60 = v0[109];
  v61 = v0[108];
  v62 = v0[107];
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C754F1AC();
  (*(v61 + 8))(v60, v62);

  v63 = v0[1];

  return v63(v59, v71);
}

uint64_t sub_1C7369968()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 928) = v5;
  *(v3 + 936) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C7369A74()
{
  v27 = v0;
  if (*(v0[113] + 16))
  {
    v1 = v0[112];
    v2 = sub_1C75504FC();
    v3 = sub_1C7360200(v2, v1, (v0 + 98));

    swift_getKeyPath();
    v4 = v3[8];
    v26[0] = MEMORY[0x1E69E7CC0];
    v5 = -1;
    v6 = -1 << *(v3 + 32);
    if (-v6 < 64)
    {
      v5 = ~(-1 << -v6);
    }

    v7 = v5 & v4;
    v8 = (63 - v6) >> 6;
    sub_1C75504FC();
    v9 = 0;
    if (v7)
    {
      while (1)
      {
        v10 = v9;
LABEL_10:
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v0[100] = *(v3[7] + ((v10 << 9) | (8 * v11)));
        sub_1C75504FC();
        OUTLINED_FUNCTION_15_1();
        swift_getAtKeyPath();

        v1 = v26;
        sub_1C6FD312C(v0[99], v12, v13, v14, v15, v16, v17, v18, v25, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6]);
        if (!v7)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = v3[v10 + 8];
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_10;
      }
    }

    sub_1C7069D48(v26[0]);
    OUTLINED_FUNCTION_24_2();

    if (v1)
    {
      sub_1C75504FC();
      sub_1C7069A44();

      __swift_destroy_boxed_opaque_existential_1(v0 + 92);
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1(v0 + 92);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 92);
  }

  sub_1C75504FC();
LABEL_17:
  v19 = v0[105];

  OUTLINED_FUNCTION_58_16(v19);
  v20 = v0[109];
  v21 = v0[108];
  v22 = v0[107];
  OUTLINED_FUNCTION_75();
  sub_1C754F1AC();
  (*(v21 + 8))(v20, v22);

  v23 = OUTLINED_FUNCTION_145_2();

  v24(v23);
}

uint64_t sub_1C7369CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10 + 840);
  __swift_destroy_boxed_opaque_existential_1((v10 + 736));

  OUTLINED_FUNCTION_38_6(v11);
  v12 = OUTLINED_FUNCTION_39_1();
  v13(v12);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1C7369D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 16) < 3uLL)
  {
    sub_1C75504FC();
    v9 = sub_1C754FEEC();
    v10 = sub_1C75511BC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = *(a1 + 16);

      _os_log_impl(&dword_1C6F5C000, v9, v10, "Insufficient overlapping assets (%ld) for exact substring location matching.", v11, 0xCu);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  sub_1C706E4B8(&unk_1F469E788, a2, a3, a4, a5, a6, a7, a8, v40, SWORD2(v40), SBYTE6(v40), SHIBYTE(v40), v41, v43, v45, v47, v49, v50, v52[0], v52[1], v52[2]);
  sub_1C74C4664();
  sub_1C71CDC88(v12);
  static StoryGenerationUtilities.queryTokens(ofCategoryTypeStrings:in:)();
  v14 = v13;

  v16 = *(v14 + 16);
  if (!v16)
  {
LABEL_25:

    return 1;
  }

  v17 = 0;
  v51 = v14 + 32;
  v18 = *(v14 + 16);
  v46 = v18;
  v48 = v14;
  while (1)
  {
    if (v17 >= v18)
    {
LABEL_35:
      __break(1u);
      return result;
    }

    result = memcpy(__dst, (v51 + 120 * v17), 0x78uLL);
    v19 = __dst[13];
    if (__dst[13])
    {
      break;
    }

LABEL_23:
    if (++v17 == v16)
    {
      goto LABEL_25;
    }

    v18 = *(v14 + 16);
  }

  v21 = __dst[2];
  v20 = __dst[3];
  if (*(a1 + 16))
  {
    v42 = __dst[2];
    v44 = __dst[3];
    v22 = *(__dst[13] + 16);
    sub_1C6FCA6E4(__dst, v52);
    v23 = v19 + 32;
    result = sub_1C75504FC();
    v24 = 0;
    do
    {
LABEL_10:
      if (v24 == v22)
      {

        v21 = v42;
        v20 = v44;
        goto LABEL_29;
      }

      v25 = v24;
      if (v24 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      ++v24;
    }

    while (!*(a1 + 16));
    v26 = (v23 + 16 * v25);
    v28 = *v26;
    v27 = v26[1];
    sub_1C7551F3C();
    sub_1C75504FC();
    sub_1C75505AC();
    v29 = sub_1C7551FAC();
    v30 = ~(-1 << *(a1 + 32));
    do
    {
      v31 = v29 & v30;
      if (((*(a1 + 56 + (((v29 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v30)) & 1) == 0)
      {

        v23 = v19 + 32;
        goto LABEL_10;
      }

      v32 = (*(a1 + 48) + 16 * v31);
      if (*v32 == v28 && v32[1] == v27)
      {
        break;
      }

      v34 = sub_1C7551DBC();
      v29 = v31 + 1;
    }

    while ((v34 & 1) == 0);

    result = sub_1C6FDD548(__dst);
    v16 = v46;
    v14 = v48;
    goto LABEL_23;
  }

  sub_1C6FCA6E4(__dst, v52);

LABEL_29:
  sub_1C6FCA6E4(__dst, v52);
  v35 = sub_1C754FEEC();
  v36 = sub_1C75511BC();
  sub_1C6FDD548(__dst);
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v52[0] = v38;
    *v37 = 136642819;
    sub_1C75504FC();
    sub_1C6FDD548(__dst);
    v39 = sub_1C6F765A4(v21, v20, v52);

    *(v37 + 4) = v39;
    _os_log_impl(&dword_1C6F5C000, v35, v36, "No overlapping assets for token %{sensitive}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1CCA5F8E0](v38, -1, -1);
    MEMORY[0x1CCA5F8E0](v37, -1, -1);
  }

  else
  {

    sub_1C6FDD548(__dst);
  }

  return 0;
}

void sub_1C736A17C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  if (!sub_1C7366788(v2))
  {
    v15 = sub_1C754FEEC();
    v16 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v16))
    {
      v17 = OUTLINED_FUNCTION_127();
      *v17 = 0;
      OUTLINED_FUNCTION_57_5();
      v22 = v17;
      v23 = 2;
LABEL_13:
      _os_log_impl(v18, v19, v20, v21, v22, v23);
      OUTLINED_FUNCTION_109();
    }

LABEL_14:

    sub_1C75504FC();
    goto LABEL_15;
  }

  if (qword_1EDD0E038 != -1)
  {
    OUTLINED_FUNCTION_3_28(&qword_1EDD0E038);
  }

  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  v4 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E040);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C75504FC();
  OUTLINED_FUNCTION_75();
  v8 = sub_1C706CC1C(v5, v6, v7);
  sub_1C706D154();
  v10 = sub_1C736A5E0(v8, v9);

  if (!sub_1C736A804())
  {
    sub_1C75504FC();
    sub_1C7069A44();
    v25 = v24;
    if (*(v24 + 16) >= 0xDuLL)
    {
      v28 = sub_1C736A8E8(v24, MEMORY[0x1E69E7CC0], &unk_1F46A89A0);
      v29 = sub_1C6FB6304();
      v30 = objc_opt_self();
      if (v29 >= [v30 minimumNumberOfLongTrips])
      {
        v31 = sub_1C7366788(v28);

        if (v31)
        {

          v32 = sub_1C72B8CBC(v31, v25);

          sub_1C75504FC();

          v33 = sub_1C754FEEC();
          v34 = sub_1C755117C();
          if (OUTLINED_FUNCTION_128(v34))
          {
            v35 = OUTLINED_FUNCTION_20_1();
            OUTLINED_FUNCTION_130_6(v35, 3.8522e-34);
            *(v35 + 14) = sub_1C6FB6304();

            *(v35 + 22) = v29;
            *(v35 + 24) = *(v32 + 16);

            OUTLINED_FUNCTION_57_5();
            _os_log_impl(v36, v37, v38, v39, v35, 0x20u);
            OUTLINED_FUNCTION_37();
          }

          else
          {
          }

          goto LABEL_15;
        }
      }

      else
      {
      }

      sub_1C75504FC();

      sub_1C75504FC();
      v40 = sub_1C754FEEC();
      v41 = sub_1C755117C();
      if (OUTLINED_FUNCTION_23_0(v41))
      {
        v42 = swift_slowAlloc();
        OUTLINED_FUNCTION_130_6(v42, 3.8524e-34);
        *(v42 + 14) = [v30 minimumNumberOfLongTrips];
        *(v42 + 22) = v29;
        *(v42 + 24) = *(v25 + 16);

        *(v42 + 32) = v29;
        *(v42 + 34) = *(v1 + 16);

        *(v42 + 42) = v29;
        v43 = *(v10 + 16);

        *(v42 + 44) = v43;

        OUTLINED_FUNCTION_46_0();
        _os_log_impl(v44, v45, v46, v47, v42, 0x34u);
        OUTLINED_FUNCTION_109();
      }

      else
      {

        OUTLINED_FUNCTION_129_0();
        swift_bridgeObjectRelease_n();
      }

      goto LABEL_15;
    }

    v15 = sub_1C754FEEC();
    v26 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v26))
    {
      v27 = OUTLINED_FUNCTION_41_0();
      *v27 = 134217984;
      *(v27 + 4) = 13;
      OUTLINED_FUNCTION_57_5();
      v22 = v27;
      v23 = 12;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v11 = sub_1C754FEEC();
  v12 = sub_1C755117C();
  if (OUTLINED_FUNCTION_7_0(v12))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_24_7(&dword_1C6F5C000, v13, v14, "No query tokens for retrieval, immediately return all trip assets");
    OUTLINED_FUNCTION_109();
  }

LABEL_15:
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C736A5E0(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7CD0];
  v16 = MEMORY[0x1E69E7CD0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 136);
    do
    {
      v7 = *v5;
      v5 += 15;
      v6 = v7;
      if (v7)
      {
        sub_1C75504FC();
        sub_1C75504FC();
        v8 = sub_1C72B8CBC(v6, a2);
        if (*(v8 + 16) >= 0xDuLL)
        {

          sub_1C739796C(v8);
        }

        else
        {

          sub_1C73978C4(v6);
        }
      }

      --v4;
    }

    while (v4);
    v3 = v16;
  }

  sub_1C75504FC();
  sub_1C75504FC();
  v9 = sub_1C754FEEC();
  v10 = sub_1C75511BC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = *(a2 + 16);

    *(v11 + 12) = 2048;
    *(v11 + 14) = *(v3 + 16);

    _os_log_impl(&dword_1C6F5C000, v9, v10, "There are %ld trip assets and %ld consolidated trip location assets", v11, 0x16u);
    MEMORY[0x1CCA5F8E0](v11, -1, -1);
  }

  else
  {
  }

  if (*(v3 + 16))
  {
    return v3;
  }

  v12 = sub_1C754FEEC();
  v13 = sub_1C75511BC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C6F5C000, v12, v13, "There are no location query tokens, returning all the trip assets", v14, 2u);
    MEMORY[0x1CCA5F8E0](v14, -1, -1);
  }

  sub_1C75504FC();
  return a2;
}

uint64_t sub_1C736A8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v151 = MEMORY[0x1E69E7CC0];
    sub_1C716DDD4(0, v7, 0);
    v8 = v151;
    v10 = (a3 + 32);
    v11 = *(v151 + 16);
    do
    {
      v13 = *v10++;
      v12 = v13;
      v151 = v8;
      v14 = v8[3];
      if (v11 >= v14 >> 1)
      {
        v15 = OUTLINED_FUNCTION_15(v14);
        sub_1C716DDD4(v15, v11 + 1, 1);
        v8 = v151;
      }

      v8[2] = v11 + 1;
      *(v8 + v11++ + 16) = v12;
      --v7;
    }

    while (v7);
    v4 = v3;
  }

  v16 = v4 + *(type metadata accessor for QueryGenerator(0) + 24);
  v17 = *(v16 + 8);
  v18 = *(v16 + 16);
  v151 = *v16;
  v152 = v17;
  v153 = v18;
  v19 = v151;

  static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(a1, &v151);
  v20 = v151;

  sub_1C706D87C();
  v22 = v21;
  if (!*(v21 + 16))
  {

    v76 = sub_1C754FEEC();
    v77 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v77))
    {
      v78 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v78);
      OUTLINED_FUNCTION_17();
      _os_log_impl(v79, v80, v81, v82, v83, 2u);
      OUTLINED_FUNCTION_23_3();
    }

    return MEMORY[0x1E69E7CC0];
  }

  v23 = *(v16 + 8);
  v143 = v16;
  v24 = *v16;

  v25 = [v24 librarySpecificFetchOptions];
  [v25 setSharingFilter_];

  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C755BAA0;
  v27 = MEMORY[0x1E69E6158];
  *(v26 + 56) = MEMORY[0x1E69E6158];
  v28 = sub_1C6F6D524();
  *(v26 + 32) = 0x73746E656D6F6DLL;
  *(v26 + 40) = 0xE700000000000000;
  *(v26 + 96) = v27;
  *(v26 + 104) = v28;
  v146 = v28;
  *(v26 + 64) = v28;
  *(v26 + 72) = 1684632949;
  *(v26 + 80) = 0xE400000000000000;
  v29 = OUTLINED_FUNCTION_43_2();
  *(v26 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  OUTLINED_FUNCTION_40_2();
  OUTLINED_FUNCTION_99_3();
  *(v26 + 144) = sub_1C705575C(v31, v32, v33);
  *(v26 + 112) = v22;
  sub_1C75504FC();
  v34 = sub_1C755112C();
  [v25 setInternalPredicate_];

  v35 = objc_opt_self();
  v36 = [v35 fetchHighlightsWithOptions_];
  v37 = [v36 fetchedObjectIDs];

  if (!v37)
  {
    goto LABEL_38;
  }

  sub_1C6F65BE8(0, &qword_1EDD0FAB0, 0x1E695D630);
  v38 = sub_1C7550B5C();

  if (!sub_1C6FB6304())
  {

LABEL_38:

    sub_1C75504FC();
    v105 = sub_1C754FEEC();
    v106 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v106))
    {
      v107 = OUTLINED_FUNCTION_41_0();
      *v107 = 134217984;
      v108 = *(v22 + 16);

      *(v107 + 4) = v108;

      OUTLINED_FUNCTION_17();
      _os_log_impl(v109, v110, v111, v112, v113, 0xCu);
      OUTLINED_FUNCTION_23_3();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return MEMORY[0x1E69E7CC0];
  }

  v151 = MEMORY[0x1E69E7CC0];
  v47 = OUTLINED_FUNCTION_104_10(v39, v40, v41, v42, v43, v44, v45, v46, v124, v126, v128, v131, v35, v25, v137, v140, v141, v143, v146, v149);
  v138 = xmmword_1C75604F0;
  *(v47 + 16) = xmmword_1C75604F0;
  *(v47 + 56) = MEMORY[0x1E69E6158];
  *(v47 + 64) = v147;
  *(v47 + 32) = 0xD00000000000001DLL;
  *(v47 + 40) = 0x80000001C75AC190;
  v48 = OUTLINED_FUNCTION_43_2();
  *(v47 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
  OUTLINED_FUNCTION_6_88();
  OUTLINED_FUNCTION_99_3();
  *(v47 + 104) = sub_1C705575C(v50, v51, v52);
  *(v47 + 72) = v38;
  v132 = v38;
  sub_1C75504FC();
  v53 = sub_1C755112C();
  MEMORY[0x1CCA5D040]();
  OUTLINED_FUNCTION_127_8();
  if (v55)
  {
LABEL_51:
    OUTLINED_FUNCTION_15(v54);
    sub_1C7550B9C();
  }

  OUTLINED_FUNCTION_126_8();
  v129 = v53;
  sub_1C7550BEC();
  isUniquelyReferenced_nonNull_native = sub_1C6FB6304();
  if (isUniquelyReferenced_nonNull_native)
  {
    v64 = isUniquelyReferenced_nonNull_native;
    v127 = v4;
    v65 = 0;
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    v142 = MEMORY[0x1E69E7CC0];
    while (v64 != v65)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v75 = OUTLINED_FUNCTION_15_1();
        v66 = MEMORY[0x1CCA5DDD0](v75);
      }

      else
      {
        v54 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v65 >= v54)
        {
          goto LABEL_50;
        }

        v66 = *(a2 + 8 * v65 + 32);
      }

      v67 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v68 = v66;
      v69 = [v68 uuid];
      if (v69)
      {
        v70 = v69;
        v71 = sub_1C755068C();
        v125 = v72;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB1814();
          v142 = isUniquelyReferenced_nonNull_native;
        }

        v53 = *(v142 + 16);
        v73 = *(v142 + 24);
        if (v53 >= v73 >> 1)
        {
          OUTLINED_FUNCTION_15(v73);
          sub_1C6FB1814();
          v142 = isUniquelyReferenced_nonNull_native;
        }

        *(v142 + 16) = v53 + 1;
        v74 = v142 + 16 * v53;
        *(v74 + 32) = v71;
        *(v74 + 40) = v125;
        v65 = v67;
      }

      else
      {

        ++v65;
      }
    }

    v84 = OUTLINED_FUNCTION_104_10(isUniquelyReferenced_nonNull_native, v57, v58, v59, v60, v61, v62, v63, v125, v127, v129, v38, v133, v135, 2, 4, v142, v144, v147, v150);
    *(v84 + 16) = v138;
    *(v84 + 56) = MEMORY[0x1E69E6158];
    *(v84 + 64) = v147;
    *(v84 + 32) = 1684632949;
    *(v84 + 40) = 0xE400000000000000;
    *(v84 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_6_88();
    OUTLINED_FUNCTION_75();
    *(v84 + 104) = sub_1C705575C(v85, v86, v87);
    *(v84 + 72) = v142;
    OUTLINED_FUNCTION_13_67();
    sub_1C755112C();
    MEMORY[0x1CCA5D040]();
    v88 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v88 >> 1)
    {
      OUTLINED_FUNCTION_15(v88);
      sub_1C7550B9C();
    }

    sub_1C7550BEC();
    OUTLINED_FUNCTION_126_8();
  }

  v89 = OUTLINED_FUNCTION_104_10(isUniquelyReferenced_nonNull_native, v57, v58, v59, v60, v61, v62, v63, v125, v127, v129, v132, v133, v135, v138, *(&v138 + 1), v142, v144, v147, v150);
  *(v89 + 16) = v139;
  *(v89 + 56) = MEMORY[0x1E69E6158];
  *(v89 + 64) = v148;
  *(v89 + 32) = 1701869940;
  *(v89 + 40) = 0xE400000000000000;
  v90 = OUTLINED_FUNCTION_43_2();
  *(v89 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(v90, v91);
  OUTLINED_FUNCTION_6_88();
  OUTLINED_FUNCTION_99_3();
  *(v89 + 104) = sub_1C705575C(v92, v93, v94);
  *(v89 + 72) = v8;
  v95 = sub_1C755112C();
  MEMORY[0x1CCA5D040]();
  OUTLINED_FUNCTION_127_8();
  if (v55)
  {
    OUTLINED_FUNCTION_15(v96);
    sub_1C7550B9C();
  }

  sub_1C7550BEC();
  v97 = *(v145 + 8);
  v98 = *v145;

  v99 = [v98 librarySpecificFetchOptions];
  [v99 setSharingFilter_];

  sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
  v100 = OUTLINED_FUNCTION_24_2();
  v101 = sub_1C6F6E5C4(v100);
  [v99 setInternalPredicate_];

  v102 = [v134 fetchHighlightsWithOptions_];
  v103 = [v102 fetchedObjects];

  if (!v103)
  {
    goto LABEL_43;
  }

  sub_1C6F65BE8(0, &qword_1EC2155D8, 0x1E69789F0);
  OUTLINED_FUNCTION_63();
  v104 = sub_1C7550B5C();

  if (!sub_1C6FB6304())
  {

LABEL_43:
    sub_1C75504FC();
    v114 = sub_1C754FEEC();
    v115 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v115))
    {
      v116 = OUTLINED_FUNCTION_41_0();
      *v116 = 134217984;
      v117 = sub_1C6FB6304();

      *(v116 + 4) = v117;

      OUTLINED_FUNCTION_17();
      _os_log_impl(v118, v119, v120, v121, v122, 0xCu);
      OUTLINED_FUNCTION_23_3();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v104;
}

uint64_t sub_1C736B2E0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_1C6FE3758(*a1, a2);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  TokenCategoryType = QueryTokenCategoryTypeString.rawValue.getter();
  v31 = v7;
  MEMORY[0x1CCA5CD70](2112032, 0xE300000000000000);
  v12 = *(v6 + 16);
  if (v12)
  {
    v29 = a3;
    sub_1C6F7ED9C(0, v12, 0, v8, v9, v10, v11);
    v13 = 32;
    v14 = v5;
    do
    {
      v19 = sub_1C7551D8C();
      v21 = v20;
      v23 = *(v5 + 16);
      v22 = *(v5 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1C6F7ED9C(v22 > 1, v23 + 1, 1, v15, v16, v17, v18);
      }

      *(v5 + 16) = v23 + 1;
      v24 = v5 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      v13 += 8;
      --v12;
    }

    while (v12);

    a3 = v29;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v25 = MEMORY[0x1CCA5D090](v14, MEMORY[0x1E69E6158]);
  v27 = v26;

  MEMORY[0x1CCA5CD70](v25, v27);

  *a3 = TokenCategoryType;
  a3[1] = v31;
  return result;
}

void static QueryGenerator.consolidatePersonAssetUUIDs(from:isTrip:storyPhotoLibraryContext:)()
{
  OUTLINED_FUNCTION_33();
  LODWORD(v1) = v0;
  v3 = v2;
  v5 = *v4;
  LODWORD(v6) = *(v4 + 8);
  v7 = *(v4 + 16);
  if (qword_1EDD0F3C8 != -1)
  {
LABEL_123:
    swift_once();
  }

  v8 = qword_1EDD28DC8;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v9 = v8;
  v10 = PerformanceMeasure.init(name:log:)();
  v11 = sub_1C75504FC();
  v12 = sub_1C71CD90C(v11);
  v13 = *(v12 + 16);
  if (!v13)
  {

    if (qword_1EDD0F3C0 != -1)
    {
LABEL_126:
      OUTLINED_FUNCTION_9_58(&qword_1EDD0F3C0);
    }

    v42 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v42, qword_1EDD28DB0);
    v43 = sub_1C754FEEC();
    v44 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v44))
    {
      v45 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v45);
LABEL_49:
      OUTLINED_FUNCTION_17();
      _os_log_impl(v69, v70, v71, v72, v73, 2u);
      OUTLINED_FUNCTION_23_3();
    }

    goto LABEL_50;
  }

  v181 = v7;
  LODWORD(v183) = v1;
  LODWORD(v182) = v6;
  v184 = v5;
  v185 = v10;
  v186 = v13;
  v187 = v12;
  v1 = v3 + 64;
  OUTLINED_FUNCTION_11();
  v7 = v15 & v14;
  v17 = (v16 + 63) >> 6;
  sub_1C75504FC();
  v6 = 0;
  v180 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v7)
      {
        while (1)
        {
          v19 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v19 >= v17)
          {
            goto LABEL_20;
          }

          v7 = *(v1 + 8 * v19);
          ++v6;
          if (v7)
          {
            v6 = v19;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

LABEL_9:
      v20 = *(*(v3 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v7)))));
      v21 = *(v20 + 16);
      v5 = *(v18 + 16);
      if (__OFADD__(v5, v21))
      {
        goto LABEL_119;
      }

      sub_1C75504FC();
      if (!swift_isUniquelyReferenced_nonNull_native() || (OUTLINED_FUNCTION_120_9(), !(v23 ^ v24 | v22)))
      {
        OUTLINED_FUNCTION_90_9();
        sub_1C6FB1814();
        v18 = v25;
      }

      v7 &= v7 - 1;
      if (!*(v20 + 16))
      {
        break;
      }

      if ((*(v18 + 24) >> 1) - *(v18 + 16) < v21)
      {
        goto LABEL_121;
      }

      swift_arrayInitWithCopy();

      if (v21)
      {
        v26 = *(v18 + 16);
        v24 = __OFADD__(v26, v21);
        v27 = v26 + v21;
        if (v24)
        {
          goto LABEL_122;
        }

        *(v18 + 16) = v27;
      }
    }
  }

  while (!v21);
  __break(1u);
LABEL_20:

  if (v186 == 1)
  {
    v28 = v187;
    if (*(v18 + 16))
    {
      sub_1C706D154();
      v1 = v29;
      if (qword_1EDD0F3C0 == -1)
      {
LABEL_23:
        v30 = sub_1C754FF1C();
        __swift_project_value_buffer(v30, qword_1EDD28DB0);
        OUTLINED_FUNCTION_312_1();
        sub_1C75504FC();
        sub_1C75504FC();
        v31 = sub_1C754FEEC();
        v32 = sub_1C75511BC();

        if (os_log_type_enabled(v31, v32))
        {
          OUTLINED_FUNCTION_23_1();
          v33 = OUTLINED_FUNCTION_31_0();
          v188 = v33;
          *v6 = 134218242;
          *(v6 + 4) = *(v1 + 16);

          *(v6 + 12) = 2080;
          v34 = MEMORY[0x1CCA5D090](v28, MEMORY[0x1E69E6158]);
          v36 = v35;

          v37 = sub_1C6F765A4(v34, v36, &v188);

          *(v6 + 14) = v37;
          OUTLINED_FUNCTION_57_5();
          OUTLINED_FUNCTION_140_7(v38, v39, v40, v41);
          __swift_destroy_boxed_opaque_existential_1(v33);
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_37();
        }

        else
        {
        }

        goto LABEL_51;
      }

LABEL_128:
      OUTLINED_FUNCTION_9_58(&qword_1EDD0F3C0);
      goto LABEL_23;
    }

    if (qword_1EDD0F3C0 != -1)
    {
      OUTLINED_FUNCTION_9_58(&qword_1EDD0F3C0);
    }

    v66 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v66, qword_1EDD28DB0);
    v43 = sub_1C754FEEC();
    v67 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v67))
    {
      v68 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v68);
      goto LABEL_49;
    }

LABEL_50:

    goto LABEL_51;
  }

  v46 = objc_opt_self();
  v47 = v183;
  if (v183)
  {
    v48 = [v46 queryPeopleRequiredInRetrievalTripLimit];
    if (v48 >= v186)
    {
      v49 = v186;
    }

    else
    {
      v49 = v48;
    }

    v50 = v184;
    v51 = sub_1C736C4B4(v3, v18, v49, v184);
  }

  else
  {
    v52 = [v46 queryPeopleRequiredInRetrievalMomentLimit];
    v50 = v184;
    v188 = v184;
    if (v52 >= v186)
    {
      v53 = v186;
    }

    else
    {
      v53 = v52;
    }

    v189 = v182;
    v190 = v181;
    v51 = sub_1C736CB18(v3, v18, v53, &v188);
  }

  v54 = v51;

  if (!*(v54 + 16))
  {

    if (qword_1EDD0F3C0 != -1)
    {
      OUTLINED_FUNCTION_9_58(&qword_1EDD0F3C0);
    }

    v74 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v74, qword_1EDD28DB0);
    v75 = sub_1C754FEEC();
    v76 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v76))
    {
      v77 = OUTLINED_FUNCTION_41_0();
      v78 = OUTLINED_FUNCTION_20_1();
      v188 = v78;
      *v77 = 136315138;
      if (v47)
      {
        v79 = 0x7370697274;
      }

      else
      {
        v79 = 0x73746E656D6F6DLL;
      }

      if (v47)
      {
        v80 = 0xE500000000000000;
      }

      else
      {
        v80 = 0xE700000000000000;
      }

      v81 = sub_1C6F765A4(v79, v80, &v188);

      *(v77 + 4) = v81;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v82, v83, v84, v85, v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    goto LABEL_51;
  }

  sub_1C706ED1C();
  OUTLINED_FUNCTION_103_0();
  sub_1C75504FC();
  sub_1C706D154();
  v55 = OUTLINED_FUNCTION_24_2();
  v56 = static QueryGenerator.allPeopleMatch(ageTypes:for:in:)(v55, v18, v50);

  if (!v56)
  {
    v6 = [v50 librarySpecificFetchOptions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_1C7564A90;
    *(v86 + 32) = sub_1C7551EFC();
    *(v86 + 40) = sub_1C7551EFC();
    v87 = OUTLINED_FUNCTION_457();
    sub_1C7082AAC(v87, v88);
    v89 = objc_opt_self();
    v90 = sub_1C7550B3C();

    v91 = [v89 fetchPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v90 options:v6];

    if (!v91)
    {

      if (qword_1EDD0F3C0 != -1)
      {
        OUTLINED_FUNCTION_9_58(&qword_1EDD0F3C0);
      }

      v116 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v116, qword_1EDD28DB0);
      v117 = sub_1C754FEEC();
      v118 = sub_1C755119C();
      if (OUTLINED_FUNCTION_7_0(v118))
      {
        v119 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_37_0(v119);
        OUTLINED_FUNCTION_17();
        _os_log_impl(v120, v121, v122, v123, v124, 2u);
        OUTLINED_FUNCTION_23_3();
      }

      goto LABEL_51;
    }

    v181 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v1 = sub_1C75504AC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD30, &unk_1C75845C0);
    v92 = sub_1C7551AEC();
    v93 = v92;
    v28 = 0;
    v94 = 1 << *(v1 + 32);
    v95 = -1;
    if (v94 < 64)
    {
      v95 = ~(-1 << v94);
    }

    v5 = (v1 + 64);
    v96 = v95 & *(v1 + 64);
    v7 = (v94 + 63) >> 6;
    v3 = v92 + 64;
    v183 = v92;
    if (v96)
    {
      while (1)
      {
        v97 = __clz(__rbit64(v96));
        v96 &= v96 - 1;
LABEL_74:
        v6 = v97 | (v28 << 6);
        v100 = (*(v1 + 48) + 16 * v6);
        v102 = *v100;
        v101 = v100[1];
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C706D154();
        *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v6;
        v93 = v183;
        v103 = (*(v183 + 48) + 16 * v6);
        *v103 = v102;
        v103[1] = v101;
        *(*(v93 + 56) + 8 * v6) = v104;
        OUTLINED_FUNCTION_43_1();
        if (v24)
        {
          break;
        }

        *(v93 + 16) = v105;
        if (!v96)
        {
          goto LABEL_69;
        }
      }

      __break(1u);
      goto LABEL_128;
    }

LABEL_69:
    v98 = v28;
    while (1)
    {
      v28 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        break;
      }

      if (v28 >= v7)
      {

        MEMORY[0x1EEE9AC00](v106);
        v107 = v187;
        v179 = v187;
        sub_1C736F0A8(v93, sub_1C736F430, v178);
        v108 = sub_1C7080ED4();
        if (qword_1EDD0F3C0 != -1)
        {
          OUTLINED_FUNCTION_9_58(&qword_1EDD0F3C0);
        }

        v109 = sub_1C754FF1C();
        v110 = __swift_project_value_buffer(v109, qword_1EDD28DB0);
        sub_1C75504FC();
        v111 = sub_1C754FEEC();
        v112 = sub_1C755117C();
        v113 = OUTLINED_FUNCTION_7_0(v112);
        v114 = v184;
        if (v113)
        {
          v115 = OUTLINED_FUNCTION_41_0();
          *v115 = 134217984;
          *(v115 + 4) = *(v108 + 16);

          OUTLINED_FUNCTION_282_1(&dword_1C6F5C000, v111, v110, "There are %ld assets with at least 2 query people");
          OUTLINED_FUNCTION_37();
        }

        else
        {
        }

        v125 = static StoryGenerationUtilities.mePersonUUID(in:)(v114);
        if (v126)
        {
          v127 = v125;
        }

        else
        {
          v127 = 0;
        }

        if (v126)
        {
          v128 = v126;
        }

        else
        {
          v128 = 0xE000000000000000;
        }

        sub_1C75504FC();
        v129 = sub_1C754FEEC();
        v130 = sub_1C755117C();

        if (OUTLINED_FUNCTION_200())
        {
          v131 = OUTLINED_FUNCTION_41_0();
          v132 = OUTLINED_FUNCTION_20_1();
          v188 = v132;
          *v131 = 136315138;
          *(v131 + 4) = sub_1C6F765A4(v127, v128, &v188);
          _os_log_impl(&dword_1C6F5C000, v129, v130, "Me person uuid=%s", v131, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v132);
          v114 = v184;
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        MEMORY[0x1EEE9AC00](v133);
        v178[0] = v107;
        v178[1] = v127;
        v179 = v128;
        v134 = sub_1C736F0A8(v183, sub_1C736F438, &v177);

        sub_1C71CD90C(v134);
        v135 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(v114, v182, 0);
        sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
        v136 = swift_allocObject();
        *(v136 + 16) = xmmword_1C755BAB0;
        *(v136 + 56) = MEMORY[0x1E69E6158];
        *(v136 + 64) = sub_1C6F6D524();
        strcpy((v136 + 32), "detectedFaces");
        *(v136 + 46) = -4864;
        v137 = sub_1C755112C();
        [v135 setInternalPredicate_];

        v138 = objc_opt_self();
        v139 = v135;
        v140 = OUTLINED_FUNCTION_455();
        v142 = sub_1C6FCA158(v140, v141, v138);

        if (!v142 || (v143 = [v142 fetchedObjects], v142, !v143))
        {

          v160 = sub_1C754FEEC();
          v161 = sub_1C755119C();
          if (OUTLINED_FUNCTION_7_0(v161))
          {
            *OUTLINED_FUNCTION_127() = 0;
            OUTLINED_FUNCTION_24_7(&dword_1C6F5C000, v162, v163, "Unable to get fetched assets for only 1 query person. Defaulting to at least 2 query people required in each asset.");
            OUTLINED_FUNCTION_109();
          }

          goto LABEL_51;
        }

        v182 = v139;
        v183 = v110;
        sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
        OUTLINED_FUNCTION_116_12();
        v144 = sub_1C7550B5C();

        v145 = sub_1C6FB6304();
        v146 = 0;
        v184 = MEMORY[0x1E69E7CC0];
        while (v145 != v146)
        {
          if ((v144 & 0xC000000000000001) != 0)
          {
            v147 = MEMORY[0x1CCA5DDD0](v146, v144);
          }

          else
          {
            if (v146 >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_125;
            }

            v147 = *(v144 + 8 * v146 + 32);
          }

          v148 = v146 + 1;
          if (__OFADD__(v146, 1))
          {
            __break(1u);
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          v149 = v147;
          v150 = [v149 uuid];
          if (v150)
          {
            v151 = v150;
            v180 = sub_1C755068C();
            v153 = v152;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB1814();
              v184 = v158;
            }

            v155 = v184[2];
            v154 = v184[3];
            if (v155 >= v154 >> 1)
            {
              OUTLINED_FUNCTION_15(v154);
              sub_1C6FB1814();
              v184 = v159;
            }

            v156 = v184;
            v184[2] = v155 + 1;
            v157 = &v156[2 * v155];
            *(v157 + 4) = v180;
            *(v157 + 5) = v153;
            v146 = v148;
          }

          else
          {

            ++v146;
          }
        }

        sub_1C706D154();
        sub_1C70738FC();
        v165 = v164;
        v166 = v187;
        sub_1C75504FC();
        sub_1C75504FC();
        v167 = sub_1C754FEEC();
        v168 = sub_1C75511BC();

        if (os_log_type_enabled(v167, v168))
        {
          v169 = OUTLINED_FUNCTION_20_1();
          v170 = OUTLINED_FUNCTION_20_1();
          v188 = v170;
          *v169 = 134218498;
          *(v169 + 4) = v186;
          *(v169 + 12) = 2048;
          *(v169 + 14) = *(v165 + 16);

          *(v169 + 22) = 2080;
          v171 = MEMORY[0x1CCA5D090](v166, MEMORY[0x1E69E6158]);
          v173 = v172;

          v174 = sub_1C6F765A4(v171, v173, &v188);

          *(v169 + 24) = v174;
          _os_log_impl(&dword_1C6F5C000, v167, v168, "%ld people with %ld consolidated asset UUIDs from query token person %s", v169, 0x20u);
          __swift_destroy_boxed_opaque_existential_1(v170);
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        else
        {
        }

        v175 = v181;
        v176 = v182;
        sub_1C6F85170();

        goto LABEL_44;
      }

      v99 = v5[v28];
      ++v98;
      if (v99)
      {
        v97 = __clz(__rbit64(v99));
        v96 = (v99 - 1) & v99;
        goto LABEL_74;
      }
    }

LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (qword_1EDD0F3C0 != -1)
  {
    OUTLINED_FUNCTION_9_58(&qword_1EDD0F3C0);
  }

  v57 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v57, qword_1EDD28DB0);
  v58 = sub_1C754FEEC();
  v59 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_7_0(v59))
  {
    v60 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v60);
    OUTLINED_FUNCTION_17();
    _os_log_impl(v61, v62, v63, v64, v65, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  sub_1C706D154();
LABEL_44:

LABEL_51:
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C736C4B4(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  v80 = MEMORY[0x1E69E7CD0];
  v4 = [a4 librarySpecificFetchOptions];
  objc_opt_self();
  v5 = sub_1C7550B3C();
  v6 = OUTLINED_FUNCTION_117_8();
  v70 = v4;
  v8 = [v6 v7];

  v9 = sub_1C75504AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  v10 = sub_1C75504DC();
  v11 = v9 + 64;
  OUTLINED_FUNCTION_11();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v75 = v9;
  sub_1C75504FC();
  v17 = 0;
  v71 = v16;
  for (i = v9 + 64; ; v11 = i)
  {
    v18 = a1;
    if (!v14)
    {
      break;
    }

LABEL_7:
    v20 = (v17 << 10) | (16 * __clz(__rbit64(v14)));
    v21 = (*(v75 + 48) + v20);
    v22 = v21[1];
    v76 = *v21;
    v23 = (*(v75 + 56) + v20);
    v18 = *v23;
    v24 = v23[1];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C6F78124(v18, v24);
    OUTLINED_FUNCTION_13_2();
    if (__OFADD__(v27, v28))
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      OUTLINED_FUNCTION_9_58(&qword_1EDD0F3C0);
LABEL_48:
      v60 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v60, qword_1EDD28DB0);
      sub_1C75504FC();
      sub_1C75504FC();
      v61 = sub_1C754FEEC();
      v62 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_23_0(v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 134218752;
        *(v63 + 4) = a3;
        *(v63 + 12) = 2048;
        *(v63 + 14) = [objc_opt_self() queryPeopleRequiredInRetrievalMomentLimit];
        *(v63 + 22) = 2048;
        *(v63 + 24) = *(v18 + 16);

        *(v63 + 32) = 2048;
        *(v63 + 34) = *(v80 + 16);

        OUTLINED_FUNCTION_46_0();
        _os_log_impl(v64, v65, v66, v67, v63, 0x2Au);
        OUTLINED_FUNCTION_37();
      }

      else
      {
      }

      v68 = sub_1C71CD85C(v80);

      return v68;
    }

    v29 = v25;
    v30 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0, &qword_1C755CB70);
    if (sub_1C7551A2C())
    {
      v31 = sub_1C6F78124(v18, v24);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_59;
      }

      v29 = v31;
    }

    if (v30)
    {
    }

    else
    {
      OUTLINED_FUNCTION_1_3(v10 + 8 * (v29 >> 6));
      v33 = (*(v10 + 48) + 16 * v29);
      *v33 = v18;
      v33[1] = v24;
      *(*(v10 + 56) + 8 * v29) = MEMORY[0x1E69E7CC0];
      v34 = *(v10 + 16);
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_56;
      }

      *(v10 + 16) = v36;
    }

    v37 = *(v10 + 56);
    v38 = *(v37 + 8 * v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 8 * v29) = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB1814();
      v38 = v44;
      *(v37 + 8 * v29) = v44;
    }

    v41 = *(v38 + 16);
    v40 = *(v38 + 24);
    if (v41 >= v40 >> 1)
    {
      OUTLINED_FUNCTION_15(v40);
      OUTLINED_FUNCTION_90_9();
      sub_1C6FB1814();
      *(v37 + 8 * v29) = v45;
    }

    v14 &= v14 - 1;

    v42 = *(v37 + 8 * v29);
    *(v42 + 16) = v41 + 1;
    v43 = v42 + 16 * v41;
    *(v43 + 32) = v76;
    *(v43 + 40) = v22;
    v16 = v71;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v19 >= v16)
    {
      break;
    }

    v14 = *(v11 + 8 * v19);
    ++v17;
    if (v14)
    {
      v17 = v19;
      goto LABEL_7;
    }
  }

  v46 = 0;
  v47 = 1 << *(v10 + 32);
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  else
  {
    v48 = -1;
  }

  v49 = v48 & *(v10 + 64);
  v50 = (v47 + 63) >> 6;
  v73 = v50;
  if (!v49)
  {
LABEL_25:
    while (1)
    {
      v51 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_54;
      }

      if (v51 >= v50)
      {

        if (qword_1EDD0F3C0 != -1)
        {
          goto LABEL_57;
        }

        goto LABEL_48;
      }

      v49 = *(v10 + 64 + 8 * v51);
      ++v46;
      if (v49)
      {
        goto LABEL_28;
      }
    }
  }

LABEL_24:
  v51 = v46;
LABEL_28:
  v49 &= v49 - 1;
  v79 = MEMORY[0x1E69E7CD0];
  v52 = 1 << *(v18 + 32);
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  else
  {
    v53 = -1;
  }

  v54 = v53 & *(v18 + 64);
  v55 = (v52 + 63) >> 6;
  sub_1C75504FC();
  sub_1C75504FC();
  v77 = 0;
  v56 = 0;
  while (2)
  {
    v57 = v56;
    if (!v54)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v56 = v57;
LABEL_37:
      v54 &= v54 - 1;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C706D154();
      v58 = OUTLINED_FUNCTION_63();
      sub_1C72B8CBC(v58, v59);
      OUTLINED_FUNCTION_31_37();
      if (*(v18 + 16))
      {
        break;
      }

      v57 = v56;
      v18 = a1;
      if (!v54)
      {
        while (1)
        {
LABEL_34:
          v56 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            __break(1u);
            goto LABEL_53;
          }

          if (v56 >= v55)
          {
            break;
          }

          v54 = *(a1 + 64 + 8 * v56);
          ++v57;
          if (v54)
          {
            goto LABEL_37;
          }
        }

        if (v77 >= a3)
        {
          sub_1C739796C(v79);
        }

        else
        {
        }

        v46 = v51;
        v50 = v73;
        if (!v49)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    if (!__OFADD__(v77, 1))
    {
      ++v77;
      sub_1C739796C(v18);
      v18 = a1;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_59:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C736CB18(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *a4;
  v7 = *(a4 + 8);
  v8 = *(a4 + 16);
  sub_1C75504FC();
  sub_1C706D154();
  v87 = v6;
  v88 = v7;
  v89 = v8;
  v10 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v9, &v87);

  sub_1C75504FC();
  v81 = a1;
  v11 = OUTLINED_FUNCTION_455();
  v12 = 0;
  v14 = sub_1C736ED5C(v11, v13);
  v87 = MEMORY[0x1E69E7CC0];
  v15 = v14 + 8;
  OUTLINED_FUNCTION_11();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;

  v21 = 0;
  if (v18)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_49:
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
      OUTLINED_FUNCTION_9_58(&qword_1EDD0F3C0);
      goto LABEL_44;
    }

    if (v22 >= v20)
    {
      break;
    }

    v18 = v15[v22];
    ++v21;
    if (v18)
    {
      v21 = v22;
      do
      {
LABEL_7:
        v18 &= v18 - 1;
        v23 = sub_1C75504FC();
        sub_1C6FD25FC(v23);
      }

      while (v18);
      continue;
    }
  }

  v84 = v10;

  v24 = 0;
  v18 = v87;
  v85 = v87[2];
  v25 = MEMORY[0x1E69E7CC8];
  v26 = v87 + 5;
  while (v85 != v24)
  {
    if (v24 >= *(v18 + 16))
    {
      goto LABEL_49;
    }

    v27 = *(v26 - 1);
    v28 = *v26;
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v87 = v25;
    sub_1C6F78124(v27, v28);
    OUTLINED_FUNCTION_13_2();
    v12 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_50;
    }

    v33 = v29;
    v34 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8, &qword_1C755C750);
    v35 = sub_1C7551A2C();
    v25 = v87;
    if (v35)
    {
      v36 = sub_1C6F78124(v27, v28);
      if ((v34 & 1) != (v37 & 1))
      {
        result = sub_1C7551E4C();
        __break(1u);
        return result;
      }

      v33 = v36;
    }

    if ((v34 & 1) == 0)
    {
      OUTLINED_FUNCTION_1_3(&v25[v33 >> 6]);
      v38 = (v25[6] + 16 * v33);
      *v38 = v27;
      v38[1] = v28;
      *(v25[7] + 8 * v33) = 0;
      OUTLINED_FUNCTION_43_1();
      if (v40)
      {
        goto LABEL_54;
      }

      v25[2] = v39;
      sub_1C75504FC();
    }

    v41 = v25[7];
    v42 = *(v41 + 8 * v33);
    v40 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v40)
    {
      goto LABEL_51;
    }

    *(v41 + 8 * v33) = v43;

    v26 += 2;
    ++v24;
  }

  sub_1C736EF38(v25, a3);

  v18 = sub_1C7080ED4();
  v44 = 0;
  v86 = *(a2 + 16);
  v83 = a2 + 32;
  v12 = MEMORY[0x1E69E7CC0];
LABEL_22:
  while (1)
  {
    v45 = v44;
    if (v44 == v86)
    {
      break;
    }

    if (v44 >= v86)
    {
      goto LABEL_52;
    }

    ++v44;
    if (__OFADD__(v45, 1))
    {
      goto LABEL_53;
    }

    v46 = (v83 + 16 * v45);
    v48 = *v46;
    v47 = v46[1];
    v49 = *(v84 + 16);
    sub_1C75504FC();
    if (v49 && (v50 = sub_1C6F78124(v48, v47), (v51 & 1) != 0))
    {
      v52 = (*(v84 + 56) + 16 * v50);
      v54 = *v52;
      v53 = v52[1];
      sub_1C75504FC();
    }

    else
    {
      v54 = 0;
      v53 = 0xE000000000000000;
    }

    if (*(v18 + 16))
    {
      sub_1C7551F3C();
      sub_1C75505AC();
      v55 = sub_1C7551FAC();
      v56 = ~(-1 << *(v18 + 32));
      while (1)
      {
        v57 = v55 & v56;
        if (((*(v18 + 56 + (((v55 & v56) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v55 & v56)) & 1) == 0)
        {
          break;
        }

        v58 = (*(v18 + 48) + 16 * v57);
        if (*v58 != v54 || v58[1] != v53)
        {
          v60 = sub_1C7551DBC();
          v55 = v57 + 1;
          if ((v60 & 1) == 0)
          {
            continue;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C6F7ED9C(0, *(v12 + 16) + 1, 1, v62, v63, v64, v65);
          v12 = v90;
        }

        v67 = *(v12 + 16);
        v66 = *(v12 + 24);
        if (v67 >= v66 >> 1)
        {
          v69 = OUTLINED_FUNCTION_15(v66);
          sub_1C6F7ED9C(v69, v67 + 1, 1, v70, v71, v72, v73);
          v12 = v90;
        }

        *(v12 + 16) = v67 + 1;
        v68 = v12 + 16 * v67;
        *(v68 + 32) = v48;
        *(v68 + 40) = v47;
        goto LABEL_22;
      }
    }
  }

  if (qword_1EDD0F3C0 != -1)
  {
    goto LABEL_55;
  }

LABEL_44:
  v74 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v74, qword_1EDD28DB0);
  OUTLINED_FUNCTION_129_0();
  swift_retain_n();
  sub_1C75504FC();
  sub_1C75504FC();
  v75 = sub_1C754FEEC();
  v76 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 134219008;
    *(v77 + 4) = a3;
    *(v77 + 12) = 2048;
    *(v77 + 14) = [objc_opt_self() queryPeopleRequiredInRetrievalMomentLimit];
    *(v77 + 22) = 2048;
    *(v77 + 24) = *(v81 + 16);

    *(v77 + 32) = 2048;
    v78 = *(v18 + 16);

    *(v77 + 34) = v78;

    *(v77 + 42) = 2048;
    v79 = *(v12 + 16);

    *(v77 + 44) = v79;

    _os_log_impl(&dword_1C6F5C000, v75, v76, "Selecting assets in moments that match people. Requiring %ld people. Default limit %ld people, prompt contains %ld people. Found %ld moments and %ld assets", v77, 0x34u);
    OUTLINED_FUNCTION_109();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_129_0();
  }

  return v12;
}

BOOL static QueryGenerator.allPeopleMatch(ageTypes:for:in:)(uint64_t a1, uint64_t a2, id a3)
{
  v6 = [a3 librarySpecificFetchOptions];
  sub_1C6F65BE8(0, &qword_1EDD100F0, 0x1E6978980);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = sub_1C736F4A8(a2, ObjCClassFromMetadata);
  if (v8)
  {
    v9 = v8;
    v10 = objc_opt_self();
    sub_1C71CD85C(v9);
    v11 = sub_1C7550B3C();

    v3 = [v10 fetchPersonsWithLocalIdentifiers:v11 options:v6];

    v12 = [v3 fetchedObjects];
    if (v12)
    {
      v40 = v6;
      v13 = sub_1C7550B5C();

      v14 = sub_1C6FB6304();
      v15 = 0;
      v16 = v13 & 0xC000000000000001;
      v17 = v13 & 0xFFFFFFFFFFFFFF8;
      v41 = v13;
      v18 = v13 + 32;
      v3 = &selRef_addingKeyAssetForObject_toAssets_options_;
      v39 = v18;
LABEL_4:
      if (v15 == v14)
      {

        return v15 == v14;
      }

      if (v16)
      {
        v19 = MEMORY[0x1CCA5DDD0](v15, v41);
      }

      else
      {
        if (v15 >= *(v17 + 16))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v19 = *(v18 + 8 * v15);
      }

      v20 = v15 + 1;
      if (!__OFADD__(v15, 1))
      {
        v42 = v15;
        v21 = v16;
        v6 = &selRef_addingKeyAssetForObject_toAssets_options_;
        v22 = v19;
        v23 = [v19 ageType];
        if (*(a1 + 16))
        {
          v24 = v23;
          sub_1C7551F3C();
          sub_1C7551F6C();
          v25 = sub_1C7551FAC();
          v26 = ~(-1 << *(a1 + 32));
          while (1)
          {
            v27 = v25 & v26;
            if (((*(a1 + 56 + (((v25 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v25 & v26)) & 1) == 0)
            {
              break;
            }

            v25 = v27 + 1;
            if (*(*(a1 + 48) + 2 * v27) == v24)
            {

              v15 = v20;
              v16 = v21;
              v18 = v39;
              goto LABEL_4;
            }
          }
        }

        v15 = v42;
        return v15 == v14;
      }

      goto LABEL_23;
    }
  }

  if (qword_1EDD0F3C0 != -1)
  {
LABEL_24:
    OUTLINED_FUNCTION_9_58(&qword_1EDD0F3C0);
  }

  v28 = sub_1C754FF1C();
  __swift_project_value_buffer(v28, qword_1EDD28DB0);
  OUTLINED_FUNCTION_312_1();
  sub_1C75504FC();
  v29 = sub_1C754FEEC();
  v30 = sub_1C755119C();

  if (os_log_type_enabled(v29, v30))
  {
    OUTLINED_FUNCTION_41_0();
    v43[0] = OUTLINED_FUNCTION_31_0();
    *v3 = 136315138;
    v31 = sub_1C7550F9C();
    v33 = sub_1C6F765A4(v31, v32, v43);

    *(v3 + 4) = v33;
    OUTLINED_FUNCTION_57_5();
    OUTLINED_FUNCTION_282_1(v34, v35, v36, v37);
    OUTLINED_FUNCTION_33_26();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_37();
  }

  return 0;
}

BOOL sub_1C736D43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v6 = *(sub_1C72B8CBC(a4, a3) + 16);

  return v6 > 1;
}

uint64_t sub_1C736D484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a3 + 16) == 1)
  {

    v10 = *(sub_1C72B8CBC(a4, a3) + 16);

    if (v10)
    {
      v11 = sub_1C7009C30(a5, a6, a3) ^ 1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void sub_1C736D510(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = 0;
  v7 = *a1;
  v8 = *(*a1 + 16);
  v9 = *a1 + 40;
  v10 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = (v9 + 16 * v6); ; i += 2)
  {
    if (v8 == v6)
    {
      sub_1C706D154();
      *a3 = v23;
      return;
    }

    if (v6 >= *(v7 + 16))
    {
      break;
    }

    if (*(a2 + 16))
    {
      v12 = *(i - 1);
      v13 = *i;
      sub_1C75504FC();
      v14 = sub_1C6F78124(v12, v13);
      if (v15)
      {
        v24 = v9;
        v25 = v4;
        v16 = (*(a2 + 56) + 16 * v14);
        v17 = *v16;
        v18 = v16[1];
        sub_1C75504FC();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1814();
          v10 = v21;
        }

        v19 = *(v10 + 16);
        if (v19 >= *(v10 + 24) >> 1)
        {
          sub_1C6FB1814();
          v10 = v22;
        }

        ++v6;
        *(v10 + 16) = v19 + 1;
        v20 = v10 + 16 * v19;
        *(v20 + 32) = v17;
        *(v20 + 40) = v18;
        v9 = v24;
        v4 = v25;
        goto LABEL_2;
      }
    }

    ++v6;
  }

  __break(1u);
}

void sub_1C736D66C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D574(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C736DAC4(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C736D74C(0, v3, 1, a1);
  }
}

void sub_1C736D74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v47 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v47 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v47 - v16;
  v48 = a2;
  if (a3 == a2)
  {
    return;
  }

  v17 = *a4;
  v18 = (v15 + 32);
  v54 = (v15 + 8);
  v58 = v17;
  v19 = v17 + 8 * a3 - 8;
  v20 = a1 - a3;
  while (2)
  {
    v50 = v19;
    v51 = a3;
    v21 = *(v58 + 8 * a3);
    v49 = v20;
    while (1)
    {
      v22 = *v19;
      v23 = v21;
      v24 = v22;
      v25 = [v23 startDate];
      if (v25)
      {
        v26 = v25;
        v27 = v55;
        sub_1C754DF2C();

        v28 = *v18;
        (*v18)(v59, v27, v8);
        v29 = [v24 startDate];
        if (v29)
        {
          v30 = v29;
          v57 = v24;
          v31 = v53;
          sub_1C754DF2C();

          v32 = v8;
          v33 = v52;
          v28(v52, v31, v32);
          v34 = v59;
          v56 = sub_1C754DF4C();
          v35 = *v54;
          v36 = v33;
          v8 = v32;
          (*v54)(v36, v32);
          v35(v34, v32);

          if (v56 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_16;
        }

        (*v54)(v59, v8);
      }

      v37 = sub_1C70CAC04(v23);
      if (!v38)
      {
        goto LABEL_25;
      }

      v39 = v37;
      v40 = v38;
      v41 = sub_1C70CAC04(v24);
      if (!v42)
      {
        goto LABEL_24;
      }

      if (v41 == v39 && v42 == v40)
      {
        break;
      }

      v44 = sub_1C7551DBC();

      if ((v44 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_16:
      if (!v58)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      v45 = *v19;
      v21 = *(v19 + 8);
      *v19 = v21;
      *(v19 + 8) = v45;
      v19 -= 8;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_21;
      }
    }

LABEL_21:
    a3 = v51 + 1;
    v19 = v50 + 8;
    v20 = v49 - 1;
    if (v51 + 1 != v48)
    {
      continue;
    }

    break;
  }
}

void sub_1C736DAC4(char **a1, uint64_t a2, id **a3, uint64_t a4)
{
  v5 = v4;
  v156 = a1;
  v8 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v8);
  v168 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v167 = &v153 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v170 = &v153 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v153 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v158 = &v153 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v157 = &v153 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v161 = &v153 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v165 = a3;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x1E69E7CC0];
LABEL_120:
    v176 = *v156;
    if (!v176)
    {
      goto LABEL_166;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_122:
      v145 = v28 + 16;
      v146 = *(v28 + 2);
      while (v146 >= 2)
      {
        if (!*v165)
        {
          goto LABEL_163;
        }

        v147 = v28;
        v148 = &v28[16 * v146];
        v149 = *v148;
        v150 = &v145[2 * v146];
        v151 = *(v150 + 1);
        sub_1C736E65C(&(*v165)[*v148], &(*v165)[*v150], &(*v165)[v151], v176);
        if (v5)
        {
          break;
        }

        if (v151 < v149)
        {
          goto LABEL_147;
        }

        if (v146 - 2 >= *v145)
        {
          goto LABEL_148;
        }

        *v148 = v149;
        *(v148 + 1) = v151;
        v152 = *v145 - v146;
        if (*v145 < v146)
        {
          goto LABEL_149;
        }

        v146 = *v145 - 1;
        sub_1C7423CF4(v150 + 16, v152, v150);
        *v145 = v146;
        v28 = v147;
      }

LABEL_130:

      return;
    }

LABEL_156:
    v28 = sub_1C7420830();
    goto LABEL_122;
  }

  v160 = &v153 - v25;
  v154 = a4;
  v27 = 0;
  v173 = (v24 + 32);
  v171 = (v24 + 8);
  v28 = MEMORY[0x1E69E7CC0];
  v172 = v8;
  v169 = v16;
LABEL_3:
  v159 = v27;
  if (v27 + 1 >= v26)
  {
    v35 = v27 + 1;
    goto LABEL_33;
  }

  v166 = v26;
  v29 = *v165;
  v178 = (*v165)[v27 + 1];
  v177 = v29[v27];
  v30 = v177;
  v31 = v178;
  v32 = v30;
  LODWORD(v164) = sub_1C73664E4(&v178, &v177);
  if (v5)
  {

    return;
  }

  v33 = (v27 + 1);
  v155 = v28;

  v176 = (8 * v27);
  for (i = &v29[v27 + 2]; ; ++i)
  {
    v35 = v166;
    if ((v33 + 1) >= v166)
    {
      break;
    }

    v36 = *(i - 1);
    v37 = *i;
    v38 = v36;
    v39 = [v37 startDate];
    if (v39)
    {
      v40 = v39;
      v174 = i;
      v175 = v33;
      v41 = v161;
      sub_1C754DF2C();

      v42 = *v173;
      v43 = v160;
      (*v173)(v160, v41, v8);
      v44 = [v38 startDate];
      if (v44)
      {
        v45 = v44;
        v46 = v158;
        sub_1C754DF2C();

        v47 = v5;
        v48 = v157;
        v42(v157, v46, v8);
        v49 = sub_1C754DF4C();
        v50 = *v171;
        v51 = v48;
        v5 = v47;
        (*v171)(v51, v8);
        v50(v43, v8);

        v52 = v49 == 1;
        i = v174;
        v33 = v175;
        goto LABEL_18;
      }

      (*v171)(v43, v8);
      i = v174;
      v33 = v175;
    }

    v53 = sub_1C70CAC04(v37);
    if (!v54)
    {
      goto LABEL_161;
    }

    v55 = v53;
    v56 = v54;
    v57 = sub_1C70CAC04(v38);
    if (!v58)
    {
      goto LABEL_162;
    }

    if (v57 == v55 && v58 == v56)
    {

      v8 = v172;
      if (v164)
      {
        v35 = (v33 + 1);
        v28 = v155;
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    v52 = sub_1C7551DBC();

    v8 = v172;
LABEL_18:
    if ((v164 ^ v52))
    {
      v35 = (v33 + 1);
      break;
    }

LABEL_21:
    ++v33;
  }

  v28 = v155;
  if ((v164 & 1) == 0)
  {
    v16 = v169;
    goto LABEL_33;
  }

LABEL_26:
  v60 = v159;
  v16 = v169;
  if (v35 < v159)
  {
    goto LABEL_153;
  }

  if (v159 < v35)
  {
    v61 = 8 * v35 - 8;
    v62 = v35;
    do
    {
      if (v60 != --v62)
      {
        v63 = *v165;
        if (!*v165)
        {
          goto LABEL_164;
        }

        v64 = *&v176[v63];
        *&v176[v63] = *(v63 + v61);
        *(v63 + v61) = v64;
      }

      ++v60;
      v61 -= 8;
      v176 += 8;
    }

    while (v60 < v62);
  }

LABEL_33:
  v65 = v165[1];
  if (v35 >= v65)
  {
    goto LABEL_43;
  }

  if (__OFSUB__(v35, v159))
  {
    goto LABEL_152;
  }

  if (v35 - v159 >= v154)
  {
LABEL_43:
    v68 = v35;
    goto LABEL_44;
  }

  if (__OFADD__(v159, v154))
  {
    goto LABEL_154;
  }

  if (v159 + v154 >= v65)
  {
    v66 = v165[1];
  }

  else
  {
    v66 = (v159 + v154);
  }

  if (v66 < v159)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  v67 = v159;
  if (v35 == v66)
  {
    v68 = v35;
    goto LABEL_45;
  }

  v155 = v28;
  v153 = v5;
  v174 = *v165;
  v114 = &v174[v35 - 1];
  v115 = v159 - v35;
  v162 = v66;
  while (2)
  {
    v166 = v35;
    v116 = v174[v35];
    v163 = v115;
    v164 = v114;
LABEL_97:
    v117 = *v114;
    v118 = v116;
    v119 = v117;
    v120 = [v118 startDate];
    if (v120)
    {
      v121 = v120;
      v175 = v118;
      v122 = v8;
      v123 = v170;
      sub_1C754DF2C();

      v124 = *v173;
      (*v173)(v16, v123, v122);
      v176 = v119;
      v125 = [v119 startDate];
      if (v125)
      {
        v126 = v125;
        v127 = v168;
        sub_1C754DF2C();

        v128 = v167;
        v129 = v127;
        v16 = v169;
        v124(v167, v129, v122);
        v130 = sub_1C754DF4C();
        v131 = *v171;
        v132 = v128;
        v8 = v122;
        (*v171)(v132, v122);
        v131(v16, v122);

        if (v130 != 1)
        {
          goto LABEL_114;
        }

        goto LABEL_109;
      }

      (*v171)(v16, v122);
      v118 = v175;
      v119 = v176;
    }

    v133 = sub_1C70CAC04(v118);
    if (!v134)
    {
      goto LABEL_158;
    }

    v135 = v133;
    v136 = v134;
    v137 = sub_1C70CAC04(v119);
    if (!v138)
    {
      goto LABEL_159;
    }

    if (v137 == v135 && v138 == v136)
    {

      v8 = v172;
LABEL_114:
      v35 = v166 + 1;
      v114 = v164 + 8;
      v115 = v163 - 1;
      v68 = v162;
      if (v166 + 1 != v162)
      {
        continue;
      }

      v5 = v153;
      v28 = v155;
LABEL_44:
      v67 = v159;
LABEL_45:
      if (v68 < v67)
      {
        goto LABEL_151;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, *(v28 + 2) + 1, 1, v28);
        v28 = v143;
      }

      v70 = *(v28 + 2);
      v69 = *(v28 + 3);
      v71 = v70 + 1;
      v162 = v68;
      if (v70 >= v69 >> 1)
      {
        sub_1C6FB17EC(v69 > 1, v70 + 1, 1, v28);
        v28 = v144;
      }

      *(v28 + 2) = v71;
      v72 = v28 + 32;
      v73 = &v28[16 * v70 + 32];
      v74 = v162;
      *v73 = v159;
      *(v73 + 1) = v74;
      v176 = *v156;
      if (!v176)
      {
        goto LABEL_165;
      }

      if (!v70)
      {
LABEL_116:
        v26 = v165[1];
        v27 = v162;
        if (v162 >= v26)
        {
          goto LABEL_120;
        }

        goto LABEL_3;
      }

      while (1)
      {
        v75 = v8;
        v76 = v71 - 1;
        v77 = &v72[16 * v71 - 16];
        v78 = &v28[16 * v71];
        if (v71 >= 4)
        {
          break;
        }

        if (v71 == 3)
        {
          v79 = *(v28 + 4);
          v80 = *(v28 + 5);
          v89 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          v82 = v89;
LABEL_65:
          if (v82)
          {
            goto LABEL_138;
          }

          v94 = *v78;
          v93 = *(v78 + 1);
          v95 = __OFSUB__(v93, v94);
          v96 = v93 - v94;
          v97 = v95;
          if (v95)
          {
            goto LABEL_141;
          }

          v98 = *(v77 + 1);
          v99 = v98 - *v77;
          if (__OFSUB__(v98, *v77))
          {
            goto LABEL_144;
          }

          if (__OFADD__(v96, v99))
          {
            goto LABEL_146;
          }

          if (v96 + v99 >= v81)
          {
            if (v81 < v99)
            {
              v76 = v71 - 2;
            }

            goto LABEL_87;
          }

          goto LABEL_80;
        }

        if (v71 < 2)
        {
          goto LABEL_140;
        }

        v101 = *v78;
        v100 = *(v78 + 1);
        v89 = __OFSUB__(v100, v101);
        v96 = v100 - v101;
        v97 = v89;
LABEL_80:
        if (v97)
        {
          goto LABEL_143;
        }

        v103 = *v77;
        v102 = *(v77 + 1);
        v89 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v89)
        {
          goto LABEL_145;
        }

        if (v104 < v96)
        {
          v8 = v75;
          goto LABEL_116;
        }

LABEL_87:
        if (v76 - 1 >= v71)
        {
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
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

        if (!*v165)
        {
          goto LABEL_160;
        }

        v108 = v28;
        v109 = &v72[16 * v76 - 16];
        v110 = *v109;
        v111 = &v72[16 * v76];
        v112 = *(v111 + 1);
        sub_1C736E65C(&(*v165)[*v109], &(*v165)[*v111], &(*v165)[v112], v176);
        if (v5)
        {
          goto LABEL_130;
        }

        if (v112 < v110)
        {
          goto LABEL_133;
        }

        v5 = *(v108 + 2);
        if (v76 > v5)
        {
          goto LABEL_134;
        }

        *v109 = v110;
        *(v109 + 1) = v112;
        if (v76 >= v5)
        {
          goto LABEL_135;
        }

        v71 = v5 - 1;
        sub_1C7423CF4(v111 + 16, v5 - 1 - v76, &v72[16 * v76]);
        v28 = v108;
        *(v108 + 2) = v5 - 1;
        v113 = v5 > 2;
        v5 = 0;
        v8 = v172;
        v16 = v169;
        if (!v113)
        {
          goto LABEL_116;
        }
      }

      v83 = &v72[16 * v71];
      v84 = *(v83 - 8);
      v85 = *(v83 - 7);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_136;
      }

      v88 = *(v83 - 6);
      v87 = *(v83 - 5);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_137;
      }

      v90 = *(v78 + 1);
      v91 = v90 - *v78;
      if (__OFSUB__(v90, *v78))
      {
        goto LABEL_139;
      }

      v89 = __OFADD__(v81, v91);
      v92 = v81 + v91;
      if (v89)
      {
        goto LABEL_142;
      }

      if (v92 >= v86)
      {
        v106 = *v77;
        v105 = *(v77 + 1);
        v89 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v89)
        {
          goto LABEL_150;
        }

        if (v81 < v107)
        {
          v76 = v71 - 2;
        }

        goto LABEL_87;
      }

      goto LABEL_65;
    }

    break;
  }

  v140 = sub_1C7551DBC();

  v8 = v172;
  if ((v140 & 1) == 0)
  {
    goto LABEL_114;
  }

LABEL_109:
  if (v174)
  {
    v141 = *v114;
    v116 = *(v114 + 8);
    *v114 = v116;
    *(v114 + 8) = v141;
    v114 -= 8;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_114;
    }

    goto LABEL_97;
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
}

uint64_t sub_1C736E65C(char *a1, id *a2, id *a3, char *a4)
{
  v101 = a4;
  v99 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v99);
  v90 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v88 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v88 - v11;
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v92 = (&v88 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v88 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v88 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v22 = (a2 - a1) / 8;
  v100 = (v23 + 32);
  v98 = (v23 + 8);
  v24 = a3 - a2;
  if (v22 < v24)
  {
    v93 = &v88 - v20;
    v25 = v101;
    sub_1C7423CF8(a1, (a2 - a1) / 8, v101);
    v26 = &v25[8 * v22];
    for (i = a3; ; a3 = i)
    {
      if (v101 >= v26 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_54;
      }

      v28 = *v101;
      v29 = *a2;
      v30 = v28;
      v31 = [v29 startDate];
      if (v31)
      {
        v32 = v31;
        v97 = v29;
        v33 = v30;
        v34 = v94;
        sub_1C754DF2C();

        v35 = v99;
        v36 = *v100;
        v37 = v93;
        v38 = v34;
        v30 = v33;
        (*v100)(v93, v38, v99);
        v39 = [v33 startDate];
        if (v39)
        {
          v40 = v39;
          v41 = v92;
          sub_1C754DF2C();

          v95 = v30;
          v42 = a2;
          v43 = v91;
          v36(v91, v41, v35);
          v44 = sub_1C754DF4C();
          v45 = *v98;
          v46 = v43;
          a2 = v42;
          (*v98)(v46, v35);
          v45(v37, v35);

          if (v44 != 1)
          {
            goto LABEL_23;
          }

          goto LABEL_19;
        }

        (*v98)(v37, v35);
        v29 = v97;
      }

      v47 = a1;
      result = sub_1C70CAC04(v29);
      if (!v49)
      {
        goto LABEL_63;
      }

      v50 = result;
      v51 = v49;
      result = sub_1C70CAC04(v30);
      if (!v52)
      {
        goto LABEL_62;
      }

      v53 = result == v50 && v52 == v51;
      if (v53)
      {

        a1 = v47;
LABEL_23:
        v55 = v101;
        v101 += 8;
        if (a1 == v55)
        {
          goto LABEL_25;
        }

LABEL_24:
        *a1 = *v55;
        goto LABEL_25;
      }

      v54 = sub_1C7551DBC();

      a1 = v47;
      if ((v54 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_19:
      v55 = a2;
      v53 = a1 == a2++;
      if (!v53)
      {
        goto LABEL_24;
      }

LABEL_25:
      a1 += 8;
    }
  }

  v91 = v21;
  v56 = v101;
  sub_1C7423CF8(a2, a3 - a2, v101);
  v26 = &v56[8 * v24];
  v95 = a1;
LABEL_27:
  v57 = a2 - 1;
  v58 = a3 - 1;
  i = a2 - 1;
  v92 = a2;
  while (v26 > v101 && a2 > a1)
  {
    v60 = (v26 - 8);
    v61 = *v57;
    v62 = *(v26 - 1);
    v63 = v61;
    v64 = [v62 startDate];
    if (v64)
    {
      v65 = v64;
      v97 = v26;
      v66 = v100;
      v67 = v93;
      sub_1C754DF2C();

      v68 = *v66;
      v69 = v63;
      v70 = v91;
      v71 = v67;
      v72 = v99;
      (*v66)(v91, v71, v99);
      v73 = [v69 startDate];
      if (v73)
      {
        v74 = v73;
        v94 = v69;
        v75 = v58;
        v76 = v90;
        sub_1C754DF2C();

        v77 = v89;
        v68(v89, v76, v72);
        v78 = sub_1C754DF4C();
        v79 = *v98;
        (*v98)(v77, v72);
        v79(v70, v72);

        v53 = v78 == 1;
        v26 = v97;
        a2 = v92;
        if (v53)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      }

      (*v98)(v70, v72);
      v26 = v97;
      a2 = v92;
      v63 = v69;
    }

    v75 = v58;
    result = sub_1C70CAC04(v62);
    if (!v80)
    {
      goto LABEL_64;
    }

    v81 = result;
    v82 = v80;
    result = sub_1C70CAC04(v63);
    if (!v83)
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return result;
    }

    if (result == v81 && v83 == v82)
    {
    }

    else
    {
      v85 = sub_1C7551DBC();

      if (v85)
      {
LABEL_51:
        a3 = v75;
        v53 = v75 + 1 == a2;
        a1 = v95;
        a2 = i;
        if (!v53)
        {
          *v75 = *i;
        }

        goto LABEL_27;
      }
    }

LABEL_48:
    a1 = v95;
    if (v26 != (v75 + 1))
    {
      *v75 = *v60;
    }

    v58 = v75 - 1;
    v26 = v60;
    v57 = i;
  }

LABEL_54:
  v86 = (v26 - v101) / 8;
  if (a2 != v101 || a2 >= &v101[8 * v86])
  {
    memmove(a2, v101, 8 * v86);
  }

  return 1;
}

void *sub_1C736ED5C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD30, &unk_1C75845C0);
  result = sub_1C7551AEC();
  v5 = result;
  v6 = 0;
  v26 = a1;
  v27 = result;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v25 = result + 8;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v26 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v30 = *(*(v26 + 56) + 8 * v17);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C736D510(&v30, a2, &v29);
      if (v2)
      {
        break;
      }

      *(v25 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v5 = v27;
      v21 = (v27[6] + 16 * v17);
      *v21 = v19;
      v21[1] = v20;
      *(v27[7] + 8 * v17) = v29;
      v22 = v27[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_18;
      }

      v27[2] = v24;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v5 = v27;

    return v5;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {

        return v5;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

void *sub_1C736EF38(uint64_t a1, void *a2)
{
  v4 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      a2 = sub_1C7285C54(v10, v6, v4, a2);
      MEMORY[0x1CCA5F8E0](v10, -1, -1);
      return a2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v7 = v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v6, v7);
  v8 = sub_1C7285AD4(v7, v6, v4, a2);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return a2;
}

void *sub_1C736F0A8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), void *a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_1C736F3A0(v12, v8, v6, a2);
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      return a3;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v9 = v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v8, v9);
  sub_1C736F22C(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

void sub_1C736F22C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);
    sub_1C75504FC();
    sub_1C75504FC();
    v18 = a4(v15, v16, v17);

    if (v18)
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C7484B68(result, a2, v22, a3);
        return;
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

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1C736F3A0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
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

    sub_1C736F22C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1C736F444(void *a1)
{
  v1 = [a1 subtitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

uint64_t sub_1C736F4A8(uint64_t a1, void *a2)
{
  v3 = sub_1C7550F7C();
  v4 = [a2 localIdentifiersWithUUIDs_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1C7550F8C();

  return v5;
}

uint64_t sub_1C736F53C(uint64_t a1, uint64_t a2)
{
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  (*(*(TokenSuggestion - 8) + 32))(a2, a1, TokenSuggestion);
  return a2;
}

uint64_t sub_1C736F5A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C73D9134(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_1C736F5E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C736F638(uint64_t a1, uint64_t a2)
{
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  (*(*(TokenSuggestion - 8) + 40))(a2, a1, TokenSuggestion);
  return a2;
}

uint64_t OUTLINED_FUNCTION_63_20()
{

  return sub_1C75504FC();
}

id OUTLINED_FUNCTION_75_14(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C7164AD8(a1, a2, a3, 0, 0);
}

void OUTLINED_FUNCTION_81_18()
{

  sub_1C6FB20F8();
}

void OUTLINED_FUNCTION_101_14()
{

  sub_1C716D7D8(0, v0, 0);
}

void *OUTLINED_FUNCTION_102_12()
{
  *(v0 + 16) = v1;

  return memcpy((v0 + v3 * v2 + 32), (v4 - 208), 0x78uLL);
}

uint64_t OUTLINED_FUNCTION_103_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);

  return sub_1C7364090(va, v26, v25, &a11);
}

uint64_t OUTLINED_FUNCTION_107_10()
{

  return sub_1C6FCA6E4(v1 - 216, v0 + 320);
}

uint64_t OUTLINED_FUNCTION_109_12()
{
}

uint64_t OUTLINED_FUNCTION_110_9()
{
}

uint64_t OUTLINED_FUNCTION_130_6(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  *(result + 12) = 2048;
  return result;
}

void OUTLINED_FUNCTION_131_5()
{
  *(v0 + 520) = 257;
  *(v0 + 528) = 0;
  *(v0 + 536) = 0;
}

double OUTLINED_FUNCTION_132_8()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_133_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[72] = a3;
  v3[71] = a2;
  v3[70] = a1;

  return sub_1C754F38C();
}

uint64_t OUTLINED_FUNCTION_134_10(uint64_t a1, uint64_t a2)
{

  return sub_1C754F1CC();
}

void *OUTLINED_FUNCTION_138_5(void *a1)
{

  return memcpy(a1, v1, 0x78uLL);
}

void OUTLINED_FUNCTION_139_4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_140_7(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

void *OUTLINED_FUNCTION_141_7(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va1, a25);
  va_start(__srca, a25);
  __src = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);

  return memcpy(a1, __srca, 0x78uLL);
}

uint64_t OUTLINED_FUNCTION_142_3()
{

  return sub_1C6FCA6E4(v0 + 16, v0 + 136);
}

double static LLMConfigurationProvider.configuration(for:logger:)@<D0>(char *a1@<X0>, _BYTE *a2@<X8>, uint64_t a3@<X1>)
{
  v41 = a2;
  v4 = 1701736302;
  *&v49 = sub_1C754FA7C();
  OUTLINED_FUNCTION_3_0();
  v47 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  *&v57[0] = sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v15 = v14 - v13;
  v16 = *a1;
  LOBYTE(v62) = byte_1C75853B2[v16];
  v17 = v62;
  static LLMConfiguration.locale(for:)(&v62);
  LOBYTE(v62) = v16;
  v43 = static LLMConfiguration.modelCatalogResourceID(for:)(&v62);
  *(&v49 + 1) = v18;
  v25 = 0xE400000000000000;
  switch(v17)
  {
    case 2:
      if ([objc_opt_self() useGlobalTraitsV3])
      {
        v4 = 0xD000000000000025;
        v25 = 0x80000001C75ABBC0;
      }

      else
      {
        OUTLINED_FUNCTION_5_80();
        v4 = v40 + 22;
      }

      break;
    case 3:
      OUTLINED_FUNCTION_5_80();
      v4 = v38 + 20;
      break;
    case 4:
      OUTLINED_FUNCTION_5_80();
      v4 = v39 + 23;
      break;
    default:
      break;
  }

  v45 = v4;
  v26 = byte_1C75853C6[v16];
  BYTE8(v57[0]) = v16;
  static LLMConfiguration.samplingParameters(for:)(v57 + 8, v18, v19, v20, v21, v22, v23, v24, v41, v43, v45, v47, v49, a3, v54, v57[0], v57[1], v58, v59, v60, v61, v62, *(&v62 + 1), v63, *(&v63 + 1), *&v64[0], *(&v64[0] + 1), *&v64[1], *(&v64[1] + 1), v65, v66, v67[0], v67[1], v67[2]);
  v28 = v27;
  type metadata accessor for LLMWrapperUtils();
  HIBYTE(v67[0]) = v26;
  static LLMWrapperUtils.samplingParameters(for:parameters:)(v67 + 7, v28, v57 + 8);

  static LLMWrapperUtils.samplingParametersWithRandomSeedIfNotSet(from:logger:)(v57 + 1, &v62);
  BYTE8(v57[0]) = v16;
  static LLMConfiguration.promptTemplate(for:)(v57 + 8);
  if (v55)
  {
    (*(v11 + 8))(v15, *&v57[0]);
  }

  else
  {
    BYTE8(v57[0]) = v16;
    v30 = static LLMConfiguration.promptTemplateID(for:)(v57 + 8);
    v53 = v31;
    v56 = v30;
    v32 = type metadata accessor for LLMConfiguration(0);
    (*(v48 + 32))(&v42[v32[6]], v9, v50);
    (*(v11 + 32))(&v42[v32[11]], v15, *&v57[0]);
    *v42 = v16;
    v42[1] = v17;
    v33 = &v42[v32[7]];
    *v33 = v56;
    v33[1] = v53;
    v34 = &v42[v32[8]];
    *v34 = v44;
    v34[1] = v51;
    v35 = &v42[v32[9]];
    *v35 = v46;
    v35[1] = v25;
    v36 = &v42[v32[10]];
    v37 = v63;
    *v36 = v62;
    v36[1] = v37;
    v36[2] = v64[0];
    result = *(v64 + 9);
    *(v36 + 41) = *(v64 + 9);
  }

  return result;
}

uint64_t LLMConfiguration.description.getter()
{
  v1 = sub_1C754FA7C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v7 = v6 - v5;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x79546C65646F6D09, 0xEC000000203A6570);
  LLMModelType.description.getter();
  MEMORY[0x1CCA5CD70](v8);

  MEMORY[0x1CCA5CD70](0xD00000000000001DLL, 0x80000001C75AC530);
  v9 = sub_1C75506EC();
  MEMORY[0x1CCA5CD70](v9);

  MEMORY[0x1CCA5CD70](0xD000000000000015, 0x80000001C75A4E10);
  v10 = type metadata accessor for LLMConfiguration(0);
  (*(v3 + 16))(v7, v0 + v10[6], v1);
  v11 = sub_1C75506EC();
  MEMORY[0x1CCA5CD70](v11);

  MEMORY[0x1CCA5CD70](0xD000000000000017, 0x80000001C75AC550);
  v12 = OUTLINED_FUNCTION_16_58(v10[7]);
  MEMORY[0x1CCA5CD70](v12);
  MEMORY[0x1CCA5CD70](0xD00000000000001DLL, 0x80000001C75AC570);
  v13 = OUTLINED_FUNCTION_16_58(v10[8]);
  MEMORY[0x1CCA5CD70](v13);
  MEMORY[0x1CCA5CD70](0xD000000000000013, 0x80000001C75AC590);
  v14 = OUTLINED_FUNCTION_16_58(v10[9]);
  MEMORY[0x1CCA5CD70](v14);
  MEMORY[0x1CCA5CD70](0x636F6C202020200ALL, 0xED0000203A656C61);
  v15 = sub_1C754E04C();
  MEMORY[0x1CCA5CD70](v15);

  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75AC5B0);
  sub_1C75519EC();
  return 0;
}

unint64_t static LLMConfiguration.pegasusModelName(for:)(_BYTE *a1)
{
  result = 1701736302;
  switch(*a1)
  {
    case 2:
      if ([objc_opt_self() useGlobalTraitsV3])
      {
        result = 0xD000000000000025;
      }

      else
      {
        result = 0xD00000000000003BLL;
      }

      break;
    case 3:
      result = 0xD000000000000039;
      break;
    case 4:
      result = 0xD00000000000003CLL;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_1C73700E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AEC0, &qword_1C75853A0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AEC8, &qword_1C75853A8);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C7576D70;
  v4 = v3 + v2;
  v5 = *(v0 + 48);
  *(v3 + v2) = 16;
  if (qword_1EDD07A60 != -1)
  {
    swift_once();
  }

  v6 = sub_1C754FDEC();
  v7 = __swift_project_value_buffer(v6, qword_1EDD289A8);
  v8 = *(*(v6 - 8) + 16);
  v8(v4 + v5, v7, v6);
  v9 = *(v0 + 48);
  *(v4 + v1) = 14;
  v10 = objc_opt_self();
  if ([v10 useGlobalTraitsV3])
  {
    if (qword_1EDD07CD8 != -1)
    {
      OUTLINED_FUNCTION_4_87(&qword_1EDD07CD8);
    }

    v11 = __swift_project_value_buffer(v6, qword_1EDD289F0);
    v8(v4 + v1 + v9, v11, v6);
  }

  else
  {
    sub_1C7550BCC();
  }

  v12 = (v4 + 2 * v1);
  v13 = *(v0 + 48);
  *v12 = 17;
  if ([v10 useGlobalTraitsV3])
  {
    if (qword_1EDD07CD8 != -1)
    {
      OUTLINED_FUNCTION_4_87(&qword_1EDD07CD8);
    }

    v14 = __swift_project_value_buffer(v6, qword_1EDD289F0);
    v8(&v12[v13], v14, v6);
  }

  else
  {
    sub_1C7550BCC();
  }

  v15 = OUTLINED_FUNCTION_11_64((v4 + 3 * v1));
  (v8)(v15);
  v16 = OUTLINED_FUNCTION_11_64((v4 + 4 * v1));
  (v8)(v16);
  *(v4 + 5 * v1) = 13;
  sub_1C7550BCC();
  *(v4 + 6 * v1) = 19;
  sub_1C7550BCC();
  *(v4 - v1 + 8 * v1) = 18;
  sub_1C75507BC();
  sub_1C70AEC20();
  result = sub_1C75504DC();
  off_1EC21AE90 = result;
  return result;
}

uint64_t static LLMConfiguration.responseSchemaByModelType.getter()
{
  if (qword_1EDD0B640 != -1)
  {
    swift_once();
  }

  return sub_1C75504FC();
}

uint64_t LLMConfiguration.promptTemplate.getter()
{
  v0 = OUTLINED_FUNCTION_422();
  type metadata accessor for LLMConfiguration(v0);
  sub_1C754FA7C();
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_10_68();

  return v2(v1);
}

uint64_t LLMConfiguration.promptTemplateID.getter()
{
  type metadata accessor for LLMConfiguration(0);
  OUTLINED_FUNCTION_22_2();
  return OUTLINED_FUNCTION_90();
}

uint64_t LLMConfiguration.modelCatalogResourceID.getter()
{
  type metadata accessor for LLMConfiguration(0);
  OUTLINED_FUNCTION_22_2();
  return OUTLINED_FUNCTION_90();
}

uint64_t LLMConfiguration.pegasusModelName.getter()
{
  type metadata accessor for LLMConfiguration(0);
  OUTLINED_FUNCTION_22_2();
  return OUTLINED_FUNCTION_90();
}

__n128 LLMConfiguration.llmSamplingParameters.getter()
{
  v2 = OUTLINED_FUNCTION_422();
  v3 = v1 + *(type metadata accessor for LLMConfiguration(v2) + 40);
  v4 = *(v3 + 16);
  *v0 = *v3;
  *(v0 + 16) = v4;
  *(v0 + 32) = *(v3 + 32);
  result = *(v3 + 41);
  *(v0 + 41) = result;
  return result;
}

uint64_t LLMConfiguration.locale.getter()
{
  v0 = OUTLINED_FUNCTION_422();
  type metadata accessor for LLMConfiguration(v0);
  sub_1C754E15C();
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_10_68();

  return v2(v1);
}

uint64_t LLMConfiguration.Error.errorDescription.getter()
{
  sub_1C755180C();

  LLMModelType.description.getter();
  MEMORY[0x1CCA5CD70]();

  MEMORY[0x1CCA5CD70](0xD00000000000001CLL, 0x80000001C75AC5D0);
  return 0x206F742074736143;
}

unint64_t static LLMConfiguration.promptTemplateID(for:)(unsigned __int8 *a1)
{
  v1 = *a1;
  result = 0xD000000000000035;
  switch(v1)
  {
    case 1:
    case 6:
    case 11:
    case 15:
      result = 0xD00000000000002ELL;
      break;
    case 2:
    case 8:
    case 13:
      result = 0xD00000000000002DLL;
      break;
    case 3:
    case 9:
    case 14:
      if ([objc_opt_self() useGlobalTraitsV3])
      {
        result = 0xD000000000000033;
      }

      else
      {
        result = 0xD00000000000002FLL;
      }

      break;
    case 12:
    case 16:
      return result;
    case 17:
      result = 0xD000000000000033;
      break;
    case 18:
      result = 0xD00000000000002BLL;
      break;
    case 19:
      result = 0xD000000000000034;
      break;
    default:
      result = 0xD00000000000001ELL;
      break;
  }

  return result;
}

uint64_t static LLMConfiguration.promptTemplate(for:)(unsigned __int8 *a1)
{
  v3 = sub_1C754E4FC();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = *a1;
  v17 = v10;
  static LLMConfiguration.modelCatalogResourceID(for:)(&v17);
  result = sub_1C754E4EC();
  if (!v1)
  {
    switch(v10)
    {
      case 1:
      case 6:
      case 11:
      case 15:
        goto LABEL_5;
      case 3:
      case 9:
      case 14:
        [objc_opt_self() useGlobalTraitsV3];
LABEL_5:
        v14 = OUTLINED_FUNCTION_0_152();
        v15(v14);
        sub_1C75504DC();
        break;
      default:
        v12 = OUTLINED_FUNCTION_0_152();
        v13(v12);
        sub_1C75504DC();
        OUTLINED_FUNCTION_2_103();
        break;
    }

    sub_1C754FA6C();
    return (*(v5 + 8))(v9, v3);
  }

  return result;
}

void static LLMConfiguration.samplingParameters(for:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  switch(*a1)
  {
    case 1:
    case 6:
      if (qword_1EDD0FC58 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EDD28E20;
      break;
    case 2:
    case 8:
      if (qword_1EDD0FB28 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EDD28E00;
      break;
    case 3:
    case 9:
      if (qword_1EDD0FC48 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EDD28E10;
      break;
    case 4:
    case 7:
      if (qword_1EC214208 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EC25B990;
      break;
    case 0xA:
      if (qword_1EC214200 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EC25B988;
      break;
    case 0xB:
      if (qword_1EDD0FC50 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EDD28E18;
      break;
    case 0xC:
    case 0x10:
      if (qword_1EC214210 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EC25B998;
      break;
    case 0xD:
      if (qword_1EDD0FB20 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EDD28DF8;
      break;
    case 0xE:
    case 0x11:
      if (qword_1EDD0FC40 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EDD28E08;
      break;
    case 0xF:
      if (qword_1EC214218 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EC25B9A0;
      break;
    case 0x12:
      if (qword_1EC214220 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EC25B9A8;
      break;
    case 0x13:
      if (qword_1EC214228 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EC25B9B0;
      break;
    default:
      if (qword_1EC2141F8 != -1)
      {
        swift_once();
      }

      v34 = &qword_1EC25B980;
      break;
  }

  v35 = *v34;

  sub_1C70C00AC(v35, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t static LLMConfiguration.locale(for:)(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219088, &qword_1C75851F0);
  v3 = OUTLINED_FUNCTION_76(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE98, &qword_1C758DBD0);
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A8, &qword_1C757FB70);
  v11 = OUTLINED_FUNCTION_76(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35[-1] - v12;
  v14 = sub_1C754E01C();
  v15 = OUTLINED_FUNCTION_76(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_0();
  v16 = sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14_0();
  v22 = v21 - v20;
  switch(*a1)
  {
    case 1:
      v31 = objc_opt_self();
      v32 = &selRef_queryUnderstandingLocale;
      goto LABEL_9;
    case 2:
      v31 = objc_opt_self();
      v32 = &selRef_globalTraitsLocale;
      goto LABEL_9;
    case 3:
      v31 = objc_opt_self();
      v32 = &selRef_storytellerLocale;
      goto LABEL_9;
    case 4:
    case 6:
      v23 = objc_opt_self();
      sub_1C73715EC(v23, &selRef_assetCurationLocale);
      if (v24)
      {
        goto LABEL_10;
      }

      v25 = sub_1C754E5EC();
      v35[3] = v25;
      v35[4] = sub_1C7371A18(&qword_1EDD0F9B0, MEMORY[0x1E69BDD60], MEMORY[0x1E69BDD10]);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v35);
      (*(*(v25 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x1E69BDD40], v25);
      LOBYTE(v25) = sub_1C754E3AC();
      __swift_destroy_boxed_opaque_existential_1(v35);
      if (v25)
      {
        goto LABEL_13;
      }

      sub_1C754E06C();
      v27 = sub_1C754E07C();
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v27);
      v28 = sub_1C754E0FC();
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v28);
      sub_1C754E0DC();
      v29 = sub_1C754E0EC();
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v29);
      sub_1C754E00C();
      result = sub_1C754E02C();
      break;
    case 5:
      v31 = objc_opt_self();
      v32 = &selRef_titleLocale;
LABEL_9:
      sub_1C73715EC(v31, v32);
      if (!v33)
      {
        goto LABEL_13;
      }

LABEL_10:

      result = sub_1C754E03C();
      break;
    default:
LABEL_13:
      sub_1C754E0AC();
      sub_1C754E04C();
      (*(v18 + 8))(v22, v16);
      result = sub_1C754E03C();
      break;
  }

  return result;
}

uint64_t LLMQUConfiguration.modelCatalogResourceBundleID.getter()
{
  v0 = OUTLINED_FUNCTION_422();
  type metadata accessor for LLMQUConfiguration(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AEA0, &qword_1C75851F8);
  OUTLINED_FUNCTION_12();
  v1 = OUTLINED_FUNCTION_10_68();

  return v2(v1);
}

uint64_t LLMQUConfiguration.pegasusModelName.getter()
{
  type metadata accessor for LLMQUConfiguration(0);
  OUTLINED_FUNCTION_22_2();
  return OUTLINED_FUNCTION_90();
}

uint64_t LLMQUConfiguration.description.getter()
{
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD00000000000003CLL, 0x80000001C75AC6A0);
  MEMORY[0x1CCA5CD70](*v0, v0[1]);
  MEMORY[0x1CCA5CD70](0xD000000000000023, 0x80000001C75AC6E0);
  v1 = type metadata accessor for LLMQUConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AEA0, &qword_1C75851F8);
  sub_1C7371668();
  v2 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v2);

  MEMORY[0x1CCA5CD70](0xD000000000000017, 0x80000001C75AC710);
  v3 = OUTLINED_FUNCTION_16_58(*(v1 + 24));
  MEMORY[0x1CCA5CD70](v3);
  return 0;
}

uint64_t sub_1C73715EC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1C755068C();
  }

  return OUTLINED_FUNCTION_90();
}

unint64_t sub_1C7371668()
{
  result = qword_1EDD0CB60;
  if (!qword_1EDD0CB60)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21AEA0, &qword_1C75851F8);
    result = swift_getWitnessTable(MEMORY[0x1E69B24E8], v3, v0, v1);
    atomic_store(result, &qword_1EDD0CB60);
  }

  return result;
}

unint64_t sub_1C73716D0()
{
  result = qword_1EC21AEA8;
  if (!qword_1EC21AEA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LLMConfiguration.Error, &type metadata for LLMConfiguration.Error, v0, v1);
    atomic_store(result, &qword_1EC21AEA8);
  }

  return result;
}

uint64_t sub_1C737174C(uint64_t a1)
{
  result = sub_1C754FA7C();
  if (v2 <= 0x3F)
  {
    result = sub_1C754E15C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LLMConfiguration.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

void sub_1C7371908(uint64_t a1)
{
  sub_1C7371984(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C7371984(uint64_t a1)
{
  if (!qword_1EDD100B0)
  {
    sub_1C754E51C();
    sub_1C7371A18(&qword_1EDD100A8, MEMORY[0x1E69B2540], MEMORY[0x1E69B2538]);
    v1 = sub_1C754E50C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD100B0);
    }
  }
}

uint64_t sub_1C7371A18(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void static StoryGenerationUtilities.intRangeWithCompleteTokenMatch(of:in:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8, &qword_1C755BFD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v105 = &v103 - v9;
  v109 = sub_1C73740C0(v3, v1);
  v11 = v10;
  v12 = sub_1C73740C0(v7, v5);
  v14 = v13;
  if (qword_1EDD0DBE0 != -1)
  {
    goto LABEL_85;
  }

LABEL_2:
  v15 = sub_1C754FF1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDD28D28);
  sub_1C75504FC();
  sub_1C75504FC();
  v103 = v16;
  v17 = sub_1C754FEEC();
  v18 = sub_1C755117C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = v109;
    *(v19 + 4) = sub_1C6F765A4(v109, v11, &v119);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1C6F765A4(v12, v14, &v119);
    _os_log_impl(&dword_1C6F5C000, v17, v18, "Starting check to see if standardized string: “%s”, contains standardized key: “%s”", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {

    v20 = v109;
  }

  v21 = v20 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v11) & 0xF;
  }

  v22 = 7;
  if (((v11 >> 60) & ((v20 & 0x800000000000000) == 0)) != 0)
  {
    v22 = 11;
  }

  v104 = v21;
  v106 = v22 | (v21 << 16);
  v107 = 4 * v21;
  v23 = 15;
  v108 = v14;
  v24 = v12;
  v25 = v20;
  while (1)
  {
    while (1)
    {
      if (v107 <= v23 >> 14 || (v119 = v25, v120 = v11, v110 = v12, v111 = v14, v26 = sub_1C754E15C(), v27 = v105, __swift_storeEnumTagSinglePayload(v105, 1, 1, v26), v101 = sub_1C6FB5E8C(), v102 = v101, v28 = &v119, v29 = sub_1C755157C(), v23 = v30, v32 = v31, sub_1C7374E0C(v27), (v32 & 1) != 0) || (v29 ^ v23) < 0x4000)
      {
        v67 = sub_1C754E5EC();
        v122 = v67;
        v123 = sub_1C70B881C(v68);
        v69 = __swift_allocate_boxed_opaque_existential_0(&v119);
        (*(*(v67 - 8) + 104))(v69, *MEMORY[0x1E69BDD40], v67);
        LOBYTE(v67) = sub_1C754E3AC();
        __swift_destroy_boxed_opaque_existential_1(&v119);
        if (v67)
        {
          sub_1C7374D84();
          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AED8, &qword_1C75853E0);
          v71 = OUTLINED_FUNCTION_11_2(v70);
          *(v71 + 16) = xmmword_1C755BAB0;
          v72 = *MEMORY[0x1E69779C8];
          *(v71 + 32) = *MEMORY[0x1E69779C8];
          v72;
          v29 = sub_1C73734E0(v71);
          v73 = sub_1C754FEEC();
          v74 = sub_1C755118C();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = 0;
            _os_log_impl(&dword_1C6F5C000, v73, v74, "Starting NLTagger based token matching", v75, 2u);
            OUTLINED_FUNCTION_109();
          }

          v76 = MEMORY[0x1E69E7CC0];
          v118 = MEMORY[0x1E69E7CC0];
          sub_1C6F9EDB0(v12, v14, v29);
          MEMORY[0x1EEE9AC00](v77);
          *(&v103 - 4) = v12;
          *(&v103 - 3) = v14;
          v101 = &v118;
          OUTLINED_FUNCTION_12_65(15, v78);
          if (*(v118 + 16))
          {
            v117 = 0;
            v115 = 0;
            v116 = 1;
            v112 = v76;
            v113 = 0;
            v114 = 1;
            v79 = v109;
            sub_1C6F9EDB0(v109, v11, v29);
            MEMORY[0x1EEE9AC00](v80);
            *(&v103 - 8) = v79;
            *(&v103 - 7) = v11;
            *(&v103 - 6) = &v112;
            *(&v103 - 5) = &v118;
            *(&v103 - 4) = &v117;
            *(&v103 - 3) = &v115;
            v101 = &v113;
            OUTLINED_FUNCTION_12_65(15, v106);
            v28 = v115;
            LOBYTE(v33) = v116;
            if ((v116 & 1) == 0 && v114 != 1)
            {
              v81 = v109;
              goto LABEL_74;
            }

            if (sub_1C7374800(v12, v14, v112))
            {
              v81 = v109;
              v119 = v109;
              v120 = v11;
              v110 = v12;
              v111 = v14;
              v82 = sub_1C754E15C();
              v83 = v105;
              __swift_storeEnumTagSinglePayload(v105, 1, 1, v82);
              v101 = sub_1C6FB5E8C();
              v102 = v101;
              sub_1C755157C();
              v85 = v84;
              sub_1C7374E0C(v83);
              if (v85)
              {

LABEL_77:

                v87 = v81;
                goto LABEL_78;
              }

              v28 = sub_1C75508EC();
              v113 = sub_1C75508EC();
              v114 = 0;
              goto LABEL_74;
            }

LABEL_69:
            v81 = v109;
            if (v33 & 1) != 0 || (v114)
            {
LABEL_76:

              goto LABEL_77;
            }

LABEL_74:
            v88 = v113;
            if (v113 < v28)
            {
              goto LABEL_88;
            }

            v89 = OUTLINED_FUNCTION_154();
            static StoryGenerationUtilities.indexRange(of:from:)(v89, v90, v28, v88);
            if ((v91 & 1) == 0)
            {
              v92 = sub_1C755098C();
              v93 = v14;
              v94 = MEMORY[0x1CCA5CC40](v92);
              v96 = v95;

              v97 = OUTLINED_FUNCTION_154();
              sub_1C737490C(v97, v98, v28, v94, v96);

              v99 = OUTLINED_FUNCTION_154();
              sub_1C73742BC(v99, v100, v12, v93);

              goto LABEL_79;
            }

            goto LABEL_76;
          }

          v87 = v109;
        }

        else
        {
          v87 = v25;
        }

LABEL_78:
        sub_1C73742BC(v87, v11, v12, v14);

        goto LABEL_79;
      }

      v33 = OUTLINED_FUNCTION_13_71();
      v34 = sub_1C75507FC();
      if (v34)
      {
        v35 = v34;
        if (v34 < 1)
        {
          v36 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218248, &qword_1C75710C8);
          v36 = swift_allocObject();
          v37 = _swift_stdlib_malloc_size(v36);
          v36[2] = v35;
          v36[3] = 2 * ((v37 - 32) / 16);
        }

        v119 = v109;
        v120 = v11;
        v14 = v35 & ~(v35 >> 63);
        v121 = 0;
        v122 = v104;
        sub_1C75504FC();
        v12 = 32;
        while (v14)
        {
          v28 = &v119;
          v38 = sub_1C755088C();
          if (!v39)
          {
            goto LABEL_87;
          }

          v40 = (v36 + v12);
          *v40 = v38;
          v40[1] = v39;
          v12 += 16;
          --v14;
          if (!--v35)
          {

            v14 = v108;
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_69;
      }

      v36 = MEMORY[0x1E69E7CC0];
LABEL_23:
      v12 = v33 - 1;
      if (__OFSUB__(v33, 1))
      {
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        OUTLINED_FUNCTION_2_104(&qword_1EDD0DBE0);
        goto LABEL_2;
      }

      v41 = sub_1C75507FC();
      v14 = v33 + v41;
      if (__OFADD__(v33, v41))
      {
        goto LABEL_82;
      }

      sub_1C707E67C();
      v43 = v42;
      sub_1C707E67C();
      v45 = v44;
      if ((v12 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v12 >= v36[2])
      {
        goto LABEL_84;
      }

      v46 = OUTLINED_FUNCTION_52_0();
      if ((sub_1C710D570(v46, v47) & 0x100000000) == 0)
      {
        OUTLINED_FUNCTION_7_75();
        v52 = !v51 & v50 || v49 > 0xFFFFD44F;
        if (v52 || (v48 - 12544) > 0xFFFFFF3F)
        {
          break;
        }
      }

      v53 = OUTLINED_FUNCTION_52_0();
      v55 = sub_1C710D570(v53, v54);
      if ((v55 & 0x100000000) == 0 && ((v55 - 1792) > 0xFFFFFE8F || (v55 - 1920) > 0xFFFFFFCF || (v55 - 2304) > 0xFFFFFF9F))
      {
        break;
      }

      v56 = OUTLINED_FUNCTION_52_0();
      v58 = sub_1C700A1A4(v56, v57, v43);

      v12 = v24;
      if (v58)
      {
        goto LABEL_40;
      }

      v14 = v108;
      v25 = v109;
    }

    v12 = v24;
LABEL_40:
    if (v14 >= v36[2])
    {
      break;
    }

    if (v14 < 0)
    {
      goto LABEL_83;
    }

    v59 = &v36[2 * v14];
    v60 = v59[4];
    v61 = v59[5];
    if ((sub_1C710D570(v60, v61) & 0x100000000) == 0)
    {
      OUTLINED_FUNCTION_7_75();
      v64 = !v51 & v50 || v63 > 0xFFFFD44F;
      if (v64 || (v62 - 12544) > 0xFFFFFF3F)
      {
        break;
      }
    }

    v65 = sub_1C710D570(v60, v61);
    if ((v65 & 0x100000000) == 0 && ((v65 - 1792) > 0xFFFFFE8F || (v65 - 1920) > 0xFFFFFFCF || (v65 - 2304) > 0xFFFFFF9F))
    {
      break;
    }

    v66 = sub_1C700A1A4(v60, v61, v45);

    v14 = v108;
    v25 = v109;
    if (v66)
    {
      goto LABEL_64;
    }
  }

  v14 = v108;
  v25 = v109;
LABEL_64:
  v86 = OUTLINED_FUNCTION_13_71();
  if (sub_1C75508EC() >= v86)
  {
    sub_1C73742BC(v25, v11, v12, v14);

LABEL_79:
    OUTLINED_FUNCTION_25_0();
    return;
  }

  __break(1u);
LABEL_87:

  __break(1u);
LABEL_88:
  __break(1u);
}

unint64_t static StoryGenerationUtilities.indexRange(of:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_153();
  v4 = sub_1C755082C();
  if (v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = sub_1C755082C();
  if ((v8 & 1) != 0 || v7 >> 14 < v6 >> 14)
  {
    return 0;
  }

  return v6;
}

void static StoryGenerationUtilities.lemmatize(text:languageIdentifier:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_0_153();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AED8, &qword_1C75853E0);
  v3 = OUTLINED_FUNCTION_11_2(v2);
  *(v3 + 16) = xmmword_1C755BAB0;
  v4 = *MEMORY[0x1E69779C0];
  *(v3 + 32) = *MEMORY[0x1E69779C0];
  v5 = objc_allocWithZone(MEMORY[0x1E6977A80]);
  type metadata accessor for NLTagScheme(0);
  v4;
  v6 = sub_1C7550B3C();

  v7 = [v5 initWithTagSchemes_];

  v8 = OUTLINED_FUNCTION_0_11();
  sub_1C6F9EDB0(v8, v9, v7);
  if (v1)
  {
    v11 = sub_1C755065C();
    v12 = sub_1C755068C();
    v14 = v13;
    if (v12 == sub_1C755068C() && v14 == v15)
    {
    }

    else
    {
      v17 = sub_1C7551DBC();

      if ((v17 & 1) == 0)
      {
        sub_1C755138C();
      }
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v10);
  sub_1C755139C();
  v18 = *(v21 + 16);
  if (v18)
  {
    sub_1C75504FC();
    v19 = v18 - 1;
    v20 = v21 + 32 * v18 + 16;
    while (v19 < *(v21 + 16))
    {
      v20 -= 32;
      sub_1C7374E7C();
      sub_1C755074C();
      if (--v19 == -1)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
  }

  sub_1C75504FC();

LABEL_15:
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_25_0();
}

void static StoryGenerationUtilities.removeEmojis(from:)()
{
  OUTLINED_FUNCTION_126();
  v0 = sub_1C75507FC();
  if (!v0)
  {
LABEL_8:
    v9 = OUTLINED_FUNCTION_90();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    sub_1C7099594(&qword_1EDD06AC0, &unk_1EC21A3D8, &qword_1C75800C0, MEMORY[0x1E69E6328]);
    sub_1C755096C();
    return;
  }

  v1 = v0;
  v11 = MEMORY[0x1E69E7CC0];
  sub_1C716D8D4();
  if ((v1 & 0x8000000000000000) == 0)
  {
    do
    {
      OUTLINED_FUNCTION_154();
      v2 = sub_1C755095C();
      v4 = v3;
      v5 = sub_1C755065C();
      IsSingleEmoji = CEMStringIsSingleEmoji();

      if (IsSingleEmoji)
      {

        v4 = 0xE100000000000000;
        v2 = 32;
      }

      v7 = *(v11 + 16);
      if (v7 >= *(v11 + 24) >> 1)
      {
        sub_1C716D8D4();
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = v2;
      *(v8 + 40) = v4;
      OUTLINED_FUNCTION_154();
      sub_1C755080C();
      --v1;
    }

    while (v1);
    goto LABEL_8;
  }

  __break(1u);
}

unint64_t static StoryGenerationUtilities.substring(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_153();
  result = sub_1C755090C();
  if (v7)
  {
    return OUTLINED_FUNCTION_90();
  }

  if (__OFADD__(a3, a4))
  {
    __break(1u);
  }

  else
  {
    sub_1C755090C();
    if (v8)
    {
      return OUTLINED_FUNCTION_90();
    }

    sub_1C75504FC();
    v9 = sub_1C75507EC();
    if (v10)
    {
      return OUTLINED_FUNCTION_90();
    }

    v11 = v9;
    sub_1C75504FC();
    result = sub_1C75507EC();
    if (v12)
    {
      return OUTLINED_FUNCTION_90();
    }

    if (result >> 14 >= v11 >> 14)
    {
      v13 = sub_1C755098C();
      MEMORY[0x1CCA5CC40](v13);

      return OUTLINED_FUNCTION_90();
    }
  }

  __break(1u);
  return result;
}

uint64_t static StoryGenerationUtilities.isRangeInsideOrEqual(targetRange:ranges:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = __OFADD__(result, a2);
  for (i = (a3 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    if (v6 > result)
    {
      goto LABEL_10;
    }

    if (v4)
    {
      break;
    }

    v7 = __OFADD__(v6, *i);
    v8 = v6 + *i;
    if (v7)
    {
      goto LABEL_14;
    }

    if (v8 >= result + a2)
    {
      return 1;
    }

LABEL_10:
    if (!--v3)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t static StoryGenerationUtilities.removeSpecialCharacters(from:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C754D84C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C754D7CC();
  v18[0] = a1;
  v18[1] = a2;
  sub_1C754D83C();
  sub_1C6FB5E8C();
  v11 = sub_1C755151C();
  v12 = *(v6 + 8);
  v12(v9, v4);
  v18[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  OUTLINED_FUNCTION_0_118();
  sub_1C7099594(v13, &unk_1EC217A00, &qword_1C755BD70, v14);
  v15 = sub_1C75505FC();

  v16 = OUTLINED_FUNCTION_0_11();
  (v12)(v16);
  return v15;
}

uint64_t static StoryGenerationUtilities.capitalize(_:)()
{
  OUTLINED_FUNCTION_126();
  sub_1C75504FC();
  sub_1C7033D84(1, v1, v0);
  sub_1C721AA20();
  v2 = sub_1C755153C();

  sub_1C75504FC();
  sub_1C70CE56C(1uLL, v1, v0);
  sub_1C70D3F24();
  sub_1C75504FC();
  sub_1C755083C();

  return v2;
}

void static StoryGenerationUtilities.removeRedundantWhiteSpaces(_:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C754D84C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v3;
  v43 = v1;
  sub_1C754D7FC();
  v39 = sub_1C6FB5E8C();
  v10 = sub_1C755151C();
  v11 = *(v6 + 8);
  v40 = v4;
  v38 = v6 + 8;
  v12 = v11;
  v11(v9, v4);
  v13 = 0;
  v14 = *(v10 + 16);
  v15 = v10 + 40;
  v36 = v10 + 40;
  v37 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = (v15 + 16 * v13); ; i += 2)
  {
    if (v14 == v13)
    {

      v42 = v37;
      v32 = OUTLINED_FUNCTION_90();
      __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
      OUTLINED_FUNCTION_0_118();
      sub_1C7099594(v34, &unk_1EC217A00, &qword_1C755BD70, v35);
      sub_1C75505FC();

      OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_25_0();
      return;
    }

    if (v13 >= *(v10 + 16))
    {
      break;
    }

    v18 = *(i - 1);
    v17 = *i;
    v42 = v18;
    v43 = v17;
    sub_1C75504FC();
    sub_1C754D7FC();
    v19 = sub_1C755154C();
    v21 = v20;
    v12(v9, v40);

    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v23 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6F7ED9C(0, *(v23 + 16) + 1, 1, v25, v26, v27, v28);
        v23 = v41;
      }

      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1C6F7ED9C(v29 > 1, v30 + 1, 1, v25, v26, v27, v28);
        v23 = v41;
      }

      ++v13;
      *(v23 + 16) = v30 + 1;
      v37 = v23;
      v31 = v23 + 16 * v30;
      *(v31 + 32) = v18;
      *(v31 + 40) = v17;
      v15 = v36;
      goto LABEL_2;
    }

    ++v13;
  }

  __break(1u);
}

uint64_t static StoryGenerationUtilities.chunk<A, B>(items:chunkSize:processChunk:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1C7550BFC();
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AEE8, &unk_1C75853F0);
    sub_1C7099594(&qword_1EC21AEF0, &qword_1EC21AEE8, &unk_1C75853F0, MEMORY[0x1E69E7C28]);
    return sub_1C75509CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1C73731A0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void (*a4)(void)@<X3>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v7 = *result;
  v8 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = sub_1C7550BFC();
    if (result >= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = result;
    }

    if (v12 >= v7)
    {
      v17 = sub_1C7550C5C();
      v18 = v13;
      v19 = v14;
      v20 = v15;
      v16 = sub_1C75515DC();
      swift_getWitnessTable(MEMORY[0x1E69E6968], v16, v17, v18, v19, v20);
      sub_1C7550C4C();
      a4();

      return __swift_storeEnumTagSinglePayload(a7, 0, 1, a6);
    }
  }

  __break(1u);
  return result;
}

uint64_t static StoryGenerationUtilities.sanitize(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8, &qword_1C755BFD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  v9[0] = a1;
  v9[1] = a2;
  v7 = sub_1C754E15C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  sub_1C6FB5E8C();
  sub_1C755159C();
  sub_1C7374E0C(v6);
  return OUTLINED_FUNCTION_90();
}

uint64_t static StoryGenerationUtilities.tokenize(_:)(uint64_t a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7CC0];
  v4 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  sub_1C6F9EDB0(a1, a2, v4);
  sub_1C755111C();

  return v6;
}

uint64_t sub_1C7373468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = sub_1C755098C();
  v8 = MEMORY[0x1CCA5CC40](v7);
  v10 = v9;

  sub_1C6FB0600();
  v11 = *(*a6 + 16);
  sub_1C6FB0EFC();
  v12 = *a6;
  *(v12 + 16) = v11 + 1;
  v13 = v12 + 16 * v11;
  *(v13 + 32) = v8;
  *(v13 + 40) = v10;
  return 1;
}

id sub_1C73734E0(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NLTagScheme(0);
  v2 = sub_1C7550B3C();

  v3 = [v1 initWithTagSchemes_];

  return v3;
}

uint64_t sub_1C7373558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a1)
  {
    v7 = sub_1C755068C();
    v9 = v8;
    sub_1C6FB0DE8();
    v10 = *(*a4 + 16);
    sub_1C6FB1634(v10, v11, v12, v13, v14, v15, v16);
    v17 = *a4;
    *(v17 + 16) = v10 + 1;
    v18 = (v17 + 32 * v10);
    v18[4] = a2;
    v18[5] = a3;
    v18[6] = v7;
    v18[7] = v9;
  }

  return 1;
}

uint64_t static StoryGenerationUtilities.removeStopwords(in:)()
{
  OUTLINED_FUNCTION_126();
  sub_1C7374D84();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AED8, &qword_1C75853E0);
  v1 = OUTLINED_FUNCTION_11_2(v0);
  *(v1 + 16) = xmmword_1C755BAB0;
  v2 = *MEMORY[0x1E69779C8];
  *(v1 + 32) = *MEMORY[0x1E69779C8];
  v3 = v2;
  v4 = sub_1C73734E0(v1);
  v5 = OUTLINED_FUNCTION_0_11();
  sub_1C6F9EDB0(v5, v6, v4);
  v17 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AEF8, &qword_1C75853E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755F060;
  v8 = *MEMORY[0x1E6977938];
  v9 = *MEMORY[0x1E6977948];
  *(inited + 32) = *MEMORY[0x1E6977938];
  *(inited + 40) = v9;
  v10 = *MEMORY[0x1E6977980];
  v11 = *MEMORY[0x1E69779A8];
  *(inited + 48) = *MEMORY[0x1E6977980];
  *(inited + 56) = v11;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  sub_1C707F640(inited);
  sub_1C755139C();

  return v17;
}

uint64_t sub_1C7373788(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (a1)
  {
    v9 = a1;
    if (sub_1C700A700(v9, a4))
    {
    }

    else
    {
      v10 = sub_1C755098C();
      v11 = MEMORY[0x1CCA5CC40](v10);
      v13 = v12;

      sub_1C6FB0600();
      v14 = *(*a7 + 16);
      sub_1C6FB0EFC();

      v15 = *a7;
      *(v15 + 16) = v14 + 1;
      v16 = v15 + 16 * v14;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }
  }

  return 1;
}

void static StoryGenerationUtilities.removePossessivePronouns(in:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  sub_1C754D84C();
  OUTLINED_FUNCTION_3_0();
  v46 = v5;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C7374D84();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AED8, &qword_1C75853E0);
  v8 = OUTLINED_FUNCTION_11_2(v7);
  *(v8 + 16) = xmmword_1C755BAB0;
  v9 = *MEMORY[0x1E69779C8];
  *(v8 + 32) = *MEMORY[0x1E69779C8];
  v10 = v9;
  v11 = sub_1C73734E0(v8);
  sub_1C6F9EDB0(v3, v1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C75604F0;
  sub_1C754F28C();
  *(v12 + 32) = sub_1C754F26C();
  *(v12 + 40) = v13;
  *(v12 + 48) = sub_1C754F26C();
  *(v12 + 56) = v14;
  v55 = MEMORY[0x1E69E7CC0];
  v15 = v3;
  v50 = v3;
  v51 = v1;
  v52 = v12;
  v53 = &v55;
  v49 = v11;
  sub_1C755139C();
  v16 = v55;
  v17 = *(v55 + 16);
  v48 = v15;
  if (v17)
  {
    sub_1C75504FC();
    v18 = (v16 + 16 * v17 + 24);
    v19 = &selRef_addingKeyAssetForObject_toAssets_options_;
    v20 = v1;
    while (v17 <= *(v16 + 16))
    {
      --v17;
      v22 = *(v18 - 1);
      v21 = *v18;
      v23 = sub_1C755065C();

      v24 = sub_1C755065C();
      v25 = [v23 stringByReplacingCharactersInRange:v22 withString:{v21, v24}];

      v26 = sub_1C755068C();
      v20 = v27;

      v18 -= 2;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1C75504FC();
    v26 = v15;
    v20 = v1;
LABEL_5:
    v54[0] = v26;
    v54[1] = v20;
    v28 = v45;
    sub_1C754D7FC();
    sub_1C6FB5E8C();
    v19 = sub_1C755154C();
    v30 = v29;
    (*(v46 + 8))(v28, v47);

    v20 = v48;
    v31 = v19 == v48 && v30 == v1;
    if (v31 || (OUTLINED_FUNCTION_52_0(), (sub_1C7551DBC() & 1) != 0))
    {

      goto LABEL_18;
    }
  }

  if (qword_1EDD0DBE0 != -1)
  {
    OUTLINED_FUNCTION_2_104(&qword_1EDD0DBE0);
  }

  v32 = sub_1C754FF1C();
  __swift_project_value_buffer(v32, qword_1EDD28D28);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v33 = sub_1C754FEEC();
  v34 = sub_1C755117C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v54[0] = v46;
    *v35 = 136315650;
    v36 = MEMORY[0x1CCA5D090](v12, MEMORY[0x1E69E6158]);
    v47 = v19;
    v37 = v20;
    v39 = v38;

    v40 = sub_1C6F765A4(v36, v39, v54);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_1C6F765A4(v37, v1, v54);
    *(v35 + 22) = 2080;
    v41 = OUTLINED_FUNCTION_52_0();
    *(v35 + 24) = sub_1C6F765A4(v41, v42, v43);
    _os_log_impl(&dword_1C6F5C000, v33, v34, "Removed possessive pronouns %s in %s = %s", v35, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

LABEL_18:
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C7373D70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v10 = sub_1C755098C();
  MEMORY[0x1CCA5CC40](v10);

  v11 = sub_1C75506FC();
  v13 = v12;

  if (qword_1EDD0DBE0 != -1)
  {
    swift_once();
  }

  v14 = sub_1C754FF1C();
  __swift_project_value_buffer(v14, qword_1EDD28D28);
  v15 = a1;
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  v17 = sub_1C755118C();

  if (os_log_type_enabled(v16, v17))
  {
    v38 = a7;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v40 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_1C6F765A4(v11, v13, &v40);
    *(v18 + 12) = 2080;
    if (a1)
    {
      v20 = sub_1C755068C();
      v22 = v21;
    }

    else
    {
      v22 = 0xE700000000000000;
      v20 = 0x6E776F6E6B6E75;
    }

    v24 = sub_1C6F765A4(v20, v22, &v40);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_1C6F5C000, v16, v17, "Word %s is tagged as %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v19, -1, -1);
    MEMORY[0x1CCA5F8E0](v18, -1, -1);

    a7 = v38;
  }

  else
  {
  }

  v40 = v11;
  v41 = v13;
  MEMORY[0x1EEE9AC00](v23);
  v25 = sub_1C70735F4();

  if (v25)
  {
    v40 = a2;
    v41 = a3;
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217628, &qword_1C756AEC8);
    sub_1C7099594(&qword_1EC217630, &qword_1EC217628, &qword_1C756AEC8, MEMORY[0x1E69E66D8]);
    sub_1C6FB5E8C();
    v26 = sub_1C755143C();
    v28 = v27;
    sub_1C6FB080C();
    v29 = *(*a7 + 16);
    sub_1C6FB1098(v29, v30, v31, v32, v33, v34);
    v35 = *a7;
    *(v35 + 16) = v29 + 1;
    v36 = v35 + 16 * v29;
    *(v36 + 32) = v26;
    *(v36 + 40) = v28;
  }

  return 1;
}

uint64_t sub_1C73740C0(uint64_t a1, uint64_t a2)
{
  sub_1C6FB5E8C();
  sub_1C755155C();
  sub_1C755155C();

  sub_1C755155C();

  sub_1C755155C();

  v2 = sub_1C755155C();

  return v2;
}

void sub_1C73742BC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_1EDD0DBE0 != -1)
  {
    swift_once();
  }

  v8 = sub_1C754FF1C();
  __swift_project_value_buffer(v8, qword_1EDD28D28);
  sub_1C75504FC();
  sub_1C75504FC();
  oslog = sub_1C754FEEC();
  v9 = sub_1C755117C();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1C6F765A4(a1, a2, &v13);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1C6F765A4(a3, a4, &v13);
    _os_log_impl(&dword_1C6F5C000, oslog, v9, "Ending check to see if standardized string: “%s” contains standardized key: “%s”", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v11, -1, -1);
    MEMORY[0x1CCA5F8E0](v10, -1, -1);
  }
}

uint64_t static StoryGenerationUtilities.intRange(of:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1C75508EC();
  result = sub_1C75508EC();
  if (result >= v4)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C73744D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v7 = sub_1C755068C();
  v9 = v8;
  if (v7 == sub_1C755068C() && v9 == v10)
  {

    return 1;
  }

  v12 = sub_1C7551DBC();

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = sub_1C755098C();
    v14 = MEMORY[0x1CCA5CC40](v13);
    v16 = v15;

    sub_1C6FB0600();
    v17 = *(*a6 + 16);
    sub_1C6FB0EFC();
    v18 = *a6;
    *(v18 + 16) = v17 + 1;
    v19 = v18 + 16 * v17;
    *(v19 + 32) = v14;
    *(v19 + 40) = v16;
  }

  return 1;
}

void sub_1C73745E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, unint64_t *a8, uint64_t a9, uint64_t a10)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v13 = sub_1C755068C();
  v15 = v14;
  if (v13 == sub_1C755068C() && v15 == v16)
  {

    return;
  }

  v18 = sub_1C7551DBC();

  if ((v18 & 1) == 0)
  {
LABEL_7:
    v19 = sub_1C755098C();
    v20 = MEMORY[0x1CCA5CC40](v19);
    v22 = v21;

    sub_1C75504FC();
    sub_1C6FB0600();
    v23 = *(*a6 + 16);
    sub_1C6FB0EFC();
    v24 = *a6;
    *(v24 + 16) = v23 + 1;
    v25 = v24 + 16 * v23;
    *(v25 + 32) = v20;
    *(v25 + 40) = v22;
    v26 = *a8;
    if ((*a8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v26 < *(*a7 + 16))
    {
      v27 = *a7 + 16 * v26;
      if (v20 == *(v27 + 32) && v22 == *(v27 + 40))
      {
      }

      else
      {
        v29 = sub_1C7551DBC();

        if ((v29 & 1) == 0)
        {
          *a8 = 0;
          *a9 = 0;
          *(a9 + 8) = 1;
          return;
        }
      }

      v30 = *a8;
      if (!*a8)
      {
        *a9 = sub_1C75508EC();
        *(a9 + 8) = 0;
        v30 = *a8;
      }

      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (!v31)
      {
        *a8 = v32;
        if (v32 == *(*a7 + 16))
        {
          *a10 = sub_1C75508EC();
          *(a10 + 8) = 0;
        }

        return;
      }

LABEL_25:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_25;
  }
}

uint64_t sub_1C7374800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = (a3 + 40);
  v8 = v3 + 1;
  while (2)
  {
    v15 = v6 + 1;
    v9 = v8;
    v10 = v7;
    while (--v9)
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v11, v12);

      if (a1)
      {
        v13 = 0;
      }

      else
      {
        v13 = a2 == 0xE000000000000000;
      }

      if (!v13)
      {
        v10 += 2;
        if ((sub_1C7551DBC() & 1) == 0)
        {
          continue;
        }
      }

      return 1;
    }

    result = 0;
    v7 += 2;
    --v8;
    v6 = v15;
    if (v15 != v3)
    {
      continue;
    }

    break;
  }

  return result;
}

uint64_t sub_1C737490C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1C7374BAC(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  result = swift_initStackObject();
  *(result + 16) = xmmword_1C755F060;
  *(result + 32) = 93;
  *(result + 40) = 0xE100000000000000;
  *(result + 48) = 41;
  *(result + 56) = 0xE100000000000000;
  *(result + 64) = 125;
  *(result + 72) = 0xE100000000000000;
  *(result + 80) = 37;
  *(result + 88) = 0xE100000000000000;
  v8 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    swift_setDeallocating();
    sub_1C6FDC9DC();
  }

  else
  {
    if (v8 >= v6[2])
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    MEMORY[0x1EEE9AC00](result);
    sub_1C75504FC();
    v9 = sub_1C70735F4();
    swift_setDeallocating();
    sub_1C6FDC9DC();

    if (v9)
    {

      v10 = 0;
      return v10 & 1;
    }
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755F060;
  *(inited + 32) = 91;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = 40;
  *(inited + 56) = 0xE100000000000000;
  *(inited + 64) = 123;
  *(inited + 72) = 0xE100000000000000;
  *(inited + 80) = 37;
  *(inited + 88) = 0xE100000000000000;
  result = sub_1C75507FC();
  v12 = a3 + result;
  if (__OFADD__(a3, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 >= v6[2])
  {

    swift_setDeallocating();
    sub_1C6FDC9DC();
    v10 = 1;
    return v10 & 1;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    sub_1C75504FC();

    MEMORY[0x1EEE9AC00](v13);
    v14 = sub_1C70735F4();
    swift_setDeallocating();
    sub_1C6FDC9DC();

    v10 = !v14;
    return v10 & 1;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t static StoryGenerationUtilities.intRange(from:)(uint64_t result, uint64_t a2)
{
  v2 = __OFADD__(result, a2);
  v3 = result + a2;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (v3 < result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void *sub_1C7374BAC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C75507FC();
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = sub_1C7374D08(v4, 0);
  sub_1C75504FC();
  v7 = sub_1C7374C3C(&v9, v6 + 4, v5, a1, a2);

  if (v7 != v5)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

uint64_t sub_1C7374C3C(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
    v10 = 0;
LABEL_15:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v10;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      result = sub_1C755088C();
      if (!v12)
      {
        a4 = v13;
        a5 = v14;
        goto LABEL_14;
      }

      *v9 = result;
      v9[1] = v12;
      v9 += 2;
      ++v10;
      if (v11 == a3)
      {
        a4 = v13;
        a5 = v14;
        v10 = a3;
LABEL_14:
        v7 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C7374D08(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218248, &qword_1C75710C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

unint64_t sub_1C7374D84()
{
  result = qword_1EC21AED0;
  if (!qword_1EC21AED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC21AED0);
  }

  return result;
}

uint64_t sub_1C7374E0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8, &qword_1C755BFD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C7374E7C()
{
  result = qword_1EC21AEE0;
  if (!qword_1EC21AEE0)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E6198], MEMORY[0x1E69E6158], v0, v1);
    atomic_store(result, &qword_1EC21AEE0);
  }

  return result;
}

void static AssetClusteringUtilities.chunk<A>(array:into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C7550BFC();
  if (a2)
  {
    MEMORY[0x1EEE9AC00](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AEE8, &unk_1C75853F0);
    sub_1C7550C3C();
    sub_1C737542C();
    sub_1C7009510();
  }

  else
  {
    __break(1u);
  }
}

void *static AssetClusteringUtilities.clipprintByAssetUUID(from:in:)(uint64_t a1, id a2)
{
  v3 = [a2 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C755BAA0;
  *(v4 + 32) = sub_1C755068C();
  *(v4 + 40) = v5;
  *(v4 + 48) = sub_1C755068C();
  *(v4 + 56) = v6;
  *(v4 + 64) = sub_1C755068C();
  *(v4 + 72) = v7;
  sub_1C70B81C8(v4, v3);
  v8 = objc_opt_self();
  v9 = v3;
  v10 = sub_1C6FCA158(a1, v3, v8);

  if (!v10)
  {
    v14 = sub_1C75504DC();
LABEL_23:

    return v14;
  }

  v11 = [v10 count];
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  v12 = v11;
  if (!v11)
  {

    v14 = MEMORY[0x1E69E7CC8];
LABEL_22:
    v9 = v10;
    goto LABEL_23;
  }

  v32 = v9;
  v13 = 0;
  v14 = MEMORY[0x1E69E7CC8];
  v15 = &selRef_mergedPersonIdentifiers;
  v33 = v10;
  while (1)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = [v10 v15[45]];
    v35 = sub_1C6FCA214(v17);
    if (!v18)
    {
      goto LABEL_14;
    }

    v19 = v18;
    sub_1C73C6BB8();
    if (!v20)
    {

LABEL_14:

      goto LABEL_18;
    }

    v34 = v20;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_1C6F78124(v35, v19);
    if (__OFADD__(v14[2], (v22 & 1) == 0))
    {
      break;
    }

    v23 = v21;
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151D8, &unk_1C755C9E0);
    if (sub_1C7551A2C())
    {
      v25 = sub_1C6F78124(v35, v19);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_27;
      }

      v23 = v25;
    }

    if (v24)
    {

      *(v14[7] + 8 * v23) = v34;
    }

    else
    {
      v14[(v23 >> 6) + 8] |= 1 << v23;
      v27 = (v14[6] + 16 * v23);
      *v27 = v35;
      v27[1] = v19;
      *(v14[7] + 8 * v23) = v34;

      v28 = v14[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_25;
      }

      v14[2] = v30;
    }

    v10 = v33;
    v15 = &selRef_mergedPersonIdentifiers;
LABEL_18:
    ++v13;
    objc_autoreleasePoolPop(v16);
    if (v12 == v13)
    {

      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C737534C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a5@<X8>)
{
  result = *a1;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    if (result + a2 >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = result + a2;
    }

    if (v7 >= result)
    {
      v12 = sub_1C7550C5C();
      v13 = v8;
      v14 = v9;
      v15 = v10;
      v11 = sub_1C75515DC();
      swift_getWitnessTable(MEMORY[0x1E69E6968], v11, v12, v13, v14, v15);
      result = sub_1C7550C4C();
      *a5 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C737542C()
{
  result = qword_1EC21AEF0;
  if (!qword_1EC21AEF0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21AEE8, &unk_1C75853F0);
    result = swift_getWitnessTable(MEMORY[0x1E69E7C28], v3, v0, v1);
    atomic_store(result, &qword_1EC21AEF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetClusteringUtilities(_BYTE *result, int a2, int a3)
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

void sub_1C737553C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v6 = type metadata accessor for PromptSuggestion(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v24 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = 0;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v13 == v12)
    {

      return;
    }

    if (v12 >= *(a1 + 16))
    {
      break;
    }

    v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v16 = *(v7 + 72);
    sub_1C71592A8(a1 + v15 + v16 * v12, v11);
    v17 = sub_1C737D908(v11, v25, v26, v27);
    if (v4)
    {
      sub_1C7382AE4(v11, type metadata accessor for PromptSuggestion);

      return;
    }

    if (v17)
    {
      sub_1C7159368(v11, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716D568(0, *(v14 + 16) + 1, 1);
        v14 = v28;
      }

      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v22 = *(v14 + 16);
        v23 = v20 + 1;
        sub_1C716D568(v19 > 1, v20 + 1, 1);
        v20 = v22;
        v21 = v23;
        v14 = v28;
      }

      ++v12;
      *(v14 + 16) = v21;
      sub_1C7159368(v24, v14 + v15 + v20 * v16);
    }

    else
    {
      sub_1C7382AE4(v11, type metadata accessor for PromptSuggestion);
      ++v12;
    }
  }

  __break(1u);
}

uint64_t PromptSuggestionProvider.__allocating_init(photoLibrary:cache:searchSuggestionsDataSource:validator:embeddingDistanceThresholdForRanking:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_132_4();
  PromptSuggestionProvider.init(photoLibrary:cache:searchSuggestionsDataSource:validator:embeddingDistanceThresholdForRanking:)(v8, a2, a3, a4);
  return v4;
}

uint64_t PromptSuggestionProvider.init(photoLibrary:cache:searchSuggestionsDataSource:validator:embeddingDistanceThresholdForRanking:)(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v33 = a2;
  v34 = a3;
  v8 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_0();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  v16 = OUTLINED_FUNCTION_76(v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  *(v4 + 16) = sub_1C755146C();
  *(v4 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_suggestionPoolSize) = 20;
  v19 = (v4 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_lastContextRefreshDate);
  v20 = sub_1C754DF6C();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v20);
  *v19 = 0;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AF08, &qword_1C7585450) + 28);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AF10, &qword_1C7585458);
  OUTLINED_FUNCTION_76(v22);
  bzero(v19 + v21, *(v23 + 64));
  sub_1C7381230(v18, v19 + v21, &unk_1EC219230, &unk_1C7563720);
  *(v5 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_photoLibrary) = a1;
  v24 = v33;
  sub_1C6FB5E28(v33, v5 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_cache);
  v25 = *(v5 + 16);
  v26 = a1;
  v27 = v25;
  sub_1C754FF2C();
  v28 = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_logger;
  (*(v10 + 32))(OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_logger + v5, v14, v8);
  v29 = v34;
  sub_1C6FB5E28(v34, v5 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_searchSuggestionsDataSource);
  sub_1C6FB5E28(a4, v5 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_validator);
  (*(v10 + 16))(v14, &v28[v5], v8);
  v30 = objc_allocWithZone(type metadata accessor for PromptSuggestionValidationObservation(0));
  v31 = sub_1C737E4A0(MEMORY[0x1E69E7CC0], v26, v14);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v24);
  *(v5 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_suggestionLibraryObservation) = v31;
  return v5;
}

uint64_t PromptSuggestionProvider.__allocating_init(photoLibrary:)()
{
  v2 = OUTLINED_FUNCTION_19_1();
  v3 = type metadata accessor for PromptSuggestionCache(v2);
  OUTLINED_FUNCTION_40_4();
  v4 = swift_allocObject();
  v5 = v0;
  v6 = v4;
  PromptSuggestionCache.init(photoLibrary:)();
  if (v1)
  {
  }

  else
  {
    v15[3] = v3;
    v15[4] = &protocol witness table for PromptSuggestionCache;
    v15[0] = v7;
    v8 = type metadata accessor for PromptSuggestionSearchDataSource(0);
    OUTLINED_FUNCTION_40_4();
    swift_allocObject();
    v9 = v5;
    v14[3] = v8;
    v14[4] = &protocol witness table for PromptSuggestionSearchDataSource;
    v14[0] = PromptSuggestionSearchDataSource.init(photoLibrary:)(v9);
    v10 = type metadata accessor for PromptSuggestionSafetyValidator();
    v11 = v9;
    v13[3] = v10;
    v13[4] = &protocol witness table for PromptSuggestionSafetyValidator;
    v13[0] = PromptSuggestionSafetyValidator.__allocating_init(photoLibrary:)(v11);
    v6 = swift_allocObject();
    PromptSuggestionProvider.init(photoLibrary:cache:searchSuggestionsDataSource:validator:embeddingDistanceThresholdForRanking:)(v11, v15, v14, v13);
  }

  return v6;
}

uint64_t PromptSuggestionProvider.fetchSuggestionsToDisplay(maxSuggestionResults:sharingFilter:seed:)()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  *(v1 + 132) = v3;
  *(v1 + 130) = v4;
  *(v1 + 168) = v5;
  v6 = sub_1C754DF6C();
  *(v1 + 192) = v6;
  OUTLINED_FUNCTION_18(v6);
  *(v1 + 200) = v7;
  *(v1 + 208) = OUTLINED_FUNCTION_77();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  OUTLINED_FUNCTION_76(v8);
  *(v1 + 216) = OUTLINED_FUNCTION_81_0();
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  v9 = type metadata accessor for PromptSuggestion(0);
  *(v1 + 240) = v9;
  OUTLINED_FUNCTION_18(v9);
  *(v1 + 248) = v10;
  *(v1 + 256) = OUTLINED_FUNCTION_81_0();
  *(v1 + 264) = swift_task_alloc();
  *(v1 + 272) = swift_task_alloc();
  *(v1 + 280) = swift_task_alloc();
  *(v1 + 288) = swift_task_alloc();
  *(v1 + 296) = swift_task_alloc();
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 312) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8, &unk_1C7570210);
  OUTLINED_FUNCTION_76(v11);
  *(v1 + 320) = OUTLINED_FUNCTION_81_0();
  *(v1 + 328) = swift_task_alloc();
  *(v1 + 336) = swift_task_alloc();
  *(v1 + 344) = swift_task_alloc();
  *(v1 + 352) = swift_task_alloc();
  v12 = sub_1C754DFFC();
  OUTLINED_FUNCTION_76(v12);
  *(v1 + 360) = OUTLINED_FUNCTION_77();
  v13 = sub_1C75500AC();
  *(v1 + 368) = v13;
  OUTLINED_FUNCTION_18(v13);
  *(v1 + 376) = v14;
  *(v1 + 384) = OUTLINED_FUNCTION_77();
  v15 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C7375EA8()
{
  v284 = v0;
  v5 = *(v0 + 376);
  v4 = *(v0 + 384);
  v6 = *(v0 + 368);
  sub_1C6F65BE8(0, &unk_1EDD0FA90, 0x1E69E9610);
  *v4 = sub_1C755126C();
  (*(v5 + 104))(v4, *MEMORY[0x1E69E8018], v6);
  v7 = sub_1C75500CC();
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v9(v4, v6);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_98;
  }

  v3 = *(v0 + 184);
  v11 = *(v3 + 16);
  type metadata accessor for PerformanceMeasure(0);
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v12 = v11;
  v13 = PerformanceMeasure.init(name:log:)();
  v14 = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_logger;
  *(v0 + 392) = v13;
  *(v0 + 400) = v14;
  v15 = sub_1C754FEEC();
  v16 = sub_1C755118C();
  if (OUTLINED_FUNCTION_66(v16))
  {
    v17 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_92_0(v17);
    OUTLINED_FUNCTION_39();
    _os_log_impl(v18, v19, v20, v21, v22, 2u);
    OUTLINED_FUNCTION_37();
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 132);

  v25 = *(v23 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_photoLibrary);
  type metadata accessor for PromptSuggestionStatistics(0);
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  *(v0 + 408) = PromptSuggestionStatistics.init(photoLibrary:)(v25);
  v26 = v25;
  v27 = sub_1C754FEEC();
  v28 = sub_1C75511BC();
  v29 = OUTLINED_FUNCTION_66(v28);
  if (v24)
  {
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_127();
      *v30 = 0;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v31, v32, v33, v34, v30, 2u);
      OUTLINED_FUNCTION_10_1();
    }

    v35 = *(v0 + 360);

    sub_1C754DFEC();
    Random.Arc4Random.init(seed:)(v35, &v282);
  }

  else
  {
    if (v29)
    {
      v36 = *(v0 + 176);
      v37 = OUTLINED_FUNCTION_41_0();
      *v37 = 134217984;
      *(v37 + 4) = v36;
      OUTLINED_FUNCTION_57_5();
      OUTLINED_FUNCTION_141_8(v38, v39, v40, v41);
      OUTLINED_FUNCTION_10_1();
    }

    v42 = *(v0 + 176);

    Random.Arc4Random.init(seed:)(v42, &v282);
  }

  v43 = v282;
  v44 = v283;
  v45 = BYTE1(v283);
  *(v0 + 120) = v282;
  *(v0 + 128) = v44;
  *(v0 + 129) = v45;
  v46 = *(v0 + 130);
  *(v0 + 136) = v43;
  *(v0 + 144) = v44 | (v45 << 8);
  if (v46 != 2)
  {

    v87 = sub_1C754FEEC();
    v88 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_66(v88))
    {
      v89 = *(v0 + 130);
      v90 = swift_slowAlloc();
      *v90 = 33554688;
      *(v90 + 4) = v89;
      OUTLINED_FUNCTION_39();
      _os_log_impl(v91, v92, v93, v94, v95, 6u);
      OUTLINED_FUNCTION_37();
    }

    sub_1C6F85170();

    OUTLINED_FUNCTION_130_0();

    __asm { BRAA            X3, X16 }
  }

  sub_1C75504FC();
  v47 = sub_1C754FEEC();
  v48 = sub_1C755118C();
  if (OUTLINED_FUNCTION_21_0(v48))
  {
    v49 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v49);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v50, v51, v52, v53, v54, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  v55 = *(v0 + 168);

  type metadata accessor for PromptSuggestionRanker(0);
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v56 = PromptSuggestionRanker.init()();
  *(v0 + 416) = v56;
  v273 = v56;
  v282 = sub_1C7377D0C(v55, v56, v0 + 136);
  sub_1C73B3D64(v0 + 120);
  v6 = v282;
  v57 = sub_1C754FEEC();
  v58 = sub_1C755118C();
  if (OUTLINED_FUNCTION_128(v58))
  {
    v59 = OUTLINED_FUNCTION_127();
    *v59 = 0;
    _os_log_impl(&dword_1C6F5C000, v57, v58, "Prompt Suggestion fetching whimsical suggestions", v59, 2u);
    OUTLINED_FUNCTION_109();
  }

  v60 = *(v0 + 352);

  v2 = 1;
  LOBYTE(v280) = 1;
  OUTLINED_FUNCTION_76_17(v61, &unk_1F46AA868, v62, v63, v64, v65, v66, v67, v251, v253, v255, v257, v259, v263, v265, v270, v273, v277, v279);
  v68 = v282;

  PromptSuggestionRanker.selectWhimsicalPrompt(_:using:)(v68, v60);
  v69 = sub_1C754FEEC();
  v70 = sub_1C755118C();
  if (OUTLINED_FUNCTION_128(v70))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_135_8(&dword_1C6F5C000, v71, v72, "Prompt Suggestion fetching contextual suggestions");
    OUTLINED_FUNCTION_109();
  }

  v73 = MEMORY[0x1E69E7CC0];
  v1 = *(v0 + 344);

  LOBYTE(v280) = 1;
  OUTLINED_FUNCTION_76_17(v74, &unk_1F46AA890, v75, v76, v77, v78, v79, v80, v252, v254, v256, v258, v260, v264, v266, v14, v274, v278, v279);

  v81 = v282;

  PromptSuggestionRanker.selectContextualPrompt(_:otherPromptSuggestionCandidates:using:)(v81, v6, v0 + 120, v1);

  if ([objc_opt_self() alwaysShowCreativePrompts])
  {
    v82 = sub_1C754FEEC();
    v83 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v83))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_135_8(&dword_1C6F5C000, v84, v85, "Prompt Suggestion override : alwaysShowCreativePrompts");
      OUTLINED_FUNCTION_109();
    }

    v86 = *(v0 + 344);
    v1 = *(v0 + 352);
    v2 = *(v0 + 336);

    sub_1C710D924(v68);

    v68 = &unk_1C7570210;
    sub_1C6FD7FC8(v1, &qword_1EC2155A8, &unk_1C7570210);
    sub_1C7381230(v2, v1, &qword_1EC2155A8, &unk_1C7570210);
    sub_1C710D924(v81);

    sub_1C6FD7FC8(v86, &qword_1EC2155A8, &unk_1C7570210);
    sub_1C7381230(v2, v86, &qword_1EC2155A8, &unk_1C7570210);
    v14 = v270;
  }

  else
  {
  }

  v98 = *(v0 + 344);
  v99 = *(v0 + 328);
  v100 = *(v0 + 240);
  *(v0 + 152) = v73;
  sub_1C7326A18(v98, v99, &qword_1EC2155A8, &unk_1C7570210);
  v101 = OUTLINED_FUNCTION_69_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v101, v102, v100);
  v104 = *(v0 + 328);
  v4 = &unk_1C755E000;
  if (EnumTagSinglePayload != 1)
  {
    v106 = *(v0 + 304);
    v105 = *(v0 + 312);
    sub_1C7159368(v104, v105);
    sub_1C71592A8(v105, v106);
    v107 = sub_1C754FEEC();
    sub_1C75511BC();
    OUTLINED_FUNCTION_87_19();
    v109 = os_log_type_enabled(v107, v108);
    v110 = *(v0 + 304);
    if (v109)
    {
      v111 = OUTLINED_FUNCTION_41_0();
      v112 = OUTLINED_FUNCTION_20_1();
      v282 = v112;
      *v111 = 136315138;
      v2 = PromptSuggestion.shortDescription.getter();
      v113 = v3;
      v115 = v114;
      OUTLINED_FUNCTION_0_154();
      sub_1C7382AE4(v110, v116);
      v117 = sub_1C6F765A4(v2, v115, &v282);
      v3 = v113;
      v4 = 0x1C755E000;

      *(v111 + 4) = v117;
      _os_log_impl(&dword_1C6F5C000, v107, v68, "Including contextual suggestion %s", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v112);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {

      OUTLINED_FUNCTION_0_154();
      sub_1C7382AE4(v110, v118);
    }

    sub_1C71592A8(*(v0 + 312), *(v0 + 296));
    sub_1C6FB3648(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v8 = v119;
    v1 = v119[2];
    v10 = v119[3];
    v7 = v1 + 1;
    if (v1 >= v10 >> 1)
    {
      goto LABEL_99;
    }

    goto LABEL_34;
  }

  sub_1C6FD7FC8(v104, &qword_1EC2155A8, &unk_1C7570210);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v125 = *(v0 + 240);
    sub_1C7326A18(*(v0 + 352), *(v0 + 320), &qword_1EC2155A8, &unk_1C7570210);
    v126 = OUTLINED_FUNCTION_69_2();
    v128 = __swift_getEnumTagSinglePayload(v126, v127, v125);
    v129 = *(v0 + 320);
    if (v128 == 1)
    {
      sub_1C6FD7FC8(v129, &qword_1EC2155A8, &unk_1C7570210);
    }

    else
    {
      v131 = *(v0 + 280);
      v130 = *(v0 + 288);
      sub_1C7159368(v129, v130);
      sub_1C71592A8(v130, v131);
      v132 = sub_1C754FEEC();
      v133 = sub_1C75511BC();
      v134 = os_log_type_enabled(v132, v133);
      v135 = *(v0 + 280);
      if (v134)
      {
        v136 = OUTLINED_FUNCTION_41_0();
        v2 = OUTLINED_FUNCTION_20_1();
        v282 = v2;
        *v136 = *(v4 + 2800);
        v267 = v6;
        v137 = v3;
        v138 = PromptSuggestion.shortDescription.getter();
        v140 = v139;
        OUTLINED_FUNCTION_0_154();
        sub_1C7382AE4(v135, v141);
        v142 = v138;
        v3 = v137;
        v6 = v267;
        sub_1C6F765A4(v142, v140, &v282);
        OUTLINED_FUNCTION_24_2();

        *(v136 + 4) = v135;
        _os_log_impl(&dword_1C6F5C000, v132, v133, "Including whimsical suggestion %s", v136, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v2);
        OUTLINED_FUNCTION_109();
        v14 = v270;
        OUTLINED_FUNCTION_109();
      }

      else
      {

        OUTLINED_FUNCTION_0_154();
        sub_1C7382AE4(v135, v143);
      }

      sub_1C71592A8(*(v0 + 288), *(v0 + 272));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v243 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB3648(v243, v244, v245, v8);
        v8 = v246;
      }

      v125 = v8[2];
      v144 = v8[3];
      if (v125 >= v144 >> 1)
      {
        v247 = OUTLINED_FUNCTION_15_2(v144);
        sub_1C6FB3648(v247, v248, v249, v8);
        v8 = v250;
      }

      v145 = *(v0 + 272);
      v1 = *(v0 + 248);
      OUTLINED_FUNCTION_0_154();
      sub_1C7382AE4(v146, v147);
      v8[2] = v125 + 1;
      OUTLINED_FUNCTION_191();
      sub_1C7159368(v145, v8 + v148 + *(v1 + 72) * v125);
      *(v0 + 152) = v8;
    }

    v149 = sub_1C754FEEC();
    sub_1C75511BC();
    OUTLINED_FUNCTION_49_25();
    if (os_log_type_enabled(v149, v150))
    {
      v151 = OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_58_25(v151, 3.852e-34);

      OUTLINED_FUNCTION_112_7();
      _os_log_impl(v152, v153, v154, v155, v151, 0xCu);
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    v156 = *(v0 + 168);
    v7 = v0 + 152;
    sub_1C6FD33C4(v6);
    v6 = *(v0 + 152);
    v10 = *(v6 + 16);
    v157 = __OFSUB__(v156, v10);
    v4 = v156 - v10;
    if (!v157)
    {
      break;
    }

LABEL_98:
    __break(1u);
LABEL_99:
    v239 = OUTLINED_FUNCTION_15_2(v10);
    sub_1C6FB3648(v239, v240, v241, v8);
    v8 = v242;
LABEL_34:
    v120 = *(v0 + 296);
    v121 = *(v0 + 248);
    OUTLINED_FUNCTION_0_154();
    sub_1C7382AE4(v122, v123);
    v8[2] = v7;
    OUTLINED_FUNCTION_191();
    sub_1C7159368(v120, v8 + v124 + *(v121 + 72) * v1);
    *(v0 + 152) = v8;
    v14 = v270;
  }

  if (v4 >= 1)
  {
    v158 = swift_task_alloc();
    *(v0 + 424) = v158;
    *v158 = v0;
    v158[1] = sub_1C7377024;
    OUTLINED_FUNCTION_130_0();

    return sub_1C7378E20(v159, v160);
  }

  v163 = PromptSuggestionRanker.dedupe(suggestions:)(*(v0 + 152));
  *(v0 + 440) = v163;

  v164 = *(v163 + 16);
  v261 = v163;
  if (v164)
  {
    OUTLINED_FUNCTION_128_8();
    v271 = v165;
    v275 = v166;
    OUTLINED_FUNCTION_108_10();
    v268 = v167;
    v125 = v168 + 32;
    sub_1C75504FC();
    v169 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_118_10();
      v8 = &unk_1EC219230;
      v4 = &unk_1C7563720;
      sub_1C7326A18(v275 + v271, v14, &unk_1EC219230, &unk_1C7563720);
      OUTLINED_FUNCTION_0_154();
      sub_1C7382AE4(v1, v170);
      if (__swift_getEnumTagSinglePayload(v14, 1, v2) == 1)
      {
        sub_1C6FD7FC8(*(v0 + 216), &unk_1EC219230, &unk_1C7563720);
      }

      else
      {
        v14 = *v125;
        (*v125)(*(v0 + 208), *(v0 + 216), *(v0 + 192));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v175 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB3608(v175, v176, v177, v169);
          v169 = v178;
        }

        v2 = *(v169 + 16);
        v172 = *(v169 + 24);
        v1 = v2 + 1;
        if (v2 >= v172 >> 1)
        {
          OUTLINED_FUNCTION_15(v172);
          OUTLINED_FUNCTION_89_5();
          sub_1C6FB3608(v179, v180, v181, v169);
          v169 = v182;
        }

        *(v169 + 16) = v1;
        OUTLINED_FUNCTION_191();
        v14(v169 + v173 + *(v174 + 72) * v2);
      }

      v6 += v268;
      --v164;
    }

    while (v164);
  }

  else
  {
    sub_1C75504FC();
  }

  OUTLINED_FUNCTION_115_14(v171);

  sub_1C7326A18(v6, v8, &unk_1EC219230, &unk_1C7563720);
  v183 = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_lastRefreshDate;
  OUTLINED_FUNCTION_137_9();
  sub_1C717E2C4(v8, v125 + v183);
  swift_endAccess();
  v184 = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_uiSuggestionStatistics;
  *(v0 + 448) = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_uiSuggestionStatistics;
  *(*(v125 + v184) + 80) = v261;
  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_136_4();

  *(*(v125 + v184) + 56) = v261;

  v185 = *(v125 + v184);

  sub_1C7241730(v261);

  sub_1C6FB5E28(v4 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_cache, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AF18, &qword_1C7585470);
  v186 = OUTLINED_FUNCTION_19_1();
  v187 = type metadata accessor for PromptSuggestionCache(v186);
  if ((OUTLINED_FUNCTION_116_13(v187) & 1) == 0)
  {

    OUTLINED_FUNCTION_53_31();
    OUTLINED_FUNCTION_24_2();

    OUTLINED_FUNCTION_80_12();

    sub_1C70343B8(v184, v185);
    OUTLINED_FUNCTION_62_22();
    if (v261)
    {
      sub_1C7551DEC();
      OUTLINED_FUNCTION_114_12();
      v193 = swift_dynamicCastClass();
      if (!v193)
      {
        swift_unknownObjectRelease();
        v193 = MEMORY[0x1E69E7CC0];
      }

      v194 = *(v193 + 16);

      if (__OFSUB__(v261 >> 1, v184))
      {
        __break(1u);
      }

      else if (v194 == (v261 >> 1) - v184)
      {
        v192 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v192)
        {
LABEL_76:
          OUTLINED_FUNCTION_21_53();

          sub_1C737B098();

          v195 = (v185 + v184);
          v196 = sub_1C754FEEC();
          sub_1C75511BC();
          OUTLINED_FUNCTION_49_25();
          if (os_log_type_enabled(v196, v197))
          {
            OUTLINED_FUNCTION_23_1();
            v198 = OUTLINED_FUNCTION_47_10();
            OUTLINED_FUNCTION_79_15(3.8521e-34);
            OUTLINED_FUNCTION_40_29();
            v203 = *(v192 + 16);
            v204 = MEMORY[0x1E69E7CC0];
            if (v203)
            {
              v262 = v198;
              v269 = v184;
              v272 = v196;
              v205 = *(v0 + 248);
              v206 = *(v0 + 256);
              v279 = MEMORY[0x1E69E7CC0];
              sub_1C6F7ED9C(0, v203, 0, v199, v200, v201, v202);
              v204 = v279;
              OUTLINED_FUNCTION_191();
              v208 = v192 + v207;
              v276 = *(v205 + 72);
              do
              {
                sub_1C71592A8(v208, *(v0 + 256));
                v280 = 91;
                v281 = 0xE100000000000000;
                v209 = 0xE400000000000000;
                v210 = 1701736270;
                switch(*(v206 + 16))
                {
                  case 1:
                    v209 = 0xE600000000000000;
                    v210 = OUTLINED_FUNCTION_79_0();
                    break;
                  case 2:
                    v209 = 0xE600000000000000;
                    v210 = OUTLINED_FUNCTION_81();
                    break;
                  case 3:
                    v210 = OUTLINED_FUNCTION_2_105();
                    break;
                  case 4:
                    v210 = OUTLINED_FUNCTION_3_96();
                    break;
                  default:
                    break;
                }

                MEMORY[0x1CCA5CD70](v210, v209);

                OUTLINED_FUNCTION_100_15();
                MEMORY[0x1CCA5CD70](*(v206 + 104), *(v206 + 112));
                v211 = *(v206 + 296);
                if (v211)
                {
                  v212 = *(v206 + 288);
                  OUTLINED_FUNCTION_7_76();
                  v282 = v213;
                  OUTLINED_FUNCTION_17_70();
                  v283 = v214;
                  sub_1C75504FC();
                  MEMORY[0x1CCA5CD70](v212, v211);

                  OUTLINED_FUNCTION_104_11();
                  v215 = v282;
                  v211 = v283;
                }

                else
                {
                  v215 = OUTLINED_FUNCTION_111_12();
                }

                v216 = *(v0 + 256);
                v195 = &v280;
                MEMORY[0x1CCA5CD70](v215, v211);

                v218 = v280;
                v217 = v281;
                OUTLINED_FUNCTION_0_154();
                sub_1C7382AE4(v216, v219);
                v279 = v204;
                OUTLINED_FUNCTION_98_14();
                if (v221)
                {
                  OUTLINED_FUNCTION_15(v220);
                  v195 = &v279;
                  OUTLINED_FUNCTION_336();
                  sub_1C6F7ED9C(v223, v224, v225, v226, v227, v228, v229);
                  v204 = v279;
                }

                *(v204 + 16) = v211;
                v222 = v204 + 16 * v216;
                *(v222 + 32) = v218;
                *(v222 + 40) = v217;
                v208 += v276;
                --v203;
              }

              while (v203);
              v184 = v269;
              v196 = v272;
              v198 = v262;
            }

            MEMORY[0x1CCA5D090](v204, MEMORY[0x1E69E6158]);
            OUTLINED_FUNCTION_92_14();

            v230 = OUTLINED_FUNCTION_23_14();
            sub_1C6F765A4(v230, v231, v232);
            OUTLINED_FUNCTION_132_4();

            *(v184 + 14) = v195;
            OUTLINED_FUNCTION_34_34(&dword_1C6F5C000, v233, v234, "Prompt Suggestion fetch returning %ld Result: %s");
            __swift_destroy_boxed_opaque_existential_1(v198);
            OUTLINED_FUNCTION_10_1();
            OUTLINED_FUNCTION_23_3();
          }

          else
          {
          }

          OUTLINED_FUNCTION_119_13(*(v0 + 184));
          *(v0 + 480) = sub_1C7550D0C();
          OUTLINED_FUNCTION_24_2();
          sub_1C7550C8C();
          OUTLINED_FUNCTION_8_71();
          goto LABEL_94;
        }

        v192 = MEMORY[0x1E69E7CC0];
LABEL_75:
        swift_unknownObjectRelease();
        goto LABEL_76;
      }

      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_16_6();
    sub_1C739CAA4(v188, v189, v190, v261);
    v192 = v191;
    goto LABEL_75;
  }

  OUTLINED_FUNCTION_36_30();
LABEL_94:
  OUTLINED_FUNCTION_130_0();

  return MEMORY[0x1EEE6DFA0](v235, v236, v237);
}