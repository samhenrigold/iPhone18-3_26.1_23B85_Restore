void sub_1C742C940()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C75506DC();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  if (PFOSVariantHasInternalDiagnostics() && *(v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
    }

    v101 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v101, qword_1EDD289D8);
    v126 = sub_1C754FEEC();
    sub_1C755118C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(v126, v102))
    {
      v103 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_35_29(v103);
      OUTLINED_FUNCTION_40_45(&dword_1C6F5C000, v126, v3, "Traits: Skipping public diagnostics as user is internal.");
      OUTLINED_FUNCTION_21_59();
    }

    OUTLINED_FUNCTION_25_0();

    return;
  }

  v122 = v12;
  v123 = v8;
  v124 = v6;
  v125 = v5;
  v17 = *(v3 + 16);
  if (!v17)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v43 = v125;
    v44 = *(v125 + 16);
    v45 = MEMORY[0x1E69E7CC0];
    v121 = v44;
    if (v44)
    {
      v132 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C(0, v44, 0, v13, v14, v15, v16);
      v46 = v132;
      v47 = v125 + 32;
      do
      {
        sub_1C6FB5E28(v47, &v127);
        v48 = v129;
        v49 = v130;
        __swift_project_boxed_opaque_existential_1(&v127, v129);
        v50 = (*(v49 + 32))(v48, v49);
        v52 = v51;
        __swift_destroy_boxed_opaque_existential_1(&v127);
        v132 = v46;
        v54 = *(v46 + 16);
        v53 = *(v46 + 24);
        if (v54 >= v53 >> 1)
        {
          v56 = OUTLINED_FUNCTION_15(v53);
          sub_1C6F7ED9C(v56, v54 + 1, 1, v57, v58, v59, v60);
          v46 = v132;
        }

        *(v46 + 16) = v54 + 1;
        v55 = v46 + 16 * v54;
        *(v55 + 32) = v50;
        *(v55 + 40) = v52;
        v47 += 40;
        --v44;
      }

      while (v44);
      v43 = v125;
    }

    else
    {
      v46 = MEMORY[0x1E69E7CC0];
    }

    v127 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C703328C();
    v61 = sub_1C75505FC();
    v63 = v62;

    v127 = v19;
    sub_1C75504FC();
    v64 = sub_1C75505FC();
    v66 = v65;

    v127 = 0;
    v128 = 0xE000000000000000;
    sub_1C755180C();
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x1CCA5CD70](0xD00000000000002ELL);
    MEMORY[0x1CCA5CD70](v61, v63);

    MEMORY[0x1CCA5CD70](0x3A736E656B6F540ALL, 0xE900000000000020);
    MEMORY[0x1CCA5CD70](v64, v66);

    v67 = OUTLINED_FUNCTION_42_2();
    MEMORY[0x1CCA5CD70](v67);
    sub_1C75506CC();
    OUTLINED_FUNCTION_34_41();
    v68 = sub_1C755069C();
    v70 = v69;

    (*(v123 + 8))(v122, v124);
    if (v70 >> 60 == 15)
    {

      if (qword_1EDD07C00 != -1)
      {
        goto LABEL_68;
      }

      goto LABEL_38;
    }

    sub_1C75504FC();
    sub_1C7033F04(2, v43);
    v83 = v79 >> 1;
    v84 = (v79 >> 1) - v78;
    if (__OFSUB__(v79 >> 1, v78))
    {
      __break(1u);
    }

    else
    {
      v120 = v68;
      v119 = v70;
      if (v84)
      {
        v85 = v77;
        v86 = v78;
        v132 = v45;
        sub_1C6F7ED9C(0, v84 & ~(v84 >> 63), 0, v79, v80, v81, v82);
        if ((v84 & 0x8000000000000000) == 0)
        {
          v87 = v132;
          v70 = v85 + 40 * v86;
          while (v86 < v83)
          {
            sub_1C6FB5E28(v70, &v127);
            v88 = v129;
            v89 = v130;
            __swift_project_boxed_opaque_existential_1(&v127, v129);
            v90 = (*(v89 + 32))(v88, v89);
            v92 = v91;
            __swift_destroy_boxed_opaque_existential_1(&v127);
            v132 = v87;
            v94 = *(v87 + 16);
            v93 = *(v87 + 24);
            if (v94 >= v93 >> 1)
            {
              v96 = OUTLINED_FUNCTION_15(v93);
              sub_1C6F7ED9C(v96, v94 + 1, 1, v97, v98, v99, v100);
              v87 = v132;
            }

            *(v87 + 16) = v94 + 1;
            v95 = v87 + 16 * v94;
            *(v95 + 32) = v90;
            *(v95 + 40) = v92;
            ++v86;
            v70 += 40;
            if (v83 == v86)
            {
              swift_unknownObjectRelease();
              goto LABEL_58;
            }
          }

          goto LABEL_66;
        }

        __break(1u);
        return;
      }

      swift_unknownObjectRelease();
      v87 = MEMORY[0x1E69E7CC0];
LABEL_58:
      v127 = v87;
      v106 = sub_1C75505FC();
      v83 = v107;

      v127 = 0x20646E61202CLL;
      v128 = 0xE600000000000000;
      v108 = 2;
      if (v121 > 2)
      {
        v108 = v121;
      }

      v109 = v108 - 2;
      v110 = *(v19 + 16);
      v25 = __OFADD__(v109, v110);
      v111 = v109 + v110;
      if (!v25)
      {
        v132 = v111;
        v112 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v112);

        MEMORY[0x1CCA5CD70](0x65726F6D20, 0xE500000000000000);
        v132 = v106;
        v133 = v83;
        sub_1C75504FC();
        v113 = OUTLINED_FUNCTION_15_1();
        MEMORY[0x1CCA5CD70](v113);

        v70 = v132;
        v83 = v133;
        if (qword_1EC214140 == -1)
        {
LABEL_62:
          os_unfair_lock_lock(&dword_1EC25B930);
          if (qword_1EC214110 != -1)
          {
            swift_once();
          }

          v114 = qword_1EC25B8E0;
          v115 = *algn_1EC25B8E8;
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C6FB0D6C();
          v116 = *(qword_1EC25B938 + 16);
          sub_1C6FB1594();

          v117 = qword_1EC25B938;
          *(qword_1EC25B938 + 16) = v116 + 1;
          v118 = (v117 + (v116 << 6));
          v118[4] = v114;
          v118[5] = v115;
          v118[6] = 0x64726F572079654BLL;
          v118[7] = 0xE900000000000073;
          v118[8] = 0;
          v118[9] = 0;
          v118[10] = v70;
          v118[11] = v83;
          os_unfair_lock_unlock(&dword_1EC25B930);

          OUTLINED_FUNCTION_15_1();
          sub_1C7161C08();
          sub_1C70B5C10(v120, v119);
          goto LABEL_65;
        }

LABEL_71:
        OUTLINED_FUNCTION_1_118(&qword_1EC214140);
        goto LABEL_62;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

  v18 = v3 + 32;
  v19 = MEMORY[0x1E69E7CC0];
  v20 = 1;
  v21 = 1;
  while (1)
  {
    sub_1C6FB5E28(v18, &v132);
    sub_1C6FB5E28(&v132, v131);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8, &unk_1C7562CE0);
    if (swift_dynamicCast())
    {
      break;
    }

    sub_1C6FB5E28(&v132, v131);
    if (swift_dynamicCast())
    {

      v127 = 544499024;
      v128 = 0xE400000000000000;
      v131[0] = v20;
      v26 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v26);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_37_2();
        v19 = v39;
      }

      v27 = *(v19 + 16);
      if (v27 >= *(v19 + 24) >> 1)
      {
        OUTLINED_FUNCTION_5_96();
        v19 = v40;
      }

      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = 544499024;
      *(v28 + 40) = 0xE400000000000000;
      v25 = __OFADD__(v20++, 1);
      if (v25)
      {
        goto LABEL_67;
      }
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(&v132, v134);
      v29 = OUTLINED_FUNCTION_15_1();
      v31 = v30(v29);
      v33 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_37_2();
        v19 = v41;
      }

      v35 = *(v19 + 16);
      v34 = *(v19 + 24);
      if (v35 >= v34 >> 1)
      {
        OUTLINED_FUNCTION_15(v34);
        sub_1C6FB1814();
        v19 = v42;
      }

      *(v19 + 16) = v35 + 1;
      v36 = v19 + 16 * v35;
      *(v36 + 32) = v31;
      *(v36 + 40) = v33;
    }

LABEL_26:
    __swift_destroy_boxed_opaque_existential_1(&v132);
    v18 += 40;
    if (!--v17)
    {
      goto LABEL_29;
    }
  }

  v127 = 0x206E6F73726550;
  v128 = 0xE700000000000000;
  v131[0] = v21;
  v22 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v22);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_37_2();
    v19 = v37;
  }

  v23 = *(v19 + 16);
  if (v23 >= *(v19 + 24) >> 1)
  {
    OUTLINED_FUNCTION_5_96();
    v19 = v38;
  }

  *(v19 + 16) = v23 + 1;
  v24 = v19 + 16 * v23;
  *(v24 + 32) = 0x206E6F73726550;
  *(v24 + 40) = 0xE700000000000000;
  v25 = __OFADD__(v21++, 1);
  if (!v25)
  {
    goto LABEL_26;
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
LABEL_38:
  v71 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v71, qword_1EDD289D8);
  v72 = sub_1C754FEEC();
  v73 = sub_1C755119C();
  if (OUTLINED_FUNCTION_7_0(v73))
  {
    v74 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v74);
    OUTLINED_FUNCTION_9_87(&dword_1C6F5C000, v75, v76, "Traits: couldn't encode string.");
    OUTLINED_FUNCTION_23_3();
  }

LABEL_65:
  OUTLINED_FUNCTION_25_0();
}

void sub_1C742D380()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  j = sub_1C75506DC();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = (v7 - v6);
  if (PFOSVariantHasInternalDiagnostics() && *(v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
    }

    v20 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v20, qword_1EDD289D8);
    v87 = sub_1C754FEEC();
    v21 = sub_1C755118C();
    if (os_log_type_enabled(v87, v21))
    {
      v22 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v22);
      _os_log_impl(&dword_1C6F5C000, v87, v21, "Ambiguity: Skipping public diagnostics as user is internal.", v8, 2u);
      OUTLINED_FUNCTION_23_3();
    }

    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    v84 = v8;
    v85 = v4;
    if (qword_1EDD0E058 != -1)
    {
LABEL_78:
      swift_once();
    }

    TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
    v10 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E060);
    MEMORY[0x1EEE9AC00](v10);
    OUTLINED_FUNCTION_13_83();
    v11 = OUTLINED_FUNCTION_31_43();
    v14 = sub_1C706CC1C(v11, v12, v13);
    v15 = 0;
    v86 = *(v14 + 2);
    for (i = 32; ; i += 120)
    {
      if (v86 == v15)
      {
LABEL_10:

        goto LABEL_19;
      }

      if (v15 >= *(v14 + 2))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      memcpy(v91, v14 + i, 0x78uLL);
      memcpy(v90, v14 + i, sizeof(v90));
      sub_1C6FCA6E4(v91, v89);
      sub_1C72D36F8();
      if (v17 == 2)
      {
        break;
      }

      OUTLINED_FUNCTION_37_39();
      sub_1C72D36F8();
      v19 = v18;
      sub_1C6FDD548(v91);
      if (v19 == 1)
      {
        goto LABEL_10;
      }

      ++v15;
    }

    sub_1C6FDD548(v91);
LABEL_19:
    v83 = j;
    if (qword_1EDD0E038 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E040);
    MEMORY[0x1EEE9AC00](v25);
    OUTLINED_FUNCTION_13_83();
    v26 = OUTLINED_FUNCTION_31_43();
    v29 = sub_1C706CC1C(v26, v27, v28);
    v30 = 0;
    v31 = *(v29 + 2);
    for (j = 32; ; j += 120)
    {
      if (v31 == v30)
      {
LABEL_27:

        goto LABEL_29;
      }

      if (v30 >= *(v29 + 2))
      {
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_53_35(v91);
      OUTLINED_FUNCTION_53_35(v90);
      sub_1C6FCA6E4(v91, v89);
      sub_1C72D36F8();
      if (v32 == 2)
      {
        break;
      }

      OUTLINED_FUNCTION_37_39();
      sub_1C72D36F8();
      v34 = v33;
      sub_1C6FDD548(v91);
      if (v34 == 1)
      {
        goto LABEL_27;
      }

      ++v30;
    }

    sub_1C6FDD548(v91);
LABEL_29:
    if (qword_1EDD0E078 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E080);
    MEMORY[0x1EEE9AC00](v35);
    OUTLINED_FUNCTION_13_83();
    v36 = OUTLINED_FUNCTION_31_43();
    v39 = sub_1C706CC1C(v36, v37, v38);
    v40 = 0;
    v41 = *(v39 + 2);
    for (j = 32; ; j += 120)
    {
      v42 = MEMORY[0x1E69E7CC0];
      if (v41 == v40)
      {

        if (v86 == v15)
        {
          if (v31 == v30)
          {
            goto LABEL_57;
          }

          goto LABEL_44;
        }

        goto LABEL_45;
      }

      if (v40 >= *(v39 + 2))
      {
        goto LABEL_77;
      }

      OUTLINED_FUNCTION_53_35(v91);
      OUTLINED_FUNCTION_53_35(v90);
      sub_1C6FCA6E4(v91, v89);
      sub_1C72D36F8();
      if (v43 == 2)
      {

        sub_1C6FDD548(v91);
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_37_39();
      sub_1C72D36F8();
      v45 = v44;
      sub_1C6FDD548(v91);
      if (v45 == 1)
      {
        break;
      }

      ++v40;
    }

LABEL_42:
    if (v86 == v15)
    {
      if (v31 == v30)
      {
        goto LABEL_52;
      }

LABEL_44:
      OUTLINED_FUNCTION_37_2();
      v42 = v46;
      v47 = *(v46 + 16);
LABEL_48:
      v51 = *(v42 + 24);
      if (v47 >= v51 >> 1)
      {
        OUTLINED_FUNCTION_15(v51);
        sub_1C6FB1814();
        v42 = v80;
      }

      *(v42 + 16) = v47 + 1;
      v52 = v42 + 16 * v47;
      *(v52 + 32) = 0x6F697461636F4C09;
      *(v52 + 40) = 0xE90000000000006ELL;
      goto LABEL_51;
    }

LABEL_45:
    OUTLINED_FUNCTION_37_2();
    v42 = v48;
    v49 = *(v48 + 16);
    v47 = v49 + 1;
    if (v49 >= *(v48 + 24) >> 1)
    {
      OUTLINED_FUNCTION_5_96();
      v42 = v79;
    }

    *(v42 + 16) = v47;
    v50 = v42 + 16 * v49;
    *(v50 + 32) = 0x6E6F7372655009;
    *(v50 + 40) = 0xE700000000000000;
    if (v31 != v30)
    {
      goto LABEL_48;
    }

LABEL_51:
    if (v41 == v40)
    {
      goto LABEL_57;
    }

LABEL_52:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_37_2();
      v42 = v77;
    }

    v53 = *(v42 + 16);
    if (v53 >= *(v42 + 24) >> 1)
    {
      OUTLINED_FUNCTION_5_96();
      v42 = v78;
    }

    *(v42 + 16) = v53 + 1;
    v54 = v42 + 16 * v53;
    *(v54 + 32) = 0x656D695409;
    *(v54 + 40) = 0xE500000000000000;
LABEL_57:
    if (!*(v42 + 16))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v42 = v81;
      }

      v55 = *(v42 + 16);
      if (v55 >= *(v42 + 24) >> 1)
      {
        OUTLINED_FUNCTION_5_96();
        v42 = v82;
      }

      *(v42 + 16) = v55 + 1;
      v56 = v42 + 16 * v55;
      *(v56 + 32) = 0x656E6F4E09;
      *(v56 + 40) = 0xE500000000000000;
    }

    v91[0] = v42;
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C703328C();
    OUTLINED_FUNCTION_42_2();
    v57 = sub_1C75505FC();
    v59 = v58;

    v91[0] = 0;
    v91[1] = 0xE000000000000000;
    sub_1C755180C();

    v91[0] = 0xD000000000000010;
    v91[1] = 0x80000001C75B01B0;
    MEMORY[0x1CCA5CD70](v57, v59);

    v60 = OUTLINED_FUNCTION_42_2();
    MEMORY[0x1CCA5CD70](v60);
    sub_1C75506CC();
    OUTLINED_FUNCTION_34_41();
    v61 = sub_1C755069C();
    v63 = v62;

    (*(v85 + 8))(v84, v83);
    if (v63 >> 60 == 15)
    {
      if (qword_1EDD07C00 != -1)
      {
        OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
      }

      v64 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v64, qword_1EDD289D8);
      v65 = sub_1C754FEEC();
      v66 = sub_1C755119C();
      if (OUTLINED_FUNCTION_128(v66))
      {
        v67 = OUTLINED_FUNCTION_127();
        *v67 = 0;
        _os_log_impl(&dword_1C6F5C000, v65, v66, "Ambiguity: couldn't encode string.", v67, 2u);
        OUTLINED_FUNCTION_109();
      }
    }

    else
    {
      if (qword_1EC214140 != -1)
      {
        OUTLINED_FUNCTION_1_118(&qword_1EC214140);
      }

      v88 = v61;
      os_unfair_lock_lock(&dword_1EC25B930);
      if (qword_1EC2140E8 != -1)
      {
        swift_once();
      }

      v69 = qword_1EC25B890;
      v68 = *algn_1EC25B898;
      v91[0] = v42;
      sub_1C75504FC();
      sub_1C75504FC();
      v70 = sub_1C75505FC();
      v72 = v71;

      v91[0] = v70;
      v91[1] = v72;
      v90[0] = 9;
      v90[1] = 0xE100000000000000;
      v89[0] = 0;
      v89[1] = 0xE000000000000000;
      sub_1C6FB5E8C();
      OUTLINED_FUNCTION_0_53();
      v73 = sub_1C755155C();
      v75 = v74;

      sub_1C6FB0D6C();
      OUTLINED_FUNCTION_51_28();
      OUTLINED_FUNCTION_41_42();
      v76[4] = v69;
      v76[5] = v68;
      v76[6] = 0x20676E697373694DLL;
      v76[7] = 0xEF736C6961746544;
      v76[8] = 0;
      v76[9] = 0;
      v76[10] = v73;
      v76[11] = v75;
      os_unfair_lock_unlock(&dword_1EC25B930);
      sub_1C7161C08();
      sub_1C70B5C10(v88, v63);
    }

    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C742DD34(uint64_t *a1, uint64_t a2)
{
  v5 = 0;
  v6 = *a1;
  v7 = *(*a1 + 16);
  for (i = 32; ; i += 144)
  {
    if (v7 == v5)
    {
      v11 = 0;
      v2 = 0;
      v5 = *(v6 + 16);
      while (1)
      {
        if (v5 == v2)
        {
          v2 = v5;
          goto LABEL_27;
        }

        memmove(v23, (v6 + v11 + 32), 0x90uLL);
        v12 = sub_1C73A1B7C(v23);
        sub_1C6F66C14(v23);
        if (v12 != 1)
        {
          break;
        }

        ++v2;
        v11 += 144;
      }

      if (__OFADD__(v2, 1))
      {
        goto LABEL_34;
      }

      if (v2 + 1 != v5)
      {
        v5 = v11 + 176;
        v7 = v2 + 2;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_16;
        }

        goto LABEL_35;
      }

      goto LABEL_27;
    }

    if (v5 >= *(v6 + 16))
    {
      break;
    }

    memcpy(__dst, (v6 + i), sizeof(__dst));
    ++v5;
    memmove(v23, (v6 + i), 0x90uLL);
    v9 = sub_1C73A1B7C(v23);
    sub_1C6F66C14(v23);
    if (v9 == 1)
    {
      v10 = sub_1C7429E14;
    }

    else
    {
      v10 = sub_1C7429DD0;
    }

    memcpy(v21, __dst, sizeof(v21));
    sub_1C73A1EE0(__dst, v20);
    v2 = 0;
    v10(v21, a2);
    sub_1C73A1F3C(__dst);
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  do
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    sub_1C70E42F0();
    v6 = v17;
LABEL_16:
    v13 = v6 + 32;
    while (1)
    {
      v14 = v7 - 1;
      v15 = *(v6 + 16);
      if (v7 - 1 >= v15)
      {
        goto LABEL_30;
      }

      memmove(__dst, (v6 + v5), 0x90uLL);
      v16 = sub_1C73A1B7C(__dst);
      sub_1C6F66C14(__dst);
      if (v16 == 1)
      {
        if (v14 != v2)
        {
          if (v2 >= v15)
          {
            goto LABEL_31;
          }

          memcpy(v18, (v13 + 144 * v2), sizeof(v18));
          memcpy(__src, (v6 + v5), sizeof(__src));
          sub_1C73A1EE0(v18, v21);
          sub_1C73A1EE0(__src, v21);
          memcpy(v20, (v13 + 144 * v2), sizeof(v20));
          memcpy((v13 + 144 * v2), __src, 0x90uLL);
          sub_1C73A1F3C(v20);
          if (v14 >= *(v6 + 16))
          {
            goto LABEL_32;
          }

          memcpy(v21, (v6 + v5), sizeof(v21));
          memcpy((v6 + v5), v18, 0x90uLL);
          sub_1C73A1F3C(v21);
        }

        ++v2;
      }

      if (v7 == *(v6 + 16))
      {
        break;
      }

      ++v7;
      v5 += 144;
    }

    *a1 = v6;
LABEL_27:
    ;
  }

  while (*(v6 + 16) < v2);
  sub_1C71596B4(v2);
}

void sub_1C742E018(uint64_t a1, __n128 a2)
{
  if (PFOSVariantHasInternalDiagnostics() && *(a1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
    }

    v6 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v6, qword_1EDD289D8);
    oslog = sub_1C754FEEC();
    sub_1C755118C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_35_29(v8);
      OUTLINED_FUNCTION_40_45(&dword_1C6F5C000, oslog, v2, "String Description File: Skipping public diagnostics as user is internal.");
      OUTLINED_FUNCTION_21_59();
    }
  }

  else
  {
    sub_1C754D7AC();
    swift_allocObject();
    sub_1C754D79C();
    if (qword_1EC214140 != -1)
    {
      OUTLINED_FUNCTION_1_118(&qword_1EC214140);
    }

    os_unfair_lock_lock(&dword_1EC25B930);
    sub_1C75504FC();
    os_unfair_lock_unlock(&dword_1EC25B930);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BE10, &unk_1C758AFC8);
    sub_1C742F890();
    sub_1C754D78C();

    sub_1C755068C();
    sub_1C7161C08();

    v4 = OUTLINED_FUNCTION_55();
    sub_1C6FC1640(v4, v5);
  }
}

