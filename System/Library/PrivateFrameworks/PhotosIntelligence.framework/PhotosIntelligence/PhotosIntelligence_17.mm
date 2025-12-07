id static PromptBindingContext.defaultNumberOfPersonAndPetNames.getter()
{
  v0 = objc_opt_self();

  return [v0 queryAnnotationPromptBindingNumberOfPersonAndPetNames];
}

id static PromptBindingContext.defaultNumberOfLocationNames.getter()
{
  v0 = objc_opt_self();

  return [v0 queryAnnotationPromptBindingNumberOfLocationNames];
}

unint64_t sub_1C70A6FCC()
{
  result = qword_1EC216E90;
  if (!qword_1EC216E90)
  {
    result = swift_getWitnessTable(byte_1C7567FB8, &type metadata for PromptBindings.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216E90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PromptBindings.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C70A7120()
{
  result = qword_1EC216EA0;
  if (!qword_1EC216EA0)
  {
    result = swift_getWitnessTable(byte_1C7567F90, &type metadata for PromptBindings.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216EA0);
  }

  return result;
}

unint64_t sub_1C70A7178()
{
  result = qword_1EC216EA8;
  if (!qword_1EC216EA8)
  {
    result = swift_getWitnessTable(byte_1C7567F00, &type metadata for PromptBindings.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216EA8);
  }

  return result;
}

unint64_t sub_1C70A71D0()
{
  result = qword_1EC216EB0;
  if (!qword_1EC216EB0)
  {
    result = swift_getWitnessTable(asc_1C7567F28, &type metadata for PromptBindings.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC216EB0);
  }

  return result;
}

void sub_1C70A7224(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1C716D5B0(0, v3, 0);
    v5 = v46;
    v6 = sub_1C70D4544();
    v9 = v6;
    v10 = v7;
    v11 = 0;
    v37 = v4 + 64;
    v33 = v7;
    v34 = v3;
    v32 = v4 + 72;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v4 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v37 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v4 + 36) != v10)
      {
        goto LABEL_24;
      }

      v36 = v11;
      v35 = v8;
      v13 = (*(v4 + 48) + 120 * v9);
      memcpy(__dst, v13, sizeof(__dst));
      memcpy(__src, v13, sizeof(__src));
      v14 = v4;
      v15 = *(*(v4 + 56) + 8 * v9);
      memmove(v43, v13, 0x78uLL);
      memcpy(v44, __src, sizeof(v44));
      v45 = v15;
      swift_bridgeObjectRetain_n();
      sub_1C6FCA6E4(__dst, v39);
      sub_1C6FCA6E4(v43, v39);
      sub_1C70A972C(v44);
      memcpy(v39, v43, 0x78uLL);
      v39[15] = v15;
      sub_1C70A8DC0(v39, v16, v17, v18, v19, &v41);
      v6 = v38;
      v7 = v39;
      v8 = 128;
      if (v2)
      {
        goto LABEL_28;
      }

      memcpy(v38, v39, sizeof(v38));
      v6 = sub_1C70A972C(v38);
      v20 = v41;
      v46 = v5;
      v22 = *(v5 + 16);
      v21 = *(v5 + 24);
      if (v22 >= v21 >> 1)
      {
        v6 = sub_1C716D5B0(v21 > 1, v22 + 1, 1);
        v5 = v46;
      }

      *(v5 + 16) = v22 + 1;
      *(v5 + 8 * v22 + 32) = v20;
      v23 = 1 << *(v14 + 32);
      if (v9 >= v23)
      {
        goto LABEL_25;
      }

      v24 = *(v37 + 8 * v12);
      if ((v24 & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      v4 = v14;
      if (*(v14 + 36) != v10)
      {
        goto LABEL_27;
      }

      v25 = v24 & (-2 << (v9 & 0x3F));
      if (v25)
      {
        v23 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v26 = v34;
      }

      else
      {
        v27 = v12 << 6;
        v28 = v12 + 1;
        v29 = (v32 + 8 * v12);
        v26 = v34;
        while (v28 < (v23 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            v6 = sub_1C6F9ED50(v9, v10, v35 & 1);
            v23 = __clz(__rbit64(v30)) + v27;
            goto LABEL_20;
          }
        }

        v6 = sub_1C6F9ED50(v9, v10, v35 & 1);
      }

LABEL_20:
      v2 = 0;
      v8 = 0;
      v11 = v36 + 1;
      v9 = v23;
      v10 = v33;
      if (v36 + 1 == v26)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    memcpy(v6, v7, v8);
    sub_1C70A972C(v38);

    __break(1u);
  }
}

uint64_t sub_1C70A7540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[43] = a5;
  v6[44] = v5;
  v6[41] = a3;
  v6[42] = a4;
  v6[39] = a1;
  v6[40] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1C70A75D8, 0, 0);
}

void sub_1C70A75D8(uint64_t a1)
{
  v127 = v1;
  v126[15] = *MEMORY[0x1E69E9840];
  v2 = sub_1C754FEEC();
  v3 = sub_1C755117C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C6F5C000, v2, v3, "Start filtering locations using moment location hierarchy", v4, 2u);
    MEMORY[0x1CCA5F8E0](v4, -1, -1);
  }

  v5 = 0;
  sub_1C754F2CC();
  v8 = *(v1 + 352);
  v9 = *(v1 + 328);
  Generator = type metadata accessor for QueryGenerator(0);
  v11 = v8 + *(Generator + 24);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v126[0] = *v11;
  LOWORD(v126[1]) = v12;
  v126[2] = v13;
  v14 = v126[0];

  isUniquelyReferenced_nonNull_native = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v9, v126);

  if (qword_1EDD0E038 != -1)
  {
LABEL_82:
    OUTLINED_FUNCTION_3_28(&qword_1EDD0E038);
  }

  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  v17 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E040);
  *(swift_task_alloc() + 16) = v17;
  sub_1C75504FC();
  v18 = OUTLINED_FUNCTION_6_29();
  v21 = sub_1C706CC1C(v18, v19, v20);

  v22 = *(v21 + 2);
  if (!v22)
  {

    v91 = 0;
    v92 = MEMORY[0x1E69E7CC8];
    goto LABEL_71;
  }

  v114 = 0;
  v23 = 0;
  v103 = (v1 + 272);
  v101 = (v1 + 288);
  v108 = v21 + 32;
  v121 = MEMORY[0x1E69E7CC8];
  v102 = xmmword_1C755BAB0;
  v24 = v22;
  v104 = v1;
  v100 = Generator;
  v124 = isUniquelyReferenced_nonNull_native;
  v107 = v21;
  v106 = v22;
  while (1)
  {
    if (v23 >= v24)
    {
      goto LABEL_80;
    }

    v119 = v23;
    memcpy((v1 + 16), &v108[120 * v23], 0x78uLL);
    v25 = *(v1 + 112);
    if (!v25)
    {
      goto LABEL_66;
    }

    v26 = *(v1 + 80);
    if (v26 && *(v26 + 16))
    {
      sub_1C75504FC();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v27 = swift_allocObject();
      *(v27 + 16) = v102;
      *(v27 + 32) = sub_1C75506FC();
      *(v27 + 40) = v28;
    }

    sub_1C6FCA6E4(v1 + 16, v1 + 136);
    v29 = qword_1EDD09980;
    sub_1C75504FC();
    if (v29 != -1)
    {
      swift_once();
    }

    v30 = unk_1EDD09990;
    *(v1 + 272) = qword_1EDD09988;
    *(v1 + 280) = v30;
    *(swift_task_alloc() + 16) = v103;
    OUTLINED_FUNCTION_6_29();
    v31 = sub_1C70735F4();

    if (!v31)
    {
      break;
    }

    sub_1C6FDD548(v1 + 16);
LABEL_65:
    isUniquelyReferenced_nonNull_native = v124;
LABEL_66:
    v23 = v119 + 1;
    if (v119 + 1 == v106)
    {

      v92 = v121;
      v91 = v114;
LABEL_71:
      *(v1 + 360) = v91;
      *(v1 + 368) = v92;
      sub_1C754F2DC();
      if (v5)
      {
        v93 = *(v1 + 344);

        sub_1C754F2FC();
        OUTLINED_FUNCTION_3();
        (*(v94 + 8))(v93);
        sub_1C6F6E5B4(v91, 0);
        OUTLINED_FUNCTION_44();

        __asm { BRAA            X1, X16 }
      }

      v95 = (*(v1 + 352) + *(Generator + 32));
      v96 = v95[4];
      __swift_project_boxed_opaque_existential_1(v95, v95[3]);
      *(v1 + 304) = v92;
      v123 = *(v96 + 16) + **(v96 + 16);
      v124 = v96 + 16;
      v97 = swift_task_alloc();
      *(v1 + 376) = v97;
      *v97 = v1;
      v97[1] = sub_1C70A8238;
      OUTLINED_FUNCTION_44();

      __asm { BRAA            X6, X16 }
    }

    v24 = *(v107 + 2);
  }

  if (qword_1EDD09968 != -1)
  {
    swift_once();
  }

  v32 = *algn_1EDD09978;
  *(v1 + 288) = qword_1EDD09970;
  *(v1 + 296) = v32;
  *(swift_task_alloc() + 16) = v101;
  OUTLINED_FUNCTION_6_29();
  isUniquelyReferenced_nonNull_native = sub_1C70735F4();

  if (isUniquelyReferenced_nonNull_native)
  {

    sub_1C6FDD548(v1 + 16);
    goto LABEL_65;
  }

  v33 = *(v1 + 24);
  v115 = *(v1 + 16);
  memcpy(v126, (v1 + 16), 0x78uLL);
  sub_1C75504FC();
  QueryToken.groundedLocations()();
  v35 = v34;
  sub_1C6FDD548(v1 + 16);
  v110 = *(v35 + 16);
  if (!v110)
  {

    goto LABEL_65;
  }

  v105 = v33;
  Generator = 0;
  v111 = v35 + 32;
  v120 = v25;
  v109 = v35;
LABEL_26:
  if (Generator >= *(v35 + 16))
  {
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v36 = (v111 + (Generator << 6));
  v38 = *v36;
  v37 = v36[1];
  v40 = v36[2];
  v39 = v36[3];
  v41 = v36[7];
  v42 = *(v25 + 16);
  sub_1C75504FC();
  sub_1C75504FC();
  v122 = v39;
  v123 = v37;
  v118 = v38;
  v117 = v40;
  v116 = v41;
  if (v42 && (v43 = sub_1C6F78124(v38, v37), (v44 & 1) != 0))
  {
    v45 = *(*(v25 + 56) + 8 * v43);
    sub_1C75504FC();
  }

  else
  {
    v45 = MEMORY[0x1E69E7CD0];
  }

  v46 = *(v1 + 328);
  v47 = *(v45 + 32);
  v48 = v47 & 0x3F;
  v49 = ((1 << v47) + 63) >> 6;
  sub_1C75504FC();
  isStackAllocationSafe = sub_1C75504FC();
  if (v48 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v46 = *(v1 + 328), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_1C71FAC38(0, v49, &v100 - ((8 * v49 + 15) & 0x3FFFFFFFFFFFFFF0));
    v51 = OUTLINED_FUNCTION_8_20();
    sub_1C70A9104(v51, v52, v53, v54);
    OUTLINED_FUNCTION_12_22();
    if (v46)
    {

      swift_willThrow();

      goto LABEL_78;
    }
  }

  else
  {
    swift_slowAlloc();
    sub_1C75504FC();
    sub_1C75504FC();
    v87 = OUTLINED_FUNCTION_8_20();
    sub_1C70A9074(v87, v88, v89, v90);
    OUTLINED_FUNCTION_12_22();
    if (v46)
    {

      OUTLINED_FUNCTION_37();
      goto LABEL_78;
    }

    OUTLINED_FUNCTION_37();
  }

  isUniquelyReferenced_nonNull_native = v124;
  v25 = v120;
  if (!*(v48 + 16))
  {

    goto LABEL_59;
  }

  v112 = *(v48 + 16);
  v113 = 0;
  v125 = MEMORY[0x1E69E7CD0];
  v55 = -1 << *(v48 + 32);
  if (-v55 < 64)
  {
    v56 = ~(-1 << -v55);
  }

  else
  {
    v56 = -1;
  }

  v57 = v56 & *(v48 + 56);
  v58 = (63 - v55) >> 6;

  v1 = 0;
  while (v57)
  {
    v59 = v57;
LABEL_45:
    v57 = (v59 - 1) & v59;
    if (*(isUniquelyReferenced_nonNull_native + 16))
    {
      v61 = (*(v48 + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v59)))));
      v62 = *v61;
      v5 = v61[1];
      sub_1C75504FC();
      v63 = sub_1C6F78124(v62, v5);
      if (v64)
      {
        v65 = (*(isUniquelyReferenced_nonNull_native + 56) + 16 * v63);
        v66 = *v65;
        v67 = v65[1];
        sub_1C75504FC();
        v68 = v67;
        isUniquelyReferenced_nonNull_native = v124;
        sub_1C70F082C(v126, v66, v68);
      }
    }
  }

  while (1)
  {
    v60 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v60 >= v58)
    {

      v69 = v125;
      sub_1C6F6E5B4(v114, 0);
      v70 = v121;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v126[0] = v70;
      v71 = v105;
      v72 = sub_1C6F78124(v115, v105);
      if (__OFADD__(v70[2], (v73 & 1) == 0))
      {
        goto LABEL_81;
      }

      v74 = v72;
      v75 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216EB8, &qword_1C7568018);
      v76 = sub_1C7551A2C();
      v77 = v126[0];
      v121 = v126[0];
      if ((v76 & 1) == 0)
      {
        v1 = v104;
        isUniquelyReferenced_nonNull_native = v124;
        if (v75)
        {
          goto LABEL_58;
        }

LABEL_57:
        sub_1C6FCABE4();
        sub_1C75504FC();
        v77 = v121;
        goto LABEL_58;
      }

      v78 = sub_1C6F78124(v115, v71);
      v1 = v104;
      isUniquelyReferenced_nonNull_native = v124;
      if ((v75 & 1) != (v79 & 1))
      {
        goto LABEL_77;
      }

      v74 = v78;
      v77 = v121;
      if ((v75 & 1) == 0)
      {
        goto LABEL_57;
      }

LABEL_58:
      v80 = v77[7] + 8 * v74;
      sub_1C6FB0AFC();
      v81 = *(*v80 + 16);
      sub_1C6FB1348();
      v82 = *v80;
      *(v82 + 16) = v81 + 1;
      v83 = (v82 + 56 * v81);
      v84 = v123;
      v83[4] = v118;
      v83[5] = v84;
      v85 = v122;
      v83[6] = v117;
      v83[7] = v85;
      v86 = v112;
      v83[8] = v116;
      v83[9] = v86;
      v83[10] = v69;
      v114 = sub_1C6F86C50;
      v25 = v120;
LABEL_59:
      v5 = 0;
      ++Generator;
      v35 = v109;
      if (Generator == v110)
      {

        v5 = 0;
        Generator = v100;
        goto LABEL_66;
      }

      goto LABEL_26;
    }

    v59 = *(v48 + 56 + 8 * v60);
    ++v1;
    if (v59)
    {
      v1 = v60;
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_77:
  sub_1C7551E4C();
LABEL_78:
  OUTLINED_FUNCTION_44();
}

uint64_t sub_1C70A8238()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1C70A8480;
  }

  else
  {

    v2 = sub_1C70A8388;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C70A8388(uint64_t a1)
{
  v2 = v1[48];
  v4 = v1[32];
  v3 = v1[33];
  sub_1C754F2EC();
  v5 = v1[45];
  if (v2)
  {

    sub_1C6F6E5B4(v5, 0);
  }

  else
  {
    v7 = v1[39];
    sub_1C6F6E5B4(v1[45], 0);
    *v7 = v4;
    v7[1] = v3;
  }

  OUTLINED_FUNCTION_5_24();

  return v6();
}

uint64_t sub_1C70A8480()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 344);

  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v2);
  sub_1C6F6E5B4(v1, 0);
  OUTLINED_FUNCTION_5_24();

  return v4();
}

uint64_t sub_1C70A854C(uint64_t a1, void *a2)
{
  v4 = sub_1C754F38C();
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[3];
  v62 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v61 = v6;
  sub_1C754F1CC();
  if (qword_1EDD0E038 != -1)
  {
LABEL_50:
    OUTLINED_FUNCTION_3_28(&qword_1EDD0E038);
  }

  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  v9 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E040);
  MEMORY[0x1EEE9AC00](v9);
  *(&v58 - 2) = v10;
  sub_1C75504FC();
  v11 = a1;
  a1 = 0;
  v12 = sub_1C706CC1C(sub_1C70A97B0, (&v58 - 4), v11);
  v13 = *(v12 + 2);
  if (v13)
  {
    Generator = type metadata accessor for QueryGenerator(0);
    if (*(v75 + *(Generator + 20)))
    {
      v14 = 0x80000001C7596E70;
    }

    else
    {
      v14 = 0xE800000000000000;
    }

    v15 = *(v75 + *(Generator + 20)) == 1 && 0x80000001C7596E70 == v14;
    v58 = 0;
    if (v15)
    {

      v73 = 0;
      v72 = 10000;
    }

    else
    {
      v16 = sub_1C7551DBC();

      v17 = 10000;
      if ((v16 & 1) == 0)
      {
        v17 = 0;
      }

      v72 = v17;
      v73 = v16 ^ 1;
    }

    v19 = 0;
    v20 = 0;
    v71 = v12 + 32;
    v18 = MEMORY[0x1E69E7CC8];
    v65 = v13;
    v66 = v12;
    while (1)
    {
      if (v20 >= *(v12 + 2))
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      memcpy(__dst, &v71[120 * v20], sizeof(__dst));
      a1 = __dst[12];
      v79 = __dst[12];
      if (!__dst[12] || !*(__dst[12] + 16))
      {
        goto LABEL_43;
      }

      v67 = v20;
      v68 = v18;
      v69 = v19;
      v21 = __dst[12] + 64;
      v22 = 1 << *(__dst[12] + 32);
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v24 = v23 & *(__dst[12] + 64);
      sub_1C6FCA6E4(__dst, v77);
      sub_1C70A96BC(&v79, v77);
      v25 = 0;
      v26 = (v22 + 63) >> 6;
      v70 = MEMORY[0x1E69E7CC8];
      v76 = a1;
      while (v24)
      {
LABEL_28:
        v28 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v29 = v28 | (v25 << 6);
        if (*(*(*(a1 + 56) + 8 * v29) + 16))
        {
          v30 = (*(a1 + 48) + 16 * v29);
          v32 = *v30;
          v31 = v30[1];
          sub_1C75504FC();
          v33 = sub_1C75504FC();
          v34 = sub_1C71CD85C(v33);
          sub_1C70A8C84(v34, 50000);

          sub_1C706D154();
          v36 = MomentGroundingProcessor.assetUUIDsWithoutLocationDataFromMoments(of:maximumNumberOfAssetsToFetch:)(v35, v72, v73 & 1);

          if (*(v36 + 16))
          {
            sub_1C6F6E5B4(v69, 0);
            v37 = v70;
            LODWORD(v69) = swift_isUniquelyReferenced_nonNull_native();
            v77[0] = v37;
            v60 = v32;
            sub_1C6F78124(v32, v31);
            if (__OFADD__(*(v37 + 16), (v38 & 1) == 0))
            {
              __break(1u);
LABEL_52:
              result = sub_1C7551E4C();
              __break(1u);
              return result;
            }

            v59 = v38;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280, &qword_1C756C8F0);
            v39 = sub_1C7551A2C();
            v70 = v77[0];
            if (v39)
            {
              sub_1C6F78124(v60, v31);
              if ((v59 & 1) != (v40 & 1))
              {
                goto LABEL_52;
              }

              if ((v59 & 1) == 0)
              {
LABEL_35:
                sub_1C6FCABE4();
                goto LABEL_38;
              }
            }

            else if ((v59 & 1) == 0)
            {
              goto LABEL_35;
            }

LABEL_38:
            a1 = v76;
            sub_1C739796C(v36);
            v69 = sub_1C6F9EEA8;
          }

          else
          {

            a1 = v76;
          }
        }
      }

      while (1)
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v27 >= v26)
        {
          break;
        }

        v24 = *(v21 + 8 * v27);
        ++v25;
        if (v24)
        {
          v25 = v27;
          goto LABEL_28;
        }
      }

      a1 = v70;
      if (*(v70 + 16))
      {
        v41 = v68;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77[0] = v41;
        sub_1C6FC7AB4(a1, __dst, isUniquelyReferenced_nonNull_native);
        sub_1C6FDD548(__dst);
        v18 = v77[0];
      }

      else
      {
        sub_1C6FDD548(__dst);

        v18 = v68;
      }

      v13 = v65;
      v12 = v66;
      v19 = v69;
      v20 = v67;
LABEL_43:
      if (++v20 == v13)
      {

        sub_1C75504FC();
        v43 = sub_1C754FEEC();
        v44 = sub_1C755117C();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = v19;
          v47 = swift_slowAlloc();
          v77[0] = v47;
          *v45 = 136315138;
          sub_1C70A7224(v18);
          v49 = v48;
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
          v51 = MEMORY[0x1CCA5D090](v49, v50);
          v53 = v52;

          v54 = sub_1C6F765A4(v51, v53, v77);

          *(v45 + 4) = v54;
          _os_log_impl(&dword_1C6F5C000, v43, v44, "No location data retrieval results = %s", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v47);
          v55 = v47;
          v19 = v46;
          MEMORY[0x1CCA5F8E0](v55, -1, -1);
          OUTLINED_FUNCTION_37();
        }

        goto LABEL_47;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150B0, &qword_1C755C2B8);
  sub_1C6FDE390();
  v18 = sub_1C75504DC();
  v19 = 0;
LABEL_47:
  __swift_project_boxed_opaque_existential_1(v62, v62[3]);
  v56 = v61;
  sub_1C754F1AC();
  (*(v63 + 8))(v56, v64);
  sub_1C6F6E5B4(v19, 0);
  return v18;
}

