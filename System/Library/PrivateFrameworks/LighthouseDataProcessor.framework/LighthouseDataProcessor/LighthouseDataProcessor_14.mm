uint64_t _s23LighthouseDataProcessor022ContextProtoStructuredD0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C00, &qword_20E323EE8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B30, &qword_20E345E00);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C863C00, &qword_20E323EE8);
  sub_20E0486F4(a2, &v14[v15], &qword_27C863C00, &qword_20E323EE8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C863C00, &qword_20E323EE8);
LABEL_9:
      type metadata accessor for ContextProtoStructuredContext(0);
      sub_20E3221C0();
      sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C863C00, &qword_20E323EE8);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E21DA84(v10, type metadata accessor for ContextProtoStructuredContextKind);
LABEL_6:
    sub_20E04875C(v14, &qword_27C869B30, &qword_20E345E00);
    goto LABEL_7;
  }

  sub_20E21DAE4(&v14[v15], v7, type metadata accessor for ContextProtoStructuredContextKind);
  v18 = _s23LighthouseDataProcessor022ContextProtoStructuredD4KindO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E21DA84(v7, type metadata accessor for ContextProtoStructuredContextKind);
  sub_20E21DA84(v10, type metadata accessor for ContextProtoStructuredContextKind);
  sub_20E04875C(v14, &qword_27C863C00, &qword_20E323EE8);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor021ContextProtoRetrievedD0V2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v109 = a1;
  v110 = a2;
  v2 = type metadata accessor for ContextProtoStructuredContext(0);
  v91 = *(v2 - 8);
  v92 = v2;
  MEMORY[0x28223BE20](v2);
  v88 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BE0, &qword_20E323EC8);
  MEMORY[0x28223BE20](v4 - 8);
  v89 = &v84 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B70, &qword_20E345E40);
  MEMORY[0x28223BE20](v90);
  v93 = &v84 - v6;
  v7 = type metadata accessor for ContextProtoContextMetadata(0);
  v100 = *(v7 - 8);
  v101 = v7;
  MEMORY[0x28223BE20](v7);
  v95 = (&v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BD8, &qword_20E323EC0);
  MEMORY[0x28223BE20](v9 - 8);
  v98 = (&v84 - v10);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B78, &qword_20E345E48);
  MEMORY[0x28223BE20](v99);
  v102 = &v84 - v11;
  v12 = type metadata accessor for ContextProtoConfidence(0);
  v107 = *(v12 - 8);
  v108 = v12;
  MEMORY[0x28223BE20](v12);
  v103 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BD0, &qword_20E323EB8);
  MEMORY[0x28223BE20](v14 - 8);
  v104 = &v84 - v15;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B68, &qword_20E345E38);
  MEMORY[0x28223BE20](v106);
  v17 = &v84 - v16;
  v18 = type metadata accessor for ToolKitProtoTypedValue(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v105 = (&v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v94 = (&v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v25 = (&v84 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v27 = MEMORY[0x28223BE20](v26);
  v97 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v84 - v29;
  v31 = type metadata accessor for ContextProtoRetrievedContext(0);
  v32 = *(v31 + 20);
  v96 = v26;
  v33 = *(v26 + 48);
  sub_20E0486F4(&v109[v32], v30, &qword_27C863B18, &qword_20E323EB0);
  sub_20E0486F4(&v110[v32], &v30[v33], &qword_27C863B18, &qword_20E323EB0);
  v36 = *(v19 + 48);
  v35 = v19 + 48;
  v34 = v36;
  if (v36(v30, 1, v18) == 1)
  {
    if (v34(&v30[v33], 1, v18) == 1)
    {
      v85 = v34;
      v86 = v35;
      v87 = v18;
      sub_20E04875C(v30, &qword_27C863B18, &qword_20E323EB0);
      goto LABEL_9;
    }

LABEL_6:
    v37 = &qword_27C867ED8;
    v38 = &qword_20E33AFA8;
LABEL_7:
    v39 = v30;
LABEL_35:
    sub_20E04875C(v39, v37, v38);
    goto LABEL_36;
  }

  sub_20E0486F4(v30, v25, &qword_27C863B18, &qword_20E323EB0);
  if (v34(&v30[v33], 1, v18) == 1)
  {
    sub_20E21DA84(v25, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_6;
  }

  v85 = v34;
  v86 = v35;
  v87 = v18;
  v40 = v105;
  sub_20E21DAE4(&v30[v33], v105, type metadata accessor for ToolKitProtoTypedValue);
  v41 = sub_20E2EC4C4(v25, v40);
  sub_20E21DA84(v40, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E21DA84(v25, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v30, &qword_27C863B18, &qword_20E323EB0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_9:
  v42 = v31;
  v43 = *(v31 + 24);
  v44 = *(v106 + 48);
  v45 = v109;
  sub_20E0486F4(&v109[v43], v17, &qword_27C863BD0, &qword_20E323EB8);
  v46 = v110;
  sub_20E0486F4(&v110[v43], &v17[v44], &qword_27C863BD0, &qword_20E323EB8);
  v47 = v108;
  v48 = *(v107 + 48);
  if (v48(v17, 1, v108) == 1)
  {
    if (v48(&v17[v44], 1, v47) == 1)
    {
      sub_20E04875C(v17, &qword_27C863BD0, &qword_20E323EB8);
      goto LABEL_12;
    }

LABEL_18:
    v37 = &qword_27C869B68;
    v38 = &qword_20E345E38;
    v39 = v17;
    goto LABEL_35;
  }

  v54 = v104;
  sub_20E0486F4(v17, v104, &qword_27C863BD0, &qword_20E323EB8);
  if (v48(&v17[v44], 1, v47) == 1)
  {
    sub_20E21DA84(v54, type metadata accessor for ContextProtoConfidence);
    goto LABEL_18;
  }

  v55 = v103;
  sub_20E21DAE4(&v17[v44], v103, type metadata accessor for ContextProtoConfidence);
  if (*v54 != *v55 || *(v54 + 4) != *(v55 + 4))
  {
    sub_20E21DA84(v55, type metadata accessor for ContextProtoConfidence);
    sub_20E21DA84(v54, type metadata accessor for ContextProtoConfidence);
    v37 = &qword_27C863BD0;
    v38 = &qword_20E323EB8;
    v39 = v17;
    goto LABEL_35;
  }

  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v56 = sub_20E322850();
  sub_20E21DA84(v55, type metadata accessor for ContextProtoConfidence);
  sub_20E21DA84(v54, type metadata accessor for ContextProtoConfidence);
  sub_20E04875C(v17, &qword_27C863BD0, &qword_20E323EB8);
  if ((v56 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_12:
  if (*v45 != *v46)
  {
    goto LABEL_36;
  }

  v49 = v42[7];
  v50 = *(v99 + 48);
  v51 = v102;
  sub_20E0486F4(&v45[v49], v102, &qword_27C863BD8, &qword_20E323EC0);
  sub_20E0486F4(&v46[v49], v51 + v50, &qword_27C863BD8, &qword_20E323EC0);
  v52 = v101;
  v53 = *(v100 + 48);
  if (v53(v51, 1, v101) == 1)
  {
    if (v53(v51 + v50, 1, v52) == 1)
    {
      sub_20E04875C(v51, &qword_27C863BD8, &qword_20E323EC0);
      goto LABEL_28;
    }

LABEL_26:
    v37 = &qword_27C869B78;
    v38 = &qword_20E345E48;
LABEL_34:
    v39 = v51;
    goto LABEL_35;
  }

  v57 = v98;
  sub_20E0486F4(v51, v98, &qword_27C863BD8, &qword_20E323EC0);
  if (v53(v51 + v50, 1, v52) == 1)
  {
    sub_20E21DA84(v57, type metadata accessor for ContextProtoContextMetadata);
    goto LABEL_26;
  }

  v58 = v95;
  sub_20E21DAE4(v51 + v50, v95, type metadata accessor for ContextProtoContextMetadata);
  v59 = _s23LighthouseDataProcessor012ContextProtoD8MetadataV2eeoiySbAC_ACtFZ_0(v57, v58);
  sub_20E21DA84(v58, type metadata accessor for ContextProtoContextMetadata);
  sub_20E21DA84(v57, type metadata accessor for ContextProtoContextMetadata);
  sub_20E04875C(v51, &qword_27C863BD8, &qword_20E323EC0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_28:
  v60 = v42[8];
  v51 = v97;
  v61 = *(v96 + 48);
  sub_20E0486F4(&v45[v60], v97, &qword_27C863B18, &qword_20E323EB0);
  sub_20E0486F4(&v46[v60], v51 + v61, &qword_27C863B18, &qword_20E323EB0);
  v62 = v87;
  v63 = v85;
  if (v85(v51, 1, v87) == 1)
  {
    if (v63(v51 + v61, 1, v62) == 1)
    {
      sub_20E04875C(v51, &qword_27C863B18, &qword_20E323EB0);
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v64 = v94;
  sub_20E0486F4(v51, v94, &qword_27C863B18, &qword_20E323EB0);
  if (v63(v51 + v61, 1, v62) == 1)
  {
    sub_20E21DA84(v64, type metadata accessor for ToolKitProtoTypedValue);
LABEL_33:
    v37 = &qword_27C867ED8;
    v38 = &qword_20E33AFA8;
    goto LABEL_34;
  }

  v67 = v105;
  sub_20E21DAE4(v51 + v61, v105, type metadata accessor for ToolKitProtoTypedValue);
  v68 = sub_20E2EC4C4(v64, v67);
  sub_20E21DA84(v67, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E21DA84(v64, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v51, &qword_27C863B18, &qword_20E323EB0);
  if ((v68 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_39:
  v69 = v42[9];
  v70 = *(v90 + 48);
  v71 = v93;
  sub_20E0486F4(&v45[v69], v93, &qword_27C863BE0, &qword_20E323EC8);
  v72 = &v46[v69];
  v30 = v71;
  sub_20E0486F4(v72, v71 + v70, &qword_27C863BE0, &qword_20E323EC8);
  v73 = v92;
  v74 = *(v91 + 48);
  if (v74(v71, 1, v92) != 1)
  {
    v75 = v89;
    sub_20E0486F4(v30, v89, &qword_27C863BE0, &qword_20E323EC8);
    if (v74(&v30[v70], 1, v73) != 1)
    {
      v76 = &v30[v70];
      v77 = v88;
      sub_20E21DAE4(v76, v88, type metadata accessor for ContextProtoStructuredContext);
      v78 = _s23LighthouseDataProcessor022ContextProtoStructuredD0V2eeoiySbAC_ACtFZ_0(v75, v77);
      sub_20E21DA84(v77, type metadata accessor for ContextProtoStructuredContext);
      sub_20E21DA84(v75, type metadata accessor for ContextProtoStructuredContext);
      sub_20E04875C(v30, &qword_27C863BE0, &qword_20E323EC8);
      if ((v78 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_46;
    }

    sub_20E21DA84(v75, type metadata accessor for ContextProtoStructuredContext);
    goto LABEL_44;
  }

  if (v74((v71 + v70), 1, v73) != 1)
  {
LABEL_44:
    v37 = &qword_27C869B70;
    v38 = &qword_20E345E40;
    goto LABEL_7;
  }

  sub_20E04875C(v71, &qword_27C863BE0, &qword_20E323EC8);
LABEL_46:
  v79 = v42[10];
  v80 = &v45[v79];
  v81 = *&v45[v79 + 8];
  v82 = &v46[v79];
  v83 = *(v82 + 1);
  if (v81)
  {
    if (v83 && (*v80 == *v82 && v81 == v83 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_53;
    }
  }

  else if (!v83)
  {
LABEL_53:
    sub_20E3221C0();
    sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v65 = sub_20E322850();
    return v65 & 1;
  }

LABEL_36:
  v65 = 0;
  return v65 & 1;
}

uint64_t _s23LighthouseDataProcessor020ContextProtoStructedd3AppD0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[3] == *(a2 + 24) && v5 == v6;
    if (!v7 && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[6];
  v9 = *(a2 + 48);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v9 || (a1[5] != *(a2 + 40) || v8 != v9) && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for ContextProtoStructedContextAppContext(0);
  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor020ContextProtoStructedd10AppInFocusD0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (v9 && (a1[4] == a2[4] && v8 == v9 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_20;
    }
  }

  else if (!v9)
  {
LABEL_20:
    type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
    sub_20E3221C0();
    sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor020ContextProtoStructedD19NowPlayingMediaItemV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9 || (a1[4] != *(a2 + 32) || v8 != v9) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a2 + 56);
  if (a1[7])
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (a1[6] != *(a2 + 48))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(a2 + 72);
  if (a1[9])
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (a1[8] != *(a2 + 64))
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = *(a2 + 88);
  if (a1[11])
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (a1[10] != *(a2 + 80))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = *(a1 + 89);
  v14 = *(a2 + 89);
  if (v13 == 7)
  {
    if (v14 != 7)
    {
      return 0;
    }
  }

  else if (v13 != v14)
  {
    return 0;
  }

  v15 = *(a1 + 90);
  v16 = *(a2 + 90);
  if (v15 == 4)
  {
    if (v16 != 4)
    {
      return 0;
    }
  }

  else if (v15 != v16)
  {
    return 0;
  }

  v17 = *(a1 + 91);
  v18 = *(a2 + 91);
  if (v17 == 9)
  {
    if (v18 != 9)
    {
      return 0;
    }
  }

  else if (v17 != v18)
  {
    return 0;
  }

  v19 = a1[13];
  v20 = *(a2 + 104);
  if (v19)
  {
    if (!v20 || (a1[12] != *(a2 + 96) || v19 != v20) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v21 = a1[15];
  v22 = *(a2 + 120);
  if (v21)
  {
    if (!v22 || (a1[14] != *(a2 + 112) || v21 != v22) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v23 = a1[17];
  v24 = *(a2 + 136);
  if (v23)
  {
    if (!v24 || (a1[16] != *(a2 + 128) || v23 != v24) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = a1[19];
  v26 = *(a2 + 152);
  if (v25)
  {
    if (!v26 || (a1[18] != *(a2 + 144) || v25 != v26) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }

LABEL_78:
    type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
    sub_20E3221C0();
    sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_20E322850() & 1;
  }

  if (!v26)
  {
    goto LABEL_78;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor012ContextProtoD8MetadataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v145 = type metadata accessor for ContextProtoCGRect(0);
  v140 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v5 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BF8, &qword_20E323EE0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v139 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v141 = &v134 - v9;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B20, &qword_20E345DF0);
  v10 = MEMORY[0x28223BE20](v143);
  v142 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v146 = &v134 - v12;
  v13 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  v149 = *(v13 - 8);
  v150 = v13;
  MEMORY[0x28223BE20](v13);
  v144 = (&v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BF0, &qword_20E323ED8);
  MEMORY[0x28223BE20](v15 - 8);
  v147 = (&v134 - v16);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B60, &qword_20E345E30);
  MEMORY[0x28223BE20](v148);
  v152 = &v134 - v17;
  v18 = type metadata accessor for ContextProtoBoundingBox(0);
  v156 = *(v18 - 8);
  v157 = v18;
  MEMORY[0x28223BE20](v18);
  v154 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BE8, &qword_20E323ED0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v151 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v155 = &v134 - v23;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE0, &qword_20E33AFB0);
  v24 = MEMORY[0x28223BE20](v158);
  v153 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v134 - v26;
  v28 = type metadata accessor for ContextProtoConfidence(0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (&v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BD0, &qword_20E323EB8);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = (&v134 - v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B68, &qword_20E345E38);
  MEMORY[0x28223BE20](v35);
  v37 = &v134 - v36;
  v38 = a1[2];
  v39 = a2[2];
  if (v38)
  {
    if (!v39 || (a1[1] != a2[1] || v38 != v39) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v39)
  {
    goto LABEL_32;
  }

  v40 = a1[4];
  v41 = a2[4];
  if (v40)
  {
    if (!v41 || (a1[3] != a2[3] || v40 != v41) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v41)
  {
    goto LABEL_32;
  }

  v135 = v5;
  v42 = type metadata accessor for ContextProtoContextMetadata(0);
  v138 = a2;
  v136 = v42;
  v43 = *(v42 + 28);
  v44 = *(v35 + 48);
  v137 = a1;
  sub_20E0486F4(a1 + v43, v37, &qword_27C863BD0, &qword_20E323EB8);
  v45 = v138 + v43;
  v46 = v138;
  sub_20E0486F4(v45, &v37[v44], &qword_27C863BD0, &qword_20E323EB8);
  v47 = *(v29 + 48);
  if (v47(v37, 1, v28) == 1)
  {
    if (v47(&v37[v44], 1, v28) == 1)
    {
      sub_20E04875C(v37, &qword_27C863BD0, &qword_20E323EB8);
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  sub_20E0486F4(v37, v34, &qword_27C863BD0, &qword_20E323EB8);
  if (v47(&v37[v44], 1, v28) == 1)
  {
    sub_20E21DA84(v34, type metadata accessor for ContextProtoConfidence);
LABEL_24:
    v56 = &qword_27C869B68;
    v57 = &qword_20E345E38;
LABEL_30:
    v59 = v37;
LABEL_31:
    sub_20E04875C(v59, v56, v57);
    goto LABEL_32;
  }

  sub_20E21DAE4(&v37[v44], v31, type metadata accessor for ContextProtoConfidence);
  if (*v34 != *v31 || *(v34 + 4) != *(v31 + 4))
  {
    sub_20E21DA84(v31, type metadata accessor for ContextProtoConfidence);
    sub_20E21DA84(v34, type metadata accessor for ContextProtoConfidence);
    v56 = &qword_27C863BD0;
    v57 = &qword_20E323EB8;
    goto LABEL_30;
  }

  sub_20E3221C0();
  sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v46 = v138;
  v58 = sub_20E322850();
  sub_20E21DA84(v31, type metadata accessor for ContextProtoConfidence);
  sub_20E21DA84(v34, type metadata accessor for ContextProtoConfidence);
  sub_20E04875C(v37, &qword_27C863BD0, &qword_20E323EB8);
  if ((v58 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_18:
  v48 = v137;
  if ((sub_20E15A8AC(*v137, *v46) & 1) == 0)
  {
    goto LABEL_32;
  }

  v49 = v136;
  v50 = v136[8];
  v51 = *(v158 + 48);
  sub_20E0486F4(v48 + v50, v27, &qword_27C863BE8, &qword_20E323ED0);
  v52 = v138 + v50;
  v53 = v138;
  sub_20E0486F4(v52, &v27[v51], &qword_27C863BE8, &qword_20E323ED0);
  v54 = v157;
  v55 = *(v156 + 48);
  if (v55(v27, 1, v157) == 1)
  {
    if (v55(&v27[v51], 1, v54) != 1)
    {
LABEL_37:
      v56 = &qword_27C867EE0;
      v57 = &qword_20E33AFB0;
      v59 = v27;
      goto LABEL_31;
    }

    sub_20E04875C(v27, &qword_27C863BE8, &qword_20E323ED0);
  }

  else
  {
    v62 = v155;
    sub_20E0486F4(v27, v155, &qword_27C863BE8, &qword_20E323ED0);
    if (v55(&v27[v51], 1, v54) == 1)
    {
      v63 = v62;
LABEL_36:
      sub_20E21DA84(v63, type metadata accessor for ContextProtoBoundingBox);
      goto LABEL_37;
    }

    v64 = &v27[v51];
    v65 = v154;
    sub_20E21DAE4(v64, v154, type metadata accessor for ContextProtoBoundingBox);
    LODWORD(v156) = _s23LighthouseDataProcessor23ContextProtoBoundingBoxV2eeoiySbAC_ACtFZ_0(v62, v65);
    sub_20E21DA84(v65, type metadata accessor for ContextProtoBoundingBox);
    sub_20E21DA84(v62, type metadata accessor for ContextProtoBoundingBox);
    sub_20E04875C(v27, &qword_27C863BE8, &qword_20E323ED0);
    if ((v156 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v66 = v49[9];
  v67 = (v48 + v66);
  v68 = *(v48 + v66 + 8);
  v69 = (v53 + v66);
  v70 = *(v53 + v66 + 8);
  if (v68)
  {
    if (!v70)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (*v67 != *v69)
    {
      LOBYTE(v70) = 1;
    }

    if (v70)
    {
      goto LABEL_32;
    }
  }

  v71 = v49[10];
  v72 = (v48 + v71);
  v73 = *(v48 + v71 + 8);
  v74 = (v53 + v71);
  v75 = v74[1];
  if (v73)
  {
    if (!v75 || (*v72 != *v74 || v73 != v75) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v75)
  {
    goto LABEL_32;
  }

  v76 = v49[11];
  v77 = *(v48 + v76);
  v78 = *(v53 + v76);
  if (v77 == 2)
  {
    if (v78 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v78 == 2 || ((v77 ^ v78) & 1) != 0)
  {
    goto LABEL_32;
  }

  v79 = v49[12];
  v80 = *(v48 + v79);
  v81 = *(v53 + v79);
  if (v80 == 2)
  {
    if (v81 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v81 == 2 || ((v80 ^ v81) & 1) != 0)
  {
    goto LABEL_32;
  }

  v82 = v49[13];
  v83 = *(v158 + 48);
  v27 = v153;
  sub_20E0486F4(v48 + v82, v153, &qword_27C863BE8, &qword_20E323ED0);
  sub_20E0486F4(v53 + v82, &v27[v83], &qword_27C863BE8, &qword_20E323ED0);
  if (v55(v27, 1, v54) == 1)
  {
    if (v55(&v27[v83], 1, v54) == 1)
    {
      sub_20E04875C(v27, &qword_27C863BE8, &qword_20E323ED0);
      goto LABEL_68;
    }

    goto LABEL_37;
  }

  v84 = v151;
  sub_20E0486F4(v27, v151, &qword_27C863BE8, &qword_20E323ED0);
  if (v55(&v27[v83], 1, v54) == 1)
  {
    v63 = v84;
    goto LABEL_36;
  }

  v85 = &v27[v83];
  v86 = v154;
  sub_20E21DAE4(v85, v154, type metadata accessor for ContextProtoBoundingBox);
  v87 = _s23LighthouseDataProcessor23ContextProtoBoundingBoxV2eeoiySbAC_ACtFZ_0(v84, v86);
  sub_20E21DA84(v86, type metadata accessor for ContextProtoBoundingBox);
  sub_20E21DA84(v84, type metadata accessor for ContextProtoBoundingBox);
  sub_20E04875C(v27, &qword_27C863BE8, &qword_20E323ED0);
  if ((v87 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_68:
  v88 = v49[14];
  v89 = *(v137 + v88);
  v90 = *(v138 + v88);
  if (v89 == 6)
  {
    if (v90 != 6)
    {
      goto LABEL_32;
    }
  }

  else if (v89 != v90)
  {
    goto LABEL_32;
  }

  v91 = v136[15];
  v92 = *(v148 + 48);
  v93 = v152;
  sub_20E0486F4(v137 + v91, v152, &qword_27C863BF0, &qword_20E323ED8);
  sub_20E0486F4(v138 + v91, v93 + v92, &qword_27C863BF0, &qword_20E323ED8);
  v94 = *(v149 + 48);
  if (v94(v93, 1, v150) == 1)
  {
    if (v94(v152 + v92, 1, v150) == 1)
    {
      sub_20E04875C(v152, &qword_27C863BF0, &qword_20E323ED8);
      goto LABEL_79;
    }

    goto LABEL_77;
  }

  v95 = v152;
  sub_20E0486F4(v152, v147, &qword_27C863BF0, &qword_20E323ED8);
  if (v94(v95 + v92, 1, v150) == 1)
  {
    sub_20E21DA84(v147, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
LABEL_77:
    v56 = &qword_27C869B60;
    v57 = &qword_20E345E30;
    v59 = v152;
    goto LABEL_31;
  }

  v96 = v152;
  v97 = v152 + v92;
  v98 = v144;
  sub_20E21DAE4(v97, v144, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  v99 = v147;
  v100 = _s23LighthouseDataProcessor49ContextProtoContextualEntityDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v147, v98);
  sub_20E21DA84(v98, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  sub_20E21DA84(v99, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  sub_20E04875C(v96, &qword_27C863BF0, &qword_20E323ED8);
  if ((v100 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_79:
  v101 = v136[16];
  v102 = (v137 + v101);
  v103 = *(v137 + v101 + 8);
  v104 = (v138 + v101);
  v105 = v104[1];
  if (v103)
  {
    if (!v105 || (*v102 != *v104 || v103 != v105) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v105)
  {
    goto LABEL_32;
  }

  v106 = v136[17];
  v107 = *(v143 + 48);
  v108 = v146;
  sub_20E0486F4(v137 + v106, v146, &qword_27C863BF8, &qword_20E323EE0);
  sub_20E0486F4(v138 + v106, v108 + v107, &qword_27C863BF8, &qword_20E323EE0);
  v109 = *(v140 + 48);
  if (v109(v108, 1, v145) == 1)
  {
    if (v109(v146 + v107, 1, v145) == 1)
    {
      sub_20E04875C(v146, &qword_27C863BF8, &qword_20E323EE0);
      goto LABEL_93;
    }

    goto LABEL_91;
  }

  v110 = v146;
  sub_20E0486F4(v146, v141, &qword_27C863BF8, &qword_20E323EE0);
  if (v109(v110 + v107, 1, v145) == 1)
  {
    sub_20E21DA84(v141, type metadata accessor for ContextProtoCGRect);
LABEL_91:
    v56 = &qword_27C869B20;
    v57 = &qword_20E345DF0;
    v59 = v146;
    goto LABEL_31;
  }

  v111 = v146;
  v112 = v146 + v107;
  v113 = v135;
  sub_20E21DAE4(v112, v135, type metadata accessor for ContextProtoCGRect);
  v114 = v141;
  v115 = _s23LighthouseDataProcessor18ContextProtoCGRectV2eeoiySbAC_ACtFZ_0(v141, v113);
  sub_20E21DA84(v113, type metadata accessor for ContextProtoCGRect);
  sub_20E21DA84(v114, type metadata accessor for ContextProtoCGRect);
  sub_20E04875C(v111, &qword_27C863BF8, &qword_20E323EE0);
  if ((v115 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_93:
  v116 = v136[18];
  v117 = v142;
  v118 = *(v143 + 48);
  sub_20E0486F4(v137 + v116, v142, &qword_27C863BF8, &qword_20E323EE0);
  sub_20E0486F4(v138 + v116, v117 + v118, &qword_27C863BF8, &qword_20E323EE0);
  if (v109(v117, 1, v145) != 1)
  {
    v119 = v142;
    sub_20E0486F4(v142, v139, &qword_27C863BF8, &qword_20E323EE0);
    if (v109(v119 + v118, 1, v145) != 1)
    {
      v120 = v142;
      v121 = v135;
      sub_20E21DAE4(v142 + v118, v135, type metadata accessor for ContextProtoCGRect);
      v122 = v139;
      v123 = _s23LighthouseDataProcessor18ContextProtoCGRectV2eeoiySbAC_ACtFZ_0(v139, v121);
      sub_20E21DA84(v121, type metadata accessor for ContextProtoCGRect);
      sub_20E21DA84(v122, type metadata accessor for ContextProtoCGRect);
      sub_20E04875C(v120, &qword_27C863BF8, &qword_20E323EE0);
      if ((v123 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_100;
    }

    sub_20E21DA84(v139, type metadata accessor for ContextProtoCGRect);
    goto LABEL_98;
  }

  if (v109(v142 + v118, 1, v145) != 1)
  {
LABEL_98:
    v56 = &qword_27C869B20;
    v57 = &qword_20E345DF0;
    v59 = v142;
    goto LABEL_31;
  }

  sub_20E04875C(v142, &qword_27C863BF8, &qword_20E323EE0);
LABEL_100:
  v124 = v136[19];
  v125 = (v137 + v124);
  v126 = *(v137 + v124 + 8);
  v127 = (v138 + v124);
  v128 = *(v138 + v124 + 8);
  if (v126)
  {
    if (!v128)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (*v125 != *v127)
    {
      LOBYTE(v128) = 1;
    }

    if (v128)
    {
      goto LABEL_32;
    }
  }

  v129 = v136[20];
  v130 = (v137 + v129);
  v131 = *(v137 + v129 + 8);
  v132 = (v138 + v129);
  v133 = v132[1];
  if (v131)
  {
    if (v133 && (*v130 == *v132 && v131 == v133 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_113;
    }
  }

  else if (!v133)
  {
LABEL_113:
    sub_20E3221C0();
    sub_20E21DA3C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v60 = sub_20E322850();
    return v60 & 1;
  }

LABEL_32:
  v60 = 0;
  return v60 & 1;
}

unint64_t sub_20E21A530()
{
  result = qword_27C8695A0;
  if (!qword_27C8695A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695A0);
  }

  return result;
}

unint64_t sub_20E21A588()
{
  result = qword_27C8695A8;
  if (!qword_27C8695A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695A8);
  }

  return result;
}

unint64_t sub_20E21A5E0()
{
  result = qword_27C8695B0;
  if (!qword_27C8695B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695B0);
  }

  return result;
}

unint64_t sub_20E21A638()
{
  result = qword_27C8695B8;
  if (!qword_27C8695B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695B8);
  }

  return result;
}

unint64_t sub_20E21A690()
{
  result = qword_27C8695C0;
  if (!qword_27C8695C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695C0);
  }

  return result;
}

unint64_t sub_20E21A6E8()
{
  result = qword_27C8695C8;
  if (!qword_27C8695C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695C8);
  }

  return result;
}

unint64_t sub_20E21A740()
{
  result = qword_27C8695D0;
  if (!qword_27C8695D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695D0);
  }

  return result;
}

unint64_t sub_20E21A798()
{
  result = qword_27C8695D8;
  if (!qword_27C8695D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695D8);
  }

  return result;
}

unint64_t sub_20E21A7F0()
{
  result = qword_27C8695E0;
  if (!qword_27C8695E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695E0);
  }

  return result;
}

unint64_t sub_20E21A848()
{
  result = qword_27C8695E8;
  if (!qword_27C8695E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695E8);
  }

  return result;
}

unint64_t sub_20E21A8A0()
{
  result = qword_27C8695F0;
  if (!qword_27C8695F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695F0);
  }

  return result;
}

unint64_t sub_20E21A8F8()
{
  result = qword_27C8695F8;
  if (!qword_27C8695F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8695F8);
  }

  return result;
}

unint64_t sub_20E21A950()
{
  result = qword_27C869600;
  if (!qword_27C869600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869600);
  }

  return result;
}

unint64_t sub_20E21A9A8()
{
  result = qword_27C869608;
  if (!qword_27C869608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869608);
  }

  return result;
}

unint64_t sub_20E21AA00()
{
  result = qword_27C869610;
  if (!qword_27C869610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869610);
  }

  return result;
}

unint64_t sub_20E21AA58()
{
  result = qword_27C869618;
  if (!qword_27C869618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869618);
  }

  return result;
}

unint64_t sub_20E21AAB0()
{
  result = qword_27C869620;
  if (!qword_27C869620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869620);
  }

  return result;
}

unint64_t sub_20E21AB08()
{
  result = qword_27C869628;
  if (!qword_27C869628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869628);
  }

  return result;
}

unint64_t sub_20E21AB60()
{
  result = qword_27C869630;
  if (!qword_27C869630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869630);
  }

  return result;
}

unint64_t sub_20E21ABB8()
{
  result = qword_27C869638;
  if (!qword_27C869638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869638);
  }

  return result;
}

unint64_t sub_20E21AC10()
{
  result = qword_27C869640;
  if (!qword_27C869640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869640);
  }

  return result;
}

unint64_t sub_20E21AC68()
{
  result = qword_27C869648;
  if (!qword_27C869648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869648);
  }

  return result;
}

unint64_t sub_20E21ACC0()
{
  result = qword_27C869650;
  if (!qword_27C869650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869650);
  }

  return result;
}

unint64_t sub_20E21AD18()
{
  result = qword_27C869658;
  if (!qword_27C869658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869658);
  }

  return result;
}

unint64_t sub_20E21C750()
{
  result = qword_27C869868;
  if (!qword_27C869868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869868);
  }

  return result;
}

unint64_t sub_20E21C7A8()
{
  result = qword_27C869870;
  if (!qword_27C869870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869870);
  }

  return result;
}

unint64_t sub_20E21CC80()
{
  result = qword_27C8698C8;
  if (!qword_27C8698C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8698C8);
  }

  return result;
}

unint64_t sub_20E21CCD8()
{
  result = qword_27C8698D0;
  if (!qword_27C8698D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8698D0);
  }

  return result;
}

unint64_t sub_20E21CD30()
{
  result = qword_27C8698D8;
  if (!qword_27C8698D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8698D8);
  }

  return result;
}

unint64_t sub_20E21CD88()
{
  result = qword_27C8698E0;
  if (!qword_27C8698E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8698E0);
  }

  return result;
}

uint64_t sub_20E21DA3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20E21DA84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E21DAE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_20E21DBBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868528, &qword_20E33B558);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E21DD50(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20E21DDC0(v4);
    return 0;
  }

  else
  {
    sub_20E21DE28(v4, v8);
    v9 = [objc_allocWithZone(MEMORY[0x277D57E40]) init];
    if (v9)
    {
      v10 = sub_20E1A3074(v8);
      [v9 setAction_];
    }

    sub_20E21DE8C(v8);
  }

  return v9;
}

uint64_t sub_20E21DD50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868528, &qword_20E33B558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E21DDC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868528, &qword_20E33B558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E21DE28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E21DE8C(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E21DEF8()
{
  v0 = sub_20E322010();
  __swift_allocate_value_buffer(v0, qword_27C869BA0);
  __swift_project_value_buffer(v0, qword_27C869BA0);
  return sub_20E321FC0();
}

uint64_t static IntervalConst.timeSinceSevenDaysAgo.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27C863190 != -1)
  {
    swift_once();
  }

  v2 = sub_20E322010();
  v3 = __swift_project_value_buffer(v2, qword_27C869BA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

LighthouseDataProcessor::ResponseGenerationProtoResponseMode_optional __swiftcall ResponseGenerationProtoResponseMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = MEMORY[0x277D84F90];
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0) + 36);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResponseGenerationProtoResponseGenerationInput.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0) + 36);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ResponseGenerationProtoStatementResultDigest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  v4 = v3[5];
  v5 = type metadata accessor for TranscriptProtoAction(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v3[6];
  v7 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  *(a1 + v3[7]) = 2;
  v8 = v3[8];
  v9 = type metadata accessor for TranscriptProtoResponseManifest(0);
  (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  v10 = v3[9];
  v11 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ResponseGenerationProtoStatementResultDigest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 40);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResponseGenerationProtoStatementResultDigest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 40);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_20E21E5AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E19F8D8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ResponseGenerationProtoResponseGenerationInput.clientRequestID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.clientRequestID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.utterance.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.utterance.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.responseLocale.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.responseLocale.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.statementResultDigests.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.init(clientRequestID:utterance:responseMode:responseLocale:statementResultDigests:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a5;
  type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v17;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t ResponseGenerationProtoStatementResultDigest.undoOperation.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ResponseGenerationProtoStatementResultDigest.undoOperation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t ResponseGenerationProtoStatementResultDigest.init(toolDefinition:actionCreated:statementOutcome:undoOperation:responseManifest:returnValueTypeDisplayRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = *a4;
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v11 - 8) + 56))(a7, 1, 1, v11);
  v12 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  v13 = v12[5];
  v14 = type metadata accessor for TranscriptProtoAction(0);
  (*(*(v14 - 8) + 56))(a7 + v13, 1, 1, v14);
  v15 = v12[6];
  v16 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = v12[7];
  *(a7 + v17) = 2;
  v18 = v12[8];
  v19 = type metadata accessor for TranscriptProtoResponseManifest(0);
  (*(*(v19 - 8) + 56))(a7 + v18, 1, 1, v19);
  v20 = v12[9];
  v21 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v21 - 8) + 56))(a7 + v20, 1, 1, v21);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a7, &qword_27C863B90, &unk_20E345EF0);
  sub_20E05EC5C(a2, a7 + v13, &qword_27C867F10, &qword_20E33AFE0);
  sub_20E05EC5C(a3, a7 + v15, &qword_27C863BA8, &unk_20E345F00);
  *(a7 + v17) = v23;
  sub_20E05EC5C(a5, a7 + v18, &qword_27C863B48, &unk_20E33C280);
  return sub_20E05EC5C(a6, a7 + v20, &qword_27C868A20, &qword_20E345F10);
}

unint64_t sub_20E21EFA8()
{
  result = qword_27C869BB8;
  if (!qword_27C869BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869BB8);
  }

  return result;
}

unint64_t sub_20E21F000()
{
  result = qword_27C869BC0;
  if (!qword_27C869BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C869BC8, &qword_20E345FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C869BC0);
  }

  return result;
}

void sub_20E21F09C(uint64_t a1)
{
  sub_20E21F380(319, &qword_27C869BE0, type metadata accessor for ResponseGenerationProtoStatementResultDigest, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_20E3221C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20E21F194(uint64_t a1)
{
  sub_20E21F380(319, qword_280E12080, type metadata accessor for ToolKitProtoToolDefinition.Version1, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20E21F380(319, &qword_27C869BF8, type metadata accessor for TranscriptProtoAction, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_20E21F380(319, qword_280E09BB0, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_20E21F3E4();
        if (v4 <= 0x3F)
        {
          sub_20E21F380(319, qword_280E09E38, type metadata accessor for TranscriptProtoResponseManifest, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_20E21F380(319, qword_280E06F90, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_20E3221C0();
              if (v7 <= 0x3F)
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

void sub_20E21F380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20E21F3E4()
{
  if (!qword_27C869C00)
  {
    v0 = sub_20E322A90();
    if (!v1)
    {
      atomic_store(v0, &qword_27C869C00);
    }
  }
}

void *sub_20E21F434(void *a1, uint64_t a2)
{
  v3 = v2;
  v79 = a1;
  v88[1] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  MEMORY[0x28223BE20](v5 - 8);
  v78 = &v75 - v6;
  v7 = sub_20E322010();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v77 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v75 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v80 = &v75 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v75 - v19;
  v3[2] = a2;

  v81 = a2;
  DataProcessorBookmarkProvider.lastCollectionDate.getter(v20);
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v21 = sub_20E3227C0();
  v22 = __swift_project_value_buffer(v21, qword_280E12C48);
  v23 = *(v8 + 16);
  v82 = v20;
  v86 = v23;
  v23(v18, v20, v7);
  v85 = v22;
  v24 = sub_20E3227B0();
  v25 = sub_20E322A40();
  v26 = os_log_type_enabled(v24, v25);
  v83 = v8;
  v84 = v3;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v88[0] = v28;
    *v27 = 136315138;
    sub_20E074360();
    v29 = sub_20E322D50();
    v76 = v13;
    v31 = v30;
    v87 = *(v8 + 8);
    v87(v18, v7);
    v32 = sub_20E31B6C4(v29, v31, v88);
    v13 = v76;

    *(v27 + 4) = v32;
    _os_log_impl(&dword_20E031000, v24, v25, "#ObjCSELFMapper Original bookmark start date: collecting from %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x20F32CA80](v28, -1, -1);
    MEMORY[0x20F32CA80](v27, -1, -1);
  }

  else
  {

    v87 = *(v8 + 8);
    v87(v18, v7);
  }

  v33 = v80;
  sub_20E322000();
  v86(v13, v33, v7);
  v34 = sub_20E3227B0();
  v35 = sub_20E322A40();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v88[0] = v37;
    *v36 = 136315138;
    sub_20E074360();
    v38 = sub_20E322D50();
    v39 = v13;
    v41 = v40;
    v42 = v83;
    v87(v39, v7);
    v43 = sub_20E31B6C4(v38, v41, v88);

    *(v36 + 4) = v43;
    v44 = v35;
    v45 = v42;
    _os_log_impl(&dword_20E031000, v34, v44, "#ObjCSELFMapper Bookmark: updating lastCollectionDate to current Date %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x20F32CA80](v37, -1, -1);
    MEMORY[0x20F32CA80](v36, -1, -1);
  }

  else
  {

    v45 = v83;
    v87(v13, v7);
  }

  v46 = v84;
  v47 = v77;
  v48 = v78;
  v49 = v86;
  v86(v77, v33, v7);

  DataProcessorBookmarkProvider.lastCollectionDate.setter(v47);

  v49(v48, v33, v7);
  (*(v45 + 56))(v48, 0, 1, v7);
  v50 = v82;
  v51 = sub_20E321FB0();
  if ((*(v45 + 48))(v48, 1, v7) == 1)
  {
    v52 = 0;
  }

  else
  {
    v52 = sub_20E321FB0();
    v87(v48, v7);
  }

  v53 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v51 endDate:v52 maxEvents:0 lastN:0 reversed:0];

  v54 = v79;
  v46[3] = v53;
  v46[4] = v54;
  v55 = v54;
  v56 = BiomeLibrary();
  v88[0] = 0;
  v57 = [v56 streamWithIdentifier:v55 error:v88];
  swift_unknownObjectRelease();
  v58 = v88[0];
  if (v57)
  {

    v59 = v87;
    v87(v33, v7);
    v59(v50, v7);
  }

  else
  {
    v60 = v58;
    v61 = sub_20E321EF0();

    swift_willThrow();
    v62 = v55;
    v63 = sub_20E3227B0();
    v64 = sub_20E322A50();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v88[0] = v66;
      *v65 = 136315138;
      v67 = sub_20E322890();
      v69 = v33;
      v70 = sub_20E31B6C4(v67, v68, v88);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_20E031000, v63, v64, "#ObjCSELFMapper stream info cannot be obtained from bmStreamIdentifier %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      v71 = v66;
      v46 = v84;
      MEMORY[0x20F32CA80](v71, -1, -1);
      MEMORY[0x20F32CA80](v65, -1, -1);

      v72 = v87;
      v87(v69, v7);
      v73 = v82;
    }

    else
    {

      v72 = v87;
      v87(v33, v7);
      v73 = v50;
    }

    v72(v73, v7);
    v57 = 0;
  }

  v46[5] = v57;
  return v46;
}

void *IFTranscriptSELFMapper.__allocating_init(bookmarkSuite:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DataProcessorBookmarkProvider();
  v2 = swift_allocObject();
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_20E322860();

  v5 = [v3 initWithSuiteName_];

  v2[2] = v5;
  v2[3] = 0xD00000000000002ELL;
  v2[4] = 0x800000020E360F40;
  v2[5] = 0xD000000000000043;
  v2[6] = 0x800000020E360F70;
  v6 = *MEMORY[0x277CF0E60];
  *(swift_allocObject() + 48) = 0;
  return sub_20E21F434(v6, v2);
}

void *IFTranscriptSELFMapper.__allocating_init(bookmarkSuite:selfTelemetry:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DataProcessorBookmarkProvider();
  v4 = swift_allocObject();
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_20E322860();

  v7 = [v5 initWithSuiteName_];

  v4[2] = v7;
  v4[3] = 0xD00000000000002ELL;
  v4[4] = 0x800000020E360F40;
  v4[5] = 0xD000000000000043;
  v4[6] = 0x800000020E360F70;
  v8 = *MEMORY[0x277CF0E60];
  *(swift_allocObject() + 48) = 0;
  v9 = sub_20E21F434(v8, v4);
  swift_beginAccess();
  v9[6] = a3;

  return v9;
}

uint64_t IFTranscriptSELFMapper.adaptToSELF(events:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(type metadata accessor for IETranscriptEventWrapper(0) - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E21FF28, 0, 0);
}

uint64_t sub_20E21FF28()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    v2 = sub_20E322BC0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v3 = sub_20E3227C0();
    __swift_project_value_buffer(v3, qword_280E12C48);
    v4 = sub_20E3227B0();
    v5 = sub_20E322A40();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20E031000, v4, v5, "#IFTranscriptSELFMapper Decoding Sage Transcript events", v6, 2u);
      MEMORY[0x20F32CA80](v6, -1, -1);
    }

    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = sub_20E2201A4;
    v8 = v0[2];

    return sub_20E069C58(v8);
  }

  else
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v10 = sub_20E3227C0();
    __swift_project_value_buffer(v10, qword_280E12C48);
    v11 = sub_20E3227B0();
    v12 = sub_20E322A40();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20E031000, v11, v12, "#IFTranscriptSELFMapper No IF transcript events to convert to SELF", v13, 2u);
      MEMORY[0x20F32CA80](v13, -1, -1);
    }

    v14 = v0[1];
    v15 = MEMORY[0x277D84F90];

    return v14(v15);
  }
}

uint64_t sub_20E2201A4(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_20E2202A4, 0, 0);
}

uint64_t sub_20E2202A4()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (!v2)
  {

    v6 = MEMORY[0x277D84F90];
LABEL_20:

    v19 = v0[1];

    return v19(v6);
  }

  v3 = v0[4];
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v3 + 72);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v0[5];
    sub_20E225910(v4, v8, type metadata accessor for IETranscriptEventWrapper);
    v9 = sub_20E2204EC(v8);
    result = sub_20E225978(v8, type metadata accessor for IETranscriptEventWrapper);
    isa = v9[2].isa;
    v11 = v6[2];
    v12 = isa + v11;
    if (__OFADD__(v11, isa))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v12 <= v6[3] >> 1)
    {
      if (v9[2].isa)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v14 = isa + v11;
      }

      else
      {
        v14 = v11;
      }

      v6 = sub_20E2255B4(isUniquelyReferenced_nonNull_native, v14, 1, v6, &qword_27C869C18, &qword_20E346198, type metadata accessor for IFSELFMessageEventWrapper);
      if (v9[2].isa)
      {
LABEL_14:
        v15 = (v6[3] >> 1) - v6[2];
        result = type metadata accessor for IFSELFMessageEventWrapper(0);
        if (v15 < isa)
        {
          goto LABEL_25;
        }

        swift_arrayInitWithCopy();

        if (isa)
        {
          v16 = v6[2];
          v17 = __OFADD__(v16, isa);
          v18 = isa + v16;
          if (v17)
          {
            goto LABEL_26;
          }

          v6[2] = v18;
        }

        goto LABEL_4;
      }
    }

    if (isa)
    {
      goto LABEL_24;
    }

