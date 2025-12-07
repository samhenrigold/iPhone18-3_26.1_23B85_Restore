uint64_t sub_1C8E54C54()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = *(v2 + 120);
  if (v0)
  {

    OUTLINED_FUNCTION_12_22();
    sub_1C8E59658(v5, v6);
    v7 = sub_1C8E54F8C;
  }

  else
  {
    sub_1C8E59658(v5, type metadata accessor for ToolInvocation);
    v7 = sub_1C8E54DAC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C8E54DAC()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[7];
  v0[18] = v2;
  v0[19] = v3;
  v0[17] = v1;
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = v3;
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_5_31(v4);

  return ToolInvocation.asSearchableItem(identifier:name:invocationSummary:)(v5, v6, v7, v8, v9);
}

uint64_t sub_1C8E54E34(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  v4[21] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C8E54FFC, 0, 0);
  }

  else
  {
    sub_1C8E56464(v4[17], v4[18]);

    OUTLINED_FUNCTION_63();

    return v6(a1);
  }
}

uint64_t sub_1C8E54F8C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_37_15();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_5_31(v1);

  return ToolInvocation.asSearchableItem(identifier:name:invocationSummary:)(v2, v3, v4, v5, v6);
}

uint64_t sub_1C8E54FFC()
{
  OUTLINED_FUNCTION_7();
  sub_1C8E56464(*(v0 + 136), *(v0 + 144));

  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t ToolInvocation.withDefaultValues()@<X0>(uint64_t a1@<X8>)
{
  v147 = a1;
  sub_1C906204C();
  OUTLINED_FUNCTION_11();
  v143 = v3;
  v144 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = type metadata accessor for ToolDefinition(0);
  v8 = OUTLINED_FUNCTION_9(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v138 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
  v16 = OUTLINED_FUNCTION_9(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25();
  v145 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v142 = &v138 - v20;
  v148 = type metadata accessor for TypedValue.ID(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  v150 = v23 - v22;
  type metadata accessor for ConcreteResolvable(0);
  OUTLINED_FUNCTION_11();
  v153 = v25;
  v154 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_25();
  v152 = (v26 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v151 = &v138 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v155 = (&v138 - v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3179E8, &qword_1C908F1E0);
  v32 = sub_1C9063E2C();
  v33 = type metadata accessor for ToolInvocation(0);
  v140 = v1 + *(v33 + 20);
  v141 = v33;
  v34 = *(v140 + 40);
  v35 = v34[2];
  v146 = v1;
  if (!v35)
  {
LABEL_37:
    sub_1C8E59FC4(v140, v14);
    _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
    sub_1C8E59FC4(v14, v11);
    sub_1C8DC642C(v32, v122, v123, v124, v125, v126, v127, v128, v138, v139);
    v130 = v129;
    OUTLINED_FUNCTION_19_19();
    sub_1C8E59658(v14, v131);

    v133 = v141;
    v132 = v142;
    v134 = &v142[*(v141 + 28)];
    *v134 = 0;
    *(v134 + 1) = 0;
    *(v134 + 3) = 0;
    *(v134 + 4) = 0;
    *(v134 + 2) = 1;
    *(v134 + 20) = 0;
    (*(v143 + 32))(v132, v6, v144);
    OUTLINED_FUNCTION_17_20();
    sub_1C8E597FC(v11, v132 + v135);
    *(v132 + *(v133 + 24)) = v130;
    sub_1C8D63F84(*v134, *(v134 + 1), *(v134 + 2));
    *v134 = 0;
    *(v134 + 1) = 0;
    *(v134 + 3) = 0;
    *(v134 + 4) = 0;
    *(v134 + 2) = 1;
    *(v134 + 20) = 0;
    __swift_storeEnumTagSinglePayload(v132, 0, 1, v133);
    v136 = v145;
    sub_1C8E592B8(v132, v145);
    if (__swift_getEnumTagSinglePayload(v136, 1, v133) != 1)
    {
      return sub_1C8E597FC(v136, v147);
    }

    sub_1C8E59FC4(v146, v147);
    result = __swift_getEnumTagSinglePayload(v136, 1, v133);
    if (result != 1)
    {
      return sub_1C8D16D78(v136, &qword_1EC316440, &dword_1C908BFE0);
    }

    return result;
  }

  v138 = v11;
  v139 = v14;
  v36 = 0;
  v37 = *(v1 + *(v33 + 24));
  v38 = (v34 + 4);
  v159 = v35 - 1;
  v156 = v37;
  v157 = v34;
  while (v36 < v35)
  {
    memcpy(__dst, v38, 0x88uLL);
    v40 = __dst[0];
    v39 = __dst[1];
    v41 = *(v37 + 16);
    v161 = __dst[1];
    if (v41)
    {
      sub_1C8D07294(__dst, &v170);
      v42 = sub_1C8CAE064(v40, v39);
      if (v43)
      {
        v158 = v40;
        v160 = v38;
        v44 = v6;
        v45 = v151;
        sub_1C8E59FC4(*(v37 + 56) + *(v153 + 72) * v42, v151);
        v46 = v45;
        v47 = v155;
        sub_1C8E597FC(v46, v155);
        v48 = v152;
        sub_1C8E59FC4(v47, v152);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v49 = v150;
          sub_1C8E597FC(v48, v150);
          v50 = v148;
          v171 = v148;
          v172 = &protocol witness table for TypedValue.ID;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v170);
          sub_1C8E59FC4(v49, boxed_opaque_existential_1);
          sub_1C8D04FA4(&v170, v169);
          v52 = __swift_mutable_project_boxed_opaque_existential_1(v169, v169[3]);
          swift_isUniquelyReferenced_nonNull_native();
          v167 = &protocol witness table for TypedValue.ID;
          v168 = v32;
          v166 = v50;
          v53 = __swift_allocate_boxed_opaque_existential_1(v165);
          sub_1C8E59FC4(v52, v53);
          v54 = OUTLINED_FUNCTION_41_11();
          sub_1C8CAE064(v54, v55);
          OUTLINED_FUNCTION_35_15();
          v59 = v57 + v58;
          if (__OFADD__(v57, v58))
          {
            goto LABEL_45;
          }

          v60 = v56;
          v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3179F0, &qword_1C908F1E8);
          if (OUTLINED_FUNCTION_48_10(v61))
          {
            v62 = OUTLINED_FUNCTION_41_11();
            sub_1C8CAE064(v62, v63);
            if ((v60 & 1) != (v64 & 1))
            {
              goto LABEL_49;
            }
          }

          v32 = v168;
          v38 = v160;
          if (v60)
          {
            OUTLINED_FUNCTION_32_12();
            OUTLINED_FUNCTION_31_14();
            OUTLINED_FUNCTION_24_20();
            OUTLINED_FUNCTION_4_33();
          }

          else
          {
            OUTLINED_FUNCTION_38_14();
            OUTLINED_FUNCTION_16_3();
            MEMORY[0x1EEE9AC00](v110);
            v112 = OUTLINED_FUNCTION_0_57(v111, v138);
            v113(v112);
            v163 = v148;
            v164 = &protocol witness table for TypedValue.ID;
            v114 = __swift_allocate_boxed_opaque_existential_1(&v162);
            sub_1C8E597FC(v59, v114);
            OUTLINED_FUNCTION_25_16();
            if (v91)
            {
              goto LABEL_48;
            }

            *(v32 + 16) = v115;

            sub_1C8D072F0(__dst);
            OUTLINED_FUNCTION_24_20();
            OUTLINED_FUNCTION_4_33();
            __swift_destroy_boxed_opaque_existential_1(v165);
          }
        }

        else
        {
          v93 = *v48;
          v172 = &protocol witness table for TypedValue;
          v171 = &type metadata for TypedValue;
          *&v170 = v93;
          OUTLINED_FUNCTION_51_9();
          v149 = &v138;
          OUTLINED_FUNCTION_16_3();
          MEMORY[0x1EEE9AC00](v94);
          v96 = OUTLINED_FUNCTION_0_57(v95, v138);
          v97(v96);
          v98 = *v47;

          swift_isUniquelyReferenced_nonNull_native();
          v167 = &protocol witness table for TypedValue;
          v168 = v32;
          v166 = &type metadata for TypedValue;
          v165[0] = v98;
          v99 = OUTLINED_FUNCTION_41_11();
          sub_1C8CAE064(v99, v100);
          OUTLINED_FUNCTION_35_15();
          v104 = (v102 + v103);
          if (__OFADD__(v102, v103))
          {
            goto LABEL_46;
          }

          v105 = v101;
          v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3179F0, &qword_1C908F1E8);
          if (OUTLINED_FUNCTION_48_10(v106))
          {
            v107 = OUTLINED_FUNCTION_41_11();
            sub_1C8CAE064(v107, v108);
            if ((v105 & 1) != (v109 & 1))
            {
              goto LABEL_49;
            }
          }

          v6 = v44;
          v32 = v168;
          v38 = v160;
          if (v105)
          {
            OUTLINED_FUNCTION_32_12();
            OUTLINED_FUNCTION_31_14();

            OUTLINED_FUNCTION_4_33();
          }

          else
          {
            OUTLINED_FUNCTION_38_14();
            OUTLINED_FUNCTION_16_3();
            MEMORY[0x1EEE9AC00](v116);
            v118 = OUTLINED_FUNCTION_0_57(v117, v138);
            v119(v118);
            v120 = *v104;
            v164 = &protocol witness table for TypedValue;
            v163 = &type metadata for TypedValue;
            *&v162 = v120;
            OUTLINED_FUNCTION_25_16();
            if (v91)
            {
              goto LABEL_47;
            }

            *(v32 + 16) = v121;

            sub_1C8D072F0(__dst);

            OUTLINED_FUNCTION_4_33();
            __swift_destroy_boxed_opaque_existential_1(v165);
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v169);
        v37 = v156;
        v34 = v157;
        goto LABEL_34;
      }
    }

    else
    {
      sub_1C8D07294(__dst, &v170);
    }

    v169[0] = __dst[7];

    TypeInstance.defaultValue()(&v170);

    v65 = v170;
    if ((~v170 & 0xF000000000000007) != 0)
    {
      v160 = v38;
      v158 = v36;
      v66 = v6;
      v172 = &protocol witness table for TypedValue;
      v171 = &type metadata for TypedValue;
      OUTLINED_FUNCTION_51_9();
      OUTLINED_FUNCTION_16_3();
      MEMORY[0x1EEE9AC00](v67);
      v69 = OUTLINED_FUNCTION_0_57(v68, v138);
      v70(v69);
      v71 = *v34;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v167 = &protocol witness table for TypedValue;
      v168 = v32;
      v166 = &type metadata for TypedValue;
      v165[0] = v71;
      sub_1C8CAE064(v40, v161);
      OUTLINED_FUNCTION_35_15();
      if (__OFADD__(v75, v76))
      {
        goto LABEL_43;
      }

      v77 = v73;
      v78 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3179F0, &qword_1C908F1E8);
      if (sub_1C90648EC())
      {
        v79 = sub_1C8CAE064(v40, v161);
        if ((v78 & 1) != (v80 & 1))
        {
          goto LABEL_49;
        }

        v77 = v79;
      }

      v32 = v168;
      if (v78)
      {
        OUTLINED_FUNCTION_32_12();
        OUTLINED_FUNCTION_31_14();
        sub_1C8D2B114(v65);
      }

      else
      {
        OUTLINED_FUNCTION_38_14();
        OUTLINED_FUNCTION_16_3();
        MEMORY[0x1EEE9AC00](v81);
        v83 = OUTLINED_FUNCTION_0_57(v82, v138);
        v84(v83);
        v85 = *isUniquelyReferenced_nonNull_native;
        v164 = &protocol witness table for TypedValue;
        v163 = &type metadata for TypedValue;
        *&v162 = v85;
        *(v32 + 8 * (v77 >> 6) + 64) |= 1 << v77;
        v86 = (*(v32 + 48) + 16 * v77);
        v87 = v161;
        *v86 = v40;
        v86[1] = v87;
        OUTLINED_FUNCTION_32_12();
        sub_1C8D04FA4(&v162, v88 + v77 * v89);
        v90 = *(v32 + 16);
        v91 = __OFADD__(v90, 1);
        v92 = v90 + 1;
        if (v91)
        {
          goto LABEL_44;
        }

        *(v32 + 16) = v92;

        sub_1C8D072F0(__dst);
        sub_1C8D2B114(v65);
        __swift_destroy_boxed_opaque_existential_1(v165);
      }

      __swift_destroy_boxed_opaque_existential_1(v169);
      v6 = v66;
      v34 = v157;
      v36 = v158;
      v37 = v156;
      v38 = v160;
    }

    else
    {
      sub_1C8D072F0(__dst);
    }

LABEL_34:
    if (v159 == v36)
    {
      v11 = v138;
      v14 = v139;
      goto LABEL_37;
    }

    v35 = v34[2];
    v38 += 136;
    ++v36;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_1C9064CBC();
  __break(1u);
  return result;
}

uint64_t ToolInvocation.asSearchableItem(identifier:name:invocationSummary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 112) = a4;
  *(v6 + 120) = v5;
  *(v6 + 96) = a2;
  *(v6 + 104) = a3;
  *(v6 + 88) = a1;
  *(v6 + 128) = *a5;
  *(v6 + 144) = *(a5 + 16);
  return OUTLINED_FUNCTION_199();
}

id sub_1C8E55D58()
{
  v85 = v0;
  v1 = [objc_allocWithZone(MEMORY[0x1E6964E90]) init];
  v87 = ToolInvocation.encoded()();
  if (!v87.value.super.isa)
  {
    goto LABEL_8;
  }

  isa = v87.value.super.isa;
  sub_1C8CB78AC(0, &qword_1EC317A00, 0x1E6964E00);
  OUTLINED_FUNCTION_8_29();
  v11 = sub_1C8E5752C(v5, v6, v7, v8, v9, v10);
  if (!v11)
  {

LABEL_8:
    sub_1C8E59328(v87.value.super.isa, *&v87.is_nil, v3);
    OUTLINED_FUNCTION_44_15();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
LABEL_9:

    OUTLINED_FUNCTION_6_0();

    return v25();
  }

  v12 = v11;
  if ([(objc_class *)isa length]> 0x4000)
  {
    v79 = v12;
    v13 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
    [v13 setAllowedUnits_];
    [v13 setCountStyle_];
    v14 = [v13 stringFromByteCount_];
    v15 = sub_1C9063EEC();
    v17 = v16;

    if (qword_1EC311388 != -1)
    {
      OUTLINED_FUNCTION_28_15(&qword_1EC311388);
    }

    v18 = *(v0 + 88);
    v19 = *(v0 + 96);
    *&__src[0] = 0;
    *(&__src[0] + 1) = 0xE000000000000000;
    sub_1C906478C();
    MEMORY[0x1CCA81A90](0xD000000000000010, 0x80000001C90CBA60);
    MEMORY[0x1CCA81A90](v18, v19);
    MEMORY[0x1CCA81A90](0xD000000000000012, 0x80000001C90CBA80);
    MEMORY[0x1CCA81A90](v15, v17);

    MEMORY[0x1CCA81A90](0xD000000000000035, 0x80000001C90CBAA0);
    __src[1] = v81;
    __src[2] = v82;
    __src[3] = v83;
    LOBYTE(__src[4]) = 10;
    SpotlightIndexerLog.log(_:)();
    memcpy((v0 + 16), __src, 0x41uLL);
    v20 = sub_1C8E2142C(v0 + 16);
    sub_1C8E59328(v20, v21, v22);
    OUTLINED_FUNCTION_44_15();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();

    goto LABEL_9;
  }

  v27 = *(v0 + 120);
  sub_1C8E59444(*(v0 + 88), *(v0 + 96), v1);
  v28 = OUTLINED_FUNCTION_36_12();
  sub_1C8E5949C(v28, v29, v30);
  v31 = OUTLINED_FUNCTION_36_12();
  sub_1C8E594F4(v31, v32, v33);
  v34 = (v27 + *(type metadata accessor for ToolInvocation(0) + 20));
  if (v34[52])
  {
    v35 = sub_1C9063EBC();
  }

  else
  {
    v35 = 0;
  }

  [v1 setContentDescription_];

  v36 = OUTLINED_FUNCTION_36_12();
  sub_1C8E5954C(v36, v37, v38, v39);
  [v1 setValue:isa forCustomKey:v12];
  v40 = sub_1C9063EBC();
  OUTLINED_FUNCTION_8_29();
  result = sub_1C8E5752C(v41, v42, v43, v44, v45, v46);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v47 = result;
  v48 = *(v0 + 136);
  OUTLINED_FUNCTION_49_9();

  type metadata accessor for ToolDefinition(0);
  v49 = sub_1C906418C();
  [v1 setKeywords_];

  if (!v48)
  {
    goto LABEL_20;
  }

  v53 = *(v0 + 136);
  if (qword_1EC311448 != -1)
  {
    OUTLINED_FUNCTION_10_27();
    v80 = v78;
    v50 = swift_once();
    v53 = v80;
  }

  *(v0 + 16) = *(v0 + 128);
  *(v0 + 24) = v53;
  sub_1C8E595B8(v50, v51, v52);
  v66 = sub_1C9061C5C();
  v68 = v67;
  v69 = sub_1C9061EFC();
  sub_1C8CE7B78(v66, v68);
  OUTLINED_FUNCTION_8_29();
  v76 = sub_1C8E5752C(v70, v71, v72, v73, v74, v75);
  if (!v76)
  {

LABEL_20:
    if (qword_1EC311388 != -1)
    {
      OUTLINED_FUNCTION_28_15(&qword_1EC311388);
    }

    v55 = *(v0 + 88);
    v54 = *(v0 + 96);
    sub_1C906478C();

    *&__src[0] = 0xD000000000000021;
    *(&__src[0] + 1) = 0x80000001C90CBA00;
    MEMORY[0x1CCA81A90](v55, v54);
    LOBYTE(__src[4]) = 9;
    SpotlightIndexerLog.log(_:)();
    memcpy((v0 + 16), __src, 0x41uLL);
    sub_1C8E2142C(v0 + 16);
    goto LABEL_23;
  }

  v77 = v76;
  OUTLINED_FUNCTION_49_9();

LABEL_23:
  v56 = 41;
  if (!v34[38])
  {
    v56 = 28;
  }

  v57 = 40;
  if (!v34[38])
  {
    v57 = 27;
  }

  v58 = v34[v56];
  v59 = v34[v57];

  sub_1C8E5954C(v59, v58, v1, &selRef_setThumbnailBundleID_);
  v60 = sub_1C9063EBC();
  [v1 setContentType_];

  v61 = *v34;
  v62 = v34[1];
  objc_allocWithZone(MEMORY[0x1E6964E80]);

  v63 = v1;
  v64 = sub_1C8E5920C(v61, v62, 0xD000000000000020, 0x80000001C90CB930, v63);
  sub_1C8E5684C(v64);

  OUTLINED_FUNCTION_63();

  return v65(v64);
}

uint64_t sub_1C8E56464(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

NSData_optional __swiftcall ToolInvocation.encoded()()
{
  v1 = sub_1C906348C();
  OUTLINED_FUNCTION_11();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  (*(v3 + 104))(v0, *MEMORY[0x1E69E0758], v1);
  type metadata accessor for ToolInvocation(0);
  OUTLINED_FUNCTION_9_24();
  sub_1C8E598F8(v5, v6, &protocol conformance descriptor for ToolInvocation);
  OUTLINED_FUNCTION_20_18();
  sub_1C8E598F8(v7, v8, &protocol conformance descriptor for ToolKitProtoToolInvocation);
  v9 = sub_1C90636CC();
  v11 = v10;
  (*(v3 + 8))(v0, v1);
  v12 = sub_1C9061EFC();
  sub_1C8CE7B78(v9, v11);
  v14 = v12;
  result.value.super.isa = v14;
  result.is_nil = v13;
  return result;
}

id static ToolInvocation.customToolInvocationKey()()
{
  sub_1C8CB78AC(0, &qword_1EC317A00, 0x1E6964E00);
  OUTLINED_FUNCTION_8_29();
  return sub_1C8E5752C(v0, v1, v2, v3, v4, v5);
}

uint64_t SpotlightToolType.rawValue.getter()
{
  if (*v0)
  {
    return 0x74756374726F6873;
  }

  else
  {
    return 0x6C6F6F5465736162;
  }
}

id static ToolInvocation.customToolTypeKey()()
{
  sub_1C8CB78AC(0, &qword_1EC317A00, 0x1E6964E00);
  OUTLINED_FUNCTION_8_29();
  return sub_1C8E5752C(v0, v1, v2, v3, v4, v5);
}

NSData_optional __swiftcall ToolInvocationSummary.encoded()()
{
  if (qword_1EC311448 != -1)
  {
    OUTLINED_FUNCTION_10_27();
    v0 = swift_once();
  }

  sub_1C8E595B8(v0, v1, v2);
  v3 = sub_1C9061C5C();
  v5 = v4;
  v6 = sub_1C9061EFC();
  sub_1C8CE7B78(v3, v5);
  v8 = v6;
  result.value.super.isa = v8;
  result.is_nil = v7;
  return result;
}

CSCustomAttributeKey_optional __swiftcall ToolInvocation.customToolInvocationSummaryKey()()
{
  sub_1C8CB78AC(0, &qword_1EC317A00, 0x1E6964E00);
  OUTLINED_FUNCTION_8_29();
  v6 = sub_1C8E5752C(v0, v1, v2, v3, v4, v5);
  result.value.super.isa = v6;
  result.is_nil = v7;
  return result;
}

void sub_1C8E5684C(void *a1)
{
  v97 = a1;
  v2 = type metadata accessor for ToolInvocation(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C9063D3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v88 - v10;
  v96 = sub_1C9061EBC();
  v91 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v90 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v88 - v14;
  v98 = type metadata accessor for SpotlightToolIcon(0);
  MEMORY[0x1EEE9AC00](v98);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v88 - v18;
  v99 = type metadata accessor for ToolIcon(0);
  MEMORY[0x1EEE9AC00](v99);
  v95 = (&v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v88 - v22;
  v92 = v2;
  v24 = *(v2 + 20);
  v94 = v1;
  v25 = (v1 + v24);
  if (!v25[38])
  {
    v88 = v11;
    v89 = v4;
    v29 = v6;
    v30 = v5;
    v32 = v25[27];
    v31 = v25[28];
    if (v32 == sub_1C9063EEC() && v31 == v33)
    {

      v5 = v30;
      v6 = v29;
    }

    else
    {
      v35 = sub_1C9064C2C();

      v5 = v30;
      v6 = v29;
      if ((v35 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    v36 = type metadata accessor for ToolDefinition(0);
    sub_1C8E59F54(v25 + *(v36 + 64), v19);
    if (__swift_getEnumTagSinglePayload(v19, 1, v99) == 1)
    {
      sub_1C8D16D78(v19, &qword_1EC3144B8, &qword_1C90839E0);
      goto LABEL_2;
    }

    v37 = v23;
    sub_1C8E597FC(v19, v23);
    sub_1C8E59FC4(v23, v16);
    swift_storeEnumTagMultiPayload();
    if (qword_1EC311448 != -1)
    {
      swift_once();
    }

    sub_1C8E598F8(&qword_1EC317A18, type metadata accessor for SpotlightToolIcon, &protocol conformance descriptor for SpotlightToolIcon);
    v38 = sub_1C9061C5C();
    v40 = v96;
    v39 = v97;
    v41 = v38;
    v43 = v42;
    sub_1C8E59658(v16, type metadata accessor for SpotlightToolIcon);
    v98 = sub_1C9061EFC();
    sub_1C8CE7B78(v41, v43);
    v44 = v95;
    sub_1C8E59FC4(v37, v95);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v47 = *v44;
    v46 = v44[1];
    if (EnumCaseMultiPayload)
    {
      v48 = v89;
      if (EnumCaseMultiPayload == 1)
      {
        v49 = [v39 attributeSet];
        sub_1C8E5954C(v47, v46, v49, &selRef_setThumbnailSymbolName_);
      }

      else
      {
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B0, &qword_1C9085190);
        v55 = v91;
        v56 = v93;
        (*(v91 + 32))(v93, v44 + *(v54 + 48), v40);
        v99 = sub_1C8CB78AC(0, &qword_1EC314358, 0x1E69E0B58);
        sub_1C8CB78AC(0, &qword_1EC314360, 0x1E696AAE8);
        v57 = v90;
        (*(v55 + 16))(v90, v56, v40);
        v58 = sub_1C8E57438(v57);
        v59 = sub_1C8D769F8(v47, v46, v58, 3.0);
        v60 = sub_1C8E5937C(v59);
        if (v61 >> 60 == 15)
        {

          (*(v55 + 8))(v93, v40);
          goto LABEL_29;
        }

        v65 = v60;
        v66 = v61;
        v39 = v97;
        v67 = [v97 attributeSet];
        sub_1C8E593EC(v65, v66, v67);
        sub_1C8CE7BD0(v65, v66);

        (*(v55 + 8))(v93, v40);
        v48 = v89;
      }
    }

    else
    {
      sub_1C8CB78AC(0, &qword_1EC314358, 0x1E69E0B58);
      sub_1C8CB78AC(0, &qword_1EC314360, 0x1E696AAE8);
      v50 = sub_1C8D769EC(0xD000000000000015, 0x80000001C90CA220);
      v51 = sub_1C8D769F8(v47, v46, v50, 3.0);
      v52 = sub_1C8E5937C(v51);
      v48 = v89;
      if (v53 >> 60 == 15)
      {
        sub_1C8E59658(v37, type metadata accessor for ToolIcon);

        return;
      }

      v62 = v52;
      v63 = v53;
      v39 = v97;
      v64 = [v97 attributeSet];
      sub_1C8E593EC(v62, v63, v64);

      sub_1C8CE7BD0(v62, v63);
    }

    v68 = [v39 attributeSet];
    sub_1C8CB78AC(0, &qword_1EC317A00, 0x1E6964E00);
    v69 = v98;
    v70 = sub_1C8E5752C(0xD000000000000027, 0x80000001C90CBAE0, 0, 0, 0, 0);
    if (!v70)
    {
      __break(1u);
      return;
    }

    v71 = v70;
    [v68 setValue:v69 forCustomKey:v70];

    v72 = [v39 attributeSet];
    [v72 setThumbnailBundleID_];

    v73 = [v39 attributeSet];
    [v73 setThumbnailURL_];

    v74 = v88;
    sub_1C906371C();
    sub_1C8E59FC4(v94, v48);
    v75 = sub_1C9063D1C();
    v76 = sub_1C906442C();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 136315138;
      v79 = (v48 + *(v92 + 20));
      v99 = v37;
      v100 = v78;
      v80 = v48;
      v81 = *v79;
      v82 = v79[1];

      sub_1C8E59658(v80, type metadata accessor for ToolInvocation);
      v86 = sub_1C8CACE04(v81, v82, &v100, v83, v84, v85);

      *(v77 + 4) = v86;
      _os_log_impl(&dword_1C8C9B000, v75, v76, "Set custom icon for tool %s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x1CCA833A0](v78, -1, -1);
      MEMORY[0x1CCA833A0](v77, -1, -1);

      (*(v6 + 8))(v88, v5);
      v87 = v99;
LABEL_30:
      sub_1C8E59658(v87, type metadata accessor for ToolIcon);
      return;
    }

    sub_1C8E59658(v48, type metadata accessor for ToolInvocation);
    (*(v6 + 8))(v74, v5);
LABEL_29:
    v87 = v37;
    goto LABEL_30;
  }

LABEL_2:
  sub_1C906371C();
  v26 = sub_1C9063D1C();
  v27 = sub_1C906442C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1C8C9B000, v26, v27, "Not setting custom icon for tool", v28, 2u);
    MEMORY[0x1CCA833A0](v28, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t SpotlightToolIcon.encoded()(__n128 a1)
{
  if (qword_1EC311448 != -1)
  {
    OUTLINED_FUNCTION_10_27();
    swift_once();
  }

  type metadata accessor for SpotlightToolIcon(0);
  OUTLINED_FUNCTION_18_18();
  sub_1C8E598F8(v1, v2, &protocol conformance descriptor for SpotlightToolIcon);
  return sub_1C9061C5C();
}

id sub_1C8E57438(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C9061DDC();
  v4 = [v2 initWithURL_];

  v5 = sub_1C9061EBC();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id static ToolInvocation.customToolIconKey()()
{
  sub_1C8CB78AC(0, &qword_1EC317A00, 0x1E6964E00);
  OUTLINED_FUNCTION_8_29();
  return sub_1C8E5752C(v0, v1, v2, v3, v4, v5);
}

id sub_1C8E5752C(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_1C9063EBC();

  v12 = [v10 initWithKeyName:v11 searchable:a3 & 1 searchableByDefault:a4 & 1 unique:a5 & 1 multiValued:a6 & 1];

  return v12;
}

uint64_t static ToolInvocation.decoded(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  type metadata accessor for ToolInvocation(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v12 = MEMORY[0x1CCA7F970](a1);
  sub_1C8CE9144(v12, v13);
  OUTLINED_FUNCTION_9_24();
  sub_1C8E598F8(v14, v15, &protocol conformance descriptor for ToolInvocation);
  OUTLINED_FUNCTION_20_18();
  sub_1C8E598F8(v16, v17, &protocol conformance descriptor for ToolKitProtoToolInvocation);
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_44_15();
  sub_1C90634FC();
  v18 = OUTLINED_FUNCTION_125();
  sub_1C8CE7B78(v18, v19);
  OUTLINED_FUNCTION_47_10();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  sub_1C8E597FC(v7, v11);
  sub_1C8E597FC(v11, a2);
  OUTLINED_FUNCTION_47_10();
  return __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
}

uint64_t ToolDefinition.asSearchableItem(with:)()
{
  OUTLINED_FUNCTION_7();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1C906204C();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for ToolDefinition(0);
  OUTLINED_FUNCTION_9(v5);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v6 = type metadata accessor for ToolInvocation(0);
  v1[10] = v6;
  OUTLINED_FUNCTION_9(v6);
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8E5795C, 0, 0);
}

uint64_t sub_1C8E5795C()
{
  v2 = v0[8];
  v1 = v0[9];
  sub_1C8E59FC4(v0[4], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3179E8, &qword_1C908F1E0);
  v3 = sub_1C9063E2C();
  _s7ToolKit0A8DatabaseC7VersionVAEycfC_0();
  sub_1C8E59FC4(v1, v2);
  sub_1C8DC642C(v3, v4, v5, v6, v7, v8, v9, v10, v25, v26);
  v12 = v11;
  v14 = v0[10];
  v13 = v0[11];
  v15 = v0[8];
  v17 = v0[6];
  v16 = v0[7];
  v18 = v0[5];
  OUTLINED_FUNCTION_19_19();
  sub_1C8E59658(v19, v20);

  v21 = v13 + v14[7];
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  *(v21 + 16) = 1;
  *(v21 + 40) = 0;
  (*(v17 + 32))(v13, v16, v18);
  v22 = v13 + v14[5];
  OUTLINED_FUNCTION_17_20();
  sub_1C8E597FC(v15, v22);
  *(v13 + v14[6]) = v12;
  sub_1C8D63F84(*v21, *(v21 + 8), *(v21 + 16));
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 40) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  *(v21 + 16) = 1;
  v23 = swift_task_alloc();
  v0[12] = v23;
  *v23 = v0;
  v23[1] = sub_1C8E57C18;

  return ToolInvocation.asSearchableItem(identifier:name:with:)();
}

uint64_t sub_1C8E57C18(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v4 + 104) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C8E57D9C, 0, 0);
  }

  else
  {
    v6 = *(v4 + 88);
    OUTLINED_FUNCTION_12_22();
    sub_1C8E59658(v6, v7);

    OUTLINED_FUNCTION_63();

    return v8(a1);
  }
}

uint64_t sub_1C8E57D9C()
{
  OUTLINED_FUNCTION_12_22();
  sub_1C8E59658(v0, v1);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t static ToolInvocationSummary.decoded(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1CCA7F970]();
  v5 = v2;
  v6 = v3;
  if (qword_1EC311440 != -1)
  {
    v2 = OUTLINED_FUNCTION_15_21(&qword_1EC311440);
  }

  sub_1C8E1B464(v2, v3, v4);
  sub_1C9061C2C();
  result = sub_1C8CE7B78(v5, v6);
  *a1 = v8;
  *(a1 + 8) = v9;
  return result;
}

uint64_t static SpotlightToolIcon.decoded(from:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (qword_1EC311440 != -1)
  {
    OUTLINED_FUNCTION_15_21(&qword_1EC311440);
  }

  type metadata accessor for SpotlightToolIcon(0);
  OUTLINED_FUNCTION_18_18();
  sub_1C8E598F8(v3, v4, &protocol conformance descriptor for SpotlightToolIcon);
  sub_1C9061C2C();
  OUTLINED_FUNCTION_47_10();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t static SpotlightToolIcon.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolIcon(0);
  v5 = OUTLINED_FUNCTION_9(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  type metadata accessor for SpotlightToolIcon(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317A30, &qword_1C908F1F8);
  OUTLINED_FUNCTION_9(v16);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  v21 = *(v20 + 56);
  sub_1C8E59FC4(a1, &v28 - v18);
  sub_1C8E59FC4(a2, &v19[v21]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_1_53();
    sub_1C8E59FC4(v19, v12);
    v22 = *v12;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = *&v19[v21];
      sub_1C8CB78AC(0, &qword_1EDA60460, 0x1E69E58C0);
      v24 = sub_1C90645BC();

LABEL_9:
      sub_1C8E59658(v19, type metadata accessor for SpotlightToolIcon);
      return v24 & 1;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_53();
    sub_1C8E59FC4(v19, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_22_24();
      sub_1C8E597FC(&v19[v21], v8);
      static ToolIcon.== infix(_:_:)();
      v24 = v26;
      sub_1C8E59658(v8, type metadata accessor for ToolIcon);
      sub_1C8E59658(v15, type metadata accessor for ToolIcon);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_14_26();
    sub_1C8E59658(v15, v25);
  }

  sub_1C8D16D78(v19, &qword_1EC317A30, &qword_1C908F1F8);
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1C8E58280(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F63496C6F6F74 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776F6C666B726F77 && a2 == 0xEC0000006E6F6349)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8E5834C(char a1)
{
  if (a1)
  {
    return 0x776F6C666B726F77;
  }

  else
  {
    return 0x6E6F63496C6F6F74;
  }
}

uint64_t sub_1C8E58394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E58280(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8E583BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E596B0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E583F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E596B0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E58434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E59758(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E58470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E59758(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8E584AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E59704(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E584E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E59704(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void SpotlightToolIcon.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317A38, &qword_1C908F200);
  OUTLINED_FUNCTION_11();
  v44 = v4;
  v45 = v3;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_39_0(v6, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317A40, &qword_1C908F208);
  OUTLINED_FUNCTION_11();
  v41 = v8;
  v42 = v7;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v40 = type metadata accessor for ToolIcon(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  type metadata accessor for SpotlightToolIcon(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317A48, &qword_1C908F210);
  OUTLINED_FUNCTION_11();
  v18 = v17;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  v22 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E596B0(v22, v23, v24);
  sub_1C9064E1C();
  OUTLINED_FUNCTION_1_53();
  sub_1C8E59FC4(v46, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v28 = *v1;
    v50 = 1;
    sub_1C8E59704(EnumCaseMultiPayload, v26, v27);
    v29 = v43;
    v30 = v47;
    sub_1C9064ACC();
    v48 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317A60, &qword_1C908F218);
    sub_1C8E597AC(&qword_1EC317A68, &protocol conformance descriptor for SecureCodable<A>);
    v31 = v45;
    sub_1C9064B8C();
    (*(v44 + 8))(v29, v31);
    (*(v18 + 8))(v21, v30);
  }

  else
  {
    v32 = sub_1C8E597FC(v1, v15);
    v49 = 0;
    sub_1C8E59758(v32, v33, v34);
    v35 = v47;
    sub_1C9064ACC();
    OUTLINED_FUNCTION_21_15();
    sub_1C8E598F8(v36, v37, &protocol conformance descriptor for ToolIcon);
    v38 = v42;
    sub_1C9064B8C();
    (*(v41 + 8))(v11, v38);
    OUTLINED_FUNCTION_14_26();
    sub_1C8E59658(v15, v39);
    (*(v18 + 8))(v21, v35);
  }
}

void SpotlightToolIcon.hash(into:)()
{
  v1 = OUTLINED_FUNCTION_257();
  v2 = type metadata accessor for ToolIcon(v1);
  v3 = OUTLINED_FUNCTION_9(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  type metadata accessor for SpotlightToolIcon(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = (v9 - v8);
  OUTLINED_FUNCTION_1_53();
  sub_1C8E59FC4(v0, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    MEMORY[0x1CCA82810](1);
    v12 = v11;
    sub_1C90645CC();
  }

  else
  {
    OUTLINED_FUNCTION_22_24();
    sub_1C8E597FC(v10, v6);
    MEMORY[0x1CCA82810](0);
    ToolIcon.hash(into:)(v0);
    OUTLINED_FUNCTION_14_26();
    sub_1C8E59658(v6, v13);
  }
}

uint64_t SpotlightToolIcon.hashValue.getter()
{
  sub_1C9064D7C();
  SpotlightToolIcon.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t SpotlightToolIcon.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317A78, &qword_1C908F220);
  OUTLINED_FUNCTION_11();
  v79 = v3;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_39_0(v5, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317A80, &qword_1C908F228);
  OUTLINED_FUNCTION_11();
  v73 = v7;
  v74 = v6;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v68 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317A88, &unk_1C908F230);
  OUTLINED_FUNCTION_11();
  v80 = v11;
  v81 = v10;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68 - v13;
  v15 = type metadata accessor for SpotlightToolIcon(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v68 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v68 - v24;
  v26 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E596B0(v26, v27, v28);
  v29 = v82;
  sub_1C9064DEC();
  if (v29)
  {
    goto LABEL_8;
  }

  v70 = v25;
  v71 = v22;
  v69 = v19;
  v72 = v15;
  v82 = a1;
  v30 = v81;
  v31 = sub_1C9064A9C();
  result = sub_1C8CB8914(v31, 0);
  v36 = v14;
  if (v34 == v35 >> 1)
  {
LABEL_7:
    v51 = v72;
    v52 = sub_1C90647DC();
    OUTLINED_FUNCTION_44_15();
    swift_allocError();
    v54 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v54 = v51;
    sub_1C906499C();
    sub_1C90647CC();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x1E69E6AF8], v52);
    swift_willThrow();
    swift_unknownObjectRelease();
    v55 = OUTLINED_FUNCTION_29_15();
    v56(v55, v30);
    a1 = v82;
LABEL_8:
    v57 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  if (v34 < (v35 >> 1))
  {
    v37 = *(v33 + v34);
    sub_1C8CB891C(v34 + 1, v35 >> 1, result, v33, v34, v35);
    v39 = v38;
    v41 = v40;
    v42 = swift_unknownObjectRelease();
    v45 = v79;
    if (v39 == v41 >> 1)
    {
      v46 = v30;
      if (v37)
      {
        v85 = 1;
        sub_1C8E59704(v42, v43, v44);
        v47 = v77;
        OUTLINED_FUNCTION_50_11(&type metadata for SpotlightToolIcon.WorkflowIconCodingKeys, &v85);
        v48 = v78;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317A60, &qword_1C908F218);
        sub_1C8E597AC(&qword_1EC317A90, &protocol conformance descriptor for SecureCodable<A>);
        v49 = v75;
        sub_1C9064A6C();
        v50 = v80;
        swift_unknownObjectRelease();
        (*(v45 + 8))(v47, v49);
        (*(v50 + 8))(v36, v46);
        v61 = v69;
        *v69 = v83;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_11_25();
        v62 = v61;
      }

      else
      {
        v84 = 0;
        sub_1C8E59758(v42, v43, v44);
        OUTLINED_FUNCTION_50_11(&type metadata for SpotlightToolIcon.ToolIconCodingKeys, &v84);
        v48 = v78;
        type metadata accessor for ToolIcon(0);
        OUTLINED_FUNCTION_21_15();
        sub_1C8E598F8(v58, v59, &protocol conformance descriptor for ToolIcon);
        v60 = v71;
        sub_1C9064A6C();
        swift_unknownObjectRelease();
        v63 = OUTLINED_FUNCTION_45_15();
        v64(v63);
        v65 = OUTLINED_FUNCTION_29_15();
        v66(v65, v30);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_11_25();
        v62 = v60;
      }

      v67 = v70;
      sub_1C8E597FC(v62, v70);
      OUTLINED_FUNCTION_11_25();
      sub_1C8E597FC(v67, v48);
      v57 = v82;
      return __swift_destroy_boxed_opaque_existential_1(v57);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8E590E0(uint64_t a1)
{
  sub_1C9064D7C();
  SpotlightToolIcon.hash(into:)();
  return sub_1C9064DBC();
}

ToolKit::SpotlightToolType_optional __swiftcall SpotlightToolType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C906497C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C8E591E4@<X0>(uint64_t *a1@<X8>)
{
  result = SpotlightToolType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1C8E5920C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_1C9063EBC();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1C9063EBC();

LABEL_6:
  v10 = [v5 initWithUniqueIdentifier:v8 domainIdentifier:v9 attributeSet:a5];

  return v10;
}

uint64_t sub_1C8E592B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C8E59328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3179F8;
  if (!qword_1EC3179F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3179F8);
  }

  return result;
}

uint64_t sub_1C8E5937C(void *a1)
{
  v2 = [a1 PNGRepresentation];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C9061F3C();

  return v3;
}

void sub_1C8E593EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C9061EFC();
  [a3 setThumbnailData_];
}

void sub_1C8E59444(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C9063EBC();
  [a3 setIdentifier_];
}

void sub_1C8E5949C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C9063EBC();
  [a3 setDisplayName_];
}

void sub_1C8E594F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C9063EBC();
  [a3 setTitle_];
}

void sub_1C8E5954C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1C9063EBC();

  [a3 *a4];
}

unint64_t sub_1C8E595B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317A08;
  if (!qword_1EC317A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317A08);
  }

  return result;
}

uint64_t type metadata accessor for SpotlightToolIcon(uint64_t a1)
{
  result = qword_1EC317AB0;
  if (!qword_1EC317AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8E59658(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C8E596B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317A50;
  if (!qword_1EC317A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317A50);
  }

  return result;
}

unint64_t sub_1C8E59704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317A58;
  if (!qword_1EC317A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317A58);
  }

  return result;
}

unint64_t sub_1C8E59758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317A70;
  if (!qword_1EC317A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317A70);
  }

  return result;
}

uint64_t sub_1C8E597AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317A60, &qword_1C908F218);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C8E597FC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_257();
  v5(v4);
  OUTLINED_FUNCTION_13_1();
  (*(v6 + 32))(a2, v2);
  return a2;
}

