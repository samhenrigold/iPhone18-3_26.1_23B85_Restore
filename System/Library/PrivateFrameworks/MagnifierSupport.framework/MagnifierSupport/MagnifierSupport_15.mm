char *sub_257D0EA8C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7E90, &qword_257EE31E0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v13 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_257ECDC00();
    v11 = *&v10[qword_27F8F7E48];
    if (v11)
    {
      v12 = *&v10[qword_27F8F7E48 + 8];
      sub_257ECC3F0();
      v11(v8);
      sub_257BBD88C(v11, v12);
    }

    return (*(v2 + 8))(v8, v1);
  }

  return result;
}

id sub_257D0EBDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditControlsViewController.DataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257D0EC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_allocWithZone(type metadata accessor for EditControlsViewController.DataSource(0)) + qword_27F8F7E48;
  *v3 = 0;
  v3[1] = 0;
  return sub_257ECDBD0();
}

uint64_t getEnumTagSinglePayload for EditControlsViewController.Item(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE)
  {
    goto LABEL_17;
  }

  if (a2 + 242 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 242) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 242;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 242;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 242;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0xC | (*a1 >> 6)) ^ 0xF;
  if (v6 >= 0xD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for EditControlsViewController.Item(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 242 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 242) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE)
  {
    v4 = 0;
  }

  if (a2 > 0xD)
  {
    v5 = ((a2 - 14) >> 8) + 1;
    *result = a2 - 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 16 * (((-a2 >> 2) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_257D0EDF0(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 0xFu) + 2;
  }
}

_BYTE *sub_257D0EE1C(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xF | (a2 << 6);
  }

  else
  {
    *result = (a2 + 14) & 0xF | 0x80;
  }

  return result;
}

unint64_t sub_257D0EE70()
{
  result = qword_27F8F7E70;
  if (!qword_27F8F7E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7E78, qword_257EE3098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7E70);
  }

  return result;
}

unint64_t sub_257D0EED8()
{
  result = qword_27F8F7E80;
  if (!qword_27F8F7E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7E80);
  }

  return result;
}

unint64_t sub_257D0EF30()
{
  result = qword_27F8F7E88;
  if (!qword_27F8F7E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7E88);
  }

  return result;
}

uint64_t sub_257D0EF84(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 6))
  {
    if (v3 <= 0x3F)
    {
      v8 = v2 == v3;
      return v8 & 1;
    }

LABEL_11:
    v8 = 0;
    return v8 & 1;
  }

  if (v2 >> 6 != 1)
  {
    if (v3 == 128)
    {
      v8 = 1;
      return v8 & 1;
    }

    goto LABEL_11;
  }

  if ((v3 & 0xC0) != 0x40)
  {
    goto LABEL_11;
  }

  v4 = Control.rawValue.getter();
  v6 = v5;
  if (v4 == Control.rawValue.getter() && v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_257ED0640();
  }

  return v8 & 1;
}

char *sub_257D0F074(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    while (2)
    {
      v5 = *v2++;
      v4 = v5;
      switch(v5)
      {
        case 4:

          goto LABEL_8;
        default:
          v6 = sub_257ED0640();

          if ((v6 & 1) == 0)
          {
            goto LABEL_11;
          }

LABEL_8:
          if (qword_281544FE0 != -1)
          {
            swift_once();
          }

          v7 = sub_257ECF4C0();
          v8 = MGGetBoolAnswer();

          if (v8)
          {
LABEL_11:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_257BFDE5C(0, *(v3 + 2) + 1, 1, v3);
            }

            v10 = *(v3 + 2);
            v9 = *(v3 + 3);
            if (v10 >= v9 >> 1)
            {
              v3 = sub_257BFDE5C((v9 > 1), v10 + 1, 1, v3);
            }

            *(v3 + 2) = v10 + 1;
            v3[v10 + 32] = v4 | 0x40;
          }

          if (--v1)
          {
            continue;
          }

          return v3;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_257D0F410()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7E90, &qword_257EE31E0);
  result = sub_257ECDB60();
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = MEMORY[0x277D84F90];
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return result;
    }

    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_33;
    }

    v6 = *(v1 + v2++ + 32);
    if ((v6 & 0xC0) == 0x40)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_257BFCB14(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        result = sub_257BFCB14((v7 > 1), v8 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v8 + 1;
      *(v4 + v8 + 32) = v6 & 0x3F;
      v2 = v5;
    }
  }

  result = sub_257ECDB60();
  v9 = result;
  v10 = 0;
  v11 = *(result + 16);
  v12 = MEMORY[0x277D84F90];
  while (v11 != v10)
  {
    if (v10 >= v11)
    {
      goto LABEL_34;
    }

    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_35;
    }

    v14 = *(v9 + v10++ + 32);
    if ((v14 & 0xC0) == 0x40)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_257BFCB14(0, *(v12 + 16) + 1, 1, v12);
        v12 = result;
      }

      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_257BFCB14((v15 > 1), v16 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 16) = v16 + 1;
      *(v12 + v16 + 32) = v14 & 0x3F;
      v10 = v13;
    }
  }

  result = sub_257ECDB60();
  v17 = result;
  v18 = 0;
  v19 = *(result + 16);
  v20 = MEMORY[0x277D84F90];
  while (v19 != v18)
  {
    if (v18 >= v19)
    {
      goto LABEL_36;
    }

    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_37;
    }

    v22 = *(v17 + v18++ + 32);
    if ((v22 & 0xC0) == 0x40)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_257BFCB14(0, *(v20 + 16) + 1, 1, v20);
        v20 = result;
      }

      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_257BFCB14((v23 > 1), v24 + 1, 1, v20);
        v20 = result;
      }

      *(v20 + 16) = v24 + 1;
      *(v20 + v24 + 32) = v22 & 0x3F;
      v18 = v21;
    }
  }

  return v4;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257D0F728(void *a1)
{
  v2 = sub_257ECCEA0();
  if (v2 == 3)
  {
    return 2;
  }

  if (v2 == 2)
  {
    return 1;
  }

  if (v2 != 1)
  {
    return 0;
  }

  v3 = [a1 numberOfRowsInSection_];
  if (qword_281544FE0 != -1)
  {
    v5 = v3;
    swift_once();
    v3 = v5;
  }

  return v3 > 0;
}

uint64_t sub_257D0F7D8(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return sub_257D0A748(a1);
  }
}

uint64_t sub_257D0F808(uint64_t a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

unint64_t sub_257D0F954()
{
  result = qword_27F8F7EA8;
  if (!qword_27F8F7EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7EA8);
  }

  return result;
}

unint64_t sub_257D0F9A8()
{
  result = qword_27F8F7EB0;
  if (!qword_27F8F7EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7EB0);
  }

  return result;
}

double sub_257D0FA58(uint64_t a1, unsigned __int8 a2)
{
  sub_257ECF5D0();

  return result;
}

CHHapticPattern __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MAGHapticEffect.hapticPattern(duration:volume:)(Swift::Double duration, Swift::Double volume)
{
  v3 = v2;
  *&v192 = sub_257ECCB70();
  v190 = *(v192 - 8);
  MEMORY[0x28223BE20](v192, v6, v7, v8, v9);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  MEMORY[0x28223BE20](&v186 - v15, v16, v17, v18, v19);
  MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  MEMORY[0x28223BE20](v31, v32, v33, &v186 - v30, v34);
  v36 = &v186 - v35;
  MEMORY[0x28223BE20](v37, v38, v39, v40, v41);
  MEMORY[0x28223BE20](v43, &v186 - v42, v44, v45, v46);
  v48 = &v186 - v47;
  MEMORY[0x28223BE20](v49, v50, v51, v52, v53);
  MEMORY[0x28223BE20](v55, v56, &v186 - v54, v57, v58);
  v60 = &v186 - v59;
  MEMORY[0x28223BE20](v61, v62, v63, v64, v65);
  v67 = &v186 - v66;
  MEMORY[0x28223BE20](v68, v69, v70, v71, v72);
  v74 = &v186 - v73;
  MEMORY[0x28223BE20](v75, v76, v77, v78, v79);
  v81 = &v186 - v80;
  MEMORY[0x28223BE20](v82, v83, v84, v85, v86);
  v88 = &v186 - v87;
  MEMORY[0x28223BE20](v89, v90, v91, v92, v93);
  v102 = &v186 - v101;
  v103 = *v3;
  v104 = 0.0;
  if (v103 <= 5)
  {
    if (*v3 > 3u)
    {
      if (v103 == 4)
      {
        v104 = 0.66;
      }

      else if (v103 == 5)
      {
        v104 = 0.25;
      }
    }

    else if (v103 == 2)
    {
      v104 = 0.5;
    }

    else if (v103 == 3)
    {
      v104 = 0.75;
    }

    goto LABEL_31;
  }

  if (*v3 <= 7u)
  {
    if (v103 == 6)
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v132 = [objc_opt_self() bundleForClass_];
      v133 = sub_257ECF4C0();
      v134 = sub_257ECF4C0();
      v135 = [v132 URLForResource:v133 withExtension:v134];

      if (v135)
      {
        sub_257ECCB20();

        v120 = v190;
        v126 = v192;
        (*(v190 + 32))(v102, v88, v192);
        (*(v120 + 16))(v81, v102, v126);
        v136 = objc_allocWithZone(MEMORY[0x277CBF6D0]);
        v137 = v81;
LABEL_29:
        v141 = v191;
        v142 = sub_257D10C50(v137);
        v130 = v141;
        if (v141)
        {
          goto LABEL_30;
        }

        v185.super.isa = v142;
LABEL_35:
        (*(v120 + 8))(v102, v126);
        return v185;
      }
    }

    else if (v103 == 7)
    {
      v102 = v96;
      v106 = v95;
      type metadata accessor for MAGUtilities();
      v112 = swift_getObjCClassFromMetadata();
      v113 = [objc_opt_self() bundleForClass_];
      v114 = sub_257ECF4C0();
      v115 = sub_257ECF4C0();
      v116 = [v113 URLForResource:v114 withExtension:v115];

      if (v116)
      {
        sub_257ECCB20();

        v117 = *(v190 + 32);
        v118 = v102;
        v119 = v48;
        v120 = v190;
LABEL_28:
        v126 = v192;
        v117(v118, v119, v192);
        (*(v120 + 16))(v106, v102, v126);
        v140 = objc_allocWithZone(MEMORY[0x277CBF6D0]);
        v137 = v106;
        goto LABEL_29;
      }
    }

    goto LABEL_31;
  }

  if (v103 != 8)
  {
    if (v103 == 9)
    {
      v105 = v97;
      v102 = v36;
      v106 = v100;
      type metadata accessor for MAGUtilities();
      v138 = swift_getObjCClassFromMetadata();
      v108 = [objc_opt_self() bundleForClass_];
      v109 = sub_257ECF4C0();
      v110 = sub_257ECF4C0();
      v111 = [v108 URLForResource:v109 withExtension:v110];
    }

    else
    {
      if (v103 != 10)
      {
        goto LABEL_31;
      }

      v105 = v94;
      v102 = v99;
      v106 = v98;
      type metadata accessor for MAGUtilities();
      v107 = swift_getObjCClassFromMetadata();
      v108 = [objc_opt_self() bundleForClass_];
      v109 = sub_257ECF4C0();
      v110 = sub_257ECF4C0();
      v111 = [v108 URLForResource:v109 withExtension:v110];
    }

    v139 = v111;

    if (v139)
    {
      sub_257ECCB20();

      v120 = v190;
      v117 = *(v190 + 32);
      v118 = v102;
      v119 = v105;
      goto LABEL_28;
    }

LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7EB8, &qword_257EE31F0);
    inited = swift_initStackObject();
    v189 = inited;
    v192 = xmmword_257ED6D30;
    *(inited + 16) = xmmword_257ED6D30;
    v144 = *MEMORY[0x277CBF688];
    *(inited + 32) = *MEMORY[0x277CBF688];
    v190 = inited + 32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7EC0, &qword_257EE31F8);
    v188 = swift_allocObject();
    *(v188 + 16) = v192;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7EC8, &unk_257EE3200);
    v145 = swift_initStackObject();
    v186 = v145;
    *(v145 + 16) = v192;
    v146 = *MEMORY[0x277CBF658];
    *(v145 + 32) = *MEMORY[0x277CBF658];
    v187 = v145 + 32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FB2D0, &unk_257ED9DE0);
    v147 = swift_initStackObject();
    *(v147 + 16) = xmmword_257EDC1F0;
    v193 = *MEMORY[0x277CBF670];
    v148 = v193;
    type metadata accessor for Key(0);
    sub_257D10EC0(&qword_27F8F4CC8, type metadata accessor for Key, &unk_257ED80D4);
    v149 = v144;
    v150 = v146;
    v151 = v148;
    sub_257ED0280();
    v152 = *MEMORY[0x277CBF650];
    type metadata accessor for EventType(0);
    *(v147 + 96) = v153;
    *(v147 + 72) = v152;
    v193 = *MEMORY[0x277CBF690];
    v154 = v193;
    v155 = v152;
    v156 = v154;
    sub_257ED0280();
    v157 = MEMORY[0x277D839F8];
    *(v147 + 168) = MEMORY[0x277D839F8];
    v158 = v157;
    *(v147 + 144) = 0;
    v193 = *MEMORY[0x277CBF660];
    v159 = v193;
    sub_257ED0280();
    *(v147 + 240) = v158;
    *(v147 + 216) = duration;
    v193 = *MEMORY[0x277CBF668];
    v160 = v193;
    sub_257ED0280();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7ED0, &unk_257EE3210);
    v161 = swift_allocObject();
    *(v161 + 16) = v192;
    v162 = swift_initStackObject();
    *(v162 + 16) = xmmword_257ED9BD0;
    v163 = *MEMORY[0x277CBF678];
    *(v162 + 32) = *MEMORY[0x277CBF678];
    v164 = *MEMORY[0x277CBF638];
    type metadata accessor for ParameterID(0);
    v165 = MEMORY[0x277CBF680];
    *(v162 + 40) = v164;
    v166 = *v165;
    *(v162 + 64) = v167;
    *(v162 + 72) = v166;
    *(v162 + 104) = MEMORY[0x277D839F8];
    *(v162 + 80) = volume;
    v168 = v163;
    v169 = v164;
    v170 = v166;
    v171 = sub_257BE9DF4(v162);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56C8, &qword_257EDA628);
    swift_arrayDestroy();
    *(v161 + 32) = v171;
    *(v147 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7ED8, &unk_257EE3220);
    *(v147 + 288) = v161;
    v193 = *MEMORY[0x277CBF640];
    v172 = v193;
    sub_257D10EC0(&qword_27F8F4CA8, type metadata accessor for ParameterID, &unk_257ED8094);
    v173 = v172;
    sub_257ED0280();
    *(v147 + 384) = MEMORY[0x277D839F8];
    *(v147 + 360) = v104;
    v174 = sub_257BE88A0(v147);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54A0, &qword_257EE0A60);
    swift_arrayDestroy();
    v175 = v186;
    *(v186 + 40) = v174;
    v176 = sub_257BE9F1C(v175);
    swift_setDeallocating();
    sub_257BE4084(v187, &qword_27F8F7EE0, &qword_257EE3230);
    v177 = v188;
    *(v188 + 32) = v176;
    v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7EE8, &qword_257EE3238);
    v179 = v189;
    *(v189 + 64) = v178;
    *(v179 + 40) = v177;
    v180 = sub_257BE9DF4(v179);
    swift_setDeallocating();
    sub_257BE4084(v190, &qword_27F8F56C8, &qword_257EDA628);
    v181 = objc_allocWithZone(MEMORY[0x277CBF6D0]);
    v182 = v191;
    result.super.isa = sub_257D10D9C(v180);
    v130 = v182;
    if (!v182)
    {
      return result;
    }

    goto LABEL_32;
  }

  type metadata accessor for MAGUtilities();
  v121 = swift_getObjCClassFromMetadata();
  v122 = [objc_opt_self() bundleForClass_];
  v123 = sub_257ECF4C0();
  v124 = sub_257ECF4C0();
  v125 = [v122 URLForResource:v123 withExtension:v124];

  if (!v125)
  {
    goto LABEL_31;
  }

  sub_257ECCB20();

  v120 = v190;
  v126 = v192;
  (*(v190 + 32))(v74, v67, v192);
  (*(v120 + 16))(v60, v74, v126);
  v127 = objc_allocWithZone(MEMORY[0x277CBF6D0]);
  v128 = v191;
  v129 = sub_257D10C50(v60);
  v130 = v128;
  if (!v128)
  {
    v185.super.isa = v129;
    v102 = v74;
    goto LABEL_35;
  }

  v102 = v74;
LABEL_30:
  (*(v120 + 8))(v102, v126);
LABEL_32:
  sub_257BEBEF0();
  swift_allocError();
  *(v184 + 8) = 0;
  *(v184 + 16) = 0;
  *v184 = 1;
  *(v184 + 24) = 4;
  swift_willThrow();

  return result;
}