LABEL_4:
    v4 += v5;
    if (!--v2)
    {

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

os_log_t sub_20E2204EC(uint64_t *a1)
{
  v2 = type metadata accessor for IFSELFMessageEventWrapper(0);
  v120 = *(v2 - 8);
  v121 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v105 - v7;
  MEMORY[0x28223BE20](v6);
  v124 = (&v105 - v9);
  v122 = type metadata accessor for IETranscriptEventWrapper(0);
  v10 = MEMORY[0x28223BE20](v122);
  v110 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v116 = &v105 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v105 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC0, &unk_20E325F70);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v115 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v105 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v108 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v105 - v24;
  v26 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v111 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for TranscriptProtoEvent(0);
  v29 = *(v109 + 44);
  v112 = a1;
  sub_20E0486F4(a1 + v29, v20, &qword_27C863FC0, &unk_20E325F70);
  v30 = type metadata accessor for TranscriptProtoPayload(0);
  v31 = *(*(v30 - 8) + 48);
  if (v31(v20, 1, v30) == 1)
  {
    sub_20E04875C(v20, &qword_27C863FC0, &unk_20E325F70);
    (*(v27 + 56))(v25, 1, 1, v26);
LABEL_4:
    sub_20E04875C(v25, &qword_27C863FC8, &unk_20E33C1D0);
    if (qword_280E12B88 != -1)
    {
LABEL_47:
      swift_once();
    }

    v33 = sub_20E3227C0();
    __swift_project_value_buffer(v33, qword_280E12C48);
    v34 = sub_20E3227B0();
    v35 = sub_20E322A40();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v125[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_20E31B6C4(0xD000000000000058, 0x800000020E361010, v125);
      _os_log_impl(&dword_20E031000, v34, v35, "%s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x20F32CA80](v37, -1, -1);
      MEMORY[0x20F32CA80](v36, -1, -1);
    }

    LOBYTE(v125[0]) = 99;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(v125, 0xD000000000000058, 0x800000020E361010);
    return MEMORY[0x277D84F90];
  }

  sub_20E0486F4(v20, v25, &qword_27C863FC8, &unk_20E33C1D0);
  sub_20E225978(v20, type metadata accessor for TranscriptProtoPayload);
  v32 = *(v27 + 48);
  if (v32(v25, 1, v26) == 1)
  {
    goto LABEL_4;
  }

  sub_20E2258A8(v25, v111, type metadata accessor for TranscriptProtoPayloadEnum);
  v118 = sub_20E2282F8(v112);
  if (!v118)
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v49 = sub_20E3227C0();
    __swift_project_value_buffer(v49, qword_280E12C48);
    v50 = sub_20E3227B0();
    v51 = sub_20E322A50();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v125[0] = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_20E31B6C4(0xD00000000000003ELL, 0x800000020E361070, v125);
      _os_log_impl(&dword_20E031000, v50, v51, "%s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x20F32CA80](v53, -1, -1);
      MEMORY[0x20F32CA80](v52, -1, -1);
    }

    LOBYTE(v125[0]) = 100;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(v125, 0xD00000000000003ELL, 0x800000020E361070);
    goto LABEL_58;
  }

  v105 = v32;
  v106 = v26;
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v40 = sub_20E3227C0();
  v41 = __swift_project_value_buffer(v40, qword_280E12C48);
  sub_20E225910(v112, v15, type metadata accessor for IETranscriptEventWrapper);
  v107 = v41;
  v42 = sub_20E3227B0();
  v43 = sub_20E322A40();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v125[0] = v119;
    *v44 = 136315138;
    LODWORD(v117) = v43;
    v113 = TranscriptProtoEvent.description.getter();
    v46 = v45;
    sub_20E225978(v15, type metadata accessor for IETranscriptEventWrapper);
    v47 = sub_20E31B6C4(v113, v46, v125);

    *(v44 + 4) = v47;
    _os_log_impl(&dword_20E031000, v42, v117, "#IFTranscriptSELFMapper - created IFTEventWrapper for %s", v44, 0xCu);
    v48 = v119;
    __swift_destroy_boxed_opaque_existential_0(v119);
    MEMORY[0x20F32CA80](v48, -1, -1);
    MEMORY[0x20F32CA80](v44, -1, -1);
  }

  else
  {

    sub_20E225978(v15, type metadata accessor for IETranscriptEventWrapper);
  }

  v117 = *(v112 + SHIDWORD(v122[2].isa));
  if (!v117)
  {
    v54 = sub_20E3227B0();
    v55 = sub_20E322A40();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v122 = v54;
      v57 = v56;
      v58 = swift_slowAlloc();
      v125[0] = v58;
      *v57 = 136315138;
      *(v57 + 4) = sub_20E31B6C4(0xD000000000000031, 0x800000020E3610B0, v125);
      v59 = v55;
      v60 = v122;
      _os_log_impl(&dword_20E031000, v122, v59, "%s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x20F32CA80](v58, -1, -1);
      MEMORY[0x20F32CA80](v57, -1, -1);
    }

    else
    {
    }

    LOBYTE(v125[0]) = 5;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(v125, 0xD000000000000031, 0x800000020E3610B0);
  }

  v119 = sub_20E2215B4(v111);
  if (!(v119 >> 62))
  {
    v61 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v61)
    {
      goto LABEL_28;
    }

