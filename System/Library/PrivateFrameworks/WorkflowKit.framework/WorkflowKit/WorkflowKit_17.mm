void sub_1CA422474()
{
  v0 = sub_1CA9486C8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v60 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v68 = &v57 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v57 - v6);
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  _s3__C3KeyVMa_0(0);
  sub_1CA435D64(&qword_1EDB9F780, 255, _s3__C3KeyVMa_0);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = sub_1CA94C1E8();
  v10 = v0;
  v11 = sub_1CA2F864C(v9);
  v59 = [objc_allocWithZone(type metadata accessor for WFAskLLMModelParameter()) initWithDefinition_];

  v12 = sub_1CA948698();
  v13 = 0;
  v14 = *(v12 + 16);
  v70 = (v1 + 8);
  v71 = v1 + 16;
  v66 = (v1 + 32);
  v69 = v8;
  while (1)
  {
    if (v14 == v13)
    {

      v72 = v69;

      v0 = 0;
      sub_1CA424F8C(&v72);

      v23 = v72;
      v25 = v59;
      v24 = v60;
      v69 = v72[2];
      if (!v69)
      {
        v65 = 0;
        v66 = MEMORY[0x1E69E7CC8];
LABEL_33:

        sub_1CA293254(v65, 0);
        return;
      }

      v26 = 0;
      v68 = v72 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
      v64 = 0x80000001CA9A2470;
      v65 = 0;
      v66 = MEMORY[0x1E69E7CC8];
      v57 = xmmword_1CA986F80;
      v67 = v10;
      v58 = v72;
      while (1)
      {
        if (v26 >= *(v23 + 16))
        {
          goto LABEL_35;
        }

        (*(v1 + 16))(v24, &v68[*(v1 + 72) * v26], v10);
        v0 = v10;
        sub_1CA9486B8();
        (*(v1 + 8))(v24, v10);
        v27 = sub_1CA94C368();

        v28 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

        v29 = WFVariableSubstitutableParameterStateUpcast(v28);
        v30 = WFAskLLMModelParameter.localizedTitleForButton(with:)();
        if (v31)
        {
          v32 = v30;
          v0 = v31;
          v33 = WFAskLLMModelParameter.enumeration(_:accessoryIconForPossibleState:)(v25, v29);
          if (v33)
          {
            v63 = v32;
            v62 = v33;
            v61 = v29;
            sub_1CA293254(v65, 0);
            v34 = v66;
            swift_isUniquelyReferenced_nonNull_native();
            v72 = v34;
            v35 = sub_1CA271BF8(0xD00000000000001ALL, v64);
            if (__OFADD__(*(v34 + 16), (v36 & 1) == 0))
            {
              goto LABEL_36;
            }

            v37 = v35;
            v38 = v36;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445498, &qword_1CA987598);
            v39 = sub_1CA94D588();
            v40 = v72;
            if (v39)
            {
              v41 = sub_1CA271BF8(0xD00000000000001ALL, v64);
              if ((v38 & 1) != (v42 & 1))
              {
                goto LABEL_38;
              }

              v37 = v41;
            }

            if ((v38 & 1) == 0)
            {
              v40[(v37 >> 6) + 8] = (v40[(v37 >> 6) + 8] | (1 << v37));
              v43 = (v40[6] + 16 * v37);
              *v43 = 0xD00000000000001ALL;
              v43[1] = v64;
              *(v40[7] + v37) = MEMORY[0x1E69E7CC0];
              v44 = v40[2];
              v45 = __OFADD__(v44, 1);
              v46 = (v44 + 1);
              if (v45)
              {
                goto LABEL_37;
              }

              v40[2] = v46;
            }

            v47 = v40[7];
            v48 = *(v47 + v37);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v47 + v37) = v48;
            v66 = v40;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1CA2E5E6C(0, *(v48 + 16) + 1, 1, v48);
              v48 = v55;
              *(v47 + v37) = v55;
            }

            v51 = *(v48 + 16);
            v50 = *(v48 + 24);
            if (v51 >= v50 >> 1)
            {
              sub_1CA2E5E6C(v50 > 1, v51 + 1, 1, v48);
              *(v47 + v37) = v56;
            }

            v52 = v62;
            v53 = *(v47 + v37);
            *(v53 + 16) = v51 + 1;
            v54 = v53 + 56 * v51;
            *(v54 + 32) = v63;
            *(v54 + 40) = v0;
            *(v54 + 48) = v52;
            *(v54 + 56) = v29;
            *(v54 + 64) = v57;
            *(v54 + 80) = 0;
            v65 = sub_1CA436660;
            v25 = v59;
            v24 = v60;
            v23 = v58;
            goto LABEL_30;
          }
        }

LABEL_30:
        ++v26;
        v10 = v67;
        if (v69 == v26)
        {
          goto LABEL_33;
        }
      }
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    v15 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v0 = *(v1 + 72);
    (*(v1 + 16))(v7, v12 + v15 + v0 * v13, v10);
    v16 = v10;
    v17 = [objc_opt_self() shared];
    v18 = WFAskLLMAvailabilityProvider.isModelEnabled(modelName:)(v7);

    if (v18)
    {
      v65 = *v66;
      v65(v68, v7, v16);
      v19 = v69;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v19;
      v10 = v16;
      if ((v20 & 1) == 0)
      {
        sub_1CA2B8F14();
        v10 = v16;
        v19 = v72;
      }

      v21 = *(v19 + 16);
      v22 = v21 + 1;
      if (v21 >= *(v19 + 24) >> 1)
      {
        v67 = v10;
        sub_1CA2B8F14();
        v22 = v21 + 1;
        v10 = v67;
        v19 = v72;
      }

      ++v13;
      *(v19 + 16) = v22;
      v69 = v19;
      v65((v19 + v15 + v21 * v0), v68, v10);
    }

    else
    {
      (*v70)(v7, v16);
      ++v13;
      v10 = v16;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_1CA94D878();
  __break(1u);

  __break(1u);
}

uint64_t sub_1CA422BA0(uint64_t a1)
{
  v1 = sub_1CA9486B8();
  v3 = v2;
  if (v1 == sub_1CA9486B8() && v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1CA94D7F8();
  }

  return v6 & 1;
}

uint64_t sub_1CA422C38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v92 = a3;
  v115 = sub_1CA94B1C8();
  v5 = *(v115 - 8);
  v6 = MEMORY[0x1EEE9AC00](v115);
  v99 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v111 = &v91 - v8;
  v9 = type metadata accessor for DrawerSearchIndexItem(0);
  v117 = *(v9 - 8);
  v118 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v106 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v108 = &v91 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v91 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v91 - v17;
  v94 = type metadata accessor for DrawerAction(0);
  v18 = *(v94 - 8);
  v19 = MEMORY[0x1EEE9AC00](v94);
  v21 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v91 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v101 = &v91 - v25;
  v93 = a1;
  v26 = *a1;
  v29 = *(*a1 + 64);
  v28 = *a1 + 64;
  v27 = v29;
  v30 = 1 << *(v26 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v107 = v31 & v27;
  v32 = (v30 + 63) >> 6;
  v114 = v5 + 16;
  v98 = v5;
  v109 = (v5 + 8);
  v104 = v26;
  result = sub_1CA94C218();
  v34 = 0;
  v35 = MEMORY[0x1E69E7CC0];
  v100 = v28;
  v102 = v32;
  v96 = a2;
  v95 = v18;
  v110 = v24;
  while (1)
  {
    v36 = v107;
    if (!v107)
    {
      break;
    }

LABEL_9:
    v38 = v36;
    v105 = v34;
    v39 = v101;
    sub_1CA42B9A4(*(v104 + 56) + *(v18 + 72) * (__clz(__rbit64(v36)) | (v34 << 6)), v101);
    sub_1CA42BA50(v39, v24);
    if (*(a2 + 16) && (v40 = sub_1CA271BF8(*&v24[*(v94 + 28)], *&v24[*(v94 + 28) + 8]), (v41 & 1) != 0))
    {
      v116 = *(*(a2 + 56) + 8 * v40);
      sub_1CA94C218();
    }

    else
    {
      v116 = MEMORY[0x1E69E7CC0];
    }

    v107 = (v38 - 1) & v38;
    sub_1CA40AE90();
    v43 = *(v42 + 16);
    if (v43)
    {
      v44 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v103 = v42;
      v45 = v42 + v44;
      v46 = *(v98 + 72);
      v112 = *(v98 + 16);
      v113 = v46;
      do
      {
        v47 = v111;
        v48 = v115;
        v112(v111, v45, v115);
        sub_1CA42B9A4(v24, v21);
        v49 = sub_1CA94B0F8();
        v50 = v16;
        v52 = v51;
        (*v109)(v47, v48);
        v53._countAndFlagsBits = v49;
        v53._object = v52;
        DrawerAction.setAttributionContainer(bundleID:)(v53);
        v16 = v50;

        v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445408, &unk_1CA986FF0) + 48);
        sub_1CA42B9A4(v21, v50);
        *(v50 + v54) = v116;
        swift_storeEnumTagMultiPayload();
        sub_1CA94C218();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA2E6034();
          v35 = v56;
        }

        v55 = *(v35 + 16);
        v24 = v110;
        if (v55 >= *(v35 + 24) >> 1)
        {
          sub_1CA2E6034();
          v35 = v57;
        }

        sub_1CA42B9FC();
        *(v35 + 16) = v55 + 1;
        sub_1CA42BA50(v50, v35 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v55);
        v45 += v113;
        --v43;
      }

      while (v43);

      result = sub_1CA42B9FC();
      a2 = v96;
      v18 = v95;
      v28 = v100;
      v32 = v102;
      v34 = v105;
    }

    else
    {

      v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445408, &unk_1CA986FF0) + 48);
      v59 = v97;
      sub_1CA42B9A4(v24, v97);
      *(v59 + v58) = v116;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA2E6034();
        v35 = v61;
      }

      v32 = v102;
      v60 = *(v35 + 16);
      if (v60 >= *(v35 + 24) >> 1)
      {
        sub_1CA2E6034();
        v35 = v62;
      }

      sub_1CA42B9FC();
      *(v35 + 16) = v60 + 1;
      result = sub_1CA42BA50(v97, v35 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v60);
      v28 = v100;
      v34 = v105;
    }
  }

  while (1)
  {
    v37 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v37 >= v32)
    {
      break;
    }

    v36 = *(v28 + 8 * v37);
    ++v34;
    if (v36)
    {
      v34 = v37;
      goto LABEL_9;
    }
  }

  v63 = v93;
  v64 = v93[6];
  v65 = *(v64 + 16);
  if (v65)
  {
    v66 = v64 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v67 = *(v18 + 72);
    v68 = v98;
    v69 = v108;
    do
    {
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445408, &unk_1CA986FF0) + 48);
      sub_1CA42B9A4(v66, v69);
      *(v69 + v70) = MEMORY[0x1E69E7CC0];
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA2E6034();
        v35 = v75;
      }

      v71 = *(v35 + 16);
      v72 = v35;
      v73 = v108;
      if (v71 >= *(v35 + 24) >> 1)
      {
        sub_1CA2E6034();
        v72 = v76;
        v73 = v108;
      }

      v35 = v72;
      *(v72 + 16) = v71 + 1;
      v74 = v72 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v71;
      v69 = v73;
      sub_1CA42BA50(v73, v74);
      v66 += v67;
      --v65;
    }

    while (v65);
  }

  else
  {
    v68 = v98;
  }

  v77 = v63[1];
  v78 = 1 << *(v77 + 32);
  v79 = -1;
  if (v78 < 64)
  {
    v79 = ~(-1 << v78);
  }

  v80 = v79 & *(v77 + 64);
  v81 = (v78 + 63) >> 6;
  v116 = v68 + 32;
  result = sub_1CA94C218();
  v82 = 0;
  if (v80)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v83 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      break;
    }

    if (v83 >= v81)
    {

      result = sub_1CA4129A4(v35, v119);
      v89 = v119[1];
      v90 = v92;
      *v92 = v119[0];
      v90[1] = v89;
      *(v90 + 4) = v120;
      return result;
    }

    v80 = *(v77 + 64 + 8 * v83);
    ++v82;
    if (v80)
    {
      v82 = v83;
      do
      {
LABEL_42:
        v84 = v99;
        v85 = v115;
        (*(v68 + 16))(v99, *(v77 + 56) + *(v68 + 72) * (__clz(__rbit64(v80)) | (v82 << 6)), v115);
        (*(v68 + 32))(v106, v84, v85);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA2E6034();
          v35 = v87;
        }

        v86 = *(v35 + 16);
        if (v86 >= *(v35 + 24) >> 1)
        {
          sub_1CA2E6034();
          v35 = v88;
        }

        v80 &= v80 - 1;
        *(v35 + 16) = v86 + 1;
        result = sub_1CA42BA50(v106, v35 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v86);
      }

      while (v80);
    }
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1CA4236B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 312) = a5;
  *(v6 + 320) = v5;
  *(v6 + 296) = a2;
  *(v6 + 304) = a4;
  *(v6 + 288) = a1;
  v7 = *(a3 + 16);
  *(v6 + 328) = *a3;
  *(v6 + 344) = v7;
  *(v6 + 360) = *(a3 + 32);
  *(v6 + 464) = *(a3 + 48);
  return MEMORY[0x1EEE6DFA0](sub_1CA4236F8, v5, 0);
}

uint64_t sub_1CA4236F8()
{
  DrawerAction.itemForInserting(homeID:)();
  *(v0 + 376) = v38;
  if (v38)
  {
    if (*(v0 + 336))
    {
      v1 = *(v0 + 464);
      v3 = *(v0 + 360);
      v2 = *(v0 + 368);
      v4 = *(v0 + 352);
      if (v1)
      {
        v5 = *(*(v0 + 320) + 176);
        v6 = v38;
        v7 = OUTLINED_FUNCTION_42_5();
        sub_1CA435E40(v7, v8, v9, v10, v3, v2, v1);
        v11 = OUTLINED_FUNCTION_120();
        sub_1CA435C7C(v11, v12, v2, 1);
        v13 = [v4 bundleIdentifier];
        if (!v13)
        {
          sub_1CA94C3A8();
          v13 = sub_1CA94C368();
        }

        *(v0 + 384) = v13;
        v14 = v3;
        v15 = [v3 basePhraseTemplate];
        if (!v15)
        {
          sub_1CA94C3A8();
          v15 = sub_1CA94C368();
        }

        *(v0 + 392) = v15;
        v16 = [v4 actionIdentifier];
        if (!v16)
        {
          sub_1CA94C3A8();
          v16 = sub_1CA94C368();
        }

        *(v0 + 400) = v16;
        v17 = [v3 parameterIdentifier];
        OUTLINED_FUNCTION_40();
        v18 = sub_1CA948D28();
        OUTLINED_FUNCTION_1_0();
        v20 = v19;
        v21 = swift_task_alloc();
        if (v3)
        {
          sub_1CA948CF8();

          v14 = sub_1CA948CD8();
          (*(v20 + 8))(v21, v18);
        }

        *(v0 + 408) = v14;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 272;
        *(v0 + 24) = sub_1CA423B18;
        v22 = swift_continuation_init();
        *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454E0, &unk_1CA987600);
        *(v0 + 144) = MEMORY[0x1E69E9820];
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = sub_1CA3FC964;
        *(v0 + 168) = &block_descriptor_102;
        *(v0 + 176) = v22;
        [v5 retrieveActionForBundleIdentifier:v13 basePhraseTemplate:v15 actionIdentifier:v16 parameterIdentifier:v14 completion:v0 + 144];

        return MEMORY[0x1EEE6DEC8](v0 + 16);
      }

      v24 = v38;
      v25 = OUTLINED_FUNCTION_42_5();
      sub_1CA435E40(v25, v26, v27, v28, v3, v2, v1);
      v29 = OUTLINED_FUNCTION_120();
      sub_1CA435C7C(v29, v30, v2, 0);
      swift_unknownObjectRetain();
      v37 = v3;
      v31 = sub_1CA94C368();

      [v24 setParameterState:v4 forKey:v31];

      swift_unknownObjectRelease();
      v32 = OUTLINED_FUNCTION_42_5();
      sub_1CA435EB4(v32, v33, v34, v35, v37, v2, v1);

      swift_unknownObjectRelease();
    }

    **(v0 + 288) = v38;
    OUTLINED_FUNCTION_5();
  }

  else
  {
    sub_1CA435DEC();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_5();
  }

  return v23();
}

uint64_t sub_1CA423B18()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 416) = v4;
  v5 = *(v3 + 320);
  if (v4)
  {
    v6 = sub_1CA4241C8;
  }

  else
  {
    v6 = sub_1CA423C2C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1CA423C2C()
{
  v2 = v0[50];
  v1 = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[46];
  v6 = v0[44];
  v7 = v0[34];
  v0[53] = v7;

  v8 = [v6 actionIdentifier];
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_194();

  v9 = [v6 bundleIdentifier];
  v10 = sub_1CA94C3A8();

  v11 = objc_allocWithZone(MEMORY[0x1E69AC860]);
  v12 = OUTLINED_FUNCTION_126();
  v14 = sub_1CA334F5C(v12, v13, v10);
  v0[54] = v14;
  sub_1CA25B3D0(0, &qword_1EC4454E8, 0x1E69E0B98);
  v15 = sub_1CA52D268(v14, v7, v5, 1);
  v0[55] = v15;
  v16 = [objc_opt_self() defaultDatabase];
  v0[56] = v16;
  v0[10] = v0;
  v0[15] = v0 + 35;
  v0[11] = sub_1CA423E88;
  v17 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4454F0, qword_1CA98AEC0);
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = sub_1CA320A2C;
  v0[29] = &block_descriptor_105;
  v0[30] = v17;
  [v15 createWorkflowWithEnvironment:0 database:v16 completionHandler:v0 + 26];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1CA423E88()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 456) = v4;
  v5 = *(v3 + 320);
  if (v4)
  {
    v6 = sub_1CA4242A4;
  }

  else
  {
    v6 = sub_1CA423F9C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1CA423F9C()
{
  v1 = *(v0 + 280);

  v2 = [v1 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  OUTLINED_FUNCTION_186_0();
  v3 = sub_1CA94C658();

  if (sub_1CA25B410(v3))
  {
    sub_1CA275D70(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1CCAA22D0](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v28 = v4;
    v5 = *(v0 + 432);
    v6 = *(v0 + 440);
    v8 = *(v0 + 368);
    v7 = *(v0 + 376);
    v10 = *(v0 + 352);
    v9 = *(v0 + 360);
    v22 = *(v0 + 336);
    v24 = *(v0 + 344);
    v11 = *(v0 + 328);
    v26 = *(v0 + 464);

    sub_1CA435EB4(v11, v22, v24, v10, v9, v8, v26);

    **(v0 + 288) = v28;
    OUTLINED_FUNCTION_5();
  }

  else
  {
    v13 = v1;
    v15 = *(v0 + 432);
    v14 = *(v0 + 440);
    v16 = *(v0 + 368);
    v17 = *(v0 + 376);
    v19 = *(v0 + 352);
    v18 = *(v0 + 360);
    v25 = *(v0 + 336);
    v27 = *(v0 + 344);
    v21 = *(v0 + 424);
    v23 = *(v0 + 328);
    v29 = *(v0 + 464);

    sub_1CA435DEC();
    swift_allocError();
    swift_willThrow();

    sub_1CA435EB4(v23, v25, v27, v19, v18, v16, v29);
    OUTLINED_FUNCTION_5();
  }

  return v12();
}

uint64_t sub_1CA4241C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138_3();
  v34 = *(v16 + 408);
  v35 = *(v16 + 400);
  v17 = *(v16 + 376);
  v36 = *(v16 + 392);
  v37 = *(v16 + 384);
  v18 = *(v16 + 360);
  v19 = *(v16 + 368);
  v21 = *(v16 + 344);
  v20 = *(v16 + 352);
  v23 = *(v16 + 328);
  v22 = *(v16 + 336);
  v24 = *(v16 + 464);
  swift_willThrow();

  sub_1CA435EB4(v23, v22, v21, v20, v18, v19, v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_99();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v34, v35, v36, v37, a13, a14, a15, a16);
}

uint64_t sub_1CA4242A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138_3();
  v17 = *(v16 + 432);
  v35 = *(v16 + 440);
  v36 = *(v16 + 448);
  v18 = *(v16 + 424);
  v19 = *(v16 + 368);
  v20 = *(v16 + 376);
  v22 = *(v16 + 352);
  v21 = *(v16 + 360);
  v23 = *(v16 + 336);
  v34 = *(v16 + 344);
  v24 = *(v16 + 328);
  HIDWORD(a10) = *(v16 + 464);
  swift_willThrow();

  sub_1CA435EB4(v24, v23, v34, v22, v21, v19, SBYTE4(a10));
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_99();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v34, a10, v35, v36, a13, a14, a15, a16);
}

uint64_t sub_1CA424380()
{
  sub_1CA42AC68(*(v0 + 112));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1CA4243CC()
{
  v0 = sub_1CA424380();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1CA4243F4()
{
  swift_defaultActor_initialize();
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 176) = [objc_allocWithZone(MEMORY[0x1E69ACDC0]) initWithOptions_];
  *(v0 + 184) = 0;
  return v0;
}

uint64_t static ActionDrawerActionTopHit.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1CA94D7F8() & 1) == 0)
  {
    return 0;
  }

  sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
  v5 = v2;
  v6 = v3;
  OUTLINED_FUNCTION_20_0();
  v7 = sub_1CA94CFD8();

  return v7 & 1;
}

uint64_t ActionDrawerActionTopHit.hashValue.getter()
{
  sub_1CA94D918();
  sub_1CA94C458();
  sub_1CA94CFE8();
  return sub_1CA94D968();
}

uint64_t sub_1CA4245C0(uint64_t a1)
{
  sub_1CA94D918();
  sub_1CA94C458();
  sub_1CA94CFE8();
  return sub_1CA94D968();
}

uint64_t ActionDrawerSearchResults.apps.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ActionDrawerSearchResults.actions.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ActionDrawerActionSearchResult.titleMatchingRanges.getter()
{
  type metadata accessor for ActionDrawerActionSearchResult(0);

  return sub_1CA94C218();
}

Swift::OpaquePointer_optional __swiftcall ActionDrawerDataSource.allActionsByID()()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    sub_1CA94C218();
  }

  v2 = OUTLINED_FUNCTION_58_3();
  sub_1CA42ABDC(v2);
  v3 = OUTLINED_FUNCTION_58_3();
  sub_1CA42AC68(v3);
  v5 = v1;
  result.value._rawValue = v5;
  result.is_nil = v4;
  return result;
}