unint64_t sub_257D1095C()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x48746C7561666564;
    v8 = 0x65746544726F6F64;
    v9 = 0x657053746E696F70;
    if (v1 != 3)
    {
      v9 = 0xD000000000000012;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x6544656C706F6570;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x65636E6164697567;
    v3 = 0x75476E4F6B636F6CLL;
    if (v1 != 9)
    {
      v3 = 0x4766664F6B636F6CLL;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000014;
    v5 = 0x6E616353706F6F6CLL;
    if (v1 != 6)
    {
      v5 = 0x65636E6164697567;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

MagnifierSupport::MAGHapticEffect_optional __swiftcall MAGHapticEffect.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_257ED04B0();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_257D10BA0()
{
  v1 = *v0;
  sub_257ED07B0();
  sub_257D0FA58(v3, v1);
  return sub_257ED0800();
}

uint64_t sub_257D10BF0(uint64_t a1)
{
  v2 = *v1;
  sub_257ED07B0();
  sub_257D0FA58(v4, v2);
  return sub_257ED0800();
}

id sub_257D10C50(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_257ECCAE0();
  v13[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_257ECCB70();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_257ECC9F0();

    swift_willThrow();
    v11 = sub_257ECCB70();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

id sub_257D10D9C(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for Key(0);
  sub_257D10EC0(&qword_27F8F4CC8, type metadata accessor for Key, &unk_257ED80D4);
  v2 = sub_257ECF3C0();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_257ECC9F0();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_257D10EC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_257D10F0C()
{
  result = qword_27F8F7EF0;
  if (!qword_27F8F7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7EF0);
  }

  return result;
}

unint64_t sub_257D10F64()
{
  result = qword_27F8F7EF8;
  if (!qword_27F8F7EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7F00, &qword_257EE32E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7EF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MAGHapticEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MAGHapticEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_257D11120()
{
  v1 = v0;
  v87 = sub_257ECD9D0();
  v2 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v3, v4, v5, v6);
  v96 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECD990();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v22 = &v82 - v21;
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v29 = &v82 - v28;
  if (qword_27F8F45B0 != -1)
  {
LABEL_58:
    swift_once();
  }

  v30 = sub_257ECD9C0();
  v31 = __swift_project_value_buffer(v30, qword_27F8F5DA8);
  sub_257ECD980();
  v88 = v31;
  v32 = sub_257ECD9A0();
  v33 = sub_257ECFDC0();
  v34 = sub_257ED0090();
  v94 = v2;
  if (v34)
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v32, v33, v36, "AXTagLanguage", "", v35, 2u);
    v37 = v35;
    v2 = v94;
    MEMORY[0x259C74820](v37, -1, -1);
  }

  (*(v9 + 16))(v22, v29, v8);
  sub_257ECDA00();
  swift_allocObject();
  v95 = sub_257ECD9F0();
  v39 = *(v9 + 8);
  v38 = v9 + 8;
  v89 = v39;
  v39(v29, v8);
  v40 = [v1 getLines];
  sub_257BD2C2C(0, &qword_27F8F5FB0, 0x277CE2DD8);
  v22 = sub_257ECF810();

  if (v22 >> 62)
  {
    v41 = sub_257ED0210();
  }

  else
  {
    v41 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = v96;

  if (v41 < 1)
  {
    v98 = MEMORY[0x277D84F90];
LABEL_50:
    v76 = sub_257ECD9A0();
    sub_257ECD9E0();
    v77 = sub_257ECFDB0();
    if (sub_257ED0090())
    {
      sub_257ECC3F0();
      sub_257ECDA10();

      v78 = v87;
      if ((*(v2 + 88))(v42, v87) == *MEMORY[0x277D85B00])
      {
        v79 = "[Error] Interval already ended";
      }

      else
      {
        (*(v2 + 8))(v42, v78);
        v79 = "";
      }

      v80 = swift_slowAlloc();
      *v80 = 0;
      v81 = sub_257ECD970();
      _os_signpost_emit_with_name_impl(&dword_257BAC000, v76, v77, v81, "AXTagLanguage", v79, v80, 2u);
      MEMORY[0x259C74820](v80, -1, -1);
    }

    v89(v15, v8);
    return v98;
  }

  v43 = [v1 getLines];
  v44 = sub_257ECF810();

  v1 = v44;
  v29 = v95;
  if (v44 >> 62)
  {
    v45 = sub_257ED0210();
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v84 = v15;
  v85 = v38;
  v86 = v8;
  if (!v45)
  {
    v98 = MEMORY[0x277D84F90];
LABEL_49:

    v8 = v86;
    v15 = v84;
    goto LABEL_50;
  }

  v9 = v45;
  v15 = 0;
  v8 = v44 & 0xC000000000000001;
  v92 = v44 & 0xFFFFFFFFFFFFFF8;
  v98 = MEMORY[0x277D84F90];
  v90 = v44;
  v91 = v45;
  v93 = v44 & 0xC000000000000001;
  while (1)
  {
    if (v8)
    {
      v46 = MEMORY[0x259C72E20](v15, v1);
    }

    else
    {
      if (v15 >= *(v92 + 16))
      {
        goto LABEL_57;
      }

      v46 = *(v1 + v15 + 4);
    }

    v47 = v46;
    v48 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v22 = [v46 getCROutputRegion];
    v49 = [v22 text];
    if (v49)
    {
      break;
    }

LABEL_12:
    ++v15;
    if (v48 == v9)
    {
      goto LABEL_49;
    }
  }

  v50 = v49;
  v97 = sub_257ECF500();
  v52 = v51;
  v53 = [objc_allocWithZone(MEMORY[0x277CE7DB0]) initWithContent_];

  if (!v53)
  {

    v2 = v94;
    v42 = v96;
LABEL_43:
    v29 = v95;
    goto LABEL_12;
  }

  [v53 tagContent];
  if (([v53 isTagged] & 1) == 0)
  {
    v57 = [objc_opt_self() currentLanguageCode];
    v58 = sub_257ECF500();
    v60 = v59;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v98 = sub_257BFD468(0, *(v98 + 2) + 1, 1, v98);
    }

    v62 = *(v98 + 2);
    v61 = *(v98 + 3);
    if (v62 >= v61 >> 1)
    {
      v98 = sub_257BFD468((v61 > 1), v62 + 1, 1, v98);
    }

    v64 = v97;
    v63 = v98;
    *(v98 + 2) = v62 + 1;
    v65 = &v63[32 * v62];
    *(v65 + 4) = v64;
    *(v65 + 5) = v52;
    *(v65 + 6) = v58;
    *(v65 + 7) = v60;
    v2 = v94;
    v29 = v95;
    v42 = v96;
    v1 = v90;
LABEL_46:
    v9 = v91;
    v8 = v93;
    goto LABEL_12;
  }

  result = [v53 tags];
  if (result)
  {
    v55 = result;
    v56 = [result firstObject];

    if (v56)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
    }

    else
    {
      v100 = 0u;
      v101 = 0u;
    }

    v42 = v96;
    v8 = v93;
    v102[0] = v100;
    v102[1] = v101;
    if (*(&v101 + 1))
    {
      sub_257BD2C2C(0, &qword_27F8F7F08, 0x277CE7DA8);
      if (swift_dynamicCast())
      {
        v66 = v99;
        result = [v99 dialect];
        if (!result)
        {
          goto LABEL_62;
        }

        v67 = result;
        v68 = [result specificLanguageID];

        if (v68)
        {
          v83 = sub_257ECF500();
          v82 = v69;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_257BFD468(0, *(v98 + 2) + 1, 1, v98);
          }

          v71 = *(v98 + 2);
          v70 = *(v98 + 3);
          if (v71 >= v70 >> 1)
          {
            v98 = sub_257BFD468((v70 > 1), v71 + 1, 1, v98);
          }

          v73 = v97;
          v72 = v98;
          *(v98 + 2) = v71 + 1;
          v74 = &v72[32 * v71];
          *(v74 + 4) = v73;
          *(v74 + 5) = v52;
          v75 = v82;
          *(v74 + 6) = v83;
          *(v74 + 7) = v75;
        }

        else
        {
        }

        v2 = v94;
        v29 = v95;
        v42 = v96;
        goto LABEL_46;
      }
    }

    else
    {

      sub_257C3A464(v102);
    }

    v2 = v94;
    goto LABEL_43;
  }

  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

void sub_257D11A58()
{
  v1 = v0;
  v2 = sub_257ECD9D0();
  v75 = *(v2 - 8);
  v76 = v2;
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECD990();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v23 = &v72 - v22;
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v30 = &v72 - v29;
  if (qword_27F8F45B0 != -1)
  {
    swift_once();
  }

  v31 = sub_257ECD9C0();
  v32 = __swift_project_value_buffer(v31, qword_27F8F5DA8);
  sub_257ECD980();
  v77 = v32;
  v33 = sub_257ECD9A0();
  v34 = sub_257ECFDC0();
  v35 = sub_257ED0090();
  v81 = v8;
  if (v35)
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v33, v34, v37, "CRTagLanguage", "", v36, 2u);
    v38 = v36;
    v8 = v81;
    MEMORY[0x259C74820](v38, -1, -1);
  }

  (*(v10 + 16))(v23, v30, v9);
  sub_257ECDA00();
  swift_allocObject();
  v82 = sub_257ECD9F0();
  v40 = *(v10 + 8);
  v39 = v10 + 8;
  v78 = v40;
  v40(v30, v9);
  v41 = [v1 getLines];
  sub_257BD2C2C(0, &qword_27F8F5FB0, 0x277CE2DD8);
  v42 = sub_257ECF810();

  if (v42 >> 62)
  {
    v43 = sub_257ED0210();
  }

  else
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v43 < 1)
  {
    goto LABEL_29;
  }

  v44 = [v1 getLines];
  v45 = sub_257ECF810();

  v73 = v39;
  v74 = v9;
  v72 = v16;
  if (v45 >> 62)
  {
    v46 = sub_257ED0210();
    if (v46)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
LABEL_10:
      if (v46 < 1)
      {
        __break(1u);
        return;
      }

      v47 = 0;
      v48 = MEMORY[0x277D84F90];
      v83 = v45 & 0xC000000000000001;
      v79 = v46;
      v80 = v45;
      do
      {
        if (v83)
        {
          v49 = MEMORY[0x259C72E20](v47, v45);
        }

        else
        {
          v49 = *(v45 + 8 * v47 + 32);
        }

        v50 = v49;
        v51 = [v49 getCROutputRegion];
        v52 = [v51 text];
        if (v52)
        {
          v53 = v52;
          v54 = sub_257ECF500();
          v56 = v55;

          v57 = [v51 recognizedLocale];
          if (!v57)
          {
            v57 = [objc_opt_self() currentLanguageCode];
          }

          v58 = v57;
          v59 = sub_257ECF500();
          v61 = v60;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_257BFD468(0, *(v48 + 2) + 1, 1, v48);
          }

          v63 = *(v48 + 2);
          v62 = *(v48 + 3);
          if (v63 >= v62 >> 1)
          {
            v48 = sub_257BFD468((v62 > 1), v63 + 1, 1, v48);
          }

          *(v48 + 2) = v63 + 1;
          v64 = &v48[32 * v63];
          *(v64 + 4) = v54;
          *(v64 + 5) = v56;
          *(v64 + 6) = v59;
          *(v64 + 7) = v61;
          v8 = v81;
          v46 = v79;
          v45 = v80;
        }

        else
        {
        }

        ++v47;
      }

      while (v46 != v47);
    }
  }

  v9 = v74;
  v16 = v72;
LABEL_29:
  v65 = sub_257ECD9A0();
  sub_257ECD9E0();
  v66 = sub_257ECFDB0();
  if (sub_257ED0090())
  {
    sub_257ECC3F0();
    sub_257ECDA10();

    v68 = v75;
    v67 = v76;
    if ((*(v75 + 88))(v8, v76) == *MEMORY[0x277D85B00])
    {
      v69 = "[Error] Interval already ended";
    }

    else
    {
      (*(v68 + 8))(v8, v67);
      v69 = "";
    }

    v70 = swift_slowAlloc();
    *v70 = 0;
    v71 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v65, v66, v71, "CRTagLanguage", v69, v70, 2u);
    MEMORY[0x259C74820](v70, -1, -1);
  }

  v78(v16, v9);
}

uint64_t sub_257D120B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_257ECF560();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_257ECF4C0();
  v15 = [v13 initWithSuiteName_];

  if (v15)
  {
    v16 = sub_257ECF4C0();
    v17 = [v15 stringForKey_];

    if (v17)
    {
      sub_257ECF500();

      sub_257ECF550();
      v18 = sub_257ECF510();
      v20 = v19;

      (*(v6 + 8))(v12, v5);
      if (v20 >> 60 != 15)
      {
        sub_257ECC6F0();
        swift_allocObject();
        sub_257ECC6E0();
        sub_257D166C0();
        sub_257ECC6D0();
        if (v3)
        {

          sub_257D16714(v18, v20);
        }

        else
        {
          sub_257D16714(v18, v20);

          v21 = v24;
          if (v24 != 8)
          {
            return v21;
          }
        }

        return a3;
      }
    }
  }

  return a3;
}

void sub_257D12354(int a3@<W2>, _BYTE *a4@<X8>)
{
  v24 = a3;
  v6 = sub_257ECF560();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v15 = sub_257ECF4C0();
  v16 = [v14 initWithSuiteName_];

  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = sub_257ECF4C0();
  v18 = [v16 stringForKey_];

  if (!v18)
  {
    goto LABEL_7;
  }

  sub_257ECF500();

  sub_257ECF550();
  v19 = sub_257ECF510();
  v21 = v20;

  (*(v7 + 8))(v13, v6);
  if (v21 >> 60 == 15)
  {
    goto LABEL_7;
  }

  sub_257ECC6F0();
  swift_allocObject();
  sub_257ECC6E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E70, &unk_257EE35B0);
  sub_257D16C64();
  sub_257ECC6D0();
  if (v4)
  {

    sub_257D16714(v19, v21);

LABEL_7:
    v22 = v24;
    goto LABEL_8;
  }

  sub_257D16714(v19, v21);

  v22 = v25;
  if (v25 == 13)
  {
    goto LABEL_7;
  }

LABEL_8:
  *a4 = v22;
}

uint64_t sub_257D12604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v27 = a5;
  v28 = a6;
  v26 = a4;
  v8 = sub_257ECF560();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v17 = sub_257ECF4C0();
  v18 = [v16 initWithSuiteName_];

  if (v18)
  {
    v19 = sub_257ECF4C0();
    v20 = [v18 stringForKey_];

    if (v20)
    {
      sub_257ECF500();

      sub_257ECF550();
      v21 = sub_257ECF510();
      v23 = v22;

      (*(v9 + 8))(v15, v8);
      if (v23 >> 60 != 15)
      {
        sub_257ECC6F0();
        swift_allocObject();
        sub_257ECC6E0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
        v28();
        sub_257ECC6D0();
        if (v6)
        {

          sub_257D16714(v21, v23);
        }

        else
        {
          sub_257D16714(v21, v23);

          if (v29)
          {
            return v29;
          }
        }
      }
    }
  }

  return a3;
}

uint64_t sub_257D128B8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_257ECF560();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_257ECF4C0();
  v15 = [v13 initWithSuiteName_];

  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = sub_257ECF4C0();
  v17 = [v15 stringForKey_];

  if (!v17)
  {
    goto LABEL_7;
  }

  sub_257ECF500();

  sub_257ECF550();
  v18 = sub_257ECF510();
  v20 = v19;

  (*(v6 + 8))(v12, v5);
  if (v20 >> 60 == 15)
  {
    goto LABEL_7;
  }

  sub_257ECC6F0();
  swift_allocObject();
  sub_257ECC6E0();
  sub_257D17548();
  sub_257ECC6D0();
  if (v3)
  {

    sub_257D16714(v18, v20);

LABEL_7:
    v21 = a3;
    return v21 & 1;
  }

  sub_257D16714(v18, v20);

  v21 = v24;
  if (v24 == 2)
  {
    goto LABEL_7;
  }

  return v21 & 1;
}

double sub_257D12B14(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_257ECF560();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_257ECF4C0();
  v15 = [v13 initWithSuiteName_];

  if (v15)
  {
    v16 = sub_257ECF4C0();
    v17 = [v15 stringForKey_];

    if (v17)
    {
      sub_257ECF500();

      sub_257ECF550();
      v18 = sub_257ECF510();
      v20 = v19;

      (*(v6 + 8))(v12, v5);
      if (v20 >> 60 != 15)
      {
        sub_257ECC6F0();
        swift_allocObject();
        sub_257ECC6E0();
        sub_257ECC6D0();
        if (v3)
        {

          sub_257D16714(v18, v20);
        }

        else
        {
          sub_257D16714(v18, v20);

          return v22;
        }
      }
    }
  }

  return a3;
}

uint64_t sub_257D12DA0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_257ECF560();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_257ECF4C0();
  v15 = [v13 initWithSuiteName_];

  if (v15)
  {
    v16 = sub_257ECF4C0();
    v17 = [v15 stringForKey_];

    if (v17)
    {
      sub_257ECF500();

      sub_257ECF550();
      v18 = sub_257ECF510();
      v20 = v19;

      (*(v6 + 8))(v12, v5);
      if (v20 >> 60 != 15)
      {
        sub_257ECC6F0();
        swift_allocObject();
        sub_257ECC6E0();
        sub_257ECC6D0();
        if (v3)
        {

          sub_257D16714(v18, v20);
        }

        else
        {
          sub_257D16714(v18, v20);

          v21 = v24;
          if (v24 != 2)
          {
LABEL_8:
            a3 = v21;
            return a3 & 1;
          }
        }

        v21 = a3;
        goto LABEL_8;
      }
    }
  }

  return a3 & 1;
}

uint64_t sub_257D13000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v5 = sub_257ECF560();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_257ECF4C0();
  v15 = [v13 initWithSuiteName_];

  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = sub_257ECF4C0();
  v17 = [v15 stringForKey_];

  if (!v17)
  {
    goto LABEL_7;
  }

  sub_257ECF500();

  sub_257ECF550();
  v18 = sub_257ECF510();
  v20 = v19;

  (*(v6 + 8))(v12, v5);
  if (v20 >> 60 == 15)
  {
    goto LABEL_7;
  }

  sub_257ECC6F0();
  swift_allocObject();
  sub_257ECC6E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257D16D3C(&qword_27F8F7F30, &unk_27F8F4D70, &unk_257ED81A0, MEMORY[0x277D84F58]);
  sub_257ECC6D0();
  if (v4)
  {

    sub_257D16714(v18, v20);

LABEL_7:

    return v23;
  }

  sub_257D16714(v18, v20);

  if (v22[1] == 1)
  {
    goto LABEL_7;
  }

  return v22[0];
}

double sub_257D13368(double *a1)
{
  v3 = sub_257ECF560();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[2];
  v12 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v13 = sub_257ECF4C0();
  v14 = [v12 initWithSuiteName_];

  if (v14)
  {
    v15 = sub_257ECF4C0();
    v16 = [v14 stringForKey_];

    if (v16)
    {
      sub_257ECF500();

      sub_257ECF550();
      v17 = sub_257ECF510();
      v19 = v18;

      (*(v4 + 8))(v10, v3);
      if (v19 >> 60 != 15)
      {
        sub_257ECC6F0();
        swift_allocObject();
        sub_257ECC6E0();
        sub_257D16AE4();
        sub_257ECC6D0();
        if (v1)
        {

          sub_257D16714(v17, v19);
        }

        else
        {
          sub_257D16714(v17, v19);

          return v21;
        }
      }
    }
  }

  return v11;
}

uint64_t sub_257D136FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_257ECF560();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_257ECF4C0();
  v15 = [v13 initWithSuiteName_];

  if (v15)
  {
    v16 = sub_257ECF4C0();
    v17 = [v15 stringForKey_];

    if (v17)
    {
      sub_257ECF500();

      sub_257ECF550();
      v18 = sub_257ECF510();
      v20 = v19;

      (*(v6 + 8))(v12, v5);
      if (v20 >> 60 != 15)
      {
        sub_257ECC6F0();
        swift_allocObject();
        sub_257ECC6E0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90, &qword_257EDEFD0);
        sub_257D16D3C(&qword_27F8F7F40, &qword_27F8F9D90, &qword_257EDEFD0, MEMORY[0x277D83978]);
        sub_257ECC6D0();
        if (v3)
        {

          sub_257D16714(v18, v20);
        }

        else
        {
          sub_257D16714(v18, v20);

          if (v23)
          {
            return v23;
          }
        }
      }
    }
  }

  return a3;
}

float sub_257D139CC(uint64_t a1, uint64_t a2, float a3)
{
  v5 = sub_257ECF560();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_257ECF4C0();
  v15 = [v13 initWithSuiteName_];

  if (v15)
  {
    v16 = sub_257ECF4C0();
    v17 = [v15 stringForKey_];

    if (v17)
    {
      sub_257ECF500();

      sub_257ECF550();
      v18 = sub_257ECF510();
      v20 = v19;

      (*(v6 + 8))(v12, v5);
      if (v20 >> 60 != 15)
      {
        sub_257ECC6F0();
        swift_allocObject();
        sub_257ECC6E0();
        sub_257ECC6D0();
        if (v3)
        {

          sub_257D16714(v18, v20);
        }

        else
        {
          sub_257D16714(v18, v20);

          return *&v23;
        }
      }
    }
  }

  return a3;
}

uint64_t sub_257D13C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_257ECF560();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_257ECF4C0();
  v15 = [v13 initWithSuiteName_];

  if (v15)
  {
    v16 = sub_257ECF4C0();
    v17 = [v15 stringForKey_];

    if (v17)
    {
      sub_257ECF500();

      sub_257ECF550();
      v18 = sub_257ECF510();
      v20 = v19;

      (*(v6 + 8))(v12, v5);
      if (v20 >> 60 != 15)
      {
        sub_257ECC6F0();
        swift_allocObject();
        sub_257ECC6E0();
        sub_257D16F0C();
        sub_257ECC6D0();
        if (v3)
        {

          sub_257D16714(v18, v20);
        }

        else
        {
          sub_257D16714(v18, v20);

          v21 = v24;
          if (v24 != 4)
          {
            return v21;
          }
        }

        return a3;
      }
    }
  }

  return a3;
}

uint64_t sub_257D13EAC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_257ECF560();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_257ECF4C0();
  v15 = [v13 initWithSuiteName_];

  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = sub_257ECF4C0();
  v17 = [v15 stringForKey_];

  if (!v17)
  {
    goto LABEL_7;
  }

  sub_257ECF500();

  sub_257ECF550();
  v18 = sub_257ECF510();
  v20 = v19;

  (*(v6 + 8))(v12, v5);
  if (v20 >> 60 == 15)
  {
    goto LABEL_7;
  }

  sub_257ECC6F0();
  swift_allocObject();
  sub_257ECC6E0();
  sub_257D16808();
  sub_257ECC6D0();
  if (v3)
  {

    sub_257D16714(v18, v20);

LABEL_7:
    v21 = a3;
    return v21 & 1;
  }

  sub_257D16714(v18, v20);

  v21 = v24;
  if (v24 == 2)
  {
    goto LABEL_7;
  }

  return v21 & 1;
}

double sub_257D14144(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_257ECF560();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_257ECF4C0();
  v15 = [v13 initWithSuiteName_];

  if (v15)
  {
    v16 = sub_257ECF4C0();
    v17 = [v15 stringForKey_];

    if (v17)
    {
      sub_257ECF500();

      sub_257ECF550();
      v18 = sub_257ECF510();
      v20 = v19;

      (*(v6 + 8))(v12, v5);
      if (v20 >> 60 != 15)
      {
        sub_257ECC6F0();
        swift_allocObject();
        sub_257ECC6E0();
        sub_257BF9650();
        sub_257ECC6D0();
        if (v3)
        {

          sub_257D16714(v18, v20);
        }

        else
        {
          sub_257D16714(v18, v20);

          return v22;
        }
      }
    }
  }

  return a3;
}

uint64_t sub_257D143C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v25[0] = a4;
  v25[1] = a5;
  v7 = sub_257ECF560();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9, v10, v11, v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v16 = sub_257ECF4C0();
  v17 = [v15 initWithSuiteName_];

  if (v17)
  {
    v18 = sub_257ECF4C0();
    v19 = [v17 stringForKey_];

    if (v19)
    {
      sub_257ECF500();

      sub_257ECF550();
      v20 = sub_257ECF510();
      v22 = v21;

      (*(v8 + 8))(v14, v7);
      if (v22 >> 60 != 15)
      {
        sub_257ECC6F0();
        swift_allocObject();
        sub_257ECC6E0();
        (v25[0])();
        sub_257ECC6D0();
        if (v5)
        {

          sub_257D16714(v20, v22);
        }

        else
        {
          sub_257D16714(v20, v22);

          v23 = v26;
          if (v26 != 3)
          {
            return v23;
          }
        }

        return a3;
      }
    }
  }

  return a3;
}