unint64_t sub_1C8E5985C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317A98;
  if (!qword_1EC317A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317A98);
  }

  return result;
}

uint64_t sub_1C8E598F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C8E59944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317AA8;
  if (!qword_1EC317AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317AA8);
  }

  return result;
}

void sub_1C8E599B8(uint64_t a1)
{
  type metadata accessor for ToolIcon(319);
  if (v1 <= 0x3F)
  {
    sub_1C8E59A2C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1C8E59A2C(uint64_t a1)
{
  if (!qword_1EC317AC0)
  {
    v2 = sub_1C8CB78AC(255, &qword_1EC317AC8, 0x1E69E0E00);
    v5 = type metadata accessor for SecureCodable(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC317AC0);
    }
  }
}

_BYTE *sub_1C8E59AA4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C8E59B90(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8E59C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317AD0;
  if (!qword_1EC317AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317AD0);
  }

  return result;
}

unint64_t sub_1C8E59C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317AD8;
  if (!qword_1EC317AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317AD8);
  }

  return result;
}

unint64_t sub_1C8E59CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317AE0;
  if (!qword_1EC317AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317AE0);
  }

  return result;
}

unint64_t sub_1C8E59D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317AE8;
  if (!qword_1EC317AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317AE8);
  }

  return result;
}

