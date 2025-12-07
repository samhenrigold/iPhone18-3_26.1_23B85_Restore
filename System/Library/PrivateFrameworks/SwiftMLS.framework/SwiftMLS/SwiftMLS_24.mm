uint64_t sub_26BFDF54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_26C00959C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26BFDF650(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MLS.AlgorithmIdentifier(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_26C00959C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_26BFDF74C(uint64_t a1)
{
  result = type metadata accessor for MLS.AlgorithmIdentifier(319);
  if (v2 <= 0x3F)
  {
    result = sub_26C00959C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BFDF7D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BFDF830()
{
  v1 = _s10PrivateKeyV17BackingPrivateKeyOMa(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BFDFF70(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = 0x6972502E36353250;
  v6 = 0x6972502E31323550;
  v7 = 0xD00000000000001DLL;
  if (EnumCaseMultiPayload != 3)
  {
    v7 = 0xD000000000000012;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v6 = v7;
  }

  if (EnumCaseMultiPayload)
  {
    v5 = 0x6972502E34383350;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  sub_26BFE09A0(v3);
  return v8;
}

uint64_t sub_26BFDF9D8(uint64_t a1)
{
  v49 = a1;
  v1 = sub_26C009B7C();
  v46 = *(v1 - 8);
  v47 = v1;
  MEMORY[0x28223BE20](v1);
  v45 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26C009D3C();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C00A27C();
  v7 = *(v6 - 8);
  v41 = v6;
  v42 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C00A1EC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26C00A0EC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s10PrivateKeyV17BackingPrivateKeyOMa(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BFDFF70(v48, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v11 + 32))(v13, v20, v10);
      MEMORY[0x26D699B20](1);
      v37 = sub_26C00A1AC();
      v39 = v38;
      sub_26C00911C();
      sub_26BE00258(v37, v39);
      return (*(v11 + 8))(v13, v10);
    }

    else
    {
      (*(v15 + 32))(v17, v20, v14);
      MEMORY[0x26D699B20](0);
      v26 = sub_26C00A05C();
      v28 = v27;
      sub_26C00911C();
      sub_26BE00258(v26, v28);
      return (*(v15 + 8))(v17, v14);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v30 = v41;
    v31 = v42;
    (*(v42 + 32))(v9, v20, v41);
    MEMORY[0x26D699B20](2);
    v32 = sub_26C00A26C();
    v34 = v33;
    sub_26C00911C();
    sub_26BE00258(v32, v34);
    return (*(v31 + 8))(v9, v30);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v23 = v43;
      v22 = v44;
      (*(v43 + 32))(v5, v20, v44);
      MEMORY[0x26D699B20](4);
      v24 = sub_26C009CBC();
    }

    else
    {
      v5 = v45;
      v23 = v46;
      v22 = v47;
      (*(v46 + 32))(v45, v20, v47);
      MEMORY[0x26D699B20](5);
      v24 = sub_26C009B3C();
    }

    v35 = v24;
    v36 = v25;
    sub_26C00911C();
    sub_26BE00258(v35, v36);
    return (*(v23 + 8))(v5, v22);
  }
}

uint64_t sub_26BFDFF0C()
{
  sub_26C00B05C();
  sub_26BFDF9D8(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFDFF70(uint64_t a1, uint64_t a2)
{
  v4 = _s10PrivateKeyV17BackingPrivateKeyOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFDFFD8(uint64_t a1)
{
  sub_26C00B05C();
  sub_26BFDF9D8(v2);
  return sub_26C00B0CC();
}

BOOL sub_26BFE0018(char *a1, char *a2)
{
  v120 = a1;
  v121 = a2;
  v2 = sub_26C009B7C();
  v113 = *(v2 - 8);
  v114 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v106 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v105 = &v99 - v5;
  v6 = sub_26C009D3C();
  v111 = *(v6 - 8);
  v112 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v104 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v99 - v9;
  v10 = sub_26C00A27C();
  v109 = *(v10 - 8);
  v110 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v102 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v101 = &v99 - v13;
  v14 = sub_26C00A1EC();
  v118 = *(v14 - 8);
  v119 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v100 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v117 = &v99 - v17;
  v18 = sub_26C00A0EC();
  v115 = *(v18 - 8);
  v116 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v99 - v22;
  v24 = _s10PrivateKeyV17BackingPrivateKeyOMa(0);
  v25 = MEMORY[0x28223BE20](v24);
  v108 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v107 = &v99 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v99 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v99 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v99 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804607E8, &unk_26C024E10);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v40 = &v99 - v39;
  v41 = *(v38 + 56);
  sub_26BFDFF70(v120, &v99 - v39);
  v42 = v41;
  sub_26BFDFF70(v121, &v40[v41]);
  v43 = v40;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v120 = v23;
    v121 = v21;
    v55 = v115;
    v56 = v116;
    v58 = v117;
    v57 = v118;
    v59 = v119;
    if (EnumCaseMultiPayload)
    {
      sub_26BFDFF70(v43, v34);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v71 = v57;
        v72 = *(v57 + 32);
        v73 = v58;
        v74 = v59;
        v72(v58, v34, v59);
        v75 = v100;
        v72(v100, (v43 + v42), v59);
        v76 = v73;
        v77 = sub_26C00A1AC();
        v79 = v78;
        v80 = sub_26C00A1AC();
        v82 = v81;
        v69 = sub_26BE02DEC(v77, v79, v80, v81);
        sub_26BE00258(v80, v82);
        sub_26BE00258(v77, v79);
        v83 = *(v71 + 8);
        v83(v75, v74);
        v83(v76, v74);
        sub_26BFE09A0(v43);
        return v69;
      }

      (*(v57 + 8))(v34, v59);
    }

    else
    {
      sub_26BFDFF70(v43, v36);
      if (!swift_getEnumCaseMultiPayload())
      {
        v87 = v55;
        v88 = *(v55 + 32);
        v89 = v120;
        v88(v120, v36, v56);
        v90 = v121;
        v88(v121, (v43 + v42), v56);
        v91 = sub_26C00A05C();
        v93 = v92;
        v94 = v43;
        v95 = sub_26C00A05C();
        v97 = v96;
        v69 = sub_26BE02DEC(v91, v93, v95, v96);
        sub_26BE00258(v95, v97);
        sub_26BE00258(v91, v93);
        v98 = *(v87 + 8);
        v98(v90, v56);
        v98(v89, v56);
        sub_26BFE09A0(v94);
        return v69;
      }

      (*(v55 + 8))(v36, v56);
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_26BFDFF70(v40, v31);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v46 = v109;
      v45 = v110;
      v60 = *(v109 + 32);
      v48 = v101;
      v60(v101, v31, v110);
      v49 = v102;
      v60(v102, (v43 + v41), v45);
      v50 = sub_26C00A26C();
      v52 = v61;
      v53 = sub_26C00A26C();
      goto LABEL_14;
    }

    (*(v109 + 8))(v31, v110);
LABEL_23:
    sub_26BFE0938(v43);
    return 0;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v62 = v108;
    sub_26BFDFF70(v40, v108);
    v63 = swift_getEnumCaseMultiPayload();
    if (v63 == 4)
    {
      v46 = v113;
      v45 = v114;
      v64 = *(v113 + 32);
      v48 = v105;
      v64(v105, v62, v114);
      v49 = v106;
      v64(v106, v43 + v41, v45);
      v50 = sub_26C009B3C();
      v52 = v65;
      v53 = sub_26C009B3C();
      goto LABEL_14;
    }

    v85 = v113;
    v84 = v114;
    goto LABEL_20;
  }

  v62 = v107;
  sub_26BFDFF70(v40, v107);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v85 = v111;
    v84 = v112;
LABEL_20:
    (*(v85 + 8))(v62, v84);
    goto LABEL_23;
  }

  v46 = v111;
  v45 = v112;
  v47 = *(v111 + 32);
  v48 = v103;
  v47(v103, v62, v112);
  v49 = v104;
  v47(v104, v43 + v41, v45);
  v50 = sub_26C009CBC();
  v52 = v51;
  v53 = sub_26C009CBC();
LABEL_14:
  v66 = v53;
  v67 = v43;
  v68 = v54;
  v69 = sub_26BE02DEC(v50, v52, v53, v54);
  sub_26BE00258(v66, v68);
  sub_26BE00258(v50, v52);
  v70 = *(v46 + 8);
  v70(v49, v45);
  v70(v48, v45);
  sub_26BFE09A0(v67);
  return v69;
}

uint64_t sub_26BFE0938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804607E8, &unk_26C024E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFE09A0(uint64_t a1)
{
  v2 = _s10PrivateKeyV17BackingPrivateKeyOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFE09FC(uint64_t a1)
{
  result = sub_26C00A0EC();
  if (v2 <= 0x3F)
  {
    result = sub_26C00A1EC();
    if (v3 <= 0x3F)
    {
      result = sub_26C00A27C();
      if (v4 <= 0x3F)
      {
        result = sub_26C009D3C();
        if (v5 <= 0x3F)
        {
          result = sub_26C009B7C();
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26BFE0AC0(uint64_t a1, uint64_t a2)
{
  v4 = _s10PrivateKeyV17BackingPrivateKeyOMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BFE0B40(uint64_t a1, uint64_t a2)
{
  v4 = _s10PrivateKeyV17BackingPrivateKeyOMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26BFE0BB0(uint64_t a1)
{
  result = _s10PrivateKeyV17BackingPrivateKeyOMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BFE0C64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BFE0D4C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_26C00930C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C00934C();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  (*(v5 + 104))(v7, *MEMORY[0x277D6A898], v4);
  return sub_26C0092EC();
}

uint64_t sub_26BFE0E54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v164 = a2;
  v3 = sub_26C00930C();
  v153 = *(v3 - 8);
  v154 = v3;
  MEMORY[0x28223BE20](v3);
  v152 = &v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C0095CC();
  v159 = *(v5 - 8);
  v160 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v150 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v157 = &v140 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v158 = &v140 - v11;
  MEMORY[0x28223BE20](v10);
  v163 = &v140 - v12;
  v166 = _s11GeneralNameO9OtherNameVMa(0);
  v13 = MEMORY[0x28223BE20](v166);
  v168 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v167 = &v140 - v15;
  v16 = sub_26C00950C();
  v169 = *(v16 - 8);
  v170 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v144 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v147 = &v140 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v149 = &v140 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v155 = &v140 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v156 = &v140 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v162 = &v140 - v28;
  MEMORY[0x28223BE20](v27);
  v165 = &v140 - v29;
  v30 = _s11GeneralNameOMa(0);
  v31 = MEMORY[0x28223BE20](v30);
  v143 = &v140 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v146 = &v140 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v151 = &v140 - v36;
  MEMORY[0x28223BE20](v35);
  v161 = &v140 - v37;
  v38 = sub_26C00934C();
  v171 = *(v38 - 8);
  v39 = MEMORY[0x28223BE20](v38);
  v142 = &v140 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v141 = &v140 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v145 = &v140 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v148 = &v140 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v140 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v140 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v140 - v54;
  MEMORY[0x28223BE20](v53);
  v57 = &v140 - v56;
  v172 = a1;
  sub_26C0094EC();
  if (qword_28045E188 != -1)
  {
    swift_once();
  }

  v58 = __swift_project_value_buffer(v38, qword_280479248);
  sub_26BFE5820(&qword_28045ED78, MEMORY[0x277D6A8A8], MEMORY[0x277D6A8B0]);
  if (sub_26C00A43C())
  {
    v59 = v171;
    v162 = *(v171 + 8);
    v163 = v30;
    (v162)(v57, v38);
    v60 = v169;
    v61 = v170;
    v62 = v165;
    (*(v169 + 16))(v165, v172, v170);
    (*(v59 + 16))(v55, v58, v38);
    v63 = *(v166 + 20);
    v64 = sub_26C0094DC();
    v65 = *(*(v64 - 8) + 56);
    v66 = v167;
    v171 = v63;
    v65(&v167[v63], 1, 1, v64);
    v67 = v173;
    sub_26C0097FC();
    v173 = v67;
    if (v67)
    {
      v68 = *(v60 + 8);
      v68(v172, v61);
      (v162)(v55, v38);
      v68(v62, v61);
      return sub_26BE2E258(v66 + v171, &qword_28045EE48, &unk_26C022430);
    }

    else
    {
      v86 = *(v60 + 8);
      v86(v172, v61);
      (v162)(v55, v38);
      v86(v62, v61);
      sub_26BE2E258(v66 + v171, &qword_28045EE48, &unk_26C022430);
      sub_26BFE5940(v168, v66, _s11GeneralNameO9OtherNameVMa);
      v87 = v66;
      v88 = v161;
      sub_26BFE5940(v87, v161, _s11GeneralNameO9OtherNameVMa);
      swift_storeEnumTagMultiPayload();
      return sub_26BFE5940(v88, v164, _s11GeneralNameOMa);
    }
  }

  if (qword_28045E190 != -1)
  {
    swift_once();
  }

  v70 = __swift_project_value_buffer(v38, qword_280479260);
  if (sub_26C00A43C())
  {
    v71 = v171;
    (*(v171 + 8))(v57, v38);
    v72 = v169;
    v73 = v170;
    v74 = v172;
    (*(v169 + 16))(v162, v172, v170);
    (*(v71 + 16))(v52, v70, v38);
    v75 = v163;
    v76 = v173;
    sub_26C0095AC();
    if (v76)
    {
      v77 = *(v72 + 8);
      v78 = v74;
      return v77(v78, v73);
    }

    v94 = v158;
    v95 = v159;
    v96 = v75;
    v97 = v75;
    v98 = v160;
    (*(v159 + 16))(v158, v96, v160);
    v99 = MEMORY[0x26D699010](v94);
    v100 = v72;
    v101 = v99;
    v103 = v102;
    (*(v100 + 8))(v74, v73);
    (*(v95 + 8))(v97, v98);
    v104 = v164;
    *v164 = v101;
    v104[1] = v103;
    return swift_storeEnumTagMultiPayload();
  }

  v163 = v30;
  if (qword_28045E198 != -1)
  {
    swift_once();
  }

  v79 = __swift_project_value_buffer(v38, qword_280479278);
  v80 = sub_26C00A43C();
  v81 = v172;
  if (v80)
  {
    v82 = v171;
    (*(v171 + 8))(v57, v38);
    v83 = v169;
    v73 = v170;
    (*(v169 + 16))(v156, v81, v170);
    (*(v82 + 16))(v49, v79, v38);
    v84 = v157;
    v85 = v173;
    sub_26C0095AC();
    if (v85)
    {
      v77 = *(v83 + 8);
      v78 = v81;
      return v77(v78, v73);
    }

    v107 = v158;
    v108 = v159;
    v109 = v160;
    (*(v159 + 16))(v158, v84, v160);
    v110 = MEMORY[0x26D699010](v107);
    v111 = v83;
    v112 = v110;
    v114 = v113;
    (*(v111 + 8))(v81, v73);
    (*(v108 + 8))(v84, v109);
    v115 = v164;
    *v164 = v112;
    v115[1] = v114;
    return swift_storeEnumTagMultiPayload();
  }

  if (qword_28045E1A0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v38, qword_280479290);
  v89 = sub_26C00A43C();
  v90 = v173;
  v91 = v171;
  if (v89)
  {
LABEL_21:
    (*(v91 + 8))(v57, v38);
    v92 = v169;
    v93 = v170;
    (*(v169 + 16))(v155, v81, v170);
    sub_26C00948C();
    (*(v92 + 8))(v81, v93);
    return swift_storeEnumTagMultiPayload();
  }

  if (qword_28045E1A8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v38, qword_2804792A8);
  if ((sub_26C00A43C() & 1) == 0)
  {
    if (qword_28045E1B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v38, qword_2804792C0);
    v116 = sub_26C00A43C();
    v91 = v171;
    if (v116)
    {
      goto LABEL_21;
    }

    if (qword_28045E1B8 != -1)
    {
      swift_once();
    }

    v117 = __swift_project_value_buffer(v38, qword_2804792D8);
    if (sub_26C00A43C())
    {
      v118 = v171;
      (*(v171 + 8))(v57, v38);
      v119 = v169;
      (*(v169 + 16))(v149, v81, v170);
      (*(v118 + 16))(v148, v117, v38);
      v120 = v150;
      sub_26C0095AC();
      if (v90)
      {
        return (*(v119 + 8))(v81, v170);
      }

      v130 = v158;
      v131 = v159;
      v132 = v160;
      (*(v159 + 16))(v158, v120, v160);
      v133 = MEMORY[0x26D699010](v130);
      v134 = v119;
      v135 = v133;
      v137 = v136;
      (*(v134 + 8))(v81, v170);
      (*(v131 + 8))(v120, v132);
      v138 = v164;
      *v164 = v135;
      v138[1] = v137;
      return swift_storeEnumTagMultiPayload();
    }

    if (qword_28045E1C0 != -1)
    {
      swift_once();
    }

    v121 = __swift_project_value_buffer(v38, qword_2804792F0);
    if (sub_26C00A43C())
    {
      v122 = v171;
      (*(v171 + 8))(v57, v38);
      v123 = v169;
      v124 = v170;
      (*(v169 + 16))(v147, v81, v170);
      (*(v122 + 16))(v145, v121, v38);
      v125 = v146;
      sub_26C00938C();
      if (!v90)
      {
LABEL_51:
        (*(v123 + 8))(v81, v124);
        swift_storeEnumTagMultiPayload();
        return sub_26BFE5940(v125, v164, _s11GeneralNameOMa);
      }
    }

    else
    {
      if (qword_28045E1C8 != -1)
      {
        swift_once();
      }

      v126 = __swift_project_value_buffer(v38, qword_280479308);
      v127 = sub_26C00A43C();
      v128 = v171;
      v129 = *(v171 + 8);
      v129(v57, v38);
      if ((v127 & 1) == 0)
      {
        v139 = v142;
        sub_26C0094EC();
        sub_26C00955C();
        sub_26BFE5820(&qword_28045ED80, MEMORY[0x277D6A9C0], MEMORY[0x277D6A9C8]);
        swift_allocError();
        sub_26C00954C();
        v129(v139, v38);
        swift_willThrow();
        return (*(v169 + 8))(v81, v170);
      }

      v123 = v169;
      v124 = v170;
      (*(v169 + 16))(v144, v81, v170);
      (*(v128 + 16))(v141, v126, v38);
      v125 = v143;
      sub_26C00943C();
      if (!v90)
      {
        goto LABEL_51;
      }
    }

    return (*(v123 + 8))(v81, v124);
  }

  (*(v171 + 8))(v57, v38);
  sub_26C00933C();
  v105 = v152;
  sub_26C00932C();
  v106 = v151;
  sub_26C00979C();
  (*(v169 + 8))(v81, v170);
  if (v90)
  {
    return (*(v153 + 8))(v105, v154);
  }

  (*(v153 + 8))(v105, v154);
  return sub_26BFE5940(v106, v164, _s11GeneralNameOMa);
}

uint64_t sub_26BFE219C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_26C00950C();
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_26BFBF280();
  result = sub_26C0096EC();
  if (!v2)
  {
    *a2 = v9[1];
    _s11GeneralNameOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_26BFE22B4(uint64_t a1)
{
  v53 = a1;
  v1 = sub_26C00947C();
  v48 = *(v1 - 8);
  v49 = v1;
  MEMORY[0x28223BE20](v1);
  v47 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26C0093DC();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C0094DC();
  v52 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - v9;
  v11 = sub_26C0095CC();
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v44 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  v20 = _s11GeneralNameO9OtherNameVMa(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = _s11GeneralNameOMa(0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BFE5A18(v54, v25, _s11GeneralNameOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v34 = v55;
        result = sub_26C0095DC();
        if (!v34)
        {
          if (qword_28045E198 != -1)
          {
            swift_once();
          }

          v35 = sub_26C00934C();
          __swift_project_value_buffer(v35, qword_280479278);
          sub_26C0095BC();
          return (*(v50 + 8))(v17, v51);
        }
      }

      else
      {
        v41 = v52;
        (*(v52 + 32))(v10, v25, v5);
        sub_26C0094CC();
        return (*(v41 + 8))(v10, v5);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v39 = v55;
      result = sub_26C0095DC();
      if (!v39)
      {
        if (qword_28045E190 != -1)
        {
          swift_once();
        }

        v40 = sub_26C00934C();
        __swift_project_value_buffer(v40, qword_280479260);
        sub_26C0095BC();
        return (*(v50 + 8))(v19, v51);
      }
    }

    else
    {
      sub_26BFE5940(v25, v22, _s11GeneralNameO9OtherNameVMa);
      if (qword_28045E188 != -1)
      {
        swift_once();
      }

      v31 = sub_26C00934C();
      v32 = __swift_project_value_buffer(v31, qword_280479248);
      MEMORY[0x28223BE20](v32);
      *(&v44 - 2) = v22;
      sub_26C00973C();
      return sub_26BFE5A80(v22, _s11GeneralNameO9OtherNameVMa);
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v56 = *v25;
      if (qword_28045E1A8 != -1)
      {
        swift_once();
      }

      v36 = sub_26C00934C();
      __swift_project_value_buffer(v36, qword_2804792A8);
      sub_26BE85F4C();
      sub_26C00975C();
    }

    else
    {
      v43 = v52;
      (*(v52 + 32))(v8, v25, v5);
      sub_26C0094CC();
      return (*(v43 + 8))(v8, v5);
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    v37 = v55;
    result = sub_26C0095DC();
    if (!v37)
    {
      if (qword_28045E1B8 != -1)
      {
        swift_once();
      }

      v38 = sub_26C00934C();
      __swift_project_value_buffer(v38, qword_2804792D8);
      sub_26C0095BC();
      return (*(v50 + 8))(v14, v51);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 7)
    {
      v27 = v44;
      v28 = v45;
      v29 = v46;
      (*(v45 + 32))(v44, v25, v46);
      if (qword_28045E1C0 != -1)
      {
        swift_once();
      }

      v30 = sub_26C00934C();
      __swift_project_value_buffer(v30, qword_2804792F0);
      sub_26C0093CC();
    }

    else
    {
      v27 = v47;
      v28 = v48;
      v29 = v49;
      (*(v48 + 32))(v47, v25, v49);
      if (qword_28045E1C8 != -1)
      {
        swift_once();
      }

      v42 = sub_26C00934C();
      __swift_project_value_buffer(v42, qword_280479308);
      sub_26C00946C();
    }

    return (*(v28 + 8))(v27, v29);
  }

  return result;
}

uint64_t sub_26BFE2AF0(uint64_t a1)
{
  v47 = a1;
  v2 = sub_26C00947C();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C0093DC();
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s25RelativeDistinguishedNameVMa(0);
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C0094DC();
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x28223BE20](v11);
  v44 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v40 - v14;
  v16 = _s11GeneralNameO9OtherNameVMa(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s11GeneralNameOMa(0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BFE5A18(v1, v21, _s11GeneralNameOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v23 = v41;
          (*(v41 + 32))(v7, v21, v5);
          MEMORY[0x26D699B20](7);
          sub_26BFE5820(&qword_280460870, MEMORY[0x277D6A8E8], MEMORY[0x277D6A8F0]);
          sub_26C00A3CC();
          return (*(v23 + 8))(v7, v5);
        }

        else
        {
          v38 = v42;
          v37 = v43;
          (*(v42 + 32))(v4, v21, v43);
          MEMORY[0x26D699B20](8);
          sub_26BFE5820(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
          sub_26C00A3CC();
          return (*(v38 + 8))(v4, v37);
        }
      }

      v27 = 6;
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v28 = *v21;
      v29 = v47;
      MEMORY[0x26D699B20](4);
      MEMORY[0x26D699B20](*(v28 + 16));
      v30 = *(v28 + 16);
      if (v30)
      {
        v31 = v28 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
        v32 = *(v40 + 72);
        do
        {
          sub_26BFE5A18(v31, v10, _s25RelativeDistinguishedNameVMa);
          sub_26BFDBB64(v29);
          sub_26BFE5A80(v10, _s25RelativeDistinguishedNameVMa);
          v31 += v32;
          --v30;
        }

        while (v30);
      }
    }

    v34 = v44;
    v33 = v45;
    v35 = v46;
    (*(v45 + 32))(v44, v21, v46);
    v36 = 5;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v27 = 2;
LABEL_18:
      MEMORY[0x26D699B20](v27);
LABEL_20:
      sub_26C00A58C();
    }

    v34 = v44;
    v33 = v45;
    v35 = v46;
    (*(v45 + 32))(v44, v21, v46);
    v36 = 3;
LABEL_25:
    MEMORY[0x26D699B20](v36);
    sub_26BFE5820(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    return (*(v33 + 8))(v34, v35);
  }

  if (EnumCaseMultiPayload)
  {
    MEMORY[0x26D699B20](1);
    goto LABEL_20;
  }

  sub_26BFE5940(v21, v18, _s11GeneralNameO9OtherNameVMa);
  MEMORY[0x26D699B20](0);
  sub_26BFE5820(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  sub_26C00A3CC();
  sub_26BEE2A7C(&v18[*(v16 + 20)], v15);
  v26 = v45;
  v25 = v46;
  if ((*(v45 + 48))(v15, 1, v46) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    v39 = v44;
    (*(v26 + 32))(v44, v15, v25);
    sub_26C00B07C();
    sub_26BFE5820(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    (*(v26 + 8))(v39, v25);
  }

  return sub_26BFE5A80(v18, _s11GeneralNameO9OtherNameVMa);
}

uint64_t sub_26BFE3290()
{
  sub_26C00B05C();
  sub_26BFE2AF0(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFE32D4(uint64_t a1)
{
  sub_26C00B05C();
  sub_26BFE2AF0(v2);
  return sub_26C00B0CC();
}

uint64_t sub_26BFE3344()
{
  v1 = sub_26C00947C();
  v56 = *(v1 - 8);
  v57 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v54 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v55 = &v53 - v4;
  v5 = _s11GeneralNameO9OtherNameVMa(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v53 - v9;
  v11 = sub_26C0093DC();
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x28223BE20](v11);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C0094DC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  v20 = _s11GeneralNameOMa(0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BFE5A18(v0, v22, _s11GeneralNameOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_26BFE5940(v22, v10, _s11GeneralNameO9OtherNameVMa);
        strcpy(v63, "OtherName(");
        BYTE3(v63[1]) = 0;
        HIDWORD(v63[1]) = -369098752;
        sub_26BFE5A18(v10, v8, _s11GeneralNameO9OtherNameVMa);
        v33 = sub_26C00A51C();
        MEMORY[0x26D699090](v33);

        MEMORY[0x26D699090](41, 0xE100000000000000);
        v34 = v63[0];
        sub_26BFE5A80(v10, _s11GeneralNameO9OtherNameVMa);
        return v34;
      }

      v35 = *v22;
      v36 = v22[1];
      v37 = 0x614E323238434652;
      v38 = 0xEB0000000028656DLL;
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v35 = *v22;
      v36 = v22[1];
      v37 = 0x28656D614E534E44;
      v38 = 0xE800000000000000;
LABEL_16:
      v63[0] = v37;
      v63[1] = v38;
      v61 = v35;
      v62 = v36;
      v40 = sub_26C00A51C();
      goto LABEL_17;
    }

    (*(v14 + 32))(v19, v22, v13);
    strcpy(v63, "X400Address(");
    BYTE5(v63[1]) = 0;
    HIWORD(v63[1]) = -5120;
    (*(v14 + 16))(v17, v19, v13);
    v41 = sub_26C00A51C();
LABEL_21:
    MEMORY[0x26D699090](v41);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    v34 = v63[0];
    (*(v14 + 8))(v19, v13);
    return v34;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v39 = *v22;
      v63[0] = 0;
      v63[1] = 0xE000000000000000;
      sub_26C00AC1C();

      strcpy(v63, "DirectoryName(");
      HIBYTE(v63[1]) = -18;
      v61 = v39;
      v40 = sub_26C00A51C();
LABEL_17:
      MEMORY[0x26D699090](v40);

      MEMORY[0x26D699090](41, 0xE100000000000000);
      return v63[0];
    }

    (*(v14 + 32))(v19, v22, v13);
    v63[0] = 0;
    v63[1] = 0xE000000000000000;
    sub_26C00AC1C();

    strcpy(v63, "EDIPartyName(");
    HIWORD(v63[1]) = -4864;
    (*(v14 + 16))(v17, v19, v13);
    v41 = sub_26C00A51C();
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v35 = *v22;
    v36 = v22[1];
    v37 = 675893845;
    v38 = 0xE400000000000000;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v25 = v58;
    v24 = v59;
    v26 = v60;
    (*(v59 + 32))(v58, v22, v60);
    strcpy(v63, "IPAddress(");
    BYTE3(v63[1]) = 0;
    HIDWORD(v63[1]) = -369098752;
    v30 = sub_26C0093BC();
    if (v29)
    {
      v46 = v29;
      v47 = v28;
      v48 = v27;
      sub_26C00AF4C();
      swift_unknownObjectRetain_n();
      v49 = swift_dynamicCastClass();
      if (!v49)
      {
        swift_unknownObjectRelease();
        v49 = MEMORY[0x277D84F90];
      }

      v50 = *(v49 + 16);

      if (__OFSUB__(v46 >> 1, v47))
      {
        __break(1u);
      }

      else if (v50 == (v46 >> 1) - v47)
      {
        v32 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v32)
        {
LABEL_29:
          v61 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
          v51 = sub_26C00A51C();
          MEMORY[0x26D699090](v51);

          MEMORY[0x26D699090](41, 0xE100000000000000);
          v34 = v63[0];
          (*(v24 + 8))(v25, v26);
          return v34;
        }

        v32 = MEMORY[0x277D84F90];
LABEL_28:
        swift_unknownObjectRelease();
        goto LABEL_29;
      }

      swift_unknownObjectRelease();
      v29 = v46;
      v28 = v47;
      v27 = v48;
    }

    sub_26BFB6580(v30, v27, v28, v29);
    v32 = v31;
    goto LABEL_28;
  }

  v43 = v55;
  v42 = v56;
  v44 = v57;
  (*(v56 + 32))(v55, v22, v57);
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  sub_26C00AC1C();

  strcpy(v63, "RegisteredID(");
  HIWORD(v63[1]) = -4864;
  (*(v42 + 16))(v54, v43, v44);
  v45 = sub_26C00A51C();
  MEMORY[0x26D699090](v45);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  v34 = v63[0];
  (*(v42 + 8))(v43, v44);
  return v34;
}

void *sub_26BFE3B6C@<X0>(uint64_t a2@<X8>)
{
  v25 = a2;
  v2 = sub_26C00930C();
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v26 = &v25 - v10;
  v11 = sub_26C00934C();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_26C00947C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0096AC();
  v16 = v29;
  result = sub_26C0096BC();
  if (!v16)
  {
    v18 = v13;
    v29 = v9;
    v19 = v27;
    (*(v28 + 104))(v5, *MEMORY[0x277D6A898], v27);
    v20 = sub_26C0094DC();
    v21 = v26;
    sub_26C0097AC();
    (*(v28 + 8))(v5, v19);
    v22 = v25;
    (*(v18 + 32))(v25, v15, v12);
    v23 = v29;
    sub_26BFE59A8(v21, v29);
    v24 = *(_s11GeneralNameO9OtherNameVMa(0) + 20);
    (*(*(v20 - 8) + 56))(v22 + v24, 1, 1, v20);
    return sub_26BFB7A64(v23, v22 + v24);
  }

  return result;
}

uint64_t sub_26BFE3EF0(uint64_t a1)
{
  v2 = sub_26C00950C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26C00948C();
}

uint64_t sub_26BFE3FC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_26C00930C();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C00934C();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - v10;
  v28 = sub_26C0094DC();
  v12 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00947C();
  v15 = v29;
  result = sub_26C00976C();
  if (!v15)
  {
    v23 = v14;
    v24 = v8;
    v18 = v26;
    v17 = v27;
    v29 = v6;
    v19 = _s11GeneralNameO9OtherNameVMa(0);
    sub_26BEE2A7C(a2 + *(v19 + 20), v11);
    v20 = v28;
    if ((*(v12 + 48))(v11, 1, v28) == 1)
    {
      return sub_26BE2E258(v11, &qword_28045EE48, &unk_26C022430);
    }

    else
    {
      v21 = v23;
      (*(v12 + 32))(v23, v11, v20);
      (*(v18 + 104))(v5, *MEMORY[0x277D6A898], v17);
      v22 = v24;
      sub_26C0092EC();
      sub_26C00975C();
      (*(v25 + 8))(v22, v29);
      return (*(v12 + 8))(v21, v20);
    }
  }

  return result;
}

uint64_t sub_26BFE431C()
{
  v1 = sub_26C0094DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BFE5820(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  sub_26C00A3CC();
  v8 = _s11GeneralNameO9OtherNameVMa(0);
  sub_26BEE2A7C(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_26C00B07C();
    sub_26BFE5820(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    (*(v2 + 8))(v4, v1);
  }

  return sub_26C00B0CC();
}

uint64_t sub_26BFE4558(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_26C00947C();
  sub_26BFE5820(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  sub_26C00A3CC();
  sub_26BEE2A7C(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_26C00B07C();
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_26C00B07C();
  sub_26BFE5820(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
  sub_26C00A3CC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26BFE4780(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BFE5820(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
  sub_26C00A3CC();
  sub_26BEE2A7C(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_26C00B07C();
    sub_26BFE5820(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
    sub_26C00A3CC();
    (*(v5 + 8))(v7, v4);
  }

  return sub_26C00B0CC();
}

uint64_t sub_26BFE49C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 20);
  v12 = sub_26C0094DC();
  (*(*(v12 - 8) + 56))(a4 + v11, 1, 1, v12);
  sub_26C0097FC();
  v13 = sub_26C00934C();
  (*(*(v13 - 8) + 8))(a2, v13);
  v14 = sub_26C00950C();
  (*(*(v14 - 8) + 8))(a1, v14);
  if (v4)
  {
    return sub_26BE2E258(a4 + v11, &qword_28045EE48, &unk_26C022430);
  }

  sub_26BE2E258(a4 + v11, &qword_28045EE48, &unk_26C022430);
  return sub_26BFE5940(v9, a4, _s11GeneralNameO9OtherNameVMa);
}

uint64_t sub_26BFE4D48(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v3);
  v5 = v9 - v4;
  sub_26C00947C();
  sub_26BFE5820(&qword_28045E920, MEMORY[0x277D6A958], MEMORY[0x277D6A970]);
  v9[0] = sub_26C00AEFC();
  v9[1] = v6;
  MEMORY[0x26D699090](8250, 0xE200000000000000);
  sub_26BEE2A7C(v1 + *(a1 + 20), v5);
  v7 = sub_26C00A51C();
  MEMORY[0x26D699090](v7);

  return v9[0];
}

uint64_t MLS.GeneralNames.init(derEncoded:withIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  _s11GeneralNameOMa(0);
  sub_26BFE5820(&qword_280460818, _s11GeneralNameOMa, &unk_26C025174);
  v7 = sub_26C0097EC();
  if (v3)
  {
    v8 = sub_26C00934C();
    (*(*(v8 - 8) + 8))(a2, v8);
    v9 = sub_26C00950C();
    return (*(*(v9 - 8) + 8))(a1, v9);
  }

  else
  {
    v11 = v7;
    v12 = sub_26C00934C();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_26C00950C();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v11;
  }

  return result;
}

void sub_26BFE5070(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    if (v4 == v3)
    {
      break;
    }

    _s11GeneralNameOMa(0);
    sub_26BFE5820(&qword_280460780, _s11GeneralNameOMa, &unk_26C0250BC);
    sub_26C00976C();
    ++v3;
  }

  while (!v2);
}

unint64_t sub_26BFE51A0()
{
  result = qword_280460820;
  if (!qword_280460820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460820);
  }

  return result;
}

unint64_t sub_26BFE51F8()
{
  result = qword_280460828;
  if (!qword_280460828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460828);
  }

  return result;
}

uint64_t sub_26BFE524C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  _s11GeneralNameOMa(0);
  sub_26BFE5820(&qword_280460818, _s11GeneralNameOMa, &unk_26C025174);
  v7 = sub_26C0097EC();
  if (v3)
  {
    v8 = sub_26C00934C();
    (*(*(v8 - 8) + 8))(a2, v8);
    v9 = sub_26C00950C();
    return (*(*(v9 - 8) + 8))(a1, v9);
  }

  else
  {
    v11 = v7;
    v12 = sub_26C00934C();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_26C00950C();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v11;
  }

  return result;
}

uint64_t sub_26BFE54D8(uint64_t a1)
{
  result = _s11GeneralNameO9OtherNameVMa(319);
  if (v2 <= 0x3F)
  {
    result = sub_26C0094DC();
    if (v3 <= 0x3F)
    {
      result = sub_26C0093DC();
      if (v4 <= 0x3F)
      {
        result = sub_26C00947C();
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_26BFE55C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C00947C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26BFE56D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26C00947C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_26BFE5820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BFE5940(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFE59A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFE5A18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFE5A80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_26BFE5AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F0D8, &unk_26C01A530);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  if ((sub_26C00945C() & 1) == 0)
  {
    return 0;
  }

  v14 = *(_s11GeneralNameO9OtherNameVMa(0) + 20);
  v15 = *(v11 + 48);
  sub_26BEE2A7C(a1 + v14, v13);
  sub_26BEE2A7C(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_26BE2E258(v13, &qword_28045EE48, &unk_26C022430);
      return 1;
    }

    goto LABEL_7;
  }

  sub_26BEE2A7C(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_26BE2E258(v13, &qword_28045F0D8, &unk_26C01A530);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_26BFE5820(&qword_28045F0E0, MEMORY[0x277D6A988], MEMORY[0x277D6A998]);
  v18 = sub_26C00A43C();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_26BE2E258(v13, &qword_28045EE48, &unk_26C022430);
  return (v18 & 1) != 0;
}

uint64_t sub_26BFE5DF8(uint64_t a1, uint64_t a2)
{
  v96 = a1;
  v3 = sub_26C00947C();
  v90 = *(v3 - 8);
  v91 = v3;
  MEMORY[0x28223BE20](v3);
  v83 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C0093DC();
  v88 = *(v5 - 8);
  v89 = v5;
  MEMORY[0x28223BE20](v5);
  v82 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C0094DC();
  v92 = *(v7 - 8);
  v93 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v81 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v95 = &v81 - v10;
  v11 = _s11GeneralNameO9OtherNameVMa(0);
  MEMORY[0x28223BE20](v11 - 8);
  v94 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s11GeneralNameOMa(0);
  v14 = MEMORY[0x28223BE20](v13);
  v87 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v86 = &v81 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v84 = (&v81 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v85 = &v81 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v81 - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v81 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&v81 - v29);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = (&v81 - v32);
  MEMORY[0x28223BE20](v31);
  v35 = &v81 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460878, &unk_26C0251A0);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v39 = &v81 - v38;
  v40 = (&v81 + *(v37 + 56) - v38);
  sub_26BFE5A18(v96, &v81 - v38, _s11GeneralNameOMa);
  v41 = a2;
  v42 = v40;
  sub_26BFE5A18(v41, v40, _s11GeneralNameOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v49 = v35;
    v51 = v94;
    v50 = v95;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v52 = v49;
        sub_26BFE5A18(v39, v49, _s11GeneralNameOMa);
        if (!swift_getEnumCaseMultiPayload())
        {
          sub_26BFE5940(v42, v51, _s11GeneralNameO9OtherNameVMa);
          v70 = v39;
          v58 = sub_26BFE5AE0(v52, v51);
          sub_26BFE5A80(v51, _s11GeneralNameO9OtherNameVMa);
          sub_26BFE5A80(v52, _s11GeneralNameO9OtherNameVMa);
          goto LABEL_36;
        }

        sub_26BFE5A80(v52, _s11GeneralNameO9OtherNameVMa);
        goto LABEL_42;
      }

      sub_26BFE5A18(v39, v33, _s11GeneralNameOMa);
      v63 = *v33;
      v64 = v33[1];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v62 = v39;
        if (v63 == *v42 && v64 == v42[1])
        {
          goto LABEL_22;
        }

        v80 = sub_26C00AF2C();

        if (v80)
        {
          goto LABEL_47;
        }

        goto LABEL_52;
      }

      goto LABEL_38;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_26BFE5A18(v39, v30, _s11GeneralNameOMa);
      v53 = *v30;
      v54 = v30[1];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v55 = v39;
        if (v53 == *v42 && v54 == v42[1])
        {
        }

        else
        {
          v79 = sub_26C00AF2C();

          if ((v79 & 1) == 0)
          {
            sub_26BFE5A80(v55, _s11GeneralNameOMa);
            goto LABEL_43;
          }
        }

        v78 = v55;
LABEL_50:
        sub_26BFE5A80(v78, _s11GeneralNameOMa);
        v58 = 1;
        return v58 & 1;
      }

      goto LABEL_38;
    }

    sub_26BFE5A18(v39, v27, _s11GeneralNameOMa);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v65 = v92;
      v66 = *(v92 + 32);
      v67 = v50;
      v68 = v50;
      v69 = v42;
LABEL_35:
      v72 = v93;
      v66(v68, v69, v93);
      v70 = v39;
      v58 = sub_26C00949C();
      v73 = *(v65 + 8);
      v73(v67, v72);
      v73(v27, v72);
      goto LABEL_36;
    }

LABEL_37:
    (*(v92 + 8))(v27, v93);
LABEL_42:
    sub_26BE2E258(v39, &qword_280460878, &unk_26C0251A0);
LABEL_43:
    v58 = 0;
    return v58 & 1;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v44 = v86;
        sub_26BFE5A18(v39, v86, _s11GeneralNameOMa);
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          v46 = v88;
          v45 = v89;
          v47 = v82;
          (*(v88 + 32))(v82, v42, v89);
          v48 = sub_26C0093AC();
LABEL_32:
          v70 = v39;
          v58 = v48;
          v71 = *(v46 + 8);
          v71(v47, v45);
          v71(v44, v45);
LABEL_36:
          sub_26BFE5A80(v70, _s11GeneralNameOMa);
          return v58 & 1;
        }

        v75 = v88;
        v74 = v89;
      }

      else
      {
        v44 = v87;
        sub_26BFE5A18(v39, v87, _s11GeneralNameOMa);
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v46 = v90;
          v45 = v91;
          v47 = v83;
          (*(v90 + 32))(v83, v42, v91);
          v48 = sub_26C00945C();
          goto LABEL_32;
        }

        v75 = v90;
        v74 = v91;
      }

      (*(v75 + 8))(v44, v74);
      goto LABEL_42;
    }

    v59 = v84;
    sub_26BFE5A18(v39, v84, _s11GeneralNameOMa);
    v61 = *v59;
    v60 = v59[1];
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v62 = v39;
      if (v61 == *v40 && v60 == v40[1])
      {
LABEL_22:

LABEL_47:
        v78 = v62;
        goto LABEL_50;
      }

      v77 = sub_26C00AF2C();

      if (v77)
      {
        goto LABEL_47;
      }

LABEL_52:
      sub_26BFE5A80(v62, _s11GeneralNameOMa);
      goto LABEL_43;
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v27 = v85;
    sub_26BFE5A18(v39, v85, _s11GeneralNameOMa);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v65 = v92;
      v66 = *(v92 + 32);
      v67 = v81;
      v68 = v81;
      v69 = v42;
      goto LABEL_35;
    }

    goto LABEL_37;
  }

  sub_26BFE5A18(v39, v24, _s11GeneralNameOMa);
  v56 = *v24;
  if (swift_getEnumCaseMultiPayload() != 4)
  {
LABEL_38:

    goto LABEL_42;
  }

  v57 = v39;
  v58 = sub_26BFB126C(v56, *v40);

  sub_26BFE5A80(v57, _s11GeneralNameOMa);
  return v58 & 1;
}

unint64_t sub_26BFE686C()
{
  result = qword_280460888;
  if (!qword_280460888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460888);
  }

  return result;
}

uint64_t sub_26BFE6910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_26C00934C();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = _s18SignatureAlgorithmVMa(0);
  MEMORY[0x28223BE20](v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BFE76F8(a1, v10);
  if (qword_28045E148 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v8, qword_280479188);
  if (sub_26BFD18D0(v11, v10))
  {
    goto LABEL_10;
  }

  if (qword_28045E150 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_2804791A0);
  if (sub_26BFD18D0(v12, v10))
  {
    goto LABEL_10;
  }

  if (qword_28045E158 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_2804791B8);
  if (sub_26BFD18D0(v13, v10))
  {
LABEL_10:
    sub_26BFE775C(v10);
    sub_26C00958C();
    _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
    sub_26BFE77B8();
    sub_26C0096DC();
    if (v3)
    {
LABEL_11:
      v14 = sub_26C00959C();
      (*(*(v14 - 8) + 8))(a2, v14);
      return sub_26BFE775C(a1);
    }

    v16 = sub_26C00959C();
    (*(*(v16 - 8) + 8))(a2, v16);
    result = sub_26BFE775C(a1);
    v17 = 0;
    v18 = v34[0];
    v19 = v34[1];
    v38 = v35;
    v39 = v36;
    v40 = v37;
    v41 = 0;
  }

  else
  {
    if (qword_28045E160 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v8, qword_2804791D0);
    v22 = sub_26BFD18D0(v21, v10);
    sub_26BFE775C(v10);
    if (!v22)
    {
      v30 = sub_26BFD12E4();
      v32 = sub_26BFCD3D4(v30, v31, 0xD000000000000018, 0x800000026C02DAB0, 51);

      sub_26BED380C();
      swift_allocError();
      *v33 = v32;
      swift_willThrow();
      goto LABEL_11;
    }

    v23 = sub_26C00958C();
    sub_26BE097D4(v23, v24, v25, v26);
    v18 = v27;
    v19 = v28;
    v29 = sub_26C00959C();
    (*(*(v29 - 8) + 8))(a2, v29);
    result = sub_26BFE775C(a1);
    v17 = 1;
    LOBYTE(v34[0]) = 1;
  }

  *a3 = v18;
  *(a3 + 8) = v19;
  v20 = v39;
  *(a3 + 16) = v38;
  *(a3 + 32) = v20;
  *(a3 + 48) = v40;
  *(a3 + 64) = v17;
  return result;
}

uint64_t sub_26BFE6D24(uint64_t a1)
{
  v2 = sub_26C00978C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 64);
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v6;
  v7 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v7;
  v8 = v12[0];
  if (v13)
  {
    sub_26BE00608(*&v12[0], *(&v12[0] + 1));
    sub_26BF2E8B4(v8, *(&v8 + 1));
    sub_26C00957C();
    return sub_26BFC15B0(v12);
  }

  else
  {
    sub_26C00977C();
    v11[1] = v8;
    v10 = *(a1 + 32);
    v11[2] = *(a1 + 16);
    v11[3] = v10;
    v11[4] = *(a1 + 48);
    sub_26BFE780C();
    sub_26C00976C();
    sub_26C00971C();
    sub_26C00957C();
    sub_26BFC15B0(v12);
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_26BFE6EE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v23 = *(a1 + 32);
  v24 = v3;
  v4 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 48);
  v27 = *(a2 + 32);
  v28 = v6;
  v7 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v7;
  v8 = *(a1 + 48);
  v19 = v23;
  v20 = v8;
  v17 = v22[0];
  v18 = v2;
  v9 = *(a2 + 48);
  v14 = v27;
  v15 = v9;
  v25 = *(a1 + 64);
  v29 = *(a2 + 64);
  v21 = *(a1 + 64);
  v16 = *(a2 + 64);
  v12 = v26[0];
  v13 = v5;
  sub_26BFC5AA4(v22, v32);
  sub_26BFC5AA4(v26, v32);
  v10 = sub_26BFE73B0(&v17, &v12);
  v30[2] = v14;
  v30[3] = v15;
  v31 = v16;
  v30[0] = v12;
  v30[1] = v13;
  sub_26BFC15B0(v30);
  v32[2] = v19;
  v32[3] = v20;
  v33 = v21;
  v32[0] = v17;
  v32[1] = v18;
  sub_26BFC15B0(v32);
  return v10 & 1;
}

uint64_t sub_26BFE6FDC()
{
  if (*(v0 + 64))
  {
    return 0x4153444445;
  }

  else
  {
    return 0x4153444345;
  }
}

unint64_t sub_26BFE7004()
{
  result = qword_280460890;
  if (!qword_280460890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460890);
  }

  return result;
}

uint64_t sub_26BFE7058(uint64_t a1)
{
  v2 = *(v1 + 8);
  if ((*(v1 + 64) & 1) == 0)
  {
    v4 = *(v1 + 40);
    v5 = *(v1 + 48);
    v6 = *(v1 + 56);
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    MEMORY[0x26D699B20](0);
    v9 = v7 >> 1;
    result = v9 - v8;
    if (__OFSUB__(v9, v8))
    {
      __break(1u);
    }

    else
    {
      result = MEMORY[0x26D699B20](result);
      v10 = __OFSUB__(v9, v8);
      v11 = v9 - v8;
      if (v11)
      {
        if ((v11 < 0) ^ v10 | (v11 == 0))
        {
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v12 = v2 + v8;
        do
        {
          ++v12;
          sub_26C00B07C();
          --v11;
        }

        while (v11);
      }

      v13 = v6 >> 1;
      result = (v6 >> 1) - v5;
      if (!__OFSUB__(v6 >> 1, v5))
      {
        result = MEMORY[0x26D699B20](result);
        v14 = __OFSUB__(v13, v5);
        v15 = v13 - v5;
        if (!v15)
        {
          return result;
        }

        if (!((v15 < 0) ^ v14 | (v15 == 0)))
        {
          v16 = v4 + v5;
          do
          {
            ++v16;
            result = sub_26C00B07C();
            --v15;
          }

          while (v15);
          return result;
        }

LABEL_19:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  MEMORY[0x26D699B20](1);

  return sub_26C00911C();
}

uint64_t sub_26BFE7168()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  sub_26C00B05C();
  if (v7)
  {
    MEMORY[0x26D699B20](1);
    sub_26C00911C();
    return sub_26C00B0CC();
  }

  MEMORY[0x26D699B20](0);
  v8 = v3 >> 1;
  result = (v3 >> 1) - v2;
  if (__OFSUB__(v3 >> 1, v2))
  {
    __break(1u);
    goto LABEL_15;
  }

  result = MEMORY[0x26D699B20](result);
  v10 = __OFSUB__(v8, v2);
  v11 = v8 - v2;
  if (v11)
  {
    if ((v11 < 0) ^ v10 | (v11 == 0))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = v1 + v2;
    do
    {
      ++v12;
      sub_26C00B07C();
      --v11;
    }

    while (v11);
  }

  v13 = v6 >> 1;
  result = (v6 >> 1) - v5;
  if (__OFSUB__(v6 >> 1, v5))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = MEMORY[0x26D699B20](result);
  v14 = __OFSUB__(v13, v5);
  v15 = v13 - v5;
  if (!v15)
  {
    return sub_26C00B0CC();
  }

  if (!((v15 < 0) ^ v14 | (v15 == 0)))
  {
    v16 = v4 + v5;
    do
    {
      ++v16;
      sub_26C00B07C();
      --v15;
    }

    while (v15);
    return sub_26C00B0CC();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26BFE729C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  sub_26C00B05C();
  if (v8)
  {
    MEMORY[0x26D699B20](1);
    sub_26C00911C();
    return sub_26C00B0CC();
  }

  MEMORY[0x26D699B20](0);
  v9 = v4 >> 1;
  result = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    __break(1u);
    goto LABEL_15;
  }

  result = MEMORY[0x26D699B20](result);
  v11 = __OFSUB__(v9, v3);
  v12 = v9 - v3;
  if (v12)
  {
    if ((v12 < 0) ^ v11 | (v12 == 0))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v13 = v2 + v3;
    do
    {
      ++v13;
      sub_26C00B07C();
      --v12;
    }

    while (v12);
  }

  v14 = v7 >> 1;
  result = (v7 >> 1) - v6;
  if (__OFSUB__(v7 >> 1, v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = MEMORY[0x26D699B20](result);
  v15 = __OFSUB__(v14, v6);
  v16 = v14 - v6;
  if (!v16)
  {
    return sub_26C00B0CC();
  }

  if (!((v16 < 0) ^ v15 | (v16 == 0)))
  {
    v17 = v5 + v6;
    do
    {
      ++v17;
      sub_26C00B07C();
      --v16;
    }

    while (v16);
    return sub_26C00B0CC();
  }

LABEL_17:
  __break(1u);
  return result;
}

__int128 *sub_26BFE73B0(__int128 *result, __int128 *a2)
{
  v2 = result[1];
  v3 = result[3];
  v32 = result[2];
  v33 = v3;
  v4 = result[1];
  v30 = *result;
  v31 = v4;
  v5 = a2[1];
  v6 = a2[3];
  v37 = a2[2];
  v38 = v6;
  v7 = a2[1];
  v35 = *a2;
  v36 = v7;
  v8 = result[3];
  v40[2] = v32;
  v40[3] = v8;
  v40[0] = v30;
  v40[1] = v2;
  v43 = v5;
  v44 = v37;
  v45 = a2[3];
  v34 = *(result + 64);
  v39 = *(a2 + 64);
  v41 = *(result + 64);
  v46 = *(a2 + 64);
  v42 = v35;
  v9 = *(&v30 + 1);
  if (v34)
  {
    if (v39)
    {
      v10 = v30;
      v11 = v35;
      sub_26BFC5AA4(&v35, v29);
      sub_26BFC5AA4(&v30, v29);
      v12 = sub_26BE02DEC(v10, v9, v11, *(&v11 + 1));
LABEL_24:
      sub_26BFE7690(v40);
      return v12;
    }

LABEL_23:
    sub_26BFC5AA4(&v35, v29);
    sub_26BFC5AA4(&v30, v29);
    v12 = 0;
    goto LABEL_24;
  }

  if (v39)
  {
    goto LABEL_23;
  }

  v13 = *(&v31 + 1) >> 1;
  v14 = (*(&v31 + 1) >> 1) - v31;
  if (__OFSUB__(*(&v31 + 1) >> 1, v31))
  {
    __break(1u);
    goto LABEL_48;
  }

  v15 = *(&v36 + 1) >> 1;
  v16 = (*(&v36 + 1) >> 1) - v36;
  if (__OFSUB__(*(&v36 + 1) >> 1, v36))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v14 != v16)
  {
    goto LABEL_23;
  }

  if (v14)
  {
    result = (*(&v35 + 1) + v36);
    if (*(&v30 + 1) + v31 != *(&v35 + 1) + v36 && v31 != v13)
    {
      if (v31 >= v13)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v36 == v15)
      {
        goto LABEL_23;
      }

      v17 = 0;
      if (v36 <= v15)
      {
        v18 = *(&v36 + 1) >> 1;
      }

      else
      {
        v18 = v36;
      }

      v19 = v18 - v36;
      while (v19 != v17)
      {
        if (*(*(&v30 + 1) + v31 + v17) != *(result + v17))
        {
          goto LABEL_23;
        }

        if (~v31 + v13 == v17)
        {
          goto LABEL_25;
        }

        v20 = v31 + v17 + 1;
        if (v20 < v31 || v20 >= v13)
        {
          goto LABEL_50;
        }

        if (v16 == ++v17)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_49;
    }
  }

LABEL_25:
  v21 = *(&v33 + 1) >> 1;
  v22 = (*(&v33 + 1) >> 1) - v33;
  if (__OFSUB__(*(&v33 + 1) >> 1, v33))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v23 = *(&v38 + 1) >> 1;
  v24 = (*(&v38 + 1) >> 1) - v38;
  if (__OFSUB__(*(&v38 + 1) >> 1, v38))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v22 != v24)
  {
    goto LABEL_33;
  }

  if (!v22)
  {
LABEL_45:
    v12 = 1;
    goto LABEL_46;
  }

  v12 = 1;
  if (*(&v32 + 1) + v33 == *(&v37 + 1) + v38 || v33 == v21)
  {
    goto LABEL_46;
  }

  if (v33 < v21)
  {
    if (v38 != v23)
    {
      v25 = 0;
      if (v38 <= v23)
      {
        v26 = *(&v38 + 1) >> 1;
      }

      else
      {
        v26 = v38;
      }

      v27 = v26 - v38;
      while (v27 != v25)
      {
        if (*(*(&v32 + 1) + v33 + v25) != *(*(&v37 + 1) + v38 + v25))
        {
          goto LABEL_33;
        }

        if (~v33 + v21 == v25)
        {
          goto LABEL_45;
        }

        v28 = v33 + v25 + 1;
        if (v28 < v33 || v28 >= v21)
        {
          goto LABEL_54;
        }

        v12 = 0;
        if (v24 == ++v25)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_53;
    }

LABEL_33:
    v12 = 0;
LABEL_46:
    sub_26BFC5AA4(&v35, v29);
    sub_26BFC5AA4(&v30, v29);
    goto LABEL_24;
  }

LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_26BFE7690(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460898, &qword_26C025330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFE76F8(uint64_t a1, uint64_t a2)
{
  v4 = _s18SignatureAlgorithmVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFE775C(uint64_t a1)
{
  v2 = _s18SignatureAlgorithmVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BFE77B8()
{
  result = qword_2804608A0;
  if (!qword_2804608A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804608A0);
  }

  return result;
}

unint64_t sub_26BFE780C()
{
  result = qword_2804608A8;
  if (!qword_2804608A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804608A8);
  }

  return result;
}

uint64_t sub_26BFE7864(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26BFE78B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

unint64_t sub_26BFE7928()
{
  result = qword_2804608B0;
  if (!qword_2804608B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804608B0);
  }

  return result;
}

void *sub_26BFE7994(uint64_t a1, char a2)
{
  v34[5] = *MEMORY[0x277D85DE8];
  v30 = a1;
  v31 = a2;
  v28 = a1;
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804608D8, &qword_26C0255E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E420, &qword_26C00D180);
  if (swift_dynamicCast())
  {
    sub_26BE03890(v32, v34);
    v4 = __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    MEMORY[0x28223BE20](v4);
    v27 = v2;
    sub_26C008F3C();
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_26BE13204(v32);
  v6 = *v2;
  v7 = v2[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v9 = 0;
    v10 = 0;
    if (v8 != 2)
    {
      goto LABEL_12;
    }

    v11 = v6 + 16;
    v6 = *(v6 + 16);
    v9 = *(v11 + 8);
    v10 = v9 - v6;
    if (!__OFSUB__(v9, v6))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(v7);
    v10 = BYTE6(v7);
    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(v6), v6))
  {
    goto LABEL_52;
  }

  v10 = HIDWORD(v6) - v6;
  v9 = v6 >> 32;
LABEL_12:
  if (__OFADD__(v9, a1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v9 + a1 < v9)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v9 < 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v12 = sub_26C00905C();
  MEMORY[0x28223BE20](v12);
  v26[2] = v10;
  v26[3] = a1;
  v27 = &v30;
  result = sub_26BE113C4(sub_26BFE9FBC, v26);
  if (v15 == a1)
  {
    memset(v34, 0, 15);
    if (v14 != result)
    {
      if ((v14 & 0x8000000000000000) == 0 && v14 < result)
      {
        v16 = v13;
        LOBYTE(v17) = 0;
        for (i = v14 - result + 1; i != 1; ++i)
        {
          *(v34 + v17) = v16;
          v17 = v17 + 1;
          if ((v17 & 0x100) != 0)
          {
            goto LABEL_45;
          }

          if (v17 == 14)
          {
            *&v32[0] = v34[0];
            *(v32 + 6) = *(v34 + 6);
            result = sub_26C00908C();
            if (!i)
            {
              return result;
            }

            LOBYTE(v17) = 0;
          }

          else if (!i)
          {
            *&v32[0] = v34[0];
            *(v32 + 6) = *(v34 + 6);
            return sub_26C00908C();
          }
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  else
  {
    v19 = 0;
    v20 = *v2;
    v21 = v2[1];
    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v22 == 2)
      {
        v19 = *(v20 + 16);
      }
    }

    else if (v22)
    {
      v19 = v20;
    }

    v23 = __OFADD__(v19, v10);
    v24 = v19 + v10;
    if (v23)
    {
      goto LABEL_49;
    }

    if (__OFADD__(v24, v15))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v25 = *(v20 + 24);
      }

      else
      {
        v25 = 0;
      }
    }

    else if (v22)
    {
      v25 = v20 >> 32;
    }

    else
    {
      v25 = BYTE6(v21);
    }

    if (v25 < v24 + v15)
    {
      goto LABEL_51;
    }

    return sub_26C00906C();
  }

  return result;
}

uint64_t P256.Signing.ECDSASignature.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26C00A12C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[2];
  v9 = a1[3];
  v11 = (v9 >> 1) - v10;
  if (__OFSUB__(v9 >> 1, v10))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 > 32)
  {
LABEL_5:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v15 = 1;
    return (*(v5 + 56))(a2, v15, 1, v4);
  }

  v12 = a1[6];
  v13 = a1[7];
  v14 = (v13 >> 1) - v12;
  if (__OFSUB__(v13 >> 1, v12))
  {
    goto LABEL_15;
  }

  if (v14 > 32)
  {
    goto LABEL_5;
  }

  v26 = a1[7];
  v27 = v12;
  v31 = xmmword_26C00BBD0;
  sub_26C00907C();
  result = 32 - v11;
  if (__OFSUB__(32, v11))
  {
    goto LABEL_16;
  }

  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24 = a2;
  sub_26BFE7994(result, 0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
  v29 = v16;
  v17 = sub_26BFE9F6C(&qword_28045E418, MEMORY[0x277CC9EE0]);
  v30 = v17;
  v18 = swift_allocObject();
  *&v28 = v18;
  v25 = *a1;
  *(v18 + 16) = v25;
  *(v18 + 32) = v10;
  *(v18 + 40) = v9;
  result = __swift_project_boxed_opaque_existential_1(&v28, v16);
  if (__OFSUB__(*(result + 24) >> 1, *(result + 16)))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_unknownObjectRetain_n();
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v28);
  swift_unknownObjectRelease();
  result = 32 - v14;
  if (__OFSUB__(32, v14))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (result < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_26BFE7994(result, 0);
  v29 = v16;
  v30 = v17;
  v19 = swift_allocObject();
  *&v28 = v19;
  v25 = *(a1 + 2);
  *(v19 + 16) = v25;
  v20 = v26;
  *(v19 + 32) = v27;
  *(v19 + 40) = v20;
  result = __swift_project_boxed_opaque_existential_1(&v28, v16);
  if (!__OFSUB__(*(result + 24) >> 1, *(result + 16)))
  {
    swift_unknownObjectRetain_n();
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v28);
    swift_unknownObjectRelease();
    v22 = *(&v31 + 1);
    v21 = v31;
    v28 = v31;
    sub_26BE00608(v31, *(&v31 + 1));
    sub_26BE016A8();
    sub_26C00A11C();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_26BE00258(v21, v22);
    a2 = v24;
    (*(v5 + 32))(v24, v8, v4);
    v15 = 0;
    return (*(v5 + 56))(a2, v15, 1, v4);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t P384.Signing.ECDSASignature.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26C00A20C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[2];
  v9 = a1[3];
  v11 = (v9 >> 1) - v10;
  if (__OFSUB__(v9 >> 1, v10))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 > 48)
  {
LABEL_5:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v15 = 1;
    return (*(v5 + 56))(a2, v15, 1, v4);
  }

  v12 = a1[6];
  v13 = a1[7];
  v14 = (v13 >> 1) - v12;
  if (__OFSUB__(v13 >> 1, v12))
  {
    goto LABEL_15;
  }

  if (v14 > 48)
  {
    goto LABEL_5;
  }

  v26 = a1[7];
  v27 = v12;
  v31 = xmmword_26C00BBD0;
  sub_26C00907C();
  result = 48 - v11;
  if (__OFSUB__(48, v11))
  {
    goto LABEL_16;
  }

  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24 = a2;
  sub_26BFE7994(result, 0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
  v29 = v16;
  v17 = sub_26BFE9F6C(&qword_28045E418, MEMORY[0x277CC9EE0]);
  v30 = v17;
  v18 = swift_allocObject();
  *&v28 = v18;
  v25 = *a1;
  *(v18 + 16) = v25;
  *(v18 + 32) = v10;
  *(v18 + 40) = v9;
  result = __swift_project_boxed_opaque_existential_1(&v28, v16);
  if (__OFSUB__(*(result + 24) >> 1, *(result + 16)))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_unknownObjectRetain_n();
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v28);
  swift_unknownObjectRelease();
  result = 48 - v14;
  if (__OFSUB__(48, v14))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (result < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_26BFE7994(result, 0);
  v29 = v16;
  v30 = v17;
  v19 = swift_allocObject();
  *&v28 = v19;
  v25 = *(a1 + 2);
  *(v19 + 16) = v25;
  v20 = v26;
  *(v19 + 32) = v27;
  *(v19 + 40) = v20;
  result = __swift_project_boxed_opaque_existential_1(&v28, v16);
  if (!__OFSUB__(*(result + 24) >> 1, *(result + 16)))
  {
    swift_unknownObjectRetain_n();
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v28);
    swift_unknownObjectRelease();
    v22 = *(&v31 + 1);
    v21 = v31;
    v28 = v31;
    sub_26BE00608(v31, *(&v31 + 1));
    sub_26BE016A8();
    sub_26C00A1FC();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_26BE00258(v21, v22);
    a2 = v24;
    (*(v5 + 32))(v24, v8, v4);
    v15 = 0;
    return (*(v5 + 56))(a2, v15, 1, v4);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t P521.Signing.ECDSASignature.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26C00A29C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[2];
  v9 = a1[3];
  v11 = (v9 >> 1) - v10;
  if (__OFSUB__(v9 >> 1, v10))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 > 66)
  {
LABEL_5:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v15 = 1;
    return (*(v5 + 56))(a2, v15, 1, v4);
  }

  v12 = a1[6];
  v13 = a1[7];
  v14 = (v13 >> 1) - v12;
  if (__OFSUB__(v13 >> 1, v12))
  {
    goto LABEL_15;
  }

  if (v14 > 66)
  {
    goto LABEL_5;
  }

  v26 = a1[7];
  v27 = v12;
  v31 = xmmword_26C00BBD0;
  sub_26C00907C();
  result = 66 - v11;
  if (__OFSUB__(66, v11))
  {
    goto LABEL_16;
  }

  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24 = a2;
  sub_26BFE7994(result, 0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
  v29 = v16;
  v17 = sub_26BFE9F6C(&qword_28045E418, MEMORY[0x277CC9EE0]);
  v30 = v17;
  v18 = swift_allocObject();
  *&v28 = v18;
  v25 = *a1;
  *(v18 + 16) = v25;
  *(v18 + 32) = v10;
  *(v18 + 40) = v9;
  result = __swift_project_boxed_opaque_existential_1(&v28, v16);
  if (__OFSUB__(*(result + 24) >> 1, *(result + 16)))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_unknownObjectRetain_n();
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v28);
  swift_unknownObjectRelease();
  result = 66 - v14;
  if (__OFSUB__(66, v14))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (result < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_26BFE7994(result, 0);
  v29 = v16;
  v30 = v17;
  v19 = swift_allocObject();
  *&v28 = v19;
  v25 = *(a1 + 2);
  *(v19 + 16) = v25;
  v20 = v26;
  *(v19 + 32) = v27;
  *(v19 + 40) = v20;
  result = __swift_project_boxed_opaque_existential_1(&v28, v16);
  if (!__OFSUB__(*(result + 24) >> 1, *(result + 16)))
  {
    swift_unknownObjectRetain_n();
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v28);
    swift_unknownObjectRelease();
    v22 = *(&v31 + 1);
    v21 = v31;
    v28 = v31;
    sub_26BE00608(v31, *(&v31 + 1));
    sub_26BE016A8();
    sub_26C00A28C();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_26BE00258(v21, v22);
    a2 = v24;
    (*(v5 + 32))(v24, v8, v4);
    v15 = 0;
    return (*(v5 + 56))(a2, v15, 1, v4);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t MLS.ECDSASignature.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  return sub_26BFE8830(a1, MEMORY[0x277CC54D8], MEMORY[0x277CC54E0], a2);
}

{
  return sub_26BFE8830(a1, MEMORY[0x277CC5518], MEMORY[0x277CC5520], a2);
}

{
  return sub_26BFE8830(a1, MEMORY[0x277CC5528], MEMORY[0x277CC5530], a2);
}

uint64_t sub_26BFE8830@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  v7 = a2();
  MLS.ECDSASignature.init(rawSignatureBytes:)(v7, v8, a4);
  v9 = a3(0);
  v10 = *(*(v9 - 8) + 8);

  return v10(a1, v9);
}

uint64_t MLS.ECDSASignature.r.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectRelease();
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t sub_26BFE89A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t MLS.ECDSASignature.s.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectRelease();
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
  return result;
}

uint64_t MLS.ECDSASignature.init(r:s:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

double MLS.ECDSASignature.init(derEncoded:withIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_26C0097FC();
  v7 = sub_26C00934C();
  (*(*(v7 - 8) + 8))(a2, v7);
  v8 = sub_26C00950C();
  (*(*(v8 - 8) + 8))(a1, v8);
  if (!v3)
  {
    *a3 = v10;
    a3[1] = v11;
    result = *&v12;
    a3[2] = v12;
    a3[3] = v13;
  }

  return result;
}

__n128 sub_26BFE8BB4@<Q0>(_OWORD *a2@<X8>)
{
  v4 = sub_26C00934C();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
  sub_26BFE9F6C(&qword_2804608D0, MEMORY[0x277D6AA68]);
  sub_26C0096AC();
  sub_26C0096BC();
  if (!v2)
  {
    sub_26C0096AC();
    sub_26C0096BC();
    result = v8;
    *a2 = v7;
    a2[1] = v8;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

uint64_t sub_26BFE8D88(uint64_t a1, __int128 *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
  sub_26BFE9F6C(&qword_2804608C8, MEMORY[0x277D6AA60]);
  result = sub_26C00976C();
  if (!v2)
  {
    return sub_26C00976C();
  }

  return result;
}

void MLS.ECDSASignature.init(rawSignatureBytes:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v28 = sub_26C00909C();
      v30 = v29;
      sub_26BE00258(a1, a2);
      v44 = sub_26BFE9068(v28, v30);
      v12 = v31;
      v14 = v32;
      v16 = v33;
LABEL_16:
      v34 = sub_26C00909C();
      v36 = v35;
      sub_26BE00258(a1, a2);
      v37 = sub_26BFE9068(v34, v36);
      v39 = v38;
      v41 = v40;
      v43 = v42;
      sub_26BE00258(a1, a2);
      *a3 = v44;
      a3[1] = v12;
      a3[2] = v14;
      a3[3] = v16;
      a3[4] = v37;
      a3[5] = v39;
      a3[6] = v41;
      a3[7] = v43;
      return;
    }

    v19 = *(a1 + 16);
    v18 = *(a1 + 24);
    v20 = __OFSUB__(v18, v19);
    v21 = v18 - v19;
    if (v20)
    {
      goto LABEL_19;
    }

    v7 = v21 / 2;
    goto LABEL_9;
  }

  if (!v6)
  {
    v7 = (a2 >> 49) & 0x7F;
    v8 = sub_26C00909C();
    v10 = v9;
    sub_26BE00258(a1, a2);
    v44 = sub_26BFE9068(v8, v10);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = BYTE6(a2);
    goto LABEL_15;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v7 = (HIDWORD(a1) - a1 + ((HIDWORD(a1) - a1) >> 31)) >> 1;
    v19 = a1;
LABEL_9:
    sub_26BE00608(a1, a2);
    if (v7 < v19)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v22 = sub_26C00909C();
    v24 = v23;
    sub_26BE00258(a1, a2);
    v44 = sub_26BFE9068(v22, v24);
    v12 = v25;
    v14 = v26;
    v16 = v27;
    if (v6 == 2)
    {
      v17 = *(a1 + 24);
    }

    else
    {
      v17 = a1 >> 32;
    }

    sub_26BE00608(a1, a2);
LABEL_15:
    if (v17 >= v7)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
}

void *sub_26BFE9068(unint64_t a1, unint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v30 = a1;
  if ((a2 >> 62) > 1)
  {
    v5 = 0;
    if (v4 == 2)
    {
      v5 = *(a1 + 16);
    }
  }

  else if (v4)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1 >> 32;
  v7 = BYTE6(a2);
  v28 = a1 >> 16;
  v29 = a1 >> 8;
  v26 = HIDWORD(a1);
  v27 = a1 >> 24;
  v24 = HIWORD(a1);
  v25 = a1 >> 40;
  v22 = a2 >> 8;
  v23 = HIBYTE(a1);
  v8 = a2 >> 16;
  v21 = v5;
  v9 = a2 >> 24;
  if (v4 > 1)
  {
    goto LABEL_10;
  }

LABEL_8:
  v10 = BYTE6(a2);
  if (v4)
  {
    v10 = a1 >> 32;
  }

  while (v5 != v10)
  {
    if (v4 == 2)
    {
      if (v5 < *(a1 + 16))
      {
        goto LABEL_39;
      }

      if (v5 >= *(a1 + 24))
      {
        goto LABEL_41;
      }

      v15 = sub_26C008E9C();
      if (!v15)
      {
        goto LABEL_47;
      }

      v12 = v15;
      v16 = sub_26C008ECC();
      v14 = v5 - v16;
      if (__OFSUB__(v5, v16))
      {
        goto LABEL_43;
      }

      goto LABEL_25;
    }

    if (v4 == 1)
    {
      if (v5 < v30 || v5 >= v6)
      {
        goto LABEL_40;
      }

      v11 = sub_26C008E9C();
      if (!v11)
      {
        goto LABEL_46;
      }

      v12 = v11;
      v13 = sub_26C008ECC();
      v14 = v5 - v13;
      if (__OFSUB__(v5, v13))
      {
        goto LABEL_42;
      }

LABEL_25:
      if (*(v12 + v14))
      {
        break;
      }

      goto LABEL_29;
    }

    if (v5 >= BYTE6(a2))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v31[0] = a1;
    v31[1] = v29;
    v31[2] = v28;
    v31[3] = v27;
    v31[4] = v26;
    v31[5] = v25;
    v31[6] = v24;
    v31[7] = v23;
    v31[8] = a2;
    v31[9] = v22;
    v31[10] = v8;
    v31[11] = v9;
    v31[12] = BYTE4(a2);
    v31[13] = BYTE5(a2);
    if (v31[v5])
    {
      break;
    }

LABEL_29:
    ++v5;
    if (v4 <= 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    if (v4 != 2)
    {
      if (!v21)
      {
        goto LABEL_35;
      }

LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
    }

    v10 = *(a1 + 24);
  }

  if (v4)
  {
    v7 = a1 >> 32;
    if (v4 == 2)
    {
      v7 = *(a1 + 24);
    }
  }

  if (v7 < v5)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_35:
  v17 = sub_26C00909C();
  v19 = v18;
  sub_26BE00258(a1, a2);
  return sub_26BF2E8B4(v17, v19);
}

uint64_t ArraySlice<A>.init<A>(normalisingToASN1IntegerForm:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = a1;
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - v13;
  (*(v5 + 16))(v7, a1, a2);
  sub_26C00A94C();
  (*(v9 + 16))(v12, v14, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  v15 = sub_26C00AB2C();
  (*(v5 + 8))(v17[0], a2);
  (*(v9 + 8))(v14, AssociatedTypeWitness);
  return v15;
}

uint64_t static MLS.ECDSASignature.== infix(_:_:)(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  v3 = *(result + 24) >> 1;
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
    goto LABEL_47;
  }

  v4 = a2[2];
  v5 = a2[3] >> 1;
  v6 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v3 - v2 != v6)
  {
    return 0;
  }

  v7 = *(result + 8);
  v9 = *(result + 40);
  v8 = *(result + 48);
  v10 = *(result + 56);
  result = a2[1];
  v12 = a2[5];
  v11 = a2[6];
  v13 = a2[7];
  v14 = v7 + v2;
  v15 = result + v4;
  if (v3 != v2 && v14 != v15 && v2 != v3)
  {
    if (v2 >= v3)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v4 == v5)
    {
      return 0;
    }

    v28 = 0;
    if (v4 <= v5)
    {
      result = v5;
    }

    else
    {
      result = v4;
    }

    v29 = result - v4;
    while (v29 != v28)
    {
      result = *(v14 + v28);
      if (result != *(v15 + v28))
      {
        return 0;
      }

      if (~v2 + v3 == v28)
      {
        goto LABEL_12;
      }

      result = v2 + v28 + 1;
      if (result < v2 || result >= v3)
      {
        goto LABEL_49;
      }

      result = 0;
      if (v6 == ++v28)
      {
        return result;
      }
    }

    goto LABEL_48;
  }

LABEL_12:
  v18 = v10 >> 1;
  v19 = (v10 >> 1) - v8;
  if (__OFSUB__(v10 >> 1, v8))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v20 = v13 >> 1;
  v21 = v20 - v11;
  if (__OFSUB__(v20, v11))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v19 != v21)
  {
    return 0;
  }

  if (!v19)
  {
    return 1;
  }

  v22 = v9 + v8;
  v23 = v12 + v11;
  result = 1;
  if (v22 != v23 && v8 != v18)
  {
    if (v8 >= v18)
    {
LABEL_55:
      __break(1u);
      return result;
    }

    if (v11 != v20)
    {
      v24 = 0;
      if (v11 <= v20)
      {
        v25 = v20;
      }

      else
      {
        v25 = v11;
      }

      v26 = v25 - v11;
      while (v26 != v24)
      {
        if (*(v22 + v24) != *(v23 + v24))
        {
          return 0;
        }

        if (~v8 + v18 == v24)
        {
          return 1;
        }

        v27 = v8 + v24 + 1;
        if (v27 < v8 || v27 >= v18)
        {
          goto LABEL_53;
        }

        result = 0;
        if (v21 == ++v24)
        {
          return result;
        }
      }

      goto LABEL_52;
    }

    return 0;
  }

  return result;
}

uint64_t MLS.ECDSASignature.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v0[1];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  result = MEMORY[0x26D699B20](result);
  v8 = __OFSUB__(v2, v1);
  v9 = v2 - v1;
  if (v9)
  {
    if ((v9 < 0) ^ v8 | (v9 == 0))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v10 = v4 + v1;
    do
    {
      ++v10;
      sub_26C00B07C();
      --v9;
    }

    while (v9);
  }

  v11 = v7 >> 1;
  result = v11 - v6;
  if (__OFSUB__(v11, v6))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = MEMORY[0x26D699B20](result);
  v12 = __OFSUB__(v11, v6);
  v13 = v11 - v6;
  if (!v13)
  {
    return result;
  }

  if ((v13 < 0) ^ v12 | (v13 == 0))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v14 = v5 + v6;
  do
  {
    ++v14;
    result = sub_26C00B07C();
    --v13;
  }

  while (v13);
  return result;
}

uint64_t MLS.ECDSASignature.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  sub_26C00B05C();
  v7 = v3 >> 1;
  result = v7 - v2;
  if (__OFSUB__(v7, v2))
  {
    __break(1u);
    goto LABEL_13;
  }

  result = MEMORY[0x26D699B20](result);
  v9 = __OFSUB__(v7, v2);
  v10 = v7 - v2;
  if (v10)
  {
    if ((v10 < 0) ^ v9 | (v10 == 0))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v11 = v1 + v2;
    do
    {
      ++v11;
      sub_26C00B07C();
      --v10;
    }

    while (v10);
  }

  v12 = v6 >> 1;
  result = v12 - v5;
  if (__OFSUB__(v12, v5))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = MEMORY[0x26D699B20](result);
  v13 = __OFSUB__(v12, v5);
  v14 = v12 - v5;
  if (!v14)
  {
    return sub_26C00B0CC();
  }

  if (!((v14 < 0) ^ v13 | (v14 == 0)))
  {
    v15 = v4 + v5;
    do
    {
      ++v15;
      sub_26C00B07C();
      --v14;
    }

    while (v14);
    return sub_26C00B0CC();
  }

LABEL_15:
  __break(1u);
  return result;
}

double sub_26BFE98D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a4@<X8>)
{
  sub_26C0097FC();
  v8 = sub_26C00934C();
  (*(*(v8 - 8) + 8))(a2, v8);
  v9 = sub_26C00950C();
  (*(*(v9 - 8) + 8))(a1, v9);
  if (!v4)
  {
    *a4 = v11;
    a4[1] = v12;
    result = *&v13;
    a4[2] = v13;
    a4[3] = v14;
  }

  return result;
}

uint64_t sub_26BFE9A84(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  sub_26C00B05C();
  v8 = v4 >> 1;
  result = v8 - v3;
  if (__OFSUB__(v8, v3))
  {
    __break(1u);
    goto LABEL_13;
  }

  result = MEMORY[0x26D699B20](result);
  v10 = __OFSUB__(v8, v3);
  v11 = v8 - v3;
  if (v11)
  {
    if ((v11 < 0) ^ v10 | (v11 == 0))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v12 = v2 + v3;
    do
    {
      ++v12;
      sub_26C00B07C();
      --v11;
    }

    while (v11);
  }

  v13 = v7 >> 1;
  result = v13 - v6;
  if (__OFSUB__(v13, v6))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = MEMORY[0x26D699B20](result);
  v14 = __OFSUB__(v13, v6);
  v15 = v13 - v6;
  if (!v15)
  {
    return sub_26C00B0CC();
  }

  if (!((v15 < 0) ^ v14 | (v15 == 0)))
  {
    v16 = v5 + v6;
    do
    {
      ++v16;
      sub_26C00B07C();
      --v15;
    }

    while (v15);
    return sub_26C00B0CC();
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_26BFE9BF8(void *a1, void *a2)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a2[5];
  v6 = a2[6];
  v7 = a2[7];
  if ((sub_26BFE9CDC(a1[1], a1[2], a1[3], a2[1], a2[2], a2[3]) & 1) == 0)
  {
    return 0;
  }

  return sub_26BFE9CDC(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_26BFE9CDC(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_23;
  }

  v8 = a6 >> 1;
  v9 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v7 != v9)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  v10 = result + a2;
  result = 1;
  if (v10 != a4 + a5 && v6 != a2)
  {
    if (v6 <= a2)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    if (v8 == a5)
    {
      return 0;
    }

    v11 = 0;
    if (a5 <= v8)
    {
      v12 = a6 >> 1;
    }

    else
    {
      v12 = a5;
    }

    v13 = v12 - a5;
    while (v13 != v11)
    {
      if (*(v10 + v11) != *(a4 + a5 + v11))
      {
        return 0;
      }

      if (~a2 + v6 == v11)
      {
        return 1;
      }

      v14 = a2 + v11 + 1;
      if (v14 < a2 || v14 >= v6)
      {
        goto LABEL_25;
      }

      result = 0;
      if (v9 == ++v11)
      {
        return result;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return result;
}

void _ss10ArraySliceV8SwiftMLSs5UInt8VRszlE28normalisingToASN1IntegerFormAByAEGAG_tcfC_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = a3;
  if (a4 >> 1 != a3)
  {
    goto LABEL_5;
  }

LABEL_2:
  v7 = v5 < v6;
  v5 = v6;
  if (v7)
  {
    __break(1u);
LABEL_5:
    if (a3 <= v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = a3;
    }

    v6 = a3;
    while (v8 != v6)
    {
      if (*(a2 + v6))
      {
        goto LABEL_2;
      }

      if (v5 == ++v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_12:
  if (v5 < a3)
  {
LABEL_15:
    __break(1u);
  }
}

unint64_t sub_26BFE9E14()
{
  result = qword_2804608B8;
  if (!qword_2804608B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804608B8);
  }

  return result;
}

unint64_t sub_26BFE9E70()
{
  result = qword_2804608C0;
  if (!qword_2804608C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804608C0);
  }

  return result;
}

uint64_t sub_26BFE9EC4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BFE9F0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BFE9F6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E410, &qword_26C021270);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BFE9FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_26BFEA01C(a1, a2, *(v3 + 16), **(v3 + 32), *(*(v3 + 32) + 8));
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
  }

  return result;
}

uint64_t sub_26BFEA01C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int8 a5)
{
  if (!result)
  {
    return a4;
  }

  v5 = a2 - result - a3;
  if (!__OFSUB__(a2 - result, a3))
  {
    if (v5)
    {
      if (v5 < 1)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (a4)
      {
        v6 = (result + a3);
        v7 = a4 & ~(a4 >> 63);
        v8 = ~a3 + a2 - result;
        v9 = a4 - 1;
        if (v7 < a4 - 1)
        {
          v9 = a4 & ~(a4 >> 63);
        }

        if (v8 >= v9)
        {
          v8 = v9;
        }

        if (v8 >= 0x10)
        {
          v12 = v8 + 1;
          v13 = v12 & 0xF;
          if ((v12 & 0xF) == 0)
          {
            v13 = 16;
          }

          v10 = v12 - v13;
          v11 = v10 + 1;
          v14 = (v6 + v10);
          v15 = vdupq_n_s8(a5);
          v16 = v10;
          do
          {
            *v6++ = v15;
            v16 -= 16;
          }

          while (v16);
          v6 = v14;
        }

        else
        {
          v10 = 0;
          v11 = 1;
        }

        while (v10 != v7)
        {
          v10 = v11;
          v6->i8[0] = a5;
          if (v5 != v11)
          {
            v6 = (v6 + 1);
            ++v11;
            if (a4 + 1 != v10 + 1)
            {
              continue;
            }
          }

          return a4;
        }

        goto LABEL_24;
      }
    }

    return a4;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_26BFEA138()
{
  v1 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B20](v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFEA1AC(uint64_t a1)
{
  v2 = *v1;
  sub_26C00B05C();
  MEMORY[0x26D699B20](v2);
  return sub_26C00B0CC();
}

uint64_t sub_26BFEA254(uint64_t result)
{
  if (!result)
  {
    return 0x3176525343;
  }

  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v1 = sub_26C00AEFC();
    MEMORY[0x26D699090](v1);

    return 1985106755;
  }

  return result;
}

unint64_t sub_26BFEA2E8()
{
  result = qword_2804608E0;
  if (!qword_2804608E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804608E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O8LeafNodeVSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_26BFEA388(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26BFEA3E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O10ParentNodeVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26BFEA484(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26BFEA4E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_26BFEA594(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 153))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 152);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26BFEA5DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *(result + 152) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_26BFEA69C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 145))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 144);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26BFEA6E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *(result + 144) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 144) = -a2;
    }
  }

  return result;
}

