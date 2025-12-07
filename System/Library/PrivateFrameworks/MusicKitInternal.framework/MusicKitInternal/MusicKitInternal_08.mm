uint64_t sub_1D4F1C2E4(uint64_t a1)
{
  sub_1D4F1C568(&qword_1EC7EB618, type metadata accessor for CreditArtist, &protocol conformance descriptor for CreditArtist);

  return sub_1D5612668();
}

uint64_t sub_1D4F1C350(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_1D4F1C3A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CreditArtistPropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F1C404(uint64_t a1)
{
  v2 = type metadata accessor for CreditArtistPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4F1C460(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1D4F1C4B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A0, &qword_1D5631010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F1C568(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for UserProfilePropertyProvider(uint64_t a1)
{
  result = qword_1EDD54EE0;
  if (!qword_1EDD54EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4F1C624(uint64_t a1)
{
  sub_1D4E6D600(319, &qword_1EC7EB628, &qword_1EC7EB630, &unk_1D561E5E0);
  v2 = v1;
  if (v3 > 0x3F)
  {
    return v2;
  }

  sub_1D4F1C90C(319, &qword_1EDD5F190, MEMORY[0x1E6976F68], MEMORY[0x1E69E6720]);
  v2 = v4;
  if (v5 > 0x3F)
  {
    return v2;
  }

  sub_1D4E518A0(319, &qword_1EDD5F550, MEMORY[0x1E69E6370]);
  v2 = v6;
  if (v7 > 0x3F)
  {
    return v2;
  }

  sub_1D4E518A0(319, &qword_1EDD52708, MEMORY[0x1E69E6530]);
  if (v9 > 0x3F)
  {
    return v8;
  }

  sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
  if (v11 > 0x3F)
  {
    return v10;
  }

  sub_1D4E6D600(319, &qword_1EDD5D788, &qword_1EC7EA5B8, &qword_1D561C4E0);
  v2 = v12;
  if (v13 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD53B60, &qword_1EC7EA538, &qword_1D561C490);
    if (v14 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD5D780, &qword_1EC7EA378, &qword_1D561D140);
      v2 = v15;
      if (v16 <= 0x3F)
      {
        sub_1D4F1C90C(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
        v2 = v17;
        if (v18 <= 0x3F)
        {
          v2 = sub_1D560D838();
          if (v19 <= 0x3F)
          {
            v2 = sub_1D5610088();
            if (v20 <= 0x3F)
            {
              sub_1D4E5CF94(319);
              v2 = v21;
              if (v22 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }

      return v2;
    }

    return v8;
  }

  return v2;
}

void sub_1D4F1C90C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D4F1C9B8()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v134 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v135 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_2();
  v136 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v133 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_135();
  v137 = v17;
  OUTLINED_FUNCTION_23();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v132 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v132 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v25 = OUTLINED_FUNCTION_22(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_59_0();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v132 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    *&v140 = 0;
    *(&v140 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002BLL, 0x80000001D567EC90);
    v142 = v2;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    v131 = *(&v140 + 1);
    v130 = v140;
    goto LABEL_129;
  }

  v33 = v32;
  v138 = v0;
  v139 = v4;
  v34 = qword_1EDD54140;

  if (v34 != -1)
  {
    OUTLINED_FUNCTION_47_8(&qword_1EDD54140);
  }

  *&v140 = qword_1EDD76948;
  v142 = v33;
  sub_1D4EC5794(&qword_1EDD53DF0, &qword_1EC7EB660, &qword_1D561E740);
  OUTLINED_FUNCTION_27_6();
  if (sub_1D5614D18())
  {
    v35 = v139;
    v36 = *v138;
    if (*v138)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB630, &unk_1D561E5E0);
      OUTLINED_FUNCTION_82();
    }

    else
    {
      v0 = 0;
    }

    *v35 = v36;
    v35[1] = 0;
    v35[2] = 0;
    v35[3] = v0;
    goto LABEL_32;
  }

  v37 = qword_1EDD54088;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_46_8(&qword_1EDD54088);
  }

  v38 = OUTLINED_FUNCTION_0_19(qword_1EDD768F8);

  if (v38)
  {
    v39 = type metadata accessor for UserProfilePropertyProvider(0);
    v40 = OUTLINED_FUNCTION_61_4(*(v39 + 20));
    sub_1D4F1C460(v40, v31, v41, v42);
    sub_1D56140F8();
    v43 = OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_10(v43);
    if (!v44)
    {
      *(&v141 + 1) = v0;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v140);
      (*(*(v0 - 1) + 32))(boxed_opaque_existential_0, v31, v0);
LABEL_29:

      goto LABEL_30;
    }

    v45 = v31;
    goto LABEL_19;
  }

  v46 = qword_1EDD54110;

  if (v46 != -1)
  {
    OUTLINED_FUNCTION_45_9(&qword_1EDD54110);
  }

  OUTLINED_FUNCTION_0_19(qword_1EDD76940);
  OUTLINED_FUNCTION_63();
  if (v46)
  {
    v47 = type metadata accessor for UserProfilePropertyProvider(0);
    v48 = OUTLINED_FUNCTION_61_4(*(v47 + 24));
    sub_1D4F1C460(v48, v28, v49, v50);
    v51 = sub_1D56140F8();
    OUTLINED_FUNCTION_1(v28);
    if (!v44)
    {
      OUTLINED_FUNCTION_72_3();
      OUTLINED_FUNCTION_15_1();
      (*(v58 + 32))(v59, v28, v51);
      goto LABEL_29;
    }

    v45 = v28;
LABEL_19:
    sub_1D4E50004(v45, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v140 = 0u;
    v141 = 0u;
LABEL_30:
    v60 = v139;
    v61 = v140;
    v62 = v141;
LABEL_31:
    *v60 = v61;
    v60[1] = v62;
    goto LABEL_32;
  }

  v53 = qword_1EDD540D8;

  if (v53 != -1)
  {
    OUTLINED_FUNCTION_44_6(&qword_1EDD540D8);
  }

  OUTLINED_FUNCTION_0_19(qword_1EDD76928);
  OUTLINED_FUNCTION_63();
  if (v53)
  {
    v54 = *(type metadata accessor for UserProfilePropertyProvider(0) + 28);
LABEL_26:
    v55 = *(v138 + v54);

    v56 = MEMORY[0x1E69E6370];
    if (v55 == 2)
    {
      v56 = 0;
    }

    v57 = v139;
    *v139 = v55 & 1;
    v57[1] = 0;
    v57[2] = 0;
    v57[3] = v56;
    goto LABEL_32;
  }

  v63 = qword_1EDD540B0;

  if (v63 != -1)
  {
    OUTLINED_FUNCTION_42_9(&qword_1EDD540B0);
  }

  OUTLINED_FUNCTION_0_19(qword_1EDD76910);
  OUTLINED_FUNCTION_63();
  if ((v63 & 1) == 0)
  {
    v68 = qword_1EDD54098;

    if (v68 != -1)
    {
      OUTLINED_FUNCTION_41(&qword_1EDD54098);
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD76900);
    OUTLINED_FUNCTION_63();
    if (v68)
    {
      v69 = (v138 + *(type metadata accessor for UserProfilePropertyProvider(0) + 36));
      v70 = v69[1];
      if (v70)
      {
        v71 = *v69;

        v72 = MEMORY[0x1E69E6158];
      }

      else
      {
        v72 = 0;
        v71 = 0;
      }

      v75 = v139;

      *v75 = v71;
      v75[1] = v70;
      v75[2] = 0;
      v75[3] = v72;
      goto LABEL_32;
    }

    v73 = qword_1EDD540F0;

    if (v73 != -1)
    {
      OUTLINED_FUNCTION_40_11(&qword_1EDD540F0);
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD76938);
    OUTLINED_FUNCTION_63();
    if (v73)
    {
      v54 = *(type metadata accessor for UserProfilePropertyProvider(0) + 40);
      goto LABEL_26;
    }

    v74 = qword_1EDD540C8;

    if (v74 != -1)
    {
      OUTLINED_FUNCTION_60_4(&qword_1EDD540C8);
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD76920);
    OUTLINED_FUNCTION_63();
    if (v74)
    {
      v54 = *(type metadata accessor for UserProfilePropertyProvider(0) + 44);
      goto LABEL_26;
    }

    v76 = qword_1EDD540C0;

    if (v76 != -1)
    {
      OUTLINED_FUNCTION_59_5(&qword_1EDD540C0);
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD76918);
    OUTLINED_FUNCTION_63();
    if (v76)
    {
      v54 = *(type metadata accessor for UserProfilePropertyProvider(0) + 48);
      goto LABEL_26;
    }

    v77 = qword_1EDD54148;

    if (v77 != -1)
    {
      OUTLINED_FUNCTION_58_4(&qword_1EDD54148);
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD76950);
    OUTLINED_FUNCTION_63();
    if (v77)
    {
      v54 = *(type metadata accessor for UserProfilePropertyProvider(0) + 52);
      goto LABEL_26;
    }

    v78 = qword_1EDD54150;

    if (v78 != -1)
    {
      OUTLINED_FUNCTION_56_6(&qword_1EDD54150);
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD76958);
    OUTLINED_FUNCTION_63();
    if (v78)
    {
      v54 = *(type metadata accessor for UserProfilePropertyProvider(0) + 56);
      goto LABEL_26;
    }

    v79 = qword_1EDD540E8;

    if (v79 != -1)
    {
      OUTLINED_FUNCTION_55_5(&qword_1EDD540E8);
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD76930);
    OUTLINED_FUNCTION_63();
    if (v79)
    {
      v54 = *(type metadata accessor for UserProfilePropertyProvider(0) + 60);
      goto LABEL_26;
    }

    v80 = qword_1EDD54050;

    if (v80 != -1)
    {
      OUTLINED_FUNCTION_54_1(&qword_1EDD54050);
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD768F0);
    OUTLINED_FUNCTION_63();
    if (v80)
    {
      v54 = *(type metadata accessor for UserProfilePropertyProvider(0) + 64);
      goto LABEL_26;
    }

    v81 = qword_1EDD54158;

    if (v81 != -1)
    {
      OUTLINED_FUNCTION_53_4(&qword_1EDD54158);
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD76960);
    OUTLINED_FUNCTION_63();
    if (v81)
    {
      v54 = *(type metadata accessor for UserProfilePropertyProvider(0) + 68);
      goto LABEL_26;
    }

    v82 = qword_1EDD540A0;

    if (v82 != -1)
    {
      OUTLINED_FUNCTION_52_6(&qword_1EDD540A0);
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD76908);
    OUTLINED_FUNCTION_63();
    if (v82)
    {
      v83 = (v138 + *(type metadata accessor for UserProfilePropertyProvider(0) + 72));
      v84 = v83[1];
      if (v84)
      {
        v85 = *v83;

        v86 = MEMORY[0x1E69E6158];
      }

      else
      {
        v85 = 0;
        v86 = 0;
      }

      v100 = v139;
      *v139 = v85;
      v100[1] = v84;
      v100[2] = 0;
      v100[3] = v86;
      goto LABEL_32;
    }

    v87 = qword_1EDD54070;

    if (v87 != -1)
    {
      OUTLINED_FUNCTION_13_15(&qword_1EDD54070);
    }

    OUTLINED_FUNCTION_0_19(qword_1EDD54078);
    OUTLINED_FUNCTION_63();
    if (v87)
    {
      v88 = type metadata accessor for UserProfilePropertyProvider(0);
      v89 = OUTLINED_FUNCTION_61_4(*(v88 + 76));
      sub_1D4F1C460(v89, v23, v90, v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
      OUTLINED_FUNCTION_1(v23);
      if (!v44)
      {
LABEL_124:
        OUTLINED_FUNCTION_72_3();
        OUTLINED_FUNCTION_15_1();
        (*(v127 + 32))();

LABEL_127:
        v61 = v140;
        v62 = v141;
        v60 = v139;
        goto LABEL_31;
      }

      v92 = &qword_1EC7EA778;
      v93 = &qword_1D5622E60;
      v94 = v23;
    }

    else
    {
      v95 = qword_1EDD54058;

      if (v95 != -1)
      {
        OUTLINED_FUNCTION_12_17(&qword_1EDD54058);
      }

      OUTLINED_FUNCTION_0_19(qword_1EDD54060);
      OUTLINED_FUNCTION_63();
      if (v95)
      {
        v96 = type metadata accessor for UserProfilePropertyProvider(0);
        v97 = OUTLINED_FUNCTION_61_4(*(v96 + 80));
        sub_1D4F1C460(v97, v21, v98, v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
        OUTLINED_FUNCTION_1(v21);
        if (!v44)
        {
          goto LABEL_124;
        }

        v92 = &qword_1EC7EA778;
        v93 = &qword_1D5622E60;
        v94 = v21;
      }

      else
      {
        v101 = qword_1EDD54120;

        if (v101 != -1)
        {
          OUTLINED_FUNCTION_11_12(&qword_1EDD54120);
        }

        OUTLINED_FUNCTION_0_19(qword_1EDD54128);
        OUTLINED_FUNCTION_63();
        if (v101)
        {
          v102 = type metadata accessor for UserProfilePropertyProvider(0);
          v103 = v137;
          sub_1D4F1C460(v138 + *(v102 + 84), v137, &qword_1EC7EA778, &qword_1D5622E60);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
          OUTLINED_FUNCTION_1(v103);
          if (!v44)
          {
            goto LABEL_124;
          }

          v92 = &qword_1EC7EA778;
          v93 = &qword_1D5622E60;
          v94 = v137;
        }

        else
        {
          v104 = qword_1EDD540F8;

          if (v104 != -1)
          {
            OUTLINED_FUNCTION_10_10(&qword_1EDD540F8);
          }

          OUTLINED_FUNCTION_0_19(qword_1EDD54100);
          OUTLINED_FUNCTION_63();
          if (v104)
          {
            v105 = type metadata accessor for UserProfilePropertyProvider(0);
            v106 = OUTLINED_FUNCTION_61_4(*(v105 + 88));
            v107 = v136;
            sub_1D4F1C460(v106, v136, v108, v109);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
            OUTLINED_FUNCTION_1(v107);
            if (!v44)
            {
              goto LABEL_124;
            }

            v92 = &qword_1EC7EB620;
            v93 = &unk_1D561E5B0;
            v94 = v136;
          }

          else
          {
            v110 = qword_1EDD54130;

            if (v110 != -1)
            {
              OUTLINED_FUNCTION_9_14(&qword_1EDD54130);
            }

            OUTLINED_FUNCTION_0_19(qword_1EDD54138);
            OUTLINED_FUNCTION_63();
            if (v110)
            {
              v111 = type metadata accessor for UserProfilePropertyProvider(0);
              v112 = OUTLINED_FUNCTION_61_4(*(v111 + 92));
              v113 = v135;
              sub_1D4F1C460(v112, v135, v114, v115);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
              OUTLINED_FUNCTION_1(v113);
              if (!v44)
              {
                goto LABEL_124;
              }

              v92 = &qword_1EC7EB620;
              v93 = &unk_1D561E5B0;
              v94 = v135;
            }

            else
            {
              v116 = qword_1EDD54168;

              if (v116 != -1)
              {
                OUTLINED_FUNCTION_8_17(&qword_1EDD54168);
              }

              OUTLINED_FUNCTION_0_19(qword_1EDD54170);
              OUTLINED_FUNCTION_63();
              if (v116)
              {
                v117 = type metadata accessor for UserProfilePropertyProvider(0);
                v118 = OUTLINED_FUNCTION_61_4(*(v117 + 96));
                v119 = v133;
                sub_1D4F1C460(v118, v133, v120, v121);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
                OUTLINED_FUNCTION_1(v119);
                if (!v44)
                {
                  goto LABEL_124;
                }

                v92 = &qword_1EC7EA778;
                v93 = &qword_1D5622E60;
                v94 = v133;
              }

              else
              {
                v31 = qword_1EDD54040;

                if (v31 != -1)
                {
                  goto LABEL_130;
                }

                while (1)
                {
                  OUTLINED_FUNCTION_0_19(qword_1EDD54048);
                  OUTLINED_FUNCTION_63();
                  if (v31)
                  {
                    break;
                  }

                  *&v140 = 0;
                  *(&v140 + 1) = 0xE000000000000000;
                  sub_1D5615B68();
                  MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
                  v142 = v2;
                  sub_1D560CDE8();
                  sub_1D5615D48();
                  OUTLINED_FUNCTION_33_0();
                  v131 = *(&v140 + 1);
                  v130 = v140;
LABEL_129:
                  OUTLINED_FUNCTION_64_6("Fatal error", v128, v129, v130, v131, "MusicKitInternal/UserProfilePropertyProvider.swift");
                  __break(1u);
LABEL_130:
                  OUTLINED_FUNCTION_6_17(&qword_1EDD54040);
                }

                v122 = type metadata accessor for UserProfilePropertyProvider(0);
                v123 = OUTLINED_FUNCTION_61_4(*(v122 + 100));
                v124 = v134;
                sub_1D4F1C460(v123, v134, v125, v126);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
                OUTLINED_FUNCTION_1(v124);
                if (!v44)
                {
                  goto LABEL_124;
                }

                v92 = &qword_1EC7EA788;
                v93 = &unk_1D56223A0;
                v94 = v134;
              }
            }
          }
        }
      }
    }

    sub_1D4E50004(v94, v92, v93);
    v140 = 0u;
    v141 = 0u;
    goto LABEL_127;
  }

  v64 = 0;
  v65 = 0;
  v66 = v138 + *(type metadata accessor for UserProfilePropertyProvider(0) + 32);
  if ((v66[8] & 1) == 0)
  {
    v65 = *v66;
    v64 = MEMORY[0x1E69E6530];
  }

  v67 = v139;
  *v139 = v65;
  v67[1] = 0;
  v67[2] = 0;
  v67[3] = v64;
LABEL_32:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F1D988(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB660, &qword_1D561E740);
  OUTLINED_FUNCTION_82();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002BLL, 0x80000001D567EC60);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    goto LABEL_25;
  }

  v5 = v4;
  v6 = qword_1EDD54070;
  swift_retain_n();
  if (v6 != -1)
  {
    OUTLINED_FUNCTION_13_15(&qword_1EDD54070);
  }

  v88 = qword_1EDD54078;
  sub_1D4EC5794(&qword_1EDD53DF0, &qword_1EC7EB660, &qword_1D561E740);
  sub_1D5614D18();
  OUTLINED_FUNCTION_77_0();
  if ((v2 & 1) == 0)
  {
    v7 = qword_1EDD54058;

    if (v7 != -1)
    {
      v8 = OUTLINED_FUNCTION_12_17(&qword_1EDD54058);
    }

    OUTLINED_FUNCTION_22_9(v8, v9, v10, v11, v12, v13, v14, v15, v65, v71, v77, v5, v88);
    OUTLINED_FUNCTION_77_0();
    if ((v7 & 1) == 0)
    {
      v16 = qword_1EDD54120;

      if (v16 != -1)
      {
        v17 = OUTLINED_FUNCTION_11_12(&qword_1EDD54120);
      }

      OUTLINED_FUNCTION_22_9(v17, v18, v19, v20, v21, v22, v23, v24, v66, v72, v78, v83, v89);
      OUTLINED_FUNCTION_77_0();
      if ((v16 & 1) == 0)
      {
        v25 = qword_1EDD540F8;

        if (v25 != -1)
        {
          v26 = OUTLINED_FUNCTION_10_10(&qword_1EDD540F8);
        }

        OUTLINED_FUNCTION_22_9(v26, v27, v28, v29, v30, v31, v32, v33, v67, v73, v79, v84, v90);
        OUTLINED_FUNCTION_77_0();
        if ((v25 & 1) == 0)
        {
          v34 = qword_1EDD54130;

          if (v34 != -1)
          {
            v35 = OUTLINED_FUNCTION_9_14(&qword_1EDD54130);
          }

          OUTLINED_FUNCTION_22_9(v35, v36, v37, v38, v39, v40, v41, v42, v68, v74, v80, v85, v91);
          OUTLINED_FUNCTION_77_0();
          if ((v34 & 1) == 0)
          {
            v43 = qword_1EDD54168;

            if (v43 != -1)
            {
              v44 = OUTLINED_FUNCTION_8_17(&qword_1EDD54168);
            }

            OUTLINED_FUNCTION_22_9(v44, v45, v46, v47, v48, v49, v50, v51, v69, v75, v81, v86, v92);
            OUTLINED_FUNCTION_77_0();
            if ((v43 & 1) == 0)
            {
              v52 = qword_1EDD54040;

              if (v52 != -1)
              {
                v53 = OUTLINED_FUNCTION_6_17(&qword_1EDD54040);
              }

              v61 = OUTLINED_FUNCTION_22_9(v53, v54, v55, v56, v57, v58, v59, v60, v70, v76, v82, v87, v93);

              if ((v61 & 1) == 0)
              {
                while (1)
                {
                  sub_1D5615B68();
                  MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
                  sub_1D560CDE8();
                  sub_1D5615D48();
                  OUTLINED_FUNCTION_33_0();
LABEL_25:
                  OUTLINED_FUNCTION_64_6("Fatal error", v63, v64, 0, 0xE000000000000000, "MusicKitInternal/UserProfilePropertyProvider.swift");
                  __break(1u);
                }
              }
            }
          }
        }
      }
    }
  }

  swift_getKeyPath();
  sub_1D4F21BE4(&unk_1EDD54EF8, type metadata accessor for UserProfilePropertyProvider, &unk_1D561E658);
  sub_1D5612238();

  return sub_1D4E50004(a1, &qword_1EC7E9F98, &qword_1D561C420);
}

void sub_1D4F1DDC4()
{
  OUTLINED_FUNCTION_47();
  v126 = v0;
  v3 = v2;
  v5 = v4;
  v125 = *v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v116 = v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_2();
  v117 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v118 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_135();
  v119 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_135();
  v120 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_2();
  v121 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v114 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_135();
  v115 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_135();
  v122 = v26;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_135();
  v123 = v28;
  OUTLINED_FUNCTION_23();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v114 - v31;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_135();
  v124 = v33;
  OUTLINED_FUNCTION_23();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v114 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v114 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB648, &qword_1D561E730);
  OUTLINED_FUNCTION_22(v40);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v114 - v42;
  v44 = type metadata accessor for UserProfilePropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5();
  v48 = v47 - v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB650, &qword_1D561E738);
  v49 = swift_dynamicCastClass();
  if (!v49)
  {
    OUTLINED_FUNCTION_71_4();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000031, 0x80000001D567EBB0);
    v128 = v5;
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_70_4();
    v113 = 128;
    goto LABEL_65;
  }

  v1 = v49;
  sub_1D4E628D4(v3, v127);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v43, 1, 1, v44);
    sub_1D4E50004(v43, &qword_1EC7EB648, &qword_1D561E730);
    OUTLINED_FUNCTION_71_4();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000034, 0x80000001D567EBF0);
    v128 = v5;
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_70_4();
    v113 = 131;
    goto LABEL_65;
  }

  v125 = v44;
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v44);
  sub_1D4F216EC(v43, v48);
  v50 = qword_1EDD54070;

  if (v50 != -1)
  {
    OUTLINED_FUNCTION_13_15(&qword_1EDD54070);
  }

  v127[0] = qword_1EDD54078;
  v128 = v1;
  sub_1D4EC5794(&qword_1EC7EB658, &qword_1EC7EB650, &qword_1D561E738);
  v51 = sub_1D5614D18();

  if ((v51 & 1) == 0)
  {
    v55 = qword_1EDD54058;

    if (v55 != -1)
    {
      OUTLINED_FUNCTION_12_17(&qword_1EDD54058);
    }

    OUTLINED_FUNCTION_7_19(qword_1EDD54060);
    OUTLINED_FUNCTION_78_1();
    if (v55)
    {

      v56 = v125;
      sub_1D4F1C460(v48 + v125[20], v32, &qword_1EC7EA778, &qword_1D5622E60);
      sub_1D4F21750(v48);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
      OUTLINED_FUNCTION_1(v32);
      if (v54)
      {
        v58 = OUTLINED_FUNCTION_67_6(v56[20]);
        v73 = v124;
        sub_1D4F1C460(v58, v124, v59, v60);
        OUTLINED_FUNCTION_1(v32);
        if (!v54)
        {
          sub_1D4E50004(v32, &qword_1EC7EA778, &qword_1D5622E60);
        }
      }

      else
      {
        OUTLINED_FUNCTION_15_1();
        v73 = v124;
        (*(v72 + 32))(v124, v32, v57);
        OUTLINED_FUNCTION_17_7();
      }

      v74 = v56[20];
    }

    else
    {
      v66 = qword_1EDD54120;

      if (v66 != -1)
      {
        OUTLINED_FUNCTION_11_12(&qword_1EDD54120);
      }

      OUTLINED_FUNCTION_7_19(qword_1EDD54128);
      OUTLINED_FUNCTION_78_1();
      if ((v66 & 1) == 0)
      {
        v75 = qword_1EDD540F8;

        if (v75 != -1)
        {
          OUTLINED_FUNCTION_10_10(&qword_1EDD540F8);
        }

        OUTLINED_FUNCTION_7_19(qword_1EDD54100);
        OUTLINED_FUNCTION_78_1();
        if (v75)
        {

          v76 = v125;
          v77 = v120;
          sub_1D4F1C460(v48 + v125[22], v120, &qword_1EC7EB620, &unk_1D561E5B0);
          sub_1D4F21750(v48);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
          OUTLINED_FUNCTION_1(v77);
          if (v54)
          {
            v78 = OUTLINED_FUNCTION_67_6(v76[22]);
            v73 = v121;
            sub_1D4F1C460(v78, v121, v79, v80);
            OUTLINED_FUNCTION_1(v77);
            if (!v54)
            {
              sub_1D4E50004(v77, &qword_1EC7EB620, &unk_1D561E5B0);
            }
          }

          else
          {
            OUTLINED_FUNCTION_15_1();
            v73 = v121;
            v89 = OUTLINED_FUNCTION_32_15();
            v90(v89);
            OUTLINED_FUNCTION_17_7();
          }

          v74 = v76[22];
        }

        else
        {
          v83 = qword_1EDD54130;

          if (v83 != -1)
          {
            OUTLINED_FUNCTION_9_14(&qword_1EDD54130);
          }

          OUTLINED_FUNCTION_7_19(qword_1EDD54138);
          OUTLINED_FUNCTION_78_1();
          if ((v83 & 1) == 0)
          {
            v91 = qword_1EDD54168;

            if (v91 != -1)
            {
              OUTLINED_FUNCTION_8_17(&qword_1EDD54168);
            }

            OUTLINED_FUNCTION_7_19(qword_1EDD54170);
            OUTLINED_FUNCTION_78_1();
            if ((v91 & 1) == 0)
            {
              v99 = qword_1EDD54040;

              if (v99 != -1)
              {
                OUTLINED_FUNCTION_6_17(&qword_1EDD54040);
              }

              OUTLINED_FUNCTION_7_19(qword_1EDD54048);
              OUTLINED_FUNCTION_78_1();
              if ((v99 & 1) == 0)
              {
                while (1)
                {
                  OUTLINED_FUNCTION_71_4();
                  sub_1D5615B68();
                  MEMORY[0x1DA6EAC70](0xD000000000000028, 0x80000001D567EC30);
                  v128 = v1;
                  sub_1D5615D48();
                  OUTLINED_FUNCTION_33_0();
                  OUTLINED_FUNCTION_70_4();
                  v113 = 151;
LABEL_65:
                  v114 = v113;
                  OUTLINED_FUNCTION_64_6("Fatal error", v109, v110, v111, v112, "MusicKitInternal/UserProfilePropertyProvider.swift");
                  __break(1u);
                }
              }

              v100 = v125;
              v101 = v116;
              sub_1D4F1C460(v48 + v125[25], v116, &qword_1EC7EA788, &unk_1D56223A0);
              sub_1D4F21750(v48);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
              OUTLINED_FUNCTION_1(v101);
              if (v54)
              {
                v102 = OUTLINED_FUNCTION_67_6(v100[25]);
                v73 = v117;
                sub_1D4F1C460(v102, v117, v103, v104);
                OUTLINED_FUNCTION_1(v101);
                if (!v54)
                {
                  sub_1D4E50004(v101, &qword_1EC7EA788, &unk_1D56223A0);
                }
              }

              else
              {
                OUTLINED_FUNCTION_15_1();
                v73 = v117;
                v107 = OUTLINED_FUNCTION_32_15();
                v108(v107);
                OUTLINED_FUNCTION_17_7();
              }

              v74 = v100[25];
              v62 = &qword_1EC7EA788;
              v63 = &unk_1D56223A0;
              goto LABEL_35;
            }

            v92 = v125;
            v93 = v114;
            sub_1D4F1C460(v48 + v125[24], v114, &qword_1EC7EA778, &qword_1D5622E60);
            sub_1D4F21750(v48);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
            OUTLINED_FUNCTION_1(v93);
            if (v54)
            {
              v94 = OUTLINED_FUNCTION_67_6(v92[24]);
              v73 = v115;
              sub_1D4F1C460(v94, v115, v95, v96);
              OUTLINED_FUNCTION_1(v93);
              if (!v54)
              {
                sub_1D4E50004(v93, &qword_1EC7EA778, &qword_1D5622E60);
              }
            }

            else
            {
              OUTLINED_FUNCTION_15_1();
              v73 = v115;
              v105 = OUTLINED_FUNCTION_32_15();
              v106(v105);
              OUTLINED_FUNCTION_17_7();
            }

            v74 = v92[24];
            goto LABEL_34;
          }

          v84 = v125;
          v85 = v118;
          sub_1D4F1C460(v48 + v125[23], v118, &qword_1EC7EB620, &unk_1D561E5B0);
          sub_1D4F21750(v48);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
          OUTLINED_FUNCTION_1(v85);
          if (v54)
          {
            v86 = OUTLINED_FUNCTION_67_6(v84[23]);
            v73 = v119;
            sub_1D4F1C460(v86, v119, v87, v88);
            OUTLINED_FUNCTION_1(v85);
            if (!v54)
            {
              sub_1D4E50004(v85, &qword_1EC7EB620, &unk_1D561E5B0);
            }
          }

          else
          {
            OUTLINED_FUNCTION_15_1();
            v73 = v119;
            v97 = OUTLINED_FUNCTION_32_15();
            v98(v97);
            OUTLINED_FUNCTION_17_7();
          }

          v74 = v84[23];
        }

        v62 = &qword_1EC7EB620;
        v63 = &unk_1D561E5B0;
        goto LABEL_35;
      }

      v67 = v125;
      v68 = v122;
      sub_1D4F1C460(v48 + v125[21], v122, &qword_1EC7EA778, &qword_1D5622E60);
      sub_1D4F21750(v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
      OUTLINED_FUNCTION_1(v68);
      if (v54)
      {
        v69 = OUTLINED_FUNCTION_67_6(v67[21]);
        v73 = v123;
        sub_1D4F1C460(v69, v123, v70, v71);
        OUTLINED_FUNCTION_1(v68);
        if (!v54)
        {
          sub_1D4E50004(v68, &qword_1EC7EA778, &qword_1D5622E60);
        }
      }

      else
      {
        OUTLINED_FUNCTION_15_1();
        v73 = v123;
        v81 = OUTLINED_FUNCTION_32_15();
        v82(v81);
        OUTLINED_FUNCTION_17_7();
      }

      v74 = v67[21];
    }

LABEL_34:
    v62 = &qword_1EC7EA778;
    v63 = &qword_1D5622E60;
LABEL_35:
    v64 = v51 + v74;
    v65 = v73;
    goto LABEL_36;
  }

  v52 = v125;
  sub_1D4F1C460(v48 + v125[19], v37, &qword_1EC7EA778, &qword_1D5622E60);
  sub_1D4F21750(v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  v53 = OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10(v53);
  if (v54)
  {
    v61 = v126;
    sub_1D4F1C460(v126 + v52[19], v39, &qword_1EC7EA778, &qword_1D5622E60);
    OUTLINED_FUNCTION_10(v37);
    if (!v54)
    {
      sub_1D4E50004(v37, &qword_1EC7EA778, &qword_1D5622E60);
    }
  }

  else
  {
    (*(*(v51 - 8) + 32))(v39, v37, v51);
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v51);
    v61 = v126;
  }

  v62 = &qword_1EC7EA778;
  v63 = &qword_1D5622E60;
  v64 = v61 + v52[19];
  v65 = v39;
LABEL_36:
  sub_1D4F1C350(v65, v64, v62, v63);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F1EB2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561E5A0;
  if (qword_1EDD54140 != -1)
  {
    OUTLINED_FUNCTION_47_8(&qword_1EDD54140);
  }

  *(v0 + 32) = qword_1EDD76948;
  v1 = qword_1EDD54088;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_46_8(&qword_1EDD54088);
  }

  *(v0 + 40) = qword_1EDD768F8;
  v2 = qword_1EDD54110;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_45_9(&qword_1EDD54110);
  }

  *(v0 + 48) = qword_1EDD76940;
  v3 = qword_1EDD540D8;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_44_6(&qword_1EDD540D8);
  }

  *(v0 + 56) = qword_1EDD76928;
  v4 = qword_1EDD540B0;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_42_9(&qword_1EDD540B0);
  }

  *(v0 + 64) = qword_1EDD76910;
  v5 = qword_1EDD54098;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_41(&qword_1EDD54098);
  }

  *(v0 + 72) = qword_1EDD76900;
  v6 = qword_1EDD540F0;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_40_11(&qword_1EDD540F0);
  }

  *(v0 + 80) = qword_1EDD76938;
  v7 = qword_1EDD540C8;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_60_4(&qword_1EDD540C8);
  }

  *(v0 + 88) = qword_1EDD76920;
  v8 = qword_1EDD540C0;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_59_5(&qword_1EDD540C0);
  }

  *(v0 + 96) = qword_1EDD76918;
  v9 = qword_1EDD54148;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_58_4(&qword_1EDD54148);
  }

  *(v0 + 104) = qword_1EDD76950;
  v10 = qword_1EDD54150;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_56_6(&qword_1EDD54150);
  }

  *(v0 + 112) = qword_1EDD76958;
  v11 = qword_1EDD540E8;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_55_5(&qword_1EDD540E8);
  }

  *(v0 + 120) = qword_1EDD76930;
  v12 = qword_1EDD54050;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_54_1(&qword_1EDD54050);
  }

  *(v0 + 128) = qword_1EDD768F0;
  v13 = qword_1EDD54158;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_53_4(&qword_1EDD54158);
  }

  *(v0 + 136) = qword_1EDD76960;
  v14 = qword_1EDD540A0;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_52_6(&qword_1EDD540A0);
  }

  *(v0 + 144) = qword_1EDD76908;
  v15 = qword_1EDD54070;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_13_15(&qword_1EDD54070);
  }

  *(v0 + 152) = qword_1EDD54078;
  v16 = qword_1EDD54058;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_12_17(&qword_1EDD54058);
  }

  *(v0 + 160) = qword_1EDD54060;
  v17 = qword_1EDD54120;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_11_12(&qword_1EDD54120);
  }

  *(v0 + 168) = qword_1EDD54128;
  v18 = qword_1EDD540F8;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_10_10(&qword_1EDD540F8);
  }

  *(v0 + 176) = qword_1EDD54100;
  v19 = qword_1EDD54130;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_9_14(&qword_1EDD54130);
  }

  *(v0 + 184) = qword_1EDD54138;
  v20 = qword_1EDD54168;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_8_17(&qword_1EDD54168);
  }

  *(v0 + 192) = qword_1EDD54170;
  v21 = qword_1EDD54040;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_6_17(&qword_1EDD54040);
  }

  *(v0 + 200) = qword_1EDD54048;
  qword_1EDD76B68 = v0;
}