void ActionDrawerDataSource.allAppActions()()
{
  OUTLINED_FUNCTION_37_0();
  v1 = type metadata accessor for DrawerAction(0);
  v2 = OUTLINED_FUNCTION_12(v1);
  v102 = v3;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_19();
  v6 = v4 - v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v85 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v85 - v11;
  v106 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19();
  v97 = v16 - v17;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_48_0();
  v105 = v19;
  v111 = v0[4];
  if (v111 && (v20 = v0[7], (v104 = *(v20 + 16)) != 0))
  {
    v86 = v12;
    v85 = v10;
    v87 = v6;
    v22 = v0[5];
    v21 = v0[6];
    v23 = v0[9];
    v24 = v20 + 32;
    v25 = v0[10];
    v90 = v0[8];
    v89 = v23;
    v88 = v25;
    sub_1CA42ABDC(v111);
    v95 = v14 + 32;
    v96 = v14 + 16;
    v91 = (v14 + 8);
    sub_1CA94C218();
    v26 = 0;
    v103 = 0;
    v109 = MEMORY[0x1E69E7CC0];
    v27 = v20;
    v28 = v104;
    v94 = v14;
    v93 = v20;
    v92 = v22;
    v107 = v20 + 32;
    while (v26 < *(v27 + 16))
    {
      if (*(v21 + 16))
      {
        v29 = (v24 + 16 * v26);
        v30 = *v29;
        v31 = v29[1];
        sub_1CA94C218();
        v112 = v30;
        v32 = sub_1CA271BF8(v30, v31);
        if (v33)
        {
          v34 = *(*(v21 + 56) + 16 * v32);
          v35 = *(v22 + 16);
          sub_1CA94C218();
          sub_1CA94C218();
          if (v35 && (v36 = sub_1CA271BF8(v112, v31), (v37 & 1) != 0))
          {
            (*(v14 + 16))(v97, *(v22 + 56) + *(v14 + 72) * v36, v106);
            v38 = v105;
            v39 = OUTLINED_FUNCTION_134();
            v40(v39);
            v113 = 762343521;
            v114 = 0xE400000000000000;
            MEMORY[0x1CCAA1300](v112, v31);
            v100 = v114;
            v101 = v113;
            v41 = sub_1CA94B138();
            v98 = v42;
            v99 = v41;
            sub_1CA94C218();
            sub_1CA419064(v34);
            OUTLINED_FUNCTION_101_3();

            v43 = 0;
            v44 = v38 + 56;
            v110 = v38;
            OUTLINED_FUNCTION_16_16();
            v47 = v46 & v45;
            v49 = (v48 + 63) >> 6;
            v108 = MEMORY[0x1E69E7CC0];
            while (v47)
            {
              v50 = v47;
LABEL_17:
              v47 = (v50 - 1) & v50;
              if (*(v111 + 16))
              {
                OUTLINED_FUNCTION_94_2();
                sub_1CA94C218();
                v53 = OUTLINED_FUNCTION_107_0();
                v55 = sub_1CA271BF8(v53, v54);
                v57 = v56;

                if (v57)
                {
                  OUTLINED_FUNCTION_36_8();
                  v58 = v85;
                  sub_1CA42B9A4(v59, v85);
                  OUTLINED_FUNCTION_0_31();
                  v60 = v58;
                  v61 = v86;
                  sub_1CA42BA50(v60, v86);
                  v62._countAndFlagsBits = v112;
                  v62._object = v31;
                  DrawerAction.setAttributionContainer(bundleID:)(v62);
                  sub_1CA42B9A4(v61, v87);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    OUTLINED_FUNCTION_21();
                    sub_1CA2E5CDC();
                    v108 = v66;
                  }

                  OUTLINED_FUNCTION_70_1();
                  if (v64)
                  {
                    OUTLINED_FUNCTION_17_1(v63);
                    sub_1CA2E5CDC();
                    v108 = v67;
                  }

                  OUTLINED_FUNCTION_2_31();
                  sub_1CA42B9FC();
                  *(v108 + 16) = v55;
                  OUTLINED_FUNCTION_68_0();
                  OUTLINED_FUNCTION_0_31();
                  sub_1CA42BA50(v87, v65);
                }
              }
            }

            v28 = v104;
            v51 = v109;
            while (1)
            {
              v52 = v43 + 1;
              if (__OFADD__(v43, 1))
              {
                __break(1u);
                goto LABEL_38;
              }

              if (v52 >= v49)
              {
                break;
              }

              v50 = *(v44 + 8 * v52);
              ++v43;
              if (v50)
              {
                v43 = v52;
                goto LABEL_17;
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1CA42B290();
              v108 = v76;
            }

            v14 = v94;
            v22 = v92;
            v68 = v103;
            v69 = *(v108 + 16);
            v113 = v108 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
            v114 = v69;
            sub_1CA42B7D4(&v113, type metadata accessor for DrawerAction, sub_1CA42EC80, sub_1CA42C448);
            v103 = v68;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v77 = OUTLINED_FUNCTION_21();
              sub_1CA2E60FC(v77, v78, v79, v51);
              v51 = v80;
            }

            v27 = v93;
            v70 = *(v51 + 16);
            v109 = v51;
            OUTLINED_FUNCTION_70_1();
            if (v64)
            {
              v81 = OUTLINED_FUNCTION_17_1(v71);
              sub_1CA2E60FC(v81, v82, v83, v109);
              v109 = v84;
            }

            (*v91)(v105, v106);
            v72 = v109;
            *(v109 + 16) = v51;
            v73 = (v72 + 56 * v70);
            v74 = v100;
            v73[4] = v101;
            v73[5] = v74;
            v75 = v98;
            v73[6] = v99;
            v73[7] = v75;
            v73[8] = v112;
            v73[9] = v31;
            v73[10] = v108;
          }

          else
          {
          }

          v24 = v107;
        }

        else
        {
        }
      }

      if (++v26 == v28)
      {
        sub_1CA42AC68(v111);

        goto LABEL_36;
      }
    }

LABEL_38:
    __break(1u);
  }

  else
  {
LABEL_36:
    OUTLINED_FUNCTION_36();
  }
}

BOOL sub_1CA424E48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v10[2] = a3();
  v10[3] = v4;
  v10[0] = a3();
  v10[1] = v5;
  v6 = sub_1CA27BAF0();
  v8 = OUTLINED_FUNCTION_110_2(v10, MEMORY[0x1E69E6158], v7, v6);

  return v8 == -1;
}

void sub_1CA424EEC()
{
  OUTLINED_FUNCTION_30();
  v1 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_18_0(v1);
  v3 = v2;
  v4 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA627804();
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v7[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v7[1] = v6;
  sub_1CA42B6AC(v7);
  *v0 = v4;
}

uint64_t sub_1CA424F8C(uint64_t *a1)
{
  v2 = *(sub_1CA9486C8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA62781C();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1CA42B7D4(v7, MEMORY[0x1E6996C28], sub_1CA42E0C4, sub_1CA42C128);
  *a1 = v3;
  return result;
}

uint64_t sub_1CA425070(uint64_t *a1, uint64_t a2)
{
  v4 = *(type metadata accessor for DrawerAction(0) - 8);
  v5 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA627834();
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v9[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9[1] = v7;

  sub_1CA42BACC(v9, a2);
  *a1 = v5;
}

uint64_t sub_1CA425150(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA62784C();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1CA42BC40(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1CA425204(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA627864();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1CA42BD88(v6);
  *a1 = v2;
  return result;
}

void ActionDrawerDataSource.searchResults(query:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int64x2_t *a3@<X8>)
{
  v168 = a2;
  v160 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_1_0();
  v143 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19();
  v159 = v8 - v9;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_48_0();
  v158 = v11;
  v142 = type metadata accessor for ActionDrawerActionSearchResult(0);
  OUTLINED_FUNCTION_1_0();
  v141 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19();
  v140 = v14 - v15;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_45_0();
  v139 = v17;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v131 - v19;
  v21 = type metadata accessor for DrawerAction(0);
  v22 = OUTLINED_FUNCTION_18_0(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6_0();
  v164 = v24 - v23;
  v161 = type metadata accessor for DrawerSearchIndexItem(0);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_6_0();
  v28 = v27 - v26;
  v157 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_6_0();
  v166 = v33 - v32;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10);
  OUTLINED_FUNCTION_1_0();
  v162 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_45_0();
  v167 = v37;
  OUTLINED_FUNCTION_31_2();
  v39 = MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  v43 = v131 - v42;
  v170.i64[0] = MEMORY[0x1E69E7CC0];
  v170.i64[1] = MEMORY[0x1E69E7CC0];
  v44 = *(v3 + 88);
  v45 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
  if (!v44)
  {
    goto LABEL_47;
  }

  v163 = v45;
  v46 = a3;
  v155 = v41;
  v156 = v40;
  v47 = *(v3 + 112);
  v48 = *(v3 + 120);
  v171 = v44;
  v172 = *(v3 + 96);
  v173 = v47;
  v174 = v48;

  v49 = v47;
  OUTLINED_FUNCTION_139();
  sub_1CA94C218();
  v50 = v168;
  if (sub_1CA94C468() <= 0)
  {

    a3 = v46;
    v45 = v163;
LABEL_47:
    *a3 = v45;
    return;
  }

  v133 = v3;
  v134 = v48;
  sub_1CA4145F8(a1, v50);
  v53 = v51;
  v154 = *(v51 + 16);
  if (!v154)
  {

    v130 = MEMORY[0x1E69E7CC0];
    a3 = v46;
LABEL_43:
    if (*(v130 + 16))
    {
      sub_1CA2B7F34(v130);
    }

    else
    {
    }

    v45 = v170;
    goto LABEL_47;
  }

  v131[1] = v44;
  v132 = v46;
  v54 = 0;
  v153 = v51 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
  v152 = v30 + 8;
  v151 = *MEMORY[0x1E69E10A0];
  v150 = (v143 + 32);
  v138 = (v143 + 16);
  v137 = v143 + 8;
  *&v52 = 136315650;
  v136 = v52;
  v145 = MEMORY[0x1E69E7CC0];
  v163.i64[0] = MEMORY[0x1E69E7CC0];
  v144 = MEMORY[0x1E69E7CC0];
  v135 = v20;
  v148 = v28;
  v55 = v167;
  v56 = v156;
  v147 = v51;
  v149 = v43;
  while (v54 < *(v53 + 16))
  {
    v57 = *(v162 + 72);
    v168 = v54;
    OUTLINED_FUNCTION_144_1(v153 + v57 * v54, v43);
    sub_1CA949C58();
    v58 = v43;
    v59 = v43;
    v60 = v155;
    OUTLINED_FUNCTION_144_1(v58, v155);
    OUTLINED_FUNCTION_144_1(v59, v55);
    OUTLINED_FUNCTION_144_1(v59, v56);
    v61 = sub_1CA949F68();
    v62 = sub_1CA94CC08();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = v56;
      v64 = swift_slowAlloc();
      v146.i64[0] = swift_slowAlloc();
      v169 = v146.i64[0];
      *v64 = v136;
      v65 = sub_1CA42928C();
      OUTLINED_FUNCTION_106_3(v60);
      v66 = OUTLINED_FUNCTION_35();
      sub_1CA26B54C(v66, v67, v68);
      OUTLINED_FUNCTION_101_3();

      *(v64 + 4) = v65;
      *(v64 + 12) = 2048;
      v69 = *(v167 + *(v165 + 36));
      OUTLINED_FUNCTION_106_3(v167);
      *(v64 + 14) = v69;
      *(v64 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4440C0, &qword_1CA983470);
      sub_1CA276B98(&qword_1EC4440C8, &qword_1EC4440C0, &qword_1CA983470);
      OUTLINED_FUNCTION_35();
      v70 = sub_1CA94C908();
      v55 = v167;
      OUTLINED_FUNCTION_106_3(v63);
      v71 = OUTLINED_FUNCTION_35();
      sub_1CA26B54C(v71, v72, v73);
      OUTLINED_FUNCTION_101_3();
      v28 = v148;

      *(v64 + 24) = v70;
      _os_log_impl(&dword_1CA256000, v61, v62, "Search result: %s - %f [%s]", v64, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      OUTLINED_FUNCTION_106_3(v56);
      OUTLINED_FUNCTION_106_3(v55);
      OUTLINED_FUNCTION_106_3(v60);
    }

    v74 = OUTLINED_FUNCTION_125_2();
    v75(v74, v157);
    v43 = v149;
    sub_1CA42B9A4(v149, v28);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v76 = *v150;
      v77 = v158;
      v78 = OUTLINED_FUNCTION_35();
      v79 = v160;
      v76(v78);
      (*v138)(v159, v77, v79);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_21();
        sub_1CA2E5A04();
        v163.i64[0] = v124;
      }

      v80 = v28;
      v82 = *(v163.i64[0] + 16);
      v81 = *(v163.i64[0] + 24);
      v83 = v55;
      if (v82 >= v81 >> 1)
      {
        OUTLINED_FUNCTION_18(v81);
        sub_1CA2E5A04();
        v163.i64[0] = v125;
      }

      v84 = v143;
      v85 = v160;
      (*(v143 + 8))(v158, v160);
      sub_1CA27080C(v43, &unk_1EC4440B0, &unk_1CA981B10);
      v86 = v163.i64[0];
      *(v163.i64[0] + 16) = v82 + 1;
      OUTLINED_FUNCTION_68_0();
      (v76)(v86 + v87 + *(v84 + 72) * v82, v159, v85);
      v170.i64[0] = v86;
      v53 = v147;
      v55 = v83;
      v28 = v80;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445408, &unk_1CA986FF0);

      OUTLINED_FUNCTION_0_31();
      sub_1CA42BA50(v28, v164);
      v88 = *&v43[*(v165 + 40)];
      OUTLINED_FUNCTION_16_16();
      v28 = v90 & v89;
      v92 = (v91 + 63) >> 6;
      sub_1CA94C218();
      v93 = 0;
      v53 = MEMORY[0x1E69E7CC0];
      while (v28)
      {
LABEL_21:
        v95 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v96 = (*(v88 + 48) + 112 * (v95 | (v93 << 6)));
        if (*v96 <= 1u)
        {
          v146 = *(v96 + 40);
          v97 = vshrq_n_u64(v146, 0xEuLL);
          if (vmovn_s64(vcgtq_u64(v97, vdupq_laneq_s64(v97, 1))).u32[0])
          {
            goto LABEL_50;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v100 = OUTLINED_FUNCTION_21();
            sub_1CA2E61F4(v100, v101, v102, v53);
            v53 = v103;
          }

          v99 = *(v53 + 16);
          v98 = *(v53 + 24);
          if (v99 >= v98 >> 1)
          {
            v104 = OUTLINED_FUNCTION_17_1(v98);
            sub_1CA2E61F4(v104, v105, v106, v53);
            v53 = v107;
          }

          *(v53 + 16) = v99 + 1;
          *(v53 + 16 * v99 + 32) = v146;
          v55 = v167;
        }
      }

      while (1)
      {
        v94 = v93 + 1;
        if (__OFADD__(v93, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v94 >= v92)
        {
          break;
        }

        v28 = *(v88 + 56 + 8 * v94);
        ++v93;
        if (v28)
        {
          v93 = v94;
          goto LABEL_21;
        }
      }

      OUTLINED_FUNCTION_1_29();
      v108 = v135;
      sub_1CA42B9A4(v164, v135);
      v109 = *&v43[*(v165 + 36)];
      v110 = v142;
      *(v108 + *(v142 + 20)) = v53;
      *(v108 + *(v110 + 24)) = v109;
      DrawerAction.needsInternalBadge.getter();
      if (v111)
      {
        v112 = OUTLINED_FUNCTION_30_11();
        sub_1CA42B9A4(v112, v139);
        v113 = v145;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_90_4();
        if ((v114 & 1) == 0)
        {
          OUTLINED_FUNCTION_21();
          sub_1CA2E612C();
          v113 = v126;
        }

        v145 = v113;
        v116 = *(v113 + 16);
        v115 = *(v113 + 24);
        if (v116 >= v115 >> 1)
        {
          OUTLINED_FUNCTION_18(v115);
          sub_1CA2E612C();
          v145 = v127;
        }

        OUTLINED_FUNCTION_38_8();
        OUTLINED_FUNCTION_2_31();
        sub_1CA42B9FC();
        sub_1CA27080C(v43, &unk_1EC4440B0, &unk_1CA981B10);
        *(v145 + 16) = v116 + 1;
        OUTLINED_FUNCTION_68_0();
        OUTLINED_FUNCTION_26_12();
        sub_1CA42BA50(v139, v117);
      }

      else
      {
        v118 = OUTLINED_FUNCTION_30_11();
        sub_1CA42B9A4(v118, v140);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_90_4();
        if ((v119 & 1) == 0)
        {
          OUTLINED_FUNCTION_21();
          sub_1CA2E612C();
          v144 = v128;
        }

        v121 = *(v144 + 16);
        v120 = *(v144 + 24);
        if (v121 >= v120 >> 1)
        {
          OUTLINED_FUNCTION_18(v120);
          sub_1CA2E612C();
          v144 = v129;
        }

        OUTLINED_FUNCTION_38_8();
        OUTLINED_FUNCTION_2_31();
        sub_1CA42B9FC();
        sub_1CA27080C(v43, &unk_1EC4440B0, &unk_1CA981B10);
        v122 = v144;
        *(v144 + 16) = v121 + 1;
        OUTLINED_FUNCTION_68_0();
        OUTLINED_FUNCTION_26_12();
        sub_1CA42BA50(v140, v123);
        v170.i64[1] = v122;
      }
    }

    v54 = v168 + 1;
    v56 = v156;
    if (v168 + 1 == v154)
    {

      a3 = v132;
      v130 = v145;
      goto LABEL_43;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t ActionDrawerDataSource.actions(in:query:)(__C::WFContentCategory a1, uint64_t a2, uint64_t a3)
{
  ActionDrawerDataSource._actions(in:query:)(a1, *&a2);

  return v4;
}

WorkflowKit::ActionDrawerDataSource::CategorizedActionsResult __swiftcall ActionDrawerDataSource._actions(in:query:)(__C::WFContentCategory in, Swift::String_optional query)
{
  OUTLINED_FUNCTION_37_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for DrawerAction(0);
  v12 = OUTLINED_FUNCTION_12(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_19();
  v69 = v13 - v14;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_45_0();
  v68 = v16;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_83_1();
  sub_1CA4263A4(v6, v4, v70);
  v18 = v70[0].i64[0];
  v58 = v10;
  if (!v70[0].i64[0])
  {
    v24 = MEMORY[0x1E69E7CC0];
    v23 = MEMORY[0x1E69E7CC0];
LABEL_34:
    *v58 = v24;
    v58[1] = v23;
    OUTLINED_FUNCTION_36();
    goto LABEL_36;
  }

  v19 = sub_1CA6736A4(v8);
  v21 = v19;
  v61 = v19[2];
  if (!v61)
  {

    v24 = MEMORY[0x1E69E7CC0];
    v23 = MEMORY[0x1E69E7CC0];
LABEL_33:
    sub_1CA27080C(v70, &unk_1EC445410, &unk_1CA987000);
    goto LABEL_34;
  }

  v22 = 0;
  v60 = v19 + 4;
  v23 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  v59 = v19;
  while (v22 < v21[2])
  {
    v65 = v24;
    v25 = v21;
    v26 = &v60[5 * v22];
    v27 = v26[1];
    v63 = v26[2];
    v64 = *v26;
    v28 = v26[4];
    v29 = *(v28 + 16);
    v66 = v26[3];
    v67 = v27;
    if (v29)
    {
      v62 = v22;
      swift_bridgeObjectRetain_n();
      sub_1CA94C218();
      sub_1CA94C218();
      v30 = (v28 + 40);
      v31 = MEMORY[0x1E69E7CC0];
      do
      {
        v27 = *(v30 - 1);
        v32 = *v30;
        v33 = *(v18 + 16);
        sub_1CA94C218();
        if (v33 && (sub_1CA271BF8(v27, v32), (v34 & 1) != 0))
        {

          OUTLINED_FUNCTION_36_8();
          sub_1CA42B9A4(v35, v68);
          OUTLINED_FUNCTION_0_31();
          sub_1CA42BA50(v68, v2);
          sub_1CA42B9A4(v2, v69);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_21();
            sub_1CA2E5CDC();
            v31 = v45;
          }

          OUTLINED_FUNCTION_70_1();
          if (v37)
          {
            OUTLINED_FUNCTION_17_1(v36);
            sub_1CA2E5CDC();
            v31 = v46;
          }

          OUTLINED_FUNCTION_2_31();
          sub_1CA42B9FC();
          *(v31 + 16) = v27;
          OUTLINED_FUNCTION_68_0();
          OUTLINED_FUNCTION_0_31();
          sub_1CA42BA50(v38, v39);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_21();
            sub_1CA26DADC();
            v23 = v43;
          }

          v41 = *(v23 + 16);
          v40 = *(v23 + 24);
          if (v41 >= v40 >> 1)
          {
            OUTLINED_FUNCTION_18(v40);
            sub_1CA26DADC();
            v23 = v44;
          }

          *(v23 + 16) = v41 + 1;
          v42 = v23 + 16 * v41;
          *(v42 + 32) = v27;
          *(v42 + 40) = v32;
        }

        v30 += 2;
        --v29;
      }

      while (v29);

      v24 = v65;
      v21 = v59;
      v22 = v62;
    }

    else
    {
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      v31 = MEMORY[0x1E69E7CC0];
      v21 = v25;
      v24 = v65;
    }

    if (*(v31 + 16))
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_21();
        sub_1CA2E60FC(v50, v51, v52, v24);
        v24 = v53;
      }

      v47 = *(v24 + 16);
      OUTLINED_FUNCTION_70_1();
      if (v37)
      {
        v54 = OUTLINED_FUNCTION_17_1(v48);
        sub_1CA2E60FC(v54, v55, v56, v24);
        v24 = v19;
      }

      *(v24 + 16) = v27;
      v49 = (v24 + 56 * v47);
      v49[4] = v64;
      v49[5] = v67;
      v49[6] = v63;
      v49[7] = v66;
      v49[8] = 0;
      v49[9] = 0;
      v49[10] = v31;
    }

    else
    {
    }

    if (++v22 == v61)
    {

      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_36:
  result.missingActionIDs._rawValue = v20;
  result.sections._rawValue = v19;
  return result;
}

void sub_1CA4263A4(uint64_t a1@<X0>, uint64_t a2@<X1>, int64x2_t *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for ActionDrawerActionSearchResult(0);
  v44[0] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DrawerAction(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_11;
  }

  v48[0].i64[0] = a1;
  v48[0].i64[1] = a2;
  v15 = sub_1CA948868();
  v44[1] = v44;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  *&v45 = a2;
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948848();
  sub_1CA27BAF0();
  v19 = sub_1CA94D1A8();
  v46.i64[0] = a3;
  v21 = v20;
  v22 = v18;
  v23 = v45;
  (*(v16 + 8))(v22, v15);

  v24 = HIBYTE(v21) & 0xF;
  v25 = (v21 & 0x2000000000000000) == 0;
  a3 = v46.i64[0];
  if (v25)
  {
    v24 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    ActionDrawerDataSource.searchResults(query:)(a1, v23, v48);
    v26 = v48[0].i64[1];

    v27 = *(v26 + 16);
    if (v27)
    {
      v47 = MEMORY[0x1E69E7CC0];
      sub_1CA2B8F5C();
      v28 = v47;
      v29 = *(v44[0] + 80);
      *&v45 = v26;
      v30 = v26 + ((v29 + 32) & ~v29);
      v31 = *(v44[0] + 72);
      do
      {
        sub_1CA42B9A4(v30, v10);
        sub_1CA42B9A4(v10, v14);
        sub_1CA42B9FC();
        v47 = v28;
        v32 = *(v28 + 16);
        if (v32 >= *(v28 + 24) >> 1)
        {
          sub_1CA2B8F5C();
          v28 = v47;
        }

        *(v28 + 16) = v32 + 1;
        sub_1CA42BA50(v14, v28 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v32);
        v30 += v31;
        --v27;
      }

      while (v27);

      a3 = v46.i64[0];
    }

    else
    {

      v28 = MEMORY[0x1E69E7CC0];
    }

    v46.i32[0] = sub_1CA41B950();
    v39 = *(v4 + 32);
    v40 = *(v4 + 72);
    if (v39)
    {
      sub_1CA42ABDC(*(v4 + 32));
      sub_1CA94C218();
      *&v45 = v40;
    }

    else
    {
      sub_1CA42ABDC(0);
      *&v45 = MEMORY[0x1E69E7CC0];
    }

    sub_1CA42AC68(v39);
    v41 = *(v4 + 32);
    v42 = *(v4 + 80);
    if (v41)
    {
      sub_1CA42ABDC(v41);
      sub_1CA94C218();
      v43 = v42;
    }

    else
    {
      sub_1CA42ABDC(0);
      v43 = MEMORY[0x1E69E7CC0];
    }

    sub_1CA42AC68(v41);
    sub_1CA41916C(v28, v46.i8[0] & 1, v45, v43, v48[0].i64);
    v37 = v48[1];
    v38 = v48[0];
    v34 = v49;
    v35 = v50;
    v36 = v51;
  }

  else
  {
LABEL_11:
    v33 = *(v4 + 32);
    v45 = *(v4 + 48);
    v46 = v33;
    v34 = *(v4 + 64);
    v35 = *(v4 + 72);
    v36 = *(v4 + 80);
    sub_1CA42ABDC(v33);
    v37 = v45;
    v38 = v46;
  }

  *a3 = v38;
  a3[1] = v37;
  a3[2].i64[0] = v34;
  a3[2].i64[1] = v35;
  a3[3].i64[0] = v36;
}

void ActionDrawerDataSource.favorites(query:)()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for DrawerAction(0);
  v9 = OUTLINED_FUNCTION_12(v8);
  v33 = v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_127_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_83_1();
  sub_1CA4263A4(v7, v5, v34);
  v16 = v34[0].i64[0];
  if (v34[0].i64[0])
  {
    v17 = *(*(v3 + 128) + 16);
    if (v17)
    {
      v18 = sub_1CA94C218() + 40;
      v19 = MEMORY[0x1E69E7CC0];
      do
      {
        if (*(v16 + 16))
        {
          sub_1CA94C218();
          v20 = OUTLINED_FUNCTION_72_0();
          v22 = sub_1CA271BF8(v20, v21);
          v24 = v23;

          if (v24)
          {
            sub_1CA42B9A4(*(v16 + 56) + *(v33 + 72) * v22, v1);
            OUTLINED_FUNCTION_0_31();
            v25 = OUTLINED_FUNCTION_70();
            sub_1CA42BA50(v25, v26);
            sub_1CA42B9A4(v2, v13);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_21();
              sub_1CA2E5CDC();
              v19 = v30;
            }

            v28 = *(v19 + 16);
            v27 = *(v19 + 24);
            if (v28 >= v27 >> 1)
            {
              OUTLINED_FUNCTION_64(v27);
              sub_1CA2E5CDC();
              v19 = v31;
            }

            OUTLINED_FUNCTION_2_31();
            sub_1CA42B9FC();
            *(v19 + 16) = v28 + 1;
            OUTLINED_FUNCTION_68_0();
            OUTLINED_FUNCTION_0_31();
            sub_1CA42BA50(v13, v29);
          }
        }

        v18 += 16;
        --v17;
      }

      while (v17);

      sub_1CA27080C(v34, &unk_1EC445410, &unk_1CA987000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440D0, &unk_1CA9826F0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1CA981310;
      *(v32 + 32) = 0x657469726F766166;
      *(v32 + 40) = 0xE900000000000073;
      *(v32 + 48) = 0u;
      *(v32 + 64) = 0u;
      *(v32 + 80) = v19;
    }

    else
    {
      sub_1CA27080C(v34, &unk_1EC445410, &unk_1CA987000);
    }
  }

  OUTLINED_FUNCTION_36();
}

void ActionDrawerDataSource.actions(for:query:)()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v174._countAndFlagsBits = v5;
  v174._object = v6;
  v7 = type metadata accessor for DrawerAction(0);
  v8 = OUTLINED_FUNCTION_12(v7);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19();
  v13 = v11 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v153 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v153 - v19;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_45_0();
  v163 = v21;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_45_0();
  v181 = v23;
  OUTLINED_FUNCTION_31_2();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v153 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v153 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v153 - v31;
  v169 = v0;
  sub_1CA4263A4(v4, v2, &v185);
  v182 = v185.i64[0];
  if (v185.i64[0])
  {
    v33 = v186;
    if (!*(v186 + 16) || (v34 = sub_1CA271BF8(v174._countAndFlagsBits, v174._object), (v35 & 1) == 0))
    {
      sub_1CA27080C(&v185, &unk_1EC445410, &unk_1CA987000);
      goto LABEL_29;
    }

    v154 = v20;
    v155 = v17;
    v156 = v13;
    v160 = v10;
    v36 = (*(v33 + 56) + 16 * v34);
    v37 = v36[1];
    v179 = *v36;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C438("Internal", 8);
    if (qword_1EDB9F5F0 != -1)
    {
LABEL_85:
      swift_once();
    }

    v38 = qword_1EDB9F690;
    OUTLINED_FUNCTION_134();
    v39 = sub_1CA94C368();
    OUTLINED_FUNCTION_134();
    v40 = sub_1CA94C368();

    v41 = [v38 localizedStringForKey:v39 value:v40 table:0];

    v167 = sub_1CA94C3A8();
    v43 = v42;

    v159 = 0x80000001CA9B5A20;
    v44 = v37;
    v45 = v37 + 56;
    v46 = 1 << *(v37 + 32);
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    v37 = v47 & *(v37 + 56);
    v48 = (v46 + 63) >> 6;
    v180 = v44;
    sub_1CA94C218();
    v168 = v43;
    sub_1CA94C218();
    v49 = 0;
    v178 = 0;
    v161 = MEMORY[0x1E69E7CC0];
    v177 = MEMORY[0x1E69E7CC0];
    v162 = MEMORY[0x1E69E7CC0];
    v176 = MEMORY[0x1E69E7CC0];
    while (v37)
    {
      v50 = v37;
LABEL_14:
      v37 = (v50 - 1) & v50;
      if (*(v182 + 16))
      {
        OUTLINED_FUNCTION_94_2();
        sub_1CA94C218();
        v52 = OUTLINED_FUNCTION_61();
        sub_1CA271BF8(v52, v53);
        v55 = v54;

        if (v55)
        {
          OUTLINED_FUNCTION_117_3();
          OUTLINED_FUNCTION_1_29();
          sub_1CA42B9A4(v56, v30);
          OUTLINED_FUNCTION_0_31();
          sub_1CA42BA50(v30, v32);
          DrawerAction.setAttributionContainer(bundleID:)(v174);
          DrawerAction.needsInternalBadge.getter();
          if (v57)
          {
            OUTLINED_FUNCTION_1_29();
            sub_1CA42B9A4(v32, v27);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_21();
              sub_1CA2E5CDC();
              v162 = v65;
            }

            OUTLINED_FUNCTION_96_4(&v188);
            if (v60)
            {
              OUTLINED_FUNCTION_64(v59);
              sub_1CA2E5CDC();
              v61 = v66;
              v173 = v27;
              v162 = v66;
              v177 = v66;
            }

            else
            {
              v61 = v58;
              v173 = v27;
              v177 = v58;
            }
          }

          else
          {
            OUTLINED_FUNCTION_1_29();
            sub_1CA42B9A4(v32, v181);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_21();
              sub_1CA2E5CDC();
              v161 = v67;
            }

            OUTLINED_FUNCTION_96_4(&v187);
            if (v60)
            {
              OUTLINED_FUNCTION_64(v63);
              sub_1CA2E5CDC();
              v61 = v68;
              v173 = v181;
              v161 = v68;
              v176 = v68;
            }

            else
            {
              v61 = v62;
              v173 = v181;
              v176 = v62;
            }
          }

          OUTLINED_FUNCTION_2_31();
          sub_1CA42B9FC();
          *(v61 + 16) = v175;
          OUTLINED_FUNCTION_68_0();
          OUTLINED_FUNCTION_0_31();
          sub_1CA42BA50(v173, v64);
        }
      }
    }

    while (1)
    {
      v51 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      if (v51 >= v48)
      {
        break;
      }

      v50 = *(v45 + 8 * v51);
      ++v49;
      if (v50)
      {
        v49 = v51;
        goto LABEL_14;
      }
    }

    v69 = v161;
    if (*(v161 + 16))
    {
      sub_1CA427964(v176);
      v71 = v70;

      sub_1CA94C218();
      v69 = v71;
      sub_1CA94C218();
      sub_1CA2E60FC(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v32 = v72;
      v73 = *(v72 + 2);
      OUTLINED_FUNCTION_70_1();
      v75 = v179;
      if (v60)
      {
        v145 = OUTLINED_FUNCTION_17_1(v74);
        sub_1CA2E60FC(v145, v146, v147, v32);
        v32 = v148;
      }

      *(v32 + 2) = v71;
      v76 = &v32[56 * v73];
      *(v76 + 4) = 0x67657461632D6F6ELL;
      *(v76 + 5) = 0xEB0000000079726FLL;
      *(v76 + 3) = 0u;
      *(v76 + 4) = 0u;
      *(v76 + 10) = v71;
    }

    else
    {
      v32 = MEMORY[0x1E69E7CC0];
      v75 = v179;
    }

    v161 = v69;
    if (*(v162 + 16))
    {
      sub_1CA427964(v177);
      v78 = v77;

      sub_1CA94C218();
      sub_1CA94C218();
      v162 = v78;
      sub_1CA94C218();
      sub_1CA2E60FC(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v37 = v79;
      v80 = *(v79 + 16);
      OUTLINED_FUNCTION_70_1();
      v82 = v178;
      if (v60)
      {
        v149 = OUTLINED_FUNCTION_17_1(v81);
        sub_1CA2E60FC(v149, v150, v151, v37);
        v37 = v152;
      }

      *(v37 + 16) = v78;
      v83 = (v37 + 56 * v80);
      v83[4] = 0xD000000000000014;
      v84 = v167;
      v83[5] = v159;
      v83[6] = v84;
      v83[7] = v168;
      v83[8] = 0;
      v85 = v162;
      v83[9] = 0;
      v83[10] = v85;
    }

    else
    {
      v37 = MEMORY[0x1E69E7CC0];
      v82 = v178;
    }

    v183 = sub_1CA42AEE4(v75);
    sub_1CA425204(&v183);
    v153 = v82;
    if (!v82)
    {

      v86 = v183;
      v166 = *(v183 + 16);
      if (!v166)
      {
        goto LABEL_81;
      }

      v87 = 0;
      v165 = v183 + 32;
      v164 = v183;
      while (1)
      {
        if (v87 >= *(v86 + 16))
        {
          goto LABEL_84;
        }

        v179 = v37;
        v180 = v32;
        v88 = (v165 + 24 * v87);
        v30 = *v88;
        v89 = v88[1];
        v90 = v88[2];
        v178 = (v87 + 1);
        v183 = 0;
        v184 = 0xE000000000000000;
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94D408();

        v183 = 762343521;
        v184 = 0xE400000000000000;
        countAndFlagsBits = v174._countAndFlagsBits;
        object = v174._object;
        MEMORY[0x1CCAA1300](v174._countAndFlagsBits, v174._object);
        MEMORY[0x1CCAA1300](0x726F67657461632DLL, 0xEA00000000002D79);
        MEMORY[0x1CCAA1300](v30, v89);
        v171 = v183;
        v177 = v184;
        v183 = 0;
        v184 = 0xE000000000000000;
        sub_1CA94C218();
        sub_1CA94D408();

        v183 = 762343521;
        v184 = 0xE400000000000000;
        MEMORY[0x1CCAA1300](countAndFlagsBits, object);
        MEMORY[0x1CCAA1300](0x726F67657461632DLL, 0xEA00000000002D79);
        MEMORY[0x1CCAA1300](v30, v89);
        MEMORY[0x1CCAA1300](0x616E7265746E692DLL, 0xE90000000000006CLL);
        v172 = v183;
        v176 = v184;
        v183 = 10272;
        v184 = 0xE200000000000000;
        MEMORY[0x1CCAA1300](v167, v168);
        MEMORY[0x1CCAA1300](41, 0xE100000000000000);
        v32 = v183;
        v93 = v184;
        v173 = v30;
        v183 = v30;
        v184 = v89;
        sub_1CA94C218();
        MEMORY[0x1CCAA1300](v32, v93);

        v37 = 0;
        v170 = v183;
        v175 = v184;
        OUTLINED_FUNCTION_16_16();
        v96 = v95 & v94;
        v98 = (v97 + 63) >> 6;
        v27 = MEMORY[0x1E69E7CC0];
        v181 = MEMORY[0x1E69E7CC0];
        while (v96)
        {
          v99 = v96;
LABEL_51:
          v96 = (v99 - 1) & v99;
          if (*(v182 + 16))
          {
            OUTLINED_FUNCTION_94_2();
            v102 = *v101;
            v32 = v101[1];
            sub_1CA94C218();
            sub_1CA271BF8(v102, v32);
            v30 = v103;

            if (v30)
            {
              OUTLINED_FUNCTION_117_3();
              v32 = *(v104 + 72);
              OUTLINED_FUNCTION_1_29();
              v105 = v154;
              sub_1CA42B9A4(v106, v154);
              OUTLINED_FUNCTION_0_31();
              v107 = v105;
              v108 = v163;
              sub_1CA42BA50(v107, v163);
              DrawerAction.setAttributionContainer(bundleID:)(v174);
              DrawerAction.needsInternalBadge.getter();
              if (v109)
              {
                OUTLINED_FUNCTION_1_29();
                sub_1CA42B9A4(v108, v155);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_21();
                  sub_1CA2E5CDC();
                  v181 = v115;
                }

                v110 = v181;
                v30 = *(v181 + 2);
                OUTLINED_FUNCTION_121_2();
                if (!v60)
                {
                  v112 = &v185;
LABEL_62:
                  OUTLINED_FUNCTION_82_2(v112);
                  goto LABEL_63;
                }

                OUTLINED_FUNCTION_64(v111);
                OUTLINED_FUNCTION_160();
                sub_1CA2E5CDC();
                v110 = v116;
                OUTLINED_FUNCTION_82_2(&v185);
                v181 = v117;
              }

              else
              {
                OUTLINED_FUNCTION_1_29();
                sub_1CA42B9A4(v108, v156);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_21();
                  sub_1CA2E5CDC();
                  v27 = v118;
                }

                v30 = *(v27 + 2);
                OUTLINED_FUNCTION_121_2();
                if (!v60)
                {
                  v110 = v27;
                  v112 = &v185.u64[1];
                  goto LABEL_62;
                }

                OUTLINED_FUNCTION_64(v113);
                sub_1CA2E5CDC();
                v110 = v119;
                OUTLINED_FUNCTION_82_2(&v185.i64[1]);
                v27 = v120;
              }

LABEL_63:
              OUTLINED_FUNCTION_2_31();
              sub_1CA42B9FC();
              *(v110 + 16) = v158;
              OUTLINED_FUNCTION_68_0();
              OUTLINED_FUNCTION_0_31();
              sub_1CA42BA50(v157, v114);
            }
          }
        }

        while (1)
        {
          v100 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_83;
          }

          if (v100 >= v98)
          {
            break;
          }

          v99 = *(v90 + 56 + 8 * v100);
          ++v37;
          if (v99)
          {
            v37 = v100;
            goto LABEL_51;
          }
        }

        sub_1CA427964(v27);
        v122 = v121;
        sub_1CA94C218();

        v123 = *(v122 + 16);

        if (v123)
        {
          v27 = v177;
          sub_1CA94C218();
          sub_1CA94C218();
          sub_1CA94C218();
          v32 = v180;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v87 = v178;
          v37 = v179;
          v86 = v164;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v133 = OUTLINED_FUNCTION_21();
            sub_1CA2E60FC(v133, v134, v135, v32);
            v32 = v136;
          }

          v126 = *(v32 + 2);
          v125 = *(v32 + 3);
          if (v126 >= v125 >> 1)
          {
            v137 = OUTLINED_FUNCTION_64(v125);
            sub_1CA2E60FC(v137, v126 + 1, 1, v32);
            v32 = v138;
          }

          *(v32 + 2) = v126 + 1;
          v127 = &v32[56 * v126];
          *(v127 + 4) = v171;
          *(v127 + 5) = v27;
          *(v127 + 6) = v173;
          *(v127 + 7) = v89;
          *(v127 + 8) = 0;
          *(v127 + 9) = 0;
          *(v127 + 10) = v122;
        }

        else
        {
          v37 = v179;
          v32 = v180;
          v86 = v164;
          v27 = v177;
          v87 = v178;
        }

        if (*(v181 + 2))
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v139 = OUTLINED_FUNCTION_21();
            sub_1CA2E60FC(v139, v140, v141, v37);
            v37 = v142;
          }

          v129 = *(v37 + 16);
          v128 = *(v37 + 24);
          if (v129 >= v128 >> 1)
          {
            v143 = OUTLINED_FUNCTION_64(v128);
            sub_1CA2E60FC(v143, v129 + 1, 1, v37);
            v37 = v144;
          }

          *(v37 + 16) = v129 + 1;
          v130 = (v37 + 56 * v129);
          v131 = v176;
          v130[4] = v172;
          v130[5] = v131;
          v132 = v175;
          v130[6] = v170;
          v130[7] = v132;
          v130[8] = 0;
          v130[9] = 0;
          v130[10] = v181;
        }

        else
        {
        }

        if (v87 == v166)
        {
LABEL_81:

          sub_1CA27080C(&v185, &unk_1EC445410, &unk_1CA987000);

          v183 = v32;
          sub_1CA2B7F60(v37);

          swift_bridgeObjectRelease_n();

          goto LABEL_29;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    OUTLINED_FUNCTION_36();
  }
}

