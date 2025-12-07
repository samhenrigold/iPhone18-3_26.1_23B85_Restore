unint64_t sub_21C6A4940()
{
  result = qword_27CDE6CB0;
  if (!qword_27CDE6CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6CA8, &qword_21C6D0D48);
    sub_21C6A49C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6CB0);
  }

  return result;
}

unint64_t sub_21C6A49C4()
{
  result = qword_27CDE6CB8;
  if (!qword_27CDE6CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6CC0, &qword_21C6D0D50);
    sub_21C694224(&qword_27CDE6CC8, &qword_27CDE6CD0, &qword_21C6D0D58, MEMORY[0x277CDF028]);
    sub_21C694224(&qword_27CDE6CD8, &qword_27CDE6CE0, &qword_21C6D0D60, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6CB8);
  }

  return result;
}

uint64_t sub_21C6A4AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChildPaneSettingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21C6A4B14(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_21C6A4B20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChildPaneSettingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21C6A4B84()
{
  v1 = *(type metadata accessor for ChildPaneSettingView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_21C6A3AAC(v2);
}

unint64_t sub_21C6A4BEC()
{
  result = qword_27CDE6D28;
  if (!qword_27CDE6D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6D20, &qword_21C6D0DA0);
    sub_21C6A4EDC(&qword_27CDE6D30, MEMORY[0x277CDE078], MEMORY[0x277CDE070]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6D28);
  }

  return result;
}

id sub_21C6A4CB0(uint64_t a1)
{
  v2 = *(v1 + 16);
  [v2 setPresentingViewController_];

  return [v2 present];
}

unint64_t sub_21C6A4D08()
{
  result = qword_27CDE6D40;
  if (!qword_27CDE6D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6D38, &qword_21C6D0DA8);
    sub_21C6A4DC0();
    sub_21C694224(&qword_27CDE6D50, &qword_27CDE6D58, &qword_21C6D0DB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6D40);
  }

  return result;
}

unint64_t sub_21C6A4DC0()
{
  result = qword_27CDE6D48;
  if (!qword_27CDE6D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6D48);
  }

  return result;
}

id sub_21C6A4E14(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_21C6A4E20()
{
  result = qword_27CDE6D60;
  if (!qword_27CDE6D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6D68, &unk_21C6D0DE0);
    sub_21C6A4940();
    sub_21C6A4EDC(&qword_27CDE6D70, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6D60);
  }

  return result;
}

uint64_t sub_21C6A4EDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MultiValueSetting(uint64_t a1)
{
  result = qword_27CDE6D78;
  if (!qword_27CDE6D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6A4F98(uint64_t a1)
{
  sub_21C6CDF20();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PropertyListValue(319);
    if (v2 <= 0x3F)
    {
      sub_21C6A50C4(319);
      if (v3 <= 0x3F)
      {
        sub_21C6A2ED4(319, &qword_27CDE6C68, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21C6A2ED4(319, &qword_27CDE6C70, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21C6A50C4(uint64_t a1)
{
  if (!qword_27CDE6D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6D90, &qword_21C6D25A0);
    v1 = sub_21C6CED30();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDE6D88);
    }
  }
}

BOOL sub_21C6A5128()
{
  v1 = *(v0 + *(type metadata accessor for MultiValueSetting(0) + 48));
  if (!*(v1 + 16))
  {
    return 1;
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v4 = 6578512;
  }

  else
  {
    v4 = 0x656E6F6850;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = (v1 + 40);
  v7 = *(v1 + 16) + 1;
  do
  {
    v8 = --v7 != 0;
    if (!v7)
    {
      break;
    }

    if (*(v6 - 1) == v4 && *v6 == v5)
    {
      break;
    }

    v6 += 2;
  }

  while ((sub_21C6CEE20() & 1) == 0);

  return v8;
}

uint64_t sub_21C6A5220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v183 = a8;
  v161 = a7;
  v182 = a6;
  v160 = a5;
  v186 = a4;
  v184 = a3;
  v179 = a2;
  v169 = type metadata accessor for LocalizedSettingValue(0);
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v171 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v170 = (&v135 - v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v135 - v15;
  MEMORY[0x28223BE20](v17);
  v164 = (&v135 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6D98, &qword_21C6D0E48);
  MEMORY[0x28223BE20](v19 - 8);
  v163 = &v135 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA0, &unk_21C6D0E50);
  MEMORY[0x28223BE20](v21 - 8);
  v167 = (&v135 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA8, &unk_21C6D1A90);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v135 - v27;
  v29 = type metadata accessor for PropertyListValue(0);
  v175 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v159 = &v135 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v172 = &v135 - v32;
  MEMORY[0x28223BE20](v33);
  v165 = (&v135 - v34);
  MEMORY[0x28223BE20](v35);
  v37 = (&v135 - v36);
  MEMORY[0x28223BE20](v38);
  v173 = &v135 - v39;
  MEMORY[0x28223BE20](v40);
  v174 = &v135 - v41;
  v42 = sub_21C6CE010();
  MEMORY[0x28223BE20](v42 - 8);
  v178 = &v135 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_21C6CDF00();
  v44 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v177 = &v135 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_21C6CEB80();
  MEMORY[0x28223BE20](v46 - 8);
  v48 = &v135 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_21C6CDF20();
  v176 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v158 = &v135 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v52 = &v135 - v51;
  MEMORY[0x28223BE20](v53);
  v162 = &v135 - v54;
  MEMORY[0x28223BE20](v55);
  v166 = &v135 - v56;
  MEMORY[0x28223BE20](v57);
  v181 = &v135 - v58;
  if (!*(a1 + 16) || (v59 = sub_21C6C70F8(0x656C746954, 0xE500000000000000), (v60 & 1) == 0))
  {

    (*(v44 + 8))(v186, v185);
LABEL_18:
    v71 = type metadata accessor for MultiValueSetting(0);
    return (*(*(v71 - 8) + 56))(a9, 1, 1, v71);
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v59, &v190);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v44 + 8))(v186, v185);

    goto LABEL_18;
  }

  v157 = a9;
  v61 = HIBYTE(*(&v189 + 1)) & 0xFLL;
  if ((*(&v189 + 1) & 0x2000000000000000) == 0)
  {
    v61 = v189 & 0xFFFFFFFFFFFFLL;
  }

  if (!v61)
  {
    (*(v44 + 8))(v186, v185);

    goto LABEL_23;
  }

  v152 = v16;
  sub_21C6CEB70();
  v156 = v44;
  v62 = *(v44 + 16);
  v154 = v44 + 16;
  v153 = v62;
  v62(v177, v186, v185);

  sub_21C6CE000();
  v155 = v48;
  sub_21C6CDF30();
  if (!*(a1 + 16) || (v63 = sub_21C6C70F8(7955787, 0xE300000000000000), (v64 & 1) == 0) || (sub_21C6A2734(*(a1 + 56) + 32 * v63, &v190), (swift_dynamicCast() & 1) == 0))
  {

    (*(v156 + 8))(v186, v185);
LABEL_21:
    (*(v176 + 8))(v181, v180);
    goto LABEL_23;
  }

  v65 = v189;
  v66 = HIBYTE(*(&v189 + 1)) & 0xFLL;
  if ((*(&v189 + 1) & 0x2000000000000000) == 0)
  {
    v66 = v189 & 0xFFFFFFFFFFFFLL;
  }

  v67 = v156;
  if (!v66 || (v151 = v189, !*(a1 + 16)) || (v68 = sub_21C6C70F8(0x56746C7561666544, 0xEC00000065756C61), (v69 & 1) == 0))
  {

    (*(v67 + 8))(v186, v185);
    goto LABEL_21;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v68, &v189);
  sub_21C6A6FC0(&v189, &v190);
  sub_21C6A2734(&v190, &v189);
  sub_21C6C50F8(&v189, v28);
  v70 = *(v175 + 48);
  if (v70(v28, 1, v29) == 1)
  {

    (*(v67 + 8))(v186, v185);
    __swift_destroy_boxed_opaque_existential_1(&v190);
    (*(v176 + 8))(v181, v180);
    sub_21C6A6FD0(v28);
LABEL_23:
    a9 = v157;
    goto LABEL_18;
  }

  v73 = v28;
  v74 = v174;
  sub_21C6A7100(v73, v174, type metadata accessor for PropertyListValue);
  if (!*(a1 + 16) || (v75 = sub_21C6C70F8(0x7365756C6156, 0xE600000000000000), (v76 & 1) == 0))
  {

    (*(v67 + 8))(v186, v185);
    v77 = v74;
LABEL_31:
    sub_21C6A70A0(v77, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v190);
    goto LABEL_21;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v75, &v188);
  sub_21C6A6FC0(&v188, &v189);
  sub_21C6A2734(&v189, &v188);
  sub_21C6C50F8(&v188, v25);
  if (v70(v25, 1, v29) == 1)
  {

    (*(v67 + 8))(v186, v185);
    __swift_destroy_boxed_opaque_existential_1(&v189);
    sub_21C6A70A0(v74, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v190);
    (*(v176 + 8))(v181, v180);
    sub_21C6A6FD0(v25);
    goto LABEL_23;
  }

  v78 = v25;
  v79 = v173;
  sub_21C6A7100(v78, v173, type metadata accessor for PropertyListValue);
  sub_21C6A7038(v79, v37, type metadata accessor for PropertyListValue);
  if (swift_getEnumCaseMultiPayload() != 6)
  {

    (*(v67 + 8))(v186, v185);
    sub_21C6A70A0(v79, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v189);
    sub_21C6A70A0(v174, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v190);
    (*(v176 + 8))(v181, v180);
    sub_21C6A70A0(v37, type metadata accessor for PropertyListValue);
    goto LABEL_23;
  }

  v80 = *v37;
  if (!*(a1 + 16) || (v81 = sub_21C6C70F8(0x73656C746954, 0xE600000000000000), (v82 & 1) == 0))
  {

    (*(v67 + 8))(v186, v185);
    v84 = v79;
LABEL_82:
    sub_21C6A70A0(v84, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v189);
    v77 = v174;
    goto LABEL_31;
  }

  v149 = v80;
  v145 = *(&v65 + 1);
  sub_21C6A2734(*(a1 + 56) + 32 * v81, &v188);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DB0, &unk_21C6D0E60);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {

LABEL_43:

LABEL_81:

    (*(v156 + 8))(v186, v185);
    v84 = v173;
    goto LABEL_82;
  }

  v144 = v187;
  if (!*(a1 + 16))
  {
    v108 = *(v149 + 16);
    v147 = (v149 + 16);
    v109 = *(v144 + 16);
    v146 = (v144 + 16);
    v148 = v108;
    if (v108 == v109)
    {
      v139 = 0;
      goto LABEL_68;
    }

    v143 = 0;
LABEL_80:

    goto LABEL_81;
  }

  result = sub_21C6C70F8(0x74695474726F6853, 0xEB0000000073656CLL);
  if (v83 & 1) != 0 && (sub_21C6A2734(*(a1 + 56) + 32 * result, &v188), result = swift_dynamicCast(), (result))
  {
    v143 = v187;
  }

  else
  {
    v143 = 0;
  }

  if (*(a1 + 16) && (result = sub_21C6C70F8(0xD000000000000014, 0x800000021C6D3150), (v85 & 1) != 0) && (sub_21C6A2734(*(a1 + 56) + 32 * result, &v188), result = swift_dynamicCast(), result))
  {
    v139 = v187;
  }

  else
  {
    v139 = 0;
  }

  v86 = *(v149 + 16);
  v147 = (v149 + 16);
  v87 = *(v144 + 16);
  v146 = (v144 + 16);
  v148 = v86;
  if (v86 != v87)
  {
    goto LABEL_80;
  }

  if (!v143)
  {
LABEL_68:
    if (v148)
    {
      v110 = 0;
      v166 = (v176 + 16);
      v165 = (v176 + 56);
      v164 = (v176 + 8);
      v111 = v144 + 40;
      v150 = MEMORY[0x277D84F90];
      v112 = v167;
      while (v110 < *v147)
      {
        result = sub_21C6A7038(v149 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v110, v172, type metadata accessor for PropertyListValue);
        if (v110 == *v146)
        {

          sub_21C6A70A0(v172, type metadata accessor for PropertyListValue);
          goto LABEL_90;
        }

        if (v110 >= *v146)
        {
          goto LABEL_98;
        }

        sub_21C6A7100(v172, v112, type metadata accessor for PropertyListValue);

        sub_21C6CEB70();
        v153(v177, v186, v185);

        sub_21C6CE000();
        sub_21C6CDF30();
        v113 = v169;
        v114 = v170;
        sub_21C6A7100(v112, v170 + *(v169 + 24), type metadata accessor for PropertyListValue);
        v115 = v180;
        (*v166)(v114, v52, v180);
        v116 = *v165;
        (*v165)(v114, 0, 1, v115);
        v116((v114 + *(v113 + 20)), 1, 1, v115);
        sub_21C6A7038(v114, v171, type metadata accessor for LocalizedSettingValue);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v150 = sub_21C6C6EA4(0, v150[2] + 1, 1, v150);
        }

        v118 = v150[2];
        v117 = v150[3];
        if (v118 >= v117 >> 1)
        {
          v150 = sub_21C6C6EA4((v117 > 1), v118 + 1, 1, v150);
        }

        ++v110;
        sub_21C6A70A0(v170, type metadata accessor for LocalizedSettingValue);
        (*v164)(v52, v180);
        v119 = v150;
        v150[2] = v118 + 1;
        result = sub_21C6A7100(v171, v119 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v118, type metadata accessor for LocalizedSettingValue);
        v111 += 16;
        if (v148 == v110)
        {
          goto LABEL_89;
        }
      }

      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v150 = MEMORY[0x277D84F90];
LABEL_89:

LABEL_90:
    if (*(a1 + 16) && (v120 = sub_21C6C70F8(0xD00000000000001CLL, 0x800000021C6D3170), (v121 & 1) != 0))
    {
      sub_21C6A2734(*(a1 + 56) + 32 * v120, &v188);

      if (swift_dynamicCast())
      {
        (*(v156 + 8))(v186, v185);
        sub_21C6A70A0(v173, type metadata accessor for PropertyListValue);
        __swift_destroy_boxed_opaque_existential_1(&v189);
        __swift_destroy_boxed_opaque_existential_1(&v190);
        v122 = v187;
LABEL_96:
        v123 = *(v176 + 32);
        v124 = v158;
        v125 = v180;
        v123(v158, v181, v180);
        v126 = v159;
        sub_21C6A7100(v174, v159, type metadata accessor for PropertyListValue);
        v127 = v157;
        *v157 = 5;
        v128 = type metadata accessor for MultiValueSetting(0);
        v123(&v127[v128[5]], v124, v125);
        v129 = &v127[v128[6]];
        v130 = v145;
        *v129 = v151;
        v129[1] = v130;
        sub_21C6A7100(v126, &v127[v128[7]], type metadata accessor for PropertyListValue);
        *&v127[v128[8]] = v150;
        v127[v128[9]] = v139;
        v131 = &v127[v128[10]];
        v132 = v182;
        *v131 = v160;
        v131[1] = v132;
        v133 = &v127[v128[11]];
        v134 = v183;
        *v133 = v161;
        v133[1] = v134;
        *&v127[v128[12]] = v122;
        return (*(*(v128 - 1) + 56))(v127, 0, 1, v128);
      }
    }

    else
    {
    }

    (*(v156 + 8))(v186, v185);
    sub_21C6A70A0(v173, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v189);
    __swift_destroy_boxed_opaque_existential_1(&v190);
    v122 = MEMORY[0x277D84F90];
    goto LABEL_96;
  }

  if (*(v143 + 16) != v148)
  {

    goto LABEL_43;
  }

  if (!v148)
  {
    v150 = MEMORY[0x277D84F90];
LABEL_88:

    goto LABEL_89;
  }

  v172 = 0;
  v138 = (v176 + 16);
  v137 = (v176 + 56);
  v136 = (v176 + 8);
  v171 = v144 + 40;
  v170 = (v143 + 40);
  v150 = MEMORY[0x277D84F90];
  while (v172 < *v147)
  {
    v88 = v172;
    result = sub_21C6A7038(v149 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v172, v165, type metadata accessor for PropertyListValue);
    if (v88 == *v146)
    {
      goto LABEL_86;
    }

    if (v88 >= *v146)
    {
      goto LABEL_100;
    }

    v89 = *(v143 + 16);
    if (v172 == v89)
    {
LABEL_86:

      sub_21C6A70A0(v165, type metadata accessor for PropertyListValue);
      goto LABEL_89;
    }

    if (v172 >= v89)
    {
      goto LABEL_101;
    }

    v90 = *v170;
    v141 = *(v170 - 1);
    v140 = v90;
    v167 = type metadata accessor for PropertyListValue;
    sub_21C6A7100(v165, v163, type metadata accessor for PropertyListValue);

    sub_21C6CEB70();
    v91 = v177;
    v93 = v185;
    v92 = v186;
    v94 = v153;
    v153(v177, v186, v185);

    sub_21C6CE000();
    sub_21C6CDF30();
    sub_21C6CEB70();
    v94(v91, v92, v93);

    sub_21C6CE000();
    v95 = v162;
    sub_21C6CDF30();
    v96 = v169;
    v97 = v164;
    sub_21C6A7100(v163, v164 + *(v169 + 24), v167);
    v98 = *v138;
    v99 = v180;
    (*v138)(v97, v166, v180);
    v100 = *v137;
    (*v137)(v97, 0, 1, v99);
    v101 = *(v96 + 20);
    v98(v97 + v101, v95, v99);
    v100(v97 + v101, 0, 1, v99);
    sub_21C6A7038(v97, v152, type metadata accessor for LocalizedSettingValue);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v150 = sub_21C6C6EA4(0, v150[2] + 1, 1, v150);
    }

    v103 = v150[2];
    v102 = v150[3];
    if (v103 >= v102 >> 1)
    {
      v150 = sub_21C6C6EA4((v102 > 1), v103 + 1, 1, v150);
    }

    v104 = v172 + 1;
    sub_21C6A70A0(v164, type metadata accessor for LocalizedSettingValue);
    v105 = *v136;
    v106 = v180;
    (*v136)(v162, v180);
    v105(v166, v106);
    v107 = v150;
    v150[2] = v103 + 1;
    result = sub_21C6A7100(v152, v107 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v103, type metadata accessor for LocalizedSettingValue);
    v171 += 16;
    v170 += 2;
    v172 = v104;
    if (v148 == v104)
    {
      goto LABEL_88;
    }
  }

LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
  return result;
}

uint64_t sub_21C6A6E50()
{
  v1 = 0xD000000000000014;
  v2 = "ers";
  v3 = *v0;
  v4 = "PSSliderSpecifier";
  v5 = "PSTitleValueSpecifier";
  if (v3 == 4)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v3 != 4)
  {
    v5 = "PSTextFieldSpecifier";
  }

  if (v3 == 3)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = v6;
  }

  if (v3 != 3)
  {
    v4 = v5;
  }

  v8 = "PSChildPaneSpecifier";
  v9 = 0xD000000000000017;
  if (v3 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = "PSToggleSwitchSpecifier";
  }

  if (*v0)
  {
    v1 = v9;
    v2 = v8;
  }

  if (*v0 <= 2u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v7;
  }

  if (*v0 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x21CF0F390](v10, v11 | 0x8000000000000000);

  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  v12 = type metadata accessor for MultiValueSetting(0);
  MEMORY[0x21CF0F390](*&v0[*(v12 + 24)], *&v0[*(v12 + 24) + 8]);
  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  v13 = sub_21C6CDF10();
  MEMORY[0x21CF0F390](v13);

  return 0;
}

uint64_t sub_21C6A6F98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C6A6E50();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_OWORD *sub_21C6A6FC0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21C6A6FD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA8, &unk_21C6D1A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C6A7038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C6A70A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C6A7100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for MultiValueSettingView(uint64_t a1)
{
  result = qword_27CDE6DB8;
  if (!qword_27CDE6DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6A71DC(uint64_t a1)
{
  sub_21C6A7260(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MultiValueSetting(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C6A7260(uint64_t a1)
{
  if (!qword_27CDE6DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6DD0, &qword_21C6D2540);
    sub_21C694224(&qword_27CDE6DD8, &qword_27CDE6DD0, &qword_21C6D2540, &unk_21C6D2398);
    v1 = sub_21C6CE440();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDE6DC8);
    }
  }
}

uint64_t sub_21C6A7320@<X0>(void *a2@<X8>)
{
  v59 = a2;
  v58 = sub_21C6CE630();
  v51 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v49 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E48, &qword_21C6D0F20);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = v40 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E20, &qword_21C6D0F10);
  v47 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v46 = v40 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E50, &qword_21C6D0F28);
  v50 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v48 = v40 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E58, &qword_21C6D0F30);
  MEMORY[0x28223BE20](v52);
  v55 = v40 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E60, &qword_21C6D0F38);
  MEMORY[0x28223BE20](v43);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E18, &qword_21C6D0F08);
  v44 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v9 = v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E08, &qword_21C6D0F00);
  MEMORY[0x28223BE20](v10);
  v54 = v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E68, &qword_21C6D0F40);
  MEMORY[0x28223BE20](v12);
  v14 = v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E38, &qword_21C6D0F18);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v40 - v17;
  if (sub_21C6A7EE0())
  {
    v40[1] = v12;
    v41 = v14;
    v42 = v10;
    v19 = sub_21C6A7FB8();
    if (v19)
    {
      MEMORY[0x28223BE20](v19);
      MEMORY[0x28223BE20](v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E98, &unk_21C6D0F80);
      sub_21C6A9330();
      sub_21C6CE700();
      sub_21C6A9188();
      sub_21C694224(&qword_27CDE6ED0, &qword_27CDE6E60, &qword_21C6D0F38, MEMORY[0x277CDE5A0]);
      sub_21C6CE360();

      v21 = v44;
      v22 = v53;
      (*(v44 + 16))(v55, v9, v53);
      swift_storeEnumTagMultiPayload();
      sub_21C694224(&qword_27CDE6E10, &qword_27CDE6E18, &qword_21C6D0F08, MEMORY[0x277CDD938]);
      v23 = sub_21C694224(&qword_27CDE6E28, &qword_27CDE6E20, &qword_21C6D0F10, MEMORY[0x277CDF038]);
      v60 = v56;
      v61 = v58;
      v62 = v23;
      v63 = MEMORY[0x277CDE370];
      swift_getOpaqueTypeConformance2();
      v24 = v54;
      sub_21C6CE5C0();
      (*(v21 + 8))(v9, v22);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
      sub_21C694224(&qword_27CDE6DD8, &qword_27CDE6DD0, &qword_21C6D2540, &unk_21C6D2398);
      v28 = sub_21C6CE400();
      swift_getKeyPath();
      sub_21C6CE420();

      MEMORY[0x28223BE20](v29);
      MEMORY[0x28223BE20](v30);
      type metadata accessor for PropertyListValue(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E70, &qword_21C6D0F70);
      sub_21C6AABB4(&qword_27CDE6E78, type metadata accessor for PropertyListValue, &unk_21C6D25FC);
      sub_21C6A9270();
      v31 = v46;
      sub_21C6CE9B0();

      v32 = v49;
      sub_21C6CE620();
      v33 = sub_21C694224(&qword_27CDE6E28, &qword_27CDE6E20, &qword_21C6D0F10, MEMORY[0x277CDF038]);
      v34 = MEMORY[0x277CDE370];
      v35 = v48;
      v36 = v56;
      v37 = v58;
      sub_21C6CE7C0();
      (*(v51 + 8))(v32, v37);
      (*(v47 + 8))(v31, v36);
      v38 = v50;
      v39 = v57;
      (*(v50 + 16))(v55, v35, v57);
      swift_storeEnumTagMultiPayload();
      sub_21C694224(&qword_27CDE6E10, &qword_27CDE6E18, &qword_21C6D0F08, MEMORY[0x277CDD938]);
      v60 = v36;
      v61 = v37;
      v62 = v33;
      v63 = v34;
      swift_getOpaqueTypeConformance2();
      v24 = v54;
      sub_21C6CE5C0();
      (*(v38 + 8))(v35, v39);
    }

    sub_21C68845C(v24, v41);
    swift_storeEnumTagMultiPayload();
    sub_21C6A9040();
    sub_21C6A9188();
    sub_21C6CE5C0();
    return sub_21C68F7D4(v24, &qword_27CDE6E08, &qword_21C6D0F00);
  }

  else
  {
    MEMORY[0x28223BE20](0);
    MEMORY[0x28223BE20](v25);
    type metadata accessor for PropertyListValueView(v26);
    sub_21C6AABB4(&qword_27CDE6E40, type metadata accessor for PropertyListValueView, &unk_21C6D2730);
    sub_21C6CE350();
    (*(v16 + 16))(v14, v18, v15);
    swift_storeEnumTagMultiPayload();
    sub_21C6A9040();
    sub_21C6A9188();
    sub_21C6CE5C0();
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_21C6A7EE0()
{
  v1 = v0 + *(type metadata accessor for MultiValueSettingView(0) + 20);
  v2 = type metadata accessor for MultiValueSetting(0);
  v3 = *(v1 + *(v2 + 36));
  result = *(v1 + *(v2 + 32));
  if (v3 != 1)
  {
  }

  if (result)
  {
    MEMORY[0x28223BE20](result);
    v6[2] = v0;
    v7 = v5;

    sub_21C6A97B8(sub_21C6A9798, v6);
    return v7;
  }

  return result;
}

uint64_t sub_21C6A7FB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for LocalizedSettingValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0 + *(type metadata accessor for MultiValueSettingView(0) + 20);
  result = type metadata accessor for MultiValueSetting(0);
  v10 = *(v8 + *(result + 32));
  if (!v10)
  {
    return 0;
  }

  v11 = *(v10 + 16);
  if (!v11)
  {
    return 1;
  }

  v12 = 0;
  while (v12 < *(v10 + 16))
  {
    sub_21C6A7038(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v7, type metadata accessor for LocalizedSettingValue);
    sub_21C6A96C0(&v7[*(v4 + 20)], v3);
    sub_21C6A70A0(v7, type metadata accessor for LocalizedSettingValue);
    v13 = sub_21C6CDF20();
    if ((*(*(v13 - 8) + 48))(v3, 1, v13) == 1)
    {
      sub_21C6A9730(v3);
      return 0;
    }

    ++v12;
    result = sub_21C6A9730(v3);
    if (v11 == v12)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C6A81B4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EB0, &unk_21C6D1140);
  sub_21C6A93C0();
  return sub_21C6CEA60();
}