void sub_1C742E2C0(uint64_t *a1, unsigned __int8 a2)
{
  if (qword_1EC214100 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC25B8C0;
  v4 = *algn_1EC25B8C8;
  v6 = 0xE600000000000000;
  v7 = 0x79636167654CLL;
  switch(a2 >> 5)
  {
    case 1:
      if (a2)
      {
        v7 = 0xD00000000000001CLL;
      }

      else
      {
        v7 = 0xD00000000000001BLL;
      }

      if (a2)
      {
        v6 = 0x80000001C75A0570;
      }

      else
      {
        v6 = 0x80000001C75A0590;
      }

      break;
    case 2:
      if (a2 == 64)
      {
        v7 = 0x42206C6175736956;
      }

      else
      {
        v7 = 0xD00000000000001ALL;
      }

      if (a2 == 64)
      {
        v6 = 0xEC00000064657361;
      }

      else
      {
        v6 = 0x80000001C75A0550;
      }

      break;
    case 3:
      if (a2 == 96)
      {
        v7 = 0x736552207473614CLL;
      }

      else
      {
        v7 = 0x61622D7469617254;
      }

      if (a2 == 96)
      {
        v6 = 0xEB0000000074726FLL;
      }

      else
      {
        v6 = 0xEB00000000646573;
      }

      break;
    case 4:
      break;
    default:
      if (a2)
      {
        v6 = 0x80000001C75A05D0;
      }

      else
      {
        v6 = 0x80000001C75A05B0;
      }

      v7 = 0xD000000000000012;
      break;
  }

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](v7, v6);

  MEMORY[0x1CCA5CD70](0x6F6D20646E61202CLL, 0xEA00000000006572);
  sub_1C6FB0D6C();
  v8 = *(*a1 + 16);
  sub_1C6FB1594();
  v9 = *a1;
  *(v9 + 16) = v8 + 1;
  v10 = (v9 + (v8 << 6));
  v10[4] = v5;
  v10[5] = v4;
  v10[6] = 0xD000000000000010;
  v10[7] = 0x80000001C75B0280;
  v10[8] = 0;
  v10[9] = 0;
  v10[10] = 0;
  v10[11] = 0xE000000000000000;
  *a1 = v9;
}

void sub_1C742E520(uint64_t a1, void **a2, uint64_t a3)
{
  v3 = *a2;
  if (!a3 || (v4 = [v3 localIdentifier], sub_1C755068C(), v4, v5 = sub_1C6FE3768(), , !v5))
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = [v3 sceneAnalysisProperties];
  if (!v6)
  {
    goto LABEL_25;
  }

  v7 = v6;
  v8 = [v6 sceneAnalysisVersion];

  v9 = [objc_allocWithZone(PNAssetSafeForDisplayModelSet) initWithSceneAnalysisVersion_];
  v10 = [v9 ivsNSFWModel];
  v11 = [v10 anyNode];

  if (!v11)
  {

LABEL_19:
    v18 = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0x207465737341, 0xE600000000000000);
    v19 = sub_1C70CAC04(v3);
    if (v20)
    {
      v18 = v20;
    }

    else
    {
      v19 = 0;
    }

    MEMORY[0x1CCA5CD70](v19, v18);

    MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C75B0200);
    [v3 curationScore];
    sub_1C7550F5C();
    MEMORY[0x1CCA5CD70](0x53205746534E090ALL, 0xEE00203A65726F63);
    sub_1C7550F5C();
    MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
    MEMORY[0x1CCA5CD70](0, 0xE000000000000000);

    return;
  }

  v22 = v3;
  v12 = sub_1C6FB6304();
  v21 = v11;
  v13 = v11;
  for (i = 0; ; ++i)
  {
    if (v12 == i)
    {

LABEL_18:
      v3 = v22;
      v11 = v21;
      goto LABEL_19;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1CCA5DDD0](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v15 = *(v5 + 8 * i + 32);
    }

    v16 = v15;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v17 = [v15 extendedSceneIdentifier];
    if (v17 == [v13 identifier])
    {

      [v16 confidence];

      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

double sub_1C742E888(uint64_t *a1)
{
  if (qword_1EC214108 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC25B8D0;
  v2 = *algn_1EC25B8D8;
  sub_1C75504FC();
  sub_1C6FB0D6C();
  v4 = *(*a1 + 16);
  sub_1C6FB1594();
  v5 = *a1;
  *(v5 + 16) = v4 + 1;
  v6 = v5 + (v4 << 6);
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  strcpy((v6 + 48), "Photos Quality");
  *(v6 + 63) = -18;
  result = 0.0;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *a1 = v5;
  return result;
}

uint64_t static NonInternalDiagnosticsGenerator.retrievePrompt(for:)()
{
  v0 = sub_1C75506DC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  OUTLINED_FUNCTION_14_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v10 = v9 - v8;
  if (qword_1EC214118 != -1)
  {
    OUTLINED_FUNCTION_12_75(&qword_1EC214118);
  }

  sub_1C73C6860(qword_1EC25B8F0, *algn_1EC25B8F8, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_1C7030CDC(v3, &qword_1EC215BD8, &unk_1C7564890);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_15_1();
    v14(v13);
    sub_1C754DD6C();
    sub_1C75506CC();
    OUTLINED_FUNCTION_55();
    v11 = sub_1C75506AC();
    v16 = v15;
    v17 = OUTLINED_FUNCTION_55();
    sub_1C6FC1640(v17, v18);
    (*(v6 + 8))(v10, v4);
    if (v16)
    {
      return v11;
    }
  }

  return 0x752074706D6F7250;
}

uint64_t sub_1C742ECE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C742EE38(char a1)
{
  result = 0x656D614E656C6966;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x656C746974627573;
      break;
    case 3:
      result = 0x7470697263736564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C742EEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C742ECE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C742EEEC(uint64_t a1)
{
  v2 = sub_1C742F40C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C742EF28(uint64_t a1)
{
  v2 = sub_1C742F40C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NonInternalDiagnosticsFileDescriptionData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BDE0, &qword_1C758AC18);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - v7;
  v9 = v1[2];
  v14[5] = v1[3];
  v14[6] = v9;
  v10 = v1[4];
  v14[3] = v1[5];
  v14[4] = v10;
  v11 = v1[6];
  v14[1] = v1[7];
  v14[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C742F40C();
  sub_1C755200C();
  v18 = 0;
  v12 = v14[7];
  sub_1C7551CCC();
  if (!v12)
  {
    v17 = 1;
    OUTLINED_FUNCTION_30_44();
    sub_1C7551CCC();
    v16 = 2;
    OUTLINED_FUNCTION_30_44();
    sub_1C7551C7C();
    v15 = 3;
    OUTLINED_FUNCTION_30_44();
    sub_1C7551C7C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t NonInternalDiagnosticsFileDescriptionData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BDF0, &qword_1C758AC20);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C742F40C();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  OUTLINED_FUNCTION_62_3();
  v11 = sub_1C7551BBC();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  OUTLINED_FUNCTION_62_3();
  v13 = sub_1C7551BBC();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  OUTLINED_FUNCTION_62_3();
  v25 = sub_1C7551B6C();
  v27 = v15;
  v35 = 3;
  v16 = sub_1C7551B6C();
  v18 = v17;
  (*(v7 + 8))(v10, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  v22 = v31;
  *a2 = v30;
  a2[1] = v22;
  v23 = v33;
  a2[2] = v32;
  a2[3] = v23;
  sub_1C742F460(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  return sub_1C742F498(v34);
}

unint64_t sub_1C742F40C()
{
  result = qword_1EC21BDE8;
  if (!qword_1EC21BDE8)
  {
    result = swift_getWitnessTable(aA_18, &type metadata for NonInternalDiagnosticsFileDescriptionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21BDE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NonInternalDiagnosticsGenerator(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for NonInternalDiagnosticsFileDescriptionData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C742F66C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 72) >> 2) & 0x3F80 | (*(a1 + 72) >> 1) | (*(a1 + 72) >> 4) & 0xFFFFC000;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C742F6C8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 144) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 0;
      *(a1 + 72) = (4 * -a2) & 0xFE00 | (2 * (-a2 & 0x7FLL)) & 0xFFFFFFF00003FFFFLL | ((-a2 >> 14) << 18);
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      return result;
    }

    *(a1 + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C742F754(uint64_t result, uint64_t a2)
{
  v2 = *(result + 128) & 1 | (a2 << 63);
  *(result + 72) &= 0x30101uLL;
  *(result + 128) = v2;
  return result;
}

unint64_t sub_1C742F78C()
{
  result = qword_1EC21BDF8;
  if (!qword_1EC21BDF8)
  {
    result = swift_getWitnessTable(byte_1C758AF30, &type metadata for NonInternalDiagnosticsFileDescriptionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21BDF8);
  }

  return result;
}

unint64_t sub_1C742F7E4()
{
  result = qword_1EC21BE00;
  if (!qword_1EC21BE00)
  {
    result = swift_getWitnessTable(aQ_22, &type metadata for NonInternalDiagnosticsFileDescriptionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21BE00);
  }

  return result;
}

unint64_t sub_1C742F83C()
{
  result = qword_1EC21BE08;
  if (!qword_1EC21BE08)
  {
    result = swift_getWitnessTable(aI_18, &type metadata for NonInternalDiagnosticsFileDescriptionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21BE08);
  }

  return result;
}

unint64_t sub_1C742F890()
{
  result = qword_1EC21BE18;
  if (!qword_1EC21BE18)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21BE10, &unk_1C758AFC8);
    v4[0] = sub_1C742F914();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EC21BE18);
  }

  return result;
}

unint64_t sub_1C742F914()
{
  result = qword_1EC21BE20;
  if (!qword_1EC21BE20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NonInternalDiagnosticsFileDescriptionData, &type metadata for NonInternalDiagnosticsFileDescriptionData, v0, v1);
    atomic_store(result, &qword_1EC21BE20);
  }

  return result;
}

uint64_t sub_1C742F968(void *a1)
{
  v1 = [a1 originalFilename];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

uint64_t sub_1C742F9CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17 < 0)
  {

    sub_1C7318A10(a2, a3);

    sub_1C7318A10(a11, a12);
  }

  else
  {
  }
}

uint64_t sub_1C742FAD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C6F738F4;

  return sub_1C73A0040(a1, v4, v5, v6, (v1 + 5));
}

void OUTLINED_FUNCTION_21_59()
{

  JUMPOUT(0x1CCA5F8E0);
}

void OUTLINED_FUNCTION_40_45(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_50_31()
{

  return sub_1C755180C();
}

void *OUTLINED_FUNCTION_53_35(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x78uLL);
}

uint64_t AssetCurationOutlierDetector.generatePromptBindings(with:userPrompt:traits:storyTitle:assetCurationOutlierPromptMaximumTokenCount:assetRichDescriptionByUUID:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[27] = v14;
  v9[28] = v8;
  v9[25] = a8;
  v9[26] = v13;
  v9[23] = a6;
  v9[24] = a7;
  v9[21] = a4;
  v9[22] = a5;
  v9[19] = a2;
  v9[20] = a3;
  v9[18] = a1;
  v10 = sub_1C754F38C();
  v9[29] = v10;
  v9[30] = *(v10 - 8);
  v9[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C742FD00, 0, 0);
}

uint64_t sub_1C742FD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  __swift_project_boxed_opaque_existential_1(*(v20 + 208), *(*(v20 + 208) + 24));
  sub_1C754F1CC();
  sub_1C754F2CC();
  v21 = *(v20 + 184);
  v36 = *(v20 + 192);
  v22 = *(v20 + 176);
  v23 = *(v20 + 152);
  v24 = *(v20 + 160);
  v25 = static StoryGenerationUtilities.arrayAsSentence(for:includeComma:emptyArrayResult:)(*(v20 + 168), 1, 0);
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216550, &unk_1C756BF70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAA0;
  *(inited + 32) = 0x6D6F725072657375;
  *(inited + 40) = 0xEA00000000007470;
  *(inited + 48) = v23;
  *(inited + 56) = v24;
  *(inited + 64) = 0x737469617274;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = v25;
  *(inited + 88) = v27;
  *(inited + 96) = 0x74695479726F7473;
  *(inited + 104) = 0xEA0000000000656CLL;
  *(inited + 112) = v22;
  *(inited + 120) = v21;
  sub_1C75504FC();
  sub_1C75504FC();
  *(v20 + 256) = sub_1C75504DC();
  v29 = sub_1C75504FC();
  sub_1C74303CC(v29, v36);

  v30 = swift_task_alloc();
  *(v20 + 264) = v30;
  *v30 = v20;
  v30[1] = sub_1C742FFF4;
  OUTLINED_FUNCTION_17_1();

  return sub_1C743055C(v31, v32, v33);
}

uint64_t sub_1C742FFF4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 272) = v2;

  if (v2)
  {

    v7 = sub_1C74302D0;
  }

  else
  {
    *(v6 + 280) = a2;
    *(v6 + 288) = a1;
    v7 = sub_1C7430130;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C7430130()
{
  v1 = v0[34];
  v2 = v0[32];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC80A4();
  v3 = v2;
  sub_1C754F2EC();
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  v7 = v0[26];
  if (v1)
  {

    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_1C754F1AC();
    (*(v5 + 8))(v4, v6);

    OUTLINED_FUNCTION_6_0();

    return v8();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v0[26], v7[3]);
    OUTLINED_FUNCTION_57_0();
    sub_1C754F1AC();
    (*(v5 + 8))(v4, v6);

    v10 = v0[1];

    return v10(v3);
  }
}

uint64_t sub_1C74302D0()
{
  v1 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1(*(v0 + 208), *(*(v0 + 208) + 24));
  sub_1C754F1AC();
  v2 = OUTLINED_FUNCTION_57_0();
  v3(v2);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(v1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1C74303CC(unint64_t a1, uint64_t a2)
{
  v5 = v2;
  sub_1C75504FC();
  StoryPrompt.init(promptTemplate:bindings:usesCustomSystemPrompt:)(2, a1, 0, &v22);
  if (v3)
  {
    return v4;
  }

  v8 = StoryPrompt.fullyRendered()();

  v10 = static LLMWrapper.robustOverestimatedTokenCount(in:)(v8._countAndFlagsBits, v8._object);

  v4 = a2 - v10;
  if (!__OFSUB__(a2, v10))
  {
    v11 = sub_1C754FEEC();
    sub_1C755117C();
    v12 = OUTLINED_FUNCTION_17_59();
    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_98();
      v14 = swift_slowAlloc();
      *v14 = 134218496;
      *(v14 + 4) = a2;
      *(v14 + 12) = 2048;
      *(v14 + 14) = v10;
      *(v14 + 22) = 2048;
      *(v14 + 24) = v4;
      _os_log_impl(&dword_1C6F5C000, v11, v5, "Asset curation outlier prompt maximum token count: %ld. Token count without asset description: %ld, remaining %ld", v14, 0x20u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0](v15, v16, v17, v18, v19, v20, v21);
    }

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C743055C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C7430580, 0, 0);
}

uint64_t sub_1C7430580(uint64_t a1)
{
  v3 = sub_1C754FEEC();
  v4 = sub_1C755117C();
  if (os_log_type_enabled(v3, v4))
  {
    v2 = v1[8];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_1C6F5C000, v3, v4, "Processing asset rich descriptions with tokenLimit: %ld", v5, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v6 = v1[8];

  if (v6 < 1)
  {
    sub_1C7430CFC();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_20_3();

    __asm { BRAA            X1, X16 }
  }

  v7 = v1[6];
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v8 = *(v7 + 16);
  v1[10] = v8;
  if (!v8)
  {
LABEL_14:
    sub_1C75504FC();
    sub_1C75504FC();
    v18 = sub_1C754FEEC();
    sub_1C755117C();
    v19 = OUTLINED_FUNCTION_17_59();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = v1[10];
      OUTLINED_FUNCTION_98();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v36 = swift_slowAlloc();
      *v22 = 134218499;
      *(v22 + 4) = 0;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v21;

      *(v22 + 22) = 2085;
      v23 = OUTLINED_FUNCTION_0_11();
      *(v22 + 24) = sub_1C6F765A4(v23, v24, v25);
      _os_log_impl(&dword_1C6F5C000, v18, v2, "Processed %ld asset descriptions out of %ld: %{sensitive}s", v22, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0](v26);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0](v27);
    }

    else
    {
    }

    OUTLINED_FUNCTION_0_11();
    OUTLINED_FUNCTION_20_3();

    __asm { BRAA            X3, X16 }
  }

  v9 = 0;
  while (1)
  {
    v1[13] = 0;
    v1[14] = v9;
    v1[11] = 0;
    v1[12] = 0;
    v10 = v1[7];
    v11 = v1[6] + 16 * v9;
    v1[15] = *(v11 + 32);
    v1[16] = *(v11 + 40);
    if (*(v10 + 16))
    {
      break;
    }

LABEL_9:
    if (++v9 == v8)
    {
      goto LABEL_14;
    }
  }

  sub_1C75504FC();
  v12 = OUTLINED_FUNCTION_0_11();
  v14 = sub_1C6F78124(v12, v13);
  if ((v15 & 1) == 0)
  {

    v9 = v1[14];
    v8 = v1[10];
    goto LABEL_9;
  }

  v30 = OUTLINED_FUNCTION_1_134(v14);
  OUTLINED_FUNCTION_0_179(v30);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DFA0](v31, v32, v33);
}

uint64_t sub_1C7430874()
{
  v1 = v0[11];
  v2 = sub_1C70CDFD4(v0[15], v0[16]);
  v0[20] = v1;
  if (v1)
  {

    v4 = sub_1C7430CE4;
  }

  else
  {
    v5 = v2;
    v6 = v3;

    v0[21] = v6;
    v0[22] = v5;
    v4 = sub_1C7430934;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C7430934()
{
  v1 = v0[2];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[3];
  v8 = sub_1C75507FC();
  v9 = 0xE000000000000000;
  if (v8 > 0)
  {
    v9 = 0xE100000000000000;
  }

  v0[4] = 32 * (v8 > 0);
  v0[5] = v9;
  MEMORY[0x1CCA5CD70](v3, v2);

  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  MEMORY[0x1CCA5CD70](v6, v5);

  v11 = v0[4];
  v10 = v0[5];
  v12 = static LLMWrapper.robustOverestimatedTokenCount(in:)(v11, v10);
  if (v4)
  {

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_17_1();

    __asm { BRAA            X1, X16 }
  }

  v13 = v12;
  v14 = static LLMWrapper.robustOverestimatedTokenCount(in:)(v1, v7);
  v19 = v14;
  if (__OFADD__(v14, v13))
  {
    __break(1u);
LABEL_28:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }

  if (v14 + v13 > v0[8])
  {

    v20 = sub_1C754FEEC();
    v21 = sub_1C755117C();
    if (os_log_type_enabled(v20, v21))
    {
      v7 = v0[8];
      OUTLINED_FUNCTION_98();
      v22 = swift_slowAlloc();
      *v22 = 134218496;
      *(v22 + 4) = v19;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v13;
      *(v22 + 22) = 2048;
      *(v22 + 24) = v7;
      _os_log_impl(&dword_1C6F5C000, v20, v21, "Reached token limit. CurrentTokenCount: %ld + DescriptionTokenCount: %ld > %ld", v22, 0x20u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v23 = v0[12];
LABEL_13:
    sub_1C75504FC();
    sub_1C75504FC();
    v24 = sub_1C754FEEC();
    sub_1C755117C();
    v25 = OUTLINED_FUNCTION_17_59();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v0[10];
      OUTLINED_FUNCTION_98();
      v28 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v43 = swift_slowAlloc();
      *v28 = 134218499;
      *(v28 + 4) = v23;
      *(v28 + 12) = 2048;
      *(v28 + 14) = v27;

      *(v28 + 22) = 2085;
      v29 = OUTLINED_FUNCTION_57_0();
      *(v28 + 24) = sub_1C6F765A4(v29, v30, v31);
      _os_log_impl(&dword_1C6F5C000, v24, v7, "Processed %ld asset descriptions out of %ld: %{sensitive}s", v28, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v43);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_17_1();

    __asm { BRAA            X3, X16 }
  }

  v7 = v0[13];
  MEMORY[0x1CCA5CD70](v11, v10);

  v23 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    goto LABEL_28;
  }

  while (1)
  {
    do
    {
      v32 = v0[14] + 1;
      if (v32 == v0[10])
      {
        goto LABEL_13;
      }

      v0[13] = v23;
      v0[14] = v32;
      v0[11] = 0;
      v0[12] = v23;
      v33 = v0[7];
      v34 = v0[6] + 16 * v32;
      v7 = *(v34 + 32);
      v0[15] = v7;
      v35 = *(v34 + 40);
      v0[16] = v35;
    }

    while (!*(v33 + 16));
    sub_1C75504FC();
    v36 = sub_1C6F78124(v7, v35);
    if (v37)
    {
      break;
    }
  }

  v40 = OUTLINED_FUNCTION_1_134(v36);
  OUTLINED_FUNCTION_0_179(v40);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

unint64_t sub_1C7430CFC()
{
  result = qword_1EC21BE30;
  if (!qword_1EC21BE30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AssetCurationOutlierDetector.Error, &type metadata for AssetCurationOutlierDetector.Error, v0, v1);
    atomic_store(result, &qword_1EC21BE30);
  }

  return result;
}

uint64_t sub_1C7430D50(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C7423D10();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C74327A8(v6);
  return sub_1C755193C();
}

id defaultTCCCollectionFetcher(photoLibrary:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TCCCollectionFetcher();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___TCCCollectionFetcher_photoLibrary] = a1;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = a1;
  result = objc_msgSendSuper2(&v8, sel_init);
  a2[3] = v4;
  a2[4] = &protocol witness table for TCCCollectionFetcher;
  *a2 = result;
  return result;
}

id TCCCollectionFetcher.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___TCCCollectionFetcher_photoLibrary] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1C7430EC0()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  result = sub_1C755146C();
  qword_1EC25B940 = result;
  return result;
}