void sub_1CA427964(uint64_t a1)
{
  v2 = a1;

  sub_1CA94C218();
  sub_1CA425070(&v2, v1);
}

BOOL sub_1CA4279D4(uint64_t a1, uint64_t a2)
{
  v3 = *(ActionDrawerDataSource.topHits(for:)(a1) + 16);

  v4 = *(ActionDrawerDataSource.topHits(for:)(a2) + 16);

  if (v3)
  {
    if (!v4)
    {
      return 1;
    }
  }

  else if (v4)
  {
    return 0;
  }

  DrawerAction.title.getter();
  DrawerAction.title.getter();
  sub_1CA27BAF0();
  v6 = sub_1CA94D1D8();

  return v6 == -1;
}

uint64_t ActionDrawerDataSource.topHits(for:)(uint64_t a1)
{
  v2 = v1;
  sub_1CA408F70();
  if (v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_52_6(v2 + 152, v4);
  if (!*(v2 + 152) || (v6 = *(a1 + *(type metadata accessor for DrawerAction(0) + 28)), sub_1CA94C218(), OUTLINED_FUNCTION_52_0(), sub_1CA323E30(), OUTLINED_FUNCTION_87(), , !v6))
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

void ActionDrawerDataSource.fetchSuggestedResults(for:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() sharedRecommender];
  OUTLINED_FUNCTION_123();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v13[4] = sub_1CA42BAA8;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1CA428970;
  v13[3] = &block_descriptor_10;
  v10 = _Block_copy(v13);
  sub_1CA94C218();

  v11 = OUTLINED_FUNCTION_3_3();
  sub_1CA4351B4(v11, v12, v10, v8);
  _Block_release(v10);
}

id sub_1CA427C64(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, __n128), uint64_t a5)
{
  v94 = a5;
  v95 = a4;
  v110 = a2;
  v111 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445420, &qword_1CA987028);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v109 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v92 - v9;
  v11 = type metadata accessor for DrawerAction(0);
  v102 = *(v11 - 1);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v108 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v97 = &v92 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v92 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v103 = &v92 - v19;
  if (a1)
  {
    v20 = a1;
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v114 = MEMORY[0x1E69E7CC0];
  v21 = sub_1CA25B410(v20);
  v112 = v20 & 0xC000000000000001;
  v113 = v21;
  result = sub_1CA94C218();
  for (i = 0; v113 != i; ++i)
  {
    if (v112)
    {
      result = MEMORY[0x1CCAA22D0](i, v20);
      v24 = result;
    }

    else
    {
      if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_76;
      }

      v24 = *(v20 + 8 * i + 32);
      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_75;
    }

    v25 = [v24 title];
    v26 = sub_1CA94C3A8();
    v28 = v27;

    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (!v29 || (v30 = objc_opt_self(), v31 = sub_1CA94C368(), v32 = [v30 applicationWithBundleIdentifier_], v31, LOBYTE(v31) = objc_msgSend(v32, sel_isLocked), v32, (v31 & 1) != 0) && ((objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass())))
    {
      result = swift_unknownObjectRelease();
    }

    else
    {
      sub_1CA94D4D8();
      sub_1CA94D518();
      sub_1CA94D528();
      result = sub_1CA94D4E8();
    }
  }

  v33 = v114;
  v116 = MEMORY[0x1E69E7CC0];
  if (!sub_1CA25B410(v114))
  {

    goto LABEL_70;
  }

  v34 = objc_opt_self();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445560, &qword_1CA9869A8);
  v101 = v33;
  v104 = v35;
  v36 = sub_1CA94C648();
  v93 = v34;
  v37 = [v34 suggestionSectionsForDonations:v36 excludingConvertedLinkActions:1];

  v92 = sub_1CA25B3D0(0, &unk_1EC445568, off_1E836DD48);
  v38 = sub_1CA94C658();

  v39 = v38;
  v100 = sub_1CA25B410(v38);
  if (v100)
  {
    v40 = 0;
    v98 = v38;
    v99 = v38 & 0xC000000000000001;
    v96 = v38 + 32;
    do
    {
      v41 = v99;
      sub_1CA275D70(v40, v99 == 0, v39);
      if (v41)
      {
        result = MEMORY[0x1CCAA22D0](v40, v39);
      }

      else
      {
        result = *(v96 + 8 * v40);
      }

      v42 = __OFADD__(v40, 1);
      v43 = (v40 + 1);
      if (v42)
      {
        goto LABEL_77;
      }

      v105 = result;
      v106 = v43;
      v44 = [result donations];
      v45 = sub_1CA94C658();

      result = sub_1CA25B410(v45);
      v112 = v45;
      v113 = result;
      v46 = 0;
      v110 = v45 & 0xFFFFFFFFFFFFFF8;
      v111 = v45 & 0xC000000000000001;
      v107 = MEMORY[0x1E69E7CC0];
      while (v113 != v46)
      {
        if (v111)
        {
          result = MEMORY[0x1CCAA22D0](v46, v112);
          v47 = result;
        }

        else
        {
          if (v46 >= *(v110 + 16))
          {
            goto LABEL_72;
          }

          v47 = *(v112 + 8 * v46 + 32);
          result = swift_unknownObjectRetain();
        }

        v48 = (v46 + 1);
        if (__OFADD__(v46, 1))
        {
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
          return result;
        }

        v49 = v11[6];
        v50 = sub_1CA94B1C8();
        __swift_storeEnumTagSinglePayload(v18 + v49, 1, 1, v50);
        v51 = [objc_opt_self() sharedRegistry];
        swift_unknownObjectRetain();
        v52 = [v51 createActionWithDonation_];

        if (v52)
        {
          *v18 = v52;
          type metadata accessor for DrawerAction.DrawerActionStorage(0);
          swift_storeEnumTagMultiPayload();
          v53 = v52;
          sub_1CA27080C(v18 + v49, &qword_1EC4445D0, &qword_1CA983080);
          __swift_storeEnumTagSinglePayload(v18 + v49, 1, 1, v50);
          *(v18 + v11[5]) = v47;
          v114 = 0x6E6F6974616E6F64;
          v115 = 0xE90000000000002ELL;
          v54 = [v47 identifier];
          v55 = sub_1CA94C3A8();
          v57 = v56;

          MEMORY[0x1CCAA1300](v55, v57);

          swift_unknownObjectRelease();
          v58 = v115;
          v59 = (v18 + v11[7]);
          *v59 = v114;
          v59[1] = v58;
          sub_1CA42B9A4(v18, v10);
          __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
          sub_1CA42B9FC();
          if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
          {
            goto LABEL_41;
          }

          sub_1CA42BA50(v10, v103);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CA2E5CDC();
            v107 = v62;
          }

          v60 = v107[2];
          if (v60 >= v107[3] >> 1)
          {
            sub_1CA2E5CDC();
            v107 = v63;
          }

          v61 = v107;
          v107[2] = v60 + 1;
          result = sub_1CA42BA50(v103, v61 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v60);
          v46 = v48;
        }

        else
        {
          swift_unknownObjectRelease_n();
          sub_1CA27080C(v18 + v49, &qword_1EC4445D0, &qword_1CA983080);
          __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
LABEL_41:
          result = sub_1CA27080C(v10, &qword_1EC445420, &qword_1CA987028);
          ++v46;
        }
      }

      sub_1CA2B8084(v107);

      v40 = v106;
      v39 = v98;
    }

    while (v106 != v100);
  }

  v64 = sub_1CA94C648();

  v65 = [v93 activitySectionsForDonations_];

  v66 = sub_1CA94C658();
  v105 = sub_1CA25B410(v66);
  if (!v105)
  {
    goto LABEL_69;
  }

  v67 = 0;
  v103 = v66 & 0xC000000000000001;
  v100 = (v66 + 32);
  v101 = v66;
  do
  {
    v68 = v103;
    sub_1CA275D70(v67, v103 == 0, v66);
    if (v68)
    {
      result = MEMORY[0x1CCAA22D0](v67, v66);
    }

    else
    {
      result = v100[v67];
    }

    v42 = __OFADD__(v67, 1);
    v69 = (v67 + 1);
    if (v42)
    {
      goto LABEL_78;
    }

    v106 = result;
    v107 = v69;
    v70 = [result donations];
    v71 = sub_1CA94C658();

    result = sub_1CA25B410(v71);
    v72 = 0;
    v112 = v71 & 0xC000000000000001;
    v113 = result;
    v111 = v71 & 0xFFFFFFFFFFFFFF8;
    v110 = MEMORY[0x1E69E7CC0];
    while (v113 != v72)
    {
      if (v112)
      {
        result = MEMORY[0x1CCAA22D0](v72, v71);
        v73 = result;
      }

      else
      {
        if (v72 >= *(v111 + 16))
        {
          goto LABEL_74;
        }

        v73 = *(v71 + 8 * v72 + 32);
        result = swift_unknownObjectRetain();
      }

      if (__OFADD__(v72, 1))
      {
        goto LABEL_73;
      }

      v74 = v11[6];
      v75 = sub_1CA94B1C8();
      v76 = v108;
      __swift_storeEnumTagSinglePayload(&v108[v74], 1, 1, v75);
      v77 = [objc_opt_self() sharedRegistry];
      swift_unknownObjectRetain();
      v78 = [v77 createActionWithDonation_];

      if (v78)
      {
        *v76 = v78;
        type metadata accessor for DrawerAction.DrawerActionStorage(0);
        swift_storeEnumTagMultiPayload();
        v79 = v78;
        sub_1CA27080C(v76 + v74, &qword_1EC4445D0, &qword_1CA983080);
        __swift_storeEnumTagSinglePayload(v76 + v74, 1, 1, v75);
        *(v76 + v11[5]) = v73;
        v114 = 0x6E6F6974616E6F64;
        v115 = 0xE90000000000002ELL;
        v80 = [v73 identifier];
        v81 = sub_1CA94C3A8();
        v83 = v82;

        MEMORY[0x1CCAA1300](v81, v83);

        swift_unknownObjectRelease();
        v84 = v115;
        v85 = (v76 + v11[7]);
        *v85 = v114;
        v85[1] = v84;
        v86 = v109;
        sub_1CA42B9A4(v76, v109);
        __swift_storeEnumTagSinglePayload(v86, 0, 1, v11);
        sub_1CA42B9FC();
        if (__swift_getEnumTagSinglePayload(v86, 1, v11) == 1)
        {
          goto LABEL_66;
        }

        sub_1CA42BA50(v86, v97);
        v87 = v110;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA2E5CDC();
          v87 = v90;
        }

        v88 = *(v87 + 16);
        if (v88 >= *(v87 + 24) >> 1)
        {
          sub_1CA2E5CDC();
          v87 = v91;
        }

        *(v87 + 16) = v88 + 1;
        v89 = (*(v102 + 80) + 32) & ~*(v102 + 80);
        v110 = v87;
        result = sub_1CA42BA50(v97, v87 + v89 + *(v102 + 72) * v88);
        ++v72;
      }

      else
      {
        swift_unknownObjectRelease_n();
        sub_1CA27080C(v76 + v74, &qword_1EC4445D0, &qword_1CA983080);
        v86 = v109;
        __swift_storeEnumTagSinglePayload(v109, 1, 1, v11);
LABEL_66:
        result = sub_1CA27080C(v86, &qword_1EC445420, &qword_1CA987028);
        ++v72;
      }
    }

    sub_1CA2B8084(v110);

    v67 = v107;
    v66 = v101;
  }

  while (v107 != v105);