uint64_t sub_257D14634@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7838, &qword_257EE35C0);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v43 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
  v15 = &v43 - v14;
  v16 = sub_257ECF560();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18, v19, v20, v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v25 = sub_257ECF4C0();
  v26 = [v24 initWithSuiteName_];

  if (v26 && (v27 = sub_257ECF4C0(), v28 = [v26 stringForKey_], v26, v27, v28) && (sub_257ECF500(), v28, sub_257ECF550(), v29 = sub_257ECF510(), v31 = v30, , (*(v17 + 8))(v23, v16), v31 >> 60 != 15))
  {
    sub_257ECC6F0();
    swift_allocObject();
    sub_257ECC6E0();
    v35 = sub_257ECCC80();
    sub_257D16D9C();
    v36 = v45;
    sub_257ECC6D0();
    if (v36)
    {

      v37 = 1;
    }

    else
    {
      v37 = 0;
    }

    sub_257D16714(v29, v31);

    v38 = *(v35 - 8);
    (*(v38 + 56))(v15, v37, 1, v35);
    v39 = v15;
    v40 = v43;
    sub_257D16DF4(v39, v43);
    v41 = *(v38 + 48);
    if (v41(v40, 1, v35) == 1)
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7F48, &qword_257EE35C8);
      (*(v38 + 16))(v44, &a1[*(v42 + 44)], v35);
      result = v41(v40, 1, v35);
      if (result != 1)
      {
        return sub_257CF0448(v40);
      }
    }

    else
    {
      return (*(v38 + 32))(v44, v40, v35);
    }
  }

  else
  {
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7F48, &qword_257EE35C8) + 44);
    v33 = sub_257ECCC80();
    return (*(*(v33 - 8) + 16))(v44, &a1[v32], v33);
  }

  return result;
}

uint64_t sub_257D14A40(uint64_t a1)
{
  v1 = Control.rawValue.getter();
  MEMORY[0x259C72150](v1);

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();

  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_257ECF500();
  return v7;
}

id sub_257D14B7C()
{
  switch(*v0)
  {
    case 1:
      v15 = sub_257ECF4C0();
      v2 = [objc_opt_self() systemImageNamed_];

      if (!v2)
      {
        return 0;
      }

      goto LABEL_3;
    case 2:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xD:
    case 0xE:
    case 0xF:
      v8 = sub_257ECF4C0();
      v9 = [objc_opt_self() systemImageNamed_];
      goto LABEL_10;
    case 3:
      v10 = [objc_opt_self() systemWhiteColor];
      v11 = [objc_opt_self() configurationWithHierarchicalColor_];

      v12 = v11;
      v13 = sub_257ECF4C0();
      v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

      if (!v14)
      {
        return 0;
      }

      goto LABEL_11;
    case 0xC:
      v8 = sub_257ECF4C0();
      v9 = [objc_opt_self() _systemImageNamed_];
LABEL_10:
      v14 = v9;

      if (!v14)
      {
        return 0;
      }

LABEL_11:
      v16 = objc_opt_self();
      v5 = v14;
      v7 = [v16 configurationWithPointSize:4 weight:-1 scale:25.0];
      v6 = [v5 imageByApplyingSymbolConfiguration_];
      v4 = v5;
      goto LABEL_12;
    default:
      v1 = sub_257ECF4C0();
      v2 = [objc_opt_self() systemImageNamed_];

      if (!v2)
      {
        return 0;
      }

LABEL_3:
      v3 = objc_opt_self();
      v4 = v2;
      v5 = [v3 configurationWithPointSize:4 weight:3 scale:25.0];
      v6 = [v4 imageByApplyingSymbolConfiguration_];
      v7 = v4;
LABEL_12:
      v17 = v6;

      return v17;
  }
}

uint64_t Control.rawValue.getter()
{
  result = 0x746361466D6F6F7ALL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x4379616C70736964;
      break;
    case 3:
      result = 0x737265746C6966;
      break;
    case 4:
      result = 0x67696C6873616C66;
      break;
    case 5:
      result = 0x6544656C706F6570;
      break;
    case 6:
      result = 0x636F4C7375636F66;
      break;
    case 7:
      result = 0x79546172656D6163;
      break;
    case 8:
      result = 0x4D65727574706163;
      break;
    case 9:
      result = 0x6F69746365746564;
      break;
    case 0xA:
      v2 = 1919905636;
      goto LABEL_16;
    case 0xB:
      result = 0xD000000000000013;
      break;
    case 0xC:
      result = 0x7061436567616D69;
      break;
    case 0xD:
      result = 0x657053746E696F70;
      break;
    case 0xE:
      v2 = 1954047348;
LABEL_16:
      result = v2 | 0x6574654400000000;
      break;
    case 0xF:
      result = 0x6974697669746361;
      break;
    default:
      return result;
  }

  return result;
}

id sub_257D15408()
{
  if (*v0 != 4)
  {
    return sub_257D14B7C();
  }

  v1 = sub_257ECF4C0();
  v2 = [objc_opt_self() systemImageNamed_];

  if (!v2)
  {
    return 0;
  }

  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 configurationWithPointSize:4 weight:-1 scale:25.0];
  v6 = [v4 imageByApplyingSymbolConfiguration_];

  return v6;
}

uint64_t sub_257D15518()
{
  result = 0x2E6E696D2E6E7573;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x662E6172656D6163;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000025;
      break;
    case 6:
      v2 = 1801678700;
      goto LABEL_15;
    case 7:
      result = 0xD000000000000022;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0x646E696677656976;
      break;
    case 0xA:
      result = 0xD000000000000016;
      break;
    case 0xB:
      v2 = 1634103155;
LABEL_15:
      result = v2 | 0x6C69662E00000000;
      break;
    case 0xC:
      result = 0x75622E6F746F6870;
      break;
    case 0xD:
      result = 0xD000000000000020;
      break;
    case 0xE:
      result = 0x6569762E74786574;
      break;
    case 0xF:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t Control.angelIconName.getter()
{
  v1 = *v0;
  if (v1 > 0xB)
  {
    if (v1 == 12)
    {
      return 0x75622E6F746F6870;
    }

    if (v1 != 13)
    {
      if (v1 == 14)
      {
        return 0x6569762E74786574;
      }

      return 0x75622E6F746F6870;
    }

    return 0xD000000000000020;
  }

  else
  {
    switch(v1)
    {
      case 5u:
        return 0xD000000000000025;
      case 0xAu:
        return 0xD000000000000016;
      case 0xBu:
        return 0x6C69662E61666F73;
      default:
        return 0x75622E6F746F6870;
    }
  }
}

uint64_t Control.accessibilityLabel.getter(uint64_t a1)
{
  if (*v1 != 13)
  {
    return sub_257D14A40(a1);
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_257ECF500();
  return v7;
}

void sub_257D15920()
{
  switch(*v0)
  {
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      sub_257ED0410();
      __break(1u);
      break;
    default:
      return;
  }
}

void sub_257D15BB4()
{
  switch(*v0)
  {
    case 1:
    case 2:
    case 4:
      return;
    case 3:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      sub_257ED0410();
      __break(1u);
      break;
    default:
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if ((v13 & 1) == 0)
      {
        swift_beginAccess();
        v1 = qword_2815447E0;

        if (v1 != -1)
        {
          v2 = swift_once();
        }

        MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
        sub_257ECFD50();

        if (v12 != 2)
        {
          MEMORY[0x28223BE20](v7, v8, v9, v10, v11);

          sub_257ECFD50();
        }
      }

      break;
  }
}

MagnifierSupport::Control_optional __swiftcall Control.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_257ED04B0();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_257D16168()
{
  v0 = Control.rawValue.getter();
  v2 = v1;
  if (v0 == Control.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_257ED0640();
  }

  return v5 & 1;
}

uint64_t sub_257D16210@<X0>(uint64_t *a1@<X8>)
{
  result = Control.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_257D1623C()
{
  result = qword_27F8F7F10;
  if (!qword_27F8F7F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F70B0, &qword_257EDFFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F10);
  }

  return result;
}

unint64_t sub_257D16364()
{
  result = qword_2815444C0;
  if (!qword_2815444C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815444C0);
  }

  return result;
}

uint64_t sub_257D163B8()
{
  sub_257ED07B0();
  Control.rawValue.getter();
  sub_257ECF5D0();

  return sub_257ED0800();
}

double sub_257D16420(uint64_t a1)
{
  Control.rawValue.getter();
  sub_257ECF5D0();

  return result;
}

uint64_t sub_257D16484(uint64_t a1)
{
  sub_257ED07B0();
  Control.rawValue.getter();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t getEnumTagSinglePayload for Control(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Control(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_257D16638@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257D120B8(*a1, *(a1 + 8), *(a1 + 16));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_257D16688@<X0>(_BYTE *a1@<X8>)
{
  result = sub_257D120B8(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_257D166C0()
{
  result = qword_281545A70;
  if (!qword_281545A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545A70);
  }

  return result;
}

double sub_257D16714(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_257BF2550(a1, a2);
  }

  return result;
}

unint64_t sub_257D16728()
{
  result = qword_281544058;
  if (!qword_281544058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F4D90, &qword_257ED81B0);
    sub_257D167B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544058);
  }

  return result;
}

unint64_t sub_257D167B4()
{
  result = qword_281544FE8;
  if (!qword_281544FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544FE8);
  }

  return result;
}

unint64_t sub_257D16808()
{
  result = qword_281544BE8;
  if (!qword_281544BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544BE8);
  }

  return result;
}

unint64_t sub_257D1685C()
{
  result = qword_281543FC8;
  if (!qword_281543FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F70B0, &qword_257EDFFC0);
    sub_257D168E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543FC8);
  }

  return result;
}

unint64_t sub_257D168E0()
{
  result = qword_2815444B0;
  if (!qword_2815444B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815444B0);
  }

  return result;
}

unint64_t sub_257D16934()
{
  result = qword_27F8F7F18;
  if (!qword_27F8F7F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6A20, &unk_257EDD490);
    sub_257D169B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F18);
  }

  return result;
}

unint64_t sub_257D169B8()
{
  result = qword_27F8F7F20;
  if (!qword_27F8F7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F20);
  }

  return result;
}

unint64_t sub_257D16A0C()
{
  result = qword_281544038;
  if (!qword_281544038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F5A90, qword_257EDB420);
    sub_257D16A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544038);
  }

  return result;
}

unint64_t sub_257D16A90()
{
  result = qword_2815458D0;
  if (!qword_2815458D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815458D0);
  }

  return result;
}

unint64_t sub_257D16AE4()
{
  result = qword_281545AA0;
  if (!qword_281545AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545AA0);
  }

  return result;
}

unint64_t sub_257D16B38()
{
  result = qword_2815457E8;
  if (!qword_2815457E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815457E8);
  }

  return result;
}

unint64_t sub_257D16B8C()
{
  result = qword_281544048;
  if (!qword_281544048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7F28, &unk_257EE35A0);
    sub_257D16C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544048);
  }

  return result;
}

unint64_t sub_257D16C10()
{
  result = qword_2815459A8;
  if (!qword_2815459A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815459A8);
  }

  return result;
}

unint64_t sub_257D16C64()
{
  result = qword_281545998;
  if (!qword_281545998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F9E70, &unk_257EE35B0);
    sub_257D16C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545998);
  }

  return result;
}

unint64_t sub_257D16CE8()
{
  result = qword_27F8F7F38;
  if (!qword_27F8F7F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F38);
  }

  return result;
}

uint64_t sub_257D16D3C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_257D16D9C()
{
  result = qword_27F8F7F50;
  if (!qword_27F8F7F50)
  {
    sub_257ECCC80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F50);
  }

  return result;
}

uint64_t sub_257D16DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7838, &qword_257EE35C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_257D16E64()
{
  result = qword_27F8F7F58;
  if (!qword_27F8F7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F58);
  }

  return result;
}

unint64_t sub_257D16EB8()
{
  result = qword_2815444B8;
  if (!qword_2815444B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815444B8);
  }

  return result;
}

unint64_t sub_257D16F0C()
{
  result = qword_27F8F7F60;
  if (!qword_27F8F7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F60);
  }

  return result;
}

unint64_t sub_257D16F60()
{
  result = qword_281544008;
  if (!qword_281544008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F8470, &unk_257EDEFB0);
    sub_257D16FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544008);
  }

  return result;
}

unint64_t sub_257D16FE4()
{
  result = qword_2815447B8;
  if (!qword_2815447B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815447B8);
  }

  return result;
}

unint64_t sub_257D17038()
{
  result = qword_281543FE8;
  if (!qword_281543FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F5540, qword_257ED9FD0);
    sub_257D170BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543FE8);
  }

  return result;
}

unint64_t sub_257D170BC()
{
  result = qword_281544698;
  if (!qword_281544698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544698);
  }

  return result;
}

unint64_t sub_257D17110()
{
  result = qword_281544028;
  if (!qword_281544028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6AD8, &unk_257EE35D0);
    sub_257D17194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544028);
  }

  return result;
}

unint64_t sub_257D17194()
{
  result = qword_281544820;
  if (!qword_281544820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544820);
  }

  return result;
}

unint64_t sub_257D171E8()
{
  result = qword_281543FF8;
  if (!qword_281543FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F5880, qword_257EDACA0);
    sub_257D1726C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543FF8);
  }

  return result;
}

unint64_t sub_257D1726C()
{
  result = qword_2815446B8;
  if (!qword_2815446B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815446B8);
  }

  return result;
}

unint64_t sub_257D172C0()
{
  result = qword_281544018;
  if (!qword_281544018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F5F90, &unk_257EDC2B0);
    sub_257D17344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544018);
  }

  return result;
}

unint64_t sub_257D17344()
{
  result = qword_281544808;
  if (!qword_281544808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544808);
  }

  return result;
}

unint64_t sub_257D17398()
{
  result = qword_281543FD8;
  if (!qword_281543FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F7080, qword_257EDD2B0);
    sub_257D1741C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281543FD8);
  }

  return result;
}

unint64_t sub_257D1741C()
{
  result = qword_281544590;
  if (!qword_281544590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544590);
  }

  return result;
}

unint64_t sub_257D17470()
{
  result = qword_27F8F7F68;
  if (!qword_27F8F7F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F4B90, &unk_257EE35E0);
    sub_257D174F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F68);
  }

  return result;
}

unint64_t sub_257D174F4()
{
  result = qword_27F8F7F70;
  if (!qword_27F8F7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F70);
  }

  return result;
}

unint64_t sub_257D17548()
{
  result = qword_2815458E8;
  if (!qword_2815458E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815458E8);
  }

  return result;
}

unint64_t sub_257D1759C()
{
  result = qword_27F8F7F78;
  if (!qword_27F8F7F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6B38, &unk_257EE6910);
    sub_257D17620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F78);
  }

  return result;
}

unint64_t sub_257D17620()
{
  result = qword_27F8F7F80;
  if (!qword_27F8F7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F80);
  }

  return result;
}

uint64_t MAGOutputAnnouncement.speechContent.getter@<X0>(uint64_t *a2@<X8>)
{
  MAGOutputAnnouncement.displayContent.getter();
  v3 = sub_257ECD1A0();
  v4 = MEMORY[0x277D70398];
  a2[3] = v3;
  a2[4] = v4;
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_257ECD1B0();
}

uint64_t MAGOutputAnnouncement.displayContent.getter()
{
  switch(*v0)
  {
    case 4:
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v2 = objc_opt_self();
      v3 = [v2 bundleForClass_];
      v4 = sub_257ECF4C0();
      v5 = sub_257ECF4C0();
      v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

      sub_257ECF500();
      v7 = [v2 bundleForClass_];
      v8 = sub_257ECF4C0();
      v9 = sub_257ECF4C0();
      v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

      sub_257ECF500();
      v18 = sub_257ECF710();
      sub_257ECF620();

      v11 = v18;
      break;
    case 0xD:
      if (qword_27F8F4668 != -1)
      {
        swift_once();
      }

      goto LABEL_5;
    default:
LABEL_5:
      type metadata accessor for MAGUtilities();
      v12 = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
      v14 = sub_257ECF4C0();
      v15 = sub_257ECF4C0();
      v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

      v11 = sub_257ECF500();
      break;
  }

  return v11;
}

uint64_t MAGOutputAnnouncement.hashValue.getter()
{
  v1 = *v0;
  sub_257ED07B0();
  MEMORY[0x259C732E0](v1);
  return sub_257ED0800();
}

unint64_t sub_257D1841C()
{
  result = qword_27F8F7F88;
  if (!qword_27F8F7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F88);
  }

  return result;
}

uint64_t sub_257D18488(uint64_t a1)
{
  sub_257D188B4();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();

  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

void sub_257D18590(uint64_t a1)
{
  v31 = *(a1 + 16);
  if (!v31)
  {
    return;
  }

  v1 = 0;
  v30 = a1 + 32;
  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    v3 = (v30 + 40 * v1);
    v4 = v3[3];
    v5 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v4);
    v6 = (*(v5 + 8))(v4, v5);
    v7 = v6;
    v8 = v6 >> 62;
    if (v6 >> 62)
    {
      v9 = sub_257ED0210();
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v2 >> 62;
    if (v2 >> 62)
    {
      v28 = sub_257ED0210();
      v12 = v28 + v9;
      if (__OFADD__(v28, v9))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v11 + v9;
      if (__OFADD__(v11, v9))
      {
        goto LABEL_32;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v35 = v9;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v10)
      {
        v14 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_257ED0210();
      goto LABEL_15;
    }

    if (v10)
    {
      goto LABEL_14;
    }

LABEL_15:
    v2 = sub_257ED0310();
    v14 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v8)
    {
      break;
    }

    v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v16 >> 1) - v15) < v35)
    {
      goto LABEL_35;
    }

    v32 = v1;
    v33 = v2;
    v20 = v14 + 8 * v15 + 32;
    v29 = v14;
    if (v8)
    {
      if (v17 < 1)
      {
        goto LABEL_37;
      }

      sub_257C6AB38(&qword_27F8F7FB0, &qword_27F8F7FA8, &unk_257EE3920);
      for (i = 0; i != v17; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7FA8, &unk_257EE3920);
        v22 = sub_257CA8910(v34, i, v7);
        v24 = *v23;
        (v22)(v34, 0);
        *(v20 + 8 * i) = v24;
      }
    }

    else
    {
      sub_257D195A0();
      swift_arrayInitWithCopy();
    }

    v1 = v32;
    v2 = v33;
    if (v35 >= 1)
    {
      v25 = *(v29 + 16);
      v26 = __OFADD__(v25, v35);
      v27 = v25 + v35;
      if (v26)
      {
        goto LABEL_36;
      }

      *(v29 + 16) = v27;
    }

LABEL_4:
    if (++v1 == v31)
    {
      return;
    }
  }

  v18 = v14;
  v19 = sub_257ED0210();
  v14 = v18;
  v17 = v19;
  if (v19)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v35 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

MagnifierSupport::ColorFilter_optional __swiftcall ColorFilter.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 12;
  if (rawValue < 0xC)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_257D188B4()
{
  v1 = 0xD000000000000012;
  v2 = *v0;
  if (v2 > 5)
  {
    v7 = 0xD000000000000022;
    v8 = 0xD000000000000021;
    if (v2 != 10)
    {
      v8 = 0xD000000000000020;
    }

    if (v2 != 9)
    {
      v7 = v8;
    }

    v9 = 0xD00000000000001FLL;
    if (v2 == 7)
    {
      v9 = 0xD00000000000001ELL;
    }

    if (v2 == 6)
    {
      v9 = 0xD00000000000001BLL;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v3 = 0xD000000000000019;
    v4 = 0xD000000000000018;
    if (v2 != 4)
    {
      v4 = 0xD000000000000017;
    }

    if (v2 != 3)
    {
      v3 = v4;
    }

    v5 = 0xD000000000000015;
    if (v2 != 1)
    {
      v5 = 0xD000000000000016;
    }

    if (*v0)
    {
      v1 = v5;
    }

    if (*v0 <= 2u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_257D18A0C()
{
  v1 = *v0;
  if (v1 > 5)
  {
    if (*v0 > 8u)
    {
      if (v1 == 9)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
        v2 = swift_allocObject();
        *(v2 + 16) = xmmword_257ED9BF0;
        v17 = objc_opt_self();
        v12 = [v17 yellowColor];
        v13 = [v17 blackColor];
      }

      else
      {
        if (v1 == 10)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
          v2 = swift_allocObject();
          *(v2 + 16) = xmmword_257ED9BF0;
          v12 = [objc_opt_self() yellowColor];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
          v2 = swift_allocObject();
          *(v2 + 16) = xmmword_257ED9BF0;
          v12 = [objc_opt_self() whiteColor];
        }

        v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.5 alpha:1.0];
      }
    }

    else
    {
      if (v1 == 6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_257ED9BF0;
        v15 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
        result = v14;
        *(v14 + 32) = v15;
        return result;
      }

      if (v1 == 7)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_257ED9BE0;
        v7 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
        v8 = sub_257ECCF50();
        v9 = sub_257ECF4C0();
        [v7 setValue:v8 forKey:v9];

        *(v6 + 32) = v7;
        v10 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
        result = v6;
        *(v6 + 40) = v10;
        return result;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_257ED9BF0;
      v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.75 green:0.0 blue:0.0 alpha:1.0];
      v13 = [objc_opt_self() blackColor];
    }

    goto LABEL_25;
  }

  if (*v0 > 2u)
  {
    if (v1 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_257ED9BF0;
      v16 = objc_opt_self();
      v12 = [v16 blackColor];
      v13 = [v16 yellowColor];
    }

    else if (v1 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_257ED9BF0;
      v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.5 alpha:1.0];
      v13 = [objc_opt_self() yellowColor];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_257ED9BF0;
      v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.5 alpha:1.0];
      v13 = [objc_opt_self() whiteColor];
    }

    goto LABEL_25;
  }

  if (!*v0)
  {
    return MEMORY[0x277D84F90];
  }

  if (v1 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_257ED9BF0;
    v12 = [objc_opt_self() blackColor];
    v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.75 green:0.0 blue:0.0 alpha:1.0];