uint64_t *sub_26BFEA76C(uint64_t *result)
{
  v2 = *result;
  v3 = result[1];
  v4 = result[2];
  v5 = result[3];
  v6 = result[4];
  v7 = result[5];
  v8 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v9 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v9 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v9);
  if (v1)
  {
    return result;
  }

  v12 = result;
  result = sub_26BE11228(v2, v3);
  v13 = __OFADD__(v12, v9);
  v14 = v12 + v9;
  if (v13)
  {
    __break(1u);
    goto LABEL_40;
  }

  v15 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = BYTE6(v5);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (v15 != 2)
  {
    v16 = 0;
    goto LABEL_23;
  }

  v18 = *(v4 + 16);
  v17 = *(v4 + 24);
  v16 = v17 - v18;
  if (__OFSUB__(v17, v18))
  {
    __break(1u);
LABEL_20:
    if (__OFSUB__(HIDWORD(v4), v4))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v16 = HIDWORD(v4) - v4;
  }

LABEL_23:
  v19 = sub_26BF30414(v16);
  result = sub_26BE11228(v4, v5);
  v20 = v19 + v16;
  if (__OFADD__(v19, v16))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v21 = &v14[v20];
  if (__OFADD__(v14, v20))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v22 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v22)
    {
      v23 = BYTE6(v7);
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (v22 != 2)
  {
    v23 = 0;
    goto LABEL_36;
  }

  v25 = *(v6 + 16);
  v24 = *(v6 + 24);
  v23 = v24 - v25;
  if (__OFSUB__(v24, v25))
  {
    __break(1u);
LABEL_32:
    if (__OFSUB__(HIDWORD(v6), v6))
    {
LABEL_46:
      __break(1u);
      return result;
    }

    v23 = HIDWORD(v6) - v6;
  }

LABEL_36:
  v26 = sub_26BF30414(v23);
  result = sub_26BE11228(v6, v7);
  v27 = v26 + v23;
  if (__OFADD__(v26, v23))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  result = &v21[v27];
  if (__OFADD__(v21, v27))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  return result;
}