void sub_1D4F1EFAC()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v278 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v276 = v11;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB668, &qword_1D5637E60);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v277 = v13;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_4();
  v282 = v14;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v280 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v279 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_2();
  v283 = v21;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB670, qword_1D561E830);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13();
  v284 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_2();
  v287 = v25;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_4();
  v292 = v26;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  v290 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13();
  v274 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_135();
  v286 = v33;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_135();
  v289 = v35;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_2();
  v293 = v37;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB678, &qword_1D56783A0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13();
  v281 = v39;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_135();
  v291 = v41;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_135();
  v294 = v43;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_2();
  v296 = v45;
  v46 = sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v299 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5();
  v51 = v50 - v49;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v53 = OUTLINED_FUNCTION_22(v52);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13();
  v298 = v54;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v269 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB8, &unk_1D561B9C0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_59_0();
  v62 = v60 - v61;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v269 - v64;
  v66 = *v1;
  if (*v3)
  {
    if (!v66 || (sub_1D4F0B2E0() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v66)
  {
    goto LABEL_26;
  }

  v269 = v6;
  v270 = v4;
  v67 = type metadata accessor for UserProfilePropertyProvider(0);
  v273 = v1;
  v271 = v67;
  v68 = *(v67 + 20);
  v69 = *(v58 + 48);
  v272 = v3;
  sub_1D4F1C460(v3 + v68, v65, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v70 = OUTLINED_FUNCTION_20_8();
  sub_1D4F1C460(v70, &v65[v69], &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_10(v65);
  if (v71)
  {
    OUTLINED_FUNCTION_10(&v65[v69]);
    if (v71)
    {
      sub_1D4E50004(v65, &qword_1EC7E9CA0, &unk_1D561A0C0);
      goto LABEL_16;
    }

LABEL_14:
    v72 = &qword_1EC7E9FB8;
    v73 = &unk_1D561B9C0;
    v74 = v65;
LABEL_25:
    sub_1D4E50004(v74, v72, v73);
    goto LABEL_26;
  }

  sub_1D4F1C460(v65, v57, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_10(&v65[v69]);
  if (v71)
  {
    (*(v299 + 8))(v57, v46);
    goto LABEL_14;
  }

  v75 = v299;
  OUTLINED_FUNCTION_81();
  v76(v51, &v65[v69], v46);
  OUTLINED_FUNCTION_3_11();
  sub_1D4F21BE4(v77, v78, MEMORY[0x1E6976F80]);
  v79 = sub_1D5614D18();
  v80 = *(v75 + 8);
  v80(v51, v46);
  v80(v57, v46);
  sub_1D4E50004(v65, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if ((v79 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_16:
  v81 = v271;
  v82 = *(v58 + 48);
  v83 = v272;
  sub_1D4F1C460(v272 + *(v271 + 24), v62, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v84 = OUTLINED_FUNCTION_20_8();
  v86 = v85;
  sub_1D4F1C460(v84, v62 + v82, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_10(v62);
  if (v71)
  {
    OUTLINED_FUNCTION_10(v62 + v82);
    if (v71)
    {
      sub_1D4E50004(v62, &qword_1EC7E9CA0, &unk_1D561A0C0);
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v87 = v298;
  sub_1D4F1C460(v62, v298, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_10(v62 + v82);
  if (v88)
  {
    (*(v299 + 8))(v87, v46);
LABEL_24:
    v72 = &qword_1EC7E9FB8;
    v73 = &unk_1D561B9C0;
    v74 = v62;
    goto LABEL_25;
  }

  v89 = v299;
  (*(v299 + 32))(v51, v62 + v82, v46);
  OUTLINED_FUNCTION_3_11();
  sub_1D4F21BE4(v90, v91, MEMORY[0x1E6976F80]);
  v92 = sub_1D5614D18();
  v93 = *(v89 + 8);
  v93(v51, v46);
  v93(v87, v46);
  sub_1D4E50004(v62, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if ((v92 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_28:
  OUTLINED_FUNCTION_21_11();
  if (v71)
  {
    if (v94 != 2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v95 || ((v96 ^ v97) & 1) != 0)
    {
      goto LABEL_26;
    }
  }

  v98 = *(v81 + 32);
  v99 = (v83 + v98);
  v100 = *(v83 + v98 + 8);
  v101 = (v86 + v98);
  v102 = *(v86 + v98 + 8);
  if (v100)
  {
    if (!v102)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (*v99 != *v101)
    {
      LOBYTE(v102) = 1;
    }

    if (v102)
    {
      goto LABEL_26;
    }
  }

  v103 = *(v81 + 36);
  v104 = *(v86 + v103 + 8);
  if (*(v83 + v103 + 8))
  {
    if (!v104)
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_31_0(v83 + v103);
    v107 = v71 && v105 == v106;
    if (!v107 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v104)
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_21_11();
  if (v71)
  {
    if (v108 != 2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v109 || ((v110 ^ v111) & 1) != 0)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_21_11();
  if (v71)
  {
    if (v112 != 2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v113 || ((v114 ^ v115) & 1) != 0)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_21_11();
  if (v71)
  {
    if (v116 != 2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v117 || ((v118 ^ v119) & 1) != 0)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_21_11();
  if (v71)
  {
    if (v120 != 2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v121 || ((v122 ^ v123) & 1) != 0)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_21_11();
  if (v71)
  {
    if (v124 != 2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v125 || ((v126 ^ v127) & 1) != 0)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_21_11();
  if (v71)
  {
    if (v128 != 2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v129 || ((v130 ^ v131) & 1) != 0)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_21_11();
  if (v71)
  {
    v133 = v273;
    v134 = v272;
    v135 = v271;
    if (v132 != 2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v136)
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_80_2();
    v134 = *(v137 - 256);
    v135 = v271;
    if (v138)
    {
      goto LABEL_26;
    }
  }

  v139 = *(v135 + 68);
  v140 = *(v134 + v139);
  v141 = *(v133 + v139);
  if (v140 == 2)
  {
    v142 = v273;
    v143 = v272;
    v144 = v271;
    if (v141 != 2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    OUTLINED_FUNCTION_39();
    if (v71)
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_80_2();
    v143 = *(v145 - 256);
    v144 = v271;
    if (v146)
    {
      goto LABEL_26;
    }
  }

  v147 = *(v144 + 72);
  v148 = *(v142 + v147 + 8);
  if (*(v143 + v147 + 8))
  {
    if (!v148)
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_31_0(v143 + v147);
    v151 = v71 && v149 == v150;
    if (!v151 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v148)
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_30_6();
  v152 = v296;
  v153 = *(v295 + 48);
  v154 = OUTLINED_FUNCTION_25_22();
  sub_1D4F1C460(v154, v152, &qword_1EC7EA778, &qword_1D5622E60);
  v155 = OUTLINED_FUNCTION_20_8();
  sub_1D4F1C460(v155, v152 + v153, &qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_16_14(v152);
  if (v71)
  {
    OUTLINED_FUNCTION_57(v296 + v153, 1, v297);
    if (v71)
    {
      sub_1D4E50004(v296, &qword_1EC7EA778, &qword_1D5622E60);
      goto LABEL_115;
    }

    goto LABEL_113;
  }

  v156 = v296;
  sub_1D4F1C460(v296, v293, &qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_16_14(v156 + v153);
  if (v157)
  {
    (*(v292 + 8))(v293, v297);
LABEL_113:
    v72 = &qword_1EC7EB678;
    v73 = &qword_1D56783A0;
    v74 = v296;
    goto LABEL_25;
  }

  v158 = v292;
  v160 = v296;
  v159 = v297;
  v161 = v290;
  (*(v292 + 32))(v290, v296 + v153, v297);
  sub_1D4F21860();
  v162 = v293;
  OUTLINED_FUNCTION_27_6();
  v163 = sub_1D5614D18();
  v164 = *(v158 + 8);
  v164(v161, v159);
  v164(v162, v159);
  sub_1D4E50004(v160, &qword_1EC7EA778, &qword_1D5622E60);
  if ((v163 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_115:
  OUTLINED_FUNCTION_30_6();
  v166 = *(v165 + 80);
  v167 = v294;
  v168 = *(v295 + 48);
  OUTLINED_FUNCTION_25_22();
  OUTLINED_FUNCTION_36_6();
  sub_1D4F1C460(v169, v170, v171, &qword_1D5622E60);
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_16_14(v167);
  if (v71)
  {
    OUTLINED_FUNCTION_16_14(v168 + v294);
    if (v71)
    {
      sub_1D4E50004(v294, &qword_1EC7EA778, &qword_1D5622E60);
      goto LABEL_125;
    }

    goto LABEL_123;
  }

  v172 = v294;
  sub_1D4F1C460(v294, v289, &qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_16_14(v168 + v172);
  if (v173)
  {
    (*(v292 + 8))(v289, v297);
LABEL_123:
    v72 = &qword_1EC7EB678;
    v73 = &qword_1D56783A0;
    v74 = v294;
    goto LABEL_25;
  }

  v174 = v294;
  v175 = OUTLINED_FUNCTION_74_4();
  v176(v175);
  sub_1D4F21860();
  v177 = v289;
  OUTLINED_FUNCTION_27_6();
  sub_1D5614D18();
  v178 = OUTLINED_FUNCTION_31_7();
  v168(v178);
  (v168)(v177, v166);
  sub_1D4E50004(v174, &qword_1EC7EA778, &qword_1D5622E60);
  if ((v172 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_125:
  OUTLINED_FUNCTION_30_6();
  v180 = *(v179 + 84);
  v181 = *(v295 + 48);
  OUTLINED_FUNCTION_25_22();
  v182 = v291;
  OUTLINED_FUNCTION_36_6();
  sub_1D4F1C460(v183, v184, v185, &qword_1D5622E60);
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_16_14(v182);
  if (v71)
  {
    OUTLINED_FUNCTION_16_14(v181 + v291);
    if (v71)
    {
      sub_1D4E50004(v291, &qword_1EC7EA778, &qword_1D5622E60);
      goto LABEL_135;
    }

    goto LABEL_133;
  }

  v186 = v291;
  sub_1D4F1C460(v291, v286, &qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_16_14(v181 + v186);
  if (v187)
  {
    (*(v292 + 8))(v286, v297);
LABEL_133:
    v72 = &qword_1EC7EB678;
    v73 = &qword_1D56783A0;
    v74 = v291;
    goto LABEL_25;
  }

  v188 = v291;
  v189 = OUTLINED_FUNCTION_74_4();
  v190(v189);
  sub_1D4F21860();
  v191 = v286;
  OUTLINED_FUNCTION_27_6();
  sub_1D5614D18();
  v192 = OUTLINED_FUNCTION_31_7();
  v181(v192);
  (v181)(v191, v180);
  sub_1D4E50004(v188, &qword_1EC7EA778, &qword_1D5622E60);
  if ((v186 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_135:
  OUTLINED_FUNCTION_30_6();
  v193 = *(v285 + 48);
  OUTLINED_FUNCTION_25_22();
  v194 = v287;
  OUTLINED_FUNCTION_36_6();
  sub_1D4F1C460(v195, v196, v197, &unk_1D561E5B0);
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_57(v194, 1, v288);
  if (v71)
  {
    OUTLINED_FUNCTION_57(v193 + v287, 1, v288);
    if (v71)
    {
      sub_1D4E50004(v287, &qword_1EC7EB620, &unk_1D561E5B0);
      goto LABEL_145;
    }

    goto LABEL_143;
  }

  v198 = v287;
  sub_1D4F1C460(v287, v283, &qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_57(v193 + v198, 1, v288);
  if (v199)
  {
    (*(v282 + 8))(v283, v288);
LABEL_143:
    v72 = &qword_1EC7EB670;
    v73 = qword_1D561E830;
    v74 = v287;
    goto LABEL_25;
  }

  v201 = v287;
  v200 = v288;
  (*(v282 + 32))(v280, v193 + v287, v288);
  sub_1D4F21914();
  v202 = v283;
  OUTLINED_FUNCTION_27_6();
  sub_1D5614D18();
  v203 = OUTLINED_FUNCTION_31_7();
  v193(v203);
  (v193)(v202, v200);
  sub_1D4E50004(v201, &qword_1EC7EB620, &unk_1D561E5B0);
  if ((v198 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_145:
  OUTLINED_FUNCTION_30_6();
  v204 = v284;
  v205 = *(v285 + 48);
  OUTLINED_FUNCTION_25_22();
  OUTLINED_FUNCTION_36_6();
  sub_1D4F1C460(v206, v207, v208, &unk_1D561E5B0);
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_57(v204, 1, v288);
  if (v71)
  {
    OUTLINED_FUNCTION_57(v284 + v205, 1, v288);
    if (v71)
    {
      sub_1D4E50004(v284, &qword_1EC7EB620, &unk_1D561E5B0);
      goto LABEL_155;
    }

    goto LABEL_153;
  }

  v209 = v284;
  sub_1D4F1C460(v284, v279, &qword_1EC7EB620, &unk_1D561E5B0);
  OUTLINED_FUNCTION_57(v209 + v205, 1, v288);
  if (v210)
  {
    (*(v282 + 8))(v279, v288);
LABEL_153:
    v72 = &qword_1EC7EB670;
    v73 = qword_1D561E830;
    v74 = v284;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_81();
  v211 = v284;
  v212 = v284 + v205;
  v213 = v288;
  v214(v280, v212, v288);
  v215 = sub_1D4F21914();
  v216 = v279;
  OUTLINED_FUNCTION_76_3(v279, v217, v218, v215);
  v219 = OUTLINED_FUNCTION_51();
  (unk_1D561E5B0)(v219);
  (unk_1D561E5B0)(v216, v213);
  sub_1D4E50004(v211, &qword_1EC7EB620, &unk_1D561E5B0);
  if ((v209 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_155:
  OUTLINED_FUNCTION_30_6();
  v220 = *(v295 + 48);
  OUTLINED_FUNCTION_25_22();
  v221 = v281;
  OUTLINED_FUNCTION_36_6();
  sub_1D4F1C460(v222, v223, v224, &qword_1D5622E60);
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_16_14(v221);
  if (!v71)
  {
    v225 = v281;
    sub_1D4F1C460(v281, v274, &qword_1EC7EA778, &qword_1D5622E60);
    OUTLINED_FUNCTION_16_14(v225 + v220);
    if (!v226)
    {
      OUTLINED_FUNCTION_81();
      v227 = v281;
      v228 = v281 + v220;
      v229 = v297;
      v230(v290, v228, v297);
      v231 = sub_1D4F21860();
      v232 = v274;
      OUTLINED_FUNCTION_76_3(v274, v233, v234, v231);
      v235 = OUTLINED_FUNCTION_51();
      (qword_1D5622E60)(v235);
      (qword_1D5622E60)(v232, v229);
      sub_1D4E50004(v227, &qword_1EC7EA778, &qword_1D5622E60);
      if ((v225 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_165;
    }

    (*(v292 + 8))(v274, v297);
    goto LABEL_163;
  }

  OUTLINED_FUNCTION_16_14(v281 + v220);
  if (!v71)
  {
LABEL_163:
    v72 = &qword_1EC7EB678;
    v73 = &qword_1D56783A0;
    v74 = v281;
    goto LABEL_25;
  }

  sub_1D4E50004(v281, &qword_1EC7EA778, &qword_1D5622E60);
LABEL_165:
  OUTLINED_FUNCTION_30_6();
  v236 = *(v275 + 48);
  OUTLINED_FUNCTION_25_22();
  v237 = v277;
  OUTLINED_FUNCTION_36_6();
  sub_1D4F1C460(v238, v239, v240, &unk_1D56223A0);
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_57(v237, 1, v270);
  if (v71)
  {
    OUTLINED_FUNCTION_57(v277 + v236, 1, v270);
    if (!v71)
    {
      goto LABEL_172;
    }

    sub_1D4E50004(v277, &qword_1EC7EA788, &unk_1D56223A0);
  }

  else
  {
    v241 = v277;
    sub_1D4F1C460(v277, v276, &qword_1EC7EA788, &unk_1D56223A0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v241 + v236, 1, v270);
    if (EnumTagSinglePayload == 1)
    {
      (*(v269 + 8))(v276, v270);
LABEL_172:
      v72 = &qword_1EC7EB668;
      v73 = &qword_1D5637E60;
      v74 = v277;
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_81();
    v243 = v277;
    v244 = v277 + v236;
    v245 = v270;
    v246(v278, v244, v270);
    v247 = sub_1D4F217AC();
    v248 = v276;
    OUTLINED_FUNCTION_76_3(v276, v249, v250, v247);
    v251 = OUTLINED_FUNCTION_51();
    (unk_1D56223A0)(v251);
    (unk_1D56223A0)(v248, v245);
    sub_1D4E50004(v243, &qword_1EC7EA788, &unk_1D56223A0);
    if ((v241 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_4_13(*(v252 + 104));
  sub_1D4EF6F7C();
  if ((v253 & 1) == 0)
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_66_4(*(v254 + 108));
  if ((sub_1D560D6E8() & 1) == 0)
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_66_4(*(v255 + 112));
  if ((sub_1D4F3B22C() & 1) == 0)
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_30_6();
  v257 = *(v256 + 116);
  v258 = *(v273 + v257 + 8);
  if (!*(v272 + v257 + 8))
  {
    if (v258)
    {
      goto LABEL_26;
    }

    goto LABEL_186;
  }

  if (v258)
  {
    OUTLINED_FUNCTION_31_0(v272 + v257);
    v261 = v71 && v259 == v260;
    if (v261 || (sub_1D5616168() & 1) != 0)
    {
LABEL_186:
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_4_13(*(v262 + 120));
      sub_1D4F286E0();
      if (v263)
      {
        OUTLINED_FUNCTION_30_6();
        OUTLINED_FUNCTION_4_13(*(v264 + 124));
        sub_1D4F286E0();
        if (v265)
        {
          OUTLINED_FUNCTION_30_6();
          OUTLINED_FUNCTION_4_13(*(v266 + 128));
          sub_1D4F286E0();
          if (v267)
          {
            OUTLINED_FUNCTION_30_6();
            OUTLINED_FUNCTION_4_13(*(v268 + 132));
            sub_1D4F286E0();
          }
        }
      }
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_46();
}

void sub_1D4F20580()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4();
  v104 = v2;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_3();
  v103 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v115 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_4();
  v112 = v9;
  v113 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v111 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB620, &unk_1D561E5B0);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v109 = v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_2();
  v108 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_4();
  v114 = v18;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v117 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  v22 = OUTLINED_FUNCTION_22(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13();
  v110 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_135();
  v107 = v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_135();
  v106 = v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_2();
  v105 = v29;
  v30 = sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v36 = v35 - v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v38 = OUTLINED_FUNCTION_22(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_59_0();
  v41 = v39 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v102 - v43;
  if (*v0)
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F0B2F8();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v45 = type metadata accessor for UserProfilePropertyProvider(0);
  sub_1D4F1C460(v0 + v45[5], v44, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(v44, 1, v30);
  if (v46)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v32 + 32))(v36, v44, v30);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_11();
    sub_1D4F21BE4(v47, v48, MEMORY[0x1E6976F78]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v32 + 8))(v36, v30);
  }

  sub_1D4F1C460(v0 + v45[6], v41, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(v41, 1, v30);
  if (v46)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v32 + 32))(v36, v41, v30);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_11();
    sub_1D4F21BE4(v49, v50, MEMORY[0x1E6976F78]);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v32 + 8))(v36, v30);
  }

  v51 = v113;
  OUTLINED_FUNCTION_49_4();
  if (!v46)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v52 = v0 + v45[8];
  if (v52[8] == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v53 = *v52;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v53);
  }

  if (*(v0 + v45[9] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_49_4();
  if (!v46)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_49_4();
  if (!v46)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_49_4();
  if (!v46)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_49_4();
  if (!v46)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_49_4();
  if (!v46)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_49_4();
  if (!v46)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_49_4();
  if (!v46)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_49_4();
  if (!v46)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  if (*(v0 + v45[18] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v54 = v116;
  v55 = v114;
  sub_1D4F1C460(v0 + v45[19], v105, &qword_1EC7EA778, &qword_1D5622E60);
  v56 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v56, v57, v17);
  if (v46)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v58 = OUTLINED_FUNCTION_23_9();
    v59(v58);
    OUTLINED_FUNCTION_27();
    sub_1D4F219C8();
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    v60 = OUTLINED_FUNCTION_50_5();
    v61(v60);
  }

  sub_1D4F1C460(v0 + v45[20], v106, &qword_1EC7EA778, &qword_1D5622E60);
  v62 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v62, v63, v17);
  if (v46)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v64 = OUTLINED_FUNCTION_23_9();
    v65(v64);
    OUTLINED_FUNCTION_27();
    sub_1D4F219C8();
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    v66 = OUTLINED_FUNCTION_50_5();
    v67(v66);
  }

  sub_1D4F1C460(v0 + v45[21], v107, &qword_1EC7EA778, &qword_1D5622E60);
  v68 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v68, v69, v17);
  if (v46)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v70 = OUTLINED_FUNCTION_23_9();
    v71(v70);
    OUTLINED_FUNCTION_27();
    sub_1D4F219C8();
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    v72 = OUTLINED_FUNCTION_50_5();
    v73(v72);
  }

  v74 = v108;
  sub_1D4F1C460(v1 + v45[22], v108, &qword_1EC7EB620, &unk_1D561E5B0);
  v75 = OUTLINED_FUNCTION_35_1();
  v77 = v54;
  if (__swift_getEnumTagSinglePayload(v75, v76, v51) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v78 = v111;
    v79 = v112;
    (*(v112 + 32))(v111, v74, v51);
    OUTLINED_FUNCTION_27();
    sub_1D4F21A7C();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v79 + 8))(v78, v51);
  }

  v80 = v109;
  sub_1D4F1C460(v1 + v45[23], v109, &qword_1EC7EB620, &unk_1D561E5B0);
  v81 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v81, v82, v51);
  if (v46)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v83 = v51;
    v84 = v111;
    v85 = v112;
    (*(v112 + 32))(v111, v80, v83);
    OUTLINED_FUNCTION_27();
    sub_1D4F21A7C();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v85 + 8))(v84, v83);
  }

  v86 = v77;
  sub_1D4F1C460(v1 + v45[24], v110, &qword_1EC7EA778, &qword_1D5622E60);
  v87 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v87, v88, v17);
  v89 = v117;
  if (v46)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v90 = OUTLINED_FUNCTION_23_9();
    v91(v90);
    OUTLINED_FUNCTION_27();
    sub_1D4F219C8();
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    (*(v55 + 8))(v89, v17);
  }

  sub_1D4F1C460(v1 + v45[25], v115, &qword_1EC7EA788, &unk_1D56223A0);
  v92 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v92, v93, v86);
  if (v46)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v95 = v103;
    v94 = v104;
    v96 = OUTLINED_FUNCTION_23_9();
    v97(v96);
    OUTLINED_FUNCTION_27();
    sub_1D4F21B30();
    OUTLINED_FUNCTION_33_6();
    sub_1D5614CB8();
    (*(v94 + 8))(v95, v86);
  }

  v98 = OUTLINED_FUNCTION_32_2();
  sub_1D4F070FC(v98, v99);
  sub_1D560D838();
  v100 = sub_1D4F21BE4(&qword_1EDD53DC0, MEMORY[0x1E6974F58], MEMORY[0x1E6974F68]);
  OUTLINED_FUNCTION_42(v100);
  sub_1D5610088();
  v101 = sub_1D4F21BE4(&qword_1EDD53358, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BD8]);
  OUTLINED_FUNCTION_42(v101);
  if (*(v1 + v45[29] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F210D8()
{
  sub_1D56162D8();
  sub_1D4F20580();
  return sub_1D5616328();
}

void (*sub_1D4F21120(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  sub_1D4F1C9B8();
  return sub_1D4F2118C;
}

void sub_1D4F2118C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    sub_1D4F1C460(*a1, v2 + 32, &qword_1EC7E9F98, &qword_1D561C420);

    sub_1D4F1D988(v2 + 32, v3);
    sub_1D4E50004(v2, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {

    sub_1D4F1D988(v2, v3);
  }

  free(v2);
}

uint64_t sub_1D4F2124C(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D4F20580();
  return sub_1D5616328();
}

uint64_t sub_1D4F212D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D4F21BE4(&unk_1EDD54EF8, type metadata accessor for UserProfilePropertyProvider, &unk_1D561E658);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D4F21370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 108);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D4F213E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 108);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D4F2147C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 112);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D4F214F0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 116));

  return v2;
}

uint64_t sub_1D4F21558(uint64_t a1)
{
  v2 = sub_1D4F21BE4(&unk_1EDD54EF8, type metadata accessor for UserProfilePropertyProvider, &unk_1D561E658);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D4F215D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4F21BE4(&qword_1EC7EB638, type metadata accessor for UserProfilePropertyProvider, &unk_1D561E630);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D4F21668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4F21BE4(&qword_1EC7EB640, type metadata accessor for UserProfilePropertyProvider, &unk_1D561E5F0);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

uint64_t sub_1D4F216EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserProfilePropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F21750(uint64_t a1)
{
  v2 = type metadata accessor for UserProfilePropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D4F217AC()
{
  result = qword_1EC7EB680;
  if (!qword_1EC7EB680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA378, &qword_1D561D140);
    sub_1D4F21BE4(&qword_1EC7EB688, MEMORY[0x1E6976DC8], MEMORY[0x1E6976DE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB680);
  }

  return result;
}

unint64_t sub_1D4F21860()
{
  result = qword_1EC7EB690;
  if (!qword_1EC7EB690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    sub_1D4F21BE4(&qword_1EC7EB698, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB690);
  }

  return result;
}

unint64_t sub_1D4F21914()
{
  result = qword_1EC7EB6A0;
  if (!qword_1EC7EB6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA538, &qword_1D561C490);
    sub_1D4F21BE4(&qword_1EC7EB6A8, MEMORY[0x1E69773E0], MEMORY[0x1E69773F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB6A0);
  }

  return result;
}

unint64_t sub_1D4F219C8()
{
  result = qword_1EC7EB6B0;
  if (!qword_1EC7EB6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    sub_1D4F21BE4(&qword_1EC7EB6B8, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB6B0);
  }

  return result;
}

unint64_t sub_1D4F21A7C()
{
  result = qword_1EC7EB6C0;
  if (!qword_1EC7EB6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA538, &qword_1D561C490);
    sub_1D4F21BE4(&qword_1EC7EB6C8, MEMORY[0x1E69773E0], MEMORY[0x1E69773F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB6C0);
  }

  return result;
}

unint64_t sub_1D4F21B30()
{
  result = qword_1EC7EB6D0;
  if (!qword_1EC7EB6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA378, &qword_1D561D140);
    sub_1D4F21BE4(&qword_1EC7EB6D8, MEMORY[0x1E6976DC8], MEMORY[0x1E6976DD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB6D0);
  }

  return result;
}

uint64_t sub_1D4F21BE4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_42_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_46_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_47_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_76_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D5614D18();
}

uint64_t sub_1D4F21D2C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  sub_1D4F21FE0(v2, &v17 - v5);
  v7 = _s12InternalItemOMa(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1D5615E08();
    __break(1u);
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v11 = sub_1D560EEA8();
        v12 = v11;
        v13 = MEMORY[0x1E69754D0];
        goto LABEL_8;
      case 2u:
        v11 = sub_1D5613838();
        v12 = v11;
        v13 = MEMORY[0x1E6976BD0];
LABEL_8:
        a1[3] = v11;
        a1[4] = v13;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
        return (*(*(v12 - 8) + 32))(boxed_opaque_existential_0, v6, v12);
      case 3u:
        a1[3] = type metadata accessor for TVEpisode(0);
        v8 = &unk_1EC7EB6F8;
        v9 = type metadata accessor for TVEpisode;
        v10 = &protocol conformance descriptor for TVEpisode;
        goto LABEL_10;
      case 4u:
        a1[3] = type metadata accessor for UploadedAudio(0);
        v8 = &unk_1EC7EB6F0;
        v9 = type metadata accessor for UploadedAudio;
        v10 = &protocol conformance descriptor for UploadedAudio;
        goto LABEL_10;
      case 5u:
        a1[3] = type metadata accessor for UploadedVideo(0);
        v8 = &unk_1EC7EB6E8;
        v9 = type metadata accessor for UploadedVideo;
        v10 = &protocol conformance descriptor for UploadedVideo;
        goto LABEL_10;
      default:
        a1[3] = type metadata accessor for MusicMovie(0);
        v8 = &unk_1EC7EB700;
        v9 = type metadata accessor for MusicMovie;
        v10 = &protocol conformance descriptor for MusicMovie;
LABEL_10:
        a1[4] = sub_1D4F22050(v8, v9, v10);
        v16 = __swift_allocate_boxed_opaque_existential_0(a1);
        result = sub_1D4F22098(v6, v16, v9);
        break;
    }
  }

  return result;
}

uint64_t sub_1D4F21FE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB6E0, &qword_1D56320D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F22050(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D4F22098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D4F22100(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  sub_1D5615438();
  v4 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_1D51ECB60(0, 0, v3, &unk_1D561E878, v6);
}

uint64_t sub_1D4F22240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D4F22260, 0, 0);
}

uint64_t sub_1D4F22260()
{
  OUTLINED_FUNCTION_60();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1D4F2234C;

    return sub_1D4F22658();
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_55();

    return v4();
  }
}

uint64_t sub_1D4F2234C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    v4 = sub_1D4F2350C;
  }

  else
  {

    v4 = sub_1D4F2248C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D4F2248C()
{
  **(v0 + 40) = *(v0 + 72) != 0;
  OUTLINED_FUNCTION_55();
  return v1();
}

uint64_t sub_1D4F224C0()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D4F22570;

  return sub_1D4F22240(v3, v4, v5, v6);
}

uint64_t sub_1D4F22570()
{
  OUTLINED_FUNCTION_60();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D4F22678()
{
  OUTLINED_FUNCTION_80();
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1D4F2279C;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB718, &qword_1D561E888);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1D4F230EC;
  v0[21] = &block_descriptor;
  v0[22] = v2;
  [v1 requestDownloadingSongsCountWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D4F2279C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 248) = v4;
  if (v4)
  {
    v5 = sub_1D4F2300C;
  }

  else
  {
    v5 = sub_1D4F228A4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D4F228A4(uint64_t a1)
{
  v2 = v1[26];
  if (v2 > 0)
  {
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
    }

    v3 = sub_1D560C758();
    __swift_project_value_buffer(v3, qword_1EDD76A90);
    v4 = sub_1D560C738();
    v5 = sub_1D56156E8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134349056;
      *(v6 + 4) = v2;
      _os_log_impl(&dword_1D4E3F000, v4, v5, "􁕤 We're still downloading %{public}ld item(s), waiting for no more queue before updating snapshot.", v6, 0xCu);
      MEMORY[0x1DA6ED200](v6, -1, -1);
    }

    OUTLINED_FUNCTION_55();

    return v7();
  }

  v9 = sub_1D560EFB8();
  v1[32] = v9;
  if (!v9)
  {
LABEL_15:
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000004BLL, 0x80000001D567EDB0);
    v1[18] = sub_1D560EFB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB720, &unk_1D561E890);
    v14 = sub_1D5614DB8();
    MEMORY[0x1DA6EAC70](v14);

    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    return sub_1D5615E08();
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v11 = v10;
  v1[29] = MEMORY[0x1E69E7CD0];
  v12 = objc_opt_self();
  v1[10] = v1;
  v1[15] = v1 + 26;
  v1[11] = sub_1D4F22C04;
  v13 = swift_continuation_init();
  v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB728, &qword_1D5642810);
  v1[18] = MEMORY[0x1E69E9820];
  v1[19] = 1107296256;
  v1[20] = sub_1D4F232C8;
  v1[21] = &block_descriptor_9;
  v1[22] = v13;
  swift_unknownObjectRetain();
  [v12 requestDownloadedSongsForMediaLibrary:v11 completionHandler:v1 + 18];

  return MEMORY[0x1EEE6DEC8](v1 + 10);
}

uint64_t sub_1D4F22C04()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 264) = v4;
  if (v4)
  {
    v5 = sub_1D4F23070;
  }

  else
  {
    v5 = sub_1D4F22D0C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D4F22D0C()
{
  v21 = v0;
  v1 = v0[26];
  swift_unknownObjectRelease();
  v2 = [v1 results];
  v3 = swift_allocObject();
  *(v3 + 16) = v0 + 29;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D4F23394;
  *(v4 + 24) = v3;
  v0[22] = sub_1D4F233C4;
  v0[23] = v4;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1D4F233EC;
  v0[21] = &block_descriptor_18;
  v5 = _Block_copy(v0 + 18);

  [v2 enumerateItemIdentifiersUsingBlock_];

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else if (qword_1EDD54478 == -1)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
LABEL_3:
  v6 = sub_1D560C758();
  __swift_project_value_buffer(v6, qword_1EDD76A90);
  v7 = sub_1D560C738();
  v8 = sub_1D56156E8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    swift_beginAccess();
    *(v9 + 4) = *(v0[29] + 16);
    _os_log_impl(&dword_1D4E3F000, v7, v8, "􂧿 Updating downloaded item snapshot with %{public}ld asset adam IDs.", v9, 0xCu);
    MEMORY[0x1DA6ED200](v9, -1, -1);
  }

  swift_beginAccess();
  v10 = v0[29];

  sub_1D4E5A1CC();

  v20 = v10;
  sub_1D5115740(&v20, v11, v12, v13, v14, v15, v16, v17);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_55();

  return v18();
}

uint64_t sub_1D4F2300C()
{
  OUTLINED_FUNCTION_80();
  swift_willThrow();
  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D4F23070()
{
  OUTLINED_FUNCTION_80();
  swift_willThrow();
  swift_unknownObjectRelease_n();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D4F230EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_1D4F2314C(*v5, a3);
  }

  else
  {
    return sub_1D4F232A8(*v5, a2);
  }
}

uint64_t sub_1D4F2314C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1D4F231B8(uint64_t a1, _OWORD *a2)
{
  sub_1D4E519A8(a2, *(*(a1 + 64) + 40));

  return swift_continuation_throwingResume();
}

uint64_t sub_1D4F23214(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 64) + 40);
  v4 = sub_1D560C0A8();
  (*(*(v4 - 8) + 32))(v3, a2, v4);

  return swift_continuation_throwingResume();
}

uint64_t *sub_1D4F232C8(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_1D4F2314C(v6, a3);
  }

  if (a2)
  {
    return sub_1D4F232A8(v6, a2);
  }

  __break(1u);
  return result;
}

id sub_1D4F23334(int a1, id a2)
{
  result = [a2 musicKit_assetAdamID];
  if (result)
  {
    v3 = sub_1D560EF08();
    sub_1D52C7E84(&v5, v3, v4);
  }

  return result;
}

uint64_t sub_1D4F233EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D560C4A8();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = *(a1 + 32);
  sub_1D560C488();
  swift_unknownObjectRetain();
  v14(v13, a3, a4);
  swift_unknownObjectRelease();
  return (*(v9 + 8))(v13, v7);
}

BOOL sub_1D4F23558(uint64_t *a1, uint64_t *a2, unint64_t *a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_1D4E62A60(a3, a1, a2, a4);
  sub_1D5615608();
  sub_1D5615648();
  return v10 == v9;
}

uint64_t MusicCatalogSearchResponse.genres.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB750, &unk_1D561E8A0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_0();
  sub_1D4F2380C(v6);
  type metadata accessor for MusicCatalogSearchResponse.InternalResults(0);
  v9 = OUTLINED_FUNCTION_24_7();
  if (__swift_getEnumTagSinglePayload(v9, v10, v11) == 1)
  {
    sub_1D4E50004(v6, &qword_1EC7EB750, &unk_1D561E8A0);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
    v13 = OUTLINED_FUNCTION_20_22();
    __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
    sub_1D5613C48();
    sub_1D560D9F8();
    v15 = OUTLINED_FUNCTION_20_22();
    result = __swift_getEnumTagSinglePayload(v15, v16, v12);
    if (result != 1)
    {
      return sub_1D4E50004(v1, &qword_1EC7EA788, &unk_1D56223A0);
    }
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
    OUTLINED_FUNCTION_4();
    v20 = v19;
    (*(v21 + 16))(v1, v6, v18);
    sub_1D4F266E4(v6, type metadata accessor for MusicCatalogSearchResponse.InternalResults);
    __swift_storeEnumTagSinglePayload(v1, 0, 1, v18);
    return (*(v20 + 32))(a1, v1, v18);
  }

  return result;
}

uint64_t sub_1D4F2380C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB7F0, &qword_1D561EAB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  sub_1D560DFA8();
  v5 = sub_1D560CD68();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1D4E50004(v4, &qword_1EC7EB7F0, &qword_1D561EAB0);
    v6 = type metadata accessor for MusicCatalogSearchResponse.InternalResults(0);
    v7 = a1;
    v8 = 1;
  }

  else
  {
    sub_1D560CD58();
    (*(*(v5 - 8) + 8))(v4, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB7F8, &qword_1D561EAB8);
    v9 = type metadata accessor for MusicCatalogSearchResponse.InternalResults(0);
    v8 = swift_dynamicCast() ^ 1;
    v7 = a1;
    v6 = v9;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v6);
}

uint64_t type metadata accessor for MusicCatalogSearchResponse.InternalResults(uint64_t a1)
{
  result = qword_1EC7EB790;
  if (!qword_1EC7EB790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4F239C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  sub_1D4E69910(a1, v2, &qword_1EC7EA788, &unk_1D56223A0);
  v13 = OUTLINED_FUNCTION_20_22();
  if (__swift_getEnumTagSinglePayload(v13, v14, v7) == 1)
  {
    sub_1D5613C48();
    sub_1D560D9F8();
    sub_1D4E50004(a1, &qword_1EC7EA788, &unk_1D56223A0);
    v15 = OUTLINED_FUNCTION_20_22();
    if (__swift_getEnumTagSinglePayload(v15, v16, v7) != 1)
    {
      sub_1D4E50004(v2, &qword_1EC7EA788, &unk_1D56223A0);
    }
  }

  else
  {
    sub_1D4E50004(a1, &qword_1EC7EA788, &unk_1D56223A0);
    (*(v9 + 32))(v12, v2, v7);
  }

  return (*(v9 + 32))(a2, v12, v7);
}

uint64_t static MusicCatalogSearchResponse.InternalResults.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1D5613C48();
  OUTLINED_FUNCTION_3_13();
  sub_1D4F2673C(v2, v3, MEMORY[0x1E6976DE0]);

  return sub_1D560DAA8();
}

uint64_t MusicCatalogSearchResponse.InternalResults.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  sub_1D4F21B30();

  return sub_1D5614CB8();
}

uint64_t MusicCatalogSearchResponse.InternalResults.hashValue.getter()
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  sub_1D4F21B30();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D4F23CF0(uint64_t a1)
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  sub_1D4F21B30();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D4F23D50()
{
  v0 = type metadata accessor for MusicCatalogSearchResponse.InternalResults(0);
  result = sub_1D4F2673C(&qword_1EC7EB780, type metadata accessor for MusicCatalogSearchResponse.InternalResults, &protocol conformance descriptor for MusicCatalogSearchResponse.InternalResults);
  qword_1EC7EB738 = v0;
  unk_1EC7EB740 = result;
  return result;
}

uint64_t static MusicCatalogSearchResponse.extendedResultsType.getter()
{
  if (qword_1EC7E89A0 != -1)
  {
    swift_once();
  }

  return qword_1EC7EB738;
}

uint64_t MusicCatalogSearchResponse.InternalResults.init<A>(for:configuration:rawExtendedResults:requestedTypeValues:with:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v79 = a8;
  v83 = a3;
  v84 = a7;
  v86 = a5;
  v76 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v74 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4();
  v78 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v77 = &v74 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v74 - v22;
  sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v80 = v25;
  v81 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_59_0();
  v75 = v26 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v74 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v31);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_16_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v33);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v74 - v35;
  v82 = a4;
  sub_1D560E8F8();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  v38 = OUTLINED_FUNCTION_20_22();
  if (__swift_getEnumTagSinglePayload(v38, v39, v37) == 1)
  {
    sub_1D4E50004(v9, &qword_1EC7EA798, &unk_1D5622EF0);
    v40 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA828, &qword_1D5623400);
    sub_1D5612378();
    (*(*(v37 - 8) + 8))(v9, v37);
    v40 = 0;
  }

  __swift_storeEnumTagSinglePayload(v36, v40, 1, v16);
  OUTLINED_FUNCTION_2_6();
  v41 = v86;
  v42 = v86;
  if (!sub_1D4F23558(v43, v44, v45, v46))
  {
    v74 = v23;
    sub_1D560D918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB758, &unk_1D561E8D0);
    OUTLINED_FUNCTION_1_25();
    sub_1D4E62A60(v47, &qword_1EC7EB758, &unk_1D561E8D0, v48);
    v49 = sub_1D5614FC8();
    if (v49 == 2)
    {
      MEMORY[0x1EEE9AC00](v49);
      v73 = v30;
      v42 = sub_1D4F25444(sub_1D4F261BC, (&v74 - 4));
    }

    else
    {
      v42 = v49;
    }

    (*(v80 + 8))(v30, v81);
    v41 = v86;
    v23 = v74;
    if (!v42)
    {
      sub_1D4E50004(v36, &qword_1EC7EA7F0, &unk_1D561E8C0);
      v50 = OUTLINED_FUNCTION_24_7();
      __swift_storeEnumTagSinglePayload(v50, v51, 1, v16);
    }
  }

  v52 = OUTLINED_FUNCTION_24_7();
  if (__swift_getEnumTagSinglePayload(v52, v53, v16))
  {

    v54 = sub_1D560CD98();
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v54);
    v56 = v83;
    v55 = v84;
  }

  else
  {
    v74 = a6;
    v57 = OUTLINED_FUNCTION_13_16();
    v58(v57);
    v59 = v75;
    sub_1D560D918();
    v56 = v83;
    v55 = v84;
    sub_1D5612388();

    (*(v80 + 8))(v59, v81);
    v60 = a9;
    a9 = v86;
    (*(v60 + 8))(v42, v16);
  }

  v61 = 1;
  v62 = OUTLINED_FUNCTION_24_7();
  if (!__swift_getEnumTagSinglePayload(v62, v63, v16))
  {
    v64 = OUTLINED_FUNCTION_13_16();
    v65(v64);
    sub_1D5613C48();
    OUTLINED_FUNCTION_3_13();
    sub_1D4F2673C(v66, v67, MEMORY[0x1E6976DB0]);
    v73 = v79;
    sub_1D5612368();
    (*(a9 + 8))(v42, v16);
    a9 = v86;
    v61 = 0;
  }

  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v69 = v85;
  __swift_storeEnumTagSinglePayload(v85, v61, 1, v68);
  sub_1D4F239C0(v69, a9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB758, &unk_1D561E8D0);
  OUTLINED_FUNCTION_14();
  (*(v70 + 8))(v41);
  sub_1D560E918();
  OUTLINED_FUNCTION_14();
  (*(v71 + 8))(v82);
  (*(*(v55 - 8) + 8))(v56, v55);
  sub_1D4E50004(v23, &qword_1EC7EA7D8, &unk_1D561E8B0);
  return sub_1D4E50004(v36, &qword_1EC7EA7F0, &unk_1D561E8C0);
}

uint64_t sub_1D4F2451C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getAtKeyPath();
}

void MusicCatalogSearchResponse.InternalResults.convertToCatalogSearchRawExtendedResults<A>(for:requestedTypeValues:configuration:)()
{
  OUTLINED_FUNCTION_25_1();
  v41 = v0;
  v42 = v1;
  v40 = v2;
  v38 = v3;
  v36 = v4;
  v39 = sub_1D5613578();
  OUTLINED_FUNCTION_4();
  v37 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v35 = v8 - v7;
  v9 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_59_0();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33 - v22;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v34);
  sub_1D560D918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB758, &unk_1D561E8D0);
  OUTLINED_FUNCTION_1_25();
  sub_1D4E62A60(v24, &qword_1EC7EB758, &unk_1D561E8D0, v25);
  v26 = sub_1D5614FC8();
  if (v26 == 2)
  {
    MEMORY[0x1EEE9AC00](v26);
    *(&v33 - 2) = v15;
    v27 = sub_1D4F25444(sub_1D4F26784, (&v33 - 4));
  }

  else
  {
    v27 = v26;
  }

  (*(v11 + 8))(v15, v9);
  if (v27)
  {
    v28 = v37;
    v29 = v35;
    v30 = v39;
    (*(v37 + 104))(v35, *MEMORY[0x1E6976A70], v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
    OUTLINED_FUNCTION_3_13();
    sub_1D4F2673C(v31, v32, MEMORY[0x1E6976DB0]);
    sub_1D560DA88();
    (*(v28 + 8))(v29, v30);
    sub_1D4E50004(v23, &qword_1EC7EA798, &unk_1D5622EF0);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v34);
    sub_1D4F26210(v20, v23);
  }

  sub_1D4E69910(v23, v20, &qword_1EC7EA798, &unk_1D5622EF0);
  sub_1D560E908();
  sub_1D4E50004(v23, &qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_26();
}

uint64_t MusicCatalogSearchResponse.InternalResults.appendExtendedDescription(requestedTypeValues:forDebugging:to:)(uint64_t a1, int a2, uint64_t a3)
{
  v30 = a3;
  v29 = a2;
  v4 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v28 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB768, &qword_1D561E8E0) - 8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB758, &unk_1D561E8D0);
  OUTLINED_FUNCTION_14();
  (*(v18 + 16))(v16, a1, v17);
  v19 = *(v13 + 44);
  OUTLINED_FUNCTION_2_6();
  sub_1D4E62A60(v20, &qword_1EC7EB758, &unk_1D561E8D0, v21);
  sub_1D5615608();
  v31 = (v28 + 16);
  v22 = (v28 + 8);
  while (1)
  {
    sub_1D5615648();
    if (*&v16[v19] == v32[0])
    {
      break;
    }

    v23 = sub_1D5615688();
    (*v31)(v12);
    v24 = OUTLINED_FUNCTION_10_11();
    (v23)(v24);
    sub_1D5615658();
    sub_1D560D918();
    sub_1D4F2673C(&qword_1EDD53C20, MEMORY[0x1E6974F80], MEMORY[0x1E6974F90]);
    LOBYTE(v23) = sub_1D5614D18();
    v25 = *v22;
    (*v22)(v12, v4);
    v25(v9, v4);
    if (v23)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
      sub_1D4E62A60(&qword_1EC7EB778, &qword_1EC7EA378, &qword_1D561D140, MEMORY[0x1E6975018]);
      sub_1D56155F8();
    }
  }

  return sub_1D4E50004(v16, &qword_1EC7EB768, &qword_1D561E8E0);
}