void sub_1C70A8DC0(uint64_t result@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v6 = *(result + 120);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v33 = a6;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v7, 0, a2, a3, a4, a5);
    v39 = v42;
    v11 = sub_1C70D4544();
    v12 = 0;
    v13 = v6 + 64;
    v34 = v9;
    v35 = v7;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v6 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v6 + 36) != v9)
      {
        goto LABEL_24;
      }

      v37 = v12;
      v38 = v9;
      v36 = v10;
      v15 = (*(v6 + 48) + 16 * v11);
      v40 = *v15;
      v41 = v15[1];
      swift_bridgeObjectRetain_n();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v16 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v16);

      v21 = v39;
      v23 = *(v39 + 16);
      v22 = *(v39 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1C6F7ED9C(v22 > 1, v23 + 1, 1, v17, v18, v19, v20);
        v21 = v39;
      }

      *(v21 + 16) = v23 + 1;
      v24 = v21 + 16 * v23;
      *(v24 + 32) = v40;
      *(v24 + 40) = v41;
      v25 = 1 << *(v6 + 32);
      if (v11 >= v25)
      {
        goto LABEL_25;
      }

      v13 = v6 + 64;
      v26 = *(v6 + 64 + 8 * v14);
      if ((v26 & (1 << v11)) == 0)
      {
        goto LABEL_26;
      }

      v39 = v21;
      if (*(v6 + 36) != v38)
      {
        goto LABEL_27;
      }

      v27 = v26 & (-2 << (v11 & 0x3F));
      if (v27)
      {
        v25 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v14 << 6;
        v29 = v14 + 1;
        v30 = (v6 + 72 + 8 * v14);
        while (v29 < (v25 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            sub_1C6F9ED50(v11, v38, v36 & 1);
            v25 = __clz(__rbit64(v31)) + v28;
            goto LABEL_19;
          }
        }

        sub_1C6F9ED50(v11, v38, v36 & 1);
      }

LABEL_19:
      v10 = 0;
      v12 = v37 + 1;
      v11 = v25;
      v9 = v34;
      if (v37 + 1 == v35)
      {
        a6 = v33;
        v8 = v39;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    *a6 = v8;
  }
}