id TCCCollectionFetcher.init(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___TCCCollectionFetcher_photoLibrary] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::OpaquePointer_optional __swiftcall TCCCollectionFetcher.fetchAssetsForTCC(limit:seed:)(Swift::Int limit, NSNumber_optional seed)
{
  if (seed.value.super.super.isa)
  {
    v2 = seed.value.super.super.isa;
    v3 = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
  }

  else
  {
    v70 = 0;
    MEMORY[0x1CCA5F900](&v70, 8, *&seed.is_nil);
    v3 = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
  }

  v4 = qword_1EC214148;
  v5 = v3;
  v6 = limit;
  if (v4 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v7 = qword_1EC25B940;
    type metadata accessor for PerformanceMeasure(0);
    swift_allocObject();
    v8 = v7;
    PerformanceMeasure.init(name:log:)();
    v70 = MEMORY[0x1E69E7CC0];
    swift_allocObject();
    PerformanceMeasure.init(name:log:)();
    v9 = sub_1C74317D0(v6, v5);

    sub_1C6F85170();
    v10 = sub_1C75504FC();
    sub_1C6FD242C(v10);
    v11 = v70;
    if (sub_1C6FB6304() == v6)
    {
      break;
    }

    v66 = v8;
    v15 = sub_1C6FB6304();
    v6 = 0;
    v5 = (v9 & 0xC000000000000001);
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v15 == v6)
      {
        sub_1C6FD2568(v16);
        swift_allocObject();
        v27 = v66;
        PerformanceMeasure.init(name:log:)();
        v28 = sub_1C6FB6304();
        v30 = __OFSUB__(limit, v28);
        v31 = (limit - v28);
        if (v30)
        {
          __break(1u);
        }

        else
        {
          OUTLINED_FUNCTION_0_180();
          sub_1C7431C04(v32, v33);
          v35 = v34;
          sub_1C6F85170();
          v36 = sub_1C75504FC();
          sub_1C6FD242C(v36);
          v68 = v70;
          if (sub_1C6FB6304() == limit)
          {

            sub_1C6F85170();
            v37 = sub_1C755117C();
            if (os_log_type_enabled(v27, v37))
            {
              sub_1C75504FC();
              sub_1C75504FC();
              v38 = swift_slowAlloc();
              *v38 = 134218240;
              v39 = sub_1C6FB6304();

              *(v38 + 4) = v39;

              *(v38 + 12) = 2048;
              v40 = sub_1C6FB6304();

              *(v38 + 14) = v40;

              _os_log_impl(&dword_1C6F5C000, v27, v37, "[TCCCollectionFetcher] Returned with a set of %ld suggestion key assets, and %ld safe assets", v38, 0x16u);
              MEMORY[0x1CCA5F8E0](v38, -1, -1);
            }

            else
            {
            }

            v41 = sub_1C7259820(v9 & 0xC000000000000001, v68);

            goto LABEL_47;
          }

          v65 = v27;
          v42 = sub_1C6FB6304();
          v43 = 0;
          v5 = (v35 & 0xC000000000000001);
          v6 = v35 & 0xFFFFFFFFFFFFFF8;
          v67 = MEMORY[0x1E69E7CC0];
          while (v42 != v43)
          {
            if (v5)
            {
              v44 = MEMORY[0x1CCA5DDD0](v43, v35);
            }

            else
            {
              if (v43 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_51;
              }

              v44 = *(v35 + 8 * v43 + 32);
            }

            v45 = v44;
            v46 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_50;
            }

            v47 = sub_1C70CAC04(v44);
            v49 = v48;

            ++v43;
            if (v49)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C6FB1814();
                v67 = v52;
              }

              v50 = *(v67 + 16);
              if (v50 >= *(v67 + 24) >> 1)
              {
                sub_1C6FB1814();
                v67 = v53;
              }

              *(v67 + 16) = v50 + 1;
              v51 = v67 + 16 * v50;
              *(v51 + 32) = v47;
              *(v51 + 40) = v49;
              v43 = v46;
            }
          }

          sub_1C6FD2568(v67);
          swift_allocObject();
          v54 = v65;
          PerformanceMeasure.init(name:log:)();
          v55 = sub_1C6FB6304();
          v30 = __OFSUB__(limit, v55);
          v31 = (limit - v55);
          if (!v30)
          {
            OUTLINED_FUNCTION_0_180();
            sub_1C74321CC(v56, v57, v58);

            sub_1C6F85170();
            v59 = sub_1C75504FC();
            sub_1C6FD242C(v59);
            sub_1C6F85170();
            v60 = sub_1C755117C();
            if (os_log_type_enabled(v54, v60))
            {
              sub_1C75504FC();
              sub_1C75504FC();
              sub_1C75504FC();
              v61 = swift_slowAlloc();
              *v61 = 134218496;
              v62 = sub_1C6FB6304();

              *(v61 + 4) = v62;

              *(v61 + 12) = 2048;
              v63 = sub_1C6FB6304();

              *(v61 + 14) = v63;

              *(v61 + 22) = 2048;
              v64 = sub_1C6FB6304();

              *(v61 + 24) = v64;

              _os_log_impl(&dword_1C6F5C000, v54, v60, "[TCCCollectionFetcher] Returned with a set of %ld suggestion key assets, %ld safe assets, and %ld random ones", v61, 0x20u);
              MEMORY[0x1CCA5F8E0](v61, -1, -1);
            }

            else
            {
            }

            v41 = sub_1C7259820(v35 & 0xC000000000000001, v70);

            goto LABEL_47;
          }
        }

        __break(1u);
        goto LABEL_55;
      }

      if (v5)
      {
        v17 = MEMORY[0x1CCA5DDD0](v6, v9);
      }

      else
      {
        if (v6 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v17 = *(v9 + 8 * v6 + 32);
      }

      v18 = v17;
      v19 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v20 = sub_1C70CAC04(v17);
      v22 = v21;

      ++v6;
      if (v22)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1814();
          v16 = v25;
        }

        v23 = *(v16 + 16);
        if (v23 >= *(v16 + 24) >> 1)
        {
          sub_1C6FB1814();
          v16 = v26;
        }

        *(v16 + 16) = v23 + 1;
        v24 = v16 + 16 * v23;
        *(v24 + 32) = v20;
        *(v24 + 40) = v22;
        v6 = v19;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }

  sub_1C6F85170();
  v12 = sub_1C755117C();
  if (os_log_type_enabled(v8, v12))
  {
    sub_1C75504FC();
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    v14 = sub_1C6FB6304();

    *(v13 + 4) = v14;

    _os_log_impl(&dword_1C6F5C000, v8, v12, "[TCCCollectionFetcher] Returned with a set of %ld suggestion key assets", v13, 0xCu);
    MEMORY[0x1CCA5F8E0](v13, -1, -1);
  }

  else
  {
  }

  v41 = sub_1C7259820(v5, v11);
LABEL_47:

  v31 = v41;
LABEL_55:
  result.value._rawValue = v31;
  result.is_nil = v29;
  return result;
}

uint64_t sub_1C74317D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___TCCCollectionFetcher_photoLibrary);
  v6 = [v5 librarySpecificFetchOptions];
  v7 = v6;
  if (a1 <= 200)
  {
    v8 = 200;
  }

  else
  {
    v8 = a1;
  }

  [v6 setFetchLimit_];
  v9 = [objc_opt_self() fetchAllFeaturedStateEnabledSuggestionsWithOptions_];
  if ([v9 count])
  {
    v10 = [v5 librarySpecificFetchOptions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C7565670;
    v12 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    *(v11 + 32) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 0);
    sub_1C71F8834(v11, v10);
    [v10 setIncludeGuestAssets_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C755BAB0;
    *(v13 + 32) = sub_1C755068C();
    *(v13 + 40) = v14;
    sub_1C6FCA0EC(v13, v10);
    v15 = [objc_opt_self() fetchKeyAssetForEachSuggestion:v9 options:v10];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 fetchedObjects];

      if (v17)
      {
        v18 = sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
        v19 = sub_1C7550B5C();

        if (sub_1C6FB6304() >= 1)
        {
          v20 = sub_1C7259820(a2, v19);

          v21 = sub_1C6FB6304();
          if (v21 < a1)
          {
            a1 = v21;
          }

          v22 = a1 - 1;
          if (__OFSUB__(a1, 1))
          {
            __break(1u);
          }

          else if ((v22 & 0x8000000000000000) == 0)
          {
            v23 = a1;
            if (!__OFADD__(v22, 1))
            {
              sub_1C70359E0(0, v20);
              sub_1C70359E0(a1, v20);
              if ((v20 & 0xC000000000000001) != 0)
              {
                if (a1 < 0)
                {
                  goto LABEL_41;
                }

                sub_1C75504FC();
                v24 = 0;
                do
                {
                  v25 = v24 + 1;
                  sub_1C755189C();
                  v24 = v25;
                }

                while (a1 != v25);
              }

              else
              {
                sub_1C75504FC();
              }

              if (!(v20 >> 62))
              {
                if ((a1 & 0x8000000000000000) == 0)
                {

                  a1 = 0;
                  v18 = v20 & 0xFFFFFFFFFFFFFF8;
                  v20 = (v20 & 0xFFFFFFFFFFFFFF8) + 32;
                  v23 = (2 * v23) | 1;
                  if ((v23 & 1) == 0)
                  {
LABEL_28:
                    sub_1C739C610(v18, v20, a1, v23);
                    v26 = v28;
                    swift_unknownObjectRelease();

                    goto LABEL_22;
                  }

LABEL_33:
                  sub_1C7551DEC();
                  swift_unknownObjectRetain_n();
                  v32 = swift_dynamicCastClass();
                  if (!v32)
                  {
                    swift_unknownObjectRelease();
                    v32 = MEMORY[0x1E69E7CC0];
                  }

                  v33 = *(v32 + 16);

                  if (!__OFSUB__(v23 >> 1, a1))
                  {
                    if (v33 == (v23 >> 1) - a1)
                    {
                      v26 = swift_dynamicCastClass();

                      swift_unknownObjectRelease();
                      if (!v26)
                      {
                        swift_unknownObjectRelease();
                        v26 = MEMORY[0x1E69E7CC0];
                      }

                      swift_unknownObjectRelease();
                      goto LABEL_19;
                    }

LABEL_43:
                    swift_unknownObjectRelease_n();
                    goto LABEL_28;
                  }

LABEL_42:
                  __break(1u);
                  goto LABEL_43;
                }

                __break(1u);
LABEL_41:
                __break(1u);
                goto LABEL_42;
              }

LABEL_32:

              v18 = sub_1C7551ADC();
              a1 = v29;
              v23 = v30;
              v20 = v31;

              if ((v23 & 1) == 0)
              {
                goto LABEL_28;
              }

              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          __break(1u);
          goto LABEL_31;
        }
      }
    }

    v26 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v7 = v9;
    goto LABEL_23;
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v10 = v9;
LABEL_23:

  return v26;
}

void sub_1C7431C04(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v4 = [*(v2 + OBJC_IVAR___TCCCollectionFetcher_photoLibrary) librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C7565670;
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v5 + 32) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 0);
  sub_1C71F8834(v5, v4);
  [v4 setIncludeGuestAssets_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C755BAB0;
  *(v7 + 32) = sub_1C755068C();
  *(v7 + 40) = v8;
  sub_1C6FCA0EC(v7, v4);
  if (a1 <= 200)
  {
    v9 = 200;
  }

  else
  {
    v9 = a1;
  }

  [v4 setFetchLimit_];
  v10 = [objc_opt_self() fetchAssetsWithOptions_];
  v11 = [v10 fetchedObjects];

  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
  sub_1C7550B5C();

  if (sub_1C6FB6304() < 1)
  {

LABEL_18:

    return;
  }

  v13 = sub_1C75504FC();
  v42[0] = sub_1C71CC828(v13);
  sub_1C7430D50(v42);

  v14 = v42[0];
  v15 = sub_1C6FB6304();
  if (v15 >= a1)
  {
    v16 = a1;
  }

  else
  {
    v16 = v15;
  }

  v17 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v17 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  i = v16;
  if (__OFADD__(v17, 1))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1C70359E0(0, v14);
  sub_1C70359E0(v16, v14);
  if ((v14 & 0xC000000000000001) != 0)
  {
    if (v16 < 0)
    {
      goto LABEL_56;
    }

    sub_1C75504FC();
    v19 = 0;
    do
    {
      v20 = v19 + 1;
      sub_1C755189C();
      v19 = v20;
    }

    while (v16 != v20);
  }

  else
  {
    sub_1C75504FC();
  }

  v38 = v12;
  v39 = v4;
  if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
  {
    if ((v16 & 0x8000000000000000) == 0)
    {

      a1 = 0;
      v12 = v14 + 32;
      i = (2 * v16) | 1;
      goto LABEL_29;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_28:

  v22 = sub_1C7551ADC();
  v12 = v23;
  a1 = v24;
  i = v25;

  v14 = v22;
  if ((i & 1) == 0)
  {
LABEL_24:
    sub_1C739C610(v14, v12, a1, i);
    a1 = v21;
    goto LABEL_35;
  }

LABEL_29:
  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {
    swift_unknownObjectRelease();
    v26 = MEMORY[0x1E69E7CC0];
  }

  v27 = *(v26 + 16);

  if (__OFSUB__(i >> 1, a1))
  {
    goto LABEL_57;
  }

  if (v27 != (i >> 1) - a1)
  {
LABEL_58:
    swift_unknownObjectRelease_n();
    goto LABEL_24;
  }

  a1 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (a1)
  {
    goto LABEL_36;
  }

  a1 = MEMORY[0x1E69E7CC0];
LABEL_35:
  swift_unknownObjectRelease();
LABEL_36:
  v43 = MEMORY[0x1E69E7CC0];
  v12 = sub_1C6FB6304();
  for (i = 0; v12 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1CCA5DDD0](i, a1);
    }

    else
    {
      if (i >= *(a1 + 16))
      {
        goto LABEL_54;
      }

      v28 = *(a1 + 8 * i + 32);
    }

    v29 = v28;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v30 = [v28 sceneAnalysisProperties];
    if (!v30)
    {
      goto LABEL_46;
    }

    v14 = v30;
    v31 = [v30 sceneAnalysisVersion];

    if (v31 < 32)
    {
      goto LABEL_46;
    }

    v32 = sub_1C70CAC04(v29);
    if (!v33)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v14 = v33;
    v41 = &v38;
    v42[0] = v32;
    v42[1] = v33;
    MEMORY[0x1EEE9AC00](v32);
    *(&v38 - 2) = v42;
    v34 = sub_1C70735F4();

    if (!v34)
    {
      v14 = &v43;
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    else
    {
LABEL_46:
    }
  }

  if (sub_1C6FB6304())
  {
    v35 = objc_opt_self();
    v36 = sub_1C7550B3C();

    v37 = [v35 safeAssetsForWidgetDisplay_];

    sub_1C7550B5C();
  }

  else
  {
  }
}

uint64_t sub_1C74321CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [*(v3 + OBJC_IVAR___TCCCollectionFetcher_photoLibrary) librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C7565670;
  v9 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v8 + 32) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 0);
  sub_1C71F8834(v8, v7);
  [v7 setIncludeGuestAssets_];
  if (a1 <= 200)
  {
    v10 = 200;
  }

  else
  {
    v10 = a1;
  }

  [v7 setFetchLimit_];
  if (*(a2 + 16))
  {
    sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C75604F0;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1C6F6D524();
    *(v11 + 32) = 1684632949;
    *(v11 + 40) = 0xE400000000000000;
    *(v11 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    *(v11 + 104) = sub_1C71D0360();
    *(v11 + 72) = a2;
    sub_1C75504FC();
    v12 = sub_1C755112C();
    [v7 setPredicate_];
  }

  v13 = [objc_opt_self() fetchAssetsWithOptions_];
  v14 = [v13 fetchedObjects];

  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
  v16 = sub_1C7550B5C();

  if (sub_1C6FB6304() < 1)
  {

LABEL_19:

    return MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1C7259820(a3, v16);

  v18 = sub_1C6FB6304();
  if (v18 < a1)
  {
    a1 = v18;
  }

  v19 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v19 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = a1;
  if (__OFADD__(v19, 1))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1C70359E0(0, v17);
  sub_1C70359E0(a1, v17);
  if ((v17 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    sub_1C75504FC();
    v21 = 0;
    do
    {
      v14 = v21 + 1;
      sub_1C755189C();
      v21 = v14;
    }

    while (a1 != v14);
  }

  else
  {
    sub_1C75504FC();
  }

  if (v17 >> 62)
  {
LABEL_28:

    v15 = sub_1C7551ADC();
    v14 = v24;
    a1 = v25;
    v20 = v26;

    if ((v20 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  a1 = 0;
  v15 = v17 & 0xFFFFFFFFFFFFFF8;
  v14 = ((v17 & 0xFFFFFFFFFFFFFF8) + 32);
  v20 = (2 * v20) | 1;
  if ((v20 & 1) == 0)
  {
LABEL_24:
    sub_1C739C610(v15, v14, a1, v20);
    v22 = v23;
    swift_unknownObjectRelease();

    return v22;
  }

LABEL_29:
  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    v27 = MEMORY[0x1E69E7CC0];
  }

  v28 = *(v27 + 16);

  if (__OFSUB__(v20 >> 1, a1))
  {
    goto LABEL_39;
  }

  if (v28 != (v20 >> 1) - a1)
  {
LABEL_40:
    swift_unknownObjectRelease_n();
    goto LABEL_24;
  }

  v22 = swift_dynamicCastClass();

  swift_unknownObjectRelease();
  if (!v22)
  {
    swift_unknownObjectRelease();
    v22 = MEMORY[0x1E69E7CC0];
  }

  swift_unknownObjectRelease();
  return v22;
}

id TCCCollectionFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TCCCollectionFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C74327A8(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D480(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C743297C(v8, v9, a1, v5);
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
    sub_1C7432888(0, v3, 1, a1);
  }
}

void sub_1C7432888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        [v12 curationScore];
        v15 = v14;
        [v13 curationScore];
        v17 = v16;

        if (v17 >= v15)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v18 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v18;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C743297C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v115 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    v5 = v117;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_95:
      v100 = v6 + 16;
      v101 = *(v6 + 2);
      while (v101 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_131;
        }

        v102 = v6;
        v103 = &v6[16 * v101];
        v104 = *v103;
        v105 = &v100[2 * v101];
        v106 = *(v105 + 1);
        sub_1C7432FDC((*a3 + 8 * *v103), (*a3 + 8 * *v105), (*a3 + 8 * v106), v115);
        if (v5)
        {
          break;
        }

        if (v106 < v104)
        {
          goto LABEL_119;
        }

        if (v101 - 2 >= *v100)
        {
          goto LABEL_120;
        }

        *v103 = v104;
        *(v103 + 1) = v106;
        v107 = *v100 - v101;
        if (*v100 < v101)
        {
          goto LABEL_121;
        }

        v101 = *v100 - 1;
        sub_1C7423CF4(v105 + 16, v107, v105);
        *v100 = v101;
        v6 = v102;
      }

LABEL_103:

      return;
    }

LABEL_128:
    v6 = sub_1C7420830();
    goto LABEL_95;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = &selRef_clsSceneClassifications;
  while (1)
  {
    v8 = v5++;
    if (v5 < v4)
    {
      v109 = v6;
      v9 = v8;
      v10 = (*a3 + 8 * v8);
      v11 = 8 * v9;
      v13 = *v10;
      v12 = v10 + 2;
      v14 = *(*a3 + 8 * v5);
      v15 = v13;
      [v14 v7[53]];
      v17 = v16;
      [v15 v7[53]];
      v19 = v18;

      v112 = v9;
      v20 = v9 + 2;
      while (1)
      {
        v21 = v20;
        if (++v5 >= v4)
        {
          break;
        }

        v22 = *(v12 - 1);
        v23 = *v12;
        v24 = v22;
        [v23 v7[53]];
        v26 = v25;
        [v24 v7[53]];
        v28 = v27;

        ++v12;
        v20 = v21 + 1;
        if (v19 < v17 == v28 >= v26)
        {
          goto LABEL_9;
        }
      }

      v5 = v4;
LABEL_9:
      if (v19 >= v17)
      {
        v6 = v109;
        v8 = v112;
      }

      else
      {
        v8 = v112;
        if (v5 < v112)
        {
          goto LABEL_125;
        }

        if (v112 >= v5)
        {
          v6 = v109;
        }

        else
        {
          if (v4 >= v21)
          {
            v29 = v21;
          }

          else
          {
            v29 = v4;
          }

          v30 = 8 * v29 - 8;
          v31 = v5;
          v32 = v112;
          v6 = v109;
          do
          {
            if (v32 != --v31)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v34 = *(v33 + v11);
              *(v33 + v11) = *(v33 + v30);
              *(v33 + v30) = v34;
            }

            ++v32;
            v30 -= 8;
            v11 += 8;
          }

          while (v32 < v31);
        }
      }
    }

    v35 = a3[1];
    if (v5 < v35)
    {
      if (__OFSUB__(v5, v8))
      {
        goto LABEL_124;
      }

      if (v5 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v5 < v8)
    {
      goto LABEL_123;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v6 + 2) + 1, 1, v6);
      v6 = v98;
    }

    v53 = *(v6 + 2);
    v52 = *(v6 + 3);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      sub_1C6FB17EC(v52 > 1, v53 + 1, 1, v6);
      v6 = v99;
    }

    *(v6 + 2) = v54;
    v55 = v6 + 32;
    v56 = &v6[16 * v53 + 32];
    *v56 = v8;
    *(v56 + 1) = v5;
    v115 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v53)
    {
      v114 = v5;
      while (1)
      {
        v57 = v54 - 1;
        v58 = &v55[16 * v54 - 16];
        v59 = &v6[16 * v54];
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v60 = *(v6 + 4);
          v61 = *(v6 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_60:
          if (v63)
          {
            goto LABEL_110;
          }

          v75 = *v59;
          v74 = *(v59 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_113;
          }

          v79 = *(v58 + 1);
          v80 = v79 - *v58;
          if (__OFSUB__(v79, *v58))
          {
            goto LABEL_116;
          }

          if (__OFADD__(v77, v80))
          {
            goto LABEL_118;
          }

          if (v77 + v80 >= v62)
          {
            if (v62 < v80)
            {
              v57 = v54 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v54 < 2)
        {
          goto LABEL_112;
        }

        v82 = *v59;
        v81 = *(v59 + 1);
        v70 = __OFSUB__(v81, v82);
        v77 = v81 - v82;
        v78 = v70;
LABEL_75:
        if (v78)
        {
          goto LABEL_115;
        }

        v84 = *v58;
        v83 = *(v58 + 1);
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_117;
        }

        if (v85 < v77)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v57 - 1 >= v54)
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v89 = &v55[16 * v57 - 16];
        v90 = *v89;
        v91 = v57;
        v92 = &v55[16 * v57];
        v93 = *(v92 + 1);
        sub_1C7432FDC((*a3 + 8 * *v89), (*a3 + 8 * *v92), (*a3 + 8 * v93), v115);
        if (v117)
        {
          goto LABEL_103;
        }

        if (v93 < v90)
        {
          goto LABEL_105;
        }

        v5 = v55;
        v94 = v7;
        v95 = v6;
        v96 = *(v6 + 2);
        if (v91 > v96)
        {
          goto LABEL_106;
        }

        *v89 = v90;
        *(v89 + 1) = v93;
        if (v91 >= v96)
        {
          goto LABEL_107;
        }

        v54 = v96 - 1;
        sub_1C7423CF4(v92 + 16, v96 - 1 - v91, v92);
        *(v95 + 2) = v96 - 1;
        v97 = v96 > 2;
        v6 = v95;
        v7 = v94;
        v55 = v5;
        v5 = v114;
        if (!v97)
        {
          goto LABEL_89;
        }
      }

      v64 = &v55[16 * v54];
      v65 = *(v64 - 8);
      v66 = *(v64 - 7);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_108;
      }

      v69 = *(v64 - 6);
      v68 = *(v64 - 5);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_109;
      }

      v71 = *(v59 + 1);
      v72 = v71 - *v59;
      if (__OFSUB__(v71, *v59))
      {
        goto LABEL_111;
      }

      v70 = __OFADD__(v62, v72);
      v73 = v62 + v72;
      if (v70)
      {
        goto LABEL_114;
      }

      if (v73 >= v67)
      {
        v87 = *v58;
        v86 = *(v58 + 1);
        v70 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v70)
        {
          goto LABEL_122;
        }

        if (v62 < v88)
        {
          v57 = v54 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_93;
    }
  }

  v36 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_126;
  }

  if (v36 >= v35)
  {
    v36 = a3[1];
  }

  if (v36 < v8)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v5 == v36)
  {
    goto LABEL_39;
  }

  v110 = v6;
  v37 = *a3;
  v38 = *a3 + 8 * v5 - 8;
  v113 = v8;
  v115 = v36;
  v39 = v8 - v5;