void sub_26BFEA954(char *a1)
{
  v3 = v1;
  v82 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(a1 + 120);
  v76 = *(a1 + 104);
  v77 = v5;
  v78 = *(a1 + 136);
  v79 = a1[152];
  v6 = *(a1 + 56);
  v72 = *(a1 + 40);
  v73 = v6;
  v7 = *(a1 + 88);
  v74 = *(a1 + 72);
  v75 = v7;
  v8 = *(a1 + 24);
  v70 = *(a1 + 8);
  v71 = v8;
  LOBYTE(v53[0]) = v4;
  v9 = MEMORY[0x277D838B0];
  v10 = MEMORY[0x277CC9C18];
  *(&v57 + 1) = MEMORY[0x277D838B0];
  *&v58 = MEMORY[0x277CC9C18];
  *&v56 = v53;
  *(&v56 + 1) = v53 + 1;
  v11 = __swift_project_boxed_opaque_existential_1(&v56, MEMORY[0x277D838B0])[1];
  sub_26BFEAF00(&v70, &v65);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v56);
  v80[6] = v76;
  v80[7] = v77;
  v80[8] = v78;
  v81 = v79;
  v80[2] = v72;
  v80[3] = v73;
  v80[4] = v74;
  v80[5] = v75;
  v80[0] = v70;
  v80[1] = v71;
  if (sub_26BFEAF38(v80) != 1)
  {
    nullsub_1();
    v20 = v19;
    LODWORD(v53[0]) = bswap32(*v19);
    v68 = v9;
    v69 = v10;
    v65 = v53;
    v66 = v53 + 4;
    __swift_project_boxed_opaque_existential_1(&v65, v9);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v65);
    v21 = *(v20 + 22);
    v22 = *(v20 + 26);
    v23 = *(v20 + 30);
    v64 = *(v20 + 17);
    v56 = *(v20 + 2);
    v24 = *(v20 + 6);
    v25 = *(v20 + 10);
    v26 = *(v20 + 18);
    v59 = *(v20 + 14);
    v60 = v26;
    v57 = v24;
    v58 = v25;
    v62 = v22;
    v63 = v23;
    v61 = v21;
    if (sub_26BE59C80(&v56) == 1)
    {
      LOBYTE(v53[0]) = 0;
      v68 = v9;
      v69 = v10;
      v65 = v53;
      v66 = v53 + 1;
      __swift_project_boxed_opaque_existential_1(&v65, v9);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v65);
      sub_26BFEAF40(&v70);
      v27 = 1;
    }

    else
    {
      v53[5] = *(v20 + 22);
      v53[6] = *(v20 + 26);
      v53[7] = *(v20 + 30);
      v54 = *(v20 + 17);
      v55[0] = &v52;
      v53[1] = *(v20 + 6);
      v53[2] = *(v20 + 10);
      v53[3] = *(v20 + 14);
      v53[4] = *(v20 + 18);
      v53[0] = *(v20 + 2);
      v52 = 1;
      v55[3] = v9;
      v55[4] = v10;
      v55[1] = v53;
      v11 = __swift_project_boxed_opaque_existential_1(v55, v9)[1];
      sub_26BFEAF00(&v70, &v65);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(v55);
      sub_26BE7DD28(v53);
      v29 = v28;
      sub_26BFEAF40(&v70);
      sub_26BFEAF40(&v70);
      if (v1)
      {
        return;
      }

      v27 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_51;
      }
    }

    if (!__OFADD__(v27, 5))
    {
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  nullsub_1();
  v13 = v12[4];
  v11 = v12[7];
  v50 = v12[5];
  v51 = v12[6];
  v2 = v12[8];
  if (!v13)
  {
LABEL_12:
    LOBYTE(v56) = 0;
    v68 = v9;
    v69 = v10;
    v65 = &v56;
    v66 = &v56 + 1;
    __swift_project_boxed_opaque_existential_1(&v65, v9);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v65);
    v30 = 1;
    goto LABEL_15;
  }

  v48 = v12[7];
  v49 = v12[8];
  v15 = *v12;
  v14 = v12[1];
  v16 = v12[2];
  v17 = v12[3];
  LOBYTE(v56) = 1;
  v68 = v9;
  v69 = v10;
  v65 = &v56;
  v66 = &v56 + 1;
  __swift_project_boxed_opaque_existential_1(&v65, v9);
  sub_26BFEAF70(v15, v14, v16, v17, v13);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v65);
  v65 = v15;
  v66 = v14;
  v67 = v16;
  v68 = v17;
  v69 = v13;
  sub_26BEC1C1C(&v65);
  if (v1)
  {
    sub_26BFEAF40(&v70);
    sub_26BE5A2DC(v15, v14, v16, v17, v13);
    return;
  }

  v31 = v18;
  sub_26BE5A2DC(v15, v14, v16, v17, v13);
  v30 = v31 + 1;
  if (__OFADD__(v31, 1))
  {
    goto LABEL_48;
  }

  v3 = 0;
  v11 = v48;
  v2 = v49;