LABEL_69:

LABEL_70:
  (v95)(v116);
}

uint64_t sub_1CA428970(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445560, &qword_1CA9869A8);
    v2 = sub_1CA94C658();
  }

  v3(v2);
}

uint64_t ActionDrawerDataSource.suggestedResults(for:)()
{
  OUTLINED_FUNCTION_0();
  sub_1CA94C838();
  *(v0 + 16) = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v2 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA428A80, v2, v1);
}

uint64_t sub_1CA428A80()
{
  OUTLINED_FUNCTION_0();

  v1 = *(v0 + 8);
  v2 = MEMORY[0x1E69E7CC0];

  return v1(v2);
}

void ActionDrawerDataSource.appsByName()()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v29 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_48_0();
  v28 = v7;
  if (*(v0 + 32))
  {
    v8 = *(v0 + 40);
    v9 = *(v1 + 56);
    v10 = *(v9 + 16);
    v27 = v6;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    v11 = 0;
    v12 = v9 + 40;
    v13 = MEMORY[0x1E69E7CC0];
LABEL_3:
    for (i = (v12 + 16 * v11); ; i += 2)
    {
      if (v10 == v11)
      {
        v25 = OUTLINED_FUNCTION_97_4();
        sub_1CA42AC68(v25);
        goto LABEL_16;
      }

      if (v11 >= *(v9 + 16))
      {
        break;
      }

      if (*(v8 + 16))
      {
        v15 = *(i - 1);
        v16 = *i;
        sub_1CA94C218();
        v17 = sub_1CA271BF8(v15, v16);
        if (v18)
        {
          v26 = *(v3 + 72);
          (*(v3 + 16))(v27, *(v8 + 56) + v26 * v17, v29);

          v19 = *(v3 + 32);
          v19(v28, v27, v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_21();
            sub_1CA2E5A04();
            v13 = v23;
          }

          v21 = *(v13 + 16);
          v20 = *(v13 + 24);
          if (v21 >= v20 >> 1)
          {
            OUTLINED_FUNCTION_64(v20);
            sub_1CA2E5A04();
            v13 = v24;
          }

          ++v11;
          *(v13 + 16) = v21 + 1;
          OUTLINED_FUNCTION_68_0();
          v19(v13 + v22 + v21 * v26, v28, v29);
          v12 = v9 + 40;
          goto LABEL_3;
        }
      }

      ++v11;
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_36();
  }
}

uint64_t ActionDrawerDataSource.itemForInserting(_:topHit:)()
{
  OUTLINED_FUNCTION_0();
  v3 = *(v2 + 16);
  *(v1 + 120) = *v2;
  *(v1 + 104) = v4;
  *(v1 + 112) = v0;
  *(v1 + 96) = v5;
  *(v1 + 136) = v3;
  *(v1 + 152) = *(v2 + 32);
  *(v1 + 65) = *(v2 + 48);
  sub_1CA94C838();
  *(v1 + 168) = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v7 = sub_1CA94C7C8();
  *(v1 + 176) = v7;
  *(v1 + 184) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1CA428E2C, v7, v6);
}

uint64_t sub_1CA428E2C()
{
  v1 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 120);
  v2 = *(v0 + 65);
  v3 = *(v0 + 152);
  *(v0 + 32) = *(v0 + 136);
  *(v0 + 48) = v3;
  *(v0 + 64) = v2;
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *(v0 + 192) = v5;
  sub_1CA94C218();
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v0 + 200) = v6;
  *v6 = v7;
  v6[1] = sub_1CA428F28;
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);

  return sub_1CA4236B4(v8, v9, v0 + 16, v4, v5);
}

uint64_t sub_1CA428F28()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  v3[26] = v0;

  v7 = v3[22];
  v8 = v3[23];
  if (v0)
  {
    v9 = sub_1CA4290AC;
  }

  else
  {
    v9 = sub_1CA429050;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1CA429050()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA4290AC()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v0();
}

void ActionDrawerDataSource.action(for:)()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v25 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445420, &qword_1CA987028);
  v5 = OUTLINED_FUNCTION_18_0(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = *(v0 + 32);
  if (!v8)
  {
    OUTLINED_FUNCTION_11_18();
    sub_1CA42ABDC(v17);
    OUTLINED_FUNCTION_11_18();
    sub_1CA42AC68(v18);
    type metadata accessor for DrawerAction(0);
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_11_18();
  sub_1CA42ABDC(v9);
  sub_1CA94C218();
  OUTLINED_FUNCTION_11_18();
  sub_1CA42AC68(v10);
  v11 = [v2 identifier];
  sub_1CA94C3A8();

  v12 = OUTLINED_FUNCTION_70();
  sub_1CA311B60(v12, v13, v8);

  type metadata accessor for DrawerAction(0);
  v14 = OUTLINED_FUNCTION_201_0();
  if (__swift_getEnumTagSinglePayload(v14, v15, v16) == 1)
  {
LABEL_5:
    sub_1CA27080C(v7, &qword_1EC445420, &qword_1CA987028);
    v23 = v2;
    DrawerAction.init(wfAction:)(v23, v25);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_0_31();
  sub_1CA42BA50(v7, v25);
LABEL_6:
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA42928C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v21 - v3;
  v5 = sub_1CA94B1C8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v21 - v10;
  v12 = type metadata accessor for DrawerAction(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DrawerSearchIndexItem(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA42B9A4(v1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v9, v17, v5);
    v18 = sub_1CA94B0F8();
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445408, &unk_1CA986FF0);

    sub_1CA42BA50(v17, v14);
    sub_1CA2D9D20(&v14[*(v12 + 24)], v4, &qword_1EC4445D0, &qword_1CA983080);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      sub_1CA27080C(v4, &qword_1EC4445D0, &qword_1CA983080);
      v18 = *&v14[*(v12 + 28)];
      sub_1CA94C218();
    }

    else
    {
      (*(v6 + 32))(v11, v4, v5);
      v21[0] = sub_1CA94B0F8();
      v21[1] = v19;
      MEMORY[0x1CCAA1300](45, 0xE100000000000000);
      MEMORY[0x1CCAA1300](*&v14[*(v12 + 28)], *&v14[*(v12 + 28) + 8]);
      v18 = v21[0];
      (*(v6 + 8))(v11, v5);
    }

    sub_1CA42B9FC();
  }

  return v18;
}

uint64_t sub_1CA429604()
{
  v1 = sub_1CA94B1C8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for DrawerAction(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DrawerSearchIndexItem(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA42B9A4(v0, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v4, v13, v1);
    v32 = sub_1CA94B138();
    v33 = v14;
    sub_1CA94C218();
    MEMORY[0x1CCAA1300](45, 0xE100000000000000);

    v16 = v32;
    v15 = v33;
    v17 = sub_1CA94B0F8();
    v19 = v18;
    v32 = v16;
    v33 = v15;
    sub_1CA94C218();
    MEMORY[0x1CCAA1300](v17, v19);

    v20 = v32;
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445408, &unk_1CA986FF0);

    sub_1CA42BA50(v13, v10);
    DrawerAction.title.getter();
    v32 = v21;
    v33 = v22;
    sub_1CA94C218();
    MEMORY[0x1CCAA1300](45, 0xE100000000000000);

    v24 = v32;
    v23 = v33;
    sub_1CA2D9D20(&v10[*(v8 + 24)], v7, &qword_1EC4445D0, &qword_1CA983080);
    if (__swift_getEnumTagSinglePayload(v7, 1, v1) == 1)
    {
      sub_1CA27080C(v7, &qword_1EC4445D0, &qword_1CA983080);
      v25 = 0;
      v26 = 0xE000000000000000;
    }

    else
    {
      v25 = sub_1CA94B138();
      v26 = v27;
      (*(v2 + 8))(v7, v1);
    }

    v32 = v24;
    v33 = v23;
    sub_1CA94C218();
    MEMORY[0x1CCAA1300](v25, v26);

    sub_1CA94C218();
    MEMORY[0x1CCAA1300](45, 0xE100000000000000);

    v28 = &v10[*(v8 + 28)];
    v29 = *v28;
    v30 = *(v28 + 1);
    sub_1CA94C218();
    MEMORY[0x1CCAA1300](v29, v30);

    v20 = v32;
    sub_1CA42B9FC();
  }

  return v20;
}

uint64_t sub_1CA429A28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v148 - v1;
  v3 = sub_1CA94B1C8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v162 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v154 = &v148 - v7;
  v163 = sub_1CA94A4E8();
  v8 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v161 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_1CA94A288();
  v10 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v159 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v164 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  MEMORY[0x1EEE9AC00](v164);
  v13 = (&v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for DrawerAction(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DrawerSearchIndexItem(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA42B9A4(v165, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v155 = v4;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v4 + 32))(v162, v19, v3);
    v21 = sub_1CA94B138();
    v23 = v22;
    sub_1CA2E5B24();
    v26 = *(v24 + 16);
    v25 = *(v24 + 24);
    v165 = v24;
    if (v26 >= v25 >> 1)
    {
      sub_1CA2E5B24();
      v165 = v142;
    }

    LOBYTE(v169[0]) = 0;
    v27 = v165;
    *(v165 + 16) = v26 + 1;
    v28 = v27 + 72 * v26;
    *(v28 + 32) = 3;
    *(v28 + 40) = v21;
    *(v28 + 48) = v23;
    *(v28 + 56) = 0;
    *(v28 + 64) = xmmword_1CA986F90;
    *(v28 + 80) = 0;
    *(v28 + 88) = sub_1CA436668;
    *(v28 + 96) = 0;
    v29 = sub_1CA94B138();
    v31 = v30;
    v32 = *(v27 + 16);
    if (v32 >= *(v27 + 24) >> 1)
    {
      sub_1CA2E5B24();
      v165 = v143;
    }

    LOBYTE(v168[0]) = 1;
    v33 = v165;
    *(v165 + 16) = v32 + 1;
    v34 = v33 + 72 * v32;
    *(v34 + 32) = 4;
    LODWORD(v33) = v178[0];
    *(v34 + 36) = *(v178 + 3);
    *(v34 + 33) = v33;
    *(v34 + 40) = v29;
    *(v34 + 48) = v31;
    *(v34 + 56) = 0;
    LODWORD(v33) = *v177;
    *(v34 + 60) = *&v177[3];
    *(v34 + 57) = v33;
    *(v34 + 64) = sub_1CA42A9CC;
    *(v34 + 72) = 0;
    *(v34 + 80) = v168[0];
    LODWORD(v33) = *v176;
    *(v34 + 84) = *&v176[3];
    *(v34 + 81) = v33;
    *(v34 + 88) = sub_1CA436668;
    *(v34 + 96) = 0;
    v35 = MEMORY[0x1CCAA0010]();
    v36 = *(v35 + 16);
    if (v36)
    {
      v153 = v3;
      v37 = v36 - 1;
      v38 = (v35 + 40);
      v164 = xmmword_1CA986FB0;
      while (1)
      {
        v39 = *(v38 - 1);
        v40 = *v38;
        v42 = *(v165 + 16);
        v41 = *(v165 + 24);
        sub_1CA94C218();
        if (v42 >= v41 >> 1)
        {
          sub_1CA2E5B24();
          v165 = v48;
        }

        LOBYTE(v166[0]) = 0;
        v43 = v165;
        *(v165 + 16) = v42 + 1;
        v44 = v43 + 72 * v42;
        *(v44 + 32) = 6;
        v45 = *v175;
        *(v44 + 36) = *&v175[3];
        *(v44 + 33) = v45;
        *(v44 + 40) = v39;
        *(v44 + 48) = v40;
        *(v44 + 56) = 0;
        v46 = *v174;
        *(v44 + 60) = *&v174[3];
        *(v44 + 57) = v46;
        *(v44 + 64) = v164;
        *(v44 + 80) = v166[0];
        v47 = *v173;
        *(v44 + 84) = *&v173[3];
        *(v44 + 81) = v47;
        *(v44 + 88) = sub_1CA43666C;
        *(v44 + 96) = 0;
        if (!v37)
        {
          break;
        }

        --v37;
        v38 += 2;
      }

      v3 = v153;
    }

    else
    {
    }

    (*(v155 + 8))(v162, v3);
  }

  else
  {
    v150 = v10;
    v152 = v14;
    v162 = *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445408, &unk_1CA986FF0) + 48)];
    sub_1CA42BA50(v19, v16);
    DrawerAction.title.getter();
    v158 = v49;
    v51 = v50;
    sub_1CA2E5B24();
    v54 = *(v52 + 16);
    v53 = *(v52 + 24);
    v165 = v52;
    v55 = v8;
    if (v54 >= v53 >> 1)
    {
      sub_1CA2E5B24();
      v165 = v144;
    }

    v172 = 0;
    v56 = v165;
    *(v165 + 16) = v54 + 1;
    v57 = v56 + 72 * v54;
    *(v57 + 32) = 0;
    *(v57 + 40) = v158;
    *(v57 + 48) = v51;
    *(v57 + 56) = 1;
    *(v57 + 64) = xmmword_1CA986F90;
    *(v57 + 80) = 0;
    *(v57 + 88) = OUTLINED_FUNCTION_17_0;
    *(v57 + 96) = 0;
    DrawerAction.title.getter();
    v59 = v58;
    v61 = v60;
    v62 = *(v56 + 16);
    if (v62 >= *(v56 + 24) >> 1)
    {
      sub_1CA2E5B24();
      v165 = v145;
    }

    v171 = 1;
    v63 = v165;
    *(v165 + 16) = v62 + 1;
    v64 = v63 + 72 * v62;
    *(v64 + 32) = 1;
    LODWORD(v63) = v178[0];
    *(v64 + 36) = *(v178 + 3);
    *(v64 + 33) = v63;
    *(v64 + 40) = v59;
    *(v64 + 48) = v61;
    *(v64 + 56) = 1;
    v65 = *v177;
    *(v64 + 60) = *&v177[3];
    *(v64 + 57) = v65;
    *(v64 + 64) = sub_1CA42A988;
    *(v64 + 72) = 0;
    *(v64 + 80) = v171;
    v66 = *v176;
    *(v64 + 84) = *&v176[3];
    *(v64 + 81) = v66;
    *(v64 + 88) = OUTLINED_FUNCTION_17_0;
    *(v64 + 96) = 0;
    DrawerAction.searchKeywords.getter();
    v68 = *(v67 + 16);
    v153 = v3;
    if (v68)
    {
      v149 = v2;
      v158 = (v55 + 32);
      v157 = (v55 + 8);
      v156 = (v150 + 32);
      v69 = (v150 + 8);
      v70 = v68 - 1;
      v150 = v67;
      for (i = (v67 + 40); ; i += 2)
      {
        v73 = *(i - 1);
        v72 = *i;
        sub_1CA42B9A4(v16, v13);
        v74 = swift_getEnumCaseMultiPayload();
        if (v74)
        {
          if (v74 == 1)
          {
            v75 = v159;
            v76 = v160;
            (*v156)(v159, v13, v160);
            sub_1CA94C218();
            v77 = sub_1CA94A1D8();
            (*v69)(v75, v76);
          }

          else
          {
            v81 = v161;
            v82 = v163;
            (*v158)(v161, v13, v163);
            sub_1CA94C218();
            v77 = sub_1CA94A448();
            (*v157)(v81, v82);
          }
        }

        else
        {
          v78 = v16;
          v79 = *v13;
          sub_1CA94C218();
          v80 = [v79 localizedKeywords];
          v77 = sub_1CA94C658();

          v16 = v78;
        }

        v83 = *(v77 + 16);

        v84 = *(v165 + 16);
        if (v84 >= *(v165 + 24) >> 1)
        {
          sub_1CA2E5B24();
          v165 = v90;
        }

        LOBYTE(v169[0]) = 0;
        v85 = v165;
        *(v165 + 16) = v84 + 1;
        v86 = v85 + 72 * v84;
        *(v86 + 32) = 2;
        v87 = *v175;
        *(v86 + 36) = *&v175[3];
        *(v86 + 33) = v87;
        *(v86 + 40) = v73;
        *(v86 + 48) = v72;
        *(v86 + 56) = 0;
        v88 = *v174;
        *(v86 + 60) = *&v174[3];
        *(v86 + 57) = v88;
        *(v86 + 64) = 0.3 / v83;
        *(v86 + 72) = 0;
        *(v86 + 80) = v169[0];
        v89 = *v173;
        *(v86 + 84) = *&v173[3];
        *(v86 + 81) = v89;
        *(v86 + 88) = sub_1CA42A9A0;
        *(v86 + 96) = 0;
        if (!v70)
        {
          break;
        }

        --v70;
      }

      v3 = v153;
      v91 = v155;
      v92 = v152;
      v2 = v149;
    }

    else
    {

      v91 = v155;
      v92 = v152;
    }

    sub_1CA2D9D20(&v16[*(v92 + 24)], v2, &qword_1EC4445D0, &qword_1CA983080);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
    v151 = v16;
    if (EnumTagSinglePayload == 1)
    {
      sub_1CA27080C(v2, &qword_1EC4445D0, &qword_1CA983080);
    }

    else
    {
      (*(v91 + 32))(v154, v2, v3);
      v94 = sub_1CA94B138();
      v96 = v95;
      v97 = *(v165 + 16);
      if (v97 >= *(v165 + 24) >> 1)
      {
        sub_1CA2E5B24();
        v165 = v147;
      }

      v170 = 0;
      v98 = v165;
      *(v165 + 16) = v97 + 1;
      v99 = v98 + 72 * v97;
      *(v99 + 32) = 3;
      LODWORD(v98) = *v175;
      *(v99 + 36) = *&v175[3];
      *(v99 + 33) = v98;
      *(v99 + 40) = v94;
      *(v99 + 48) = v96;
      *(v99 + 56) = 0;
      LODWORD(v98) = *v174;
      *(v99 + 60) = *&v174[3];
      *(v99 + 57) = v98;
      v164 = xmmword_1CA986FA0;
      *(v99 + 64) = xmmword_1CA986FA0;
      *(v99 + 80) = v170;
      LODWORD(v98) = *v173;
      *(v99 + 84) = *&v173[3];
      *(v99 + 81) = v98;
      *(v99 + 88) = sub_1CA436668;
      *(v99 + 96) = 0;
      v100 = MEMORY[0x1CCAA0010]();
      v101 = *(v100 + 16);
      if (v101)
      {
        v102 = v101 - 1;
        for (j = (v100 + 40); ; j += 2)
        {
          v105 = *(j - 1);
          v104 = *j;
          v106 = *(v165 + 16);
          v107 = *(v165 + 24);
          sub_1CA94C218();
          if (v106 >= v107 >> 1)
          {
            sub_1CA2E5B24();
            v165 = v113;
          }

          v167 = 0;
          v108 = v165;
          *(v165 + 16) = v106 + 1;
          v109 = v108 + 72 * v106;
          *(v109 + 32) = 6;
          v110 = v169[0];
          *(v109 + 36) = *(v169 + 3);
          *(v109 + 33) = v110;
          *(v109 + 40) = v105;
          *(v109 + 48) = v104;
          *(v109 + 56) = 0;
          v111 = v168[0];
          *(v109 + 60) = *(v168 + 3);
          *(v109 + 57) = v111;
          *(v109 + 64) = v164;
          *(v109 + 80) = v167;
          v112 = v166[0];
          *(v109 + 84) = *(v166 + 3);
          *(v109 + 81) = v112;
          *(v109 + 88) = sub_1CA43666C;
          *(v109 + 96) = 0;
          if (!v102)
          {
            break;
          }

          --v102;
        }

        v3 = v153;
        v114 = v155;
        v16 = v151;
      }

      else
      {

        v114 = v155;
      }

      v92 = v152;
      (*(v114 + 8))(v154, v3);
    }

    v115 = &v16[*(v92 + 28)];
    v117 = *v115;
    v116 = *(v115 + 1);
    v118 = *(v165 + 16);
    v119 = *(v165 + 24);
    sub_1CA94C218();
    if (v118 >= v119 >> 1)
    {
      sub_1CA2E5B24();
      v165 = v146;
    }

    v170 = 0;
    v120 = v165;
    *(v165 + 16) = v118 + 1;
    v121 = v120 + 72 * v118;
    *(v121 + 32) = 5;
    LODWORD(v120) = *v175;
    *(v121 + 36) = *&v175[3];
    *(v121 + 33) = v120;
    *(v121 + 40) = v117;
    *(v121 + 48) = v116;
    *(v121 + 56) = 0;
    LODWORD(v120) = *v174;
    *(v121 + 60) = *&v174[3];
    *(v121 + 57) = v120;
    *(v121 + 64) = 0;
    *(v121 + 72) = 0;
    *(v121 + 80) = v170;
    LODWORD(v120) = *&v173[3];
    *(v121 + 81) = *v173;
    *(v121 + 84) = v120;
    *(v121 + 88) = sub_1CA42A9BC;
    *(v121 + 96) = 0;
    v122 = v162;
    v123 = *(v162 + 2);
    if (v123)
    {
      v124 = 0;
      for (k = v123 - 1; ; --k)
      {
        v163 = v124;
        v126 = *&v122[v124 + 40];
        *&v164 = *&v122[v124 + 32];
        v128 = *&v122[v124 + 48];
        v127 = *&v122[v124 + 56];
        v129 = *&v122[v124 + 64];
        v130 = *&v122[v124 + 72];
        v131 = v122[v124 + 80];
        sub_1CA94C218();
        v132 = v128;
        sub_1CA435C7C(v127, v129, v130, v131);
        v133 = *(v165 + 16);
        v134 = *(v165 + 24);
        sub_1CA94C218();
        if (v133 >= v134 >> 1)
        {
          sub_1CA2E5B24();
          v165 = v140;
        }

        sub_1CA435CF0(v127, v129, v130, v131);
        v167 = 0;
        v135 = v165;
        *(v165 + 16) = v133 + 1;
        v136 = v135 + 72 * v133;
        *(v136 + 32) = 7;
        v137 = v169[0];
        *(v136 + 36) = *(v169 + 3);
        *(v136 + 33) = v137;
        *(v136 + 40) = v164;
        *(v136 + 48) = v126;
        *(v136 + 56) = 0;
        v138 = *(v168 + 3);
        *(v136 + 57) = v168[0];
        *(v136 + 60) = v138;
        *(v136 + 64) = 0;
        *(v136 + 72) = 0;
        *(v136 + 80) = v167;
        v139 = *(v166 + 3);
        *(v136 + 81) = v166[0];
        *(v136 + 84) = v139;
        *(v136 + 88) = OUTLINED_FUNCTION_17_0;
        *(v136 + 96) = 0;
        if (!k)
        {
          break;
        }

        v122 = v162;
        v124 = v163 + 56;
      }
    }

    sub_1CA42B9FC();
  }

  return v165;
}

