uint64_t _s23LighthouseDataProcessor33TranscriptProtoArchiveViewPayloadV2eeoiySbAC_ACtFZ_0(_BOOL8 *a1, uint64_t *a2)
{
  if (!sub_20E15F7B0(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  v4 = a1[3];
  v5 = a2[3];
  if (v4)
  {
    if (!v5 || (a1[2] != a2[2] || v4 != v5) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (v7 && (a1[4] == a2[4] && v6 == v7 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_14;
    }
  }

  else if (!v7)
  {
LABEL_14:
    type metadata accessor for TranscriptProtoArchiveViewPayload(0);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor21TranscriptProtoUITypeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoUitype(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682C0, &qword_20E33B350);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C865DC0, &unk_20E33C3A0);
  sub_20E0486F4(a2, &v14[v15], &qword_27C865DC0, &unk_20E33C3A0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C865DC0, &unk_20E33C3A0);
LABEL_9:
      type metadata accessor for TranscriptProtoUIType(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C865DC0, &unk_20E33C3A0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoUitype);
LABEL_6:
    sub_20E04875C(v14, &qword_27C8682C0, &qword_20E33B350);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoUitype);
  v18 = _s23LighthouseDataProcessor21TranscriptProtoUitypeO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoUitype);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoUitype);
  sub_20E04875C(v14, &qword_27C865DC0, &unk_20E33C3A0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor30TranscriptProtoValueExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864158, &qword_20E3262A8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868058, &qword_20E33B100);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C864158, &qword_20E3262A8);
  sub_20E0486F4(a2, &v14[v15], &qword_27C864158, &qword_20E3262A8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C864158, &qword_20E3262A8);
LABEL_9:
      type metadata accessor for TranscriptProtoValueExpression(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C864158, &qword_20E3262A8);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoValueExpressionEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C868058, &qword_20E33B100);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoValueExpressionEnum);
  v18 = _s23LighthouseDataProcessor34TranscriptProtoValueExpressionEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoValueExpressionEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoValueExpressionEnum);
  sub_20E04875C(v14, &qword_27C864158, &qword_20E3262A8);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor25TranscriptProtoExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868068, &qword_20E33B110);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C864160, &unk_20E33C410);
  sub_20E0486F4(a2, &v14[v15], &qword_27C864160, &unk_20E33C410);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C864160, &unk_20E33C410);
LABEL_9:
      type metadata accessor for TranscriptProtoExpression(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C864160, &unk_20E33C410);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C868068, &qword_20E33B110);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoExpressionEnum);
  v18 = _s23LighthouseDataProcessor29TranscriptProtoExpressionEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoExpressionEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoExpressionEnum);
  sub_20E04875C(v14, &qword_27C864160, &unk_20E33C410);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoProgramStatementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(0);
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v66 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FE8, &qword_20E33B0A0);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = &v66 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FF0, &qword_20E33B0A8);
  MEMORY[0x28223BE20](v68);
  v71 = &v66 - v8;
  v9 = type metadata accessor for TranscriptProtoExpression(0);
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x28223BE20](v9);
  v72 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864168, &unk_20E33C440);
  MEMORY[0x28223BE20](v11 - 8);
  v73 = &v66 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FF8, &qword_20E33B0B0);
  MEMORY[0x28223BE20](v74);
  v77 = &v66 - v13;
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v66 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v66 - v23;
  v25 = *(v22 + 56);
  v78 = a1;
  sub_20E0486F4(a1, &v66 - v23, &qword_27C8639D0, &unk_20E33C230);
  v79 = a2;
  sub_20E0486F4(a2, &v24[v25], &qword_27C8639D0, &unk_20E33C230);
  v26 = *(v15 + 48);
  if (v26(v24, 1, v14) == 1)
  {
    if (v26(&v24[v25], 1, v14) == 1)
    {
      sub_20E04875C(v24, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_9;
    }

LABEL_6:
    v27 = &qword_27C867F30;
    v28 = &qword_20E33B000;
LABEL_7:
    v29 = v24;
LABEL_15:
    sub_20E04875C(v29, v27, v28);
    goto LABEL_16;
  }

  sub_20E0486F4(v24, v20, &qword_27C8639D0, &unk_20E33C230);
  if (v26(&v24[v25], 1, v14) == 1)
  {
    sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_6;
  }

  sub_20E195B54(&v24[v25], v17, type metadata accessor for TranscriptProtoStatementID);
  v30 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v20, v17);
  sub_20E195C24(v17, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v24, &qword_27C8639D0, &unk_20E33C230);
  if ((v30 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v31 = type metadata accessor for TranscriptProtoProgramStatement(0);
  v32 = v31[5];
  v33 = *(v74 + 48);
  v35 = v77;
  v34 = v78;
  sub_20E0486F4(v78 + v32, v77, &qword_27C864168, &unk_20E33C440);
  v36 = v79;
  sub_20E0486F4(v79 + v32, v35 + v33, &qword_27C864168, &unk_20E33C440);
  v37 = v76;
  v38 = *(v75 + 48);
  if (v38(v35, 1, v76) != 1)
  {
    v39 = v73;
    sub_20E0486F4(v35, v73, &qword_27C864168, &unk_20E33C440);
    if (v38(v35 + v33, 1, v37) != 1)
    {
      v42 = v35 + v33;
      v43 = v72;
      sub_20E195B54(v42, v72, type metadata accessor for TranscriptProtoExpression);
      v44 = _s23LighthouseDataProcessor25TranscriptProtoExpressionV2eeoiySbAC_ACtFZ_0(v39, v43);
      sub_20E195C24(v43, type metadata accessor for TranscriptProtoExpression);
      sub_20E195C24(v39, type metadata accessor for TranscriptProtoExpression);
      sub_20E04875C(v35, &qword_27C864168, &unk_20E33C440);
      if ((v44 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    sub_20E195C24(v39, type metadata accessor for TranscriptProtoExpression);
LABEL_14:
    v27 = &qword_27C867FF8;
    v28 = &qword_20E33B0B0;
    v29 = v35;
    goto LABEL_15;
  }

  if (v38(v35 + v33, 1, v37) != 1)
  {
    goto LABEL_14;
  }

  sub_20E04875C(v35, &qword_27C864168, &unk_20E33C440);
LABEL_19:
  v45 = v31[6];
  v46 = *(v34 + v45);
  v47 = *(v36 + v45);
  if (v46 == 2)
  {
    if (v47 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v47 == 2 || ((v46 ^ v47) & 1) != 0)
  {
    goto LABEL_16;
  }

  v48 = v31[7];
  v49 = *(v34 + v48);
  v50 = *(v36 + v48);
  if (v49 == 2)
  {
    if (v50 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v50 == 2 || ((v49 ^ v50) & 1) != 0)
  {
    goto LABEL_16;
  }

  v51 = v31[8];
  v52 = (v34 + v51);
  v53 = *(v34 + v51 + 4);
  v54 = (v36 + v51);
  v55 = *(v36 + v51 + 4);
  if (v53)
  {
    if (!v55)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*v52 != *v54)
    {
      LOBYTE(v55) = 1;
    }

    if (v55)
    {
      goto LABEL_16;
    }
  }

  v56 = v31[9];
  v57 = *(v68 + 48);
  v58 = v71;
  sub_20E0486F4(v34 + v56, v71, &qword_27C867FE8, &qword_20E33B0A0);
  v59 = v36 + v56;
  v24 = v58;
  sub_20E0486F4(v59, v58 + v57, &qword_27C867FE8, &qword_20E33B0A0);
  v60 = v70;
  v61 = *(v69 + 48);
  if (v61(v58, 1, v70) == 1)
  {
    if (v61(v58 + v57, 1, v60) == 1)
    {
      sub_20E04875C(v58, &qword_27C867FE8, &qword_20E33B0A0);
LABEL_42:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v40 = sub_20E322850();
      return v40 & 1;
    }

    goto LABEL_40;
  }

  v62 = v67;
  sub_20E0486F4(v24, v67, &qword_27C867FE8, &qword_20E33B0A0);
  if (v61(&v24[v57], 1, v60) == 1)
  {
    sub_20E195C24(v62, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);
LABEL_40:
    v27 = &qword_27C867FF0;
    v28 = &qword_20E33B0A8;
    goto LABEL_7;
  }

  v63 = &v24[v57];
  v64 = v66;
  sub_20E195B54(v63, v66, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);
  v65 = sub_20E180718(v62, v64, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);
  sub_20E195C24(v64, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);
  sub_20E195C24(v62, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);
  sub_20E04875C(v24, &qword_27C867FE8, &qword_20E33B0A0);
  if (v65)
  {
    goto LABEL_42;
  }

LABEL_16:
  v40 = 0;
  return v40 & 1;
}

uint64_t _s23LighthouseDataProcessor19TranscriptProtoPlanV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_20E322D60() & 1) == 0 || (sub_20E147778(a1[4], *(a2 + 32), type metadata accessor for TranscriptProtoProgramStatement, type metadata accessor for TranscriptProtoProgramStatement, _s23LighthouseDataProcessor31TranscriptProtoProgramStatementV2eeoiySbAC_ACtFZ_0, type metadata accessor for TranscriptProtoProgramStatement) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = *(a2 + 48);
  if (v6)
  {
    if (!v7 || (a1[5] != *(a2 + 40) || v6 != v7) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    v8 = *(a1 + 56);
    v9 = *(a2 + 56);
    if (v8 == 6)
    {
      if (v9 != 6)
      {
        return 0;
      }
    }

    else if (v9 == 6 || qword_20E33B8D8[v8] != qword_20E33B8D8[v9])
    {
      return 0;
    }

    type metadata accessor for TranscriptProtoPlan(0);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_20E322850() & 1;
  }

  if (!v7)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor062TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestF4ToolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor27TranscriptProtoClientActionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0 || (sub_20E15D148(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_27;
  }

  v14 = a1[5];
  v15 = a2[5];
  if (v14)
  {
    if (!v15 || (a1[4] != a2[4] || v14 != v15) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v15)
  {
    goto LABEL_27;
  }

  v16 = a1[7];
  v17 = a2[7];
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_18;
    }

LABEL_27:
    v24 = 0;
    return v24 & 1;
  }

  if (!v17 || (a1[6] != a2[6] || v16 != v17) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_18:
  v27 = type metadata accessor for TranscriptProtoClientAction(0);
  v18 = *(v27 + 36);
  v19 = *(v11 + 48);
  sub_20E0486F4(a1 + v18, v13, &qword_27C8639D0, &unk_20E33C230);
  v20 = a2 + v18;
  v21 = v19;
  sub_20E0486F4(v20, &v13[v19], &qword_27C8639D0, &unk_20E33C230);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v21], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  sub_20E0486F4(v13, v10, &qword_27C8639D0, &unk_20E33C230);
  if (v22(&v13[v21], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_23:
    sub_20E04875C(v13, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_27;
  }

  sub_20E195B54(&v13[v21], v7, type metadata accessor for TranscriptProtoStatementID);
  v23 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v13, &qword_27C8639D0, &unk_20E33C230);
  if ((v23 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_25:
  if ((sub_20E15D764(a1[3], a2[3]) & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v24 = sub_20E322850();
  return v24 & 1;
}

uint64_t _s23LighthouseDataProcessor058TranscriptProtoExecutionPreconditionEvaluatorRequestActionI0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C866228, &qword_20E33C480);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F08, &qword_20E33AFD8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C866228, &qword_20E33C480);
  sub_20E0486F4(a2, &v14[v15], &qword_27C866228, &qword_20E33C480);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C866228, &qword_20E33C480);
LABEL_9:
      type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C866228, &qword_20E33C480);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C867F08, &qword_20E33AFD8);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
  v18 = _s23LighthouseDataProcessor058TranscriptProtoExecutionPreconditionEvaluatorRequestActionI4EnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
  sub_20E04875C(v14, &qword_27C866228, &qword_20E33C480);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_20E180718(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t (*a3)(void))
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != 2)
  {
    if (v4 == 2 || ((v4 ^ v3) & 1) != 0)
    {
      return 0;
    }

LABEL_6:
    a3(0);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_20E322850() & 1;
  }

  if (v4 == 2)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor047TranscriptProtoSystemRequirementUserLocationForF7RequestV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 16);
  if (a1[2])
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (a1[1] != a2[1])
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 32);
  if (a1[4])
  {
    if (*(a2 + 32))
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (*(a1 + 3) != *(a2 + 3))
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

LABEL_15:
  type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor041TranscriptProtoUpdateParameterExpression_fG0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_10;
  }

  v26 = v7;
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v14 = *(updated + 24);
  v15 = *(v11 + 48);
  sub_20E0486F4(a1 + v14, v13, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C8639D0, &unk_20E33C230);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_20E0486F4(v13, v10, &qword_27C8639D0, &unk_20E33C230);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v26;
      sub_20E195B54(&v13[v15], v26, type metadata accessor for TranscriptProtoStatementID);
      v20 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v19);
      sub_20E195C24(v19, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v13, &qword_27C8639D0, &unk_20E33C230);
      if ((v20 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_9:
    sub_20E04875C(v13, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_10;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_20E04875C(v13, &qword_27C8639D0, &unk_20E33C230);
LABEL_13:
  v21 = *(updated + 28);
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (v25)
    {
LABEL_19:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if ((v25 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_10:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor039TranscriptProtoFollowUpActionExecutableh4LinkH0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0 || !sub_20E15F7B0(a1[2], a1[3], a2[2], a2[3]) || a1[4] != a2[4])
  {
    return 0;
  }

  type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor039TranscriptProtoFollowUpActionExecutableH0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868500, &qword_20E33B538);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868508, &qword_20E33B540);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C868500, &qword_20E33B538);
  sub_20E0486F4(a2, &v14[v15], &qword_27C868500, &qword_20E33B538);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C868500, &qword_20E33B538);
LABEL_9:
      type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C868500, &qword_20E33B538);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C868508, &qword_20E33B540);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
  v18 = _s23LighthouseDataProcessor039TranscriptProtoFollowUpActionExecutableH4EnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
  sub_20E04875C(v14, &qword_27C868500, &qword_20E33B538);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor035TranscriptProtoRequestContentSpeechG0V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x28223BE20](v4);
  v70 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v64 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v72);
  v75 = &v64 - v8;
  v9 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v64 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868718, &qword_20E33B710);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = (&v64 - v20);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868720, &qword_20E33B718);
  v22 = MEMORY[0x28223BE20](v76);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v64 - v25;
  v27 = *a1;
  v28 = a1[1];
  v77 = a1;
  if ((v27 != *a2 || v28 != a2[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_16;
  }

  v67 = v19;
  v68 = v24;
  v66 = v13;
  v69 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v29 = *(v69 + 20);
  v30 = *(v76 + 48);
  sub_20E0486F4(v77 + v29, v26, &qword_27C868718, &qword_20E33B710);
  v31 = a2 + v29;
  v32 = a2;
  sub_20E0486F4(v31, &v26[v30], &qword_27C868718, &qword_20E33B710);
  v33 = *(v10 + 48);
  v34 = v9;
  if (v33(v26, 1, v9) == 1)
  {
    if (v33(&v26[v30], 1, v9) != 1)
    {
LABEL_13:
      v46 = &qword_27C868720;
      v47 = &qword_20E33B718;
LABEL_14:
      v48 = v26;
LABEL_15:
      sub_20E04875C(v48, v46, v47);
      goto LABEL_16;
    }

    v65 = v33;
    sub_20E04875C(v26, &qword_27C868718, &qword_20E33B710);
  }

  else
  {
    sub_20E0486F4(v26, v21, &qword_27C868718, &qword_20E33B710);
    if (v33(&v26[v30], 1, v9) == 1)
    {
      v45 = v21;
LABEL_12:
      sub_20E195C24(v45, type metadata accessor for TranscriptProtoSpeechPackage);
      goto LABEL_13;
    }

    sub_20E195B54(&v26[v30], v15, type metadata accessor for TranscriptProtoSpeechPackage);
    if ((sub_20E157F10(*v21, *v15) & 1) == 0)
    {
      sub_20E195C24(v15, type metadata accessor for TranscriptProtoSpeechPackage);
      v55 = v21;
LABEL_25:
      sub_20E195C24(v55, type metadata accessor for TranscriptProtoSpeechPackage);
      v46 = &qword_27C868718;
      v47 = &qword_20E33B710;
      goto LABEL_14;
    }

    v65 = v33;
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v51 = sub_20E322850();
    sub_20E195C24(v15, type metadata accessor for TranscriptProtoSpeechPackage);
    sub_20E195C24(v21, type metadata accessor for TranscriptProtoSpeechPackage);
    sub_20E04875C(v26, &qword_27C868718, &qword_20E33B710);
    if ((v51 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v35 = v69;
  v36 = *(v69 + 24);
  v37 = *(v72 + 48);
  v38 = v75;
  sub_20E0486F4(v77 + v36, v75, &qword_27C8639D0, &unk_20E33C230);
  v39 = v32 + v36;
  v40 = v38;
  sub_20E0486F4(v39, v38 + v37, &qword_27C8639D0, &unk_20E33C230);
  v41 = v74;
  v42 = *(v73 + 48);
  if (v42(v38, 1, v74) == 1)
  {
    v43 = v42(v38 + v37, 1, v41);
    v44 = v67;
    v26 = v68;
    if (v43 == 1)
    {
      sub_20E04875C(v40, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_27;
    }

LABEL_23:
    v46 = &qword_27C867F30;
    v47 = &qword_20E33B000;
    v48 = v40;
    goto LABEL_15;
  }

  v52 = v71;
  sub_20E0486F4(v38, v71, &qword_27C8639D0, &unk_20E33C230);
  v53 = v42(v38 + v37, 1, v41);
  v54 = v67;
  v26 = v68;
  if (v53 == 1)
  {
    sub_20E195C24(v52, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_23;
  }

  v56 = v40 + v37;
  v57 = v70;
  sub_20E195B54(v56, v70, type metadata accessor for TranscriptProtoStatementID);
  v58 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v52, v57);
  sub_20E195C24(v57, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v52, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v40, &qword_27C8639D0, &unk_20E33C230);
  v44 = v54;
  v35 = v69;
  if ((v58 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_27:
  v59 = *(v35 + 28);
  v60 = *(v76 + 48);
  sub_20E0486F4(v77 + v59, v26, &qword_27C868718, &qword_20E33B710);
  sub_20E0486F4(v32 + v59, &v26[v60], &qword_27C868718, &qword_20E33B710);
  v61 = v65;
  if (v65(v26, 1, v34) == 1)
  {
    if (v61(&v26[v60], 1, v34) == 1)
    {
      sub_20E04875C(v26, &qword_27C868718, &qword_20E33B710);
LABEL_30:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v49 = sub_20E322850();
      return v49 & 1;
    }

    goto LABEL_13;
  }

  sub_20E0486F4(v26, v44, &qword_27C868718, &qword_20E33B710);
  if (v61(&v26[v60], 1, v34) == 1)
  {
    v45 = v44;
    goto LABEL_12;
  }

  v62 = v66;
  sub_20E195B54(&v26[v60], v66, type metadata accessor for TranscriptProtoSpeechPackage);
  if ((sub_20E157F10(*v44, *v62) & 1) == 0)
  {
    sub_20E195C24(v62, type metadata accessor for TranscriptProtoSpeechPackage);
    v55 = v44;
    goto LABEL_25;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v63 = sub_20E322850();
  sub_20E195C24(v62, type metadata accessor for TranscriptProtoSpeechPackage);
  sub_20E195C24(v44, type metadata accessor for TranscriptProtoSpeechPackage);
  sub_20E04875C(v26, &qword_27C868718, &qword_20E33B710);
  if (v63)
  {
    goto LABEL_30;
  }

LABEL_16:
  v49 = 0;
  return v49 & 1;
}

uint64_t _s23LighthouseDataProcessor033TranscriptProtoRequestContentTextG0V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v7;
  v22 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  sub_20E0486F4(a1 + v14, v13, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(a2 + v14, &v13[v15], &qword_27C8639D0, &unk_20E33C230);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_20E04875C(v13, &qword_27C8639D0, &unk_20E33C230);
LABEL_11:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  sub_20E0486F4(v13, v10, &qword_27C8639D0, &unk_20E33C230);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
LABEL_8:
    sub_20E04875C(v13, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_9;
  }

  v18 = v21;
  sub_20E195B54(&v13[v15], v21, type metadata accessor for TranscriptProtoStatementID);
  v19 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v10, v18);
  sub_20E195C24(v18, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v13, &qword_27C8639D0, &unk_20E33C230);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor028TranscriptProtoActionFailureG0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868548, &qword_20E33B570);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C865BD0, &qword_20E3263A8);
  sub_20E0486F4(a2, &v14[v15], &qword_27C865BD0, &qword_20E3263A8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C865BD0, &qword_20E3263A8);
LABEL_9:
      type metadata accessor for TranscriptProtoActionFailureFailure(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C865BD0, &qword_20E3263A8);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C868548, &qword_20E33B570);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  v18 = _s23LighthouseDataProcessor028TranscriptProtoActionFailureG4EnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  sub_20E04875C(v14, &qword_27C865BD0, &qword_20E3263A8);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 16);
    v3 = *(a2 + 16);
    if (v2)
    {
      if (v3)
      {
        v4 = *(a1 + 8) == *(a2 + 8) && v2 == v3;
        if (v4 || (sub_20E322D60() & 1) != 0)
        {
          goto LABEL_9;
        }
      }
    }

    else if (!v3)
    {
LABEL_9:
      type metadata accessor for TranscriptProtoStatementID(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_20E322850() & 1;
    }
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor21TranscriptProtoActionV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v61 = a2;
  v3 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = (&v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = (&v52 - v6);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868040, &qword_20E33B0E8);
  MEMORY[0x28223BE20](v55);
  v58 = &v52 - v7;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  v59 = type metadata accessor for TranscriptProtoAction(0);
  v60 = a1;
  v19 = *(v59 + 24);
  v20 = *(v16 + 56);
  sub_20E0486F4(&a1[v19], v18, &qword_27C8639D0, &unk_20E33C230);
  v21 = v61;
  sub_20E0486F4(&v61[v19], &v18[v20], &qword_27C8639D0, &unk_20E33C230);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      sub_20E04875C(v18, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_11;
    }

LABEL_6:
    v23 = &qword_27C867F30;
    v24 = &qword_20E33B000;
    v25 = v18;
LABEL_7:
    sub_20E04875C(v25, v23, v24);
    goto LABEL_8;
  }

  sub_20E0486F4(v18, v14, &qword_27C8639D0, &unk_20E33C230);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    sub_20E195C24(v14, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_6;
  }

  sub_20E195B54(&v18[v20], v11, type metadata accessor for TranscriptProtoStatementID);
  v28 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v14, v11);
  sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v14, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v18, &qword_27C8639D0, &unk_20E33C230);
  if ((v28 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = v59;
  v29 = v60;
  v31 = *(v59 + 28);
  v32 = &v60[v31];
  v33 = *&v60[v31 + 8];
  v34 = &v21[v31];
  v35 = *(v34 + 1);
  if (v33)
  {
    if (!v35 || (*v32 != *v34 || v33 != v35) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v35)
  {
    goto LABEL_8;
  }

  if (*v29 != *v21 || (sub_20E15DDF8(*(v29 + 1), *(v21 + 1)) & 1) == 0)
  {
    goto LABEL_8;
  }

  v36 = *(v30 + 32);
  v37 = &v29[v36];
  v38 = *&v29[v36 + 8];
  v39 = &v21[v36];
  v40 = *(v39 + 1);
  if (v38)
  {
    if (!v40 || (*v37 != *v39 || v38 != v40) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v40)
  {
    goto LABEL_8;
  }

  v41 = *(v30 + 36);
  v42 = *(v55 + 48);
  v43 = v58;
  sub_20E0486F4(&v29[v41], v58, &qword_27C8639C8, &unk_20E323870);
  v44 = &v21[v41];
  v45 = v43;
  sub_20E0486F4(v44, v43 + v42, &qword_27C8639C8, &unk_20E323870);
  v46 = v57;
  v47 = *(v56 + 48);
  if (v47(v43, 1, v57) == 1)
  {
    if (v47(v43 + v42, 1, v46) == 1)
    {
      sub_20E04875C(v43, &qword_27C8639C8, &unk_20E323870);
LABEL_34:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v26 = sub_20E322850();
      return v26 & 1;
    }

    goto LABEL_32;
  }

  v48 = v54;
  sub_20E0486F4(v45, v54, &qword_27C8639C8, &unk_20E323870);
  if (v47(v45 + v42, 1, v46) == 1)
  {
    sub_20E195C24(v48, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
LABEL_32:
    v23 = &qword_27C868040;
    v24 = &qword_20E33B0E8;
    v25 = v45;
    goto LABEL_7;
  }

  v49 = v45 + v42;
  v50 = v53;
  sub_20E195B54(v49, v53, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  v51 = _s23LighthouseDataProcessor35TranscriptProtoGlobalToolIdentifierV2eeoiySbAC_ACtFZ_0(v48, v50);
  sub_20E195C24(v50, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E195C24(v48, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E04875C(v45, &qword_27C8639C8, &unk_20E323870);
  if (v51)
  {
    goto LABEL_34;
  }

LABEL_8:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_20E1828EC(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_20E322D60() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor27TranscriptProtoSessionStartV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoGenderSettings(0);
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  v59 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868790, &unk_20E33C1F0);
  MEMORY[0x28223BE20](v6 - 8);
  v60 = &v59 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868798, &qword_20E33B760);
  MEMORY[0x28223BE20](v62);
  v65 = &v59 - v8;
  v9 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x28223BE20](v9);
  v61 = (&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687A0, &unk_20E3461A0);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = (&v59 - v12);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687A8, &qword_20E33B768);
  MEMORY[0x28223BE20](v67);
  v70 = &v59 - v13;
  v14 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687B0, &unk_20E33C1E0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (&v59 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687B8, &qword_20E33B770);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v59 - v23;
  v25 = *(v22 + 56);
  v71 = a1;
  sub_20E0486F4(a1, &v59 - v23, &qword_27C8687B0, &unk_20E33C1E0);
  v72 = a2;
  sub_20E0486F4(a2, &v24[v25], &qword_27C8687B0, &unk_20E33C1E0);
  v26 = *(v15 + 48);
  if (v26(v24, 1, v14) == 1)
  {
    if (v26(&v24[v25], 1, v14) == 1)
    {
      sub_20E04875C(v24, &qword_27C8687B0, &unk_20E33C1E0);
      goto LABEL_8;
    }

LABEL_6:
    v27 = &qword_27C8687B8;
    v28 = &qword_20E33B770;
    v29 = v24;
LABEL_30:
    sub_20E04875C(v29, v27, v28);
    goto LABEL_31;
  }

  sub_20E0486F4(v24, v20, &qword_27C8687B0, &unk_20E33C1E0);
  if (v26(&v24[v25], 1, v14) == 1)
  {
    sub_20E195C24(v20, type metadata accessor for TranscriptProtoLocaleSettings);
    goto LABEL_6;
  }

  sub_20E195B54(&v24[v25], v17, type metadata accessor for TranscriptProtoLocaleSettings);
  v30 = sub_20E1828EC(v20, v17, type metadata accessor for TranscriptProtoLocaleSettings);
  sub_20E195C24(v17, type metadata accessor for TranscriptProtoLocaleSettings);
  sub_20E195C24(v20, type metadata accessor for TranscriptProtoLocaleSettings);
  sub_20E04875C(v24, &qword_27C8687B0, &unk_20E33C1E0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_8:
  v31 = type metadata accessor for TranscriptProtoSessionStart(0);
  v32 = v31[5];
  v33 = *(v67 + 48);
  v35 = v70;
  v34 = v71;
  sub_20E0486F4(v71 + v32, v70, &qword_27C8687A0, &unk_20E3461A0);
  v36 = v72;
  sub_20E0486F4(v72 + v32, v35 + v33, &qword_27C8687A0, &unk_20E3461A0);
  v37 = v69;
  v38 = *(v68 + 48);
  if (v38(v35, 1, v69) == 1)
  {
    if (v38(v35 + v33, 1, v37) == 1)
    {
      sub_20E04875C(v35, &qword_27C8687A0, &unk_20E3461A0);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v39 = v66;
  sub_20E0486F4(v35, v66, &qword_27C8687A0, &unk_20E3461A0);
  if (v38(v35 + v33, 1, v37) == 1)
  {
    sub_20E195C24(v39, type metadata accessor for TranscriptProtoDeviceDetails);
LABEL_13:
    v27 = &qword_27C8687A8;
    v28 = &qword_20E33B768;
    v29 = v35;
    goto LABEL_30;
  }

  v40 = v35 + v33;
  v41 = v61;
  sub_20E195B54(v40, v61, type metadata accessor for TranscriptProtoDeviceDetails);
  v42 = _s23LighthouseDataProcessor28TranscriptProtoDeviceDetailsV2eeoiySbAC_ACtFZ_0(v39, v41);
  sub_20E195C24(v41, type metadata accessor for TranscriptProtoDeviceDetails);
  sub_20E195C24(v39, type metadata accessor for TranscriptProtoDeviceDetails);
  sub_20E04875C(v35, &qword_27C8687A0, &unk_20E3461A0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  v43 = v31[6];
  v44 = *(v62 + 48);
  v45 = v65;
  sub_20E0486F4(v34 + v43, v65, &qword_27C868790, &unk_20E33C1F0);
  v46 = v36 + v43;
  v47 = v45;
  sub_20E0486F4(v46, v45 + v44, &qword_27C868790, &unk_20E33C1F0);
  v48 = v64;
  v49 = *(v63 + 48);
  if (v49(v45, 1, v64) != 1)
  {
    v53 = v60;
    sub_20E0486F4(v47, v60, &qword_27C868790, &unk_20E33C1F0);
    if (v49(v47 + v44, 1, v48) != 1)
    {
      v54 = v47 + v44;
      v55 = v59;
      sub_20E195B54(v54, v59, type metadata accessor for TranscriptProtoGenderSettings);
      if (*v53 == *v55 && v53[1] == v55[1])
      {
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v56 = sub_20E322850();
        sub_20E195C24(v55, type metadata accessor for TranscriptProtoGenderSettings);
        sub_20E195C24(v53, type metadata accessor for TranscriptProtoGenderSettings);
        sub_20E04875C(v47, &qword_27C868790, &unk_20E33C1F0);
        if ((v56 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_18;
      }

      sub_20E195C24(v55, type metadata accessor for TranscriptProtoGenderSettings);
      sub_20E195C24(v53, type metadata accessor for TranscriptProtoGenderSettings);
      v27 = &qword_27C868790;
      v28 = &unk_20E33C1F0;
      goto LABEL_29;
    }

    sub_20E195C24(v53, type metadata accessor for TranscriptProtoGenderSettings);
LABEL_23:
    v27 = &qword_27C868798;
    v28 = &qword_20E33B760;
LABEL_29:
    v29 = v47;
    goto LABEL_30;
  }

  if (v49(v45 + v44, 1, v48) != 1)
  {
    goto LABEL_23;
  }

  sub_20E04875C(v45, &qword_27C868790, &unk_20E33C1F0);
LABEL_18:
  v50 = v31[7];
  v51 = *(v34 + v50);
  v52 = *(v36 + v50);
  if (v51 == 2)
  {
    if (v52 == 2)
    {
LABEL_35:
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v57 = sub_20E322850();
      return v57 & 1;
    }
  }

  else if (v52 != 2 && ((v51 ^ v52) & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_31:
  v57 = 0;
  return v57 & 1;
}

uint64_t _s23LighthouseDataProcessor22TranscriptProtoPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687C0, &qword_20E33B778);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_20E0486F4(a1, &v20 - v13, &qword_27C863FC8, &unk_20E33C1D0);
  sub_20E0486F4(a2, &v14[v15], &qword_27C863FC8, &unk_20E33C1D0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
LABEL_9:
      type metadata accessor for TranscriptProtoPayload(0);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_20E322850();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v14, v10, &qword_27C863FC8, &unk_20E33C1D0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
LABEL_6:
    sub_20E04875C(v14, &qword_27C8687C0, &qword_20E33B778);
    goto LABEL_7;
  }

  sub_20E195B54(&v14[v15], v7, type metadata accessor for TranscriptProtoPayloadEnum);
  v18 = _s23LighthouseDataProcessor26TranscriptProtoPayloadEnumO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_20E195C24(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  sub_20E195C24(v10, type metadata accessor for TranscriptProtoPayloadEnum);
  sub_20E04875C(v14, &qword_27C863FC8, &unk_20E33C1D0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s23LighthouseDataProcessor20TranscriptProtoEventV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v89 = type metadata accessor for TranscriptProtoSpanID(0);
  v101 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688A0, &qword_20E33B858);
  MEMORY[0x28223BE20](v6 - 8);
  v86 = (&v81 - v7);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688A8, &qword_20E33B860);
  MEMORY[0x28223BE20](v88);
  v9 = &v81 - v8;
  v10 = type metadata accessor for TranscriptProtoParticipantID(0);
  v93 = *(v10 - 8);
  v94 = v10;
  MEMORY[0x28223BE20](v10);
  v87 = (&v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688B0, &unk_20E33C1C0);
  MEMORY[0x28223BE20](v12 - 8);
  v90 = (&v81 - v13);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688B8, &qword_20E33B868);
  MEMORY[0x28223BE20](v92);
  v95 = &v81 - v14;
  v15 = type metadata accessor for TranscriptProtoTimepoint(0);
  v98 = *(v15 - 8);
  v99 = v15;
  MEMORY[0x28223BE20](v15);
  v91 = (&v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688C0, &qword_20E33B870);
  MEMORY[0x28223BE20](v17 - 8);
  v96 = (&v81 - v18);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688C8, &qword_20E33B878);
  MEMORY[0x28223BE20](v97);
  v100 = &v81 - v19;
  v20 = type metadata accessor for TranscriptProtoPayload(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC0, &unk_20E325F70);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v81 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D0, &qword_20E33B880);
  MEMORY[0x28223BE20](v27);
  v29 = &v81 - v28;
  if (*a1 != *a2 && (sub_20E322D60() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_20;
  }

  v30 = a1[12];
  v31 = a2[12];
  if (v30)
  {
    if (!v31 || (a1[11] != a2[11] || v30 != v31) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v31)
  {
    goto LABEL_20;
  }

  v82 = v5;
  v83 = v9;
  v84 = type metadata accessor for TranscriptProtoEvent(0);
  v85 = a2;
  v32 = *(v84 + 44);
  v33 = *(v27 + 48);
  sub_20E0486F4(a1 + v32, v29, &qword_27C863FC0, &unk_20E325F70);
  v34 = v85 + v32;
  v35 = v85;
  sub_20E0486F4(v34, &v29[v33], &qword_27C863FC0, &unk_20E325F70);
  v36 = *(v21 + 48);
  if (v36(v29, 1, v20) == 1)
  {
    if (v36(&v29[v33], 1, v20) == 1)
    {
      sub_20E04875C(v29, &qword_27C863FC0, &unk_20E325F70);
      goto LABEL_23;
    }

LABEL_18:
    v37 = &qword_27C8688D0;
    v38 = &qword_20E33B880;
    v39 = v29;
    goto LABEL_19;
  }

  sub_20E0486F4(v29, v26, &qword_27C863FC0, &unk_20E325F70);
  if (v36(&v29[v33], 1, v20) == 1)
  {
    sub_20E195C24(v26, type metadata accessor for TranscriptProtoPayload);
    goto LABEL_18;
  }

  sub_20E195B54(&v29[v33], v23, type metadata accessor for TranscriptProtoPayload);
  v42 = _s23LighthouseDataProcessor22TranscriptProtoPayloadV2eeoiySbAC_ACtFZ_0(v26, v23);
  sub_20E195C24(v23, type metadata accessor for TranscriptProtoPayload);
  sub_20E195C24(v26, type metadata accessor for TranscriptProtoPayload);
  sub_20E04875C(v29, &qword_27C863FC0, &unk_20E325F70);
  if ((v42 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_23:
  if ((a1[4] != v35[4] || a1[5] != v35[5]) && (sub_20E322D60() & 1) == 0 || (a1[6] != v35[6] || a1[7] != v35[7]) && (sub_20E322D60() & 1) == 0 || (a1[8] != v35[8] || a1[9] != v35[9]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_20;
  }

  v43 = v84;
  v44 = *(v84 + 48);
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (v35 + v44);
  v48 = v47[1];
  if (v46)
  {
    v50 = v82;
    v49 = v83;
    v51 = v101;
    if (!v48 || (*v45 != *v47 || v46 != v48) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v50 = v82;
    v49 = v83;
    v51 = v101;
    if (v48)
    {
      goto LABEL_20;
    }
  }

  v52 = v43[13];
  v53 = *(v97 + 48);
  v54 = v100;
  sub_20E0486F4(a1 + v52, v100, &qword_27C8688C0, &qword_20E33B870);
  sub_20E0486F4(v85 + v52, v54 + v53, &qword_27C8688C0, &qword_20E33B870);
  v55 = v99;
  v56 = *(v98 + 48);
  if (v56(v54, 1, v99) == 1)
  {
    if (v56(v54 + v53, 1, v55) == 1)
    {
      sub_20E04875C(v54, &qword_27C8688C0, &qword_20E33B870);
      goto LABEL_46;
    }

LABEL_44:
    v37 = &qword_27C8688C8;
    v38 = &qword_20E33B878;
    v39 = v54;
    goto LABEL_19;
  }

  v57 = v49;
  v58 = v50;
  v59 = v96;
  sub_20E0486F4(v54, v96, &qword_27C8688C0, &qword_20E33B870);
  if (v56(v54 + v53, 1, v55) == 1)
  {
    sub_20E195C24(v59, type metadata accessor for TranscriptProtoTimepoint);
    goto LABEL_44;
  }

  v60 = v91;
  sub_20E195B54(v54 + v53, v91, type metadata accessor for TranscriptProtoTimepoint);
  v61 = _s23LighthouseDataProcessor24TranscriptProtoTimepointV2eeoiySbAC_ACtFZ_0(v59, v60);
  sub_20E195C24(v60, type metadata accessor for TranscriptProtoTimepoint);
  sub_20E195C24(v59, type metadata accessor for TranscriptProtoTimepoint);
  sub_20E04875C(v54, &qword_27C8688C0, &qword_20E33B870);
  v50 = v58;
  v49 = v57;
  v51 = v101;
  if ((v61 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_46:
  v62 = v43[14];
  v63 = *(v92 + 48);
  v64 = v95;
  sub_20E0486F4(a1 + v62, v95, &qword_27C8688B0, &unk_20E33C1C0);
  v65 = v64;
  sub_20E0486F4(v85 + v62, v64 + v63, &qword_27C8688B0, &unk_20E33C1C0);
  v66 = v94;
  v67 = *(v93 + 48);
  if (v67(v64, 1, v94) == 1)
  {
    if (v67(v64 + v63, 1, v66) == 1)
    {
      sub_20E04875C(v64, &qword_27C8688B0, &unk_20E33C1C0);
      goto LABEL_57;
    }

    goto LABEL_51;
  }

  v68 = v90;
  sub_20E0486F4(v65, v90, &qword_27C8688B0, &unk_20E33C1C0);
  if (v67(v65 + v63, 1, v66) == 1)
  {
    sub_20E195C24(v68, type metadata accessor for TranscriptProtoParticipantID);
LABEL_51:
    v37 = &qword_27C8688B8;
    v38 = &qword_20E33B868;
LABEL_52:
    v39 = v65;
    goto LABEL_19;
  }

  v69 = v65 + v63;
  v70 = v87;
  sub_20E195B54(v69, v87, type metadata accessor for TranscriptProtoParticipantID);
  if ((*v68 != *v70 || v68[1] != v70[1]) && (sub_20E322D60() & 1) == 0)
  {
    sub_20E195C24(v70, type metadata accessor for TranscriptProtoParticipantID);
    sub_20E195C24(v68, type metadata accessor for TranscriptProtoParticipantID);
    v37 = &qword_27C8688B0;
    v38 = &unk_20E33C1C0;
    goto LABEL_52;
  }

  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v71 = sub_20E322850();
  sub_20E195C24(v70, type metadata accessor for TranscriptProtoParticipantID);
  sub_20E195C24(v68, type metadata accessor for TranscriptProtoParticipantID);
  sub_20E04875C(v65, &qword_27C8688B0, &unk_20E33C1C0);
  v43 = v84;
  if ((v71 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_57:
  v72 = v43[15];
  v73 = *(v88 + 48);
  sub_20E0486F4(a1 + v72, v49, &qword_27C8688A0, &qword_20E33B858);
  v74 = v85 + v72;
  v75 = v85;
  sub_20E0486F4(v74, v49 + v73, &qword_27C8688A0, &qword_20E33B858);
  v76 = *(v51 + 48);
  v77 = v89;
  if (v76(v49, 1, v89) != 1)
  {
    v78 = v77;
    v79 = v86;
    sub_20E0486F4(v49, v86, &qword_27C8688A0, &qword_20E33B858);
    if (v76(v49 + v73, 1, v78) == 1)
    {
      sub_20E195C24(v79, type metadata accessor for TranscriptProtoSpanID);
      goto LABEL_64;
    }

    sub_20E195B54(v49 + v73, v50, type metadata accessor for TranscriptProtoSpanID);
    if (*v79 == *v50)
    {
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v75 = v85;
      v80 = sub_20E322850();
      sub_20E195C24(v50, type metadata accessor for TranscriptProtoSpanID);
      sub_20E195C24(v79, type metadata accessor for TranscriptProtoSpanID);
      sub_20E04875C(v49, &qword_27C8688A0, &qword_20E33B858);
      if ((v80 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_60;
    }

    sub_20E195C24(v50, type metadata accessor for TranscriptProtoSpanID);
    sub_20E195C24(v79, type metadata accessor for TranscriptProtoSpanID);
    v37 = &qword_27C8688A0;
    v38 = &qword_20E33B858;
    v39 = v49;
LABEL_19:
    sub_20E04875C(v39, v37, v38);
    goto LABEL_20;
  }

  if (v76(v49 + v73, 1, v77) != 1)
  {
LABEL_64:
    v37 = &qword_27C8688A8;
    v38 = &qword_20E33B860;
    v39 = v49;
    goto LABEL_19;
  }

  sub_20E04875C(v49, &qword_27C8688A0, &qword_20E33B858);
LABEL_60:
  if (sub_20E15DCC4(a1[10], v75[10]))
  {
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v40 = sub_20E322850();
    return v40 & 1;
  }

LABEL_20:
  v40 = 0;
  return v40 & 1;
}

uint64_t _s23LighthouseDataProcessor015TranscriptProtoD0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4];
  v6 = a2[4];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[3] == a2[3] && v5 == v6;
    if (!v7 && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (sub_20E147778(a1[2], a2[2], type metadata accessor for TranscriptProtoEvent, type metadata accessor for TranscriptProtoEvent, _s23LighthouseDataProcessor20TranscriptProtoEventV2eeoiySbAC_ACtFZ_0, type metadata accessor for TranscriptProtoEvent))
  {
    type metadata accessor for TranscriptProtoTranscript(0);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_20E322850() & 1;
  }

  return 0;
}

unint64_t sub_20E1846E4()
{
  result = qword_27C865AD8;
  if (!qword_27C865AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865AD8);
  }

  return result;
}

unint64_t sub_20E184738()
{
  result = qword_27C865B48;
  if (!qword_27C865B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865B48);
  }

  return result;
}

unint64_t sub_20E18478C()
{
  result = qword_27C865C58;
  if (!qword_27C865C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865C58);
  }

  return result;
}

unint64_t sub_20E1847E0()
{
  result = qword_27C865D00;
  if (!qword_27C865D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865D00);
  }

  return result;
}

unint64_t sub_20E184834()
{
  result = qword_27C865F20;
  if (!qword_27C865F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865F20);
  }

  return result;
}

unint64_t sub_20E184888()
{
  result = qword_27C865F78;
  if (!qword_27C865F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865F78);
  }

  return result;
}

unint64_t sub_20E1848DC()
{
  result = qword_27C865FA8;
  if (!qword_27C865FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865FA8);
  }

  return result;
}

unint64_t sub_20E184930()
{
  result = qword_27C865FB8;
  if (!qword_27C865FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865FB8);
  }

  return result;
}

unint64_t sub_20E184984()
{
  result = qword_27C865FC8;
  if (!qword_27C865FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865FC8);
  }

  return result;
}

unint64_t sub_20E1849D8()
{
  result = qword_27C865FF0;
  if (!qword_27C865FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865FF0);
  }

  return result;
}

unint64_t sub_20E184A2C()
{
  result = qword_27C866150;
  if (!qword_27C866150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866150);
  }

  return result;
}

unint64_t sub_20E184A80()
{
  result = qword_27C866178;
  if (!qword_27C866178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866178);
  }

  return result;
}

unint64_t sub_20E184AD8()
{
  result = qword_27C866258;
  if (!qword_27C866258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866258);
  }

  return result;
}

unint64_t sub_20E184B30()
{
  result = qword_27C866260;
  if (!qword_27C866260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866260);
  }

  return result;
}

unint64_t sub_20E184B88()
{
  result = qword_27C866268;
  if (!qword_27C866268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866268);
  }

  return result;
}

unint64_t sub_20E184BE0()
{
  result = qword_27C866270;
  if (!qword_27C866270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866270);
  }

  return result;
}

unint64_t sub_20E184C38()
{
  result = qword_27C866278;
  if (!qword_27C866278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866278);
  }

  return result;
}

unint64_t sub_20E184C90()
{
  result = qword_27C866280;
  if (!qword_27C866280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866280);
  }

  return result;
}

unint64_t sub_20E184CE8()
{
  result = qword_27C866288;
  if (!qword_27C866288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866288);
  }

  return result;
}

unint64_t sub_20E184D40()
{
  result = qword_27C866290;
  if (!qword_27C866290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866290);
  }

  return result;
}