uint64_t MusicCatalogSearchResponse.InternalResults.libraryMapped(policy:scope:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v6);
  v3[3] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v3[4] = v7;
  OUTLINED_FUNCTION_4();
  v3[5] = v8;
  v9 = swift_task_alloc();
  v3[6] = v9;
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_1D4F24DF8;

  return MEMORY[0x1EEDCE928](v9, a2, a3, v7);
}

uint64_t sub_1D4F24DF8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D4F25038;
  }

  else
  {
    v2 = sub_1D4F24F0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D4F24F0C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  (*(v2 + 16))(v3, v1, v4);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  v5[3] = type metadata accessor for MusicCatalogSearchResponse.InternalResults(0);
  v5[4] = sub_1D4F2673C(&qword_1EC7EB780, type metadata accessor for MusicCatalogSearchResponse.InternalResults, &protocol conformance descriptor for MusicCatalogSearchResponse.InternalResults);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  sub_1D4F239C0(v3, boxed_opaque_existential_0);
  (*(v2 + 8))(v1, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D4F25038()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D4F250A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB7D8, &qword_1D561EA40);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB7E0, &qword_1D561EA48) - 8);
  v1 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D561C050;
  v3 = v2 + v1;
  v4 = v0[14];
  sub_1D560D918();
  *(v3 + v4) = swift_getKeyPath();
  sub_1D560D9A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB7E8, &qword_1D561EA78);
  sub_1D4F2673C(&qword_1EDD53C28, MEMORY[0x1E6974F80], MEMORY[0x1E6974F88]);
  result = sub_1D5614BD8();
  qword_1EC7EB748 = result;
  return result;
}