void *sub_1C70A9074(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_1C70A9104(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1C70A9104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v56 = 0;
    v27 = 0;
    OUTLINED_FUNCTION_0_39();
    v30 = v29 >> 6;
    v31 = v4 + 56;
LABEL_22:
    while (v28)
    {
      OUTLINED_FUNCTION_1_35();
LABEL_29:
      v53 = v32 | (v27 << 6);
      v34 = (*(v5 + 48) + 16 * v53);
      v36 = *v34;
      v35 = v34[1];
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_9_2();
      v39 = ~v38;
      do
      {
        v40 = v37 & v39;
        if (((*(v31 + (((v37 & v39) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v39)) & 1) == 0)
        {

          v28 = v54;
          goto LABEL_22;
        }

        v41 = (*(a4 + 48) + 16 * v40);
        if (*v41 == v36 && v41[1] == v35)
        {
          break;
        }

        v43 = sub_1C7551DBC();
        v37 = v40 + 1;
      }

      while ((v43 & 1) == 0);

      OUTLINED_FUNCTION_10_24();
      *(a1 + v44) |= v45;
      v26 = __OFADD__(v56++, 1);
      v28 = v54;
      if (v26)
      {
        goto LABEL_44;
      }
    }

    v33 = v27;
    while (1)
    {
      v27 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v27 >= v30)
      {
LABEL_40:

        sub_1C71FFA70(a1, a2, v56, v5, v46, v47, v48, v49, v50, a2, v52, v53, v54, a1, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, a4, v68, v69, v70, v71);
        return;
      }

      ++v33;
      if (*(v5 + 56 + 8 * v27))
      {
        OUTLINED_FUNCTION_2_25();
        goto LABEL_29;
      }
    }
  }

  else
  {
    v56 = 0;
    v6 = 0;
    v50 = a4 + 56;
    OUTLINED_FUNCTION_0_39();
    v9 = v8 >> 6;
    v10 = v5 + 56;
    v53 = v8 >> 6;
LABEL_3:
    while (v7)
    {
      OUTLINED_FUNCTION_1_35();
LABEL_10:
      v13 = (*(v4 + 48) + 16 * (v11 | (v6 << 6)));
      v15 = *v13;
      v14 = v13[1];
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      sub_1C7551FAC();
      v16 = v5;
      OUTLINED_FUNCTION_9_2();
      v19 = ~v18;
      do
      {
        v20 = v17 & v19;
        v21 = (v17 & v19) >> 6;
        v22 = 1 << (v17 & v19);
        if ((v22 & *(v10 + 8 * v21)) == 0)
        {

          v5 = v16;
          v4 = a4;
          v9 = v53;
          v7 = v54;
          goto LABEL_3;
        }

        v23 = (*(v16 + 48) + 16 * v20);
        if (*v23 == v15 && v23[1] == v14)
        {
          break;
        }

        v25 = sub_1C7551DBC();
        v17 = v20 + 1;
      }

      while ((v25 & 1) == 0);

      v7 = v54;
      *(a1 + 8 * v21) |= v22;
      v26 = __OFADD__(v56++, 1);
      v5 = v16;
      v4 = a4;
      v9 = v53;
      if (v26)
      {
        goto LABEL_43;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v9)
      {
        goto LABEL_40;
      }

      ++v12;
      if (*(v50 + 8 * v6))
      {
        OUTLINED_FUNCTION_2_25();
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_1C70A942C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4[2] >= *(a3 + 16))
  {
    v39 = 0;
    v20 = 0;
    v21 = 1 << *(a3 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(a3 + 56);
    v24 = (v21 + 63) >> 6;
LABEL_21:
    while (v23)
    {
      v25 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_28:
      v28 = *(*(a3 + 48) + (v25 | (v20 << 6)));
      sub_1C7551F3C();
      MEMORY[0x1CCA5E460](v28);
      sub_1C7551FAC();
      OUTLINED_FUNCTION_9_2();
      v31 = ~v30;
      while (1)
      {
        v32 = v29 & v31;
        if (((*(a4 + (((v29 & v31) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v29 & v31)) & 1) == 0)
        {
          break;
        }

        v29 = v32 + 1;
        if (*(a4[6] + v32) == v28)
        {
          OUTLINED_FUNCTION_10_24();
          *(v34 + v33) |= v35;
          v19 = __OFADD__(v39++, 1);
          if (!v19)
          {
            goto LABEL_21;
          }

          __break(1u);
          goto LABEL_34;
        }
      }
    }

    v26 = v20;
    while (1)
    {
      v20 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v20 >= v24)
      {
LABEL_34:

        sub_1C72000B4();
        return;
      }

      v27 = *(a3 + 56 + 8 * v20);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_28;
      }
    }
  }

  else
  {
    v38 = 0;
    v6 = 0;
    OUTLINED_FUNCTION_0_39();
    v9 = v8 >> 6;
LABEL_3:
    while (v7)
    {
      OUTLINED_FUNCTION_1_35();
LABEL_10:
      v12 = *(a4[6] + (v10 | (v6 << 6)));
      sub_1C7551F3C();
      MEMORY[0x1CCA5E460](v12);
      sub_1C7551FAC();
      OUTLINED_FUNCTION_9_2();
      v15 = ~v14;
      do
      {
        v16 = v13 & v15;
        v17 = (v13 & v15) >> 6;
        v18 = 1 << (v13 & v15);
        if ((v18 & *(a3 + 56 + 8 * v17)) == 0)
        {
          v7 = v37;
          goto LABEL_3;
        }

        v13 = v16 + 1;
      }

      while (*(*(a3 + 48) + v16) != v12);
      *(a1 + 8 * v17) |= v18;
      v19 = __OFADD__(v38++, 1);
      v7 = v37;
      if (v19)
      {
        goto LABEL_37;
      }
    }

    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v6 >= v9)
      {
        goto LABEL_34;
      }

      ++v11;
      if (a4[v6 + 7])
      {
        OUTLINED_FUNCTION_2_25();
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_1C70A96BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216EC0, &qword_1C7568020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C70A972C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216EC8, &unk_1C7568028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C70A97CC()
{
  result = sub_1C75504DC();
  qword_1EC216ED0 = result;
  return result;
}

uint64_t PersonalEventQueryExpansionDataSource.Error.hashValue.getter()
{
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

PhotosIntelligence::PersonalEventQueryExpansionDataSource __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PersonalEventQueryExpansionDataSource.init()()
{
  v4 = v2;
  v5 = sub_1C70A98F0(v0, v1);
  if (!v3)
  {
    *v4 = 0x6E6F6973726576;
    v4[1] = 0xE700000000000000;
    v4[2] = v5;
  }

  result.dataSource._rawValue = v7;
  result.personalEventQueryExpansionVersionKey._object = v6;
  result.personalEventQueryExpansionVersionKey._countAndFlagsBits = v5;
  return result;
}

unint64_t sub_1C70A98F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C754DD2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = [objc_allocWithZone(type metadata accessor for StoryRemoteConfiguration()) init];
  v11 = v10;
  sub_1C6F85DE8(0xD000000000000032, 0x80000001C759BD90);
  if (v2)
  {
  }

  else
  {
    v11 = sub_1C70A9E44();
    (*(v4 + 16))(v6, v9, v3);
    v12 = sub_1C7195EE4(v6);
    if (v12 && (v13 = v12, v16 = 0, sub_1C755049C(), v13, (v11 = v16) != 0))
    {

      (*(v4 + 8))(v9, v3);
    }

    else
    {
      sub_1C70A9E88();
      swift_allocError();
      swift_willThrow();

      (*(v4 + 8))(v9, v3);
    }
  }

  return v11;
}

Swift::Int __swiftcall PersonalEventQueryExpansionDataSource.currentVersion()()
{
  v1 = v0;
  v2 = v0[2];
  if (*(v2 + 16) && (v3 = sub_1C6F78124(*v1, v1[1]), (v4 & 1) != 0) && (v5 = sub_1C6F774EC(*(v2 + 56) + 32 * v3, v8), OUTLINED_FUNCTION_0_40(v5)))
  {
    return v7;
  }

  else
  {
    return -1;
  }
}

uint64_t PersonalEventQueryExpansionDataSource.expansionQueries(for:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (*(v3 + 16) && (v4 = sub_1C6F78124(a1, a2), (v5 & 1) != 0) && (sub_1C6F774EC(*(v3 + 56) + 32 * v4, v9), v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70), OUTLINED_FUNCTION_0_40(v6)))
  {
    return v8;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t PersonalEventQueryExpansionDataSource.localizedExpansionQueries(for:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EC213D68 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC216ED0;
  v3 = sub_1C75506FC();
  sub_1C6FE0F8C(v3, v4, v2);
  v6 = v5;

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C754F28C();
  v7 = sub_1C754F27C();

  return v7;
}

unint64_t sub_1C70A9CB4()
{
  result = qword_1EC216ED8;
  if (!qword_1EC216ED8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonalEventQueryExpansionDataSource.Error, &type metadata for PersonalEventQueryExpansionDataSource.Error, v0, v1);
    atomic_store(result, &qword_1EC216ED8);
  }

  return result;
}

uint64_t sub_1C70A9D08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C70A9D48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalEventQueryExpansionDataSource.Error(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C70A9E44()
{
  result = qword_1EDD0CEC0;
  if (!qword_1EDD0CEC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD0CEC0);
  }

  return result;
}

unint64_t sub_1C70A9E88()
{
  result = qword_1EC216EE0;
  if (!qword_1EC216EE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonalEventQueryExpansionDataSource.Error, &type metadata for PersonalEventQueryExpansionDataSource.Error, v0, v1);
    atomic_store(result, &qword_1EC216EE0);
  }

  return result;
}

id sub_1C70A9EDC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  result = sub_1C6FB6304();
  v9 = result;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v9 == v10)
    {

      return v11;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA5DDD0](v10, a1);
    }

    else
    {
      if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      result = *(a1 + 8 * v10 + 32);
    }

    v12 = result;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v24 = result;
    sub_1C70AAAFC(&v24, a2, a3, a4, a5, __src);
    if (v6)
    {

      return v11;
    }

    if (__src[0])
    {
      memcpy(__dst, __src, sizeof(__dst));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB3198(0, *(v11 + 16) + 1, 1, v11);
        v11 = v15;
      }

      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1C6FB3198(v13 > 1, v14 + 1, 1, v11);
        v11 = v16;
      }

      memcpy(v21, __dst, sizeof(v21));
      *(v11 + 16) = v14 + 1;
      result = memcpy((v11 + 80 * v14 + 32), v21, 0x50uLL);
    }

    else
    {
      memcpy(__dst, __src, sizeof(__dst));
      result = sub_1C70AB474(__dst);
    }

    ++v10;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1C70AA0C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C7551B2C();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C70AA114(char a1)
{
  result = 1684632949;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461727563;
      break;
    case 2:
      result = 0x6974656874736561;
      break;
    case 3:
      result = 0x63536E6F73726570;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C70AA244@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C70AA0C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1C70AA274@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C70AA114(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C70AA2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C70AA10C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70AA2F0(uint64_t a1)
{
  v2 = sub_1C70AB22C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70AA32C(uint64_t a1)
{
  v2 = sub_1C70AB22C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FreeformStoryKeyAssetElector.StochatizedAsset.uuid.getter()
{
  v1 = *(v0 + 8);
  sub_1C75504FC();
  return v1;
}

uint64_t FreeformStoryKeyAssetElector.StochatizedAsset.init(asset:stochatizedCurationScore:stochatizedAestheticScore:stochatizedPersonScore:iconicScoreBucket:hasOnlyAndAllQueryCharacters:landscapeCropScore:portraitCropScore:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>)
{
  v17 = a1;
  result = sub_1C6FCA214(v17);
  if (v19)
  {
    *a4 = v17;
    *(a4 + 8) = result;
    *(a4 + 16) = v19;
    *(a4 + 24) = a5;
    *(a4 + 32) = a6;
    *(a4 + 40) = a7;
    *(a4 + 48) = a2;
    *(a4 + 56) = a3 & 1;
    *(a4 + 64) = a8;
    *(a4 + 72) = a9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id FreeformStoryKeyAssetElector.StochatizedAsset.init(forTestingWith:stochatizedCurationScore:stochatizedAestheticScore:stochatizedPersonScore:iconicScoreBucket:hasOnlyAndAllQueryCharacters:landscapeCropScore:portraitCropScore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>)
{
  result = [objc_allocWithZone(MEMORY[0x1E6978630]) init];
  *a5 = result;
  *(a5 + 8) = a1;
  *(a5 + 16) = a2;
  *(a5 + 24) = a6;
  *(a5 + 32) = a7;
  *(a5 + 40) = a8;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  *(a5 + 64) = a9;
  *(a5 + 72) = a10;
  return result;
}

uint64_t FreeformStoryKeyAssetElector.StochatizedAsset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216EE8, &qword_1C7568150);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 48);
  v9[1] = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C70AB22C();
  sub_1C755200C();
  v16[1] = 0;
  v7 = v11;
  sub_1C7551CCC();
  if (!v7)
  {
    v16[0] = 1;
    OUTLINED_FUNCTION_0_41(v16);
    v15 = 2;
    OUTLINED_FUNCTION_0_41(&v15);
    v14 = 3;
    OUTLINED_FUNCTION_0_41(&v14);
    v13[2] = 4;
    sub_1C7551D0C();
    v13[1] = 5;
    sub_1C7551CDC();
    v13[0] = 6;
    OUTLINED_FUNCTION_0_41(v13);
    v12 = 7;
    OUTLINED_FUNCTION_0_41(&v12);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FreeformStoryKeyAssetElector.StochatizedAsset.description.getter()
{
  v1 = *(v0 + 56);
  sub_1C75504FC();
  sub_1C755180C();
  OUTLINED_FUNCTION_16_6();
  v5 = sub_1C7033D84(v2, v3, v4);
  v6 = MEMORY[0x1CCA5CC40](v5);
  v8 = v7;

  MEMORY[0x1CCA5CD70](v6, v8);

  OUTLINED_FUNCTION_2_26();
  OUTLINED_FUNCTION_16_6();
  sub_1C7550F5C();
  OUTLINED_FUNCTION_2_26();
  OUTLINED_FUNCTION_16_6();
  sub_1C7550F5C();
  OUTLINED_FUNCTION_2_26();
  OUTLINED_FUNCTION_16_6();
  sub_1C7550F5C();
  OUTLINED_FUNCTION_2_26();
  v9 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v9);

  MEMORY[0x1CCA5CD70](0x6E41796C6E6F202CLL, 0xED00003D6C6C4164);
  if (v1)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v1)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v10, v11);

  MEMORY[0x1CCA5CD70](0x3D73636C202CLL, 0xE600000000000000);
  OUTLINED_FUNCTION_16_6();
  sub_1C7550F5C();
  OUTLINED_FUNCTION_2_26();
  OUTLINED_FUNCTION_16_6();
  sub_1C7550F5C();
  MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
  return 0;
}

id FreeformStoryKeyAssetElector.stochatizedAssets(from:in:randomizer:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *v3;
  v8 = *(*(a2 + 32) + 16);

  return sub_1C70A9EDC(a1, v3, a3, a2, v8, v7);
}

void *sub_1C70AAA48(void *result, double a2, double a3)
{
  if (a3 < 0.0)
  {
    __break(1u);
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_0(result, result[3]);
    sub_1C70AB55C();
    sub_1C70AB5B0();
    return sub_1C755046C();
  }

  return result;
}

uint64_t sub_1C70AAAFC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, id a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  [*a1 curationScore];
  v12 = a2 + OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_configuration;
  sub_1C70AAA48(a3, v13, *(a2 + OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_configuration + 8));
  v15 = v14;
  [v11 overallAestheticScore];
  sub_1C70AAA48(a3, v16, *(v12 + 24));
  v18 = v17;
  v19 = sub_1C70AAD04(v11, *(a4 + 32));
  v21 = v20;
  sub_1C70AAA48(a3, v22, *(v12 + 40));
  v24 = v23;
  v25 = [v11 curationModel];
  v26 = [v25 iconicScoreModel];

  [v11 clsIconicScore];
  v27 = [v26 bucketForIconicScore_];

  v28 = [v11 clsPersonAndPetLocalIdentifiers];
  v29 = sub_1C7550B5C();

  v30 = *(v29 + 16);

  v31 = v30 != 0;
  [v11 cropScoreForTargetAspectRatio:v31 forFaces:1.33];
  v33 = v32;
  [v11 cropScoreForTargetAspectRatio:v31 forFaces:0.75];
  v35 = v34;
  v36 = v11;
  result = sub_1C6FCA214(v36);
  if (v38)
  {
    v40 = v19 == a5 && v21 == 0;
    *a6 = v36;
    *(a6 + 8) = result;
    *(a6 + 16) = v38;
    *(a6 + 24) = v15;
    *(a6 + 32) = v18;
    *(a6 + 40) = v24;
    *(a6 + 48) = v27;
    *(a6 + 56) = v40;
    *(a6 + 64) = v33;
    *(a6 + 72) = v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C70AAD04(void *a1, uint64_t a2)
{
  v3 = [a1 clsFaceInformationSummary];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_1C70AB4DC(v3);
  if (!v5)
  {
    v43 = 0;
LABEL_50:

    return v43;
  }

  v6 = v5;
  v46 = v4;
  v7 = v5 + 64;
  v8 = 1 << *(v5 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  v49 = a2 + 56;
  v50 = a2;
  result = sub_1C75504FC();
  v13 = 0;
  v47 = 0;
  v48 = 0;
  v14 = 0.0;
LABEL_7:
  while (1)
  {
    v15 = v13;
    if (!v10)
    {
      break;
    }

LABEL_11:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = v16 | (v13 << 6);
    v18 = (*(v6 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(*(v6 + 56) + 8 * v17);
    sub_1C6F65BE8(0, &qword_1EDD100F0, 0x1E6978980);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1C75504FC();
    v23 = v21;
    v24 = sub_1C74B7450(v19, v20, ObjCClassFromMetadata);
    if (v25)
    {
      v26 = v25;
      if (*(v50 + 16))
      {
        v27 = v24;
        sub_1C7551F3C();
        v44 = v23;
        sub_1C75505AC();
        v28 = sub_1C7551FAC();
        v45 = ~(-1 << *(v50 + 32));
        while (1)
        {
          v29 = v28 & v45;
          if (((*(v49 + (((v28 & v45) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v45)) & 1) == 0)
          {
            break;
          }

          v30 = (*(v50 + 48) + 16 * v29);
          if (*v30 != v27 || v26 != v30[1])
          {
            v32 = sub_1C7551DBC();
            v28 = v29 + 1;
            if ((v32 & 1) == 0)
            {
              continue;
            }
          }

          if ([v44 faceIsGood])
          {
            result = [v44 faceSizeIsGood];
            if (result)
            {
              v33 = __OFADD__(v47++, 1);
              if (v33)
              {
                goto LABEL_54;
              }
            }
          }

          if ([v44 faceIsGood])
          {

            v34 = 1.0;
          }

          else if ([v44 faceIsOk])
          {

            v34 = 0.5;
          }

          else
          {
            [v44 faceSize];
            v36 = v35;

            v34 = 0.0;
            if (v36 > 0.0)
            {
              v34 = 0.1;
            }
          }

          v14 = v14 + v34;
          goto LABEL_7;
        }
      }

      else
      {
        v37 = v23;
      }

      v33 = __OFADD__(v48++, 1);
      if (v33)
      {
        goto LABEL_53;
      }

      if ([v23 isHiddenPerson])
      {

        v14 = v14 + -1000.0;
      }

      else
      {
        v38 = [v23 isKnownPerson];
        v39 = [v23 faceIsGood];
        if (v38)
        {
          if (v39)
          {

            v40 = 0.25;
          }

          else
          {
            v41 = [v23 faceIsOk];

            if (v41)
            {
              v40 = 0.375;
            }

            else
            {
              v40 = 0.5;
            }
          }
        }

        else if (v39)
        {

          v40 = 0.5;
        }

        else
        {
          v42 = [v23 faceIsOk];

          if (v42)
          {
            v40 = 0.625;
          }

          else
          {
            v40 = 0.75;
          }
        }

        v14 = v14 - v40;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      v4 = v46;
      v43 = v47;
      goto LABEL_50;
    }

    v10 = *(v7 + 8 * v13);
    ++v15;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

uint64_t static FreeformStoryKeyAssetElector.compare(_:to:hasQueryCharacters:prioritizeIconic:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = *(a1 + 24);
  v10 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v16 = *(a2 + 24);
  v15 = *(a2 + 32);
  v17 = *(a2 + 40);
  if (a4)
  {
    v18 = *(a1 + 48);
    v19 = *(a2 + 48);
    if (v18 != v19)
    {
      return v19 < v18;
    }
  }

  if ((a3 & 1) != 0 && v12 != v17)
  {
    return v17 < v12;
  }

  if (v11 != v16)
  {
    return v16 < v11;
  }

  if (v10 != v15)
  {
    return v15 < v10;
  }

  if (v12 != v17)
  {
    return v17 < v12;
  }

  if (v13 == v8 && v14 == v9)
  {
    return 0;
  }

  else
  {
    return sub_1C7551DBC();
  }
}

unint64_t sub_1C70AB22C()
{
  result = qword_1EC216EF0;
  if (!qword_1EC216EF0)
  {
    result = swift_getWitnessTable(byte_1C756830C, &_s16StochatizedAssetV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216EF0);
  }

  return result;
}

_BYTE *_s16StochatizedAssetV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C70AB370()
{
  result = qword_1EC216EF8;
  if (!qword_1EC216EF8)
  {
    result = swift_getWitnessTable(aE_29, &_s16StochatizedAssetV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216EF8);
  }

  return result;
}

unint64_t sub_1C70AB3C8()
{
  result = qword_1EC216F00;
  if (!qword_1EC216F00)
  {
    result = swift_getWitnessTable(byte_1C756821C, &_s16StochatizedAssetV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216F00);
  }

  return result;
}

unint64_t sub_1C70AB420()
{
  result = qword_1EC216F08;
  if (!qword_1EC216F08)
  {
    result = swift_getWitnessTable(byte_1C7568244, &_s16StochatizedAssetV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216F08);
  }

  return result;
}

uint64_t sub_1C70AB474(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F10, &qword_1C7568360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C70AB4DC(void *a1)
{
  v1 = [a1 faceInformationByPersonLocalIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C6F65BE8(0, &unk_1EDD069A0, off_1E829F390);
  v3 = sub_1C75504AC();

  return v3;
}

unint64_t sub_1C70AB55C()
{
  result = qword_1EDD06C98;
  if (!qword_1EDD06C98)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E63B8], MEMORY[0x1E69E63B0], v0, v1);
    atomic_store(result, &qword_1EDD06C98);
  }

  return result;
}

unint64_t sub_1C70AB5B0()
{
  result = qword_1EDD06838;
  if (!qword_1EDD06838)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E7718], MEMORY[0x1E69E76D8], v0, v1);
    atomic_store(result, &qword_1EDD06838);
  }

  return result;
}

uint64_t StoryGenerationSummary.AssetStage.description.getter()
{
  v1 = *(v0 + 8);
  switch(*(v0 + 24))
  {
    case 1:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v24 = v16;
      OUTLINED_FUNCTION_48_9();
      v3 = 0x6E69747265502022;
      v4 = 0xED0000203A746E65;
      break;
    case 2:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v8 = v13 - 1;
      goto LABEL_20;
    case 3:
    case 5:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v8 = v17 + 9;
      goto LABEL_20;
    case 4:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v8 = v10 + 13;
      goto LABEL_20;
    case 6:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_16_18();
      v3 = v19 + 25;
      goto LABEL_17;
    case 7:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v8 = v15 + 10;
      goto LABEL_20;
    case 8:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v8 = v21 | 6;
      goto LABEL_20;
    case 9:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v8 = v12 + 18;
      goto LABEL_20;
    case 0xA:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_16_18();
      v3 = v20 + 75;
      goto LABEL_17;
    case 0xB:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v8 = v9 + 19;
      goto LABEL_20;
    case 0xC:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v8 = v11 + 15;
      goto LABEL_20;
    case 0xD:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v8 = v18 + 16;
      goto LABEL_20;
    case 0xE:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v8 = v7 + 20;
LABEL_20:
      v24 = v8;
      goto LABEL_21;
    case 0xF:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_48_9();
      OUTLINED_FUNCTION_16_18();
      v3 = v14 + 45;
      goto LABEL_17;
    case 0x10:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      sub_1C75504FC();

      v24 = v1;
      OUTLINED_FUNCTION_16_18();
      v3 = v6 + 17;
LABEL_17:
      v4 = v5 | 0x8000000000000000;
      break;
    default:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_5_25();
      v24 = v2;
      OUTLINED_FUNCTION_48_9();
      v3 = 2112034;
      v4 = 0xE300000000000000;
      break;
  }

  MEMORY[0x1CCA5CD70](v3, v4);
LABEL_21:
  v22 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v22);

  return v24;
}

Swift::String __swiftcall StoryGenerationSummary.screeningDescription()()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  v4 = *(v0 + 32);
  v78 = *(v0 + 48);
  v79 = *(v0 + 24);
  v83 = *(v0 + 56);
  v81 = *(v0 + 88);
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  v7 = *(v0 + 224);
  v84 = *(v0 + 232);
  if (v1)
  {
    v8 = *v0;
  }

  else
  {
    v8 = 0x474E495353494DLL;
  }

  if (v1)
  {
    v9 = *(v0 + 8);
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  v90 = 0xD00000000000001ELL;
  v91 = 0x80000001C759C110;
  if (v2 == 5)
  {
    sub_1C75504FC();
    sub_1C755180C();

    strcpy(&v87, "\nUser Prompt: ");
    HIBYTE(v87) = -18;
  }

  else
  {
    *&v87 = 0;
    *(&v87 + 1) = 0xE000000000000000;
    sub_1C75504FC();
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C759C420);
    sub_1C73E6820(v2);
    MEMORY[0x1CCA5CD70](2112041, 0xE300000000000000);
  }

  MEMORY[0x1CCA5CD70](v8, v9);

  OUTLINED_FUNCTION_18_13();
  OUTLINED_FUNCTION_24_16();

  if (v6)
  {
    strcpy(&v87, "Story title: ");
    HIWORD(v87) = -4864;
    MEMORY[0x1CCA5CD70](v5, v6);
    OUTLINED_FUNCTION_18_13();
    OUTLINED_FUNCTION_24_16();
  }

  v10 = 0xD000000000000011;
  if (v3 <= 0xFD)
  {
    strcpy(&v87, "Story type: ");
    BYTE13(v87) = 0;
    HIWORD(v87) = -5120;
    v11 = 0xE600000000000000;
    v12 = 0x79636167656CLL;
    switch(v3 >> 5)
    {
      case 1u:
        OUTLINED_FUNCTION_3_1();
        if (v3)
        {
          v12 = 0xD00000000000001BLL;
        }

        else
        {
          v12 = 0xD00000000000001ALL;
        }

        if (v3)
        {
          v11 = v13;
        }

        else
        {
          v11 = 0x80000001C759A8B0;
        }

        break;
      case 2u:
        OUTLINED_FUNCTION_3_1();
        if (v3 == 64)
        {
          v12 = 0xD000000000000012;
        }

        else
        {
          v12 = 0xD00000000000001FLL;
        }

        if (v3 == 64)
        {
          v11 = v14;
        }

        else
        {
          v11 = 0x80000001C759C3A0;
        }

        break;
      case 3u:
        if (v3 == 96)
        {
          v12 = 0x6F7365527473616CLL;
        }

        else
        {
          v12 = 0xD000000000000013;
        }

        if (v3 == 96)
        {
          v11 = 0xEA00000000007472;
        }

        else
        {
          v11 = 0x80000001C759C380;
        }

        break;
      case 4u:
        break;
      default:
        if (v3)
        {
          v11 = 0x80000001C759C400;
        }

        else
        {
          v11 = 0x80000001C759C3E0;
        }

        v12 = 0xD000000000000011;
        break;
    }

    MEMORY[0x1CCA5CD70](v12, v11);

    OUTLINED_FUNCTION_18_13();
    OUTLINED_FUNCTION_24_16();
  }

  if (v4)
  {
    OUTLINED_FUNCTION_3_1();
    *&v87 = 0xD000000000000026;
    *(&v87 + 1) = v15;
    MEMORY[0x1CCA5CD70](v79, v4);
    OUTLINED_FUNCTION_18_13();
    OUTLINED_FUNCTION_24_16();
  }

  if (*(v81 + 16))
  {
    OUTLINED_FUNCTION_3_1();
    *&v87 = 0xD000000000000019;
    *(&v87 + 1) = v16;
    v17 = MEMORY[0x1CCA5D090]();
    MEMORY[0x1CCA5CD70](v17);

    OUTLINED_FUNCTION_18_13();
    OUTLINED_FUNCTION_36_9();
  }

  if (*(v7 + 16))
  {
    MEMORY[0x1CCA5CD70](0xD00000000000001CLL, 0x80000001C759C130);
    v18 = v7 + 64;
    v19 = 1 << *(v7 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v7 + 64);
    v22 = (v19 + 63) >> 6;
    v82 = v7;
    sub_1C75504FC();
    v23 = 0;
    while (v21)
    {
      v24 = v21;
LABEL_52:
      v21 = (v24 - 1) & v24;
      if (*(v84 + 16))
      {
        v26 = (v23 << 10) | (16 * __clz(__rbit64(v24)));
        v27 = (*(v82 + 48) + v26);
        v10 = *v27;
        v28 = v27[1];
        v29 = (*(v82 + 56) + v26);
        v30 = v29[1];
        v80 = *v29;
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75505AC();
        v31 = sub_1C7551FAC();
        v32 = ~(-1 << *(v84 + 32));
        while (1)
        {
          v33 = v31 & v32;
          if (((*(v84 + 56 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
          {
            break;
          }

          v34 = (*(v84 + 48) + 16 * v33);
          if (*v34 != v10 || v34[1] != v28)
          {
            v36 = sub_1C7551DBC();
            v31 = v33 + 1;
            if ((v36 & 1) == 0)
            {
              continue;
            }
          }

          OUTLINED_FUNCTION_52_9();
          MEMORY[0x1CCA5CD70](v10, v28);

          MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
          MEMORY[0x1CCA5CD70](v80, v30);

          OUTLINED_FUNCTION_18_13();
          OUTLINED_FUNCTION_36_9();
          goto LABEL_62;
        }

LABEL_62:
      }
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v22)
      {

        v10 = 0xD000000000000011;
        goto LABEL_64;
      }

      v24 = *(v18 + 8 * v25);
      ++v23;
      if (v24)
      {
        v23 = v25;
        goto LABEL_52;
      }
    }

LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

LABEL_64:
  if (qword_1EDD0A988 != -1)
  {
LABEL_92:
    swift_once();
  }

  v37 = 0x64656C6261736964;
  v38 = byte_1EC218F88;
  *&v87 = 0;
  *(&v87 + 1) = 0xE000000000000000;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](v10 + 8, 0x80000001C759C150);
  sub_1C75519EC();
  MEMORY[0x1CCA5CD70](2592, 0xE200000000000000);
  OUTLINED_FUNCTION_36_9();

  MEMORY[0x1CCA5CD70](v10 + 11, 0x80000001C759C170);
  OUTLINED_FUNCTION_3_1();
  *&v87 = v10 + 29;
  *(&v87 + 1) = v39;
  type metadata accessor for LLMWrapperUtils();
  OUTLINED_FUNCTION_27_15();
  static LLMWrapperUtils.queryUnderstandingModelType(for:)(v40);
  v41 = static LLMConfiguration.modelCatalogResourceID(for:)(&v86);
  MEMORY[0x1CCA5CD70](v41);

  OUTLINED_FUNCTION_18_13();
  OUTLINED_FUNCTION_24_16();

  OUTLINED_FUNCTION_3_1();
  *&v87 = v10 + 23;
  *(&v87 + 1) = v42;
  OUTLINED_FUNCTION_27_15();
  static LLMWrapperUtils.globalTraitsModelType(for:)(v43);
  v44 = static LLMConfiguration.modelCatalogResourceID(for:)(&v86);
  MEMORY[0x1CCA5CD70](v44);

  OUTLINED_FUNCTION_18_13();
  OUTLINED_FUNCTION_24_16();

  OUTLINED_FUNCTION_3_1();
  *&v87 = v10 + 21;
  *(&v87 + 1) = v45;
  OUTLINED_FUNCTION_27_15();
  static LLMWrapperUtils.storytellerModelType(for:)(v46);
  v47 = static LLMConfiguration.modelCatalogResourceID(for:)(&v86);
  MEMORY[0x1CCA5CD70](v47);

  OUTLINED_FUNCTION_18_13();
  OUTLINED_FUNCTION_36_9();

  v48 = objc_opt_self();
  if ([v48 generateOnDeviceTitle] && (type metadata accessor for FreeformStoryGenerator(0), LOBYTE(v87) = v38, (static FreeformStoryGenerator.usingFallbackTitle(for:)(&v87) & 1) == 0))
  {
    sub_1C754E43C();
    __swift_project_boxed_opaque_existential_1(&v87, v89);
    OUTLINED_FUNCTION_51();
    v50 = sub_1C754E4DC();
    v49 = v51;
    __swift_destroy_boxed_opaque_existential_1(&v87);
  }

  else
  {
    v49 = 0xE800000000000000;
    v50 = 0x64656C6261736964;
  }

  OUTLINED_FUNCTION_3_1();
  *&v87 = v10 + 16;
  *(&v87 + 1) = v52;
  MEMORY[0x1CCA5CD70](v50, v49);

  OUTLINED_FUNCTION_18_13();
  OUTLINED_FUNCTION_24_16();

  if (!v38)
  {
    v53 = 1;
LABEL_73:
    OUTLINED_FUNCTION_3_1();
    v85 = v54;
    sub_1C754E49C();
    __swift_project_boxed_opaque_existential_1(&v87, v89);
    OUTLINED_FUNCTION_51();
    v55 = sub_1C754E4DC();
    v57 = v56;
    __swift_destroy_boxed_opaque_existential_1(&v87);
    MEMORY[0x1CCA5CD70](v55, v57);

    MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
    MEMORY[0x1CCA5CD70](v10 + 24, v85);

    if (!v53)
    {
      goto LABEL_78;
    }

    goto LABEL_74;
  }

  if (v38 != 1)
  {
    v53 = 0;
    goto LABEL_73;
  }

LABEL_74:
  if ([v48 useOnDeviceAssetCurationOutlier])
  {
    sub_1C754E4CC();
    __swift_project_boxed_opaque_existential_1(&v87, v89);
    v37 = sub_1C754E4DC();
    v59 = v58;
    __swift_destroy_boxed_opaque_existential_1(&v87);
  }

  else
  {
    v59 = 0xE800000000000000;
  }

  *&v87 = 0;
  *(&v87 + 1) = 0xE000000000000000;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](v10 + 31, 0x80000001C759C250);
  MEMORY[0x1CCA5CD70](v37, v59);

  OUTLINED_FUNCTION_18_13();
  MEMORY[0x1CCA5CD70](v87, *(&v87 + 1));

LABEL_78:
  MEMORY[0x1CCA5CD70](v10 + 23, 0x80000001C759C290);
  v60 = *(v78 + 16);
  if (v60)
  {
    v61 = (v78 + 56);
    do
    {
      v62 = *(v61 - 1);
      v63 = *v61;
      v87 = *(v61 - 24);
      v88 = v62;
      LOBYTE(v89) = v63;
      v64 = StoryGenerationSummary.AssetStage.description.getter();
      MEMORY[0x1CCA5CD70](v64);

      MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
      MEMORY[0x1CCA5CD70](9, 0xE100000000000000);

      v61 += 32;
      --v60;
    }

    while (v60);
  }

  MEMORY[0x1CCA5CD70](v10 + 12, 0x80000001C759C2C0);
  OUTLINED_FUNCTION_11();
  v67 = v66 & v65;
  v69 = (v68 + 63) >> 6;
  sub_1C75504FC();
  v70 = 0;
  if (v67)
  {
    while (1)
    {
      v71 = v70;
LABEL_87:
      v72 = (*(v83 + 48) + 16 * (__clz(__rbit64(v67)) | (v71 << 6)));
      v73 = *v72;
      v10 = v72[1];
      v67 &= v67 - 1;
      OUTLINED_FUNCTION_52_9();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v73, v10);

      MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C759C2E0);
      v74 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v74);

      MEMORY[0x1CCA5CD70](0xA73656D697420, 0xE700000000000000);
      MEMORY[0x1CCA5CD70](v87, *(&v87 + 1));

      if (!v67)
      {
        goto LABEL_83;
      }
    }
  }

  while (1)
  {
LABEL_83:
    v71 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      __break(1u);
      goto LABEL_91;
    }

    if (v71 >= v69)
    {
      break;
    }

    v67 = *(v83 + 64 + 8 * v71);
    ++v70;
    if (v67)
    {
      v70 = v71;
      goto LABEL_87;
    }
  }

  v75 = v90;
  v76 = v91;
  result._object = v76;
  result._countAndFlagsBits = v75;
  return result;
}

Swift::String __swiftcall StoryGenerationSummary.fullDescription()()
{
  v2 = type metadata accessor for PersonalTrait(0);
  v136 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = OUTLINED_FUNCTION_35_8();
  type metadata accessor for GlobalTrait(v3);
  OUTLINED_FUNCTION_3_0();
  v138 = v4;
  v139 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v136 - v9);
  memcpy(v161, v0, sizeof(v161));
  v11 = *(v0 + 72);
  v12 = *(v0 + 88);
  v147 = *(v0 + 80);
  v148 = v12;
  v13 = *(v0 + 104);
  v149 = *(v0 + 96);
  v150 = v13;
  v14 = *(v0 + 120);
  v151 = *(v0 + 112);
  v152 = v14;
  v15 = *(v0 + 136);
  v153 = *(v0 + 128);
  v154 = v15;
  v17 = *(v0 + 144);
  v16 = *(v0 + 152);
  v144 = v11;
  v145 = v17;
  v155 = v16;
  v18 = *(v0 + 168);
  v146 = *(v0 + 160);
  v156 = v18;
  v19 = *(v0 + 176);
  v20 = *(v0 + 184);
  v22 = *(v0 + 192);
  v21 = *(v0 + 200);
  v179 = *(v0 + 208);
  *&v181 = 0;
  *(&v181 + 1) = 0xE000000000000000;
  sub_1C755180C();
  v142 = *(&v181 + 1);
  v162 = v144;
  v163 = v147;
  v164 = v148;
  v165 = v149;
  v166 = v150;
  v167 = v151;
  v168 = v152;
  v169 = v153;
  v170 = v154;
  v171 = v145;
  v172 = v155;
  v173 = v146;
  v174 = v156;
  v157 = v19;
  v175 = v19;
  v176 = v20;
  v143 = v20;
  v137 = v22;
  v177 = v22;
  v178 = v21;
  v141 = v21;
  v140 = *(v0 + 224);
  v180 = v140;
  v23 = StoryGenerationSummary.screeningDescription()();

  *v161 = v23;
  OUTLINED_FUNCTION_16_18();
  MEMORY[0x1CCA5CD70](v24 + 7, v25 | 0x8000000000000000);
  v181 = *v161;
  if (v147)
  {
    strcpy(v161, "QU Result: ");
    *&v161[12] = -352321536;
    MEMORY[0x1CCA5CD70](v144);
    OUTLINED_FUNCTION_19_17();
    OUTLINED_FUNCTION_38_9();
  }

  v26 = v148;
  if (*(v148 + 16))
  {
    *v161 = 0;
    *&v161[8] = 0xE000000000000000;
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *v161 = 0xD000000000000019;
    *&v161[8] = v27;
    v28 = MEMORY[0x1CCA5D090](v26, &type metadata for QueryToken);
    MEMORY[0x1CCA5CD70](v28);

    OUTLINED_FUNCTION_19_17();
    OUTLINED_FUNCTION_38_9();
  }

  if (*(v149 + 16))
  {
    OUTLINED_FUNCTION_3_1();
    *v161 = 0xD00000000000001CLL;
    *&v161[8] = v29;
    v31 = MEMORY[0x1CCA5D090](v30);
    MEMORY[0x1CCA5CD70](v31);

    OUTLINED_FUNCTION_19_17();
    OUTLINED_FUNCTION_38_9();
  }

  v32 = v150;
  if (*(v150 + 16))
  {
    OUTLINED_FUNCTION_3_1();
    *v161 = 0xD000000000000012;
    *&v161[8] = v33;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8, &unk_1C7562CE0);
    v35 = MEMORY[0x1CCA5D090](v32, v34);
    v32 = v161;
    MEMORY[0x1CCA5CD70](v35);

    OUTLINED_FUNCTION_19_17();
    OUTLINED_FUNCTION_38_9();
  }

  v36 = v151;
  if (*(v151 + 16))
  {
    OUTLINED_FUNCTION_16_18();
    OUTLINED_FUNCTION_49_8();
    v37 = *(v36 + 16);
    if (v37)
    {
      OUTLINED_FUNCTION_15_4();
      v39 = v36 + v38;
      v41 = *(v40 + 72);
      do
      {
        v42 = OUTLINED_FUNCTION_23_15();
        sub_1C70AE8B4(v42, v10, v43);
        v44 = v10[1];
        *v161 = *v10;
        *&v161[8] = v44;
        sub_1C75504FC();
        OUTLINED_FUNCTION_26_15();
        OUTLINED_FUNCTION_22_19();
        sub_1C70AE9EC(v10, v45);
        v159 = v32;
        v46 = sub_1C7551D8C();
        v32 = v161;
        MEMORY[0x1CCA5CD70](v46);

        OUTLINED_FUNCTION_43_10();
        OUTLINED_FUNCTION_46_9();

        v39 += v41;
        --v37;
      }

      while (v37);
    }
  }

  v47 = v152;
  if (*(v152 + 16))
  {
    OUTLINED_FUNCTION_16_18();
    OUTLINED_FUNCTION_49_8();
    v48 = *(v47 + 16);
    if (v48)
    {
      OUTLINED_FUNCTION_15_4();
      v50 = v47 + v49;
      v52 = *(v51 + 72);
      do
      {
        v53 = OUTLINED_FUNCTION_23_15();
        sub_1C70AE8B4(v53, v7, v54);
        v55 = v7[1];
        *v161 = *v7;
        *&v161[8] = v55;
        sub_1C75504FC();
        OUTLINED_FUNCTION_26_15();
        OUTLINED_FUNCTION_22_19();
        sub_1C70AE9EC(v7, v56);
        v159 = v32;
        v57 = sub_1C7551D8C();
        v32 = v161;
        MEMORY[0x1CCA5CD70](v57);

        OUTLINED_FUNCTION_43_10();
        OUTLINED_FUNCTION_46_9();

        v50 += v52;
        --v48;
      }

      while (v48);
    }
  }

  v58 = v153;
  if (*(v153 + 16))
  {
    OUTLINED_FUNCTION_49_8();
    v59 = *(v58 + 16);
    if (v59)
    {
      OUTLINED_FUNCTION_15_4();
      v61 = v58 + v60;
      v63 = *(v62 + 72);
      do
      {
        sub_1C70AE8B4(v61, v1, type metadata accessor for PersonalTrait);
        v64 = v1[1];
        *v161 = *v1;
        *&v161[8] = v64;
        sub_1C75504FC();
        OUTLINED_FUNCTION_26_15();
        v65 = *(v1[2] + 16);
        sub_1C70AE9EC(v1, type metadata accessor for PersonalTrait);
        v159 = v65;
        v66 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v66);

        MEMORY[0x1CCA5CD70](0xA73746573736120, 0xE800000000000000);
        OUTLINED_FUNCTION_46_9();

        v61 += v63;
        --v59;
      }

      while (v59);
    }
  }

  v67 = v154;
  if (v154)
  {
    OUTLINED_FUNCTION_49_8();
    v159 = v67;
    v160 = v145;
    *v161 = PersonalTraitSelector.SelectionResult.description.getter();
    *&v161[8] = v68;
    OUTLINED_FUNCTION_19_17();
    OUTLINED_FUNCTION_30_12();
  }

  v69 = v155;
  v70 = v143;
  if (*(v155 + 16))
  {
    OUTLINED_FUNCTION_49_8();
    v71 = *(v69 + 16);
    if (v71)
    {
      v72 = v69 + 32;
      do
      {
        sub_1C6FB5E28(v72, v161);
        v73 = *&v161[32];
        __swift_project_boxed_opaque_existential_1(v161, *&v161[24]);
        v74 = OUTLINED_FUNCTION_51();
        v159 = v75(v74, v73);
        v160 = v76;
        MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
        v77 = *&v161[32];
        __swift_project_boxed_opaque_existential_1(v161, *&v161[24]);
        v78 = OUTLINED_FUNCTION_51();
        v80 = v79(v78, v77);
        __swift_destroy_boxed_opaque_existential_1(v161);
        v81 = *(v80 + 16);

        v158 = v81;
        v82 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v82);

        MEMORY[0x1CCA5CD70](0xA73746573736120, 0xE800000000000000);
        MEMORY[0x1CCA5CD70](v159, v160);

        v72 += 40;
        --v71;
      }

      while (v71);
    }
  }

  if (v156)
  {
    OUTLINED_FUNCTION_3_1();
    *v161 = 0xD000000000000019;
    *&v161[8] = v83;
    MEMORY[0x1CCA5CD70](v146);
    OUTLINED_FUNCTION_19_17();
    OUTLINED_FUNCTION_30_12();
  }

  v84 = v157;
  if (v157[2])
  {
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](0xD00000000000001DLL, 0x80000001C759C4B0);
    v85 = 0;
    v86 = v84 + 8;
    OUTLINED_FUNCTION_11();
    v91 = v90 & v89;
    v93 = (v92 + 63) >> 6;
    if ((v90 & v89) == 0)
    {
      goto LABEL_32;
    }

    do
    {
      v94 = v85;
LABEL_36:
      v95 = __clz(__rbit64(v91));
      v91 &= v91 - 1;
      v96 = (v94 << 10) | (16 * v95);
      v97 = (v157[6] + v96);
      v98 = *v97;
      v99 = v97[1];
      v100 = (v157[7] + v96);
      v101 = *v100;
      v102 = v100[1];
      strcpy(v161, "Chapter ");
      v161[9] = 0;
      *&v161[10] = 0;
      *&v161[12] = -402653184;
      sub_1C75504FC();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v98, v99);

      OUTLINED_FUNCTION_26_15();
      MEMORY[0x1CCA5CD70](v101, v102);

      OUTLINED_FUNCTION_19_17();
      OUTLINED_FUNCTION_30_12();
    }

    while (v91);
