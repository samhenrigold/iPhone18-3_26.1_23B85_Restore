unint64_t sub_224B6B4CC()
{
  result = qword_27D6F43A0;
  if (!qword_27D6F43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43A0);
  }

  return result;
}

unint64_t sub_224B6B524()
{
  result = qword_27D6F43A8;
  if (!qword_27D6F43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43A8);
  }

  return result;
}

uint64_t sub_224B6B5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_224B6B5E0()
{
  result = qword_27D6F43B0;
  if (!qword_27D6F43B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43B0);
  }

  return result;
}

unint64_t sub_224B6B634()
{
  result = qword_27D6F5640;
  if (!qword_27D6F5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5640);
  }

  return result;
}

unint64_t sub_224B6B68C()
{
  result = qword_28135B168;
  if (!qword_28135B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B168);
  }

  return result;
}

unint64_t sub_224B6B6E4()
{
  result = qword_28135B170;
  if (!qword_28135B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B170);
  }

  return result;
}

unint64_t sub_224B6B73C()
{
  result = qword_27D6F43B8;
  if (!qword_27D6F43B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43B8);
  }

  return result;
}

unint64_t sub_224B6B794()
{
  result = qword_27D6F43C0;
  if (!qword_27D6F43C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43C0);
  }

  return result;
}

unint64_t sub_224B6B7EC()
{
  result = qword_27D6F43C8;
  if (!qword_27D6F43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43C8);
  }

  return result;
}

unint64_t sub_224B6B844()
{
  result = qword_27D6F43D0;
  if (!qword_27D6F43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43D0);
  }

  return result;
}

unint64_t sub_224B6B89C()
{
  result = qword_27D6F43D8;
  if (!qword_27D6F43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43D8);
  }

  return result;
}

unint64_t sub_224B6B8F4()
{
  result = qword_27D6F43E0;
  if (!qword_27D6F43E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43E0);
  }

  return result;
}

unint64_t sub_224B6B94C()
{
  result = qword_27D6F43E8;
  if (!qword_27D6F43E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43E8);
  }

  return result;
}

unint64_t sub_224B6B9A4()
{
  result = qword_27D6F43F0;
  if (!qword_27D6F43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43F0);
  }

  return result;
}

unint64_t sub_224B6B9F8()
{
  result = qword_27D6F4400;
  if (!qword_27D6F4400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4400);
  }

  return result;
}

unint64_t sub_224B6BA60()
{
  result = qword_27D6F4408;
  if (!qword_27D6F4408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4408);
  }

  return result;
}

unint64_t sub_224B6BAB8()
{
  result = qword_27D6F4410;
  if (!qword_27D6F4410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4410);
  }

  return result;
}

id sub_224B6BD00()
{
  v12 = v0;
  ObjectType = swift_getObjectType();
  v1 = sub_224DA9538();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3DD8, &qword_224DB4B60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_224DB30F0;
  *(v6 + 32) = sub_224A3B79C(0, &unk_27D6F3DE0, 0x277CBEA60);
  *(v6 + 40) = sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);

  sub_224DAF628();

  if (v21)
  {
    sub_224A739A4(&v20, &v22);
    swift_dynamicCast();
    v8 = v19;
    v9 = MEMORY[0x277D84F90];
    v18 = MEMORY[0x277D84F90];
    sub_224DAF618();
    sub_224B339F4();
    while (1)
    {
      sub_224DAF738();
      if (!v17)
      {
        break;
      }

      sub_224A739A4(&v16, &v13);
      if ((swift_dynamicCast() & 1) != 0 && v14)
      {
        MEMORY[0x22AA5D350]();
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_224DAF038();
        }

        sub_224DAF078();
        v9 = v18;
      }
    }

    (*(v2 + 8))(v5, v1);
    v10 = v12;
    *&v12[OBJC_IVAR___CHSReplicatedDescriptorsBox_descriptors] = v9;
    v15.receiver = v10;
    v15.super_class = ObjectType;
    return objc_msgSendSuper2(&v15, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_224B6BFF8(uint64_t a1)
{
  sub_224DA9908();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ExtensionTask.Identifier(319);
    if (v2 <= 0x3F)
    {
      sub_224B6C2B4(319, &qword_281350CD0, MEMORY[0x277CF9D18]);
      if (v3 <= 0x3F)
      {
        sub_224B48260(319);
        if (v4 <= 0x3F)
        {
          sub_224DAE918();
          if (v5 <= 0x3F)
          {
            type metadata accessor for ExtensionTask.SchedulingConfiguration(319);
            if (v6 <= 0x3F)
            {
              sub_224B6C2B4(319, &qword_281350D50, MEMORY[0x277CF9B08]);
              if (v7 <= 0x3F)
              {
                sub_224B6C2B4(319, &qword_281350D58, MEMORY[0x277CF9AC8]);
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_224B6C2B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_224DAF728();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_224B6C308()
{
  v1 = *v0;
  v3 = *(*v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_name);

  MEMORY[0x22AA5D210](46, 0xE100000000000000);
  MEMORY[0x22AA5D210](*(v1 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest), *(v1 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest + 8));
  return v3;
}

uint64_t sub_224B6C374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v10 = v9;
  v156 = a8;
  v155 = a7;
  v161 = a6;
  v160 = a5;
  v150 = a4;
  v166 = a3;
  v167 = a2;
  v12 = sub_224DA9908();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v152 = &v138[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4020, &qword_224DB5618);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v138[-v18];
  v151 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v148 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v20);
  v149 = &v138[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v162 = sub_224DAD738();
  v164 = *(v162 - 8);
  MEMORY[0x28223BE20](v162, v22);
  v141 = &v138[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v25 = *(v24 - 8);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v172 = &v138[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27, v29);
  v174 = &v138[-v30];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4440, &unk_224DBA100);
  v33 = MEMORY[0x28223BE20](v31 - 8, v32);
  v142 = &v138[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = MEMORY[0x28223BE20](v33, v35);
  v143 = &v138[-v37];
  MEMORY[0x28223BE20](v36, v38);
  v145 = &v138[-v39];
  v147 = sub_224DABE18();
  v146 = *(v147 - 8);
  v41 = MEMORY[0x28223BE20](v147, v40);
  v171 = &v138[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v41, v43);
  v45 = &v138[-v44];
  v46 = type metadata accessor for ExtensionTask.Identifier(0);
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v138[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v153 = v13;
  v50 = *(v13 + 16);
  v157 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier;
  v154 = v12;
  v159 = v13 + 16;
  v158 = v50;
  v50((v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier), a1 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier, v12);
  v51 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier;
  v52 = sub_224A40C80();
  v53 = (v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_name);
  *v53 = v52;
  v53[1] = v54;
  sub_224A4152C(a1 + v51, v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_taskIdentifier, type metadata accessor for ExtensionTask.Identifier);
  v165 = a1;
  sub_224A4152C(a1 + v51, v49, type metadata accessor for ExtensionTask.Identifier);
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_224A42478(v49, type metadata accessor for ExtensionTask.Identifier);
    *(v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitIdentifiers) = 0;
    *(v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitedDeviceIdentifiers) = 0;
    (*(v164 + 56))(v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_duetBudgetIdentity, 1, 1, v162);
    v77 = 0;
    goto LABEL_25;
  }

  v144 = v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
  v56 = *&v49[*(v55 + 48)];
  v173 = *&v49[*(v55 + 64)];
  v57 = v146;
  v58 = v147;
  (*(v146 + 32))(v45, v49, v147);
  v140 = v45;
  if (!v56)
  {
    v81 = v144;
    *(v144 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitIdentifiers) = 0;
    *(v81 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitedDeviceIdentifiers) = 0;
    (*(v57 + 16))(v171, v45, v58);
    v82 = v145;
    sub_224DAD728();
    v174 = *(v164 + 56);
    (v174)(v82, 0, 1, v162);
    v59 = v173;
    goto LABEL_48;
  }

  v177 = MEMORY[0x277D84FA0];
  v59 = v56 & 0xFFFFFFFFFFFFFF8;
  if (v56 >> 62)
  {
    goto LABEL_67;
  }

  v60 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v61 = v174;
  v171 = v19;
  v169 = v56;
  if (v60)
  {
    v163 = v59;
    v139 = 0;
    v59 = 0;
    v170 = v56 & 0xC000000000000001;
    v168 = v24;
    while (1)
    {
      while (1)
      {
        if (v170)
        {
          v67 = MEMORY[0x22AA5DCC0](v59, v56);
        }

        else
        {
          if (v59 >= *(v163 + 16))
          {
            goto LABEL_66;
          }

          v67 = *(v56 + 8 * v59 + 32);
        }

        v68 = v67;
        v19 = (v59 + 1);
        if (__OFADD__(v59, 1))
        {
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          v60 = sub_224DAF838();
          goto LABEL_5;
        }

        v69 = [v67 refreshStrategy];
        objc_opt_self();
        v70 = swift_dynamicCastObjCClass();
        if (v70)
        {
          break;
        }

        swift_unknownObjectRelease();
LABEL_8:
        ++v59;
        v66 = v19 == v60;
        v19 = v171;
        if (v66)
        {
          goto LABEL_28;
        }
      }

      v71 = [v70 rateLimitIdentifier];
      if (v71)
      {
        v72 = v71;
        v73 = v25;
        v74 = v60;
        v75 = [v68 extensionBundleIdentifier];
        if (!v75)
        {
          sub_224DAEE18();
          v75 = sub_224DAEDE8();
        }

        v76 = [v68 uniqueIdentifier];
        if (!v76)
        {
          sub_224DAEE18();
          v76 = sub_224DAEDE8();
        }

        v62 = _CHSUniqueWidgetRateLimitConfigurationName();

        v63 = sub_224DAEE18();
        v65 = v64;

        sub_224ADAF60(&v175, v63, v65);
        swift_unknownObjectRelease();

        v61 = v174;
        v60 = v74;
        v25 = v73;
        v24 = v168;
        v56 = v169;
        goto LABEL_8;
      }

      swift_unknownObjectRelease();
      v139 = 1;
      ++v59;
      v66 = v19 == v60;
      v19 = v171;
      v61 = v174;
      if (v66)
      {
        goto LABEL_28;
      }
    }
  }

  v139 = 0;
LABEL_28:
  v83 = v177;
  v84 = *(v177 + 16);
  if (v84)
  {
    v176 = MEMORY[0x277D84FA0];
    v85 = *(v173 + 16);
    if (v85)
    {
      v86 = *(v25 + 16);
      v87 = v173 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
      v88 = *(v25 + 72);
      do
      {
        v86(v61, v87, v24);
        v89 = sub_224DAA1F8();
        sub_224ADB950(&v175, v89, v90);
        v61 = v174;

        (*(v25 + 8))(v61, v24);
        v87 += v88;
        --v85;
      }

      while (v85);
      v91 = v176;
      v84 = *(v83 + 16);
      if (!v84)
      {
        goto LABEL_38;
      }

      v19 = v171;
    }

    else
    {
      v91 = MEMORY[0x277D84FA0];
    }

    v94 = sub_224B0CC2C(v84, 0);
    v95 = sub_224B2F374(&v175, v94 + 4, v84, v83);
    sub_224A3B7E4(v175);
    if (v95 == v84)
    {
      goto LABEL_39;
    }

    __break(1u);
LABEL_38:

    v94 = MEMORY[0x277D84F90];
    v19 = v171;
LABEL_39:
    *(v144 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitIdentifiers) = v94;
    v96 = *(v91 + 16);
    if (v96)
    {
      v92 = sub_224B0CC40(*(v91 + 16), 0);
      v97 = sub_224B2F218(&v175, v92 + 2, v96, v91);
      sub_224A3B7E4(v175);
      if (v97 == v96)
      {
LABEL_43:
        v93 = v144;
        goto LABEL_44;
      }

      __break(1u);
    }

    v92 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  v92 = 0;
  v93 = v144;
  *(v144 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitIdentifiers) = 0;
LABEL_44:
  v98 = v143;
  v59 = v173;
  *(v93 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitedDeviceIdentifiers) = v92;
  if (v139)
  {
    sub_224DAD708();
    v99 = 0;
  }

  else
  {

    v99 = 1;
  }

  v174 = *(v164 + 56);
  (v174)(v98, v99, 1, v162);
  sub_224A44E4C(v98, v145, &unk_27D6F4440, &unk_224DBA100);
LABEL_48:
  v100 = 0;
  v56 = *(v59 + 16);
  do
  {
    if (v56 == v100)
    {

      sub_224A3311C(v145, &unk_27D6F4440, &unk_224DBA100);
      (*(v146 + 8))(v140, v147);
      v10 = v144;
      v78 = v150;
      v79 = v149;
      v80 = v148;
      v105 = v162;
      goto LABEL_55;
    }

    if (v100 >= *(v173 + 16))
    {
      __break(1u);
      goto LABEL_65;
    }

    v101 = v172;
    (*(v25 + 16))(v172, v173 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v100++, v24);
    sub_224DAA1F8();
    v59 = sub_224DAA048();

    (*(v25 + 8))(v101, v24);
  }

  while ((v59 & 1) != 0);

  v102 = v145;
  v103 = v142;
  sub_224A3796C(v145, v142, &unk_27D6F4440, &unk_224DBA100);
  v104 = v164;
  v105 = v162;
  if ((*(v164 + 48))(v103, 1, v162) == 1)
  {
    sub_224A3311C(v102, &unk_27D6F4440, &unk_224DBA100);
    (*(v146 + 8))(v140, v147);
    sub_224A3311C(v103, &unk_27D6F4440, &unk_224DBA100);
    v10 = v144;
    v78 = v150;
    v79 = v149;
    v80 = v148;
LABEL_55:
    (v174)(v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_duetBudgetIdentity, 1, 1, v105);
    v77 = 0;
    goto LABEL_56;
  }

  v136 = v141;
  (*(v104 + 32))(v141, v103, v105);
  v137 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_duetBudgetIdentity;
  v10 = v144;
  (*(v104 + 16))(v144 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_duetBudgetIdentity, v136, v105);
  (v174)(v10 + v137, 0, 1, v105);
  (*(v104 + 8))(v136, v105);
  sub_224A3311C(v102, &unk_27D6F4440, &unk_224DBA100);
  (*(v146 + 8))(v140, v147);
  v77 = &unk_283827E90;
LABEL_25:
  v78 = v150;
  v79 = v149;
  v80 = v148;
LABEL_56:
  v174 = a9;
  *(v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_budgetedDeviceIdentifiers) = v77;
  v106 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_requiredDataProtectionLevel;
  swift_beginAccess();
  v107 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_requiredDataProtectionLevel;
  v108 = sub_224DAE918();
  v109 = *(v108 - 8);
  v110 = v10 + v107;
  v111 = v165;
  (*(v109 + 16))(v110, v165 + v106, v108);
  sub_224A3796C(v167, v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_containingAppIdentifier, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3796C(v166, v19, &qword_27D6F4020, &qword_224DB5618);
  v112 = *(v80 + 48);
  v113 = v151;
  if (v112(v19, 1, v151) == 1)
  {
    sub_224A4152C(v111 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration, v79, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    if (v112(v19, 1, v113) != 1)
    {
      sub_224A3311C(v19, &qword_27D6F4020, &qword_224DB5618);
    }
  }

  else
  {
    sub_224A45320(v19, v79);
  }

  sub_224A45320(v79, v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingConfiguration);
  if (!v78)
  {
    v114 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
    swift_beginAccess();
    v78 = *(v111 + v114);
  }

  v115 = v158;
  v116 = v157;
  v117 = v161;
  v118 = v160;
  *(v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingOptions) = v78;
  v119 = (v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_activationHandler);
  *v119 = v118;
  v119[1] = v117;
  v120 = v152;
  v121 = v154;
  v115(v152, v10 + v116, v154);

  v176 = sub_224DA98E8();
  sub_224A3F6A4();
  v122 = sub_224DAEF18();
  v124 = sub_224A3D19C(8, v122, v123);
  v126 = v125;
  v128 = v127;
  v130 = v129;

  v131 = MEMORY[0x22AA5D1C0](v124, v126, v128, v130);
  v133 = v132;

  (*(v109 + 8))(v174, v108);
  sub_224A3311C(v166, &qword_27D6F4020, &qword_224DB5618);
  sub_224A3311C(v167, &unk_27D6F5060, &qword_224DB5620);
  (*(v153 + 8))(v120, v121);
  v134 = (v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest);
  *v134 = v131;
  v134[1] = v133;
  sub_224A44E4C(v155, v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_effectivePowerlogWakeReason, &qword_27D6F4030, &unk_224DB5630);
  sub_224A44E4C(v156, v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_effectivePowerlogWakeCost, &qword_27D6F4028, &qword_224DB5628);
  return v10;
}

uint64_t sub_224B6D57C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  if (v0[45])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_224B6D620@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_224DA9688();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_224DAC3F8();
  if (v3)
  {

    v10 = 1;
  }

  else
  {
    sub_224DA9548();
    (*(v6 + 8))(v9, v5);
    v10 = 0;
  }

  return (*(v6 + 56))(a3, v10, 1, v5);
}

uint64_t sub_224B6D770(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + 64))
  {
    return MEMORY[0x277D84FA0];
  }

  MEMORY[0x28223BE20](a1, a2);
  v7[2] = v2;
  v4 = sub_224AD80E8(sub_224B6D814, v7, v3);
  v5 = sub_224AE9040(v4);

  return v5;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_224B6D854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_224B6D89C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10ChronoCore18SubscriptionStatusO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_224B6D92C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224B6D980(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_224B6D9E4(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_224B6DA20(uint64_t a1)
{
  v36 = sub_224DA9688();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v4);
  v35 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v28 = v1;
    v40 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v6, 0);
    v39 = v40;
    v8 = a1 + 56;
    result = sub_224DAF798();
    v9 = result;
    v10 = 0;
    v33 = v3 + 8;
    v34 = v3 + 16;
    v29 = a1 + 64;
    v30 = v6;
    v31 = v3;
    v32 = a1 + 56;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v37 = *(a1 + 36);
      v13 = v35;
      v14 = v36;
      (*(v3 + 16))(v35, *(a1 + 48) + *(v3 + 72) * v9, v36);
      v38 = sub_224DA9648();
      v16 = v15;
      result = (*(v3 + 8))(v13, v14);
      v17 = v39;
      v40 = v39;
      v19 = *(v39 + 16);
      v18 = *(v39 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_224A3DFD8((v18 > 1), v19 + 1, 1);
        v17 = v40;
      }

      *(v17 + 16) = v19 + 1;
      v20 = v17 + 16 * v19;
      *(v20 + 32) = v38;
      *(v20 + 40) = v16;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v8 = v32;
      v21 = *(v32 + 8 * v12);
      if ((v21 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v39 = v17;
      if (v37 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v9 & 0x3F));
      if (v22)
      {
        v11 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v3 = v31;
      }

      else
      {
        v23 = v12 << 6;
        v24 = v12 + 1;
        v25 = (v29 + 8 * v12);
        v3 = v31;
        while (v24 < (v11 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_224A3E204(v9, v37, 0);
            v11 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v9, v37, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v30)
      {
        return v39;
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
  }

  return result;
}

id sub_224B6DD2C(void *a1, uint64_t a2)
{
  v4 = sub_224DAEDE8();
  [a1 setDomain_];

  v5 = [objc_opt_self() identifier];
  if (!v5)
  {
    sub_224DAEE18();
    v5 = sub_224DAEDE8();
  }

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_224B6DE08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v37 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4728, &unk_224DB7660);
  MEMORY[0x28223BE20](v5, v6);
  v9 = *(v0 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_connectionListener);
  if (v9)
  {
    v41 = &v37 - v7;
    v42 = v8;
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider), *(v0 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 24));
    v10 = v9;
    v46[0] = sub_224DAA168();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4730, &unk_224DBAF00);
    sub_224A33088(&qword_281351010, &unk_27D6F4730, &unk_224DBAF00, MEMORY[0x277CBCD90]);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    sub_224A3317C(v0 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_taskService, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4600, &qword_224DB7568);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4608, &qword_224DB7570);
    if (swift_dynamicCast())
    {
      sub_224A36F98(v43, v46);
      v11 = v47;
      v12 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      v40 = (*(v12 + 24))(v11, v12);
      v45[0] = v40;
      *&v43[0] = *(v0 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_queue);
      v13 = *&v43[0];
      v14 = sub_224DAF358();
      (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
      v38 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4740, qword_224DB7670);
      v39 = v5;
      sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
      sub_224A33088(&qword_27D6F4748, &qword_27D6F4740, qword_224DB7670, MEMORY[0x277CBCD90]);
      sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78, MEMORY[0x277D85228]);
      v15 = v41;
      sub_224DAB448();
      sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_224A33088(&qword_27D6F4750, &qword_27D6F4728, &unk_224DB7660, MEMORY[0x277CBCD60]);
      v16 = v39;
      sub_224DAB488();

      (v42[1].isa)(v15, v16);
      swift_beginAccess();
      sub_224DAB308();
      swift_endAccess();

      __swift_destroy_boxed_opaque_existential_1(v46);
    }

    else
    {
      v44 = 0;
      memset(v43, 0, sizeof(v43));
      sub_224A3311C(v43, &unk_27D6F4610, &qword_224DB7578);
    }

    if (qword_281351678 != -1)
    {
      swift_once();
    }

    v26 = sub_224DAB258();
    __swift_project_value_buffer(v26, qword_2813650A8);
    v27 = sub_224DAB228();
    v28 = sub_224DAF2A8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46[0] = v30;
      *v29 = 136446210;
      v31 = [objc_opt_self() identifier];
      v32 = sub_224DAEE18();
      v34 = v33;

      v35 = sub_224A33F74(v32, v34, v46);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_224A2F000, v27, v28, "%{public}s begin listening for tools connections", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x22AA5EED0](v30, -1, -1);
      MEMORY[0x22AA5EED0](v29, -1, -1);
    }

    [v10 activate];
  }

  else
  {
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v17 = sub_224DAB258();
    __swift_project_value_buffer(v17, qword_281364E50);
    v42 = sub_224DAB228();
    v18 = sub_224DAF298();
    if (os_log_type_enabled(v42, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v46[0] = v20;
      *v19 = 136446210;
      v21 = [objc_opt_self() identifier];
      v22 = sub_224DAEE18();
      v24 = v23;

      v25 = sub_224A33F74(v22, v24, v46);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_224A2F000, v42, v18, "%{public}s unable to start tools server; listener is nil", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x22AA5EED0](v20, -1, -1);
      MEMORY[0x22AA5EED0](v19, -1, -1);
    }

    else
    {
      v36 = v42;
    }
  }
}

void sub_224B6E5D0(_BYTE *a1)
{
  if (*a1 == 1)
  {
    if (qword_281351678 != -1)
    {
      swift_once();
    }

    v1 = sub_224DAB258();
    __swift_project_value_buffer(v1, qword_2813650A8);
    oslog = sub_224DAB228();
    v2 = sub_224DAF2A8();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v11 = v4;
      *v3 = 136446210;
      v5 = [objc_opt_self() identifier];
      v6 = sub_224DAEE18();
      v8 = v7;

      v9 = sub_224A33F74(v6, v8, &v11);

      *(v3 + 4) = v9;
      _os_log_impl(&dword_224A2F000, oslog, v2, "%{public}s notified of first unlock; adjusting responses", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v4);
      MEMORY[0x22AA5EED0](v4, -1, -1);
      MEMORY[0x22AA5EED0](v3, -1, -1);
    }

    else
    {
    }
  }
}

double sub_224B6E77C(uint64_t *a1, uint64_t a2)
{
  v2 = 0;
  v98 = *MEMORY[0x277D85DE8];
  v87 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer__lock);
    v6 = *(v5 + 16);
    v7 = Strong;

    os_unfair_lock_lock(v6);
    v8 = OBJC_IVAR____TtC10ChronoCore18ToolServicesServer__lock_clients;
    swift_beginAccess();
    v84 = v7;
    v9 = *&v7[v8];
    v10 = *(v5 + 16);

    os_unfair_lock_unlock(v10);

    v82 = 0;
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x277D84FA0];
      v93 = MEMORY[0x277D84FA0];
      sub_224DAF7E8();
      v13 = sub_224DAF878();
      if (v13)
      {
        v14 = v13;
        type metadata accessor for ToolServicesClient();
        v15 = v14;
        v16 = -1;
        v2 = 1;
        do
        {
          *&v90 = v15;
          swift_dynamicCast();
          BSDispatchQueueAssert();
          v17 = *&v92[0];
          if (*(*&v92[0] + OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion))
          {
            v18 = *(v12 + 16);
            if (*(v12 + 24) <= v18)
            {
              sub_224ADF914(v18 + 1);
            }

            v12 = v93;
            v9 = *&v92[0];
            v19 = sub_224DAF698();
            v21 = v93 + 56;
            v22 = -1 << *(v93 + 32);
            v23 = v19 & ~v22;
            v24 = v23 >> 6;
            if (((-1 << v23) & ~*(v93 + 56 + 8 * (v23 >> 6))) != 0)
            {
              v25 = __clz(__rbit64((-1 << v23) & ~*(v93 + 56 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v26 = 0;
              v27 = (63 - v22) >> 6;
              do
              {
                if (++v24 == v27 && (v26 & 1) != 0)
                {
                  __break(1u);
LABEL_78:
                  __break(1u);
                  goto LABEL_79;
                }

                v28 = v24 == v27;
                if (v24 == v27)
                {
                  v24 = 0;
                }

                v26 |= v28;
                v29 = *(v21 + 8 * v24);
              }

              while (v29 == -1);
              v25 = __clz(__rbit64(~v29)) + (v24 << 6);
            }

            *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
            *(*(v12 + 48) + 8 * v25) = v17;
            ++*(v12 + 16);
          }

          else
          {
          }

          v15 = sub_224DAF878();
        }

        while (v15);
      }

      v30 = v12 & 0xC000000000000001;
      if ((v12 & 0xC000000000000001) == 0)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v31 = *(v9 + 32);
      v16 = ((1 << v31) + 63) >> 6;
      v20 = 8 * v16;
      if ((v31 & 0x3Fu) > 0xD)
      {
        goto LABEL_82;
      }

LABEL_24:
      v86 = v16;
      v85 = &v81;
      MEMORY[0x28223BE20](v11, v20);
      v33 = &v81 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v33, v32);
      v88 = 0;
      v34 = 0;
      v2 = v9 + 56;
      v35 = 1 << *(v9 + 32);
      v36 = -1;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      v37 = v36 & *(v9 + 56);
      v38 = (v35 + 63) >> 6;
      while (1)
      {
        if (!v37)
        {
          v40 = v34;
          while (1)
          {
            v34 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_80;
            }

            if (v34 >= v38)
            {
              goto LABEL_38;
            }

            v41 = *(v2 + 8 * v34);
            ++v40;
            if (v41)
            {
              v39 = __clz(__rbit64(v41));
              v37 = (v41 - 1) & v41;
              goto LABEL_34;
            }
          }
        }

        v39 = __clz(__rbit64(v37));
        v37 &= v37 - 1;
LABEL_34:
        v16 = v39 | (v34 << 6);
        v42 = *(*(v9 + 48) + 8 * v16);
        BSDispatchQueueAssert();
        v43 = *&v42[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion];

        if (v43)
        {
          *&v33[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
          v44 = __OFADD__(v88++, 1);
          if (v44)
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_38:
      v12 = sub_224B05518(v33, v86, v88, v9);
      v30 = v12 & 0xC000000000000001;
      if ((v12 & 0xC000000000000001) == 0)
      {
        goto LABEL_85;
      }
    }

LABEL_39:
    if (!sub_224DAF838())
    {
      goto LABEL_86;
    }

LABEL_40:
    v83 = v30;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C40, &qword_224DB7580);
    v45 = v87;
    v46 = sub_224DAFB88();
    v2 = 0;
    v48 = *(v45 + 64);
    v16 = v45 + 64;
    v47 = v48;
    v49 = 1 << *(v16 - 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & v47;
    v52 = (v49 + 63) >> 6;
    v85 = (v46 + 64);
    v86 = v46;
    if ((v50 & v47) != 0)
    {
LABEL_43:
      v53 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
      goto LABEL_49;
    }

    while (1)
    {
      v54 = v2;
      do
      {
        v2 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_78;
        }

        if (v2 >= v52)
        {
          if (v83)
          {
            v9 = sub_224DAF7E8();
            type metadata accessor for ToolServicesClient();
            sub_224B7A940(&qword_27D6F4758, type metadata accessor for ToolServicesClient, MEMORY[0x277D85378]);
            sub_224DAF1F8();
            v12 = v93;
            v2 = v94;
            v66 = v95;
            v67 = v96;
            v68 = v97;
          }

          else
          {
            v67 = 0;
            v69 = -1 << *(v12 + 32);
            v2 = v12 + 56;
            v66 = ~v69;
            v70 = -v69;
            if (v70 < 64)
            {
              v71 = ~(-1 << v70);
            }

            else
            {
              v71 = -1;
            }

            v68 = v71 & *(v12 + 56);
          }

          v88 = v66;
          v72 = (v66 + 64) >> 6;
          while (1)
          {
            if (v12 < 0)
            {
              v76 = sub_224DAF878();
              if (!v76 || (*&v90 = v76, type metadata accessor for ToolServicesClient(), swift_dynamicCast(), v9 = *&v92[0], v75 = v67, v16 = v68, !*&v92[0]))
              {
LABEL_77:
                sub_224A3B7E4(v12);
                goto LABEL_86;
              }
            }

            else
            {
              v73 = v67;
              v74 = v68;
              v75 = v67;
              if (!v68)
              {
                while (1)
                {
                  v75 = v73 + 1;
                  if (__OFADD__(v73, 1))
                  {
                    break;
                  }

                  if (v75 >= v72)
                  {
                    goto LABEL_77;
                  }

                  v74 = *(v2 + 8 * v75);
                  ++v73;
                  if (v74)
                  {
                    goto LABEL_66;
                  }
                }

LABEL_79:
                __break(1u);
LABEL_80:
                __break(1u);
LABEL_81:
                __break(1u);
LABEL_82:
                v79 = v20;

                if (swift_stdlib_isStackAllocationSafe())
                {

                  v20 = v79;
                  goto LABEL_24;
                }

                v80 = swift_slowAlloc();
                v12 = sub_224B76530(v80, v16, v9, sub_224B6F0C0, 0);
                v82 = v2;

                MEMORY[0x22AA5EED0](v80, -1, -1);
                v30 = v12 & 0xC000000000000001;
                if ((v12 & 0xC000000000000001) == 0)
                {
LABEL_85:
                  if (!*(v12 + 16))
                  {
LABEL_86:

                    return result;
                  }

                  goto LABEL_40;
                }

                goto LABEL_39;
              }

LABEL_66:
              v16 = (v74 - 1) & v74;
              v9 = *(*(v12 + 48) + ((v75 << 9) | (8 * __clz(__rbit64(v74)))));
              if (!v9)
              {
                goto LABEL_77;
              }
            }

            if ([*(v9 + OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_connection) remoteTarget])
            {
              sub_224DAF758();
              swift_unknownObjectRelease();
            }

            else
            {
              v90 = 0u;
              v91 = 0u;
            }

            v92[0] = v90;
            v92[1] = v91;
            if (*(&v91 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4768, &qword_224DB7688);
              if (swift_dynamicCast())
              {
                v77 = v89;
                sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
                v78 = sub_224DAECC8();
                [v77 taskServiceStateDidChange_];
                swift_unknownObjectRelease();
              }
            }

            else
            {

              sub_224A3311C(v92, &qword_27D6F4760, &unk_224DB3680);
            }

            v67 = v75;
            v68 = v16;
          }
        }

        v55 = *(v16 + 8 * v2);
        ++v54;
      }

      while (!v55);
      v53 = __clz(__rbit64(v55));
      v51 = (v55 - 1) & v55;
LABEL_49:
      v56 = v53 | (v2 << 6);
      v57 = *(v87 + 56);
      v58 = (*(v87 + 48) + 16 * v56);
      v9 = v58[1];
      v88 = *v58;
      v59 = *(v57 + 8 * v56);
      v60 = objc_allocWithZone(MEMORY[0x277CCABB0]);

      v61 = [v60 initWithInteger_];
      *(v85 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
      v62 = v86;
      v63 = (*(v86 + 48) + 16 * v56);
      *v63 = v88;
      v63[1] = v9;
      *(*(v62 + 56) + 8 * v56) = v61;
      v64 = *(v62 + 16);
      v44 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v44)
      {
        goto LABEL_81;
      }

      *(v62 + 16) = v65;
      if (v51)
      {
        goto LABEL_43;
      }
    }
  }

  return result;
}

BOOL sub_224B6F0C0(uint64_t *a1)
{
  v1 = *a1;
  BSDispatchQueueAssert();
  return *(v1 + OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion) != 0;
}

void sub_224B6F35C(void *a1, char *a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = [v6 serviceQuality];
  [a1 setServiceQuality_];

  [a1 setTargetQueue_];
  v8 = [v6 interface];
  [a1 setInterface_];

  [a1 setInterfaceTarget_];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = v9;
  v25 = sub_224B7ACE4;
  v26 = v10;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_224A3837C;
  v24 = &block_descriptor_173;
  v11 = _Block_copy(&v21);
  v12 = a2;

  [a1 setActivationHandler_];
  _Block_release(v11);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  v25 = sub_224B7ACEC;
  v26 = v15;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_224A3837C;
  v24 = &block_descriptor_183;
  v16 = _Block_copy(&v21);

  [a1 setInterruptionHandler_];
  _Block_release(v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  v25 = sub_224B7AD34;
  v26 = v19;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_224A3837C;
  v24 = &block_descriptor_191;
  v20 = _Block_copy(&v21);

  [a1 setInvalidationHandler_];
  _Block_release(v20);
}

void sub_224B6F6D4(void *a1, uint64_t a2, uint64_t a3)
{
  BSDispatchQueueAssert();
  if (qword_281351678 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_2813650A8);
  v5 = a1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136446210;
    v10 = [v5 remoteProcess];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 description];

      v13 = sub_224DAEE18();
      v15 = v14;
    }

    else
    {
      v15 = 0x8000000224DC7B00;
      v13 = 0xD00000000000001ALL;
    }

    v16 = sub_224A33F74(v13, v15, v19);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_224A2F000, v6, v7, "Tool service connection from %{public}s activated", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    BSDispatchQueueAssert();
  }
}