LABEL_49:

    v91 = v116;
    sub_20E225910(v112, v116, type metadata accessor for IETranscriptEventWrapper);
    v92 = sub_20E3227B0();
    v93 = sub_20E322A40();
    if (!os_log_type_enabled(v92, v93))
    {

      sub_20E225978(v91, type metadata accessor for IETranscriptEventWrapper);
LABEL_58:
      sub_20E225978(v111, type metadata accessor for TranscriptProtoPayloadEnum);
      return MEMORY[0x277D84F90];
    }

    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v125[0] = v95;
    *v94 = 136315138;
    v96 = v115;
    sub_20E0486F4(v91 + *(v109 + 44), v115, &qword_27C863FC0, &unk_20E325F70);
    if (v31(v96, 1, v30) == 1)
    {
      v97 = v96;
      v98 = 4999502;
      v99 = &qword_27C863FC0;
      v100 = &unk_20E325F70;
    }

    else
    {
      v101 = v108;
      sub_20E0486F4(v96, v108, &qword_27C863FC8, &unk_20E33C1D0);
      sub_20E225978(v96, type metadata accessor for TranscriptProtoPayload);
      if (v105(v101, 1, v106) != 1)
      {
        v98 = TranscriptProtoPayloadEnum.eventTypeString.getter();
        v102 = v103;
        sub_20E225978(v101, type metadata accessor for TranscriptProtoPayloadEnum);
        goto LABEL_57;
      }

      v98 = 4999502;
      v99 = &qword_27C863FC8;
      v100 = &unk_20E33C1D0;
      v97 = v101;
    }

    sub_20E04875C(v97, v99, v100);
    v102 = 0xE300000000000000;
LABEL_57:
    sub_20E225978(v91, type metadata accessor for IETranscriptEventWrapper);
    v104 = sub_20E31B6C4(v98, v102, v125);

    *(v94 + 4) = v104;
    _os_log_impl(&dword_20E031000, v92, v93, "#IFTranscriptSELFMapper - nothing got mapped for  %s event", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v95);
    MEMORY[0x20F32CA80](v95, -1, -1);
    MEMORY[0x20F32CA80](v94, -1, -1);

    goto LABEL_58;
  }

  v61 = sub_20E322BC0();
  if (!v61)
  {
    goto LABEL_49;
  }

LABEL_28:
  v62 = 0;
  v116 = v119 & 0xC000000000000001;
  v38 = MEMORY[0x277D84F90];
  v114 = v8;
  v115 = v119 & 0xFFFFFFFFFFFFFF8;
  v113 = v61;
  do
  {
    if (v116)
    {
      v63 = MEMORY[0x20F32C150](v62, v119);
      v64 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v62 >= *(v115 + 16))
      {
        goto LABEL_46;
      }

      v63 = *(v119 + 8 * v62 + 32);
      v64 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    v122 = v38;
    v123 = v64;
    v65 = v8;
    v66 = v5;
    v67 = v63;
    [v63 setEventMetadata_];
    v68 = v121;
    v69 = *(v121 + 20);
    v70 = type metadata accessor for IFSELFMessageEventWrapper.BridgedMonotonicTimeStamp(0);
    v71 = *(*(v70 - 8) + 56);
    v71(&v65[v69], 1, 1, v70);
    result = [objc_allocWithZone(MEMORY[0x277D5AA68]) init];
    if (!result)
    {
      __break(1u);
      return result;
    }

    *v65 = result;
    sub_20E04875C(&v65[v69], &qword_27C863FF0, &unk_20E326070);
    v71(&v65[v69], 1, 1, v70);
    v72 = v65;
    v73 = v124;
    sub_20E2258A8(v72, v124, type metadata accessor for IFSELFMessageEventWrapper);

    *v73 = v67;
    v74 = *(v68 + 20);
    sub_20E04875C(v73 + v74, &qword_27C863FF0, &unk_20E326070);
    v75 = v117;
    *(v73 + v74) = v117;
    swift_storeEnumTagMultiPayload();
    v71(v73 + v74, 0, 1, v70);
    v5 = v66;
    sub_20E225910(v73, v66, type metadata accessor for IFSELFMessageEventWrapper);
    v76 = v75;
    v38 = v122;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_20E2255B4(0, v38[2].isa + 1, 1, v38, &qword_27C869C18, &qword_20E346198, type metadata accessor for IFSELFMessageEventWrapper);
    }

    v77 = v113;
    v8 = v114;
    v78 = v123;
    isa = v38[2].isa;
    v79 = v38[3].isa;
    if (isa >= v79 >> 1)
    {
      v38 = sub_20E2255B4((v79 > 1), isa + 1, 1, v38, &qword_27C869C18, &qword_20E346198, type metadata accessor for IFSELFMessageEventWrapper);
    }

    v38[2].isa = (isa + 1);
    sub_20E2258A8(v5, v38 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * isa, type metadata accessor for IFSELFMessageEventWrapper);
    sub_20E225978(v124, type metadata accessor for IFSELFMessageEventWrapper);
    ++v62;
  }

  while (v78 != v77);

  v81 = v110;
  sub_20E225910(v112, v110, type metadata accessor for IETranscriptEventWrapper);
  swift_bridgeObjectRetain_n();
  v82 = sub_20E3227B0();
  v83 = sub_20E322A40();
  if (os_log_type_enabled(v82, v83))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v125[0] = v86;
    *v85 = 134218242;
    *(v85 + 4) = v38[2];

    *(v85 + 12) = 2080;
    v87 = TranscriptProtoEvent.description.getter();
    v89 = v88;
    sub_20E225978(v81, type metadata accessor for IETranscriptEventWrapper);
    v90 = sub_20E31B6C4(v87, v89, v125);

    *(v85 + 14) = v90;

    _os_log_impl(&dword_20E031000, v82, v83, "#IFTranscriptSELFMapper - yeilds %ld IFTEventWrapper(s) for %s", v85, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v86);
    MEMORY[0x20F32CA80](v86, -1, -1);
    MEMORY[0x20F32CA80](v85, -1, -1);

    sub_20E225978(v111, type metadata accessor for TranscriptProtoPayloadEnum);
  }

  else
  {

    sub_20E225978(v81, type metadata accessor for IETranscriptEventWrapper);
    sub_20E225978(v111, type metadata accessor for TranscriptProtoPayloadEnum);
  }

  return v38;
}

uint64_t sub_20E2215B4(const char *a1)
{
  v295 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F18, &qword_20E33AFE8);
  MEMORY[0x28223BE20](v1 - 8);
  v254 = &v244 - v2;
  v253 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
  MEMORY[0x28223BE20](v253);
  v288 = &v244 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoSkipStatement(0);
  MEMORY[0x28223BE20](v4 - 8);
  v287 = &v244 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687A0, &unk_20E3461A0);
  MEMORY[0x28223BE20](v6 - 8);
  v252 = &v244 - v7;
  v251 = type metadata accessor for TranscriptProtoSessionStart(0);
  MEMORY[0x28223BE20](v251);
  v286 = &v244 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TranscriptProtoPlanGenerationError(0);
  MEMORY[0x28223BE20](v9 - 8);
  v245 = &v244 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868450, &unk_20E33C320);
  MEMORY[0x28223BE20](v11 - 8);
  v284 = &v244 - v12;
  v13 = type metadata accessor for TranscriptProtoRecoverableError(0);
  MEMORY[0x28223BE20](v13 - 8);
  v285 = &v244 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TranscriptProtoSessionError(0);
  MEMORY[0x28223BE20](v15 - 8);
  v283 = &v244 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F68, &unk_20E3461B0);
  MEMORY[0x28223BE20](v17 - 8);
  v281 = &v244 - v18;
  v279 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v277 = *(v279 - 8);
  MEMORY[0x28223BE20](v279);
  v282 = &v244 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  MEMORY[0x28223BE20](v20 - 8);
  v290 = (&v244 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AC0, &qword_20E323C68);
  MEMORY[0x28223BE20](v22 - 8);
  v274 = &v244 - v23;
  v273 = type metadata accessor for TranscriptProtoActionCancellation(0);
  v272 = *(v273 - 8);
  MEMORY[0x28223BE20](v273);
  v280 = &v244 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BC8, &unk_20E3461C0);
  MEMORY[0x28223BE20](v25 - 8);
  v270 = &v244 - v26;
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v268 = *(Step - 8);
  MEMORY[0x28223BE20](Step);
  v276 = &v244 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A98, &qword_20E323980);
  MEMORY[0x28223BE20](v28 - 8);
  v294 = &v244 - v29;
  v293 = type metadata accessor for TranscriptProtoStatementResult(0);
  v289 = *(v293 - 8);
  v30 = MEMORY[0x28223BE20](v293);
  v292 = &v244 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v271 = &v244 - v32;
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  MEMORY[0x28223BE20](StepResults);
  v278 = &v244 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F20, &unk_20E3461D0);
  MEMORY[0x28223BE20](v34 - 8);
  v264 = &v244 - v35;
  v263 = type metadata accessor for TranscriptProtoClientAction(0);
  v262 = *(v263 - 8);
  MEMORY[0x28223BE20](v263);
  v267 = &v244 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F10, &qword_20E33AFE0);
  MEMORY[0x28223BE20](v37 - 8);
  v261 = &v244 - v38;
  v260 = type metadata accessor for TranscriptProtoAction(0);
  v259 = *(v260 - 8);
  MEMORY[0x28223BE20](v260);
  v265 = &v244 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v247 = (&v244 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = MEMORY[0x28223BE20](v41);
  v249 = (&v244 - v44);
  MEMORY[0x28223BE20](v43);
  v248 = (&v244 - v45);
  v246 = type metadata accessor for TranscriptProtoVariableStep(0);
  MEMORY[0x28223BE20](v246);
  v266 = &v244 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B98, &qword_20E323E80);
  MEMORY[0x28223BE20](v47 - 8);
  v49 = &v244 - v48;
  v50 = type metadata accessor for TranscriptProtoToolResolution(0);
  v257 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v258 = &v244 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F90, &unk_20E3461E0);
  MEMORY[0x28223BE20](v52 - 8);
  v54 = &v244 - v53;
  v55 = type metadata accessor for TranscriptProtoRequest(0);
  v256 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v275 = &v244 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  MEMORY[0x28223BE20](v57 - 8);
  v59 = &v244 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F78, &unk_20E325EA0);
  MEMORY[0x28223BE20](v60 - 8);
  v62 = &v244 - v61;
  v63 = type metadata accessor for TranscriptProtoPlan(0);
  v255 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v65 = &v244 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  MEMORY[0x28223BE20](v66);
  v68 = &v244 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = MEMORY[0x277D84F90];
  v69 = [objc_allocWithZone(MEMORY[0x277D57D80]) init];
  if (v69)
  {
    v291 = v69;
    sub_20E225910(v295, v68, type metadata accessor for TranscriptProtoPayloadEnum);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v70 = v286;
        sub_20E2258A8(v68, v286, type metadata accessor for TranscriptProtoSessionStart);
        sub_20E2248D0(0xD000000000000018, 0x800000020E3611C0, 0);
        v71 = [objc_allocWithZone(MEMORY[0x277D58060]) init];
        if (!v71)
        {
          v202 = type metadata accessor for TranscriptProtoSessionStart;
          goto LABEL_126;
        }

        v72 = v71;
        v73 = v252;
        sub_20E0486F4(v70 + *(v251 + 20), v252, &qword_27C8687A0, &unk_20E3461A0);
        v74 = type metadata accessor for TranscriptProtoDeviceDetails(0);
        v75 = (*(*(v74 - 8) + 48))(v73, 1, v74);
        sub_20E04875C(v73, &qword_27C8687A0, &unk_20E3461A0);
        if (v75 == 1)
        {
          [v72 setOriginatingDeviceWasLocal_];
        }

        v76 = v291;
        [v291 setSessionStart_];
        sub_20E2248D0(0xD000000000000018, 0x800000020E3611C0, 1);
        v77 = v76;
        MEMORY[0x20F32BF90]();
        if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v78 = type metadata accessor for TranscriptProtoSessionStart;
        goto LABEL_142;
      case 1u:
        v127 = v275;
        sub_20E2258A8(v68, v275, type metadata accessor for TranscriptProtoRequest);
        sub_20E2248D0(0xD000000000000013, 0x800000020E3613B0, 0);
        sub_20E225910(v127, v54, type metadata accessor for TranscriptProtoRequest);
        (*(v256 + 56))(v54, 0, 1, v55);
        v128 = sub_20E06DDAC(v54);
        v130 = v129;
        sub_20E04875C(v54, &qword_27C863F90, &unk_20E3461E0);
        if (v128)
        {
          v131 = v128;
          v132 = v291;
          [v291 setRequest_];
          sub_20E2248D0(0xD000000000000013, 0x800000020E3613B0, 1);
          v133 = v132;
          MEMORY[0x20F32BF90]();
          if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20E322990();
          }

          sub_20E3229B0();

          v134 = v297;
          if (!v130)
          {
            goto LABEL_168;
          }
        }

        else
        {
          v134 = MEMORY[0x277D84F90];
          if (!v130)
          {
            v131 = 0;
LABEL_168:
            sub_20E225978(v127, type metadata accessor for TranscriptProtoRequest);

            return v134;
          }
        }

        v205 = v130;
        sub_20E2248D0(0xD00000000000002ALL, 0x800000020E3613D0, 0);
        v206 = [objc_allocWithZone(MEMORY[0x277D57D80]) init];
        if (!v206)
        {

          if (qword_280E12B88 != -1)
          {
            swift_once();
          }

          v239 = sub_20E3227C0();
          __swift_project_value_buffer(v239, qword_280E12C48);
          v240 = sub_20E3227B0();
          v241 = sub_20E322A50();
          if (os_log_type_enabled(v240, v241))
          {
            v242 = swift_slowAlloc();
            v243 = swift_slowAlloc();
            v296 = v243;
            *v242 = 136315138;
            *(v242 + 4) = sub_20E31B6C4(0xD00000000000003FLL, 0x800000020E3610F0, &v296);
            _os_log_impl(&dword_20E031000, v240, v241, "%s", v242, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v243);
            MEMORY[0x20F32CA80](v243, -1, -1);
            MEMORY[0x20F32CA80](v242, -1, -1);
          }

          LOBYTE(v296) = 96;
          _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v296, 0xD00000000000003FLL, 0x800000020E3610F0);

          sub_20E225978(v127, type metadata accessor for TranscriptProtoRequest);
          return MEMORY[0x277D84F90];
        }

        v207 = v206;
        [v206 setRequestContextTextContentTier1_];
        sub_20E2248D0(0xD00000000000002ALL, 0x800000020E3613D0, 1);
        v208 = v207;
        MEMORY[0x20F32BF90]();
        if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v116 = type metadata accessor for TranscriptProtoRequest;
        v117 = v127;
LABEL_160:
        sub_20E225978(v117, v116);