LABEL_32:
  v40 = *(v37 + 8 * v5);
  v41 = v39;
  v42 = v38;
  while (1)
  {
    v43 = *v42;
    v44 = v40;
    v45 = v43;
    [v44 v7[53]];
    v47 = v46;
    [v45 v7[53]];
    v49 = v48;

    if (v49 >= v47)
    {
LABEL_37:
      ++v5;
      v38 += 8;
      --v39;
      if (v5 == v115)
      {
        v5 = v115;
        v6 = v110;
        v8 = v113;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v37)
    {
      break;
    }

    v50 = *v42;
    v40 = *(v42 + 8);
    *v42 = v40;
    *(v42 + 8) = v50;
    v42 -= 8;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

uint64_t sub_1C7432FDC(char *a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1C7423CF8(a1, (a2 - a1) / 8, a4);
    v11 = &v4[v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= a3)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      [v14 curationScore];
      v17 = v16;
      [v15 curationScore];
      v19 = v18;

      if (v19 >= v17)
      {
        break;
      }

      v20 = v6;
      v21 = v7 == v6++;
      if (!v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v20 = v4;
    v21 = v7 == v4++;
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v20;
    goto LABEL_13;
  }

  sub_1C7423CF8(a2, a3 - a2, a4);
  v11 = &v4[v9];
  v38 = v4;
LABEL_15:
  v22 = v6 - 1;
  --v5;
  while (v11 > v4 && v6 > v7)
  {
    v24 = v7;
    v25 = v22;
    v26 = *v22;
    v27 = *(v11 - 1);
    v28 = v26;
    [v27 curationScore];
    v30 = v29;
    [v28 curationScore];
    v32 = v31;

    v33 = v5 + 1;
    if (v32 < v30)
    {
      v21 = v33 == v6;
      v34 = v25;
      v6 = v25;
      v7 = v24;
      v4 = v38;
      if (!v21)
      {
        *v5 = *v34;
        v6 = v34;
      }

      goto LABEL_15;
    }

    if (v11 != v33)
    {
      *v5 = *(v11 - 1);
    }

    --v5;
    --v11;
    v22 = v25;
    v7 = v24;
    v4 = v38;
  }

LABEL_28:
  v35 = v11 - v4;
  if (v6 != v4 || v6 >= &v4[v35])
  {
    memmove(v6, v4, 8 * v35);
  }

  return 1;
}

double sub_1C7433254(uint64_t a1, void *a2, void *a3)
{
  if (qword_1EDD0A0E0 != -1)
  {
    swift_once();
  }

  v6 = sub_1C754FF1C();
  __swift_project_value_buffer(v6, qword_1EDD0A0E8);
  v7 = sub_1C754FEEC();
  v8 = sub_1C75511BC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C6F5C000, v7, v8, "Sending memory creation event analytics", v9, 2u);
    MEMORY[0x1CCA5F8E0](v9, -1, -1);
  }

  sub_1C7433474(a1, a2, a3);
  v10 = sub_1C754FEEC();
  v11 = sub_1C75511BC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1C6F5C000, v10, v11, "Sending music curation event analytics", v12, 2u);
    MEMORY[0x1CCA5F8E0](v12, -1, -1);
  }

  return static MusicCurationAnalyticsSender.sendMusicCurationEventAnalytics(_:performanceMetricsReporter:error:)(a1, a2);
}

uint64_t sub_1C74333F0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0A0E8);
  __swift_project_value_buffer(v0, qword_1EDD0A0E8);
  return sub_1C754FEFC();
}

void sub_1C7433474(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for LLMDefaults();
  static LLMDefaults.backendType.getter(__dst);
  sub_1C710E08C(__dst[0], &unk_1F46A86B8);
  v6 = sub_1C755104C();
  v7 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *__dst = v7;
  sub_1C6FC7E40(v6, 0x54646E656B636162, 0xEB00000000657079, isUniquelyReferenced_nonNull_native);
  v9 = *__dst;
  static LLMDefaults.backendEnvironment.getter(&v59);
  sub_1C710E258(v59, &unk_1F46A86E0);
  v10 = sub_1C755104C();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  *__dst = v9;
  sub_1C6FC7E40(v10, 0xD000000000000012, 0x80000001C75B0410, v11);
  v12 = *__dst;
  v13 = *(a1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
  swift_beginAccess();

  v14 = sub_1C7462320();

  v15 = swift_isUniquelyReferenced_nonNull_native();
  *__dst = v12;
  sub_1C7241D3C(v14, sub_1C7241FE4, 0, v15, __dst);
  v16 = *__dst;

  v17 = sub_1C717B4E0();

  v18 = swift_isUniquelyReferenced_nonNull_native();
  *__dst = v16;
  sub_1C7241D3C(v17, sub_1C7241FE4, 0, v18, __dst);
  v19 = *__dst;

  v20 = sub_1C7031C84();

  v21 = swift_isUniquelyReferenced_nonNull_native();
  *__dst = v19;
  sub_1C7241D3C(v20, sub_1C7241FE4, 0, v21, __dst);
  v22 = *__dst;
  swift_beginAccess();

  v23 = sub_1C717C5B0();

  v24 = swift_isUniquelyReferenced_nonNull_native();
  *__dst = v22;
  sub_1C7241D3C(v23, sub_1C7241FE4, 0, v24, __dst);
  v25 = *__dst;
  StoryGenerationDiagnosticContext.generationSummary.getter(__src);
  v26 = sub_1C70AD0EC();
  memcpy(__dst, __src, 0xF0uLL);
  sub_1C7169188(__dst);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  __src[0] = v25;
  sub_1C7241D3C(v26, sub_1C7241FE4, 0, v27, __src);
  v28 = __src[0];
  v29 = *(v13 + 40);
  v30 = OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_generationEntryPoint;
  swift_beginAccess();
  v31 = *(v29 + v30);
  v32 = 1;
  switch(v31)
  {
    case 5:
      break;
    default:
      v32 = sub_1C7551DBC();
      break;
  }

  if (a3)
  {
    v33 = a3;

    v34 = sub_1C717D808(a3, v32 & 1);
  }

  else
  {

    v34 = sub_1C717D780();
  }

  v35 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v28;
  sub_1C7241D3C(v34, sub_1C7241FE4, 0, v35, &v56);
  v36 = v56;
  v37 = a2[3];
  v38 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v37);
  v39 = (*(v38 + 8))(v37, v38);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v36;
  sub_1C7241D3C(v39, sub_1C7241FE4, 0, v40, &v56);
  v41 = v56;

  v42 = sub_1C6FF6F88();

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v41;
  sub_1C7241D3C(v42, sub_1C7241FE4, 0, v43, &v56);
  v44 = objc_opt_self();
  v45 = sub_1C755065C();
  sub_1C6FEAF80();
  sub_1C75504FC();
  v46 = sub_1C755048C();

  [v44 sendEvent:v45 withPayload:v46];

  if (qword_1EDD0A0E0 != -1)
  {
    swift_once();
  }

  v47 = sub_1C754FF1C();
  __swift_project_value_buffer(v47, qword_1EDD0A0E8);
  v48 = sub_1C754FEEC();
  v49 = sub_1C75511BC();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v56 = v51;
    *v50 = 136315394;
    *(v50 + 4) = sub_1C6F765A4(0xD000000000000028, 0x80000001C75B0430, &v56);
    *(v50 + 12) = 2080;

    v52 = sub_1C75504BC();
    v54 = v53;

    v55 = sub_1C6F765A4(v52, v54, &v56);

    *(v50 + 14) = v55;
    _os_log_impl(&dword_1C6F5C000, v48, v49, "Sent %s with payload: %s", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v51, -1, -1);
    MEMORY[0x1CCA5F8E0](v50, -1, -1);
  }
}

void sub_1C7433C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a1;
  v8 = *(a1 + 16);
  if (v8)
  {
    v49 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v8, 0, a4, a5, a6, a7);
    v46 = v49;
    v10 = sub_1C70D4544();
    v12 = v11;
    v13 = 0;
    v14 = v7 + 64;
    v40 = v11;
    v41 = v8;
    v39 = v7 + 72;
    v42 = v7 + 64;
    v43 = v7;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v7 + 32))
    {
      v15 = v10 >> 6;
      if ((*(v14 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_45;
      }

      if (*(v7 + 36) != v12)
      {
        goto LABEL_46;
      }

      v44 = v9;
      v45 = v13 + 1;
      v16 = *(*(v7 + 48) + v10);
      sub_1C75504FC();
      v17 = 0xE400000000000000;
      v18 = 1701736302;
      switch(v16)
      {
        case 1:
          v17 = 0xE600000000000000;
          v19 = 1936876912;
          goto LABEL_25;
        case 2:
          v18 = 0x67416E6F73726570;
          v21 = 0x6570795465;
          goto LABEL_16;
        case 3:
          v18 = 1702125924;
          break;
        case 4:
          v17 = 0xE900000000000079;
          v18 = 0x6144664F74726170;
          break;
        case 5:
          v17 = 0xEA00000000006B65;
          v18 = 0x6557664F74726170;
          break;
        case 6:
          v17 = 0xE600000000000000;
          v19 = 1935762803;
LABEL_25:
          v18 = v19 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
          break;
        case 7:
          v17 = 0xE800000000000000;
          v20 = 1633906540;
          goto LABEL_20;
        case 8:
          v18 = 0x4C636972656E6567;
          v17 = 0xEF6E6F697461636FLL;
          break;
        case 9:
          v18 = 1952540791;
          break;
        case 10:
          v18 = 0x764563696C627570;
          v17 = 0xEB00000000746E65;
          break;
        case 11:
          v18 = 0x6C616E6F73726570;
          v21 = 0x746E657645;
LABEL_16:
          v17 = v21 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 12:
          v18 = 0x746954636973756DLL;
          v17 = 0xEA0000000000656CLL;
          break;
        case 13:
          v17 = 0xEB00000000747369;
          v18 = 0x747241636973756DLL;
          break;
        case 14:
          v17 = 0xEA00000000006572;
          v18 = 0x6E6547636973756DLL;
          break;
        case 15:
          v18 = 1685024621;
          break;
        case 16:
          v17 = 0xE800000000000000;
          v20 = 1634891108;
LABEL_20:
          v18 = v20 | 0x6E6F697400000000;
          break;
        case 17:
          v17 = 0xE600000000000000;
          v18 = 0x706972547369;
          break;
        case 18:
          v18 = 0x6D69546C6C417369;
          v17 = 0xE900000000000065;
          break;
        case 19:
          v17 = 0xE900000000000072;
          v18 = 0x6564724F74726F73;
          break;
        default:
          break;
      }

      v47 = v18;
      v48 = v17;
      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v22 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v22);

      v27 = v46;
      v29 = *(v46 + 16);
      v28 = *(v46 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1C6F7ED9C(v28 > 1, v29 + 1, 1, v23, v24, v25, v26);
        v27 = v46;
      }

      *(v27 + 16) = v29 + 1;
      v30 = v27 + 16 * v29;
      *(v30 + 32) = v47;
      *(v30 + 40) = v48;
      v7 = v43;
      v31 = 1 << *(v43 + 32);
      if (v10 >= v31)
      {
        goto LABEL_47;
      }

      v14 = v42;
      v32 = *(v42 + 8 * v15);
      if ((v32 & (1 << v10)) == 0)
      {
        goto LABEL_48;
      }

      v46 = v27;
      if (*(v43 + 36) != v12)
      {
        goto LABEL_49;
      }

      v33 = v32 & (-2 << (v10 & 0x3F));
      if (v33)
      {
        v31 = __clz(__rbit64(v33)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = v15 << 6;
        v35 = v15 + 1;
        v36 = (v39 + 8 * v15);
        while (v35 < (v31 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            sub_1C6F9ED50(v10, v12, v44 & 1);
            v31 = __clz(__rbit64(v37)) + v34;
            goto LABEL_42;
          }
        }

        sub_1C6F9ED50(v10, v12, v44 & 1);
      }

LABEL_42:
      v9 = 0;
      v10 = v31;
      v12 = v40;
      v13 = v45;
      if (v45 == v41)
      {
        return;
      }
    }

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
    __break(1u);
  }
}

uint64_t QueryAssetsRetrievalProcessor.performPublicEventQueryTokenAssetsRetrieval(with:eventRecorder:diagnosticContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 1248) = v4;
  *(v5 + 1240) = a4;
  *(v5 + 1232) = a3;
  *(v5 + 1224) = a1;
  v7 = sub_1C754F14C();
  *(v5 + 1256) = v7;
  OUTLINED_FUNCTION_18(v7);
  *(v5 + 1264) = v8;
  *(v5 + 1272) = swift_task_alloc();
  *(v5 + 1280) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216360, &unk_1C7563BA0);
  *(v5 + 1288) = swift_task_alloc();
  *(v5 + 1296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328, &qword_1C7575BE0);
  *(v5 + 1304) = swift_task_alloc();
  *(v5 + 1312) = swift_task_alloc();
  *(v5 + 1320) = swift_task_alloc();
  *(v5 + 1328) = swift_task_alloc();
  *(v5 + 1336) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BE40, &qword_1C758B0C0);
  *(v5 + 1344) = v9;
  OUTLINED_FUNCTION_18(v9);
  *(v5 + 1352) = v10;
  *(v5 + 1360) = swift_task_alloc();
  v11 = sub_1C754F38C();
  *(v5 + 1368) = v11;
  OUTLINED_FUNCTION_18(v11);
  *(v5 + 1376) = v12;
  *(v5 + 1384) = swift_task_alloc();
  *(v5 + 1392) = *(a2 + 8);

  return MEMORY[0x1EEE6DFA0](sub_1C7434364, 0, 0);
}

void sub_1C7434364()
{
  v281 = v0;
  v278 = v0 + 1096;
  v275 = v0 + 1128;
  v245 = (v0 + 1192);
  v246 = (v0 + 1160);
  v236 = (v0 + 1208);
  v1 = *(v0 + 1232);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = v0;
  sub_1C754F15C();
  *(v0 + 1208) = MEMORY[0x1E69E7CD0];
  static StoryGenerationUtilities.musicRelatedQueryTokens(in:)();
  v4 = v3;
  v5 = 0;
  v6 = *(v3 + 16);
  v7 = v3 - 48;
  v8 = MEMORY[0x1E69E7CC0];
  v277 = v2;
LABEL_2:
  v9 = v7 + 120 * v5;
  while (v6 != v5)
  {
    if (v5 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_186;
    }

    v10 = (v9 + 120);
    ++v5;
    v11 = *(v9 + 136);
    v9 += 120;
    if ((v11 & 1) == 0)
    {
      v271 = *v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1CD0(0, *(v8 + 16) + 1, 1, v8);
        v8 = v14;
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1C6FB1CD0(v12 > 1, v13 + 1, 1, v8);
        v8 = v15;
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + 16 * v13 + 32) = v271;
      v2 = v277;
      goto LABEL_2;
    }
  }

  v16 = v2[174];
  v265 = *(v16 + 16);
  v235 = v8;
  if (v265)
  {
    v232 = v4;
    v17 = 0;
    v234 = 0;
    v238 = 0;
    v249 = 0;
    v247 = 0;
    v18 = 0;
    v258 = v2[160];
    v19 = v2[158];
    v262 = v16 + 32;
    v243 = (v2[169] + 8);
    v244 = "cEventQueryTokens";
    HIDWORD(v242) = *MEMORY[0x1E69C17C0];
    v255 = (v19 + 104);
    v237 = (v19 + 32);
    v241 = (v19 + 8);
    HIDWORD(v239) = *MEMORY[0x1E69C17B0];
    v20 = MEMORY[0x1E69E7CC8];
    v233 = v8 + 40;
    v248 = MEMORY[0x1E69E7CC8];
    v240 = v2[174];
    while (1)
    {
      if (v18 >= *(v16 + 16))
      {
        goto LABEL_188;
      }

      memcpy(v2 + 2, (v262 + 120 * v18), 0x78uLL);
      sub_1C6FCA6E4((v2 + 2), (v2 + 17));
      if (qword_1EDD0E0C8 != -1)
      {
        swift_once();
      }

      TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
      v22 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E0D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040, &qword_1C7570ED0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1C755BAB0;
      memcpy((v23 + 32), v2 + 2, 0x78uLL);
      *(swift_task_alloc() + 16) = v22;
      sub_1C6FCA6E4((v2 + 2), (v2 + 32));
      v24 = sub_1C707351C();
      swift_setDeallocating();
      sub_1C6FDC98C();

      if (v24)
      {
        break;
      }

      sub_1C6FDD548((v2 + 2));
LABEL_78:
      if (++v18 == v265)
      {

        v114 = v247;
        v115 = v248;
        v116 = v234;
        v117 = v238;
        v118 = v249;
        goto LABEL_89;
      }
    }

    v268 = v20;
    v272 = v18;
    v25 = v2[170];
    v26 = v2[168];
    v27 = v2[166];
    v28 = v2[162];
    v251 = v2[167];
    v252 = v2[157];
    v29 = *(v2 + 2);
    *v246 = v29;
    *v245 = v29;
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BE48, &qword_1C758B0C8);
    sub_1C754EE3C();
    v30 = sub_1C74378EC();
    v230 = sub_1C7437940();
    v231 = sub_1C7099594(&qword_1EC21BE60, &qword_1EC21BE40, &qword_1C758B0C0, MEMORY[0x1E69E9290]);
    v229 = v30;
    v2 = v277;
    sub_1C75510DC();
    (*v243)(v25, v26);
    sub_1C71691DC(v246);
    sub_1C70DF0F4();
    v250 = sub_1C7073450();
    memcpy(v280, v277 + 2, 0x78uLL);
    v31 = v251;
    QueryToken.publicEvent()();
    v32 = *v255;
    (*v255)(v27, HIDWORD(v242), v252);
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v252);
    v33 = *(v258 + 48);
    sub_1C7437994(v251, v28);
    sub_1C7437994(v27, v28 + v33);
    if (__swift_getEnumTagSinglePayload(v28, 1, v252) == 1)
    {
      v34 = v277[157];
      sub_1C7030CDC(v277[166], &qword_1EC216328, &qword_1C7575BE0);
      v18 = v272;
      if (__swift_getEnumTagSinglePayload(v28 + v33, 1, v34) == 1)
      {
        sub_1C7030CDC(v277[162], &qword_1EC216328, &qword_1C7575BE0);
LABEL_25:
        if ((v2[9] & 1) == 0)
        {
          v48 = *(v235 + 16);
          if (v48)
          {
            v49 = v2[7];
            v50 = v2[8];
            v51 = __OFADD__(v49, v50);
            v52 = v49 + v50;
            if (v51)
            {
              goto LABEL_198;
            }

            v53 = v233;
            do
            {
              v54 = *(v53 - 1);
              v55 = v54 + *v53;
              if (__OFADD__(v54, *v53))
              {
                goto LABEL_187;
              }

              if (v52 >= v55)
              {
                v56 = v54 + *v53;
              }

              else
              {
                v56 = v52;
              }

              if (v49 >= v54 && v49 < v55)
              {
                v59 = v56 - v49;
                if (__OFSUB__(v56, v49))
                {
                  goto LABEL_189;
                }
              }

              else
              {
                if (v54 < v49 || v54 >= v52)
                {
                  goto LABEL_47;
                }

                v51 = __OFSUB__(v56, v54);
                v59 = v56 - v54;
                if (v51)
                {
                  goto LABEL_193;
                }
              }

              if (v59 > 0)
              {
                sub_1C6F6E5B4(v234, 0);
                swift_isUniquelyReferenced_nonNull_native();
                v280[0] = v268;
                sub_1C6FC2A70();
                OUTLINED_FUNCTION_10_77();
                if (v51)
                {
                  goto LABEL_204;
                }

                v103 = v102;
                v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215318, &unk_1C755CC10);
                v105 = OUTLINED_FUNCTION_20_59(v104);
                v20 = v280[0];
                if ((v105 & 1) == 0)
                {
                  v2 = v277;
                  if (v103)
                  {
                    goto LABEL_87;
                  }

                  goto LABEL_86;
                }

                v105 = OUTLINED_FUNCTION_15_78();
                if ((v103 & 1) == (v106 & 1))
                {
                  v18 = v272;
                  if (v103)
                  {
LABEL_87:
                    v113 = OUTLINED_FUNCTION_19_71(v105, v106, v107, v108, v109, v110, v111, v112, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250);
                    sub_1C6FD9B98(v113);
                    sub_1C70F50AC();

                    memcpy(v2 + 107, v280, 0x78uLL);
                    sub_1C6FDD548((v2 + 107));
                    sub_1C7030CDC(v31, &qword_1EC216328, &qword_1C7575BE0);
                    v234 = sub_1C6FC0A88;
                    goto LABEL_77;
                  }

LABEL_86:
                  sub_1C6FCABD4();
                  v105 = sub_1C6FCA6E4((v2 + 2), (v2 + 92));
                  goto LABEL_87;
                }

LABEL_130:
                OUTLINED_FUNCTION_44();

                sub_1C7551E4C();
                return;
              }

LABEL_47:
              v53 += 2;
              --v48;
            }

            while (v48);
          }
        }

LABEL_48:
        v60 = v2[167];
        v61 = v2[164];
        v62 = v2[161];
        v63 = v2[157];
        v32(v61, HIDWORD(v239), v63);
        __swift_storeEnumTagSinglePayload(v61, 0, 1, v63);
        v64 = *(v258 + 48);
        sub_1C7437994(v60, v62);
        sub_1C7437994(v61, v62 + v64);
        if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
        {
          v65 = v2[157];
          sub_1C7030CDC(v2[164], &qword_1EC216328, &qword_1C7575BE0);
          v66 = v268;
          if (__swift_getEnumTagSinglePayload(v62 + v64, 1, v65) == 1)
          {
            sub_1C7030CDC(v2[161], &qword_1EC216328, &qword_1C7575BE0);
LABEL_69:
            sub_1C6F6E5B4(v238, 0);
            swift_isUniquelyReferenced_nonNull_native();
            v280[0] = v66;
            sub_1C6FC2A70();
            OUTLINED_FUNCTION_10_77();
            if (v51)
            {
              goto LABEL_194;
            }

            v91 = v90;
            v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215318, &unk_1C755CC10);
            v93 = OUTLINED_FUNCTION_20_59(v92);
            v20 = v280[0];
            if (v93)
            {
              v93 = OUTLINED_FUNCTION_15_78();
              if ((v91 & 1) != (v94 & 1))
              {
                goto LABEL_130;
              }
            }

            else
            {
              v2 = v277;
            }

            v18 = v272;
            if ((v91 & 1) == 0)
            {
              sub_1C6FCABD4();
              v93 = sub_1C6FCA6E4((v2 + 2), (v2 + 62));
            }

            v101 = OUTLINED_FUNCTION_19_71(v93, v94, v95, v96, v97, v98, v99, v100, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250);
            sub_1C6FD9B98(v101);
            sub_1C70F50AC();

            memcpy(v2 + 77, v280, 0x78uLL);
            sub_1C6FDD548((v2 + 77));
            sub_1C7030CDC(v65, &qword_1EC216328, &qword_1C7575BE0);
            v238 = sub_1C6FC0A88;
LABEL_77:
            v16 = v240;
            goto LABEL_78;
          }
        }

        else
        {
          v67 = v2[157];
          sub_1C7437994(v2[161], v2[163]);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v62 + v64, 1, v67);
          v69 = v2[164];
          v70 = v2[163];
          v66 = v268;
          if (EnumTagSinglePayload != 1)
          {
            v254 = v2[161];
            v85 = v277[159];
            v86 = v277[157];
            (*v237)(v85, v62 + v64, v86);
            sub_1C7437A04();
            v87 = sub_1C755063C();
            v88 = *v241;
            v89 = v85;
            v2 = v277;
            (*v241)(v89, v86);
            v65 = v17;
            sub_1C7030CDC(v69, &qword_1EC216328, &qword_1C7575BE0);
            v88(v70, v86);
            sub_1C7030CDC(v254, &qword_1EC216328, &qword_1C7575BE0);
            v73 = v249;
            if (v87)
            {
              goto LABEL_69;
            }

LABEL_54:
            sub_1C6F6E5B4(v73, 0);
            swift_isUniquelyReferenced_nonNull_native();
            v280[0] = v66;
            sub_1C6FC2A70();
            OUTLINED_FUNCTION_10_77();
            if (v51)
            {
              goto LABEL_191;
            }

            v75 = v74;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215318, &unk_1C755CC10);
            v76 = sub_1C7551A2C();
            v20 = v280[0];
            if (v76)
            {
              OUTLINED_FUNCTION_15_78();
              if ((v75 & 1) != (v77 & 1))
              {
                goto LABEL_130;
              }

              if (v75)
              {
                goto LABEL_61;
              }
            }

            else
            {
              v2 = v277;
              if (v75)
              {
LABEL_61:
                v78 = v250;
                sub_1C6FD9B98(v78);
                sub_1C6F6E5B4(v247, 0);
                swift_isUniquelyReferenced_nonNull_native();
                v280[0] = v248;
                sub_1C6FC2A70();
                v80 = v79;
                if (__OFADD__(*(v248 + 16), (v79 & 1) == 0))
                {
                  goto LABEL_192;
                }

                v81 = sub_1C7551A2C();
                v82 = v280[0];
                if (v81)
                {
                  sub_1C6FC2A70();
                  if ((v80 & 1) != (v83 & 1))
                  {
                    goto LABEL_130;
                  }
                }

                if (v80)
                {
                  sub_1C6FDD548((v2 + 2));
                }

                else
                {
                  sub_1C6FCABD4();
                }

                v84 = v2[167];
                v248 = v82;
                sub_1C6FD9B98(v78);
                sub_1C7030CDC(v84, &qword_1EC216328, &qword_1C7575BE0);
                v247 = sub_1C6FC0A88;
                v249 = sub_1C6FC0A88;
                v16 = v240;
                v18 = v272;
                goto LABEL_78;
              }
            }

            sub_1C6FCABD4();
            sub_1C6FCA6E4((v2 + 2), (v2 + 47));
            goto LABEL_61;
          }

          sub_1C7030CDC(v2[164], &qword_1EC216328, &qword_1C7575BE0);
          v71 = OUTLINED_FUNCTION_16_65();
          v72(v71);
        }

        sub_1C7030CDC(v2[161], &qword_1EC216360, &unk_1C7563BA0);
        v73 = v249;
        goto LABEL_54;
      }
    }

    else
    {
      v35 = v277[157];
      sub_1C7437994(v277[162], v277[165]);
      v36 = __swift_getEnumTagSinglePayload(v28 + v33, 1, v35);
      v37 = v277[166];
      v38 = v277[165];
      if (v36 != 1)
      {
        v253 = v17;
        v41 = v277[162];
        v42 = v277[159];
        v43 = v277[157];
        (*v237)(v42, v28 + v33, v43);
        sub_1C7437A04();
        v44 = sub_1C755063C();
        v45 = *v241;
        v46 = v42;
        v2 = v277;
        (*v241)(v46, v43);
        v31 = &qword_1C7575BE0;
        sub_1C7030CDC(v37, &qword_1EC216328, &qword_1C7575BE0);
        v45(v38, v43);
        v47 = v41;
        v17 = v253;
        sub_1C7030CDC(v47, &qword_1EC216328, &qword_1C7575BE0);
        v18 = v272;
        if ((v44 & 1) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_25;
      }

      sub_1C7030CDC(v277[166], &qword_1EC216328, &qword_1C7575BE0);
      v39 = OUTLINED_FUNCTION_16_65();
      v40(v39);
    }

    sub_1C7030CDC(v277[162], &qword_1EC216360, &unk_1C7563BA0);
    goto LABEL_48;
  }

  v116 = 0;
  v117 = 0;
  v118 = 0;
  v114 = 0;
  v115 = MEMORY[0x1E69E7CC8];
  v20 = MEMORY[0x1E69E7CC8];