unint64_t sub_20E184D98()
{
  result = qword_27C866298;
  if (!qword_27C866298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866298);
  }

  return result;
}

unint64_t sub_20E184DF0()
{
  result = qword_27C8662A0;
  if (!qword_27C8662A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662A0);
  }

  return result;
}

unint64_t sub_20E184E48()
{
  result = qword_27C8662A8;
  if (!qword_27C8662A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662A8);
  }

  return result;
}

unint64_t sub_20E184EA0()
{
  result = qword_27C8662B0;
  if (!qword_27C8662B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662B0);
  }

  return result;
}

unint64_t sub_20E184EF8()
{
  result = qword_27C8662B8;
  if (!qword_27C8662B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662B8);
  }

  return result;
}

unint64_t sub_20E184F50()
{
  result = qword_27C8662C0;
  if (!qword_27C8662C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662C0);
  }

  return result;
}

unint64_t sub_20E184FA8()
{
  result = qword_27C8662C8;
  if (!qword_27C8662C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662C8);
  }

  return result;
}

unint64_t sub_20E185000()
{
  result = qword_27C8662D0;
  if (!qword_27C8662D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662D0);
  }

  return result;
}

unint64_t sub_20E185058()
{
  result = qword_27C8662D8;
  if (!qword_27C8662D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662D8);
  }

  return result;
}

unint64_t sub_20E1850B0()
{
  result = qword_27C8662E0;
  if (!qword_27C8662E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662E0);
  }

  return result;
}

unint64_t sub_20E185108()
{
  result = qword_27C8662E8;
  if (!qword_27C8662E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662E8);
  }

  return result;
}

unint64_t sub_20E185160()
{
  result = qword_27C8662F0;
  if (!qword_27C8662F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662F0);
  }

  return result;
}

unint64_t sub_20E1851B8()
{
  result = qword_27C8662F8;
  if (!qword_27C8662F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662F8);
  }

  return result;
}

unint64_t sub_20E185210()
{
  result = qword_27C866300;
  if (!qword_27C866300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866300);
  }

  return result;
}

unint64_t sub_20E185268()
{
  result = qword_27C866308;
  if (!qword_27C866308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866308);
  }

  return result;
}

unint64_t sub_20E1852C0()
{
  result = qword_27C866310;
  if (!qword_27C866310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866310);
  }

  return result;
}

unint64_t sub_20E185318()
{
  result = qword_27C866318;
  if (!qword_27C866318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866318);
  }

  return result;
}

unint64_t sub_20E185370()
{
  result = qword_27C866320;
  if (!qword_27C866320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866320);
  }

  return result;
}

unint64_t sub_20E188AE8()
{
  result = qword_27C8666F8;
  if (!qword_27C8666F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8666F8);
  }

  return result;
}

unint64_t sub_20E188B40()
{
  result = qword_27C866700;
  if (!qword_27C866700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866700);
  }

  return result;
}

unint64_t sub_20E18B0B8()
{
  result = qword_27C8669E0;
  if (!qword_27C8669E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8669E0);
  }

  return result;
}

unint64_t sub_20E18B110()
{
  result = qword_27C8669E8;
  if (!qword_27C8669E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8669E8);
  }

  return result;
}

uint64_t sub_20E195904(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_20E19591C(result, a2);
  }

  return result;
}

uint64_t sub_20E195924(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_20E19593C(result, a2);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_20E1959A8()
{
  result = qword_27C868330;
  if (!qword_27C868330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868330);
  }

  return result;
}

unint64_t sub_20E1959FC()
{
  result = qword_27C868468;
  if (!qword_27C868468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868468);
  }

  return result;
}

unint64_t sub_20E195A50()
{
  result = qword_27C8685F8;
  if (!qword_27C8685F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8685F8);
  }

  return result;
}

uint64_t sub_20E195AA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_20E195B0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20E195B54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E195BBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E195C24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E196654(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868650, &qword_20E33B660);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E1967B0(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20E196820(v4);
    return 0;
  }

  else
  {
    sub_20E196888(v4, v8);
    v10 = *v8;
    sub_20E1968EC(v8);
    return dword_20E33B90C[v10];
  }
}

uint64_t sub_20E1967B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868650, &qword_20E33B660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E196820(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868650, &qword_20E33B660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E196888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E1968EC(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E196948(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v549 = a3;
  v550 = a4;
  v551 = a2;
  v515 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v514 = *(v515 - 8);
  v5 = MEMORY[0x28223BE20](v515);
  v487 = &v471 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v471 - v7;
  v9 = type metadata accessor for TranscriptProtoSystemResponse(0);
  MEMORY[0x28223BE20](v9 - 8);
  v512 = (&v471 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FB8, &unk_20E325F60);
  MEMORY[0x28223BE20](v11 - 8);
  v508 = &v471 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v502 = &v471 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v501 = &v471 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v510 = &v471 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v504 = &v471 - v20;
  v505 = type metadata accessor for TranscriptProtoStatementResult(0);
  MEMORY[0x28223BE20](v505);
  v509 = &v471 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TranscriptProtoClientAction(0);
  MEMORY[0x28223BE20](v22 - 8);
  v506 = (&v471 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  MEMORY[0x28223BE20](v24 - 8);
  v498 = (&v471 - v25);
  v497 = type metadata accessor for TranscriptProtoAction(0);
  MEMORY[0x28223BE20](v497);
  v507 = (&v471 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688E8, &unk_20E3573E0);
  MEMORY[0x28223BE20](v27 - 8);
  v485 = &v471 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC8, &unk_20E359E90);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v481 = &v471 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v471 - v32;
  v474 = type metadata accessor for TranscriptProtoExecutorError(0);
  v34 = MEMORY[0x28223BE20](v474);
  v482 = &v471 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v490 = &v471 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED0, &unk_20E33C2C0);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v480 = &v471 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &v471 - v40;
  v476 = type metadata accessor for TranscriptProtoPlannerError(0);
  v42 = MEMORY[0x28223BE20](v476);
  v483 = &v471 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v491 = &v471 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  v46 = MEMORY[0x28223BE20](v45 - 8);
  v479 = &v471 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v495 = &v471 - v48;
  v475 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
  v49 = MEMORY[0x28223BE20](v475);
  v484 = &v471 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v488 = &v471 - v51;
  v478 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v477 = *(v478 - 8);
  v52 = MEMORY[0x28223BE20](v478);
  v511 = &v471 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v473 = &v471 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v472 = &v471 - v57;
  MEMORY[0x28223BE20](v56);
  v494 = &v471 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  v60 = MEMORY[0x28223BE20](v59 - 8);
  v499 = &v471 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v63 = &v471 - v62;
  v492 = type metadata accessor for TranscriptProtoSessionError(0);
  v64 = MEMORY[0x28223BE20](v492);
  v500 = &v471 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v516 = &v471 - v66;
  v529 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v528 = *(v529 - 8);
  v67 = MEMORY[0x28223BE20](v529);
  v518 = &v471 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v520 = &v471 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC0, &unk_20E325F70);
  v71 = MEMORY[0x28223BE20](v70 - 8);
  v524 = &v471 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v519 = &v471 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v75 = MEMORY[0x28223BE20](v74 - 8);
  v525 = &v471 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75);
  v517 = &v471 - v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688F0, &unk_20E33B920);
  v79 = MEMORY[0x28223BE20](v78 - 8);
  v496 = &v471 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = MEMORY[0x28223BE20](v79);
  v493 = &v471 - v82;
  MEMORY[0x28223BE20](v81);
  v523 = &v471 - v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688F8, &unk_20E33C060);
  MEMORY[0x28223BE20](v84 - 8);
  v536 = (&v471 - v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688C0, &qword_20E33B870);
  v87 = MEMORY[0x28223BE20](v86 - 8);
  v535 = &v471 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87);
  v541 = (&v471 - v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868778, &unk_20E33C000);
  v91 = MEMORY[0x28223BE20](v90 - 8);
  v521 = &v471 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v539 = (&v471 - v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  v95 = MEMORY[0x28223BE20](v94 - 8);
  v544 = &v471 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v95);
  v98 = &v471 - v97;
  v538 = sub_20E322010();
  v99 = *(v538 - 8);
  v100 = MEMORY[0x28223BE20](v538);
  v534 = &v471 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v100);
  v542 = &v471 - v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688B0, &unk_20E33C1C0);
  v104 = MEMORY[0x28223BE20](v103 - 8);
  v522 = (&v471 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v104);
  v540 = (&v471 - v106);
  v537 = type metadata accessor for ParticipantInfo(0);
  v545 = *(v537 - 8);
  MEMORY[0x28223BE20](v537);
  v543 = (&v471 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));
  v546 = type metadata accessor for TranscriptProtoEvent(0);
  MEMORY[0x28223BE20](v546);
  v109 = &v471 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v110 = sub_20E3227C0();
  v111 = __swift_project_value_buffer(v110, qword_280E12C48);
  sub_20E19B69C(a1, v109, type metadata accessor for TranscriptProtoEvent);
  v503 = v111;
  v112 = sub_20E3227B0();
  v113 = sub_20E322A40();
  v114 = os_log_type_enabled(v112, v113);
  v489 = v33;
  v486 = v41;
  v526 = v8;
  if (v114)
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v552 = v98;
    v117 = v63;
    v118 = a1;
    v119 = v99;
    v120 = v116;
    v554 = v116;
    *v115 = 136315138;
    v122 = *(v109 + 6);
    v121 = *(v109 + 7);

    sub_20E19B5D8(v109, type metadata accessor for TranscriptProtoEvent);
    v123 = sub_20E31B6C4(v122, v121, &v554);

    *(v115 + 4) = v123;
    _os_log_impl(&dword_20E031000, v112, v113, "Producing features from events for clientSessionID: %s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v120);
    v124 = v120;
    v99 = v119;
    a1 = v118;
    v63 = v117;
    v98 = v552;
    MEMORY[0x20F32CA80](v124, -1, -1);
    MEMORY[0x20F32CA80](v115, -1, -1);
  }

  else
  {

    sub_20E19B5D8(v109, type metadata accessor for TranscriptProtoEvent);
  }

  v125 = sub_20E1A4FBC(&v554, v549, v550);
  v127 = v126;
  v128 = type metadata accessor for SessionData(0);
  v530 = *(v128 - 8);
  v129 = v530[6];
  v552 = v128;
  v547 = v129;
  v548 = v530 + 6;
  v130 = (v129)(v127, 1);
  v513 = v63;
  v131 = v546;
  if (v130)
  {
    (v125)(&v554, 0);
    v132 = v545;
    goto LABEL_23;
  }

  v133 = v540;
  sub_20E0486F4(a1 + *(v546 + 56), v540, &qword_27C8688B0, &unk_20E33C1C0);
  v134 = type metadata accessor for TranscriptProtoParticipantID(0);
  if ((*(*(v134 - 8) + 48))(v133, 1, v134) == 1)
  {
    sub_20E04875C(v133, &qword_27C8688B0, &unk_20E33C1C0);
    v135 = 0;
    v136 = 0;
  }

  else
  {
    v135 = *v133;
    v136 = v133[1];

    sub_20E19B5D8(v133, type metadata accessor for TranscriptProtoParticipantID);
  }

  v137 = a1 + *(v131 + 52);
  v138 = v541;
  sub_20E0486F4(v137, v541, &qword_27C8688C0, &qword_20E33B870);
  v139 = type metadata accessor for TranscriptProtoTimepoint(0);
  if ((*(*(v139 - 8) + 48))(v138, 1, v139) == 1)
  {
    v140 = &qword_27C8688C0;
    v141 = &qword_20E33B870;
    goto LABEL_15;
  }

  v142 = v138 + *(v139 + 28);
  v143 = v138;
  v138 = v539;
  sub_20E0486F4(v142, v539, &qword_27C868778, &unk_20E33C000);
  sub_20E19B5D8(v143, type metadata accessor for TranscriptProtoTimepoint);
  v144 = sub_20E322150();
  v145 = *(v144 - 8);
  if ((*(v145 + 48))(v138, 1, v144) == 1)
  {
    v140 = &qword_27C868778;
    v141 = &unk_20E33C000;
LABEL_15:
    sub_20E04875C(v138, v140, v141);
    v146 = v538;
    v147 = v542;
    (*(v99 + 56))(v98, 1, 1, v538);
    sub_20E321F40();
    if ((*(v99 + 48))(v98, 1, v146) != 1)
    {
      sub_20E04875C(v98, &qword_27C863F30, &qword_20E325D90);
    }

    goto LABEL_18;
  }

  sub_20E322140();
  (*(v145 + 8))(v138, v144);
  v146 = v538;
  (*(v99 + 56))(v98, 0, 1, v538);
  v147 = v542;
  (*(v99 + 32))(v542, v98, v146);