LABEL_25:
    v3 = sub_257D19088(v12, v13);

    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_257ED9BF0;
  v3 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v4 = sub_257ECCF50();
  v5 = sub_257ECF4C0();
  [v3 setValue:v4 forKey:v5];

LABEL_26:
  result = v2;
  *(v2 + 32) = v3;
  return result;
}

id sub_257D19088(void *a1, void *a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v23 = 0.0;
  v24[0] = 0.0;
  v21 = 0;
  v22 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v17 = 0;
  v18 = 0.0;
  [a1 getRed:v24 green:&v23 blue:&v22 alpha:&v21];
  [a2 getRed:&v20 green:&v19 blue:&v18 alpha:&v17];
  v5 = (v20 - v24[0]) * 0.33333333;
  v6 = v24[0];
  v7 = (v19 - v23) * 0.33333333;
  v8 = v23;
  v9 = (v18 - v22) * 0.33333333;
  v10 = v22;
  *v14 = v5;
  *&v14[1] = v5;
  *&v14[2] = v5;
  v14[3] = 0;
  *&v14[4] = v6;
  *&v14[5] = v7;
  *&v14[6] = v7;
  *&v14[7] = v7;
  v14[8] = 0;
  *&v14[9] = v8;
  *&v14[10] = v9;
  *&v14[11] = v9;
  *&v14[12] = v9;
  v14[13] = 0;
  *&v14[14] = v10;
  v15 = xmmword_257ED6CD0;
  v16 = 0;
  v11 = [objc_opt_self() valueWithCAColorMatrix_];
  v12 = sub_257ECF4C0();
  [v4 setValue:v11 forKey:v12];

  return v4;
}

unint64_t sub_257D19288()
{
  result = qword_27F8F7F90;
  if (!qword_27F8F7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7F90);
  }

  return result;
}

unint64_t sub_257D193DC()
{
  result = qword_27F8F7FA0;
  if (!qword_27F8F7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7FA0);
  }

  return result;
}

uint64_t sub_257D1945C(uint64_t a1, char a2)
{
  if (!a2)
  {
    v2 = MEMORY[0x277CDA290];
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v2 = MEMORY[0x277CDA2A0];
LABEL_5:
    v3 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    v4 = sub_257ECCF50();
    v5 = sub_257ECF4C0();
    [v3 setValue:v4 forKey:v5];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
    result = swift_allocObject();
    *(result + 16) = xmmword_257ED9BF0;
    *(result + 32) = v3;
    return result;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_257D195A0()
{
  result = qword_281543DD0;
  if (!qword_281543DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281543DD0);
  }

  return result;
}

unint64_t sub_257D195EC()
{
  result = qword_2815459B0;
  if (!qword_2815459B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815459B0);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DisplayFilter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayFilter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_257D196E0(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_257D196F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_257D19724(uint64_t result, uint64_t (*a2)(void))
{
  if (result)
  {
    return a2();
  }

  return result;
}

unint64_t sub_257D19758()
{
  result = qword_27F8F7FB8;
  if (!qword_27F8F7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7FB8);
  }

  return result;
}

unint64_t sub_257D197B0()
{
  result = qword_27F8F7FC0;
  if (!qword_27F8F7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F7FC0);
  }

  return result;
}

uint64_t sub_257D19870()
{
  v0 = sub_257ECCA30();
  __swift_allocate_value_buffer(v0, qword_27F912FA0);
  __swift_project_value_buffer(v0, qword_27F912FA0);
  return sub_257ECCA00();
}

uint64_t sub_257D198D4()
{
  v1 = sub_257ECDA30();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  sub_257ECF900();
  v0[8] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();
  v0[9] = v3;
  v0[10] = v2;

  return MEMORY[0x2822009F8](sub_257D199C4, v3, v2);
}

uint64_t sub_257D199C4()
{
  if (qword_27F8F4770 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = xmmword_257EE0FB0;
  *(v0 + 32) = 7;
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_257D19AA8;

  return MAGActionHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D19AA8()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  sub_257C6DA74(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_257D19BE8;
  }

  else
  {
    v5 = sub_257C6D490;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257D19BE8()
{
  v1 = v0[12];

  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete ReaderModeIntent: %@", v7, 0xCu);
    sub_257C11B14(v8);
    MEMORY[0x259C74820](v8, -1, -1);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_257D19D64@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F4628 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECCA30();
  v3 = __swift_project_value_buffer(v2, qword_27F912FA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257D19E0C(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  v1[3] = swift_task_alloc();
  v1[4] = sub_257ECF900();
  v1[5] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257D19EE0, v3, v2);
}

uint64_t sub_257D19EE0()
{
  v1 = *(v0 + 24);

  v2 = sub_257ECF930();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_257ECF8F0();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D85700];
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  sub_257C3FBD4(0, 0, v1, &unk_257EE3A60, v4);

  sub_257ECC350();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_257D19FF4(uint64_t a1)
{
  v2 = sub_257CF97BC();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_257D1A040()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257BE3DE0;

  return sub_257D198D4();
}

double sub_257D1A0EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_257ECC3F0();
  v1(v2);

  return result;
}

double sub_257D1A130()
{
  v1 = sub_257ECF120();
  v48 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_257ECF190();
  v8 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v9, v10, v11, v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_257ECCB70();
  v45 = *(v15 - 8);
  v46 = v15;
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_257ECDA30();
  v44 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_257D21CB8(0, 0, 0);
  if ((_s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0() & 1) != 0 && (v30 = _s16MagnifierSupport013MAGAutomationB0V23detectionModeReplayPathSSSgvgZ_0(), v31))
  {
    v32 = v31;
    v33 = v30;
    v48 = v0;
    sub_257ECD3B0();

    v34 = sub_257ECDA20();
    v35 = sub_257ECFBD0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_257BF1FC8(v33, v32, aBlock);
      _os_log_impl(&dword_257BAC000, v34, v35, "Automation replay path is set to %s", v36, 0xCu);
      v38 = __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x259C74820](v37, -1, -1, v38);
      MEMORY[0x259C74820](v36, -1, -1);
    }

    (*(v44 + 8))(v28, v22);
    sub_257ECCAC0();

    sub_257D1DCA0(v21, v29);

    (*(v45 + 8))(v21, v46);
  }

  else
  {
    v46 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_captureSessionQueue);
    v40 = swift_allocObject();
    *(v40 + 16) = v0;
    *(v40 + 24) = v29;
    aBlock[4] = sub_257D22FA8;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_101_0;
    v41 = _Block_copy(aBlock);
    v42 = v0;
    v43 = v29;
    sub_257ECF150();
    v49 = MEMORY[0x277D84F90];
    sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257C31C28(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0);
    sub_257ED0180();
    MEMORY[0x259C72880](0, v14, v7, v41);
    _Block_release(v41);

    v48[1](v7, v1);
    (*(v8 + 8))(v14, v47);
  }

  return result;
}

void *sub_257D1A64C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_257D1A698(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_257D1A750()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastARFrameTimestamp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_257D1A794(double a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastARFrameTimestamp;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_257D1A844(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

void *sub_257D1A8A0()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_pixelBuffer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_257D1A8EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_pixelBuffer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id MAGARService.init(eventHandler:captureSessionQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a1;
  v35 = a2;
  v36 = sub_257ECFD20();
  v4 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v5, v6, v7, v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v16 = sub_257ECF190();
  MEMORY[0x28223BE20](v16 - 8, v17, v18, v19, v20);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession] = 0;
  v2[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSessionIsInterrupted] = 0;
  v2[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_isARSessionStarted] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastARFrameTimestamp] = 0;
  v33 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arDelegateQueue;
  v32[4] = sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  sub_257ECF150();
  v38 = MEMORY[0x277D84F90];
  v32[3] = sub_257D1B5A4(&qword_281543F30, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v32[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000, &unk_257EDC200);
  sub_257C31C28(&unk_281543FA0, &unk_27F8F8000, &unk_257EDC200);
  sub_257ED0180();
  v21 = *MEMORY[0x277D85260];
  v22 = v4 + 104;
  v23 = *(v4 + 104);
  v32[1] = v22;
  v23(v10, v21, v36);
  *&v2[v33] = sub_257ECFD80();
  v33 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSessionQueue;
  sub_257ECF150();
  v38 = MEMORY[0x277D84F90];
  sub_257ED0180();
  v23(v10, v21, v36);
  *&v2[v33] = sub_257ECFD80();
  *&v2[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arFrame] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_pixelBuffer] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arRecordingConfiguration] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arReplayConfiguration] = 0;
  v2[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arIsRecording] = 0;
  v24 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService____lazy_storage___currentRecordingURL;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  (*(*(v25 - 8) + 56))(&v3[v24], 1, 1, v25);
  v26 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastRecordingURL;
  v27 = sub_257ECCB70();
  v28 = *(*(v27 - 8) + 56);
  v28(&v3[v26], 1, 1, v27);
  v28(&v3[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastScreenRecordingURL], 1, 1, v27);
  v29 = v35;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_eventHandler] = v34;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_captureSessionQueue] = v29;
  v30 = type metadata accessor for MAGARService(0);
  v37.receiver = v3;
  v37.super_class = v30;
  return objc_msgSendSuper2(&v37, sel_init);
}

uint64_t type metadata accessor for MAGARService(uint64_t a1)
{
  result = qword_27F8F8130;
  if (!qword_27F8F8130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257D1AED4(int a1, int a2, int a3)
{
  v4 = v3;
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v5 = sub_257ECF120();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECF190();
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_257ECD990();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21, v22, v23, v24);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F8F45A8 != -1)
  {
    swift_once();
  }

  v27 = sub_257ECD9C0();
  __swift_project_value_buffer(v27, qword_27F8F5D90);
  sub_257ECD980();
  v28 = sub_257ECD9A0();
  v29 = sub_257ECFDD0();
  if (sub_257ED0090())
  {
    v30 = swift_slowAlloc();
    v40 = v18;
    v31 = v30;
    *v30 = 0;
    v32 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v28, v29, v32, "StartARKit", "", v31, 2u);
    v33 = v31;
    v4 = v3;
    v18 = v40;
    MEMORY[0x259C74820](v33, -1, -1);
  }

  (*(v20 + 8))(v26, v19);
  v34 = swift_allocObject();
  *(v34 + 16) = v4;
  *(v34 + 24) = v41 & 1;
  *(v34 + 25) = v42 & 1;
  *(v34 + 26) = v43 & 1;
  aBlock[4] = sub_257D1B578;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_28;
  v35 = _Block_copy(aBlock);
  v36 = v4;
  sub_257ECF150();
  v47 = MEMORY[0x277D84F90];
  sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257C31C28(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v18, v11, v35);
  _Block_release(v35);
  (*(v46 + 8))(v11, v5);
  (*(v44 + 8))(v18, v45);

  v37 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastARFrameTimestamp;
  result = swift_beginAccess();
  *&v36[v37] = 0;
  v36[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_isARSessionStarted] = 1;
  return result;
}

double sub_257D1B36C(char *a1, char a2, char a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v8 - 8, v9, v10, v11, v12);
  v14 = &v27 - v13;
  v15 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  if (!*&a1[v15])
  {
    v22 = [objc_allocWithZone(MEMORY[0x277CE5370]) init];
    v23 = *&a1[v15];
    *&a1[v15] = v22;
    v24 = v22;

    if (v24)
    {
      [v24 _addObserver_];
    }

    v25 = *&a1[v15];
    if (v25)
    {
      [v25 setDelegate_];
      v26 = *&a1[v15];
      if (v26)
      {
        [v26 setDelegateQueue_];
      }
    }
  }

  v16 = sub_257D21CB8(a2 & 1, a3 & 1, a4 & 1);
  v17 = *&a1[v15];
  if (v17)
  {
    [v17 runWithConfiguration:v16 options:1];
  }

  v18 = sub_257ECF930();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a1;
  v20 = a1;
  sub_257E81524(0, 0, v14, &unk_257EE3DC0, v19);

  return result;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257D1B5A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257D1B60C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 5;
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_257D1B6C4;

  return MAGAREventHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D1B6C4()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_257D231CC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

double sub_257D1B7F8()
{
  v1 = v0;
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECF190();
  v39 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_257ECD990();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19, v20, v21, v22);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  if (*&v1[v25])
  {
    v36 = v10;
    v37 = v3;
    if (qword_27F8F45A8 != -1)
    {
      swift_once();
    }

    v38 = v2;
    v27 = sub_257ECD9C0();
    __swift_project_value_buffer(v27, qword_27F8F5D90);
    sub_257ECD980();
    v28 = sub_257ECD9A0();
    v29 = sub_257ECFDD0();
    if (sub_257ED0090())
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = sub_257ECD970();
      _os_signpost_emit_with_name_impl(&dword_257BAC000, v28, v29, v31, "StopARKit", "", v30, 2u);
      MEMORY[0x259C74820](v30, -1, -1);
    }

    (*(v18 + 8))(v24, v17);
    if (v1[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arIsRecording] == 1)
    {
      MAGARService.stopRecording(handler:)(0, 0);
    }

    v32 = swift_allocObject();
    *(v32 + 16) = v1;
    aBlock[4] = sub_257D216F4;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_6_3;
    v33 = _Block_copy(aBlock);
    v34 = v1;
    sub_257ECF150();
    v40 = MEMORY[0x277D84F90];
    sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257C31C28(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0);
    v35 = v38;
    sub_257ED0180();
    MEMORY[0x259C72880](0, v16, v9, v33);
    _Block_release(v33);
    (*(v37 + 8))(v9, v35);
    (*(v39 + 8))(v16, v36);
  }

  return result;
}

void MAGARService.stopRecording(handler:)(void (*a1)(void), uint64_t a2)
{
  v43[1] = a2;
  v45 = a1;
  v3 = sub_257ECCC80();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v11 - 8, v12, v13, v14, v15);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  v24 = v43 - v23;
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v31 = v43 - v30;
  sub_257ECCC70();
  sub_257D1E308(v10, v31);
  (*(v4 + 8))(v10, v3);
  v32 = sub_257ECCB70();
  v33 = *(v32 - 8);
  (*(v33 + 56))(v31, 0, 1, v32);
  v34 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastScreenRecordingURL;
  swift_beginAccess();
  sub_257CB4B80(v31, v2 + v34);
  swift_endAccess();
  v44 = v2;
  sub_257BE401C(v2 + v34, v24, &qword_27F8F5F30, &qword_257EDA9E0);
  v35 = *(v33 + 48);
  v36 = v35(v24, 1, v32);
  sub_257BE4084(v24, &qword_27F8F5F30, &qword_257EDA9E0);
  if (v36 != 1)
  {
    v37 = v45;
    v38 = [objc_opt_self() sharedRecorder];
    v39 = v44 + v34;
    v40 = v44;
    sub_257BE401C(v39, v17, &qword_27F8F5F30, &qword_257EDA9E0);
    if (v35(v17, 1, v32) == 1)
    {
      __break(1u);
    }

    else
    {
      v41 = sub_257ECCAE0();
      (*(v33 + 8))(v17, v32);
      aBlock[4] = sub_257D1E718;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231E8;
      aBlock[3] = &block_descriptor_9_0;
      v42 = _Block_copy(aBlock);
      [v38 stopRecordingWithOutputURL:v41 completionHandler:v42];
      _Block_release(v42);

      *(v40 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arIsRecording) = 0;
      if (v37)
      {
        v37();
      }
    }
  }
}

double sub_257D1C00C(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  [*&a1[v9] pause];
  a1[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_isARSessionStarted] = 0;
  v10 = *&a1[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arFrame];
  *&a1[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arFrame] = 0;

  v11 = sub_257ECF930();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v13 = a1;
  sub_257E81524(0, 0, v8, &unk_257EE3DB0, v12);

  return result;
}

uint64_t sub_257D1C184()
{
  *(v0 + 16) = xmmword_257EDA120;
  *(v0 + 32) = 5;
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_257D1C240;

  return MAGAREventHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D1C240()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_257D1C374, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_257D1C38C(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v5 - 8, v6, v7, v8, v9);
  v11 = &v19[-v10];
  if (*(v2 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_isARSessionStarted) == 1)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((v19[15] & 1) == 0)
    {
      v12 = sub_257ECF930();
      (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = a1;
      v13[5] = a2;
      v13[6] = v2;
      v14 = a1;
      v15 = a2;
      v16 = v2;
      sub_257E81524(0, 0, v11, &unk_257EE3AC0, v13);

      v17 = *&v16[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arFrame];
      *&v16[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arFrame] = v15;
      v18 = v15;
    }
  }
}

uint64_t sub_257D1C570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_257D1C594, 0, 0);
}

uint64_t sub_257D1C594()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_257D1C660;

  return MAGAREventHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D1C660()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_257D1C7DC;
  }

  else
  {
    v2 = sub_257D1C774;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257D1C774()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_257D1C7DC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_257D1C8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_257D1C904, 0, 0);
}

uint64_t sub_257D1C904()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = 1;
  v3 = v2;

  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_257D1C9D8;

  return MAGAREventHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D1C9D8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_257D231C4;
  }

  else
  {
    v2 = sub_257D231C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257D1CB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_257D1CB58, 0, 0);
}

uint64_t sub_257D1CB58()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = 2;
  v3 = v2;

  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_257D1CC2C;

  return MAGAREventHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D1CC2C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_257D1CDAC;
  }

  else
  {
    v2 = sub_257D1CD40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257D1CD40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257D1CDAC()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_257D1CE40(void *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, void (*a7)(id, uint64_t))
{
  sub_257BD2C2C(0, a5, a6);
  v10 = sub_257ECF810();
  v11 = a3;
  v12 = a1;
  a7(v11, v10);

  return result;
}

uint64_t sub_257D1CEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_257D1CF1C, 0, 0);
}

uint64_t sub_257D1CF1C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = 3;
  v3 = v2;

  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_257D1C9D8;

  return MAGAREventHandler.send(_:)(v0 + 16);
}

double sub_257D1D038(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  *&result = MEMORY[0x28223BE20](v8 - 8, v9, v10, v11, v12).n128_u64[0];
  v15 = &v20[-v14];
  if (*(v4 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_isARSessionStarted) == 1)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((v20[15] & 1) == 0)
    {
      v16 = sub_257ECF930();
      (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = a1;
      v17[5] = a2;
      v17[6] = v4;
      v18 = a1;

      v19 = v4;
      sub_257E81524(0, 0, v15, a4, v17);
    }
  }

  return result;
}

uint64_t sub_257D1D1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_257D1D220, 0, 0);
}

uint64_t sub_257D1D220()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = 4;
  v3 = v2;

  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_257D1C9D8;

  return MAGAREventHandler.send(_:)(v0 + 16);
}

uint64_t sub_257D1D368()
{
  *(v0 + 16) = xmmword_257EE0F90;
  *(v0 + 32) = 5;
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_257D1B6C4;

  return MAGAREventHandler.send(_:)(v0 + 16);
}

double sub_257D1D4B8(void *a1, const char *a2, int a3, uint64_t a4, uint64_t a5)
{
  v57 = a3;
  v54 = a2;
  v8 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v10 - 8, v11, v12, v13, v14);
  v58 = v52 - v15;
  v16 = sub_257ECD990();
  v55 = *(v16 - 8);
  v56 = v16;
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v22 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_257ECDA30();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25, v26, v27, v28);
  v30 = v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD460();
  v31 = a1;
  v32 = sub_257ECDA20();
  v33 = sub_257ECFC00();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v53 = a5;
    v35 = v34;
    v36 = swift_slowAlloc();
    v52[1] = a4;
    v37 = v8;
    v38 = v36;
    *v35 = 138412290;
    *(v35 + 4) = v31;
    *v36 = v31;
    v39 = v31;
    _os_log_impl(&dword_257BAC000, v32, v33, "%@", v35, 0xCu);
    sub_257BE4084(v38, &unk_27F8F5490, &unk_257EDC470);
    v40 = v38;
    v8 = v37;
    MEMORY[0x259C74820](v40, -1, -1);
    v41 = v35;
    a5 = v53;
    MEMORY[0x259C74820](v41, -1, -1);
  }

  (*(v24 + 8))(v30, v23);
  if (qword_27F8F45A8 != -1)
  {
    swift_once();
  }

  v42 = sub_257ECD9C0();
  __swift_project_value_buffer(v42, qword_27F8F5D90);
  sub_257ECD980();
  v43 = sub_257ECD9A0();
  v44 = sub_257ECFDD0();
  if (sub_257ED0090())
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = sub_257ECD970();
    _os_signpost_emit_with_name_impl(&dword_257BAC000, v43, v44, v46, v54, "", v45, 2u);
    MEMORY[0x259C74820](v45, -1, -1);
  }

  (*(v55 + 8))(v22, v56);
  v8[OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSessionIsInterrupted] = v57;
  v47 = sub_257ECF930();
  v48 = v58;
  (*(*(v47 - 8) + 56))(v58, 1, 1, v47);
  v49 = swift_allocObject();
  v49[2] = 0;
  v49[3] = 0;
  v49[4] = v8;
  v50 = v8;
  sub_257E81524(0, 0, v48, a5, v49);

  return result;
}