LABEL_32:
    while (1)
    {
      v94 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      if (v94 >= v93)
      {

        v70 = v143;
        goto LABEL_39;
      }

      v91 = v86[v94];
      ++v85;
      if (v91)
      {
        v85 = v94;
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_65;
  }

LABEL_39:
  if (v70[2])
  {
    sub_1C75504FC();
    v103 = OUTLINED_FUNCTION_44_9();
    MEMORY[0x1CCA5CD70](v103);
    v104 = 0;
    OUTLINED_FUNCTION_11();
    v107 = v106 & v105;
    v109 = (v108 + 63) >> 6;
    if ((v106 & v105) == 0)
    {
      goto LABEL_42;
    }

    do
    {
      v110 = v104;
LABEL_46:
      v111 = __clz(__rbit64(v107));
      v107 &= v107 - 1;
      v112 = (v110 << 10) | (16 * v111);
      v113 = (v70[6] + v112);
      v114 = v113[1];
      v115 = (v70[7] + v112);
      v116 = *v115;
      v117 = v115[1];
      *v161 = *v113;
      *&v161[8] = v114;
      sub_1C75504FC();
      sub_1C75504FC();
      OUTLINED_FUNCTION_26_15();
      MEMORY[0x1CCA5CD70](v116, v117);

      OUTLINED_FUNCTION_19_17();
      OUTLINED_FUNCTION_30_12();
    }

    while (v107);
LABEL_42:
    while (1)
    {
      v110 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        break;
      }

      if (v110 >= v109)
      {

        goto LABEL_49;
      }

      v107 = v70[v110 + 8];
      ++v104;
      if (v107)
      {
        v104 = v110;
        goto LABEL_46;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_49:
  if (v141)
  {
    *v161 = 0x6F2079726F74530ALL;
    *&v161[8] = 0xEF0A3A7463656A62;
    MEMORY[0x1CCA5CD70](v137);
    OUTLINED_FUNCTION_19_17();
    OUTLINED_FUNCTION_30_12();
  }

  v118 = v140;
  if (*(v140 + 16))
  {
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C759C470);
    v119 = 0;
    v120 = v118 + 64;
    OUTLINED_FUNCTION_11();
    v123 = v122 & v121;
    v125 = (v124 + 63) >> 6;
    v156 = v118;
    if ((v122 & v121) != 0)
    {
      goto LABEL_57;
    }

    while (1)
    {
      v126 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        goto LABEL_66;
      }

      if (v126 >= v125)
      {

        break;
      }

      v123 = *(v120 + 8 * v126);
      ++v119;
      if (v123)
      {
        v119 = v126;
        do
        {
LABEL_57:
          v127 = (v119 << 10) | (16 * __clz(__rbit64(v123)));
          v128 = *(v118 + 56);
          v129 = (*(v118 + 48) + v127);
          v131 = *v129;
          v130 = v129[1];
          v132 = (v128 + v127);
          v133 = v132[1];
          v157 = *v132;
          *v161 = v131;
          *&v161[8] = v130;
          v159 = 0x6D726F6665657266;
          v160 = 0xE800000000000000;
          sub_1C6FB5E8C();
          sub_1C75504FC();
          sub_1C75504FC();
          if (sub_1C75515AC())
          {
            *v161 = 9;
            *&v161[8] = 0xE100000000000000;
            MEMORY[0x1CCA5CD70](v131, v130);

            OUTLINED_FUNCTION_26_15();
            MEMORY[0x1CCA5CD70](v157, v133);

            OUTLINED_FUNCTION_19_17();
            MEMORY[0x1CCA5CD70](*v161, *&v161[8]);
          }

          else
          {
          }

          v123 &= v123 - 1;

          v118 = v156;
        }

        while (v123);
      }
    }
  }

  v134 = v181;
  v88 = (v134 >> 64);
  v87 = v134;
LABEL_67:
  result._object = v88;
  result._countAndFlagsBits = v87;
  return result;
}

uint64_t sub_1C70AD0EC()
{
  v3 = *(v0 + 48);
  v131 = *(v3 + 16);
  if (v131)
  {
    OUTLINED_FUNCTION_3_1();
    v130 = v4;
    OUTLINED_FUNCTION_39_12();
    OUTLINED_FUNCTION_3_1();
    v128 = v5;
    v129 = v6;
    OUTLINED_FUNCTION_39_12();
    OUTLINED_FUNCTION_3_1();
    v126 = v7;
    v127 = v8;
    OUTLINED_FUNCTION_39_12();
    OUTLINED_FUNCTION_3_1();
    v124 = v9;
    v125 = v10;
    OUTLINED_FUNCTION_39_12();
    OUTLINED_FUNCTION_3_1();
    v122 = v11;
    v123 = v12;
    OUTLINED_FUNCTION_39_12();
    OUTLINED_FUNCTION_3_1();
    v120 = v13;
    v121 = v14;
    OUTLINED_FUNCTION_39_12();
    OUTLINED_FUNCTION_3_1();
    v118 = v15;
    v119 = v16;
    OUTLINED_FUNCTION_3_1();
    v117 = v18;
    v19 = MEMORY[0x1E69E7CC8];
    v20 = (v3 + 56);
    while (2)
    {
      if (v17 < *(v3 + 16))
      {
        v21 = *(v20 - 2);
        v22 = *(v20 - 1);
        ++v17;
        switch(*v20)
        {
          case 1:
            v115 = v17;
            v1 = v3;
            sub_1C75504FC();
            v116 = sub_1C755104C();
            swift_isUniquelyReferenced_nonNull_native();
            v132 = v19;
            v23 = OUTLINED_FUNCTION_44_9();
            v24 = sub_1C6F78124(v23, v117);
            if (__OFADD__(*(v19 + 16), (v25 & 1) == 0))
            {
              goto LABEL_149;
            }

            v2 = v24;
            v26 = v25;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720, &unk_1C755CBB0);
            if (sub_1C7551A2C())
            {
              v27 = OUTLINED_FUNCTION_44_9();
              v28 = sub_1C6F78124(v27, v117);
              if ((v26 & 1) != (v29 & 1))
              {
                goto LABEL_166;
              }

              v2 = v28;
            }

            if (v26)
            {
              v30 = *(v19 + 56);
              v31 = *(v30 + 8 * v2);
              *(v30 + 8 * v2) = v116;

              OUTLINED_FUNCTION_53_11();
            }

            else
            {
              OUTLINED_FUNCTION_2_27(v19 + 8 * (v2 >> 6));
              v107 = (v106 + 16 * v2);
              *v107 = 0xD000000000000019;
              v107[1] = v117;
              *(*(v19 + 56) + 8 * v2) = v116;
              OUTLINED_FUNCTION_53_11();
              v108 = *(v19 + 16);
              v33 = __OFADD__(v108, 1);
              v109 = v108 + 1;
              if (v33)
              {
                goto LABEL_160;
              }

              *(v19 + 16) = v109;
            }

            v17 = v115;
            goto LABEL_133;
          case 2:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            v1 = v77 - 1;
            sub_1C6F78124(v77 - 1, v118);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_145;
            }

            v2 = v78;
            v80 = v79;
            v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720, &unk_1C755CBB0);
            if ((OUTLINED_FUNCTION_13_21(v81) & 1) == 0)
            {
              goto LABEL_87;
            }

            v82 = sub_1C6F78124(v1, v118);
            if ((v80 & 1) != (v83 & 1))
            {
              goto LABEL_166;
            }

            v2 = v82;
LABEL_87:
            v19 = v132;
            if (v80)
            {
              v84 = *(v132 + 56);
              v85 = *(v84 + 8 * v2);
              *(v84 + 8 * v2) = v22;
LABEL_123:
            }

            else
            {
              OUTLINED_FUNCTION_2_27(v132 + 8 * (v2 >> 6));
              v111 = (v110 + 16 * v2);
              *v111 = v1;
              v111[1] = v118;
              *(*(v132 + 56) + 8 * v2) = v22;
              v112 = *(v132 + 16);
              v33 = __OFADD__(v112, 1);
              v39 = v112 + 1;
              if (v33)
              {
                goto LABEL_158;
              }

LABEL_131:
              *(v19 + 16) = v39;
            }

            v17 = v21;
LABEL_133:
            v20 += 32;
            if (v131 == v17)
            {
              return v19;
            }

            continue;
          case 3:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v55 + 3, v119);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_142;
            }

            OUTLINED_FUNCTION_324();
            v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720, &unk_1C755CBB0);
            if ((OUTLINED_FUNCTION_13_21(v56) & 1) == 0)
            {
              goto LABEL_52;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v57 + 3, v119);
            OUTLINED_FUNCTION_10_25();
            if (!v37)
            {
              goto LABEL_166;
            }

            v1 = v58;
LABEL_52:
            v19 = v132;
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v59);
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_157;
          case 4:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v45 + 11, v120);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_139;
            }

            OUTLINED_FUNCTION_324();
            v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720, &unk_1C755CBB0);
            if ((OUTLINED_FUNCTION_13_21(v46) & 1) == 0)
            {
              goto LABEL_34;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v47 + 11, v120);
            OUTLINED_FUNCTION_10_25();
            if (!v37)
            {
              goto LABEL_166;
            }

            v1 = v48;
LABEL_34:
            v19 = v132;
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v49);
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_154;
          case 5:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v86 + 7, v121);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_146;
            }

            OUTLINED_FUNCTION_324();
            v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720, &unk_1C755CBB0);
            if ((OUTLINED_FUNCTION_13_21(v87) & 1) == 0)
            {
              goto LABEL_94;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v88 + 7, v121);
            OUTLINED_FUNCTION_10_25();
            if (!v37)
            {
              goto LABEL_166;
            }

            v1 = v89;
LABEL_94:
            v19 = v132;
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v90);
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_152;
          case 6:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v101 + 21, v122);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_141;
            }

            OUTLINED_FUNCTION_324();
            v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720, &unk_1C755CBB0);
            if ((OUTLINED_FUNCTION_13_21(v102) & 1) == 0)
            {
              goto LABEL_121;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v103 + 21, v122);
            OUTLINED_FUNCTION_10_25();
            if (!v37)
            {
              goto LABEL_166;
            }

            v1 = v104;
LABEL_121:
            v19 = v132;
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v113);
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_165;
          case 7:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v67 + 8, v123);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_147;
            }

            OUTLINED_FUNCTION_324();
            v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720, &unk_1C755CBB0);
            if ((OUTLINED_FUNCTION_13_21(v68) & 1) == 0)
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v69 + 8, v123);
            OUTLINED_FUNCTION_10_25();
            if (!v37)
            {
              goto LABEL_166;
            }

            v1 = v70;
LABEL_70:
            v19 = v132;
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v71);
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_163;
          case 8:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v96 + 5, v124);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_138;
            }

            OUTLINED_FUNCTION_324();
            v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720, &unk_1C755CBB0);
            if ((OUTLINED_FUNCTION_13_21(v97) & 1) == 0)
            {
              goto LABEL_112;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v98 + 5, v124);
            OUTLINED_FUNCTION_10_25();
            if (!v37)
            {
              goto LABEL_166;
            }

            v1 = v99;
LABEL_112:
            v19 = v132;
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v100);
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_155;
          case 9:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v50 + 9, v125);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_140;
            }

            OUTLINED_FUNCTION_324();
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720, &unk_1C755CBB0);
            if ((OUTLINED_FUNCTION_13_21(v51) & 1) == 0)
            {
              goto LABEL_43;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v52 + 9, v125);
            OUTLINED_FUNCTION_10_25();
            if (!v37)
            {
              goto LABEL_166;
            }

            v1 = v53;
LABEL_43:
            v19 = v132;
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v54);
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_164;
          case 0xA:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            v132 = v19;
            v60 = OUTLINED_FUNCTION_44_9();
            sub_1C6F78124(v60, v126);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_151;
            }

            OUTLINED_FUNCTION_324();
            v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720, &unk_1C755CBB0);
            if ((OUTLINED_FUNCTION_13_21(v61) & 1) == 0)
            {
              goto LABEL_61;
            }

            v62 = OUTLINED_FUNCTION_44_9();
            sub_1C6F78124(v62, v126);
            OUTLINED_FUNCTION_10_25();
            if (!v37)
            {
              goto LABEL_166;
            }

            v1 = v63;
LABEL_61:
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            *v64 = v65;
            v64[1] = v126;
            *(*(v19 + 56) + 8 * v1) = v22;
            v66 = *(v19 + 16);
            v33 = __OFADD__(v66, 1);
            v39 = v66 + 1;
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_153;
          case 0xB:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v91 + 8, v127);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_144;
            }

            OUTLINED_FUNCTION_324();
            v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720, &unk_1C755CBB0);
            if ((OUTLINED_FUNCTION_13_21(v92) & 1) == 0)
            {
              goto LABEL_103;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v93 + 8, v127);
            OUTLINED_FUNCTION_10_25();
            if (!v37)
            {
              goto LABEL_166;
            }

            v1 = v94;
LABEL_103:
            v19 = v132;
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v95);
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_159;
          case 0xC:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v40 + 4, v128);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_150;
            }

            OUTLINED_FUNCTION_324();
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720, &unk_1C755CBB0);
            if ((OUTLINED_FUNCTION_13_21(v41) & 1) == 0)
            {
              goto LABEL_25;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v42 + 4, v128);
            OUTLINED_FUNCTION_10_25();
            if (!v37)
            {
              goto LABEL_166;
            }

            v1 = v43;
LABEL_25:
            v19 = v132;
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v44);
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_162;
          case 0xD:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v72 + 5, v129);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_148;
            }

            OUTLINED_FUNCTION_324();
            v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720, &unk_1C755CBB0);
            if ((OUTLINED_FUNCTION_13_21(v73) & 1) == 0)
            {
              goto LABEL_79;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v74 + 5, v129);
            OUTLINED_FUNCTION_10_25();
            if (!v37)
            {
              goto LABEL_166;
            }

            v1 = v75;
LABEL_79:
            v19 = v132;
            if (v2)
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v76);
            if (!v33)
            {
              goto LABEL_131;
            }

            goto LABEL_161;
          case 0xE:
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_34_9();
            OUTLINED_FUNCTION_4_25();
            sub_1C6F78124(v32 + 9, v130);
            OUTLINED_FUNCTION_3_29();
            if (v33)
            {
              goto LABEL_143;
            }

            OUTLINED_FUNCTION_324();
            v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219720, &unk_1C755CBB0);
            if ((OUTLINED_FUNCTION_13_21(v34) & 1) == 0)
            {
              goto LABEL_16;
            }

            OUTLINED_FUNCTION_11_22();
            sub_1C6F78124(v35 + 9, v130);
            OUTLINED_FUNCTION_10_25();
            if (!v37)
            {
              goto LABEL_166;
            }

            v1 = v36;
LABEL_16:
            v19 = v132;
            if (v2)
            {
LABEL_122:
              v105 = *(v19 + 56);
              v85 = *(v105 + 8 * v1);
              *(v105 + 8 * v1) = v22;
              goto LABEL_123;
            }

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_1_36(v38);
            if (v33)
            {
              goto LABEL_156;
            }

            goto LABEL_131;
          default:
            goto LABEL_133;
        }
      }

      break;
    }

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
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