void sub_224B6F8E8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    BSDispatchQueueAssert();
    if (qword_281351678 != -1)
    {
      swift_once();
    }

    v6 = sub_224DAB258();
    __swift_project_value_buffer(v6, qword_2813650A8);
    v7 = a1;
    v8 = sub_224DAB228();
    v9 = sub_224DAF2A8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26[0] = v11;
      *v10 = 136446210;
      v12 = [v7 remoteProcess];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 description];

        v15 = sub_224DAEE18();
        v17 = v16;
      }

      else
      {
        v17 = 0x8000000224DC7B00;
        v15 = 0xD00000000000001ALL;
      }

      v18 = sub_224A33F74(v15, v17, v26);

      *(v10 + 4) = v18;
      _os_log_impl(&dword_224A2F000, v8, v9, "Tool service connection from %{public}s interrupted", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x22AA5EED0](v11, -1, -1);
      MEMORY[0x22AA5EED0](v10, -1, -1);
    }

    [v7 invalidate];
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      BSDispatchQueueAssert();
      v21 = OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion;
      v22 = *&v20[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion];
      if (v22)
      {
        [v22 invalidate];
      }

      *&v20[v21] = 0;
      swift_unknownObjectRelease();
      v23 = *&v5[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer__lock];
      v24 = *(v23 + 16);

      os_unfair_lock_lock(v24);
      swift_beginAccess();
      v25 = sub_224B02420(v20);
      swift_endAccess();

      os_unfair_lock_unlock(*(v23 + 16));
    }
  }
}

void sub_224B6FBC8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    BSDispatchQueueAssert();
    if (qword_281351678 != -1)
    {
      swift_once();
    }

    v6 = sub_224DAB258();
    __swift_project_value_buffer(v6, qword_2813650A8);
    v7 = a1;
    v8 = sub_224DAB228();
    v9 = sub_224DAF2A8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26[0] = v11;
      *v10 = 136446210;
      v12 = [v7 remoteProcess];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 description];

        v15 = sub_224DAEE18();
        v17 = v16;
      }

      else
      {
        v17 = 0x8000000224DC7B00;
        v15 = 0xD00000000000001ALL;
      }

      v18 = sub_224A33F74(v15, v17, v26);

      *(v10 + 4) = v18;
      _os_log_impl(&dword_224A2F000, v8, v9, "Tool service connection from %{public}s invalidated", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x22AA5EED0](v11, -1, -1);
      MEMORY[0x22AA5EED0](v10, -1, -1);
    }

    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      BSDispatchQueueAssert();
      v21 = OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion;
      v22 = *&v20[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion];
      if (v22)
      {
        [v22 invalidate];
      }

      *&v20[v21] = 0;
      swift_unknownObjectRelease();
      v23 = *&v5[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer__lock];
      v24 = *(v23 + 16);

      os_unfair_lock_lock(v24);
      swift_beginAccess();
      v25 = sub_224B02420(v20);
      swift_endAccess();

      os_unfair_lock_unlock(*(v23 + 16));
    }
  }
}

void sub_224B6FF30(uint64_t a1, id a2, unint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v37 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v36 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v32 - v13;
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider), *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 24));
  if (sub_224DAA158())
  {
    if (qword_281351678 != -1)
    {
      swift_once();
    }

    v15 = sub_224DAB258();
    __swift_project_value_buffer(v15, qword_2813650A8);

    v16 = sub_224DAB228();
    v17 = sub_224DAF2A8();

    if (os_log_type_enabled(v16, v17))
    {
      v33 = v11;
      v34 = a4;
      v35 = a5;
      v18 = 0x6E776F6E6B6E75;
      v19 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40[0] = v32;
      *v19 = 136446466;
      *(v19 + 4) = sub_224A33F74(v37, a3, v40);
      *(v19 + 12) = 2082;
      v20 = [objc_opt_self() currentContext];
      if (v20 && (v21 = v20, v22 = [v20 remoteProcess], v21, v22))
      {
        v23 = [v22 description];

        v18 = sub_224DAEE18();
        v25 = v24;
      }

      else
      {
        v25 = 0xE700000000000000;
      }

      v27 = sub_224A33F74(v18, v25, v40);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_224A2F000, v16, v17, "Requesting to refresh descriptors for %{public}s from %{public}s.", v19, 0x16u);
      v28 = v32;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v28, -1, -1);
      MEMORY[0x22AA5EED0](v19, -1, -1);

      a4 = v34;
      a5 = v35;
      v11 = v33;
    }

    else
    {
    }

    sub_224DA9FF8();
    sub_224DAA278();
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService), *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService + 24));
    sub_224DAC6C8();
    if (v39)
    {
      sub_224A36F98(&v38, v40);
      __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_descriptorService), *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_descriptorService + 24));
      sub_224A3317C(v40, &v38);
      v29 = v11;
      v30 = swift_allocObject();
      sub_224A36F98(&v38, v30 + 16);
      *(v30 + 56) = a4;
      *(v30 + 64) = a5;

      sub_224DACA88();

      __swift_destroy_boxed_opaque_existential_1(v40);
      (*(v36 + 8))(v14, v29);
    }

    else
    {
      sub_224A3311C(&v38, &unk_27D6F4700, &unk_224DB3A10);
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v31 = sub_224CBC42C(0, 0, 0);
      a4(0, v31);

      (*(v36 + 8))(v14, v11);
    }
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v37 = sub_224CBC42C(8, 0, 0);
    a4(0, v37);
    v26 = v37;
  }
}

void sub_224B704A4(void *a1, uint64_t a2, void *a3, void (*a4)(void))
{
  if (a1)
  {
    v5 = a1;
    v6 = sub_224A5B354(a3);
    v7 = sub_224DAE9E8();
    sub_224AE8D28(v7);

    sub_224A3B79C(0, &qword_2813508D0, 0x277CFA318);
    v8 = MEMORY[0x277D85378];
    sub_224A3B758(&unk_2813508C0, &qword_2813508D0, 0x277CFA318, MEMORY[0x277D85378]);
    v9 = sub_224DAF1A8();

    [v6 setLiveActivityDescriptors_];

    sub_224DAE9C8();
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    v10 = sub_224DAEFF8();

    [v6 setOrderedWidgetDescriptors_];

    sub_224DAE9D8();
    sub_224A3B79C(0, &qword_2813509B8, 0x277CFA210);
    v11 = sub_224DAEFF8();

    [v6 setOrderedControlDescriptors_];

    [v6 copy];
    sub_224DAF758();
    swift_unknownObjectRelease();
    sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB2780;
    *(inited + 32) = v19;
    v13 = v19;
    sub_224D5767C(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v14 = objc_allocWithZone(MEMORY[0x277CFA3C8]);
    sub_224A3B758(&qword_281350A30, &qword_281350A40, 0x277CFA3A8, v8);
    v15 = sub_224DAF1A8();

    v16 = [v14 initWithExtensions_];

    v17 = v16;
    (a4)(v16, 0);
  }

  else
  {
    (a4)(0, a2, a3);
  }
}

double sub_224B707C4(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_281352038 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v5 = [a1 unsignedIntegerValue];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  sub_224C3F1E8(v5, sub_224B7AC78, v6);

  return result;
}

uint64_t sub_224B708A4(void (*a1)(void))
{
  v32 = a1;
  v35 = sub_224DAB7B8();
  v38 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v1);
  v34 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_224DAB848();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAB798();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_224DAB878();
  v39 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v31 - v17;
  v19 = sub_224DAB7C8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32(0);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  (*(v20 + 104))(v23, *MEMORY[0x277D851B8], v19);
  v32 = sub_224DAF428();
  (*(v20 + 8))(v23, v19);
  sub_224DAB858();
  *v10 = 500;
  (*(v7 + 104))(v10, *MEMORY[0x277D85178], v6);
  sub_224DAB868();
  (*(v7 + 8))(v10, v6);
  v24 = *(v39 + 8);
  v39 += 8;
  v24(v15, v11);
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_137;
  v25 = _Block_copy(aBlock);
  v26 = v33;
  sub_224DAB7E8();
  v40 = MEMORY[0x277D84F90];
  sub_224B7A940(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  v28 = v34;
  v27 = v35;
  sub_224DAF788();
  v29 = v32;
  MEMORY[0x22AA5D6A0](v18, v26, v28, v25);
  _Block_release(v25);

  (*(v38 + 8))(v28, v27);
  (*(v36 + 8))(v26, v37);
  return (v24)(v18, v11);
}

uint64_t sub_224B70DF4()
{
  v0 = sub_224DAC378();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281352038 != -1)
  {
    swift_once();
  }

  v5 = qword_2813651B0;
  BSDispatchQueueAssertMain();
  sub_224B44674(v5 + 696, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4718, &unk_224DB7650);
  type metadata accessor for LocationService(0);
  swift_dynamicCast();
  sub_224DAC2E8();
  sub_224D251F8(v4);

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_224B70F4C(void (*a1)(uint64_t, void))
{
  v2 = [objc_opt_self() sharedManager];
  v3 = [v2 allCachedSnapshotURLs];

  sub_224DA9688();
  sub_224B7A940(&qword_281351A80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v4 = sub_224DAF1B8();

  v5 = sub_224B6DA20(v4);

  v6 = sub_224B421FC(v5);

  a1(v6, 0);
}

void sub_224B71070(uint64_t *a1, uint64_t a2)
{
  v30 = (a2 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService), *(a2 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService + 24));
  v2 = sub_224DAA2A8();
  v3 = 0;
  v4 = v2 + 56;
  v31 = v2;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = MEMORY[0x277D84F90];
  while (v7)
  {
LABEL_11:
    v12 = (*(v31 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v7)))));
    v14 = *v12;
    v13 = v12[1];
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);

    v15 = sub_224DAA2E8();
    if (v15)
    {
      v16 = v15;

      v17 = sub_224DAA098();
      v17(&v32);

      if (swift_dynamicCast())
      {
        v32 = sub_224DAA0A8();
        v33 = v18;
        MEMORY[0x22AA5D210](10, 0xE100000000000000);
        MEMORY[0x22AA5D210]();
      }

      else
      {
        v32 = sub_224DAA0A8();
        v33 = v24;
        MEMORY[0x22AA5D210](0x3E6C696E3C0ALL, 0xE600000000000000);
      }

      v19 = v32;
      v20 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_224A865C4(0, *(v9 + 2) + 1, 1, v9);
      }

      v22 = *(v9 + 2);
      v25 = *(v9 + 3);
      v23 = v22 + 1;
      if (v22 >= v25 >> 1)
      {
        v9 = sub_224A865C4((v25 > 1), v22 + 1, 1, v9);
      }
    }

    else
    {
      v32 = v14;
      v33 = v13;
      MEMORY[0x22AA5D210](0x3E6C696E3C0ALL, 0xE600000000000000);
      v19 = v32;
      v20 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_224A865C4(0, *(v9 + 2) + 1, 1, v9);
      }

      v22 = *(v9 + 2);
      v21 = *(v9 + 3);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v9 = sub_224A865C4((v21 > 1), v22 + 1, 1, v9);
      }
    }

    v7 &= v7 - 1;
    *(v9 + 2) = v23;
    v10 = &v9[16 * v22];
    *(v10 + 4) = v19;
    *(v10 + 5) = v20;
  }

  while (1)
  {
    v11 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      v32 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
      sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0, MEMORY[0x277D83958]);
      v26 = sub_224DAEDA8();
      v28 = v27;

      *a1 = v26;
      a1[1] = v28;
      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v3;
    if (v7)
    {
      v3 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

_OWORD *sub_224B713D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (a2 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService), *(a2 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService + 24));
  v8 = sub_224DAA2B8();
  v10 = MEMORY[0x277D84F70];
  if (!v8)
  {
    goto LABEL_17;
  }

  v11 = v8;
  v12 = v9;
  v13 = sub_224DAA098();
  v13(&v39);

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_17:
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v27 = sub_224DAA2E8();
    if (v27)
    {
      v28 = a1;
      v29 = v27;
      v30 = sub_224DAA098();
      v30(&v39);

      if (swift_dynamicCast())
      {
        result = 0;
        *v28 = v37;
        v28[1] = v38;
        return result;
      }

      a1 = v28;
    }

    *a1 = 0x3E6C696E3CLL;
    a1[1] = 0xE500000000000000;
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_224DAF938();

    v39 = 0xD000000000000014;
    v40 = 0x8000000224DC7A10;
    MEMORY[0x22AA5D210](a3, a4);
    return sub_224CBC42C(7, v39, v40);
  }

  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  result = swift_allocObject();
  result[1] = xmmword_224DB3100;
  *(result + 4) = v37;
  *(result + 5) = v38;
  v36 = result;
  if (v12 >> 62)
  {
    result = sub_224DAF838();
    v15 = result;
    v34 = v11;
    if (result)
    {
      goto LABEL_5;
    }

LABEL_23:

    v39 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
    sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0, MEMORY[0x277D83958]);
    v31 = sub_224DAEDA8();
    v33 = v32;

    result = 0;
    *v35 = v31;
    v35[1] = v33;
    return result;
  }

  v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v34 = v11;
  if (!v15)
  {
    goto LABEL_23;
  }

LABEL_5:
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = v12 & 0xC000000000000001;
    do
    {
      if (v17)
      {
        v18 = MEMORY[0x22AA5DCC0](v16, v12);
      }

      else
      {
        v18 = *(v12 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = sub_224DAA098();
      v20(&v39);

      if (swift_dynamicCast())
      {
        v21 = v15;
        v22 = v12;
        v23 = v10;
        v25 = *(v36 + 2);
        v24 = *(v36 + 3);
        if (v25 >= v24 >> 1)
        {
          v36 = sub_224A865C4((v24 > 1), v25 + 1, 1, v36);
        }

        *(v36 + 2) = v25 + 1;
        v26 = &v36[16 * v25];
        *(v26 + 4) = v37;
        *(v26 + 5) = v38;
        v10 = v23;
        v12 = v22;
        v15 = v21;
      }

      else
      {
      }

      ++v16;
    }

    while (v15 != v16);
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_224B717CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_224B7186C;

  return sub_224B719F4(a5);
}

uint64_t sub_224B7186C(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_224B7196C, 0, 0);
}