uint64_t sub_257D1D8DC()
{
  *(v0 + 16) = xmmword_257EE0FA0;
  *(v0 + 32) = 5;
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_257D1B6C4;

  return MAGAREventHandler.send(_:)(v0 + 16);
}

id MAGARService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MAGARService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAGARService(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257D1DBE4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MAGARService(0);
  result = sub_257ECDCF0();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall MAGARService.updateAngelARSession(sceneDepth:personSegmentation:sceneReconstruction:)(Swift::Bool sceneDepth, Swift::Bool personSegmentation, Swift::Bool sceneReconstruction)
{
  v4 = sub_257D21CB8(sceneDepth, personSegmentation, sceneReconstruction);
  v5 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v6 = *(v3 + v5);
  if (v6)
  {
    v7 = v6;
    [v7 runWithConfiguration:v4 options:1];
  }
}

void sub_257D1DCA0(uint64_t a1, void *a2)
{
  v3 = v2;
  v41 = a1;
  v42 = a2;
  v4 = sub_257ECDA30();
  v40[2] = *(v4 - 8);
  v40[3] = v4;
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECCB70();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_257ECF120();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21, v22, v23, v24);
  v26 = v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  byte_27F8F87B0 = 1;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v40[1] = v10;
  v27 = qword_281548358 + 48;
  swift_beginAccess();
  v43 = MEMORY[0x277D84F90];
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v28 = sub_257ECF110();
  MEMORY[0x28223BE20](v28, v29, v30, v31, v32);
  v40[-2] = &v43;
  v40[-1] = v27;
  sub_257ECFD40();
  (*(v20 + 8))(v26, v19);
  swift_endAccess();
  v33 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastARFrameTimestamp;
  swift_beginAccess();
  *(v2 + v33) = 0;
  (*(v12 + 16))(v18, v41, v11);
  v34 = objc_allocWithZone(MEMORY[0x277CE5360]);
  v35 = v42;
  v36 = sub_257D22438(v35, v18, 0);

  [v36 setDelegate_];
  v37 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v38 = *(v3 + v37);
  if (v38)
  {
    v39 = v38;
    [v39 pause];
    [v39 _addObserver_];
    [v39 setDelegate_];
    [v39 runWithConfiguration:v36 options:11];
  }
}

id sub_257D1E1AC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  result = *(a1 + v4);
  if (result)
  {
    return [result runWithConfiguration:a2 options:1];
  }

  return result;
}

Swift::Void __swiftcall MAGARService.startRecording()()
{
  v1 = [objc_opt_self() sharedRecorder];
  v3[4] = sub_257D1E2FC;
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_257D231E8;
  v3[3] = &block_descriptor_42;
  v2 = _Block_copy(v3);
  [v1 startRecordingWithHandler_];
  _Block_release(v2);

  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arIsRecording) = 1;
}

uint64_t sub_257D1E308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v48 = a2;
  v2 = sub_257ECCB70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8178, &qword_257EE3DA0);
  MEMORY[0x28223BE20](v17 - 8, v18, v19, v20, v21);
  v23 = &v47 - v22;
  v24 = sub_257ECCD90();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26, v27, v28, v29);
  v31 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = objc_allocWithZone(MEMORY[0x277CCA968]);
  v33 = [v32 init];
  sub_257ECCD00();
  v34 = sub_257ECCD60();
  (*(v25 + 8))(v31, v24);
  [v33 setLocale_];

  sub_257ECCE00();
  v35 = sub_257ECCE20();
  v36 = *(v35 - 8);
  v37 = 0;
  if ((*(v36 + 48))(v23, 1, v35) != 1)
  {
    v37 = sub_257ECCE10();
    (*(v36 + 8))(v23, v35);
  }

  [v33 setTimeZone_];

  v38 = sub_257ECF4C0();
  [v33 setDateFormat_];

  v49 = 0xD000000000000011;
  v50 = 0x8000000257F006A0;
  v39 = sub_257ECCBD0();
  v40 = [v33 stringFromDate_];

  v41 = sub_257ECF500();
  v43 = v42;

  MEMORY[0x259C72150](v41, v43);

  v44 = NSTemporaryDirectory();
  sub_257ECF500();

  sub_257ECCAC0();

  sub_257ECCB00();

  v45 = *(v3 + 8);
  v45(v9, v2);
  sub_257ECCB10();

  return (v45)(v16, v2);
}

void sub_257D1E724(void *a1, const char *a2, ...)
{
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_257ECD3B0();
    v12 = a1;
    v13 = sub_257ECDA20();
    v14 = sub_257ECFBD0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = a1;
      v23 = v16;
      *v15 = 136315138;
      v17 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8160, &qword_257EE3C78);
      v18 = sub_257ECF570();
      v20 = sub_257BF1FC8(v18, v19, &v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_257BAC000, v13, v14, a2, v15, 0xCu);
      v21 = __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x259C74820](v16, -1, -1, v21);
      MEMORY[0x259C74820](v15, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
  }
}

void sub_257D1E8FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_257ECC3F0();
  v4 = a2;
  v3(a2);
}

Swift::Void __swiftcall MAGARService.createRadar()()
{
  v1 = v0;
  v259 = sub_257ECF120();
  v258 = *(v259 - 8);
  MEMORY[0x28223BE20](v259, v2, v3, v4, v5);
  v256 = &v249 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_257ECF190();
  v255 = *(v257 - 8);
  MEMORY[0x28223BE20](v257, v7, v8, v9, v10);
  v254 = &v249 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = sub_257ECC7D0();
  v12 = *(v284 - 8);
  MEMORY[0x28223BE20](v284, v13, v14, v15, v16);
  v18 = &v249 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v266 = &v249 - v24;
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v265 = &v249 - v30;
  MEMORY[0x28223BE20](v31, v32, v33, v34, v35);
  v264 = &v249 - v36;
  MEMORY[0x28223BE20](v37, v38, v39, v40, v41);
  v263 = &v249 - v42;
  MEMORY[0x28223BE20](v43, v44, v45, v46, v47);
  v262 = &v249 - v48;
  MEMORY[0x28223BE20](v49, v50, v51, v52, v53);
  v261 = &v249 - v54;
  MEMORY[0x28223BE20](v55, v56, v57, v58, v59);
  v260 = &v249 - v60;
  v271 = sub_257ECCC80();
  v270 = *(v271 - 8);
  MEMORY[0x28223BE20](v271, v61, v62, v63, v64);
  v66 = &v249 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v67 - 8, v68, v69, v70, v71);
  v267 = &v249 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73, v74, v75, v76, v77);
  v268 = &v249 - v78;
  MEMORY[0x28223BE20](v79, v80, v81, v82, v83);
  v272 = &v249 - v84;
  MEMORY[0x28223BE20](v85, v86, v87, v88, v89);
  v91 = &v249 - v90;
  v92 = sub_257ECCB70();
  v278 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v93, v94, v95, v96);
  v252 = &v249 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v98, v99, v100, v101, v102);
  v253 = &v249 - v103;
  MEMORY[0x28223BE20](v104, v105, v106, v107, v108);
  v110 = &v249 - v109;
  MEMORY[0x28223BE20](v111, v112, v113, v114, v115);
  v283 = &v249 - v116;
  v251 = v117;
  MEMORY[0x28223BE20](v118, v119, v120, v121, v122);
  v282 = &v249 - v123;
  if (qword_281544FE0 != -1)
  {
LABEL_31:
    swift_once();
  }

  v124 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  v269 = v124;
  sub_257ECDD60();

  v288 = MEMORY[0x277D84F90];
  v277 = v92;
  v273 = v66;
  v285 = v12;
  v250 = v18;
  v249 = v110;
  if (aBlock == 1)
  {
    if (qword_27F8F4610 != -1)
    {
      swift_once();
    }

    v125 = qword_27F912F78;
    swift_beginAccess();
    v281 = *(v125 + 24);
    if (v281 >> 62)
    {
      v126 = sub_257ED0210();
      if (v126)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v126 = *((v281 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v126)
      {
LABEL_7:
        v66 = v281;
        v287 = v281 & 0xC000000000000001;
        v276 = v281 & 0xFFFFFFFFFFFFFF8;
        v280 = (v278 + 48);
        v279 = (v278 + 32);
        v275 = (v278 + 16);
        v274 = v278 + 8;

        v127 = 0;
        v288 = MEMORY[0x277D84F90];
        v286 = v1;
        while (1)
        {
          if (v287)
          {
            v128 = MEMORY[0x259C72E20](v127, v66);
          }

          else
          {
            if (v127 >= *(v276 + 16))
            {
              goto LABEL_30;
            }

            v128 = *&v66[8 * v127 + 32];
          }

          v1 = v128;
          v18 = (v127 + 1);
          if (__OFADD__(v127, 1))
          {
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          v12 = v126;
          sub_257CEFE48(v128);
          if (v129)
          {
            v130 = v129;
            *&v291 = 0x6675426C65786970;
            *(&v291 + 1) = 0xEB00000000726566;
            v110 = sub_257ED06A0();
            v131 = [v130 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            if (v131)
            {
              sub_257ED0160();
              swift_unknownObjectRelease();
            }

            else
            {
              v291 = 0u;
              v292 = 0u;
            }

            aBlock = v291;
            v294 = v292;
            sub_257BE401C(&aBlock, &v289, &unk_27F8F62F0, &unk_257ED9D30);
            if (!v290)
            {
              __break(1u);
LABEL_104:
              __break(1u);
              return;
            }

            sub_257BEBE08(&v289, &v291);
            type metadata accessor for CVBuffer(0);
            swift_dynamicCast();
            v132 = v297[0];
            sub_257D20560(v297[0], v1, v91);

            if ((*v280)(v91, 1, v92) == 1)
            {
              sub_257BE4084(&aBlock, &unk_27F8F62F0, &unk_257ED9D30);

              sub_257BE4084(v91, &qword_27F8F5F30, &qword_257EDA9E0);
            }

            else
            {
              v110 = *v279;
              v133 = v282;
              (*v279)(v282, v91, v92);
              (*v275)(v283, v133, v92);
              v134 = v288;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v134 = sub_257BFDA50(0, v134[2] + 1, 1, v134);
              }

              v288 = v134;
              v136 = v134[2];
              v135 = v134[3];
              if (v136 >= v135 >> 1)
              {
                v288 = sub_257BFDA50((v135 > 1), v136 + 1, 1, v288);
              }

              v137 = v278;
              v138 = v277;
              (*(v278 + 8))(v282, v277);
              sub_257BE4084(&aBlock, &unk_27F8F62F0, &unk_257ED9D30);
              v139 = v288;
              v288[2] = v136 + 1;
              v140 = v139 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v136;
              v92 = v138;
              (v110)(v140, v283, v138);
            }

            v66 = v281;
          }

          else
          {
          }

          ++v127;
          v126 = v12;
          v1 = v286;
          if (v18 == v12)
          {

            goto LABEL_34;
          }
        }
      }
    }

    v288 = MEMORY[0x277D84F90];
  }

LABEL_34:
  v141 = v92;
  sub_257ECCC70();
  v142 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v143 = sub_257ECF4C0();
  [v142 setDateFormat_];

  v144 = sub_257ECCBD0();
  v280 = v142;
  v145 = [v142 stringFromDate_];

  v146 = sub_257ECF500();
  v287 = v147;

  v148 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastScreenRecordingURL;
  swift_beginAccess();
  v149 = v272;
  sub_257BE401C(v1 + v148, v272, &qword_27F8F5F30, &qword_257EDA9E0);
  v150 = v1;
  v152 = (v278 + 48);
  v151 = *(v278 + 48);
  v153 = v141;
  LODWORD(v141) = v151(v149, 1, v141);
  sub_257BE4084(v149, &qword_27F8F5F30, &qword_257EDA9E0);
  v279 = v152;
  v276 = v151;
  if (v141 == 1)
  {
    v154 = v146;
    v155 = v287;
  }

  else
  {
    v156 = v268;
    sub_257BE401C(v150 + v148, v268, &qword_27F8F5F30, &qword_257EDA9E0);
    if (v151(v156, 1, v153) == 1)
    {
      goto LABEL_104;
    }

    v154 = v146;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v288 = sub_257BFDA50(0, v288[2] + 1, 1, v288);
    }

    v155 = v287;
    v158 = v288[2];
    v157 = v288[3];
    if (v158 >= v157 >> 1)
    {
      v288 = sub_257BFDA50((v157 > 1), v158 + 1, 1, v288);
    }

    v159 = v288;
    v288[2] = v158 + 1;
    (*(v278 + 32))(v159 + ((*(v278 + 80) + 32) & ~*(v278 + 80)) + *(v278 + 72) * v158, v156, v277);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v160 = aBlock;
  v161 = "[Detection] - Recording";
  if (aBlock)
  {
    v161 = "[Point and Speak] - Recording";
  }

  v162 = v161 - 32;
  v163 = (v161 - 32) | 0x8000000000000000;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_257ED02D0();

  strcpy(&aBlock, "Capture taken ");
  HIBYTE(aBlock) = -18;
  MEMORY[0x259C72150](v154, v155);

  v164 = *(&aBlock + 1);
  if ((v162 & 0x2F00000000000000) == 0x2000000000000000)
  {

    v165 = sub_257ECF4C0();
    v166 = sub_257ECF4C0();
    v167 = [objc_opt_self() alertControllerWithTitle:v165 message:v166 preferredStyle:1];

    v168 = sub_257ECF4C0();
    v169 = [objc_opt_self() actionWithTitle:v168 style:0 handler:0];

    [v167 addAction_];
    v170 = [objc_opt_self() sharedApplication];
    v171 = sub_257CA7C64();

    v172 = v273;
    if (v171 && (v173 = [v171 rootViewController], v171, v173))
    {
      [v173 presentViewController:v167 animated:1 completion:0];
    }

    else
    {
    }

    (*(v270 + 8))(v172, v271);
  }

  else
  {
    v287 = aBlock;
    v174 = 7;
    if (v160)
    {
      v174 = 13;
    }

    v286 = (v174 - 0x2FFFFFFFFFFFFFF0);
    *&v289 = 0xD000000000000013;
    *(&v289 + 1) = 0x8000000257F003E0;
    strcpy(&aBlock, "ComponentID=");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v297[0] = 1356406;
    v175 = sub_257ED0600();
    MEMORY[0x259C72150](v175);

    MEMORY[0x259C72150](38, 0xE100000000000000);
    MEMORY[0x259C72150](aBlock, *(&aBlock + 1));

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_257ED02D0();

    strcpy(&aBlock, "ComponentName=");
    HIBYTE(aBlock) = -18;
    v176 = v260;
    sub_257ECC780();
    sub_257ECC7B0();
    strcpy(v297, "Magnifier");
    WORD1(v297[1]) = 0;
    HIDWORD(v297[1]) = -385875968;
    v177 = sub_257BDAB08();
    v275 = v163;
    v274 = v164;
    v178 = sub_257ED0130();
    if (v179)
    {
      v180 = v178;
    }

    else
    {
      v180 = 0;
    }

    if (v179)
    {
      v181 = v179;
    }

    else
    {
      v181 = 0xE000000000000000;
    }

    v183 = v285 + 8;
    v182 = *(v285 + 1);
    v184 = v176;
    v185 = v284;
    v182(v184, v284);
    MEMORY[0x259C72150](v180, v181);

    MEMORY[0x259C72150](38, 0xE100000000000000);
    MEMORY[0x259C72150](aBlock, *(&aBlock + 1));

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    v186 = 0xE000000000000000;
    sub_257ED02D0();

    *&aBlock = 0xD000000000000011;
    *(&aBlock + 1) = 0x8000000257F00420;
    v187 = v261;
    sub_257ECC780();
    sub_257ECC7B0();
    v297[0] = 0xD000000000000010;
    v297[1] = 0x8000000257F00400;
    v188 = sub_257ED0130();
    if (v189)
    {
      v190 = v188;
    }

    else
    {
      v190 = 0;
    }

    if (v189)
    {
      v186 = v189;
    }

    v182(v187, v185);
    MEMORY[0x259C72150](v190, v186);

    MEMORY[0x259C72150](38, 0xE100000000000000);
    MEMORY[0x259C72150](aBlock, *(&aBlock + 1));

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    v191 = 0xE000000000000000;
    sub_257ED02D0();

    *&aBlock = 0x6966697373616C43;
    *(&aBlock + 1) = 0xEF3D6E6F69746163;
    v192 = v262;
    sub_257ECC780();
    sub_257ECC7B0();
    v297[0] = 1802723668;
    v297[1] = 0xE400000000000000;
    v193 = sub_257ED0130();
    if (v194)
    {
      v195 = v193;
    }

    else
    {
      v195 = 0;
    }

    if (v194)
    {
      v191 = v194;
    }

    v182(v192, v185);
    MEMORY[0x259C72150](v195, v191);

    MEMORY[0x259C72150](38, 0xE100000000000000);
    MEMORY[0x259C72150](aBlock, *(&aBlock + 1));

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    v196 = 0xE000000000000000;
    sub_257ED02D0();

    *&aBlock = 0xD000000000000010;
    *(&aBlock + 1) = 0x8000000257F00440;
    v197 = v263;
    sub_257ECC780();
    sub_257ECC7B0();
    strcpy(v297, "Not Applicable");
    HIBYTE(v297[1]) = -18;
    v198 = sub_257ED0130();
    if (v199)
    {
      v200 = v198;
    }

    else
    {
      v200 = 0;
    }

    if (v199)
    {
      v196 = v199;
    }

    v182(v197, v185);
    MEMORY[0x259C72150](v200, v196);

    MEMORY[0x259C72150](38, 0xE100000000000000);
    MEMORY[0x259C72150](aBlock, *(&aBlock + 1));

    *&aBlock = 0x3D656C746954;
    *(&aBlock + 1) = 0xE600000000000000;
    v201 = v264;
    sub_257ECC780();
    sub_257ECC7B0();
    v297[0] = v286;
    v297[1] = v275;
    v202 = sub_257ED0130();
    if (v203)
    {
      v204 = v202;
    }

    else
    {
      v204 = 0;
    }

    if (v203)
    {
      v205 = v203;
    }

    else
    {
      v205 = 0xE000000000000000;
    }

    v182(v201, v185);
    MEMORY[0x259C72150](v204, v205);

    MEMORY[0x259C72150](38, 0xE100000000000000);
    MEMORY[0x259C72150](aBlock, *(&aBlock + 1));

    v206 = 0xE000000000000000;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_257ED02D0();

    strcpy(&aBlock, "Description=");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v207 = v265;
    sub_257ECC780();
    sub_257ECC7B0();
    v297[0] = v287;
    v297[1] = v274;
    v208 = sub_257ED0130();
    if (v209)
    {
      v210 = v208;
    }

    else
    {
      v210 = 0;
    }

    if (v209)
    {
      v206 = v209;
    }

    v182(v207, v185);
    MEMORY[0x259C72150](v210, v206);

    v211 = v266;
    sub_257ECC780();
    sub_257ECC7B0();
    v212 = 0xE000000000000000;
    v297[0] = 0;
    v297[1] = 0xE000000000000000;
    v213 = v185;
    v214 = v183;
    v215 = v177;
    v216 = sub_257ED0130();
    if (v217)
    {
      v218 = v216;
    }

    else
    {
      v218 = 0;
    }

    if (v217)
    {
      v212 = v217;
    }

    v182(v211, v213);
    MEMORY[0x259C72150](v218, v212);

    MEMORY[0x259C72150](38, 0xE100000000000000);
    MEMORY[0x259C72150](aBlock, *(&aBlock + 1));

    MEMORY[0x259C72150](0xD000000000000012, 0x8000000257F00460);
    v219 = v288;
    if (v288[2])
    {
      MEMORY[0x259C72150](0x656D686361747441, 0xEC0000003D73746ELL);
      v220 = v219[2];
      if (v220)
      {
        v286 = *(v278 + 16);
        v221 = v219 + ((*(v278 + 80) + 32) & ~*(v278 + 80));
        v283 = *(v278 + 72);
        v287 = v278 + 16;
        v222 = (v278 + 8);
        v282 = v182;
        v223 = v277;
        v285 = v214;
        v281 = v215;
        v224 = v250;
        v225 = v249;
        do
        {
          v286(v225, v221, v223);
          *&aBlock = 0;
          *(&aBlock + 1) = 0xE000000000000000;
          v226 = sub_257ECCB50();
          v228 = v227;
          (*v222)(v225, v223);
          sub_257ECC780();
          sub_257ECC7B0();
          v297[0] = v226;
          v297[1] = v228;
          v229 = sub_257ED0130();
          v231 = v230;

          if (v231)
          {
            v232 = v229;
          }

          else
          {
            v232 = 0;
          }

          if (!v231)
          {
            v231 = 0xE000000000000000;
          }

          (v282)(v224, v284);
          MEMORY[0x259C72150](v232, v231);

          MEMORY[0x259C72150](44, 0xE100000000000000);
          MEMORY[0x259C72150](aBlock, *(&aBlock + 1));

          v221 = &v283[v221];
          --v220;
        }

        while (v220);
      }
    }

    sub_257D2168C(v233);

    v234 = v267;
    sub_257ECCB60();

    v235 = v277;
    if ((v276)(v234, 1, v277) == 1)
    {
      sub_257BE4084(v234, &qword_27F8F5F30, &qword_257EDA9E0);
    }

    else
    {
      v236 = v278;
      v237 = *(v278 + 32);
      v238 = v253;
      v237(v253, v234, v235);
      sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
      v288 = sub_257ECFD30();
      v239 = v252;
      (*(v236 + 16))(v252, v238, v235);
      v240 = (*(v236 + 80) + 16) & ~*(v236 + 80);
      v241 = (v251 + v240 + 7) & 0xFFFFFFFFFFFFFFF8;
      v242 = swift_allocObject();
      v237((v242 + v240), v239, v235);
      v243 = (v242 + v241);
      *v243 = 0;
      v243[1] = 0;
      v295 = sub_257D223A8;
      v296 = v242;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v294 = sub_257D231C0;
      *(&v294 + 1) = &block_descriptor_54;
      v244 = _Block_copy(&aBlock);

      v245 = v254;
      sub_257ECF150();
      *&aBlock = MEMORY[0x277D84F90];
      sub_257D1B5A4(&qword_281544090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
      sub_257C31C28(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0);
      v246 = v256;
      v247 = v259;
      sub_257ED0180();
      v248 = v288;
      MEMORY[0x259C72880](0, v245, v246, v244);

      _Block_release(v244);

      (*(v258 + 8))(v246, v247);
      (*(v255 + 8))(v245, v257);
      (*(v236 + 8))(v238, v235);
    }

    (*(v270 + 8))(v273, v271);
  }
}

uint64_t sub_257D20560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82[1] = *MEMORY[0x277D85DE8];
  v6 = sub_257ECCB70();
  v81 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v13 - 8, v14, v15, v16, v17);
  v79 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v25 = &v73 - v24;
  MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
  v32 = &v73 - v31;
  MEMORY[0x28223BE20](v33, v34, v35, v36, v37);
  v39 = &v73 - v38;
  v40 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  v41 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCIImage_];

  v42 = UIImageJPEGRepresentation(v41, 1.0);
  if (v42 || (v42 = UIImagePNGRepresentation(v41)) != 0)
  {
    v80 = v6;
    v43 = a2;
    v77 = v12;
    v78 = v39;
    v44 = a3;
    v45 = v42;
    v46 = sub_257ECCBA0();
    v48 = v47;

    v49 = [objc_opt_self() defaultManager];
    v82[0] = 0;
    v50 = [v49 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:0 error:v82];

    v51 = v82[0];
    if (v50)
    {
      v52 = v50;
      v73 = v46;
      v74 = v48;
      v76 = v44;
      v53 = objc_allocWithZone(MEMORY[0x277CCA968]);
      v54 = v51;
      v55 = [v53 init];
      v56 = sub_257ECF4C0();
      [v55 setDateFormat_];

      v57 = [v55 stringFromDate_];
      if (!v57)
      {
        sub_257ECF500();
        v57 = sub_257ECF4C0();
      }

      v58 = [v50 URLByAppendingPathComponent_];

      v60 = v78;
      v59 = v79;
      v75 = v41;
      if (v58)
      {
        sub_257ECCB20();

        v61 = 0;
      }

      else
      {
        v61 = 1;
      }

      v65 = v80;
      v66 = *(v81 + 56);
      v66(v25, v61, 1, v80);
      sub_257D22FD0(v25, v32);
      v67 = *(v81 + 48);
      if (v67(v32, 1, v65) == 1)
      {
        sub_257BE4084(v32, &qword_27F8F5F30, &qword_257EDA9E0);
        v68 = 1;
      }

      else
      {
        sub_257ECCB10();
        (*(v81 + 8))(v32, v65);
        v68 = 0;
      }

      v66(v60, v68, 1, v65);
      sub_257BE401C(v60, v59, &qword_27F8F5F30, &qword_257EDA9E0);
      if (v67(v59, 1, v65) == 1)
      {
        sub_257BE4084(v60, &qword_27F8F5F30, &qword_257EDA9E0);

        sub_257BF2550(v73, v74);
        sub_257BE4084(v59, &qword_27F8F5F30, &qword_257EDA9E0);
        return (v66)(v76, 1, 1, v65);
      }

      else
      {
        v69 = v77;
        (*(v81 + 32))(v77, v59, v65);
        v71 = v73;
        v70 = v74;
        sub_257ECCBB0();
        (*(v81 + 8))(v69, v65);

        sub_257BF2550(v71, v70);
        return sub_257D22FD0(v60, v76);
      }
    }

    else
    {
      v62 = v82[0];
      v63 = sub_257ECC9F0();

      swift_willThrow();
      sub_257BF2550(v46, v48);

      return (*(v81 + 56))(v44, 1, 1, v80);
    }
  }

  else
  {

    v72 = *(v81 + 56);

    return v72(a3, 1, 1, v6);
  }
}