LABEL_18:
  v148 = v543;
  *v543 = v135;
  *(v148 + 1) = v136;
  (*(v99 + 32))(&v148[*(v537 + 20)], v147, v146);
  v149 = v127 + *(v552 + 5);
  v150 = *(type metadata accessor for SessionSignature(0) + 44);
  v151 = *(v149 + v150);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v149 + v150) = v151;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v151 = sub_20E22534C(0, v151[2] + 1, 1, v151);
    *(v149 + v150) = v151;
  }

  v154 = v151[2];
  v153 = v151[3];
  if (v154 >= v153 >> 1)
  {
    v151 = sub_20E22534C((v153 > 1), v154 + 1, 1, v151);
    *(v149 + v150) = v151;
  }

  v151[2] = v154 + 1;
  v132 = v545;
  sub_20E19B570(v543, v151 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v545 + 72) * v154, type metadata accessor for ParticipantInfo);
  (v125)(&v554, 0);
LABEL_23:
  v545 = a1;
  v155 = *(a1 + 80);
  v156 = v155 + 64;
  v157 = 1 << *(v155 + 32);
  v158 = -1;
  if (v157 < 64)
  {
    v158 = ~(-1 << v157);
  }

  v159 = v158 & *(v155 + 64);
  v160 = (v157 + 63) >> 6;
  v533 = (v99 + 56);
  v539 = (v99 + 32);
  v527 = (v99 + 48);
  v532 = (v132 + 56);

  v161 = 0;
  v531 = v155;
  if (v159)
  {
    while (1)
    {
LABEL_30:
      while (1)
      {
        v163 = __clz(__rbit64(v159));
        v159 &= v159 - 1;
        v164 = v163 | (v161 << 6);
        v165 = (*(v155 + 48) + 16 * v164);
        v166 = *v165;
        v125 = v165[1];
        v167 = *(*(v155 + 56) + 8 * v164);

        v168 = sub_20E1A4FBC(&v554, v549, v550);
        v170 = v169;
        if (!v547(v169, 1, v552))
        {
          break;
        }

        (v168)(&v554, 0);
        if (!v159)
        {
          goto LABEL_26;
        }
      }

      v540 = v170;
      v541 = v166;
      v542 = v167;
      v543 = v168;
      v171 = v535;
      sub_20E0486F4(v545 + *(v546 + 52), v535, &qword_27C8688C0, &qword_20E33B870);
      v172 = type metadata accessor for TranscriptProtoTimepoint(0);
      if ((*(*(v172 - 8) + 48))(v171, 1, v172) == 1)
      {
        break;
      }

      v173 = v171 + *(v172 + 28);
      v174 = v521;
      sub_20E0486F4(v173, v521, &qword_27C868778, &unk_20E33C000);
      v175 = v171;
      v176 = v174;
      sub_20E19B5D8(v175, type metadata accessor for TranscriptProtoTimepoint);
      v177 = sub_20E322150();
      v178 = *(v177 - 8);
      if ((*(v178 + 48))(v176, 1, v177) == 1)
      {
        sub_20E04875C(v176, &qword_27C868778, &unk_20E33C000);
LABEL_37:
        v179 = v544;
        v180 = v538;
        (*v533)(v544, 1, 1, v538);
        v181 = v534;
        sub_20E321F40();
        v182 = v179;
        v183 = v181;
        v184 = (*v527)(v182, 1, v180);
        v185 = v542;
        if (v184 != 1)
        {
          sub_20E04875C(v544, &qword_27C863F30, &qword_20E325D90);
        }

        goto LABEL_40;
      }

      v186 = v544;
      sub_20E322140();
      (*(v178 + 8))(v176, v177);
      v180 = v538;
      (*v533)(v186, 0, 1, v538);
      v183 = v534;
      (*v539)(v534, v186, v180);
      v185 = v542;
LABEL_40:
      v187 = v536;
      *v536 = v541;
      *(v187 + 8) = v125;
      v125 = v537;
      (*v539)((v187 + *(v537 + 20)), v183, v180);
      (*v532)(v187, 0, 1, v125);
      type metadata accessor for SessionSignature(0);
      sub_20E1A511C(v187, v185);
      (v543)(&v554, 0);
      v155 = v531;
      if (!v159)
      {
        goto LABEL_26;
      }
    }

    sub_20E04875C(v171, &qword_27C8688C0, &qword_20E33B870);
    goto LABEL_37;
  }

  while (1)
  {
LABEL_26:
    v162 = v161 + 1;
    if (__OFADD__(v161, 1))
    {
      __break(1u);
      goto LABEL_104;
    }

    if (v162 >= v160)
    {
      break;
    }

    v159 = *(v156 + 8 * v162);
    ++v161;
    if (v159)
    {
      v161 = v162;
      goto LABEL_30;
    }
  }

  v188 = *v551;
  if (*(*v551 + 16))
  {
    v189 = sub_20E1ACAD0(v549, v550);
    v190 = v545;
    v191 = v546;
    v192 = v526;
    v193 = v523;
    if (v194)
    {
      sub_20E19B69C(*(v188 + 56) + v530[9] * v189, v523, type metadata accessor for SessionData);
      v195 = 0;
    }

    else
    {
      v195 = 1;
    }
  }

  else
  {
    v195 = 1;
    v190 = v545;
    v191 = v546;
    v192 = v526;
    v193 = v523;
  }

  v196 = v530[7];
  v197 = v552;
  v196(v193, v195, 1, v552);
  if (v547(v193, 1, v197))
  {
    sub_20E04875C(v193, &qword_27C8688F0, &unk_20E33B920);
  }

  else
  {
    v198 = v193 + *(v197 + 5);
    v199 = (v198 + *(type metadata accessor for SessionSignature(0) + 48));
    v201 = *v199;
    v200 = v199[1];

    sub_20E04875C(v193, &qword_27C8688F0, &unk_20E33B920);

    v202 = HIBYTE(v200) & 0xF;
    if ((v200 & 0x2000000000000000) == 0)
    {
      v202 = v201 & 0xFFFFFFFFFFFFLL;
    }

    if (v202)
    {
      v203 = sub_20E1A4FBC(&v554, v549, v550);
      if (!v547(v204, 1, v552))
      {
        MEMORY[0x20F32BF40](540945696, 0xE400000000000000);
      }

      (v203)(&v554, 0);
    }
  }

  v205 = v522;
  sub_20E0486F4(v190 + *(v191 + 56), v522, &qword_27C8688B0, &unk_20E33C1C0);
  v206 = type metadata accessor for TranscriptProtoParticipantID(0);
  if ((*(*(v206 - 8) + 48))(v205, 1, v206) == 1)
  {
    sub_20E04875C(v205, &qword_27C8688B0, &unk_20E33C1C0);
    goto LABEL_66;
  }

  v208 = *v205;
  v207 = v205[1];

  sub_20E19B5D8(v205, type metadata accessor for TranscriptProtoParticipantID);
  v554 = v208;
  v555 = v207;

  MEMORY[0x20F32BF40](40, 0xE100000000000000);

  v210 = v554;
  v209 = v555;
  v211 = v519;
  sub_20E0486F4(v190 + *(v191 + 44), v519, &qword_27C863FC0, &unk_20E325F70);
  v212 = type metadata accessor for TranscriptProtoPayload(0);
  if ((*(*(v212 - 8) + 48))(v211, 1, v212) == 1)
  {
    v213 = 7104878;
    v214 = &qword_27C863FC0;
    v215 = &unk_20E325F70;
    goto LABEL_61;
  }

  v216 = v211;
  v217 = v211;
  v211 = v517;
  sub_20E0486F4(v216, v517, &qword_27C863FC8, &unk_20E33C1D0);
  sub_20E19B5D8(v217, type metadata accessor for TranscriptProtoPayload);
  if ((*(v528 + 48))(v211, 1, v529) == 1)
  {
    v213 = 7104878;
    v214 = &qword_27C863FC8;
    v215 = &unk_20E33C1D0;
LABEL_61:
    sub_20E04875C(v211, v214, v215);
    v218 = 0xE300000000000000;
  }

  else
  {
    v213 = TranscriptProtoPayloadEnum.eventTypeString.getter();
    v218 = v219;
    sub_20E19B5D8(v211, type metadata accessor for TranscriptProtoPayloadEnum);
  }

  v554 = v210;
  v555 = v209;

  MEMORY[0x20F32BF40](v213, v218);

  MEMORY[0x20F32BF40](41, 0xE100000000000000);

  v221 = v554;
  v220 = v555;
  v222 = sub_20E1A4FBC(&v554, v549, v550);
  if (!v547(v223, 1, v552))
  {
    type metadata accessor for SessionSignature(0);
    MEMORY[0x20F32BF40](v221, v220);
  }

  (v222)(&v554, 0);
  v191 = v546;