double sub_1CA42A988(uint64_t a1)
{
  result = 0.9;
  if (a1)
  {
    return 0.5;
  }

  return result;
}

uint64_t sub_1CA42A9A0(uint64_t a1, int a2, double a3)
{
  if (a3 >= 0.5)
  {
    return 1;
  }

  else
  {
    return (a1 != 0) & ~a2;
  }
}

uint64_t sub_1CA42A9D4(unsigned __int8 a1)
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](a1);
  return sub_1CA94D968();
}

uint64_t sub_1CA42AA30(uint64_t a1)
{
  v2 = *v1;
  sub_1CA94D918();
  sub_1CA277E28(v4, v2);
  return sub_1CA94D968();
}

uint64_t sub_1CA42AA7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA42928C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1CA42AAA4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_1CA94C588();

    return v4;
  }

  return result;
}

id sub_1CA42AB48(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1CA94C368();

  v7 = OUTLINED_FUNCTION_99_3();
  v9 = [v7 v8];

  return v9;
}

uint64_t sub_1CA42ABDC(uint64_t result)
{
  if (result)
  {
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();

    return sub_1CA94C218();
  }

  return result;
}

uint64_t sub_1CA42AC68(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CA42ACF4(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CA42AD5C(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1CA2E7638(*(a1 + 16), 0);
  OUTLINED_FUNCTION_8_6();
  sub_1CA2BA934();
  OUTLINED_FUNCTION_9_8();
  v4 = OUTLINED_FUNCTION_70();
  sub_1CA2BC138(v4);
  if (v2 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

size_t sub_1CA42ADF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1CA2E76B0(*(a1 + 16), 0);
  sub_1CA94B1C8();
  sub_1CA2BAC10();
  v4 = v3;
  sub_1CA94C218();
  sub_1CA2BC138(v6);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

const void *sub_1CA42AEE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1CA2E76D8(*(a1 + 16), 0);
  sub_1CA2BAE84();
  v4 = v3;
  sub_1CA94C218();
  sub_1CA2BC138(v6);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1CA42B024(uint64_t a1, void (*a2)(void, void), void (*a3)(void))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  a2(*(a1 + 16), 0);
  OUTLINED_FUNCTION_8_6();
  a3();
  OUTLINED_FUNCTION_9_8();
  v6 = OUTLINED_FUNCTION_70();
  sub_1CA2BC138(v6);
  if (a3 != v4)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void sub_1CA42B0C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_1CA42B198(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1CA2E9398();
    sub_1CA94C218();
    MEMORY[0x1CCAA22B0](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_1CA94D328();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1CA42B364(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1CA94D328();
  }

  return sub_1CA94D488();
}

void sub_1CA42B3E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  sub_1CA5C4368(&v58);
  v9 = v59;
  v10 = v61;
  v11 = v62;
  v49 = v63;
  v50 = v58;
  v51 = v64;
  v42 = v60;
  v12 = (v60 + 64) >> 6;
  v44 = a1;
  sub_1CA94C218();
  v43 = a3;

  v46 = v12;
  v47 = v9;
  v48 = a5;
  if (v11)
  {
    while (1)
    {
      v66 = a4;
      v13 = v10;
LABEL_8:
      v15 = __clz(__rbit64(v11)) | (v13 << 6);
      v16 = (*(v50 + 48) + 16 * v15);
      v17 = v16[1];
      v18 = *(*(v50 + 56) + 8 * v15);
      v55 = *v16;
      v56 = v17;
      v57 = v18;
      sub_1CA94C218();
      sub_1CA94C218();
      v49(&v52, &v55);

      v19 = v52;
      v20 = v53;
      v21 = v54;
      v22 = *a5;
      v30 = sub_1CA271BF8(v52, v53);
      v31 = *(v22 + 16);
      v32 = (v23 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        break;
      }

      v34 = v23;
      if (*(v22 + 24) >= v33)
      {
        if ((v66 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445498, &qword_1CA987598);
          sub_1CA94D598();
        }
      }

      else
      {
        sub_1CA5C37C0(v33, v66 & 1, v24, v25, v26, v27, v28, v29, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
        v35 = sub_1CA271BF8(v19, v20);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_24;
        }

        v30 = v35;
      }

      v11 &= v11 - 1;
      v37 = *a5;
      if (v34)
      {
        v55 = *(v37[7] + 8 * v30);
        sub_1CA94C218();
        sub_1CA2B7EA0(v21);

        *(v37[7] + 8 * v30) = v55;
      }

      else
      {
        v37[(v30 >> 6) + 8] |= 1 << v30;
        v38 = (v37[6] + 16 * v30);
        *v38 = v19;
        v38[1] = v20;
        *(v37[7] + 8 * v30) = v21;
        v39 = v37[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_23;
        }

        v37[2] = v41;
      }

      a4 = 1;
      v10 = v13;
      v9 = v47;
      a5 = v48;
      v12 = v46;
      if (!v11)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v14 = v10;
    while (1)
    {
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        sub_1CA2BC138(v50);

        return;
      }

      v11 = *(v9 + 8 * v13);
      ++v14;
      if (v11)
      {
        v66 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_1CA94D878();
  __break(1u);
}

void sub_1CA42B6AC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1CA94D778();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1CA94B1C8();
        v6 = sub_1CA94C6C8();
        *(v6 + 16) = v5;
      }

      v7 = sub_1CA94B1C8();
      OUTLINED_FUNCTION_18_0(v7);
      OUTLINED_FUNCTION_68_0();
      v9[0] = v6 + v8;
      v9[1] = v5;
      sub_1CA42D63C(v9, v10, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1CA42BE8C(0, v2, 1, a1);
  }
}

uint64_t sub_1CA42B7D4(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1CA94D778();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1CA94C6C8();
        *(v12 + 16) = v11;
      }

      v13 = a2(0);
      OUTLINED_FUNCTION_18_0(v13);
      OUTLINED_FUNCTION_68_0();
      v15[0] = v12 + v14;
      v15[1] = v11;
      a3(v15, v16, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_1CA42B920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DrawerAction(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA42B9A4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_40();
  v4(v3);
  OUTLINED_FUNCTION_52();
  v5 = OUTLINED_FUNCTION_23();
  v6(v5);
  return a2;
}

uint64_t sub_1CA42B9FC()
{
  v1 = OUTLINED_FUNCTION_30();
  v2(v1);
  OUTLINED_FUNCTION_52();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1CA42BA50(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_40();
  v4(v3);
  OUTLINED_FUNCTION_52();
  v5 = OUTLINED_FUNCTION_23();
  v6(v5);
  return a2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA42BACC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  swift_retain_n();
  result = sub_1CA94D778();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for DrawerAction(0);
        v8 = sub_1CA94C6C8();
        *(v8 + 16) = v7;
      }

      v9 = *(type metadata accessor for DrawerAction(0) - 8);
      v10[0] = (v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)));
      v10[1] = v7;

      sub_1CA42FDD4(v10, v11, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1CA42CAC4(0, v4, 1, a1, a2);
  }
}

uint64_t sub_1CA42BC40(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CA94D778();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10);
        v6 = sub_1CA94C6C8();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1CA431198(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1CA42D1F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CA42BD88(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CA94D778();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A00, &qword_1CA987610);
        v6 = sub_1CA94C6C8();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1CA431D80(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1CA42D52C(0, v2, 1, a1);
  }

  return result;
}

void sub_1CA42BE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_30();
  v8 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19();
  v41 = v10 - v11;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_45_0();
  v46 = v13;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_48_0();
  v44 = v16;
  v33 = a2;
  if (a3 != a2)
  {
    v18 = *(v15 + 16);
    v17 = v15 + 16;
    v19 = *(v17 + 56);
    v42 = (v17 - 8);
    v43 = v18;
    v20 = *a4 + v19 * (a3 - 1);
    v38 = -v19;
    v39 = (v17 + 16);
    v21 = v4 - a3;
    v40 = *a4;
    v32 = v19;
    v22 = *a4 + v19 * a3;
    while (2)
    {
      v36 = v20;
      v37 = a3;
      v34 = v22;
      v35 = v21;
      do
      {
        v43(v44, v22, v8);
        v23 = v46;
        v43(v46, v20, v8);
        v45[2] = sub_1CA94B138();
        v45[3] = v24;
        v45[0] = sub_1CA94B138();
        v45[1] = v25;
        v26 = sub_1CA27BAF0();
        v28 = OUTLINED_FUNCTION_110_2(v45, MEMORY[0x1E69E6158], v27, v26);

        v29 = *v42;
        (*v42)(v23, v8);
        v29(v44, v8);
        if (v28 != -1)
        {
          break;
        }

        if (!v40)
        {
          __break(1u);
          return;
        }

        v30 = *v39;
        (*v39)(v41, v22, v8);
        OUTLINED_FUNCTION_107_0();
        swift_arrayInitWithTakeFrontToBack();
        v30(v20, v41, v8);
        v20 += v38;
        v22 += v38;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v37 + 1;
      v20 = v36 + v32;
      v21 = v35 - 1;
      v22 = v34 + v32;
      if (v37 + 1 != v33)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1CA42C128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1CA9486C8();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v40 - v15;
  v42 = a2;
  if (a3 != a2)
  {
    v17 = v14;
    v18 = *a4;
    v20 = *(v13 + 16);
    v19 = v13 + 16;
    v21 = *(v19 + 56);
    v51 = (v19 - 8);
    v52 = v20;
    v53 = v19;
    v48 = (v19 + 16);
    v49 = v18;
    v22 = v18 + v21 * (a3 - 1);
    v47 = -v21;
    v23 = a1 - a3;
    v41 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v45 = v22;
      v46 = a3;
      v43 = v24;
      v44 = v23;
      v25 = v22;
      while (1)
      {
        v26 = v52;
        v52(v16, v24, v8);
        v26(v17, v25, v8);
        v27 = sub_1CA9486B8();
        v28 = v16;
        v29 = v17;
        v31 = v30;
        if (v27 == sub_1CA9486B8() && v31 == v32)
        {
          break;
        }

        v34 = sub_1CA94D7F8();

        v35 = *v51;
        (*v51)(v29, v8);
        result = (v35)(v28, v8);
        v17 = v29;
        v16 = v28;
        if (v34)
        {
          if (!v49)
          {
            __break(1u);
            return result;
          }

          v36 = *v48;
          v37 = v50;
          (*v48)(v50, v24, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v36)(v25, v37, v8);
          v25 += v47;
          v24 += v47;
          if (!__CFADD__(v23++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v39 = *v51;
      (*v51)(v29, v8);
      result = (v39)(v28, v8);
      v17 = v29;
      v16 = v28;
LABEL_14:
      a3 = v46 + 1;
      v22 = v45 + v41;
      v23 = v44 - 1;
      v24 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1CA42C448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v69 = sub_1CA94A4E8();
  v8 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1CA94A288();
  v11 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v13 = MEMORY[0x1EEE9AC00](v72);
  v77 = (&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v80 = (&v58 - v15);
  v76 = type metadata accessor for DrawerAction(0);
  v16 = MEMORY[0x1EEE9AC00](v76);
  v75 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v85 = &v58 - v19;
  result = MEMORY[0x1EEE9AC00](v18);
  v79 = &v58 - v22;
  v60 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v21 + 72);
    v67 = (v8 + 8);
    v68 = (v8 + 32);
    v65 = (v11 + 8);
    v66 = (v11 + 32);
    v25 = v23 + v24 * (a3 - 1);
    v73 = -v24;
    v74 = v23;
    v26 = a1 - a3;
    v59 = v24;
    v27 = v23 + v24 * a3;
    while (2)
    {
      v64 = a3;
      v61 = v27;
      v62 = v26;
      v63 = v25;
      do
      {
        v28 = v79;
        sub_1CA42B9A4(v27, v79);
        sub_1CA42B9A4(v25, v85);
        sub_1CA42B9A4(v28, v80);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v31 = v70;
            v30 = v71;
            (*v66)(v70, v80, v71);
            v32 = sub_1CA94A268();
            v33 = v31;
            v35 = v34;
            (*v65)(v33, v30);
          }

          else
          {
            v39 = v69;
            (*v68)(v10, v80, v69);
            v32 = sub_1CA94A4B8();
            v35 = v40;
            (*v67)(v10, v39);
          }
        }

        else
        {
          v36 = *v80;
          v37 = [*v80 localizedName];
          v32 = sub_1CA94C3A8();
          v35 = v38;
        }

        v41 = v77;
        v83 = v32;
        v84 = v35;
        sub_1CA42B9A4(v85, v77);
        v42 = swift_getEnumCaseMultiPayload();
        v78 = v35;
        if (v42)
        {
          if (v42 == 1)
          {
            v43 = v70;
            v44 = v41;
            v45 = v71;
            (*v66)(v70, v44, v71);
            v46 = sub_1CA94A268();
            v48 = v47;
            (*v65)(v43, v45);
          }

          else
          {
            v52 = v41;
            v53 = v69;
            (*v68)(v10, v52, v69);
            v46 = sub_1CA94A4B8();
            v48 = v54;
            (*v67)(v10, v53);
          }
        }

        else
        {
          v49 = *v41;
          v50 = [v49 localizedName];
          v46 = sub_1CA94C3A8();
          v48 = v51;
        }

        v81 = v46;
        v82 = v48;
        sub_1CA27BAF0();
        v55 = sub_1CA94D1F8();

        sub_1CA42B9FC();
        result = sub_1CA42B9FC();
        if (v55 != -1)
        {
          break;
        }

        if (!v74)
        {
          __break(1u);
          return result;
        }

        v56 = v75;
        sub_1CA42BA50(v27, v75);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1CA42BA50(v56, v25);
        v25 += v73;
        v27 += v73;
      }

      while (!__CFADD__(v26++, 1));
      a3 = v64 + 1;
      v25 = v63 + v59;
      v26 = v62 - 1;
      v27 = v61 + v59;
      if (v64 + 1 != v60)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1CA42CAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v75 = sub_1CA94A4E8();
  v10 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1CA94A288();
  v12 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v14 = MEMORY[0x1EEE9AC00](v88);
  v83 = (&v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v82 = (&v61 - v16);
  v80 = type metadata accessor for DrawerAction(0);
  v17 = MEMORY[0x1EEE9AC00](v80);
  v79 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v61 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v61 - v23;
  v63 = a2;
  if (a3 == a2)
  {
    goto LABEL_27;
  }

  v24 = *a4;
  v25 = *(v22 + 72);
  v70 = (v10 + 8);
  v71 = (v10 + 32);
  v68 = (v12 + 8);
  v69 = (v12 + 32);
  v26 = v24 + v25 * (a3 - 1);
  v77 = -v25;
  v78 = v24;
  v27 = a1 - a3;
  v62 = v25;
  v28 = v24 + v25 * a3;
  v29 = a5;
  v81 = v21;
  v30 = v76;
  while (2)
  {
    v67 = a3;
    v64 = v28;
    v65 = v27;
    v31 = v27;
    v66 = v26;
    v32 = v26;
    while (1)
    {
      sub_1CA42B9A4(v28, v30);
      sub_1CA42B9A4(v32, v21);
      v33 = *(ActionDrawerDataSource.topHits(for:)(v30) + 16);

      v34 = *(ActionDrawerDataSource.topHits(for:)(v21) + 16);

      if (!v33)
      {
        break;
      }

      if (v34)
      {
        goto LABEL_8;
      }

      sub_1CA42B9FC();
      sub_1CA42B9FC();
LABEL_21:
      if (!v78)
      {
        __break(1u);
        return;
      }

      v59 = v79;
      sub_1CA42BA50(v28, v79);
      swift_arrayInitWithTakeFrontToBack();
      sub_1CA42BA50(v59, v32);
      v32 += v77;
      v28 += v77;
      if (__CFADD__(v31++, 1))
      {
        goto LABEL_26;
      }
    }

    if (!v34)
    {
LABEL_8:
      sub_1CA42B9A4(v30, v82);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v37 = v72;
          v36 = v73;
          (*v69)(v72, v82, v73);
          v38 = sub_1CA94A268();
          v40 = v39;
          v41 = v68;
        }

        else
        {
          v37 = v74;
          v36 = v75;
          (*v71)(v74, v82, v75);
          v38 = sub_1CA94A4B8();
          v40 = v45;
          v41 = v70;
        }

        (*v41)(v37, v36);
      }

      else
      {
        v42 = *v82;
        v43 = [*v82 localizedName];
        v38 = sub_1CA94C3A8();
        v40 = v44;

        v21 = v81;
      }

      v86 = v38;
      v87 = v40;
      sub_1CA42B9A4(v21, v83);
      v46 = swift_getEnumCaseMultiPayload();
      if (v46)
      {
        if (v46 == 1)
        {
          v48 = v72;
          v47 = v73;
          (*v69)(v72, v83, v73);
          v49 = sub_1CA94A268();
          v51 = v50;
          v52 = v68;
        }

        else
        {
          v48 = v74;
          v47 = v75;
          (*v71)(v74, v83, v75);
          v49 = sub_1CA94A4B8();
          v51 = v57;
          v52 = v70;
        }

        (*v52)(v48, v47);
      }

      else
      {
        v53 = *v83;
        v54 = v29;
        v55 = [*v83 localizedName];
        v49 = sub_1CA94C3A8();
        v51 = v56;

        v29 = v54;
      }

      v84 = v49;
      v85 = v51;
      sub_1CA27BAF0();
      v58 = sub_1CA94D1D8();

      v21 = v81;
      sub_1CA42B9FC();
      v30 = v76;
      sub_1CA42B9FC();
      if (v58 != -1)
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    sub_1CA42B9FC();
    sub_1CA42B9FC();
LABEL_26:
    a3 = v67 + 1;
    v26 = v66 + v62;
    v27 = v65 - 1;
    v28 = v64 + v62;
    if (v67 + 1 != v63)
    {
      continue;
    }

    break;
  }

LABEL_27:
}

uint64_t sub_1CA42D1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10);
  v8 = MEMORY[0x1EEE9AC00](v45);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v32 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v32 - v16;
  v34 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v18 = *a4;
  v19 = *(v15 + 72);
  v20 = v18 + v19 * (a3 - 1);
  v39 = v18;
  v40 = -v19;
  v21 = a1 - a3;
  v33 = v19;
  v22 = v18 + v19 * a3;
  while (2)
  {
    v37 = v20;
    v38 = a3;
    v35 = v22;
    v36 = v21;
    v23 = v22;
    while (1)
    {
      sub_1CA2D9D20(v23, v17, &unk_1EC4440B0, &unk_1CA981B10);
      sub_1CA2D9D20(v20, v13, &unk_1EC4440B0, &unk_1CA981B10);
      v24 = *(v45 + 36);
      v25 = *&v17[v24];
      v26 = *&v13[v24];
      if (v26 >= v25)
      {
        break;
      }

      sub_1CA27080C(v13, &unk_1EC4440B0, &unk_1CA981B10);
      result = sub_1CA27080C(v17, &unk_1EC4440B0, &unk_1CA981B10);
LABEL_9:
      if (!v18)
      {
        __break(1u);
        return result;
      }

      sub_1CA2D9CD4(v23, v10, &unk_1EC4440B0, &unk_1CA981B10);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1CA2D9CD4(v10, v20, &unk_1EC4440B0, &unk_1CA981B10);
      v20 += v40;
      v23 += v40;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_14;
      }
    }

    if (v25 >= v26)
    {
      v43 = sub_1CA429604();
      v44 = v27;
      v41 = sub_1CA429604();
      v42 = v28;
      sub_1CA27BAF0();
      v29 = sub_1CA94D1F8();

      sub_1CA27080C(v13, &unk_1EC4440B0, &unk_1CA981B10);
      result = sub_1CA27080C(v17, &unk_1EC4440B0, &unk_1CA981B10);
      v30 = v29 == -1;
      v18 = v39;
      if (!v30)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    sub_1CA27080C(v13, &unk_1EC4440B0, &unk_1CA981B10);
    result = sub_1CA27080C(v17, &unk_1EC4440B0, &unk_1CA981B10);
LABEL_14:
    a3 = v38 + 1;
    v20 = v37 + v33;
    v21 = v36 - 1;
    v22 = v35 + v33;
    if (v38 + 1 != v34)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_1CA42D52C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_1CA27BAF0();
    v7 = v6 + 24 * v4 - 24;
    v8 = v5 - v4;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = sub_1CA94D1D8();
        if (result != -1)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v11 = *(v10 + 32);
        v13 = *(v10 + 16);
        v12 = *(v10 + 24);
        *(v10 + 24) = *v10;
        *(v10 + 40) = v13;
        *v10 = v12;
        *(v10 + 8) = v11;
        v10 -= 24;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1CA42D63C(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = v4;
  v10 = sub_1CA94B1C8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19();
  v139 = v12 - v13;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_45_0();
  v156 = v15;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_45_0();
  v162 = v17;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_45_0();
  v161 = v19;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_127_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_83_1();
  v147 = v22;
  v148 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v168 = *a1;
    if (!v168)
    {
      goto LABEL_145;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_103;
    }

    goto LABEL_139;
  }

  v133 = a4;
  v24 = 0;
  v163 = (v22 + 8);
  v160 = (v22 + 32);
  v25 = MEMORY[0x1E69E7CC0];
  v168 = v10;
  v134 = v5;
  v135 = v6;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    v140 = v24;
    if (v24 + 1 < v23)
    {
      v151 = v24 + 1;
      v154 = v23;
      v149 = v25;
      v28 = v6;
      v29 = v24;
      v30 = *v148;
      v31 = *(v22 + 72);
      v32 = *v148 + v31 * v27;
      v33 = v10;
      v34 = *(v22 + 16);
      v34(v28, v32, v33);
      v143 = v34;
      v34(v5, v30 + v31 * v29, v33);
      v35 = OUTLINED_FUNCTION_104();
      v145 = sub_1CA424E48(v35, v36, v37);
      if (v7)
      {
        v130 = *v163;
        v131 = OUTLINED_FUNCTION_129();
        v130(v131);
        v132 = OUTLINED_FUNCTION_97_4();
        v130(v132);
LABEL_114:

        return;
      }

      v38 = *v163;
      v39 = OUTLINED_FUNCTION_129();
      v38(v39);
      v40 = OUTLINED_FUNCTION_97_4();
      v141 = v38;
      v38(v40);
      v41 = v140 + 2;
      v42 = v30 + v31 * (v140 + 2);
      v157 = v31;
      v43 = v154;
      while (1)
      {
        v7 = v41;
        if (++v151 >= v43)
        {
          break;
        }

        v44 = v168;
        v143(v161, v42, v168);
        v143(v162, v32, v44);
        v166 = sub_1CA94B138();
        v167 = v45;
        v164 = sub_1CA94B138();
        v165 = v46;
        v47 = sub_1CA27BAF0();
        v49 = OUTLINED_FUNCTION_110_2(&v164, MEMORY[0x1E69E6158], v48, v47);

        v50 = OUTLINED_FUNCTION_162();
        v141(v50);
        (v141)(v161, v44);
        v43 = v154;
        v31 = v157;
        v42 += v157;
        v32 += v157;
        v41 = v7 + 1;
        if (((v145 ^ (v49 != -1)) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v151 = v43;
LABEL_10:
      if (v145)
      {
        v27 = v151;
        v10 = v168;
        if (v151 < v140)
        {
          goto LABEL_138;
        }

        if (v140 >= v151)
        {
          OUTLINED_FUNCTION_91_4();
        }

        else
        {
          if (v43 >= v7)
          {
            v51 = v7;
          }

          else
          {
            v51 = v43;
          }

          v52 = v31 * (v51 - 1);
          v53 = v151;
          v54 = v31 * v51;
          v55 = v140 * v31;
          v56 = v140;
          OUTLINED_FUNCTION_91_4();
          do
          {
            if (v56 != --v53)
            {
              v57 = *v148;
              if (!*v148)
              {
                goto LABEL_143;
              }

              v7 = *v160;
              (*v160)(v139, v57 + v55, v10);
              v58 = v55 < v52 || v57 + v55 >= (v57 + v54);
              if (v58)
              {
                OUTLINED_FUNCTION_131_3();
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v52)
              {
                OUTLINED_FUNCTION_131_3();
                swift_arrayInitWithTakeBackToFront();
              }

              (v7)(v57 + v52, v139, v10);
              OUTLINED_FUNCTION_91_4();
              v26 = v140;
              v31 = v157;
            }

            ++v56;
            v52 -= v31;
            v54 -= v31;
            v55 += v31;
          }

          while (v56 < v53);
          v22 = v147;
          v25 = v149;
          v27 = v151;
        }
      }

      else
      {
        OUTLINED_FUNCTION_91_4();
        v22 = v147;
        v27 = v151;
        v10 = v168;
        v26 = v140;
      }
    }

    v59 = v148[1];
    if (v27 < v59)
    {
      if (__OFSUB__(v27, v26))
      {
        goto LABEL_135;
      }

      if (v27 - v26 < v133)
      {
        break;
      }
    }

LABEL_48:
    if (v27 < v26)
    {
      goto LABEL_134;
    }

    v153 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v117 = OUTLINED_FUNCTION_21();
      sub_1CA2E49C0(v117, v118, v119, v25);
      v25 = v120;
    }

    v75 = *(v25 + 2);
    v74 = *(v25 + 3);
    v76 = v75 + 1;
    if (v75 >= v74 >> 1)
    {
      sub_1CA2E49C0(v74 > 1, v75 + 1, 1, v25);
      v25 = v121;
    }

    *(v25 + 2) = v76;
    v77 = v25 + 32;
    v78 = &v25[16 * v75 + 32];
    *v78 = v140;
    *(v78 + 1) = v153;
    v159 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if (v75)
    {
      v150 = v25;
      while (1)
      {
        v79 = v76 - 1;
        v80 = &v77[16 * v76 - 16];
        v81 = &v25[16 * v76];
        if (v76 >= 4)
        {
          break;
        }

        if (v76 == 3)
        {
          v82 = *(v25 + 4);
          v83 = *(v25 + 5);
          v92 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          v85 = v92;
LABEL_69:
          if (v85)
          {
            goto LABEL_121;
          }

          v97 = *v81;
          v96 = *(v81 + 1);
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_124;
          }

          v101 = *(v80 + 1);
          v102 = v101 - *v80;
          if (__OFSUB__(v101, *v80))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v99, v102))
          {
            goto LABEL_129;
          }

          if (v99 + v102 >= v84)
          {
            if (v84 < v102)
            {
              v79 = v76 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v76 < 2)
        {
          goto LABEL_123;
        }

        v104 = *v81;
        v103 = *(v81 + 1);
        v92 = __OFSUB__(v103, v104);
        v99 = v103 - v104;
        v100 = v92;
LABEL_84:
        if (v100)
        {
          goto LABEL_126;
        }

        v106 = *v80;
        v105 = *(v80 + 1);
        v92 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v92)
        {
          goto LABEL_128;
        }

        if (v107 < v99)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v79 - 1 >= v76)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
          goto LABEL_137;
        }

        if (!*v148)
        {
          goto LABEL_141;
        }

        v111 = &v77[16 * v79 - 16];
        v112 = *v111;
        v113 = v79;
        v114 = &v77[16 * v79];
        v115 = *(v114 + 1);
        sub_1CA4323EC(*v148 + *(v147 + 72) * *v111, *v148 + *(v147 + 72) * *v114, *v148 + *(v147 + 72) * v115, v159);
        if (v7)
        {
          goto LABEL_114;
        }

        if (v115 < v112)
        {
          goto LABEL_116;
        }

        v7 = *(v150 + 2);
        if (v113 > v7)
        {
          goto LABEL_117;
        }

        *v111 = v112;
        *(v111 + 1) = v115;
        if (v113 >= v7)
        {
          goto LABEL_118;
        }

        v76 = v7 - 1;
        sub_1CA627628(v114 + 16, v7 - 1 - v113, v114);
        v25 = v150;
        *(v150 + 2) = v7 - 1;
        v116 = v7 > 2;
        v7 = 0;
        if (!v116)
        {
          goto LABEL_98;
        }
      }

      v86 = &v77[16 * v76];
      v87 = *(v86 - 8);
      v88 = *(v86 - 7);
      v92 = __OFSUB__(v88, v87);
      v89 = v88 - v87;
      if (v92)
      {
        goto LABEL_119;
      }

      v91 = *(v86 - 6);
      v90 = *(v86 - 5);
      v92 = __OFSUB__(v90, v91);
      v84 = v90 - v91;
      v85 = v92;
      if (v92)
      {
        goto LABEL_120;
      }

      v93 = *(v81 + 1);
      v94 = v93 - *v81;
      if (__OFSUB__(v93, *v81))
      {
        goto LABEL_122;
      }

      v92 = __OFADD__(v84, v94);
      v95 = v84 + v94;
      if (v92)
      {
        goto LABEL_125;
      }

      if (v95 >= v89)
      {
        v109 = *v80;
        v108 = *(v80 + 1);
        v92 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v92)
        {
          goto LABEL_133;
        }

        if (v84 < v110)
        {
          v79 = v76 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v22 = v147;
    v23 = v148[1];
    v24 = v153;
    v5 = v134;
    v6 = v135;
    if (v153 >= v23)
    {
      goto LABEL_101;
    }
  }

  v60 = v26 + v133;
  if (__OFADD__(v26, v133))
  {
    goto LABEL_136;
  }

  if (v60 >= v59)
  {
    v60 = v148[1];
  }

  if (v60 < v26)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    v25 = sub_1CA627610();
LABEL_103:
    v122 = v25 + 16;
    v123 = *(v25 + 2);
    while (v123 >= 2)
    {
      if (!*v148)
      {
        goto LABEL_142;
      }

      v124 = v25;
      v125 = &v25[16 * v123];
      v126 = *v125;
      v127 = &v122[2 * v123];
      v128 = *(v127 + 1);
      sub_1CA4323EC(*v148 + *(v147 + 72) * *v125, *v148 + *(v147 + 72) * *v127, *v148 + *(v147 + 72) * v128, v168);
      if (v7)
      {
        break;
      }

      if (v128 < v126)
      {
        goto LABEL_130;
      }

      if (v123 - 2 >= *v122)
      {
        goto LABEL_131;
      }

      *v125 = v126;
      *(v125 + 1) = v128;
      v129 = *v122 - v123;
      if (*v122 < v123)
      {
        goto LABEL_132;
      }

      v123 = *v122 - 1;
      sub_1CA627628(v127 + 16, v129, v127);
      *v122 = v123;
      v25 = v124;
    }

    goto LABEL_114;
  }

  if (v27 == v60)
  {
    goto LABEL_48;
  }

  v61 = *(v22 + 72);
  v158 = *(v22 + 16);
  v62 = *v148 + v61 * (v27 - 1);
  v7 = -v61;
  v63 = v26 - v27;
  v155 = *v148;
  v137 = v61;
  v64 = *v148 + v27 * v61;
  v138 = v60;
LABEL_41:
  v152 = v27;
  v142 = v64;
  v144 = v63;
  v65 = v64;
  v146 = v62;
  while (1)
  {
    v158(v161, v65, v10);
    v158(v162, v62, v168);
    v166 = sub_1CA94B138();
    v167 = v66;
    v164 = sub_1CA94B138();
    v165 = v67;
    v68 = sub_1CA27BAF0();
    OUTLINED_FUNCTION_110_2(&v164, MEMORY[0x1E69E6158], v69, v68);
    OUTLINED_FUNCTION_87();

    v70 = *v163;
    v10 = v168;
    (*v163)(v162, v168);
    v71 = OUTLINED_FUNCTION_162();
    v70(v71);
    if (&vars0 != 103)
    {
LABEL_46:
      v27 = v152 + 1;
      v62 = v146 + v137;
      v63 = v144 - 1;
      v64 = v142 + v137;
      if (v152 + 1 == v138)
      {
        v27 = v138;
        OUTLINED_FUNCTION_91_4();
        v26 = v140;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v155)
    {
      break;
    }

    v72 = *v160;
    (*v160)(v156, v65, v10);
    swift_arrayInitWithTakeFrontToBack();
    v73 = OUTLINED_FUNCTION_97_4();
    v72(v73);
    v62 += v7;
    v65 += v7;
    v58 = __CFADD__(v63++, 1);
    if (v58)
    {
      goto LABEL_46;
    }
  }

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
}

void sub_1CA42E0C4(uint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v148 = a1;
  v8 = sub_1CA9486C8();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v153 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v166 = &v144 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v144 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v162 = &v144 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v161 = &v144 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v21);
  v26 = &v144 - v22;
  v159 = v23;
  v160 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v171 = *v148;
    if (!v171)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v167 = v24;
  v144 = a4;
  v28 = 0;
  v171 = v23 + 16;
  v169 = (v23 + 32);
  v170 = (v23 + 8);
  v29 = MEMORY[0x1E69E7CC0];
  v163 = v8;
  v155 = v15;
  v145 = v25;
  v147 = &v144 - v22;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v150 = v28;
    if (v28 + 1 < v27)
    {
      v165 = v27;
      v146 = v29;
      v32 = v26;
      v33 = *v160;
      v34 = *(v23 + 72);
      v35 = v25;
      v158 = v28 + 1;
      v36 = v28;
      v37 = &v33[v34 * (v28 + 1)];
      v38 = *(v23 + 16);
      v38(v32, v37, v8);
      v39 = &v33[v34 * v36];
      v40 = v147;
      v157 = v38;
      v38(v35, v39, v8);
      LODWORD(v164) = sub_1CA422BA0(v40);
      if (v5)
      {
        v143 = *v170;
        (*v170)(v35, v8);
        (v143)(v40, v8);
LABEL_124:

        return;
      }

      v149 = 0;
      v41 = *v170;
      (*v170)(v35, v8);
      v156 = v41;
      (v41)(v40, v8);
      v42 = v150 + 2;
      v43 = &v33[v34 * (v150 + 2)];
      v31 = v158;
      v44 = v34;
      v168 = v34;
      v45 = v165;
      while (1)
      {
        v46 = v42;
        if (v31 + 1 >= v45)
        {
          break;
        }

        v47 = v31;
        v48 = v163;
        v5 = v157;
        (v157)(v161, v43, v163);
        v5(v162, v37, v48);
        v49 = sub_1CA9486B8();
        v51 = v50;
        if (v49 == sub_1CA9486B8() && v51 == v52)
        {
          v54 = 0;
        }

        else
        {
          v54 = sub_1CA94D7F8();
        }

        v55 = v163;
        v56 = v156;
        (v156)(v162, v163);
        v56(v161, v55);
        v44 = v168;
        v43 += v168;
        v37 += v168;
        v31 = v47 + 1;
        v42 = v46 + 1;
        v45 = v165;
        if ((v164 ^ v54))
        {
          goto LABEL_16;
        }
      }

      v31 = v45;
LABEL_16:
      if (v164)
      {
        v30 = v150;
        if (v31 < v150)
        {
          goto LABEL_149;
        }

        v5 = v149;
        if (v150 >= v31)
        {
          v23 = v159;
          v29 = v146;
          v8 = v163;
          v15 = v155;
          goto LABEL_39;
        }

        if (v45 >= v46)
        {
          v57 = v46;
        }

        else
        {
          v57 = v45;
        }

        v58 = v44 * (v57 - 1);
        v59 = v44 * v57;
        v60 = v150;
        v61 = v150 * v44;
        v62 = v31;
        do
        {
          if (v60 != --v62)
          {
            v63 = *v160;
            if (!*v160)
            {
              goto LABEL_154;
            }

            v64 = v163;
            v165 = *v169;
            v165(v153, &v63[v61], v163);
            v65 = v61 < v58 || &v63[v61] >= &v63[v59];
            if (v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v58)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v165(&v63[v58], v153, v64);
            v5 = v149;
            v44 = v168;
          }

          ++v60;
          v58 -= v44;
          v59 -= v44;
          v61 += v44;
        }

        while (v60 < v62);
      }

      else
      {
        v5 = v149;
      }

      v23 = v159;
      v29 = v146;
      v8 = v163;
      v15 = v155;
      v30 = v150;
    }

LABEL_39:
    v66 = v160[1];
    if (v31 < v66)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_146;
      }

      if (v31 - v30 < v144)
      {
        break;
      }
    }

LABEL_62:
    if (v31 < v30)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA2E49C0(0, *(v29 + 2) + 1, 1, v29);
      v29 = v133;
    }

    v89 = *(v29 + 2);
    v88 = *(v29 + 3);
    v90 = v89 + 1;
    v158 = v31;
    if (v89 >= v88 >> 1)
    {
      sub_1CA2E49C0(v88 > 1, v89 + 1, 1, v29);
      v29 = v134;
    }

    *(v29 + 2) = v90;
    v91 = v29 + 32;
    v92 = &v29[16 * v89 + 32];
    v93 = v158;
    *v92 = v150;
    *(v92 + 1) = v93;
    v168 = *v148;
    if (!v168)
    {
      goto LABEL_155;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[16 * v90 - 16];
        v96 = &v29[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v29 + 4);
          v98 = *(v29 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_82:
          if (v100)
          {
            goto LABEL_132;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_135;
          }

          v116 = *(v95 + 1);
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_140;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v90 < 2)
        {
          goto LABEL_134;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_97:
        if (v115)
        {
          goto LABEL_137;
        }

        v121 = *v95;
        v120 = *(v95 + 1);
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_139;
        }

        if (v122 < v114)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v94 - 1 >= v90)
        {
          __break(1u);
LABEL_127:
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
          goto LABEL_148;
        }

        if (!*v160)
        {
          goto LABEL_152;
        }

        v126 = v29;
        v127 = &v91[16 * v94 - 16];
        v128 = *v127;
        v129 = &v91[16 * v94];
        v130 = *(v129 + 1);
        sub_1CA432950(&(*v160)[*(v159 + 72) * *v127], &(*v160)[*(v159 + 72) * *v129], &(*v160)[*(v159 + 72) * v130], v168);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v130 < v128)
        {
          goto LABEL_127;
        }

        v131 = *(v126 + 2);
        if (v94 > v131)
        {
          goto LABEL_128;
        }

        *v127 = v128;
        *(v127 + 1) = v130;
        if (v94 >= v131)
        {
          goto LABEL_129;
        }

        v90 = v131 - 1;
        sub_1CA627628(v129 + 16, v131 - 1 - v94, &v91[16 * v94]);
        v29 = v126;
        *(v126 + 2) = v131 - 1;
        v132 = v131 > 2;
        v15 = v155;
        if (!v132)
        {
          goto LABEL_111;
        }
      }

      v101 = &v91[16 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_130;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_131;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_133;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_136;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = *(v95 + 1);
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_144;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v23 = v159;
    v27 = v160[1];
    v28 = v158;
    v8 = v163;
    v25 = v145;
    v26 = v147;
    if (v158 >= v27)
    {
      goto LABEL_114;
    }
  }

  v67 = (v30 + v144);
  if (__OFADD__(v30, v144))
  {
    goto LABEL_147;
  }

  if (v67 >= v66)
  {
    v67 = v160[1];
  }

  if (v67 < v30)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v29 = sub_1CA627610();
LABEL_116:
    v135 = v29 + 16;
    v136 = *(v29 + 2);
    while (v136 >= 2)
    {
      if (!*v160)
      {
        goto LABEL_153;
      }

      v137 = v29;
      v138 = &v29[16 * v136];
      v139 = *v138;
      v140 = &v135[2 * v136];
      v141 = *(v140 + 1);
      sub_1CA432950(&(*v160)[*(v159 + 72) * *v138], &(*v160)[*(v159 + 72) * *v140], &(*v160)[*(v159 + 72) * v141], v171);
      if (v5)
      {
        break;
      }

      if (v141 < v139)
      {
        goto LABEL_141;
      }

      if (v136 - 2 >= *v135)
      {
        goto LABEL_142;
      }

      *v138 = v139;
      *(v138 + 1) = v141;
      v142 = *v135 - v136;
      if (*v135 < v136)
      {
        goto LABEL_143;
      }

      v136 = *v135 - 1;
      sub_1CA627628(v140 + 16, v142, v140);
      *v135 = v136;
      v29 = v137;
    }

    goto LABEL_124;
  }

  if (v31 == v67)
  {
    goto LABEL_62;
  }

  v146 = v29;
  v149 = v5;
  v68 = *v160;
  v69 = *(v23 + 72);
  v168 = *(v23 + 16);
  v70 = &v68[v69 * (v31 - 1)];
  v164 = -v69;
  v165 = v68;
  v71 = (v30 - v31);
  v151 = v69;
  v152 = v67;
  v72 = &v68[v31 * v69];
  v73 = v167;
LABEL_48:
  v157 = v70;
  v158 = v31;
  v154 = v72;
  v156 = v71;
  while (1)
  {
    v74 = v168;
    (v168)(v73, v72, v8);
    v74(v15, v70, v8);
    v75 = v15;
    v76 = sub_1CA9486B8();
    v77 = v8;
    v79 = v78;
    if (v76 == sub_1CA9486B8() && v79 == v80)
    {

      v87 = *v170;
      (*v170)(v75, v77);
      (v87)(v73, v77);
      v8 = v77;
      v15 = v75;
      goto LABEL_60;
    }

    v82 = v73;
    v83 = sub_1CA94D7F8();

    v84 = *v170;
    (*v170)(v75, v77);
    (v84)(v82, v77);
    v8 = v77;
    v15 = v75;
    if ((v83 & 1) == 0)
    {
      v73 = v167;
LABEL_60:
      v31 = v158 + 1;
      v70 = &v157[v151];
      v71 = v156 - 1;
      v72 = &v154[v151];
      if ((v158 + 1) == v152)
      {
        v31 = v152;
        v5 = v149;
        v29 = v146;
        v30 = v150;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v165)
    {
      break;
    }

    v85 = *v169;
    v86 = v166;
    (*v169)(v166, v72, v77);
    swift_arrayInitWithTakeFrontToBack();
    v85(v70, v86, v77);
    v70 += v164;
    v72 += v164;
    v65 = __CFADD__(v71++, 1);
    v73 = v167;
    if (v65)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

void sub_1CA42EC80(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v179 = a4;
  v178 = a1;
  v201 = sub_1CA94A4E8();
  v5 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v200 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_1CA94A288();
  v7 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v198 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v9 = MEMORY[0x1EEE9AC00](v208);
  v207 = (&v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v206 = (&v174 - v12);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v191 = (&v174 - v14);
  MEMORY[0x1EEE9AC00](v13);
  v190 = (&v174 - v15);
  v204 = type metadata accessor for DrawerAction(0);
  v187 = *(v204 - 8);
  v16 = MEMORY[0x1EEE9AC00](v204);
  v182 = &v174 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v203 = &v174 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v213 = &v174 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v205 = &v174 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v189 = &v174 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v27);
  v188 = a3;
  v31 = a3[1];
  if (v31 < 1)
  {
    v33 = MEMORY[0x1E69E7CC0];
LABEL_126:
    v34 = *v178;
    if (!*v178)
    {
      goto LABEL_169;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_128;
    }

    goto LABEL_163;
  }

  v174 = &v174 - v28;
  v175 = v30;
  v186 = v29;
  v32 = 0;
  v196 = (v5 + 8);
  v197 = (v5 + 32);
  v194 = (v7 + 8);
  v195 = (v7 + 32);
  v33 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v34 = v32;
    v35 = (v32 + 1);
    if ((v32 + 1) >= v31)
    {
      v74 = v179;
    }

    else
    {
      v202 = v31;
      v36 = *v188;
      v37 = *(v187 + 72);
      v38 = v32;
      v39 = v32 + 1;
      v40 = *v188 + v37 * v35;
      v41 = v174;
      sub_1CA42B9A4(v40, v174);
      v42 = v175;
      sub_1CA42B9A4(v36 + v37 * v38, v175);
      v43 = v192;
      LODWORD(v185) = sub_1CA424E48(v41, v42, DrawerAction.title.getter);
      v192 = v43;
      if (v43)
      {
        sub_1CA42B9FC();
        sub_1CA42B9FC();
LABEL_138:

        return;
      }

      v176 = v33;
      sub_1CA42B9FC();
      sub_1CA42B9FC();
      v177 = v38;
      v44 = v38 + 2;
      v45 = v36 + v37 * (v38 + 2);
      v46 = v186;
      v35 = v39;
      v47 = v202;
      while (1)
      {
        v48 = v44;
        if (v35 + 1 >= v47)
        {
          break;
        }

        v193 = v35;
        v49 = v189;
        sub_1CA42B9A4(v45, v189);
        sub_1CA42B9A4(v40, v46);
        sub_1CA42B9A4(v49, v190);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v52 = v198;
            v51 = v199;
            (*v195)(v198, v190, v199);
            v53 = sub_1CA94A268();
            v55 = v54;
            v56 = v194;
          }

          else
          {
            v52 = v200;
            v51 = v201;
            (*v197)(v200, v190, v201);
            v53 = sub_1CA94A4B8();
            v55 = v60;
            v56 = v196;
          }

          (*v56)(v52, v51);
        }

        else
        {
          v57 = *v190;
          v58 = [*v190 localizedName];
          v53 = sub_1CA94C3A8();
          v55 = v59;

          v46 = v186;
        }

        v211 = v53;
        v212 = v55;
        sub_1CA42B9A4(v46, v191);
        v61 = swift_getEnumCaseMultiPayload();
        if (v61)
        {
          if (v61 == 1)
          {
            v63 = v198;
            v62 = v199;
            (*v195)(v198, v191, v199);
            v64 = sub_1CA94A268();
            v66 = v65;
            v67 = v194;
          }

          else
          {
            v63 = v200;
            v62 = v201;
            (*v197)(v200, v191, v201);
            v64 = sub_1CA94A4B8();
            v66 = v71;
            v67 = v196;
          }

          (*v67)(v63, v62);
        }

        else
        {
          v68 = *v191;
          v69 = [*v191 localizedName];
          v64 = sub_1CA94C3A8();
          v66 = v70;
        }

        v209 = v64;
        v210 = v66;
        sub_1CA27BAF0();
        v72 = sub_1CA94D1F8();

        v46 = v186;
        sub_1CA42B9FC();
        sub_1CA42B9FC();
        v73 = v185 ^ (v72 != -1);
        v45 += v37;
        v40 += v37;
        v35 = v193 + 1;
        v44 = (v48 + 1);
        v47 = v202;
        if ((v73 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v35 = v47;
LABEL_23:
      if (v185)
      {
        v34 = v177;
        v74 = v179;
        if (v35 < v177)
        {
          goto LABEL_162;
        }

        if (v177 >= v35)
        {
          v33 = v176;
          goto LABEL_46;
        }

        v75 = v47 >= v48 ? v48 : v47;
        v76 = v35;
        v77 = v37 * (v75 - 1);
        v78 = v37 * v75;
        v79 = v177 * v37;
        v80 = v177;
        v81 = v76;
        do
        {
          if (v80 != --v76)
          {
            v82 = *v188;
            if (!*v188)
            {
              goto LABEL_167;
            }

            sub_1CA42BA50(v82 + v79, v182);
            v83 = v79 < v77 || v82 + v79 >= (v82 + v78);
            if (v83)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v79 != v77)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1CA42BA50(v182, v82 + v77);
            v74 = v179;
          }

          ++v80;
          v77 -= v37;
          v78 -= v37;
          v79 += v37;
        }

        while (v80 < v76);
        v33 = v176;
        v35 = v81;
      }

      else
      {
        v74 = v179;
        v33 = v176;
      }

      v34 = v177;
    }

LABEL_46:
    v84 = v188[1];
    if (v35 < v84)
    {
      if (__OFSUB__(v35, v34))
      {
        goto LABEL_159;
      }

      if (v35 - v34 < v74)
      {
        break;
      }
    }

LABEL_74:
    if (v35 < v34)
    {
      goto LABEL_158;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v193 = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1CA2E49C0(0, *(v33 + 2) + 1, 1, v33);
      v33 = v163;
    }

    v119 = *(v33 + 2);
    v118 = *(v33 + 3);
    v120 = v119 + 1;
    if (v119 >= v118 >> 1)
    {
      sub_1CA2E49C0(v118 > 1, v119 + 1, 1, v33);
      v33 = v164;
    }

    *(v33 + 2) = v120;
    v121 = v33 + 32;
    v122 = &v33[16 * v119 + 32];
    v123 = v193;
    *v122 = v34;
    v122[1] = v123;
    v34 = *v178;
    if (!*v178)
    {
      goto LABEL_168;
    }

    if (v119)
    {
      while (1)
      {
        v124 = v120 - 1;
        v125 = &v121[16 * v120 - 16];
        v126 = &v33[16 * v120];
        if (v120 >= 4)
        {
          break;
        }

        if (v120 == 3)
        {
          v127 = *(v33 + 4);
          v128 = *(v33 + 5);
          v137 = __OFSUB__(v128, v127);
          v129 = v128 - v127;
          v130 = v137;
LABEL_94:
          if (v130)
          {
            goto LABEL_145;
          }

          v142 = *v126;
          v141 = *(v126 + 1);
          v143 = __OFSUB__(v141, v142);
          v144 = v141 - v142;
          v145 = v143;
          if (v143)
          {
            goto LABEL_148;
          }

          v146 = *(v125 + 1);
          v147 = v146 - *v125;
          if (__OFSUB__(v146, *v125))
          {
            goto LABEL_151;
          }

          if (__OFADD__(v144, v147))
          {
            goto LABEL_153;
          }

          if (v144 + v147 >= v129)
          {
            if (v129 < v147)
            {
              v124 = v120 - 2;
            }

            goto LABEL_116;
          }

          goto LABEL_109;
        }

        if (v120 < 2)
        {
          goto LABEL_147;
        }

        v149 = *v126;
        v148 = *(v126 + 1);
        v137 = __OFSUB__(v148, v149);
        v144 = v148 - v149;
        v145 = v137;
LABEL_109:
        if (v145)
        {
          goto LABEL_150;
        }

        v151 = *v125;
        v150 = *(v125 + 1);
        v137 = __OFSUB__(v150, v151);
        v152 = v150 - v151;
        if (v137)
        {
          goto LABEL_152;
        }

        if (v152 < v144)
        {
          goto LABEL_123;
        }

LABEL_116:
        if (v124 - 1 >= v120)
        {
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
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
          goto LABEL_161;
        }

        if (!*v188)
        {
          goto LABEL_165;
        }

        v156 = v33;
        v157 = &v121[16 * v124 - 16];
        v158 = *v157;
        v159 = &v121[16 * v124];
        v160 = *(v159 + 1);
        v161 = v192;
        sub_1CA432F6C((*v188 + *(v187 + 72) * *v157), (*v188 + *(v187 + 72) * *v159), *v188 + *(v187 + 72) * v160, v34);
        v192 = v161;
        if (v161)
        {
          goto LABEL_138;
        }

        if (v160 < v158)
        {
          goto LABEL_140;
        }

        v162 = *(v156 + 2);
        if (v124 > v162)
        {
          goto LABEL_141;
        }

        *v157 = v158;
        *(v157 + 1) = v160;
        if (v124 >= v162)
        {
          goto LABEL_142;
        }

        v120 = v162 - 1;
        sub_1CA627628(v159 + 16, v162 - 1 - v124, &v121[16 * v124]);
        v33 = v156;
        *(v156 + 2) = v162 - 1;
        if (v162 <= 2)
        {
          goto LABEL_123;
        }
      }

      v131 = &v121[16 * v120];
      v132 = *(v131 - 8);
      v133 = *(v131 - 7);
      v137 = __OFSUB__(v133, v132);
      v134 = v133 - v132;
      if (v137)
      {
        goto LABEL_143;
      }

      v136 = *(v131 - 6);
      v135 = *(v131 - 5);
      v137 = __OFSUB__(v135, v136);
      v129 = v135 - v136;
      v130 = v137;
      if (v137)
      {
        goto LABEL_144;
      }

      v138 = *(v126 + 1);
      v139 = v138 - *v126;
      if (__OFSUB__(v138, *v126))
      {
        goto LABEL_146;
      }

      v137 = __OFADD__(v129, v139);
      v140 = v129 + v139;
      if (v137)
      {
        goto LABEL_149;
      }

      if (v140 >= v134)
      {
        v154 = *v125;
        v153 = *(v125 + 1);
        v137 = __OFSUB__(v153, v154);
        v155 = v153 - v154;
        if (v137)
        {
          goto LABEL_157;
        }

        if (v129 < v155)
        {
          v124 = v120 - 2;
        }

        goto LABEL_116;
      }

      goto LABEL_94;
    }

LABEL_123:
    v31 = v188[1];
    v32 = v193;
    if (v193 >= v31)
    {
      goto LABEL_126;
    }
  }

  v85 = &v34[v74];
  if (__OFADD__(v34, v74))
  {
    goto LABEL_160;
  }

  if (v85 >= v84)
  {
    v85 = v188[1];
  }

  if (v85 < v34)
  {
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    v33 = sub_1CA627610();
LABEL_128:
    v165 = v33 + 16;
    v166 = *(v33 + 2);
    while (v166 >= 2)
    {
      if (!*v188)
      {
        goto LABEL_166;
      }

      v167 = v33;
      v168 = &v33[16 * v166];
      v169 = *v168;
      v170 = &v165[2 * v166];
      v171 = *(v170 + 1);
      v172 = v192;
      sub_1CA432F6C((*v188 + *(v187 + 72) * *v168), (*v188 + *(v187 + 72) * *v170), *v188 + *(v187 + 72) * v171, v34);
      v192 = v172;
      if (v172)
      {
        break;
      }

      if (v171 < v169)
      {
        goto LABEL_154;
      }

      if (v166 - 2 >= *v165)
      {
        goto LABEL_155;
      }

      *v168 = v169;
      *(v168 + 1) = v171;
      v173 = *v165 - v166;
      if (*v165 < v166)
      {
        goto LABEL_156;
      }

      v166 = *v165 - 1;
      sub_1CA627628(v170 + 16, v173, v170);
      *v165 = v166;
      v33 = v167;
    }

    goto LABEL_138;
  }

  if (v35 == v85)
  {
    goto LABEL_74;
  }

  v176 = v33;
  v86 = *v188;
  v87 = *(v187 + 72);
  v88 = *v188 + v87 * (v35 - 1);
  v89 = -v87;
  v177 = v34;
  v90 = &v34[-v35];
  v202 = v86;
  v180 = v87;
  v91 = v86 + v35 * v87;
  v181 = v85;
LABEL_55:
  v193 = v35;
  v183 = v91;
  v184 = v90;
  v185 = v88;
  while (1)
  {
    v92 = v205;
    sub_1CA42B9A4(v91, v205);
    sub_1CA42B9A4(v88, v213);
    sub_1CA42B9A4(v92, v206);
    v93 = swift_getEnumCaseMultiPayload();
    if (v93)
    {
      if (v93 == 1)
      {
        v95 = v198;
        v94 = v199;
        (*v195)(v198, v206, v199);
        v96 = sub_1CA94A268();
        v98 = v97;
        v99 = v194;
      }

      else
      {
        v95 = v200;
        v94 = v201;
        (*v197)(v200, v206, v201);
        v96 = sub_1CA94A4B8();
        v98 = v103;
        v99 = v196;
      }

      (*v99)(v95, v94);
    }

    else
    {
      v100 = *v206;
      v101 = [*v206 localizedName];
      v96 = sub_1CA94C3A8();
      v98 = v102;
    }

    v211 = v96;
    v212 = v98;
    sub_1CA42B9A4(v213, v207);
    v104 = swift_getEnumCaseMultiPayload();
    if (v104)
    {
      if (v104 == 1)
      {
        v106 = v198;
        v105 = v199;
        (*v195)(v198, v207, v199);
        v107 = sub_1CA94A268();
        v109 = v108;
        v110 = v194;
      }

      else
      {
        v106 = v200;
        v105 = v201;
        (*v197)(v200, v207, v201);
        v107 = sub_1CA94A4B8();
        v109 = v114;
        v110 = v196;
      }

      (*v110)(v106, v105);
    }

    else
    {
      v111 = *v207;
      v112 = [*v207 localizedName];
      v107 = sub_1CA94C3A8();
      v109 = v113;
    }

    v209 = v107;
    v210 = v109;
    sub_1CA27BAF0();
    v115 = sub_1CA94D1F8();

    sub_1CA42B9FC();
    sub_1CA42B9FC();
    if (v115 != -1)
    {
LABEL_72:
      v35 = v193 + 1;
      v88 = v185 + v180;
      v90 = v184 - 1;
      v91 = v183 + v180;
      if ((v193 + 1) == v181)
      {
        v35 = v181;
        v33 = v176;
        v34 = v177;
        goto LABEL_74;
      }

      goto LABEL_55;
    }

    if (!v202)
    {
      break;
    }

    v116 = v203;
    sub_1CA42BA50(v91, v203);
    swift_arrayInitWithTakeFrontToBack();
    sub_1CA42BA50(v116, v88);
    v88 += v89;
    v91 += v89;
    v83 = __CFADD__(v90++, 1);
    if (v83)
    {
      goto LABEL_72;
    }
  }

  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
}

void sub_1CA42FDD4(id **a1, uint64_t a2, id **a3, uint64_t a4, uint64_t a5)
{
  v197 = a4;
  v198 = a1;
  v221 = sub_1CA94A4E8();
  v7 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v220 = &v194 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_1CA94A288();
  v9 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v218 = &v194 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = type metadata accessor for DrawerAction.DrawerActionStorage(0);
  v11 = MEMORY[0x1EEE9AC00](v235);
  v230 = (&v194 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v229 = (&v194 - v14);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v207 = (&v194 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v206 = (&v194 - v17);
  v227 = type metadata accessor for DrawerAction(0);
  v208 = *(v227 - 8);
  v18 = MEMORY[0x1EEE9AC00](v227);
  v201 = &v194 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v226 = &v194 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v194 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v194 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v212 = &v194 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v211 = &v194 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v195 = &v194 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v194 = &v194 - v34;
  v210 = a3;
  v35 = a3[1];
  v222 = a5;
  if (v35 < 1)
  {
    swift_retain_n();
    v37 = MEMORY[0x1E69E7CC0];
LABEL_144:
    v230 = *v198;
    if (!v230)
    {
      goto LABEL_188;
    }

    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_146;
    }

    goto LABEL_182;
  }

  v216 = (v7 + 8);
  v217 = (v7 + 32);
  v214 = (v9 + 8);
  v215 = (v9 + 32);
  swift_retain_n();
  v36 = 0;
  v37 = MEMORY[0x1E69E7CC0];
  v223 = v24;
  v228 = v27;
  while (1)
  {
    v38 = v36;
    v39 = v36 + 1;
    i = v37;
    if (v36 + 1 >= v35)
    {
      v83 = v197;
      goto LABEL_54;
    }

    v225 = v35;
    v40 = v36;
    v41 = *v210;
    v42 = *(v208 + 72);
    v43 = v36 + 1;
    v44 = *v210 + v42 * v39;
    v45 = v194;
    sub_1CA42B9A4(v44, v194);
    v46 = v195;
    sub_1CA42B9A4(v41 + v42 * v40, v195);
    v47 = v213;
    LODWORD(v224) = sub_1CA4279D4(v45, v46);
    v213 = v47;
    if (v47)
    {
      sub_1CA42B9FC();
      sub_1CA42B9FC();

LABEL_142:

      goto LABEL_156;
    }

    sub_1CA42B9FC();
    sub_1CA42B9FC();
    v196 = v40;
    v48 = (v40 + 2);
    v49 = v41 + v42 * (v40 + 2);
    v39 = v43;
    v50 = v42;
    v51 = v225;
    while (1)
    {
      v52 = v48;
      if (v39 + 1 >= v51)
      {
        break;
      }

      v53 = v50;
      v54 = v39;
      v55 = v211;
      sub_1CA42B9A4(v49, v211);
      v56 = v212;
      sub_1CA42B9A4(v44, v212);
      v57 = *(ActionDrawerDataSource.topHits(for:)(v55) + 16);

      v58 = *(ActionDrawerDataSource.topHits(for:)(v56) + 16);

      if (v57)
      {
        if (v58)
        {
          goto LABEL_14;
        }

        v59 = 1;
      }

      else
      {
        if (!v58)
        {
LABEL_14:
          sub_1CA42B9A4(v211, v206);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v60 = v54;
          if (EnumCaseMultiPayload)
          {
            v50 = v53;
            if (EnumCaseMultiPayload == 1)
            {
              v62 = v218;
              v63 = v219;
              (*v215)(v218, v206, v219);
              v64 = sub_1CA94A268();
              v66 = v65;
              v67 = v214;
            }

            else
            {
              v62 = v220;
              v63 = v221;
              (*v217)(v220, v206, v221);
              v64 = sub_1CA94A4B8();
              v66 = v71;
              v67 = v216;
            }

            (*v67)(v62, v63);
          }

          else
          {
            v68 = *v206;
            v69 = [*v206 localizedName];
            v64 = sub_1CA94C3A8();
            v209 = v70;

            v50 = v53;
            v66 = v209;
          }

          v233 = v64;
          v234 = v66;
          sub_1CA42B9A4(v212, v207);
          v72 = swift_getEnumCaseMultiPayload();
          if (v72)
          {
            v209 = v66;
            if (v72 == 1)
            {
              v73 = v218;
              v74 = v219;
              (*v215)(v218, v207, v219);
              v75 = sub_1CA94A268();
              v77 = v76;
              v78 = v214;
            }

            else
            {
              v73 = v220;
              v74 = v221;
              (*v217)(v220, v207, v221);
              v75 = sub_1CA94A4B8();
              v77 = v81;
              v78 = v216;
            }

            (*v78)(v73, v74);
          }

          else
          {
            v209 = *v207;
            v79 = [v209 localizedName];
            v75 = sub_1CA94C3A8();
            v77 = v80;
          }

          v231 = v75;
          v232 = v77;
          sub_1CA27BAF0();
          v82 = sub_1CA94D1D8();

          v59 = v82 == -1;
          v27 = v228;
          goto LABEL_27;
        }

        v59 = 0;
      }

      v27 = v228;
      v60 = v54;
      v50 = v53;
LABEL_27:
      sub_1CA42B9FC();
      sub_1CA42B9FC();
      v49 += v50;
      v44 += v50;
      v39 = v60 + 1;
      v48 = (v52 + 1);
      v51 = v225;
      if ((v224 & 1) != v59)
      {
        goto LABEL_30;
      }
    }

    v39 = v51;
LABEL_30:
    if ((v224 & 1) == 0)
    {
      v83 = v197;
      v24 = v223;
      goto LABEL_51;
    }

    v38 = v196;
    v83 = v197;
    if (v39 < v196)
    {
      goto LABEL_181;
    }

    if (v196 >= v39)
    {
      v24 = v223;
    }

    else
    {
      v84 = v51 >= v52 ? v52 : v51;
      v85 = v196;
      v86 = v50 * (v84 - 1);
      v87 = v39;
      v88 = v50 * v84;
      v89 = v196 * v50;
      v209 = v87;
      do
      {
        if (v85 != --v87)
        {
          v90 = *v210;
          if (!*v210)
          {
            goto LABEL_186;
          }

          sub_1CA42BA50(v90 + v89, v201);
          v91 = v89 < v86 || v90 + v89 >= v90 + v88;
          if (v91)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v89 != v86)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1CA42BA50(v201, v90 + v86);
          v27 = v228;
        }

        ++v85;
        v86 -= v50;
        v88 -= v50;
        v89 += v50;
      }

      while (v85 < v87);
      v83 = v197;
      v24 = v223;
      v39 = v209;
LABEL_51:
      v38 = v196;
    }

    v37 = i;
LABEL_54:
    v92 = v210[1];
    v209 = v39;
    if (v39 < v92)
    {
      if (__OFSUB__(v39, v38))
      {
        goto LABEL_178;
      }

      if (v39 - v38 < v83)
      {
        break;
      }
    }

LABEL_89:
    if (v209 < v38)
    {
      goto LABEL_177;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA2E49C0(0, *(v37 + 2) + 1, 1, v37);
      v37 = v177;
    }

    v126 = *(v37 + 2);
    v125 = *(v37 + 3);
    v127 = v126 + 1;
    if (v126 >= v125 >> 1)
    {
      sub_1CA2E49C0(v125 > 1, v126 + 1, 1, v37);
      v37 = v178;
    }

    *(v37 + 2) = v127;
    v128 = v37 + 32;
    v129 = &v37[16 * v126 + 32];
    v130 = v209;
    *v129 = v38;
    v129[1] = v130;
    v225 = *v198;
    if (!v225)
    {
      goto LABEL_187;
    }

    if (v126)
    {
      v224 = v37 + 32;
      while (1)
      {
        v131 = v127 - 1;
        v132 = &v128[16 * v127 - 16];
        v133 = &v37[16 * v127];
        if (v127 >= 4)
        {
          break;
        }

        if (v127 == 3)
        {
          v134 = *(v37 + 4);
          v135 = *(v37 + 5);
          v144 = __OFSUB__(v135, v134);
          v136 = v135 - v134;
          v137 = v144;
LABEL_110:
          if (v137)
          {
            goto LABEL_164;
          }

          v149 = *v133;
          v148 = *(v133 + 1);
          v150 = __OFSUB__(v148, v149);
          v151 = v148 - v149;
          v152 = v150;
          if (v150)
          {
            goto LABEL_167;
          }

          v153 = *(v132 + 1);
          v154 = v153 - *v132;
          if (__OFSUB__(v153, *v132))
          {
            goto LABEL_170;
          }

          if (__OFADD__(v151, v154))
          {
            goto LABEL_172;
          }

          if (v151 + v154 >= v136)
          {
            if (v136 < v154)
            {
              v131 = v127 - 2;
            }

            goto LABEL_132;
          }

          goto LABEL_125;
        }

        if (v127 < 2)
        {
          goto LABEL_166;
        }

        v156 = *v133;
        v155 = *(v133 + 1);
        v144 = __OFSUB__(v155, v156);
        v151 = v155 - v156;
        v152 = v144;
LABEL_125:
        if (v152)
        {
          goto LABEL_169;
        }

        v158 = *v132;
        v157 = *(v132 + 1);
        v144 = __OFSUB__(v157, v158);
        v159 = v157 - v158;
        if (v144)
        {
          goto LABEL_171;
        }

        if (v159 < v151)
        {
          goto LABEL_139;
        }

LABEL_132:
        if (v131 - 1 >= v127)
        {
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
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
          goto LABEL_180;
        }

        v163 = *v210;
        if (!*v210)
        {
          goto LABEL_184;
        }

        v164 = &v128[16 * v131 - 16];
        v165 = *v164;
        v166 = v131;
        v167 = &v128[16 * v131];
        v168 = *(v167 + 1);
        v169 = *(v208 + 72);
        v170 = (v163 + v169 * *v164);
        v171 = (v163 + v169 * *v167);
        v172 = v163 + v169 * v168;
        v173 = v222;

        v174 = v170;
        v175 = v213;
        sub_1CA433B14(v174, v171, v172, v225, v173);
        v213 = v175;
        if (v175)
        {

          goto LABEL_142;
        }

        if (v168 < v165)
        {
          goto LABEL_159;
        }

        v176 = *(v37 + 2);
        if (v166 > v176)
        {
          goto LABEL_160;
        }

        *v164 = v165;
        *(v164 + 1) = v168;
        if (v166 >= v176)
        {
          goto LABEL_161;
        }

        v127 = v176 - 1;
        sub_1CA627628(v167 + 16, v176 - 1 - v166, v167);
        *(v37 + 2) = v176 - 1;
        v24 = v223;
        v128 = v224;
        v27 = v228;
        if (v176 <= 2)
        {
          goto LABEL_139;
        }
      }

      v138 = &v128[16 * v127];
      v139 = *(v138 - 8);
      v140 = *(v138 - 7);
      v144 = __OFSUB__(v140, v139);
      v141 = v140 - v139;
      if (v144)
      {
        goto LABEL_162;
      }

      v143 = *(v138 - 6);
      v142 = *(v138 - 5);
      v144 = __OFSUB__(v142, v143);
      v136 = v142 - v143;
      v137 = v144;
      if (v144)
      {
        goto LABEL_163;
      }

      v145 = *(v133 + 1);
      v146 = v145 - *v133;
      if (__OFSUB__(v145, *v133))
      {
        goto LABEL_165;
      }

      v144 = __OFADD__(v136, v146);
      v147 = v136 + v146;
      if (v144)
      {
        goto LABEL_168;
      }

      if (v147 >= v141)
      {
        v161 = *v132;
        v160 = *(v132 + 1);
        v144 = __OFSUB__(v160, v161);
        v162 = v160 - v161;
        if (v144)
        {
          goto LABEL_176;
        }

        if (v136 < v162)
        {
          v131 = v127 - 2;
        }

        goto LABEL_132;
      }

      goto LABEL_110;
    }

LABEL_139:
    v35 = v210[1];
    v36 = v209;
    if (v209 >= v35)
    {
      goto LABEL_144;
    }
  }

  if (__OFADD__(v38, v83))
  {
    goto LABEL_179;
  }

  if (v38 + v83 >= v92)
  {
    v93 = v92;
  }

  else
  {
    v93 = (v38 + v83);
  }

  if (v93 < v38)
  {
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    v37 = sub_1CA627610();
LABEL_146:
    v179 = v37 + 16;
    v180 = *(v37 + 2);
    for (i = v37; ; v37 = i)
    {
      if (v180 < 2)
      {

        return;
      }

      v181 = *v210;
      if (!*v210)
      {
        goto LABEL_185;
      }

      v182 = &v37[16 * v180];
      v183 = *v182;
      v184 = v179;
      v185 = &v179[16 * v180];
      v186 = *(v185 + 1);
      v187 = *(v208 + 72);
      v188 = (v181 + v187 * *v182);
      v189 = (v181 + v187 * *v185);
      v235 = v181 + v187 * v186;
      v190 = v222;

      v191 = v188;
      v192 = v213;
      sub_1CA433B14(v191, v189, v235, v230, v190);
      v213 = v192;
      if (v192)
      {
        break;
      }

      if (v186 < v183)
      {
        goto LABEL_173;
      }

      if (v180 - 2 >= *v184)
      {
        goto LABEL_174;
      }

      v179 = v184;
      *v182 = v183;
      *(v182 + 1) = v186;
      v193 = *v184 - v180;
      if (*v184 < v180)
      {
        goto LABEL_175;
      }

      v180 = *v184 - 1;
      sub_1CA627628(v185 + 16, v193, v185);
      *v184 = v180;
    }

LABEL_156:

    return;
  }

  if (v209 == v93)
  {
    goto LABEL_89;
  }

  v94 = *v210;
  v95 = *(v208 + 72);
  v96 = *v210 + v95 * (v209 - 1);
  v224 = -v95;
  v196 = v38;
  v97 = v38 - v209;
  v225 = v94;
  v199 = v95;
  v98 = v94 + v209 * v95;
  v200 = v93;
  while (2)
  {
    v203 = v98;
    v204 = v97;
    v205 = v96;
LABEL_65:
    sub_1CA42B9A4(v98, v27);
    sub_1CA42B9A4(v96, v24);
    v99 = *(ActionDrawerDataSource.topHits(for:)(v27) + 16);

    v100 = *(ActionDrawerDataSource.topHits(for:)(v24) + 16);

    if (v99)
    {
      if (!v100)
      {
        sub_1CA42B9FC();
        sub_1CA42B9FC();
        goto LABEL_82;
      }
    }

    else if (v100)
    {
      sub_1CA42B9FC();
      sub_1CA42B9FC();
LABEL_87:
      v96 = v205 + v199;
      v97 = v204 - 1;
      v98 = v203 + v199;
      if (++v209 == v200)
      {
        v209 = v200;
        v37 = i;
        v38 = v196;
        goto LABEL_89;
      }

      continue;
    }

    break;
  }

  sub_1CA42B9A4(v27, v229);
  v101 = swift_getEnumCaseMultiPayload();
  if (v101)
  {
    if (v101 == 1)
    {
      v102 = v218;
      v103 = v219;
      (*v215)(v218, v229, v219);
      v104 = sub_1CA94A268();
      v106 = v105;
      v107 = v214;
    }

    else
    {
      v102 = v220;
      v103 = v221;
      (*v217)(v220, v229, v221);
      v104 = sub_1CA94A4B8();
      v106 = v111;
      v107 = v216;
    }

    (*v107)(v102, v103);
  }

  else
  {
    v108 = *v229;
    v109 = [*v229 localizedName];
    v104 = sub_1CA94C3A8();
    v106 = v110;
  }

  v233 = v104;
  v234 = v106;
  sub_1CA42B9A4(v24, v230);
  v112 = swift_getEnumCaseMultiPayload();
  if (v112)
  {
    if (v112 == 1)
    {
      v113 = v218;
      v114 = v219;
      (*v215)(v218, v230, v219);
      v115 = sub_1CA94A268();
      v117 = v116;
      v118 = v214;
    }

    else
    {
      v113 = v220;
      v114 = v221;
      (*v217)(v220, v230, v221);
      v115 = sub_1CA94A4B8();
      v117 = v122;
      v118 = v216;
    }

    (*v118)(v113, v114);
  }

  else
  {
    v119 = *v230;
    v120 = [*v230 localizedName];
    v115 = sub_1CA94C3A8();
    v117 = v121;
  }

  v231 = v115;
  v232 = v117;
  sub_1CA27BAF0();
  v123 = sub_1CA94D1D8();

  v24 = v223;
  sub_1CA42B9FC();
  v27 = v228;
  sub_1CA42B9FC();
  if (v123 != -1)
  {
    goto LABEL_87;
  }

LABEL_82:
  if (v225)
  {
    v124 = v226;
    sub_1CA42BA50(v98, v226);
    swift_arrayInitWithTakeFrontToBack();
    sub_1CA42BA50(v124, v96);
    v96 += v224;
    v98 += v224;
    v91 = __CFADD__(v97++, 1);
    if (v91)
    {
      goto LABEL_87;
    }

    goto LABEL_65;
  }

  __break(1u);
LABEL_184:

  __break(1u);
LABEL_185:

  __break(1u);
LABEL_186:

  __break(1u);
LABEL_187:

  __break(1u);
LABEL_188:

  __break(1u);
}

void sub_1CA431198(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v137 = a1;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4440B0, &unk_1CA981B10);
  v146 = *(v153 - 8);
  v6 = MEMORY[0x1EEE9AC00](v153);
  v141 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v155 = &v133 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v133 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v151 = &v133 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v150 = &v133 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v136 = &v133 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v135 = &v133 - v21;
  v148 = a3;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_116:
    v160 = *v137;
    if (!v160)
    {
      goto LABEL_157;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v149;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_118:
      v126 = v24 + 16;
      v125 = *(v24 + 2);
      while (v125 >= 2)
      {
        if (!*v148)
        {
          goto LABEL_154;
        }

        v127 = v24;
        v128 = &v24[16 * v125];
        v129 = *v128;
        v130 = &v126[2 * v125];
        v131 = *(v130 + 1);
        sub_1CA4347AC(*v148 + *(v146 + 72) * *v128, *v148 + *(v146 + 72) * *v130, *v148 + *(v146 + 72) * v131, v160);
        if (v23)
        {
          break;
        }

        if (v131 < v129)
        {
          goto LABEL_142;
        }

        if (v125 - 2 >= *v126)
        {
          goto LABEL_143;
        }

        *v128 = v129;
        *(v128 + 1) = v131;
        v132 = *v126 - v125;
        if (*v126 < v125)
        {
          goto LABEL_144;
        }

        v125 = *v126 - 1;
        sub_1CA627628(v130 + 16, v132, v130);
        *v126 = v125;
        v24 = v127;
      }

LABEL_126:

      return;
    }

LABEL_151:
    v24 = sub_1CA627610();
    goto LABEL_118;
  }

  v134 = a4;
  v23 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  v152 = v12;
  v160 = v20;
  while (1)
  {
    v25 = v23++;
    v138 = v25;
    if (v23 >= v22)
    {
      v30 = v153;
      goto LABEL_41;
    }

    v143 = v22;
    v145 = v24;
    v26 = *v148;
    v27 = *(v146 + 72);
    v28 = v135;
    sub_1CA2D9D20(*v148 + v27 * v23, v135, &unk_1EC4440B0, &unk_1CA981B10);
    v147 = v27;
    v29 = v136;
    sub_1CA2D9D20(v26 + v27 * v25, v136, &unk_1EC4440B0, &unk_1CA981B10);
    v30 = v153;
    v31 = *(v153 + 36);
    v32 = *(v28 + v31);
    v33 = *(v29 + v31);
    if (v33 >= v32)
    {
      if (v32 < v33)
      {
        LODWORD(v144) = 0;
        goto LABEL_13;
      }

      v158 = sub_1CA429604();
      v159 = v35;
      v156 = sub_1CA429604();
      v157 = v36;
      sub_1CA27BAF0();
      v37 = sub_1CA94D1F8();

      v25 = v138;

      v38 = v37 == -1;
      v30 = v153;
      v34 = v38;
    }

    else
    {
      v34 = 1;
    }

    LODWORD(v144) = v34;
LABEL_13:
    sub_1CA27080C(v29, &unk_1EC4440B0, &unk_1CA981B10);
    sub_1CA27080C(v28, &unk_1EC4440B0, &unk_1CA981B10);
    v39 = v25 + 2;
    v40 = v147 * (v25 + 2);
    v41 = v26 + v40;
    v42 = v147 * v23;
    v43 = v26 + v147 * v23;
    v24 = v145;
    do
    {
      v44 = v39;
      v45 = v23;
      v46 = v42;
      v47 = v40;
      if (v39 >= v143)
      {
        break;
      }

      v154 = v23;
      v48 = v150;
      sub_1CA2D9D20(v41, v150, &unk_1EC4440B0, &unk_1CA981B10);
      v49 = v151;
      sub_1CA2D9D20(v43, v151, &unk_1EC4440B0, &unk_1CA981B10);
      v50 = *(v30 + 36);
      v51 = *(v48 + v50);
      v52 = *(v49 + v50);
      if (v52 >= v51)
      {
        if (v51 >= v52)
        {
          v158 = sub_1CA429604();
          v159 = v54;
          v156 = sub_1CA429604();
          v157 = v55;
          sub_1CA27BAF0();
          v56 = sub_1CA94D1F8();

          v53 = v56 == -1;
        }

        else
        {
          v53 = 0;
        }
      }

      else
      {
        v53 = 1;
      }

      v24 = v145;
      sub_1CA27080C(v151, &unk_1EC4440B0, &unk_1CA981B10);
      sub_1CA27080C(v150, &unk_1EC4440B0, &unk_1CA981B10);
      v39 = v44 + 1;
      v41 += v147;
      v43 += v147;
      v45 = v154;
      v23 = v154 + 1;
      v42 = v46 + v147;
      v40 = v47 + v147;
      v38 = v144 == v53;
      v30 = v153;
    }

    while (v38);
    if (v144)
    {
      v25 = v138;
      if (v44 < v138)
      {
        goto LABEL_148;
      }

      if (v138 >= v44)
      {
        v23 = v44;
        v12 = v152;
        goto LABEL_41;
      }

      v57 = v138 * v147;
      do
      {
        if (v25 != v45)
        {
          v58 = *v148;
          if (!*v148)
          {
            goto LABEL_155;
          }

          v59 = v45;
          sub_1CA2D9CD4(v58 + v57, v141, &unk_1EC4440B0, &unk_1CA981B10);
          v60 = v57 < v46 || v58 + v57 >= (v58 + v47);
          if (v60)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v57 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1CA2D9CD4(v141, v58 + v46, &unk_1EC4440B0, &unk_1CA981B10);
          v45 = v59;
        }

        ++v25;
        v46 -= v147;
        v47 -= v147;
        v57 += v147;
        v61 = v25 < v45--;
      }

      while (v61);
      v23 = v44;
      v30 = v153;
    }

    else
    {
      v23 = v44;
    }

    v12 = v152;
    v25 = v138;
LABEL_41:
    v62 = v148[1];
    if (v23 < v62)
    {
      if (__OFSUB__(v23, v25))
      {
        goto LABEL_147;
      }

      if (v23 - v25 < v134)
      {
        break;
      }
    }

LABEL_63:
    if (v23 < v25)
    {
      goto LABEL_146;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA2E49C0(0, *(v24 + 2) + 1, 1, v24);
      v24 = v122;
    }

    v79 = *(v24 + 2);
    v78 = *(v24 + 3);
    v80 = v79 + 1;
    if (v79 >= v78 >> 1)
    {
      sub_1CA2E49C0(v78 > 1, v79 + 1, 1, v24);
      v24 = v123;
    }

    *(v24 + 2) = v80;
    v81 = v24 + 32;
    v82 = &v24[16 * v79 + 32];
    *v82 = v138;
    *(v82 + 1) = v23;
    v154 = *v137;
    if (!v154)
    {
      goto LABEL_156;
    }

    if (v79)
    {
      while (1)
      {
        v83 = v80 - 1;
        v84 = &v81[16 * v80 - 16];
        v85 = &v24[16 * v80];
        if (v80 >= 4)
        {
          break;
        }

        if (v80 == 3)
        {
          v86 = *(v24 + 4);
          v87 = *(v24 + 5);
          v96 = __OFSUB__(v87, v86);
          v88 = v87 - v86;
          v89 = v96;
LABEL_83:
          if (v89)
          {
            goto LABEL_133;
          }

          v101 = *v85;
          v100 = *(v85 + 1);
          v102 = __OFSUB__(v100, v101);
          v103 = v100 - v101;
          v104 = v102;
          if (v102)
          {
            goto LABEL_136;
          }

          v105 = *(v84 + 1);
          v106 = v105 - *v84;
          if (__OFSUB__(v105, *v84))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v103, v106))
          {
            goto LABEL_141;
          }

          if (v103 + v106 >= v88)
          {
            if (v88 < v106)
            {
              v83 = v80 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        if (v80 < 2)
        {
          goto LABEL_135;
        }

        v108 = *v85;
        v107 = *(v85 + 1);
        v96 = __OFSUB__(v107, v108);
        v103 = v107 - v108;
        v104 = v96;
LABEL_98:
        if (v104)
        {
          goto LABEL_138;
        }

        v110 = *v84;
        v109 = *(v84 + 1);
        v96 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v96)
        {
          goto LABEL_140;
        }

        if (v111 < v103)
        {
          goto LABEL_112;
        }

LABEL_105:
        if (v83 - 1 >= v80)
        {
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
          goto LABEL_150;
        }

        if (!*v148)
        {
          goto LABEL_153;
        }

        v115 = v24;
        v116 = &v81[16 * v83 - 16];
        v117 = *v116;
        v118 = &v81[16 * v83];
        v119 = *(v118 + 1);
        v120 = v149;
        sub_1CA4347AC(*v148 + *(v146 + 72) * *v116, *v148 + *(v146 + 72) * *v118, *v148 + *(v146 + 72) * v119, v154);
        v149 = v120;
        if (v120)
        {
          goto LABEL_126;
        }

        if (v119 < v117)
        {
          goto LABEL_128;
        }

        v121 = *(v115 + 2);
        if (v83 > v121)
        {
          goto LABEL_129;
        }

        *v116 = v117;
        *(v116 + 1) = v119;
        if (v83 >= v121)
        {
          goto LABEL_130;
        }

        v80 = v121 - 1;
        sub_1CA627628(v118 + 16, v121 - 1 - v83, &v81[16 * v83]);
        v24 = v115;
        *(v115 + 2) = v121 - 1;
        v61 = v121 > 2;
        v12 = v152;
        if (!v61)
        {
          goto LABEL_112;
        }
      }

      v90 = &v81[16 * v80];
      v91 = *(v90 - 8);
      v92 = *(v90 - 7);
      v96 = __OFSUB__(v92, v91);
      v93 = v92 - v91;
      if (v96)
      {
        goto LABEL_131;
      }

      v95 = *(v90 - 6);
      v94 = *(v90 - 5);
      v96 = __OFSUB__(v94, v95);
      v88 = v94 - v95;
      v89 = v96;
      if (v96)
      {
        goto LABEL_132;
      }

      v97 = *(v85 + 1);
      v98 = v97 - *v85;
      if (__OFSUB__(v97, *v85))
      {
        goto LABEL_134;
      }

      v96 = __OFADD__(v88, v98);
      v99 = v88 + v98;
      if (v96)
      {
        goto LABEL_137;
      }

      if (v99 >= v93)
      {
        v113 = *v84;
        v112 = *(v84 + 1);
        v96 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v96)
        {
          goto LABEL_145;
        }

        if (v88 < v114)
        {
          v83 = v80 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_83;
    }

LABEL_112:
    v22 = v148[1];
    if (v23 >= v22)
    {
      goto LABEL_116;
    }
  }

  v63 = v25 + v134;
  if (__OFADD__(v25, v134))
  {
    goto LABEL_149;
  }

  if (v63 >= v62)
  {
    v63 = v148[1];
  }

  if (v63 < v25)
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v23 == v63)
  {
    goto LABEL_63;
  }

  v145 = v24;
  v64 = *(v146 + 72);
  v65 = *v148 + v64 * (v23 - 1);
  v66 = -v64;
  v67 = v25 - v23;
  v154 = *v148;
  v139 = v64;
  v140 = v63;
  v68 = v154 + v23 * v64;
LABEL_50:
  v147 = v23;
  v142 = v68;
  v143 = v67;
  v144 = v65;
  while (1)
  {
    v69 = v160;
    sub_1CA2D9D20(v68, v160, &unk_1EC4440B0, &unk_1CA981B10);
    sub_1CA2D9D20(v65, v12, &unk_1EC4440B0, &unk_1CA981B10);
    v70 = *(v30 + 36);
    v71 = *(v69 + v70);
    v72 = *&v12[v70];
    if (v72 >= v71)
    {
      if (v71 < v72)
      {
        sub_1CA27080C(v12, &unk_1EC4440B0, &unk_1CA981B10);
        sub_1CA27080C(v160, &unk_1EC4440B0, &unk_1CA981B10);
LABEL_61:
        v23 = v147 + 1;
        v65 = v144 + v139;
        v67 = v143 - 1;
        v68 = v142 + v139;
        if (v147 + 1 == v140)
        {
          v23 = v140;
          v24 = v145;
          v25 = v138;
          goto LABEL_63;
        }

        goto LABEL_50;
      }

      v73 = v160;
      v158 = sub_1CA429604();
      v159 = v74;
      v156 = sub_1CA429604();
      v157 = v75;
      sub_1CA27BAF0();
      v76 = sub_1CA94D1F8();

      v12 = v152;

      sub_1CA27080C(v12, &unk_1EC4440B0, &unk_1CA981B10);
      sub_1CA27080C(v73, &unk_1EC4440B0, &unk_1CA981B10);
      v38 = v76 == -1;
      v30 = v153;
      if (!v38)
      {
        goto LABEL_61;
      }
    }

    else
    {
      sub_1CA27080C(v12, &unk_1EC4440B0, &unk_1CA981B10);
      sub_1CA27080C(v69, &unk_1EC4440B0, &unk_1CA981B10);
    }

    if (!v154)
    {
      break;
    }

    v77 = v155;
    sub_1CA2D9CD4(v68, v155, &unk_1EC4440B0, &unk_1CA981B10);
    swift_arrayInitWithTakeFrontToBack();
    sub_1CA2D9CD4(v77, v65, &unk_1EC4440B0, &unk_1CA981B10);
    v65 += v66;
    v68 += v66;
    v60 = __CFADD__(v67++, 1);
    if (v60)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
}

void sub_1CA431D80(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = v5++;
      if (v5 < v4)
      {
        v93 = v6;
        v8 = *a3 + 24 * v7;
        v9 = 24 * v7;
        sub_1CA27BAF0();
        v10 = sub_1CA94D1D8();
        v11 = v7;
        v12 = v10;
        v13 = v8 + 32;
        v96 = v11;
        v14 = v11 + 2;
        while (1)
        {
          v15 = v14;
          if (++v5 >= v4)
          {
            break;
          }

          v16 = v13 + 24;
          v17 = (v12 == -1) ^ (sub_1CA94D1D8() != -1);
          v14 = (v15 + 1);
          v13 = v16;
          if ((v17 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v5 = v4;
LABEL_9:
        if (v12 == -1)
        {
          v7 = v96;
          if (v5 < v96)
          {
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
            return;
          }

          if (v96 >= v5)
          {
            v6 = v93;
          }

          else
          {
            if (v4 >= v15)
            {
              v18 = v15;
            }

            else
            {
              v18 = v4;
            }

            v19 = 24 * v18;
            v20 = v5;
            v21 = v96;
            v6 = v93;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_131;
                }

                v23 = (v22 + v9);
                v24 = v22 + v19;
                v25 = *v23;
                v26 = *(v23 + 1);
                v27 = *(v24 - 24);
                v23[2] = *(v24 - 8);
                *v23 = v27;
                *(v24 - 24) = v25;
                *(v24 - 16) = v26;
              }

              ++v21;
              v19 -= 24;
              v9 += 24;
            }

            while (v21 < v20);
          }
        }

        else
        {
          v6 = v93;
          v7 = v96;
        }
      }

      v28 = a3[1];
      if (v5 < v28)
      {
        if (__OFSUB__(v5, v7))
        {
          goto LABEL_123;
        }

        if (v5 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_124;
          }

          if (v7 + a4 >= v28)
          {
            v29 = a3[1];
          }

          else
          {
            v29 = v7 + a4;
          }

          if (v29 < v7)
          {
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          if (v5 != v29)
          {
            v94 = v6;
            v30 = *a3;
            sub_1CA27BAF0();
            v31 = v30 + 24 * v5 - 24;
            v96 = v7;
            v32 = (v7 - v5);
            do
            {
              v33 = v32;
              v34 = v31;
              do
              {
                if (sub_1CA94D1D8() != -1)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_128;
                }

                v35 = *(v34 + 32);
                v37 = *(v34 + 16);
                v36 = *(v34 + 24);
                *(v34 + 24) = *v34;
                *(v34 + 40) = v37;
                *v34 = v36;
                *(v34 + 8) = v35;
                v34 -= 24;
              }

              while (!__CFADD__(v33++, 1));
              ++v5;
              v31 += 24;
              --v32;
            }

            while (v5 != v29);
            v5 = v29;
            v6 = v94;
            v7 = v96;
          }
        }
      }

      if (v5 < v7)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA2E49C0(0, *(v6 + 2) + 1, 1, v6);
        v6 = v82;
      }

      v40 = *(v6 + 2);
      v39 = *(v6 + 3);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_1CA2E49C0(v39 > 1, v40 + 1, 1, v6);
        v6 = v83;
      }

      *(v6 + 2) = v41;
      v42 = v6 + 32;
      v43 = &v6[16 * v40 + 32];
      *v43 = v7;
      *(v43 + 1) = v5;
      v96 = *result;
      if (!*result)
      {
        goto LABEL_132;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[16 * v41 - 16];
          v46 = &v6[16 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = *(v6 + 4);
            v48 = *(v6 + 5);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_60:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = *(v46 + 1);
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = *(v45 + 1);
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = *(v46 + 1);
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_75:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = *(v45 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_89;
          }

LABEL_82:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
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
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          if (!*a3)
          {
            goto LABEL_129;
          }

          v76 = v6;
          v77 = &v42[16 * v44 - 16];
          v78 = *v77;
          v79 = &v42[16 * v44];
          v80 = *(v79 + 1);
          sub_1CA434DBC((*a3 + 24 * *v77), (*a3 + 24 * *v79), *a3 + 24 * v80, v96);
          if (v98)
          {
            goto LABEL_102;
          }

          if (v80 < v78)
          {
            goto LABEL_104;
          }

          v81 = *(v76 + 2);
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v77 = v78;
          *(v77 + 1) = v80;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          sub_1CA627628(v79 + 16, v81 - 1 - v44, &v42[16 * v44]);
          v6 = v76;
          *(v76 + 2) = v81 - 1;
          if (v81 <= 2)
          {
            goto LABEL_89;
          }
        }

        v51 = &v42[16 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = *(v46 + 1);
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = *(v45 + 1);
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_121;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_60;
      }

LABEL_89:
      v4 = a3[1];
      if (v5 >= v4)
      {
        goto LABEL_92;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_92:
  v96 = *result;
  if (!*result)
  {
    goto LABEL_133;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_126:
    v6 = sub_1CA627610();
  }

  v84 = v6 + 16;
  v85 = *(v6 + 2);
  while (v85 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_130;
    }

    v86 = v6;
    v87 = &v6[16 * v85];
    v88 = *v87;
    v89 = &v84[2 * v85];
    v90 = *(v89 + 1);
    sub_1CA434DBC((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v96);
    if (v98)
    {
      break;
    }

    if (v90 < v88)
    {
      goto LABEL_118;
    }

    if (v85 - 2 >= *v84)
    {
      goto LABEL_119;
    }

    *v87 = v88;
    *(v87 + 1) = v90;
    v91 = *v84 - v85;
    if (*v84 < v85)
    {
      goto LABEL_120;
    }

    v85 = *v84 - 1;
    sub_1CA627628(v89 + 16, v91, v89);
    *v84 = v85;
    v6 = v86;
  }

LABEL_102:
}