unint64_t sub_1C8E59DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317AF0;
  if (!qword_1EC317AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317AF0);
  }

  return result;
}

unint64_t sub_1C8E59DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317AF8;
  if (!qword_1EC317AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317AF8);
  }

  return result;
}

unint64_t sub_1C8E59E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317B00;
  if (!qword_1EC317B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317B00);
  }

  return result;
}

unint64_t sub_1C8E59EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317B08;
  if (!qword_1EC317B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317B08);
  }

  return result;
}

unint64_t sub_1C8E59F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317B10;
  if (!qword_1EC317B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317B10);
  }

  return result;
}

uint64_t sub_1C8E59F54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8E59FC4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_257();
  v5(v4);
  OUTLINED_FUNCTION_13_1();
  (*(v6 + 16))(a2, v2);
  return a2;
}

void OUTLINED_FUNCTION_37_15()
{
  v0[17] = 0;
  v0[18] = 0;
  v0[19] = 0;
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 0;
}

uint64_t OUTLINED_FUNCTION_50_11(uint64_t a1, uint64_t a2)
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_51_9()
{
  sub_1C8D04FA4((v0 + 328), v0 + 280);
  v1 = *(v0 + 304);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 280, v1);
}

uint64_t sub_1C8E5A0C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C9063EEC();
  v4 = v3;
  v5 = sub_1C9063EEC();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_48(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_1C8E5A138(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6D756E45707061;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6D756E45707061;
  switch(v4)
  {
    case 1:
      v5 = 0x6E456E6F69746361;
      v3 = 0xEA00000000006D75;
      break;
    case 2:
      v5 = 0x4572656767697274;
      v3 = 0xEB000000006D756ELL;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_42();
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6E456E6F69746361;
      v6 = 0xEA00000000006D75;
      break;
    case 2:
      v2 = 0x4572656767697274;
      v6 = 0xEB000000006D756ELL;
      break;
    case 3:
      OUTLINED_FUNCTION_16_19();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_48(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1C8E5A288(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x746361746E6F63;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746361746E6F63;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x656E6F6870;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x6C69616D65;
      break;
    case 3:
      v5 = 0x50724F6C69616D65;
      v3 = 0xEC000000656E6F68;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x656E6F6870;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x6C69616D65;
      break;
    case 3:
      v2 = 0x50724F6C69616D65;
      v6 = 0xEC000000656E6F68;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_48(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1C8E5A3C8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701669236;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1702125924;
    }

    else
    {
      v4 = 0x54646E4165746164;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xEB00000000656D69;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1701669236;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1702125924;
    }

    else
    {
      v2 = 0x54646E4165746164;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEB00000000656D69;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_48(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1C8E5A4B4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1953066613;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000016;
    }

    else
    {
      v4 = 0xD000000000000019;
    }

    if (v3 == 1)
    {
      v5 = 0x80000001C90C9270;
    }

    else
    {
      v5 = 0x80000001C90C9290;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1953066613;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000016;
    }

    else
    {
      v2 = 0xD000000000000019;
    }

    if (a2 == 1)
    {
      v6 = 0x80000001C90C9270;
    }

    else
    {
      v6 = 0x80000001C90C9290;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_48(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1C8E5A590(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x756F427265707075;
  }

  else
  {
    v2 = 0x756F427265776F6CLL;
  }

  if (a2)
  {
    v3 = 0x756F427265707075;
  }

  else
  {
    v3 = 0x756F427265776F6CLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1C9064C2C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1C8E5A634(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x746C7561666564;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28271;
    }

    else
    {
      v4 = 6710895;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x746C7561666564;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28271;
    }

    else
    {
      v2 = 6710895;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_48(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1C8E5A6FC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701736302;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x7364726F77;
      break;
    case 2:
      v5 = 0x65636E65746E6573;
      v3 = 0xE900000000000073;
      break;
    case 3:
      v5 = 0x61726168436C6C61;
      v3 = 0xED00007372657463;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x7364726F77;
      break;
    case 2:
      v2 = 0x65636E65746E6573;
      v6 = 0xE900000000000073;
      break;
    case 3:
      v2 = 0x61726168436C6C61;
      v6 = 0xED00007372657463;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_48(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1C8E5A850(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x65676175676E616CLL;
  }

  else
  {
    v3 = 0x79616C70736964;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xED00006C65646F4DLL;
  }

  if (a2)
  {
    v5 = 0x65676175676E616CLL;
  }

  else
  {
    v5 = 0x79616C70736964;
  }

  if (a2)
  {
    v6 = 0xED00006C65646F4DLL;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_48(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1C8E5A914(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = a1;
  v5 = 0x656E696665646E75;
  v6 = 0xE900000000000064;
  switch(v4)
  {
    case 1:
      v6 = 0xE400000000000000;
      v5 = 1701736302;
      break;
    case 2:
      v5 = 0xD00000000000001ELL;
      v6 = 0x80000001C90C91D0;
      break;
    case 3:
      v6 = 0x80000001C90C91F0;
      v5 = 0xD000000000000027;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE400000000000000;
      v3 = 1701736302;
      break;
    case 2:
      v3 = 0xD00000000000001ELL;
      v2 = 0x80000001C90C91D0;
      break;
    case 3:
      v2 = 0x80000001C90C91F0;
      v3 = 0xD000000000000027;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_28(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1C8E5AA54(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x676E697472617473;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x676E697472617473;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1701602409;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x657669746361;
      break;
    case 3:
      v5 = 0x676E696E69617264;
      break;
    case 4:
      v5 = 0x6465637365697571;
      break;
    case 5:
      v5 = 0x74616E696D726574;
      v3 = 0xEB00000000676E69;
      break;
    case 6:
      v3 = 0xE500000000000000;
      v5 = 0x6465646E65;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1701602409;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x657669746361;
      break;
    case 3:
      v2 = 0x676E696E69617264;
      break;
    case 4:
      v2 = 0x6465637365697571;
      break;
    case 5:
      v2 = 0x74616E696D726574;
      v6 = 0xEB00000000676E69;
      break;
    case 6:
      v6 = 0xE500000000000000;
      v2 = 0x6465646E65;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_48(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1C8E5AC1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  v7 = a3();
  if (v4 == v7 && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_48(v4, v8, v7);
  }

  return v10 & 1;
}

uint64_t sub_1C8E5ACB0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x6E65746E49707061;
  v4 = a1;
  v5 = 0x6E65746E49707061;
  v6 = 0xE900000000000074;
  switch(v4)
  {
    case 1:
      v5 = 0x65746E4969726973;
      v6 = 0xEA0000000000746ELL;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v5 = 0x6E6F69746361;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_42();
      break;
    case 4:
      v6 = 0xE800000000000000;
      v5 = 0x6C6F6F54776F6C66;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x65746E4969726973;
      v2 = 0xEA0000000000746ELL;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x6E6F69746361;
      break;
    case 3:
      v2 = 0xE700000000000000;
      OUTLINED_FUNCTION_16_19();
      break;
    case 4:
      v2 = 0xE800000000000000;
      v3 = 0x6C6F6F54776F6C66;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_28(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1C8E5AE10(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x76696C417065656BLL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x656D6F536C6C696BLL;
    }

    else
    {
      v5 = 0x656D6D496C6C696BLL;
    }

    if (v4 == 1)
    {
      v6 = 0xEC000000656D6974;
    }

    else
    {
      v6 = 0xEF796C6574616964;
    }
  }

  else
  {
    v5 = 0x76696C417065656BLL;
    v6 = 0xE900000000000065;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x656D6F536C6C696BLL;
    }

    else
    {
      v3 = 0x656D6D496C6C696BLL;
    }

    if (a2 == 1)
    {
      v2 = 0xEC000000656D6974;
    }

    else
    {
      v2 = 0xEF796C6574616964;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_28(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1C8E5AF2C(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x74756374726F6873;
  }

  else
  {
    v3 = 0x6C6F6F5465736162;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEC0000006C6F6F54;
  }

  if (a2)
  {
    v5 = 0x74756374726F6873;
  }

  else
  {
    v5 = 0x6C6F6F5465736162;
  }

  if (a2)
  {
    v6 = 0xEC0000006C6F6F54;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_48(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1C8E5AFE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t (*)(void), uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = a3(a1, a2, a3, a4, a5);
  v8 = v7;
  v9 = (a3)();
  if (v6 == v9 && v8 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_2_48(v6, v10, v9);
  }

  return v12 & 1;
}

uint64_t FileLock.init(shadowing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FileLock(0);
  v5 = a2 + *(v4 + 20);
  *(v5 + 4) = 2;
  *v5 = 0;
  sub_1C9061E0C();
  sub_1C9061EBC();
  OUTLINED_FUNCTION_13_1();
  result = (*(v6 + 8))(a1);
  *(a2 + *(v4 + 24)) = 1;
  return result;
}

uint64_t FileLock.unlock(configuration:)(char *a1)
{
  v182[1] = *MEMORY[0x1E69E9840];
  v178 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v174 = &v156[-v10];
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v11);
  v167 = &v156[-v12];
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v156[-v14];
  v16 = type metadata accessor for FileLock(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v20 = v19 - v18;
  v21 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](&v156[-v25]);
  v27 = &v156[-v26];
  MEMORY[0x1EEE9AC00](v28);
  v34 = &v156[-v33];
  v168 = v16;
  v35 = *(v16 + 20);
  v177 = v1;
  v36 = *(v1 + v35) | (*(v1 + v35 + 4) << 32);
  if ((v36 & 0xFF00000000) == 0x200000000)
  {
    return 0;
  }

  v160 = v29;
  v161 = v32;
  v164 = v31;
  v165 = v35;
  v176 = v4;
  v38 = *a1;
  v173 = v36;
  v162 = v36 >> 40;
  v39 = v30;
  sub_1C8CC0CE0(v177, v20);
  (*(v39 + 32))(v34, v20, v21);
  v163 = *MEMORY[0x1E69E10F0];
  sub_1C906371C();
  v169 = *(v39 + 16);
  v170 = v39 + 16;
  v169(v27, v34, v21);
  v40 = sub_1C9063D1C();
  v41 = sub_1C906443C();
  v42 = os_log_type_enabled(v40, v41);
  v175 = v34;
  v166 = v8;
  v172 = v39;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v159 = OUTLINED_FUNCTION_18_19();
    v182[0] = v159;
    *v43 = 136315138;
    OUTLINED_FUNCTION_0_58();
    sub_1C8CC4BD4(v44, v45, MEMORY[0x1E6968FE0]);
    sub_1C9064BDC();
    v46 = OUTLINED_FUNCTION_12_23();
    v47(v46);
    v48 = OUTLINED_FUNCTION_208_0();
    v54 = sub_1C8CACE04(v48, v49, v50, v51, v52, v53);
    v34 = v175;

    *(v43 + 4) = v54;
    _os_log_impl(&dword_1C8C9B000, v40, v41, "Attepting to relinquish lock on %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v159);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
  }

  else
  {

    v55 = OUTLINED_FUNCTION_12_23();
    v56(v55);
  }

  v57 = *(v176 + 8);
  v57(v15, v178);
  v58 = v173;
  v59 = v173 & 0x100000000;
  v60 = flock(v173, 6);
  v61 = v174;
  if ((v60 & 0x80000000) == 0)
  {
    if ((v38 & 2) != 0 || (v162 & 2) == 0)
    {
      OUTLINED_FUNCTION_9_25();
      v62 = sub_1C9063F7C();
      fremovexattr(v173, (v62 + 32), 0);
      v58 = v173;
    }

    if (*(v177 + *(v168 + 24)) == 1)
    {
      v63 = v57;
      v64 = [objc_opt_self() defaultManager];
      v65 = sub_1C9061DDC();
      v182[0] = 0;
      v66 = [v64 removeItemAtURL:v65 error:v182];

      if (v66)
      {
        v67 = v182[0];
      }

      else
      {
        v68 = v182[0];
        v69 = sub_1C9061D7C();

        swift_willThrow();
      }

      v34 = v175;
      v57 = v63;
      v58 = v173;
    }
  }

  v70 = flock(v58, 12);
  LODWORD(v168) = v70 >= 0;
  v71 = HIDWORD(v59);
  if (v70 < 0)
  {
    MEMORY[0x1CCA817F0]();
    v72 = sub_1C9063D4C();
    v73 = v167;
    sub_1C906371C();
    v74 = v160;
    v169(v160, v34, v21);
    v75 = sub_1C9063D1C();
    v76 = sub_1C906445C();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = OUTLINED_FUNCTION_18_19();
      v159 = v71;
      v71 = v77;
      v158 = swift_slowAlloc();
      v182[0] = v158;
      *v71 = 136315650;
      v157 = v76;
      v78 = v173;
      v179 = v173;
      v180 = v159;
      v181 = v162;
      v79 = sub_1C8E5BE30();
      v84 = v57;
      v85 = sub_1C8CACE04(v79, v80, v182, v81, v82, v83);

      *(v71 + 4) = v85;
      *(v71 + 12) = 2080;
      OUTLINED_FUNCTION_0_58();
      sub_1C8CC4BD4(v86, v87, MEMORY[0x1E6968FE0]);
      v88 = sub_1C9064BDC();
      v90 = v89;
      OUTLINED_FUNCTION_14_27();
      v91(v74, v21);
      v95 = sub_1C8CACE04(v88, v90, v182, v92, v93, v94);

      *(v71 + 14) = v95;
      *(v71 + 22) = 2080;
      v179 = v72;
      v180 = BYTE4(v72) & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317B20, &qword_1C908F840);
      v96 = sub_1C9063F4C();
      v101 = sub_1C8CACE04(v96, v97, v182, v98, v99, v100);
      v58 = v78;

      *(v71 + 24) = v101;
      v57 = v84;
      _os_log_impl(&dword_1C8C9B000, v75, v157, "filelock: error unlocking fd %s @ %s, but nothing we can do: %s", v71, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      LOBYTE(v71) = v159;
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();

      OUTLINED_FUNCTION_8_30();
      v84(v167, v178);
    }

    else
    {

      OUTLINED_FUNCTION_14_27();
      v102(v74, v21);
      OUTLINED_FUNCTION_8_30();
      v57(v73, v178);
      v58 = v173;
    }

    v61 = v174;
  }

  if (close(v58) < 0)
  {
    MEMORY[0x1CCA817F0]();
    v103 = v61;
    v104 = sub_1C9063D4C();
    sub_1C906371C();
    v105 = v161;
    v169(v161, v175, v21);
    v106 = sub_1C9063D1C();
    v107 = sub_1C906445C();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = OUTLINED_FUNCTION_18_19();
      v167 = v57;
      v109 = v108;
      v182[0] = swift_slowAlloc();
      *v109 = 136315650;
      v179 = v173;
      v180 = v71;
      v181 = v162;
      v110 = sub_1C8E5BE30();
      v111 = v21;
      v116 = sub_1C8CACE04(v110, v112, v182, v113, v114, v115);

      *(v109 + 4) = v116;
      *(v109 + 12) = 2080;
      OUTLINED_FUNCTION_0_58();
      sub_1C8CC4BD4(v117, v118, MEMORY[0x1E6968FE0]);
      v119 = sub_1C9064BDC();
      v121 = v120;
      OUTLINED_FUNCTION_14_27();
      v122(v105, v111);
      v126 = sub_1C8CACE04(v119, v121, v182, v123, v124, v125);

      *(v109 + 14) = v126;
      *(v109 + 22) = 2080;
      v179 = v104;
      v180 = BYTE4(v104) & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317B20, &qword_1C908F840);
      v127 = sub_1C9063F4C();
      v132 = sub_1C8CACE04(v127, v128, v182, v129, v130, v131);
      v21 = v111;

      *(v109 + 24) = v132;
      _os_log_impl(&dword_1C8C9B000, v106, v107, "filelock: error closing fd %s @ %s, but nothing we can do: %s", v109, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();
      v57 = v167;
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x1CCA833A0]();

      OUTLINED_FUNCTION_8_30();
      v133 = v174;
    }

    else
    {

      OUTLINED_FUNCTION_14_27();
      v134(v105, v21);
      OUTLINED_FUNCTION_8_30();
      v133 = v103;
    }

    v57(v133, v178);
    LODWORD(v168) = 0;
  }

  v135 = v166;
  sub_1C906371C();
  v136 = v164;
  v137 = v175;
  v169(v164, v175, v21);
  v138 = v21;
  v139 = sub_1C9063D1C();
  v140 = sub_1C906443C();
  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    v167 = v57;
    v142 = v141;
    v143 = OUTLINED_FUNCTION_18_19();
    v182[0] = v143;
    *v142 = 136315394;
    _s10Foundation3URLV7ToolKitE8protobuf7useCaseSS19VoiceShortcutClient011ProtobufUseG0O_tF_0();
    v144 = v136;
    v145 = v171;
    v171(v144, v138);
    v146 = OUTLINED_FUNCTION_208_0();
    v152 = sub_1C8CACE04(v146, v147, v148, v149, v150, v151);

    *(v142 + 4) = v152;
    *(v142 + 12) = 1024;
    v37 = v168;
    *(v142 + 14) = v168;
    _os_log_impl(&dword_1C8C9B000, v139, v140, "Unlock result for url: %s didSucceed: %{BOOL}d", v142, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v143);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x1CCA833A0]();

    OUTLINED_FUNCTION_8_30();
    (v167)(v135, v178);
    v145(v175, v138);
  }

  else
  {

    v153 = v171;
    v171(v136, v138);
    OUTLINED_FUNCTION_8_30();
    v57(v135, v178);
    v153(v137, v138);
    v37 = v168;
  }

  v154 = v177 + v165;
  *v154 = 0;
  *(v154 + 4) = 2;
  return v37;
}

uint64_t FileLock.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](v1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8E5BE30()
{
  sub_1C906478C();
  MEMORY[0x1CCA81A90](0xD000000000000019, 0x80000001C90CBB40);
  v0 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v0);

  MEMORY[0x1CCA81A90](0x3D646E696B202CLL, 0xE700000000000000);
  sub_1C90648BC();
  MEMORY[0x1CCA81A90](0xD000000000000010, 0x80000001C90CBB60);
  sub_1C90648BC();
  MEMORY[0x1CCA81A90](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C8E5C030@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = FileLock.Configuration.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

uint64_t sub_1C8E5C070@<X0>(_BYTE *a1@<X8>)
{
  result = FileLock.Configuration.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t FileLock.url.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C9061EBC();
  OUTLINED_FUNCTION_13_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t FileLock.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FileLock(0);
  v5 = a2 + *(v4 + 20);
  *(v5 + 4) = 2;
  *v5 = 0;
  sub_1C9061EBC();
  OUTLINED_FUNCTION_13_1();
  result = (*(v6 + 32))(a2, a1);
  *(a2 + *(v4 + 24)) = 0;
  return result;
}

uint64_t FileLock.withLock<A>(_:work:)@<X0>(_BYTE *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = a1;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v13 = type metadata accessor for FileLock(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  LOBYTE(v7) = *v7;
  sub_1C8CC0CE0(v4, v15 - v14);
  v22 = v7;
  v21 = 0;
  v17 = FileLock.lock(_:configuration:)(&v22, &v21);
  if (v5)
  {
    return sub_1C8E5C34C(v16);
  }

  a2(v17);
  v20 = 0;
  FileLock.unlock(configuration:)(&v20);
  sub_1C8E5C34C(v16);
  (*(v9 + 32))(a4, v12, a3);
  return __swift_storeEnumTagSinglePayload(a4, 0, 1, a3);
}

uint64_t sub_1C8E5C34C(uint64_t a1)
{
  v2 = type metadata accessor for FileLock(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C8E5C3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317B28;
  if (!qword_1EC317B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317B28);
  }

  return result;
}

unint64_t sub_1C8E5C404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317B30;
  if (!qword_1EC317B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317B30);
  }

  return result;
}

unint64_t sub_1C8E5C45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317B38;
  if (!qword_1EC317B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317B38);
  }

  return result;
}

unint64_t sub_1C8E5C4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317B40;
  if (!qword_1EC317B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317B40);
  }

  return result;
}

unint64_t sub_1C8E5C50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317B48;
  if (!qword_1EC317B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317B48);
  }

  return result;
}

void sub_1C8E5C560(uint64_t a1)
{
  sub_1C9061EBC();
  if (v1 <= 0x3F)
  {
    sub_1C8E5C5EC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8E5C5EC()
{
  if (!qword_1EDA6D550)
  {
    v0 = sub_1C906464C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA6D550);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for FileLock.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C8E5C718(uint64_t a1)
{
  sub_1C8E5C778(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1C8E5C778(uint64_t a1)
{
  if (!qword_1EC317B60)
  {
    sub_1C906188C();
    v1 = sub_1C906464C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC317B60);
    }
  }
}

uint64_t getEnumTagSinglePayload for FileLock.Configuration(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 255) >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 255) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        return 0;
      }

      return (*a1 | (v4 << 8)) - 255;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  return 0;
}

_BYTE *storeEnumTagSinglePayload for FileLock.Configuration(_BYTE *result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v6 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
        goto LABEL_19;
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
        break;
      case 2:
        *(result + 1) = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *(result + 1) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FileLock.LockedFileDescriptor(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 6))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 4);
      v4 = v3 >= 2;
      v2 = v3 - 2;
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

uint64_t storeEnumTagSinglePayload for FileLock.LockedFileDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t static StringSearchPredicate.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C9064C2C();
  }
}

uint64_t StringSearchPredicate.Template.instantiate(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TypedValue.PrimitiveValue(0);
  MEMORY[0x1EEE9AC00](v4);
  v9 = (v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 16);
  if (v10 == 1)
  {
    v11 = *(a1 + 32);
    if (v11 >> 60)
    {
    }

    else
    {
      v12 = swift_projectBox();
      sub_1C8D09564(v12, v9);
      result = swift_getEnumCaseMultiPayload();
      if (result == 4)
      {
        v14 = v9[1];
        *a2 = *v9;
        a2[1] = v14;
        return result;
      }

      sub_1C8D095C8(v9);
    }

    v16 = swift_allocObject();
    *(v16 + 16) = 28;
    v22[1] = v11;
    TypedValue.typeIdentifier.getter();
    v17 = v22[0];
    sub_1C8D09510(v18, v19, v20);
    swift_allocError();
    *v21 = v16;
    *(v21 + 8) = v17;
    *(v21 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    sub_1C8D09510(v5, v6, v7);
    swift_allocError();
    *v15 = 1;
    *(v15 + 8) = v10;
    *(v15 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t StringSearchPredicate.Template.debugDescription.getter()
{
  sub_1C906478C();
  MEMORY[0x1CCA81A90](0x5320474E49525453, 0xEE00204843524145);
  *(swift_allocObject() + 16) = 28;
  sub_1C90648BC();

  MEMORY[0x1CCA81A90](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C8E5CC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E5D44C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E5CCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E5D44C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t StringSearchPredicate.Template.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317B68, &qword_1C908FBC0);
  OUTLINED_FUNCTION_11();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E5D44C(v8, v9, v10);
  sub_1C9064E1C();
  return (*(v4 + 8))(v7, v2);
}

uint64_t StringSearchPredicate.searchString.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;

  return v6;
}

uint64_t StringSearchPredicate.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C906478C();

  MEMORY[0x1CCA81A90](v1, v2);
  MEMORY[0x1CCA81A90](39, 0xE100000000000000);
  return 0x5320474E49525453;
}

uint64_t sub_1C8E5CF94(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7453686372616573 && a2 == 0xEC000000676E6972)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E5D034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E5CF94(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8E5D060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E5D4A0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E5D09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E5D4A0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t StringSearchPredicate.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317B70, &qword_1C908FBC8);
  OUTLINED_FUNCTION_11();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E5D4A0(v8, v9, v10);
  sub_1C9064E1C();
  sub_1C9064B2C();
  return (*(v4 + 8))(v7, v2);
}

uint64_t StringSearchPredicate.hashValue.getter()
{
  sub_1C9064D7C();
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

uint64_t StringSearchPredicate.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317B80, &qword_1C908FBD0);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8E5D4A0(v11, v12, v13);
  sub_1C9064DEC();
  if (!v2)
  {
    v14 = sub_1C9064A0C();
    v16 = v15;
    (*(v7 + 8))(v10, v5);
    *a2 = v14;
    a2[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C8E5D3D0(uint64_t a1)
{
  sub_1C9064D7C();
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

unint64_t sub_1C8E5D44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63248;
  if (!qword_1EDA63248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63248);
  }

  return result;
}

unint64_t sub_1C8E5D4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317B78;
  if (!qword_1EC317B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317B78);
  }

  return result;
}

unint64_t sub_1C8E5D564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317B88;
  if (!qword_1EC317B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317B88);
  }

  return result;
}

unint64_t sub_1C8E5D5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317B90;
  if (!qword_1EC317B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317B90);
  }

  return result;
}

unint64_t sub_1C8E5D610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317B98;
  if (!qword_1EC317B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317B98);
  }

  return result;
}

uint64_t sub_1C8E5D6B8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8E5D71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317BA0;
  if (!qword_1EC317BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317BA0);
  }

  return result;
}