uint64_t sub_21C6A8224@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
  sub_21C694224(&qword_27CDE6DD8, &qword_27CDE6DD0, &qword_21C6D2540, &unk_21C6D2398);
  v6 = sub_21C6CE430();
  v8 = *a2;
  if (*a2)
  {
    v9 = v6;
    v10 = v7;
    v11 = v8;
    result = sub_21C6CE1B0();
    *a3 = v9;
    a3[1] = v10;
    a3[2] = a1;
    a3[3] = result;
    a3[4] = v8;
  }

  else
  {
    result = sub_21C6CE410();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C6A8304(uint64_t a1, uint64_t a2, __n128 a3)
{
  type metadata accessor for PropertyListValueView(0);
  sub_21C6AABB4(&qword_27CDE6E40, type metadata accessor for PropertyListValueView, &unk_21C6D2730);
  return sub_21C6CE350();
}

uint64_t sub_21C6A83C4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
  sub_21C694224(&qword_27CDE6DD8, &qword_27CDE6DD0, &qword_21C6D2540, &unk_21C6D2398);
  v5 = sub_21C6CE400();
  swift_getKeyPath();
  sub_21C6CE420();

  v6 = type metadata accessor for PropertyListValueView(0);
  *(a3 + *(v6 + 20)) = a2;
  *(a3 + *(v6 + 24)) = 1;
}

uint64_t sub_21C6A84C4(uint64_t *a1)
{
  type metadata accessor for PropertyListValue(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6CE1E0();
}

uint64_t sub_21C6A8558(uint64_t a1)
{
  v2 = type metadata accessor for PropertyListValue(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6A7038(a1, v4, type metadata accessor for PropertyListValue);
  return sub_21C6A85F8(v4);
}

uint64_t sub_21C6A85F8(uint64_t a1)
{
  v3 = type metadata accessor for PropertyListValue(0);
  MEMORY[0x28223BE20](v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[6] = v6;
  swift_getKeyPath();
  v10[4] = v3;
  swift_getKeyPath();
  sub_21C6A7038(a1, v5, type metadata accessor for PropertyListValue);
  v7 = v1;
  sub_21C6CE1F0();
  v8 = *(v7 + *((*MEMORY[0x277D85000] & *v7) + 0x80));
  v10[2] = v3;
  swift_getKeyPath();
  v10[0] = v3;
  swift_getKeyPath();
  sub_21C6CE1E0();

  v8(v5);
  sub_21C6A70A0(a1, type metadata accessor for PropertyListValue);
  return sub_21C6A70A0(v5, type metadata accessor for PropertyListValue);
}

uint64_t sub_21C6A87A0(uint64_t a1)
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6D90, &qword_21C6D25A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E90, &qword_21C6D0F78);
  type metadata accessor for PropertyListValue(0);
  sub_21C694224(&qword_27CDE6ED8, &qword_27CDE6D90, &qword_21C6D25A0, MEMORY[0x277D83980]);
  sub_21C6AABB4(&qword_27CDE6E78, type metadata accessor for PropertyListValue, &unk_21C6D25FC);
  sub_21C694224(&qword_27CDE6E88, &qword_27CDE6E90, &qword_21C6D0F78, MEMORY[0x277CDD7E8]);
  return sub_21C6CEA10();
}

uint64_t sub_21C6A891C(uint64_t a1)
{
  v2 = type metadata accessor for PropertyListValue(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for LocalizedSettingValue(0);
  sub_21C6A7038(a1 + *(v5 + 24), v4, type metadata accessor for PropertyListValue);
  v11 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EE0, &unk_21C6D0FC0);
  v7 = sub_21C6AABB4(&qword_27CDE6E78, type metadata accessor for PropertyListValue, &unk_21C6D25FC);
  v8 = sub_21C6A952C();
  return MEMORY[0x21CF0EA80](v4, sub_21C6A94DC, v10, v2, v6, v7, v8);
}

uint64_t sub_21C6A8A5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
  sub_21C694224(&qword_27CDE6DD8, &qword_27CDE6DD0, &qword_21C6D2540, &unk_21C6D2398);
  v4 = sub_21C6CE400();
  swift_getKeyPath();
  sub_21C6CE420();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F18, &qword_21C6D1038);
  v5 = (type metadata accessor for LocalizedSettingValue(0) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21C6D0E70;
  v8 = v7 + v6;
  v9 = a1 + *(type metadata accessor for MultiValueSettingView(0) + 20);
  v10 = type metadata accessor for MultiValueSetting(0);
  sub_21C6A7038(&v9[*(v10 + 28)], v8 + v5[8], type metadata accessor for PropertyListValue);
  v11 = sub_21C6CDF20();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 1, 1, v11);
  v12(v8 + v5[7], 1, 1, v11);
  result = type metadata accessor for PropertyListValueView(0);
  *(a2 + *(result + 20)) = v7;
  *(a2 + *(result + 24)) = 0;
  return result;
}

uint64_t sub_21C6A8C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21C6CDF20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for MultiValueSettingView(0) + 20);
  v9 = type metadata accessor for MultiValueSetting(0);
  (*(v5 + 16))(v7, v8 + *(v9 + 20), v4);
  result = sub_21C6CE750();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

BOOL sub_21C6A8D7C()
{
  v0 = sub_21C6A7FB8();
  sub_21C6BC874(v0 & 1);
  v1 = sub_21C6A7FB8();
  sub_21C6BC874(v1 & 1);
  sub_21C68F5F0();
  v2 = sub_21C6CED40();

  return v2 == -1;
}

uint64_t sub_21C6A8E3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DE0, &qword_21C6D0EF0);
  MEMORY[0x28223BE20](v0);
  v2 = &v4 - v1;
  sub_21C6A7320((&v4 - v1));
  sub_21C6A6E50();
  sub_21C6A8F30();
  sub_21C6CE7F0();

  return sub_21C68F7D4(v2, &qword_27CDE6DE0, &qword_21C6D0EF0);
}

unint64_t sub_21C6A8F30()
{
  result = qword_27CDE6DE8;
  if (!qword_27CDE6DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6DE0, &qword_21C6D0EF0);
    sub_21C6A8FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6DE8);
  }

  return result;
}

unint64_t sub_21C6A8FB4()
{
  result = qword_27CDE6DF0;
  if (!qword_27CDE6DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6DF8, &qword_21C6D0EF8);
    sub_21C6A9040();
    sub_21C6A9188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6DF0);
  }

  return result;
}

unint64_t sub_21C6A9040()
{
  result = qword_27CDE6E00;
  if (!qword_27CDE6E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6E08, &qword_21C6D0F00);
    sub_21C694224(&qword_27CDE6E10, &qword_27CDE6E18, &qword_21C6D0F08, MEMORY[0x277CDD938]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6E20, &qword_21C6D0F10);
    sub_21C6CE630();
    sub_21C694224(&qword_27CDE6E28, &qword_27CDE6E20, &qword_21C6D0F10, MEMORY[0x277CDF038]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6E00);
  }

  return result;
}

unint64_t sub_21C6A9188()
{
  result = qword_27CDE6E30;
  if (!qword_27CDE6E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6E38, &qword_21C6D0F18);
    sub_21C6AABB4(&qword_27CDE6E40, type metadata accessor for PropertyListValueView, &unk_21C6D2730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6E30);
  }

  return result;
}

unint64_t sub_21C6A9270()
{
  result = qword_27CDE6E80;
  if (!qword_27CDE6E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6E70, &qword_21C6D0F70);
    sub_21C694224(&qword_27CDE6E88, &qword_27CDE6E90, &qword_21C6D0F78, MEMORY[0x277CDD7E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6E80);
  }

  return result;
}

unint64_t sub_21C6A9330()
{
  result = qword_27CDE6EA0;
  if (!qword_27CDE6EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6E98, &unk_21C6D0F80);
    sub_21C6A93C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6EA0);
  }

  return result;
}

unint64_t sub_21C6A93C0()
{
  result = qword_27CDE6EA8;
  if (!qword_27CDE6EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6EB0, &unk_21C6D1140);
    sub_21C6A9478();
    sub_21C694224(&qword_27CDE6EC0, &qword_27CDE6EC8, &qword_21C6D0F90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6EA8);
  }

  return result;
}

unint64_t sub_21C6A9478()
{
  result = qword_27CDE6EB8;
  if (!qword_27CDE6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6EB8);
  }

  return result;
}

double sub_21C6A94DC@<D0>(__n128 *a1@<X8>)
{
  sub_21C6BBF00(0, v6);
  v2 = v7;
  v3 = v8;
  result = v6[0].n128_f64[0];
  v5 = v6[1];
  *a1 = v6[0];
  a1[1] = v5;
  a1[2].n128_u16[0] = v2;
  a1[2].n128_u8[2] = v3;
  return result;
}

unint64_t sub_21C6A952C()
{
  result = qword_27CDE6EE8;
  if (!qword_27CDE6EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6EE0, &unk_21C6D0FC0);
    sub_21C6A95B8();
    sub_21C6A9634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6EE8);
  }

  return result;
}

unint64_t sub_21C6A95B8()
{
  result = qword_27CDE6EF0;
  if (!qword_27CDE6EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6EF8, ".>");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6EF0);
  }

  return result;
}

unint64_t sub_21C6A9634()
{
  result = qword_27CDE6F00;
  if (!qword_27CDE6F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6F08, &qword_21C6D0FD0);
    sub_21C6A95B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6F00);
  }

  return result;
}

uint64_t sub_21C6A96C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6A9730(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21C6A97B8(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  type metadata accessor for LocalizedSettingValue(0);
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_21C6B0214(v5);
  }

  sub_21C6A9878(a1, a2);
  *v2 = v5;
}

void sub_21C6A9878(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  v6 = sub_21C6CEE00();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for LocalizedSettingValue(0);
        v9 = sub_21C6CEC60();
        *(v9 + 16) = v8;
      }

      v10 = *(type metadata accessor for LocalizedSettingValue(0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_21C6A99B4(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_21C6ADBE4(0, v5, 1, a1);
  }
}

void sub_21C6A99B4(uint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v135 = a5;
  v136 = a4;
  v123 = a1;
  v129 = type metadata accessor for LocalizedSettingValue(0);
  v134 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v126 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v128 = &v112 - v13;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v112 - v16;
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v112 - v20;
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  if (a3[1] < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_101:
    v7 = a3;
    a3 = *v123;
    if (*v123)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_103;
    }

    goto LABEL_143;
  }

  v28 = a3[1];
  v119 = &v112 - v24;
  v120 = v27;
  v130 = v26;
  v127 = v25;
  v118 = a6;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v122 = v21;
  v124 = a3;
  v117 = v17;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v125 = v28;
    if (v32 >= v28)
    {
      v42 = v32;
    }

    else
    {
      v33 = *a3;
      v7 = *(v134 + 72);
      v34 = v31;
      v35 = v33 + v7 * v32;
      v36 = v119;
      sub_21C6A7038(v35, v119, type metadata accessor for LocalizedSettingValue);
      v133 = v33;
      v37 = v33 + v7 * v34;
      v38 = v120;
      sub_21C6A7038(v37, v120, type metadata accessor for LocalizedSettingValue);
      LODWORD(v132) = v136(v36, v38);
      if (v8)
      {
        sub_21C6A70A0(v38, type metadata accessor for LocalizedSettingValue);
        v111 = v36;
        goto LABEL_113;
      }

      sub_21C6A70A0(v38, type metadata accessor for LocalizedSettingValue);
      sub_21C6A70A0(v36, type metadata accessor for LocalizedSettingValue);
      v116 = v125 - 1;
      v131 = v125 - 2;
      v39 = v133 + v7 * (v34 + 2);
      v121 = v34;
      v40 = v7;
      v133 = v7;
      while (v131 != v34)
      {
        sub_21C6A7038(v39, v21, type metadata accessor for LocalizedSettingValue);
        v7 = v130;
        sub_21C6A7038(v35, v130, type metadata accessor for LocalizedSettingValue);
        v41 = v136(v21, v7);
        sub_21C6A70A0(v7, type metadata accessor for LocalizedSettingValue);
        sub_21C6A70A0(v21, type metadata accessor for LocalizedSettingValue);
        ++v34;
        v40 = v133;
        v39 += v133;
        v35 += v133;
        if ((v132 ^ v41))
        {
          v42 = v34 + 1;
          goto LABEL_11;
        }
      }

      v34 = v116;
      v42 = v125;
LABEL_11:
      v31 = v121;
      if ((v132 & 1) == 0)
      {
        goto LABEL_14;
      }

      if (v42 < v121)
      {
        goto LABEL_137;
      }

      if (v121 <= v34)
      {
        v43 = v40 * (v42 - 1);
        v44 = v42;
        v45 = v42 * v40;
        v125 = v44;
        v7 = v121 * v40;
        do
        {
          if (v31 != --v44)
          {
            v132 = v8;
            v46 = *v124;
            if (!*v124)
            {
              goto LABEL_141;
            }

            sub_21C6AAA94(v46 + v7, v126);
            if (v7 < v43 || v46 + v7 >= (v46 + v45))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v7 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_21C6AAA94(v126, v46 + v43);
            v8 = v132;
            v40 = v133;
          }

          ++v31;
          v43 -= v40;
          v45 -= v40;
          v7 += v40;
        }

        while (v31 < v44);
        a3 = v124;
        v42 = v125;
        v17 = v117;
        v31 = v121;
      }

      else
      {
LABEL_14:
        a3 = v124;
        v17 = v117;
      }
    }

    v47 = a3[1];
    if (v42 >= v47)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v42, v31))
    {
      goto LABEL_133;
    }

    if (v42 - v31 >= v118)
    {
      goto LABEL_36;
    }

    if (__OFADD__(v31, v118))
    {
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    v125 = v42;
    if (v31 + v118 >= v47)
    {
      v48 = v47;
    }

    else
    {
      v48 = v31 + v118;
    }

    if (v48 < v31)
    {
      goto LABEL_136;
    }

    if (v125 == v48)
    {
      v42 = v125;
LABEL_36:
      if (v42 < v31)
      {
        goto LABEL_132;
      }

      goto LABEL_37;
    }

    v96 = *a3;
    v97 = *(v134 + 72);
    v7 = *a3 + v97 * (v125 - 1);
    v132 = -v97;
    v133 = v96;
    v121 = v31;
    v98 = v31 - v125;
    v113 = v97;
    v99 = v96 + v125 * v97;
    v131 = v48;
    do
    {
      v114 = v99;
      v115 = v98;
      v116 = v7;
      do
      {
        sub_21C6A7038(v99, v17, type metadata accessor for LocalizedSettingValue);
        v100 = v17;
        v101 = v127;
        sub_21C6A7038(v7, v127, type metadata accessor for LocalizedSettingValue);
        v102 = v136(v100, v101);
        if (v8)
        {
          sub_21C6A70A0(v101, type metadata accessor for LocalizedSettingValue);
          v111 = v100;
LABEL_113:
          sub_21C6A70A0(v111, type metadata accessor for LocalizedSettingValue);
LABEL_114:

          return;
        }

        v103 = v102;
        sub_21C6A70A0(v101, type metadata accessor for LocalizedSettingValue);
        sub_21C6A70A0(v100, type metadata accessor for LocalizedSettingValue);
        v17 = v100;
        if ((v103 & 1) == 0)
        {
          break;
        }

        if (!v133)
        {
          goto LABEL_139;
        }

        v104 = v128;
        sub_21C6AAA94(v99, v128);
        swift_arrayInitWithTakeFrontToBack();
        sub_21C6AAA94(v104, v7);
        v7 += v132;
        v99 += v132;
      }

      while (!__CFADD__(v98++, 1));
      v7 = v116 + v113;
      v98 = v115 - 1;
      v99 = v114 + v113;
      v42 = v131;
      ++v125;
    }

    while (v125 != v131);
    a3 = v124;
    v31 = v121;
    if (v131 < v121)
    {
      goto LABEL_132;
    }

LABEL_37:
    v49 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_21C6B0110(0, *(v30 + 2) + 1, 1, v30);
    }

    v51 = *(v30 + 2);
    v50 = *(v30 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      v30 = sub_21C6B0110((v50 > 1), v51 + 1, 1, v30);
    }

    *(v30 + 2) = v52;
    v53 = &v30[16 * v51];
    *(v53 + 4) = v31;
    *(v53 + 5) = v42;
    v7 = *v123;
    if (!*v123)
    {
      goto LABEL_142;
    }

    v131 = v42;
    if (v51)
    {
      break;
    }

    v8 = v49;
LABEL_88:
    v28 = a3[1];
    v29 = v131;
    v21 = v122;
    if (v131 >= v28)
    {
      goto LABEL_101;
    }
  }

  v8 = v49;
  while (1)
  {
    v54 = v52 - 1;
    if (v52 >= 4)
    {
      v59 = &v30[16 * v52 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_119;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_120;
      }

      v66 = &v30[16 * v52];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_122;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_125;
      }

      if (v70 >= v62)
      {
        v88 = &v30[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_131;
        }

        if (v57 < v91)
        {
          v54 = v52 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

    if (v52 == 3)
    {
      v55 = *(v30 + 4);
      v56 = *(v30 + 5);
      v65 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      v58 = v65;
LABEL_57:
      if (v58)
      {
        goto LABEL_121;
      }

      v71 = &v30[16 * v52];
      v73 = *v71;
      v72 = *(v71 + 1);
      v74 = __OFSUB__(v72, v73);
      v75 = v72 - v73;
      v76 = v74;
      if (v74)
      {
        goto LABEL_124;
      }

      v77 = &v30[16 * v54 + 32];
      v79 = *v77;
      v78 = *(v77 + 1);
      v65 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v65)
      {
        goto LABEL_127;
      }

      if (__OFADD__(v75, v80))
      {
        goto LABEL_128;
      }

      if (v75 + v80 >= v57)
      {
        if (v57 < v80)
        {
          v54 = v52 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_71;
    }

    v81 = &v30[16 * v52];
    v83 = *v81;
    v82 = *(v81 + 1);
    v65 = __OFSUB__(v82, v83);
    v75 = v82 - v83;
    v76 = v65;
LABEL_71:
    if (v76)
    {
      goto LABEL_123;
    }

    v84 = &v30[16 * v54];
    v86 = *(v84 + 4);
    v85 = *(v84 + 5);
    v65 = __OFSUB__(v85, v86);
    v87 = v85 - v86;
    if (v65)
    {
      goto LABEL_126;
    }

    if (v87 < v75)
    {
      goto LABEL_88;
    }

LABEL_78:
    v92 = v54 - 1;
    if (v54 - 1 >= v52)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_138;
    }

    v93 = *&v30[16 * v92 + 32];
    v94 = *&v30[16 * v54 + 40];
    sub_21C6AA44C(*a3 + *(v134 + 72) * v93, *a3 + *(v134 + 72) * *&v30[16 * v54 + 32], *a3 + *(v134 + 72) * v94, v7, v136, v135);
    if (v8)
    {
      goto LABEL_114;
    }

    if (v94 < v93)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_21C6B0018(v30);
    }

    if (v92 >= *(v30 + 2))
    {
      goto LABEL_118;
    }

    v95 = &v30[16 * v92];
    *(v95 + 4) = v93;
    *(v95 + 5) = v94;
    v137 = v30;
    sub_21C6AFF8C(v54);
    v30 = v137;
    v52 = *(v137 + 2);
    if (v52 <= 1)
    {
      goto LABEL_88;
    }
  }

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
  v30 = sub_21C6B0018(v30);
LABEL_103:
  v137 = v30;
  v106 = *(v30 + 2);
  v107 = v135;
  if (v106 < 2)
  {
    goto LABEL_114;
  }

  while (*v7)
  {
    v108 = *&v30[16 * v106];
    v109 = *&v30[16 * v106 + 24];
    sub_21C6AA44C(*v7 + *(v134 + 72) * v108, *v7 + *(v134 + 72) * *&v30[16 * v106 + 16], *v7 + *(v134 + 72) * v109, a3, v136, v107);
    if (v8)
    {
      goto LABEL_114;
    }

    if (v109 < v108)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_21C6B0018(v30);
    }

    if (v106 - 2 >= *(v30 + 2))
    {
      goto LABEL_130;
    }

    v110 = &v30[16 * v106];
    *v110 = v108;
    *(v110 + 1) = v109;
    v137 = v30;
    sub_21C6AFF8C(v106 - 1);
    v30 = v137;
    v106 = *(v137 + 2);
    if (v106 <= 1)
    {
      goto LABEL_114;
    }
  }

LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_21C6AA44C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v54 = a6;
  v55 = a5;
  v56 = a3;
  v53 = type metadata accessor for LocalizedSettingValue(0);
  MEMORY[0x28223BE20](v53);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - v20;
  v52 = *(v22 + 72);
  if (!v52)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v23 = a1;
  if (a2 - a1 == 0x8000000000000000 && v52 == -1)
  {
    goto LABEL_66;
  }

  v24 = v56 - a2;
  if (v56 - a2 != 0x8000000000000000 || v52 != -1)
  {
    v25 = (a2 - a1) / v52;
    v59 = a1;
    v58 = a4;
    v51 = a1;
    if (v25 < v24 / v52)
    {
      v26 = v25 * v52;
      if (a4 < v23 || v23 + v26 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == v23)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v23 = v51;
LABEL_17:
      v51 = a4 + v26;
      v57 = a4 + v26;
      if (v26 >= 1 && a2 < v56)
      {
        while (1)
        {
          v29 = v23;
          sub_21C6A7038(a2, v21, type metadata accessor for LocalizedSettingValue);
          sub_21C6A7038(a4, v18, type metadata accessor for LocalizedSettingValue);
          v30 = v55(v21, v18);
          if (v7)
          {
            break;
          }

          v31 = v30;
          v32 = a4;
          sub_21C6A70A0(v18, type metadata accessor for LocalizedSettingValue);
          sub_21C6A70A0(v21, type metadata accessor for LocalizedSettingValue);
          if (v31)
          {
            v33 = v52;
            v34 = v29;
            if (v29 < a2 || v29 >= a2 + v52)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              a2 += v33;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }

              a2 += v33;
            }
          }

          else
          {
            v35 = a4;
            v33 = v52;
            a4 += v52;
            v34 = v29;
            if (v29 < v32 || v29 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }
            }

            v58 = a4;
          }

          v23 = v34 + v33;
          v59 = v23;
          if (a4 >= v51 || a2 >= v56)
          {
            goto LABEL_64;
          }
        }

        sub_21C6A70A0(v18, type metadata accessor for LocalizedSettingValue);
        sub_21C6A70A0(v21, type metadata accessor for LocalizedSettingValue);
      }