LABEL_161:
        result = v297;
        break;
      case 2u:
        sub_20E2258A8(v68, v65, type metadata accessor for TranscriptProtoPlan);
        sub_20E2248D0(0xD000000000000010, 0x800000020E361430, 0);
        sub_20E225910(v65, v62, type metadata accessor for TranscriptProtoPlan);
        (*(v255 + 56))(v62, 0, 1, v63);
        v112 = sub_20E06D438(v62);
        sub_20E04875C(v62, &qword_27C863F78, &unk_20E325EA0);
        if (!v112)
        {
          v203 = type metadata accessor for TranscriptProtoPlan;
          v204 = v65;
          goto LABEL_131;
        }

        v113 = v112;
        v114 = v291;
        [v291 setPlanCreated_];
        sub_20E2248D0(0xD000000000000010, 0x800000020E361430, 1);
        v115 = v114;
        MEMORY[0x20F32BF90]();
        if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v116 = type metadata accessor for TranscriptProtoPlan;
        v117 = v65;
        goto LABEL_160;
      case 3u:
        v92 = v265;
        sub_20E2258A8(v68, v265, type metadata accessor for TranscriptProtoAction);
        sub_20E2248D0(0xD000000000000012, 0x800000020E361350, 0);
        v157 = v261;
        sub_20E225910(v92, v261, type metadata accessor for TranscriptProtoAction);
        (*(v259 + 56))(v157, 0, 1, v260);
        sub_20E31CC98(v157);
        v159 = v158;
        sub_20E04875C(v157, &qword_27C867F10, &qword_20E33AFE0);
        if (!v159)
        {
          v200 = type metadata accessor for TranscriptProtoAction;
          goto LABEL_121;
        }

        v160 = v291;
        [v291 setActionCreated_];
        sub_20E2248D0(0xD000000000000012, 0x800000020E361350, 1);
        v161 = v160;
        MEMORY[0x20F32BF90]();
        if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v97 = type metadata accessor for TranscriptProtoAction;
        goto LABEL_69;
      case 4u:
        v143 = v267;
        sub_20E2258A8(v68, v267, type metadata accessor for TranscriptProtoClientAction);
        sub_20E2248D0(0xD000000000000018, 0x800000020E361330, 0);
        v162 = v264;
        sub_20E225910(v143, v264, type metadata accessor for TranscriptProtoClientAction);
        (*(v262 + 56))(v162, 0, 1, v263);
        v163 = sub_20E0670F4(v162);
        sub_20E04875C(v162, &qword_27C863F20, &unk_20E3461D0);
        if (!v163)
        {
          v209 = type metadata accessor for TranscriptProtoClientAction;
          goto LABEL_123;
        }

        v164 = v291;
        [v291 setClientActionCreated_];
        sub_20E2248D0(0xD000000000000018, 0x800000020E361330, 1);
        v165 = v164;
        MEMORY[0x20F32BF90]();
        if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v148 = type metadata accessor for TranscriptProtoClientAction;
        goto LABEL_75;
      case 5u:
        v92 = v276;
        sub_20E2258A8(v68, v276, type metadata accessor for TranscriptProtoQueryStep);
        sub_20E2248D0(0xD000000000000015, 0x800000020E3612D0, 0);
        v118 = v270;
        sub_20E225910(v92, v270, type metadata accessor for TranscriptProtoQueryStep);
        (*(v268 + 56))(v118, 0, 1, Step);
        v119 = sub_20E052A14(v118);
        sub_20E04875C(v118, &qword_27C863BC8, &unk_20E3461C0);
        if (!v119)
        {
          v200 = type metadata accessor for TranscriptProtoQueryStep;
          goto LABEL_121;
        }

        v120 = v291;
        [v291 setQueriesCreated_];
        sub_20E2248D0(0xD000000000000015, 0x800000020E3612D0, 1);
        v121 = v120;
        MEMORY[0x20F32BF90]();
        if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v97 = type metadata accessor for TranscriptProtoQueryStep;
        goto LABEL_69;
      case 6u:
        v70 = v266;
        sub_20E2258A8(v68, v266, type metadata accessor for TranscriptProtoVariableStep);
        sub_20E2248D0(0xD000000000000018, 0x800000020E361370, 0);
        v135 = [objc_allocWithZone(MEMORY[0x277D58178]) init];
        if (!v135)
        {
          v202 = type metadata accessor for TranscriptProtoVariableStep;
          goto LABEL_126;
        }

        v136 = v135;
        [v135 setExists_];
        v137 = *(v246 + 20);
        v138 = objc_allocWithZone(MEMORY[0x277D58078]);
        v139 = v136;
        v140 = [v138 init];
        v141 = v248;
        sub_20E0486F4(v70 + v137, v248, &qword_27C8639D0, &unk_20E33C230);
        v142 = type metadata accessor for TranscriptProtoStatementID(0);
        if ((*(*(v142 - 8) + 48))(v141, 1, v142) == 1)
        {
          sub_20E04875C(v141, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v214 = *v141;
          sub_20E225978(v141, type metadata accessor for TranscriptProtoStatementID);
          [v140 setIndex_];
        }

        [v139 setStatementId_];

        v215 = v139;
        v216 = v291;
        [v291 setVariablesSet_];
        sub_20E2248D0(0xD000000000000018, 0x800000020E361370, 1);
        v217 = v216;
        MEMORY[0x20F32BF90]();
        if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v78 = type metadata accessor for TranscriptProtoVariableStep;
        goto LABEL_142;
      case 7u:
        v143 = v283;
        sub_20E2258A8(v68, v283, type metadata accessor for TranscriptProtoSessionError);
        sub_20E2248D0(0xD000000000000018, 0x800000020E361240, 0);
        v144 = sub_20E064624(v143);
        if (!v144)
        {
          v209 = type metadata accessor for TranscriptProtoSessionError;
LABEL_123:
          v203 = v209;
          v204 = v143;
          goto LABEL_131;
        }

        v145 = v144;
        v146 = v291;
        [v291 setCriticalError_];
        sub_20E2248D0(0xD000000000000018, 0x800000020E361240, 1);
        v147 = v146;
        MEMORY[0x20F32BF90]();
        if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v148 = type metadata accessor for TranscriptProtoSessionError;
LABEL_75:
        v116 = v148;
        v117 = v143;
        goto LABEL_160;
      case 8u:
        v70 = v285;
        sub_20E2258A8(v68, v285, type metadata accessor for TranscriptProtoRecoverableError);
        sub_20E2248D0(0xD00000000000001CLL, 0x800000020E361200, 0);
        v174 = [objc_allocWithZone(MEMORY[0x277D57F98]) init];
        v175 = v284;
        sub_20E0486F4(v70, v284, &qword_27C868450, &unk_20E33C320);
        v176 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(0);
        if ((*(*(v176 - 8) + 48))(v175, 1, v176) != 1)
        {
          v177 = v245;
          sub_20E2258A8(v175, v245, type metadata accessor for TranscriptProtoPlanGenerationError);
          if (v174)
          {
            v178 = v174;
            v179 = sub_20E2FBF4C(v177);
            [v178 setPlanGenerationError_];
          }

          sub_20E225978(v177, type metadata accessor for TranscriptProtoPlanGenerationError);
        }

        if (!v174)
        {
          v202 = type metadata accessor for TranscriptProtoRecoverableError;
          goto LABEL_126;
        }

        v180 = v174;
        v181 = v291;
        [v291 setRecoverableError_];
        sub_20E2248D0(0xD00000000000001CLL, 0x800000020E361200, 1);
        v182 = v181;
        MEMORY[0x20F32BF90]();
        if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v78 = type metadata accessor for TranscriptProtoRecoverableError;
        goto LABEL_142;
      case 9u:
        v59 = v278;
        sub_20E2258A8(v68, v278, type metadata accessor for TranscriptProtoQueryStepResults);
        sub_20E2248D0(0xD00000000000001CLL, 0x800000020E361310, 0);
        v166 = [objc_allocWithZone(MEMORY[0x277D57F88]) init];
        if (!v166)
        {
          v201 = type metadata accessor for TranscriptProtoQueryStepResults;
          goto LABEL_130;
        }

        v167 = v166;
        [v166 setExists_];
        v168 = *(StepResults + 24);
        v169 = objc_allocWithZone(MEMORY[0x277D58078]);
        v170 = v167;
        v171 = [v169 init];
        v172 = v249;
        sub_20E0486F4(&v59[v168], v249, &qword_27C8639D0, &unk_20E33C230);
        v173 = type metadata accessor for TranscriptProtoStatementID(0);
        if ((*(*(v173 - 8) + 48))(v172, 1, v173) == 1)
        {
          sub_20E04875C(v172, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v218 = *v172;
          sub_20E225978(v172, type metadata accessor for TranscriptProtoStatementID);
          [v171 setIndex_];
        }

        [v170 setOriginProgramStatementId_];

        v219 = v170;
        v220 = v291;
        [v291 setQueriesExecuted_];
        sub_20E2248D0(0xD00000000000001CLL, 0x800000020E361310, 1);
        v221 = v220;
        MEMORY[0x20F32BF90]();
        if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v102 = type metadata accessor for TranscriptProtoQueryStepResults;
        goto LABEL_147;
      case 0xAu:
        sub_20E2258A8(v68, v59, type metadata accessor for TranscriptProtoActionResolverRequest);
        sub_20E2248D0(0xD000000000000021, 0x800000020E361400, 0);
        v98 = sub_20E048348(v59);
        if (!v98)
        {
          v201 = type metadata accessor for TranscriptProtoActionResolverRequest;
          goto LABEL_130;
        }

        v99 = v98;
        v100 = v291;
        [v291 setActionResolverRequestCreated_];
        sub_20E2248D0(0xD000000000000021, 0x800000020E361400, 1);
        v101 = v100;
        MEMORY[0x20F32BF90]();
        if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v102 = type metadata accessor for TranscriptProtoActionResolverRequest;
        goto LABEL_147;
      case 0xDu:
        v122 = v290;
        sub_20E2258A8(v68, v290, type metadata accessor for TranscriptProtoResponseGenerationRequest);
        sub_20E2248D0(0xD000000000000025, 0x800000020E361280, 0);
        v123 = [objc_allocWithZone(MEMORY[0x277D58028]) init];
        if (!v123)
        {
          v203 = type metadata accessor for TranscriptProtoResponseGenerationRequest;
          v204 = v122;
          goto LABEL_131;
        }

        v124 = v123;
        sub_20E06CCD8(v122);
        v295 = "IFTSchemaIFTSystemResponse";
        if (v125)
        {
          sub_20E074574(0, &qword_27C869C28, 0x277D5AC78);
          v126 = sub_20E322960();
        }

        else
        {
          v126 = 0;
        }

        v222 = MEMORY[0x277D84F90];
        [v124 setActionStepResultEventIds_];

        v223 = *v122;
        v296 = v222;
        v224 = *(v223 + 16);
        v288 = v124;
        if (v224)
        {
          v225 = v223 + ((*(v289 + 80) + 32) & ~*(v289 + 80));
          v226 = *(v289 + 72);
          v227 = (v289 + 56);
          v228 = v124;
          v229 = v294;
          do
          {
            v230 = v292;
            sub_20E225910(v225, v292, type metadata accessor for TranscriptProtoStatementResult);
            sub_20E225910(v230, v229, type metadata accessor for TranscriptProtoStatementResult);
            (*v227)(v229, 0, 1, v293);
            v231 = sub_20E04A0F4(v229);
            sub_20E04875C(v229, &qword_27C863A98, &qword_20E323980);
            v232 = sub_20E225978(v230, type metadata accessor for TranscriptProtoStatementResult);
            if (v231)
            {
              MEMORY[0x20F32BF90](v232);
              if (*((v296 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v296 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v289 = *((v296 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_20E322990();
              }

              sub_20E3229B0();
            }

            v225 += v226;
            --v224;
          }

          while (v224);
        }

        else
        {
          v233 = v124;
        }

        sub_20E074574(0, &qword_27C869C20, 0x277D58088);
        v234 = sub_20E322960();

        v235 = v288;
        [v288 setStatementResults_];

        v236 = v235;
        v237 = v291;
        [v291 setResponseGenerationRequest_];
        sub_20E2248D0(0xD000000000000025, v295 | 0x8000000000000000, 1);
        v238 = v237;
        MEMORY[0x20F32BF90]();
        if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v116 = type metadata accessor for TranscriptProtoResponseGenerationRequest;
        v117 = v290;
        goto LABEL_160;
      case 0x10u:
        v92 = v280;
        sub_20E2258A8(v68, v280, type metadata accessor for TranscriptProtoActionCancellation);
        sub_20E2248D0(0xD00000000000001ELL, 0x800000020E3612B0, 0);
        v103 = v274;
        sub_20E225910(v92, v274, type metadata accessor for TranscriptProtoActionCancellation);
        (*(v272 + 56))(v103, 0, 1, v273);
        v104 = sub_20E04BBC8(v103);
        sub_20E04875C(v103, &qword_27C863AC0, &qword_20E323C68);
        v105 = v291;
        if (v104)
        {
          [v291 setActionCancelled_];
          sub_20E2248D0(0xD00000000000001ELL, 0x800000020E3612B0, 1);
        }

        v106 = v105;
        MEMORY[0x20F32BF90]();
        if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v97 = type metadata accessor for TranscriptProtoActionCancellation;
        goto LABEL_69;
      case 0x12u:
        v92 = v282;
        sub_20E2258A8(v68, v282, type metadata accessor for TranscriptProtoSystemResponse);
        sub_20E2248D0(0xD00000000000001ALL, 0x800000020E361260, 0);
        v93 = v281;
        sub_20E225910(v92, v281, type metadata accessor for TranscriptProtoSystemResponse);
        (*(v277 + 56))(v93, 0, 1, v279);
        v94 = sub_20E06C224(v93);
        sub_20E04875C(v93, &qword_27C863F68, &unk_20E3461B0);
        if (!v94)
        {
          v200 = type metadata accessor for TranscriptProtoSystemResponse;
          goto LABEL_121;
        }

        v95 = v291;
        [v291 setSystemResponseGenerated_];
        sub_20E2248D0(0xD00000000000001ALL, 0x800000020E361260, 1);
        v96 = v95;
        MEMORY[0x20F32BF90]();
        if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v97 = type metadata accessor for TranscriptProtoSystemResponse;
        goto LABEL_69;
      case 0x13u:
        v92 = v271;
        sub_20E2258A8(v68, v271, type metadata accessor for TranscriptProtoStatementResult);
        sub_20E2248D0(0xD00000000000001BLL, 0x800000020E3612F0, 0);
        v149 = v294;
        sub_20E225910(v92, v294, type metadata accessor for TranscriptProtoStatementResult);
        (*(v289 + 56))(v149, 0, 1, v293);
        v150 = sub_20E04A0F4(v149);
        sub_20E04875C(v149, &qword_27C863A98, &qword_20E323980);
        if (!v150)
        {
          v200 = type metadata accessor for TranscriptProtoStatementResult;
          goto LABEL_121;
        }

        v151 = v291;
        [v291 setStatementEvaluated_];
        sub_20E2248D0(0xD00000000000001BLL, 0x800000020E3612F0, 1);
        v152 = v151;
        MEMORY[0x20F32BF90]();
        if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v97 = type metadata accessor for TranscriptProtoStatementResult;
        goto LABEL_69;
      case 0x17u:
        v92 = v258;
        sub_20E2258A8(v68, v258, type metadata accessor for TranscriptProtoToolResolution);
        sub_20E2248D0(0xD00000000000001ALL, 0x800000020E361390, 0);
        sub_20E225910(v92, v49, type metadata accessor for TranscriptProtoToolResolution);
        (*(v257 + 56))(v49, 0, 1, v50);
        v153 = sub_20E0505E8(v49);
        sub_20E04875C(v49, &qword_27C863B98, &qword_20E323E80);
        if (!v153)
        {
          v200 = type metadata accessor for TranscriptProtoToolResolution;
LABEL_121:
          v203 = v200;
          v204 = v92;
          goto LABEL_131;
        }

        v154 = v153;
        v155 = v291;
        [v291 setToolResolution_];
        sub_20E2248D0(0xD00000000000001ALL, 0x800000020E361390, 1);
        v156 = v155;
        MEMORY[0x20F32BF90]();
        if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v97 = type metadata accessor for TranscriptProtoToolResolution;
LABEL_69:
        v116 = v97;
        v117 = v92;
        goto LABEL_160;
      case 0x1Cu:
        sub_20E225978(v68, type metadata accessor for TranscriptProtoPayloadEnum);
        sub_20E2248D0(0xD000000000000021, 0x800000020E361450, 0);
        v188 = [objc_allocWithZone(MEMORY[0x277D57F70]) init];
        if (!v188)
        {
          goto LABEL_132;
        }

        v85 = v188;
        [v188 setExists_];
        v89 = v291;
        [v291 setQueryDecorationResult_];
        v91 = 0xD000000000000021;
        v90 = 0x800000020E361450;
        goto LABEL_93;
      case 0x1Du:
        sub_20E2248D0(0xD00000000000001CLL, 0x800000020E3611E0, 0);
        v183 = [objc_allocWithZone(MEMORY[0x277D57DB8]) init];
        if (v183)
        {
          v184 = v183;
          [v183 setExists_];
          v185 = v291;
          [v291 setContinuePlanning_];
          sub_20E2248D0(0xD00000000000001CLL, 0x800000020E3611E0, 1);
          v186 = v185;
          MEMORY[0x20F32BF90]();
          if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20E322990();
          }

          sub_20E3229B0();

          v187 = v297;
        }

        else
        {

          v187 = MEMORY[0x277D84F90];
        }

        sub_20E225978(v68, type metadata accessor for TranscriptProtoPayloadEnum);
        return v187;
      case 0x1Eu:
        sub_20E225978(v68, type metadata accessor for TranscriptProtoPayloadEnum);
        sub_20E2248D0(0xD00000000000002BLL, 0x800000020E361190, 0);
        v84 = [objc_allocWithZone(MEMORY[0x277D57F68]) init];
        if (!v84)
        {
          goto LABEL_132;
        }

        v85 = v84;
        [v84 setExists_];
        sub_20E2248D0(0xD00000000000002BLL, 0x800000020E361190, 1);
        v86 = v291;
        [v291 setQueryDecorationPrePlannerResult_];
        v87 = v86;
        goto LABEL_94;
      case 0x1Fu:
        v70 = v287;
        sub_20E2258A8(v68, v287, type metadata accessor for TranscriptProtoSkipStatement);
        sub_20E2248D0(0xD000000000000019, 0x800000020E361170, 0);
        v107 = [objc_allocWithZone(MEMORY[0x277D58068]) init];
        if (!v107)
        {
          v202 = type metadata accessor for TranscriptProtoSkipStatement;
LABEL_126:
          v203 = v202;
          v204 = v70;
          goto LABEL_131;
        }

        v108 = v107;
        v109 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
        v110 = v247;
        sub_20E0486F4(v70, v247, &qword_27C8639D0, &unk_20E33C230);
        v111 = type metadata accessor for TranscriptProtoStatementID(0);
        if ((*(*(v111 - 8) + 48))(v110, 1, v111) == 1)
        {
          sub_20E04875C(v110, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v211 = *v110;
          sub_20E225978(v110, type metadata accessor for TranscriptProtoStatementID);
          [v109 setIndex_];
        }

        [v108 setStatementId_];

        sub_20E2248D0(0xD000000000000019, 0x800000020E361170, 1);
        v212 = v291;
        [v291 setSkipStatement_];
        v213 = v212;
        MEMORY[0x20F32BF90]();
        if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        v78 = type metadata accessor for TranscriptProtoSkipStatement;
LABEL_142:
        v116 = v78;
        v117 = v70;
        goto LABEL_160;
      case 0x20u:
        v59 = v288;
        sub_20E2258A8(v68, v288, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest);
        sub_20E2248D0(0xD000000000000031, 0x800000020E361130, 0);
        v190 = [objc_allocWithZone(MEMORY[0x277D57E10]) init];
        if (v190)
        {
          v191 = v190;
          v192 = [objc_allocWithZone(MEMORY[0x277D57E18]) init];
          [v191 setRequest_];

          v193 = v254;
          sub_20E0486F4(&v59[*(v253 + 20)], v254, &qword_27C867F18, &qword_20E33AFE8);
          v194 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(0);
          v195 = (*(*(v194 - 8) + 48))(v193, 1, v194);
          sub_20E04875C(v193, &qword_27C867F18, &qword_20E33AFE8);
          if (v195 != 1)
          {
            v196 = [v191 request];
            if (v196)
            {
              v197 = v196;
              [v196 setExists_];
            }
          }

          sub_20E2248D0(0xD000000000000031, 0x800000020E361130, 1);
          v198 = v291;
          [v291 setExecutionPreconditionEvaluatorRequest_];
          v199 = v198;
          MEMORY[0x20F32BF90]();
          if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20E322990();
          }

          sub_20E3229B0();

          v102 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest;
LABEL_147:
          v116 = v102;
          v117 = v59;
          goto LABEL_160;
        }

        v201 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest;
LABEL_130:
        v203 = v201;
        v204 = v59;
LABEL_131:
        sub_20E225978(v204, v203);
LABEL_132:

        return MEMORY[0x277D84F90];
      case 0x26u:
        sub_20E2248D0(0xD000000000000015, 0x800000020E361220, 0);
        v88 = [objc_allocWithZone(MEMORY[0x277D58100]) init];
        if (!v88)
        {
          goto LABEL_132;
        }

        v85 = v88;
        [v88 setExists_];
        v89 = v291;
        [v291 setTerminate_];
        v90 = 0x800000020E361220;
        v91 = 0xD000000000000015;
LABEL_93:
        sub_20E2248D0(v91, v90, 1);
        v87 = v89;
LABEL_94:
        v189 = v87;
        MEMORY[0x20F32BF90]();
        if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20E322990();
        }

        sub_20E3229B0();

        goto LABEL_161;
      default:

        sub_20E225978(v68, type metadata accessor for TranscriptProtoPayloadEnum);
        return MEMORY[0x277D84F90];
    }
  }

  else
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v79 = sub_20E3227C0();
    __swift_project_value_buffer(v79, qword_280E12C48);
    v80 = sub_20E3227B0();
    v81 = sub_20E322A50();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v296 = v83;
      *v82 = 136315138;
      *(v82 + 4) = sub_20E31B6C4(0xD00000000000003FLL, 0x800000020E3610F0, &v296);
      _os_log_impl(&dword_20E031000, v80, v81, "%s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x20F32CA80](v83, -1, -1);
      MEMORY[0x20F32CA80](v82, -1, -1);
    }

    LOBYTE(v296) = 96;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v296, 0xD00000000000003FLL, 0x800000020E3610F0);
    return MEMORY[0x277D84F90];
  }

  return result;
}

void *sub_20E2248D0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_20E322060();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v55 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v55 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - v17;
  if (a3)
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v19 = sub_20E3227C0();
    __swift_project_value_buffer(v19, qword_280E12C48);
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_20E322B00();

    v58 = 0xD000000000000019;
    v59 = 0x800000020E361480;
    MEMORY[0x20F32BF40](a1, a2);
    v21 = v58;
    v20 = v59;

    v22 = sub_20E3227B0();
    v23 = sub_20E322A40();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v56 = v13;
      v26 = v7;
      v27 = v6;
      v28 = v25;
      v58 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_20E31B6C4(v21, v20, &v58);
      _os_log_impl(&dword_20E031000, v22, v23, "%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v29 = v28;
      v6 = v27;
      v7 = v26;
      v13 = v56;
      MEMORY[0x20F32CA80](v29, -1, -1);
      MEMORY[0x20F32CA80](v24, -1, -1);
    }

    LOBYTE(v58) = -126;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v58, v21, v20);

    v30 = v57;
    result = *(v57 + 40);
    if (result)
    {
      v32 = [result configuration];
      v33 = [v32 streamUUID];

      sub_20E322040();
      (*(v7 + 32))(v13, v10, v6);
      v34 = sub_20E3227B0();
      v35 = sub_20E322A40();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_20E031000, v34, v35, "Emit OLE stream telemetry - event mapped", v36, 2u);
        MEMORY[0x20F32CA80](v36, -1, -1);
      }

      swift_beginAccess();
      if (*(v30 + 48))
      {
        swift_endAccess();

        sub_20E3220E0();

        return (*(v7 + 8))(v13, v6);
      }

      (*(v7 + 8))(v13, v6);
      return swift_endAccess();
    }
  }

  else
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v37 = sub_20E3227C0();
    v38 = __swift_project_value_buffer(v37, qword_280E12C48);
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_20E322B00();

    v58 = 0x20676E697070614DLL;
    v59 = 0xEF203A746E657665;
    MEMORY[0x20F32BF40](a1, a2);
    v40 = v58;
    v39 = v59;

    v41 = sub_20E3227B0();
    v42 = sub_20E322A40();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v56 = v38;
      v44 = v7;
      v45 = v6;
      v46 = v43;
      v47 = swift_slowAlloc();
      v58 = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_20E31B6C4(v40, v39, &v58);
      _os_log_impl(&dword_20E031000, v41, v42, "%s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x20F32CA80](v47, -1, -1);
      v48 = v46;
      v6 = v45;
      v7 = v44;
      MEMORY[0x20F32CA80](v48, -1, -1);
    }

    LOBYTE(v58) = -127;
    _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v58, v40, v39);

    v49 = v57;
    result = *(v57 + 40);
    if (result)
    {
      v50 = [result configuration];
      v51 = [v50 streamUUID];

      sub_20E322040();
      (*(v7 + 32))(v18, v16, v6);
      v52 = sub_20E3227B0();
      v53 = sub_20E322A40();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_20E031000, v52, v53, "Emit OLE stream telemetry - event read", v54, 2u);
        MEMORY[0x20F32CA80](v54, -1, -1);
      }

      swift_beginAccess();
      if (!*(v49 + 48))
      {
        (*(v7 + 8))(v18, v6);
        return swift_endAccess();
      }

      swift_endAccess();

      sub_20E3220F0();

      return (*(v7 + 8))(v18, v6);
    }
  }

  return result;
}

id *IFTranscriptSELFMapper.deinit()
{

  return v0;
}