LABEL_15:
  v32 = v30 + 1;
  if (__OFADD__(v30, 1))
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v33 = v51 >> 62;
  if ((v51 >> 62) <= 1)
  {
    if (!v33)
    {
      v34 = BYTE6(v51);
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (v33 == 2)
  {
    v36 = *(v50 + 16);
    v35 = *(v50 + 24);
    v34 = v35 - v36;
    if (!__OFSUB__(v35, v36))
    {
LABEL_25:
      sub_26BE00608(v50, v51);
      goto LABEL_27;
    }

    __break(1u);
LABEL_23:
    if (__OFSUB__(HIDWORD(v50), v50))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v34 = HIDWORD(v50) - v50;
    goto LABEL_25;
  }

  v34 = 0;
LABEL_27:
  v37 = sub_26BF30414(v34);
  if (v3)
  {
    sub_26BFEAF40(&v70);
    sub_26BE00258(v50, v51);
    return;
  }

  v38 = v11;
  v39 = v37;
  sub_26BE11228(v50, v51);
  sub_26BE00258(v50, v51);
  v40 = v39 + v34;
  if (__OFADD__(v39, v34))
  {
    goto LABEL_49;
  }

  v41 = __OFADD__(v32, v40);
  v42 = v32 + v40;
  if (v41)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v43 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v43)
    {
      v44 = BYTE6(v2);
      goto LABEL_43;
    }

    goto LABEL_38;
  }

  if (v43 == 2)
  {
    v46 = *(v38 + 16);
    v45 = *(v38 + 24);
    v44 = v45 - v46;
    if (!__OFSUB__(v45, v46))
    {
LABEL_40:
      sub_26BE00608(v38, v2);
      goto LABEL_43;
    }

    __break(1u);
LABEL_38:
    if (__OFSUB__(HIDWORD(v38), v38))
    {
      goto LABEL_54;
    }

    v44 = HIDWORD(v38) - v38;
    goto LABEL_40;
  }

  v44 = 0;
LABEL_43:
  v47 = sub_26BF30414(v44);
  sub_26BE11228(v38, v2);
  sub_26BE00258(v38, v2);
  sub_26BFEAF40(&v70);
  if (__OFADD__(v47, v44))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  if (__OFADD__(v42, v47 + v44))
  {
    __break(1u);
    goto LABEL_47;
  }
}

uint64_t sub_26BFEAF70(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_26BE00608(result, a2);
    sub_26BE00608(a3, a4);
  }

  return result;
}