Swift::Void __swiftcall MAGARService.restartReplay()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v1 - 8, v2, v3, v4, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = &v46 - v13;
  v15 = sub_257ECCB70();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17, v18, v19, v20);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v29 = &v46 - v28;
  v30 = [objc_allocWithZone(MEMORY[0x277CE53B0]) init];
  [v30 setAllowCameraInMultipleForegroundAppLayout_];
  v31 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastARFrameTimestamp;
  swift_beginAccess();
  *(v0 + v31) = 0;
  sub_257BD2C2C(0, &qword_27F8F8060, 0x277CE53B0);
  if ([swift_getObjCClassFromMetadata() supportsFrameSemantics_])
  {
    [v30 setFrameSemantics_];
    [v30 setFrameDebugOptions_];
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v32 = *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_selectedDetectionReplayFile);
  v33 = OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url;
  swift_beginAccess();
  sub_257BE401C(v32 + v33, v14, &qword_27F8F5F30, &qword_257EDA9E0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    sub_257BE4084(v14, &qword_27F8F5F30, &qword_257EDA9E0);
  }

  else
  {
    v46 = v7;
    v47 = v0;
    (*(v16 + 32))(v29, v14, v15);
    v34 = *(v16 + 16);
    v34(v22, v29, v15);
    v35 = objc_allocWithZone(MEMORY[0x277CE5360]);
    sub_257ECC3F0();
    v36 = sub_257D22438(v30, v22, 0);
    if (v36)
    {
      v37 = v36;
      v38 = v47;
      [v36 setDelegate_];
      v39 = *(v38 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arReplayConfiguration);
      *(v38 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arReplayConfiguration) = v37;
      v40 = v37;

      v41 = v46;
      v34(v46, v29, v15);
      (*(v16 + 56))(v41, 0, 1, v15);
      v42 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastRecordingURL;
      swift_beginAccess();
      sub_257CB4B80(v41, v38 + v42);
      swift_endAccess();
      v43 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
      swift_beginAccess();
      [*(v38 + v43) pause];
      v44 = *(v38 + v43);
      if (v44)
      {
        [v44 runWithConfiguration:v40 options:1];
        v45 = v30;
      }

      else
      {
        v45 = v40;
        v40 = v30;
      }

      (*(v16 + 8))(v29, v15);
    }

    else
    {
      (*(v16 + 8))(v29, v15);
    }
  }
}

double MAGARService.replayConfigurationDidFinishReplaying(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  MEMORY[0x28223BE20](v1 - 8, v2, v3, v4, v5);
  v7 = &v12 - v6;
  swift_beginAccess();
  if (byte_27F8F87B0 == 1)
  {
    byte_27F8F87B0 = 0;
  }

  else
  {
    v9 = sub_257ECF930();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v0;
    v11 = v0;
    sub_257E81524(0, 0, v7, &unk_257EE3B88, v10);
  }

  return result;
}

uint64_t sub_257D21288()
{
  *(v0 + 16) = xmmword_257EDE770;
  *(v0 + 32) = 5;
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_257D1B6C4;

  return MAGAREventHandler.send(_:)(v0 + 16);
}

void sub_257D21484()
{
  v1 = [objc_opt_self() sharedRecorder];
  v3[4] = sub_257D1E2FC;
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_257D231E8;
  v3[3] = &block_descriptor_109;
  v2 = _Block_copy(v3);
  [v1 startRecordingWithHandler_];
  _Block_release(v2);

  *(v0 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arIsRecording) = 1;
}

uint64_t sub_257D21588(char *a1, uint64_t *a2)
{
  sub_257D71A44(*a1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257D21618(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257D2168C(uint64_t a1)
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
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_257ECF600();

  return MEMORY[0x2821FBE70](a1);
}

uint64_t sub_257D216FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257C167C4;

  return sub_257D1C570(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_257D217C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257C167C4;

  return sub_257D1C8E0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_257D2188C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257C167C4;

  return sub_257D1CB34(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_257D21954(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257C167C4;

  return sub_257D1CEF8(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_257D21A6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257C167C4;

  return sub_257D1D1FC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_257D21B34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257D1D348(a1, v4, v5, v6);
}

uint64_t sub_257D21BE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257D1D8BC(a1, v4, v5, v6);
}

id sub_257D21CB8(uint64_t a1, char a2, int a3)
{
  v7 = a1;
  v8 = [objc_allocWithZone(MEMORY[0x277CE53B0]) init];
  sub_257BD2C2C(0, &qword_27F8F8060, 0x277CE53B0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [ObjCClassFromMetadata supportedVideoFormats];
  sub_257BD2C2C(0, &qword_27F8F8168, 0x277CE5398);
  v11 = sub_257ECF810();

  if (v11 >> 62)
  {
    v12 = sub_257ED0210();
    LODWORD(v43) = v7;
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_17:

    goto LABEL_18;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  LODWORD(v43) = v7;
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v12 < 1)
  {
    __break(1u);
LABEL_42:
    v33 = swift_once();
    goto LABEL_33;
  }

  HIDWORD(v43) = a3;
  v44 = a2;
  v13 = 0;
  v14 = 0;
  v15 = 8294401.0;
  v16 = 30;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x259C72E20](v14, v11);
    }

    else
    {
      v17 = *(v11 + 8 * v14 + 32);
    }

    v18 = v17;
    [v17 imageResolution];
    if (v19 * v20 < v15 && [v18 framesPerSecond] == v16)
    {

      v21 = v18;
      [v21 imageResolution];
      v15 = v22 * v23;
      v16 = [v21 framesPerSecond];
      v13 = v18;
    }

    ++v14;
  }

  while (v12 != v14);

  if (v13)
  {
    v12 = v13;
    [v8 setVideoFormat_];
    v24 = [v12 device];
    LOBYTE(v45[0]) = 0;
    sub_257D15BB4();
    [v24 setMaxAvailableVideoZoomFactorOverride_];
  }

  else
  {
    v12 = 0;
  }

  a2 = v44;
  LOBYTE(a3) = BYTE4(v43);
LABEL_18:
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v26 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v4 = &selRef_imageByApplyingSymbolConfiguration_;
  if (v45[0] & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , LOBYTE(v45[0]) == 1) && (v45[3] = &type metadata for MFFeatureFlags, v45[4] = sub_257C73100(), LOBYTE(v45[0]) = 0, v27 = sub_257ECCF60(), __swift_destroy_boxed_opaque_existential_0(v45), (v27) || (v43)
  {
    [v8 setPlaneDetection_];
    if ([ObjCClassFromMetadata supportsFrameSemantics_])
    {
      v28 = v8;
      [v28 setFrameSemantics_];
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((v45[0] & 1) != 0 || (a3) && [objc_opt_self() supportsSceneReconstruction_])
  {
    [v8 setSceneReconstruction_];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v45[0])
  {
    goto LABEL_35;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (LOBYTE(v45[0]) != 1)
  {
    goto LABEL_34;
  }

  v3 = ObjCClassFromMetadata;
  ObjCClassFromMetadata = v8;
  v29 = v26 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
  swift_beginAccess();
  v30 = *(v29 + 8);
  v31 = *(v29 + 16);
  v45[6] = *v29;
  v45[7] = v30;
  v46 = v31;
  v32 = qword_2815447E0;

  if (v32 != -1)
  {
    goto LABEL_42;
  }

LABEL_33:
  MEMORY[0x28223BE20](v33, v34, v35, v36, v37);
  sub_257ECFD50();

  v8 = ObjCClassFromMetadata;
  ObjCClassFromMetadata = v3;
  if ((v47 & 1) == 0)
  {
LABEL_34:
    if ((a2 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

LABEL_35:
  if ([ObjCClassFromMetadata v4[237]])
  {
    v38 = v8;
    v39 = [v38 frameSemantics];
    if ((~v39 & 3) != 0)
    {
      v40 = v39 | 3;
    }

    else
    {
      v40 = v39;
    }

    [v38 setFrameSemantics_];
  }

LABEL_40:
  v41 = v8;
  [v41 setAllowCameraInMultipleForegroundAppLayout_];

  return v41;
}

void sub_257D223A8()
{
  v1 = *(sub_257ECCB70() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  sub_257EB6080(v0 + v2, v4, v5);
}

id sub_257D22438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = sub_257ECCAE0();
  v17[0] = 0;
  v9 = [v4 initWithBaseConfiguration:a1 fileURL:v8 replayMode:a3 outError:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_257ECCB70();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a2, v11);
  }

  else
  {
    v14 = v17[0];
    sub_257ECC9F0();

    swift_willThrow();
    v15 = sub_257ECCB70();
    (*(*(v15 - 8) + 8))(a2, v15);
  }

  return v9;
}

void sub_257D22594(uint64_t a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  sub_257BD2C2C(0, &qword_27F8F8060, 0x277CE53B0);
  v10 = [swift_getObjCClassFromMetadata() configurableCaptureDeviceForPrimaryCamera];
  if (v10)
  {
    v11 = v10;
    v26[0] = 0;
    if ([v10 lockForConfiguration_])
    {
      v12 = v26[0];
      [v11 setFocusMode_];
      [v11 unlockForConfiguration];
    }

    else
    {
      v13 = v26[0];
      v14 = sub_257ECC9F0();

      swift_willThrow();
      sub_257ECD440();
      v15 = v14;
      v16 = sub_257ECDA20();
      v17 = sub_257ECFBD0();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v25 = v3;
        v19 = v18;
        v20 = swift_slowAlloc();
        v26[0] = v20;
        *v19 = 136315138;
        swift_getErrorValue();
        v21 = sub_257ED0720();
        v23 = sub_257BF1FC8(v21, v22, v26);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_257BAC000, v16, v17, "Cannot change ARKit focus mode: %s", v19, 0xCu);
        v24 = __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x259C74820](v20, -1, -1, v24);
        MEMORY[0x259C74820](v19, -1, -1);

        (*(v25 + 8))(v9, v2);
      }

      else
      {

        (*(v3 + 8))(v9, v2);
      }
    }
  }
}

uint64_t sub_257D22870(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257D21268(a1, v4, v5, v6);
}

id keypath_get_59Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

void sub_257D22990(uint64_t a1)
{
  sub_257D22EF4(319);
  if (v1 <= 0x3F)
  {
    sub_257C6A75C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of MAGARService.session(_:didUpdate:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x210))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x218))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x228))();
}

void sub_257D22EF4(uint64_t a1)
{
  if (!qword_281545C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F5F30, &qword_257EDA9E0);
    v1 = sub_257ED00C0();
    if (!v2)
    {
      atomic_store(v1, &qword_281545C40);
    }
  }
}

uint64_t sub_257D22FD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257D23040(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257BE3DE0;

  return sub_257D1C164(a1, v4, v5, v6);
}

uint64_t sub_257D230F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257C167C4;

  return sub_257D1B5EC(a1, v4, v5, v6);
}

void sub_257D231EC()
{
  if (AXDeviceSupportsBackTap())
  {
    v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_backTapEventProcessor;
    v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_backTapEventProcessor);
    if (v2)
    {
      [v2 setHIDEventFilterMask_];
      v3 = *(v0 + v1);
      if (v3)
      {
        v4 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v10[4] = sub_257D2382C;
        v10[5] = v4;
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 1107296256;
        v10[2] = sub_257D23834;
        v10[3] = &block_descriptor_29;
        v5 = _Block_copy(v10);
        v6 = v3;

        [v6 setHIDEventHandler_];
        _Block_release(v5);

        v7 = *(v0 + v1);
        if (v7)
        {
          v8 = v7;
          v9 = sub_257ECF4C0();
          [v8 beginHandlingHIDEventsForReason_];
        }
      }
    }
  }
}

uint64_t sub_257D2335C(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v48 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v16 = qword_281548348;
  v17 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__backTapEnabled;
  swift_beginAccess();
  v18 = *(v17 + 8);
  v19 = *(v17 + 16);
  v50[0] = *v17;
  v50[1] = v18;
  v51 = v19;
  v20 = qword_2815447E0;

  if (v20 != -1)
  {
    v21 = swift_once();
  }

  MEMORY[0x28223BE20](v21, v22, v23, v24, v25);
  *(&v45 - 2) = v50;
  sub_257ECFD50();

  result = 0;
  if (v52 == 1)
  {
    if (a1)
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v27 = *(result + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
        v28 = result;
        v29 = v27;
        v30 = a1;

        if (v27)
        {
          v31 = [v29 accessibilityElements];

          if (v31)
          {
            v32 = sub_257ECF810();

            v33 = [v30 accessibilityData];
            if (v33)
            {
              v34 = v33;
              if ([v33 page] == 1 && objc_msgSend(v34, sel_usage) == 1 && *(v32 + 16))
              {
                v35 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
                v36 = *(v32 + 16);
                if (v36)
                {
                  v46 = v30;
                  v47 = v34;
                  v45 = v32;
                  v37 = v32 + 32;
                  do
                  {
                    sub_257BE41F4(v37, v50);
                    sub_257D238A8();
                    swift_dynamicCast();
                    v38 = v49;
                    v39 = [v49 accessibilityAttributedLabel];
                    if (v39)
                    {
                      v40 = v39;
                      [v35 appendAttributedString_];
                    }

                    v37 += 32;
                    --v36;
                  }

                  while (v36);

                  v30 = v46;
                  v34 = v47;
                }

                else
                {
                }

                swift_beginAccess();
                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  v42 = Strong;
                  sub_257ECC3F0();

                  *v9 = v35;
                  swift_storeEnumTagMultiPayload();
                  v43 = v35;
                  v44 = v48;
                  sub_257ECCCE0();
                  sub_257C15EC0(v9, v44 + v10[5]);
                  *(v44 + v10[6]) = 1;
                  *(v44 + v10[7]) = 0;
                  sub_257ECC3F0();
                  sub_257C15F24(v9, type metadata accessor for MAGOutputEvent.EventType);
                  *(v44 + v10[8]) = v16;
                  sub_257CBBC80(v44);

                  sub_257C15F24(v44, type metadata accessor for MAGOutputEvent);
                }

                else
                {
                }

                return 1;
              }
            }
          }
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_257D23834(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_257ECC3F0();
  v4 = a2;
  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

unint64_t sub_257D238A8()
{
  result = qword_27F8F82A0;
  if (!qword_27F8F82A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F82A0);
  }

  return result;
}

uint64_t sub_257D238F4(unsigned __int8 a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();

  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t sub_257D23B04(unsigned __int8 a1)
{
  if (a1 - 2 < 2)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_257ECF500();
  return v7;
}

uint64_t sub_257D23C28(unsigned __int8 a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

void sub_257D23D6C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v55 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0, &unk_257ED8220);
  v18 = *(v17 - 8);
  *&v23 = MEMORY[0x28223BE20](v17, v19, v20, v21, v22).n128_u64[0];
  v25 = &v51 - v24;
  v62.receiver = v1;
  v62.super_class = ObjectType;
  objc_msgSendSuper2(&v62, sel_viewDidLoad, v23);
  v26 = *&v1[OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_tableView];
  [v26 setDataSource_];
  [v26 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560, 0x277D75B48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = sub_257ECF4C0();
  [v26 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v28];

  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  v29 = [v1 view];
  if (!v29)
  {
    __break(1u);
    goto LABEL_9;
  }

  v30 = v29;
  v54 = v10;
  [v29 addSubview_];

  v31 = [v1 view];
  if (!v31)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v32 = v31;
  v51 = v25;
  v53 = v17;
  sub_257EB6FD8(v31, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  v33 = *&v1[OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_colorPickerController];
  [v33 setSupportsAlpha_];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v52 = v18;
  v34 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakColor;
  swift_beginAccess();
  v35 = *(v34 + 8);
  v36 = *(v34 + 32);
  v37 = *(v34 + 16);
  v56[0] = *v34;
  v56[1] = v35;
  v57 = v37;
  v58 = v36;
  v38 = qword_2815447E0;

  if (v38 != -1)
  {
    v39 = swift_once();
  }

  MEMORY[0x28223BE20](v39, v40, v41, v42, v43);
  *(&v51 - 2) = v56;
  sub_257ECFD50();

  v44 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v59 green:v60 blue:v61 alpha:1.0];
  [v33 setSelectedColor_];

  [v33 setDelegate_];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  sub_257ECDD30();
  swift_endAccess();
  v45 = [objc_opt_self() mainRunLoop];
  v56[0] = v45;
  v46 = sub_257ED0080();
  (*(*(v46 - 8) + 56))(v9, 1, 1, v46);
  sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
  sub_257BD2C74();
  v47 = v51;
  v48 = v54;
  sub_257ECDDF0();
  sub_257BE4084(v9, &unk_27F8F4DB0, &unk_257ED8210);

  (*(v55 + 8))(v16, v48);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0, &unk_257ED8220, MEMORY[0x277CBCD60]);
  v49 = v53;
  v50 = sub_257ECDE50();

  (*(v52 + 8))(v47, v49);
  *&v1[OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_speechFeedbackSubscription] = v50;
}

void sub_257D24424(uint64_t a1, uint64_t a2)
{
  v2 = sub_257ECCEB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v15[7] == 1)
    {
      [v11 beginUpdates];
      MEMORY[0x259C6F970](1, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570, &unk_257EDA110);
      v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_257ED6D30;
      (*(v3 + 16))(v13 + v12, v9, v2);
      v14 = sub_257ECF7F0();

      [v11 reloadRowsAtIndexPaths:v14 withRowAnimation:100];

      [v11 endUpdates];
      (*(v3 + 8))(v9, v2);
    }

    else
    {
    }
  }
}

void sub_257D246B8(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v3 setTitle_];
}