LABEL_64:
      sub_21C6B002C(&v59, &v58, &v57);
      return;
    }

    v27 = v24 / v52 * v52;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_40:
        v36 = a4 + v27;
        if (v27 >= 1)
        {
          v37 = -v52;
          v38 = v36;
          v47 = v15;
          v48 = v12;
          do
          {
            v45 = v36;
            v39 = a2;
            v49 = a2;
            v50 = a2 + v37;
            while (1)
            {
              v40 = v56;
              if (v39 <= v23)
              {
                v59 = v39;
                v57 = v45;
                goto LABEL_64;
              }

              v46 = v36;
              v52 = v38;
              v41 = v38 + v37;
              sub_21C6A7038(v38 + v37, v15, type metadata accessor for LocalizedSettingValue);
              sub_21C6A7038(v50, v12, type metadata accessor for LocalizedSettingValue);
              v42 = v55(v15, v12);
              if (v7)
              {
                sub_21C6A70A0(v12, type metadata accessor for LocalizedSettingValue);
                sub_21C6A70A0(v15, type metadata accessor for LocalizedSettingValue);
                v59 = v49;
                v57 = v46;
                goto LABEL_64;
              }

              v43 = v42;
              v56 = v40 + v37;
              sub_21C6A70A0(v12, type metadata accessor for LocalizedSettingValue);
              sub_21C6A70A0(v15, type metadata accessor for LocalizedSettingValue);
              if (v43)
              {
                break;
              }

              v36 = v41;
              if (v40 < v52 || v56 >= v52)
              {
                swift_arrayInitWithTakeFrontToBack();
                v7 = 0;
              }

              else
              {
                v7 = 0;
                if (v40 != v52)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v38 = v41;
              v23 = v51;
              v15 = v47;
              v12 = v48;
              v39 = v49;
              if (v41 <= a4)
              {
                a2 = v49;
                goto LABEL_63;
              }
            }

            if (v40 < v49 || v56 >= v49)
            {
              a2 = v50;
              swift_arrayInitWithTakeFrontToBack();
              v7 = 0;
              v36 = v46;
            }

            else
            {
              v44 = v40 == v49;
              a2 = v50;
              v7 = 0;
              v36 = v46;
              if (!v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v23 = v51;
            v38 = v52;
            v15 = v47;
            v12 = v48;
          }

          while (v52 > a4);
        }

LABEL_63:
        v59 = a2;
        v57 = v36;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v51;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
}

uint64_t sub_21C6AAA94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedSettingValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C6AAAF8()
{
  result = qword_27CDE6F20;
  if (!qword_27CDE6F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6F28, qword_21C6D1040);
    sub_21C6A8F30();
    sub_21C6AABB4(&qword_27CDE6D70, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6F20);
  }

  return result;
}

uint64_t sub_21C6AABB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_21C6AAC00()
{
  v1 = *(v0 + *(type metadata accessor for RadioGroupSetting(0) + 56));
  if (!*(v1 + 16))
  {
    return 1;
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v4 = 6578512;
  }

  else
  {
    v4 = 0x656E6F6850;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = (v1 + 40);
  v7 = *(v1 + 16) + 1;
  do
  {
    v8 = --v7 != 0;
    if (!v7)
    {
      break;
    }

    if (*(v6 - 1) == v4 && *v6 == v5)
    {
      break;
    }

    v6 += 2;
  }

  while ((sub_21C6CEE20() & 1) == 0);

  return v8;
}

uint64_t sub_21C6AACF8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10)
{
  v123 = a8;
  v139 = a7;
  v122 = a6;
  v144 = a5;
  v142 = a4;
  v136 = a3;
  v141 = a9;
  v140 = a10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  MEMORY[0x28223BE20](v12 - 8);
  v124 = &v102[-v13];
  v127 = type metadata accessor for LocalizedSettingValue(0);
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v129 = &v102[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v128 = &v102[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA0, &unk_21C6D0E50);
  MEMORY[0x28223BE20](v17 - 8);
  v125 = &v102[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA8, &unk_21C6D1A90);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v102[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v24 = &v102[-v23];
  v25 = type metadata accessor for PropertyListValue(0);
  v133 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v121 = &v102[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v130 = &v102[-v28];
  MEMORY[0x28223BE20](v29);
  v31 = &v102[-v30];
  MEMORY[0x28223BE20](v32);
  v131 = &v102[-v33];
  MEMORY[0x28223BE20](v34);
  v132 = &v102[-v35];
  v36 = sub_21C6CE010();
  MEMORY[0x28223BE20](v36 - 8);
  v135 = &v102[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v143 = sub_21C6CDF00();
  v38 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v40 = &v102[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = sub_21C6CEB80();
  MEMORY[0x28223BE20](v41 - 8);
  v137 = sub_21C6CDF20();
  v134 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v120 = &v102[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v43);
  v45 = &v102[-v44];
  MEMORY[0x28223BE20](v46);
  v138 = &v102[-v47];
  if (!*(a2 + 16))
  {
    goto LABEL_21;
  }

  v48 = sub_21C6C70F8(0x656C746954, 0xE500000000000000);
  if ((v49 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_21C6A2734(*(a2 + 56) + 32 * v48, &v149);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v50 = HIBYTE(*(&v148 + 1)) & 0xFLL;
  if ((*(&v148 + 1) & 0x2000000000000000) == 0)
  {
    v50 = v148 & 0xFFFFFFFFFFFFLL;
  }

  if (!v50)
  {

LABEL_21:

LABEL_22:

    goto LABEL_23;
  }

  v116 = a1;
  sub_21C6CEB70();
  v119 = v38;
  v51 = *(v38 + 16);
  v118 = v38 + 16;
  v117 = v51;
  v51(v40, v144, v143);

  sub_21C6CE000();
  sub_21C6CDF30();
  if (!*(a2 + 16) || (v52 = sub_21C6C70F8(7955787, 0xE300000000000000), (v53 & 1) == 0))
  {

LABEL_19:
    (*(v134 + 8))(v138, v137);
    v38 = v119;
    goto LABEL_23;
  }

  sub_21C6A2734(*(a2 + 56) + 32 * v52, &v149);
  v54 = swift_dynamicCast();
  v38 = v119;
  if ((v54 & 1) == 0)
  {
    (*(v134 + 8))(v138, v137);

    goto LABEL_22;
  }

  v55 = v148;
  v56 = HIBYTE(*(&v148 + 1)) & 0xFLL;
  if ((*(&v148 + 1) & 0x2000000000000000) == 0)
  {
    v56 = v148 & 0xFFFFFFFFFFFFLL;
  }

  if (!v56)
  {
    (*(v134 + 8))(v138, v137);

    goto LABEL_22;
  }

  v115 = v148;
  if (!*(a2 + 16) || (v57 = sub_21C6C70F8(0x56746C7561666544, 0xEC00000065756C61), (v58 & 1) == 0))
  {

LABEL_26:
    (*(v134 + 8))(v138, v137);
    goto LABEL_23;
  }

  sub_21C6A2734(*(a2 + 56) + 32 * v57, &v148);
  sub_21C6A6FC0(&v148, &v149);
  sub_21C6A2734(&v149, &v148);
  sub_21C6C50F8(&v148, v24);
  v59 = *(v133 + 48);
  v114 = (v133 + 48);
  v113 = v59;
  if ((v59)(v24, 1, v25) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1(&v149);
    (*(v134 + 8))(v138, v137);
    sub_21C6A6FD0(v24);
LABEL_23:
    (*(v38 + 8))(v144, v143);
    v60 = type metadata accessor for RadioGroupSetting(0);
    return (*(*(v60 - 8) + 56))(v141, 1, 1, v60);
  }

  v62 = v24;
  v63 = v132;
  sub_21C6A7100(v62, v132, type metadata accessor for PropertyListValue);
  if (!*(a2 + 16) || (v64 = sub_21C6C70F8(0x7365756C6156, 0xE600000000000000), (v65 & 1) == 0))
  {

    v66 = v63;
LABEL_33:
    sub_21C6A70A0(v66, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v149);
    goto LABEL_26;
  }

  sub_21C6A2734(*(a2 + 56) + 32 * v64, &v147);
  sub_21C6A6FC0(&v147, &v148);
  sub_21C6A2734(&v148, &v147);
  sub_21C6C50F8(&v147, v21);
  if ((v113)(v21, 1, v25) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1(&v148);
    sub_21C6A70A0(v63, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v149);
    (*(v134 + 8))(v138, v137);
    sub_21C6A6FD0(v21);
    goto LABEL_23;
  }

  v67 = v21;
  v68 = v131;
  sub_21C6A7100(v67, v131, type metadata accessor for PropertyListValue);
  sub_21C6A7038(v68, v31, type metadata accessor for PropertyListValue);
  if (swift_getEnumCaseMultiPayload() != 6)
  {

    sub_21C6A70A0(v68, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v148);
    sub_21C6A70A0(v132, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v149);
    (*(v134 + 8))(v138, v137);
    sub_21C6A70A0(v31, type metadata accessor for PropertyListValue);
    goto LABEL_23;
  }

  v69 = *v31;
  if (!*(a2 + 16) || (v70 = sub_21C6C70F8(0x73656C746954, 0xE600000000000000), (v71 & 1) == 0))
  {

    sub_21C6A70A0(v68, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v148);
    v66 = v132;
    goto LABEL_33;
  }

  v112 = v69;
  v105 = *(&v55 + 1);
  sub_21C6A2734(*(a2 + 56) + 32 * v70, &v147);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DB0, &unk_21C6D0E60);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {

LABEL_59:

    sub_21C6A70A0(v131, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v148);
    sub_21C6A70A0(v132, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v149);
    goto LABEL_19;
  }

  v110 = v145;
  if (*(a2 + 16) && (result = sub_21C6C70F8(0xD000000000000014, 0x800000021C6D3150), (v72 & 1) != 0) && (sub_21C6A2734(*(a2 + 56) + 32 * result, &v147), result = swift_dynamicCast(), result))
  {
    v103 = v145;
  }

  else
  {
    v103 = 0;
  }

  v73 = *(v110 + 16);
  v109 = *(v112 + 16);
  if (v109 != v73)
  {

    goto LABEL_59;
  }

  if (!v109)
  {
    v114 = MEMORY[0x277D84F90];
LABEL_61:

LABEL_63:
    if (*(a2 + 16) && (v84 = sub_21C6C70F8(0x65547265746F6F46, 0xEA00000000007478), (v85 & 1) != 0) && (sub_21C6A2734(*(a2 + 56) + 32 * v84, &v147), (swift_dynamicCast() & 1) != 0) && v146)
    {

      sub_21C6CEB70();
      v117(v40, v144, v143);

      sub_21C6CE000();
      v86 = v124;
      sub_21C6CDF30();
      (*(v134 + 56))(v86, 0, 1, v137);
    }

    else
    {
      (*(v134 + 56))(v124, 1, 1, v137);
    }

    if (*(a2 + 16) && (v87 = sub_21C6C70F8(0xD00000000000001CLL, 0x800000021C6D3170), (v88 & 1) != 0))
    {
      sub_21C6A2734(*(a2 + 56) + 32 * v87, &v147);

      if (swift_dynamicCast())
      {
        sub_21C6A70A0(v131, type metadata accessor for PropertyListValue);
        __swift_destroy_boxed_opaque_existential_1(&v148);
        __swift_destroy_boxed_opaque_existential_1(&v149);
        v89 = v145;
LABEL_75:
        v90 = *(v134 + 32);
        v91 = v120;
        v92 = v137;
        v90(v120, v138, v137);
        v93 = v121;
        sub_21C6A7100(v132, v121, type metadata accessor for PropertyListValue);
        v94 = v141;
        *v141 = 1;
        v94[1] = v116 & 1;
        v95 = type metadata accessor for RadioGroupSetting(0);
        v90(&v94[v95[6]], v91, v92);
        sub_21C6AC488(v124, &v94[v95[7]]);
        v96 = &v94[v95[8]];
        v97 = v105;
        *v96 = v115;
        v96[1] = v97;
        sub_21C6A7100(v93, &v94[v95[9]], type metadata accessor for PropertyListValue);
        *&v94[v95[10]] = v114;
        v94[v95[11]] = v103;
        v98 = &v94[v95[12]];
        v99 = v139;
        *v98 = v122;
        v98[1] = v99;
        v100 = &v94[v95[13]];
        v101 = v140;
        *v100 = v123;
        v100[1] = v101;
        *&v94[v95[14]] = v89;
        (*(*(v95 - 1) + 56))(v94, 0, 1, v95);
        return (*(v119 + 8))(v144, v143);
      }
    }

    else
    {
    }

    sub_21C6A70A0(v131, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v148);
    __swift_destroy_boxed_opaque_existential_1(&v149);
    v89 = MEMORY[0x277D84F90];
    goto LABEL_75;
  }

  v74 = 0;
  v108 = (v134 + 16);
  v107 = (v134 + 56);
  v106 = (v134 + 8);
  v113 = (v110 + 40);
  v114 = MEMORY[0x277D84F90];
  v75 = v127;
  while (v74 < *(v112 + 16))
  {
    result = sub_21C6A7038(v112 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v74, v130, type metadata accessor for PropertyListValue);
    v76 = *(v110 + 16);
    v111 = v74;
    if (v74 == v76)
    {

      sub_21C6A70A0(v130, type metadata accessor for PropertyListValue);
      goto LABEL_63;
    }

    if (v74 >= v76)
    {
      goto LABEL_77;
    }

    v77 = v125;
    sub_21C6A7100(v130, v125, type metadata accessor for PropertyListValue);

    sub_21C6CEB70();
    v117(v40, v144, v143);

    sub_21C6CE000();
    sub_21C6CDF30();
    v78 = v128;
    sub_21C6A7100(v77, &v128[*(v75 + 24)], type metadata accessor for PropertyListValue);
    v79 = v137;
    (*v108)(v78, v45, v137);
    v80 = *v107;
    (*v107)(v78, 0, 1, v79);
    v80(&v78[*(v75 + 20)], 1, 1, v79);
    sub_21C6A7038(v78, v129, type metadata accessor for LocalizedSettingValue);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = sub_21C6C6EA4(0, v114[2] + 1, 1, v114);
    }

    v82 = v114[2];
    v81 = v114[3];
    if (v82 >= v81 >> 1)
    {
      v114 = sub_21C6C6EA4((v81 > 1), v82 + 1, 1, v114);
    }

    v74 = v111 + 1;
    sub_21C6A70A0(v128, type metadata accessor for LocalizedSettingValue);
    (*v106)(v45, v137);
    v83 = v114;
    v114[2] = v82 + 1;
    result = sub_21C6A7100(v129, v83 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v82, type metadata accessor for LocalizedSettingValue);
    v113 += 16;
    if (v109 == v74)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_21C6AC32C()
{
  if (*v0)
  {
    v1 = 0xD000000000000015;
  }

  else
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = "PSGroupSpecifier";
  }

  else
  {
    v2 = "PSMultiValueSpecifier";
  }

  MEMORY[0x21CF0F390](v1, v2 | 0x8000000000000000);

  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  v3 = type metadata accessor for RadioGroupSetting(0);
  MEMORY[0x21CF0F390](*&v0[*(v3 + 32)], *&v0[*(v3 + 32) + 8]);
  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  v4 = sub_21C6CDF10();
  MEMORY[0x21CF0F390](v4);

  return 0;
}

uint64_t sub_21C6AC414@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C6AC32C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for RadioGroupSetting(uint64_t a1)
{
  result = qword_27CDE6F30;
  if (!qword_27CDE6F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C6AC488(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21C6AC520(uint64_t a1)
{
  sub_21C6CDF20();
  if (v1 <= 0x3F)
  {
    sub_21C6AC6CC(319, &qword_27CDE6F40, MEMORY[0x277CC9130], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PropertyListValue(319);
      if (v3 <= 0x3F)
      {
        sub_21C6AC6CC(319, &qword_27CDE6F48, type metadata accessor for LocalizedSettingValue, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_21C6A2ED4(319, &qword_27CDE6C68, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_21C6A2ED4(319, &qword_27CDE6C70, MEMORY[0x277D83940]);
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

void sub_21C6AC6CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for RadioGroupSettingView(uint64_t a1)
{
  result = qword_27CDE6F50;
  if (!qword_27CDE6F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6AC7A4(uint64_t a1)
{
  sub_21C6A7260(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RadioGroupSetting(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21C6AC844()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24[-v2];
  v4 = sub_21C6CDF20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v24[-v9];
  v25 = v0;
  v11 = sub_21C6CE5A0();
  LOBYTE(v31) = 1;
  sub_21C6ACF90(v0, v38);
  *&v30[7] = v38[0];
  *&v30[55] = v39;
  *&v30[39] = v38[2];
  *&v30[23] = v38[1];
  v12 = v31;
  v31 = v11;
  v32 = 0;
  v33 = v12;
  v34 = *v30;
  *&v37[15] = *(&v39 + 1);
  *v37 = *&v30[48];
  v36 = *&v30[32];
  v35 = *&v30[16];
  v13 = v0 + *(type metadata accessor for RadioGroupSettingView(0) + 20);
  v14 = type metadata accessor for RadioGroupSetting(0);
  sub_21C6A96C0(v13 + *(v14 + 28), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21C6A9730(v3);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    (*(v5 + 16))(v7, v10, v4);
    v15 = sub_21C6CE750();
    v16 = v19;
    v21 = v20;
    v18 = v22;
    (*(v5 + 8))(v10, v4);
    v17 = v21 & 1;
  }

  v26 = v15;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F60, &qword_21C6D1128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F68, &qword_21C6D1130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F70, &qword_21C6D1138);
  sub_21C694224(&qword_27CDE6F78, &qword_27CDE6F60, &qword_21C6D1128, MEMORY[0x277CE1198]);
  sub_21C6AD134();
  sub_21C6AD218();
  return sub_21C6CEA50();
}

void sub_21C6ACB90(void **a1)
{
  v2 = a1 + *(type metadata accessor for RadioGroupSettingView(0) + 20);
  v3 = type metadata accessor for RadioGroupSetting(0);
  v4 = *&v2[*(v3 + 40)];
  if (v2[*(v3 + 44)] == 1)
  {
    v12[0] = *&v2[*(v3 + 40)];

    sub_21C6AD31C(v12);
    v4 = v12[0];
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
  sub_21C694224(&qword_27CDE6DD8, &qword_27CDE6DD0, &qword_21C6D2540, &unk_21C6D2398);
  v5 = sub_21C6CE430();
  v7 = *a1;
  if (*a1)
  {
    v8 = v5;
    v9 = v6;
    v10 = v7;
    v11 = sub_21C6CE1B0();
    v12[0] = v8;
    v12[1] = v9;
    v12[2] = v4;
    v12[3] = v11;
    v12[4] = v7;
    sub_21C6AC32C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EB0, &unk_21C6D1140);
    sub_21C6A93C0();
    sub_21C6CE7F0();
  }

  else
  {
    sub_21C6CE410();
    __break(1u);

    __break(1u);
  }
}

void sub_21C6ACD58(uint64_t *a1@<X8>)
{
  v3 = sub_21C6CE570();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = v1 + *(type metadata accessor for RadioGroupSettingView(0) + 20);
  if (*(v4 + 1) == 1 && (v5 = (v4 + *(type metadata accessor for RadioGroupSetting(0) + 48)), v6 = *v5, v7 = v5[1], objc_allocWithZone(MEMORY[0x277CC1E70]), , v8 = sub_21C6BF2EC(v6, v7, 0), (v13 = v8) != 0))
  {
    sub_21C6CE560();
    sub_21C6CE550();
    v14 = [v13 localizedName];
    sub_21C6CEBC0();

    sub_21C6CE540();

    sub_21C6CE550();
    sub_21C6CE590();
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v15 = qword_27CDE9D58;
    v9 = sub_21C6CE740();
    v10 = v16;
    v18 = v17;
    v12 = v19;

    v11 = v18 & 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  *a1 = v9;
  a1[1] = v10;
  a1[2] = v11;
  a1[3] = v12;
}

uint64_t sub_21C6ACF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21C6CDF20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6ACD58(v20);
  v8 = v20[0];
  v9 = v20[1];
  v10 = v20[2];
  v11 = v20[3];
  v12 = a1 + *(type metadata accessor for RadioGroupSettingView(0) + 20);
  v13 = type metadata accessor for RadioGroupSetting(0);
  (*(v5 + 16))(v7, v12 + *(v13 + 24), v4);
  v14 = sub_21C6CE750();
  v16 = v15;
  LOBYTE(v5) = v17 & 1;
  LOBYTE(v20[0]) = v17 & 1;
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v17 & 1;
  *(a2 + 56) = v18;
  sub_21C6AD294(v8, v9, v10, v11);
  sub_21C692AE8(v14, v16, v5);

  sub_21C692AD8(v14, v16, v5);

  return sub_21C6AD2D8(v8, v9, v10, v11);
}

unint64_t sub_21C6AD134()
{
  result = qword_27CDE6F80;
  if (!qword_27CDE6F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6F68, &qword_21C6D1130);
    sub_21C6A93C0();
    sub_21C6AD1C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6F80);
  }

  return result;
}

unint64_t sub_21C6AD1C0()
{
  result = qword_27CDE6D70;
  if (!qword_27CDE6D70)
  {
    sub_21C6CE690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6D70);
  }

  return result;
}

unint64_t sub_21C6AD218()
{
  result = qword_27CDE6F88;
  if (!qword_27CDE6F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6F70, &qword_21C6D1138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6F88);
  }

  return result;
}

uint64_t sub_21C6AD294(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21C692AE8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21C6AD2D8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21C692AD8(result, a2, a3 & 1);
  }

  return result;
}

void sub_21C6AD31C(uint64_t *a1)
{
  v2 = *(type metadata accessor for LocalizedSettingValue(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21C6B0214(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_21C6AD3C4(v5);
  *a1 = v3;
}

void sub_21C6AD3C4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21C6CEE00();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for LocalizedSettingValue(0);
        v6 = sub_21C6CEC60();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for LocalizedSettingValue(0) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_21C6ADE04(v8, v9, a1, v4);
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
    sub_21C6AD4F0(0, v2, 1, a1);
  }
}

void sub_21C6AD4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v73 = &v55[-v11];
  v12 = sub_21C6CDF20();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v64 = &v55[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v72 = &v55[-v16];
  MEMORY[0x28223BE20](v17);
  v63 = &v55[-v18];
  v75 = type metadata accessor for LocalizedSettingValue(0);
  MEMORY[0x28223BE20](v75);
  v67 = &v55[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v55[-v21];
  MEMORY[0x28223BE20](v23);
  v26 = &v55[-v25];
  v57 = a2;
  if (a3 != a2)
  {
    v27 = *a4;
    v28 = *(v24 + 72);
    v76 = (v13 + 48);
    v69 = (v13 + 16);
    v70 = (v13 + 32);
    v68 = (v13 + 8);
    v29 = v27 + v28 * (a3 - 1);
    v65 = -v28;
    v66 = v27;
    v30 = a1 - a3;
    v56 = v28;
    v31 = v27 + v28 * a3;
    v71 = &v55[-v25];
    v74 = v22;
    v62 = v12;
LABEL_5:
    v61 = a3;
    v58 = v31;
    v59 = v30;
    v32 = v30;
    v60 = v29;
    v33 = v73;
    while (1)
    {
      sub_21C6B0228(v31, v26);
      sub_21C6B0228(v29, v22);
      sub_21C6A96C0(v26, v33);
      v34 = *v76;
      if ((*v76)(v33, 1, v12) == 1)
      {
        sub_21C6A9730(v33);
        sub_21C6C5BF8(v81);
        if (swift_dynamicCast())
        {
          v35 = v79;
          v36 = v80;
        }

        else
        {
          sub_21C6C5BF8(v81);
          sub_21C6B028C();
          if (swift_dynamicCast())
          {
            v45 = v79;
            v46 = [v79 stringValue];
            v35 = sub_21C6CEBC0();
            v36 = v47;
          }

          else
          {
            v35 = 0;
            v36 = 0xE000000000000000;
          }
        }
      }

      else
      {
        v37 = v63;
        (*v70)(v63, v33, v12);
        (*v69)(v72, v37, v12);
        v35 = sub_21C6CEBD0();
        v36 = v38;
        (*v68)(v37, v12);
      }

      v79 = v35;
      v80 = v36;
      v39 = v74;
      v40 = v82;
      sub_21C6A96C0(v74, v82);
      if (v34(v40, 1, v12) == 1)
      {
        sub_21C6A9730(v82);
        sub_21C6C5BF8(v81);
        v22 = v39;
        if (swift_dynamicCast())
        {
          v41 = v77;
          v42 = v78;
        }

        else
        {
          sub_21C6C5BF8(v81);
          sub_21C6B028C();
          if (swift_dynamicCast())
          {
            v48 = v77;
            v49 = [v77 stringValue];
            v41 = sub_21C6CEBC0();
            v42 = v50;

            v22 = v74;
          }

          else
          {
            v41 = 0;
            v42 = 0xE000000000000000;
          }
        }

        v26 = v71;
        v12 = v62;
      }

      else
      {
        v43 = v64;
        (*v70)(v64, v82, v12);
        (*v69)(v72, v43, v12);
        v41 = sub_21C6CEBD0();
        v42 = v44;
        (*v68)(v43, v12);
        v22 = v39;
        v26 = v71;
      }

      v81[0] = v41;
      v81[1] = v42;
      sub_21C68F5F0();
      v51 = sub_21C6CED40();

      sub_21C6B02D8(v22);
      sub_21C6B02D8(v26);
      v52 = v51 == -1;
      v33 = v73;
      if (!v52)
      {
LABEL_4:
        a3 = v61 + 1;
        v29 = v60 + v56;
        v30 = v59 - 1;
        v31 = v58 + v56;
        if (v61 + 1 == v57)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v66)
      {
        break;
      }

      v53 = v67;
      sub_21C6AAA94(v31, v67);
      swift_arrayInitWithTakeFrontToBack();
      sub_21C6AAA94(v53, v29);
      v29 += v65;
      v31 += v65;
      if (__CFADD__(v32++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21C6ADBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v36 = a4;
  v35 = type metadata accessor for LocalizedSettingValue(0);
  MEMORY[0x28223BE20](v35);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *(v14 + 72);
    v18 = *v4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v33 = *v4;
    v27 = v17;
    v21 = v33 + v17 * a3;
LABEL_4:
    v31 = v18;
    v32 = a3;
    v29 = v21;
    v30 = v20;
    v22 = v18;
    while (1)
    {
      sub_21C6B0228(v21, v16);
      sub_21C6B0228(v22, v12);
      v23 = v36(v16, v12);
      sub_21C6B02D8(v12);
      sub_21C6B02D8(v16);
      if (v5)
      {
        break;
      }

      if (v23)
      {
        if (!v33)
        {
          __break(1u);
          return;
        }

        v24 = v34;
        sub_21C6AAA94(v21, v34);
        swift_arrayInitWithTakeFrontToBack();
        sub_21C6AAA94(v24, v22);
        v22 += v19;
        v21 += v19;
        if (!__CFADD__(v20++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v18 = v31 + v27;
      v20 = v30 - 1;
      v21 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_21C6ADE04(char **a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v5 = v4;
  v177 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v173 - v12;
  MEMORY[0x28223BE20](v14);
  v189 = &v173 - v15;
  MEMORY[0x28223BE20](v16);
  v188 = &v173 - v17;
  v18 = sub_21C6CDF20();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v196 = &v173 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v195 = &v173 - v22;
  MEMORY[0x28223BE20](v23);
  v183 = &v173 - v24;
  MEMORY[0x28223BE20](v25);
  v205 = &v173 - v26;
  MEMORY[0x28223BE20](v27);
  v182 = &v173 - v28;
  v210 = type metadata accessor for LocalizedSettingValue(0);
  v190 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v179 = &v173 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v199 = &v173 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v173 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v173 - v36;
  MEMORY[0x28223BE20](v38);
  v193 = &v173 - v39;
  MEMORY[0x28223BE20](v40);
  v192 = &v173 - v41;
  MEMORY[0x28223BE20](v42);
  v174 = &v173 - v43;
  MEMORY[0x28223BE20](v44);
  v173 = &v173 - v45;
  v191 = a3;
  v46 = *(a3 + 8);
  if (v46 >= 1)
  {
    v47 = 0;
    v211 = (v19 + 48);
    v203 = (v19 + 16);
    v204 = (v19 + 32);
    v48 = MEMORY[0x277D84F90];
    v202 = (v19 + 8);
    v176 = a4;
    v207 = v10;
    v208 = v18;
    v200 = v34;
    v201 = v13;
    v206 = v37;
    while (1)
    {
      v49 = v47;
      v181 = v48;
      if ((v47 + 1) < v46)
      {
        v50 = v34;
        v194 = v46;
        v175 = v5;
        v51 = *v191;
        v52 = *(v190 + 72);
        v53 = *v191 + v52 * (v47 + 1);
        v54 = v173;
        sub_21C6B0228(v53, v173);
        v178 = v49;
        v55 = v174;
        sub_21C6B0228(v51 + v52 * v49, v174);
        v216 = sub_21C6BC874(0);
        v217 = v56;
        v214 = sub_21C6BC874(0);
        v215 = v57;
        v197 = sub_21C68F5F0();
        v198 = sub_21C6CED40();

        sub_21C6B02D8(v55);
        sub_21C6B02D8(v54);
        v58 = (v178 + 2);
        v209 = v52;
        v59 = v51 + v52 * (v178 + 2);
        v60 = v193;
        do
        {
          v67 = v208;
          a3 = v192;
          if (v194 == v58)
          {
            v83 = v201;
            v82 = v194;
            goto LABEL_26;
          }

          sub_21C6B0228(v59, v192);
          sub_21C6B0228(v53, v60);
          v68 = a3;
          v69 = v188;
          sub_21C6A96C0(v68, v188);
          v70 = *v211;
          if ((*v211)(v69, 1, v67) == 1)
          {
            sub_21C6A9730(v69);
            sub_21C6C5BF8(&v216);
            if (swift_dynamicCast())
            {
              v71 = v214;
              v72 = v215;
            }

            else
            {
              sub_21C6C5BF8(&v216);
              sub_21C6B028C();
              if (swift_dynamicCast())
              {
                v75 = v214;
                v76 = [v214 stringValue];
                v71 = sub_21C6CEBC0();
                v72 = v77;

                v67 = v208;
              }

              else
              {
                v71 = 0;
                v72 = 0xE000000000000000;
              }
            }
          }

          else
          {
            v73 = v182;
            (*v204)(v182, v69, v67);
            (*v203)(v205, v73, v67);
            v71 = sub_21C6CEBD0();
            v72 = v74;
            (*v202)(v73, v67);
          }

          v214 = v71;
          v215 = v72;
          v78 = v189;
          sub_21C6A96C0(v193, v189);
          if (v70(v78, 1, v67) == 1)
          {
            sub_21C6A9730(v78);
            sub_21C6C5BF8(&v216);
            if (swift_dynamicCast())
            {
              v62 = v212;
              v64 = v213;
            }

            else
            {
              sub_21C6C5BF8(&v216);
              sub_21C6B028C();
              if (swift_dynamicCast())
              {
                v79 = v212;
                v80 = [v212 stringValue];
                v62 = sub_21C6CEBC0();
                v64 = v81;
              }

              else
              {
                v62 = 0;
                v64 = 0xE000000000000000;
              }
            }
          }

          else
          {
            v61 = v183;
            (*v204)(v183, v78, v67);
            (*v203)(v205, v61, v67);
            v62 = sub_21C6CEBD0();
            v64 = v63;
            (*v202)(v61, v67);
          }

          v65 = v198 == -1;
          v216 = v62;
          v217 = v64;
          a3 = sub_21C6CED40();

          v60 = v193;
          sub_21C6B02D8(v193);
          sub_21C6B02D8(v192);
          v66 = v65 ^ (a3 != -1);
          ++v58;
          v59 += v209;
          v53 += v209;
          v50 = v200;
        }

        while ((v66 & 1) != 0);
        v82 = (v58 - 1);
        v83 = v201;
LABEL_26:
        a4 = v176;
        v5 = v175;
        v49 = v178;
        v34 = v50;
        if (v198 != -1)
        {
          goto LABEL_39;
        }

        if (v82 < v178)
        {
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
          return;
        }

        if (v178 < v82)
        {
          a3 = v209 * (v82 - 1);
          v84 = v82 * v209;
          v194 = v82;
          v85 = v178;
          v86 = v178 * v209;
          do
          {
            if (v85 != --v82)
            {
              v87 = *v191;
              if (!*v191)
              {
                goto LABEL_168;
              }

              sub_21C6AAA94(v87 + v86, v179);
              if (v86 < a3 || v87 + v86 >= (v87 + v84))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v86 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_21C6AAA94(v179, v87 + a3);
              v50 = v200;
            }

            ++v85;
            a3 -= v209;
            v84 -= v209;
            v86 += v209;
          }

          while (v85 < v82);
          a4 = v176;
          v37 = v206;
          v49 = v178;
          v82 = v194;
          v34 = v50;
          v13 = v201;
        }

        else
        {
LABEL_39:
          v37 = v206;
          v13 = v83;
        }
      }

      else
      {
        v82 = (v47 + 1);
      }

      v88 = v191[1];
      if (v82 >= v88)
      {
        goto LABEL_49;
      }

      if (__OFSUB__(v82, v49))
      {
        goto LABEL_160;
      }

      if (v82 - v49 >= a4)
      {
LABEL_49:
        a3 = v82;
        if (v82 < v49)
        {
          goto LABEL_159;
        }

        goto LABEL_50;
      }

      if (__OFADD__(v49, a4))
      {
        goto LABEL_161;
      }

      if (v49 + a4 >= v88)
      {
        a3 = v191[1];
      }

      else
      {
        a3 = v49 + a4;
      }

      if (a3 < v49)
      {
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      if (v82 == a3)
      {
        goto LABEL_49;
      }

      v175 = v5;
      v137 = *v191;
      v138 = *(v190 + 72);
      v139 = *v191 + v138 * (v82 - 1);
      v197 = -v138;
      v178 = v49;
      v140 = (v49 - v82);
      v198 = v137;
      v180 = v138;
      v141 = v137 + v82 * v138;
      v184 = a3;
      while (2)
      {
        v194 = v82;
        v185 = v141;
        v186 = v140;
        v142 = v140;
        v187 = v139;
        v143 = v139;
        while (1)
        {
          sub_21C6B0228(v141, v37);
          v144 = v34;
          sub_21C6B0228(v143, v34);
          sub_21C6A96C0(v37, v13);
          v145 = *v211;
          v146 = v208;
          if ((*v211)(v13, 1, v208) != 1)
          {
            v149 = v13;
            v150 = v195;
            (*v204)(v195, v149, v146);
            (*v203)(v205, v150, v146);
            v147 = sub_21C6CEBD0();
            v148 = v151;
            v152 = v150;
            v153 = v200;
            (*v202)(v152, v146);
LABEL_109:
            v154 = v207;
            goto LABEL_114;
          }

          sub_21C6A9730(v13);
          sub_21C6C5BF8(&v216);
          if (swift_dynamicCast())
          {
            v147 = v214;
            v148 = v215;
          }

          else
          {
            sub_21C6C5BF8(&v216);
            sub_21C6B028C();
            if (swift_dynamicCast())
            {
              v155 = v214;
              v156 = [v214 stringValue];
              v147 = sub_21C6CEBC0();
              v148 = v157;

              v146 = v208;
              v153 = v200;
              goto LABEL_109;
            }

            v147 = 0;
            v148 = 0xE000000000000000;
          }

          v146 = v208;
          v153 = v144;
          v154 = v207;
LABEL_114:
          v214 = v147;
          v215 = v148;
          v209 = v148;
          sub_21C6A96C0(v153, v154);
          if (v145(v154, 1, v146) == 1)
          {
            sub_21C6A9730(v154);
            sub_21C6C5BF8(&v216);
            v34 = v153;
            if (swift_dynamicCast())
            {
              v158 = v212;
              v159 = v213;
            }

            else
            {
              sub_21C6C5BF8(&v216);
              sub_21C6B028C();
              if (swift_dynamicCast())
              {
                v165 = v212;
                v166 = [v212 stringValue];
                v158 = sub_21C6CEBC0();
                v159 = v167;

                v34 = v200;
              }

              else
              {
                v158 = 0;
                v159 = 0xE000000000000000;
              }
            }
          }

          else
          {
            v160 = v196;
            (*v204)(v196, v154, v146);
            (*v203)(v205, v160, v146);
            v158 = sub_21C6CEBD0();
            v159 = v161;
            (*v202)(v160, v146);
            v34 = v153;
          }

          v216 = v158;
          v217 = v159;
          sub_21C68F5F0();
          v162 = sub_21C6CED40();

          sub_21C6B02D8(v34);
          v37 = v206;
          sub_21C6B02D8(v206);
          if (v162 != -1)
          {
            break;
          }

          v13 = v201;
          if (!v198)
          {
            goto LABEL_165;
          }

          v163 = v199;
          sub_21C6AAA94(v141, v199);
          swift_arrayInitWithTakeFrontToBack();
          sub_21C6AAA94(v163, v143);
          v143 += v197;
          v141 += v197;
          if (__CFADD__(v142++, 1))
          {
            goto LABEL_103;
          }
        }

        v13 = v201;
LABEL_103:
        v82 = v194 + 1;
        v139 = v187 + v180;
        v140 = v186 - 1;
        v141 = v185 + v180;
        a3 = v184;
        if (v194 + 1 != v184)
        {
          continue;
        }

        break;
      }

      v5 = v175;
      v49 = v178;
      if (v184 < v178)
      {
        goto LABEL_159;
      }

LABEL_50:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v184 = a3;
      if (isUniquelyReferenced_nonNull_native)
      {
        v48 = v181;
      }

      else
      {
        v48 = sub_21C6B0110(0, *(v181 + 2) + 1, 1, v181);
      }

      v91 = *(v48 + 2);
      v90 = *(v48 + 3);
      a3 = v91 + 1;
      if (v91 >= v90 >> 1)
      {
        v48 = sub_21C6B0110((v90 > 1), v91 + 1, 1, v48);
      }

      *(v48 + 2) = a3;
      v92 = &v48[16 * v91];
      v93 = v184;
      *(v92 + 4) = v49;
      *(v92 + 5) = v93;
      v209 = *v177;
      if (!v209)
      {
        goto LABEL_169;
      }

      if (v91)
      {
        v37 = v206;
        while (1)
        {
          v94 = a3 - 1;
          if (a3 >= 4)
          {
            break;
          }

          if (a3 == 3)
          {
            v95 = *(v48 + 4);
            v96 = *(v48 + 5);
            v105 = __OFSUB__(v96, v95);
            v97 = v96 - v95;
            v98 = v105;
LABEL_70:
            if (v98)
            {
              goto LABEL_148;
            }

            v111 = &v48[16 * a3];
            v113 = *v111;
            v112 = *(v111 + 1);
            v114 = __OFSUB__(v112, v113);
            v115 = v112 - v113;
            v116 = v114;
            if (v114)
            {
              goto LABEL_151;
            }

            v117 = &v48[16 * v94 + 32];
            v119 = *v117;
            v118 = *(v117 + 1);
            v105 = __OFSUB__(v118, v119);
            v120 = v118 - v119;
            if (v105)
            {
              goto LABEL_154;
            }

            if (__OFADD__(v115, v120))
            {
              goto LABEL_155;
            }

            if (v115 + v120 >= v97)
            {
              if (v97 < v120)
              {
                v94 = a3 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          v121 = &v48[16 * a3];
          v123 = *v121;
          v122 = *(v121 + 1);
          v105 = __OFSUB__(v122, v123);
          v115 = v122 - v123;
          v116 = v105;
LABEL_84:
          if (v116)
          {
            goto LABEL_150;
          }

          v124 = &v48[16 * v94];
          v126 = *(v124 + 4);
          v125 = *(v124 + 5);
          v105 = __OFSUB__(v125, v126);
          v127 = v125 - v126;
          if (v105)
          {
            goto LABEL_153;
          }

          if (v127 < v115)
          {
            goto LABEL_4;
          }

LABEL_91:
          v132 = v94 - 1;
          if (v94 - 1 >= a3)
          {
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
            goto LABEL_162;
          }

          if (!*v191)
          {
            goto LABEL_166;
          }

          v49 = v13;
          v133 = v48;
          a3 = *&v48[16 * v132 + 32];
          v134 = *&v48[16 * v94 + 40];
          sub_21C6AF1A0((*v191 + *(v190 + 72) * a3), (*v191 + *(v190 + 72) * *&v48[16 * v94 + 32]), (*v191 + *(v190 + 72) * v134), v209);
          if (v5)
          {
            goto LABEL_142;
          }

          if (v134 < a3)
          {
            goto LABEL_144;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v135 = v133;
          }

          else
          {
            v135 = sub_21C6B0018(v133);
          }

          v34 = v200;
          if (v132 >= *(v135 + 2))
          {
            goto LABEL_145;
          }

          v13 = v49;
          v136 = &v135[16 * v132];
          *(v136 + 4) = a3;
          *(v136 + 5) = v134;
          v218 = v135;
          sub_21C6AFF8C(v94);
          v48 = v218;
          a3 = *(v218 + 2);
          v37 = v206;
          if (a3 <= 1)
          {
            goto LABEL_4;
          }
        }

        v99 = &v48[16 * a3 + 32];
        v100 = *(v99 - 64);
        v101 = *(v99 - 56);
        v105 = __OFSUB__(v101, v100);
        v102 = v101 - v100;
        if (v105)
        {
          goto LABEL_146;
        }

        v104 = *(v99 - 48);
        v103 = *(v99 - 40);
        v105 = __OFSUB__(v103, v104);
        v97 = v103 - v104;
        v98 = v105;
        if (v105)
        {
          goto LABEL_147;
        }

        v106 = &v48[16 * a3];
        v108 = *v106;
        v107 = *(v106 + 1);
        v105 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v105)
        {
          goto LABEL_149;
        }

        v105 = __OFADD__(v97, v109);
        v110 = v97 + v109;
        if (v105)
        {
          goto LABEL_152;
        }

        if (v110 >= v102)
        {
          v128 = &v48[16 * v94 + 32];
          v130 = *v128;
          v129 = *(v128 + 1);
          v105 = __OFSUB__(v129, v130);
          v131 = v129 - v130;
          if (v105)
          {
            goto LABEL_156;
          }

          if (v97 < v131)
          {
            v94 = a3 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_70;
      }

      v37 = v206;
LABEL_4:
      v46 = v191[1];
      v47 = v184;
      a4 = v176;
      if (v184 >= v46)
      {
        goto LABEL_131;
      }
    }
  }

  v48 = MEMORY[0x277D84F90];
LABEL_131:
  v49 = *v177;
  if (!*v177)
  {
    goto LABEL_170;
  }

  a3 = v48;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v168 = a3;
  }

  else
  {
LABEL_163:
    v168 = sub_21C6B0018(a3);
  }

  v218 = v168;
  a3 = *(v168 + 2);
  if (a3 >= 2)
  {
    while (*v191)
    {
      v169 = *&v168[16 * a3];
      v170 = v168;
      v171 = *&v168[16 * a3 + 24];
      sub_21C6AF1A0((*v191 + *(v190 + 72) * v169), (*v191 + *(v190 + 72) * *&v168[16 * a3 + 16]), (*v191 + *(v190 + 72) * v171), v49);
      if (v5)
      {
        goto LABEL_142;
      }

      if (v171 < v169)
      {
        goto LABEL_157;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v170 = sub_21C6B0018(v170);
      }

      if ((a3 - 2) >= *(v170 + 2))
      {
        goto LABEL_158;
      }

      v172 = &v170[16 * a3];
      *v172 = v169;
      *(v172 + 1) = v171;
      v218 = v170;
      sub_21C6AFF8C(a3 - 1);
      v168 = v218;
      a3 = *(v218 + 2);
      if (a3 <= 1)
      {
        goto LABEL_142;
      }
    }

    goto LABEL_167;
  }

LABEL_142:
}

void sub_21C6AF1A0(char *a1, char *a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  MEMORY[0x28223BE20](v8 - 8);
  v106 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v105 = (v96 - v11);
  MEMORY[0x28223BE20](v12);
  v109 = v96 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = v96 - v15;
  v17 = sub_21C6CDF20();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v98 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v97 = v96 - v21;
  MEMORY[0x28223BE20](v22);
  v101 = (v96 - v23);
  MEMORY[0x28223BE20](v24);
  v111 = v96 - v25;
  MEMORY[0x28223BE20](v26);
  v100 = v96 - v27;
  v115 = type metadata accessor for LocalizedSettingValue(0);
  MEMORY[0x28223BE20](v115);
  v112 = (v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v107 = v96 - v30;
  MEMORY[0x28223BE20](v31);
  v114 = v96 - v32;
  MEMORY[0x28223BE20](v33);
  v113 = v96 - v34;
  v36 = *(v35 + 72);
  if (!v36)
  {
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v36 == -1)
  {
    goto LABEL_94;
  }

  v37 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v36 == -1)
  {
    goto LABEL_95;
  }

  v38 = (a2 - a1) / v36;
  v124 = a1;
  v123 = a4;
  if (v38 < v37 / v36)
  {
    v39 = v38 * v36;
    if (a4 < a1 || &a1[v39] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v107 = &a4[v39];
    v122 = &a4[v39];
    if (v39 < 1 || a2 >= a3)
    {
      goto LABEL_92;
    }

    v112 = (v18 + 48);
    v105 = (v18 + 32);
    v104 = (v18 + 16);
    v103 = (v18 + 8);
    v102 = v16;
    v106 = v36;
    v108 = a3;
    v99 = v17;
    while (1)
    {
      v42 = v113;
      sub_21C6B0228(a2, v113);
      v43 = v114;
      sub_21C6B0228(a4, v114);
      sub_21C6A96C0(v42, v16);
      v44 = *v112;
      if ((*v112)(v16, 1, v17) == 1)
      {
        break;
      }

      v48 = v100;
      (*v105)(v100, v16, v17);
      (*v104)(v111, v48, v17);
      v47 = sub_21C6CEBD0();
      v46 = v49;
      v50 = v48;
      v43 = v114;
      (*v103)(v50, v17);
LABEL_30:
      v118 = v47;
      v119 = v46;
      v54 = v109;
      sub_21C6A96C0(v43, v109);
      if (v44(v54, 1, v17) == 1)
      {
        v110 = a4;
        v55 = a2;
        sub_21C6A9730(v54);
        sub_21C6C5BF8(&v120);
        v56 = swift_dynamicCast();
        v57 = v108;
        if (v56)
        {
          v58 = v116;
          v59 = v117;
        }

        else
        {
          sub_21C6C5BF8(&v120);
          sub_21C6B028C();
          if (swift_dynamicCast())
          {
            v62 = v116;
            v63 = [v116 stringValue];
            v58 = sub_21C6CEBC0();
            v59 = v64;

            v57 = v108;
          }

          else
          {
            v58 = 0;
            v59 = 0xE000000000000000;
          }
        }

        a2 = v55;
        a4 = v110;
        v16 = v102;
      }

      else
      {
        v60 = v101;
        (*v105)(v101, v54, v17);
        (*v104)(v111, v60, v17);
        v58 = sub_21C6CEBD0();
        v59 = v61;
        (*v103)(v60, v17);
        v57 = v108;
      }

      v120 = v58;
      v121 = v59;
      sub_21C68F5F0();
      v65 = sub_21C6CED40();

      sub_21C6B02D8(v114);
      sub_21C6B02D8(v113);
      if (v65 == -1)
      {
        v66 = v106;
        if (a1 < a2 || a1 >= &a2[v106])
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v66;
      }

      else
      {
        v66 = v106;
        v67 = &a4[v106];
        if (a1 < a4 || a1 >= v67)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v123 = v67;
        a4 += v66;
      }

      a1 += v66;
      v124 = a1;
      if (a4 >= v107 || a2 >= v57)
      {
        goto LABEL_92;
      }
    }

    v110 = a1;
    v45 = a2;
    sub_21C6A9730(v16);
    sub_21C6C5BF8(&v120);
    if (swift_dynamicCast())
    {
      v47 = v118;
      v46 = v119;
    }

    else
    {
      sub_21C6C5BF8(&v120);
      sub_21C6B028C();
      if (swift_dynamicCast())
      {
        v51 = v118;
        v52 = [v118 stringValue];
        v47 = sub_21C6CEBC0();
        v46 = v53;

        v43 = v114;
        a2 = v45;
        v16 = v102;
        v17 = v99;
LABEL_29:
        a1 = v110;
        goto LABEL_30;
      }

      v47 = 0;
      v46 = 0xE000000000000000;
    }

    v17 = v99;
    goto LABEL_29;
  }

  v40 = v37 / v36 * v36;
  if (a4 < a2 || &a2[v40] <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v68 = &a4[v40];
  if (v40 < 1)
  {
    goto LABEL_89;
  }

  v69 = -v36;
  v109 = (v18 + 48);
  v103 = (v18 + 32);
  v102 = (v18 + 16);
  v101 = (v18 + 8);
  v70 = &a4[v40];
  v110 = a4;
  v71 = v112;
  v72 = v107;
  v113 = -v36;
  do
  {
    v96[0] = v68;
    v73 = a2;
    a2 += v69;
    v104 = a2;
    v108 = v73;
    while (1)
    {
      if (v73 <= a1)
      {
        v124 = v73;
        v68 = v96[0];
        goto LABEL_91;
      }

      v75 = a3;
      v100 = v68;
      v114 = v70 + v69;
      sub_21C6B0228(v70 + v69, v72);
      sub_21C6B0228(a2, v71);
      v76 = v105;
      sub_21C6A96C0(v72, v105);
      v77 = *v109;
      if ((*v109)(v76, 1, v17) == 1)
      {
        sub_21C6A9730(v76);
        sub_21C6C5BF8(&v120);
        if (swift_dynamicCast())
        {
          v78 = v118;
          v79 = v119;
        }

        else
        {
          sub_21C6C5BF8(&v120);
          sub_21C6B028C();
          if (swift_dynamicCast())
          {
            v89 = v118;
            v90 = [v118 stringValue];
            v78 = sub_21C6CEBC0();
            v79 = v91;
          }

          else
          {
            v78 = 0;
            v79 = 0xE000000000000000;
          }
        }
      }

      else
      {
        v80 = v97;
        (*v103)(v97, v76, v17);
        (*v102)(v111, v80, v17);
        v78 = sub_21C6CEBD0();
        v79 = v81;
        (*v101)(v80, v17);
      }

      v118 = v78;
      v119 = v79;
      v82 = v106;
      sub_21C6A96C0(v112, v106);
      if (v77(v82, 1, v17) != 1)
      {
        v85 = v98;
        (*v103)(v98, v82, v17);
        (*v102)(v111, v85, v17);
        v83 = sub_21C6CEBD0();
        v84 = v86;
        (*v101)(v85, v17);
        goto LABEL_71;
      }

      sub_21C6A9730(v82);
      sub_21C6C5BF8(&v120);
      if (swift_dynamicCast())
      {
        v83 = v116;
        v84 = v117;
LABEL_71:
        a2 = v104;
        goto LABEL_72;
      }

      sub_21C6C5BF8(&v120);
      sub_21C6B028C();
      if (!swift_dynamicCast())
      {
        v83 = 0;
        v84 = 0xE000000000000000;
        goto LABEL_71;
      }

      v92 = v116;
      v93 = [v116 stringValue];
      v83 = sub_21C6CEBC0();
      v84 = v94;

      a2 = v104;
LABEL_72:
      a3 = &v75[v113];
      v120 = v83;
      v121 = v84;
      sub_21C68F5F0();
      v87 = sub_21C6CED40();

      v71 = v112;
      sub_21C6B02D8(v112);
      v72 = v107;
      sub_21C6B02D8(v107);
      if (v87 == -1)
      {
        break;
      }

      v68 = v114;
      v88 = v110;
      if (v75 < v70 || a3 >= v70)
      {
        v74 = v114;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v75 == v70)
        {
          goto LABEL_60;
        }

        v74 = v114;
        swift_arrayInitWithTakeBackToFront();
      }

      v68 = v74;
LABEL_60:
      v70 = v68;
      v69 = v113;
      v73 = v108;
      if (v114 <= v88)
      {
        v124 = v108;
        goto LABEL_91;
      }
    }

    v95 = v110;
    if (v75 < v108 || a3 >= v108)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v75 != v108)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = v100;
    v69 = v113;
  }

  while (v70 > v95);
LABEL_89:
  v124 = a2;
LABEL_91:
  v122 = v68;
LABEL_92:
  sub_21C6B002C(&v124, &v123, &v122);
}

uint64_t sub_21C6AFF8C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21C6B0018(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_21C6B002C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for LocalizedSettingValue(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_21C6B0110(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F98, &qword_21C6D1150);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_21C6B0228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedSettingValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C6B028C()
{
  result = qword_27CDE6F90;
  if (!qword_27CDE6F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDE6F90);
  }

  return result;
}

uint64_t sub_21C6B02D8(uint64_t a1)
{
  v2 = type metadata accessor for LocalizedSettingValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C6B0334()
{
  result = qword_27CDE6FA0;
  if (!qword_27CDE6FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6FA8, &qword_21C6D1158);
    sub_21C694224(&qword_27CDE6F78, &qword_27CDE6F60, &qword_21C6D1128, MEMORY[0x277CE1198]);
    sub_21C6AD134();
    sub_21C6AD218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6FA0);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_21C6B042C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C6B0474(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_21C6B04E0()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    v5 = 6578512;
  }

  else
  {
    v5 = 0x656E6F6850;
  }

  if (v4)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = (v1 + 40);
  v8 = v2 + 1;
  do
  {
    v9 = --v8 != 0;
    if (!v8)
    {
      break;
    }

    if (*(v7 - 1) == v5 && *v7 == v6)
    {
      break;
    }

    v7 += 2;
  }

  while ((sub_21C6CEE20() & 1) == 0);

  return v9;
}

uint64_t sub_21C6B05C8()
{
  v1 = 0xD000000000000014;
  v2 = "ers";
  v3 = *v0;
  v4 = "PSSliderSpecifier";
  v5 = "PSTitleValueSpecifier";
  if (v3 == 4)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v3 != 4)
  {
    v5 = "PSTextFieldSpecifier";
  }

  if (v3 == 3)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = v6;
  }

  if (v3 != 3)
  {
    v4 = v5;
  }

  v8 = "PSChildPaneSpecifier";
  v9 = 0xD000000000000017;
  if (v3 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = "PSToggleSwitchSpecifier";
  }

  if (*v0)
  {
    v1 = v9;
    v2 = v8;
  }

  if (*v0 <= 2u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v7;
  }

  if (*v0 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x21CF0F390](v10, v11 | 0x8000000000000000);

  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  MEMORY[0x21CF0F390](*(v0 + 1), *(v0 + 2));
  return 0;
}

uint64_t sub_21C6B06CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C6B05C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21C6B06F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (*(a1 + 16))
  {
    v12 = sub_21C6C70F8(7955787, 0xE300000000000000);
    if (v13)
    {
      sub_21C6A2734(*(a1 + 56) + 32 * v12, v41);
      if (swift_dynamicCast())
      {
        v14 = HIBYTE(v40) & 0xF;
        if ((v40 & 0x2000000000000000) == 0)
        {
          v14 = v39 & 0xFFFFFFFFFFFFLL;
        }

        if (v14)
        {
          if (*(a1 + 16))
          {
            v15 = sub_21C6C70F8(0x56746C7561666544, 0xEC00000065756C61);
            if (v16)
            {
              sub_21C6A2734(*(a1 + 56) + 32 * v15, v41);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_27;
              }

              if (*(a1 + 16))
              {
                v17 = sub_21C6C70F8(0x566D756D696E694DLL, 0xEC00000065756C61);
                if (v18)
                {
                  sub_21C6A2734(*(a1 + 56) + 32 * v17, v41);
                  if (swift_dynamicCast())
                  {
                    if (*(a1 + 16))
                    {
                      v19 = sub_21C6C70F8(0x566D756D6978614DLL, 0xEC00000065756C61);
                      if (v20)
                      {
                        sub_21C6A2734(*(a1 + 56) + 32 * v19, v41);
                        if (swift_dynamicCast())
                        {
                          if (*(a1 + 16))
                          {
                            v21 = sub_21C6C70F8(0xD000000000000011, 0x800000021C6D31B0);
                            if (v22 & 1) != 0 && (sub_21C6A2734(*(a1 + 56) + 32 * v21, v41), (swift_dynamicCast()))
                            {
                              v24 = v39;
                              v23 = v40;
                            }

                            else
                            {
                              v24 = 0;
                              v23 = 0;
                            }

                            if (*(a1 + 16))
                            {
                              v35 = sub_21C6C70F8(0xD000000000000011, 0x800000021C6D31D0);
                              if (v36 & 1) != 0 && (sub_21C6A2734(*(a1 + 56) + 32 * v35, v41), (swift_dynamicCast()))
                              {
                                v31 = v39;
                                v32 = v40;
                              }

                              else
                              {
                                v31 = 0;
                                v32 = 0;
                              }

                              if (*(a1 + 16))
                              {
                                v37 = sub_21C6C70F8(0xD00000000000001CLL, 0x800000021C6D3170);
                                if (v38)
                                {
                                  sub_21C6A2734(*(a1 + 56) + 32 * v37, v41);

                                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DB0, &unk_21C6D0E60);
                                  result = swift_dynamicCast();
                                  if (result)
                                  {
                                    v33 = v39;
                                    goto LABEL_37;
                                  }

LABEL_36:
                                  v33 = MEMORY[0x277D84F90];
LABEL_37:
                                  v26 = v39;
                                  v27 = v40;
                                  v29 = v39;
                                  v28 = v39;
                                  v30 = v39;
                                  v34 = 2;
                                  goto LABEL_26;
                                }
                              }

LABEL_35:

                              goto LABEL_36;
                            }
                          }

                          else
                          {
                            v23 = 0;
                            v24 = 0;
                          }

                          v32 = 0;
                          v31 = 0;
                          goto LABEL_35;
                        }

                        goto LABEL_27;
                      }
                    }

                    goto LABEL_21;
                  }

LABEL_27:

                  goto LABEL_24;
                }
              }
            }
          }

LABEL_21:

          goto LABEL_25;
        }
      }

LABEL_24:

      goto LABEL_25;
    }
  }

LABEL_25:

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v24 = 0;
  v23 = 0;
  v31 = 0;
  v32 = 0;
  a2 = 0;
  a3 = 0;
  a4 = 0;
  a5 = 0;
  v33 = 0;
  v34 = 0;
LABEL_26:
  *a6 = v34;
  a6[1] = v26;
  a6[2] = v27;
  a6[3] = v28;
  a6[4] = v29;
  a6[5] = v30;
  a6[6] = v24;
  a6[7] = v23;
  a6[8] = v31;
  a6[9] = v32;
  a6[10] = a2;
  a6[11] = a3;
  a6[12] = a4;
  a6[13] = a5;
  a6[14] = v33;
  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_21C6B0B70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C6B0BB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_21C6B0C48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6FB0, &qword_21C6D1328);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - v3;
  result = sub_21C6CE230();
  v12 = v15;
  v13 = v16;
  v14 = v17;
  v6 = *(v0 + 104);
  v22 = *(v0 + 88);
  v23 = v6;
  v24 = *(v0 + 120);
  v7 = *(v0 + 136);
  v8 = *(v0 + 40);
  v18 = *(v0 + 24);
  v19 = v8;
  v9 = *(v0 + 72);
  v20 = *(v0 + 56);
  v21 = v9;
  v25 = v7;
  if (*&v20 > *(&v20 + 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v20;
    v10[1] = sub_21C6B0E64();
    v10[0] = sub_21C6B11A8();
    sub_21C6B14F0();
    sub_21C6CE9C0();
    sub_21C6B05C8();
    sub_21C6B1544();
    sub_21C6CE7F0();

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_21C6B0E64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6FC8, &qword_21C6D1330);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v23 - v2;
  v4 = sub_21C6CE4B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 80) && ((v25 = *(v0 + 8), v9 = *v0, v24 = v9, v25 != 1) ? (v11 = v6, , sub_21C6CECF0(), v12 = sub_21C6CE6C0(), sub_21C6CE170(), v12, sub_21C6CE4A0(), swift_getAtKeyPath(), sub_21C68F7D4(&v24, &qword_27CDE6FD0, &qword_21C6D1338), (*(v5 + 8))(v8, v11), v10 = v23[1]) : (v10 = v9), v13 = [objc_opt_self() mainScreen], v14 = objc_msgSend(v13, sel_traitCollection), v13, v15 = sub_21C6CEB90(), v16 = objc_msgSend(objc_opt_self(), sel_imageNamed_inBundle_compatibleWithTraitCollection_, v15, v10, v14), v15, v10, v14, v16))
  {
    v17 = v16;
    sub_21C6CE8F0();
    v18 = *MEMORY[0x277CE1010];
    v19 = sub_21C6CE920();
    v20 = *(v19 - 8);
    (*(v20 + 104))(v3, v18, v19);
    (*(v20 + 56))(v3, 0, 1, v19);
    v21 = sub_21C6CE910();

    sub_21C68F7D4(v3, &qword_27CDE6FC8, &qword_21C6D1330);
    return v21;
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    return sub_21C6CE8F0();
  }
}

uint64_t sub_21C6B11A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6FC8, &qword_21C6D1330);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v23 - v2;
  v4 = sub_21C6CE4B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 96) && ((v25 = *(v0 + 8), v9 = *v0, v24 = v9, v25 != 1) ? (v11 = v6, , sub_21C6CECF0(), v12 = sub_21C6CE6C0(), sub_21C6CE170(), v12, sub_21C6CE4A0(), swift_getAtKeyPath(), sub_21C68F7D4(&v24, &qword_27CDE6FD0, &qword_21C6D1338), (*(v5 + 8))(v8, v11), v10 = v23[1]) : (v10 = v9), v13 = [objc_opt_self() mainScreen], v14 = objc_msgSend(v13, sel_traitCollection), v13, v15 = sub_21C6CEB90(), v16 = objc_msgSend(objc_opt_self(), sel_imageNamed_inBundle_compatibleWithTraitCollection_, v15, v10, v14), v15, v10, v14, v16))
  {
    v17 = v16;
    sub_21C6CE8F0();
    v18 = *MEMORY[0x277CE1010];
    v19 = sub_21C6CE920();
    v20 = *(v19 - 8);
    (*(v20 + 104))(v3, v18, v19);
    (*(v20 + 56))(v3, 0, 1, v19);
    v21 = sub_21C6CE910();

    sub_21C68F7D4(v3, &qword_27CDE6FC8, &qword_21C6D1330);
    return v21;
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    return sub_21C6CE8F0();
  }
}

unint64_t sub_21C6B14F0()
{
  result = qword_27CDE6FB8;
  if (!qword_27CDE6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6FB8);
  }

  return result;
}

unint64_t sub_21C6B1544()
{
  result = qword_27CDE6FC0;
  if (!qword_27CDE6FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6FB0, &qword_21C6D1328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6FC0);
  }

  return result;
}

unint64_t sub_21C6B15A8()
{
  result = qword_27CDE6FD8;
  if (!qword_27CDE6FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6FE0, &unk_21C6D1340);
    sub_21C6B1544();
    sub_21C6AD1C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6FD8);
  }

  return result;
}

BOOL sub_21C6B1634()
{
  v1 = *(v0 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_supportedUserInterfaceIdioms);
  if (!*(v1 + 16))
  {
    return 1;
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v4 = 6578512;
  }

  else
  {
    v4 = 0x656E6F6850;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = (v1 + 40);
  v7 = *(v1 + 16) + 1;
  do
  {
    v8 = --v7 != 0;
    if (!v7)
    {
      break;
    }

    if (*(v6 - 1) == v4 && *v6 == v5)
    {
      break;
    }

    v6 += 2;
  }

  while ((sub_21C6CEE20() & 1) == 0);

  return v8;
}

uint64_t sub_21C6B1728()
{
  sub_21C6A9730(v0 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_localizedHeader);
  sub_21C6A9730(v0 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_localizedFooter);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for StandardGroupSetting(uint64_t a1)
{
  result = qword_27CDE6FE8;
  if (!qword_27CDE6FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6B1838(uint64_t a1)
{
  sub_21C6B18F8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21C6B18F8(uint64_t a1)
{
  if (!qword_27CDE6F40)
  {
    sub_21C6CDF20();
    v1 = sub_21C6CED30();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDE6F40);
    }
  }
}

uint64_t sub_21C6B1950()
{
  v1 = type metadata accessor for MultiValueSetting(0);
  MEMORY[0x28223BE20](v1 - 8);
  v83 = v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for TextFieldSetting(0);
  MEMORY[0x28223BE20](v82);
  v86 = v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for TitleValueSetting(0);
  MEMORY[0x28223BE20](v81);
  v85 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ToggleSetting(0);
  MEMORY[0x28223BE20](v5 - 8);
  v80 = v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChildPaneSetting(0);
  MEMORY[0x28223BE20](v7 - 8);
  v79 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Setting(0);
  v97 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v10 = (v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v78 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v78 - v18;
  v20 = sub_21C6CDF20();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v96 = v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v78 - v25;
  v103 = 0;
  v104 = 0xE000000000000000;
  if (*(v0 + 16))
  {
    v27 = 0xD000000000000015;
  }

  else
  {
    v27 = 0xD000000000000010;
  }

  if (*(v0 + 16))
  {
    v28 = "PSGroupSpecifier";
  }

  else
  {
    v28 = "PSMultiValueSpecifier";
  }

  MEMORY[0x21CF0F390](v27, v28 | 0x8000000000000000, v24);

  v105 = v103;
  v106 = v104;
  v98 = v0;
  sub_21C6A96C0(v0 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_localizedHeader, v19);
  v29 = *(v21 + 48);
  if (v29(v19, 1, v20) == 1)
  {
    sub_21C6A9730(v19);
  }

  else
  {
    (*(v21 + 32))(v26, v19, v20);
    v103 = 46;
    v104 = 0xE100000000000000;
    v30 = sub_21C6CDF10();
    MEMORY[0x21CF0F390](v30);

    MEMORY[0x21CF0F390](v103, v104);

    (*(v21 + 8))(v26, v20);
  }

  v31 = v98;
  sub_21C6A96C0(v98 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_localizedFooter, v16);
  if (v29(v16, 1, v20) == 1)
  {
    sub_21C6A9730(v16);
  }

  else
  {
    v32 = v96;
    (*(v21 + 32))(v96, v16, v20);
    v103 = 46;
    v104 = 0xE100000000000000;
    v33 = sub_21C6CDF10();
    MEMORY[0x21CF0F390](v33);

    MEMORY[0x21CF0F390](v103, v104);

    (*(v21 + 8))(v32, v20);
  }

  v34 = v86;
  v35 = v85;
  v36 = OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_items;
  swift_beginAccess();
  v37 = *(v31 + v36);
  v38 = *(v37 + 16);
  if (v38)
  {
    v39 = v37 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
    v98 = *(v97 + 72);
    v78[1] = v37;

    v96 = "ers";
    v97 = 0xD000000000000014;
    v94 = "PSTitleValueSpecifier";
    v95 = "PSSliderSpecifier";
    v92 = "PSChildPaneSpecifier";
    v93 = "PSTextFieldSpecifier";
    v90 = 0xD000000000000011;
    v91 = "PSToggleSwitchSpecifier";
    while (1)
    {
      sub_21C6B2424(v39, v13, v40);
      v101 = 46;
      v102 = 0xE100000000000000;
      sub_21C6B2424(v13, v10, v48);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_21C6B2488(v10, v35, type metadata accessor for TitleValueSetting);
          v99 = 0;
          v100 = 0xE000000000000000;
          v58 = *v35;
          if (v58 == 4)
          {
            v59 = v97;
          }

          else
          {
            v59 = 0xD000000000000015;
          }

          v60 = v94;
          if (v58 != 4)
          {
            v60 = v93;
          }

          if (v58 == 3)
          {
            v59 = 0xD000000000000015;
            v60 = v95;
          }

          v61 = 0xD000000000000017;
          if (v58 != 1)
          {
            v61 = v90;
          }

          v62 = v92;
          if (v58 != 1)
          {
            v62 = v91;
          }

          if (!*v35)
          {
            v61 = v97;
            v62 = v96;
          }

          if (*v35 <= 2u)
          {
            v63 = v61;
          }

          else
          {
            v63 = v59;
          }

          if (*v35 <= 2u)
          {
            v64 = v62;
          }

          else
          {
            v64 = v60;
          }

          MEMORY[0x21CF0F390](v63, v64 | 0x8000000000000000);

          MEMORY[0x21CF0F390](46, 0xE100000000000000);
          MEMORY[0x21CF0F390](*&v35[*(v81 + 24)], *&v35[*(v81 + 24) + 8]);
          v42 = v99;
          v44 = v100;
          v46 = type metadata accessor for TitleValueSetting;
          v47 = v35;
          goto LABEL_17;
        }

        if (EnumCaseMultiPayload == 4)
        {
          sub_21C6B2488(v10, v34, type metadata accessor for TextFieldSetting);
          v99 = 0;
          v100 = 0xE000000000000000;
          v51 = *v34;
          if (v51 == 4)
          {
            v52 = v97;
          }

          else
          {
            v52 = 0xD000000000000015;
          }

          v53 = v94;
          if (v51 != 4)
          {
            v53 = v93;
          }

          if (v51 == 3)
          {
            v52 = 0xD000000000000015;
            v53 = v95;
          }

          v54 = 0xD000000000000017;
          if (v51 != 1)
          {
            v54 = v90;
          }

          v55 = v92;
          if (v51 != 1)
          {
            v55 = v91;
          }

          if (!*v34)
          {
            v54 = v97;
            v55 = v96;
          }

          if (*v34 <= 2u)
          {
            v56 = v54;
          }

          else
          {
            v56 = v52;
          }

          if (*v34 <= 2u)
          {
            v57 = v55;
          }

          else
          {
            v57 = v53;
          }

          MEMORY[0x21CF0F390](v56, v57 | 0x8000000000000000);

          MEMORY[0x21CF0F390](46, 0xE100000000000000);
          MEMORY[0x21CF0F390](*&v34[*(v82 + 24)], *&v34[*(v82 + 24) + 8]);
          v42 = v99;
          v44 = v100;
          v46 = type metadata accessor for TextFieldSetting;
          v47 = v34;
          goto LABEL_17;
        }

        v41 = v83;
        sub_21C6B2488(v10, v83, type metadata accessor for MultiValueSetting);
        v42 = sub_21C6A6E50();
        v44 = v76;
        v45 = type metadata accessor for MultiValueSetting;
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v65 = *v10;
          v67 = v10[1];
          v66 = v10[2];
          v68 = v10[7];
          v89 = v10[9];
          v69 = v10[13];
          v87 = v68;
          v88 = v69;
          v99 = 0;
          v100 = 0xE000000000000000;
          if (v65 == 4)
          {
            v70 = v97;
          }

          else
          {
            v70 = 0xD000000000000015;
          }

          v71 = v94;
          if (v65 != 4)
          {
            v71 = v93;
          }

          if (v65 == 3)
          {
            v70 = 0xD000000000000015;
            v71 = v95;
          }

          v72 = 0xD000000000000017;
          if (v65 != 1)
          {
            v72 = v90;
          }

          v73 = v92;
          if (v65 != 1)
          {
            v73 = v91;
          }

          if (!v65)
          {
            v72 = v97;
            v73 = v96;
          }

          if (v65 <= 2)
          {
            v74 = v72;
          }

          else
          {
            v74 = v70;
          }

          if (v65 <= 2)
          {
            v75 = v73;
          }

          else
          {
            v75 = v71;
          }

          MEMORY[0x21CF0F390](v74, v75 | 0x8000000000000000);

          MEMORY[0x21CF0F390](46, 0xE100000000000000);
          MEMORY[0x21CF0F390](v67, v66);

          v42 = v99;
          v44 = v100;
          v34 = v86;
          v35 = v85;
          goto LABEL_18;
        }

        v41 = v80;
        sub_21C6B2488(v10, v80, type metadata accessor for ToggleSetting);
        v42 = sub_21C6BA95C();
        v44 = v50;
        v45 = type metadata accessor for ToggleSetting;
      }

      else
      {
        v41 = v79;
        sub_21C6B2488(v10, v79, type metadata accessor for ChildPaneSetting);
        v42 = sub_21C6A3054();
        v44 = v43;
        v45 = type metadata accessor for ChildPaneSetting;
      }

      v46 = v45;
      v47 = v41;
LABEL_17:
      sub_21C6B24F0(v47, v46);
LABEL_18:
      MEMORY[0x21CF0F390](v42, v44);

      MEMORY[0x21CF0F390](v101, v102);

      sub_21C6B24F0(v13, type metadata accessor for Setting);
      v39 += v98;
      if (!--v38)
      {

        return v105;
      }
    }
  }

  return v105;
}

uint64_t sub_21C6B23F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C6B1950();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21C6B2424(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for Setting(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C6B2488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C6B24F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C6B257C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v24 - v4;
  v6 = sub_21C6CDF20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  v13 = sub_21C6CE5A0();
  LOBYTE(v26) = 1;
  sub_21C6B437C(a1, v33);
  *&v25[7] = v33[0];
  *&v25[55] = v34;
  *&v25[39] = v33[2];
  *&v25[23] = v33[1];
  v14 = v26;
  v26 = v13;
  v27 = 0;
  v28 = v14;
  v29 = *v25;
  *&v32[15] = *(&v34 + 1);
  *v32 = *&v25[48];
  v31 = *&v25[32];
  v30 = *&v25[16];
  sub_21C68F744(a1 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_localizedFooter, v5, &qword_27CDE6F10, &qword_21C6D1030);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_21C68F7D4(v5, &qword_27CDE6F10, &qword_21C6D1030);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v9, v12, v6);
    v15 = sub_21C6CE750();
    v16 = v19;
    v21 = v20;
    v18 = v22;
    (*(v7 + 8))(v12, v6);
    v17 = v21 & 1;
  }

  v24[1] = v15;
  v24[2] = v16;
  v24[3] = v17;
  v24[4] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6FF8, &qword_21C6D1498);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7000, &unk_21C6D14A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F70, &qword_21C6D1138);
  sub_21C694224(&qword_27CDE7008, &qword_27CDE6FF8, &qword_21C6D1498, MEMORY[0x277CE1198]);
  sub_21C6B466C();
  sub_21C6AD218();
  return sub_21C6CEA50();
}

uint64_t sub_21C6B28E4(uint64_t a1)
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE70D8, &qword_21C6D1500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7020, &qword_21C6D14B0);
  sub_21C694224(&qword_27CDE70E0, &qword_27CDE70D8, &qword_21C6D1500, MEMORY[0x277D83980]);
  sub_21C6B46F0();
  sub_21C6B4DA4(&qword_27CDE70E8, type metadata accessor for Setting, &unk_21C6D1D90);
  return sub_21C6CEA30();
}

uint64_t sub_21C6B2A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7028, &qword_21C6D14B8);
  MEMORY[0x28223BE20](v4);
  v6 = (&v14 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE70F0, &qword_21C6D1508);
  v15 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  if (sub_21C6BD938() && (v10 = sub_21C6BDCB4()) != 0)
  {
    v11 = v10;
    sub_21C6B2C30(a1, v10, v6);
    sub_21C6B47B0();
    sub_21C6CE820();

    sub_21C68F7D4(v6, &qword_27CDE7028, &qword_21C6D14B8);
    (*(v15 + 32))(a2, v9, v7);
    return (*(v15 + 56))(a2, 0, 1, v7);
  }

  else
  {
    v13 = *(v15 + 56);

    return v13(a2, 1, 1, v7);
  }
}

uint64_t sub_21C6B2C30@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v127 = a2;
  v137 = a3;
  v138 = a1;
  v126 = type metadata accessor for ChildPaneSettingView(0);
  MEMORY[0x28223BE20](v126);
  v111 = (&v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ChildPaneSetting(0);
  MEMORY[0x28223BE20](v4 - 8);
  v110 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE70F8, &qword_21C6D1510);
  MEMORY[0x28223BE20](v122);
  v124 = &v103 - v6;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE70B0, &qword_21C6D14F0);
  MEMORY[0x28223BE20](v136);
  v125 = &v103 - v7;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE70C0, &qword_21C6D14F8);
  MEMORY[0x28223BE20](v123);
  v109 = (&v103 - v8);
  v105 = type metadata accessor for TitleValueSetting(0);
  MEMORY[0x28223BE20](v105);
  v108 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PropertyListValue(0);
  MEMORY[0x28223BE20](v10 - 8);
  v117 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7098, &unk_21C6D14E0);
  MEMORY[0x28223BE20](v120);
  v107 = (&v103 - v12);
  v104 = type metadata accessor for MultiValueSetting(0);
  MEMORY[0x28223BE20](v104);
  v119 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7100, &qword_21C6D1518);
  MEMORY[0x28223BE20](v115);
  v118 = &v103 - v14;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7080, &qword_21C6D14D8);
  MEMORY[0x28223BE20](v131);
  v121 = &v103 - v15;
  v116 = type metadata accessor for TextFieldSettingView(0);
  MEMORY[0x28223BE20](v116);
  v106 = (&v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for TextFieldSetting(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v114 = &v103 - v21;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7108, &qword_21C6D1520);
  MEMORY[0x28223BE20](v133);
  v135 = &v103 - v22;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7110, &qword_21C6D1528);
  MEMORY[0x28223BE20](v128);
  v130 = &v103 - v23;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7118, &qword_21C6D1530);
  MEMORY[0x28223BE20](v112);
  v25 = (&v103 - v24);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7060, &qword_21C6D14D0);
  MEMORY[0x28223BE20](v129);
  v113 = &v103 - v26;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7050, &qword_21C6D14C8);
  MEMORY[0x28223BE20](v134);
  v132 = &v103 - v27;
  v28 = type metadata accessor for ToggleSettingView(0);
  MEMORY[0x28223BE20](v28);
  v30 = (&v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for ToggleSetting(0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v103 - v35;
  v37 = type metadata accessor for Setting(0);
  MEMORY[0x28223BE20](v37);
  v39 = &v103 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6B4F04(v138, v39, type metadata accessor for Setting);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v57 = v108;
      sub_21C6B4E9C(v39, v108, type metadata accessor for TitleValueSetting);
      v58 = type metadata accessor for TitleValueSettingView(0);
      v59 = v109;
      sub_21C6B4F04(v57, v109 + *(v58 + 20), type metadata accessor for TitleValueSetting);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
      sub_21C694224(&qword_27CDE6DD8, &qword_27CDE6DD0, &qword_21C6D2540, &unk_21C6D2398);
      *v59 = sub_21C6CE430();
      v59[1] = v60;
      v61 = (v57 + *(v105 + 24));
      v62 = *v61;
      v63 = v61[1];
      v64 = v117;
      sub_21C6B4F04(v57 + *(v105 + 28), v117, type metadata accessor for PropertyListValue);
      v65 = v127;
      v66 = v127;

      v67 = sub_21C6C3D2C(v62, v63, v64, v65);

      v68 = sub_21C6CE1B0();
      v69 = v124;
      v70 = (v59 + *(v123 + 36));
      *v70 = v68;
      v70[1] = v67;
      sub_21C68F744(v59, v69, &qword_27CDE70C0, &qword_21C6D14F8);
      swift_storeEnumTagMultiPayload();
      sub_21C6B4CBC();
      sub_21C6B4DA4(&qword_27CDE70D0, type metadata accessor for ChildPaneSettingView, &unk_21C6D0CF8);
      v71 = v125;
      sub_21C6CE5C0();
      sub_21C68F744(v71, v135, &qword_27CDE70B0, &qword_21C6D14F0);
      swift_storeEnumTagMultiPayload();
      sub_21C6B48C0();
      sub_21C6B4C00();
      sub_21C6CE5C0();
      sub_21C68F7D4(v71, &qword_27CDE70B0, &qword_21C6D14F0);
      sub_21C68F7D4(v59, &qword_27CDE70C0, &qword_21C6D14F8);
      v45 = type metadata accessor for TitleValueSetting;
      v46 = v57;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v47 = v114;
      sub_21C6B4E9C(v39, v114, type metadata accessor for TextFieldSetting);
      sub_21C6B4F04(v47, v19, type metadata accessor for TextFieldSetting);
      v48 = v106;
      sub_21C6B4F04(v19, v106 + *(v116 + 20), type metadata accessor for TextFieldSetting);

      v49 = sub_21C6CE210();
      sub_21C6B4F6C(v19, type metadata accessor for TextFieldSetting);
      *v48 = v49;
      sub_21C6B4F04(v48, v118, type metadata accessor for TextFieldSettingView);
      swift_storeEnumTagMultiPayload();
      sub_21C6B4DA4(&qword_27CDE7088, type metadata accessor for TextFieldSettingView, &unk_21C6D1938);
      sub_21C6B4B18();
      v50 = v121;
      sub_21C6CE5C0();
      sub_21C68F744(v50, v130, &qword_27CDE7080, &qword_21C6D14D8);
      swift_storeEnumTagMultiPayload();
      sub_21C6B494C();
      sub_21C6B4A5C();
      v51 = v132;
      sub_21C6CE5C0();
      sub_21C68F7D4(v50, &qword_27CDE7080, &qword_21C6D14D8);
      sub_21C68F744(v51, v135, &qword_27CDE7050, &qword_21C6D14C8);
      swift_storeEnumTagMultiPayload();
      sub_21C6B48C0();
      sub_21C6B4C00();
      sub_21C6CE5C0();
      sub_21C68F7D4(v51, &qword_27CDE7050, &qword_21C6D14C8);
      sub_21C6B4F6C(v48, type metadata accessor for TextFieldSettingView);
      v46 = v114;
      v45 = type metadata accessor for TextFieldSetting;
    }

    else
    {
      v87 = v119;
      sub_21C6B4E9C(v39, v119, type metadata accessor for MultiValueSetting);
      v88 = type metadata accessor for MultiValueSettingView(0);
      v89 = v107;
      sub_21C6B4F04(v87, v107 + *(v88 + 20), type metadata accessor for MultiValueSetting);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
      sub_21C694224(&qword_27CDE6DD8, &qword_27CDE6DD0, &qword_21C6D2540, &unk_21C6D2398);
      *v89 = sub_21C6CE430();
      v89[1] = v90;
      v91 = v87;
      v92 = (v87 + *(v104 + 24));
      v93 = *v92;
      v94 = v92[1];
      v95 = v117;
      sub_21C6B4F04(v91 + *(v104 + 28), v117, type metadata accessor for PropertyListValue);
      v96 = v127;
      v97 = v127;

      v98 = sub_21C6C3D2C(v93, v94, v95, v96);

      v99 = sub_21C6CE1B0();
      v100 = (v89 + *(v120 + 36));
      *v100 = v99;
      v100[1] = v98;
      sub_21C68F744(v89, v118, &qword_27CDE7098, &unk_21C6D14E0);
      swift_storeEnumTagMultiPayload();
      sub_21C6B4DA4(&qword_27CDE7088, type metadata accessor for TextFieldSettingView, &unk_21C6D1938);
      sub_21C6B4B18();
      v101 = v121;
      sub_21C6CE5C0();
      sub_21C68F744(v101, v130, &qword_27CDE7080, &qword_21C6D14D8);
      swift_storeEnumTagMultiPayload();
      sub_21C6B494C();
      sub_21C6B4A5C();
      v102 = v132;
      sub_21C6CE5C0();
      sub_21C68F7D4(v101, &qword_27CDE7080, &qword_21C6D14D8);
      sub_21C68F744(v102, v135, &qword_27CDE7050, &qword_21C6D14C8);
      swift_storeEnumTagMultiPayload();
      sub_21C6B48C0();
      sub_21C6B4C00();
      sub_21C6CE5C0();
      sub_21C68F7D4(v102, &qword_27CDE7050, &qword_21C6D14C8);
      sub_21C68F7D4(v89, &qword_27CDE7098, &unk_21C6D14E0);
      v45 = type metadata accessor for MultiValueSetting;
      v46 = v119;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v73 = *v39;
      v72 = *(v39 + 1);
      v74 = *(v39 + 2);
      v75 = *(v39 + 3);
      v76 = *(v39 + 5);
      v141 = *(v39 + 4);
      v142 = v76;
      v143 = *(v39 + 6);
      v144 = *(v39 + 14);
      v77 = *(v39 + 3);
      v139 = *(v39 + 2);
      v140 = v77;
      KeyPath = swift_getKeyPath();
      v145 = 0;

      v79 = sub_21C6CE220();
      *&v146 = KeyPath;
      BYTE8(v146) = v145;
      *&v147 = v79;
      *(&v147 + 1) = v73;
      *&v148 = v72;
      *(&v148 + 1) = v74;
      *v149 = v75;
      *&v149[40] = v141;
      *&v149[56] = v142;
      *&v149[72] = v143;
      *&v149[88] = v144;
      *&v149[8] = v139;
      *&v149[24] = v140;
      v80 = *&v149[64];
      v25[6] = *&v149[48];
      v25[7] = v80;
      v25[8] = *&v149[80];
      v81 = *v149;
      v25[2] = v148;
      v25[3] = v81;
      v82 = *&v149[32];
      v25[4] = *&v149[16];
      v25[5] = v82;
      v83 = v147;
      *v25 = v146;
      v25[1] = v83;
      swift_storeEnumTagMultiPayload();
      sub_21C6B4DEC(&v146, &v139);
      sub_21C6B4DA4(&qword_27CDE7068, type metadata accessor for ToggleSettingView, &unk_21C6D1BB4);
      sub_21C6B4A08();
      v84 = v113;
      sub_21C6CE5C0();
      sub_21C68F744(v84, v130, &qword_27CDE7060, &qword_21C6D14D0);
      swift_storeEnumTagMultiPayload();
      sub_21C6B494C();
      sub_21C6B4A5C();
      v85 = v132;
      sub_21C6CE5C0();
      sub_21C68F7D4(v84, &qword_27CDE7060, &qword_21C6D14D0);
      sub_21C68F744(v85, v135, &qword_27CDE7050, &qword_21C6D14C8);
      swift_storeEnumTagMultiPayload();
      sub_21C6B48C0();
      sub_21C6B4C00();
      sub_21C6CE5C0();
      sub_21C6B4E48(&v146);
      return sub_21C68F7D4(v85, &qword_27CDE7050, &qword_21C6D14C8);
    }

    sub_21C6B4E9C(v39, v36, type metadata accessor for ToggleSetting);
    sub_21C6B4F04(v36, v33, type metadata accessor for ToggleSetting);
    v41 = v127;
    v42 = v127;
    sub_21C6BAB30(v33, v41, v30);
    sub_21C6B4F04(v30, v25, type metadata accessor for ToggleSettingView);
    swift_storeEnumTagMultiPayload();
    sub_21C6B4DA4(&qword_27CDE7068, type metadata accessor for ToggleSettingView, &unk_21C6D1BB4);
    sub_21C6B4A08();
    v43 = v113;
    sub_21C6CE5C0();
    sub_21C68F744(v43, v130, &qword_27CDE7060, &qword_21C6D14D0);
    swift_storeEnumTagMultiPayload();
    sub_21C6B494C();
    sub_21C6B4A5C();
    v44 = v132;
    sub_21C6CE5C0();
    sub_21C68F7D4(v43, &qword_27CDE7060, &qword_21C6D14D0);
    sub_21C68F744(v44, v135, &qword_27CDE7050, &qword_21C6D14C8);
    swift_storeEnumTagMultiPayload();
    sub_21C6B48C0();
    sub_21C6B4C00();
    sub_21C6CE5C0();
    sub_21C68F7D4(v44, &qword_27CDE7050, &qword_21C6D14C8);
    sub_21C6B4F6C(v30, type metadata accessor for ToggleSettingView);
    v45 = type metadata accessor for ToggleSetting;
    v46 = v36;
  }

  else
  {
    v52 = v110;
    sub_21C6B4E9C(v39, v110, type metadata accessor for ChildPaneSetting);
    v53 = v126;
    v54 = v111;
    sub_21C6B4F04(v52, v111 + *(v126 + 24), type metadata accessor for ChildPaneSetting);
    *v54 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDE6A28, &qword_21C6D0318);
    swift_storeEnumTagMultiPayload();
    v55 = v54 + *(v53 + 20);
    *v55 = swift_getKeyPath();
    v55[8] = 0;
    sub_21C6B4F04(v54, v124, type metadata accessor for ChildPaneSettingView);
    swift_storeEnumTagMultiPayload();
    sub_21C6B4CBC();
    sub_21C6B4DA4(&qword_27CDE70D0, type metadata accessor for ChildPaneSettingView, &unk_21C6D0CF8);
    v56 = v125;
    sub_21C6CE5C0();
    sub_21C68F744(v56, v135, &qword_27CDE70B0, &qword_21C6D14F0);
    swift_storeEnumTagMultiPayload();
    sub_21C6B48C0();
    sub_21C6B4C00();
    sub_21C6CE5C0();
    sub_21C68F7D4(v56, &qword_27CDE70B0, &qword_21C6D14F0);
    sub_21C6B4F6C(v54, type metadata accessor for ChildPaneSettingView);
    v45 = type metadata accessor for ChildPaneSetting;
    v46 = v52;
  }

  return sub_21C6B4F6C(v46, v45);
}