uint64_t sub_26BFEAFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 312);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for MLS.FramedContentAuthData(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_26BFEB0AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 312) = a2;
  }

  else
  {
    v7 = type metadata accessor for MLS.FramedContentAuthData(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s23AuthenticatedContentTBMVMa(uint64_t a1)
{
  result = qword_2804608E8;
  if (!qword_2804608E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BFEB19C(uint64_t a1)
{
  result = type metadata accessor for MLS.FramedContentAuthData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

char *sub_26BFEB264(void (*a1)(_OWORD *__return_ptr, int *, _OWORD *), uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  if (!a5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = 0;
  v7 = a5 - 1;
  v8 = 2 * (a5 - 1);
  v88 = a6 + 32;
  v53 = 1 - a5;
  v9 = -a5;
  v54 = a5;
  v52 = v9;
  do
  {
    v10 = 0;
    v11 = v6;
    if (v6 <= a5)
    {
      v12 = a5;
    }

    else
    {
      v12 = v6;
    }

    v13 = (v6 - v12);
    v14 = 2 * v6;
    v15 = (v9 + v6);
    while (1)
    {
      if (!(v13 + v10))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        sub_26BE13A3C(v66);
        v44 = v13[47];
        v13[19] = v13[46];
        v13[20] = v44;
        v65 = v85;
        v45 = v13[43];
        v13[15] = v13[42];
        v13[16] = v45;
        v46 = v13[45];
        v13[17] = v13[44];
        v13[18] = v46;
        v47 = v13[41];
        v13[13] = v13[40];
        v13[14] = v47;
        v48 = sub_26BE13A3C(v64);
        v49 = v48[2];
        v50 = v48[3];
        sub_26BE00608(*v48, v48[1]);
        sub_26BE00608(v49, v50);

        sub_26BE01654();
        swift_allocError();
        *v51 = 28;
        *(v51 + 8) = 0u;
        *(v51 + 24) = 0u;
        *(v51 + 40) = 0u;
        *(v51 + 56) = 0u;
        *(v51 + 72) = 0u;
        *(v51 + 88) = 0u;
        *(v51 + 104) = 0;
        *(v51 + 112) = 23;
        swift_willThrow();
        sub_26BE2E258(&v68, &qword_28045E4C8, &unk_26C0112A0);
        return v15;
      }

      if ((v11 + v10) < 0)
      {
        goto LABEL_29;
      }

      if (v7 < 0)
      {
        goto LABEL_30;
      }

      if (v14 > v8)
      {
        goto LABEL_25;
      }

      if (*(a6 + 16) > v14)
      {
        break;
      }

LABEL_7:
      ++v10;
      v14 += 2;
      if (!&v15[v10])
      {
        return v57;
      }
    }

    v16 = a6;
    v17 = (v88 + 136 * v14);
    v18 = v17[7];
    v86[6] = v17[6];
    v86[7] = v18;
    v87 = *(v17 + 16);
    v19 = v17[3];
    v86[2] = v17[2];
    v86[3] = v19;
    v20 = v17[5];
    v86[4] = v17[4];
    v86[5] = v20;
    v21 = v17[1];
    v86[0] = *v17;
    v86[1] = v21;
    if (sub_26BE58C10(v86) == 1)
    {
      a6 = v16;
      goto LABEL_7;
    }

    v22 = v17[5];
    v23 = v17[7];
    v13 = v59;
    v74 = v17[6];
    v75 = v23;
    v24 = v17[1];
    v25 = v17[3];
    v70 = v17[2];
    v71 = v25;
    v26 = v17[3];
    v27 = v17[5];
    v72 = v17[4];
    v73 = v27;
    v28 = v17[1];
    v68 = *v17;
    v69 = v28;
    v29 = v17[7];
    v83 = v74;
    v84 = v29;
    v79 = v70;
    v80 = v26;
    v81 = v72;
    v82 = v22;
    v76 = *(v17 + 16);
    v85 = *(v17 + 16);
    v77 = v68;
    v78 = v24;
    if (sub_26BE58C10(&v77) == 1)
    {
LABEL_25:
      v15 = v57;

      sub_26BE01654();
      swift_allocError();
      *v42 = 30;
      *(v42 + 8) = 0u;
      *(v42 + 24) = 0u;
      *(v42 + 40) = 0u;
      *(v42 + 56) = 0u;
      *(v42 + 72) = 0u;
      *(v42 + 88) = 0u;
      *(v42 + 104) = 0;
      *(v42 + 112) = 23;
      swift_willThrow();
      return v15;
    }

    v66[6] = v83;
    v66[7] = v84;
    v67 = v85;
    v66[2] = v79;
    v66[3] = v80;
    v66[4] = v81;
    v66[5] = v82;
    v66[0] = v77;
    v66[1] = v78;
    v15 = v57;
    if (sub_26BE592C4(v66) == 1)
    {
      goto LABEL_31;
    }

    v30 = v11 + v10;
    v31 = sub_26BE13A3C(v66);
    v61 = v11 + v10;
    v32 = *(v31 + 112);
    v59[6] = *(v31 + 96);
    v59[7] = v32;
    v60 = *(v31 + 128);
    v33 = *(v31 + 48);
    v59[2] = *(v31 + 32);
    v59[3] = v33;
    v34 = *(v31 + 80);
    v59[4] = *(v31 + 64);
    v59[5] = v34;
    v35 = *(v31 + 16);
    v59[0] = *v31;
    v59[1] = v35;
    v64[2] = v70;
    v64[3] = v71;
    v64[0] = v68;
    v64[1] = v69;
    v65 = v76;
    v64[6] = v74;
    v64[7] = v75;
    v64[4] = v72;
    v64[5] = v73;
    sub_26BE59BD8(v64, v58);
    a1(v62, &v61, v59);
    if (v56)
    {

      sub_26BE2E258(&v68, &qword_28045E4C8, &unk_26C0112A0);
      return v15;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_26BEEC03C(0, *(v57 + 16) + 1, 1, v57);
    }

    v37 = *(v15 + 2);
    v36 = *(v15 + 3);
    if (v37 >= v36 >> 1)
    {
      v15 = sub_26BEEC03C((v36 > 1), v37 + 1, 1, v15);
    }

    v6 = v30 + 1;
    sub_26BE2E258(&v68, &qword_28045E4C8, &unk_26C0112A0);
    *(v15 + 2) = v37 + 1;
    v38 = &v15[56 * v37];
    v39 = v62[2];
    v40 = v62[0];
    v41 = v62[1];
    *(v38 + 10) = v63;
    *(v38 + 3) = v41;
    *(v38 + 4) = v39;
    *(v38 + 2) = v40;
    a5 = v54;
    a6 = v16;
    v9 = v52;
  }

  while (v30 + v53);
  return v15;
}

uint64_t MLS.GroupState.leafNode.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + *(type metadata accessor for MLS.GroupState(0) + 52));

  MLS.TreeKEMPublicKey.find(leafIndex:)(&v4, a1);
}

uint64_t MLS.GroupState.epochAuthenticator.getter()
{
  type metadata accessor for MLS.GroupState(0);
  type metadata accessor for MLS.KeySchedule(0);
  sub_26C009C3C();
  return v1;
}

unint64_t sub_26BFEB860@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t a9@<X8>, uint64_t a10)
{
  v274 = a8;
  v224 = a4;
  v225 = a7;
  v218 = a3;
  v222 = a2;
  v226 = a10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  MEMORY[0x28223BE20](v14 - 8);
  v193 = &v189 - v15;
  v194 = type metadata accessor for MLS.KeySchedule(0);
  MEMORY[0x28223BE20](v194);
  v192 = &v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for MLS.TreeKEMPrivateKey(0);
  v17 = MEMORY[0x28223BE20](v196);
  v198 = (&v189 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v195 = &v189 - v19;
  v20 = sub_26C009C8C();
  v203 = *(v20 - 8);
  v204 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v191 = &v189 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v190 = (&v189 - v24);
  MEMORY[0x28223BE20](v23);
  v202 = &v189 - v25;
  v26 = type metadata accessor for MLS.GroupInfo(0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v205 = (&v189 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v221) = *a1;
  v29 = a1[2];
  v209 = a1[1];
  v220 = v29;
  v223 = a1[3];
  v30 = a5[9];
  v272[7] = a5[8];
  v272[8] = v30;
  v272[9] = a5[10];
  v273 = *(a5 + 22);
  v31 = a5[5];
  v272[3] = a5[4];
  v272[4] = v31;
  v32 = a5[7];
  v272[5] = a5[6];
  v272[6] = v32;
  v33 = a5[1];
  v271 = *a5;
  v272[0] = v33;
  v34 = a5[3];
  v272[1] = a5[2];
  v272[2] = v34;
  v35 = *a6;
  v215 = a6[1];
  v216 = v35;
  v36 = a6[3];
  v208 = a6[2];
  v217 = v36;
  v37 = type metadata accessor for MLS.GroupState(0);
  v38 = MEMORY[0x277D84F90];
  *(a9 + v37[15]) = MEMORY[0x277D84F90];
  v39 = (a9 + v37[16]);
  v39[9] = 0u;
  v39[10] = 0u;
  v39[7] = 0u;
  v39[8] = 0u;
  v39[5] = 0u;
  v39[6] = 0u;
  v39[3] = 0u;
  v39[4] = 0u;
  v39[1] = 0u;
  v39[2] = 0u;
  v211 = v39;
  *v39 = 0u;
  v219 = v37[17];
  v40 = sub_26C001A78(v38);
  v41 = v37[18];
  *(&v206 + 1) = v40;
  v207 = v41;
  sub_26C00528C(v38);
  v42 = v37[19];
  v43 = *(v27 + 56);
  v214 = v37[20];
  v200 = v27 + 56;
  v201 = v26;
  v199 = v43;
  v43((a9 + v214), 1, 1, v26);
  v44 = v221;
  *a9 = v221;
  v45 = sub_26C004AC0(v38);
  *(a9 + 32) = v44;
  *(a9 + 40) = v45;
  *(a9 + 48) = 0;
  *(a9 + 56) = v38;
  v46 = v224;
  v47 = a9 + v37[9];
  *v47 = *a9;
  *(v47 + 8) = xmmword_26C00BBD0;
  v212 = v37;
  v213 = v47;
  v197 = xmmword_26C00BBD0;
  *(v47 + 24) = xmmword_26C00BBD0;
  v210 = v37[14];
  sub_26BE038A8(v46, a9 + v210);
  v48 = v225;

  *(a9 + v219) = v48;
  v49 = a9;
  *(a9 + v207) = v274;
  *(a9 + v42) = v226;
  v50 = *(v48 + 16);

  if (v50 || *(v274 + 16))
  {
    sub_26BFC51B4(v216, v215);
    sub_26BE2E01C(&v271);

    sub_26BE00258(v220, v223);
    sub_26BE01654();
    v51 = swift_allocError();
    *v52 = 0xD000000000000029;
    *(v52 + 8) = 0x800000026C02B3B0;
    *(v52 + 112) = 2;
    v219 = v51;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v46);
    v53 = v218;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v222);
LABEL_5:
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    goto LABEL_6;
  }

  LOWORD(v245) = v44;
  v66 = v209;
  *(&v245 + 1) = v209;
  v67 = v220;
  *&v246 = v220;
  v68 = v223;
  *(&v246 + 1) = v223;
  v69 = a5[9];
  v267 = a5[8];
  v268 = v69;
  v269 = a5[10];
  v270 = *(a5 + 22);
  v70 = a5[5];
  v263 = a5[4];
  v264 = v70;
  v71 = a5[7];
  v265 = a5[6];
  v266 = v71;
  v72 = a5[1];
  v260[0] = *a5;
  v260[1] = v72;
  v73 = a5[3];
  v261 = a5[2];
  v262 = v73;
  v74 = v206;
  v75 = MLS.KeyPackage.refHash.getter();
  if (v74)
  {
    v219 = v74;
    sub_26BFC51B4(v216, v215);
    __swift_destroy_boxed_opaque_existential_1(v224);
    __swift_destroy_boxed_opaque_existential_1(v218);
    __swift_destroy_boxed_opaque_existential_1(v222);
    sub_26BE2E01C(&v271);

    sub_26BE00258(v67, v68);
LABEL_19:
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    goto LABEL_6;
  }

  v77 = v75;
  v78 = v76;
  v79 = sub_26BF2B8A0(v75, v76);
  v81 = v80;
  v82 = v79;
  sub_26BE00258(v77, v78);
  if (v81)
  {
    sub_26BFC51B4(v216, v215);
    sub_26BE2E01C(&v271);

    sub_26BE00258(v67, v223);
    sub_26BE01654();
    v83 = swift_allocError();
    *v84 = 13;
    *(v84 + 8) = 0u;
    *(v84 + 24) = 0u;
    *(v84 + 40) = 0u;
    *(v84 + 56) = 0u;
    *(v84 + 72) = 0u;
    *(v84 + 88) = 0u;
    *(v84 + 104) = 0;
    *(v84 + 112) = 23;
    v219 = v83;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v224);
    __swift_destroy_boxed_opaque_existential_1(v218);
    __swift_destroy_boxed_opaque_existential_1(v222);
    goto LABEL_19;
  }

  v85 = v82;
  v86 = v271;
  v87 = v221;
  v88 = v218;
  if (v271 != v221)
  {
    sub_26BE2E01C(&v271);

    sub_26BE00258(v67, v223);
    sub_26BFC51B4(v216, v215);
    sub_26BE01654();
    v89 = swift_allocError();
    *v90 = v87;
    *(v90 + 2) = v86;
    *(v90 + 112) = 18;
    v219 = v89;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v224);
    v53 = v88;
    goto LABEL_4;
  }

  LOWORD(v245) = v221;
  *(&v245 + 1) = v66;
  *&v246 = v67;
  *(&v246 + 1) = v223;
  MLS.Welcome.decryptGroupSecrets(keyPackageIndex:initPriv:)(v85, v222, v260);
  v219 = 0;
  v91 = v260[0];
  v206 = v260[1];
  v207 = v261;
  LOWORD(v260[0]) = v87;
  *(&v260[0] + 1) = v66;
  *&v260[1] = v220;
  *(&v260[1] + 1) = v223;
  v245 = v91;
  sub_26BE00608(v91, *(&v91 + 1));
  v92 = v202;
  sub_26C009C5C();
  v93 = v205;
  v94 = v219;
  MLS.Welcome.decryptGroupInfo(joinerSecret:preSharedKeys:)(v92, v205);
  v95 = v208;
  if (v94)
  {
    v219 = v94;
    sub_26BFC51B4(v216, v215);
    sub_26BE00258(v91, *(&v91 + 1));
    sub_26BE132D4(v206, *(&v206 + 1));

    sub_26BE2E01C(&v271);
    __swift_destroy_boxed_opaque_existential_1(v224);
    __swift_destroy_boxed_opaque_existential_1(v218);
    __swift_destroy_boxed_opaque_existential_1(v222);
    (*(v203 + 8))(v92, v204);

    sub_26BE00258(v220, v223);
    goto LABEL_5;
  }

  v221 = *(&v91 + 1);
  v189 = v91;
  (*(v203 + 8))(v92, v204);

  sub_26BE00258(v220, v223);
  v96 = v93;
  v97 = *(v93 + 32);
  v98 = *(v96 + 40);
  v99 = *v49;
  v100 = *(v96 + 72);
  v101 = (v100 + 32);
  v102 = *(v100 + 16) + 1;
  v103 = v222;
  do
  {
    if (!--v102)
    {
      if (v215)
      {
        v223 = v98;
        goto LABEL_34;
      }

LABEL_40:
      sub_26BE2E01C(&v271);
      sub_26BE01654();
      v120 = swift_allocError();
      *v121 = 14;
      *(v121 + 8) = 0u;
      *(v121 + 24) = 0u;
      *(v121 + 40) = 0u;
      *(v121 + 56) = 0u;
      *(v121 + 72) = 0u;
      *(v121 + 88) = 0u;
      *(v121 + 104) = 0;
      *(v121 + 112) = 23;
      v219 = v120;
      swift_willThrow();
      sub_26BE00258(v189, v221);
      sub_26BE132D4(v206, *(&v206 + 1));

      __swift_destroy_boxed_opaque_existential_1(v224);
      __swift_destroy_boxed_opaque_existential_1(v218);
      v119 = v103;
      goto LABEL_41;
    }

    v104 = v101 + 12;
    v105 = *v101;
    v101 += 12;
  }

  while (v105 != 2);
  v223 = v98;
  LOWORD(v260[0]) = 2;
  *(v260 + 8) = *(v104 - 1);
  sub_26BEDFEB0(v260, &v245);
  if (v215)
  {
LABEL_34:

    goto LABEL_35;
  }

  if (!v245)
  {
    goto LABEL_40;
  }

  LOWORD(v236) = v99;
  MLS.TreeKEMPublicKey.init(ciphersuiteID:ratchetTree:)(&v236, &v245, v260);
  v219 = 0;
  v216 = LOWORD(v260[0]);
  v215 = *(&v260[0] + 1);
  v95 = v260[1];
  v217 = *(&v260[1] + 1);
LABEL_35:

  v106 = v215;
  v107 = v216;
  *(v49 + 32) = v216;
  *(v49 + 40) = v106;
  *(v49 + 48) = v95;
  v108 = v217;
  *(v49 + 56) = v217;
  LOWORD(v260[0]) = v107;
  *(&v260[0] + 1) = v106;
  LODWORD(v260[1]) = v95;
  *(&v260[1] + 1) = v108;
  v109 = sub_26BE592D0();
  v111 = v110;
  sub_26BE00608(v109, v110);
  v112 = sub_26BE02DEC(v109, v111, v97, v223);
  sub_26BE00258(v109, v111);
  if (!v112)
  {
    sub_26BE2E01C(&v271);
    sub_26BE01654();
    v117 = swift_allocError();
    *v118 = 35;
    *(v118 + 8) = 0u;
    *(v118 + 24) = 0u;
    *(v118 + 40) = 0u;
    *(v118 + 56) = 0u;
    *(v118 + 72) = 0u;
    *(v118 + 88) = 0u;
    *(v118 + 104) = 0;
    *(v118 + 112) = 23;
    v219 = v117;
    swift_willThrow();
    sub_26BE00258(v189, v221);
    sub_26BE132D4(v206, *(&v206 + 1));

    __swift_destroy_boxed_opaque_existential_1(v224);
    __swift_destroy_boxed_opaque_existential_1(v218);
    v119 = v222;
LABEL_41:
    __swift_destroy_boxed_opaque_existential_1(v119);
    sub_26BFF3630(v205, type metadata accessor for MLS.GroupInfo);
    goto LABEL_19;
  }

  v113 = *(v49 + 32);
  v114 = *(v49 + 40);
  v115 = *(v49 + 48);
  v223 = v49;
  v116 = *(v49 + 56);
  LOWORD(v260[0]) = v113;
  *(&v260[0] + 1) = v114;
  LODWORD(v260[1]) = v115;
  *(&v260[1] + 1) = v116;

  MLS.GroupInfo.validateSignatureAgainstTree(tree:)(v260);
  v219 = 0;

  v122 = v223;
  v123 = v214;
  sub_26BE2E258(v223 + v214, &qword_28045F090, &qword_26C01A358);
  v124 = v205;
  sub_26BFF35C8(v205, &v122[v123], type metadata accessor for MLS.GroupInfo);
  v125 = v201;
  v199(&v122[v123], 0, 1, v201);
  v126 = v124[2];
  v127 = v124[3];
  *(v122 + 2) = v126;
  *(v122 + 3) = v127;
  v128 = v124[1];
  *(v122 + 1) = v128;
  v130 = v124[6];
  v129 = v124[7];
  v131 = v213;
  v133 = v213[1];
  v132 = v213[2];
  sub_26BE00608(v128, v126);
  sub_26BE00608(v130, v129);
  sub_26BE00258(v133, v132);
  v131[1] = v130;
  v131[2] = v129;
  v134 = *(v125 + 24);
  v135 = v219;
  sub_26BE2E558();
  v55 = v135 == 0;
  v219 = v135;
  if (v135)
  {
    sub_26BE00258(v189, v221);
    sub_26BE132D4(v206, *(&v206 + 1));

    sub_26BE2E01C(&v271);
    goto LABEL_44;
  }

  v136 = v205[8];
  v137 = v223;
  *(v223 + v212[10]) = v136;
  v138 = *(v137 + 40);
  v139 = *(v137 + 48);
  v140 = *(v137 + 56);
  v254 = *(v137 + 32);
  v255 = v138;
  v256 = v139;
  v257 = v140;
  v265 = *(&v272[6] + 8);
  v266 = *(&v272[7] + 8);
  *&v267 = *(&v272[8] + 1);
  v261 = *(&v272[2] + 8);
  v262 = *(&v272[3] + 8);
  v263 = *(&v272[4] + 8);
  v264 = *(&v272[5] + 8);
  v260[0] = *(v272 + 8);
  v260[1] = *(&v272[1] + 8);

  sub_26BE00758(v272 + 8, &v245);
  v141 = v219;
  sub_26BE5000C(v260, &v258);
  v219 = v141;
  if (v141)
  {
    sub_26BE2E01C(&v271);
    sub_26BE00258(v189, v221);
    sub_26BE132D4(v206, *(&v206 + 1));

    __swift_destroy_boxed_opaque_existential_1(v224);
    __swift_destroy_boxed_opaque_existential_1(v218);
    __swift_destroy_boxed_opaque_existential_1(v222);
    v251 = v265;
    v252 = v266;
    v253 = v267;
    v247 = v261;
    v248 = v262;
    v249 = v263;
    v250 = v264;
    v245 = v260[0];
    v246 = v260[1];
    sub_26BE00854(&v245);

    goto LABEL_47;
  }

  sub_26BE2E01C(&v271);
  v251 = v265;
  v252 = v266;
  v253 = v267;
  v247 = v261;
  v248 = v262;
  v249 = v263;
  v250 = v264;
  v245 = v260[0];
  v246 = v260[1];
  sub_26BE00854(&v245);

  if (v259 != 1)
  {
    v144 = v258;
    v145 = v212[13];
    *(v223 + v145) = v258;
    LODWORD(v229) = v144;
    v241 = *(v205 + *(v201 + 28));
    v146 = v219;
    sub_26BE7BE10(&v241, &v236);
    v219 = v146;
    if (v146)
    {
      goto LABEL_52;
    }

    LODWORD(v220) = v236;
    v147 = v223[16];
    v217 = *(v223 + 5);
    LODWORD(v216) = *(v223 + 12);
    v215 = *(v223 + 7);
    v148 = *(v223 + v145);
    sub_26BE038A8(v218, &v236);
    v149 = v198;
    v150 = v147;
    *v198 = v147;
    *(v149 + 1) = v148;
    v229 = v197;
    sub_26BE2BAE8(v206, *(&v206 + 1));
    sub_26C009C5C();
    v151 = MEMORY[0x277D84F90];
    *(v149 + 1) = sub_26C004AC0(MEMORY[0x277D84F90]);
    result = sub_26C004BCC(v151);
    *(v149 + 2) = result;
    if (v148 < 0)
    {
      __break(1u);
      return result;
    }

    sub_26BE038A8(&v236, &v229);
    sub_26BE4D0C0(&v229, (2 * v148));
    if (*(&v206 + 1) >> 60 != 15)
    {
      LOWORD(v229) = v150;
      *(&v229 + 1) = v217;
      LODWORD(v230) = v216;
      *(&v230 + 1) = v215;
      v241 = v220;
      v152 = v219;
      sub_26BE528E8(&v229, &v241, v206, *(&v206 + 1));
      v219 = v152;
      if (v152)
      {
        v153 = v206;
        sub_26BE132D4(v206, *(&v206 + 1));
        sub_26BE00258(v189, v221);
        sub_26BE132D4(v153, *(&v153 + 1));

        __swift_destroy_boxed_opaque_existential_1(v224);
        __swift_destroy_boxed_opaque_existential_1(v218);
        __swift_destroy_boxed_opaque_existential_1(v222);
        sub_26BFF3630(v198, type metadata accessor for MLS.TreeKEMPrivateKey);
        __swift_destroy_boxed_opaque_existential_1(&v236);
        goto LABEL_47;
      }

      sub_26BE132D4(v206, *(&v206 + 1));
    }

    __swift_destroy_boxed_opaque_existential_1(&v236);
    v154 = v195;
    sub_26BFF36F4(v198, v195, type metadata accessor for MLS.TreeKEMPrivateKey);
    v155 = v223;
    sub_26BFF36F4(v154, v223 + v212[8], type metadata accessor for MLS.TreeKEMPrivateKey);
    LODWORD(v220) = *v155;
    v156 = *(v155 + 1);
    v157 = *(v155 + 2);
    v158 = *(v155 + 5);
    v159 = *(v155 + 12);
    v160 = *(v155 + 7);
    LOWORD(v241) = v155[16];
    v242 = v158;
    v243 = v159;
    v244 = v160;
    v161 = v219;
    v162 = sub_26BE592D0();
    v219 = v161;
    if (v161)
    {
      sub_26BE00258(v189, v221);
      sub_26BE132D4(v206, *(&v206 + 1));

LABEL_60:
      __swift_destroy_boxed_opaque_existential_1(v224);
      __swift_destroy_boxed_opaque_existential_1(v218);
      __swift_destroy_boxed_opaque_existential_1(v222);
LABEL_63:
      sub_26BFF3630(v205, type metadata accessor for MLS.GroupInfo);
      v56 = 0;
      goto LABEL_64;
    }

    v164 = v162;
    v165 = v163;
    v166 = v213[1];
    v217 = v213[2];
    LOWORD(v236) = v220;
    *(&v236 + 1) = v156;
    *&v237 = v157;
    *(&v237 + 1) = v127;
    *&v238 = v162;
    *(&v238 + 1) = v163;
    *&v239 = v166;
    v167 = v166;
    *(&v239 + 1) = v217;
    v234 = v197;
    v230 = v237;
    v231 = v238;
    v232 = v239;
    v240 = v136;
    v235 = 0;
    v233 = v136;
    v229 = v236;

    sub_26BE00608(v164, v165);
    sub_26BE00608(v156, v157);
    sub_26BE00608(v167, v217);
    v168 = v219;
    sub_26BFAF494(&v229);
    v219 = v168;
    if (v168)
    {
      sub_26BE00258(v189, v221);
      sub_26BE132D4(v206, *(&v206 + 1));

      __swift_destroy_boxed_opaque_existential_1(v224);
      __swift_destroy_boxed_opaque_existential_1(v218);
      __swift_destroy_boxed_opaque_existential_1(v222);
      sub_26BE00204(&v236);
      sub_26BE00258(v234, *(&v234 + 1));
      goto LABEL_63;
    }

    v169 = v234;
    v170 = *(&v234 + 1) >> 62;
    if ((*(&v234 + 1) >> 62) > 1)
    {
      if (v170 != 2)
      {
LABEL_73:
        v172 = sub_26C00909C();
        v174 = v173;
        sub_26BE00258(v169, *(&v169 + 1));
        LOWORD(v234) = *v223;
        *&v229 = v189;
        *(&v229 + 1) = v221;
        sub_26BE00608(v189, v221);
        v175 = v190;
        sub_26C009C5C();
        v56 = 1;
        v176 = v193;
        (*(v203 + 56))(v193, 1, 1, v204);
        sub_26BE00608(v172, v174);
        v177 = v219;
        MLS.KeySchedule.init(ciphersuiteID:joinerSecret:pskSecret:context:)(&v234, v175, v176, v172, v174, v192);
        v219 = v177;
        if (!v177)
        {
          v178 = v223;
          v179 = v223 + v212[11];
          sub_26BFF36F4(v192, v179, type metadata accessor for MLS.KeySchedule);
          v180 = *(v178 + 48);
          if (*v179)
          {
            v181 = 2;
          }

          else
          {
            v181 = 1;
          }

          LOWORD(v234) = v181;
          LODWORD(v229) = v180;
          v182 = v191;
          (*(v203 + 16))(v191, &v179[*(v194 + 32)], v204);
          v183 = v219;
          MLS.GroupKeySource.init(ciphersuiteID:groupSize:encryptionSecret:)(&v234, &v229, v182, v227);
          v219 = v183;
          if (!v183)
          {
            v184 = v223 + v212[12];
            v185 = v227[5];
            *(v184 + 4) = v227[4];
            *(v184 + 5) = v185;
            *(v184 + 6) = v227[6];
            *(v184 + 14) = v228;
            v186 = v227[1];
            *v184 = v227[0];
            *(v184 + 1) = v186;
            v187 = v227[3];
            *(v184 + 2) = v227[2];
            *(v184 + 3) = v187;
            v188 = v219;
            sub_26BEAFD54(v205 + v134, v213[1], v213[2]);
            v219 = v188;
            if (v188)
            {
              sub_26BE00204(&v236);
              sub_26BE00258(v189, v221);
              sub_26BE132D4(v206, *(&v206 + 1));

              sub_26BE00258(v172, v174);
              __swift_destroy_boxed_opaque_existential_1(v224);
              __swift_destroy_boxed_opaque_existential_1(v218);
              __swift_destroy_boxed_opaque_existential_1(v222);
              sub_26BFF3630(v205, type metadata accessor for MLS.GroupInfo);
              v54 = 1;
              v57 = 1;
              goto LABEL_48;
            }

            sub_26BE00204(&v236);
            sub_26BE00258(v189, v221);
            sub_26BE132D4(v206, *(&v206 + 1));

            sub_26BE00258(v172, v174);
            __swift_destroy_boxed_opaque_existential_1(v224);
            __swift_destroy_boxed_opaque_existential_1(v218);
            __swift_destroy_boxed_opaque_existential_1(v222);
            return sub_26BFF3630(v205, type metadata accessor for MLS.GroupInfo);
          }

          sub_26BE00204(&v236);
          sub_26BE00258(v189, v221);
          sub_26BE132D4(v206, *(&v206 + 1));

          sub_26BE00258(v172, v174);
          __swift_destroy_boxed_opaque_existential_1(v224);
          __swift_destroy_boxed_opaque_existential_1(v218);
          __swift_destroy_boxed_opaque_existential_1(v222);
          sub_26BFF3630(v205, type metadata accessor for MLS.GroupInfo);
LABEL_64:
          v57 = 0;
          v54 = 1;
          goto LABEL_48;
        }

        sub_26BE00204(&v236);
        sub_26BE00258(v189, v221);
        sub_26BE132D4(v206, *(&v206 + 1));

        sub_26BE00258(v172, v174);
        goto LABEL_60;
      }

      v171 = *(v234 + 24);
    }

    else
    {
      if (!v170)
      {
        goto LABEL_73;
      }

      v171 = v234 >> 32;
    }

    if (v171 < 0)
    {
      __break(1u);
    }

    goto LABEL_73;
  }

  sub_26BE01654();
  v142 = swift_allocError();
  *v143 = 16;
  *(v143 + 8) = 0u;
  *(v143 + 24) = 0u;
  *(v143 + 40) = 0u;
  *(v143 + 56) = 0u;
  *(v143 + 72) = 0u;
  *(v143 + 88) = 0u;
  *(v143 + 104) = 0;
  *(v143 + 112) = 23;
  v219 = v142;
  swift_willThrow();
LABEL_52:
  sub_26BE00258(v189, v221);
  sub_26BE132D4(v206, *(&v206 + 1));

LABEL_44:
  __swift_destroy_boxed_opaque_existential_1(v224);
  __swift_destroy_boxed_opaque_existential_1(v218);
  __swift_destroy_boxed_opaque_existential_1(v222);
LABEL_47:
  sub_26BFF3630(v205, type metadata accessor for MLS.GroupInfo);
  v54 = 0;
  v56 = 0;
  v57 = 0;
LABEL_48:
  v49 = v223;
  sub_26BE00258(*(v223 + 1), *(v223 + 2));
LABEL_6:

  v58 = v212;
  if (v54)
  {
    sub_26BFF3630(v49 + v212[8], type metadata accessor for MLS.TreeKEMPrivateKey);
  }

  v59 = v213[3];
  v60 = v213[4];
  sub_26BE00258(v213[1], v213[2]);
  sub_26BE00258(v59, v60);
  if (!v55)
  {
    if (!v56)
    {
      goto LABEL_10;
    }

LABEL_14:
    sub_26BFF3630(v49 + v58[11], type metadata accessor for MLS.KeySchedule);
    if (!v57)
    {
      goto LABEL_12;
    }

LABEL_11:
    v61 = v49 + v58[12];
    v62 = *(v61 + 80);
    v263 = *(v61 + 64);
    v264 = v62;
    v265 = *(v61 + 96);
    *&v266 = *(v61 + 112);
    v63 = *(v61 + 16);
    v260[0] = *v61;
    v260[1] = v63;
    v64 = *(v61 + 48);
    v261 = *(v61 + 32);
    v262 = v64;
    sub_26BE717DC(v260);
    goto LABEL_12;
  }

  if (v56)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (v57)
  {
    goto LABEL_11;
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_1((v49 + v210));
  sub_26BE2E258(v211, &qword_28045E730, &qword_26C011528);

  return sub_26BE2E258(v49 + v214, &qword_28045F090, &qword_26C01A358);
}

uint64_t MLS.GroupState.init(groupID:ciphersuiteID:signaturePrivateKey:extensions:credential:client:)@<X0>(void *a1@<X0>, int *a2@<X1>, unsigned __int16 *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v101 = a5;
  v164 = a1;
  v15 = type metadata accessor for MLS.GroupState(0);
  v16 = MEMORY[0x28223BE20](v15);
  v94 = (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v16);
  v20 = *a3;
  if ((v20 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v92 = &v79 - v19;
    v100 = a2;
    v21 = *a6;
    v22 = a6[1];
    LODWORD(v93) = v20;
    LOBYTE(v149) = v20 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    if (a7)
    {
      v99 = v104;
      swift_beginAccess();
      sub_26BE295A0((a7 + 5), &v102);

      sub_26BE1118C(&v149);
      v23 = v8;
      if (v8)
      {

        sub_26BE00258(v164, v100);

        sub_26BE7162C(v21, v22);
        __swift_destroy_boxed_opaque_existential_1(a4);
        return sub_26BE29710(&v102);
      }

      sub_26BE29710(&v102);
    }

    else
    {
      v24 = v104;
      MLS.Cryptography.Ciphersuite.generateHPKEPrivateKey()(&v149);
      v23 = v8;
      if (v8)
      {
        __swift_destroy_boxed_opaque_existential_1(a4);
        sub_26BE7162C(v21, v22);

        sub_26BE00258(v164, v100);
      }

      v99 = v24;
    }

    sub_26BE03890(&v149, v163);
    sub_26BE038A8(v163, v160);
    sub_26BE038A8(a4, v157);
    v79 = v15;
    v80 = a8;
    v98 = v21;
    if (a7)
    {
      swift_beginAccess();
      v26 = a7[42];
      v25 = a7[43];
      v27 = a7[44];
      v28 = a7[45];
      v29 = a7[46];

      v91 = v25;
      v23 = 0;

      v90 = v27;
    }

    else
    {
      v26 = MEMORY[0x277D84F90];
      v90 = MEMORY[0x277D84F90];
      v91 = MEMORY[0x277D84F90];
      v28 = MEMORY[0x277D84F90];
      v29 = &unk_287CBA1B8;
    }

    v96 = v29;
    v97 = v28;
    v82 = v26;
    v84 = a4;
    v88 = a7;
    v89 = v23;
    if ((~v22 & 0x3000000000000000) == 0)
    {
      v30 = v158;
      v31 = v159;
      __swift_project_boxed_opaque_existential_1(v157, v158);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v33 = *(AssociatedTypeWitness - 8);
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v35 = &v79 - v34;
      (*(v31 + 40))(v30, v31);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v98 = (*(*(AssociatedConformanceWitness + 8) + 16))(AssociatedTypeWitness);
      v22 = v37;
      (*(v33 + 8))(v35, AssociatedTypeWitness);
    }

    v83 = v22;
    v39 = v161;
    v38 = v162;
    __swift_project_boxed_opaque_existential_1(v160, v161);
    v40 = *(v38 + 8);
    v41 = swift_getAssociatedTypeWitness();
    v87 = &v79;
    v42 = *(v41 - 8);
    MEMORY[0x28223BE20](v41);
    v44 = &v79 - v43;
    (*(v40 + 32))(v39, v40);
    v45 = swift_getAssociatedConformanceWitness();
    *&v95 = (*(v45 + 16))(v41, v45);
    *(&v95 + 1) = v46;
    (*(v42 + 8))(v44, v41);
    v47 = v158;
    v48 = v159;
    __swift_project_boxed_opaque_existential_1(v157, v158);
    v49 = swift_getAssociatedTypeWitness();
    v50 = *(v49 - 8);
    MEMORY[0x28223BE20](v49);
    v52 = &v79 - v51;
    (*(v48 + 40))(v47, v48);
    v53 = v83;
    v54 = swift_getAssociatedConformanceWitness();
    v55 = (*(*(v54 + 8) + 16))(v49);
    v57 = v56;
    (*(v50 + 8))(v52, v49);
    v102 = v95;
    v85 = v55;
    *&v103 = v55;
    *(&v103 + 1) = v57;
    v87 = v57;
    *&v104 = v98;
    *(&v104 + 1) = v53;
    v58 = v82;
    v60 = v90;
    v59 = v91;
    *&v105 = v82;
    *(&v105 + 1) = v91;
    *&v106 = v90;
    *(&v106 + 1) = v97;
    *&v107[0] = v96;
    v86 = xmmword_26C015F70;
    *(v107 + 8) = xmmword_26C015F70;
    BYTE8(v107[1]) = 0;
    HIDWORD(v107[1]) = *&v156[3];
    *(&v107[1] + 9) = *v156;
    v61 = MEMORY[0x277D84F90];
    *&v108[0] = MEMORY[0x277D84F90];
    v81 = xmmword_26C00BBD0;
    *(v108 + 8) = xmmword_26C00BBD0;
    v154[1] = v107[1];
    v155[0] = v108[0];
    *&v155[1] = 0xC000000000000000;
    v151 = v104;
    v152 = v105;
    v154[0] = v107[0];
    v153 = v106;
    v150 = v103;
    v149 = v95;
    v147 = xmmword_26C00DA60;
    v148 = 0;
    sub_26BE00758(&v102, &v138);
    v62 = v89;
    v63 = sub_26BE5B600(&v147);
    if (v62)
    {

      sub_26BE00258(v164, v100);

      __swift_destroy_boxed_opaque_existential_1(v84);
      __swift_destroy_boxed_opaque_existential_1(v163);
      v144 = v154[1];
      v145 = v155[0];
      v146 = *&v155[1];
      v140 = v151;
      v141 = v152;
      v143 = v154[0];
      v142 = v153;
      v139 = v150;
      v138 = v149;
      sub_26BE00854(&v138);
      v149 = v95;
      *&v150 = v85;
      *(&v150 + 1) = v87;
      *&v151 = v98;
      *(&v151 + 1) = v53;
      *&v152 = v58;
      *(&v152 + 1) = v59;
      *&v153 = v60;
      *(&v153 + 1) = v97;
      *&v154[0] = v96;
      *(v154 + 8) = v86;
      BYTE8(v154[1]) = 0;
      *(&v154[1] + 9) = *v156;
      HIDWORD(v154[1]) = *&v156[3];
      *&v155[0] = v61;
      *(v155 + 8) = v81;
      sub_26BE00854(&v149);
      __swift_destroy_boxed_opaque_existential_1(v157);
      return __swift_destroy_boxed_opaque_existential_1(v160);
    }

    else
    {
      v65 = v63;
      v66 = v64;
      v144 = v154[1];
      v145 = v155[0];
      v146 = *&v155[1];
      v140 = v151;
      v141 = v152;
      v143 = v154[0];
      v142 = v153;
      v139 = v150;
      v138 = v149;
      sub_26BE00854(&v138);
      v67 = v158;
      v68 = v159;
      __swift_project_boxed_opaque_existential_1(v157, v158);
      v69 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0x65646F4E6661654CLL, 0xEB00000000534254, v65, v66, v67, v68);
      v71 = v70;
      v72 = v69;
      sub_26BE00258(v65, v66);
      sub_26BE00258(0, 0xC000000000000000);
      v129 = v93;
      sub_26BE038A8(v160, v128);
      sub_26BE038A8(v157, v127);
      v73 = v95;
      v130 = v95;
      *&v131 = v85;
      *(&v131 + 1) = v87;
      *&v132 = v98;
      *(&v132 + 1) = v53;
      *&v133 = v58;
      *(&v133 + 1) = v91;
      *&v134 = v90;
      *(&v134 + 1) = v97;
      *&v135[0] = v96;
      *(v135 + 8) = v86;
      BYTE8(v135[1]) = 0;
      *(&v135[1] + 9) = *v156;
      HIDWORD(v135[1]) = *&v156[3];
      *&v136 = MEMORY[0x277D84F90];
      v93 = v72;
      *(&v136 + 1) = v72;
      v137 = v71;
      v125[6] = v135[1];
      v125[7] = v136;
      v126 = v71;
      v125[2] = v132;
      v125[3] = v133;
      v125[4] = v134;
      v125[5] = v135[0];
      v125[0] = v95;
      v125[1] = v131;
      sub_26BE00758(&v130, &v109);
      v74 = v94;
      sub_26BFEF948(v164, v100, &v129, v128, v127, v125, v101, v94);
      v89 = 0;

      __swift_destroy_boxed_opaque_existential_1(v84);
      __swift_destroy_boxed_opaque_existential_1(v163);
      v109 = v73;
      v110 = v85;
      v111 = v87;
      v112 = v98;
      v113 = v53;
      v114 = v58;
      v115 = v91;
      v116 = v90;
      v117 = v97;
      v118 = v96;
      v119 = v86;
      v120 = 0;
      *v121 = *v156;
      *&v121[3] = *&v156[3];
      v122 = MEMORY[0x277D84F90];
      v123 = v93;
      v124 = v71;
      sub_26BE00854(&v109);
      v75 = v92;
      sub_26BFF36F4(v74, v92, type metadata accessor for MLS.GroupState);
      __swift_destroy_boxed_opaque_existential_1(v157);
      __swift_destroy_boxed_opaque_existential_1(v160);
      v76 = v75;
      v77 = v80;
      sub_26BFF36F4(v76, v80, type metadata accessor for MLS.GroupState);
      v78 = *(v79 + 76);

      *(v77 + v78) = v88;
    }
  }

  return result;
}

uint64_t MLS.GroupState.credential.getter@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v16 = *(v1 + 32);
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v15 = *(v1 + *(type metadata accessor for MLS.GroupState(0) + 52));

  MLS.TreeKEMPublicKey.find(leafIndex:)(&v15, &v20);
  if (v2)
  {
  }

  else
  {

    v11[6] = v26;
    v11[7] = v27;
    v11[2] = v22;
    v11[3] = v23;
    v11[4] = v24;
    v11[5] = v25;
    v11[0] = v20;
    v11[1] = v21;
    v13[6] = v26;
    v13[7] = v27;
    v13[2] = v22;
    v13[3] = v23;
    v13[4] = v24;
    v13[5] = v25;
    v12 = v28;
    v14 = v28;
    v13[0] = v20;
    v13[1] = v21;
    if (sub_26BE59C80(v13) == 1)
    {
      sub_26BE01654();
      swift_allocError();
      *v8 = 15;
      v8[112] = 0;
      return swift_willThrow();
    }

    else
    {
      MLS.Credential.rawValue.getter();
      MLS.Identity.Credential.init(serializedCredential:)(v9, v10, a1);
      return sub_26BE2E258(v11, &qword_28045E6A0, &unk_26C016520);
    }
  }
}