LABEL_89:
  v119 = MEMORY[0x1E69E7CC8];

  v2[181] = v20;
  v2[180] = v115;
  v2[179] = v114;
  v2[178] = v118;
  v2[177] = v117;
  v2[176] = v116;
  v2[152] = v119;
  v120 = sub_1C75504FC();
  sub_1C6FDE0B8(v120);
  v2[182] = v121;

  if (*(v20 + 16))
  {
    v122 = v20 + 64;
    OUTLINED_FUNCTION_10();
    v125 = v124 & v123;
    v260 = (63 - v126) >> 6;
    swift_bridgeObjectRetain_n();
    v127 = 0;
    v128 = MEMORY[0x1E69E7CC0];
    v263 = v20 + 64;
    v269 = v20;
    while (1)
    {
      v2[183] = v128;
      if (!v125)
      {
        while (1)
        {
          v129 = v127 + 1;
          if (__OFADD__(v127, 1))
          {
            break;
          }

          if (v129 >= v260)
          {

            *(v2 + 1528) = 0;
            sub_1C6FDC2F0((v2 + 127));
            v154 = swift_task_alloc();
            v2[184] = v154;
            *v154 = v2;
            v154[1] = sub_1C7435C78;
            goto LABEL_176;
          }

          v125 = *(v122 + 8 * v129);
          ++v127;
          if (v125)
          {
            v127 = v129;
            goto LABEL_96;
          }
        }

LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
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
        goto LABEL_208;
      }

LABEL_96:
      v130 = *(*(v20 + 56) + ((v127 << 9) | (8 * __clz(__rbit64(v125)))));
      if (v130 >> 62)
      {
        v131 = sub_1C75516BC();
      }

      else
      {
        v131 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v132 = v128 >> 62;
      if (v128 >> 62)
      {
        v133 = sub_1C75516BC();
      }

      else
      {
        v133 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v276 = v131;
      v51 = __OFADD__(v133, v131);
      v134 = v133 + v131;
      if (v51)
      {
        goto LABEL_195;
      }

      sub_1C75504FC();
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v132)
      {
        goto LABEL_106;
      }

      OUTLINED_FUNCTION_26_4();
      if (v135 < v134)
      {
        goto LABEL_107;
      }

LABEL_108:
      v273 = v128;
      v125 &= v125 - 1;
      v137 = *(v136 + 16);
      v138 = v135 - v137;
      v139 = v136 + 8 * v137;
      v266 = v136;
      if (v130 >> 62)
      {
        v142 = sub_1C75516BC();
        if (!v142)
        {
          goto LABEL_122;
        }

        v143 = v142;
        v144 = sub_1C75516BC();
        if (v138 < v144)
        {
          goto LABEL_202;
        }

        if (v143 < 1)
        {
          goto LABEL_203;
        }

        v256 = v144;
        v145 = v139 + 32;
        OUTLINED_FUNCTION_0_181();
        sub_1C7099594(&qword_1EC2155C8, &qword_1EC215050, &unk_1C755EAB0, v146);
        v147 = 0;
        v148 = v278;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050, &unk_1C755EAB0);
          v149 = sub_1C6FDD09C(v148, v147, v130);
          v151 = *v150;
          v149(v278, 0);
          v148 = v278;
          *(v145 + 8 * v147++) = v151;
        }

        while (v143 != v147);
        v2 = v277;
        v20 = v269;
        v141 = v256;
LABEL_118:

        v128 = v273;
        v122 = v263;
        if (v141 < v276)
        {
          goto LABEL_196;
        }

        if (v141 > 0)
        {
          v152 = *(v266 + 16);
          v51 = __OFADD__(v152, v141);
          v153 = v152 + v141;
          if (v51)
          {
            goto LABEL_197;
          }

          *(v266 + 16) = v153;
        }
      }

      else
      {
        v140 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v140)
        {
          if (v138 < v140)
          {
            goto LABEL_201;
          }

          v141 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C70DF0F4();
          swift_arrayInitWithCopy();
          goto LABEL_118;
        }

LABEL_122:

        v122 = v263;
        if (v276 > 0)
        {
          goto LABEL_196;
        }
      }
    }

    if (v132)
    {
LABEL_106:
      sub_1C75516BC();
    }

LABEL_107:
    v128 = sub_1C75518CC();
    OUTLINED_FUNCTION_26_4();
    goto LABEL_108;
  }

  if (!*(v2[180] + 16))
  {

    if (*(v2[152] + 16))
    {
      if (*(*v236 + 16))
      {
        sub_1C7437350(*v236, v2 + 152);
      }

      type metadata accessor for QueryAssetsRetrievalProcessor(0);
      sub_1C75504FC();
      v159 = sub_1C754FEEC();
      v160 = sub_1C75511BC();
      v161 = OUTLINED_FUNCTION_21_0(v160);
      v162 = v2[175];
      if (v161)
      {
        swift_slowAlloc();
        v163 = OUTLINED_FUNCTION_31_0();
        v280[0] = v163;
        *v116 = 136315138;
        sub_1C7433C74(v162, v164, v165, v166, v167, v168, v169);
        v171 = v170;

        v172 = MEMORY[0x1CCA5D090](v171, MEMORY[0x1E69E6158]);
        v174 = v173;

        v175 = sub_1C6F765A4(v172, v174, v280);

        *(v116 + 4) = v175;
        OUTLINED_FUNCTION_89(&dword_1C6F5C000, v176, v177, "Add assets to public event query tokens, scoped with: %s");
        __swift_destroy_boxed_opaque_existential_1(v163);
        v178 = v163;
        v2 = v277;
        MEMORY[0x1CCA5F8E0](v178, -1, -1);
        OUTLINED_FUNCTION_37();
      }

      else
      {
      }

      v218 = v2[153];
      v219 = v2[152];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155D0, &qword_1C7580740);
      sub_1C6FDE390();
      v220 = sub_1C75504DC();
      __swift_destroy_boxed_opaque_existential_1(v2 + 122);

      *v218 = v219;
      v218[1] = v220;
    }

    else
    {
      v217 = v2[153];
      __swift_destroy_boxed_opaque_existential_1(v2 + 122);

      *v217 = 0;
      v217[1] = 0;
    }

    v221 = v2[179];
    v222 = v2[178];
    v223 = v2;
    v224 = v2[173];
    v225 = v223[172];
    v226 = v223[171];
    v257 = v221;
    OUTLINED_FUNCTION_13_84();
    (*(v225 + 8))(v224, v226);
    OUTLINED_FUNCTION_7_95();
    sub_1C6F6E5B4(v222, 0);
    sub_1C6F6E5B4(v257, 0);

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_44();

    __asm { BRAA            X1, X16 }
  }

  v2[135] = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  v2[136] = &off_1F46ACFD0;
  v155 = [objc_opt_self() currentUnifiedEmbeddingVersion];
  v156 = v155;
  if (v155)
  {
    v157 = [v155 integerValue];
  }

  else
  {
    v157 = 0;
  }

  v179 = v2[180];
  *(v2 + 1056) = 5;
  v2[133] = v157;
  *(v2 + 1072) = v156 == 0;
  v180 = v179 + 64;
  OUTLINED_FUNCTION_10();
  v183 = v182 & v181;
  v264 = (63 - v184) >> 6;
  v270 = v185;
  swift_bridgeObjectRetain_n();
  v186 = 0;
  v187 = MEMORY[0x1E69E7CC0];
  v267 = v180;
  while (1)
  {
    v2[187] = v187;
    if (!v183)
    {
      break;
    }

LABEL_145:
    v189 = *(*(v270 + 56) + ((v186 << 9) | (8 * __clz(__rbit64(v183)))));
    if (v189 >> 62)
    {
      v190 = sub_1C75516BC();
    }

    else
    {
      v190 = *((v189 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v191 = v187 >> 62;
    if (v187 >> 62)
    {
      v192 = sub_1C75516BC();
    }

    else
    {
      v192 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v193 = v192 + v190;
    if (__OFADD__(v192, v190))
    {
      goto LABEL_199;
    }

    sub_1C75504FC();
    v279 = v190;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v191)
      {
LABEL_155:
        sub_1C75516BC();
      }

LABEL_156:
      v187 = sub_1C75518CC();
      OUTLINED_FUNCTION_26_4();
      goto LABEL_157;
    }

    if (v191)
    {
      goto LABEL_155;
    }

    OUTLINED_FUNCTION_26_4();
    if (v194 < v193)
    {
      goto LABEL_156;
    }

LABEL_157:
    v183 &= v183 - 1;
    v196 = *(v195 + 16);
    v197 = v194 - v196;
    v198 = v195 + 8 * v196;
    v274 = v195;
    if (v189 >> 62)
    {
      v201 = sub_1C75516BC();
      if (!v201)
      {
        goto LABEL_171;
      }

      v202 = v201;
      v261 = sub_1C75516BC();
      if (v197 < v261)
      {
        goto LABEL_207;
      }

      v259 = v187;
      v203 = v275;
      if (v202 < 1)
      {
LABEL_208:
        __break(1u);
        return;
      }

      v204 = v198 + 32;
      OUTLINED_FUNCTION_0_181();
      v206 = v205;
      sub_1C7099594(&qword_1EC2155C8, v207, v205, v208);
      for (i = 0; i != v202; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050, v206);
        v210 = sub_1C6FDD09C(v203, i, v189);
        v212 = *v211;
        v210(v275, 0);
        v203 = v275;
        *(v204 + 8 * i) = v212;
      }

      v2 = v277;
      v200 = v279;
      v187 = v259;
      v199 = v261;
      v180 = v267;
LABEL_167:

      if (v199 < v200)
      {
        goto LABEL_200;
      }

      if (v199 > 0)
      {
        v213 = *(v274 + 16);
        v51 = __OFADD__(v213, v199);
        v214 = v213 + v199;
        if (v51)
        {
          goto LABEL_205;
        }

        *(v274 + 16) = v214;
      }
    }

    else
    {
      v199 = *((v189 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v199)
      {
        if (v197 < v199)
        {
          goto LABEL_206;
        }

        sub_1C70DF0F4();
        swift_arrayInitWithCopy();
        v180 = v267;
        v200 = v279;
        goto LABEL_167;
      }

LABEL_171:

      v180 = v267;
      if (v279 > 0)
      {
        goto LABEL_200;
      }
    }
  }

  while (1)
  {
    v188 = v186 + 1;
    if (__OFADD__(v186, 1))
    {
      goto LABEL_190;
    }

    if (v188 >= v264)
    {
      break;
    }

    v183 = *(v180 + 8 * v188);
    ++v186;
    if (v183)
    {
      v186 = v188;
      goto LABEL_145;
    }
  }

  *(v2 + 1529) = 1;
  v215 = swift_task_alloc();
  v2[188] = v215;
  *v215 = v2;
  OUTLINED_FUNCTION_3_113(v215);
LABEL_176:
  OUTLINED_FUNCTION_44();

  sub_1C71074E0();
}

uint64_t sub_1C7435C78(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1480) = v1;

  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1((v4 + 1016));

    v5 = sub_1C7436AA8;
  }

  else
  {
    *(v4 + 1488) = a1;
    __swift_destroy_boxed_opaque_existential_1((v4 + 1016));

    v5 = sub_1C7435DEC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C7435DEC()
{
  v87 = v0;
  v1 = *(v0 + 1488);
  v2 = *(v0 + 1448);
  v3 = *(v0 + 1248);
  v4 = *(v0 + 1240);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_1C6FDE6CC(MEMORY[0x1E69E7CC8], sub_1C74378B4, v5, v1);
  v7 = v6;

  sub_1C7108C18(v2, v7, (v0 + 1216));

  if (!*(*(v0 + 1440) + 16))
  {

    if (*(*(v0 + 1216) + 16))
    {
      if (*(*(v0 + 1208) + 16))
      {
        sub_1C7437350(*(v0 + 1208), (v0 + 1216));
      }

      v11 = *(v0 + 1248);

      type metadata accessor for QueryAssetsRetrievalProcessor(0);
      sub_1C75504FC();
      v12 = sub_1C754FEEC();
      v13 = sub_1C75511BC();
      v14 = OUTLINED_FUNCTION_21_0(v13);
      v15 = *(v0 + 1400);
      if (v14)
      {
        swift_slowAlloc();
        v16 = OUTLINED_FUNCTION_31_0();
        v86 = v16;
        *v11 = 136315138;
        sub_1C7433C74(v15, v17, v18, v19, v20, v21, v22);
        v24 = v23;

        v25 = MEMORY[0x1CCA5D090](v24, MEMORY[0x1E69E6158]);
        v27 = v26;

        v28 = sub_1C6F765A4(v25, v27, &v86);

        *(v11 + 4) = v28;
        OUTLINED_FUNCTION_89(&dword_1C6F5C000, v29, v30, "Add assets to public event query tokens, scoped with: %s");
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x1CCA5F8E0](v16, -1, -1);
        OUTLINED_FUNCTION_37();
      }

      else
      {
      }

      v68 = *(v0 + 1224);
      v69 = *(v0 + 1216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155D0, &qword_1C7580740);
      sub_1C6FDE390();
      v70 = sub_1C75504DC();
      __swift_destroy_boxed_opaque_existential_1((v0 + 976));

      *v68 = v69;
      v68[1] = v70;
    }

    else
    {
      v67 = *(v0 + 1224);
      __swift_destroy_boxed_opaque_existential_1((v0 + 976));

      *v67 = 0;
      v67[1] = 0;
    }

    v71 = *(v0 + 1424);
    v72 = *(v0 + 1384);
    v73 = *(v0 + 1376);
    v74 = *(v0 + 1368);
    v77 = *(v0 + 1432);
    OUTLINED_FUNCTION_13_84();
    (*(v73 + 8))(v72, v74);
    OUTLINED_FUNCTION_7_95();
    sub_1C6F6E5B4(v71, 0);
    sub_1C6F6E5B4(v77, 0);

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_329();

    __asm { BRAA            X1, X16 }
  }

  v78 = v0 + 1128;
  *(v0 + 1080) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  *(v0 + 1088) = &off_1F46ACFD0;
  v8 = [objc_opt_self() currentUnifiedEmbeddingVersion];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 integerValue];
  }

  else
  {
    v10 = 0;
  }

  v31 = *(v0 + 1440);
  *(v0 + 1056) = 5;
  *(v0 + 1064) = v10;
  *(v0 + 1072) = v9 == 0;
  v32 = v31 + 64;
  OUTLINED_FUNCTION_10();
  v35 = v34 & v33;
  v37 = (63 - v36) >> 6;
  v83 = v38;
  swift_bridgeObjectRetain_n();
  v39 = 0;
  v40 = MEMORY[0x1E69E7CC0];
  v81 = v37;
  v82 = v32;
  v79 = v0;
  while (1)
  {
    *(v0 + 1496) = v40;
    if (!v35)
    {
      break;
    }

LABEL_16:
    v42 = *(*(v83 + 56) + ((v39 << 9) | (8 * __clz(__rbit64(v35)))));
    if (v42 >> 62)
    {
      v43 = sub_1C75516BC();
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = v40 >> 62;
    if (v40 >> 62)
    {
      v45 = sub_1C75516BC();
    }

    else
    {
      v45 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v46 = v45 + v43;
    if (__OFADD__(v45, v43))
    {
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
      return;
    }

    sub_1C75504FC();
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v44)
      {
LABEL_27:
        sub_1C75516BC();
      }

LABEL_28:
      v85 = sub_1C75518CC();
      OUTLINED_FUNCTION_26_4();
      goto LABEL_29;
    }

    if (v44)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_26_4();
    if (v47 < v46)
    {
      goto LABEL_28;
    }

    v85 = v40;
LABEL_29:
    v35 &= v35 - 1;
    v49 = *(v48 + 16);
    v50 = v47 - v49;
    v51 = v48 + 8 * v49;
    v84 = v48;
    if (v42 >> 62)
    {
      v53 = sub_1C75516BC();
      if (!v53)
      {
        goto LABEL_43;
      }

      v54 = v53;
      v55 = sub_1C75516BC();
      if (v50 < v55)
      {
        goto LABEL_61;
      }

      if (v54 < 1)
      {
        goto LABEL_62;
      }

      v80 = v55;
      v56 = v51 + 32;
      OUTLINED_FUNCTION_0_181();
      sub_1C7099594(&qword_1EC2155C8, &qword_1EC215050, &unk_1C755EAB0, v57);
      for (i = 0; i != v54; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050, &unk_1C755EAB0);
        v59 = sub_1C6FDD09C(v78, i, v42);
        v61 = *v60;
        v59(v78, 0);
        *(v56 + 8 * i) = v61;
      }

      v0 = v79;
      v52 = v80;
LABEL_39:

      v40 = v85;
      v37 = v81;
      v32 = v82;
      if (v52 < v43)
      {
        goto LABEL_58;
      }

      if (v52 > 0)
      {
        v62 = *(v84 + 16);
        v63 = __OFADD__(v62, v52);
        v64 = v62 + v52;
        if (v63)
        {
          goto LABEL_59;
        }

        *(v84 + 16) = v64;
      }
    }

    else
    {
      v52 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v52)
      {
        if (v50 < v52)
        {
          goto LABEL_60;
        }

        sub_1C70DF0F4();
        swift_arrayInitWithCopy();
        goto LABEL_39;
      }