void sub_21C6B4150(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21C6CE570();
  MEMORY[0x28223BE20](v4 - 8);
  if (*(a1 + 17) == 1 && (v5 = a1 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_applicationBundleIdentifier, v6 = *(a1 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_applicationBundleIdentifier), v7 = *(v5 + 8), objc_allocWithZone(MEMORY[0x277CC1E70]), , v8 = sub_21C6BF2EC(v6, v7, 0), (v13 = v8) != 0))
  {
    sub_21C6CE560();
    sub_21C6CE550();
    v14 = [v13 localizedName];
    sub_21C6CEBC0();

    sub_21C6CE540();

    sub_21C6CE550();
    sub_21C6CE590();
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v15 = qword_27CDE9D58;
    v9 = sub_21C6CE740();
    v10 = v16;
    v18 = v17;
    v12 = v19;

    v11 = v18 & 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
}

uint64_t sub_21C6B437C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_21C6CDF20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  sub_21C6B4150(a1, v31);
  v14 = v31[0];
  v15 = v31[1];
  v16 = v31[2];
  v30 = v31[3];
  sub_21C68F744(a1 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_localizedHeader, v6, &qword_27CDE6F10, &qword_21C6D1030);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21C68F7D4(v6, &qword_27CDE6F10, &qword_21C6D1030);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    v17 = sub_21C6CE750();
    v18 = v21;
    v29 = v16;
    v22 = v15;
    v23 = v14;
    v25 = v24;
    v20 = v26;
    (*(v8 + 8))(v13, v7);
    v19 = v25 & 1;
    v14 = v23;
    v15 = v22;
    v16 = v29;
    sub_21C692AE8(v17, v18, v19);
  }

  v27 = v30;
  sub_21C6AD294(v14, v15, v16, v30);
  sub_21C6AD294(v17, v18, v19, v20);
  sub_21C6AD2D8(v17, v18, v19, v20);
  *a2 = v14;
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v27;
  a2[4] = v17;
  a2[5] = v18;
  a2[6] = v19;
  a2[7] = v20;
  sub_21C6AD2D8(v17, v18, v19, v20);
  return sub_21C6AD2D8(v14, v15, v16, v27);
}

