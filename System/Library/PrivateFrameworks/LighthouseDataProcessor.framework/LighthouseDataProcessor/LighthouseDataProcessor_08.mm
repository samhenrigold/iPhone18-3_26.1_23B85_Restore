uint64_t sub_20E1484A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v21 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    goto LABEL_17;
  }

  if (!v11 || a1 == a2)
  {
    v19 = 1;
    return v19 & 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    sub_20E195BBC(v13, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E195BBC(v14, v7, type metadata accessor for ToolKitProtoTypedValue);
    v16 = *v10;
    v17 = *v7;
    if ((~*v10 & 0xF000000000000007) != 0)
    {
      break;
    }

    sub_20E047CF8(*v10);
    sub_20E047CF8(v17);
    if ((~v17 & 0xF000000000000007) != 0)
    {
      goto LABEL_15;
    }

    sub_20E047CA8(v16);
LABEL_10:
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v19 = sub_20E322850();
    sub_20E195C24(v7, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E195C24(v10, type metadata accessor for ToolKitProtoTypedValue);
    if (v19)
    {
      v14 += v15;
      v13 += v15;
      if (--v11)
      {
        continue;
      }
    }

    return v19 & 1;
  }

  v22 = *v10;
  if ((~v17 & 0xF000000000000007) != 0)
  {
    v21 = v17;
    sub_20E047CF8(v16);
    sub_20E047CF8(v17);
    sub_20E047CF8(v16);
    v18 = _s23LighthouseDataProcessor26ToolKitProtoTypedValueKindO2eeoiySbAC_ACtFZ_0(&v22, &v21);

    sub_20E047CA8(v16);
    if ((v18 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  sub_20E047CF8(v16);
  sub_20E047CF8(v17);
  sub_20E047CF8(v16);

LABEL_15:
  sub_20E047CA8(v16);
  sub_20E047CA8(v17);
LABEL_16:
  sub_20E195C24(v7, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v10, type metadata accessor for ToolKitProtoTypedValue);
LABEL_17:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_20E1487B4(uint64_t a1, uint64_t a2)
{
  v94 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v4 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F58, &qword_20E3263B8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v86 = &v81 - v11;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868160, &qword_20E33B208);
  v12 = MEMORY[0x28223BE20](v93);
  v88 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v87 = &v81 - v14;
  v97 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v15 = *(v97 - 8);
  v16 = MEMORY[0x28223BE20](v97);
  v92 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v95 = &v81 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v99 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v100 = &v81 - v22;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868050, &qword_20E33B0F8);
  v23 = MEMORY[0x28223BE20](v102);
  v98 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v101 = &v81 - v25;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v26 = MEMORY[0x28223BE20](updated);
  v28 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v31 = &v81 - v30;
  v32 = *(a1 + 16);
  if (v32 != *(a2 + 16))
  {
LABEL_44:
    v77 = 0;
    return v77 & 1;
  }

  if (!v32 || a1 == a2)
  {
    v77 = 1;
    return v77 & 1;
  }

  v33 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v34 = a1 + v33;
  v96 = (v15 + 48);
  v35 = a2 + v33;
  v85 = (v4 + 48);
  v36 = *(v29 + 72);
  v83 = v6;
  v84 = v36;
  v38 = v97;
  v37 = v98;
  v82 = v10;
  while (1)
  {
    v91 = v34;
    result = sub_20E195BBC(v34, v31, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
    if (!v32)
    {
      break;
    }

    v89 = v32;
    v90 = v35;
    sub_20E195BBC(v35, v28, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
    v40 = *(updated + 24);
    v41 = *(v102 + 48);
    v42 = v101;
    sub_20E0486F4(&v31[v40], v101, &qword_27C868048, &qword_20E33B0F0);
    sub_20E0486F4(&v28[v40], v42 + v41, &qword_27C868048, &qword_20E33B0F0);
    v43 = *v96;
    if ((*v96)(v42, 1, v38) == 1)
    {
      if (v43(v42 + v41, 1, v38) != 1)
      {
        goto LABEL_33;
      }

      sub_20E04875C(v42, &qword_27C868048, &qword_20E33B0F0);
    }

    else
    {
      sub_20E0486F4(v42, v100, &qword_27C868048, &qword_20E33B0F0);
      if (v43(v42 + v41, 1, v38) == 1)
      {
        sub_20E195C24(v100, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_33:
        v78 = &qword_27C868050;
        v79 = &qword_20E33B0F8;
        v80 = v42;
LABEL_42:
        sub_20E04875C(v80, v78, v79);
LABEL_43:
        sub_20E195C24(v28, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
        sub_20E195C24(v31, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
        goto LABEL_44;
      }

      v44 = v95;
      sub_20E195B54(v42 + v41, v95, type metadata accessor for TranscriptProtoASTFlatValue);
      v45 = *(v93 + 48);
      v46 = v87;
      sub_20E0486F4(v100, v87, &qword_27C865F58, &qword_20E3263B8);
      sub_20E0486F4(v44, v46 + v45, &qword_27C865F58, &qword_20E3263B8);
      v47 = *v85;
      v48 = v94;
      if ((*v85)(v46, 1, v94) == 1)
      {
        if (v47(v46 + v45, 1, v48) != 1)
        {
          goto LABEL_37;
        }

        sub_20E04875C(v46, &qword_27C865F58, &qword_20E3263B8);
      }

      else
      {
        v49 = v86;
        sub_20E0486F4(v46, v86, &qword_27C865F58, &qword_20E3263B8);
        if (v47(v46 + v45, 1, v48) == 1)
        {
          sub_20E195C24(v49, type metadata accessor for TranscriptProtoAstflatValueEnum);
LABEL_37:
          sub_20E04875C(v46, &qword_27C868160, &qword_20E33B208);
LABEL_38:
          sub_20E195C24(v95, type metadata accessor for TranscriptProtoASTFlatValue);
          sub_20E195C24(v100, type metadata accessor for TranscriptProtoASTFlatValue);
          v78 = &qword_27C868048;
          v79 = &qword_20E33B0F0;
          v80 = v101;
          goto LABEL_42;
        }

        v50 = v83;
        sub_20E195B54(v46 + v45, v83, type metadata accessor for TranscriptProtoAstflatValueEnum);
        v51 = static TranscriptProtoAstflatValueEnum.== infix(_:_:)(v49, v50);
        sub_20E195C24(v50, type metadata accessor for TranscriptProtoAstflatValueEnum);
        sub_20E195C24(v49, type metadata accessor for TranscriptProtoAstflatValueEnum);
        sub_20E04875C(v46, &qword_27C865F58, &qword_20E3263B8);
        if ((v51 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      v38 = v97;
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v52 = v100;
      v53 = v95;
      v54 = sub_20E322850();
      sub_20E195C24(v53, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E195C24(v52, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E04875C(v101, &qword_27C868048, &qword_20E33B0F0);
      v37 = v98;
      if ((v54 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    if ((sub_20E14C50C(*v31, *v28) & 1) == 0)
    {
      goto LABEL_43;
    }

    v55 = *(updated + 28);
    v56 = *(v102 + 48);
    sub_20E0486F4(&v31[v55], v37, &qword_27C868048, &qword_20E33B0F0);
    sub_20E0486F4(&v28[v55], v37 + v56, &qword_27C868048, &qword_20E33B0F0);
    if (v43(v37, 1, v38) == 1)
    {
      if (v43(v37 + v56, 1, v38) != 1)
      {
        goto LABEL_35;
      }

      sub_20E04875C(v37, &qword_27C868048, &qword_20E33B0F0);
    }

    else
    {
      sub_20E0486F4(v37, v99, &qword_27C868048, &qword_20E33B0F0);
      v57 = v43(v37 + v56, 1, v38);
      v58 = v94;
      if (v57 == 1)
      {
        sub_20E195C24(v99, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_35:
        v78 = &qword_27C868050;
        v79 = &qword_20E33B0F8;
        v80 = v37;
        goto LABEL_42;
      }

      v59 = v92;
      sub_20E195B54(v37 + v56, v92, type metadata accessor for TranscriptProtoASTFlatValue);
      v60 = *(v93 + 48);
      v61 = v88;
      sub_20E0486F4(v99, v88, &qword_27C865F58, &qword_20E3263B8);
      sub_20E0486F4(v59, v61 + v60, &qword_27C865F58, &qword_20E3263B8);
      v62 = *v85;
      if ((*v85)(v61, 1, v58) == 1)
      {
        if (v62(v61 + v60, 1, v58) != 1)
        {
          goto LABEL_40;
        }

        sub_20E04875C(v61, &qword_27C865F58, &qword_20E3263B8);
      }

      else
      {
        v63 = v82;
        sub_20E0486F4(v61, v82, &qword_27C865F58, &qword_20E3263B8);
        if (v62(v61 + v60, 1, v58) == 1)
        {
          sub_20E195C24(v63, type metadata accessor for TranscriptProtoAstflatValueEnum);
LABEL_40:
          sub_20E04875C(v61, &qword_27C868160, &qword_20E33B208);
LABEL_41:
          sub_20E195C24(v92, type metadata accessor for TranscriptProtoASTFlatValue);
          sub_20E195C24(v99, type metadata accessor for TranscriptProtoASTFlatValue);
          v78 = &qword_27C868048;
          v79 = &qword_20E33B0F0;
          v80 = v98;
          goto LABEL_42;
        }

        v64 = v61 + v60;
        v65 = v83;
        sub_20E195B54(v64, v83, type metadata accessor for TranscriptProtoAstflatValueEnum);
        v66 = static TranscriptProtoAstflatValueEnum.== infix(_:_:)(v63, v65);
        v67 = v65;
        v68 = v88;
        sub_20E195C24(v67, type metadata accessor for TranscriptProtoAstflatValueEnum);
        sub_20E195C24(v63, type metadata accessor for TranscriptProtoAstflatValueEnum);
        sub_20E04875C(v68, &qword_27C865F58, &qword_20E3263B8);
        if ((v66 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      v69 = v31;
      v70 = v28;
      v71 = v99;
      v72 = v97;
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v73 = v92;
      v74 = sub_20E322850();
      v75 = v73;
      v38 = v72;
      v76 = v71;
      v28 = v70;
      v31 = v69;
      sub_20E195C24(v75, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E195C24(v76, type metadata accessor for TranscriptProtoASTFlatValue);
      v37 = v98;
      sub_20E04875C(v98, &qword_27C868048, &qword_20E33B0F0);
      if ((v74 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    if (v31[8] != v28[8])
    {
      goto LABEL_43;
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v77 = sub_20E322850();
    sub_20E195C24(v28, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
    sub_20E195C24(v31, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
    if (v77)
    {
      v32 = v89 - 1;
      v35 = v90 + v84;
      v34 = v91 + v84;
      if (v89 != 1)
      {
        continue;
      }
    }

    return v77 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E1494E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_20E322D60() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_20E149570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C58, &unk_20E323F40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F70, &qword_20E33B040);
  MEMORY[0x28223BE20](v55);
  v63 = &v50 - v11;
  v58 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v12 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v60 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C50, &qword_20E323F38);
  MEMORY[0x28223BE20](v14 - 8);
  v61 = &v50 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F78, &qword_20E33B048);
  MEMORY[0x28223BE20](v62);
  v17 = &v50 - v16;
  Output = type metadata accessor for ContextProtoToolQueryOutput(0);
  v18 = MEMORY[0x28223BE20](Output);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v65 = &v50 - v22;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_26:
    v49 = 0;
    return v49 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v49 = 1;
    return v49 & 1;
  }

  v50 = v7;
  v51 = v10;
  v53 = v4;
  v54 = v20;
  v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v27 = (v12 + 48);
  v52 = (v5 + 48);
  v56 = *(v21 + 72);
  v57 = v27;
  v28 = v58;
  while (1)
  {
    v29 = v65;
    result = sub_20E195BBC(v25, v65, type metadata accessor for ContextProtoToolQueryOutput);
    if (!v23)
    {
      break;
    }

    v64 = v23;
    sub_20E195BBC(v26, v20, type metadata accessor for ContextProtoToolQueryOutput);
    v31 = *(v62 + 48);
    v32 = v17;
    sub_20E0486F4(v29, v17, &qword_27C863C50, &qword_20E323F38);
    sub_20E0486F4(v20, &v17[v31], &qword_27C863C50, &qword_20E323F38);
    v33 = *v27;
    if ((*v27)(v17, 1, v28) == 1)
    {
      if (v33(&v17[v31], 1, v28) != 1)
      {
        goto LABEL_21;
      }

      sub_20E04875C(v17, &qword_27C863C50, &qword_20E323F38);
    }

    else
    {
      v34 = v61;
      sub_20E0486F4(v17, v61, &qword_27C863C50, &qword_20E323F38);
      if (v33(&v17[v31], 1, v28) == 1)
      {
        sub_20E195C24(v34, type metadata accessor for ContextProtoRetrievedTool.Definition);
        v20 = v54;
LABEL_21:
        sub_20E04875C(v17, &qword_27C867F78, &qword_20E33B048);
        goto LABEL_25;
      }

      v35 = v60;
      sub_20E195B54(&v17[v31], v60, type metadata accessor for ContextProtoRetrievedTool.Definition);
      v36 = *(v55 + 48);
      v37 = v63;
      sub_20E0486F4(v34, v63, &qword_27C863C58, &unk_20E323F40);
      sub_20E0486F4(v35, v37 + v36, &qword_27C863C58, &unk_20E323F40);
      v38 = *v52;
      v39 = v37;
      v40 = v53;
      if ((*v52)(v39, 1, v53) == 1)
      {
        if (v38(v63 + v36, 1, v40) != 1)
        {
          goto LABEL_23;
        }

        sub_20E04875C(v63, &qword_27C863C58, &unk_20E323F40);
      }

      else
      {
        v41 = v63;
        v42 = v51;
        sub_20E0486F4(v63, v51, &qword_27C863C58, &unk_20E323F40);
        if (v38(v41 + v36, 1, v40) == 1)
        {
          sub_20E195C24(v42, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
          v17 = v32;
LABEL_23:
          sub_20E04875C(v63, &qword_27C867F70, &qword_20E33B040);
LABEL_24:
          sub_20E195C24(v60, type metadata accessor for ContextProtoRetrievedTool.Definition);
          sub_20E195C24(v61, type metadata accessor for ContextProtoRetrievedTool.Definition);
          sub_20E04875C(v17, &qword_27C863C50, &qword_20E323F38);
          v20 = v54;
LABEL_25:
          sub_20E195C24(v20, type metadata accessor for ContextProtoToolQueryOutput);
          sub_20E195C24(v65, type metadata accessor for ContextProtoToolQueryOutput);
          goto LABEL_26;
        }

        v43 = v50;
        sub_20E195B54(v41 + v36, v50, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
        v44 = _s23LighthouseDataProcessor25ContextProtoRetrievedToolV0dE14DefinitionEnumO2eeoiySbAE_AEtFZ_0(v42, v43);
        sub_20E195C24(v43, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
        sub_20E195C24(v42, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
        sub_20E04875C(v41, &qword_27C863C58, &unk_20E323F40);
        v17 = v32;
        if ((v44 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v28 = v58;
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v45 = v60;
      v46 = v61;
      v47 = sub_20E322850();
      sub_20E195C24(v45, type metadata accessor for ContextProtoRetrievedTool.Definition);
      sub_20E195C24(v46, type metadata accessor for ContextProtoRetrievedTool.Definition);
      sub_20E04875C(v17, &qword_27C863C50, &qword_20E323F38);
      v20 = v54;
      if ((v47 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v48 = v65;
    v49 = sub_20E322850();
    sub_20E195C24(v20, type metadata accessor for ContextProtoToolQueryOutput);
    sub_20E195C24(v48, type metadata accessor for ContextProtoToolQueryOutput);
    if (v49)
    {
      v23 = v64 - 1;
      v27 = v57;
      v26 += v56;
      v25 += v56;
      if (v64 != 1)
      {
        continue;
      }
    }

    return v49 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E149E10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v69 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = (&v63 - v8);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  MEMORY[0x28223BE20](v70);
  v75 = &v63 - v9;
  v77 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v71 = (&v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v63 - v13);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  MEMORY[0x28223BE20](v73);
  v78 = &v63 - v15;
  v79 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v16 = MEMORY[0x28223BE20](v79);
  v18 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v21 = (&v63 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_48:
    v58 = 0;
    return v58 & 1;
  }

  if (v22 && a1 != a2)
  {
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v67 = v4;
    v68 = v14;
    v25 = a2 + v23;
    v65 = v18;
    v66 = (v10 + 48);
    v63 = *(v19 + 72);
    v64 = (v5 + 48);
    while (1)
    {
      v72 = v24;
      sub_20E195BBC(v24, v21, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      sub_20E195BBC(v25, v18, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      v26 = *v21 == *v18 && v21[1] == v18[1];
      if (!v26 && (sub_20E322D60() & 1) == 0)
      {
        break;
      }

      v27 = v18;
      v74 = v25;
      v28 = v78;
      v29 = *(v79 + 20);
      v30 = *(v73 + 48);
      sub_20E0486F4(v21 + v29, v78, &qword_27C863C48, &qword_20E323F30);
      sub_20E0486F4(v27 + v29, v28 + v30, &qword_27C863C48, &qword_20E323F30);
      v31 = *v66;
      v32 = v77;
      if ((*v66)(v28, 1, v77) == 1)
      {
        v26 = v31(v28 + v30, 1, v32) == 1;
        v33 = v28;
        if (!v26)
        {
          goto LABEL_36;
        }

        sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
        v35 = v74;
        v34 = v75;
        v36 = v64;
        v18 = v65;
      }

      else
      {
        v37 = v68;
        sub_20E0486F4(v28, v68, &qword_27C863C48, &qword_20E323F30);
        if (v31(v28 + v30, 1, v32) == 1)
        {
          sub_20E195C24(v37, type metadata accessor for ToolKitProtoTypeInstance);
          v33 = v28;
LABEL_36:
          sub_20E04875C(v33, &qword_27C867E98, &qword_20E33AF70);
          v18 = v65;
          break;
        }

        v38 = v71;
        sub_20E195B54(v28 + v30, v71, type metadata accessor for ToolKitProtoTypeInstance);
        v39 = *v37;
        v40 = *v38;
        if ((~*v37 & 0xF000000000000007) != 0)
        {
          v81[0] = *v37;
          v35 = v74;
          if ((~v40 & 0xF000000000000007) == 0)
          {
            sub_20E047CF8(v39);
            sub_20E047CF8(v40);
            sub_20E047CF8(v39);

            v18 = v65;
LABEL_40:
            sub_20E047CA8(v39);
            sub_20E047CA8(v40);
LABEL_41:
            sub_20E195C24(v71, type metadata accessor for ToolKitProtoTypeInstance);
            sub_20E195C24(v68, type metadata accessor for ToolKitProtoTypeInstance);
            v59 = &qword_27C863C48;
            v60 = &qword_20E323F30;
            v61 = v78;
            goto LABEL_46;
          }

          v80 = v40;
          sub_20E047CF8(v39);
          sub_20E047CF8(v40);
          sub_20E047CF8(v39);
          v41 = static ToolKitProtoTypeInstanceKind.== infix(_:_:)(v81, &v80);

          sub_20E047CA8(v39);
          v18 = v65;
          if ((v41 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else
        {
          sub_20E047CF8(*v37);
          sub_20E047CF8(v40);
          v35 = v74;
          v18 = v65;
          if ((~v40 & 0xF000000000000007) != 0)
          {
            goto LABEL_40;
          }

          sub_20E047CA8(v39);
        }

        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v42 = v71;
        v43 = sub_20E322850();
        sub_20E195C24(v42, type metadata accessor for ToolKitProtoTypeInstance);
        sub_20E195C24(v68, type metadata accessor for ToolKitProtoTypeInstance);
        sub_20E04875C(v78, &qword_27C863C48, &qword_20E323F30);
        v36 = v64;
        v34 = v75;
        if ((v43 & 1) == 0)
        {
          break;
        }
      }

      v74 = v22;
      v44 = *(v79 + 24);
      v45 = *(v70 + 48);
      sub_20E0486F4(v21 + v44, v34, &qword_27C863B18, &qword_20E323EB0);
      sub_20E0486F4(v18 + v44, v34 + v45, &qword_27C863B18, &qword_20E323EB0);
      v46 = *v36;
      v47 = v67;
      if ((*v36)(v34, 1, v67) == 1)
      {
        if (v46(v34 + v45, 1, v47) != 1)
        {
          goto LABEL_38;
        }

        sub_20E04875C(v34, &qword_27C863B18, &qword_20E323EB0);
        v48 = v74;
      }

      else
      {
        sub_20E0486F4(v34, v76, &qword_27C863B18, &qword_20E323EB0);
        if (v46(v34 + v45, 1, v47) == 1)
        {
          sub_20E195C24(v76, type metadata accessor for ToolKitProtoTypedValue);
LABEL_38:
          v59 = &qword_27C867ED8;
          v60 = &qword_20E33AFA8;
          goto LABEL_45;
        }

        v49 = v69;
        sub_20E195B54(v34 + v45, v69, type metadata accessor for ToolKitProtoTypedValue);
        v50 = *v76;
        v51 = *v49;
        if ((~*v76 & 0xF000000000000007) != 0)
        {
          v81[0] = *v76;
          if ((~v51 & 0xF000000000000007) == 0)
          {
            sub_20E047CF8(v50);
            sub_20E047CF8(v51);
            sub_20E047CF8(v50);

LABEL_43:
            sub_20E047CA8(v50);
            sub_20E047CA8(v51);
LABEL_44:
            sub_20E195C24(v69, type metadata accessor for ToolKitProtoTypedValue);
            sub_20E195C24(v76, type metadata accessor for ToolKitProtoTypedValue);
            v59 = &qword_27C863B18;
            v60 = &qword_20E323EB0;
LABEL_45:
            v61 = v34;
LABEL_46:
            sub_20E04875C(v61, v59, v60);
            break;
          }

          v80 = v51;
          sub_20E047CF8(v50);
          sub_20E047CF8(v51);
          sub_20E047CF8(v50);
          v52 = static ToolKitProtoTypedValueKind.== infix(_:_:)(v81, &v80);

          sub_20E047CA8(v50);
          if ((v52 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          sub_20E047CF8(*v76);
          sub_20E047CF8(v51);
          if ((~v51 & 0xF000000000000007) != 0)
          {
            goto LABEL_43;
          }

          sub_20E047CA8(v50);
        }

        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v53 = v76;
        v54 = v69;
        v55 = sub_20E322850();
        v56 = v54;
        v57 = v75;
        sub_20E195C24(v56, type metadata accessor for ToolKitProtoTypedValue);
        sub_20E195C24(v53, type metadata accessor for ToolKitProtoTypedValue);
        sub_20E04875C(v57, &qword_27C863B18, &qword_20E323EB0);
        v48 = v74;
        if ((v55 & 1) == 0)
        {
          break;
        }
      }

      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v58 = sub_20E322850();
      sub_20E195C24(v18, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      sub_20E195C24(v21, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      if (v58)
      {
        v25 = v35 + v63;
        v24 = v72 + v63;
        v22 = v48 - 1;
        if (v22)
        {
          continue;
        }
      }

      return v58 & 1;
    }

    sub_20E195C24(v18, type metadata accessor for ContextProtoDynamicEnumerationEntity);
    sub_20E195C24(v21, type metadata accessor for ContextProtoDynamicEnumerationEntity);
    goto LABEL_48;
  }

  v58 = 1;
  return v58 & 1;
}

uint64_t sub_20E14A924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_18:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_20E195BBC(v13, v10, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195BBC(v14, v7, type metadata accessor for TranscriptProtoStatementID);
      if (*v10 != *v7)
      {
        break;
      }

      v16 = *(v10 + 2);
      v17 = *(v7 + 2);
      if (v16)
      {
        if (!v17 || (*(v10 + 1) != *(v7 + 1) || v16 != v17) && (sub_20E322D60() & 1) == 0)
        {
          break;
        }
      }

      else if (v17)
      {
        break;
      }

      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_20E322850();
      sub_20E195C24(v7, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_20E195C24(v7, type metadata accessor for TranscriptProtoStatementID);
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_18;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_20E14ABB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v46 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v52);
  v55 = &v46 - v11;
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v13 = MEMORY[0x28223BE20](updated);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = &v46 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
LABEL_40:
    v42 = 0;
    return v42 & 1;
  }

  if (v19 && a1 != a2)
  {
    v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v21 = a1 + v20;
    v22 = v5;
    v23 = a2 + v20;
    v49 = (v22 + 48);
    v50 = v4;
    v47 = *(v16 + 72);
    v48 = updated;
    v46 = v7;
    while (1)
    {
      v51 = v21;
      sub_20E195BBC(v21, v18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      sub_20E195BBC(v23, v15, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      v24 = *v18 == *v15 && *(v18 + 1) == *(v15 + 1);
      if (!v24 && (sub_20E322D60() & 1) == 0 || v18[16] != v15[16])
      {
        break;
      }

      v53 = v19;
      v54 = v23;
      v25 = *(updated + 24);
      v26 = *(v52 + 48);
      v27 = v55;
      sub_20E0486F4(&v18[v25], v55, &qword_27C8639D0, &unk_20E33C230);
      sub_20E0486F4(&v15[v25], v27 + v26, &qword_27C8639D0, &unk_20E33C230);
      v28 = v50;
      v29 = *v49;
      if ((*v49)(v27, 1, v50) == 1)
      {
        v24 = v29(v27 + v26, 1, v28) == 1;
        v30 = v27;
        if (!v24)
        {
          goto LABEL_37;
        }

        sub_20E04875C(v27, &qword_27C8639D0, &unk_20E33C230);
        updated = v48;
        v31 = v53;
        v32 = v54;
      }

      else
      {
        sub_20E0486F4(v27, v10, &qword_27C8639D0, &unk_20E33C230);
        if (v29(v27 + v26, 1, v28) == 1)
        {
          sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
          v30 = v27;
LABEL_37:
          v43 = &qword_27C867F30;
          v44 = &qword_20E33B000;
LABEL_38:
          sub_20E04875C(v30, v43, v44);
          break;
        }

        v33 = v46;
        sub_20E195B54(v27 + v26, v46, type metadata accessor for TranscriptProtoStatementID);
        updated = v48;
        v31 = v53;
        v32 = v54;
        if (*v10 != *v33)
        {
          goto LABEL_35;
        }

        v34 = *(v10 + 2);
        v35 = *(v33 + 16);
        if (v34)
        {
          if (!v35 || (*(v10 + 1) != *(v33 + 8) || v34 != v35) && (sub_20E322D60() & 1) == 0)
          {
LABEL_35:
            sub_20E195C24(v33, type metadata accessor for TranscriptProtoStatementID);
            sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
            v43 = &qword_27C8639D0;
            v44 = &unk_20E33C230;
            v30 = v55;
            goto LABEL_38;
          }
        }

        else if (v35)
        {
          goto LABEL_35;
        }

        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v36 = sub_20E322850();
        sub_20E195C24(v33, type metadata accessor for TranscriptProtoStatementID);
        sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
        sub_20E04875C(v55, &qword_27C8639D0, &unk_20E33C230);
        if ((v36 & 1) == 0)
        {
          break;
        }
      }

      v37 = *(updated + 28);
      v38 = &v18[v37];
      v39 = v18[v37 + 8];
      v40 = &v15[v37];
      v41 = v15[v37 + 8];
      if (v39)
      {
        if (!v41)
        {
          break;
        }
      }

      else
      {
        if (*v38 != *v40)
        {
          LOBYTE(v41) = 1;
        }

        if (v41)
        {
          break;
        }
      }

      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v42 = sub_20E322850();
      sub_20E195C24(v15, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      sub_20E195C24(v18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      if (v42)
      {
        v23 = v32 + v47;
        v21 = v51 + v47;
        v19 = v31 - 1;
        if (v19)
        {
          continue;
        }
      }

      return v42 & 1;
    }

    sub_20E195C24(v15, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
    sub_20E195C24(v18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
    goto LABEL_40;
  }

  v42 = 1;
  return v42 & 1;
}

uint64_t sub_20E14B224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v49);
  v53 = &v44 - v11;
  v12 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v18 = (&v44 - v17);
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
LABEL_41:
    v41 = 0;
    return v41 & 1;
  }

  if (!v19 || a1 == a2)
  {
    v41 = 1;
    return v41 & 1;
  }

  v20 = *(a1 + 16);
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v47 = (v5 + 48);
  v48 = v4;
  v45 = *(v16 + 72);
  v46 = v12;
  v24 = v20;
  v44 = v7;
  while (1)
  {
    v50 = v22;
    result = sub_20E195BBC(v22, v18, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
    if (!v24)
    {
      break;
    }

    sub_20E195BBC(v23, v15, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
    v26 = *v18 == *v15 && v18[1] == v15[1];
    if (!v26 && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_40;
    }

    v27 = v18[3];
    v28 = v15[3];
    if (v27)
    {
      if (!v28 || (v18[2] != v15[2] || v27 != v28) && (sub_20E322D60() & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v28)
    {
      goto LABEL_40;
    }

    v51 = v24;
    v52 = v23;
    v29 = *(v12 + 24);
    v30 = *(v49 + 48);
    v31 = v53;
    sub_20E0486F4(v18 + v29, v53, &qword_27C8639D0, &unk_20E33C230);
    sub_20E0486F4(v15 + v29, v31 + v30, &qword_27C8639D0, &unk_20E33C230);
    v32 = v48;
    v33 = *v47;
    if ((*v47)(v31, 1, v48) == 1)
    {
      v26 = v33(v31 + v30, 1, v32) == 1;
      v34 = v31;
      if (!v26)
      {
        goto LABEL_38;
      }

      sub_20E04875C(v31, &qword_27C8639D0, &unk_20E33C230);
      v12 = v46;
      v36 = v51;
      v35 = v52;
    }

    else
    {
      sub_20E0486F4(v31, v10, &qword_27C8639D0, &unk_20E33C230);
      if (v33(v31 + v30, 1, v32) == 1)
      {
        sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
        v34 = v31;
LABEL_38:
        v42 = &qword_27C867F30;
        v43 = &qword_20E33B000;
        goto LABEL_39;
      }

      v37 = v44;
      sub_20E195B54(v31 + v30, v44, type metadata accessor for TranscriptProtoStatementID);
      v12 = v46;
      v36 = v51;
      v35 = v52;
      if (*v10 != *v37)
      {
        goto LABEL_36;
      }

      v38 = *(v10 + 2);
      v39 = *(v37 + 16);
      if (v38)
      {
        if (!v39 || (*(v10 + 1) != *(v37 + 8) || v38 != v39) && (sub_20E322D60() & 1) == 0)
        {
LABEL_36:
          sub_20E195C24(v37, type metadata accessor for TranscriptProtoStatementID);
          sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
          v42 = &qword_27C8639D0;
          v43 = &unk_20E33C230;
          v34 = v53;
LABEL_39:
          sub_20E04875C(v34, v42, v43);
LABEL_40:
          sub_20E195C24(v15, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
          sub_20E195C24(v18, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
          goto LABEL_41;
        }
      }

      else if (v39)
      {
        goto LABEL_36;
      }

      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v40 = sub_20E322850();
      sub_20E195C24(v37, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v53, &qword_27C8639D0, &unk_20E33C230);
      if ((v40 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v41 = sub_20E322850();
    sub_20E195C24(v15, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
    sub_20E195C24(v18, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
    if (v41)
    {
      v24 = v36 - 1;
      v23 = v35 + v45;
      v22 = v50 + v45;
      if (v36 != 1)
      {
        continue;
      }
    }

    return v41 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E14B888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v47 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = (&v42 - v8);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  MEMORY[0x28223BE20](v48);
  v10 = &v42 - v9;
  v11 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v17 = (&v42 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_36:
    v38 = 0;
    return v38 & 1;
  }

  if (v18 && a1 != a2)
  {
    v43 = v11;
    v44 = v10;
    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v45 = (v5 + 48);
    v46 = v4;
    v42 = *(v15 + 72);
    while (1)
    {
      sub_20E195BBC(v20, v17, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      v50 = v21;
      sub_20E195BBC(v21, v14, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      v22 = *v17 == *v14 && v17[1] == v14[1];
      if (!v22 && (sub_20E322D60() & 1) == 0)
      {
        break;
      }

      v23 = v17[2] == v14[2] && v17[3] == v14[3];
      if (!v23 && (sub_20E322D60() & 1) == 0)
      {
        break;
      }

      v49 = v20;
      v24 = *(v11 + 24);
      v25 = *(v48 + 48);
      v26 = v44;
      sub_20E0486F4(v17 + v24, v44, &qword_27C863C48, &qword_20E323F30);
      sub_20E0486F4(v14 + v24, v26 + v25, &qword_27C863C48, &qword_20E323F30);
      v27 = v46;
      v28 = *v45;
      if ((*v45)(v26, 1, v46) == 1)
      {
        if (v28(v26 + v25, 1, v27) != 1)
        {
          goto LABEL_30;
        }

        sub_20E04875C(v26, &qword_27C863C48, &qword_20E323F30);
        v11 = v43;
        v29 = v49;
      }

      else
      {
        sub_20E0486F4(v26, v51, &qword_27C863C48, &qword_20E323F30);
        if (v28(v26 + v25, 1, v27) == 1)
        {
          sub_20E195C24(v51, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_30:
          v39 = &qword_27C867E98;
          v40 = &qword_20E33AF70;
          goto LABEL_34;
        }

        v30 = v26 + v25;
        v31 = v47;
        sub_20E195B54(v30, v47, type metadata accessor for ToolKitProtoTypeInstance);
        v32 = *v51;
        v33 = *v31;
        if ((~*v51 & 0xF000000000000007) != 0)
        {
          v53 = *v51;
          if ((~v33 & 0xF000000000000007) == 0)
          {
            sub_20E047CF8(v32);
            sub_20E047CF8(v33);
            sub_20E047CF8(v32);

LABEL_32:
            sub_20E047CA8(v32);
            sub_20E047CA8(v33);
LABEL_33:
            sub_20E195C24(v47, type metadata accessor for ToolKitProtoTypeInstance);
            sub_20E195C24(v51, type metadata accessor for ToolKitProtoTypeInstance);
            v39 = &qword_27C863C48;
            v40 = &qword_20E323F30;
LABEL_34:
            sub_20E04875C(v26, v39, v40);
            break;
          }

          v52 = v33;
          sub_20E047CF8(v32);
          sub_20E047CF8(v33);
          sub_20E047CF8(v32);
          v34 = static ToolKitProtoTypeInstanceKind.== infix(_:_:)(&v53, &v52);

          sub_20E047CA8(v32);
          if ((v34 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          sub_20E047CF8(*v51);
          sub_20E047CF8(v33);
          if ((~v33 & 0xF000000000000007) != 0)
          {
            goto LABEL_32;
          }

          sub_20E047CA8(v32);
        }

        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v35 = v51;
        v36 = v47;
        v37 = sub_20E322850();
        sub_20E195C24(v36, type metadata accessor for ToolKitProtoTypeInstance);
        sub_20E195C24(v35, type metadata accessor for ToolKitProtoTypeInstance);
        sub_20E04875C(v26, &qword_27C863C48, &qword_20E323F30);
        v11 = v43;
        v29 = v49;
        if ((v37 & 1) == 0)
        {
          break;
        }
      }

      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v38 = sub_20E322850();
      sub_20E195C24(v14, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      sub_20E195C24(v17, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      if (v38)
      {
        v21 = v50 + v42;
        v20 = v29 + v42;
        if (--v18)
        {
          continue;
        }
      }

      return v38 & 1;
    }

    sub_20E195C24(v14, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
    sub_20E195C24(v17, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
    goto LABEL_36;
  }

  v38 = 1;
  return v38 & 1;
}

uint64_t sub_20E14BF4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E90, &qword_20E33AF68);
  MEMORY[0x28223BE20](v48);
  v11 = &v41 - v10;
  v45 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
  v12 = MEMORY[0x28223BE20](v45);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v50 = (&v41 - v16);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
LABEL_23:
    v40 = 0;
    return v40 & 1;
  }

  if (!v17 || a1 == a2)
  {
    v40 = 1;
    return v40 & 1;
  }

  v18 = *(a1 + 16);
  v42 = v9;
  v46 = v14;
  v47 = v4;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v44 = *(v15 + 72);
  v23 = v45;
  v24 = v18;
  while (1)
  {
    v25 = v50;
    result = sub_20E195BBC(v20, v50, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
    if (!v24)
    {
      break;
    }

    v49 = v24;
    sub_20E195BBC(v21, v14, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
    v27 = *v25 == *v14 && v25[1] == v14[1];
    if (!v27 && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_22;
    }

    v28 = *(v23 + 20);
    v29 = *(v48 + 48);
    sub_20E0486F4(v50 + v28, v11, &qword_27C863EB8, &qword_20E325D08);
    sub_20E0486F4(v14 + v28, &v11[v29], &qword_27C863EB8, &qword_20E325D08);
    v30 = *v22;
    v31 = v11;
    v32 = v11;
    v33 = v47;
    if ((*v22)(v31, 1, v47) == 1)
    {
      if (v30((v32 + v29), 1, v33) != 1)
      {
        goto LABEL_21;
      }

      sub_20E04875C(v32, &qword_27C863EB8, &qword_20E325D08);
      v11 = v32;
      v14 = v46;
    }

    else
    {
      v34 = v42;
      sub_20E0486F4(v32, v42, &qword_27C863EB8, &qword_20E325D08);
      if (v30((v32 + v29), 1, v33) == 1)
      {
        sub_20E195C24(v34, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_21:
        sub_20E04875C(v32, &qword_27C867E90, &qword_20E33AF68);
        v14 = v46;
LABEL_22:
        sub_20E195C24(v14, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
        sub_20E195C24(v50, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
        goto LABEL_23;
      }

      v35 = v22;
      v36 = v43;
      sub_20E195B54(v32 + v29, v43, type metadata accessor for ToolKitProtoDisplayRepresentation);
      v37 = static ToolKitProtoDisplayRepresentation.== infix(_:_:)(v34, v36);
      v38 = v36;
      v22 = v35;
      sub_20E195C24(v38, type metadata accessor for ToolKitProtoDisplayRepresentation);
      sub_20E195C24(v34, type metadata accessor for ToolKitProtoDisplayRepresentation);
      sub_20E04875C(v32, &qword_27C863EB8, &qword_20E325D08);
      v11 = v32;
      v23 = v45;
      v14 = v46;
      if ((v37 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v39 = v50;
    v40 = sub_20E322850();
    sub_20E195C24(v14, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
    sub_20E195C24(v39, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
    if (v40)
    {
      v24 = v49 - 1;
      v21 += v44;
      v20 += v44;
      if (v49 != 1)
      {
        continue;
      }
    }

    return v40 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E14C50C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F58, &qword_20E3263B8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868160, &qword_20E33B208);
  MEMORY[0x28223BE20](v42);
  v11 = &v34 - v10;
  v41 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v12 = MEMORY[0x28223BE20](v41);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_18:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v36 = v14;
  v37 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v39 = *(v15 + 72);
  v40 = v4;
  v23 = &qword_27C865F58;
  v35 = &v34 - v16;
  while (1)
  {
    result = sub_20E195BBC(v20, v17, type metadata accessor for TranscriptProtoASTFlatValue);
    if (!v18)
    {
      break;
    }

    v43 = v18;
    sub_20E195BBC(v21, v14, type metadata accessor for TranscriptProtoASTFlatValue);
    v25 = *(v42 + 48);
    sub_20E0486F4(v17, v11, v23, &qword_20E3263B8);
    sub_20E0486F4(v14, &v11[v25], v23, &qword_20E3263B8);
    v26 = *v22;
    v27 = v23;
    v28 = v40;
    if ((*v22)(v11, 1, v40) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        goto LABEL_16;
      }

      v23 = v27;
      sub_20E04875C(v11, v27, &qword_20E3263B8);
    }

    else
    {
      v29 = v22;
      v30 = v37;
      sub_20E0486F4(v11, v37, v27, &qword_20E3263B8);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        sub_20E195C24(v30, type metadata accessor for TranscriptProtoAstflatValueEnum);
        v17 = v35;
        v14 = v36;
LABEL_16:
        sub_20E04875C(v11, &qword_27C868160, &qword_20E33B208);
LABEL_17:
        sub_20E195C24(v14, type metadata accessor for TranscriptProtoASTFlatValue);
        sub_20E195C24(v17, type metadata accessor for TranscriptProtoASTFlatValue);
        goto LABEL_18;
      }

      v31 = v38;
      sub_20E195B54(&v11[v25], v38, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v32 = static TranscriptProtoAstflatValueEnum.== infix(_:_:)(v30, v31);
      sub_20E195C24(v31, type metadata accessor for TranscriptProtoAstflatValueEnum);
      sub_20E195C24(v30, type metadata accessor for TranscriptProtoAstflatValueEnum);
      sub_20E04875C(v11, v27, &qword_20E3263B8);
      v22 = v29;
      v17 = v35;
      v14 = v36;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_20E322850();
    sub_20E195C24(v14, type metadata accessor for TranscriptProtoASTFlatValue);
    sub_20E195C24(v17, type metadata accessor for TranscriptProtoASTFlatValue);
    if (v33)
    {
      v18 = v43 - 1;
      v21 += v39;
      v20 += v39;
      if (v43 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E14CA38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v87 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  MEMORY[0x28223BE20](v7 - 8);
  v92 = &v81 - v8;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E58, &qword_20E33AF38);
  MEMORY[0x28223BE20](v93);
  v94 = &v81 - v9;
  v108 = type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  v10 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v99 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C60, &qword_20E323F58);
  MEMORY[0x28223BE20](v12 - 8);
  v100 = &v81 - v13;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EC0, &qword_20E33AF90);
  MEMORY[0x28223BE20](v101);
  v15 = &v81 - v14;
  v97 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  v106 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v88 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B68, &unk_20E346230);
  MEMORY[0x28223BE20](v17 - 8);
  v89 = &v81 - v18;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EC8, &qword_20E33AF98);
  MEMORY[0x28223BE20](v95);
  v96 = &v81 - v19;
  v20 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v102 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  MEMORY[0x28223BE20](v23 - 8);
  v107 = &v81 - v24;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  MEMORY[0x28223BE20](v103);
  v26 = &v81 - v25;
  v109 = type metadata accessor for ContextProtoToolRetrievalType(0);
  v27 = MEMORY[0x28223BE20](v109);
  v111 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v110 = &v81 - v30;
  v31 = *(a1 + 16);
  if (v31 != *(a2 + 16))
  {
LABEL_43:
    v76 = 0;
    return v76 & 1;
  }

  if (!v31 || a1 == a2)
  {
    v76 = 1;
    return v76 & 1;
  }

  v84 = v4;
  v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v33 = a1 + v32;
  v91 = (v21 + 48);
  v34 = a2 + v32;
  v85 = (v106 + 48);
  v83 = (v5 + 48);
  v86 = *(v29 + 72);
  v35 = v110;
  v98 = v20;
  v36 = v107;
  v82 = v15;
  v90 = (v10 + 48);
  while (1)
  {
    v106 = v33;
    result = sub_20E195BBC(v33, v35, type metadata accessor for ContextProtoToolRetrievalType);
    if (!v31)
    {
      break;
    }

    v104 = v31;
    v105 = v34;
    v38 = v34;
    v39 = v111;
    sub_20E195BBC(v38, v111, type metadata accessor for ContextProtoToolRetrievalType);
    v40 = *(v103 + 48);
    v41 = v26;
    sub_20E0486F4(v35, v26, &qword_27C863B60, &qword_20E323F50);
    sub_20E0486F4(v39, &v26[v40], &qword_27C863B60, &qword_20E323F50);
    v42 = *v91;
    if ((*v91)(v26, 1, v20) == 1)
    {
      if (v42(&v26[v40], 1, v20) != 1)
      {
        goto LABEL_31;
      }

      sub_20E04875C(v26, &qword_27C863B60, &qword_20E323F50);
      v43 = v90;
    }

    else
    {
      sub_20E0486F4(v26, v36, &qword_27C863B60, &qword_20E323F50);
      if (v42(&v26[v40], 1, v20) == 1)
      {
        sub_20E195C24(v36, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_31:
        v78 = &qword_27C867ED0;
        v79 = &qword_20E33AFA0;
LABEL_37:
        v80 = v26;
        goto LABEL_41;
      }

      v44 = v102;
      sub_20E195B54(&v26[v40], v102, type metadata accessor for ToolKitProtoTypeIdentifier);
      v45 = v96;
      v46 = *(v95 + 48);
      sub_20E0486F4(v36, v96, &qword_27C863B68, &unk_20E346230);
      sub_20E0486F4(v44, v45 + v46, &qword_27C863B68, &unk_20E346230);
      v47 = *v85;
      v48 = v97;
      if ((*v85)(v45, 1, v97) == 1)
      {
        if (v47(v45 + v46, 1, v48) != 1)
        {
          goto LABEL_35;
        }

        sub_20E04875C(v45, &qword_27C863B68, &unk_20E346230);
      }

      else
      {
        v49 = v89;
        sub_20E0486F4(v45, v89, &qword_27C863B68, &unk_20E346230);
        if (v47(v45 + v46, 1, v48) == 1)
        {
          sub_20E195C24(v49, type metadata accessor for ToolKitProtoTypeIdentifierKind);
          v36 = v107;
          v26 = v41;
LABEL_35:
          sub_20E04875C(v45, &qword_27C867EC8, &qword_20E33AF98);
LABEL_36:
          sub_20E195C24(v102, type metadata accessor for ToolKitProtoTypeIdentifier);
          sub_20E195C24(v36, type metadata accessor for ToolKitProtoTypeIdentifier);
          v78 = &qword_27C863B60;
          v79 = &qword_20E323F50;
          goto LABEL_37;
        }

        v50 = v88;
        sub_20E195B54(v45 + v46, v88, type metadata accessor for ToolKitProtoTypeIdentifierKind);
        v51 = static ToolKitProtoTypeIdentifierKind.== infix(_:_:)(v49, v50);
        v52 = v50;
        v35 = v110;
        sub_20E195C24(v52, type metadata accessor for ToolKitProtoTypeIdentifierKind);
        sub_20E195C24(v49, type metadata accessor for ToolKitProtoTypeIdentifierKind);
        sub_20E04875C(v45, &qword_27C863B68, &unk_20E346230);
        v36 = v107;
        v26 = v41;
        if ((v51 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v53 = v102;
      v54 = sub_20E322850();
      v55 = v53;
      v36 = v107;
      sub_20E195C24(v55, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E195C24(v36, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E04875C(v26, &qword_27C863B60, &qword_20E323F50);
      v43 = v90;
      if ((v54 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v56 = v35;
    v57 = *(v109 + 20);
    v58 = v100;
    v59 = *(v101 + 48);
    sub_20E0486F4(v56 + v57, v15, &qword_27C863C60, &qword_20E323F58);
    sub_20E0486F4(v111 + v57, &v15[v59], &qword_27C863C60, &qword_20E323F58);
    v60 = *v43;
    v61 = v108;
    if ((*v43)(v15, 1, v108) == 1)
    {
      if (v60(&v15[v59], 1, v61) != 1)
      {
        goto LABEL_33;
      }

      sub_20E04875C(v15, &qword_27C863C60, &qword_20E323F58);
      v20 = v98;
    }

    else
    {
      sub_20E0486F4(v15, v58, &qword_27C863C60, &qword_20E323F58);
      if (v60(&v15[v59], 1, v61) == 1)
      {
        sub_20E195C24(v58, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
LABEL_33:
        sub_20E04875C(v15, &qword_27C867EC0, &qword_20E33AF90);
        v35 = v110;
        goto LABEL_42;
      }

      v62 = v92;
      v63 = v99;
      sub_20E195B54(&v15[v59], v99, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
      v64 = v94;
      v65 = *(v93 + 48);
      sub_20E0486F4(v58, v94, &qword_27C867E50, &qword_20E33AF30);
      sub_20E0486F4(v63, v64 + v65, &qword_27C867E50, &qword_20E33AF30);
      v66 = *v83;
      v67 = v84;
      if ((*v83)(v64, 1, v84) == 1)
      {
        v68 = v66(v64 + v65, 1, v67);
        v69 = v58;
        v36 = v107;
        if (v68 != 1)
        {
          goto LABEL_39;
        }

        sub_20E04875C(v64, &qword_27C867E50, &qword_20E33AF30);
        v35 = v110;
      }

      else
      {
        sub_20E0486F4(v64, v62, &qword_27C867E50, &qword_20E33AF30);
        v70 = v66(v64 + v65, 1, v67);
        v36 = v107;
        if (v70 == 1)
        {
          sub_20E195C24(v62, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
          v69 = v58;
LABEL_39:
          sub_20E04875C(v64, &qword_27C867E58, &qword_20E33AF38);
          v35 = v110;
LABEL_40:
          sub_20E195C24(v99, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
          sub_20E195C24(v69, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
          v78 = &qword_27C863C60;
          v79 = &qword_20E323F58;
          v80 = v82;
LABEL_41:
          sub_20E04875C(v80, v78, v79);
LABEL_42:
          sub_20E195C24(v111, type metadata accessor for ContextProtoToolRetrievalType);
          sub_20E195C24(v35, type metadata accessor for ContextProtoToolRetrievalType);
          goto LABEL_43;
        }

        v71 = v87;
        sub_20E195B54(v64 + v65, v87, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
        v72 = static ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind.== infix(_:_:)(v62, v71);
        sub_20E195C24(v71, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
        sub_20E195C24(v62, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
        sub_20E04875C(v64, &qword_27C867E50, &qword_20E33AF30);
        v69 = v58;
        v35 = v110;
        if ((v72 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v73 = v99;
      v74 = sub_20E322850();
      sub_20E195C24(v73, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
      sub_20E195C24(v69, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
      v15 = v82;
      sub_20E04875C(v82, &qword_27C863C60, &qword_20E323F58);
      v20 = v98;
      if ((v74 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v75 = v111;
    v76 = sub_20E322850();
    v77 = v75;
    v35 = v110;
    sub_20E195C24(v77, type metadata accessor for ContextProtoToolRetrievalType);
    sub_20E195C24(v35, type metadata accessor for ContextProtoToolRetrievalType);
    if (v76)
    {
      v31 = v104 - 1;
      v34 = v105 + v86;
      v33 = v106 + v86;
      if (v104 != 1)
      {
        continue;
      }
    }

    return v76 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E14D9E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FA8, &qword_20E33B078);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v52 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FB0, &qword_20E33B080);
  MEMORY[0x28223BE20](v61);
  v60 = &v52 - v10;
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  v66 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v14 - 8);
  v69 = &v52 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v62);
  v63 = &v52 - v16;
  v67 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  v17 = MEMORY[0x28223BE20](v67);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v22 = &v52 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_36:
    v47 = 0;
    return v47 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v47 = 1;
    return v47 & 1;
  }

  v56 = v19;
  v57 = v4;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v58 = (v66 + 48);
  v54 = v13;
  v55 = (v5 + 48);
  v53 = *(v20 + 72);
  v68 = &v52 - v21;
  while (1)
  {
    v65 = v25;
    result = sub_20E195BBC(v25, v22, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
    if (!v23)
    {
      break;
    }

    v66 = v23;
    v64 = v26;
    sub_20E195BBC(v26, v19, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
    v28 = v63;
    v29 = *(v62 + 48);
    sub_20E0486F4(v22, v63, &qword_27C8639D0, &unk_20E33C230);
    sub_20E0486F4(v19, v28 + v29, &qword_27C8639D0, &unk_20E33C230);
    v30 = *v58;
    if ((*v58)(v28, 1, v11) == 1)
    {
      v31 = v11;
      if (v30(v28 + v29, 1, v11) != 1)
      {
        goto LABEL_31;
      }

      sub_20E04875C(v28, &qword_27C8639D0, &unk_20E33C230);
      v32 = v66;
    }

    else
    {
      sub_20E0486F4(v28, v69, &qword_27C8639D0, &unk_20E33C230);
      v31 = v11;
      if (v30(v28 + v29, 1, v11) == 1)
      {
        sub_20E195C24(v69, type metadata accessor for TranscriptProtoStatementID);
LABEL_31:
        v49 = &qword_27C867F30;
        v50 = &qword_20E33B000;
        v51 = v28;
LABEL_32:
        sub_20E04875C(v51, v49, v50);
LABEL_35:
        sub_20E195C24(v19, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
        sub_20E195C24(v68, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
        goto LABEL_36;
      }

      sub_20E195B54(v28 + v29, v13, type metadata accessor for TranscriptProtoStatementID);
      v32 = v66;
      if (*v69 != *v13)
      {
        goto LABEL_29;
      }

      v33 = *(v69 + 16);
      v34 = *(v13 + 2);
      if (v33)
      {
        if (!v34 || (*(v69 + 8) != *(v13 + 1) || v33 != v34) && (sub_20E322D60() & 1) == 0)
        {
LABEL_29:
          sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
          sub_20E195C24(v69, type metadata accessor for TranscriptProtoStatementID);
          v49 = &qword_27C8639D0;
          v50 = &unk_20E33C230;
          v51 = v28;
          goto LABEL_32;
        }
      }

      else if (v34)
      {
        goto LABEL_29;
      }

      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v35 = v69;
      v36 = sub_20E322850();
      sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v35, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v28, &qword_27C8639D0, &unk_20E33C230);
      if ((v36 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v37 = v9;
    v38 = *(v67 + 20);
    v39 = *(v61 + 48);
    v40 = v19;
    v41 = v60;
    sub_20E0486F4(&v68[v38], v60, &qword_27C867FA8, &qword_20E33B078);
    sub_20E0486F4(&v40[v38], v41 + v39, &qword_27C867FA8, &qword_20E33B078);
    v42 = *v55;
    v43 = v57;
    if ((*v55)(v41, 1, v57) == 1)
    {
      if (v42(v41 + v39, 1, v43) != 1)
      {
        goto LABEL_34;
      }

      sub_20E04875C(v41, &qword_27C867FA8, &qword_20E33B078);
      v9 = v37;
      v11 = v31;
      v13 = v54;
      v19 = v56;
    }

    else
    {
      sub_20E0486F4(v41, v37, &qword_27C867FA8, &qword_20E33B078);
      if (v42(v41 + v39, 1, v43) == 1)
      {
        sub_20E195C24(v37, type metadata accessor for ContextProtoDynamicEnumerationEntity);
LABEL_34:
        sub_20E04875C(v41, &qword_27C867FB0, &qword_20E33B080);
        v19 = v56;
        goto LABEL_35;
      }

      v44 = v59;
      sub_20E195B54(v41 + v39, v59, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      v45 = static ContextProtoDynamicEnumerationEntity.== infix(_:_:)(v37, v44);
      sub_20E195C24(v44, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      sub_20E195C24(v37, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      sub_20E04875C(v41, &qword_27C867FA8, &qword_20E33B078);
      v9 = v37;
      v11 = v31;
      v13 = v54;
      v19 = v56;
      if ((v45 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v46 = v68;
    v47 = sub_20E322850();
    sub_20E195C24(v19, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
    sub_20E195C24(v46, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
    if (v47)
    {
      v26 = v64 + v53;
      v25 = v65 + v53;
      v48 = v32 == 1;
      v23 = v32 - 1;
      v22 = v68;
      if (!v48)
      {
        continue;
      }
    }

    return v47 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E14E2F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868260, &unk_20E33C3D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v52 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868268, &qword_20E33B2F8);
  MEMORY[0x28223BE20](v61);
  v60 = &v52 - v10;
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  v66 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v14 - 8);
  v69 = &v52 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v62);
  v63 = &v52 - v16;
  v67 = type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  v17 = MEMORY[0x28223BE20](v67);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v22 = &v52 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_36:
    v47 = 0;
    return v47 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v47 = 1;
    return v47 & 1;
  }

  v56 = v19;
  v57 = v4;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v58 = (v66 + 48);
  v54 = v13;
  v55 = (v5 + 48);
  v53 = *(v20 + 72);
  v68 = &v52 - v21;
  while (1)
  {
    v65 = v25;
    result = sub_20E195BBC(v25, v22, type metadata accessor for TranscriptProtoRetrievedContextStatement);
    if (!v23)
    {
      break;
    }

    v66 = v23;
    v64 = v26;
    sub_20E195BBC(v26, v19, type metadata accessor for TranscriptProtoRetrievedContextStatement);
    v28 = v63;
    v29 = *(v62 + 48);
    sub_20E0486F4(v22, v63, &qword_27C8639D0, &unk_20E33C230);
    sub_20E0486F4(v19, v28 + v29, &qword_27C8639D0, &unk_20E33C230);
    v30 = *v58;
    if ((*v58)(v28, 1, v11) == 1)
    {
      v31 = v11;
      if (v30(v28 + v29, 1, v11) != 1)
      {
        goto LABEL_31;
      }

      sub_20E04875C(v28, &qword_27C8639D0, &unk_20E33C230);
      v32 = v66;
    }

    else
    {
      sub_20E0486F4(v28, v69, &qword_27C8639D0, &unk_20E33C230);
      v31 = v11;
      if (v30(v28 + v29, 1, v11) == 1)
      {
        sub_20E195C24(v69, type metadata accessor for TranscriptProtoStatementID);
LABEL_31:
        v49 = &qword_27C867F30;
        v50 = &qword_20E33B000;
        v51 = v28;
LABEL_32:
        sub_20E04875C(v51, v49, v50);
LABEL_35:
        sub_20E195C24(v19, type metadata accessor for TranscriptProtoRetrievedContextStatement);
        sub_20E195C24(v68, type metadata accessor for TranscriptProtoRetrievedContextStatement);
        goto LABEL_36;
      }

      sub_20E195B54(v28 + v29, v13, type metadata accessor for TranscriptProtoStatementID);
      v32 = v66;
      if (*v69 != *v13)
      {
        goto LABEL_29;
      }

      v33 = *(v69 + 16);
      v34 = *(v13 + 2);
      if (v33)
      {
        if (!v34 || (*(v69 + 8) != *(v13 + 1) || v33 != v34) && (sub_20E322D60() & 1) == 0)
        {
LABEL_29:
          sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
          sub_20E195C24(v69, type metadata accessor for TranscriptProtoStatementID);
          v49 = &qword_27C8639D0;
          v50 = &unk_20E33C230;
          v51 = v28;
          goto LABEL_32;
        }
      }

      else if (v34)
      {
        goto LABEL_29;
      }

      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v35 = v69;
      v36 = sub_20E322850();
      sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v35, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v28, &qword_27C8639D0, &unk_20E33C230);
      if ((v36 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v37 = v9;
    v38 = *(v67 + 20);
    v39 = *(v61 + 48);
    v40 = v19;
    v41 = v60;
    sub_20E0486F4(&v68[v38], v60, &qword_27C868260, &unk_20E33C3D0);
    sub_20E0486F4(&v40[v38], v41 + v39, &qword_27C868260, &unk_20E33C3D0);
    v42 = *v55;
    v43 = v57;
    if ((*v55)(v41, 1, v57) == 1)
    {
      if (v42(v41 + v39, 1, v43) != 1)
      {
        goto LABEL_34;
      }

      sub_20E04875C(v41, &qword_27C868260, &unk_20E33C3D0);
      v9 = v37;
      v11 = v31;
      v13 = v54;
      v19 = v56;
    }

    else
    {
      sub_20E0486F4(v41, v37, &qword_27C868260, &unk_20E33C3D0);
      if (v42(v41 + v39, 1, v43) == 1)
      {
        sub_20E195C24(v37, type metadata accessor for ContextProtoRetrievedContext);
LABEL_34:
        sub_20E04875C(v41, &qword_27C868268, &qword_20E33B2F8);
        v19 = v56;
        goto LABEL_35;
      }

      v44 = v59;
      sub_20E195B54(v41 + v39, v59, type metadata accessor for ContextProtoRetrievedContext);
      v45 = static ContextProtoRetrievedContext.== infix(_:_:)(v37, v44);
      sub_20E195C24(v44, type metadata accessor for ContextProtoRetrievedContext);
      sub_20E195C24(v37, type metadata accessor for ContextProtoRetrievedContext);
      sub_20E04875C(v41, &qword_27C868260, &unk_20E33C3D0);
      v9 = v37;
      v11 = v31;
      v13 = v54;
      v19 = v56;
      if ((v45 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v46 = v68;
    v47 = sub_20E322850();
    sub_20E195C24(v19, type metadata accessor for TranscriptProtoRetrievedContextStatement);
    sub_20E195C24(v46, type metadata accessor for TranscriptProtoRetrievedContextStatement);
    if (v47)
    {
      v26 = v64 + v53;
      v25 = v65 + v53;
      v48 = v32 == 1;
      v23 = v32 - 1;
      v22 = v68;
      if (!v48)
      {
        continue;
      }
    }

    return v47 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E14EC10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoAliasTypes(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v157 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C70, &qword_20E323F68);
  MEMORY[0x28223BE20](v7 - 8);
  v156 = &v137 - v8;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F80, &qword_20E33B050);
  MEMORY[0x28223BE20](v158);
  v159 = &v137 - v9;
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v161 = *(matched - 8);
  MEMORY[0x28223BE20](matched);
  v162 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C68, &qword_20E323F60);
  MEMORY[0x28223BE20](v11 - 8);
  v164 = &v137 - v12;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F88, &qword_20E33B058);
  MEMORY[0x28223BE20](v163);
  v168 = &v137 - v13;
  v175 = type metadata accessor for ContextProtoEntityMatch(0);
  v169 = *(v175 - 8);
  v14 = MEMORY[0x28223BE20](v175);
  v16 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v137 - v17;
  v171 = type metadata accessor for ToolKitProtoTypedValue(0);
  v19 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v165 = (&v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v21 - 8);
  v166 = (&v137 - v22);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  MEMORY[0x28223BE20](v167);
  v172 = &v137 - v23;
  v177 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v24 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v179 = (&v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868018, &unk_20E33C430);
  MEMORY[0x28223BE20](v26 - 8);
  v178 = &v137 - v27;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868020, &qword_20E33B0D0);
  MEMORY[0x28223BE20](v173);
  v180 = &v137 - v28;
  v181 = type metadata accessor for TranscriptProtoStatementID(0);
  v29 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v183 = &v137 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v31 - 8);
  v174 = &v137 - v32;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v176);
  v34 = &v137 - v33;
  v182 = type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0);
  v35 = MEMORY[0x28223BE20](v182);
  v185 = &v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v184 = &v137 - v38;
  v39 = *(a1 + 16);
  if (v39 != *(a2 + 16))
  {
LABEL_121:
    v132 = 0;
    return v132 & 1;
  }

  if (!v39 || a1 == a2)
  {
    v132 = 1;
    return v132 & 1;
  }

  v141 = v4;
  v40 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v155 = a1 + v40;
  v153 = a2 + v40;
  v41 = 0;
  v152 = (v29 + 48);
  v150 = (v24 + 48);
  v147 = (v19 + 48);
  v144 = (v161 + 48);
  v140 = (v5 + 48);
  v154 = *(v37 + 72);
  v42 = v184;
  v43 = v181;
  v160 = v39;
  v146 = v16;
  v149 = v34;
  v148 = v18;
  while (1)
  {
    v44 = v154 * v41;
    result = sub_20E195BBC(v155 + v154 * v41, v42, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);
    if (v41 == v160)
    {
      break;
    }

    v161 = v41;
    v46 = v185;
    sub_20E195BBC(v153 + v44, v185, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);
    v47 = *(v176 + 48);
    sub_20E0486F4(v42, v34, &qword_27C8639D0, &unk_20E33C230);
    sub_20E0486F4(v46, &v34[v47], &qword_27C8639D0, &unk_20E33C230);
    v48 = *v152;
    if ((*v152)(v34, 1, v43) == 1)
    {
      if (v48(&v34[v47], 1, v43) != 1)
      {
        goto LABEL_103;
      }

      sub_20E04875C(v34, &qword_27C8639D0, &unk_20E33C230);
    }

    else
    {
      v49 = v174;
      sub_20E0486F4(v34, v174, &qword_27C8639D0, &unk_20E33C230);
      if (v48(&v34[v47], 1, v43) == 1)
      {
        sub_20E195C24(v49, type metadata accessor for TranscriptProtoStatementID);
        v42 = v184;
LABEL_103:
        v133 = &qword_27C867F30;
        v134 = &qword_20E33B000;
        v135 = v34;
        goto LABEL_119;
      }

      v50 = &v34[v47];
      v51 = v183;
      sub_20E195B54(v50, v183, type metadata accessor for TranscriptProtoStatementID);
      if (*v49 != *v51)
      {
        goto LABEL_100;
      }

      v52 = *(v49 + 16);
      v53 = *(v183 + 16);
      if (v52)
      {
        if (!v53 || (*(v49 + 8) != *(v183 + 8) || v52 != v53) && (sub_20E322D60() & 1) == 0)
        {
LABEL_100:
          sub_20E195C24(v183, type metadata accessor for TranscriptProtoStatementID);
          sub_20E195C24(v49, type metadata accessor for TranscriptProtoStatementID);
          sub_20E04875C(v34, &qword_27C8639D0, &unk_20E33C230);
          v42 = v184;
          goto LABEL_120;
        }
      }

      else if (v53)
      {
        goto LABEL_100;
      }

      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v54 = v183;
      v55 = sub_20E322850();
      sub_20E195C24(v54, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v174, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v34, &qword_27C8639D0, &unk_20E33C230);
      v42 = v184;
      if ((v55 & 1) == 0)
      {
        goto LABEL_120;
      }
    }

    v56 = *(v182 + 20);
    v57 = *(v173 + 48);
    v58 = v42;
    v59 = v42 + v56;
    v60 = v180;
    sub_20E0486F4(v59, v180, &qword_27C868018, &unk_20E33C430);
    sub_20E0486F4(v185 + v56, v60 + v57, &qword_27C868018, &unk_20E33C430);
    v61 = *v150;
    v62 = v177;
    if ((*v150)(v60, 1, v177) == 1)
    {
      if (v61(v60 + v57, 1, v62) != 1)
      {
        goto LABEL_105;
      }

      sub_20E04875C(v60, &qword_27C868018, &unk_20E33C430);
      v63 = v149;
    }

    else
    {
      v64 = v178;
      sub_20E0486F4(v60, v178, &qword_27C868018, &unk_20E33C430);
      if (v61(v60 + v57, 1, v62) == 1)
      {
        sub_20E195C24(v64, type metadata accessor for ContextProtoSpanMatchedEntity);
LABEL_105:
        sub_20E04875C(v60, &qword_27C868020, &qword_20E33B0D0);
        v42 = v58;
LABEL_120:
        sub_20E195C24(v185, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);
        sub_20E195C24(v42, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);
        goto LABEL_121;
      }

      v65 = v179;
      sub_20E195B54(v60 + v57, v179, type metadata accessor for ContextProtoSpanMatchedEntity);
      v66 = *(v62 + 20);
      v67 = *(v167 + 48);
      v68 = v172;
      sub_20E0486F4(v64 + v66, v172, &qword_27C863B18, &qword_20E323EB0);
      sub_20E0486F4(v65 + v66, v68 + v67, &qword_27C863B18, &qword_20E323EB0);
      v69 = *v147;
      v70 = v171;
      if ((*v147)(v68, 1, v171) == 1)
      {
        v71 = v69(v68 + v67, 1, v70) == 1;
        v72 = v68;
        v73 = v148;
        if (!v71)
        {
          goto LABEL_107;
        }

        result = sub_20E04875C(v72, &qword_27C863B18, &qword_20E323EB0);
        v42 = v184;
        v74 = v146;
        v75 = v178;
      }

      else
      {
        v76 = v166;
        sub_20E0486F4(v68, v166, &qword_27C863B18, &qword_20E323EB0);
        v77 = v69(v68 + v67, 1, v70);
        v78 = v68;
        v73 = v148;
        if (v77 == 1)
        {
          v136 = v78;
          sub_20E195C24(v76, type metadata accessor for ToolKitProtoTypedValue);
          v72 = v136;
LABEL_107:
          sub_20E04875C(v72, &qword_27C867ED8, &qword_20E33AFA8);
          v42 = v184;
LABEL_113:
          v75 = v178;
LABEL_118:
          sub_20E195C24(v179, type metadata accessor for ContextProtoSpanMatchedEntity);
          sub_20E195C24(v75, type metadata accessor for ContextProtoSpanMatchedEntity);
          v133 = &qword_27C868018;
          v134 = &unk_20E33C430;
          v135 = v180;
LABEL_119:
          sub_20E04875C(v135, v133, v134);
          goto LABEL_120;
        }

        v79 = v165;
        sub_20E195B54(v78 + v67, v165, type metadata accessor for ToolKitProtoTypedValue);
        v80 = *v76;
        v81 = *v79;
        if ((~*v76 & 0xF000000000000007) != 0)
        {
          v187 = *v76;
          if ((~v81 & 0xF000000000000007) == 0)
          {
            sub_20E047CF8(v80);
            sub_20E047CF8(v81);
            sub_20E047CF8(v80);

            v42 = v184;
LABEL_111:
            sub_20E047CA8(v80);
            sub_20E047CA8(v81);
LABEL_112:
            sub_20E195C24(v165, type metadata accessor for ToolKitProtoTypedValue);
            sub_20E195C24(v166, type metadata accessor for ToolKitProtoTypedValue);
            sub_20E04875C(v172, &qword_27C863B18, &qword_20E323EB0);
            goto LABEL_113;
          }

          v186 = v81;
          sub_20E047CF8(v80);
          sub_20E047CF8(v81);
          sub_20E047CF8(v80);
          v82 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v187, &v186);

          sub_20E047CA8(v80);
          v42 = v184;
          if ((v82 & 1) == 0)
          {
            goto LABEL_112;
          }
        }

        else
        {
          sub_20E047CF8(*v76);
          sub_20E047CF8(v81);
          v42 = v184;
          if ((~v81 & 0xF000000000000007) != 0)
          {
            goto LABEL_111;
          }

          sub_20E047CA8(v80);
        }

        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v83 = v166;
        v84 = v165;
        v85 = sub_20E322850();
        sub_20E195C24(v84, type metadata accessor for ToolKitProtoTypedValue);
        sub_20E195C24(v83, type metadata accessor for ToolKitProtoTypedValue);
        result = sub_20E04875C(v172, &qword_27C863B18, &qword_20E323EB0);
        v74 = v146;
        v75 = v178;
        if ((v85 & 1) == 0)
        {
          goto LABEL_118;
        }
      }

      v86 = *v75;
      v87 = *(*v75 + 16);
      v151 = *v179;
      if (v87 != *(v151 + 16))
      {
        goto LABEL_118;
      }

      if (v87 && v86 != v151)
      {
        v88 = 0;
        v89 = (*(v169 + 80) + 32) & ~*(v169 + 80);
        v143 = v86 + v89;
        v142 = v151 + v89;
        v139 = v86;
        v138 = v87;
        do
        {
          if (v88 >= *(v86 + 16))
          {
            goto LABEL_124;
          }

          v90 = v88;
          v91 = *(v169 + 72) * v88;
          result = sub_20E195BBC(v143 + v91, v73, type metadata accessor for ContextProtoEntityMatch);
          v92 = *(v151 + 16);
          v145 = v90;
          if (v90 >= v92)
          {
            goto LABEL_125;
          }

          sub_20E195BBC(v142 + v91, v74, type metadata accessor for ContextProtoEntityMatch);
          if ((*v73 != *v74 || *(v73 + 8) != *(v74 + 8)) && (sub_20E322D60() & 1) == 0 || (*(v73 + 16) != *(v74 + 16) || *(v73 + 24) != *(v74 + 24)) && (sub_20E322D60() & 1) == 0 || *(v73 + 32) != *(v74 + 32) || *(v73 + 40) != *(v74 + 40) || *(v73 + 48) != *(v74 + 48))
          {
            goto LABEL_117;
          }

          v93 = *(v175 + 48);
          v94 = *(v163 + 48);
          v95 = v168;
          sub_20E0486F4(v73 + v93, v168, &qword_27C863C68, &qword_20E323F60);
          sub_20E0486F4(v74 + v93, v95 + v94, &qword_27C863C68, &qword_20E323F60);
          v96 = *v144;
          v97 = matched;
          if ((*v144)(v95, 1, matched) == 1)
          {
            v71 = v96(v95 + v94, 1, v97) == 1;
            v98 = v95;
            if (!v71)
            {
              goto LABEL_109;
            }

            sub_20E04875C(v95, &qword_27C863C68, &qword_20E323F60);
            v75 = v178;
          }

          else
          {
            v99 = v164;
            sub_20E0486F4(v95, v164, &qword_27C863C68, &qword_20E323F60);
            if (v96(v95 + v94, 1, v97) == 1)
            {
              sub_20E195C24(v99, type metadata accessor for ContextProtoMatchProperties);
              v98 = v95;
LABEL_109:
              sub_20E04875C(v98, &qword_27C867F88, &qword_20E33B058);
              v75 = v178;
              goto LABEL_117;
            }

            v100 = v162;
            sub_20E195B54(v95 + v94, v162, type metadata accessor for ContextProtoMatchProperties);
            v101 = *(v100 + 8);
            if (*(v99 + 8))
            {
              v102 = matched;
              if (!*(v100 + 8))
              {
                goto LABEL_116;
              }
            }

            else
            {
              if (*v99 != *v100)
              {
                v101 = 1;
              }

              v102 = matched;
              if (v101)
              {
                goto LABEL_116;
              }
            }

            v103 = *(v100 + 24);
            if (*(v99 + 24))
            {
              if (!*(v100 + 24))
              {
                goto LABEL_116;
              }
            }

            else
            {
              if (*(v99 + 16) != *(v100 + 16))
              {
                v103 = 1;
              }

              if (v103)
              {
                goto LABEL_116;
              }
            }

            v104 = v100;
            v105 = *(v102 + 24);
            v106 = v99 + v105;
            v107 = *(v158 + 48);
            v108 = v159;
            sub_20E0486F4(v106, v159, &qword_27C863C70, &qword_20E323F68);
            sub_20E0486F4(v104 + v105, v108 + v107, &qword_27C863C70, &qword_20E323F68);
            v109 = *v140;
            v110 = v141;
            if ((*v140)(v108, 1, v141) == 1)
            {
              v71 = v109(v108 + v107, 1, v110) == 1;
              v99 = v164;
              v100 = v162;
              v111 = v108;
              if (!v71)
              {
                goto LABEL_115;
              }

              sub_20E04875C(v108, &qword_27C863C70, &qword_20E323F68);
            }

            else
            {
              v112 = v156;
              sub_20E0486F4(v108, v156, &qword_27C863C70, &qword_20E323F68);
              if (v109(v108 + v107, 1, v110) == 1)
              {
                sub_20E195C24(v112, type metadata accessor for ContextProtoAliasTypes);
                v111 = v108;
                v100 = v162;
                v99 = v164;
LABEL_115:
                sub_20E04875C(v111, &qword_27C867F80, &qword_20E33B050);
                goto LABEL_116;
              }

              v113 = v157;
              sub_20E195B54(v108 + v107, v157, type metadata accessor for ContextProtoAliasTypes);
              v114 = *v112;
              v115 = *v113;
              v116 = *(*v112 + 16);
              v117 = v162;
              v99 = v164;
              if (v116 != *(*v113 + 16))
              {
                goto LABEL_101;
              }

              if (v116 && v114 != v115)
              {
                v118 = (v114 + 32);
                v119 = (v115 + 32);
                while (*v118 == *v119)
                {
                  ++v118;
                  ++v119;
                  if (!--v116)
                  {
                    goto LABEL_77;
                  }
                }

LABEL_101:
                sub_20E195C24(v157, type metadata accessor for ContextProtoAliasTypes);
                sub_20E195C24(v112, type metadata accessor for ContextProtoAliasTypes);
                sub_20E04875C(v159, &qword_27C863C70, &qword_20E323F68);
                v100 = v117;
LABEL_116:
                sub_20E195C24(v100, type metadata accessor for ContextProtoMatchProperties);
                sub_20E195C24(v99, type metadata accessor for ContextProtoMatchProperties);
                sub_20E04875C(v168, &qword_27C863C68, &qword_20E323F60);
                v75 = v178;
                v42 = v184;
LABEL_117:
                sub_20E195C24(v74, type metadata accessor for ContextProtoEntityMatch);
                sub_20E195C24(v73, type metadata accessor for ContextProtoEntityMatch);
                goto LABEL_118;
              }

LABEL_77:
              sub_20E3221C0();
              sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
              v120 = v157;
              v121 = sub_20E322850();
              v99 = v164;
              sub_20E195C24(v120, type metadata accessor for ContextProtoAliasTypes);
              sub_20E195C24(v112, type metadata accessor for ContextProtoAliasTypes);
              sub_20E04875C(v159, &qword_27C863C70, &qword_20E323F68);
              v100 = v117;
              if ((v121 & 1) == 0)
              {
                goto LABEL_116;
              }
            }

            sub_20E3221C0();
            sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            v122 = sub_20E322850();
            sub_20E195C24(v100, type metadata accessor for ContextProtoMatchProperties);
            sub_20E195C24(v99, type metadata accessor for ContextProtoMatchProperties);
            sub_20E04875C(v168, &qword_27C863C68, &qword_20E323F60);
            v75 = v178;
            v42 = v184;
            if ((v122 & 1) == 0)
            {
              goto LABEL_117;
            }
          }

          if (*(v73 + 52) != *(v74 + 52) || (*(v73 + 56) != *(v74 + 56) || *(v73 + 64) != *(v74 + 64)) && (sub_20E322D60() & 1) == 0 || (*(v73 + 72) != *(v74 + 72) || *(v73 + 80) != *(v74 + 80)) && (sub_20E322D60() & 1) == 0)
          {
            goto LABEL_117;
          }

          v123 = *(v175 + 52);
          v124 = (v73 + v123);
          v125 = *(v73 + v123 + 8);
          v126 = (v74 + v123);
          v127 = v126[1];
          if (v125)
          {
            if (!v127 || (*v124 != *v126 || v125 != v127) && (sub_20E322D60() & 1) == 0)
            {
              goto LABEL_117;
            }
          }

          else if (v127)
          {
            goto LABEL_117;
          }

          sub_20E3221C0();
          sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v128 = sub_20E322850();
          sub_20E195C24(v74, type metadata accessor for ContextProtoEntityMatch);
          result = sub_20E195C24(v73, type metadata accessor for ContextProtoEntityMatch);
          v86 = v139;
          if ((v128 & 1) == 0)
          {
            goto LABEL_118;
          }

          v88 = v145 + 1;
        }

        while (v145 + 1 != v138);
      }

      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v129 = v179;
      v130 = sub_20E322850();
      sub_20E195C24(v129, type metadata accessor for ContextProtoSpanMatchedEntity);
      sub_20E195C24(v75, type metadata accessor for ContextProtoSpanMatchedEntity);
      sub_20E04875C(v180, &qword_27C868018, &unk_20E33C430);
      v63 = v149;
      if ((v130 & 1) == 0)
      {
        goto LABEL_120;
      }
    }

    v34 = v63;
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v131 = v185;
    v132 = sub_20E322850();
    v42 = v184;
    sub_20E195C24(v131, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);
    sub_20E195C24(v42, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);
    if (v132)
    {
      v41 = v161 + 1;
      v43 = v181;
      if (v161 + 1 != v160)
      {
        continue;
      }
    }

    return v132 & 1;
  }

  __break(1u);
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
  return result;
}

uint64_t sub_20E150768(uint64_t a1, uint64_t a2)
{
  v149 = type metadata accessor for TranscriptProtoStatementID(0);
  v155 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v150 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v5 - 8);
  v139 = (&v118 - v6);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v140);
  v147 = &v118 - v7;
  v8 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v146 = (&v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B20, &unk_20E33C290);
  MEMORY[0x28223BE20](v11 - 8);
  v136 = &v118 - v12;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868278, &qword_20E33B308);
  MEMORY[0x28223BE20](v141);
  v148 = &v118 - v13;
  v151 = type metadata accessor for ToolKitProtoTypedValue(0);
  v14 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v142 = (&v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v16 - 8);
  v143 = (&v118 - v17);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  MEMORY[0x28223BE20](v144);
  v152 = &v118 - v18;
  v19 = type metadata accessor for TranscriptProtoCandidate(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v159 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B28, &unk_20E33C3E0);
  MEMORY[0x28223BE20](v22 - 8);
  v158 = &v118 - v23;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868250, &qword_20E33B2F0);
  MEMORY[0x28223BE20](v154);
  v25 = &v118 - v24;
  v160 = type metadata accessor for TranscriptProtoParameter(0);
  v156 = *(v160 - 8);
  v26 = MEMORY[0x28223BE20](v160);
  v28 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v118 - v29;
  v31 = type metadata accessor for TranscriptProtoParameterSet(0);
  v32 = MEMORY[0x28223BE20](v31);
  v157 = (&v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x28223BE20](v32);
  v153 = &v118 - v36;
  v37 = *(a1 + 16);
  if (v37 != *(a2 + 16))
  {
LABEL_96:
    v115 = 0;
    return v115 & 1;
  }

  if (!v37 || a1 == a2)
  {
    v115 = 1;
    return v115 & 1;
  }

  v138 = v19;
  v123 = v34;
  v38 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v39 = a1 + v38;
  v127 = a2 + v38;
  v132 = (v20 + 48);
  v125 = (v14 + 48);
  v124 = (v9 + 48);
  v40 = 0;
  v120 = (v155 + 48);
  v41 = *(v35 + 72);
  v42 = v149;
  v43 = v158;
  v44 = v153;
  v126 = v8;
  v135 = v37;
  v122 = a1 + v38;
  v121 = v41;
  while (1)
  {
    v45 = v41 * v40;
    result = sub_20E195BBC(v39 + v41 * v40, v44, type metadata accessor for TranscriptProtoParameterSet);
    if (v40 == v135)
    {
      break;
    }

    v47 = v127 + v45;
    v48 = v157;
    result = sub_20E195BBC(v47, v157, type metadata accessor for TranscriptProtoParameterSet);
    v49 = *v44;
    v50 = *(*v44 + 16);
    v155 = *v48;
    if (v50 != *(v155 + 16))
    {
LABEL_95:
      sub_20E195C24(v157, type metadata accessor for TranscriptProtoParameterSet);
      sub_20E195C24(v153, type metadata accessor for TranscriptProtoParameterSet);
      goto LABEL_96;
    }

    v51 = v42;
    if (v50 && v49 != v155)
    {
      v52 = 0;
      v53 = (*(v156 + 80) + 32) & ~*(v156 + 80);
      v134 = v49 + v53;
      v133 = v155 + v53;
      v119 = v40;
      v137 = v28;
      v131 = v30;
      v128 = v25;
      v130 = v49;
      v129 = v50;
      while (v52 < *(v49 + 16))
      {
        v54 = *(v156 + 72) * v52;
        result = sub_20E195BBC(v134 + v54, v30, type metadata accessor for TranscriptProtoParameter);
        if (v52 >= *(v155 + 16))
        {
          goto LABEL_99;
        }

        sub_20E195BBC(v133 + v54, v28, type metadata accessor for TranscriptProtoParameter);
        if ((*v30 != *v28 || *(v30 + 1) != *(v28 + 1)) && (sub_20E322D60() & 1) == 0)
        {
          goto LABEL_94;
        }

        v55 = v28[24];
        if (v30[24])
        {
          if (!v28[24])
          {
            goto LABEL_94;
          }
        }

        else
        {
          if (*(v30 + 2) != *(v28 + 2))
          {
            v55 = 1;
          }

          if (v55)
          {
            goto LABEL_94;
          }
        }

        v145 = v52;
        v56 = *(v160 + 24);
        v57 = *(v154 + 48);
        sub_20E0486F4(&v30[v56], v25, &qword_27C863B28, &unk_20E33C3E0);
        sub_20E0486F4(&v28[v56], &v25[v57], &qword_27C863B28, &unk_20E33C3E0);
        v58 = v138;
        v59 = *v132;
        if ((*v132)(v25, 1, v138) == 1)
        {
          if (v59(&v25[v57], 1, v58) != 1)
          {
            goto LABEL_78;
          }

          sub_20E04875C(v25, &qword_27C863B28, &unk_20E33C3E0);
          v28 = v137;
          v30 = v131;
          v60 = v145;
        }

        else
        {
          sub_20E0486F4(v25, v43, &qword_27C863B28, &unk_20E33C3E0);
          if (v59(&v25[v57], 1, v58) == 1)
          {
            sub_20E195C24(v43, type metadata accessor for TranscriptProtoCandidate);
LABEL_78:
            sub_20E04875C(v25, &qword_27C868250, &qword_20E33B2F0);
            v28 = v137;
            goto LABEL_93;
          }

          v61 = v25;
          v62 = &v25[v57];
          v63 = v159;
          sub_20E195B54(v62, v159, type metadata accessor for TranscriptProtoCandidate);
          v64 = *(v58 + 20);
          v65 = *(v144 + 48);
          v66 = v152;
          sub_20E0486F4(&v43[v64], v152, &qword_27C863B18, &qword_20E323EB0);
          sub_20E0486F4(v63 + v64, v66 + v65, &qword_27C863B18, &qword_20E323EB0);
          v67 = *v125;
          v68 = v151;
          if ((*v125)(v66, 1, v151) == 1)
          {
            v69 = v67(v66 + v65, 1, v68) == 1;
            v70 = v66;
            if (!v69)
            {
              goto LABEL_82;
            }

            sub_20E04875C(v66, &qword_27C863B18, &qword_20E323EB0);
            v43 = v158;
            v71 = v159;
            v25 = v61;
            v72 = v138;
            v28 = v137;
          }

          else
          {
            v73 = v143;
            sub_20E0486F4(v66, v143, &qword_27C863B18, &qword_20E323EB0);
            if (v67(v66 + v65, 1, v68) == 1)
            {
              sub_20E195C24(v73, type metadata accessor for ToolKitProtoTypedValue);
              v70 = v66;
LABEL_82:
              sub_20E04875C(v70, &qword_27C867ED8, &qword_20E33AFA8);
              v43 = v158;
              v25 = v61;
              v28 = v137;
              goto LABEL_91;
            }

            v74 = v142;
            sub_20E195B54(v66 + v65, v142, type metadata accessor for ToolKitProtoTypedValue);
            v75 = *v73;
            v76 = *v74;
            if ((~*v73 & 0xF000000000000007) != 0)
            {
              v162 = *v73;
              v43 = v158;
              v25 = v61;
              if ((~v76 & 0xF000000000000007) == 0)
              {
                sub_20E047CF8(v75);
                sub_20E047CF8(v76);
                sub_20E047CF8(v75);

                v28 = v137;
LABEL_88:
                sub_20E047CA8(v75);
                sub_20E047CA8(v76);
                v43 = v158;
LABEL_89:
                sub_20E195C24(v142, type metadata accessor for ToolKitProtoTypedValue);
                sub_20E195C24(v143, type metadata accessor for ToolKitProtoTypedValue);
                v116 = &qword_27C863B18;
                v117 = &qword_20E323EB0;
                v99 = v66;
                goto LABEL_90;
              }

              v161 = v76;
              sub_20E047CF8(v75);
              sub_20E047CF8(v76);
              sub_20E047CF8(v75);
              v77 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v162, &v161);

              sub_20E047CA8(v75);
              v28 = v137;
              if ((v77 & 1) == 0)
              {
                goto LABEL_89;
              }
            }

            else
            {
              sub_20E047CF8(*v73);
              sub_20E047CF8(v76);
              v25 = v61;
              v28 = v137;
              if ((~v76 & 0xF000000000000007) != 0)
              {
                goto LABEL_88;
              }

              sub_20E047CA8(v75);
              v43 = v158;
            }

            sub_20E3221C0();
            sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            v78 = v142;
            v79 = v143;
            v80 = sub_20E322850();
            sub_20E195C24(v78, type metadata accessor for ToolKitProtoTypedValue);
            sub_20E195C24(v79, type metadata accessor for ToolKitProtoTypedValue);
            sub_20E04875C(v152, &qword_27C863B18, &qword_20E323EB0);
            v72 = v138;
            v71 = v159;
            if ((v80 & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          if (*v43 != *v71)
          {
            goto LABEL_92;
          }

          v81 = *(v72 + 24);
          v82 = *(v141 + 48);
          v83 = v148;
          sub_20E0486F4(&v43[v81], v148, &qword_27C863B20, &unk_20E33C290);
          sub_20E0486F4(&v71[v81], v83 + v82, &qword_27C863B20, &unk_20E33C290);
          v84 = *v124;
          v85 = v126;
          if ((*v124)(v83, 1, v126) == 1)
          {
            v86 = v84(v83 + v82, 1, v85);
            v25 = v128;
            v71 = v159;
            if (v86 != 1)
            {
              goto LABEL_84;
            }

            sub_20E04875C(v83, &qword_27C863B20, &unk_20E33C290);
            v28 = v137;
            v51 = v149;
          }

          else
          {
            v87 = v136;
            sub_20E0486F4(v83, v136, &qword_27C863B20, &unk_20E33C290);
            if (v84(v83 + v82, 1, v85) == 1)
            {
              sub_20E195C24(v87, type metadata accessor for TranscriptProtoCandidatePromptStatus);
              v43 = v158;
              v71 = v159;
              v25 = v128;
LABEL_84:
              sub_20E04875C(v83, &qword_27C868278, &qword_20E33B308);
              v28 = v137;
              goto LABEL_92;
            }

            v88 = v83 + v82;
            v89 = v146;
            sub_20E195B54(v88, v146, type metadata accessor for TranscriptProtoCandidatePromptStatus);
            v25 = v128;
            if (*(v87 + 9))
            {
              v28 = v137;
              v51 = v149;
              if ((*(v89 + 9) & 1) == 0)
              {
                goto LABEL_80;
              }
            }

            else
            {
              v28 = v137;
              v51 = v149;
              if (*(v89 + 9))
              {
                goto LABEL_80;
              }

              v90 = *v87;
              v91 = *v146;
              if (*(v87 + 8))
              {
                if (v90)
                {
                  if ((v146[1] & 1) == 0 || !v91)
                  {
                    goto LABEL_80;
                  }
                }

                else if ((v146[1] & 1) == 0 || v91)
                {
                  goto LABEL_80;
                }
              }

              else if ((v146[1] & 1) != 0 || v90 != v91)
              {
LABEL_80:
                sub_20E195C24(v146, type metadata accessor for TranscriptProtoCandidatePromptStatus);
                sub_20E195C24(v87, type metadata accessor for TranscriptProtoCandidatePromptStatus);
                sub_20E04875C(v148, &qword_27C863B20, &unk_20E33C290);
                v43 = v158;
                goto LABEL_91;
              }
            }

            sub_20E3221C0();
            sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            v92 = v146;
            v93 = sub_20E322850();
            sub_20E195C24(v92, type metadata accessor for TranscriptProtoCandidatePromptStatus);
            sub_20E195C24(v87, type metadata accessor for TranscriptProtoCandidatePromptStatus);
            sub_20E04875C(v148, &qword_27C863B20, &unk_20E33C290);
            v43 = v158;
            v71 = v159;
            if ((v93 & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          v94 = *(v72 + 28);
          v95 = *(v140 + 48);
          v96 = &v43[v94];
          v97 = v147;
          sub_20E0486F4(v96, v147, &qword_27C8639D0, &unk_20E33C230);
          sub_20E0486F4(&v71[v94], v97 + v95, &qword_27C8639D0, &unk_20E33C230);
          v98 = *v120;
          if ((*v120)(v97, 1, v51) == 1)
          {
            v69 = v98(v97 + v95, 1, v51) == 1;
            v99 = v97;
            v43 = v158;
            v25 = v128;
            if (!v69)
            {
              goto LABEL_86;
            }

            sub_20E04875C(v99, &qword_27C8639D0, &unk_20E33C230);
            v71 = v159;
          }

          else
          {
            v100 = v51;
            v101 = v139;
            sub_20E0486F4(v97, v139, &qword_27C8639D0, &unk_20E33C230);
            if (v98(v97 + v95, 1, v100) == 1)
            {
              sub_20E195C24(v101, type metadata accessor for TranscriptProtoStatementID);
              v99 = v97;
              v43 = v158;
              v25 = v128;
LABEL_86:
              v116 = &qword_27C867F30;
              v117 = &qword_20E33B000;
LABEL_90:
              sub_20E04875C(v99, v116, v117);
LABEL_91:
              v71 = v159;
LABEL_92:
              sub_20E195C24(v71, type metadata accessor for TranscriptProtoCandidate);
              sub_20E195C24(v43, type metadata accessor for TranscriptProtoCandidate);
              sub_20E04875C(v25, &qword_27C863B28, &unk_20E33C3E0);
LABEL_93:
              v30 = v131;
LABEL_94:
              sub_20E195C24(v28, type metadata accessor for TranscriptProtoParameter);
              sub_20E195C24(v30, type metadata accessor for TranscriptProtoParameter);
              goto LABEL_95;
            }

            v102 = v97 + v95;
            v103 = v150;
            sub_20E195B54(v102, v150, type metadata accessor for TranscriptProtoStatementID);
            v43 = v158;
            v104 = v101;
            if (*v101 != *v103)
            {
              goto LABEL_79;
            }

            v51 = v100;
            v105 = *(v104 + 16);
            v106 = *(v150 + 16);
            if (v105)
            {
              if (!v106 || (*(v104 + 8) != *(v150 + 8) || v105 != v106) && (sub_20E322D60() & 1) == 0)
              {
LABEL_79:
                sub_20E195C24(v150, type metadata accessor for TranscriptProtoStatementID);
                sub_20E195C24(v104, type metadata accessor for TranscriptProtoStatementID);
                sub_20E04875C(v147, &qword_27C8639D0, &unk_20E33C230);
                v71 = v159;
                v25 = v128;
                goto LABEL_92;
              }
            }

            else if (v106)
            {
              goto LABEL_79;
            }

            sub_20E3221C0();
            sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            v107 = v43;
            v108 = v150;
            v109 = sub_20E322850();
            v110 = v108;
            v43 = v107;
            sub_20E195C24(v110, type metadata accessor for TranscriptProtoStatementID);
            sub_20E195C24(v139, type metadata accessor for TranscriptProtoStatementID);
            sub_20E04875C(v147, &qword_27C8639D0, &unk_20E33C230);
            v71 = v159;
            v25 = v128;
            if ((v109 & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          sub_20E3221C0();
          sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v111 = sub_20E322850();
          sub_20E195C24(v71, type metadata accessor for TranscriptProtoCandidate);
          sub_20E195C24(v43, type metadata accessor for TranscriptProtoCandidate);
          sub_20E04875C(v25, &qword_27C863B28, &unk_20E33C3E0);
          v40 = v119;
          v30 = v131;
          v60 = v145;
          if ((v111 & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v112 = sub_20E322850();
        sub_20E195C24(v28, type metadata accessor for TranscriptProtoParameter);
        result = sub_20E195C24(v30, type metadata accessor for TranscriptProtoParameter);
        v49 = v130;
        if ((v112 & 1) == 0)
        {
          goto LABEL_95;
        }

        v52 = v60 + 1;
        if (v129 == v52)
        {
          goto LABEL_73;
        }
      }

      __break(1u);
LABEL_99:
      __break(1u);
      break;
    }

LABEL_73:
    v42 = v51;
    v113 = v40;
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v44 = v153;
    v114 = v157;
    v115 = sub_20E322850();
    sub_20E195C24(v114, type metadata accessor for TranscriptProtoParameterSet);
    sub_20E195C24(v44, type metadata accessor for TranscriptProtoParameterSet);
    if (v115)
    {
      v40 = v113 + 1;
      v39 = v122;
      v41 = v121;
      if (v113 + 1 != v135)
      {
        continue;
      }
    }

    return v115 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E151DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoCandidate(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B28, &unk_20E33C3E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868250, &qword_20E33B2F0);
  MEMORY[0x28223BE20](v46);
  v12 = &v40 - v11;
  v45 = type metadata accessor for TranscriptProtoParameter(0);
  v13 = MEMORY[0x28223BE20](v45);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = &v40 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
LABEL_29:
    v39 = 0;
    return v39 & 1;
  }

  if (!v19 || a1 == a2)
  {
    v39 = 1;
    return v39 & 1;
  }

  v41 = v7;
  v42 = v10;
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = a1 + v20;
  v49 = a2 + v20;
  v22 = (v5 + 48);
  v43 = *(v16 + 72);
  v44 = v4;
  v23 = v45;
  while (1)
  {
    v48 = v19;
    result = sub_20E195BBC(v21, v18, type metadata accessor for TranscriptProtoParameter);
    if (!v48)
    {
      break;
    }

    sub_20E195BBC(v49, v15, type metadata accessor for TranscriptProtoParameter);
    v25 = *v18 == *v15 && *(v18 + 1) == *(v15 + 1);
    if (!v25 && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_28;
    }

    v26 = v15[24];
    if (v18[24])
    {
      if (!v15[24])
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (*(v18 + 2) != *(v15 + 2))
      {
        v26 = 1;
      }

      if (v26)
      {
        goto LABEL_28;
      }
    }

    v47 = v21;
    v27 = *(v23 + 24);
    v28 = *(v46 + 48);
    sub_20E0486F4(&v18[v27], v12, &qword_27C863B28, &unk_20E33C3E0);
    sub_20E0486F4(&v15[v27], &v12[v28], &qword_27C863B28, &unk_20E33C3E0);
    v29 = *v22;
    v30 = v12;
    v31 = v12;
    v32 = v44;
    if ((*v22)(v30, 1, v44) == 1)
    {
      if (v29((v31 + v28), 1, v32) != 1)
      {
        goto LABEL_27;
      }

      sub_20E04875C(v31, &qword_27C863B28, &unk_20E33C3E0);
      v12 = v31;
      v33 = v47;
    }

    else
    {
      v34 = v42;
      sub_20E0486F4(v31, v42, &qword_27C863B28, &unk_20E33C3E0);
      if (v29((v31 + v28), 1, v32) == 1)
      {
        sub_20E195C24(v34, type metadata accessor for TranscriptProtoCandidate);
LABEL_27:
        sub_20E04875C(v31, &qword_27C868250, &qword_20E33B2F0);
LABEL_28:
        sub_20E195C24(v15, type metadata accessor for TranscriptProtoParameter);
        sub_20E195C24(v18, type metadata accessor for TranscriptProtoParameter);
        goto LABEL_29;
      }

      v35 = v22;
      v36 = v41;
      sub_20E195B54(v31 + v28, v41, type metadata accessor for TranscriptProtoCandidate);
      v37 = _s23LighthouseDataProcessor24TranscriptProtoCandidateV2eeoiySbAC_ACtFZ_0(v34, v36);
      v38 = v36;
      v22 = v35;
      sub_20E195C24(v38, type metadata accessor for TranscriptProtoCandidate);
      sub_20E195C24(v34, type metadata accessor for TranscriptProtoCandidate);
      sub_20E04875C(v31, &qword_27C863B28, &unk_20E33C3E0);
      v23 = v45;
      v12 = v31;
      v33 = v47;
      if ((v37 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v39 = sub_20E322850();
    sub_20E195C24(v15, type metadata accessor for TranscriptProtoParameter);
    sub_20E195C24(v18, type metadata accessor for TranscriptProtoParameter);
    if (v39)
    {
      v49 += v43;
      v21 = v33 + v43;
      v19 = v48 - 1;
      if (v48 != 1)
      {
        continue;
      }
    }

    return v39 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E152338(uint64_t a1, uint64_t a2)
{
  v133 = type metadata accessor for TranscriptProtoStatementID(0);
  v4 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v137 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v6 - 8);
  v128 = &v106 - v7;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v129);
  v141 = &v106 - v8;
  v136 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v9 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v132 = (&v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B20, &unk_20E33C290);
  MEMORY[0x28223BE20](v11 - 8);
  v125 = &v106 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868278, &qword_20E33B308);
  MEMORY[0x28223BE20](v13);
  v135 = &v106 - v14;
  v139 = type metadata accessor for ToolKitProtoTypedValue(0);
  v15 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v126 = (&v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v17 - 8);
  v130 = (&v106 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  MEMORY[0x28223BE20](v19);
  v140 = &v106 - v20;
  v21 = type metadata accessor for TranscriptProtoCandidate(0);
  v134 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v106 - v25;
  Results = type metadata accessor for TranscriptProtoQueryResults(0);
  v28 = MEMORY[0x28223BE20](Results);
  v138 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v131 = &v106 - v32;
  v33 = *(a1 + 16);
  if (v33 != *(a2 + 16))
  {
LABEL_76:
    v102 = 0;
    return v102 & 1;
  }

  if (!v33 || a1 == a2)
  {
    v102 = 1;
    return v102 & 1;
  }

  v111 = v30;
  v34 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v35 = a1 + v34;
  v36 = 0;
  v112 = a2 + v34;
  v124 = (v15 + 48);
  v119 = (v9 + 48);
  v117 = (v4 + 48);
  v37 = *(v31 + 72);
  v38 = v131;
  v116 = v19;
  v142 = v21;
  v122 = v33;
  v110 = v35;
  v109 = v37;
  while (1)
  {
    v39 = v37 * v36;
    result = sub_20E195BBC(v35 + v37 * v36, v38, type metadata accessor for TranscriptProtoQueryResults);
    if (v36 == v122)
    {
      break;
    }

    v118 = v36;
    v41 = v112 + v39;
    v42 = v138;
    result = sub_20E195BBC(v41, v138, type metadata accessor for TranscriptProtoQueryResults);
    v43 = *v38;
    v44 = *v42;
    v45 = *(*v38 + 16);
    if (v45 != *(*v42 + 16))
    {
LABEL_75:
      sub_20E195C24(v138, type metadata accessor for TranscriptProtoQueryResults);
      sub_20E195C24(v131, type metadata accessor for TranscriptProtoQueryResults);
      goto LABEL_76;
    }

    v46 = v13;
    if (v45 && v43 != v44)
    {
      v47 = 0;
      v48 = (*(v134 + 80) + 32) & ~*(v134 + 80);
      v121 = v43 + v48;
      v120 = v44 + v48;
      v108 = v26;
      v127 = v46;
      v107 = v24;
      v115 = v43;
      v114 = v44;
      v113 = v45;
      while (v47 < *(v43 + 16))
      {
        v49 = *(v134 + 72) * v47;
        result = sub_20E195BBC(v121 + v49, v26, type metadata accessor for TranscriptProtoCandidate);
        if (v47 >= *(v44 + 16))
        {
          goto LABEL_79;
        }

        v123 = v47;
        sub_20E195BBC(v120 + v49, v24, type metadata accessor for TranscriptProtoCandidate);
        v50 = *(v142 + 20);
        v51 = *(v19 + 48);
        v52 = v140;
        sub_20E0486F4(&v26[v50], v140, &qword_27C863B18, &qword_20E323EB0);
        sub_20E0486F4(&v24[v50], v52 + v51, &qword_27C863B18, &qword_20E323EB0);
        v53 = *v124;
        v54 = v139;
        if ((*v124)(v52, 1, v139) == 1)
        {
          if (v53(v52 + v51, 1, v54) != 1)
          {
            goto LABEL_65;
          }

          sub_20E04875C(v52, &qword_27C863B18, &qword_20E323EB0);
          v56 = v141;
          v55 = v142;
          v57 = v127;
        }

        else
        {
          v58 = v54;
          v59 = v130;
          sub_20E0486F4(v52, v130, &qword_27C863B18, &qword_20E323EB0);
          if (v53(v52 + v51, 1, v58) == 1)
          {
            sub_20E195C24(v59, type metadata accessor for ToolKitProtoTypedValue);
LABEL_65:
            v104 = &qword_27C867ED8;
            v105 = &qword_20E33AFA8;
            v75 = v52;
LABEL_73:
            sub_20E04875C(v75, v104, v105);
            goto LABEL_74;
          }

          v60 = v126;
          sub_20E195B54(v52 + v51, v126, type metadata accessor for ToolKitProtoTypedValue);
          v61 = *v59;
          v62 = *v60;
          if ((~*v59 & 0xF000000000000007) != 0)
          {
            v144 = *v59;
            if ((~v62 & 0xF000000000000007) == 0)
            {
              sub_20E047CF8(v61);
              sub_20E047CF8(v62);
              sub_20E047CF8(v61);

LABEL_71:
              sub_20E047CA8(v61);
              sub_20E047CA8(v62);
LABEL_72:
              sub_20E195C24(v60, type metadata accessor for ToolKitProtoTypedValue);
              sub_20E195C24(v130, type metadata accessor for ToolKitProtoTypedValue);
              v104 = &qword_27C863B18;
              v105 = &qword_20E323EB0;
              v75 = v140;
              goto LABEL_73;
            }

            v143 = v62;
            sub_20E047CF8(v61);
            sub_20E047CF8(v62);
            sub_20E047CF8(v61);
            v63 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v144, &v143);

            sub_20E047CA8(v61);
            if ((v63 & 1) == 0)
            {
              goto LABEL_72;
            }
          }

          else
          {
            sub_20E047CF8(v61);
            sub_20E047CF8(v62);
            if ((~v62 & 0xF000000000000007) != 0)
            {
              goto LABEL_71;
            }

            sub_20E047CA8(v61);
          }

          sub_20E3221C0();
          sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v64 = v130;
          v65 = sub_20E322850();
          sub_20E195C24(v60, type metadata accessor for ToolKitProtoTypedValue);
          sub_20E195C24(v64, type metadata accessor for ToolKitProtoTypedValue);
          sub_20E04875C(v140, &qword_27C863B18, &qword_20E323EB0);
          v56 = v141;
          v55 = v142;
          v57 = v127;
          if ((v65 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        if (*v26 != *v24)
        {
          goto LABEL_74;
        }

        v66 = *(v55 + 24);
        v67 = *(v57 + 48);
        v68 = &v26[v66];
        v69 = v26;
        v70 = v24;
        v71 = v135;
        sub_20E0486F4(v68, v135, &qword_27C863B20, &unk_20E33C290);
        sub_20E0486F4(&v70[v66], v71 + v67, &qword_27C863B20, &unk_20E33C290);
        v72 = *v119;
        v73 = v136;
        if ((*v119)(v71, 1, v136) == 1)
        {
          v74 = v72(v71 + v67, 1, v73) == 1;
          v75 = v71;
          v24 = v70;
          v26 = v69;
          if (!v74)
          {
            goto LABEL_67;
          }

          sub_20E04875C(v75, &qword_27C863B20, &unk_20E33C290);
          v76 = v56;
          v77 = v142;
        }

        else
        {
          v78 = v56;
          v79 = v125;
          sub_20E0486F4(v71, v125, &qword_27C863B20, &unk_20E33C290);
          if (v72(v71 + v67, 1, v73) == 1)
          {
            sub_20E195C24(v79, type metadata accessor for TranscriptProtoCandidatePromptStatus);
            v75 = v71;
            v24 = v107;
            v26 = v108;
LABEL_67:
            v104 = &qword_27C868278;
            v105 = &qword_20E33B308;
            goto LABEL_73;
          }

          v80 = v71 + v67;
          v81 = v132;
          sub_20E195B54(v80, v132, type metadata accessor for TranscriptProtoCandidatePromptStatus);
          if (*(v79 + 9))
          {
            if ((*(v81 + 9) & 1) == 0)
            {
              goto LABEL_63;
            }
          }

          else
          {
            if (*(v81 + 9))
            {
              goto LABEL_63;
            }

            v82 = *v79;
            v83 = *v132;
            if (*(v79 + 8))
            {
              if (v82)
              {
                if ((v132[1] & 1) == 0 || !v83)
                {
                  goto LABEL_63;
                }
              }

              else if ((v132[1] & 1) == 0 || v83)
              {
                goto LABEL_63;
              }
            }

            else if ((v132[1] & 1) != 0 || v82 != v83)
            {
LABEL_63:
              sub_20E195C24(v132, type metadata accessor for TranscriptProtoCandidatePromptStatus);
              sub_20E195C24(v79, type metadata accessor for TranscriptProtoCandidatePromptStatus);
              sub_20E04875C(v135, &qword_27C863B20, &unk_20E33C290);
              v24 = v107;
              v26 = v108;
LABEL_74:
              sub_20E195C24(v24, type metadata accessor for TranscriptProtoCandidate);
              sub_20E195C24(v26, type metadata accessor for TranscriptProtoCandidate);
              goto LABEL_75;
            }
          }

          sub_20E3221C0();
          sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v84 = v132;
          v85 = sub_20E322850();
          sub_20E195C24(v84, type metadata accessor for TranscriptProtoCandidatePromptStatus);
          sub_20E195C24(v79, type metadata accessor for TranscriptProtoCandidatePromptStatus);
          sub_20E04875C(v135, &qword_27C863B20, &unk_20E33C290);
          v76 = v78;
          v24 = v107;
          v26 = v108;
          v77 = v142;
          if ((v85 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        v86 = *(v77 + 28);
        v87 = *(v129 + 48);
        v88 = v141;
        sub_20E0486F4(&v26[v86], v76, &qword_27C8639D0, &unk_20E33C230);
        sub_20E0486F4(&v24[v86], v88 + v87, &qword_27C8639D0, &unk_20E33C230);
        v89 = *v117;
        v90 = v133;
        if ((*v117)(v88, 1, v133) == 1)
        {
          if (v89(v88 + v87, 1, v90) != 1)
          {
            goto LABEL_69;
          }

          sub_20E04875C(v88, &qword_27C8639D0, &unk_20E33C230);
          v46 = v127;
        }

        else
        {
          v91 = v128;
          sub_20E0486F4(v88, v128, &qword_27C8639D0, &unk_20E33C230);
          if (v89(v88 + v87, 1, v90) == 1)
          {
            sub_20E195C24(v91, type metadata accessor for TranscriptProtoStatementID);
LABEL_69:
            v104 = &qword_27C867F30;
            v105 = &qword_20E33B000;
            v75 = v88;
            goto LABEL_73;
          }

          v92 = v88 + v87;
          v93 = v137;
          sub_20E195B54(v92, v137, type metadata accessor for TranscriptProtoStatementID);
          v94 = v127;
          if (*v91 != *v93)
          {
            goto LABEL_62;
          }

          v95 = *(v91 + 16);
          v96 = *(v137 + 16);
          if (v95)
          {
            if (!v96 || (*(v91 + 8) != *(v137 + 8) || v95 != v96) && (sub_20E322D60() & 1) == 0)
            {
LABEL_62:
              sub_20E195C24(v137, type metadata accessor for TranscriptProtoStatementID);
              sub_20E195C24(v91, type metadata accessor for TranscriptProtoStatementID);
              v104 = &qword_27C8639D0;
              v105 = &unk_20E33C230;
              v75 = v141;
              goto LABEL_73;
            }
          }

          else if (v96)
          {
            goto LABEL_62;
          }

          sub_20E3221C0();
          sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v97 = v137;
          v98 = sub_20E322850();
          v46 = v94;
          sub_20E195C24(v97, type metadata accessor for TranscriptProtoStatementID);
          sub_20E195C24(v128, type metadata accessor for TranscriptProtoStatementID);
          sub_20E04875C(v141, &qword_27C8639D0, &unk_20E33C230);
          if ((v98 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v99 = sub_20E322850();
        sub_20E195C24(v24, type metadata accessor for TranscriptProtoCandidate);
        result = sub_20E195C24(v26, type metadata accessor for TranscriptProtoCandidate);
        v19 = v116;
        v43 = v115;
        v44 = v114;
        if ((v99 & 1) == 0)
        {
          goto LABEL_75;
        }

        v47 = v123 + 1;
        if (v113 == v123 + 1)
        {
          goto LABEL_58;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
      break;
    }

LABEL_58:
    v13 = v46;
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v100 = v131;
    v101 = v138;
    v102 = sub_20E322850();
    v103 = v101;
    v38 = v100;
    sub_20E195C24(v103, type metadata accessor for TranscriptProtoQueryResults);
    sub_20E195C24(v100, type metadata accessor for TranscriptProtoQueryResults);
    if (v102)
    {
      v36 = v118 + 1;
      v35 = v110;
      v37 = v109;
      if (v118 + 1 != v122)
      {
        continue;
      }
    }

    return v102 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E1534D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_20E195BBC(v20, v17, a4);
        sub_20E195BBC(v21, v14, a4);
        v23 = a5(v17, v14);
        sub_20E195C24(v14, a6);
        sub_20E195C24(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_20E153678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868610, &qword_20E33B620);
  MEMORY[0x28223BE20](v42);
  v11 = &v34 - v10;
  v41 = type metadata accessor for TranscriptProtoShimParameter(0);
  v12 = MEMORY[0x28223BE20](v41);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_18:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v36 = v14;
  v37 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v39 = *(v15 + 72);
  v40 = v4;
  v23 = &qword_27C865B18;
  v35 = &v34 - v16;
  while (1)
  {
    result = sub_20E195BBC(v20, v17, type metadata accessor for TranscriptProtoShimParameter);
    if (!v18)
    {
      break;
    }

    v43 = v18;
    sub_20E195BBC(v21, v14, type metadata accessor for TranscriptProtoShimParameter);
    v25 = *(v42 + 48);
    sub_20E0486F4(v17, v11, v23, &qword_20E326398);
    sub_20E0486F4(v14, &v11[v25], v23, &qword_20E326398);
    v26 = *v22;
    v27 = v23;
    v28 = v40;
    if ((*v22)(v11, 1, v40) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        goto LABEL_16;
      }

      v23 = v27;
      sub_20E04875C(v11, v27, &qword_20E326398);
    }

    else
    {
      v29 = v22;
      v30 = v37;
      sub_20E0486F4(v11, v37, v27, &qword_20E326398);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        sub_20E195C24(v30, type metadata accessor for TranscriptProtoShimParameterEnum);
        v17 = v35;
        v14 = v36;
LABEL_16:
        sub_20E04875C(v11, &qword_27C868610, &qword_20E33B620);
LABEL_17:
        sub_20E195C24(v14, type metadata accessor for TranscriptProtoShimParameter);
        sub_20E195C24(v17, type metadata accessor for TranscriptProtoShimParameter);
        goto LABEL_18;
      }

      v31 = v38;
      sub_20E195B54(&v11[v25], v38, type metadata accessor for TranscriptProtoShimParameterEnum);
      v32 = static TranscriptProtoShimParameterEnum.== infix(_:_:)(v30, v31);
      sub_20E195C24(v31, type metadata accessor for TranscriptProtoShimParameterEnum);
      sub_20E195C24(v30, type metadata accessor for TranscriptProtoShimParameterEnum);
      sub_20E04875C(v11, v27, &qword_20E326398);
      v22 = v29;
      v17 = v35;
      v14 = v36;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_20E322850();
    sub_20E195C24(v14, type metadata accessor for TranscriptProtoShimParameter);
    sub_20E195C24(v17, type metadata accessor for TranscriptProtoShimParameter);
    if (v33)
    {
      v18 = v43 - 1;
      v21 += v39;
      v20 += v39;
      if (v43 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E153BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoUitype(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682C0, &qword_20E33B350);
  MEMORY[0x28223BE20](v42);
  v11 = &v34 - v10;
  v41 = type metadata accessor for TranscriptProtoUIType(0);
  v12 = MEMORY[0x28223BE20](v41);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_18:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v36 = v14;
  v37 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v39 = *(v15 + 72);
  v40 = v4;
  v23 = &qword_27C865DC0;
  v35 = &v34 - v16;
  while (1)
  {
    result = sub_20E195BBC(v20, v17, type metadata accessor for TranscriptProtoUIType);
    if (!v18)
    {
      break;
    }

    v43 = v18;
    sub_20E195BBC(v21, v14, type metadata accessor for TranscriptProtoUIType);
    v25 = *(v42 + 48);
    sub_20E0486F4(v17, v11, v23, &unk_20E33C3A0);
    sub_20E0486F4(v14, &v11[v25], v23, &unk_20E33C3A0);
    v26 = *v22;
    v27 = v23;
    v28 = v40;
    if ((*v22)(v11, 1, v40) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        goto LABEL_16;
      }

      v23 = v27;
      sub_20E04875C(v11, v27, &unk_20E33C3A0);
    }

    else
    {
      v29 = v22;
      v30 = v37;
      sub_20E0486F4(v11, v37, v27, &unk_20E33C3A0);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        sub_20E195C24(v30, type metadata accessor for TranscriptProtoUitype);
        v17 = v35;
        v14 = v36;
LABEL_16:
        sub_20E04875C(v11, &qword_27C8682C0, &qword_20E33B350);
LABEL_17:
        sub_20E195C24(v14, type metadata accessor for TranscriptProtoUIType);
        sub_20E195C24(v17, type metadata accessor for TranscriptProtoUIType);
        goto LABEL_18;
      }

      v31 = v38;
      sub_20E195B54(&v11[v25], v38, type metadata accessor for TranscriptProtoUitype);
      v32 = static TranscriptProtoUitype.== infix(_:_:)(v30, v31);
      sub_20E195C24(v31, type metadata accessor for TranscriptProtoUitype);
      sub_20E195C24(v30, type metadata accessor for TranscriptProtoUitype);
      sub_20E04875C(v11, v27, &unk_20E33C3A0);
      v22 = v29;
      v17 = v35;
      v14 = v36;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_20E322850();
    sub_20E195C24(v14, type metadata accessor for TranscriptProtoUIType);
    sub_20E195C24(v17, type metadata accessor for TranscriptProtoUIType);
    if (v33)
    {
      v18 = v43 - 1;
      v21 += v39;
      v20 += v39;
      if (v43 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E1540D0(uint64_t a1, uint64_t a2)
{
  v48 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v4 = MEMORY[0x28223BE20](v48);
  v56 = (&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v7 = (&v46 - v6);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682F8, &qword_20E3420B0);
  MEMORY[0x28223BE20](v50);
  v49 = &v46 - v8;
  v60 = type metadata accessor for TranscriptProtoLabel(0);
  v9 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v53 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682A8, &qword_20E33B338);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = &v46 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682B0, &qword_20E33B340);
  MEMORY[0x28223BE20](v54);
  v51 = &v46 - v13;
  v52 = type metadata accessor for TranscriptProtoUILabel(0);
  v14 = MEMORY[0x28223BE20](v52);
  v61 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
LABEL_26:
    v42 = 0;
    return v42 & 1;
  }

  if (!v19 || a1 == a2)
  {
    v42 = 1;
    return v42 & 1;
  }

  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = a1 + v20;
  v22 = a2 + v20;
  v23 = (v9 + 48);
  v24 = *(v16 + 72);
  v25 = v51;
  v55 = &v46 - v17;
  v46 = v24;
  v47 = (v9 + 48);
  while (1)
  {
    v58 = v21;
    result = sub_20E195BBC(v21, v18, type metadata accessor for TranscriptProtoUILabel);
    if (!v19)
    {
      break;
    }

    v57 = v19;
    v27 = v61;
    sub_20E195BBC(v22, v61, type metadata accessor for TranscriptProtoUILabel);
    v28 = *(v54 + 48);
    sub_20E0486F4(v18, v25, &qword_27C8682A8, &qword_20E33B338);
    sub_20E0486F4(v27, v25 + v28, &qword_27C8682A8, &qword_20E33B338);
    v29 = *v23;
    if ((*v23)(v25, 1, v60) == 1)
    {
      if (v29(v25 + v28, 1, v60) != 1)
      {
        goto LABEL_22;
      }

      sub_20E04875C(v25, &qword_27C8682A8, &qword_20E33B338);
    }

    else
    {
      sub_20E0486F4(v25, v59, &qword_27C8682A8, &qword_20E33B338);
      if (v29(v25 + v28, 1, v60) == 1)
      {
        sub_20E195C24(v59, type metadata accessor for TranscriptProtoLabel);
LABEL_22:
        v44 = &qword_27C8682B0;
        v45 = &qword_20E33B340;
        goto LABEL_24;
      }

      v30 = v53;
      sub_20E195B54(v25 + v28, v53, type metadata accessor for TranscriptProtoLabel);
      v31 = v49;
      v32 = *(v50 + 48);
      sub_20E195BBC(v59, v49, type metadata accessor for TranscriptProtoLabel);
      sub_20E195BBC(v30, v31 + v32, type metadata accessor for TranscriptProtoLabel);
      sub_20E195B54(v31, v7, type metadata accessor for TranscriptProtoUIConfirmationLabel);
      v33 = v31 + v32;
      v34 = v56;
      sub_20E195B54(v33, v56, type metadata accessor for TranscriptProtoUIConfirmationLabel);
      if ((*v7 != *v34 || v7[1] != v34[1]) && (sub_20E322D60() & 1) == 0 || (v7[2] != v56[2] || v7[3] != v56[3]) && (sub_20E322D60() & 1) == 0)
      {
        sub_20E195C24(v56, type metadata accessor for TranscriptProtoUIConfirmationLabel);
        sub_20E195C24(v7, type metadata accessor for TranscriptProtoUIConfirmationLabel);
        sub_20E195C24(v53, type metadata accessor for TranscriptProtoLabel);
        sub_20E195C24(v59, type metadata accessor for TranscriptProtoLabel);
        v44 = &qword_27C8682A8;
        v45 = &qword_20E33B338;
LABEL_24:
        sub_20E04875C(v25, v44, v45);
LABEL_25:
        sub_20E195C24(v61, type metadata accessor for TranscriptProtoUILabel);
        sub_20E195C24(v18, type metadata accessor for TranscriptProtoUILabel);
        goto LABEL_26;
      }

      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v35 = v7;
      v36 = v56;
      v37 = sub_20E322850();
      v38 = v36;
      v7 = v35;
      v18 = v55;
      v39 = v53;
      v40 = v59;
      v25 = v51;
      sub_20E195C24(v38, type metadata accessor for TranscriptProtoUIConfirmationLabel);
      sub_20E195C24(v7, type metadata accessor for TranscriptProtoUIConfirmationLabel);
      sub_20E195C24(v39, type metadata accessor for TranscriptProtoLabel);
      sub_20E195C24(v40, type metadata accessor for TranscriptProtoLabel);
      sub_20E04875C(v25, &qword_27C8682A8, &qword_20E33B338);
      v24 = v46;
      v23 = v47;
      if ((v37 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v41 = v61;
    v42 = sub_20E322850();
    v43 = v41;
    v18 = v55;
    sub_20E195C24(v43, type metadata accessor for TranscriptProtoUILabel);
    sub_20E195C24(v18, type metadata accessor for TranscriptProtoUILabel);
    if (v42)
    {
      v19 = v57 - 1;
      v22 += v24;
      v21 = v58 + v24;
      if (v57 != 1)
      {
        continue;
      }
    }

    return v42 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E154880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868370, &qword_20E33B3E0);
  MEMORY[0x28223BE20](v42);
  v11 = &v34 - v10;
  v41 = type metadata accessor for TranscriptProtoVisualOutput(0);
  v12 = MEMORY[0x28223BE20](v41);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_18:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v36 = v14;
  v37 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v39 = *(v15 + 72);
  v40 = v4;
  v23 = &qword_27C865D18;
  v35 = &v34 - v16;
  while (1)
  {
    result = sub_20E195BBC(v20, v17, type metadata accessor for TranscriptProtoVisualOutput);
    if (!v18)
    {
      break;
    }

    v43 = v18;
    sub_20E195BBC(v21, v14, type metadata accessor for TranscriptProtoVisualOutput);
    v25 = *(v42 + 48);
    sub_20E0486F4(v17, v11, v23, &unk_20E33C370);
    sub_20E0486F4(v14, &v11[v25], v23, &unk_20E33C370);
    v26 = *v22;
    v27 = v23;
    v28 = v40;
    if ((*v22)(v11, 1, v40) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        goto LABEL_16;
      }

      v23 = v27;
      sub_20E04875C(v11, v27, &unk_20E33C370);
    }

    else
    {
      v29 = v22;
      v30 = v37;
      sub_20E0486F4(v11, v37, v27, &unk_20E33C370);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        sub_20E195C24(v30, type metadata accessor for TranscriptProtoVisualOutputType);
        v17 = v35;
        v14 = v36;
LABEL_16:
        sub_20E04875C(v11, &qword_27C868370, &qword_20E33B3E0);
LABEL_17:
        sub_20E195C24(v14, type metadata accessor for TranscriptProtoVisualOutput);
        sub_20E195C24(v17, type metadata accessor for TranscriptProtoVisualOutput);
        goto LABEL_18;
      }

      v31 = v38;
      sub_20E195B54(&v11[v25], v38, type metadata accessor for TranscriptProtoVisualOutputType);
      v32 = static TranscriptProtoVisualOutputType.== infix(_:_:)(v30, v31);
      sub_20E195C24(v31, type metadata accessor for TranscriptProtoVisualOutputType);
      sub_20E195C24(v30, type metadata accessor for TranscriptProtoVisualOutputType);
      sub_20E04875C(v11, v27, &unk_20E33C370);
      v22 = v29;
      v17 = v35;
      v14 = v36;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_20E322850();
    sub_20E195C24(v14, type metadata accessor for TranscriptProtoVisualOutput);
    sub_20E195C24(v17, type metadata accessor for TranscriptProtoVisualOutput);
    if (v33)
    {
      v18 = v43 - 1;
      v21 += v39;
      v20 += v39;
      if (v43 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E154E00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_20E195BBC(v13, v10, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      sub_20E195BBC(v14, v7, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      if ((sub_20E155054(*v10, *v7) & 1) == 0)
      {
        break;
      }

      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v16 = sub_20E322850();
      sub_20E195C24(v7, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      sub_20E195C24(v10, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_20E195C24(v7, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    goto LABEL_11;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_20E155054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_19:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_20E195BBC(v13, v10, type metadata accessor for TranscriptProtoSpeechPackage.Token);
      sub_20E195BBC(v14, v7, type metadata accessor for TranscriptProtoSpeechPackage.Token);
      v16 = *v10 == *v7 && *(v10 + 1) == *(v7 + 1);
      if (!v16 && (sub_20E322D60() & 1) == 0 || *(v10 + 2) != *(v7 + 2) || *(v10 + 3) != *(v7 + 3) || *(v10 + 4) != *(v7 + 4) || *(v10 + 5) != *(v7 + 5))
      {
        break;
      }

      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      sub_20E195C24(v7, type metadata accessor for TranscriptProtoSpeechPackage.Token);
      sub_20E195C24(v10, type metadata accessor for TranscriptProtoSpeechPackage.Token);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_20E195C24(v7, type metadata accessor for TranscriptProtoSpeechPackage.Token);
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoSpeechPackage.Token);
    goto LABEL_19;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_20E1552F8(uint64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for ToolKitProtoTypedValue(0);
  v4 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v39 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = (&v37 - v7);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  MEMORY[0x28223BE20](v40);
  v9 = &v37 - v8;
  v43 = type metadata accessor for TranscriptProtoVariableSetter(0);
  v10 = MEMORY[0x28223BE20](v43);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v15 = (&v37 - v14);
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
LABEL_29:
    v33 = 0;
    return v33 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v37 = *(v13 + 72);
  v38 = (v4 + 48);
  v41 = (&v37 - v14);
  while (1)
  {
    result = sub_20E195BBC(v18, v15, type metadata accessor for TranscriptProtoVariableSetter);
    if (!v16)
    {
      break;
    }

    sub_20E195BBC(v19, v12, type metadata accessor for TranscriptProtoVariableSetter);
    v21 = *(v43 + 20);
    v22 = *(v40 + 48);
    sub_20E0486F4(v15 + v21, v9, &qword_27C863B18, &qword_20E323EB0);
    sub_20E0486F4(v12 + v21, &v9[v22], &qword_27C863B18, &qword_20E323EB0);
    v23 = *v38;
    if ((*v38)(v9, 1, v44) == 1)
    {
      if (v23(&v9[v22], 1, v44) != 1)
      {
        goto LABEL_23;
      }

      sub_20E04875C(v9, &qword_27C863B18, &qword_20E323EB0);
      v24 = v41;
    }

    else
    {
      sub_20E0486F4(v9, v42, &qword_27C863B18, &qword_20E323EB0);
      if (v23(&v9[v22], 1, v44) == 1)
      {
        sub_20E195C24(v42, type metadata accessor for ToolKitProtoTypedValue);
LABEL_23:
        v35 = &qword_27C867ED8;
        v36 = &qword_20E33AFA8;
LABEL_27:
        sub_20E04875C(v9, v35, v36);
        v24 = v41;
LABEL_28:
        sub_20E195C24(v12, type metadata accessor for TranscriptProtoVariableSetter);
        sub_20E195C24(v24, type metadata accessor for TranscriptProtoVariableSetter);
        goto LABEL_29;
      }

      v25 = &v9[v22];
      v26 = v39;
      sub_20E195B54(v25, v39, type metadata accessor for ToolKitProtoTypedValue);
      v27 = *v42;
      v28 = *v26;
      if ((~*v42 & 0xF000000000000007) != 0)
      {
        v46 = *v42;
        if ((~v28 & 0xF000000000000007) == 0)
        {
          sub_20E047CF8(v27);
          sub_20E047CF8(v28);
          sub_20E047CF8(v27);

LABEL_25:
          sub_20E047CA8(v27);
          sub_20E047CA8(v28);
LABEL_26:
          sub_20E195C24(v39, type metadata accessor for ToolKitProtoTypedValue);
          sub_20E195C24(v42, type metadata accessor for ToolKitProtoTypedValue);
          v35 = &qword_27C863B18;
          v36 = &qword_20E323EB0;
          goto LABEL_27;
        }

        v45 = v28;
        sub_20E047CF8(v27);
        sub_20E047CF8(v28);
        sub_20E047CF8(v27);
        v29 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v46, &v45);

        sub_20E047CA8(v27);
        if ((v29 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        sub_20E047CF8(*v42);
        sub_20E047CF8(v28);
        if ((~v28 & 0xF000000000000007) != 0)
        {
          goto LABEL_25;
        }

        sub_20E047CA8(v27);
      }

      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v30 = v42;
      v31 = v39;
      v32 = sub_20E322850();
      sub_20E195C24(v31, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E195C24(v30, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E04875C(v9, &qword_27C863B18, &qword_20E323EB0);
      v24 = v41;
      if ((v32 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    if ((sub_20E15CB48(*v24, *v12) & 1) == 0)
    {
      goto LABEL_28;
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_20E322850();
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoVariableSetter);
    sub_20E195C24(v24, type metadata accessor for TranscriptProtoVariableSetter);
    if (v33)
    {
      v19 += v37;
      v18 += v37;
      v34 = v16-- == 1;
      v15 = v41;
      if (!v34)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E1559DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v33 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_43:
    v32 = 0;
    return v32 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v32 = 1;
    return v32 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v34 = a2 + v13;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_20E195BBC(v14 + v15 * v12, v10, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
    if (v12 == v11)
    {
      break;
    }

    result = sub_20E195BBC(v34 + v15 * v12, v7, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
    v17 = *v10;
    v18 = *v7;
    v19 = *(*v10 + 16);
    if (v19 != *(*v7 + 16))
    {
      goto LABEL_42;
    }

    if (v19)
    {
      v20 = v17 == v18;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v23 = (v17 + 40);
      v24 = (v18 + 40);
      while (v19)
      {
        result = *(v23 - 1);
        if (result != *(v24 - 1) || *v23 != *v24)
        {
          result = sub_20E322D60();
          if ((result & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v23 += 2;
        v24 += 2;
        if (!--v19)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      __break(1u);
      break;
    }

LABEL_12:
    v21 = v10[3];
    v22 = v7[3];
    if (v21)
    {
      if (!v22 || (v10[2] != v7[2] || v21 != v22) && (sub_20E322D60() & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (v22)
    {
      goto LABEL_42;
    }

    v26 = v10[1];
    v27 = v7[1];
    v28 = *(v26 + 16);
    if (v28 != *(v27 + 16))
    {
      goto LABEL_42;
    }

    if (v28 && v26 != v27)
    {
      v29 = (v26 + 40);
      v30 = (v27 + 40);
      while (1)
      {
        v31 = *(v29 - 1) == *(v30 - 1) && *v29 == *v30;
        if (!v31 && (sub_20E322D60() & 1) == 0)
        {
          break;
        }

        v29 += 2;
        v30 += 2;
        if (!--v28)
        {
          goto LABEL_38;
        }
      }

LABEL_42:
      sub_20E195C24(v7, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
      sub_20E195C24(v10, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
      goto LABEL_43;
    }

LABEL_38:
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v32 = sub_20E322850();
    sub_20E195C24(v7, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
    sub_20E195C24(v10, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
    if ((v32 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v32 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E155D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB8, &qword_20E33AF88);
  MEMORY[0x28223BE20](v44);
  v11 = &v36 - v10;
  v43 = type metadata accessor for ToolKitProtoRuntimeRequirement(0);
  v12 = MEMORY[0x28223BE20](v43);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v36 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_19:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v38 = &v36 - v16;
  v39 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v41 = *(v15 + 72);
  v42 = v4;
  v23 = &qword_27C867EB0;
  v37 = v14;
  while (1)
  {
    result = sub_20E195BBC(v20, v17, type metadata accessor for ToolKitProtoRuntimeRequirement);
    if (!v18)
    {
      break;
    }

    v45 = v18;
    sub_20E195BBC(v21, v14, type metadata accessor for ToolKitProtoRuntimeRequirement);
    v25 = *(v44 + 48);
    sub_20E0486F4(v17, v11, v23, &qword_20E346320);
    sub_20E0486F4(v14, &v11[v25], v23, &qword_20E346320);
    v26 = *v22;
    v27 = v23;
    v28 = v42;
    if ((*v22)(v11, 1, v42) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        sub_20E195C24(v14, type metadata accessor for ToolKitProtoRuntimeRequirement);
        v35 = v17;
        v34 = type metadata accessor for ToolKitProtoRuntimeRequirement;
        goto LABEL_17;
      }

      v23 = v27;
      sub_20E04875C(v11, v27, &qword_20E346320);
    }

    else
    {
      v29 = v22;
      v30 = v39;
      sub_20E0486F4(v11, v39, v27, &qword_20E346320);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        sub_20E195C24(v37, type metadata accessor for ToolKitProtoRuntimeRequirement);
        sub_20E195C24(v38, type metadata accessor for ToolKitProtoRuntimeRequirement);
        v34 = type metadata accessor for ToolKitProtoRuntimeRequirementKind;
        v35 = v30;
LABEL_17:
        sub_20E195C24(v35, v34);
        sub_20E04875C(v11, &qword_27C867EB8, &qword_20E33AF88);
        goto LABEL_19;
      }

      v31 = v40;
      sub_20E195B54(&v11[v25], v40, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      v32 = static ToolKitProtoRuntimeRequirementKind.== infix(_:_:)(v30, v31);
      sub_20E195C24(v31, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      sub_20E195C24(v30, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      sub_20E04875C(v11, v27, &qword_20E346320);
      v22 = v29;
      v14 = v37;
      v17 = v38;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        sub_20E195C24(v37, type metadata accessor for ToolKitProtoRuntimeRequirement);
        sub_20E195C24(v17, type metadata accessor for ToolKitProtoRuntimeRequirement);
        goto LABEL_19;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_20E322850();
    sub_20E195C24(v14, type metadata accessor for ToolKitProtoRuntimeRequirement);
    sub_20E195C24(v17, type metadata accessor for ToolKitProtoRuntimeRequirement);
    if (v33)
    {
      v18 = v45 - 1;
      v21 += v41;
      v20 += v41;
      if (v45 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E1562C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA8, &qword_20E33AF80);
  MEMORY[0x28223BE20](v44);
  v11 = &v36 - v10;
  v43 = type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
  v12 = MEMORY[0x28223BE20](v43);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v36 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_19:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v38 = &v36 - v16;
  v39 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v41 = *(v15 + 72);
  v42 = v4;
  v23 = &qword_27C867EA0;
  v37 = v14;
  while (1)
  {
    result = sub_20E195BBC(v20, v17, type metadata accessor for ToolKitProtoSystemTypeProtocol);
    if (!v18)
    {
      break;
    }

    v45 = v18;
    sub_20E195BBC(v21, v14, type metadata accessor for ToolKitProtoSystemTypeProtocol);
    v25 = *(v44 + 48);
    sub_20E0486F4(v17, v11, v23, &qword_20E33AF78);
    sub_20E0486F4(v14, &v11[v25], v23, &qword_20E33AF78);
    v26 = *v22;
    v27 = v23;
    v28 = v42;
    if ((*v22)(v11, 1, v42) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        sub_20E195C24(v14, type metadata accessor for ToolKitProtoSystemTypeProtocol);
        v35 = v17;
        v34 = type metadata accessor for ToolKitProtoSystemTypeProtocol;
        goto LABEL_17;
      }

      v23 = v27;
      sub_20E04875C(v11, v27, &qword_20E33AF78);
    }

    else
    {
      v29 = v22;
      v30 = v39;
      sub_20E0486F4(v11, v39, v27, &qword_20E33AF78);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        sub_20E195C24(v37, type metadata accessor for ToolKitProtoSystemTypeProtocol);
        sub_20E195C24(v38, type metadata accessor for ToolKitProtoSystemTypeProtocol);
        v34 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind;
        v35 = v30;
LABEL_17:
        sub_20E195C24(v35, v34);
        sub_20E04875C(v11, &qword_27C867EA8, &qword_20E33AF80);
        goto LABEL_19;
      }

      v31 = v40;
      sub_20E195B54(&v11[v25], v40, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      v32 = static ToolKitProtoSystemTypeProtocolKind.== infix(_:_:)(v30, v31);
      sub_20E195C24(v31, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      sub_20E195C24(v30, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      sub_20E04875C(v11, v27, &qword_20E33AF78);
      v22 = v29;
      v14 = v37;
      v17 = v38;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        sub_20E195C24(v37, type metadata accessor for ToolKitProtoSystemTypeProtocol);
        sub_20E195C24(v17, type metadata accessor for ToolKitProtoSystemTypeProtocol);
        goto LABEL_19;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_20E322850();
    sub_20E195C24(v14, type metadata accessor for ToolKitProtoSystemTypeProtocol);
    sub_20E195C24(v17, type metadata accessor for ToolKitProtoSystemTypeProtocol);
    if (v33)
    {
      v18 = v45 - 1;
      v21 += v41;
      v20 += v41;
      if (v45 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E156844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v45 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = (&v38 - v8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  MEMORY[0x28223BE20](v46);
  v10 = &v38 - v9;
  v11 = type metadata accessor for ToolKitProtoCoercionDefinition(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = (&v38 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    goto LABEL_27;
  }

  if (!v18 || a1 == a2)
  {
    v34 = 1;
    return v34 & 1;
  }

  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v43 = (v5 + 48);
  v44 = v4;
  v22 = *(v15 + 72);
  v38 = v10;
  v39 = v22;
  v40 = v11;
  v41 = v14;
  v42 = (&v38 - v16);
  while (1)
  {
    sub_20E195BBC(v20, v17, type metadata accessor for ToolKitProtoCoercionDefinition);
    sub_20E195BBC(v21, v14, type metadata accessor for ToolKitProtoCoercionDefinition);
    if (*v17 != *v14)
    {
      goto LABEL_26;
    }

    v23 = *(v11 + 20);
    v24 = *(v46 + 48);
    sub_20E0486F4(v17 + v23, v10, &qword_27C863C48, &qword_20E323F30);
    sub_20E0486F4(&v14[v23], &v10[v24], &qword_27C863C48, &qword_20E323F30);
    v25 = v44;
    v26 = *v43;
    if ((*v43)(v10, 1, v44) == 1)
    {
      if (v26(&v10[v24], 1, v25) == 1)
      {
        sub_20E04875C(v10, &qword_27C863C48, &qword_20E323F30);
        v14 = v41;
        v17 = v42;
        goto LABEL_16;
      }

      sub_20E195C24(v41, type metadata accessor for ToolKitProtoCoercionDefinition);
      v35 = v42;
      v36 = type metadata accessor for ToolKitProtoCoercionDefinition;
LABEL_22:
      sub_20E195C24(v35, v36);
      sub_20E04875C(v10, &qword_27C867E98, &qword_20E33AF70);
      goto LABEL_27;
    }

    sub_20E0486F4(v10, v47, &qword_27C863C48, &qword_20E323F30);
    if (v26(&v10[v24], 1, v25) == 1)
    {
      sub_20E195C24(v41, type metadata accessor for ToolKitProtoCoercionDefinition);
      sub_20E195C24(v42, type metadata accessor for ToolKitProtoCoercionDefinition);
      v36 = type metadata accessor for ToolKitProtoTypeInstance;
      v35 = v47;
      goto LABEL_22;
    }

    v27 = v45;
    sub_20E195B54(&v10[v24], v45, type metadata accessor for ToolKitProtoTypeInstance);
    v28 = *v47;
    v29 = *v27;
    if ((~*v47 & 0xF000000000000007) == 0)
    {
      sub_20E047CF8(*v47);
      sub_20E047CF8(v29);
      if ((~v29 & 0xF000000000000007) != 0)
      {
        goto LABEL_24;
      }

      sub_20E047CA8(v28);
      goto LABEL_15;
    }

    v49 = *v47;
    if ((~v29 & 0xF000000000000007) == 0)
    {
      break;
    }

    v48 = v29;
    sub_20E047CF8(v28);
    sub_20E047CF8(v29);
    sub_20E047CF8(v28);
    v30 = static ToolKitProtoTypeInstanceKind.== infix(_:_:)(&v49, &v48);

    sub_20E047CA8(v28);
    if ((v30 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_15:
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v31 = v47;
    v32 = v45;
    v33 = sub_20E322850();
    sub_20E195C24(v32, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E195C24(v31, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E04875C(v10, &qword_27C863C48, &qword_20E323F30);
    v14 = v41;
    v17 = v42;
    if ((v33 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_16:
    v11 = v40;
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v34 = sub_20E322850();
    sub_20E195C24(v14, type metadata accessor for ToolKitProtoCoercionDefinition);
    sub_20E195C24(v17, type metadata accessor for ToolKitProtoCoercionDefinition);
    if (v34)
    {
      v10 = v38;
      v21 += v39;
      v20 += v39;
      if (--v18)
      {
        continue;
      }
    }

    return v34 & 1;
  }

  sub_20E047CF8(v28);
  sub_20E047CF8(v29);
  sub_20E047CF8(v28);

LABEL_24:
  sub_20E047CA8(v28);
  sub_20E047CA8(v29);
LABEL_25:
  sub_20E195C24(v45, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E195C24(v47, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E04875C(v10, &qword_27C863C48, &qword_20E323F30);
  v14 = v41;
  v17 = v42;
LABEL_26:
  sub_20E195C24(v14, type metadata accessor for ToolKitProtoCoercionDefinition);
  sub_20E195C24(v17, type metadata accessor for ToolKitProtoCoercionDefinition);
LABEL_27:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_20E156F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoSampleInvocation(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_16:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_20E195BBC(v13, v10, type metadata accessor for ContextProtoSampleInvocation);
      sub_20E195BBC(v14, v7, type metadata accessor for ContextProtoSampleInvocation);
      v16 = *v10 == *v7 && *(v10 + 1) == *(v7 + 1);
      if (!v16 && (sub_20E322D60() & 1) == 0 || *(v10 + 4) != *(v7 + 4))
      {
        break;
      }

      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      sub_20E195C24(v7, type metadata accessor for ContextProtoSampleInvocation);
      sub_20E195C24(v10, type metadata accessor for ContextProtoSampleInvocation);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_20E195C24(v7, type metadata accessor for ContextProtoSampleInvocation);
    sub_20E195C24(v10, type metadata accessor for ContextProtoSampleInvocation);
    goto LABEL_16;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_20E1571C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v21 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    goto LABEL_17;
  }

  if (!v11 || a1 == a2)
  {
    v19 = 1;
    return v19 & 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    sub_20E195BBC(v13, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E195BBC(v14, v7, type metadata accessor for ToolKitProtoTypeInstance);
    v16 = *v10;
    v17 = *v7;
    if ((~*v10 & 0xF000000000000007) != 0)
    {
      break;
    }

    sub_20E047CF8(*v10);
    sub_20E047CF8(v17);
    if ((~v17 & 0xF000000000000007) != 0)
    {
      goto LABEL_15;
    }

    sub_20E047CA8(v16);
LABEL_10:
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v19 = sub_20E322850();
    sub_20E195C24(v7, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E195C24(v10, type metadata accessor for ToolKitProtoTypeInstance);
    if (v19)
    {
      v14 += v15;
      v13 += v15;
      if (--v11)
      {
        continue;
      }
    }

    return v19 & 1;
  }

  v22 = *v10;
  if ((~v17 & 0xF000000000000007) != 0)
  {
    v21 = v17;
    sub_20E047CF8(v16);
    sub_20E047CF8(v17);
    sub_20E047CF8(v16);
    v18 = static ToolKitProtoTypeInstanceKind.== infix(_:_:)(&v22, &v21);

    sub_20E047CA8(v16);
    if ((v18 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  sub_20E047CF8(v16);
  sub_20E047CF8(v17);
  sub_20E047CF8(v16);

LABEL_15:
  sub_20E047CA8(v16);
  sub_20E047CA8(v17);
LABEL_16:
  sub_20E195C24(v7, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E195C24(v10, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_17:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_20E1574D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRestrictionContext(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v21 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    goto LABEL_17;
  }

  if (!v11 || a1 == a2)
  {
    v19 = 1;
    return v19 & 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    sub_20E195BBC(v13, v10, type metadata accessor for ToolKitProtoRestrictionContext);
    sub_20E195BBC(v14, v7, type metadata accessor for ToolKitProtoRestrictionContext);
    v16 = *v10;
    v17 = *v7;
    if ((~*v10 & 0xF000000000000007) != 0)
    {
      break;
    }

    sub_20E047CF8(*v10);
    sub_20E047CF8(v17);
    if ((~v17 & 0xF000000000000007) != 0)
    {
      goto LABEL_15;
    }

    sub_20E047CA8(v16);
LABEL_10:
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v19 = sub_20E322850();
    sub_20E195C24(v7, type metadata accessor for ToolKitProtoRestrictionContext);
    sub_20E195C24(v10, type metadata accessor for ToolKitProtoRestrictionContext);
    if (v19)
    {
      v14 += v15;
      v13 += v15;
      if (--v11)
      {
        continue;
      }
    }

    return v19 & 1;
  }

  v22 = *v10;
  if ((~v17 & 0xF000000000000007) != 0)
  {
    v21 = v17;
    sub_20E047CF8(v16);
    sub_20E047CF8(v17);
    sub_20E047CF8(v16);
    v18 = _s23LighthouseDataProcessor34ToolKitProtoRestrictionContextKindO2eeoiySbAC_ACtFZ_0(&v22, &v21);

    sub_20E047CA8(v16);
    if ((v18 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  sub_20E047CF8(v16);
  sub_20E047CF8(v17);
  sub_20E047CF8(v16);

LABEL_15:
  sub_20E047CA8(v16);
  sub_20E047CA8(v17);
LABEL_16:
  sub_20E195C24(v7, type metadata accessor for ToolKitProtoRestrictionContext);
  sub_20E195C24(v10, type metadata accessor for ToolKitProtoRestrictionContext);
LABEL_17:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_20E1577E4(uint64_t a1, uint64_t a2)
{
  v53[3] = *MEMORY[0x277D85DE8];
  v51 = type metadata accessor for DillSessionEvent(0);
  v4 = MEMORY[0x28223BE20](v51);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v9 = &v45 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (v10 && a1 != a2)
    {
      v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v12 = a1 + v11;
      v13 = a2 + v11;
      v14 = *(v7 + 72);
      v49 = 0;
      v50 = v14;
      while (1)
      {
        sub_20E195BBC(v12, v9, type metadata accessor for DillSessionEvent);
        sub_20E195BBC(v13, v6, type metadata accessor for DillSessionEvent);
        if (*v9 != *v6)
        {
LABEL_70:
          sub_20E195C24(v6, type metadata accessor for DillSessionEvent);
          sub_20E195C24(v9, type metadata accessor for DillSessionEvent);
          goto LABEL_71;
        }

        v15 = *(v9 + 1);
        v16 = *(v9 + 2);
        v17 = *(v6 + 1);
        v18 = *(v6 + 2);
        if (v16 >> 60 == 15)
        {
          if (v18 >> 60 != 15)
          {
            goto LABEL_66;
          }

          sub_20E047C8C(*(v9 + 1), *(v9 + 2));
          sub_20E047C8C(v17, v18);
          goto LABEL_62;
        }

        if (v18 >> 60 == 15)
        {
LABEL_66:
          sub_20E047C8C(*(v9 + 1), *(v9 + 2));
          sub_20E047C8C(v17, v18);
          sub_20E047D10(v15, v16);
          v42 = v17;
          v43 = v18;
LABEL_69:
          sub_20E047D10(v42, v43);
          goto LABEL_70;
        }

        v19 = v16 >> 62;
        v20 = v18 >> 62;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v29 = *(v15 + 16);
            v28 = *(v15 + 24);
            v26 = __OFSUB__(v28, v29);
            v21 = v28 - v29;
            if (v26)
            {
              goto LABEL_75;
            }

            goto LABEL_26;
          }

          v21 = 0;
          if (v20 <= 1)
          {
            goto LABEL_27;
          }
        }

        else if (v19)
        {
          LODWORD(v21) = HIDWORD(v15) - v15;
          if (__OFSUB__(HIDWORD(v15), v15))
          {
            goto LABEL_76;
          }

          v21 = v21;
          if (v20 <= 1)
          {
LABEL_27:
            if (v20)
            {
              LODWORD(v27) = HIDWORD(v17) - v17;
              if (__OFSUB__(HIDWORD(v17), v17))
              {
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
LABEL_79:
                __break(1u);
LABEL_80:
                __break(1u);
              }

              v27 = v27;
            }

            else
            {
              v27 = BYTE6(v18);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v21 = BYTE6(v16);
          if (v20 <= 1)
          {
            goto LABEL_27;
          }
        }

LABEL_20:
        if (v20 != 2)
        {
          if (v21)
          {
            goto LABEL_67;
          }

LABEL_38:
          sub_20E047C8C(*(v9 + 1), *(v9 + 2));
          sub_20E047C8C(v17, v18);
          v22 = v17;
          v23 = v18;
LABEL_39:
          sub_20E047D10(v22, v23);
          goto LABEL_62;
        }

        v25 = *(v17 + 16);
        v24 = *(v17 + 24);
        v26 = __OFSUB__(v24, v25);
        v27 = v24 - v25;
        if (v26)
        {
          goto LABEL_74;
        }

LABEL_33:
        if (v21 != v27)
        {
LABEL_67:
          sub_20E047C8C(*(v9 + 1), *(v9 + 2));
          sub_20E047C8C(v17, v18);
          sub_20E047D10(v17, v18);
LABEL_68:
          v42 = v15;
          v43 = v16;
          goto LABEL_69;
        }

        if (v21 < 1)
        {
          goto LABEL_38;
        }

        if (v19 > 1)
        {
          if (v19 == 2)
          {
            v30 = *(v15 + 16);
            v46 = *(v15 + 24);
            v47 = v30;
            v48 = v15;
            sub_20E047C8C(v15, v16);
            sub_20E047C8C(v17, v18);
            sub_20E047C8C(v17, v18);
            v31 = sub_20E321EC0();
            if (v31)
            {
              v32 = v31;
              v33 = sub_20E321EE0();
              v34 = v47;
              if (__OFSUB__(v47, v33))
              {
                goto LABEL_79;
              }

              v45 = v47 - v33 + v32;
            }

            else
            {
              v45 = 0;
              v34 = v47;
            }

            if (__OFSUB__(v46, v34))
            {
              goto LABEL_78;
            }

            sub_20E321ED0();
            v39 = v45;
            goto LABEL_61;
          }

          memset(v53, 0, 14);
          sub_20E047C8C(v15, v16);
          sub_20E047C8C(v17, v18);
          sub_20E047C8C(v17, v18);
        }

        else
        {
          if (v19)
          {
            v47 = (v15 >> 32) - v15;
            if (v15 >> 32 < v15)
            {
              goto LABEL_77;
            }

            v48 = v15;
            sub_20E047C8C(v15, v16);
            sub_20E047C8C(v17, v18);
            sub_20E047C8C(v17, v18);
            v35 = sub_20E321EC0();
            if (v35)
            {
              v46 = v35;
              v36 = sub_20E321EE0();
              if (__OFSUB__(v15, v36))
              {
                goto LABEL_80;
              }

              v37 = v15 - v36 + v46;
            }

            else
            {
              v37 = 0;
            }

            sub_20E321ED0();
            v39 = v37;
LABEL_61:
            v40 = v49;
            sub_20E146020(v39, v17, v18, v53);
            v49 = v40;
            sub_20E047D10(v17, v18);
            sub_20E047D10(v17, v18);
            v15 = v48;
            if ((v53[0] & 1) == 0)
            {
              goto LABEL_68;
            }

            goto LABEL_62;
          }

          v53[0] = *(v9 + 1);
          LOWORD(v53[1]) = v16;
          BYTE2(v53[1]) = BYTE2(v16);
          BYTE3(v53[1]) = BYTE3(v16);
          BYTE4(v53[1]) = BYTE4(v16);
          BYTE5(v53[1]) = BYTE5(v16);
          sub_20E047C8C(v15, v16);
          sub_20E047C8C(v17, v18);
          sub_20E047C8C(v17, v18);
        }

        v38 = v49;
        sub_20E146020(v53, v17, v18, &v52);
        v49 = v38;
        sub_20E047D10(v17, v18);
        sub_20E047D10(v17, v18);
        if (!v52)
        {
          goto LABEL_68;
        }

LABEL_62:
        sub_20E047D10(v15, v16);
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v41 = sub_20E322850();
        sub_20E195C24(v6, type metadata accessor for DillSessionEvent);
        sub_20E195C24(v9, type metadata accessor for DillSessionEvent);
        if (v41)
        {
          v13 += v50;
          v12 += v50;
          if (--v10)
          {
            continue;
          }
        }

        return v41 & 1;
      }

      v21 = 0;
      if (!v15 && v16 == 0xC000000000000000 && v18 >> 62 == 3)
      {
        v21 = 0;
        if (!v17 && v18 == 0xC000000000000000)
        {
          sub_20E047C8C(0, 0xC000000000000000);
          sub_20E047C8C(0, 0xC000000000000000);
          v22 = 0;
          v23 = 0xC000000000000000;
          goto LABEL_39;
        }
      }

LABEL_26:
      if (v20 <= 1)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    v41 = 1;
  }

  else
  {
LABEL_71:
    v41 = 0;
  }

  return v41 & 1;
}

uint64_t sub_20E157F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v50 - v9;
  v11 = type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0);
  v12 = *(v11 - 8);
  v66 = v11;
  v67 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  v18 = type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v25 = (&v50 - v24);
  v26 = *(a1 + 16);
  if (v26 != *(a2 + 16))
  {
LABEL_36:
    v49 = 0;
    return v49 & 1;
  }

  if (!v26 || a1 == a2)
  {
    v49 = 1;
    return v49 & 1;
  }

  v64 = *(a1 + 16);
  v65 = v4;
  v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v28 = a1 + v27;
  v29 = 0;
  v62 = v21;
  v63 = a2 + v27;
  v30 = *(v23 + 72);
  v61 = (&v50 - v24);
  v54 = v28;
  v55 = v22;
  v53 = v30;
  while (1)
  {
    v31 = v30 * v29;
    result = sub_20E195BBC(v28 + v30 * v29, v25, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
    if (v29 == v64)
    {
      __break(1u);
      goto LABEL_39;
    }

    result = sub_20E195BBC(v63 + v31, v21, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
    v33 = *v25;
    v34 = *v21;
    v35 = *(v33 + 16);
    if (v35 != *(*v21 + 16))
    {
LABEL_35:
      sub_20E195C24(v62, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
      sub_20E195C24(v61, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
      goto LABEL_36;
    }

    if (v35 && v33 != v34)
    {
      break;
    }

LABEL_29:
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v25 = v61;
    v21 = v62;
    v49 = sub_20E322850();
    sub_20E195C24(v21, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
    sub_20E195C24(v25, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
    if (v49)
    {
      ++v29;
      v30 = v53;
      v28 = v54;
      if (v29 != v64)
      {
        continue;
      }
    }

    return v49 & 1;
  }

  v36 = 0;
  v37 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v58 = v34 + v37;
  v59 = v33 + v37;
  v60 = v5;
  v56 = v17;
  v57 = v15;
  v51 = v33;
  v52 = v29;
  v50 = v35;
  while (v36 < *(v33 + 16))
  {
    v38 = *(v67 + 72) * v36;
    result = sub_20E195BBC(v59 + v38, v17, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    if (v36 >= *(v34 + 16))
    {
      goto LABEL_40;
    }

    sub_20E195BBC(v58 + v38, v15, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    v39 = *v17;
    v40 = *v15;
    v41 = *(*v17 + 16);
    if (v41 != *(*v15 + 16))
    {
      goto LABEL_34;
    }

    if (v41 && v39 != v40)
    {
      v42 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v43 = v39 + v42;
      v44 = v40 + v42;
      v45 = *(v60 + 72);
      while (1)
      {
        sub_20E195BBC(v43, v10, type metadata accessor for TranscriptProtoSpeechPackage.Token);
        sub_20E195BBC(v44, v8, type metadata accessor for TranscriptProtoSpeechPackage.Token);
        v46 = *v10 == *v8 && *(v10 + 1) == *(v8 + 1);
        if (!v46 && (sub_20E322D60() & 1) == 0 || *(v10 + 2) != *(v8 + 2) || *(v10 + 3) != *(v8 + 3) || *(v10 + 4) != *(v8 + 4) || *(v10 + 5) != *(v8 + 5))
        {
          break;
        }

        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v47 = sub_20E322850();
        sub_20E195C24(v8, type metadata accessor for TranscriptProtoSpeechPackage.Token);
        sub_20E195C24(v10, type metadata accessor for TranscriptProtoSpeechPackage.Token);
        if ((v47 & 1) == 0)
        {
          goto LABEL_34;
        }

        v44 += v45;
        v43 += v45;
        if (!--v41)
        {
          goto LABEL_27;
        }
      }

      sub_20E195C24(v8, type metadata accessor for TranscriptProtoSpeechPackage.Token);
      sub_20E195C24(v10, type metadata accessor for TranscriptProtoSpeechPackage.Token);
LABEL_34:
      sub_20E195C24(v57, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      sub_20E195C24(v56, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      goto LABEL_35;
    }

LABEL_27:
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v17 = v56;
    v15 = v57;
    v48 = sub_20E322850();
    sub_20E195C24(v15, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    result = sub_20E195C24(v17, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    v5 = v60;
    v33 = v51;
    v29 = v52;
    if ((v48 & 1) == 0)
    {
      goto LABEL_35;
    }

    if (++v36 == v50)
    {
      goto LABEL_29;
    }
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_20E1586F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E68, &qword_20E33AF48);
  MEMORY[0x28223BE20](v42);
  v11 = &v34 - v10;
  v41 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  v12 = MEMORY[0x28223BE20](v41);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_18:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v36 = v14;
  v37 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v39 = *(v15 + 72);
  v40 = v4;
  v23 = &qword_27C867E60;
  v35 = &v34 - v16;
  while (1)
  {
    result = sub_20E195BBC(v20, v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
    if (!v18)
    {
      break;
    }

    v43 = v18;
    sub_20E195BBC(v21, v14, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
    v25 = *(v42 + 48);
    sub_20E0486F4(v17, v11, v23, &qword_20E33AF40);
    sub_20E0486F4(v14, &v11[v25], v23, &qword_20E33AF40);
    v26 = *v22;
    v27 = v23;
    v28 = v40;
    if ((*v22)(v11, 1, v40) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        goto LABEL_16;
      }

      v23 = v27;
      sub_20E04875C(v11, v27, &qword_20E33AF40);
    }

    else
    {
      v29 = v22;
      v30 = v37;
      sub_20E0486F4(v11, v37, v27, &qword_20E33AF40);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        sub_20E195C24(v30, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        v17 = v35;
        v14 = v36;
LABEL_16:
        sub_20E04875C(v11, &qword_27C867E68, &qword_20E33AF48);
LABEL_17:
        sub_20E195C24(v14, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
        sub_20E195C24(v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
        goto LABEL_18;
      }

      v31 = v38;
      sub_20E195B54(&v11[v25], v38, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v32 = static ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind.== infix(_:_:)(v30, v31);
      sub_20E195C24(v31, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      sub_20E195C24(v30, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      sub_20E04875C(v11, v27, &qword_20E33AF40);
      v22 = v29;
      v17 = v35;
      v14 = v36;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_20E322850();
    sub_20E195C24(v14, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
    sub_20E195C24(v17, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
    if (v33)
    {
      v18 = v43 - 1;
      v21 += v39;
      v20 += v39;
      if (v43 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E158C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E58, &qword_20E33AF38);
  MEMORY[0x28223BE20](v44);
  v11 = &v36 - v10;
  v43 = type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  v12 = MEMORY[0x28223BE20](v43);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v36 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_19:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v38 = &v36 - v16;
  v39 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v41 = *(v15 + 72);
  v42 = v4;
  v23 = &qword_27C867E50;
  v37 = v14;
  while (1)
  {
    result = sub_20E195BBC(v20, v17, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
    if (!v18)
    {
      break;
    }

    v45 = v18;
    sub_20E195BBC(v21, v14, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
    v25 = *(v44 + 48);
    sub_20E0486F4(v17, v11, v23, &qword_20E33AF30);
    sub_20E0486F4(v14, &v11[v25], v23, &qword_20E33AF30);
    v26 = *v22;
    v27 = v23;
    v28 = v42;
    if ((*v22)(v11, 1, v42) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        sub_20E195C24(v14, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        v35 = v17;
        v34 = type metadata accessor for ToolKitProtoTypeDefinition.Version1;
        goto LABEL_17;
      }

      v23 = v27;
      sub_20E04875C(v11, v27, &qword_20E33AF30);
    }

    else
    {
      v29 = v22;
      v30 = v39;
      sub_20E0486F4(v11, v39, v27, &qword_20E33AF30);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        sub_20E195C24(v37, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        sub_20E195C24(v38, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        v34 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind;
        v35 = v30;
LABEL_17:
        sub_20E195C24(v35, v34);
        sub_20E04875C(v11, &qword_27C867E58, &qword_20E33AF38);
        goto LABEL_19;
      }

      v31 = v40;
      sub_20E195B54(&v11[v25], v40, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      v32 = _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV0deF12Version1KindO2eeoiySbAE_AEtFZ_0(v30, v31);
      sub_20E195C24(v31, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      sub_20E195C24(v30, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      sub_20E04875C(v11, v27, &qword_20E33AF30);
      v22 = v29;
      v14 = v37;
      v17 = v38;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        sub_20E195C24(v37, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        sub_20E195C24(v17, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        goto LABEL_19;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_20E322850();
    sub_20E195C24(v14, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
    sub_20E195C24(v17, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
    if (v33)
    {
      v18 = v45 - 1;
      v21 += v41;
      v20 += v41;
      if (v45 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E1591A8(uint64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for ToolKitProtoToolSummaryString.Component(0);
  v4 = MEMORY[0x28223BE20](v29);
  v30 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v26[-v7];
  v9 = *(a1 + 16);
  if (v9 != *(a2 + 16))
  {
    goto LABEL_31;
  }

  if (!v9 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = a1 + v10;
  v12 = a2 + v10;
  v28 = *(v6 + 72);
  while (1)
  {
    sub_20E195BBC(v11, v8, type metadata accessor for ToolKitProtoToolSummaryString.Component);
    v13 = v30;
    sub_20E195BBC(v12, v30, type metadata accessor for ToolKitProtoToolSummaryString.Component);
    v15 = *v8;
    v14 = *(v8 + 1);
    v16 = v8[16];
    v17 = *v13;
    v18 = *(v13 + 1);
    v19 = v13[16];
    if (v16 == 255)
    {
      if (v19 != 255)
      {
LABEL_26:
        sub_20E195904(*v8, *(v8 + 1), v8[16]);
        sub_20E195904(v17, v18, v19);
        sub_20E195924(v15, v14, v16);
        v22 = v17;
        v23 = v18;
        v24 = v19;
        goto LABEL_29;
      }

      LOBYTE(v16) = -1;
      sub_20E195904(*v8, *(v8 + 1), 255);
      sub_20E195904(v17, v18, 255);
      goto LABEL_19;
    }

    if (v19 == 255)
    {
      goto LABEL_26;
    }

    if (v16)
    {
      if ((v19 & 1) == 0)
      {
        break;
      }

      if (v15 == v17 && v14 == v18)
      {
LABEL_18:
        sub_20E195904(*v8, *(v8 + 1), v8[16]);
        sub_20E195904(v15, v14, v19);
        sub_20E195904(v15, v14, v16);
        sub_20E19593C(v15, v14);
        sub_20E19593C(v15, v14);
      }

      else
      {
        v27 = sub_20E322D60();
        sub_20E195904(v15, v14, v16);
        sub_20E195904(v17, v18, v19);
        sub_20E195904(v15, v14, v16);
        sub_20E19593C(v15, v14);
        sub_20E19593C(v17, v18);
        if ((v27 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

LABEL_19:
      sub_20E195924(v15, v14, v16);
      goto LABEL_20;
    }

    if (v19)
    {
      break;
    }

    if (v15 == v17 && v14 == v18)
    {
      goto LABEL_18;
    }

    v27 = sub_20E322D60();
    sub_20E195904(v15, v14, v16);
    sub_20E195904(v17, v18, v19);
    sub_20E195904(v15, v14, v16);
    sub_20E19593C(v15, v14);
    sub_20E19593C(v17, v18);
    sub_20E195924(v15, v14, v16);
    if ((v27 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_20:
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v20 = v30;
    v21 = sub_20E322850();
    sub_20E195C24(v20, type metadata accessor for ToolKitProtoToolSummaryString.Component);
    sub_20E195C24(v8, type metadata accessor for ToolKitProtoToolSummaryString.Component);
    if (v21)
    {
      v12 += v28;
      v11 += v28;
      if (--v9)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  sub_20E195904(*v8, *(v8 + 1), v8[16]);
  sub_20E195904(v17, v18, v19);
  sub_20E195904(v15, v14, v16);
  sub_20E19593C(v15, v14);
  sub_20E19593C(v17, v18);
LABEL_28:
  v22 = v15;
  v23 = v14;
  v24 = v16;
LABEL_29:
  sub_20E195924(v22, v23, v24);
LABEL_30:
  sub_20E195C24(v30, type metadata accessor for ToolKitProtoToolSummaryString.Component);
  sub_20E195C24(v8, type metadata accessor for ToolKitProtoToolSummaryString.Component);
LABEL_31:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_20E1596C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v26 = a3(0);
  v9 = MEMORY[0x28223BE20](v26);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v14 = (&v25 - v13);
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
LABEL_22:
    v23 = 0;
    return v23 & 1;
  }

  if (v15 && a1 != a2)
  {
    v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v17 = a1 + v16;
    v18 = a2 + v16;
    v19 = *(v12 + 72);
    while (1)
    {
      sub_20E195BBC(v17, v14, a5);
      sub_20E195BBC(v18, v11, a5);
      v20 = *v14 == *v11 && v14[1] == v11[1];
      if (!v20 && (sub_20E322D60() & 1) == 0)
      {
        break;
      }

      v21 = v14[3];
      v22 = v11[3];
      if (v21)
      {
        if (!v22 || (v14[2] != v11[2] || v21 != v22) && (sub_20E322D60() & 1) == 0)
        {
          break;
        }
      }

      else if (v22)
      {
        break;
      }

      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v23 = sub_20E322850();
      sub_20E195C24(v11, a4);
      sub_20E195C24(v14, a4);
      if (v23)
      {
        v18 += v19;
        v17 += v19;
        if (--v15)
        {
          continue;
        }
      }

      return v23 & 1;
    }

    sub_20E195C24(v11, a4);
    sub_20E195C24(v14, a4);
    goto LABEL_22;
  }

  v23 = 1;
  return v23 & 1;
}

uint64_t sub_20E15992C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    v8 = qword_20E33B898[v5];
    v9 = qword_20E33B898[v7];
    result = v8 == v9;
    if (v8 != v9 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E159998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688E0, &qword_20E33B890);
  MEMORY[0x28223BE20](v44);
  v11 = &v36 - v10;
  v43 = type metadata accessor for ToolKitProtoSystemToolProtocol(0);
  v12 = MEMORY[0x28223BE20](v43);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v36 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_19:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v38 = &v36 - v16;
  v39 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v41 = *(v15 + 72);
  v42 = v4;
  v23 = &qword_27C8688D8;
  v37 = v14;
  while (1)
  {
    result = sub_20E195BBC(v20, v17, type metadata accessor for ToolKitProtoSystemToolProtocol);
    if (!v18)
    {
      break;
    }

    v45 = v18;
    sub_20E195BBC(v21, v14, type metadata accessor for ToolKitProtoSystemToolProtocol);
    v25 = *(v44 + 48);
    sub_20E0486F4(v17, v11, v23, &qword_20E33B888);
    sub_20E0486F4(v14, &v11[v25], v23, &qword_20E33B888);
    v26 = *v22;
    v27 = v23;
    v28 = v42;
    if ((*v22)(v11, 1, v42) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        sub_20E195C24(v14, type metadata accessor for ToolKitProtoSystemToolProtocol);
        v35 = v17;
        v34 = type metadata accessor for ToolKitProtoSystemToolProtocol;
        goto LABEL_17;
      }

      v23 = v27;
      sub_20E04875C(v11, v27, &qword_20E33B888);
    }

    else
    {
      v29 = v22;
      v30 = v39;
      sub_20E0486F4(v11, v39, v27, &qword_20E33B888);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        sub_20E195C24(v37, type metadata accessor for ToolKitProtoSystemToolProtocol);
        sub_20E195C24(v38, type metadata accessor for ToolKitProtoSystemToolProtocol);
        v34 = type metadata accessor for ToolKitProtoSystemToolProtocolKind;
        v35 = v30;
LABEL_17:
        sub_20E195C24(v35, v34);
        sub_20E04875C(v11, &qword_27C8688E0, &qword_20E33B890);
        goto LABEL_19;
      }

      v31 = v40;
      sub_20E195B54(&v11[v25], v40, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v32 = static ToolKitProtoSystemToolProtocolKind.== infix(_:_:)(v30, v31);
      sub_20E195C24(v31, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      sub_20E195C24(v30, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      sub_20E04875C(v11, v27, &qword_20E33B888);
      v22 = v29;
      v14 = v37;
      v17 = v38;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        sub_20E195C24(v37, type metadata accessor for ToolKitProtoSystemToolProtocol);
        sub_20E195C24(v17, type metadata accessor for ToolKitProtoSystemToolProtocol);
        goto LABEL_19;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = sub_20E322850();
    sub_20E195C24(v14, type metadata accessor for ToolKitProtoSystemToolProtocol);
    sub_20E195C24(v17, type metadata accessor for ToolKitProtoSystemToolProtocol);
    if (v33)
    {
      v18 = v45 - 1;
      v21 += v41;
      v20 += v41;
      if (v45 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E159F1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_20E159F90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E68, &qword_20E33AF48);
  MEMORY[0x28223BE20](v60);
  v12 = &v52 - v11;
  v64 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  v68 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v66 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E70, &unk_20E346370);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v52 - v15;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E78, &qword_20E33AF50);
  MEMORY[0x28223BE20](v67);
  v65 = &v52 - v17;
  v69 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
  v18 = MEMORY[0x28223BE20](v69);
  v20 = (&v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v23 = (&v52 - v22);
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
LABEL_31:
    v51 = 0;
    return v51 & 1;
  }

  if (!v24 || a1 == a2)
  {
    v51 = 1;
    return v51 & 1;
  }

  v25 = *(a1 + 16);
  v53 = v7;
  v54 = v10;
  v58 = v4;
  v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v27 = a1 + v26;
  v28 = a2 + v26;
  v61 = (v68 + 48);
  v62 = &v52 - v22;
  v56 = v12;
  v57 = (v5 + 48);
  v59 = *(v21 + 72);
  v29 = v64;
  v30 = v65;
  v31 = v25;
  v55 = v16;
  v63 = v20;
  while (1)
  {
    result = sub_20E195BBC(v27, v23, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
    if (!v31)
    {
      break;
    }

    v68 = v31;
    sub_20E195BBC(v28, v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
    v33 = *v23 == *v20 && v23[1] == v20[1];
    if (!v33 && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_30;
    }

    v34 = *(v69 + 20);
    v35 = *(v67 + 48);
    sub_20E0486F4(v23 + v34, v30, &qword_27C867E70, &unk_20E346370);
    sub_20E0486F4(v20 + v34, v30 + v35, &qword_27C867E70, &unk_20E346370);
    v36 = *v61;
    if ((*v61)(v30, 1, v29) == 1)
    {
      v37 = v36(v30 + v35, 1, v29);
      v20 = v63;
      if (v37 != 1)
      {
        goto LABEL_26;
      }

      sub_20E04875C(v30, &qword_27C867E70, &unk_20E346370);
      v23 = v62;
    }

    else
    {
      sub_20E0486F4(v30, v16, &qword_27C867E70, &unk_20E346370);
      if (v36(v30 + v35, 1, v29) == 1)
      {
        sub_20E195C24(v16, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
        v20 = v63;
LABEL_26:
        sub_20E04875C(v30, &qword_27C867E78, &qword_20E33AF50);
        v23 = v62;
        goto LABEL_30;
      }

      v38 = v66;
      sub_20E195B54(v30 + v35, v66, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
      v39 = *(v60 + 48);
      v40 = v56;
      sub_20E0486F4(v16, v56, &qword_27C867E60, &qword_20E33AF40);
      sub_20E0486F4(v38, v40 + v39, &qword_27C867E60, &qword_20E33AF40);
      v41 = v58;
      v42 = *v57;
      if ((*v57)(v40, 1, v58) == 1)
      {
        if (v42(v40 + v39, 1, v41) != 1)
        {
          goto LABEL_28;
        }

        sub_20E04875C(v40, &qword_27C867E60, &qword_20E33AF40);
      }

      else
      {
        v43 = v54;
        sub_20E0486F4(v40, v54, &qword_27C867E60, &qword_20E33AF40);
        if (v42(v40 + v39, 1, v41) == 1)
        {
          sub_20E195C24(v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
LABEL_28:
          sub_20E04875C(v40, &qword_27C867E68, &qword_20E33AF48);
LABEL_29:
          sub_20E195C24(v66, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
          sub_20E195C24(v55, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
          sub_20E04875C(v65, &qword_27C867E70, &unk_20E346370);
          v23 = v62;
          v20 = v63;
LABEL_30:
          sub_20E195C24(v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
          sub_20E195C24(v23, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
          goto LABEL_31;
        }

        v44 = v53;
        sub_20E195B54(v40 + v39, v53, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        v45 = static ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind.== infix(_:_:)(v43, v44);
        sub_20E195C24(v44, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        sub_20E195C24(v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        sub_20E04875C(v40, &qword_27C867E60, &qword_20E33AF40);
        if ((v45 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v46 = v64;
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v47 = v55;
      v48 = v66;
      v49 = sub_20E322850();
      v50 = v48;
      v29 = v46;
      sub_20E195C24(v50, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
      v16 = v47;
      sub_20E195C24(v47, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
      v30 = v65;
      sub_20E04875C(v65, &qword_27C867E70, &unk_20E346370);
      v23 = v62;
      v20 = v63;
      if ((v49 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v51 = sub_20E322850();
    sub_20E195C24(v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
    sub_20E195C24(v23, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
    if (v51)
    {
      v31 = v68 - 1;
      v28 += v59;
      v27 += v59;
      if (v68 != 1)
      {
        continue;
      }
    }

    return v51 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E15A850(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E15A8AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoBoundingBox(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BE8, &qword_20E323ED0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v43 - v9);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE0, &qword_20E33AFB0);
  MEMORY[0x28223BE20](v49);
  v51 = &v43 - v11;
  v52 = type metadata accessor for ContextProtoSurroundingText(0);
  v12 = MEMORY[0x28223BE20](v52);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v17 = (&v43 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    goto LABEL_51;
  }

  if (!v18 || a1 == a2)
  {
    v39 = 1;
    return v39 & 1;
  }

  v47 = v4;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v45 = v14;
  v46 = (v5 + 48);
  v43 = *(v15 + 72);
  v44 = (&v43 - v16);
  while (1)
  {
    sub_20E195BBC(v20, v17, type metadata accessor for ContextProtoSurroundingText);
    sub_20E195BBC(v21, v14, type metadata accessor for ContextProtoSurroundingText);
    v22 = v17[1];
    v23 = v14[1];
    if (v22)
    {
      if (!v23 || (*v17 != *v14 || v22 != v23) && (sub_20E322D60() & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (v23)
    {
      goto LABEL_46;
    }

    v50 = v21;
    v48 = v20;
    v24 = v7;
    v25 = v51;
    v26 = *(v52 + 20);
    v27 = *(v49 + 48);
    sub_20E0486F4(v17 + v26, v51, &qword_27C863BE8, &qword_20E323ED0);
    v28 = v14 + v26;
    v29 = v25;
    sub_20E0486F4(v28, v25 + v27, &qword_27C863BE8, &qword_20E323ED0);
    v30 = *v46;
    v31 = v25;
    v32 = v47;
    if ((*v46)(v31, 1, v47) != 1)
    {
      break;
    }

    if (v30(v29 + v27, 1, v32) != 1)
    {
      v40 = type metadata accessor for ContextProtoSurroundingText;
      v41 = v44;
      goto LABEL_49;
    }

    sub_20E04875C(v29, &qword_27C863BE8, &qword_20E323ED0);
    v7 = v24;
    v17 = v44;
    v14 = v45;
    v33 = v50;
LABEL_41:
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v39 = sub_20E322850();
    sub_20E195C24(v17, type metadata accessor for ContextProtoSurroundingText);
    sub_20E195C24(v14, type metadata accessor for ContextProtoSurroundingText);
    if (v39)
    {
      v21 = v33 + v43;
      v20 = v48 + v43;
      if (--v18)
      {
        continue;
      }
    }

    return v39 & 1;
  }

  sub_20E0486F4(v29, v10, &qword_27C863BE8, &qword_20E323ED0);
  if (v30(v29 + v27, 1, v32) != 1)
  {
    v7 = v24;
    sub_20E195B54(v29 + v27, v24, type metadata accessor for ContextProtoBoundingBox);
    v34 = *(v24 + 4);
    v17 = v44;
    if (v10[1])
    {
      v14 = v45;
      v33 = v50;
      if (!v34)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (*v10 != *v24)
      {
        LOBYTE(v34) = 1;
      }

      v14 = v45;
      v33 = v50;
      if (v34)
      {
LABEL_45:
        sub_20E195C24(v7, type metadata accessor for ContextProtoBoundingBox);
        sub_20E195C24(v10, type metadata accessor for ContextProtoBoundingBox);
        sub_20E04875C(v51, &qword_27C863BE8, &qword_20E323ED0);
LABEL_46:
        sub_20E195C24(v17, type metadata accessor for ContextProtoSurroundingText);
        goto LABEL_50;
      }
    }

    v35 = *(v7 + 12);
    if (v10[3])
    {
      if (!*(v7 + 12))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v10[2] != v7[2])
      {
        v35 = 1;
      }

      if (v35)
      {
        goto LABEL_45;
      }
    }

    v36 = *(v7 + 20);
    if (v10[5])
    {
      if (!*(v7 + 20))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v10[4] != v7[4])
      {
        v36 = 1;
      }

      if (v36)
      {
        goto LABEL_45;
      }
    }

    v37 = *(v7 + 28);
    if (v10[7])
    {
      if (!*(v7 + 28))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v10[6] != v7[6])
      {
        v37 = 1;
      }

      if (v37)
      {
        goto LABEL_45;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v38 = sub_20E322850();
    sub_20E195C24(v7, type metadata accessor for ContextProtoBoundingBox);
    sub_20E195C24(v10, type metadata accessor for ContextProtoBoundingBox);
    sub_20E04875C(v51, &qword_27C863BE8, &qword_20E323ED0);
    if ((v38 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_41;
  }

  sub_20E195C24(v44, type metadata accessor for ContextProtoSurroundingText);
  v40 = type metadata accessor for ContextProtoBoundingBox;
  v41 = v10;
LABEL_49:
  sub_20E195C24(v41, v40);
  sub_20E04875C(v29, &qword_27C867EE0, &qword_20E33AFB0);
  v14 = v45;
LABEL_50:
  sub_20E195C24(v14, type metadata accessor for ContextProtoSurroundingText);
LABEL_51:
  v39 = 0;
  return v39 & 1;
}

uint64_t sub_20E15AFBC(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for TranscriptProtoStatementID(0);
  v4 = *(v61 - 8);
  v5 = MEMORY[0x28223BE20](v61);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v56 - v9;
  MEMORY[0x28223BE20](v8);
  v59 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F28, &qword_20E33AFF8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  result = MEMORY[0x28223BE20](v13);
  v62 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v62 + 16))
  {
    return 0;
  }

  v57 = a1;
  v58 = &v56 - v15;
  v60 = v16;
  v17 = 0;
  v18 = *(a1 + 64);
  v56 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v63 = (v21 - 1) & v21;
    v24 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_18:
    v30 = (*(v57 + 48) + 16 * v24);
    v32 = *v30;
    v31 = v30[1];
    v33 = v59;
    sub_20E195BBC(*(v57 + 56) + *(v4 + 72) * v24, v59, type metadata accessor for TranscriptProtoStatementID);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F18, &qword_20E325D28);
    v35 = *(v34 + 48);
    v36 = v60;
    *v60 = v32;
    v36[1] = v31;
    v37 = v33;
    v27 = v36;
    sub_20E195B54(v37, v36 + v35, type metadata accessor for TranscriptProtoStatementID);
    (*(*(v34 - 8) + 56))(v27, 0, 1, v34);

LABEL_19:
    v38 = v27;
    v39 = v58;
    sub_20E195AA4(v38, v58, &qword_27C867F28, &qword_20E33AFF8);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F18, &qword_20E325D28);
    v41 = (*(*(v40 - 8) + 48))(v39, 1, v40);
    v42 = v41 == 1;
    if (v41 == 1)
    {
      return v42;
    }

    v43 = v39;
    v44 = v7;
    v45 = *(v40 + 48);
    v46 = *v43;
    v47 = v43[1];
    sub_20E195B54(v43 + v45, v10, type metadata accessor for TranscriptProtoStatementID);
    v48 = v46;
    v49 = v62;
    v50 = sub_20E1ACAD0(v48, v47);
    v52 = v51;

    if ((v52 & 1) == 0)
    {
      goto LABEL_31;
    }

    v7 = v44;
    sub_20E195BBC(*(v49 + 56) + *(v4 + 72) * v50, v44, type metadata accessor for TranscriptProtoStatementID);
    if (*v44 != *v10)
    {
      goto LABEL_30;
    }

    v53 = *(v44 + 16);
    v54 = *(v10 + 2);
    if (v53)
    {
      if (!v54 || (*(v44 + 8) != *(v10 + 1) || v53 != v54) && (sub_20E322D60() & 1) == 0)
      {
LABEL_30:
        sub_20E195C24(v44, type metadata accessor for TranscriptProtoStatementID);
LABEL_31:
        sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
        return 0;
      }
    }

    else if (v54)
    {
      goto LABEL_30;
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v23 = sub_20E322850();
    sub_20E195C24(v44, type metadata accessor for TranscriptProtoStatementID);
    result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
    v21 = v63;
    if ((v23 & 1) == 0)
    {
      return v42;
    }
  }

  if (v22 <= v17 + 1)
  {
    v25 = v17 + 1;
  }

  else
  {
    v25 = v22;
  }

  v26 = v25 - 1;
  v27 = v60;
  while (1)
  {
    v28 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v28 >= v22)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F18, &qword_20E325D28);
      (*(*(v55 - 8) + 56))(v27, 1, 1, v55);
      v63 = 0;
      v17 = v26;
      goto LABEL_19;
    }

    v29 = *(v56 + 8 * v28);
    ++v17;
    if (v29)
    {
      v63 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v17 = v28;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E15B558(uint64_t a1, uint64_t a2)
{
  v85 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v4 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v71 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F58, &qword_20E3263B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v68 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868160, &qword_20E33B208);
  MEMORY[0x28223BE20](v77);
  v10 = &v68 - v9;
  v76 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v83 = *(v76 - 8);
  v11 = MEMORY[0x28223BE20](v76);
  v84 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v68 - v14;
  MEMORY[0x28223BE20](v13);
  v75 = &v68 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868218, &qword_20E33B2B8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v18);
  v78 = (&v68 - v22);
  v79 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v79 + 16))
  {
    return 0;
  }

  v23 = 0;
  v72 = a1;
  v24 = *(a1 + 64);
  v69 = a1 + 64;
  v70 = v8;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v28 = (v25 + 63) >> 6;
  v82 = (v4 + 48);
  v29 = &qword_20E3263B8;
  v73 = v20;
  v74 = v28;
  while (v27)
  {
    v81 = (v27 - 1) & v27;
    v32 = __clz(__rbit64(v27)) | (v23 << 6);
LABEL_17:
    v38 = (*(v72 + 48) + 16 * v32);
    v40 = *v38;
    v39 = v38[1];
    v41 = v75;
    sub_20E195BBC(*(v72 + 56) + *(v83 + 72) * v32, v75, type metadata accessor for TranscriptProtoASTFlatValue);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868220, &qword_20E33B2C0);
    v43 = *(v42 + 48);
    *v20 = v40;
    v20[1] = v39;
    sub_20E195B54(v41, v20 + v43, type metadata accessor for TranscriptProtoASTFlatValue);
    (*(*(v42 - 8) + 56))(v20, 0, 1, v42);

    v35 = v78;
LABEL_18:
    sub_20E195AA4(v20, v35, &qword_27C868218, &qword_20E33B2B8);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868220, &qword_20E33B2C0);
    v45 = (*(*(v44 - 8) + 48))(v35, 1, v44);
    v80 = v45 == 1;
    if (v45 == 1)
    {
      return v80;
    }

    v46 = v29;
    v47 = v82;
    v48 = v10;
    v49 = v85;
    v50 = *(v44 + 48);
    v51 = *v35;
    v52 = v35[1];
    sub_20E195B54(v35 + v50, v15, type metadata accessor for TranscriptProtoASTFlatValue);
    v53 = v79;
    v54 = sub_20E1ACAD0(v51, v52);
    v55 = v15;
    v57 = v56;

    if ((v57 & 1) == 0)
    {
      goto LABEL_31;
    }

    v58 = v84;
    sub_20E195BBC(*(v53 + 56) + *(v83 + 72) * v54, v84, type metadata accessor for TranscriptProtoASTFlatValue);
    v59 = *(v77 + 48);
    v10 = v48;
    v60 = v48;
    v29 = v46;
    sub_20E0486F4(v58, v60, &qword_27C865F58, v46);
    sub_20E0486F4(v55, &v10[v59], &qword_27C865F58, v46);
    v61 = *v47;
    v15 = v55;
    if ((*v47)(v10, 1, v49) == 1)
    {
      if (v61(&v10[v59], 1, v85) != 1)
      {
        goto LABEL_29;
      }

      v29 = v46;
      sub_20E04875C(v10, &qword_27C865F58, v46);
    }

    else
    {
      v62 = v10;
      v63 = v10;
      v64 = v70;
      sub_20E0486F4(v62, v70, &qword_27C865F58, v46);
      if (v61((v63 + v59), 1, v85) == 1)
      {
        sub_20E195C24(v64, type metadata accessor for TranscriptProtoAstflatValueEnum);
        v10 = v63;
        v15 = v55;
LABEL_29:
        sub_20E04875C(v10, &qword_27C868160, &qword_20E33B208);
LABEL_30:
        sub_20E195C24(v84, type metadata accessor for TranscriptProtoASTFlatValue);
        v55 = v15;
LABEL_31:
        sub_20E195C24(v55, type metadata accessor for TranscriptProtoASTFlatValue);
        return 0;
      }

      v65 = v71;
      sub_20E195B54(v63 + v59, v71, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v66 = static TranscriptProtoAstflatValueEnum.== infix(_:_:)(v64, v65);
      sub_20E195C24(v65, type metadata accessor for TranscriptProtoAstflatValueEnum);
      sub_20E195C24(v64, type metadata accessor for TranscriptProtoAstflatValueEnum);
      sub_20E04875C(v63, &qword_27C865F58, v46);
      v10 = v63;
      v15 = v55;
      if ((v66 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v30 = v84;
    v31 = sub_20E322850();
    sub_20E195C24(v30, type metadata accessor for TranscriptProtoASTFlatValue);
    result = sub_20E195C24(v15, type metadata accessor for TranscriptProtoASTFlatValue);
    v20 = v73;
    v28 = v74;
    v27 = v81;
    if ((v31 & 1) == 0)
    {
      return v80;
    }
  }

  if (v28 <= v23 + 1)
  {
    v33 = v23 + 1;
  }

  else
  {
    v33 = v28;
  }

  v34 = v33 - 1;
  v35 = v78;
  while (1)
  {
    v36 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v36 >= v28)
    {
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868220, &qword_20E33B2C0);
      (*(*(v67 - 8) + 56))(v20, 1, 1, v67);
      v81 = 0;
      v23 = v34;
      goto LABEL_18;
    }

    v37 = *(v69 + 8 * v36);
    ++v23;
    if (v37)
    {
      v81 = (v37 - 1) & v37;
      v32 = __clz(__rbit64(v37)) | (v36 << 6);
      v23 = v36;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E15BDA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v112 = (&v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B58, &qword_20E323E68);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v95 - v8;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868648, &qword_20E33B658);
  MEMORY[0x28223BE20](v106);
  v11 = &v95 - v10;
  v12 = type metadata accessor for ToolKitProtoTypedValue(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v108 = (&v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v95 - v16);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  MEMORY[0x28223BE20](v109);
  v115 = &v95 - v18;
  v19 = type metadata accessor for TranscriptProtoParameterValue(0);
  v20 = *(v19 - 8);
  v117 = v19;
  v118 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v119 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v116 = &v95 - v24;
  MEMORY[0x28223BE20](v23);
  v105 = &v95 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868690, &qword_20E33B690);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v111 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v27);
  v110 = (&v95 - v30);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v100 = v17;
  v102 = a2;
  v103 = v9;
  v31 = 0;
  v98 = a1;
  v107 = v12;
  v32 = *(a1 + 64);
  v97 = a1 + 64;
  v33 = 1 << *(a1 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v32;
  v96 = (v33 + 63) >> 6;
  v101 = (v13 + 48);
  v99 = (v5 + 48);
  v104 = v4;
  while (v35)
  {
    v114 = (v35 - 1) & v35;
    v42 = __clz(__rbit64(v35)) | (v31 << 6);
    v43 = v111;
LABEL_20:
    v48 = (*(v98 + 48) + 16 * v42);
    v50 = *v48;
    v49 = v48[1];
    v51 = v105;
    sub_20E195BBC(*(v98 + 56) + *(v118 + 72) * v42, v105, type metadata accessor for TranscriptProtoParameterValue);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868698, &qword_20E33B698);
    v53 = *(v52 + 48);
    *v43 = v50;
    v43[1] = v49;
    sub_20E195B54(v51, v43 + v53, type metadata accessor for TranscriptProtoParameterValue);
    (*(*(v52 - 8) + 56))(v43, 0, 1, v52);

LABEL_21:
    v54 = v110;
    sub_20E195AA4(v43, v110, &qword_27C868690, &qword_20E33B690);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868698, &qword_20E33B698);
    v56 = (*(*(v55 - 8) + 48))(v54, 1, v55) == 1;
    result = v56;
    if (v56)
    {
      return result;
    }

    v113 = v56;
    v57 = v11;
    v58 = *(v55 + 48);
    v59 = *v54;
    v60 = v54[1];
    v39 = v116;
    sub_20E195B54(v54 + v58, v116, type metadata accessor for TranscriptProtoParameterValue);
    v61 = v102;
    v62 = sub_20E1ACAD0(v59, v60);
    v64 = v63;

    if ((v64 & 1) == 0)
    {
      goto LABEL_60;
    }

    v65 = *(v61 + 56);
    v66 = v119;
    sub_20E195BBC(v65 + *(v118 + 72) * v62, v119, type metadata accessor for TranscriptProtoParameterValue);
    v67 = *(v109 + 48);
    v68 = v115;
    sub_20E0486F4(v66, v115, &qword_27C863B18, &qword_20E323EB0);
    sub_20E0486F4(v39, v68 + v67, &qword_27C863B18, &qword_20E323EB0);
    v69 = *v101;
    v70 = v107;
    if ((*v101)(v68, 1, v107) == 1)
    {
      v71 = v69(v68 + v67, 1, v70);
      v72 = v104;
      if (v71 != 1)
      {
        goto LABEL_52;
      }

      v11 = v57;
      sub_20E04875C(v68, &qword_27C863B18, &qword_20E323EB0);
    }

    else
    {
      v73 = v100;
      sub_20E0486F4(v68, v100, &qword_27C863B18, &qword_20E323EB0);
      v74 = v69(v68 + v67, 1, v70);
      v72 = v104;
      if (v74 == 1)
      {
        sub_20E195C24(v73, type metadata accessor for ToolKitProtoTypedValue);
LABEL_52:
        v92 = &qword_27C867ED8;
        v93 = &qword_20E33AFA8;
        v94 = v68;
LABEL_58:
        sub_20E04875C(v94, v92, v93);
        goto LABEL_59;
      }

      v11 = v57;
      v75 = v68 + v67;
      v76 = v108;
      sub_20E195B54(v75, v108, type metadata accessor for ToolKitProtoTypedValue);
      v77 = *v73;
      v78 = *v76;
      if ((~*v73 & 0xF000000000000007) != 0)
      {
        v121 = *v73;
        if ((~v78 & 0xF000000000000007) == 0)
        {
          sub_20E047CF8(v77);
          sub_20E047CF8(v78);
          sub_20E047CF8(v77);

LABEL_56:
          sub_20E047CA8(v77);
          sub_20E047CA8(v78);
          v39 = v116;
LABEL_57:
          sub_20E195C24(v108, type metadata accessor for ToolKitProtoTypedValue);
          sub_20E195C24(v100, type metadata accessor for ToolKitProtoTypedValue);
          v92 = &qword_27C863B18;
          v93 = &qword_20E323EB0;
          v94 = v115;
          goto LABEL_58;
        }

        v120 = v78;
        sub_20E047CF8(v77);
        sub_20E047CF8(v78);
        sub_20E047CF8(v77);
        v79 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v121, &v120);

        sub_20E047CA8(v77);
        if ((v79 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        sub_20E047CF8(*v73);
        sub_20E047CF8(v78);
        if ((~v78 & 0xF000000000000007) != 0)
        {
          goto LABEL_56;
        }

        sub_20E047CA8(v77);
        v72 = v104;
        v39 = v116;
      }

      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v80 = v100;
      v81 = v108;
      v82 = sub_20E322850();
      sub_20E195C24(v81, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E195C24(v80, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E04875C(v115, &qword_27C863B18, &qword_20E323EB0);
      if ((v82 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v83 = *(v117 + 20);
    v84 = *(v106 + 48);
    sub_20E0486F4(v119 + v83, v11, &qword_27C863B58, &qword_20E323E68);
    sub_20E0486F4(v39 + v83, &v11[v84], &qword_27C863B58, &qword_20E323E68);
    v85 = *v99;
    if ((*v99)(v11, 1, v72) == 1)
    {
      if (v85(&v11[v84], 1, v72) != 1)
      {
        goto LABEL_54;
      }

      sub_20E04875C(v11, &qword_27C863B58, &qword_20E323E68);
    }

    else
    {
      v86 = v103;
      sub_20E0486F4(v11, v103, &qword_27C863B58, &qword_20E323E68);
      if (v85(&v11[v84], 1, v72) == 1)
      {
        sub_20E195C24(v86, type metadata accessor for TranscriptProtoPromptSelection);
        v39 = v116;
LABEL_54:
        v92 = &qword_27C868648;
        v93 = &qword_20E33B658;
        v94 = v11;
        goto LABEL_58;
      }

      v87 = &v11[v84];
      v88 = v112;
      sub_20E195B54(v87, v112, type metadata accessor for TranscriptProtoPromptSelection);
      if (*(v86 + 9))
      {
        if ((*(v88 + 9) & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (*(v88 + 9))
        {
          goto LABEL_50;
        }

        v89 = *v103;
        v90 = *v112;
        if (v103[8])
        {
          if (v89)
          {
            if ((v112[1] & 1) == 0 || !v90)
            {
              goto LABEL_50;
            }
          }

          else if ((v112[1] & 1) == 0 || v90)
          {
            goto LABEL_50;
          }
        }

        else if ((v112[1] & 1) != 0 || v89 != v90)
        {
LABEL_50:
          sub_20E195C24(v112, type metadata accessor for TranscriptProtoPromptSelection);
          sub_20E195C24(v103, type metadata accessor for TranscriptProtoPromptSelection);
          sub_20E04875C(v11, &qword_27C863B58, &qword_20E323E68);
          v39 = v116;
LABEL_59:
          sub_20E195C24(v119, type metadata accessor for TranscriptProtoParameterValue);
LABEL_60:
          sub_20E195C24(v39, type metadata accessor for TranscriptProtoParameterValue);
          return 0;
        }
      }

      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v36 = v103;
      v37 = v112;
      v38 = sub_20E322850();
      sub_20E195C24(v37, type metadata accessor for TranscriptProtoPromptSelection);
      sub_20E195C24(v36, type metadata accessor for TranscriptProtoPromptSelection);
      sub_20E04875C(v11, &qword_27C863B58, &qword_20E323E68);
      v39 = v116;
      if ((v38 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v40 = v119;
    v41 = sub_20E322850();
    sub_20E195C24(v40, type metadata accessor for TranscriptProtoParameterValue);
    sub_20E195C24(v39, type metadata accessor for TranscriptProtoParameterValue);
    v35 = v114;
    result = v113;
    if ((v41 & 1) == 0)
    {
      return result;
    }
  }

  if (v96 <= v31 + 1)
  {
    v44 = v31 + 1;
  }

  else
  {
    v44 = v96;
  }

  v45 = v44 - 1;
  v43 = v111;
  while (1)
  {
    v46 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v46 >= v96)
    {
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868698, &qword_20E33B698);
      (*(*(v91 - 8) + 56))(v43, 1, 1, v91);
      v114 = 0;
      v31 = v45;
      goto LABEL_21;
    }

    v47 = *(v97 + 8 * v46);
    ++v31;
    if (v47)
    {
      v114 = (v47 - 1) & v47;
      v42 = __clz(__rbit64(v47)) | (v46 << 6);
      v31 = v46;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E15CB48(uint64_t a1, uint64_t a2)
{
  v54 = type metadata accessor for ToolKitProtoTypedValue(0);
  v4 = *(v54 - 8);
  v5 = MEMORY[0x28223BE20](v54);
  v56 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v47 - v8);
  MEMORY[0x28223BE20](v7);
  v53 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868228, &qword_20E33B2C8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  result = MEMORY[0x28223BE20](v12);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v51 = (&v47 - v14);
  v52 = v15;
  v16 = 0;
  v48 = a1;
  v49 = v4;
  v17 = *(a1 + 64);
  v47 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v50 = v9;
  while (v20)
  {
    v55 = (v20 - 1) & v20;
    v24 = __clz(__rbit64(v20)) | (v16 << 6);
    v25 = v52;
LABEL_17:
    v30 = *(*(v48 + 48) + 4 * v24);
    v31 = v53;
    sub_20E195BBC(*(v48 + 56) + *(v4 + 72) * v24, v53, type metadata accessor for ToolKitProtoTypedValue);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868230, &qword_20E33B2D0);
    v33 = *(v32 + 48);
    *v25 = v30;
    sub_20E195B54(v31, v25 + v33, type metadata accessor for ToolKitProtoTypedValue);
    (*(*(v32 - 8) + 56))(v25, 0, 1, v32);
LABEL_18:
    v34 = v51;
    sub_20E195AA4(v25, v51, &qword_27C868228, &qword_20E33B2C8);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868230, &qword_20E33B2D0);
    v36 = (*(*(v35 - 8) + 48))(v34, 1, v35);
    v37 = v36 == 1;
    if (v36 == 1)
    {
      return v37;
    }

    v38 = *(v35 + 48);
    v39 = *v34;
    sub_20E195B54(v34 + v38, v9, type metadata accessor for ToolKitProtoTypedValue);
    v40 = sub_20E1ACB48(v39);
    if ((v41 & 1) == 0)
    {
      goto LABEL_31;
    }

    v42 = v56;
    sub_20E195BBC(*(a2 + 56) + *(v4 + 72) * v40, v56, type metadata accessor for ToolKitProtoTypedValue);
    v43 = *v42;
    v44 = *v9;
    if ((~v43 & 0xF000000000000007) != 0)
    {
      v58 = v43;
      if ((~v44 & 0xF000000000000007) == 0)
      {
        sub_20E047CF8(v43);
        sub_20E047CF8(v44);
        sub_20E047CF8(v43);

LABEL_29:
        sub_20E047CA8(v43);
        sub_20E047CA8(v44);
LABEL_30:
        sub_20E195C24(v56, type metadata accessor for ToolKitProtoTypedValue);
        v9 = v50;
LABEL_31:
        sub_20E195C24(v9, type metadata accessor for ToolKitProtoTypedValue);
        return 0;
      }

      v57 = v44;
      sub_20E047CF8(v43);
      sub_20E047CF8(v44);
      sub_20E047CF8(v43);
      v45 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v58, &v57);

      sub_20E047CA8(v43);
      if ((v45 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_20E047CF8(v43);
      sub_20E047CF8(v44);
      if ((~v44 & 0xF000000000000007) != 0)
      {
        goto LABEL_29;
      }

      sub_20E047CA8(v43);
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v22 = v56;
    v9 = v50;
    v23 = sub_20E322850();
    sub_20E195C24(v22, type metadata accessor for ToolKitProtoTypedValue);
    result = sub_20E195C24(v9, type metadata accessor for ToolKitProtoTypedValue);
    v4 = v49;
    v20 = v55;
    if ((v23 & 1) == 0)
    {
      return v37;
    }
  }

  if (v21 <= v16 + 1)
  {
    v26 = v16 + 1;
  }

  else
  {
    v26 = v21;
  }

  v27 = v26 - 1;
  v25 = v52;
  while (1)
  {
    v28 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v28 >= v21)
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868230, &qword_20E33B2D0);
      (*(*(v46 - 8) + 56))(v25, 1, 1, v46);
      v55 = 0;
      v16 = v27;
      goto LABEL_18;
    }

    v29 = *(v47 + 8 * v28);
    ++v16;
    if (v29)
    {
      v55 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v16 = v28;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E15D148(uint64_t a1, uint64_t a2)
{
  v59 = type metadata accessor for ToolKitProtoTypedValue(0);
  v61 = *(v59 - 8);
  v4 = MEMORY[0x28223BE20](v59);
  v62 = (&v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v53 - v7);
  MEMORY[0x28223BE20](v6);
  v57 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683D0, &qword_20E33B430);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  result = MEMORY[0x28223BE20](v11);
  v15 = (&v53 - v13);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v58 = v14;
  v16 = 0;
  v54 = (&v53 - v13);
  v55 = a1;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v56 = a2;
  while (v22)
  {
    v60 = (v22 - 1) & v22;
    v26 = __clz(__rbit64(v22)) | (v16 << 6);
LABEL_17:
    v32 = (*(v55 + 48) + 16 * v26);
    v34 = *v32;
    v33 = v32[1];
    v35 = v57;
    sub_20E195BBC(*(v55 + 56) + *(v61 + 72) * v26, v57, type metadata accessor for ToolKitProtoTypedValue);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683D8, &qword_20E33B438);
    v37 = *(v36 + 48);
    v38 = v58;
    *v58 = v34;
    v38[1] = v33;
    v29 = v38;
    sub_20E195B54(v35, v38 + v37, type metadata accessor for ToolKitProtoTypedValue);
    (*(*(v36 - 8) + 56))(v29, 0, 1, v36);

    v15 = v54;
LABEL_18:
    sub_20E195AA4(v29, v15, &qword_27C8683D0, &qword_20E33B430);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683D8, &qword_20E33B438);
    v40 = (*(*(v39 - 8) + 48))(v15, 1, v39);
    v41 = v40 == 1;
    if (v40 == 1)
    {
      return v41;
    }

    v42 = *(v39 + 48);
    v43 = *v15;
    v44 = v15[1];
    sub_20E195B54(v15 + v42, v8, type metadata accessor for ToolKitProtoTypedValue);
    v45 = sub_20E1ACAD0(v43, v44);
    LOBYTE(v43) = v46;

    if ((v43 & 1) == 0)
    {
      goto LABEL_31;
    }

    v47 = v62;
    sub_20E195BBC(*(a2 + 56) + *(v61 + 72) * v45, v62, type metadata accessor for ToolKitProtoTypedValue);
    v48 = *v47;
    v49 = *v8;
    if ((~*v47 & 0xF000000000000007) != 0)
    {
      v64 = *v47;
      if ((~v49 & 0xF000000000000007) == 0)
      {
        v50 = v8;
        sub_20E047CF8(v48);
        sub_20E047CF8(v49);
        sub_20E047CF8(v48);

LABEL_29:
        sub_20E047CA8(v48);
        sub_20E047CA8(v49);
        v8 = v50;
LABEL_30:
        sub_20E195C24(v62, type metadata accessor for ToolKitProtoTypedValue);
LABEL_31:
        sub_20E195C24(v8, type metadata accessor for ToolKitProtoTypedValue);
        return 0;
      }

      v63 = v49;
      sub_20E047CF8(v48);
      sub_20E047CF8(v49);
      sub_20E047CF8(v48);
      v51 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v64, &v63);

      sub_20E047CA8(v48);
      if ((v51 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v50 = v8;
      sub_20E047CF8(v48);
      sub_20E047CF8(v49);
      if ((~v49 & 0xF000000000000007) != 0)
      {
        goto LABEL_29;
      }

      sub_20E047CA8(v48);
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v24 = v62;
    v25 = sub_20E322850();
    sub_20E195C24(v24, type metadata accessor for ToolKitProtoTypedValue);
    result = sub_20E195C24(v8, type metadata accessor for ToolKitProtoTypedValue);
    a2 = v56;
    v22 = v60;
    if ((v25 & 1) == 0)
    {
      return v41;
    }
  }

  if (v23 <= v16 + 1)
  {
    v27 = v16 + 1;
  }

  else
  {
    v27 = v23;
  }

  v28 = v27 - 1;
  v29 = v58;
  while (1)
  {
    v30 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v30 >= v23)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683D8, &qword_20E33B438);
      (*(*(v52 - 8) + 56))(v29, 1, 1, v52);
      v60 = 0;
      v16 = v28;
      goto LABEL_18;
    }

    v31 = *(v18 + 8 * v30);
    ++v16;
    if (v31)
    {
      v60 = (v31 - 1) & v31;
      v26 = __clz(__rbit64(v31)) | (v30 << 6);
      v16 = v30;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E15D764(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for TranscriptProtoShimParameters(0);
  v4 = *(v58 - 8);
  v5 = MEMORY[0x28223BE20](v58);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v54 - v9);
  MEMORY[0x28223BE20](v8);
  v57 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868628, &qword_20E33B638);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  result = MEMORY[0x28223BE20](v13);
  v60 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v60 + 16))
  {
    return 0;
  }

  v55 = a1;
  v56 = &v54 - v15;
  v59 = v16;
  v17 = 0;
  v18 = *(a1 + 64);
  v54 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v61 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_16:
    v29 = (*(v55 + 48) + 16 * v23);
    v31 = *v29;
    v30 = v29[1];
    v32 = v57;
    sub_20E195BBC(*(v55 + 56) + *(v4 + 72) * v23, v57, type metadata accessor for TranscriptProtoShimParameters);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868630, &qword_20E33B640);
    v34 = *(v33 + 48);
    v35 = v59;
    *v59 = v31;
    v35[1] = v30;
    v36 = v32;
    v26 = v35;
    sub_20E195B54(v36, v35 + v34, type metadata accessor for TranscriptProtoShimParameters);
    (*(*(v33 - 8) + 56))(v26, 0, 1, v33);

LABEL_17:
    v37 = v26;
    v38 = v56;
    sub_20E195AA4(v37, v56, &qword_27C868628, &qword_20E33B638);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868630, &qword_20E33B640);
    v40 = (*(*(v39 - 8) + 48))(v38, 1, v39);
    v41 = v40 == 1;
    if (v40 == 1)
    {
      return v41;
    }

    v42 = v38;
    v43 = v7;
    v44 = *(v39 + 48);
    v45 = *v42;
    v46 = v42[1];
    sub_20E195B54(v42 + v44, v10, type metadata accessor for TranscriptProtoShimParameters);
    v47 = v45;
    v48 = v60;
    v49 = sub_20E1ACAD0(v47, v46);
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      goto LABEL_25;
    }

    v7 = v43;
    sub_20E195BBC(*(v48 + 56) + *(v4 + 72) * v49, v43, type metadata accessor for TranscriptProtoShimParameters);
    if ((sub_20E153678(*v43, *v10) & 1) == 0)
    {
      sub_20E195C24(v43, type metadata accessor for TranscriptProtoShimParameters);
LABEL_25:
      sub_20E195C24(v10, type metadata accessor for TranscriptProtoShimParameters);
      return 0;
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v52 = sub_20E322850();
    sub_20E195C24(v43, type metadata accessor for TranscriptProtoShimParameters);
    result = sub_20E195C24(v10, type metadata accessor for TranscriptProtoShimParameters);
    v21 = v61;
    if ((v52 & 1) == 0)
    {
      return v41;
    }
  }

  if (v22 <= v17 + 1)
  {
    v24 = v17 + 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 - 1;
  v26 = v59;
  while (1)
  {
    v27 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v27 >= v22)
    {
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868630, &qword_20E33B640);
      (*(*(v53 - 8) + 56))(v26, 1, 1, v53);
      v61 = 0;
      v17 = v25;
      goto LABEL_17;
    }

    v28 = *(v54 + 8 * v27);
    ++v17;
    if (v28)
    {
      v61 = (v28 - 1) & v28;
      v23 = __clz(__rbit64(v28)) | (v27 << 6);
      v17 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E15DCC4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_20E1ACAD0(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E15DDF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v150 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v146 = (&v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B58, &qword_20E323E68);
  MEMORY[0x28223BE20](v6 - 8);
  v153 = (&v124 - v7);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868648, &qword_20E33B658);
  MEMORY[0x28223BE20](v141);
  v149 = &v124 - v8;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868028, &qword_20E33B0D8);
  MEMORY[0x28223BE20](v129);
  v10 = (&v124 - v9);
  v137 = type metadata accessor for TranscriptProtoToolParameterValueEnum(0);
  v11 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v134 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868030, &unk_20E33C420);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v124 - v14;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868038, &qword_20E33B0E0);
  MEMORY[0x28223BE20](v136);
  v138 = &v124 - v16;
  v151 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  v17 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v142 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686A0, &unk_20E33C250);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v124 - v20;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686A8, &qword_20E33B6A0);
  MEMORY[0x28223BE20](v143);
  v152 = &v124 - v22;
  v23 = type metadata accessor for TranscriptProtoActionParameterValue(0);
  v24 = *(v23 - 8);
  v154 = v23;
  v155 = v24;
  v25 = MEMORY[0x28223BE20](v23);
  v156 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v124 - v28;
  MEMORY[0x28223BE20](v27);
  v140 = &v124 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686B0, &qword_20E33B6A8);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v147 = &v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v32);
  v144 = (&v124 - v35);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v127 = v15;
  v133 = v21;
  v126 = v10;
  v139 = v4;
  v36 = 0;
  v130 = a1;
  v37 = *(a1 + 64);
  v125 = a1 + 64;
  v38 = 1 << *(a1 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v37;
  v124 = (v38 + 63) >> 6;
  v135 = (v17 + 48);
  v128 = (v11 + 48);
  v132 = (v150 + 48);
  v150 = v29;
  v41 = a2;
  v42 = v147;
  v131 = a2;
  while (1)
  {
    if (!v40)
    {
      if (v124 <= v36 + 1)
      {
        v50 = v36 + 1;
      }

      else
      {
        v50 = v124;
      }

      v51 = v50 - 1;
      while (1)
      {
        v52 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v52 >= v124)
        {
          v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686B8, &qword_20E33B6B0);
          (*(*(v96 - 8) + 56))(v42, 1, 1, v96);
          v148 = 0;
          v36 = v51;
          goto LABEL_21;
        }

        v53 = *(v125 + 8 * v52);
        ++v36;
        if (v53)
        {
          v148 = (v53 - 1) & v53;
          v49 = __clz(__rbit64(v53)) | (v52 << 6);
          v36 = v52;
          goto LABEL_20;
        }
      }

      __break(1u);
      return result;
    }

    v148 = (v40 - 1) & v40;
    v49 = __clz(__rbit64(v40)) | (v36 << 6);
LABEL_20:
    v54 = (*(v130 + 48) + 16 * v49);
    v56 = *v54;
    v55 = v54[1];
    v57 = v140;
    sub_20E195BBC(*(v130 + 56) + *(v155 + 72) * v49, v140, type metadata accessor for TranscriptProtoActionParameterValue);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686B8, &qword_20E33B6B0);
    v59 = *(v58 + 48);
    *v42 = v56;
    v42[1] = v55;
    sub_20E195B54(v57, v42 + v59, type metadata accessor for TranscriptProtoActionParameterValue);
    (*(*(v58 - 8) + 56))(v42, 0, 1, v58);

LABEL_21:
    v60 = v144;
    sub_20E195AA4(v42, v144, &qword_27C8686B0, &qword_20E33B6A8);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686B8, &qword_20E33B6B0);
    v62 = (*(*(v61 - 8) + 48))(v60, 1, v61);
    v43 = v62 == 1;
    if (v62 == 1)
    {
      return v43;
    }

    v63 = *(v61 + 48);
    v64 = *v60;
    v65 = v60[1];
    sub_20E195B54(v60 + v63, v29, type metadata accessor for TranscriptProtoActionParameterValue);
    v66 = sub_20E1ACAD0(v64, v65);
    v68 = v67;

    if ((v68 & 1) == 0)
    {
      v116 = v29;
      goto LABEL_73;
    }

    v145 = v43;
    v69 = v156;
    sub_20E195BBC(*(v41 + 56) + *(v155 + 72) * v66, v156, type metadata accessor for TranscriptProtoActionParameterValue);
    v70 = *(v143 + 48);
    v71 = v152;
    sub_20E0486F4(v69, v152, &qword_27C8686A0, &unk_20E33C250);
    sub_20E0486F4(v29, v71 + v70, &qword_27C8686A0, &unk_20E33C250);
    v72 = *v135;
    v73 = v151;
    if ((*v135)(v71, 1, v151) != 1)
    {
      v79 = v133;
      sub_20E0486F4(v71, v133, &qword_27C8686A0, &unk_20E33C250);
      v80 = v72(v71 + v70, 1, v73);
      v81 = v71;
      v76 = v149;
      if (v80 == 1)
      {
        sub_20E195C24(v156, type metadata accessor for TranscriptProtoActionParameterValue);
        sub_20E195C24(v29, type metadata accessor for TranscriptProtoActionParameterValue);
        v118 = type metadata accessor for TranscriptProtoToolParameterValue;
        v117 = v79;
        goto LABEL_59;
      }

      v82 = v142;
      sub_20E195B54(v81 + v70, v142, type metadata accessor for TranscriptProtoToolParameterValue);
      v83 = *(v136 + 48);
      v84 = v138;
      sub_20E0486F4(v79, v138, &qword_27C868030, &unk_20E33C420);
      sub_20E0486F4(v82, v84 + v83, &qword_27C868030, &unk_20E33C420);
      v85 = *v128;
      v86 = v137;
      if ((*v128)(v84, 1, v137) == 1)
      {
        if (v85(v84 + v83, 1, v86) == 1)
        {
          v87 = v154;
          sub_20E04875C(v84, &qword_27C868030, &unk_20E33C420);
          v78 = v153;
          goto LABEL_39;
        }

        v121 = type metadata accessor for TranscriptProtoToolParameterValue;
        v122 = v142;
      }

      else
      {
        v88 = v127;
        sub_20E0486F4(v84, v127, &qword_27C868030, &unk_20E33C420);
        v89 = v85(v84 + v83, 1, v86);
        v90 = v154;
        if (v89 != 1)
        {
          v91 = v134;
          sub_20E195B54(v84 + v83, v134, type metadata accessor for TranscriptProtoToolParameterValueEnum);
          v92 = v126;
          v93 = (v126 + *(v129 + 48));
          sub_20E195BBC(v88, v126, type metadata accessor for TranscriptProtoToolParameterValueEnum);
          sub_20E195BBC(v91, v93, type metadata accessor for TranscriptProtoToolParameterValueEnum);
          v94 = *v92;
          v95 = *v93;
          if ((~*v92 & 0xF000000000000007) != 0)
          {
            v158 = *v92;
            if ((~v95 & 0xF000000000000007) == 0)
            {
              sub_20E047CF8(v94);
              sub_20E047CF8(v95);
              sub_20E047CF8(v94);

LABEL_67:
              sub_20E047CA8(v94);
              sub_20E047CA8(v95);
LABEL_68:
              sub_20E195C24(v134, type metadata accessor for TranscriptProtoToolParameterValueEnum);
              sub_20E195C24(v93, type metadata accessor for ToolKitProtoTypedValue);
              sub_20E195C24(v126, type metadata accessor for ToolKitProtoTypedValue);
              sub_20E195C24(v127, type metadata accessor for TranscriptProtoToolParameterValueEnum);
              sub_20E04875C(v138, &qword_27C868030, &unk_20E33C420);
LABEL_69:
              sub_20E195C24(v142, type metadata accessor for TranscriptProtoToolParameterValue);
LABEL_70:
              v123 = v152;
              sub_20E195C24(v133, type metadata accessor for TranscriptProtoToolParameterValue);
              v113 = &qword_27C8686A0;
              v114 = &unk_20E33C250;
              v115 = v123;
LABEL_71:
              sub_20E04875C(v115, v113, v114);
LABEL_72:
              sub_20E195C24(v156, type metadata accessor for TranscriptProtoActionParameterValue);
              v116 = v150;
LABEL_73:
              sub_20E195C24(v116, type metadata accessor for TranscriptProtoActionParameterValue);
              return 0;
            }

            v87 = v90;
            v157 = v95;
            sub_20E047CF8(v94);
            sub_20E047CF8(v95);
            sub_20E047CF8(v94);
            v97 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v158, &v157);

            sub_20E047CA8(v94);
            if ((v97 & 1) == 0)
            {
              goto LABEL_68;
            }
          }

          else
          {
            sub_20E047CF8(*v92);
            sub_20E047CF8(v95);
            if ((~v95 & 0xF000000000000007) != 0)
            {
              goto LABEL_67;
            }

            v87 = v90;
            sub_20E047CA8(v94);
          }

          type metadata accessor for ToolKitProtoTypedValue(0);
          sub_20E3221C0();
          sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v98 = v126;
          v99 = sub_20E322850();
          sub_20E195C24(v134, type metadata accessor for TranscriptProtoToolParameterValueEnum);
          sub_20E195C24(v93, type metadata accessor for ToolKitProtoTypedValue);
          sub_20E195C24(v98, type metadata accessor for ToolKitProtoTypedValue);
          sub_20E195C24(v127, type metadata accessor for TranscriptProtoToolParameterValueEnum);
          sub_20E04875C(v138, &qword_27C868030, &unk_20E33C420);
          v76 = v149;
          v78 = v153;
          if ((v99 & 1) == 0)
          {
            goto LABEL_69;
          }

LABEL_39:
          sub_20E3221C0();
          sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v100 = v133;
          v101 = v142;
          v102 = sub_20E322850();
          sub_20E195C24(v101, type metadata accessor for TranscriptProtoToolParameterValue);
          sub_20E195C24(v100, type metadata accessor for TranscriptProtoToolParameterValue);
          sub_20E04875C(v152, &qword_27C8686A0, &unk_20E33C250);
          v77 = v87;
          if ((v102 & 1) == 0)
          {
            goto LABEL_72;
          }

          goto LABEL_40;
        }

        sub_20E195C24(v142, type metadata accessor for TranscriptProtoToolParameterValue);
        v121 = type metadata accessor for TranscriptProtoToolParameterValueEnum;
        v122 = v88;
      }

      sub_20E195C24(v122, v121);
      sub_20E04875C(v84, &qword_27C868038, &qword_20E33B0E0);
      goto LABEL_70;
    }

    v74 = v72(v71 + v70, 1, v73) == 1;
    v75 = v71;
    v76 = v149;
    if (!v74)
    {
      sub_20E195C24(v156, type metadata accessor for TranscriptProtoActionParameterValue);
      v117 = v150;
      v118 = type metadata accessor for TranscriptProtoActionParameterValue;
LABEL_59:
      sub_20E195C24(v117, v118);
      sub_20E04875C(v152, &qword_27C8686A8, &qword_20E33B6A0);
      return 0;
    }

    sub_20E04875C(v75, &qword_27C8686A0, &unk_20E33C250);
    v78 = v153;
    v77 = v154;
LABEL_40:
    v103 = *(v77 + 20);
    v104 = *(v141 + 48);
    sub_20E0486F4(v156 + v103, v76, &qword_27C863B58, &qword_20E323E68);
    sub_20E0486F4(&v150[v103], v76 + v104, &qword_27C863B58, &qword_20E323E68);
    v105 = *v132;
    v106 = v139;
    if ((*v132)(v76, 1, v139) == 1)
    {
      break;
    }

    sub_20E0486F4(v76, v78, &qword_27C863B58, &qword_20E323E68);
    v108 = v105(v76 + v104, 1, v106);
    v42 = v147;
    if (v108 == 1)
    {
      sub_20E195C24(v156, type metadata accessor for TranscriptProtoActionParameterValue);
      sub_20E195C24(v150, type metadata accessor for TranscriptProtoActionParameterValue);
      v119 = type metadata accessor for TranscriptProtoPromptSelection;
      v120 = v78;
      goto LABEL_62;
    }

    v109 = v76 + v104;
    v110 = v146;
    sub_20E195B54(v109, v146, type metadata accessor for TranscriptProtoPromptSelection);
    if (*(v78 + 9))
    {
      v41 = v131;
      if ((*(v110 + 9) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v41 = v131;
      if (*(v110 + 9))
      {
        goto LABEL_56;
      }

      v111 = *v153;
      v112 = *v146;
      if (v153[1])
      {
        if (v111)
        {
          if ((v146[1] & 1) == 0 || !v112)
          {
            goto LABEL_56;
          }
        }

        else if ((v146[1] & 1) == 0 || v112)
        {
          goto LABEL_56;
        }
      }

      else if ((v146[1] & 1) != 0 || v111 != v112)
      {
LABEL_56:
        sub_20E195C24(v146, type metadata accessor for TranscriptProtoPromptSelection);
        sub_20E195C24(v153, type metadata accessor for TranscriptProtoPromptSelection);
        v113 = &qword_27C863B58;
        v114 = &qword_20E323E68;
        v115 = v76;
        goto LABEL_71;
      }
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v44 = v153;
    v45 = v146;
    v46 = sub_20E322850();
    sub_20E195C24(v45, type metadata accessor for TranscriptProtoPromptSelection);
    sub_20E195C24(v44, type metadata accessor for TranscriptProtoPromptSelection);
    sub_20E04875C(v76, &qword_27C863B58, &qword_20E323E68);
    if ((v46 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_9:
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v47 = v156;
    v29 = v150;
    v48 = sub_20E322850();
    sub_20E195C24(v47, type metadata accessor for TranscriptProtoActionParameterValue);
    result = sub_20E195C24(v29, type metadata accessor for TranscriptProtoActionParameterValue);
    v40 = v148;
    v43 = v145;
    if ((v48 & 1) == 0)
    {
      return v43;
    }
  }

  v107 = v105(v76 + v104, 1, v106);
  v42 = v147;
  if (v107 == 1)
  {
    sub_20E04875C(v76, &qword_27C863B58, &qword_20E323E68);
    v41 = v131;
    goto LABEL_9;
  }

  sub_20E195C24(v156, type metadata accessor for TranscriptProtoActionParameterValue);
  v120 = v150;
  v119 = type metadata accessor for TranscriptProtoActionParameterValue;
LABEL_62:
  sub_20E195C24(v120, v119);
  sub_20E04875C(v76, &qword_27C868648, &qword_20E33B658);
  return 0;
}

uint64_t sub_20E15F198(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
  v4 = *(v58 - 8);
  v5 = MEMORY[0x28223BE20](v58);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v54 - v9);
  MEMORY[0x28223BE20](v8);
  v57 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E80, &qword_20E33AF58);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  result = MEMORY[0x28223BE20](v13);
  v60 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v60 + 16))
  {
    return 0;
  }

  v55 = a1;
  v56 = &v54 - v15;
  v59 = v16;
  v17 = 0;
  v18 = *(a1 + 64);
  v54 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v61 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v17 << 6);
LABEL_16:
    v29 = (*(v55 + 48) + 16 * v23);
    v31 = *v29;
    v30 = v29[1];
    v32 = v57;
    sub_20E195BBC(*(v55 + 56) + *(v4 + 72) * v23, v57, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E88, &qword_20E33AF60);
    v34 = *(v33 + 48);
    v35 = v59;
    *v59 = v31;
    v35[1] = v30;
    v36 = v32;
    v26 = v35;
    sub_20E195B54(v36, v35 + v34, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    (*(*(v33 - 8) + 56))(v26, 0, 1, v33);

LABEL_17:
    v37 = v26;
    v38 = v56;
    sub_20E195AA4(v37, v56, &qword_27C867E80, &qword_20E33AF58);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E88, &qword_20E33AF60);
    v40 = (*(*(v39 - 8) + 48))(v38, 1, v39);
    v41 = v40 == 1;
    if (v40 == 1)
    {
      return v41;
    }

    v42 = v38;
    v43 = v7;
    v44 = *(v39 + 48);
    v45 = *v42;
    v46 = v42[1];
    sub_20E195B54(v42 + v44, v10, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    v47 = v45;
    v48 = v60;
    v49 = sub_20E1ACAD0(v47, v46);
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      goto LABEL_25;
    }

    v7 = v43;
    sub_20E195BBC(*(v48 + 56) + *(v4 + 72) * v49, v43, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    if ((sub_20E1586F8(*v43, *v10) & 1) == 0)
    {
      sub_20E195C24(v43, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
LABEL_25:
      sub_20E195C24(v10, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
      return 0;
    }

    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v52 = sub_20E322850();
    sub_20E195C24(v43, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    result = sub_20E195C24(v10, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    v21 = v61;
    if ((v52 & 1) == 0)
    {
      return v41;
    }
  }

  if (v22 <= v17 + 1)
  {
    v24 = v17 + 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 - 1;
  v26 = v59;
  while (1)
  {
    v27 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v27 >= v22)
    {
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E88, &qword_20E33AF60);
      (*(*(v53 - 8) + 56))(v26, 1, 1, v53);
      v61 = 0;
      v17 = v25;
      goto LABEL_17;
    }

    v28 = *(v54 + 8 * v27);
    ++v17;
    if (v28)
    {
      v61 = (v28 - 1) & v28;
      v23 = __clz(__rbit64(v28)) | (v27 << 6);
      v17 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E15F6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_20E321EC0();
  v11 = result;
  if (result)
  {
    result = sub_20E321EE0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_20E321ED0();
  sub_20E146020(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}