LABEL_66:
  v224 = v524;
  sub_20E0486F4(v190 + *(v191 + 44), v524, &qword_27C863FC0, &unk_20E325F70);
  v225 = type metadata accessor for TranscriptProtoPayload(0);
  if ((*(*(v225 - 8) + 48))(v224, 1, v225) == 1)
  {
    sub_20E04875C(v224, &qword_27C863FC0, &unk_20E325F70);
    v226 = v525;
    (*(v528 + 56))(v525, 1, 1, v529);
    goto LABEL_69;
  }

  v226 = v525;
  sub_20E0486F4(v224, v525, &qword_27C863FC8, &unk_20E33C1D0);
  sub_20E19B5D8(v224, type metadata accessor for TranscriptProtoPayload);
  if ((*(v528 + 48))(v226, 1, v529) == 1)
  {
LABEL_69:
    v227 = &qword_27C863FC8;
    v228 = &unk_20E33C1D0;
    goto LABEL_70;
  }

  v231 = v226;
  v232 = v520;
  sub_20E19B570(v231, v520, type metadata accessor for TranscriptProtoPayloadEnum);
  v233 = v518;
  sub_20E19B69C(v232, v518, type metadata accessor for TranscriptProtoPayloadEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v253 = v507;
      sub_20E19B570(v233, v507, type metadata accessor for TranscriptProtoAction);
      v270 = sub_20E1A4FBC(&v554, v549, v550);
      v272 = v271;
      v273 = v552;
      if (v547(v271, 1, v552))
      {
        (v270)(&v554, 0);
      }

      else
      {
        v299 = v498;
        sub_20E0486F4(v253 + *(v497 + 36), v498, &qword_27C8639C8, &unk_20E323870);
        v300 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
        if ((*(*(v300 - 8) + 48))(v299, 1, v300) == 1)
        {
          sub_20E04875C(v299, &qword_27C8639C8, &unk_20E323870);
          v301 = 0xE300000000000000;
          v302 = 7104878;
        }

        else
        {
          v302 = *v299;
          v301 = v299[1];

          sub_20E19B5D8(v299, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
        }

        v329 = v272 + *(v273 + 5);
        v330 = *(type metadata accessor for SessionSignature(0) + 36);
        v331 = *(v329 + v330);
        v332 = swift_isUniquelyReferenced_nonNull_native();
        *(v329 + v330) = v331;
        if ((v332 & 1) == 0)
        {
          v331 = sub_20E225240(0, *(v331 + 2) + 1, 1, v331);
          *(v329 + v330) = v331;
        }

        v334 = *(v331 + 2);
        v333 = *(v331 + 3);
        if (v334 >= v333 >> 1)
        {
          v331 = sub_20E225240((v333 > 1), v334 + 1, 1, v331);
          *(v329 + v330) = v331;
        }

        *(v331 + 2) = v334 + 1;
        v335 = &v331[16 * v334];
        *(v335 + 4) = v302;
        *(v335 + 5) = v301;
        (v270)(&v554, 0);
      }

      v258 = type metadata accessor for TranscriptProtoAction;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_92;
      }

      v253 = v506;
      sub_20E19B570(v233, v506, type metadata accessor for TranscriptProtoClientAction);
      v254 = sub_20E1A4FBC(&v554, v549, v550);
      v256 = v255;
      v257 = v552;
      if (v547(v255, 1, v552))
      {
        (v254)(&v554, 0);
        v258 = type metadata accessor for TranscriptProtoClientAction;
      }

      else
      {
        v304 = *v253;
        v303 = v253[1];
        v305 = v256 + *(v257 + 5);
        v306 = *(type metadata accessor for SessionSignature(0) + 36);
        v307 = *(v305 + v306);

        v308 = swift_isUniquelyReferenced_nonNull_native();
        *(v305 + v306) = v307;
        if ((v308 & 1) == 0)
        {
          v307 = sub_20E225240(0, *(v307 + 2) + 1, 1, v307);
          *(v305 + v306) = v307;
        }

        v310 = *(v307 + 2);
        v309 = *(v307 + 3);
        if (v310 >= v309 >> 1)
        {
          v307 = sub_20E225240((v309 > 1), v310 + 1, 1, v307);
          *(v305 + v306) = v307;
        }

        *(v307 + 2) = v310 + 1;
        v311 = &v307[16 * v310];
        *(v311 + 4) = v304;
        *(v311 + 5) = v303;
        (v254)(&v554, 0);
        v258 = type metadata accessor for TranscriptProtoClientAction;
      }
    }

    v336 = v258;
    v337 = v253;
    goto LABEL_135;
  }

  if (EnumCaseMultiPayload != 19)
  {
    if (EnumCaseMultiPayload != 18)
    {
      if (EnumCaseMultiPayload == 7)
      {
        sub_20E19B570(v233, v516, type metadata accessor for TranscriptProtoSessionError);
        v235 = sub_20E1A4FBC(&v554, v549, v550);
        v237 = v236;
        v238 = v552;
        if (!v547(v236, 1, v552))
        {
          *(v237 + *(v238 + 5) + 1) = 1;
        }

        (v235)(&v554, 0);
        v239 = v511;
        v240 = v516;
        v241 = v513;
        sub_20E0486F4(v516, v513, &qword_27C863EE0, &qword_20E325D18);
        v242 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
        if ((*(*(v242 - 8) + 48))(v241, 1, v242) == 1)
        {
          v243 = v500;
          sub_20E19B69C(v240, v500, type metadata accessor for TranscriptProtoSessionError);
          v244 = sub_20E3227B0();
          v245 = sub_20E322A40();
          if (os_log_type_enabled(v244, v245))
          {
            v246 = swift_slowAlloc();
            v247 = swift_slowAlloc();
            v554 = v247;
            *v246 = 136315138;
            sub_20E065D4C(&qword_27C863EE8, type metadata accessor for TranscriptProtoSessionError, &protocol conformance descriptor for TranscriptProtoSessionError);
            v248 = sub_20E322470();
            v250 = v249;
            sub_20E19B5D8(v243, type metadata accessor for TranscriptProtoSessionError);
            v251 = sub_20E31B6C4(v248, v250, &v554);

            *(v246 + 4) = v251;
            _os_log_impl(&dword_20E031000, v244, v245, "Unrecognized error from sessionError: %s", v246, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v247);
            MEMORY[0x20F32CA80](v247, -1, -1);
            v252 = v246;
            v241 = v513;
            MEMORY[0x20F32CA80](v252, -1, -1);
          }

          else
          {

            sub_20E19B5D8(v243, type metadata accessor for TranscriptProtoSessionError);
          }

          sub_20E19B5D8(v240, type metadata accessor for TranscriptProtoSessionError);
          sub_20E19B5D8(v520, type metadata accessor for TranscriptProtoPayloadEnum);
LABEL_175:
          v227 = &qword_27C863EE0;
          v228 = &qword_20E325D18;
          v229 = v241;
          return sub_20E04875C(v229, v227, v228);
        }

        v282 = v499;
        sub_20E0486F4(v241, v499, &qword_27C863EE0, &qword_20E325D18);
        v283 = swift_getEnumCaseMultiPayload();
        if (v283 <= 1)
        {
          if (!v283)
          {
            v284 = v494;
            sub_20E19B570(v282, v494, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            v285 = sub_20E1A4FBC(&v554, v549, v550);
            v287 = v286;
            v288 = v552;
            if (!v547(v286, 1, v552))
            {
              v289 = *(v494 + 16);
              v290 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
              v291 = sub_20E322860();
              v292 = [v290 initWithDomain:v291 code:v289 userInfo:0];

              v293 = [v292 debugDescription];
              v294 = sub_20E322890();
              v296 = v295;

              v241 = v513;
              v297 = v287 + *(v288 + 5);
              *(v297 + 8) = v294;
              *(v297 + 16) = v296;
              v284 = v494;
            }

            (v285)(&v554, 0);
            sub_20E19B5D8(v284, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            v298 = 1;
            goto LABEL_191;
          }

          v342 = v488;
          sub_20E19B570(v282, v488, type metadata accessor for TranscriptProtoSessionCoordinatorError);
          v343 = v495;
          sub_20E0486F4(v342, v495, &qword_27C863ED8, &unk_20E33C2B0);
          v344 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
          if ((*(*(v344 - 8) + 48))(v343, 1, v344) != 1)
          {
            v345 = v495;
            v346 = v479;
            sub_20E0486F4(v495, v479, &qword_27C863ED8, &unk_20E33C2B0);
            if (swift_getEnumCaseMultiPayload() <= 1)
            {
              v347 = v472;
              sub_20E19B570(v346, v472, type metadata accessor for TranscriptProtoIntelligenceFlowError);
              sub_20E04875C(v345, &qword_27C863ED8, &unk_20E33C2B0);
              v348 = sub_20E1A4FBC(&v554, v549, v550);
              v350 = v349;
              v351 = v552;
              if (v547(v349, 1, v552))
              {
                sub_20E19B5D8(v347, type metadata accessor for TranscriptProtoIntelligenceFlowError);
              }

              else
              {
                v433 = *(v347 + 16);
                v434 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
                v435 = sub_20E322860();
                v436 = [v434 initWithDomain:v435 code:v433 userInfo:0];

                v437 = [v436 debugDescription];
                v438 = sub_20E322890();
                v440 = v439;

                v241 = v513;
                sub_20E19B5D8(v347, type metadata accessor for TranscriptProtoIntelligenceFlowError);
                v441 = v350 + *(v351 + 5);
                *(v441 + 8) = v438;
                *(v441 + 16) = v440;
              }

              (v348)(&v554, 0);
              sub_20E19B5D8(v488, type metadata accessor for TranscriptProtoSessionCoordinatorError);
              v298 = 2;
              goto LABEL_191;
            }

            sub_20E19B5D8(v346, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
          }

          v390 = v484;
          sub_20E19B69C(v342, v484, type metadata accessor for TranscriptProtoSessionCoordinatorError);
          v391 = sub_20E3227B0();
          v392 = sub_20E322A40();
          if (os_log_type_enabled(v391, v392))
          {
            v393 = swift_slowAlloc();
            v394 = swift_slowAlloc();
            v554 = v394;
            *v393 = 136315138;
            sub_20E065D4C(&qword_27C863F00, type metadata accessor for TranscriptProtoSessionCoordinatorError, &protocol conformance descriptor for TranscriptProtoSessionCoordinatorError);
            v395 = sub_20E322470();
            v397 = v396;
            sub_20E19B5D8(v390, type metadata accessor for TranscriptProtoSessionCoordinatorError);
            v398 = sub_20E31B6C4(v395, v397, &v554);

            *(v393 + 4) = v398;
            _os_log_impl(&dword_20E031000, v391, v392, "Unrecognized error from sessionCoordinatorError: %s", v393, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v394);
            MEMORY[0x20F32CA80](v394, -1, -1);
            v399 = v393;
            v241 = v513;
            MEMORY[0x20F32CA80](v399, -1, -1);
          }

          else
          {

            sub_20E19B5D8(v390, type metadata accessor for TranscriptProtoSessionCoordinatorError);
          }

          sub_20E19B5D8(v342, type metadata accessor for TranscriptProtoSessionCoordinatorError);
          sub_20E19B5D8(v516, type metadata accessor for TranscriptProtoSessionError);
          sub_20E19B5D8(v520, type metadata accessor for TranscriptProtoPayloadEnum);
          v400 = v495;
          v388 = &qword_27C863ED8;
          v389 = &unk_20E33C2B0;
LABEL_174:
          sub_20E04875C(v400, v388, v389);
          goto LABEL_175;
        }

        if (v283 == 2)
        {
          v312 = v491;
          sub_20E19B570(v282, v491, type metadata accessor for TranscriptProtoPlannerError);
          v313 = v486;
          sub_20E0486F4(v312, v486, &qword_27C863ED0, &unk_20E33C2C0);
          v314 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
          if ((*(*(v314 - 8) + 48))(v313, 1, v314) == 1)
          {
            goto LABEL_125;
          }

          v315 = v480;
          sub_20E0486F4(v313, v480, &qword_27C863ED0, &unk_20E33C2C0);
          v316 = swift_getEnumCaseMultiPayload();
          if (v316)
          {
            if (v316 == 1)
            {
              sub_20E19B5D8(v315, type metadata accessor for TranscriptProtoPlannerErrorEnum);
              v312 = v491;
LABEL_125:
              v317 = v483;
              sub_20E19B69C(v312, v483, type metadata accessor for TranscriptProtoPlannerError);
              v318 = sub_20E3227B0();
              v319 = sub_20E322A40();
              v320 = v312;
              if (os_log_type_enabled(v318, v319))
              {
                v321 = swift_slowAlloc();
                v322 = swift_slowAlloc();
                v554 = v322;
                *v321 = 136315138;
                sub_20E065D4C(&qword_27C863EF8, type metadata accessor for TranscriptProtoPlannerError, &protocol conformance descriptor for TranscriptProtoPlannerError);
                v323 = sub_20E322470();
                v325 = v324;
                sub_20E19B5D8(v317, type metadata accessor for TranscriptProtoPlannerError);
                v326 = sub_20E31B6C4(v323, v325, &v554);

                *(v321 + 4) = v326;
                _os_log_impl(&dword_20E031000, v318, v319, "Unrecognized error from plannerError: %s", v321, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v322);
                MEMORY[0x20F32CA80](v322, -1, -1);
                v327 = v321;
                v241 = v513;
                MEMORY[0x20F32CA80](v327, -1, -1);

                v328 = v320;
              }

              else
              {

                sub_20E19B5D8(v317, type metadata accessor for TranscriptProtoPlannerError);
                v328 = v312;
              }

              sub_20E19B5D8(v328, type metadata accessor for TranscriptProtoPlannerError);
              sub_20E19B5D8(v516, type metadata accessor for TranscriptProtoSessionError);
              sub_20E19B5D8(v520, type metadata accessor for TranscriptProtoPayloadEnum);
              v388 = &qword_27C863ED0;
              v389 = &unk_20E33C2C0;
LABEL_173:
              v400 = v313;
              goto LABEL_174;
            }

            v427 = sub_20E1A4FBC(&v554, v549, v550);
            v429 = v428;
            if (!v547(v428, 1, v552))
            {
              sub_20E065D4C(&qword_27C863EF8, type metadata accessor for TranscriptProtoPlannerError, &protocol conformance descriptor for TranscriptProtoPlannerError);
              v430 = sub_20E322470();
              v431 = v429 + *(v552 + 5);
              *(v431 + 8) = v430;
              *(v431 + 16) = v432;
            }

            (v427)(&v554, 0);
            v241 = v513;
            sub_20E19B5D8(v491, type metadata accessor for TranscriptProtoPlannerError);
          }

          else
          {
            v414 = v473;
            sub_20E19B570(v315, v473, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            v415 = sub_20E1A4FBC(&v554, v549, v550);
            v417 = v416;
            if (!v547(v416, 1, v552))
            {
              v418 = *(v473 + 16);
              v419 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
              v420 = sub_20E322860();
              v421 = [v419 initWithDomain:v420 code:v418 userInfo:0];

              v422 = [v421 debugDescription];
              v423 = sub_20E322890();
              v425 = v424;

              v241 = v513;
              v426 = v417 + *(v552 + 5);
              *(v426 + 8) = v423;
              *(v426 + 16) = v425;
              v414 = v473;
            }

            (v415)(&v554, 0);
            sub_20E19B5D8(v491, type metadata accessor for TranscriptProtoPlannerError);
            sub_20E19B5D8(v414, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            v313 = v486;
          }

          sub_20E04875C(v313, &qword_27C863ED0, &unk_20E33C2C0);
          v298 = 3;
          goto LABEL_191;
        }

        v352 = v490;
        sub_20E19B570(v282, v490, type metadata accessor for TranscriptProtoExecutorError);
        v313 = v489;
        sub_20E0486F4(v352, v489, &qword_27C863EC8, &unk_20E359E90);
        v353 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
        if ((*(*(v353 - 8) + 48))(v313, 1, v353) == 1)
        {
          v354 = v482;
          sub_20E19B69C(v352, v482, type metadata accessor for TranscriptProtoExecutorError);
          v355 = v352;
          v356 = sub_20E3227B0();
          v357 = sub_20E322A40();
          if (os_log_type_enabled(v356, v357))
          {
            v358 = swift_slowAlloc();
            v359 = swift_slowAlloc();
            v554 = v359;
            *v358 = 136315138;
            sub_20E065D4C(&qword_27C863EF0, type metadata accessor for TranscriptProtoExecutorError, &protocol conformance descriptor for TranscriptProtoExecutorError);
            v360 = sub_20E322470();
            v362 = v361;
            sub_20E19B5D8(v354, type metadata accessor for TranscriptProtoExecutorError);
            v363 = sub_20E31B6C4(v360, v362, &v554);

            *(v358 + 4) = v363;
            _os_log_impl(&dword_20E031000, v356, v357, "Unrecognized error from executorError: %s", v358, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v359);
            MEMORY[0x20F32CA80](v359, -1, -1);
            v364 = v358;
            v241 = v513;
            MEMORY[0x20F32CA80](v364, -1, -1);
          }

          else
          {

            sub_20E19B5D8(v354, type metadata accessor for TranscriptProtoExecutorError);
          }

          sub_20E19B5D8(v355, type metadata accessor for TranscriptProtoExecutorError);
          sub_20E19B5D8(v516, type metadata accessor for TranscriptProtoSessionError);
          sub_20E19B5D8(v520, type metadata accessor for TranscriptProtoPayloadEnum);
          v388 = &qword_27C863EC8;
          v389 = &unk_20E359E90;
          goto LABEL_173;
        }

        v365 = v481;
        sub_20E0486F4(v313, v481, &qword_27C863EC8, &unk_20E359E90);
        if ((*(v477 + 48))(v365, 1, v478) == 1)
        {
          v366 = sub_20E1A4FBC(&v554, v549, v550);
          v368 = v367;
          v369 = v552;
          if (v547(v367, 1, v552))
          {
            (v366)(&v554, 0);
            v241 = v513;
            v370 = v490;
          }

          else
          {
            sub_20E065D4C(&qword_27C863EF0, type metadata accessor for TranscriptProtoExecutorError, &protocol conformance descriptor for TranscriptProtoExecutorError);
            v370 = v490;
            v442 = sub_20E322470();
            v443 = v368 + *(v369 + 5);
            *(v443 + 8) = v442;
            *(v443 + 16) = v444;

            (v366)(&v554, 0);
            v241 = v513;
          }

          sub_20E19B5D8(v370, type metadata accessor for TranscriptProtoExecutorError);
        }

        else
        {
          sub_20E19B570(v365, v239, type metadata accessor for TranscriptProtoIntelligenceFlowError);
          v401 = sub_20E1A4FBC(&v554, v549, v550);
          v403 = v402;
          v404 = v552;
          if (!v547(v402, 1, v552))
          {
            v405 = *(v511 + 2);
            v406 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
            v407 = sub_20E322860();
            v408 = [v406 initWithDomain:v407 code:v405 userInfo:0];

            v409 = [v408 debugDescription];
            v410 = sub_20E322890();
            v412 = v411;

            v241 = v513;
            v413 = v403 + *(v404 + 5);
            *(v413 + 8) = v410;
            *(v413 + 16) = v412;
            v239 = v511;
          }

          (v401)(&v554, 0);
          sub_20E19B5D8(v490, type metadata accessor for TranscriptProtoExecutorError);
          sub_20E19B5D8(v239, type metadata accessor for TranscriptProtoIntelligenceFlowError);
          v313 = v489;
        }

        sub_20E04875C(v313, &qword_27C863EC8, &unk_20E359E90);
        v298 = 4;
LABEL_191:
        sub_20E04875C(v241, &qword_27C863EE0, &qword_20E325D18);
        v445 = *v551;
        if (*(*v551 + 16) && (v446 = sub_20E1ACAD0(v549, v550), (v447 & 1) != 0))
        {
          v448 = *(v445 + 56) + v530[9] * v446;
          v449 = v493;
          sub_20E19B69C(v448, v493, type metadata accessor for SessionData);
          v450 = 0;
        }

        else
        {
          v450 = 1;
          v449 = v493;
        }

        v451 = v552;
        v196(v449, v450, 1, v552);
        if (v547(v449, 1, v451))
        {
          v452 = MEMORY[0x277D84F90];
        }

        else
        {
          v453 = v449 + *(v451 + 5);
          v452 = *(v453 + *(type metadata accessor for SessionSignature(0) + 44));
        }

        sub_20E04875C(v449, &qword_27C8688F0, &unk_20E33B920);
        v454 = *v551;
        if (*(*v551 + 16) && (v455 = sub_20E1ACAD0(v549, v550), (v456 & 1) != 0))
        {
          sub_20E19B69C(*(v454 + 56) + v530[9] * v455, v496, type metadata accessor for SessionData);
          v457 = 0;
        }

        else
        {
          v457 = 1;
        }

        v458 = v496;
        v459 = v552;
        v196(v496, v457, 1, v552);
        v460 = v459;
        if (v547(v458, 1, v459))
        {
          v461 = 0;
          v462 = 0xE000000000000000;
        }

        else
        {
          v463 = v458 + *(v459 + 5);
          v461 = *(v463 + 8);
          v462 = *(v463 + 16);
        }

        v464 = v516;
        sub_20E04875C(v458, &qword_27C8688F0, &unk_20E33B920);
        v465 = sub_20E1A4FBC(&v554, v549, v550);
        v467 = v466;
        if (v547(v466, 1, v460))
        {
        }

        else
        {
          v553 = v298;
          v468 = v485;
          sub_20E19AC78(v545, &v553, v461, v462, v452, v485);

          v469 = v467 + *(v460 + 5);
          v470 = type metadata accessor for SessionSignature(0);
          sub_20E05EC5C(v468, v469 + *(v470 + 28), &qword_27C8688E8, &unk_20E3573E0);
        }

        (v465)(&v554, 0);
        v336 = type metadata accessor for TranscriptProtoSessionError;
        v337 = v464;
LABEL_135:
        sub_20E19B5D8(v337, v336);
        v278 = type metadata accessor for TranscriptProtoPayloadEnum;
        v277 = v520;
        return sub_20E19B5D8(v277, v278);
      }

LABEL_92:
      v274 = type metadata accessor for TranscriptProtoPayloadEnum;
      v275 = v520;
      v276 = type metadata accessor for TranscriptProtoPayloadEnum;
LABEL_93:
      sub_20E19B5D8(v275, v276);
      v277 = v233;
      v278 = v274;
      return sub_20E19B5D8(v277, v278);
    }

    v125 = v512;
    sub_20E19B570(v233, v512, type metadata accessor for TranscriptProtoSystemResponse);
    v264 = *v125;
    if (*(*v125 + 16))
    {
      v265 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) - 8);
      v266 = v502;
      sub_20E0486F4(v264 + ((*(v265 + 80) + 32) & ~*(v265 + 80)), v502, &qword_27C863BA8, &unk_20E345F00);
      v267 = type metadata accessor for TranscriptProtoStatementOutcome(0);
      v268 = (*(*(v267 - 8) + 48))(v266, 1, v267);
      v269 = v515;
      if (v268 == 1)
      {
        sub_20E19B5D8(v520, type metadata accessor for TranscriptProtoPayloadEnum);
        sub_20E04875C(v266, &qword_27C863BA8, &unk_20E345F00);
        goto LABEL_105;
      }

      v226 = v510;
      sub_20E0486F4(v266, v510, &qword_27C863BA0, &unk_20E325F20);
      sub_20E19B5D8(v266, type metadata accessor for TranscriptProtoStatementOutcome);
      if ((*(v514 + 48))(v226, 1, v269) != 1)
      {
        sub_20E19B570(v226, v192, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        v338 = sub_20E1A4FBC(&v554, v549, v550);
        v340 = v339;
        v341 = v552;
        if (v547(v339, 1, v552))
        {
          (v338)(&v554, 0);
        }

        else
        {
          v371 = TranscriptProtoStatementOutcomeEnum.description.getter();
          v373 = v372;
          v374 = v340 + *(v341 + 5);
          v375 = *(type metadata accessor for SessionSignature(0) + 40);
          v376 = *(v374 + v375);
          v377 = swift_isUniquelyReferenced_nonNull_native();
          *(v374 + v375) = v376;
          if ((v377 & 1) == 0)
          {
            v376 = sub_20E225240(0, *(v376 + 2) + 1, 1, v376);
            *(v374 + v375) = v376;
          }

          v379 = *(v376 + 2);
          v378 = *(v376 + 3);
          if (v379 >= v378 >> 1)
          {
            v376 = sub_20E225240((v378 > 1), v379 + 1, 1, v376);
            *(v374 + v375) = v376;
          }

          v125 = v512;
          *(v376 + 2) = v379 + 1;
          v380 = &v376[16 * v379];
          *(v380 + 4) = v371;
          *(v380 + 5) = v373;
          (v338)(&v554, 0);
        }

        v233 = v487;
        sub_20E19B69C(v192, v487, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (!swift_getEnumCaseMultiPayload())
        {
          sub_20E19B5D8(v233, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          v381 = sub_20E1A4FBC(&v554, v549, v550);
          v383 = v382;
          if (!v547(v382, 1, v341))
          {
            *(v383 + *(v341 + 5) + 1) = 0;
          }

          (v381)(&v554, 0);
          sub_20E19B5D8(v192, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          sub_20E19B5D8(v520, type metadata accessor for TranscriptProtoPayloadEnum);
          v278 = type metadata accessor for TranscriptProtoSystemResponse;
          v277 = v125;
          return sub_20E19B5D8(v277, v278);
        }

        v274 = type metadata accessor for TranscriptProtoStatementOutcomeEnum;
        sub_20E19B5D8(v192, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        sub_20E19B5D8(v520, type metadata accessor for TranscriptProtoPayloadEnum);
        v276 = type metadata accessor for TranscriptProtoSystemResponse;
        v275 = v125;
        goto LABEL_93;
      }

      sub_20E19B5D8(v520, type metadata accessor for TranscriptProtoPayloadEnum);
LABEL_106:
      sub_20E19B5D8(v125, type metadata accessor for TranscriptProtoSystemResponse);
      v227 = &qword_27C863BA0;
      v228 = &unk_20E325F20;
LABEL_70:
      v229 = v226;
      return sub_20E04875C(v229, v227, v228);
    }

LABEL_104:
    sub_20E19B5D8(v520, type metadata accessor for TranscriptProtoPayloadEnum);
    v269 = v515;
LABEL_105:
    v226 = v510;
    (*(v514 + 56))(v510, 1, 1, v269);
    goto LABEL_106;
  }

  v259 = v509;
  sub_20E19B570(v233, v509, type metadata accessor for TranscriptProtoStatementResult);
  v260 = v508;
  sub_20E0486F4(v259 + *(v505 + 20), v508, &qword_27C863FB8, &unk_20E325F60);
  v261 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  if ((*(*(v261 - 8) + 48))(v260, 1, v261) == 1)
  {
    sub_20E19B5D8(v259, type metadata accessor for TranscriptProtoStatementResult);
    sub_20E19B5D8(v520, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E04875C(v260, &qword_27C863FB8, &unk_20E325F60);
    v262 = v515;
    v263 = v504;
LABEL_96:
    (*(v514 + 56))(v263, 1, 1, v262);
LABEL_97:
    v227 = &qword_27C863BA0;
    v228 = &unk_20E325F20;
    v229 = v263;
    return sub_20E04875C(v229, v227, v228);
  }

  v279 = v501;
  sub_20E0486F4(v260, v501, &qword_27C863BA8, &unk_20E345F00);
  sub_20E19B5D8(v260, type metadata accessor for TranscriptProtoStatementResultPayload);
  v280 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v281 = (*(*(v280 - 8) + 48))(v279, 1, v280);
  v262 = v515;
  v263 = v504;
  if (v281 == 1)
  {
    sub_20E19B5D8(v259, type metadata accessor for TranscriptProtoStatementResult);
    sub_20E19B5D8(v520, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E04875C(v279, &qword_27C863BA8, &unk_20E345F00);
    goto LABEL_96;
  }

  sub_20E0486F4(v279, v504, &qword_27C863BA0, &unk_20E325F20);
  sub_20E19B5D8(v279, type metadata accessor for TranscriptProtoStatementOutcome);
  if ((*(v514 + 48))(v263, 1, v262) == 1)
  {
    sub_20E19B5D8(v259, type metadata accessor for TranscriptProtoStatementResult);
    sub_20E19B5D8(v520, type metadata accessor for TranscriptProtoPayloadEnum);
    goto LABEL_97;
  }

  if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E19B5D8(v263, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v384 = sub_20E1A4FBC(&v554, v549, v550);
    v386 = v385;
    v387 = v552;
    if (!v547(v385, 1, v552))
    {
      *(v386 + *(v387 + 5) + 1) = 0;
    }

    (v384)(&v554, 0);
    v336 = type metadata accessor for TranscriptProtoStatementResult;
    v337 = v259;
    goto LABEL_135;
  }

  sub_20E19B5D8(v259, type metadata accessor for TranscriptProtoStatementResult);
  sub_20E19B5D8(v520, type metadata accessor for TranscriptProtoPayloadEnum);
  v278 = type metadata accessor for TranscriptProtoStatementOutcomeEnum;
  v277 = v263;
  return sub_20E19B5D8(v277, v278);
}

uint64_t sub_20E19AC78@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a4;
  v62 = a5;
  v60 = a3;
  v66 = a1;
  v69 = a6;
  v7 = type metadata accessor for ParticipantInfo(0);
  v57 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  MEMORY[0x28223BE20](v10 - 8);
  v59 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC0, &unk_20E325F70);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v56 - v16;
  v65 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v18 = *(v65 - 8);
  v19 = MEMORY[0x28223BE20](v65);
  v64 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v63 = &v56 - v21;
  v22 = type metadata accessor for AttributionTraits(0);
  v67 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (&v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = *a2;
  v25[2] = 0;
  v25[3] = 0;
  v26 = *(v23 + 24);
  v27 = sub_20E322060();
  v28 = *(*(v27 - 8) + 56);
  v28(v25 + v26, 1, 1, v27);
  v68 = v22;
  v29 = (v25 + *(v22 + 28));
  *v25 = 0;
  v25[1] = 0;
  sub_20E04875C(v25 + v26, &qword_27C863A90, &unk_20E33C020);
  v28(v25 + v26, 1, 1, v27);
  v30 = type metadata accessor for TranscriptProtoEvent(0);
  *v29 = 0;
  v29[1] = 0;
  sub_20E0486F4(v66 + *(v30 + 44), v14, &qword_27C863FC0, &unk_20E325F70);
  v31 = type metadata accessor for TranscriptProtoPayload(0);
  if ((*(*(v31 - 8) + 48))(v14, 1, v31) == 1)
  {
    sub_20E04875C(v14, &qword_27C863FC0, &unk_20E325F70);
    (*(v18 + 56))(v17, 1, 1, v65);
LABEL_4:
    sub_20E04875C(v17, &qword_27C863FC8, &unk_20E33C1D0);
    (*(v67 + 56))(v69, 1, 1, v68);
    return sub_20E19B5D8(v25, type metadata accessor for AttributionTraits);
  }

  sub_20E0486F4(v14, v17, &qword_27C863FC8, &unk_20E33C1D0);
  sub_20E19B5D8(v14, type metadata accessor for TranscriptProtoPayload);
  if ((*(v18 + 48))(v17, 1, v65) == 1)
  {
    goto LABEL_4;
  }

  v32 = v63;
  sub_20E19B570(v17, v63, type metadata accessor for TranscriptProtoPayloadEnum);
  v33 = v64;
  sub_20E19B69C(v32, v64, type metadata accessor for TranscriptProtoPayloadEnum);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v34 = v61;
    *v29 = v60;
    v29[1] = v34;

    v35 = v59;
    sub_20E322020();
    sub_20E05EC5C(v35, v25 + v26, &qword_27C863A90, &unk_20E33C020);
    if (v58 <= 3)
    {
      v36 = v62;
      if (v58 > 1)
      {
        if (v58 == 2)
        {
          v37 = 0x800000020E35A1B0;
          v38 = 0xD000000000000012;
        }

        else
        {
          v37 = 0xE700000000000000;
          v38 = 0x72656E6E616C70;
        }
      }

      else if (v58)
      {
        v37 = 0xE500000000000000;
        v38 = 0x726568746FLL;
      }

      else
      {
        v37 = 0xE700000000000000;
        v38 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      v36 = v62;
      if (v58 <= 5)
      {
        if (v58 == 4)
        {
          v37 = 0xE800000000000000;
          v38 = 0x726F747563657865;
        }

        else
        {
          v37 = 0xE700000000000000;
          v38 = 0x74696B6C6F6F74;
        }
      }

      else if (v58 == 6)
      {
        v37 = 0xE600000000000000;
        v38 = 0x746E65696C63;
      }

      else if (v58 == 7)
      {
        v37 = 0xE900000000000074;
        v38 = 0x6E65746E49707061;
      }

      else
      {
        v37 = 0xED0000656C626163;
        v38 = 0x696C707041746F6ELL;
      }
    }

    v25[2] = v38;
    v25[3] = v37;
    v40 = *(v36 + 16);
    if (v40)
    {
      v41 = v36 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
      v42 = *(v57 + 72);
      v66 = 0x800000020E35F380;
      v43 = MEMORY[0x277D84F90];
      do
      {
        sub_20E19B69C(v41, v9, type metadata accessor for ParticipantInfo);
        if (v9[1])
        {
          v44 = *v9;
          v45 = v9[1];
        }

        else
        {
          v44 = 0xD000000000000013;
          v45 = v66;
        }

        sub_20E19B5D8(v9, type metadata accessor for ParticipantInfo);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_20E225240(0, *(v43 + 2) + 1, 1, v43);
        }

        v47 = *(v43 + 2);
        v46 = *(v43 + 3);
        if (v47 >= v46 >> 1)
        {
          v43 = sub_20E225240((v46 > 1), v47 + 1, 1, v43);
        }

        *(v43 + 2) = v47 + 1;
        v48 = &v43[16 * v47];
        *(v48 + 4) = v44;
        *(v48 + 5) = v45;
        v41 += v42;
        --v40;
      }

      while (v40);
    }

    else
    {
      v43 = MEMORY[0x277D84F90];
    }

    v70 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868900, &qword_20E357400);
    sub_20E19B638();
    v49 = sub_20E322830();
    v51 = v50;

    v70 = v49;
    v71 = v51;

    MEMORY[0x20F32BF40](0x29726F72724528, 0xE700000000000000);

    v52 = v70;
    v53 = v71;
    sub_20E19B5D8(v63, type metadata accessor for TranscriptProtoPayloadEnum);
    *v25 = v52;
    v25[1] = v53;
    v54 = v69;
    sub_20E19B69C(v25, v69, type metadata accessor for AttributionTraits);
    (*(v67 + 56))(v54, 0, 1, v68);
    v39 = v64;
  }

  else
  {
    sub_20E19B5D8(v32, type metadata accessor for TranscriptProtoPayloadEnum);
    (*(v67 + 56))(v69, 1, 1, v68);
    v39 = v33;
  }

  sub_20E19B5D8(v39, type metadata accessor for TranscriptProtoPayloadEnum);
  return sub_20E19B5D8(v25, type metadata accessor for AttributionTraits);
}

uint64_t sub_20E19B570(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E19B5D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20E19B638()
{
  result = qword_27C868908;
  if (!qword_27C868908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C868900, &qword_20E357400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868908);
  }

  return result;
}

uint64_t sub_20E19B69C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_20E19B704(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868668, &qword_20E33B670);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868680, &unk_20E33C260);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v10, &qword_27C868680, &unk_20E33C260);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20E19BAE4(v10);
    return 0;
  }

  sub_20E19BB4C(v10, v14, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  v15 = [objc_allocWithZone(MEMORY[0x277D57CF0]) init];
  sub_20E0486F4(v14, v7, &qword_27C868668, &qword_20E33B670);
  v16 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(0);
  if ((*(*(v16 - 8) + 48))(v7, 1, v16) == 1)
  {
    sub_20E19BBB4(v14, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);

    return 0;
  }

  sub_20E19BB4C(v7, v4, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  v17 = [objc_allocWithZone(MEMORY[0x277D57CF8]) init];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
    v20 = sub_20E322860();
    [v19 setBundleId_];

    v21 = *(v2 + 24);
    v22 = v19;
    [v22 setSource_];

    [v22 setIsExplicit_];
  }

  if (v15)
  {
    [v15 setGenerativeAIEnablement_];

    sub_20E19BBB4(v14, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  }

  else
  {
    sub_20E19BBB4(v14, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  }

  sub_20E19BBB4(v4, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  return v15;
}

uint64_t sub_20E19BAE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868680, &unk_20E33C260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E19BB4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E19BBB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t UsageMetricsDefinitions.clientSessionId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UsageMetricsDefinitions.clientSessionId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UsageMetricsDefinitions.dateStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UsageMetricsDefinitions(0) + 20);
  v4 = sub_20E322010();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for UsageMetricsDefinitions(uint64_t a1)
{
  result = qword_27C868948;
  if (!qword_27C868948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UsageMetricsDefinitions.dateStamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UsageMetricsDefinitions(0) + 20);
  v4 = sub_20E322010();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UsageMetricsDefinitions.useCase.getter()
{
  v1 = *(v0 + *(type metadata accessor for UsageMetricsDefinitions(0) + 24));

  return v1;
}

uint64_t UsageMetricsDefinitions.useCase.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for UsageMetricsDefinitions(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t UsageMetricsDefinitions.completionStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UsageMetricsDefinitions(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t UsageMetricsDefinitions.completionStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for UsageMetricsDefinitions(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t UsageMetricsDefinitions.errorMessage.getter()
{
  v1 = *(v0 + *(type metadata accessor for UsageMetricsDefinitions(0) + 32));

  return v1;
}

uint64_t UsageMetricsDefinitions.errorMessage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for UsageMetricsDefinitions(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t UsageMetricsDefinitions.attribution.getter()
{
  v1 = *(v0 + *(type metadata accessor for UsageMetricsDefinitions(0) + 36));

  return v1;
}

uint64_t UsageMetricsDefinitions.attribution.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for UsageMetricsDefinitions(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t UsageMetricsDefinitions.planGenerationLatency.setter(uint64_t a1)
{
  result = type metadata accessor for UsageMetricsDefinitions(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t UsageMetricsDefinitions.actionGenerationLatency.setter(uint64_t a1)
{
  result = type metadata accessor for UsageMetricsDefinitions(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t UsageMetricsDefinitions.executionLatency.setter(uint64_t a1)
{
  result = type metadata accessor for UsageMetricsDefinitions(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

unint64_t sub_20E19C324(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6553746E65696C63;
    v6 = 0x65736143657375;
    if (a1 != 2)
    {
      v6 = 0xD000000000000010;
    }

    if (a1)
    {
      v5 = 0x6D61745365746164;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    v2 = 0xD000000000000017;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x73654D726F727265;
    if (a1 != 4)
    {
      v3 = 0x7475626972747461;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_20E19C47C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20E19D2A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20E19C4B0(uint64_t a1)
{
  v2 = sub_20E19C828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E19C4EC(uint64_t a1)
{
  v2 = sub_20E19C828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UsageMetricsDefinitions.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868910, &qword_20E33B930);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E19C828();
  sub_20E322E40();
  v11[15] = 0;
  sub_20E322D10();
  if (!v2)
  {
    v9 = type metadata accessor for UsageMetricsDefinitions(0);
    v11[14] = 1;
    sub_20E322010();
    sub_20E19CE58(&qword_27C868920, MEMORY[0x277CC9580]);
    sub_20E322D40();
    v11[13] = 2;
    sub_20E322D10();
    v11[12] = *(v3 + *(v9 + 28));
    v11[11] = 3;
    sub_20E19C87C();
    sub_20E322D40();
    v11[10] = 4;
    sub_20E322D10();
    v11[9] = 5;
    sub_20E322D10();
    v11[8] = 6;
    sub_20E322D30();
    v11[7] = 7;
    sub_20E322D30();
    v11[6] = 8;
    sub_20E322D30();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_20E19C828()
{
  result = qword_27C868918;
  if (!qword_27C868918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868918);
  }

  return result;
}

unint64_t sub_20E19C87C()
{
  result = qword_27C868928;
  if (!qword_27C868928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868928);
  }

  return result;
}

uint64_t UsageMetricsDefinitions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_20E322010();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868930, &qword_20E33B938);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v28 - v7;
  v9 = type metadata accessor for UsageMetricsDefinitions(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_20E19C828();
  v32 = v8;
  sub_20E322E20();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v34);
  }

  v13 = v6;
  v14 = v30;
  v15 = v31;
  v44 = 0;
  *v11 = sub_20E322C80();
  v11[1] = v16;
  v43 = 1;
  sub_20E19CE58(&qword_27C868938, MEMORY[0x277CC95A0]);
  sub_20E322CB0();
  (*(v15 + 32))(v11 + v9[5], v13, v4);
  v42 = 2;
  v28 = 0;
  v17 = sub_20E322C80();
  v18 = (v11 + v9[6]);
  *v18 = v17;
  v18[1] = v19;
  v40 = 3;
  sub_20E19CE9C();
  sub_20E322CB0();
  *(v11 + v9[7]) = v41;
  v39 = 4;
  v20 = sub_20E322C80();
  v21 = (v11 + v9[8]);
  *v21 = v20;
  v21[1] = v22;
  v38 = 5;
  v23 = sub_20E322C80();
  v24 = (v11 + v9[9]);
  *v24 = v23;
  v24[1] = v25;
  v37 = 6;
  *(v11 + v9[10]) = sub_20E322CA0();
  v36 = 7;
  *(v11 + v9[11]) = sub_20E322CA0();
  v35 = 8;
  v26 = sub_20E322CA0();
  (*(v14 + 8))(v32, v33);
  *(v11 + v9[12]) = v26;
  sub_20E19CEF0(v11, v29);
  __swift_destroy_boxed_opaque_existential_0(v34);
  return sub_20E19CF54(v11);
}

uint64_t sub_20E19CE58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_20E322010();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20E19CE9C()
{
  result = qword_27C868940;
  if (!qword_27C868940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868940);
  }

  return result;
}

uint64_t sub_20E19CEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UsageMetricsDefinitions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E19CF54(uint64_t a1)
{
  v2 = type metadata accessor for UsageMetricsDefinitions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E19CFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_20E322010();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E19D024(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_20E322010();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E19D0F0(uint64_t a1)
{
  result = sub_20E322010();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_20E19D1A0()
{
  result = qword_27C868958;
  if (!qword_27C868958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868958);
  }

  return result;
}

unint64_t sub_20E19D1F8()
{
  result = qword_27C868960;
  if (!qword_27C868960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868960);
  }

  return result;
}

unint64_t sub_20E19D250()
{
  result = qword_27C868968;
  if (!qword_27C868968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868968);
  }

  return result;
}

uint64_t sub_20E19D2A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6553746E65696C63 && a2 == 0xEF64496E6F697373;
  if (v4 || (sub_20E322D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D61745365746164 && a2 == 0xE900000000000070 || (sub_20E322D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736143657375 && a2 == 0xE700000000000000 || (sub_20E322D60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020E35F3A0 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173 || (sub_20E322D60() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEB000000006E6F69 || (sub_20E322D60() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x800000020E35F3C0 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020E35F3E0 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020E35F400 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_20E322D60();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_20E19D5A4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C868970);
  __swift_project_value_buffer(v0, qword_27C868970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326320;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VOICE_ONLY";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VOICE_FORWARD";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DISPLAY_FORWARD";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "DISPLAY_ONLY";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E19D89C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C868988);
  __swift_project_value_buffer(v0, qword_27C868988);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326320;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "client_request_id";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utterance";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "response_mode";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "response_locale";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "statement_result_digests";
  *(v15 + 8) = 24;
  *(v15 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ResponseGenerationProtoResponseGenerationInput.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E3222B0();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_4:
          sub_20E3223E0();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_20E19F8D8();
            sub_20E322310();
            break;
          case 4:
            goto LABEL_4;
          case 5:
            type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
            sub_20E1A0C44(&qword_27C8689C0, type metadata accessor for ResponseGenerationProtoStatementResultDigest, &protocol conformance descriptor for ResponseGenerationProtoStatementResultDigest);
            sub_20E322420();
            break;
        }
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_20E322540(), !v4))
  {
    v8 = *(v3 + 24);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_20E322540(), !v4))
    {
      if (!*(v3 + 32) || (sub_20E19F8D8(), result = sub_20E3224D0(), !v4))
      {
        v10 = *(v3 + 48);
        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = *(v3 + 40) & 0xFFFFFFFFFFFFLL;
        }

        if (!v11 || (result = sub_20E322540(), !v4))
        {
          if (!*(*(v3 + 56) + 16) || (type metadata accessor for ResponseGenerationProtoStatementResultDigest(0), sub_20E1A0C44(&qword_27C8689C0, type metadata accessor for ResponseGenerationProtoStatementResultDigest, &protocol conformance descriptor for ResponseGenerationProtoStatementResultDigest), result = sub_20E322570(), !v4))
          {
            type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0);
            return sub_20E3221A0();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_20E19DECC@<X0>(uint64_t a2@<X8>)
{
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E19DF64(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E1A0C44(&qword_27C868A18, type metadata accessor for ResponseGenerationProtoResponseGenerationInput, &protocol conformance descriptor for ResponseGenerationProtoResponseGenerationInput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E19E004(uint64_t a1)
{
  sub_20E1A0C44(&qword_27C8689F0, type metadata accessor for ResponseGenerationProtoResponseGenerationInput, &protocol conformance descriptor for ResponseGenerationProtoResponseGenerationInput);

  return sub_20E322470();
}

uint64_t sub_20E19E070(uint64_t a1, uint64_t a2)
{
  sub_20E1A0C44(&qword_27C8689F0, type metadata accessor for ResponseGenerationProtoResponseGenerationInput, &protocol conformance descriptor for ResponseGenerationProtoResponseGenerationInput);

  return sub_20E322480();
}

uint64_t sub_20E19E10C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8689A0);
  __swift_project_value_buffer(v0, qword_27C8689A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tool_definition";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "action_created";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "statement_outcome";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "undo_operation";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "response_manifest";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "return_value_type_display_representation";
  *(v18 + 1) = 40;
  v18[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ResponseGenerationProtoStatementResultDigest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_20E19E6FC(a1, v5, a2, a3);
            break;
          case 5:
            sub_20E19E770(a1, v5, a2, a3);
            break;
          case 6:
            sub_20E19E824(a1, v5, a2, a3);
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
            sub_20E1A0C44(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);
            sub_20E322430();
            break;
          case 2:
            sub_20E19E594(a1, v5, a2, a3);
            break;
          case 3:
            sub_20E19E648(a1, v5, a2, a3);
            break;
        }
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E19E594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  type metadata accessor for TranscriptProtoAction(0);
  sub_20E1A0C44(&qword_27C866530, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);
  return sub_20E322430();
}

uint64_t sub_20E19E648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_20E1A0C44(qword_280E09BF8, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);
  return sub_20E322430();
}

uint64_t sub_20E19E6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_20E184A80();
  return sub_20E322300();
}

uint64_t sub_20E19E770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_20E1A0C44(&qword_27C866C80, type metadata accessor for TranscriptProtoResponseManifest, &protocol conformance descriptor for TranscriptProtoResponseManifest);
  return sub_20E322430();
}

uint64_t sub_20E19E824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_20E1A0C44(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  return sub_20E322430();
}

uint64_t ResponseGenerationProtoStatementResultDigest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E19E9C8(v3, a1, a2, a3);
  if (!v4)
  {
    sub_20E19EBCC(v3, a1, a2, a3);
    sub_20E19EDDC(v3, a1, a2, a3);
    sub_20E19EFEC(v3, a1, a2, a3);
    sub_20E19F07C(v3, a1, a2, a3);
    sub_20E19F28C(v3, a1, a2, a3);
    type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E19E9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v7, &qword_27C863B90, &unk_20E345EF0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B90, &unk_20E345EF0);
  }

  sub_20E1A0BDC(v7, v11, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E1A0C44(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1);
  sub_20E322580();
  return sub_20E1A0B7C(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1);
}

uint64_t sub_20E19EBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F10, &qword_20E33AFE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoAction(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_20E0486F4(a1 + *(v12 + 20), v7, &qword_27C867F10, &qword_20E33AFE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C867F10, &qword_20E33AFE0);
  }

  sub_20E1A0BDC(v7, v11, type metadata accessor for TranscriptProtoAction);
  sub_20E1A0C44(&qword_27C866530, type metadata accessor for TranscriptProtoAction, &protocol conformance descriptor for TranscriptProtoAction);
  sub_20E322580();
  return sub_20E1A0B7C(v11, type metadata accessor for TranscriptProtoAction);
}

uint64_t sub_20E19EDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_20E0486F4(a1 + *(v12 + 24), v7, &qword_27C863BA8, &unk_20E345F00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863BA8, &unk_20E345F00);
  }

  sub_20E1A0BDC(v7, v11, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_20E1A0C44(qword_280E09BF8, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);
  sub_20E322580();
  return sub_20E1A0B7C(v11, type metadata accessor for TranscriptProtoStatementOutcome);
}

uint64_t sub_20E19EFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    sub_20E184A80();
    return sub_20E3224D0();
  }

  return result;
}

uint64_t sub_20E19F07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B48, &unk_20E33C280);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_20E0486F4(a1 + *(v12 + 32), v7, &qword_27C863B48, &unk_20E33C280);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C863B48, &unk_20E33C280);
  }

  sub_20E1A0BDC(v7, v11, type metadata accessor for TranscriptProtoResponseManifest);
  sub_20E1A0C44(&qword_27C866C80, type metadata accessor for TranscriptProtoResponseManifest, &protocol conformance descriptor for TranscriptProtoResponseManifest);
  sub_20E322580();
  return sub_20E1A0B7C(v11, type metadata accessor for TranscriptProtoResponseManifest);
}

uint64_t sub_20E19F28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A20, &qword_20E345F10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_20E0486F4(a1 + *(v12 + 36), v7, &qword_27C868A20, &qword_20E345F10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20E04875C(v7, &qword_27C868A20, &qword_20E345F10);
  }

  sub_20E1A0BDC(v7, v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E1A0C44(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, &protocol conformance descriptor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E322580();
  return sub_20E1A0B7C(v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_20E19F4E8(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_20E322DE0();
  a1(0);
  sub_20E1A0C44(a2, a3, a4);
  sub_20E322820();
  return sub_20E322E00();
}

uint64_t sub_20E19F570@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[5];
  v6 = type metadata accessor for TranscriptProtoAction(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[6];
  v8 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[8];
  *(a2 + a1[7]) = 2;
  v10 = type metadata accessor for TranscriptProtoResponseManifest(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = a1[9];
  v12 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E19F74C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E1A0C44(&qword_27C868A10, type metadata accessor for ResponseGenerationProtoStatementResultDigest, &protocol conformance descriptor for ResponseGenerationProtoStatementResultDigest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E19F7EC(uint64_t a1)
{
  sub_20E1A0C44(&qword_27C8689C0, type metadata accessor for ResponseGenerationProtoStatementResultDigest, &protocol conformance descriptor for ResponseGenerationProtoStatementResultDigest);

  return sub_20E322470();
}

uint64_t sub_20E19F858(uint64_t a1, uint64_t a2)
{
  sub_20E1A0C44(&qword_27C8689C0, type metadata accessor for ResponseGenerationProtoStatementResultDigest, &protocol conformance descriptor for ResponseGenerationProtoStatementResultDigest);

  return sub_20E322480();
}

unint64_t sub_20E19F8D8()
{
  result = qword_27C8689B8;
  if (!qword_27C8689B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8689B8);
  }

  return result;
}

uint64_t _s23LighthouseDataProcessor44ResponseGenerationProtoStatementResultDigestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v113 = a1;
  v114 = a2;
  v2 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v94 = *(v2 - 8);
  v95 = v2;
  MEMORY[0x28223BE20](v2);
  v91 = (&v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A20, &qword_20E345F10);
  MEMORY[0x28223BE20](v4 - 8);
  v109 = (&v90 - v5);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A28, &qword_20E33BE88);
  MEMORY[0x28223BE20](v93);
  v96 = &v90 - v6;
  v7 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v98 = *(v7 - 8);
  v99 = v7;
  MEMORY[0x28223BE20](v7);
  v92 = (&v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B48, &unk_20E33C280);
  MEMORY[0x28223BE20](v9 - 8);
  v108 = (&v90 - v10);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868640, &qword_20E33B650);
  MEMORY[0x28223BE20](v97);
  v100 = &v90 - v11;
  v12 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v105 = *(v12 - 8);
  v106 = v12;
  MEMORY[0x28223BE20](v12);
  v101 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  MEMORY[0x28223BE20](v14 - 8);
  v102 = &v90 - v15;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868000, &qword_20E33B0B8);
  MEMORY[0x28223BE20](v104);
  v107 = &v90 - v16;
  v17 = type metadata accessor for TranscriptProtoAction(0);
  v111 = *(v17 - 8);
  v112 = v17;
  MEMORY[0x28223BE20](v17);
  v103 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F10, &qword_20E33AFE0);
  MEMORY[0x28223BE20](v19 - 8);
  v110 = &v90 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A30, &unk_20E33BE90);
  MEMORY[0x28223BE20](v21);
  v23 = &v90 - v22;
  v24 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v90 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FC8, &qword_20E33B088);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v34 = &v90 - v33;
  v35 = *(v32 + 56);
  sub_20E0486F4(v113, &v90 - v33, &qword_27C863B90, &unk_20E345EF0);
  sub_20E0486F4(v114, &v34[v35], &qword_27C863B90, &unk_20E345EF0);
  v36 = *(v25 + 48);
  if (v36(v34, 1, v24) == 1)
  {
    if (v36(&v34[v35], 1, v24) == 1)
    {
      sub_20E04875C(v34, &qword_27C863B90, &unk_20E345EF0);
      goto LABEL_8;
    }

LABEL_6:
    v37 = &qword_27C867FC8;
    v38 = &qword_20E33B088;
    v39 = v34;
LABEL_21:
    sub_20E04875C(v39, v37, v38);
    goto LABEL_22;
  }

  sub_20E0486F4(v34, v30, &qword_27C863B90, &unk_20E345EF0);
  if (v36(&v34[v35], 1, v24) == 1)
  {
    sub_20E1A0B7C(v30, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    goto LABEL_6;
  }

  sub_20E1A0BDC(&v34[v35], v27, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v40 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v30, v27);
  sub_20E1A0B7C(v27, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E1A0B7C(v30, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E04875C(v34, &qword_27C863B90, &unk_20E345EF0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v41 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  v42 = *(v41 + 20);
  v43 = *(v21 + 48);
  v44 = v113;
  sub_20E0486F4(v113 + v42, v23, &qword_27C867F10, &qword_20E33AFE0);
  v45 = v114;
  sub_20E0486F4(v114 + v42, &v23[v43], &qword_27C867F10, &qword_20E33AFE0);
  v46 = v112;
  v47 = *(v111 + 48);
  if (v47(v23, 1, v112) == 1)
  {
    if (v47(&v23[v43], 1, v46) == 1)
    {
      sub_20E04875C(v23, &qword_27C867F10, &qword_20E33AFE0);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v48 = v110;
  sub_20E0486F4(v23, v110, &qword_27C867F10, &qword_20E33AFE0);
  if (v47(&v23[v43], 1, v46) == 1)
  {
    sub_20E1A0B7C(v48, type metadata accessor for TranscriptProtoAction);
LABEL_13:
    v37 = &qword_27C868A30;
    v38 = &unk_20E33BE90;
    v39 = v23;
    goto LABEL_21;
  }

  v49 = v103;
  sub_20E1A0BDC(&v23[v43], v103, type metadata accessor for TranscriptProtoAction);
  v50 = _s23LighthouseDataProcessor21TranscriptProtoActionV2eeoiySbAC_ACtFZ_0(v48, v49);
  sub_20E1A0B7C(v49, type metadata accessor for TranscriptProtoAction);
  sub_20E1A0B7C(v48, type metadata accessor for TranscriptProtoAction);
  sub_20E04875C(v23, &qword_27C867F10, &qword_20E33AFE0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v51 = v41;
  v52 = *(v41 + 24);
  v53 = *(v104 + 48);
  v54 = v107;
  sub_20E0486F4(v44 + v52, v107, &qword_27C863BA8, &unk_20E345F00);
  sub_20E0486F4(v45 + v52, v54 + v53, &qword_27C863BA8, &unk_20E345F00);
  v55 = v106;
  v56 = *(v105 + 48);
  if (v56(v54, 1, v106) == 1)
  {
    v57 = v56(v54 + v53, 1, v55);
    v59 = v108;
    v58 = v109;
    if (v57 == 1)
    {
      sub_20E04875C(v54, &qword_27C863BA8, &unk_20E345F00);
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v60 = v102;
  sub_20E0486F4(v54, v102, &qword_27C863BA8, &unk_20E345F00);
  v61 = v56(v54 + v53, 1, v55);
  v59 = v108;
  v58 = v109;
  if (v61 == 1)
  {
    sub_20E1A0B7C(v60, type metadata accessor for TranscriptProtoStatementOutcome);
LABEL_20:
    v37 = &qword_27C868000;
    v38 = &qword_20E33B0B8;
    v39 = v54;
    goto LABEL_21;
  }

  v64 = v54 + v53;
  v65 = v101;
  sub_20E1A0BDC(v64, v101, type metadata accessor for TranscriptProtoStatementOutcome);
  v66 = _s23LighthouseDataProcessor31TranscriptProtoStatementOutcomeV2eeoiySbAC_ACtFZ_0(v60, v65);
  sub_20E1A0B7C(v65, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_20E1A0B7C(v60, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_20E04875C(v54, &qword_27C863BA8, &unk_20E345F00);
  if ((v66 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  v67 = v51[7];
  v68 = *(v44 + v67);
  v69 = *(v45 + v67);
  if (v68 == 2)
  {
    if (v69 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v69 == 2 || ((v69 ^ v68) & 1) != 0)
  {
    goto LABEL_22;
  }

  v70 = v58;
  v71 = v51[8];
  v72 = *(v97 + 48);
  v73 = v100;
  sub_20E0486F4(v44 + v71, v100, &qword_27C863B48, &unk_20E33C280);
  v74 = v45 + v71;
  v75 = v73;
  sub_20E0486F4(v74, v73 + v72, &qword_27C863B48, &unk_20E33C280);
  v76 = v99;
  v77 = *(v98 + 48);
  if (v77(v73, 1, v99) != 1)
  {
    sub_20E0486F4(v73, v59, &qword_27C863B48, &unk_20E33C280);
    if (v77(v73 + v72, 1, v76) != 1)
    {
      v78 = v73 + v72;
      v79 = v92;
      sub_20E1A0BDC(v78, v92, type metadata accessor for TranscriptProtoResponseManifest);
      v80 = _s23LighthouseDataProcessor31TranscriptProtoResponseManifestV2eeoiySbAC_ACtFZ_0(v59, v79);
      sub_20E1A0B7C(v79, type metadata accessor for TranscriptProtoResponseManifest);
      sub_20E1A0B7C(v59, type metadata accessor for TranscriptProtoResponseManifest);
      sub_20E04875C(v73, &qword_27C863B48, &unk_20E33C280);
      if ((v80 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_37;
    }

    sub_20E1A0B7C(v59, type metadata accessor for TranscriptProtoResponseManifest);
LABEL_35:
    v37 = &qword_27C868640;
    v38 = &qword_20E33B650;
LABEL_43:
    v39 = v75;
    goto LABEL_21;
  }

  if (v77(v73 + v72, 1, v76) != 1)
  {
    goto LABEL_35;
  }

  sub_20E04875C(v73, &qword_27C863B48, &unk_20E33C280);
LABEL_37:
  v81 = v51[9];
  v82 = *(v93 + 48);
  v83 = v96;
  sub_20E0486F4(v44 + v81, v96, &qword_27C868A20, &qword_20E345F10);
  v84 = v45 + v81;
  v75 = v83;
  sub_20E0486F4(v84, v83 + v82, &qword_27C868A20, &qword_20E345F10);
  v85 = v95;
  v86 = *(v94 + 48);
  if (v86(v83, 1, v95) == 1)
  {
    if (v86(v83 + v82, 1, v85) == 1)
    {
      sub_20E04875C(v83, &qword_27C868A20, &qword_20E345F10);
LABEL_45:
      sub_20E3221C0();
      sub_20E1A0C44(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v62 = sub_20E322850();
      return v62 & 1;
    }

    goto LABEL_42;
  }

  sub_20E0486F4(v83, v70, &qword_27C868A20, &qword_20E345F10);
  if (v86(v83 + v82, 1, v85) == 1)
  {
    sub_20E1A0B7C(v70, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
LABEL_42:
    v37 = &qword_27C868A28;
    v38 = &qword_20E33BE88;
    goto LABEL_43;
  }

  v87 = v83 + v82;
  v88 = v91;
  sub_20E1A0BDC(v87, v91, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  v89 = _s23LighthouseDataProcessor37ToolKitProtoTypeDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v70, v88);
  sub_20E1A0B7C(v88, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E1A0B7C(v70, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E04875C(v83, &qword_27C868A20, &qword_20E345F10);
  if (v89)
  {
    goto LABEL_45;
  }

LABEL_22:
  v62 = 0;
  return v62 & 1;
}

uint64_t _s23LighthouseDataProcessor023ResponseGenerationProtodE5InputV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_20E322D60() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || (a1[5] != *(a2 + 40) || a1[6] != *(a2 + 48)) && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  if ((sub_20E1585FC(a1[7], *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0);
  sub_20E3221C0();
  sub_20E1A0C44(&qword_27C865988, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_20E322850() & 1;
}

unint64_t sub_20E1A0890()
{
  result = qword_27C8689D8;
  if (!qword_27C8689D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8689D8);
  }

  return result;
}

unint64_t sub_20E1A08E8()
{
  result = qword_27C8689E0;
  if (!qword_27C8689E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8689E0);
  }

  return result;
}

uint64_t sub_20E1A0B7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E1A0BDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E1A0C44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_20E1A0C90(uint64_t *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  v11 = 0x277E1B000uLL;
  v12 = [objc_allocWithZone(MEMORY[0x277D58160]) init];
  v13 = v12;
  v37 = v12;
  if (v12)
  {
    [v12 setExists_];
    sub_20E1A11D4();
    v14 = v13;
    v15 = sub_20E322960();
    [v14 setItems_];

    v13 = v37;
  }

  v16 = *a1;
  v17 = *(*a1 + 16);
  if (v17)
  {
    v41 = type metadata accessor for ToolKitProtoTypedValue(0);
    v18 = *(v41 - 8);
    v19 = v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v40 = *(v18 + 72);
    v38 = (v18 + 48);
    v39 = (v18 + 56);
    while (1)
    {
      sub_20E1A1220(v19, v10, type metadata accessor for ToolKitProtoTypedValue);
      v20 = v41;
      (*v39)(v10, 0, 1, v41);
      v21 = [objc_allocWithZone(MEMORY[0x277D58138]) *(v11 + 3936)];
      sub_20E06E698(v10, v8);
      if ((*v38)(v8, 1, v20) == 1)
      {
        break;
      }

      v23 = *v8;
      sub_20E047CF8(*v8);
      sub_20E06E7D4(v8, type metadata accessor for ToolKitProtoTypedValue);
      v22 = v10;
      if ((~v23 & 0xF000000000000007) == 0)
      {
        goto LABEL_18;
      }

      v24 = v23 >> 61;
      if ((v23 >> 61) <= 2)
      {
        goto LABEL_15;
      }

      if (v24 > 4)
      {
        sub_20E047CA8(v23);
        v22 = v10;
LABEL_18:
        sub_20E06E708(v22);
        if (v21)
        {
          goto LABEL_19;
        }

        goto LABEL_6;
      }

      if (v24 == 3)
      {
        v25 = swift_projectBox();
        sub_20E1A1220(v25, v4, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
        if (v21)
        {
          v26 = v21;
          v27 = sub_20E04F548(v4);
          [v26 setCollection_];

          v11 = 0x277E1B000;
          sub_20E06E7D4(v4, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
          sub_20E06E708(v10);
          sub_20E047CA8(v23);
          goto LABEL_19;
        }

        sub_20E06E7D4(v4, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
        sub_20E06E708(v10);
        sub_20E047CA8(v23);
      }

      else
      {
LABEL_15:
        sub_20E047CA8(v23);
        if (v21)
        {
          v28 = v21;
          v29 = sub_20E24FF14(v10);
          [v28 setValue_];

          sub_20E06E708(v10);
LABEL_19:
          if (v13)
          {
            v30 = v13;
            v31 = [v30 items];
            if (v31)
            {
              v32 = v31;
              sub_20E1A11D4();
              v33 = sub_20E322970();

              v42 = v33;
              v34 = v21;
              MEMORY[0x20F32BF90]();
              if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_20E322990();
              }

              sub_20E3229B0();
              if (v42)
              {
                v35 = sub_20E322960();
              }

              else
              {
                v35 = 0;
              }

              [v30 setItems_];

              v11 = 0x277E1B000;
              v13 = v37;
            }

            else
            {
              [v30 setItems_];
            }
          }

          else
          {
          }

          goto LABEL_6;
        }

        sub_20E06E708(v10);
      }

LABEL_6:
      v19 += v40;
      if (!--v17)
      {
        return v13;
      }
    }

    sub_20E06E708(v10);
    v22 = v8;
    goto LABEL_18;
  }

  return v13;
}

unint64_t sub_20E1A11D4()
{
  result = qword_27C868A40;
  if (!qword_27C868A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C868A40);
  }

  return result;
}

uint64_t sub_20E1A1220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_20E1A1288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868570, &qword_20E33B590);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D580E0]) init];
  if (v5)
  {
    sub_20E1A13C8(a1, v4);
    v6 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(0);
    if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
    {
      sub_20E1A1438(v4);
    }

    else
    {
      v7 = *v4;
      sub_20E1A14A0(v4);
      if (v7 != 2)
      {
        v8 = v5;
        if (v7)
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }

        goto LABEL_6;
      }
    }

    v8 = v5;
    v9 = 0;
LABEL_6:
    [v8 setAuthenticationLevel_];
  }

  return v5;
}

uint64_t sub_20E1A13C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868570, &qword_20E33B590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E1A1438(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868570, &qword_20E33B590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E1A14A0(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20E1A14FC(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoPermissionRequirement(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TranscriptProtoAppRequirement(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x277D57D28]) init];
  sub_20E1A18B8(a1, v13);
  v15 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v15 - 8) + 48))(v13, 1, v15) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_20E1A1928(v13, v7, type metadata accessor for TranscriptProtoPermissionRequirement);
        if (v14)
        {
          v26 = v14;
          v27 = sub_20E048240(v7);
          [v26 setPermissionRequirement_];
        }

        v24 = type metadata accessor for TranscriptProtoPermissionRequirement;
        v25 = v7;
        goto LABEL_26;
      }

      sub_20E1A1928(v13, v10, type metadata accessor for TranscriptProtoAppRequirement);
      if (!v14)
      {
LABEL_25:
        v24 = type metadata accessor for TranscriptProtoAppRequirement;
        v25 = v10;
LABEL_26:
        sub_20E1A1990(v25, v24);
        return v14;
      }

      v17 = objc_allocWithZone(MEMORY[0x277D57D48]);
      v18 = v14;
      v19 = [v17 init];
      v20 = v19;
      if (*v10 > 1u)
      {
        if (*v10 != 2 || !v19)
        {
          goto LABEL_24;
        }

        v21 = &selRef_setUserConfirmationRequired_;
        goto LABEL_23;
      }

      if (*v10)
      {
        if (v19)
        {
          v21 = &selRef_setAccountSetupRequired_;
          goto LABEL_23;
        }
      }

      else if (v19)
      {
        v21 = &selRef_setSignInRequired_;
LABEL_23:
        [v19 *v21];
      }

LABEL_24:
      [v18 setAppRequirement_];

      goto LABEL_25;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_20E1A1928(v13, v4, type metadata accessor for TranscriptProtoSystemRequirementMessage);
      if (v14)
      {
        v22 = v14;
        v23 = sub_20E04AFA4(v4);
        [v22 setSystemRequirement_];
      }

      v24 = type metadata accessor for TranscriptProtoSystemRequirementMessage;
      v25 = v4;
      goto LABEL_26;
    }

    if (v14)
    {
      [v14 setUnsupported_];
    }
  }

  return v14;
}

uint64_t sub_20E1A18B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E1A1928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E1A1990(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t UsageMetricsProducer.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000024;
  *(result + 24) = 0x800000020E35F5C0;
  return result;
}

uint64_t UsageMetricsProducer.init()()
{
  result = v0;
  *(v0 + 16) = 0xD000000000000024;
  *(v0 + 24) = 0x800000020E35F5C0;
  return result;
}

void sub_20E1A1A54(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A48, &qword_20E33BEA0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for UsageMetricsDefinitions(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2)
  {
    if (qword_27C863978 != -1)
    {
      swift_once();
    }

    v12 = sub_20E3227C0();
    __swift_project_value_buffer(v12, qword_27C8CC290);
    v24 = sub_20E3227B0();
    v13 = sub_20E322A40();
    if (os_log_type_enabled(v24, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20E031000, v24, v13, "Implement SELF for reporting", v14, 2u);
      MEMORY[0x20F32CA80](v14, -1, -1);
    }

    v15 = v24;
  }

  else
  {
    if (qword_27C863978 != -1)
    {
      swift_once();
    }

    v16 = sub_20E3227C0();
    __swift_project_value_buffer(v16, qword_27C8CC290);
    v17 = sub_20E3227B0();
    v18 = sub_20E322A40();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20E031000, v17, v18, "Using CoreAnalytics for reporting", v19, 2u);
      MEMORY[0x20F32CA80](v19, -1, -1);
    }

    v20 = *(a1 + 16);
    if (v20)
    {
      v21 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v22 = *(v5 + 72);
      do
      {
        sub_20E0486F4(v21, v7, &qword_27C868A48, &qword_20E33BEA0);
        if ((*(v9 + 48))(v7, 1, v8) == 1)
        {
          sub_20E04875C(v7, &qword_27C868A48, &qword_20E33BEA0);
        }

        else
        {
          sub_20E1A2B0C(v7, v11, type metadata accessor for UsageMetricsDefinitions);
          type metadata accessor for CoreAnalyticsEmitter();
          swift_initStaticObject();
          CoreAnalyticsEmitter.sendSageMetrics(eventCategory:eventPayload:)(v24[2].isa, v24[3].isa, v11);
          sub_20E1A2C4C(v11, type metadata accessor for UsageMetricsDefinitions);
        }

        v21 += v22;
        --v20;
      }

      while (v20);
    }
  }
}

void sub_20E1A1E18(uint64_t a1, char *a2)
{
  v3 = *a2;
  if (qword_27C863978 != -1)
  {
    swift_once();
  }

  v4 = sub_20E3227C0();
  __swift_project_value_buffer(v4, qword_27C8CC290);
  v5 = sub_20E3227B0();
  v6 = sub_20E322A40();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20E031000, v5, v6, "UsageMetricsProducer producing metrics", v7, 2u);
    MEMORY[0x20F32CA80](v7, -1, -1);
  }

  sub_20E1A20B8(a1);
  if (*(v8 + 16))
  {
    v12 = v3;
    sub_20E1A1A54(v8, &v12);
  }

  else
  {

    oslog = sub_20E3227B0();
    v9 = sub_20E322A40();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20E031000, oslog, v9, "No metrics formulated for reporting", v10, 2u);
      MEMORY[0x20F32CA80](v10, -1, -1);
    }
  }
}

uint64_t UsageMetricsProducer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_20E1A20B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A48, &qword_20E33BEA0);
  v87 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v86 = &v75 - v3;
  v100 = sub_20E322010();
  v4 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for UsageMetricsDefinitions(0);
  v6 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v98 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688E8, &unk_20E3573E0);
  MEMORY[0x28223BE20](v8 - 8);
  v84 = (&v75 - v9);
  v83 = type metadata accessor for PerfMetricsDefinitions(0);
  MEMORY[0x28223BE20](v83);
  v11 = (&v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for SessionData(0);
  v82 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v16);
  v80 = &v75 - v19;
  v20 = *(a1 + *(type metadata accessor for SessionView(0) + 28));
  v21 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v89 = (v22 + 63) >> 6;
  v78 = (v4 + 16);
  v77 = (v4 + 32);
  v76 = (v6 + 56);
  v88 = v20;

  v25 = 0;
  v102 = MEMORY[0x277D84F90];
  v26.n128_u64[0] = 136315138;
  v75 = v26;
  v27 = v11;
  v101 = v11;
  v28 = v15;
  v97 = v12;
  v81 = v15;
  v29 = v18;
  v90 = v18;
  v79 = v21;
  for (i = v89; v24; i = v89)
  {
LABEL_8:
    v32 = v80;
    sub_20E1A2B74(*(v88 + 56) + *(v82 + 72) * (__clz(__rbit64(v24)) | (v25 << 6)), v80, type metadata accessor for SessionData);
    sub_20E1A2B0C(v32, v29, type metadata accessor for SessionData);
    if (qword_27C863978 != -1)
    {
      swift_once();
    }

    v33 = sub_20E3227C0();
    __swift_project_value_buffer(v33, qword_27C8CC290);
    sub_20E1A2B74(v29, v28, type metadata accessor for SessionData);
    v34 = sub_20E3227B0();
    v35 = sub_20E322A40();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v103 = v37;
      *v36 = v75.n128_u32[0];
      v38 = (v28 + *(v97 + 24));
      v39 = *v38;
      v40 = v38[1];

      sub_20E1A2C4C(v28, type metadata accessor for SessionData);
      v41 = v39;
      v29 = v90;
      v42 = sub_20E31B6C4(v41, v40, &v103);
      v27 = v101;

      *(v36 + 4) = v42;
      _os_log_impl(&dword_20E031000, v34, v35, "Formulating metrics from sessionId:  %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      v43 = v37;
      v12 = v97;
      MEMORY[0x20F32CA80](v43, -1, -1);
      MEMORY[0x20F32CA80](v36, -1, -1);
    }

    else
    {

      sub_20E1A2C4C(v28, type metadata accessor for SessionData);
    }

    v44 = v84;
    sub_20E2259D8(v29, v27);
    v45 = v29 + *(v12 + 20);
    v46 = type metadata accessor for SessionSignature(0);
    v47 = v46;
    if (*(v45 + 1) == 1)
    {
      sub_20E0486F4(v45 + *(v46 + 28), v44, &qword_27C8688E8, &unk_20E3573E0);
      v48 = type metadata accessor for AttributionTraits(0);
      if ((*(*(v48 - 8) + 48))(v44, 1, v48) == 1)
      {
        sub_20E04875C(v44, &qword_27C8688E8, &unk_20E3573E0);
LABEL_18:

        v50 = 0xE700000000000000;
        v51 = 0x6E776F6E6B6E75;
        goto LABEL_19;
      }

      v51 = *v44;
      v50 = v44[1];

      sub_20E1A2C4C(v44, type metadata accessor for AttributionTraits);
      if (!v50)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v49 = (v45 + *(v46 + 48));
      v51 = *v49;
      v50 = v49[1];
    }

LABEL_19:
    v52 = (v29 + *(v12 + 24));
    v53 = v52[1];
    v94 = *v52;
    (*v78)(v99, v29, v100);
    v54 = *(v45 + *(v47 + 36));
    v55 = v54[2];
    v95 = v51;
    v96 = v50;
    if (v55)
    {
      v56 = v54[5];
      v93 = v54[4];
    }

    else
    {
      v56 = 0xE300000000000000;
      v93 = 6369134;
    }

    v57 = *(v45 + 1);
    v59 = *(v45 + 8);
    v58 = *(v45 + 16);
    v60 = v100;
    v61 = *(v101 + v83[7]);
    v92 = *(v101 + v83[8]);
    v91 = *(v101 + v83[9]);
    v63 = v98;
    v62 = v99;
    *v98 = v94;
    *(v63 + 1) = v53;
    v64 = v85;
    (*v77)(&v63[*(v85 + 20)], v62, v60);
    v65 = &v63[v64[6]];
    *v65 = v93;
    v65[1] = v56;
    v63[v64[7]] = v57;
    v66 = &v63[v64[8]];
    *v66 = v59;
    *(v66 + 1) = v58;
    v67 = &v63[v64[9]];
    v68 = v96;
    *v67 = v95;
    v67[1] = v68;
    *&v63[v64[10]] = v61;
    v69 = v91;
    *&v63[v64[11]] = v92;
    *&v63[v64[12]] = v69;
    v70 = v86;
    sub_20E1A2B74(v63, v86, type metadata accessor for UsageMetricsDefinitions);
    (*v76)(v70, 0, 1, v64);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v102 = sub_20E225374(0, v102[2] + 1, 1, v102);
    }

    v71 = v97;
    v28 = v81;
    v27 = v101;
    v73 = v102[2];
    v72 = v102[3];
    v29 = v90;
    if (v73 >= v72 >> 1)
    {
      v102 = sub_20E225374((v72 > 1), v73 + 1, 1, v102);
    }

    v24 &= v24 - 1;
    sub_20E1A2C4C(v98, type metadata accessor for UsageMetricsDefinitions);
    sub_20E1A2C4C(v27, type metadata accessor for PerfMetricsDefinitions);
    v74 = v102;
    v102[2] = v73 + 1;
    sub_20E1A2BDC(v70, v74 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v73);
    sub_20E1A2C4C(v29, type metadata accessor for SessionData);
    v21 = v79;
    v12 = v71;
  }

  while (1)
  {
    v31 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v31 >= i)
    {

      return;
    }

    v24 = *(v21 + 8 * v31);
    ++v25;
    if (v24)
    {
      v25 = v31;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_20E1A2B0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E1A2B74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E1A2BDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A48, &qword_20E33BEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E1A2C4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20E1A2CAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868510, &qword_20E33B548);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E1A2EDC(a1, v7);
  v12 = *(v9 + 48);
  if (v12(v7, 1, v8) == 1)
  {
    sub_20E1A2F4C(v7);
    return 0;
  }

  else
  {
    sub_20E1A2FB4(v7, v11);
    v13 = [objc_allocWithZone(MEMORY[0x277D57E50]) init];
    if (v13)
    {
      sub_20E1A2EDC(a1, v5);
      if (v12(v5, 1, v8) == 1)
      {
        sub_20E1A2F4C(v5);
        v14 = 0;
      }

      else
      {

        sub_20E1A3018(v5);
        v14 = sub_20E322860();
      }

      [v13 setBundleId_];

      [v13 setLinkShowOutputActionOptions_];
    }

    sub_20E1A3018(v11);
  }

  return v13;
}

uint64_t sub_20E1A2EDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868510, &qword_20E33B548);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E1A2F4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868510, &qword_20E33B548);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E1A2FB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E1A3018(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_20E1A3074(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868510, &qword_20E33B548);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868500, &qword_20E33B538);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868518, &unk_20E33C300);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v13, &qword_27C868518, &unk_20E33C300);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_20E04875C(v13, &qword_27C868518, &unk_20E33C300);
    return 0;
  }

  sub_20E1A3464(v13, v17, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  v18 = [objc_allocWithZone(MEMORY[0x277D57E48]) init];
  if (!v18)
  {
    sub_20E1A3530(v17, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
    return 0;
  }

  v19 = v18;
  sub_20E0486F4(v17, v10, &qword_27C868500, &qword_20E33B538);
  v20 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(0);
  if ((*(*(v20 - 8) + 48))(v10, 1, v20) != 1)
  {
    sub_20E1A3464(v10, v7, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
    sub_20E1A34CC(v7, v4);
    (*(v23 + 56))(v4, 0, 1, v24);
    v21 = sub_20E1A2CAC(v4);
    sub_20E04875C(v4, &qword_27C868510, &qword_20E33B548);
    [v19 setLinkAction_];

    sub_20E1A3530(v7, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  }

  sub_20E1A3530(v17, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  return v19;
}

uint64_t sub_20E1A3464(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E1A34CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E1A3530(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20E1A3590(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FB8, &unk_20E325F60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E1A3764(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20E1A37D4(v4);
    return 0;
  }

  else
  {
    sub_20E1A383C(v4, v8);
    v10 = [objc_allocWithZone(MEMORY[0x277D58090]) init];
    v9 = v10;
    if (v10)
    {
      v11 = v10;
      v12 = sub_20E051258(v8);
      [v11 setOutcome_];

      v13 = *(v5 + 20);
      v14 = v11;
      v15 = sub_20E04DEAC(&v8[v13]);
      [v14 setResponse_];
    }

    sub_20E1A38A0(v8);
  }

  return v9;
}

uint64_t sub_20E1A3764(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FB8, &unk_20E325F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E1A37D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FB8, &unk_20E325F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E1A383C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E1A38A0(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20E1A38FC(uint64_t a1, uint64_t a2)
{
  v90 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B88, &qword_20E323E78);
  MEMORY[0x28223BE20](v3 - 8);
  v87 = &v79 - v4;
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v83 = *(v5 - 8);
  v84 = v5;
  MEMORY[0x28223BE20](v5);
  v85 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  MEMORY[0x28223BE20](v81);
  v89 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868288, &qword_20E33B318);
  MEMORY[0x28223BE20](v8 - 8);
  v88 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v82 = (&v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v80 = (&v79 - v13);
  v92 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v86 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF8, &qword_20E33AFC8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v79 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v79 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F90, &unk_20E3461E0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v79 - v25;
  v27 = type metadata accessor for TranscriptProtoRequest(0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v26, &qword_27C863F90, &unk_20E3461E0);
  if ((*(v28 + 48))(v26, 1, v27) != 1)
  {
    sub_20E1A4544(v26, v30, type metadata accessor for TranscriptProtoRequest);
    v34 = [objc_allocWithZone(MEMORY[0x277D57FB0]) init];
    sub_20E0486F4(&v30[*(v27 + 20)], v17, &qword_27C867EF8, &qword_20E33AFC8);
    v35 = type metadata accessor for TranscriptProtoRequestContent(0);
    if ((*(*(v35 - 8) + 48))(v17, 1, v35) == 1)
    {
      sub_20E1A4614(v30, type metadata accessor for TranscriptProtoRequest);

      sub_20E04875C(v17, &qword_27C867EF8, &qword_20E33AFC8);
      v36 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
      v37 = v23;
      (*(*(v36 - 8) + 56))(v23, 1, 1, v36);
LABEL_7:
      v31 = &qword_27C865978;
      v32 = &qword_20E326390;
      v33 = v37;
      goto LABEL_8;
    }

    v37 = v23;
    sub_20E0486F4(v17, v23, &qword_27C865978, &qword_20E326390);
    sub_20E1A4614(v17, type metadata accessor for TranscriptProtoRequestContent);
    v38 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
    if ((*(*(v38 - 8) + 48))(v23, 1, v38) == 1)
    {
      sub_20E1A4614(v30, type metadata accessor for TranscriptProtoRequest);

      goto LABEL_7;
    }

    sub_20E0486F4(v23, v21, &qword_27C865978, &qword_20E326390);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v53 = v21;
        v54 = v85;
        sub_20E1A4544(v53, v85, type metadata accessor for TranscriptProtoSystemPromptResolution);
        v55 = v87;
        sub_20E1A45AC(v54, v87, type metadata accessor for TranscriptProtoSystemPromptResolution);
        (*(v83 + 56))(v55, 0, 1, v84);
        v56 = sub_20E04FB98(v55);
        sub_20E04875C(v55, &qword_27C863B88, &qword_20E323E78);
        [v34 setPromptResolution_];
        sub_20E1A4614(v54, type metadata accessor for TranscriptProtoSystemPromptResolution);
        sub_20E1A4614(v30, type metadata accessor for TranscriptProtoRequest);

LABEL_33:
        sub_20E04875C(v37, &qword_27C865978, &qword_20E326390);
        return v34;
      }

      v68 = [objc_allocWithZone(MEMORY[0x277D57FC8]) init];
      v69 = v68;
      if (v68)
      {
        [v68 setExists_];
      }

      if (v34)
      {
        [v34 setStop_];

        sub_20E1A4614(v30, type metadata accessor for TranscriptProtoRequest);
      }

      else
      {
        sub_20E1A4614(v30, type metadata accessor for TranscriptProtoRequest);
      }

      v70 = type metadata accessor for TranscriptProtoRequestContentEnum;
      v71 = v21;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v41 = v30;
        v42 = v21;
        v43 = v91;
        sub_20E1A4544(v42, v91, type metadata accessor for TranscriptProtoRequestContentTextContent);
        v44 = [objc_allocWithZone(MEMORY[0x277D57FD0]) init];
        if (v44)
        {
          v45 = v34;
          v46 = *(v92 + 20);
          v47 = objc_allocWithZone(MEMORY[0x277D58078]);
          v48 = v44;
          v49 = [v47 init];
          v50 = v43 + v46;
          v51 = v80;
          sub_20E0486F4(v50, v80, &qword_27C8639D0, &unk_20E33C230);
          v52 = type metadata accessor for TranscriptProtoStatementID(0);
          if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
          {
            sub_20E04875C(v51, &qword_27C8639D0, &unk_20E33C230);
          }

          else
          {
            v72 = *v51;
            sub_20E1A4614(v51, type metadata accessor for TranscriptProtoStatementID);
            v73 = v72;
            v43 = v91;
            [v49 setIndex_];
          }

          [v48 setStatementId_];

          v34 = v45;
        }

        v74 = v88;
        sub_20E1A45AC(v43, v88, type metadata accessor for TranscriptProtoRequestContentTextContent);
        (*(v86 + 56))(v74, 0, 1, v92);
        sub_20E31C960(v74, v90);
        v76 = v75;
        sub_20E04875C(v74, &qword_27C868288, &qword_20E33B318);
        [v44 setLinkId_];
        [v34 setText_];

        sub_20E1A4614(v43, type metadata accessor for TranscriptProtoRequestContentTextContent);
        sub_20E1A4614(v41, type metadata accessor for TranscriptProtoRequest);
        goto LABEL_33;
      }

      v57 = v30;
      v58 = v89;
      sub_20E1A4544(v21, v89, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      v59 = [objc_allocWithZone(MEMORY[0x277D57FC0]) init];
      v60 = [objc_allocWithZone(MEMORY[0x277D58070]) init];
      if (v60)
      {
        v61 = v60;
        v62 = v34;
        v63 = *(v81 + 24);
        v64 = [objc_allocWithZone(MEMORY[0x277D58078]) init];
        v65 = v58 + v63;
        v66 = v82;
        sub_20E0486F4(v65, v82, &qword_27C8639D0, &unk_20E33C230);
        v67 = type metadata accessor for TranscriptProtoStatementID(0);
        if ((*(*(v67 - 8) + 48))(v66, 1, v67) == 1)
        {
          sub_20E04875C(v66, &qword_27C8639D0, &unk_20E33C230);
        }

        else
        {
          v77 = *v66;
          sub_20E1A4614(v66, type metadata accessor for TranscriptProtoStatementID);
          [v64 setIndex_];
        }

        [v61 setStatementId_];

        v78 = v59;
        [v78 addCandidates_];

        v34 = v62;
      }

      [v34 setSpeech_];

      sub_20E1A4614(v58, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      v70 = type metadata accessor for TranscriptProtoRequest;
      v71 = v57;
    }

    sub_20E1A4614(v71, v70);
    goto LABEL_33;
  }

  v31 = &qword_27C863F90;
  v32 = &unk_20E3461E0;
  v33 = v26;
LABEL_8:
  sub_20E04875C(v33, v31, v32);
  return 0;
}

uint64_t sub_20E1A4544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E1A45AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E1A4614(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E1A4674(uint64_t a1)
{
  v2 = sub_20E322730();
  sub_20E1B256C(&qword_27C868AE0, MEMORY[0x277D20360], MEMORY[0x277D20358]);
  v3 = v2;
  sub_20E322740();
  if (!v1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = MEMORY[0x277D84F90];
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);

    sub_20E3227E0();

    if (qword_280E12B88 != -1)
    {
      swift_once();
    }

    v5 = sub_20E3227C0();
    __swift_project_value_buffer(v5, qword_280E12C48);

    v6 = sub_20E3227B0();
    v7 = sub_20E322A40();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      swift_beginAccess();
      *(v8 + 4) = *(*(v4 + 16) + 16);

      _os_log_impl(&dword_20E031000, v6, v7, "%ld of events loaded from Biome stream", v8, 0xCu);
      MEMORY[0x20F32CA80](v8, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v3 = *(v4 + 16);

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  return v3;
}

uint64_t sub_20E1A48F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E322600();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7, a1, v4);
  swift_beginAccess();
  v9 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_20E2250A8(0, v9[2] + 1, 1, v9);
    *(a2 + 16) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_20E2250A8((v11 > 1), v12 + 1, 1, v9);
    *(a2 + 16) = v9;
  }

  v16 = v4;
  v17 = MEMORY[0x277D1F720];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  v8(boxed_opaque_existential_1, v7, v4);
  v9[2] = v12 + 1;
  sub_20E06AF84(&v15, &v9[5 * v12 + 4]);
  (*(v5 + 8))(v7, v4);
  *(a2 + 16) = v9;
  return swift_endAccess();
}

void sub_20E1A4ABC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_20E1A4B24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_20E1A4B84(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_20E322B70();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20E322BC0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x20F32C150](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_20E322B50();
      sub_20E322B80();
      sub_20E322B90();
      sub_20E322B60();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_20E322BC0();
    sub_20E322B70();
  }

  return v8;
}

uint64_t sub_20E1A4CEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AD8, &qword_20E33C0B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_20E322600();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v24 = &v21 - v10;
  v11 = *(a1 + 16);
  v26 = MEMORY[0x277D84F90];
  sub_20E2FFD84(0, v11, 0);
  v12 = v26;
  if (v11)
  {
    v13 = a1 + 32;
    v22 = v4;
    v23 = (v6 + 56);
    v14 = (v6 + 32);
    while (1)
    {
      sub_20E1B24E4(v13, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C864000, &unk_20E33C0C0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v23)(v4, 0, 1, v5);
      v15 = *v14;
      v16 = v24;
      (*v14)(v24, v4, v5);
      v15(v9, v16, v5);
      v26 = v12;
      v17 = v9;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_20E2FFD84((v18 > 1), v19 + 1, 1);
        v12 = v26;
      }

      *(v12 + 16) = v19 + 1;
      v15((v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19), v17, v5);
      v13 += 40;
      --v11;
      v9 = v17;
      v4 = v22;
      if (!v11)
      {
        return v12;
      }
    }

    (*v23)(v4, 1, 1, v5);
    sub_20E04875C(v4, &qword_27C868AD8, &qword_20E33C0B8);
    return 0;
  }

  return v12;
}

uint64_t (*sub_20E1A4FBC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_20E1AD2A8(v6, a2, a3);
  return sub_20E1B26A4;
}

uint64_t (*sub_20E1A5044(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_20E1AD354(v6, a2, a3);
  return sub_20E1A50CC;
}

void sub_20E1A50D0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_20E1A511C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688F8, &unk_20E33C060);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ParticipantInfo(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_20E04875C(a1, &qword_27C8688F8, &unk_20E33C060);
    v13 = sub_20E1ACB90(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_20E1AEC2C();
        v17 = v21;
      }

      sub_20E1B2624(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for ParticipantInfo);
      sub_20E1AE2BC(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_20E04875C(v8, &qword_27C8688F8, &unk_20E33C060);
  }

  else
  {
    sub_20E1B2624(a1, v12, type metadata accessor for ParticipantInfo);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_20E1AE65C(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_20E1A5370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A60, &unk_20E33BFF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for RequestData(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_20E04875C(a1, &qword_27C868A60, &unk_20E33BFF0);
    sub_20E1AD464(a2, a3, v9);

    return sub_20E04875C(v9, &qword_27C868A60, &unk_20E33BFF0);
  }

  else
  {
    sub_20E1B2624(a1, v12, type metadata accessor for RequestData);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_20E1AE7B0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t BiomeSessionBuilder.__allocating_init()()
{
  v0 = swift_allocObject();
  BiomeSessionBuilder.init()();
  return v0;
}

void *BiomeSessionBuilder.init()()
{
  v0[3] = 0xD000000000000020;
  v0[4] = 0x800000020E35F640;
  type metadata accessor for DataProcessorBookmarkProvider();
  v1 = swift_allocObject();
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_20E322860();
  v4 = [v2 initWithSuiteName_];

  v1[2] = v4;
  v1[3] = 0xD000000000000020;
  v1[4] = 0x800000020E35F640;
  v1[5] = 0xD000000000000035;
  v1[6] = 0x800000020E35F6A0;
  v0[2] = v1;
  return v0;
}

uint64_t sub_20E1A5650(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v6 = sub_20E3227C0();
  __swift_project_value_buffer(v6, qword_280E12C48);

  v7 = sub_20E3227B0();
  v8 = sub_20E322A40();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_20E31B6C4(a1, a2, &v19);
    _os_log_impl(&dword_20E031000, v7, v8, "Updated user default to use custom bookmark: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F32CA80](v10, -1, -1);
    MEMORY[0x20F32CA80](v9, -1, -1);
  }

  v12 = v3[3];
  v11 = v3[4];
  type metadata accessor for DataProcessorBookmarkProvider();
  v13 = swift_allocObject();
  v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v15 = sub_20E322860();
  v16 = [v14 initWithSuiteName_];

  v13[2] = v16;
  v13[3] = v12;
  v13[4] = v11;
  v19 = v12;
  v20 = v11;

  MEMORY[0x20F32BF40](0xD000000000000015, 0x800000020E35F6E0);
  v17 = v20;
  v13[5] = v19;
  v13[6] = v17;
  v3[2] = v13;
}

uint64_t sub_20E1A5860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for SessionViewConfigs(0);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E1A58F8, 0, 0);
}

uint64_t sub_20E1A58F8()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  v4 = sub_20E322010();
  (*(*(v4 - 8) + 16))(v1, v2, v4);
  result = sub_20E322000();
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[6];
    v6 = v0[7];
    *(v6 + *(v7 + 24)) = v0[4];
    *(v6 + *(v7 + 28)) = &unk_282537450;
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_20E1A5A14;
    v9 = v0[7];
    v10 = v0[2];

    return sub_20E1A8E9C(v10, v9);
  }

  return result;
}

uint64_t sub_20E1A5A14()
{

  return MEMORY[0x2822009F8](sub_20E1A5B10, 0, 0);
}

uint64_t sub_20E1A5B10()
{
  sub_20E1B2484(*(v0 + 56), type metadata accessor for SessionViewConfigs);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20E1A5B90(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for SessionViewConfigs(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E1A5C24, 0, 0);
}

uint64_t sub_20E1A5C24()
{
  v2 = v0[4];
  v1 = v0[5];

  DataProcessorBookmarkProvider.lastCollectionDate.getter(v1);

  sub_20E322000();
  *(v1 + *(v2 + 24)) = 0;
  *(v1 + *(v2 + 28)) = &unk_282537478;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_20E1A5D0C;
  v4 = v0[5];
  v5 = v0[2];

  return sub_20E1A8E9C(v5, v4);
}

uint64_t sub_20E1A5D0C()
{

  return MEMORY[0x2822009F8](sub_20E1A5E08, 0, 0);
}

uint64_t sub_20E1A5E08()
{
  sub_20E1B2484(*(v0 + 40), type metadata accessor for SessionViewConfigs);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20E1A5E88(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for SessionViewConfigs(0);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E1A5F20, 0, 0);
}

uint64_t sub_20E1A5F20()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];

  DataProcessorBookmarkProvider.lastCollectionDate.getter(v1);

  sub_20E322000();
  *(v1 + *(v2 + 24)) = 0;
  *(v1 + *(v2 + 28)) = v3;
  if (*(v3 + 16) == 1 && (*(v0[3] + 32) & 1) == 0)
  {

    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_20E1A60A4;
    v9 = v0[6];
    v10 = v0[2];

    return sub_20E1A8E9C(v10, v9);
  }

  else
  {

    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_20E1A6220;
    v5 = v0[6];
    v6 = v0[2];

    return sub_20E1A67E4(v6, v5);
  }
}

uint64_t sub_20E1A60A4()
{

  return MEMORY[0x2822009F8](sub_20E1A61A0, 0, 0);
}

uint64_t sub_20E1A61A0()
{
  sub_20E1B2484(*(v0 + 48), type metadata accessor for SessionViewConfigs);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20E1A6220()
{

  return MEMORY[0x2822009F8](sub_20E1B2694, 0, 0);
}

uint64_t sub_20E1A631C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for SessionViewConfigs(0);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E1A63B8, 0, 0);
}

uint64_t sub_20E1A63B8()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = v0[4];
  v4 = sub_20E322010();
  (*(*(v4 - 8) + 16))(v1, v2, v4);
  result = sub_20E322000();
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[5];
    *(v6 + *(v7 + 24)) = v0[4];
    *(v6 + *(v7 + 28)) = v8;
    if (*(v8 + 16) == 1 && (*(v0[5] + 32) & 1) == 0)
    {

      v12 = swift_task_alloc();
      v0[9] = v12;
      *v12 = v0;
      v12[1] = sub_20E1A656C;
      v13 = v0[8];
      v14 = v0[2];

      return sub_20E1A8E9C(v14, v13);
    }

    else
    {

      v9 = swift_task_alloc();
      v0[10] = v9;
      *v9 = v0;
      v9[1] = sub_20E1A66E8;
      v10 = v0[8];
      v11 = v0[2];

      return sub_20E1A67E4(v11, v10);
    }
  }

  return result;
}

uint64_t sub_20E1A656C()
{

  return MEMORY[0x2822009F8](sub_20E1A6668, 0, 0);
}

uint64_t sub_20E1A6668()
{
  sub_20E1B2484(*(v0 + 64), type metadata accessor for SessionViewConfigs);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20E1A66E8()
{

  return MEMORY[0x2822009F8](sub_20E1B2698, 0, 0);
}

uint64_t sub_20E1A67E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868AD0, &qword_20E33C0A8);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v4 = sub_20E322010();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for SessionViewConfigs(0);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E1A696C, 0, 0);
}