uint64_t sub_224B7196C()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1;
  v2(v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_224B719F4(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  v2[26] = swift_task_alloc();
  v4 = sub_224DADF68();
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();
  v5 = sub_224DADA98();
  v2[30] = v5;
  v2[31] = *(v5 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  v2[34] = swift_task_alloc();
  v6 = sub_224DA9688();
  v2[35] = v6;
  v2[36] = *(v6 - 8);
  v2[37] = swift_task_alloc();
  v7 = sub_224DA9878();
  v2[38] = v7;
  v2[39] = *(v7 - 8);
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224B71CA4, 0, 0);
}

void sub_224B71CA4()
{
  v1 = v0;
  v2 = v0[40];
  v3 = v0[37];
  v91 = v0[39];
  v92 = v0[38];
  v4 = v0[36];
  v93 = v1[35];
  v95 = v1[34];
  v98 = v1[22];
  v5 = v1[21];
  v6 = [objc_allocWithZone(MEMORY[0x277CFA2C8]) init];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v7 = sub_224DAE338();
  swift_beginAccess();
  sub_224DA9FE8();
  swift_endAccess();

  v8 = sub_224DAEDE8();

  [v6 setBundleIdentifier_];

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_224DAE328();
  v9 = sub_224DAEDE8();

  [v6 setContainerBundleIdentifier_];

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_224DAE348();
  v10 = sub_224DAEDE8();

  [v6 setEffectiveContainerBundleIdentifier_];

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_224DAE398();
  v11 = sub_224DAEDE8();

  [v6 setVersion_];

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_224DAE298();
  v12 = sub_224DA9778();
  (*(v91 + 8))(v2, v92);
  [v6 setLastModifiedDate_];

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_224DAE3B8();
  v13 = sub_224DA95F8();
  v14 = *(v4 + 8);
  v14(v3, v93);
  [v6 setBundleURL_];

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_224DAE2C8();
  v15 = sub_224DA95F8();
  v14(v3, v93);
  [v6 setContainerURL_];

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_224DAE2F8();
  v16 = sub_224DA95F8();
  v17 = v3;
  v18 = v6;
  v14(v17, v93);
  [v6 setSystemDataContainerURL_];

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_224DAE308();
  sub_224DAF708();
  sub_224A3311C(v95, &qword_27D6F46D8, &unk_224DB7630);
  v19 = sub_224DAEDE8();

  [v6 setDataProtectionLevel_];

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  [v6 setIsDevelopmentExtension_];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  [v6 setWantsLocation_];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_224DAE2E8();
  v20 = sub_224DAEFF8();

  [v6 setAvailableLocalizations_];

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  [v6 setAllowsMixedLocalizations_];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_224DAE248();
  v21 = sub_224DAEDE8();

  [v6 setSdkVersion_];

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v22 = sub_224DAE268();
  [v6 setEntitlements_];

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  [v6 setDisablesImplicitDiscovery_];
  v94 = v5;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v23 = sub_224DAE338();
  v24 = (v98 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_descriptorService);
  __swift_project_boxed_opaque_existential_1((v98 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_descriptorService), *(v98 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_descriptorService + 24));
  if (!sub_224DADA38())
  {
    v29 = v1;
    goto LABEL_6;
  }

  v26 = v1[31];
  v25 = v1[32];
  v27 = v1[30];
  sub_224DACA18();
  sub_224DACF08();

  (*(v26 + 8))(v25, v27);
  v28 = sub_224DACF18();

  v29 = v1;
  if (v28 >> 62)
  {
    goto LABEL_33;
  }

  sub_224DAFD98();
  sub_224A3B79C(0, &unk_27D6F46E0, 0x277CFA1D0);
  v30 = v28;
  while (1)
  {

    sub_224B42A18(v30);
LABEL_6:
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    if (sub_224DADA48())
    {
      v32 = v29[28];
      v31 = v29[29];
      v33 = v29[27];
      sub_224DACA18();
      sub_224DACF08();

      (*(v32 + 8))(v31, v33);
      v34 = sub_224DACF18();

      if (v34 >> 62)
      {
        sub_224A3B79C(0, &unk_27D6F46E0, 0x277CFA1D0);

        v35 = sub_224DAFB68();
      }

      else
      {

        sub_224DAFD98();
        sub_224A3B79C(0, &unk_27D6F46E0, 0x277CFA1D0);
        v35 = v34;
      }

      sub_224B42A18(v35);
    }

    v36 = v29[22];
    sub_224A3B79C(0, &unk_27D6F46E0, 0x277CFA1D0);
    v37 = sub_224DAEFF8();
    [v18 setDescriptors_];

    v38 = *(v36 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_widgetHostService + 24);
    v39 = *(v36 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_widgetHostService + 32);
    __swift_project_boxed_opaque_existential_1((v36 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_widgetHostService), v38);
    (*(v39 + 32))(768, v38, v39);
    v96 = v18;
    v97 = v29;
    v99 = v23;
    if (v29[7])
    {
      v41 = v29[25];
      v40 = v29[26];
      v42 = v29[23];
      v43 = v29[24];
      v44 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      (*(v43 + 16))(v41, v23 + v44, v42);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
      (*(*(v45 - 8) + 56))(v40, 1, 1, v45);
      v46 = type metadata accessor for HostDescriptorPredicate(0);
      *(v40 + v46[5]) = 3;
      *(v40 + v46[6]) = 3;
      v47 = v46[7];
      v48 = *(v43 + 56);
      v48(v40 + v47, 1, 1, v42);
      v49 = v46[8];
      v50 = sub_224DABE18();
      (*(*(v50 - 8) + 56))(v40 + v49, 1, 1, v50);
      v51 = v46[9];
      v52 = sub_224DAC268();
      (*(*(v52 - 8) + 56))(v40 + v51, 1, 1, v52);
      v53 = v40 + v46[10];
      *v53 = 0;
      *(v53 + 8) = 1;
      sub_224A3311C(v40 + v47, &unk_27D6F6140, qword_224DBB6B0);
      (*(v43 + 32))(v40 + v47, v41, v42);
      v48(v40 + v47, 0, 1, v42);
      v29 = v97;
      (*(*(v46 - 1) + 56))(v40, 0, 1, v46);
      v54 = sub_224A6BAF8(v40);
      sub_224A3311C(v40, &qword_27D6F46D0, &unk_224DBD6D0);
      sub_224A699F0((v97 + 2));
      if (v54)
      {
        sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
        v55 = sub_224DAEFF8();
      }

      else
      {
        v55 = 0;
      }

      v18 = v96;
    }

    else
    {
      sub_224A3311C((v29 + 2), &qword_27D6F50E0, &qword_224DB41A0);
      v55 = 0;
    }

    v56 = v29[22];
    [v18 setWidgetConfigurations_];

    v57 = *(v56 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_controlHostService + 24);
    v58 = *(v56 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_controlHostService + 32);
    __swift_project_boxed_opaque_existential_1((v56 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_controlHostService), v57);
    v59 = (*(v58 + 24))(768, v57, v58);
    if (!v59)
    {
      v67 = 0;
      goto LABEL_37;
    }

    v60 = sub_224A7B208(v59);

    if (v60 >> 62)
    {
      break;
    }

    v23 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_36;
    }

LABEL_19:
    v91 = 0;
    v61 = 0;
    v18 = (v60 & 0xC000000000000001);
    v24 = (v60 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v18)
      {
        v62 = MEMORY[0x22AA5DCC0](v61, v60);
      }

      else
      {
        if (v61 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v62 = *(v60 + 8 * v61 + 32);
      }

      v63 = v62;
      v64 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
      v29 = [v63 controlIdentity];
      v65 = [v29 extensionIdentity];

      v66 = sub_224DAF6A8();
      if (v66)
      {
        sub_224DAF9B8();
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
      }

      else
      {
      }

      ++v61;
      if (v64 == v23)
      {
        v18 = v96;
        v29 = v97;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    sub_224A3B79C(0, &unk_27D6F46E0, 0x277CFA1D0);

    v30 = sub_224DAFB68();
  }

  v23 = sub_224DAF838();
  if (v23)
  {
    goto LABEL_19;
  }

LABEL_36:

  sub_224DAF5D8();
  v67 = sub_224DAEFF8();

LABEL_37:
  v68 = v29[22];
  [v18 setControlConfigurations_];

  if (!*(v68 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_liveControlCacheManager))
  {
    __break(1u);
    goto LABEL_49;
  }

  sub_224DACED8();

  v69 = sub_224DAEFF8();

  v70 = v29[22];
  [v18 setLiveControlURLs_];

  if (!*(v70 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_livePlaceholderControlCacheManager))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  sub_224DACED8();

  v71 = sub_224DAEFF8();

  v72 = v29[22];
  [v18 setLivePlaceholderControlURLs_];

  if (!*(v72 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_previewControlCacheManager))
  {
LABEL_50:
    __break(1u);
    return;
  }

  sub_224DACED8();

  v73 = sub_224DAEFF8();

  [v18 setPreviewControlURLs_];

  sub_224DAC9A8();
  v74 = sub_224DAEFF8();

  [v18 setSnapshotURLs_];

  sub_224DAC9A8();
  v75 = sub_224DAEFF8();

  [v18 setTimelineURLs_];

  sub_224DAC9A8();
  v76 = sub_224DAEFF8();

  v77 = v29[21];
  [v18 setPlaceholderURLs_];

  __swift_project_boxed_opaque_existential_1(v77, v94[3]);
  v78 = sub_224DAE378();
  v79 = *(v78 + 16);
  if (v79)
  {
    v100 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v79, 0);
    v80 = 0;
    v81 = *(v100 + 16);
    v82 = 16 * v81;
    do
    {
      v84 = *(v78 + v80 + 32);
      v83 = *(v78 + v80 + 40);
      v85 = *(v100 + 24);
      v86 = v81 + 1;

      if (v81 >= v85 >> 1)
      {
        sub_224A3DFD8((v85 > 1), v86, 1);
      }

      *(v100 + 16) = v86;
      v87 = v100 + v82 + v80;
      *(v87 + 32) = v84;
      *(v87 + 40) = v83;
      v80 += 16;
      ++v81;
      --v79;
    }

    while (v79);
  }

  v88 = sub_224DAEFF8();

  [v96 setNominatedContainerBundleIdentifiers_];

  [v96 copy];
  sub_224DAF758();
  swift_unknownObjectRelease();

  sub_224A3B79C(0, &unk_27D6F46F0, 0x277CFA3B0);
  swift_dynamicCast();
  v89 = v97[20];

  v90 = v97[1];

  v90(v89);
}

uint64_t sub_224B72F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x2822009F8](sub_224B72F50, 0, 0);
}

uint64_t sub_224B72F50()
{
  v0[7] = MEMORY[0x277D84F90];
  __swift_project_boxed_opaque_existential_1((v0[8] + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService), *(v0[8] + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService + 24));
  v1 = sub_224DAC678();
  v0[11] = v1;
  v2 = *(v1 + 16);
  v0[12] = v2;
  if (v2)
  {
    v0[13] = 0;
    sub_224A3317C(v1 + 32, (v0 + 2));
    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_224B730BC;

    return sub_224B719F4((v0 + 2));
  }

  else
  {

    v5 = v0[9];
    v6 = sub_224B422FC(MEMORY[0x277D84F90]);

    v5(v6, 0);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_224B730BC(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 120) = a1;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));

  return MEMORY[0x2822009F8](sub_224B731C4, 0, 0);
}

uint64_t sub_224B731C4()
{
  MEMORY[0x22AA5D350]();
  if (*((v0[7] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[7] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_224DAF038();
  }

  v1 = v0[12];
  v2 = v0[13] + 1;
  sub_224DAF078();
  if (v2 == v1)
  {
    v3 = v0[7];

    v4 = v0[9];
    v5 = sub_224B422FC(v3);

    v4(v5, 0);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[13];
    v0[13] = v8 + 1;
    sub_224A3317C(v0[11] + 40 * v8 + 72, (v0 + 2));
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_224B730BC;

    return sub_224B719F4((v0 + 2));
  }
}

uint64_t sub_224B73358(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v44 = a7;
  v45 = a1;
  v47 = a6;
  v11 = sub_224DACB98();
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v41 = *(v15 - 8);
  v42 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v43 = &v38 - v17;
  if (qword_281351678 != -1)
  {
    swift_once();
  }

  v18 = sub_224DAB258();
  __swift_project_value_buffer(v18, qword_2813650A8);

  v19 = sub_224DAB228();
  v20 = sub_224DAF2A8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = v11;
    v22 = v21;
    v38 = swift_slowAlloc();
    v48[0] = v38;
    *v22 = 136446722;
    v39 = a5;
    if (a2)
    {
      v23 = v45;
    }

    else
    {
      v23 = 7104878;
    }

    if (a2)
    {
      v24 = a2;
    }

    else
    {
      v24 = 0xE300000000000000;
    }

    v25 = sub_224A33F74(v23, v24, v48);
    v26 = v47;

    *(v22 + 4) = v25;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_224A33F74(a3, a4, v48);
    *(v22 + 22) = 2082;
    a5 = v39;
    *(v22 + 24) = sub_224A33F74(v39, v26, v48);
    _os_log_impl(&dword_224A2F000, v19, v20, "Reload controls of kind: %{public}s containedIn: %{public}s, reason: %{public}s", v22, 0x20u);
    v27 = v38;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v27, -1, -1);
    v28 = v22;
    v11 = v40;
    MEMORY[0x22AA5EED0](v28, -1, -1);
  }

  v29 = v43;
  sub_224DA9FF8();
  v30 = swift_allocObject();
  v31 = [objc_opt_self() currentContext];
  if (v31)
  {
    v32 = a5;
    v33 = v31;
    v34 = [v31 remoteProcess];

    a5 = v32;
  }

  else
  {
    v34 = 0;
  }

  v30[2] = v34;
  v30[3] = a5;
  v30[4] = v47;
  *v14 = v30;
  (*(v46 + 104))(v14, *MEMORY[0x277CF9B90], v11);
  v35 = OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_liveControlService;
  v36 = v44;
  swift_beginAccess();
  result = sub_224A3796C(v36 + v35, v48, &qword_27D6F46C0, &qword_224DB7608);
  if (v49)
  {
    __swift_project_boxed_opaque_existential_1(v48, v49);

    sub_224C7F6A4(v29, v45, a2, v14);
    (*(v46 + 8))(v14, v11);
    (*(v41 + 8))(v29, v42);
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224B737DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v55 = a7;
  v63 = a3;
  v64 = a5;
  v65 = a1;
  v66 = a2;
  v56 = sub_224DACB98();
  v62 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v9);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_224DACB08();
  v54 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DACB28();
  v52 = *(v16 - 8);
  v53 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_224DACC88();
  v60 = *(v20 - 8);
  v61 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v59 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v57 = *(v23 - 8);
  v58 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v49 - v25;
  if (qword_281351678 != -1)
  {
    swift_once();
  }

  v27 = sub_224DAB258();
  __swift_project_value_buffer(v27, qword_2813650A8);

  v28 = sub_224DAB228();
  v29 = sub_224DAF2A8();

  v51 = v29;
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v67[0] = v31;
    *v30 = 136446722;
    v49 = v12;
    v32 = v26;
    v33 = v11;
    v34 = a6;
    v35 = v19;
    if (v66)
    {
      v36 = v65;
    }

    else
    {
      v36 = 7104878;
    }

    v50 = v15;
    if (v66)
    {
      v37 = v66;
    }

    else
    {
      v37 = 0xE300000000000000;
    }

    v38 = sub_224A33F74(v36, v37, v67);

    *(v30 + 4) = v38;
    v19 = v35;
    a6 = v34;
    v11 = v33;
    v39 = v63;
    v40 = v64;
    *(v30 + 12) = 2082;
    *(v30 + 14) = sub_224A33F74(v39, a4, v67);
    *(v30 + 22) = 2082;
    v15 = v50;
    v41 = v40;
    v26 = v32;
    v12 = v49;
    *(v30 + 24) = sub_224A33F74(v41, a6, v67);
    _os_log_impl(&dword_224A2F000, v28, v51, "Reload timelines of kind: %{public}s containedIn: %{public}s, reason: %{public}s", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v31, -1, -1);
    MEMORY[0x22AA5EED0](v30, -1, -1);
  }

  sub_224A3317C(v55 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_timelineService, v67);
  __swift_project_boxed_opaque_existential_1(v67, v67[3]);

  sub_224DA9FF8();
  (*(v52 + 104))(v19, *MEMORY[0x277CF9B50], v53);
  (*(v54 + 104))(v15, *MEMORY[0x277CF9B40], v12);
  v42 = swift_allocObject();
  v43 = [objc_opt_self() currentContext];
  if (v43)
  {
    v44 = v43;
    v45 = [v43 remoteProcess];
  }

  else
  {
    v45 = 0;
  }

  v46 = v64;
  v42[2] = v45;
  v42[3] = v46;
  v42[4] = a6;
  *v11 = v42;
  (*(v62 + 104))(v11, *MEMORY[0x277CF9B90], v56);

  sub_224DACC48();
  v47 = v59;
  sub_224DACC38();
  sub_224D8AD10(v65, v66, v26, v47);
  (*(v60 + 8))(v47, v61);
  (*(v57 + 8))(v26, v58);
  return __swift_destroy_boxed_opaque_existential_1(v67);
}

double sub_224B73E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4660, &qword_224DB75D8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v20 - v12);
  swift_beginAccess();
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = *(a2 + 24);
    swift_beginAccess();
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    sub_224A3796C(a1, v13, &qword_27D6F4660, &qword_224DB75D8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = *v13;
      v18 = sub_224DA9688();
      (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
      v19 = v17;
      v15(v9, v17);
      sub_224A3D418(v15, v16);
    }

    else
    {
      sub_224B7A9A4(v13, v9);
      v15(v9, 0);
      sub_224A3D418(v15, v16);
    }

    sub_224A3311C(v9, &unk_27D6F4680, &unk_224DB4610);
    swift_beginAccess();
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t sub_224B74060(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4660, &qword_224DB75D8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = (v29 - v11);
  if (*a1)
  {
    sub_224B7AA14();
    v13 = swift_allocError();
    *v14 = 0;
    v14[1] = 0;
  }

  else
  {
    v13 = swift_allocError();
  }

  v15 = v13;
  if (qword_281351458 != -1)
  {
    swift_once();
  }

  v16 = sub_224DAB258();
  __swift_project_value_buffer(v16, qword_281364DA8);

  v17 = v13;
  v18 = sub_224DAB228();
  v19 = sub_224DAF288();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29[1] = v9;
    v22 = a4;
    v23 = v21;
    v24 = swift_slowAlloc();
    v31 = v24;
    *v20 = 136446466;
    *(v20 + 4) = sub_224A33F74(a2, a3, &v31);
    *(v20 + 12) = 2114;
    v25 = v13;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v23 = v26;
    _os_log_impl(&dword_224A2F000, v18, v19, "[ToolsService][ContentLoading][%{public}s] - Failed (error: %{public}@)", v20, 0x16u);
    sub_224A3311C(v23, &unk_27D6F69F0, &unk_224DB3900);
    v27 = v23;
    a4 = v22;
    MEMORY[0x22AA5EED0](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x22AA5EED0](v24, -1, -1);
    MEMORY[0x22AA5EED0](v20, -1, -1);
  }

  *v12 = v13;
  swift_storeEnumTagMultiPayload();
  sub_224B73E34(v12, a4, v30);

  return sub_224A3311C(v12, &qword_27D6F4660, &qword_224DB75D8);
}

uint64_t sub_224B7432C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a6;
  v50 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v47 - v15;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4660, &qword_224DB75D8);
  v18 = MEMORY[0x28223BE20](v51, v17);
  v20 = (&v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v47 - v22;
  v24 = sub_224DAEC58();
  if ((*(*(v24 - 8) + 48))(a1, 1, v24) == 1)
  {
    if (qword_281351458 != -1)
    {
      swift_once();
    }

    v25 = sub_224DAB258();
    __swift_project_value_buffer(v25, qword_281364DA8);

    v26 = sub_224DAB228();
    v27 = sub_224DAF2A8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = a4;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v52[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_224A33F74(v50, a3, v52);
      _os_log_impl(&dword_224A2F000, v26, v27, "[ToolsService][ContentLoading][%s] - Failed - No content found", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x22AA5EED0](v30, -1, -1);
      v31 = v29;
      a4 = v28;
      MEMORY[0x22AA5EED0](v31, -1, -1);
    }

    sub_224B7AA14();
    v32 = swift_allocError();
    *v33 = 0;
    v33[1] = 0;
    *v20 = v32;
    swift_storeEnumTagMultiPayload();
    v23 = v20;
    goto LABEL_13;
  }

  if (qword_281351458 != -1)
  {
    swift_once();
  }

  v34 = sub_224DAB258();
  __swift_project_value_buffer(v34, qword_281364DA8);

  v35 = sub_224DAB228();
  v36 = sub_224DAF2A8();

  v37 = os_log_type_enabled(v35, v36);
  v47 = a7;
  v48 = a4;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = a5;
    v40 = swift_slowAlloc();
    v52[0] = v40;
    *v38 = 136315138;
    *(v38 + 4) = sub_224A33F74(v50, a3, v52);
    _os_log_impl(&dword_224A2F000, v35, v36, "[ToolsService][ContentLoading][%s] - Succeeded", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v41 = v40;
    a5 = v39;
    MEMORY[0x22AA5EED0](v41, -1, -1);
    MEMORY[0x22AA5EED0](v38, -1, -1);
  }

  v42 = OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_activityService;
  v43 = v49;
  swift_beginAccess();
  result = sub_224A3796C(v43 + v42, v52, &unk_27D6F4FD0, &qword_224DB75F0);
  if (v53)
  {
    v45 = __swift_project_boxed_opaque_existential_1(v52, v53);
    sub_224DABF98();
    __swift_project_boxed_opaque_existential_1((*v45 + 16), *(*v45 + 40));
    sub_224DACEA8();
    (*(v13 + 8))(v16, v12);
    v46 = sub_224DA9688();
    (*(*(v46 - 8) + 56))(v23, 0, 1, v46);
    __swift_destroy_boxed_opaque_existential_1(v52);
    a4 = v48;
    swift_storeEnumTagMultiPayload();
LABEL_13:
    sub_224B73E34(v23, a4, a5);
    return sub_224A3311C(v23, &qword_27D6F4660, &qword_224DB75D8);
  }

  __break(1u);
  return result;
}

void sub_224B748C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, void))
{
  v5 = objc_allocWithZone(MEMORY[0x277CFA2E8]);
  sub_224DA9688();
  v6 = sub_224DAEFF8();
  v7 = sub_224DAEFF8();
  v8 = sub_224DAEFF8();
  v9 = [v5 initWithProposedURLs:v6 protectedURLs:v7 deletedURLs:v8];

  a4(v9, 0);
}

uint64_t sub_224B749CC()
{
  v9 = v0;
  v1 = *__swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_rendererSessionProvider), *(v0[3] + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_rendererSessionProvider + 24));
  v8 = MEMORY[0x277D84F90];
  v2 = *(v1 + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock);
  os_unfair_lock_lock(*(v2 + 16));
  sub_224CC77BC(v1, &v8);
  os_unfair_lock_unlock(*(v2 + 16));
  v0[2] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4630, &unk_224DB75B8);
  sub_224B7A774();
  v3 = sub_224DAED78();
  v5 = v4;

  v6 = v0[1];

  return v6(v3, v5);
}

uint64_t sub_224B74B50(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xD00000000000002CLL;
  }

  sub_224DAF938();

  MEMORY[0x22AA5D210](a1, a2);
  MEMORY[0x22AA5D210](0x2064656D69742027, 0xEC0000002E74756FLL);
  return 0x2065636976726553;
}

unint64_t sub_224B74C18(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4780, qword_224DB77A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  *(inited + 32) = sub_224DAEE18();
  *(inited + 40) = v5;
  if (a2)
  {
    sub_224DAF938();

    MEMORY[0x22AA5D210](a1, a2);
    MEMORY[0x22AA5D210](0x2064656D69742027, 0xEC0000002E74756FLL);
    v6 = 0x2065636976726553;
    v7 = 0xE900000000000027;
  }

  else
  {
    v7 = 0x8000000224DC7B40;
    v6 = 0xD00000000000002CLL;
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_224DA0AC0(inited);
  swift_setDeallocating();
  sub_224A3311C(inited + 32, &unk_27D6F58E0, &unk_224DB6450);
  return v8;
}

uint64_t sub_224B74D88()
{
  if (*(v0 + 8))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_224B74DB0(uint64_t a1)
{
  v2 = sub_224B7AD54();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_224B74DEC(uint64_t a1)
{
  v2 = sub_224B7AD54();

  return MEMORY[0x28211F4A8](a1, v2);
}

id sub_224B74E74(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_224B74F64(void *a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = a2;
    v7[4] = a3;
    v10[4] = sub_224B7AC6C;
    v10[5] = v7;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_224A39F40;
    v10[3] = &block_descriptor_131;
    v8 = _Block_copy(v10);
    v9 = a1;

    BSDispatchMain();
    _Block_release(v8);
  }
}

void sub_224B7531C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_224DAEFF8();
  if (a2)
  {
    v6 = sub_224DA9518();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_224B755D8(char *a1, int a2, void *aBlock, void (*a4)(id, void *))
{
  v6 = _Block_copy(aBlock);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    _Block_copy(v6);
    v8 = a1;
    a4(v9, v6);
    _Block_release(v6);

    _Block_release(v6);
  }

  else
  {

    _Block_release(v6);
  }
}

void sub_224B75774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v14 - v8;
  sub_224A3796C(a1, &v14 - v8, &unk_27D6F4680, &unk_224DB4610);
  v10 = sub_224DA9688();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v12 = sub_224DA95F8();
    (*(v11 + 8))(v9, v10);
  }

  if (a2)
  {
    v13 = sub_224DA9518();
  }

  else
  {
    v13 = 0;
  }

  (*(a3 + 16))(a3, v12, v13);
}

uint64_t sub_224B75900(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  v10 = _Block_copy(aBlock);
  if (a3)
  {
    v11 = sub_224DAEE18();
    a3 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = sub_224DAEE18();
  v15 = v14;
  v16 = sub_224DAEE18();
  v18 = v17;
  _Block_copy(v10);
  v19 = a1;
  sub_224B79E4C(v11, a3, v13, v15, v16, v18, v19, v10, a7);
  _Block_release(v10);
  _Block_release(v10);
}

void sub_224B75A28(char *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = sub_224DAEE18();
  v10 = v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    _Block_copy(v7);
    v12 = a1;
    a5(v8, v10, v13, v7);

    _Block_release(v7);
    _Block_release(v7);
  }

  else
  {

    _Block_release(v7);
  }
}

uint64_t sub_224B75C38()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_224B75D54;

    return sub_224B749AC();
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    sub_224CBC42C(8, 0, 0);
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_224B75D54(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 40) = v2;

  if (v2)
  {
    v7 = sub_224B75EF0;
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;
    v7 = sub_224B75E88;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_224B75E88()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1(v2, v3);
}

uint64_t sub_224B75EF0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_224B760C8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_224B76170;

  return sub_224B75C18();
}

uint64_t sub_224B76170(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v4)
  {
    v10 = sub_224DA9518();

    v11 = v10;
    v12 = 0;
  }

  else
  {
    v13 = sub_224DA96B8();
    sub_224A78024(a1, a2);
    v12 = v13;
    v11 = 0;
    v10 = v13;
  }

  v14 = *(v7 + 24);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