uint64_t static MusicCatalogSearchResponse.InternalResults.extendedResultKeyPaths.getter()
{
  if (qword_1EC7E89A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D4F25278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D4ECF3E8;

  return MusicCatalogSearchResponse.InternalResults.libraryMapped(policy:scope:)(a1, a2, a3);
}

uint64_t sub_1D4F2532C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4F2673C(&qword_1EC7EB788, type metadata accessor for MusicCatalogSearchResponse.InternalResults, &protocol conformance descriptor for MusicCatalogSearchResponse.InternalResults);

  return MEMORY[0x1EEDCEFE0](a1, a3, a2, a4, v8);
}

uint64_t sub_1D4F253C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4F2673C(&qword_1EC7EB7A8, type metadata accessor for MusicCatalogSearchResponse.InternalResults, &protocol conformance descriptor for MusicCatalogSearchResponse.InternalResults);

  return MEMORY[0x1EEDCEFD8](a1, a2, a3, v6);
}

BOOL sub_1D4F25444(uint64_t (*a1)(char *), uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v27 = sub_1D560D9A8();
  v3 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB758, &unk_1D561E8D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB768, &qword_1D561E8E0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  (*(v6 + 16))(v8, v2, v5);
  sub_1D4E62A60(&qword_1EC7EB760, &qword_1EC7EB758, &unk_1D561E8D0, MEMORY[0x1E6975308]);
  sub_1D5614F98();
  v13 = *(v10 + 44);
  sub_1D4E62A60(&qword_1EC7EB770, &qword_1EC7EB758, &unk_1D561E8D0, MEMORY[0x1E6975318]);
  v24 = (v3 + 16);
  v25 = (v3 + 8);
  do
  {
    sub_1D5615648();
    v14 = v31[0];
    v30 = *&v12[v13];
    if (v30 == v31[0])
    {
      break;
    }

    v15 = sub_1D5615688();
    v16 = v5;
    v17 = v26;
    v18 = v27;
    (*v24)(v26);
    v15(v31, 0);
    sub_1D5615658();
    v19 = v32;
    v20 = v28(v17);
    v32 = v19;
    if (v19)
    {
      (*v25)(v17, v18);
      break;
    }

    v21 = v20;
    (*v25)(v17, v18);
    v5 = v16;
  }

  while ((v21 & 1) == 0);
  sub_1D4E50004(v12, &qword_1EC7EB768, &qword_1D561E8E0);
  return v30 != v14;
}