uint64_t sub_26BFEDF98@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = *(v2 + 5);
  v7 = *(v2 + 12);
  v8 = *(v2 + 7);
  v46 = v2[16];
  v47 = v6;
  v48 = v7;
  v49 = v8;
  v45 = v5;

  MLS.TreeKEMPublicKey.find(leafIndex:)(&v45, &v50);
  if (v3)
  {
  }

  else
  {

    v33 = v56;
    v34 = v57;
    v29 = v52;
    v30 = v53;
    v31 = v54;
    v32 = v55;
    v27 = v50;
    v28 = v51;
    v42 = v56;
    v43 = v57;
    v38 = v52;
    v39 = v53;
    v40 = v54;
    v41 = v55;
    v35 = v58;
    v44 = v58;
    v36 = v50;
    v37 = v51;
    result = sub_26BE59C80(&v36);
    if (result == 1)
    {
      *(a2 + 48) = 0;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
    }

    else
    {
      v24 = v42;
      v25 = v43;
      v26 = v44;
      v20 = v38;
      v21 = v39;
      v22 = v40;
      v23 = v41;
      v10 = *v2;
      v18 = v36;
      v19 = v37;
      if ((v10 - 3) < 0xFFFFFFFE)
      {
        __break(1u);
      }

      else
      {
        v14 = v10 != 1;
        v15[6] = v33;
        v15[7] = v34;
        v16 = v35;
        v15[2] = v29;
        v15[3] = v30;
        v15[4] = v31;
        v15[5] = v32;
        v15[0] = v27;
        v15[1] = v28;
        sub_26BE00758(v15, v12);
        MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
        v11 = v17;

        v14 = v11;
        sub_26BF34320(a2);
        v12[6] = v24;
        v12[7] = v25;
        v13 = v26;
        v12[2] = v20;
        v12[3] = v21;
        v12[4] = v22;
        v12[5] = v23;
        v12[0] = v18;
        v12[1] = v19;
        sub_26BE00854(v12);
        return sub_26BE2E258(&v27, &qword_28045E6A0, &unk_26C016520);
      }
    }
  }

  return result;
}

__n128 static MLS.GroupState.externalJoin(signaturePrivateKey:keyPackage:groupInfo:tree:messageOptions:removePrior:psks:)(uint64_t a1, uint64_t a2, __n128 *a3, uint64_t a4, __int128 *a5, unint64_t a6, unint64_t *a7, void *a8, int *a9, uint64_t a10)
{
  v173 = a6;
  v169 = a8;
  v170 = a7;
  v171 = a4;
  v163 = a2;
  v164 = a3;
  v161 = a1;
  v220 = a10;
  v162 = type metadata accessor for MLS.GroupState.CommitOutput(0);
  MEMORY[0x28223BE20](v162);
  v165 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for MLS.GroupState.CommitOptions(0);
  MEMORY[0x28223BE20](v166);
  v167 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MLS.GroupState.CommitTypeOptions(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26C009C8C();
  v168 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v148 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v148 - v23;
  v25 = type metadata accessor for MLS.GroupInfo(0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for MLS.GroupState(0);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a5[9];
  v216 = a5[8];
  v217 = v32;
  v218 = a5[10];
  v219 = *(a5 + 22);
  v33 = a5[5];
  v212 = a5[4];
  v213 = v33;
  v34 = a5[7];
  v214 = a5[6];
  v215 = v34;
  v35 = a5[1];
  v208 = *a5;
  v209 = v35;
  v36 = a5[3];
  v210 = a5[2];
  v211 = v36;
  if (*(v220 + 16))
  {
    sub_26BE01654();
    swift_allocError();
    *v37 = 0xD000000000000029;
    *(v37 + 8) = 0x800000026C02B3B0;
    *(v37 + 112) = 2;
    swift_willThrow();
    return result;
  }

  v159 = v22;
  v160 = v24;
  v156 = v19;
  v157 = v15;
  v158 = v16;
  v220 = v29;
  v155 = *v169;
  v39 = v169[1];
  v153 = v169[2];
  v154 = v39;
  v169 = v169[3];
  v40 = *a9;
  v41 = *(a9 + 4);
  v42 = v170[2];
  v43 = v170[3];
  v45 = *v170;
  v44 = v170[1];
  sub_26BE038A8(v171, &v193);
  sub_26BFF35C8(v173, v27, type metadata accessor for MLS.GroupInfo);
  v179.n128_u64[0] = v45;
  v179.n128_u64[1] = v44;
  v180.n128_u64[0] = v42;
  v180.n128_u64[1] = v43;
  sub_26BFF2B34(v45, v44, v42, v43);
  v46 = v172;
  sub_26BFF2114(&v193, v27, &v179, v31);
  if (!v46)
  {
    v47 = v31;
    v48 = v173;
    LODWORD(v172) = v41;
    LODWORD(v171) = v40;
    v152 = v47;
    v49 = *v47;
    if ((v49 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
      goto LABEL_31;
    }

    v50 = v49 != 1;
    v179.n128_u8[0] = v49 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v51 = v193;
    v52 = *(&v193 + 1);
    v53 = v194;
    v54 = v195;
    sub_26BE82154(*(v48 + 72), &v193);
    v173 = *(&v193 + 1);
    if (*(&v193 + 1) >> 60 == 15)
    {
      if (qword_28045DF80 == -1)
      {
LABEL_7:
        v55 = sub_26C009A5C();
        __swift_project_value_buffer(v55, qword_280478EE8);
        v56 = sub_26C009A3C();
        v57 = sub_26C00AA0C();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          *&v193 = v59;
          *v58 = 136315138;
          *(v58 + 4) = sub_26BE29740(0x61745370756F7247, 0xEA00000000006574, &v193);
          _os_log_impl(&dword_26BDFE000, v56, v57, "%s: Missing external_pub extension in GroupInfo", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v59);
          MEMORY[0x26D69A4E0](v59, -1, -1);
          MEMORY[0x26D69A4E0](v58, -1, -1);
        }

        sub_26BE01654();
        swift_allocError();
        *v60 = 0xD00000000000001CLL;
        *(v60 + 8) = 0x800000026C02DAD0;
        *(v60 + 112) = 2;
        swift_willThrow();

        sub_26BFF3630(v152, type metadata accessor for MLS.GroupState);
        return result;
      }

LABEL_31:
      swift_once();
      goto LABEL_7;
    }

    v151 = v50;
    v61 = v193;
    v170 = v54;
    if (v51)
    {
      LOBYTE(v193) = 1;
      *(&v193 + 1) = v52;
      v194 = v53;
      *&v195 = v54;
      v206 = type metadata accessor for P256EncryptionPublicKey(0);
      v207 = sub_26BFF36AC(&qword_28045E3C0, type metadata accessor for P256EncryptionPublicKey, &protocol conformance descriptor for P256EncryptionPublicKey);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v205);
      v63 = v173;
      sub_26BE2BAE8(v61, v173);

      P256EncryptionPublicKey.init(data:ciphersuite:)(v61, v63, &v193, boxed_opaque_existential_1);
    }

    else
    {
      LOBYTE(v193) = 0;
      *(&v193 + 1) = v52;
      v194 = v53;
      *&v195 = v54;
      v206 = type metadata accessor for Curve25519EncryptionPublicKey(0);
      v207 = sub_26BFF36AC(&qword_28045E2D8, type metadata accessor for Curve25519EncryptionPublicKey, &protocol conformance descriptor for Curve25519EncryptionPublicKey);
      v64 = __swift_allocate_boxed_opaque_existential_1(v205);
      v65 = v173;
      sub_26BE2BAE8(v61, v173);

      Curve25519EncryptionPublicKey.init(data:ciphersuite:)(v61, v65, &v193, v64);
    }

    v150 = v61;
    v66 = v152 + *(v220 + 44);
    v67 = v206;
    v68 = v207;
    __swift_project_boxed_opaque_existential_1(v205, v206);
    v69 = v159;
    v70 = (*(v68 + 32))(v159, 0xD000000000000014, 0x800000026C02C280, *(v66 + 1), v67, v68);
    v72 = v71;
    v73 = v70;
    v74 = v158;
    (*(v168 + 32))(v160, v69, v158);
    v220 = v73;
    sub_26BE00608(v73, v72);
    v75 = sub_26BEED780(0, 1, 1, MEMORY[0x277D84F90]);
    v77 = *(v75 + 2);
    v76 = *(v75 + 3);
    if (v77 >= v76 >> 1)
    {
      v75 = sub_26BEED780((v76 > 1), v77 + 1, 1, v75);
    }

    v78 = v172;
    *&v193 = v220;
    *(&v193 + 1) = v72;
    sub_26BF32120(&v193);
    *(v75 + 2) = v77 + 1;
    v79 = &v75[184 * v77];
    v80 = v193;
    v81 = v194;
    v82 = v196;
    *(v79 + 4) = v195;
    *(v79 + 5) = v82;
    *(v79 + 2) = v80;
    *(v79 + 3) = v81;
    v83 = v197;
    v84 = v198;
    v85 = v200;
    *(v79 + 8) = v199;
    *(v79 + 9) = v85;
    *(v79 + 6) = v83;
    *(v79 + 7) = v84;
    v86 = v201;
    v87 = v202;
    v88 = v203;
    *(v79 + 26) = v204;
    *(v79 + 11) = v87;
    *(v79 + 12) = v88;
    *(v79 + 10) = v86;
    v149 = v72;
    if (v78)
    {
      v89 = v160;
    }

    else
    {
      if (qword_28045DF80 != -1)
      {
        swift_once();
      }

      v90 = sub_26C009A5C();
      __swift_project_value_buffer(v90, qword_280478EE8);
      v91 = sub_26C009A3C();
      v92 = sub_26C00AA1C();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v172 = v75;
        v95 = v94;
        v174[0] = v94;
        *v93 = 136315138;
        v179.n128_u64[0] = 0;
        v179.n128_u64[1] = 0xE000000000000000;
        sub_26C00AC1C();

        v179.n128_u64[0] = 0xD000000000000011;
        v179.n128_u64[1] = 0x800000026C02B9D0;
        LODWORD(v191) = v171;
        v96 = sub_26C00AEFC();
        MEMORY[0x26D699090](v96);

        MEMORY[0x26D699090](41, 0xE100000000000000);
        v97 = sub_26BE29740(v179.n128_i64[0], v179.n128_u64[1], v174);

        *(v93 + 4) = v97;
        _os_log_impl(&dword_26BDFE000, v91, v92, "Removing prior appearance %s from group", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v95);
        v98 = v95;
        v75 = v172;
        MEMORY[0x26D69A4E0](v98, -1, -1);
        MEMORY[0x26D69A4E0](v93, -1, -1);
      }

      v89 = v160;
      v100 = *(v75 + 2);
      v99 = *(v75 + 3);
      v74 = v158;
      if (v100 >= v99 >> 1)
      {
        v75 = sub_26BEED780((v99 > 1), v100 + 1, 1, v75);
      }

      v179.n128_u32[0] = v171;
      sub_26BE71934(&v179);
      *(v75 + 2) = v100 + 1;
      v101 = &v75[184 * v100];
      v102 = v179;
      v103 = v180;
      v104 = v182;
      *(v101 + 4) = v181;
      *(v101 + 5) = v104;
      *(v101 + 2) = v102;
      *(v101 + 3) = v103;
      v105 = v183;
      v106 = v184;
      v107 = v186;
      *(v101 + 8) = v185;
      *(v101 + 9) = v107;
      *(v101 + 6) = v105;
      *(v101 + 7) = v106;
      v108 = v187;
      v109 = v188;
      v110 = v189;
      *(v101 + 26) = v190;
      *(v101 + 11) = v109;
      *(v101 + 12) = v110;
      *(v101 + 10) = v108;
    }

    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v172 = v75;
    v111 = sub_26C009A5C();
    __swift_project_value_buffer(v111, qword_280478EE8);
    v112 = sub_26C009A3C();
    v113 = sub_26C00AA1C();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_26BDFE000, v112, v113, "Performing external commit", v114, 2u);
      v115 = v114;
      v74 = v158;
      MEMORY[0x26D69A4E0](v115, -1, -1);
    }

    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
    v117 = *(v116 + 48);
    v118 = v217;
    v119 = v157;
    *(v157 + 8) = v216;
    *(v119 + 144) = v118;
    *(v119 + 160) = v218;
    *(v119 + 176) = v219;
    v120 = v213;
    *(v119 + 64) = v212;
    *(v119 + 80) = v120;
    v121 = v215;
    *(v119 + 96) = v214;
    *(v119 + 112) = v121;
    v122 = v209;
    *v119 = v208;
    *(v119 + 16) = v122;
    v123 = v211;
    *(v119 + 32) = v210;
    *(v119 + 48) = v123;
    v124 = v168;
    (*(v168 + 16))(v119 + v117, v89, v74);
    (*(*(v116 - 8) + 56))(v119, 0, 3, v116);
    v125 = v166;
    v126 = v167;
    sub_26BFF35C8(v119, &v167[*(v166 + 20)], type metadata accessor for MLS.GroupState.CommitTypeOptions);
    *v126 = 1;
    v126[v125[6]] = 1;
    v126[v125[7]] = 0;
    v126[v125[8]] = 0;
    *&v126[v125[9]] = MEMORY[0x277D84F90];
    memset(v174, 0, 40);
    memset(v192, 0, 80);
    sub_26BE2DFC0(&v208, &v179);
    sub_26BE7162C(0, 0x3000000000000000uLL);
    v191 = xmmword_26C00DA50;
    sub_26BE3C038(v174, v192);
    sub_26BE701EC(v192[5], v192[6], v192[7], v192[8], v192[9]);
    memset(&v192[5], 0, 48);
    v127 = v151;
    LOBYTE(v174[0]) = v151;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v175[0] = v127;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v128 = v174[1];

    v129 = sub_26BE1264C(v128);
    v131 = v130;

    v179.n128_u64[0] = v129;
    v179.n128_u64[1] = v131;
    sub_26BE00608(v129, v131);
    v132 = v156;
    sub_26C009C5C();
    v175[0] = v155;
    v176 = v154;
    v177 = v153;
    v178 = v169;
    sub_26BE638EC(v172, v132, v126, v175, &v191, v165);
    sub_26BE132D4(v150, v173);

    sub_26BE00258(v129, v131);
    sub_26BE00258(v220, v149);
    v133 = *(v124 + 8);
    v134 = v158;
    v133(v132, v158);
    sub_26BFF3630(v126, type metadata accessor for MLS.GroupState.CommitOptions);
    sub_26BFF3630(v157, type metadata accessor for MLS.GroupState.CommitTypeOptions);
    v133(v160, v134);
    sub_26BFF3630(v152, type metadata accessor for MLS.GroupState);
    sub_26BF7E1E8(&v191);
    __swift_destroy_boxed_opaque_existential_1(v205);
    v135 = v165;
    sub_26BFF35C8(v165, v161, type metadata accessor for MLS.MLSMessage);
    v136 = v162;
    sub_26BFF35C8(v135 + *(v162 + 24), v163, type metadata accessor for MLS.GroupState);
    v137 = (v135 + *(v136 + 32));
    v138 = v137[9];
    v187 = v137[8];
    v188 = v138;
    v189 = v137[10];
    v139 = v137[5];
    v183 = v137[4];
    v184 = v139;
    v140 = v137[7];
    v185 = v137[6];
    v186 = v140;
    v141 = v137[3];
    v181 = v137[2];
    v182 = v141;
    v142 = v137[1];
    v179 = *v137;
    v180 = v142;
    sub_26BE6FF30(&v179, v174);
    sub_26BFF3630(v135, type metadata accessor for MLS.GroupState.CommitOutput);
    v143 = v188;
    v144 = v164;
    v164[8] = v187;
    v144[9] = v143;
    v144[10] = v189;
    v145 = v184;
    v144[4] = v183;
    v144[5] = v145;
    v146 = v186;
    v144[6] = v185;
    v144[7] = v146;
    v147 = v180;
    *v144 = v179;
    v144[1] = v147;
    result = v182;
    v144[2] = v181;
    v144[3] = result;
  }

  return result;
}