unint64_t sub_1C8E5D770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317BA8;
  if (!qword_1EC317BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317BA8);
  }

  return result;
}

unint64_t sub_1C8E5D7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317BB0;
  if (!qword_1EC317BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317BB0);
  }

  return result;
}

_BYTE *sub_1C8E5D83C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8E5D8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317BB8;
  if (!qword_1EC317BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317BB8);
  }

  return result;
}

unint64_t sub_1C8E5D954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317BC0;
  if (!qword_1EC317BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317BC0);
  }

  return result;
}

unint64_t sub_1C8E5D9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317BC8;
  if (!qword_1EC317BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317BC8);
  }

  return result;
}

unint64_t sub_1C8E5DA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63258;
  if (!qword_1EDA63258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63258);
  }

  return result;
}

unint64_t sub_1C8E5DA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63250;
  if (!qword_1EDA63250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63250);
  }

  return result;
}

uint64_t sub_1C8E5DABC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C908FFE0;
  v1 = off_1EC31A360;
  *(v0 + 32) = qword_1EC31A358;
  *(v0 + 40) = v1;
  v2 = off_1EC31EA90;
  *(v0 + 48) = qword_1EC31EA88;
  *(v0 + 56) = v2;
  v3 = off_1EC314470;
  *(v0 + 64) = qword_1EC314468;
  *(v0 + 72) = v3;
  v4 = off_1EC319C48;
  *(v0 + 80) = qword_1EC319C40;
  *(v0 + 88) = v4;
  v5 = aParameters_7[1];
  *(v0 + 96) = aParameters_7[0];
  *(v0 + 104) = v5;
  v6 = off_1EC31EAE8;
  *(v0 + 112) = qword_1EC31EAE0;
  *(v0 + 120) = v6;
  v7 = off_1EC31DC40;
  *(v0 + 128) = qword_1EC31DC38;
  *(v0 + 136) = v7;
  v8 = off_1EC318CF0;
  *(v0 + 144) = qword_1EC318CE8;
  *(v0 + 152) = v8;
  *(v0 + 160) = 0x736C6F6F54;
  *(v0 + 168) = 0xE500000000000000;
  v9 = unk_1EC316070;
  *(v0 + 176) = qword_1EC316068;
  *(v0 + 184) = v9;
  v10 = off_1EC313D38;
  *(v0 + 192) = qword_1EC313D30;
  *(v0 + 200) = v10;
  *(v0 + 208) = 0x736E6F69746341;
  *(v0 + 216) = 0xE700000000000000;
  v11 = aCategories_5[1];
  *(v0 + 224) = aCategories_5[0];
  *(v0 + 232) = v11;
  v12 = aSearchkeywords_5[1];
  *(v0 + 240) = aSearchkeywords_5[0];
  *(v0 + 248) = v12;
  *(v0 + 256) = 0x7365707954;
  *(v0 + 264) = 0xE500000000000000;
  v13 = aTypecoercions[1];
  *(v0 + 272) = aTypecoercions[0];
  *(v0 + 280) = v13;
  v14 = off_1EC316B20;
  *(v0 + 288) = qword_1EC316B18;
  *(v0 + 296) = v14;
  v15 = off_1EC313438;
  *(v0 + 304) = qword_1EC313430;
  *(v0 + 312) = v15;
  *(v0 + 320) = 0xD000000000000010;
  *(v0 + 328) = 0x80000001C90CBBA0;
  v16 = off_1EC319A40;
  *(v0 + 336) = qword_1EC319A38;
  *(v0 + 344) = v16;
  v17 = off_1EC3154E0;
  *(v0 + 352) = qword_1EC3154D8;
  *(v0 + 360) = v17;
  *(v0 + 368) = 0xD000000000000011;
  *(v0 + 376) = 0x80000001C90CB640;
  v18 = off_1EC317F70;
  *(v0 + 384) = qword_1EC317F68;
  *(v0 + 392) = v18;
  v19 = aLinkstate[1];
  *(v0 + 400) = aLinkstate[0];
  *(v0 + 408) = v19;
  *(v0 + 416) = 0x617461646174654DLL;
  *(v0 + 424) = 0xE800000000000000;
  v20 = off_1EC313120;
  *(v0 + 432) = qword_1EC313118;
  *(v0 + 440) = v20;
  v21 = off_1EC31EE60;
  *(v0 + 448) = qword_1EC31EE58;
  *(v0 + 456) = v21;
  v22 = off_1EC3132D0;
  *(v0 + 464) = qword_1EC3132C8;
  *(v0 + 472) = v22;
  v23 = off_1EC316978;
  *(v0 + 480) = qword_1EC316970;
  *(v0 + 488) = v23;
  *(v0 + 496) = 0x7372656767697254;
  *(v0 + 504) = 0xE800000000000000;
  *(v0 + 512) = 0xD000000000000010;
  *(v0 + 520) = 0x80000001C90CBBC0;
  *(v0 + 528) = 0xD00000000000001FLL;
  *(v0 + 536) = 0x80000001C90CBBE0;
  v24 = unk_1EC317EB8;
  *(v0 + 544) = qword_1EC317EB0;
  *(v0 + 552) = v24;
  v25 = off_1EC314388;
  *(v0 + 560) = qword_1EC314380;
  *(v0 + 568) = v25;
  v26 = off_1EC31EC88;
  *(v0 + 576) = qword_1EC31EC80;
  *(v0 + 584) = v26;
  v27 = off_1EC31ECE8;
  *(v0 + 592) = qword_1EC31ECE0;
  *(v0 + 600) = v27;
  v28 = off_1EC319E78;
  *(v0 + 608) = qword_1EC319E70;
  *(v0 + 616) = v28;
  v29 = off_1EC313C60;
  *(v0 + 624) = qword_1EC313C58;
  *(v0 + 632) = v29;
  qword_1EC390C48 = v0;
}