unint64_t sub_21C6B466C()
{
  result = qword_27CDE7010;
  if (!qword_27CDE7010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7000, &unk_21C6D14A0);
    sub_21C6B46F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7010);
  }

  return result;
}

unint64_t sub_21C6B46F0()
{
  result = qword_27CDE7018;
  if (!qword_27CDE7018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7020, &qword_21C6D14B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7028, &qword_21C6D14B8);
    sub_21C6B47B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7018);
  }

  return result;
}

unint64_t sub_21C6B47B0()
{
  result = qword_27CDE7030;
  if (!qword_27CDE7030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7028, &qword_21C6D14B8);
    sub_21C6B4834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7030);
  }

  return result;
}

unint64_t sub_21C6B4834()
{
  result = qword_27CDE7038;
  if (!qword_27CDE7038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7040, &qword_21C6D14C0);
    sub_21C6B48C0();
    sub_21C6B4C00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7038);
  }

  return result;
}

unint64_t sub_21C6B48C0()
{
  result = qword_27CDE7048;
  if (!qword_27CDE7048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7050, &qword_21C6D14C8);
    sub_21C6B494C();
    sub_21C6B4A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7048);
  }

  return result;
}

unint64_t sub_21C6B494C()
{
  result = qword_27CDE7058;
  if (!qword_27CDE7058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7060, &qword_21C6D14D0);
    sub_21C6B4DA4(&qword_27CDE7068, type metadata accessor for ToggleSettingView, &unk_21C6D1BB4);
    sub_21C6B4A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7058);
  }

  return result;
}

unint64_t sub_21C6B4A08()
{
  result = qword_27CDE7070;
  if (!qword_27CDE7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7070);
  }

  return result;
}