Swift::String_optional __swiftcall StoryGenerationSummary.llmRequestDiagnostics()()
{
  v99 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v98 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for LLMConfiguration(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_35_8();
  v7 = sub_1C754FDEC();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v100 = &v74 - v14;
  v15 = *(v0 + 64);
  if (*(v15 + 16))
  {
    OUTLINED_FUNCTION_3_1();
    v117 = v17;
    v118 = v16;
    v18 = v15 + 64;
    v19 = 1 << *(v15 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v83 = v20 & *(v15 + 64);
    v82 = (v19 + 63) >> 6;
    v80 = v9 + 16;
    v79 = v9 + 32;
    v97 = "--- Request Details ---";
    v96 = " prompt bindings -\n";
    v95 = "\n\n- CLI parameters for ";
    v94 = "d to emulate requests -";
    v93 = " tgtool complete ";
    v91 = v3 + 8;
    OUTLINED_FUNCTION_3_1();
    v85 = v21;
    v84 = "--model-bundle-identifier ";
    v78 = (v9 + 8);
    v22 = sub_1C75504FC();
    v24 = 0;
    v108 = 0;
    v81 = v15 + 64;
    while (1)
    {
      v25 = v83;
      if (!v83)
      {
        break;
      }

LABEL_10:
      v27 = __clz(__rbit64(v25)) | (v24 << 6);
      v28 = v25;
      v29 = *(v15 + 56);
      v109 = *(*(v15 + 48) + v27);
      v30 = *(v29 + 8 * v27);
      v31 = qword_1EDD0B640;
      sub_1C75504FC();
      if (v31 != -1)
      {
        swift_once();
      }

      v83 = (v28 - 1) & v28;
      v32 = off_1EC21AE90;
      if (*(off_1EC21AE90 + 2) && (v33 = sub_1C6FC296C(), (v34 & 1) != 0))
      {
        (*(v9 + 16))(v12, v32[7] + *(v9 + 72) * v33, v7);
        (*(v9 + 32))(v100, v12, v7);
        v35 = *(v30 + 16);
        if (v35)
        {
          v74 = v15;
          v75 = v12;
          v76 = v9;
          v77 = v7;
          v90 = v1;
          v88 = type metadata accessor for LLMConfigurationProvider();
          v107 = v35 - 1;
          v36 = 32;
          for (i = v30; ; v30 = i)
          {
            v104 = v36;
            memcpy(__dst, (v30 + v36), 0x41uLL);
            v37 = __dst[0];
            v38 = __dst[2];
            v103 = __dst[3];
            v39 = LOBYTE(__dst[4]);
            v101 = __dst[5];
            v40 = __dst[6];
            v102 = __dst[7];
            v105 = LOBYTE(__dst[8]);
            v114 = 0x202D2D2D0A0A0ALL;
            v115 = 0xE700000000000000;
            v41 = v109;
            LOBYTE(v110) = v109;
            LLMModelType.description.getter();
            v43 = v42;
            v45 = v44;
            sub_1C70AE914(__dst, &v112);
            MEMORY[0x1CCA5CD70](v43, v45);

            MEMORY[0x1CCA5CD70](757935392, 0xE400000000000000);
            MEMORY[0x1CCA5CD70](v114, v115);

            v112 = 0;
            v113 = 0xE000000000000000;
            sub_1C755180C();
            OUTLINED_FUNCTION_54_9();
            OUTLINED_FUNCTION_31_10(2108682);
            OUTLINED_FUNCTION_20_19(0xE300000000000000);
            LOBYTE(v114) = v41;
            LLMModelType.description.getter();
            OUTLINED_FUNCTION_47_9();

            OUTLINED_FUNCTION_29_12();
            MEMORY[0x1CCA5CD70]();
            v106 = v37;
            v46 = sub_1C75504BC();
            MEMORY[0x1CCA5CD70](v46);

            OUTLINED_FUNCTION_7_20();

            v112 = 0;
            v113 = 0xE000000000000000;
            sub_1C755180C();
            OUTLINED_FUNCTION_14_20();
            OUTLINED_FUNCTION_29_12();
            MEMORY[0x1CCA5CD70](0xD000000000000017);
            LOBYTE(v114) = v41;
            LLMModelType.description.getter();
            OUTLINED_FUNCTION_47_9();

            OUTLINED_FUNCTION_29_12();
            MEMORY[0x1CCA5CD70]();
            OUTLINED_FUNCTION_7_20();

            OUTLINED_FUNCTION_29_12();
            MEMORY[0x1CCA5CD70]();
            if ((v38 & 1) == 0)
            {
              OUTLINED_FUNCTION_6_30();
              sub_1C755180C();
              OUTLINED_FUNCTION_14_20();
              MEMORY[0x1CCA5CD70](0x7265706D65742D2DLL, 0xEE00206572757461);
              sub_1C7550F5C();
              OUTLINED_FUNCTION_45_9();
              OUTLINED_FUNCTION_7_20();
            }

            v47 = v98;
            if ((v40 & 1) == 0)
            {
              OUTLINED_FUNCTION_6_30();
              sub_1C755180C();
              OUTLINED_FUNCTION_54_9();
              OUTLINED_FUNCTION_31_10(0x6F742D78616D2D2DLL);
              OUTLINED_FUNCTION_20_19(0xED000020736E656BLL);
              OUTLINED_FUNCTION_42_12(&__dst[7]);
              sub_1C7551D8C();
              OUTLINED_FUNCTION_47_9();

              OUTLINED_FUNCTION_45_9();
              OUTLINED_FUNCTION_7_20();
            }

            if ((v105 & 1) == 0)
            {
              OUTLINED_FUNCTION_6_30();
              sub_1C755180C();
              OUTLINED_FUNCTION_54_9();
              OUTLINED_FUNCTION_31_10(0x6D6F646E61722D2DLL);
              OUTLINED_FUNCTION_20_19(0xEE0020646565732DLL);
              OUTLINED_FUNCTION_42_12(&__dst[8]);
              sub_1C7551D8C();
              OUTLINED_FUNCTION_47_9();

              OUTLINED_FUNCTION_45_9();
              OUTLINED_FUNCTION_7_20();
            }

            v48 = v108;
            if (v39 != 255)
            {
              if (v39)
              {
                OUTLINED_FUNCTION_31_10(0x206B2D706F742D2DLL);
                OUTLINED_FUNCTION_20_19(0xE800000000000000);
                OUTLINED_FUNCTION_42_12(&v117);
                sub_1C7551D8C();
                OUTLINED_FUNCTION_47_9();
              }

              else
              {
                OUTLINED_FUNCTION_6_30();
                MEMORY[0x1CCA5CD70](0x20702D706F742D2DLL, 0xE800000000000000);
                sub_1C7550F5C();
              }

              OUTLINED_FUNCTION_45_9();
              v49 = OUTLINED_FUNCTION_9_23();
              MEMORY[0x1CCA5CD70](v49, *(v50 - 256));
            }

            LOBYTE(v112) = v109;
            sub_1C754FF0C();
            v1 = v90;
            static LLMConfigurationProvider.configuration(for:logger:)(&v112, v90, v47);
            if (v48)
            {
              v51 = OUTLINED_FUNCTION_37_14();
              v52(v51);
              OUTLINED_FUNCTION_6_30();
              sub_1C755180C();
              OUTLINED_FUNCTION_14_20();
              OUTLINED_FUNCTION_29_12();
              MEMORY[0x1CCA5CD70]();
              v114 = v48;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
              sub_1C75519EC();
              OUTLINED_FUNCTION_7_20();

              v108 = 0;
            }

            else
            {
              v108 = 0;
              v53 = OUTLINED_FUNCTION_37_14();
              v54(v53);
              OUTLINED_FUNCTION_31_10(0x656C61636F6C2D2DLL);
              OUTLINED_FUNCTION_20_19(0xE900000000000020);
              v55 = v86;
              sub_1C754E04C();
              OUTLINED_FUNCTION_47_9();

              OUTLINED_FUNCTION_45_9();
              OUTLINED_FUNCTION_7_20();

              OUTLINED_FUNCTION_31_10(0x74706D6F72702D2DLL);
              OUTLINED_FUNCTION_20_19(0xEC0000002064692DLL);
              MEMORY[0x1CCA5CD70](*&v1[*(v55 + 28)], *&v1[*(v55 + 28) + 8]);
              OUTLINED_FUNCTION_45_9();
              OUTLINED_FUNCTION_7_20();

              OUTLINED_FUNCTION_6_30();
              sub_1C755180C();
              OUTLINED_FUNCTION_54_9();
              OUTLINED_FUNCTION_31_10(0xD00000000000001ALL);
              OUTLINED_FUNCTION_20_19(v85);
              MEMORY[0x1CCA5CD70](*&v1[*(v55 + 32)], *&v1[*(v55 + 32) + 8]);
              OUTLINED_FUNCTION_45_9();
              OUTLINED_FUNCTION_7_20();

              OUTLINED_FUNCTION_29_12();
              MEMORY[0x1CCA5CD70]();
              sub_1C70AE9EC(v1, type metadata accessor for LLMConfiguration);
            }

            OUTLINED_FUNCTION_29_12();
            MEMORY[0x1CCA5CD70]();
            v112 = 10;
            v113 = 0xE100000000000000;
            v56 = sub_1C75504CC();
            v58 = v57;
            sub_1C70AE984(__dst);
            v114 = v56;
            v115 = v58;
            OUTLINED_FUNCTION_50_7(91);
            OUTLINED_FUNCTION_28_8(123);
            sub_1C6FB5E8C();
            v59 = OUTLINED_FUNCTION_15_23();
            v61 = v60;

            v114 = v59;
            v115 = v61;
            OUTLINED_FUNCTION_50_7(93);
            OUTLINED_FUNCTION_28_8(125);
            v62 = OUTLINED_FUNCTION_15_23();
            v64 = v63;

            v114 = v62;
            v115 = v64;
            v110 = 39;
            v111 = 0xE100000000000000;
            OUTLINED_FUNCTION_28_8(39);
            v65 = OUTLINED_FUNCTION_15_23();
            v67 = v66;

            MEMORY[0x1CCA5CD70](v65, v67);

            v68 = OUTLINED_FUNCTION_9_23();
            MEMORY[0x1CCA5CD70](v68, *(v69 - 256));

            OUTLINED_FUNCTION_29_12();
            MEMORY[0x1CCA5CD70]();
            v112 = 10;
            v113 = 0xE100000000000000;
            v70 = sub_1C754FDAC();
            MEMORY[0x1CCA5CD70](v70);

            v71 = OUTLINED_FUNCTION_9_23();
            MEMORY[0x1CCA5CD70](v71, *(v72 - 256));

            if (!v107)
            {
              break;
            }

            --v107;
            v36 = v104 + 72;
          }

          v7 = v77;
          v9 = v76;
          v12 = v75;
          v15 = v74;
        }

        else
        {
        }

        v18 = v81;
        v22 = (*v78)(v100, v7);
      }

      else
      {

        v18 = v81;
      }
    }

    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v82)
      {

        MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
        v22 = v117;
        v23 = v118;
        goto LABEL_39;
      }

      v25 = *(v18 + 8 * v26);
      ++v24;
      if (v25)
      {
        v24 = v26;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

LABEL_39:
  result.value._object = v23;
  result.value._countAndFlagsBits = v22;
  return result;
}

void sub_1C70AE7A8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -507;
  type metadata accessor for LLMDefaults();
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  static LLMDefaults.backendType.getter((a1 + 40));
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 48) = MEMORY[0x1E69E7CC0];
  *(a1 + 56) = sub_1C75504DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F18, &unk_1C7568670);
  sub_1C70AEC20();
  *(a1 + 64) = sub_1C75504DC();
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v2;
  *(a1 + 96) = v2;
  *(a1 + 104) = v2;
  *(a1 + 112) = v2;
  *(a1 + 120) = v2;
  *(a1 + 128) = v2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = v2;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = OUTLINED_FUNCTION_32_11();
  *(a1 + 184) = OUTLINED_FUNCTION_32_11();
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = OUTLINED_FUNCTION_32_11();
  sub_1C707DA44();
  *(a1 + 232) = v3;
}

uint64_t sub_1C70AE8B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C70AE914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C68, &qword_1C755BDE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C70AE984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C68, &qword_1C755BDE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C70AE9EC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence21PersonalTraitSelectorC15SelectionResultVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C70AEA64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 240))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1C70AEAA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1C70AEB50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF0 && *(a1 + 25))
    {
      v2 = *a1 + 239;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 0x10)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C70AEB90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEF)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 240;
    if (a3 >= 0xF0)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF0)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C70AEBF0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0x10u && ((1 << a4) & 0x18003) != 0)
  {
  }

  return result;
}

unint64_t sub_1C70AEC20()
{
  result = qword_1EC216F20;
  if (!qword_1EC216F20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LLMModelType, &type metadata for LLMModelType, v0, v1);
    atomic_store(result, &qword_1EC216F20);
  }

  return result;
}

void OUTLINED_FUNCTION_24_16()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_32_11()
{

  return sub_1C75504DC();
}

void OUTLINED_FUNCTION_43_10()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_47_9()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_53_11()
{

  return sub_1C70AEBF0(v1, v2, v0, 1u);
}

uint64_t OUTLINED_FUNCTION_54_9()
{
}

id sub_1C70AED68(uint64_t a1)
{
  sub_1C6F774EC(a1, v6);
  v1 = sub_1C6F65BE8(0, &qword_1EDD0CCF8, 0x1E69788F0);
  if (!OUTLINED_FUNCTION_0_40(v1))
  {
    return 0;
  }

  type metadata accessor for TripFetcher();
  v2 = static TripFetcher.basePredicate(using:)();
  v3 = [v2 evaluateWithObject_];

  return v3;
}

id sub_1C70AEE00(uint64_t a1)
{
  sub_1C6F774EC(a1, v6);
  v1 = sub_1C6F65BE8(0, &qword_1EDD069C0, 0x1E6978AD8);
  if (!OUTLINED_FUNCTION_0_40(v1))
  {
    return 0;
  }

  v2 = [objc_opt_self() predicateWithValue_];
  v3 = [v2 evaluateWithObject_];

  return v3;
}

id sub_1C70AEEB4(uint64_t a1)
{
  sub_1C6F774EC(a1, v6);
  v1 = sub_1C6F65BE8(0, &qword_1EDD0CCF8, 0x1E69788F0);
  if (!OUTLINED_FUNCTION_0_40(v1))
  {
    return 0;
  }

  type metadata accessor for EventFetcher();
  v2 = static EventFetcher.basePredicate(using:)();
  v3 = [v2 evaluateWithObject_];

  return v3;
}

uint64_t sub_1C70AEF5C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC216F28);
  __swift_project_value_buffer(v0, qword_1EC216F28);
  return sub_1C754FEFC();
}

uint64_t static TripFetcher.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC213D70 != -1)
  {
    swift_once();
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EC216F28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id static TripFetcher.basePredicate(using:)()
{
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C75604F0;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1C6F6D524();
  *(v0 + 64) = v2;
  strcpy((v0 + 32), "pendingState");
  *(v0 + 45) = 0;
  *(v0 + 46) = -5120;
  v3 = MEMORY[0x1E69E7660];
  *(v0 + 96) = MEMORY[0x1E69E75F8];
  *(v0 + 104) = v3;
  *(v0 + 72) = 2;
  v4 = sub_1C755112C();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C755BAA0;
  *(v5 + 56) = v1;
  *(v5 + 64) = v2;
  *(v5 + 32) = 0x79726F6765746163;
  *(v5 + 40) = 0xE800000000000000;
  v6 = MEMORY[0x1E69E6810];
  v7 = MEMORY[0x1E69E6870];
  *(v5 + 96) = MEMORY[0x1E69E6810];
  *(v5 + 104) = v7;
  *(v5 + 72) = 19;
  *(v5 + 136) = v6;
  *(v5 + 144) = v7;
  *(v5 + 112) = 31;
  v8 = sub_1C755112C();
  sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C7564A90;
  *(v9 + 32) = v4;
  *(v9 + 40) = v8;
  return sub_1C6F6E5C4(v9);
}

id static TripFetcher.fetchCollections(using:)(uint64_t a1)
{
  v2 = *(a1 + 24);
  [v2 setIncludeLocalMemories_];
  sub_1C7065A90(a1);
  v3 = [objc_opt_self() fetchMemoriesWithOptions_];

  return v3;
}

id static PNTripFetcher.supports(collection:)(uint64_t a1)
{
  sub_1C6F774EC(a1, v6);
  v1 = sub_1C6F65BE8(0, &qword_1EDD0CCF8, 0x1E69788F0);
  if (!OUTLINED_FUNCTION_0_40(v1))
  {
    return 0;
  }

  type metadata accessor for TripFetcher();
  v2 = static TripFetcher.basePredicate(using:)();
  v3 = [v2 evaluateWithObject_];

  return v3;
}

id PNTripFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PNTripFetcher.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PNTripFetcher();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PNTripFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PNTripFetcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C70AF530(void *result, uint64_t *a2)
{
  v2 = result;
  v3 = 0;
  v19 = result[2];
  v17 = result + 4;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
LABEL_2:
    if (v3 == v19)
    {

      return v4;
    }

    if (v3 >= v2[2])
    {
      break;
    }

    result = memcpy(__dst, &v17[17 * v3++], 0x88uLL);
    v5 = *a2;
    if (*(*a2 + 16))
    {
      v6 = __dst[0];
      v7 = __dst[1];
      sub_1C7551F3C();
      sub_1C70B5C24(__dst, v20);
      sub_1C75504FC();
      sub_1C75505AC();
      v8 = sub_1C7551FAC();
      v9 = ~(-1 << *(v5 + 32));
      do
      {
        v10 = v8 & v9;
        if (((*(v5 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {

          result = sub_1C70B5C5C(__dst);
          goto LABEL_2;
        }

        v11 = (*(v5 + 48) + 16 * v10);
        if (*v11 == v6 && v11[1] == v7)
        {
          break;
        }

        v13 = sub_1C7551DBC();
        v8 = v10 + 1;
      }

      while ((v13 & 1) == 0);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716DB60(0, *(v4 + 16) + 1, 1);
        v4 = v22;
      }

      v16 = *(v4 + 16);
      v15 = *(v4 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C716DB60(v15 > 1, v16 + 1, 1);
        v4 = v22;
      }

      *(v4 + 16) = v16 + 1;
      result = memcpy((v4 + 136 * v16 + 32), __dst, 0x88uLL);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C70AF724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a1 + 16);
  if (v7)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_1C716E3C0(0, v7, 0);
    v9 = v39;
    v10 = (a1 + 64);
    while (1)
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;
      v31[0] = *(v10 - 4);
      v31[1] = v11;
      v32 = v12;
      v33 = v13;
      v34 = v14;
      sub_1C75504FC();
      v15 = v12;
      sub_1C75504FC();
      sub_1C75504FC();
      v16 = a2;
      sub_1C70B325C(v31, a2, a4, &v35, a3);
      if (v5)
      {
        break;
      }

      v5 = 0;
      v17 = v32;

      v18 = v35;
      v19 = v36;
      v20 = v37;
      v21 = v38;
      v39 = v9;
      v23 = *(v9 + 16);
      v22 = *(v9 + 24);
      if (v23 >= v22 >> 1)
      {
        v27 = v37;
        v28 = v36;
        sub_1C716E3C0((v22 > 1), v23 + 1, 1);
        v20 = v27;
        v19 = v28;
        v9 = v39;
      }

      *(v9 + 16) = v23 + 1;
      v24 = v9 + 48 * v23;
      *(v24 + 32) = v18;
      *(v24 + 40) = v19;
      *(v24 + 56) = v20;
      *(v24 + 72) = v21;
      v10 += 5;
      --v7;
      a2 = v16;
      if (!v7)
      {

        goto LABEL_9;
      }
    }

    v26 = v32;

    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_9:

    return v9;
  }

  return result;
}

uint64_t sub_1C70AF904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v70 = *(a2 + 168);
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v76 = MEMORY[0x1E69E7CC0];
    sub_1C716DB60(0, v4, 0);
    v5 = v76;
    v7 = (a1 + 32);
    v8 = v4;
    do
    {
      memcpy(__dst, v7, 0x68uLL);
      memcpy(__src, v7, sizeof(__src));
      sub_1C6FC061C(__dst, v73);
      sub_1C70B3E58(v73, __src);
      memcpy(v74, __src, 0x68uLL);
      sub_1C70552E0(v74);
      memcpy(v72, v73, 0x88uLL);
      v76 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1C716DB60(v9 > 1, v10 + 1, 1);
        v5 = v76;
      }

      *(v5 + 16) = v10 + 1;
      memcpy((v5 + 136 * v10 + 32), v72, 0x88uLL);
      v7 += 104;
      --v8;
    }

    while (v8);
  }

  v11 = 0;
  v12 = *(v5 + 16) + 1;
  v13 = 160;
  while (--v12)
  {
    v14 = *(v5 + v13);
    v13 += 136;
    v15 = *(v14 + 16);
    v16 = __OFADD__(v11, v15);
    v11 += v15;
    if (v16)
    {
      __break(1u);
      break;
    }
  }

  v17 = sub_1C70B28E4(v5, v70, sub_1C70B023C);

  v22 = v17[2];
  if ((*(v2 + 16) & 1) != 0 || v22 >= v4)
  {
    v24 = *(v2 + 24);
    if (v22 >= v24)
    {
      v69 = v17;
      if (v22)
      {
        v67 = *(v2 + 24);
        v68 = v2;
        v73[0] = MEMORY[0x1E69E7CC0];
        sub_1C6F7ED9C(0, v22, 0, v18, v19, v20, v21);
        v26 = v73[0];
        v27 = v17 + 5;
        do
        {
          v29 = *(v27 - 1);
          v28 = *v27;
          v73[0] = v26;
          v31 = *(v26 + 16);
          v30 = *(v26 + 24);
          sub_1C75504FC();
          if (v31 >= v30 >> 1)
          {
            sub_1C6F7ED9C(v30 > 1, v31 + 1, 1, v32, v33, v34, v35);
            v26 = v73[0];
          }

          *(v26 + 16) = v31 + 1;
          v36 = v26 + 16 * v31;
          *(v36 + 32) = v29;
          *(v36 + 40) = v28;
          v27 += 17;
          --v22;
        }

        while (v22);
        v3 = v68;
        v17 = v69;
        v24 = v67;
      }

      sub_1C706D154();
      v38 = v37;
      v74[0] = v37;
      sub_1C75504FC();
      v39 = v17;
      while (*(v38 + 16) >= v24)
      {
        v40 = v38;
        v41 = v24;

        v42 = sub_1C75504FC();
        v43 = sub_1C70AF530(v42, v74);
        sub_1C70B1880(v43);
        v45 = v44;
        v46 = sub_1C70B1CE4(v44);
        sub_1C70B2480(v45, v46);
        v48 = v47;

        v39 = sub_1C70B28E4(v43, v48, sub_1C70B2AD0);

        sub_1C70B37D0(v39, v70, __dst);
        memcpy(v72, __dst, sizeof(v72));
        memcpy(v73, __dst, sizeof(v73));
        if (sub_1C6F9ED5C(v73) == 1)
        {
          v17 = v69;
          break;
        }

        v49 = v73[17];
        swift_beginAccess();
        if (*(v3 + 120))
        {
          __src[0] = 0;
          __src[1] = 0xE000000000000000;
          sub_1C755180C();
          MEMORY[0x1CCA5CD70](0x2072657470616843, 0xE900000000000060);
          v50 = v73[2];
          v51 = v73[3];
          sub_1C75504FC();
          MEMORY[0x1CCA5CD70](v50, v51);

          MEMORY[0x1CCA5CD70](0x6D73206F6F742060, 0xED000028206C6C61);
          v76 = v49;
          v52 = sub_1C7551D8C();
          MEMORY[0x1CCA5CD70](v52);

          MEMORY[0x1CCA5CD70](0xD000000000000026, 0x80000001C759CB40);
          MEMORY[0x1CCA5CD70](__src[0], __src[1]);
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
        }

        v17 = v69;
        v24 = v41;
        if ((*(v3 + 17) & 1) == 0)
        {

          sub_1C6FB5FC8(v72, &qword_1EC216F40, &unk_1C75687C0);

          sub_1C70B3C8C(v3);
          return 1;
        }

        if (*(v40 + 16) == v41)
        {

          sub_1C6FB5FC8(v72, &qword_1EC216F40, &unk_1C75687C0);

          goto LABEL_15;
        }

        v53 = v73[0];
        v54 = v73[1];
        sub_1C75504FC();
        sub_1C7421CF8(v53, v54);
        sub_1C6FB5FC8(v72, &qword_1EC216F40, &unk_1C75687C0);

        v38 = v74[0];
      }

      if (*(v3 + 18) == 1)
      {
      }

      else
      {

        v39 = sub_1C70AF530(v17, v74);
      }

      v55 = 0;
      v56 = *(v39 + 16);
      v57 = v56 + 1;
      v58 = 160;
      while (--v57)
      {
        v59 = *(v39 + v58);
        v58 += 136;
        v60 = *(v59 + 16);
        v16 = __OFADD__(v55, v60);
        v55 += v60;
        if (v16)
        {
          __break(1u);
          break;
        }
      }

      if (*(v3 + 88) * v11 <= v55)
      {
        if (v56)
        {
          __dst[0] = MEMORY[0x1E69E7CC0];
          sub_1C716D9B8(0, v56, 0);
          v23 = __dst[0];
          v63 = v56 - 1;
          for (i = 32; ; i += 136)
          {
            memcpy(v73, (v39 + i), 0x68uLL);
            sub_1C6FC061C(v73, v72);
            __dst[0] = v23;
            v66 = *(v23 + 16);
            v65 = *(v23 + 24);
            if (v66 >= v65 >> 1)
            {
              sub_1C716D9B8((v65 > 1), v66 + 1, 1);
              v23 = __dst[0];
            }

            *(v23 + 16) = v66 + 1;
            memcpy((v23 + 104 * v66 + 32), v73, 0x68uLL);
            if (!v63)
            {
              break;
            }

            --v63;
          }
        }

        else
        {

          v23 = MEMORY[0x1E69E7CC0];
        }

        sub_1C70B3C8C(v3);
      }

      else
      {

        swift_beginAccess();
        if (*(v3 + 120))
        {
          v72[0] = 0;
          v72[1] = 0xE000000000000000;
          sub_1C755180C();
          MEMORY[0x1CCA5CD70](0xD000000000000023, 0x80000001C759CAF0);
          __dst[0] = v55;
          v61 = sub_1C7551D8C();
          MEMORY[0x1CCA5CD70](v61);

          MEMORY[0x1CCA5CD70](0x20666F2074756F20, 0xE800000000000000);
          __dst[0] = v11;
          v62 = sub_1C7551D8C();
          MEMORY[0x1CCA5CD70](v62);

          MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C759CB20);
          MEMORY[0x1CCA5CD70](v72[0], v72[1]);
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
        }

        sub_1C70B3C8C(v3);
        return 3;
      }
    }

    else
    {
LABEL_15:

      sub_1C70B3C8C(v3);
      return 2;
    }
  }

  else
  {

    sub_1C70B3C8C(v2);
    return 0;
  }

  return v23;
}