uint64_t sub_1C8E5DF24(__n128 a1)
{
  v2 = v1;
  v159 = sub_1C9062B9C();
  OUTLINED_FUNCTION_11();
  v158 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v157 = v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C90625CC();
  OUTLINED_FUNCTION_11();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_216();
  v160 = v27;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_216();
  v161 = v29;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_216();
  v162 = v31;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_216();
  v163 = v33;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_216();
  v164 = v35;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_216();
  v165 = v37;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_216();
  v166 = v39;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_216();
  v167 = v41;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_216();
  v168 = v43;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_216();
  v169 = v45;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_216();
  v170 = v47;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_216();
  v171 = v49;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_216();
  v172 = v51;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_216();
  v173 = v53;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_216();
  v174 = v55;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_216();
  v175 = v57;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v58);
  v60 = v156 - v59;
  v61 = sub_1C9063D3C();
  OUTLINED_FUNCTION_11();
  v63 = v62;
  MEMORY[0x1EEE9AC00](v64);
  v66 = v156 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C906371C();
  v67 = sub_1C9063D1C();
  v68 = sub_1C906446C();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v176 = v2;
    v70 = v6;
    v71 = v8;
    v72 = v69;
    *v69 = 0;
    _os_log_impl(&dword_1C8C9B000, v67, v68, "Creating schemas", v69, 2u);
    v73 = v72;
    v8 = v71;
    v6 = v70;
    v2 = v176;
    MEMORY[0x1CCA833A0](v73, -1, -1);
  }

  v74.n128_f64[0] = (*(v63 + 8))(v66, v61);
  v75 = *(v2 + 16);
  v178 = MEMORY[0x1E69E7CC0];
  v76 = sub_1C8E606AC(v74);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD0, &qword_1C908FFF8);
  v176 = sub_1C8E60704();
  sub_1C90646CC();
  v78 = v177;
  sub_1C9062F9C();
  if (v78)
  {
    return (*(v8 + 8))(v60, v6);
  }

  v80 = v77;
  v81 = *(v8 + 8);
  v81(v60, v6);
  v82 = v76;
  v178 = MEMORY[0x1E69E7CC0];

  v83 = v175;
  v156[2] = v80;
  v177 = v82;
  sub_1C90646CC();
  sub_1C9062F9C();
  v175 = v81;
  v81(v83, v6);

  v178 = MEMORY[0x1E69E7CC0];

  v84 = v174;
  OUTLINED_FUNCTION_1_54();
  sub_1C90646CC();
  v156[1] = v75;
  sub_1C9062F9C();
  v85 = v175;
  v175(v84, v6);

  v86 = v6;
  v178 = MEMORY[0x1E69E7CC0];

  v87 = v173;
  OUTLINED_FUNCTION_1_54();
  OUTLINED_FUNCTION_16_20(v88, v89, v90);
  OUTLINED_FUNCTION_2_49();
  sub_1C9062F9C();
  v85(v87, v6);

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  v91 = v172;
  OUTLINED_FUNCTION_4_34();
  OUTLINED_FUNCTION_16_20(v92, v93, v94);
  OUTLINED_FUNCTION_160();
  sub_1C9062F9C();
  v85(v91, v86);

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  OUTLINED_FUNCTION_16_20(v95, v96, v97);
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  v98 = OUTLINED_FUNCTION_127();
  (v85)(v98);

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  OUTLINED_FUNCTION_16_20(v99, v100, v101);
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  v102 = OUTLINED_FUNCTION_127();
  (v85)(v102);

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  OUTLINED_FUNCTION_16_20(v103, v104, v105);
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  v106 = OUTLINED_FUNCTION_127();
  (v85)(v106);

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  OUTLINED_FUNCTION_16_20(v107, v108, v109);
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  v110 = OUTLINED_FUNCTION_127();
  (v85)(v110);

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  OUTLINED_FUNCTION_16_20(v111, v112, v113);
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  v114 = OUTLINED_FUNCTION_127();
  v174 = (v8 + 8);
  (v85)(v114);

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  sub_1C90646CC();
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  OUTLINED_FUNCTION_6_28();
  v115();

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  sub_1C90646CC();
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  OUTLINED_FUNCTION_6_28();
  v116();

  OUTLINED_FUNCTION_17_22(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_4_34();
  sub_1C90646CC();
  OUTLINED_FUNCTION_5_33();
  sub_1C9062F9C();
  OUTLINED_FUNCTION_6_28();
  v117();
  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  sub_1C90646CC();
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  OUTLINED_FUNCTION_6_28();
  v118();

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  sub_1C90646CC();
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  OUTLINED_FUNCTION_6_28();
  v119();

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  sub_1C90646CC();
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  OUTLINED_FUNCTION_6_28();
  v120();

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  sub_1C90646CC();
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  OUTLINED_FUNCTION_6_28();
  v121();

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  sub_1C90646CC();
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  v122 = OUTLINED_FUNCTION_3_39(&v172);
  v123(v122);

  OUTLINED_FUNCTION_17_22(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_4_34();
  sub_1C90646CC();
  OUTLINED_FUNCTION_5_33();
  sub_1C9062F9C();
  v124 = OUTLINED_FUNCTION_3_39(&v173);
  v125(v124);
  OUTLINED_FUNCTION_17_22(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  sub_1C90646CC();
  OUTLINED_FUNCTION_2_49();
  sub_1C9062F9C();
  v126 = OUTLINED_FUNCTION_3_39(&v174);
  v127(v126);
  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  sub_1C90646CC();
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  v128 = OUTLINED_FUNCTION_3_39(&v175);
  v129(v128);

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  sub_1C90646CC();
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  v130 = OUTLINED_FUNCTION_3_39(&v176);
  v131(v130);

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  sub_1C90646CC();
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  v132 = OUTLINED_FUNCTION_3_39(&v177);
  v133(v132);

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  sub_1C90646CC();
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  v134 = OUTLINED_FUNCTION_3_39(&v178);
  v135(v134);

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  sub_1C90646CC();
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  v136 = OUTLINED_FUNCTION_3_39(&v179);
  v137(v136);

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  sub_1C90646CC();
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  v138 = OUTLINED_FUNCTION_3_39(v180);
  v139(v138);

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  sub_1C90646CC();
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  v140 = OUTLINED_FUNCTION_3_39(&v181);
  v141(v140);

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  sub_1C90646CC();
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  v142 = OUTLINED_FUNCTION_3_39(&v182);
  v143(v142);

  OUTLINED_FUNCTION_17_22(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_4_34();
  sub_1C90646CC();
  OUTLINED_FUNCTION_5_33();
  sub_1C9062F9C();
  v144 = OUTLINED_FUNCTION_3_39(&v183);
  v145(v144);
  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_15_22();
  OUTLINED_FUNCTION_4_34();
  sub_1C90646CC();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_5_33();
  sub_1C9062F9C();
  v146 = OUTLINED_FUNCTION_3_39(&v184);
  v147(v146);

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_15_22();
  OUTLINED_FUNCTION_4_34();
  sub_1C90646CC();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_5_33();
  sub_1C9062F9C();
  v148 = OUTLINED_FUNCTION_3_39(&v185);
  v149(v148);

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_15_22();
  OUTLINED_FUNCTION_4_34();
  sub_1C90646CC();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_5_33();
  sub_1C9062F9C();
  v150 = OUTLINED_FUNCTION_3_39(&v186);
  v151(v150);

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_15_22();
  OUTLINED_FUNCTION_4_34();
  sub_1C90646CC();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_5_33();
  sub_1C9062F9C();
  v152 = OUTLINED_FUNCTION_3_39(&v187);
  v153(v152);

  OUTLINED_FUNCTION_12_24(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_1_54();
  sub_1C90646CC();
  OUTLINED_FUNCTION_0_59();
  sub_1C9062F9C();
  OUTLINED_FUNCTION_10_29();
  v154();

  v178 = 0;
  v179 = 0xE000000000000000;
  sub_1C906478C();

  v178 = 0xD000000000000016;
  v179 = 0x80000001C90CBB80;
  v182 = 63;
  v155 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v155);

  OUTLINED_FUNCTION_15_22();
  sub_1C9062B8C();
  OUTLINED_FUNCTION_160();
  sub_1C9062FAC();
  (*(v158 + 8))(v157, v159);
}

uint64_t sub_1C8E5F6F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v50 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v49 = v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v42 - v10;
  if (qword_1EDA68DF0 != -1)
  {
    swift_once();
  }

  v12 = sub_1C9062E6C();
  __swift_project_value_buffer(v12, qword_1EDA6E8A8);
  sub_1C9062E5C();
  v13 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
  sub_1C90629BC();

  sub_1C8D14208(v11, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA68E08 != -1)
  {
    swift_once();
  }

  v48 = __swift_project_value_buffer(v12, qword_1EDA6E8D8);
  sub_1C9062E5C();
  sub_1C9062EDC();
  v14 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
  sub_1C90629CC();

  sub_1C8D14208(v8, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
  sub_1C9062A4C();

  sub_1C8D14208(v11, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA68DE0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EDA6E890);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
  sub_1C90629CC();

  sub_1C8D14208(v8, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
  sub_1C9062A4C();

  sub_1C8D14208(v11, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA68DF8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EDA6E8C0);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
  sub_1C90629CC();

  sub_1C8D14208(v8, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
  sub_1C9062A4C();

  sub_1C8D14208(v11, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA68E30 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EDA6E938);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
  sub_1C90629CC();

  sub_1C8D14208(v8, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
  sub_1C9062A4C();

  sub_1C8D14208(v11, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA68E38 != -1)
  {
    swift_once();
  }

  v53 = v13;
  v54 = v11;
  __swift_project_value_buffer(v12, qword_1EDA6E950);
  sub_1C9062E5C();
  if (qword_1EC311420 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v14, qword_1EC390C00);
  v16 = *(v14 - 8);
  v17 = *(v16 + 16);
  v51 = v16 + 16;
  *&v52 = v15;
  v18 = v17;
  (v17)(v8);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
  sub_1C90629CC();

  sub_1C8D14208(v8, &qword_1EC317BE8, &qword_1C9090010);
  v19 = v54;
  v20 = v53;
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v53);
  sub_1C9062A4C();

  sub_1C8D14208(v19, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA68E20 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EDA6E908);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
  sub_1C90629CC();

  sub_1C8D14208(v8, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  sub_1C9062A4C();

  sub_1C8D14208(v19, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA68E40 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EDA6E968);
  sub_1C9062E5C();
  v21 = v52;
  v18(v8, v52, v14);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
  sub_1C90629CC();

  sub_1C8D14208(v8, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EDA68E18 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EDA6E8F0);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
  sub_1C90629CC();

  sub_1C8D14208(v8, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EDA6B240 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EDA6EBC8);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
  sub_1C90629CC();

  sub_1C8D14208(v8, &qword_1EC317BE8, &qword_1C9090010);
  sub_1C9062A3C();

  if (qword_1EDA68E28 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EDA6E920);
  sub_1C9062E5C();
  v18(v8, v21, v14);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
  sub_1C90629CC();

  sub_1C8D14208(v8, &qword_1EC317BE8, &qword_1C9090010);
  v22 = a1;
  if (qword_1EDA6B248 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v12, qword_1EDA6EBE0);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
  sub_1C90629CC();

  sub_1C8D14208(v8, &qword_1EC317BE8, &qword_1C9090010);
  v24 = v54;
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v53);
  sub_1C9062A4C();

  sub_1C8D14208(v24, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EDA6B230 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v12, qword_1EDA6EBB0);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
  sub_1C90629CC();

  sub_1C8D14208(v8, &qword_1EC317BE8, &qword_1C9090010);
  sub_1C9062A3C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v25 = swift_allocObject();
  v52 = xmmword_1C906A950;
  *(v25 + 16) = xmmword_1C906A950;
  *(v25 + 32) = sub_1C9062E5C();
  *(v25 + 40) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = v52;
  v51 = v22;
  v47 = v23;
  if (qword_1EDA69660 != -1)
  {
    swift_once();
  }

  v42[1] = "AssistantSchemaProvider";
  v45 = __swift_project_value_buffer(v12, qword_1EDA6EB38);
  *(v27 + 32) = sub_1C9062E5C();
  *(v27 + 40) = v28;
  v44 = *MEMORY[0x1E69A00B8];
  v29 = v44;
  v30 = sub_1C9062F2C();
  v43 = *(*(v30 - 8) + 104);
  v31 = v49;
  v43(v49, v29, v30);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  v32 = v50;
  __swift_storeEnumTagSinglePayload(v50, 1, 1, v30);
  sub_1C906299C();

  sub_1C8D14208(v32, &qword_1EC317BD8, &qword_1C9090000);
  sub_1C8D14208(v31, &qword_1EC317BD8, &qword_1C9090000);
  v33 = swift_allocObject();
  *(v33 + 16) = v52;
  *(v33 + 32) = sub_1C9062E5C();
  *(v33 + 40) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = v52;
  *(v35 + 32) = sub_1C9062E5C();
  *(v35 + 40) = v36;
  v43(v31, v44, v30);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v30);
  sub_1C906299C();

  sub_1C8D14208(v32, &qword_1EC317BD8, &qword_1C9090000);
  sub_1C8D14208(v31, &qword_1EC317BD8, &qword_1C9090000);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1C906BAE0;
  *(v37 + 32) = sub_1C9062E5C();
  *(v37 + 40) = v38;
  *(v37 + 48) = sub_1C9062E5C();
  *(v37 + 56) = v39;
  v40 = v54;
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v53);
  sub_1C90629DC();

  return sub_1C8D14208(v40, &qword_1EC317BE0, &qword_1C9090008);
}

unint64_t sub_1C8E606AC(__n128 a1)
{
  result = qword_1EDA666D8;
  if (!qword_1EDA666D8)
  {
    sub_1C90625CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA666D8);
  }

  return result;
}

unint64_t sub_1C8E60704()
{
  result = qword_1EDA62E80;
  if (!qword_1EDA62E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC317BD0, &qword_1C908FFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62E80);
  }

  return result;
}

uint64_t sub_1C8E60768()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v26 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  if (qword_1EC311358 != -1)
  {
    swift_once();
  }

  v11 = sub_1C9062E6C();
  v28 = __swift_project_value_buffer(v11, qword_1EC390AB0);
  sub_1C9062E5C();
  sub_1C9062EEC();
  v12 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  sub_1C90629CC();

  sub_1C8D14208(v10, &qword_1EC317BE8, &qword_1C9090010);
  v27 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v27);
  sub_1C9062A4C();

  sub_1C8D14208(v7, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC311360 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v11, qword_1EC390AC8);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  sub_1C90629CC();

  sub_1C8D14208(v10, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v27);
  sub_1C9062A4C();

  sub_1C8D14208(v7, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v13 = swift_allocObject();
  v24 = xmmword_1C906A950;
  *(v13 + 16) = xmmword_1C906A950;
  *(v13 + 32) = sub_1C9062E5C();
  *(v13 + 40) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v24;
  if (qword_1EDA68DF0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v11, qword_1EDA6E8A8);
  *(v15 + 32) = sub_1C9062E5C();
  *(v15 + 40) = v16;
  v17 = *MEMORY[0x1E69A00B8];
  v18 = sub_1C9062F2C();
  (*(*(v18 - 8) + 104))(v4, v17, v18);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v18);
  v19 = v26;
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v18);
  sub_1C906299C();

  sub_1C8D14208(v19, &qword_1EC317BD8, &qword_1C9090000);
  sub_1C8D14208(v4, &qword_1EC317BD8, &qword_1C9090000);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C906BAE0;
  *(v20 + 32) = sub_1C9062E5C();
  *(v20 + 40) = v21;
  *(v20 + 48) = sub_1C9062E5C();
  *(v20 + 56) = v22;
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v27);
  sub_1C90629DC();

  return sub_1C8D14208(v7, &qword_1EC317BE0, &qword_1C9090008);
}

uint64_t sub_1C8E60CEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v26 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v23 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  if (qword_1EC311240 != -1)
  {
    swift_once();
  }

  v10 = sub_1C9062E6C();
  v24 = __swift_project_value_buffer(v10, qword_1EC390858);
  sub_1C9062E5C();
  sub_1C9062EEC();
  v11 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  v12 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EDA62948 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EDA6E7C0);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC311250 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EC390870);
  sub_1C9062E5C();
  if (qword_1EC311420 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v11, qword_1EC390C00);
  (*(*(v11 - 8) + 16))(v9, v13, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v14 = swift_allocObject();
  v23 = xmmword_1C906A950;
  *(v14 + 16) = xmmword_1C906A950;
  *(v14 + 32) = sub_1C9062E5C();
  *(v14 + 40) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v23;
  if (qword_1EDA68DF0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EDA6E8A8);
  *(v16 + 32) = sub_1C9062E5C();
  *(v16 + 40) = v17;
  v18 = *MEMORY[0x1E69A00B8];
  v19 = sub_1C9062F2C();
  v20 = v25;
  (*(*(v19 - 8) + 104))(v25, v18, v19);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v19);
  v21 = v26;
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v19);
  sub_1C906299C();

  sub_1C8D14208(v21, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v20, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E6134C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v36 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v29 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - v8;
  if (qword_1EC311498 != -1)
  {
    swift_once();
  }

  v10 = sub_1C9062E6C();
  v11 = __swift_project_value_buffer(v10, qword_1EDA6E6A8);
  sub_1C9062E5C();
  sub_1C9062EEC();
  v12 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v12);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  v13 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v13);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EDA6C790 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EDA6EBF8);
  sub_1C9062E5C();
  v29 = v10;
  sub_1C9062EDC();
  v30 = v12;
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v12);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v13);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C9084EE0;
  v34 = v11;
  *(v14 + 32) = sub_1C9062E5C();
  *(v14 + 40) = v15;
  *(v14 + 48) = sub_1C9062E5C();
  *(v14 + 56) = v16;
  if (qword_1EDA624D8 != -1)
  {
    swift_once();
  }

  v17 = v29;
  v31 = __swift_project_value_buffer(v29, qword_1EDA6E6C0);
  *(v14 + 64) = sub_1C9062E5C();
  *(v14 + 72) = v18;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v13);
  sub_1C90629AC();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA691E8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v17, qword_1EDA6EA48);
  sub_1C9062E5C();
  sub_1C9062EDC();
  v19 = v30;
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v30);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v13);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC3114A0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v17, qword_1EC390CC8);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v19);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC3114A8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v17, qword_1EC390CE0);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v19);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC3114B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v17, qword_1EC390CF8);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v19);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC3114B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v17, qword_1EC390D10);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v19);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC3114C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v17, qword_1EC390D28);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v19);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC3114C8 != -1)
  {
    swift_once();
  }

  *&v33 = v13;
  __swift_project_value_buffer(v17, qword_1EC390D40);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v19);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC3114D0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v17, qword_1EC390D58);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v19);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v19);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v33);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  v20 = swift_allocObject();
  v33 = xmmword_1C906A950;
  *(v20 + 16) = xmmword_1C906A950;
  *(v20 + 32) = sub_1C9062E5C();
  *(v20 + 40) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = v33;
  if (qword_1EDA68DF0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v17, qword_1EDA6E8A8);
  *(v22 + 32) = sub_1C9062E5C();
  *(v22 + 40) = v23;
  v24 = *MEMORY[0x1E69A00B8];
  v25 = sub_1C9062F2C();
  v26 = v35;
  (*(*(v25 - 8) + 104))(v35, v24, v25);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
  v27 = v36;
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v25);
  sub_1C906299C();

  sub_1C8D14208(v27, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v26, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E61F58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v32 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v28 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  if (qword_1EDA626C0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C9062E6C();
  __swift_project_value_buffer(v10, &unk_1EDA6E750);
  sub_1C9062E5C();
  if (qword_1EC311420 != -1)
  {
    swift_once();
  }

  v11 = sub_1C9062EFC();
  v12 = __swift_project_value_buffer(v11, qword_1EC390C00);
  v13 = *(v11 - 8);
  v14 = *(v13 + 16);
  v28 = v13 + 16;
  v29 = v14;
  v14(v9, v12, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  v15 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA626A8 != -1)
  {
    swift_once();
  }

  *&v30 = __swift_project_value_buffer(v10, &unk_1EDA6E720);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA62690 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, &unk_1EDA6E6D8);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA626B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, &unk_1EDA6E738);
  sub_1C9062E5C();
  v29(v9, v12, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA626A0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, &unk_1EDA6E708);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA62698 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, &unk_1EDA6E6F0);
  sub_1C9062E5C();
  v29 = v10;
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C906BAE0;
  *(v16 + 32) = sub_1C9062E5C();
  *(v16 + 40) = v17;
  *(v16 + 48) = sub_1C9062E5C();
  *(v16 + 56) = v18;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);
  sub_1C90629AC();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  v19 = swift_allocObject();
  v30 = xmmword_1C906A950;
  *(v19 + 16) = xmmword_1C906A950;
  *(v19 + 32) = sub_1C9062E5C();
  *(v19 + 40) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  if (qword_1EDA68DF0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v29, qword_1EDA6E8A8);
  *(v21 + 32) = sub_1C9062E5C();
  *(v21 + 40) = v22;
  v23 = *MEMORY[0x1E69A00B8];
  v24 = sub_1C9062F2C();
  v25 = v31;
  (*(*(v24 - 8) + 104))(v31, v23, v24);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
  v26 = v32;
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v24);
  sub_1C906299C();

  sub_1C8D14208(v26, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v25, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E628D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v49 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v41 - v10;
  if (qword_1EC3115D0 != -1)
  {
    swift_once();
  }

  v12 = sub_1C9062E6C();
  v13 = __swift_project_value_buffer(v12, &unk_1EC390DB8);
  sub_1C9062E5C();
  sub_1C9062EEC();
  v14 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  v15 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v15);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC3115D8 != -1)
  {
    swift_once();
  }

  v47 = v13;
  v46 = __swift_project_value_buffer(v12, &unk_1EC390DD0);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v15);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC3115E0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, &unk_1EC390DE8);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v15);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v16 = swift_allocObject();
  v45 = v12;
  v17 = v16;
  *(v16 + 16) = xmmword_1C9084EE0;
  *(v16 + 32) = sub_1C9062E5C();
  v17[5] = v18;
  v17[6] = sub_1C9062E5C();
  v17[7] = v19;
  v17[8] = sub_1C9062E5C();
  v17[9] = v20;
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v15);
  sub_1C90629AC();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  v21 = swift_allocObject();
  v44 = xmmword_1C906A950;
  *(v21 + 16) = xmmword_1C906A950;
  *(v21 + 32) = sub_1C9062E5C();
  *(v21 + 40) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = v44;
  if (qword_1EC3112C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v45, qword_1EC390958);
  *(v23 + 32) = sub_1C9062E5C();
  *(v23 + 40) = v24;
  v25 = *MEMORY[0x1E69A00B8];
  v26 = sub_1C9062F2C();
  v27 = *(*(v26 - 8) + 104);
  v28 = v48;
  v43 = v25;
  v42 = v27;
  v27(v48, v25, v26);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v26);
  v29 = v49;
  __swift_storeEnumTagSinglePayload(v49, 1, 1, v26);
  *&v44 = a1;
  sub_1C906299C();

  sub_1C8D14208(v29, &qword_1EC317BD8, &qword_1C9090000);
  sub_1C8D14208(v28, &qword_1EC317BD8, &qword_1C9090000);
  v30 = swift_allocObject();
  v41 = xmmword_1C906BAE0;
  *(v30 + 16) = xmmword_1C906BAE0;
  *(v30 + 32) = sub_1C9062E5C();
  *(v30 + 40) = v31;
  *(v30 + 48) = sub_1C9062E5C();
  *(v30 + 56) = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = v41;
  v34 = qword_1EDA62698;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = v45;
  __swift_project_value_buffer(v45, &unk_1EDA6E6F0);
  *(v33 + 32) = sub_1C9062E5C();
  *(v33 + 40) = v36;
  if (qword_1EDA626A8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v35, &unk_1EDA6E720);
  *(v33 + 48) = sub_1C9062E5C();
  *(v33 + 56) = v37;
  v38 = v48;
  v42(v48, v43, v26);
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v26);
  v39 = v49;
  __swift_storeEnumTagSinglePayload(v49, 1, 1, v26);
  sub_1C906299C();

  sub_1C8D14208(v39, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v38, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E6313C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v53 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v44 - v10;
  if (qword_1EDA62470 != -1)
  {
    swift_once();
  }

  v12 = sub_1C9062E6C();
  v54 = __swift_project_value_buffer(v12, qword_1EDA6E618);
  sub_1C9062E5C();
  sub_1C9062EEC();
  v13 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  v14 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EDA62498 != -1)
  {
    swift_once();
  }

  v51 = __swift_project_value_buffer(v12, qword_1EDA6E660);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  *&v50 = v13;
  if (qword_1EDA62480 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EDA6E630);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v50);
  sub_1C90629CC();
  v49 = v12;
  v15 = a1;

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C9084EE0;
  *(v16 + 32) = sub_1C9062E5C();
  *(v16 + 40) = v17;
  *(v16 + 48) = sub_1C9062E5C();
  *(v16 + 56) = v18;
  *(v16 + 64) = sub_1C9062E5C();
  *(v16 + 72) = v19;
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_1C90629AC();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA62488 != -1)
  {
    swift_once();
  }

  v20 = v49;
  __swift_project_value_buffer(v49, qword_1EDA6E648);
  sub_1C9062E5C();
  sub_1C9062EDC();
  v21 = v50;
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v50);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  v22 = v15;
  if (qword_1EDA624A0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v20, qword_1EDA6E678);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v21);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC311288 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v20, qword_1EC3908E0);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v21);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC311290 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v20, qword_1EC3908F8);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v21);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  v23 = swift_allocObject();
  v50 = xmmword_1C906A950;
  *(v23 + 16) = xmmword_1C906A950;
  *(v23 + 32) = sub_1C9062E5C();
  *(v23 + 40) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = v50;
  if (qword_1EDA68DF0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v20, qword_1EDA6E8A8);
  *(v25 + 32) = sub_1C9062E5C();
  *(v25 + 40) = v26;
  v27 = *MEMORY[0x1E69A00B8];
  v28 = sub_1C9062F2C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 104);
  v31 = v52;
  v47 = v27;
  v45 = v29 + 104;
  v46 = v30;
  v30(v52, v27, v28);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v28);
  v32 = v53;
  __swift_storeEnumTagSinglePayload(v53, 1, 1, v28);
  *&v50 = v22;
  sub_1C906299C();

  sub_1C8D14208(v32, &qword_1EC317BD8, &qword_1C9090000);
  sub_1C8D14208(v31, &qword_1EC317BD8, &qword_1C9090000);
  v33 = swift_allocObject();
  v44 = xmmword_1C906BAE0;
  *(v33 + 16) = xmmword_1C906BAE0;
  *(v33 + 32) = sub_1C9062E5C();
  *(v33 + 40) = v34;
  *(v33 + 48) = sub_1C9062E5C();
  *(v33 + 56) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = v44;
  v37 = qword_1EDA62698;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = v49;
  __swift_project_value_buffer(v49, &unk_1EDA6E6F0);
  *(v36 + 32) = sub_1C9062E5C();
  *(v36 + 40) = v39;
  if (qword_1EDA626A8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v38, &unk_1EDA6E720);
  *(v36 + 48) = sub_1C9062E5C();
  *(v36 + 56) = v40;
  v41 = v52;
  v46(v52, v47, v28);
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v28);
  v42 = v53;
  __swift_storeEnumTagSinglePayload(v53, 1, 1, v28);
  sub_1C906299C();

  sub_1C8D14208(v42, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v41, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E63C90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v31 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  if (qword_1EDA60CC8 != -1)
  {
    swift_once();
  }

  v10 = sub_1C9062E6C();
  v29 = __swift_project_value_buffer(v10, qword_1EDA6E5C0);
  sub_1C9062E5C();
  sub_1C9062EEC();
  v11 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  v12 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA66A00 != -1)
  {
    swift_once();
  }

  *&v28 = __swift_project_value_buffer(v10, qword_1EDA6E878);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA60CB8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EDA6E5A8);
  sub_1C9062E5C();
  v27 = v10;
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C9084EE0;
  *(v13 + 32) = sub_1C9062E5C();
  *(v13 + 40) = v14;
  *(v13 + 48) = sub_1C9062E5C();
  *(v13 + 56) = v15;
  *(v13 + 64) = sub_1C9062E5C();
  *(v13 + 72) = v16;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C90629AC();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  v17 = swift_allocObject();
  v28 = xmmword_1C906A950;
  *(v17 + 16) = xmmword_1C906A950;
  *(v17 + 32) = sub_1C9062E5C();
  *(v17 + 40) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = v28;
  if (qword_1EDA68DF0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v27, qword_1EDA6E8A8);
  *(v19 + 32) = sub_1C9062E5C();
  *(v19 + 40) = v20;
  v21 = *MEMORY[0x1E69A00B8];
  v22 = sub_1C9062F2C();
  v23 = v30;
  (*(*(v22 - 8) + 104))(v30, v21, v22);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
  v24 = v31;
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v22);
  sub_1C906299C();

  sub_1C8D14208(v24, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v23, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E642F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v30 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v29 = v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v26 - v8;
  if (qword_1EDA60980 != -1)
  {
    swift_once();
  }

  v10 = sub_1C9062E6C();
  v28 = __swift_project_value_buffer(v10, qword_1EDA6E590);
  sub_1C9062E5C();
  sub_1C9062EEC();
  v11 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  v12 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA66928 != -1)
  {
    swift_once();
  }

  *&v27 = __swift_project_value_buffer(v10, qword_1EDA6E848);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA60970 != -1)
  {
    swift_once();
  }

  v26[1] = __swift_project_value_buffer(v10, qword_1EDA6E578);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA66938 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EDA6E860);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C9084EE0;
  *(v13 + 32) = sub_1C9062E5C();
  *(v13 + 40) = v14;
  *(v13 + 48) = sub_1C9062E5C();
  *(v13 + 56) = v15;
  *(v13 + 64) = sub_1C9062E5C();
  *(v13 + 72) = v16;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C90629AC();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  v17 = swift_allocObject();
  v27 = xmmword_1C906A950;
  *(v17 + 16) = xmmword_1C906A950;
  *(v17 + 32) = sub_1C9062E5C();
  *(v17 + 40) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = v27;
  if (qword_1EDA68DF0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EDA6E8A8);
  *(v19 + 32) = sub_1C9062E5C();
  *(v19 + 40) = v20;
  v21 = *MEMORY[0x1E69A00B8];
  v22 = sub_1C9062F2C();
  v23 = v29;
  (*(*(v22 - 8) + 104))(v29, v21, v22);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
  v24 = v30;
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v22);
  sub_1C906299C();

  sub_1C8D14208(v24, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v23, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E64A34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  if (qword_1EC3113F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1C9062E6C();
  v31 = __swift_project_value_buffer(v12, qword_1EC390BA0);
  sub_1C9062E5C();
  sub_1C9062EEC();
  v13 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  v14 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC311400 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EC390BB8);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC311408 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v12, qword_1EC390BD0);
  sub_1C9062E5C();
  if (qword_1EC311420 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v13, qword_1EC390C00);
  (*(*(v13 - 8) + 16))(v11, v15, v13);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  v29 = a1;
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v16 = swift_allocObject();
  v28 = xmmword_1C906A950;
  *(v16 + 16) = xmmword_1C906A950;
  *(v16 + 32) = sub_1C9062E5C();
  *(v16 + 40) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = v28;
  *&v28 = v14;
  if (qword_1EC3112C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EC390958);
  *(v18 + 32) = sub_1C9062E5C();
  *(v18 + 40) = v19;
  v20 = *MEMORY[0x1E69A00B8];
  v21 = sub_1C9062F2C();
  v22 = v32;
  (*(*(v21 - 8) + 104))(v32, v20, v21);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
  v23 = v33;
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v21);
  sub_1C906299C();

  sub_1C8D14208(v23, &qword_1EC317BD8, &qword_1C9090000);
  sub_1C8D14208(v22, &qword_1EC317BD8, &qword_1C9090000);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C906BAE0;
  *(v24 + 32) = sub_1C9062E5C();
  *(v24 + 40) = v25;
  *(v24 + 48) = sub_1C9062E5C();
  *(v24 + 56) = v26;
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v28);
  sub_1C90629AC();

  return sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
}