void sub_1D4F257A8()
{
  OUTLINED_FUNCTION_25_1();
  v26 = v3;
  sub_1D560DB08();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v5 = sub_1D560E728();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB7C0, &unk_1D561EA28) - 8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_11_13();
  v13(v12);
  v14 = MEMORY[0x1E6975358];
  v15 = sub_1D4F2673C(&qword_1EDD5D748, MEMORY[0x1E6975358], MEMORY[0x1E6975360]);
  OUTLINED_FUNCTION_27_7(v15);
  v16 = *(v10 + 44);
  sub_1D4F2673C(&qword_1EDD5D740, v14, MEMORY[0x1E6975368]);
  OUTLINED_FUNCTION_22_10();
  do
  {
    OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_23_13();
    if (v17)
    {
      break;
    }

    OUTLINED_FUNCTION_21_12();
    v18 = OUTLINED_FUNCTION_12_18();
    v19(v18);
    v20 = OUTLINED_FUNCTION_10_11();
    v0(v20);
    OUTLINED_FUNCTION_18_11();
    v21 = v26(v5);
    if (v1)
    {
      v24 = OUTLINED_FUNCTION_6_19();
      v25(v24);
      break;
    }

    v0 = v21;
    v22 = OUTLINED_FUNCTION_6_19();
    v23(v22);
    v5 = v16;
    v16 = v9;
  }

  while ((v0 & 1) == 0);
  sub_1D4E50004(v2, &qword_1EC7EB7C0, &unk_1D561EA28);
  OUTLINED_FUNCTION_19_12();
  OUTLINED_FUNCTION_26();
}

BOOL sub_1D4F25A04()
{
  OUTLINED_FUNCTION_15_16();
  do
  {
    if (!--v2)
    {
      break;
    }

    v4 = *v3;
    v8[0] = *(v3 - 1);
    v8[1] = v4;

    v5 = v1(v8);
    if (v0)
    {

      return v2 != 0;
    }

    v6 = v5;
    v3 += 2;
  }

  while ((v6 & 1) == 0);
  return v2 != 0;
}

void sub_1D4F25AD0()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v0;
  v27 = v3;
  v4 = type metadata accessor for GenericMusicItem(0);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  OUTLINED_FUNCTION_4();
  v11 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB7C8, &qword_1D561EA38) - 8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  (*(v11 + 16))(v14, v2, v9);
  sub_1D4E62A60(&qword_1EC7EB7D0, &qword_1EC7EA650, &qword_1D561C540, MEMORY[0x1E6975008]);
  sub_1D5614F98();
  v19 = *(v15 + 44);
  OUTLINED_FUNCTION_14_1();
  sub_1D4E62A60(v20, &qword_1EC7EA650, &qword_1D561C540, v21);
  do
  {
    sub_1D5615648();
    if (*&v18[v19] == v28)
    {
      break;
    }

    v22 = sub_1D5615688();
    sub_1D4F26680(v23, v8);
    v24 = OUTLINED_FUNCTION_10_11();
    v22(v24);
    sub_1D5615658();
    v25 = v27(v8);
    sub_1D4F266E4(v8, type metadata accessor for GenericMusicItem);
    if (v1)
    {
      break;
    }
  }

  while ((v25 & 1) == 0);
  sub_1D4E50004(v18, &qword_1EC7EB7C8, &qword_1D561EA38);
  OUTLINED_FUNCTION_26();
}

BOOL sub_1D4F25D94(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = *((a4)(0, a2) - 8);
    v12 = a1(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v12 & 1) == 0);
  return v9 != v10;
}

uint64_t sub_1D4F25E78(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = sub_1D4E62628(a3);
  v6 = result;
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      return v6 != v8;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1DA6EB9B0](v7, a3);
      v9 = result;
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v12 = v9;
    v10 = a1(&v12);

    if (!v3)
    {
      v7 = v8 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return v6 != v8;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_1D4F25F74()
{
  OUTLINED_FUNCTION_25_1();
  v32 = v3;
  v33 = v4;
  v31[4] = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v31[3] = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB7B0, &qword_1D561EA10);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB7B8, &unk_1D561EA18) - 8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_11_13();
  v15(v14);
  OUTLINED_FUNCTION_1_25();
  v18 = sub_1D4E62A60(v16, &qword_1EC7EB7B0, &qword_1D561EA10, v17);
  OUTLINED_FUNCTION_27_7(v18);
  v19 = *(v12 + 44);
  OUTLINED_FUNCTION_2_6();
  sub_1D4E62A60(v20, &qword_1EC7EB7B0, &qword_1D561EA10, v21);
  OUTLINED_FUNCTION_22_10();
  do
  {
    OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_23_13();
    if (v22)
    {
      break;
    }

    OUTLINED_FUNCTION_21_12();
    v23 = OUTLINED_FUNCTION_12_18();
    v24(v23);
    v25 = OUTLINED_FUNCTION_10_11();
    v0(v25);
    OUTLINED_FUNCTION_18_11();
    v26 = v32(v8);
    if (v1)
    {
      v29 = OUTLINED_FUNCTION_6_19();
      v30(v29);
      break;
    }

    v0 = v26;
    v27 = OUTLINED_FUNCTION_6_19();
    v28(v27);
    v8 = v19;
    v19 = v11;
  }

  while ((v0 & 1) == 0);
  sub_1D4E50004(v2, &qword_1EC7EB7B8, &unk_1D561EA18);
  OUTLINED_FUNCTION_19_12();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4F26210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D4F262F0(uint64_t a1)
{
  sub_1D4F2635C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D4F2635C(uint64_t a1)
{
  if (!qword_1EC7EB7A0)
  {
    sub_1D5613C48();
    v1 = sub_1D560DAB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7EB7A0);
    }
  }
}

uint64_t sub_1D4F2641C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_1D4F2673C(a4, a5, a6);
  return sub_1D5614D18() & 1;
}

uint64_t sub_1D4F26594(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF10, &qword_1D561DCE0);
  sub_1D4E62A60(&qword_1EC7EAF20, &qword_1EC7EAF10, &qword_1D561DCE0, MEMORY[0x1E6974D40]);
  return sub_1D5614D18() & 1;
}

uint64_t sub_1D4F26680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMusicItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F266E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D4F2673C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_28_11()
{

  return sub_1D5615648();
}

uint64_t sub_1D4F2688C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561C770;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB828, &unk_1D561EB78);
  swift_getKeyPath();
  v1 = sub_1D5612ED8();

  *(v0 + 32) = v1;
  swift_getKeyPath();
  v2 = sub_1D5612ED8();

  *(v0 + 40) = v2;
  qword_1EC87BE58 = v0;
  return result;
}

uint64_t sub_1D4F26948@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D4F269A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561EAC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB818, &qword_1D561EB48);
  swift_getKeyPath();
  sub_1D4F27094(&qword_1EC7EB820, type metadata accessor for Playlist.Entry.Reaction, &protocol conformance descriptor for Playlist.Entry.Reaction);
  v1 = sub_1D5612D58();

  *(v0 + 32) = v1;
  qword_1EC87BE60 = v0;
  return result;
}

uint64_t sub_1D4F26A84(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

id sub_1D4F26ADC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6977660]);

  return [v0 init];
}

uint64_t sub_1D4F26B14(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB830, &unk_1D5678350);
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    v3 = qword_1EC7E8D60;

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_2_7(&qword_1EC7E8D60);
    }

    v43 = qword_1EC7EF458;
    v4 = sub_1D4F270DC();
    OUTLINED_FUNCTION_3(v4, v5, v6, v7, v8, v9, v10, v11, v37, v39, v41, v2, v43);
    if (sub_1D5614D18())
    {
      goto LABEL_8;
    }

    v12 = qword_1EC7E8D68;

    if (v12 != -1)
    {
      v13 = OUTLINED_FUNCTION_1_26(&qword_1EC7E8D68);
    }

    OUTLINED_FUNCTION_3(v13, v14, v15, v16, v17, v18, v19, v20, v38, v40, v42, v2, qword_1EC7EF460);
    v21 = sub_1D5614D18();

    if (v21)
    {
LABEL_8:

      return 0xD000000000000035;
    }

    OUTLINED_FUNCTION_0();
    sub_1D5615B68();
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_5_5();
    MEMORY[0x1DA6EAC70](0xD000000000000033);
    v32 = OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_10_0(v32, v33, v32, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v34, v35, v36);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_6_20();
  }

  else
  {
    OUTLINED_FUNCTION_0();
    sub_1D5615B68();
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_5_5();
    MEMORY[0x1DA6EAC70]();
    v23 = OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_10_0(v23, v24, v23, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v25, v26, v27);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_6_20();
  }

  result = OUTLINED_FUNCTION_8_19("Fatal error", v28, v29, v30, v31, "MusicKitInternal/PlaylistEntryReaction+LegacyModelLibraryRequestable.swift");
  __break(1u);
  return result;
}

uint64_t sub_1D4F26D0C@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB830, &unk_1D5678350);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = qword_1EC7E8D60;

    if (v5 != -1)
    {
      OUTLINED_FUNCTION_2_7(&qword_1EC7E8D60);
    }

    v48 = qword_1EC7EF458;
    v6 = sub_1D4F270DC();
    OUTLINED_FUNCTION_3(v6, v7, v8, v9, v10, v11, v12, v13, v42, v44, v46, v4, v48);
    if (sub_1D5614D18())
    {
      v14 = MEMORY[0x1E69767D0];
LABEL_10:

      v25 = *v14;
      v26 = sub_1D5613158();
      (*(*(v26 - 8) + 104))(a2, v25, v26);
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v26);
    }

    v15 = qword_1EC7E8D68;

    if (v15 != -1)
    {
      v16 = OUTLINED_FUNCTION_1_26(&qword_1EC7E8D68);
    }

    OUTLINED_FUNCTION_3(v16, v17, v18, v19, v20, v21, v22, v23, v43, v45, v47, v4, qword_1EC7EF460);
    v24 = sub_1D5614D18();

    if (v24)
    {
      v14 = MEMORY[0x1E69767E0];
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0();
    sub_1D5615B68();
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_5_5();
    MEMORY[0x1DA6EAC70]();
    v37 = OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_10_0(v37, v38, v37, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v39, v40, v41);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_6_20();
  }

  else
  {
    OUTLINED_FUNCTION_0();
    sub_1D5615B68();
    OUTLINED_FUNCTION_7_2();
    MEMORY[0x1DA6EAC70](0x79747265706F7250, 0xE900000000000020);
    v28 = OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_10_0(v28, v29, v28, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v30, v31, v32);
    OUTLINED_FUNCTION_5_5();
    MEMORY[0x1DA6EAC70](0xD00000000000002BLL);
    OUTLINED_FUNCTION_6_20();
  }

  result = OUTLINED_FUNCTION_8_19("Fatal error", v33, v34, v35, v36, "MusicKitInternal/PlaylistEntryReaction+LegacyModelLibraryRequestable.swift");
  __break(1u);
  return result;
}

uint64_t sub_1D4F26FDC(void *a1)
{
  a1[1] = sub_1D4F27094(&qword_1EC7EB800, type metadata accessor for Playlist.Entry.Reaction, &protocol conformance descriptor for Playlist.Entry.Reaction);
  a1[2] = sub_1D4F27094(&qword_1EC7EB808, type metadata accessor for Playlist.Entry.Reaction, &protocol conformance descriptor for Playlist.Entry.Reaction);
  result = sub_1D4F27094(&qword_1EC7EB810, type metadata accessor for Playlist.Entry.Reaction, &protocol conformance descriptor for Playlist.Entry.Reaction);
  a1[3] = result;
  return result;
}

uint64_t sub_1D4F27094(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D4F270DC()
{
  result = qword_1EC7EB838;
  if (!qword_1EC7EB838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB830, &unk_1D5678350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB838);
  }

  return result;
}

void sub_1D4F27140(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for InternalMusicPlayer.Dialog.Action(0);
  OUTLINED_FUNCTION_1_27();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 musicKit_commandDialog_localizedTitle];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1D5614D68();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = [a1 musicKit_commandDialog_localizedMessage];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1D5614D68();
    v48 = v18;
  }

  else
  {
    v17 = 0;
    v48 = 0;
  }

  v19 = [a1 musicKit_commandDialog_actions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB878, &unk_1D561EE50);
  v20 = sub_1D5615168();

  v21 = sub_1D4F0B2D8(v20);
  v49 = v17;
  if (!v21)
  {
    swift_unknownObjectRelease();

    v25 = MEMORY[0x1E69E7CC0];
LABEL_24:
    *a2 = v12;
    a2[1] = v14;
    v43 = v48;
    a2[2] = v49;
    a2[3] = v43;
    a2[4] = v25;
    return;
  }

  v22 = v21;
  v47 = v14;
  OUTLINED_FUNCTION_4_14(v21, MEMORY[0x1E69E7CC0]);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v44 = v12;
    v45 = a1;
    v46 = a2;
    v24 = 0;
    v25 = v58;
    v53 = v20 & 0xC000000000000001;
    *&v23 = 136446210;
    v50 = v23;
    v54 = v22;
    v55 = v20;
    v51 = v2;
    do
    {
      if (v53)
      {
        v26 = MEMORY[0x1DA6EB9B0](v24, v20);
      }

      else
      {
        v26 = *(v20 + 8 * v24 + 32);
        swift_unknownObjectRetain();
      }

      v27 = [v26 musicKit:v44 commandDialogAction:v45localizedTitle];
      v28 = sub_1D5614D68();
      v30 = v29;

      *v9 = v28;
      *(v9 + 1) = v30;
      v31 = [v26 musicKit_commandDialogAction_type];
      if (v31 >= 3)
      {
        if (qword_1EDD54498 != -1)
        {
          OUTLINED_FUNCTION_0_21();
          swift_once();
        }

        v32 = sub_1D560C758();
        __swift_project_value_buffer(v32, qword_1EDD76AC0);
        v33 = sub_1D560C738();
        v34 = sub_1D56156C8();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v56 = v31;
          v57 = v52;
          *v35 = v50;
          type metadata accessor for MusicKit_SoftLinking_MPCPlayerCommandDialogActionType();
          v36 = sub_1D5614DB8();
          v38 = v9;
          v39 = v6;
          v40 = sub_1D4E6835C(v36, v37, &v57);

          *(v35 + 4) = v40;
          v6 = v39;
          v9 = v38;
          _os_log_impl(&dword_1D4E3F000, v33, v34, "Unhandled dialog action type returned %{public}s. Defaulting to regular.", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v52);
          OUTLINED_FUNCTION_122();
          OUTLINED_FUNCTION_122();
        }

        LOBYTE(v31) = 0;
      }

      v9[16] = v31;
      v57 = [v26 musicKit_commandDialogAction_commandRequest];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EB868, &unk_1D561EE40);
      sub_1D5612878();
      swift_unknownObjectRelease();
      _s6DialogV6ActionV17UnderlyingCommandOMa(0);
      swift_storeEnumTagMultiPayload();
      v58 = v25;
      v42 = *(v25 + 16);
      v41 = *(v25 + 24);
      if (v42 >= v41 >> 1)
      {
        OUTLINED_FUNCTION_3_14(v41);
        v25 = v58;
      }

      ++v24;
      *(v25 + 16) = v42 + 1;
      sub_1D4F2842C(v9, v25 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v42);
      v20 = v55;
    }

    while (v54 != v24);
    swift_unknownObjectRelease();

    a2 = v46;
    v14 = v47;
    v12 = v44;
    goto LABEL_24;
  }

  __break(1u);
}