uint64_t sub_20E1A696C()
{
  v49 = v0;
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v1 = sub_20E3227C0();
  v0[15] = __swift_project_value_buffer(v1, qword_280E12C48);
  v2 = sub_20E3227B0();
  v3 = sub_20E322A40();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20E031000, v2, v3, "Building SessionView from IF Transcript and IF Telemetry stream", v4, 2u);
    MEMORY[0x20F32CA80](v4, -1, -1);
  }

  v5 = v0[14];
  v6 = v0[3];

  sub_20E1B25BC(v6, v5, type metadata accessor for SessionViewConfigs);
  v7 = sub_20E3227B0();
  v8 = sub_20E322A40();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v48 = v12;
    *v11 = 136315138;
    sub_20E1B256C(&qword_280E12B30, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v13 = sub_20E322D50();
    v15 = v14;
    sub_20E1B2484(v10, type metadata accessor for SessionViewConfigs);
    v16 = sub_20E31B6C4(v13, v15, &v48);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_20E031000, v7, v8, "Bookmark: updating lastCollectionDate to current Date %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x20F32CA80](v12, -1, -1);
    MEMORY[0x20F32CA80](v11, -1, -1);
  }

  else
  {

    sub_20E1B2484(v10, type metadata accessor for SessionViewConfigs);
  }

  v17 = v0[12];
  v18 = v0[10];
  v19 = v0[11];
  v20 = v0[9];
  v45 = v0[8];
  v46 = v0[13];
  v21 = v0[3];
  v47 = v0[4];
  v22 = *(v46 + 20);
  v23 = v19[2];
  v23(v17, v21 + v22, v18);

  DataProcessorBookmarkProvider.lastCollectionDate.setter(v17);

  v23(v20, v21, v18);
  v24 = v19[7];
  v24(v20, 0, 1, v18);
  v23(v45, v21 + v22, v18);
  v24(v45, 0, 1, v18);
  if (*(v21 + *(v46 + 24)) >= 0x7FFFFFFFFFFFFFFFuLL)
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v25 = *(v21 + *(v46 + 24));
  }

  v26 = v19[6];
  if (v26(v20, 1, v18) == 1)
  {
    v27 = 0;
  }

  else
  {
    v29 = v0[10];
    v28 = v0[11];
    v30 = v0[9];
    v27 = sub_20E321FB0();
    (*(v28 + 8))(v30, v29);
  }

  v31 = v0[10];
  v32 = v0[8];
  if (v26(v32, 1, v31) == 1)
  {
    v33 = 0;
  }

  else
  {
    v34 = v0[11];
    v33 = sub_20E321FB0();
    (*(v34 + 8))(v32, v31);
  }

  v35 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v27 endDate:v33 maxEvents:v25 lastN:0 reversed:0];
  v0[16] = v35;

  v36 = sub_20E1A4674(v35);
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    v38 = sub_20E1A4CEC(v36);

    if (v38)
    {
      v37 = v38;
    }
  }

  v0[17] = v37;

  v39 = sub_20E3227B0();
  v40 = sub_20E322A40();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = *(v37 + 16);

    _os_log_impl(&dword_20E031000, v39, v40, "#BiomeSessionBuilder Number of IF Telemetry events events loaded: %ld", v41, 0xCu);
    MEMORY[0x20F32CA80](v41, -1, -1);
  }

  else
  {
  }

  v42 = *MEMORY[0x277CF0E60];
  v0[18] = *(v47 + 16);

  v43 = swift_task_alloc();
  v0[19] = v43;
  *v43 = v0;
  v43[1] = sub_20E1A6F68;

  return sub_20E1B0820(v42, v35, 0xD000000000000020, 0x800000020E35F790);
}