uint64_t MLS.GroupState.groupID.getter()
{
  v1 = *(v0 + 8);
  sub_26BE00608(v1, *(v0 + 16));
  return v1;
}

void MLS.GroupState.groupID.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t MLS.GroupState.tree.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t MLS.GroupState.tree.setter(__int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 4);
  v5 = *(a1 + 3);

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  return result;
}

uint64_t MLS.GroupState.index.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for MLS.GroupState(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t MLS.GroupState.index.setter(int *a1)
{
  v2 = *a1;
  result = type metadata accessor for MLS.GroupState(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t MLS.GroupState.identityPriv.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for MLS.GroupState(0) + 56);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_26BE03890(a1, v1 + v3);
}

uint64_t MLS.GroupState.EpochRef.hash(into:)(uint64_t a1)
{
  MEMORY[0x26D699B60](*v1);

  return sub_26C00911C();
}

uint64_t MLS.GroupState.EpochRef.hashValue.getter()
{
  v1 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B60](v1);
  sub_26C00911C();
  return sub_26C00B0CC();
}

uint64_t sub_26BFEF734()
{
  v1 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B60](v1);
  sub_26C00911C();
  return sub_26C00B0CC();
}

uint64_t sub_26BFEF798(uint64_t a1)
{
  MEMORY[0x26D699B60](*v1);

  return sub_26C00911C();
}

uint64_t sub_26BFEF7EC(uint64_t a1)
{
  v2 = *v1;
  sub_26C00B05C();
  MEMORY[0x26D699B60](v2);
  sub_26C00911C();
  return sub_26C00B0CC();
}

uint64_t sub_26BFEF84C@<X0>(unsigned __int16 *a1@<X2>, _OWORD *a2@<X8>)
{
  if (*a1 - 3 < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();

    return sub_26BF34320(a2);
  }

  return result;
}

uint64_t type metadata accessor for MLS.GroupState(uint64_t a1)
{
  result = qword_280460900;
  if (!qword_280460900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BFEF948(void *a1@<X0>, int *a2@<X1>, unsigned __int16 *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned __int16 *a8@<X8>)
{
  v180 = a4;
  v181 = a5;
  v178 = a1;
  v179 = a2;
  v12 = type metadata accessor for MLS.Cryptography.MACTag(0);
  MEMORY[0x28223BE20](v12 - 8);
  v158 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370);
  MEMORY[0x28223BE20](v14 - 8);
  v163 = &v151 - v15;
  v167 = sub_26C009C8C();
  v165 = *(v167 - 8);
  v16 = MEMORY[0x28223BE20](v167);
  v157 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v159 = &v151 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v161 = &v151 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v171 = (&v151 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v170 = &v151 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v166 = &v151 - v27;
  MEMORY[0x28223BE20](v26);
  v168 = &v151 - v28;
  v162 = type metadata accessor for MLS.KeySchedule(0);
  v29 = MEMORY[0x28223BE20](v162);
  v164 = &v151 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v160 = &v151 - v31;
  v32 = *a3;
  v33 = *(a6 + 112);
  v210 = *(a6 + 96);
  v211 = v33;
  v212 = *(a6 + 128);
  v34 = *(a6 + 48);
  v206 = *(a6 + 32);
  v207 = v34;
  v35 = *(a6 + 80);
  v208 = *(a6 + 64);
  v209 = v35;
  v36 = *(a6 + 16);
  v204 = *a6;
  v205 = v36;
  v37 = type metadata accessor for MLS.GroupState(0);
  v38 = MEMORY[0x277D84F90];
  *(a8 + v37[15]) = MEMORY[0x277D84F90];
  v39 = (a8 + v37[16]);
  v39[9] = 0u;
  v39[10] = 0u;
  v39[7] = 0u;
  v39[8] = 0u;
  v39[5] = 0u;
  v39[6] = 0u;
  v39[3] = 0u;
  v39[4] = 0u;
  v39[1] = 0u;
  v39[2] = 0u;
  v172 = v39;
  *v39 = 0u;
  v40 = v37[17];
  v176 = sub_26C001A78(v38);
  *(a8 + v40) = v176;
  v41 = v37[18];
  v174 = sub_26C00528C(v38);
  *(a8 + v41) = v174;
  v42 = a7;
  *(a8 + v37[19]) = 0;
  v43 = v37[20];
  v44 = type metadata accessor for MLS.GroupInfo(0);
  v45 = *(*(v44 - 8) + 56);
  v175 = v43;
  v45(a8 + v43, 1, 1, v44);
  *a8 = v32;
  v46 = v179;
  *(a8 + 1) = v178;
  *(a8 + 2) = v46;
  *(a8 + 3) = 0;
  v47 = sub_26C004AC0(v38);
  a8[16] = v32;
  *(a8 + 5) = v47;
  *(a8 + 12) = 0;
  *(a8 + 7) = v38;
  v48 = a8 + v37[9];
  *v48 = v32;
  *(v48 + 8) = xmmword_26C00BBD0;
  v178 = v48;
  v179 = v37;
  v169 = xmmword_26C00BBD0;
  *(v48 + 24) = xmmword_26C00BBD0;
  *(a8 + v37[10]) = v42;
  v49 = v37[13];
  *(a8 + v49) = 0;
  v50 = v37[14];
  v51 = v181;
  v173 = v50;
  sub_26BE038A8(v181, a8 + v50);
  v52 = *(a6 + 112);
  v201 = *(a6 + 96);
  v202 = v52;
  v203 = *(a6 + 128);
  v53 = *(a6 + 48);
  v197 = *(a6 + 32);
  v198 = v53;
  v54 = *(a6 + 80);
  v199 = *(a6 + 64);
  v200 = v54;
  v55 = *(a6 + 16);
  v195 = *a6;
  v196 = v55;

  v57 = v213;
  v58 = sub_26BFF3840(v56, 1);
  v213 = v57;
  v177 = v42;
  if (!v57)
  {
    v63 = v58;
    LODWORD(v156) = v32;
    v65 = v170;
    v64 = v171;

    v62 = v179;
    if ((v63 & 1) == 0)
    {
      sub_26BE00854(&v204);
      sub_26BE01654();
      v67 = swift_allocError();
      *v68 = 22;
      *(v68 + 8) = 0u;
      *(v68 + 24) = 0u;
      *(v68 + 40) = 0u;
      *(v68 + 56) = 0u;
      *(v68 + 72) = 0u;
      *(v68 + 88) = 0u;
      *(v68 + 104) = 0;
      *(v68 + 112) = 23;
      v213 = v67;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v181);
      __swift_destroy_boxed_opaque_existential_1(v180);
      goto LABEL_8;
    }

    v201 = v210;
    v202 = v211;
    v203 = v212;
    v197 = v206;
    v198 = v207;
    v199 = v208;
    v200 = v209;
    v195 = v204;
    v196 = v205;
    v66 = v213;
    MLS.TreeKEMPublicKey.addLeaf(_:)(&v195, v185);
    if (v66)
    {
      v213 = v66;
      __swift_destroy_boxed_opaque_existential_1(v181);
      __swift_destroy_boxed_opaque_existential_1(v180);
      sub_26BE00854(&v204);
LABEL_8:
      v59 = 0;
      v60 = 0;
      v61 = 0;
      goto LABEL_9;
    }

    sub_26BE00854(&v204);
    *(a8 + v49) = v185[0];
    LODWORD(v185[0]) = *(a8 + 12);
    MLS.NodeIndex.init(forRoot:)(v185, &v195);
    sub_26BE4BE9C(&v195);
    v213 = 0;
    sub_26BE00258(v75, v76);
    v77 = *(a8 + v49);
    sub_26BE038A8(v180, &v195);
    v78 = a8 + v62[8];
    *v78 = v156;
    *(v78 + 1) = v77;
    v185[0] = v169;
    type metadata accessor for MLS.TreeKEMPrivateKey(0);
    sub_26C009C5C();
    v79 = MEMORY[0x277D84F90];
    *(v78 + 1) = sub_26C004AC0(MEMORY[0x277D84F90]);
    *(v78 + 2) = sub_26C004BCC(v79);
    if (v77 < 0)
    {
      __break(1u);
      goto LABEL_49;
    }

    sub_26BE038A8(&v195, v185);
    sub_26BE4D0C0(v185, (2 * v77));
    __swift_destroy_boxed_opaque_existential_1(&v195);
    v80 = *(a8 + 5);
    v81 = *(a8 + 12);
    v82 = *(a8 + 7);
    LOWORD(v195) = a8[16];
    *(&v195 + 1) = v80;
    LODWORD(v196) = v81;
    *(&v196 + 1) = v82;

    v83 = v213;
    v84 = MLS.TreeKEMPrivateKey.consistent(_:)(&v195);
    v213 = v83;
    if (v83)
    {
      __swift_destroy_boxed_opaque_existential_1(v181);
      __swift_destroy_boxed_opaque_existential_1(v180);

LABEL_24:
      v60 = 0;
      v61 = 0;
      v59 = 1;
      goto LABEL_9;
    }

    v85 = v84;

    if ((v85 & 1) == 0)
    {
      sub_26BE01654();
      v93 = swift_allocError();
      *v94 = 21;
      v94[112] = 0;
      v213 = v93;
      swift_willThrow();
      goto LABEL_23;
    }

    LODWORD(v154) = *a8;
    v86 = *(a8 + 1);
    v155 = *(a8 + 2);
    v87 = *(a8 + 5);
    v88 = *(a8 + 12);
    v89 = *(a8 + 7);
    v191 = a8[16];
    v192 = v87;
    v193 = v88;
    v194 = v89;
    v90 = v213;
    v91 = sub_26BE592D0();
    if (v90)
    {
      v213 = v90;
LABEL_23:
      __swift_destroy_boxed_opaque_existential_1(v181);
      __swift_destroy_boxed_opaque_existential_1(v180);
      goto LABEL_24;
    }

    v95 = v178[2];
    v153 = v178[1];
    v213 = v95;
    LOWORD(v195) = v154;
    v96 = v86;
    *(&v195 + 1) = v86;
    v97 = v155;
    v196 = v155;
    *&v197 = v91;
    *(&v197 + 1) = v92;
    *&v198 = v153;
    *(&v198 + 1) = v95;
    v189 = v169;
    v185[1] = v155;
    v186 = v197;
    v187 = v198;
    *&v199 = v177;
    v190 = 0;
    v188 = v177;
    v185[0] = v195;
    v98 = v91;
    v99 = v92;

    sub_26BE00608(v98, v99);
    sub_26BE00608(v96, v97);
    sub_26BE00608(v153, v213);
    sub_26BFAF494(v185);
    v213 = 0;
    v100 = v189;
    v101 = *(&v189 + 1) >> 62;
    v102 = v180;
    v103 = v181;
    if ((*(&v189 + 1) >> 62) > 1)
    {
      if (v101 != 2)
      {
        goto LABEL_33;
      }

      v104 = *(v189 + 24);
    }

    else
    {
      if (!v101)
      {
        goto LABEL_33;
      }

      v104 = v189 >> 32;
    }

    if (v104 < 0)
    {
      __break(1u);
    }

LABEL_33:
    v155 = sub_26C00909C();
    *&v169 = v105;
    sub_26BE00258(v100, *(&v100 + 1));
    if ((v156 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
      return;
    }

    v106 = v156 != 1;
    LOBYTE(v189) = v156 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v107 = v186;
    v108 = v213;
    v109 = sub_26BE1264C(*(&v185[0] + 1));
    v213 = v108;
    if (v108)
    {
      sub_26BE00204(&v195);

      sub_26BE00258(v155, v169);
      __swift_destroy_boxed_opaque_existential_1(v103);
      __swift_destroy_boxed_opaque_existential_1(v102);
LABEL_40:
      v60 = 0;
      v61 = 0;
      v59 = 1;
      goto LABEL_3;
    }

    v154 = v107;
    *&v185[0] = v109;
    *(&v185[0] + 1) = v110;
    sub_26C009C5C();
    LOBYTE(v189) = v106;
    v111 = v155;
    v112 = v169;
    sub_26BE00608(v155, v169);
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v152 = *(&v185[0] + 1);
    v153 = v186;
    *&v189 = sub_26BE125AC(*(&v185[0] + 1));
    *(&v189 + 1) = v113;
    v114 = v65;
    sub_26C009C5C();
    v115 = v166;
    v116 = v111;
    v117 = v213;
    sub_26BEB1F1C(v185, v111, v112, v114, v166);
    v213 = v117;
    if (v117)
    {
      sub_26BE00204(&v195);
      v118 = v169;
      sub_26BE00258(v111, v169);

      sub_26BE00258(v111, v118);
      __swift_destroy_boxed_opaque_existential_1(v181);
      __swift_destroy_boxed_opaque_existential_1(v180);
      v119 = *(v165 + 8);
      v120 = v114;
      v121 = v167;
      v119(v120, v167);
      v119(v168, v121);

      goto LABEL_40;
    }

    v122 = v165;
    v123 = *(v165 + 8);
    v124 = v167;
    v170 = (v165 + 8);
    v151 = v123;
    v123(v114, v167);
    LOWORD(v189) = v156;
    v125 = *(v122 + 16);
    v126 = v115;
    v156 = v122 + 16;
    v127 = v125;
    v125(v64, v126, v124);
    *&v185[0] = sub_26BE125AC(v152);
    *(&v185[0] + 1) = v128;
    v129 = v163;
    sub_26C009C5C();
    (*(v122 + 56))(v129, 0, 1, v124);
    v130 = v213;
    MLS.KeySchedule.init(ciphersuiteID:joinerSecret:pskSecret:context:)(&v189, v64, v129, v116, v169, v164);
    v213 = v130;
    if (v130)
    {
      sub_26BE00204(&v195);

      sub_26BE00258(v155, v169);
      __swift_destroy_boxed_opaque_existential_1(v181);
      __swift_destroy_boxed_opaque_existential_1(v180);
      v131 = v167;
      v132 = v151;
      v151(v166, v167);
      v132(v168, v131);
      goto LABEL_40;
    }

    v133 = v167;
    v134 = v151;
    v151(v166, v167);
    v134(v168, v133);
    v135 = v160;
    sub_26BFF36F4(v164, v160, type metadata accessor for MLS.KeySchedule);
    v136 = a8 + v179[11];
    sub_26BFF36F4(v135, v136, type metadata accessor for MLS.KeySchedule);
    v137 = *(a8 + 12);
    if (*v136)
    {
      v138 = 2;
    }

    else
    {
      v138 = 1;
    }

    v182 = v138;
    LODWORD(v189) = v137;
    v139 = v161;
    v127(v161, &v136[*(v162 + 32)], v133);
    v140 = v213;
    MLS.GroupKeySource.init(ciphersuiteID:groupSize:encryptionSecret:)(&v182, &v189, v139, v183);
    v213 = v140;
    if (v140)
    {
      sub_26BE00204(&v195);

      sub_26BE00258(v155, v169);
      __swift_destroy_boxed_opaque_existential_1(v181);
      __swift_destroy_boxed_opaque_existential_1(v180);
      v61 = 0;
      v59 = 1;
      v60 = 1;
      goto LABEL_3;
    }

    v141 = a8 + v179[12];
    v142 = v183[5];
    *(v141 + 4) = v183[4];
    *(v141 + 5) = v142;
    *(v141 + 6) = v183[6];
    *(v141 + 14) = v184;
    v143 = v183[1];
    *v141 = v183[0];
    *(v141 + 1) = v143;
    v144 = v183[3];
    *(v141 + 2) = v183[2];
    *(v141 + 3) = v144;
    v145 = v178[1];
    v171 = v178[2];
    v146 = *(v136 + 3);
    v147 = *(v136 + 4);
    LOBYTE(v185[0]) = *v136;
    *(v185 + 8) = *(v136 + 8);
    *(&v185[1] + 1) = v146;
    *&v186 = v147;
    v127(v157, &v136[*(v162 + 48)], v167);
    sub_26BFF36AC(&qword_28045E8B8, MEMORY[0x277CC5330], MEMORY[0x277CC5318]);

    v148 = v159;
    sub_26C009C5C();
    v149 = v213;
    MLS.Cryptography.Ciphersuite.digestMAC(_:_:)(v148, v145, v171);
    v213 = v149;
    if (v149)
    {
      sub_26BE00204(&v195);

      sub_26BE00258(v155, v169);
      __swift_destroy_boxed_opaque_existential_1(v181);
      __swift_destroy_boxed_opaque_existential_1(v180);
      v151(v159, v167);

LABEL_51:
      v59 = 1;
      v60 = 1;
      v61 = 1;
      goto LABEL_3;
    }

LABEL_49:
    v151(v159, v167);

    v150 = v213;
    sub_26BE2E558();
    v213 = v150;
    if (!v150)
    {
      sub_26BE00204(&v195);

      sub_26BE00258(v155, v169);
      __swift_destroy_boxed_opaque_existential_1(v181);
      __swift_destroy_boxed_opaque_existential_1(v180);
      sub_26BFF3630(v158, type metadata accessor for MLS.Cryptography.MACTag);
      return;
    }

    sub_26BE00204(&v195);

    sub_26BE00258(v155, v169);
    __swift_destroy_boxed_opaque_existential_1(v181);
    __swift_destroy_boxed_opaque_existential_1(v180);
    sub_26BFF3630(v158, type metadata accessor for MLS.Cryptography.MACTag);
    goto LABEL_51;
  }

  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v180);
  sub_26BE00854(&v204);
  v59 = 0;
  v60 = 0;
  v61 = 0;
LABEL_3:
  v62 = v179;
LABEL_9:
  sub_26BE00258(*(a8 + 1), *(a8 + 2));

  if (v59)
  {
    sub_26BFF3630(a8 + v62[8], type metadata accessor for MLS.TreeKEMPrivateKey);
  }

  v69 = v178[3];
  v70 = v178[4];
  sub_26BE00258(v178[1], v178[2]);
  sub_26BE00258(v69, v70);

  if (v60)
  {
    sub_26BFF3630(a8 + v62[11], type metadata accessor for MLS.KeySchedule);
  }

  if (v61)
  {
    v71 = a8 + v62[12];
    v72 = *(v71 + 5);
    v199 = *(v71 + 4);
    v200 = v72;
    v201 = *(v71 + 6);
    *&v202 = *(v71 + 14);
    v73 = *(v71 + 1);
    v195 = *v71;
    v196 = v73;
    v74 = *(v71 + 3);
    v197 = *(v71 + 2);
    v198 = v74;
    sub_26BE717DC(&v195);
  }

  __swift_destroy_boxed_opaque_existential_1((a8 + v173));
  sub_26BE2E258(v172, &qword_28045E730, &qword_26C011528);

  sub_26BE2E258(a8 + v175, &qword_28045F090, &qword_26C01A358);
}

uint64_t MLS.GroupState.init(groupID:ciphersuiteID:encryptionPrivateKey:signaturePrivateKey:extensions:capabilities:credential:)@<X0>(void *a1@<X0>, int *a2@<X1>, unsigned __int16 *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v81 = a6;
  v82 = a1;
  v83 = a2;
  v75 = a9;
  v14 = type metadata accessor for MLS.GroupState(0);
  MEMORY[0x28223BE20](v14 - 8);
  v77 = (&v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = *a3;
  v16 = a7[1];
  *&v92 = *a7;
  *(&v92 + 1) = v16;
  v17 = a7[3];
  v93 = a7[2];
  v145 = v17;
  v90 = a7[4];
  v18 = a8[1];
  if ((~v18 & 0x3000000000000000) != 0)
  {
    *&v89 = *a8;
    *(&v89 + 1) = v18;
  }

  else
  {
    v19 = a5;
    v20 = a5[3];
    v21 = a5[4];
    __swift_project_boxed_opaque_existential_1(v19, v20);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v91 = &v74;
    v23 = *(AssociatedTypeWitness - 8);
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v25 = &v74 - v24;
    (*(v21 + 40))(v20, v21);
    a5 = v19;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *&v89 = (*(*(AssociatedConformanceWitness + 8) + 16))(AssociatedTypeWitness);
    *(&v89 + 1) = v27;
    (*(v23 + 8))(v25, AssociatedTypeWitness);
  }

  v28 = a4;
  v29 = a4[3];
  v30 = a4[4];
  v84 = v28;
  v85 = a5;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v31 = *(v30 + 8);
  v32 = swift_getAssociatedTypeWitness();
  v88 = &v74;
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v74 - v34;
  (*(v31 + 32))(v29, v31);
  v36 = swift_getAssociatedConformanceWitness();
  v91 = (*(v36 + 16))(v32, v36);
  v38 = v37;
  (*(v33 + 8))(v35, v32);
  v39 = a5[3];
  v40 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v39);
  v41 = swift_getAssociatedTypeWitness();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v74 - v43;
  (*(v40 + 40))(v39, v40);
  v45 = swift_getAssociatedConformanceWitness();
  v46 = (*(*(v45 + 8) + 16))(v41);
  v48 = v47;
  (*(v42 + 8))(v44, v41);
  *&v138 = v91;
  *(&v138 + 1) = v38;
  v80 = v38;
  v86 = v46;
  *&v139 = v46;
  *(&v139 + 1) = v48;
  v88 = v48;
  v49 = *(&v89 + 1);
  v50 = v89;
  v140 = v89;
  v141 = v92;
  *&v142 = v93;
  *(&v142 + 1) = v145;
  v51 = v90;
  *v143 = v90;
  v87 = xmmword_26C015F70;
  *&v143[8] = xmmword_26C015F70;
  v143[24] = 0;
  *&v143[28] = *&v137[3];
  *&v143[25] = *v137;
  *v144 = MEMORY[0x277D84F90];
  v78 = xmmword_26C00BBD0;
  *&v144[8] = xmmword_26C00BBD0;
  v135[1] = *&v143[16];
  v136[0] = *v144;
  *&v136[1] = 0xC000000000000000;
  v132 = v89;
  v133 = v92;
  v134 = v142;
  v135[0] = *v143;
  v130 = v138;
  v131 = v139;
  v128 = xmmword_26C00DA60;
  v129 = 0;
  sub_26BE04890(v89, *(&v89 + 1));
  sub_26BE00758(&v138, &v119);
  v52 = v79;
  v53 = sub_26BE5B600(&v128);
  if (v52)
  {

    sub_26BE00258(v82, v83);
    sub_26BE0489C(v50, v49);
    v124 = v135[0];
    v125 = v135[1];
    v126 = v136[0];
    v120 = v131;
    v121 = v132;
    v122 = v133;
    v123 = v134;
    v127 = *&v136[1];
    v119 = v130;
    sub_26BE00854(&v119);
    v55 = v49;
    v56 = v84;
    v57 = v85;
    *&v130 = v91;
    *(&v130 + 1) = v80;
    *&v131 = v86;
    *(&v131 + 1) = v88;
    v132 = __PAIR128__(v55, v50);
    v133 = v92;
    *&v134 = v93;
    *(&v134 + 1) = v145;
    *&v135[0] = v51;
    *(v135 + 8) = v87;
    BYTE8(v135[1]) = 0;
    *(&v135[1] + 9) = *v137;
    HIDWORD(v135[1]) = *&v137[3];
    *&v136[0] = MEMORY[0x277D84F90];
    *(v136 + 8) = v78;
    sub_26BE00854(&v130);
    v64 = v57;
  }

  else
  {
    v58 = v53;
    v59 = v54;
    v124 = v135[0];
    v125 = v135[1];
    v126 = v136[0];
    v120 = v131;
    v121 = v132;
    v122 = v133;
    v123 = v134;
    v127 = *&v136[1];
    v119 = v130;
    sub_26BE00854(&v119);
    v60 = v85;
    v61 = v85[3];
    v62 = v85[4];
    __swift_project_boxed_opaque_existential_1(v85, v61);
    v63 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0x65646F4E6661654CLL, 0xEB00000000534254, v58, v59, v61, v62);
    v67 = v66;
    v68 = v63;
    sub_26BE00258(v58, v59);
    sub_26BE00258(0, 0xC000000000000000);
    v110 = v76;
    v56 = v84;
    sub_26BE038A8(v84, v109);
    sub_26BE038A8(v60, v108);
    v69 = v91;
    *&v111 = v91;
    v70 = v80;
    *(&v111 + 1) = v80;
    *&v112 = v86;
    *(&v112 + 1) = v88;
    *&v89 = v50;
    v113 = __PAIR128__(*(&v89 + 1), v50);
    v114 = v92;
    *&v115 = v93;
    *(&v115 + 1) = v145;
    *&v116[0] = v90;
    *(v116 + 8) = v87;
    BYTE8(v116[1]) = 0;
    *(&v116[1] + 9) = *v137;
    HIDWORD(v116[1]) = *&v137[3];
    *&v117 = MEMORY[0x277D84F90];
    v79 = v68;
    *(&v117 + 1) = v68;
    v118 = v67;
    v106[6] = v116[1];
    v106[7] = v117;
    v107 = v67;
    v106[2] = __PAIR128__(*(&v89 + 1), v50);
    v106[3] = v92;
    v106[4] = v115;
    v106[5] = v116[0];
    v106[0] = v111;
    v106[1] = v112;
    sub_26BE00758(&v111, v94);
    v71 = v77;
    sub_26BFEF948(v82, v83, &v110, v109, v108, v106, v81, v77);
    v94[0] = v69;
    v94[1] = v70;
    v72 = v89;
    v94[2] = v86;
    v94[3] = v88;
    v73 = *(&v89 + 1);
    v95 = v89;
    v96 = v92;
    v97 = v93;
    v98 = v145;
    v99 = v90;
    v100 = v87;
    v101 = 0;
    *v102 = *v137;
    *&v102[3] = *&v137[3];
    v103 = MEMORY[0x277D84F90];
    v104 = v79;
    v105 = v67;
    sub_26BE00854(v94);
    sub_26BE0489C(v72, v73);
    sub_26BFF36F4(v71, v75, type metadata accessor for MLS.GroupState);
    v64 = v85;
  }

  __swift_destroy_boxed_opaque_existential_1(v64);
  return __swift_destroy_boxed_opaque_existential_1(v56);
}