void sub_1D4F27598(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for InternalMusicPlayer.Dialog.Action(0);
  OUTLINED_FUNCTION_1_27();
  v49 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D4F27E74(a1, &selRef_localizedTitle);
  v11 = v10;
  v12 = sub_1D4F27E74(a1, &selRef_localizedMessage);
  v14 = v13;
  v15 = [a1 actions];
  v53 = sub_1D4F283E8();
  v16 = sub_1D5615168();

  v17 = sub_1D4F0B2D8(v16);
  if (!v17)
  {

    v21 = MEMORY[0x1E69E7CC0];
LABEL_18:
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v12;
    a2[3] = v14;
    a2[4] = v21;
    return;
  }

  v18 = v17;
  v48 = v16;
  v46 = v14;
  OUTLINED_FUNCTION_4_14(v17, MEMORY[0x1E69E7CC0]);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v41 = v12;
    v42 = v11;
    v43 = v9;
    v44 = a1;
    v45 = a2;
    v20 = 0;
    v21 = v56;
    v23 = v48;
    v22 = v49;
    v51 = v48 & 0xC000000000000001;
    *&v19 = 136446210;
    v47 = v19;
    v52 = v18;
    do
    {
      if (v51)
      {
        v24 = MEMORY[0x1DA6EB9B0](v20, v23);
      }

      else
      {
        v24 = *(v23 + 8 * v20 + 32);
      }

      v25 = v24;
      v26 = [v24 title];
      v27 = sub_1D5614D68();
      v29 = v28;

      *v8 = v27;
      *(v8 + 1) = v29;
      v30 = [v25 type];
      if (v30 >= 3)
      {
        if (qword_1EDD54498 != -1)
        {
          OUTLINED_FUNCTION_0_21();
          swift_once();
        }

        v31 = sub_1D560C758();
        __swift_project_value_buffer(v31, qword_1EDD76AC0);
        v32 = sub_1D560C738();
        v33 = sub_1D56156C8();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v54 = v30;
          v55 = v50;
          *v34 = v47;
          type metadata accessor for MRSendCommandHandlerDialogActionType();
          v35 = sub_1D5614DB8();
          v37 = v2;
          v38 = sub_1D4E6835C(v35, v36, &v55);

          *(v34 + 4) = v38;
          v2 = v37;
          v22 = v49;
          _os_log_impl(&dword_1D4E3F000, v32, v33, "Unhandled dialog action type returned %{public}s. Defaulting to regular.", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v50);
          OUTLINED_FUNCTION_122();
          v23 = v48;
          OUTLINED_FUNCTION_122();
        }

        LOBYTE(v30) = 0;
      }

      v8[16] = v30;
      v55 = v25;
      sub_1D5612878();
      _s6DialogV6ActionV17UnderlyingCommandOMa(0);
      swift_storeEnumTagMultiPayload();
      v56 = v21;
      v40 = *(v21 + 16);
      v39 = *(v21 + 24);
      if (v40 >= v39 >> 1)
      {
        OUTLINED_FUNCTION_3_14(v39);
        v21 = v56;
      }

      ++v20;
      *(v21 + 16) = v40 + 1;
      sub_1D4F2842C(v8, v21 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v40);
    }

    while (v52 != v20);

    a2 = v45;
    v14 = v46;
    v11 = v42;
    v9 = v43;
    v12 = v41;
    goto LABEL_18;
  }

  __break(1u);
}

void static InternalMusicPlayer.Dialog.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = a1[1];
  v22 = a1[2];
  v23 = a1[3];
  v24 = a2[1];
  v25 = a2[2];
  v26 = a2[3];
  if (!v21)
  {
    if (v24)
    {
      return;
    }

LABEL_10:
    if (v23)
    {
      if (!v26)
      {
        return;
      }

      v28 = v22 == v25 && v23 == v26;
      if (!v28 && (sub_1D5616168() & 1) == 0)
      {
        return;
      }
    }

    else if (v26)
    {
      return;
    }

    v29 = OUTLINED_FUNCTION_71();

    sub_1D4EFA4E8(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    return;
  }

  if (v24)
  {
    v27 = *a1 == *a2 && v21 == v24;
    if (v27 || (sub_1D5616168() & 1) != 0)
    {
      goto LABEL_10;
    }
  }
}

uint64_t InternalMusicPlayer.Dialog.hash(into:)(uint64_t a1)
{
  v4 = v1[3];
  v3 = v1[4];
  if (v1[1])
  {
    sub_1D56162F8();
    sub_1D5614E28();
    if (v4)
    {
LABEL_3:
      sub_1D56162F8();
      sub_1D5614E28();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D56162F8();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_1D56162F8();
LABEL_6:

  return sub_1D4F0893C(a1, v3);
}

uint64_t InternalMusicPlayer.Dialog.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[4];
  sub_1D56162D8();
  sub_1D56162F8();
  if (v1)
  {
    sub_1D5614E28();
  }

  sub_1D56162F8();
  if (v2)
  {
    sub_1D5614E28();
  }

  sub_1D4F0893C(v5, v3);
  return sub_1D5616328();
}

uint64_t sub_1D4F27C10(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_1D56162D8();
  InternalMusicPlayer.Dialog.hash(into:)(v5);
  return sub_1D5616328();
}

BOOL static InternalMusicPlayer.Dialog.Action.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  v5 = sub_1D5616168();
  result = 0;
  if (v5)
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  return result;
}

uint64_t InternalMusicPlayer.Dialog.Action.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  MEMORY[0x1DA6EC0D0](*(v0 + 16));
  return sub_1D5616328();
}

uint64_t sub_1D4F27D9C(uint64_t a1)
{
  sub_1D56162D8();
  InternalMusicPlayer.Dialog.Action.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t InternalMusicPlayer.Dialog.Action.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D4F27E74(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1D5614D68();
  }

  return OUTLINED_FUNCTION_71();
}

unint64_t sub_1D4F27ED4()
{
  result = qword_1EC7EB840;
  if (!qword_1EC7EB840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB840);
  }

  return result;
}

unint64_t sub_1D4F27F2C()
{
  result = qword_1EC7EB848;
  if (!qword_1EC7EB848)
  {
    type metadata accessor for InternalMusicPlayer.Dialog.Action(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB848);
  }

  return result;
}

unint64_t sub_1D4F27FA8()
{
  result = qword_1EC7EB850;
  if (!qword_1EC7EB850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB858, &qword_1D561ED10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB850);
  }

  return result;
}

unint64_t sub_1D4F28010()
{
  result = qword_1EC7EB860;
  if (!qword_1EC7EB860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB860);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D4F28078(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1D4F280B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D4F28158(uint64_t a1)
{
  result = _s6DialogV6ActionV17UnderlyingCommandOMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s6DialogV6ActionV4KindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1D4F282B8(uint64_t a1)
{
  sub_1D4F2832C(319);
  if (v1 <= 0x3F)
  {
    sub_1D4F28390(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D4F2832C(uint64_t a1)
{
  if (!qword_1EDD53080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC7EB868, &unk_1D561EE40);
    v1 = sub_1D5612868();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD53080);
    }
  }
}

void sub_1D4F28390(uint64_t a1)
{
  if (!qword_1EDD53070)
  {
    sub_1D4F283E8();
    v1 = sub_1D5612868();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD53070);
    }
  }
}

unint64_t sub_1D4F283E8()
{
  result = qword_1EDD52648;
  if (!qword_1EDD52648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD52648);
  }

  return result;
}

uint64_t sub_1D4F2842C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalMusicPlayer.Dialog.Action(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static VideoLocale.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 34);
  v23 = *(a1 + 35);
  v24 = *(a1 + 33);
  v20 = *(a1 + 37);
  v18 = *(a1 + 38);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  v10 = *(a2 + 34);
  v11 = *(a2 + 35);
  v21 = *(a2 + 36);
  v22 = *(a1 + 36);
  v19 = *(a2 + 37);
  v16 = *(a1 + 39);
  v17 = *(a2 + 38);
  v15 = *(a2 + 39);
  v12 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v12 || (sub_1D5616168() & 1) != 0)
  {
    v13 = v5 ^ v10;
    if (v2 == v6 && v3 == v7)
    {
      if ((v4 ^ v8 | v24 ^ v9 | v13))
      {
        return;
      }
    }

    else if ((v4 ^ v8) & 1 | ((sub_1D5616168() & 1) == 0) | ((v24 ^ v9) | v13) & 1)
    {
      return;
    }

    if (((v23 ^ v11) & 1) == 0 && ((v22 ^ v21) & 1) == 0 && ((v20 ^ v19) & 1) == 0 && ((v18 ^ v17) & 1) == 0 && ((v16 ^ v15) & 1) == 0)
    {

      sub_1D4F286E0();
    }
  }
}

void sub_1D4F286E0()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_15_14();
  sub_1D5614A88();
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_13();
  v6 = MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_35_14(v6, v7, v8, v9, v10, v11, v12, v13, v44);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB928, &qword_1D561F108);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_112_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_78_3();
  if (v0 != v1 && (OUTLINED_FUNCTION_197(), v19))
  {
    v45 = v17;
    v46 = v18;
    v20 = 0;
    OUTLINED_FUNCTION_130_1();
    OUTLINED_FUNCTION_3_15();
    while (v21)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_11:
      v23 = OUTLINED_FUNCTION_4_15();
      v24(v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB930, &unk_1D561F110);
      OUTLINED_FUNCTION_100_1();
      v26 = OUTLINED_FUNCTION_160_1(v25);
      v27(v26);
      OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_151_2(v28, v29, v30, &qword_1EC7EB930);
LABEL_12:
      sub_1D4F39A1C(v46, v45, &qword_1EC7EB928, &qword_1D561F108);
      v31 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v31);
      if (v19)
      {
        goto LABEL_18;
      }

      v32 = OUTLINED_FUNCTION_16_15();
      v33(v32);
      v34 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v34, v35);
      OUTLINED_FUNCTION_94_2();
      if ((v45 & 1) == 0)
      {
        v42 = OUTLINED_FUNCTION_38_11();
        v43(v42);
        goto LABEL_18;
      }

      v36 = OUTLINED_FUNCTION_150_4();
      v37(v36);
      OUTLINED_FUNCTION_73_4();
      sub_1D4F39A68(&qword_1EC7EBED0, v38, MEMORY[0x1E69774D8]);
      OUTLINED_FUNCTION_159_0();
      sub_1D5614D18();
      v39 = OUTLINED_FUNCTION_181_0();
      v2(v39);
      v40 = OUTLINED_FUNCTION_200();
      v2(v40);
      v21 = v47;
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v3)
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB930, &unk_1D561F110);
        OUTLINED_FUNCTION_140_2(v41);
        v47 = 0;
        goto LABEL_12;
      }

      ++v20;
      if (*(v0 + 8 * v22))
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F289B0()
{
  OUTLINED_FUNCTION_47();
  if (v7 != v8 && (OUTLINED_FUNCTION_116_2(), v9))
  {
    v10 = 0;
    OUTLINED_FUNCTION_201_0();
    OUTLINED_FUNCTION_15_0();
    v13 = v12 & v11;
    OUTLINED_FUNCTION_163_3();
    while (v13)
    {
      OUTLINED_FUNCTION_145_5();
LABEL_12:
      OUTLINED_FUNCTION_121_1();

      sub_1D4E4EFA0(v2, v3);
      OUTLINED_FUNCTION_188_1();
      if ((v4 & 1) == 0)
      {

        goto LABEL_17;
      }

      v2 = *(*(v0 + 56) + 8 * v2);

      v3 = sub_1D4F28AA4(v17, v1);

      if ((v3 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v14 = v10;
    while (1)
    {
      v10 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v5 + 8 * v10))
      {
        OUTLINED_FUNCTION_113_2();
        v13 = v16 & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    OUTLINED_FUNCTION_46();
  }
}

uint64_t sub_1D4F28AA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA758, &unk_1D561CA20);
  v66 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD40, &unk_1D563AE30);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v59 = (&v55 - v13);
  v60 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v60 + 16))
  {
    return 0;
  }

  v14 = 0;
  v56 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v62 = v66 + 16;
  v63 = (v66 + 32);
  v57 = (v66 + 8);
  v58 = v7;
  while (v20)
  {
    v64 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v14 << 6);
LABEL_13:
    v26 = (*(v56 + 48) + 16 * v22);
    v27 = *v26;
    v28 = v26[1];
    v30 = v65;
    v29 = v66;
    (*(v66 + 16))(v65, *(v56 + 56) + *(v66 + 72) * v22, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD48, &unk_1D561F300);
    v32 = *(v31 + 48);
    v33 = v61;
    *v61 = v27;
    *(v33 + 1) = v28;
    v23 = v33;
    (*(v29 + 32))(&v33[v32], v30, v4);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v31);