uint64_t sub_20E1A6F68(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_20E1A7088, 0, 0);
}

uint64_t sub_20E1A7088()
{
  if (*(v0 + 160) && (v1 = sub_20E1A4B84(*(v0 + 160)), *(v0 + 168) = v1, , v1))
  {
    if (v1 >> 62)
    {
      if (sub_20E322BC0())
      {
        goto LABEL_5;
      }
    }

    else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:

      v2 = sub_20E3227B0();
      v3 = sub_20E322A40();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 134217984;
        if (v1 >> 62)
        {
          v5 = sub_20E322BC0();
        }

        else
        {
          v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v4 + 4) = v5;

        _os_log_impl(&dword_20E031000, v2, v3, "Number of Sage Transcript events: %ld", v4, 0xCu);
        MEMORY[0x20F32CA80](v4, -1, -1);
      }

      else
      {
      }

      v14 = swift_task_alloc();
      *(v0 + 176) = v14;
      *v14 = v0;
      v14[1] = sub_20E1A73E0;

      return sub_20E068EAC(v1);
    }

    v6 = sub_20E3227B0();
    v7 = sub_20E322A40();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "BiomeSessionBuilder loaded empty list of events, not updating SessionView";
      goto LABEL_10;
    }
  }

  else
  {

    v6 = sub_20E3227B0();
    v7 = sub_20E322A40();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "BiomeSessionBuilder loaded nil IF transcript events, exiting SessionView builder";
LABEL_10:
      _os_log_impl(&dword_20E031000, v6, v7, v9, v8, 2u);
      MEMORY[0x20F32CA80](v8, -1, -1);
    }
  }

  v10 = *(v0 + 16);

  v11 = type metadata accessor for SessionView(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_20E1A73E0(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return MEMORY[0x2822009F8](sub_20E1A7500, 0, 0);
}

uint64_t sub_20E1A7500()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  sub_20E1A7784(v1);

  sub_20E0486F4(v1, v2, &qword_27C868AD0, &qword_20E33C0A8);
  v3 = sub_20E3227B0();
  v4 = sub_20E322A40();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 48);
  if (v5)
  {
    v7 = *(v0 + 40);
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    sub_20E0486F4(v6, v7, &qword_27C868AD0, &qword_20E33C0A8);
    v9 = type metadata accessor for SessionView(0);
    v10 = (*(*(v9 - 8) + 48))(v7, 1, v9);
    v11 = *(v0 + 40);
    if (v10 == 1)
    {
      sub_20E04875C(v11, &qword_27C868AD0, &qword_20E33C0A8);
      v12 = -1;
    }

    else
    {
      v12 = *(v11 + *(v9 + 24));
      sub_20E1B2484(v11, type metadata accessor for SessionView);
    }

    sub_20E04875C(*(v0 + 48), &qword_27C868AD0, &qword_20E33C0A8);
    *(v8 + 4) = v12;
    _os_log_impl(&dword_20E031000, v3, v4, "Formulated SessionView: num= %ld", v8, 0xCu);
    MEMORY[0x20F32CA80](v8, -1, -1);
  }

  else
  {
    sub_20E04875C(*(v0 + 48), &qword_27C868AD0, &qword_20E33C0A8);
  }

  v13 = *(v0 + 56);
  v14 = *(v0 + 16);

  sub_20E195AA4(v13, v14, &qword_27C868AD0, &qword_20E33C0A8);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_20E1A7784@<X0>(uint64_t a3@<X8>)
{
  v191 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688C0, &qword_20E33B870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v190 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868778, &unk_20E33C000);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v190 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  MEMORY[0x28223BE20](v9 - 8);
  v224 = &v190 - v10;
  v221 = type metadata accessor for RequestData(0);
  v220 = *(v221 - 8);
  v11 = MEMORY[0x28223BE20](v221);
  v228 = &v190 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v227 = &v190 - v13;
  v14 = sub_20E322010();
  v230 = *(v14 - 8);
  v231 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v229 = &v190 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v200 = &v190 - v17;
  v211 = type metadata accessor for SessionData(0);
  v18 = MEMORY[0x28223BE20](v211);
  v199 = &v190 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v232 = &v190 - v20;
  v202 = type metadata accessor for SessionSignature(0);
  MEMORY[0x28223BE20](v202);
  v204 = &v190 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  v23 = sub_20E1B11DC(v22);

  v25 = sub_20E1B1754(v24);
  v210 = 0;

  v26 = v23[2];
  v203 = v23;
  v205 = v25;
  v207 = v8;
  if (v26)
  {
    v27 = v5;
    v28 = sub_20E225790(v26, 0);
    v29 = sub_20E1B06C8(v234, v28 + 4, v26, v23);
    v30 = *&v234[0];

    sub_20E0381E8(v30);
    if (v29 != v26)
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v25 = v205;
    v5 = v27;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v216 = v5;
  v31 = v25[2];
  v32 = MEMORY[0x277D84F90];
  if (v31)
  {
    v33 = sub_20E225790(v25[2], 0);
    v34 = sub_20E1B06C8(v234, v33 + 4, v31, v25);
    v35 = *&v234[0];

    sub_20E0381E8(v35);
    if (v34 != v31)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v32 = MEMORY[0x277D84F90];
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  *&v234[0] = v28;
  sub_20E1AFBB8(v33);
  v36 = sub_20E1B1AB0(*&v234[0]);

  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = sub_20E225790(*(v36 + 16), 0);
    v39 = sub_20E1B0570(v234, v38 + 4, v37, v36);
    sub_20E0381E8(*&v234[0]);
    if (v39 == v37)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v38 = MEMORY[0x277D84F90];
LABEL_13:
  v198 = v38[2];
  if (v198)
  {
    v201 = v38;
    v40 = v202;
    v41 = v204;
    v42 = (v204 + *(v202 + 28));
    v43 = type metadata accessor for AttributionTraits(0);
    v44 = *(v43 - 8);
    v213 = *(v44 + 56);
    v212 = v44 + 56;
    v213(v42, 1, 1, v43);
    *v41 = 769;
    *(v41 + 8) = 0;
    *(v41 + 16) = 0xE000000000000000;
    *(v41 + v40[8]) = sub_20E049AE4(v32);
    *(v41 + v40[9]) = &unk_282537420;
    *(v41 + v40[10]) = v32;
    sub_20E04875C(v42, &qword_27C8688E8, &unk_20E3573E0);
    *(v42 + 2) = 0;
    *(v42 + 3) = 0;
    v45 = *(v43 + 24);
    v46 = sub_20E322060();
    v47 = *(v46 - 8);
    v48 = *(v47 + 56);
    v49 = v47 + 56;
    v48(&v42[v45], 1, 1, v46);
    v50 = &v42[*(v43 + 28)];
    *v42 = 0;
    *(v42 + 1) = 0;
    sub_20E04875C(&v42[v45], &qword_27C863A90, &unk_20E33C020);
    v196 = v46;
    v195 = v48;
    v194 = v49;
    v48(&v42[v45], 1, 1, v46);
    *v50 = 0;
    *(v50 + 1) = 0;
    v197 = v43;
    v213(v42, 0, 1, v43);
    *(v41 + v40[11]) = v32;
    v51 = v40[12];
    v52 = 0;
    v53 = v201;
    v54 = (v41 + v51);
    v193 = v201 + 4;
    v192 = (v230 + 40);
    v219 = (v230 + 56);
    v222 = (v230 + 32);
    v218 = (v230 + 48);
    v55 = MEMORY[0x277D84F98];
    *v54 = 0;
    v54[1] = 0xE000000000000000;
    while (v52 < v53[2])
    {
      v209 = v55;
      v208 = v52;
      v61 = &v193[2 * v52];
      v62 = v61[1];
      v214 = *v61;
      v215 = v62;

      v63 = v232;
      sub_20E322000();
      v64 = v63 + v211[5];
      v65 = v202;
      v66 = (v64 + *(v202 + 28));
      v67 = v197;
      v213(v66, 1, 1, v197);
      *v64 = 769;
      *(v64 + 8) = 0;
      *(v64 + 16) = 0xE000000000000000;
      *(v64 + v65[8]) = sub_20E049AE4(v32);
      *(v64 + v65[9]) = &unk_282537420;
      *(v64 + v65[10]) = v32;
      sub_20E04875C(v66, &qword_27C8688E8, &unk_20E3573E0);
      *(v66 + 2) = 0;
      *(v66 + 3) = 0;
      v68 = *(v67 + 24);
      v69 = v196;
      v70 = v195;
      v195(&v66[v68], 1, 1, v196);
      v71 = &v66[*(v67 + 28)];
      *v66 = 0;
      *(v66 + 1) = 0;
      sub_20E04875C(&v66[v68], &qword_27C863A90, &unk_20E33C020);
      v72 = v69;
      v73 = v215;
      v70(&v66[v68], 1, 1, v72);
      v74 = v214;
      *v71 = 0;
      *(v71 + 1) = 0;
      v213(v66, 0, 1, v67);
      *(v64 + v65[11]) = v32;
      v75 = (v64 + v65[12]);
      *v75 = 0;
      v75[1] = 0xE000000000000000;
      v76 = v211;
      v77 = v232;
      v78 = (v232 + v211[6]);
      v79 = (v232 + v211[7]);
      *v79 = 0;
      v79[1] = 0xE000000000000000;
      v80 = v76[8];
      v81 = sub_20E049CBC(v32);
      v230 = v80;
      *(v77 + v80) = v81;
      *v78 = v74;
      v78[1] = v73;

      v82 = v200;
      sub_20E322000();
      (*v192)(v77, v82, v231);
      sub_20E1B241C(v204, v64);
      v83 = v203;
      if (v203[2])
      {
        v84 = sub_20E1ACAD0(v74, v73);
        v85 = v205;
        if (v86)
        {
          v87 = *(v83[7] + 8 * v84);
        }

        else
        {
          v87 = v32;
        }
      }

      else
      {
        v87 = v32;
        v85 = v205;
      }

      v88 = v210;
      v223 = sub_20E1B1B48(v87);

      if (v85[2] && (v89 = sub_20E1ACAD0(v74, v73), (v90 & 1) != 0))
      {
        v91 = *(v85[7] + 8 * v89);
      }

      else
      {
        v91 = v32;
      }

      v92 = sub_20E1B20C0(v91);
      v210 = v88;

      v93 = v92[2];
      v217 = v79;
      if (v93)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A98, &qword_20E33C070);
        v94 = swift_allocObject();
        v95 = _swift_stdlib_malloc_size(v94);
        v96 = v95 - 32;
        if (v95 < 32)
        {
          v96 = v95 - 17;
        }

        v94[2] = v93;
        v94[3] = 2 * (v96 >> 4);
        v97 = sub_20E1B06C8(v234, v94 + 4, v93, v92);
        v98 = *&v234[0];

        sub_20E0381E8(v98);
        if (v97 != v93)
        {
          goto LABEL_99;
        }

        v32 = MEMORY[0x277D84F90];
        v79 = v217;
      }

      else
      {
        v94 = v32;
      }

      v99 = v223;
      v100 = v223[2];
      if (v100)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A98, &qword_20E33C070);
        v101 = swift_allocObject();
        v102 = _swift_stdlib_malloc_size(v101);
        v103 = v102 - 32;
        if (v102 < 32)
        {
          v103 = v102 - 17;
        }

        v101[2] = v100;
        v101[3] = 2 * (v103 >> 4);
        v226 = sub_20E1B06C8(v234, v101 + 4, v100, v99);
        v104 = *&v234[0];

        sub_20E0381E8(v104);
        if (v226 != v100)
        {
          goto LABEL_100;
        }

        v32 = MEMORY[0x277D84F90];
        v79 = v217;
      }

      else
      {
        v101 = v32;
      }

      *&v234[0] = v94;
      sub_20E1AFBB8(v101);
      v105 = sub_20E1B1AB0(*&v234[0]);

      v106 = *(v105 + 16);
      v56 = v215;
      if (!v106)
      {

        v107 = v32;
        v111 = *(v32 + 16);
        if (!v111)
        {
          goto LABEL_88;
        }

LABEL_44:
        v226 = (v111 - 1);
        v206 = v107;
        v112 = v107 + 5;
LABEL_45:
        v114 = *(v112 - 1);
        v113 = *v112;
        v115 = v92[2];

        if (v115)
        {
          v116 = sub_20E1ACAD0(v114, v113);
          if (v117)
          {
            v118 = *(v92[7] + 8 * v116);
            if (*(v118 + 16))
            {
              v119 = *(type metadata accessor for TranscriptProtoEvent(0) - 8);
              v120 = v118 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
              v115 = *(v120 + 16);
              v121 = *(v120 + 24);

LABEL_51:

              *v79 = v115;
              v79[1] = v121;
              v225 = v121;
              type metadata accessor for IERequestFeatureProvider(0);
              v122 = swift_allocObject() + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
              *v122 = 8;
              *(v122 + 8) = 0;
              *(v122 + 16) = 0xE000000000000000;
              v123 = type metadata accessor for RequestEventResult(0);
              v124 = v123[6];
              v125 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
              (*(*(v125 - 8) + 56))(v122 + v124, 1, 1, v125);
              *(v122 + v123[7]) = 0;
              *(v122 + v123[8]) = 0;
              *(v122 + v123[9]) = 0;
              *(v122 + v123[10]) = 0;
              *(v122 + v123[11]) = 0;
              *(v122 + v123[12]) = 0;
              *(v122 + v123[13]) = 0;
              *(v122 + v123[14]) = 0;
              *(v122 + v123[15]) = 0;
              *(v122 + v123[16]) = 0;
              *(v122 + v123[17]) = 0;
              *(v122 + v123[18]) = v32;
              v126 = v123[19];
              v127 = type metadata accessor for TranscriptProtoStatementID(0);
              (*(*(v127 - 8) + 56))(v122 + v126, 1, 1, v127);
              if (v92[2] && (v128 = sub_20E1ACAD0(v114, v113), (v129 & 1) != 0))
              {
                v130 = *(v92[7] + 8 * v128);
              }

              else
              {
                v130 = v32;
              }

              sub_20E06E834(v130, v234);

              if (!v92[2])
              {
                goto LABEL_63;
              }

              v131 = sub_20E1ACAD0(v114, v113);
              if ((v132 & 1) == 0)
              {
                goto LABEL_63;
              }

              v133 = *(v92[7] + 8 * v131);
              if (!*(v133 + 16))
              {
                goto LABEL_63;
              }

              v134 = type metadata accessor for TranscriptProtoEvent(0);
              v135 = v216;
              sub_20E0486F4(v133 + *(v134 + 52) + ((*(*(v134 - 8) + 80) + 32) & ~*(*(v134 - 8) + 80)), v216, &qword_27C8688C0, &qword_20E33B870);
              v136 = type metadata accessor for TranscriptProtoTimepoint(0);
              if ((*(*(v136 - 8) + 48))(v135, 1, v136) == 1)
              {
                v137 = v135;
                v138 = &qword_27C8688C0;
                v139 = &qword_20E33B870;
                goto LABEL_62;
              }

              v140 = v135 + *(v136 + 28);
              v141 = v207;
              sub_20E0486F4(v140, v207, &qword_27C868778, &unk_20E33C000);
              sub_20E1B2484(v135, type metadata accessor for TranscriptProtoTimepoint);
              v142 = sub_20E322150();
              v143 = *(v142 - 8);
              if ((*(v143 + 48))(v141, 1, v142) == 1)
              {
                v137 = v141;
                v138 = &qword_27C868778;
                v139 = &unk_20E33C000;
LABEL_62:
                sub_20E04875C(v137, v138, v139);
                v79 = v217;
LABEL_63:
                v144 = v224;
                v145 = v231;
                (*v219)(v224, 1, 1, v231);
                sub_20E322000();
                if ((*v218)(v144, 1, v145) != 1)
                {
                  sub_20E04875C(v224, &qword_27C863F30, &qword_20E325D90);
                }

                if (v92[2])
                {
LABEL_66:
                  v146 = sub_20E1ACAD0(v114, v113);
                  if (v147)
                  {
                    v148 = *(v92[7] + 8 * v146);

LABEL_70:
                    v152 = v223;
                    if (v223[2] && (v153 = sub_20E1ACAD0(v114, v113), (v154 & 1) != 0))
                    {
                      v155 = *(v152[7] + 8 * v153);
                    }

                    else
                    {
                      v155 = v32;
                    }

                    v156 = v227;
                    (*v222)(v227, v229, v231);
                    v157 = v221;
                    v158 = (v156 + *(v221 + 20));
                    *v158 = v114;
                    v158[1] = v113;
                    *(v156 + v157[6]) = v32;
                    v159 = (v156 + v157[7]);
                    *v159 = v148;
                    v159[1] = v155;
                    v160 = (v156 + v157[8]);
                    v161 = v234[1];
                    *v160 = v234[0];
                    v160[1] = v161;
                    v160[2] = *v235;
                    *(v160 + 46) = *&v235[14];
                    sub_20E1B25BC(v156, v228, type metadata accessor for RequestData);

                    v162 = v232;
                    v163 = v230;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v165 = *(v162 + v163);
                    v233 = v165;
                    v167 = sub_20E1ACAD0(v114, v113);
                    v168 = v165[2];
                    v169 = (v166 & 1) == 0;
                    v170 = v168 + v169;
                    if (__OFADD__(v168, v169))
                    {
                      __break(1u);
LABEL_97:
                      __break(1u);
                      break;
                    }

                    v171 = v166;
                    if (v165[3] >= v170)
                    {
                      if (isUniquelyReferenced_nonNull_native)
                      {
                        v174 = v233;
                        if ((v166 & 1) == 0)
                        {
                          goto LABEL_78;
                        }
                      }

                      else
                      {
                        sub_20E1AF0B8();
                        v174 = v233;
                        if ((v171 & 1) == 0)
                        {
                          goto LABEL_78;
                        }
                      }
                    }

                    else
                    {
                      sub_20E1ADCA4(v170, isUniquelyReferenced_nonNull_native);
                      v172 = sub_20E1ACAD0(v114, v113);
                      if ((v171 & 1) != (v173 & 1))
                      {
                        result = sub_20E322DB0();
                        __break(1u);
                        return result;
                      }

                      v167 = v172;
                      v174 = v233;
                      if ((v171 & 1) == 0)
                      {
LABEL_78:
                        v174[(v167 >> 6) + 8] |= 1 << v167;
                        v175 = (v174[6] + 16 * v167);
                        *v175 = v114;
                        v175[1] = v113;
                        sub_20E1B2624(v228, v174[7] + *(v220 + 72) * v167, type metadata accessor for RequestData);
                        v176 = v174[2];
                        v177 = __OFADD__(v176, 1);
                        v178 = v176 + 1;
                        if (v177)
                        {
                          goto LABEL_97;
                        }

                        v174[2] = v178;

                        goto LABEL_83;
                      }
                    }

                    sub_20E1B1120(v228, v174[7] + *(v220 + 72) * v167, type metadata accessor for RequestData);

LABEL_83:
                    sub_20E1B2484(v227, type metadata accessor for RequestData);
                    *(v232 + v230) = v174;
                    v32 = MEMORY[0x277D84F90];
                    if (!v226)
                    {

                      v56 = v215;
                      goto LABEL_16;
                    }

                    v226 = (v226 - 1);
                    v112 += 2;
                    goto LABEL_45;
                  }
                }
              }

              else
              {
                v149 = v224;
                sub_20E322140();
                (*(v143 + 8))(v141, v142);
                v150 = v231;
                (*v219)(v149, 0, 1, v231);
                v151 = v149;
                v32 = MEMORY[0x277D84F90];
                (*v222)(v229, v151, v150);
                v79 = v217;
                if (v92[2])
                {
                  goto LABEL_66;
                }
              }

              v148 = v32;
              goto LABEL_70;
            }
          }

          v115 = 0;
        }

        v121 = 0xE000000000000000;
        goto LABEL_51;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A98, &qword_20E33C070);
      v107 = swift_allocObject();
      v108 = _swift_stdlib_malloc_size(v107);
      v109 = v108 - 32;
      if (v108 < 32)
      {
        v109 = v108 - 17;
      }

      v107[2] = v106;
      v107[3] = 2 * (v109 >> 4);
      v110 = sub_20E1B0570(v234, v107 + 4, v106, v105);
      sub_20E0381E8(*&v234[0]);
      if (v110 != v106)
      {
        goto LABEL_101;
      }

      v111 = v107[2];
      if (v111)
      {
        goto LABEL_44;
      }