void *sub_1C70B0168(const void *a1, uint64_t a2, uint64_t a3)
{
  v3[15] = 0;
  v3[14] = 0;
  sub_1C754FEFC();
  memcpy(v3 + 2, a1, 0x50uLL);
  v3[12] = a2;
  v3[13] = a3;
  if (a3)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  v3[14] = 0;
  v3[15] = v7;

  return v3;
}

void sub_1C70B023C(void *a1@<X0>, void (**a2)(char *, uint64_t)@<X1>, double *a3@<X2>, void *a4@<X8>)
{
  v181 = a4;
  __dst[13] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F50, &unk_1C756D790);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v164 = &v160 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A30, &unk_1C75687E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v165 = &v160 - v10;
  v191 = sub_1C754DFFC();
  v176 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v190 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v161 = &v160 - v13;
  v14 = sub_1C754EF5C();
  v166 = *(v14 - 8);
  v167 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v185 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C754EFBC();
  v162 = *(v16 - 8);
  v163 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v160 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1C754EF7C();
  v19 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v177 = &v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v171 = &v160 - v22;
  v23 = sub_1C754EFDC();
  v168 = *(v23 - 8);
  v169 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v170 = &v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_1C754DD2C();
  v174 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v173 = &v160 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v183 = &v160 - v27;
  memcpy(__dst, a1, 0x68uLL);
  v29 = a1[13];
  v28 = a1[14];
  sub_1C75504FC();
  v192 = a2;
  v193 = v28;
  sub_1C7069A44();
  v194 = v30;
  v32 = __dst[2];
  v31 = __dst[3];
  swift_beginAccess();
  v33 = *(a3 + 15);
  v186 = v31;
  v187 = v32;
  if (v33)
  {
    v201 = 0;
    v202 = 0xE000000000000000;
    sub_1C755180C();

    v201 = 0x2072657470616843;
    v202 = 0xE900000000000027;
    MEMORY[0x1CCA5CD70](v32, v31);
    MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C759CC40);
    MEMORY[0x1CCA5CD70](__dst[6], __dst[7]);
    MEMORY[0x1CCA5CD70](2599, 0xE200000000000000);
    MEMORY[0x1CCA5CD70](v201, v202);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  v199 = MEMORY[0x1E69E7CD0];
  v200 = MEMORY[0x1E69E7CD0];
  sub_1C739C410(v29, v34, v35, v36, v37, v38, v39, v40, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177);
  v203[0] = v41;
  v42 = v197;
  sub_1C70B4760(v203);
  v180 = v42;
  if (!v42)
  {
    v182 = v29;
    v178 = v18;
    v179 = v19;
    v43 = *(v203[0] + 16);
    v197 = a3;
    if (v43)
    {
      v44 = 0;
      v195 = 0;
      v45 = 0;
      v188 = "', fallback shot '";
      v189 = " good shots out of ";
      v172 = v203[0];
      v46 = (v203[0] + 48);
      v196 = xmmword_1C755BAB0;
      while (1)
      {
        v47 = *(v46 - 2);
        v48 = *(v46 - 1);
        v49 = *v46;
        swift_bridgeObjectRetain_n();
        sub_1C75504FC();
        sub_1C739796C(v49);
        if (*(v49 + 16))
        {
          v44 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
            goto LABEL_94;
          }

          sub_1C75504FC();
          sub_1C7069A44();
          v51 = *(v50 + 16);

          v52 = v51 / *(v49 + 16);
          if (v197[4] <= v52)
          {
            if (__OFADD__(v195, 1))
            {
              goto LABEL_92;
            }

            ++v195;
          }

          sub_1C7069A44();
          v54 = v53;

          v55 = sub_1C75504FC();
          sub_1C739796C(v55);
          sub_1C7069A44();
          v57 = *(v56 + 16);

          v58 = *(v54 + 16);

          a3 = v197;
          swift_beginAccess();
          if (*(a3 + 15))
          {
            v59 = v57 / v58;
            v201 = 0;
            v202 = 0xE000000000000000;
            sub_1C755180C();

            v201 = 0x2720746F6873;
            v202 = 0xE600000000000000;
            MEMORY[0x1CCA5CD70](v47, v48);
            MEMORY[0x1CCA5CD70](0x686374616D202C27, 0xEE00206F69746152);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
            v60 = swift_allocObject();
            *(v60 + 16) = v196;
            v61 = MEMORY[0x1E69E63B0];
            *(v60 + 56) = MEMORY[0x1E69E63B0];
            *(v60 + 64) = MEMORY[0x1E69E6438];
            *(v60 + 32) = v52;
            v62 = sub_1C75506BC();
            MEMORY[0x1CCA5CD70](v62);
            a3 = v197;

            MEMORY[0x1CCA5CD70](0xD000000000000016, v189 | 0x8000000000000000);
            v63 = swift_allocObject();
            *(v63 + 16) = v196;
            *(v63 + 56) = v61;
            *(v63 + 64) = MEMORY[0x1E69E6438];
            *(v63 + 32) = v59;
            v64 = sub_1C75506BC();
            MEMORY[0x1CCA5CD70](v64);

            MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
            MEMORY[0x1CCA5CD70](v201, v202);
            swift_endAccess();
          }

          else
          {
            swift_endAccess();
          }

          v45 = v44;
        }

        else
        {

          a3 = v197;
          swift_beginAccess();
          if (*(a3 + 15))
          {
            v201 = 0;
            v202 = 0xE000000000000000;
            sub_1C755180C();

            v201 = 0x2720746F6873;
            v202 = 0xE600000000000000;
            MEMORY[0x1CCA5CD70](v47, v48);
            MEMORY[0x1CCA5CD70](0xD00000000000001ELL, v188 | 0x8000000000000000);
            MEMORY[0x1CCA5CD70](v201, v202);
            swift_endAccess();
          }

          else
          {
            swift_endAccess();
          }
        }

        v46 += 3;
        if (!--v43)
        {

          goto LABEL_22;
        }
      }
    }

    v44 = 0;
    v195 = 0;
LABEL_22:

    swift_beginAccess();
    v65 = v187;
    if (*(a3 + 15))
    {
      v201 = 0;
      v202 = 0xE000000000000000;
      sub_1C755180C();

      v201 = 0x2072657470616843;
      v202 = 0xE900000000000027;
      MEMORY[0x1CCA5CD70](v65, v186);
      MEMORY[0x1CCA5CD70](2108455, 0xE300000000000000);
      v198 = v195;
      v66 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v66);

      MEMORY[0x1CCA5CD70](0xD000000000000013, 0x80000001C759CC80);
      v198 = v44;
      v67 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v67);

      MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
      MEMORY[0x1CCA5CD70](v201, v202);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }

    v68 = v185;
    v69 = v44;
    v70 = ceil(a3[5] * v44);
    if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_94:
      __break(1u);
    }

    else if (v70 > -9.22337204e18)
    {
      if (v70 < 9.22337204e18)
      {
        if (*(a3 + 6) <= v70)
        {
          v71 = v70;
        }

        else
        {
          v71 = *(a3 + 6);
        }

        swift_beginAccess();
        if (*(a3 + 15))
        {
          v201 = 0;
          v202 = 0xE000000000000000;
          sub_1C755180C();

          v201 = 0x2072657470616843;
          v202 = 0xE900000000000027;
          MEMORY[0x1CCA5CD70](v187, v186);
          MEMORY[0x1CCA5CD70](8231, 0xE200000000000000);
          v72 = v195;
          if (v195 >= v71)
          {
            v73 = 0x736573736170;
          }

          else
          {
            v73 = 0x2074276E73656F64;
          }

          if (v195 >= v71)
          {
            v74 = 0xE600000000000000;
          }

          else
          {
            v74 = 0xEC00000073736170;
          }

          MEMORY[0x1CCA5CD70](v73, v74);

          MEMORY[0x1CCA5CD70](0xA7375636F6620, 0xE700000000000000);
          MEMORY[0x1CCA5CD70](v201, v202);
          swift_endAccess();

          v75 = v182;
          v76 = v183;
          v77 = v184;
        }

        else
        {
          swift_endAccess();
          v75 = v182;
          v76 = v183;
          v77 = v184;
          v72 = v195;
        }

        if (v72 >= v71)
        {
          memcpy(v203, __dst, 0x68uLL);
          v203[13] = v75;
          v203[14] = v193;
          *&v203[15] = v72 / v69;
          v203[16] = v200;
          CGRectMake();
          memcpy(v181, v203, 0x88uLL);
          sub_1C75504FC();
          sub_1C6FC061C(__dst, &v201);
        }

        else
        {
          if (*(a3 + 56) != 1)
          {
            goto LABEL_47;
          }

          v78 = objc_opt_self();
          v79 = [*(a3 + 12) photoLibraryURL];
          v80 = v173;
          sub_1C754DCCC();

          v81 = sub_1C754DC8C();
          v82 = v174;
          v172 = *(v174 + 8);
          v173 = v174 + 8;
          v172(v80, v77);
          v203[0] = 0;
          v83 = [v78 requestVUIndexURLForPhotoLibraryURL:v81 error:v203];

          v84 = v203[0];
          if (!v83)
          {
            v92 = v203[0];

            v90 = sub_1C754DBEC();

            swift_willThrow();
            goto LABEL_49;
          }

          sub_1C754DCCC();
          v85 = v84;

          (*(v168 + 104))(v170, *MEMORY[0x1E69E0608], v169);
          v86 = *(v82 + 16);
          v87 = v171;
          v86(v171, v76, v77);
          __swift_storeEnumTagSinglePayload(v87, 0, 1, v77);
          sub_1C754EFFC();
          swift_allocObject();
          v88 = v180;
          v89 = sub_1C754EFCC();
          v90 = v88;
          if (v88)
          {
            v172(v76, v77);

LABEL_49:
            v93 = v90;
            v94 = sub_1C754FEEC();
            v95 = sub_1C755119C();

            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              *v96 = 138412290;
              v98 = v90;
              v99 = _swift_stdlib_bridgeErrorToNSError();
              *(v96 + 4) = v99;
              *v97 = v99;
              _os_log_impl(&dword_1C6F5C000, v94, v95, "Failed to run clustering for chapter validation: %@", v96, 0xCu);
              sub_1C6FB5FC8(v97, &qword_1EC215190, &qword_1C755C730);
              MEMORY[0x1CCA5F8E0](v97, -1, -1);
              MEMORY[0x1CCA5F8E0](v96, -1, -1);
            }

            else
            {
            }

            v91 = v181;
            goto LABEL_53;
          }

          v171 = v89;
          LOBYTE(v203[0]) = 1;
          sub_1C754EF6C();
          (*(v166 + 104))(v68, *MEMORY[0x1E69E05B8], v167);
          v100 = v200 + 56;
          v101 = 1 << *(v200 + 32);
          v102 = -1;
          if (v101 < 64)
          {
            v102 = ~(-1 << v101);
          }

          v103 = v102 & *(v200 + 56);
          v104 = (v101 + 63) >> 6;
          v195 = (v176 + 32);
          v105 = sub_1C75504FC();
          v106 = 0;
          *&v196 = MEMORY[0x1E69E7CC0];
          v107 = v165;
          if (v103)
          {
            while (1)
            {
              v108 = v106;
LABEL_61:
              v103 &= v103 - 1;
              v109 = v105;
              sub_1C75504FC();
              sub_1C754DF7C();

              if (__swift_getEnumTagSinglePayload(v107, 1, v191) == 1)
              {
                sub_1C6FB5FC8(v107, &unk_1EC217A30, &unk_1C75687E0);
              }

              else
              {
                v194 = *v195;
                v194(v161, v107, v191);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1C6FB2B50(0, *(v196 + 16) + 1, 1, v196);
                  *&v196 = v115;
                }

                v110 = v196;
                v112 = *(v196 + 16);
                v111 = *(v196 + 24);
                v113 = (v112 + 1);
                if (v112 >= v111 >> 1)
                {
                  v192 = (v112 + 1);
                  sub_1C6FB2B50(v111 > 1, v112 + 1, 1, v196);
                  v113 = v192;
                }

                *(v110 + 16) = v113;
                v114 = (*(v176 + 80) + 32) & ~*(v176 + 80);
                *&v196 = v110;
                v194(v110 + v114 + *(v176 + 72) * v112, v161, v191);
              }

              v106 = v108;
              v105 = v109;
              if (!v103)
              {
                goto LABEL_58;
              }
            }
          }

          while (1)
          {
LABEL_58:
            v108 = v106 + 1;
            if (__OFADD__(v106, 1))
            {
              goto LABEL_93;
            }

            if (v108 >= v104)
            {
              break;
            }

            v103 = *(v100 + 8 * v108);
            ++v106;
            if (v103)
            {
              goto LABEL_61;
            }
          }

          v170 = v105;

          v116 = v179;
          v117 = v164;
          v118 = v175;
          (*(v179 + 16))(v164, v177, v175);
          __swift_storeEnumTagSinglePayload(v117, 0, 1, v118);
          v119 = v178;
          v120 = v185;
          sub_1C754EFEC();
          v180 = 0;

          sub_1C6FB5FC8(v117, &qword_1EC216F50, &unk_1C756D790);
          (*(v166 + 8))(v120, v167);
          v121 = sub_1C754EF8C();
          v122 = *(v121 + 16);
          v123 = v197;
          v124 = v177;
          if (v122)
          {
            v203[0] = MEMORY[0x1E69E7CC0];
            v174 = v121;
            v185 = v122;
            sub_1C716D5B0(0, v122, 0);
            v125 = v185;
            v126 = v174;
            v127 = 0;
            v128 = v203[0];
            v186 = v174 + 32;
            v194 = (v176 + 16);
            v192 = (v176 + 8);
            do
            {
              if (v127 >= *(v126 + 16))
              {
                goto LABEL_97;
              }

              v129 = *(v186 + 8 * v127);
              v130 = *(v129 + 16);
              if (v130)
              {
                v188 = v127;
                v189 = v128;
                v201 = MEMORY[0x1E69E7CC0];
                sub_1C75504FC();
                sub_1C6F7ED9C(0, v130, 0, v131, v132, v133, v134);
                v135 = v201;
                v136 = (*(v176 + 80) + 32) & ~*(v176 + 80);
                v187 = v129;
                v137 = v129 + v136;
                v138 = *(v176 + 72);
                v195 = *(v176 + 16);
                *&v196 = v138;
                do
                {
                  v139 = v190;
                  v140 = v191;
                  (v195)(v190, v137, v191);
                  v141 = sub_1C754DF8C();
                  v143 = v142;
                  (*v192)(v139, v140);
                  v201 = v135;
                  v149 = *(v135 + 16);
                  v148 = *(v135 + 24);
                  if (v149 >= v148 >> 1)
                  {
                    sub_1C6F7ED9C(v148 > 1, v149 + 1, 1, v144, v145, v146, v147);
                    v135 = v201;
                  }

                  *(v135 + 16) = v149 + 1;
                  v150 = v135 + 16 * v149;
                  *(v150 + 32) = v141;
                  *(v150 + 40) = v143;
                  v137 += v196;
                  --v130;
                }

                while (v130);

                v123 = v197;
                v126 = v174;
                v118 = v175;
                v124 = v177;
                v127 = v188;
                v128 = v189;
                v125 = v185;
              }

              else
              {
                v135 = MEMORY[0x1E69E7CC0];
              }

              v203[0] = v128;
              v152 = *(v128 + 16);
              v151 = *(v128 + 24);
              if (v152 >= v151 >> 1)
              {
                v153 = v127;
                sub_1C716D5B0(v151 > 1, v152 + 1, 1);
                v127 = v153;
                v125 = v185;
                v126 = v174;
                v128 = v203[0];
              }

              ++v127;
              *(v128 + 16) = v152 + 1;
              *(v128 + 8 * v152 + 32) = v135;
              v119 = v178;
              v116 = v179;
            }

            while (v127 != v125);
            v154 = v128;

            v155 = v154;
          }

          else
          {

            v155 = MEMORY[0x1E69E7CC0];
          }

          v156 = 0;
          v157 = *(v155 + 16);
          for (i = 32; v157; --v157)
          {
            if (*(*(v155 + i) + 16) > v156)
            {
              v156 = *(*(v155 + i) + 16);
            }

            i += 8;
          }

          (*(v162 + 8))(v119, v163);
          (*(v116 + 8))(v124, v118);
          v172(v183, v184);
          v159 = v156 / *(v170 + 16);
          if (v123[8] > v159)
          {
LABEL_47:

            v91 = v181;
LABEL_53:
            sub_1C70B5C8C(v203);
            memcpy(v91, v203, 0x88uLL);
            return;
          }

          memcpy(v203, __dst, 0x68uLL);
          v203[13] = v182;
          v203[14] = v193;
          *&v203[15] = v159;
          v203[16] = v170;
          CGRectMake();
          memcpy(v181, v203, 0x88uLL);
          sub_1C75504FC();
          sub_1C6FC061C(__dst, &v201);
        }

        sub_1C75504FC();
        return;
      }

LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
    }

    __break(1u);
    goto LABEL_96;
  }

  __break(1u);
}