void *sub_224B76304(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    BSDispatchQueueAssert();
    if (qword_281351678 != -1)
    {
      swift_once();
    }

    v4 = sub_224DAB258();
    __swift_project_value_buffer(v4, qword_2813650A8);
    v5 = v3;
    v6 = sub_224DAB228();
    v7 = sub_224DAF2A8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      BSDispatchQueueAssert();
      v10 = [*&v5[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_connection] remoteProcess];
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_224A2F000, v6, v7, "Unsubscribed from task service state from client: %{public}@", v8, 0xCu);
      sub_224A3311C(v9, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v9, -1, -1);
      MEMORY[0x22AA5EED0](v8, -1, -1);
    }

    *&v5[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion] = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_224B76530(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_224B06E2C(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

double sub_224B765C0(void *a1)
{
  sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_taskService], aBlock);
  v3 = *&v1[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_queue];
  v4 = type metadata accessor for ToolServicesClient();
  v5 = objc_allocWithZone(v4);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion] = 0;
  *&v5[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_connection] = a1;
  sub_224A3317C(aBlock, &v5[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient_taskService]);
  *&v5[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue] = v3;
  swift_unknownObjectWeakAssign();
  v30.receiver = v5;
  v30.super_class = v4;
  v6 = v3;
  v7 = a1;
  v8 = objc_msgSendSuper2(&v30, sel_init);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  v10[2] = sub_224B7ACDC;
  v10[3] = v9;
  aBlock[4] = sub_224A75AA4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A37E38;
  aBlock[3] = &block_descriptor_166;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  v13 = v8;

  [v7 configureConnection_];
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  v10 = [v7 remoteProcess];
  v14 = sub_224DAEDE8();
  v15 = [v10 hasEntitlement_];

  if (v15)
  {
    v16 = *&v12[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer__lock];
    v17 = *(v16 + 16);

    os_unfair_lock_lock(v17);
    swift_beginAccess();
    sub_224ADBC84(&v28, v13);
    swift_endAccess();

    os_unfair_lock_unlock(*(v16 + 16));

    v18 = &selRef_activate;
    goto LABEL_8;
  }

  if (qword_281351678 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v19 = sub_224DAB258();
  __swift_project_value_buffer(v19, qword_2813650A8);
  v20 = v10;
  v21 = sub_224DAB228();
  v22 = sub_224DAF2A8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v23 = 138543618;
    *(v23 + 4) = v20;
    *v24 = v20;
    *(v23 + 12) = 2082;
    v26 = v20;
    *(v23 + 14) = sub_224A33F74(0x65736C6166, 0xE500000000000000, aBlock);
    _os_log_impl(&dword_224A2F000, v21, v22, "Tool service connection from %{public}@ failed to authenticate <entitled: %{public}s>", v23, 0x16u);
    sub_224A3311C(v24, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x22AA5EED0](v25, -1, -1);
    MEMORY[0x22AA5EED0](v23, -1, -1);
  }

  v18 = &selRef_invalidate;
LABEL_8:
  [v7 *v18];

  return result;
}

double sub_224B76A3C(uint64_t a1, void *a2, unint64_t a3, void (**a4)(void, void, void))
{
  v38 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v37 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v33 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider), *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 24));
  _Block_copy(a4);
  if (sub_224DAA158())
  {
    if (qword_281351678 != -1)
    {
      swift_once();
    }

    v14 = sub_224DAB258();
    __swift_project_value_buffer(v14, qword_2813650A8);

    v15 = sub_224DAB228();
    v16 = sub_224DAF2A8();

    if (os_log_type_enabled(v15, v16))
    {
      v33 = a1;
      v35 = v16;
      v36 = v9;
      v17 = 0x6E776F6E6B6E75;
      v18 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v41[0] = v34;
      *v18 = 136446466;
      *(v18 + 4) = sub_224A33F74(v38, a3, v41);
      *(v18 + 12) = 2082;
      v19 = [objc_opt_self() currentContext];
      if (v19 && (v20 = v19, v21 = [v19 remoteProcess], v20, v21))
      {
        v22 = [v21 description];

        v17 = sub_224DAEE18();
        v24 = v23;
      }

      else
      {
        v24 = 0xE700000000000000;
      }

      v28 = sub_224A33F74(v17, v24, v41);

      *(v18 + 14) = v28;
      _os_log_impl(&dword_224A2F000, v15, v35, "Requesting to refresh descriptors for %{public}s from %{public}s.", v18, 0x16u);
      v29 = v34;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v29, -1, -1);
      MEMORY[0x22AA5EED0](v18, -1, -1);

      v9 = v36;
      a1 = v33;
    }

    else
    {
    }

    sub_224DA9FF8();
    sub_224DAA278();
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService), *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService + 24));
    sub_224DAC6C8();
    if (v40)
    {
      sub_224A36F98(&v39, v41);
      __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_descriptorService), *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_descriptorService + 24));
      sub_224A3317C(v41, &v39);
      v30 = swift_allocObject();
      sub_224A36F98(&v39, v30 + 16);
      *(v30 + 56) = sub_224A5A398;
      *(v30 + 64) = v13;

      sub_224DACA88();

      __swift_destroy_boxed_opaque_existential_1(v41);
    }

    else
    {
      sub_224A3311C(&v39, &unk_27D6F4700, &unk_224DB3A10);
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v31 = sub_224CBC42C(0, 0, 0);
      v32 = sub_224DA9518();
      (a4)[2](a4, 0, v32);
    }

    (*(v37 + 8))(v12, v9);
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v25 = sub_224CBC42C(8, 0, 0);
    v38 = sub_224DA9518();
    (a4)[2](a4, 0, v38);

    v26 = v38;
  }

  return result;
}

double sub_224B77004(void *a1, unint64_t a2, char *a3, void *a4)
{
  v59 = a1;
  v7 = sub_224DAB7B8();
  v57 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_224DAB848();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v10);
  v53 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAB798();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = (&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_224DAB878();
  v52 = *(v58 - 8);
  v18 = MEMORY[0x28223BE20](v58, v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v51 = &v49 - v22;
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  v62 = &type metadata for FeatureFlags.Widgets;
  v63 = sub_224A80FFC();
  LOBYTE(aBlock[0]) = 10;
  _Block_copy(a4);
  v24 = sub_224DA9C98();
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  if (v24)
  {
    if (qword_281351678 != -1)
    {
      swift_once();
    }

    v25 = sub_224DAB258();
    __swift_project_value_buffer(v25, qword_2813650A8);
    v26 = sub_224DAB228();
    v27 = sub_224DAF2A8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v50 = v7;
      v29 = v23;
      v30 = a3;
      v31 = a2;
      v32 = v28;
      *v28 = 0;
      _os_log_impl(&dword_224A2F000, v26, v27, "Using build and run hack.", v28, 2u);
      v33 = v32;
      a2 = v31;
      a3 = v30;
      v23 = v29;
      v7 = v50;
      MEMORY[0x22AA5EED0](v33, -1, -1);
    }

    v50 = *&a3[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_queue];
    sub_224DAB858();
    *v16 = 2;
    (*(v13 + 104))(v16, *MEMORY[0x277D85188], v12);
    v34 = v51;
    sub_224DAB868();
    (*(v13 + 8))(v16, v12);
    v52 = *(v52 + 8);
    (v52)(v20, v58);
    v35 = swift_allocObject();
    v36 = v59;
    v35[2] = a3;
    v35[3] = v36;
    v35[4] = a2;
    v35[5] = sub_224A5A398;
    v35[6] = v23;
    v63 = sub_224B7AC80;
    v64 = v35;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    v62 = &block_descriptor_146;
    v37 = _Block_copy(aBlock);
    v38 = a3;

    v39 = v53;
    sub_224DAB7E8();
    v60 = MEMORY[0x277D84F90];
    sub_224B7A940(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v40 = v55;
    sub_224DAF788();
    v41 = v50;
    MEMORY[0x22AA5D6A0](v34, v39, v40, v37);
    _Block_release(v37);

    (*(v57 + 8))(v40, v7);
    (*(v54 + 8))(v39, v56);
    (v52)(v34, v58);
  }

  else
  {
    if (qword_281351678 != -1)
    {
      swift_once();
    }

    v42 = sub_224DAB258();
    __swift_project_value_buffer(v42, qword_2813650A8);
    v43 = sub_224DAB228();
    v44 = sub_224DAF2A8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = a2;
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_224A2F000, v43, v44, "Skipping build and run hack.", v46, 2u);
      v47 = v46;
      a2 = v45;
      MEMORY[0x22AA5EED0](v47, -1, -1);
    }

    _Block_copy(a4);
    sub_224B76A3C(a3, v59, a2, a4);
    _Block_release(a4);
  }

  return result;
}

void sub_224B776F4(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider), *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 24));
  if ((sub_224DAA158() & 1) == 0)
  {
    goto LABEL_5;
  }

  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService), *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService + 24));
  v4 = sub_224DAA2A8();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = sub_224B0CC2C(*(v4 + 16), 0);
    v8 = sub_224B2F374(&v12, v7 + 4, v6, v5);
    sub_224A3B7E4(v12);
    if (v8 != v6)
    {
      __break(1u);
LABEL_5:
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v9 = sub_224CBC42C(8, 0, 0);
      v10 = sub_224DAEFF8();
      v11 = sub_224DA9518();
      (*(a2 + 16))(a2, v10);

      goto LABEL_8;
    }
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  sub_224B421FC(v7);

  v11 = sub_224DAEFF8();
  (*(a2 + 16))(a2);

LABEL_8:
}

void sub_224B778C0(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider), *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 24));
  if (sub_224DAA158())
  {
    sub_224B71070(&v11, a1);
    v5 = v4;
    v6 = sub_224DAEDE8();
    if (v5)
    {
      v7 = sub_224DA9518();
    }

    else
    {
      v7 = 0;
    }

    (*(a2 + 16))(a2, v6, v7);
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v8 = sub_224CBC42C(8, 0, 0);
    v9 = sub_224DAEDE8();
    v10 = sub_224DA9518();
    (*(a2 + 16))(a2, v9, v10);
  }
}

void sub_224B77A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider), *(a3 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 24));
  if (sub_224DAA158())
  {
    v8 = sub_224B713D0(&v14, a3, a1, a2);
    v9 = sub_224DAEDE8();
    if (v8)
    {
      v10 = sub_224DA9518();
    }

    else
    {
      v10 = 0;
    }

    (*(a4 + 16))(a4, v9, v10);
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v11 = sub_224CBC42C(8, 0, 0);
    v12 = sub_224DAEDE8();
    v13 = sub_224DA9518();
    (*(a4 + 16))(a4, v12, v13);
  }
}

void sub_224B77BD4(uint64_t a1, uint64_t a2, char *a3, void (**a4)(const void *, void, void *))
{
  v28 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v23 = &v22 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v9 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v10);
  v12 = &v22 - v11;
  v29 = swift_allocObject();
  *(v29 + 16) = a4;
  v24 = a3;
  v13 = *&a3[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService + 24];
  v26 = *&a3[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService + 32];
  v25 = __swift_project_boxed_opaque_existential_1(&a3[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService], v13);
  v22 = a4;
  _Block_copy(a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&qword_281351920, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9F98]);
  sub_224A33088(&qword_2813518E0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC0]);
  sub_224A33088(&unk_281351910, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA0]);
  sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA8]);
  sub_224DAA208();
  sub_224DAC6C8();
  (*(v9 + 8))(v12, v27);
  if (v31)
  {
    sub_224A36F98(&v30, v32);
    v14 = sub_224DAF128();
    v15 = v23;
    (*(*(v14 - 8) + 56))(v23, 1, 1, v14);
    sub_224A3317C(v32, &v30);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v17 = v24;
    v16[4] = v24;
    sub_224A36F98(&v30, (v16 + 5));
    v18 = v29;
    v16[10] = sub_224A5A37C;
    v16[11] = v18;
    v19 = v17;

    sub_224D8E744(0, 0, v15, &unk_224DB7648, v16);

    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    sub_224A3311C(&v30, &unk_27D6F4700, &unk_224DB3A10);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v20 = sub_224CBC42C(0, 0, 0);
    v21 = sub_224DA9518();
    v22[2](v22, 0, v21);
  }
}

void sub_224B77FD8(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider), *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 24));
  if (sub_224DAA158())
  {
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_timelineService), *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_timelineService + 24));
    sub_224D8165C();
    v5 = v4;
    v6 = *(v4 + 16);
    if (v6)
    {
      sub_224DAF9E8();
      v7 = (v5 + 40);
      do
      {
        [objc_allocWithZone(MEMORY[0x277CFA3D8]) initWithWidget:*(v7 - 1) metrics:*v7];
        sub_224DAF9B8();
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        v7 += 2;
        --v6;
      }

      while (v6);
    }

    v9 = objc_allocWithZone(MEMORY[0x277CFA3E0]);
    sub_224A3B79C(0, &unk_281350B10, 0x277CFA3D8);
    v10 = sub_224DAEFF8();

    v11 = [v9 initWithWidgetKeys_];

    (*(a2 + 16))(a2, v11, 0);
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v8 = sub_224CBC42C(8, 0, 0);
    v11 = sub_224DA9518();
    (*(a2 + 16))(a2, 0);
  }
}

uint64_t sub_224B781FC(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v34 = a3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46C8, &qword_224DB7610);
  MEMORY[0x28223BE20](v32, v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v31 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v31 - v17;
  v19 = sub_224DA9688();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v18, 1, 1, v19);
  v21 = a2;
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider), *(a2 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 24));
  if (sub_224DAA158())
  {
    v22 = *(v32 + 48);
    __swift_project_boxed_opaque_existential_1((v21 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_timelineService), *(v21 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_timelineService + 24));
    sub_224D8AB14(v33, v6);
    *&v6[v22] = 0;
    sub_224A3796C(v6, v15, &unk_27D6F4680, &unk_224DB4610);
    v23 = 0;
    if ((*(v20 + 48))(v15, 1, v19) != 1)
    {
      v23 = sub_224DA95F8();
      (*(v20 + 8))(v15, v19);
    }

    (*(v34 + 16))(v34, v23, 0);

    sub_224A3311C(v18, &unk_27D6F4680, &unk_224DB4610);
    v24 = &qword_27D6F46C8;
    v25 = &qword_224DB7610;
    v26 = v6;
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v27 = sub_224CBC42C(8, 0, 0);
    sub_224A3796C(v18, v11, &unk_27D6F4680, &unk_224DB4610);
    v28 = 0;
    if ((*(v20 + 48))(v11, 1, v19) != 1)
    {
      v28 = sub_224DA95F8();
      (*(v20 + 8))(v11, v19);
    }

    v29 = sub_224DA9518();
    (*(v34 + 16))(v34, v28, v29);

    v24 = &unk_27D6F4680;
    v25 = &unk_224DB4610;
    v26 = v18;
  }

  return sub_224A3311C(v26, v24, v25);
}

void sub_224B78580(uint64_t a1, unint64_t a2, char *a3, void (**a4)(void, void, void))
{
  v176 = a2;
  v174 = a1;
  v164 = sub_224DACB98();
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164, v6);
  v162 = (&v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v141 = &v132 - v10;
  v144 = sub_224DAF3B8();
  v142 = *(v144 - 8);
  MEMORY[0x28223BE20](v144, v11);
  v139 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4650, &qword_224DB75C8);
  v143 = *(v145 - 8);
  MEMORY[0x28223BE20](v145, v13);
  v140 = &v132 - v14;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4658, &qword_224DB75D0);
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148, v15);
  v146 = &v132 - v16;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4660, &qword_224DB75D8);
  MEMORY[0x28223BE20](v137, v17);
  v138 = &v132 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4668, &unk_224DB75E0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v151 = &v132 - v21;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v158 = *(v159 - 8);
  v23 = MEMORY[0x28223BE20](v159, v22);
  v136 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v155 = &v132 - v26;
  v157 = sub_224DAC918();
  v156 = *(v157 - 8);
  v28 = MEMORY[0x28223BE20](v157, v27);
  v154 = &v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v173 = &v132 - v31;
  v160 = sub_224DABCC8();
  v175 = *(v160 - 8);
  v33 = MEMORY[0x28223BE20](v160, v32);
  v161 = &v132 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v153 = &v132 - v37;
  MEMORY[0x28223BE20](v36, v38);
  v169 = &v132 - v39;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v171 = *(v172 - 8);
  v41 = MEMORY[0x28223BE20](v172, v40);
  v152 = &v132 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v43);
  v179 = &v132 - v44;
  v170 = sub_224DAE7A8();
  v168 = *(v170 - 8);
  v46 = MEMORY[0x28223BE20](v170, v45);
  v48 = &v132 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v49);
  v178 = &v132 - v50;
  v167 = sub_224DAEB68();
  v166 = *(v167 - 8);
  v52 = MEMORY[0x28223BE20](v167, v51);
  v54 = &v132 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52, v55);
  v177 = &v132 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v59 = MEMORY[0x28223BE20](v57 - 8, v58);
  v61 = &v132 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59, v62);
  v64 = &v132 - v63;
  v65 = swift_allocObject();
  *(v65 + 16) = a4;
  __swift_project_boxed_opaque_existential_1(&a3[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider], *&a3[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 24]);
  v165 = a4;
  _Block_copy(a4);
  if ((sub_224DAA158() & 1) == 0)
  {
    v72 = sub_224DA9688();
    v73 = *(v72 - 8);
    (*(v73 + 56))(v64, 1, 1, v72);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v74 = sub_224CBC42C(8, 0, 0);
    sub_224A3796C(v64, v61, &unk_27D6F4680, &unk_224DB4610);
    v75 = 0;
    if ((*(v73 + 48))(v61, 1, v72) != 1)
    {
      v75 = sub_224DA95F8();
      (*(v73 + 8))(v61, v72);
    }

    v76 = sub_224DA9518();
    (v165)[2](v165, v75, v76);

    sub_224A3311C(v64, &unk_27D6F4680, &unk_224DB4610);
    goto LABEL_10;
  }

  v66 = swift_allocObject();
  v150 = v66;
  *(v66 + 16) = 0;
  v134 = v66 + 16;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_224B7A8F8;
  *(v67 + 24) = v65;
  v149 = v67;
  v68 = OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_activityService;
  swift_beginAccess();
  sub_224A3796C(&a3[v68], &v182, &unk_27D6F4FD0, &qword_224DB75F0);
  if (!v183)
  {
    _Block_release(v165);
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(&v182, v183);
  v135 = v65;

  sub_224DAEB58();
  sub_224DAE798();
  sub_224DAA1B8();
  v69 = v169;
  sub_224BD7040(v174, v176, v169);
  v71 = v172;
  v70 = v173;
  v132 = v68;
  v133 = a3;
  (*(v166 + 16))(v54, v177, v167);
  (*(v168 + 16))(v48, v178, v170);
  (*(v171 + 16))(v152, v179, v71);
  sub_224DAC908();
  v77 = v160;
  (*(v175 + 16))(v153, v69, v160);
  v78 = v156;
  v79 = v157;
  (*(v156 + 16))(v154, v70, v157);
  v80 = MEMORY[0x277CF9880];
  v152 = sub_224B7A940(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
  sub_224B7A940(&unk_281350EB0, v80, MEMORY[0x277CF9888]);
  v81 = MEMORY[0x277CF9A98];
  sub_224B7A940(&qword_281350D60, MEMORY[0x277CF9A98], MEMORY[0x277CF9AB0]);
  sub_224B7A940(&qword_281350D70, v81, MEMORY[0x277CF9AA0]);
  v82 = v155;
  sub_224DAC848();
  sub_224BD746C(v82, 1);
  v97 = v96;
  v98 = *(v158 + 8);
  v99 = v79;
  v100 = v159;
  v98(v82, v159);
  (*(v78 + 8))(v173, v99);
  (*(v175 + 8))(v169, v77);
  (*(v171 + 8))(v179, v172);
  (*(v168 + 8))(v178, v170);
  (*(v166 + 8))(v177, v167);
  __swift_destroy_boxed_opaque_existential_1(&v182);
  v101 = v133;
  v102 = v176;
  if (!v97)
  {
    v115 = v174;
    goto LABEL_15;
  }

  v103 = v151;
  v104 = v97;
  sub_224DABFB8();
  v105 = sub_224DAEC58();
  v106 = (*(*(v105 - 8) + 48))(v103, 1, v105);
  sub_224A3311C(v103, &qword_27D6F4668, &unk_224DB75E0);
  v154 = v104;
  if (v106 == 1)
  {
    v179 = sub_224DABF68();
    v182 = v179;
    v107 = v139;
    sub_224DAF388();
    v180 = *&v101[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_queue];
    v108 = v180;
    v109 = sub_224DAF358();
    v110 = v141;
    (*(*(v109 - 8) + 56))(v141, 1, 1, v109);
    v178 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4690, &unk_224DB75F8);
    sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    sub_224A33088(&qword_281351070, &unk_27D6F4690, &unk_224DB75F8, MEMORY[0x277CBCD90]);
    v101 = v133;
    v131 = sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78, MEMORY[0x277D85228]);
    v111 = v140;
    sub_224DAB458();
    sub_224A3311C(v110, &qword_27D6F5090, &qword_224DB5C30);

    (*(v142 + 8))(v107, v144);

    sub_224A33088(&qword_27D6F46A0, &qword_27D6F4650, &qword_224DB75C8, MEMORY[0x277CBCCE8]);
    v112 = v146;
    v113 = v145;
    sub_224DAB418();
    (*(v143 + 8))(v111, v113);
    v114 = swift_allocObject();
    v115 = v174;
    v116 = v176;
    v114[2] = v174;
    v114[3] = v116;
    v117 = v149;
    v118 = v150;
    v114[4] = v149;
    v114[5] = v118;
    v119 = swift_allocObject();
    v120 = v176;
    v119[2] = v115;
    v119[3] = v120;
    v119[4] = v117;
    v119[5] = v118;
    v121 = v154;
    v119[6] = v101;
    v119[7] = v121;
    sub_224A33088(&qword_27D6F46A8, &qword_27D6F4658, &qword_224DB75D0, MEMORY[0x277CBCC58]);
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    v122 = v101;

    v123 = v148;
    v124 = sub_224DAB408();

    v102 = v176;

    (*(v147 + 8))(v112, v123);
    swift_beginAccess();
    *(v118 + 16) = v124;

LABEL_15:
    v125 = v132;
    goto LABEL_7;
  }

  v125 = v132;
  sub_224A3796C(&v101[v132], &v182, &unk_27D6F4FD0, &qword_224DB75F0);
  if (v183)
  {
    v126 = __swift_project_boxed_opaque_existential_1(&v182, v183);
    v127 = v136;
    sub_224DABF98();
    __swift_project_boxed_opaque_existential_1((*v126 + 16), *(*v126 + 40));
    v128 = v127;
    v129 = v138;
    sub_224DACEA8();
    v98(v128, v100);
    v130 = sub_224DA9688();
    (*(*(v130 - 8) + 56))(v129, 0, 1, v130);
    __swift_destroy_boxed_opaque_existential_1(&v182);
    v102 = v176;
    swift_storeEnumTagMultiPayload();
    sub_224B73E34(v129, v149, v150);

    sub_224A3311C(v129, &qword_27D6F4660, &qword_224DB75D8);
    v115 = v174;
LABEL_7:
    sub_224A3796C(&v101[v125], &v182, &unk_27D6F4FD0, &qword_224DB75F0);
    if (v183)
    {
      v83 = __swift_project_boxed_opaque_existential_1(&v182, v183);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_224DB74F0;
      *(v84 + 32) = 0xE500000000000000;
      v85 = v162;
      *v162 = v84;
      v86 = v163;
      v87 = v164;
      (*(v163 + 104))(v85, *MEMORY[0x277CF9B90], v164);
      v88 = *v83;
      v89 = v161;
      sub_224BD7040(v115, v102, v161);
      v90 = v175;
      v93 = MEMORY[0x28223BE20](v91, v92);
      *(&v132 - 4) = v88;
      *(&v132 - 3) = v89;
      v181 = 1;
      MEMORY[0x28223BE20](v93, v94);
      *(&v132 - 4) = &v181;
      *(&v132 - 3) = sub_224B7A900;
      v131 = v95;

      sub_224DAC128();

      if ((v181 & 1) == 0)
      {
        (*(v90 + 8))(v89, v160);
        (*(v86 + 8))(v85, v87);
        __swift_destroy_boxed_opaque_existential_1(&v182);

LABEL_10:

        return;
      }

      goto LABEL_20;
    }

LABEL_19:
    _Block_release(v165);
    __break(1u);
LABEL_20:
    _Block_release(v165);
    __break(1u);
  }

  _Block_release(v165);
  __break(1u);
}

uint64_t sub_224B79C74(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FileReaperScenario(0);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v21[-1] - v12;
  v14 = [a1 scenario];
  v15 = type metadata accessor for FileReaperProtectionConfiguration(0);
  if (v14 < 4)
  {
    v16 = (v14 + 1);
  }

  else
  {
    v16 = 3;
  }

  (*(*(v15 - 8) + 56))(v10, v16, 4, v15);
  sub_224B7A830(v10, v13);
  if (qword_281352038 != -1)
  {
    swift_once();
  }

  sub_224A3317C(qword_2813651B0 + 88, v21);
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v17 = [a1 dryRun];
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;

  sub_224CCD218(v13, v17, sub_224B7A894, v18);

  sub_224B7A89C(v13);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

void sub_224B79E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider), *(Strong + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 24));
    if (sub_224DAA158())
    {
      a9(a1, a2, a3, a4, a5, a6, v20);
      (*(a8 + 16))(a8, 0);
      v17 = v20;
    }

    else
    {
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v18 = sub_224CBC42C(8, 0, 0);
      v19 = sub_224DA9518();
      (*(a8 + 16))(a8, v19);

      v17 = v19;
    }
  }
}