id sub_257D24874(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v10 = byte_286905758[v6 + 32];
    if (v10 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v24 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF29A4(0, *(v7 + 16) + 1, 1);
        v7 = v24;
      }

      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_257BF29A4((v8 > 1), v9 + 1, 1);
        v7 = v24;
      }

      *(v7 + 16) = v9 + 1;
      *(v7 + v9 + 32) = v10;
    }

    ++v6;
  }

  while (v6 != 4);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_availablePointSpeakFeedbacks] = v7;
  v11 = OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_tableView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 systemYellowColor];
  [v14 setTintColor_];

  [v14 setClipsToBounds_];
  *&v4[v11] = v14;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_speechFeedbackSubscription] = 0;
  v16 = OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_colorPickerController;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x277D75360]) init];
  if (a2)
  {
    v17 = sub_257ECF4C0();
  }

  else
  {
    v17 = 0;
  }

  v23.receiver = v4;
  v23.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, v17, a3, a1);

  return v18;
}

id sub_257D24B44(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v8 = byte_286905780[v4 + 32];
    if (v8 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v19 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF29A4(0, *(v5 + 16) + 1, 1);
        v5 = v19;
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_257BF29A4((v6 > 1), v7 + 1, 1);
        v5 = v19;
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + v7 + 32) = v8;
    }

    ++v4;
  }

  while (v4 != 4);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_availablePointSpeakFeedbacks] = v5;
  v9 = OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_tableView;
  v10 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 systemYellowColor];
  [v12 setTintColor_];

  [v12 setClipsToBounds_];
  *&v2[v9] = v12;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_speechFeedbackSubscription] = 0;
  v14 = OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_colorPickerController;
  *&v2[v14] = [objc_allocWithZone(MEMORY[0x277D75360]) init];
  v18.receiver = v2;
  v18.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v18, sel_initWithCoder_, a1);

  if (v15)
  {
  }

  return v15;
}

id sub_257D24EA4(void *a1)
{
  v2 = v1;
  v4 = sub_257ECF4C0();
  v5 = sub_257ECCE30();
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

  v7 = sub_257ECCEA0();
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v60 = [v6 textLabel];
      if (v60)
      {
        v61 = v60;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v63 = [objc_opt_self() bundleForClass_];
        v64 = sub_257ECF4C0();
        v65 = sub_257ECF4C0();
        v66 = [v63 localizedStringForKey:v64 value:0 table:v65];

        if (!v66)
        {
          sub_257ECF500();
          v66 = sub_257ECF4C0();
        }

        [v61 setText_];
      }

      v67 = [v6 textLabel];
      if (v67)
      {
        v68 = v67;
        [v67 setNumberOfLines_];
      }

      v69 = [v6 textLabel];
      if (v69)
      {
        v70 = v69;
        [v69 setLineBreakMode_];
      }

      v47 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      if (qword_281544FE0 == -1)
      {
        goto LABEL_41;
      }

      goto LABEL_89;
    }

    if (v7 != 3)
    {
      return v6;
    }

    if (!sub_257ECCE60())
    {
      v78 = [v6 textLabel];
      if (v78)
      {
        v79 = v78;
        type metadata accessor for MAGUtilities();
        v80 = swift_getObjCClassFromMetadata();
        v81 = [objc_opt_self() bundleForClass_];
        v82 = sub_257ECF4C0();
        v83 = sub_257ECF4C0();
        v84 = [v81 localizedStringForKey:v82 value:0 table:v83];

        if (!v84)
        {
          sub_257ECF500();
          v84 = sub_257ECF4C0();
        }

        [v79 setText_];
      }

      v47 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v85 = qword_2815447E0;

      if (v85 != -1)
      {
        v86 = swift_once();
      }

      MEMORY[0x28223BE20](v86, v87, v88, v89, v90);
      sub_257ECFD50();

      [v47 setOn_];
      v77 = sel_didToggleOutlineSwitch_;
      goto LABEL_53;
    }

    type metadata accessor for MAGUtilities();
    v10 = swift_getObjCClassFromMetadata();
    v154 = objc_opt_self();
    v155 = v10;
    v11 = [v154 bundleForClass_];
    v12 = sub_257ECF4C0();
    v13 = sub_257ECF4C0();
    v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

    v15 = v14;
    v16 = v14;
    if (!v14)
    {
      sub_257ECF500();
      v16 = sub_257ECF4C0();

      sub_257ECF500();
      v15 = sub_257ECF4C0();
    }

    v17 = v14;
    v18 = [v6 textLabel];
    if (v18)
    {
      v19 = v18;
      [v18 setText_];
    }

    v20 = [v6 textLabel];
    if (v20)
    {
      v21 = v20;
      [v20 setNumberOfLines_];
    }

    v22 = [v6 textLabel];
    if (v22)
    {
      v23 = v22;
      [v22 setLineBreakMode_];
    }

    [v6 setAccessoryType_];
    [v6 setShowsReorderControl_];
    v24 = objc_opt_self();
    v25 = *MEMORY[0x277D76918];
    v26 = [v24 preferredFontForTextStyle_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F82F0, &qword_257EE4000);
    inited = swift_initStackObject();
    v28 = MEMORY[0x277D740A8];
    *(inited + 16) = xmmword_257ED6D30;
    v29 = *v28;
    *(inited + 32) = v29;
    *(inited + 40) = v26;
    v30 = v29;
    v153 = v26;
    v31 = sub_257BE8D30(inited);
    swift_setDeallocating();
    sub_257BE4084(inited + 32, &unk_27F8F58D0, &qword_257EDAE80);
    sub_257DF2814(v31);

    _s3__C3KeyVMa_0(0);
    sub_257BFB0F4(&qword_27F8F8300, _s3__C3KeyVMa_0, &unk_257ED9A34);
    v32 = sub_257ECF3C0();

    [v15 sizeWithAttributes_];

    v33 = [v24 preferredFontForTextStyle_];
    [v33 lineHeight];
    v35 = v34;

    v36 = sub_257ECF4C0();
    v37 = objc_opt_self();
    v38 = [v37 systemImageNamed_];

    if (v38)
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v39 = qword_2815447E0;

      if (v39 != -1)
      {
        v40 = swift_once();
      }

      MEMORY[0x28223BE20](v40, v41, v42, v43, v44);
      sub_257ECFD50();

      v45 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v159 green:v160 blue:v161 alpha:1.0];
      v46 = [v38 imageWithTintColor_];
    }

    else
    {
      v46 = 0;
    }

    v101 = sub_257ECF4C0();
    v102 = [v37 systemImageNamed_];

    v103 = 0.0;
    if (v102)
    {
      v104 = [objc_opt_self() systemGrayColor];
      v105 = [v102 imageWithTintColor_];

      v106 = [v24 preferredFontForTextStyle_];
      v107 = [objc_opt_self() configurationWithFont_];

      v108 = [v105 imageWithSymbolConfiguration_];
      if (v108)
      {
        [v108 size];
        v103 = v109;
      }
    }

    else
    {
      v108 = 0;
    }

    v162.width = v35 + v103 + 5.0;
    v162.height = v35;
    UIGraphicsBeginImageContextWithOptions(v162, 0, 0.0);
    v110 = [objc_opt_self() sharedApplication];
    v111 = [v110 userInterfaceLayoutDirection];

    if (!v111)
    {
      if (v46)
      {
        [v46 drawInRect_];
      }

      if (!v108)
      {
        goto LABEL_82;
      }

      v121 = v35 + 5.0;
      v119 = v108;
      [v119 size];
      v117 = (v35 - v122) * 0.5;
      [v119 size];
      v35 = v123;
      [v119 size];
      v125 = v124;
      goto LABEL_81;
    }

    if (v108)
    {
      v112 = v108;
      [v112 size];
      v114 = (v35 - v113) * 0.5;
      [v112 size];
      v116 = v115;
      [v112 size];
      v117 = 0.0;
      [v112 drawInRect_];

      if (v46)
      {
        v119 = v46;
        [v112 size];
        v121 = v120 + 5.0;
LABEL_80:
        v125 = v35;
LABEL_81:
        [v119 drawInRect_];
      }
    }

    else if (v46)
    {
      v119 = v46;
      v117 = 0.0;
      v121 = 5.0;
      goto LABEL_80;
    }

LABEL_82:
    v151 = v108;
    v152 = v46;
    v126 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v127 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    [v6 setAccessoryView_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
    v128 = swift_allocObject();
    *(v128 + 16) = xmmword_257ED9BD0;
    v129 = [v154 bundleForClass_];
    v130 = sub_257ECF4C0();
    v131 = sub_257ECF4C0();
    v132 = [v129 localizedStringForKey:v130 value:0 table:v131];

    v133 = sub_257ECF500();
    v135 = v134;

    v136 = MEMORY[0x277D837D0];
    *(v128 + 56) = MEMORY[0x277D837D0];
    v137 = sub_257BFB13C();
    *(v128 + 64) = v137;
    *(v128 + 32) = v133;
    *(v128 + 40) = v135;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v138 = qword_2815447E0;

    if (v138 != -1)
    {
      v139 = swift_once();
    }

    MEMORY[0x28223BE20](v139, v140, v141, v142, v143);
    sub_257ECFD50();

    v144 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*&v156 green:v157 blue:v158 alpha:1.0];
    v145 = [v144 _accessibilityNameWithLuma];

    v146 = sub_257ECF500();
    v148 = v147;

    *(v128 + 96) = v136;
    *(v128 + 104) = v137;
    *(v128 + 72) = v146;
    *(v128 + 80) = v148;
    sub_257ECF540();
    v149 = sub_257ECF4C0();

    [v6 setAccessibilityLabel_];

    return v6;
  }

  if (!v7)
  {
    v47 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_availablePointSpeakFeedbacks);
    v48 = sub_257ECCE60();
    if ((v48 & 0x8000000000000000) == 0)
    {
      if (v48 >= v47[2])
      {
        __break(1u);
      }

      else
      {
        v47 = *(v47 + v48 + 32);
        v49 = [v6 textLabel];
        if (v49)
        {
          v50 = v49;
          sub_257D238F4(v47);
          v51 = sub_257ECF4C0();

          [v50 setText_];
        }

        v5 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
        if (qword_281544FE0 == -1)
        {
          goto LABEL_29;
        }
      }

      swift_once();
LABEL_29:
      swift_beginAccess();
      v52 = qword_2815447E0;

      if (v52 != -1)
      {
        v53 = swift_once();
      }

      MEMORY[0x28223BE20](v53, v54, v55, v56, v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90, &unk_257EDC2B0);
      sub_257ECFD50();

      v58 = sub_257C592D0(v47, v156);

      [v5 setOn_];
      v59 = v5;
      [v59 setTag_];
      [v59 addTarget:v2 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
      [v6 setAccessoryView_];

      [v6 setAccessoryType_];
      return v6;
    }

    __break(1u);
LABEL_89:
    swift_once();
LABEL_41:
    swift_beginAccess();
    v71 = qword_2815447E0;

    if (v71 != -1)
    {
      v72 = swift_once();
    }

    MEMORY[0x28223BE20](v72, v73, v74, v75, v76);
    sub_257ECFD50();

    [v47 setOn_];
    v77 = sel_didToggleFlashlightSwitch_;
LABEL_53:
    [v47 addTarget:v2 action:v77 forControlEvents:4096];
    [v6 setAccessoryView_];
    [v6 setAccessoryType_];

    return v6;
  }

  if (v7 == 1)
  {
    v8 = sub_257ECCE60();
    if (v8)
    {
      if (v8 != 1)
      {
        return v6;
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    v91 = [v6 textLabel];
    if (v91)
    {
      v92 = v91;
      sub_257CED550(v9);
      v93 = sub_257ECF4C0();

      [v92 setText_];
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v94 = qword_2815447E0;

    if (v94 != -1)
    {
      v95 = swift_once();
    }

    MEMORY[0x28223BE20](v95, v96, v97, v98, v99);
    sub_257ECFD50();

    if ((v9 ^ v156))
    {
      v100 = 0;
    }

    else
    {
      v100 = 3;
    }

    [v6 setAccessoryType_];
    [v6 setAccessoryView_];
  }

  return v6;
}

id sub_257D26690(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void))
{
  sub_257D27C4C(a4, a5);
  if (v5)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_257D267D8(void *a1)
{
  v3 = sub_257ECCDF0();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECCEB0();
  v47 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_257ECF120();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19, v20, v21, v22);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_257ECCE30();
  v50 = [a1 cellForRowAtIndexPath_];

  if (!v50)
  {
    return;
  }

  v26 = sub_257ECCEA0();
  if (v26 <= 1)
  {
    if (v26)
    {
      if (v26 == 1)
      {
        v27 = sub_257ECCE30();
        [a1 deselectRowAtIndexPath:v27 animated:1];

        v28 = sub_257ECCE60();
        if (v28)
        {
          if (v28 != 1)
          {
LABEL_23:
            v38 = (v47 + 8);
            MEMORY[0x259C6F970](byte_2869057C8, 1);
            v39 = sub_257ECCE30();
            v40 = [a1 cellForRowAtIndexPath_];

            if (v40)
            {
              [v40 setAccessoryType_];
            }

            v41 = *v38;
            (*v38)(v16, v10);
            MEMORY[0x259C6F970](byte_2869057C9, 1);
            v42 = sub_257ECCE30();
            v43 = [a1 cellForRowAtIndexPath_];

            if (v43)
            {
              [v43 setAccessoryType_];
            }

            v41(v16, v10);
            [v50 setAccessoryType_];
            [a1 beginUpdates];
            v52 = &unk_2869057D0;
            sub_257BFB0F4(&qword_27F8F58A0, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80, &qword_257EDD430);
            sub_257BD2D4C(&qword_27F8F58B0, &unk_27F8F4D80, &qword_257EDD430, MEMORY[0x277D83970]);
            v44 = v49;
            sub_257ED0180();
            v45 = sub_257ECCDE0();
            (*(v48 + 8))(v9, v44);
            [a1 reloadSections:v45 withRowAnimation:100];

            [a1 endUpdates];
            return;
          }

          v29 = 1;
        }

        else
        {
          v29 = 0;
        }

        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v32 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFingerLocation;
        swift_beginAccess();
        v51 = v29;
        if (qword_2815447E0 != -1)
        {
          swift_once();
        }

        v33 = sub_257ECF110();
        MEMORY[0x28223BE20](v33, v34, v35, v36, v37);
        *(&v46 - 2) = &v51;
        *(&v46 - 1) = v32;
        sub_257ECFD40();
        (*(v18 + 8))(v24, v17);
        swift_endAccess();
        goto LABEL_23;
      }

      goto LABEL_12;
    }

LABEL_13:
    v49 = sub_257ECCE30();
    [a1 deselectRowAtIndexPath:v49 animated:1];

    v31 = v49;
    goto LABEL_14;
  }

  if (v26 == 2)
  {
    goto LABEL_13;
  }

  if (v26 == 3)
  {
    v30 = sub_257ECCE30();
    [a1 deselectRowAtIndexPath:v30 animated:1];

    if (sub_257ECCE60())
    {
      [v1 presentViewController:*&v1[OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_colorPickerController] animated:1 completion:0];
    }
  }

LABEL_12:
  v31 = v50;
LABEL_14:
}

void sub_257D26F08(void *a1)
{
  v3 = v1;
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  *&v11 = MEMORY[0x28223BE20](v5, v7, v8, v9, v10).n128_u64[0];
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 selectedColor];
  v15 = [v14 CGColor];

  v16 = sub_257ECFB30();
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &unk_2869057F8;
  }

  if (qword_281544FE0 == -1)
  {
    v18 = v17[2];
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = v17;
  swift_once();
  v17 = v16;
  v18 = v16[2];
  if (!v18)
  {
    goto LABEL_20;
  }

LABEL_6:
  if (v18 == 1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v18 >= 3)
  {
    v16 = qword_281548348;
    v19 = v17[4];
    v20 = v17[5];
    v21 = v17[6];

    v2 = v16 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakColor;
    swift_beginAccess();
    v72[0] = v19;
    v72[1] = v20;
    v72[2] = v21;
    if (qword_2815447E0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  swift_once();
LABEL_9:
  v22 = sub_257ECF110();
  MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  *(&v63 - 2) = v72;
  *(&v63 - 1) = v2;
  sub_257ECFD40();
  (*(v6 + 8))(v13, v5);
  swift_endAccess();
  v27 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_tableView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570, &unk_257EDA110);
  sub_257ECCEB0();
  *(swift_allocObject() + 16) = xmmword_257ED6D30;
  MEMORY[0x259C6F990](1, 3);
  v28 = sub_257ECF7F0();

  [v27 reloadRowsAtIndexPaths:v28 withRowAnimation:5];

  v29 = swift_beginAccess();
  v30 = v16[16];
  v31 = v16[17];
  v32 = v16[18];
  v63 = v16[15];
  v64 = v30;
  *&v65 = v31;
  *(&v65 + 1) = v32;
  MEMORY[0x28223BE20](v29, v33, v34, v35, v36);
  *(&v63 - 2) = &v63;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257ECFD50();

  v37 = v71;
  if (!v71)
  {
    return;
  }

  v38 = v70;
  v39 = swift_beginAccess();
  v40 = v16[12];
  v41 = v16[13];
  v63 = v16[11];
  v64 = v40;
  *&v65 = v41;
  MEMORY[0x28223BE20](v39, v42, v43, v44, v45);
  *(&v63 - 2) = v46;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  v47 = v67;
  if (!*(*&v67 + 16))
  {

    goto LABEL_17;
  }

  v48 = sub_257C03F6C(v38, v37);
  v50 = v49;

  if ((v50 & 1) == 0)
  {
LABEL_17:

    return;
  }

  v51 = (*(*&v47 + 56) + 296 * v48);
  v53 = v51[27];
  v52 = v51[28];
  v54 = v51[29];

  v56 = *(v2 + 1);
  v57 = *(v2 + 4);
  v58 = *(v2 + 1);
  v63 = *v2;
  v64 = v56;
  v65 = v58;
  v66 = v57;
  MEMORY[0x28223BE20](v55, v59, v60, v61, v62);
  *(&v63 - 2) = &v63;

  sub_257ECFD50();

  if (v53 != v67 || v52 != v68 || v54 != v69)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v63) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
  }
}

unint64_t sub_257D275A8()
{
  result = qword_27F8F82D8;
  if (!qword_27F8F82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F82D8);
  }

  return result;
}

unint64_t sub_257D27640()
{
  result = qword_281544810;
  if (!qword_281544810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544810);
  }

  return result;
}

double sub_257D27694(void *a1)
{
  v2 = [a1 tag];
  if (v2 <= 3)
  {
    v4 = v2;
    if ([a1 isOn])
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v5 = qword_2815447E0;

      if (v5 != -1)
      {
        v6 = swift_once();
      }

      MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90, &unk_257EDC2B0);
      sub_257ECFD50();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9A40, &qword_257EDB180);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED6D30;
      *(inited + 32) = v4;
      sub_257EB110C(inited);
      sub_257D5A210(v25, 1);
    }

    else
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = qword_2815447E0;

      if (v12 != -1)
      {
        v13 = swift_once();
      }

      MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90, &unk_257EDC2B0);
      sub_257ECFD50();

      v18 = *(v25 + 16);
      if (v18)
      {
        v19 = (v25 + 32);
        v20 = MEMORY[0x277D84F90];
        do
        {
          v24 = *v19++;
          v23 = v24;
          if (v24 != v4)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_257BF29A4(0, *(v20 + 16) + 1, 1);
            }

            v22 = *(v20 + 16);
            v21 = *(v20 + 24);
            if (v22 >= v21 >> 1)
            {
              sub_257BF29A4((v21 > 1), v22 + 1, 1);
            }

            *(v20 + 16) = v22 + 1;
            *(v20 + v22 + 32) = v23;
          }

          --v18;
        }

        while (v18);
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
      }

      sub_257D5A210(v20, 1);
    }
  }

  return result;
}