uint64_t IFTranscriptSELFMapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_20E2250A8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C38, &unk_20E346200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C864000, &unk_20E33C0C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20E225240(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A98, &qword_20E33C070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20E225374(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C40, &unk_20E346210);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A48, &qword_20E33BEA0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A48, &qword_20E33BEA0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_20E2255B4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_20E225790(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A98, &qword_20E33C070);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t type metadata accessor for IFTranscriptSELFMapper(uint64_t a1)
{
  result = qword_280E0FA98;
  if (!qword_280E0FA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20E2258A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E225910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E225978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

int *sub_20E2259D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v158 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v162 = (&v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v164 = (&v155 - v7);
  MEMORY[0x28223BE20](v6);
  v165 = (&v155 - v8);
  v9 = sub_20E322010();
  v10 = *(v9 - 1);
  v11 = MEMORY[0x28223BE20](v9);
  v159 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v160 = &v155 - v14;
  MEMORY[0x28223BE20](v13);
  v161 = &v155 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC0, &unk_20E325F70);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v180 = (&v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v190[0] = &v155 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v192 = &v155 - v22;
  MEMORY[0x28223BE20](v21);
  v197 = &v155 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v169 = &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v189 = &v155 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v155 - v30;
  MEMORY[0x28223BE20](v29);
  v196 = &v155 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688C0, &qword_20E33B870);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v155 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868778, &unk_20E33C000);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = (&v155 - v37);
  v208 = sub_20E322150();
  v39 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v200 = (&v155 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v209 = type metadata accessor for TranscriptProtoEvent(0);
  v166 = *(v209 - 8);
  v41 = MEMORY[0x28223BE20](v209);
  v198 = &v155 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v203 = &v155 - v43;
  v186 = type metadata accessor for RequestData(0);
  v172 = *(v186 - 8);
  v44 = MEMORY[0x28223BE20](v186);
  v188 = &v155 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v155 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v155 - v50;
  MEMORY[0x28223BE20](v49);
  v171 = &v155 - v52;
  v156 = type metadata accessor for SessionData(0);
  v53 = *(v156 + 32);
  v184 = a1;
  v54 = *(a1 + v53);
  v55 = *(v54 + 64);
  v175 = v54 + 64;
  v56 = 1 << *(v54 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v174 = (v56 + 63) >> 6;
  v202 = (v39 + 48);
  v195 = (v39 + 32);
  v177 = (v10 + 48);
  v168 = (v10 + 32);
  v157 = v10;
  v167 = (v10 + 8);
  v194 = (v39 + 8);
  v201 = (v39 + 56);
  EnumCaseMultiPayload = v38;
  v59 = v57 & v55;
  v173 = v54;

  v185 = 0;
  v176 = 0;
  v61 = 0;
  v62 = 0.0;
  *&v63 = 136315138;
  v163 = v63;
  *&v63 = 136315394;
  v178 = v63;
  v64 = 0.0;
  v183 = v9;
  v191 = v31;
  v65 = &unk_20E325F70;
  v170 = v48;
  v193 = v51;
  v207 = EnumCaseMultiPayload;
  v179 = v35;
LABEL_5:
  if (v59)
  {
    v66 = v186;
    goto LABEL_12;
  }

  v66 = v186;
  while (1)
  {
    v67 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v67 >= v174)
    {

      if (v64 <= 0.0)
      {
        v147 = 0.0;
        v146 = 0.0;
        v9 = v158;
        EnumCaseMultiPayload = v157;
        v60 = v183;
        if (v62 <= 0.0)
        {
          goto LABEL_70;
        }

        if (qword_27C863198 != -1)
        {
          v154 = v183;
          swift_once();
          v60 = v154;
        }

        goto LABEL_69;
      }

      v9 = v158;
      EnumCaseMultiPayload = v157;
      v60 = v183;
      if (qword_27C863198 != -1)
      {
        goto LABEL_86;
      }

      goto LABEL_64;
    }

    v59 = *(v175 + 8 * v67);
    ++v61;
    if (v59)
    {
      v61 = v67;
LABEL_12:
      v182 = v59;
      v181 = v61;
      v68 = v171;
      sub_20E2281C8(*(v173 + 56) + *(v172 + 72) * (__clz(__rbit64(v59)) | (v61 << 6)), v171, type metadata accessor for RequestData);
      sub_20E228230(v68, v51, type metadata accessor for RequestData);
      if (qword_27C863978 != -1)
      {
        swift_once();
      }

      v69 = sub_20E3227C0();
      v70 = __swift_project_value_buffer(v69, qword_27C8CC290);
      sub_20E2281C8(v51, v48, type metadata accessor for RequestData);
      v190[1] = v70;
      EnumCaseMultiPayload = sub_20E3227B0();
      v71 = sub_20E322A40();
      if (os_log_type_enabled(EnumCaseMultiPayload, v71))
      {
        v72 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v210 = v9;
        *v72 = v163;
        v73 = &v48[*(v66 + 20)];
        v74 = v48;
        v76 = *v73;
        v75 = v73[1];

        v77 = v74;
        v51 = v193;
        sub_20E228298(v77, type metadata accessor for RequestData);
        v78 = sub_20E31B6C4(v76, v75, &v210);

        *(v72 + 4) = v78;
        _os_log_impl(&dword_20E031000, EnumCaseMultiPayload, v71, "Calculating span latency for request: %s", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x20F32CA80](v9, -1, -1);
        MEMORY[0x20F32CA80](v72, -1, -1);
      }

      else
      {

        sub_20E228298(v48, type metadata accessor for RequestData);
      }

      v79 = *&v51[*(v66 + 24)];
      v80 = *(v79 + 16);
      if (v80)
      {
        v81 = v79 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
        v82 = *(v166 + 72);
        v9 = &qword_27C868778;
        v83 = v203;
        v199 = v82;
        do
        {
          sub_20E2281C8(v81, v83, type metadata accessor for TranscriptProtoEvent);
          sub_20E0486F4(v83 + *(v209 + 52), v35, &qword_27C8688C0, &qword_20E33B870);
          v84 = type metadata accessor for TranscriptProtoTimepoint(0);
          if ((*(*(v84 - 8) + 48))(v35, 1, v84) == 1)
          {
            sub_20E228298(v83, type metadata accessor for TranscriptProtoEvent);
            sub_20E04875C(v35, &qword_27C8688C0, &qword_20E33B870);
            EnumCaseMultiPayload = v207;
            (*v201)(v207, 1, 1, v208);
          }

          else
          {
            v206 = v80;
            v85 = &v35[*(v84 + 28)];
            EnumCaseMultiPayload = v207;
            v86 = v9;
            sub_20E0486F4(v85, v207, v9, &unk_20E33C000);
            v87 = v35;
            sub_20E228298(v35, type metadata accessor for TranscriptProtoTimepoint);
            v88 = v208;
            if ((*v202)(EnumCaseMultiPayload, 1, v208) != 1)
            {
              (*v195)(v200, EnumCaseMultiPayload, v88);
              v90 = *(v209 + 44);
              v83 = v203;
              v91 = v197;
              v9 = &qword_27C863FC0;
              sub_20E0486F4(v203 + v90, v197, &qword_27C863FC0, v65);
              v92 = type metadata accessor for TranscriptProtoPayload(0);
              v93 = *(v92 - 8);
              v94 = *(v93 + 48);
              v204 = v93 + 48;
              v205 = v94;
              if (v94(v91, 1, v92) == 1)
              {
                sub_20E04875C(v91, &qword_27C863FC0, v65);
                v95 = type metadata accessor for TranscriptProtoPayloadEnum(0);
                v96 = v196;
                (*(*(v95 - 8) + 56))(v196, 1, 1, v95);
                goto LABEL_28;
              }

              v96 = v196;
              sub_20E0486F4(v91, v196, &qword_27C863FC8, &unk_20E33C1D0);
              sub_20E228298(v91, type metadata accessor for TranscriptProtoPayload);
              v97 = type metadata accessor for TranscriptProtoPayloadEnum(0);
              if ((*(*(v97 - 8) + 48))(v96, 1, v97) == 1)
              {
LABEL_28:
                sub_20E04875C(v96, &qword_27C863FC8, &unk_20E33C1D0);
                v80 = v206;
              }

              else
              {
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                sub_20E228298(v96, type metadata accessor for TranscriptProtoPayloadEnum);
                v80 = v206;
                if (EnumCaseMultiPayload == 2)
                {
                  if (__OFADD__(v176, 1))
                  {
                    goto LABEL_78;
                  }

                  ++v176;
                  EnumCaseMultiPayload = v165;
                  sub_20E22736C(v83, v184, v165);
                  v123 = v183;
                  if ((*v177)(EnumCaseMultiPayload, 1, v183) == 1)
                  {
                    goto LABEL_52;
                  }

                  v124 = v161;
                  (*v168)(v161, EnumCaseMultiPayload, v123);
                  EnumCaseMultiPayload = v200;
                  sub_20E322130();
                  v126 = v125;
                  sub_20E321F20();
                  v128 = v127;
                  (*v167)(v124, v123);
                  (*v194)(EnumCaseMultiPayload, v208);
                  sub_20E228298(v83, type metadata accessor for TranscriptProtoEvent);
                  v64 = v64 + v126 - v128;
LABEL_61:
                  v82 = v199;
                  v9 = &qword_27C868778;
                  goto LABEL_21;
                }
              }

              v98 = v192;
              sub_20E0486F4(v83 + v90, v192, &qword_27C863FC0, v65);
              if (v205(v98, 1, v92) == 1)
              {
                v99 = v65;
                sub_20E04875C(v98, &qword_27C863FC0, v65);
                v100 = type metadata accessor for TranscriptProtoPayloadEnum(0);
                v101 = v191;
                (*(*(v100 - 8) + 56))(v191, 1, 1, v100);
                goto LABEL_32;
              }

              v99 = v65;
              v101 = v191;
              sub_20E0486F4(v98, v191, &qword_27C863FC8, &unk_20E33C1D0);
              sub_20E228298(v98, type metadata accessor for TranscriptProtoPayload);
              v102 = type metadata accessor for TranscriptProtoPayloadEnum(0);
              if ((*(*(v102 - 8) + 48))(v101, 1, v102) == 1)
              {
LABEL_32:
                sub_20E04875C(v101, &qword_27C863FC8, &unk_20E33C1D0);
              }

              else
              {
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                sub_20E228298(v101, type metadata accessor for TranscriptProtoPayloadEnum);
                if (EnumCaseMultiPayload == 3)
                {
                  if (__OFADD__(v185, 1))
                  {
                    goto LABEL_79;
                  }

                  v65 = v99;
                  ++v185;
                  EnumCaseMultiPayload = v164;
                  sub_20E22736C(v83, v184, v164);
                  v129 = v183;
                  if ((*v177)(EnumCaseMultiPayload, 1, v183) == 1)
                  {
                    goto LABEL_52;
                  }

                  v130 = *v168;
                  v131 = v190;
                  goto LABEL_60;
                }
              }

              v103 = v190[0];
              v65 = v99;
              sub_20E0486F4(v83 + v90, v190[0], &qword_27C863FC0, v99);
              if (v205(v103, 1, v92) == 1)
              {
                sub_20E04875C(v103, &qword_27C863FC0, v99);
                v104 = type metadata accessor for TranscriptProtoPayloadEnum(0);
                v105 = v189;
                (*(*(v104 - 8) + 56))(v189, 1, 1, v104);
                goto LABEL_36;
              }

              v105 = v189;
              sub_20E0486F4(v103, v189, &qword_27C863FC8, &unk_20E33C1D0);
              sub_20E228298(v103, type metadata accessor for TranscriptProtoPayload);
              v106 = type metadata accessor for TranscriptProtoPayloadEnum(0);
              if ((*(*(v106 - 8) + 48))(v105, 1, v106) == 1)
              {
LABEL_36:
                sub_20E04875C(v105, &qword_27C863FC8, &unk_20E33C1D0);
              }

              else
              {
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                sub_20E228298(v105, type metadata accessor for TranscriptProtoPayloadEnum);
                if (EnumCaseMultiPayload == 4)
                {
                  if (__OFADD__(v185, 1))
                  {
                    goto LABEL_80;
                  }

                  ++v185;
                  EnumCaseMultiPayload = v162;
                  sub_20E22736C(v83, v184, v162);
                  v129 = v183;
                  if ((*v177)(EnumCaseMultiPayload, 1, v183) == 1)
                  {
LABEL_52:
                    (*v194)(v200, v208);
                    sub_20E228298(v83, type metadata accessor for TranscriptProtoEvent);
                    sub_20E04875C(EnumCaseMultiPayload, &qword_27C863F30, &qword_20E325D90);
                    goto LABEL_61;
                  }

                  v130 = *v168;
                  v131 = &v189;
LABEL_60:
                  v141 = *(v131 - 32);
                  v130(v141, EnumCaseMultiPayload, v129);
                  EnumCaseMultiPayload = v200;
                  sub_20E322130();
                  v143 = v142;
                  sub_20E321F20();
                  v145 = v144;
                  (*v167)(v141, v129);
                  (*v194)(EnumCaseMultiPayload, v208);
                  sub_20E228298(v83, type metadata accessor for TranscriptProtoEvent);
                  v62 = v62 + v143 - v145;
                  goto LABEL_61;
                }
              }

              v107 = v188;
              sub_20E2281C8(v193, v188, type metadata accessor for RequestData);
              v108 = v198;
              sub_20E2281C8(v83, v198, type metadata accessor for TranscriptProtoEvent);
              v109 = sub_20E3227B0();
              v110 = sub_20E322A40();
              if (os_log_type_enabled(v109, v110))
              {
                LODWORD(v206) = v110;
                v111 = v107;
                v112 = swift_slowAlloc();
                v187 = swift_slowAlloc();
                v210 = v187;
                *v112 = v178;
                v113 = (v107 + *(v186 + 20));
                v114 = *v113;
                v115 = v113[1];

                sub_20E228298(v111, type metadata accessor for RequestData);
                v116 = sub_20E31B6C4(v114, v115, &v210);

                *(v112 + 4) = v116;
                *(v112 + 12) = 2080;
                v117 = v108 + *(v209 + 44);
                EnumCaseMultiPayload = v180;
                sub_20E0486F4(v117, v180, &qword_27C863FC0, &unk_20E325F70);
                if (v205(EnumCaseMultiPayload, 1, v92) == 1)
                {
                  v118 = EnumCaseMultiPayload;
                  v119 = &qword_27C863FC0;
                  v120 = &unk_20E325F70;
                  goto LABEL_55;
                }

                v132 = v169;
                sub_20E0486F4(EnumCaseMultiPayload, v169, &qword_27C863FC8, &unk_20E33C1D0);
                sub_20E228298(EnumCaseMultiPayload, type metadata accessor for TranscriptProtoPayload);
                v133 = type metadata accessor for TranscriptProtoPayloadEnum(0);
                if ((*(*(v133 - 8) + 48))(v132, 1, v133) == 1)
                {
                  v118 = v132;
                  v119 = &qword_27C863FC8;
                  v120 = &unk_20E33C1D0;
LABEL_55:
                  sub_20E04875C(v118, v119, v120);
                  v134 = 0xE300000000000000;
                  v135 = 7104878;
                }

                else
                {
                  v136 = TranscriptProtoPayloadEnum.eventTypeString.getter();
                  v137 = v132;
                  v135 = v136;
                  v134 = v138;
                  sub_20E228298(v137, type metadata accessor for TranscriptProtoPayloadEnum);
                }

                v35 = v179;
                sub_20E228298(v198, type metadata accessor for TranscriptProtoEvent);
                v139 = sub_20E31B6C4(v135, v134, &v210);

                *(v112 + 14) = v139;
                _os_log_impl(&dword_20E031000, v109, v206, "Latency calculation does not include %s, event: %s", v112, 0x16u);
                v140 = v187;
                swift_arrayDestroy();
                MEMORY[0x20F32CA80](v140, -1, -1);
                MEMORY[0x20F32CA80](v112, -1, -1);

                (*v194)(v200, v208);
                v122 = v83;
              }

              else
              {

                v121 = v108;
                EnumCaseMultiPayload = type metadata accessor for TranscriptProtoEvent;
                sub_20E228298(v121, type metadata accessor for TranscriptProtoEvent);
                sub_20E228298(v107, type metadata accessor for RequestData);
                (*v194)(v200, v208);
                v122 = v83;
              }

              sub_20E228298(v122, type metadata accessor for TranscriptProtoEvent);
              v65 = &unk_20E325F70;
              v9 = &qword_27C868778;
              v82 = v199;
              goto LABEL_21;
            }

            v89 = v203;
            sub_20E228298(v203, type metadata accessor for TranscriptProtoEvent);
            v9 = v86;
            v83 = v89;
            v35 = v87;
            v80 = v206;
          }

          sub_20E04875C(EnumCaseMultiPayload, v9, &unk_20E33C000);
LABEL_21:
          v81 += v82;
          --v80;
        }

        while (v80);
      }

      v59 = (v182 - 1) & v182;
      v51 = v193;
      sub_20E228298(v193, type metadata accessor for RequestData);
      v48 = v170;
      v61 = v181;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  do
  {
    __break(1u);
LABEL_86:
    v153 = v60;
    swift_once();
    v60 = v153;
LABEL_64:
    v146 = v64 * *&qword_27C8CC288 / v176;
    v147 = 0.0;
    if (v62 > 0.0)
    {
LABEL_69:
      v147 = v62 * *&qword_27C8CC288 / v185;
    }

LABEL_70:
    v148 = v147 + v146;
    isa = EnumCaseMultiPayload[2].isa;
    EnumCaseMultiPayload += 2;
    isa(v9, v184, v60);
    if (v148 <= -1.0)
    {
      goto LABEL_81;
    }

    if (v148 >= 1.84467441e19)
    {
      goto LABEL_82;
    }

    if ((*&v147 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v148 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_83;
    }

    if (v147 <= -1.0)
    {
      goto LABEL_84;
    }
  }

  while (v147 >= 1.84467441e19);
  v150 = *(v184 + *(v156 + 20) + 1);
  result = type metadata accessor for PerfMetricsDefinitions(0);
  v152 = (v9 + result[5]);
  *v152 = 0x6E776F6E6B6E75;
  v152[1] = 0xE700000000000000;
  *(v9 + result[6]) = v150;
  *(v9 + result[7]) = v148;
  *(v9 + result[8]) = v147;
  *(v9 + result[9]) = 0;
  return result;
}

uint64_t sub_20E22736C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a2;
  v118 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC0, &unk_20E325F70);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v114 = &v106 - v9;
  MEMORY[0x28223BE20](v8);
  v110 = &v106 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v109 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v108 = &v106 - v15;
  MEMORY[0x28223BE20](v14);
  v107 = &v106 - v16;
  v17 = type metadata accessor for TranscriptProtoEvent(0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v115 = &v106 - v22;
  MEMORY[0x28223BE20](v21);
  v111 = &v106 - v23;
  v113 = type metadata accessor for ParticipantInfo(0);
  v24 = *(v113 - 8);
  v25 = MEMORY[0x28223BE20](v113);
  v112 = (&v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v106 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v106 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688A0, &qword_20E33B858);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = (&v106 - v33);
  v117 = v17;
  sub_20E0486F4(a1 + *(v17 + 60), &v106 - v33, &qword_27C8688A0, &qword_20E33B858);
  v35 = type metadata accessor for TranscriptProtoSpanID(0);
  if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
  {
    sub_20E04875C(v34, &qword_27C8688A0, &qword_20E33B858);
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v36 = sub_20E3227C0();
    __swift_project_value_buffer(v36, qword_280E12C48);
    sub_20E2281C8(a1, v20, type metadata accessor for TranscriptProtoEvent);
    v37 = sub_20E3227B0();
    v38 = sub_20E322A40();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v119 = v40;
      *v39 = 136315138;
      sub_20E0486F4(&v20[*(v117 + 44)], v7, &qword_27C863FC0, &unk_20E325F70);
      v41 = type metadata accessor for TranscriptProtoPayload(0);
      if ((*(*(v41 - 8) + 48))(v7, 1, v41) == 1)
      {
        v42 = 7104878;
        v43 = &qword_27C863FC0;
        v44 = &unk_20E325F70;
        v45 = v7;
      }

      else
      {
        v81 = v109;
        sub_20E0486F4(v7, v109, &qword_27C863FC8, &unk_20E33C1D0);
        sub_20E228298(v7, type metadata accessor for TranscriptProtoPayload);
        v82 = type metadata accessor for TranscriptProtoPayloadEnum(0);
        if ((*(*(v82 - 8) + 48))(v81, 1, v82) != 1)
        {
          v42 = TranscriptProtoPayloadEnum.eventTypeString.getter();
          v83 = v87;
          sub_20E228298(v81, type metadata accessor for TranscriptProtoPayloadEnum);
          goto LABEL_30;
        }

        v42 = 7104878;
        v43 = &qword_27C863FC8;
        v44 = &unk_20E33C1D0;
        v45 = v81;
      }

      sub_20E04875C(v45, v43, v44);
      v83 = 0xE300000000000000;
LABEL_30:
      sub_20E228298(v20, type metadata accessor for TranscriptProtoEvent);
      v88 = sub_20E31B6C4(v42, v83, &v119);

      *(v39 + 4) = v88;
      _os_log_impl(&dword_20E031000, v37, v38, "Event: %s has invalid posting span, unable to get InitiatingSpanEventTime", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x20F32CA80](v40, -1, -1);
      MEMORY[0x20F32CA80](v39, -1, -1);

      goto LABEL_33;
    }

    v80 = v20;
LABEL_21:
    sub_20E228298(v80, type metadata accessor for TranscriptProtoEvent);
LABEL_33:
    v91 = sub_20E322010();
    return (*(*(v91 - 8) + 56))(v118, 1, 1, v91);
  }

  v46 = *v34;
  sub_20E228298(v34, type metadata accessor for TranscriptProtoSpanID);
  v47 = v116 + *(type metadata accessor for SessionData(0) + 20);
  v48 = *(v47 + *(type metadata accessor for SessionSignature(0) + 32));
  if (!*(v48 + 16) || (v49 = sub_20E1ACB90(v46), (v50 & 1) == 0))
  {
    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v67 = sub_20E3227C0();
    __swift_project_value_buffer(v67, qword_280E12C48);
    v68 = v115;
    sub_20E2281C8(a1, v115, type metadata accessor for TranscriptProtoEvent);
    v69 = sub_20E3227B0();
    v70 = sub_20E322A50();
    v71 = os_log_type_enabled(v69, v70);
    v72 = v114;
    if (!v71)
    {

      v80 = v68;
      goto LABEL_21;
    }

    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v119 = v74;
    *v73 = 136315138;
    sub_20E0486F4(v68 + *(v117 + 44), v72, &qword_27C863FC0, &unk_20E325F70);
    v75 = type metadata accessor for TranscriptProtoPayload(0);
    if ((*(*(v75 - 8) + 48))(v72, 1, v75) == 1)
    {
      v76 = 7104878;
      v77 = &qword_27C863FC0;
      v78 = &unk_20E325F70;
      v79 = v72;
    }

    else
    {
      v84 = v108;
      sub_20E0486F4(v72, v108, &qword_27C863FC8, &unk_20E33C1D0);
      sub_20E228298(v72, type metadata accessor for TranscriptProtoPayload);
      v85 = type metadata accessor for TranscriptProtoPayloadEnum(0);
      if ((*(*(v85 - 8) + 48))(v84, 1, v85) != 1)
      {
        v76 = TranscriptProtoPayloadEnum.eventTypeString.getter();
        v86 = v89;
        sub_20E228298(v84, type metadata accessor for TranscriptProtoPayloadEnum);
        goto LABEL_32;
      }

      v76 = 7104878;
      v77 = &qword_27C863FC8;
      v78 = &unk_20E33C1D0;
      v79 = v84;
    }

    sub_20E04875C(v79, v77, v78);
    v86 = 0xE300000000000000;
LABEL_32:
    sub_20E228298(v68, type metadata accessor for TranscriptProtoEvent);
    v90 = sub_20E31B6C4(v76, v86, &v119);

    *(v73 + 4) = v90;
    _os_log_impl(&dword_20E031000, v69, v70, "Event: %s has unmatched initiating span, unable to get InitiatingSpanEventTime", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x20F32CA80](v74, -1, -1);
    MEMORY[0x20F32CA80](v73, -1, -1);

    goto LABEL_33;
  }

  sub_20E2281C8(*(v48 + 56) + *(v24 + 72) * v49, v29, type metadata accessor for ParticipantInfo);
  v51 = v31;
  sub_20E228230(v29, v31, type metadata accessor for ParticipantInfo);
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v52 = sub_20E3227C0();
  __swift_project_value_buffer(v52, qword_280E12C48);
  v53 = a1;
  v54 = v111;
  sub_20E2281C8(v53, v111, type metadata accessor for TranscriptProtoEvent);
  v55 = v112;
  sub_20E2281C8(v31, v112, type metadata accessor for ParticipantInfo);
  v56 = sub_20E3227B0();
  v57 = sub_20E322A40();
  v58 = os_log_type_enabled(v56, v57);
  v59 = v110;
  if (v58)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v119 = v61;
    *v60 = 136315394;
    sub_20E0486F4(v54 + *(v117 + 44), v59, &qword_27C863FC0, &unk_20E325F70);
    v62 = type metadata accessor for TranscriptProtoPayload(0);
    if ((*(*(v62 - 8) + 48))(v59, 1, v62) == 1)
    {
      v63 = 7104878;
      v64 = &qword_27C863FC0;
      v65 = &unk_20E325F70;
      v66 = v59;
    }

    else
    {
      v93 = v107;
      sub_20E0486F4(v59, v107, &qword_27C863FC8, &unk_20E33C1D0);
      sub_20E228298(v59, type metadata accessor for TranscriptProtoPayload);
      v94 = type metadata accessor for TranscriptProtoPayloadEnum(0);
      if ((*(*(v94 - 8) + 48))(v93, 1, v94) != 1)
      {
        v63 = TranscriptProtoPayloadEnum.eventTypeString.getter();
        v95 = v96;
        sub_20E228298(v93, type metadata accessor for TranscriptProtoPayloadEnum);
        goto LABEL_38;
      }

      v63 = 7104878;
      v64 = &qword_27C863FC8;
      v65 = &unk_20E33C1D0;
      v66 = v93;
    }

    sub_20E04875C(v66, v64, v65);
    v95 = 0xE300000000000000;
LABEL_38:
    sub_20E228298(v54, type metadata accessor for TranscriptProtoEvent);
    v97 = sub_20E31B6C4(v63, v95, &v119);

    *(v60 + 4) = v97;
    *(v60 + 12) = 2080;
    if (v55[1])
    {
      v98 = *v55;
      v99 = v55[1];
    }

    else
    {
      v99 = 0xE700000000000000;
      v98 = 0x6E776F6E6B6E55;
    }

    sub_20E228298(v55, type metadata accessor for ParticipantInfo);
    v100 = sub_20E31B6C4(v98, v99, &v119);

    *(v60 + 14) = v100;
    _os_log_impl(&dword_20E031000, v56, v57, "Event: %s has initiating span: %s", v60, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F32CA80](v61, -1, -1);
    MEMORY[0x20F32CA80](v60, -1, -1);

    goto LABEL_42;
  }

  sub_20E228298(v55, type metadata accessor for ParticipantInfo);
  sub_20E228298(v54, type metadata accessor for TranscriptProtoEvent);
LABEL_42:
  v101 = *(v113 + 20);
  v102 = sub_20E322010();
  v103 = *(v102 - 8);
  v104 = v51 + v101;
  v105 = v118;
  (*(v103 + 16))(v118, v104, v102);
  sub_20E228298(v51, type metadata accessor for ParticipantInfo);
  return (*(v103 + 56))(v105, 0, 1, v102);
}

uint64_t sub_20E2281C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E228230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E228298(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_20E2282F8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688A0, &qword_20E33B858);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v75 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688B0, &unk_20E33C1C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v75 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v81 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v80 = &v75 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v75 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v75 - v16;
  v18 = sub_20E322060();
  v82 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v75 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v79 = &v75 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v75 - v27;
  v29 = [objc_allocWithZone(MEMORY[0x277D57D88]) init];
  if (v29)
  {
    v30 = v29;
    v75 = v24;
    v76 = v21;
    v77 = v7;
    v78 = v4;
    v31 = a1[8];
    v32 = a1[9];
    if (v31 == 0xD00000000000001ELL && 0x800000020E35A8D0 == v32 || (sub_20E322D60() & 1) != 0)
    {
      v33 = 1;
    }

    else if (v31 == 0xD000000000000021 && 0x800000020E3614F0 == v32 || (sub_20E322D60() & 1) != 0)
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
      if (v31 != 0xD000000000000017 || 0x800000020E361520 != v32)
      {
        if (sub_20E322D60())
        {
          v33 = 2;
        }

        else
        {
          v33 = 0;
        }
      }
    }

    [v30 setClientApplicationId_];
    sub_20E06C5DC(0, v17);
    v34 = v82;
    v35 = *(v82 + 48);
    if (v35(v17, 1, v18) == 1)
    {
      sub_20E04875C(v17, &qword_27C863A90, &unk_20E33C020);
    }

    else
    {
      (*(v34 + 32))(v28, v17, v18);
      v41 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v42 = sub_20E322030();
      v43 = [v41 initWithNSUUID_];

      [v30 setIfRequestId_];
      (*(v34 + 8))(v28, v18);
    }

    v44 = v77;
    sub_20E06C5DC(1, v15);
    if (v35(v15, 1, v18) == 1)
    {
      sub_20E04875C(v15, &qword_27C863A90, &unk_20E33C020);
      v45 = v82;
    }

    else
    {
      v45 = v82;
      v46 = v79;
      (*(v82 + 32))(v79, v15, v18);
      v47 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v48 = sub_20E322030();
      v49 = [v47 initWithNSUUID_];

      [v30 setIfEventId_];
      (*(v45 + 8))(v46, v18);
    }

    v50 = v80;
    sub_20E06C5DC(2, v80);
    if (v35(v50, 1, v18) == 1)
    {
      sub_20E04875C(v50, &qword_27C863A90, &unk_20E33C020);
    }

    else
    {
      v51 = v75;
      (*(v45 + 32))(v75, v50, v18);
      v52 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v53 = sub_20E322030();
      v54 = [v52 initWithNSUUID_];

      [v30 setIfSessionId_];
      (*(v45 + 8))(v51, v18);
    }

    v55 = v81;
    sub_20E06C5DC(3, v81);
    if (v35(v55, 1, v18) == 1)
    {
      sub_20E04875C(v55, &qword_27C863A90, &unk_20E33C020);
    }

    else
    {
      v56 = v76;
      (*(v45 + 32))(v76, v55, v18);
      v57 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v58 = sub_20E322030();
      v59 = [v57 initWithNSUUID_];

      [v30 setClientTraceId_];
      (*(v45 + 8))(v56, v18);
    }

    v60 = v78;
    v61 = type metadata accessor for TranscriptProtoEvent(0);
    sub_20E0486F4(a1 + *(v61 + 56), v44, &qword_27C8688B0, &unk_20E33C1C0);
    v62 = type metadata accessor for TranscriptProtoParticipantID(0);
    if ((*(*(v62 - 8) + 48))(v44, 1, v62) == 1)
    {
      sub_20E04875C(v44, &qword_27C8688B0, &unk_20E33C1C0);
      v63 = 0;
      v64 = 0;
    }

    else
    {
      v63 = *v44;
      v64 = v44[1];

      sub_20E228D84(v44, type metadata accessor for TranscriptProtoParticipantID);
    }

    v65 = sub_20E064488(v63, v64);

    [v30 setSender_];
    sub_20E0486F4(a1 + *(v61 + 60), v60, &qword_27C8688A0, &qword_20E33B858);
    v66 = type metadata accessor for TranscriptProtoSpanID(0);
    if ((*(*(v66 - 8) + 48))(v60, 1, v66) == 1)
    {
      sub_20E04875C(v60, &qword_27C8688A0, &qword_20E33B858);
      v67 = 0;
    }

    else
    {
      v67 = *v60;
      sub_20E228D84(v60, type metadata accessor for TranscriptProtoSpanID);
    }

    [v30 setPostingSpanId_];
    v68 = sub_20E050CFC(a1);
    v69 = v68;
    if (v68 >> 62)
    {
      v70 = sub_20E322BC0();
      if (v70)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v70 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v70)
      {
LABEL_30:
        if (v70 >= 1)
        {
          for (i = 0; i != v70; ++i)
          {
            if ((v69 & 0xC000000000000001) != 0)
            {
              v72 = MEMORY[0x20F32C150](i, v69);
            }

            else
            {
              v72 = *(v69 + 8 * i + 32);
            }

            v73 = v72;
            [v30 addInitiatedSpans_];
          }

          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_49;
      }
    }

LABEL_46:

    return v30;
  }

  if (qword_280E12B88 != -1)
  {
LABEL_49:
    swift_once();
  }

  v36 = sub_20E3227C0();
  __swift_project_value_buffer(v36, qword_280E12C48);
  v37 = sub_20E3227B0();
  v38 = sub_20E322A50();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v83 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_20E31B6C4(0xD00000000000004ALL, 0x800000020E3614A0, &v83);
    _os_log_impl(&dword_20E031000, v37, v38, "%s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x20F32CA80](v40, -1, -1);
    MEMORY[0x20F32CA80](v39, -1, -1);
  }

  v84 = 96;
  _s23LighthouseDataProcessor20CoreAnalyticsServiceO017submitReliabilityE08category6reasonyAA0H8CategoryO_SStFZ_0(&v84, 0xD00000000000004ALL, 0x800000020E3614A0);
  return 0;
}