void sub_224B79FBC(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue);
  BSDispatchQueueAssert();
  if (qword_281351678 != -1)
  {
LABEL_37:
    swift_once();
  }

  v5 = sub_224DAB258();
  __swift_project_value_buffer(v5, qword_2813650A8);
  v6 = v3;
  v7 = sub_224DAB228();
  v8 = sub_224DAF2A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    BSDispatchQueueAssert();
    v11 = [*&v6[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_connection] remoteProcess];
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_224A2F000, v7, v8, "Subscribe to task service state from client: %{public}@", v9, 0xCu);
    sub_224A3311C(v10, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v10, -1, -1);
    MEMORY[0x22AA5EED0](v9, -1, -1);
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = sub_224B7A6C0;
  v66 = v12;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v64 = sub_224A3837C;
  *(&v64 + 1) = &block_descriptor_13;
  v13 = _Block_copy(&aBlock);
  v14 = objc_opt_self();

  v15 = [v14 responderWithHandler_];
  _Block_release(v13);

  [v15 setQueue_];
  v16 = [objc_allocWithZone(MEMORY[0x277CF0B58]) initWithInfo:0 responder:v15];
  *&v6[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion] = v16;
  v17 = v16;
  swift_unknownObjectRelease();
  sub_224A3317C(&v6[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient_taskService], v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4600, &qword_224DB7568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4608, &qword_224DB7570);
  if (swift_dynamicCast())
  {
    v18 = *(&v64 + 1);
    v19 = v65;
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v64 + 1));
    v3 = (*(v19 + 2))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v65 = 0;
    aBlock = 0u;
    v64 = 0u;
    sub_224A3311C(&aBlock, &unk_27D6F4610, &qword_224DB7578);
    v3 = sub_224DA11A4(MEMORY[0x277D84F90]);
  }

  v20 = 0;
  v21 = 0;
  v22 = v3 + 64;
  v23 = 1 << *(v3 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v3 + 64);
  v26 = (v23 + 63) >> 6;
  do
  {
    if (!v25)
    {
      while (1)
      {
        v27 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v27 >= v26)
        {
          goto LABEL_19;
        }

        v25 = *(v22 + 8 * v27);
        ++v20;
        if (v25)
        {
          v20 = v27;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v27 = v20;
LABEL_16:
    v28 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v29 = *(*(v3 + 56) + ((v27 << 9) | (8 * v28)));
    v30 = __OFADD__(v21, v29);
    v21 += v29;
  }

  while (!v30);
  __break(1u);
LABEL_19:
  v60 = v3;
  v57 = v17;
  v58 = a2;
  v31 = v6;
  v32 = sub_224DAB228();
  v33 = sub_224DAF2A8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138543618;
    BSDispatchQueueAssert();
    v36 = [*&v31[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_connection] remoteProcess];
    *(v34 + 4) = v36;
    *v35 = v36;
    *(v34 + 12) = 2050;
    *(v34 + 14) = v21;
    _os_log_impl(&dword_224A2F000, v32, v33, "Subscribed to task service state from client: %{public}@, current count: %{public}ld", v34, 0x16u);
    sub_224A3311C(v35, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v35, -1, -1);
    MEMORY[0x22AA5EED0](v34, -1, -1);
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C40, &qword_224DB7580);
  a2 = v60;
  v37 = sub_224DAFB88();
  v38 = v60;
  v39 = 0;
  v40 = 1 << *(v60 + 32);
  v41 = *(v60 + 64);
  v42 = -1;
  if (v40 < 64)
  {
    v42 = ~(-1 << v40);
  }

  v43 = v42 & v41;
  v44 = (v40 + 63) >> 6;
  v61 = v37;
  v59 = v37 + 64;
  if ((v42 & v41) != 0)
  {
    while (1)
    {
      v45 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
LABEL_30:
      a2 = v45 | (v39 << 6);
      v48 = (*(v38 + 48) + 16 * a2);
      v3 = *v48;
      v4 = v48[1];
      v49 = *(*(v38 + 56) + 8 * a2);
      v50 = objc_allocWithZone(MEMORY[0x277CCABB0]);

      v51 = [v50 initWithInteger_];
      *(v59 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
      v52 = (v61[6] + 16 * a2);
      *v52 = v3;
      v52[1] = v4;
      *(v61[7] + 8 * a2) = v51;
      v53 = v61[2];
      v30 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v30)
      {
        break;
      }

      v38 = v60;
      v61[2] = v54;
      if (!v43)
      {
        goto LABEL_25;
      }
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_25:
  v46 = v39;
  while (1)
  {
    v39 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      goto LABEL_35;
    }

    if (v39 >= v44)
    {
      break;
    }

    v47 = *(v22 + 8 * v39);
    ++v46;
    if (v47)
    {
      v45 = __clz(__rbit64(v47));
      v43 = (v47 - 1) & v47;
      goto LABEL_30;
    }
  }

  sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
  v55 = v57;
  v56 = sub_224DAECC8();
  (*(v58 + 16))(v58, v56, v55, 0);
}

uint64_t sub_224B7A6C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_224ACED1C;

  return sub_224B760C8(v2, v3);
}

unint64_t sub_224B7A774()
{
  result = qword_27D6F4638;
  if (!qword_27D6F4638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4630, &unk_224DB75B8);
    sub_224B7A940(&unk_27D6F4640, MEMORY[0x277CFA080], MEMORY[0x277CFA088]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4638);
  }

  return result;
}

uint64_t sub_224B7A830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileReaperScenario(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B7A89C(uint64_t a1)
{
  v2 = type metadata accessor for FileReaperScenario(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224B7A940(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224B7A9A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_224B7AA14()
{
  result = qword_27D6F46B0;
  if (!qword_27D6F46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F46B0);
  }

  return result;
}

uint64_t sub_224B7AA70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_224ACFF60;

  return sub_224B72F2C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_224B7AB38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_224ACFF60;

  return sub_224B717CC(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t objectdestroy_85Tm(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t objectdestroy_148Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_179Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_224B7AD54()
{
  result = qword_27D6F4778;
  if (!qword_27D6F4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4778);
  }

  return result;
}

void sub_224B7ADF0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v72 = a2;
  v71 = sub_224DACB98();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v3);
  v70 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_224DACB08();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v5);
  v68 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_224DACB28();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v7);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DA9878();
  v83 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v63 - v16;
  v18 = sub_224DAC268();
  v85 = *(v18 - 8);
  v86 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v24 = MEMORY[0x28223BE20](v22 - 8, v23);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v63 - v28;
  v30 = sub_224DABDB8();
  v31 = &v30[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v32 = *(v31 + 1);

  if (v32)
  {

LABEL_25:
    v60 = sub_224DACC88();
    (*(*(v60 - 8) + 56))(v72, 1, 1, v60);
  }

  else
  {
    v84 = v26;
    v82 = v21;
    v76 = v17;
    v77 = v14;
    v79 = v10;
    v63 = v9;
    v33 = a1 + 64;
    v34 = 1 << *(a1 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(a1 + 64);
    v75 = OBJC_IVAR____TtC10ChronoCore39MobileSnapshotReloadConfigurationPolicy_expirationDuration;
    v73 = (v34 + 63) >> 6;
    v37 = v85;
    v80 = v85 + 32;
    v81 = v85 + 16;
    v74 = v83 + 1;
    v83 = (v85 + 8);

    v38 = 0;
    v39 = v86;
    v78 = v29;
    v87 = a1;
    while (v36)
    {
      v40 = v38;
LABEL_18:
      v43 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v44 = v43 | (v40 << 6);
      v45 = v82;
      (*(v37 + 16))(v82, *(a1 + 48) + *(v37 + 72) * v44, v39);
      v46 = *(*(a1 + 56) + 8 * v44);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      v48 = *(v47 + 48);
      v49 = *(v37 + 32);
      v50 = v84;
      v49(v84, v45, v39);
      *(v50 + v48) = v46;
      (*(*(v47 - 8) + 56))(v50, 0, 1, v47);
      v51 = v46;
LABEL_19:
      sub_224B7C0DC(v50, v29);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      if ((*(*(v52 - 8) + 48))(v29, 1, v52) == 1)
      {

        goto LABEL_25;
      }

      v53 = *&v29[*(v52 + 48)];
      sub_224DABE68();
      a1 = v87;
      if (v89)
      {
        sub_224A39D14(&v88, v90);
        __swift_project_boxed_opaque_existential_1(v90, v90[3]);
        v54 = v77;
        sub_224DAEA88();
        v55 = v76;
        sub_224DA9768();
        v56 = *v74;
        v57 = v79;
        (*v74)(v54, v79);
        sub_224DA9868();
        v58 = sub_224DA9798();
        v56(v54, v57);
        v56(v55, v57);
        if (v58)
        {
          (*(v64 + 104))(v63, *MEMORY[0x277CF9B50], v65);
          (*(v66 + 104))(v68, *MEMORY[0x277CF9B40], v67);
          (*(v69 + 104))(v70, *MEMORY[0x277CF9BE8], v71);
          sub_224DACC48();
          v61 = v72;
          sub_224DACC38();

          v62 = sub_224DACC88();
          (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
          __swift_destroy_boxed_opaque_existential_1(v90);
          (*v83)(v78, v86);
          return;
        }

        __swift_destroy_boxed_opaque_existential_1(v90);
        v39 = v86;
        a1 = v87;
        v29 = v78;
      }

      else
      {

        sub_224B7C14C(&v88);
        v39 = v86;
      }

      (*v83)(v29, v39);
      v37 = v85;
    }

    if (v73 <= v38 + 1)
    {
      v41 = v38 + 1;
    }

    else
    {
      v41 = v73;
    }

    v42 = v41 - 1;
    while (1)
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v40 >= v73)
      {
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
        v50 = v84;
        (*(*(v59 - 8) + 56))(v84, 1, 1, v59);
        v36 = 0;
        v38 = v42;
        goto LABEL_19;
      }

      v36 = *(v33 + 8 * v40);
      ++v38;
      if (v36)
      {
        v38 = v40;
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}

uint64_t sub_224B7B708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t))
{
  v47 = a4;
  v48 = a5;
  v49 = a1;
  v50 = a2;
  v5 = sub_224DACB08();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DACB28();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DACB98();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v42 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = (&v42 - v24);
  v26 = sub_224DABDB8();
  v27 = &v26[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v28 = *(v27 + 1);

  if (v28)
  {

    v29 = MEMORY[0x277CF98A8];
LABEL_9:
    v37 = 1;
    v36 = v49;
LABEL_10:
    v38 = sub_224DACC88();
    (*(*(v38 - 8) + 56))(v36, v37, 1, v38);
    v39 = *v29;
    v40 = sub_224DABD68();
    return (*(*(v40 - 8) + 104))(v50, v39, v40);
  }

  v45 = v12;
  v46 = v25;
  v44 = v8;
  if (!sub_224B7BDE0(v48) || sub_224DACBB8() < 1)
  {
    sub_224DAE1E8();
    sub_224DAE1A8();
    v29 = MEMORY[0x277CF98B0];
    goto LABEL_9;
  }

  sub_224DACC68();
  v30 = *MEMORY[0x277CF9BF0];
  v48 = *(v14 + 104);
  (v48)(v18, v30, v13);
  v31 = sub_224DACB88();
  v32 = *(v14 + 8);
  v32(v18, v13);
  v32(v22, v13);
  v43 = v32;
  if (v31 & 1) != 0 || (sub_224DACC68(), (v48)(v18, *MEMORY[0x277CF9B60], v13), v33 = sub_224DACB88(), v32(v18, v13), v32(v22, v13), (v33))
  {
    v34 = swift_allocObject();
    *(v34 + 16) = 0xD000000000000019;
    *(v34 + 24) = 0x8000000224DC58C0;
    v35 = v46;
    *v46 = v34;
    (v48)(v35, *MEMORY[0x277CF9B70], v13);
    sub_224DACBB8();
    v36 = v49;
LABEL_13:
    sub_224DACC58();
    sub_224DACC08();
    (*(v14 + 16))(v22, v35, v13);
    sub_224DACC28();
    sub_224DACC18();
    v43(v35, v13);
    v37 = 0;
    v29 = MEMORY[0x277CF98B8];
    goto LABEL_10;
  }

  sub_224DACC68();
  result = sub_224DACBB8();
  if (!__OFSUB__(result, 1))
  {
    v36 = v49;
    v35 = v46;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_224B7BBB0()
{
  v1 = OBJC_IVAR____TtC10ChronoCore39MobileSnapshotReloadConfigurationPolicy_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobileSnapshotReloadConfigurationPolicy(uint64_t a1)
{
  result = qword_281352538;
  if (!qword_281352538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224B7BCA0(uint64_t a1)
{
  result = sub_224DAB258();
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

unint64_t sub_224B7BD4C()
{
  result = qword_281350E50;
  if (!qword_281350E50)
  {
    sub_224DAC268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350E50);
  }

  return result;
}

BOOL sub_224B7BDE0(void *a1)
{
  v2 = sub_224DAE6E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 domain];
  v8 = sub_224DAEE18();
  v10 = v9;

  v11 = [a1 code];
  if (sub_224DAEE18() == v8 && v12 == v10)
  {
  }

  else
  {
    v14 = sub_224DAFD88();

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3C10], v2);
  v15 = sub_224DAE6D8();
  (*(v3 + 8))(v6, v2);
  if (v15 == v11)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (sub_224DAEE18() == v8 && v16 == v10)
  {
  }

  else
  {
    v18 = sub_224DAFD88();

    if ((v18 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3C60], v2);
  v19 = sub_224DAE6D8();
  (*(v3 + 8))(v6, v2);
  if (v19 == v11)
  {
LABEL_17:

    return 0;
  }

LABEL_18:
  if (sub_224DAEE18() == v8 && v21 == v10)
  {
  }

  else
  {
    v22 = sub_224DAFD88();

    if ((v22 & 1) == 0)
    {

      return 1;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3BF0], v2);
  v23 = sub_224DAE6D8();

  (*(v3 + 8))(v6, v2);
  return v23 != v11;
}

uint64_t sub_224B7C0DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B7C14C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3CB0, &unk_224DB7860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_224B7C210(NSObject *a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6, void (*a7)(unint64_t, uint64_t), uint64_t a8, _BYTE *a9)
{
  v201 = a8;
  v202 = a7;
  v196 = a5;
  v225 = a4;
  v207 = a1;
  v204 = a9;
  v193 = sub_224DAE6E8();
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193, v11);
  v191 = &v180[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4270, &qword_224DB6580);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v188 = &v180[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v17);
  v187 = &v180[-v18];
  v203 = sub_224DAB1F8();
  v200 = *(v203 - 8);
  v20 = MEMORY[0x28223BE20](v203, v19);
  v190 = &v180[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20, v22);
  v189 = &v180[-v23];
  v199 = sub_224DABE18();
  v197 = *(v199 - 8);
  v25 = MEMORY[0x28223BE20](v199, v24);
  v27 = &v180[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v180[-v29];
  v228 = sub_224DAB258();
  v31 = *(v228 - 8);
  v33 = MEMORY[0x28223BE20](v228, v32);
  v35 = &v180[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x28223BE20](v33, v36);
  v185 = &v180[-v38];
  v40 = MEMORY[0x28223BE20](v37, v39);
  v205 = &v180[-v41];
  MEMORY[0x28223BE20](v40, v42);
  v229 = &v180[-v43];
  v44 = sub_224DAC268();
  v45 = *(v44 - 8);
  v47 = MEMORY[0x28223BE20](v44, v46);
  v195 = &v180[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = MEMORY[0x28223BE20](v47, v49);
  v212 = &v180[-v51];
  v53 = MEMORY[0x28223BE20](v50, v52);
  v231 = &v180[-v54];
  MEMORY[0x28223BE20](v53, v55);
  v218 = &v180[-v56];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4818, &qword_224DB79C0);
  v59 = MEMORY[0x28223BE20](v57 - 8, v58);
  v223 = &v180[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v59, v61);
  v222 = &v180[-v62];
  v198 = swift_projectBox();
  v237.isa = sub_224A60D5C(MEMORY[0x277D84F90]);
  v63 = *(a2 + 64);
  v209 = a2 + 64;
  v64 = 1 << *(a2 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & v63;
  v216 = OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger;
  v224 = (v64 + 63) >> 6;
  v230 = v45 + 2;
  v232 = v45 + 4;
  v219 = v45;
  v221 = &v45[1];
  v215 = (v31 + 16);
  v217 = (v31 + 8);
  v194 = 0x8000000224DC7DB0;
  v220 = a2;

  LODWORD(v206) = 0;
  v68 = 0;
  v210 = 0;
  *&v69 = 136446210;
  v208 = v69;
  *&v69 = 136446466;
  v183 = v69;
  v186 = v35;
  v184 = v27;
  v226 = v30;
  v227 = v44;
  v214 = a3;
LABEL_4:
  v70 = v68;
LABEL_5:
  v71 = v229;
  v72 = v224;
  if (!v66)
  {
LABEL_7:
    if (v72 <= v70 + 1)
    {
      v74 = v70 + 1;
    }

    else
    {
      v74 = v72;
    }

    v75 = v74 - 1;
    while (1)
    {
      v73 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v73 >= v72)
      {
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4820, qword_224DB79C8);
        v86 = v223;
        (*(*(v110 - 8) + 56))(v223, 1, 1, v110);
        v66 = 0;
        goto LABEL_15;
      }

      v66 = *(v209 + 8 * v73);
      ++v70;
      if (v66)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_53:
    v178 = v67;
    swift_once();
    v67 = v178;
    goto LABEL_45;
  }

  while (1)
  {
    v73 = v70;
LABEL_14:
    v76 = __clz(__rbit64(v66));
    v66 &= v66 - 1;
    v77 = v76 | (v73 << 6);
    v78 = v220;
    v79 = v219;
    v80 = v218;
    (v219[2].isa)(v218, *(v220 + 48) + v219[9].isa * v77, v44);
    v81 = *(*(v78 + 56) + 8 * v77);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4820, qword_224DB79C8);
    v83 = v44;
    v84 = *(v82 + 48);
    isa = v79[4].isa;
    v86 = v223;
    isa(v223, v80, v83);
    *&v86[v84] = v81;
    (*(*(v82 - 8) + 56))(v86, 0, 1, v82);
    v87 = v81;
    v75 = v73;
    v30 = v226;
    v71 = v229;
LABEL_15:
    v88 = v86;
    v89 = v222;
    sub_224A44E4C(v88, v222, &qword_27D6F4818, &qword_224DB79C0);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4820, qword_224DB79C8);
    v91 = (*(*(v90 - 8) + 48))(v89, 1, v90);
    v92 = v231;
    if (v91 == 1)
    {
      break;
    }

    v93 = v89;
    v45 = v227;
    (v232->isa)(v92, v93, v227);
    if (*(a3 + 16))
    {
      v94 = sub_224A61E5C(v92);
      if (v95)
      {
        v111 = (*(a3 + 56) + 16 * v94);
        v113 = *v111;
        v112 = v111[1];
        v114 = v207;
        if (v207)
        {
          v213 = v75;
          v118 = v228;
          swift_willThrow();
          swift_unknownObjectRetain();
          v210 = 0;
          v119 = v114;
        }

        else
        {
          v115 = swift_unknownObjectRetain();
          v116 = MEMORY[0x22AA5E4C0](v115);
          v45 = v231;
          v117 = v210;
          sub_224B7D948(v113, v112, v225, v231, &v237, &v235);
          if (!v117)
          {
            v210 = 0;
            objc_autoreleasePoolPop(v116);
            swift_unknownObjectRelease();
            v44 = v227;
            v67 = (*v221)(v45, v227);
            v70 = v75;
            goto LABEL_5;
          }

          v213 = v75;
          v118 = v228;
          v119 = v235;
          objc_autoreleasePoolPop(v116);
          v210 = 0;
          v114 = v207;
        }

        v211 = v119;
        swift_getErrorValue();
        v120 = v233;
        v121 = v234;
        v122 = v114;
        v45 = sub_224D1680C(v120, v121);
        v124 = v123;
        swift_getObjectType();
        v235 = 0;
        v236 = 0xE000000000000000;
        sub_224DAF938();

        v235 = 0xD000000000000020;
        v236 = v194;
        v206 = v45;
        MEMORY[0x22AA5D210](v45, v124);
        sub_224DABD08();

        (*v215)(v205, v225 + v216, v118);
        v125 = v231;
        v126 = v195;
        v44 = v227;
        (v230->isa)(v195, v231, v227);

        v127 = sub_224DAB228();
        v128 = sub_224DAF288();

        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v182 = swift_slowAlloc();
          v235 = v182;
          *v129 = v183;
          sub_224A60144(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
          v181 = v128;
          v130 = sub_224DAFD28();
          v132 = v131;
          v45 = *v221;
          (*v221)(v126, v227);
          v133 = sub_224A33F74(v130, v132, &v235);

          *(v129 + 4) = v133;
          *(v129 + 12) = 2082;
          v134 = sub_224A33F74(v206, v124, &v235);

          *(v129 + 14) = v134;
          _os_log_impl(&dword_224A2F000, v127, v181, "%{public}s reload: failed with error %{public}s)", v129, 0x16u);
          v135 = v182;
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v135, -1, -1);
          v136 = v129;
          v44 = v227;
          MEMORY[0x22AA5EED0](v136, -1, -1);
          swift_unknownObjectRelease();

          (*v217)(v205, v228);
          v67 = (v45)(v231, v44);
        }

        else
        {
          swift_unknownObjectRelease();

          v137 = *v221;
          (*v221)(v126, v44);
          (*v217)(v205, v228);
          v67 = (v137)(v125, v44);
        }

        LODWORD(v206) = 1;
        a3 = v214;
        v30 = v226;
        v68 = v213;
        goto LABEL_4;
      }
    }

    (*v215)(v71, v225 + v216, v228);
    v96 = v212;
    (v230->isa)(v212, v92, v45);
    v97 = sub_224DAB228();
    v98 = sub_224DAF288();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v213 = v75;
      v101 = v100;
      v235 = v100;
      *v99 = v208;
      sub_224A60144(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
      v102 = sub_224DAFD28();
      v103 = v96;
      v105 = v104;
      v211 = *v221;
      (v211)(v103, v45);
      v106 = sub_224A33F74(v102, v105, &v235);

      *(v99 + 4) = v106;
      _os_log_impl(&dword_224A2F000, v97, v98, "%{public}s reload: missing file promise", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v101);
      v107 = v228;
      v71 = v229;
      MEMORY[0x22AA5EED0](v101, -1, -1);
      MEMORY[0x22AA5EED0](v99, -1, -1);

      (*v217)(v71, v107);
      v67 = (v211)(v231, v45);
      v30 = v226;
      v70 = v213;
    }

    else
    {

      v108 = v96;
      v109 = *v221;
      (*v221)(v108, v45);
      (*v217)(v71, v228);
      v67 = (v109)(v92, v45);
      v70 = v75;
    }

    a3 = v214;
    v44 = v45;
    v72 = v224;
    if (!v66)
    {
      goto LABEL_7;
    }
  }

  v138 = *v215;
  v139 = v197;
  v140 = (v197 + 16);
  if ((v206 & 1) == 0)
  {
    v152 = v186;
    v138(v186, v225 + v216, v228);
    v153 = v184;
    v154 = v199;
    (*v140)(v184, v196, v199);
    v155 = sub_224DAB228();
    v156 = sub_224DAF2A8();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v235 = v158;
      *v157 = v208;
      sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
      v159 = sub_224DAFD28();
      v161 = v160;
      (*(v139 + 8))(v153, v154);
      v162 = sub_224A33F74(v159, v161, &v235);

      *(v157 + 4) = v162;
      _os_log_impl(&dword_224A2F000, v155, v156, "%{public}s reload: succeeded", v157, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v158);
      MEMORY[0x22AA5EED0](v158, -1, -1);
      MEMORY[0x22AA5EED0](v157, -1, -1);
    }

    else
    {

      (*(v139 + 8))(v153, v154);
    }

    (*v217)(v152, v228);
    v71 = v204;
    v167 = v203;
    v168 = v198;
    swift_beginAccess();
    v169 = v168;
    v170 = v188;
    sub_224A3796C(v169, v188, &qword_27D6F4270, &qword_224DB6580);
    v171 = v200;
    v172 = (*(v200 + 48))(v170, 1, v167);
    v173 = v190;
    if (v172 == 1)
    {
      sub_224A3311C(v170, &qword_27D6F4270, &qword_224DB6580);
    }

    else
    {
      (*(v171 + 32))(v190, v170, v167);
      v176 = sub_224DAF4A8();
      if (qword_2813507E8 != -1)
      {
        v179 = v176;
        swift_once();
        v176 = v179;
      }

      sub_224DAB1D8(v176, &dword_224A2F000, qword_281364CC0, "MobileTimelineReload", 20, 2, v173, "Reload succeeded.", 17, 2, MEMORY[0x277D84F90]);
      (*(v171 + 8))(v173, v167);
    }

    v202(v237.isa, 0);
    goto LABEL_51;
  }

  v141 = v185;
  v138(v185, v225 + v216, v228);
  v142 = v199;
  (*v140)(v30, v196, v199);
  v143 = sub_224DAB228();
  v144 = sub_224DAF2A8();
  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    v146 = v30;
    v147 = swift_slowAlloc();
    v235 = v147;
    *v145 = v208;
    sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
    v148 = sub_224DAFD28();
    v150 = v149;
    (*(v139 + 8))(v146, v142);
    v151 = sub_224A33F74(v148, v150, &v235);

    *(v145 + 4) = v151;
    _os_log_impl(&dword_224A2F000, v143, v144, "%{public}s reload: failed", v145, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v147);
    MEMORY[0x22AA5EED0](v147, -1, -1);
    MEMORY[0x22AA5EED0](v145, -1, -1);
  }

  else
  {

    (*(v139 + 8))(v30, v142);
  }

  (*v217)(v141, v228);
  v71 = v204;
  a3 = v203;
  v163 = v198;
  swift_beginAccess();
  v164 = v163;
  v165 = v187;
  sub_224A3796C(v164, v187, &qword_27D6F4270, &qword_224DB6580);
  v45 = v200;
  v166 = (*(v200 + 48))(v165, 1, a3);
  v30 = v189;
  if (v166 == 1)
  {
    sub_224A3311C(v165, &qword_27D6F4270, &qword_224DB6580);
    goto LABEL_46;
  }

  (v45[4].isa)(v189, v165, a3);
  v67 = sub_224DAF4A8();
  if (qword_2813507E8 != -1)
  {
    goto LABEL_53;
  }

LABEL_45:
  sub_224DAB1D8(v67, &dword_224A2F000, qword_281364CC0, "MobileTimelineReload", 20, 2, v30, "Reload failed.", 14, 2, MEMORY[0x277D84F90]);
  (v45[1].isa)(v30, a3);
LABEL_46:
  sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
  (*(v192 + 104))(v191, *MEMORY[0x277CE3C40], v193);
  v174 = v207;
  v175 = sub_224DAF638();
  v202(v175, 1);

LABEL_51:
  swift_beginAccess();
  *(v71 + 2) = 0;

  return result;
}

void sub_224B7D948(uint64_t a1, _DWORD *a2, NSObject *a3, NSObject *a4, NSObject *a5, uint64_t *a6)
{
  v213 = a6;
  v199 = a5;
  v207 = a4;
  v203 = a3;
  v214 = a2;
  v220[5] = *MEMORY[0x277D85DE8];
  v201 = sub_224DAE6E8();
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201, v6);
  v202 = &v179 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_224DAC268();
  v205 = *(v206 - 8);
  v9 = MEMORY[0x28223BE20](v206, v8);
  v196 = &v179 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v198 = &v179 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v197 = &v179 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v179 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v209 = &v179 - v22;
  v211 = sub_224DAB258();
  v204 = *(v211 - 8);
  v24 = MEMORY[0x28223BE20](v211, v23);
  v26 = &v179 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v179 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = &v179 - v33;
  MEMORY[0x28223BE20](v32, v35);
  v210 = &v179 - v36;
  v216 = sub_224DA9688();
  v212 = *(v216 - 8);
  v38 = MEMORY[0x28223BE20](v216, v37);
  v40 = &v179 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v38, v41);
  v44 = &v179 - v43;
  v46 = MEMORY[0x28223BE20](v42, v45);
  v48 = &v179 - v47;
  v50 = MEMORY[0x28223BE20](v46, v49);
  v208 = &v179 - v51;
  MEMORY[0x28223BE20](v50, v52);
  v54 = &v179 - v53;
  swift_getObjectType();
  v55 = v215;
  sub_224DABCF8();
  if (v55)
  {
    goto LABEL_17;
  }

  v191 = v44;
  v192 = v48;
  v195 = v40;
  v183 = v20;
  v185 = v34;
  v182 = v26;
  v184 = v30;
  v214 = 0;
  v56 = v204;
  v57 = *(v204 + 16);
  v186 = OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger;
  v188 = v204 + 16;
  v187 = v57;
  v57(v210, &v203[OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger], v211);
  v58 = v205;
  v59 = *(v205 + 16);
  v60 = v206;
  v190 = v205 + 16;
  v189 = v59;
  v59(v209, v207, v206);
  v61 = v212;
  v62 = *(v212 + 16);
  v215 = v54;
  v194 = v212 + 16;
  v193 = v62;
  v62(v208, v54, v216);
  v63 = sub_224DAB228();
  v64 = sub_224DAF278();
  v65 = v56;
  if (os_log_type_enabled(v63, v64))
  {
    v66 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    v220[0] = v181;
    *v66 = 136446466;
    sub_224A60144(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v67 = v209;
    v180 = v63;
    v68 = sub_224DAFD28();
    v69 = v58;
    v71 = v70;
    v209 = *(v69 + 8);
    (v209)(v67, v60);
    v72 = sub_224A33F74(v68, v71, v220);

    *(v66 + 4) = v72;
    *(v66 + 12) = 2082;
    v73 = v191;
    v74 = v208;
    sub_224DA9548();
    LOBYTE(v67) = v64;
    v75 = v192;
    sub_224DA9568();
    v76 = *(v61 + 8);
    v76(v73, v216);
    sub_224A60144(&qword_281351A70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v77 = sub_224DAFD28();
    v79 = v78;
    v76(v75, v216);
    v76(v74, v216);
    v80 = sub_224A33F74(v77, v79, v220);

    *(v66 + 14) = v80;
    v81 = v180;
    _os_log_impl(&dword_224A2F000, v180, v67, "%{public}s: %{public}s", v66, 0x16u);
    v82 = v181;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v82, -1, -1);
    MEMORY[0x22AA5EED0](v66, -1, -1);
  }

  else
  {

    v76 = *(v61 + 8);
    v76(v208, v216);
    v83 = v209;
    v209 = *(v58 + 8);
    (v209)(v83, v60);
  }

  v84 = *(v65 + 8);
  v85 = v211;
  v84(v210, v211);
  v210 = objc_opt_self();
  v86 = [v210 defaultManager];
  v87 = v215;
  sub_224DA9658();
  v88 = sub_224DAEDE8();

  v220[0] = 0;
  v89 = [v86 attributesOfItemAtPath:v88 error:v220];

  v90 = v220[0];
  if (!v89)
  {
    v120 = v220[0];
    v119 = sub_224DA9528();

    swift_willThrow();
LABEL_16:
    v76(v87, v216);
    v55 = v119;
LABEL_17:
    *v213 = v55;
    return;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_224A60144(&qword_281350A08, type metadata accessor for FileAttributeKey, &unk_224DB3068);
  v91 = sub_224DAECE8();
  v92 = v90;

  if (*(v91 + 16) && (v93 = sub_224B0BA4C(*MEMORY[0x277CCA1C0]), (v94 & 1) != 0))
  {
    sub_224A33E0C(*(v91 + 56) + 32 * v93, v220);

    sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v95 = v219[0];
      if ([v219[0] unsignedLongLongValue] > 0xA00000)
      {
        v208 = v76;
        v96 = v85;
        v187(v185, &v203[v186], v85);
        v97 = v183;
        v98 = v206;
        v189(v183, v207, v206);
        v99 = v95;
        v100 = sub_224DAB228();
        v101 = sub_224DAF288();

        v102 = os_log_type_enabled(v100, v101);
        v214 = v99;
        if (v102)
        {
          v103 = swift_slowAlloc();
          LODWORD(v203) = v101;
          v104 = v98;
          v105 = v103;
          v106 = swift_slowAlloc();
          v207 = swift_slowAlloc();
          v220[0] = v207;
          *v105 = 136446466;
          sub_224A60144(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
          v199 = v100;
          v107 = sub_224DAFD28();
          v109 = v108;
          (v209)(v97, v104);
          v110 = sub_224A33F74(v107, v109, v220);
          v87 = v215;

          *(v105 + 4) = v110;
          *(v105 + 12) = 2114;
          *(v105 + 14) = v99;
          *v106 = v99;
          v111 = v99;
          v112 = v199;
          _os_log_impl(&dword_224A2F000, v199, v203, "%{public}s reload: failed with too large timeline archive %{public}@", v105, 0x16u);
          sub_224A3311C(v106, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v106, -1, -1);
          v113 = v207;
          __swift_destroy_boxed_opaque_existential_1(v207);
          MEMORY[0x22AA5EED0](v113, -1, -1);
          MEMORY[0x22AA5EED0](v105, -1, -1);

          v114 = v185;
          v115 = v211;
        }

        else
        {

          (v209)(v97, v98);
          v114 = v185;
          v115 = v96;
        }

        v84(v114, v115);
        v157 = v208;
        v158 = v202;
        v159 = [v210 defaultManager];
        v160 = sub_224DA95F8();
        v220[0] = 0;
        v161 = [v159 removeItemAtURL:v160 error:v220];

        v162 = v201;
        if (v161)
        {
          v163 = v220[0];
        }

        else
        {
          v164 = v220[0];
          v165 = sub_224DA9528();

          swift_willThrow();
        }

        v166 = v200;
        v167 = v214;
        sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
        (*(v166 + 104))(v158, *MEMORY[0x277CE3C40], v162);
        v168 = sub_224DAF638();
        swift_willThrow();

        v157(v87, v216);
        v55 = v168;
        goto LABEL_17;
      }
    }
  }

  else
  {
  }

  v116 = v195;
  sub_224A3B79C(0, &qword_281350B08, 0x277CCA9F8);
  v193(v116, v87, v216);
  v117 = v214;
  v118 = sub_224B83FBC(v116);
  v119 = v117;
  if (v117)
  {
    goto LABEL_16;
  }

  v121 = v118;
  sub_224DAE6A8();
  v122 = sub_224DAE698();
  v214 = 0;
  v208 = v76;

  v195 = v122;
  v217 = v122;
  sub_224DAEC88();
  sub_224DAEAB8();
  __swift_project_boxed_opaque_existential_1(v220, v220[3]);
  v123 = *(sub_224DAEAC8() + 16);

  if (!v123)
  {
    v139 = v182;
    v187(v182, &v203[v186], v85);
    v140 = v196;
    v141 = v206;
    v189(v196, v207, v206);
    v142 = sub_224DAB228();
    v143 = sub_224DAF288();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v214 = v144;
      v145 = swift_slowAlloc();
      v219[0] = v145;
      *v144 = 136446210;
      sub_224A60144(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
      v207 = v142;
      v146 = sub_224DAFD28();
      v147 = v143;
      v149 = v148;
      (v209)(v140, v141);
      v150 = sub_224A33F74(v146, v149, v219);
      v87 = v215;

      v151 = v214;
      *(v214 + 1) = v150;
      v152 = v207;
      _os_log_impl(&dword_224A2F000, v207, v147, "%{public}s reload: failed with bad archive", v151, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v145);
      MEMORY[0x22AA5EED0](v145, -1, -1);
      MEMORY[0x22AA5EED0](v151, -1, -1);

      v153 = v139;
      v154 = v211;
    }

    else
    {

      (v209)(v140, v141);
      v153 = v139;
      v154 = v85;
    }

    v84(v153, v154);
    v169 = v202;
    v170 = [v210 defaultManager];
    v171 = sub_224DA95F8();
    v219[0] = 0;
    v172 = [v170 removeItemAtURL:v171 error:v219];

    v173 = v201;
    if (v172)
    {
      v174 = v219[0];
    }

    else
    {
      v175 = v219[0];
      v176 = sub_224DA9528();

      swift_willThrow();
    }

    v177 = v200;
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v177 + 104))(v169, *MEMORY[0x277CE3C40], v173);
    v178 = sub_224DAF638();
    swift_willThrow();

    (v208)(v87, v216);
    __swift_destroy_boxed_opaque_existential_1(v220);
    v55 = v178;
    goto LABEL_17;
  }

  v124 = v184;
  v187(v184, &v203[v186], v85);
  v125 = v197;
  v126 = v207;
  v127 = v206;
  v189(v197, v207, v206);
  sub_224A3317C(v220, v219);
  v128 = sub_224DAB228();
  LODWORD(v213) = sub_224DAF2A8();
  if (os_log_type_enabled(v128, v213))
  {
    v129 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    v218 = v210;
    *v129 = 136446466;
    sub_224A60144(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v203 = v128;
    v130 = sub_224DAFD28();
    v132 = v131;
    (v209)(v125, v127);
    v133 = sub_224A33F74(v130, v132, &v218);

    *(v129 + 4) = v133;
    *(v129 + 12) = 2050;
    __swift_project_boxed_opaque_existential_1(v219, v219[3]);
    v134 = *(sub_224DAEAC8() + 16);

    __swift_destroy_boxed_opaque_existential_1(v219);
    *(v129 + 14) = v134;
    v135 = v203;
    _os_log_impl(&dword_224A2F000, v203, v213, "%{public}s reload: succeeded with %{public}ld entries", v129, 0x16u);
    v136 = v210;
    __swift_destroy_boxed_opaque_existential_1(v210);
    MEMORY[0x22AA5EED0](v136, -1, -1);
    v137 = v129;
    v126 = v207;
    MEMORY[0x22AA5EED0](v137, -1, -1);

    v138 = v184;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v219);

    (v209)(v125, v127);
    v138 = v124;
  }

  v84(v138, v85);
  v155 = v208;
  v156 = v198;
  v189(v198, v126, v127);
  sub_224A3317C(v220, v219);
  sub_224A61F30(v219, v156);

  v155(v87, v216);
  __swift_destroy_boxed_opaque_existential_1(v220);
}