uint64_t sub_1C8E65120()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v25 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  if (qword_1EC311468 != -1)
  {
    swift_once();
  }

  v11 = sub_1C9062E6C();
  v24 = __swift_project_value_buffer(v11, qword_1EC390C50);
  sub_1C9062E5C();
  sub_1C9062EDC();
  v12 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  sub_1C90629CC();

  sub_1C8D14208(v10, &qword_1EC317BE8, &qword_1C9090010);
  v13 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v13);
  sub_1C9062A4C();

  sub_1C8D14208(v7, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC311470 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v11, qword_1EC390C68);
  sub_1C9062E5C();
  if (qword_1EC311420 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v12, qword_1EC390C00);
  (*(*(v12 - 8) + 16))(v10, v14, v12);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  sub_1C90629CC();

  sub_1C8D14208(v10, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v13);
  sub_1C9062A4C();

  sub_1C8D14208(v7, &qword_1EC317BE0, &qword_1C9090008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v15 = swift_allocObject();
  v23 = xmmword_1C906A950;
  *(v15 + 16) = xmmword_1C906A950;
  *(v15 + 32) = sub_1C9062E5C();
  *(v15 + 40) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = v23;
  if (qword_1EC3112C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v11, qword_1EC390958);
  *(v17 + 32) = sub_1C9062E5C();
  *(v17 + 40) = v18;
  v19 = *MEMORY[0x1E69A00B8];
  v20 = sub_1C9062F2C();
  (*(*(v20 - 8) + 104))(v4, v19, v20);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v20);
  v21 = v25;
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v20);
  sub_1C906299C();

  sub_1C8D14208(v21, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v4, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E6567C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v26 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  if (qword_1EC311478 != -1)
  {
    swift_once();
  }

  v11 = sub_1C9062E6C();
  v28 = __swift_project_value_buffer(v11, qword_1EC390C80);
  sub_1C9062E5C();
  sub_1C9062EDC();
  v12 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  sub_1C90629CC();

  sub_1C8D14208(v10, &qword_1EC317BE8, &qword_1C9090010);
  v27 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v27);
  sub_1C9062A4C();

  sub_1C8D14208(v7, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC311480 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v11, qword_1EC390C98);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  sub_1C90629CC();

  sub_1C8D14208(v10, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v27);
  sub_1C9062A4C();

  sub_1C8D14208(v7, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v13 = swift_allocObject();
  v24 = xmmword_1C906A950;
  *(v13 + 16) = xmmword_1C906A950;
  *(v13 + 32) = sub_1C9062E5C();
  *(v13 + 40) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v24;
  if (qword_1EC3112C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v11, qword_1EC390958);
  *(v15 + 32) = sub_1C9062E5C();
  *(v15 + 40) = v16;
  v17 = *MEMORY[0x1E69A00B8];
  v18 = sub_1C9062F2C();
  (*(*(v18 - 8) + 104))(v4, v17, v18);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v18);
  v19 = v26;
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v18);
  sub_1C906299C();

  sub_1C8D14208(v19, &qword_1EC317BD8, &qword_1C9090000);
  sub_1C8D14208(v4, &qword_1EC317BD8, &qword_1C9090000);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C906BAE0;
  *(v20 + 32) = sub_1C9062E5C();
  *(v20 + 40) = v21;
  *(v20 + 48) = sub_1C9062E5C();
  *(v20 + 56) = v22;
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v27);
  sub_1C90629AC();

  return sub_1C8D14208(v7, &qword_1EC317BE0, &qword_1C9090008);
}