LABEL_14:
    v34 = v23;
    v35 = v59;
    sub_1D4F39A1C(v34, v59, &qword_1EC7EBD40, &unk_1D563AE30);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD48, &unk_1D561F300);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v36);
    v38 = EnumTagSinglePayload == 1;
    if (EnumTagSinglePayload == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v60;
    v43 = v58;
    (*v63)(v58, v35 + v39, v4);
    v44 = sub_1D4E4EFA0(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v57)(v43, v4);
      return 0;
    }

    v47 = v66;
    v48 = *(v42 + 56) + *(v66 + 72) * v44;
    v49 = v4;
    v50 = v65;
    (*(v66 + 16))(v65, v48, v49);
    sub_1D4F391BC();
    v51 = sub_1D5614D18();
    v52 = *(v47 + 8);
    v53 = v50;
    v4 = v49;
    v52(v53, v49);
    result = (v52)(v43, v49);
    v20 = v64;
    if ((v51 & 1) == 0)
    {
      return v38;
    }
  }

  v23 = v61;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD48, &unk_1D561F300);
      __swift_storeEnumTagSinglePayload(v23, 1, 1, v54);
      v64 = 0;
      goto LABEL_14;
    }

    v25 = *(v16 + 8 * v24);
    ++v14;
    if (v25)
    {
      v64 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1D4F28F1C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE68, &qword_1D561F390);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE70, &qword_1D561F398);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EBE68, &qword_1D561F390);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F39858();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (qword_1D561F398)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (qword_1D561F398)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F29174()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE40, &qword_1D561F370);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE48, &qword_1D561F378);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE50, &unk_1D561F380);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EBE48, &qword_1D561F378);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F3990C();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (unk_1D561F380)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (unk_1D561F380)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F293F4()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB48, &unk_1D5630FE0);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB50, &qword_1D561F270);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB58, &qword_1D561F278);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EBB50, &qword_1D561F270);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F372CC();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (qword_1D561F278)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (qword_1D561F278)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2964C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB70, &qword_1D561F280);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB78, &qword_1D561F288);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB80, &unk_1D561F290);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EBB78, &qword_1D561F288);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F37380();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (unk_1D561F290)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (unk_1D561F290)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F298A4()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA768, &qword_1D5623380);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB940, &qword_1D561F120);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB948, &qword_1D561F128);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EB940, &qword_1D561F120);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F368F4();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (qword_1D561F128)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (qword_1D561F128)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F29AFC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C8, &unk_1D561F130);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB960, &unk_1D5623520);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB968, &unk_1D561F140);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EB960, &unk_1D5623520);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F369A8();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (unk_1D561F140)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (unk_1D561F140)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F29D54()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA820, &unk_1D5623370);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB980, &unk_1D561F150);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB988, &unk_1D5623510);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EB980, &unk_1D561F150);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F36A5C();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (unk_1D5623510)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (unk_1D5623510)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F29FAC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9A0, &qword_1D561F160);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9A8, &qword_1D561F168);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9B0, &unk_1D561F170);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EB9A8, &qword_1D561F168);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F36B10();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (unk_1D561F170)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (unk_1D561F170)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2A204()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA828, &qword_1D5623400);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9C8, &unk_1D561F180);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9D0, &qword_1D56234F0);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EB9C8, &unk_1D561F180);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F36BC4();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (qword_1D56234F0)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (qword_1D56234F0)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2A45C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9E8, &unk_1D561F190);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9F0, &unk_1D56234E0);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9F8, &unk_1D561F1A0);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EB9F0, &unk_1D56234E0);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F36C78();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (unk_1D561F1A0)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (unk_1D561F1A0)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2A6B4()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB98, &unk_1D56234C0);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBA0, &unk_1D561F2A0);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBA8, &unk_1D56234D0);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EBBA0, &unk_1D561F2A0);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F37434();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (unk_1D56234D0)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (unk_1D56234D0)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2A90C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC8, &unk_1D56234B0);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBD0, &unk_1D561F2C0);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EBBC8, &unk_1D56234B0);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F374E8();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (unk_1D561F2C0)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (unk_1D561F2C0)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2AB64()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA10, &unk_1D5623490);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA18, &unk_1D561F1B0);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA20, &unk_1D56234A0);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EBA18, &unk_1D561F1B0);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F36D2C();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (unk_1D56234A0)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (unk_1D56234A0)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2ADBC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA38, &unk_1D5623480);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA40, &unk_1D561F1D0);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EBA38, &unk_1D5623480);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F36DE0();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (unk_1D561F1D0)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (unk_1D561F1D0)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2B014()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB328, &unk_1D561E030);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBE8, &unk_1D561F2D0);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBF0, &unk_1D5623470);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EBBE8, &unk_1D561F2D0);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F0AF20();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (unk_1D5623470)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (unk_1D5623470)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2B26C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA58, &unk_1D5634110);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA60, &qword_1D561F1E0);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA68, &qword_1D561F1E8);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EBA60, &qword_1D561F1E0);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F36E94();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (qword_1D561F1E8)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (qword_1D561F1E8)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2B4C4()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA80, &qword_1D561F1F0);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA88, &qword_1D561F1F8);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA90, &unk_1D561F200);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EBA88, &qword_1D561F1F8);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F36F48();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (unk_1D561F200)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (unk_1D561F200)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2B71C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAA8, &unk_1D56223D0);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAB0, &qword_1D561F210);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAB8, &qword_1D561F218);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EBAB0, &qword_1D561F210);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F36FFC();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (qword_1D561F218)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (qword_1D561F218)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2B974()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAD0, &qword_1D561F220);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAD8, &qword_1D561F228);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAE0, &unk_1D561F230);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EBAD8, &qword_1D561F228);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F370B0();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (unk_1D561F230)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (unk_1D561F230)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2BBCC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAF8, &qword_1D563B230);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB00, &qword_1D561F240);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB08, &qword_1D561F248);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EBB00, &qword_1D561F240);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F37164();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (qword_1D561F248)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (qword_1D561F248)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2BE24()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB20, &unk_1D561F250);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB28, &unk_1D5623440);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB30, &unk_1D561F260);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EBB28, &unk_1D5623440);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F37218();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (unk_1D561F260)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (unk_1D561F260)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2C07C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE80, &qword_1D561F3A0);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE88, &qword_1D561F3A8);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE90, &unk_1D561F3B0);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EBE88, &qword_1D561F3A8);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F39780();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (unk_1D561F3B0)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (unk_1D561F3B0)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2C2D4()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for VideoCredit(0);
  OUTLINED_FUNCTION_4();
  v43 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_161_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_77();
  if (v5 == v3 || v5[2] != v3[2])
  {
LABEL_33:
    OUTLINED_FUNCTION_46();
    return;
  }

  v10 = 0;
  v37 = v5 + 8;
  OUTLINED_FUNCTION_15_0();
  v14 = (v13 + 63) >> 6;
  v38 = v14;
  v39 = v5;
  if ((v12 & v11) != 0)
  {
    do
    {
      OUTLINED_FUNCTION_32_16();
      v40 = v16;
LABEL_10:
      v20 = v15 | (v10 << 6);
      v21 = *(v5[6] + 16 * v20 + 8);
      v22 = *(v5[7] + 8 * v20);

      if (!v21)
      {
        goto LABEL_33;
      }

      v23 = v6;
      OUTLINED_FUNCTION_176();
      v24 = sub_1D4F15A78();
      v26 = v25;

      if ((v26 & 1) == 0 || (v27 = *(v3[7] + 8 * v24), v28 = *(v27 + 16), v28 != *(v22 + 16)))
      {
LABEL_32:

        goto LABEL_33;
      }

      v6 = v23;
      if (v28 && v27 != v22)
      {
        v36 = v3;
        OUTLINED_FUNCTION_43_3();
        v41 = v22 + v29;
        v42 = v27 + v29;

        v30 = 0;
        while (v30 < *(v27 + 16))
        {
          v31 = *(v43 + 72) * v30;
          OUTLINED_FUNCTION_129_1();
          sub_1D4F399C0(v42 + v31, v1, v32);
          if (v30 >= *(v22 + 16))
          {
            goto LABEL_36;
          }

          sub_1D4F399C0(v41 + v31, v0, type metadata accessor for VideoCredit);
          v33 = *v1 == *v0 && v1[1] == v0[1];
          if (!v33 && (sub_1D5616168() & 1) == 0 || (sub_1D560BFB8() & 1) == 0)
          {
            sub_1D4F39B58();
            sub_1D4F39B58();
LABEL_31:

            goto LABEL_32;
          }

          sub_1D4F286E0();
          v35 = v34;
          sub_1D4F39B58();
          sub_1D4F39B58();
          if ((v35 & 1) == 0)
          {
            goto LABEL_31;
          }

          ++v30;
          v6 = v23;
          if (v28 == v30)
          {

            v3 = v36;
            goto LABEL_27;
          }
        }

        goto LABEL_35;
      }

LABEL_27:

      v14 = v38;
      v5 = v39;
    }

    while (v40);
  }

  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v14)
    {
      goto LABEL_33;
    }

    ++v17;
    if (v37[v10])
    {
      OUTLINED_FUNCTION_113_2();
      v40 = v19 & v18;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_1D4F2C624()
{
  OUTLINED_FUNCTION_47();
  v57 = v2;
  OUTLINED_FUNCTION_14_0(v3, v4, v5, v6);
  OUTLINED_FUNCTION_4();
  v59 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v56 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  if (v1 == v0 || v1[2] != v0[2])
  {
LABEL_25:
    OUTLINED_FUNCTION_46();
  }

  else
  {
    v13 = 0;
    v48 = v1 + 8;
    OUTLINED_FUNCTION_15_0();
    v17 = (v16 + 63) >> 6;
    v18 = v59 + 16;
    v55 = (v59 + 8);
    v49 = v17;
    v50 = v1;
    v60 = v19;
    if ((v15 & v14) != 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_32_16();
        v52 = v21;
LABEL_10:
        v25 = v20 | (v13 << 6);
        v26 = v1[7];
        v27 = (v1[6] + 16 * v25);
        v28 = *v27;
        v29 = v27[1];
        v30 = *(v26 + 8 * v25);

        v31 = sub_1D4E4EFA0(v28, v29);
        v33 = v32;

        if ((v33 & 1) == 0 || (v51 = v13, v58 = *(v0[7] + 8 * v31), v34 = *(v58 + 16), v34 != *(v30 + 16)))
        {
LABEL_24:

          goto LABEL_25;
        }

        v35 = v60;
        if (v34)
        {
          if (v58 != v30)
          {
            break;
          }
        }

LABEL_20:

        v17 = v49;
        v1 = v50;
        v13 = v51;
        if (!v52)
        {
          goto LABEL_5;
        }
      }

      v47 = v0;
      OUTLINED_FUNCTION_43_3();
      v53 = v30 + v37;
      v54 = v36 + v37;

      v38 = 0;
      while (v38 < *(v58 + 16))
      {
        v39 = *(v59 + 72) * v38;
        v40 = *(v59 + 16);
        v40(v12, v54 + v39, v35);
        if (v38 >= *(v30 + 16))
        {
          goto LABEL_28;
        }

        v41 = v18;
        v42 = v56;
        v43 = v41;
        v44 = (v40)(v56, v53 + v39, v35);
        v57(v44);
        v45 = sub_1D5614D18();
        v46 = *v55;
        (*v55)(v42, v60);
        v35 = v60;
        v46(v12, v60);
        if ((v45 & 1) == 0)
        {

          goto LABEL_24;
        }

        ++v38;
        v18 = v43;
        if (v34 == v38)
        {

          v0 = v47;
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_5:
      v22 = v13;
      while (1)
      {
        v13 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v13 >= v17)
        {
          goto LABEL_25;
        }

        ++v22;
        if (v48[v13])
        {
          OUTLINED_FUNCTION_113_2();
          v52 = v24 & v23;
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }
}

void sub_1D4F2C940()
{
  OUTLINED_FUNCTION_47();
  v4 = OUTLINED_FUNCTION_15_14();
  v5 = type metadata accessor for StorePlatformTVEpisode(v4);
  v6 = OUTLINED_FUNCTION_69(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_77();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8D0, &qword_1D561F0B0);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78_3();
  if (v0 != v1)
  {
    OUTLINED_FUNCTION_110_1();
    if (v12)
    {
      v40 = v11;
      OUTLINED_FUNCTION_130_1();
      OUTLINED_FUNCTION_9_15();
      v15 = v14 >> 6;
      do
      {
        if (v13)
        {
          OUTLINED_FUNCTION_32_16();
          OUTLINED_FUNCTION_115_3();
LABEL_11:
          OUTLINED_FUNCTION_62_9();
          OUTLINED_FUNCTION_72_8();
          sub_1D4F399C0(v17, v2, v18);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8D8, &qword_1D561F0B8);
          OUTLINED_FUNCTION_100_1();
          *v0 = v1;
          v0[1] = v3;
          OUTLINED_FUNCTION_57_9();
          OUTLINED_FUNCTION_190_0(v19, v20);
          v21 = OUTLINED_FUNCTION_34_10();
          __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);

          LOBYTE(v1) = v40;
        }

        else
        {
          OUTLINED_FUNCTION_180_0();
          while (v15 > 1)
          {
            OUTLINED_FUNCTION_162_1();
            if (v16)
            {
              OUTLINED_FUNCTION_33_14();
              OUTLINED_FUNCTION_114_1();
              goto LABEL_11;
            }
          }

          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8D8, &qword_1D561F0B8);
          OUTLINED_FUNCTION_64_7(v39);
          v41 = 0;
        }

        v25 = OUTLINED_FUNCTION_128();
        sub_1D4F39A1C(v25, v26, &qword_1EC7EB8D0, &qword_1D561F0B0);
        v27 = OUTLINED_FUNCTION_161();
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
        OUTLINED_FUNCTION_81_2(v29);
        if (v12)
        {
          break;
        }

        OUTLINED_FUNCTION_80_3();
        OUTLINED_FUNCTION_57_9();
        OUTLINED_FUNCTION_194_0(v30, v31);
        v32 = OUTLINED_FUNCTION_111_3();
        sub_1D4E4EFA0(v32, v33);
        OUTLINED_FUNCTION_152_2();
        if (!v1)
        {
          sub_1D4F39B58();
          break;
        }

        OUTLINED_FUNCTION_83_1();
        OUTLINED_FUNCTION_72_8();
        OUTLINED_FUNCTION_193_0(v34, v35, v36);
        v37 = OUTLINED_FUNCTION_182_0();
        v1 = sub_1D500B87C(v37, v38);
        v3 = type metadata accessor for StorePlatformTVEpisode;
        sub_1D4F39B58();
        OUTLINED_FUNCTION_192_0();
        v13 = v41;
      }

      while (v1);
    }
  }

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_46();
}

void sub_1D4F2CBDC()
{
  OUTLINED_FUNCTION_47();
  v4 = OUTLINED_FUNCTION_15_14();
  v5 = type metadata accessor for StorePlatformPlaylistEntry(v4);
  v6 = OUTLINED_FUNCTION_69(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_77();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8E0, &qword_1D561F0C0);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78_3();
  if (v0 != v1)
  {
    OUTLINED_FUNCTION_110_1();
    if (v12)
    {
      v40 = v11;
      OUTLINED_FUNCTION_130_1();
      OUTLINED_FUNCTION_9_15();
      v15 = v14 >> 6;
      do
      {
        if (v13)
        {
          OUTLINED_FUNCTION_32_16();
          OUTLINED_FUNCTION_115_3();
LABEL_11:
          OUTLINED_FUNCTION_62_9();
          OUTLINED_FUNCTION_70_5();
          sub_1D4F399C0(v17, v2, v18);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8E8, &qword_1D561F0C8);
          OUTLINED_FUNCTION_100_1();
          *v0 = v1;
          v0[1] = v3;
          OUTLINED_FUNCTION_56_7();
          OUTLINED_FUNCTION_190_0(v19, v20);
          v21 = OUTLINED_FUNCTION_34_10();
          __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);

          LOBYTE(v1) = v40;
        }

        else
        {
          OUTLINED_FUNCTION_180_0();
          while (v15 > 1)
          {
            OUTLINED_FUNCTION_162_1();
            if (v16)
            {
              OUTLINED_FUNCTION_33_14();
              OUTLINED_FUNCTION_114_1();
              goto LABEL_11;
            }
          }

          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8E8, &qword_1D561F0C8);
          OUTLINED_FUNCTION_64_7(v39);
          v41 = 0;
        }

        v25 = OUTLINED_FUNCTION_128();
        sub_1D4F39A1C(v25, v26, &qword_1EC7EB8E0, &qword_1D561F0C0);
        v27 = OUTLINED_FUNCTION_161();
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
        OUTLINED_FUNCTION_81_2(v29);
        if (v12)
        {
          break;
        }

        OUTLINED_FUNCTION_80_3();
        OUTLINED_FUNCTION_56_7();
        OUTLINED_FUNCTION_194_0(v30, v31);
        v32 = OUTLINED_FUNCTION_111_3();
        sub_1D4E4EFA0(v32, v33);
        OUTLINED_FUNCTION_152_2();
        if ((v1 & 1) == 0)
        {
          sub_1D4F39B58();
          break;
        }

        OUTLINED_FUNCTION_83_1();
        OUTLINED_FUNCTION_70_5();
        OUTLINED_FUNCTION_193_0(v34, v35, v36);
        v37 = OUTLINED_FUNCTION_182_0();
        v1 = sub_1D4ECD040(v37, v38);
        v3 = type metadata accessor for StorePlatformPlaylistEntry;
        sub_1D4F39B58();
        OUTLINED_FUNCTION_192_0();
        v13 = v41;
      }

      while ((v1 & 1) != 0);
    }
  }

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_46();
}

void sub_1D4F2CE78()
{
  OUTLINED_FUNCTION_47();
  v4 = OUTLINED_FUNCTION_15_14();
  v5 = type metadata accessor for StorePlatformTVSeason(v4);
  v6 = OUTLINED_FUNCTION_69(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_77();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB908, &qword_1D561F0E8);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78_3();
  if (v0 != v1)
  {
    OUTLINED_FUNCTION_110_1();
    if (v12)
    {
      v40 = v11;
      OUTLINED_FUNCTION_130_1();
      OUTLINED_FUNCTION_9_15();
      v15 = v14 >> 6;
      do
      {
        if (v13)
        {
          OUTLINED_FUNCTION_32_16();
          OUTLINED_FUNCTION_115_3();
LABEL_11:
          OUTLINED_FUNCTION_62_9();
          OUTLINED_FUNCTION_69_5();
          sub_1D4F399C0(v17, v2, v18);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB910, &qword_1D561F0F0);
          OUTLINED_FUNCTION_100_1();
          *v0 = v1;
          v0[1] = v3;
          OUTLINED_FUNCTION_55_6();
          OUTLINED_FUNCTION_190_0(v19, v20);
          v21 = OUTLINED_FUNCTION_34_10();
          __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);

          LOBYTE(v1) = v40;
        }

        else
        {
          OUTLINED_FUNCTION_180_0();
          while (v15 > 1)
          {
            OUTLINED_FUNCTION_162_1();
            if (v16)
            {
              OUTLINED_FUNCTION_33_14();
              OUTLINED_FUNCTION_114_1();
              goto LABEL_11;
            }
          }

          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB910, &qword_1D561F0F0);
          OUTLINED_FUNCTION_64_7(v39);
          v41 = 0;
        }

        v25 = OUTLINED_FUNCTION_128();
        sub_1D4F39A1C(v25, v26, &qword_1EC7EB908, &qword_1D561F0E8);
        v27 = OUTLINED_FUNCTION_161();
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
        OUTLINED_FUNCTION_81_2(v29);
        if (v12)
        {
          break;
        }

        OUTLINED_FUNCTION_80_3();
        OUTLINED_FUNCTION_55_6();
        OUTLINED_FUNCTION_194_0(v30, v31);
        v32 = OUTLINED_FUNCTION_111_3();
        sub_1D4E4EFA0(v32, v33);
        OUTLINED_FUNCTION_152_2();
        if (!v1)
        {
          sub_1D4F39B58();
          break;
        }

        OUTLINED_FUNCTION_83_1();
        OUTLINED_FUNCTION_69_5();
        OUTLINED_FUNCTION_193_0(v34, v35, v36);
        v37 = OUTLINED_FUNCTION_182_0();
        v1 = sub_1D55EBB10(v37, v38);
        v3 = type metadata accessor for StorePlatformTVSeason;
        sub_1D4F39B58();
        OUTLINED_FUNCTION_192_0();
        v13 = v41;
      }

      while (v1);
    }
  }

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_46();
}