uint64_t sub_20E228D84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

LighthouseDataProcessor::ToolKitProtoRuntimePlatform_optional __swiftcall ToolKitProtoRuntimePlatform.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E228E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F7F8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

LighthouseDataProcessor::ToolKitProtoTypeIdentifier::Primitive::MeasurementUnitType_optional __swiftcall ToolKitProtoTypeIdentifier.Primitive.MeasurementUnitType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 5;
  switch(rawValue)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v2 = 1;
      goto LABEL_15;
    case 2:
      v2 = 2;
      goto LABEL_15;
    case 3:
      v2 = 3;
      goto LABEL_15;
    case 4:
      v2 = 4;
LABEL_15:
      v3 = v2;
      goto LABEL_16;
    case 5:
LABEL_16:
      *v1 = v3;
      break;
    case 6:
      *v1 = 6;
      break;
    case 7:
      *v1 = 7;
      break;
    case 8:
      *v1 = 8;
      break;
    case 9:
      *v1 = 9;
      break;
    case 10:
      *v1 = 10;
      break;
    case 11:
      *v1 = 11;
      break;
    case 12:
      *v1 = 12;
      break;
    case 13:
      *v1 = 13;
      break;
    case 14:
      *v1 = 14;
      break;
    case 15:
      *v1 = 15;
      break;
    case 16:
      *v1 = 16;
      break;
    case 17:
      *v1 = 17;
      break;
    case 18:
      *v1 = 18;
      break;
    case 19:
      *v1 = 19;
      break;
    case 20:
      *v1 = 20;
      break;
    case 21:
      *v1 = 21;
      break;
    case 22:
      *v1 = 22;
      break;
    default:
      *v1 = 23;
      break;
  }

  return rawValue;
}

uint64_t sub_20E229064(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F7A4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoTypeIdentifier.Primitive.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 41;
  type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E22929C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E229338(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E22963C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  a2(0);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E229AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F750();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.Property.init()@<X0>(char *a1@<X8>)
{
  v2 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0) + 24);
  v3 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.Property.init(id:displayName:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0) + 24);
  v13 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v13 - 8) + 56))(&a6[v12], 1, 1, v13);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  return sub_20E05EC5C(a5, &a6[v12], &qword_27C863C48, &qword_20E323F30);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = *(v2 + 44);
  v6 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v8 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v8;
  *(a1 + 2) = v8;
  *(a1 + 3) = v8;
  *(a1 + 4) = v8;
  *(a1 + 5) = v8;
  return result;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.init(identifier:properties:runtimeRequirements:displayRepresentation:sampleInvocations:systemProtocols:runtimeFlags:coercions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v16 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v17 = *(v16 + 40);
  v18 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = *(v16 + 44);
  v20 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a9[v17], &qword_27C863B60, &qword_20E323F50);
  *a9 = a2;
  *(a9 + 1) = a3;
  result = sub_20E05EC5C(a4, &a9[v19], &qword_27C868A20, &qword_20E345F10);
  *(a9 + 2) = a5;
  *(a9 + 3) = a6;
  *(a9 + 4) = a7;
  *(a9 + 5) = a8;
  return result;
}

uint64_t sub_20E22A264(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F6FC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E22A390@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E22A42C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v3 = *(v2 + 32);
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 36);
  v6 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v8 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  *(a1 + 24) = v8;
  return result;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.init(identifier:cases:runtimeRequirements:displayRepresentation:kind:systemProtocols:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a5;
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v15 = *(v14 + 32);
  v16 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = *(v14 + 36);
  v18 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v18 - 8) + 56))(a7 + v17, 1, 1, v18);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a7 + v15, &qword_27C863B60, &qword_20E323F50);
  *a7 = a2;
  *(a7 + 8) = a3;
  result = sub_20E05EC5C(a4, a7 + v17, &qword_27C868A20, &qword_20E345F10);
  *(a7 + 16) = v13;
  *(a7 + 24) = a6;
  return result;
}

uint64_t sub_20E22B094@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 48);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E22B130(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 48);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v3 = v2[6];
  v4 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[8];
  v8 = type metadata accessor for ToolKitProtoAllPredicate(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = v2[9];
  v10 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  v11 = v2[10];
  v12 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = v2[11];
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  (*(*(valid - 8) + 56))(&a1[v13], 1, 1, valid);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v16 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v16;
  return result;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.init(comparison:stringSearch:idSearch:all:suggested:sampleInvocations:searchableItem:valid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v13 = v12[6];
  v14 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  (*(*(v14 - 8) + 56))(&a9[v13], 1, 1, v14);
  v15 = v12[7];
  v16 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  (*(*(v16 - 8) + 56))(&a9[v15], 1, 1, v16);
  v17 = v12[8];
  v18 = type metadata accessor for ToolKitProtoAllPredicate(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v12[9];
  v20 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  v21 = v12[10];
  v22 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  v23 = v12[11];
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  (*(*(valid - 8) + 56))(&a9[v23], 1, 1, valid);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  sub_20E05EC5C(a2, &a9[v13], &qword_27C869C50, &qword_20E346258);
  sub_20E05EC5C(a3, &a9[v15], &qword_27C869C58, &qword_20E346260);
  sub_20E05EC5C(a4, &a9[v17], &qword_27C869C60, &qword_20E346268);
  sub_20E05EC5C(a5, &a9[v19], &qword_27C869C68, &qword_20E346270);
  *(a9 + 1) = a6;
  sub_20E05EC5C(a7, &a9[v21], &qword_27C869C70, &qword_20E346278);
  return sub_20E05EC5C(a8, &a9[v23], &qword_27C869C78, &qword_20E346280);
}

uint64_t ToolKitProtoTypedValue.typedValueKind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_20E047CF8(v2);
}

uint64_t ToolKitProtoTypedValue.typedValueKind.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_20E047CA8(*v1);
  *v1 = v2;
  return result;
}

uint64_t sub_20E22BA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, char *a8@<X8>)
{
  v15 = *(a4(0) + 20);
  v16 = a5(0);
  (*(*(v16 - 8) + 56))(&a8[v15], 1, 1, v16);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  *(a8 + 1) = a2;
  return sub_20E05EC5C(a3, &a8[v15], a6, a7);
}

uint64_t sub_20E22BC8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F6A8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E22BD00@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E22BD9C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0) + 24);
  v3 = sub_20E322160();
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.init(sign:exponent:significand:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0) + 24);
  v9 = sub_20E322160();
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = v7;
  *(a4 + 8) = a2;
  return sub_20E05EC5C(a3, a4 + v8, &qword_27C869C88, &qword_20E346290);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.init(unit:value:unitType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = *a3;
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = v9;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.identificationHint.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.identificationHint.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

LighthouseDataProcessor::ToolKitProtoTypedValue::PrimitiveValue::PaymentMethod::TypeEnum_optional __swiftcall ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.TypeEnum.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E22C4E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F654();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = *(v2 + 24);
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.init(type:identificationHint:displayRepresentation:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0) + 24);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = v9;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  return sub_20E05EC5C(a4, a5 + v10, &qword_27C863EB8, &qword_20E325D08);
}

double sub_20E22C86C@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = *(a1(0) + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = 0.0;
  *a3 = xmmword_20E326350;
  return result;
}

uint64_t sub_20E22CDD4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = *(a1(0) + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.year.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.month.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.day.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.hour.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.minute.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 44);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.second.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 48);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.nanosecond.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 52);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekday.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 56);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekdayOrdinal.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 60);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.quarter.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 64);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekOfMonth.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 68);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekOfYear.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 72);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.yearForWeekOfYear.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 76);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

LighthouseDataProcessor::ToolKitProtoTypedValue::PrimitiveValue::DateComponents::CalendarIdentifier_optional __swiftcall ToolKitProtoTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 17;
  if (rawValue < 0x11)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E22D9CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F600();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.timeZoneIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.timeZoneIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.init(identifier:timeZoneIdentifier:localeIdentifier:firstWeekday:minimumDaysInFirstWeek:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a1;
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = v15;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 24) = a6;
  *(a8 + 32) = a7;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 80);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 80);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v4 = (a1 + v3[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + v3[6];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + v3[7];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v3[8];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + v3[9];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1 + v3[10];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1 + v3[11];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v3[12];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v3[13];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v3[14];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v3[15];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v3[16];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1 + v3[17];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = a1 + v3[18];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = a1 + v3[19];
  *v18 = 0;
  *(v18 + 8) = 1;
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.init(calendar:timeZoneIdentifier:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32)
{
  v33 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  (*(*(v33 - 8) + 56))(a9, 1, 1, v33);
  v34 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v35 = (a9 + v34[5]);
  v36 = a9 + v34[6];
  v37 = a9 + v34[7];
  v38 = a9 + v34[8];
  v39 = a9 + v34[9];
  v40 = a9 + v34[10];
  v41 = a9 + v34[11];
  v42 = a9 + v34[12];
  v43 = a9 + v34[13];
  v47 = a9 + v34[14];
  v45 = a9 + v34[15];
  v49 = a9 + v34[16];
  v46 = a9 + v34[17];
  v50 = a9 + v34[18];
  v48 = a9 + v34[19];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, a9, &qword_27C869C98, &unk_20E3462A0);
  *v35 = a2;
  v35[1] = a3;
  *v36 = a4;
  *(v36 + 8) = a5 & 1;
  *v37 = a6;
  *(v37 + 8) = a7 & 1;
  *v38 = a8;
  *(v38 + 8) = a10 & 1;
  *v39 = a11;
  *(v39 + 8) = a12 & 1;
  *v40 = a13;
  *(v40 + 8) = a14 & 1;
  *v41 = a15;
  *(v41 + 8) = a16 & 1;
  *v42 = a17;
  *(v42 + 8) = a18 & 1;
  *v43 = a19;
  *(v43 + 8) = a20 & 1;
  *v47 = a21;
  *(v47 + 8) = a22 & 1;
  *v45 = a23;
  *(v45 + 8) = a24 & 1;
  *v49 = a25;
  *(v49 + 8) = a26 & 1;
  *v46 = a27;
  *(v46 + 8) = a28 & 1;
  *v50 = a29;
  *(v50 + 8) = a30 & 1;
  *v48 = a31;
  *(v48 + 8) = a32 & 1;
  return result;
}

uint64_t sub_20E22E508@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = a1(0);
  v6 = *(v5 + 20);
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = *(v5 + 24);
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E22E624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, char *a9@<X8>)
{
  v17 = a5(0);
  v18 = *(v17 + 20);
  v19 = a6(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = *(v17 + 24);
  v21 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v21 - 8) + 56))(&a9[v20], 1, 1, v21);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a9[v18], a7, a8);
  *a9 = a2;
  *(a9 + 1) = a3;
  return sub_20E05EC5C(a4, &a9[v20], &qword_27C863EB8, &qword_20E325D08);
}

uint64_t ToolKitProtoTypedValue.EntityValue.hydratedAppEntity.getter()
{
  v1 = v0 + *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 32);
  v2 = *v1;
  sub_20E047C8C(*v1, *(v1 + 8));
  return v2;
}

uint64_t ToolKitProtoTypedValue.EntityValue.hydratedAppEntity.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 32);
  result = sub_20E047D10(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_20E22EA64@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E22EB00(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

unint64_t ToolKitProtoTypedValue.EntityValue.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v3 = v2[6];
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  *&a1[v2[8]] = xmmword_20E323EA0;
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  result = sub_20E04916C(MEMORY[0x277D84F90]);
  *(a1 + 2) = result;
  return result;
}

uint64_t ToolKitProtoTypedValue.EntityValue.init(type:identifier:properties:displayRepresentation:hydratedAppEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v14 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v15 = v14[6];
  v16 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v16 - 8) + 56))(&a8[v15], 1, 1, v16);
  v17 = v14[7];
  v18 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v18 - 8) + 56))(&a8[v17], 1, 1, v18);
  v19 = &a8[v14[8]];
  *v19 = xmmword_20E323EA0;
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a8[v15], &qword_27C863B60, &qword_20E323F50);
  *a8 = a2;
  *(a8 + 1) = a3;
  *(a8 + 2) = a4;
  sub_20E05EC5C(a5, &a8[v17], &qword_27C863EB8, &qword_20E325D08);
  result = sub_20E047D10(*v19, *(v19 + 1));
  *v19 = a6;
  *(v19 + 1) = a7;
  return result;
}

uint64_t sub_20E22F180@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = a1(0);
  (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  v8 = *(a2(0) + 20);
  v9 = a3(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E22F298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v14 - 8) + 56))(a7, 1, 1, v14);
  v15 = *(a3(0) + 20);
  v16 = a4(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a7, &qword_27C863B60, &qword_20E323F50);
  return sub_20E05EC5C(a2, a7 + v15, a5, a6);
}

uint64_t sub_20E22F8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  a5(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return result;
}

uint64_t ToolKitProtoTypedValue.DeferredValue.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.init(type:expectedTypeInstance:storage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v11 - 8) + 56))(a4 + v10, 1, 1, v11);
  v12 = *(v9 + 24);
  v13 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a4, &qword_27C863B60, &qword_20E323F50);
  sub_20E05EC5C(a2, a4 + v10, &qword_27C863C48, &qword_20E323F30);
  return sub_20E05EC5C(a3, a4 + v12, &qword_27C869CA0, &qword_20E3462B0);
}

uint64_t ToolKitProtoTypeInstance.Optional.init(value:defaultValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for ToolKitProtoTypeInstance.Optional(0) + 20);
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C863C48, &qword_20E323F30);
  return sub_20E05EC5C(a2, a3 + v7, &qword_27C863B18, &qword_20E323EB0);
}

uint64_t sub_20E230088@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E2300E8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  a2(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = a1;
  return result;
}

uint64_t sub_20E230284@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = *(a1(0) + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E230360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X8>)
{
  v13 = *(a3(0) + 20);
  v14 = a4(0);
  (*(*(v14 - 8) + 56))(&a7[v13], 1, 1, v14);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, &a7[v13], a5, a6);
  *a7 = a2;
  return result;
}

uint64_t sub_20E230584@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2(0);
  (*(*(v11 - 8) + 56))(a6, 1, 1, v11);
  a3(0);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  return sub_20E05EC5C(a1, a6, a4, a5);
}

uint64_t sub_20E2306C4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0xF000000000000007;
  a1(0);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

LighthouseDataProcessor::ToolKitProtoRestrictionContext::PersonReachableAs_optional __swiftcall ToolKitProtoRestrictionContext.PersonReachableAs.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E230758(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F5AC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E2307C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F558();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E2309C4(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t sub_20E230A24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_20E230B88@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.init(contentItemClass:propertyName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0) + 20);
  v9 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, &a4[v8], &qword_27C869CC0, &qword_20E3462D8);
  *a4 = a2;
  *(a4 + 1) = a3;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.init(parameterKey:queryIdentifier:actionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = (a1 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0) + 20));
  *v3 = 0;
  v3[1] = 0;
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.init(bundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = (a3 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0) + 20));
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *v7 = a1;
  v7[1] = a2;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.init(definition:templates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet(0) + 20);
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C869CB0, &qword_20E3462C8);
  return sub_20E05EC5C(a2, a3 + v7, &qword_27C869C48, &qword_20E346250);
}

uint64_t sub_20E2314D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F504();

  return MEMORY[0x28217E238](a1, a2, v4);
}

LighthouseDataProcessor::ToolKitProtoRestrictionContext::TextTypedWith::KeyboardType_optional __swiftcall ToolKitProtoRestrictionContext.TextTypedWith.KeyboardType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 12;
  if (rawValue < 0xC)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E231558(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F4B0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E2315C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F45C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E231634@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 40);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E2316D0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 40);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *(a1 + 4) = 0;
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.init(multilineAllowed:smartQuotesEnabled:smartDashesEnabled:keyboardType:autocorrectionType:capitalizationType:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, _BYTE *a7@<X8>)
{
  v11 = *a4;
  v12 = *a5;
  v13 = *a6;
  type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = v11;
  a7[4] = v12;
  a7[5] = v13;
  return result;
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Pair.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue(0);
  v3 = *(*(v2 - 8) + 56);
  v3(a1, 1, 1, v2);
  v4 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v3(a1 + *(v4 + 20), 1, 1, v2);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Pair.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoTypedValue(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a3, 1, 1, v6);
  v8 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0) + 20);
  v7(a3 + v8, 1, 1, v6);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, a3, &qword_27C863B18, &qword_20E323EB0);
  return sub_20E05EC5C(a2, a3 + v8, &qword_27C863B18, &qword_20E323EB0);
}

uint64_t sub_20E232644@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E2326E0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E2327D4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = a1(0);
  v6 = v5[5];
  v7 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = v5[6];
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  v10 = v5[7];
  v11 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  (*(*(v11 - 8) + 56))(&a3[v10], 1, 1, v11);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E232954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t *a8@<X7>, char *a9@<X8>, uint64_t *a10)
{
  v16 = a6(0);
  v17 = v16[5];
  v18 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v16[6];
  v20 = a7(0);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  v21 = v16[7];
  v22 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a9[v17], &qword_27C869CD0, &qword_20E3462E8);
  sub_20E05EC5C(a2, &a9[v19], a8, a10);
  *a9 = a3;
  *(a9 + 1) = a4;
  return sub_20E05EC5C(a5, &a9[v21], &qword_27C869CC0, &qword_20E3462D8);
}

uint64_t sub_20E232B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F408();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoCompoundPredicate.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ToolKitProtoCompoundPredicate(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  return result;
}