unint64_t sub_21C6B4A5C()
{
  result = qword_27CDE7078;
  if (!qword_27CDE7078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7080, &qword_21C6D14D8);
    sub_21C6B4DA4(&qword_27CDE7088, type metadata accessor for TextFieldSettingView, &unk_21C6D1938);
    sub_21C6B4B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7078);
  }

  return result;
}

unint64_t sub_21C6B4B18()
{
  result = qword_27CDE7090;
  if (!qword_27CDE7090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7098, &unk_21C6D14E0);
    sub_21C6B4DA4(&qword_27CDE70A0, type metadata accessor for MultiValueSettingView, &unk_21C6D0EA0);
    sub_21C694224(&qword_27CDE6EC0, &qword_27CDE6EC8, &qword_21C6D0F90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7090);
  }

  return result;
}

unint64_t sub_21C6B4C00()
{
  result = qword_27CDE70A8;
  if (!qword_27CDE70A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE70B0, &qword_21C6D14F0);
    sub_21C6B4CBC();
    sub_21C6B4DA4(&qword_27CDE70D0, type metadata accessor for ChildPaneSettingView, &unk_21C6D0CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE70A8);
  }

  return result;
}

unint64_t sub_21C6B4CBC()
{
  result = qword_27CDE70B8;
  if (!qword_27CDE70B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE70C0, &qword_21C6D14F8);
    sub_21C6B4DA4(&qword_27CDE70C8, type metadata accessor for TitleValueSettingView, &unk_21C6D1AC0);
    sub_21C694224(&qword_27CDE6EC0, &qword_27CDE6EC8, &qword_21C6D0F90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE70B8);
  }

  return result;
}

uint64_t sub_21C6B4DA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C6B4E9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C6B4F04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C6B4F6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C6B4FCC()
{
  result = qword_27CDE7120;
  if (!qword_27CDE7120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7128, &unk_21C6D15A0);
    sub_21C694224(&qword_27CDE7008, &qword_27CDE6FF8, &qword_21C6D1498, MEMORY[0x277CE1198]);
    sub_21C6B466C();
    sub_21C6AD218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7120);
  }

  return result;
}

uint64_t type metadata accessor for TextFieldSetting(uint64_t a1)
{
  result = qword_27CDE7130;
  if (!qword_27CDE7130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6B510C(uint64_t a1)
{
  sub_21C6B18F8(319);
  if (v1 <= 0x3F)
  {
    sub_21C6A2ED4(319, &qword_27CDE6C68, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21C6A2ED4(319, &qword_27CDE6C70, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for TextFieldSetting.AutocorrectionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TextFieldSetting.AutocorrectionType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextFieldSetting.AutocapitalizationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TextFieldSetting.AutocapitalizationType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextFieldSetting.KeyboardType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TextFieldSetting.KeyboardType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21C6B5634()
{
  sub_21C6CEE50();
  sub_21C6CEBF0();

  return sub_21C6CEE90();
}

uint64_t sub_21C6B5720(uint64_t a1)
{
  sub_21C6CEBF0();
}

uint64_t sub_21C6B57F8(uint64_t a1)
{
  sub_21C6CEE50();
  sub_21C6CEBF0();

  return sub_21C6CEE90();
}

unint64_t sub_21C6B58E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21C6B6CF0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21C6B5910(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x7465626168706C41;
  v5 = 0xE900000000000064;
  v6 = 0x61507265626D754ELL;
  v7 = 0xE300000000000000;
  v8 = 5001813;
  if (v2 != 3)
  {
    v8 = 0x6464416C69616D45;
    v7 = 0xEC00000073736572;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x800000021C6D2890;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_21C6B5A6C()
{
  result = qword_27CDE7140;
  if (!qword_27CDE7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7140);
  }

  return result;
}

uint64_t sub_21C6B5ACC()
{
  sub_21C6CEE50();
  sub_21C6CEBF0();

  return sub_21C6CEE90();
}

uint64_t sub_21C6B5B94(uint64_t a1)
{
  sub_21C6CEBF0();
}

uint64_t sub_21C6B5C48(uint64_t a1)
{
  sub_21C6CEE50();
  sub_21C6CEBF0();

  return sub_21C6CEE90();
}

unint64_t sub_21C6B5D0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21C6B6D3C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21C6B5D3C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736270;
  v4 = 0xE500000000000000;
  v5 = 0x7364726F57;
  if (*v1 != 2)
  {
    v5 = 0x61726168436C6C41;
    v4 = 0xED00007372657463;
  }

  if (*v1)
  {
    v3 = 0x65636E65746E6553;
    v2 = 0xE900000000000073;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_21C6B5E74()
{
  result = qword_27CDE7148;
  if (!qword_27CDE7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7148);
  }

  return result;
}

uint64_t sub_21C6B5EC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28494;
  if (v2 != 1)
  {
    v4 = 7562585;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746C7561666544;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28494;
  if (*a2 != 1)
  {
    v8 = 7562585;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666544;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21C6CEE20();
  }

  return v11 & 1;
}

uint64_t sub_21C6B5FA4()
{
  sub_21C6CEE50();
  sub_21C6CEBF0();

  return sub_21C6CEE90();
}

uint64_t sub_21C6B6034(uint64_t a1)
{
  sub_21C6CEBF0();
}

uint64_t sub_21C6B60B0(uint64_t a1)
{
  sub_21C6CEE50();
  sub_21C6CEBF0();

  return sub_21C6CEE90();
}

unint64_t sub_21C6B613C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21C6B6D88(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21C6B616C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE200000000000000;
  v5 = 28494;
  if (v2 != 1)
  {
    v5 = 7562585;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666544;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_21C6B626C()
{
  result = qword_27CDE7150;
  if (!qword_27CDE7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7150);
  }

  return result;
}

BOOL sub_21C6B62C0()
{
  v1 = *(v0 + *(type metadata accessor for TextFieldSetting(0) + 56));
  if (!*(v1 + 16))
  {
    return 1;
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v4 = 6578512;
  }

  else
  {
    v4 = 0x656E6F6850;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = (v1 + 40);
  v7 = *(v1 + 16) + 1;
  do
  {
    v8 = --v7 != 0;
    if (!v7)
    {
      break;
    }

    if (*(v6 - 1) == v4 && *v6 == v5)
    {
      break;
    }

    v6 += 2;
  }

  while ((sub_21C6CEE20() & 1) == 0);

  return v8;
}

uint64_t sub_21C6B63B8@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v65 = a6;
  v66 = a8;
  v63 = a5;
  v64 = a7;
  v67 = a4;
  v12 = sub_21C6CE010();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_21C6CDF00();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v57[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_21C6CEB80();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v57[-v19];
  if (!*(a1 + 16))
  {
    goto LABEL_24;
  }

  v21 = sub_21C6C70F8(7955787, 0xE300000000000000);
  if ((v22 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v21, v70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v23 = HIBYTE(v69) & 0xF;
  if ((v69 & 0x2000000000000000) == 0)
  {
    v23 = v68 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {

LABEL_24:

    (*(v14 + 8))(v67, v13);
    v33 = type metadata accessor for TextFieldSetting(0);
    return (*(*(v33 - 8) + 56))(a9, 1, 1, v33);
  }

  v61 = v68;
  v62 = v69;
  if (*(a1 + 16) && (v24 = sub_21C6C70F8(0x656C746954, 0xE500000000000000), (v25 & 1) != 0) && (sub_21C6A2734(*(a1 + 56) + 32 * v24, v70), (swift_dynamicCast() & 1) != 0) && v69)
  {
    v59 = v68;
    v60 = v69;

    sub_21C6CEB70();
    (*(v14 + 16))(v16, v67, v13);

    sub_21C6CE000();
    sub_21C6CDF30();
    v26 = sub_21C6CDF20();
    (*(*(v26 - 8) + 56))(v20, 0, 1, v26);
  }

  else
  {
    v27 = sub_21C6CDF20();
    (*(*(v27 - 8) + 56))(v20, 1, 1, v27);
  }

  if (*(a1 + 16) && (v28 = sub_21C6C70F8(0x56746C7561666544, 0xEC00000065756C61), (v29 & 1) != 0) && (sub_21C6A2734(*(a1 + 56) + 32 * v28, v70), (swift_dynamicCast() & 1) != 0))
  {
    v30 = v69;
    v60 = v68;
  }

  else
  {
    v60 = 0;
    v30 = 0xE000000000000000;
  }

  v59 = v30;
  if (!*(a1 + 16))
  {
    v58 = 0;
LABEL_32:
    v37 = 0;
    goto LABEL_33;
  }

  v31 = sub_21C6C70F8(0x6572756365537349, 0xE800000000000000);
  if ((v32 & 1) != 0 && (sub_21C6A2734(*(a1 + 56) + 32 * v31, v70), swift_dynamicCast()))
  {
    v58 = v68;
  }

  else
  {
    v58 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_32;
  }

  v35 = sub_21C6C70F8(0x6472616F6279654BLL, 0xEC00000065707954);
  if ((v36 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v35, v70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v37 = sub_21C6B6CF0(v68, v69);
  if (v37 == 5)
  {
    goto LABEL_32;
  }

LABEL_33:
  if (!*(a1 + 16) || (v38 = sub_21C6C70F8(0xD000000000000016, 0x800000021C6D15D0), (v39 & 1) == 0) || (sub_21C6A2734(*(a1 + 56) + 32 * v38, v70), (swift_dynamicCast() & 1) == 0) || (v40 = sub_21C6B6D3C(v68, v69), v40 == 4))
  {
    v40 = 0;
  }

  if (*(a1 + 16) && (v41 = sub_21C6C70F8(0xD000000000000012, 0x800000021C6D15B0), (v42 & 1) != 0) && (sub_21C6A2734(*(a1 + 56) + 32 * v41, v70), (swift_dynamicCast() & 1) != 0))
  {
    v43 = sub_21C6CEDF0();

    if (v43 == 2)
    {
      v44 = 2;
    }

    else
    {
      v44 = v43 == 1;
    }
  }

  else
  {
    v44 = 0;
  }

  if (!*(a1 + 16) || (v45 = sub_21C6C70F8(0xD00000000000001CLL, 0x800000021C6D3170), (v46 & 1) == 0))
  {

    goto LABEL_50;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v45, v70);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DB0, &unk_21C6D0E60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_50:
    v47 = MEMORY[0x277D84F90];
    goto LABEL_51;
  }

  v47 = v68;
LABEL_51:
  *a9 = 4;
  v48 = type metadata accessor for TextFieldSetting(0);
  sub_21C6AC488(v20, &a9[v48[5]]);
  v49 = &a9[v48[6]];
  v50 = v62;
  *v49 = v61;
  v49[1] = v50;
  v51 = &a9[v48[7]];
  v52 = v59;
  *v51 = v60;
  v51[1] = v52;
  a9[v48[8]] = v58;
  a9[v48[9]] = v37;
  a9[v48[10]] = v40;
  a9[v48[11]] = v44;
  v53 = &a9[v48[12]];
  v54 = v64;
  v55 = v65;
  *v53 = v63;
  v53[1] = v55;
  v56 = &a9[v48[13]];
  *v56 = v54;
  v56[1] = v66;
  *&a9[v48[14]] = v47;
  (*(*(v48 - 1) + 56))(a9, 0, 1, v48);
  return (*(v14 + 8))(v67, v13);
}

uint64_t sub_21C6B6BB4()
{
  v1 = 0xD000000000000014;
  v2 = "ers";
  v3 = *v0;
  v4 = "PSSliderSpecifier";
  v5 = "PSTitleValueSpecifier";
  if (v3 == 4)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v3 != 4)
  {
    v5 = "PSTextFieldSpecifier";
  }

  if (v3 == 3)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = v6;
  }

  if (v3 != 3)
  {
    v4 = v5;
  }

  v8 = "PSChildPaneSpecifier";
  v9 = 0xD000000000000017;
  if (v3 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = "PSToggleSwitchSpecifier";
  }

  if (*v0)
  {
    v1 = v9;
    v2 = v8;
  }

  if (*v0 <= 2u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v7;
  }

  if (*v0 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x21CF0F390](v10, v11 | 0x8000000000000000);

  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  v12 = type metadata accessor for TextFieldSetting(0);
  MEMORY[0x21CF0F390](*&v0[*(v12 + 24)], *&v0[*(v12 + 24) + 8]);
  return 0;
}

uint64_t sub_21C6B6CC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C6B6BB4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_21C6B6CF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_21C6CEDF0();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21C6B6D3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21C6CEDF0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21C6B6D88(uint64_t a1, uint64_t a2)
{
  v2 = sub_21C6CEDF0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21C6B6DD4()
{
  result = qword_27CDE7158;
  if (!qword_27CDE7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7158);
  }

  return result;
}

unint64_t sub_21C6B6E28()
{
  result = qword_27CDE7160;
  if (!qword_27CDE7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7160);
  }

  return result;
}

unint64_t sub_21C6B6E7C()
{
  result = qword_27CDE7168;
  if (!qword_27CDE7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7168);
  }

  return result;
}

uint64_t type metadata accessor for TextFieldSettingView(uint64_t a1)
{
  result = qword_27CDE7170;
  if (!qword_27CDE7170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6B6F4C(uint64_t a1)
{
  sub_21C6B6FD0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TextFieldSetting(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C6B6FD0()
{
  if (!qword_27CDE7180)
  {
    v0 = sub_21C6CE240();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDE7180);
    }
  }
}

uint64_t sub_21C6B703C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE71A0, &qword_21C6D1998);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v55 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE71A8, &qword_21C6D19A0);
  MEMORY[0x28223BE20](v67);
  v7 = (&v55 - v6);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE71B0, &qword_21C6D19A8);
  v57 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v66 = &v55 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE71B8, &qword_21C6D19B0);
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v68 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE71C0, &unk_21C6D19B8);
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x28223BE20](v10);
  v62 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = &v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v55 - v15;
  v17 = sub_21C6CDF20();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v55 - v22;
  v24 = a1 + *(type metadata accessor for TextFieldSettingView(0) + 20);
  v25 = type metadata accessor for TextFieldSetting(0);
  sub_21C6A96C0(&v24[v25[5]], v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_21C68F7D4(v16, &qword_27CDE6F10, &qword_21C6D1030);
    v55 = 0;
    v56 = 0;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    (*(v18 + 32))(v23, v16, v17);
    (*(v18 + 16))(v20, v23, v17);
    v28 = sub_21C6CE750();
    v55 = v29;
    v56 = v28;
    v26 = v30;
    v31 = a1;
    v33 = v32;
    (*(v18 + 8))(v23, v17);
    v27 = (v33 & 1);
    a1 = v31;
  }

  sub_21C6B779C(a1, v7);
  v34 = sub_21C6B7CF0();
  sub_21C6CE7D0();
  sub_21C68F7D4(v7, &qword_27CDE71A8, &qword_21C6D19A0);
  v35 = v60;
  if (v24[v25[10]] > 1u)
  {
    if (v24[v25[10]] == 2)
    {
      sub_21C6CE660();
    }

    else
    {
      sub_21C6CE640();
    }
  }

  else if (v24[v25[10]])
  {
    sub_21C6CE670();
  }

  else
  {
    sub_21C6CE650();
  }

  v36 = sub_21C6CE680();
  v37 = 1;
  (*(*(v36 - 8) + 56))(v5, 0, 1, v36);
  v69 = v67;
  v70 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v66;
  sub_21C6CE840();
  sub_21C68F7D4(v5, &qword_27CDE71A0, &qword_21C6D1998);
  (*(v57 + 8))(v39, v35);
  if (v24[v25[11]])
  {
    v40 = v26;
    if (v24[v25[11]] == 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v40 = v26;
  }

  v37 = sub_21C6CEE20();
LABEL_16:

  v69 = v35;
  v70 = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v58;
  v43 = v61;
  v44 = v68;
  MEMORY[0x21CF0EFC0](v37 & 1, v61, v41);
  (*(v59 + 8))(v44, v43);
  v46 = v62;
  v45 = v63;
  v47 = *(v63 + 16);
  v48 = v64;
  v47(v62, v42, v64);
  v49 = v65;
  v50 = v56;
  *v65 = v56;
  v49[1] = v40;
  v49[2] = v27;
  v68 = v27;
  v51 = v55;
  v49[3] = v55;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7200, &qword_21C6D19E0);
  v47(v49 + *(v52 + 48), v46, v48);
  LOBYTE(v47) = v68;
  sub_21C6AD294(v50, v40, v68, v51);
  v53 = *(v45 + 8);
  v53(v42, v48);
  v53(v46, v48);
  return sub_21C6AD2D8(v50, v40, v47, v51);
}

uint64_t sub_21C6B779C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE71F8, &qword_21C6D19D8);
  v17 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = &v16 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7208, &qword_21C6D19E8);
  MEMORY[0x28223BE20](v18);
  v6 = &v16 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE71E8, &qword_21C6D19D0);
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v16 - v8;
  v10 = a1 + *(type metadata accessor for TextFieldSettingView(0) + 20);
  v11 = v10[*(type metadata accessor for TextFieldSetting(0) + 32)];
  sub_21C6CE580();
  sub_21C6CE230();
  if (v11 == 1)
  {
    sub_21C6CE2E0();
    v12 = v19;
    (*(v7 + 16))(v6, v9, v19);
    swift_storeEnumTagMultiPayload();
    sub_21C694224(&qword_27CDE71E0, &qword_27CDE71E8, &qword_21C6D19D0, MEMORY[0x277CDD798]);
    sub_21C694224(&qword_27CDE71F0, &qword_27CDE71F8, &qword_21C6D19D8, MEMORY[0x277CDF1A8]);
    sub_21C6CE5C0();
    return (*(v7 + 8))(v9, v12);
  }

  else
  {
    sub_21C6CEAD0();
    v14 = v17;
    v15 = v21;
    (*(v17 + 16))(v6, v4, v21);
    swift_storeEnumTagMultiPayload();
    sub_21C694224(&qword_27CDE71E0, &qword_27CDE71E8, &qword_21C6D19D0, MEMORY[0x277CDD798]);
    sub_21C694224(&qword_27CDE71F0, &qword_27CDE71F8, &qword_21C6D19D8, MEMORY[0x277CDF1A8]);
    sub_21C6CE5C0();
    return (*(v14 + 8))(v4, v15);
  }
}

uint64_t sub_21C6B7BB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7188, &qword_21C6D1988);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  *v3 = sub_21C6CE520();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7190, &qword_21C6D1990);
  sub_21C6B703C(v0, &v3[*(v4 + 44)]);
  sub_21C6B6BB4();
  sub_21C694224(&qword_27CDE7198, &qword_27CDE7188, &qword_21C6D1988, MEMORY[0x277CE1138]);
  sub_21C6CE7F0();

  return sub_21C688C80(v3);
}

unint64_t sub_21C6B7CF0()
{
  result = qword_27CDE71C8;
  if (!qword_27CDE71C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE71A8, &qword_21C6D19A0);
    sub_21C6B7D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE71C8);
  }

  return result;
}

unint64_t sub_21C6B7D74()
{
  result = qword_27CDE71D0;
  if (!qword_27CDE71D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE71D8, &qword_21C6D19C8);
    sub_21C694224(&qword_27CDE71E0, &qword_27CDE71E8, &qword_21C6D19D0, MEMORY[0x277CDD798]);
    sub_21C694224(&qword_27CDE71F0, &qword_27CDE71F8, &qword_21C6D19D8, MEMORY[0x277CDF1A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE71D0);
  }

  return result;
}

unint64_t sub_21C6B7E58()
{
  result = qword_27CDE7210;
  if (!qword_27CDE7210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7218, &unk_21C6D19F0);
    sub_21C694224(&qword_27CDE7198, &qword_27CDE7188, &qword_21C6D1988, MEMORY[0x277CE1138]);
    sub_21C6AD1C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7210);
  }

  return result;
}