uint64_t sub_1C8E65C00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - v10;
  if (qword_1EC3112C0 != -1)
  {
    swift_once();
  }

  v12 = sub_1C9062E6C();
  __swift_project_value_buffer(v12, qword_1EC390958);
  sub_1C9062E5C();
  sub_1C9062EDC();
  v13 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  v31 = a1;
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  v14 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_1C9062A2C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC3112C8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EC390970);
  sub_1C9062E5C();
  if (qword_1EC311420 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v13, qword_1EC390C00);
  v16 = *(v13 - 8);
  v27 = *(v16 + 16);
  *&v28 = v15;
  v26 = v16 + 16;
  v27(v11);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC3112D8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EC3909A0);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC3112D0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EC390988);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC3112E0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EC3909B8);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC3112E8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EC3909D0);
  sub_1C9062E5C();
  (v27)(v11, v28, v13);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v17 = swift_allocObject();
  v28 = xmmword_1C906A950;
  *(v17 + 16) = xmmword_1C906A950;
  *(v17 + 32) = sub_1C9062E5C();
  *(v17 + 40) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = v28;
  if (qword_1EDA69660 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EDA6EB38);
  *(v19 + 32) = sub_1C9062E5C();
  *(v19 + 40) = v20;
  v21 = *MEMORY[0x1E69A00B8];
  v22 = sub_1C9062F2C();
  v23 = v29;
  (*(*(v22 - 8) + 104))(v29, v21, v22);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
  v24 = v30;
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v22);
  sub_1C906299C();

  sub_1C8D14208(v24, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v23, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E66510()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v29 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  if (qword_1EC311200 != -1)
  {
    swift_once();
  }

  v10 = sub_1C9062E6C();
  __swift_project_value_buffer(v10, qword_1EC390798);
  sub_1C9062E5C();
  sub_1C9062EDC();
  v11 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  v12 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC311208 != -1)
  {
    swift_once();
  }

  *&v26 = __swift_project_value_buffer(v10, qword_1EC3907B0);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC311210 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EC3907C8);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC311218 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EC3907E0);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC311220 != -1)
  {
    swift_once();
  }

  v27 = v10;
  __swift_project_value_buffer(v10, qword_1EC3907F8);
  sub_1C9062E5C();
  if (qword_1EC311420 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v11, qword_1EC390C00);
  (*(*(v11 - 8) + 16))(v9, v13, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C906BAE0;
  *(v14 + 32) = sub_1C9062E5C();
  *(v14 + 40) = v15;
  *(v14 + 48) = sub_1C9062E5C();
  *(v14 + 56) = v16;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C90629AC();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  v17 = swift_allocObject();
  v26 = xmmword_1C906A950;
  *(v17 + 16) = xmmword_1C906A950;
  *(v17 + 32) = sub_1C9062E5C();
  *(v17 + 40) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = v26;
  if (qword_1EC3112C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v27, qword_1EC390958);
  *(v19 + 32) = sub_1C9062E5C();
  *(v19 + 40) = v20;
  v21 = *MEMORY[0x1E69A00B8];
  v22 = sub_1C9062F2C();
  v23 = v28;
  (*(*(v22 - 8) + 104))(v28, v21, v22);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
  v24 = v29;
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v22);
  sub_1C906299C();

  sub_1C8D14208(v24, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v23, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E66D50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v29 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  if (qword_1EC311268 != -1)
  {
    swift_once();
  }

  v10 = sub_1C9062E6C();
  *&v26 = __swift_project_value_buffer(v10, qword_1EC3908A0);
  sub_1C9062E5C();
  sub_1C9062EDC();
  v11 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  v12 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC311260 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EC390888);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC311270 != -1)
  {
    swift_once();
  }

  v27 = v10;
  __swift_project_value_buffer(v10, qword_1EC3908B8);
  sub_1C9062E5C();
  if (qword_1EC311420 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v11, qword_1EC390C00);
  (*(*(v11 - 8) + 16))(v9, v13, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C906BAE0;
  *(v14 + 32) = sub_1C9062E5C();
  *(v14 + 40) = v15;
  *(v14 + 48) = sub_1C9062E5C();
  *(v14 + 56) = v16;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C90629AC();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  v17 = swift_allocObject();
  v26 = xmmword_1C906A950;
  *(v17 + 16) = xmmword_1C906A950;
  *(v17 + 32) = sub_1C9062E5C();
  *(v17 + 40) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = v26;
  if (qword_1EC3112C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v27, qword_1EC390958);
  *(v19 + 32) = sub_1C9062E5C();
  *(v19 + 40) = v20;
  v21 = *MEMORY[0x1E69A00B8];
  v22 = sub_1C9062F2C();
  v23 = v28;
  (*(*(v22 - 8) + 104))(v28, v21, v22);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
  v24 = v29;
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v22);
  sub_1C906299C();

  sub_1C8D14208(v24, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v23, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E6741C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  if (qword_1EC3120F0 != -1)
  {
    swift_once();
  }

  v12 = sub_1C9062E6C();
  v36 = __swift_project_value_buffer(v12, qword_1EC390FE0);
  sub_1C9062E5C();
  sub_1C9062EDC();
  v13 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  v14 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC3120F8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EC390FF8);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC312100 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v12, qword_1EC391010);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC312108 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EC391028);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v15 = swift_allocObject();
  v35 = v12;
  v16 = a1;
  v17 = v15;
  *(v15 + 16) = xmmword_1C9084EE0;
  *(v15 + 32) = sub_1C9062E5C();
  v17[5] = v18;
  v17[6] = sub_1C9062E5C();
  v17[7] = v19;
  v17[8] = sub_1C9062E5C();
  v17[9] = v20;
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  v37 = v16;
  sub_1C90629AC();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  v21 = swift_allocObject();
  v34 = xmmword_1C906BAE0;
  *(v21 + 16) = xmmword_1C906BAE0;
  *(v21 + 32) = sub_1C9062E5C();
  *(v21 + 40) = v22;
  *(v21 + 48) = sub_1C9062E5C();
  *(v21 + 56) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v34;
  v25 = qword_1EC311268;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = v35;
  __swift_project_value_buffer(v35, qword_1EC3908A0);
  *(v24 + 32) = sub_1C9062E5C();
  *(v24 + 40) = v27;
  if (qword_1EC311260 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v26, qword_1EC390888);
  *(v24 + 48) = sub_1C9062E5C();
  *(v24 + 56) = v28;
  v29 = *MEMORY[0x1E69A00B8];
  v30 = sub_1C9062F2C();
  v31 = v38;
  (*(*(v30 - 8) + 104))(v38, v29, v30);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  v32 = v39;
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v30);
  sub_1C906299C();

  sub_1C8D14208(v32, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v31, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E67BD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v33 = v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v32 = v29 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v29 - v8;
  if (qword_1EC312110 != -1)
  {
    swift_once();
  }

  v10 = sub_1C9062E6C();
  v31 = __swift_project_value_buffer(v10, qword_1EC391040);
  sub_1C9062E5C();
  sub_1C9062EDC();
  v11 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  v12 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC312118 != -1)
  {
    swift_once();
  }

  v29[1] = __swift_project_value_buffer(v10, qword_1EC391058);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC312120 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EC391070);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC312128 != -1)
  {
    swift_once();
  }

  *&v30 = v12;
  v29[0] = __swift_project_value_buffer(v10, qword_1EC391088);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC312130 != -1)
  {
    swift_once();
  }

  v34 = v10;
  __swift_project_value_buffer(v10, qword_1EC3910A0);
  sub_1C9062E5C();
  if (qword_1EC311420 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v11, qword_1EC390C00);
  v14 = *(*(v11 - 8) + 16);
  v14(v9, v13, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC312138 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v34, qword_1EC3910B8);
  sub_1C9062E5C();
  v14(v9, v13, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC312140 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v34, qword_1EC3910D0);
  sub_1C9062E5C();
  v14(v9, v13, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC312148 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v34, qword_1EC3910E8);
  sub_1C9062E5C();
  v14(v9, v13, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC312150 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v34, qword_1EC391100);
  sub_1C9062E5C();
  v14(v9, v13, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  v15 = v30;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v30);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C9084EE0;
  *(v16 + 32) = sub_1C9062E5C();
  *(v16 + 40) = v17;
  *(v16 + 48) = sub_1C9062E5C();
  *(v16 + 56) = v18;
  *(v16 + 64) = sub_1C9062E5C();
  *(v16 + 72) = v19;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);
  sub_1C90629AC();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  v20 = swift_allocObject();
  v30 = xmmword_1C906A950;
  *(v20 + 16) = xmmword_1C906A950;
  *(v20 + 32) = sub_1C9062E5C();
  *(v20 + 40) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = v30;
  if (qword_1EC3112C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v34, qword_1EC390958);
  *(v22 + 32) = sub_1C9062E5C();
  *(v22 + 40) = v23;
  v24 = *MEMORY[0x1E69A00B8];
  v25 = sub_1C9062F2C();
  v26 = v32;
  (*(*(v25 - 8) + 104))(v32, v24, v25);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
  v27 = v33;
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v25);
  sub_1C906299C();

  sub_1C8D14208(v27, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v26, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E68718()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v29 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  if (qword_1EC3115E8 != -1)
  {
    swift_once();
  }

  v10 = sub_1C9062E6C();
  v27 = __swift_project_value_buffer(v10, qword_1EC390E00);
  sub_1C9062E5C();
  sub_1C9062EDC();
  v11 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  v31 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v31);
  sub_1C9062A4C();

  v32 = v6;
  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC3115F0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EC390E18);
  sub_1C9062E5C();
  if (qword_1EC311420 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v11, qword_1EC390C00);
  v13 = *(*(v11 - 8) + 16);
  v13(v9, v12, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  v14 = v32;
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v31);
  sub_1C9062A4C();

  sub_1C8D14208(v14, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC3115F8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EC390E30);
  sub_1C9062E5C();
  v33 = v10;
  v13(v9, v12, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC311628 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v33, qword_1EC390EC0);
  sub_1C9062E5C();
  v13(v9, v12, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC311600 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v33, qword_1EC390E48);
  sub_1C9062E5C();
  v13(v9, v12, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC311608 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v33, qword_1EC390E60);
  sub_1C9062E5C();
  v13(v9, v12, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC311610 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v33, qword_1EC390E78);
  sub_1C9062E5C();
  v13(v9, v12, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC311618 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v33, qword_1EC390E90);
  sub_1C9062E5C();
  v13(v9, v12, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC311620 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v33, qword_1EC390EA8);
  sub_1C9062E5C();
  v13(v9, v12, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC311630 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v33, qword_1EC390ED8);
  sub_1C9062E5C();
  v13(v9, v12, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v15 = swift_allocObject();
  v30 = xmmword_1C906A950;
  *(v15 + 16) = xmmword_1C906A950;
  *(v15 + 32) = sub_1C9062E5C();
  *(v15 + 40) = v16;
  v17 = v32;
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v31);
  sub_1C90629AC();

  sub_1C8D14208(v17, &qword_1EC317BE0, &qword_1C9090008);
  v18 = swift_allocObject();
  *(v18 + 16) = v30;
  *(v18 + 32) = sub_1C9062E5C();
  *(v18 + 40) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = v30;
  if (qword_1EC3112C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v33, qword_1EC390958);
  *(v20 + 32) = sub_1C9062E5C();
  *(v20 + 40) = v21;
  v22 = *MEMORY[0x1E69A00B8];
  v23 = sub_1C9062F2C();
  v24 = v28;
  (*(*(v23 - 8) + 104))(v28, v22, v23);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
  v25 = v29;
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v23);
  sub_1C906299C();

  sub_1C8D14208(v25, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v24, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E69284(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  if (qword_1EC3113B8 != -1)
  {
    swift_once();
  }

  v8 = sub_1C9062E6C();
  __swift_project_value_buffer(v8, qword_1EC390B58);
  sub_1C9062E5C();
  sub_1C9062EDC();
  v9 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  v13[1] = a1;
  sub_1C90629CC();

  sub_1C8D14208(v7, &qword_1EC317BE8, &qword_1C9090010);
  v10 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  sub_1C9062A4C();

  sub_1C8D14208(v4, &qword_1EC317BE0, &qword_1C9090008);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  sub_1C9062A2C();

  sub_1C8D14208(v4, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC3113C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, qword_1EC390B70);
  sub_1C9062E5C();
  if (qword_1EC311418 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v9, qword_1EC390BE8);
  (*(*(v9 - 8) + 16))(v7, v11, v9);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  sub_1C90629CC();

  sub_1C8D14208(v7, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  sub_1C9062A4C();

  return sub_1C8D14208(v4, &qword_1EC317BE0, &qword_1C9090008);
}

uint64_t sub_1C8E6960C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v14 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v14 - v4;
  if (qword_1EDA69660 != -1)
  {
    swift_once();
  }

  v6 = sub_1C9062E6C();
  __swift_project_value_buffer(v6, qword_1EDA6EB38);
  sub_1C9062E5C();
  v7 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  sub_1C90629BC();

  sub_1C8D14208(v5, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA69668 != -1)
  {
    swift_once();
  }

  v14[1] = __swift_project_value_buffer(v6, qword_1EDA6EB50);
  sub_1C9062E5C();
  sub_1C9062EDC();
  v8 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
  sub_1C90629CC();

  sub_1C8D14208(v2, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  sub_1C9062A4C();

  sub_1C8D14208(v5, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EDA69680 != -1)
  {
    swift_once();
  }

  v14[0] = __swift_project_value_buffer(v6, qword_1EDA6EB80);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
  sub_1C90629CC();

  sub_1C8D14208(v2, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  sub_1C9062A4C();

  sub_1C8D14208(v5, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA69648 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, qword_1EDA6EB08);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
  sub_1C90629CC();

  sub_1C8D14208(v2, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  sub_1C9062A4C();

  sub_1C8D14208(v5, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA69640 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, qword_1EDA6EAF0);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
  sub_1C90629CC();

  sub_1C8D14208(v2, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  sub_1C9062A4C();

  sub_1C8D14208(v5, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EDA69658 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, qword_1EDA6EB20);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
  sub_1C90629CC();

  sub_1C8D14208(v2, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  sub_1C9062A4C();

  sub_1C8D14208(v5, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA69670 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, qword_1EDA6EB68);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
  sub_1C90629CC();

  sub_1C8D14208(v2, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  sub_1C9062A4C();

  sub_1C8D14208(v5, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C9084EE0;
  *(v9 + 32) = sub_1C9062E5C();
  *(v9 + 40) = v10;
  *(v9 + 48) = sub_1C9062E5C();
  *(v9 + 56) = v11;
  *(v9 + 64) = sub_1C9062E5C();
  *(v9 + 72) = v12;
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  sub_1C90629DC();

  return sub_1C8D14208(v5, &qword_1EC317BE0, &qword_1C9090008);
}

uint64_t sub_1C8E69DE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v40 = &v36[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v36[-v11];
  if (qword_1EC3120E8 != -1)
  {
    swift_once();
  }

  v39 = v6;
  v13 = sub_1C9062E6C();
  v41 = __swift_project_value_buffer(v13, qword_1EC390FC8);
  sub_1C9062E5C();
  sub_1C9062EEC();
  v14 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
  sub_1C90629CC();

  sub_1C8D14208(v12, &qword_1EC317BE8, &qword_1C9090010);
  v15 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  sub_1C9062A4C();

  sub_1C8D14208(v9, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  v16 = a1;
  if (qword_1EDA62B80 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v13, qword_1EDA6E7D8);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
  sub_1C90629CC();

  sub_1C8D14208(v12, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  sub_1C9062A4C();

  sub_1C8D14208(v9, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v18 = swift_allocObject();
  v43 = v13;
  v19 = v18;
  *(v18 + 16) = xmmword_1C906BAE0;
  *(v18 + 32) = sub_1C9062E5C();
  v19[5] = v20;
  v38 = v17;
  v19[6] = sub_1C9062E5C();
  v19[7] = v21;
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  sub_1C90629AC();

  sub_1C8D14208(v9, &qword_1EC317BE0, &qword_1C9090008);
  v22 = swift_allocObject();
  v42 = xmmword_1C906A950;
  *(v22 + 16) = xmmword_1C906A950;
  *(v22 + 32) = sub_1C9062E5C();
  *(v22 + 40) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v42;
  v41 = v16;
  if (qword_1EDA68DF0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v43, qword_1EDA6E8A8);
  *(v24 + 32) = sub_1C9062E5C();
  *(v24 + 40) = v25;
  v26 = *MEMORY[0x1E69A00B8];
  v27 = sub_1C9062F2C();
  v28 = *(*(v27 - 8) + 104);
  v29 = v39;
  v37 = v26;
  v28(v39, v26, v27);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v27);
  v30 = v40;
  __swift_storeEnumTagSinglePayload(v40, 1, 1, v27);
  sub_1C906299C();

  sub_1C8D14208(v30, &qword_1EC317BD8, &qword_1C9090000);
  sub_1C8D14208(v29, &qword_1EC317BD8, &qword_1C9090000);
  v31 = swift_allocObject();
  *(v31 + 16) = v42;
  *(v31 + 32) = sub_1C9062E5C();
  *(v31 + 40) = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = v42;
  if (qword_1EDA69660 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v43, qword_1EDA6EB38);
  *(v33 + 32) = sub_1C9062E5C();
  *(v33 + 40) = v34;
  v28(v29, v37, v27);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v27);
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v27);
  sub_1C906299C();

  sub_1C8D14208(v30, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v29, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E6A4D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v29 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  if (qword_1EDA694B0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C9062E6C();
  v30 = __swift_project_value_buffer(v10, qword_1EDA6EAB0);
  sub_1C9062E5C();
  sub_1C9062EEC();
  v11 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  v12 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EDA69498 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EDA6EA80);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  v27 = v10;
  *&v26 = v11;
  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C906BAE0;
  *(v13 + 32) = sub_1C9062E5C();
  *(v13 + 40) = v14;
  *(v13 + 48) = sub_1C9062E5C();
  *(v13 + 56) = v15;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C90629AC();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA694A0 != -1)
  {
    swift_once();
  }

  v16 = v27;
  __swift_project_value_buffer(v27, qword_1EDA6EA98);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v26);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  v17 = swift_allocObject();
  v26 = xmmword_1C906A950;
  *(v17 + 16) = xmmword_1C906A950;
  *(v17 + 32) = sub_1C9062E5C();
  *(v17 + 40) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = v26;
  if (qword_1EDA69660 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v16, qword_1EDA6EB38);
  *(v19 + 32) = sub_1C9062E5C();
  *(v19 + 40) = v20;
  v21 = *MEMORY[0x1E69A00B8];
  v22 = sub_1C9062F2C();
  v23 = v28;
  (*(*(v22 - 8) + 104))(v28, v21, v22);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
  v24 = v29;
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v22);
  sub_1C906299C();

  sub_1C8D14208(v24, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v23, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E6AB54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v30 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v29 = v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v26 - v8;
  if (qword_1EC3115A0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C9062E6C();
  v28 = __swift_project_value_buffer(v10, qword_1EC390D70);
  sub_1C9062E5C();
  sub_1C9062EEC();
  v11 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  v12 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EDA69518 != -1)
  {
    swift_once();
  }

  *&v27 = __swift_project_value_buffer(v10, qword_1EDA6EAC8);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC3115B0 != -1)
  {
    swift_once();
  }

  v26[1] = __swift_project_value_buffer(v10, qword_1EC390D88);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC3115B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EC390DA0);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C9084EE0;
  *(v13 + 32) = sub_1C9062E5C();
  *(v13 + 40) = v14;
  *(v13 + 48) = sub_1C9062E5C();
  *(v13 + 56) = v15;
  *(v13 + 64) = sub_1C9062E5C();
  *(v13 + 72) = v16;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C90629AC();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  v17 = swift_allocObject();
  v27 = xmmword_1C906A950;
  *(v17 + 16) = xmmword_1C906A950;
  *(v17 + 32) = sub_1C9062E5C();
  *(v17 + 40) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = v27;
  if (qword_1EDA69660 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EDA6EB38);
  *(v19 + 32) = sub_1C9062E5C();
  *(v19 + 40) = v20;
  v21 = *MEMORY[0x1E69A00B8];
  v22 = sub_1C9062F2C();
  v23 = v29;
  (*(*(v22 - 8) + 104))(v29, v21, v22);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
  v24 = v30;
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v22);
  sub_1C906299C();

  sub_1C8D14208(v24, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v23, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E6B2A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v45 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - v10;
  if (qword_1EC3120C0 != -1)
  {
    swift_once();
  }

  v12 = sub_1C9062E6C();
  __swift_project_value_buffer(v12, qword_1EC390F68);
  sub_1C9062E5C();
  v13 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
  sub_1C90629BC();

  sub_1C8D14208(v11, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC3120C8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v12, qword_1EC390F80);
  sub_1C9062E5C();
  sub_1C9062EEC();
  v15 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v15);
  sub_1C90629CC();

  sub_1C8D14208(v8, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
  sub_1C9062A4C();

  sub_1C8D14208(v11, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC3120D0 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v12, qword_1EC390F98);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v15);
  sub_1C90629CC();

  sub_1C8D14208(v8, &qword_1EC317BE8, &qword_1C9090010);
  sub_1C9062A3C();

  if (qword_1EC3120D8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EC390FB0);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v15);
  sub_1C90629CC();

  sub_1C8D14208(v8, &qword_1EC317BE8, &qword_1C9090010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v16 = swift_allocObject();
  v43 = xmmword_1C906A950;
  *(v16 + 16) = xmmword_1C906A950;
  *(v16 + 32) = sub_1C9062E5C();
  *(v16 + 40) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = v43;
  v38 = v14;
  v19 = a1;
  if (qword_1EDA68DF0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EDA6E8A8);
  *(v18 + 32) = sub_1C9062E5C();
  *(v18 + 40) = v20;
  v21 = *MEMORY[0x1E69A00B8];
  v22 = sub_1C9062F2C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 104);
  v25 = v44;
  v41 = v21;
  v39 = v23 + 104;
  v40 = v24;
  v24(v44, v21, v22);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v22);
  v26 = v45;
  __swift_storeEnumTagSinglePayload(v45, 1, 1, v22);
  *&v43 = v19;
  sub_1C906299C();

  sub_1C8D14208(v26, &qword_1EC317BD8, &qword_1C9090000);
  sub_1C8D14208(v25, &qword_1EC317BD8, &qword_1C9090000);
  v27 = swift_allocObject();
  v37 = xmmword_1C906BAE0;
  *(v27 + 16) = xmmword_1C906BAE0;
  *(v27 + 32) = sub_1C9062E5C();
  *(v27 + 40) = v28;
  *(v27 + 48) = sub_1C9062E5C();
  *(v27 + 56) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = v37;
  v31 = qword_1EDA62698;

  if (v31 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, &unk_1EDA6E6F0);
  *(v30 + 32) = sub_1C9062E5C();
  *(v30 + 40) = v32;
  if (qword_1EDA626A8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, &unk_1EDA6E720);
  *(v30 + 48) = sub_1C9062E5C();
  *(v30 + 56) = v33;
  v34 = v44;
  v40(v44, v41, v22);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v22);
  v35 = v45;
  __swift_storeEnumTagSinglePayload(v45, 1, 1, v22);
  sub_1C906299C();

  sub_1C8D14208(v35, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v34, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E6BA78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v26 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v23 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  if (qword_1EC311638 != -1)
  {
    swift_once();
  }

  v10 = sub_1C9062E6C();
  __swift_project_value_buffer(v10, qword_1EC390EF0);
  sub_1C9062E5C();
  v11 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
  sub_1C90629BC();

  sub_1C8D14208(v9, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC311640 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v10, qword_1EC390F08);
  sub_1C9062E5C();
  sub_1C9062EEC();
  v12 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v12);
  sub_1C90629CC();

  sub_1C8D14208(v6, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
  sub_1C9062A4C();

  sub_1C8D14208(v9, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC311648 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EC390F20);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v12);
  sub_1C90629CC();

  sub_1C8D14208(v6, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
  sub_1C9062A4C();

  sub_1C8D14208(v9, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC311650 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EC390F38);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v12);
  sub_1C90629CC();

  sub_1C8D14208(v6, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
  sub_1C9062A4C();

  sub_1C8D14208(v9, &qword_1EC317BE0, &qword_1C9090008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v13 = swift_allocObject();
  v23 = xmmword_1C906A950;
  *(v13 + 16) = xmmword_1C906A950;
  *(v13 + 32) = sub_1C9062E5C();
  *(v13 + 40) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v23;
  v16 = qword_1EC3120C0;

  if (v16 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EC390F68);
  *(v15 + 32) = sub_1C9062E5C();
  *(v15 + 40) = v17;
  v18 = *MEMORY[0x1E69A00B8];
  v19 = sub_1C9062F2C();
  v20 = v25;
  (*(*(v19 - 8) + 104))(v25, v18, v19);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v19);
  v21 = v26;
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v19);
  sub_1C906299C();

  sub_1C8D14208(v21, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v20, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E6C100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  if (qword_1EDA607A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1C9062E6C();
  __swift_project_value_buffer(v8, qword_1EDA6E560);
  sub_1C9062E5C();
  sub_1C9062EDC();
  v9 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  v13[1] = a1;
  sub_1C90629CC();

  sub_1C8D14208(v7, &qword_1EC317BE8, &qword_1C9090010);
  v10 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  sub_1C9062A4C();

  sub_1C8D14208(v4, &qword_1EC317BE0, &qword_1C9090008);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  sub_1C9062A2C();

  sub_1C8D14208(v4, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC311490 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, qword_1EC390CB0);
  sub_1C9062E5C();
  if (qword_1EC311428 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v9, qword_1EC390C18);
  (*(*(v9 - 8) + 16))(v7, v11, v9);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  sub_1C90629CC();

  sub_1C8D14208(v7, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  sub_1C9062A4C();

  return sub_1C8D14208(v4, &qword_1EC317BE0, &qword_1C9090008);
}

uint64_t sub_1C8E6C488(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  if (qword_1EC3112A0 != -1)
  {
    swift_once();
  }

  v8 = sub_1C9062E6C();
  __swift_project_value_buffer(v8, qword_1EC390910);
  sub_1C9062E5C();
  sub_1C9062EDC();
  v9 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  v13[1] = a1;
  sub_1C90629CC();

  sub_1C8D14208(v7, &qword_1EC317BE8, &qword_1C9090010);
  v10 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  sub_1C9062A4C();

  sub_1C8D14208(v4, &qword_1EC317BE0, &qword_1C9090008);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  sub_1C9062A2C();

  sub_1C8D14208(v4, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC3112A8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, qword_1EC390928);
  sub_1C9062E5C();
  if (qword_1EC311428 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v9, qword_1EC390C18);
  (*(*(v9 - 8) + 16))(v7, v11, v9);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  sub_1C90629CC();

  sub_1C8D14208(v7, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  sub_1C9062A4C();

  return sub_1C8D14208(v4, &qword_1EC317BE0, &qword_1C9090008);
}

uint64_t sub_1C8E6C810()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v27 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  if (qword_1EDA62F90 != -1)
  {
    swift_once();
  }

  v10 = sub_1C9062E6C();
  *&v25 = __swift_project_value_buffer(v10, qword_1EDA6E808);
  sub_1C9062E5C();
  sub_1C9062EDC();
  v11 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  v12 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EDA62F88 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EDA6E7F0);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C906BAE0;
  *(v13 + 32) = sub_1C9062E5C();
  *(v13 + 40) = v14;
  *(v13 + 48) = sub_1C9062E5C();
  *(v13 + 56) = v15;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  sub_1C90629DC();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  v16 = swift_allocObject();
  v25 = xmmword_1C906A950;
  *(v16 + 16) = xmmword_1C906A950;
  *(v16 + 32) = sub_1C9062E5C();
  *(v16 + 40) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = v25;
  if (qword_1EDA68DF0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EDA6E8A8);
  *(v18 + 32) = sub_1C9062E5C();
  *(v18 + 40) = v19;
  v20 = *MEMORY[0x1E69A00B8];
  v21 = sub_1C9062F2C();
  v22 = v26;
  (*(*(v21 - 8) + 104))(v26, v20, v21);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v21);
  v23 = v27;
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v21);
  sub_1C906299C();

  sub_1C8D14208(v23, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v22, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E6CDA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  if (qword_1EC312190 != -1)
  {
    swift_once();
  }

  v6 = sub_1C9062E6C();
  __swift_project_value_buffer(v6, qword_1EC3911A8);
  sub_1C9062E5C();
  v7 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  sub_1C90629BC();

  sub_1C8D14208(v5, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC312198 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, qword_1EC3911C0);
  sub_1C9062E5C();
  sub_1C9062EDC();
  v8 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
  sub_1C90629CC();

  sub_1C8D14208(v2, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  sub_1C9062A4C();

  sub_1C8D14208(v5, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC3121A0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, qword_1EC3911D8);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
  sub_1C90629CC();

  sub_1C8D14208(v2, &qword_1EC317BE8, &qword_1C9090010);
  v12 = v7;
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  sub_1C9062A4C();

  sub_1C8D14208(v5, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC3121A8 != -1)
  {
    swift_once();
  }

  v13 = v6;
  __swift_project_value_buffer(v6, qword_1EC3911F0);
  sub_1C9062E5C();
  if (qword_1EC311420 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v8, qword_1EC390C00);
  v10 = *(*(v8 - 8) + 16);
  v10(v2, v9, v8);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
  sub_1C90629CC();

  sub_1C8D14208(v2, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v12);
  sub_1C9062A4C();

  sub_1C8D14208(v5, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC3121B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v13, qword_1EC391208);
  sub_1C9062E5C();
  v10(v2, v9, v8);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
  sub_1C90629CC();

  return sub_1C8D14208(v2, &qword_1EC317BE8, &qword_1C9090010);
}

uint64_t sub_1C8E6D320()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v29 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  if (qword_1EC311390 != -1)
  {
    swift_once();
  }

  v10 = sub_1C9062E6C();
  v31 = __swift_project_value_buffer(v10, qword_1EC390AE0);
  sub_1C9062E5C();
  sub_1C9062EEC();
  *&v30 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v30);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  v11 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC311398 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_1EC390AF8);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v30);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v12 = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C906BAE0;
  *(v13 + 32) = sub_1C9062E5C();
  *(v13 + 40) = v14;
  *(v13 + 48) = sub_1C9062E5C();
  *(v13 + 56) = v15;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
  sub_1C90629AC();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC3113A0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EC390B10);
  sub_1C9062E5C();
  sub_1C9062EDC();
  v16 = v30;
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v30);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
  sub_1C9062A4C();

  sub_1C8D14208(v6, &qword_1EC317BE0, &qword_1C9090008);
  v17 = v12;
  if (qword_1EC3113A8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EC390B28);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  if (qword_1EC3113B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EC390B40);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
  sub_1C90629CC();

  sub_1C8D14208(v9, &qword_1EC317BE8, &qword_1C9090010);
  v18 = swift_allocObject();
  v30 = xmmword_1C906A950;
  *(v18 + 16) = xmmword_1C906A950;
  *(v18 + 32) = sub_1C9062E5C();
  *(v18 + 40) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = v30;
  if (qword_1EC312190 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v17, qword_1EC3911A8);
  *(v20 + 32) = sub_1C9062E5C();
  *(v20 + 40) = v21;
  v22 = *MEMORY[0x1E69A00B8];
  v23 = sub_1C9062F2C();
  v24 = v28;
  (*(*(v23 - 8) + 104))(v28, v22, v23);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
  v25 = v29;
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v23);
  sub_1C906299C();

  sub_1C8D14208(v25, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v24, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E6DAF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v37[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v37[-v12];
  if (qword_1EC3111B8 != -1)
  {
    swift_once();
  }

  v40 = v7;
  v41 = v4;
  v14 = sub_1C9062E6C();
  __swift_project_value_buffer(v14, qword_1EC3906C8);
  sub_1C9062E5C();
  if (qword_1EC311420 != -1)
  {
    swift_once();
  }

  v15 = sub_1C9062EFC();
  v16 = __swift_project_value_buffer(v15, qword_1EC390C00);
  v17 = *(v15 - 8);
  v44 = *(v17 + 16);
  v42 = v17 + 16;
  v44(v13, v16, v15);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  sub_1C90629CC();

  sub_1C8D14208(v13, &qword_1EC317BE8, &qword_1C9090010);
  v18 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v18);
  sub_1C9062A4C();

  sub_1C8D14208(v10, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC3111C0 != -1)
  {
    swift_once();
  }

  *&v43 = __swift_project_value_buffer(v14, qword_1EC3906E0);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  sub_1C90629CC();

  sub_1C8D14208(v13, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v18);
  sub_1C9062A4C();

  sub_1C8D14208(v10, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC3111C8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v14, qword_1EC3906F8);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  sub_1C90629CC();

  sub_1C8D14208(v13, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v18);
  sub_1C9062A4C();

  sub_1C8D14208(v10, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC3111D0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v14, qword_1EC390710);
  sub_1C9062E5C();
  v44(v13, v16, v15);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  sub_1C90629CC();

  sub_1C8D14208(v13, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v18);
  sub_1C9062A4C();

  sub_1C8D14208(v10, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC3111D8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v14, qword_1EC390728);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  sub_1C90629CC();

  sub_1C8D14208(v13, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v18);
  sub_1C9062A4C();

  sub_1C8D14208(v10, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC3111E0 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v14, qword_1EC390740);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  sub_1C90629CC();

  sub_1C8D14208(v13, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v18);
  sub_1C9062A4C();

  sub_1C8D14208(v10, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC3111E8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v14, qword_1EC390758);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  sub_1C90629CC();

  sub_1C8D14208(v13, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v18);
  sub_1C9062A4C();

  sub_1C8D14208(v10, &qword_1EC317BE0, &qword_1C9090008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v19 = swift_allocObject();
  v44 = v14;
  v20 = v19;
  *(v19 + 16) = xmmword_1C906BAE0;
  *(v19 + 32) = sub_1C9062E5C();
  v20[5] = v21;
  v20[6] = sub_1C9062E5C();
  v20[7] = v22;
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v18);
  sub_1C90629AC();

  sub_1C8D14208(v10, &qword_1EC317BE0, &qword_1C9090008);
  v23 = swift_allocObject();
  v43 = xmmword_1C906A950;
  *(v23 + 16) = xmmword_1C906A950;
  *(v23 + 32) = sub_1C9062E5C();
  *(v23 + 40) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = v43;
  v42 = a1;
  if (qword_1EC312190 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v44, qword_1EC3911A8);
  *(v25 + 32) = sub_1C9062E5C();
  *(v25 + 40) = v26;
  v27 = *MEMORY[0x1E69A00B8];
  v28 = sub_1C9062F2C();
  v29 = *(*(v28 - 8) + 104);
  v30 = v40;
  v38 = v27;
  v29(v40, v27, v28);
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v28);
  v31 = v41;
  __swift_storeEnumTagSinglePayload(v41, 1, 1, v28);
  sub_1C906299C();

  sub_1C8D14208(v31, &qword_1EC317BD8, &qword_1C9090000);
  sub_1C8D14208(v30, &qword_1EC317BD8, &qword_1C9090000);
  v32 = swift_allocObject();
  *(v32 + 16) = v43;
  *(v32 + 32) = sub_1C9062E5C();
  *(v32 + 40) = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = v43;
  if (qword_1EC3112C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v44, qword_1EC390958);
  *(v34 + 32) = sub_1C9062E5C();
  *(v34 + 40) = v35;
  v29(v30, v38, v28);
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v28);
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v28);
  sub_1C906299C();

  sub_1C8D14208(v31, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v30, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E6E6B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v53 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v44 - v10;
  if (qword_1EC312160 != -1)
  {
    swift_once();
  }

  v12 = sub_1C9062E6C();
  v13 = __swift_project_value_buffer(v12, qword_1EC391118);
  sub_1C9062E5C();
  sub_1C9062EEC();
  v14 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  v15 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v15);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC312168 != -1)
  {
    swift_once();
  }

  v54 = v13;
  v51 = __swift_project_value_buffer(v12, qword_1EC391130);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v15);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC312170 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EC391148);
  sub_1C9062E5C();
  v48 = v12;
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v15);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v16 = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C9084EE0;
  *(v17 + 32) = sub_1C9062E5C();
  *(v17 + 40) = v18;
  *(v17 + 48) = sub_1C9062E5C();
  *(v17 + 56) = v19;
  *(v17 + 64) = sub_1C9062E5C();
  *(v17 + 72) = v20;
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v15);
  sub_1C90629AC();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC312178 != -1)
  {
    swift_once();
  }

  v21 = v48;
  __swift_project_value_buffer(v48, qword_1EC391160);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v16);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v15);
  sub_1C9062A4C();

  sub_1C8D14208(v8, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC312180 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v21, qword_1EC391178);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v16);
  sub_1C90629CC();

  sub_1C8D14208(v11, &qword_1EC317BE8, &qword_1C9090010);
  v22 = swift_allocObject();
  v50 = xmmword_1C906A950;
  *(v22 + 16) = xmmword_1C906A950;
  *(v22 + 32) = sub_1C9062E5C();
  *(v22 + 40) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v50;
  v25 = a1;
  if (qword_1EC312190 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v21, qword_1EC3911A8);
  *(v24 + 32) = sub_1C9062E5C();
  *(v24 + 40) = v26;
  v27 = *MEMORY[0x1E69A00B8];
  v28 = sub_1C9062F2C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 104);
  v31 = v21;
  v32 = v52;
  v47 = v27;
  v45 = v29 + 104;
  v46 = v30;
  v30(v52, v27, v28);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v28);
  v33 = v53;
  __swift_storeEnumTagSinglePayload(v53, 1, 1, v28);
  *&v50 = v25;
  sub_1C906299C();

  sub_1C8D14208(v33, &qword_1EC317BD8, &qword_1C9090000);
  sub_1C8D14208(v32, &qword_1EC317BD8, &qword_1C9090000);
  v34 = swift_allocObject();
  v44 = xmmword_1C906BAE0;
  *(v34 + 16) = xmmword_1C906BAE0;
  *(v34 + 32) = sub_1C9062E5C();
  *(v34 + 40) = v35;
  *(v34 + 48) = sub_1C9062E5C();
  *(v34 + 56) = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = v44;
  v38 = qword_1EC3111E8;

  if (v38 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v31, qword_1EC390758);
  *(v37 + 32) = sub_1C9062E5C();
  *(v37 + 40) = v39;
  if (qword_1EC3111C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v31, qword_1EC3906E0);
  *(v37 + 48) = sub_1C9062E5C();
  *(v37 + 56) = v40;
  v41 = v52;
  v46(v52, v47, v28);
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v28);
  v42 = v53;
  __swift_storeEnumTagSinglePayload(v53, 1, 1, v28);
  sub_1C906299C();

  sub_1C8D14208(v42, &qword_1EC317BD8, &qword_1C9090000);
  return sub_1C8D14208(v41, &qword_1EC317BD8, &qword_1C9090000);
}