uint64_t ToolKitProtoCompoundPredicate.init(operator:operands:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for ToolKitProtoCompoundPredicate(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = v5;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_20E232D74@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_20E232DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  a3(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  a4[1] = a2;
  return result;
}

uint64_t sub_20E233180(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  result = a3(0);
  v7 = v3 + *(result + 24);
  *v7 = a1;
  *(v7 + 8) = a2 & 1;
  return result;
}

uint64_t sub_20E233220(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F3B4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoQuery.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoQuery(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 24)];
  *v5 = 0;
  v5[8] = 1;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoQuery.init(predicate:sort:limit:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  v9 = *a2;
  v10 = type metadata accessor for ToolKitProtoQuery(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = &a5[*(v10 + 24)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, &a5[v11], &qword_27C869CF8, &qword_20E346310);
  *a5 = v9;
  *v13 = a3;
  v13[8] = a4 & 1;
  return result;
}

uint64_t ToolKitProtoRuntimePlatformVersion.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *(a1 + 5) = 0;
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoRuntimePlatformVersion.init(major:minor:patch:isWildcard:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  *(a5 + 4) = a2;
  *(a5 + 8) = a3;
  *(a5 + 12) = a4;
  return result;
}

uint64_t sub_20E2337E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F360();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v3 = v2[5];
  v4 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v5 = *(*(v4 - 8) + 56);
  v5(&a1[v3], 1, 1, v4);
  v5(&a1[v2[6]], 1, 1, v4);
  v5(&a1[v2[7]], 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.init(platform:introducingVersion:deprecatingVersion:obsoletingVersion:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v9 = v8[5];
  v10 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v11 = *(*(v10 - 8) + 56);
  v11(&a5[v9], 1, 1, v10);
  v12 = v8[6];
  v11(&a5[v12], 1, 1, v10);
  v13 = v8[7];
  v11(&a5[v13], 1, 1, v10);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = v7;
  sub_20E05EC5C(a2, &a5[v9], &qword_27C869D08, &qword_20E346328);
  sub_20E05EC5C(a3, &a5[v12], &qword_27C869D08, &qword_20E346328);
  return sub_20E05EC5C(a4, &a5[v13], &qword_27C869D08, &qword_20E346328);
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.init(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.init(domain:feature:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t ToolKitProtoToolSummaryString.Component.componentKind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_20E195904(v2, v3, v4);
}

uint64_t ToolKitProtoToolSummaryString.Component.componentKind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_20E195924(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t ToolKitProtoToolSummaryString.Component.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  type metadata accessor for ToolKitProtoToolSummaryString.Component(0);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ToolKitProtoToolInvocationSignature.invisibleParameterKeys.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ToolKitProtoToolInvocationSignature.valueConstraints.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

unint64_t ToolKitProtoToolInvocationSignature.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for ToolKitProtoToolInvocationSignature(0);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  result = sub_20E049EA4(v2);
  a1[2] = result;
  return result;
}

uint64_t ToolKitProtoSampleInvocationDefinition.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
  a1[2] = 0;
  a1[3] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v3 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v3;
  return result;
}

uint64_t ToolKitProtoSampleInvocationDefinition.init(phrases:expectedResult:negativePhrases:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  a5[2] = a2;
  a5[3] = a3;
  *a5 = a1;
  a5[1] = a4;
  return result;
}

uint64_t ToolKitProtoAssistantSchemaVersion.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_20E2348AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  a4(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  return result;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.sampleInvocations.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.description_p.getter()
{
  v1 = *(v0 + *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0) + 32));

  return v1;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.description_p.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  v3 = *(v2 + 28);
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 32)];
  *v5 = 0;
  *(v5 + 1) = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v7 = MEMORY[0x277D84F90];
  *(a1 + 2) = MEMORY[0x277D84F90];
  *(a1 + 3) = v7;
  return result;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.init(identifier:name:description_p:parameters:sampleInvocations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v16 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  v17 = *(v16 + 28);
  v18 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v18 - 8) + 56))(&a8[v17], 1, 1, v18);
  v19 = &a8[*(v16 + 32)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = sub_20E05EC5C(a1, &a8[v17], &qword_27C869B00, &unk_20E346240);
  *a8 = a2;
  *(a8 + 1) = a3;
  *v19 = a4;
  *(v19 + 1) = a5;
  *(a8 + 2) = a6;
  *(a8 + 3) = a7;
  return result;
}

uint64_t sub_20E2352E8@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  v3 = a1(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E2353DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, char *a5@<X8>)
{
  v9 = a4(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v11 - 8) + 56))(&a5[v10], 1, 1, v11);
  v12 = *(v9 + 24);
  v13 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v13 - 8) + 56))(&a5[v12], 1, 1, v13);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  sub_20E05EC5C(a1, &a5[v10], &qword_27C869B00, &unk_20E346240);
  *a5 = a2;
  return sub_20E05EC5C(a3, &a5[v12], &qword_27C868A20, &qword_20E345F10);
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.init()@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.init(persistState:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = a1;
  return result;
}

void ToolKitProtoSystemToolProtocol.IntentSideEffect.intentSideEffectKind.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 5);
  *(a1 + 4) = *(v1 + 4);
  *a1 = v2;
  *(a1 + 5) = v3;
}

int *ToolKitProtoSystemToolProtocol.IntentSideEffect.intentSideEffectKind.setter(int *result)
{
  v2 = *result;
  v3 = *(result + 5);
  *(v1 + 4) = *(result + 4);
  *v1 = v2;
  *(v1 + 5) = v3;
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.IntentSideEffect.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 4) = 256;
  *a1 = 0;
  type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t static ToolKitProtoSystemToolProtocol.ToolKitProtoIntentSideEffectKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20E235C98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t ToolKitProtoToolDefinition.Version1.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.parameters.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.categories.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.searchKeywords.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.requirements.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.flags.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.sampleInvocations.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.systemProtocols.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.hiddenParameters.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.visibilityFlags.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.outputResultName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 72));

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.outputResultName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 72));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionSummary.getter()
{
  v1 = *(v0 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 80));

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionSummary.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 80));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

LighthouseDataProcessor::ToolKitProtoToolDefinition::Version1::ToolType_optional __swiftcall ToolKitProtoToolDefinition.Version1.ToolType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E236A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F30C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

LighthouseDataProcessor::ToolKitProtoToolDefinition::Version1::Flag_optional __swiftcall ToolKitProtoToolDefinition.Version1.Flag.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 7)
  {
    if (rawValue > 31)
    {
      if (rawValue == 32)
      {
        *v1 = 6;
        return rawValue;
      }

      if (rawValue == 64)
      {
        *v1 = 7;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == 8)
      {
        *v1 = 4;
        return rawValue;
      }

      if (rawValue == 16)
      {
        *v1 = 5;
        return rawValue;
      }
    }

LABEL_20:
    *v1 = 8;
    return rawValue;
  }

  if (rawValue > 1)
  {
    if (rawValue == 2)
    {
      *v1 = 2;
      return rawValue;
    }

    if (rawValue == 4)
    {
      *v1 = 3;
      return rawValue;
    }

    goto LABEL_20;
  }

  if (!rawValue)
  {
    *v1 = 0;
    return rawValue;
  }

  if (rawValue != 1)
  {
    goto LABEL_20;
  }

  *v1 = 1;
  return rawValue;
}

uint64_t sub_20E236C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F2B8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E236C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F264();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E236CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F210();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.relationships.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.description_p.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.description_p.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

LighthouseDataProcessor::ToolKitProtoToolDefinition::Version1::Parameter::ParameterFlags_optional __swiftcall ToolKitProtoToolDefinition.Version1.Parameter.ParameterFlags.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E236F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F1BC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan.values.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_20E237468@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_20E2374CC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  a3(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  *(a1 + 7) = 0;
  *(a1 + 8) = 0;
  v3 = *(v2 + 40);
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v6 = MEMORY[0x277D84F90];
  *(a1 + 4) = MEMORY[0x277D84F90];
  *(a1 + 5) = v6;
  *(a1 + 6) = v6;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.init(key:name:description_p:valueType:relationships:sampleInvocations:flags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0) + 40);
  v19 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 7) = a5;
  *(a9 + 8) = a6;
  result = sub_20E05EC5C(a7, &a9[v18], &qword_27C863C48, &qword_20E323F30);
  *(a9 + 4) = a8;
  *(a9 + 5) = a10;
  *(a9 + 6) = a11;
  return result;
}

LighthouseDataProcessor::ToolKitProtoToolDefinition::Version1::ToolIcon::ToolSymbolIconStyle_optional __swiftcall ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIconStyle.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20E237BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F168();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.foreground.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.foreground.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.background.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.background.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.init(name:style:foreground:background:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a3;
  type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = v15;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Deprecation.replacedByToolID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.Deprecation.replacedByToolID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_20E23813C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  a2[2] = 0;
  a2[3] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_20E23819C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  a5(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 100);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 100);
  v4 = sub_20E3221C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v3 = v2[17];
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = (a1 + v2[18]);
  *v5 = 0;
  v5[1] = 0;
  v6 = v2[19];
  v7 = type metadata accessor for ToolKitProtoAppDefinition(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = (a1 + v2[20]);
  *v8 = 0;
  v8[1] = 0;
  v9 = v2[21];
  v10 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = v2[22];
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v2[23];
  v14 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a1 + v13, 1, 1, v14);
  v15(a1 + v2[24], 1, 1, v14);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  v17 = MEMORY[0x277D84F90];
  *(a1 + 40) = MEMORY[0x277D84F90];
  *(a1 + 48) = v17;
  *(a1 + 56) = v17;
  *(a1 + 64) = v17;
  *(a1 + 72) = v17;
  *(a1 + 80) = 0;
  *(a1 + 88) = v17;
  *(a1 + 96) = v17;
  *(a1 + 104) = v17;
  *(a1 + 112) = v17;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.init(id:name:toolType:parameters:outputType:outputResultName:sourceApplication:descriptionSummary:categories:searchKeywords:deprecationDefinition:requirements:flags:authenticationPolicy:sampleInvocations:systemProtocols:customIcon:hiddenParameters:sourceContainer:attributionContainer:visibilityFlags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v44 = *a5;
  v51 = *a19;
  v27 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v28 = v27[17];
  v43 = v28;
  v29 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v29 - 8) + 56))(a9 + v28, 1, 1, v29);
  v30 = v27[19];
  v42 = (a9 + v27[18]);
  v31 = type metadata accessor for ToolKitProtoAppDefinition(0);
  (*(*(v31 - 8) + 56))(a9 + v30, 1, 1, v31);
  v32 = v27[21];
  v33 = (a9 + v27[20]);
  v34 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  (*(*(v34 - 8) + 56))(a9 + v32, 1, 1, v34);
  v35 = v27[22];
  v36 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  (*(*(v36 - 8) + 56))(a9 + v35, 1, 1, v36);
  v37 = v27[23];
  v38 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v39 = *(*(v38 - 8) + 56);
  v39(a9 + v37, 1, 1, v38);
  v40 = v27[24];
  v39(a9 + v40, 1, 1, v38);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v44;
  *(a9 + 40) = a6;
  sub_20E05EC5C(a7, a9 + v43, &qword_27C863C48, &qword_20E323F30);
  *v42 = a8;
  v42[1] = a10;
  sub_20E05EC5C(a11, a9 + v30, &qword_27C869D28, &qword_20E346350);
  *v33 = a12;
  v33[1] = a13;
  *(a9 + 48) = a14;
  *(a9 + 56) = a15;
  sub_20E05EC5C(a16, a9 + v32, &qword_27C869D30, &qword_20E346358);
  *(a9 + 64) = a17;
  *(a9 + 72) = a18;
  *(a9 + 80) = v51;
  *(a9 + 88) = a20;
  *(a9 + 96) = a21;
  sub_20E05EC5C(a22, a9 + v35, &qword_27C869D38, &qword_20E346360);
  *(a9 + 104) = a23;
  sub_20E05EC5C(a24, a9 + v37, &qword_27C869D40, &qword_20E346368);
  result = sub_20E05EC5C(a25, a9 + v40, &qword_27C869D40, &qword_20E346368);
  *(a9 + 112) = a26;
  return result;
}

uint64_t ToolKitProtoAppDefinition.bundleID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ToolKitProtoAppDefinition.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ToolKitProtoAppDefinition.bundleVersion.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ToolKitProtoAppDefinition.bundleVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ToolKitProtoAppDefinition.teamID.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ToolKitProtoAppDefinition.teamID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_20E238B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F114();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoAppDefinition.Device.deviceKind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_20E040B60(v2, v3);
}

uint64_t ToolKitProtoAppDefinition.Device.deviceKind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_20E040B74(*v1, v1[1]);
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t sub_20E238D18@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 44);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E238DB4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 44);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ToolKitProtoAppDefinition.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for ToolKitProtoAppDefinition(0) + 40);
  v3 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  (*(*(v3 - 8) + 56))(a1 + v2, 1, 1, v3);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  return result;
}

uint64_t ToolKitProtoAppDefinition.init(id:name:bundleID:bundleVersion:teamID:device:origin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  v24 = *a13;
  v19 = *(type metadata accessor for ToolKitProtoAppDefinition(0) + 40);
  v20 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  result = sub_20E05EC5C(a12, a9 + v19, &qword_27C869D50, &qword_20E346388);
  *(a9 + 80) = v24;
  return result;
}

uint64_t sub_20E2391B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F0C0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E239218(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F06C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_20E239324@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_20E346220;
  a1(0);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t ToolKitProtoContainerDefinition.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = *(v2 + 40);
  v4 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  return result;
}

uint64_t ToolKitProtoContainerDefinition.init(name:containerID:bundleVersion:containerType:teamID:device:origin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12)
{
  v18 = *a7;
  v23 = *a12;
  v19 = *(type metadata accessor for ToolKitProtoContainerDefinition(0) + 40);
  v20 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 32) = v18;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  result = sub_20E05EC5C(a11, a9 + v19, &qword_27C869D58, &qword_20E346390);
  *(a9 + 33) = v23;
  return result;
}

uint64_t ToolKitProtoTypeDisplayRepresentation.numericFormat.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ToolKitProtoTypeDisplayRepresentation.numericFormat.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ToolKitProtoTypeDisplayRepresentation.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  a1[3] = 0;
  a1[4] = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t ToolKitProtoTypeDisplayRepresentation.init(name:numericFormat:synonyms:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[3] = a3;
  a6[4] = a4;
  a6[2] = a5;
  return result;
}

uint64_t ToolKitProtoPluginModelData.value.getter()
{
  v1 = *v0;
  sub_20E05E834(*v0, *(v0 + 8));
  return v1;
}