LABEL_43:

      v40 = v85;
      v37 = v81;
      v32 = v82;
      if (v43 > 0)
      {
        goto LABEL_58;
      }
    }
  }

  while (1)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      goto LABEL_57;
    }

    if (v41 >= v37)
    {
      break;
    }

    v35 = *(v32 + 8 * v41);
    ++v39;
    if (v35)
    {
      v39 = v41;
      goto LABEL_16;
    }
  }

  *(v0 + 1529) = 1;
  v65 = swift_task_alloc();
  *(v0 + 1504) = v65;
  *v65 = v0;
  OUTLINED_FUNCTION_3_113(v65);
  OUTLINED_FUNCTION_329();

  sub_1C71074E0();
}

uint64_t sub_1C743658C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1512) = v1;

  if (v1)
  {

    v5 = sub_1C7436BB0;
  }

  else
  {
    *(v4 + 1520) = a1;

    v5 = sub_1C74366F8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C74366F8()
{
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1440);
  v3 = *(v0 + 1248);
  v4 = *(v0 + 1240);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_1C6FDE6CC(MEMORY[0x1E69E7CC8], sub_1C74378D0, v5, v1);
  v7 = v6;

  sub_1C7108C18(v2, v7, (v0 + 1216));

  __swift_destroy_boxed_opaque_existential_1((v0 + 1056));
  if (*(*(v0 + 1216) + 16))
  {
    if (*(*(v0 + 1208) + 16))
    {
      sub_1C7437350(*(v0 + 1208), (v0 + 1216));
    }

    v8 = *(v0 + 1248);

    type metadata accessor for QueryAssetsRetrievalProcessor(0);
    sub_1C75504FC();
    v9 = sub_1C754FEEC();
    v10 = sub_1C75511BC();
    v11 = OUTLINED_FUNCTION_21_0(v10);
    v12 = *(v0 + 1400);
    if (v11)
    {
      swift_slowAlloc();
      v13 = OUTLINED_FUNCTION_31_0();
      v39 = v13;
      *v8 = 136315138;
      sub_1C7433C74(v12, v14, v15, v16, v17, v18, v19);
      v21 = v20;

      v22 = MEMORY[0x1CCA5D090](v21, MEMORY[0x1E69E6158]);
      v24 = v23;

      v25 = sub_1C6F765A4(v22, v24, &v39);

      *(v8 + 4) = v25;
      OUTLINED_FUNCTION_89(&dword_1C6F5C000, v26, v27, "Add assets to public event query tokens, scoped with: %s");
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1CCA5F8E0](v13, -1, -1);
      OUTLINED_FUNCTION_37();
    }

    else
    {
    }

    v29 = *(v0 + 1224);
    v30 = *(v0 + 1216);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155D0, &qword_1C7580740);
    sub_1C6FDE390();
    v31 = sub_1C75504DC();
    __swift_destroy_boxed_opaque_existential_1((v0 + 976));

    *v29 = v30;
    v29[1] = v31;
  }

  else
  {
    v28 = *(v0 + 1224);
    __swift_destroy_boxed_opaque_existential_1((v0 + 976));

    *v28 = 0;
    v28[1] = 0;
  }

  v32 = *(v0 + 1408);
  v33 = *(v0 + 1384);
  v34 = *(v0 + 1376);
  v35 = *(v0 + 1368);
  v38 = *(v0 + 1432);
  __swift_project_boxed_opaque_existential_1(*(v0 + 1232), *(*(v0 + 1232) + 24));
  sub_1C754F1AC();
  (*(v34 + 8))(v33, v35);
  sub_1C6F6E5B4(v32, 0);
  OUTLINED_FUNCTION_7_95();
  sub_1C6F6E5B4(v38, 0);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_329();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C7436AA8()
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 976));

  OUTLINED_FUNCTION_2_124();
  v4 = (*(v0 + 8))(v2, v3);
  OUTLINED_FUNCTION_4_105(v4, v5, v6, v7, v8, v9, v10, v11, v14);

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_1C7436BB0()
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 122);
  __swift_destroy_boxed_opaque_existential_1(v1 + 132);

  OUTLINED_FUNCTION_2_124();
  v4 = (*(v0 + 8))(v2, v3);
  OUTLINED_FUNCTION_4_105(v4, v5, v6, v7, v8, v9, v10, v11, v14);

  v12 = v1[1];

  return v12();
}

uint64_t sub_1C7436CC0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BE68, &unk_1C758B0D0);
  sub_1C754EE8C();

  MEMORY[0x1CCA5CC40]();

  sub_1C755083C();
  result = sub_1C75514FC();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

void sub_1C7436DB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    type metadata accessor for QueryAssetsRetrievalProcessor(0);
    sub_1C6FDE42C(v4, 1);
    v7 = v5;
    sub_1C6FDE42C(v4, 1);
    v8 = v7;
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();

    sub_1C6FDE438(v4, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138478083;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2112;
      sub_1C6FDE42C(v4, 1);
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "Metadata retrieval failed for '%{private}@' public event token: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190, &qword_1C755C730);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    if (a4)
    {
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000024, 0x80000001C7597F90);
      v15 = [v8 description];
      v16 = sub_1C755068C();
      v18 = v17;

      MEMORY[0x1CCA5CD70](v16, v18);

      MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75B04C0);
      sub_1C7161CDC(0, 0xE000000000000000);

      sub_1C6FDE438(v4, 1);
    }

    else
    {

      sub_1C6FDE438(v4, 1);
    }
  }

  else
  {
    sub_1C6FDE42C(*(a2 + 8), 0);
    sub_1C6FDE42C(v4, 0);
    v20 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    sub_1C6FC7AC8(v4, v20);
    sub_1C6FDE438(v4, 0);

    *a1 = v21;
  }
}

void sub_1C7437080(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    type metadata accessor for QueryAssetsRetrievalProcessor(0);
    sub_1C6FDE42C(v4, 1);
    v7 = v5;
    sub_1C6FDE42C(v4, 1);
    v8 = v7;
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();

    sub_1C6FDE438(v4, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138478083;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2112;
      sub_1C6FDE42C(v4, 1);
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "Embedding retrieval failed for '%{private}@' public event token: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190, &qword_1C755C730);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    if (a4)
    {
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000025, 0x80000001C75A2CF0);
      v15 = [v8 description];
      v16 = sub_1C755068C();
      v18 = v17;

      MEMORY[0x1CCA5CD70](v16, v18);

      MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75B04C0);
      sub_1C7161CDC(0, 0xE000000000000000);

      sub_1C6FDE438(v4, 1);
    }

    else
    {

      sub_1C6FDE438(v4, 1);
    }
  }

  else
  {
    sub_1C6FDE42C(*(a2 + 8), 0);
    sub_1C6FDE42C(v4, 0);
    v20 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    sub_1C6FC7AC8(v4, v20);
    sub_1C6FDE438(v4, 0);

    *a1 = v21;
  }
}

void sub_1C7437350(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  sub_1C75504FC();
  v11 = 0;
  while (v9)
  {
LABEL_10:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    memcpy(__dst, (*(v5 + 48) + 120 * (v13 | (v11 << 6))), 0x78uLL);
    v14 = *a2;
    if (*(*a2 + 16))
    {
      sub_1C6FCA6E4(__dst, &v54);
      v15 = sub_1C6FC2A70();
      if ((v16 & 1) != 0 && (v17 = *(*(v14 + 56) + 8 * v15), *(v17 + 16)))
      {
        v51 = a2;
        v52 = v5;
        v53 = v3;
        v54 = MEMORY[0x1E69E7CC0];
        v18 = 1 << *(v17 + 32);
        if (v18 < 64)
        {
          v19 = ~(-1 << v18);
        }

        else
        {
          v19 = -1;
        }

        v20 = v19 & *(v17 + 64);
        v21 = (v18 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v22 = 0;
        if (v20)
        {
          goto LABEL_22;
        }

        while (1)
        {
          v23 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_37;
          }

          if (v23 >= v21)
          {
            break;
          }

          v20 = *(v17 + 64 + 8 * v23);
          ++v22;
          if (v20)
          {
            v22 = v23;
            do
            {
LABEL_22:
              v20 &= v20 - 1;
              v24 = sub_1C75504FC();
              sub_1C6FD25FC(v24);
            }

            while (v20);
            continue;
          }
        }

        sub_1C706D154();
        v26 = v25;
        if (!*(v25 + 16))
        {

          sub_1C6FDD548(__dst);
          v3 = v53;
          goto LABEL_32;
        }

        v3 = v53;
        v27 = *(v53 + 8);
        v28 = *(v53 + 16);
        v54 = *v53;
        v55 = v27;
        v56 = v28;
        v29 = v54;

        static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v26, &v54);

        v30 = v54;

        sub_1C75504FC();
        sub_1C706D87C();
        v32 = v31;
        if (*(v31 + 16))
        {
          v33 = *(v53 + 8);
          v34 = *v53;

          v35 = objc_autoreleasePoolPush();
          sub_1C71C8640(v32, 0, v34, v33, &v54);
          objc_autoreleasePoolPop(v35);

          v3 = v53;
          v36 = v54;
          type metadata accessor for QueryAssetsRetrievalProcessor(0);
          sub_1C75504FC();
          sub_1C75504FC();
          v37 = sub_1C754FEEC();
          v38 = sub_1C75511BC();

          v50 = v36;
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v54 = v49;
            *v39 = 134218242;
            *(v39 + 4) = v36[2];

            *(v39 + 12) = 2080;
            v40 = sub_1C7550F9C();
            v42 = v41;

            v43 = sub_1C6F765A4(v40, v42, &v54);

            *(v39 + 14) = v43;
            _os_log_impl(&dword_1C6F5C000, v37, v38, "Expand to all %ld assets in the moments = %s", v39, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v49);
            MEMORY[0x1CCA5F8E0](v49, -1, -1);
            v44 = v39;
            v3 = v53;
            MEMORY[0x1CCA5F8E0](v44, -1, -1);
          }

          else
          {
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA0, &unk_1C7571010);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1C755BAB0;
          v46 = __dst[3];
          *(inited + 32) = __dst[2];
          *(inited + 40) = v46;
          *(inited + 48) = v50;
          sub_1C75504FC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
          v47 = sub_1C75504DC();
          a2 = v51;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v54 = *v51;
          sub_1C6FC7AB4(v47, __dst, isUniquelyReferenced_nonNull_native);

          sub_1C6FDD548(__dst);
          *v51 = v54;
          v5 = v52;
        }

        else
        {

          sub_1C6FDD548(__dst);
LABEL_32:
          a2 = v51;
        }
      }

      else
      {
        sub_1C6FDD548(__dst);
      }
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

unint64_t sub_1C74378EC()
{
  result = qword_1EC21BE50;
  if (!qword_1EC21BE50)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E61A0], MEMORY[0x1E69E6158], v0, v1);
    atomic_store(result, &qword_1EC21BE50);
  }

  return result;
}

unint64_t sub_1C7437940()
{
  result = qword_1EC21BE58;
  if (!qword_1EC21BE58)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E67D8], MEMORY[0x1E69E67B0], v0, v1);
    atomic_store(result, &qword_1EC21BE58);
  }

  return result;
}

uint64_t sub_1C7437994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328, &qword_1C7575BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C7437A04()
{
  result = qword_1EC216378;
  if (!qword_1EC216378)
  {
    v3 = sub_1C754F14C();
    result = swift_getWitnessTable(MEMORY[0x1E69C17E0], v3, v0, v1);
    atomic_store(result, &qword_1EC216378);
  }

  return result;
}

uint64_t AssetCurationPromptGenerator.__allocating_init(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AssetCurationPromptGenerator.init(with:)(a1);
  return v2;
}

void __swiftcall CurationPromptAsset.init(uuid:cacheId:description:)(PhotosIntelligence::CurationPromptAsset *__return_ptr retstr, Swift::String uuid, Swift::String cacheId, Swift::String description)
{
  retstr->uuid = uuid;
  retstr->cacheId = cacheId;
  retstr->description = description;
}