void sub_1C70B1880(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v59 = MEMORY[0x1E69E7CC0];
    sub_1C716DB20(0, v1, 0);
    v4 = 0;
    v5 = v59;
    v44 = a1 + 32;
    v43 = v1;
    while (1)
    {
      memcpy(__dst, (v44 + 136 * v4), sizeof(__dst));
      v7 = __dst[13];
      v6 = __dst[14];
      v8 = __dst[7];
      v48 = __dst[6];
      v9 = *(__dst[13] + 16);
      if (v9)
      {
        break;
      }

      sub_1C70B5C24(__dst, v57);
      sub_1C75504FC();
      sub_1C75504FC();
      v10 = v2;
      v34 = v6;
      v35 = v8;
LABEL_25:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA0, &unk_1C7571010);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C755BAB0;
      *(inited + 32) = v48;
      *(inited + 40) = v35;
      *(inited + 48) = v34;
      v37 = v10;
      v38 = *(v10 + 16);
      if (!swift_isUniquelyReferenced_nonNull_native() || (v39 = *(v37 + 24) >> 1, v39 <= v38))
      {
        sub_1C6FB2038();
        v37 = v40;
        v39 = *(v40 + 24) >> 1;
      }

      if (v39 <= *(v37 + 16))
      {
        goto LABEL_40;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA8, &qword_1C755BF30);
      swift_arrayInitWithCopy();

      ++*(v37 + 16);
      sub_1C70B5C5C(__dst);
      v59 = v5;
      v42 = *(v5 + 16);
      v41 = *(v5 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1C716DB20(v41 > 1, v42 + 1, 1);
        v5 = v59;
      }

      ++v4;
      *(v5 + 16) = v42 + 1;
      *(v5 + 8 * v42 + 32) = v37;
      if (v4 == v1)
      {
        return;
      }
    }

    v47 = v5;
    sub_1C70B5C24(__dst, v57);
    v57[0] = v2;
    v45 = v8;
    sub_1C75504FC();
    v46 = v6;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C716DB40(0, v9, 0);
    v10 = v57[0];
    v13 = sub_1C70D4544();
    v14 = 0;
    v56 = v7 + 64;
    v50 = v11;
    v51 = v9;
    v49 = v7 + 72;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v7 + 32))
    {
      v15 = v13 >> 6;
      if ((*(v56 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_35;
      }

      if (*(v7 + 36) != v11)
      {
        goto LABEL_36;
      }

      v53 = v14;
      v54 = v11;
      v52 = v12;
      v16 = (*(v7 + 48) + 16 * v13);
      v17 = v16[1];
      v55 = *v16;
      v18 = v7;
      v19 = *(*(v7 + 56) + 8 * v13);
      v57[0] = v10;
      v20 = *(v10 + 16);
      v21 = *(v10 + 24);
      sub_1C75504FC();
      sub_1C75504FC();
      if (v20 >= v21 >> 1)
      {
        sub_1C716DB40(v21 > 1, v20 + 1, 1);
        v10 = v57[0];
      }

      *(v10 + 16) = v20 + 1;
      v22 = (v10 + 24 * v20);
      v22[4] = v55;
      v22[5] = v17;
      v22[6] = v19;
      v23 = 1 << *(v18 + 32);
      if (v13 >= v23)
      {
        goto LABEL_37;
      }

      v24 = *(v56 + 8 * v15);
      if ((v24 & (1 << v13)) == 0)
      {
        goto LABEL_38;
      }

      v7 = v18;
      if (*(v18 + 36) != v54)
      {
        goto LABEL_39;
      }

      v25 = v24 & (-2 << (v13 & 0x3F));
      if (v25)
      {
        v23 = __clz(__rbit64(v25)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v26 = v51;
        v27 = v53;
      }

      else
      {
        v28 = v10;
        v29 = v15 << 6;
        v30 = v15 + 1;
        v31 = (v49 + 8 * v15);
        v26 = v51;
        v27 = v53;
        while (v30 < (v23 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            sub_1C6F9ED50(v13, v54, v52 & 1);
            v23 = __clz(__rbit64(v32)) + v29;
            goto LABEL_21;
          }
        }

        sub_1C6F9ED50(v13, v54, v52 & 1);
LABEL_21:
        v10 = v28;
      }

      v12 = 0;
      v14 = v27 + 1;
      v13 = v23;
      v11 = v50;
      if (v14 == v26)
      {

        v2 = MEMORY[0x1E69E7CC0];
        v1 = v43;
        v5 = v47;
        v35 = v45;
        v34 = v46;
        goto LABEL_25;
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
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }
}

uint64_t sub_1C70B1CE4(uint64_t a1)
{
  v84 = *MEMORY[0x1E69E9840];
  v59 = *(a1 + 16);
  if (!v59)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = 0;
  v79 = 0;
  v4 = a1 + 32;
  v62 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CD0];
  v80 = xmmword_1C755BAB0;
  v61 = a1 + 32;
LABEL_3:
  v60 = v3 + 1;
  v69 = v3;
  v6 = *(v4 + 8 * v3);
  v83 = v5;
  v7 = *(v6 + 16);
  v65 = v6 + 32;
  sub_1C75504FC();
  v8 = 0;
  v9 = 48;
  while (v7 != v8)
  {
    if (v8 >= *(v6 + 16))
    {
      goto LABEL_39;
    }

    ++v8;
    v10 = sub_1C75504FC();
    sub_1C739796C(v10);
    v9 += 24;
  }

  v11 = v83;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C6FB20F8();
    v62 = v54;
  }

  v12 = *(v62 + 16);
  v13 = v61;
  if (v12 >= *(v62 + 24) >> 1)
  {
    sub_1C6FB20F8();
    v13 = v61;
    v62 = v55;
  }

  v14 = v62;
  *(v62 + 16) = v12 + 1;
  *(v14 + 8 * v12 + 32) = v11;
  if (!v69)
  {
    goto LABEL_33;
  }

  v70 = 0;
  v64 = v6;
  v63 = v7;
LABEL_13:
  if (!v7)
  {
    goto LABEL_32;
  }

  v74 = *(*(v13 + 8 * v70) + 16);
  v15 = sub_1C75504FC();
  v16 = 0;
  v73 = v15;
  v66 = (v15 + 48);
LABEL_15:
  if (v16 >= *(v6 + 16))
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:

    v57 = v79;
    swift_willThrow();

    __break(1u);
  }

  if (!v74)
  {
    goto LABEL_30;
  }

  v67 = v16;
  v17 = (v65 + 24 * v16);
  v18 = v17[1];
  v71 = *v17;
  v72 = v18;
  v19 = v17[2];
  sub_1C75504FC();
  sub_1C75504FC();
  v20 = 0;
  v21 = v66;
  while (1)
  {
    if (v20 >= *(v73 + 16))
    {
      __break(1u);
      return MEMORY[0x1E69E7CC0];
    }

    v22 = *(v21 - 1);
    v77 = *(v21 - 2);
    v23 = *v21;
    v24 = *(v19 + 32);
    v25 = v24 & 0x3F;
    v26 = ((1 << v24) + 63) >> 6;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v27 = v22;
    isStackAllocationSafe = sub_1C75504FC();
    if (v25 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
    {
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      sub_1C71FAC38(0, v26, &v58 - ((8 * v26 + 15) & 0x3FFFFFFFFFFFFFF0));
      v29 = v79;
      sub_1C70A9104(&v58 - ((8 * v26 + 15) & 0x3FFFFFFFFFFFFFF0), v26, v19, v23);
      v79 = v29;
      if (v29)
      {
        goto LABEL_40;
      }

      v31 = v30;

      goto LABEL_22;
    }

    v52 = swift_slowAlloc();
    sub_1C75504FC();
    sub_1C75504FC();
    v53 = v79;
    v31 = sub_1C70A9074(v52, v26, v19, v23);

    v79 = v53;
    if (v53)
    {
      break;
    }

    MEMORY[0x1CCA5F8E0](v52, -1, -1);
LABEL_22:
    swift_beginAccess();
    if (*(v2 + 120))
    {
      v81 = 0;
      v82 = 0xE000000000000000;
      v78 = v31;
      sub_1C755180C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v32 = swift_allocObject();
      *(v32 + 16) = v80;
      v33 = MEMORY[0x1E69E6530];
      *(v32 + 56) = MEMORY[0x1E69E6530];
      *(v32 + 64) = MEMORY[0x1E69E65A8];
      *(v32 + 32) = v69;
      v75 = v20;
      v76 = v21;
      v34 = v27;
      v35 = sub_1C75506BC();
      v37 = v36;

      v81 = v35;
      v82 = v37;
      MEMORY[0x1CCA5CD70](2127904, 0xE300000000000000);
      v38 = swift_allocObject();
      *(v38 + 16) = v80;
      *(v38 + 56) = v33;
      v39 = MEMORY[0x1E69E65A8];
      *(v38 + 64) = MEMORY[0x1E69E65A8];
      *(v38 + 32) = v70;
      v40 = v34;
      v20 = v75;
      v21 = v76;
      v41 = sub_1C75506BC();
      MEMORY[0x1CCA5CD70](v41);

      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v42 = swift_allocObject();
      *(v42 + 16) = v80;
      v43 = *(v19 + 16);
      v44 = MEMORY[0x1E69E6530];
      *(v42 + 56) = MEMORY[0x1E69E6530];
      *(v42 + 64) = v39;
      *(v42 + 32) = v43;
      v45 = sub_1C75506BC();
      MEMORY[0x1CCA5CD70](v45);

      MEMORY[0x1CCA5CD70](2127904, 0xE300000000000000);
      v46 = swift_allocObject();
      *(v46 + 16) = v80;
      v47 = *(v23 + 16);
      *(v46 + 56) = v44;
      *(v46 + 64) = v39;
      *(v46 + 32) = v47;
      v48 = sub_1C75506BC();
      MEMORY[0x1CCA5CD70](v48);

      MEMORY[0x1CCA5CD70](2112800, 0xE300000000000000);
      v49 = swift_allocObject();
      *(v49 + 16) = v80;
      v50 = v78[2];
      *(v49 + 56) = v44;
      *(v49 + 64) = v39;
      *(v49 + 32) = v50;
      v51 = sub_1C75506BC();
      MEMORY[0x1CCA5CD70](v51);

      MEMORY[0x1CCA5CD70](2108704, 0xE300000000000000);
      MEMORY[0x1CCA5CD70](v71, v72);
      MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
      MEMORY[0x1CCA5CD70](v77, v40);
      MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
      v2 = v68;
      MEMORY[0x1CCA5CD70](v81, v82);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }

    ++v20;

    v21 += 3;
    if (v74 == v20)
    {

      v6 = v64;
      v7 = v63;
      v16 = v67;
LABEL_30:
      if (++v16 == v7)
      {

        v13 = v61;
LABEL_32:
        if (++v70 == v69)
        {
LABEL_33:

          v3 = v60;
          v4 = v61;
          v5 = MEMORY[0x1E69E7CD0];
          if (v60 == v59)
          {
            return v62;
          }

          goto LABEL_3;
        }

        goto LABEL_13;
      }

      goto LABEL_15;
    }
  }

  result = MEMORY[0x1CCA5F8E0](v52, -1, -1);
  __break(1u);
  return result;
}

void sub_1C70B2480(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = v2;
    v5 = a2;
    v6 = 0;
    v7 = a1 + 32;
    v8 = a2 + 32;
    v50 = a2 + 32;
    v39 = a1 + 32;
    v40 = v4;
    v48 = *(a1 + 16);
    while (1)
    {
      v9 = *(v7 + 8 * v6);
      v42 = *(v9 + 16);
      if (v42)
      {
        break;
      }

LABEL_33:
      if (++v6 == v3)
      {
        return;
      }
    }

    v10 = *(v4 + 72);
    v43 = v9 + 32;
    sub_1C75504FC();
    v11 = 0;
    v49 = v6;
    v41 = v9;
    while (v11 < *(v9 + 16))
    {
      v12 = (v43 + 24 * v11);
      v13 = v12[1];
      v44 = *v12;
      v14 = v12[2];
      v47 = v11 + 1;
      swift_bridgeObjectRetain_n();
      v45 = v13;
      sub_1C75504FC();
      v15 = 0;
      v46 = v14;
      do
      {
        if (v15 != v6)
        {
          if (v15 >= *(v5 + 16))
          {
            goto LABEL_36;
          }

          v16 = *(v8 + 8 * v15);
          v17 = *(v14 + 16);
          if (*(v16 + 16) <= v17 >> 3)
          {
            v51 = v14;
            if (v17)
            {
              v19 = v5;
              v20 = 1 << *(v16 + 32);
              if (v20 < 64)
              {
                v21 = ~(-1 << v20);
              }

              else
              {
                v21 = -1;
              }

              v22 = v21 & *(v16 + 56);
              v23 = (v20 + 63) >> 6;
              swift_bridgeObjectRetain_n();
              v24 = 0;
              while (v22)
              {
                v25 = v24;
LABEL_21:
                v26 = __clz(__rbit64(v22));
                v22 &= v22 - 1;
                v27 = (*(v16 + 48) + ((v25 << 10) | (16 * v26)));
                v29 = *v27;
                v28 = v27[1];
                sub_1C75504FC();
                sub_1C7421CF8(v29, v28);
              }

              while (1)
              {
                v25 = v24 + 1;
                if (__OFADD__(v24, 1))
                {
                  break;
                }

                if (v25 >= v23)
                {

                  v14 = v51;
                  v5 = v19;
                  v3 = v48;
                  v6 = v49;
                  v8 = v50;
                  goto LABEL_24;
                }

                v22 = *(v16 + 56 + 8 * v25);
                ++v24;
                if (v22)
                {
                  v24 = v25;
                  goto LABEL_21;
                }
              }

              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }
          }

          else
          {
            sub_1C75504FC();
            sub_1C74C35FC();
            v14 = v18;
          }
        }

LABEL_24:
        ++v15;
      }

      while (v15 != v3);
      v4 = v40;
      swift_beginAccess();
      if (*(v40 + 120))
      {
        MEMORY[0x1CCA5CD70](v44, v45);
        MEMORY[0x1CCA5CD70](2112039, 0xE300000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1C755BAB0;
        v31 = v46;
        v32 = *(v46 + 16);
        *(v30 + 56) = MEMORY[0x1E69E6530];
        *(v30 + 64) = MEMORY[0x1E69E65A8];
        *(v30 + 32) = v32;
        v33 = sub_1C75506BC();
        MEMORY[0x1CCA5CD70](v33);

        MEMORY[0x1CCA5CD70](540945696, 0xE400000000000000);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1C755BAB0;
        v35 = *(v14 + 16);
        *(v34 + 56) = MEMORY[0x1E69E6530];
        *(v34 + 64) = MEMORY[0x1E69E65A8];
        *(v34 + 32) = v35;
        v36 = sub_1C75506BC();
        MEMORY[0x1CCA5CD70](v36);

        MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
        MEMORY[0x1CCA5CD70](39, 0xE100000000000000);
        swift_endAccess();

        v9 = v41;
      }

      else
      {
        swift_endAccess();
        v9 = v41;
        v31 = v46;
      }

      v11 = v47;

      v37 = *(v14 + 16);
      v38 = *(v31 + 16);

      if (v10 <= v37 / v38)
      {
        sub_1C739796C(v14);
      }

      else
      {
      }

      v8 = v50;
      if (v47 == v42)
      {

        v7 = v39;
        goto LABEL_33;
      }
    }

LABEL_37:
    __break(1u);
  }
}

uint64_t sub_1C70B28E4(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, _BYTE *, uint64_t, uint64_t))
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  for (i = (a1 + 32); v6; --v6)
  {
    memcpy(__dst, i, 0x88uLL);
    memcpy(__src, i, sizeof(__src));
    sub_1C70B5C24(__dst, v17);
    a3(v17, __src, a2, v3);
    memcpy(v15, __src, sizeof(v15));
    sub_1C70B5C5C(v15);
    memcpy(v16, v17, 0x88uLL);
    if (sub_1C6F9ED5C(v16) == 1)
    {
      memcpy(v14, v17, sizeof(v14));
      sub_1C6FB5FC8(v14, &qword_1EC216F48, &unk_1C75687D0);
    }

    else
    {
      memcpy(v14, v17, sizeof(v14));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1F84();
        v7 = v10;
      }

      v9 = *(v7 + 16);
      if (v9 >= *(v7 + 24) >> 1)
      {
        sub_1C6FB1F84();
        v7 = v11;
      }

      memcpy(v13, v14, sizeof(v13));
      *(v7 + 16) = v9 + 1;
      memcpy((v7 + 136 * v9 + 32), v13, 0x88uLL);
    }

    i += 136;
  }

  return v7;
}