uint64_t type metadata accessor for TitleValueSetting(uint64_t a1)
{
  result = qword_27CDE7220;
  if (!qword_27CDE7220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6B7F84(uint64_t a1)
{
  sub_21C6B18F8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PropertyListValue(319);
    if (v2 <= 0x3F)
    {
      sub_21C6A50C4(319);
      if (v3 <= 0x3F)
      {
        sub_21C6A2ED4(319, &qword_27CDE6C68, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21C6A2ED4(319, &qword_27CDE6C70, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

BOOL sub_21C6B80A0()
{
  v1 = *(v0 + *(type metadata accessor for TitleValueSetting(0) + 44));
  if (!*(v1 + 16))
  {
    return 1;
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v4 = 6578512;
  }

  else
  {
    v4 = 0x656E6F6850;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = (v1 + 40);
  v7 = *(v1 + 16) + 1;
  do
  {
    v8 = --v7 != 0;
    if (!v7)
    {
      break;
    }

    if (*(v6 - 1) == v4 && *v6 == v5)
    {
      break;
    }

    v6 += 2;
  }

  while ((sub_21C6CEE20() & 1) == 0);

  return v8;
}

uint64_t sub_21C6B8198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v119 = a8;
  v112 = a7;
  v118 = a6;
  v111 = a5;
  v122 = a4;
  v123 = a3;
  v105 = a2;
  v120 = a9;
  v103 = type metadata accessor for LocalizedSettingValue(0);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v108 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v107 = &v89 - v12;
  v114 = sub_21C6CDF20();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v106 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA0, &unk_21C6D0E50);
  MEMORY[0x28223BE20](v14 - 8);
  v101 = &v89 - v15;
  v16 = sub_21C6CE010();
  MEMORY[0x28223BE20](v16 - 8);
  v104 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_21C6CDF00();
  v18 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21C6CEB80();
  MEMORY[0x28223BE20](v21 - 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  MEMORY[0x28223BE20](v22 - 8);
  v110 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v116 = &v89 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA8, &unk_21C6D1A90);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v89 - v30;
  v32 = type metadata accessor for PropertyListValue(0);
  v117 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v109 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v89 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = (&v89 - v38);
  MEMORY[0x28223BE20](v40);
  v42 = &v89 - v41;
  MEMORY[0x28223BE20](v43);
  v115 = &v89 - v44;
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v45 = sub_21C6C70F8(7955787, 0xE300000000000000);
  if ((v46 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v45, &v126);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v47 = HIBYTE(*(&v125 + 1)) & 0xFLL;
  if ((*(&v125 + 1) & 0x2000000000000000) == 0)
  {
    v47 = v125 & 0xFFFFFFFFFFFFLL;
  }

  if (!v47)
  {

LABEL_14:

    goto LABEL_15;
  }

  v100 = v125;
  if (!*(a1 + 16) || (v48 = sub_21C6C70F8(0x56746C7561666544, 0xEC00000065756C61), (v49 & 1) == 0))
  {

LABEL_15:

    goto LABEL_16;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v48, &v125);
  sub_21C6A6FC0(&v125, &v126);
  sub_21C6A2734(&v126, &v125);
  sub_21C6C50F8(&v125, v31);
  v50 = *(v117 + 48);
  v99 = (v117 + 48);
  v98 = v50;
  if ((v50)(v31, 1, v32) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(&v126);

    sub_21C68F7D4(v31, &qword_27CDE6DA8, &unk_21C6D1A90);
LABEL_16:
    (*(v18 + 8))(v122, v121);
    v51 = type metadata accessor for TitleValueSetting(0);
    return (*(*(v51 - 8) + 56))(v120, 1, 1, v51);
  }

  sub_21C6A7100(v31, v115, type metadata accessor for PropertyListValue);
  if (*(a1 + 16) && (v53 = sub_21C6C70F8(0x656C746954, 0xE500000000000000), (v54 & 1) != 0) && (sub_21C6A2734(*(a1 + 56) + 32 * v53, &v125), (swift_dynamicCast() & 1) != 0) && *(&v124 + 1))
  {
    v96 = *(&v124 + 1);
    v97 = v124;

    sub_21C6CEB70();
    (*(v18 + 16))(v20, v122, v121);

    sub_21C6CE000();
    v55 = v116;
    sub_21C6CDF30();
    v97 = *(v113 + 56);
    v97(v55, 0, 1, v114);
  }

  else
  {
    v97 = *(v113 + 56);
    v97(v116, 1, 1, v114);
  }

  if (!*(a1 + 16))
  {
    goto LABEL_34;
  }

  v56 = sub_21C6C70F8(0x73656C746954, 0xE600000000000000);
  if (v57)
  {
    sub_21C6A2734(*(a1 + 56) + 32 * v56, &v125);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DB0, &unk_21C6D0E60);
    v58 = swift_dynamicCast() ? v124 : 0;
  }

  else
  {
    v58 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_34;
  }

  v96 = v58;
  v59 = sub_21C6C70F8(0x7365756C6156, 0xE600000000000000);
  if ((v60 & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v59, &v124);
  sub_21C6A6FC0(&v124, &v125);
  sub_21C6A2734(&v125, &v124);
  sub_21C6C50F8(&v124, v28);
  __swift_destroy_boxed_opaque_existential_1(&v125);
  if ((v98)(v28, 1, v32) == 1)
  {

    sub_21C68F7D4(v28, &qword_27CDE6DA8, &unk_21C6D1A90);
LABEL_35:
    v61 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  sub_21C6A7100(v28, v42, type metadata accessor for PropertyListValue);
  sub_21C6A7100(v42, v39, type metadata accessor for PropertyListValue);
  if (swift_getEnumCaseMultiPayload() != 6)
  {

    sub_21C6A70A0(v39, type metadata accessor for PropertyListValue);
    goto LABEL_35;
  }

  v75 = *v39;
  result = v96;
  if (!v96)
  {
LABEL_34:

    goto LABEL_35;
  }

  v76 = *(v96 + 16);
  if (v76 != *(v75 + 16))
  {

    sub_21C68F7D4(v116, &qword_27CDE6F10, &qword_21C6D1030);
    sub_21C6A70A0(v115, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v126);
    goto LABEL_16;
  }

  if (!v76)
  {
    v61 = MEMORY[0x277D84F90];
LABEL_61:

LABEL_36:
    if (*(a1 + 16) && (v62 = sub_21C6C70F8(0xD00000000000001CLL, 0x800000021C6D3170), (v63 & 1) != 0))
    {
      sub_21C6A2734(*(a1 + 56) + 32 * v62, &v125);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DB0, &unk_21C6D0E60);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(&v126);
        v64 = v124;
LABEL_42:
        v65 = v110;
        sub_21C6AC488(v116, v110);
        v66 = v109;
        sub_21C6A7100(v115, v109, type metadata accessor for PropertyListValue);
        v67 = v120;
        *v120 = 3;
        v68 = type metadata accessor for TitleValueSetting(0);
        sub_21C6AC488(v65, &v67[v68[5]]);
        v69 = &v67[v68[6]];
        v70 = *(&v100 + 1);
        *v69 = v100;
        v69[1] = v70;
        sub_21C6A7100(v66, &v67[v68[7]], type metadata accessor for PropertyListValue);
        *&v67[v68[8]] = v61;
        v71 = &v67[v68[9]];
        v72 = v118;
        *v71 = v111;
        v71[1] = v72;
        v73 = &v67[v68[10]];
        v74 = v119;
        *v73 = v112;
        v73[1] = v74;
        *&v67[v68[11]] = v64;
        (*(*(v68 - 1) + 56))(v67, 0, 1, v68);
        return (*(v18 + 8))(v122, v121);
      }
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1(&v126);
    v64 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v77 = 0;
  v93 = (v18 + 16);
  v92 = (v113 + 16);
  v91 = v113 + 56;
  v90 = (v113 + 8);
  v78 = (v96 + 40);
  v61 = MEMORY[0x277D84F90];
  v95 = v75;
  v94 = v76;
  while (v77 < *(v75 + 16))
  {
    result = sub_21C6A7038(v75 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v77, v36, type metadata accessor for PropertyListValue);
    v79 = *(v96 + 16);
    if (v77 == v79)
    {

      sub_21C6A70A0(v36, type metadata accessor for PropertyListValue);
      goto LABEL_36;
    }

    v99 = v61;
    v113 = v77;
    if (v77 >= v79)
    {
      goto LABEL_64;
    }

    v98 = v78;
    v80 = v101;
    sub_21C6A7100(v36, v101, type metadata accessor for PropertyListValue);

    sub_21C6CEB70();
    (*v93)(v20, v122, v121);

    sub_21C6CE000();
    v81 = v106;
    sub_21C6CDF30();
    v82 = v103;
    v83 = v107;
    sub_21C6A7100(v80, v107 + *(v103 + 24), type metadata accessor for PropertyListValue);
    v84 = v114;
    (*v92)(v83, v81, v114);
    v85 = v97;
    v97(v83, 0, 1, v84);
    v85(v83 + *(v82 + 20), 1, 1, v84);
    sub_21C6A7038(v83, v108, type metadata accessor for LocalizedSettingValue);
    v61 = v99;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_21C6C6EA4(0, v61[2] + 1, 1, v61);
    }

    v87 = v61[2];
    v86 = v61[3];
    v88 = v113;
    if (v87 >= v86 >> 1)
    {
      v61 = sub_21C6C6EA4((v86 > 1), v87 + 1, 1, v61);
    }

    sub_21C6A70A0(v107, type metadata accessor for LocalizedSettingValue);
    (*v90)(v106, v114);
    v61[2] = v87 + 1;
    v77 = v88 + 1;
    result = sub_21C6A7100(v108, v61 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v87, type metadata accessor for LocalizedSettingValue);
    v78 = v98 + 16;
    v75 = v95;
    if (v94 == v77)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_21C6B9258()
{
  v1 = 0xD000000000000014;
  v2 = "ers";
  v3 = *v0;
  v4 = "PSSliderSpecifier";
  v5 = "PSTitleValueSpecifier";
  if (v3 == 4)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v3 != 4)
  {
    v5 = "PSTextFieldSpecifier";
  }

  if (v3 == 3)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = v6;
  }

  if (v3 != 3)
  {
    v4 = v5;
  }

  v8 = "PSChildPaneSpecifier";
  v9 = 0xD000000000000017;
  if (v3 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = "PSToggleSwitchSpecifier";
  }

  if (*v0)
  {
    v1 = v9;
    v2 = v8;
  }

  if (*v0 <= 2u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v7;
  }

  if (*v0 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x21CF0F390](v10, v11 | 0x8000000000000000);

  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  v12 = type metadata accessor for TitleValueSetting(0);
  MEMORY[0x21CF0F390](*&v0[*(v12 + 24)], *&v0[*(v12 + 24) + 8]);
  return 0;
}

uint64_t sub_21C6B936C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C6B9258();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for TitleValueSettingView(uint64_t a1)
{
  result = qword_27CDE7230;
  if (!qword_27CDE7230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6B9408(uint64_t a1)
{
  sub_21C6A7260(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TitleValueSetting(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21C6B948C()
{
  result = qword_27CDE6DD8;
  if (!qword_27CDE6DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6DD0, &qword_21C6D2540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6DD8);
  }

  return result;
}

uint64_t sub_21C6B950C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
  sub_21C6B948C();
  v4 = sub_21C6CE400();
  swift_getKeyPath();
  sub_21C6CE420();

  v5 = a1 + *(type metadata accessor for TitleValueSettingView(0) + 20);
  v6 = *&v5[*(type metadata accessor for TitleValueSetting(0) + 32)];
  v7 = type metadata accessor for PropertyListValueView(0);
  *(a2 + *(v7 + 20)) = v6;
  *(a2 + *(v7 + 24)) = 0;
}

uint64_t sub_21C6B95F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_21C6CDF20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = a1 + *(type metadata accessor for TitleValueSettingView(0) + 20);
  v15 = type metadata accessor for TitleValueSetting(0);
  sub_21C6A96C0(v14 + *(v15 + 20), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_21C6A9730(v6);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    v17 = sub_21C6CE750();
    v18 = v21;
    v23 = v22;
    v20 = v24;
    result = (*(v8 + 8))(v13, v7);
    v19 = v23 & 1;
  }

  *a2 = v17;
  a2[1] = v18;
  a2[2] = v19;
  a2[3] = v20;
  return result;
}

uint64_t sub_21C6B9800()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7240, &qword_21C6D1B10);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-v3];
  v8 = v0;
  v7 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F70, &qword_21C6D1138);
  type metadata accessor for PropertyListValueView(0);
  sub_21C6AD218();
  sub_21C6B9B58(&qword_27CDE6E40, type metadata accessor for PropertyListValueView, &unk_21C6D2730);
  sub_21C6CE350();
  sub_21C6B9258();
  sub_21C6B99E0();
  sub_21C6CE7F0();

  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_21C6B99E0()
{
  result = qword_27CDE7248;
  if (!qword_27CDE7248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7240, &qword_21C6D1B10);
    sub_21C6AD218();
    sub_21C6B9B58(&qword_27CDE6E40, type metadata accessor for PropertyListValueView, &unk_21C6D2730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7248);
  }

  return result;
}

unint64_t sub_21C6B9A9C()
{
  result = qword_27CDE7250;
  if (!qword_27CDE7250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7258, &qword_21C6D1B40);
    sub_21C6B99E0();
    sub_21C6B9B58(&qword_27CDE6D70, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7250);
  }

  return result;
}

uint64_t sub_21C6B9B58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ToggleSetting(uint64_t a1)
{
  result = qword_27CDE7260;
  if (!qword_27CDE7260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6B9C14(uint64_t a1)
{
  sub_21C6CDF20();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PropertyListValue(319);
    if (v2 <= 0x3F)
    {
      sub_21C6A2ED4(319, &qword_27CDE6C68, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21C6A2ED4(319, &qword_27CDE6C70, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

BOOL sub_21C6B9D1C()
{
  v1 = *(v0 + *(type metadata accessor for ToggleSetting(0) + 48));
  if (!*(v1 + 16))
  {
    return 1;
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v4 = 6578512;
  }

  else
  {
    v4 = 0x656E6F6850;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = (v1 + 40);
  v7 = *(v1 + 16) + 1;
  do
  {
    v8 = --v7 != 0;
    if (!v7)
    {
      break;
    }

    if (*(v6 - 1) == v4 && *v6 == v5)
    {
      break;
    }

    v6 += 2;
  }

  while ((sub_21C6CEE20() & 1) == 0);

  return v8;
}

uint64_t sub_21C6B9E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v87 = a8;
  v77 = a7;
  v86 = a6;
  v76 = a5;
  v88 = a4;
  v82 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA8, &unk_21C6D1A90);
  MEMORY[0x28223BE20](v11 - 8);
  v72 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v71 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v71 - v17;
  v81 = type metadata accessor for PropertyListValue(0);
  v78 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v74 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v75 = &v71 - v21;
  MEMORY[0x28223BE20](v22);
  v80 = &v71 - v23;
  MEMORY[0x28223BE20](v24);
  v79 = &v71 - v25;
  v26 = sub_21C6CE010();
  MEMORY[0x28223BE20](v26 - 8);
  v27 = sub_21C6CDF00();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_21C6CEB80();
  MEMORY[0x28223BE20](v31 - 8);
  v32 = sub_21C6CDF20();
  v83 = *(v32 - 8);
  v84 = v32;
  MEMORY[0x28223BE20](v32);
  v73 = &v71 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v85 = &v71 - v35;
  if (!*(a1 + 16) || (v36 = sub_21C6C70F8(0x656C746954, 0xE500000000000000), (v37 & 1) == 0))
  {

    (*(v28 + 8))(v88, v27);
    goto LABEL_18;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v36, v91);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v28 + 8))(v88, v27);

    goto LABEL_18;
  }

  v71 = a9;
  v38 = HIBYTE(*(&v90[0] + 1)) & 0xFLL;
  if ((*(&v90[0] + 1) & 0x2000000000000000) == 0)
  {
    v38 = *&v90[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {
    (*(v28 + 8))(v88, v27);

    goto LABEL_23;
  }

  sub_21C6CEB70();
  v39 = v88;
  (*(v28 + 16))(v30, v88, v27);
  sub_21C6CE000();
  sub_21C6CDF30();
  if (!*(a1 + 16) || (v40 = sub_21C6C70F8(7955787, 0xE300000000000000), (v41 & 1) == 0))
  {

    (*(v28 + 8))(v39, v27);
    (*(v83 + 8))(v85, v84);
LABEL_23:
    a9 = v71;
    goto LABEL_18;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v40, v91);
  v42 = swift_dynamicCast();
  a9 = v71;
  if ((v42 & 1) == 0)
  {
    goto LABEL_27;
  }

  v43 = v90[0];
  v44 = HIBYTE(*(&v90[0] + 1)) & 0xFLL;
  if ((*(&v90[0] + 1) & 0x2000000000000000) == 0)
  {
    v44 = *&v90[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v44)
  {

LABEL_27:

    goto LABEL_28;
  }

  if (!*(a1 + 16) || (v45 = sub_21C6C70F8(0x56746C7561666544, 0xEC00000065756C61), (v46 & 1) == 0))
  {

LABEL_28:

    (*(v28 + 8))(v88, v27);
    (*(v83 + 8))(v85, v84);
    goto LABEL_18;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v45, v90);
  sub_21C6A6FC0(v90, v91);
  sub_21C6A2734(v91, v90);
  sub_21C6C50F8(v90, v18);
  v47 = *(v78 + 48);
  if (v47(v18, 1, v81) != 1)
  {
    v82 = *(&v43 + 1);
    sub_21C6BAACC(v18, v79);
    if (*(a1 + 16) && (v50 = sub_21C6C70F8(0x756C615665757254, 0xE900000000000065), (v51 & 1) != 0))
    {
      sub_21C6A2734(*(a1 + 56) + 32 * v50, v89);
      sub_21C6A6FC0(v89, v90);
      sub_21C6A2734(v90, v89);
      sub_21C6C50F8(v89, v15);
      __swift_destroy_boxed_opaque_existential_1(v90);
      v52 = v47(v15, 1, v81) == 1;
      v53 = v75;
      v54 = v72;
      if (!v52)
      {
        sub_21C6BAACC(v15, v80);
        if (!*(a1 + 16))
        {
          goto LABEL_40;
        }

        goto LABEL_36;
      }

      sub_21C6A6FD0(v15);
    }

    else
    {
      v53 = v75;
      v54 = v72;
    }

    *v80 = 1;
    swift_storeEnumTagMultiPayload();
    if (!*(a1 + 16))
    {
      goto LABEL_40;
    }

LABEL_36:
    v55 = sub_21C6C70F8(0x6C615665736C6146, 0xEA00000000006575);
    if (v56)
    {
      sub_21C6A2734(*(a1 + 56) + 32 * v55, v89);
      sub_21C6A6FC0(v89, v90);
      sub_21C6A2734(v90, v89);
      sub_21C6C50F8(v89, v54);
      __swift_destroy_boxed_opaque_existential_1(v90);
      if (v47(v54, 1, v81) != 1)
      {
        sub_21C6BAACC(v54, v53);
        if (!*(a1 + 16))
        {
          goto LABEL_45;
        }

LABEL_41:
        v57 = sub_21C6C70F8(0xD00000000000001CLL, 0x800000021C6D3170);
        if (v58)
        {
          sub_21C6A2734(*(a1 + 56) + 32 * v57, v90);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DB0, &unk_21C6D0E60);
          if (swift_dynamicCast())
          {
            (*(v28 + 8))(v88, v27);
            __swift_destroy_boxed_opaque_existential_1(v91);
            v59 = *&v89[0];
LABEL_47:
            v60 = v84;
            v61 = *(v83 + 32);
            v62 = v73;
            v61(v73, v85, v84);
            v63 = v74;
            sub_21C6BAACC(v79, v74);
            *a9 = 1;
            v64 = type metadata accessor for ToggleSetting(0);
            v61(&a9[v64[5]], v62, v60);
            v65 = &a9[v64[6]];
            v66 = v82;
            *v65 = v43;
            v65[1] = v66;
            sub_21C6BAACC(v63, &a9[v64[7]]);
            sub_21C6BAACC(v80, &a9[v64[8]]);
            sub_21C6BAACC(*(&v43 + 1), &a9[v64[9]]);
            v67 = &a9[v64[10]];
            v68 = v86;
            *v67 = v76;
            v67[1] = v68;
            v69 = &a9[v64[11]];
            v70 = v87;
            *v69 = v77;
            v69[1] = v70;
            *&a9[v64[12]] = v59;
            return (*(*(v64 - 1) + 56))(a9, 0, 1, v64);
          }

LABEL_46:
          (*(v28 + 8))(v88, v27);
          __swift_destroy_boxed_opaque_existential_1(v91);
          v59 = MEMORY[0x277D84F90];
          goto LABEL_47;
        }

LABEL_45:

        goto LABEL_46;
      }

      sub_21C6A6FD0(v54);
    }

LABEL_40:
    *v53 = 0;
    swift_storeEnumTagMultiPayload();
    if (!*(a1 + 16))
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  (*(v28 + 8))(v88, v27);
  __swift_destroy_boxed_opaque_existential_1(v91);
  (*(v83 + 8))(v85, v84);
  sub_21C6A6FD0(v18);
LABEL_18:
  v48 = type metadata accessor for ToggleSetting(0);
  return (*(*(v48 - 8) + 56))(a9, 1, 1, v48);
}

uint64_t sub_21C6BA95C()
{
  v1 = 0xD000000000000014;
  v2 = "ers";
  v3 = *v0;
  v4 = "PSSliderSpecifier";
  v5 = "PSTitleValueSpecifier";
  if (v3 == 4)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v3 != 4)
  {
    v5 = "PSTextFieldSpecifier";
  }

  if (v3 == 3)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = v6;
  }

  if (v3 != 3)
  {
    v4 = v5;
  }

  v8 = "PSChildPaneSpecifier";
  v9 = 0xD000000000000017;
  if (v3 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = "PSToggleSwitchSpecifier";
  }

  if (*v0)
  {
    v1 = v9;
    v2 = v8;
  }

  if (*v0 <= 2u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v7;
  }

  if (*v0 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x21CF0F390](v10, v11 | 0x8000000000000000);

  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  v12 = type metadata accessor for ToggleSetting(0);
  MEMORY[0x21CF0F390](*&v0[*(v12 + 24)], *&v0[*(v12 + 24) + 8]);
  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  v13 = sub_21C6CDF10();
  MEMORY[0x21CF0F390](v13);

  return 0;
}

uint64_t sub_21C6BAAA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C6BA95C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21C6BAACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyListValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6BAB30@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA8, &unk_21C6D1A90);
  MEMORY[0x28223BE20](v6 - 8);
  v79 = &v76 - v7;
  v77 = type metadata accessor for PropertyListValue(0);
  v8 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v84 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v90 = &v76 - v11;
  MEMORY[0x28223BE20](v12);
  v89 = &v76 - v13;
  MEMORY[0x28223BE20](v14);
  v76 = &v76 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v76 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v76 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v76 - v23;
  v85 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v76 - v27;
  v29 = *(type metadata accessor for ToggleSettingView(0) + 20);
  v88 = a3;
  sub_21C6BB630(a1, a3 + v29, type metadata accessor for ToggleSetting);
  v30 = type metadata accessor for ToggleSetting(0);
  v31 = a1 + v30[7];
  v92 = v28;
  sub_21C6BB630(v31, v28, type metadata accessor for PropertyListValue);
  v32 = (a1 + v30[6]);
  v33 = *v32;
  v34 = v32[1];
  sub_21C6BB630(a1 + v30[8], v24, type metadata accessor for PropertyListValue);
  v35 = v30[9];
  v87 = a1;
  v91 = v21;
  sub_21C6BB630(a1 + v35, v21, type metadata accessor for PropertyListValue);
  if (a2)
  {

    v36 = a2;
  }

  else
  {
    v37 = objc_opt_self();

    v36 = [v37 standardUserDefaults];
  }

  v81 = a2;
  v83 = v33;
  v38 = sub_21C6CEB90();
  v39 = [v36 valueForKey_];

  v40 = v8;
  if (v39)
  {
    sub_21C6CED50();
    swift_unknownObjectRelease();
    sub_21C6A2734(v94, v93);
    v41 = v79;
    sub_21C6C50F8(v93, v79);
    __swift_destroy_boxed_opaque_existential_1(v94);
    v42 = *(v40 + 48);
    v43 = v77;
    if (v42(v41, 1, v77) == 1)
    {
      v44 = v76;
      sub_21C6BB630(v92, v76, type metadata accessor for PropertyListValue);
      if (v42(v41, 1, v43) != 1)
      {
        sub_21C6A6FD0(v41);
      }
    }

    else
    {
      v44 = v76;
      sub_21C6BAACC(v41, v76);
    }

    sub_21C6BAACC(v44, v18);
  }

  else
  {
    sub_21C6BB630(v92, v18, type metadata accessor for PropertyListValue);
  }

  v45 = sub_21C6C8B6C(v18, v24);
  v86 = v18;
  v82 = v34;
  v80 = v36;
  if (v45)
  {
    v46 = 1;
LABEL_16:
    LODWORD(v79) = v46;
    goto LABEL_17;
  }

  if ((sub_21C6C8B6C(v18, v91) & 1) == 0)
  {
    sub_21C6C5BF8(v94);
    v46 = (swift_dynamicCast() & LOBYTE(v93[0]));
    goto LABEL_16;
  }

  LODWORD(v79) = 0;
LABEL_17:
  sub_21C6BB630(v92, v89, type metadata accessor for PropertyListValue);
  sub_21C6BB630(v24, v90, type metadata accessor for PropertyListValue);
  v47 = v84;
  sub_21C6BB630(v91, v84, type metadata accessor for PropertyListValue);
  v48 = *(v40 + 80);
  v49 = (v48 + 16) & ~v48;
  v50 = v85;
  v51 = (v85 + v48 + v49) & ~v48;
  v52 = v24;
  v78 = v24;
  v53 = (v85 + v48 + v51) & ~v48;
  v54 = swift_allocObject();
  v55 = v54 + v49;
  v56 = v54;
  v57 = v89;
  sub_21C6BAACC(v89, v55);
  v58 = v56 + v51;
  v59 = v56;
  v77 = v56;
  v60 = v90;
  sub_21C6BAACC(v90, v58);
  sub_21C6BAACC(v47, v59 + v53);
  sub_21C6BB630(v52, v57, type metadata accessor for PropertyListValue);
  v61 = v91;
  v62 = v60;
  sub_21C6BB630(v91, v60, type metadata accessor for PropertyListValue);
  v63 = (v48 + 24) & ~v48;
  v64 = (v50 + v48 + v63) & ~v48;
  v65 = swift_allocObject();
  v66 = v80;
  *(v65 + 16) = v80;
  sub_21C6BAACC(v57, v65 + v63);
  sub_21C6BAACC(v62, v65 + v64);
  v67 = (v65 + ((v50 + v64 + 7) & 0xFFFFFFFFFFFFFFF8));
  v69 = v82;
  v68 = v83;
  *v67 = v83;
  v67[1] = v69;

  v70 = v66;
  sub_21C6BB98C(v79, v70, v68, v69, sub_21C6BB820, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7270, &qword_21C6D1B98);
  sub_21C694224(&qword_27CDE7278, &qword_27CDE7270, &qword_21C6D1B98, &unk_21C6D2208);
  v71 = sub_21C6CE370();
  v73 = v72;

  sub_21C6BBB68(v87, type metadata accessor for ToggleSetting);
  sub_21C6BBB68(v86, type metadata accessor for PropertyListValue);
  sub_21C6BBB68(v61, type metadata accessor for PropertyListValue);
  sub_21C6BBB68(v78, type metadata accessor for PropertyListValue);
  result = sub_21C6BBB68(v92, type metadata accessor for PropertyListValue);
  v75 = v88;
  *v88 = v71;
  v75[1] = v73;
  v75[2] = sub_21C6BB8D8;
  v75[3] = v65;
  return result;
}