uint64_t sub_1C7437AAC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, unint64_t *a8@<X8>)
{
  countAndFlagsBits = a5;
  v183._rawValue = a3;
  v178._rawValue = a2;
  v169 = a8;
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3_0();
  v186 = v13;
  v187._countAndFlagsBits = v12;
  MEMORY[0x1EEE9AC00](v12);
  v182 = v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[1];
  v168 = a1[2];
  v21 = a1[3];
  v22 = a1[6];
  v176 = a1[5];
  v177 = v20;
  v180 = v22;
  v23 = a1[8];
  v181 = a1[7];
  v24 = a1[10];
  v173 = a1[9];
  v174 = v21;
  v172 = v24;
  v26 = a1[11];
  v25 = a1[12];
  v170 = v23;
  v171 = v26;
  v175 = v25;
  LODWORD(v179) = *(a4 + 1);
  __swift_project_boxed_opaque_existential_1(a6, a6[3]);
  sub_1C754F1CC();
  object = v187._object;
  sub_1C754F2CC();
  if (object)
  {
    __swift_project_boxed_opaque_existential_1(a6, a6[3]);
    sub_1C754F1AC();
    (*(v16 + 8))(v19, v188);
    return (*(v186 + 8))(a7, v187._countAndFlagsBits);
  }

  else
  {
    v165 = a6;
    v166 = a7;
    v162 = v19;
    v163 = v16;
    v187._object = *(v185 + 16);
    v29 = *(v187._object + 16);
    v30 = *(v29 + 16);
    v31 = MEMORY[0x1E69E7CC0];
    v164 = 0;
    if (v30)
    {
      __dst[0] = MEMORY[0x1E69E7CC0];
      sub_1C75504FC();
      sub_1C6F7ED9C(0, v30, 0, v32, v33, v34, v35);
      v31 = __dst[0];
      v36 = v29 + 40;
      do
      {
        v41 = sub_1C75506FC();
        v43 = v42;
        __dst[0] = v31;
        v45 = *(v31 + 16);
        v44 = *(v31 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1C6F7ED9C(v44 > 1, v45 + 1, 1, v37, v38, v39, v40);
          v31 = __dst[0];
        }

        *(v31 + 16) = v45 + 1;
        v46 = v31 + 16 * v45;
        *(v46 + 32) = v41;
        *(v46 + 40) = v43;
        v36 += 16;
        --v30;
      }

      while (v30);
    }

    v201 = v31;
    v47 = v187._object;
    if (*(v187._object + 152))
    {
      __swift_mutable_project_boxed_opaque_existential_0(countAndFlagsBits, *(countAndFlagsBits + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      sub_1C72AF5EC(&qword_1EDD06AA8, MEMORY[0x1E69E6318]);
      sub_1C72AF5EC(&qword_1EDD06A98, MEMORY[0x1E69E6338]);
      v47 = v187._object;
      sub_1C755062C();
      v31 = v201;
    }

    v48 = static StoryGenerationUtilities.arrayAsSentence(for:includeComma:emptyArrayResult:)(v31, 1, 0);
    v50 = v49;

    v51 = OBJC_IVAR____TtC18PhotosIntelligence28AssetCurationPromptGenerator_logger;
    sub_1C75504FC();
    v167 = v51;
    v52 = sub_1C754FEEC();
    v53 = sub_1C755117C();

    if (os_log_type_enabled(v52, v53))
    {
      OUTLINED_FUNCTION_13_3();
      v54 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v55 = swift_slowAlloc();
      __dst[0] = v55;
      *v54 = 136642819;
      *(v54 + 4) = sub_1C6F765A4(v48, v50, __dst);
      OUTLINED_FUNCTION_46_0();
      _os_log_impl(v56, v57, v58, v59, v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v161 = v48;
    memcpy(__dst, v47 + 40, 0x50uLL);
    v60 = objc_opt_self();
    sub_1C7027A20(__dst, v199);
    v61 = [v60 usePersonAndPetExtendedTokensInAssetCuration];
    memcpy(v199, __dst, sizeof(v199));
    v62 = sub_1C75504FC();
    v63 = sub_1C71CD964(v62);
    LOBYTE(v60) = [v60 shufflePromptParameters];
    type metadata accessor for DynamicLifeContextGenerator(0);
    swift_allocObject();
    v64 = DynamicLifeContextGenerator.init(extendedTokenCollection:characterSummaries:shufflePromptParameters:)(v199, v63, v60);
    v65 = sub_1C754FEEC();
    sub_1C755117C();
    v66 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = v64;
      v69 = swift_slowAlloc();
      *v69 = 67109120;
      *(v69 + 4) = v61;
      OUTLINED_FUNCTION_46_0();
      _os_log_impl(v70, v71, v72, v73, v69, 8u);
      v64 = v68;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    LOBYTE(v190) = 3;
    v74 = *(v187._object + 17);
    v75 = v182;
    v76 = v166;
    sub_1C754F2BC();
    LOBYTE(v189[0]) = v61;
    v78 = v164;
    v77 = v165;
    sub_1C73CD040(&v190, v74, countAndFlagsBits, v165, v75, v189, v64);
    if (v78)
    {

      __swift_project_boxed_opaque_existential_1(v77, v77[3]);
      sub_1C754F1AC();
      v81 = OUTLINED_FUNCTION_1_135();
      v82(v81);
      OUTLINED_FUNCTION_6_106();
      return v111(v76, v187._countAndFlagsBits);
    }

    else
    {
      v83 = v80;
      countAndFlagsBits = v79;
      sub_1C75504FC();
      v84 = sub_1C754FEEC();
      v85 = sub_1C755117C();

      v86 = os_log_type_enabled(v84, v85);
      v160[1] = v64;
      if (v86)
      {
        OUTLINED_FUNCTION_13_3();
        v87 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v88 = swift_slowAlloc();
        v190 = v88;
        *v87 = 136642819;
        *(v87 + 4) = sub_1C6F765A4(countAndFlagsBits, v83, &v190);
        OUTLINED_FUNCTION_46_0();
        _os_log_impl(v89, v90, v91, v92, v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v88);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v93 = v179;
      v94 = *(v187._object + 2);
      v95 = [v94 string];
      v96 = sub_1C755068C();
      v98 = v97;

      v190 = v96;
      v191 = v98;
      v99 = sub_1C755097C();
      v101 = v100;
      v197 = v99;
      v198 = v100;
      v182 = v94;
      if (v93)
      {
        v102 = AssetCurationPromptGenerator.generatePromptAnnotation(for:characterSummaryByCharacterUUID:)(v94, v183);
        if (v102.value._object)
        {
          MEMORY[0x1CCA5CD70](v102.value._countAndFlagsBits);

          v99 = v197;
          v101 = v198;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216550, &unk_1C756BF70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C757B6D0;
      *(inited + 32) = 0x6D6F725072657375;
      *(inited + 40) = 0xEA00000000007470;
      *(inited + 48) = v99;
      *(inited + 56) = v101;
      *(inited + 64) = 0x737469617274;
      *(inited + 72) = 0xE600000000000000;
      *(inited + 80) = v161;
      *(inited + 88) = v50;
      *(inited + 96) = 0xD000000000000012;
      *(inited + 104) = 0x80000001C75AD1D0;
      *(inited + 112) = countAndFlagsBits;
      *(inited + 120) = v83;
      *(inited + 128) = 0x74695479726F7473;
      *(inited + 136) = 0xEA0000000000656CLL;
      v104 = v187._object;
      v105 = *(v187._object + 4);
      v190 = *(v187._object + 3);
      v191 = v105;
      sub_1C75504FC();
      *(inited + 144) = sub_1C755097C();
      *(inited + 152) = v106;
      *(inited + 160) = 0xD000000000000010;
      *(inited + 168) = 0x80000001C75A2DD0;
      v190 = v104[15];
      *(inited + 176) = sub_1C7551D8C();
      *(inited + 184) = v107;
      strcpy((inited + 192), "fallbackQuery");
      *(inited + 206) = -4864;
      v108 = v181;
      *(inited + 208) = v180;
      *(inited + 216) = v108;
      *(inited + 224) = 0xD000000000000015;
      *(inited + 232) = 0x80000001C759DC30;
      *(inited + 240) = 0;
      *(inited + 248) = 0xE000000000000000;
      sub_1C75504FC();
      v109 = sub_1C75504DC();
      sub_1C75504FC();
      StoryPrompt.init(promptTemplate:bindings:usesCustomSystemPrompt:)(2, v109, 0, &v190);
      v183._rawValue = 0x80000001C759DC30;
      v189[0] = v190;
      v189[1] = v191;
      v189[2] = v192;
      v189[3] = v193;
      v189[4] = v194;
      v189[5] = v195;
      v189[6] = v196;
      v110 = StoryPrompt.fullyRendered()();
      countAndFlagsBits = v110._countAndFlagsBits;

      sub_1C754F2DC();
      v112 = static LLMWrapper.robustOverestimatedTokenCount(in:)(countAndFlagsBits, v110._object);

      v113 = *(v187._object + 18);
      v114 = v113 - v112;
      if (__OFSUB__(v113, v112))
      {
        __break(1u);
      }

      else
      {
        v115 = v185;

        v116 = sub_1C754FEEC();
        sub_1C755117C();
        v117 = OUTLINED_FUNCTION_72();
        if (os_log_type_enabled(v117, v118))
        {
          OUTLINED_FUNCTION_98();
          v119 = swift_slowAlloc();
          *v119 = 134218496;
          *(v119 + 4) = *(v187._object + 18);

          *(v119 + 12) = 2048;
          *(v119 + 14) = v112;
          *(v119 + 22) = 2048;
          *(v119 + 24) = v114;
          OUTLINED_FUNCTION_46_0();
          _os_log_impl(v120, v121, v122, v123, v119, 0x20u);
          v115 = v185;
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        else
        {
        }

        v124 = v163;
        v125 = v188;
        AssetCurationPromptGenerator.assetDescriptionString(from:tokenLimit:)(v178, v114);
        if (v126)
        {

          OUTLINED_FUNCTION_0_182();
          (*(v124 + 8))(v115, v125);
          OUTLINED_FUNCTION_6_106();
          v128 = v166;
          v129 = v187._countAndFlagsBits;
        }

        else
        {
          swift_isUniquelyReferenced_nonNull_native();
          v190 = v109;
          sub_1C6FC80A4();
          StoryPrompt.init(promptTemplate:bindings:usesCustomSystemPrompt:)(2, v190, 0, &v190);
          v130 = v191;
          v131 = v192;
          v132 = v193;
          v134 = v194;
          v133 = v195;
          v135 = v196;
          v186 = v190;
          v187 = StoryPrompt.fullyRendered()();
          sub_1C754F2EC();
          v164 = 0;
          v161 = v134;
          v166 = v131;
          v179 = v135;
          v180 = v133;
          v183._rawValue = v132;
          countAndFlagsBits = v130;
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          v136 = v174;
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          v178._rawValue = v170;
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          v137 = sub_1C754FEEC();
          v138 = sub_1C755117C();

          v139 = v138;

          if (os_log_type_enabled(v137, v138))
          {
            v140 = swift_slowAlloc();
            v190 = swift_slowAlloc();
            *v140 = 136643075;
            sub_1C75504FC();
            v141 = sub_1C6F765A4(v168, v136, &v190);

            *(v140 + 4) = v141;
            *(v140 + 12) = 2085;
            v143 = v187._countAndFlagsBits;
            v142 = v187._object;
            *(v140 + 14) = sub_1C6F765A4(v187._countAndFlagsBits, v187._object, &v190);
            _os_log_impl(&dword_1C6F5C000, v137, v139, "[AssetCurationLLM] Generated prompt for chapter '%{sensitive}s': %{sensitive}s)", v140, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();

            v144 = v169;
            v145 = v142;
          }

          else
          {

            v144 = v169;
            v143 = v187._countAndFlagsBits;
            v145 = v187._object;
          }

          v146 = v164;
          v147 = static LLMWrapper.robustOverestimatedTokenCount(in:)(v143, v145);
          v148 = v182;
          v149 = v179;
          v150 = v186;
          if (v146)
          {
          }

          else
          {
            v151 = v147;

            v152 = sub_1C754FEEC();
            v153 = sub_1C755117C();
            v154 = OUTLINED_FUNCTION_72();
            if (os_log_type_enabled(v154, v155))
            {
              OUTLINED_FUNCTION_13_3();
              v156 = swift_slowAlloc();
              *v156 = 134217984;
              *(v156 + 4) = v151;
              _os_log_impl(&dword_1C6F5C000, v152, v153, "Prompt token count: %ld", v156, 0xCu);
              v148 = v182;
              OUTLINED_FUNCTION_235();
              MEMORY[0x1CCA5F8E0]();
            }

            v157 = countAndFlagsBits;
            *v144 = v150;
            v144[1] = v157;
            rawValue = v183._rawValue;
            v144[2] = v166;
            v144[3] = rawValue;
            v159 = v180;
            v144[4] = v161;
            v144[5] = v159;
            v144[6] = v149;
          }

          OUTLINED_FUNCTION_0_182();
          v128 = OUTLINED_FUNCTION_1_135();
        }

        return v127(v128, v129);
      }
    }
  }

  return result;
}

uint64_t sub_1C7438B24(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE68FA8](a1);
  }

LABEL_5:
  a1 = sub_1C755081C();

  return MEMORY[0x1EEE68FA8](a1);
}

uint64_t sub_1C7438B8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496568636163 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C7438CA0(char a1)
{
  if (!a1)
  {
    return 1684632949;
  }

  if (a1 == 1)
  {
    return 0x64496568636163;
  }

  return 0x7470697263736564;
}

uint64_t sub_1C7438D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7438B8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7438D28(uint64_t a1)
{
  v2 = sub_1C7439074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7438D64(uint64_t a1)
{
  v2 = sub_1C7439074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CurationPromptAsset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BE70, &unk_1C758B0E0);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v13 - v7;
  v9 = v1[2];
  v13[3] = v1[3];
  v13[4] = v9;
  v10 = v1[4];
  v13[1] = v1[5];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7439074();
  sub_1C755200C();
  v16 = 0;
  v11 = v13[5];
  sub_1C7551CCC();
  if (!v11)
  {
    v15 = 1;
    sub_1C7551CCC();
    v14 = 2;
    sub_1C7551CCC();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t AssetCurationPromptGenerator.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t AssetCurationPromptGenerator.init(with:)(uint64_t a1)
{
  sub_1C754FEFC();
  *(v1 + 16) = a1;
  return v1;
}

unint64_t sub_1C7439074()
{
  result = qword_1EDD0A650;
  if (!qword_1EDD0A650)
  {
    result = swift_getWitnessTable(byte_1C758B324, &type metadata for CurationPromptAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0A650);
  }

  return result;
}

Swift::String_optional __swiftcall AssetCurationPromptGenerator.generatePromptAnnotation(for:characterSummaryByCharacterUUID:)(NSAttributedString a1, Swift::OpaquePointer characterSummaryByCharacterUUID)
{
  v4 = *MEMORY[0x1E6978F98];
  v5 = [(objc_class *)a1.super.isa string];
  v6 = sub_1C755068C();
  v8 = v7;

  v61 = MEMORY[0x1E69E7CC0];
  v9 = [(objc_class *)a1.super.isa length];
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = v8;
  v10[4] = v2;
  v10[5] = &v61;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1C743A294;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1C71CCBD4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C743BBE4;
  aBlock[3] = &block_descriptor_41;
  v12 = _Block_copy(aBlock);
  sub_1C75504FC();

  [(objc_class *)a1.super.isa enumerateAttribute:v4 inRange:0 options:v9 usingBlock:0, v12];
  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
LABEL_25:
    __break(1u);
  }

  else
  {
    v57 = v4;
    v15 = v61;
    v16 = *(v61 + 16);
    if (v16)
    {
      isUniquelyReferenced_nonNull_native = sub_1C75504FC();
      v17 = 0;
      v18 = v15 + 48;
      v58 = MEMORY[0x1E69E7CC0];
LABEL_4:
      v19 = (v18 + 24 * v17);
      while (v16 != v17)
      {
        if (v17 >= *(v15 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        ++v17;
        v20 = v19 + 3;
        v22 = *(v19 - 1);
        v21 = *v19;
        v23 = *(v19 - 2);
        sub_1C75504FC();
        sub_1C75504FC();
        v24._rawValue = v21;
        v25._rawValue = characterSummaryByCharacterUUID._rawValue;
        sub_1C7439D64(v23, v22, v24, v2, v25);
        v27 = v26;
        v29 = v28;

        v19 = v20;
        if (v29)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v30 = v58;
          }

          else
          {
            sub_1C6FB1814();
            v30 = isUniquelyReferenced_nonNull_native;
          }

          v31 = *(v30 + 16);
          if (v31 >= *(v30 + 24) >> 1)
          {
            sub_1C6FB1814();
            v30 = isUniquelyReferenced_nonNull_native;
          }

          *(v30 + 16) = v31 + 1;
          v58 = v30;
          v32 = v30 + 16 * v31;
          *(v32 + 32) = v27;
          *(v32 + 40) = v29;
          v18 = v15 + 48;
          goto LABEL_4;
        }
      }

      if (!*(v58 + 16))
      {

        goto LABEL_22;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1C755BAB0;
      aBlock[0] = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      sub_1C72AF5EC(&qword_1EDD0CF58, MEMORY[0x1E69E6310]);
      v34 = sub_1C75505FC();
      v36 = v35;

      *(v33 + 56) = MEMORY[0x1E69E6158];
      *(v33 + 64) = sub_1C6F6D524();
      *(v33 + 32) = v34;
      *(v33 + 40) = v36;
      v37 = sub_1C75506BC();
      v39 = v38;
      sub_1C75504FC();
      v40 = sub_1C754FEEC();
      v41 = sub_1C75511BC();

      if (os_log_type_enabled(v40, v41))
      {
        OUTLINED_FUNCTION_13_3();
        v42 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v43 = swift_slowAlloc();
        aBlock[0] = v43;
        *v42 = 136642819;
        *(v42 + 4) = sub_1C6F765A4(v37, v39, aBlock);
        OUTLINED_FUNCTION_46_0();
        _os_log_impl(v44, v45, v46, v47, v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }
    }

    else
    {

      v48 = sub_1C754FEEC();
      sub_1C75511BC();
      v49 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        OUTLINED_FUNCTION_46_0();
        _os_log_impl(v52, v53, v54, v55, v51, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

LABEL_22:
      v37 = 0;
      v39 = 0;
    }

    isUniquelyReferenced_nonNull_native = v37;
    v14 = v39;
  }

  result.value._object = v14;
  result.value._countAndFlagsBits = isUniquelyReferenced_nonNull_native;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetCurationPromptGenerator.assetDescriptionString(from:tokenLimit:)(Swift::OpaquePointer from, Swift::Int tokenLimit)
{
  v3 = v2;
  v6 = sub_1C754FEEC();
  v7 = sub_1C755117C();
  v8 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_13_3();
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = tokenLimit;
    _os_log_impl(&dword_1C6F5C000, v6, v7, "Processing asset description with tokenLimit: %ld", v10, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  if (tokenLimit < 1)
  {
    sub_1C743A2A0();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }

  else
  {
    v12 = 0;
    v36 = 0;
    v37 = 0xE000000000000000;
    v38 = *(from._rawValue + 2);
    for (i = (from._rawValue + 72); ; i += 6)
    {
      if (v38 == v12)
      {
        v12 = v38;
        goto LABEL_17;
      }

      v14 = *(i - 1);
      v7 = *i;
      v15 = *(i - 2);
      v35[0] = *(i - 3);
      v35[1] = v15;
      sub_1C75504FC();
      swift_bridgeObjectRetain_n();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v14, v7);
      swift_bridgeObjectRelease_n();

      MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
      v16 = v15;
      v17 = static LLMWrapper.robustOverestimatedTokenCount(in:)(v35[0], v15);
      if (v3)
      {

        goto LABEL_13;
      }

      v18 = v17;
      v19 = static LLMWrapper.robustOverestimatedTokenCount(in:)(v36, v37);
      v3 = 0;
      v21 = v19;
      if (__OFADD__(v19, v18))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v19 + v18 > tokenLimit)
      {
        break;
      }

      MEMORY[0x1CCA5CD70](v35[0], v16);

      ++v12;
    }

    v23 = sub_1C754FEEC();
    v24 = sub_1C755117C();
    v25 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v25, v26))
    {
      OUTLINED_FUNCTION_98();
      v27 = swift_slowAlloc();
      *v27 = 134218496;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2048;
      *(v27 + 14) = v18;
      *(v27 + 22) = 2048;
      *(v27 + 24) = tokenLimit;
      _os_log_impl(&dword_1C6F5C000, v23, v24, "Reached token limit. CurrentTokenCount:%ld + DescriptionTokenCount:%ld > %ld", v27, 0x20u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

LABEL_17:
    sub_1C7438B24(v11);

    tokenLimit = v36;
    v7 = v37;
    sub_1C75504FC();
    sub_1C75504FC();
    v28 = sub_1C754FEEC();
    v29 = sub_1C755117C();
    v30 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v30, v31))
    {
      OUTLINED_FUNCTION_98();
      v32 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v33 = swift_slowAlloc();
      v35[0] = v33;
      *v32 = 134218499;
      *(v32 + 4) = v12;
      *(v32 + 12) = 2048;
      *(v32 + 14) = v38;

      *(v32 + 22) = 2085;
      *(v32 + 24) = sub_1C6F765A4(tokenLimit, v7, v35);
      _os_log_impl(&dword_1C6F5C000, v28, v29, "Processed %ld asset descriptions out of %ld: %{sensitive}s", v32, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }
  }

LABEL_13:
  v19 = tokenLimit;
  v20 = v7;
LABEL_21:
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

uint64_t AssetCurationPromptGenerator.deinit()
{

  v1 = OBJC_IVAR____TtC18PhotosIntelligence28AssetCurationPromptGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t AssetCurationPromptGenerator.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18PhotosIntelligence28AssetCurationPromptGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

void sub_1C7439B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v10 = static StoryGenerationUtilities.substring(of:in:)(a5, a6, a2, a3);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    sub_1C7329154(a1, v32);
    if (!v33)
    {

      sub_1C6FE32F4(v32);
      return;
    }

    sub_1C73291C4();
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v14 = [v31 QUToken];
    if (v14)
    {
      v15 = v14;
      if ((static StoryGenerationUtilities.isPersonOrPetQueryToken(_:)() & 1) == 0)
      {

        return;
      }

      v16 = [v31 suggestion];
      v17 = static StoryGenerationUtilities.getEligibleCharacterUUIDs(quToken:suggestion:)(v15);
      if (v17)
      {
        v18 = v17;
        sub_1C6FB0D54();
        v19 = *(*a8 + 16);
        sub_1C6FB157C(v19, v20, v21, v22, v23, v24, v25);

        v26 = *a8;
        *(v26 + 16) = v19 + 1;
        v27 = (v26 + 24 * v19);
        v27[4] = v12;
        v27[5] = v13;
        v27[6] = v18;
        return;
      }

      v28 = sub_1C754FEEC();
      v29 = sub_1C755119C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1C6F5C000, v28, v29, "We should have character UUIDs for a who query term by now", v30, 2u);
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
      }
    }

    else
    {
    }
  }
}

void sub_1C7439D64(uint64_t a1, uint64_t a2, Swift::OpaquePointer a3, int a4, Swift::OpaquePointer characterSummaryByCharacterUUID)
{
  if (!AssetCurationPromptGenerator.isNonLocalizedMeOrIQueryTerm(for:characterUUIDs:characterSummaryByCharacterUUID:)(*&a1, a3, characterSummaryByCharacterUUID))
  {
    v39 = a1;
    v40 = a2;
    v9 = 0;
    v10 = *(a3._rawValue + 2);
    v11 = a3._rawValue + 40;
    v41 = MEMORY[0x1E69E7CC0];
    v38 = a3._rawValue + 40;
LABEL_3:
    v12 = &v11[16 * v9];
    while (v10 != v9)
    {
      if (v9 >= v10)
      {
        __break(1u);
LABEL_25:
        __break(1u);

        __break(1u);
        return;
      }

      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_25;
      }

      if (*(characterSummaryByCharacterUUID._rawValue + 2))
      {
        v14 = *(v12 - 1);
        v15 = *v12;
        sub_1C75504FC();
        v16 = sub_1C6F78124(v14, v15);
        if (v17)
        {
          sub_1C6FB5E28(*(characterSummaryByCharacterUUID._rawValue + 7) + 40 * v16, &v42);
          v18 = v44;
          v19 = v45;
          __swift_project_boxed_opaque_existential_1(&v42, v44);
          v20 = (*(v19 + 24))(v18, v19);
          v22 = v21;

          __swift_destroy_boxed_opaque_existential_1(&v42);
          if (v22)
          {
            v23 = v41;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1C6FB1814();
              v23 = v27;
            }

            v25 = *(v23 + 16);
            if (v25 >= *(v23 + 24) >> 1)
            {
              sub_1C6FB1814();
              v23 = v28;
            }

            *(v23 + 16) = v25 + 1;
            v41 = v23;
            v26 = v23 + 16 * v25;
            *(v26 + 32) = v20;
            *(v26 + 40) = v22;
            v9 = v13;
            v11 = v38;
            goto LABEL_3;
          }
        }

        else
        {
        }
      }

      ++v9;
      v12 += 2;
    }

    v42 = v41;
    sub_1C75504FC();
    sub_1C70401E8();

    v29 = v42;
    if (*(v42 + 16))
    {
      v42 = v39;
      v43 = v40;
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v31 = v42;
      v30 = v43;
      v42 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      sub_1C72AF5EC(&qword_1EDD0CF58, MEMORY[0x1E69E6310]);
      v32 = sub_1C75505FC();
      v34 = v33;

      v42 = v31;
      v43 = v30;
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v32, v34);
    }

    else
    {

      v35 = sub_1C754FEEC();
      v36 = sub_1C755119C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1C6F5C000, v35, v36, "No shadow names to go with query annotations - a query person should be in every asset by now, so there should be at least one shadow name", v37, 2u);
        MEMORY[0x1CCA5F8E0](v37, -1, -1);
      }
    }
  }
}

Swift::Bool __swiftcall AssetCurationPromptGenerator.isNonLocalizedMeOrIQueryTerm(for:characterUUIDs:characterSummaryByCharacterUUID:)(Swift::String a1, Swift::OpaquePointer characterUUIDs, Swift::OpaquePointer characterSummaryByCharacterUUID)
{
  if (*(characterUUIDs._rawValue + 2) == 1)
  {
    v4 = (characterUUIDs._rawValue + 40);
    for (i = 1; i; --i)
    {
      if (*(characterSummaryByCharacterUUID._rawValue + 2))
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        sub_1C75504FC();
        v8 = sub_1C6F78124(v7, v6);
        if (v9)
        {
          sub_1C6FB5E28(*(characterSummaryByCharacterUUID._rawValue + 7) + 40 * v8, v19);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219738, &unk_1C7579E20);
          if (swift_dynamicCast())
          {

            if (v18 == 1)
            {
              v12 = sub_1C75506FC();
              if (v12 == 25965 && v13 == 0xE200000000000000)
              {
                goto LABEL_22;
              }

              v15 = sub_1C7551DBC();

              if ((v15 & 1) == 0)
              {
                if (sub_1C75506FC() != 105 || v16 != 0xE100000000000000)
                {
                  v10 = sub_1C7551DBC();

                  return v10 & 1;
                }

LABEL_22:
              }

              v10 = 1;
              return v10 & 1;
            }
          }
        }

        else
        {
        }
      }

      v4 += 2;
    }
  }

  v10 = 0;
  return v10 & 1;
}

unint64_t sub_1C743A2A0()
{
  result = qword_1EC21BE78;
  if (!qword_1EC21BE78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AssetCurationPromptGenerator.Error, &type metadata for AssetCurationPromptGenerator.Error, v0, v1);
    atomic_store(result, &qword_1EC21BE78);
  }

  return result;
}

unint64_t sub_1C743A2F8()
{
  result = qword_1EC21BE80;
  if (!qword_1EC21BE80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AssetCurationPromptGenerator.Error, &type metadata for AssetCurationPromptGenerator.Error, v0, v1);
    atomic_store(result, &qword_1EC21BE80);
  }

  return result;
}