uint64_t sub_1C70B2AD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v101 = a1[2];
  v103 = *a1;
  v112 = a1[3];
  v114 = a1[1];
  HIDWORD(v99) = *(a1 + 32);
  v7 = a1[5];
  v96 = a1[7];
  v97 = a1[6];
  v116 = a1[8];
  v106 = a1[9];
  v108 = a1[10];
  v8 = a1[15];
  v131 = MEMORY[0x1E69E7CD0];
  sub_1C75504FC();

  v127 = a2;
  v95 = a3;
  v9 = sub_1C70AF724(v7, a2, &v131, a3);
  v105 = v4;
  v10 = *(v9 + 16);
  v117 = v9;
  if (v10)
  {
    __src[0] = MEMORY[0x1E69E7CC0];
    sub_1C716E374(0, v10, 0);
    v11 = __src[0];
    v12 = (v9 + 64);
    do
    {
      v13 = *(v12 - 4);
      v14 = *(v12 - 3);
      v15 = *(v12 - 2);
      v16 = *(v12 - 1);
      v17 = *v12;
      __src[0] = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      v122 = v13;
      v125 = v19 + 1;
      sub_1C75504FC();
      v20 = v15;
      sub_1C75504FC();
      sub_1C75504FC();
      if (v19 >= v18 >> 1)
      {
        sub_1C716E374(v18 > 1, v125, 1);
        v11 = __src[0];
      }

      *(v11 + 16) = v125;
      v21 = (v11 + 40 * v19);
      v21[4] = v122;
      v21[5] = v14;
      v21[6] = v20;
      v21[7] = v16;
      v21[8] = v17;
      v12 += 6;
      --v10;
    }

    while (v10);
    v93 = v11;
    v9 = v117;
    v118 = *(v117 + 16);
  }

  else
  {
    v93 = MEMORY[0x1E69E7CC0];
    v118 = 0;
  }

  v22 = 0;
  v23 = MEMORY[0x1E69E7CC8];
  v24 = (v9 + 72);
  while (v118 != v22)
  {
    if (v22 >= *(v9 + 16))
    {
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
LABEL_65:
      result = sub_1C7551E4C();
      __break(1u);
      return result;
    }

    v119 = v22;
    v25 = *(v24 - 5);
    v26 = *(v24 - 4);
    v27 = *(v24 - 3);
    v28 = *v24;
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    v123 = v27;
    sub_1C75504FC();
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    __src[0] = v23;
    v29 = sub_1C6F78124(v25, v26);
    if (__OFADD__(v23[2], (v30 & 1) == 0))
    {
      goto LABEL_58;
    }

    v31 = v29;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280, &qword_1C756C8F0);
    if (sub_1C7551A2C())
    {
      v33 = sub_1C6F78124(v25, v26);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_65;
      }

      v31 = v33;
    }

    v23 = __src[0];
    if (v32)
    {
      *(*(__src[0] + 56) + 8 * v31) = v28;
    }

    else
    {
      *(__src[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v35 = (v23[6] + 16 * v31);
      *v35 = v25;
      v35[1] = v26;
      *(v23[7] + 8 * v31) = v28;

      v36 = v23[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_63;
      }

      v23[2] = v38;
    }

    v24 += 6;
    v22 = v119 + 1;
    v9 = v117;
  }

  v120 = v23;

  v39 = [v116 fetchedObjects];
  v40 = MEMORY[0x1E69E7CC0];
  if (v39)
  {
    v41 = v39;
    sub_1C6FDEC1C();
    v42 = sub_1C7550B5C();
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

  v130 = v40;
  v43 = sub_1C6FB6304();
  v44 = 0;
  v124 = v42 & 0xFFFFFFFFFFFFFF8;
  v126 = v42 & 0xC000000000000001;
  v121 = v42;
  v45 = v42 + 32;
  v46 = v127;
LABEL_24:
  while (v44 != v43)
  {
    if (v126)
    {
      v47 = MEMORY[0x1CCA5DDD0](v44, v121);
    }

    else
    {
      if (v44 >= *(v124 + 16))
      {
        goto LABEL_60;
      }

      v47 = *(v45 + 8 * v44);
    }

    v48 = v47;
    v37 = __OFADD__(v44++, 1);
    if (v37)
    {
      goto LABEL_59;
    }

    v49 = sub_1C70CAC04(v47);
    if (!v50)
    {
      goto LABEL_64;
    }

    v51 = v50;
    if (*(v46 + 16))
    {
      v52 = v49;
      sub_1C7551F3C();
      sub_1C75505AC();
      v53 = sub_1C7551FAC();
      v54 = ~(-1 << *(v46 + 32));
      while (1)
      {
        v55 = v53 & v54;
        if (((*(v127 + 56 + (((v53 & v54) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v53 & v54)) & 1) == 0)
        {
          break;
        }

        v56 = (*(v127 + 48) + 16 * v55);
        if (*v56 != v52 || v51 != v56[1])
        {
          v58 = sub_1C7551DBC();
          v53 = v55 + 1;
          if ((v58 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
        v46 = v127;
        goto LABEL_24;
      }

      v46 = v127;
    }

    else
    {
    }
  }

  v59 = v130;
  v60 = sub_1C6FB6304();
  v61 = 0;
  v62 = MEMORY[0x1E69E7CC0];
  while (v60 != v61)
  {
    if ((v59 & 0xC000000000000001) != 0)
    {
      v63 = MEMORY[0x1CCA5DDD0](v61, v59);
    }

    else
    {
      if (v61 >= *(v59 + 16))
      {
        goto LABEL_62;
      }

      v63 = *(v59 + 8 * v61 + 32);
    }

    v64 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_61;
    }

    v65 = v63;
    v66 = [v65 uuid];
    if (v66)
    {
      v67 = v66;
      v128 = sub_1C755068C();
      v69 = v68;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v62 = v72;
      }

      v70 = *(v62 + 16);
      if (v70 >= *(v62 + 24) >> 1)
      {
        sub_1C6FB1814();
        v62 = v73;
      }

      *(v62 + 16) = v70 + 1;
      v71 = v62 + 16 * v70;
      *(v71 + 32) = v128;
      *(v71 + 40) = v69;
      v61 = v64;
    }

    else
    {

      ++v61;
    }
  }

  sub_1C706D154();
  v75 = v74;
  v76 = *(v95 + 96);
  sub_1C6FDEC1C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v78 = v96;
  sub_1C75504FC();
  sub_1C739D74C(ObjCClassFromMetadata);
  sub_1C71BA830(v59, v86, v87, v79, v80, v81, v82, v83, v84, v85, v92, v93, v95, v96, v97, v99, v101, v103, v105, v106, v108, a4, v112, v114, v116, v117);

  v88 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v89 = v76;
  sub_1C71C8A5C();
  __src[0] = v104;
  __src[1] = v115;
  __src[2] = v102;
  __src[3] = v113;
  LOBYTE(__src[4]) = v100;
  __src[5] = v94;
  __src[6] = v98;
  __src[7] = v78;
  __src[8] = v90;
  __src[9] = v107;
  __src[10] = v109;
  __src[11] = 0;
  __src[12] = 0;
  __src[13] = v120;
  __src[14] = v75;
  __src[15] = v8;
  __src[16] = v131;
  CGRectMake();
  memcpy(__dsta, __src, 0x88uLL);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  return sub_1C75504FC();
}

void sub_1C70B325C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>, uint64_t a5@<X2>)
{
  v8 = *a1;
  v92 = a1[3];
  v94 = a1[1];
  v90 = a1[4];
  v9 = [a1[2] fetchedObjects];
  v10 = MEMORY[0x1E69E7CC0];
  v84 = v5;
  v86 = a3;
  v87 = v8;
  if (v9)
  {
    v11 = v9;
    sub_1C6FDEC1C();
    v12 = sub_1C7550B5C();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v107 = v10;
  v13 = sub_1C6FB6304();
  v14 = 0;
  v98 = v12 & 0xFFFFFFFFFFFFFF8;
  v89 = v12;
  v97 = v12 + 32;
LABEL_5:
  while (v14 != v13)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1CCA5DDD0](v14, v12);
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v15 = *(v97 + 8 * v14);
    }

    v16 = v15;
    if (__OFADD__(v14++, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v18 = sub_1C70CAC04(v15);
    if (!v19)
    {
      goto LABEL_58;
    }

    v20 = v19;
    if (*(a2 + 16))
    {
      v21 = v18;
      sub_1C7551F3C();
      sub_1C75505AC();
      v22 = sub_1C7551FAC();
      v23 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v24 = v22 & v23;
        if (((*(a2 + 56 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
        {
          break;
        }

        v25 = (*(a2 + 48) + 16 * v24);
        if (*v25 != v21 || v20 != v25[1])
        {
          v27 = sub_1C7551DBC();
          v22 = v24 + 1;
          if ((v27 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
        goto LABEL_5;
      }
    }
  }

  v28 = sub_1C6FB6304();
  if (v28)
  {
    v33 = v28;
    v103 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v28 & ~(v28 >> 63), 0, v29, v30, v31, v32);
    if ((v33 & 0x8000000000000000) == 0)
    {
      v34 = 0;
      v35 = v103;
      v36 = v107 & 0xC000000000000001;
      v100 = v107 & 0xC000000000000001;
      while (1)
      {
        v37 = v36 ? MEMORY[0x1CCA5DDD0](v34, v107) : *(v107 + 8 * v34 + 32);
        v38 = v37;
        v39 = [v38 uuid];
        if (v39)
        {
          v40 = v39;
          v41 = sub_1C755068C();
          v43 = v42;
        }

        else
        {
          v41 = 0;
          v43 = 0;
        }

        if (!v43)
        {
          goto LABEL_56;
        }

        v102 = v35;
        v49 = *(v35 + 16);
        v48 = *(v35 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1C6F7ED9C(v48 > 1, v49 + 1, 1, v44, v45, v46, v47);
        }

        ++v34;
        *(v35 + 16) = v49 + 1;
        v50 = v35 + 16 * v49;
        *(v50 + 32) = v41;
        *(v50 + 40) = v43;
        v36 = v107 & 0xC000000000000001;
        if (v33 == v34)
        {
          goto LABEL_37;
        }
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    return;
  }

  v100 = v107 & 0xC000000000000001;
  v35 = MEMORY[0x1E69E7CC0];
LABEL_37:
  sub_1C73978C4(v35);
  v51 = *(v86 + 96);
  sub_1C6FDEC1C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v53 = v94;
  sub_1C75504FC();
  sub_1C739D74C(ObjCClassFromMetadata);
  sub_1C71BA830(v107, v61, v62, v54, v55, v56, v57, v58, v59, v60, v84, a5, v86, v87, v89, v90, v92, v94, a4, v97, v98, v100, v102, v104, v105, v106);
  v63 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v64 = v51;
  sub_1C71C8A5C();
  v66 = v65;
  *v96 = v88;
  v96[1] = v53;
  v96[2] = v65;
  v96[3] = v93;
  v96[4] = v91;
  v67 = sub_1C6FB6304();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1C75504FC();
  v99 = v66;
  v68 = 0;
  v69 = MEMORY[0x1E69E7CC0];
  while (v67 != v68)
  {
    if (v101)
    {
      v70 = MEMORY[0x1CCA5DDD0](v68, v107);
    }

    else
    {
      if (v68 >= *(v107 + 16))
      {
        goto LABEL_55;
      }

      v70 = *(v107 + 8 * v68 + 32);
    }

    v71 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      goto LABEL_54;
    }

    v72 = v70;
    v73 = [v72 uuid];
    if (v73)
    {
      v74 = v73;
      v75 = sub_1C755068C();
      v77 = v76;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v69 = v80;
      }

      v78 = *(v69 + 16);
      if (v78 >= *(v69 + 24) >> 1)
      {
        sub_1C6FB1814();
        v69 = v81;
      }

      *(v69 + 16) = v78 + 1;
      v79 = v69 + 16 * v78;
      *(v79 + 32) = v75;
      *(v79 + 40) = v77;
      v68 = v71;
    }

    else
    {

      ++v68;
    }
  }

  sub_1C706D154();
  v83 = v82;

  v96[5] = v83;
}

void sub_1C70B37D0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v33 = a3;
  v6 = 0;
  v39 = 0;
  v44[17] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  v35 = "yChapterValidator.swift";
  v8 = a1 + 32;
  v34 = MEMORY[0x1E69E7CC0];
  v37 = a1 + 32;
LABEL_2:
  v9 = (v8 + 136 * v6);
  while (v7 != v6)
  {
    if (v6 >= v7)
    {
      __break(1u);
LABEL_26:
      __break(1u);
    }

    memcpy(v44, v9, 0x88uLL);
    if (__OFADD__(v6, 1))
    {
      goto LABEL_26;
    }

    v38 = v9;
    v36 = v6 + 1;
    v10 = v7;
    v11 = v44[16];
    v12 = *(v44[16] + 32);
    v13 = v12 & 0x3F;
    v14 = ((1 << v12) + 63) >> 6;
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    if (v13 > 0xD)
    {
      sub_1C70B5C24(v44, v43);
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v16 = swift_slowAlloc();
        sub_1C75504FC();
        sub_1C75504FC();
        v24 = v14;
        v25 = v39;
        v21 = sub_1C70A9074(v16, v24, v11, a2);

        v39 = v25;
        if (v25)
        {
          goto LABEL_28;
        }

        MEMORY[0x1CCA5F8E0](v16, -1, -1);
        goto LABEL_10;
      }
    }

    else
    {
      isStackAllocationSafe = sub_1C70B5C24(v44, v43);
    }

    v16 = &v32;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v17 = &v32 - ((8 * v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1C71FAC38(0, v14, v17);
    v18 = v14;
    v19 = v39;
    sub_1C70A9104(v17, v18, v11, a2);
    v39 = v19;
    if (v19)
    {

      v31 = v39;
      v25 = v39;
      swift_willThrow();

      __break(1u);
LABEL_28:

      MEMORY[0x1CCA5F8E0](v16, -1, -1);
      __break(1u);
      goto LABEL_29;
    }

    v21 = v20;

LABEL_10:
    v7 = v10;
    swift_beginAccess();
    v8 = v37;
    if (*(v4 + 120))
    {
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_1C755180C();

      v41 = 0x2072657470616843;
      v42 = 0xE900000000000027;
      MEMORY[0x1CCA5CD70](v44[2], v44[3]);
      MEMORY[0x1CCA5CD70](2112039, 0xE300000000000000);
      v40 = v21[2];
      v22 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v22);

      MEMORY[0x1CCA5CD70](0xD00000000000001BLL, v35 | 0x8000000000000000);
      MEMORY[0x1CCA5CD70](v41, v42);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
    }

    v23 = v21[2];
    if (v23 < *(v4 + 80))
    {

      v26 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB21AC();
        v26 = v29;
      }

      v27 = *(v26 + 16);
      if (v27 >= *(v26 + 24) >> 1)
      {
        sub_1C6FB21AC();
        v26 = v30;
      }

      memcpy(v43, v44, sizeof(v43));
      *(v26 + 16) = v27 + 1;
      v34 = v26;
      v28 = v26 + 144 * v27;
      memcpy((v28 + 32), v43, 0x88uLL);
      *(v28 + 168) = v23;
      v6 = v36;
      goto LABEL_2;
    }

    sub_1C70B5C5C(v44);

    ++v6;
    v9 = v38 + 136;
  }

  v44[0] = v34;
  sub_1C75504FC();
  v25 = v39;
  sub_1C70B46BC(v44);
  if (!v25)
  {

    sub_1C710D4D4(v44[0], v33);

    return;
  }

LABEL_29:

  __break(1u);
}

double sub_1C70B3C8C(void *a1)
{
  v2 = sub_1C75506DC();
  v3 = *(v2 - 8);
  *&result = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[13])
  {

    if (sub_1C71656D8(v7))
    {
      swift_beginAccess();
      if (a1[15])
      {
        sub_1C75504FC();
        sub_1C75506CC();
        v8 = sub_1C755069C();
        v10 = v9;

        (*(v3 + 8))(v6, v2);
        if (v10 >> 60 != 15)
        {
          sub_1C7161C08();
          sub_1C70B5C10(v8, v10);
        }
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t *sub_1C70B3E58@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>)
{
  v3 = v2;
  memcpy(__dst, __src, 0x68uLL);
  v4 = 0;
  v5 = __dst[5];
  v52 = MEMORY[0x1E69E7CC8];
  v6 = *(__dst[5] + 16);
  v7 = (__dst[5] + 64);
  while (v6 != v4)
  {
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:

      v42 = v48;

      __break(1u);
      return result;
    }

    v9 = *(v7 - 1);
    v8 = *v7;
    v10 = *(v7 - 3);
    v11 = *(v7 - 2);
    v47[0] = *(v7 - 4);
    v47[1] = v10;
    v48 = v11;
    v49 = v9;
    v50 = v8;
    sub_1C75504FC();
    v12 = v11;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C70B4210(&v52, v47);
    if (v3)
    {
      goto LABEL_38;
    }

    ++v4;
    v13 = v48;

    v7 += 5;
  }

  v14 = v52;
  v15 = [__dst[8] fetchedObjects];
  v44 = v14;
  if (v15)
  {
    v16 = v15;
    sub_1C6FDEC1C();
    v17 = sub_1C7550B5C();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = sub_1C6FB6304();
  v19 = 0;
  v46 = MEMORY[0x1E69E7CC0];
  while (v18 != v19)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1CCA5DDD0](v19, v17);
    }

    else
    {
      if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v20 = *(v17 + 8 * v19 + 32);
    }

    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_36;
    }

    v22 = v20;
    v23 = [v22 uuid];
    if (v23)
    {
      v24 = v23;
      v25 = sub_1C755068C();
      v43 = v26;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v46 = v29;
      }

      v27 = *(v46 + 16);
      if (v27 >= *(v46 + 24) >> 1)
      {
        sub_1C6FB1814();
        v46 = v30;
      }

      *(v46 + 16) = v27 + 1;
      v28 = v46 + 16 * v27;
      *(v28 + 32) = v25;
      *(v28 + 40) = v43;
      v19 = v21;
    }

    else
    {

      ++v19;
    }
  }

  sub_1C706D154();
  v32 = v31;
  v47[0] = MEMORY[0x1E69E7CD0];
  v33 = 1 << *(v44 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v44 + 64);
  v36 = (v33 + 63) >> 6;
  sub_1C75504FC();
  v37 = 0;
  if (v35)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v38 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_35;
    }

    if (v38 >= v36)
    {
      break;
    }

    v35 = *(v44 + 64 + 8 * v38);
    ++v37;
    if (v35)
    {
      v37 = v38;
      do
      {
LABEL_31:
        v35 &= v35 - 1;
        v39 = sub_1C75504FC();
        sub_1C739796C(v39);
      }

      while (v35);
      continue;
    }
  }

  v40 = v47[0];
  memcpy(a1, __dst, 0x68uLL);
  a1[13] = v44;
  a1[14] = v32;
  a1[15] = 0x3FF0000000000000;
  a1[16] = v40;
  return sub_1C6FC061C(__dst, v47);
}

void sub_1C70B4210(uint64_t *a1, uint64_t a2)
{
  v22 = *(a2 + 8);
  v23 = *a2;
  v2 = [*(a2 + 16) fetchedObjects];
  if (v2)
  {
    v3 = v2;
    sub_1C6FDEC1C();
    v4 = sub_1C7550B5C();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1C6FB6304();
  v6 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v6)
    {

      sub_1C706D154();
      v19 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *a1;
      sub_1C6FC7D38(v19, v23, v22, isUniquelyReferenced_nonNull_native);
      *a1 = v26;
      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1CCA5DDD0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    v9 = v7;
    v10 = [v9 uuid];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1C755068C();
      v21 = v13;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v25 = v16;
      }

      v14 = *(v25 + 16);
      if (v14 >= *(v25 + 24) >> 1)
      {
        sub_1C6FB1814();
        v25 = v17;
      }

      *(v25 + 16) = v14 + 1;
      v15 = v25 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v21;
      v6 = v8;
    }

    else
    {

      ++v6;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t FreeformStoryChapterValidator.deinit()
{

  v1 = OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryChapterValidator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t FreeformStoryChapterValidator.__deallocating_deinit()
{
  FreeformStoryChapterValidator.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FreeformStoryChapterValidator(uint64_t a1)
{
  result = qword_1EDD08178;
  if (!qword_1EDD08178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C70B4534(uint64_t a1)
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

uint64_t sub_1C70B4608(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[80])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1C70B4654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C70B46BC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422ABC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C70B4804(v6, &qword_1EC214D90, &unk_1C7570FF0, sub_1C70B4B14, sub_1C70B4920);
  *a1 = v2;
  return result;
}

uint64_t sub_1C70B4760(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422BC4();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C70B4804(v6, &qword_1EC216F58, &qword_1C7577D90, sub_1C70B5198, sub_1C70B4A38);
  *a1 = v2;
  return result;
}

uint64_t sub_1C70B4804(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_1C7551D7C();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v14 = sub_1C7550BBC();
        *(v14 + 16) = v13;
      }

      v15[0] = v14 + 32;
      v15[1] = v13;
      a4(v15, v16, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_1C70B4920(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 144 * a3 - 144;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        v11 = *(v10 + 264);
        v12 = *(v10 + 120);
        if (v11 == v12)
        {
          v13 = *(v10 + 280);
          v14 = *(v10 + 136);
          if (v13 == v14)
          {
            result = *(v10 + 160);
            if (result == *(v10 + 16) && *(v10 + 168) == *(v10 + 24))
            {
              break;
            }

            result = sub_1C7551DBC();
            if ((result & 1) == 0)
            {
              break;
            }
          }

          else if (v13 >= v14)
          {
            break;
          }
        }

        else if (v11 >= v12)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(v17, (v10 + 144), sizeof(v17));
        memcpy((v10 + 144), v10, 0x90uLL);
        result = memcpy(v10, v17, 0x90uLL);
        v10 -= 144;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 144;
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

uint64_t sub_1C70B4A38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_1C7551DBC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 16);
        result = *(v12 + 24);
        *(v12 + 24) = *v12;
        *(v12 + 40) = v15;
        *v12 = result;
        *(v12 + 8) = v14;
        v10 = v14;
        v12 -= 24;
      }

      while (!__CFADD__(v11++, 1));
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

void sub_1C70B4B14(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_116:
    v102 = *result;
    if (!*result)
    {
      goto LABEL_157;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_118:
      v91 = (v6 + 16);
      for (i = *(v6 + 2); i >= 2; *v91 = i)
      {
        if (!*a3)
        {
          goto LABEL_154;
        }

        v93 = &v6[16 * i];
        v94 = *v93;
        v95 = &v91[2 * i];
        v96 = *(v95 + 1);
        v97 = v105;
        sub_1C70B5820((*a3 + 144 * *v93), (*a3 + 144 * *v95), (*a3 + 144 * v96), v102);
        if (v97)
        {
          break;
        }

        if (v96 < v94)
        {
          goto LABEL_142;
        }

        if (i - 2 >= *v91)
        {
          goto LABEL_143;
        }

        *v93 = v94;
        *(v93 + 1) = v96;
        v98 = *v91;
        v99 = *v91 - i;
        if (*v91 < i)
        {
          goto LABEL_144;
        }

        v105 = 0;
        i = v98 - 1;
        sub_1C7423CF4(v95 + 16, v99, v95);
      }

LABEL_126:

      return;
    }

LABEL_151:
    v6 = sub_1C7420830();
    goto LABEL_118;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v7 = v5++;
    if (v5 >= v4)
    {
      goto LABEL_37;
    }

    v8 = *a3;
    v9 = *a3 + 144 * v5;
    v10 = *(v9 + 120);
    v11 = *a3 + 144 * v7;
    v12 = *(v11 + 120);
    if (v10 == v12)
    {
      v13 = *(v9 + 136);
      v14 = *(v11 + 136);
      if (v13 == v14)
      {
        if (*(v9 + 16) == *(v11 + 16) && *(v9 + 24) == *(v11 + 24))
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_1C7551DBC();
        }
      }

      else
      {
        v16 = v13 < v14;
      }
    }

    else
    {
      v16 = v10 < v12;
    }

    v5 = v7 + 2;
    v17 = 144 * v7;
    v18 = v8 + 144 * v7;
    while (v5 < v4)
    {
      v19 = *(v18 + 408);
      v20 = *(v18 + 264);
      if (v19 == v20)
      {
        v21 = *(v18 + 424);
        v22 = *(v18 + 280);
        if (v21 == v22)
        {
          if (*(v18 + 304) == *(v18 + 160) && *(v18 + 312) == *(v18 + 168))
          {
            if (v16)
            {
              goto LABEL_30;
            }

            goto LABEL_26;
          }

          v24 = sub_1C7551DBC();
        }

        else
        {
          v24 = v21 < v22;
        }
      }

      else
      {
        v24 = v19 < v20;
      }

      if ((v16 ^ v24))
      {
        break;
      }

LABEL_26:
      ++v5;
      v18 += 144;
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_30:
    if (v5 < v7)
    {
      goto LABEL_148;
    }

    if (v7 < v5)
    {
      v25 = 144 * v5 - 144;
      v26 = v5;
      v27 = v7;
      do
      {
        if (v27 != --v26)
        {
          v28 = *a3;
          if (!*a3)
          {
            goto LABEL_155;
          }

          memcpy(__dst, (v28 + v17), sizeof(__dst));
          memmove((v28 + v17), (v28 + v25), 0x90uLL);
          memcpy((v28 + v25), __dst, 0x90uLL);
        }

        ++v27;
        v25 -= 144;
        v17 += 144;
      }

      while (v27 < v26);
    }

LABEL_37:
    v29 = a3[1];
    if (v5 >= v29)
    {
      goto LABEL_64;
    }

    if (__OFSUB__(v5, v7))
    {
      goto LABEL_147;
    }

    if (v5 - v7 >= a4)
    {
LABEL_64:
      if (v5 < v7)
      {
        goto LABEL_146;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, *(v6 + 2) + 1, 1, v6);
        v6 = v89;
      }

      v46 = *(v6 + 2);
      v45 = *(v6 + 3);
      v47 = v46 + 1;
      if (v46 >= v45 >> 1)
      {
        sub_1C6FB17EC(v45 > 1, v46 + 1, 1, v6);
        v6 = v90;
      }

      *(v6 + 2) = v47;
      v48 = v6 + 32;
      v49 = &v6[16 * v46 + 32];
      *v49 = v7;
      *(v49 + 1) = v5;
      v102 = *result;
      if (!*result)
      {
        goto LABEL_156;
      }

      if (!v46)
      {
LABEL_113:
        v4 = a3[1];
        if (v5 >= v4)
        {
          goto LABEL_116;
        }

        continue;
      }

      while (1)
      {
        v50 = v47 - 1;
        v51 = &v48[16 * v47 - 16];
        v52 = &v6[16 * v47];
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v53 = *(v6 + 4);
          v54 = *(v6 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_84:
          if (v56)
          {
            goto LABEL_133;
          }

          v68 = *v52;
          v67 = *(v52 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_136;
          }

          v72 = *(v51 + 1);
          v73 = v72 - *v51;
          if (__OFSUB__(v72, *v51))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_141;
          }

          if (v70 + v73 >= v55)
          {
            if (v55 < v73)
            {
              v50 = v47 - 2;
            }

            goto LABEL_106;
          }

          goto LABEL_99;
        }

        if (v47 < 2)
        {
          goto LABEL_135;
        }

        v75 = *v52;
        v74 = *(v52 + 1);
        v63 = __OFSUB__(v74, v75);
        v70 = v74 - v75;
        v71 = v63;
LABEL_99:
        if (v71)
        {
          goto LABEL_138;
        }

        v77 = *v51;
        v76 = *(v51 + 1);
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_140;
        }

        if (v78 < v70)
        {
          goto LABEL_113;
        }

LABEL_106:
        if (v50 - 1 >= v47)
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

        if (!*a3)
        {
          goto LABEL_153;
        }

        v82 = v6;
        v83 = &v48[16 * v50 - 16];
        v84 = *v83;
        v85 = &v48[16 * v50];
        v86 = *(v85 + 1);
        v87 = v105;
        sub_1C70B5820((*a3 + 144 * *v83), (*a3 + 144 * *v85), (*a3 + 144 * v86), v102);
        if (v87)
        {
          goto LABEL_126;
        }

        if (v86 < v84)
        {
          goto LABEL_128;
        }

        v88 = *(v82 + 2);
        if (v50 > v88)
        {
          goto LABEL_129;
        }

        *v83 = v84;
        *(v83 + 1) = v86;
        if (v50 >= v88)
        {
          goto LABEL_130;
        }

        v105 = 0;
        v47 = v88 - 1;
        sub_1C7423CF4(v85 + 16, v88 - 1 - v50, &v48[16 * v50]);
        v6 = v82;
        *(v82 + 2) = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_113;
        }
      }

      v57 = &v48[16 * v47];
      v58 = *(v57 - 8);
      v59 = *(v57 - 7);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_131;
      }

      v62 = *(v57 - 6);
      v61 = *(v57 - 5);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_132;
      }

      v64 = *(v52 + 1);
      v65 = v64 - *v52;
      if (__OFSUB__(v64, *v52))
      {
        goto LABEL_134;
      }

      v63 = __OFADD__(v55, v65);
      v66 = v55 + v65;
      if (v63)
      {
        goto LABEL_137;
      }

      if (v66 >= v60)
      {
        v80 = *v51;
        v79 = *(v51 + 1);
        v63 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v63)
        {
          goto LABEL_145;
        }

        if (v55 < v81)
        {
          v50 = v47 - 2;
        }

        goto LABEL_106;
      }

      goto LABEL_84;
    }

    break;
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_149;
  }

  if (v7 + a4 >= v29)
  {
    v30 = a3[1];
  }

  else
  {
    v30 = v7 + a4;
  }

  if (v30 < v7)
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v5 == v30)
  {
    goto LABEL_64;
  }

  v31 = v7;
  v32 = v6;
  v33 = *a3;
  v34 = *a3 + 144 * v5 - 144;
  v35 = v31;
  v36 = v31 - v5;
LABEL_47:
  v37 = v36;
  v38 = v34;
  while (1)
  {
    v39 = *(v38 + 264);
    v40 = *(v38 + 120);
    if (v39 == v40)
    {
      v41 = *(v38 + 280);
      v42 = *(v38 + 136);
      if (v41 == v42)
      {
        v43 = *(v38 + 160) == *(v38 + 16) && *(v38 + 168) == *(v38 + 24);
        if (v43 || (sub_1C7551DBC() & 1) == 0)
        {
LABEL_62:
          ++v5;
          v34 += 144;
          --v36;
          if (v5 == v30)
          {
            v5 = v30;
            v6 = v32;
            v7 = v35;
            goto LABEL_64;
          }

          goto LABEL_47;
        }
      }

      else if (v41 >= v42)
      {
        goto LABEL_62;
      }
    }

    else if (v39 >= v40)
    {
      goto LABEL_62;
    }

    if (!v33)
    {
      break;
    }

    memcpy(__dst, (v38 + 144), sizeof(__dst));
    memcpy((v38 + 144), v38, 0x90uLL);
    memcpy(v38, __dst, 0x90uLL);
    v38 -= 144;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_62;
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

void sub_1C70B5198(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_1C7551DBC();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_1C7551DBC()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = v24 + v21;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
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
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v94 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == *(v39 + 8);
                if (v40 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v41 = *(v39 + 32);
                v42 = *(v39 + 16);
                v36 = *(v39 + 24);
                *(v39 + 24) = *v39;
                *(v39 + 40) = v42;
                *v39 = v36;
                *(v39 + 8) = v41;
                v37 = v41;
                v39 -= 24;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v94;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, v8[2] + 1, 1, v8);
        v8 = v89;
      }

      v45 = v8[2];
      v44 = v8[3];
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        sub_1C6FB17EC(v44 > 1, v45 + 1, 1, v8);
        v8 = v90;
      }

      v8[2] = v46;
      v47 = v8 + 4;
      v48 = &v8[2 * v45 + 4];
      *v48 = v9;
      v48[1] = v7;
      v95 = *result;
      if (!*result)
      {
        goto LABEL_128;
      }

      if (v45)
      {
        v93 = v8 + 4;
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v8[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v8[4];
            v53 = v8[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_70:
            if (v55)
            {
              goto LABEL_110;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_113;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_118;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v46 < 2)
          {
            goto LABEL_112;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_85:
          if (v70)
          {
            goto LABEL_115;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_117;
          }

          if (v77 < v69)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v49 - 1 >= v46)
          {
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v81 = &v47[2 * v49 - 2];
          v82 = *v81;
          v83 = v49;
          v84 = &v47[2 * v49];
          v85 = v84[1];
          sub_1C70B5A48((*a3 + 24 * *v81), (*a3 + 24 * *v84), *a3 + 24 * v85, v95);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v85 < v82)
          {
            goto LABEL_105;
          }

          v86 = v8;
          v87 = v8[2];
          if (v83 > v87)
          {
            goto LABEL_106;
          }

          *v81 = v82;
          v81[1] = v85;
          if (v83 >= v87)
          {
            goto LABEL_107;
          }

          v46 = v87 - 1;
          memmove(v84, v84 + 2, 16 * (v87 - 1 - v83));
          v86[2] = v87 - 1;
          v88 = v87 > 2;
          v8 = v86;
          v5 = 0;
          v47 = v93;
          if (!v88)
          {
            goto LABEL_99;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_108;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_109;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_111;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_114;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_119;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_129;
  }

  sub_1C70B56E8(&v97, *result, a3);
LABEL_103:
}