double sub_257D27A74(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v13 = qword_281548348;
  v14 = [a1 isOn];
  v15 = v13 + *a2;
  swift_beginAccess();
  v23 = v14;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v16 = sub_257ECF110();
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  *&v22[-16] = &v23;
  *&v22[-8] = v15;
  sub_257ECFD40();
  (*(v6 + 8))(v12, v5);
  swift_endAccess();
  return result;
}

uint64_t sub_257D27C4C(unint64_t a1, uint64_t (*a2)(unint64_t, void))
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return a2(a1, a2);
  }
}

void *sub_257D27C8C()
{
  if (vabdd_f64(0.0, *(v0 + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_brightness)) <= 0.01)
  {
    v3 = 0;
    v2 = 0;
    v1 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_brightness);
    LOBYTE(v25) = 0;
    v2 = &off_28690CEA0;
    v3 = &type metadata for DisplayFilter;
  }

  v27 = v3;
  v28 = v2;
  v24 = v1;
  if (vabdd_f64(1.0, *(v0 + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_contrast)) <= 0.01)
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_contrast);
    LOBYTE(v30) = 1;
    v5 = &off_28690CEA0;
    v6 = &type metadata for DisplayFilter;
  }

  v32 = v6;
  v33 = v5;
  v29 = v4;
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_colorFilter) == 12)
  {
    v7 = 0;
    v8 = 0;
    memset(v34, 0, sizeof(v34));
  }

  else
  {
    v34[0] = *(v0 + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_colorFilter);
    v8 = &off_28690CD28;
    v7 = &type metadata for ColorFilter;
  }

  v35 = v7;
  v36 = v8;
  sub_257D281E4(&v24, &v21);
  v17 = v21;
  v18 = v22;
  v19 = v23;
  if (*(&v22 + 1))
  {
    sub_257BE40E4(&v17, v20);
    v9 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_257BFCD80(0, v9[2] + 1, 1, v9);
    }

    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_257BFCD80((v10 > 1), v11 + 1, 1, v9);
    }

    v9[2] = v11 + 1;
    sub_257BE40E4(v20, &v9[5 * v11 + 4]);
  }

  else
  {
    sub_257D28254(&v17);
    v9 = MEMORY[0x277D84F90];
  }

  sub_257D281E4(&v29, &v21);
  v17 = v21;
  v18 = v22;
  v19 = v23;
  if (*(&v22 + 1))
  {
    sub_257BE40E4(&v17, v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_257BFCD80(0, v9[2] + 1, 1, v9);
    }

    v13 = v9[2];
    v12 = v9[3];
    if (v13 >= v12 >> 1)
    {
      v9 = sub_257BFCD80((v12 > 1), v13 + 1, 1, v9);
    }

    v9[2] = v13 + 1;
    sub_257BE40E4(v20, &v9[5 * v13 + 4]);
  }

  else
  {
    sub_257D28254(&v17);
  }

  sub_257D281E4(v34, &v21);
  v17 = v21;
  v18 = v22;
  v19 = v23;
  if (*(&v22 + 1))
  {
    sub_257BE40E4(&v17, v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_257BFCD80(0, v9[2] + 1, 1, v9);
    }

    v15 = v9[2];
    v14 = v9[3];
    if (v15 >= v14 >> 1)
    {
      v9 = sub_257BFCD80((v14 > 1), v15 + 1, 1, v9);
    }

    v9[2] = v15 + 1;
    sub_257BE40E4(v20, &v9[5 * v15 + 4]);
  }

  else
  {
    sub_257D28254(&v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F54B8, &unk_257EE4070);
  swift_arrayDestroy();
  return v9;
}

id sub_257D2818C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LensFilteringViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257D281E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F54B8, &unk_257EE4070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257D28254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F54B8, &unk_257EE4070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for MFReaderCustomFontPickerMenu(uint64_t a1)
{
  result = qword_27F8F8320;
  if (!qword_27F8F8320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257D2834C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECE4D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0, &qword_257EDBDA0);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v17 = &v23 - v16;
  v18 = type metadata accessor for MFReaderCustomFontPickerMenu(0);
  sub_257BE401C(v1 + *(v18 + 20), v17, &qword_27F8F5BA0, &qword_257EDBDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_257ECE1D0();
    return (*(*(v19 - 8) + 32))(a1, v17, v19);
  }

  else
  {
    v21 = sub_257ECFBF0();
    v22 = sub_257ECE900();
    sub_257ECD960(v21, &dword_257BAC000, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x277D84F90]);

    sub_257ECE4C0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v10, v3);
  }
}

uint64_t sub_257D28554(uint64_t *a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  sub_257ECF500();
  type metadata accessor for MFReaderTextFormatterModel(0);
  sub_257D2A9C0(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel, &unk_257EE5158);
  sub_257ECE160();
  swift_getKeyPath();
  sub_257ECE170();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F83E8, &unk_257EE4260);
  sub_257D2A80C();
  sub_257D2A860();
  sub_257BDAB08();
  return sub_257ECEF00();
}

uint64_t sub_257D28768()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8400, &qword_257EEA540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8408, qword_257EE4290);
  sub_257BD2D4C(&unk_27F8F8410, &qword_27F8F8400, &qword_257EEA540, MEMORY[0x277D83980]);
  sub_257D2A80C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F4960, &qword_257ED6D48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F67E0, &qword_257EE1E10);
  sub_257BD2D4C(&qword_27F8F6800, &qword_27F8F67E0, &qword_257EE1E10, MEMORY[0x277D84338]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_257ECEF80();
}

uint64_t sub_257D2893C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F67E0, &qword_257EE1E10);
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v10 = &v36 - v9;
  v11 = sub_257ECE540();
  MEMORY[0x28223BE20](v11 - 8, v12, v13, v14, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4960, &qword_257ED6D48);
  v38 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v36 = &v36 - v21;
  v22 = *a1;
  sub_257ECE530();
  sub_257ECE520();
  v37 = v22;
  LOBYTE(v39) = v22;
  sub_257DE50BC();
  sub_257ECE510();

  sub_257ECE520();
  sub_257ECE560();
  v23 = sub_257ECEAD0();
  v25 = v24;
  v39 = v23;
  v40 = v24;
  v27 = v26 & 1;
  v41 = v26 & 1;
  v42 = v28;
  v29 = *MEMORY[0x277CDFA10];
  v30 = sub_257ECE1D0();
  (*(*(v30 - 8) + 104))(v10, v29, v30);
  sub_257D2A9C0(&qword_27F8F67F8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_257ECF450();
  if (result)
  {
    sub_257BD2D4C(&qword_27F8F6800, &qword_27F8F67E0, &qword_257EE1E10, MEMORY[0x277D84338]);
    v32 = v27;
    v33 = v23;
    v34 = v36;
    sub_257ECEBB0();
    sub_257BE4084(v10, &qword_27F8F67E0, &qword_257EE1E10);
    sub_257C0300C(v33, v25, v32);

    (*(v38 + 32))(a2, v34, v16);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F4968, &unk_257ED6D50);
    v35 = (a2 + *(result + 36));
    *v35 = v37;
    v35[1] = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257D28CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8368, &qword_257EE4110);
  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  v9 = v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8380, &qword_257EE4118);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = v38 - v15;
  v17 = sub_257ECE1D0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19, v20, v21, v22);
  v24 = v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257D2834C(v24);
  v25 = sub_257ECE1C0();
  (*(v18 + 8))(v24, v17);
  if (v25)
  {
    v26 = sub_257ECE500();
    v54 = 1;
    sub_257D29180(&v40);
    v65 = v50;
    v66 = v51;
    v67 = v52;
    v61 = v46;
    v62 = v47;
    v63 = v48;
    v64 = v49;
    v57 = v42;
    v58 = v43;
    v59 = v44;
    v60 = v45;
    v55 = v40;
    v56 = v41;
    v68[9] = v49;
    v68[10] = v50;
    v68[11] = v51;
    v68[12] = v52;
    v68[6] = v46;
    v68[7] = v47;
    v68[8] = v48;
    v68[2] = v42;
    v68[3] = v43;
    v68[4] = v44;
    v68[5] = v45;
    v68[0] = v40;
    v68[1] = v41;
    sub_257BE401C(&v55, &v39, &qword_27F8F8390, &qword_257EE4128);
    sub_257BE4084(v68, &qword_27F8F8390, &qword_257EE4128);
    *&v53[151] = v64;
    *&v53[167] = v65;
    *&v53[183] = v66;
    *&v53[199] = v67;
    *&v53[87] = v60;
    *&v53[103] = v61;
    *&v53[119] = v62;
    *&v53[135] = v63;
    *&v53[23] = v56;
    *&v53[39] = v57;
    *&v53[55] = v58;
    *&v53[71] = v59;
    *&v53[7] = v55;
    v27 = *&v53[176];
    *(v16 + 177) = *&v53[160];
    *(v16 + 193) = v27;
    *(v16 + 209) = *&v53[192];
    v28 = *&v53[112];
    *(v16 + 113) = *&v53[96];
    *(v16 + 129) = v28;
    v29 = *&v53[144];
    *(v16 + 145) = *&v53[128];
    *(v16 + 161) = v29;
    v30 = *&v53[48];
    *(v16 + 49) = *&v53[32];
    *(v16 + 65) = v30;
    v31 = *&v53[80];
    *(v16 + 81) = *&v53[64];
    *(v16 + 97) = v31;
    v32 = *&v53[16];
    *(v16 + 17) = *v53;
    v33 = v54;
    *v16 = v26;
    *(v16 + 1) = 0;
    v16[16] = v33;
    *(v16 + 28) = *&v53[207];
    *(v16 + 33) = v32;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8358, &qword_257EE4108);
    v34 = MEMORY[0x277CE1138];
    sub_257BD2D4C(&qword_27F8F8350, &qword_27F8F8358, &qword_257EE4108, MEMORY[0x277CE1138]);
    sub_257BD2D4C(&qword_27F8F8360, &qword_27F8F8368, &qword_257EE4110, v34);
    return sub_257ECE6F0();
  }

  else
  {
    *v9 = sub_257ECE500();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8388, &qword_257EE4120);
    sub_257D29A54(a1, &v9[*(v36 + 44)]);
    sub_257BE401C(v9, v16, &qword_27F8F8368, &qword_257EE4110);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8358, &qword_257EE4108);
    v37 = MEMORY[0x277CE1138];
    sub_257BD2D4C(&qword_27F8F8350, &qword_27F8F8358, &qword_257EE4108, MEMORY[0x277CE1138]);
    sub_257BD2D4C(&qword_27F8F8360, &qword_27F8F8368, &qword_257EE4110, v37);
    sub_257ECE6F0();
    return sub_257BE4084(v9, &qword_27F8F8368, &qword_257EE4110);
  }
}

uint64_t sub_257D29180@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_257ECE5C0();
  sub_257D29420(&v27);
  v19 = *&v28[80];
  v20 = *&v28[96];
  v21 = *&v28[112];
  v15 = *&v28[16];
  v16 = *&v28[32];
  v17 = *&v28[48];
  v18 = *&v28[64];
  v13 = v27;
  v14 = *v28;
  v23[6] = *&v28[80];
  v23[7] = *&v28[96];
  v23[8] = *&v28[112];
  v23[2] = *&v28[16];
  v23[3] = *&v28[32];
  v23[4] = *&v28[48];
  v23[5] = *&v28[64];
  v22 = *&v28[128];
  v24 = *&v28[128];
  v23[0] = v27;
  v23[1] = *v28;
  sub_257BE401C(&v13, &v25, &qword_27F8F8398, &qword_257EE4130);
  sub_257BE4084(v23, &qword_27F8F8398, &qword_257EE4130);
  *&v12[103] = v19;
  *&v12[119] = v20;
  *&v12[135] = v21;
  *&v12[39] = v15;
  *&v12[55] = v16;
  *&v12[71] = v17;
  *&v12[87] = v18;
  *&v12[7] = v13;
  *&v12[151] = v22;
  *&v12[23] = v14;
  v4 = sub_257ECEE10();
  v5 = sub_257ECED60();
  v25 = v3;
  LOBYTE(v26[0]) = 1;
  *(&v26[6] + 1) = *&v12[96];
  *(&v26[7] + 1) = *&v12[112];
  *(&v26[8] + 1) = *&v12[128];
  v26[9] = *&v12[143];
  *(&v26[2] + 1) = *&v12[32];
  *(&v26[3] + 1) = *&v12[48];
  *(&v26[4] + 1) = *&v12[64];
  *(&v26[5] + 1) = *&v12[80];
  *(v26 + 1) = *v12;
  *(&v26[1] + 1) = *&v12[16];
  v6 = v26[8];
  *(a2 + 128) = v26[7];
  *(a2 + 144) = v6;
  *(a2 + 160) = v26[9];
  v7 = v26[4];
  *(a2 + 64) = v26[3];
  *(a2 + 80) = v7;
  v8 = v26[6];
  *(a2 + 96) = v26[5];
  *(a2 + 112) = v8;
  v9 = v26[0];
  *a2 = v25;
  *(a2 + 16) = v9;
  v10 = v26[2];
  *(a2 + 32) = v26[1];
  *(a2 + 48) = v10;
  *(a2 + 176) = 0;
  *(a2 + 184) = 1;
  *(a2 + 192) = v4;
  *(a2 + 200) = v5;
  sub_257BE401C(&v25, &v27, &qword_27F8F83A0, &qword_257EE4138);
  *&v28[97] = *&v12[96];
  *&v28[113] = *&v12[112];
  *&v28[129] = *&v12[128];
  *&v28[144] = *&v12[143];
  *&v28[33] = *&v12[32];
  *&v28[49] = *&v12[48];
  *&v28[65] = *&v12[64];
  *&v28[81] = *&v12[80];
  *&v28[1] = *v12;
  v27 = v3;
  v28[0] = 1;
  *&v28[17] = *&v12[16];
  return sub_257BE4084(&v27, &qword_27F8F83A0, &qword_257EE4138);
}

uint64_t sub_257D29420@<X0>(_OWORD *a2@<X8>)
{
  v3 = sub_257ECE540();
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_257ECF4C0();
  v11 = sub_257ECF4C0();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  v13 = sub_257ECF500();
  v15 = v14;

  v85 = v13;
  v86 = v15;
  sub_257BDAB08();
  v16 = sub_257ECEAF0();
  v18 = v17;
  LOBYTE(v11) = v19;
  v85 = sub_257ECED90();
  v48 = sub_257ECEAB0();
  v49 = v20;
  v51 = v21;
  v23 = v22;
  sub_257C0300C(v16, v18, v11 & 1);

  KeyPath = swift_getKeyPath();
  v52 = v23 & 1;
  LOBYTE(v85) = v23 & 1;
  sub_257ECE530();
  sub_257ECE520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  LOBYTE(v79) = v85;
  sub_257DE50BC();
  sub_257ECE510();

  sub_257ECE520();
  sub_257ECE560();
  v24 = sub_257ECEAD0();
  v26 = v25;
  LOBYTE(v18) = v27;
  v85 = sub_257ECED60();
  v28 = sub_257ECEAB0();
  v46 = v29;
  v47 = v30;
  v32 = v31;
  sub_257C0300C(v24, v26, v18 & 1);

  v33 = swift_getKeyPath();
  LOBYTE(v79) = v32 & 1;
  v34 = swift_getKeyPath();
  LOBYTE(v85) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  LOBYTE(v54[0]) = v79;
  MFReaderFont.rawValue.getter();
  v35 = sub_257ECEA10();

  v36 = swift_getKeyPath();
  *&v75 = v48;
  *(&v75 + 1) = v51;
  LOBYTE(v76) = v52;
  *(&v76 + 1) = *v74;
  DWORD1(v76) = *&v74[3];
  *(&v76 + 1) = v49;
  LOWORD(v77) = 256;
  *(&v77 + 2) = v72;
  WORD3(v77) = v73;
  *(&v77 + 1) = KeyPath;
  v78 = 0;
  v66[0] = 0;
  v64 = v76;
  v65 = v77;
  v63 = v75;
  *&v79 = v28;
  *(&v79 + 1) = v46;
  LOBYTE(v80) = v32 & 1;
  DWORD1(v80) = *&v69[3];
  *(&v80 + 1) = *v69;
  *(&v80 + 1) = v47;
  LOWORD(v81) = 256;
  WORD3(v81) = v68;
  v37 = v67;
  *(&v81 + 2) = v67;
  *(&v81 + 1) = v33;
  LOBYTE(v82) = 0;
  DWORD1(v82) = *&v70[3];
  *(&v82 + 1) = *v70;
  *(&v82 + 1) = v34;
  *&v83 = 0;
  BYTE8(v83) = 1;
  HIDWORD(v83) = *(v71 + 3);
  *(&v83 + 9) = v71[0];
  *&v84 = v36;
  *(&v84 + 1) = v35;
  *&v66[24] = v80;
  *&v66[8] = v79;
  *&v66[88] = v84;
  *&v66[72] = v83;
  *&v66[56] = v82;
  *&v66[40] = v81;
  v38 = v76;
  *a2 = v75;
  a2[1] = v38;
  v39 = v65;
  v40 = *v66;
  v41 = *&v66[32];
  a2[4] = *&v66[16];
  a2[5] = v41;
  a2[2] = v39;
  a2[3] = v40;
  v42 = *&v66[48];
  v43 = *&v66[64];
  v44 = *&v66[80];
  *(a2 + 18) = *&v66[96];
  a2[7] = v43;
  a2[8] = v44;
  a2[6] = v42;
  v85 = v28;
  v86 = v46;
  v87 = v32 & 1;
  *v88 = *v69;
  *&v88[3] = *&v69[3];
  v89 = v47;
  v90 = 256;
  v91 = v37;
  v92 = v68;
  v93 = v33;
  v94 = 0;
  *v95 = *v70;
  *&v95[3] = *&v70[3];
  v96 = v34;
  v97 = 0;
  v98 = 1;
  *v99 = v71[0];
  *&v99[3] = *(v71 + 3);
  v100 = v36;
  v101 = v35;
  sub_257BE401C(&v75, v54, &qword_27F8F83A8, &qword_257EE4218);
  sub_257BE401C(&v79, v54, &qword_27F8F83B0, &qword_257EE4220);
  sub_257BE4084(&v85, &qword_27F8F83B0, &qword_257EE4220);
  v54[0] = v48;
  v54[1] = v51;
  v55 = v52;
  *v56 = *v74;
  *&v56[3] = *&v74[3];
  v57 = v49;
  v58 = 256;
  v59 = v72;
  v60 = v73;
  v61 = KeyPath;
  v62 = 0;
  return sub_257BE4084(v54, &qword_27F8F83A8, &qword_257EE4218);
}

uint64_t sub_257D29A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v74 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F83B8, &qword_257EE4228);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v72 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v71 = (&v66 - v13);
  v14 = sub_257ECE1D0();
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v66 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F83C0, &qword_257EE4230) - 8;
  MEMORY[0x28223BE20](v69, v20, v21, v22, v23);
  v70 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v31 = &v66 - v30;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = [objc_opt_self() bundleForClass_];
  v34 = sub_257ECF4C0();
  v35 = sub_257ECF4C0();
  v36 = [v33 localizedStringForKey:v34 value:0 table:v35];

  v37 = sub_257ECF500();
  v39 = v38;

  v75 = v37;
  v76 = v39;
  sub_257BDAB08();
  v40 = sub_257ECEAF0();
  v42 = v41;
  LOBYTE(v36) = v43;
  v75 = sub_257ECED90();
  v44 = sub_257ECEAB0();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_257C0300C(v40, v42, v36 & 1);

  v75 = v44;
  v76 = v46;
  v51 = v48 & 1;
  v77 = v48 & 1;
  v78 = v50;
  v53 = v66;
  v52 = v67;
  v54 = v68;
  (*(v67 + 104))(v66, *MEMORY[0x277CDFA10], v68);
  sub_257ECEBA0();
  (*(v52 + 8))(v53, v54);
  sub_257C0300C(v44, v46, v51);

  *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F83C8, &qword_257EE4238) + 36)] = 256;
  KeyPath = swift_getKeyPath();
  v56 = &v31[*(v69 + 44)];
  *v56 = KeyPath;
  v56[8] = 0;
  v57 = sub_257ECE500();
  v58 = v71;
  *v71 = v57;
  *(v58 + 8) = 0;
  *(v58 + 16) = 1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F83D0, &qword_257EE4240);
  sub_257D29F48(v73, v58 + *(v59 + 44));
  v60 = v70;
  sub_257BE401C(v31, v70, &qword_27F8F83C0, &qword_257EE4230);
  v61 = v72;
  sub_257BE401C(v58, v72, &qword_27F8F83B8, &qword_257EE4228);
  v62 = v74;
  sub_257BE401C(v60, v74, &qword_27F8F83C0, &qword_257EE4230);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F83D8, &qword_257EE4248);
  v64 = v62 + *(v63 + 48);
  *v64 = 0;
  *(v64 + 8) = 1;
  sub_257BE401C(v61, v62 + *(v63 + 64), &qword_27F8F83B8, &qword_257EE4228);
  sub_257BE4084(v58, &qword_27F8F83B8, &qword_257EE4228);
  sub_257BE4084(v31, &qword_27F8F83C0, &qword_257EE4230);
  sub_257BE4084(v61, &qword_27F8F83B8, &qword_257EE4228);
  return sub_257BE4084(v60, &qword_27F8F83C0, &qword_257EE4230);
}