LABEL_88:

LABEL_16:
      v52 = v208 + 1;

      v57 = v232;
      v58 = v199;
      sub_20E1B25BC(v232, v199, type metadata accessor for SessionData);
      v59 = v209;
      v60 = swift_isUniquelyReferenced_nonNull_native();
      *&v234[0] = v59;
      sub_20E1AE944(v58, v214, v56, v60);

      v55 = *&v234[0];
      sub_20E1B2484(v57, type metadata accessor for SessionData);
      v53 = v201;
      if (v52 == v198)
      {

        v179 = v191;
        sub_20E322000();
        v180 = type metadata accessor for SessionView(0);
        sub_20E322000();
        sub_20E1B2484(v204, type metadata accessor for SessionSignature);
        *(v179 + *(v180 + 24)) = *(v55 + 16);
        *(v179 + *(v180 + 28)) = v55;
        return (*(*(v180 - 8) + 56))(v179, 0, 1, v180);
      }
    }

    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (qword_280E12B88 != -1)
  {
LABEL_104:
    swift_once();
  }

  v182 = sub_20E3227C0();
  __swift_project_value_buffer(v182, qword_280E12C48);
  v183 = sub_20E3227B0();
  v184 = sub_20E322A40();
  if (os_log_type_enabled(v183, v184))
  {
    v185 = swift_slowAlloc();
    *v185 = 0;
    _os_log_impl(&dword_20E031000, v183, v184, "Empty sessionIDs, SessionView cannot be created", v185, 2u);
    MEMORY[0x20F32CA80](v185, -1, -1);
  }

  v186 = type metadata accessor for SessionView(0);
  v187 = *(*(v186 - 8) + 56);
  v188 = v186;
  v189 = v191;

  return v187(v189, 1, 1, v188);
}

uint64_t sub_20E1A8E9C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for SessionView(0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  v3[9] = swift_task_alloc();
  v5 = sub_20E322010();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20E1A9030, 0, 0);
}

uint64_t sub_20E1A9030()
{
  v61 = v0;
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v1 = sub_20E3227C0();
  v0[17] = __swift_project_value_buffer(v1, qword_280E12C48);
  v2 = sub_20E3227B0();
  v3 = sub_20E322A40();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20E031000, v2, v3, "Running Lighthouse MLHost Extension", v4, 2u);
    MEMORY[0x20F32CA80](v4, -1, -1);
  }

  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[3];

  v10 = *(v7 + 16);
  v10(v5, v9, v8);
  v59 = v10;
  v10(v6, v5, v8);
  v11 = sub_20E3227B0();
  v12 = sub_20E322A40();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[15];
  v16 = v0[10];
  v15 = v0[11];
  if (v13)
  {
    v17 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v60 = v57;
    *v17 = 136315138;
    sub_20E1B256C(&qword_280E12B30, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v18 = sub_20E322D50();
    v20 = v19;
    v21 = v16;
    v22 = *(v15 + 8);
    v22(v14, v21);
    v23 = sub_20E31B6C4(v18, v20, &v60);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_20E031000, v11, v12, "Bookmark: start collection date %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x20F32CA80](v57, -1, -1);
    MEMORY[0x20F32CA80](v17, -1, -1);
  }

  else
  {

    v24 = v16;
    v22 = *(v15 + 8);
    v22(v14, v24);
  }

  v0[18] = v22;
  v26 = v0[13];
  v25 = v0[14];
  v27 = v0[10];
  v28 = v0[3];
  v29 = v28 + *(type metadata accessor for SessionViewConfigs(0) + 20);
  v59(v25, v29, v27);
  v59(v26, v25, v27);
  v30 = sub_20E3227B0();
  v31 = sub_20E322A40();
  v32 = os_log_type_enabled(v30, v31);
  v33 = v0[13];
  v34 = v0[10];
  v56 = v22;
  if (v32)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v60 = v36;
    *v35 = 136315138;
    sub_20E1B256C(&qword_280E12B30, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v37 = sub_20E322D50();
    v38 = v22;
    v39 = v37;
    v41 = v40;
    v38(v33, v34);
    v42 = sub_20E31B6C4(v39, v41, &v60);

    *(v35 + 4) = v42;
    _os_log_impl(&dword_20E031000, v30, v31, "Bookmark: updating lastCollectionDate to current Date %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x20F32CA80](v36, -1, -1);
    MEMORY[0x20F32CA80](v35, -1, -1);
  }

  else
  {

    v22(v33, v34);
  }

  v43 = v0[14];
  v45 = v0[11];
  v44 = v0[12];
  v47 = v0[9];
  v46 = v0[10];
  v58 = v0[4];
  v59(v44, v43, v46);

  DataProcessorBookmarkProvider.lastCollectionDate.setter(v44);

  v59(v47, v43, v46);
  (*(v45 + 56))(v47, 0, 1, v46);
  v48 = sub_20E321FB0();
  if ((*(v45 + 48))(v47, 1, v46) == 1)
  {
    v49 = 0;
  }

  else
  {
    v50 = v0[10];
    v51 = v0[9];
    v49 = sub_20E321FB0();
    v56(v51, v50);
  }

  v52 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v48 endDate:v49 maxEvents:0 lastN:0 reversed:0];
  v0[19] = v52;

  v53 = *MEMORY[0x277CF0E60];
  v0[20] = *(v58 + 16);

  v54 = swift_task_alloc();
  v0[21] = v54;
  *v54 = v0;
  v54[1] = sub_20E1A9668;

  return sub_20E1B0820(v53, v52, 0xD00000000000001ALL, 0x800000020E35F7C0);
}

uint64_t sub_20E1A9668(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_20E1A9788, 0, 0);
}

uint64_t sub_20E1A9788(uint64_t a1)
{
  if (*(v1 + 176) && (v2 = sub_20E1A4B84(*(v1 + 176)), *(v1 + 184) = v2, , v2))
  {
    if (v2 >> 62)
    {
      if (sub_20E322BC0())
      {
        goto LABEL_5;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:

      v3 = sub_20E3227B0();
      v4 = sub_20E322A40();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 134217984;
        if (v2 >> 62)
        {
          v6 = sub_20E322BC0();
        }

        else
        {
          v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v5 + 4) = v6;

        _os_log_impl(&dword_20E031000, v3, v4, "Number of Sage Transcript events: %ld", v5, 0xCu);
        MEMORY[0x20F32CA80](v5, -1, -1);
      }

      else
      {
      }

      v17 = swift_task_alloc();
      *(v1 + 192) = v17;
      *v17 = v1;
      v17[1] = sub_20E1A9AFC;

      return sub_20E068EAC(v2);
    }

    v7 = sub_20E3227B0();
    v8 = sub_20E322A40();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "BiomeSessionBuilder loaded empty list of events, not updating SessionView";
      goto LABEL_10;
    }
  }

  else
  {
    v7 = sub_20E3227B0();
    v8 = sub_20E322A40();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "BiomeSessionBuilder loaded nil events, exiting SessionView builder";
LABEL_10:
      _os_log_impl(&dword_20E031000, v7, v8, v10, v9, 2u);
      MEMORY[0x20F32CA80](v9, -1, -1);
    }
  }

  v11 = *(v1 + 144);
  v12 = *(v1 + 128);
  v13 = *(v1 + 112);
  v14 = *(v1 + 80);

  v11(v13, v14);
  v11(v12, v14);
  (*(*(v1 + 48) + 56))(*(v1 + 16), 1, 1, *(v1 + 40));

  v15 = *(v1 + 8);

  return v15();
}