uint64_t type metadata accessor for AssetCurationPromptGenerator(uint64_t a1)
{
  result = qword_1EDD08BC0;
  if (!qword_1EDD08BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C743A3B0(uint64_t a1)
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

_BYTE *storeEnumTagSinglePayload for AssetCurationPromptGenerator.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CurationPromptAsset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C743A638()
{
  result = qword_1EC21BE88;
  if (!qword_1EC21BE88)
  {
    result = swift_getWitnessTable(aM_14, &type metadata for CurationPromptAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21BE88);
  }

  return result;
}

unint64_t sub_1C743A690()
{
  result = qword_1EDD0A640;
  if (!qword_1EDD0A640)
  {
    result = swift_getWitnessTable(byte_1C758B26C, &type metadata for CurationPromptAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0A640);
  }

  return result;
}

unint64_t sub_1C743A6E8()
{
  result = qword_1EDD0A648;
  if (!qword_1EDD0A648)
  {
    result = swift_getWitnessTable(byte_1C758B294, &type metadata for CurationPromptAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0A648);
  }

  return result;
}

char *sub_1C743A73C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_1C754DC8C();
  [v4 fileSystemRepresentation];
  v5 = v4;
  v6 = sub_1C754FF3C();
  if (v6 < 0)
  {
    v18 = sub_1C755119C();
    sub_1C7047818();
    v19 = sub_1C755145C();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = OUTLINED_FUNCTION_2_125();
      v21 = OUTLINED_FUNCTION_20_1();
      v26 = v21;
      *v20 = 67109378;
      *(v20 + 4) = MEMORY[0x1CCA5C460]();
      *(v20 + 8) = 2080;
      v22 = MEMORY[0x1CCA5C460]();
      result = strerror(v22);
      if (!result)
      {
        goto LABEL_18;
      }

      v23 = sub_1C755087C();
      v25 = sub_1C6F765A4(v23, v24, &v26);

      *(v20 + 10) = v25;
      _os_log_impl(&dword_1C6F5C000, v19, v18, "failed opening lock file: %d - %s", v20, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    goto LABEL_14;
  }

  v7 = v6;
  if (v3)
  {
    v8 = 2;
  }

  else
  {
    v8 = 6;
  }

  if (!flock(v6, v8))
  {

    *(v1 + OBJC_IVAR____TtC18PhotosIntelligence8FileLock__fd) = v7;
    return (*(v2 + OBJC_IVAR____TtC18PhotosIntelligence8FileLock__fd) >= 0);
  }

  v9 = sub_1C755119C();
  sub_1C7047818();
  v10 = sub_1C755145C();
  if (!os_log_type_enabled(v10, v9))
  {
    goto LABEL_9;
  }

  v11 = OUTLINED_FUNCTION_2_125();
  v12 = OUTLINED_FUNCTION_20_1();
  v26 = v12;
  *v11 = 67109378;
  *(v11 + 4) = MEMORY[0x1CCA5C460]();
  *(v11 + 8) = 2080;
  v13 = MEMORY[0x1CCA5C460]();
  result = strerror(v13);
  if (result)
  {
    v15 = sub_1C755087C();
    v17 = sub_1C6F765A4(v15, v16, &v26);

    *(v11 + 10) = v17;
    _os_log_impl(&dword_1C6F5C000, v10, v9, "flock failed: %d - %s", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
LABEL_9:

    close(v7);
LABEL_14:

    return (*(v2 + OBJC_IVAR____TtC18PhotosIntelligence8FileLock__fd) >= 0);
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C743A9AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1C754DD2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754DCAC();
  (*(v6 + 8))(a1, v5);
  (*(v6 + 32))(v3 + OBJC_IVAR____TtC18PhotosIntelligence8FileLock__fileURL, v8, v5);
  *(v3 + OBJC_IVAR____TtC18PhotosIntelligence8FileLock__fd) = -1;
  return v3;
}

void sub_1C743AAC4()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence8FileLock__fd;
  v2 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence8FileLock__fd);
  if (v2 < 0)
  {
    v3 = sub_1C755119C();
    sub_1C7047818();
    log = sub_1C755145C();
    if (os_log_type_enabled(log, v3))
    {
      v4 = OUTLINED_FUNCTION_2_125();
      v5 = OUTLINED_FUNCTION_20_1();
      v16 = v5;
      *v4 = 67109378;
      *(v4 + 4) = MEMORY[0x1CCA5C460]();
      *(v4 + 8) = 2080;
      v11 = MEMORY[0x1CCA5C460]();
      if (strerror(v11))
      {
        v12 = sub_1C755087C();
        v14 = sub_1C6F765A4(v12, v13, &v16);

        *(v4 + 10) = v14;
        v10 = "file was not locked:%d - %s";
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else
  {
    if (!flock(v2, 8))
    {
      close(*(v0 + v1));
      *(v0 + v1) = -1;
      return;
    }

    v3 = sub_1C755119C();
    sub_1C7047818();
    log = sub_1C755145C();
    if (os_log_type_enabled(log, v3))
    {
      v4 = OUTLINED_FUNCTION_2_125();
      v5 = OUTLINED_FUNCTION_20_1();
      v16 = v5;
      *v4 = 67109378;
      *(v4 + 4) = MEMORY[0x1CCA5C460]();
      *(v4 + 8) = 2080;
      v6 = MEMORY[0x1CCA5C460]();
      if (strerror(v6))
      {
        v7 = sub_1C755087C();
        v9 = sub_1C6F765A4(v7, v8, &v16);

        *(v4 + 10) = v9;
        v10 = "failed unflocking:%d - %s";
LABEL_9:
        _os_log_impl(&dword_1C6F5C000, log, v3, v10, v4, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v5);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();

        return;
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }
  }
}

uint64_t sub_1C743ACBC(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC18PhotosIntelligence8FileLock__fileURL;
  v4 = sub_1C754DD2C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FileLock(uint64_t a1)
{
  result = qword_1EDD0FB08;
  if (!qword_1EDD0FB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C743ADAC(uint64_t a1, uint64_t a2)
{
  result = sub_1C754DD2C();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Cropping(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C743AEF4()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC25B948);
  __swift_project_value_buffer(v0, qword_1EC25B948);
  return sub_1C754FEFC();
}

uint64_t TriggeredCollection.localIdentifier.getter()
{
  v1 = *(v0 + 8);
  sub_1C75504FC();
  return v1;
}

uint64_t TriggeredCollection.electedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TriggeredCollection(0) + 28);

  return sub_1C7033844(v3, a1);
}

uint64_t type metadata accessor for TriggeredCollection(uint64_t a1)
{
  result = qword_1EDD0A3E0;
  if (!qword_1EDD0A3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TriggeredCollection.init(type:collectionObject:)@<X0>(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  *(a3 + 24) = a2;
  v4 = a2;
  v5 = [v4 localIdentifier];
  v6 = sub_1C755068C();
  v8 = v7;

  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  v9 = *(type metadata accessor for TriggeredCollection(0) + 28);
  v10 = sub_1C754DF6C();

  return __swift_storeEnumTagSinglePayload(a3 + v9, 1, 1, v10);
}

void TriggeredCollection.init(with:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  *&v5 = MEMORY[0x1EEE9AC00](v4 - 8).n128_u64[0];
  v7 = &v26 - v6;
  v8 = [a1 subtype];
  if ((v8 - 910) >= 8u)
  {
    sub_1C743B354();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  else
  {
    *a2 = v8 + 114;
    v9 = [a1 creationDate];
    if (v9)
    {
      v10 = v9;
      sub_1C754DF2C();

      v11 = sub_1C754DF6C();
      v12 = 0;
    }

    else
    {
      v11 = sub_1C754DF6C();
      v12 = 1;
    }

    __swift_storeEnumTagSinglePayload(v7, v12, 1, v11);
    v14 = *(type metadata accessor for TriggeredCollection(0) + 28);
    sub_1C6FF51C8(v7, a2 + v14);
    v15 = [a1 photoLibrary];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 librarySpecificFetchOptions];

      sub_1C6F65BE8(0, &qword_1EDD0CEB0, 0x1E6978AE8);
      v18 = static PHSuggestion.fetchRelatedCollection(with:options:)(a1, v17);
      if (v18 && (v19 = v18, v20 = [v18 firstObject], v19, v20))
      {
        *(a2 + 24) = v20;
        v21 = [v20 localIdentifier];
        v22 = sub_1C755068C();
        v24 = v23;

        *(a2 + 8) = v22;
        *(a2 + 16) = v24;
      }

      else
      {
        sub_1C743B354();
        swift_allocError();
        *v25 = 1;
        swift_willThrow();

        sub_1C70D7CB8(a2 + v14);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_1C743B354()
{
  result = qword_1EC21BE90;
  if (!qword_1EC21BE90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TriggeredCollection.Error, &type metadata for TriggeredCollection.Error, v0, v1);
    atomic_store(result, &qword_1EC21BE90);
  }

  return result;
}

uint64_t static TriggeredCollection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1C6FA1B48() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  return sub_1C7551DBC();
}

uint64_t TriggeredCollection.hash(into:)(uint64_t a1)
{
  sub_1C6FF8994(a1, *v1);

  return sub_1C75505AC();
}

uint64_t TriggeredCollection.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t TriggeredCollection.hashValue.getter()
{
  sub_1C7551F3C();
  sub_1C6FF8994(v2, *v0);
  sub_1C75505AC();
  return sub_1C7551FAC();
}

uint64_t sub_1C743B54C(uint64_t a1)
{
  sub_1C7551F3C();
  sub_1C6FF8994(v3, *v1);
  sub_1C75505AC();
  return sub_1C7551FAC();
}

unint64_t sub_1C743B59C()
{
  result = qword_1EC21BE98;
  if (!qword_1EC21BE98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TriggeredCollection.Error, &type metadata for TriggeredCollection.Error, v0, v1);
    atomic_store(result, &qword_1EC21BE98);
  }

  return result;
}

unint64_t sub_1C743B5F4()
{
  result = qword_1EDD0A3F0;
  if (!qword_1EDD0A3F0)
  {
    v3 = type metadata accessor for TriggeredCollection(255);
    result = swift_getWitnessTable(protocol conformance descriptor for TriggeredCollection, v3, v0, v1);
    atomic_store(result, &qword_1EDD0A3F0);
  }

  return result;
}

void sub_1C743B678(uint64_t a1)
{
  sub_1C6F65BE8(319, &qword_1EDD06880, 0x1E6978958);
  if (v1 <= 0x3F)
  {
    sub_1C6F5FB48(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for TriggeredCollection.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

void static TextSanitizer.removeCategories(in:categories:)(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E6978F98];
  v5 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v6 = v4;
  v7 = [a1 length];
  OUTLINED_FUNCTION_30();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = &v20;
  OUTLINED_FUNCTION_30();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1C743D31C;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1C743D324;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_41_18();
  aBlock[2] = v10;
  aBlock[3] = &block_descriptor_42;
  v11 = _Block_copy(aBlock);
  sub_1C75504FC();

  [a1 enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{0, v11}];

  _Block_release(v11);
  OUTLINED_FUNCTION_5_97();
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v12 = v20;

    if (*(v12 + 16))
    {
      aBlock[0] = v5;
      sub_1C716D7A4();
      v13 = aBlock[0];
      v14 = *(aBlock[0] + 16);
      do
      {
        v15 = *(v12 + 40);
        aBlock[0] = v13;
        v16 = v13[3];
        if (v14 >= v16 >> 1)
        {
          OUTLINED_FUNCTION_15(v16);
          OUTLINED_FUNCTION_12_76();
          sub_1C716D7A4();
          v15 = v18;
          v13 = aBlock[0];
        }

        OUTLINED_FUNCTION_8_87(v15);
      }

      while (!v17);
    }

    else
    {

      v13 = MEMORY[0x1E69E7CC0];
    }

    sub_1C743CF88(a1, v13);
  }
}

uint64_t static TextSanitizer.removeCategories(in:queryTokens:categories:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
  sub_1C75504FC();
  v6 = sub_1C7073450();
  v7 = static TextSanitizer.categoriesRanges(queryTokens:categories:)(a3, a4);
  if (*(v7 + 16))
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1C716D7A4();
    v8 = v17;
    v9 = v17[2];
    do
    {
      v10 = *(v7 + 40);
      v11 = v17[3];
      if (v9 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_15(v11);
        OUTLINED_FUNCTION_12_76();
        sub_1C716D7A4();
        v10 = v16;
      }

      OUTLINED_FUNCTION_8_87(v10);
    }

    while (!v12);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  sub_1C743CF88(v6, v8);
  v14 = v13;

  return v14;
}

uint64_t sub_1C743BBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1C6F9ED18(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1C6FD7FC8(v13, &qword_1EC219770, &unk_1C755C740);
}

void static TextSanitizer.extractCategories(in:categories:)(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E6978F98];
  v5 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  v6 = v4;
  [a1 length];
  OUTLINED_FUNCTION_30();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = &v19;
  OUTLINED_FUNCTION_30();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1C743DAA0;
  *(v8 + 24) = v7;
  aBlock[4] = sub_1C743DAA4;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_41_18();
  aBlock[2] = v9;
  aBlock[3] = &block_descriptor_14_1;
  v10 = _Block_copy(aBlock);
  sub_1C75504FC();

  OUTLINED_FUNCTION_13_85(a1, sel_enumerateAttribute_inRange_options_usingBlock_, v6);

  _Block_release(v10);
  OUTLINED_FUNCTION_5_97();
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v11 = v19;

    if (*(v11 + 16))
    {
      aBlock[0] = v5;
      OUTLINED_FUNCTION_14_67();
      v12 = aBlock[0];
      do
      {
        v14 = OUTLINED_FUNCTION_10_78();
        if (v15)
        {
          OUTLINED_FUNCTION_15(v13);
          OUTLINED_FUNCTION_12_76();
          sub_1C716D7A4();
          v14 = v17;
          v12 = aBlock[0];
        }

        OUTLINED_FUNCTION_7_96(v14);
      }

      while (!v16);
    }

    else
    {

      v12 = MEMORY[0x1E69E7CC0];
    }

    sub_1C743D0A8(a1, v12);
  }
}

unint64_t static TextSanitizer.extractCategories(in:queryTokens:categories:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
  sub_1C75504FC();
  v6 = sub_1C7073450();
  if (*(static TextSanitizer.categoriesRanges(queryTokens:categories:)(a3, a4) + 16))
  {
    v15 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_14_67();
    v7 = v15;
    do
    {
      v9 = OUTLINED_FUNCTION_10_78();
      if (v10)
      {
        OUTLINED_FUNCTION_15(v8);
        OUTLINED_FUNCTION_12_76();
        sub_1C716D7A4();
        v9 = v14;
        v7 = v15;
      }

      OUTLINED_FUNCTION_7_96(v9);
    }

    while (!v11);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v12 = sub_1C743D0A8(v6, v7);

  return v12;
}

uint64_t sub_1C743BFDC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422A5C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C743D34C(v6);
  *a1 = v2;
  return result;
}

uint64_t static TextSanitizer.tokenize(_:supportedLanguage:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = *a3;
  v10 = MEMORY[0x1E69E7CC0];
  v6 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  if (v5 != 17)
  {
    v7 = TextSanitizer.SupportedLanguage.nlLanguage.getter();
    [v6 setLanguage_];
  }

  sub_1C7374F18(a1, a2, v6);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C755111C();

  return v10;
}

uint64_t static TextSanitizer.categoriesRanges(queryTokens:categories:)(uint64_t a1, uint64_t a2)
{
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v45 = *(TokenSuggestion - 8);
  MEMORY[0x1EEE9AC00](TokenSuggestion - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = 0;
  v16 = a1 + 32;
  v17 = MEMORY[0x1E69E7CC0];
  v48 = TokenCategoryType;
  v49 = a2;
  v43 = v16;
  v44 = v14;
  do
  {
    v18 = v16 + 120 * v15;
    if ((*(v18 + 56) & 1) == 0)
    {
      v19 = *(v18 + 80);
      v20 = *(v19 + 16);
      if (v20)
      {
        v46 = *(v18 + 80);
        v47 = v15;
        v50 = *(v18 + 40);
        v21 = v45;
        v22 = v19 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
        sub_1C75504FC();
        v23 = *(v21 + 72);
        do
        {
          sub_1C71AC0CC(v22, v13, type metadata accessor for QueryTokenSuggestion);
          sub_1C71AC0CC(v13, v10, type metadata accessor for QueryTokenCategoryType);
          sub_1C743D9F8(v13, type metadata accessor for QueryTokenSuggestion);
          sub_1C743D994(v10, v7);
          v24 = 9;
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              OUTLINED_FUNCTION_0_183();
              v24 = 2;
              break;
            case 2u:
              v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90);
              sub_1C6FD7FC8(&v7[*(v25 + 48)], &qword_1EC218C50, &qword_1C75606A0);
              sub_1C6FD7FC8(v7, &qword_1EC218C50, &qword_1C75606A0);
              v24 = 3;
              break;
            case 3u:
              OUTLINED_FUNCTION_0_183();
              v24 = 4;
              break;
            case 4u:
              sub_1C754F09C();
              OUTLINED_FUNCTION_12();
              (*(v26 + 8))(v7);
              v24 = 5;
              break;
            case 5u:
              sub_1C754F5FC();
              OUTLINED_FUNCTION_12();
              (*(v27 + 8))(v7);
              v24 = 6;
              break;
            case 6u:
              OUTLINED_FUNCTION_0_183();
              v24 = 7;
              break;
            case 7u:
              sub_1C743D9F8(v7, type metadata accessor for GroundedGenericLocation);
              v24 = 8;
              break;
            case 8u:
              sub_1C6FD7FC8(v7, &qword_1EC216328, &qword_1C7575BE0);
              v24 = 10;
              break;
            case 9u:
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730);
              sub_1C743D9F8(&v7[*(v28 + 48)], type metadata accessor for PersonalEventBackingItem);
              sub_1C6FD7FC8(v7, &qword_1EC216320, &unk_1C7563B80);
              v24 = 11;
              break;
            case 0xAu:
              OUTLINED_FUNCTION_0_183();
              v24 = 15;
              break;
            case 0xBu:
              v24 = 16;
              break;
            case 0xCu:
              OUTLINED_FUNCTION_0_183();
              v24 = 17;
              break;
            case 0xDu:
              v24 = 19;
              break;
            case 0xEu:
              break;
            case 0xFu:
              v24 = 12;
              break;
            case 0x10u:
              v24 = 13;
              break;
            case 0x11u:
              v24 = 14;
              break;
            case 0x12u:
              v24 = 18;
              break;
            default:
              OUTLINED_FUNCTION_0_183();
              v24 = 1;
              break;
          }

          sub_1C7009CE0();
          if (v29)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = OUTLINED_FUNCTION_24_0();
              sub_1C6FB1CF8(v33, v34, v35, v17);
              v17 = v36;
            }

            v31 = *(v17 + 16);
            v30 = *(v17 + 24);
            if (v31 >= v30 >> 1)
            {
              v37 = OUTLINED_FUNCTION_57(v30);
              sub_1C6FB1CF8(v37, v38, v39, v17);
              v17 = v40;
            }

            *(v17 + 16) = v31 + 1;
            v32 = v17 + 24 * v31;
            *(v32 + 32) = v24;
            *(v32 + 40) = v50;
          }

          v22 += v23;
          --v20;
        }

        while (v20);

        v16 = v43;
        v14 = v44;
        v15 = v47;
      }
    }

    ++v15;
  }

  while (v15 != v14);
  return v17;
}

void static TextSanitizer.categoriesRanges(in:categories:)(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E6978F98];
  v11 = MEMORY[0x1E69E7CC0];
  v5 = v4;
  [a1 length];
  OUTLINED_FUNCTION_30();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = &v11;
  OUTLINED_FUNCTION_30();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C743DAA0;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1C743DAA4;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_41_18();
  aBlock[2] = v8;
  aBlock[3] = &block_descriptor_25;
  v9 = _Block_copy(aBlock);
  sub_1C75504FC();

  OUTLINED_FUNCTION_13_85(a1, sel_enumerateAttribute_inRange_options_usingBlock_, v5);

  _Block_release(v9);
  OUTLINED_FUNCTION_5_97();
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1C743C7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = sub_1C755098C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1C6FB097C();
  v14 = *(*a6 + 16);
  sub_1C6FB11EC();
  v15 = *a6;
  *(v15 + 16) = v14 + 1;
  v16 = (v15 + 32 * v14);
  v16[4] = v7;
  v16[5] = v9;
  v16[6] = v11;
  v16[7] = v13;
  return 1;
}

void static TextSanitizer.reduceAndOrderRangesToRemove(_:)(void *a1)
{
  if (a1[2] < 2uLL)
  {
    sub_1C75504FC();
    return;
  }

  v36 = a1;
  sub_1C75504FC();
  sub_1C743BFDC(&v36);
  if (v1)
  {
    goto LABEL_32;
  }

  if (!v36[2])
  {

    sub_1C72FB180();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    return;
  }

  v3 = v36[4];
  v2 = v36[5];
  sub_1C70CE540(1, v36);
  v7 = (v6 >> 1) - v5;
  if (v6 >> 1 == v5)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_6:
    swift_unknownObjectRelease();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

  if ((v6 >> 1) <= v5)
  {
    __break(1u);
LABEL_32:

    __break(1u);
    return;
  }

  v13 = (v4 + 16 * v5 + 8);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v14 = v3 + v2;
    if (__OFADD__(v3, v2))
    {
      break;
    }

    v16 = *(v13 - 1);
    v15 = *v13;
    if (v14 >= v16)
    {
      if (__OFADD__(v16, v15))
      {
        goto LABEL_28;
      }

      if (v16 + v15 > v14)
      {
        v14 = v16 + v15;
      }

      v2 = v14 - v3;
      if (__OFSUB__(v14, v3))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB1CD0(v20, v21, v22, v8);
        v8 = v23;
      }

      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        v24 = OUTLINED_FUNCTION_57(v17);
        sub_1C6FB1CD0(v24, v25, v26, v8);
        v8 = v27;
      }

      *(v8 + 16) = v18 + 1;
      v19 = v8 + 16 * v18;
      *(v19 + 32) = v3;
      *(v19 + 40) = v2;
      v3 = v16;
      v2 = v15;
    }

    v13 += 2;
    if (!--v7)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  v28 = OUTLINED_FUNCTION_24_0();
  sub_1C6FB1CD0(v28, v29, v30, v8);
  v8 = v31;
LABEL_7:
  v10 = *(v8 + 16);
  v9 = *(v8 + 24);
  if (v10 >= v9 >> 1)
  {
    v32 = OUTLINED_FUNCTION_57(v9);
    sub_1C6FB1CD0(v32, v33, v34, v8);
    v8 = v35;
  }

  *(v8 + 16) = v10 + 1;
  v11 = v8 + 16 * v10;
  *(v11 + 32) = v3;
  *(v11 + 40) = v2;
}

void sub_1C743CA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v62 = a6;
  v63 = sub_1C754E25C();
  v10 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C754E2FC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A540, &qword_1C7580D20);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  sub_1C7329154(a1, v65);
  if (v66)
  {
    sub_1C6F65BE8(0, &qword_1EDD0CDB0, 0x1E6978A50);
    if (swift_dynamicCast())
    {
      v61 = a3;
      v19 = v67;
      v20 = [v67 suggestion];
      if (v20)
      {
        v21 = v20;
        v22 = static StoryGenerationUtilities.searchEntityCategoryTypes(for:)([v20 categoriesType]);
        if ((v23 & 1) != 0 || (v24 = v22, (sub_1C700AAB0(v22, a5) & 1) == 0))
        {
        }

        else
        {
          v25 = v62;
          sub_1C6FB0EA8();
          v26 = *(*v25 + 16);
          sub_1C6FB16F4(v26, v27, v28, v29, v30, v31);

          v32 = *v25;
          *(v32 + 16) = v26 + 1;
          v33 = (v32 + 24 * v26);
          v33[4] = v24;
          v33[5] = a2;
          v33[6] = v61;
        }
      }

      else
      {
        v34 = [v19 QUToken];
        if (v34)
        {
          v59 = v19;
          v60 = a2;
          v58 = v34;
          v35 = [v34 entityCategoryTypes];
          sub_1C754E29C();

          sub_1C754E27C();
          (*(v13 + 8))(v15, v12);
          sub_1C743DA50(&qword_1EDD0CB70, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
          v36 = (v10 + 8);
          v37 = v63;
          while (1)
          {
LABEL_11:
            v38 = v64;
            sub_1C755107C();
            sub_1C743DA50(&qword_1EDD0CB80, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
            v39 = sub_1C755063C();
            (*v36)(v38, v37);
            if (v39)
            {
              sub_1C6FD7FC8(v18, &qword_1EC21A540, &qword_1C7580D20);

              return;
            }

            v40 = sub_1C75510CC();
            v42 = *v41;
            v40(v65, 0);
            sub_1C755108C();
            if (v42 < 0)
            {
              break;
            }

            if (*(a5 + 16))
            {
              sub_1C7551F3C();
              MEMORY[0x1CCA5E460](v42);
              v43 = sub_1C7551FAC();
              v44 = ~(-1 << *(a5 + 32));
              while (1)
              {
                v45 = v43 & v44;
                if (((*(a5 + 56 + (((v43 & v44) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v43 & v44)) & 1) == 0)
                {
                  break;
                }

                v43 = v45 + 1;
                if (*(*(a5 + 48) + 8 * v45) == v42)
                {
                  v46 = v62;
                  sub_1C6FB0EA8();
                  v47 = *(*v46 + 16);
                  sub_1C6FB16F4(v47, v48, v49, v50, v51, v52);
                  v53 = *v46;
                  *(v53 + 16) = v47 + 1;
                  v54 = (v53 + 24 * v47);
                  v37 = v63;
                  v56 = v60;
                  v55 = v61;
                  v54[4] = v42;
                  v54[5] = v56;
                  v54[6] = v55;
                  goto LABEL_11;
                }
              }
            }
          }

          __break(1u);
        }

        else
        {
        }
      }
    }
  }

  else
  {
    sub_1C6FD7FC8(v65, &qword_1EC219770, &unk_1C755C740);
  }
}

void sub_1C743CF88(uint64_t a1, void *a2)
{
  static TextSanitizer.reduceAndOrderRangesToRemove(_:)(a2);
  if (!v2)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = v7 - 1;
      v9 = (v5 + 16 * v7 + 24);
      while (v8 < *(v5 + 16))
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        v12 = sub_1C755065C();
        [v6 replaceCharactersInRange:v10 withString:{v11, v12}];

        --v8;
        v9 -= 2;
        if (v8 == -1)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:

      v13 = [v6 string];
      sub_1C755068C();
    }
  }
}

unint64_t sub_1C743D0A8(id a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C703328C();
    v23 = sub_1C75505FC();

    return v23;
  }

  v4 = (a2 + 40);
  v24 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v6 = *(v4 - 1);
    v5 = *v4;
    v7 = [a1 string];
    sub_1C755068C();

    result = sub_1C755090C();
    if (v9)
    {
LABEL_8:

      goto LABEL_9;
    }

    if (__OFADD__(v6, v5))
    {
      break;
    }

    sub_1C755090C();
    if (v10)
    {
      goto LABEL_8;
    }

    sub_1C75504FC();
    v11 = sub_1C75507EC();
    if (v12)
    {
      goto LABEL_8;
    }

    v13 = v11;
    sub_1C75504FC();
    result = sub_1C75507EC();
    if (v14)
    {
      goto LABEL_8;
    }

    if (result >> 14 < v13 >> 14)
    {
      goto LABEL_19;
    }

    v15 = sub_1C755098C();
    v16 = MEMORY[0x1CCA5CC40](v15);
    v18 = v17;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB1814();
      v24 = v21;
    }

    v19 = *(v24 + 16);
    if (v19 >= *(v24 + 24) >> 1)
    {
      sub_1C6FB1814();
      v24 = v22;
    }

    *(v24 + 16) = v19 + 1;
    v20 = v24 + 16 * v19;
    *(v20 + 32) = v16;
    *(v20 + 40) = v18;
LABEL_9:
    v4 += 2;
    if (!--v2)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1C743D34C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C7551D7C();
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
        type metadata accessor for _NSRange(0);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C743D4B4(v7, v8, a1, v4);
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
    return sub_1C743D444(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C743D444(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}