void *MLS.GroupState.init(welcome:keyPackageSecrets:keyPackage:signaturePrivateKey:tree:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X3>, __int128 *a5@<X4>, unint64_t a6@<X8>)
{
  v7 = *result;
  if ((v7 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v10 = result[1];
    v11 = result[2];
    v12 = result[3];
    v17 = a5[1];
    v18 = *a5;
    LOBYTE(v24[0]) = v7 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    v25[7] = v25[4];
    sub_26BE038A8(a2, v25);
    sub_26BE038A8(a2 + 40, v24);
    LOWORD(v23[0]) = v7;
    v23[1] = v10;
    v23[2] = v11;
    v23[3] = v12;
    sub_26BE038A8(v25, v22);
    sub_26BE038A8(v24, v21);
    sub_26BE038A8(a4, v20);
    v19[0] = v18;
    v19[1] = v17;
    v14 = MEMORY[0x277D84F90];
    v15 = sub_26C001A78(MEMORY[0x277D84F90]);
    v16 = sub_26C00528C(v14);
    sub_26BFEB860(v23, v22, v21, v20, a3, v19, v15, v16, a6, 0);

    __swift_destroy_boxed_opaque_existential_1(a4);
    sub_26BFF2B78(a2);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  return result;
}

void MLS.GroupState.init(ciphersuiteID:initPriv:leafPriv:sigPriv:keyPackage:welcome:)(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t a9@<X8>, unint64_t a10, __int128 a11)
{
  v95 = a3;
  v96 = a8;
  v92 = a4;
  v94 = a2;
  v87 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v17 = MEMORY[0x28223BE20](v87);
  v82 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = (&v72 - v19);
  v21 = type metadata accessor for MLS.MLSMessage(0);
  v22 = MEMORY[0x28223BE20](v21);
  v83 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v124 = &v72 - v25;
  v26 = *a1;
  if ((v26 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
    return;
  }

  v88 = v24;
  v81 = a9;
  v90 = a6;
  v91 = a7;
  v89 = a10;
  LOBYTE(v99[0]) = v26 != 1;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
  v27 = 0;
  v85 = v105;
  v86 = *(&v105 + 1);
  v84 = v106;
  v28 = *(&a11 + 1) >> 62;
  v29 = *(&v106 + 1);
  v30 = v107;
  if ((*(&a11 + 1) >> 62) > 1)
  {
    if (v28 != 2)
    {
      goto LABEL_8;
    }

    v27 = *(a11 + 16);
  }

  else
  {
    if (!v28)
    {
      goto LABEL_8;
    }

    v27 = a11;
  }

  sub_26BE00608(a11, *(&a11 + 1));
LABEL_8:
  v93 = v30;
  v105 = a11;
  *&v106 = v27;
  v31 = v124;
  sub_26BEE3C08(v124);
  if (v11)
  {
    *&v99[0] = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F100, &qword_26C01A558);
    v32 = sub_26C00A4FC();
    sub_26BE826C4(v32, v33, a11, *(&a11 + 1));

    swift_willThrow();
    sub_26BE00258(v90, v91);
    sub_26BE00258(v96, v89);

    sub_26BE00258(a11, *(&a11 + 1));
    sub_26BE00258(v92, a5);
    sub_26BE00258(v94, v95);
    sub_26BE00258(v105, *(&v105 + 1));
    return;
  }

  v79 = *(&a11 + 1);
  v80 = a11;
  sub_26BE00258(v105, *(&v105 + 1));
  sub_26BFF35C8(v31, v20, type metadata accessor for MLS.MLSMessage.Inner);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_26BFF3630(v20, type metadata accessor for MLS.MLSMessage.Inner);
    sub_26BE01600();
    swift_allocError();
    *v34 = 5;
    swift_willThrow();
    sub_26BE00258(v90, v91);
    sub_26BE00258(v96, v89);

    sub_26BE00258(v80, v79);
    sub_26BE00258(v92, a5);
    sub_26BE00258(v94, v95);
    sub_26BFF3630(v31, type metadata accessor for MLS.MLSMessage);
    return;
  }

  v74 = *v20;
  v35 = v20[1];
  v77 = v20[2];
  v78 = a5;
  v36 = v20[3];
  v75 = v35;
  v76 = v36;
  v37 = v93;
  if (v85)
  {
    LOBYTE(v105) = 1;
    v38 = v86;
    *(&v105 + 1) = v86;
    v39 = v84;
    *&v106 = v84;
    *(&v106 + 1) = v29;
    *&v107 = v93;
    v73 = type metadata accessor for P256DecryptionPrivateKey(0);
    v122 = v73;
    v72 = sub_26BFF36AC(&qword_28045E3A8, type metadata accessor for P256DecryptionPrivateKey, &protocol conformance descriptor for P256DecryptionPrivateKey);
    v123 = v72;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v121);
    v42 = v94;
    v41 = v95;
    sub_26BE00608(v94, v95);

    P256DecryptionPrivateKey.init(data:ciphersuite:)(v42, v41, &v105, boxed_opaque_existential_1);
    LOBYTE(v105) = 1;
    *(&v105 + 1) = v38;
    *&v106 = v39;
    *(&v106 + 1) = v29;
    *&v107 = v37;
    v119 = v73;
    v120 = v72;
    v43 = __swift_allocate_boxed_opaque_existential_1(v118);

    v44 = v92;
    v45 = v78;
    sub_26BE00608(v92, v78);
    P256DecryptionPrivateKey.init(data:ciphersuite:)(v44, v45, &v105, v43);
  }

  else
  {
    LOBYTE(v105) = 0;
    v46 = v86;
    *(&v105 + 1) = v86;
    v39 = v84;
    *&v106 = v84;
    *(&v106 + 1) = v29;
    *&v107 = v93;
    v73 = type metadata accessor for Curve25519DecryptionPrivateKey(0);
    v122 = v73;
    v72 = sub_26BFF36AC(&qword_28045E3B0, type metadata accessor for Curve25519DecryptionPrivateKey, &protocol conformance descriptor for Curve25519DecryptionPrivateKey);
    v123 = v72;
    v47 = __swift_allocate_boxed_opaque_existential_1(v121);
    v49 = v94;
    v48 = v95;
    sub_26BE00608(v94, v95);

    Curve25519DecryptionPrivateKey.init(data:ciphersuite:)(v49, v48, &v105, v47);
    LOBYTE(v105) = 0;
    *(&v105 + 1) = v46;
    *&v106 = v39;
    *(&v106 + 1) = v29;
    *&v107 = v37;
    v119 = v73;
    v120 = v72;
    v50 = __swift_allocate_boxed_opaque_existential_1(v118);

    v51 = v92;
    v52 = v78;
    sub_26BE00608(v92, v78);
    Curve25519DecryptionPrivateKey.init(data:ciphersuite:)(v51, v52, &v105, v50);
  }

  v53 = v96;
  LOBYTE(v105) = v85;
  *(&v105 + 1) = v86;
  *&v106 = v39;
  *(&v106 + 1) = v29;
  *&v107 = v93;
  MLS.Cryptography.Ciphersuite.importSignaturePrivateKey(_:deviceConstrained:)(v90, v91, 0, v117);
  v54 = 0;
  v55 = v89;
  v56 = v89 >> 62;
  if ((v89 >> 62) > 1)
  {
    v57 = v90;
    if (v56 == 2)
    {
      v54 = *(v53 + 16);
      goto LABEL_20;
    }
  }

  else
  {
    v57 = v90;
    if (v56)
    {
      v54 = v53;
LABEL_20:
      sub_26BE00608(v53, v89);
    }
  }

  *&v105 = v53;
  *(&v105 + 1) = v55;
  *&v106 = v54;
  v58 = v83;
  sub_26BEE3C08(v83);
  sub_26BE00258(v105, *(&v105 + 1));
  v59 = v82;
  sub_26BFF35C8(v58, v82, type metadata accessor for MLS.MLSMessage.Inner);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v60 = *(v59 + 144);
    v113 = *(v59 + 128);
    v114 = v60;
    v115 = *(v59 + 160);
    v116 = *(v59 + 176);
    v61 = *(v59 + 80);
    v109 = *(v59 + 64);
    v110 = v61;
    v62 = *(v59 + 112);
    v111 = *(v59 + 96);
    v112 = v62;
    v63 = *(v59 + 16);
    v105 = *v59;
    v106 = v63;
    v64 = *(v59 + 48);
    v107 = *(v59 + 32);
    v108 = v64;
    LOWORD(v104[0]) = v74;
    v65 = v76;
    v104[1] = v75;
    v66 = v77;
    v104[2] = v77;
    v104[3] = v76;
    sub_26BE038A8(v121, v103);
    sub_26BE038A8(v118, v102);
    sub_26BE038A8(v117, v101);
    v99[8] = v113;
    v99[9] = v114;
    v99[10] = v115;
    v100 = v116;
    v99[4] = v109;
    v99[5] = v110;
    v99[6] = v111;
    v99[7] = v112;
    v99[0] = v105;
    v99[1] = v106;
    v99[2] = v107;
    v99[3] = v108;
    memset(v98, 0, sizeof(v98));

    sub_26BE00608(v66, v65);
    sub_26BE2DFC0(&v105, &v97);
    v67 = MEMORY[0x277D84F90];
    v68 = sub_26C001A78(MEMORY[0x277D84F90]);
    v69 = sub_26C00528C(v67);
    sub_26BFEB860(v104, v103, v102, v101, v99, v98, v68, v69, v81, 0);
    sub_26BE00258(v57, v91);
    sub_26BE00258(v53, v55);

    sub_26BE00258(v80, v79);
    sub_26BE2E01C(&v105);

    sub_26BE00258(v77, v65);
    sub_26BE00258(v92, v78);
    sub_26BE00258(v94, v95);
    v70 = v83;
  }

  else
  {
    sub_26BFF3630(v59, type metadata accessor for MLS.MLSMessage.Inner);
    sub_26BE01600();
    swift_allocError();
    *v71 = 5;
    swift_willThrow();
    sub_26BE00258(v57, v91);
    sub_26BE00258(v53, v55);

    sub_26BE00258(v80, v79);

    sub_26BE00258(v77, v76);
    sub_26BE00258(v92, v78);
    sub_26BE00258(v94, v95);
    v70 = v58;
  }

  sub_26BFF3630(v70, type metadata accessor for MLS.MLSMessage);
  __swift_destroy_boxed_opaque_existential_1(v117);
  sub_26BFF3630(v124, type metadata accessor for MLS.MLSMessage);
  __swift_destroy_boxed_opaque_existential_1(v118);
  __swift_destroy_boxed_opaque_existential_1(v121);
}

uint64_t sub_26BFF2114@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v106 = a1;
  v7 = sub_26C009D7C();
  MEMORY[0x28223BE20](v7 - 8);
  v97 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C009C8C();
  v93 = *(v9 - 8);
  v94 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v92 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v96 = &v90 - v12;
  v91 = type metadata accessor for MLS.KeySchedule(0);
  v13 = MEMORY[0x28223BE20](v91);
  v95 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v90 = &v90 - v15;
  v16 = type metadata accessor for MLS.Cryptography.MACTag(0);
  MEMORY[0x28223BE20](v16 - 8);
  v99 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a3;
  v19 = a3[1];
  v20 = a3[3];
  v101 = a3[2];
  *&v102 = v18;
  v100 = v20;
  v21 = type metadata accessor for MLS.GroupState(0);
  v22 = MEMORY[0x277D84F90];
  *(a4 + v21[15]) = MEMORY[0x277D84F90];
  v23 = (a4 + v21[16]);
  v23[9] = 0u;
  v23[10] = 0u;
  v23[7] = 0u;
  v23[8] = 0u;
  v23[5] = 0u;
  v23[6] = 0u;
  v23[3] = 0u;
  v23[4] = 0u;
  v23[1] = 0u;
  v23[2] = 0u;
  *v23 = 0u;
  v24 = v21[17];
  v105 = sub_26C001A78(v22);
  *(a4 + v24) = v105;
  v25 = v21[18];
  v103 = sub_26C00528C(v22);
  *(a4 + v25) = v103;
  *(a4 + v21[19]) = 0;
  v26 = v21[20];
  v27 = type metadata accessor for MLS.GroupInfo(0);
  v28 = *(*(v27 - 8) + 56);
  v104 = v26;
  v28(a4 + v26, 1, 1, v27);
  v29 = *a2;
  *a4 = *a2;
  v30 = *(a2 + 8);
  *(a4 + 8) = v30;
  v31 = *(a2 + 16);
  *(a4 + 16) = v31;
  v107 = a2;
  v32 = *(a2 + 72);
  v33 = (v32 + 32);
  v34 = *(v32 + 16) + 1;
  do
  {
    if (!--v34)
    {
      sub_26BE00608(v30, v31);
      if (v19)
      {
        goto LABEL_9;
      }

LABEL_24:
      sub_26BE01654();
      swift_allocError();
      *v66 = 14;
      *(v66 + 8) = 0u;
      *(v66 + 24) = 0u;
      *(v66 + 40) = 0u;
      *(v66 + 56) = 0u;
      *(v66 + 72) = 0u;
      *(v66 + 88) = 0u;
      *(v66 + 104) = 0;
      *(v66 + 112) = 23;
      swift_willThrow();
LABEL_25:
      __swift_destroy_boxed_opaque_existential_1(v106);
      sub_26BFF3630(v107, type metadata accessor for MLS.GroupInfo);
      sub_26BE00258(*(a4 + 8), *(a4 + 16));
      goto LABEL_26;
    }

    v35 = v33 + 12;
    v36 = *v33;
    v33 += 12;
  }

  while (v36 != 2);
  *v111 = 2;
  *&v111[8] = *(v35 - 1);
  sub_26BE00608(v30, v31);
  v37 = v118;
  sub_26BEDFEB0(v111, v117);
  if (v37)
  {
    sub_26BFC51B4(v102, v19);
    goto LABEL_25;
  }

  v118 = 0;
  if (v19)
  {
LABEL_9:
    v98 = v21;

    v39 = v99;
    v38 = v100;
    v41 = v101;
    v40 = v102;
    goto LABEL_10;
  }

  if (!v117[0])
  {
    goto LABEL_24;
  }

  v110 = v29;
  MLS.TreeKEMPublicKey.init(ciphersuiteID:ratchetTree:)(&v110, v117, v111);
  v98 = v21;
  v118 = 0;
  v40 = *v111;
  v19 = *&v111[8];
  v41 = *&v111[16];
  v38 = *&v111[24];
  v39 = v99;
LABEL_10:
  *(a4 + 32) = v40;
  *(a4 + 40) = v19;
  *(a4 + 48) = v41;
  *(a4 + 56) = v38;
  v42 = v107;
  v43 = *(v107 + 48);
  v44 = *(v107 + 56);
  sub_26BFF35C8(v107 + *(v27 + 24), v39, type metadata accessor for MLS.Cryptography.MACTag);
  *v111 = v29;
  *&v111[8] = v43;
  *&v111[16] = v44;
  v102 = xmmword_26C00BBD0;
  *&v111[24] = xmmword_26C00BBD0;
  sub_26BE00608(v43, v44);
  v45 = v118;
  sub_26BE2E558();
  v46 = v45;
  if (v45)
  {
    __swift_destroy_boxed_opaque_existential_1(v106);
    sub_26BFF3630(v39, type metadata accessor for MLS.Cryptography.MACTag);
    v47 = *&v111[24];
    v48 = *&v111[32];
    sub_26BE00258(*&v111[8], *&v111[16]);
    sub_26BE00258(v47, v48);
    sub_26BFF3630(v42, type metadata accessor for MLS.GroupInfo);
    v49 = 0;
    v50 = 0;
    v118 = v45;
    v58 = v98;
    goto LABEL_13;
  }

  sub_26BFF3630(v39, type metadata accessor for MLS.Cryptography.MACTag);
  v51 = *&v111[8];
  v52 = *&v111[24];
  v53 = v98;
  v54 = a4 + v98[9];
  *v54 = *v111;
  *(v54 + 8) = v51;
  *(v54 + 24) = v52;
  v55 = *(v42 + 64);
  v98 = v53;
  *(a4 + v53[10]) = v55;
  *v111 = v29;

  sub_26C009D4C();
  v56 = v96;
  sub_26C009C6C();
  v57 = v95;
  MLS.KeySchedule.init(ciphersuiteID:initSecret:)(v111, v56, v95);
  v101 = 0;
  v69 = v90;
  sub_26BFF36F4(v57, v90, type metadata accessor for MLS.KeySchedule);
  v58 = v98;
  v70 = (a4 + v98[11]);
  sub_26BFF36F4(v69, v70, type metadata accessor for MLS.KeySchedule);
  v71 = *(a4 + 48);
  if (*v70)
  {
    v72 = 2;
  }

  else
  {
    v72 = 1;
  }

  v110 = v72;
  LODWORD(v117[0]) = v71;
  v73 = v92;
  (*(v93 + 16))(v92, &v70[*(v91 + 32)], v94);
  MLS.GroupKeySource.init(ciphersuiteID:groupSize:encryptionSecret:)(&v110, v117, v73, v108);
  v118 = 0;
  v74 = a4 + v58[12];
  v75 = v108[5];
  *(v74 + 64) = v108[4];
  *(v74 + 80) = v75;
  *(v74 + 96) = v108[6];
  *(v74 + 112) = v109;
  v76 = v108[1];
  *v74 = v108[0];
  *(v74 + 16) = v76;
  v77 = v108[3];
  *(v74 + 32) = v108[2];
  *(v74 + 48) = v77;
  v78 = v58[13];
  *(a4 + v78) = 0;
  v79 = v106;
  sub_26BE038A8(v106, a4 + v58[14]);
  v80 = *(a4 + v78);
  v81 = a4 + v58[8];
  *v81 = v29;
  *(v81 + 4) = v80;
  *v111 = v102;
  type metadata accessor for MLS.TreeKEMPrivateKey(0);
  sub_26C009C5C();
  v82 = MEMORY[0x277D84F90];
  *(v81 + 8) = sub_26C004AC0(MEMORY[0x277D84F90]);
  *(v81 + 16) = sub_26C004BCC(v82);
  v83 = *(a4 + 40);
  v84 = *(a4 + 48);
  v85 = *(a4 + 56);
  *v111 = *(a4 + 32);
  *&v111[8] = v83;
  *&v111[16] = v84;
  *&v111[24] = v85;
  MEMORY[0x28223BE20](v83);
  *(&v90 - 2) = a4;

  v86 = v118;
  MLS.TreeKEMPublicKey.eachLeaf(_:)(sub_26BFF3690);
  if (v86)
  {
    v118 = v86;
    __swift_destroy_boxed_opaque_existential_1(v79);

    v46 = v101;
    v87 = v107;
LABEL_33:
    sub_26BFF3630(v87, type metadata accessor for MLS.GroupInfo);
    v49 = 1;
    v50 = 1;
LABEL_13:
    sub_26BE00258(*(a4 + 8), *(a4 + 16));

    if (v49)
    {
      sub_26BFF3630(a4 + v58[8], type metadata accessor for MLS.TreeKEMPrivateKey);
    }

    if (v46)
    {
      if (v50)
      {
        goto LABEL_17;
      }

LABEL_20:
      if (v49)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v59 = (a4 + v58[9]);
      v60 = v59[3];
      v61 = v59[4];
      sub_26BE00258(v59[1], v59[2]);
      sub_26BE00258(v60, v61);

      if ((v50 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_17:
      sub_26BFF3630(a4 + v58[11], type metadata accessor for MLS.KeySchedule);
      if (v49)
      {
LABEL_21:
        v62 = a4 + v58[12];
        v63 = *(v62 + 80);
        v113 = *(v62 + 64);
        v114 = v63;
        v115 = *(v62 + 96);
        v116 = *(v62 + 112);
        v64 = *(v62 + 16);
        *v111 = *v62;
        *&v111[16] = v64;
        v65 = *(v62 + 48);
        *&v111[32] = *(v62 + 32);
        v112 = v65;
        sub_26BE717DC(v111);
        __swift_destroy_boxed_opaque_existential_1((a4 + v58[14]));
      }
    }

LABEL_26:
    v67 = v104;
    sub_26BE2E258(v23, &qword_28045E730, &qword_26C011528);

    return sub_26BE2E258(a4 + v67, &qword_28045F090, &qword_26C01A358);
  }

  sub_26BEC6BA0();
  MLS.GroupState.validateLeafNodeCapabilities()();
  v89 = v107;
  v46 = v101;
  if (v88)
  {
    v118 = v88;
    __swift_destroy_boxed_opaque_existential_1(v106);
    v87 = v89;
    goto LABEL_33;
  }

  __swift_destroy_boxed_opaque_existential_1(v106);
  return sub_26BFF3630(v89, type metadata accessor for MLS.GroupInfo);
}

void sub_26BFF2B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_26BFF2BD0()
{
  result = qword_2804608F8;
  if (!qword_2804608F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804608F8);
  }

  return result;
}

uint64_t sub_26BFF2C38(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for MLS.TreeKEMPrivateKey(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for MLS.KeySchedule(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F090, &qword_26C01A358);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[20];

  return v15(v16, a2, v14);
}

uint64_t sub_26BFF2DC4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for MLS.TreeKEMPrivateKey(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for MLS.KeySchedule(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F090, &qword_26C01A358);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[20];

  return v15(v16, a2, a2, v14);
}

void sub_26BFF2F3C(uint64_t a1)
{
  type metadata accessor for MLS.TreeKEMPrivateKey(319);
  if (v1 <= 0x3F)
  {
    sub_26BFF3220(319, &qword_28045E208, &type metadata for MLS.Extension.Extension, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MLS.KeySchedule(319);
      if (v3 <= 0x3F)
      {
        sub_26BFF31BC();
        if (v4 <= 0x3F)
        {
          sub_26BFF3220(319, &qword_280460918, &_s10GroupStateV14CachedProposalVN, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_26BFF3220(319, &qword_280460920, &_s10GroupStateV12CachedUpdateVN, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_26BFF3270(319, &qword_280460928, sub_26BEC903C, MEMORY[0x277CC9318]);
              if (v7 <= 0x3F)
              {
                sub_26BFF3270(319, &qword_280460930, sub_26BFF32D8, &type metadata for MLS.GroupState.EpochRef);
                if (v8 <= 0x3F)
                {
                  sub_26BFF332C(319, &qword_280460940, type metadata accessor for MLS.Client.Client);
                  if (v9 <= 0x3F)
                  {
                    sub_26BFF332C(319, &qword_280460948, type metadata accessor for MLS.GroupInfo);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_26BFF31BC()
{
  result = qword_280460910;
  if (!qword_280460910)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280460910);
  }

  return result;
}

void sub_26BFF3220(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26BFF3270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_26C00A39C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_26BFF32D8()
{
  result = qword_280460938;
  if (!qword_280460938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460938);
  }

  return result;
}

void sub_26BFF332C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26C00AAAC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26BFF3390(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_26BFF33D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy205_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 189) = *(a2 + 189);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_26BFF3498(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x36 && *(a1 + 205))
  {
    return (*a1 + 54);
  }

  v3 = (*(a1 + 151) & 0x30 | ((*(a1 + 199) & 0x30 | ((*(a1 + 168) >> 58) & 0xC)) >> 2)) ^ 0x3F;
  if (v3 >= 0x35)
  {
    v3 = -1;
  }

  return v3 + 1;
}