uint64_t sub_1C8E6F0B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v26 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  if (qword_1EC311198 != -1)
  {
    swift_once();
  }

  v11 = sub_1C9062E6C();
  v28 = __swift_project_value_buffer(v11, qword_1EC390680);
  sub_1C9062E5C();
  sub_1C9062EEC();
  v12 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  sub_1C90629CC();

  sub_1C8D14208(v10, &qword_1EC317BE8, &qword_1C9090010);
  v27 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v27);
  sub_1C9062A4C();

  sub_1C8D14208(v7, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC3111A0 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v11, qword_1EC390698);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  sub_1C90629CC();

  sub_1C8D14208(v10, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v27);
  sub_1C9062A4C();

  sub_1C8D14208(v7, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v13 = swift_allocObject();
  v24 = xmmword_1C906A950;
  *(v13 + 16) = xmmword_1C906A950;
  *(v13 + 32) = sub_1C9062E5C();
  *(v13 + 40) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v24;
  if (qword_1EC312190 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v11, qword_1EC3911A8);
  *(v15 + 32) = sub_1C9062E5C();
  *(v15 + 40) = v16;
  v17 = *MEMORY[0x1E69A00B8];
  v18 = sub_1C9062F2C();
  (*(*(v18 - 8) + 104))(v4, v17, v18);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v18);
  v19 = v26;
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v18);
  sub_1C906299C();

  sub_1C8D14208(v19, &qword_1EC317BD8, &qword_1C9090000);
  sub_1C8D14208(v4, &qword_1EC317BD8, &qword_1C9090000);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C906BAE0;
  *(v20 + 32) = sub_1C9062E5C();
  *(v20 + 40) = v21;
  *(v20 + 48) = sub_1C9062E5C();
  *(v20 + 56) = v22;
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v27);
  sub_1C90629DC();

  return sub_1C8D14208(v7, &qword_1EC317BE0, &qword_1C9090008);
}

uint64_t sub_1C8E6F63C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BD8, &qword_1C9090000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v31 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE0, &qword_1C9090008);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317BE8, &qword_1C9090010);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  if (qword_1EC311228 != -1)
  {
    swift_once();
  }

  v11 = sub_1C9062E6C();
  v12 = __swift_project_value_buffer(v11, qword_1EC390810);
  sub_1C9062E5C();
  sub_1C9062EEC();
  v13 = sub_1C9062EFC();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v13);
  sub_1C90629CC();

  sub_1C8D14208(v10, &qword_1EC317BE8, &qword_1C9090010);
  v32 = sub_1C9062F5C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v32);
  sub_1C9062A4C();

  sub_1C8D14208(v7, &qword_1EC317BE0, &qword_1C9090008);
  if (qword_1EC311230 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v11, qword_1EC390828);
  sub_1C9062E5C();
  sub_1C9062EDC();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v13);
  sub_1C90629CC();

  sub_1C8D14208(v10, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v32);
  sub_1C9062A4C();

  sub_1C8D14208(v7, &qword_1EC317BE0, &qword_1C9090008);
  sub_1C9062A3C();

  if (qword_1EC311238 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v11, qword_1EC390840);
  sub_1C9062E5C();
  sub_1C9062EEC();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v13);
  sub_1C90629CC();

  sub_1C8D14208(v10, &qword_1EC317BE8, &qword_1C9090010);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v32);
  sub_1C9062A4C();

  sub_1C8D14208(v7, &qword_1EC317BE0, &qword_1C9090008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A40, &unk_1C9068E20);
  v14 = swift_allocObject();
  v27 = xmmword_1C906A950;
  *(v14 + 16) = xmmword_1C906A950;
  v28 = v12;
  *(v14 + 32) = sub_1C9062E5C();
  *(v14 + 40) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v27;
  if (qword_1EDA68DF0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v11, qword_1EDA6E8A8);
  *(v16 + 32) = sub_1C9062E5C();
  *(v16 + 40) = v17;
  v18 = *MEMORY[0x1E69A00B8];
  v19 = sub_1C9062F2C();
  v20 = v4;
  (*(*(v19 - 8) + 104))(v4, v18, v19);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v19);
  v21 = v31;
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v19);
  sub_1C906299C();

  sub_1C8D14208(v21, &qword_1EC317BD8, &qword_1C9090000);
  sub_1C8D14208(v20, &qword_1EC317BD8, &qword_1C9090000);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C9084EE0;
  *(v22 + 32) = sub_1C9062E5C();
  *(v22 + 40) = v23;
  *(v22 + 48) = sub_1C9062E5C();
  *(v22 + 56) = v24;
  *(v22 + 64) = sub_1C9062E5C();
  *(v22 + 72) = v25;
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v32);
  sub_1C90629DC();

  return sub_1C8D14208(v7, &qword_1EC317BE0, &qword_1C9090008);
}

void sub_1C8E6FCAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v48 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v3 = v48;
    v6 = sub_1C8E544E8(v2);
    v7 = 0;
    v8 = v2 + 64;
    v40 = v4;
    v41 = v1;
    v39 = v2 + 72;
    v42 = v2 + 64;
    v43 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v2 + 36) != v4)
      {
        goto LABEL_23;
      }

      v45 = v7;
      v46 = v4;
      v44 = v5;
      v10 = (*(v2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = *(v2 + 56) + 24 * v6;
      v47 = v3;
      v15 = *v13;
      v14 = *(v13 + 8);
      v16 = *(v13 + 16);
      swift_bridgeObjectRetain_n();
      sub_1C8DC8514(v15, v14, v16, v17, v18);
      sub_1C8DC8514(v15, v14, v16, v19, v20);

      sub_1C8DC853C(v15, v14, v16);

      v21 = MEMORY[0x1CCA81A90](8250, 0xE200000000000000);
      v26 = ToolInvocationSummary.ParameterSummary.debugDescription.getter(v21, v22, v23, v24, v25);
      MEMORY[0x1CCA81A90](v26);

      v27 = v15;
      v3 = v47;
      sub_1C8DC853C(v27, v14, v16);
      v28 = v12;
      v29 = *(v47 + 16);
      if (v29 >= *(v47 + 24) >> 1)
      {
        sub_1C8CA6480();
        v3 = v47;
      }

      *(v3 + 16) = v29 + 1;
      v30 = v3 + 16 * v29;
      *(v30 + 32) = v11;
      *(v30 + 40) = v28;
      v2 = v43;
      v31 = 1 << *(v43 + 32);
      if (v6 >= v31)
      {
        goto LABEL_24;
      }

      v8 = v42;
      v32 = *(v42 + 8 * v9);
      if ((v32 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v43 + 36) != v46)
      {
        goto LABEL_26;
      }

      v33 = v32 & (-2 << (v6 & 0x3F));
      if (v33)
      {
        v31 = __clz(__rbit64(v33)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = v9 << 6;
        v35 = v9 + 1;
        v36 = (v39 + 8 * v9);
        while (v35 < (v31 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            sub_1C8CAF698(v6, v46, v44 & 1);
            v31 = __clz(__rbit64(v37)) + v34;
            goto LABEL_19;
          }
        }

        sub_1C8CAF698(v6, v46, v44 & 1);
      }

LABEL_19:
      v5 = 0;
      v7 = v45 + 1;
      v6 = v31;
      v4 = v40;
      if (v45 + 1 == v41)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_1C8E6FF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v24 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130D0, &qword_1C9090BD0);
  OUTLINED_FUNCTION_11();
  v9 = v8;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_0();
  v22 = sub_1C90632CC();
  OUTLINED_FUNCTION_11();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C906321C();
  v25 = a2;
  v26 = a3;
  sub_1C8D1EA80(v16, v17, v18);
  sub_1C906329C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130E8, &unk_1C9090BF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130D8, &qword_1C906AB48);
  v19 = MEMORY[0x1E69E9290];
  sub_1C8D28184(&qword_1EDA6DA58, &qword_1EC3130D8, &qword_1C906AB48, MEMORY[0x1E69E9290]);
  sub_1C8D28184(&qword_1EDA6DA70, &qword_1EC3130D0, &qword_1C9090BD0, v19);
  sub_1C906327C();
  (*(v9 + 8))(v4, v7);
  return (*(v12 + 8))(v15, v22);
}

uint64_t sub_1C8E701B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v21 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130D0, &qword_1C9090BD0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v19 = sub_1C90632CC();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C906321C();
  v22 = a2;
  v23 = a3;
  sub_1C8D1EA80(v13, v14, v15);
  sub_1C906329C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317DB8, &qword_1C9090BC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317C40, &qword_1C9090030);
  v16 = MEMORY[0x1E69E9290];
  sub_1C8D28184(&qword_1EC317DC0, &qword_1EC317C40, &qword_1C9090030, MEMORY[0x1E69E9290]);
  sub_1C8D28184(&qword_1EDA6DA70, &qword_1EC3130D0, &qword_1C9090BD0, v16);
  sub_1C906327C();
  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v19);
}

unint64_t ToolInvocationSummary.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C8E6FCAC(v0[2]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
  OUTLINED_FUNCTION_156();
  sub_1C8D28184(v3, v4, &qword_1C9066990, v5);
  v6 = sub_1C9063E9C();
  v8 = v7;

  sub_1C906478C();

  MEMORY[0x1CCA81A90](v1, v2);
  MEMORY[0x1CCA81A90](0x74656D6172617020, 0xED0000283D737265);
  MEMORY[0x1CCA81A90](v6, v8);

  MEMORY[0x1CCA81A90](15913, 0xE200000000000000);
  return 0xD00000000000001ELL;
}

uint64_t static ToolInvocationSummary.ParameterSummary.Value.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C9064C2C();
  }
}

uint64_t sub_1C8E705A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE006C6562614C64)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8E7064C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8E705A4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8E70678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E70804(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8E706B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8E70804(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ToolInvocationSummary.ParameterSummary.Value.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317C20, &qword_1C9090018);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_73();
  v7 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C8E70804(v7, v8, v9);
  sub_1C9064E1C();
  sub_1C9064B2C();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_198();
}

unint64_t sub_1C8E70804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC317C28;
  if (!qword_1EC317C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC317C28);
  }

  return result;
}

uint64_t ToolInvocationSummary.ParameterSummary.Value.hashValue.getter()
{
  v0 = OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_18_20(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

void ToolInvocationSummary.ParameterSummary.Value.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317C30, &qword_1C9090020);
  OUTLINED_FUNCTION_11();
  v8 = v7;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_73();
  v10 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C8E70804(v10, v11, v12);
  sub_1C9064DEC();
  if (!v0)
  {
    v13 = sub_1C9064A0C();
    v15 = v14;
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
    v5[1] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8E70A28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317C38, &qword_1C9090028);
  __swift_allocate_value_buffer(v0, qword_1EC317BF0);
  __swift_project_value_buffer(v0, qword_1EC317BF0);
  return sub_1C906326C();
}

uint64_t static ToolInvocationSummary.ParameterSummary.formatStringVariableName.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC311458 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317C38, &qword_1C9090028);
  __swift_project_value_buffer(v2, qword_1EC317BF0);
  OUTLINED_FUNCTION_15_23();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1C8E70B34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317C40, &qword_1C9090030);
  __swift_allocate_value_buffer(v0, qword_1EC317C08);
  __swift_project_value_buffer(v0, qword_1EC317C08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317DB8, &qword_1C9090BC8);
  sub_1C8D28184(&qword_1EC317DC0, &qword_1EC317C40, &qword_1C9090030, MEMORY[0x1E69E9290]);
  return sub_1C906331C();
}

uint64_t sub_1C8E70C0C@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3130D0, &qword_1C9090BD0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v46 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317C40, &qword_1C9090030);
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v51 = sub_1C90632CC();
  v10 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317DC8, &qword_1C9090BD8);
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v54 = 31524;
  v55 = 0xE200000000000000;
  v43 = sub_1C8D1EA80(v19, v20, v21);
  MEMORY[0x1CCA80C70](v56, &v54, MEMORY[0x1E69E6158]);
  if (qword_1EC311458 != -1)
  {
    swift_once();
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317C38, &qword_1C9090028);
  __swift_project_value_buffer(v22, qword_1EC317BF0);
  sub_1C906321C();
  sub_1C8E711DC(v6);
  sub_1C906325C();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC317DB8, &qword_1C9090BC8);
  v42 = sub_1C8D28184(&qword_1EDA6DA70, &qword_1EC3130D0, &qword_1C9090BD0, MEMORY[0x1E69E9290]);
  v38 = v23;
  sub_1C90632AC();
  v50 = v6;
  v37 = v9;
  v24 = *(v2 + 8);
  v39 = v2 + 8;
  v41 = v24;
  v24(v6, v1);
  v36 = v1;
  v40 = *(v10 + 8);
  v40(v12, v51);
  MEMORY[0x1CCA80CC0](v9, v23);
  v25 = sub_1C8D28184(&qword_1EC317DD0, &qword_1EC317DC8, &qword_1C9090BD8, MEMORY[0x1E69E8278]);
  v26 = v18;
  v27 = v45;
  MEMORY[0x1CCA80C70](v15, v45, v25);
  v44 = *(v44 + 8);
  (v44)(v15, v27);
  v52 = 125;
  v53 = 0xE100000000000000;
  MEMORY[0x1CCA80C70](&v54, &v52, MEMORY[0x1E69E6158], v43);
  v52 = v56[0];
  v53 = v56[1];
  sub_1C90631FC();

  sub_1C906321C();
  v28 = v46;
  v29 = v36;
  v30 = v12;
  sub_1C906329C();
  v31 = v37;
  sub_1C906327C();
  v32 = v28;
  v33 = v41;
  v41(v32, v29);
  v40(v30, v51);
  sub_1C8E701B4(v31, v54, v55, v49);

  (*(v47 + 8))(v31, v48);
  v33(v50, v29);
  return (v44)(v26, v27);
}