uint64_t sub_20E1A9AFC(uint64_t a1)
{
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_20E1A9C1C, 0, 0);
}

uint64_t sub_20E1A9C1C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 24);

  DataProcessorBookmarkProvider.lastCollectionDate.getter(v3);

  sub_20E1A9EC0(v1, v7, v3, v5);

  v2(v3, v4);
  sub_20E1B25BC(v5, v6, type metadata accessor for SessionView);
  v8 = sub_20E3227B0();
  v9 = sub_20E322A40();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 56);
  if (v10)
  {
    v12 = *(v0 + 40);
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    v14 = *(v11 + *(v12 + 24));
    sub_20E1B2484(v11, type metadata accessor for SessionView);
    *(v13 + 4) = v14;
    _os_log_impl(&dword_20E031000, v8, v9, "Formulated SessionView: num= %ld", v13, 0xCu);
    MEMORY[0x20F32CA80](v13, -1, -1);
  }

  else
  {
    sub_20E1B2484(*(v0 + 56), type metadata accessor for SessionView);
  }

  v15 = *(v0 + 144);
  v16 = *(v0 + 128);
  v17 = *(v0 + 112);
  v18 = *(v0 + 80);
  v19 = *(v0 + 64);
  v20 = *(v0 + 16);

  v15(v17, v18);
  v15(v16, v18);
  sub_20E1B2624(v19, v20, type metadata accessor for SessionView);
  (*(*(v0 + 48) + 56))(*(v0 + 16), 0, 1, *(v0 + 40));

  v21 = *(v0 + 8);

  return v21();
}

void sub_20E1A9EC0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v283 = a3;
  v282 = a2;
  v342 = a1;
  v284 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A50, &qword_20E33BFD8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v339 = &v281 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v338 = (&v281 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A58, &unk_20E33BFE0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v301 = &v281 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v300 = &v281 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688F0, &unk_20E33B920);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v312 = &v281 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v293 = &v281 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A60, &unk_20E33BFF0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v287 = &v281 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v294 = &v281 - v19;
  v343 = type metadata accessor for SessionData(0);
  v331 = *(v343 - 8);
  v20 = MEMORY[0x28223BE20](v343);
  v314 = &v281 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v305 = &v281 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688C0, &qword_20E33B870);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v292 = &v281 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v304 = &v281 - v27;
  MEMORY[0x28223BE20](v26);
  v303 = &v281 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868778, &unk_20E33C000);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v289 = &v281 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v299 = &v281 - v33;
  MEMORY[0x28223BE20](v32);
  v298 = &v281 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v295 = &v281 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v313 = &v281 - v39;
  MEMORY[0x28223BE20](v38);
  v302 = &v281 - v40;
  v328 = sub_20E322010();
  v286 = *(v328 - 8);
  v41 = MEMORY[0x28223BE20](v328);
  v291 = &v281 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v320 = &v281 - v44;
  MEMORY[0x28223BE20](v43);
  v319 = &v281 - v45;
  v333 = type metadata accessor for RequestData(0);
  v335 = *(v333 - 8);
  v46 = MEMORY[0x28223BE20](v333);
  v344 = &v281 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v334 = &v281 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v290 = &v281 - v51;
  MEMORY[0x28223BE20](v50);
  v318 = &v281 - v52;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A68, &unk_20E33C010);
  v285 = *(v330 - 8);
  MEMORY[0x28223BE20](v330);
  v322 = &v281 - v53;
  v309 = type metadata accessor for TranscriptProtoEvent(0);
  v337 = *(v309 - 8);
  v54 = MEMORY[0x28223BE20](v309);
  v281 = &v281 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v340 = (&v281 - v56);
  v57 = type metadata accessor for SessionSignature(0);
  v58 = (v57 - 8);
  MEMORY[0x28223BE20](v57);
  v60 = &v281 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v351 = MEMORY[0x277D84F98];
  v61 = &v60[v58[9]];
  v62 = type metadata accessor for AttributionTraits(0);
  v341 = *(*(v62 - 8) + 56);
  v341(v61, 1, 1, v62);
  *v60 = 769;
  *(v60 + 1) = 0;
  *(v60 + 2) = 0xE000000000000000;
  v63 = MEMORY[0x277D84F90];
  *&v60[v58[10]] = sub_20E049AE4(MEMORY[0x277D84F90]);
  *&v60[v58[11]] = &unk_282537420;
  *&v60[v58[12]] = v63;
  sub_20E04875C(v61, &qword_27C8688E8, &unk_20E3573E0);
  *(v61 + 2) = 0;
  *(v61 + 3) = 0;
  v64 = *(v62 + 24);
  v65 = sub_20E322060();
  v66 = *(*(v65 - 8) + 56);
  v66(&v61[v64], 1, 1, v65);
  v67 = &v61[*(v62 + 28)];
  *v61 = 0;
  *(v61 + 1) = 0;
  sub_20E04875C(&v61[v64], &qword_27C863A90, &unk_20E33C020);
  v66(&v61[v64], 1, 1, v65);
  v68 = v322;
  *v67 = 0;
  *(v67 + 1) = 0;
  v69 = v61;
  v70 = v340;
  v341(v69, 0, 1, v62);
  v71 = v342;
  *&v60[v58[13]] = MEMORY[0x277D84F90];
  v72 = v58[14];
  v306 = v60;
  v73 = &v60[v72];
  *v73 = 0;
  *(v73 + 1) = 0xE000000000000000;
  v311 = *(v71 + 16);
  if (v311)
  {
    v74 = 0;
    v307 = *(v337 + 80);
    v308 = (v307 + 32) & ~v307;
    v310 = v71 + v308;
    v332 = *(v337 + 72);
    v324 = (v286 + 56);
    v336 = v286 + 32;
    v316 = (v286 + 48);
    v315 = (v331 + 56);
    v297 = (v331 + 48);
    v296 = (v335 + 56);
    v288 = (v335 + 48);
    v323 = xmmword_20E326380;
LABEL_5:
    v329 = (v74 + 1);
    sub_20E1B25BC(v310 + v332 * v74, v70, type metadata accessor for TranscriptProtoEvent);
    v77 = v70[7];
    v342 = v70[6];
    v341 = v77;
    v78 = v70[3];
    v325 = v70[2];
    v79 = v70[5];
    v337 = v70[4];
    v80 = v351;
    v81 = v351 + 64;
    v82 = 1 << *(v351 + 32);
    if (v82 < 64)
    {
      v83 = ~(-1 << v82);
    }

    else
    {
      v83 = -1;
    }

    v84 = v83 & *(v351 + 64);
    v85 = (v82 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v326 = v78;

    v327 = v79;

    v86 = 0;
    while (v84)
    {
LABEL_15:
      v89 = v343;
      v90 = __clz(__rbit64(v84)) | (v86 << 6);
      v91 = (v80[6] + 16 * v90);
      v93 = *v91;
      v92 = v91[1];
      v94 = *(v331 + 72);
      sub_20E1B25BC(v80[7] + v94 * v90, v68 + *(v330 + 48), type metadata accessor for SessionData);
      *v68 = v93;
      v68[1] = v92;
      if (v93 == v342 && v92 == v341)
      {

        sub_20E04875C(v68, &qword_27C868A68, &unk_20E33C010);

        goto LABEL_42;
      }

      v84 &= v84 - 1;
      v96 = sub_20E322D60();

      sub_20E04875C(v68, &qword_27C868A68, &unk_20E33C010);
      if (v96)
      {

        v89 = v343;
LABEL_42:

        v157 = v333;
        v158 = v293;
        v159 = v327;
        if (v80[2] && (v160 = sub_20E1ACAD0(v342, v341), (v161 & 1) != 0))
        {
          sub_20E1B25BC(v80[7] + v160 * v94, v158, type metadata accessor for SessionData);
          v162 = 0;
        }

        else
        {
          v162 = 1;
        }

        (*v315)(v158, v162, 1, v89);
        v163 = v89;
        v164 = *v297;
        v165 = (*v297)(v158, 1, v163);
        v166 = v328;
        if (v165)
        {
          sub_20E04875C(v158, &qword_27C8688F0, &unk_20E33B920);
          v167 = *v296;
          v168 = v294;
          (*v296)(v294, 1, 1, v157);
          goto LABEL_53;
        }

        v169 = *(v158 + *(v163 + 32));
        if (*(v169 + 16) && (v170 = sub_20E1ACAD0(v337, v159), (v171 & 1) != 0))
        {
          v172 = *(v169 + 56) + *(v335 + 72) * v170;
          v168 = v294;
          sub_20E1B25BC(v172, v294, type metadata accessor for RequestData);
          v173 = 0;
        }

        else
        {
          v173 = 1;
          v168 = v294;
        }

        v167 = *v296;
        (*v296)(v168, v173, 1, v157);
        sub_20E04875C(v158, &qword_27C8688F0, &unk_20E33B920);
        v174 = *v288;
        if ((*v288)(v168, 1, v157) == 1)
        {
LABEL_53:
          sub_20E04875C(v168, &qword_27C868A60, &unk_20E33BFF0);
          v175 = v292;
          sub_20E0486F4(v340 + *(v309 + 52), v292, &qword_27C8688C0, &qword_20E33B870);
          v176 = type metadata accessor for TranscriptProtoTimepoint(0);
          if ((*(*(v176 - 8) + 48))(v175, 1, v176) == 1)
          {
            v177 = v175;
            v178 = &qword_27C8688C0;
            v179 = &qword_20E33B870;
LABEL_57:
            sub_20E04875C(v177, v178, v179);
            v184 = v295;
            (*v324)(v295, 1, 1, v166);
            v185 = v291;
            sub_20E322000();
            v186 = (*v316)(v184, 1, v166);
            v187 = v290;
            if (v186 != 1)
            {
              sub_20E04875C(v295, &qword_27C863F30, &qword_20E325D90);
            }
          }

          else
          {
            v180 = v175 + *(v176 + 28);
            v181 = v289;
            sub_20E0486F4(v180, v289, &qword_27C868778, &unk_20E33C000);
            sub_20E1B2484(v175, type metadata accessor for TranscriptProtoTimepoint);
            v182 = sub_20E322150();
            v183 = *(v182 - 8);
            if ((*(v183 + 48))(v181, 1, v182) == 1)
            {
              v177 = v181;
              v178 = &qword_27C868778;
              v179 = &unk_20E33C000;
              goto LABEL_57;
            }

            v188 = v295;
            sub_20E322140();
            (*(v183 + 8))(v181, v182);
            (*v324)(v188, 0, 1, v166);
            v185 = v291;
            (*v336)(v291, v188, v166);
            v187 = v290;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A70, &qword_20E346180);
          v189 = v308;
          v190 = swift_allocObject();
          *(v190 + 16) = v323;
          sub_20E1B25BC(v340, v190 + v189, type metadata accessor for TranscriptProtoEvent);
          (*v336)(v187, v185, v166);
          v191 = &v187[v157[5]];
          v192 = v337;
          *v191 = v337;
          *(v191 + 1) = v159;
          *&v187[v157[6]] = v190;
          v193 = &v187[v157[7]];
          v194 = MEMORY[0x277D84F90];
          *v193 = MEMORY[0x277D84F90];
          *(v193 + 1) = v194;
          v195 = &v187[v157[8]];
          *(v195 + 46) = 0u;
          *(v195 + 1) = 0u;
          *(v195 + 2) = 0u;
          *v195 = 0u;

          v196 = sub_20E1A4FBC(v347, v342, v341);
          v197 = v187;
          v198 = v343;
          if (v164(v199, 1, v343))
          {
          }

          else
          {
            v200 = v287;
            sub_20E1B25BC(v197, v287, type metadata accessor for RequestData);
            v167(v200, 0, 1, v157);
            sub_20E1A5370(v200, v192, v159);
          }

          (v196)(v347, 0);
          v134 = v198;
          v74 = v329;
          sub_20E1B2484(v197, type metadata accessor for RequestData);
          v68 = v322;
          v70 = v340;
        }

        else
        {
          sub_20E04875C(v168, &qword_27C868A60, &unk_20E33BFF0);
          v201 = sub_20E1A4FBC(v347, v342, v341);
          v134 = v343;
          if (v164(v202, 1, v343))
          {

            (v201)(v347, 0);
LABEL_36:
            v70 = v340;
          }

          else
          {
            v203 = sub_20E1A5044(v345, v337, v159);
            v205 = v204;
            v206 = v174(v204, 1, v157);
            v70 = v340;
            if (v206)
            {
              (v203)(v345, 0);

              (v201)(v347, 0);
            }

            else
            {
              sub_20E1B25BC(v340, v281, type metadata accessor for TranscriptProtoEvent);
              v207 = v157[6];
              v208 = *(v205 + v207);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v205 + v207) = v208;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v208 = sub_20E2251F0(0, v208[2] + 1, 1, v208);
                *(v205 + v207) = v208;
              }

              v211 = v208[2];
              v210 = v208[3];
              if (v211 >= v210 >> 1)
              {
                v208 = sub_20E2251F0((v210 > 1), v211 + 1, 1, v208);
                *(v205 + v207) = v208;
              }

              v208[2] = v211 + 1;
              sub_20E1B2624(v281, v208 + v308 + v211 * v332, type metadata accessor for TranscriptProtoEvent);
              (v203)(v345, 0);

              (v201)(v347, 0);
              v134 = v343;
            }
          }

          v74 = v329;
        }

        v151 = v351;
        if (*(v351 + 16) && (v152 = sub_20E1ACAD0(v342, v341), (v153 & 1) != 0))
        {
          v154 = *(v151 + 56);
          v155 = v331;
          v156 = v312;
          sub_20E1B25BC(v154 + *(v331 + 72) * v152, v312, type metadata accessor for SessionData);
          (*(v155 + 56))(v156, 0, 1, v134);
          sub_20E04875C(v156, &qword_27C8688F0, &unk_20E33B920);
          sub_20E196948(v70, &v351, v342, v341);
        }

        else
        {
          v75 = v312;
          (*v315)(v312, 1, 1, v134);
          v76 = v75;
          v68 = v322;
          sub_20E04875C(v76, &qword_27C8688F0, &unk_20E33B920);
        }

        sub_20E1B2484(v70, type metadata accessor for TranscriptProtoEvent);
        if (v74 == v311)
        {
          goto LABEL_73;
        }

        goto LABEL_5;
      }
    }

    v87 = v328;
    while (1)
    {
      v88 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        break;
      }

      if (v88 >= v85)
      {

        v97 = *(v309 + 52);
        v98 = v303;
        sub_20E0486F4(v340 + v97, v303, &qword_27C8688C0, &qword_20E33B870);
        v99 = type metadata accessor for TranscriptProtoTimepoint(0);
        v100 = *(*(v99 - 8) + 48);
        if (v100(v98, 1, v99) == 1)
        {
          sub_20E04875C(v98, &qword_27C8688C0, &qword_20E33B870);
          v101 = v333;
LABEL_25:
          v108 = *v324;
          v109 = v302;
          (*v324)(v302, 1, 1, v87);
          sub_20E322000();
          v110 = (*v316)(v109, 1, v87);
          v317 = v108;
          if (v110 != 1)
          {
            sub_20E04875C(v109, &qword_27C863F30, &qword_20E325D90);
          }
        }

        else
        {
          v102 = v298;
          sub_20E0486F4(v98 + *(v99 + 28), v298, &qword_27C868778, &unk_20E33C000);
          v103 = v98;
          v104 = v102;
          sub_20E1B2484(v103, type metadata accessor for TranscriptProtoTimepoint);
          v105 = sub_20E322150();
          v106 = *(v105 - 8);
          v107 = (*(v106 + 48))(v104, 1, v105);
          v101 = v333;
          if (v107 == 1)
          {
            sub_20E04875C(v104, &qword_27C868778, &unk_20E33C000);
            goto LABEL_25;
          }

          v111 = v302;
          sub_20E322140();
          (*(v106 + 8))(v104, v105);
          v317 = *v324;
          v317(v111, 0, 1, v87);
          (*v336)(v319, v111, v87);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A70, &qword_20E346180);
        v112 = v308;
        v113 = swift_allocObject();
        *(v113 + 16) = v323;
        v114 = v340;
        sub_20E1B25BC(v340, v113 + v112, type metadata accessor for TranscriptProtoEvent);
        v115 = v318;
        v116 = v87;
        v321 = *v336;
        v321(v318, v319, v87);
        v117 = (v115 + v101[5]);
        v118 = v327;
        *v117 = v337;
        v117[1] = v118;
        *(v115 + v101[6]) = v113;
        v119 = (v115 + v101[7]);
        v120 = MEMORY[0x277D84F90];
        *v119 = MEMORY[0x277D84F90];
        v119[1] = v120;
        v121 = (v115 + v101[8]);
        *(v121 + 46) = 0u;
        v121[1] = 0u;
        v121[2] = 0u;
        *v121 = 0u;
        v122 = v304;
        sub_20E0486F4(v114 + v97, v304, &qword_27C8688C0, &qword_20E33B870);
        if (v100(v122, 1, v99) == 1)
        {

          sub_20E04875C(v122, &qword_27C8688C0, &qword_20E33B870);
LABEL_32:
          v131 = v337;
          v132 = v313;
          v317(v313, 1, 1, v116);
          sub_20E322000();
          if ((*v316)(v132, 1, v116) != 1)
          {
            sub_20E04875C(v313, &qword_27C863F30, &qword_20E325D90);
          }
        }

        else
        {
          v123 = v122 + *(v99 + 28);
          v124 = v299;
          sub_20E0486F4(v123, v299, &qword_27C868778, &unk_20E33C000);

          v125 = v122;
          v126 = v124;
          sub_20E1B2484(v125, type metadata accessor for TranscriptProtoTimepoint);
          v127 = sub_20E322150();
          v128 = *(v127 - 8);
          v129 = (*(v128 + 48))(v126, 1, v127);
          v130 = v320;
          if (v129 == 1)
          {
            sub_20E04875C(v126, &qword_27C868778, &unk_20E33C000);
            goto LABEL_32;
          }

          v133 = v313;
          sub_20E322140();
          (*(v128 + 8))(v126, v127);
          v317(v133, 0, 1, v116);
          v321(v130, v133, v116);
          v131 = v337;
        }

        v134 = v343;
        v135 = v305;
        sub_20E1B25BC(v306, &v305[*(v343 + 20)], type metadata accessor for SessionSignature);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A88, &unk_20E33C040);
        v136 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639E0, &qword_20E3238C0) - 8);
        v137 = (*(*v136 + 80) + 32) & ~*(*v136 + 80);
        v138 = swift_allocObject();
        *(v138 + 16) = v323;
        v139 = (v138 + v137);
        v140 = v136[14];
        *v139 = v131;
        v139[1] = v118;
        v141 = v318;
        sub_20E1B25BC(v318, v138 + v137 + v140, type metadata accessor for RequestData);
        v142 = v341;

        v143 = sub_20E049CBC(v138);
        swift_setDeallocating();
        sub_20E04875C(v138 + v137, &qword_27C8639E0, &qword_20E3238C0);
        swift_deallocClassInstance();
        v321(v135, v320, v328);
        v144 = (v135 + v134[6]);
        v145 = v342;
        *v144 = v342;
        v144[1] = v142;
        v146 = (v135 + v134[7]);
        v147 = v326;
        *v146 = v325;
        v146[1] = v147;
        *(v135 + v134[8]) = v143;
        v148 = v314;
        sub_20E1B25BC(v135, v314, type metadata accessor for SessionData);
        v149 = v351;
        v150 = swift_isUniquelyReferenced_nonNull_native();
        *&v347[0] = v149;
        sub_20E1AE944(v148, v145, v142, v150);
        sub_20E1B2484(v135, type metadata accessor for SessionData);
        sub_20E1B2484(v141, type metadata accessor for RequestData);
        v351 = *&v347[0];

        v68 = v322;
        goto LABEL_36;
      }

      v84 = *(v81 + 8 * v88);
      ++v86;
      if (v84)
      {
        v86 = v88;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_117;
  }

LABEL_73:
  v212 = *(v351 + 64);
  v322 = (v351 + 64);
  v213 = 1 << *(v351 + 32);
  if (v213 < 64)
  {
    v214 = ~(-1 << v213);
  }

  else
  {
    v214 = -1;
  }

  v215 = v214 & v212;
  v321 = ((v213 + 63) >> 6);
  v324 = (v285 + 56);
  v325 = (v285 + 48);
  v337 = v331 + 48;
  v332 = (v335 + 48);
  *&v323 = v351;

  v216 = 0;
  v217 = v339;
  v218 = v338;
LABEL_78:
  v219 = v301;
  v220 = v300;
  v221 = v328;
  v222 = v330;
  if (!v215)
  {
    if (v321 <= v216 + 1)
    {
      v224 = (v216 + 1);
    }

    else
    {
      v224 = v321;
    }

    v225 = (v224 - 1);
    while (1)
    {
      v223 = v216 + 1;
      if (__OFADD__(v216, 1))
      {
        break;
      }

      if (v223 >= v321)
      {
        (*v324)(v301, 1, 1, v330);
        v327 = 0;
        goto LABEL_88;
      }

      v215 = *&v322[8 * v223];
      ++v216;
      if (v215)
      {
        goto LABEL_87;
      }
    }

LABEL_117:
    __break(1u);
    return;
  }

  v223 = v216;
LABEL_87:
  v327 = (v215 - 1) & v215;
  v226 = __clz(__rbit64(v215)) | (v223 << 6);
  v227 = (*(v323 + 48) + 16 * v226);
  v229 = *v227;
  v228 = v227[1];
  v230 = v314;
  sub_20E1B25BC(*(v323 + 56) + *(v331 + 72) * v226, v314, type metadata accessor for SessionData);
  v231 = *(v222 + 48);
  *v219 = v229;
  v219[1] = v228;
  sub_20E1B2624(v230, v219 + v231, type metadata accessor for SessionData);
  (*v324)(v219, 0, 1, v222);

  v225 = v223;
  v221 = v328;
LABEL_88:
  sub_20E195AA4(v219, v220, &qword_27C868A58, &unk_20E33BFE0);
  if ((*v325)(v220, 1, v222) != 1)
  {
    v326 = v225;
    v232 = *(v220 + 8);
    v341 = *v220;
    v342 = v232;
    v233 = v220 + *(v222 + 48);
    v234 = *(v233 + *(v343 + 32));

    sub_20E1B2484(v233, type metadata accessor for SessionData);
    v235 = 0;
    v221 = v234 + 64;
    v236 = *(v234 + 64);
    v336 = v234;
    v237 = 1 << *(v234 + 32);
    if (v237 < 64)
    {
      v238 = ~(-1 << v237);
    }

    else
    {
      v238 = -1;
    }

    v239 = v238 & v236;
    v240 = (v237 + 63) >> 6;
    v340 = v221;
    while (v239)
    {
      v241 = v235;
LABEL_105:
      v244 = __clz(__rbit64(v239));
      v239 &= v239 - 1;
      v245 = v244 | (v241 << 6);
      v246 = (*(v336 + 48) + 16 * v245);
      v248 = *v246;
      v247 = v246[1];
      v249 = v334;
      sub_20E1B25BC(*(v336 + 56) + *(v335 + 72) * v245, v334, type metadata accessor for RequestData);
      v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A78, &unk_20E33C030);
      v251 = *(v250 + 48);
      *v217 = v248;
      v217[1] = v247;
      sub_20E1B2624(v249, v217 + v251, type metadata accessor for RequestData);
      (*(*(v250 - 8) + 56))(v217, 0, 1, v250);

LABEL_106:
      sub_20E195AA4(v217, v218, &qword_27C868A50, &qword_20E33BFD8);
      v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A78, &unk_20E33C030);
      if ((*(*(v252 - 8) + 48))(v218, 1, v252) == 1)
      {

        v216 = v326;
        v215 = v327;
        goto LABEL_78;
      }

      v254 = *v218;
      v253 = v218[1];
      sub_20E1B2624(v218 + *(v252 + 48), v344, type metadata accessor for RequestData);
      type metadata accessor for IERequestFeatureProvider(0);
      v255 = swift_allocObject() + OBJC_IVAR____TtC23LighthouseDataProcessor24IERequestFeatureProvider_result;
      *v255 = 8;
      *(v255 + 8) = 0;
      *(v255 + 16) = 0xE000000000000000;
      v256 = type metadata accessor for RequestEventResult(0);
      v257 = v256[6];
      v258 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
      (*(*(v258 - 8) + 56))(v255 + v257, 1, 1, v258);
      *(v255 + v256[7]) = 0;
      *(v255 + v256[8]) = 0;
      *(v255 + v256[9]) = 0;
      *(v255 + v256[10]) = 0;
      *(v255 + v256[11]) = 0;
      *(v255 + v256[12]) = 0;
      *(v255 + v256[13]) = 0;
      *(v255 + v256[14]) = 0;
      *(v255 + v256[15]) = 0;
      *(v255 + v256[16]) = 0;
      *(v255 + v256[17]) = 0;
      *(v255 + v256[18]) = MEMORY[0x277D84F90];
      v259 = v256[19];
      v260 = type metadata accessor for TranscriptProtoStatementID(0);
      (*(*(v260 - 8) + 56))(v255 + v259, 1, 1, v260);
      v261 = sub_20E1A4FBC(&v350, v341, v342);
      if ((*v337)(v262, 1, v343))
      {

        (v261)(&v350, 0);

        v217 = v339;
        v221 = v340;
      }

      else
      {
        v263 = sub_20E1A5044(&v349, v254, v253);
        v265 = v264;
        v266 = v333;
        v267 = (*v332)(v264, 1, v333);
        v221 = v340;
        if (v267)
        {
          (v263)(&v349, 0);
        }

        else
        {
          v269 = *(v344 + *(v266 + 24));
          v329 = v263;
          sub_20E06E834(v269, v345);
          v270 = (v265 + *(v266 + 32));
          v271 = *v270;
          v272 = v270[1];
          v273 = v270[2];
          *&v348[14] = *(v270 + 46);
          v347[1] = v272;
          *v348 = v273;
          v347[0] = v271;
          v274 = *&v346[14];
          v275 = *v346;
          v276 = v345[1];
          *v270 = v345[0];
          v270[1] = v276;
          v270[2] = v275;
          *(v270 + 46) = v274;
          sub_20E04875C(v347, &qword_27C868A80, &qword_20E3573F0);
          (v329)(&v349, 0);
        }

        (v261)(&v350, 0);

        v217 = v339;
      }

      sub_20E1B2484(v344, type metadata accessor for RequestData);
      v218 = v338;
    }

    if (v240 <= v235 + 1)
    {
      v242 = v235 + 1;
    }

    else
    {
      v242 = v240;
    }

    v243 = v242 - 1;
    while (1)
    {
      v241 = v235 + 1;
      if (__OFADD__(v235, 1))
      {
        break;
      }

      if (v241 >= v240)
      {
        v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A78, &unk_20E33C030);
        (*(*(v268 - 8) + 56))(v217, 1, 1, v268);
        v239 = 0;
        v235 = v243;
        goto LABEL_106;
      }

      v239 = *(v221 + 8 * v241);
      ++v235;
      if (v239)
      {
        v235 = v241;
        goto LABEL_105;
      }
    }

    __break(1u);
  }

  sub_20E1B2484(v306, type metadata accessor for SessionSignature);

  v277 = *(v286 + 16);
  v278 = v284;
  v277(v284, v282, v221);
  v279 = type metadata accessor for SessionView(0);
  v277(v278 + v279[5], v283, v221);
  v280 = v351;
  *(v278 + v279[6]) = *(v351 + 16);
  *(v278 + v279[7]) = v280;
}