uint64_t ToolKitProtoPluginModelData.value.setter(uint64_t a1, uint64_t a2)
{
  result = sub_20E05E888(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

double sub_20E2398C8@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = 0.0;
  *a2 = xmmword_20E326350;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  return result;
}

double sub_20E239C80@<D0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  a1(0);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = 0.0;
  *a2 = xmmword_20E326350;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.tintColorData.getter()
{
  v1 = *(v0 + 16);
  sub_20E047C8C(v1, *(v0 + 24));
  return v1;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.tintColorData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_20E047D10(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.configurationData.getter()
{
  v1 = *(v0 + 32);
  sub_20E047C8C(v1, *(v0 + 40));
  return v1;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.configurationData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_20E047D10(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = xmmword_20E323EA0;
  *(a1 + 32) = xmmword_20E323EA0;
  type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.init(name:tintColorData:configurationData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *(a7 + 1) = xmmword_20E323EA0;
  *(a7 + 2) = xmmword_20E323EA0;
  type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  sub_20E047D10(a7[2], a7[3]);
  a7[2] = a3;
  a7[3] = a4;
  result = sub_20E047D10(a7[4], a7[5]);
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v3 = v2[6];
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[8];
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = v2[9];
  v10 = type metadata accessor for ToolKitProtoPluginModelData(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = MEMORY[0x277D84F90];
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.init(title:subtitle:altText:image:synonyms:snippetPluginModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v14 = v13[6];
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  (*(*(v15 - 8) + 56))(&a8[v14], 1, 1, v15);
  v16 = v13[7];
  v17 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  (*(*(v17 - 8) + 56))(&a8[v16], 1, 1, v17);
  v18 = v13[8];
  v19 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  (*(*(v19 - 8) + 56))(&a8[v18], 1, 1, v19);
  v20 = v13[9];
  v21 = type metadata accessor for ToolKitProtoPluginModelData(0);
  (*(*(v21 - 8) + 56))(&a8[v20], 1, 1, v21);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a8 = a1;
  *(a8 + 1) = a2;
  sub_20E05EC5C(a3, &a8[v14], &qword_27C869D60, &qword_20E346398);
  sub_20E05EC5C(a4, &a8[v16], &qword_27C869D68, &qword_20E3463A0);
  sub_20E05EC5C(a5, &a8[v18], &qword_27C869D70, &qword_20E3463A8);
  *(a8 + 2) = a6;
  return sub_20E05EC5C(a7, &a8[v20], &qword_27C869D78, &qword_20E3463B0);
}

uint64_t sub_20E23AA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E24F018();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoCoercionDefinition.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for ToolKitProtoCoercionDefinition(0) + 20);
  v3 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoCoercionDefinition.init(direction:typeInstance:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  v6 = *(type metadata accessor for ToolKitProtoCoercionDefinition(0) + 20);
  v7 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = v5;
  return sub_20E05EC5C(a2, &a3[v6], &qword_27C863C48, &qword_20E323F30);
}

BOOL _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV0deF13PrimitiveKindO2eeoiySbAE_AEtFZ_0(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case 0x17:
      if (v2 != 23)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x18:
      if (v2 != 24)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x19:
      if (v2 != 25)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1A:
      if (v2 != 26)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1B:
      if (v2 != 27)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1C:
      if (v2 != 28)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1D:
      if (v2 != 29)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1E:
      if (v2 != 30)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1F:
      if (v2 != 31)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x20:
      if (v2 != 32)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x21:
      if (v2 != 33)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x22:
      if (v2 != 34)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x23:
      if (v2 != 35)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x24:
      if (v2 != 36)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x25:
      if (v2 != 37)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x26:
      if (v2 != 38)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x27:
      if (v2 != 39)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x28:
      if (v2 != 40)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    default:
      if ((v2 - 23) < 0x12)
      {
LABEL_40:
        result = 0;
      }

      else
      {
        result = *a1 == v2;
      }

      break;
  }

  return result;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD13SummaryStringV0deF13ComponentKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      v6 = *a1;
      v7 = v2;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    sub_20E19591C(*a2, *(a2 + 8));
    sub_20E19591C(v3, v2);
    sub_20E19593C(v3, v2);
    sub_20E19593C(v5, v4);
    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *a1;
  v7 = v2;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v11 = sub_20E322D60();
    sub_20E19591C(v5, v4);
    sub_20E19591C(v3, v2);
    sub_20E19593C(v3, v2);
    sub_20E19593C(v5, v4);
    return v11 & 1;
  }

LABEL_15:
  sub_20E19591C(v6, v7);
  sub_20E19591C(v3, v2);
  sub_20E19593C(v3, v2);
  sub_20E19593C(v3, v2);
  return 1;
}

uint64_t sub_20E23B1C4(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_20E322D60();
}

uint64_t _s23LighthouseDataProcessor45ToolKitProtoAssistantTypeSchemaDefinitionKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v27 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A480, &qword_20E34A100);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_20E24F914(a1, &v27 - v18, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  sub_20E24F914(a2, &v19[v20], type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E24F914(v19, v13, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E24F8AC(&v19[v20], v6, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
      v21 = static ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.== infix(_:_:)(v13, v6);
      sub_20E24F84C(v6, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
      v22 = v13;
      v23 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration;
LABEL_9:
      sub_20E24F84C(v22, v23);
      sub_20E24F84C(v19, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
      return v21 & 1;
    }

    v24 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration;
    v25 = v13;
  }

  else
  {
    sub_20E24F914(v19, v15, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_20E24F8AC(&v19[v20], v9, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
      v21 = static ToolKitProtoAssistantTypeSchemaDefinition.Entity.== infix(_:_:)(v15, v9);
      sub_20E24F84C(v9, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
      v22 = v15;
      v23 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity;
      goto LABEL_9;
    }

    v24 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity;
    v25 = v15;
  }

  sub_20E24F84C(v25, v24);
  sub_20E04875C(v19, &qword_27C86A480, &qword_20E34A100);
  v21 = 0;
  return v21 & 1;
}

uint64_t _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV5ImageV0deF10StaticKindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v32 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = (&v32 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A450, &qword_20E34A0D0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v32 - v18;
  v20 = (&v32 + *(v17 + 56) - v18);
  sub_20E24F914(a1, &v32 - v18, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  sub_20E24F914(a2, v20, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_20E24F914(v19, v15, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    v23 = *v15;
    v24 = v15[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      v30 = *v20;
      v29 = v20[1];
      v22 = sub_20E15F7B0(v23, v24, v30, v29);
      sub_20E05E888(v30, v29);
      sub_20E05E888(v23, v24);
      goto LABEL_19;
    }

    sub_20E05E888(v23, v24);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_20E24F914(v19, v13, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E24F8AC(v20, v6, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
      v22 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV5ImageV6StaticV6SymbolV2eeoiySbAI_AItFZ_0(v13, v6);
      sub_20E24F84C(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
      sub_20E24F84C(v13, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
LABEL_19:
      sub_20E24F84C(v19, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
      return v22 & 1;
    }

    sub_20E24F84C(v13, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    goto LABEL_16;
  }

  sub_20E24F914(v19, v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  v26 = *v10;
  v25 = v10[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {

LABEL_16:
    sub_20E04875C(v19, &qword_27C86A450, &qword_20E34A0D0);
    goto LABEL_17;
  }

  if (v26 == *v20 && v25 == v20[1])
  {

    goto LABEL_21;
  }

  v28 = sub_20E322D60();

  if (v28)
  {
LABEL_21:
    sub_20E24F84C(v19, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    v22 = 1;
    return v22 & 1;
  }

  sub_20E24F84C(v19, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
LABEL_17:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV0deF9ImageKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  MEMORY[0x28223BE20](v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A448, &qword_20E34A0C8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v25 - v17;
  v19 = *(v16 + 56);
  sub_20E24F914(a1, &v25 - v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  sub_20E24F914(a2, &v18[v19], type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20E24F914(v18, v14, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_20E24F8AC(&v18[v19], v8, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      if (sub_20E15F7B0(*v14, *(v14 + 1), *v8, *(v8 + 1)))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        v23 = sub_20E322850();
        sub_20E24F84C(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
        if (v23)
        {
          sub_20E24F84C(v14, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
          sub_20E24F84C(v18, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
          v20 = 1;
          return v20 & 1;
        }
      }

      else
      {
        sub_20E24F84C(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      }

      sub_20E24F84C(v14, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      sub_20E24F84C(v18, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
LABEL_13:
      v20 = 0;
      return v20 & 1;
    }

    v21 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
    v22 = v14;
LABEL_7:
    sub_20E24F84C(v22, v21);
    sub_20E04875C(v18, &qword_27C86A448, &qword_20E34A0C8);
    goto LABEL_13;
  }

  sub_20E24F914(v18, v12, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static;
    v22 = v12;
    goto LABEL_7;
  }

  sub_20E24F8AC(&v18[v19], v6, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
  v20 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV5ImageV6StaticV2eeoiySbAG_AGtFZ_0(v12, v6);
  sub_20E24F84C(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
  sub_20E24F84C(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
  sub_20E24F84C(v18, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV0deF11AltTextKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(0);
  MEMORY[0x28223BE20](v29);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  MEMORY[0x28223BE20](v28);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A458, &qword_20E34A0D8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28 - v16;
  v18 = *(v15 + 56);
  sub_20E24F914(a1, &v28 - v16, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  sub_20E24F914(a2, &v17[v18], type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E24F914(v17, v11, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E24F8AC(&v17[v18], v5, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
      v19 = *v11 == *v5 && v11[1] == v5[1];
      if (v19 || (sub_20E322D60() & 1) != 0)
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        if (sub_20E322850())
        {
          sub_20E24F84C(v5, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
          v20 = v11;
          v21 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static;
LABEL_17:
          sub_20E24F84C(v20, v21);
          sub_20E24F84C(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
          return 1;
        }
      }

      sub_20E24F84C(v5, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
      v26 = v11;
      v27 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static;
LABEL_21:
      sub_20E24F84C(v26, v27);
      sub_20E24F84C(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
      return 0;
    }

    v22 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static;
    v23 = v11;
  }

  else
  {
    sub_20E24F914(v17, v13, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_20E24F8AC(&v17[v18], v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      if (sub_20E15F7B0(*v13, *(v13 + 1), *v7, *(v7 + 1)))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        v24 = sub_20E322850();
        sub_20E24F84C(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
        if (v24)
        {
          v21 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
          v20 = v13;
          goto LABEL_17;
        }
      }

      else
      {
        sub_20E24F84C(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      }

      v27 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
      v26 = v13;
      goto LABEL_21;
    }

    v22 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
    v23 = v13;
  }

  sub_20E24F84C(v23, v22);
  sub_20E04875C(v17, &qword_27C86A458, &qword_20E34A0D8);
  return 0;
}

uint64_t _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV0defG4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v115 = a2;
  v116 = a1;
  v2 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  MEMORY[0x28223BE20](v2 - 8);
  v107 = (&v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v106 = (&v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v105 = (&v94 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v104 = (&v94 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v103 = (&v94 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v102 = (&v94 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v101 = (&v94 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v100 = (&v94 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v99 = (&v94 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v98 = (&v94 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v97 = (&v94 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v96 = (&v94 - v26);
  MEMORY[0x28223BE20](v25);
  v95 = (&v94 - v27);
  v28 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v29 = MEMORY[0x28223BE20](v28);
  v114 = (&v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x28223BE20](v29);
  v113 = (&v94 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v112 = (&v94 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v111 = (&v94 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v110 = (&v94 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v109 = (&v94 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v108 = (&v94 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = (&v94 - v44);
  v46 = MEMORY[0x28223BE20](v43);
  v48 = (&v94 - v47);
  v49 = MEMORY[0x28223BE20](v46);
  v51 = (&v94 - v50);
  v52 = MEMORY[0x28223BE20](v49);
  v54 = (&v94 - v53);
  v55 = MEMORY[0x28223BE20](v52);
  v57 = (&v94 - v56);
  MEMORY[0x28223BE20](v55);
  v59 = (&v94 - v58);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A4A0, &qword_20E34A120);
  v61 = MEMORY[0x28223BE20](v60 - 8);
  v63 = &v94 - v62;
  v64 = *(v61 + 56);
  sub_20E24F914(v116, &v94 - v62, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  v116 = v64;
  sub_20E24F914(v115, &v63[v64], type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20E24F914(v63, v57, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v84 = v116;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_38;
      }

      v69 = &v63[v84];
      v70 = v96;
      goto LABEL_34;
    case 2u:
      sub_20E24F914(v63, v54, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v79 = v116;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v80 = v97;
        sub_20E24F8AC(&v63[v79], v97, type metadata accessor for ToolKitProtoTypedValue);
        v73 = static ToolKitProtoTypedValue.== infix(_:_:)(v54, v80);
        v74 = type metadata accessor for ToolKitProtoTypedValue;
        sub_20E24F84C(v80, type metadata accessor for ToolKitProtoTypedValue);
        v75 = v54;
        goto LABEL_36;
      }

      v66 = type metadata accessor for ToolKitProtoTypedValue;
      v67 = v54;
      goto LABEL_40;
    case 3u:
      sub_20E24F914(v63, v51, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v81 = v116;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v82 = v98;
        sub_20E24F8AC(&v63[v81], v98, type metadata accessor for ToolKitProtoTypedValue);
        v73 = static ToolKitProtoTypedValue.== infix(_:_:)(v51, v82);
        v74 = type metadata accessor for ToolKitProtoTypedValue;
        sub_20E24F84C(v82, type metadata accessor for ToolKitProtoTypedValue);
        v75 = v51;
        goto LABEL_36;
      }

      v66 = type metadata accessor for ToolKitProtoTypedValue;
      v67 = v51;
      goto LABEL_40;
    case 4u:
      sub_20E24F914(v63, v48, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v71 = v116;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v72 = v99;
        sub_20E24F8AC(&v63[v71], v99, type metadata accessor for ToolKitProtoTypedValue);
        v73 = static ToolKitProtoTypedValue.== infix(_:_:)(v48, v72);
        v74 = type metadata accessor for ToolKitProtoTypedValue;
        sub_20E24F84C(v72, type metadata accessor for ToolKitProtoTypedValue);
        v75 = v48;
        goto LABEL_36;
      }

      v66 = type metadata accessor for ToolKitProtoTypedValue;
      v67 = v48;
      goto LABEL_40;
    case 5u:
      sub_20E24F914(v63, v45, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v85 = v116;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v86 = v100;
        sub_20E24F8AC(&v63[v85], v100, type metadata accessor for ToolKitProtoTypedValue);
        v73 = static ToolKitProtoTypedValue.== infix(_:_:)(v45, v86);
        sub_20E24F84C(v86, type metadata accessor for ToolKitProtoTypedValue);
        v75 = v45;
        v87 = type metadata accessor for ToolKitProtoTypedValue;
        goto LABEL_37;
      }

      v66 = type metadata accessor for ToolKitProtoTypedValue;
      v67 = v45;
      goto LABEL_40;
    case 6u:
      v57 = v108;
      sub_20E24F914(v63, v108, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v88 = v116;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_38;
      }

      v69 = &v63[v88];
      v70 = v101;
      goto LABEL_34;
    case 7u:
      v57 = v109;
      sub_20E24F914(v63, v109, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v83 = v116;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_38;
      }

      v69 = &v63[v83];
      v70 = v102;
      goto LABEL_34;
    case 8u:
      v57 = v110;
      sub_20E24F914(v63, v110, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v90 = v116;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_38;
      }

      v69 = &v63[v90];
      v70 = v103;
      goto LABEL_34;
    case 9u:
      v57 = v111;
      sub_20E24F914(v63, v111, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v78 = v116;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_38;
      }

      v69 = &v63[v78];
      v70 = v104;
      goto LABEL_34;
    case 0xAu:
      v57 = v112;
      sub_20E24F914(v63, v112, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v89 = v116;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_38;
      }

      v69 = &v63[v89];
      v70 = v105;
      goto LABEL_34;
    case 0xBu:
      v57 = v113;
      sub_20E24F914(v63, v113, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v68 = v116;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
LABEL_38:
        v91 = type metadata accessor for ToolKitProtoTypedValue;
        goto LABEL_39;
      }

      v69 = &v63[v68];
      v70 = v106;
LABEL_34:
      sub_20E24F8AC(v69, v70, type metadata accessor for ToolKitProtoTypedValue);
      v73 = static ToolKitProtoTypedValue.== infix(_:_:)(v57, v70);
      v77 = type metadata accessor for ToolKitProtoTypedValue;
      goto LABEL_35;
    case 0xCu:
      v57 = v114;
      sub_20E24F914(v63, v114, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v76 = v116;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v91 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair;
LABEL_39:
        v66 = v91;
        v67 = v57;
        goto LABEL_40;
      }

      v70 = v107;
      sub_20E24F8AC(&v63[v76], v107, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
      v73 = static ToolKitProtoComparisonPredicate.Comparison.Pair.== infix(_:_:)(v57, v70);
      v77 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair;
LABEL_35:
      v74 = v77;
      sub_20E24F84C(v70, v77);
      v75 = v57;
      goto LABEL_36;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_27;
      }

      goto LABEL_41;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_41;
      }

      goto LABEL_27;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_41;
      }

LABEL_27:
      sub_20E24F84C(v63, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v73 = 1;
      return v73 & 1;
    default:
      sub_20E24F914(v63, v59, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v65 = v116;
      if (swift_getEnumCaseMultiPayload())
      {
        v66 = type metadata accessor for ToolKitProtoTypedValue;
        v67 = v59;
LABEL_40:
        sub_20E24F84C(v67, v66);
LABEL_41:
        sub_20E04875C(v63, &qword_27C86A4A0, &qword_20E34A120);
        v73 = 0;
      }

      else
      {
        v93 = v95;
        sub_20E24F8AC(&v63[v65], v95, type metadata accessor for ToolKitProtoTypedValue);
        v73 = static ToolKitProtoTypedValue.== infix(_:_:)(v59, v93);
        v74 = type metadata accessor for ToolKitProtoTypedValue;
        sub_20E24F84C(v93, type metadata accessor for ToolKitProtoTypedValue);
        v75 = v59;
LABEL_36:
        v87 = v74;
LABEL_37:
        sub_20E24F84C(v75, v87);
        sub_20E24F84C(v63, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      }

      return v73 & 1;
  }
}

uint64_t _s23LighthouseDataProcessor34ToolKitProtoSystemTypeProtocolKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v36 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(0);
  MEMORY[0x28223BE20](v36);
  v39 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(0);
  MEMORY[0x28223BE20](v37);
  v38 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = (&v36 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A4D8, &qword_20E34A158);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v36 - v20;
  v22 = *(v19 + 56);
  sub_20E24F914(a1, &v36 - v20, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  sub_20E24F914(a2, &v21[v22], type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20E24F914(v21, v15, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v23 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema;
        v24 = v15;
        goto LABEL_38;
      }

      sub_20E24F8AC(&v21[v22], v7, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
      v29 = static ToolKitProtoSystemTypeProtocol.AssistantSchema.== infix(_:_:)(v15, v7);
      sub_20E24F84C(v7, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
      sub_20E24F84C(v15, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
      sub_20E24F84C(v21, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      return v29 & 1;
    case 2u:
      sub_20E24F914(v21, v12, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v23 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable;
        v24 = v12;
        goto LABEL_38;
      }

      v25 = v39;
      sub_20E24F8AC(&v21[v22], v39, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
      if (sub_20E1494E0(*v12, *v25))
      {
        sub_20E3221C0();
        sub_20E1EF2E8();
        v26 = sub_20E322850();
        sub_20E24F84C(v25, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
        if (v26)
        {
          v27 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable;
          v28 = v12;
          goto LABEL_48;
        }
      }

      else
      {
        sub_20E24F84C(v25, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
      }

      v34 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable;
      v35 = v12;
      goto LABEL_55;
    case 3u:
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 4u:
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 5u:
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 6u:
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 7u:
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    default:
      sub_20E24F914(v21, v17, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      if (swift_getEnumCaseMultiPayload())
      {
        v23 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity;
        v24 = v17;
LABEL_38:
        sub_20E24F84C(v24, v23);
LABEL_39:
        sub_20E04875C(v21, &qword_27C86A4D8, &qword_20E34A158);
        goto LABEL_40;
      }

      v30 = v38;
      sub_20E24F8AC(&v21[v22], v38, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
      v31 = *v17 == *v30 && v17[1] == v30[1];
      if (!v31 && (sub_20E322D60() & 1) == 0)
      {
        sub_20E24F84C(v30, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
LABEL_54:
        v34 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity;
        v35 = v17;
LABEL_55:
        sub_20E24F84C(v35, v34);
        sub_20E24F84C(v21, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
LABEL_40:
        v29 = 0;
        return v29 & 1;
      }

      sub_20E3221C0();
      sub_20E1EF2E8();
      v32 = sub_20E322850();
      sub_20E24F84C(v30, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
      if ((v32 & 1) == 0)
      {
        goto LABEL_54;
      }

      v27 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity;
      v28 = v17;
LABEL_48:
      sub_20E24F84C(v28, v27);
LABEL_49:
      sub_20E24F84C(v21, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      v29 = 1;
      return v29 & 1;
  }
}

uint64_t _s23LighthouseDataProcessor34ToolKitProtoRuntimeRequirementKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v37 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  MEMORY[0x28223BE20](v37);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v39 = &v37 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A488, &qword_20E34A108);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v37 - v23;
  v25 = *(v22 + 56);
  sub_20E24F914(a1, &v37 - v23, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  sub_20E24F914(v40, &v24[v25], type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_20E24F914(v24, v18, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v27 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability;
        v28 = v18;
        goto LABEL_22;
      }

      sub_20E24F8AC(&v24[v25], v6, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
      v32 = static ToolKitProtoRuntimeRequirement.DeviceCapability.== infix(_:_:)(v18, v6);
      sub_20E24F84C(v6, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
      v33 = v18;
      v34 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability;
    }

    else
    {
      sub_20E24F914(v24, v20, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      if (swift_getEnumCaseMultiPayload())
      {
        v27 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation;
        v28 = v20;
LABEL_22:
        sub_20E24F84C(v28, v27);
        goto LABEL_23;
      }

      sub_20E24F8AC(&v24[v25], v9, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
      v32 = static ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.== infix(_:_:)(v20, v9);
      sub_20E24F84C(v9, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
      v33 = v20;
      v34 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation;
    }

    sub_20E24F84C(v33, v34);
    sub_20E24F84C(v24, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    return v32 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v29 = v39;
    sub_20E24F914(v24, v39, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v27 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag;
      v28 = v29;
      goto LABEL_22;
    }

    v30 = &v24[v25];
    v31 = v38;
    sub_20E24F8AC(v30, v38, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    if ((*v29 != *v31 || *(v29 + 8) != *(v31 + 8)) && (sub_20E322D60() & 1) == 0 || (*(v29 + 16) != *(v31 + 16) || *(v29 + 24) != *(v31 + 24)) && (sub_20E322D60() & 1) == 0 || *(v29 + 32) != *(v31 + 32) || (sub_20E3221C0(), sub_20E1EF2E8(), (sub_20E322850() & 1) == 0))
    {
      sub_20E24F84C(v31, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
      sub_20E24F84C(v29, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
      sub_20E24F84C(v24, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      goto LABEL_24;
    }

    sub_20E24F84C(v31, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    sub_20E24F84C(v29, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    sub_20E24F84C(v24, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    v32 = 1;
  }

  else
  {
    sub_20E24F914(v24, v13, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
LABEL_23:
      sub_20E04875C(v24, &qword_27C86A488, &qword_20E34A108);
LABEL_24:
      v32 = 0;
      return v32 & 1;
    }

    v35 = *v13 ^ v24[v25];
    sub_20E24F84C(v24, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    v32 = v35 ^ 1;
  }

  return v32 & 1;
}

BOOL _s23LighthouseDataProcessor30ToolKitProtoRuntimeRequirementV0deF20DeviceCapabilityKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A490, &qword_20E34A110);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v11 + 56);
  sub_20E24F914(a1, &v18 - v12, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  sub_20E24F914(a2, &v13[v14], type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  sub_20E24F8AC(v13, v9, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  sub_20E24F8AC(&v13[v14], v7, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  v15 = *v9 == *v7 && *(v9 + 1) == *(v7 + 1);
  v16 = 0;
  if (v15 || (sub_20E322D60()) && v9[16] == v7[16])
  {
    sub_20E3221C0();
    sub_20E1EF2E8();
    if (sub_20E322850())
    {
      v16 = 1;
    }
  }

  sub_20E24F84C(v7, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  sub_20E24F84C(v9, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  return v16;
}

uint64_t _s23LighthouseDataProcessor42ToolKitProtoContentItemClassDescriptorKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(0);
  MEMORY[0x28223BE20](v40);
  v41 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(0);
  MEMORY[0x28223BE20](v39);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v38 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = (&v38 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A4B0, &qword_20E34A130);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v38 - v18;
  v20 = (&v38 + *(v17 + 56) - v18);
  sub_20E24F914(a1, &v38 - v18, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  sub_20E24F914(a2, v20, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20E24F914(v19, v13, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_20E24F8AC(v20, v6, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
        v22 = *v13 == *v6 && v13[1] == v6[1];
        if (v22 || (sub_20E322D60() & 1) != 0)
        {
          v23 = v13[2] == v6[2] && v13[3] == v6[3];
          if (v23 || (sub_20E322D60() & 1) != 0)
          {
            sub_20E3221C0();
            sub_20E1EF2E8();
            if (sub_20E322850())
            {
              v24 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass;
              sub_20E24F84C(v6, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
              v25 = v13;
LABEL_31:
              sub_20E24F84C(v25, v24);
LABEL_49:
              sub_20E24F84C(v19, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
              return 1;
            }
          }
        }

        v35 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass;
        sub_20E24F84C(v6, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
        v36 = v13;
LABEL_44:
        sub_20E24F84C(v36, v35);
LABEL_45:
        sub_20E24F84C(v19, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
        return 0;
      }

      v31 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass;
      v32 = v13;
    }

    else
    {
      sub_20E24F914(v19, v10, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v28 = v41;
        sub_20E24F8AC(v20, v41, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
        v29 = *v10 == *v28 && v10[1] == v28[1];
        if (v29 || (sub_20E322D60() & 1) != 0)
        {
          v30 = v10[2] == v28[2] && v10[3] == v28[3];
          if (v30 || (sub_20E322D60() & 1) != 0)
          {
            sub_20E3221C0();
            sub_20E1EF2E8();
            if (sub_20E322850())
            {
              v24 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass;
              sub_20E24F84C(v28, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
              v25 = v10;
              goto LABEL_31;
            }
          }
        }

        v35 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass;
        sub_20E24F84C(v28, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
        v36 = v10;
        goto LABEL_44;
      }

      v31 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass;
      v32 = v10;
    }

    sub_20E24F84C(v32, v31);
  }

  else
  {
    sub_20E24F914(v19, v15, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    v27 = *v15;
    v26 = v15[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v27 == *v20 && v26 == v20[1])
      {

        goto LABEL_49;
      }

      v34 = sub_20E322D60();

      if (v34)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }
  }

  sub_20E04875C(v19, &qword_27C86A4B0, &qword_20E34A130);
  return 0;
}

uint64_t _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV0G0V0defG12TemplateKindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v109 = a2;
  v110 = a1;
  v2 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v101 = (&v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x28223BE20](v3);
  v100 = (&v88 - v6);
  v7 = MEMORY[0x28223BE20](v5);
  v99 = (&v88 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v98 = (&v88 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v97 = (&v88 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v96 = (&v88 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v95 = (&v88 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v94 = (&v88 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v93 = (&v88 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v92 = (&v88 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v91 = (&v88 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v90 = (&v88 - v26);
  MEMORY[0x28223BE20](v25);
  v89 = (&v88 - v27);
  v28 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v29 = MEMORY[0x28223BE20](v28);
  v108 = (&v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x28223BE20](v29);
  v107 = (&v88 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v106 = (&v88 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v105 = (&v88 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v104 = (&v88 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v103 = (&v88 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v102 = (&v88 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = (&v88 - v44);
  v46 = MEMORY[0x28223BE20](v43);
  v48 = (&v88 - v47);
  v49 = MEMORY[0x28223BE20](v46);
  v51 = (&v88 - v50);
  v52 = MEMORY[0x28223BE20](v49);
  v54 = (&v88 - v53);
  v55 = MEMORY[0x28223BE20](v52);
  v57 = (&v88 - v56);
  MEMORY[0x28223BE20](v55);
  v59 = (&v88 - v58);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86A4A8, &qword_20E34A128);
  v61 = MEMORY[0x28223BE20](v60 - 8);
  v63 = &v88 - v62;
  v64 = *(v61 + 56);
  sub_20E24F914(v110, &v88 - v62, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  v110 = v64;
  sub_20E24F914(v109, &v63[v64], type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20E24F914(v63, v57, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v80 = v110;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v81 = v90;
        sub_20E24F8AC(&v63[v80], v90, type metadata accessor for ToolKitProtoTypeInstance);
        v71 = static ToolKitProtoTypeInstance.== infix(_:_:)(v57, v81);
        sub_20E24F84C(v81, type metadata accessor for ToolKitProtoTypeInstance);
        v72 = v57;
        goto LABEL_35;
      }

      v59 = v57;
      goto LABEL_41;
    case 2u:
      sub_20E24F914(v63, v54, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v75 = v110;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v76 = v91;
        sub_20E24F8AC(&v63[v75], v91, type metadata accessor for ToolKitProtoTypeInstance);
        v71 = static ToolKitProtoTypeInstance.== infix(_:_:)(v54, v76);
        sub_20E24F84C(v76, type metadata accessor for ToolKitProtoTypeInstance);
        sub_20E24F84C(v54, type metadata accessor for ToolKitProtoTypeInstance);
        sub_20E24F84C(v63, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
        return v71 & 1;
      }

      v59 = v54;
      goto LABEL_41;
    case 3u:
      sub_20E24F914(v63, v51, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v77 = v110;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v78 = v92;
        sub_20E24F8AC(&v63[v77], v92, type metadata accessor for ToolKitProtoTypeInstance);
        v71 = static ToolKitProtoTypeInstance.== infix(_:_:)(v51, v78);
        sub_20E24F84C(v78, type metadata accessor for ToolKitProtoTypeInstance);
        v72 = v51;
        goto LABEL_35;
      }

      v59 = v51;
      goto LABEL_41;
    case 4u:
      sub_20E24F914(v63, v48, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v69 = v110;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v70 = v93;
        sub_20E24F8AC(&v63[v69], v93, type metadata accessor for ToolKitProtoTypeInstance);
        v71 = static ToolKitProtoTypeInstance.== infix(_:_:)(v48, v70);
        sub_20E24F84C(v70, type metadata accessor for ToolKitProtoTypeInstance);
        v72 = v48;
        goto LABEL_35;
      }

      v59 = v48;
      goto LABEL_41;
    case 5u:
      sub_20E24F914(v63, v45, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v82 = v110;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v83 = v94;
        sub_20E24F8AC(&v63[v82], v94, type metadata accessor for ToolKitProtoTypeInstance);
        v71 = static ToolKitProtoTypeInstance.== infix(_:_:)(v45, v83);
        sub_20E24F84C(v83, type metadata accessor for ToolKitProtoTypeInstance);
        v72 = v45;
LABEL_35:
        sub_20E24F84C(v72, type metadata accessor for ToolKitProtoTypeInstance);
        sub_20E24F84C(v63, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      }

      else
      {
        v59 = v45;
LABEL_41:
        sub_20E24F84C(v59, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_42:
        sub_20E04875C(v63, &qword_27C86A4A8, &qword_20E34A128);
        v71 = 0;
      }

      return v71 & 1;
    case 6u:
      v59 = v102;
      sub_20E24F914(v63, v102, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v84 = v110;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_41;
      }

      v66 = &v63[v84];
      v67 = v95;
      goto LABEL_34;
    case 7u:
      v59 = v103;
      sub_20E24F914(v63, v103, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v79 = v110;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_41;
      }

      v66 = &v63[v79];
      v67 = v96;
      goto LABEL_34;
    case 8u:
      v59 = v104;
      sub_20E24F914(v63, v104, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v86 = v110;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_41;
      }

      v66 = &v63[v86];
      v67 = v97;
      goto LABEL_34;
    case 9u:
      v59 = v105;
      sub_20E24F914(v63, v105, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v74 = v110;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_41;
      }

      v66 = &v63[v74];
      v67 = v98;
      goto LABEL_34;
    case 0xAu:
      v59 = v106;
      sub_20E24F914(v63, v106, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v85 = v110;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_41;
      }

      v66 = &v63[v85];
      v67 = v99;
      goto LABEL_34;
    case 0xBu:
      v59 = v107;
      sub_20E24F914(v63, v107, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v68 = v110;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_41;
      }

      v66 = &v63[v68];
      v67 = v100;
      goto LABEL_34;
    case 0xCu:
      v59 = v108;
      sub_20E24F914(v63, v108, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v73 = v110;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_41;
      }

      v66 = &v63[v73];
      v67 = v101;
      goto LABEL_34;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_27;
      }

      goto LABEL_42;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_42;
      }

      goto LABEL_27;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_42;
      }

LABEL_27:
      sub_20E24F84C(v63, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v71 = 1;
      return v71 & 1;
    default:
      sub_20E24F914(v63, v59, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v65 = v110;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_41;
      }

      v66 = &v63[v65];
      v67 = v89;
LABEL_34:
      sub_20E24F8AC(v66, v67, type metadata accessor for ToolKitProtoTypeInstance);
      v71 = static ToolKitProtoTypeInstance.== infix(_:_:)(v59, v67);
      sub_20E24F84C(v67, type metadata accessor for ToolKitProtoTypeInstance);
      v72 = v59;
      goto LABEL_35;
  }
}