void sub_1D4F2D114()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_15_14();
  sub_1D560F988();
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_13();
  v6 = MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_35_14(v6, v7, v8, v9, v10, v11, v12, v13, v44);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDB8, &qword_1D561F328);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_112_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_78_3();
  if (v0 != v1 && (OUTLINED_FUNCTION_197(), v19))
  {
    v45 = v17;
    v46 = v18;
    v20 = 0;
    OUTLINED_FUNCTION_130_1();
    OUTLINED_FUNCTION_3_15();
    while (v21)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_11:
      v23 = OUTLINED_FUNCTION_4_15();
      v24(v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDC0, &qword_1D561F330);
      OUTLINED_FUNCTION_100_1();
      v26 = OUTLINED_FUNCTION_160_1(v25);
      v27(v26);
      OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_151_2(v28, v29, v30, &qword_1EC7EBDC0);
LABEL_12:
      sub_1D4F39A1C(v46, v45, &qword_1EC7EBDB8, &qword_1D561F328);
      v31 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v31);
      if (v19)
      {
        goto LABEL_18;
      }

      v32 = OUTLINED_FUNCTION_16_15();
      v33(v32);
      v34 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v34, v35);
      OUTLINED_FUNCTION_94_2();
      if ((v45 & 1) == 0)
      {
        v42 = OUTLINED_FUNCTION_38_11();
        v43(v42);
        goto LABEL_18;
      }

      v36 = OUTLINED_FUNCTION_150_4();
      v37(v36);
      OUTLINED_FUNCTION_133_1();
      sub_1D4F39A68(&qword_1EC7EBDD0, v38, MEMORY[0x1E6975980]);
      OUTLINED_FUNCTION_159_0();
      sub_1D5614D18();
      v39 = OUTLINED_FUNCTION_181_0();
      v2(v39);
      v40 = OUTLINED_FUNCTION_200();
      v2(v40);
      v21 = v47;
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v3)
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDC0, &qword_1D561F330);
        OUTLINED_FUNCTION_140_2(v41);
        v47 = 0;
        goto LABEL_12;
      }

      ++v20;
      if (*(v0 + 8 * v22))
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2D3E4()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDE8, &unk_1D5623ED0);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDF0, &unk_1D561F350);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDF8, &qword_1D5633700);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EBDF0, &unk_1D561F350);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F3948C();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (qword_1D5633700)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (qword_1D5633700)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2D63C()
{
  OUTLINED_FUNCTION_47();
  if (v7 != v8 && (OUTLINED_FUNCTION_116_2(), v17))
  {
    v9 = 0;
    OUTLINED_FUNCTION_201_0();
    OUTLINED_FUNCTION_15_0();
    v12 = v11 & v10;
    OUTLINED_FUNCTION_163_3();
    if (v12)
    {
      while (1)
      {
        OUTLINED_FUNCTION_145_5();
LABEL_11:
        OUTLINED_FUNCTION_121_1();

        sub_1D4E4EFA0(v2, v3);
        OUTLINED_FUNCTION_188_1();
        if ((v4 & 1) == 0 || (v16 = *(*(v0 + 56) + 8 * v2), v2 = *(v16 + 16), v2 != *(v1 + 16)))
        {
LABEL_28:

          goto LABEL_29;
        }

        v17 = !v2 || v16 == v1;
        if (!v17)
        {
          break;
        }

LABEL_25:

        if (!v12)
        {
          goto LABEL_6;
        }
      }

      v3 = (v16 + 40);
      v4 = (v1 + 40);
      while (v2)
      {
        v18 = *(v3 - 1) == *(v4 - 1) && *v3 == *v4;
        if (!v18 && (sub_1D5616168() & 1) == 0)
        {
          goto LABEL_28;
        }

        v3 += 2;
        v4 += 2;
        if (!--v2)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
      v13 = v9;
      while (1)
      {
        v9 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v9 >= v6)
        {
          goto LABEL_29;
        }

        ++v13;
        if (*(v5 + 8 * v9))
        {
          OUTLINED_FUNCTION_113_2();
          v12 = v15 & v14;
          goto LABEL_11;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2D770()
{
  OUTLINED_FUNCTION_47();
  if (v5 != v6 && (OUTLINED_FUNCTION_116_2(), v7))
  {
    v8 = 0;
    OUTLINED_FUNCTION_201_0();
    OUTLINED_FUNCTION_15_0();
    v11 = v10 & v9;
    OUTLINED_FUNCTION_163_3();
    while (v11)
    {
      OUTLINED_FUNCTION_145_5();
LABEL_12:
      OUTLINED_FUNCTION_121_1();

      sub_1D4F15A78();
      OUTLINED_FUNCTION_188_1();
      if ((v2 & 1) == 0)
      {

        goto LABEL_17;
      }

      v1 = *(*(v0 + 56) + 8 * v1);

      sub_1D4F2D864();
      v16 = v15;

      if ((v16 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v12 = v8;
    while (1)
    {
      v8 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v8 >= v4)
      {
        goto LABEL_17;
      }

      ++v12;
      if (*(v3 + 8 * v8))
      {
        OUTLINED_FUNCTION_113_2();
        v11 = v14 & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2DB00()
{
  OUTLINED_FUNCTION_47();
  v4 = OUTLINED_FUNCTION_15_14();
  v5 = type metadata accessor for MusicDownloadedSongCatalogProperties(v4);
  v6 = OUTLINED_FUNCTION_69(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_77();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDD8, &qword_1D561F338);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78_3();
  if (v0 != v1)
  {
    OUTLINED_FUNCTION_110_1();
    if (v12)
    {
      v38 = v11;
      OUTLINED_FUNCTION_130_1();
      OUTLINED_FUNCTION_9_15();
      v15 = v14 >> 6;
      do
      {
        if (v13)
        {
          OUTLINED_FUNCTION_32_16();
          OUTLINED_FUNCTION_115_3();
LABEL_11:
          OUTLINED_FUNCTION_62_9();
          OUTLINED_FUNCTION_68_6();
          sub_1D4F399C0(v17, v2, v18);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDE0, &unk_1D561F340);
          OUTLINED_FUNCTION_100_1();
          *v0 = v1;
          v0[1] = v3;
          OUTLINED_FUNCTION_53_5();
          OUTLINED_FUNCTION_190_0(v19, v20);
          v21 = OUTLINED_FUNCTION_34_10();
          __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);

          LOBYTE(v1) = v38;
        }

        else
        {
          OUTLINED_FUNCTION_180_0();
          while (v15 > 1)
          {
            OUTLINED_FUNCTION_162_1();
            if (v16)
            {
              OUTLINED_FUNCTION_33_14();
              OUTLINED_FUNCTION_114_1();
              goto LABEL_11;
            }
          }

          v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDE0, &unk_1D561F340);
          OUTLINED_FUNCTION_64_7(v37);
          v39 = 0;
        }

        v25 = OUTLINED_FUNCTION_128();
        sub_1D4F39A1C(v25, v26, &qword_1EC7EBDD8, &qword_1D561F338);
        v27 = OUTLINED_FUNCTION_161();
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
        OUTLINED_FUNCTION_81_2(v29);
        if (v12)
        {
          break;
        }

        OUTLINED_FUNCTION_80_3();
        OUTLINED_FUNCTION_53_5();
        OUTLINED_FUNCTION_194_0(v30, v31);
        OUTLINED_FUNCTION_111_3();
        sub_1D4F15A78();
        OUTLINED_FUNCTION_152_2();
        if ((v1 & 1) == 0)
        {
          sub_1D4F39B58();
          break;
        }

        OUTLINED_FUNCTION_83_1();
        OUTLINED_FUNCTION_68_6();
        OUTLINED_FUNCTION_193_0(v32, v33, v34);
        v35 = OUTLINED_FUNCTION_182_0();
        v1 = static MusicDownloadedSongCatalogProperties.== infix(_:_:)(v35, v36);
        v3 = type metadata accessor for MusicDownloadedSongCatalogProperties;
        sub_1D4F39B58();
        OUTLINED_FUNCTION_192_0();
        v13 = v39;
      }

      while ((v1 & 1) != 0);
    }
  }

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_46();
}

void sub_1D4F2DD9C()
{
  OUTLINED_FUNCTION_47();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_64_1();
  v8 = _s10DescriptorVMa(v7);
  v9 = OUTLINED_FUNCTION_69(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v41 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBED8, &qword_1D561F3C0);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_112_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_77();
  if (v0 != v6 && (OUTLINED_FUNCTION_144_0(), v31))
  {
    v40 = v15;
    v16 = 0;
    OUTLINED_FUNCTION_130_1();
    OUTLINED_FUNCTION_9_15();
    v19 = v18 >> 6;
    v42 = v2;
    while (v17)
    {
      OUTLINED_FUNCTION_32_16();
      OUTLINED_FUNCTION_168_1();
LABEL_12:
      OUTLINED_FUNCTION_165_2(*(v0 + 48));
      OUTLINED_FUNCTION_132_2();
      sub_1D4F399C0(v21, v3, v22);
      v23 = *(*(v0 + 56) + 8 * v1);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBEE0, &qword_1D561F3C8);
      v25 = *(v24 + 48);
      OUTLINED_FUNCTION_52_7();
      sub_1D4F39AFC(v3, v4, v26);
      *(v4 + v25) = v23;
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v24);
      v2 = v42;
LABEL_13:
      sub_1D4F39A1C(v4, v2, &qword_1EC7EBED8, &qword_1D561F3C0);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBEE0, &qword_1D561F3C8);
      OUTLINED_FUNCTION_57(v2, 1, v30);
      v4 = v31;
      if (!v31)
      {
        v32 = *(v30 + 48);
        OUTLINED_FUNCTION_52_7();
        v3 = v41;
        sub_1D4F39AFC(v2, v41, v33);
        v34 = *(v2 + v32);
        v1 = sub_1D4F0DD88(v41);
        v36 = v35;
        OUTLINED_FUNCTION_131_2();
        sub_1D4F39B58();
        if (v36)
        {
          v31 = *(*(v6 + 56) + 8 * v1) == v34;
          v2 = v42;
          v17 = v43;
          if (v31)
          {
            continue;
          }
        }
      }

      goto LABEL_21;
    }

    v4 = v40;
    while (1)
    {
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v20 >= v19)
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBEE0, &qword_1D561F3C8);
        OUTLINED_FUNCTION_76_4(v40, v38, v39, v37);
        goto LABEL_13;
      }

      ++v16;
      if (*(v0 + 8 * v20))
      {
        OUTLINED_FUNCTION_33_14();
        OUTLINED_FUNCTION_167_1();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2E050()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_64_1();
  v4 = type metadata accessor for GenericMusicItem(v3);
  v5 = OUTLINED_FUNCTION_69(v4);
  v103 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_59_0();
  v9 = v7 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35_14(v11, v12, v13, v14, v15, v16, v17, v18, v92);
  v19 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  v20 = OUTLINED_FUNCTION_69(v19);
  v98 = v21;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v99 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_2();
  v97 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB218, &unk_1D561F360);
  v26 = OUTLINED_FUNCTION_22(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_59_0();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v92 - v31;
  if (v0 == v2)
  {
    HIDWORD(v100) = 1;
LABEL_26:
    OUTLINED_FUNCTION_46();
    return;
  }

  OUTLINED_FUNCTION_144_0();
  if (!v63)
  {
LABEL_25:
    HIDWORD(v100) = 0;
    goto LABEL_26;
  }

  v95 = v0;
  v96 = v9;
  v33 = 0;
  OUTLINED_FUNCTION_130_1();
  v36 = v35 << *(v0 - 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & v34;
  v93 = (v36 + 63) >> 6;
  v94 = v0;
  v39 = &qword_1EC7EB210;
  v40 = &unk_1D561DF60;
  v101 = v32;
  while (v38)
  {
    v41 = (v38 - 1) & v38;
LABEL_14:
    v45 = v97;
    OUTLINED_FUNCTION_128_3();
    sub_1D4F399C0(v46, v45, v47);
    v48 = v102;
    OUTLINED_FUNCTION_67_7();
    sub_1D4F399C0(v49, v48, v50);
    v51 = OUTLINED_FUNCTION_176();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(v51, v52);
    v54 = *(v53 + 48);
    OUTLINED_FUNCTION_51_9();
    sub_1D4F39AFC(v45, v29, v55);
    OUTLINED_FUNCTION_50_6();
    sub_1D4F39AFC(v48, v29 + v54, v56);
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v53);
    v32 = v101;
LABEL_15:
    sub_1D4F39A1C(v29, v32, &qword_1EC7EB218, &unk_1D561F360);
    v60 = OUTLINED_FUNCTION_176();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(v60, v61);
    OUTLINED_FUNCTION_57(v32, 1, v62);
    if (v63)
    {
      v64 = 1;
    }

    else
    {
      v64 = 0;
    }

    HIDWORD(v100) = v64;
    if (v63)
    {
      goto LABEL_26;
    }

    v65 = v41;
    v66 = v40;
    v67 = v39;
    v68 = v29;
    v69 = *(v62 + 48);
    OUTLINED_FUNCTION_51_9();
    v70 = v99;
    sub_1D4F39AFC(v32, v99, v71);
    OUTLINED_FUNCTION_50_6();
    v72 = &v32[v69];
    v73 = v96;
    sub_1D4F39AFC(v72, v96, v74);
    sub_1D4F0DDB4(v70);
    LOBYTE(v69) = v75;
    OUTLINED_FUNCTION_49_5();
    sub_1D4F39B58();
    if ((v69 & 1) == 0)
    {
      sub_1D4F39B58();
      goto LABEL_25;
    }

    v76 = v102;
    OUTLINED_FUNCTION_67_7();
    sub_1D4F399C0(v77, v76, v78);
    static GenericMusicItem.== infix(_:_:)(v76, v73, v79, v80, v81, v82, v83, v84, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
    v86 = v85;
    sub_1D4F39B58();
    OUTLINED_FUNCTION_93();
    sub_1D4F39B58();
    v29 = v68;
    v32 = v101;
    v39 = v67;
    v40 = v66;
    v38 = v65;
    if ((v86 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v42 = v93;
  while (!__OFADD__(v33, 1))
  {
    if (v33 + 1 >= v42)
    {
      v87 = OUTLINED_FUNCTION_176();
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(v87, v88);
      OUTLINED_FUNCTION_146_0(v29, v90, v91, v89);
      v41 = 0;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_162_1();
    if (v44)
    {
      v41 = (v44 - 1) & v44;
      v33 = v43;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1D4F2E468()
{
  OUTLINED_FUNCTION_47();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_64_1();
  v8 = type metadata accessor for MusicSuggestedPivotEntry(v7);
  v9 = OUTLINED_FUNCTION_69(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v41 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD28, &unk_1D561F2F0);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_112_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_77();
  if (v0 != v6 && (OUTLINED_FUNCTION_144_0(), v31))
  {
    v40 = v15;
    v16 = 0;
    OUTLINED_FUNCTION_130_1();
    OUTLINED_FUNCTION_9_15();
    v19 = v18 >> 6;
    v42 = v2;
    while (v17)
    {
      OUTLINED_FUNCTION_32_16();
      OUTLINED_FUNCTION_168_1();
LABEL_12:
      OUTLINED_FUNCTION_165_2(*(v0 + 48));
      OUTLINED_FUNCTION_127_2();
      sub_1D4F399C0(v21, v3, v22);
      v23 = *(*(v0 + 56) + v1);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD30, &unk_1D562F070);
      v25 = *(v24 + 48);
      OUTLINED_FUNCTION_48_5();
      sub_1D4F39AFC(v3, v4, v26);
      *(v4 + v25) = v23;
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v24);
      v2 = v42;
LABEL_13:
      sub_1D4F39A1C(v4, v2, &qword_1EC7EBD28, &unk_1D561F2F0);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD30, &unk_1D562F070);
      OUTLINED_FUNCTION_57(v2, 1, v30);
      v4 = v31;
      if (!v31)
      {
        v32 = *(v30 + 48);
        OUTLINED_FUNCTION_48_5();
        v3 = v41;
        sub_1D4F39AFC(v2, v41, v33);
        v34 = *(v2 + v32);
        v1 = sub_1D4F0DDE0(v41);
        v36 = v35;
        OUTLINED_FUNCTION_126_1();
        sub_1D4F39B58();
        if (v36)
        {
          v31 = *(*(v6 + 56) + v1) == v34;
          v2 = v42;
          v17 = v43;
          if (v31)
          {
            continue;
          }
        }
      }

      goto LABEL_21;
    }

    v4 = v40;
    while (1)
    {
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v20 >= v19)
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD30, &unk_1D562F070);
        OUTLINED_FUNCTION_76_4(v40, v38, v39, v37);
        goto LABEL_13;
      }

      ++v16;
      if (*(v0 + 8 * v20))
      {
        OUTLINED_FUNCTION_33_14();
        OUTLINED_FUNCTION_167_1();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2E71C()
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_64_1();
  v7 = type metadata accessor for MusicSuggestedSongsEntry(v6);
  v8 = OUTLINED_FUNCTION_69(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v44 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD18, &unk_1D561F2E0);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_112_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78_3();
  if (v0 != v5 && (OUTLINED_FUNCTION_144_0(), v32))
  {
    v45 = v14;
    v43 = v15;
    v16 = 0;
    OUTLINED_FUNCTION_130_1();
    OUTLINED_FUNCTION_9_15();
    v19 = v18 >> 6;
    while (v17)
    {
      OUTLINED_FUNCTION_32_16();
      OUTLINED_FUNCTION_168_1();
LABEL_12:
      OUTLINED_FUNCTION_165_2(*(v0 + 48));
      OUTLINED_FUNCTION_125_1();
      sub_1D4F399C0(v22, v2, v23);
      v24 = *(*(v0 + 56) + 8 * v1);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD20, &unk_1D5660BA0);
      v26 = *(v25 + 48);
      OUTLINED_FUNCTION_47_9();
      sub_1D4F39AFC(v2, v3, v27);
      *(v3 + v26) = v24;
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v25);

      v20 = v45;
LABEL_13:
      sub_1D4F39A1C(v3, v20, &qword_1EC7EBD18, &unk_1D561F2E0);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD20, &unk_1D5660BA0);
      OUTLINED_FUNCTION_57(v20, 1, v31);
      if (v32)
      {
        v3 = 1;
      }

      else
      {
        v3 = 0;
      }

      if (v32)
      {
        goto LABEL_23;
      }

      v33 = *(v31 + 48);
      OUTLINED_FUNCTION_47_9();
      v2 = v44;
      sub_1D4F39AFC(v20, v44, v34);
      v1 = *(v20 + v33);
      sub_1D4F0DE84();
      v36 = v35;
      OUTLINED_FUNCTION_124_1();
      sub_1D4F39B58();
      if ((v36 & 1) == 0)
      {

        goto LABEL_23;
      }

      sub_1D4F92BB4(v37, v1);
      v39 = v38;

      v17 = v46;
      if ((v39 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v3 = v43;
    v20 = v45;
    while (1)
    {
      v21 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v21 >= v19)
      {
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD20, &unk_1D5660BA0);
        OUTLINED_FUNCTION_76_4(v43, v41, v42, v40);
        goto LABEL_13;
      }

      ++v16;
      if (*(v0 + 8 * v21))
      {
        OUTLINED_FUNCTION_33_14();
        OUTLINED_FUNCTION_167_1();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2EA04()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_107_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E8, &qword_1D561E208);
  OUTLINED_FUNCTION_25_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_13();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_14(v5, v6, v7, v8, v9, v10, v11, v12, v52);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD60, &unk_1D561F310);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_11(v15, v53);
  v17 = MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_8(v17, v18, v19, v20, v21, v22, v23, v24, v54);
  if (!v25 && (OUTLINED_FUNCTION_41_12(), v25))
  {
    OUTLINED_FUNCTION_0_22();
    while (v26)
    {
      OUTLINED_FUNCTION_17_8();
LABEL_12:
      v28 = OUTLINED_FUNCTION_4_15();
      v29(v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD68, &qword_1D56492F0);
      v31 = OUTLINED_FUNCTION_6_21(v30);
      v32(v31);
      v33 = OUTLINED_FUNCTION_34_10();
      OUTLINED_FUNCTION_151_2(v33, v34, v35, v36);
LABEL_13:
      v37 = OUTLINED_FUNCTION_61_13();
      sub_1D4F39A1C(v37, v38, &qword_1EC7EBD60, &unk_1D561F310);
      v39 = OUTLINED_FUNCTION_147_1();
      OUTLINED_FUNCTION_22_11(v39);
      if (v25)
      {
        goto LABEL_19;
      }

      v40 = OUTLINED_FUNCTION_8_20();
      v41(v40);
      v42 = OUTLINED_FUNCTION_93();
      sub_1D4E4EFA0(v42, v43);
      OUTLINED_FUNCTION_94_2();
      if ((v0 & 1) == 0)
      {
        v50 = OUTLINED_FUNCTION_38_11();
        v51(v50);
        goto LABEL_19;
      }

      v44 = OUTLINED_FUNCTION_7_20();
      v45(v44);
      v46 = sub_1D4F39060();
      OUTLINED_FUNCTION_66_5(v46);
      v47 = OUTLINED_FUNCTION_19_13();
      (qword_1D56492F0)(v47);
      v48 = OUTLINED_FUNCTION_200();
      (qword_1D56492F0)(v48);
      v26 = v56;
    }

    v0 = v55;
    while (!__OFADD__(v1, 1))
    {
      if (v1 + 1 >= v2)
      {
        v49 = OUTLINED_FUNCTION_147_1();
        OUTLINED_FUNCTION_24_14(v49);
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_108_4();
      if (v27)
      {
        OUTLINED_FUNCTION_12_19();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F2EC5C()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for StorePlatformSong(0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v86 = v8;
  v9 = OUTLINED_FUNCTION_70_0();
  v10 = type metadata accessor for StorePlatformMusicVideo(v9);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v85 = v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8F0, &unk_1D561F0D0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v84 - v14;
  v16 = type metadata accessor for StorePlatformTrack(0);
  OUTLINED_FUNCTION_4();
  v98 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v88 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  v87 = &v84 - v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  v99 = &v84 - v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_102_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_2();
  v92 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8F8, &unk_1D565CF80);
  v28 = OUTLINED_FUNCTION_22(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_161_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_2();
  v94 = v30;
  if (v5 != v3 && *(v5 + 16) == *(v3 + 16))
  {
    v97 = v0;
    v31 = 0;
    v90 = v5;
    v91 = v16;
    v32 = v5 + 64;
    OUTLINED_FUNCTION_9_15();
    v34 = v33 >> 6;
    v95 = v1;
    v89 = v15;
    if (!v35)
    {
      goto LABEL_5;
    }

    while (1)
    {
      OUTLINED_FUNCTION_32_16();
      v96 = v36;
      v38 = v37 | (v31 << 6);
LABEL_9:
      v43 = (*(v90 + 48) + 16 * v38);
      v45 = *v43;
      v44 = v43[1];
      OUTLINED_FUNCTION_42_10();
      v46 = v92;
      sub_1D4F399C0(v47, v92, v48);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB900, &qword_1D561F0E0);
      v50 = v95;
      *v95 = v45;
      v50[1] = v44;
      v1 = v50;
      OUTLINED_FUNCTION_58_5();
      sub_1D4F39AFC(v46, v52 + v51, v53);
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v54, v55, v56, v49);

      v15 = v89;
LABEL_10:
      v57 = v1;
      v58 = v94;
      sub_1D4F39A1C(v57, v94, &qword_1EC7EB8F8, &unk_1D565CF80);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB900, &qword_1D561F0E0);
      OUTLINED_FUNCTION_57(v58, 1, v59);
      if (v60)
      {
        break;
      }

      v61 = *v58;
      v62 = v58[1];
      OUTLINED_FUNCTION_58_5();
      v64 = v97;
      sub_1D4F39AFC(v58 + v63, v97, v65);
      v66 = sub_1D4E4EFA0(v61, v62);
      v68 = v67;

      if ((v68 & 1) == 0)
      {
        goto LABEL_24;
      }

      v69 = v99;
      sub_1D4F399C0(*(v3 + 56) + *(v98 + 72) * v66, v99, type metadata accessor for StorePlatformTrack);
      v70 = *(v93 + 48);
      sub_1D4F399C0(v69, v15, type metadata accessor for StorePlatformTrack);
      sub_1D4F399C0(v64, &v15[v70], type metadata accessor for StorePlatformTrack);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_42_10();
        v71 = v88;
        sub_1D4F399C0(v15, v88, v72);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_138_3();
        v73 = v86;
        sub_1D4F39AFC(&v15[v70], v86, v74);
        v75 = sub_1D50F5698(v71, v73);
        sub_1D4F39B58();
        OUTLINED_FUNCTION_136_2();
        sub_1D4F39B58();
        sub_1D4F39B58();
        sub_1D4F39B58();
        if ((v75 & 1) == 0)
        {
LABEL_23:
          OUTLINED_FUNCTION_71_5();
LABEL_24:
          sub_1D4F39B58();
          break;
        }
      }

      else
      {
        OUTLINED_FUNCTION_42_10();
        sub_1D4F399C0(v15, v87, v76);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
LABEL_25:
          OUTLINED_FUNCTION_137_2();
          sub_1D4F39B58();
          sub_1D4F39B58();
          sub_1D4F39B58();
          sub_1D4E50004(v15, &qword_1EC7EB8F0, &unk_1D561F0D0);
          break;
        }

        OUTLINED_FUNCTION_135_4();
        sub_1D4F39AFC(&v15[v70], v85, v77);
        v78 = OUTLINED_FUNCTION_161();
        v80 = sub_1D5382590(v78, v79);
        sub_1D4F39B58();
        OUTLINED_FUNCTION_136_2();
        sub_1D4F39B58();
        sub_1D4F39B58();
        sub_1D4F39B58();
        if (!v80)
        {
          goto LABEL_23;
        }
      }

      OUTLINED_FUNCTION_71_5();
      sub_1D4F39B58();
      v1 = v95;
      if (!v96)
      {
LABEL_5:
        while (1)
        {
          v39 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v39 >= v34)
          {
            v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB900, &qword_1D561F0E0);
            OUTLINED_FUNCTION_146_0(v1, v82, v83, v81);
            v96 = 0;
            goto LABEL_10;
          }

          ++v31;
          if (*(v32 + 8 * v39))
          {
            OUTLINED_FUNCTION_33_14();
            v96 = v40;
            v38 = v42 | (v41 << 6);
            v31 = v41;
            goto LABEL_9;
          }
        }

        __break(1u);
        return;
      }
    }
  }

  OUTLINED_FUNCTION_46();
}