uint64_t sub_224B7EEAC()
{
  sub_224A3D418(v0[2], v0[3]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TimelineReloadStrategy(uint64_t a1)
{
  result = qword_281357238;
  if (!qword_281357238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224B7EFB4(uint64_t a1)
{
  result = sub_224DAB258();
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

uint64_t sub_224B7F144(uint64_t a1, char a2)
{
  v5 = *(v2 + 24);
  [*(v2 + 16) invalidate];
  return v5(a1, a2 & 1);
}

double sub_224B7F194(NSObject *a1)
{
  v3 = *(sub_224DABE18() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_224B7C210(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_224B7F268()
{

  return swift_deallocClassInstance();
}

uint64_t sub_224B7F308()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_224DABC78();
  sub_224DA9BA8();
}

uint64_t sub_224B7F38C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_224B7F44C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_224DABCC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_224B7F4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a3;
  v76 = a2;
  v77 = a1;
  v69 = *v5;
  v6 = v69;
  v7 = sub_224DACB98();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v62 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DABCC8();
  v74 = *(v10 - 8);
  v75 = v10;
  v12 = MEMORY[0x28223BE20](v10, v11);
  v61 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v73 = &v61 - v15;
  v16 = *(v6 + 96);
  v72 = *(v6 + 88);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = sub_224DAF728();
  v66 = *(v18 - 8);
  v67 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v61 - v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = sub_224DAF728();
  v70 = *(v22 - 8);
  v71 = v22;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v61 - v24;
  v26 = sub_224DABD68();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 104))(v30, *MEMORY[0x277CF98B0], v26);
  v31 = sub_224DABD58();
  (*(v27 + 8))(v30, v26);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

  v32 = v77;
  v33 = sub_224DABCA8();
  v34 = [v33 isRemote];

  if (v34)
  {
    return 0;
  }

  if (v76)
  {
    v78 = v76;
    v36 = v72;
    sub_224DAED48();
    swift_getWitnessTable();
    sub_224DAF238();
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v21, 1, TupleTypeMetadata2) == 1)
    {
      (*(v66 + 8))(v21, v67);
      (*(*(AssociatedTypeWitness - 8) + 56))(v25, 1, 1);
    }

    else
    {
      v37 = v36;
      v38 = *(TupleTypeMetadata2 + 48);
      sub_224DABE98();
      (*(*(v16 - 8) + 8))(&v21[v38], v16);
      (*(*(v37 - 8) + 8))(v21, v37);
      if ((*(*(AssociatedTypeWitness - 8) + 48))(v25, 1) != 1)
      {
        (*(v70 + 8))(v25, v71);
        v53 = v62;
        sub_224DACC68();
        v54 = sub_224DACB78();
        (*(v63 + 8))(v53, v64);
        if ((v54 & 1) == 0)
        {
          return 0;
        }

        if (qword_281351458 != -1)
        {
          swift_once();
        }

        v55 = sub_224DAB258();
        __swift_project_value_buffer(v55, qword_281364DA8);
        v41 = v74;
        v42 = v75;
        v40 = v61;
        (*(v74 + 16))(v61, v32, v75);
        v43 = sub_224DAB228();
        v44 = sub_224DAF288();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v78 = v46;
          *v45 = 136446210;
          v56 = sub_224DABC78();
          v57 = v40;
          v59 = v58;
          (*(v41 + 8))(v57, v42);
          v60 = sub_224A33F74(v56, v59, &v78);

          *(v45 + 4) = v60;
          v52 = "[%{public}s] Ending activity because of failure to reload mandatory update repeatedly.";
          goto LABEL_13;
        }

LABEL_19:

        (*(v41 + 8))(v40, v42);
        goto LABEL_20;
      }
    }

    (*(v70 + 8))(v25, v71);
  }

  if (qword_281351458 != -1)
  {
    swift_once();
  }

  v39 = sub_224DAB258();
  __swift_project_value_buffer(v39, qword_281364DA8);
  v40 = v73;
  v41 = v74;
  v42 = v75;
  (*(v74 + 16))(v73, v32, v75);
  v43 = sub_224DAB228();
  v44 = sub_224DAF288();
  if (!os_log_type_enabled(v43, v44))
  {
    goto LABEL_19;
  }

  v45 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v78 = v46;
  *v45 = 136446210;
  v47 = sub_224DABC78();
  v48 = v40;
  v50 = v49;
  (*(v41 + 8))(v48, v42);
  v51 = sub_224A33F74(v47, v50, &v78);

  *(v45 + 4) = v51;
  v52 = "[%{public}s] Ending activity because it failed to load its initial content repeatedly.";
LABEL_13:
  _os_log_impl(&dword_224A2F000, v43, v44, v52, v45, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v46);
  MEMORY[0x22AA5EED0](v46, -1, -1);
  MEMORY[0x22AA5EED0](v45, -1, -1);

LABEL_20:
  sub_224B7F308();
  return 1;
}

uint64_t sub_224B7FD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v192 = a5;
  v191 = a4;
  v209 = a3;
  v189 = a2;
  v207 = a1;
  v197 = sub_224DACC88();
  v195 = *(v197 - 8);
  MEMORY[0x28223BE20](v197, v5);
  v194 = &v167 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_224DAB258();
  v199 = *(v196 - 8);
  MEMORY[0x28223BE20](v196, v7);
  v198 = &v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_224DABCC8();
  v208 = *(v205 - 8);
  v10 = MEMORY[0x28223BE20](v205, v9);
  v193 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = v11;
  MEMORY[0x28223BE20](v10, v12);
  v188 = &v167 - v13;
  v186 = sub_224DACB98();
  v185 = *(v186 - 8);
  MEMORY[0x28223BE20](v186, v14);
  v183 = &v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4030, &unk_224DB5630);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v184 = &v167 - v18;
  v182 = sub_224DA9908();
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182, v19);
  v180 = &v167 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_224DA9878();
  v202 = *(v21 - 1);
  v203 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v178 = &v167 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for ExtensionTask.Identifier(0);
  MEMORY[0x28223BE20](v190, v24);
  v179 = &v167 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_224DACB08();
  v177 = *(v200 - 8);
  MEMORY[0x28223BE20](v200, v26);
  v176 = &v167 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v29 = *(v28 - 8);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v170 = &v167 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v169 = &v167 - v34;
  v35 = sub_224DACB28();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v37);
  v39 = &v167 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v42 = MEMORY[0x28223BE20](v40 - 8, v41);
  v204 = &v167 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v44);
  v46 = &v167 - v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
  v47 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v175 = *(v29 + 72);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_224DB3100;
  v49 = *MEMORY[0x277CE3D30];
  v50 = sub_224DAE8B8();
  v51 = *(v50 - 1);
  v168 = *(v51 + 104);
  v168(v48 + v47, v49, v50);
  v52 = *(v51 + 56);
  v201 = v48;
  v174 = v47;
  v173 = v50;
  v172 = v52;
  v171 = v51 + 56;
  v52(v48 + v47, 0, 5, v50);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v54 = *(*(v53 - 8) + 56);
  v54(v46, 1, 1, v53);
  sub_224DACC58();
  v55 = v35;
  v56 = v36;
  v57 = (*(v36 + 88))(v39, v55);
  v58 = v202;
  v59 = v203;
  if (v57 == *MEMORY[0x277CF9B58])
  {
    sub_224A3D2F8(v46, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    (*(v56 + 96))(v39, v55);
    v60 = *(v53 + 48);
    (*(v58 + 32))(v46, v39, v59);
    *&v46[v60] = 0x408C200000000000;
    v54(v46, 0, 1, v53);
LABEL_8:
    v66 = v177;
    v67 = v176;
    goto LABEL_9;
  }

  if (v57 != *MEMORY[0x277CF9B50])
  {
    (*(v56 + 8))(v39, v55);
    goto LABEL_8;
  }

  v61 = v169;
  v62 = v173;
  v168(v169, *MEMORY[0x277CE3D18], v173);
  v172(v61, 0, 5, v62);
  v63 = v201;
  v65 = v201[2];
  v64 = v201[3];
  v66 = v177;
  if (v65 >= v64 >> 1)
  {
    v63 = sub_224AD946C((v64 > 1), v65 + 1, 1, v201);
  }

  v67 = v176;
  v63[2] = v65 + 1;
  v201 = v63;
  sub_224B442EC(v61, v63 + v174 + v65 * v175);
LABEL_9:
  sub_224DACC08();
  v68 = v200;
  v69 = (*(v66 + 88))(v67, v200);
  v70 = *MEMORY[0x277CF9B40];
  if (v69 == *MEMORY[0x277CF9B40])
  {
    v71 = v170;
    v172(v170, 3, 5, v173);
    v72 = v201;
    v74 = v201[2];
    v73 = v201[3];
    if (v74 >= v73 >> 1)
    {
      v72 = sub_224AD946C((v73 > 1), v74 + 1, 1, v201);
    }

    v72[2] = v74 + 1;
    v75 = v71;
    v76 = v72;
    sub_224B442EC(v75, v72 + v174 + v74 * v175);
    v77 = 0;
    v78 = v208;
  }

  else
  {
    (*(v66 + 8))(v67, v68);
    v77 = 1;
    v78 = v208;
    v76 = v201;
  }

  LODWORD(v172) = v69 == v70;
  v80 = v78 + 16;
  v79 = *(v78 + 16);
  v200 = v80;
  v201 = v79;
  v81 = v179;
  (v79)(v179);
  swift_storeEnumTagMultiPayload();
  v82 = sub_224DABCA8();
  v190 = v46;
  v83 = v46;
  v84 = v204;
  sub_224A3F63C(v83, v204, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  LODWORD(v174) = sub_224DACBD8();
  v173 = type metadata accessor for ExtensionTask(0);
  v85 = objc_allocWithZone(v173);
  sub_224DAE908();
  v86 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
  *&v85[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
  v87 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  v176 = sub_224DAC938();
  v88 = *(v176 - 1);
  v175 = *(v88 + 56);
  v177 = v88 + 56;
  v175(&v85[v87], 1, 1, v176);
  v89 = &v85[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
  *v89 = 0;
  v89[1] = 0;
  v90 = &v85[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  *v90 = 0;
  v90[1] = 0;
  v91 = &v85[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
  *v91 = 0;
  v91[1] = 0;
  v92 = &v85[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  *v92 = 0;
  v92[1] = 0;
  v93 = v178;
  sub_224DA9868();
  (*(v202 + 32))(&v85[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v93, v203);
  *&v85[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v82;
  sub_224A3F63C(v84, &v85[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
  swift_beginAccess();
  *&v85[v86] = v76;
  v203 = v82;

  v94 = &v85[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
  *v94 = v77;
  v94[8] = v172;
  sub_224A3F63C(v81, &v85[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], type metadata accessor for ExtensionTask.Identifier);
  v95 = v180;
  sub_224DA98F8();
  v96 = v181;
  v97 = v182;
  (*(v181 + 16))(&v85[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v95, v182);
  v210[0] = sub_224DA98E8();
  sub_224A3F6A4();
  v98 = sub_224DAEF18();
  v100 = sub_224A3D19C(8, v98, v99);
  v102 = v101;
  v104 = v103;
  v106 = v105;

  v107 = MEMORY[0x22AA5D1C0](v100, v102, v104, v106);
  v109 = v108;

  v110 = &v85[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
  *v110 = v107;
  v110[1] = v109;
  v85[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = v174 & 1;
  v211.receiver = v85;
  v211.super_class = v173;
  v111 = objc_msgSendSuper2(&v211, sel_init);

  (*(v96 + 8))(v95, v97);
  sub_224A3D2F8(v204, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  sub_224A3D2F8(v81, type metadata accessor for ExtensionTask.Identifier);
  v112 = v183;
  sub_224DACC68();
  v113 = v184;
  sub_224DACB38();
  (*(v185 + 8))(v112, v186);
  v175(v113, 0, 1, v176);
  v114 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  swift_beginAccess();
  sub_224A6E1D0(v113, &v111[v114]);
  swift_endAccess();
  v115 = swift_allocObject();
  v115[2] = 0;
  v116 = v188;
  v117 = v205;
  (v201)(v188, v207, v205);
  v118 = v208;
  v119 = (*(v208 + 80) + 24) & ~*(v208 + 80);
  v120 = (v187 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v121 = swift_allocObject();
  v122 = v206;
  *(v121 + 16) = v206;
  (*(v118 + 32))(v121 + v119, v116, v117);
  *(v121 + v120) = v189;
  *(v121 + ((v120 + 15) & 0xFFFFFFFFFFFFFFF8)) = v115;
  v123 = &v111[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  v124 = *&v111[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  v125 = *&v111[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8];
  *v123 = sub_224B818DC;
  *(v123 + 1) = v121;

  sub_224A3D418(v124, v125);
  v126 = swift_allocObject();
  v127 = v192;
  *(v126 + 2) = v191;
  *(v126 + 3) = v127;
  *(v126 + 4) = v115;
  v203 = v115;
  v204 = v111;
  v128 = &v111[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  v129 = *&v111[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  v130 = *&v111[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8];
  *v128 = sub_224A8B280;
  v128[1] = v126;

  sub_224A3D418(v129, v130);
  v131 = v199;
  v132 = v198;
  v133 = v196;
  (*(v199 + 16))(v198, v122 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v196);
  v134 = v193;
  (v201)(v193, v207, v117);
  v135 = v195;
  v136 = v194;
  v137 = v197;
  (*(v195 + 16))(v194, v209, v197);
  v138 = sub_224DAB228();
  v139 = sub_224DAF2A8();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v210[0] = v141;
    *v140 = 136446466;
    sub_224B819A0();
    v142 = sub_224DAFD28();
    v143 = v117;
    v144 = v133;
    v145 = v136;
    v146 = v135;
    v148 = v147;
    (*(v208 + 8))(v134, v143);
    v149 = sub_224A33F74(v142, v148, v210);

    *(v140 + 4) = v149;
    *(v140 + 12) = 2082;
    v150 = sub_224DACBA8();
    v152 = v151;
    (*(v146 + 8))(v145, v197);
    v153 = sub_224A33F74(v150, v152, v210);

    *(v140 + 14) = v153;
    _os_log_impl(&dword_224A2F000, v138, v139, "%{public}s scheduled %{public}s", v140, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v141, -1, -1);
    MEMORY[0x22AA5EED0](v140, -1, -1);

    (*(v199 + 8))(v198, v144);
  }

  else
  {

    (*(v135 + 8))(v136, v137);
    (*(v208 + 8))(v134, v117);
    (*(v131 + 8))(v132, v133);
  }

  sub_224DAD358();
  v154 = *(v206 + OBJC_IVAR____TtC10ChronoCore28MobileActivityReloadStrategy_taskService + 24);
  v155 = *(v206 + OBJC_IVAR____TtC10ChronoCore28MobileActivityReloadStrategy_taskService + 32);
  __swift_project_boxed_opaque_existential_1((v206 + OBJC_IVAR____TtC10ChronoCore28MobileActivityReloadStrategy_taskService), v154);
  v156 = v204;
  v157 = (*(v155 + 16))(v204, v154, v155);
  v159 = v158;
  v161 = v160;
  v163 = v162;
  v210[3] = &type metadata for TaskCancellable;
  v210[4] = sub_224A8B0FC();
  v164 = swift_allocObject();
  v210[0] = v164;
  v164[2] = v157;
  v164[3] = v159;
  v164[4] = v161;
  v164[5] = v163;
  v165 = sub_224DAD368();

  sub_224A3D2F8(v190, type metadata accessor for ExtensionTask.SchedulingConfiguration);

  return v165;
}

double sub_224B81198(uint64_t a1, void (*a2)(void), void *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v49 = a4;
  v50 = a5;
  v11 = sub_224DAE6E8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v47 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_224DABCC8();
  v15 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v16);
  v45 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAB258();
  v19 = *(v18 - 1);
  MEMORY[0x28223BE20](v18, v20);
  v22 = v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v51 = v23;
  v52 = a7;
  v23[2] = a7;
  v23[3] = a2;
  v48 = a2;
  v23[4] = a3;
  sub_224A4B83C(a1, v54);
  if (v54[3])
  {
    swift_retain_n();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5080, &qword_224DB3690);
    if (swift_dynamicCast())
    {
      v24 = v53;
      v25 = swift_allocObject();
      v25[2] = v24;
      v25[3] = sub_224B819F8;
      v25[4] = v51;
      swift_unknownObjectRetain();

      sub_224B8D40C(v24, v50, v44, v49, sub_224B81A50, v25);

      swift_unknownObjectRelease();

      goto LABEL_10;
    }

    v44 = v12;
  }

  else
  {
    v44 = v12;
    swift_retain_n();
    swift_retain_n();
    sub_224A3311C(v54, &qword_27D6F4760, &unk_224DB3680);
  }

  v26 = v19;
  v27 = *(v19 + 16);
  v28 = &v49[OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger];
  v49 = v18;
  v27(v22, v28, v18);
  v29 = v45;
  v30 = v46;
  (*(v15 + 16))(v45, v50, v46);
  v31 = sub_224DAB228();
  v32 = sub_224DAF288();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v50 = v11;
    v34 = v33;
    v43[0] = swift_slowAlloc();
    v54[0] = v43[0];
    *v34 = 136446210;
    sub_224B819A0();
    v35 = sub_224DAFD28();
    v43[1] = a3;
    v37 = v36;
    (*(v15 + 8))(v29, v30);
    v38 = sub_224A33F74(v35, v37, v54);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_224A2F000, v31, v32, "%{public}s No extension session", v34, 0xCu);
    v39 = v43[0];
    __swift_destroy_boxed_opaque_existential_1(v43[0]);
    MEMORY[0x22AA5EED0](v39, -1, -1);
    v40 = v34;
    v11 = v50;
    MEMORY[0x22AA5EED0](v40, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v29, v30);
  }

  (*(v26 + 8))(v22, v49);
  sub_224AD1978();
  (*(v44 + 104))(v47, *MEMORY[0x277CE3C40], v11);
  v41 = sub_224DAF638();
  v48();

LABEL_10:

  return result;
}

uint64_t *sub_224B81714()
{
  sub_224A3D418(v0[2], v0[3]);
  sub_224A3D418(v0[4], v0[5]);
  sub_224A3311C((v0 + 6), &unk_27D6F57B0, qword_224DB7B48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_224A3D2F8(v0 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_requestCompletor, type metadata accessor for RequestCompletionOperation);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore28MobileActivityReloadStrategy_taskService));
  return v0;
}

uint64_t sub_224B817EC()
{
  sub_224B81714();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobileActivityReloadStrategy(uint64_t a1)
{
  result = qword_281354120;
  if (!qword_281354120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_224B818DC(uint64_t a1, void (*a2)(void), void *a3)
{
  v7 = *(sub_224DABCC8() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + 16);
  v11 = *(v3 + v9);
  v12 = *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_224B81198(a1, a2, a3, v10, v3 + v8, v11, v12);
}

unint64_t sub_224B819A0()
{
  result = qword_281350EA0;
  if (!qword_281350EA0)
  {
    sub_224DABCC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350EA0);
  }

  return result;
}

uint64_t objectdestroy_25Tm_0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_224B81B18()
{
  if (*v0)
  {
    return 0x7465736572;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_224B81B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v78 = a4;
  v79 = a1;
  v80 = a2;
  v73 = sub_224DA9878();
  v71 = *(v73 - 1);
  MEMORY[0x28223BE20](v73, v6);
  v67 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_224DACB08();
  v70 = *(v72 - 1);
  MEMORY[0x28223BE20](v72, v8);
  v76 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DACB28();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v74 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DACC88();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v75 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DACB98();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = (&v65 - v25);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v65 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v77 = &v65 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v36 = (&v65 - v35);
  if (sub_224B825F8(a5))
  {
    v65 = v13;
    v66 = v14;
    if (!sub_224B82858(a5) || sub_224DACBB8() < 1)
    {
      sub_224DAE1E8();
      sub_224DAE198();
      sub_224DACC68();
      v50 = (*(v18 + 88))(v22, v17);
      v51 = *MEMORY[0x277CF9B80];
      if (v50 == v51)
      {
        v52 = *(v18 + 8);
        v52(v22, v17);
        sub_224DACC68();
      }

      else
      {
        v53 = swift_allocBox();
        sub_224DACC68();
        *v26 = v53;
        (*(v18 + 104))(v26, v51, v17);
        v52 = *(v18 + 8);
        v52(v22, v17);
      }

      v54 = v67;
      sub_224DA9868();
      v55 = v74;
      sub_224DA9768();
      (*(v71 + 8))(v54, v73);
      (*(v68 + 104))(v55, *MEMORY[0x277CF9B58], v69);
      (*(v70 + 104))(v76, *MEMORY[0x277CF9B40], v72);
      (*(v18 + 16))(v77, v26, v17);
      sub_224DACC48();
      v56 = v75;
      sub_224DACC38();
      v52(v26, v17);
      v57 = v65;
      v58 = v66;
      v59 = v79;
      (*(v66 + 32))(v79, v56, v65);
      (*(v58 + 56))(v59, 0, 1, v57);
      v60 = MEMORY[0x277CF98B0];
      goto LABEL_16;
    }

    v37 = v77;
    sub_224DACC68();
    v38 = *MEMORY[0x277CF9BF0];
    v72 = *(v18 + 104);
    v72(v30, v38, v17);
    v39 = sub_224DACB88();
    v40 = *(v18 + 8);
    v40(v30, v17);
    v73 = v40;
    v40(v37, v17);
    if (v39)
    {
      v41 = swift_allocObject();
      *(v41 + 16) = 0xD000000000000019;
      *(v41 + 24) = 0x8000000224DC58C0;
      *v36 = v41;
      v72(v36, *MEMORY[0x277CF9B70], v17);
      v72 = sub_224DACBB8();
      v42 = v79;
      v43 = v65;
LABEL_15:
      sub_224DACC58();
      sub_224DACC08();
      (*(v18 + 16))(v77, v36, v17);
      sub_224DACBD8();
      sub_224DACC28();
      v61 = v75;
      sub_224DACC18();
      v73(v36, v17);
      v62 = v66;
      (*(v66 + 32))(v42, v61, v43);
      (*(v62 + 56))(v42, 0, 1, v43);
      v60 = MEMORY[0x277CF98B8];
LABEL_16:
      v63 = *v60;
      v64 = sub_224DABD68();
      return (*(*(v64 - 8) + 104))(v80, v63, v64);
    }

    sub_224DACC68();
    result = sub_224DACBB8();
    if (!__OFSUB__(result, 1))
    {
      v42 = v79;
      v43 = v65;
      v72 = (result - 1);
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    sub_224DAE1E8();
    sub_224DAE198();
    (*(v14 + 56))(v79, 1, 1, v13);
    v44 = *MEMORY[0x277CF98B0];
    v45 = sub_224DABD68();
    v46 = *(*(v45 - 8) + 104);
    v47 = v45;
    v48 = v80;

    return v46(v48, v44, v47);
  }

  return result;
}

uint64_t sub_224B8238C()
{
  v1 = OBJC_IVAR____TtC10ChronoCore39MobileActivityReloadConfigurationPolicy_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobileActivityReloadConfigurationPolicy(uint64_t a1)
{
  result = qword_281352638;
  if (!qword_281352638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224B8247C(uint64_t a1)
{
  result = sub_224DAB258();
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

unint64_t sub_224B8251C()
{
  result = qword_281350D70;
  if (!qword_281350D70)
  {
    sub_224DAC918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350D70);
  }

  return result;
}

uint64_t sub_224B82574@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_224DACC88();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

BOOL sub_224B825F8(void *a1)
{
  v2 = sub_224DAE6E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 domain];
  v8 = sub_224DAEE18();
  v10 = v9;

  v11 = [a1 code];
  if (sub_224DAEE18() == v8 && v12 == v10)
  {
  }

  else
  {
    v14 = sub_224DAFD88();

    if ((v14 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3C10], v2);
  v15 = sub_224DAE6D8();
  (*(v3 + 8))(v6, v2);
  if (v15 == v11)
  {

    return 0;
  }

LABEL_10:
  if (sub_224DAEE18() == v8 && v17 == v10)
  {
  }

  else
  {
    v19 = sub_224DAFD88();

    if ((v19 & 1) == 0)
    {

      return 1;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3BF0], v2);
  v20 = sub_224DAE6D8();

  (*(v3 + 8))(v6, v2);
  return v20 != v11;
}

BOOL sub_224B82858(void *a1)
{
  v2 = sub_224DAE6E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 domain];
  v8 = sub_224DAEE18();
  v10 = v9;

  v11 = [a1 code];
  if (sub_224DAEE18() == v8 && v12 == v10)
  {
  }

  else
  {
    v14 = sub_224DAFD88();

    if ((v14 & 1) == 0)
    {

      return 1;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3C60], v2);
  v15 = sub_224DAE6D8();

  (*(v3 + 8))(v6, v2);
  return v15 != v11;
}

uint64_t sub_224B82A2C()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_2813514F0);
  __swift_project_value_buffer(v0, qword_2813514F0);
  return sub_224DAB238();
}

unint64_t sub_224B82AD0()
{
  if (!(*v0 >> 62))
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_224A4AD80(sub_224B44A20);
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = sub_224DAF838();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return sub_224B82C88(result, sub_224B44A20);
      }
    }

    else
    {
      v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return sub_224B82C88(result, sub_224B44A20);
      }
    }

    __break(1u);
    return result;
  }

  result = sub_224DAF838();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_224B82B88()
{

  return swift_deallocClassInstance();
}

uint64_t sub_224B82BEC(uint64_t a1)
{
  swift_beginAccess();

  sub_224B42B60(v1);
  return swift_endAccess();
}

uint64_t sub_224B82C88(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_224B82D20@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_224B42EE4(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for HandlerItem(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_224B832A4(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

id sub_224B82E40(uint64_t a1, uint64_t a2)
{
  v5 = sub_224DA9878();
  v38 = *(v5 - 8);
  v39 = v5;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v36 = &v34 - v10;
  v11 = sub_224DAB7B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAB848();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 32) == 1)
  {
    sub_224AC319C();
    v35 = sub_224DAF3D8();
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    *(v21 + 24) = a2;
    aBlock[4] = sub_224B83268;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_15;
    v22 = _Block_copy(aBlock);

    sub_224DAB7E8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_224A3AF98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A4C290();
    sub_224DAF788();
    v23 = v35;
    MEMORY[0x22AA5D760](0, v20, v15, v22);
    _Block_release(v22);

    (*(v12 + 8))(v15, v11);
    (*(v17 + 8))(v20, v16);
  }

  swift_beginAccess();
  v24 = sub_224B82AD0();
  swift_endAccess();
  if (v24)
  {
    return v24;
  }

  v26 = v36;
  sub_224DA9868();
  v27 = v37;
  sub_224DA9868();
  v28 = sub_224DAEDE8();
  v29 = sub_224DA9778();
  v30 = sub_224DA9778();
  v31 = [objc_opt_self() activityWithName:v28 priority:0 duration:0 startingAfter:v29 startingBefore:v30];

  v32 = v39;
  v33 = *(v38 + 8);
  v33(v27, v39);
  v33(v26, v32);
  return v31;
}

uint64_t sub_224B832A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandlerItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B8336C(uint64_t a1)
{
  v1 = sub_224B83AE0(a1);
  v2 = v1;
  v3 = v1[2];
  if (v3)
  {
    v25 = v1[2];
    v26 = MEMORY[0x277D84F90];
    sub_224ADA330(0, v3, 0);
    v4 = v26;
    v5 = v2 + 8;
    result = sub_224DAF798();
    v7 = v25;
    v8 = 0;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v2 + 32))
    {
      v10 = result >> 6;
      v11 = 1 << result;
      if ((v5[result >> 6] & (1 << result)) == 0)
      {
        goto LABEL_23;
      }

      v12 = *(v2[6] + result);
      v13 = *(v2 + 9);
      v15 = *(v26 + 16);
      v14 = *(v26 + 24);
      if (v15 >= v14 >> 1)
      {
        v23 = *(v2 + 9);
        v24 = result;
        sub_224ADA330((v14 > 1), v15 + 1, 1);
        v7 = v25;
        v13 = v23;
        result = v24;
      }

      *(v26 + 16) = v15 + 1;
      *(v26 + v15 + 32) = v12;
      v9 = 1 << *(v2 + 32);
      if (result >= v9)
      {
        goto LABEL_24;
      }

      v16 = v5[v10];
      if ((v16 & v11) == 0)
      {
        goto LABEL_25;
      }

      if (v13 != *(v2 + 9))
      {
        goto LABEL_26;
      }

      v17 = v16 & (-2 << (result & 0x3F));
      if (v17)
      {
        v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v10 << 6;
        v19 = v10 + 1;
        v20 = &v2[v10 + 9];
        while (v19 < (v9 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_224A3E204(result, v13, 0);
            v7 = v25;
            v9 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        sub_224A3E204(result, v13, 0);
        v7 = v25;
      }

LABEL_4:
      ++v8;
      result = v9;
      if (v8 == v7)
      {

        return v4;
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
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_224B83590()
{
  v1 = 0x746567646977;
  v2 = 0x6F69736E65747865;
  if (*v0 != 2)
  {
    v2 = 0x7974697669746361;
  }

  if (*v0)
  {
    v1 = 0x6C6F72746E6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_224B8361C(char a1)
{
  if (a1)
  {
    MEMORY[0x22AA5D210](0x656372756F73, 0xE600000000000000);
    if ((a1 & 4) != 0)
    {
      MEMORY[0x22AA5D210](43, 0xE100000000000000);
      MEMORY[0x22AA5D210](0x5365737265766572, 0xED0000656372756FLL);
    }

    if ((a1 & 2) != 0)
    {
      MEMORY[0x22AA5D210](43, 0xE100000000000000);
      goto LABEL_10;
    }
  }

  else
  {
    if ((a1 & 4) == 0)
    {
      if ((a1 & 2) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    MEMORY[0x22AA5D210](0x5365737265766572, 0xED0000656372756FLL);
    if ((a1 & 2) != 0)
    {
LABEL_10:
      MEMORY[0x22AA5D210](1953722216, 0xE400000000000000);
    }
  }

  return 0;
}

void *sub_224B8373C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_224B83768@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_224B83804@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_224D56DB0();

  *a2 = v3;
  return result;
}

uint64_t sub_224B83844()
{

  return swift_deallocClassInstance();
}

unint64_t sub_224B838C4()
{
  result = qword_27D6F4828;
  if (!qword_27D6F4828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4828);
  }

  return result;
}

unint64_t sub_224B8391C()
{
  result = qword_27D6F4830;
  if (!qword_27D6F4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4830);
  }

  return result;
}

unint64_t sub_224B83974()
{
  result = qword_27D6F4838;
  if (!qword_27D6F4838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4838);
  }

  return result;
}

unint64_t sub_224B839CC()
{
  result = qword_27D6F4840;
  if (!qword_27D6F4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4840);
  }

  return result;
}

unint64_t sub_224B83A24()
{
  result = qword_27D6F4848;
  if (!qword_27D6F4848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4850, qword_224DB7FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4848);
  }

  return result;
}

unint64_t sub_224B83A8C()
{
  result = qword_281358EE0[0];
  if (!qword_281358EE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281358EE0);
  }

  return result;
}

unint64_t *sub_224B83AE0(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x28223BE20](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_224B83C40(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_224B83D28(v13, v7, v3);
  result = MEMORY[0x22AA5EED0](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

unint64_t *sub_224B83C40(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
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
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_224B2CE74(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_224B2CE74(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_224B83D28(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_224B83C40(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_224B83DA0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v4 = v1 + 64;
    result = sub_224DAF798();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 72;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      v10 = *(*(v1 + 56) + 24 * v5);
      sub_224DAF9B8();
      sub_224DAF9F8();
      v1 = v19;
      sub_224DAFA08();
      result = sub_224DAF9C8();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_224A3E204(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
      {
        return v21;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

id sub_224B83FBC(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_224DA95F8();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_224DA9688();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_224DA9528();

    swift_willThrow();
    v9 = sub_224DA9688();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_224B84114(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v82 = a3;
  v80 = a4;
  v81 = a5;
  v7 = sub_224DAE6E8();
  v76 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v75 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DABCC8();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v74 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v78 = &v68 - v16;
  v17 = sub_224DAB258();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v79 = &v68 - v24;
  v25 = *(a2 + 16);
  if (v25)
  {
    v69 = a1;
    v70 = v22;
    v71 = v11;
    v72 = v10;
    v73 = v7;
    v77 = v17;
    v26 = sub_224B0CCF8(v25, 0);
    v27 = *(sub_224DAC918() - 8);
    v28 = sub_224B2F724(&v84, &v26[(*(v27 + 80) + 32) & ~*(v27 + 80)], v25, a2);
    v29 = v84;

    result = sub_224A3B7E4(v29);
    if (v28 != v25)
    {
      __break(1u);
      return result;
    }

    v17 = v77;
    v10 = v72;
    v7 = v73;
    v22 = v70;
    v11 = v71;
    a1 = v69;
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  v31 = v83;
  v32 = sub_224B848EC(a1, v26, v82);
  v34 = v33;
  if (v32)
  {

    v35 = v31 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger;
    v36 = v79;
    (*(v18 + 16))(v79, v35, v17);
    v37 = v78;
    (*(v11 + 16))(v78, a1, v10);
    v38 = sub_224DAB228();
    v39 = sub_224DAF268();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v83 = v18;
      v41 = v40;
      v42 = v37;
      v43 = swift_slowAlloc();
      v84 = v43;
      *v41 = 136446210;
      sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
      v44 = sub_224DAFD28();
      v45 = v10;
      v47 = v46;
      (*(v11 + 8))(v42, v45);
      v48 = sub_224A33F74(v44, v47, &v84);

      *(v41 + 4) = v48;
      _os_log_impl(&dword_224A2F000, v38, v39, "%{public}s Fetched from cache", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x22AA5EED0](v43, -1, -1);
      MEMORY[0x22AA5EED0](v41, -1, -1);

      (v83[1])(v79, v17);
    }

    else
    {

      (*(v11 + 8))(v37, v10);
      (*(v18 + 8))(v36, v17);
    }

    v80(v34, 0);
  }

  else
  {

    v49 = a1;
    v50 = sub_224DABCA8();
    v51 = [v50 isRemote];

    if ((v51 & 1) == 0)
    {
      v66 = (*v83)[29](v49, v26, v82, v80, v81);

      return v66;
    }

    (*(v18 + 16))(v22, v83 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v17);
    v52 = v74;
    (*(v11 + 16))(v74, v49, v10);
    v53 = sub_224DAB228();
    v54 = sub_224DAF268();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v83 = v18;
      v56 = v55;
      v57 = swift_slowAlloc();
      v77 = v17;
      v58 = v22;
      v59 = v11;
      v60 = v57;
      v84 = v57;
      *v56 = 136446210;
      sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
      v61 = sub_224DAFD28();
      v62 = v10;
      v64 = v63;
      (*(v59 + 8))(v52, v62);
      v65 = sub_224A33F74(v61, v64, &v84);

      *(v56 + 4) = v65;
      _os_log_impl(&dword_224A2F000, v53, v54, "%{public}s Failed to fetch from cache", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x22AA5EED0](v60, -1, -1);
      MEMORY[0x22AA5EED0](v56, -1, -1);

      (v83[1])(v58, v77);
    }

    else
    {

      (*(v11 + 8))(v52, v10);
      (*(v18 + 8))(v22, v17);
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v76 + 104))(v75, *MEMORY[0x277CE3BF0], v7);
    v67 = sub_224DAF638();
    v80(v67, 1);
  }

  return 0;
}

uint64_t sub_224B848EC(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t))
{
  v159 = a3;
  v155 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4668, &unk_224DB75E0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v140 = &v127 - v7;
  v147 = sub_224DAEC58();
  v141 = *(v147 - 8);
  v9 = MEMORY[0x28223BE20](v147, v8);
  v11 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v161 = &v127 - v13;
  v154 = sub_224DAC918();
  v152 = *(v154 - 8);
  v15 = MEMORY[0x28223BE20](v154, v14);
  v17 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v139 = &v127 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v138 = &v127 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v157 = &v127 - v25;
  v26 = sub_224DABCC8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_224DAB258();
  v32 = *(v31 - 8);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v156 = &v127 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v129 = &v127 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v137 = &v127 - v41;
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v127 - v43;
  v45 = *(v32 + 16);
  v146 = v3;
  v142 = OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger;
  v160 = v46;
  v143 = v45;
  v144 = v32 + 16;
  (v45)(&v127 - v43, v3 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger);
  v47 = *(v27 + 16);
  v148 = a1;
  v48 = a1;
  v49 = v26;
  v47(v30, v48, v26);
  v50 = sub_224DAB228();
  v51 = sub_224DAF268();
  v52 = os_log_type_enabled(v50, v51);
  v128 = v17;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v158 = v32;
    v54 = v53;
    v55 = swift_slowAlloc();
    v162[0] = v55;
    *v54 = 136446210;
    sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
    v56 = sub_224DAFD28();
    v57 = v49;
    v59 = v58;
    (*(v27 + 8))(v30, v57);
    v60 = sub_224A33F74(v56, v59, v162);

    *(v54 + 4) = v60;
    _os_log_impl(&dword_224A2F000, v50, v51, "%{public}s Trying cache", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x22AA5EED0](v55, -1, -1);
    MEMORY[0x22AA5EED0](v54, -1, -1);

    v61 = v158;
    v145 = *(v158 + 8);
    v145(v44, v160);
  }

  else
  {

    (*(v27 + 8))(v30, v49);
    v145 = *(v32 + 8);
    v145(v44, v160);
    v61 = v32;
  }

  v158 = sub_224DA16A4(MEMORY[0x277D84F90]);
  v62 = v146;
  v63 = sub_224B857A0(v148, v159);
  v65 = v147;
  if ((v63 & 1) == 0)
  {
    v109 = v156;
    v143(v156, v62 + v142, v160);
    v110 = sub_224DAB228();
    v111 = sub_224DAF268();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_224A2F000, v110, v111, "Cache should not be consulted", v112, 2u);
      MEMORY[0x22AA5EED0](v112, -1, -1);
    }

    v145(v109, v160);
    return 0;
  }

  v66 = *(v155 + 16);
  if (v66)
  {
    v67 = v154;
    v68 = 0;
    v69 = *(v152 + 16);
    v150 = *(v152 + 72);
    v135 = (v141 + 56);
    v151 = (v141 + 32);
    v156 = (v152 + 8);
    v136 = v61 + 8;
    v134 = (v141 + 16);
    v132 = v141 + 8;
    v130 = v141 + 40;
    v70 = v155 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
    *&v64 = 136446210;
    v131 = v64;
    v152 += 16;
    v159 = v69;
    v133 = v11;
    while (1)
    {
      v154 = v70;
      v155 = v66;
      v73 = v157;
      (v69)(v157);
      __swift_project_boxed_opaque_existential_1((v62 + 128), *(v62 + 152));
      v74 = v140;
      sub_224DACEB8();
      if (v68)
      {
        break;
      }

      v153 = 0;
      (*v135)(v74, 0, 1, v65);
      v149 = *v151;
      v149(v161, v74, v65);
      v75 = v62 + v142;
      v76 = v137;
      v143(v137, v75, v160);
      v77 = v138;
      v69(v138, v73, v67);
      v78 = sub_224DAB228();
      v79 = sub_224DAF268();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = v77;
        v82 = swift_slowAlloc();
        v162[0] = v82;
        *v80 = v131;
        sub_224B8C88C(&qword_281350D60, MEMORY[0x277CF9A98], MEMORY[0x277CF9AB0]);
        v83 = v76;
        v84 = sub_224DAFD28();
        v86 = v85;
        v87 = *v156;
        (*v156)(v81, v67);
        v88 = sub_224A33F74(v84, v86, v162);
        v89 = v67;
        v90 = v157;

        *(v80 + 4) = v88;
        _os_log_impl(&dword_224A2F000, v78, v79, "%{public}s Cache hit", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v82);
        MEMORY[0x22AA5EED0](v82, -1, -1);
        MEMORY[0x22AA5EED0](v80, -1, -1);

        v145(v83, v160);
        v91 = v133;
      }

      else
      {

        v87 = *v156;
        (*v156)(v77, v67);
        v145(v76, v160);
        v91 = v133;
        v89 = v67;
        v90 = v157;
      }

      v92 = v158;
      v93 = v139;
      v159(v139, v90, v89);
      v65 = v147;
      (*v134)(v91, v161, v147);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v162[0] = v92;
      v95 = sub_224B0B8A4(v93);
      v97 = *(v92 + 16);
      v98 = (v96 & 1) == 0;
      v99 = __OFADD__(v97, v98);
      v100 = v97 + v98;
      if (v99)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }

      v101 = v96;
      if (*(v92 + 24) >= v100)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v108 = v95;
          sub_224B27790();
          v95 = v108;
        }
      }

      else
      {
        sub_224B12764(v100, isUniquelyReferenced_nonNull_native);
        v95 = sub_224B0B8A4(v93);
        if ((v101 & 1) != (v102 & 1))
        {
          goto LABEL_33;
        }
      }

      v103 = v162[0];
      v158 = v162[0];
      if (v101)
      {
        v71 = v141;
        (*(v141 + 40))(*(v162[0] + 56) + *(v141 + 72) * v95, v91, v65);
        v87(v93, v89);
        (*(v71 + 8))(v161, v65);
        v72 = v90;
        v67 = v89;
        v87(v72, v89);
      }

      else
      {
        *(v162[0] + 8 * (v95 >> 6) + 64) |= 1 << v95;
        v104 = v95;
        v159((v103[6] + v95 * v150), v93, v89);
        v105 = v141;
        v149((v103[7] + *(v141 + 72) * v104), v91, v65);
        v87(v93, v89);
        (*(v105 + 8))(v161, v65);
        v87(v90, v89);
        v106 = v103[2];
        v99 = __OFADD__(v106, 1);
        v107 = v106 + 1;
        if (v99)
        {
          goto LABEL_32;
        }

        v67 = v89;
        v103[2] = v107;
      }

      v70 = v154 + v150;
      v66 = v155 - 1;
      v62 = v146;
      v69 = v159;
      v68 = v153;
      if (v155 == 1)
      {
        return 1;
      }
    }

    (*v135)(v74, 1, 1, v65);
    sub_224A3311C(v74, &qword_27D6F4668, &unk_224DB75E0);
    v114 = v129;
    v143(v129, v62 + v142, v160);
    v115 = v128;
    v69(v128, v73, v67);
    v116 = sub_224DAB228();
    v117 = v67;
    v118 = sub_224DAF2A8();
    if (os_log_type_enabled(v116, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v162[0] = v120;
      *v119 = v131;
      sub_224B8C88C(&qword_281350D60, MEMORY[0x277CF9A98], MEMORY[0x277CF9AB0]);
      v121 = sub_224DAFD28();
      v122 = v115;
      v124 = v123;
      v125 = *v156;
      (*v156)(v122, v117);
      v126 = sub_224A33F74(v121, v124, v162);

      *(v119 + 4) = v126;
      _os_log_impl(&dword_224A2F000, v116, v118, "%{public}s Cache miss", v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v120);
      MEMORY[0x22AA5EED0](v120, -1, -1);
      MEMORY[0x22AA5EED0](v119, -1, -1);

      v145(v129, v160);
    }

    else
    {

      v125 = *v156;
      (*v156)(v115, v117);
      v145(v114, v160);
    }

    v125(v73, v117);
    return 0;
  }

  return 1;
}

uint64_t sub_224B857A0(uint64_t a1, uint64_t a2)
{
  v127 = a2;
  v121 = sub_224DACC88();
  v124 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v3);
  v120 = &v115[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_224DABCC8();
  v129 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v128 = &v115[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7, v9);
  v119 = &v115[-v11];
  v13 = MEMORY[0x28223BE20](v10, v12);
  v118 = &v115[-v14];
  MEMORY[0x28223BE20](v13, v15);
  v125 = &v115[-v16];
  v17 = sub_224DAB258();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v115[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v20, v23);
  v123 = &v115[-v25];
  v27 = MEMORY[0x28223BE20](v24, v26);
  v122 = &v115[-v28];
  MEMORY[0x28223BE20](v27, v29);
  v126 = &v115[-v30];
  v31 = sub_224DACB98();
  v32 = *(v31 - 8);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v117 = &v115[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v115[-v37];
  v39 = sub_224DABCA8();
  v40 = [v39 isRemote];

  if (v40)
  {
    (*(v18 + 16))(v22, v130 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v17);
    v41 = v22;
    v42 = v128;
    v43 = v129;
    (*(v129 + 16))(v128, a1, v5);
    v127 = v41;
    v44 = sub_224DAB228();
    v45 = sub_224DAF2A8();
    v46 = v18;
    if (os_log_type_enabled(v44, v45))
    {
      v47 = swift_slowAlloc();
      v130 = v17;
      v48 = v5;
      v49 = v47;
      v50 = swift_slowAlloc();
      v131 = v50;
      *v49 = 136446210;
      sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
      v51 = sub_224DAFD28();
      v53 = v52;
      (*(v43 + 8))(v42, v48);
      v54 = sub_224A33F74(v51, v53, &v131);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_224A2F000, v44, v45, "%{public}s Checking cache for remote activity reload.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x22AA5EED0](v50, -1, -1);
      MEMORY[0x22AA5EED0](v49, -1, -1);

      (*(v46 + 8))(v127, v130);
    }

    else
    {

      (*(v43 + 8))(v42, v5);
      (*(v18 + 8))(v127, v17);
    }

    return 1;
  }

  v56 = v129;
  v55 = v130;
  v128 = v18;
  v57 = v127;
  sub_224DACC68();
  v58 = (*(v32 + 88))(v38, v31);
  if (v58 == *MEMORY[0x277CF9BF0])
  {
    v59 = v128;
    v60 = v126;
    v61 = v17;
    (*(v128 + 2))(v126, v55 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v17);
    v62 = v125;
    v63 = v5;
    (*(v56 + 16))(v125, a1, v5);
    v64 = sub_224DAB228();
    v65 = sub_224DAF2A8();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v130 = v61;
      v67 = v66;
      v68 = swift_slowAlloc();
      v131 = v68;
      *v67 = 136446210;
      sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
      v69 = sub_224DAFD28();
      v71 = v70;
      (*(v56 + 8))(v62, v63);
      v72 = sub_224A33F74(v69, v71, &v131);

      *(v67 + 4) = v72;
      _os_log_impl(&dword_224A2F000, v64, v65, "%{public}s Checking cache for initial load.", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x22AA5EED0](v68, -1, -1);
      MEMORY[0x22AA5EED0](v67, -1, -1);

      (*(v59 + 1))(v126, v130);
    }

    else
    {

      (*(v56 + 8))(v62, v63);
      (*(v59 + 1))(v60, v61);
    }

    return 1;
  }

  v73 = v31;
  v74 = *(v128 + 2);
  v75 = (v56 + 16);
  v76 = a1;
  if (v58 == *MEMORY[0x277CF9B60])
  {
    v77 = v122;
    v78 = v17;
    v74(v122, v55 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v17);
    v79 = v118;
    v80 = v5;
    (*v75)(v118, v76, v5);
    v81 = sub_224DAB228();
    v82 = sub_224DAF2A8();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = v56;
      v85 = swift_slowAlloc();
      v131 = v85;
      *v83 = 136446210;
      sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
      v86 = sub_224DAFD28();
      v87 = v79;
      v88 = v86;
      v90 = v89;
      (*(v84 + 8))(v87, v80);
      v91 = sub_224A33F74(v88, v90, &v131);

      *(v83 + 4) = v91;
      _os_log_impl(&dword_224A2F000, v81, v82, "%{public}s Checking cache for replicator-driven reload.", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v85);
      MEMORY[0x22AA5EED0](v85, -1, -1);
      MEMORY[0x22AA5EED0](v83, -1, -1);

      (*(v128 + 1))(v122, v78);
    }

    else
    {

      (*(v56 + 8))(v79, v80);
      (*(v128 + 1))(v77, v78);
    }

    return 1;
  }

  v122 = v73;
  v125 = v32;
  v126 = v38;
  v93 = v123;
  v130 = v17;
  v74(v123, v55 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v17);
  v94 = v119;
  (*v75)(v119, a1, v5);
  v95 = v124;
  v97 = v120;
  v96 = v121;
  (*(v124 + 16))(v120, v57, v121);
  v98 = sub_224DAB228();
  v99 = sub_224DAF2A8();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = v5;
    v101 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v131 = v127;
    *v101 = 136446466;
    sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
    v118 = v98;
    v102 = sub_224DAFD28();
    v103 = v122;
    v116 = v99;
    v105 = v104;
    (*(v56 + 8))(v94, v100);
    v106 = sub_224A33F74(v102, v105, &v131);

    *(v101 + 4) = v106;
    *(v101 + 12) = 2082;
    v107 = v117;
    sub_224DACC68();
    sub_224B8C88C(&unk_281350D28, MEMORY[0x277CF9BF8], MEMORY[0x277CF9C00]);
    v108 = sub_224DAFD28();
    v110 = v109;
    v111 = *(v125 + 1);
    v111(v107, v103);
    (*(v124 + 8))(v97, v96);
    v112 = sub_224A33F74(v108, v110, &v131);

    *(v101 + 14) = v112;
    v113 = v118;
    _os_log_impl(&dword_224A2F000, v118, v116, "%{public}s Not checking cache (%{public}s)", v101, 0x16u);
    v114 = v127;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v114, -1, -1);
    MEMORY[0x22AA5EED0](v101, -1, -1);

    (*(v128 + 1))(v123, v130);
  }

  else
  {

    (*(v95 + 8))(v97, v96);
    (*(v56 + 8))(v94, v5);
    (*(v128 + 1))(v93, v130);
    v111 = *(v125 + 1);
    v103 = v122;
  }

  v111(v126, v103);
  return 0;
}

uint64_t sub_224B8643C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, void *a4@<X4>, char *a5@<X8>)
{
  v268 = a4;
  v270 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v269 = &v220 - v10;
  v251 = sub_224DA9908();
  v250 = *(v251 - 8);
  MEMORY[0x28223BE20](v251, v11);
  v248 = &v220 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DAEB68();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v249 = &v220 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v240 = *(v241 - 8);
  MEMORY[0x28223BE20](v241, v16);
  v239 = &v220 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48C0, &qword_224DB8220);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v247 = &v220 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v230 = &v220 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v246 = &v220 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v231 = &v220 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v254 = &v220 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v261 = &v220 - v35;
  v36 = sub_224DAB258();
  v264 = *(v36 - 8);
  v265 = v36;
  v38 = MEMORY[0x28223BE20](v36, v37);
  v258 = &v220 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v238 = &v220 - v42;
  v44 = MEMORY[0x28223BE20](v41, v43);
  v232 = &v220 - v45;
  v47 = MEMORY[0x28223BE20](v44, v46);
  v227 = &v220 - v48;
  v50 = MEMORY[0x28223BE20](v47, v49);
  v226 = &v220 - v51;
  MEMORY[0x28223BE20](v50, v52);
  v253 = &v220 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48C8, &unk_224DB8228);
  MEMORY[0x28223BE20](v54 - 8, v55);
  v237 = &v220 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v57 - 8, v58);
  v236 = &v220 - v59;
  v256 = sub_224DA9A38();
  v245 = *(v256 - 8);
  v61 = MEMORY[0x28223BE20](v256, v60);
  v244 = &v220 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61, v63);
  v233 = &v220 - v64;
  v235 = sub_224DA9878();
  v234 = *(v235 - 8);
  v66 = MEMORY[0x28223BE20](v235, v65);
  v229 = &v220 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66, v68);
  v228 = &v220 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48D0, &qword_224DB8238);
  MEMORY[0x28223BE20](v70 - 8, v71);
  v73 = &v220 - v72;
  v74 = sub_224DA9A88();
  v259 = *(v74 - 8);
  v260 = v74;
  MEMORY[0x28223BE20](v74, v75);
  v262 = &v220 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48D8, &unk_224DB8240);
  MEMORY[0x28223BE20](v77 - 8, v78);
  v80 = &v220 - v79;
  v81 = sub_224DA9AE8();
  v82 = *(v81 - 8);
  v266 = v81;
  v267 = v82;
  v84 = MEMORY[0x28223BE20](v81, v83);
  v255 = &v220 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84, v86);
  v263 = &v220 - v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4808, &unk_224DB7990);
  v90 = MEMORY[0x28223BE20](v88 - 8, v89);
  v243 = &v220 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90, v92);
  v94 = &v220 - v93;
  v95 = sub_224DAE4F8();
  v96 = *(v95 - 8);
  v98 = MEMORY[0x28223BE20](v95, v97);
  v242 = &v220 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v98, v100);
  v102 = &v220 - v101;
  (v270)(a3, a1);
  if ((*(v96 + 48))(v94, 1, v95) == 1)
  {
    sub_224A3311C(v94, &qword_27D6F4808, &unk_224DB7990);
    v103 = type metadata accessor for PlatterContentError(0);
    v104 = v103[5];
    v105 = sub_224DABCC8();
    (*(*(v105 - 8) + 16))(&a5[v104], a3, v105);
    v106 = v103[6];
    v107 = sub_224DAC918();
    (*(*(v107 - 8) + 16))(&a5[v106], a1, v107);
    v108 = sub_224DA9688();
    v109 = *(*(v108 - 8) + 56);
    v110 = v269;
    v109(v269, 1, 1, v108);
    v111 = a5;
    v112 = v103[7];
    v109(v111 + v112, 1, 1, v108);
    v113 = v103[8];
    *v111 = 2;
LABEL_3:
    sub_224A838C0(v110, v111 + v112, &unk_27D6F4680, &unk_224DB4610);
    *(v111 + v113) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4870, &qword_224DB81C8);
    return swift_storeEnumTagMultiPayload();
  }

  v270 = a5;
  (*(v96 + 32))(v102, v94, v95);
  __swift_project_boxed_opaque_existential_1(v268 + 16, v268[19]);
  v252 = a1;
  v257 = a3;
  v115 = sub_224DAD238();
  v225 = v102;
  v223 = v95;
  v224 = v96;
  sub_224DADE38();

  v221 = sub_224DABCE8();

  v116 = v257;
  v117 = sub_224DABC78();
  v119 = v118;
  v120 = v268;
  sub_224DAC868();
  v122 = v266;
  v121 = v267;
  v123 = (*(v267 + 48))(v80, 1, v266);
  v222 = v115;
  if (v123 == 1)
  {
    sub_224A3311C(v80, &qword_27D6F48D8, &unk_224DB8240);
    v125 = v264;
    v124 = v265;
    v126 = v258;
    (*(v264 + 16))(v258, v120 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v265);

    v127 = sub_224DAB228();
    v128 = sub_224DAF288();

    v129 = os_log_type_enabled(v127, v128);
    v130 = v252;
    if (v129)
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v271 = v132;
      *v131 = 136446210;
      v133 = sub_224A33F74(v117, v119, &v271);

      *(v131 + 4) = v133;
      _os_log_impl(&dword_224A2F000, v127, v128, "Could not find a descriptor for %{public}s", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v132);
      MEMORY[0x22AA5EED0](v132, -1, -1);
      MEMORY[0x22AA5EED0](v131, -1, -1);

      (*(v125 + 8))(v258, v124);
    }

    else
    {

      (*(v125 + 8))(v126, v124);
    }

    (*(v224 + 8))(v225, v223);
    v111 = v270;
    v145 = type metadata accessor for PlatterContentError(0);
    v146 = v145[5];
    v147 = sub_224DABCC8();
    (*(*(v147 - 8) + 16))(v111 + v146, v257, v147);
    v148 = v145[6];
    v149 = sub_224DAC918();
    (*(*(v149 - 8) + 16))(v111 + v148, v130, v149);
    v150 = sub_224DA9688();
    v151 = *(*(v150 - 8) + 56);
    v110 = v269;
    v151(v269, 1, 1, v150);
    v112 = v145[7];
    v151(v111 + v112, 1, 1, v150);
    v113 = v145[8];
    *v111 = 0;
    goto LABEL_3;
  }

  (*(v121 + 32))(v263, v80, v122);
  sub_224DAC8A8();
  v135 = v259;
  v134 = v260;
  if ((*(v259 + 48))(v73, 1, v260) == 1)
  {
    v136 = v117;
    sub_224A3311C(v73, &qword_27D6F48D0, &qword_224DB8238);
    v138 = v264;
    v137 = v265;
    v139 = v238;
    (*(v264 + 16))(v238, v120 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v265);

    v140 = sub_224DAB228();
    v141 = sub_224DAF288();

    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v271 = v143;
      *v142 = 136446210;
      v144 = sub_224A33F74(v136, v119, &v271);

      *(v142 + 4) = v144;
      _os_log_impl(&dword_224A2F000, v140, v141, "Could not find a payload for %{public}s", v142, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v143);
      MEMORY[0x22AA5EED0](v143, -1, -1);
      MEMORY[0x22AA5EED0](v142, -1, -1);

      (*(v138 + 8))(v139, v137);
      (*(v267 + 8))(v263, v266);
    }

    else
    {

      (*(v138 + 8))(v139, v137);
      (*(v267 + 8))(v263, v122);
    }

    (*(v224 + 8))(v225, v223);
    v157 = v269;
    v156 = v270;
    v158 = v252;
    v159 = type metadata accessor for PlatterContentError(0);
    v160 = v159[5];
    v161 = sub_224DABCC8();
    (*(*(v161 - 8) + 16))(v156 + v160, v116, v161);
    v162 = v159[6];
    v163 = sub_224DAC918();
    (*(*(v163 - 8) + 16))(v156 + v162, v158, v163);
    v164 = sub_224DA9688();
    v165 = *(*(v164 - 8) + 56);
    v165(v157, 1, 1, v164);
    v166 = v159[7];
    v165(v156 + v166, 1, 1, v164);
    v167 = v159[8];
    *v156 = 1;
    sub_224A838C0(v157, v156 + v166, &unk_27D6F4680, &unk_224DB4610);
    *(v156 + v167) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4870, &qword_224DB81C8);
    return swift_storeEnumTagMultiPayload();
  }

  (*(v135 + 32))(v262, v73, v134);
  v152 = v233;
  sub_224DA9A68();
  v153 = v236;
  sub_224DA9A28();
  v258 = *(v245 + 8);
  (v258)(v152, v256);
  v154 = v234;
  v155 = v235;
  if ((*(v234 + 48))(v153, 1, v235) == 1)
  {
    sub_224A3311C(v153, &qword_27D6F32B0, &qword_224DB3EA0);
    LODWORD(v269) = 0;
  }

  else
  {
    v168 = v228;
    (*(v154 + 32))(v228, v153, v155);
    v169 = v229;
    sub_224DA9808();
    LODWORD(v269) = sub_224DA9798();
    v170 = *(v154 + 8);
    v170(v169, v155);
    v170(v168, v155);
  }

  v171 = v254;
  v172 = v253;
  v173 = v237;
  sub_224DA9A48();
  v174 = sub_224DA9C48();
  v175 = (*(*(v174 - 8) + 48))(v173, 1, v174);
  sub_224A3311C(v173, &qword_27D6F48C8, &unk_224DB8228);
  LODWORD(v245) = v175;
  if (v269)
  {
    v177 = v264;
    v176 = v265;
    (*(v264 + 16))(v172, v120 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v265);

    v178 = sub_224DAB228();
    v179 = sub_224DAF2A8();

    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v271 = v181;
      *v180 = 136446210;
      v182 = sub_224A33F74(v117, v119, &v271);

      *(v180 + 4) = v182;
      v171 = v254;
      _os_log_impl(&dword_224A2F000, v178, v179, "Activity payload is stale: %{public}s", v180, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v181);
      v183 = v181;
      v120 = v268;
      MEMORY[0x22AA5EED0](v183, -1, -1);
      MEMORY[0x22AA5EED0](v180, -1, -1);

      (*(v177 + 8))(v253, v176);
    }

    else
    {

      (*(v177 + 8))(v172, v176);
    }
  }

  else
  {
  }

  v184 = v239;
  sub_224DAC8D8();
  v185 = v241;
  sub_224DAA1F8();
  v187 = v186;
  (*(v240 + 8))(v184, v185);
  if (v187)
  {
    sub_224A3796C((v120 + 6), &v271, &unk_27D6F57B0, qword_224DB7B48);
    if (v272)
    {
      __swift_project_boxed_opaque_existential_1(&v271, v272);
      v188 = v231;
      sub_224DAD4E8();

      __swift_destroy_boxed_opaque_existential_1(&v271);
      v189 = sub_224DAE7C8();
      v190 = *(v189 - 8);
      if ((*(v190 + 48))(v188, 1, v189) != 1)
      {
        (*(v190 + 32))(v171, v188, v189);
        (*(v190 + 56))(v171, 0, 1, v189);
        goto LABEL_31;
      }
    }

    else
    {

      sub_224A3311C(&v271, &unk_27D6F57B0, qword_224DB7B48);
      v189 = sub_224DAE7C8();
      v188 = v231;
      (*(*(v189 - 8) + 56))(v231, 1, 1, v189);
    }

    sub_224DAE7C8();
    v191 = *(v189 - 8);
    (*(v191 + 56))(v171, 1, 1, v189);
    if ((*(v191 + 48))(v188, 1, v189) != 1)
    {
      sub_224A3311C(v188, &qword_27D6F48C0, &qword_224DB8220);
    }
  }

  else
  {
    v189 = sub_224DAE7C8();
    (*(*(v189 - 8) + 56))(v171, 1, 1, v189);
  }

LABEL_31:
  v192 = v261;
  sub_224A44E4C(v171, v261, &qword_27D6F48C0, &qword_224DB8220);
  v193 = v192;
  v194 = v246;
  sub_224A3796C(v193, v246, &qword_27D6F48C0, &qword_224DB8220);
  sub_224DAE7C8();
  v195 = *(v189 - 8);
  v196 = (*(v195 + 48))(v194, 1, v189);
  v197 = v266;
  if (v196 == 1)
  {
    goto LABEL_32;
  }

  v204 = v230;
  sub_224A3796C(v194, v230, &qword_27D6F48C0, &qword_224DB8220);
  v205 = (*(v195 + 88))(v204, v189);
  if (v205 == *MEMORY[0x277CE3CE0])
  {
    v206 = v120 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger;
    v199 = v227;
    (*(v264 + 16))(v227, v206, v265);
    v200 = sub_224DAB228();
    v201 = sub_224DAF278();
    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      *v202 = 0;
      v203 = "Creating v5 archive version";
      goto LABEL_40;
    }

LABEL_41:
    v208 = v225;
    goto LABEL_42;
  }

  if (v205 == *MEMORY[0x277CE3CD0])
  {
    v207 = v120 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger;
    v199 = v226;
    (*(v264 + 16))(v226, v207, v265);
    v200 = sub_224DAB228();
    v201 = sub_224DAF278();
    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      *v202 = 0;
      v203 = "Creating v6 archive version";
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  (*(v195 + 8))(v204, v189);
LABEL_32:
  v198 = v120 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger;
  v199 = v232;
  (*(v264 + 16))(v232, v198, v265);
  v200 = sub_224DAB228();
  v201 = sub_224DAF278();
  if (!os_log_type_enabled(v200, v201))
  {
    goto LABEL_41;
  }

  v202 = swift_slowAlloc();
  *v202 = 0;
  v203 = "Creating default archive version";
LABEL_40:
  _os_log_impl(&dword_224A2F000, v200, v201, v203, v202, 2u);
  v208 = v225;
  MEMORY[0x22AA5EED0](v202, -1, -1);
LABEL_42:
  LODWORD(v254) = v245 != 1;

  (*(v264 + 8))(v199, v265);
  sub_224A3311C(v194, &qword_27D6F48C0, &qword_224DB8220);
  v265 = sub_224DAE468();
  (*(v267 + 16))(v255, v263, v197);
  sub_224DAC8F8();
  v209 = v244;
  sub_224DA9A68();
  v264 = sub_224DA9A18();
  v253 = v210;
  (v258)(v209, v256);
  v211 = v224;
  v212 = v223;
  (*(v224 + 16))(v242, v208, v223);
  v213 = v221;
  v214 = v248;
  sub_224DA9A58();
  sub_224DA9898();
  (*(v250 + 8))(v214, v251);
  sub_224A3796C(v261, v247, &qword_27D6F48C0, &qword_224DB8220);
  sub_224DA9A78();
  v215 = sub_224DAE448();
  v216 = v268[2];
  if (v216)
  {
    v217 = v268[3];

    v216(v257, v252);
    sub_224A3D418(v216, v217);
  }

  else
  {
    (*(v211 + 56))(v243, 1, 1, v212);
  }

  v218 = v270;
  v219 = v222;
  sub_224DAE458();

  sub_224A3311C(v261, &qword_27D6F48C0, &qword_224DB8220);
  (*(v259 + 8))(v262, v260);
  (*(v267 + 8))(v263, v266);
  (*(v211 + 8))(v225, v212);
  *v218 = v215;
  v218[1] = v219;
  v218[2] = MEMORY[0x277CF9E10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4870, &qword_224DB81C8);
  return swift_storeEnumTagMultiPayload();
}